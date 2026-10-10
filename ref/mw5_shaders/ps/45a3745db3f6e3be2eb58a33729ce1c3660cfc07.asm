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
; shader hash: 1fed811cb329fedb21300522526d64a4
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
  %452 = add i32 %60, 520
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
  br i1 %508, label %1211, label %509

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
  %1147 = and i32 %1146, 10240
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1193, label %1149

; <label>:1149                                    ; preds = %1141
  %1150 = add i32 %60, 504
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %1152, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1154, %dx.types.Handle %106, float %608, float %609, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 3
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 1048576
  %1161 = icmp ne i32 %1160, 0
  %1162 = and i32 %1159, 8192
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1179, label %1164

; <label>:1164                                    ; preds = %1149
  %1165 = extractvalue %dx.types.ResRet.f32 %1155, 2
  %1166 = select i1 %1161, float %1165, float %1156
  %1167 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1168 = select i1 %1161, float %1167, float %1156
  %1169 = add i32 %60, 96
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = lshr i32 %1171, 16
  %1173 = and i32 %1172, 255
  %1174 = uitofp i32 %1173 to float
  %1175 = fmul fast float %1174, 0x3F80101020000000
  %1176 = fmul fast float %1175, %1168
  %1177 = fmul fast float %1175, %1156
  %1178 = fmul fast float %1175, %1166
  br label %1179

; <label>:1179                                    ; preds = %1164, %1149
  %1180 = phi float [ %1176, %1164 ], [ 0.000000e+00, %1149 ]
  %1181 = phi float [ %1177, %1164 ], [ 0.000000e+00, %1149 ]
  %1182 = phi float [ %1178, %1164 ], [ 0.000000e+00, %1149 ]
  %1183 = and i32 %1159, 2048
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1193, label %1185

; <label>:1185                                    ; preds = %1179
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = shl i32 %1187, 4
  %1189 = and i32 %1188, 32752
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = fmul fast float %1190, %1157
  %1192 = call float @dx.op.binary.f32(i32 35, float %1191, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1193

; <label>:1193                                    ; preds = %1185, %1179, %1141
  %1194 = phi float [ %1180, %1185 ], [ %1180, %1179 ], [ 0.000000e+00, %1141 ]
  %1195 = phi float [ %1181, %1185 ], [ %1181, %1179 ], [ 0.000000e+00, %1141 ]
  %1196 = phi float [ %1182, %1185 ], [ %1182, %1179 ], [ 0.000000e+00, %1141 ]
  %1197 = phi float [ %1192, %1185 ], [ 0x3F70101020000000, %1179 ], [ 0x3F70101020000000, %1141 ]
  %1198 = add i32 %60, 96
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 255
  %1202 = uitofp i32 %1201 to float
  %1203 = lshr i32 %1200, 8
  %1204 = and i32 %1203, 255
  %1205 = uitofp i32 %1204 to float
  %1206 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1015, float %1016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1207 = fmul fast float %1205, %1206
  %1208 = fadd fast float %1207, %1202
  %1209 = fmul fast float %1208, 0x3F70101020000000
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  br label %1211

; <label>:1211                                    ; preds = %1193, %494
  %1212 = phi float [ 0.000000e+00, %494 ], [ %1095, %1193 ]
  %1213 = phi float [ 0.000000e+00, %494 ], [ %1096, %1193 ]
  %1214 = phi float [ 0.000000e+00, %494 ], [ %1142, %1193 ]
  %1215 = phi float [ 0.000000e+00, %494 ], [ %1143, %1193 ]
  %1216 = phi float [ 0.000000e+00, %494 ], [ %1144, %1193 ]
  %1217 = phi float [ 0.000000e+00, %494 ], [ %1014, %1193 ]
  %1218 = phi float [ 0.000000e+00, %494 ], [ %1015, %1193 ]
  %1219 = phi float [ 0.000000e+00, %494 ], [ %1016, %1193 ]
  %1220 = phi float [ 0.000000e+00, %494 ], [ %1194, %1193 ]
  %1221 = phi float [ 0.000000e+00, %494 ], [ %1195, %1193 ]
  %1222 = phi float [ 0.000000e+00, %494 ], [ %1196, %1193 ]
  %1223 = phi float [ 0.000000e+00, %494 ], [ %1000, %1193 ]
  %1224 = phi float [ 0.000000e+00, %494 ], [ %796, %1193 ]
  %1225 = phi float [ 0.000000e+00, %494 ], [ %1094, %1193 ]
  %1226 = phi float [ 0.000000e+00, %494 ], [ %1097, %1193 ]
  %1227 = phi float [ 0.000000e+00, %494 ], [ %1197, %1193 ]
  %1228 = phi float [ 0.000000e+00, %494 ], [ %1210, %1193 ]
  br i1 %442, label %2157, label %1229

; <label>:1229                                    ; preds = %1211
  %1230 = icmp ult i32 %500, 2
  %1231 = add i32 %60, 40
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = add i32 %60, 44
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = or i32 %1236, %1233
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %2157, label %1239

; <label>:1239                                    ; preds = %1229
  %1240 = and i32 %1233, 262144
  %1241 = icmp ne i32 %1240, 0
  %1242 = select i1 %1241, float %63, float 1.000000e+00
  %1243 = select i1 %1241, float %64, float 0.000000e+00
  %1244 = select i1 %1241, float %65, float 0.000000e+00
  %1245 = select i1 %1241, float %66, float 1.000000e+00
  %1246 = select i1 %1241, float %67, float %88
  %1247 = select i1 %1241, float %68, float %89
  %1248 = add i32 %60, 300
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = lshr i32 %1250, 16
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = fmul fast float %1252, 0x3F50624DE0000000
  %1254 = add i32 %60, 104
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = lshr i32 %1256, 16
  %1258 = and i32 %1257, 255
  %1259 = lshr i32 %1256, 24
  %1260 = add i32 %60, 308
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 65535
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = lshr i32 %1262, 16
  %1266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1265)  ; LegacyF16ToF32(value)
  %1267 = add i32 %60, 48
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = lshr i32 %1269, 22
  %1271 = shl nuw nsw i32 %1270, 5
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = shl i32 %1269, 4
  %1274 = and i32 %1273, 32752
  %1275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1274)  ; LegacyF16ToF32(value)
  %1276 = lshr i32 %1269, 7
  %1277 = and i32 %1276, 32752
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1281 = fmul fast float %1280, 1.000000e+03
  %1282 = fmul fast float %352, %1281
  %1283 = call float @dx.op.unary.f32(i32 22, float %1282)  ; Frc(value)
  %1284 = fadd fast float %1283, %342
  %1285 = fmul fast float %353, %1281
  %1286 = call float @dx.op.unary.f32(i32 22, float %1285)  ; Frc(value)
  %1287 = fadd fast float %1286, %344
  %1288 = fmul fast float %1253, %1281
  %1289 = call float @dx.op.unary.f32(i32 22, float %1288)  ; Frc(value)
  %1290 = fmul fast float %1289, 0x401921FB60000000
  %1291 = fadd fast float %1290, %1272
  %1292 = call float @dx.op.unary.f32(i32 13, float %1291)  ; Sin(value)
  %1293 = call float @dx.op.unary.f32(i32 12, float %1291)  ; Cos(value)
  %1294 = fsub fast float -0.000000e+00, %1292
  %1295 = fadd fast float %1246, -5.000000e-01
  %1296 = fadd fast float %1247, -5.000000e-01
  %1297 = fmul fast float %1264, %1295
  %1298 = fmul fast float %1266, %1296
  %1299 = fadd fast float %1297, 5.000000e-01
  %1300 = fadd fast float %1298, 5.000000e-01
  %1301 = fmul fast float %1275, %1299
  %1302 = fmul fast float %1278, %1300
  %1303 = fmul fast float %1293, %1301
  %1304 = call float @dx.op.tertiary.f32(i32 46, float %1294, float %1302, float %1303)  ; FMad(a,b,c)
  %1305 = fmul fast float %1292, %1301
  %1306 = call float @dx.op.tertiary.f32(i32 46, float %1293, float %1302, float %1305)  ; FMad(a,b,c)
  %1307 = fadd fast float %1284, %1304
  %1308 = fadd fast float %1287, %1306
  %1309 = icmp ugt i32 %1258, 1
  %1310 = icmp ugt i32 %1256, 33554431
  %1311 = or i1 %1310, %1309
  br i1 %1311, label %1312, label %1337

; <label>:1312                                    ; preds = %1239
  %1313 = add i32 %60, 244
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = lshr i32 %1315, 16
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = fmul fast float %1280, %1317
  %1319 = call float @dx.op.unary.f32(i32 22, float %1318)  ; Frc(value)
  %1320 = mul nuw nsw i32 %1258, %1259
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1319, %1321
  %1323 = call float @dx.op.unary.f32(i32 27, float %1322)  ; Round_ni(value)
  %1324 = fptoui float %1323 to i32
  %1325 = urem i32 %1324, %1258
  %1326 = udiv i32 %1324, %1259
  %1327 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1328 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1329 = uitofp i32 %1325 to float
  %1330 = uitofp i32 %1326 to float
  %1331 = fadd fast float %1327, %1329
  %1332 = fadd fast float %1328, %1330
  %1333 = uitofp i32 %1258 to float
  %1334 = uitofp i32 %1259 to float
  %1335 = fdiv fast float %1331, %1333
  %1336 = fdiv fast float %1332, %1334
  br label %1337

; <label>:1337                                    ; preds = %1312, %1239
  %1338 = phi float [ %1335, %1312 ], [ %1307, %1239 ]
  %1339 = phi float [ %1336, %1312 ], [ %1308, %1239 ]
  %1340 = and i32 %1233, 16777216
  %1341 = icmp eq i32 %1340, 0
  br i1 %1341, label %1451, label %1342

; <label>:1342                                    ; preds = %1337
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = extractvalue %dx.types.CBufRet.f32 %1343, 1
  %1346 = extractvalue %dx.types.CBufRet.f32 %1343, 2
  %1347 = fadd fast float %1344, %164
  %1348 = fadd fast float %1345, %165
  %1349 = fadd fast float %1346, %166
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 0
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1353 = icmp eq i32 %61, 65535
  br i1 %1353, label %1448, label %1354

; <label>:1354                                    ; preds = %1342
  %1355 = lshr i32 %61, 1
  %1356 = shl i32 %1355, 2
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %61, 1
  %1360 = icmp ne i32 %1359, 0
  %1361 = lshr i32 %1358, 16
  %1362 = and i32 %1358, 65535
  %1363 = select i1 %1360, i32 %1361, i32 %1362
  %1364 = icmp eq i32 %1363, 65535
  br i1 %1364, label %1444, label %1365

; <label>:1365                                    ; preds = %1354
  %1366 = mul nuw nsw i32 %1363, 40
  %1367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 2
  %1371 = add nuw nsw i32 %1366, 12
  %1372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = add nuw nsw i32 %1366, 24
  %1377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.ResRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.ResRet.f32 %1377, 2
  %1381 = add nuw nsw i32 %1366, 36
  %1382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = fsub fast float %1347, %1368
  %1385 = fsub fast float %1348, %1369
  %1386 = fsub fast float %1349, %1370
  %1387 = fmul fast float %1383, %1384
  %1388 = fmul fast float %1383, %1385
  %1389 = fmul fast float %1383, %1386
  %1390 = call float @dx.op.unary.f32(i32 27, float %1387)  ; Round_ni(value)
  %1391 = call float @dx.op.unary.f32(i32 27, float %1388)  ; Round_ni(value)
  %1392 = call float @dx.op.unary.f32(i32 27, float %1389)  ; Round_ni(value)
  %1393 = fadd fast float %1390, 5.000000e-01
  %1394 = fadd fast float %1391, 5.000000e-01
  %1395 = fadd fast float %1392, 5.000000e-01
  %1396 = fmul fast float %1393, %1373
  %1397 = fmul fast float %1394, %1374
  %1398 = fmul fast float %1395, %1375
  %1399 = shl i32 %61, 2
  %1400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.i32 %1400, 0
  %1402 = add i32 %1401, 0
  %1403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1404 = call float @dx.op.unary.f32(i32 22, float %1396)  ; Frc(value)
  %1405 = call float @dx.op.unary.f32(i32 22, float %1397)  ; Frc(value)
  %1406 = call float @dx.op.unary.f32(i32 22, float %1398)  ; Frc(value)
  %1407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1403, %dx.types.Handle %55, float %1404, float %1405, float %1406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1408 = extractvalue %dx.types.ResRet.f32 %1407, 0
  %1409 = extractvalue %dx.types.ResRet.f32 %1407, 1
  %1410 = extractvalue %dx.types.ResRet.f32 %1407, 2
  %1411 = fmul fast float %1408, 1.023000e+03
  %1412 = fmul fast float %1409, 1.023000e+03
  %1413 = fmul fast float %1410, 1.023000e+03
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = fadd fast float %1413, 5.000000e-01
  %1417 = call float @dx.op.unary.f32(i32 27, float %1414)  ; Round_ni(value)
  %1418 = call float @dx.op.unary.f32(i32 27, float %1415)  ; Round_ni(value)
  %1419 = call float @dx.op.unary.f32(i32 27, float %1416)  ; Round_ni(value)
  %1420 = fsub fast float %1387, %1390
  %1421 = fsub fast float %1388, %1391
  %1422 = fsub fast float %1389, %1392
  %1423 = fmul fast float %1420, 7.500000e-01
  %1424 = fmul fast float %1421, 7.500000e-01
  %1425 = fmul fast float %1422, 7.500000e-01
  %1426 = fadd fast float %1390, 1.250000e-01
  %1427 = fadd fast float %1426, %1423
  %1428 = fadd fast float %1427, %1417
  %1429 = fadd fast float %1391, 1.250000e-01
  %1430 = fadd fast float %1429, %1424
  %1431 = fadd fast float %1430, %1418
  %1432 = fadd fast float %1392, 1.250000e-01
  %1433 = fadd fast float %1432, %1425
  %1434 = fadd fast float %1433, %1419
  %1435 = fmul fast float %1428, %1378
  %1436 = fmul fast float %1431, %1379
  %1437 = fmul fast float %1434, %1380
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = add i32 %1439, 0
  %1441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1441, %dx.types.Handle %53, float %1435, float %1436, float %1437, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  br label %1444

; <label>:1444                                    ; preds = %1365, %1354
  %1445 = phi float [ %1443, %1365 ], [ -1.000000e+00, %1354 ]
  %1446 = fadd fast float %1445, %1352
  %1447 = call float @dx.op.unary.f32(i32 7, float %1446)  ; Saturate(value)
  br label %1448

; <label>:1448                                    ; preds = %1444, %1342
  %1449 = phi float [ %1447, %1444 ], [ %1352, %1342 ]
  %1450 = fmul fast float %1449, %497
  br label %1451

; <label>:1451                                    ; preds = %1448, %1337
  %1452 = phi float [ %1450, %1448 ], [ %497, %1337 ]
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 256
  %1456 = icmp eq i32 %1455, 0
  br i1 %1456, label %1503, label %1457

; <label>:1457                                    ; preds = %1451
  %1458 = add i32 %60, 476
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = add i32 %1460, 0
  %1462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1462, %dx.types.Handle %106, float %1338, float %1339, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = add i32 %60, 116
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = shl i32 %1467, 4
  %1469 = and i32 %1468, 32752
  %1470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1469)  ; LegacyF16ToF32(value)
  %1471 = lshr i32 %1467, 7
  %1472 = and i32 %1471, 32752
  %1473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1472)  ; LegacyF16ToF32(value)
  %1474 = fsub fast float 1.000000e+00, %1452
  %1475 = call float @dx.op.binary.f32(i32 35, float %1474, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1476 = bitcast float %1452 to i32
  %1477 = sitofp i32 %1476 to float
  %1478 = fadd fast float %1477, 0xC1CFBF8940000000
  %1479 = fmul fast float %1473, %1478
  %1480 = fadd fast float %1479, 0x41CFBF8940000000
  %1481 = fptosi float %1480 to i32
  %1482 = bitcast i32 %1481 to float
  %1483 = bitcast float %1475 to i32
  %1484 = sitofp i32 %1483 to float
  %1485 = fadd fast float %1484, 0xC1CFBF8940000000
  %1486 = fmul fast float %1485, %1473
  %1487 = fadd fast float %1486, 0x41CFBF8940000000
  %1488 = fptosi float %1487 to i32
  %1489 = bitcast i32 %1488 to float
  %1490 = fmul fast float %1482, %1470
  %1491 = fmul fast float %1489, %1470
  %1492 = fsub fast float %1475, %1490
  %1493 = fadd fast float %1491, %1475
  %1494 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  %1495 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1496 = fsub fast float %1464, %1494
  %1497 = fsub fast float %1495, %1494
  %1498 = bitcast float %1497 to i32
  %1499 = sub nsw i32 2129859010, %1498
  %1500 = bitcast i32 %1499 to float
  %1501 = fmul fast float %1500, %1496
  %1502 = call float @dx.op.unary.f32(i32 7, float %1501)  ; Saturate(value)
  br label %1503

; <label>:1503                                    ; preds = %1457, %1451
  %1504 = phi float [ %1502, %1457 ], [ %1452, %1451 ]
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 128
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1525, label %1509

; <label>:1509                                    ; preds = %1503
  %1510 = add i32 %60, 460
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %1512, 0
  %1514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1514, %dx.types.Handle %106, float %1338, float %1339, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 524288
  %1520 = icmp ne i32 %1519, 0
  %1521 = fcmp fast ogt float %1516, 0x3FE0101020000000
  %1522 = select i1 %1521, float 1.000000e+00, float 0.000000e+00
  %1523 = select i1 %1520, float %1522, float %1516
  %1524 = fmul fast float %1523, %1504
  br label %1525

; <label>:1525                                    ; preds = %1509, %1503
  %1526 = phi float [ %1524, %1509 ], [ %1504, %1503 ]
  %1527 = fcmp fast ult float %1526, 0x3F70101020000000
  br i1 %1527, label %2157, label %1528

; <label>:1528                                    ; preds = %1525
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 16
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1731, label %1533

; <label>:1533                                    ; preds = %1528
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = add i32 %60, 412
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = add i32 %1538, 0
  %1540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1540, %dx.types.Handle %105, float %1338, float %1339, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1542 = extractvalue %dx.types.ResRet.f32 %1541, 0
  %1543 = extractvalue %dx.types.ResRet.f32 %1541, 1
  %1544 = extractvalue %dx.types.ResRet.f32 %1541, 2
  %1545 = extractvalue %dx.types.ResRet.f32 %1541, 3
  %1546 = and i32 %1535, 255
  %1547 = uitofp i32 %1546 to float
  %1548 = lshr i32 %1535, 8
  %1549 = and i32 %1548, 255
  %1550 = uitofp i32 %1549 to float
  %1551 = fmul fast float %1545, %1547
  %1552 = fadd fast float %1551, %1550
  %1553 = fmul fast float %1552, 0x3F70101000000000
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 512
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1566, label %1558

; <label>:1558                                    ; preds = %1533
  %1559 = add i32 %60, 492
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = add i32 %1561, 0
  %1563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1563, %dx.types.Handle %106, float %1338, float %1339, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1565 = extractvalue %dx.types.ResRet.f32 %1564, 0
  br label %1566

; <label>:1566                                    ; preds = %1558, %1533
  %1567 = phi float [ %1565, %1558 ], [ 1.000000e+00, %1533 ]
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = and i32 %1569, 33554432
  %1571 = icmp eq i32 %1570, 0
  br i1 %1571, label %1678, label %1572

; <label>:1572                                    ; preds = %1566
  %1573 = add i32 %60, 240
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 65535
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = lshr i32 %1575, 16
  %1579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1578)  ; LegacyF16ToF32(value)
  %1580 = add i32 %60, 244
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 65535
  %1584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1583)  ; LegacyF16ToF32(value)
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = lshr i32 %1586, 24
  %1588 = uitofp i32 %1587 to float
  %1589 = fmul fast float %1588, 0x3F70101020000000
  %1590 = and i32 %1586, 255
  %1591 = uitofp i32 %1590 to float
  %1592 = fmul fast float %1591, 0x3F70101020000000
  %1593 = lshr i32 %1586, 8
  %1594 = and i32 %1593, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = fmul fast float %1595, 0x3F70101020000000
  %1597 = lshr i32 %1586, 16
  %1598 = and i32 %1597, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = fmul fast float %1599, 0x3F70101020000000
  %1601 = add i32 %60, 236
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = lshr i32 %1603, 24
  %1605 = uitofp i32 %1604 to float
  %1606 = fmul fast float %1605, 0x3F70101020000000
  %1607 = and i32 %1603, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = fmul fast float %1608, 0x3F70101020000000
  %1610 = lshr i32 %1603, 8
  %1611 = and i32 %1610, 255
  %1612 = uitofp i32 %1611 to float
  %1613 = fmul fast float %1612, 0x3F70101020000000
  %1614 = lshr i32 %1603, 16
  %1615 = and i32 %1614, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = bitcast float %1542 to i32
  %1619 = ashr i32 %1618, 1
  %1620 = sub nsw i32 1597463174, %1619
  %1621 = bitcast i32 %1620 to float
  %1622 = fmul fast float %1542, 5.000000e-01
  %1623 = fmul fast float %1621, %1621
  %1624 = fmul fast float %1623, %1622
  %1625 = fsub fast float 1.500000e+00, %1624
  %1626 = fmul fast float %1621, %1542
  %1627 = fmul fast float %1626, %1625
  %1628 = bitcast float %1543 to i32
  %1629 = ashr i32 %1628, 1
  %1630 = sub nsw i32 1597463174, %1629
  %1631 = bitcast i32 %1630 to float
  %1632 = fmul fast float %1543, 5.000000e-01
  %1633 = fmul fast float %1631, %1631
  %1634 = fmul fast float %1633, %1632
  %1635 = fsub fast float 1.500000e+00, %1634
  %1636 = fmul fast float %1631, %1543
  %1637 = fmul fast float %1636, %1635
  %1638 = bitcast float %1544 to i32
  %1639 = ashr i32 %1638, 1
  %1640 = sub nsw i32 1597463174, %1639
  %1641 = bitcast i32 %1640 to float
  %1642 = fmul fast float %1544, 5.000000e-01
  %1643 = fmul fast float %1641, %1641
  %1644 = fmul fast float %1643, %1642
  %1645 = fsub fast float 1.500000e+00, %1644
  %1646 = fmul fast float %1641, %1544
  %1647 = fmul fast float %1646, %1645
  %1648 = fsub fast float %1627, %1609
  %1649 = fsub fast float %1637, %1613
  %1650 = fsub fast float %1647, %1617
  %1651 = fmul fast float %1648, %1577
  %1652 = fmul fast float %1649, %1579
  %1653 = fmul fast float %1650, %1584
  %1654 = fadd fast float %1651, %1592
  %1655 = fadd fast float %1652, %1596
  %1656 = fadd fast float %1653, %1600
  %1657 = call float @dx.op.unary.f32(i32 7, float %1654)  ; Saturate(value)
  %1658 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1659 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  %1660 = fmul fast float %1657, %1657
  %1661 = fmul fast float %1658, %1658
  %1662 = fmul fast float %1659, %1659
  %1663 = fsub fast float %1660, %1542
  %1664 = fsub fast float %1661, %1543
  %1665 = fsub fast float %1662, %1544
  %1666 = fmul fast float %1663, %1567
  %1667 = fmul fast float %1664, %1567
  %1668 = fmul fast float %1665, %1567
  %1669 = fadd fast float %1666, %1542
  %1670 = fadd fast float %1667, %1543
  %1671 = fadd fast float %1668, %1544
  %1672 = fadd fast float %1589, %1553
  %1673 = fsub fast float %1672, %1606
  %1674 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1675 = fsub fast float %1674, %1553
  %1676 = fmul fast float %1675, %1567
  %1677 = fadd fast float %1676, %1553
  br label %1731

; <label>:1678                                    ; preds = %1566
  %1679 = and i32 %1569, 134217728
  %1680 = icmp eq i32 %1679, 0
  br i1 %1680, label %1715, label %1681

; <label>:1681                                    ; preds = %1678
  %1682 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1683 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %1684 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %1685 = fadd fast float %1682, -5.000000e-01
  %1686 = fadd fast float %1683, -5.000000e-01
  %1687 = fadd fast float %1684, -5.000000e-01
  %1688 = fmul fast float %1685, %1567
  %1689 = fmul fast float %1686, %1567
  %1690 = fmul fast float %1687, %1567
  %1691 = fadd fast float %1688, 5.000000e-01
  %1692 = fadd fast float %1689, 5.000000e-01
  %1693 = fadd fast float %1690, 5.000000e-01
  %1694 = call float @dx.op.unary.f32(i32 24, float %1542)  ; Sqrt(value)
  %1695 = call float @dx.op.unary.f32(i32 24, float %1543)  ; Sqrt(value)
  %1696 = call float @dx.op.unary.f32(i32 24, float %1544)  ; Sqrt(value)
  %1697 = fmul fast float %1691, 2.000000e+00
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = fmul fast float %1698, %1694
  %1700 = fadd fast float %1699, %1697
  %1701 = fmul fast float %1700, %1694
  %1702 = fmul fast float %1692, 2.000000e+00
  %1703 = fsub fast float 1.000000e+00, %1702
  %1704 = fmul fast float %1703, %1695
  %1705 = fadd fast float %1704, %1702
  %1706 = fmul fast float %1705, %1695
  %1707 = fmul fast float %1693, 2.000000e+00
  %1708 = fsub fast float 1.000000e+00, %1707
  %1709 = fmul fast float %1708, %1696
  %1710 = fadd fast float %1709, %1707
  %1711 = fmul fast float %1710, %1696
  %1712 = fmul fast float %1701, %1701
  %1713 = fmul fast float %1706, %1706
  %1714 = fmul fast float %1711, %1711
  br label %1731

; <label>:1715                                    ; preds = %1678
  %1716 = fmul fast float %329, %329
  %1717 = fmul fast float %333, %333
  %1718 = fmul fast float %337, %337
  %1719 = fadd fast float %1716, -1.000000e+00
  %1720 = fadd fast float %1717, -1.000000e+00
  %1721 = fadd fast float %1718, -1.000000e+00
  %1722 = fmul fast float %1567, %1719
  %1723 = fmul fast float %1567, %1720
  %1724 = fmul fast float %1567, %1721
  %1725 = fadd fast float %1722, 1.000000e+00
  %1726 = fadd fast float %1723, 1.000000e+00
  %1727 = fadd fast float %1724, 1.000000e+00
  %1728 = fmul fast float %1725, %1542
  %1729 = fmul fast float %1726, %1543
  %1730 = fmul fast float %1727, %1544
  br label %1731

; <label>:1731                                    ; preds = %1715, %1681, %1572, %1528
  %1732 = phi float [ %1677, %1572 ], [ %1553, %1681 ], [ %1553, %1715 ], [ 0x3FA23C0BE0000000, %1528 ]
  %1733 = phi float [ %1669, %1572 ], [ %1712, %1681 ], [ %1728, %1715 ], [ 1.000000e+00, %1528 ]
  %1734 = phi float [ %1670, %1572 ], [ %1713, %1681 ], [ %1729, %1715 ], [ 1.000000e+00, %1528 ]
  %1735 = phi float [ %1671, %1572 ], [ %1714, %1681 ], [ %1730, %1715 ], [ 1.000000e+00, %1528 ]
  %1736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.i32 %1736, 1
  %1738 = and i32 %1737, 1
  %1739 = icmp ne i32 %1738, 0
  %1740 = add i32 %60, 356
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = and i32 %1742, 32
  %1744 = icmp ne i32 %1743, 0
  %1745 = and i1 %1739, %1744
  %1746 = select i1 %1745, float 1.000000e+00, float %1733
  %1747 = select i1 %1745, float 0x3FD3333340000000, float %1734
  %1748 = select i1 %1745, float 0x3FD3333340000000, float %1735
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 32
  %1752 = icmp eq i32 %1751, 0
  br i1 %1752, label %1825, label %1753

; <label>:1753                                    ; preds = %1731
  %1754 = add i32 %60, 108
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = add i32 %60, 428
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = add i32 %1759, 0
  %1761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1762 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1761, %dx.types.Handle %105, float %1338, float %1339, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1763 = extractvalue %dx.types.ResRet.f32 %1762, 0
  %1764 = extractvalue %dx.types.ResRet.f32 %1762, 1
  %1765 = extractvalue %dx.types.ResRet.f32 %1762, 2
  %1766 = extractvalue %dx.types.ResRet.f32 %1762, 3
  %1767 = and i32 %1756, 255
  %1768 = uitofp i32 %1767 to float
  %1769 = lshr i32 %1756, 8
  %1770 = and i32 %1769, 255
  %1771 = uitofp i32 %1770 to float
  %1772 = lshr i32 %1756, 16
  %1773 = and i32 %1772, 255
  %1774 = uitofp i32 %1773 to float
  %1775 = fmul fast float %1774, 0x3F70101000000000
  %1776 = fmul fast float %1763, %1768
  %1777 = fadd fast float %1776, %1771
  %1778 = fmul fast float %1777, 0x3F70101000000000
  %1779 = fadd fast float %1764, -5.000000e-01
  %1780 = fadd fast float %1766, -5.000000e-01
  %1781 = fmul fast float %1779, %1775
  %1782 = fmul fast float %1780, %1775
  %1783 = fadd fast float %1781, 5.000000e-01
  %1784 = fadd fast float %1782, 5.000000e-01
  %1785 = fmul fast float %1783, 2.000000e+00
  %1786 = fadd fast float %1785, -1.000000e+00
  %1787 = fmul fast float %1784, 2.000000e+00
  %1788 = fadd fast float %1787, -1.000000e+00
  %1789 = fadd fast float %1786, %1788
  %1790 = fmul fast float %1789, 5.000000e-01
  %1791 = fsub fast float %1786, %1788
  %1792 = fmul fast float %1791, 5.000000e-01
  %1793 = call float @dx.op.unary.f32(i32 6, float %1790)  ; FAbs(value)
  %1794 = fsub fast float 1.000000e+00, %1793
  %1795 = call float @dx.op.unary.f32(i32 6, float %1792)  ; FAbs(value)
  %1796 = fsub fast float %1794, %1795
  %1797 = call float @dx.op.dot3.f32(i32 55, float %1790, float %1792, float %1796, float %1790, float %1792, float %1796)  ; Dot3(ax,ay,az,bx,by,bz)
  %1798 = call float @dx.op.unary.f32(i32 25, float %1797)  ; Rsqrt(value)
  %1799 = fmul fast float %1790, %1798
  %1800 = fmul fast float %1792, %1798
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = and i32 %1802, 67108864
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %1821, label %1805

; <label>:1805                                    ; preds = %1753
  %1806 = add i32 %60, 296
  %1807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1806, i32 undef)  ; BufferLoad(srv,index,wot)
  %1808 = extractvalue %dx.types.ResRet.i32 %1807, 0
  %1809 = and i32 %1808, 65535
  %1810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1809)  ; LegacyF16ToF32(value)
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = and i32 %1812, 65535
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = lshr i32 %1808, 16
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = fsub fast float %1778, %1816
  %1818 = fmul fast float %1817, %1810
  %1819 = fadd fast float %1818, %1814
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  br label %1821

; <label>:1821                                    ; preds = %1805, %1753
  %1822 = phi float [ %1820, %1805 ], [ %1778, %1753 ]
  %1823 = call float @dx.op.dot2.f32(i32 54, float %1799, float %1800, float %1242, float %1243)  ; Dot2(ax,ay,bx,by)
  %1824 = call float @dx.op.dot2.f32(i32 54, float %1799, float %1800, float %1244, float %1245)  ; Dot2(ax,ay,bx,by)
  br label %1825

; <label>:1825                                    ; preds = %1821, %1731
  %1826 = phi float [ %1822, %1821 ], [ 0x3FD6666660000000, %1731 ]
  %1827 = phi float [ %1823, %1821 ], [ 0.000000e+00, %1731 ]
  %1828 = phi float [ %1824, %1821 ], [ 0.000000e+00, %1731 ]
  %1829 = phi float [ %1765, %1821 ], [ 1.000000e+00, %1731 ]
  %1830 = add i32 %60, 176
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = lshr i32 %1832, 22
  %1834 = shl nuw nsw i32 %1833, 5
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = and i32 %1837, 64
  %1839 = icmp eq i32 %1838, 0
  br i1 %1839, label %1873, label %1840

; <label>:1840                                    ; preds = %1825
  %1841 = add i32 %60, 444
  %1842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1841, i32 undef)  ; BufferLoad(srv,index,wot)
  %1843 = extractvalue %dx.types.ResRet.i32 %1842, 0
  %1844 = add i32 %1843, 0
  %1845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = and i32 %1847, 131072
  %1849 = icmp eq i32 %1848, 0
  %1850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1845, %dx.types.Handle %105, float %1338, float %1339, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1851 = extractvalue %dx.types.ResRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.ResRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.ResRet.f32 %1850, 2
  %1854 = fmul fast float %1851, %317
  %1855 = fmul fast float %1852, %320
  %1856 = fmul fast float %1853, %323
  br i1 %1849, label %1863, label %1857

; <label>:1857                                    ; preds = %1840
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 0
  %1860 = fmul fast float %1859, %1854
  %1861 = fmul fast float %1859, %1855
  %1862 = fmul fast float %1859, %1856
  br label %1863

; <label>:1863                                    ; preds = %1857, %1840
  %1864 = phi float [ %1860, %1857 ], [ %1854, %1840 ]
  %1865 = phi float [ %1861, %1857 ], [ %1855, %1840 ]
  %1866 = phi float [ %1862, %1857 ], [ %1856, %1840 ]
  %1867 = fmul fast float %1864, %1835
  %1868 = select i1 %258, float %1867, float %1864
  %1869 = call float @dx.op.dot3.f32(i32 55, float %1868, float %1865, float %1866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1870 = select i1 %258, float 0.000000e+00, float %1864
  %1871 = select i1 %258, float %1869, float %1865
  %1872 = select i1 %258, float 0.000000e+00, float %1866
  br label %1873

; <label>:1873                                    ; preds = %1863, %1825
  %1874 = phi float [ %1870, %1863 ], [ 0.000000e+00, %1825 ]
  %1875 = phi float [ %1871, %1863 ], [ 0.000000e+00, %1825 ]
  %1876 = phi float [ %1872, %1863 ], [ 0.000000e+00, %1825 ]
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = and i32 %1878, 10240
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %1925, label %1881

; <label>:1881                                    ; preds = %1873
  %1882 = add i32 %60, 508
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = add i32 %1884, 0
  %1886 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1885, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1886, %dx.types.Handle %106, float %1338, float %1339, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 1
  %1889 = extractvalue %dx.types.ResRet.f32 %1887, 3
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = and i32 %1891, 1048576
  %1893 = icmp ne i32 %1892, 0
  %1894 = and i32 %1891, 8192
  %1895 = icmp eq i32 %1894, 0
  br i1 %1895, label %1911, label %1896

; <label>:1896                                    ; preds = %1881
  %1897 = extractvalue %dx.types.ResRet.f32 %1887, 2
  %1898 = select i1 %1893, float %1897, float %1888
  %1899 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1900 = select i1 %1893, float %1899, float %1888
  %1901 = add i32 %60, 112
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = lshr i32 %1903, 16
  %1905 = and i32 %1904, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F80101020000000
  %1908 = fmul fast float %1907, %1900
  %1909 = fmul fast float %1907, %1888
  %1910 = fmul fast float %1907, %1898
  br label %1911

; <label>:1911                                    ; preds = %1896, %1881
  %1912 = phi float [ %1908, %1896 ], [ 0.000000e+00, %1881 ]
  %1913 = phi float [ %1909, %1896 ], [ 0.000000e+00, %1881 ]
  %1914 = phi float [ %1910, %1896 ], [ 0.000000e+00, %1881 ]
  %1915 = and i32 %1891, 2048
  %1916 = icmp eq i32 %1915, 0
  br i1 %1916, label %1925, label %1917

; <label>:1917                                    ; preds = %1911
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = shl i32 %1919, 4
  %1921 = and i32 %1920, 32752
  %1922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1921)  ; LegacyF16ToF32(value)
  %1923 = fmul fast float %1922, %1889
  %1924 = call float @dx.op.binary.f32(i32 35, float %1923, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1925

; <label>:1925                                    ; preds = %1917, %1911, %1873
  %1926 = phi float [ %1912, %1917 ], [ %1912, %1911 ], [ 0.000000e+00, %1873 ]
  %1927 = phi float [ %1913, %1917 ], [ %1913, %1911 ], [ 0.000000e+00, %1873 ]
  %1928 = phi float [ %1914, %1917 ], [ %1914, %1911 ], [ 0.000000e+00, %1873 ]
  %1929 = phi float [ %1924, %1917 ], [ 0x3F70101020000000, %1911 ], [ 0x3F70101020000000, %1873 ]
  %1930 = add i32 %60, 112
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = and i32 %1932, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = lshr i32 %1932, 8
  %1936 = and i32 %1935, 255
  %1937 = uitofp i32 %1936 to float
  %1938 = call float @dx.op.dot3.f32(i32 55, float %1746, float %1747, float %1748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1939 = fmul fast float %1937, %1938
  %1940 = fadd fast float %1939, %1934
  %1941 = fmul fast float %1940, 0x3F70101020000000
  %1942 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  br i1 %1230, label %1943, label %1951

; <label>:1943                                    ; preds = %1925
  %1944 = fsub fast float 1.000000e+00, %1526
  %1945 = fmul fast float %1944, %1217
  %1946 = fmul fast float %1944, %1218
  %1947 = fmul fast float %1944, %1219
  %1948 = fmul fast float %1944, %1214
  %1949 = fmul fast float %1944, %1215
  %1950 = fmul fast float %1944, %1216
  br label %1951

; <label>:1951                                    ; preds = %1943, %1925
  %1952 = phi float [ %1948, %1943 ], [ %1214, %1925 ]
  %1953 = phi float [ %1949, %1943 ], [ %1215, %1925 ]
  %1954 = phi float [ %1950, %1943 ], [ %1216, %1925 ]
  %1955 = phi float [ %1945, %1943 ], [ %1217, %1925 ]
  %1956 = phi float [ %1946, %1943 ], [ %1218, %1925 ]
  %1957 = phi float [ %1947, %1943 ], [ %1219, %1925 ]
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = and i32 %1959, 3
  %1961 = icmp eq i32 %1960, 3
  br i1 %1961, label %2040, label %1962

; <label>:1962                                    ; preds = %1951
  %1963 = and i32 %1959, 16
  %1964 = icmp ne i32 %1963, 0
  %1965 = select i1 %1964, float %1526, float 0.000000e+00
  %1966 = icmp eq i32 %1960, 0
  br i1 %1966, label %1967, label %1995

; <label>:1967                                    ; preds = %1962
  %1968 = and i32 %1959, 64
  %1969 = icmp ne i32 %1968, 0
  %1970 = select i1 %1969, float %1526, float 0.000000e+00
  %1971 = fsub fast float %1746, %1955
  %1972 = fsub fast float %1747, %1956
  %1973 = fsub fast float %1748, %1957
  %1974 = fmul fast float %1965, %1971
  %1975 = fmul fast float %1965, %1972
  %1976 = fmul fast float %1965, %1973
  %1977 = fadd fast float %1974, %1955
  %1978 = fadd fast float %1975, %1956
  %1979 = fadd fast float %1976, %1957
  %1980 = fsub fast float %1732, %1223
  %1981 = fmul fast float %1965, %1980
  %1982 = fadd fast float %1981, %1223
  %1983 = fsub fast float %1874, %1952
  %1984 = fsub fast float %1875, %1953
  %1985 = fsub fast float %1876, %1954
  %1986 = fmul fast float %1970, %1983
  %1987 = fmul fast float %1970, %1984
  %1988 = fmul fast float %1970, %1985
  %1989 = fadd fast float %1986, %1952
  %1990 = fadd fast float %1987, %1953
  %1991 = fadd fast float %1988, %1954
  %1992 = fsub fast float %1942, %1228
  %1993 = fmul fast float %1965, %1992
  %1994 = fadd fast float %1993, %1228
  br label %2040

; <label>:1995                                    ; preds = %1962
  %1996 = icmp eq i32 %1960, 1
  br i1 %1996, label %1997, label %2010

; <label>:1997                                    ; preds = %1995
  %1998 = fadd fast float %1746, -1.000000e+00
  %1999 = fadd fast float %1747, -1.000000e+00
  %2000 = fadd fast float %1748, -1.000000e+00
  %2001 = fmul fast float %1965, %1998
  %2002 = fmul fast float %1965, %1999
  %2003 = fmul fast float %1965, %2000
  %2004 = fadd fast float %2001, 1.000000e+00
  %2005 = fadd fast float %2002, 1.000000e+00
  %2006 = fadd fast float %2003, 1.000000e+00
  %2007 = fmul fast float %2004, %1955
  %2008 = fmul fast float %2005, %1956
  %2009 = fmul fast float %2006, %1957
  br label %2040

; <label>:2010                                    ; preds = %1995
  %2011 = icmp eq i32 %1960, 2
  br i1 %2011, label %2012, label %2040

; <label>:2012                                    ; preds = %2010
  %2013 = call float @dx.op.unary.f32(i32 24, float %1746)  ; Sqrt(value)
  %2014 = call float @dx.op.unary.f32(i32 24, float %1747)  ; Sqrt(value)
  %2015 = call float @dx.op.unary.f32(i32 24, float %1748)  ; Sqrt(value)
  %2016 = fadd fast float %2013, -5.000000e-01
  %2017 = fadd fast float %2014, -5.000000e-01
  %2018 = fadd fast float %2015, -5.000000e-01
  %2019 = fmul fast float %2016, %1965
  %2020 = fmul fast float %2017, %1965
  %2021 = fmul fast float %2018, %1965
  %2022 = fadd fast float %2019, 5.000000e-01
  %2023 = fadd fast float %2020, 5.000000e-01
  %2024 = fadd fast float %2021, 5.000000e-01
  %2025 = fmul fast float %2022, 2.000000e+00
  %2026 = fsub fast float 1.000000e+00, %2025
  %2027 = fmul fast float %2026, %1955
  %2028 = fadd fast float %2027, %2025
  %2029 = fmul fast float %2028, %1955
  %2030 = fmul fast float %2023, 2.000000e+00
  %2031 = fsub fast float 1.000000e+00, %2030
  %2032 = fmul fast float %2031, %1956
  %2033 = fadd fast float %2032, %2030
  %2034 = fmul fast float %2033, %1956
  %2035 = fmul fast float %2024, 2.000000e+00
  %2036 = fsub fast float 1.000000e+00, %2035
  %2037 = fmul fast float %2036, %1957
  %2038 = fadd fast float %2037, %2035
  %2039 = fmul fast float %2038, %1957
  br label %2040

; <label>:2040                                    ; preds = %2012, %2010, %1997, %1967, %1951
  %2041 = phi float [ %1952, %1951 ], [ %1952, %2012 ], [ %1952, %2010 ], [ %1952, %1997 ], [ %1989, %1967 ]
  %2042 = phi float [ %1953, %1951 ], [ %1953, %2012 ], [ %1953, %2010 ], [ %1953, %1997 ], [ %1990, %1967 ]
  %2043 = phi float [ %1954, %1951 ], [ %1954, %2012 ], [ %1954, %2010 ], [ %1954, %1997 ], [ %1991, %1967 ]
  %2044 = phi float [ %1955, %1951 ], [ %2029, %2012 ], [ %1955, %2010 ], [ %2007, %1997 ], [ %1977, %1967 ]
  %2045 = phi float [ %1956, %1951 ], [ %2034, %2012 ], [ %1956, %2010 ], [ %2008, %1997 ], [ %1978, %1967 ]
  %2046 = phi float [ %1957, %1951 ], [ %2039, %2012 ], [ %1957, %2010 ], [ %2009, %1997 ], [ %1979, %1967 ]
  %2047 = phi float [ %1223, %1951 ], [ %1223, %2012 ], [ %1223, %2010 ], [ %1223, %1997 ], [ %1982, %1967 ]
  %2048 = phi float [ %1228, %1951 ], [ %1228, %2012 ], [ %1228, %2010 ], [ %1228, %1997 ], [ %1994, %1967 ]
  %2049 = and i32 %1959, 12
  %2050 = icmp eq i32 %2049, 12
  br i1 %2050, label %2157, label %2051

; <label>:2051                                    ; preds = %2040
  %2052 = and i32 %1959, 2097184
  %2053 = icmp eq i32 %2052, 2097184
  %2054 = select i1 %2053, float %1526, float 0.000000e+00
  %2055 = and i32 %1959, 4194336
  %2056 = icmp eq i32 %2055, 4194336
  %2057 = select i1 %2056, float %1526, float 0.000000e+00
  %2058 = and i32 %1959, 8388640
  %2059 = icmp eq i32 %2058, 8388640
  %2060 = select i1 %2059, float %1526, float 0.000000e+00
  %2061 = and i32 %1959, 2048
  %2062 = icmp ne i32 %2061, 0
  %2063 = select i1 %2062, float %1526, float 0.000000e+00
  %2064 = and i32 %1959, 8192
  %2065 = icmp ne i32 %2064, 0
  %2066 = select i1 %2065, float %1526, float 0.000000e+00
  %2067 = icmp eq i32 %2049, 0
  br i1 %2067, label %2068, label %2093

; <label>:2068                                    ; preds = %2051
  %2069 = fsub fast float %1827, %1212
  %2070 = fsub fast float %1828, %1213
  %2071 = fmul fast float %2054, %2069
  %2072 = fmul fast float %2054, %2070
  %2073 = fadd fast float %2071, %1212
  %2074 = fadd fast float %2072, %1213
  %2075 = fsub fast float %1829, %1226
  %2076 = fmul fast float %2057, %2075
  %2077 = fadd fast float %2076, %1226
  %2078 = fsub fast float %1826, %1225
  %2079 = fmul fast float %2060, %2078
  %2080 = fadd fast float %2079, %1225
  %2081 = fsub fast float %1929, %1227
  %2082 = fmul fast float %2063, %2081
  %2083 = fadd fast float %2082, %1227
  %2084 = fsub fast float %1926, %1220
  %2085 = fsub fast float %1927, %1221
  %2086 = fsub fast float %1928, %1222
  %2087 = fmul fast float %2066, %2084
  %2088 = fmul fast float %2066, %2085
  %2089 = fmul fast float %2066, %2086
  %2090 = fadd fast float %2087, %1220
  %2091 = fadd fast float %2088, %1221
  %2092 = fadd fast float %2089, %1222
  br label %2157

; <label>:2093                                    ; preds = %2051
  %2094 = icmp eq i32 %2049, 4
  br i1 %2094, label %2095, label %2135

; <label>:2095                                    ; preds = %2093
  %2096 = fmul fast float %2054, %1827
  %2097 = fmul fast float %2054, %1828
  %2098 = fadd fast float %2096, %1212
  %2099 = fadd fast float %2097, %1213
  %2100 = call float @dx.op.binary.f32(i32 36, float %1226, float %1829)  ; FMin(a,b)
  %2101 = fsub fast float %2100, %1226
  %2102 = fmul fast float %2101, %2057
  %2103 = fadd fast float %2102, %1226
  %2104 = fadd fast float %1826, %1225
  %2105 = fmul fast float %2104, 0x3FF337FAE0000000
  %2106 = fmul fast float %1225, %1225
  %2107 = fmul fast float %1826, %1826
  %2108 = fadd fast float %2107, %2106
  %2109 = fmul fast float %2108, 0x3FE5152B00000000
  %2110 = fmul fast float %1225, 0xBFCC1F85E0000000
  %2111 = fmul fast float %2110, %1826
  %2112 = fadd fast float %2111, 0xBFE1363700000000
  %2113 = fadd fast float %2112, %2105
  %2114 = fsub fast float %2113, %2109
  %2115 = fmul fast float %2104, 0x3FBA6F0D00000000
  %2116 = fmul fast float %2108, 0x3FD0432880000000
  %2117 = fmul fast float %1225, 0xBFEF110800000000
  %2118 = fmul fast float %2117, %1826
  %2119 = fadd fast float %2118, 1.000000e+00
  %2120 = fsub fast float %2119, %2115
  %2121 = fadd fast float %2120, %2116
  %2122 = fdiv fast float %2114, %2121
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2124 = fsub fast float %2123, %1225
  %2125 = fmul fast float %2124, %2060
  %2126 = fadd fast float %2125, %1225
  %2127 = fmul fast float %2063, %1929
  %2128 = fadd fast float %2127, %1227
  %2129 = fmul fast float %2066, %1926
  %2130 = fmul fast float %2066, %1927
  %2131 = fmul fast float %2066, %1928
  %2132 = fadd fast float %2129, %1220
  %2133 = fadd fast float %2130, %1221
  %2134 = fadd fast float %2131, %1222
  br label %2157

; <label>:2135                                    ; preds = %2093
  %2136 = icmp eq i32 %2049, 8
  br i1 %2136, label %2137, label %2157

; <label>:2137                                    ; preds = %2135
  %2138 = fmul fast float %2054, %1827
  %2139 = fmul fast float %2054, %1828
  %2140 = fadd fast float %2138, %1212
  %2141 = fadd fast float %2139, %1213
  %2142 = call float @dx.op.binary.f32(i32 36, float %1226, float %1829)  ; FMin(a,b)
  %2143 = fsub fast float %2142, %1226
  %2144 = fmul fast float %2143, %2057
  %2145 = fadd fast float %2144, %1226
  %2146 = fsub fast float %1826, %1225
  %2147 = fmul fast float %2060, %2146
  %2148 = fadd fast float %2147, %1225
  %2149 = fmul fast float %2063, %1929
  %2150 = fadd fast float %2149, %1227
  %2151 = fmul fast float %2066, %1926
  %2152 = fmul fast float %2066, %1927
  %2153 = fmul fast float %2066, %1928
  %2154 = fadd fast float %2151, %1220
  %2155 = fadd fast float %2152, %1221
  %2156 = fadd fast float %2153, %1222
  br label %2157

; <label>:2157                                    ; preds = %2137, %2135, %2095, %2068, %2040, %1525, %1229, %1211
  %2158 = phi float [ %1212, %2040 ], [ %1212, %1525 ], [ %1212, %1211 ], [ %2140, %2137 ], [ %1212, %2135 ], [ %2098, %2095 ], [ %2073, %2068 ], [ %1212, %1229 ]
  %2159 = phi float [ %1213, %2040 ], [ %1213, %1525 ], [ %1213, %1211 ], [ %2141, %2137 ], [ %1213, %2135 ], [ %2099, %2095 ], [ %2074, %2068 ], [ %1213, %1229 ]
  %2160 = phi float [ %2041, %2040 ], [ %1214, %1525 ], [ %1214, %1211 ], [ %2041, %2137 ], [ %2041, %2135 ], [ %2041, %2095 ], [ %2041, %2068 ], [ %1214, %1229 ]
  %2161 = phi float [ %2042, %2040 ], [ %1215, %1525 ], [ %1215, %1211 ], [ %2042, %2137 ], [ %2042, %2135 ], [ %2042, %2095 ], [ %2042, %2068 ], [ %1215, %1229 ]
  %2162 = phi float [ %2043, %2040 ], [ %1216, %1525 ], [ %1216, %1211 ], [ %2043, %2137 ], [ %2043, %2135 ], [ %2043, %2095 ], [ %2043, %2068 ], [ %1216, %1229 ]
  %2163 = phi float [ %2044, %2040 ], [ %1217, %1525 ], [ %1217, %1211 ], [ %2044, %2137 ], [ %2044, %2135 ], [ %2044, %2095 ], [ %2044, %2068 ], [ %1217, %1229 ]
  %2164 = phi float [ %2045, %2040 ], [ %1218, %1525 ], [ %1218, %1211 ], [ %2045, %2137 ], [ %2045, %2135 ], [ %2045, %2095 ], [ %2045, %2068 ], [ %1218, %1229 ]
  %2165 = phi float [ %2046, %2040 ], [ %1219, %1525 ], [ %1219, %1211 ], [ %2046, %2137 ], [ %2046, %2135 ], [ %2046, %2095 ], [ %2046, %2068 ], [ %1219, %1229 ]
  %2166 = phi float [ %1220, %2040 ], [ %1220, %1525 ], [ %1220, %1211 ], [ %2154, %2137 ], [ %1220, %2135 ], [ %2132, %2095 ], [ %2090, %2068 ], [ %1220, %1229 ]
  %2167 = phi float [ %1221, %2040 ], [ %1221, %1525 ], [ %1221, %1211 ], [ %2155, %2137 ], [ %1221, %2135 ], [ %2133, %2095 ], [ %2091, %2068 ], [ %1221, %1229 ]
  %2168 = phi float [ %1222, %2040 ], [ %1222, %1525 ], [ %1222, %1211 ], [ %2156, %2137 ], [ %1222, %2135 ], [ %2134, %2095 ], [ %2092, %2068 ], [ %1222, %1229 ]
  %2169 = phi float [ %2047, %2040 ], [ %1223, %1525 ], [ %1223, %1211 ], [ %2047, %2137 ], [ %2047, %2135 ], [ %2047, %2095 ], [ %2047, %2068 ], [ %1223, %1229 ]
  %2170 = phi float [ %1225, %2040 ], [ %1225, %1525 ], [ %1225, %1211 ], [ %2148, %2137 ], [ %1225, %2135 ], [ %2126, %2095 ], [ %2080, %2068 ], [ %1225, %1229 ]
  %2171 = phi float [ %1226, %2040 ], [ %1226, %1525 ], [ %1226, %1211 ], [ %2145, %2137 ], [ %1226, %2135 ], [ %2103, %2095 ], [ %2077, %2068 ], [ %1226, %1229 ]
  %2172 = phi float [ %1227, %2040 ], [ %1227, %1525 ], [ %1227, %1211 ], [ %2150, %2137 ], [ %1227, %2135 ], [ %2128, %2095 ], [ %2083, %2068 ], [ %1227, %1229 ]
  %2173 = phi float [ %2048, %2040 ], [ %1228, %1525 ], [ %1228, %1211 ], [ %2048, %2137 ], [ %2048, %2135 ], [ %2048, %2095 ], [ %2048, %2068 ], [ %1228, %1229 ]
  br i1 %444, label %3102, label %2174

; <label>:2174                                    ; preds = %2157
  %2175 = icmp ult i32 %500, 3
  %2176 = add i32 %60, 56
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = add i32 %60, 60
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = or i32 %2181, %2178
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %3102, label %2184

; <label>:2184                                    ; preds = %2174
  %2185 = and i32 %2178, 262144
  %2186 = icmp ne i32 %2185, 0
  %2187 = select i1 %2186, float %63, float 1.000000e+00
  %2188 = select i1 %2186, float %64, float 0.000000e+00
  %2189 = select i1 %2186, float %65, float 0.000000e+00
  %2190 = select i1 %2186, float %66, float 1.000000e+00
  %2191 = select i1 %2186, float %67, float %88
  %2192 = select i1 %2186, float %68, float %89
  %2193 = add i32 %60, 316
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = lshr i32 %2195, 16
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = fmul fast float %2197, 0x3F50624DE0000000
  %2199 = add i32 %60, 120
  %2200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2201 = extractvalue %dx.types.ResRet.i32 %2200, 0
  %2202 = lshr i32 %2201, 16
  %2203 = and i32 %2202, 255
  %2204 = lshr i32 %2201, 24
  %2205 = add i32 %60, 324
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, 65535
  %2209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2208)  ; LegacyF16ToF32(value)
  %2210 = lshr i32 %2207, 16
  %2211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2210)  ; LegacyF16ToF32(value)
  %2212 = add i32 %60, 64
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = lshr i32 %2214, 22
  %2216 = shl nuw nsw i32 %2215, 5
  %2217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2216)  ; LegacyF16ToF32(value)
  %2218 = shl i32 %2214, 4
  %2219 = and i32 %2218, 32752
  %2220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2219)  ; LegacyF16ToF32(value)
  %2221 = lshr i32 %2214, 7
  %2222 = and i32 %2221, 32752
  %2223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2222)  ; LegacyF16ToF32(value)
  %2224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2225 = extractvalue %dx.types.CBufRet.f32 %2224, 3
  %2226 = fmul fast float %2225, 1.000000e+03
  %2227 = fmul fast float %394, %2226
  %2228 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2229 = fadd fast float %2228, %384
  %2230 = fmul fast float %395, %2226
  %2231 = call float @dx.op.unary.f32(i32 22, float %2230)  ; Frc(value)
  %2232 = fadd fast float %2231, %386
  %2233 = fmul fast float %2198, %2226
  %2234 = call float @dx.op.unary.f32(i32 22, float %2233)  ; Frc(value)
  %2235 = fmul fast float %2234, 0x401921FB60000000
  %2236 = fadd fast float %2235, %2217
  %2237 = call float @dx.op.unary.f32(i32 13, float %2236)  ; Sin(value)
  %2238 = call float @dx.op.unary.f32(i32 12, float %2236)  ; Cos(value)
  %2239 = fsub fast float -0.000000e+00, %2237
  %2240 = fadd fast float %2191, -5.000000e-01
  %2241 = fadd fast float %2192, -5.000000e-01
  %2242 = fmul fast float %2209, %2240
  %2243 = fmul fast float %2211, %2241
  %2244 = fadd fast float %2242, 5.000000e-01
  %2245 = fadd fast float %2243, 5.000000e-01
  %2246 = fmul fast float %2220, %2244
  %2247 = fmul fast float %2223, %2245
  %2248 = fmul fast float %2238, %2246
  %2249 = call float @dx.op.tertiary.f32(i32 46, float %2239, float %2247, float %2248)  ; FMad(a,b,c)
  %2250 = fmul fast float %2237, %2246
  %2251 = call float @dx.op.tertiary.f32(i32 46, float %2238, float %2247, float %2250)  ; FMad(a,b,c)
  %2252 = fadd fast float %2229, %2249
  %2253 = fadd fast float %2232, %2251
  %2254 = icmp ugt i32 %2203, 1
  %2255 = icmp ugt i32 %2201, 33554431
  %2256 = or i1 %2255, %2254
  br i1 %2256, label %2257, label %2282

; <label>:2257                                    ; preds = %2184
  %2258 = add i32 %60, 260
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = lshr i32 %2260, 16
  %2262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2261)  ; LegacyF16ToF32(value)
  %2263 = fmul fast float %2225, %2262
  %2264 = call float @dx.op.unary.f32(i32 22, float %2263)  ; Frc(value)
  %2265 = mul nuw nsw i32 %2203, %2204
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2264, %2266
  %2268 = call float @dx.op.unary.f32(i32 27, float %2267)  ; Round_ni(value)
  %2269 = fptoui float %2268 to i32
  %2270 = urem i32 %2269, %2203
  %2271 = udiv i32 %2269, %2204
  %2272 = call float @dx.op.unary.f32(i32 22, float %2252)  ; Frc(value)
  %2273 = call float @dx.op.unary.f32(i32 22, float %2253)  ; Frc(value)
  %2274 = uitofp i32 %2270 to float
  %2275 = uitofp i32 %2271 to float
  %2276 = fadd fast float %2272, %2274
  %2277 = fadd fast float %2273, %2275
  %2278 = uitofp i32 %2203 to float
  %2279 = uitofp i32 %2204 to float
  %2280 = fdiv fast float %2276, %2278
  %2281 = fdiv fast float %2277, %2279
  br label %2282

; <label>:2282                                    ; preds = %2257, %2184
  %2283 = phi float [ %2280, %2257 ], [ %2252, %2184 ]
  %2284 = phi float [ %2281, %2257 ], [ %2253, %2184 ]
  %2285 = and i32 %2178, 16777216
  %2286 = icmp eq i32 %2285, 0
  br i1 %2286, label %2396, label %2287

; <label>:2287                                    ; preds = %2282
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.CBufRet.f32 %2288, 2
  %2292 = fadd fast float %2289, %164
  %2293 = fadd fast float %2290, %165
  %2294 = fadd fast float %2291, %166
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.f32 %2295, 0
  %2297 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2298 = icmp eq i32 %61, 65535
  br i1 %2298, label %2393, label %2299

; <label>:2299                                    ; preds = %2287
  %2300 = lshr i32 %61, 1
  %2301 = shl i32 %2300, 2
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %61, 1
  %2305 = icmp ne i32 %2304, 0
  %2306 = lshr i32 %2303, 16
  %2307 = and i32 %2303, 65535
  %2308 = select i1 %2305, i32 %2306, i32 %2307
  %2309 = icmp eq i32 %2308, 65535
  br i1 %2309, label %2389, label %2310

; <label>:2310                                    ; preds = %2299
  %2311 = mul nuw nsw i32 %2308, 40
  %2312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.ResRet.f32 %2312, 1
  %2315 = extractvalue %dx.types.ResRet.f32 %2312, 2
  %2316 = add nuw nsw i32 %2311, 12
  %2317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.f32 %2317, 0
  %2319 = extractvalue %dx.types.ResRet.f32 %2317, 1
  %2320 = extractvalue %dx.types.ResRet.f32 %2317, 2
  %2321 = add nuw nsw i32 %2311, 24
  %2322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.ResRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.ResRet.f32 %2322, 2
  %2326 = add nuw nsw i32 %2311, 36
  %2327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.f32 %2327, 0
  %2329 = fsub fast float %2292, %2313
  %2330 = fsub fast float %2293, %2314
  %2331 = fsub fast float %2294, %2315
  %2332 = fmul fast float %2328, %2329
  %2333 = fmul fast float %2328, %2330
  %2334 = fmul fast float %2328, %2331
  %2335 = call float @dx.op.unary.f32(i32 27, float %2332)  ; Round_ni(value)
  %2336 = call float @dx.op.unary.f32(i32 27, float %2333)  ; Round_ni(value)
  %2337 = call float @dx.op.unary.f32(i32 27, float %2334)  ; Round_ni(value)
  %2338 = fadd fast float %2335, 5.000000e-01
  %2339 = fadd fast float %2336, 5.000000e-01
  %2340 = fadd fast float %2337, 5.000000e-01
  %2341 = fmul fast float %2338, %2318
  %2342 = fmul fast float %2339, %2319
  %2343 = fmul fast float %2340, %2320
  %2344 = shl i32 %61, 2
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = add i32 %2346, 0
  %2348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2349 = call float @dx.op.unary.f32(i32 22, float %2341)  ; Frc(value)
  %2350 = call float @dx.op.unary.f32(i32 22, float %2342)  ; Frc(value)
  %2351 = call float @dx.op.unary.f32(i32 22, float %2343)  ; Frc(value)
  %2352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2348, %dx.types.Handle %55, float %2349, float %2350, float %2351, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2353 = extractvalue %dx.types.ResRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.ResRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.ResRet.f32 %2352, 2
  %2356 = fmul fast float %2353, 1.023000e+03
  %2357 = fmul fast float %2354, 1.023000e+03
  %2358 = fmul fast float %2355, 1.023000e+03
  %2359 = fadd fast float %2356, 5.000000e-01
  %2360 = fadd fast float %2357, 5.000000e-01
  %2361 = fadd fast float %2358, 5.000000e-01
  %2362 = call float @dx.op.unary.f32(i32 27, float %2359)  ; Round_ni(value)
  %2363 = call float @dx.op.unary.f32(i32 27, float %2360)  ; Round_ni(value)
  %2364 = call float @dx.op.unary.f32(i32 27, float %2361)  ; Round_ni(value)
  %2365 = fsub fast float %2332, %2335
  %2366 = fsub fast float %2333, %2336
  %2367 = fsub fast float %2334, %2337
  %2368 = fmul fast float %2365, 7.500000e-01
  %2369 = fmul fast float %2366, 7.500000e-01
  %2370 = fmul fast float %2367, 7.500000e-01
  %2371 = fadd fast float %2335, 1.250000e-01
  %2372 = fadd fast float %2371, %2368
  %2373 = fadd fast float %2372, %2362
  %2374 = fadd fast float %2336, 1.250000e-01
  %2375 = fadd fast float %2374, %2369
  %2376 = fadd fast float %2375, %2363
  %2377 = fadd fast float %2337, 1.250000e-01
  %2378 = fadd fast float %2377, %2370
  %2379 = fadd fast float %2378, %2364
  %2380 = fmul fast float %2373, %2323
  %2381 = fmul fast float %2376, %2324
  %2382 = fmul fast float %2379, %2325
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = add i32 %2384, 0
  %2386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2386, %dx.types.Handle %53, float %2380, float %2381, float %2382, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2388 = extractvalue %dx.types.ResRet.f32 %2387, 0
  br label %2389

; <label>:2389                                    ; preds = %2310, %2299
  %2390 = phi float [ %2388, %2310 ], [ -1.000000e+00, %2299 ]
  %2391 = fadd fast float %2390, %2297
  %2392 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  br label %2393

; <label>:2393                                    ; preds = %2389, %2287
  %2394 = phi float [ %2392, %2389 ], [ %2297, %2287 ]
  %2395 = fmul fast float %2394, %496
  br label %2396

; <label>:2396                                    ; preds = %2393, %2282
  %2397 = phi float [ %2395, %2393 ], [ %496, %2282 ]
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 256
  %2401 = icmp eq i32 %2400, 0
  br i1 %2401, label %2448, label %2402

; <label>:2402                                    ; preds = %2396
  %2403 = add i32 %60, 480
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = add i32 %2405, 0
  %2407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2406, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2408 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2407, %dx.types.Handle %106, float %2283, float %2284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2409 = extractvalue %dx.types.ResRet.f32 %2408, 0
  %2410 = add i32 %60, 132
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = shl i32 %2412, 4
  %2414 = and i32 %2413, 32752
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = lshr i32 %2412, 7
  %2417 = and i32 %2416, 32752
  %2418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2417)  ; LegacyF16ToF32(value)
  %2419 = fsub fast float 1.000000e+00, %2397
  %2420 = call float @dx.op.binary.f32(i32 35, float %2419, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2421 = bitcast float %2397 to i32
  %2422 = sitofp i32 %2421 to float
  %2423 = fadd fast float %2422, 0xC1CFBF8940000000
  %2424 = fmul fast float %2418, %2423
  %2425 = fadd fast float %2424, 0x41CFBF8940000000
  %2426 = fptosi float %2425 to i32
  %2427 = bitcast i32 %2426 to float
  %2428 = bitcast float %2420 to i32
  %2429 = sitofp i32 %2428 to float
  %2430 = fadd fast float %2429, 0xC1CFBF8940000000
  %2431 = fmul fast float %2430, %2418
  %2432 = fadd fast float %2431, 0x41CFBF8940000000
  %2433 = fptosi float %2432 to i32
  %2434 = bitcast i32 %2433 to float
  %2435 = fmul fast float %2427, %2415
  %2436 = fmul fast float %2434, %2415
  %2437 = fsub fast float %2420, %2435
  %2438 = fadd fast float %2436, %2420
  %2439 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2440 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  %2441 = fsub fast float %2409, %2439
  %2442 = fsub fast float %2440, %2439
  %2443 = bitcast float %2442 to i32
  %2444 = sub nsw i32 2129859010, %2443
  %2445 = bitcast i32 %2444 to float
  %2446 = fmul fast float %2445, %2441
  %2447 = call float @dx.op.unary.f32(i32 7, float %2446)  ; Saturate(value)
  br label %2448

; <label>:2448                                    ; preds = %2402, %2396
  %2449 = phi float [ %2447, %2402 ], [ %2397, %2396 ]
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 128
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2470, label %2454

; <label>:2454                                    ; preds = %2448
  %2455 = add i32 %60, 464
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = add i32 %2457, 0
  %2459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2459, %dx.types.Handle %106, float %2283, float %2284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 524288
  %2465 = icmp ne i32 %2464, 0
  %2466 = fcmp fast ogt float %2461, 0x3FE0101020000000
  %2467 = select i1 %2466, float 1.000000e+00, float 0.000000e+00
  %2468 = select i1 %2465, float %2467, float %2461
  %2469 = fmul fast float %2468, %2449
  br label %2470

; <label>:2470                                    ; preds = %2454, %2448
  %2471 = phi float [ %2469, %2454 ], [ %2449, %2448 ]
  %2472 = fcmp fast ult float %2471, 0x3F70101020000000
  br i1 %2472, label %3102, label %2473

; <label>:2473                                    ; preds = %2470
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = and i32 %2475, 16
  %2477 = icmp eq i32 %2476, 0
  br i1 %2477, label %2676, label %2478

; <label>:2478                                    ; preds = %2473
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2199, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = add i32 %60, 416
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = add i32 %2483, 0
  %2485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2485, %dx.types.Handle %105, float %2283, float %2284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2490 = extractvalue %dx.types.ResRet.f32 %2486, 3
  %2491 = and i32 %2480, 255
  %2492 = uitofp i32 %2491 to float
  %2493 = lshr i32 %2480, 8
  %2494 = and i32 %2493, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2490, %2492
  %2497 = fadd fast float %2496, %2495
  %2498 = fmul fast float %2497, 0x3F70101000000000
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = and i32 %2500, 512
  %2502 = icmp eq i32 %2501, 0
  br i1 %2502, label %2511, label %2503

; <label>:2503                                    ; preds = %2478
  %2504 = add i32 %60, 496
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = add i32 %2506, 0
  %2508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2508, %dx.types.Handle %106, float %2283, float %2284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2510 = extractvalue %dx.types.ResRet.f32 %2509, 0
  br label %2511

; <label>:2511                                    ; preds = %2503, %2478
  %2512 = phi float [ %2510, %2503 ], [ 1.000000e+00, %2478 ]
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 33554432
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2623, label %2517

; <label>:2517                                    ; preds = %2511
  %2518 = add i32 %60, 256
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = and i32 %2520, 65535
  %2522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2521)  ; LegacyF16ToF32(value)
  %2523 = lshr i32 %2520, 16
  %2524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2523)  ; LegacyF16ToF32(value)
  %2525 = add i32 %60, 260
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2525, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = and i32 %2527, 65535
  %2529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2528)  ; LegacyF16ToF32(value)
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = lshr i32 %2531, 24
  %2533 = uitofp i32 %2532 to float
  %2534 = fmul fast float %2533, 0x3F70101020000000
  %2535 = and i32 %2531, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = fmul fast float %2536, 0x3F70101020000000
  %2538 = lshr i32 %2531, 8
  %2539 = and i32 %2538, 255
  %2540 = uitofp i32 %2539 to float
  %2541 = fmul fast float %2540, 0x3F70101020000000
  %2542 = lshr i32 %2531, 16
  %2543 = and i32 %2542, 255
  %2544 = uitofp i32 %2543 to float
  %2545 = fmul fast float %2544, 0x3F70101020000000
  %2546 = add i32 %60, 252
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = lshr i32 %2548, 24
  %2550 = uitofp i32 %2549 to float
  %2551 = fmul fast float %2550, 0x3F70101020000000
  %2552 = and i32 %2548, 255
  %2553 = uitofp i32 %2552 to float
  %2554 = fmul fast float %2553, 0x3F70101020000000
  %2555 = lshr i32 %2548, 8
  %2556 = and i32 %2555, 255
  %2557 = uitofp i32 %2556 to float
  %2558 = fmul fast float %2557, 0x3F70101020000000
  %2559 = lshr i32 %2548, 16
  %2560 = and i32 %2559, 255
  %2561 = uitofp i32 %2560 to float
  %2562 = fmul fast float %2561, 0x3F70101020000000
  %2563 = bitcast float %2487 to i32
  %2564 = ashr i32 %2563, 1
  %2565 = sub nsw i32 1597463174, %2564
  %2566 = bitcast i32 %2565 to float
  %2567 = fmul fast float %2487, 5.000000e-01
  %2568 = fmul fast float %2566, %2566
  %2569 = fmul fast float %2568, %2567
  %2570 = fsub fast float 1.500000e+00, %2569
  %2571 = fmul fast float %2566, %2487
  %2572 = fmul fast float %2571, %2570
  %2573 = bitcast float %2488 to i32
  %2574 = ashr i32 %2573, 1
  %2575 = sub nsw i32 1597463174, %2574
  %2576 = bitcast i32 %2575 to float
  %2577 = fmul fast float %2488, 5.000000e-01
  %2578 = fmul fast float %2576, %2576
  %2579 = fmul fast float %2578, %2577
  %2580 = fsub fast float 1.500000e+00, %2579
  %2581 = fmul fast float %2576, %2488
  %2582 = fmul fast float %2581, %2580
  %2583 = bitcast float %2489 to i32
  %2584 = ashr i32 %2583, 1
  %2585 = sub nsw i32 1597463174, %2584
  %2586 = bitcast i32 %2585 to float
  %2587 = fmul fast float %2489, 5.000000e-01
  %2588 = fmul fast float %2586, %2586
  %2589 = fmul fast float %2588, %2587
  %2590 = fsub fast float 1.500000e+00, %2589
  %2591 = fmul fast float %2586, %2489
  %2592 = fmul fast float %2591, %2590
  %2593 = fsub fast float %2572, %2554
  %2594 = fsub fast float %2582, %2558
  %2595 = fsub fast float %2592, %2562
  %2596 = fmul fast float %2593, %2522
  %2597 = fmul fast float %2594, %2524
  %2598 = fmul fast float %2595, %2529
  %2599 = fadd fast float %2596, %2537
  %2600 = fadd fast float %2597, %2541
  %2601 = fadd fast float %2598, %2545
  %2602 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2603 = call float @dx.op.unary.f32(i32 7, float %2600)  ; Saturate(value)
  %2604 = call float @dx.op.unary.f32(i32 7, float %2601)  ; Saturate(value)
  %2605 = fmul fast float %2602, %2602
  %2606 = fmul fast float %2603, %2603
  %2607 = fmul fast float %2604, %2604
  %2608 = fsub fast float %2605, %2487
  %2609 = fsub fast float %2606, %2488
  %2610 = fsub fast float %2607, %2489
  %2611 = fmul fast float %2608, %2512
  %2612 = fmul fast float %2609, %2512
  %2613 = fmul fast float %2610, %2512
  %2614 = fadd fast float %2611, %2487
  %2615 = fadd fast float %2612, %2488
  %2616 = fadd fast float %2613, %2489
  %2617 = fadd fast float %2534, %2498
  %2618 = fsub fast float %2617, %2551
  %2619 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  %2620 = fsub fast float %2619, %2498
  %2621 = fmul fast float %2620, %2512
  %2622 = fadd fast float %2621, %2498
  br label %2676

; <label>:2623                                    ; preds = %2511
  %2624 = and i32 %2514, 134217728
  %2625 = icmp eq i32 %2624, 0
  br i1 %2625, label %2660, label %2626

; <label>:2626                                    ; preds = %2623
  %2627 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2628 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %2629 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %2630 = fadd fast float %2627, -5.000000e-01
  %2631 = fadd fast float %2628, -5.000000e-01
  %2632 = fadd fast float %2629, -5.000000e-01
  %2633 = fmul fast float %2630, %2512
  %2634 = fmul fast float %2631, %2512
  %2635 = fmul fast float %2632, %2512
  %2636 = fadd fast float %2633, 5.000000e-01
  %2637 = fadd fast float %2634, 5.000000e-01
  %2638 = fadd fast float %2635, 5.000000e-01
  %2639 = call float @dx.op.unary.f32(i32 24, float %2487)  ; Sqrt(value)
  %2640 = call float @dx.op.unary.f32(i32 24, float %2488)  ; Sqrt(value)
  %2641 = call float @dx.op.unary.f32(i32 24, float %2489)  ; Sqrt(value)
  %2642 = fmul fast float %2636, 2.000000e+00
  %2643 = fsub fast float 1.000000e+00, %2642
  %2644 = fmul fast float %2643, %2639
  %2645 = fadd fast float %2644, %2642
  %2646 = fmul fast float %2645, %2639
  %2647 = fmul fast float %2637, 2.000000e+00
  %2648 = fsub fast float 1.000000e+00, %2647
  %2649 = fmul fast float %2648, %2640
  %2650 = fadd fast float %2649, %2647
  %2651 = fmul fast float %2650, %2640
  %2652 = fmul fast float %2638, 2.000000e+00
  %2653 = fsub fast float 1.000000e+00, %2652
  %2654 = fmul fast float %2653, %2641
  %2655 = fadd fast float %2654, %2652
  %2656 = fmul fast float %2655, %2641
  %2657 = fmul fast float %2646, %2646
  %2658 = fmul fast float %2651, %2651
  %2659 = fmul fast float %2656, %2656
  br label %2676

; <label>:2660                                    ; preds = %2623
  %2661 = fmul fast float %371, %371
  %2662 = fmul fast float %375, %375
  %2663 = fmul fast float %379, %379
  %2664 = fadd fast float %2661, -1.000000e+00
  %2665 = fadd fast float %2662, -1.000000e+00
  %2666 = fadd fast float %2663, -1.000000e+00
  %2667 = fmul fast float %2512, %2664
  %2668 = fmul fast float %2512, %2665
  %2669 = fmul fast float %2512, %2666
  %2670 = fadd fast float %2667, 1.000000e+00
  %2671 = fadd fast float %2668, 1.000000e+00
  %2672 = fadd fast float %2669, 1.000000e+00
  %2673 = fmul fast float %2670, %2487
  %2674 = fmul fast float %2671, %2488
  %2675 = fmul fast float %2672, %2489
  br label %2676

; <label>:2676                                    ; preds = %2660, %2626, %2517, %2473
  %2677 = phi float [ %2622, %2517 ], [ %2498, %2626 ], [ %2498, %2660 ], [ 0x3FA23C0BE0000000, %2473 ]
  %2678 = phi float [ %2614, %2517 ], [ %2657, %2626 ], [ %2673, %2660 ], [ 1.000000e+00, %2473 ]
  %2679 = phi float [ %2615, %2517 ], [ %2658, %2626 ], [ %2674, %2660 ], [ 1.000000e+00, %2473 ]
  %2680 = phi float [ %2616, %2517 ], [ %2659, %2626 ], [ %2675, %2660 ], [ 1.000000e+00, %2473 ]
  %2681 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.i32 %2681, 1
  %2683 = and i32 %2682, 1
  %2684 = icmp ne i32 %2683, 0
  %2685 = add i32 %60, 356
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2685, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 32
  %2689 = icmp ne i32 %2688, 0
  %2690 = and i1 %2684, %2689
  %2691 = select i1 %2690, float 1.000000e+00, float %2678
  %2692 = select i1 %2690, float 0x3FD3333340000000, float %2679
  %2693 = select i1 %2690, float 0x3FD3333340000000, float %2680
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = and i32 %2695, 32
  %2697 = icmp eq i32 %2696, 0
  br i1 %2697, label %2770, label %2698

; <label>:2698                                    ; preds = %2676
  %2699 = add i32 %60, 124
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2699, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = add i32 %60, 432
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = add i32 %2704, 0
  %2706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2706, %dx.types.Handle %105, float %2283, float %2284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2708 = extractvalue %dx.types.ResRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.ResRet.f32 %2707, 1
  %2710 = extractvalue %dx.types.ResRet.f32 %2707, 2
  %2711 = extractvalue %dx.types.ResRet.f32 %2707, 3
  %2712 = and i32 %2701, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = lshr i32 %2701, 8
  %2715 = and i32 %2714, 255
  %2716 = uitofp i32 %2715 to float
  %2717 = lshr i32 %2701, 16
  %2718 = and i32 %2717, 255
  %2719 = uitofp i32 %2718 to float
  %2720 = fmul fast float %2719, 0x3F70101000000000
  %2721 = fmul fast float %2708, %2713
  %2722 = fadd fast float %2721, %2716
  %2723 = fmul fast float %2722, 0x3F70101000000000
  %2724 = fadd fast float %2709, -5.000000e-01
  %2725 = fadd fast float %2711, -5.000000e-01
  %2726 = fmul fast float %2724, %2720
  %2727 = fmul fast float %2725, %2720
  %2728 = fadd fast float %2726, 5.000000e-01
  %2729 = fadd fast float %2727, 5.000000e-01
  %2730 = fmul fast float %2728, 2.000000e+00
  %2731 = fadd fast float %2730, -1.000000e+00
  %2732 = fmul fast float %2729, 2.000000e+00
  %2733 = fadd fast float %2732, -1.000000e+00
  %2734 = fadd fast float %2731, %2733
  %2735 = fmul fast float %2734, 5.000000e-01
  %2736 = fsub fast float %2731, %2733
  %2737 = fmul fast float %2736, 5.000000e-01
  %2738 = call float @dx.op.unary.f32(i32 6, float %2735)  ; FAbs(value)
  %2739 = fsub fast float 1.000000e+00, %2738
  %2740 = call float @dx.op.unary.f32(i32 6, float %2737)  ; FAbs(value)
  %2741 = fsub fast float %2739, %2740
  %2742 = call float @dx.op.dot3.f32(i32 55, float %2735, float %2737, float %2741, float %2735, float %2737, float %2741)  ; Dot3(ax,ay,az,bx,by,bz)
  %2743 = call float @dx.op.unary.f32(i32 25, float %2742)  ; Rsqrt(value)
  %2744 = fmul fast float %2735, %2743
  %2745 = fmul fast float %2737, %2743
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = and i32 %2747, 67108864
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2766, label %2750

; <label>:2750                                    ; preds = %2698
  %2751 = add i32 %60, 312
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = and i32 %2753, 65535
  %2755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2754)  ; LegacyF16ToF32(value)
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = and i32 %2757, 65535
  %2759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2758)  ; LegacyF16ToF32(value)
  %2760 = lshr i32 %2753, 16
  %2761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2760)  ; LegacyF16ToF32(value)
  %2762 = fsub fast float %2723, %2761
  %2763 = fmul fast float %2762, %2755
  %2764 = fadd fast float %2763, %2759
  %2765 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  br label %2766

; <label>:2766                                    ; preds = %2750, %2698
  %2767 = phi float [ %2765, %2750 ], [ %2723, %2698 ]
  %2768 = call float @dx.op.dot2.f32(i32 54, float %2744, float %2745, float %2187, float %2188)  ; Dot2(ax,ay,bx,by)
  %2769 = call float @dx.op.dot2.f32(i32 54, float %2744, float %2745, float %2189, float %2190)  ; Dot2(ax,ay,bx,by)
  br label %2770

; <label>:2770                                    ; preds = %2766, %2676
  %2771 = phi float [ %2767, %2766 ], [ 0x3FD6666660000000, %2676 ]
  %2772 = phi float [ %2768, %2766 ], [ 0.000000e+00, %2676 ]
  %2773 = phi float [ %2769, %2766 ], [ 0.000000e+00, %2676 ]
  %2774 = phi float [ %2710, %2766 ], [ 1.000000e+00, %2676 ]
  %2775 = add i32 %60, 192
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = lshr i32 %2777, 22
  %2779 = shl nuw nsw i32 %2778, 5
  %2780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2779)  ; LegacyF16ToF32(value)
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = and i32 %2782, 64
  %2784 = icmp eq i32 %2783, 0
  br i1 %2784, label %2818, label %2785

; <label>:2785                                    ; preds = %2770
  %2786 = add i32 %60, 448
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = add i32 %2788, 0
  %2790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2792 = extractvalue %dx.types.ResRet.i32 %2791, 0
  %2793 = and i32 %2792, 131072
  %2794 = icmp eq i32 %2793, 0
  %2795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2790, %dx.types.Handle %105, float %2283, float %2284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2796 = extractvalue %dx.types.ResRet.f32 %2795, 0
  %2797 = extractvalue %dx.types.ResRet.f32 %2795, 1
  %2798 = extractvalue %dx.types.ResRet.f32 %2795, 2
  %2799 = fmul fast float %2796, %359
  %2800 = fmul fast float %2797, %362
  %2801 = fmul fast float %2798, %365
  br i1 %2794, label %2808, label %2802

; <label>:2802                                    ; preds = %2785
  %2803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2804 = extractvalue %dx.types.CBufRet.f32 %2803, 0
  %2805 = fmul fast float %2804, %2799
  %2806 = fmul fast float %2804, %2800
  %2807 = fmul fast float %2804, %2801
  br label %2808

; <label>:2808                                    ; preds = %2802, %2785
  %2809 = phi float [ %2805, %2802 ], [ %2799, %2785 ]
  %2810 = phi float [ %2806, %2802 ], [ %2800, %2785 ]
  %2811 = phi float [ %2807, %2802 ], [ %2801, %2785 ]
  %2812 = fmul fast float %2809, %2780
  %2813 = select i1 %258, float %2812, float %2809
  %2814 = call float @dx.op.dot3.f32(i32 55, float %2813, float %2810, float %2811, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2815 = select i1 %258, float 0.000000e+00, float %2809
  %2816 = select i1 %258, float %2814, float %2810
  %2817 = select i1 %258, float 0.000000e+00, float %2811
  br label %2818

; <label>:2818                                    ; preds = %2808, %2770
  %2819 = phi float [ %2815, %2808 ], [ 0.000000e+00, %2770 ]
  %2820 = phi float [ %2816, %2808 ], [ 0.000000e+00, %2770 ]
  %2821 = phi float [ %2817, %2808 ], [ 0.000000e+00, %2770 ]
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = and i32 %2823, 10240
  %2825 = icmp eq i32 %2824, 0
  br i1 %2825, label %2870, label %2826

; <label>:2826                                    ; preds = %2818
  %2827 = add i32 %60, 512
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = add i32 %2829, 0
  %2831 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2830, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2832 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2831, %dx.types.Handle %106, float %2283, float %2284, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2833 = extractvalue %dx.types.ResRet.f32 %2832, 1
  %2834 = extractvalue %dx.types.ResRet.f32 %2832, 3
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 1048576
  %2838 = icmp ne i32 %2837, 0
  %2839 = and i32 %2836, 8192
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %2856, label %2841

; <label>:2841                                    ; preds = %2826
  %2842 = extractvalue %dx.types.ResRet.f32 %2832, 2
  %2843 = select i1 %2838, float %2842, float %2833
  %2844 = extractvalue %dx.types.ResRet.f32 %2832, 0
  %2845 = select i1 %2838, float %2844, float %2833
  %2846 = add i32 %60, 128
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = lshr i32 %2848, 16
  %2850 = and i32 %2849, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = fmul fast float %2851, 0x3F80101020000000
  %2853 = fmul fast float %2852, %2845
  %2854 = fmul fast float %2852, %2833
  %2855 = fmul fast float %2852, %2843
  br label %2856

; <label>:2856                                    ; preds = %2841, %2826
  %2857 = phi float [ %2853, %2841 ], [ 0.000000e+00, %2826 ]
  %2858 = phi float [ %2854, %2841 ], [ 0.000000e+00, %2826 ]
  %2859 = phi float [ %2855, %2841 ], [ 0.000000e+00, %2826 ]
  %2860 = and i32 %2836, 2048
  %2861 = icmp eq i32 %2860, 0
  br i1 %2861, label %2870, label %2862

; <label>:2862                                    ; preds = %2856
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = shl i32 %2864, 4
  %2866 = and i32 %2865, 32752
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = fmul fast float %2867, %2834
  %2869 = call float @dx.op.binary.f32(i32 35, float %2868, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2870

; <label>:2870                                    ; preds = %2862, %2856, %2818
  %2871 = phi float [ %2857, %2862 ], [ %2857, %2856 ], [ 0.000000e+00, %2818 ]
  %2872 = phi float [ %2858, %2862 ], [ %2858, %2856 ], [ 0.000000e+00, %2818 ]
  %2873 = phi float [ %2859, %2862 ], [ %2859, %2856 ], [ 0.000000e+00, %2818 ]
  %2874 = phi float [ %2869, %2862 ], [ 0x3F70101020000000, %2856 ], [ 0x3F70101020000000, %2818 ]
  %2875 = add i32 %60, 128
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = and i32 %2877, 255
  %2879 = uitofp i32 %2878 to float
  %2880 = lshr i32 %2877, 8
  %2881 = and i32 %2880, 255
  %2882 = uitofp i32 %2881 to float
  %2883 = call float @dx.op.dot3.f32(i32 55, float %2691, float %2692, float %2693, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2884 = fmul fast float %2882, %2883
  %2885 = fadd fast float %2884, %2879
  %2886 = fmul fast float %2885, 0x3F70101020000000
  %2887 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  br i1 %2175, label %2888, label %2896

; <label>:2888                                    ; preds = %2870
  %2889 = fsub fast float 1.000000e+00, %2471
  %2890 = fmul fast float %2889, %2163
  %2891 = fmul fast float %2889, %2164
  %2892 = fmul fast float %2889, %2165
  %2893 = fmul fast float %2889, %2160
  %2894 = fmul fast float %2889, %2161
  %2895 = fmul fast float %2889, %2162
  br label %2896

; <label>:2896                                    ; preds = %2888, %2870
  %2897 = phi float [ %2893, %2888 ], [ %2160, %2870 ]
  %2898 = phi float [ %2894, %2888 ], [ %2161, %2870 ]
  %2899 = phi float [ %2895, %2888 ], [ %2162, %2870 ]
  %2900 = phi float [ %2890, %2888 ], [ %2163, %2870 ]
  %2901 = phi float [ %2891, %2888 ], [ %2164, %2870 ]
  %2902 = phi float [ %2892, %2888 ], [ %2165, %2870 ]
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = and i32 %2904, 3
  %2906 = icmp eq i32 %2905, 3
  br i1 %2906, label %2985, label %2907

; <label>:2907                                    ; preds = %2896
  %2908 = and i32 %2904, 16
  %2909 = icmp ne i32 %2908, 0
  %2910 = select i1 %2909, float %2471, float 0.000000e+00
  %2911 = icmp eq i32 %2905, 0
  br i1 %2911, label %2912, label %2940

; <label>:2912                                    ; preds = %2907
  %2913 = and i32 %2904, 64
  %2914 = icmp ne i32 %2913, 0
  %2915 = select i1 %2914, float %2471, float 0.000000e+00
  %2916 = fsub fast float %2691, %2900
  %2917 = fsub fast float %2692, %2901
  %2918 = fsub fast float %2693, %2902
  %2919 = fmul fast float %2910, %2916
  %2920 = fmul fast float %2910, %2917
  %2921 = fmul fast float %2910, %2918
  %2922 = fadd fast float %2919, %2900
  %2923 = fadd fast float %2920, %2901
  %2924 = fadd fast float %2921, %2902
  %2925 = fsub fast float %2677, %2169
  %2926 = fmul fast float %2910, %2925
  %2927 = fadd fast float %2926, %2169
  %2928 = fsub fast float %2819, %2897
  %2929 = fsub fast float %2820, %2898
  %2930 = fsub fast float %2821, %2899
  %2931 = fmul fast float %2915, %2928
  %2932 = fmul fast float %2915, %2929
  %2933 = fmul fast float %2915, %2930
  %2934 = fadd fast float %2931, %2897
  %2935 = fadd fast float %2932, %2898
  %2936 = fadd fast float %2933, %2899
  %2937 = fsub fast float %2887, %2173
  %2938 = fmul fast float %2910, %2937
  %2939 = fadd fast float %2938, %2173
  br label %2985

; <label>:2940                                    ; preds = %2907
  %2941 = icmp eq i32 %2905, 1
  br i1 %2941, label %2942, label %2955

; <label>:2942                                    ; preds = %2940
  %2943 = fadd fast float %2691, -1.000000e+00
  %2944 = fadd fast float %2692, -1.000000e+00
  %2945 = fadd fast float %2693, -1.000000e+00
  %2946 = fmul fast float %2910, %2943
  %2947 = fmul fast float %2910, %2944
  %2948 = fmul fast float %2910, %2945
  %2949 = fadd fast float %2946, 1.000000e+00
  %2950 = fadd fast float %2947, 1.000000e+00
  %2951 = fadd fast float %2948, 1.000000e+00
  %2952 = fmul fast float %2949, %2900
  %2953 = fmul fast float %2950, %2901
  %2954 = fmul fast float %2951, %2902
  br label %2985

; <label>:2955                                    ; preds = %2940
  %2956 = icmp eq i32 %2905, 2
  br i1 %2956, label %2957, label %2985

; <label>:2957                                    ; preds = %2955
  %2958 = call float @dx.op.unary.f32(i32 24, float %2691)  ; Sqrt(value)
  %2959 = call float @dx.op.unary.f32(i32 24, float %2692)  ; Sqrt(value)
  %2960 = call float @dx.op.unary.f32(i32 24, float %2693)  ; Sqrt(value)
  %2961 = fadd fast float %2958, -5.000000e-01
  %2962 = fadd fast float %2959, -5.000000e-01
  %2963 = fadd fast float %2960, -5.000000e-01
  %2964 = fmul fast float %2961, %2910
  %2965 = fmul fast float %2962, %2910
  %2966 = fmul fast float %2963, %2910
  %2967 = fadd fast float %2964, 5.000000e-01
  %2968 = fadd fast float %2965, 5.000000e-01
  %2969 = fadd fast float %2966, 5.000000e-01
  %2970 = fmul fast float %2967, 2.000000e+00
  %2971 = fsub fast float 1.000000e+00, %2970
  %2972 = fmul fast float %2971, %2900
  %2973 = fadd fast float %2972, %2970
  %2974 = fmul fast float %2973, %2900
  %2975 = fmul fast float %2968, 2.000000e+00
  %2976 = fsub fast float 1.000000e+00, %2975
  %2977 = fmul fast float %2976, %2901
  %2978 = fadd fast float %2977, %2975
  %2979 = fmul fast float %2978, %2901
  %2980 = fmul fast float %2969, 2.000000e+00
  %2981 = fsub fast float 1.000000e+00, %2980
  %2982 = fmul fast float %2981, %2902
  %2983 = fadd fast float %2982, %2980
  %2984 = fmul fast float %2983, %2902
  br label %2985

; <label>:2985                                    ; preds = %2957, %2955, %2942, %2912, %2896
  %2986 = phi float [ %2897, %2896 ], [ %2897, %2957 ], [ %2897, %2955 ], [ %2897, %2942 ], [ %2934, %2912 ]
  %2987 = phi float [ %2898, %2896 ], [ %2898, %2957 ], [ %2898, %2955 ], [ %2898, %2942 ], [ %2935, %2912 ]
  %2988 = phi float [ %2899, %2896 ], [ %2899, %2957 ], [ %2899, %2955 ], [ %2899, %2942 ], [ %2936, %2912 ]
  %2989 = phi float [ %2900, %2896 ], [ %2974, %2957 ], [ %2900, %2955 ], [ %2952, %2942 ], [ %2922, %2912 ]
  %2990 = phi float [ %2901, %2896 ], [ %2979, %2957 ], [ %2901, %2955 ], [ %2953, %2942 ], [ %2923, %2912 ]
  %2991 = phi float [ %2902, %2896 ], [ %2984, %2957 ], [ %2902, %2955 ], [ %2954, %2942 ], [ %2924, %2912 ]
  %2992 = phi float [ %2169, %2896 ], [ %2169, %2957 ], [ %2169, %2955 ], [ %2169, %2942 ], [ %2927, %2912 ]
  %2993 = phi float [ %2173, %2896 ], [ %2173, %2957 ], [ %2173, %2955 ], [ %2173, %2942 ], [ %2939, %2912 ]
  %2994 = and i32 %2904, 12
  %2995 = icmp eq i32 %2994, 12
  br i1 %2995, label %3102, label %2996

; <label>:2996                                    ; preds = %2985
  %2997 = and i32 %2904, 2097184
  %2998 = icmp eq i32 %2997, 2097184
  %2999 = select i1 %2998, float %2471, float 0.000000e+00
  %3000 = and i32 %2904, 4194336
  %3001 = icmp eq i32 %3000, 4194336
  %3002 = select i1 %3001, float %2471, float 0.000000e+00
  %3003 = and i32 %2904, 8388640
  %3004 = icmp eq i32 %3003, 8388640
  %3005 = select i1 %3004, float %2471, float 0.000000e+00
  %3006 = and i32 %2904, 2048
  %3007 = icmp ne i32 %3006, 0
  %3008 = select i1 %3007, float %2471, float 0.000000e+00
  %3009 = and i32 %2904, 8192
  %3010 = icmp ne i32 %3009, 0
  %3011 = select i1 %3010, float %2471, float 0.000000e+00
  %3012 = icmp eq i32 %2994, 0
  br i1 %3012, label %3013, label %3038

; <label>:3013                                    ; preds = %2996
  %3014 = fsub fast float %2772, %2158
  %3015 = fsub fast float %2773, %2159
  %3016 = fmul fast float %2999, %3014
  %3017 = fmul fast float %2999, %3015
  %3018 = fadd fast float %3016, %2158
  %3019 = fadd fast float %3017, %2159
  %3020 = fsub fast float %2774, %2171
  %3021 = fmul fast float %3002, %3020
  %3022 = fadd fast float %3021, %2171
  %3023 = fsub fast float %2771, %2170
  %3024 = fmul fast float %3005, %3023
  %3025 = fadd fast float %3024, %2170
  %3026 = fsub fast float %2874, %2172
  %3027 = fmul fast float %3008, %3026
  %3028 = fadd fast float %3027, %2172
  %3029 = fsub fast float %2871, %2166
  %3030 = fsub fast float %2872, %2167
  %3031 = fsub fast float %2873, %2168
  %3032 = fmul fast float %3011, %3029
  %3033 = fmul fast float %3011, %3030
  %3034 = fmul fast float %3011, %3031
  %3035 = fadd fast float %3032, %2166
  %3036 = fadd fast float %3033, %2167
  %3037 = fadd fast float %3034, %2168
  br label %3102

; <label>:3038                                    ; preds = %2996
  %3039 = icmp eq i32 %2994, 4
  br i1 %3039, label %3040, label %3080

; <label>:3040                                    ; preds = %3038
  %3041 = fmul fast float %2999, %2772
  %3042 = fmul fast float %2999, %2773
  %3043 = fadd fast float %3041, %2158
  %3044 = fadd fast float %3042, %2159
  %3045 = call float @dx.op.binary.f32(i32 36, float %2171, float %2774)  ; FMin(a,b)
  %3046 = fsub fast float %3045, %2171
  %3047 = fmul fast float %3046, %3002
  %3048 = fadd fast float %3047, %2171
  %3049 = fadd fast float %2771, %2170
  %3050 = fmul fast float %3049, 0x3FF337FAE0000000
  %3051 = fmul fast float %2170, %2170
  %3052 = fmul fast float %2771, %2771
  %3053 = fadd fast float %3052, %3051
  %3054 = fmul fast float %3053, 0x3FE5152B00000000
  %3055 = fmul fast float %2170, 0xBFCC1F85E0000000
  %3056 = fmul fast float %3055, %2771
  %3057 = fadd fast float %3056, 0xBFE1363700000000
  %3058 = fadd fast float %3057, %3050
  %3059 = fsub fast float %3058, %3054
  %3060 = fmul fast float %3049, 0x3FBA6F0D00000000
  %3061 = fmul fast float %3053, 0x3FD0432880000000
  %3062 = fmul fast float %2170, 0xBFEF110800000000
  %3063 = fmul fast float %3062, %2771
  %3064 = fadd fast float %3063, 1.000000e+00
  %3065 = fsub fast float %3064, %3060
  %3066 = fadd fast float %3065, %3061
  %3067 = fdiv fast float %3059, %3066
  %3068 = call float @dx.op.unary.f32(i32 7, float %3067)  ; Saturate(value)
  %3069 = fsub fast float %3068, %2170
  %3070 = fmul fast float %3069, %3005
  %3071 = fadd fast float %3070, %2170
  %3072 = fmul fast float %3008, %2874
  %3073 = fadd fast float %3072, %2172
  %3074 = fmul fast float %3011, %2871
  %3075 = fmul fast float %3011, %2872
  %3076 = fmul fast float %3011, %2873
  %3077 = fadd fast float %3074, %2166
  %3078 = fadd fast float %3075, %2167
  %3079 = fadd fast float %3076, %2168
  br label %3102

; <label>:3080                                    ; preds = %3038
  %3081 = icmp eq i32 %2994, 8
  br i1 %3081, label %3082, label %3102

; <label>:3082                                    ; preds = %3080
  %3083 = fmul fast float %2999, %2772
  %3084 = fmul fast float %2999, %2773
  %3085 = fadd fast float %3083, %2158
  %3086 = fadd fast float %3084, %2159
  %3087 = call float @dx.op.binary.f32(i32 36, float %2171, float %2774)  ; FMin(a,b)
  %3088 = fsub fast float %3087, %2171
  %3089 = fmul fast float %3088, %3002
  %3090 = fadd fast float %3089, %2171
  %3091 = fsub fast float %2771, %2170
  %3092 = fmul fast float %3005, %3091
  %3093 = fadd fast float %3092, %2170
  %3094 = fmul fast float %3008, %2874
  %3095 = fadd fast float %3094, %2172
  %3096 = fmul fast float %3011, %2871
  %3097 = fmul fast float %3011, %2872
  %3098 = fmul fast float %3011, %2873
  %3099 = fadd fast float %3096, %2166
  %3100 = fadd fast float %3097, %2167
  %3101 = fadd fast float %3098, %2168
  br label %3102

; <label>:3102                                    ; preds = %3082, %3080, %3040, %3013, %2985, %2470, %2174, %2157
  %3103 = phi float [ %2158, %2985 ], [ %2158, %2470 ], [ %2158, %2157 ], [ %3085, %3082 ], [ %2158, %3080 ], [ %3043, %3040 ], [ %3018, %3013 ], [ %2158, %2174 ]
  %3104 = phi float [ %2159, %2985 ], [ %2159, %2470 ], [ %2159, %2157 ], [ %3086, %3082 ], [ %2159, %3080 ], [ %3044, %3040 ], [ %3019, %3013 ], [ %2159, %2174 ]
  %3105 = phi float [ %2986, %2985 ], [ %2160, %2470 ], [ %2160, %2157 ], [ %2986, %3082 ], [ %2986, %3080 ], [ %2986, %3040 ], [ %2986, %3013 ], [ %2160, %2174 ]
  %3106 = phi float [ %2987, %2985 ], [ %2161, %2470 ], [ %2161, %2157 ], [ %2987, %3082 ], [ %2987, %3080 ], [ %2987, %3040 ], [ %2987, %3013 ], [ %2161, %2174 ]
  %3107 = phi float [ %2988, %2985 ], [ %2162, %2470 ], [ %2162, %2157 ], [ %2988, %3082 ], [ %2988, %3080 ], [ %2988, %3040 ], [ %2988, %3013 ], [ %2162, %2174 ]
  %3108 = phi float [ %2989, %2985 ], [ %2163, %2470 ], [ %2163, %2157 ], [ %2989, %3082 ], [ %2989, %3080 ], [ %2989, %3040 ], [ %2989, %3013 ], [ %2163, %2174 ]
  %3109 = phi float [ %2990, %2985 ], [ %2164, %2470 ], [ %2164, %2157 ], [ %2990, %3082 ], [ %2990, %3080 ], [ %2990, %3040 ], [ %2990, %3013 ], [ %2164, %2174 ]
  %3110 = phi float [ %2991, %2985 ], [ %2165, %2470 ], [ %2165, %2157 ], [ %2991, %3082 ], [ %2991, %3080 ], [ %2991, %3040 ], [ %2991, %3013 ], [ %2165, %2174 ]
  %3111 = phi float [ %2166, %2985 ], [ %2166, %2470 ], [ %2166, %2157 ], [ %3099, %3082 ], [ %2166, %3080 ], [ %3077, %3040 ], [ %3035, %3013 ], [ %2166, %2174 ]
  %3112 = phi float [ %2167, %2985 ], [ %2167, %2470 ], [ %2167, %2157 ], [ %3100, %3082 ], [ %2167, %3080 ], [ %3078, %3040 ], [ %3036, %3013 ], [ %2167, %2174 ]
  %3113 = phi float [ %2168, %2985 ], [ %2168, %2470 ], [ %2168, %2157 ], [ %3101, %3082 ], [ %2168, %3080 ], [ %3079, %3040 ], [ %3037, %3013 ], [ %2168, %2174 ]
  %3114 = phi float [ %2992, %2985 ], [ %2169, %2470 ], [ %2169, %2157 ], [ %2992, %3082 ], [ %2992, %3080 ], [ %2992, %3040 ], [ %2992, %3013 ], [ %2169, %2174 ]
  %3115 = phi float [ %2170, %2985 ], [ %2170, %2470 ], [ %2170, %2157 ], [ %3093, %3082 ], [ %2170, %3080 ], [ %3071, %3040 ], [ %3025, %3013 ], [ %2170, %2174 ]
  %3116 = phi float [ %2171, %2985 ], [ %2171, %2470 ], [ %2171, %2157 ], [ %3090, %3082 ], [ %2171, %3080 ], [ %3048, %3040 ], [ %3022, %3013 ], [ %2171, %2174 ]
  %3117 = phi float [ %2172, %2985 ], [ %2172, %2470 ], [ %2172, %2157 ], [ %3095, %3082 ], [ %2172, %3080 ], [ %3073, %3040 ], [ %3028, %3013 ], [ %2172, %2174 ]
  %3118 = phi float [ %2993, %2985 ], [ %2173, %2470 ], [ %2173, %2157 ], [ %2993, %3082 ], [ %2993, %3080 ], [ %2993, %3040 ], [ %2993, %3013 ], [ %2173, %2174 ]
  br i1 %446, label %4047, label %3119

; <label>:3119                                    ; preds = %3102
  %3120 = icmp ult i32 %500, 4
  %3121 = add i32 %60, 72
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = add i32 %60, 76
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = or i32 %3126, %3123
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %4047, label %3129

; <label>:3129                                    ; preds = %3119
  %3130 = and i32 %3123, 262144
  %3131 = icmp ne i32 %3130, 0
  %3132 = select i1 %3131, float %63, float 1.000000e+00
  %3133 = select i1 %3131, float %64, float 0.000000e+00
  %3134 = select i1 %3131, float %65, float 0.000000e+00
  %3135 = select i1 %3131, float %66, float 1.000000e+00
  %3136 = select i1 %3131, float %67, float %88
  %3137 = select i1 %3131, float %68, float %89
  %3138 = add i32 %60, 332
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = lshr i32 %3140, 16
  %3142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3141)  ; LegacyF16ToF32(value)
  %3143 = fmul fast float %3142, 0x3F50624DE0000000
  %3144 = add i32 %60, 136
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = lshr i32 %3146, 16
  %3148 = and i32 %3147, 255
  %3149 = lshr i32 %3146, 24
  %3150 = add i32 %60, 340
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = and i32 %3152, 65535
  %3154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3153)  ; LegacyF16ToF32(value)
  %3155 = lshr i32 %3152, 16
  %3156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3155)  ; LegacyF16ToF32(value)
  %3157 = add i32 %60, 80
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = lshr i32 %3159, 22
  %3161 = shl nuw nsw i32 %3160, 5
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = shl i32 %3159, 4
  %3164 = and i32 %3163, 32752
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = lshr i32 %3159, 7
  %3167 = and i32 %3166, 32752
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3170 = extractvalue %dx.types.CBufRet.f32 %3169, 3
  %3171 = fmul fast float %3170, 1.000000e+03
  %3172 = fmul fast float %436, %3171
  %3173 = call float @dx.op.unary.f32(i32 22, float %3172)  ; Frc(value)
  %3174 = fadd fast float %3173, %426
  %3175 = fmul fast float %437, %3171
  %3176 = call float @dx.op.unary.f32(i32 22, float %3175)  ; Frc(value)
  %3177 = fadd fast float %3176, %428
  %3178 = fmul fast float %3143, %3171
  %3179 = call float @dx.op.unary.f32(i32 22, float %3178)  ; Frc(value)
  %3180 = fmul fast float %3179, 0x401921FB60000000
  %3181 = fadd fast float %3180, %3162
  %3182 = call float @dx.op.unary.f32(i32 13, float %3181)  ; Sin(value)
  %3183 = call float @dx.op.unary.f32(i32 12, float %3181)  ; Cos(value)
  %3184 = fsub fast float -0.000000e+00, %3182
  %3185 = fadd fast float %3136, -5.000000e-01
  %3186 = fadd fast float %3137, -5.000000e-01
  %3187 = fmul fast float %3154, %3185
  %3188 = fmul fast float %3156, %3186
  %3189 = fadd fast float %3187, 5.000000e-01
  %3190 = fadd fast float %3188, 5.000000e-01
  %3191 = fmul fast float %3165, %3189
  %3192 = fmul fast float %3168, %3190
  %3193 = fmul fast float %3183, %3191
  %3194 = call float @dx.op.tertiary.f32(i32 46, float %3184, float %3192, float %3193)  ; FMad(a,b,c)
  %3195 = fmul fast float %3182, %3191
  %3196 = call float @dx.op.tertiary.f32(i32 46, float %3183, float %3192, float %3195)  ; FMad(a,b,c)
  %3197 = fadd fast float %3174, %3194
  %3198 = fadd fast float %3177, %3196
  %3199 = icmp ugt i32 %3148, 1
  %3200 = icmp ugt i32 %3146, 33554431
  %3201 = or i1 %3200, %3199
  br i1 %3201, label %3202, label %3227

; <label>:3202                                    ; preds = %3129
  %3203 = add i32 %60, 276
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = lshr i32 %3205, 16
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206)  ; LegacyF16ToF32(value)
  %3208 = fmul fast float %3170, %3207
  %3209 = call float @dx.op.unary.f32(i32 22, float %3208)  ; Frc(value)
  %3210 = mul nuw nsw i32 %3148, %3149
  %3211 = uitofp i32 %3210 to float
  %3212 = fmul fast float %3209, %3211
  %3213 = call float @dx.op.unary.f32(i32 27, float %3212)  ; Round_ni(value)
  %3214 = fptoui float %3213 to i32
  %3215 = urem i32 %3214, %3148
  %3216 = udiv i32 %3214, %3149
  %3217 = call float @dx.op.unary.f32(i32 22, float %3197)  ; Frc(value)
  %3218 = call float @dx.op.unary.f32(i32 22, float %3198)  ; Frc(value)
  %3219 = uitofp i32 %3215 to float
  %3220 = uitofp i32 %3216 to float
  %3221 = fadd fast float %3217, %3219
  %3222 = fadd fast float %3218, %3220
  %3223 = uitofp i32 %3148 to float
  %3224 = uitofp i32 %3149 to float
  %3225 = fdiv fast float %3221, %3223
  %3226 = fdiv fast float %3222, %3224
  br label %3227

; <label>:3227                                    ; preds = %3202, %3129
  %3228 = phi float [ %3225, %3202 ], [ %3197, %3129 ]
  %3229 = phi float [ %3226, %3202 ], [ %3198, %3129 ]
  %3230 = and i32 %3123, 16777216
  %3231 = icmp eq i32 %3230, 0
  br i1 %3231, label %3341, label %3232

; <label>:3232                                    ; preds = %3227
  %3233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3234 = extractvalue %dx.types.CBufRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.CBufRet.f32 %3233, 1
  %3236 = extractvalue %dx.types.CBufRet.f32 %3233, 2
  %3237 = fadd fast float %3234, %164
  %3238 = fadd fast float %3235, %165
  %3239 = fadd fast float %3236, %166
  %3240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3241 = extractvalue %dx.types.CBufRet.f32 %3240, 0
  %3242 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3243 = icmp eq i32 %61, 65535
  br i1 %3243, label %3338, label %3244

; <label>:3244                                    ; preds = %3232
  %3245 = lshr i32 %61, 1
  %3246 = shl i32 %3245, 2
  %3247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3246, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.i32 %3247, 0
  %3249 = and i32 %61, 1
  %3250 = icmp ne i32 %3249, 0
  %3251 = lshr i32 %3248, 16
  %3252 = and i32 %3248, 65535
  %3253 = select i1 %3250, i32 %3251, i32 %3252
  %3254 = icmp eq i32 %3253, 65535
  br i1 %3254, label %3334, label %3255

; <label>:3255                                    ; preds = %3244
  %3256 = mul nuw nsw i32 %3253, 40
  %3257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.f32 %3257, 0
  %3259 = extractvalue %dx.types.ResRet.f32 %3257, 1
  %3260 = extractvalue %dx.types.ResRet.f32 %3257, 2
  %3261 = add nuw nsw i32 %3256, 12
  %3262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.ResRet.f32 %3262, 1
  %3265 = extractvalue %dx.types.ResRet.f32 %3262, 2
  %3266 = add nuw nsw i32 %3256, 24
  %3267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  %3269 = extractvalue %dx.types.ResRet.f32 %3267, 1
  %3270 = extractvalue %dx.types.ResRet.f32 %3267, 2
  %3271 = add nuw nsw i32 %3256, 36
  %3272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.f32 %3272, 0
  %3274 = fsub fast float %3237, %3258
  %3275 = fsub fast float %3238, %3259
  %3276 = fsub fast float %3239, %3260
  %3277 = fmul fast float %3273, %3274
  %3278 = fmul fast float %3273, %3275
  %3279 = fmul fast float %3273, %3276
  %3280 = call float @dx.op.unary.f32(i32 27, float %3277)  ; Round_ni(value)
  %3281 = call float @dx.op.unary.f32(i32 27, float %3278)  ; Round_ni(value)
  %3282 = call float @dx.op.unary.f32(i32 27, float %3279)  ; Round_ni(value)
  %3283 = fadd fast float %3280, 5.000000e-01
  %3284 = fadd fast float %3281, 5.000000e-01
  %3285 = fadd fast float %3282, 5.000000e-01
  %3286 = fmul fast float %3283, %3263
  %3287 = fmul fast float %3284, %3264
  %3288 = fmul fast float %3285, %3265
  %3289 = shl i32 %61, 2
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = add i32 %3291, 0
  %3293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3294 = call float @dx.op.unary.f32(i32 22, float %3286)  ; Frc(value)
  %3295 = call float @dx.op.unary.f32(i32 22, float %3287)  ; Frc(value)
  %3296 = call float @dx.op.unary.f32(i32 22, float %3288)  ; Frc(value)
  %3297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3293, %dx.types.Handle %55, float %3294, float %3295, float %3296, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3298 = extractvalue %dx.types.ResRet.f32 %3297, 0
  %3299 = extractvalue %dx.types.ResRet.f32 %3297, 1
  %3300 = extractvalue %dx.types.ResRet.f32 %3297, 2
  %3301 = fmul fast float %3298, 1.023000e+03
  %3302 = fmul fast float %3299, 1.023000e+03
  %3303 = fmul fast float %3300, 1.023000e+03
  %3304 = fadd fast float %3301, 5.000000e-01
  %3305 = fadd fast float %3302, 5.000000e-01
  %3306 = fadd fast float %3303, 5.000000e-01
  %3307 = call float @dx.op.unary.f32(i32 27, float %3304)  ; Round_ni(value)
  %3308 = call float @dx.op.unary.f32(i32 27, float %3305)  ; Round_ni(value)
  %3309 = call float @dx.op.unary.f32(i32 27, float %3306)  ; Round_ni(value)
  %3310 = fsub fast float %3277, %3280
  %3311 = fsub fast float %3278, %3281
  %3312 = fsub fast float %3279, %3282
  %3313 = fmul fast float %3310, 7.500000e-01
  %3314 = fmul fast float %3311, 7.500000e-01
  %3315 = fmul fast float %3312, 7.500000e-01
  %3316 = fadd fast float %3280, 1.250000e-01
  %3317 = fadd fast float %3316, %3313
  %3318 = fadd fast float %3317, %3307
  %3319 = fadd fast float %3281, 1.250000e-01
  %3320 = fadd fast float %3319, %3314
  %3321 = fadd fast float %3320, %3308
  %3322 = fadd fast float %3282, 1.250000e-01
  %3323 = fadd fast float %3322, %3315
  %3324 = fadd fast float %3323, %3309
  %3325 = fmul fast float %3318, %3268
  %3326 = fmul fast float %3321, %3269
  %3327 = fmul fast float %3324, %3270
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = add i32 %3329, 0
  %3331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3331, %dx.types.Handle %53, float %3325, float %3326, float %3327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3333 = extractvalue %dx.types.ResRet.f32 %3332, 0
  br label %3334

; <label>:3334                                    ; preds = %3255, %3244
  %3335 = phi float [ %3333, %3255 ], [ -1.000000e+00, %3244 ]
  %3336 = fadd fast float %3335, %3242
  %3337 = call float @dx.op.unary.f32(i32 7, float %3336)  ; Saturate(value)
  br label %3338

; <label>:3338                                    ; preds = %3334, %3232
  %3339 = phi float [ %3337, %3334 ], [ %3242, %3232 ]
  %3340 = fmul fast float %3339, %495
  br label %3341

; <label>:3341                                    ; preds = %3338, %3227
  %3342 = phi float [ %3340, %3338 ], [ %495, %3227 ]
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 256
  %3346 = icmp eq i32 %3345, 0
  br i1 %3346, label %3393, label %3347

; <label>:3347                                    ; preds = %3341
  %3348 = add i32 %60, 484
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = add i32 %3350, 0
  %3352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3352, %dx.types.Handle %106, float %3228, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3355 = add i32 %60, 148
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = shl i32 %3357, 4
  %3359 = and i32 %3358, 32752
  %3360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3359)  ; LegacyF16ToF32(value)
  %3361 = lshr i32 %3357, 7
  %3362 = and i32 %3361, 32752
  %3363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3362)  ; LegacyF16ToF32(value)
  %3364 = fsub fast float 1.000000e+00, %3342
  %3365 = call float @dx.op.binary.f32(i32 35, float %3364, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3366 = bitcast float %3342 to i32
  %3367 = sitofp i32 %3366 to float
  %3368 = fadd fast float %3367, 0xC1CFBF8940000000
  %3369 = fmul fast float %3363, %3368
  %3370 = fadd fast float %3369, 0x41CFBF8940000000
  %3371 = fptosi float %3370 to i32
  %3372 = bitcast i32 %3371 to float
  %3373 = bitcast float %3365 to i32
  %3374 = sitofp i32 %3373 to float
  %3375 = fadd fast float %3374, 0xC1CFBF8940000000
  %3376 = fmul fast float %3375, %3363
  %3377 = fadd fast float %3376, 0x41CFBF8940000000
  %3378 = fptosi float %3377 to i32
  %3379 = bitcast i32 %3378 to float
  %3380 = fmul fast float %3372, %3360
  %3381 = fmul fast float %3379, %3360
  %3382 = fsub fast float %3365, %3380
  %3383 = fadd fast float %3381, %3365
  %3384 = call float @dx.op.unary.f32(i32 7, float %3382)  ; Saturate(value)
  %3385 = call float @dx.op.unary.f32(i32 7, float %3383)  ; Saturate(value)
  %3386 = fsub fast float %3354, %3384
  %3387 = fsub fast float %3385, %3384
  %3388 = bitcast float %3387 to i32
  %3389 = sub nsw i32 2129859010, %3388
  %3390 = bitcast i32 %3389 to float
  %3391 = fmul fast float %3390, %3386
  %3392 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  br label %3393

; <label>:3393                                    ; preds = %3347, %3341
  %3394 = phi float [ %3392, %3347 ], [ %3342, %3341 ]
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 128
  %3398 = icmp eq i32 %3397, 0
  br i1 %3398, label %3415, label %3399

; <label>:3399                                    ; preds = %3393
  %3400 = add i32 %60, 468
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = add i32 %3402, 0
  %3404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3404, %dx.types.Handle %106, float %3228, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = and i32 %3408, 524288
  %3410 = icmp ne i32 %3409, 0
  %3411 = fcmp fast ogt float %3406, 0x3FE0101020000000
  %3412 = select i1 %3411, float 1.000000e+00, float 0.000000e+00
  %3413 = select i1 %3410, float %3412, float %3406
  %3414 = fmul fast float %3413, %3394
  br label %3415

; <label>:3415                                    ; preds = %3399, %3393
  %3416 = phi float [ %3414, %3399 ], [ %3394, %3393 ]
  %3417 = fcmp fast ult float %3416, 0x3F70101020000000
  br i1 %3417, label %4047, label %3418

; <label>:3418                                    ; preds = %3415
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = and i32 %3420, 16
  %3422 = icmp eq i32 %3421, 0
  br i1 %3422, label %3621, label %3423

; <label>:3423                                    ; preds = %3418
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = add i32 %60, 420
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = add i32 %3428, 0
  %3430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3430, %dx.types.Handle %105, float %3228, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3432 = extractvalue %dx.types.ResRet.f32 %3431, 0
  %3433 = extractvalue %dx.types.ResRet.f32 %3431, 1
  %3434 = extractvalue %dx.types.ResRet.f32 %3431, 2
  %3435 = extractvalue %dx.types.ResRet.f32 %3431, 3
  %3436 = and i32 %3425, 255
  %3437 = uitofp i32 %3436 to float
  %3438 = lshr i32 %3425, 8
  %3439 = and i32 %3438, 255
  %3440 = uitofp i32 %3439 to float
  %3441 = fmul fast float %3435, %3437
  %3442 = fadd fast float %3441, %3440
  %3443 = fmul fast float %3442, 0x3F70101000000000
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, 512
  %3447 = icmp eq i32 %3446, 0
  br i1 %3447, label %3456, label %3448

; <label>:3448                                    ; preds = %3423
  %3449 = add i32 %60, 500
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = add i32 %3451, 0
  %3453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3453, %dx.types.Handle %106, float %3228, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  br label %3456

; <label>:3456                                    ; preds = %3448, %3423
  %3457 = phi float [ %3455, %3448 ], [ 1.000000e+00, %3423 ]
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 33554432
  %3461 = icmp eq i32 %3460, 0
  br i1 %3461, label %3568, label %3462

; <label>:3462                                    ; preds = %3456
  %3463 = add i32 %60, 272
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = and i32 %3465, 65535
  %3467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3466)  ; LegacyF16ToF32(value)
  %3468 = lshr i32 %3465, 16
  %3469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3468)  ; LegacyF16ToF32(value)
  %3470 = add i32 %60, 276
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = and i32 %3472, 65535
  %3474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3473)  ; LegacyF16ToF32(value)
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = lshr i32 %3476, 24
  %3478 = uitofp i32 %3477 to float
  %3479 = fmul fast float %3478, 0x3F70101020000000
  %3480 = and i32 %3476, 255
  %3481 = uitofp i32 %3480 to float
  %3482 = fmul fast float %3481, 0x3F70101020000000
  %3483 = lshr i32 %3476, 8
  %3484 = and i32 %3483, 255
  %3485 = uitofp i32 %3484 to float
  %3486 = fmul fast float %3485, 0x3F70101020000000
  %3487 = lshr i32 %3476, 16
  %3488 = and i32 %3487, 255
  %3489 = uitofp i32 %3488 to float
  %3490 = fmul fast float %3489, 0x3F70101020000000
  %3491 = add i32 %60, 268
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = lshr i32 %3493, 24
  %3495 = uitofp i32 %3494 to float
  %3496 = fmul fast float %3495, 0x3F70101020000000
  %3497 = and i32 %3493, 255
  %3498 = uitofp i32 %3497 to float
  %3499 = fmul fast float %3498, 0x3F70101020000000
  %3500 = lshr i32 %3493, 8
  %3501 = and i32 %3500, 255
  %3502 = uitofp i32 %3501 to float
  %3503 = fmul fast float %3502, 0x3F70101020000000
  %3504 = lshr i32 %3493, 16
  %3505 = and i32 %3504, 255
  %3506 = uitofp i32 %3505 to float
  %3507 = fmul fast float %3506, 0x3F70101020000000
  %3508 = bitcast float %3432 to i32
  %3509 = ashr i32 %3508, 1
  %3510 = sub nsw i32 1597463174, %3509
  %3511 = bitcast i32 %3510 to float
  %3512 = fmul fast float %3432, 5.000000e-01
  %3513 = fmul fast float %3511, %3511
  %3514 = fmul fast float %3513, %3512
  %3515 = fsub fast float 1.500000e+00, %3514
  %3516 = fmul fast float %3511, %3432
  %3517 = fmul fast float %3516, %3515
  %3518 = bitcast float %3433 to i32
  %3519 = ashr i32 %3518, 1
  %3520 = sub nsw i32 1597463174, %3519
  %3521 = bitcast i32 %3520 to float
  %3522 = fmul fast float %3433, 5.000000e-01
  %3523 = fmul fast float %3521, %3521
  %3524 = fmul fast float %3523, %3522
  %3525 = fsub fast float 1.500000e+00, %3524
  %3526 = fmul fast float %3521, %3433
  %3527 = fmul fast float %3526, %3525
  %3528 = bitcast float %3434 to i32
  %3529 = ashr i32 %3528, 1
  %3530 = sub nsw i32 1597463174, %3529
  %3531 = bitcast i32 %3530 to float
  %3532 = fmul fast float %3434, 5.000000e-01
  %3533 = fmul fast float %3531, %3531
  %3534 = fmul fast float %3533, %3532
  %3535 = fsub fast float 1.500000e+00, %3534
  %3536 = fmul fast float %3531, %3434
  %3537 = fmul fast float %3536, %3535
  %3538 = fsub fast float %3517, %3499
  %3539 = fsub fast float %3527, %3503
  %3540 = fsub fast float %3537, %3507
  %3541 = fmul fast float %3538, %3467
  %3542 = fmul fast float %3539, %3469
  %3543 = fmul fast float %3540, %3474
  %3544 = fadd fast float %3541, %3482
  %3545 = fadd fast float %3542, %3486
  %3546 = fadd fast float %3543, %3490
  %3547 = call float @dx.op.unary.f32(i32 7, float %3544)  ; Saturate(value)
  %3548 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  %3549 = call float @dx.op.unary.f32(i32 7, float %3546)  ; Saturate(value)
  %3550 = fmul fast float %3547, %3547
  %3551 = fmul fast float %3548, %3548
  %3552 = fmul fast float %3549, %3549
  %3553 = fsub fast float %3550, %3432
  %3554 = fsub fast float %3551, %3433
  %3555 = fsub fast float %3552, %3434
  %3556 = fmul fast float %3553, %3457
  %3557 = fmul fast float %3554, %3457
  %3558 = fmul fast float %3555, %3457
  %3559 = fadd fast float %3556, %3432
  %3560 = fadd fast float %3557, %3433
  %3561 = fadd fast float %3558, %3434
  %3562 = fadd fast float %3479, %3443
  %3563 = fsub fast float %3562, %3496
  %3564 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3565 = fsub fast float %3564, %3443
  %3566 = fmul fast float %3565, %3457
  %3567 = fadd fast float %3566, %3443
  br label %3621

; <label>:3568                                    ; preds = %3456
  %3569 = and i32 %3459, 134217728
  %3570 = icmp eq i32 %3569, 0
  br i1 %3570, label %3605, label %3571

; <label>:3571                                    ; preds = %3568
  %3572 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %3573 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %3574 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %3575 = fadd fast float %3572, -5.000000e-01
  %3576 = fadd fast float %3573, -5.000000e-01
  %3577 = fadd fast float %3574, -5.000000e-01
  %3578 = fmul fast float %3575, %3457
  %3579 = fmul fast float %3576, %3457
  %3580 = fmul fast float %3577, %3457
  %3581 = fadd fast float %3578, 5.000000e-01
  %3582 = fadd fast float %3579, 5.000000e-01
  %3583 = fadd fast float %3580, 5.000000e-01
  %3584 = call float @dx.op.unary.f32(i32 24, float %3432)  ; Sqrt(value)
  %3585 = call float @dx.op.unary.f32(i32 24, float %3433)  ; Sqrt(value)
  %3586 = call float @dx.op.unary.f32(i32 24, float %3434)  ; Sqrt(value)
  %3587 = fmul fast float %3581, 2.000000e+00
  %3588 = fsub fast float 1.000000e+00, %3587
  %3589 = fmul fast float %3588, %3584
  %3590 = fadd fast float %3589, %3587
  %3591 = fmul fast float %3590, %3584
  %3592 = fmul fast float %3582, 2.000000e+00
  %3593 = fsub fast float 1.000000e+00, %3592
  %3594 = fmul fast float %3593, %3585
  %3595 = fadd fast float %3594, %3592
  %3596 = fmul fast float %3595, %3585
  %3597 = fmul fast float %3583, 2.000000e+00
  %3598 = fsub fast float 1.000000e+00, %3597
  %3599 = fmul fast float %3598, %3586
  %3600 = fadd fast float %3599, %3597
  %3601 = fmul fast float %3600, %3586
  %3602 = fmul fast float %3591, %3591
  %3603 = fmul fast float %3596, %3596
  %3604 = fmul fast float %3601, %3601
  br label %3621

; <label>:3605                                    ; preds = %3568
  %3606 = fmul fast float %413, %413
  %3607 = fmul fast float %417, %417
  %3608 = fmul fast float %421, %421
  %3609 = fadd fast float %3606, -1.000000e+00
  %3610 = fadd fast float %3607, -1.000000e+00
  %3611 = fadd fast float %3608, -1.000000e+00
  %3612 = fmul fast float %3457, %3609
  %3613 = fmul fast float %3457, %3610
  %3614 = fmul fast float %3457, %3611
  %3615 = fadd fast float %3612, 1.000000e+00
  %3616 = fadd fast float %3613, 1.000000e+00
  %3617 = fadd fast float %3614, 1.000000e+00
  %3618 = fmul fast float %3615, %3432
  %3619 = fmul fast float %3616, %3433
  %3620 = fmul fast float %3617, %3434
  br label %3621

; <label>:3621                                    ; preds = %3605, %3571, %3462, %3418
  %3622 = phi float [ %3567, %3462 ], [ %3443, %3571 ], [ %3443, %3605 ], [ 0x3FA23C0BE0000000, %3418 ]
  %3623 = phi float [ %3559, %3462 ], [ %3602, %3571 ], [ %3618, %3605 ], [ 1.000000e+00, %3418 ]
  %3624 = phi float [ %3560, %3462 ], [ %3603, %3571 ], [ %3619, %3605 ], [ 1.000000e+00, %3418 ]
  %3625 = phi float [ %3561, %3462 ], [ %3604, %3571 ], [ %3620, %3605 ], [ 1.000000e+00, %3418 ]
  %3626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.i32 %3626, 1
  %3628 = and i32 %3627, 1
  %3629 = icmp ne i32 %3628, 0
  %3630 = add i32 %60, 356
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = and i32 %3632, 32
  %3634 = icmp ne i32 %3633, 0
  %3635 = and i1 %3629, %3634
  %3636 = select i1 %3635, float 1.000000e+00, float %3623
  %3637 = select i1 %3635, float 0x3FD3333340000000, float %3624
  %3638 = select i1 %3635, float 0x3FD3333340000000, float %3625
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = and i32 %3640, 32
  %3642 = icmp eq i32 %3641, 0
  br i1 %3642, label %3715, label %3643

; <label>:3643                                    ; preds = %3621
  %3644 = add i32 %60, 140
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = add i32 %60, 436
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = add i32 %3649, 0
  %3651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3651, %dx.types.Handle %105, float %3228, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  %3657 = and i32 %3646, 255
  %3658 = uitofp i32 %3657 to float
  %3659 = lshr i32 %3646, 8
  %3660 = and i32 %3659, 255
  %3661 = uitofp i32 %3660 to float
  %3662 = lshr i32 %3646, 16
  %3663 = and i32 %3662, 255
  %3664 = uitofp i32 %3663 to float
  %3665 = fmul fast float %3664, 0x3F70101000000000
  %3666 = fmul fast float %3653, %3658
  %3667 = fadd fast float %3666, %3661
  %3668 = fmul fast float %3667, 0x3F70101000000000
  %3669 = fadd fast float %3654, -5.000000e-01
  %3670 = fadd fast float %3656, -5.000000e-01
  %3671 = fmul fast float %3669, %3665
  %3672 = fmul fast float %3670, %3665
  %3673 = fadd fast float %3671, 5.000000e-01
  %3674 = fadd fast float %3672, 5.000000e-01
  %3675 = fmul fast float %3673, 2.000000e+00
  %3676 = fadd fast float %3675, -1.000000e+00
  %3677 = fmul fast float %3674, 2.000000e+00
  %3678 = fadd fast float %3677, -1.000000e+00
  %3679 = fadd fast float %3676, %3678
  %3680 = fmul fast float %3679, 5.000000e-01
  %3681 = fsub fast float %3676, %3678
  %3682 = fmul fast float %3681, 5.000000e-01
  %3683 = call float @dx.op.unary.f32(i32 6, float %3680)  ; FAbs(value)
  %3684 = fsub fast float 1.000000e+00, %3683
  %3685 = call float @dx.op.unary.f32(i32 6, float %3682)  ; FAbs(value)
  %3686 = fsub fast float %3684, %3685
  %3687 = call float @dx.op.dot3.f32(i32 55, float %3680, float %3682, float %3686, float %3680, float %3682, float %3686)  ; Dot3(ax,ay,az,bx,by,bz)
  %3688 = call float @dx.op.unary.f32(i32 25, float %3687)  ; Rsqrt(value)
  %3689 = fmul fast float %3680, %3688
  %3690 = fmul fast float %3682, %3688
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = and i32 %3692, 67108864
  %3694 = icmp eq i32 %3693, 0
  br i1 %3694, label %3711, label %3695

; <label>:3695                                    ; preds = %3643
  %3696 = add i32 %60, 328
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = and i32 %3698, 65535
  %3700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3699)  ; LegacyF16ToF32(value)
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = and i32 %3702, 65535
  %3704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3703)  ; LegacyF16ToF32(value)
  %3705 = lshr i32 %3698, 16
  %3706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3705)  ; LegacyF16ToF32(value)
  %3707 = fsub fast float %3668, %3706
  %3708 = fmul fast float %3707, %3700
  %3709 = fadd fast float %3708, %3704
  %3710 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  br label %3711

; <label>:3711                                    ; preds = %3695, %3643
  %3712 = phi float [ %3710, %3695 ], [ %3668, %3643 ]
  %3713 = call float @dx.op.dot2.f32(i32 54, float %3689, float %3690, float %3132, float %3133)  ; Dot2(ax,ay,bx,by)
  %3714 = call float @dx.op.dot2.f32(i32 54, float %3689, float %3690, float %3134, float %3135)  ; Dot2(ax,ay,bx,by)
  br label %3715

; <label>:3715                                    ; preds = %3711, %3621
  %3716 = phi float [ %3712, %3711 ], [ 0x3FD6666660000000, %3621 ]
  %3717 = phi float [ %3713, %3711 ], [ 0.000000e+00, %3621 ]
  %3718 = phi float [ %3714, %3711 ], [ 0.000000e+00, %3621 ]
  %3719 = phi float [ %3655, %3711 ], [ 1.000000e+00, %3621 ]
  %3720 = add i32 %60, 208
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = lshr i32 %3722, 22
  %3724 = shl nuw nsw i32 %3723, 5
  %3725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3724)  ; LegacyF16ToF32(value)
  %3726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.i32 %3726, 0
  %3728 = and i32 %3727, 64
  %3729 = icmp eq i32 %3728, 0
  br i1 %3729, label %3763, label %3730

; <label>:3730                                    ; preds = %3715
  %3731 = add i32 %60, 452
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = add i32 %3733, 0
  %3735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = and i32 %3737, 131072
  %3739 = icmp eq i32 %3738, 0
  %3740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3735, %dx.types.Handle %105, float %3228, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.ResRet.f32 %3740, 1
  %3743 = extractvalue %dx.types.ResRet.f32 %3740, 2
  %3744 = fmul fast float %3741, %401
  %3745 = fmul fast float %3742, %404
  %3746 = fmul fast float %3743, %407
  br i1 %3739, label %3753, label %3747

; <label>:3747                                    ; preds = %3730
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = fmul fast float %3749, %3744
  %3751 = fmul fast float %3749, %3745
  %3752 = fmul fast float %3749, %3746
  br label %3753

; <label>:3753                                    ; preds = %3747, %3730
  %3754 = phi float [ %3750, %3747 ], [ %3744, %3730 ]
  %3755 = phi float [ %3751, %3747 ], [ %3745, %3730 ]
  %3756 = phi float [ %3752, %3747 ], [ %3746, %3730 ]
  %3757 = fmul fast float %3754, %3725
  %3758 = select i1 %258, float %3757, float %3754
  %3759 = call float @dx.op.dot3.f32(i32 55, float %3758, float %3755, float %3756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3760 = select i1 %258, float 0.000000e+00, float %3754
  %3761 = select i1 %258, float %3759, float %3755
  %3762 = select i1 %258, float 0.000000e+00, float %3756
  br label %3763

; <label>:3763                                    ; preds = %3753, %3715
  %3764 = phi float [ %3760, %3753 ], [ 0.000000e+00, %3715 ]
  %3765 = phi float [ %3761, %3753 ], [ 0.000000e+00, %3715 ]
  %3766 = phi float [ %3762, %3753 ], [ 0.000000e+00, %3715 ]
  %3767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.i32 %3767, 0
  %3769 = and i32 %3768, 10240
  %3770 = icmp eq i32 %3769, 0
  br i1 %3770, label %3815, label %3771

; <label>:3771                                    ; preds = %3763
  %3772 = add i32 %60, 516
  %3773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.i32 %3773, 0
  %3775 = add i32 %3774, 0
  %3776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3776, %dx.types.Handle %106, float %3228, float %3229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3778 = extractvalue %dx.types.ResRet.f32 %3777, 1
  %3779 = extractvalue %dx.types.ResRet.f32 %3777, 3
  %3780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.i32 %3780, 0
  %3782 = and i32 %3781, 1048576
  %3783 = icmp ne i32 %3782, 0
  %3784 = and i32 %3781, 8192
  %3785 = icmp eq i32 %3784, 0
  br i1 %3785, label %3801, label %3786

; <label>:3786                                    ; preds = %3771
  %3787 = extractvalue %dx.types.ResRet.f32 %3777, 2
  %3788 = select i1 %3783, float %3787, float %3778
  %3789 = extractvalue %dx.types.ResRet.f32 %3777, 0
  %3790 = select i1 %3783, float %3789, float %3778
  %3791 = add i32 %60, 144
  %3792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.i32 %3792, 0
  %3794 = lshr i32 %3793, 16
  %3795 = and i32 %3794, 255
  %3796 = uitofp i32 %3795 to float
  %3797 = fmul fast float %3796, 0x3F80101020000000
  %3798 = fmul fast float %3797, %3790
  %3799 = fmul fast float %3797, %3778
  %3800 = fmul fast float %3797, %3788
  br label %3801

; <label>:3801                                    ; preds = %3786, %3771
  %3802 = phi float [ %3798, %3786 ], [ 0.000000e+00, %3771 ]
  %3803 = phi float [ %3799, %3786 ], [ 0.000000e+00, %3771 ]
  %3804 = phi float [ %3800, %3786 ], [ 0.000000e+00, %3771 ]
  %3805 = and i32 %3781, 2048
  %3806 = icmp eq i32 %3805, 0
  br i1 %3806, label %3815, label %3807

; <label>:3807                                    ; preds = %3801
  %3808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.i32 %3808, 0
  %3810 = shl i32 %3809, 4
  %3811 = and i32 %3810, 32752
  %3812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3811)  ; LegacyF16ToF32(value)
  %3813 = fmul fast float %3812, %3779
  %3814 = call float @dx.op.binary.f32(i32 35, float %3813, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3815

; <label>:3815                                    ; preds = %3807, %3801, %3763
  %3816 = phi float [ %3802, %3807 ], [ %3802, %3801 ], [ 0.000000e+00, %3763 ]
  %3817 = phi float [ %3803, %3807 ], [ %3803, %3801 ], [ 0.000000e+00, %3763 ]
  %3818 = phi float [ %3804, %3807 ], [ %3804, %3801 ], [ 0.000000e+00, %3763 ]
  %3819 = phi float [ %3814, %3807 ], [ 0x3F70101020000000, %3801 ], [ 0x3F70101020000000, %3763 ]
  %3820 = add i32 %60, 144
  %3821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.i32 %3821, 0
  %3823 = and i32 %3822, 255
  %3824 = uitofp i32 %3823 to float
  %3825 = lshr i32 %3822, 8
  %3826 = and i32 %3825, 255
  %3827 = uitofp i32 %3826 to float
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3636, float %3637, float %3638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = fmul fast float %3827, %3828
  %3830 = fadd fast float %3829, %3824
  %3831 = fmul fast float %3830, 0x3F70101020000000
  %3832 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  br i1 %3120, label %3833, label %3841

; <label>:3833                                    ; preds = %3815
  %3834 = fsub fast float 1.000000e+00, %3416
  %3835 = fmul fast float %3834, %3108
  %3836 = fmul fast float %3834, %3109
  %3837 = fmul fast float %3834, %3110
  %3838 = fmul fast float %3834, %3105
  %3839 = fmul fast float %3834, %3106
  %3840 = fmul fast float %3834, %3107
  br label %3841

; <label>:3841                                    ; preds = %3833, %3815
  %3842 = phi float [ %3838, %3833 ], [ %3105, %3815 ]
  %3843 = phi float [ %3839, %3833 ], [ %3106, %3815 ]
  %3844 = phi float [ %3840, %3833 ], [ %3107, %3815 ]
  %3845 = phi float [ %3835, %3833 ], [ %3108, %3815 ]
  %3846 = phi float [ %3836, %3833 ], [ %3109, %3815 ]
  %3847 = phi float [ %3837, %3833 ], [ %3110, %3815 ]
  %3848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.i32 %3848, 0
  %3850 = and i32 %3849, 3
  %3851 = icmp eq i32 %3850, 3
  br i1 %3851, label %3930, label %3852

; <label>:3852                                    ; preds = %3841
  %3853 = and i32 %3849, 16
  %3854 = icmp ne i32 %3853, 0
  %3855 = select i1 %3854, float %3416, float 0.000000e+00
  %3856 = icmp eq i32 %3850, 0
  br i1 %3856, label %3857, label %3885

; <label>:3857                                    ; preds = %3852
  %3858 = and i32 %3849, 64
  %3859 = icmp ne i32 %3858, 0
  %3860 = select i1 %3859, float %3416, float 0.000000e+00
  %3861 = fsub fast float %3636, %3845
  %3862 = fsub fast float %3637, %3846
  %3863 = fsub fast float %3638, %3847
  %3864 = fmul fast float %3855, %3861
  %3865 = fmul fast float %3855, %3862
  %3866 = fmul fast float %3855, %3863
  %3867 = fadd fast float %3864, %3845
  %3868 = fadd fast float %3865, %3846
  %3869 = fadd fast float %3866, %3847
  %3870 = fsub fast float %3622, %3114
  %3871 = fmul fast float %3855, %3870
  %3872 = fadd fast float %3871, %3114
  %3873 = fsub fast float %3764, %3842
  %3874 = fsub fast float %3765, %3843
  %3875 = fsub fast float %3766, %3844
  %3876 = fmul fast float %3860, %3873
  %3877 = fmul fast float %3860, %3874
  %3878 = fmul fast float %3860, %3875
  %3879 = fadd fast float %3876, %3842
  %3880 = fadd fast float %3877, %3843
  %3881 = fadd fast float %3878, %3844
  %3882 = fsub fast float %3832, %3118
  %3883 = fmul fast float %3855, %3882
  %3884 = fadd fast float %3883, %3118
  br label %3930

; <label>:3885                                    ; preds = %3852
  %3886 = icmp eq i32 %3850, 1
  br i1 %3886, label %3887, label %3900

; <label>:3887                                    ; preds = %3885
  %3888 = fadd fast float %3636, -1.000000e+00
  %3889 = fadd fast float %3637, -1.000000e+00
  %3890 = fadd fast float %3638, -1.000000e+00
  %3891 = fmul fast float %3855, %3888
  %3892 = fmul fast float %3855, %3889
  %3893 = fmul fast float %3855, %3890
  %3894 = fadd fast float %3891, 1.000000e+00
  %3895 = fadd fast float %3892, 1.000000e+00
  %3896 = fadd fast float %3893, 1.000000e+00
  %3897 = fmul fast float %3894, %3845
  %3898 = fmul fast float %3895, %3846
  %3899 = fmul fast float %3896, %3847
  br label %3930

; <label>:3900                                    ; preds = %3885
  %3901 = icmp eq i32 %3850, 2
  br i1 %3901, label %3902, label %3930

; <label>:3902                                    ; preds = %3900
  %3903 = call float @dx.op.unary.f32(i32 24, float %3636)  ; Sqrt(value)
  %3904 = call float @dx.op.unary.f32(i32 24, float %3637)  ; Sqrt(value)
  %3905 = call float @dx.op.unary.f32(i32 24, float %3638)  ; Sqrt(value)
  %3906 = fadd fast float %3903, -5.000000e-01
  %3907 = fadd fast float %3904, -5.000000e-01
  %3908 = fadd fast float %3905, -5.000000e-01
  %3909 = fmul fast float %3906, %3855
  %3910 = fmul fast float %3907, %3855
  %3911 = fmul fast float %3908, %3855
  %3912 = fadd fast float %3909, 5.000000e-01
  %3913 = fadd fast float %3910, 5.000000e-01
  %3914 = fadd fast float %3911, 5.000000e-01
  %3915 = fmul fast float %3912, 2.000000e+00
  %3916 = fsub fast float 1.000000e+00, %3915
  %3917 = fmul fast float %3916, %3845
  %3918 = fadd fast float %3917, %3915
  %3919 = fmul fast float %3918, %3845
  %3920 = fmul fast float %3913, 2.000000e+00
  %3921 = fsub fast float 1.000000e+00, %3920
  %3922 = fmul fast float %3921, %3846
  %3923 = fadd fast float %3922, %3920
  %3924 = fmul fast float %3923, %3846
  %3925 = fmul fast float %3914, 2.000000e+00
  %3926 = fsub fast float 1.000000e+00, %3925
  %3927 = fmul fast float %3926, %3847
  %3928 = fadd fast float %3927, %3925
  %3929 = fmul fast float %3928, %3847
  br label %3930

; <label>:3930                                    ; preds = %3902, %3900, %3887, %3857, %3841
  %3931 = phi float [ %3842, %3841 ], [ %3842, %3902 ], [ %3842, %3900 ], [ %3842, %3887 ], [ %3879, %3857 ]
  %3932 = phi float [ %3843, %3841 ], [ %3843, %3902 ], [ %3843, %3900 ], [ %3843, %3887 ], [ %3880, %3857 ]
  %3933 = phi float [ %3844, %3841 ], [ %3844, %3902 ], [ %3844, %3900 ], [ %3844, %3887 ], [ %3881, %3857 ]
  %3934 = phi float [ %3845, %3841 ], [ %3919, %3902 ], [ %3845, %3900 ], [ %3897, %3887 ], [ %3867, %3857 ]
  %3935 = phi float [ %3846, %3841 ], [ %3924, %3902 ], [ %3846, %3900 ], [ %3898, %3887 ], [ %3868, %3857 ]
  %3936 = phi float [ %3847, %3841 ], [ %3929, %3902 ], [ %3847, %3900 ], [ %3899, %3887 ], [ %3869, %3857 ]
  %3937 = phi float [ %3114, %3841 ], [ %3114, %3902 ], [ %3114, %3900 ], [ %3114, %3887 ], [ %3872, %3857 ]
  %3938 = phi float [ %3118, %3841 ], [ %3118, %3902 ], [ %3118, %3900 ], [ %3118, %3887 ], [ %3884, %3857 ]
  %3939 = and i32 %3849, 12
  %3940 = icmp eq i32 %3939, 12
  br i1 %3940, label %4047, label %3941

; <label>:3941                                    ; preds = %3930
  %3942 = and i32 %3849, 2097184
  %3943 = icmp eq i32 %3942, 2097184
  %3944 = select i1 %3943, float %3416, float 0.000000e+00
  %3945 = and i32 %3849, 4194336
  %3946 = icmp eq i32 %3945, 4194336
  %3947 = select i1 %3946, float %3416, float 0.000000e+00
  %3948 = and i32 %3849, 8388640
  %3949 = icmp eq i32 %3948, 8388640
  %3950 = select i1 %3949, float %3416, float 0.000000e+00
  %3951 = and i32 %3849, 2048
  %3952 = icmp ne i32 %3951, 0
  %3953 = select i1 %3952, float %3416, float 0.000000e+00
  %3954 = and i32 %3849, 8192
  %3955 = icmp ne i32 %3954, 0
  %3956 = select i1 %3955, float %3416, float 0.000000e+00
  %3957 = icmp eq i32 %3939, 0
  br i1 %3957, label %3958, label %3983

; <label>:3958                                    ; preds = %3941
  %3959 = fsub fast float %3717, %3103
  %3960 = fsub fast float %3718, %3104
  %3961 = fmul fast float %3944, %3959
  %3962 = fmul fast float %3944, %3960
  %3963 = fadd fast float %3961, %3103
  %3964 = fadd fast float %3962, %3104
  %3965 = fsub fast float %3719, %3116
  %3966 = fmul fast float %3947, %3965
  %3967 = fadd fast float %3966, %3116
  %3968 = fsub fast float %3716, %3115
  %3969 = fmul fast float %3950, %3968
  %3970 = fadd fast float %3969, %3115
  %3971 = fsub fast float %3819, %3117
  %3972 = fmul fast float %3953, %3971
  %3973 = fadd fast float %3972, %3117
  %3974 = fsub fast float %3816, %3111
  %3975 = fsub fast float %3817, %3112
  %3976 = fsub fast float %3818, %3113
  %3977 = fmul fast float %3956, %3974
  %3978 = fmul fast float %3956, %3975
  %3979 = fmul fast float %3956, %3976
  %3980 = fadd fast float %3977, %3111
  %3981 = fadd fast float %3978, %3112
  %3982 = fadd fast float %3979, %3113
  br label %4047

; <label>:3983                                    ; preds = %3941
  %3984 = icmp eq i32 %3939, 4
  br i1 %3984, label %3985, label %4025

; <label>:3985                                    ; preds = %3983
  %3986 = fmul fast float %3944, %3717
  %3987 = fmul fast float %3944, %3718
  %3988 = fadd fast float %3986, %3103
  %3989 = fadd fast float %3987, %3104
  %3990 = call float @dx.op.binary.f32(i32 36, float %3116, float %3719)  ; FMin(a,b)
  %3991 = fsub fast float %3990, %3116
  %3992 = fmul fast float %3991, %3947
  %3993 = fadd fast float %3992, %3116
  %3994 = fadd fast float %3716, %3115
  %3995 = fmul fast float %3994, 0x3FF337FAE0000000
  %3996 = fmul fast float %3115, %3115
  %3997 = fmul fast float %3716, %3716
  %3998 = fadd fast float %3997, %3996
  %3999 = fmul fast float %3998, 0x3FE5152B00000000
  %4000 = fmul fast float %3115, 0xBFCC1F85E0000000
  %4001 = fmul fast float %4000, %3716
  %4002 = fadd fast float %4001, 0xBFE1363700000000
  %4003 = fadd fast float %4002, %3995
  %4004 = fsub fast float %4003, %3999
  %4005 = fmul fast float %3994, 0x3FBA6F0D00000000
  %4006 = fmul fast float %3998, 0x3FD0432880000000
  %4007 = fmul fast float %3115, 0xBFEF110800000000
  %4008 = fmul fast float %4007, %3716
  %4009 = fadd fast float %4008, 1.000000e+00
  %4010 = fsub fast float %4009, %4005
  %4011 = fadd fast float %4010, %4006
  %4012 = fdiv fast float %4004, %4011
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4014 = fsub fast float %4013, %3115
  %4015 = fmul fast float %4014, %3950
  %4016 = fadd fast float %4015, %3115
  %4017 = fmul fast float %3953, %3819
  %4018 = fadd fast float %4017, %3117
  %4019 = fmul fast float %3956, %3816
  %4020 = fmul fast float %3956, %3817
  %4021 = fmul fast float %3956, %3818
  %4022 = fadd fast float %4019, %3111
  %4023 = fadd fast float %4020, %3112
  %4024 = fadd fast float %4021, %3113
  br label %4047

; <label>:4025                                    ; preds = %3983
  %4026 = icmp eq i32 %3939, 8
  br i1 %4026, label %4027, label %4047

; <label>:4027                                    ; preds = %4025
  %4028 = fmul fast float %3944, %3717
  %4029 = fmul fast float %3944, %3718
  %4030 = fadd fast float %4028, %3103
  %4031 = fadd fast float %4029, %3104
  %4032 = call float @dx.op.binary.f32(i32 36, float %3116, float %3719)  ; FMin(a,b)
  %4033 = fsub fast float %4032, %3116
  %4034 = fmul fast float %4033, %3947
  %4035 = fadd fast float %4034, %3116
  %4036 = fsub fast float %3716, %3115
  %4037 = fmul fast float %3950, %4036
  %4038 = fadd fast float %4037, %3115
  %4039 = fmul fast float %3953, %3819
  %4040 = fadd fast float %4039, %3117
  %4041 = fmul fast float %3956, %3816
  %4042 = fmul fast float %3956, %3817
  %4043 = fmul fast float %3956, %3818
  %4044 = fadd fast float %4041, %3111
  %4045 = fadd fast float %4042, %3112
  %4046 = fadd fast float %4043, %3113
  br label %4047

; <label>:4047                                    ; preds = %4027, %4025, %3985, %3958, %3930, %3415, %3119, %3102
  %4048 = phi float [ %3103, %3930 ], [ %3103, %3415 ], [ %3103, %3102 ], [ %3103, %3119 ], [ %3963, %3958 ], [ %3988, %3985 ], [ %3103, %4025 ], [ %4030, %4027 ]
  %4049 = phi float [ %3104, %3930 ], [ %3104, %3415 ], [ %3104, %3102 ], [ %3104, %3119 ], [ %3964, %3958 ], [ %3989, %3985 ], [ %3104, %4025 ], [ %4031, %4027 ]
  %4050 = phi float [ %3931, %3930 ], [ %3105, %3415 ], [ %3105, %3102 ], [ %3105, %3119 ], [ %3931, %3958 ], [ %3931, %3985 ], [ %3931, %4025 ], [ %3931, %4027 ]
  %4051 = phi float [ %3932, %3930 ], [ %3106, %3415 ], [ %3106, %3102 ], [ %3106, %3119 ], [ %3932, %3958 ], [ %3932, %3985 ], [ %3932, %4025 ], [ %3932, %4027 ]
  %4052 = phi float [ %3933, %3930 ], [ %3107, %3415 ], [ %3107, %3102 ], [ %3107, %3119 ], [ %3933, %3958 ], [ %3933, %3985 ], [ %3933, %4025 ], [ %3933, %4027 ]
  %4053 = phi float [ %3934, %3930 ], [ %3108, %3415 ], [ %3108, %3102 ], [ %3108, %3119 ], [ %3934, %3958 ], [ %3934, %3985 ], [ %3934, %4025 ], [ %3934, %4027 ]
  %4054 = phi float [ %3935, %3930 ], [ %3109, %3415 ], [ %3109, %3102 ], [ %3109, %3119 ], [ %3935, %3958 ], [ %3935, %3985 ], [ %3935, %4025 ], [ %3935, %4027 ]
  %4055 = phi float [ %3936, %3930 ], [ %3110, %3415 ], [ %3110, %3102 ], [ %3110, %3119 ], [ %3936, %3958 ], [ %3936, %3985 ], [ %3936, %4025 ], [ %3936, %4027 ]
  %4056 = phi float [ %3111, %3930 ], [ %3111, %3415 ], [ %3111, %3102 ], [ %3111, %3119 ], [ %3980, %3958 ], [ %4022, %3985 ], [ %3111, %4025 ], [ %4044, %4027 ]
  %4057 = phi float [ %3112, %3930 ], [ %3112, %3415 ], [ %3112, %3102 ], [ %3112, %3119 ], [ %3981, %3958 ], [ %4023, %3985 ], [ %3112, %4025 ], [ %4045, %4027 ]
  %4058 = phi float [ %3113, %3930 ], [ %3113, %3415 ], [ %3113, %3102 ], [ %3113, %3119 ], [ %3982, %3958 ], [ %4024, %3985 ], [ %3113, %4025 ], [ %4046, %4027 ]
  %4059 = phi float [ %3937, %3930 ], [ %3114, %3415 ], [ %3114, %3102 ], [ %3114, %3119 ], [ %3937, %3958 ], [ %3937, %3985 ], [ %3937, %4025 ], [ %3937, %4027 ]
  %4060 = phi float [ %3115, %3930 ], [ %3115, %3415 ], [ %3115, %3102 ], [ %3115, %3119 ], [ %3970, %3958 ], [ %4016, %3985 ], [ %3115, %4025 ], [ %4038, %4027 ]
  %4061 = phi float [ %3116, %3930 ], [ %3116, %3415 ], [ %3116, %3102 ], [ %3116, %3119 ], [ %3967, %3958 ], [ %3993, %3985 ], [ %3116, %4025 ], [ %4035, %4027 ]
  %4062 = phi float [ %3117, %3930 ], [ %3117, %3415 ], [ %3117, %3102 ], [ %3117, %3119 ], [ %3973, %3958 ], [ %4018, %3985 ], [ %3117, %4025 ], [ %4040, %4027 ]
  %4063 = phi float [ %3938, %3930 ], [ %3118, %3415 ], [ %3118, %3102 ], [ %3118, %3119 ], [ %3938, %3958 ], [ %3938, %3985 ], [ %3938, %4025 ], [ %3938, %4027 ]
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = call float @dx.op.dot2.f32(i32 54, float %4048, float %4049, float %4048, float %4049)  ; Dot2(ax,ay,bx,by)
  %4067 = fmul fast float %4066, 0x3FE3333340000000
  %4068 = fsub fast float 1.000000e+00, %4067
  %4069 = call float @dx.op.dot3.f32(i32 55, float %4048, float %4049, float %4068, float %4048, float %4049, float %4068)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = call float @dx.op.unary.f32(i32 25, float %4069)  ; Rsqrt(value)
  %4071 = fmul fast float %4070, %4048
  %4072 = fmul fast float %4070, %4049
  %4073 = fmul fast float %4068, %4070
  %4074 = fmul fast float %4073, %116
  %4075 = fmul fast float %4073, %117
  %4076 = fmul fast float %4073, %118
  %4077 = fmul fast float %4071, %81
  %4078 = fmul fast float %4071, %82
  %4079 = fmul fast float %4071, %83
  %4080 = fadd fast float %4074, %4077
  %4081 = fadd fast float %4075, %4078
  %4082 = fadd fast float %4076, %4079
  %4083 = fmul fast float %128, %4072
  %4084 = fmul fast float %129, %4072
  %4085 = fmul fast float %130, %4072
  %4086 = fadd fast float %4080, %4083
  %4087 = fadd fast float %4081, %4084
  %4088 = fadd fast float %4082, %4085
  %4089 = call float @dx.op.dot3.f32(i32 55, float %4086, float %4087, float %4088, float %4086, float %4087, float %4088)  ; Dot3(ax,ay,az,bx,by,bz)
  %4090 = call float @dx.op.unary.f32(i32 25, float %4089)  ; Rsqrt(value)
  %4091 = fmul fast float %4086, %4090
  %4092 = fmul fast float %4087, %4090
  %4093 = fmul fast float %4088, %4090
  %4094 = and i32 %62, 1
  %4095 = icmp eq i32 %4094, 0
  br i1 %4095, label %4096, label %4657

; <label>:4096                                    ; preds = %4047
  %4097 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %4098 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4099 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4100 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %4101 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4102 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4103 = fadd fast float %4097, %164
  %4104 = fadd fast float %4098, %165
  %4105 = fadd fast float %4099, %166
  %4106 = fadd fast float %4100, %164
  %4107 = fadd fast float %4101, %165
  %4108 = fadd fast float %4102, %166
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.CBufRet.f32 %4109, 2
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 2
  %4115 = extractvalue %dx.types.CBufRet.f32 %4113, 3
  %4116 = fmul fast float %4110, %109
  %4117 = fmul fast float %4116, %4114
  %4118 = fmul fast float %4111, %110
  %4119 = fmul fast float %4118, %4115
  %4120 = fptoui float %4117 to i32
  %4121 = fptoui float %4119 to i32
  %4122 = fadd fast float %4110, -1.000000e+00
  %4123 = fadd fast float %4111, -1.000000e+00
  %4124 = fptoui float %4122 to i32
  %4125 = fptoui float %4123 to i32
  %4126 = call i32 @dx.op.binary.i32(i32 40, i32 %4120, i32 %4124)  ; UMin(a,b)
  %4127 = call i32 @dx.op.binary.i32(i32 40, i32 %4121, i32 %4125)  ; UMin(a,b)
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4130 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4131 = fmul fast float %4129, %97
  %4132 = fsub fast float %4131, %4130
  %4133 = fadd fast float %4112, -1.000000e+00
  %4134 = call float @dx.op.binary.f32(i32 36, float %4132, float %4133)  ; FMin(a,b)
  %4135 = fptoui float %4134 to i32
  %4136 = fptoui float %4110 to i32
  %4137 = fptoui float %4111 to i32
  %4138 = mul i32 %4135, %4137
  %4139 = add i32 %4138, %4127
  %4140 = mul i32 %4139, %4136
  %4141 = add i32 %4140, %4126
  %4142 = shl i32 %4141, 2
  %4143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4142, i32 undef)  ; BufferLoad(srv,index,wot)
  %4144 = extractvalue %dx.types.ResRet.i32 %4143, 0
  %4145 = and i32 %4144, 1023
  %4146 = lshr i32 %4144, 10
  %4147 = icmp eq i32 %4145, 0
  br i1 %4147, label %4623, label %4148

; <label>:4148                                    ; preds = %4096
  %4149 = and i32 %4144, 1023
  br label %4150

; <label>:4150                                    ; preds = %4279, %4148
  %4151 = phi i32 [ %4229, %4279 ], [ 0, %4148 ]
  %4152 = phi float [ %4280, %4279 ], [ 0.000000e+00, %4148 ]
  %4153 = phi float [ %4281, %4279 ], [ %4065, %4148 ]
  %4154 = phi float [ %4282, %4279 ], [ %4063, %4148 ]
  %4155 = phi float [ %4283, %4279 ], [ 0.000000e+00, %4148 ]
  %4156 = phi float [ %4284, %4279 ], [ 0.000000e+00, %4148 ]
  %4157 = phi float [ %4285, %4279 ], [ %4056, %4148 ]
  %4158 = phi float [ %4286, %4279 ], [ %4057, %4148 ]
  %4159 = phi float [ %4287, %4279 ], [ %4058, %4148 ]
  %4160 = phi float [ %4288, %4279 ], [ %4050, %4148 ]
  %4161 = phi float [ %4289, %4279 ], [ %4051, %4148 ]
  %4162 = phi float [ %4290, %4279 ], [ %4052, %4148 ]
  %4163 = phi float [ %4291, %4279 ], [ %4091, %4148 ]
  %4164 = phi float [ %4292, %4279 ], [ %4092, %4148 ]
  %4165 = phi float [ %4293, %4279 ], [ %4093, %4148 ]
  %4166 = phi float [ %4294, %4279 ], [ %4061, %4148 ]
  %4167 = phi float [ %4295, %4279 ], [ %4060, %4148 ]
  %4168 = phi float [ %4296, %4279 ], [ 0.000000e+00, %4148 ]
  %4169 = phi float [ %4297, %4279 ], [ %4059, %4148 ]
  %4170 = phi float [ %4298, %4279 ], [ %4053, %4148 ]
  %4171 = phi float [ %4299, %4279 ], [ %4054, %4148 ]
  %4172 = phi float [ %4300, %4279 ], [ %4055, %4148 ]
  %4173 = add nuw nsw i32 %4151, %4146
  %4174 = shl i32 %4173, 2
  %4175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.i32 %4175, 0
  %4177 = shl i32 %4176, 8
  %4178 = or i32 %4177, 48
  %4179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = extractvalue %dx.types.ResRet.f32 %4179, 3
  %4184 = or i32 %4177, 64
  %4185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.i32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.i32 %4185, 1
  %4188 = or i32 %4177, 80
  %4189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 2
  %4191 = extractvalue %dx.types.ResRet.f32 %4189, 3
  %4192 = or i32 %4177, 96
  %4193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4197 = extractvalue %dx.types.ResRet.f32 %4193, 3
  %4198 = or i32 %4177, 112
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4201 = or i32 %4177, 128
  %4202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.ResRet.f32 %4202, 2
  %4206 = extractvalue %dx.types.ResRet.f32 %4202, 3
  %4207 = or i32 %4177, 144
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = extractvalue %dx.types.ResRet.f32 %4208, 3
  %4213 = or i32 %4177, 160
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = extractvalue %dx.types.ResRet.f32 %4214, 3
  %4219 = or i32 %4177, 192
  %4220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.i32 %4220, 0
  %4222 = or i32 %4177, 208
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = or i32 %4177, 248
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.ResRet.f32 %4226, 1
  %4229 = add nuw nsw i32 %4151, 1
  %4230 = bitcast float %4183 to i32
  %4231 = and i32 %4230, 512
  %4232 = icmp eq i32 %4231, 0
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4237 = extractvalue %dx.types.ResRet.f32 %4233, 3
  %4238 = call float @dx.op.dot4.f32(i32 56, float %4234, float %4235, float %4236, float %4237, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4239 = or i32 %4177, 16
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4240, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4240, 2
  %4244 = extractvalue %dx.types.ResRet.f32 %4240, 3
  %4245 = call float @dx.op.dot4.f32(i32 56, float %4241, float %4242, float %4243, float %4244, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4246 = or i32 %4177, 32
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = extractvalue %dx.types.ResRet.f32 %4247, 1
  %4250 = extractvalue %dx.types.ResRet.f32 %4247, 2
  %4251 = extractvalue %dx.types.ResRet.f32 %4247, 3
  %4252 = call float @dx.op.dot4.f32(i32 56, float %4248, float %4249, float %4250, float %4251, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4253 = call float @dx.op.unary.f32(i32 27, float %4238)  ; Round_ni(value)
  %4254 = call float @dx.op.unary.f32(i32 6, float %4253)  ; FAbs(value)
  %4255 = call float @dx.op.unary.f32(i32 27, float %4245)  ; Round_ni(value)
  %4256 = call float @dx.op.unary.f32(i32 6, float %4255)  ; FAbs(value)
  %4257 = call float @dx.op.unary.f32(i32 6, float %4252)  ; FAbs(value)
  %4258 = call float @dx.op.unary.f32(i32 27, float %4257)  ; Round_ni(value)
  %4259 = fadd fast float %4256, %4254
  %4260 = fadd fast float %4259, %4258
  %4261 = fcmp fast oeq float %4260, 0.000000e+00
  %4262 = call float @dx.op.dot4.f32(i32 56, float %4234, float %4235, float %4236, float %4237, float %4103, float %4104, float %4105, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4263 = call float @dx.op.dot4.f32(i32 56, float %4241, float %4242, float %4243, float %4244, float %4103, float %4104, float %4105, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4264 = call float @dx.op.dot4.f32(i32 56, float %4234, float %4235, float %4236, float %4237, float %4106, float %4107, float %4108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4265 = call float @dx.op.dot4.f32(i32 56, float %4241, float %4242, float %4243, float %4244, float %4106, float %4107, float %4108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4266 = fsub fast float %4262, %4238
  %4267 = fsub fast float %4264, %4238
  %4268 = fsub fast float %4263, %4245
  %4269 = fsub fast float %4265, %4245
  %4270 = call float @dx.op.dot3.f32(i32 55, float %4180, float %4181, float %4182, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 2
  %4273 = fadd fast float %4272, %4270
  %4274 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4276 = fcmp fast ogt float %4274, %4275
  %4277 = and i1 %4261, %4276
  %4278 = and i1 %4232, %4277
  br i1 %4278, label %4302, label %4279

; <label>:4279                                    ; preds = %4609, %4383, %4302, %4150
  %4280 = phi float [ %4152, %4302 ], [ %4386, %4383 ], [ %4386, %4609 ], [ %4152, %4150 ]
  %4281 = phi float [ %4153, %4302 ], [ %4153, %4383 ], [ %4585, %4609 ], [ %4153, %4150 ]
  %4282 = phi float [ %4154, %4302 ], [ %4154, %4383 ], [ %4583, %4609 ], [ %4154, %4150 ]
  %4283 = phi float [ %4155, %4302 ], [ %4155, %4383 ], [ %4510, %4609 ], [ %4155, %4150 ]
  %4284 = phi float [ %4156, %4302 ], [ %4156, %4383 ], [ %4508, %4609 ], [ %4156, %4150 ]
  %4285 = phi float [ %4157, %4302 ], [ %4157, %4383 ], [ %4553, %4609 ], [ %4157, %4150 ]
  %4286 = phi float [ %4158, %4302 ], [ %4158, %4383 ], [ %4554, %4609 ], [ %4158, %4150 ]
  %4287 = phi float [ %4159, %4302 ], [ %4159, %4383 ], [ %4555, %4609 ], [ %4159, %4150 ]
  %4288 = phi float [ %4160, %4302 ], [ %4160, %4383 ], [ %4619, %4609 ], [ %4160, %4150 ]
  %4289 = phi float [ %4161, %4302 ], [ %4161, %4383 ], [ %4620, %4609 ], [ %4161, %4150 ]
  %4290 = phi float [ %4162, %4302 ], [ %4162, %4383 ], [ %4621, %4609 ], [ %4162, %4150 ]
  %4291 = phi float [ %4163, %4302 ], [ %4163, %4383 ], [ %4489, %4609 ], [ %4163, %4150 ]
  %4292 = phi float [ %4164, %4302 ], [ %4164, %4383 ], [ %4490, %4609 ], [ %4164, %4150 ]
  %4293 = phi float [ %4165, %4302 ], [ %4165, %4383 ], [ %4491, %4609 ], [ %4165, %4150 ]
  %4294 = phi float [ %4166, %4302 ], [ %4166, %4383 ], [ %4563, %4609 ], [ %4166, %4150 ]
  %4295 = phi float [ %4167, %4302 ], [ %4167, %4383 ], [ %4560, %4609 ], [ %4167, %4150 ]
  %4296 = phi float [ %4168, %4302 ], [ %4168, %4383 ], [ %4557, %4609 ], [ %4168, %4150 ]
  %4297 = phi float [ %4169, %4302 ], [ %4169, %4383 ], [ %4506, %4609 ], [ %4169, %4150 ]
  %4298 = phi float [ %4170, %4302 ], [ %4170, %4383 ], [ %4501, %4609 ], [ %4170, %4150 ]
  %4299 = phi float [ %4171, %4302 ], [ %4171, %4383 ], [ %4502, %4609 ], [ %4171, %4150 ]
  %4300 = phi float [ %4172, %4302 ], [ %4172, %4383 ], [ %4503, %4609 ], [ %4172, %4150 ]
  %4301 = icmp eq i32 %4229, %4149
  br i1 %4301, label %4622, label %4150

; <label>:4302                                    ; preds = %4150
  %4303 = extractvalue %dx.types.ResRet.f32 %4199, 3
  %4304 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4305 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4306 = extractvalue %dx.types.ResRet.f32 %4189, 1
  %4307 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4308 = extractvalue %dx.types.ResRet.i32 %4185, 3
  %4309 = extractvalue %dx.types.ResRet.i32 %4185, 2
  %4310 = add i32 %4308, 0
  %4311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4310, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4313 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4311, %dx.types.Handle %4312, float %4238, float %4245, float undef, float undef, i32 0, i32 0, i32 undef, float %4266, float %4268, float undef, float %4267, float %4269, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4314 = extractvalue %dx.types.ResRet.f32 %4313, 0
  %4315 = fmul fast float %4314, %4307
  %4316 = fadd fast float %4315, %4306
  %4317 = call float @dx.op.unary.f32(i32 7, float %4316)  ; Saturate(value)
  %4318 = fmul fast float %4238, %4194
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4245, float %4318)  ; FMad(a,b,c)
  %4320 = fadd fast float %4319, %4305
  %4321 = fmul fast float %4238, %4196
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4245, float %4321)  ; FMad(a,b,c)
  %4323 = fadd fast float %4322, %4304
  %4324 = fmul fast float %4266, %4194
  %4325 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4268, float %4324)  ; FMad(a,b,c)
  %4326 = fmul fast float %4266, %4196
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4268, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4267, %4194
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4195, float %4269, float %4328)  ; FMad(a,b,c)
  %4330 = fmul fast float %4267, %4196
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4197, float %4269, float %4330)  ; FMad(a,b,c)
  %4332 = add i32 %4309, 0
  %4333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4332, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4334 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4333, %dx.types.Handle %4312, float %4320, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4327, float undef, float %4329, float %4331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = and i32 %4230, 1024
  %4337 = icmp ne i32 %4336, 0
  %4338 = fcmp fast ogt float %4335, 0x3FE0101020000000
  %4339 = uitofp i1 %4338 to float
  %4340 = select i1 %4337, float %4339, float %4335
  %4341 = and i32 %4230, 8192
  %4342 = icmp ne i32 %4341, 0
  %4343 = select i1 %4342, float %4303, float 1.000000e+00
  %4344 = fmul fast float %4238, 2.000000e+00
  %4345 = fadd fast float %4344, -1.000000e+00
  %4346 = call float @dx.op.unary.f32(i32 6, float %4345)  ; FAbs(value)
  %4347 = fmul fast float %4346, %4227
  %4348 = fsub fast float %4347, %4227
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = fmul fast float %4245, 2.000000e+00
  %4351 = fadd fast float %4350, -1.000000e+00
  %4352 = call float @dx.op.unary.f32(i32 6, float %4351)  ; FAbs(value)
  %4353 = fmul fast float %4352, %4228
  %4354 = fsub fast float %4353, %4228
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fmul fast float %4257, %4190
  %4357 = fsub fast float %4356, %4190
  %4358 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4359 = fmul fast float %4317, %4343
  %4360 = fmul fast float %4359, %4314
  %4361 = fmul fast float %4360, %4349
  %4362 = fmul fast float %4361, %4340
  %4363 = fmul fast float %4362, %4355
  %4364 = fmul fast float %4363, %4358
  %4365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.f32 %4365, 1
  %4367 = extractvalue %dx.types.CBufRet.f32 %4365, 0
  %4368 = fsub fast float %4274, %4367
  %4369 = fmul fast float %4368, %4366
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = fmul fast float %4364, %4191
  %4372 = fadd fast float %4364, %4191
  %4373 = fmul fast float %4372, %4200
  %4374 = fsub fast float %4373, %4200
  %4375 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4376 = and i32 %4230, 128
  %4377 = icmp ne i32 %4376, 0
  %4378 = select i1 %4377, float %4375, float %4371
  %4379 = fmul fast float %4378, %4370
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = fcmp fast ugt float %4379, %4381
  br i1 %4382, label %4383, label %4279

; <label>:4383                                    ; preds = %4302
  %4384 = select i1 %4342, float %4379, float 0.000000e+00
  %4385 = fadd fast float %4384, %4152
  %4386 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  br i1 %4342, label %4279, label %4387

; <label>:4387                                    ; preds = %4383
  %4388 = and i32 %4230, 4
  %4389 = and i32 %4230, 8
  %4390 = add i32 %4186, 0
  %4391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4390, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4393 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4391, %dx.types.Handle %4392, float %4320, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4327, float undef, float %4329, float %4331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.ResRet.f32 %4393, 1
  %4396 = extractvalue %dx.types.ResRet.f32 %4393, 2
  %4397 = extractvalue %dx.types.ResRet.f32 %4393, 3
  %4398 = bitcast float %4212 to i32
  %4399 = and i32 %4398, 255
  %4400 = uitofp i32 %4399 to float
  %4401 = lshr i32 %4398, 8
  %4402 = and i32 %4401, 255
  %4403 = uitofp i32 %4402 to float
  %4404 = fmul fast float %4397, %4400
  %4405 = fadd fast float %4404, %4403
  %4406 = fmul fast float %4405, 0x3F70101000000000
  %4407 = add i32 %4187, 0
  %4408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4407, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4409 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4408, %dx.types.Handle %4392, float %4320, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4327, float undef, float %4329, float %4331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.ResRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.ResRet.f32 %4409, 2
  %4413 = extractvalue %dx.types.ResRet.f32 %4409, 3
  %4414 = bitcast float %4206 to i32
  %4415 = and i32 %4414, 255
  %4416 = uitofp i32 %4415 to float
  %4417 = lshr i32 %4414, 8
  %4418 = and i32 %4417, 255
  %4419 = uitofp i32 %4418 to float
  %4420 = lshr i32 %4414, 16
  %4421 = and i32 %4420, 255
  %4422 = uitofp i32 %4421 to float
  %4423 = fmul fast float %4422, 0x3F70101000000000
  %4424 = fmul fast float %4410, %4416
  %4425 = fadd fast float %4424, %4419
  %4426 = fmul fast float %4425, 0x3F70101000000000
  %4427 = fadd fast float %4411, -5.000000e-01
  %4428 = fadd fast float %4413, -5.000000e-01
  %4429 = fmul fast float %4427, %4423
  %4430 = fmul fast float %4428, %4423
  %4431 = fadd fast float %4429, 5.000000e-01
  %4432 = fadd fast float %4430, 5.000000e-01
  %4433 = fmul fast float %4394, %4215
  %4434 = fmul fast float %4395, %4216
  %4435 = fmul fast float %4396, %4217
  %4436 = fmul fast float %4431, 2.000000e+00
  %4437 = fadd fast float %4436, -1.000000e+00
  %4438 = fmul fast float %4432, 2.000000e+00
  %4439 = fadd fast float %4438, -1.000000e+00
  %4440 = fadd fast float %4437, %4439
  %4441 = fmul fast float %4440, 5.000000e-01
  %4442 = fsub fast float %4437, %4439
  %4443 = fmul fast float %4442, 5.000000e-01
  %4444 = call float @dx.op.unary.f32(i32 6, float %4441)  ; FAbs(value)
  %4445 = fsub fast float 1.000000e+00, %4444
  %4446 = call float @dx.op.unary.f32(i32 6, float %4443)  ; FAbs(value)
  %4447 = fsub fast float %4445, %4446
  %4448 = call float @dx.op.dot3.f32(i32 55, float %4441, float %4443, float %4447, float %4441, float %4443, float %4447)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = call float @dx.op.unary.f32(i32 25, float %4448)  ; Rsqrt(value)
  %4450 = fmul fast float %4441, %4449
  %4451 = fmul fast float %4443, %4449
  %4452 = fmul fast float %4449, %4447
  %4453 = fmul fast float %4452, %4180
  %4454 = fmul fast float %4452, %4181
  %4455 = fmul fast float %4452, %4182
  %4456 = fmul fast float %4450, %4203
  %4457 = fmul fast float %4450, %4204
  %4458 = fmul fast float %4450, %4205
  %4459 = fadd fast float %4456, %4453
  %4460 = fadd fast float %4457, %4454
  %4461 = fadd fast float %4458, %4455
  %4462 = fmul fast float %4451, %4209
  %4463 = fmul fast float %4451, %4210
  %4464 = fmul fast float %4451, %4211
  %4465 = fadd fast float %4459, %4462
  %4466 = fadd fast float %4460, %4463
  %4467 = fadd fast float %4461, %4464
  %4468 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4466, float %4467, float %4465, float %4466, float %4467)  ; Dot3(ax,ay,az,bx,by,bz)
  %4469 = call float @dx.op.unary.f32(i32 25, float %4468)  ; Rsqrt(value)
  %4470 = fmul fast float %4465, %4469
  %4471 = fmul fast float %4466, %4469
  %4472 = fmul fast float %4467, %4469
  %4473 = icmp ne i32 %4389, 0
  %4474 = select i1 %4473, float 1.000000e+00, float 0.000000e+00
  %4475 = fmul fast float %4379, %4474
  %4476 = and i32 %4230, 1
  %4477 = icmp eq i32 %4476, 0
  br i1 %4477, label %4478, label %4482

; <label>:4478                                    ; preds = %4387
  %4479 = fsub fast float %4470, %4163
  %4480 = fsub fast float %4471, %4164
  %4481 = fsub fast float %4472, %4165
  br label %4482

; <label>:4482                                    ; preds = %4478, %4387
  %4483 = phi float [ %4479, %4478 ], [ %4470, %4387 ]
  %4484 = phi float [ %4480, %4478 ], [ %4471, %4387 ]
  %4485 = phi float [ %4481, %4478 ], [ %4472, %4387 ]
  %4486 = fmul float %4485, %4475
  %4487 = fmul float %4484, %4475
  %4488 = fmul float %4483, %4475
  %4489 = fadd fast float %4488, %4163
  %4490 = fadd fast float %4487, %4164
  %4491 = fadd fast float %4486, %4165
  %4492 = icmp ne i32 %4388, 0
  %4493 = select i1 %4492, float 1.000000e+00, float 0.000000e+00
  %4494 = fmul fast float %4379, %4493
  %4495 = fsub fast float %4433, %4170
  %4496 = fsub fast float %4434, %4171
  %4497 = fsub fast float %4435, %4172
  %4498 = fmul fast float %4495, %4494
  %4499 = fmul fast float %4496, %4494
  %4500 = fmul fast float %4497, %4494
  %4501 = fadd fast float %4498, %4170
  %4502 = fadd fast float %4499, %4171
  %4503 = fadd fast float %4500, %4172
  %4504 = fsub fast float %4406, %4169
  %4505 = fmul fast float %4504, %4494
  %4506 = fadd fast float %4505, %4169
  %4507 = fmul fast float %4494, %4156
  %4508 = fsub fast float %4156, %4507
  %4509 = fmul fast float %4494, %4155
  %4510 = fsub fast float %4155, %4509
  %4511 = bitcast float %4224 to i32
  %4512 = lshr i32 %4511, 16
  %4513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4512)  ; LegacyF16ToF32(value)
  %4514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4515 = extractvalue %dx.types.ResRet.i32 %4514, 0
  %4516 = and i32 %4515, 1
  %4517 = icmp eq i32 %4516, 0
  br i1 %4517, label %4518, label %4543

; <label>:4518                                    ; preds = %4482
  %4519 = fadd fast float %4406, 0xBFB99999A0000000
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = fmul fast float %4520, 0x3FF1C71C80000000
  %4522 = fsub fast float 1.000000e+00, %4521
  %4523 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4524 = fmul fast float %4523, %4433
  %4525 = fmul fast float %4523, %4434
  %4526 = fmul fast float %4523, %4435
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4529 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4530 = call float @dx.op.binary.f32(i32 35, float %4528, float %4529)  ; FMax(a,b)
  %4531 = call float @dx.op.binary.f32(i32 35, float %4527, float %4530)  ; FMax(a,b)
  %4532 = fcmp fast ogt float %4531, 0.000000e+00
  %4533 = bitcast float %4531 to i32
  %4534 = sub nsw i32 2129859010, %4533
  %4535 = bitcast i32 %4534 to float
  %4536 = select i1 %4532, float %4535, float 0.000000e+00
  %4537 = fmul fast float %4527, %4513
  %4538 = fmul fast float %4528, %4513
  %4539 = fmul fast float %4529, %4513
  %4540 = fmul fast float %4537, %4536
  %4541 = fmul fast float %4538, %4536
  %4542 = fmul fast float %4539, %4536
  br label %4543

; <label>:4543                                    ; preds = %4518, %4482
  %4544 = phi float [ %4513, %4482 ], [ %4540, %4518 ]
  %4545 = phi float [ %4513, %4482 ], [ %4541, %4518 ]
  %4546 = phi float [ %4513, %4482 ], [ %4542, %4518 ]
  %4547 = fsub fast float %4544, %4157
  %4548 = fsub fast float %4545, %4158
  %4549 = fsub fast float %4546, %4159
  %4550 = fmul fast float %4547, %4494
  %4551 = fmul fast float %4548, %4494
  %4552 = fmul fast float %4549, %4494
  %4553 = fadd fast float %4550, %4157
  %4554 = fadd fast float %4551, %4158
  %4555 = fadd fast float %4552, %4159
  %4556 = fadd fast float %4379, %4168
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4558 = fsub fast float %4426, %4167
  %4559 = fmul fast float %4558, %4475
  %4560 = fadd fast float %4559, %4167
  %4561 = fsub fast float %4412, %4166
  %4562 = fmul fast float %4561, %4475
  %4563 = fadd fast float %4562, %4166
  %4564 = call float @dx.op.dot3.f32(i32 55, float %4433, float %4434, float %4435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.CBufRet.f32 %4565, 1
  %4568 = fmul fast float %4567, %4564
  %4569 = fadd fast float %4568, %4566
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = bitcast float %4218 to i32
  %4572 = and i32 %4571, 65535
  %4573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4572)  ; LegacyF16ToF32(value)
  %4574 = lshr i32 %4571, 16
  %4575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4574)  ; LegacyF16ToF32(value)
  %4576 = fcmp fast oge float %4573, 0.000000e+00
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 0
  %4579 = select i1 %4576, float %4573, float %4578
  %4580 = fadd fast float %4579, %4575
  %4581 = fsub fast float %4570, %4154
  %4582 = fmul fast float %4581, %4379
  %4583 = fadd fast float %4582, %4154
  %4584 = fmul fast float %4580, %4379
  %4585 = call float @dx.op.binary.f32(i32 35, float %4153, float %4584)  ; FMax(a,b)
  %4586 = and i32 %4230, 16
  %4587 = icmp eq i32 %4586, 0
  br i1 %4587, label %4609, label %4588

; <label>:4588                                    ; preds = %4543
  %4589 = add i32 %4221, 0
  %4590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4589, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4591 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4590, %dx.types.Handle %4392, float %4320, float %4323, float undef, float undef, i32 0, i32 0, i32 undef, float %4325, float %4327, float undef, float %4329, float %4331, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.f32 %4591, 2
  %4595 = and i32 %4511, 65535
  %4596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4595)  ; LegacyF16ToF32(value)
  %4597 = fmul fast float %4592, %4215
  %4598 = fmul fast float %4593, %4216
  %4599 = fmul fast float %4594, %4217
  %4600 = and i32 %4230, 16384
  %4601 = icmp ne i32 %4600, 0
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 0
  %4604 = select i1 %4601, float %4603, float 1.000000e+00
  %4605 = fmul fast float %4604, %4596
  %4606 = fmul fast float %4597, %4605
  %4607 = fmul fast float %4598, %4605
  %4608 = fmul fast float %4599, %4605
  br label %4609

; <label>:4609                                    ; preds = %4588, %4543
  %4610 = phi float [ %4606, %4588 ], [ 0.000000e+00, %4543 ]
  %4611 = phi float [ %4607, %4588 ], [ 0.000000e+00, %4543 ]
  %4612 = phi float [ %4608, %4588 ], [ 0.000000e+00, %4543 ]
  %4613 = fsub fast float %4610, %4160
  %4614 = fsub fast float %4611, %4161
  %4615 = fsub fast float %4612, %4162
  %4616 = fmul fast float %4613, %4379
  %4617 = fmul fast float %4614, %4379
  %4618 = fmul fast float %4615, %4379
  %4619 = fadd fast float %4616, %4160
  %4620 = fadd fast float %4617, %4161
  %4621 = fadd fast float %4618, %4162
  br label %4279

; <label>:4622                                    ; preds = %4279
  br label %4623

; <label>:4623                                    ; preds = %4622, %4096
  %4624 = phi float [ 0.000000e+00, %4096 ], [ %4280, %4622 ]
  %4625 = phi float [ %4065, %4096 ], [ %4281, %4622 ]
  %4626 = phi float [ %4063, %4096 ], [ %4282, %4622 ]
  %4627 = phi float [ 0.000000e+00, %4096 ], [ %4283, %4622 ]
  %4628 = phi float [ 0.000000e+00, %4096 ], [ %4284, %4622 ]
  %4629 = phi float [ %4056, %4096 ], [ %4285, %4622 ]
  %4630 = phi float [ %4057, %4096 ], [ %4286, %4622 ]
  %4631 = phi float [ %4058, %4096 ], [ %4287, %4622 ]
  %4632 = phi float [ %4050, %4096 ], [ %4288, %4622 ]
  %4633 = phi float [ %4051, %4096 ], [ %4289, %4622 ]
  %4634 = phi float [ %4052, %4096 ], [ %4290, %4622 ]
  %4635 = phi float [ %4091, %4096 ], [ %4291, %4622 ]
  %4636 = phi float [ %4092, %4096 ], [ %4292, %4622 ]
  %4637 = phi float [ %4093, %4096 ], [ %4293, %4622 ]
  %4638 = phi float [ %4061, %4096 ], [ %4294, %4622 ]
  %4639 = phi float [ %4060, %4096 ], [ %4295, %4622 ]
  %4640 = phi float [ 0.000000e+00, %4096 ], [ %4296, %4622 ]
  %4641 = phi float [ %4059, %4096 ], [ %4297, %4622 ]
  %4642 = phi float [ %4053, %4096 ], [ %4298, %4622 ]
  %4643 = phi float [ %4054, %4096 ], [ %4299, %4622 ]
  %4644 = phi float [ %4055, %4096 ], [ %4300, %4622 ]
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float %4635, float %4636, float %4637)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.unary.f32(i32 25, float %4645)  ; Rsqrt(value)
  %4647 = fmul fast float %4646, %4635
  %4648 = fmul fast float %4646, %4636
  %4649 = fmul fast float %4646, %4637
  %4650 = fadd fast float %4640, %1224
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %4647, float %4648, float %4649)  ; Dot3(ax,ay,az,bx,by,bz)
  %4653 = call float @dx.op.unary.f32(i32 25, float %4652)  ; Rsqrt(value)
  %4654 = fmul fast float %4653, %4647
  %4655 = fmul fast float %4653, %4648
  %4656 = fmul fast float %4653, %4649
  br label %4657

; <label>:4657                                    ; preds = %4623, %4047
  %4658 = phi float [ %4654, %4623 ], [ %4091, %4047 ]
  %4659 = phi float [ %4655, %4623 ], [ %4092, %4047 ]
  %4660 = phi float [ %4656, %4623 ], [ %4093, %4047 ]
  %4661 = phi float [ %4632, %4623 ], [ %4050, %4047 ]
  %4662 = phi float [ %4633, %4623 ], [ %4051, %4047 ]
  %4663 = phi float [ %4634, %4623 ], [ %4052, %4047 ]
  %4664 = phi float [ %4642, %4623 ], [ %4053, %4047 ]
  %4665 = phi float [ %4643, %4623 ], [ %4054, %4047 ]
  %4666 = phi float [ %4644, %4623 ], [ %4055, %4047 ]
  %4667 = phi float [ %4629, %4623 ], [ %4056, %4047 ]
  %4668 = phi float [ %4630, %4623 ], [ %4057, %4047 ]
  %4669 = phi float [ %4631, %4623 ], [ %4058, %4047 ]
  %4670 = phi float [ %4641, %4623 ], [ %4059, %4047 ]
  %4671 = phi float [ %4651, %4623 ], [ %1224, %4047 ]
  %4672 = phi float [ %4639, %4623 ], [ %4060, %4047 ]
  %4673 = phi float [ %4638, %4623 ], [ %4061, %4047 ]
  %4674 = phi float [ %4628, %4623 ], [ 0.000000e+00, %4047 ]
  %4675 = phi float [ %4627, %4623 ], [ 0.000000e+00, %4047 ]
  %4676 = phi float [ %4624, %4623 ], [ 0.000000e+00, %4047 ]
  %4677 = phi float [ %4625, %4623 ], [ %4065, %4047 ]
  %4678 = phi float [ %4626, %4623 ], [ %4063, %4047 ]
  %4679 = add i32 %60, 392
  %4680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4679, i32 undef)  ; BufferLoad(srv,index,wot)
  %4681 = extractvalue %dx.types.ResRet.i32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.i32 %4680, 1
  %4683 = extractvalue %dx.types.ResRet.i32 %4680, 2
  %4684 = extractvalue %dx.types.ResRet.i32 %4680, 3
  %4685 = bitcast i32 %4681 to float
  %4686 = bitcast i32 %4682 to float
  %4687 = bitcast i32 %4683 to float
  %4688 = bitcast i32 %4684 to float
  %4689 = fsub fast float %4664, %4685
  %4690 = fsub fast float %4665, %4686
  %4691 = fsub fast float %4666, %4687
  %4692 = fmul fast float %4689, %198
  %4693 = fmul fast float %4690, %198
  %4694 = fmul fast float %4691, %198
  %4695 = fadd fast float %4692, %4685
  %4696 = fadd fast float %4693, %4686
  %4697 = fadd fast float %4694, %4687
  %4698 = fsub fast float %4671, %4688
  %4699 = fmul fast float %4698, %198
  %4700 = fadd fast float %4699, %4688
  %4701 = fadd fast float %4670, 0xBFB99999A0000000
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = fmul fast float %4702, 0x3FF1C71C80000000
  %4704 = call float @dx.op.binary.f32(i32 36, float %4670, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4705 = fsub fast float 1.000000e+00, %4703
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = fmul fast float %4695, %4706
  %4708 = fmul fast float %4696, %4706
  %4709 = fmul fast float %4697, %4706
  %4710 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4711 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4713 = fmul fast float %4695, %4703
  %4714 = fmul fast float %4696, %4703
  %4715 = fmul fast float %4697, %4703
  %4716 = fadd fast float %4713, %4704
  %4717 = fadd fast float %4714, %4704
  %4718 = fadd fast float %4715, %4704
  %4719 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4721 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4722 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4724 = extractvalue %dx.types.ResRet.i32 %4723, 0
  %4725 = and i32 %4724, 1
  %4726 = icmp eq i32 %4725, 0
  br i1 %4726, label %4741, label %4727

; <label>:4727                                    ; preds = %4657
  %4728 = call float @dx.op.binary.f32(i32 35, float %4711, float %4712)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 35, float %4710, float %4728)  ; FMax(a,b)
  %4730 = fcmp fast ogt float %4729, 0.000000e+00
  %4731 = bitcast float %4729 to i32
  %4732 = sub nsw i32 2129859010, %4731
  %4733 = bitcast i32 %4732 to float
  %4734 = select i1 %4730, float %4733, float 0.000000e+00
  %4735 = fmul fast float %4710, %4667
  %4736 = fmul fast float %4711, %4668
  %4737 = fmul fast float %4712, %4669
  %4738 = fmul fast float %4735, %4734
  %4739 = fmul fast float %4736, %4734
  %4740 = fmul fast float %4737, %4734
  br label %4741

; <label>:4741                                    ; preds = %4727, %4657
  %4742 = phi float [ %4738, %4727 ], [ %4667, %4657 ]
  %4743 = phi float [ %4739, %4727 ], [ %4668, %4657 ]
  %4744 = phi float [ %4740, %4727 ], [ %4669, %4657 ]
  %4745 = fadd fast float %4710, 0xBFD51EB860000000
  %4746 = fadd fast float %4711, 0xBFD51EB860000000
  %4747 = fadd fast float %4712, 0xBFD51EB860000000
  %4748 = fmul fast float %4745, %4745
  %4749 = fmul fast float %4746, %4746
  %4750 = fmul fast float %4747, %4747
  %4751 = fmul fast float %4748, %4748
  %4752 = fmul fast float %4751, 1.000000e+02
  %4753 = fmul fast float %4749, %4749
  %4754 = fmul fast float %4753, 1.000000e+02
  %4755 = fmul fast float %4750, %4750
  %4756 = fmul fast float %4755, 1.000000e+02
  %4757 = fadd fast float %4752, 3.500000e+00
  %4758 = fadd fast float %4754, 3.500000e+00
  %4759 = fadd fast float %4756, 3.500000e+00
  %4760 = call float @dx.op.binary.f32(i32 35, float %4742, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4761 = call float @dx.op.binary.f32(i32 35, float %4743, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4744, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4763 = fdiv fast float %4757, %4760
  %4764 = fdiv fast float %4758, %4761
  %4765 = fdiv fast float %4759, %4762
  %4766 = fmul fast float %4062, 0xBFF7154760000000
  %4767 = fmul fast float %4766, %4763
  %4768 = call float @dx.op.unary.f32(i32 21, float %4767)  ; Exp(value)
  %4769 = fmul fast float %4768, 2.500000e-01
  %4770 = fmul fast float %4062, 0xBFDEC709E0000000
  %4771 = fmul fast float %4770, %4763
  %4772 = call float @dx.op.unary.f32(i32 21, float %4771)  ; Exp(value)
  %4773 = fmul fast float %4772, 7.500000e-01
  %4774 = fmul fast float %4766, %4764
  %4775 = call float @dx.op.unary.f32(i32 21, float %4774)  ; Exp(value)
  %4776 = fmul fast float %4775, 2.500000e-01
  %4777 = fmul fast float %4770, %4764
  %4778 = call float @dx.op.unary.f32(i32 21, float %4777)  ; Exp(value)
  %4779 = fmul fast float %4778, 7.500000e-01
  %4780 = fmul fast float %4766, %4765
  %4781 = call float @dx.op.unary.f32(i32 21, float %4780)  ; Exp(value)
  %4782 = fmul fast float %4781, 2.500000e-01
  %4783 = fmul fast float %4770, %4765
  %4784 = call float @dx.op.unary.f32(i32 21, float %4783)  ; Exp(value)
  %4785 = fmul fast float %4784, 7.500000e-01
  %4786 = fadd fast float %4769, %4773
  %4787 = fadd fast float %4776, %4779
  %4788 = fadd fast float %4782, %4785
  %4789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.i32 %4789, 3
  %4791 = and i32 %4790, 8
  %4792 = icmp ne i32 %4791, 0
  %4793 = call float @dx.op.binary.f32(i32 35, float %4710, float %4695)  ; FMax(a,b)
  %4794 = call float @dx.op.binary.f32(i32 35, float %4711, float %4695)  ; FMax(a,b)
  %4795 = call float @dx.op.binary.f32(i32 35, float %4712, float %4695)  ; FMax(a,b)
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4710, float %4711, float %4712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = select i1 %258, float %4695, float %4710
  %4798 = select i1 %258, float %4796, float %4711
  %4799 = select i1 %258, float 1.000000e+00, float %4712
  %4800 = select i1 %4792, float %4793, float %4797
  %4801 = select i1 %4792, float %4794, float %4798
  %4802 = select i1 %4792, float %4795, float %4799
  %4803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.CBufRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.CBufRet.f32 %4803, 2
  %4807 = fadd fast float %4804, %164
  %4808 = fadd fast float %4805, %165
  %4809 = fadd fast float %4806, %166
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = extractvalue %dx.types.CBufRet.f32 %4810, 1
  %4813 = fsub fast float %4807, %4811
  %4814 = fsub fast float %4808, %4812
  %4815 = fmul fast float %4813, %4813
  %4816 = fmul fast float %4814, %4814
  %4817 = fadd fast float %4815, %4816
  %4818 = call float @dx.op.unary.f32(i32 24, float %4817)  ; Sqrt(value)
  %4819 = extractvalue %dx.types.CBufRet.f32 %4810, 2
  %4820 = fcmp fast olt float %4818, %4819
  br i1 %4820, label %4821, label %4888

; <label>:4821                                    ; preds = %4741
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.f32 %4824, 0
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4829 = extractvalue %dx.types.CBufRet.f32 %4824, 1
  %4830 = extractvalue %dx.types.CBufRet.f32 %4826, 1
  %4831 = extractvalue %dx.types.CBufRet.f32 %4822, 3
  %4832 = extractvalue %dx.types.CBufRet.f32 %4824, 3
  %4833 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4834 = fadd fast float %4831, %4807
  %4835 = fadd fast float %4832, %4808
  %4836 = fadd fast float %4833, %4809
  %4837 = fmul fast float %4834, %4823
  %4838 = call float @dx.op.tertiary.f32(i32 46, float %4835, float %4825, float %4837)  ; FMad(a,b,c)
  %4839 = call float @dx.op.tertiary.f32(i32 46, float %4836, float %4827, float %4838)  ; FMad(a,b,c)
  %4840 = fmul fast float %4834, %4828
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %4835, float %4829, float %4840)  ; FMad(a,b,c)
  %4842 = call float @dx.op.tertiary.f32(i32 46, float %4836, float %4830, float %4841)  ; FMad(a,b,c)
  %4843 = fsub fast float %4839, %4831
  %4844 = fsub fast float %4842, %4832
  %4845 = fsub fast float %4843, %4811
  %4846 = fadd fast float %4845, %4819
  %4847 = fsub fast float %4844, %4812
  %4848 = fadd fast float %4847, %4819
  %4849 = extractvalue %dx.types.CBufRet.f32 %4810, 3
  %4850 = fmul fast float %4846, %4849
  %4851 = fmul fast float %4848, %4849
  %4852 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4853 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4854 = fsub fast float 1.000000e+00, %4852
  %4855 = fsub fast float 1.000000e+00, %4853
  %4856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4854, float %4855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4857 = extractvalue %dx.types.ResRet.f32 %4856, 0
  %4858 = fcmp fast ugt float %4857, 0.000000e+00
  br i1 %4858, label %4859, label %5162

; <label>:4859                                    ; preds = %4821
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 2
  %4862 = fmul fast float %4861, %4857
  %4863 = extractvalue %dx.types.CBufRet.f32 %4860, 3
  %4864 = fadd fast float %4863, %4862
  %4865 = extractvalue %dx.types.CBufRet.f32 %4826, 2
  %4866 = fadd fast float %4864, %4833
  %4867 = fmul fast float %4839, %4827
  %4868 = call float @dx.op.tertiary.f32(i32 46, float %4842, float %4830, float %4867)  ; FMad(a,b,c)
  %4869 = call float @dx.op.tertiary.f32(i32 46, float %4866, float %4865, float %4868)  ; FMad(a,b,c)
  %4870 = fsub fast float %4869, %4833
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4873 = fsub fast float %4870, %4872
  %4874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4854, float %4855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4875 = extractvalue %dx.types.ResRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.ResRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.ResRet.f32 %4874, 2
  %4878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4854, float %4855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.f32 %4878, 2
  %4882 = fadd fast float %4879, %4875
  %4883 = fmul fast float %4882, 0x3F847AE140000000
  %4884 = fadd fast float %4880, %4876
  %4885 = fmul fast float %4884, 0x3F847AE140000000
  %4886 = fadd fast float %4881, %4877
  %4887 = fmul fast float %4886, 0x3F847AE140000000
  br label %5162

; <label>:4888                                    ; preds = %4741
  %4889 = and i32 %234, 1
  %4890 = icmp eq i32 %4889, 0
  br i1 %4890, label %5162, label %4891

; <label>:4891                                    ; preds = %4888
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 0
  %4894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4895 = extractvalue %dx.types.CBufRet.f32 %4894, 0
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.CBufRet.f32 %4892, 1
  %4899 = extractvalue %dx.types.CBufRet.f32 %4894, 1
  %4900 = extractvalue %dx.types.CBufRet.f32 %4896, 1
  %4901 = extractvalue %dx.types.CBufRet.f32 %4892, 3
  %4902 = extractvalue %dx.types.CBufRet.f32 %4894, 3
  %4903 = extractvalue %dx.types.CBufRet.f32 %4896, 3
  %4904 = fadd fast float %4901, %4807
  %4905 = fadd fast float %4902, %4808
  %4906 = fadd fast float %4903, %4809
  %4907 = fmul fast float %4904, %4893
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4895, float %4907)  ; FMad(a,b,c)
  %4909 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %4897, float %4908)  ; FMad(a,b,c)
  %4910 = fmul fast float %4904, %4898
  %4911 = call float @dx.op.tertiary.f32(i32 46, float %4905, float %4899, float %4910)  ; FMad(a,b,c)
  %4912 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %4900, float %4911)  ; FMad(a,b,c)
  %4913 = fsub fast float %4909, %4901
  %4914 = fsub fast float %4912, %4902
  %4915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.f32 %4915, 0
  %4917 = extractvalue %dx.types.CBufRet.f32 %4915, 1
  %4918 = extractvalue %dx.types.CBufRet.f32 %4915, 2
  %4919 = extractvalue %dx.types.CBufRet.f32 %4915, 3
  %4920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4921 = extractvalue %dx.types.CBufRet.f32 %4920, 3
  %4922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.i32 %4922, 0
  %4924 = extractvalue %dx.types.CBufRet.i32 %4922, 1
  %4925 = udiv i32 %4924, %4923
  %4926 = fsub fast float %4913, %4916
  %4927 = fsub fast float %4914, %4917
  %4928 = call float @dx.op.binary.f32(i32 35, float %4926, float 0.000000e+00)  ; FMax(a,b)
  %4929 = call float @dx.op.binary.f32(i32 35, float %4927, float 0.000000e+00)  ; FMax(a,b)
  %4930 = call float @dx.op.binary.f32(i32 36, float %4928, float %4918)  ; FMin(a,b)
  %4931 = call float @dx.op.binary.f32(i32 36, float %4929, float %4919)  ; FMin(a,b)
  %4932 = add i32 %4923, -1
  %4933 = add i32 %4925, -1
  %4934 = fmul fast float %4930, %4921
  %4935 = fmul fast float %4931, %4921
  %4936 = fptoui float %4934 to i32
  %4937 = fptoui float %4935 to i32
  %4938 = call i32 @dx.op.binary.i32(i32 40, i32 %4936, i32 %4932)  ; UMin(a,b)
  %4939 = call i32 @dx.op.binary.i32(i32 40, i32 %4937, i32 %4933)  ; UMin(a,b)
  %4940 = mul i32 %4939, %4923
  %4941 = add i32 %4940, %4938
  %4942 = shl i32 %4941, 2
  %4943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4942, i32 undef)  ; BufferLoad(srv,index,wot)
  %4944 = extractvalue %dx.types.ResRet.i32 %4943, 0
  %4945 = icmp eq i32 %4944, -1
  br i1 %4945, label %5162, label %4946

; <label>:4946                                    ; preds = %4891
  %4947 = mul i32 %4944, 148
  %4948 = add i32 %4947, 4
  %4949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4948, i32 undef)  ; BufferLoad(srv,index,wot)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = add i32 %4947, 8
  %4952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4951, i32 undef)  ; BufferLoad(srv,index,wot)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 0
  %4954 = add i32 %4947, 36
  %4955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4954, i32 undef)  ; BufferLoad(srv,index,wot)
  %4956 = extractvalue %dx.types.ResRet.f32 %4955, 0
  %4957 = add i32 %4947, 60
  %4958 = add i32 %4947, 92
  %4959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4958, i32 undef)  ; BufferLoad(srv,index,wot)
  %4960 = extractvalue %dx.types.ResRet.i32 %4959, 0
  %4961 = add i32 %4947, 116
  %4962 = fsub fast float %4913, %4950
  %4963 = fsub fast float %4914, %4953
  %4964 = fmul fast float %4921, %4962
  %4965 = fmul fast float %4921, %4963
  %4966 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4967 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4968 = fsub fast float 1.000000e+00, %4967
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 2
  %4971 = call float @dx.op.unary.f32(i32 83, float %4966)  ; DerivCoarseX(value)
  %4972 = call float @dx.op.unary.f32(i32 83, float %4968)  ; DerivCoarseX(value)
  %4973 = call float @dx.op.unary.f32(i32 84, float %4966)  ; DerivCoarseY(value)
  %4974 = call float @dx.op.unary.f32(i32 84, float %4968)  ; DerivCoarseY(value)
  %4975 = fmul fast float %4971, %4970
  %4976 = fmul fast float %4972, %4970
  %4977 = fmul fast float %4973, %4970
  %4978 = fmul fast float %4974, %4970
  %4979 = call float @dx.op.dot2.f32(i32 54, float %4977, float %4978, float %4977, float %4978)  ; Dot2(ax,ay,bx,by)
  %4980 = call float @dx.op.dot2.f32(i32 54, float %4975, float %4976, float %4975, float %4976)  ; Dot2(ax,ay,bx,by)
  %4981 = call float @dx.op.binary.f32(i32 35, float %4980, float %4979)  ; FMax(a,b)
  %4982 = call float @dx.op.unary.f32(i32 23, float %4981)  ; Log(value)
  %4983 = fmul fast float %4982, 5.000000e-01
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %4986 = fadd fast float %4985, %4983
  %4987 = call float @dx.op.binary.f32(i32 35, float %4986, float 0.000000e+00)  ; FMax(a,b)
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4990 = fadd fast float %4989, %4987
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 3
  %4993 = fadd fast float %4990, %4992
  %4994 = add i32 %4960, 0
  %4995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4994, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4996 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4995, i32 0)  ; GetDimensions(handle,mipLevel)
  %4997 = extractvalue %dx.types.Dimensions %4996, 0
  %4998 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4997)  ; FirstbitLo(value)
  %4999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.i32 %4999, 1
  %5001 = sub nsw i32 %5000, %4998
  %5002 = sitofp i32 %5001 to float
  %5003 = fsub fast float %4993, %5002
  %5004 = call float @dx.op.binary.f32(i32 35, float %5003, float 0.000000e+00)  ; FMax(a,b)
  %5005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4995, %dx.types.Handle %52, float %4966, float %4968, float %4956, float undef, i32 0, i32 0, i32 undef, float %5004)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  %5007 = fcmp ule float %5006, 0x3FE0101020000000
  %5008 = extractvalue %dx.types.CBufRet.i32 %4999, 0
  %5009 = and i32 %5008, 128
  %5010 = icmp ne i32 %5009, 0
  %5011 = and i1 %5007, %5010
  br i1 %5011, label %5162, label %5012

; <label>:5012                                    ; preds = %4946
  %5013 = add i32 %4947, 20
  %5014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5013, i32 undef)  ; BufferLoad(srv,index,wot)
  %5015 = extractvalue %dx.types.ResRet.f32 %5014, 0
  %5016 = add i32 %4947, 24
  %5017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5016, i32 undef)  ; BufferLoad(srv,index,wot)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 0
  %5019 = add i32 %4947, 40
  %5020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5019, i32 undef)  ; BufferLoad(srv,index,wot)
  %5021 = extractvalue %dx.types.ResRet.f32 %5020, 0
  %5022 = add i32 %4947, 96
  %5023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5022, i32 undef)  ; BufferLoad(srv,index,wot)
  %5024 = extractvalue %dx.types.ResRet.i32 %5023, 0
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 2
  %5027 = fmul fast float %5026, %4966
  %5028 = fmul fast float %5026, %4968
  %5029 = extractvalue %dx.types.CBufRet.f32 %5025, 3
  %5030 = fadd fast float %5027, %5029
  %5031 = fadd fast float %5028, %5029
  %5032 = add i32 %5024, 0
  %5033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5032, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5034 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5033, i32 0)  ; GetDimensions(handle,mipLevel)
  %5035 = extractvalue %dx.types.Dimensions %5034, 0
  %5036 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5035)  ; FirstbitLo(value)
  %5037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5038 = extractvalue %dx.types.CBufRet.i32 %5037, 1
  %5039 = sub nsw i32 %5038, %5036
  %5040 = sitofp i32 %5039 to float
  %5041 = fsub fast float %4990, %5040
  %5042 = call float @dx.op.binary.f32(i32 35, float %5041, float 0.000000e+00)  ; FMax(a,b)
  %5043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5033, %dx.types.Handle %52, float %5030, float %5031, float %5021, float undef, i32 0, i32 0, i32 undef, float %5042)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5044 = extractvalue %dx.types.ResRet.f32 %5043, 0
  %5045 = fmul fast float %5044, %5015
  %5046 = fadd fast float %5045, %5018
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.CBufRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.CBufRet.f32 %5047, 2
  %5051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5051, 3
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 3
  %5055 = extractvalue %dx.types.CBufRet.f32 %5047, 3
  %5056 = fadd fast float %5052, %4913
  %5057 = fadd fast float %5054, %4914
  %5058 = fadd fast float %5046, %5055
  %5059 = fmul fast float %5056, %5048
  %5060 = call float @dx.op.tertiary.f32(i32 46, float %5057, float %5049, float %5059)  ; FMad(a,b,c)
  %5061 = call float @dx.op.tertiary.f32(i32 46, float %5058, float %5050, float %5060)  ; FMad(a,b,c)
  %5062 = fsub fast float %5061, %5055
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 2
  %5065 = fsub fast float %5062, %5064
  %5066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5067 = extractvalue %dx.types.CBufRet.i32 %5066, 0
  %5068 = call i32 @dx.op.binary.i32(i32 40, i32 %4944, i32 %5067)  ; UMin(a,b)
  %5069 = mul i32 %5068, 36
  %5070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5069, i32 undef)  ; BufferLoad(srv,index,wot)
  %5071 = extractvalue %dx.types.ResRet.i32 %5070, 0
  %5072 = add i32 %5069, 4
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 0
  %5075 = fmul fast float %5074, %4966
  %5076 = fmul fast float %5074, %4968
  %5077 = extractvalue %dx.types.CBufRet.f32 %5073, 1
  %5078 = fadd fast float %5075, %5077
  %5079 = fadd fast float %5076, %5077
  %5080 = icmp eq i32 %5071, 0
  br i1 %5080, label %5149, label %5081

; <label>:5081                                    ; preds = %5012
  br label %5082

; <label>:5082                                    ; preds = %5139, %5081
  %5083 = phi float [ %5140, %5139 ], [ 0.000000e+00, %5081 ]
  %5084 = phi float [ %5141, %5139 ], [ 0.000000e+00, %5081 ]
  %5085 = phi float [ %5142, %5139 ], [ 0.000000e+00, %5081 ]
  %5086 = phi float [ %5143, %5139 ], [ 0.000000e+00, %5081 ]
  %5087 = phi float [ %5144, %5139 ], [ 0.000000e+00, %5081 ]
  %5088 = phi float [ %5145, %5139 ], [ 0.000000e+00, %5081 ]
  %5089 = phi i32 [ %5146, %5139 ], [ 0, %5081 ]
  %5090 = shl i32 %5089, 2
  %5091 = add i32 %4957, %5090
  %5092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5091, i32 undef)  ; BufferLoad(srv,index,wot)
  %5093 = extractvalue %dx.types.ResRet.f32 %5092, 0
  %5094 = add i32 %4961, %5090
  %5095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5094, i32 undef)  ; BufferLoad(srv,index,wot)
  %5096 = extractvalue %dx.types.ResRet.i32 %5095, 0
  %5097 = add i32 %5096, 0
  %5098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5097, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5099 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5098, i32 0)  ; GetDimensions(handle,mipLevel)
  %5100 = extractvalue %dx.types.Dimensions %5099, 0
  %5101 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5100)  ; FirstbitLo(value)
  %5102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5103 = extractvalue %dx.types.CBufRet.i32 %5102, 1
  %5104 = sub nsw i32 %5103, %5101
  %5105 = sitofp i32 %5104 to float
  %5106 = fsub fast float %4990, %5105
  %5107 = call float @dx.op.binary.f32(i32 35, float %5106, float 0.000000e+00)  ; FMax(a,b)
  %5108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5098, %dx.types.Handle %52, float %5078, float %5079, float %5093, float undef, i32 0, i32 0, i32 undef, float %5107)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  %5110 = fcmp fast ogt float %5109, 0.000000e+00
  br i1 %5110, label %5111, label %5139

; <label>:5111                                    ; preds = %5082
  %5112 = add i32 %5072, %5090
  %5113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5112, i32 undef)  ; BufferLoad(srv,index,wot)
  %5114 = extractvalue %dx.types.ResRet.i32 %5113, 0
  %5115 = and i32 %5114, 32767
  %5116 = mul nuw nsw i32 %5115, 928
  %5117 = add nuw nsw i32 %5116, 48
  %5118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5117, i32 undef)  ; BufferLoad(srv,index,wot)
  %5119 = extractvalue %dx.types.ResRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.ResRet.f32 %5118, 1
  %5121 = extractvalue %dx.types.ResRet.f32 %5118, 2
  %5122 = add nuw nsw i32 %5116, 60
  %5123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5122, i32 undef)  ; BufferLoad(srv,index,wot)
  %5124 = extractvalue %dx.types.ResRet.f32 %5123, 0
  %5125 = extractvalue %dx.types.ResRet.f32 %5123, 1
  %5126 = extractvalue %dx.types.ResRet.f32 %5123, 2
  %5127 = fmul fast float %5119, %5109
  %5128 = fmul fast float %5120, %5109
  %5129 = fmul fast float %5121, %5109
  %5130 = fadd fast float %5127, %5083
  %5131 = fadd fast float %5128, %5084
  %5132 = fadd fast float %5129, %5085
  %5133 = fmul fast float %5124, %5109
  %5134 = fmul fast float %5125, %5109
  %5135 = fmul fast float %5126, %5109
  %5136 = fadd fast float %5133, %5086
  %5137 = fadd fast float %5134, %5087
  %5138 = fadd fast float %5135, %5088
  br label %5139

; <label>:5139                                    ; preds = %5111, %5082
  %5140 = phi float [ %5130, %5111 ], [ %5083, %5082 ]
  %5141 = phi float [ %5131, %5111 ], [ %5084, %5082 ]
  %5142 = phi float [ %5132, %5111 ], [ %5085, %5082 ]
  %5143 = phi float [ %5136, %5111 ], [ %5086, %5082 ]
  %5144 = phi float [ %5137, %5111 ], [ %5087, %5082 ]
  %5145 = phi float [ %5138, %5111 ], [ %5088, %5082 ]
  %5146 = add nuw i32 %5089, 1
  %5147 = icmp eq i32 %5146, %5071
  br i1 %5147, label %5148, label %5082

; <label>:5148                                    ; preds = %5139
  br label %5149

; <label>:5149                                    ; preds = %5148, %5012
  %5150 = phi float [ 0.000000e+00, %5012 ], [ %5140, %5148 ]
  %5151 = phi float [ 0.000000e+00, %5012 ], [ %5141, %5148 ]
  %5152 = phi float [ 0.000000e+00, %5012 ], [ %5142, %5148 ]
  %5153 = phi float [ 0.000000e+00, %5012 ], [ %5143, %5148 ]
  %5154 = phi float [ 0.000000e+00, %5012 ], [ %5144, %5148 ]
  %5155 = phi float [ 0.000000e+00, %5012 ], [ %5145, %5148 ]
  %5156 = fadd fast float %5153, %5150
  %5157 = fmul fast float %5156, 0x3F847AE140000000
  %5158 = fadd fast float %5154, %5151
  %5159 = fmul fast float %5158, 0x3F847AE140000000
  %5160 = fadd fast float %5155, %5152
  %5161 = fmul fast float %5160, 0x3F847AE140000000
  br label %5162

; <label>:5162                                    ; preds = %5149, %4946, %4891, %4888, %4859, %4821
  %5163 = phi float [ %4873, %4859 ], [ -1.310720e+05, %4821 ], [ %5065, %5149 ], [ -1.310720e+05, %4891 ], [ -1.310720e+05, %4946 ], [ -1.310720e+05, %4888 ]
  %5164 = phi float [ %4883, %4859 ], [ 0.000000e+00, %4821 ], [ %5157, %5149 ], [ 0.000000e+00, %4891 ], [ 0.000000e+00, %4946 ], [ 0.000000e+00, %4888 ]
  %5165 = phi float [ %4885, %4859 ], [ 0.000000e+00, %4821 ], [ %5159, %5149 ], [ 0.000000e+00, %4891 ], [ 0.000000e+00, %4946 ], [ 0.000000e+00, %4888 ]
  %5166 = phi float [ %4887, %4859 ], [ 0.000000e+00, %4821 ], [ %5161, %5149 ], [ 0.000000e+00, %4891 ], [ 0.000000e+00, %4946 ], [ 0.000000e+00, %4888 ]
  %5167 = phi i1 [ true, %4859 ], [ false, %4821 ], [ true, %5149 ], [ false, %4891 ], [ false, %4946 ], [ false, %4888 ]
  %5168 = and i32 %234, 3
  %5169 = icmp eq i32 %5168, 1
  %5170 = select i1 %5169, float 1.000000e+00, float 0.000000e+00
  %5171 = fsub fast float %5163, %166
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = select i1 %5167, float %5172, float 1.000000e+00
  %5174 = fmul fast float %5173, %5170
  %5175 = icmp eq i32 %5168, 3
  %5176 = select i1 %5175, float 1.000000e+00, float %5174
  %5177 = call float @dx.op.binary.f32(i32 35, float %4676, float %5176)  ; FMax(a,b)
  %5178 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5179 = fcmp fast une float %5178, 0.000000e+00
  %5180 = fsub fast float -0.000000e+00, %184
  %5181 = fsub fast float -0.000000e+00, %185
  %5182 = fsub fast float -0.000000e+00, %186
  br i1 %5179, label %5183, label %5345

; <label>:5183                                    ; preds = %5162
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = fmul fast float %5178, 2.500000e+00
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = fmul fast float %5178, 0x4013FFFFE0000000
  %5188 = fadd fast float %5187, 0xBFFFFFFFE0000000
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5190 = fmul fast float %5178, 0x4004000020000000
  %5191 = fadd fast float %5190, 0xBFF8000040000000
  %5192 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5193 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5194 = fmul fast float %4701, 1.000000e+01
  %5195 = call float @dx.op.unary.f32(i32 7, float %5194)  ; Saturate(value)
  %5196 = fmul fast float %5195, 2.000000e+00
  %5197 = fsub fast float 3.000000e+00, %5196
  %5198 = fmul fast float %5195, %5195
  %5199 = fmul fast float %5198, %5197
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = fsub fast float 0x3FE3333340000000, %4722
  %5202 = fmul fast float %5201, 0x400AAAAAA0000000
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = fmul fast float %5200, %5203
  %5205 = fmul fast float %4800, 0x3FEA2B8620000000
  %5206 = fmul fast float %4801, 0x3FEA2B8620000000
  %5207 = fmul fast float %4802, 0x3FEA2B8620000000
  %5208 = fadd fast float %5205, 0x3FC81DFBA0000000
  %5209 = fmul fast float %5208, %4800
  %5210 = fadd fast float %5209, 0x3F910E6020000000
  %5211 = fadd fast float %5206, 0x3FC81DFBA0000000
  %5212 = fmul fast float %5211, %4801
  %5213 = fadd fast float %5212, 0x3F910E6020000000
  %5214 = fadd fast float %5207, 0x3FC81DFBA0000000
  %5215 = fmul fast float %5214, %4802
  %5216 = fadd fast float %5215, 0x3F910E6020000000
  %5217 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5218 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5219 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5220 = fsub fast float %5217, %4800
  %5221 = fsub fast float %5218, %4801
  %5222 = fsub fast float %5219, %4802
  %5223 = fmul fast float %5220, %5193
  %5224 = fmul fast float %5223, %5204
  %5225 = fmul fast float %5221, %5193
  %5226 = fmul fast float %5225, %5204
  %5227 = fmul fast float %5222, %5193
  %5228 = fmul fast float %5227, %5204
  %5229 = fadd fast float %5224, %4800
  %5230 = fadd fast float %5226, %4801
  %5231 = fadd fast float %5228, %4802
  %5232 = fmul fast float %4673, %4673
  %5233 = fmul fast float %5232, %5232
  %5234 = fadd fast float %5189, 1.000000e+00
  %5235 = fsub fast float %5234, %5204
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = fsub fast float 1.000000e+00, %5233
  %5240 = call float @dx.op.binary.f32(i32 36, float %5236, float %5239)  ; FMin(a,b)
  %5241 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5242 = call float @dx.op.binary.f32(i32 35, float %5240, float %5241)  ; FMax(a,b)
  %5243 = fadd fast float %5238, 0xBFE4CCCCC0000000
  %5244 = fmul fast float %5243, 0x4006DB6DA0000000
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = fmul fast float %5245, 2.000000e+00
  %5247 = fsub fast float 3.000000e+00, %5246
  %5248 = bitcast float %4719 to i32
  %5249 = ashr i32 %5248, 1
  %5250 = add nsw i32 %5249, 532487669
  %5251 = bitcast i32 %5250 to float
  %5252 = fsub fast float 1.000000e+00, %5251
  %5253 = bitcast float %5252 to i32
  %5254 = sub nsw i32 2129859010, %5253
  %5255 = bitcast i32 %5254 to float
  %5256 = fmul fast float %5255, 2.000000e+00
  %5257 = bitcast float %4720 to i32
  %5258 = ashr i32 %5257, 1
  %5259 = add nsw i32 %5258, 532487669
  %5260 = bitcast i32 %5259 to float
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = bitcast float %5261 to i32
  %5263 = sub nsw i32 2129859010, %5262
  %5264 = bitcast i32 %5263 to float
  %5265 = fmul fast float %5264, 2.000000e+00
  %5266 = bitcast float %4721 to i32
  %5267 = ashr i32 %5266, 1
  %5268 = add nsw i32 %5267, 532487669
  %5269 = bitcast i32 %5268 to float
  %5270 = fsub fast float 1.000000e+00, %5269
  %5271 = bitcast float %5270 to i32
  %5272 = sub nsw i32 2129859010, %5271
  %5273 = bitcast i32 %5272 to float
  %5274 = fmul fast float %5273, 2.000000e+00
  %5275 = fsub fast float 0x4002A9FBE0000000, %5256
  %5276 = fadd fast float %5256, 0x3FD54FDF00000000
  %5277 = bitcast float %5276 to i32
  %5278 = sub nsw i32 2129859010, %5277
  %5279 = bitcast i32 %5278 to float
  %5280 = fmul fast float %5279, %5275
  %5281 = fmul fast float %5280, %5280
  %5282 = fsub fast float 0x4002A9FBE0000000, %5265
  %5283 = fadd fast float %5265, 0x3FD54FDF00000000
  %5284 = bitcast float %5283 to i32
  %5285 = sub nsw i32 2129859010, %5284
  %5286 = bitcast i32 %5285 to float
  %5287 = fmul fast float %5286, %5282
  %5288 = fmul fast float %5287, %5287
  %5289 = fsub fast float 0x4002A9FBE0000000, %5274
  %5290 = fadd fast float %5274, 0x3FD54FDF00000000
  %5291 = bitcast float %5290 to i32
  %5292 = sub nsw i32 2129859010, %5291
  %5293 = bitcast i32 %5292 to float
  %5294 = fmul fast float %5293, %5289
  %5295 = fmul fast float %5294, %5294
  %5296 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5281)  ; FMax(a,b)
  %5297 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5288)  ; FMax(a,b)
  %5298 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5295)  ; FMax(a,b)
  %5299 = fsub fast float 1.000000e+00, %5184
  %5300 = fadd fast float %5299, %5200
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = fsub fast float 1.000000e+00, %5176
  %5303 = fmul fast float %5242, %5302
  %5304 = fmul fast float %5245, %5245
  %5305 = fmul fast float %5304, %5303
  %5306 = fmul fast float %5305, %5247
  %5307 = fmul fast float %5302, 0xBFE99999A0000000
  %5308 = fmul fast float %5307, %5193
  %5309 = fmul fast float %5308, %5204
  %5310 = fadd fast float %5309, 1.000000e+00
  %5311 = fadd fast float %4722, -1.000000e+00
  %5312 = fmul fast float %5310, %5311
  %5313 = fadd fast float %5312, 1.000000e+00
  %5314 = fsub fast float %5296, %4719
  %5315 = fsub fast float %5297, %4720
  %5316 = fsub fast float %5298, %4721
  %5317 = fmul fast float %5306, %5314
  %5318 = fmul fast float %5306, %5315
  %5319 = fmul fast float %5306, %5316
  %5320 = fadd fast float %5317, %4719
  %5321 = fadd fast float %5318, %4720
  %5322 = fadd fast float %5319, %4721
  %5323 = fsub fast float %116, %4658
  %5324 = fsub fast float %117, %4659
  %5325 = fsub fast float %118, %4660
  %5326 = fmul fast float %5306, %5323
  %5327 = fmul fast float %5306, %5324
  %5328 = fmul fast float %5306, %5325
  %5329 = fadd fast float %5326, %4658
  %5330 = fadd fast float %5327, %4659
  %5331 = fadd fast float %5328, %4660
  %5332 = fmul fast float %5306, %5301
  %5333 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = fmul fast float %5332, %5334
  %5336 = fadd fast float %5335, %5333
  %5337 = fsub fast float 1.000000e+00, %4673
  %5338 = fmul fast float %5306, %5337
  %5339 = fadd fast float %5338, %4673
  %5340 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float %5329, float %5330, float %5331)  ; Dot3(ax,ay,az,bx,by,bz)
  %5341 = call float @dx.op.unary.f32(i32 25, float %5340)  ; Rsqrt(value)
  %5342 = fmul fast float %5329, %5341
  %5343 = fmul fast float %5330, %5341
  %5344 = fmul fast float %5331, %5341
  br label %5345

; <label>:5345                                    ; preds = %5183, %5162
  %5346 = phi float [ %5342, %5183 ], [ %4658, %5162 ]
  %5347 = phi float [ %5343, %5183 ], [ %4659, %5162 ]
  %5348 = phi float [ %5344, %5183 ], [ %4660, %5162 ]
  %5349 = phi float [ %5320, %5183 ], [ %4719, %5162 ]
  %5350 = phi float [ %5321, %5183 ], [ %4720, %5162 ]
  %5351 = phi float [ %5322, %5183 ], [ %4721, %5162 ]
  %5352 = phi float [ %5229, %5183 ], [ %4800, %5162 ]
  %5353 = phi float [ %5230, %5183 ], [ %4801, %5162 ]
  %5354 = phi float [ %5231, %5183 ], [ %4802, %5162 ]
  %5355 = phi float [ %5336, %5183 ], [ %4722, %5162 ]
  %5356 = phi float [ %5339, %5183 ], [ %4673, %5162 ]
  %5357 = fsub fast float -0.000000e+00, %166
  %5358 = select i1 %258, float 0.000000e+00, float %5351
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5346, float %5347, float %5348, float %5180, float %5181, float %5182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = fmul fast float %5361, 2.000000e+00
  %5363 = fmul fast float %5362, %5346
  %5364 = fmul fast float %5362, %5347
  %5365 = fmul fast float %5362, %5348
  %5366 = fsub fast float %184, %5363
  %5367 = fsub fast float %185, %5364
  %5368 = fsub fast float %186, %5365
  %5369 = call float @dx.op.binary.f32(i32 36, float %5356, float 1.000000e+00)  ; FMin(a,b)
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = bitcast float %5370 to i32
  %5372 = ashr i32 %5371, 1
  %5373 = add nsw i32 %5372, 532487669
  %5374 = bitcast i32 %5373 to float
  %5375 = fsub fast float 1.000000e+00, %5355
  %5376 = call float @dx.op.binary.f32(i32 35, float %5375, float 0x3F847AE140000000)  ; FMax(a,b)
  %5377 = fmul fast float %5376, %5376
  %5378 = fmul fast float %5377, %5377
  %5379 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5374, float %5378, float %5379, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5381 = extractvalue %dx.types.ResRet.f32 %5380, 0
  %5382 = fsub fast float 1.000000e+00, %5356
  %5383 = bitcast float %5382 to i32
  %5384 = sub nsw i32 2129859010, %5383
  %5385 = bitcast i32 %5384 to float
  %5386 = call float @dx.op.dot3.f32(i32 55, float %77, float %73, float %69, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = fmul fast float %5386, 0x3FD20DD760000000
  %5388 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %5389 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5390 = fcmp fast oeq float %5389, 0.000000e+00
  %5391 = fcmp fast oeq float %5388, 0.000000e+00
  %5392 = or i1 %5391, %5390
  br i1 %5392, label %5422, label %5393

; <label>:5393                                    ; preds = %5345
  %5394 = fsub fast float -0.000000e+00, %80
  %5395 = fsub fast float -0.000000e+00, %78
  %5396 = call float @dx.op.unary.f32(i32 24, float %5389)  ; Sqrt(value)
  %5397 = fdiv fast float %5396, %5388
  %5398 = fcmp fast ogt float %5397, 0x3FFB6F8900000000
  %5399 = select i1 %5398, float 0x3FFB6F8900000000, float %5397
  %5400 = fmul fast float %5399, 0x3FE8A23460000000
  %5401 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5402 = call float @dx.op.binary.f32(i32 35, float %5399, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5403 = fmul fast float %5401, %5388
  %5404 = fmul fast float %5402, 0x3FF279A740000000
  %5405 = fadd fast float %5404, -1.000000e+00
  %5406 = call float @dx.op.dot3.f32(i32 55, float %5394, float %5395, float %79, float %5394, float %5395, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5407 = call float @dx.op.unary.f32(i32 25, float %5406)  ; Rsqrt(value)
  %5408 = fmul fast float %5407, %5394
  %5409 = fmul fast float %5407, %5395
  %5410 = fmul fast float %5407, %79
  %5411 = fmul fast float %5405, %5405
  %5412 = fsub fast float 1.000000e+00, %5411
  %5413 = fmul fast float %5402, 0x40005F8BE0000000
  %5414 = fsub fast float 0x400C5BF8A0000000, %5413
  %5415 = fdiv fast float %5403, %5414
  %5416 = fmul fast float %5415, 0x3FEE31C3C0000000
  %5417 = fmul fast float %5416, %5412
  %5418 = fmul fast float %5402, 0x3FDACB7480000000
  %5419 = fadd fast float %5418, 0xBFD7347680000000
  %5420 = fmul fast float %5419, %5415
  %5421 = fmul fast float %5420, %5412
  br label %5422

; <label>:5422                                    ; preds = %5393, %5345
  %5423 = phi float [ %5408, %5393 ], [ 0.000000e+00, %5345 ]
  %5424 = phi float [ %5409, %5393 ], [ 0.000000e+00, %5345 ]
  %5425 = phi float [ %5410, %5393 ], [ 0.000000e+00, %5345 ]
  %5426 = phi float [ %5417, %5393 ], [ 0.000000e+00, %5345 ]
  %5427 = phi float [ %5421, %5393 ], [ 0.000000e+00, %5345 ]
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5424, float %5425, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = fmul fast float %5428, 0x3FDF454380000000
  %5430 = fmul fast float %5428, %5428
  %5431 = fmul fast float %5430, 0x3FEE471020000000
  %5432 = fadd fast float %5431, 0xBFD42F6020000000
  %5433 = fmul fast float %5388, 0x3FD20DD760000000
  %5434 = fmul fast float %5432, %5427
  %5435 = fadd fast float %5434, %5433
  %5436 = fmul fast float %5429, %5426
  %5437 = fadd fast float %5435, %5436
  %5438 = fsub fast float %5435, %5436
  %5439 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5424, float %5425, float %5366, float %5367, float %5368)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = fmul fast float %5439, 0x3FDF454380000000
  %5441 = fmul fast float %5439, %5439
  %5442 = fmul fast float %5441, 0x3FEE471020000000
  %5443 = fadd fast float %5442, 0xBFD42F6020000000
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5388, float %5426, float %5427, float 0x3FD20DD760000000, float %5440, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5446 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = fcmp fast oeq float %5446, 0.000000e+00
  %5448 = fcmp fast oeq float %5445, 0.000000e+00
  %5449 = or i1 %5448, %5447
  br i1 %5449, label %5479, label %5450

; <label>:5450                                    ; preds = %5422
  %5451 = fsub fast float -0.000000e+00, %76
  %5452 = fsub fast float -0.000000e+00, %74
  %5453 = call float @dx.op.unary.f32(i32 24, float %5446)  ; Sqrt(value)
  %5454 = fdiv fast float %5453, %5445
  %5455 = fcmp fast ogt float %5454, 0x3FFB6F8900000000
  %5456 = select i1 %5455, float 0x3FFB6F8900000000, float %5454
  %5457 = fmul fast float %5456, 0x3FE8A23460000000
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = call float @dx.op.binary.f32(i32 35, float %5456, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5460 = fmul fast float %5458, %5445
  %5461 = fmul fast float %5459, 0x3FF279A740000000
  %5462 = fadd fast float %5461, -1.000000e+00
  %5463 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %75, float %5451, float %5452, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5464 = call float @dx.op.unary.f32(i32 25, float %5463)  ; Rsqrt(value)
  %5465 = fmul fast float %5464, %5451
  %5466 = fmul fast float %5464, %5452
  %5467 = fmul fast float %5464, %75
  %5468 = fmul fast float %5462, %5462
  %5469 = fsub fast float 1.000000e+00, %5468
  %5470 = fmul fast float %5459, 0x40005F8BE0000000
  %5471 = fsub fast float 0x400C5BF8A0000000, %5470
  %5472 = fdiv fast float %5460, %5471
  %5473 = fmul fast float %5472, 0x3FEE31C3C0000000
  %5474 = fmul fast float %5473, %5469
  %5475 = fmul fast float %5459, 0x3FDACB7480000000
  %5476 = fadd fast float %5475, 0xBFD7347680000000
  %5477 = fmul fast float %5476, %5472
  %5478 = fmul fast float %5477, %5469
  br label %5479

; <label>:5479                                    ; preds = %5450, %5422
  %5480 = phi float [ %5465, %5450 ], [ 0.000000e+00, %5422 ]
  %5481 = phi float [ %5466, %5450 ], [ 0.000000e+00, %5422 ]
  %5482 = phi float [ %5467, %5450 ], [ 0.000000e+00, %5422 ]
  %5483 = phi float [ %5474, %5450 ], [ 0.000000e+00, %5422 ]
  %5484 = phi float [ %5478, %5450 ], [ 0.000000e+00, %5422 ]
  %5485 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = fmul fast float %5485, 0x3FDF454380000000
  %5487 = fmul fast float %5485, %5485
  %5488 = fmul fast float %5487, 0x3FEE471020000000
  %5489 = fadd fast float %5488, 0xBFD42F6020000000
  %5490 = fmul fast float %5445, 0x3FD20DD760000000
  %5491 = fmul fast float %5489, %5484
  %5492 = fadd fast float %5491, %5490
  %5493 = fmul fast float %5486, %5483
  %5494 = fadd fast float %5492, %5493
  %5495 = fsub fast float %5492, %5493
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5366, float %5367, float %5368)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = fmul fast float %5496, 0x3FDF454380000000
  %5498 = fmul fast float %5496, %5496
  %5499 = fmul fast float %5498, 0x3FEE471020000000
  %5500 = fadd fast float %5499, 0xBFD42F6020000000
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5483, float %5484, float 0x3FD20DD760000000, float %5497, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5503 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fcmp fast oeq float %5503, 0.000000e+00
  %5505 = fcmp fast oeq float %5502, 0.000000e+00
  %5506 = or i1 %5505, %5504
  br i1 %5506, label %5536, label %5507

; <label>:5507                                    ; preds = %5479
  %5508 = fsub fast float -0.000000e+00, %72
  %5509 = fsub fast float -0.000000e+00, %70
  %5510 = call float @dx.op.unary.f32(i32 24, float %5503)  ; Sqrt(value)
  %5511 = fdiv fast float %5510, %5502
  %5512 = fcmp fast ogt float %5511, 0x3FFB6F8900000000
  %5513 = select i1 %5512, float 0x3FFB6F8900000000, float %5511
  %5514 = fmul fast float %5513, 0x3FE8A23460000000
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = call float @dx.op.binary.f32(i32 35, float %5513, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5517 = fmul fast float %5515, %5502
  %5518 = fmul fast float %5516, 0x3FF279A740000000
  %5519 = fadd fast float %5518, -1.000000e+00
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %71, float %5508, float %5509, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = call float @dx.op.unary.f32(i32 25, float %5520)  ; Rsqrt(value)
  %5522 = fmul fast float %5521, %5508
  %5523 = fmul fast float %5521, %5509
  %5524 = fmul fast float %5521, %71
  %5525 = fmul fast float %5519, %5519
  %5526 = fsub fast float 1.000000e+00, %5525
  %5527 = fmul fast float %5516, 0x40005F8BE0000000
  %5528 = fsub fast float 0x400C5BF8A0000000, %5527
  %5529 = fdiv fast float %5517, %5528
  %5530 = fmul fast float %5529, 0x3FEE31C3C0000000
  %5531 = fmul fast float %5530, %5526
  %5532 = fmul fast float %5516, 0x3FDACB7480000000
  %5533 = fadd fast float %5532, 0xBFD7347680000000
  %5534 = fmul fast float %5533, %5529
  %5535 = fmul fast float %5534, %5526
  br label %5536

; <label>:5536                                    ; preds = %5507, %5479
  %5537 = phi float [ %5522, %5507 ], [ 0.000000e+00, %5479 ]
  %5538 = phi float [ %5523, %5507 ], [ 0.000000e+00, %5479 ]
  %5539 = phi float [ %5524, %5507 ], [ 0.000000e+00, %5479 ]
  %5540 = phi float [ %5531, %5507 ], [ 0.000000e+00, %5479 ]
  %5541 = phi float [ %5535, %5507 ], [ 0.000000e+00, %5479 ]
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5538, float %5539, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = fmul fast float %5542, 0x3FDF454380000000
  %5544 = fmul fast float %5542, %5542
  %5545 = fmul fast float %5544, 0x3FEE471020000000
  %5546 = fadd fast float %5545, 0xBFD42F6020000000
  %5547 = fmul fast float %5502, 0x3FD20DD760000000
  %5548 = fmul fast float %5546, %5541
  %5549 = fadd fast float %5548, %5547
  %5550 = fmul fast float %5543, %5540
  %5551 = fadd fast float %5549, %5550
  %5552 = fsub fast float %5549, %5550
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5538, float %5539, float %5366, float %5367, float %5368)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = fmul fast float %5553, 0x3FDF454380000000
  %5555 = fmul fast float %5553, %5553
  %5556 = fmul fast float %5555, 0x3FEE471020000000
  %5557 = fadd fast float %5556, 0xBFD42F6020000000
  %5558 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5540, float %5541, float 0x3FD20DD760000000, float %5554, float %5557)  ; Dot3(ax,ay,az,bx,by,bz)
  %5559 = call float @dx.op.binary.f32(i32 35, float %5437, float 0.000000e+00)  ; FMax(a,b)
  %5560 = call float @dx.op.binary.f32(i32 35, float %5494, float 0.000000e+00)  ; FMax(a,b)
  %5561 = call float @dx.op.binary.f32(i32 35, float %5551, float 0.000000e+00)  ; FMax(a,b)
  %5562 = call float @dx.op.binary.f32(i32 35, float %5438, float 0.000000e+00)  ; FMax(a,b)
  %5563 = call float @dx.op.binary.f32(i32 35, float %5495, float 0.000000e+00)  ; FMax(a,b)
  %5564 = call float @dx.op.binary.f32(i32 35, float %5552, float 0.000000e+00)  ; FMax(a,b)
  %5565 = call float @dx.op.binary.f32(i32 35, float %5444, float 0.000000e+00)  ; FMax(a,b)
  %5566 = call float @dx.op.binary.f32(i32 35, float %5501, float 0.000000e+00)  ; FMax(a,b)
  %5567 = call float @dx.op.binary.f32(i32 35, float %5558, float 0.000000e+00)  ; FMax(a,b)
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 0
  %5570 = call float @dx.op.binary.f32(i32 36, float %5352, float %5569)  ; FMin(a,b)
  %5571 = fmul fast float %5570, %5370
  %5572 = fsub fast float 1.000000e+00, %5571
  %5573 = bitcast float %5572 to i32
  %5574 = sub nsw i32 2129859010, %5573
  %5575 = bitcast i32 %5574 to float
  %5576 = call float @dx.op.binary.f32(i32 36, float %5353, float %5569)  ; FMin(a,b)
  %5577 = fmul fast float %5576, %5370
  %5578 = fsub fast float 1.000000e+00, %5577
  %5579 = bitcast float %5578 to i32
  %5580 = sub nsw i32 2129859010, %5579
  %5581 = bitcast i32 %5580 to float
  %5582 = call float @dx.op.binary.f32(i32 36, float %5354, float %5569)  ; FMin(a,b)
  %5583 = fmul fast float %5582, %5370
  %5584 = fsub fast float 1.000000e+00, %5583
  %5585 = bitcast float %5584 to i32
  %5586 = sub nsw i32 2129859010, %5585
  %5587 = bitcast i32 %5586 to float
  %5588 = fmul fast float %5559, %5369
  %5589 = fmul fast float %5588, %5575
  %5590 = fmul fast float %5560, %5369
  %5591 = fmul fast float %5590, %5581
  %5592 = fmul fast float %5561, %5369
  %5593 = fmul fast float %5592, %5587
  %5594 = call float @dx.op.binary.f32(i32 36, float %5349, float %5569)  ; FMin(a,b)
  %5595 = fmul fast float %5594, %5370
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = bitcast float %5596 to i32
  %5598 = sub nsw i32 2129859010, %5597
  %5599 = bitcast i32 %5598 to float
  %5600 = call float @dx.op.binary.f32(i32 36, float %5350, float %5569)  ; FMin(a,b)
  %5601 = fmul fast float %5600, %5370
  %5602 = fsub fast float 1.000000e+00, %5601
  %5603 = bitcast float %5602 to i32
  %5604 = sub nsw i32 2129859010, %5603
  %5605 = bitcast i32 %5604 to float
  %5606 = call float @dx.op.binary.f32(i32 36, float %5358, float %5569)  ; FMin(a,b)
  %5607 = fmul fast float %5606, %5370
  %5608 = fsub fast float 1.000000e+00, %5607
  %5609 = bitcast float %5608 to i32
  %5610 = sub nsw i32 2129859010, %5609
  %5611 = bitcast i32 %5610 to float
  %5612 = fmul fast float %5565, %5369
  %5613 = fmul fast float %5612, %5599
  %5614 = fmul fast float %5566, %5369
  %5615 = fmul fast float %5614, %5605
  %5616 = fmul fast float %5567, %5369
  %5617 = fmul fast float %5616, %5611
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5591, float %5593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = select i1 %258, float 0.000000e+00, float %5589
  %5620 = select i1 %258, float %5618, float %5591
  %5621 = select i1 %258, float 0.000000e+00, float %5593
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5562, float %5563, float %5564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = select i1 %258, float 0.000000e+00, float %5562
  %5624 = select i1 %258, float %5622, float %5563
  %5625 = select i1 %258, float 0.000000e+00, float %5564
  %5626 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5615, float %5617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = select i1 %258, float 0.000000e+00, float %5613
  %5628 = select i1 %258, float %5626, float %5615
  %5629 = select i1 %258, float 0.000000e+00, float %5617
  %5630 = fmul fast float %5360, 9.843750e-01
  %5631 = fmul fast float %5355, 9.843750e-01
  %5632 = fadd fast float %5630, 7.812500e-03
  %5633 = fadd fast float %5631, 7.812500e-03
  %5634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5632, float %5633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5635 = extractvalue %dx.types.ResRet.f32 %5634, 2
  %5636 = extractvalue %dx.types.ResRet.f32 %5634, 3
  %5637 = fmul fast float %5635, %5349
  %5638 = fmul fast float %5635, %5350
  %5639 = fmul fast float %5635, %5358
  %5640 = fadd fast float %5637, %5636
  %5641 = fadd fast float %5638, %5636
  %5642 = fadd fast float %5639, %5636
  %5643 = fcmp fast ogt float %4674, 0.000000e+00
  br i1 %5643, label %5644, label %5670

; <label>:5644                                    ; preds = %5536
  %5645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4674, float %5360, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5646 = extractvalue %dx.types.ResRet.f32 %5645, 0
  %5647 = extractvalue %dx.types.ResRet.f32 %5645, 1
  %5648 = extractvalue %dx.types.ResRet.f32 %5645, 2
  %5649 = fadd fast float %5646, -5.000000e-01
  %5650 = fadd fast float %5647, -5.000000e-01
  %5651 = fadd fast float %5648, -5.000000e-01
  %5652 = fsub fast float 1.000000e+00, %5349
  %5653 = fsub fast float 1.000000e+00, %5350
  %5654 = fsub fast float 1.000000e+00, %5358
  %5655 = fmul fast float %5349, 4.000000e+00
  %5656 = fmul fast float %5655, %5652
  %5657 = fmul fast float %5656, %5649
  %5658 = fmul fast float %5350, 4.000000e+00
  %5659 = fmul fast float %5658, %5653
  %5660 = fmul fast float %5659, %5650
  %5661 = fmul fast float %5358, 4.000000e+00
  %5662 = fmul fast float %5661, %5654
  %5663 = fmul fast float %5662, %5651
  %5664 = fadd fast float %5657, %5640
  %5665 = fadd fast float %5660, %5641
  %5666 = fadd fast float %5663, %5642
  %5667 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5668 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5669 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  br label %5670

; <label>:5670                                    ; preds = %5644, %5536
  %5671 = phi float [ %5667, %5644 ], [ %5640, %5536 ]
  %5672 = phi float [ %5668, %5644 ], [ %5641, %5536 ]
  %5673 = phi float [ %5669, %5644 ], [ %5642, %5536 ]
  %5674 = call float @dx.op.binary.f32(i32 35, float %5672, float %5673)  ; FMax(a,b)
  %5675 = call float @dx.op.binary.f32(i32 35, float %5671, float %5674)  ; FMax(a,b)
  %5676 = fsub fast float 1.000000e+00, %5675
  %5677 = fmul fast float %5675, %5355
  %5678 = fadd fast float %5677, %5355
  %5679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5680 = extractvalue %dx.types.CBufRet.f32 %5679, 2
  %5681 = extractvalue %dx.types.CBufRet.f32 %5679, 3
  %5682 = fmul fast float %5678, %5680
  %5683 = fadd fast float %5682, %5681
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fsub fast float 1.000000e+00, %5381
  %5686 = fadd fast float %5685, %5684
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5688 = fcmp fast olt float %5687, 1.000000e+00
  br i1 %5688, label %5689, label %6165

; <label>:5689                                    ; preds = %5670
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 2
  %5692 = extractvalue %dx.types.CBufRet.f32 %5690, 3
  %5693 = fmul fast float %5691, %109
  %5694 = fmul fast float %5692, %110
  %5695 = fptoui float %5693 to i32
  %5696 = fptoui float %5694 to i32
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.CBufRet.f32 %5697, 2
  %5700 = extractvalue %dx.types.CBufRet.f32 %5697, 3
  %5701 = fadd fast float %97, -4.000000e+00
  %5702 = call float @dx.op.binary.f32(i32 35, float %5701, float 0.000000e+00)  ; FMax(a,b)
  %5703 = fadd fast float %5702, %5698
  %5704 = fmul fast float %5703, %5699
  %5705 = call float @dx.op.unary.f32(i32 23, float %5704)  ; Log(value)
  %5706 = fmul fast float %5705, %5700
  %5707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5707, 2
  %5709 = fmul fast float %5706, %5708
  %5710 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5712 = extractvalue %dx.types.CBufRet.i32 %5711, 1
  %5713 = add i32 %5712, -1
  %5714 = uitofp i32 %5712 to float
  %5715 = fmul fast float %5714, %5710
  %5716 = fptoui float %5715 to i32
  %5717 = call i32 @dx.op.binary.i32(i32 40, i32 %5716, i32 %5713)  ; UMin(a,b)
  %5718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.i32 %5718, 2
  %5720 = extractvalue %dx.types.CBufRet.i32 %5718, 3
  %5721 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5696, i32 %5719, i32 %5695)  ; UMad(a,b,c)
  %5722 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5717, i32 %5720, i32 %5721)  ; UMad(a,b,c)
  %5723 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %5724 = fptoui float %5723 to i32
  %5725 = lshr i32 %5724, 5
  %5726 = call i32 @dx.op.binary.i32(i32 40, i32 %5725, i32 8191)  ; UMin(a,b)
  %5727 = fsub fast float %5163, %166
  %5728 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5729 = fcmp fast ogt float %5728, 0.000000e+00
  %5730 = fcmp fast ogt float %5368, 0.000000e+00
  %5731 = and i1 %5730, %5729
  br i1 %5731, label %5732, label %5761

; <label>:5732                                    ; preds = %5689
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5367, float %5368, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = call float @dx.op.binary.f32(i32 35, float %5733, float -1.000000e+00)  ; FMax(a,b)
  %5735 = call float @dx.op.binary.f32(i32 36, float %5734, float 1.000000e+00)  ; FMin(a,b)
  %5736 = fmul fast float %5735, %5735
  %5737 = fsub fast float 1.000000e+00, %5736
  %5738 = fmul fast float %5737, 0x3FFC6E2300000000
  %5739 = fsub fast float 1.000000e+00, %5738
  %5740 = fcmp fast ogt float %5739, 0.000000e+00
  %5741 = call float @dx.op.unary.f32(i32 24, float %5739)  ; Sqrt(value)
  %5742 = fsub fast float 1.000000e+00, %5741
  %5743 = call float @dx.op.unary.f32(i32 23, float %5742)  ; Log(value)
  %5744 = fmul fast float %5743, 5.000000e+00
  %5745 = call float @dx.op.unary.f32(i32 21, float %5744)  ; Exp(value)
  %5746 = fmul fast float %5745, 0x3FEF591A60000000
  %5747 = fadd fast float %5746, 0x3F94DCB540000000
  %5748 = select i1 %5740, float %5747, float 1.000000e+00
  %5749 = fcmp fast oge float %5748, 1.000000e+00
  %5750 = fmul fast float %5733, 2.000000e+00
  %5751 = fadd fast float %5750, %5368
  %5752 = select i1 %5749, float %5751, float %5368
  %5753 = fsub fast float %5752, %5368
  %5754 = fmul fast float %5753, %5728
  %5755 = fadd fast float %5754, %5368
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5367, float %5755, float %5366, float %5367, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.unary.f32(i32 25, float %5756)  ; Rsqrt(value)
  %5758 = fmul fast float %5757, %5366
  %5759 = fmul fast float %5757, %5367
  %5760 = fmul fast float %5755, %5757
  br label %5761

; <label>:5761                                    ; preds = %5732, %5689
  %5762 = phi float [ %5758, %5732 ], [ %5366, %5689 ]
  %5763 = phi float [ %5759, %5732 ], [ %5367, %5689 ]
  %5764 = phi float [ %5760, %5732 ], [ %5368, %5689 ]
  %5765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.i32 %5765, 2
  %5767 = add nsw i32 %5766, -1
  %5768 = call i32 @dx.op.binary.i32(i32 37, i32 %5767, i32 0)  ; IMax(a,b)
  %5769 = shl i32 %5726, 2
  %5770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5769, i32 undef)  ; BufferLoad(srv,index,wot)
  %5771 = extractvalue %dx.types.ResRet.i32 %5770, 0
  %5772 = lshr i32 %5771, 16
  %5773 = and i32 %5771, 65535
  %5774 = lshr i32 %5771, 21
  %5775 = lshr i32 %5773, 5
  %5776 = call i32 @dx.op.binary.i32(i32 40, i32 %5775, i32 %5768)  ; UMin(a,b)
  %5777 = icmp ugt i32 %5774, %5776
  br i1 %5777, label %6141, label %5778

; <label>:5778                                    ; preds = %5761
  br label %5779

; <label>:5779                                    ; preds = %6133, %5778
  %5780 = phi float [ %6134, %6133 ], [ 0.000000e+00, %5778 ]
  %5781 = phi float [ %6135, %6133 ], [ 0.000000e+00, %5778 ]
  %5782 = phi float [ %6136, %6133 ], [ 0.000000e+00, %5778 ]
  %5783 = phi float [ %6137, %6133 ], [ 1.000000e+00, %5778 ]
  %5784 = phi i32 [ %6138, %6133 ], [ %5774, %5778 ]
  %5785 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.i32 %5785, 2
  %5787 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5722, i32 %5786, i32 %5784)  ; UMad(a,b,c)
  %5788 = shl i32 %5787, 2
  %5789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5788, i32 undef)  ; BufferLoad(srv,index,wot)
  %5790 = extractvalue %dx.types.ResRet.i32 %5789, 0
  %5791 = shl i32 %5784, 5
  %5792 = sub nsw i32 %5772, %5791
  %5793 = call i32 @dx.op.binary.i32(i32 37, i32 %5792, i32 0)  ; IMax(a,b)
  %5794 = call i32 @dx.op.binary.i32(i32 38, i32 %5793, i32 31)  ; IMin(a,b)
  %5795 = sub nsw i32 1, %5772
  %5796 = add nsw i32 %5795, %5773
  %5797 = call i32 @dx.op.binary.i32(i32 37, i32 %5796, i32 0)  ; IMax(a,b)
  %5798 = call i32 @dx.op.binary.i32(i32 38, i32 %5797, i32 32)  ; IMin(a,b)
  %5799 = and i32 %5798, 31
  %5800 = shl i32 -1, %5799
  %5801 = xor i32 %5800, -1
  %5802 = and i32 %5794, 31
  %5803 = shl i32 %5801, %5802
  %5804 = icmp eq i32 %5798, 32
  %5805 = select i1 %5804, i32 -1, i32 %5803
  %5806 = and i32 %5805, %5790
  %5807 = icmp eq i32 %5806, 0
  br i1 %5807, label %6133, label %5808

; <label>:5808                                    ; preds = %5779
  br label %5809

; <label>:5809                                    ; preds = %5916, %5808
  %5810 = phi float [ %5917, %5916 ], [ %5780, %5808 ]
  %5811 = phi float [ %5918, %5916 ], [ %5781, %5808 ]
  %5812 = phi float [ %5919, %5916 ], [ %5782, %5808 ]
  %5813 = phi float [ %5920, %5916 ], [ %5783, %5808 ]
  %5814 = phi i32 [ %5819, %5916 ], [ %5806, %5808 ]
  %5815 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5814)  ; FirstbitLo(value)
  %5816 = add i32 %5815, %5791
  %5817 = and i32 %5815, 31
  %5818 = shl i32 1, %5817
  %5819 = xor i32 %5818, %5814
  %5820 = mul i32 %5816, 72
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.ResRet.f32 %5821, 1
  %5824 = extractvalue %dx.types.ResRet.f32 %5821, 2
  %5825 = add i32 %5820, 12
  %5826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.i32 %5826, 0
  %5828 = add i32 %5820, 16
  %5829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5828, i32 undef)  ; BufferLoad(srv,index,wot)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.ResRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.ResRet.f32 %5829, 2
  %5833 = add i32 %5820, 28
  %5834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 0
  %5836 = add i32 %5820, 32
  %5837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5836, i32 undef)  ; BufferLoad(srv,index,wot)
  %5838 = extractvalue %dx.types.ResRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.ResRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.ResRet.f32 %5837, 2
  %5841 = extractvalue %dx.types.ResRet.f32 %5837, 3
  %5842 = add i32 %5820, 48
  %5843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5842, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.ResRet.f32 %5843, 1
  %5846 = add i32 %5820, 56
  %5847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5846, i32 undef)  ; BufferLoad(srv,index,wot)
  %5848 = extractvalue %dx.types.ResRet.f32 %5847, 0
  %5849 = extractvalue %dx.types.ResRet.f32 %5847, 1
  %5850 = add i32 %5820, 64
  %5851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5850, i32 undef)  ; BufferLoad(srv,index,wot)
  %5852 = extractvalue %dx.types.ResRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.ResRet.f32 %5851, 1
  %5854 = mul i32 %5816, 60
  %5855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5854, i32 undef)  ; BufferLoad(srv,index,wot)
  %5856 = extractvalue %dx.types.ResRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.ResRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.ResRet.f32 %5855, 2
  %5859 = add i32 %5854, 12
  %5860 = add i32 %5854, 48
  %5861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5860, i32 undef)  ; BufferLoad(srv,index,wot)
  %5862 = extractvalue %dx.types.ResRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.ResRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5861, 2
  %5865 = and i32 %5827, 32767
  %5866 = bitcast float %5822 to i32
  %5867 = icmp eq i32 %5866, -1
  %5868 = bitcast float %5823 to i32
  %5869 = and i32 %5827, 32768
  %5870 = icmp ne i32 %5869, 0
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5875 = fsub fast float %5856, %5872
  %5876 = fsub fast float %5857, %5873
  %5877 = fsub fast float %5858, %5874
  %5878 = fsub fast float %164, %5875
  %5879 = fsub fast float %165, %5876
  %5880 = fsub fast float %166, %5877
  %5881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5859, i32 undef)  ; BufferLoad(srv,index,wot)
  %5882 = extractvalue %dx.types.ResRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.ResRet.f32 %5881, 1
  %5884 = extractvalue %dx.types.ResRet.f32 %5881, 2
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5882, float %5883, float %5884)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = add i32 %5854, 24
  %5887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5886, i32 undef)  ; BufferLoad(srv,index,wot)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5888, float %5889, float %5890)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = add i32 %5854, 36
  %5893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5892, i32 undef)  ; BufferLoad(srv,index,wot)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.ResRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.ResRet.f32 %5893, 2
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = call float @dx.op.unary.f32(i32 6, float %5885)  ; FAbs(value)
  %5899 = call float @dx.op.unary.f32(i32 6, float %5891)  ; FAbs(value)
  %5900 = call float @dx.op.unary.f32(i32 6, float %5897)  ; FAbs(value)
  %5901 = fsub fast float %5862, %5898
  %5902 = fsub fast float %5863, %5899
  %5903 = fsub fast float %5864, %5900
  %5904 = fmul fast float %5901, %5830
  %5905 = fmul fast float %5902, %5831
  %5906 = fmul fast float %5903, %5832
  %5907 = call float @dx.op.binary.f32(i32 36, float %5905, float %5906)  ; FMin(a,b)
  %5908 = call float @dx.op.binary.f32(i32 36, float %5904, float %5907)  ; FMin(a,b)
  %5909 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  %5910 = call float @dx.op.binary.f32(i32 36, float %5813, float %5909)  ; FMin(a,b)
  %5911 = uitofp i1 %5870 to float
  %5912 = fadd fast float %5728, 1.000000e+00
  %5913 = fsub fast float %5912, %5911
  %5914 = fmul fast float %5910, %5913
  %5915 = fcmp fast ogt float %5914, 0.000000e+00
  br i1 %5915, label %5922, label %5916

; <label>:5916                                    ; preds = %6064, %5809
  %5917 = phi float [ %6128, %6064 ], [ %5810, %5809 ]
  %5918 = phi float [ %6129, %6064 ], [ %5811, %5809 ]
  %5919 = phi float [ %6130, %6064 ], [ %5812, %5809 ]
  %5920 = phi float [ %6131, %6064 ], [ %5813, %5809 ]
  %5921 = icmp eq i32 %5814, %5818
  br i1 %5921, label %6132, label %5809

; <label>:5922                                    ; preds = %5809
  br i1 %5867, label %5980, label %5923

; <label>:5923                                    ; preds = %5922
  %5924 = fsub fast float -0.000000e+00, %5882
  %5925 = fsub fast float -0.000000e+00, %5883
  %5926 = fsub fast float -0.000000e+00, %5884
  %5927 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %5924, float %5925, float %5926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = fsub fast float -0.000000e+00, %5927
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5924, float %5925, float %5926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = fadd fast float %5929, %5845
  %5931 = fadd fast float %5844, %5929
  %5932 = fsub fast float -0.000000e+00, %5931
  %5933 = fcmp ogt float %5927, -0.000000e+00
  %5934 = select i1 %5933, float %5932, float %5930
  %5935 = call float @dx.op.unary.f32(i32 6, float %5928)  ; FAbs(value)
  %5936 = fdiv fast float 1.000000e+00, %5935
  %5937 = fmul fast float %5934, %5936
  %5938 = call float @dx.op.binary.f32(i32 35, float %5937, float 0.000000e+00)  ; FMax(a,b)
  %5939 = fsub fast float -0.000000e+00, %5888
  %5940 = fsub fast float -0.000000e+00, %5889
  %5941 = fsub fast float -0.000000e+00, %5890
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = fsub fast float -0.000000e+00, %5942
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fadd fast float %5944, %5849
  %5946 = fadd fast float %5848, %5944
  %5947 = fsub fast float -0.000000e+00, %5946
  %5948 = fcmp ogt float %5942, -0.000000e+00
  %5949 = select i1 %5948, float %5947, float %5945
  %5950 = call float @dx.op.unary.f32(i32 6, float %5943)  ; FAbs(value)
  %5951 = fdiv fast float 1.000000e+00, %5950
  %5952 = fmul fast float %5949, %5951
  %5953 = call float @dx.op.binary.f32(i32 35, float %5952, float 0.000000e+00)  ; FMax(a,b)
  %5954 = fsub fast float -0.000000e+00, %5894
  %5955 = fsub fast float -0.000000e+00, %5895
  %5956 = fsub fast float -0.000000e+00, %5896
  %5957 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %5958 = fsub fast float -0.000000e+00, %5957
  %5959 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %5960 = fadd fast float %5959, %5853
  %5961 = fadd fast float %5852, %5959
  %5962 = fsub fast float -0.000000e+00, %5961
  %5963 = fcmp ogt float %5957, -0.000000e+00
  %5964 = select i1 %5963, float %5962, float %5960
  %5965 = call float @dx.op.unary.f32(i32 6, float %5958)  ; FAbs(value)
  %5966 = fdiv fast float 1.000000e+00, %5965
  %5967 = fmul fast float %5964, %5966
  %5968 = call float @dx.op.binary.f32(i32 35, float %5967, float 0.000000e+00)  ; FMax(a,b)
  %5969 = call float @dx.op.binary.f32(i32 36, float %5953, float %5968)  ; FMin(a,b)
  %5970 = call float @dx.op.binary.f32(i32 36, float %5938, float %5969)  ; FMin(a,b)
  %5971 = fmul fast float %5970, %5762
  %5972 = fmul fast float %5970, %5763
  %5973 = fmul fast float %5970, %5764
  %5974 = fadd fast float %5971, %164
  %5975 = fadd fast float %5972, %165
  %5976 = fadd fast float %5973, %166
  %5977 = fsub fast float %5974, %5822
  %5978 = fsub fast float %5975, %5823
  %5979 = fsub fast float %5976, %5824
  br label %5987

; <label>:5980                                    ; preds = %5922
  %5981 = fmul fast float %5762, 8.096000e+03
  %5982 = fmul fast float %5763, 8.096000e+03
  %5983 = fmul fast float %5764, 8.096000e+03
  %5984 = fadd fast float %5981, %164
  %5985 = fadd fast float %5982, %165
  %5986 = fadd fast float %5983, %166
  br label %5987

; <label>:5987                                    ; preds = %5980, %5923
  %5988 = phi float [ %5762, %5980 ], [ %5977, %5923 ]
  %5989 = phi float [ %5763, %5980 ], [ %5978, %5923 ]
  %5990 = phi float [ %5764, %5980 ], [ %5979, %5923 ]
  %5991 = phi float [ %5984, %5980 ], [ %5974, %5923 ]
  %5992 = phi float [ %5985, %5980 ], [ %5975, %5923 ]
  %5993 = phi float [ %5986, %5980 ], [ %5976, %5923 ]
  %5994 = fcmp fast olt float %5841, 1.000000e+00
  br i1 %5994, label %5995, label %6026, !dx.controlflow.hints !100

; <label>:5995                                    ; preds = %5987
  %5996 = fmul fast float %5990, %5839
  %5997 = fmul fast float %5989, %5840
  %5998 = fsub fast float %5996, %5997
  %5999 = fmul fast float %5988, %5840
  %6000 = fmul fast float %5990, %5838
  %6001 = fsub fast float %5999, %6000
  %6002 = fmul fast float %5989, %5838
  %6003 = fmul fast float %5988, %5839
  %6004 = fsub fast float %6002, %6003
  %6005 = fmul fast float %5998, 2.000000e+00
  %6006 = fmul fast float %6001, 2.000000e+00
  %6007 = fmul fast float %6004, 2.000000e+00
  %6008 = fmul fast float %6005, %5841
  %6009 = fmul fast float %6006, %5841
  %6010 = fmul fast float %6007, %5841
  %6011 = fmul fast float %6007, %5839
  %6012 = fmul fast float %6006, %5840
  %6013 = fmul fast float %6005, %5840
  %6014 = fmul fast float %6007, %5838
  %6015 = fmul fast float %6006, %5838
  %6016 = fmul fast float %6005, %5839
  %6017 = fadd fast float %6011, %5988
  %6018 = fadd fast float %6017, %6008
  %6019 = fsub fast float %6018, %6012
  %6020 = fsub fast float %5989, %6014
  %6021 = fadd fast float %6020, %6009
  %6022 = fadd fast float %6021, %6013
  %6023 = fadd fast float %6010, %5990
  %6024 = fsub fast float %6023, %6016
  %6025 = fadd fast float %6024, %6015
  br label %6026

; <label>:6026                                    ; preds = %5995, %5987
  %6027 = phi float [ %6019, %5995 ], [ %5988, %5987 ]
  %6028 = phi float [ %6022, %5995 ], [ %5989, %5987 ]
  %6029 = phi float [ %6025, %5995 ], [ %5990, %5987 ]
  br i1 %5867, label %6061, label %6030

; <label>:6030                                    ; preds = %6026
  %6031 = fmul fast float %5355, 0x400187C840000000
  %6032 = fadd fast float %6031, 0xC00EFC2120000000
  %6033 = fmul fast float %6032, %5355
  %6034 = fadd fast float %6033, 0x3FE5D16340000000
  %6035 = fmul fast float %6034, %5355
  %6036 = fadd fast float %6035, 1.000000e+00
  %6037 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6038 = fsub fast float %5991, %164
  %6039 = fsub fast float %5992, %165
  %6040 = fsub fast float %5993, %166
  %6041 = fsub fast float %5991, %5822
  %6042 = fsub fast float %5992, %5823
  %6043 = fsub fast float %5993, %5824
  %6044 = call float @dx.op.dot3.f32(i32 55, float %6038, float %6039, float %6040, float %6038, float %6039, float %6040)  ; Dot3(ax,ay,az,bx,by,bz)
  %6045 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %6041, float %6042, float %6043)  ; Dot3(ax,ay,az,bx,by,bz)
  %6046 = fadd fast float %6045, 0x3EE4F8B580000000
  %6047 = fdiv fast float %6044, %6046
  %6048 = bitcast float %6047 to i32
  %6049 = ashr i32 %6048, 1
  %6050 = add nsw i32 %6049, 532487669
  %6051 = bitcast i32 %6050 to float
  %6052 = fmul fast float %6051, %6037
  %6053 = call float @dx.op.unary.f32(i32 7, float %6052)  ; Saturate(value)
  %6054 = fmul fast float %6053, 0x4009981AE0000000
  %6055 = fsub fast float 0x40111BBD80000000, %6054
  %6056 = fmul fast float %6055, %6053
  %6057 = fadd fast float %6056, 0xC0009F6020000000
  %6058 = fmul fast float %6057, %6053
  %6059 = fadd fast float %6058, 1.000000e+00
  %6060 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  br label %6064

; <label>:6061                                    ; preds = %6026
  %6062 = icmp ne i32 %5868, -1
  %6063 = zext i1 %6062 to i32
  br label %6064

; <label>:6064                                    ; preds = %6061, %6030
  %6065 = phi float [ %5355, %6061 ], [ %6060, %6030 ]
  %6066 = phi i32 [ %6063, %6061 ], [ 0, %6030 ]
  %6067 = fmul float %6065, 5.000000e+00
  %6068 = fsub float 5.000000e+00, %6067
  %6069 = icmp ne i32 %6066, 0
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 3
  %6072 = fadd fast float %6071, %6068
  %6073 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6072)  ; FMax(a,b)
  %6074 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6075 = call float @dx.op.unary.f32(i32 6, float %6028)  ; FAbs(value)
  %6076 = fadd fast float %6075, %6074
  %6077 = call float @dx.op.unary.f32(i32 6, float %6029)  ; FAbs(value)
  %6078 = fadd fast float %6076, %6077
  %6079 = fcmp fast oeq float %6078, 0.000000e+00
  %6080 = fdiv fast float 1.000000e+00, %6078
  %6081 = select i1 %6079, float 1.000000e+00, float %6080
  %6082 = fmul fast float %6081, %6027
  %6083 = fmul fast float %6081, %6028
  %6084 = call float @dx.op.unary.f32(i32 6, float %6083)  ; FAbs(value)
  %6085 = call float @dx.op.unary.f32(i32 6, float %6082)  ; FAbs(value)
  %6086 = fsub fast float 1.000000e+00, %6084
  %6087 = fsub fast float 1.000000e+00, %6085
  %6088 = fcmp fast oge float %6082, 0.000000e+00
  %6089 = fcmp fast oge float %6083, 0.000000e+00
  %6090 = select i1 %6088, float 1.000000e+00, float -1.000000e+00
  %6091 = select i1 %6089, float 1.000000e+00, float -1.000000e+00
  %6092 = fcmp fast ole float %6029, 0.000000e+00
  %6093 = fmul fast float %6090, %6086
  %6094 = fmul fast float %6091, %6087
  %6095 = select i1 %6092, float %6093, float %6082
  %6096 = select i1 %6092, float %6094, float %6083
  %6097 = fmul fast float %6095, 5.000000e-01
  %6098 = fmul fast float %6096, 5.000000e-01
  %6099 = fadd fast float %6097, 5.000000e-01
  %6100 = fadd fast float %6098, 5.000000e-01
  %6101 = uitofp i32 %5865 to float
  %6102 = call float @dx.op.binary.f32(i32 36, float %6073, float 3.000000e+00)  ; FMin(a,b)
  %6103 = fadd fast float %6102, 2.000000e+00
  %6104 = call float @dx.op.unary.f32(i32 21, float %6103)  ; Exp(value)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6106 = fmul fast float %6105, %6104
  %6107 = fmul fast float %6106, 2.000000e+00
  %6108 = fsub fast float 1.000000e+00, %6107
  %6109 = fmul fast float %6099, %6108
  %6110 = fmul fast float %6100, %6108
  %6111 = fadd fast float %6109, %6106
  %6112 = fadd fast float %6110, %6106
  %6113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6111, float %6112, float %6101, float undef, i32 0, i32 0, i32 undef, float %6073)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6114 = extractvalue %dx.types.ResRet.f32 %6113, 0
  %6115 = extractvalue %dx.types.ResRet.f32 %6113, 1
  %6116 = extractvalue %dx.types.ResRet.f32 %6113, 2
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 3
  %6119 = fmul fast float %6118, %5835
  %6120 = call float @dx.op.binary.f32(i32 36, float %5387, float %6119)  ; FMin(a,b)
  %6121 = select i1 %6069, float %6120, float %6119
  %6122 = fmul fast float %6114, %5914
  %6123 = fmul fast float %6122, %6121
  %6124 = fmul fast float %6115, %5914
  %6125 = fmul fast float %6124, %6121
  %6126 = fmul fast float %6116, %5914
  %6127 = fmul fast float %6126, %6121
  %6128 = fadd fast float %6123, %5810
  %6129 = fadd fast float %6125, %5811
  %6130 = fadd fast float %6127, %5812
  %6131 = fsub fast float %5813, %5914
  br label %5916

; <label>:6132                                    ; preds = %5916
  br label %6133

; <label>:6133                                    ; preds = %6132, %5779
  %6134 = phi float [ %5780, %5779 ], [ %5917, %6132 ]
  %6135 = phi float [ %5781, %5779 ], [ %5918, %6132 ]
  %6136 = phi float [ %5782, %5779 ], [ %5919, %6132 ]
  %6137 = phi float [ %5783, %5779 ], [ %5920, %6132 ]
  %6138 = add i32 %5784, 1
  %6139 = icmp ugt i32 %6138, %5776
  br i1 %6139, label %6140, label %5779, !llvm.loop !101

; <label>:6140                                    ; preds = %6133
  br label %6141

; <label>:6141                                    ; preds = %6140, %5761
  %6142 = phi float [ 0.000000e+00, %5761 ], [ %6134, %6140 ]
  %6143 = phi float [ 0.000000e+00, %5761 ], [ %6135, %6140 ]
  %6144 = phi float [ 0.000000e+00, %5761 ], [ %6136, %6140 ]
  %6145 = call float @dx.op.dot3.f32(i32 55, float %6142, float %6143, float %6144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = select i1 %258, float 0.000000e+00, float %6142
  %6147 = select i1 %258, float %6145, float %6143
  %6148 = select i1 %258, float 0.000000e+00, float %6144
  %6149 = fcmp fast olt float %5687, 0.000000e+00
  %6150 = call float @dx.op.unary.f32(i32 6, float %5687)  ; FAbs(value)
  %6151 = fmul fast float %6150, %5627
  %6152 = fmul fast float %6150, %5628
  %6153 = fmul fast float %6150, %5629
  %6154 = select i1 %6149, float %5627, float %6151
  %6155 = select i1 %6149, float %5628, float %6152
  %6156 = select i1 %6149, float %5629, float %6153
  %6157 = fsub fast float 1.000000e+00, %6150
  %6158 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6159 = fmul fast float %6158, %6146
  %6160 = fmul fast float %6158, %6147
  %6161 = fmul fast float %6158, %6148
  %6162 = fadd fast float %6154, %6159
  %6163 = fadd fast float %6155, %6160
  %6164 = fadd fast float %6156, %6161
  br label %6165

; <label>:6165                                    ; preds = %6141, %5670
  %6166 = phi float [ %5627, %5670 ], [ %6162, %6141 ]
  %6167 = phi float [ %5628, %5670 ], [ %6163, %6141 ]
  %6168 = phi float [ %5629, %5670 ], [ %6164, %6141 ]
  %6169 = call float @dx.op.dot3.f32(i32 55, float %5352, float %5353, float %5354, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = fcmp fast ogt float %6169, 0x3E7FF19E20000000
  %6171 = fdiv fast float 1.000000e+00, %6169
  %6172 = select i1 %6170, float %6171, float 0.000000e+00
  %6173 = fmul fast float %6172, %5352
  %6174 = fmul fast float %6172, %5353
  %6175 = fmul fast float %6172, %5354
  %6176 = fadd fast float %6173, -1.000000e+00
  %6177 = fadd fast float %6174, -1.000000e+00
  %6178 = fadd fast float %6175, -1.000000e+00
  %6179 = fmul fast float %6176, 5.000000e-01
  %6180 = fmul fast float %6177, 5.000000e-01
  %6181 = fmul fast float %6178, 5.000000e-01
  %6182 = fadd fast float %6179, 1.000000e+00
  %6183 = fadd fast float %6180, 1.000000e+00
  %6184 = fadd fast float %6181, 1.000000e+00
  %6185 = fmul fast float %5676, %4786
  %6186 = fmul fast float %5676, %4787
  %6187 = fmul fast float %5676, %4788
  %6188 = fadd fast float %6185, -1.000000e+00
  %6189 = fadd fast float %6186, -1.000000e+00
  %6190 = fadd fast float %6187, -1.000000e+00
  %6191 = fmul fast float %6188, %4700
  %6192 = fmul fast float %6189, %4700
  %6193 = fmul fast float %6190, %4700
  %6194 = fmul fast float %6166, %5671
  %6195 = fmul fast float %6167, %5672
  %6196 = fmul fast float %6168, %5673
  %6197 = fsub fast float 1.000000e+00, %5360
  %6198 = bitcast float %6197 to i32
  %6199 = sitofp i32 %6198 to float
  %6200 = fmul fast float %6199, 5.000000e+00
  %6201 = fadd fast float %6200, 0xC1EFBF8940000000
  %6202 = fptosi float %6201 to i32
  %6203 = bitcast i32 %6202 to float
  %6204 = fmul fast float %6203, %4675
  %6205 = fmul fast float %5619, %6204
  %6206 = fmul fast float %6205, %5676
  %6207 = fmul fast float %6206, %6182
  %6208 = fmul fast float %5620, %6204
  %6209 = fmul fast float %6208, %5676
  %6210 = fmul fast float %6209, %6183
  %6211 = fmul fast float %5621, %6204
  %6212 = fmul fast float %6211, %5676
  %6213 = fmul fast float %6212, %6184
  %6214 = fadd fast float %6194, %4661
  %6215 = fadd fast float %6214, %6207
  %6216 = fmul fast float %6215, %4700
  %6217 = fadd fast float %6195, %4662
  %6218 = fadd fast float %6217, %6210
  %6219 = fmul fast float %6218, %4700
  %6220 = fadd fast float %6196, %4663
  %6221 = fadd fast float %6220, %6213
  %6222 = fmul fast float %6221, %4700
  %6223 = fadd fast float %6193, 1.000000e+00
  %6224 = fadd fast float %6192, 1.000000e+00
  %6225 = fadd fast float %6191, 1.000000e+00
  %6226 = fmul fast float %5676, %5621
  %6227 = fmul fast float %5676, %5620
  %6228 = fmul fast float %5676, %5619
  %6229 = fmul fast float %6225, %5623
  %6230 = fmul fast float %6224, %5624
  %6231 = fmul fast float %6223, %5625
  %6232 = fadd fast float %6229, %6228
  %6233 = fmul fast float %6232, %4700
  %6234 = fadd fast float %6230, %6227
  %6235 = fmul fast float %6234, %4700
  %6236 = fadd fast float %6231, %6226
  %6237 = fmul fast float %6236, %4700
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 3
  %6240 = fcmp fast oeq float %6239, 0.000000e+00
  br i1 %6240, label %7836, label %6241

; <label>:6241                                    ; preds = %6165
  %6242 = extractvalue %dx.types.CBufRet.f32 %6238, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6238, 2
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.CBufRet.f32 %6249, 1
  %6252 = call float @dx.op.dot3.f32(i32 55, float %6246, float %6247, float %6248, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6253 = select i1 %258, float %6250, float %6246
  %6254 = select i1 %258, float %6252, float %6247
  %6255 = select i1 %258, float %6251, float %6248
  %6256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6257 = extractvalue %dx.types.CBufRet.f32 %6256, 2
  %6258 = fmul fast float %6257, %116
  %6259 = fmul fast float %6257, %117
  %6260 = fmul fast float %6257, %118
  %6261 = fadd fast float %6258, %164
  %6262 = fadd fast float %6259, %165
  %6263 = fadd fast float %6260, %166
  %6264 = fcmp fast olt float %6239, 0.000000e+00
  br i1 %6264, label %7360, label %6265

; <label>:6265                                    ; preds = %6241
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = extractvalue %dx.types.CBufRet.f32 %6266, 0
  %6268 = extractvalue %dx.types.CBufRet.f32 %6266, 1
  %6269 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6270 = extractvalue %dx.types.CBufRet.f32 %6266, 3
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6275 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.f32 %6276, 0
  %6278 = extractvalue %dx.types.CBufRet.f32 %6276, 1
  %6279 = extractvalue %dx.types.CBufRet.f32 %6276, 2
  %6280 = extractvalue %dx.types.CBufRet.f32 %6276, 3
  %6281 = fmul fast float %6267, %6261
  %6282 = call float @dx.op.tertiary.f32(i32 46, float %6262, float %6268, float %6281)  ; FMad(a,b,c)
  %6283 = call float @dx.op.tertiary.f32(i32 46, float %6263, float %6269, float %6282)  ; FMad(a,b,c)
  %6284 = fadd fast float %6283, %6270
  %6285 = fmul fast float %6272, %6261
  %6286 = call float @dx.op.tertiary.f32(i32 46, float %6262, float %6273, float %6285)  ; FMad(a,b,c)
  %6287 = call float @dx.op.tertiary.f32(i32 46, float %6263, float %6274, float %6286)  ; FMad(a,b,c)
  %6288 = fadd fast float %6287, %6275
  %6289 = fmul fast float %6277, %6261
  %6290 = call float @dx.op.tertiary.f32(i32 46, float %6262, float %6278, float %6289)  ; FMad(a,b,c)
  %6291 = call float @dx.op.tertiary.f32(i32 46, float %6263, float %6279, float %6290)  ; FMad(a,b,c)
  %6292 = fadd fast float %6291, %6280
  %6293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6294 = extractvalue %dx.types.CBufRet.f32 %6293, 0
  %6295 = extractvalue %dx.types.CBufRet.f32 %6293, 1
  %6296 = extractvalue %dx.types.CBufRet.f32 %6293, 3
  %6297 = fmul fast float %6296, %6284
  %6298 = fmul fast float %6296, %6288
  %6299 = fadd fast float %6297, %6294
  %6300 = fadd fast float %6298, %6295
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6303 = extractvalue %dx.types.CBufRet.f32 %6301, 1
  %6304 = extractvalue %dx.types.CBufRet.f32 %6301, 3
  %6305 = fmul fast float %6304, %6284
  %6306 = fmul fast float %6304, %6288
  %6307 = fadd fast float %6305, %6302
  %6308 = fadd fast float %6306, %6303
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 1
  %6311 = fsub fast float %6310, %6292
  %6312 = extractvalue %dx.types.CBufRet.f32 %6309, 2
  %6313 = fmul fast float %6311, %6312
  %6314 = fsub fast float 1.000000e+00, %6313
  %6315 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  %6316 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 2
  %6319 = fadd fast float %6318, %6316
  %6320 = fcmp fast ogt float %6319, 0.000000e+00
  br i1 %6320, label %6321, label %6345

; <label>:6321                                    ; preds = %6265
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.CBufRet.f32 %6322, 1
  %6325 = fsub fast float %6307, %6323
  %6326 = fsub fast float %6308, %6324
  %6327 = fcmp fast olt float %6325, 0.000000e+00
  %6328 = fcmp fast olt float %6326, 0.000000e+00
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 0
  %6331 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6332 = extractvalue %dx.types.CBufRet.f32 %6329, 2
  %6333 = extractvalue %dx.types.CBufRet.f32 %6329, 3
  %6334 = select i1 %6327, float %6330, float %6332
  %6335 = select i1 %6328, float %6331, float %6333
  %6336 = fmul fast float %6334, %6325
  %6337 = fmul fast float %6335, %6326
  %6338 = call float @dx.op.unary.f32(i32 6, float %6336)  ; FAbs(value)
  %6339 = call float @dx.op.unary.f32(i32 6, float %6337)  ; FAbs(value)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6256, 0
  %6341 = call float @dx.op.binary.f32(i32 35, float %6338, float %6339)  ; FMax(a,b)
  %6342 = fsub fast float %6340, %6341
  %6343 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6344 = fmul fast float %6343, %6315
  br label %6345

; <label>:6345                                    ; preds = %6321, %6265
  %6346 = phi float [ %6344, %6321 ], [ 0.000000e+00, %6265 ]
  %6347 = extractvalue %dx.types.CBufRet.f32 %6293, 2
  %6348 = extractvalue %dx.types.CBufRet.f32 %6317, 1
  %6349 = fadd fast float %6348, %6347
  %6350 = fcmp fast ogt float %6349, 0.000000e+00
  %6351 = extractvalue %dx.types.CBufRet.f32 %6256, 0
  br i1 %6350, label %6352, label %6375

; <label>:6352                                    ; preds = %6345
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = fsub fast float %6299, %6354
  %6357 = fsub fast float %6300, %6355
  %6358 = fcmp fast olt float %6356, 0.000000e+00
  %6359 = fcmp fast olt float %6357, 0.000000e+00
  %6360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.f32 %6360, 0
  %6362 = extractvalue %dx.types.CBufRet.f32 %6360, 1
  %6363 = extractvalue %dx.types.CBufRet.f32 %6360, 2
  %6364 = extractvalue %dx.types.CBufRet.f32 %6360, 3
  %6365 = select i1 %6358, float %6361, float %6363
  %6366 = select i1 %6359, float %6362, float %6364
  %6367 = fmul fast float %6365, %6356
  %6368 = fmul fast float %6366, %6357
  %6369 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6370 = call float @dx.op.unary.f32(i32 6, float %6368)  ; FAbs(value)
  %6371 = call float @dx.op.binary.f32(i32 35, float %6369, float %6370)  ; FMax(a,b)
  %6372 = fsub fast float %6351, %6371
  %6373 = call float @dx.op.unary.f32(i32 7, float %6372)  ; Saturate(value)
  %6374 = fmul fast float %6373, %6315
  br label %6375

; <label>:6375                                    ; preds = %6352, %6345
  %6376 = phi float [ %6374, %6352 ], [ 0.000000e+00, %6345 ]
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6379 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 0
  %6382 = extractvalue %dx.types.CBufRet.f32 %6380, 1
  %6383 = fsub fast float %6284, %6381
  %6384 = fsub fast float %6288, %6382
  %6385 = fcmp fast olt float %6383, 0.000000e+00
  %6386 = fcmp fast olt float %6384, 0.000000e+00
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6389 = extractvalue %dx.types.CBufRet.f32 %6387, 1
  %6390 = extractvalue %dx.types.CBufRet.f32 %6387, 2
  %6391 = extractvalue %dx.types.CBufRet.f32 %6387, 3
  %6392 = select i1 %6385, float %6388, float %6390
  %6393 = select i1 %6386, float %6389, float %6391
  %6394 = fmul fast float %6392, %6383
  %6395 = fmul fast float %6393, %6384
  %6396 = call float @dx.op.unary.f32(i32 6, float %6394)  ; FAbs(value)
  %6397 = call float @dx.op.unary.f32(i32 6, float %6395)  ; FAbs(value)
  %6398 = call float @dx.op.binary.f32(i32 35, float %6396, float %6397)  ; FMax(a,b)
  %6399 = fsub fast float %6351, %6398
  %6400 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  %6401 = call float @dx.op.binary.f32(i32 36, float %6400, float %6379)  ; FMin(a,b)
  %6402 = fmul fast float %6401, %6315
  %6403 = fsub fast float %6376, %6402
  %6404 = fsub fast float %6346, %6376
  %6405 = fsub fast float %6404, %6402
  %6406 = call float @dx.op.binary.f32(i32 35, float %6376, float %6346)  ; FMax(a,b)
  %6407 = call float @dx.op.binary.f32(i32 35, float %6402, float %6406)  ; FMax(a,b)
  %6408 = fcmp fast olt float %6407, 1.000000e+00
  br i1 %6408, label %6409, label %6807, !dx.controlflow.hints !103

; <label>:6409                                    ; preds = %6375
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 0
  %6412 = fcmp fast une float %6411, 0.000000e+00
  br i1 %6412, label %6413, label %6807, !dx.controlflow.hints !104

; <label>:6413                                    ; preds = %6409
  %6414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6415 = extractvalue %dx.types.CBufRet.f32 %6414, 0
  %6416 = extractvalue %dx.types.CBufRet.f32 %6414, 1
  %6417 = extractvalue %dx.types.CBufRet.f32 %6414, 2
  %6418 = extractvalue %dx.types.CBufRet.f32 %6414, 3
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.CBufRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.CBufRet.f32 %6419, 2
  %6423 = extractvalue %dx.types.CBufRet.f32 %6419, 3
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6428 = extractvalue %dx.types.CBufRet.f32 %6424, 3
  %6429 = fmul fast float %6415, %6261
  %6430 = call float @dx.op.tertiary.f32(i32 46, float %6262, float %6416, float %6429)  ; FMad(a,b,c)
  %6431 = call float @dx.op.tertiary.f32(i32 46, float %6263, float %6417, float %6430)  ; FMad(a,b,c)
  %6432 = fadd fast float %6431, %6418
  %6433 = fmul fast float %6420, %6261
  %6434 = call float @dx.op.tertiary.f32(i32 46, float %6262, float %6421, float %6433)  ; FMad(a,b,c)
  %6435 = call float @dx.op.tertiary.f32(i32 46, float %6263, float %6422, float %6434)  ; FMad(a,b,c)
  %6436 = fadd fast float %6435, %6423
  %6437 = fmul fast float %6425, %6261
  %6438 = call float @dx.op.tertiary.f32(i32 46, float %6262, float %6426, float %6437)  ; FMad(a,b,c)
  %6439 = call float @dx.op.tertiary.f32(i32 46, float %6263, float %6427, float %6438)  ; FMad(a,b,c)
  %6440 = fadd fast float %6439, %6428
  %6441 = fcmp fast oge float %6432, 1.000000e+00
  %6442 = fcmp fast oge float %6436, 1.000000e+00
  %6443 = or i1 %6441, %6442
  %6444 = fcmp fast olt float %6432, 0.000000e+00
  %6445 = fcmp fast olt float %6436, 0.000000e+00
  %6446 = or i1 %6444, %6445
  %6447 = or i1 %6443, %6446
  br i1 %6447, label %6807, label %6448, !dx.controlflow.hints !105

; <label>:6448                                    ; preds = %6413
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.CBufRet.f32 %6449, 1
  %6452 = extractvalue %dx.types.CBufRet.f32 %6449, 2
  %6453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.i32 %6453, 2
  %6455 = uitofp i32 %6454 to float
  %6456 = extractvalue %dx.types.CBufRet.i32 %6453, 3
  %6457 = uitofp i32 %6456 to float
  %6458 = extractvalue %dx.types.CBufRet.f32 %6449, 3
  %6459 = fmul fast float %6458, 2.000000e+00
  %6460 = fsub fast float %6432, %6450
  %6461 = fsub fast float %6436, %6451
  %6462 = fmul fast float %6459, %6460
  %6463 = fmul fast float %6459, %6461
  %6464 = fdiv fast float 1.000000e+00, %6244
  %6465 = fmul fast float %6463, %6464
  %6466 = call float @dx.op.unary.f32(i32 6, float %6465)  ; FAbs(value)
  %6467 = fmul fast float %6452, %6263
  %6468 = fmul fast float %6467, %6459
  %6469 = call float @dx.op.unary.f32(i32 6, float %6468)  ; FAbs(value)
  %6470 = call float @dx.op.unary.f32(i32 6, float %6462)  ; FAbs(value)
  %6471 = call float @dx.op.binary.f32(i32 35, float %6469, float %6466)  ; FMax(a,b)
  %6472 = call float @dx.op.binary.f32(i32 35, float %6470, float %6471)  ; FMax(a,b)
  %6473 = fmul fast float %6472, 2.000000e+00
  %6474 = call float @dx.op.unary.f32(i32 23, float %6473)  ; Log(value)
  %6475 = call float @dx.op.binary.f32(i32 35, float %6474, float %6455)  ; FMax(a,b)
  %6476 = call float @dx.op.unary.f32(i32 22, float %6475)  ; Frc(value)
  %6477 = fadd fast float %6476, 0xBFEA666660000000
  %6478 = fmul fast float %6477, 8.000000e+00
  %6479 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  %6480 = call float @dx.op.unary.f32(i32 27, float %6475)  ; Round_ni(value)
  %6481 = fadd fast float %6480, %6479
  %6482 = call float @dx.op.binary.f32(i32 36, float %6481, float %6457)  ; FMin(a,b)
  %6483 = call float @dx.op.unary.f32(i32 27, float %6482)  ; Round_ni(value)
  %6484 = fsub fast float -0.000000e+00, %6483
  %6485 = call float @dx.op.unary.f32(i32 21, float %6484)  ; Exp(value)
  %6486 = fmul fast float %6485, %6459
  %6487 = fmul fast float %6486, %6432
  %6488 = fmul fast float %6486, %6436
  %6489 = fmul fast float %6487, 2.500000e-01
  %6490 = fmul fast float %6488, 2.500000e-01
  %6491 = fadd fast float %6489, 5.000000e-01
  %6492 = fadd fast float %6490, 5.000000e-01
  %6493 = fsub fast float %6457, %6455
  %6494 = fptoui float %6493 to i32
  %6495 = add i32 %6494, 320
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6495)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.CBufRet.f32 %6496, 1
  %6499 = fcmp fast une float %6482, %6457
  %6500 = fsub fast float %6432, %6497
  %6501 = fsub fast float %6436, %6498
  %6502 = call float @dx.op.unary.f32(i32 6, float %6500)  ; FAbs(value)
  %6503 = call float @dx.op.unary.f32(i32 6, float %6501)  ; FAbs(value)
  %6504 = fmul fast float %6502, %6486
  %6505 = fmul fast float %6503, %6486
  %6506 = fcmp fast olt float %6504, 1.000000e+00
  %6507 = fcmp fast olt float %6505, 1.000000e+00
  %6508 = and i1 %6506, %6507
  %6509 = or i1 %6499, %6508
  br i1 %6509, label %6510, label %6807, !dx.controlflow.hints !106

; <label>:6510                                    ; preds = %6448
  %6511 = fmul fast float %6488, 5.000000e-01
  %6512 = fmul fast float %6487, 5.000000e-01
  %6513 = fadd fast float %6511, 5.000000e-01
  %6514 = fadd fast float %6512, 5.000000e-01
  %6515 = sitofp i32 %6454 to float
  %6516 = fsub fast float %6482, %6515
  %6517 = call float @dx.op.unary.f32(i32 27, float %6516)  ; Round_ni(value)
  %6518 = call float @dx.op.unary.f32(i32 22, float %6482)  ; Frc(value)
  %6519 = call float @dx.op.unary.f32(i32 22, float %6514)  ; Frc(value)
  %6520 = call float @dx.op.unary.f32(i32 22, float %6513)  ; Frc(value)
  %6521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6519, float %6520, float %6517, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6522 = extractvalue %dx.types.ResRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.ResRet.f32 %6521, 1
  %6524 = extractvalue %dx.types.ResRet.f32 %6521, 2
  %6525 = extractvalue %dx.types.ResRet.f32 %6521, 3
  %6526 = fcmp fast ogt float %6518, 0.000000e+00
  br i1 %6526, label %6527, label %6548, !dx.controlflow.hints !107

; <label>:6527                                    ; preds = %6510
  %6528 = fadd fast float %6517, 1.000000e+00
  %6529 = call float @dx.op.unary.f32(i32 22, float %6491)  ; Frc(value)
  %6530 = call float @dx.op.unary.f32(i32 22, float %6492)  ; Frc(value)
  %6531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6529, float %6530, float %6528, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6532 = extractvalue %dx.types.ResRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.ResRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.ResRet.f32 %6531, 2
  %6535 = extractvalue %dx.types.ResRet.f32 %6531, 3
  %6536 = fsub fast float %6532, %6522
  %6537 = fsub fast float %6533, %6523
  %6538 = fsub fast float %6534, %6524
  %6539 = fsub fast float %6535, %6525
  %6540 = fmul fast float %6536, %6518
  %6541 = fmul fast float %6537, %6518
  %6542 = fmul fast float %6538, %6518
  %6543 = fmul fast float %6539, %6518
  %6544 = fadd fast float %6540, %6522
  %6545 = fadd fast float %6541, %6523
  %6546 = fadd fast float %6542, %6524
  %6547 = fadd fast float %6543, %6525
  br label %6548

; <label>:6548                                    ; preds = %6527, %6510
  %6549 = phi float [ %6544, %6527 ], [ %6522, %6510 ]
  %6550 = phi float [ %6545, %6527 ], [ %6523, %6510 ]
  %6551 = phi float [ %6546, %6527 ], [ %6524, %6510 ]
  %6552 = phi float [ %6547, %6527 ], [ %6525, %6510 ]
  %6553 = fadd fast float %6549, -5.000000e-01
  %6554 = fadd fast float %6551, -5.000000e-01
  %6555 = fmul fast float %6553, 0xBFD5555560000000
  %6556 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6554, float %6555)  ; FMad(a,b,c)
  %6557 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6550, float 0.000000e+00)  ; FMad(a,b,c)
  %6558 = fadd fast float %6557, %6552
  %6559 = fmul fast float %6553, -7.500000e-01
  %6560 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6554, float %6559)  ; FMad(a,b,c)
  %6561 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6550, float 0.000000e+00)  ; FMad(a,b,c)
  %6562 = fadd fast float %6561, %6552
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 0
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.f32 %6565, 0
  %6567 = extractvalue %dx.types.CBufRet.f32 %6565, 1
  %6568 = extractvalue %dx.types.CBufRet.f32 %6565, 2
  %6569 = extractvalue %dx.types.CBufRet.f32 %6565, 3
  %6570 = fsub fast float %6566, %6556
  %6571 = fsub fast float %6567, %6558
  %6572 = fsub fast float %6568, %6560
  %6573 = fsub fast float %6569, %6562
  %6574 = fmul fast float %6570, %6564
  %6575 = fmul fast float %6571, %6564
  %6576 = fmul fast float %6572, %6564
  %6577 = fmul fast float %6573, %6564
  %6578 = fadd fast float %6574, %6556
  %6579 = fadd fast float %6575, %6558
  %6580 = fadd fast float %6576, %6560
  %6581 = fadd fast float %6577, %6562
  %6582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6583 = extractvalue %dx.types.ResRet.i32 %6582, 0
  %6584 = and i32 %6583, 536870911
  %6585 = uitofp i32 %6584 to float
  %6586 = fmul fast float %6585, %6432
  %6587 = fmul fast float %6585, %6436
  %6588 = fptoui float %6586 to i32
  %6589 = fptoui float %6587 to i32
  %6590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6591 = extractvalue %dx.types.ResRet.i32 %6590, 0
  %6592 = and i32 %6591, 31
  %6593 = lshr i32 %6588, %6592
  %6594 = lshr i32 %6589, %6592
  %6595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6596 = extractvalue %dx.types.ResRet.i32 %6595, 0
  %6597 = and i32 %6596, 31
  %6598 = shl i32 1, %6597
  %6599 = call i32 @dx.op.binary.i32(i32 40, i32 %6598, i32 4)  ; UMin(a,b)
  %6600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6601 = extractvalue %dx.types.ResRet.i32 %6600, 0
  %6602 = extractvalue %dx.types.ResRet.i32 %6600, 1
  %6603 = icmp eq i32 %6599, 0
  br i1 %6603, label %6645, label %6604

; <label>:6604                                    ; preds = %6548
  br label %6605

; <label>:6605                                    ; preds = %6633, %6604
  %6606 = phi i32 [ %6636, %6633 ], [ 0, %6604 ]
  %6607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6608 = extractvalue %dx.types.ResRet.i32 %6607, 0
  %6609 = lshr i32 %6608, 16
  %6610 = and i32 %6609, 31
  %6611 = shl i32 %6594, %6610
  %6612 = add i32 %6611, %6593
  %6613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6614 = extractvalue %dx.types.ResRet.i32 %6613, 0
  %6615 = and i32 %6614, 31
  %6616 = shl i32 %6612, %6615
  %6617 = add i32 %6616, %6606
  %6618 = shl i32 %6617, 2
  %6619 = add i32 %6618, 32
  %6620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6619, i32 undef)  ; BufferLoad(srv,index,wot)
  %6621 = extractvalue %dx.types.ResRet.i32 %6620, 0
  %6622 = icmp slt i32 %6621, 0
  %6623 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6606
  %6624 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6606
  %6625 = bitcast float* %6623 to i32*
  %6626 = bitcast float* %6624 to i32*
  br i1 %6622, label %6627, label %6633

; <label>:6627                                    ; preds = %6605
  %6628 = and i32 %6621, 1073741823
  %6629 = add nuw nsw i32 %6628, 20
  %6630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6629, i32 undef)  ; BufferLoad(srv,index,wot)
  %6631 = extractvalue %dx.types.ResRet.i32 %6630, 0
  %6632 = extractvalue %dx.types.ResRet.i32 %6630, 1
  br label %6633

; <label>:6633                                    ; preds = %6627, %6605
  %6634 = phi i32 [ %6631, %6627 ], [ %6601, %6605 ]
  %6635 = phi i32 [ %6632, %6627 ], [ %6602, %6605 ]
  store i32 %6634, i32* %6625, align 4
  store i32 %6635, i32* %6626, align 4
  %6636 = add nuw i32 %6606, 1
  %6637 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6638 = extractvalue %dx.types.CBufRet.i32 %6637, 2
  %6639 = icmp eq i32 %6638, 0
  %6640 = icmp ugt i32 %6621, -1073741825
  %6641 = and i1 %6640, %6639
  %6642 = icmp ult i32 %6636, %6599
  %6643 = and i1 %6641, %6642
  br i1 %6643, label %6605, label %6644

; <label>:6644                                    ; preds = %6633
  br label %6645

; <label>:6645                                    ; preds = %6644, %6548
  %6646 = phi i32 [ 0, %6548 ], [ %6636, %6644 ]
  %6647 = extractvalue %dx.types.CBufRet.f32 %6410, 2
  %6648 = fptoui float %6647 to i32
  %6649 = icmp eq i32 %6648, 0
  br i1 %6649, label %6701, label %6650

; <label>:6650                                    ; preds = %6645
  br label %6651

; <label>:6651                                    ; preds = %6696, %6650
  %6652 = phi i32 [ %6697, %6696 ], [ %6646, %6650 ]
  %6653 = phi i32 [ %6698, %6696 ], [ 0, %6650 ]
  %6654 = lshr i32 %6653, 2
  %6655 = and i32 %6653, 3
  %6656 = add nuw nsw i32 %6654, 83
  %6657 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6656)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.i32 %6657, 0
  %6659 = extractvalue %dx.types.CBufRet.i32 %6657, 1
  %6660 = extractvalue %dx.types.CBufRet.i32 %6657, 2
  %6661 = extractvalue %dx.types.CBufRet.i32 %6657, 3
  %6662 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6658, i32* %6662, align 4
  %6663 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6659, i32* %6663, align 4
  %6664 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6660, i32* %6664, align 4
  %6665 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6661, i32* %6665, align 4
  %6666 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6655
  %6667 = load i32, i32* %6666, align 4, !tbaa !108, !noalias !112
  %6668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6669 = extractvalue %dx.types.ResRet.i32 %6668, 0
  %6670 = lshr i32 %6669, 16
  %6671 = and i32 %6670, 31
  %6672 = shl i32 %6594, %6671
  %6673 = add i32 %6672, %6593
  %6674 = shl i32 %6673, 2
  %6675 = add i32 %6674, %6667
  %6676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6675, i32 undef)  ; BufferLoad(srv,index,wot)
  %6677 = extractvalue %dx.types.ResRet.i32 %6676, 0
  %6678 = icmp eq i32 %6677, 0
  br i1 %6678, label %6696, label %6679

; <label>:6679                                    ; preds = %6651
  %6680 = icmp slt i32 %6677, 0
  %6681 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6652
  %6682 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6652
  %6683 = bitcast float* %6681 to i32*
  %6684 = bitcast float* %6682 to i32*
  br i1 %6680, label %6685, label %6692

; <label>:6685                                    ; preds = %6679
  %6686 = and i32 %6677, 1073741823
  %6687 = add i32 %6667, 20
  %6688 = add i32 %6687, %6686
  %6689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6688, i32 undef)  ; BufferLoad(srv,index,wot)
  %6690 = extractvalue %dx.types.ResRet.i32 %6689, 0
  %6691 = extractvalue %dx.types.ResRet.i32 %6689, 1
  br label %6692

; <label>:6692                                    ; preds = %6685, %6679
  %6693 = phi i32 [ %6690, %6685 ], [ %6601, %6679 ]
  %6694 = phi i32 [ %6691, %6685 ], [ %6602, %6679 ]
  store i32 %6693, i32* %6683, align 4
  store i32 %6694, i32* %6684, align 4
  %6695 = add i32 %6652, 1
  br label %6696

; <label>:6696                                    ; preds = %6692, %6651
  %6697 = phi i32 [ %6652, %6651 ], [ %6695, %6692 ]
  %6698 = add nuw i32 %6653, 1
  %6699 = icmp eq i32 %6698, %6648
  br i1 %6699, label %6700, label %6651

; <label>:6700                                    ; preds = %6696
  br label %6701

; <label>:6701                                    ; preds = %6700, %6645
  %6702 = phi i32 [ %6646, %6645 ], [ %6697, %6700 ]
  %6703 = icmp eq i32 %6702, 1
  %6704 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %6705 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %6703, label %6706, label %6709

; <label>:6706                                    ; preds = %6701
  %6707 = load float, float* %6704, align 4
  %6708 = load float, float* %6705, align 4
  br label %6736

; <label>:6709                                    ; preds = %6701
  %6710 = load float, float* %6704, align 4
  %6711 = load float, float* %6705, align 4
  %6712 = fdiv fast float 1.000000e+00, %6711
  %6713 = fsub fast float %6710, %6712
  %6714 = icmp ugt i32 %6702, 1
  br i1 %6714, label %6715, label %6731

; <label>:6715                                    ; preds = %6709
  br label %6716

; <label>:6716                                    ; preds = %6716, %6715
  %6717 = phi float [ %6726, %6716 ], [ %6713, %6715 ]
  %6718 = phi float [ %6727, %6716 ], [ %6710, %6715 ]
  %6719 = phi i32 [ %6728, %6716 ], [ 1, %6715 ]
  %6720 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6719
  %6721 = load float, float* %6720, align 4
  %6722 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6719
  %6723 = load float, float* %6722, align 4
  %6724 = fdiv fast float 1.000000e+00, %6723
  %6725 = fsub fast float %6721, %6724
  %6726 = call float @dx.op.binary.f32(i32 36, float %6717, float %6725)  ; FMin(a,b)
  %6727 = call float @dx.op.binary.f32(i32 35, float %6718, float %6721)  ; FMax(a,b)
  %6728 = add nuw i32 %6719, 1
  %6729 = icmp eq i32 %6728, %6702
  br i1 %6729, label %6730, label %6716

; <label>:6730                                    ; preds = %6716
  br label %6731

; <label>:6731                                    ; preds = %6730, %6709
  %6732 = phi float [ %6713, %6709 ], [ %6726, %6730 ]
  %6733 = phi float [ %6710, %6709 ], [ %6727, %6730 ]
  %6734 = fsub fast float %6733, %6732
  %6735 = fdiv fast float 1.000000e+00, %6734
  br label %6736

; <label>:6736                                    ; preds = %6731, %6706
  %6737 = phi float [ %6707, %6706 ], [ %6733, %6731 ]
  %6738 = phi float [ %6708, %6706 ], [ %6735, %6731 ]
  %6739 = fadd fast float %6440, %6737
  %6740 = fmul fast float %6739, %6738
  %6741 = call float @dx.op.unary.f32(i32 7, float %6740)  ; Saturate(value)
  %6742 = fmul fast float %6741, 2.000000e+00
  %6743 = fsub fast float 1.000000e+00, %6742
  %6744 = fmul fast float %6578, %6578
  %6745 = fsub fast float %6579, %6744
  %6746 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6745)  ; FMax(a,b)
  %6747 = fdiv fast float 1.000000e+00, %6746
  %6748 = fmul fast float %6579, %6578
  %6749 = fsub fast float %6580, %6748
  %6750 = fsub fast float %6743, %6578
  %6751 = fmul fast float %6743, %6743
  %6752 = fsub fast float %6751, %6579
  %6753 = fmul fast float %6747, %6749
  %6754 = fmul fast float %6753, %6750
  %6755 = fsub fast float %6752, %6754
  %6756 = fmul fast float %6579, %6579
  %6757 = fsub fast float %6581, %6756
  %6758 = fmul fast float %6749, %6749
  %6759 = fmul fast float %6758, %6747
  %6760 = fsub fast float %6757, %6759
  %6761 = fdiv fast float %6755, %6760
  %6762 = fmul fast float %6761, %6749
  %6763 = fsub fast float %6750, %6762
  %6764 = fmul fast float %6763, %6747
  %6765 = fmul fast float %6764, %6578
  %6766 = fsub fast float 1.000000e+00, %6765
  %6767 = fmul fast float %6761, %6579
  %6768 = fsub fast float %6766, %6767
  %6769 = fmul fast float %6764, %6764
  %6770 = fmul fast float %6761, 4.000000e+00
  %6771 = fmul fast float %6770, %6768
  %6772 = fsub fast float %6769, %6771
  %6773 = call float @dx.op.unary.f32(i32 24, float %6772)  ; Sqrt(value)
  %6774 = fcmp fast oge float %6764, 0.000000e+00
  %6775 = fsub fast float -0.000000e+00, %6773
  %6776 = select i1 %6774, float %6775, float %6773
  %6777 = fsub fast float %6776, %6764
  %6778 = fdiv fast float %6777, %6761
  %6779 = fdiv fast float %6768, %6777
  %6780 = fmul fast float %6778, 5.000000e-01
  %6781 = fmul fast float %6779, 2.000000e+00
  %6782 = select i1 %6774, float %6780, float %6781
  %6783 = select i1 %6774, float %6781, float %6780
  %6784 = call float @dx.op.binary.f32(i32 35, float %6782, float %6783)  ; FMax(a,b)
  %6785 = call float @dx.op.binary.f32(i32 36, float %6782, float %6783)  ; FMin(a,b)
  %6786 = fcmp fast ogt float %6743, %6784
  %6787 = fsub fast float %6743, %6785
  %6788 = fsub fast float %6743, %6784
  %6789 = fsub fast float %6784, %6785
  %6790 = select i1 %6786, float %6788, float %6789
  %6791 = fmul float %6787, %6790
  %6792 = select i1 %6786, float %6785, float %6743
  %6793 = fcmp fast ogt float %6743, %6785
  %6794 = fmul fast float %6792, %6784
  %6795 = fadd fast float %6792, %6784
  %6796 = fmul fast float %6795, %6578
  %6797 = fadd fast float %6794, %6579
  %6798 = fsub fast float %6797, %6796
  %6799 = fdiv fast float %6798, %6791
  %6800 = select i1 %6793, float %6799, float 0.000000e+00
  %6801 = fsub fast float 1.000000e+00, %6800
  %6802 = select i1 %6786, float %6801, float %6800
  %6803 = call float @dx.op.unary.f32(i32 7, float %6802)  ; Saturate(value)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6563, 3
  %6805 = fmul fast float %6804, %6803
  %6806 = fsub fast float 1.000000e+00, %6805
  br label %6807

; <label>:6807                                    ; preds = %6736, %6448, %6413, %6409, %6375
  %6808 = phi float [ 1.000000e+00, %6375 ], [ %6806, %6736 ], [ 1.000000e+00, %6413 ], [ 1.000000e+00, %6448 ], [ 1.000000e+00, %6409 ]
  %6809 = fcmp fast ogt float %6405, 0.000000e+00
  br i1 %6809, label %6810, label %6972, !dx.controlflow.hints !121

; <label>:6810                                    ; preds = %6807
  %6811 = fadd fast float %6318, %6292
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 2
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 3
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 2
  %6817 = call float @dx.op.binary.f32(i32 35, float %6811, float 0.000000e+00)  ; FMax(a,b)
  %6818 = fadd fast float %6817, 0x3F10000000000000
  %6819 = fcmp fast oeq float %6816, 0.000000e+00
  br i1 %6819, label %6820, label %6887

; <label>:6820                                    ; preds = %6810
  %6821 = extractvalue %dx.types.CBufRet.f32 %6812, 1
  %6822 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6823 = fmul fast float %6822, %6307
  %6824 = fmul fast float %6821, %6308
  %6825 = fadd fast float %6823, 5.000000e-01
  %6826 = call float @dx.op.unary.f32(i32 27, float %6825)  ; Round_ni(value)
  %6827 = fadd fast float %6824, 5.000000e-01
  %6828 = call float @dx.op.unary.f32(i32 27, float %6827)  ; Round_ni(value)
  %6829 = fsub fast float %6825, %6826
  %6830 = fsub fast float %6827, %6828
  %6831 = fadd fast float %6826, -5.000000e-01
  %6832 = fadd fast float %6828, -5.000000e-01
  %6833 = fmul fast float %6829, 2.000000e+00
  %6834 = fsub fast float 3.000000e+00, %6833
  %6835 = fadd fast float %6833, 1.000000e+00
  %6836 = fsub fast float 2.000000e+00, %6829
  %6837 = bitcast float %6834 to i32
  %6838 = sub nsw i32 2129859010, %6837
  %6839 = bitcast i32 %6838 to float
  %6840 = fmul fast float %6839, %6836
  %6841 = fadd fast float %6840, -1.000000e+00
  %6842 = bitcast float %6835 to i32
  %6843 = sub nsw i32 2129859010, %6842
  %6844 = bitcast i32 %6843 to float
  %6845 = fmul fast float %6844, %6829
  %6846 = fadd fast float %6845, 1.000000e+00
  %6847 = fmul fast float %6830, 2.000000e+00
  %6848 = fsub fast float 3.000000e+00, %6847
  %6849 = fadd fast float %6847, 1.000000e+00
  %6850 = fsub fast float 2.000000e+00, %6830
  %6851 = bitcast float %6848 to i32
  %6852 = sub nsw i32 2129859010, %6851
  %6853 = bitcast i32 %6852 to float
  %6854 = fmul fast float %6853, %6850
  %6855 = fadd fast float %6854, -1.000000e+00
  %6856 = bitcast float %6849 to i32
  %6857 = sub nsw i32 2129859010, %6856
  %6858 = bitcast i32 %6857 to float
  %6859 = fmul fast float %6858, %6830
  %6860 = fadd fast float %6859, 1.000000e+00
  %6861 = fadd fast float %6841, %6831
  %6862 = fmul fast float %6861, %6813
  %6863 = fadd fast float %6855, %6832
  %6864 = fmul fast float %6863, %6814
  %6865 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6862, float %6864, float undef, float undef, i32 0, i32 0, i32 undef, float %6818)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = fmul fast float %6866, %6834
  %6868 = fadd fast float %6846, %6831
  %6869 = fmul fast float %6868, %6813
  %6870 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6869, float %6864, float undef, float undef, i32 0, i32 0, i32 undef, float %6818)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6871 = extractvalue %dx.types.ResRet.f32 %6870, 0
  %6872 = fmul fast float %6871, %6835
  %6873 = fadd fast float %6860, %6832
  %6874 = fmul fast float %6873, %6814
  %6875 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6862, float %6874, float undef, float undef, i32 0, i32 0, i32 undef, float %6818)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6876 = extractvalue %dx.types.ResRet.f32 %6875, 0
  %6877 = fmul fast float %6876, %6834
  %6878 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6869, float %6874, float undef, float undef, i32 0, i32 0, i32 undef, float %6818)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6879 = extractvalue %dx.types.ResRet.f32 %6878, 0
  %6880 = fmul fast float %6879, %6835
  %6881 = fadd fast float %6880, %6877
  %6882 = fmul fast float %6881, %6849
  %6883 = fadd fast float %6872, %6867
  %6884 = fmul fast float %6883, %6848
  %6885 = fadd fast float %6884, %6882
  %6886 = fmul fast float %6885, 6.250000e-02
  br label %6972

; <label>:6887                                    ; preds = %6810
  %6888 = fmul fast float %269, 0x401921FB60000000
  %6889 = call float @dx.op.unary.f32(i32 13, float %6888)  ; Sin(value)
  %6890 = call float @dx.op.unary.f32(i32 12, float %6888)  ; Cos(value)
  %6891 = fsub fast float -0.000000e+00, %6889
  br label %6892

; <label>:6892                                    ; preds = %6941, %6887
  %6893 = phi float [ 0.000000e+00, %6887 ], [ %6936, %6941 ]
  %6894 = phi float [ 0.000000e+00, %6887 ], [ %6938, %6941 ]
  %6895 = phi i32 [ 0, %6887 ], [ %6942, %6941 ]
  %6896 = mul i32 %6895, 2
  %6897 = add i32 0, %6896
  %6898 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6897
  %6899 = load float, float* %6898, align 4
  %6900 = mul i32 %6895, 2
  %6901 = add i32 1, %6900
  %6902 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6901
  %6903 = load float, float* %6902, align 4
  %6904 = fmul fast float %6899, %6890
  %6905 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %6891, float %6904)  ; FMad(a,b,c)
  %6906 = fmul fast float %6899, %6889
  %6907 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %6890, float %6906)  ; FMad(a,b,c)
  %6908 = fmul fast float %6905, %6816
  %6909 = fmul fast float %6907, %6816
  %6910 = fadd fast float %6908, %6307
  %6911 = fadd fast float %6909, %6308
  %6912 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6910, float %6911, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.ResRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.ResRet.f32 %6912, 2
  %6916 = extractvalue %dx.types.ResRet.f32 %6912, 3
  %6917 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %6913, float* %6917, align 4
  %6918 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %6914, float* %6918, align 4
  %6919 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %6915, float* %6919, align 4
  %6920 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %6916, float* %6920, align 4
  %6921 = fsub fast float %6913, %6818
  %6922 = fcmp fast olt float %6921, 0.000000e+00
  %6923 = select i1 %6922, float 0.000000e+00, float 1.000000e+00
  %6924 = fadd fast float %6923, %6893
  %6925 = fmul fast float %6923, %6921
  %6926 = fadd fast float %6925, %6894
  br label %6927

; <label>:6927                                    ; preds = %6927, %6892
  %6928 = phi i32 [ 1, %6892 ], [ %6939, %6927 ]
  %6929 = phi float [ %6926, %6892 ], [ %6938, %6927 ]
  %6930 = phi float [ %6924, %6892 ], [ %6936, %6927 ]
  %6931 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %6928
  %6932 = load float, float* %6931, align 4, !tbaa !122, !noalias !112
  %6933 = fsub fast float %6932, %6818
  %6934 = fcmp fast olt float %6933, 0.000000e+00
  %6935 = select i1 %6934, float 0.000000e+00, float 1.000000e+00
  %6936 = fadd fast float %6935, %6930
  %6937 = fmul fast float %6935, %6933
  %6938 = fadd fast float %6937, %6929
  %6939 = add nuw nsw i32 %6928, 1
  %6940 = icmp eq i32 %6939, 4
  br i1 %6940, label %6941, label %6927, !llvm.loop !124

; <label>:6941                                    ; preds = %6927
  %6942 = add nuw nsw i32 %6895, 1
  %6943 = icmp eq i32 %6942, 8
  br i1 %6943, label %6944, label %6892, !llvm.loop !125

; <label>:6944                                    ; preds = %6941
  %6945 = fdiv fast float 1.000000e+00, %6936
  %6946 = fmul fast float %6945, %6938
  %6947 = fdiv fast float 1.000000e+00, %6818
  %6948 = fmul fast float %6946, %6947
  %6949 = call float @dx.op.unary.f32(i32 7, float %6948)  ; Saturate(value)
  %6950 = call float @dx.op.binary.f32(i32 35, float %6949, float 0.000000e+00)  ; FMax(a,b)
  %6951 = fmul fast float %6936, 3.125000e-02
  %6952 = call float @dx.op.unary.f32(i32 7, float %6951)  ; Saturate(value)
  %6953 = fmul fast float %6952, 2.000000e+00
  %6954 = fadd fast float %6953, -1.000000e+00
  %6955 = fcmp fast ogt float %6954, 0.000000e+00
  %6956 = fcmp fast olt float %6954, 0.000000e+00
  %6957 = zext i1 %6955 to i32
  %6958 = zext i1 %6956 to i32
  %6959 = sub nsw i32 %6957, %6958
  %6960 = sitofp i32 %6959 to float
  %6961 = fmul fast float %6960, %6954
  %6962 = fsub fast float 1.000000e+00, %6961
  %6963 = fmul fast float %6962, %6962
  %6964 = fmul fast float %6963, %6962
  %6965 = fsub fast float %6962, %6964
  %6966 = fmul fast float %6965, %6950
  %6967 = fsub fast float 1.000000e+00, %6964
  %6968 = fsub fast float %6967, %6966
  %6969 = fmul fast float %6960, 5.000000e-01
  %6970 = fmul fast float %6969, %6968
  %6971 = fsub fast float 5.000000e-01, %6970
  br label %6972

; <label>:6972                                    ; preds = %6944, %6820, %6807
  %6973 = phi float [ 1.000000e+00, %6807 ], [ %6886, %6820 ], [ %6971, %6944 ]
  %6974 = fcmp fast ogt float %6403, 0.000000e+00
  br i1 %6974, label %6975, label %7139, !dx.controlflow.hints !126

; <label>:6975                                    ; preds = %6972
  %6976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6976, 1
  %6978 = fadd fast float %6977, %6292
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 3
  %6982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6983 = extractvalue %dx.types.CBufRet.f32 %6982, 1
  %6984 = call float @dx.op.binary.f32(i32 35, float %6978, float 0.000000e+00)  ; FMax(a,b)
  %6985 = fadd fast float %6984, 0x3F10000000000000
  %6986 = fcmp fast oeq float %6983, 0.000000e+00
  br i1 %6986, label %6987, label %7054

; <label>:6987                                    ; preds = %6975
  %6988 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %6989 = extractvalue %dx.types.CBufRet.f32 %6979, 0
  %6990 = fmul fast float %6989, %6299
  %6991 = fmul fast float %6988, %6300
  %6992 = fadd fast float %6990, 5.000000e-01
  %6993 = call float @dx.op.unary.f32(i32 27, float %6992)  ; Round_ni(value)
  %6994 = fadd fast float %6991, 5.000000e-01
  %6995 = call float @dx.op.unary.f32(i32 27, float %6994)  ; Round_ni(value)
  %6996 = fsub fast float %6992, %6993
  %6997 = fsub fast float %6994, %6995
  %6998 = fadd fast float %6993, -5.000000e-01
  %6999 = fadd fast float %6995, -5.000000e-01
  %7000 = fmul fast float %6996, 2.000000e+00
  %7001 = fsub fast float 3.000000e+00, %7000
  %7002 = fadd fast float %7000, 1.000000e+00
  %7003 = fsub fast float 2.000000e+00, %6996
  %7004 = bitcast float %7001 to i32
  %7005 = sub nsw i32 2129859010, %7004
  %7006 = bitcast i32 %7005 to float
  %7007 = fmul fast float %7006, %7003
  %7008 = fadd fast float %7007, -1.000000e+00
  %7009 = bitcast float %7002 to i32
  %7010 = sub nsw i32 2129859010, %7009
  %7011 = bitcast i32 %7010 to float
  %7012 = fmul fast float %7011, %6996
  %7013 = fadd fast float %7012, 1.000000e+00
  %7014 = fmul fast float %6997, 2.000000e+00
  %7015 = fsub fast float 3.000000e+00, %7014
  %7016 = fadd fast float %7014, 1.000000e+00
  %7017 = fsub fast float 2.000000e+00, %6997
  %7018 = bitcast float %7015 to i32
  %7019 = sub nsw i32 2129859010, %7018
  %7020 = bitcast i32 %7019 to float
  %7021 = fmul fast float %7020, %7017
  %7022 = fadd fast float %7021, -1.000000e+00
  %7023 = bitcast float %7016 to i32
  %7024 = sub nsw i32 2129859010, %7023
  %7025 = bitcast i32 %7024 to float
  %7026 = fmul fast float %7025, %6997
  %7027 = fadd fast float %7026, 1.000000e+00
  %7028 = fadd fast float %7008, %6998
  %7029 = fmul fast float %7028, %6980
  %7030 = fadd fast float %7022, %6999
  %7031 = fmul fast float %7030, %6981
  %7032 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7029, float %7031, float undef, float undef, i32 0, i32 0, i32 undef, float %6985)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = fmul fast float %7033, %7001
  %7035 = fadd fast float %7013, %6998
  %7036 = fmul fast float %7035, %6980
  %7037 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7036, float %7031, float undef, float undef, i32 0, i32 0, i32 undef, float %6985)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7038 = extractvalue %dx.types.ResRet.f32 %7037, 0
  %7039 = fmul fast float %7038, %7002
  %7040 = fadd fast float %7027, %6999
  %7041 = fmul fast float %7040, %6981
  %7042 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7029, float %7041, float undef, float undef, i32 0, i32 0, i32 undef, float %6985)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7043 = extractvalue %dx.types.ResRet.f32 %7042, 0
  %7044 = fmul fast float %7043, %7001
  %7045 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7036, float %7041, float undef, float undef, i32 0, i32 0, i32 undef, float %6985)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7046 = extractvalue %dx.types.ResRet.f32 %7045, 0
  %7047 = fmul fast float %7046, %7002
  %7048 = fadd fast float %7047, %7044
  %7049 = fmul fast float %7048, %7016
  %7050 = fadd fast float %7039, %7034
  %7051 = fmul fast float %7050, %7015
  %7052 = fadd fast float %7051, %7049
  %7053 = fmul fast float %7052, 6.250000e-02
  br label %7139

; <label>:7054                                    ; preds = %6975
  %7055 = fmul fast float %269, 0x401921FB60000000
  %7056 = call float @dx.op.unary.f32(i32 13, float %7055)  ; Sin(value)
  %7057 = call float @dx.op.unary.f32(i32 12, float %7055)  ; Cos(value)
  %7058 = fsub fast float -0.000000e+00, %7056
  br label %7059

; <label>:7059                                    ; preds = %7108, %7054
  %7060 = phi float [ 0.000000e+00, %7054 ], [ %7103, %7108 ]
  %7061 = phi float [ 0.000000e+00, %7054 ], [ %7105, %7108 ]
  %7062 = phi i32 [ 0, %7054 ], [ %7109, %7108 ]
  %7063 = mul i32 %7062, 2
  %7064 = add i32 0, %7063
  %7065 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7064
  %7066 = load float, float* %7065, align 4
  %7067 = mul i32 %7062, 2
  %7068 = add i32 1, %7067
  %7069 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7068
  %7070 = load float, float* %7069, align 4
  %7071 = fmul fast float %7066, %7057
  %7072 = call float @dx.op.tertiary.f32(i32 46, float %7070, float %7058, float %7071)  ; FMad(a,b,c)
  %7073 = fmul fast float %7066, %7056
  %7074 = call float @dx.op.tertiary.f32(i32 46, float %7070, float %7057, float %7073)  ; FMad(a,b,c)
  %7075 = fmul fast float %7072, %6983
  %7076 = fmul fast float %7074, %6983
  %7077 = fadd fast float %7075, %6299
  %7078 = fadd fast float %7076, %6300
  %7079 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7077, float %7078, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7080 = extractvalue %dx.types.ResRet.f32 %7079, 0
  %7081 = extractvalue %dx.types.ResRet.f32 %7079, 1
  %7082 = extractvalue %dx.types.ResRet.f32 %7079, 2
  %7083 = extractvalue %dx.types.ResRet.f32 %7079, 3
  %7084 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7080, float* %7084, align 4
  %7085 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7081, float* %7085, align 4
  %7086 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7082, float* %7086, align 4
  %7087 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7083, float* %7087, align 4
  %7088 = fsub fast float %7080, %6985
  %7089 = fcmp fast olt float %7088, 0.000000e+00
  %7090 = select i1 %7089, float 0.000000e+00, float 1.000000e+00
  %7091 = fadd fast float %7090, %7060
  %7092 = fmul fast float %7090, %7088
  %7093 = fadd fast float %7092, %7061
  br label %7094

; <label>:7094                                    ; preds = %7094, %7059
  %7095 = phi i32 [ 1, %7059 ], [ %7106, %7094 ]
  %7096 = phi float [ %7093, %7059 ], [ %7105, %7094 ]
  %7097 = phi float [ %7091, %7059 ], [ %7103, %7094 ]
  %7098 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7095
  %7099 = load float, float* %7098, align 4, !tbaa !122, !noalias !112
  %7100 = fsub fast float %7099, %6985
  %7101 = fcmp fast olt float %7100, 0.000000e+00
  %7102 = select i1 %7101, float 0.000000e+00, float 1.000000e+00
  %7103 = fadd fast float %7102, %7097
  %7104 = fmul fast float %7102, %7100
  %7105 = fadd fast float %7104, %7096
  %7106 = add nuw nsw i32 %7095, 1
  %7107 = icmp eq i32 %7106, 4
  br i1 %7107, label %7108, label %7094, !llvm.loop !124

; <label>:7108                                    ; preds = %7094
  %7109 = add nuw nsw i32 %7062, 1
  %7110 = icmp eq i32 %7109, 8
  br i1 %7110, label %7111, label %7059, !llvm.loop !125

; <label>:7111                                    ; preds = %7108
  %7112 = fdiv fast float 1.000000e+00, %7103
  %7113 = fmul fast float %7112, %7105
  %7114 = fdiv fast float 1.000000e+00, %6985
  %7115 = fmul fast float %7113, %7114
  %7116 = call float @dx.op.unary.f32(i32 7, float %7115)  ; Saturate(value)
  %7117 = call float @dx.op.binary.f32(i32 35, float %7116, float 0.000000e+00)  ; FMax(a,b)
  %7118 = fmul fast float %7103, 3.125000e-02
  %7119 = call float @dx.op.unary.f32(i32 7, float %7118)  ; Saturate(value)
  %7120 = fmul fast float %7119, 2.000000e+00
  %7121 = fadd fast float %7120, -1.000000e+00
  %7122 = fcmp fast ogt float %7121, 0.000000e+00
  %7123 = fcmp fast olt float %7121, 0.000000e+00
  %7124 = zext i1 %7122 to i32
  %7125 = zext i1 %7123 to i32
  %7126 = sub nsw i32 %7124, %7125
  %7127 = sitofp i32 %7126 to float
  %7128 = fmul fast float %7127, %7121
  %7129 = fsub fast float 1.000000e+00, %7128
  %7130 = fmul fast float %7129, %7129
  %7131 = fmul fast float %7130, %7129
  %7132 = fsub fast float %7129, %7131
  %7133 = fmul fast float %7132, %7117
  %7134 = fsub fast float 1.000000e+00, %7131
  %7135 = fsub fast float %7134, %7133
  %7136 = fmul fast float %7127, 5.000000e-01
  %7137 = fmul fast float %7136, %7135
  %7138 = fsub fast float 5.000000e-01, %7137
  br label %7139

; <label>:7139                                    ; preds = %7111, %6987, %6972
  %7140 = phi float [ 1.000000e+00, %6972 ], [ %7053, %6987 ], [ %7138, %7111 ]
  %7141 = fcmp fast ogt float %6402, 0.000000e+00
  br i1 %7141, label %7142, label %7306, !dx.controlflow.hints !127

; <label>:7142                                    ; preds = %7139
  %7143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7144 = extractvalue %dx.types.CBufRet.f32 %7143, 0
  %7145 = fadd fast float %7144, %6292
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7148 = extractvalue %dx.types.CBufRet.f32 %7146, 3
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 0
  %7151 = call float @dx.op.binary.f32(i32 35, float %7145, float 0.000000e+00)  ; FMax(a,b)
  %7152 = fadd fast float %7151, 0x3F10000000000000
  %7153 = fcmp fast oeq float %7150, 0.000000e+00
  br i1 %7153, label %7154, label %7221

; <label>:7154                                    ; preds = %7142
  %7155 = extractvalue %dx.types.CBufRet.f32 %7146, 1
  %7156 = extractvalue %dx.types.CBufRet.f32 %7146, 0
  %7157 = fmul fast float %7156, %6284
  %7158 = fmul fast float %7155, %6288
  %7159 = fadd fast float %7157, 5.000000e-01
  %7160 = call float @dx.op.unary.f32(i32 27, float %7159)  ; Round_ni(value)
  %7161 = fadd fast float %7158, 5.000000e-01
  %7162 = call float @dx.op.unary.f32(i32 27, float %7161)  ; Round_ni(value)
  %7163 = fsub fast float %7159, %7160
  %7164 = fsub fast float %7161, %7162
  %7165 = fadd fast float %7160, -5.000000e-01
  %7166 = fadd fast float %7162, -5.000000e-01
  %7167 = fmul fast float %7163, 2.000000e+00
  %7168 = fsub fast float 3.000000e+00, %7167
  %7169 = fadd fast float %7167, 1.000000e+00
  %7170 = fsub fast float 2.000000e+00, %7163
  %7171 = bitcast float %7168 to i32
  %7172 = sub nsw i32 2129859010, %7171
  %7173 = bitcast i32 %7172 to float
  %7174 = fmul fast float %7173, %7170
  %7175 = fadd fast float %7174, -1.000000e+00
  %7176 = bitcast float %7169 to i32
  %7177 = sub nsw i32 2129859010, %7176
  %7178 = bitcast i32 %7177 to float
  %7179 = fmul fast float %7178, %7163
  %7180 = fadd fast float %7179, 1.000000e+00
  %7181 = fmul fast float %7164, 2.000000e+00
  %7182 = fsub fast float 3.000000e+00, %7181
  %7183 = fadd fast float %7181, 1.000000e+00
  %7184 = fsub fast float 2.000000e+00, %7164
  %7185 = bitcast float %7182 to i32
  %7186 = sub nsw i32 2129859010, %7185
  %7187 = bitcast i32 %7186 to float
  %7188 = fmul fast float %7187, %7184
  %7189 = fadd fast float %7188, -1.000000e+00
  %7190 = bitcast float %7183 to i32
  %7191 = sub nsw i32 2129859010, %7190
  %7192 = bitcast i32 %7191 to float
  %7193 = fmul fast float %7192, %7164
  %7194 = fadd fast float %7193, 1.000000e+00
  %7195 = fadd fast float %7175, %7165
  %7196 = fmul fast float %7195, %7147
  %7197 = fadd fast float %7189, %7166
  %7198 = fmul fast float %7197, %7148
  %7199 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7196, float %7198, float undef, float undef, i32 0, i32 0, i32 undef, float %7152)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = fmul fast float %7200, %7168
  %7202 = fadd fast float %7180, %7165
  %7203 = fmul fast float %7202, %7147
  %7204 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7203, float %7198, float undef, float undef, i32 0, i32 0, i32 undef, float %7152)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7205 = extractvalue %dx.types.ResRet.f32 %7204, 0
  %7206 = fmul fast float %7205, %7169
  %7207 = fadd fast float %7194, %7166
  %7208 = fmul fast float %7207, %7148
  %7209 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7196, float %7208, float undef, float undef, i32 0, i32 0, i32 undef, float %7152)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7210 = extractvalue %dx.types.ResRet.f32 %7209, 0
  %7211 = fmul fast float %7210, %7168
  %7212 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7203, float %7208, float undef, float undef, i32 0, i32 0, i32 undef, float %7152)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7213 = extractvalue %dx.types.ResRet.f32 %7212, 0
  %7214 = fmul fast float %7213, %7169
  %7215 = fadd fast float %7214, %7211
  %7216 = fmul fast float %7215, %7183
  %7217 = fadd fast float %7206, %7201
  %7218 = fmul fast float %7217, %7182
  %7219 = fadd fast float %7218, %7216
  %7220 = fmul fast float %7219, 6.250000e-02
  br label %7306

; <label>:7221                                    ; preds = %7142
  %7222 = fmul fast float %269, 0x401921FB60000000
  %7223 = call float @dx.op.unary.f32(i32 13, float %7222)  ; Sin(value)
  %7224 = call float @dx.op.unary.f32(i32 12, float %7222)  ; Cos(value)
  %7225 = fsub fast float -0.000000e+00, %7223
  br label %7226

; <label>:7226                                    ; preds = %7275, %7221
  %7227 = phi float [ 0.000000e+00, %7221 ], [ %7270, %7275 ]
  %7228 = phi float [ 0.000000e+00, %7221 ], [ %7272, %7275 ]
  %7229 = phi i32 [ 0, %7221 ], [ %7276, %7275 ]
  %7230 = mul i32 %7229, 2
  %7231 = add i32 0, %7230
  %7232 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7231
  %7233 = load float, float* %7232, align 4
  %7234 = mul i32 %7229, 2
  %7235 = add i32 1, %7234
  %7236 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7235
  %7237 = load float, float* %7236, align 4
  %7238 = fmul fast float %7233, %7224
  %7239 = call float @dx.op.tertiary.f32(i32 46, float %7237, float %7225, float %7238)  ; FMad(a,b,c)
  %7240 = fmul fast float %7233, %7223
  %7241 = call float @dx.op.tertiary.f32(i32 46, float %7237, float %7224, float %7240)  ; FMad(a,b,c)
  %7242 = fmul fast float %7239, %7150
  %7243 = fmul fast float %7241, %7150
  %7244 = fadd fast float %7242, %6284
  %7245 = fadd fast float %7243, %6288
  %7246 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7244, float %7245, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7247 = extractvalue %dx.types.ResRet.f32 %7246, 0
  %7248 = extractvalue %dx.types.ResRet.f32 %7246, 1
  %7249 = extractvalue %dx.types.ResRet.f32 %7246, 2
  %7250 = extractvalue %dx.types.ResRet.f32 %7246, 3
  %7251 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7247, float* %7251, align 4
  %7252 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7248, float* %7252, align 4
  %7253 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7249, float* %7253, align 4
  %7254 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7250, float* %7254, align 4
  %7255 = fsub fast float %7247, %7152
  %7256 = fcmp fast olt float %7255, 0.000000e+00
  %7257 = select i1 %7256, float 0.000000e+00, float 1.000000e+00
  %7258 = fadd fast float %7257, %7227
  %7259 = fmul fast float %7257, %7255
  %7260 = fadd fast float %7259, %7228
  br label %7261

; <label>:7261                                    ; preds = %7261, %7226
  %7262 = phi i32 [ 1, %7226 ], [ %7273, %7261 ]
  %7263 = phi float [ %7260, %7226 ], [ %7272, %7261 ]
  %7264 = phi float [ %7258, %7226 ], [ %7270, %7261 ]
  %7265 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7262
  %7266 = load float, float* %7265, align 4, !tbaa !122, !noalias !112
  %7267 = fsub fast float %7266, %7152
  %7268 = fcmp fast olt float %7267, 0.000000e+00
  %7269 = select i1 %7268, float 0.000000e+00, float 1.000000e+00
  %7270 = fadd fast float %7269, %7264
  %7271 = fmul fast float %7269, %7267
  %7272 = fadd fast float %7271, %7263
  %7273 = add nuw nsw i32 %7262, 1
  %7274 = icmp eq i32 %7273, 4
  br i1 %7274, label %7275, label %7261, !llvm.loop !124

; <label>:7275                                    ; preds = %7261
  %7276 = add nuw nsw i32 %7229, 1
  %7277 = icmp eq i32 %7276, 8
  br i1 %7277, label %7278, label %7226, !llvm.loop !125

; <label>:7278                                    ; preds = %7275
  %7279 = fdiv fast float 1.000000e+00, %7270
  %7280 = fmul fast float %7279, %7272
  %7281 = fdiv fast float 1.000000e+00, %7152
  %7282 = fmul fast float %7280, %7281
  %7283 = call float @dx.op.unary.f32(i32 7, float %7282)  ; Saturate(value)
  %7284 = call float @dx.op.binary.f32(i32 35, float %7283, float 0.000000e+00)  ; FMax(a,b)
  %7285 = fmul fast float %7270, 3.125000e-02
  %7286 = call float @dx.op.unary.f32(i32 7, float %7285)  ; Saturate(value)
  %7287 = fmul fast float %7286, 2.000000e+00
  %7288 = fadd fast float %7287, -1.000000e+00
  %7289 = fcmp fast ogt float %7288, 0.000000e+00
  %7290 = fcmp fast olt float %7288, 0.000000e+00
  %7291 = zext i1 %7289 to i32
  %7292 = zext i1 %7290 to i32
  %7293 = sub nsw i32 %7291, %7292
  %7294 = sitofp i32 %7293 to float
  %7295 = fmul fast float %7294, %7288
  %7296 = fsub fast float 1.000000e+00, %7295
  %7297 = fmul fast float %7296, %7296
  %7298 = fmul fast float %7297, %7296
  %7299 = fsub fast float %7296, %7298
  %7300 = fmul fast float %7299, %7284
  %7301 = fsub fast float 1.000000e+00, %7298
  %7302 = fsub fast float %7301, %7300
  %7303 = fmul fast float %7294, 5.000000e-01
  %7304 = fmul fast float %7303, %7302
  %7305 = fsub fast float 5.000000e-01, %7304
  br label %7306

; <label>:7306                                    ; preds = %7278, %7154, %7139
  %7307 = phi float [ 1.000000e+00, %7139 ], [ %7220, %7154 ], [ %7305, %7278 ]
  %7308 = fsub fast float %6973, %6808
  %7309 = fmul fast float %7308, %6346
  %7310 = fadd fast float %7309, %6808
  %7311 = fsub fast float %7140, %7310
  %7312 = fmul fast float %7311, %6376
  %7313 = fadd fast float %7312, %7310
  %7314 = fsub fast float %7307, %7313
  %7315 = fmul fast float %7314, %6402
  %7316 = fadd fast float %7315, %7313
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 2
  %7319 = fcmp fast ogt float %7318, 0.000000e+00
  br i1 %7319, label %7320, label %7360, !dx.controlflow.hints !128

; <label>:7320                                    ; preds = %7306
  %7321 = fcmp fast ugt float %7318, 0.000000e+00
  br i1 %7321, label %7322, label %7357

; <label>:7322                                    ; preds = %7320
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 0
  %7325 = extractvalue %dx.types.CBufRet.f32 %7323, 1
  %7326 = extractvalue %dx.types.CBufRet.f32 %7323, 2
  %7327 = extractvalue %dx.types.CBufRet.f32 %7323, 3
  %7328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7329 = extractvalue %dx.types.CBufRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.CBufRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7328, 2
  %7332 = extractvalue %dx.types.CBufRet.f32 %7328, 3
  %7333 = extractvalue %dx.types.CBufRet.f32 %7317, 0
  %7334 = extractvalue %dx.types.CBufRet.f32 %7317, 1
  %7335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7336 = extractvalue %dx.types.CBufRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.CBufRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.CBufRet.f32 %7335, 2
  %7339 = fadd fast float %7336, %6261
  %7340 = fadd fast float %7337, %6262
  %7341 = fadd fast float %7338, %6263
  %7342 = fmul fast float %7339, %7324
  %7343 = call float @dx.op.tertiary.f32(i32 46, float %7325, float %7340, float %7342)  ; FMad(a,b,c)
  %7344 = call float @dx.op.tertiary.f32(i32 46, float %7326, float %7341, float %7343)  ; FMad(a,b,c)
  %7345 = fadd fast float %7344, %7327
  %7346 = fmul fast float %7339, %7329
  %7347 = call float @dx.op.tertiary.f32(i32 46, float %7330, float %7340, float %7346)  ; FMad(a,b,c)
  %7348 = call float @dx.op.tertiary.f32(i32 46, float %7331, float %7341, float %7347)  ; FMad(a,b,c)
  %7349 = fadd fast float %7348, %7332
  %7350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7345, float %7349, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7351 = extractvalue %dx.types.ResRet.f32 %7350, 0
  %7352 = fmul fast float %7351, %7334
  %7353 = fadd fast float %7352, %7333
  %7354 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7355 = fmul fast float %7354, %7318
  %7356 = fsub fast float 1.000000e+00, %7355
  br label %7357

; <label>:7357                                    ; preds = %7322, %7320
  %7358 = phi float [ %7356, %7322 ], [ 1.000000e+00, %7320 ]
  %7359 = fmul fast float %7358, %7316
  br label %7360

; <label>:7360                                    ; preds = %7357, %7306, %6241
  %7361 = phi float [ 1.000000e+00, %6241 ], [ %7359, %7357 ], [ %7316, %7306 ]
  %7362 = call float @dx.op.binary.f32(i32 36, float %7361, float %7361)  ; FMin(a,b)
  %7363 = call float @dx.op.binary.f32(i32 36, float %7361, float %7362)  ; FMin(a,b)
  %7364 = fcmp fast ogt float %7363, 0.000000e+00
  br i1 %7364, label %7365, label %7530, !dx.controlflow.hints !129

; <label>:7365                                    ; preds = %7360
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 0
  %7368 = extractvalue %dx.types.CBufRet.f32 %7366, 1
  %7369 = extractvalue %dx.types.CBufRet.f32 %7366, 2
  %7370 = extractvalue %dx.types.CBufRet.f32 %7366, 3
  %7371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7372 = extractvalue %dx.types.CBufRet.f32 %7371, 0
  %7373 = extractvalue %dx.types.CBufRet.f32 %7371, 1
  %7374 = extractvalue %dx.types.CBufRet.f32 %7371, 2
  %7375 = extractvalue %dx.types.CBufRet.f32 %7371, 3
  %7376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.CBufRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.CBufRet.f32 %7376, 2
  %7380 = extractvalue %dx.types.CBufRet.f32 %7376, 3
  %7381 = fmul fast float %7367, %6261
  %7382 = call float @dx.op.tertiary.f32(i32 46, float %6262, float %7368, float %7381)  ; FMad(a,b,c)
  %7383 = call float @dx.op.tertiary.f32(i32 46, float %6263, float %7369, float %7382)  ; FMad(a,b,c)
  %7384 = fadd fast float %7383, %7370
  %7385 = fmul fast float %7372, %6261
  %7386 = call float @dx.op.tertiary.f32(i32 46, float %6262, float %7373, float %7385)  ; FMad(a,b,c)
  %7387 = call float @dx.op.tertiary.f32(i32 46, float %6263, float %7374, float %7386)  ; FMad(a,b,c)
  %7388 = fadd fast float %7387, %7375
  %7389 = fmul fast float %7377, %6261
  %7390 = call float @dx.op.tertiary.f32(i32 46, float %6262, float %7378, float %7389)  ; FMad(a,b,c)
  %7391 = call float @dx.op.tertiary.f32(i32 46, float %6263, float %7379, float %7390)  ; FMad(a,b,c)
  %7392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7392, 0
  %7394 = extractvalue %dx.types.CBufRet.f32 %7392, 1
  %7395 = extractvalue %dx.types.CBufRet.f32 %7392, 3
  %7396 = fmul fast float %7395, %7384
  %7397 = fmul fast float %7395, %7388
  %7398 = fadd fast float %7396, %7393
  %7399 = fadd fast float %7397, %7394
  %7400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.CBufRet.f32 %7400, 1
  %7403 = fsub fast float %7398, %7401
  %7404 = fsub fast float %7399, %7402
  %7405 = fcmp fast olt float %7403, 0.000000e+00
  %7406 = fcmp fast olt float %7404, 0.000000e+00
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 0
  %7409 = extractvalue %dx.types.CBufRet.f32 %7407, 1
  %7410 = extractvalue %dx.types.CBufRet.f32 %7407, 2
  %7411 = extractvalue %dx.types.CBufRet.f32 %7407, 3
  %7412 = select i1 %7405, float %7408, float %7410
  %7413 = select i1 %7406, float %7409, float %7411
  %7414 = fmul fast float %7412, %7403
  %7415 = fmul fast float %7413, %7404
  %7416 = call float @dx.op.unary.f32(i32 6, float %7414)  ; FAbs(value)
  %7417 = call float @dx.op.unary.f32(i32 6, float %7415)  ; FAbs(value)
  %7418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7419 = extractvalue %dx.types.CBufRet.f32 %7418, 0
  %7420 = call float @dx.op.binary.f32(i32 35, float %7416, float %7417)  ; FMax(a,b)
  %7421 = fsub fast float %7419, %7420
  %7422 = call float @dx.op.unary.f32(i32 7, float %7421)  ; Saturate(value)
  %7423 = fcmp fast ogt float %7422, 0.000000e+00
  br i1 %7423, label %7424, label %7465, !dx.controlflow.hints !130

; <label>:7424                                    ; preds = %7365
  %7425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7398, float %7399, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7426 = extractvalue %dx.types.ResRet.f32 %7425, 1
  %7427 = fcmp fast ogt float %7426, 0.000000e+00
  br i1 %7427, label %7428, label %7460

; <label>:7428                                    ; preds = %7424
  %7429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7398, float %7399, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = extractvalue %dx.types.ResRet.f32 %7429, 1
  %7432 = extractvalue %dx.types.ResRet.f32 %7429, 2
  %7433 = extractvalue %dx.types.ResRet.f32 %7429, 3
  %7434 = fsub fast float 1.000000e+00, %7380
  %7435 = fsub fast float %7434, %7391
  %7436 = fmul fast float %7435, 0x400921FB60000000
  %7437 = fadd fast float %7436, 0x3FF921FB60000000
  %7438 = call float @dx.op.unary.f32(i32 13, float %7437)  ; Sin(value)
  %7439 = fadd fast float %7438, -1.000000e+00
  %7440 = fmul fast float %7439, 0x3FD45F3060000000
  %7441 = fmul fast float %7435, 0x401921FB60000000
  %7442 = fadd fast float %7441, 0x400921FB60000000
  %7443 = call float @dx.op.unary.f32(i32 13, float %7442)  ; Sin(value)
  %7444 = fadd fast float %7443, 0x3E7777A5C0000000
  %7445 = fmul fast float %7444, 0x3FC45F3060000000
  %7446 = fmul fast float %7435, 0x4022D97C80000000
  %7447 = fadd fast float %7446, 0x4012D97C80000000
  %7448 = call float @dx.op.unary.f32(i32 13, float %7447)  ; Sin(value)
  %7449 = fadd fast float %7448, 1.000000e+00
  %7450 = fmul fast float %7449, 0x3FBB2995E0000000
  %7451 = fmul fast float %7435, 0x402921FB60000000
  %7452 = fadd fast float %7451, 0x401921FB60000000
  %7453 = call float @dx.op.unary.f32(i32 13, float %7452)  ; Sin(value)
  %7454 = fadd fast float %7453, 0xBE8777A5C0000000
  %7455 = fmul fast float %7454, 0x3FB45F3060000000
  %7456 = call float @dx.op.dot4.f32(i32 56, float %7430, float %7431, float %7432, float %7433, float %7440, float %7445, float %7450, float %7455)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7457 = fmul fast float %7456, 0xBFF7154760000000
  %7458 = call float @dx.op.unary.f32(i32 21, float %7457)  ; Exp(value)
  %7459 = call float @dx.op.unary.f32(i32 7, float %7458)  ; Saturate(value)
  br label %7460

; <label>:7460                                    ; preds = %7428, %7424
  %7461 = phi float [ %7459, %7428 ], [ 1.000000e+00, %7424 ]
  %7462 = fadd fast float %7461, -1.000000e+00
  %7463 = fmul fast float %7462, %7422
  %7464 = fadd fast float %7463, 1.000000e+00
  br label %7465

; <label>:7465                                    ; preds = %7460, %7365
  %7466 = phi float [ %7464, %7460 ], [ 1.000000e+00, %7365 ]
  %7467 = fmul fast float %7466, %7361
  %7468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7469 = extractvalue %dx.types.CBufRet.f32 %7468, 0
  %7470 = extractvalue %dx.types.CBufRet.f32 %7468, 1
  %7471 = extractvalue %dx.types.CBufRet.f32 %7468, 2
  %7472 = fadd fast float %7469, %164
  %7473 = fadd fast float %7470, %165
  %7474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7474, 1
  %7476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7477 = extractvalue %dx.types.CBufRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.CBufRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.CBufRet.f32 %7476, 2
  %7480 = fsub fast float -0.000000e+00, %7472
  %7481 = fsub fast float -0.000000e+00, %7473
  %7482 = fsub fast float %5357, %7471
  %7483 = fadd fast float %7482, %7475
  %7484 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7480, float %7481, float %7483)  ; Dot3(ax,ay,az,bx,by,bz)
  %7485 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7477, float %7478, float %7479)  ; Dot3(ax,ay,az,bx,by,bz)
  %7486 = fdiv fast float 1.000000e+00, %7485
  %7487 = fmul fast float %7486, %7484
  %7488 = fmul fast float %7477, %7487
  %7489 = fmul fast float %7478, %7487
  %7490 = fadd fast float %7488, %7472
  %7491 = fadd fast float %7489, %7473
  %7492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7493 = extractvalue %dx.types.CBufRet.f32 %7492, 0
  %7494 = extractvalue %dx.types.CBufRet.f32 %7492, 1
  %7495 = fsub fast float %7490, %7493
  %7496 = fsub fast float %7491, %7494
  %7497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7497, 2
  %7499 = extractvalue %dx.types.CBufRet.f32 %7497, 3
  %7500 = fmul fast float %7495, %7498
  %7501 = fmul fast float %7496, %7499
  %7502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.i32 %7502, 3
  %7504 = icmp eq i32 %7503, 0
  br i1 %7504, label %7510, label %7505

; <label>:7505                                    ; preds = %7465
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7500, float %7501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = extractvalue %dx.types.ResRet.f32 %7506, 1
  %7509 = extractvalue %dx.types.ResRet.f32 %7506, 2
  br label %7515

; <label>:7510                                    ; preds = %7465
  %7511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7500, float %7501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7512 = extractvalue %dx.types.ResRet.f32 %7511, 0
  %7513 = extractvalue %dx.types.ResRet.f32 %7511, 1
  %7514 = extractvalue %dx.types.ResRet.f32 %7511, 2
  br label %7515

; <label>:7515                                    ; preds = %7510, %7505
  %7516 = phi float [ %7507, %7505 ], [ %7512, %7510 ]
  %7517 = phi float [ %7508, %7505 ], [ %7513, %7510 ]
  %7518 = phi float [ %7509, %7505 ], [ %7514, %7510 ]
  %7519 = extractvalue %dx.types.CBufRet.f32 %7474, 2
  %7520 = fmul fast float %7519, %7516
  %7521 = extractvalue %dx.types.CBufRet.f32 %7474, 0
  %7522 = fsub fast float %7487, %7521
  %7523 = fsub fast float %7522, %7520
  %7524 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7523)  ; FMax(a,b)
  %7525 = fmul fast float %7524, %7517
  %7526 = call float @dx.op.binary.f32(i32 36, float %7518, float %7525)  ; FMin(a,b)
  %7527 = fmul fast float %7526, 0xBFF7154760000000
  %7528 = call float @dx.op.unary.f32(i32 21, float %7527)  ; Exp(value)
  %7529 = fmul fast float %7467, %7528
  br label %7530

; <label>:7530                                    ; preds = %7515, %7360
  %7531 = phi float [ %7529, %7515 ], [ %7361, %7360 ]
  %7532 = call float @dx.op.binary.f32(i32 36, float %7531, float %7531)  ; FMin(a,b)
  %7533 = call float @dx.op.binary.f32(i32 36, float %7531, float %7532)  ; FMin(a,b)
  %7534 = fcmp fast ogt float %7533, 0.000000e+00
  br i1 %7534, label %7535, label %7836, !dx.controlflow.hints !131

; <label>:7535                                    ; preds = %7530
  %7536 = fmul fast float %7531, %6253
  %7537 = fmul fast float %7531, %6254
  %7538 = fmul fast float %7531, %6255
  %7539 = fsub fast float %166, %5163
  %7540 = fcmp fast ogt float %7539, 0.000000e+00
  %7541 = fmul fast float %6242, 5.120000e+02
  %7542 = fmul fast float %6243, 5.120000e+02
  %7543 = fmul fast float %6244, 5.120000e+02
  %7544 = fadd fast float %7543, %166
  %7545 = fsub fast float %5163, %7544
  %7546 = fmul fast float %7545, 2.000000e+00
  %7547 = fadd fast float %7546, %7544
  %7548 = select i1 %7540, float %7547, float %7544
  %7549 = fsub fast float %7548, %166
  %7550 = call float @dx.op.dot3.f32(i32 55, float %7541, float %7542, float %7549, float %7541, float %7542, float %7549)  ; Dot3(ax,ay,az,bx,by,bz)
  %7551 = call float @dx.op.unary.f32(i32 25, float %7550)  ; Rsqrt(value)
  %7552 = fmul fast float %7551, %7541
  %7553 = fmul fast float %7551, %7542
  %7554 = fmul fast float %7551, %7549
  %7555 = fsub fast float %5163, %166
  %7556 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7555)  ; Dot3(ax,ay,az,bx,by,bz)
  %7557 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7552, float %7553, float %7554)  ; Dot3(ax,ay,az,bx,by,bz)
  %7558 = fdiv fast float 1.000000e+00, %7557
  %7559 = fmul fast float %7558, %7556
  %7560 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7539, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7561 = fcmp fast ogt float %7560, 0.000000e+00
  %7562 = fcmp fast olt float %7560, 0.000000e+00
  %7563 = zext i1 %7561 to i32
  %7564 = zext i1 %7562 to i32
  %7565 = sub nsw i32 %7563, %7564
  %7566 = sitofp i32 %7565 to float
  %7567 = fsub fast float %7548, %5163
  %7568 = call float @dx.op.dot3.f32(i32 55, float %7541, float %7542, float %7567, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7569 = fcmp fast ogt float %7568, 0.000000e+00
  %7570 = fcmp fast olt float %7568, 0.000000e+00
  %7571 = zext i1 %7569 to i32
  %7572 = zext i1 %7570 to i32
  %7573 = sub nsw i32 %7571, %7572
  %7574 = sitofp i32 %7573 to float
  %7575 = fcmp fast une float %7566, %7574
  br i1 %7575, label %7576, label %7586

; <label>:7576                                    ; preds = %7535
  %7577 = fmul fast float %7559, %7554
  %7578 = fmul fast float %7559, %7553
  %7579 = fmul fast float %7559, %7552
  %7580 = fmul fast float %7579, %7579
  %7581 = fmul fast float %7578, %7578
  %7582 = fadd fast float %7580, %7581
  %7583 = fmul fast float %7577, %7577
  %7584 = fadd fast float %7582, %7583
  %7585 = call float @dx.op.unary.f32(i32 24, float %7584)  ; Sqrt(value)
  br label %7596

; <label>:7586                                    ; preds = %7535
  %7587 = icmp slt i32 %7565, 0
  br i1 %7587, label %7588, label %7596

; <label>:7588                                    ; preds = %7586
  %7589 = fsub fast float %166, %7548
  %7590 = fmul fast float %7541, %7541
  %7591 = fmul fast float %7542, %7542
  %7592 = fadd fast float %7590, %7591
  %7593 = fmul fast float %7589, %7589
  %7594 = fadd fast float %7592, %7593
  %7595 = call float @dx.op.unary.f32(i32 24, float %7594)  ; Sqrt(value)
  br label %7596

; <label>:7596                                    ; preds = %7588, %7586, %7576
  %7597 = phi float [ %7585, %7576 ], [ %7595, %7588 ], [ 0.000000e+00, %7586 ]
  %7598 = fsub fast float -0.000000e+00, %7597
  %7599 = select i1 %7540, float -0.000000e+00, float %7598
  %7600 = fmul fast float %5164, 0x3FF7154760000000
  %7601 = fmul fast float %7600, %7599
  %7602 = fmul fast float %5165, 0x3FF7154760000000
  %7603 = fmul fast float %7602, %7599
  %7604 = fmul fast float %5166, 0x3FF7154760000000
  %7605 = fmul fast float %7604, %7599
  %7606 = call float @dx.op.unary.f32(i32 21, float %7601)  ; Exp(value)
  %7607 = call float @dx.op.unary.f32(i32 21, float %7603)  ; Exp(value)
  %7608 = call float @dx.op.unary.f32(i32 21, float %7605)  ; Exp(value)
  %7609 = call float @dx.op.unary.f32(i32 7, float %7606)  ; Saturate(value)
  %7610 = call float @dx.op.unary.f32(i32 7, float %7607)  ; Saturate(value)
  %7611 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  %7612 = fmul fast float %7536, %7609
  %7613 = fmul fast float %7537, %7610
  %7614 = fmul fast float %7538, %7611
  %7615 = fsub fast float %6242, %184
  %7616 = fsub fast float %6243, %185
  %7617 = fsub fast float %6244, %186
  %7618 = call float @dx.op.dot3.f32(i32 55, float %7615, float %7616, float %7617, float %7615, float %7616, float %7617)  ; Dot3(ax,ay,az,bx,by,bz)
  %7619 = call float @dx.op.unary.f32(i32 25, float %7618)  ; Rsqrt(value)
  %7620 = fmul fast float %7619, %7615
  %7621 = fmul fast float %7619, %7616
  %7622 = fmul fast float %7619, %7617
  %7623 = call float @dx.op.dot3.f32(i32 55, float %6242, float %6243, float %6244, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %7624 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %7620, float %7621, float %7622)  ; Dot3(ax,ay,az,bx,by,bz)
  %7625 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  %7626 = fmul fast float %7625, %7625
  %7627 = fmul fast float %7626, %5385
  %7628 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7629 = fmul fast float %7628, %7625
  %7630 = call float @dx.op.dot3.f32(i32 55, float %5346, float %5347, float %5348, float %7620, float %7621, float %7622)  ; Dot3(ax,ay,az,bx,by,bz)
  %7631 = fmul fast float %7630, %7630
  %7632 = call float @dx.op.unary.f32(i32 6, float %7623)  ; FAbs(value)
  %7633 = fsub fast float 1.000000e+00, %5378
  %7634 = fmul fast float %5360, %5360
  %7635 = fmul fast float %7634, %7633
  %7636 = fadd fast float %7635, %5378
  %7637 = bitcast float %7636 to i32
  %7638 = ashr i32 %7637, 1
  %7639 = add nsw i32 %7638, 532487669
  %7640 = bitcast i32 %7639 to float
  %7641 = fadd fast float %7640, %5360
  %7642 = fmul fast float %5378, %7631
  %7643 = fsub fast float 1.000000e+00, %7631
  %7644 = fadd fast float %7643, %7642
  %7645 = fmul fast float %7632, %7632
  %7646 = fmul fast float %7645, %7633
  %7647 = fadd fast float %7646, %5378
  %7648 = bitcast float %7647 to i32
  %7649 = ashr i32 %7648, 1
  %7650 = add nsw i32 %7649, 532487669
  %7651 = bitcast i32 %7650 to float
  %7652 = fadd fast float %7651, %7632
  %7653 = fmul fast float %7644, %7644
  %7654 = fmul fast float %7653, %7641
  %7655 = fmul fast float %7654, %7652
  %7656 = fdiv fast float 0x3FF0A00000000000, %7655
  %7657 = fmul fast float %7656, %5378
  %7658 = call float @dx.op.unary.f32(i32 6, float %7624)  ; FAbs(value)
  %7659 = fsub fast float 1.000000e+00, %7658
  %7660 = bitcast float %7659 to i32
  %7661 = sitofp i32 %7660 to float
  %7662 = fmul fast float %7661, 5.000000e+00
  %7663 = fadd fast float %7662, 0xC1EFBF8940000000
  %7664 = fptosi float %7663 to i32
  %7665 = bitcast i32 %7664 to float
  %7666 = fsub fast float 1.000000e+00, %5349
  %7667 = fsub fast float 1.000000e+00, %5350
  %7668 = fsub fast float 1.000000e+00, %5358
  %7669 = fmul fast float %7665, %7666
  %7670 = fmul fast float %7665, %7667
  %7671 = fmul fast float %7665, %7668
  %7672 = fadd fast float %7669, %5349
  %7673 = fadd fast float %7670, %5350
  %7674 = fadd fast float %7671, %5358
  br i1 %5643, label %7675, label %7698

; <label>:7675                                    ; preds = %7596
  %7676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4674, float %7658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7677 = extractvalue %dx.types.ResRet.f32 %7676, 0
  %7678 = extractvalue %dx.types.ResRet.f32 %7676, 1
  %7679 = extractvalue %dx.types.ResRet.f32 %7676, 2
  %7680 = fadd fast float %7677, -5.000000e-01
  %7681 = fadd fast float %7678, -5.000000e-01
  %7682 = fadd fast float %7679, -5.000000e-01
  %7683 = fmul fast float %5349, 4.000000e+00
  %7684 = fmul fast float %7683, %7666
  %7685 = fmul fast float %7684, %7680
  %7686 = fmul fast float %5350, 4.000000e+00
  %7687 = fmul fast float %7686, %7667
  %7688 = fmul fast float %7687, %7681
  %7689 = fmul fast float %5358, 4.000000e+00
  %7690 = fmul fast float %7689, %7668
  %7691 = fmul fast float %7690, %7682
  %7692 = fadd fast float %7685, %7672
  %7693 = fadd fast float %7688, %7673
  %7694 = fadd fast float %7691, %7674
  %7695 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7696 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7697 = call float @dx.op.unary.f32(i32 7, float %7694)  ; Saturate(value)
  br label %7698

; <label>:7698                                    ; preds = %7675, %7596
  %7699 = phi float [ %7695, %7675 ], [ %7672, %7596 ]
  %7700 = phi float [ %7696, %7675 ], [ %7673, %7596 ]
  %7701 = phi float [ %7697, %7675 ], [ %7674, %7596 ]
  %7702 = fmul fast float %7623, 9.843750e-01
  %7703 = fadd fast float %7702, 7.812500e-03
  %7704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7703, float %5633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7705 = extractvalue %dx.types.ResRet.f32 %7704, 2
  %7706 = extractvalue %dx.types.ResRet.f32 %7704, 3
  %7707 = fmul fast float %7705, %5349
  %7708 = fmul fast float %7705, %5350
  %7709 = fmul fast float %7705, %5358
  %7710 = fadd fast float %7707, %7706
  %7711 = fadd fast float %7708, %7706
  %7712 = fadd fast float %7709, %7706
  br i1 %5643, label %7713, label %7736

; <label>:7713                                    ; preds = %7698
  %7714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4674, float %7623, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7715 = extractvalue %dx.types.ResRet.f32 %7714, 0
  %7716 = extractvalue %dx.types.ResRet.f32 %7714, 1
  %7717 = extractvalue %dx.types.ResRet.f32 %7714, 2
  %7718 = fadd fast float %7715, -5.000000e-01
  %7719 = fadd fast float %7716, -5.000000e-01
  %7720 = fadd fast float %7717, -5.000000e-01
  %7721 = fmul fast float %5349, 4.000000e+00
  %7722 = fmul fast float %7721, %7666
  %7723 = fmul fast float %7722, %7718
  %7724 = fmul fast float %5350, 4.000000e+00
  %7725 = fmul fast float %7724, %7667
  %7726 = fmul fast float %7725, %7719
  %7727 = fmul fast float %5358, 4.000000e+00
  %7728 = fmul fast float %7727, %7668
  %7729 = fmul fast float %7728, %7720
  %7730 = fadd fast float %7723, %7710
  %7731 = fadd fast float %7726, %7711
  %7732 = fadd fast float %7729, %7712
  %7733 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  %7734 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7735 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  br label %7736

; <label>:7736                                    ; preds = %7713, %7698
  %7737 = phi float [ %7733, %7713 ], [ %7710, %7698 ]
  %7738 = phi float [ %7734, %7713 ], [ %7711, %7698 ]
  %7739 = phi float [ %7735, %7713 ], [ %7712, %7698 ]
  %7740 = call float @dx.op.binary.f32(i32 35, float %7738, float %7739)  ; FMax(a,b)
  %7741 = call float @dx.op.binary.f32(i32 35, float %7737, float %7740)  ; FMax(a,b)
  %7742 = fsub fast float 1.000000e+00, %7741
  %7743 = fsub fast float -0.000000e+00, %5346
  %7744 = fsub fast float -0.000000e+00, %5347
  %7745 = fsub fast float -0.000000e+00, %5348
  %7746 = call float @dx.op.dot3.f32(i32 55, float %6242, float %6243, float %6244, float %7743, float %7744, float %7745)  ; Dot3(ax,ay,az,bx,by,bz)
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = fmul fast float %7747, 9.843750e-01
  %7749 = fadd fast float %7748, 7.812500e-03
  %7750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7749, float %5633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7751 = extractvalue %dx.types.ResRet.f32 %7750, 2
  %7752 = extractvalue %dx.types.ResRet.f32 %7750, 3
  %7753 = fmul fast float %7751, %5349
  %7754 = fmul fast float %7751, %5350
  %7755 = fmul fast float %7751, %5358
  %7756 = fadd fast float %7753, %7752
  %7757 = fadd fast float %7754, %7752
  %7758 = fadd fast float %7755, %7752
  br i1 %5643, label %7759, label %7782

; <label>:7759                                    ; preds = %7736
  %7760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4674, float %7747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7761 = extractvalue %dx.types.ResRet.f32 %7760, 0
  %7762 = extractvalue %dx.types.ResRet.f32 %7760, 1
  %7763 = extractvalue %dx.types.ResRet.f32 %7760, 2
  %7764 = fadd fast float %7761, -5.000000e-01
  %7765 = fadd fast float %7762, -5.000000e-01
  %7766 = fadd fast float %7763, -5.000000e-01
  %7767 = fmul fast float %5349, 4.000000e+00
  %7768 = fmul fast float %7767, %7666
  %7769 = fmul fast float %7768, %7764
  %7770 = fmul fast float %5350, 4.000000e+00
  %7771 = fmul fast float %7770, %7667
  %7772 = fmul fast float %7771, %7765
  %7773 = fmul fast float %5358, 4.000000e+00
  %7774 = fmul fast float %7773, %7668
  %7775 = fmul fast float %7774, %7766
  %7776 = fadd fast float %7769, %7756
  %7777 = fadd fast float %7772, %7757
  %7778 = fadd fast float %7775, %7758
  %7779 = call float @dx.op.unary.f32(i32 7, float %7776)  ; Saturate(value)
  %7780 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7781 = call float @dx.op.unary.f32(i32 7, float %7778)  ; Saturate(value)
  br label %7782

; <label>:7782                                    ; preds = %7759, %7736
  %7783 = phi float [ %7779, %7759 ], [ %7756, %7736 ]
  %7784 = phi float [ %7780, %7759 ], [ %7757, %7736 ]
  %7785 = phi float [ %7781, %7759 ], [ %7758, %7736 ]
  %7786 = call float @dx.op.binary.f32(i32 35, float %7784, float %7785)  ; FMax(a,b)
  %7787 = call float @dx.op.binary.f32(i32 35, float %7783, float %7786)  ; FMax(a,b)
  %7788 = fsub fast float 1.000000e+00, %7787
  %7789 = fmul fast float %7788, %7747
  %7790 = fmul fast float %7789, %4786
  %7791 = fmul fast float %7789, %4787
  %7792 = fmul fast float %7789, %4788
  %7793 = fmul fast float %7699, %7657
  %7794 = fmul fast float %7700, %7657
  %7795 = fmul fast float %7701, %7657
  %7796 = fsub fast float 1.000000e+00, %7624
  %7797 = bitcast float %7796 to i32
  %7798 = sitofp i32 %7797 to float
  %7799 = fmul fast float %7798, 5.000000e+00
  %7800 = fadd fast float %7799, 0xC1EFBF8940000000
  %7801 = fptosi float %7800 to i32
  %7802 = bitcast i32 %7801 to float
  %7803 = fmul fast float %7802, %4675
  %7804 = fmul fast float %7742, %7803
  %7805 = fmul fast float %7804, %6182
  %7806 = fmul fast float %7804, %6183
  %7807 = fmul fast float %7804, %6184
  %7808 = fmul fast float %7742, %7629
  %7809 = fadd fast float %7805, %7793
  %7810 = fadd fast float %7806, %7794
  %7811 = fadd fast float %7807, %7795
  %7812 = fadd fast float %7790, %7808
  %7813 = fadd fast float %7791, %7808
  %7814 = fadd fast float %7792, %7808
  %7815 = fmul fast float %7812, %7612
  %7816 = fmul fast float %7813, %7613
  %7817 = fmul fast float %7814, %7614
  %7818 = fmul fast float %7629, %7612
  %7819 = fmul fast float %7818, %7809
  %7820 = fmul fast float %7629, %7613
  %7821 = fmul fast float %7820, %7810
  %7822 = fmul fast float %7629, %7614
  %7823 = fmul fast float %7822, %7811
  %7824 = fadd fast float %7815, %6232
  %7825 = fmul fast float %7824, %4700
  %7826 = fadd fast float %7816, %6234
  %7827 = fmul fast float %7826, %4700
  %7828 = fadd fast float %7817, %6236
  %7829 = fmul fast float %7828, %4700
  %7830 = fadd fast float %7819, %6215
  %7831 = fmul fast float %7830, %4700
  %7832 = fadd fast float %7821, %6218
  %7833 = fmul fast float %7832, %4700
  %7834 = fadd fast float %7823, %6221
  %7835 = fmul fast float %7834, %4700
  br label %7836

; <label>:7836                                    ; preds = %7782, %7530, %6165
  %7837 = phi float [ %6216, %6165 ], [ %6216, %7530 ], [ %7831, %7782 ]
  %7838 = phi float [ %6219, %6165 ], [ %6219, %7530 ], [ %7833, %7782 ]
  %7839 = phi float [ %6222, %6165 ], [ %6222, %7530 ], [ %7835, %7782 ]
  %7840 = phi float [ %6233, %6165 ], [ %6233, %7530 ], [ %7825, %7782 ]
  %7841 = phi float [ %6235, %6165 ], [ %6235, %7530 ], [ %7827, %7782 ]
  %7842 = phi float [ %6237, %6165 ], [ %6237, %7530 ], [ %7829, %7782 ]
  %7843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7844 = extractvalue %dx.types.CBufRet.i32 %7843, 0
  %7845 = icmp eq i32 %7844, 0
  br i1 %7845, label %8563, label %7846

; <label>:7846                                    ; preds = %7836
  %7847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7848 = extractvalue %dx.types.CBufRet.f32 %7847, 2
  %7849 = extractvalue %dx.types.CBufRet.f32 %7847, 3
  %7850 = fmul fast float %7848, %109
  %7851 = fmul fast float %7849, %110
  %7852 = fptoui float %7850 to i32
  %7853 = fptoui float %7851 to i32
  %7854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7855 = extractvalue %dx.types.CBufRet.f32 %7854, 0
  %7856 = extractvalue %dx.types.CBufRet.f32 %7854, 2
  %7857 = extractvalue %dx.types.CBufRet.f32 %7854, 3
  %7858 = fadd fast float %97, -4.000000e+00
  %7859 = call float @dx.op.binary.f32(i32 35, float %7858, float 0.000000e+00)  ; FMax(a,b)
  %7860 = fadd fast float %7859, %7855
  %7861 = fmul fast float %7860, %7856
  %7862 = call float @dx.op.unary.f32(i32 23, float %7861)  ; Log(value)
  %7863 = fmul fast float %7862, %7857
  %7864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7864, 2
  %7866 = fmul fast float %7863, %7865
  %7867 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7869 = extractvalue %dx.types.CBufRet.i32 %7868, 1
  %7870 = add i32 %7869, -1
  %7871 = uitofp i32 %7869 to float
  %7872 = fmul fast float %7871, %7867
  %7873 = fptoui float %7872 to i32
  %7874 = call i32 @dx.op.binary.i32(i32 40, i32 %7873, i32 %7870)  ; UMin(a,b)
  %7875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7876 = extractvalue %dx.types.CBufRet.i32 %7875, 2
  %7877 = extractvalue %dx.types.CBufRet.i32 %7875, 3
  %7878 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7853, i32 %7876, i32 %7852)  ; UMad(a,b,c)
  %7879 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7874, i32 %7877, i32 %7878)  ; UMad(a,b,c)
  %7880 = add nsw i32 %7844, -1
  %7881 = call i32 @dx.op.binary.i32(i32 37, i32 %7880, i32 0)  ; IMax(a,b)
  %7882 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %7883 = fptoui float %7882 to i32
  %7884 = lshr i32 %7883, 5
  %7885 = call i32 @dx.op.binary.i32(i32 40, i32 %7884, i32 8191)  ; UMin(a,b)
  %7886 = shl i32 %7885, 2
  %7887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7886, i32 undef)  ; BufferLoad(srv,index,wot)
  %7888 = extractvalue %dx.types.ResRet.i32 %7887, 0
  %7889 = lshr i32 %7888, 16
  %7890 = and i32 %7888, 65535
  %7891 = lshr i32 %7888, 21
  %7892 = lshr i32 %7890, 5
  %7893 = call i32 @dx.op.binary.i32(i32 40, i32 %7892, i32 %7881)  ; UMin(a,b)
  %7894 = icmp ugt i32 %7891, %7893
  br i1 %7894, label %8563, label %7895

; <label>:7895                                    ; preds = %7846
  br label %7896

; <label>:7896                                    ; preds = %8553, %7895
  %7897 = phi i32 [ %8560, %8553 ], [ %7891, %7895 ]
  %7898 = phi float [ %8554, %8553 ], [ %7837, %7895 ]
  %7899 = phi float [ %8555, %8553 ], [ %7838, %7895 ]
  %7900 = phi float [ %8556, %8553 ], [ %7839, %7895 ]
  %7901 = phi float [ %8557, %8553 ], [ %7840, %7895 ]
  %7902 = phi float [ %8558, %8553 ], [ %7841, %7895 ]
  %7903 = phi float [ %8559, %8553 ], [ %7842, %7895 ]
  %7904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7905 = extractvalue %dx.types.CBufRet.i32 %7904, 0
  %7906 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7879, i32 %7905, i32 %7897)  ; UMad(a,b,c)
  %7907 = shl i32 %7906, 2
  %7908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7907, i32 undef)  ; BufferLoad(srv,index,wot)
  %7909 = extractvalue %dx.types.ResRet.i32 %7908, 0
  %7910 = shl i32 %7897, 5
  %7911 = sub nsw i32 %7889, %7910
  %7912 = call i32 @dx.op.binary.i32(i32 37, i32 %7911, i32 0)  ; IMax(a,b)
  %7913 = call i32 @dx.op.binary.i32(i32 38, i32 %7912, i32 31)  ; IMin(a,b)
  %7914 = sub nsw i32 1, %7889
  %7915 = add nsw i32 %7914, %7890
  %7916 = call i32 @dx.op.binary.i32(i32 37, i32 %7915, i32 0)  ; IMax(a,b)
  %7917 = call i32 @dx.op.binary.i32(i32 38, i32 %7916, i32 32)  ; IMin(a,b)
  %7918 = and i32 %7917, 31
  %7919 = shl i32 -1, %7918
  %7920 = xor i32 %7919, -1
  %7921 = and i32 %7913, 31
  %7922 = shl i32 %7920, %7921
  %7923 = icmp eq i32 %7917, 32
  %7924 = select i1 %7923, i32 -1, i32 %7922
  %7925 = and i32 %7924, %7909
  %7926 = icmp eq i32 %7925, 0
  br i1 %7926, label %8553, label %7927

; <label>:7927                                    ; preds = %7896
  br label %7928

; <label>:7928                                    ; preds = %8062, %7927
  %7929 = phi i32 [ %7940, %8062 ], [ %7925, %7927 ]
  %7930 = phi float [ %8063, %8062 ], [ %7898, %7927 ]
  %7931 = phi float [ %8064, %8062 ], [ %7899, %7927 ]
  %7932 = phi float [ %8065, %8062 ], [ %7900, %7927 ]
  %7933 = phi float [ %8066, %8062 ], [ %7901, %7927 ]
  %7934 = phi float [ %8067, %8062 ], [ %7902, %7927 ]
  %7935 = phi float [ %8068, %8062 ], [ %7903, %7927 ]
  %7936 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7929)  ; FirstbitLo(value)
  %7937 = add i32 %7936, %7910
  %7938 = and i32 %7936, 31
  %7939 = shl i32 1, %7938
  %7940 = xor i32 %7939, %7929
  %7941 = mul i32 %7937, 112
  %7942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7941, i32 undef)  ; BufferLoad(srv,index,wot)
  %7943 = extractvalue %dx.types.ResRet.f32 %7942, 0
  %7944 = extractvalue %dx.types.ResRet.f32 %7942, 1
  %7945 = extractvalue %dx.types.ResRet.f32 %7942, 2
  %7946 = or i32 %7941, 12
  %7947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7946, i32 undef)  ; BufferLoad(srv,index,wot)
  %7948 = extractvalue %dx.types.ResRet.f32 %7947, 0
  %7949 = add i32 %7941, 16
  %7950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7949, i32 undef)  ; BufferLoad(srv,index,wot)
  %7951 = extractvalue %dx.types.ResRet.f32 %7950, 0
  %7952 = extractvalue %dx.types.ResRet.f32 %7950, 1
  %7953 = extractvalue %dx.types.ResRet.f32 %7950, 2
  %7954 = add i32 %7941, 28
  %7955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7954, i32 undef)  ; BufferLoad(srv,index,wot)
  %7956 = extractvalue %dx.types.ResRet.i32 %7955, 0
  %7957 = add i32 %7941, 44
  %7958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7957, i32 undef)  ; BufferLoad(srv,index,wot)
  %7959 = extractvalue %dx.types.ResRet.f32 %7958, 0
  %7960 = add i32 %7941, 48
  %7961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7960, i32 undef)  ; BufferLoad(srv,index,wot)
  %7962 = extractvalue %dx.types.ResRet.f32 %7961, 0
  %7963 = extractvalue %dx.types.ResRet.f32 %7961, 1
  %7964 = extractvalue %dx.types.ResRet.f32 %7961, 2
  %7965 = extractvalue %dx.types.ResRet.f32 %7961, 3
  %7966 = add i32 %7941, 64
  %7967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7966, i32 undef)  ; BufferLoad(srv,index,wot)
  %7968 = extractvalue %dx.types.ResRet.f32 %7967, 0
  %7969 = extractvalue %dx.types.ResRet.f32 %7967, 1
  %7970 = extractvalue %dx.types.ResRet.f32 %7967, 2
  %7971 = extractvalue %dx.types.ResRet.f32 %7967, 3
  %7972 = add i32 %7941, 80
  %7973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7972, i32 undef)  ; BufferLoad(srv,index,wot)
  %7974 = extractvalue %dx.types.ResRet.f32 %7973, 1
  %7975 = extractvalue %dx.types.ResRet.f32 %7973, 2
  %7976 = add i32 %7941, 92
  %7977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7976, i32 undef)  ; BufferLoad(srv,index,wot)
  %7978 = extractvalue %dx.types.ResRet.i32 %7977, 0
  %7979 = call float @dx.op.dot3.f32(i32 55, float %7943, float %7944, float %7945, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7980 = select i1 %258, float %7974, float %7943
  %7981 = select i1 %258, float %7979, float %7944
  %7982 = select i1 %258, float %7975, float %7945
  %7983 = and i32 %7978, 65535
  %7984 = uitofp i32 %7983 to float
  %7985 = lshr i32 %7978, 16
  %7986 = uitofp i32 %7985 to float
  %7987 = and i32 %7956, 65535
  %7988 = and i32 %7956, 50331648
  %7989 = icmp eq i32 %7988, 33554432
  %7990 = fsub fast float %7962, %164
  %7991 = fsub fast float %7963, %165
  %7992 = fsub fast float %7964, %166
  %7993 = call float @dx.op.dot3.f32(i32 55, float %7990, float %7991, float %7992, float %7990, float %7991, float %7992)  ; Dot3(ax,ay,az,bx,by,bz)
  %7994 = call float @dx.op.unary.f32(i32 24, float %7993)  ; Sqrt(value)
  %7995 = fdiv fast float 1.000000e+00, %7994
  %7996 = fmul fast float %7995, %7990
  %7997 = fmul fast float %7995, %7991
  %7998 = fmul fast float %7995, %7992
  %7999 = fadd fast float %7994, %7948
  %8000 = fdiv fast float 1.000000e+00, %7999
  %8001 = fmul float %7959, %8000
  %8002 = fmul float %8001, %8001
  %8003 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  br i1 %7989, label %8004, label %8025

; <label>:8004                                    ; preds = %7928
  %8005 = fmul fast float %7970, %7951
  %8006 = fmul fast float %7970, %7952
  %8007 = fmul fast float %7970, %7953
  %8008 = fadd fast float %7990, %8005
  %8009 = fadd fast float %7991, %8006
  %8010 = fadd fast float %7992, %8007
  %8011 = call float @dx.op.dot3.f32(i32 55, float %8008, float %8009, float %8010, float %8008, float %8009, float %8010)  ; Dot3(ax,ay,az,bx,by,bz)
  %8012 = call float @dx.op.unary.f32(i32 25, float %8011)  ; Rsqrt(value)
  %8013 = fmul fast float %8012, %8008
  %8014 = fmul fast float %8012, %8009
  %8015 = fmul fast float %8012, %8010
  %8016 = fsub fast float %164, %7962
  %8017 = fsub fast float %165, %7963
  %8018 = fsub fast float %166, %7964
  %8019 = fsub fast float -0.000000e+00, %8016
  %8020 = fsub fast float -0.000000e+00, %8017
  %8021 = fsub fast float -0.000000e+00, %8018
  %8022 = call float @dx.op.dot3.f32(i32 55, float %8019, float %8020, float %8021, float %7951, float %7952, float %7953)  ; Dot3(ax,ay,az,bx,by,bz)
  %8023 = fcmp fast ogt float %8022, 0.000000e+00
  %8024 = uitofp i1 %8023 to float
  br label %8025

; <label>:8025                                    ; preds = %8004, %7928
  %8026 = phi float [ %8024, %8004 ], [ 1.000000e+00, %7928 ]
  %8027 = phi float [ %8013, %8004 ], [ %7996, %7928 ]
  %8028 = phi float [ %8014, %8004 ], [ %7997, %7928 ]
  %8029 = phi float [ %8015, %8004 ], [ %7998, %7928 ]
  %8030 = call float @dx.op.dot3.f32(i32 55, float %7951, float %7952, float %7953, float %8027, float %8028, float %8029)  ; Dot3(ax,ay,az,bx,by,bz)
  %8031 = fmul fast float %8030, %8030
  %8032 = call float @dx.op.unary.f32(i32 7, float %8031)  ; Saturate(value)
  %8033 = fsub fast float 1.000000e+00, %8032
  %8034 = fmul fast float %8033, 5.000000e-01
  %8035 = fcmp fast ogt float %8030, 0.000000e+00
  %8036 = fsub fast float 1.000000e+00, %8034
  %8037 = select i1 %8035, float %8034, float %8036
  %8038 = fmul fast float %8037, %7986
  %8039 = fadd fast float %8038, %7984
  %8040 = fmul fast float %8039, 0x3EF0001000000000
  %8041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8040, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8042 = extractvalue %dx.types.ResRet.f32 %8041, 0
  %8043 = fmul fast float %8030, %7968
  %8044 = fadd fast float %8043, %7969
  %8045 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  %8046 = select i1 %7989, float 1.000000e+00, float %8045
  %8047 = select i1 %7989, float %8045, float 1.000000e+00
  %8048 = fmul fast float %7994, %7965
  %8049 = fsub fast float 1.000000e+00, %8048
  %8050 = fmul fast float %8049, %7971
  %8051 = call float @dx.op.unary.f32(i32 7, float %8050)  ; Saturate(value)
  %8052 = fmul fast float %8051, %8047
  %8053 = fmul fast float %8052, 2.000000e+00
  %8054 = fsub fast float 3.000000e+00, %8053
  %8055 = fmul fast float %8042, %8026
  %8056 = fmul fast float %8052, %8052
  %8057 = fmul fast float %8056, %8055
  %8058 = fmul fast float %8057, %8054
  %8059 = call float @dx.op.binary.f32(i32 36, float %8058, float %8058)  ; FMin(a,b)
  %8060 = call float @dx.op.binary.f32(i32 36, float %8058, float %8059)  ; FMin(a,b)
  %8061 = fcmp fast ogt float %8060, 0.000000e+00
  br i1 %8061, label %8070, label %8062, !dx.controlflow.hints !132

; <label>:8062                                    ; preds = %8501, %8216, %8025
  %8063 = phi float [ %7930, %8216 ], [ %7930, %8025 ], [ %8549, %8501 ]
  %8064 = phi float [ %7931, %8216 ], [ %7931, %8025 ], [ %8550, %8501 ]
  %8065 = phi float [ %7932, %8216 ], [ %7932, %8025 ], [ %8551, %8501 ]
  %8066 = phi float [ %7933, %8216 ], [ %7933, %8025 ], [ %8540, %8501 ]
  %8067 = phi float [ %7934, %8216 ], [ %7934, %8025 ], [ %8541, %8501 ]
  %8068 = phi float [ %7935, %8216 ], [ %7935, %8025 ], [ %8542, %8501 ]
  %8069 = icmp eq i32 %7929, %7939
  br i1 %8069, label %8552, label %7928

; <label>:8070                                    ; preds = %8025
  %8071 = icmp eq i32 %7987, 255
  br i1 %8071, label %8216, label %8072, !dx.controlflow.hints !133

; <label>:8072                                    ; preds = %8070
  %8073 = mul nuw nsw i32 %7987, 176
  %8074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8073, i32 undef)  ; BufferLoad(srv,index,wot)
  %8075 = extractvalue %dx.types.ResRet.f32 %8074, 0
  %8076 = extractvalue %dx.types.ResRet.f32 %8074, 1
  %8077 = extractvalue %dx.types.ResRet.f32 %8074, 2
  %8078 = extractvalue %dx.types.ResRet.f32 %8074, 3
  %8079 = add nuw nsw i32 %8073, 16
  %8080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8079, i32 undef)  ; BufferLoad(srv,index,wot)
  %8081 = extractvalue %dx.types.ResRet.f32 %8080, 0
  %8082 = extractvalue %dx.types.ResRet.f32 %8080, 1
  %8083 = add nuw nsw i32 %8073, 32
  %8084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8083, i32 undef)  ; BufferLoad(srv,index,wot)
  %8085 = extractvalue %dx.types.ResRet.f32 %8084, 0
  %8086 = extractvalue %dx.types.ResRet.f32 %8084, 1
  %8087 = extractvalue %dx.types.ResRet.f32 %8084, 2
  %8088 = add nuw nsw i32 %8073, 48
  %8089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8088, i32 undef)  ; BufferLoad(srv,index,wot)
  %8090 = extractvalue %dx.types.ResRet.f32 %8089, 0
  %8091 = extractvalue %dx.types.ResRet.f32 %8089, 1
  %8092 = extractvalue %dx.types.ResRet.f32 %8089, 2
  %8093 = extractvalue %dx.types.ResRet.f32 %8089, 3
  %8094 = add nuw nsw i32 %8073, 64
  %8095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8094, i32 undef)  ; BufferLoad(srv,index,wot)
  %8096 = extractvalue %dx.types.ResRet.f32 %8095, 0
  %8097 = extractvalue %dx.types.ResRet.f32 %8095, 1
  %8098 = extractvalue %dx.types.ResRet.f32 %8095, 2
  %8099 = extractvalue %dx.types.ResRet.f32 %8095, 3
  %8100 = add nuw nsw i32 %8073, 80
  %8101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8100, i32 undef)  ; BufferLoad(srv,index,wot)
  %8102 = extractvalue %dx.types.ResRet.f32 %8101, 0
  %8103 = extractvalue %dx.types.ResRet.f32 %8101, 1
  %8104 = extractvalue %dx.types.ResRet.f32 %8101, 2
  %8105 = extractvalue %dx.types.ResRet.f32 %8101, 3
  %8106 = add nuw nsw i32 %8073, 96
  %8107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8106, i32 undef)  ; BufferLoad(srv,index,wot)
  %8108 = extractvalue %dx.types.ResRet.f32 %8107, 0
  %8109 = extractvalue %dx.types.ResRet.f32 %8107, 1
  %8110 = extractvalue %dx.types.ResRet.f32 %8107, 2
  %8111 = extractvalue %dx.types.ResRet.f32 %8107, 3
  %8112 = bitcast float %8082 to i32
  %8113 = fmul fast float %8087, %116
  %8114 = fmul fast float %8087, %117
  %8115 = fmul fast float %8087, %118
  %8116 = fadd fast float %8113, %164
  %8117 = fadd fast float %8114, %165
  %8118 = fadd fast float %8115, %166
  %8119 = fmul fast float %8116, %8090
  %8120 = call float @dx.op.tertiary.f32(i32 46, float %8117, float %8096, float %8119)  ; FMad(a,b,c)
  %8121 = call float @dx.op.tertiary.f32(i32 46, float %8118, float %8102, float %8120)  ; FMad(a,b,c)
  %8122 = fadd fast float %8121, %8108
  %8123 = fmul fast float %8116, %8091
  %8124 = call float @dx.op.tertiary.f32(i32 46, float %8117, float %8097, float %8123)  ; FMad(a,b,c)
  %8125 = call float @dx.op.tertiary.f32(i32 46, float %8118, float %8103, float %8124)  ; FMad(a,b,c)
  %8126 = fadd fast float %8125, %8109
  %8127 = fmul fast float %8116, %8092
  %8128 = call float @dx.op.tertiary.f32(i32 46, float %8117, float %8098, float %8127)  ; FMad(a,b,c)
  %8129 = call float @dx.op.tertiary.f32(i32 46, float %8118, float %8104, float %8128)  ; FMad(a,b,c)
  %8130 = fadd fast float %8129, %8110
  %8131 = fmul fast float %8116, %8093
  %8132 = call float @dx.op.tertiary.f32(i32 46, float %8117, float %8099, float %8131)  ; FMad(a,b,c)
  %8133 = call float @dx.op.tertiary.f32(i32 46, float %8118, float %8105, float %8132)  ; FMad(a,b,c)
  %8134 = fadd fast float %8133, %8111
  %8135 = fdiv fast float %8122, %8134
  %8136 = fdiv fast float %8126, %8134
  %8137 = fdiv fast float %8130, %8134
  %8138 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8137)  ; FMax(a,b)
  %8139 = fmul fast float %269, 0x401921FB60000000
  %8140 = call float @dx.op.unary.f32(i32 13, float %8139)  ; Sin(value)
  %8141 = call float @dx.op.unary.f32(i32 12, float %8139)  ; Cos(value)
  %8142 = fmul fast float %8141, %8086
  %8143 = call float @dx.op.tertiary.f32(i32 46, float %8140, float %8086, float 0.000000e+00)  ; FMad(a,b,c)
  %8144 = fmul fast float %8086, %8140
  %8145 = fsub fast float -0.000000e+00, %8144
  %8146 = call float @dx.op.tertiary.f32(i32 46, float %8141, float %8086, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8147

; <label>:8147                                    ; preds = %8147, %8072
  %8148 = phi float [ 0.000000e+00, %8072 ], [ %8180, %8147 ]
  %8149 = phi float [ 0.000000e+00, %8072 ], [ %8182, %8147 ]
  %8150 = phi i32 [ 0, %8072 ], [ %8183, %8147 ]
  %8151 = mul i32 %8150, 2
  %8152 = add i32 0, %8151
  %8153 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8152
  %8154 = load float, float* %8153, align 4
  %8155 = mul i32 %8150, 2
  %8156 = add i32 1, %8155
  %8157 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8156
  %8158 = load float, float* %8157, align 4
  %8159 = fmul fast float %8142, %8154
  %8160 = call float @dx.op.tertiary.f32(i32 46, float %8158, float %8145, float %8159)  ; FMad(a,b,c)
  %8161 = fmul fast float %8154, %8143
  %8162 = call float @dx.op.tertiary.f32(i32 46, float %8158, float %8146, float %8161)  ; FMad(a,b,c)
  %8163 = fadd fast float %8160, %8135
  %8164 = fadd fast float %8162, %8136
  %8165 = fmul fast float %8163, %8081
  %8166 = fmul fast float %8164, %8081
  %8167 = call float @dx.op.binary.f32(i32 35, float %8165, float %8077)  ; FMax(a,b)
  %8168 = call float @dx.op.binary.f32(i32 35, float %8166, float %8077)  ; FMax(a,b)
  %8169 = call float @dx.op.binary.f32(i32 36, float %8167, float %8078)  ; FMin(a,b)
  %8170 = call float @dx.op.binary.f32(i32 36, float %8168, float %8078)  ; FMin(a,b)
  %8171 = fadd fast float %8169, %8075
  %8172 = fadd fast float %8170, %8076
  %8173 = uitofp i32 %8112 to float
  %8174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8171, float %8172, float %8173, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8175 = extractvalue %dx.types.ResRet.f32 %8174, 0
  %8176 = fsub fast float %8175, %8138
  %8177 = fsub fast float %8176, %8085
  %8178 = fcmp fast ogt float %8177, 0.000000e+00
  %8179 = select i1 %8178, float 1.000000e+00, float 0.000000e+00
  %8180 = fadd fast float %8179, %8148
  %8181 = select i1 %8178, float %8177, float 0.000000e+00
  %8182 = fadd fast float %8181, %8149
  %8183 = add nuw nsw i32 %8150, 1
  %8184 = icmp eq i32 %8183, 8
  br i1 %8184, label %8185, label %8147

; <label>:8185                                    ; preds = %8147
  %8186 = fdiv fast float 1.000000e+00, %8180
  %8187 = fmul fast float %8186, %8182
  %8188 = fdiv fast float 1.000000e+00, %8138
  %8189 = fmul fast float %8187, %8188
  %8190 = call float @dx.op.unary.f32(i32 7, float %8189)  ; Saturate(value)
  %8191 = call float @dx.op.binary.f32(i32 35, float %8190, float 0.000000e+00)  ; FMax(a,b)
  %8192 = fmul fast float %8180, 1.250000e-01
  %8193 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8194 = fmul fast float %8193, 2.000000e+00
  %8195 = fadd fast float %8194, -1.000000e+00
  %8196 = fcmp fast ogt float %8195, 0.000000e+00
  %8197 = fcmp fast olt float %8195, 0.000000e+00
  %8198 = zext i1 %8196 to i32
  %8199 = zext i1 %8197 to i32
  %8200 = sub nsw i32 %8198, %8199
  %8201 = sitofp i32 %8200 to float
  %8202 = fmul fast float %8201, %8195
  %8203 = fsub fast float 1.000000e+00, %8202
  %8204 = fmul fast float %8203, %8203
  %8205 = fmul fast float %8204, %8203
  %8206 = fsub fast float %8203, %8205
  %8207 = fmul fast float %8206, %8191
  %8208 = fsub fast float 1.000000e+00, %8205
  %8209 = fsub fast float %8208, %8207
  %8210 = fmul fast float %8201, 5.000000e-01
  %8211 = fmul fast float %8210, %8209
  %8212 = fsub fast float -5.000000e-01, %8211
  %8213 = fmul fast float %8212, %8046
  %8214 = fadd fast float %8213, 1.000000e+00
  %8215 = fmul fast float %8214, %8058
  br label %8216

; <label>:8216                                    ; preds = %8185, %8070
  %8217 = phi float [ %8215, %8185 ], [ %8058, %8070 ]
  %8218 = call float @dx.op.binary.f32(i32 36, float %8217, float %8217)  ; FMin(a,b)
  %8219 = call float @dx.op.binary.f32(i32 36, float %8217, float %8218)  ; FMin(a,b)
  %8220 = fcmp fast ogt float %8219, 0.000000e+00
  br i1 %8220, label %8221, label %8062, !dx.controlflow.hints !134

; <label>:8221                                    ; preds = %8216
  %8222 = fmul fast float %8217, %7980
  %8223 = fmul fast float %8217, %7981
  %8224 = fmul fast float %8217, %7982
  %8225 = fsub fast float %7964, %5163
  %8226 = fcmp fast ogt float %8225, 0.000000e+00
  %8227 = fsub fast float %166, %5163
  %8228 = fcmp fast ogt float %8227, 0.000000e+00
  %8229 = xor i1 %8228, %8226
  %8230 = fsub fast float %5163, %7964
  %8231 = fmul fast float %8230, 2.000000e+00
  %8232 = fadd fast float %8231, %7964
  %8233 = select i1 %8229, float %7964, float %8232
  %8234 = fsub fast float %8233, %166
  %8235 = call float @dx.op.dot3.f32(i32 55, float %7990, float %7991, float %8234, float %7990, float %7991, float %8234)  ; Dot3(ax,ay,az,bx,by,bz)
  %8236 = call float @dx.op.unary.f32(i32 25, float %8235)  ; Rsqrt(value)
  %8237 = fmul fast float %8236, %7990
  %8238 = fmul fast float %8236, %7991
  %8239 = fmul fast float %8236, %8234
  %8240 = fsub fast float %5163, %166
  %8241 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8240)  ; Dot3(ax,ay,az,bx,by,bz)
  %8242 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8237, float %8238, float %8239)  ; Dot3(ax,ay,az,bx,by,bz)
  %8243 = fdiv fast float 1.000000e+00, %8242
  %8244 = fmul fast float %8243, %8241
  %8245 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8227, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8246 = fcmp fast ogt float %8245, 0.000000e+00
  %8247 = fcmp fast olt float %8245, 0.000000e+00
  %8248 = zext i1 %8246 to i32
  %8249 = zext i1 %8247 to i32
  %8250 = sub nsw i32 %8248, %8249
  %8251 = sitofp i32 %8250 to float
  %8252 = fsub fast float %8233, %5163
  %8253 = call float @dx.op.dot3.f32(i32 55, float %7990, float %7991, float %8252, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8254 = fcmp fast ogt float %8253, 0.000000e+00
  %8255 = fcmp fast olt float %8253, 0.000000e+00
  %8256 = zext i1 %8254 to i32
  %8257 = zext i1 %8255 to i32
  %8258 = sub nsw i32 %8256, %8257
  %8259 = sitofp i32 %8258 to float
  %8260 = fcmp fast une float %8251, %8259
  br i1 %8260, label %8261, label %8271

; <label>:8261                                    ; preds = %8221
  %8262 = fmul fast float %8244, %8239
  %8263 = fmul fast float %8244, %8238
  %8264 = fmul fast float %8244, %8237
  %8265 = fmul fast float %8264, %8264
  %8266 = fmul fast float %8263, %8263
  %8267 = fadd fast float %8265, %8266
  %8268 = fmul fast float %8262, %8262
  %8269 = fadd fast float %8267, %8268
  %8270 = call float @dx.op.unary.f32(i32 24, float %8269)  ; Sqrt(value)
  br label %8283

; <label>:8271                                    ; preds = %8221
  %8272 = icmp slt i32 %8250, 0
  br i1 %8272, label %8273, label %8283

; <label>:8273                                    ; preds = %8271
  %8274 = fsub fast float %164, %7962
  %8275 = fsub fast float %165, %7963
  %8276 = fsub fast float %166, %8233
  %8277 = fmul fast float %8274, %8274
  %8278 = fmul fast float %8275, %8275
  %8279 = fadd fast float %8277, %8278
  %8280 = fmul fast float %8276, %8276
  %8281 = fadd fast float %8279, %8280
  %8282 = call float @dx.op.unary.f32(i32 24, float %8281)  ; Sqrt(value)
  br label %8283

; <label>:8283                                    ; preds = %8273, %8271, %8261
  %8284 = phi float [ %8270, %8261 ], [ %8282, %8273 ], [ 0.000000e+00, %8271 ]
  %8285 = and i1 %8228, %8226
  %8286 = fsub fast float -0.000000e+00, %8284
  %8287 = select i1 %8285, float -0.000000e+00, float %8286
  %8288 = fmul fast float %5164, 0x3FF7154760000000
  %8289 = fmul fast float %8288, %8287
  %8290 = fmul fast float %5165, 0x3FF7154760000000
  %8291 = fmul fast float %8290, %8287
  %8292 = fmul fast float %5166, 0x3FF7154760000000
  %8293 = fmul fast float %8292, %8287
  %8294 = call float @dx.op.unary.f32(i32 21, float %8289)  ; Exp(value)
  %8295 = call float @dx.op.unary.f32(i32 21, float %8291)  ; Exp(value)
  %8296 = call float @dx.op.unary.f32(i32 21, float %8293)  ; Exp(value)
  %8297 = call float @dx.op.unary.f32(i32 7, float %8294)  ; Saturate(value)
  %8298 = call float @dx.op.unary.f32(i32 7, float %8295)  ; Saturate(value)
  %8299 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  %8300 = fmul fast float %8222, %8297
  %8301 = fmul fast float %8223, %8298
  %8302 = fmul fast float %8224, %8299
  %8303 = fsub fast float %7996, %184
  %8304 = fsub fast float %7997, %185
  %8305 = fsub fast float %7998, %186
  %8306 = call float @dx.op.dot3.f32(i32 55, float %8303, float %8304, float %8305, float %8303, float %8304, float %8305)  ; Dot3(ax,ay,az,bx,by,bz)
  %8307 = call float @dx.op.unary.f32(i32 25, float %8306)  ; Rsqrt(value)
  %8308 = fmul fast float %8307, %8303
  %8309 = fmul fast float %8307, %8304
  %8310 = fmul fast float %8307, %8305
  %8311 = call float @dx.op.dot3.f32(i32 55, float %7996, float %7997, float %7998, float %5346, float %5347, float %5348)  ; Dot3(ax,ay,az,bx,by,bz)
  %8312 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %8308, float %8309, float %8310)  ; Dot3(ax,ay,az,bx,by,bz)
  %8313 = call float @dx.op.unary.f32(i32 7, float %8311)  ; Saturate(value)
  %8314 = fmul fast float %8313, %8003
  %8315 = fmul fast float %8313, %8313
  %8316 = fmul fast float %8315, %5385
  %8317 = call float @dx.op.unary.f32(i32 7, float %8316)  ; Saturate(value)
  %8318 = fmul fast float %8314, %8317
  %8319 = bitcast float %7993 to i32
  %8320 = ashr i32 %8319, 1
  %8321 = sub nsw i32 1597463007, %8320
  %8322 = bitcast i32 %8321 to float
  %8323 = fmul fast float %8322, %7990
  %8324 = fmul fast float %8322, %7991
  %8325 = fmul fast float %8322, %7992
  %8326 = fsub fast float %8323, %184
  %8327 = fsub fast float %8324, %185
  %8328 = fsub fast float %8325, %186
  %8329 = call float @dx.op.dot3.f32(i32 55, float %8326, float %8327, float %8328, float %8326, float %8327, float %8328)  ; Dot3(ax,ay,az,bx,by,bz)
  %8330 = call float @dx.op.unary.f32(i32 25, float %8329)  ; Rsqrt(value)
  %8331 = fmul fast float %8326, %8330
  %8332 = fmul fast float %8327, %8330
  %8333 = fmul fast float %8328, %8330
  %8334 = call float @dx.op.dot3.f32(i32 55, float %5346, float %5347, float %5348, float %8331, float %8332, float %8333)  ; Dot3(ax,ay,az,bx,by,bz)
  %8335 = fmul fast float %8334, %8334
  %8336 = call float @dx.op.unary.f32(i32 6, float %8311)  ; FAbs(value)
  %8337 = fsub fast float 1.000000e+00, %5378
  %8338 = fmul fast float %5360, %5360
  %8339 = fmul fast float %8338, %8337
  %8340 = fadd fast float %8339, %5378
  %8341 = bitcast float %8340 to i32
  %8342 = ashr i32 %8341, 1
  %8343 = add nsw i32 %8342, 532487669
  %8344 = bitcast i32 %8343 to float
  %8345 = fadd fast float %8344, %5360
  %8346 = fmul fast float %5378, %8335
  %8347 = fsub fast float 1.000000e+00, %8335
  %8348 = fadd fast float %8347, %8346
  %8349 = fmul fast float %8336, %8336
  %8350 = fmul fast float %8349, %8337
  %8351 = fadd fast float %8350, %5378
  %8352 = bitcast float %8351 to i32
  %8353 = ashr i32 %8352, 1
  %8354 = add nsw i32 %8353, 532487669
  %8355 = bitcast i32 %8354 to float
  %8356 = fadd fast float %8355, %8336
  %8357 = fmul fast float %8348, %8348
  %8358 = fmul fast float %8357, %8345
  %8359 = fmul fast float %8358, %8356
  %8360 = fdiv fast float 1.000000e+00, %8359
  %8361 = bitcast float %5378 to i32
  %8362 = sitofp i32 %8361 to float
  %8363 = fmul fast float %8362, 0x3FE7F73180000000
  %8364 = fadd fast float %8363, 0x41AFE27C40000000
  %8365 = fptosi float %8364 to i32
  %8366 = bitcast i32 %8365 to float
  %8367 = fmul fast float %7959, 0x3FD80E9D60000000
  %8368 = fmul fast float %8367, %8322
  %8369 = fadd fast float %8366, %8368
  %8370 = bitcast float %8369 to i32
  %8371 = sub nsw i32 2129859010, %8370
  %8372 = bitcast i32 %8371 to float
  %8373 = fmul fast float %5378, %8360
  %8374 = fmul fast float %8373, %8366
  %8375 = fmul fast float %8374, %8372
  %8376 = call float @dx.op.unary.f32(i32 6, float %8312)  ; FAbs(value)
  %8377 = fsub fast float 1.000000e+00, %8376
  %8378 = bitcast float %8377 to i32
  %8379 = sitofp i32 %8378 to float
  %8380 = fmul fast float %8379, 5.000000e+00
  %8381 = fadd fast float %8380, 0xC1EFBF8940000000
  %8382 = fptosi float %8381 to i32
  %8383 = bitcast i32 %8382 to float
  %8384 = fsub fast float 1.000000e+00, %5349
  %8385 = fsub fast float 1.000000e+00, %5350
  %8386 = fsub fast float 1.000000e+00, %5358
  %8387 = fmul fast float %8383, %8384
  %8388 = fmul fast float %8383, %8385
  %8389 = fmul fast float %8383, %8386
  %8390 = fadd fast float %8387, %5349
  %8391 = fadd fast float %8388, %5350
  %8392 = fadd fast float %8389, %5358
  br i1 %5643, label %8393, label %8416

; <label>:8393                                    ; preds = %8283
  %8394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4674, float %8376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8395 = extractvalue %dx.types.ResRet.f32 %8394, 0
  %8396 = extractvalue %dx.types.ResRet.f32 %8394, 1
  %8397 = extractvalue %dx.types.ResRet.f32 %8394, 2
  %8398 = fadd fast float %8395, -5.000000e-01
  %8399 = fadd fast float %8396, -5.000000e-01
  %8400 = fadd fast float %8397, -5.000000e-01
  %8401 = fmul fast float %5349, 4.000000e+00
  %8402 = fmul fast float %8401, %8384
  %8403 = fmul fast float %8402, %8398
  %8404 = fmul fast float %5350, 4.000000e+00
  %8405 = fmul fast float %8404, %8385
  %8406 = fmul fast float %8405, %8399
  %8407 = fmul fast float %5358, 4.000000e+00
  %8408 = fmul fast float %8407, %8386
  %8409 = fmul fast float %8408, %8400
  %8410 = fadd fast float %8403, %8390
  %8411 = fadd fast float %8406, %8391
  %8412 = fadd fast float %8409, %8392
  %8413 = call float @dx.op.unary.f32(i32 7, float %8410)  ; Saturate(value)
  %8414 = call float @dx.op.unary.f32(i32 7, float %8411)  ; Saturate(value)
  %8415 = call float @dx.op.unary.f32(i32 7, float %8412)  ; Saturate(value)
  br label %8416

; <label>:8416                                    ; preds = %8393, %8283
  %8417 = phi float [ %8413, %8393 ], [ %8390, %8283 ]
  %8418 = phi float [ %8414, %8393 ], [ %8391, %8283 ]
  %8419 = phi float [ %8415, %8393 ], [ %8392, %8283 ]
  %8420 = fmul fast float %8311, 9.843750e-01
  %8421 = fadd fast float %8420, 7.812500e-03
  %8422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8421, float %5633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8423 = extractvalue %dx.types.ResRet.f32 %8422, 2
  %8424 = extractvalue %dx.types.ResRet.f32 %8422, 3
  %8425 = fmul fast float %8423, %5349
  %8426 = fmul fast float %8423, %5350
  %8427 = fmul fast float %8423, %5358
  %8428 = fadd fast float %8425, %8424
  %8429 = fadd fast float %8426, %8424
  %8430 = fadd fast float %8427, %8424
  br i1 %5643, label %8431, label %8454

; <label>:8431                                    ; preds = %8416
  %8432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4674, float %8311, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8433 = extractvalue %dx.types.ResRet.f32 %8432, 0
  %8434 = extractvalue %dx.types.ResRet.f32 %8432, 1
  %8435 = extractvalue %dx.types.ResRet.f32 %8432, 2
  %8436 = fadd fast float %8433, -5.000000e-01
  %8437 = fadd fast float %8434, -5.000000e-01
  %8438 = fadd fast float %8435, -5.000000e-01
  %8439 = fmul fast float %5349, 4.000000e+00
  %8440 = fmul fast float %8439, %8384
  %8441 = fmul fast float %8440, %8436
  %8442 = fmul fast float %5350, 4.000000e+00
  %8443 = fmul fast float %8442, %8385
  %8444 = fmul fast float %8443, %8437
  %8445 = fmul fast float %5358, 4.000000e+00
  %8446 = fmul fast float %8445, %8386
  %8447 = fmul fast float %8446, %8438
  %8448 = fadd fast float %8441, %8428
  %8449 = fadd fast float %8444, %8429
  %8450 = fadd fast float %8447, %8430
  %8451 = call float @dx.op.unary.f32(i32 7, float %8448)  ; Saturate(value)
  %8452 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  %8453 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  br label %8454

; <label>:8454                                    ; preds = %8431, %8416
  %8455 = phi float [ %8451, %8431 ], [ %8428, %8416 ]
  %8456 = phi float [ %8452, %8431 ], [ %8429, %8416 ]
  %8457 = phi float [ %8453, %8431 ], [ %8430, %8416 ]
  %8458 = call float @dx.op.binary.f32(i32 35, float %8456, float %8457)  ; FMax(a,b)
  %8459 = call float @dx.op.binary.f32(i32 35, float %8455, float %8458)  ; FMax(a,b)
  %8460 = fsub fast float 1.000000e+00, %8459
  %8461 = fsub fast float -0.000000e+00, %5346
  %8462 = fsub fast float -0.000000e+00, %5347
  %8463 = fsub fast float -0.000000e+00, %5348
  %8464 = call float @dx.op.dot3.f32(i32 55, float %7996, float %7997, float %7998, float %8461, float %8462, float %8463)  ; Dot3(ax,ay,az,bx,by,bz)
  %8465 = call float @dx.op.unary.f32(i32 7, float %8464)  ; Saturate(value)
  %8466 = fmul fast float %8465, %8003
  %8467 = fmul fast float %8465, 9.843750e-01
  %8468 = fadd fast float %8467, 7.812500e-03
  %8469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8468, float %5633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8470 = extractvalue %dx.types.ResRet.f32 %8469, 2
  %8471 = extractvalue %dx.types.ResRet.f32 %8469, 3
  %8472 = fmul fast float %8470, %5349
  %8473 = fmul fast float %8470, %5350
  %8474 = fmul fast float %8470, %5358
  %8475 = fadd fast float %8472, %8471
  %8476 = fadd fast float %8473, %8471
  %8477 = fadd fast float %8474, %8471
  br i1 %5643, label %8478, label %8501

; <label>:8478                                    ; preds = %8454
  %8479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4674, float %8465, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8480 = extractvalue %dx.types.ResRet.f32 %8479, 0
  %8481 = extractvalue %dx.types.ResRet.f32 %8479, 1
  %8482 = extractvalue %dx.types.ResRet.f32 %8479, 2
  %8483 = fadd fast float %8480, -5.000000e-01
  %8484 = fadd fast float %8481, -5.000000e-01
  %8485 = fadd fast float %8482, -5.000000e-01
  %8486 = fmul fast float %5349, 4.000000e+00
  %8487 = fmul fast float %8486, %8384
  %8488 = fmul fast float %8487, %8483
  %8489 = fmul fast float %5350, 4.000000e+00
  %8490 = fmul fast float %8489, %8385
  %8491 = fmul fast float %8490, %8484
  %8492 = fmul fast float %5358, 4.000000e+00
  %8493 = fmul fast float %8492, %8386
  %8494 = fmul fast float %8493, %8485
  %8495 = fadd fast float %8488, %8475
  %8496 = fadd fast float %8491, %8476
  %8497 = fadd fast float %8494, %8477
  %8498 = call float @dx.op.unary.f32(i32 7, float %8495)  ; Saturate(value)
  %8499 = call float @dx.op.unary.f32(i32 7, float %8496)  ; Saturate(value)
  %8500 = call float @dx.op.unary.f32(i32 7, float %8497)  ; Saturate(value)
  br label %8501

; <label>:8501                                    ; preds = %8478, %8454
  %8502 = phi float [ %8498, %8478 ], [ %8475, %8454 ]
  %8503 = phi float [ %8499, %8478 ], [ %8476, %8454 ]
  %8504 = phi float [ %8500, %8478 ], [ %8477, %8454 ]
  %8505 = call float @dx.op.binary.f32(i32 35, float %8503, float %8504)  ; FMax(a,b)
  %8506 = call float @dx.op.binary.f32(i32 35, float %8502, float %8505)  ; FMax(a,b)
  %8507 = fsub fast float 1.000000e+00, %8506
  %8508 = fmul fast float %8466, %8507
  %8509 = fmul fast float %8508, %4786
  %8510 = fmul fast float %8508, %4787
  %8511 = fmul fast float %8508, %4788
  %8512 = fmul fast float %8417, %8375
  %8513 = fmul fast float %8418, %8375
  %8514 = fmul fast float %8419, %8375
  %8515 = fsub fast float 1.000000e+00, %8312
  %8516 = bitcast float %8515 to i32
  %8517 = sitofp i32 %8516 to float
  %8518 = fmul fast float %8517, 5.000000e+00
  %8519 = fadd fast float %8518, 0xC1EFBF8940000000
  %8520 = fptosi float %8519 to i32
  %8521 = bitcast i32 %8520 to float
  %8522 = fmul fast float %8521, %4675
  %8523 = fmul fast float %8460, %8522
  %8524 = fmul fast float %8523, %6182
  %8525 = fmul fast float %8523, %6183
  %8526 = fmul fast float %8523, %6184
  %8527 = fmul fast float %8460, %8318
  %8528 = fadd fast float %8524, %8512
  %8529 = fadd fast float %8525, %8513
  %8530 = fadd fast float %8526, %8514
  %8531 = fadd fast float %8509, %8527
  %8532 = fadd fast float %8510, %8527
  %8533 = fadd fast float %8511, %8527
  %8534 = fmul fast float %8300, %4700
  %8535 = fmul fast float %8534, %8531
  %8536 = fmul fast float %8301, %4700
  %8537 = fmul fast float %8536, %8532
  %8538 = fmul fast float %8302, %4700
  %8539 = fmul fast float %8538, %8533
  %8540 = fadd fast float %8535, %7933
  %8541 = fadd fast float %8537, %7934
  %8542 = fadd fast float %8539, %7935
  %8543 = fmul fast float %8534, %8318
  %8544 = fmul fast float %8543, %8528
  %8545 = fmul fast float %8536, %8318
  %8546 = fmul fast float %8545, %8529
  %8547 = fmul fast float %8538, %8318
  %8548 = fmul fast float %8547, %8530
  %8549 = fadd fast float %8544, %7930
  %8550 = fadd fast float %8546, %7931
  %8551 = fadd fast float %8548, %7932
  br label %8062

; <label>:8552                                    ; preds = %8062
  br label %8553

; <label>:8553                                    ; preds = %8552, %7896
  %8554 = phi float [ %7898, %7896 ], [ %8063, %8552 ]
  %8555 = phi float [ %7899, %7896 ], [ %8064, %8552 ]
  %8556 = phi float [ %7900, %7896 ], [ %8065, %8552 ]
  %8557 = phi float [ %7901, %7896 ], [ %8066, %8552 ]
  %8558 = phi float [ %7902, %7896 ], [ %8067, %8552 ]
  %8559 = phi float [ %7903, %7896 ], [ %8068, %8552 ]
  %8560 = add i32 %7897, 1
  %8561 = icmp ugt i32 %8560, %7893
  br i1 %8561, label %8562, label %7896

; <label>:8562                                    ; preds = %8553
  br label %8563

; <label>:8563                                    ; preds = %8562, %7846, %7836
  %8564 = phi float [ %7837, %7836 ], [ %7837, %7846 ], [ %8554, %8562 ]
  %8565 = phi float [ %7838, %7836 ], [ %7838, %7846 ], [ %8555, %8562 ]
  %8566 = phi float [ %7839, %7836 ], [ %7839, %7846 ], [ %8556, %8562 ]
  %8567 = phi float [ %7840, %7836 ], [ %7840, %7846 ], [ %8557, %8562 ]
  %8568 = phi float [ %7841, %7836 ], [ %7841, %7846 ], [ %8558, %8562 ]
  %8569 = phi float [ %7842, %7836 ], [ %7842, %7846 ], [ %8559, %8562 ]
  %8570 = fmul fast float %4700, %6191
  %8571 = fsub fast float -0.000000e+00, %8570
  %8572 = fmul fast float %4700, %6192
  %8573 = fsub fast float -0.000000e+00, %8572
  %8574 = fmul fast float %4700, %6193
  %8575 = fsub fast float -0.000000e+00, %8574
  %8576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8577 = extractvalue %dx.types.CBufRet.f32 %8576, 0
  %8578 = fmul fast float %8577, %6197
  %8579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8579, 3
  %8581 = fsub fast float 1.000000e+00, %4678
  %8582 = call float @dx.op.unary.f32(i32 7, float %8581)  ; Saturate(value)
  %8583 = fadd fast float %8569, %4677
  %8584 = fmul fast float %8583, %4678
  %8585 = fmul fast float %8582, %8580
  %8586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4679, i32 undef)  ; BufferLoad(srv,index,wot)
  %8587 = extractvalue %dx.types.ResRet.i32 %8586, 3
  %8588 = bitcast i32 %8587 to float
  %8589 = fsub fast float %8571, %8588
  %8590 = fsub fast float %8573, %8588
  %8591 = fsub fast float %8575, %8588
  %8592 = fmul fast float %8589, %198
  %8593 = fmul fast float %8590, %198
  %8594 = fmul fast float %8591, %198
  %8595 = fadd fast float %8592, %8588
  %8596 = fadd fast float %8593, %8588
  %8597 = fadd fast float %8594, %8588
  %8598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8599 = extractvalue %dx.types.CBufRet.f32 %8598, 3
  %8600 = fmul fast float %8567, %5352
  %8601 = fmul fast float %8568, %5353
  %8602 = fmul fast float %8569, %5354
  %8603 = fcmp fast ogt float %97, %218
  %8604 = and i1 %8603, %5169
  %8605 = or i1 %5175, %8604
  %8606 = icmp eq i32 %5168, 2
  %8607 = fcmp fast ole float %97, %218
  %8608 = and i1 %8607, %8606
  %8609 = or i1 %8608, %8605
  br i1 %8604, label %8610, label %8867

; <label>:8610                                    ; preds = %8563
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 2
  %8613 = extractvalue %dx.types.CBufRet.f32 %8611, 3
  %8614 = fmul fast float %8612, %109
  %8615 = fmul fast float %8613, %110
  %8616 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8617 = call float @dx.op.unary.f32(i32 7, float %8615)  ; Saturate(value)
  %8618 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8616, float %8617, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8619 = extractvalue %dx.types.ResRet.f32 %8618, 0
  %8620 = extractvalue %dx.types.ResRet.f32 %8618, 1
  %8621 = extractvalue %dx.types.ResRet.f32 %8618, 2
  %8622 = extractvalue %dx.types.ResRet.f32 %8618, 3
  %8623 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8616, float %8617, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8624 = extractvalue %dx.types.ResRet.f32 %8623, 0
  %8625 = extractvalue %dx.types.ResRet.f32 %8623, 1
  %8626 = extractvalue %dx.types.ResRet.f32 %8623, 2
  %8627 = extractvalue %dx.types.ResRet.f32 %8623, 3
  %8628 = call float @dx.op.binary.f32(i32 35, float %8620, float %8621)  ; FMax(a,b)
  %8629 = call float @dx.op.binary.f32(i32 35, float %8619, float %8628)  ; FMax(a,b)
  %8630 = call float @dx.op.binary.f32(i32 35, float %8629, float %8622)  ; FMax(a,b)
  %8631 = call float @dx.op.binary.f32(i32 36, float %8625, float %8626)  ; FMin(a,b)
  %8632 = call float @dx.op.binary.f32(i32 36, float %8624, float %8631)  ; FMin(a,b)
  %8633 = call float @dx.op.binary.f32(i32 36, float %8632, float %8627)  ; FMin(a,b)
  %8634 = fmul fast float %8630, 2.550000e+02
  %8635 = fadd fast float %8634, 0x3F70101020000000
  %8636 = fptoui float %8635 to i32
  %8637 = fmul fast float %8633, 2.550000e+02
  %8638 = fadd fast float %8637, 0x3F70101020000000
  %8639 = fptoui float %8638 to i32
  %8640 = icmp ult i32 %8636, %8639
  br i1 %8640, label %8641, label %8809

; <label>:8641                                    ; preds = %8610
  %8642 = fcmp fast ogt float %96, 9.843750e-01
  %8643 = fadd fast float %97, -4.000000e+00
  %8644 = select i1 %8642, float -4.000000e+00, float %8643
  %8645 = call float @dx.op.binary.f32(i32 35, float %8644, float 0.000000e+00)  ; FMax(a,b)
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 0
  %8648 = fadd fast float %8647, %8645
  %8649 = extractvalue %dx.types.CBufRet.f32 %8646, 2
  %8650 = fmul fast float %8648, %8649
  %8651 = call float @dx.op.unary.f32(i32 23, float %8650)  ; Log(value)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8646, 3
  %8653 = fmul fast float %8652, %8651
  %8654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.f32 %8654, 2
  %8656 = fmul fast float %8653, %8655
  %8657 = call float @dx.op.unary.f32(i32 7, float %8656)  ; Saturate(value)
  %8658 = uitofp i32 %8636 to float
  %8659 = uitofp i32 %8639 to float
  %8660 = fadd fast float %8658, 5.000000e-01
  %8661 = fadd fast float %8659, 5.000000e-01
  %8662 = fmul fast float %8655, %8660
  %8663 = fmul fast float %8655, %8661
  %8664 = fadd fast float %8662, 0x3F0FFB4800000000
  %8665 = fadd fast float %8663, 0xBF0FFB4800000000
  %8666 = call float @dx.op.binary.f32(i32 35, float %8657, float %8664)  ; FMax(a,b)
  %8667 = call float @dx.op.binary.f32(i32 36, float %8666, float %8665)  ; FMin(a,b)
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8670 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %8671 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %8672 = fmul fast float %8669, %8667
  %8673 = fadd fast float %8671, %8672
  %8674 = fadd fast float %8671, %8670
  %8675 = fsub fast float %8669, %8670
  %8676 = fadd fast float %8675, %8671
  %8677 = call float @dx.op.binary.f32(i32 35, float %8673, float %8674)  ; FMax(a,b)
  %8678 = call float @dx.op.binary.f32(i32 36, float %8677, float %8676)  ; FMin(a,b)
  %8679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8616, float %8617, float %8678, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8680 = extractvalue %dx.types.ResRet.f32 %8679, 0
  %8681 = extractvalue %dx.types.ResRet.f32 %8679, 1
  %8682 = extractvalue %dx.types.ResRet.f32 %8679, 2
  %8683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.i32 %8683, 0
  %8685 = extractvalue %dx.types.CBufRet.i32 %8683, 1
  %8686 = uitofp i32 %8684 to float
  %8687 = uitofp i32 %8685 to float
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.CBufRet.f32 %8688, 1
  %8691 = fmul fast float %8686, %8616
  %8692 = fmul fast float %8687, %8617
  %8693 = fadd fast float %8691, -5.000000e-01
  %8694 = fadd fast float %8692, -5.000000e-01
  %8695 = call float @dx.op.unary.f32(i32 22, float %8693)  ; Frc(value)
  %8696 = call float @dx.op.unary.f32(i32 22, float %8694)  ; Frc(value)
  %8697 = fmul fast float %8695, %8695
  %8698 = fmul fast float %8697, %8695
  %8699 = fsub fast float 3.000000e+00, %8695
  %8700 = fmul fast float %8697, %8699
  %8701 = fmul fast float %8695, 3.000000e+00
  %8702 = fmul fast float %8698, 3.000000e+00
  %8703 = fmul fast float %8697, 6.000000e+00
  %8704 = fsub fast float %8702, %8703
  %8705 = fadd fast float %8704, 4.000000e+00
  %8706 = fmul fast float %8705, 0x3FC5555560000000
  %8707 = fmul fast float %8698, -3.000000e+00
  %8708 = fadd fast float %8697, %8695
  %8709 = fmul fast float %8708, 3.000000e+00
  %8710 = fadd fast float %8707, 1.000000e+00
  %8711 = fadd fast float %8710, %8709
  %8712 = fmul fast float %8698, 0x3FC5555560000000
  %8713 = fmul fast float %8696, %8696
  %8714 = fmul fast float %8713, %8696
  %8715 = fsub fast float 3.000000e+00, %8696
  %8716 = fmul fast float %8713, %8715
  %8717 = fmul fast float %8696, 3.000000e+00
  %8718 = fmul fast float %8714, 3.000000e+00
  %8719 = fmul fast float %8713, 6.000000e+00
  %8720 = fsub fast float %8718, %8719
  %8721 = fadd fast float %8720, 4.000000e+00
  %8722 = fmul fast float %8721, 0x3FC5555560000000
  %8723 = fmul fast float %8714, -3.000000e+00
  %8724 = fadd fast float %8713, %8696
  %8725 = fmul fast float %8724, 3.000000e+00
  %8726 = fadd fast float %8723, 1.000000e+00
  %8727 = fadd fast float %8726, %8725
  %8728 = fmul fast float %8714, 0x3FC5555560000000
  %8729 = fadd fast float %8695, 1.000000e+00
  %8730 = fsub fast float 1.000000e+00, %8701
  %8731 = fadd fast float %8730, %8700
  %8732 = fadd fast float %8731, %8705
  %8733 = fmul fast float %8732, 0x3FC5555560000000
  %8734 = fdiv fast float %8706, %8733
  %8735 = fsub fast float %8729, %8734
  %8736 = fsub fast float 1.000000e+00, %8695
  %8737 = fadd fast float %8711, %8698
  %8738 = fmul fast float %8737, 0x3FC5555560000000
  %8739 = fdiv fast float %8712, %8738
  %8740 = fadd fast float %8736, %8739
  %8741 = fadd fast float %8696, 1.000000e+00
  %8742 = fsub fast float 1.000000e+00, %8717
  %8743 = fadd fast float %8742, %8716
  %8744 = fadd fast float %8743, %8721
  %8745 = fmul fast float %8744, 0x3FC5555560000000
  %8746 = fdiv fast float %8722, %8745
  %8747 = fsub fast float %8741, %8746
  %8748 = fsub fast float 1.000000e+00, %8696
  %8749 = fadd fast float %8727, %8714
  %8750 = fmul fast float %8749, 0x3FC5555560000000
  %8751 = fdiv fast float %8728, %8750
  %8752 = fadd fast float %8751, %8748
  %8753 = fmul fast float %8735, %8689
  %8754 = fsub fast float %8616, %8753
  %8755 = fmul fast float %8740, %8689
  %8756 = fadd fast float %8755, %8616
  %8757 = fmul fast float %8752, %8690
  %8758 = fadd fast float %8757, %8617
  %8759 = fmul fast float %8747, %8690
  %8760 = fsub fast float %8617, %8759
  %8761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8754, float %8760, float %8678, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8762 = extractvalue %dx.types.ResRet.f32 %8761, 0
  %8763 = extractvalue %dx.types.ResRet.f32 %8761, 1
  %8764 = extractvalue %dx.types.ResRet.f32 %8761, 2
  %8765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8756, float %8760, float %8678, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8766 = extractvalue %dx.types.ResRet.f32 %8765, 0
  %8767 = extractvalue %dx.types.ResRet.f32 %8765, 1
  %8768 = extractvalue %dx.types.ResRet.f32 %8765, 2
  %8769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8754, float %8758, float %8678, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8770 = extractvalue %dx.types.ResRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.ResRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.ResRet.f32 %8769, 2
  %8773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8756, float %8758, float %8678, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8774 = extractvalue %dx.types.ResRet.f32 %8773, 0
  %8775 = extractvalue %dx.types.ResRet.f32 %8773, 1
  %8776 = extractvalue %dx.types.ResRet.f32 %8773, 2
  %8777 = fsub fast float %8770, %8762
  %8778 = fsub fast float %8771, %8763
  %8779 = fsub fast float %8772, %8764
  %8780 = fmul fast float %8777, %8750
  %8781 = fmul fast float %8778, %8750
  %8782 = fmul fast float %8779, %8750
  %8783 = fadd fast float %8780, %8762
  %8784 = fadd fast float %8781, %8763
  %8785 = fadd fast float %8782, %8764
  %8786 = fsub fast float %8774, %8766
  %8787 = fsub fast float %8775, %8767
  %8788 = fsub fast float %8776, %8768
  %8789 = fmul fast float %8786, %8750
  %8790 = fmul fast float %8787, %8750
  %8791 = fmul fast float %8788, %8750
  %8792 = fsub fast float %8766, %8783
  %8793 = fadd fast float %8792, %8789
  %8794 = fsub fast float %8767, %8784
  %8795 = fadd fast float %8794, %8790
  %8796 = fsub fast float %8768, %8785
  %8797 = fadd fast float %8796, %8791
  %8798 = fmul fast float %8793, %8738
  %8799 = fmul fast float %8795, %8738
  %8800 = fmul fast float %8797, %8738
  %8801 = fadd fast float %8798, %8783
  %8802 = fadd fast float %8799, %8784
  %8803 = fadd fast float %8800, %8785
  %8804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8805 = extractvalue %dx.types.CBufRet.f32 %8804, 1
  %8806 = fmul fast float %8801, %8805
  %8807 = fmul fast float %8802, %8805
  %8808 = fmul fast float %8803, %8805
  br label %8809

; <label>:8809                                    ; preds = %8641, %8610
  %8810 = phi float [ %8680, %8641 ], [ 1.000000e+00, %8610 ]
  %8811 = phi float [ %8681, %8641 ], [ 1.000000e+00, %8610 ]
  %8812 = phi float [ %8682, %8641 ], [ 1.000000e+00, %8610 ]
  %8813 = phi float [ %8806, %8641 ], [ 0.000000e+00, %8610 ]
  %8814 = phi float [ %8807, %8641 ], [ 0.000000e+00, %8610 ]
  %8815 = phi float [ %8808, %8641 ], [ 0.000000e+00, %8610 ]
  %8816 = fmul fast float %8813, %8595
  %8817 = fmul fast float %8814, %8596
  %8818 = fmul fast float %8815, %8597
  %8819 = call float @dx.op.dot3.f32(i32 55, float %8810, float %8811, float %8812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8820 = call float @dx.op.dot3.f32(i32 55, float %8816, float %8817, float %8818, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8821 = select i1 %258, float %8819, float %8810
  %8822 = select i1 %258, float %8819, float %8811
  %8823 = select i1 %258, float 1.000000e+00, float %8812
  %8824 = select i1 %258, float %8820, float %8816
  %8825 = select i1 %258, float 0.000000e+00, float %8817
  %8826 = select i1 %258, float 0.000000e+00, float %8818
  %8827 = fmul fast float %8821, %8600
  %8828 = fmul fast float %8822, %8601
  %8829 = fmul fast float %8823, %8602
  %8830 = fadd fast float %8827, %8824
  %8831 = fadd fast float %8828, %8825
  %8832 = fadd fast float %8826, %8829
  %8833 = fmul fast float %8821, %8564
  %8834 = fmul fast float %8822, %8565
  %8835 = fmul fast float %8823, %8566
  %8836 = fmul fast float %134, %8612
  %8837 = fmul fast float %136, %8613
  %8838 = fsub fast float 1.000000e+00, %8836
  %8839 = fsub fast float 1.000000e+00, %8837
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 0
  %8842 = extractvalue %dx.types.CBufRet.f32 %8840, 1
  %8843 = extractvalue %dx.types.CBufRet.f32 %8840, 2
  %8844 = fmul fast float %8838, %8841
  %8845 = fmul fast float %8838, %8842
  %8846 = fmul fast float %8838, %8843
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 0
  %8849 = extractvalue %dx.types.CBufRet.f32 %8847, 1
  %8850 = extractvalue %dx.types.CBufRet.f32 %8847, 2
  %8851 = fmul fast float %8839, %8848
  %8852 = fmul fast float %8839, %8849
  %8853 = fmul fast float %8839, %8850
  %8854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8855 = extractvalue %dx.types.CBufRet.f32 %8854, 0
  %8856 = extractvalue %dx.types.CBufRet.f32 %8854, 1
  %8857 = extractvalue %dx.types.CBufRet.f32 %8854, 2
  %8858 = fadd fast float %8851, %8855
  %8859 = fadd fast float %8858, %8844
  %8860 = fadd fast float %8852, %8856
  %8861 = fadd fast float %8860, %8845
  %8862 = fadd fast float %8853, %8857
  %8863 = fadd fast float %8862, %8846
  %8864 = fmul fast float %8859, %218
  %8865 = fmul fast float %8861, %218
  %8866 = fmul fast float %8863, %218
  br label %8867

; <label>:8867                                    ; preds = %8809, %8563
  %8868 = phi float [ %8864, %8809 ], [ %164, %8563 ]
  %8869 = phi float [ %8865, %8809 ], [ %165, %8563 ]
  %8870 = phi float [ %8866, %8809 ], [ %166, %8563 ]
  %8871 = phi float [ %218, %8809 ], [ %97, %8563 ]
  %8872 = phi float [ %8830, %8809 ], [ %8600, %8563 ]
  %8873 = phi float [ %8831, %8809 ], [ %8601, %8563 ]
  %8874 = phi float [ %8832, %8809 ], [ %8602, %8563 ]
  %8875 = phi float [ %8833, %8809 ], [ %8564, %8563 ]
  %8876 = phi float [ %8834, %8809 ], [ %8565, %8563 ]
  %8877 = phi float [ %8835, %8809 ], [ %8566, %8563 ]
  %8878 = phi float [ %8810, %8809 ], [ 1.000000e+00, %8563 ]
  br i1 %8609, label %10033, label %8879

; <label>:8879                                    ; preds = %8867
  %8880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8881 = extractvalue %dx.types.CBufRet.f32 %8880, 0
  %8882 = extractvalue %dx.types.CBufRet.f32 %8880, 1
  %8883 = extractvalue %dx.types.CBufRet.f32 %8880, 2
  %8884 = extractvalue %dx.types.CBufRet.f32 %8880, 3
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 0
  %8887 = extractvalue %dx.types.CBufRet.f32 %8885, 1
  %8888 = extractvalue %dx.types.CBufRet.f32 %8885, 2
  %8889 = extractvalue %dx.types.CBufRet.f32 %8885, 3
  %8890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8891 = extractvalue %dx.types.CBufRet.f32 %8890, 0
  %8892 = extractvalue %dx.types.CBufRet.f32 %8890, 1
  %8893 = extractvalue %dx.types.CBufRet.f32 %8890, 2
  %8894 = extractvalue %dx.types.CBufRet.f32 %8890, 3
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8899 = extractvalue %dx.types.CBufRet.f32 %8895, 3
  %8900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8900, 3
  %8902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8903 = extractvalue %dx.types.CBufRet.f32 %8902, 3
  %8904 = extractvalue %dx.types.CBufRet.f32 %8902, 0
  %8905 = extractvalue %dx.types.CBufRet.f32 %8902, 1
  %8906 = extractvalue %dx.types.CBufRet.f32 %8902, 2
  %8907 = fcmp fast olt float %8906, -5.000000e-01
  %8908 = call float @dx.op.dot3.f32(i32 55, float %8868, float %8869, float %8870, float %8868, float %8869, float %8870)  ; Dot3(ax,ay,az,bx,by,bz)
  %8909 = call float @dx.op.unary.f32(i32 25, float %8908)  ; Rsqrt(value)
  %8910 = fmul fast float %8909, %8908
  %8911 = fmul fast float %8909, %8868
  %8912 = fmul fast float %8909, %8869
  %8913 = fmul fast float %8909, %8870
  %8914 = fadd fast float %8910, %8884
  %8915 = call float @dx.op.dot3.f32(i32 55, float %8911, float %8912, float %8913, float %8881, float %8882, float %8883)  ; Dot3(ax,ay,az,bx,by,bz)
  %8916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8917 = extractvalue %dx.types.CBufRet.i32 %8916, 1
  %8918 = and i32 %8917, 1
  %8919 = icmp ne i32 %8918, 0
  %8920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8921 = extractvalue %dx.types.CBufRet.f32 %8920, 2
  %8922 = fcmp fast ogt float %8921, 0.000000e+00
  %8923 = and i1 %8919, %8922
  br i1 %8923, label %8924, label %9330, !dx.controlflow.hints !135

; <label>:8924                                    ; preds = %8879
  %8925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.f32 %8925, 3
  %8927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8928 = extractvalue %dx.types.CBufRet.f32 %8927, 2
  %8929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8930 = extractvalue %dx.types.CBufRet.f32 %8929, 2
  %8931 = fsub fast float %8928, %8930
  %8932 = and i32 %8917, 2
  %8933 = extractvalue %dx.types.CBufRet.i32 %8916, 0
  %8934 = call i32 @dx.op.binary.i32(i32 40, i32 %8933, i32 3)  ; UMin(a,b)
  %8935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8936 = extractvalue %dx.types.CBufRet.f32 %8935, 0
  %8937 = extractvalue %dx.types.CBufRet.f32 %8935, 1
  %8938 = extractvalue %dx.types.CBufRet.f32 %8929, 0
  %8939 = extractvalue %dx.types.CBufRet.f32 %8929, 1
  %8940 = fsub fast float %8936, %8938
  %8941 = fsub fast float %8937, %8939
  %8942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8943 = extractvalue %dx.types.CBufRet.f32 %8942, 0
  %8944 = fcmp fast ogt float %8943, 0.000000e+00
  %8945 = fsub fast float -0.000000e+00, %8940
  %8946 = fsub fast float -0.000000e+00, %8941
  %8947 = call float @dx.op.dot2.f32(i32 54, float %8911, float %8912, float %8911, float %8912)  ; Dot2(ax,ay,bx,by)
  %8948 = call float @dx.op.dot2.f32(i32 54, float %8911, float %8912, float %8945, float %8946)  ; Dot2(ax,ay,bx,by)
  %8949 = fmul fast float %8948, 2.000000e+00
  %8950 = call float @dx.op.dot2.f32(i32 54, float %8945, float %8946, float %8945, float %8946)  ; Dot2(ax,ay,bx,by)
  %8951 = fmul fast float %8943, %8943
  %8952 = fsub fast float %8950, %8951
  %8953 = fmul fast float %8949, %8949
  %8954 = fmul fast float %8947, 4.000000e+00
  %8955 = fmul fast float %8954, %8952
  %8956 = fsub fast float %8953, %8955
  %8957 = fcmp fast ogt float %8956, 0.000000e+00
  br i1 %8957, label %8958, label %8973

; <label>:8958                                    ; preds = %8924
  %8959 = fcmp fast ogt float %8949, 0.000000e+00
  %8960 = call float @dx.op.unary.f32(i32 24, float %8956)  ; Sqrt(value)
  %8961 = fsub fast float -0.000000e+00, %8960
  %8962 = select i1 %8959, float %8960, float %8961
  %8963 = fadd fast float %8962, %8949
  %8964 = fmul float %8963, -5.000000e-01
  %8965 = fdiv fast float %8964, %8947
  %8966 = call float @dx.op.binary.f32(i32 35, float %8965, float 0.000000e+00)  ; FMax(a,b)
  %8967 = call float @dx.op.binary.f32(i32 36, float %8910, float %8966)  ; FMin(a,b)
  %8968 = fdiv fast float %8952, %8964
  %8969 = call float @dx.op.binary.f32(i32 35, float %8968, float 0.000000e+00)  ; FMax(a,b)
  %8970 = call float @dx.op.binary.f32(i32 36, float %8910, float %8969)  ; FMin(a,b)
  %8971 = call float @dx.op.binary.f32(i32 36, float %8967, float %8970)  ; FMin(a,b)
  %8972 = call float @dx.op.binary.f32(i32 35, float %8967, float %8970)  ; FMax(a,b)
  br label %8973

; <label>:8973                                    ; preds = %8958, %8924
  %8974 = phi float [ %8972, %8958 ], [ -1.000000e+00, %8924 ]
  %8975 = phi float [ %8971, %8958 ], [ -1.000000e+00, %8924 ]
  %8976 = phi i1 [ true, %8958 ], [ false, %8924 ]
  %8977 = and i1 %8944, %8976
  br i1 %8977, label %8978, label %8980

; <label>:8978                                    ; preds = %8973
  %8979 = fcmp fast oeq float %8975, %8974
  br i1 %8979, label %9283, label %8981

; <label>:8980                                    ; preds = %8973
  br i1 %8944, label %9283, label %8981

; <label>:8981                                    ; preds = %8980, %8978
  %8982 = phi float [ %8910, %8980 ], [ %8974, %8978 ]
  %8983 = phi float [ 0.000000e+00, %8980 ], [ %8975, %8978 ]
  %8984 = icmp ne i32 %8932, 0
  %8985 = fmul fast float %8982, %8913
  %8986 = fadd fast float %8985, %8926
  %8987 = fmul fast float %8986, %8982
  %8988 = select i1 %8984, float 0.000000e+00, float %8987
  %8989 = fcmp fast oeq float %8913, 0.000000e+00
  %8990 = fdiv fast float %8931, %8913
  %8991 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8990)  ; FMax(a,b)
  %8992 = select i1 %8989, float %8982, float %8991
  %8993 = call float @dx.op.binary.f32(i32 36, float %8982, float %8992)  ; FMin(a,b)
  %8994 = fcmp fast ogt float %8913, 0.000000e+00
  %8995 = fcmp fast olt float %8931, 0.000000e+00
  br i1 %8994, label %8996, label %9053

; <label>:8996                                    ; preds = %8981
  %8997 = icmp eq i32 %8932, 0
  br i1 %8995, label %8998, label %9042

; <label>:8998                                    ; preds = %8996
  %8999 = select i1 %8997, float %8982, float 0.000000e+00
  %9000 = fsub fast float -0.000000e+00, %8999
  %9001 = call float @dx.op.unary.f32(i32 6, float %9000)  ; FAbs(value)
  %9002 = fmul fast float %8999, %8913
  %9003 = fadd fast float %9002, %8926
  %9004 = fmul fast float %9001, %9003
  %9005 = fsub fast float %8988, %9004
  %9006 = fsub fast float %8982, %9001
  %9007 = select i1 %8997, float %9006, float 0.000000e+00
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9011 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 0
  %9014 = extractvalue %dx.types.CBufRet.f32 %9012, 1
  %9015 = extractvalue %dx.types.CBufRet.f32 %9012, 2
  %9016 = extractvalue %dx.types.CBufRet.f32 %9012, 3
  %9017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9018 = extractvalue %dx.types.CBufRet.f32 %9017, 3
  %9019 = call float @dx.op.binary.f32(i32 36, float %9005, float %9018)  ; FMin(a,b)
  %9020 = fmul fast float %9016, %9007
  %9021 = call float @dx.op.unary.f32(i32 7, float %9020)  ; Saturate(value)
  %9022 = fsub fast float %9013, %9009
  %9023 = fsub fast float %9014, %9010
  %9024 = fsub fast float %9015, %9011
  %9025 = fmul fast float %9021, %9022
  %9026 = fmul fast float %9021, %9023
  %9027 = fmul fast float %9021, %9024
  %9028 = fadd fast float %9025, %9009
  %9029 = fadd fast float %9026, %9010
  %9030 = fadd fast float %9027, %9011
  %9031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9032 = extractvalue %dx.types.CBufRet.f32 %9031, 0
  %9033 = extractvalue %dx.types.CBufRet.f32 %9031, 1
  %9034 = fadd fast float %9033, %9032
  %9035 = call float @dx.op.unary.f32(i32 7, float %9034)  ; Saturate(value)
  %9036 = extractvalue %dx.types.CBufRet.f32 %9031, 2
  %9037 = extractvalue %dx.types.CBufRet.f32 %9031, 3
  %9038 = fadd fast float %9037, %9036
  %9039 = call float @dx.op.unary.f32(i32 7, float %9038)  ; Saturate(value)
  %9040 = fmul fast float %9035, %9019
  %9041 = fmul fast float %9040, %9039
  br label %9283

; <label>:9042                                    ; preds = %8996
  br i1 %8997, label %9043, label %9064

; <label>:9043                                    ; preds = %9042
  %9044 = call float @dx.op.binary.f32(i32 36, float %8993, float %8983)  ; FMin(a,b)
  %9045 = fsub fast float %8993, %9044
  %9046 = fsub fast float %9045, %8982
  %9047 = call float @dx.op.unary.f32(i32 6, float %9046)  ; FAbs(value)
  %9048 = fadd fast float %9045, %8982
  %9049 = fmul fast float %9048, %8913
  %9050 = fadd fast float %9049, %8926
  %9051 = fmul fast float %9050, %9047
  %9052 = fsub fast float %8988, %9051
  br label %9064

; <label>:9053                                    ; preds = %8981
  br i1 %8995, label %9054, label %9064

; <label>:9054                                    ; preds = %9053
  %9055 = call float @dx.op.binary.f32(i32 35, float %8983, float %8993)  ; FMax(a,b)
  %9056 = icmp eq i32 %8932, 0
  %9057 = select i1 %9056, float %8993, float 0.000000e+00
  %9058 = fsub fast float -0.000000e+00, %9057
  %9059 = call float @dx.op.unary.f32(i32 6, float %9058)  ; FAbs(value)
  %9060 = fmul fast float %9057, %8913
  %9061 = fadd fast float %9060, %8926
  %9062 = fmul fast float %9059, %9061
  %9063 = fsub fast float %8988, %9062
  br label %9064

; <label>:9064                                    ; preds = %9054, %9053, %9043, %9042
  %9065 = phi float [ %8983, %9042 ], [ %8983, %9043 ], [ %9055, %9054 ], [ %8983, %9053 ]
  %9066 = phi float [ 0.000000e+00, %9042 ], [ %9047, %9043 ], [ %9059, %9054 ], [ 0.000000e+00, %9053 ]
  %9067 = phi float [ %8988, %9042 ], [ %9052, %9043 ], [ %9063, %9054 ], [ %8988, %9053 ]
  %9068 = phi float [ %8993, %9042 ], [ %8993, %9043 ], [ %8982, %9054 ], [ %8982, %9053 ]
  %9069 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9069, align 4, !tbaa !122, !noalias !136
  %9070 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9070, align 4, !tbaa !122, !noalias !136
  %9071 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9071, align 4, !tbaa !122, !noalias !136
  %9072 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9072, align 4, !tbaa !122, !noalias !136
  %9073 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9073, align 4, !tbaa !122, !noalias !136
  %9074 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9074, align 4, !tbaa !122, !noalias !136
  %9075 = icmp sgt i32 %8934, 0
  br i1 %9075, label %9076, label %9137

; <label>:9076                                    ; preds = %9064
  br label %9077

; <label>:9077                                    ; preds = %9126, %9076
  %9078 = phi i32 [ %9127, %9126 ], [ 0, %9076 ]
  %9079 = phi i32 [ %9128, %9126 ], [ 0, %9076 ]
  %9080 = add nuw i32 %9079, 171
  %9081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9080)  ; CBufferLoadLegacy(handle,regIndex)
  %9082 = extractvalue %dx.types.CBufRet.f32 %9081, 0
  %9083 = extractvalue %dx.types.CBufRet.f32 %9081, 1
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9087 = fsub fast float %9082, %9085
  %9088 = fsub fast float %9083, %9086
  %9089 = extractvalue %dx.types.CBufRet.f32 %9081, 2
  %9090 = fsub fast float -0.000000e+00, %9087
  %9091 = fsub fast float -0.000000e+00, %9088
  %9092 = call float @dx.op.dot2.f32(i32 54, float %8911, float %8912, float %9090, float %9091)  ; Dot2(ax,ay,bx,by)
  %9093 = fmul fast float %9092, 2.000000e+00
  %9094 = call float @dx.op.dot2.f32(i32 54, float %9090, float %9091, float %9090, float %9091)  ; Dot2(ax,ay,bx,by)
  %9095 = fmul fast float %9089, %9089
  %9096 = fsub fast float %9094, %9095
  %9097 = fmul fast float %9093, %9093
  %9098 = fmul fast float %8954, %9096
  %9099 = fsub fast float %9097, %9098
  %9100 = fcmp fast ogt float %9099, 0.000000e+00
  br i1 %9100, label %9101, label %9116

; <label>:9101                                    ; preds = %9077
  %9102 = fcmp fast ogt float %9093, 0.000000e+00
  %9103 = call float @dx.op.unary.f32(i32 24, float %9099)  ; Sqrt(value)
  %9104 = fsub fast float -0.000000e+00, %9103
  %9105 = select i1 %9102, float %9103, float %9104
  %9106 = fadd fast float %9105, %9093
  %9107 = fmul float %9106, -5.000000e-01
  %9108 = fdiv fast float %9107, %8947
  %9109 = call float @dx.op.binary.f32(i32 35, float %9108, float 0.000000e+00)  ; FMax(a,b)
  %9110 = call float @dx.op.binary.f32(i32 36, float %8982, float %9109)  ; FMin(a,b)
  %9111 = fdiv fast float %9096, %9107
  %9112 = call float @dx.op.binary.f32(i32 35, float %9111, float 0.000000e+00)  ; FMax(a,b)
  %9113 = call float @dx.op.binary.f32(i32 36, float %8982, float %9112)  ; FMin(a,b)
  %9114 = call float @dx.op.binary.f32(i32 36, float %9110, float %9113)  ; FMin(a,b)
  %9115 = call float @dx.op.binary.f32(i32 35, float %9110, float %9113)  ; FMax(a,b)
  br label %9116

; <label>:9116                                    ; preds = %9101, %9077
  %9117 = phi float [ %9115, %9101 ], [ -1.000000e+00, %9077 ]
  %9118 = phi float [ %9114, %9101 ], [ -1.000000e+00, %9077 ]
  %9119 = phi i1 [ true, %9101 ], [ false, %9077 ]
  br i1 %9119, label %9120, label %9126

; <label>:9120                                    ; preds = %9116
  %9121 = call float @dx.op.binary.f32(i32 35, float %9065, float %9118)  ; FMax(a,b)
  %9122 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9079
  store float %9121, float* %9122, align 4, !tbaa !122, !noalias !136
  %9123 = call float @dx.op.binary.f32(i32 35, float %9065, float %9117)  ; FMax(a,b)
  %9124 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9079
  store float %9123, float* %9124, align 4, !tbaa !122, !noalias !136
  %9125 = add nsw i32 %9078, 1
  br label %9126

; <label>:9126                                    ; preds = %9120, %9116
  %9127 = phi i32 [ %9125, %9120 ], [ %9078, %9116 ]
  %9128 = add nuw nsw i32 %9079, 1
  %9129 = icmp eq i32 %9128, %8934
  br i1 %9129, label %9130, label %9077

; <label>:9130                                    ; preds = %9126
  %9131 = load float, float* %9071, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9132 = load float, float* %9070, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9133 = load float, float* %9069, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9134 = load float, float* %9074, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9135 = load float, float* %9073, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9136 = load float, float* %9072, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9137

; <label>:9137                                    ; preds = %9130, %9064
  %9138 = phi float [ -1.000000e+00, %9064 ], [ %9136, %9130 ]
  %9139 = phi float [ -1.000000e+00, %9064 ], [ %9135, %9130 ]
  %9140 = phi float [ -1.000000e+00, %9064 ], [ %9134, %9130 ]
  %9141 = phi float [ -1.000000e+00, %9064 ], [ %9133, %9130 ]
  %9142 = phi float [ -1.000000e+00, %9064 ], [ %9132, %9130 ]
  %9143 = phi float [ -1.000000e+00, %9064 ], [ %9131, %9130 ]
  %9144 = phi i32 [ 0, %9064 ], [ %9127, %9130 ]
  %9145 = call float @dx.op.binary.f32(i32 36, float %9142, float %9143)  ; FMin(a,b)
  %9146 = call float @dx.op.binary.f32(i32 36, float %9141, float %9145)  ; FMin(a,b)
  %9147 = call float @dx.op.binary.f32(i32 35, float %9141, float %9142)  ; FMax(a,b)
  %9148 = call float @dx.op.binary.f32(i32 36, float %9147, float %9143)  ; FMin(a,b)
  %9149 = call float @dx.op.binary.f32(i32 36, float %9141, float %9142)  ; FMin(a,b)
  %9150 = call float @dx.op.binary.f32(i32 35, float %9149, float %9148)  ; FMax(a,b)
  %9151 = call float @dx.op.binary.f32(i32 35, float %9142, float %9143)  ; FMax(a,b)
  %9152 = call float @dx.op.binary.f32(i32 35, float %9141, float %9151)  ; FMax(a,b)
  store float %9146, float* %9069, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9150, float* %9070, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9152, float* %9071, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9153 = call float @dx.op.binary.f32(i32 36, float %9139, float %9140)  ; FMin(a,b)
  %9154 = call float @dx.op.binary.f32(i32 36, float %9138, float %9153)  ; FMin(a,b)
  %9155 = call float @dx.op.binary.f32(i32 35, float %9138, float %9139)  ; FMax(a,b)
  %9156 = call float @dx.op.binary.f32(i32 36, float %9155, float %9140)  ; FMin(a,b)
  %9157 = call float @dx.op.binary.f32(i32 36, float %9138, float %9139)  ; FMin(a,b)
  %9158 = call float @dx.op.binary.f32(i32 35, float %9157, float %9156)  ; FMax(a,b)
  %9159 = call float @dx.op.binary.f32(i32 35, float %9139, float %9140)  ; FMax(a,b)
  %9160 = call float @dx.op.binary.f32(i32 35, float %9138, float %9159)  ; FMax(a,b)
  store float %9154, float* %9072, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9158, float* %9073, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9160, float* %9074, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9161 = sub nsw i32 3, %9144
  %9162 = icmp sgt i32 %9161, 2
  br i1 %9162, label %9163, label %9201

; <label>:9163                                    ; preds = %9137
  %9164 = icmp eq i32 %8932, 0
  %9165 = fsub fast float %8982, %9066
  %9166 = select i1 %9164, float %9165, float %9066
  %9167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9168 = extractvalue %dx.types.CBufRet.f32 %9167, 0
  %9169 = extractvalue %dx.types.CBufRet.f32 %9167, 1
  %9170 = extractvalue %dx.types.CBufRet.f32 %9167, 2
  %9171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9172 = extractvalue %dx.types.CBufRet.f32 %9171, 0
  %9173 = extractvalue %dx.types.CBufRet.f32 %9171, 1
  %9174 = extractvalue %dx.types.CBufRet.f32 %9171, 2
  %9175 = extractvalue %dx.types.CBufRet.f32 %9171, 3
  %9176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9177 = extractvalue %dx.types.CBufRet.f32 %9176, 3
  %9178 = call float @dx.op.binary.f32(i32 36, float %9067, float %9177)  ; FMin(a,b)
  %9179 = fmul fast float %9175, %9166
  %9180 = call float @dx.op.unary.f32(i32 7, float %9179)  ; Saturate(value)
  %9181 = fsub fast float %9172, %9168
  %9182 = fsub fast float %9173, %9169
  %9183 = fsub fast float %9174, %9170
  %9184 = fmul fast float %9180, %9181
  %9185 = fmul fast float %9180, %9182
  %9186 = fmul fast float %9180, %9183
  %9187 = fadd fast float %9184, %9168
  %9188 = fadd fast float %9185, %9169
  %9189 = fadd fast float %9186, %9170
  %9190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9191 = extractvalue %dx.types.CBufRet.f32 %9190, 0
  %9192 = extractvalue %dx.types.CBufRet.f32 %9190, 1
  %9193 = fadd fast float %9192, %9191
  %9194 = call float @dx.op.unary.f32(i32 7, float %9193)  ; Saturate(value)
  %9195 = extractvalue %dx.types.CBufRet.f32 %9190, 2
  %9196 = extractvalue %dx.types.CBufRet.f32 %9190, 3
  %9197 = fadd fast float %9196, %9195
  %9198 = call float @dx.op.unary.f32(i32 7, float %9197)  ; Saturate(value)
  %9199 = fmul fast float %9194, %9178
  %9200 = fmul fast float %9199, %9198
  br label %9283

; <label>:9201                                    ; preds = %9137
  %9202 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9161
  %9203 = load float, float* %9202, align 4, !tbaa !122, !noalias !136
  %9204 = fcmp fast olt float %9203, %9068
  %9205 = icmp sgt i32 %9144, 0
  %9206 = and i1 %9205, %9204
  br i1 %9206, label %9207, label %9244

; <label>:9207                                    ; preds = %9201
  br label %9208

; <label>:9208                                    ; preds = %9237, %9207
  %9209 = phi float [ %9238, %9237 ], [ %9066, %9207 ]
  %9210 = phi float [ %9239, %9237 ], [ %9067, %9207 ]
  %9211 = phi float [ %9219, %9237 ], [ %9203, %9207 ]
  %9212 = phi i32 [ %9216, %9237 ], [ %9161, %9207 ]
  %9213 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9212
  %9214 = load float, float* %9213, align 4, !tbaa !122, !noalias !136
  %9215 = icmp slt i32 %9212, 2
  %9216 = add nsw i32 %9212, 1
  %9217 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9216
  %9218 = load float, float* %9217, align 4, !tbaa !122, !noalias !136
  %9219 = select i1 %9215, float %9218, float %8982
  %9220 = call float @dx.op.binary.f32(i32 36, float %9219, float %9214)  ; FMin(a,b)
  %9221 = call float @dx.op.binary.f32(i32 36, float %9068, float %9220)  ; FMin(a,b)
  %9222 = icmp eq i32 %8932, 0
  %9223 = fadd fast float %9221, %9211
  %9224 = fmul fast float %9223, %8913
  %9225 = fadd fast float %9224, %8926
  br i1 %9222, label %9231, label %9226

; <label>:9226                                    ; preds = %9208
  %9227 = fsub fast float %9221, %9211
  %9228 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9227)  ; FMax(a,b)
  %9229 = fmul fast float %9228, %9225
  %9230 = fadd fast float %9229, %9210
  br label %9237

; <label>:9231                                    ; preds = %9208
  %9232 = fsub fast float %9211, %9221
  %9233 = call float @dx.op.unary.f32(i32 6, float %9232)  ; FAbs(value)
  %9234 = fadd fast float %9233, %9209
  %9235 = fmul fast float %9233, %9225
  %9236 = fsub fast float %9210, %9235
  br label %9237

; <label>:9237                                    ; preds = %9231, %9226
  %9238 = phi float [ %9228, %9226 ], [ %9234, %9231 ]
  %9239 = phi float [ %9230, %9226 ], [ %9236, %9231 ]
  %9240 = fcmp fast olt float %9219, %9068
  %9241 = icmp slt i32 %9216, 3
  %9242 = and i1 %9241, %9240
  br i1 %9242, label %9208, label %9243

; <label>:9243                                    ; preds = %9237
  br label %9244

; <label>:9244                                    ; preds = %9243, %9201
  %9245 = phi float [ %9066, %9201 ], [ %9238, %9243 ]
  %9246 = phi float [ %9067, %9201 ], [ %9239, %9243 ]
  %9247 = fsub fast float %8982, %9245
  %9248 = select i1 %8984, float %9245, float %9247
  %9249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9250 = extractvalue %dx.types.CBufRet.f32 %9249, 0
  %9251 = extractvalue %dx.types.CBufRet.f32 %9249, 1
  %9252 = extractvalue %dx.types.CBufRet.f32 %9249, 2
  %9253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9254 = extractvalue %dx.types.CBufRet.f32 %9253, 0
  %9255 = extractvalue %dx.types.CBufRet.f32 %9253, 1
  %9256 = extractvalue %dx.types.CBufRet.f32 %9253, 2
  %9257 = extractvalue %dx.types.CBufRet.f32 %9253, 3
  %9258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9259 = extractvalue %dx.types.CBufRet.f32 %9258, 3
  %9260 = call float @dx.op.binary.f32(i32 36, float %9246, float %9259)  ; FMin(a,b)
  %9261 = fmul fast float %9257, %9248
  %9262 = call float @dx.op.unary.f32(i32 7, float %9261)  ; Saturate(value)
  %9263 = fsub fast float %9254, %9250
  %9264 = fsub fast float %9255, %9251
  %9265 = fsub fast float %9256, %9252
  %9266 = fmul fast float %9262, %9263
  %9267 = fmul fast float %9262, %9264
  %9268 = fmul fast float %9262, %9265
  %9269 = fadd fast float %9266, %9250
  %9270 = fadd fast float %9267, %9251
  %9271 = fadd fast float %9268, %9252
  %9272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9272, 0
  %9274 = extractvalue %dx.types.CBufRet.f32 %9272, 1
  %9275 = fadd fast float %9274, %9273
  %9276 = call float @dx.op.unary.f32(i32 7, float %9275)  ; Saturate(value)
  %9277 = extractvalue %dx.types.CBufRet.f32 %9272, 2
  %9278 = extractvalue %dx.types.CBufRet.f32 %9272, 3
  %9279 = fadd fast float %9278, %9277
  %9280 = call float @dx.op.unary.f32(i32 7, float %9279)  ; Saturate(value)
  %9281 = fmul fast float %9276, %9260
  %9282 = fmul fast float %9281, %9280
  br label %9283

; <label>:9283                                    ; preds = %9244, %9163, %8998, %8980, %8978
  %9284 = phi float [ %9007, %8998 ], [ %9166, %9163 ], [ %9248, %9244 ], [ 0.000000e+00, %8978 ], [ 0.000000e+00, %8980 ]
  %9285 = phi float [ %9041, %8998 ], [ %9200, %9163 ], [ %9282, %9244 ], [ 0.000000e+00, %8978 ], [ 0.000000e+00, %8980 ]
  %9286 = phi float [ %9028, %8998 ], [ %9187, %9163 ], [ %9269, %9244 ], [ 0.000000e+00, %8978 ], [ 0.000000e+00, %8980 ]
  %9287 = phi float [ %9029, %8998 ], [ %9188, %9163 ], [ %9270, %9244 ], [ 0.000000e+00, %8978 ], [ 0.000000e+00, %8980 ]
  %9288 = phi float [ %9030, %8998 ], [ %9189, %9163 ], [ %9271, %9244 ], [ 0.000000e+00, %8978 ], [ 0.000000e+00, %8980 ]
  %9289 = fmul fast float %8921, %9285
  %9290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9291 = extractvalue %dx.types.CBufRet.f32 %9290, 2
  %9292 = fsub fast float %8928, %9291
  %9293 = fcmp fast olt float %9289, -2.000000e+01
  %9294 = call float @dx.op.unary.f32(i32 21, float %9289)  ; Exp(value)
  %9295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9296 = extractvalue %dx.types.CBufRet.f32 %9295, 2
  %9297 = extractvalue %dx.types.CBufRet.f32 %9295, 3
  %9298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9299 = extractvalue %dx.types.CBufRet.f32 %9298, 2
  %9300 = fmul fast float %9297, %9292
  %9301 = call float @dx.op.unary.f32(i32 7, float %9300)  ; Saturate(value)
  %9302 = fsub fast float 1.000000e+00, %9301
  %9303 = fmul fast float %8913, 5.000000e-01
  %9304 = fadd fast float %9303, 5.000000e-01
  %9305 = call float @dx.op.unary.f32(i32 7, float %9304)  ; Saturate(value)
  %9306 = fsub fast float 1.000000e+00, %9305
  %9307 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9302)  ; FMax(a,b)
  %9308 = fdiv fast float %9306, %9307
  %9309 = fsub fast float %9292, %8870
  %9310 = call float @dx.op.unary.f32(i32 6, float %9309)  ; FAbs(value)
  %9311 = fmul fast float %9310, %9296
  %9312 = call float @dx.op.unary.f32(i32 7, float %9308)  ; Saturate(value)
  %9313 = fsub fast float 1.000000e+00, %9311
  %9314 = fmul fast float %9313, %9312
  %9315 = fadd fast float %9314, %9311
  %9316 = fmul fast float %9299, %9292
  %9317 = call float @dx.op.unary.f32(i32 7, float %9316)  ; Saturate(value)
  %9318 = fsub fast float 1.000000e+00, %9315
  %9319 = fmul fast float %9318, %9317
  %9320 = fadd fast float %9319, %9315
  %9321 = call float @dx.op.unary.f32(i32 7, float %9320)  ; Saturate(value)
  %9322 = fadd fast float %9294, -1.000000e+00
  %9323 = select i1 %9293, float -1.000000e+00, float %9322
  %9324 = fmul fast float %9321, %9323
  %9325 = fadd fast float %9324, 1.000000e+00
  %9326 = fsub fast float -0.000000e+00, %9324
  %9327 = fmul fast float %9286, %9326
  %9328 = fmul fast float %9287, %9326
  %9329 = fmul fast float %9288, %9326
  br label %9330

; <label>:9330                                    ; preds = %9283, %8879
  %9331 = phi float [ %9284, %9283 ], [ 0.000000e+00, %8879 ]
  %9332 = phi float [ %9325, %9283 ], [ 1.000000e+00, %8879 ]
  %9333 = phi float [ %9327, %9283 ], [ 0.000000e+00, %8879 ]
  %9334 = phi float [ %9328, %9283 ], [ 0.000000e+00, %8879 ]
  %9335 = phi float [ %9329, %9283 ], [ 0.000000e+00, %8879 ]
  %9336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9337 = extractvalue %dx.types.CBufRet.f32 %9336, 1
  %9338 = fsub fast float 1.000000e+00, %9332
  %9339 = fmul fast float %9338, %8914
  %9340 = fmul fast float %9339, %9337
  %9341 = fsub fast float %8914, %9340
  br i1 %8907, label %9342, label %9371, !dx.controlflow.hints !172

; <label>:9342                                    ; preds = %9330
  %9343 = fmul fast float %8915, %8904
  %9344 = fadd fast float %9343, %8905
  %9345 = call float @dx.op.unary.f32(i32 7, float %9344)  ; Saturate(value)
  %9346 = fmul fast float %8886, %9341
  %9347 = fsub fast float -0.000000e+00, %9346
  %9348 = fmul fast float %8887, %9341
  %9349 = fsub fast float -0.000000e+00, %9348
  %9350 = call float @dx.op.unary.f32(i32 21, float %9347)  ; Exp(value)
  %9351 = call float @dx.op.unary.f32(i32 21, float %9349)  ; Exp(value)
  %9352 = call float @dx.op.binary.f32(i32 35, float %8894, float %9350)  ; FMax(a,b)
  %9353 = call float @dx.op.binary.f32(i32 35, float %8894, float %9351)  ; FMax(a,b)
  %9354 = fsub fast float %9353, %9352
  %9355 = fmul fast float %9354, %9345
  %9356 = fadd fast float %9355, %9352
  %9357 = call float @dx.op.unary.f32(i32 7, float %9356)  ; Saturate(value)
  %9358 = fsub fast float %8891, %8896
  %9359 = fsub fast float %8892, %8897
  %9360 = fsub fast float %8893, %8898
  %9361 = fmul fast float %9345, %9358
  %9362 = fmul fast float %9345, %9359
  %9363 = fmul fast float %9345, %9360
  %9364 = fadd fast float %9361, %8896
  %9365 = fadd fast float %9362, %8897
  %9366 = fadd fast float %9363, %8898
  %9367 = fsub fast float 1.000000e+00, %9357
  %9368 = fmul fast float %9367, %9364
  %9369 = fmul fast float %9367, %9365
  %9370 = fmul fast float %9367, %9366
  br label %9430

; <label>:9371                                    ; preds = %9330
  %9372 = fmul fast float %9341, %8903
  %9373 = call float @dx.op.unary.f32(i32 7, float %9372)  ; Saturate(value)
  %9374 = fsub fast float 2.000000e+00, %9373
  %9375 = fmul fast float %9373, 9.921875e-01
  %9376 = fmul fast float %9375, %9374
  %9377 = fadd fast float %9376, 3.906250e-03
  %9378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9377, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9379 = extractvalue %dx.types.ResRet.f32 %9378, 0
  %9380 = fsub fast float %9373, %9379
  %9381 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9380)  ; FMax(a,b)
  %9382 = fmul fast float %8889, %8870
  %9383 = call float @dx.op.unary.f32(i32 6, float %9382)  ; FAbs(value)
  %9384 = fcmp fast ogt float %9383, 0x3EB0C6F7A0000000
  br i1 %9384, label %9385, label %9391, !dx.controlflow.hints !173

; <label>:9385                                    ; preds = %9371
  %9386 = fmul fast float %9382, 0xBFF7154760000000
  %9387 = call float @dx.op.unary.f32(i32 21, float %9386)  ; Exp(value)
  %9388 = fsub fast float 1.000000e+00, %9387
  %9389 = fdiv fast float %9388, %9382
  %9390 = fmul fast float %9389, %8899
  br label %9391

; <label>:9391                                    ; preds = %9385, %9371
  %9392 = phi float [ %9390, %9385 ], [ %8899, %9371 ]
  %9393 = fadd fast float %9392, %8901
  %9394 = fmul fast float %9393, %9381
  %9395 = fmul fast float %8886, %9394
  %9396 = fsub fast float -0.000000e+00, %9395
  %9397 = fmul fast float %8887, %9394
  %9398 = fsub fast float -0.000000e+00, %9397
  %9399 = fmul fast float %8888, %9394
  %9400 = fsub fast float -0.000000e+00, %9399
  %9401 = call float @dx.op.unary.f32(i32 21, float %9396)  ; Exp(value)
  %9402 = call float @dx.op.unary.f32(i32 21, float %9398)  ; Exp(value)
  %9403 = call float @dx.op.unary.f32(i32 21, float %9400)  ; Exp(value)
  %9404 = fmul fast float %8915, %8915
  %9405 = fadd fast float %9404, 1.000000e+00
  %9406 = fmul fast float %9405, 0x3FAE8EC8A0000000
  %9407 = fmul fast float %9406, %8896
  %9408 = fmul fast float %9406, %8897
  %9409 = fmul fast float %9406, %8898
  %9410 = fmul fast float %8915, %8894
  %9411 = fsub fast float 1.000000e+00, %9410
  %9412 = fmul fast float %8894, %8894
  %9413 = fsub fast float 1.000000e+00, %9412
  %9414 = fmul fast float %9413, 0x3FB45F3060000000
  %9415 = fmul fast float %9411, %9411
  %9416 = fdiv fast float 1.000000e+00, %9415
  %9417 = fmul fast float %9414, %9416
  %9418 = fmul fast float %9417, %8891
  %9419 = fmul fast float %9417, %8892
  %9420 = fmul fast float %9417, %8893
  %9421 = fadd fast float %9418, %9407
  %9422 = fadd fast float %9419, %9408
  %9423 = fadd fast float %9420, %9409
  %9424 = fsub fast float 1.000000e+00, %9401
  %9425 = fsub fast float 1.000000e+00, %9402
  %9426 = fsub fast float 1.000000e+00, %9403
  %9427 = fmul fast float %9421, %9424
  %9428 = fmul fast float %9422, %9425
  %9429 = fmul fast float %9423, %9426
  br label %9430

; <label>:9430                                    ; preds = %9391, %9342
  %9431 = phi float [ %9368, %9342 ], [ %9427, %9391 ]
  %9432 = phi float [ %9369, %9342 ], [ %9428, %9391 ]
  %9433 = phi float [ %9370, %9342 ], [ %9429, %9391 ]
  %9434 = phi float [ %9357, %9342 ], [ %9401, %9391 ]
  %9435 = phi float [ %9357, %9342 ], [ %9402, %9391 ]
  %9436 = phi float [ %9357, %9342 ], [ %9403, %9391 ]
  br i1 %8923, label %9437, label %9635, !dx.controlflow.hints !174

; <label>:9437                                    ; preds = %9430
  %9438 = extractvalue %dx.types.CBufRet.f32 %9336, 0
  %9439 = fmul fast float %9438, %9338
  %9440 = fsub fast float %9333, %9431
  %9441 = fsub fast float %9334, %9432
  %9442 = fsub fast float %9335, %9433
  %9443 = fmul fast float %9439, %9440
  %9444 = fmul fast float %9439, %9441
  %9445 = fmul fast float %9439, %9442
  %9446 = fadd fast float %9443, %9431
  %9447 = fadd fast float %9444, %9432
  %9448 = fadd fast float %9445, %9433
  %9449 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9434)  ; FMax(a,b)
  %9450 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9435)  ; FMax(a,b)
  %9451 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9436)  ; FMax(a,b)
  %9452 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9332)  ; FMax(a,b)
  %9453 = call float @dx.op.binary.f32(i32 35, float %9331, float %9341)  ; FMax(a,b)
  %9454 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9453)  ; FMax(a,b)
  %9455 = fdiv fast float %9331, %9454
  %9456 = call float @dx.op.unary.f32(i32 7, float %9455)  ; Saturate(value)
  %9457 = fdiv fast float %9341, %9454
  %9458 = call float @dx.op.unary.f32(i32 7, float %9457)  ; Saturate(value)
  %9459 = fcmp fast une float %9452, 1.000000e+00
  br i1 %9459, label %9460, label %9473, !dx.controlflow.hints !175

; <label>:9460                                    ; preds = %9437
  %9461 = call float @dx.op.unary.f32(i32 23, float %9452)  ; Log(value)
  %9462 = fmul fast float %9461, 0x3FE62E4300000000
  %9463 = fmul fast float %9333, %9462
  %9464 = fsub fast float -0.000000e+00, %9463
  %9465 = fmul fast float %9334, %9462
  %9466 = fsub fast float -0.000000e+00, %9465
  %9467 = fmul fast float %9335, %9462
  %9468 = fsub fast float -0.000000e+00, %9467
  %9469 = fsub fast float 1.000000e+00, %9452
  %9470 = fdiv fast float %9464, %9469
  %9471 = fdiv fast float %9466, %9469
  %9472 = fdiv fast float %9468, %9469
  br label %9473

; <label>:9473                                    ; preds = %9460, %9437
  %9474 = phi float [ %9470, %9460 ], [ %9333, %9437 ]
  %9475 = phi float [ %9471, %9460 ], [ %9334, %9437 ]
  %9476 = phi float [ %9472, %9460 ], [ %9335, %9437 ]
  %9477 = phi float [ %9462, %9460 ], [ 0.000000e+00, %9437 ]
  %9478 = fcmp fast une float %9449, 1.000000e+00
  br i1 %9478, label %9479, label %9486, !dx.controlflow.hints !176

; <label>:9479                                    ; preds = %9473
  %9480 = call float @dx.op.unary.f32(i32 23, float %9449)  ; Log(value)
  %9481 = fmul fast float %9480, 0x3FE62E4300000000
  %9482 = fmul fast float %9446, %9481
  %9483 = fsub fast float -0.000000e+00, %9482
  %9484 = fsub fast float 1.000000e+00, %9449
  %9485 = fdiv fast float %9483, %9484
  br label %9486

; <label>:9486                                    ; preds = %9479, %9473
  %9487 = phi float [ %9485, %9479 ], [ %9446, %9473 ]
  %9488 = phi float [ %9481, %9479 ], [ 0.000000e+00, %9473 ]
  %9489 = fcmp fast une float %9450, 1.000000e+00
  br i1 %9489, label %9490, label %9497, !dx.controlflow.hints !176

; <label>:9490                                    ; preds = %9486
  %9491 = call float @dx.op.unary.f32(i32 23, float %9450)  ; Log(value)
  %9492 = fmul fast float %9491, 0x3FE62E4300000000
  %9493 = fmul fast float %9447, %9492
  %9494 = fsub fast float -0.000000e+00, %9493
  %9495 = fsub fast float 1.000000e+00, %9450
  %9496 = fdiv fast float %9494, %9495
  br label %9497

; <label>:9497                                    ; preds = %9490, %9486
  %9498 = phi float [ %9496, %9490 ], [ %9447, %9486 ]
  %9499 = phi float [ %9492, %9490 ], [ 0.000000e+00, %9486 ]
  %9500 = fcmp fast une float %9451, 1.000000e+00
  br i1 %9500, label %9501, label %9508, !dx.controlflow.hints !176

; <label>:9501                                    ; preds = %9497
  %9502 = call float @dx.op.unary.f32(i32 23, float %9451)  ; Log(value)
  %9503 = fmul fast float %9502, 0x3FE62E4300000000
  %9504 = fmul fast float %9448, %9503
  %9505 = fsub fast float -0.000000e+00, %9504
  %9506 = fsub fast float 1.000000e+00, %9451
  %9507 = fdiv fast float %9505, %9506
  br label %9508

; <label>:9508                                    ; preds = %9501, %9497
  %9509 = phi float [ %9507, %9501 ], [ %9448, %9497 ]
  %9510 = phi float [ %9503, %9501 ], [ 0.000000e+00, %9497 ]
  %9511 = fmul fast float %9474, %9458
  %9512 = fmul fast float %9475, %9458
  %9513 = fmul fast float %9476, %9458
  %9514 = fmul fast float %9477, %9458
  %9515 = fmul fast float %9487, %9456
  %9516 = fmul fast float %9498, %9456
  %9517 = fmul fast float %9509, %9456
  %9518 = fmul fast float %9488, %9456
  %9519 = fmul fast float %9499, %9456
  %9520 = fmul fast float %9510, %9456
  %9521 = fadd fast float %9515, %9511
  %9522 = fadd fast float %9516, %9512
  %9523 = fadd fast float %9517, %9513
  %9524 = fadd fast float %9518, %9514
  %9525 = fadd fast float %9519, %9514
  %9526 = fadd fast float %9520, %9514
  %9527 = fcmp fast une float %9524, 0.000000e+00
  br i1 %9527, label %9528, label %9535, !dx.controlflow.hints !177

; <label>:9528                                    ; preds = %9508
  %9529 = fmul fast float %9524, 0x3FF7154760000000
  %9530 = call float @dx.op.unary.f32(i32 21, float %9529)  ; Exp(value)
  %9531 = fsub fast float 1.000000e+00, %9530
  %9532 = fmul fast float %9521, %9531
  %9533 = fsub fast float -0.000000e+00, %9532
  %9534 = fdiv fast float %9533, %9524
  br label %9535

; <label>:9535                                    ; preds = %9528, %9508
  %9536 = phi float [ %9530, %9528 ], [ 1.000000e+00, %9508 ]
  %9537 = phi float [ %9534, %9528 ], [ %9521, %9508 ]
  %9538 = fcmp fast une float %9525, 0.000000e+00
  br i1 %9538, label %9539, label %9546, !dx.controlflow.hints !177

; <label>:9539                                    ; preds = %9535
  %9540 = fmul fast float %9525, 0x3FF7154760000000
  %9541 = call float @dx.op.unary.f32(i32 21, float %9540)  ; Exp(value)
  %9542 = fsub fast float 1.000000e+00, %9541
  %9543 = fmul fast float %9522, %9542
  %9544 = fsub fast float -0.000000e+00, %9543
  %9545 = fdiv fast float %9544, %9525
  br label %9546

; <label>:9546                                    ; preds = %9539, %9535
  %9547 = phi float [ %9541, %9539 ], [ 1.000000e+00, %9535 ]
  %9548 = phi float [ %9545, %9539 ], [ %9522, %9535 ]
  %9549 = fcmp fast une float %9526, 0.000000e+00
  br i1 %9549, label %9550, label %9557, !dx.controlflow.hints !177

; <label>:9550                                    ; preds = %9546
  %9551 = fmul fast float %9526, 0x3FF7154760000000
  %9552 = call float @dx.op.unary.f32(i32 21, float %9551)  ; Exp(value)
  %9553 = fsub fast float 1.000000e+00, %9552
  %9554 = fmul fast float %9523, %9553
  %9555 = fsub fast float -0.000000e+00, %9554
  %9556 = fdiv fast float %9555, %9526
  br label %9557

; <label>:9557                                    ; preds = %9550, %9546
  %9558 = phi float [ %9552, %9550 ], [ 1.000000e+00, %9546 ]
  %9559 = phi float [ %9556, %9550 ], [ %9523, %9546 ]
  %9560 = fcmp fast ogt float %9456, %9458
  br i1 %9560, label %9561, label %9581

; <label>:9561                                    ; preds = %9557
  %9562 = fsub fast float 1.000000e+00, %9458
  %9563 = fmul fast float %9474, %9562
  %9564 = fmul fast float %9475, %9562
  %9565 = fmul fast float %9476, %9562
  %9566 = fmul fast float %9477, %9562
  %9567 = fcmp fast une float %9566, 0.000000e+00
  br i1 %9567, label %9568, label %9619, !dx.controlflow.hints !178

; <label>:9568                                    ; preds = %9561
  %9569 = fmul fast float %9566, 0x3FF7154760000000
  %9570 = call float @dx.op.unary.f32(i32 21, float %9569)  ; Exp(value)
  %9571 = fsub fast float 1.000000e+00, %9570
  %9572 = fmul fast float %9563, %9571
  %9573 = fsub fast float -0.000000e+00, %9572
  %9574 = fmul fast float %9564, %9571
  %9575 = fsub fast float -0.000000e+00, %9574
  %9576 = fmul fast float %9565, %9571
  %9577 = fsub fast float -0.000000e+00, %9576
  %9578 = fdiv fast float %9573, %9566
  %9579 = fdiv fast float %9575, %9566
  %9580 = fdiv fast float %9577, %9566
  br label %9619

; <label>:9581                                    ; preds = %9557
  %9582 = fsub fast float 1.000000e+00, %9456
  %9583 = fmul fast float %9487, %9582
  %9584 = fmul fast float %9498, %9582
  %9585 = fmul fast float %9509, %9582
  %9586 = fmul fast float %9488, %9582
  %9587 = fmul fast float %9499, %9582
  %9588 = fmul fast float %9510, %9582
  %9589 = fcmp fast une float %9586, 0.000000e+00
  br i1 %9589, label %9590, label %9597, !dx.controlflow.hints !177

; <label>:9590                                    ; preds = %9581
  %9591 = fmul fast float %9586, 0x3FF7154760000000
  %9592 = call float @dx.op.unary.f32(i32 21, float %9591)  ; Exp(value)
  %9593 = fsub fast float 1.000000e+00, %9592
  %9594 = fmul fast float %9583, %9593
  %9595 = fsub fast float -0.000000e+00, %9594
  %9596 = fdiv fast float %9595, %9586
  br label %9597

; <label>:9597                                    ; preds = %9590, %9581
  %9598 = phi float [ %9596, %9590 ], [ %9583, %9581 ]
  %9599 = phi float [ %9592, %9590 ], [ 1.000000e+00, %9581 ]
  %9600 = fcmp fast une float %9587, 0.000000e+00
  br i1 %9600, label %9601, label %9608, !dx.controlflow.hints !177

; <label>:9601                                    ; preds = %9597
  %9602 = fmul fast float %9587, 0x3FF7154760000000
  %9603 = call float @dx.op.unary.f32(i32 21, float %9602)  ; Exp(value)
  %9604 = fsub fast float 1.000000e+00, %9603
  %9605 = fmul fast float %9584, %9604
  %9606 = fsub fast float -0.000000e+00, %9605
  %9607 = fdiv fast float %9606, %9587
  br label %9608

; <label>:9608                                    ; preds = %9601, %9597
  %9609 = phi float [ %9607, %9601 ], [ %9584, %9597 ]
  %9610 = phi float [ %9603, %9601 ], [ 1.000000e+00, %9597 ]
  %9611 = fcmp fast une float %9588, 0.000000e+00
  br i1 %9611, label %9612, label %9619, !dx.controlflow.hints !177

; <label>:9612                                    ; preds = %9608
  %9613 = fmul fast float %9588, 0x3FF7154760000000
  %9614 = call float @dx.op.unary.f32(i32 21, float %9613)  ; Exp(value)
  %9615 = fsub fast float 1.000000e+00, %9614
  %9616 = fmul fast float %9585, %9615
  %9617 = fsub fast float -0.000000e+00, %9616
  %9618 = fdiv fast float %9617, %9588
  br label %9619

; <label>:9619                                    ; preds = %9612, %9608, %9568, %9561
  %9620 = phi float [ %9618, %9612 ], [ %9580, %9568 ], [ %9565, %9561 ], [ %9585, %9608 ]
  %9621 = phi float [ %9609, %9612 ], [ %9579, %9568 ], [ %9564, %9561 ], [ %9609, %9608 ]
  %9622 = phi float [ %9598, %9612 ], [ %9578, %9568 ], [ %9563, %9561 ], [ %9598, %9608 ]
  %9623 = phi float [ %9614, %9612 ], [ %9570, %9568 ], [ 1.000000e+00, %9561 ], [ 1.000000e+00, %9608 ]
  %9624 = phi float [ %9610, %9612 ], [ %9570, %9568 ], [ 1.000000e+00, %9561 ], [ %9610, %9608 ]
  %9625 = phi float [ %9599, %9612 ], [ %9570, %9568 ], [ 1.000000e+00, %9561 ], [ %9599, %9608 ]
  %9626 = fmul fast float %9625, %9537
  %9627 = fmul fast float %9624, %9548
  %9628 = fmul fast float %9623, %9559
  %9629 = fadd fast float %9626, %9622
  %9630 = fadd fast float %9627, %9621
  %9631 = fadd fast float %9628, %9620
  %9632 = fmul fast float %9625, %9536
  %9633 = fmul fast float %9624, %9547
  %9634 = fmul fast float %9623, %9558
  br label %9635

; <label>:9635                                    ; preds = %9619, %9430
  %9636 = phi float [ %9634, %9619 ], [ %9436, %9430 ]
  %9637 = phi float [ %9633, %9619 ], [ %9435, %9430 ]
  %9638 = phi float [ %9632, %9619 ], [ %9434, %9430 ]
  %9639 = phi float [ %9631, %9619 ], [ %9433, %9430 ]
  %9640 = phi float [ %9630, %9619 ], [ %9432, %9430 ]
  %9641 = phi float [ %9629, %9619 ], [ %9431, %9430 ]
  %9642 = fmul fast float %9641, %8595
  %9643 = fmul fast float %9640, %8596
  %9644 = fmul fast float %9639, %8597
  %9645 = fmul fast float %9638, %8878
  %9646 = call float @dx.op.dot3.f32(i32 55, float %9638, float %9637, float %9636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9647 = call float @dx.op.dot3.f32(i32 55, float %9642, float %9643, float %9644, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9648 = select i1 %258, float %9646, float %9638
  %9649 = select i1 %258, float %9646, float %9637
  %9650 = select i1 %258, float 1.000000e+00, float %9636
  %9651 = select i1 %258, float %9647, float %9642
  %9652 = select i1 %258, float 0.000000e+00, float %9643
  %9653 = select i1 %258, float 0.000000e+00, float %9644
  %9654 = fmul fast float %9648, %8872
  %9655 = fmul fast float %9649, %8873
  %9656 = fmul fast float %9650, %8874
  %9657 = fadd fast float %9654, %9651
  %9658 = fadd fast float %9655, %9652
  %9659 = fadd fast float %9653, %9656
  %9660 = fmul fast float %9648, %8875
  %9661 = fmul fast float %9649, %8876
  %9662 = fmul fast float %9650, %8877
  %9663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9664 = extractvalue %dx.types.CBufRet.i32 %9663, 0
  %9665 = icmp eq i32 %9664, 0
  br i1 %9665, label %10033, label %9666, !dx.controlflow.hints !179

; <label>:9666                                    ; preds = %9635
  %9667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9668 = extractvalue %dx.types.CBufRet.f32 %9667, 2
  %9669 = extractvalue %dx.types.CBufRet.f32 %9667, 3
  %9670 = fmul fast float %9668, %109
  %9671 = fmul fast float %9669, %110
  %9672 = fmul fast float %9670, 2.000000e+00
  %9673 = fmul fast float %9671, 2.000000e+00
  %9674 = fsub fast float 1.000000e+00, %9672
  %9675 = fsub fast float 1.000000e+00, %9673
  %9676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9677 = extractvalue %dx.types.CBufRet.f32 %9676, 0
  %9678 = extractvalue %dx.types.CBufRet.f32 %9676, 1
  %9679 = extractvalue %dx.types.CBufRet.f32 %9676, 2
  %9680 = fmul fast float %9674, %9677
  %9681 = fmul fast float %9674, %9678
  %9682 = fmul fast float %9674, %9679
  %9683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9684 = extractvalue %dx.types.CBufRet.f32 %9683, 0
  %9685 = extractvalue %dx.types.CBufRet.f32 %9683, 1
  %9686 = extractvalue %dx.types.CBufRet.f32 %9683, 2
  %9687 = fmul fast float %9675, %9684
  %9688 = fmul fast float %9675, %9685
  %9689 = fmul fast float %9675, %9686
  %9690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9691 = extractvalue %dx.types.CBufRet.f32 %9690, 0
  %9692 = extractvalue %dx.types.CBufRet.f32 %9690, 1
  %9693 = extractvalue %dx.types.CBufRet.f32 %9690, 2
  %9694 = fadd fast float %9687, %9691
  %9695 = fadd fast float %9694, %9680
  %9696 = fadd fast float %9688, %9692
  %9697 = fadd fast float %9696, %9681
  %9698 = fadd fast float %9689, %9693
  %9699 = fadd fast float %9698, %9682
  %9700 = fmul fast float %9695, %8871
  %9701 = fmul fast float %9697, %8871
  %9702 = fmul fast float %9699, %8871
  %9703 = fmul fast float %9700, %9700
  %9704 = fmul fast float %9701, %9701
  %9705 = fadd fast float %9703, %9704
  %9706 = fmul fast float %9702, %9702
  %9707 = fadd fast float %9705, %9706
  %9708 = call float @dx.op.unary.f32(i32 24, float %9707)  ; Sqrt(value)
  %9709 = extractvalue %dx.types.CBufRet.f32 %8598, 0
  %9710 = fsub fast float %9708, %9709
  %9711 = extractvalue %dx.types.CBufRet.f32 %8598, 2
  %9712 = fmul fast float %9710, %9711
  %9713 = call float @dx.op.unary.f32(i32 7, float %9712)  ; Saturate(value)
  %9714 = fadd fast float %9713, -5.000000e-01
  %9715 = fmul fast float %9714, 2.000000e+00
  %9716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.f32 %9716, 2
  %9718 = call float @dx.op.binary.f32(i32 36, float %9717, float %9715)  ; FMin(a,b)
  %9719 = fsub fast float -0.000000e+00, %9717
  %9720 = fcmp fast ogt float %9718, %9719
  br i1 %9720, label %9721, label %10033, !dx.controlflow.hints !180

; <label>:9721                                    ; preds = %9666
  %9722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9723 = extractvalue %dx.types.CBufRet.f32 %9722, 3
  %9724 = fcmp fast ogt float %9723, 0.000000e+00
  br i1 %9724, label %9725, label %9800, !dx.controlflow.hints !181

; <label>:9725                                    ; preds = %9721
  %9726 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9727 = extractvalue %dx.types.Dimensions %9726, 0
  %9728 = sitofp i32 %9727 to float
  %9729 = extractvalue %dx.types.Dimensions %9726, 1
  %9730 = sitofp i32 %9729 to float
  %9731 = fmul fast float %9670, %9728
  %9732 = fmul fast float %9671, %9730
  %9733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9734 = extractvalue %dx.types.CBufRet.f32 %9733, 1
  %9735 = fsub fast float -0.000000e+00, %9734
  %9736 = fptoui float %9735 to i32
  %9737 = fptoui float %9731 to i32
  %9738 = fptoui float %9732 to i32
  %9739 = and i32 %9736, 31
  %9740 = lshr i32 %9737, %9739
  %9741 = lshr i32 %9738, %9739
  %9742 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9736, i32 %9740, i32 %9741, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9743 = extractvalue %dx.types.ResRet.f32 %9742, 0
  %9744 = fcmp fast olt float %9743, -1.000000e+00
  %9745 = fcmp fast ogt float %9743, -1.000000e+00
  %9746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9747 = extractvalue %dx.types.CBufRet.f32 %9746, 1
  %9748 = select i1 %9745, float %9747, float 1.000000e+00
  %9749 = fadd fast float %9743, 1.000000e+00
  %9750 = fmul fast float %9748, %9749
  %9751 = call float @dx.op.unary.f32(i32 6, float %9750)  ; FAbs(value)
  %9752 = extractvalue %dx.types.CBufRet.f32 %9746, 3
  %9753 = fcmp fast oge float %9751, %9752
  %9754 = select i1 %9753, float 0x4197782600000000, float %9751
  %9755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9756 = extractvalue %dx.types.CBufRet.f32 %9755, 0
  %9757 = extractvalue %dx.types.CBufRet.f32 %9755, 1
  %9758 = extractvalue %dx.types.CBufRet.f32 %9755, 2
  %9759 = select i1 %9744, float %9756, float %9677
  %9760 = select i1 %9744, float %9757, float %9678
  %9761 = select i1 %9744, float %9758, float %9679
  %9762 = fmul fast float %9759, %9674
  %9763 = fmul fast float %9760, %9674
  %9764 = fmul fast float %9761, %9674
  %9765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9766 = extractvalue %dx.types.CBufRet.f32 %9765, 0
  %9767 = extractvalue %dx.types.CBufRet.f32 %9765, 1
  %9768 = extractvalue %dx.types.CBufRet.f32 %9765, 2
  %9769 = select i1 %9744, float %9766, float %9684
  %9770 = select i1 %9744, float %9767, float %9685
  %9771 = select i1 %9744, float %9768, float %9686
  %9772 = fmul fast float %9769, %9675
  %9773 = fmul fast float %9770, %9675
  %9774 = fmul fast float %9771, %9675
  %9775 = fadd fast float %9772, %9762
  %9776 = fadd fast float %9773, %9763
  %9777 = fadd fast float %9774, %9764
  %9778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9779 = extractvalue %dx.types.CBufRet.f32 %9778, 0
  %9780 = extractvalue %dx.types.CBufRet.f32 %9778, 1
  %9781 = extractvalue %dx.types.CBufRet.f32 %9778, 2
  %9782 = select i1 %9744, float %9779, float %9691
  %9783 = select i1 %9744, float %9780, float %9692
  %9784 = select i1 %9744, float %9781, float %9693
  %9785 = fadd fast float %9775, %9782
  %9786 = fadd fast float %9776, %9783
  %9787 = fadd fast float %9777, %9784
  %9788 = fmul fast float %9785, %9754
  %9789 = fmul fast float %9786, %9754
  %9790 = fmul fast float %9787, %9754
  %9791 = fmul fast float %9788, %9788
  %9792 = fmul fast float %9789, %9789
  %9793 = fadd fast float %9791, %9792
  %9794 = fmul fast float %9790, %9790
  %9795 = fadd fast float %9793, %9794
  %9796 = call float @dx.op.unary.f32(i32 24, float %9795)  ; Sqrt(value)
  %9797 = fsub fast float %9796, %9709
  %9798 = fmul fast float %9797, %9711
  %9799 = call float @dx.op.unary.f32(i32 7, float %9798)  ; Saturate(value)
  br label %9800

; <label>:9800                                    ; preds = %9725, %9721
  %9801 = phi float [ %9799, %9725 ], [ 1.000000e+00, %9721 ]
  %9802 = fmul fast float %9718, 5.000000e-01
  %9803 = fadd fast float %9802, 5.000000e-01
  %9804 = call float @dx.op.unary.f32(i32 22, float %9803)  ; Frc(value)
  %9805 = call float @dx.op.unary.f32(i32 27, float %9804)  ; Round_ni(value)
  %9806 = call float @dx.op.unary.f32(i32 22, float %9804)  ; Frc(value)
  %9807 = fmul fast float %9806, 2.000000e+00
  %9808 = fadd fast float %9807, -1.000000e+00
  %9809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9670, float %9671, float %9805, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9810 = extractvalue %dx.types.ResRet.f32 %9809, 0
  %9811 = extractvalue %dx.types.ResRet.f32 %9809, 1
  %9812 = extractvalue %dx.types.ResRet.f32 %9809, 2
  %9813 = extractvalue %dx.types.ResRet.f32 %9809, 3
  %9814 = fadd fast float %9810, -5.000000e-01
  %9815 = fadd fast float %9812, -5.000000e-01
  %9816 = fmul fast float %9814, 0xBFD5555560000000
  %9817 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9815, float %9816)  ; FMad(a,b,c)
  %9818 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9811, float 0.000000e+00)  ; FMad(a,b,c)
  %9819 = fadd fast float %9818, %9813
  %9820 = fmul fast float %9814, -7.500000e-01
  %9821 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9815, float %9820)  ; FMad(a,b,c)
  %9822 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9811, float 0.000000e+00)  ; FMad(a,b,c)
  %9823 = fadd fast float %9822, %9813
  %9824 = call float @dx.op.binary.f32(i32 35, float %9817, float -1.000000e+00)  ; FMax(a,b)
  %9825 = call float @dx.op.binary.f32(i32 35, float %9819, float -1.000000e+00)  ; FMax(a,b)
  %9826 = call float @dx.op.binary.f32(i32 35, float %9821, float -1.000000e+00)  ; FMax(a,b)
  %9827 = call float @dx.op.binary.f32(i32 35, float %9823, float -1.000000e+00)  ; FMax(a,b)
  %9828 = call float @dx.op.binary.f32(i32 36, float %9824, float 1.000000e+00)  ; FMin(a,b)
  %9829 = call float @dx.op.binary.f32(i32 36, float %9825, float 1.000000e+00)  ; FMin(a,b)
  %9830 = call float @dx.op.binary.f32(i32 36, float %9826, float 1.000000e+00)  ; FMin(a,b)
  %9831 = call float @dx.op.binary.f32(i32 36, float %9827, float 1.000000e+00)  ; FMin(a,b)
  %9832 = fcmp fast olt float %9828, 0x3FEFFF8020000000
  br i1 %9832, label %9833, label %9948, !dx.controlflow.hints !182

; <label>:9833                                    ; preds = %9800
  %9834 = extractvalue %dx.types.CBufRet.f32 %9716, 3
  %9835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9836 = extractvalue %dx.types.CBufRet.f32 %9835, 0
  %9837 = extractvalue %dx.types.CBufRet.f32 %9835, 1
  %9838 = extractvalue %dx.types.CBufRet.f32 %9835, 2
  %9839 = extractvalue %dx.types.CBufRet.f32 %9835, 3
  %9840 = fsub fast float %9836, %9828
  %9841 = fsub fast float %9837, %9829
  %9842 = fsub fast float %9838, %9830
  %9843 = fsub fast float %9839, %9831
  %9844 = fmul fast float %9840, %9834
  %9845 = fmul fast float %9841, %9834
  %9846 = fmul fast float %9842, %9834
  %9847 = fmul fast float %9843, %9834
  %9848 = fadd fast float %9844, %9828
  %9849 = fadd fast float %9845, %9829
  %9850 = fsub fast float -0.000000e+00, %9849
  %9851 = fadd fast float %9846, %9830
  %9852 = fadd fast float %9847, %9831
  %9853 = fmul fast float %9848, %9848
  %9854 = fsub fast float %9849, %9853
  %9855 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9854)  ; FMax(a,b)
  %9856 = fdiv fast float 1.000000e+00, %9855
  %9857 = fmul fast float %9849, %9848
  %9858 = fsub fast float %9851, %9857
  %9859 = fsub fast float %9808, %9848
  %9860 = fmul fast float %9808, %9808
  %9861 = fsub fast float %9860, %9849
  %9862 = fmul fast float %9859, %9856
  %9863 = fmul fast float %9862, %9858
  %9864 = fsub fast float %9861, %9863
  %9865 = fmul fast float %9849, %9849
  %9866 = fsub fast float %9852, %9865
  %9867 = fmul fast float %9858, %9858
  %9868 = fmul fast float %9867, %9856
  %9869 = fsub fast float %9866, %9868
  %9870 = fdiv fast float %9864, %9869
  %9871 = fmul fast float %9858, %9870
  %9872 = fsub fast float %9859, %9871
  %9873 = fmul fast float %9872, %9856
  %9874 = fmul fast float %9873, %9848
  %9875 = fsub fast float 1.000000e+00, %9874
  %9876 = fmul fast float %9849, %9870
  %9877 = fsub fast float %9875, %9876
  %9878 = fmul fast float %9873, %9873
  %9879 = fmul fast float %9870, 4.000000e+00
  %9880 = fmul fast float %9879, %9877
  %9881 = fsub fast float %9878, %9880
  %9882 = call float @dx.op.unary.f32(i32 24, float %9881)  ; Sqrt(value)
  %9883 = fcmp fast oge float %9873, 0.000000e+00
  %9884 = fsub fast float -0.000000e+00, %9882
  %9885 = select i1 %9883, float %9884, float %9882
  %9886 = fsub fast float %9885, %9873
  %9887 = fdiv fast float %9886, %9870
  %9888 = fdiv fast float %9877, %9886
  %9889 = fmul fast float %9887, 5.000000e-01
  %9890 = fmul fast float %9888, 2.000000e+00
  %9891 = select i1 %9883, float %9889, float %9890
  %9892 = select i1 %9883, float %9890, float %9889
  %9893 = call float @dx.op.binary.f32(i32 35, float %9891, float %9892)  ; FMax(a,b)
  %9894 = call float @dx.op.binary.f32(i32 36, float %9891, float %9892)  ; FMin(a,b)
  %9895 = fcmp fast ogt float %9808, %9894
  br i1 %9895, label %9896, label %9906

; <label>:9896                                    ; preds = %9833
  %9897 = fsub fast float %9808, %9894
  %9898 = fsub fast float %9893, %9894
  %9899 = fmul fast float %9897, %9898
  %9900 = fmul fast float %9893, %9808
  %9901 = fadd fast float %9893, %9808
  %9902 = fmul fast float %9901, %9848
  %9903 = fadd fast float %9900, %9849
  %9904 = fsub fast float %9903, %9902
  %9905 = fdiv fast float %9904, %9899
  br label %9906

; <label>:9906                                    ; preds = %9896, %9833
  %9907 = phi float [ %9905, %9896 ], [ 0.000000e+00, %9833 ]
  %9908 = fcmp fast ogt float %9808, %9893
  %9909 = fsub fast float %9808, %9893
  br i1 %9908, label %9910, label %9920

; <label>:9910                                    ; preds = %9906
  %9911 = fsub fast float %9893, %9894
  %9912 = fmul fast float %9911, %9909
  %9913 = fmul fast float %9894, %9808
  %9914 = fadd fast float %9894, %9808
  %9915 = fmul fast float %9914, %9848
  %9916 = fsub fast float %9850, %9913
  %9917 = fadd fast float %9916, %9915
  %9918 = fdiv fast float %9917, %9912
  %9919 = fadd fast float %9918, %9907
  br label %9920

; <label>:9920                                    ; preds = %9910, %9906
  %9921 = phi float [ %9919, %9910 ], [ %9907, %9906 ]
  %9922 = fsub fast float %9808, %9894
  %9923 = fmul fast float %9922, %9909
  %9924 = fmul fast float %9894, %9893
  %9925 = fadd fast float %9894, %9893
  %9926 = fmul fast float %9925, %9848
  %9927 = fadd fast float %9924, %9849
  %9928 = fsub fast float %9927, %9926
  %9929 = fdiv fast float %9928, %9923
  %9930 = call float @dx.op.unary.f32(i32 7, float %9921)  ; Saturate(value)
  %9931 = fcmp fast oeq float %8599, 0.000000e+00
  %9932 = extractvalue %dx.types.CBufRet.f32 %9716, 0
  %9933 = fcmp fast oeq float %9932, 0.000000e+00
  %9934 = or i1 %9931, %9933
  %9935 = fmul fast float %9932, 2.000000e+00
  %9936 = fadd fast float %9717, %9718
  %9937 = fdiv fast float %9936, %9935
  %9938 = call float @dx.op.unary.f32(i32 7, float %9937)  ; Saturate(value)
  %9939 = fmul fast float %9938, 2.000000e+00
  %9940 = fsub fast float 3.000000e+00, %9939
  %9941 = fmul fast float %9938, %9938
  %9942 = fmul fast float %9941, %9940
  %9943 = select i1 %9934, float 1.000000e+00, float %9942
  %9944 = fmul fast float %9929, %8599
  %9945 = fadd fast float %9930, %9944
  %9946 = call float @dx.op.unary.f32(i32 7, float %9945)  ; Saturate(value)
  %9947 = fmul fast float %9943, %9946
  br label %9948

; <label>:9948                                    ; preds = %9920, %9800
  %9949 = phi float [ %9947, %9920 ], [ 0.000000e+00, %9800 ]
  %9950 = fsub fast float 1.000000e+00, %9949
  %9951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9670, float %9671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9952 = extractvalue %dx.types.ResRet.f32 %9951, 0
  %9953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9954 = extractvalue %dx.types.CBufRet.i32 %9953, 2
  %9955 = icmp eq i32 %9954, 0
  br i1 %9955, label %9961, label %9956

; <label>:9956                                    ; preds = %9948
  %9957 = call float @dx.op.unary.f32(i32 7, float %9949)  ; Saturate(value)
  %9958 = fadd fast float %9952, -1.000000e+00
  %9959 = fmul fast float %9957, %9958
  %9960 = fadd fast float %9959, 1.000000e+00
  br label %9961

; <label>:9961                                    ; preds = %9956, %9948
  %9962 = phi float [ %9960, %9956 ], [ %9950, %9948 ]
  br i1 %9724, label %9963, label %9981

; <label>:9963                                    ; preds = %9961
  %9964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9965 = extractvalue %dx.types.CBufRet.f32 %9964, 1
  %9966 = fsub fast float %9801, %9965
  %9967 = call float @dx.op.unary.f32(i32 7, float %9966)  ; Saturate(value)
  %9968 = fsub fast float %9801, %9723
  %9969 = call float @dx.op.unary.f32(i32 7, float %9968)  ; Saturate(value)
  %9970 = fsub fast float %9967, %9969
  %9971 = fsub fast float %9803, %9969
  %9972 = fdiv fast float %9971, %9970
  %9973 = call float @dx.op.unary.f32(i32 7, float %9972)  ; Saturate(value)
  %9974 = fmul fast float %9973, 2.000000e+00
  %9975 = fsub fast float 3.000000e+00, %9974
  %9976 = fsub fast float %9952, %9962
  %9977 = fmul fast float %9973, %9973
  %9978 = fmul fast float %9977, %9976
  %9979 = fmul fast float %9978, %9975
  %9980 = fadd fast float %9979, %9962
  br label %9981

; <label>:9981                                    ; preds = %9963, %9961
  %9982 = phi float [ %9980, %9963 ], [ %9962, %9961 ]
  %9983 = call float @dx.op.binary.f32(i32 35, float %9952, float %9982)  ; FMax(a,b)
  %9984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9985 = extractvalue %dx.types.CBufRet.i32 %9984, 2
  %9986 = and i32 %9985, 1
  %9987 = icmp eq i32 %9986, 0
  %9988 = fcmp fast une float %9983, 1.000000e+00
  %9989 = and i1 %9988, %9987
  br i1 %9989, label %9990, label %10009

; <label>:9990                                    ; preds = %9981
  %9991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9670, float %9671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9992 = extractvalue %dx.types.ResRet.f32 %9991, 0
  %9993 = extractvalue %dx.types.ResRet.f32 %9991, 1
  %9994 = extractvalue %dx.types.ResRet.f32 %9991, 2
  %9995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9996 = extractvalue %dx.types.CBufRet.f32 %9995, 1
  %9997 = fmul fast float %9996, %9992
  %9998 = fmul fast float %9996, %9993
  %9999 = fmul fast float %9996, %9994
  %10000 = fcmp fast ogt float %9952, 0x3FEFFF2E40000000
  %10001 = fsub fast float 1.000000e+00, %9983
  %10002 = fsub fast float 1.000000e+00, %9952
  %10003 = fdiv fast float %10001, %10002
  %10004 = call float @dx.op.unary.f32(i32 7, float %10003)  ; Saturate(value)
  %10005 = select i1 %10000, float 0.000000e+00, float %10004
  %10006 = fmul fast float %9997, %10005
  %10007 = fmul fast float %9998, %10005
  %10008 = fmul fast float %9999, %10005
  br label %10009

; <label>:10009                                   ; preds = %9990, %9981
  %10010 = phi float [ 0.000000e+00, %9981 ], [ %10006, %9990 ]
  %10011 = phi float [ 0.000000e+00, %9981 ], [ %10007, %9990 ]
  %10012 = phi float [ 0.000000e+00, %9981 ], [ %10008, %9990 ]
  %10013 = fmul fast float %10010, %8595
  %10014 = fmul fast float %10011, %8596
  %10015 = fmul fast float %10012, %8597
  %10016 = fmul fast float %9983, %9645
  %10017 = call float @dx.op.dot3.f32(i32 55, float %9983, float %9983, float %9983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10018 = call float @dx.op.dot3.f32(i32 55, float %10013, float %10014, float %10015, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10019 = select i1 %258, float %10017, float %9983
  %10020 = select i1 %258, float 1.000000e+00, float %9983
  %10021 = select i1 %258, float %10018, float %10013
  %10022 = select i1 %258, float 0.000000e+00, float %10014
  %10023 = select i1 %258, float 0.000000e+00, float %10015
  %10024 = fmul fast float %10019, %9657
  %10025 = fmul fast float %10019, %9658
  %10026 = fmul fast float %10020, %9659
  %10027 = fadd fast float %10024, %10021
  %10028 = fadd fast float %10025, %10022
  %10029 = fadd fast float %10023, %10026
  %10030 = fmul fast float %10019, %9660
  %10031 = fmul fast float %10019, %9661
  %10032 = fmul fast float %10020, %9662
  br label %10033

; <label>:10033                                   ; preds = %10009, %9666, %9635, %8867
  %10034 = phi float [ %8872, %8867 ], [ %9657, %9635 ], [ %10027, %10009 ], [ %9657, %9666 ]
  %10035 = phi float [ %8873, %8867 ], [ %9658, %9635 ], [ %10028, %10009 ], [ %9658, %9666 ]
  %10036 = phi float [ %8874, %8867 ], [ %9659, %9635 ], [ %10029, %10009 ], [ %9659, %9666 ]
  %10037 = phi float [ %8875, %8867 ], [ %9660, %9635 ], [ %10030, %10009 ], [ %9660, %9666 ]
  %10038 = phi float [ %8876, %8867 ], [ %9661, %9635 ], [ %10031, %10009 ], [ %9661, %9666 ]
  %10039 = phi float [ %8877, %8867 ], [ %9662, %9635 ], [ %10032, %10009 ], [ %9662, %9666 ]
  %10040 = phi float [ %8878, %8867 ], [ %9645, %9635 ], [ %10016, %10009 ], [ %9645, %9666 ]
  %10041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10042 = extractvalue %dx.types.CBufRet.f32 %10041, 2
  %10043 = extractvalue %dx.types.CBufRet.f32 %10041, 3
  %10044 = fmul fast float %10042, %109
  %10045 = fmul fast float %10043, %110
  %10046 = call float @dx.op.unary.f32(i32 7, float %10044)  ; Saturate(value)
  %10047 = call float @dx.op.unary.f32(i32 7, float %10045)  ; Saturate(value)
  %10048 = select i1 %8609, i32 2, i32 0
  %10049 = or i32 %10048, 1
  %10050 = uitofp i32 %10049 to float
  %10051 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10046, float %10047, float %10050, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10052 = extractvalue %dx.types.ResRet.f32 %10051, 0
  %10053 = extractvalue %dx.types.ResRet.f32 %10051, 1
  %10054 = extractvalue %dx.types.ResRet.f32 %10051, 2
  %10055 = extractvalue %dx.types.ResRet.f32 %10051, 3
  %10056 = add nuw nsw i32 %10048, 2
  %10057 = uitofp i32 %10056 to float
  %10058 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10046, float %10047, float %10057, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10059 = extractvalue %dx.types.ResRet.f32 %10058, 0
  %10060 = extractvalue %dx.types.ResRet.f32 %10058, 1
  %10061 = extractvalue %dx.types.ResRet.f32 %10058, 2
  %10062 = extractvalue %dx.types.ResRet.f32 %10058, 3
  %10063 = call float @dx.op.binary.f32(i32 35, float %10053, float %10054)  ; FMax(a,b)
  %10064 = call float @dx.op.binary.f32(i32 35, float %10052, float %10063)  ; FMax(a,b)
  %10065 = call float @dx.op.binary.f32(i32 35, float %10064, float %10055)  ; FMax(a,b)
  %10066 = call float @dx.op.binary.f32(i32 36, float %10060, float %10061)  ; FMin(a,b)
  %10067 = call float @dx.op.binary.f32(i32 36, float %10059, float %10066)  ; FMin(a,b)
  %10068 = call float @dx.op.binary.f32(i32 36, float %10067, float %10062)  ; FMin(a,b)
  %10069 = fmul fast float %10065, 2.550000e+02
  %10070 = fadd fast float %10069, 0x3F70101020000000
  %10071 = fptoui float %10070 to i32
  %10072 = fmul fast float %10068, 2.550000e+02
  %10073 = fadd fast float %10072, 0x3F70101020000000
  %10074 = fptoui float %10073 to i32
  %10075 = icmp ult i32 %10071, %10074
  br i1 %10075, label %10076, label %10245

; <label>:10076                                   ; preds = %10033
  %10077 = fcmp fast ogt float %96, 9.843750e-01
  %10078 = fadd fast float %8871, -4.000000e+00
  %10079 = select i1 %10077, float -4.000000e+00, float %10078
  %10080 = call float @dx.op.binary.f32(i32 35, float %10079, float 0.000000e+00)  ; FMax(a,b)
  %10081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10082 = extractvalue %dx.types.CBufRet.f32 %10081, 0
  %10083 = fadd fast float %10082, %10080
  %10084 = extractvalue %dx.types.CBufRet.f32 %10081, 2
  %10085 = fmul fast float %10083, %10084
  %10086 = call float @dx.op.unary.f32(i32 23, float %10085)  ; Log(value)
  %10087 = extractvalue %dx.types.CBufRet.f32 %10081, 3
  %10088 = fmul fast float %10087, %10086
  %10089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10090 = extractvalue %dx.types.CBufRet.f32 %10089, 2
  %10091 = fmul fast float %10088, %10090
  %10092 = call float @dx.op.unary.f32(i32 7, float %10091)  ; Saturate(value)
  %10093 = uitofp i32 %10071 to float
  %10094 = uitofp i32 %10074 to float
  %10095 = fadd fast float %10093, 5.000000e-01
  %10096 = fadd fast float %10094, 5.000000e-01
  %10097 = fmul fast float %10090, %10095
  %10098 = fmul fast float %10090, %10096
  %10099 = fadd fast float %10097, 0x3F0FFB4800000000
  %10100 = fadd fast float %10098, 0xBF0FFB4800000000
  %10101 = call float @dx.op.binary.f32(i32 35, float %10092, float %10099)  ; FMax(a,b)
  %10102 = call float @dx.op.binary.f32(i32 36, float %10101, float %10100)  ; FMin(a,b)
  %10103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10104 = extractvalue %dx.types.CBufRet.f32 %10103, 1
  %10105 = extractvalue %dx.types.CBufRet.f32 %10103, 2
  %10106 = extractvalue %dx.types.CBufRet.f32 %10103, 0
  %10107 = select i1 %8609, float %10106, float 0.000000e+00
  %10108 = fmul fast float %10104, %10102
  %10109 = fadd fast float %10107, %10108
  %10110 = fadd fast float %10107, %10105
  %10111 = fsub fast float %10104, %10105
  %10112 = fadd fast float %10111, %10107
  %10113 = call float @dx.op.binary.f32(i32 35, float %10109, float %10110)  ; FMax(a,b)
  %10114 = call float @dx.op.binary.f32(i32 36, float %10113, float %10112)  ; FMin(a,b)
  %10115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10046, float %10047, float %10114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10116 = extractvalue %dx.types.ResRet.f32 %10115, 0
  %10117 = extractvalue %dx.types.ResRet.f32 %10115, 1
  %10118 = extractvalue %dx.types.ResRet.f32 %10115, 2
  %10119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10120 = extractvalue %dx.types.CBufRet.i32 %10119, 0
  %10121 = extractvalue %dx.types.CBufRet.i32 %10119, 1
  %10122 = uitofp i32 %10120 to float
  %10123 = uitofp i32 %10121 to float
  %10124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10125 = extractvalue %dx.types.CBufRet.f32 %10124, 0
  %10126 = extractvalue %dx.types.CBufRet.f32 %10124, 1
  %10127 = fmul fast float %10122, %10046
  %10128 = fmul fast float %10123, %10047
  %10129 = fadd fast float %10127, -5.000000e-01
  %10130 = fadd fast float %10128, -5.000000e-01
  %10131 = call float @dx.op.unary.f32(i32 22, float %10129)  ; Frc(value)
  %10132 = call float @dx.op.unary.f32(i32 22, float %10130)  ; Frc(value)
  %10133 = fmul fast float %10131, %10131
  %10134 = fmul fast float %10133, %10131
  %10135 = fsub fast float 3.000000e+00, %10131
  %10136 = fmul fast float %10133, %10135
  %10137 = fmul fast float %10131, 3.000000e+00
  %10138 = fmul fast float %10134, 3.000000e+00
  %10139 = fmul fast float %10133, 6.000000e+00
  %10140 = fsub fast float %10138, %10139
  %10141 = fadd fast float %10140, 4.000000e+00
  %10142 = fmul fast float %10141, 0x3FC5555560000000
  %10143 = fmul fast float %10134, -3.000000e+00
  %10144 = fadd fast float %10133, %10131
  %10145 = fmul fast float %10144, 3.000000e+00
  %10146 = fadd fast float %10143, 1.000000e+00
  %10147 = fadd fast float %10146, %10145
  %10148 = fmul fast float %10134, 0x3FC5555560000000
  %10149 = fmul fast float %10132, %10132
  %10150 = fmul fast float %10149, %10132
  %10151 = fsub fast float 3.000000e+00, %10132
  %10152 = fmul fast float %10149, %10151
  %10153 = fmul fast float %10132, 3.000000e+00
  %10154 = fmul fast float %10150, 3.000000e+00
  %10155 = fmul fast float %10149, 6.000000e+00
  %10156 = fsub fast float %10154, %10155
  %10157 = fadd fast float %10156, 4.000000e+00
  %10158 = fmul fast float %10157, 0x3FC5555560000000
  %10159 = fmul fast float %10150, -3.000000e+00
  %10160 = fadd fast float %10149, %10132
  %10161 = fmul fast float %10160, 3.000000e+00
  %10162 = fadd fast float %10159, 1.000000e+00
  %10163 = fadd fast float %10162, %10161
  %10164 = fmul fast float %10150, 0x3FC5555560000000
  %10165 = fadd fast float %10131, 1.000000e+00
  %10166 = fsub fast float 1.000000e+00, %10137
  %10167 = fadd fast float %10166, %10136
  %10168 = fadd fast float %10167, %10141
  %10169 = fmul fast float %10168, 0x3FC5555560000000
  %10170 = fdiv fast float %10142, %10169
  %10171 = fsub fast float %10165, %10170
  %10172 = fsub fast float 1.000000e+00, %10131
  %10173 = fadd fast float %10147, %10134
  %10174 = fmul fast float %10173, 0x3FC5555560000000
  %10175 = fdiv fast float %10148, %10174
  %10176 = fadd fast float %10172, %10175
  %10177 = fadd fast float %10132, 1.000000e+00
  %10178 = fsub fast float 1.000000e+00, %10153
  %10179 = fadd fast float %10178, %10152
  %10180 = fadd fast float %10179, %10157
  %10181 = fmul fast float %10180, 0x3FC5555560000000
  %10182 = fdiv fast float %10158, %10181
  %10183 = fsub fast float %10177, %10182
  %10184 = fsub fast float 1.000000e+00, %10132
  %10185 = fadd fast float %10163, %10150
  %10186 = fmul fast float %10185, 0x3FC5555560000000
  %10187 = fdiv fast float %10164, %10186
  %10188 = fadd fast float %10187, %10184
  %10189 = fmul fast float %10171, %10125
  %10190 = fsub fast float %10046, %10189
  %10191 = fmul fast float %10176, %10125
  %10192 = fadd fast float %10191, %10046
  %10193 = fmul fast float %10188, %10126
  %10194 = fadd fast float %10193, %10047
  %10195 = fmul fast float %10183, %10126
  %10196 = fsub fast float %10047, %10195
  %10197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10190, float %10196, float %10114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10198 = extractvalue %dx.types.ResRet.f32 %10197, 0
  %10199 = extractvalue %dx.types.ResRet.f32 %10197, 1
  %10200 = extractvalue %dx.types.ResRet.f32 %10197, 2
  %10201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10192, float %10196, float %10114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10202 = extractvalue %dx.types.ResRet.f32 %10201, 0
  %10203 = extractvalue %dx.types.ResRet.f32 %10201, 1
  %10204 = extractvalue %dx.types.ResRet.f32 %10201, 2
  %10205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10190, float %10194, float %10114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10206 = extractvalue %dx.types.ResRet.f32 %10205, 0
  %10207 = extractvalue %dx.types.ResRet.f32 %10205, 1
  %10208 = extractvalue %dx.types.ResRet.f32 %10205, 2
  %10209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10192, float %10194, float %10114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10210 = extractvalue %dx.types.ResRet.f32 %10209, 0
  %10211 = extractvalue %dx.types.ResRet.f32 %10209, 1
  %10212 = extractvalue %dx.types.ResRet.f32 %10209, 2
  %10213 = fsub fast float %10206, %10198
  %10214 = fsub fast float %10207, %10199
  %10215 = fsub fast float %10208, %10200
  %10216 = fmul fast float %10213, %10186
  %10217 = fmul fast float %10214, %10186
  %10218 = fmul fast float %10215, %10186
  %10219 = fadd fast float %10216, %10198
  %10220 = fadd fast float %10217, %10199
  %10221 = fadd fast float %10218, %10200
  %10222 = fsub fast float %10210, %10202
  %10223 = fsub fast float %10211, %10203
  %10224 = fsub fast float %10212, %10204
  %10225 = fmul fast float %10222, %10186
  %10226 = fmul fast float %10223, %10186
  %10227 = fmul fast float %10224, %10186
  %10228 = fsub fast float %10202, %10219
  %10229 = fadd fast float %10228, %10225
  %10230 = fsub fast float %10203, %10220
  %10231 = fadd fast float %10230, %10226
  %10232 = fsub fast float %10204, %10221
  %10233 = fadd fast float %10232, %10227
  %10234 = fmul fast float %10229, %10174
  %10235 = fmul fast float %10231, %10174
  %10236 = fmul fast float %10233, %10174
  %10237 = fadd fast float %10234, %10219
  %10238 = fadd fast float %10235, %10220
  %10239 = fadd fast float %10236, %10221
  %10240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10241 = extractvalue %dx.types.CBufRet.f32 %10240, 1
  %10242 = fmul fast float %10237, %10241
  %10243 = fmul fast float %10238, %10241
  %10244 = fmul fast float %10239, %10241
  br label %10245

; <label>:10245                                   ; preds = %10076, %10033
  %10246 = phi float [ %10116, %10076 ], [ 1.000000e+00, %10033 ]
  %10247 = phi float [ %10117, %10076 ], [ 1.000000e+00, %10033 ]
  %10248 = phi float [ %10118, %10076 ], [ 1.000000e+00, %10033 ]
  %10249 = phi float [ %10242, %10076 ], [ 0.000000e+00, %10033 ]
  %10250 = phi float [ %10243, %10076 ], [ 0.000000e+00, %10033 ]
  %10251 = phi float [ %10244, %10076 ], [ 0.000000e+00, %10033 ]
  %10252 = fmul fast float %10249, %8595
  %10253 = fmul fast float %10250, %8596
  %10254 = fmul fast float %10251, %8597
  %10255 = fmul fast float %10246, %10040
  %10256 = call float @dx.op.dot3.f32(i32 55, float %10246, float %10247, float %10248, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10257 = call float @dx.op.dot3.f32(i32 55, float %10252, float %10253, float %10254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10258 = select i1 %258, float %10256, float %10246
  %10259 = select i1 %258, float %10256, float %10247
  %10260 = select i1 %258, float 1.000000e+00, float %10248
  %10261 = select i1 %258, float %10257, float %10252
  %10262 = select i1 %258, float 0.000000e+00, float %10253
  %10263 = select i1 %258, float 0.000000e+00, float %10254
  %10264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10265 = extractvalue %dx.types.CBufRet.i32 %10264, 3
  %10266 = and i32 %10265, 3
  %10267 = icmp ne i32 %10266, 0
  %10268 = and i32 %10265, 4
  %10269 = icmp ne i32 %10268, 0
  %10270 = and i1 %10267, %10269
  %10271 = and i1 %258, %10270
  br i1 %10271, label %10272, label %10278

; <label>:10272                                   ; preds = %10245
  %10273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10274 = extractvalue %dx.types.CBufRet.f32 %10273, 1
  %10275 = fadd fast float %10255, -1.000000e+00
  %10276 = fmul fast float %10274, %10275
  %10277 = fadd fast float %10276, 1.000000e+00
  br label %10278

; <label>:10278                                   ; preds = %10272, %10245
  %10279 = phi float [ %10277, %10272 ], [ %10255, %10245 ]
  %10280 = fadd fast float %10037, %10034
  %10281 = fmul fast float %10258, %10280
  %10282 = fadd fast float %10281, %10261
  %10283 = fadd fast float %10038, %10035
  %10284 = fmul fast float %10259, %10283
  %10285 = fadd fast float %10284, %10262
  %10286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10287 = extractvalue %dx.types.CBufRet.f32 %10286, 0
  br i1 %258, label %10288, label %10303

; <label>:10288                                   ; preds = %10278
  %10289 = fadd fast float %10282, %10285
  %10290 = fmul fast float %10287, %10289
  %10291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10292 = extractvalue %dx.types.CBufRet.f32 %10291, 3
  %10293 = extractvalue %dx.types.CBufRet.f32 %8579, 1
  %10294 = fsub fast float %8584, %8578
  %10295 = fadd fast float %10294, %8585
  %10296 = fsub fast float %10295, %10293
  %10297 = extractvalue %dx.types.CBufRet.f32 %8579, 2
  %10298 = fmul fast float %10296, %10297
  %10299 = call float @dx.op.unary.f32(i32 7, float %10298)  ; Saturate(value)
  %10300 = fsub fast float %10299, %10292
  %10301 = fmul fast float %10300, %10279
  %10302 = fadd fast float %10301, %10292
  br label %10329

; <label>:10303                                   ; preds = %10278
  %10304 = fadd fast float %10039, %10036
  %10305 = fmul fast float %10260, %10304
  %10306 = fadd fast float %10305, %10263
  %10307 = fmul fast float %10287, %10282
  %10308 = fmul fast float %10287, %10285
  %10309 = fmul fast float %10287, %10306
  %10310 = call float @dx.op.binary.f32(i32 35, float %10308, float %10309)  ; FMax(a,b)
  %10311 = call float @dx.op.binary.f32(i32 35, float %10307, float %10310)  ; FMax(a,b)
  %10312 = call float @dx.op.binary.f32(i32 35, float %8596, float %8597)  ; FMax(a,b)
  %10313 = call float @dx.op.binary.f32(i32 35, float %8595, float %10312)  ; FMax(a,b)
  %10314 = call float @dx.op.binary.f32(i32 35, float %10311, float %10313)  ; FMax(a,b)
  %10315 = fcmp fast ugt float %10314, 0x3F10000000000000
  br i1 %10315, label %10317, label %10316

; <label>:10316                                   ; preds = %10303
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10317

; <label>:10317                                   ; preds = %10316, %10303
  %10318 = add i32 %60, 356
  %10319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10318, i32 undef)  ; BufferLoad(srv,index,wot)
  %10320 = extractvalue %dx.types.ResRet.i32 %10319, 0
  %10321 = and i32 %10320, 32
  %10322 = icmp eq i32 %10321, 0
  br i1 %10322, label %10329, label %10323

; <label>:10323                                   ; preds = %10317
  %10324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10325 = extractvalue %dx.types.CBufRet.f32 %10324, 0
  %10326 = fmul fast float %10325, 0x3FE99999A0000000
  %10327 = fadd fast float %10325, %10307
  %10328 = fadd fast float %10326, %10309
  br label %10329

; <label>:10329                                   ; preds = %10323, %10317, %10288
  %10330 = phi float [ 1.000000e+00, %10288 ], [ %8596, %10323 ], [ %8596, %10317 ]
  %10331 = phi float [ 1.000000e+00, %10288 ], [ %8597, %10323 ], [ %8597, %10317 ]
  %10332 = phi float [ %10290, %10288 ], [ %10327, %10323 ], [ %10307, %10317 ]
  %10333 = phi float [ %10302, %10288 ], [ %10308, %10323 ], [ %10308, %10317 ]
  %10334 = phi float [ 1.000000e+00, %10288 ], [ %10328, %10323 ], [ %10309, %10317 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10335 = call float @dx.op.binary.f32(i32 36, float %10332, float 3.225500e+04)  ; FMin(a,b)
  %10336 = call float @dx.op.binary.f32(i32 36, float %10333, float 3.225500e+04)  ; FMin(a,b)
  %10337 = call float @dx.op.binary.f32(i32 36, float %10334, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10335)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10336)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10337)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10338 = call float @dx.op.binary.f32(i32 36, float %8595, float 3.225500e+04)  ; FMin(a,b)
  %10339 = call float @dx.op.binary.f32(i32 36, float %10330, float 3.225500e+04)  ; FMin(a,b)
  %10340 = call float @dx.op.binary.f32(i32 36, float %10331, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10338)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10339)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10340)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

