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
; shader hash: 788fb7063cdb6984769d814a23bfe0f4
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
  %452 = add i32 %60, 552
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
  %827 = add i32 %60, 504
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
  %1167 = add i32 %60, 520
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
  %1208 = add i32 %60, 536
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
  %1272 = phi float [ 0.000000e+00, %494 ], [ %1142, %1251 ]
  %1273 = phi float [ 0.000000e+00, %494 ], [ %1143, %1251 ]
  %1274 = phi float [ 0.000000e+00, %494 ], [ %1144, %1251 ]
  %1275 = phi float [ 0.000000e+00, %494 ], [ %1014, %1251 ]
  %1276 = phi float [ 0.000000e+00, %494 ], [ %1015, %1251 ]
  %1277 = phi float [ 0.000000e+00, %494 ], [ %1016, %1251 ]
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
  %1620 = add i32 %60, 508
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
  %1960 = add i32 %60, 524
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
  %2001 = add i32 %60, 540
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
  %2091 = fmul fast float %2088, %1275
  %2092 = fmul fast float %2089, %1276
  %2093 = fmul fast float %2090, %1277
  %2094 = fmul fast float %2088, %1272
  %2095 = fmul fast float %2089, %1273
  %2096 = fmul fast float %2090, %1274
  br label %2097

; <label>:2097                                    ; preds = %2062, %2044
  %2098 = phi float [ %2094, %2062 ], [ %1272, %2044 ]
  %2099 = phi float [ %2095, %2062 ], [ %1273, %2044 ]
  %2100 = phi float [ %2096, %2062 ], [ %1274, %2044 ]
  %2101 = phi float [ %2091, %2062 ], [ %1275, %2044 ]
  %2102 = phi float [ %2092, %2062 ], [ %1276, %2044 ]
  %2103 = phi float [ %2093, %2062 ], [ %1277, %2044 ]
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
  %2117 = fsub fast float %1807, %2101
  %2118 = fsub fast float %1808, %2102
  %2119 = fsub fast float %1809, %2103
  %2120 = fmul fast float %2111, %2117
  %2121 = fmul fast float %2111, %2118
  %2122 = fmul fast float %2111, %2119
  %2123 = fadd fast float %2120, %2101
  %2124 = fadd fast float %2121, %2102
  %2125 = fadd fast float %2122, %2103
  %2126 = fsub fast float %1793, %1284
  %2127 = fmul fast float %2111, %2126
  %2128 = fadd fast float %2127, %1284
  %2129 = fsub fast float %1935, %2098
  %2130 = fsub fast float %1936, %2099
  %2131 = fsub fast float %1937, %2100
  %2132 = fmul fast float %2116, %2129
  %2133 = fmul fast float %2116, %2130
  %2134 = fmul fast float %2116, %2131
  %2135 = fadd fast float %2132, %2098
  %2136 = fadd fast float %2133, %2099
  %2137 = fadd fast float %2134, %2100
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
  %2153 = fmul fast float %2150, %2101
  %2154 = fmul fast float %2151, %2102
  %2155 = fmul fast float %2152, %2103
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
  %2173 = fmul fast float %2172, %2101
  %2174 = fadd fast float %2173, %2171
  %2175 = fmul fast float %2174, %2101
  %2176 = fmul fast float %2169, 2.000000e+00
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = fmul fast float %2177, %2102
  %2179 = fadd fast float %2178, %2176
  %2180 = fmul fast float %2179, %2102
  %2181 = fmul fast float %2170, 2.000000e+00
  %2182 = fsub fast float 1.000000e+00, %2181
  %2183 = fmul fast float %2182, %2103
  %2184 = fadd fast float %2183, %2181
  %2185 = fmul fast float %2184, %2103
  br label %2186

; <label>:2186                                    ; preds = %2158, %2156, %2143, %2113, %2097
  %2187 = phi float [ %2098, %2097 ], [ %2098, %2158 ], [ %2098, %2156 ], [ %2098, %2143 ], [ %2135, %2113 ]
  %2188 = phi float [ %2099, %2097 ], [ %2099, %2158 ], [ %2099, %2156 ], [ %2099, %2143 ], [ %2136, %2113 ]
  %2189 = phi float [ %2100, %2097 ], [ %2100, %2158 ], [ %2100, %2156 ], [ %2100, %2143 ], [ %2137, %2113 ]
  %2190 = phi float [ %2101, %2097 ], [ %2175, %2158 ], [ %2101, %2156 ], [ %2153, %2143 ], [ %2123, %2113 ]
  %2191 = phi float [ %2102, %2097 ], [ %2180, %2158 ], [ %2102, %2156 ], [ %2154, %2143 ], [ %2124, %2113 ]
  %2192 = phi float [ %2103, %2097 ], [ %2185, %2158 ], [ %2103, %2156 ], [ %2155, %2143 ], [ %2125, %2113 ]
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
  %2677 = add i32 %60, 512
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
  %3017 = add i32 %60, 528
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
  %3058 = add i32 %60, 544
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
  %3148 = fmul fast float %3145, %2333
  %3149 = fmul fast float %3146, %2334
  %3150 = fmul fast float %3147, %2335
  %3151 = fmul fast float %3145, %2330
  %3152 = fmul fast float %3146, %2331
  %3153 = fmul fast float %3147, %2332
  br label %3154

; <label>:3154                                    ; preds = %3119, %3101
  %3155 = phi float [ %3151, %3119 ], [ %2330, %3101 ]
  %3156 = phi float [ %3152, %3119 ], [ %2331, %3101 ]
  %3157 = phi float [ %3153, %3119 ], [ %2332, %3101 ]
  %3158 = phi float [ %3148, %3119 ], [ %2333, %3101 ]
  %3159 = phi float [ %3149, %3119 ], [ %2334, %3101 ]
  %3160 = phi float [ %3150, %3119 ], [ %2335, %3101 ]
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
  %3174 = fsub fast float %2864, %3158
  %3175 = fsub fast float %2865, %3159
  %3176 = fsub fast float %2866, %3160
  %3177 = fmul fast float %3168, %3174
  %3178 = fmul fast float %3168, %3175
  %3179 = fmul fast float %3168, %3176
  %3180 = fadd fast float %3177, %3158
  %3181 = fadd fast float %3178, %3159
  %3182 = fadd fast float %3179, %3160
  %3183 = fsub fast float %2850, %2342
  %3184 = fmul fast float %3168, %3183
  %3185 = fadd fast float %3184, %2342
  %3186 = fsub fast float %2992, %3155
  %3187 = fsub fast float %2993, %3156
  %3188 = fsub fast float %2994, %3157
  %3189 = fmul fast float %3173, %3186
  %3190 = fmul fast float %3173, %3187
  %3191 = fmul fast float %3173, %3188
  %3192 = fadd fast float %3189, %3155
  %3193 = fadd fast float %3190, %3156
  %3194 = fadd fast float %3191, %3157
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
  %3210 = fmul fast float %3207, %3158
  %3211 = fmul fast float %3208, %3159
  %3212 = fmul fast float %3209, %3160
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
  %3230 = fmul fast float %3229, %3158
  %3231 = fadd fast float %3230, %3228
  %3232 = fmul fast float %3231, %3158
  %3233 = fmul fast float %3226, 2.000000e+00
  %3234 = fsub fast float 1.000000e+00, %3233
  %3235 = fmul fast float %3234, %3159
  %3236 = fadd fast float %3235, %3233
  %3237 = fmul fast float %3236, %3159
  %3238 = fmul fast float %3227, 2.000000e+00
  %3239 = fsub fast float 1.000000e+00, %3238
  %3240 = fmul fast float %3239, %3160
  %3241 = fadd fast float %3240, %3238
  %3242 = fmul fast float %3241, %3160
  br label %3243

; <label>:3243                                    ; preds = %3215, %3213, %3200, %3170, %3154
  %3244 = phi float [ %3155, %3154 ], [ %3155, %3215 ], [ %3155, %3213 ], [ %3155, %3200 ], [ %3192, %3170 ]
  %3245 = phi float [ %3156, %3154 ], [ %3156, %3215 ], [ %3156, %3213 ], [ %3156, %3200 ], [ %3193, %3170 ]
  %3246 = phi float [ %3157, %3154 ], [ %3157, %3215 ], [ %3157, %3213 ], [ %3157, %3200 ], [ %3194, %3170 ]
  %3247 = phi float [ %3158, %3154 ], [ %3232, %3215 ], [ %3158, %3213 ], [ %3210, %3200 ], [ %3180, %3170 ]
  %3248 = phi float [ %3159, %3154 ], [ %3237, %3215 ], [ %3159, %3213 ], [ %3211, %3200 ], [ %3181, %3170 ]
  %3249 = phi float [ %3160, %3154 ], [ %3242, %3215 ], [ %3160, %3213 ], [ %3212, %3200 ], [ %3182, %3170 ]
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
  %3734 = add i32 %60, 516
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
  %4074 = add i32 %60, 532
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
  %4115 = add i32 %60, 548
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
  %4205 = fmul fast float %4202, %3390
  %4206 = fmul fast float %4203, %3391
  %4207 = fmul fast float %4204, %3392
  %4208 = fmul fast float %4202, %3387
  %4209 = fmul fast float %4203, %3388
  %4210 = fmul fast float %4204, %3389
  br label %4211

; <label>:4211                                    ; preds = %4176, %4158
  %4212 = phi float [ %4208, %4176 ], [ %3387, %4158 ]
  %4213 = phi float [ %4209, %4176 ], [ %3388, %4158 ]
  %4214 = phi float [ %4210, %4176 ], [ %3389, %4158 ]
  %4215 = phi float [ %4205, %4176 ], [ %3390, %4158 ]
  %4216 = phi float [ %4206, %4176 ], [ %3391, %4158 ]
  %4217 = phi float [ %4207, %4176 ], [ %3392, %4158 ]
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
  %4231 = fsub fast float %3921, %4215
  %4232 = fsub fast float %3922, %4216
  %4233 = fsub fast float %3923, %4217
  %4234 = fmul fast float %4225, %4231
  %4235 = fmul fast float %4225, %4232
  %4236 = fmul fast float %4225, %4233
  %4237 = fadd fast float %4234, %4215
  %4238 = fadd fast float %4235, %4216
  %4239 = fadd fast float %4236, %4217
  %4240 = fsub fast float %3907, %3399
  %4241 = fmul fast float %4225, %4240
  %4242 = fadd fast float %4241, %3399
  %4243 = fsub fast float %4049, %4212
  %4244 = fsub fast float %4050, %4213
  %4245 = fsub fast float %4051, %4214
  %4246 = fmul fast float %4230, %4243
  %4247 = fmul fast float %4230, %4244
  %4248 = fmul fast float %4230, %4245
  %4249 = fadd fast float %4246, %4212
  %4250 = fadd fast float %4247, %4213
  %4251 = fadd fast float %4248, %4214
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
  %4267 = fmul fast float %4264, %4215
  %4268 = fmul fast float %4265, %4216
  %4269 = fmul fast float %4266, %4217
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
  %4287 = fmul fast float %4286, %4215
  %4288 = fadd fast float %4287, %4285
  %4289 = fmul fast float %4288, %4215
  %4290 = fmul fast float %4283, 2.000000e+00
  %4291 = fsub fast float 1.000000e+00, %4290
  %4292 = fmul fast float %4291, %4216
  %4293 = fadd fast float %4292, %4290
  %4294 = fmul fast float %4293, %4216
  %4295 = fmul fast float %4284, 2.000000e+00
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = fmul fast float %4296, %4217
  %4298 = fadd fast float %4297, %4295
  %4299 = fmul fast float %4298, %4217
  br label %4300

; <label>:4300                                    ; preds = %4272, %4270, %4257, %4227, %4211
  %4301 = phi float [ %4212, %4211 ], [ %4212, %4272 ], [ %4212, %4270 ], [ %4212, %4257 ], [ %4249, %4227 ]
  %4302 = phi float [ %4213, %4211 ], [ %4213, %4272 ], [ %4213, %4270 ], [ %4213, %4257 ], [ %4250, %4227 ]
  %4303 = phi float [ %4214, %4211 ], [ %4214, %4272 ], [ %4214, %4270 ], [ %4214, %4257 ], [ %4251, %4227 ]
  %4304 = phi float [ %4215, %4211 ], [ %4289, %4272 ], [ %4215, %4270 ], [ %4267, %4257 ], [ %4237, %4227 ]
  %4305 = phi float [ %4216, %4211 ], [ %4294, %4272 ], [ %4216, %4270 ], [ %4268, %4257 ], [ %4238, %4227 ]
  %4306 = phi float [ %4217, %4211 ], [ %4299, %4272 ], [ %4217, %4270 ], [ %4269, %4257 ], [ %4239, %4227 ]
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
  %4461 = add i32 %60, 408
  %4462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4461, i32 undef)  ; BufferLoad(srv,index,wot)
  %4463 = extractvalue %dx.types.ResRet.i32 %4462, 0
  %4464 = bitcast i32 %4463 to float
  %4465 = fcmp fast oge float %4464, 0.000000e+00
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = select i1 %4465, float %4464, float %4467
  %4469 = call float @dx.op.dot2.f32(i32 54, float %4442, float %4443, float %4442, float %4443)  ; Dot2(ax,ay,bx,by)
  %4470 = fmul fast float %4469, 0x3FE3333340000000
  %4471 = fsub fast float 1.000000e+00, %4470
  %4472 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4443, float %4471, float %4442, float %4443, float %4471)  ; Dot3(ax,ay,az,bx,by,bz)
  %4473 = call float @dx.op.unary.f32(i32 25, float %4472)  ; Rsqrt(value)
  %4474 = fmul fast float %4473, %4442
  %4475 = fmul fast float %4473, %4443
  %4476 = fmul fast float %4471, %4473
  %4477 = fmul fast float %4476, %116
  %4478 = fmul fast float %4476, %117
  %4479 = fmul fast float %4476, %118
  %4480 = fmul fast float %4474, %81
  %4481 = fmul fast float %4474, %82
  %4482 = fmul fast float %4474, %83
  %4483 = fadd fast float %4477, %4480
  %4484 = fadd fast float %4478, %4481
  %4485 = fadd fast float %4479, %4482
  %4486 = fmul fast float %128, %4475
  %4487 = fmul fast float %129, %4475
  %4488 = fmul fast float %130, %4475
  %4489 = fadd fast float %4483, %4486
  %4490 = fadd fast float %4484, %4487
  %4491 = fadd fast float %4485, %4488
  %4492 = call float @dx.op.dot3.f32(i32 55, float %4489, float %4490, float %4491, float %4489, float %4490, float %4491)  ; Dot3(ax,ay,az,bx,by,bz)
  %4493 = call float @dx.op.unary.f32(i32 25, float %4492)  ; Rsqrt(value)
  %4494 = fmul fast float %4489, %4493
  %4495 = fmul fast float %4490, %4493
  %4496 = fmul fast float %4491, %4493
  %4497 = and i32 %62, 1
  %4498 = icmp eq i32 %4497, 0
  br i1 %4498, label %4499, label %5091

; <label>:4499                                    ; preds = %4441
  %4500 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %4501 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4502 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4503 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %4504 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4505 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4506 = fadd fast float %4500, %164
  %4507 = fadd fast float %4501, %165
  %4508 = fadd fast float %4502, %166
  %4509 = fadd fast float %4503, %164
  %4510 = fadd fast float %4504, %165
  %4511 = fadd fast float %4505, %166
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.CBufRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.CBufRet.f32 %4512, 2
  %4516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.f32 %4516, 2
  %4518 = extractvalue %dx.types.CBufRet.f32 %4516, 3
  %4519 = fmul fast float %4513, %109
  %4520 = fmul fast float %4519, %4517
  %4521 = fmul fast float %4514, %110
  %4522 = fmul fast float %4521, %4518
  %4523 = fptoui float %4520 to i32
  %4524 = fptoui float %4522 to i32
  %4525 = fadd fast float %4513, -1.000000e+00
  %4526 = fadd fast float %4514, -1.000000e+00
  %4527 = fptoui float %4525 to i32
  %4528 = fptoui float %4526 to i32
  %4529 = call i32 @dx.op.binary.i32(i32 40, i32 %4523, i32 %4527)  ; UMin(a,b)
  %4530 = call i32 @dx.op.binary.i32(i32 40, i32 %4524, i32 %4528)  ; UMin(a,b)
  %4531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4532 = extractvalue %dx.types.CBufRet.f32 %4531, 2
  %4533 = extractvalue %dx.types.CBufRet.f32 %4531, 3
  %4534 = fmul fast float %4532, %97
  %4535 = fsub fast float %4534, %4533
  %4536 = fadd fast float %4515, -1.000000e+00
  %4537 = call float @dx.op.binary.f32(i32 36, float %4535, float %4536)  ; FMin(a,b)
  %4538 = fptoui float %4537 to i32
  %4539 = fptoui float %4513 to i32
  %4540 = fptoui float %4514 to i32
  %4541 = mul i32 %4538, %4540
  %4542 = add i32 %4541, %4530
  %4543 = mul i32 %4542, %4539
  %4544 = add i32 %4543, %4529
  %4545 = shl i32 %4544, 2
  %4546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4545, i32 undef)  ; BufferLoad(srv,index,wot)
  %4547 = extractvalue %dx.types.ResRet.i32 %4546, 0
  %4548 = and i32 %4547, 1023
  %4549 = lshr i32 %4547, 10
  %4550 = icmp eq i32 %4548, 0
  br i1 %4550, label %5054, label %4551

; <label>:4551                                    ; preds = %4499
  %4552 = and i32 %4547, 1023
  br label %4553

; <label>:4553                                    ; preds = %4685, %4551
  %4554 = phi i32 [ %4635, %4685 ], [ 0, %4551 ]
  %4555 = phi float [ %4686, %4685 ], [ 0.000000e+00, %4551 ]
  %4556 = phi float [ %4687, %4685 ], [ %4468, %4551 ]
  %4557 = phi float [ %4688, %4685 ], [ %4460, %4551 ]
  %4558 = phi float [ %4689, %4685 ], [ %4450, %4551 ]
  %4559 = phi float [ %4690, %4685 ], [ %4451, %4551 ]
  %4560 = phi float [ %4691, %4685 ], [ %4452, %4551 ]
  %4561 = phi float [ %4692, %4685 ], [ 0.000000e+00, %4551 ]
  %4562 = phi float [ %4693, %4685 ], [ 0.000000e+00, %4551 ]
  %4563 = phi float [ %4694, %4685 ], [ %4453, %4551 ]
  %4564 = phi float [ %4695, %4685 ], [ %4454, %4551 ]
  %4565 = phi float [ %4696, %4685 ], [ %4455, %4551 ]
  %4566 = phi float [ %4697, %4685 ], [ %4444, %4551 ]
  %4567 = phi float [ %4698, %4685 ], [ %4445, %4551 ]
  %4568 = phi float [ %4699, %4685 ], [ %4446, %4551 ]
  %4569 = phi float [ %4700, %4685 ], [ %4494, %4551 ]
  %4570 = phi float [ %4701, %4685 ], [ %4495, %4551 ]
  %4571 = phi float [ %4702, %4685 ], [ %4496, %4551 ]
  %4572 = phi float [ %4703, %4685 ], [ %4458, %4551 ]
  %4573 = phi float [ %4704, %4685 ], [ %4457, %4551 ]
  %4574 = phi float [ %4705, %4685 ], [ 0.000000e+00, %4551 ]
  %4575 = phi float [ %4706, %4685 ], [ %4456, %4551 ]
  %4576 = phi float [ %4707, %4685 ], [ %4447, %4551 ]
  %4577 = phi float [ %4708, %4685 ], [ %4448, %4551 ]
  %4578 = phi float [ %4709, %4685 ], [ %4449, %4551 ]
  %4579 = add nuw nsw i32 %4554, %4549
  %4580 = shl i32 %4579, 2
  %4581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4580, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.i32 %4581, 0
  %4583 = shl i32 %4582, 8
  %4584 = or i32 %4583, 48
  %4585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4589 = extractvalue %dx.types.ResRet.f32 %4585, 3
  %4590 = or i32 %4583, 64
  %4591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.i32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.i32 %4591, 1
  %4594 = or i32 %4583, 80
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 2
  %4597 = extractvalue %dx.types.ResRet.f32 %4595, 3
  %4598 = or i32 %4583, 96
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = extractvalue %dx.types.ResRet.f32 %4599, 3
  %4604 = or i32 %4583, 112
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4607 = or i32 %4583, 128
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = or i32 %4583, 144
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4614, 3
  %4619 = or i32 %4583, 160
  %4620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4619, i32 undef)  ; BufferLoad(srv,index,wot)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4624 = extractvalue %dx.types.ResRet.f32 %4620, 3
  %4625 = or i32 %4583, 192
  %4626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4625, i32 undef)  ; BufferLoad(srv,index,wot)
  %4627 = extractvalue %dx.types.ResRet.i32 %4626, 0
  %4628 = or i32 %4583, 208
  %4629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4628, i32 undef)  ; BufferLoad(srv,index,wot)
  %4630 = extractvalue %dx.types.ResRet.f32 %4629, 0
  %4631 = or i32 %4583, 248
  %4632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4631, i32 undef)  ; BufferLoad(srv,index,wot)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.ResRet.f32 %4632, 1
  %4635 = add nuw nsw i32 %4554, 1
  %4636 = bitcast float %4589 to i32
  %4637 = and i32 %4636, 512
  %4638 = icmp eq i32 %4637, 0
  %4639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.ResRet.f32 %4639, 1
  %4642 = extractvalue %dx.types.ResRet.f32 %4639, 2
  %4643 = extractvalue %dx.types.ResRet.f32 %4639, 3
  %4644 = call float @dx.op.dot4.f32(i32 56, float %4640, float %4641, float %4642, float %4643, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4645 = or i32 %4583, 16
  %4646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.ResRet.f32 %4646, 1
  %4649 = extractvalue %dx.types.ResRet.f32 %4646, 2
  %4650 = extractvalue %dx.types.ResRet.f32 %4646, 3
  %4651 = call float @dx.op.dot4.f32(i32 56, float %4647, float %4648, float %4649, float %4650, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4652 = or i32 %4583, 32
  %4653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4652, i32 undef)  ; BufferLoad(srv,index,wot)
  %4654 = extractvalue %dx.types.ResRet.f32 %4653, 0
  %4655 = extractvalue %dx.types.ResRet.f32 %4653, 1
  %4656 = extractvalue %dx.types.ResRet.f32 %4653, 2
  %4657 = extractvalue %dx.types.ResRet.f32 %4653, 3
  %4658 = call float @dx.op.dot4.f32(i32 56, float %4654, float %4655, float %4656, float %4657, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4659 = call float @dx.op.unary.f32(i32 27, float %4644)  ; Round_ni(value)
  %4660 = call float @dx.op.unary.f32(i32 6, float %4659)  ; FAbs(value)
  %4661 = call float @dx.op.unary.f32(i32 27, float %4651)  ; Round_ni(value)
  %4662 = call float @dx.op.unary.f32(i32 6, float %4661)  ; FAbs(value)
  %4663 = call float @dx.op.unary.f32(i32 6, float %4658)  ; FAbs(value)
  %4664 = call float @dx.op.unary.f32(i32 27, float %4663)  ; Round_ni(value)
  %4665 = fadd fast float %4662, %4660
  %4666 = fadd fast float %4665, %4664
  %4667 = fcmp fast oeq float %4666, 0.000000e+00
  %4668 = call float @dx.op.dot4.f32(i32 56, float %4640, float %4641, float %4642, float %4643, float %4506, float %4507, float %4508, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4669 = call float @dx.op.dot4.f32(i32 56, float %4647, float %4648, float %4649, float %4650, float %4506, float %4507, float %4508, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4670 = call float @dx.op.dot4.f32(i32 56, float %4640, float %4641, float %4642, float %4643, float %4509, float %4510, float %4511, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4671 = call float @dx.op.dot4.f32(i32 56, float %4647, float %4648, float %4649, float %4650, float %4509, float %4510, float %4511, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4672 = fsub fast float %4668, %4644
  %4673 = fsub fast float %4670, %4644
  %4674 = fsub fast float %4669, %4651
  %4675 = fsub fast float %4671, %4651
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4587, float %4588, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.f32 %4677, 2
  %4679 = fadd fast float %4678, %4676
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = extractvalue %dx.types.CBufRet.f32 %4677, 0
  %4682 = fcmp fast ogt float %4680, %4681
  %4683 = and i1 %4667, %4682
  %4684 = and i1 %4638, %4683
  br i1 %4684, label %4711, label %4685

; <label>:4685                                    ; preds = %5040, %4792, %4711, %4553
  %4686 = phi float [ %4555, %4711 ], [ %4795, %4792 ], [ %4795, %5040 ], [ %4555, %4553 ]
  %4687 = phi float [ %4556, %4711 ], [ %4556, %4792 ], [ %5016, %5040 ], [ %4556, %4553 ]
  %4688 = phi float [ %4557, %4711 ], [ %4557, %4792 ], [ %5014, %5040 ], [ %4557, %4553 ]
  %4689 = phi float [ %4558, %4711 ], [ %4558, %4792 ], [ %4992, %5040 ], [ %4558, %4553 ]
  %4690 = phi float [ %4559, %4711 ], [ %4559, %4792 ], [ %4993, %5040 ], [ %4559, %4553 ]
  %4691 = phi float [ %4560, %4711 ], [ %4560, %4792 ], [ %4994, %5040 ], [ %4560, %4553 ]
  %4692 = phi float [ %4561, %4711 ], [ %4561, %4792 ], [ %4919, %5040 ], [ %4561, %4553 ]
  %4693 = phi float [ %4562, %4711 ], [ %4562, %4792 ], [ %4917, %5040 ], [ %4562, %4553 ]
  %4694 = phi float [ %4563, %4711 ], [ %4563, %4792 ], [ %4962, %5040 ], [ %4563, %4553 ]
  %4695 = phi float [ %4564, %4711 ], [ %4564, %4792 ], [ %4963, %5040 ], [ %4564, %4553 ]
  %4696 = phi float [ %4565, %4711 ], [ %4565, %4792 ], [ %4964, %5040 ], [ %4565, %4553 ]
  %4697 = phi float [ %4566, %4711 ], [ %4566, %4792 ], [ %5050, %5040 ], [ %4566, %4553 ]
  %4698 = phi float [ %4567, %4711 ], [ %4567, %4792 ], [ %5051, %5040 ], [ %4567, %4553 ]
  %4699 = phi float [ %4568, %4711 ], [ %4568, %4792 ], [ %5052, %5040 ], [ %4568, %4553 ]
  %4700 = phi float [ %4569, %4711 ], [ %4569, %4792 ], [ %4898, %5040 ], [ %4569, %4553 ]
  %4701 = phi float [ %4570, %4711 ], [ %4570, %4792 ], [ %4899, %5040 ], [ %4570, %4553 ]
  %4702 = phi float [ %4571, %4711 ], [ %4571, %4792 ], [ %4900, %5040 ], [ %4571, %4553 ]
  %4703 = phi float [ %4572, %4711 ], [ %4572, %4792 ], [ %4972, %5040 ], [ %4572, %4553 ]
  %4704 = phi float [ %4573, %4711 ], [ %4573, %4792 ], [ %4969, %5040 ], [ %4573, %4553 ]
  %4705 = phi float [ %4574, %4711 ], [ %4574, %4792 ], [ %4966, %5040 ], [ %4574, %4553 ]
  %4706 = phi float [ %4575, %4711 ], [ %4575, %4792 ], [ %4915, %5040 ], [ %4575, %4553 ]
  %4707 = phi float [ %4576, %4711 ], [ %4576, %4792 ], [ %4910, %5040 ], [ %4576, %4553 ]
  %4708 = phi float [ %4577, %4711 ], [ %4577, %4792 ], [ %4911, %5040 ], [ %4577, %4553 ]
  %4709 = phi float [ %4578, %4711 ], [ %4578, %4792 ], [ %4912, %5040 ], [ %4578, %4553 ]
  %4710 = icmp eq i32 %4635, %4552
  br i1 %4710, label %5053, label %4553

; <label>:4711                                    ; preds = %4553
  %4712 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4713 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4714 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4715 = extractvalue %dx.types.ResRet.f32 %4595, 1
  %4716 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4717 = extractvalue %dx.types.ResRet.i32 %4591, 3
  %4718 = extractvalue %dx.types.ResRet.i32 %4591, 2
  %4719 = add i32 %4717, 0
  %4720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4719, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4720, %dx.types.Handle %4721, float %4644, float %4651, float undef, float undef, i32 0, i32 0, i32 undef, float %4672, float %4674, float undef, float %4673, float %4675, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = fmul fast float %4723, %4716
  %4725 = fadd fast float %4724, %4715
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fmul fast float %4644, %4600
  %4728 = call float @dx.op.tertiary.f32(i32 46, float %4601, float %4651, float %4727)  ; FMad(a,b,c)
  %4729 = fadd fast float %4728, %4714
  %4730 = fmul fast float %4644, %4602
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4603, float %4651, float %4730)  ; FMad(a,b,c)
  %4732 = fadd fast float %4731, %4713
  %4733 = fmul fast float %4672, %4600
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4601, float %4674, float %4733)  ; FMad(a,b,c)
  %4735 = fmul fast float %4672, %4602
  %4736 = call float @dx.op.tertiary.f32(i32 46, float %4603, float %4674, float %4735)  ; FMad(a,b,c)
  %4737 = fmul fast float %4673, %4600
  %4738 = call float @dx.op.tertiary.f32(i32 46, float %4601, float %4675, float %4737)  ; FMad(a,b,c)
  %4739 = fmul fast float %4673, %4602
  %4740 = call float @dx.op.tertiary.f32(i32 46, float %4603, float %4675, float %4739)  ; FMad(a,b,c)
  %4741 = add i32 %4718, 0
  %4742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4741, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4743 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4742, %dx.types.Handle %4721, float %4729, float %4732, float undef, float undef, i32 0, i32 0, i32 undef, float %4734, float %4736, float undef, float %4738, float %4740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4744 = extractvalue %dx.types.ResRet.f32 %4743, 0
  %4745 = and i32 %4636, 1024
  %4746 = icmp ne i32 %4745, 0
  %4747 = fcmp fast ogt float %4744, 0x3FE0101020000000
  %4748 = uitofp i1 %4747 to float
  %4749 = select i1 %4746, float %4748, float %4744
  %4750 = and i32 %4636, 8192
  %4751 = icmp ne i32 %4750, 0
  %4752 = select i1 %4751, float %4712, float 1.000000e+00
  %4753 = fmul fast float %4644, 2.000000e+00
  %4754 = fadd fast float %4753, -1.000000e+00
  %4755 = call float @dx.op.unary.f32(i32 6, float %4754)  ; FAbs(value)
  %4756 = fmul fast float %4755, %4633
  %4757 = fsub fast float %4756, %4633
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = fmul fast float %4651, 2.000000e+00
  %4760 = fadd fast float %4759, -1.000000e+00
  %4761 = call float @dx.op.unary.f32(i32 6, float %4760)  ; FAbs(value)
  %4762 = fmul fast float %4761, %4634
  %4763 = fsub fast float %4762, %4634
  %4764 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4765 = fmul fast float %4663, %4596
  %4766 = fsub fast float %4765, %4596
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = fmul fast float %4726, %4752
  %4769 = fmul fast float %4768, %4723
  %4770 = fmul fast float %4769, %4758
  %4771 = fmul fast float %4770, %4749
  %4772 = fmul fast float %4771, %4764
  %4773 = fmul fast float %4772, %4767
  %4774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4774, 1
  %4776 = extractvalue %dx.types.CBufRet.f32 %4774, 0
  %4777 = fsub fast float %4680, %4776
  %4778 = fmul fast float %4777, %4775
  %4779 = call float @dx.op.unary.f32(i32 7, float %4778)  ; Saturate(value)
  %4780 = fmul fast float %4773, %4597
  %4781 = fadd fast float %4773, %4597
  %4782 = fmul fast float %4781, %4606
  %4783 = fsub fast float %4782, %4606
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = and i32 %4636, 128
  %4786 = icmp ne i32 %4785, 0
  %4787 = select i1 %4786, float %4784, float %4780
  %4788 = fmul fast float %4787, %4779
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4791 = fcmp fast ugt float %4788, %4790
  br i1 %4791, label %4792, label %4685

; <label>:4792                                    ; preds = %4711
  %4793 = select i1 %4751, float %4788, float 0.000000e+00
  %4794 = fadd fast float %4793, %4555
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  br i1 %4751, label %4685, label %4796

; <label>:4796                                    ; preds = %4792
  %4797 = and i32 %4636, 4
  %4798 = and i32 %4636, 8
  %4799 = add i32 %4592, 0
  %4800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4799, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4800, %dx.types.Handle %4801, float %4729, float %4732, float undef, float undef, i32 0, i32 0, i32 undef, float %4734, float %4736, float undef, float %4738, float %4740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = extractvalue %dx.types.ResRet.f32 %4802, 3
  %4807 = bitcast float %4618 to i32
  %4808 = and i32 %4807, 255
  %4809 = uitofp i32 %4808 to float
  %4810 = lshr i32 %4807, 8
  %4811 = and i32 %4810, 255
  %4812 = uitofp i32 %4811 to float
  %4813 = fmul fast float %4806, %4809
  %4814 = fadd fast float %4813, %4812
  %4815 = fmul fast float %4814, 0x3F70101000000000
  %4816 = add i32 %4593, 0
  %4817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4816, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4818 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4817, %dx.types.Handle %4801, float %4729, float %4732, float undef, float undef, i32 0, i32 0, i32 undef, float %4734, float %4736, float undef, float %4738, float %4740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.ResRet.f32 %4818, 1
  %4821 = extractvalue %dx.types.ResRet.f32 %4818, 2
  %4822 = extractvalue %dx.types.ResRet.f32 %4818, 3
  %4823 = bitcast float %4612 to i32
  %4824 = and i32 %4823, 255
  %4825 = uitofp i32 %4824 to float
  %4826 = lshr i32 %4823, 8
  %4827 = and i32 %4826, 255
  %4828 = uitofp i32 %4827 to float
  %4829 = lshr i32 %4823, 16
  %4830 = and i32 %4829, 255
  %4831 = uitofp i32 %4830 to float
  %4832 = fmul fast float %4831, 0x3F70101000000000
  %4833 = fmul fast float %4819, %4825
  %4834 = fadd fast float %4833, %4828
  %4835 = fmul fast float %4834, 0x3F70101000000000
  %4836 = fadd fast float %4820, -5.000000e-01
  %4837 = fadd fast float %4822, -5.000000e-01
  %4838 = fmul fast float %4836, %4832
  %4839 = fmul fast float %4837, %4832
  %4840 = fadd fast float %4838, 5.000000e-01
  %4841 = fadd fast float %4839, 5.000000e-01
  %4842 = fmul fast float %4803, %4621
  %4843 = fmul fast float %4804, %4622
  %4844 = fmul fast float %4805, %4623
  %4845 = fmul fast float %4840, 2.000000e+00
  %4846 = fadd fast float %4845, -1.000000e+00
  %4847 = fmul fast float %4841, 2.000000e+00
  %4848 = fadd fast float %4847, -1.000000e+00
  %4849 = fadd fast float %4846, %4848
  %4850 = fmul fast float %4849, 5.000000e-01
  %4851 = fsub fast float %4846, %4848
  %4852 = fmul fast float %4851, 5.000000e-01
  %4853 = call float @dx.op.unary.f32(i32 6, float %4850)  ; FAbs(value)
  %4854 = fsub fast float 1.000000e+00, %4853
  %4855 = call float @dx.op.unary.f32(i32 6, float %4852)  ; FAbs(value)
  %4856 = fsub fast float %4854, %4855
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4850, float %4852, float %4856, float %4850, float %4852, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.unary.f32(i32 25, float %4857)  ; Rsqrt(value)
  %4859 = fmul fast float %4850, %4858
  %4860 = fmul fast float %4852, %4858
  %4861 = fmul fast float %4858, %4856
  %4862 = fmul fast float %4861, %4586
  %4863 = fmul fast float %4861, %4587
  %4864 = fmul fast float %4861, %4588
  %4865 = fmul fast float %4859, %4609
  %4866 = fmul fast float %4859, %4610
  %4867 = fmul fast float %4859, %4611
  %4868 = fadd fast float %4865, %4862
  %4869 = fadd fast float %4866, %4863
  %4870 = fadd fast float %4867, %4864
  %4871 = fmul fast float %4860, %4615
  %4872 = fmul fast float %4860, %4616
  %4873 = fmul fast float %4860, %4617
  %4874 = fadd fast float %4868, %4871
  %4875 = fadd fast float %4869, %4872
  %4876 = fadd fast float %4870, %4873
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4874, float %4875, float %4876, float %4874, float %4875, float %4876)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = call float @dx.op.unary.f32(i32 25, float %4877)  ; Rsqrt(value)
  %4879 = fmul fast float %4874, %4878
  %4880 = fmul fast float %4875, %4878
  %4881 = fmul fast float %4876, %4878
  %4882 = icmp ne i32 %4798, 0
  %4883 = select i1 %4882, float 1.000000e+00, float 0.000000e+00
  %4884 = fmul fast float %4788, %4883
  %4885 = and i32 %4636, 1
  %4886 = icmp eq i32 %4885, 0
  br i1 %4886, label %4887, label %4891

; <label>:4887                                    ; preds = %4796
  %4888 = fsub fast float %4879, %4569
  %4889 = fsub fast float %4880, %4570
  %4890 = fsub fast float %4881, %4571
  br label %4891

; <label>:4891                                    ; preds = %4887, %4796
  %4892 = phi float [ %4888, %4887 ], [ %4879, %4796 ]
  %4893 = phi float [ %4889, %4887 ], [ %4880, %4796 ]
  %4894 = phi float [ %4890, %4887 ], [ %4881, %4796 ]
  %4895 = fmul float %4894, %4884
  %4896 = fmul float %4893, %4884
  %4897 = fmul float %4892, %4884
  %4898 = fadd fast float %4897, %4569
  %4899 = fadd fast float %4896, %4570
  %4900 = fadd fast float %4895, %4571
  %4901 = icmp ne i32 %4797, 0
  %4902 = select i1 %4901, float 1.000000e+00, float 0.000000e+00
  %4903 = fmul fast float %4788, %4902
  %4904 = fsub fast float %4842, %4576
  %4905 = fsub fast float %4843, %4577
  %4906 = fsub fast float %4844, %4578
  %4907 = fmul fast float %4904, %4903
  %4908 = fmul fast float %4905, %4903
  %4909 = fmul fast float %4906, %4903
  %4910 = fadd fast float %4907, %4576
  %4911 = fadd fast float %4908, %4577
  %4912 = fadd fast float %4909, %4578
  %4913 = fsub fast float %4815, %4575
  %4914 = fmul fast float %4913, %4903
  %4915 = fadd fast float %4914, %4575
  %4916 = fmul fast float %4903, %4562
  %4917 = fsub fast float %4562, %4916
  %4918 = fmul fast float %4903, %4561
  %4919 = fsub fast float %4561, %4918
  %4920 = bitcast float %4630 to i32
  %4921 = lshr i32 %4920, 16
  %4922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4921)  ; LegacyF16ToF32(value)
  %4923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4924 = extractvalue %dx.types.ResRet.i32 %4923, 0
  %4925 = and i32 %4924, 1
  %4926 = icmp eq i32 %4925, 0
  br i1 %4926, label %4927, label %4952

; <label>:4927                                    ; preds = %4891
  %4928 = fadd fast float %4815, 0xBFB99999A0000000
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = fmul fast float %4929, 0x3FF1C71C80000000
  %4931 = fsub fast float 1.000000e+00, %4930
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fmul fast float %4932, %4842
  %4934 = fmul fast float %4932, %4843
  %4935 = fmul fast float %4932, %4844
  %4936 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4939 = call float @dx.op.binary.f32(i32 35, float %4937, float %4938)  ; FMax(a,b)
  %4940 = call float @dx.op.binary.f32(i32 35, float %4936, float %4939)  ; FMax(a,b)
  %4941 = fcmp fast ogt float %4940, 0.000000e+00
  %4942 = bitcast float %4940 to i32
  %4943 = sub nsw i32 2129859010, %4942
  %4944 = bitcast i32 %4943 to float
  %4945 = select i1 %4941, float %4944, float 0.000000e+00
  %4946 = fmul fast float %4936, %4922
  %4947 = fmul fast float %4937, %4922
  %4948 = fmul fast float %4938, %4922
  %4949 = fmul fast float %4946, %4945
  %4950 = fmul fast float %4947, %4945
  %4951 = fmul fast float %4948, %4945
  br label %4952

; <label>:4952                                    ; preds = %4927, %4891
  %4953 = phi float [ %4922, %4891 ], [ %4949, %4927 ]
  %4954 = phi float [ %4922, %4891 ], [ %4950, %4927 ]
  %4955 = phi float [ %4922, %4891 ], [ %4951, %4927 ]
  %4956 = fsub fast float %4953, %4563
  %4957 = fsub fast float %4954, %4564
  %4958 = fsub fast float %4955, %4565
  %4959 = fmul fast float %4956, %4903
  %4960 = fmul fast float %4957, %4903
  %4961 = fmul fast float %4958, %4903
  %4962 = fadd fast float %4959, %4563
  %4963 = fadd fast float %4960, %4564
  %4964 = fadd fast float %4961, %4565
  %4965 = fadd fast float %4788, %4574
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = fsub fast float %4835, %4573
  %4968 = fmul fast float %4967, %4884
  %4969 = fadd fast float %4968, %4573
  %4970 = fsub fast float %4821, %4572
  %4971 = fmul fast float %4970, %4884
  %4972 = fadd fast float %4971, %4572
  br i1 %4886, label %4981, label %4973

; <label>:4973                                    ; preds = %4952
  %4974 = and i32 %4636, 32768
  %4975 = icmp eq i32 %4974, 0
  br i1 %4975, label %4991, label %4976

; <label>:4976                                    ; preds = %4973
  %4977 = fmul fast float %4884, 1.270000e+02
  %4978 = fadd fast float %4977, %4558
  %4979 = fadd fast float %4977, %4559
  %4980 = fadd fast float %4977, %4560
  br label %4991

; <label>:4981                                    ; preds = %4952
  %4982 = fsub fast float 1.270000e+02, %4558
  %4983 = fsub fast float 1.270000e+02, %4559
  %4984 = fsub fast float 1.270000e+02, %4560
  %4985 = fmul fast float %4884, %4982
  %4986 = fmul fast float %4884, %4983
  %4987 = fmul fast float %4884, %4984
  %4988 = fadd fast float %4985, %4558
  %4989 = fadd fast float %4986, %4559
  %4990 = fadd fast float %4987, %4560
  br label %4991

; <label>:4991                                    ; preds = %4981, %4976, %4973
  %4992 = phi float [ %4978, %4976 ], [ %4558, %4973 ], [ %4988, %4981 ]
  %4993 = phi float [ %4979, %4976 ], [ %4559, %4973 ], [ %4989, %4981 ]
  %4994 = phi float [ %4980, %4976 ], [ %4560, %4973 ], [ %4990, %4981 ]
  %4995 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 0
  %4998 = extractvalue %dx.types.CBufRet.f32 %4996, 1
  %4999 = fmul fast float %4998, %4995
  %5000 = fadd fast float %4999, %4997
  %5001 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5002 = bitcast float %4624 to i32
  %5003 = and i32 %5002, 65535
  %5004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5003)  ; LegacyF16ToF32(value)
  %5005 = lshr i32 %5002, 16
  %5006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5005)  ; LegacyF16ToF32(value)
  %5007 = fcmp fast oge float %5004, 0.000000e+00
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5010 = select i1 %5007, float %5004, float %5009
  %5011 = fadd fast float %5010, %5006
  %5012 = fsub fast float %5001, %4557
  %5013 = fmul fast float %5012, %4788
  %5014 = fadd fast float %5013, %4557
  %5015 = fmul fast float %5011, %4788
  %5016 = call float @dx.op.binary.f32(i32 35, float %4556, float %5015)  ; FMax(a,b)
  %5017 = and i32 %4636, 16
  %5018 = icmp eq i32 %5017, 0
  br i1 %5018, label %5040, label %5019

; <label>:5019                                    ; preds = %4991
  %5020 = add i32 %4627, 0
  %5021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5020, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5022 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5021, %dx.types.Handle %4801, float %4729, float %4732, float undef, float undef, i32 0, i32 0, i32 undef, float %4734, float %4736, float undef, float %4738, float %4740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.ResRet.f32 %5022, 1
  %5025 = extractvalue %dx.types.ResRet.f32 %5022, 2
  %5026 = and i32 %4920, 65535
  %5027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5026)  ; LegacyF16ToF32(value)
  %5028 = fmul fast float %5023, %4621
  %5029 = fmul fast float %5024, %4622
  %5030 = fmul fast float %5025, %4623
  %5031 = and i32 %4636, 16384
  %5032 = icmp ne i32 %5031, 0
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 0
  %5035 = select i1 %5032, float %5034, float 1.000000e+00
  %5036 = fmul fast float %5035, %5027
  %5037 = fmul fast float %5028, %5036
  %5038 = fmul fast float %5029, %5036
  %5039 = fmul fast float %5030, %5036
  br label %5040

; <label>:5040                                    ; preds = %5019, %4991
  %5041 = phi float [ %5037, %5019 ], [ 0.000000e+00, %4991 ]
  %5042 = phi float [ %5038, %5019 ], [ 0.000000e+00, %4991 ]
  %5043 = phi float [ %5039, %5019 ], [ 0.000000e+00, %4991 ]
  %5044 = fsub fast float %5041, %4566
  %5045 = fsub fast float %5042, %4567
  %5046 = fsub fast float %5043, %4568
  %5047 = fmul fast float %5044, %4788
  %5048 = fmul fast float %5045, %4788
  %5049 = fmul fast float %5046, %4788
  %5050 = fadd fast float %5047, %4566
  %5051 = fadd fast float %5048, %4567
  %5052 = fadd fast float %5049, %4568
  br label %4685

; <label>:5053                                    ; preds = %4685
  br label %5054

; <label>:5054                                    ; preds = %5053, %4499
  %5055 = phi float [ 0.000000e+00, %4499 ], [ %4686, %5053 ]
  %5056 = phi float [ %4468, %4499 ], [ %4687, %5053 ]
  %5057 = phi float [ %4460, %4499 ], [ %4688, %5053 ]
  %5058 = phi float [ %4450, %4499 ], [ %4689, %5053 ]
  %5059 = phi float [ %4451, %4499 ], [ %4690, %5053 ]
  %5060 = phi float [ %4452, %4499 ], [ %4691, %5053 ]
  %5061 = phi float [ 0.000000e+00, %4499 ], [ %4692, %5053 ]
  %5062 = phi float [ 0.000000e+00, %4499 ], [ %4693, %5053 ]
  %5063 = phi float [ %4453, %4499 ], [ %4694, %5053 ]
  %5064 = phi float [ %4454, %4499 ], [ %4695, %5053 ]
  %5065 = phi float [ %4455, %4499 ], [ %4696, %5053 ]
  %5066 = phi float [ %4444, %4499 ], [ %4697, %5053 ]
  %5067 = phi float [ %4445, %4499 ], [ %4698, %5053 ]
  %5068 = phi float [ %4446, %4499 ], [ %4699, %5053 ]
  %5069 = phi float [ %4494, %4499 ], [ %4700, %5053 ]
  %5070 = phi float [ %4495, %4499 ], [ %4701, %5053 ]
  %5071 = phi float [ %4496, %4499 ], [ %4702, %5053 ]
  %5072 = phi float [ %4458, %4499 ], [ %4703, %5053 ]
  %5073 = phi float [ %4457, %4499 ], [ %4704, %5053 ]
  %5074 = phi float [ 0.000000e+00, %4499 ], [ %4705, %5053 ]
  %5075 = phi float [ %4456, %4499 ], [ %4706, %5053 ]
  %5076 = phi float [ %4447, %4499 ], [ %4707, %5053 ]
  %5077 = phi float [ %4448, %4499 ], [ %4708, %5053 ]
  %5078 = phi float [ %4449, %4499 ], [ %4709, %5053 ]
  %5079 = call float @dx.op.dot3.f32(i32 55, float %5069, float %5070, float %5071, float %5069, float %5070, float %5071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = call float @dx.op.unary.f32(i32 25, float %5079)  ; Rsqrt(value)
  %5081 = fmul fast float %5080, %5069
  %5082 = fmul fast float %5080, %5070
  %5083 = fmul fast float %5080, %5071
  %5084 = fadd fast float %5074, %1285
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5081, float %5082, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = call float @dx.op.unary.f32(i32 25, float %5086)  ; Rsqrt(value)
  %5088 = fmul fast float %5087, %5081
  %5089 = fmul fast float %5087, %5082
  %5090 = fmul fast float %5087, %5083
  br label %5091

; <label>:5091                                    ; preds = %5054, %4441
  %5092 = phi float [ %5058, %5054 ], [ %4450, %4441 ]
  %5093 = phi float [ %5059, %5054 ], [ %4451, %4441 ]
  %5094 = phi float [ %5060, %5054 ], [ %4452, %4441 ]
  %5095 = phi float [ %5063, %5054 ], [ %4453, %4441 ]
  %5096 = phi float [ %5064, %5054 ], [ %4454, %4441 ]
  %5097 = phi float [ %5065, %5054 ], [ %4455, %4441 ]
  %5098 = phi float [ %5088, %5054 ], [ %4494, %4441 ]
  %5099 = phi float [ %5089, %5054 ], [ %4495, %4441 ]
  %5100 = phi float [ %5090, %5054 ], [ %4496, %4441 ]
  %5101 = phi float [ %5076, %5054 ], [ %4447, %4441 ]
  %5102 = phi float [ %5077, %5054 ], [ %4448, %4441 ]
  %5103 = phi float [ %5078, %5054 ], [ %4449, %4441 ]
  %5104 = phi float [ %5066, %5054 ], [ %4444, %4441 ]
  %5105 = phi float [ %5067, %5054 ], [ %4445, %4441 ]
  %5106 = phi float [ %5068, %5054 ], [ %4446, %4441 ]
  %5107 = phi float [ %5075, %5054 ], [ %4456, %4441 ]
  %5108 = phi float [ %5085, %5054 ], [ %1285, %4441 ]
  %5109 = phi float [ %5073, %5054 ], [ %4457, %4441 ]
  %5110 = phi float [ %5072, %5054 ], [ %4458, %4441 ]
  %5111 = phi float [ %5062, %5054 ], [ 0.000000e+00, %4441 ]
  %5112 = phi float [ %5061, %5054 ], [ 0.000000e+00, %4441 ]
  %5113 = phi float [ %5055, %5054 ], [ 0.000000e+00, %4441 ]
  %5114 = phi float [ %5056, %5054 ], [ %4468, %4441 ]
  %5115 = phi float [ %5057, %5054 ], [ %4460, %4441 ]
  %5116 = add i32 %60, 392
  %5117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %5116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5118 = extractvalue %dx.types.ResRet.i32 %5117, 0
  %5119 = extractvalue %dx.types.ResRet.i32 %5117, 1
  %5120 = extractvalue %dx.types.ResRet.i32 %5117, 2
  %5121 = extractvalue %dx.types.ResRet.i32 %5117, 3
  %5122 = bitcast i32 %5118 to float
  %5123 = bitcast i32 %5119 to float
  %5124 = bitcast i32 %5120 to float
  %5125 = bitcast i32 %5121 to float
  %5126 = fsub fast float %5101, %5122
  %5127 = fsub fast float %5102, %5123
  %5128 = fsub fast float %5103, %5124
  %5129 = fmul fast float %5126, %198
  %5130 = fmul fast float %5127, %198
  %5131 = fmul fast float %5128, %198
  %5132 = fadd fast float %5129, %5122
  %5133 = fadd fast float %5130, %5123
  %5134 = fadd fast float %5131, %5124
  %5135 = fsub fast float %5108, %5125
  %5136 = fmul fast float %5135, %198
  %5137 = fadd fast float %5136, %5125
  %5138 = fadd fast float %5107, 0xBFB99999A0000000
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = fmul fast float %5139, 0x3FF1C71C80000000
  %5141 = call float @dx.op.binary.f32(i32 36, float %5107, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5142 = fsub fast float 1.000000e+00, %5140
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fmul fast float %5132, %5143
  %5145 = fmul fast float %5133, %5143
  %5146 = fmul fast float %5134, %5143
  %5147 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5148 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5149 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5150 = fmul fast float %5132, %5140
  %5151 = fmul fast float %5133, %5140
  %5152 = fmul fast float %5134, %5140
  %5153 = fadd fast float %5150, %5141
  %5154 = fadd fast float %5151, %5141
  %5155 = fadd fast float %5152, %5141
  %5156 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5157 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5158 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5159 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5161 = extractvalue %dx.types.ResRet.i32 %5160, 0
  %5162 = and i32 %5161, 1
  %5163 = icmp eq i32 %5162, 0
  br i1 %5163, label %5178, label %5164

; <label>:5164                                    ; preds = %5091
  %5165 = call float @dx.op.binary.f32(i32 35, float %5148, float %5149)  ; FMax(a,b)
  %5166 = call float @dx.op.binary.f32(i32 35, float %5147, float %5165)  ; FMax(a,b)
  %5167 = fcmp fast ogt float %5166, 0.000000e+00
  %5168 = bitcast float %5166 to i32
  %5169 = sub nsw i32 2129859010, %5168
  %5170 = bitcast i32 %5169 to float
  %5171 = select i1 %5167, float %5170, float 0.000000e+00
  %5172 = fmul fast float %5147, %5095
  %5173 = fmul fast float %5148, %5096
  %5174 = fmul fast float %5149, %5097
  %5175 = fmul fast float %5172, %5171
  %5176 = fmul fast float %5173, %5171
  %5177 = fmul fast float %5174, %5171
  br label %5178

; <label>:5178                                    ; preds = %5164, %5091
  %5179 = phi float [ %5175, %5164 ], [ %5095, %5091 ]
  %5180 = phi float [ %5176, %5164 ], [ %5096, %5091 ]
  %5181 = phi float [ %5177, %5164 ], [ %5097, %5091 ]
  %5182 = call float @dx.op.binary.f32(i32 36, float %5092, float 1.270000e+02)  ; FMin(a,b)
  %5183 = call float @dx.op.binary.f32(i32 36, float %5093, float 1.270000e+02)  ; FMin(a,b)
  %5184 = call float @dx.op.binary.f32(i32 36, float %5094, float 1.270000e+02)  ; FMin(a,b)
  %5185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.i32 %5185, 3
  %5187 = and i32 %5186, 8
  %5188 = icmp ne i32 %5187, 0
  %5189 = call float @dx.op.binary.f32(i32 35, float %5147, float %5132)  ; FMax(a,b)
  %5190 = call float @dx.op.binary.f32(i32 35, float %5148, float %5132)  ; FMax(a,b)
  %5191 = call float @dx.op.binary.f32(i32 35, float %5149, float %5132)  ; FMax(a,b)
  %5192 = call float @dx.op.dot3.f32(i32 55, float %5147, float %5148, float %5149, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = select i1 %258, float %5132, float %5147
  %5194 = select i1 %258, float %5192, float %5148
  %5195 = select i1 %258, float 1.000000e+00, float %5149
  %5196 = select i1 %5188, float %5189, float %5193
  %5197 = select i1 %5188, float %5190, float %5194
  %5198 = select i1 %5188, float %5191, float %5195
  %5199 = call float @dx.op.dot3.f32(i32 55, float %5179, float %5180, float %5181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5200 = select i1 %258, float %5199, float %5179
  %5201 = select i1 %258, float %5199, float %5180
  %5202 = select i1 %258, float %5199, float %5181
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.CBufRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.CBufRet.f32 %5203, 2
  %5207 = fadd fast float %5204, %164
  %5208 = fadd fast float %5205, %165
  %5209 = fadd fast float %5206, %166
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.CBufRet.f32 %5210, 1
  %5213 = fsub fast float %5207, %5211
  %5214 = fsub fast float %5208, %5212
  %5215 = fmul fast float %5213, %5213
  %5216 = fmul fast float %5214, %5214
  %5217 = fadd fast float %5215, %5216
  %5218 = call float @dx.op.unary.f32(i32 24, float %5217)  ; Sqrt(value)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5210, 2
  %5220 = fcmp fast olt float %5218, %5219
  br i1 %5220, label %5221, label %5288

; <label>:5221                                    ; preds = %5178
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 0
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.CBufRet.f32 %5222, 1
  %5229 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5230 = extractvalue %dx.types.CBufRet.f32 %5226, 1
  %5231 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5232 = extractvalue %dx.types.CBufRet.f32 %5224, 3
  %5233 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5234 = fadd fast float %5231, %5207
  %5235 = fadd fast float %5232, %5208
  %5236 = fadd fast float %5233, %5209
  %5237 = fmul fast float %5234, %5223
  %5238 = call float @dx.op.tertiary.f32(i32 46, float %5235, float %5225, float %5237)  ; FMad(a,b,c)
  %5239 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5227, float %5238)  ; FMad(a,b,c)
  %5240 = fmul fast float %5234, %5228
  %5241 = call float @dx.op.tertiary.f32(i32 46, float %5235, float %5229, float %5240)  ; FMad(a,b,c)
  %5242 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5230, float %5241)  ; FMad(a,b,c)
  %5243 = fsub fast float %5239, %5231
  %5244 = fsub fast float %5242, %5232
  %5245 = fsub fast float %5243, %5211
  %5246 = fadd fast float %5245, %5219
  %5247 = fsub fast float %5244, %5212
  %5248 = fadd fast float %5247, %5219
  %5249 = extractvalue %dx.types.CBufRet.f32 %5210, 3
  %5250 = fmul fast float %5246, %5249
  %5251 = fmul fast float %5248, %5249
  %5252 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5253 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5254 = fsub fast float 1.000000e+00, %5252
  %5255 = fsub fast float 1.000000e+00, %5253
  %5256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5254, float %5255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = fcmp fast ugt float %5257, 0.000000e+00
  br i1 %5258, label %5259, label %5562

; <label>:5259                                    ; preds = %5221
  %5260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.f32 %5260, 2
  %5262 = fmul fast float %5261, %5257
  %5263 = extractvalue %dx.types.CBufRet.f32 %5260, 3
  %5264 = fadd fast float %5263, %5262
  %5265 = extractvalue %dx.types.CBufRet.f32 %5226, 2
  %5266 = fadd fast float %5264, %5233
  %5267 = fmul fast float %5239, %5227
  %5268 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5230, float %5267)  ; FMad(a,b,c)
  %5269 = call float @dx.op.tertiary.f32(i32 46, float %5266, float %5265, float %5268)  ; FMad(a,b,c)
  %5270 = fsub fast float %5269, %5233
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5273 = fsub fast float %5270, %5272
  %5274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5254, float %5255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.ResRet.f32 %5274, 2
  %5278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5254, float %5255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.ResRet.f32 %5278, 2
  %5282 = fadd fast float %5279, %5275
  %5283 = fmul fast float %5282, 0x3F847AE140000000
  %5284 = fadd fast float %5280, %5276
  %5285 = fmul fast float %5284, 0x3F847AE140000000
  %5286 = fadd fast float %5281, %5277
  %5287 = fmul fast float %5286, 0x3F847AE140000000
  br label %5562

; <label>:5288                                    ; preds = %5178
  %5289 = and i32 %234, 1
  %5290 = icmp eq i32 %5289, 0
  br i1 %5290, label %5562, label %5291

; <label>:5291                                    ; preds = %5288
  %5292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5292, 0
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 0
  %5298 = extractvalue %dx.types.CBufRet.f32 %5292, 1
  %5299 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5300 = extractvalue %dx.types.CBufRet.f32 %5296, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5292, 3
  %5302 = extractvalue %dx.types.CBufRet.f32 %5294, 3
  %5303 = extractvalue %dx.types.CBufRet.f32 %5296, 3
  %5304 = fadd fast float %5301, %5207
  %5305 = fadd fast float %5302, %5208
  %5306 = fadd fast float %5303, %5209
  %5307 = fmul fast float %5304, %5293
  %5308 = call float @dx.op.tertiary.f32(i32 46, float %5305, float %5295, float %5307)  ; FMad(a,b,c)
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %5306, float %5297, float %5308)  ; FMad(a,b,c)
  %5310 = fmul fast float %5304, %5298
  %5311 = call float @dx.op.tertiary.f32(i32 46, float %5305, float %5299, float %5310)  ; FMad(a,b,c)
  %5312 = call float @dx.op.tertiary.f32(i32 46, float %5306, float %5300, float %5311)  ; FMad(a,b,c)
  %5313 = fsub fast float %5309, %5301
  %5314 = fsub fast float %5312, %5302
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.CBufRet.f32 %5315, 1
  %5318 = extractvalue %dx.types.CBufRet.f32 %5315, 2
  %5319 = extractvalue %dx.types.CBufRet.f32 %5315, 3
  %5320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5321 = extractvalue %dx.types.CBufRet.f32 %5320, 3
  %5322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5323 = extractvalue %dx.types.CBufRet.i32 %5322, 0
  %5324 = extractvalue %dx.types.CBufRet.i32 %5322, 1
  %5325 = udiv i32 %5324, %5323
  %5326 = fsub fast float %5313, %5316
  %5327 = fsub fast float %5314, %5317
  %5328 = call float @dx.op.binary.f32(i32 35, float %5326, float 0.000000e+00)  ; FMax(a,b)
  %5329 = call float @dx.op.binary.f32(i32 35, float %5327, float 0.000000e+00)  ; FMax(a,b)
  %5330 = call float @dx.op.binary.f32(i32 36, float %5328, float %5318)  ; FMin(a,b)
  %5331 = call float @dx.op.binary.f32(i32 36, float %5329, float %5319)  ; FMin(a,b)
  %5332 = add i32 %5323, -1
  %5333 = add i32 %5325, -1
  %5334 = fmul fast float %5330, %5321
  %5335 = fmul fast float %5331, %5321
  %5336 = fptoui float %5334 to i32
  %5337 = fptoui float %5335 to i32
  %5338 = call i32 @dx.op.binary.i32(i32 40, i32 %5336, i32 %5332)  ; UMin(a,b)
  %5339 = call i32 @dx.op.binary.i32(i32 40, i32 %5337, i32 %5333)  ; UMin(a,b)
  %5340 = mul i32 %5339, %5323
  %5341 = add i32 %5340, %5338
  %5342 = shl i32 %5341, 2
  %5343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5342, i32 undef)  ; BufferLoad(srv,index,wot)
  %5344 = extractvalue %dx.types.ResRet.i32 %5343, 0
  %5345 = icmp eq i32 %5344, -1
  br i1 %5345, label %5562, label %5346

; <label>:5346                                    ; preds = %5291
  %5347 = mul i32 %5344, 148
  %5348 = add i32 %5347, 4
  %5349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5348, i32 undef)  ; BufferLoad(srv,index,wot)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = add i32 %5347, 8
  %5352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5351, i32 undef)  ; BufferLoad(srv,index,wot)
  %5353 = extractvalue %dx.types.ResRet.f32 %5352, 0
  %5354 = add i32 %5347, 36
  %5355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5354, i32 undef)  ; BufferLoad(srv,index,wot)
  %5356 = extractvalue %dx.types.ResRet.f32 %5355, 0
  %5357 = add i32 %5347, 60
  %5358 = add i32 %5347, 92
  %5359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.i32 %5359, 0
  %5361 = add i32 %5347, 116
  %5362 = fsub fast float %5313, %5350
  %5363 = fsub fast float %5314, %5353
  %5364 = fmul fast float %5321, %5362
  %5365 = fmul fast float %5321, %5363
  %5366 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5367 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5368 = fsub fast float 1.000000e+00, %5367
  %5369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.f32 %5369, 2
  %5371 = call float @dx.op.unary.f32(i32 83, float %5366)  ; DerivCoarseX(value)
  %5372 = call float @dx.op.unary.f32(i32 83, float %5368)  ; DerivCoarseX(value)
  %5373 = call float @dx.op.unary.f32(i32 84, float %5366)  ; DerivCoarseY(value)
  %5374 = call float @dx.op.unary.f32(i32 84, float %5368)  ; DerivCoarseY(value)
  %5375 = fmul fast float %5371, %5370
  %5376 = fmul fast float %5372, %5370
  %5377 = fmul fast float %5373, %5370
  %5378 = fmul fast float %5374, %5370
  %5379 = call float @dx.op.dot2.f32(i32 54, float %5377, float %5378, float %5377, float %5378)  ; Dot2(ax,ay,bx,by)
  %5380 = call float @dx.op.dot2.f32(i32 54, float %5375, float %5376, float %5375, float %5376)  ; Dot2(ax,ay,bx,by)
  %5381 = call float @dx.op.binary.f32(i32 35, float %5380, float %5379)  ; FMax(a,b)
  %5382 = call float @dx.op.unary.f32(i32 23, float %5381)  ; Log(value)
  %5383 = fmul fast float %5382, 5.000000e-01
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5386 = fadd fast float %5385, %5383
  %5387 = call float @dx.op.binary.f32(i32 35, float %5386, float 0.000000e+00)  ; FMax(a,b)
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 3
  %5390 = fadd fast float %5389, %5387
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 3
  %5393 = fadd fast float %5390, %5392
  %5394 = add i32 %5360, 0
  %5395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5394, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5396 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5395, i32 0)  ; GetDimensions(handle,mipLevel)
  %5397 = extractvalue %dx.types.Dimensions %5396, 0
  %5398 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5397)  ; FirstbitLo(value)
  %5399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.i32 %5399, 1
  %5401 = sub nsw i32 %5400, %5398
  %5402 = sitofp i32 %5401 to float
  %5403 = fsub fast float %5393, %5402
  %5404 = call float @dx.op.binary.f32(i32 35, float %5403, float 0.000000e+00)  ; FMax(a,b)
  %5405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5395, %dx.types.Handle %52, float %5366, float %5368, float %5356, float undef, i32 0, i32 0, i32 undef, float %5404)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 0
  %5407 = fcmp ule float %5406, 0x3FE0101020000000
  %5408 = extractvalue %dx.types.CBufRet.i32 %5399, 0
  %5409 = and i32 %5408, 128
  %5410 = icmp ne i32 %5409, 0
  %5411 = and i1 %5407, %5410
  br i1 %5411, label %5562, label %5412

; <label>:5412                                    ; preds = %5346
  %5413 = add i32 %5347, 20
  %5414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5413, i32 undef)  ; BufferLoad(srv,index,wot)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = add i32 %5347, 24
  %5417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5416, i32 undef)  ; BufferLoad(srv,index,wot)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = add i32 %5347, 40
  %5420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5419, i32 undef)  ; BufferLoad(srv,index,wot)
  %5421 = extractvalue %dx.types.ResRet.f32 %5420, 0
  %5422 = add i32 %5347, 96
  %5423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.i32 %5423, 0
  %5425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5426 = extractvalue %dx.types.CBufRet.f32 %5425, 2
  %5427 = fmul fast float %5426, %5366
  %5428 = fmul fast float %5426, %5368
  %5429 = extractvalue %dx.types.CBufRet.f32 %5425, 3
  %5430 = fadd fast float %5427, %5429
  %5431 = fadd fast float %5428, %5429
  %5432 = add i32 %5424, 0
  %5433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5432, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5434 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5433, i32 0)  ; GetDimensions(handle,mipLevel)
  %5435 = extractvalue %dx.types.Dimensions %5434, 0
  %5436 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5435)  ; FirstbitLo(value)
  %5437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.i32 %5437, 1
  %5439 = sub nsw i32 %5438, %5436
  %5440 = sitofp i32 %5439 to float
  %5441 = fsub fast float %5390, %5440
  %5442 = call float @dx.op.binary.f32(i32 35, float %5441, float 0.000000e+00)  ; FMax(a,b)
  %5443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5433, %dx.types.Handle %52, float %5430, float %5431, float %5421, float undef, i32 0, i32 0, i32 undef, float %5442)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 0
  %5445 = fmul fast float %5444, %5415
  %5446 = fadd fast float %5445, %5418
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 3
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 3
  %5455 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5456 = fadd fast float %5452, %5313
  %5457 = fadd fast float %5454, %5314
  %5458 = fadd fast float %5446, %5455
  %5459 = fmul fast float %5456, %5448
  %5460 = call float @dx.op.tertiary.f32(i32 46, float %5457, float %5449, float %5459)  ; FMad(a,b,c)
  %5461 = call float @dx.op.tertiary.f32(i32 46, float %5458, float %5450, float %5460)  ; FMad(a,b,c)
  %5462 = fsub fast float %5461, %5455
  %5463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.f32 %5463, 2
  %5465 = fsub fast float %5462, %5464
  %5466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.i32 %5466, 0
  %5468 = call i32 @dx.op.binary.i32(i32 40, i32 %5344, i32 %5467)  ; UMin(a,b)
  %5469 = mul i32 %5468, 36
  %5470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5469, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.i32 %5470, 0
  %5472 = add i32 %5469, 4
  %5473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5474 = extractvalue %dx.types.CBufRet.f32 %5473, 0
  %5475 = fmul fast float %5474, %5366
  %5476 = fmul fast float %5474, %5368
  %5477 = extractvalue %dx.types.CBufRet.f32 %5473, 1
  %5478 = fadd fast float %5475, %5477
  %5479 = fadd fast float %5476, %5477
  %5480 = icmp eq i32 %5471, 0
  br i1 %5480, label %5549, label %5481

; <label>:5481                                    ; preds = %5412
  br label %5482

; <label>:5482                                    ; preds = %5539, %5481
  %5483 = phi float [ %5540, %5539 ], [ 0.000000e+00, %5481 ]
  %5484 = phi float [ %5541, %5539 ], [ 0.000000e+00, %5481 ]
  %5485 = phi float [ %5542, %5539 ], [ 0.000000e+00, %5481 ]
  %5486 = phi float [ %5543, %5539 ], [ 0.000000e+00, %5481 ]
  %5487 = phi float [ %5544, %5539 ], [ 0.000000e+00, %5481 ]
  %5488 = phi float [ %5545, %5539 ], [ 0.000000e+00, %5481 ]
  %5489 = phi i32 [ %5546, %5539 ], [ 0, %5481 ]
  %5490 = shl i32 %5489, 2
  %5491 = add i32 %5357, %5490
  %5492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5491, i32 undef)  ; BufferLoad(srv,index,wot)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 0
  %5494 = add i32 %5361, %5490
  %5495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5494, i32 undef)  ; BufferLoad(srv,index,wot)
  %5496 = extractvalue %dx.types.ResRet.i32 %5495, 0
  %5497 = add i32 %5496, 0
  %5498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5497, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5499 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5498, i32 0)  ; GetDimensions(handle,mipLevel)
  %5500 = extractvalue %dx.types.Dimensions %5499, 0
  %5501 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5500)  ; FirstbitLo(value)
  %5502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.i32 %5502, 1
  %5504 = sub nsw i32 %5503, %5501
  %5505 = sitofp i32 %5504 to float
  %5506 = fsub fast float %5390, %5505
  %5507 = call float @dx.op.binary.f32(i32 35, float %5506, float 0.000000e+00)  ; FMax(a,b)
  %5508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5498, %dx.types.Handle %52, float %5478, float %5479, float %5493, float undef, i32 0, i32 0, i32 undef, float %5507)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5509 = extractvalue %dx.types.ResRet.f32 %5508, 0
  %5510 = fcmp fast ogt float %5509, 0.000000e+00
  br i1 %5510, label %5511, label %5539

; <label>:5511                                    ; preds = %5482
  %5512 = add i32 %5472, %5490
  %5513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5512, i32 undef)  ; BufferLoad(srv,index,wot)
  %5514 = extractvalue %dx.types.ResRet.i32 %5513, 0
  %5515 = and i32 %5514, 32767
  %5516 = mul nuw nsw i32 %5515, 928
  %5517 = add nuw nsw i32 %5516, 48
  %5518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5517, i32 undef)  ; BufferLoad(srv,index,wot)
  %5519 = extractvalue %dx.types.ResRet.f32 %5518, 0
  %5520 = extractvalue %dx.types.ResRet.f32 %5518, 1
  %5521 = extractvalue %dx.types.ResRet.f32 %5518, 2
  %5522 = add nuw nsw i32 %5516, 60
  %5523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5522, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5527 = fmul fast float %5519, %5509
  %5528 = fmul fast float %5520, %5509
  %5529 = fmul fast float %5521, %5509
  %5530 = fadd fast float %5527, %5483
  %5531 = fadd fast float %5528, %5484
  %5532 = fadd fast float %5529, %5485
  %5533 = fmul fast float %5524, %5509
  %5534 = fmul fast float %5525, %5509
  %5535 = fmul fast float %5526, %5509
  %5536 = fadd fast float %5533, %5486
  %5537 = fadd fast float %5534, %5487
  %5538 = fadd fast float %5535, %5488
  br label %5539

; <label>:5539                                    ; preds = %5511, %5482
  %5540 = phi float [ %5530, %5511 ], [ %5483, %5482 ]
  %5541 = phi float [ %5531, %5511 ], [ %5484, %5482 ]
  %5542 = phi float [ %5532, %5511 ], [ %5485, %5482 ]
  %5543 = phi float [ %5536, %5511 ], [ %5486, %5482 ]
  %5544 = phi float [ %5537, %5511 ], [ %5487, %5482 ]
  %5545 = phi float [ %5538, %5511 ], [ %5488, %5482 ]
  %5546 = add nuw i32 %5489, 1
  %5547 = icmp eq i32 %5546, %5471
  br i1 %5547, label %5548, label %5482

; <label>:5548                                    ; preds = %5539
  br label %5549

; <label>:5549                                    ; preds = %5548, %5412
  %5550 = phi float [ 0.000000e+00, %5412 ], [ %5540, %5548 ]
  %5551 = phi float [ 0.000000e+00, %5412 ], [ %5541, %5548 ]
  %5552 = phi float [ 0.000000e+00, %5412 ], [ %5542, %5548 ]
  %5553 = phi float [ 0.000000e+00, %5412 ], [ %5543, %5548 ]
  %5554 = phi float [ 0.000000e+00, %5412 ], [ %5544, %5548 ]
  %5555 = phi float [ 0.000000e+00, %5412 ], [ %5545, %5548 ]
  %5556 = fadd fast float %5553, %5550
  %5557 = fmul fast float %5556, 0x3F847AE140000000
  %5558 = fadd fast float %5554, %5551
  %5559 = fmul fast float %5558, 0x3F847AE140000000
  %5560 = fadd fast float %5555, %5552
  %5561 = fmul fast float %5560, 0x3F847AE140000000
  br label %5562

; <label>:5562                                    ; preds = %5549, %5346, %5291, %5288, %5259, %5221
  %5563 = phi float [ %5283, %5259 ], [ 0.000000e+00, %5221 ], [ %5557, %5549 ], [ 0.000000e+00, %5291 ], [ 0.000000e+00, %5346 ], [ 0.000000e+00, %5288 ]
  %5564 = phi float [ %5285, %5259 ], [ 0.000000e+00, %5221 ], [ %5559, %5549 ], [ 0.000000e+00, %5291 ], [ 0.000000e+00, %5346 ], [ 0.000000e+00, %5288 ]
  %5565 = phi float [ %5287, %5259 ], [ 0.000000e+00, %5221 ], [ %5561, %5549 ], [ 0.000000e+00, %5291 ], [ 0.000000e+00, %5346 ], [ 0.000000e+00, %5288 ]
  %5566 = phi float [ %5273, %5259 ], [ -1.310720e+05, %5221 ], [ %5465, %5549 ], [ -1.310720e+05, %5291 ], [ -1.310720e+05, %5346 ], [ -1.310720e+05, %5288 ]
  %5567 = phi i1 [ true, %5259 ], [ false, %5221 ], [ true, %5549 ], [ false, %5291 ], [ false, %5346 ], [ false, %5288 ]
  %5568 = and i32 %234, 3
  %5569 = icmp eq i32 %5568, 1
  %5570 = select i1 %5569, float 1.000000e+00, float 0.000000e+00
  %5571 = fsub fast float %5566, %166
  %5572 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5573 = select i1 %5567, float %5572, float 1.000000e+00
  %5574 = fmul fast float %5573, %5570
  %5575 = icmp eq i32 %5568, 3
  %5576 = select i1 %5575, float 1.000000e+00, float %5574
  %5577 = call float @dx.op.binary.f32(i32 35, float %5113, float %5576)  ; FMax(a,b)
  %5578 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  %5579 = fcmp fast une float %5578, 0.000000e+00
  %5580 = fsub fast float -0.000000e+00, %184
  %5581 = fsub fast float -0.000000e+00, %185
  %5582 = fsub fast float -0.000000e+00, %186
  br i1 %5579, label %5583, label %5745

; <label>:5583                                    ; preds = %5562
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5581, float %5582, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = fmul fast float %5578, 2.500000e+00
  %5586 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5587 = fmul fast float %5578, 0x4013FFFFE0000000
  %5588 = fadd fast float %5587, 0xBFFFFFFFE0000000
  %5589 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5590 = fmul fast float %5578, 0x4004000020000000
  %5591 = fadd fast float %5590, 0xBFF8000040000000
  %5592 = call float @dx.op.unary.f32(i32 7, float %5591)  ; Saturate(value)
  %5593 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5594 = fmul fast float %5138, 1.000000e+01
  %5595 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5596 = fmul fast float %5595, 2.000000e+00
  %5597 = fsub fast float 3.000000e+00, %5596
  %5598 = fmul fast float %5595, %5595
  %5599 = fmul fast float %5598, %5597
  %5600 = fsub fast float 1.000000e+00, %5599
  %5601 = fsub fast float 0x3FE3333340000000, %5159
  %5602 = fmul fast float %5601, 0x400AAAAAA0000000
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = fmul fast float %5600, %5603
  %5605 = fmul fast float %5196, 0x3FEA2B8620000000
  %5606 = fmul fast float %5197, 0x3FEA2B8620000000
  %5607 = fmul fast float %5198, 0x3FEA2B8620000000
  %5608 = fadd fast float %5605, 0x3FC81DFBA0000000
  %5609 = fmul fast float %5608, %5196
  %5610 = fadd fast float %5609, 0x3F910E6020000000
  %5611 = fadd fast float %5606, 0x3FC81DFBA0000000
  %5612 = fmul fast float %5611, %5197
  %5613 = fadd fast float %5612, 0x3F910E6020000000
  %5614 = fadd fast float %5607, 0x3FC81DFBA0000000
  %5615 = fmul fast float %5614, %5198
  %5616 = fadd fast float %5615, 0x3F910E6020000000
  %5617 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5618 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5619 = call float @dx.op.unary.f32(i32 7, float %5616)  ; Saturate(value)
  %5620 = fsub fast float %5617, %5196
  %5621 = fsub fast float %5618, %5197
  %5622 = fsub fast float %5619, %5198
  %5623 = fmul fast float %5620, %5593
  %5624 = fmul fast float %5623, %5604
  %5625 = fmul fast float %5621, %5593
  %5626 = fmul fast float %5625, %5604
  %5627 = fmul fast float %5622, %5593
  %5628 = fmul fast float %5627, %5604
  %5629 = fadd fast float %5624, %5196
  %5630 = fadd fast float %5626, %5197
  %5631 = fadd fast float %5628, %5198
  %5632 = fmul fast float %5110, %5110
  %5633 = fmul fast float %5632, %5632
  %5634 = fadd fast float %5589, 1.000000e+00
  %5635 = fsub fast float %5634, %5604
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5639 = fsub fast float 1.000000e+00, %5633
  %5640 = call float @dx.op.binary.f32(i32 36, float %5636, float %5639)  ; FMin(a,b)
  %5641 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5642 = call float @dx.op.binary.f32(i32 35, float %5640, float %5641)  ; FMax(a,b)
  %5643 = fadd fast float %5638, 0xBFE4CCCCC0000000
  %5644 = fmul fast float %5643, 0x4006DB6DA0000000
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fmul fast float %5645, 2.000000e+00
  %5647 = fsub fast float 3.000000e+00, %5646
  %5648 = bitcast float %5156 to i32
  %5649 = ashr i32 %5648, 1
  %5650 = add nsw i32 %5649, 532487669
  %5651 = bitcast i32 %5650 to float
  %5652 = fsub fast float 1.000000e+00, %5651
  %5653 = bitcast float %5652 to i32
  %5654 = sub nsw i32 2129859010, %5653
  %5655 = bitcast i32 %5654 to float
  %5656 = fmul fast float %5655, 2.000000e+00
  %5657 = bitcast float %5157 to i32
  %5658 = ashr i32 %5657, 1
  %5659 = add nsw i32 %5658, 532487669
  %5660 = bitcast i32 %5659 to float
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5664, 2.000000e+00
  %5666 = bitcast float %5158 to i32
  %5667 = ashr i32 %5666, 1
  %5668 = add nsw i32 %5667, 532487669
  %5669 = bitcast i32 %5668 to float
  %5670 = fsub fast float 1.000000e+00, %5669
  %5671 = bitcast float %5670 to i32
  %5672 = sub nsw i32 2129859010, %5671
  %5673 = bitcast i32 %5672 to float
  %5674 = fmul fast float %5673, 2.000000e+00
  %5675 = fsub fast float 0x4002A9FBE0000000, %5656
  %5676 = fadd fast float %5656, 0x3FD54FDF00000000
  %5677 = bitcast float %5676 to i32
  %5678 = sub nsw i32 2129859010, %5677
  %5679 = bitcast i32 %5678 to float
  %5680 = fmul fast float %5679, %5675
  %5681 = fmul fast float %5680, %5680
  %5682 = fsub fast float 0x4002A9FBE0000000, %5665
  %5683 = fadd fast float %5665, 0x3FD54FDF00000000
  %5684 = bitcast float %5683 to i32
  %5685 = sub nsw i32 2129859010, %5684
  %5686 = bitcast i32 %5685 to float
  %5687 = fmul fast float %5686, %5682
  %5688 = fmul fast float %5687, %5687
  %5689 = fsub fast float 0x4002A9FBE0000000, %5674
  %5690 = fadd fast float %5674, 0x3FD54FDF00000000
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = fmul fast float %5693, %5689
  %5695 = fmul fast float %5694, %5694
  %5696 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5681)  ; FMax(a,b)
  %5697 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5688)  ; FMax(a,b)
  %5698 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5695)  ; FMax(a,b)
  %5699 = fsub fast float 1.000000e+00, %5584
  %5700 = fadd fast float %5699, %5600
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = fsub fast float 1.000000e+00, %5576
  %5703 = fmul fast float %5642, %5702
  %5704 = fmul fast float %5645, %5645
  %5705 = fmul fast float %5704, %5703
  %5706 = fmul fast float %5705, %5647
  %5707 = fmul fast float %5702, 0xBFE99999A0000000
  %5708 = fmul fast float %5707, %5593
  %5709 = fmul fast float %5708, %5604
  %5710 = fadd fast float %5709, 1.000000e+00
  %5711 = fadd fast float %5159, -1.000000e+00
  %5712 = fmul fast float %5710, %5711
  %5713 = fadd fast float %5712, 1.000000e+00
  %5714 = fsub fast float %5696, %5156
  %5715 = fsub fast float %5697, %5157
  %5716 = fsub fast float %5698, %5158
  %5717 = fmul fast float %5706, %5714
  %5718 = fmul fast float %5706, %5715
  %5719 = fmul fast float %5706, %5716
  %5720 = fadd fast float %5717, %5156
  %5721 = fadd fast float %5718, %5157
  %5722 = fadd fast float %5719, %5158
  %5723 = fsub fast float %116, %5098
  %5724 = fsub fast float %117, %5099
  %5725 = fsub fast float %118, %5100
  %5726 = fmul fast float %5706, %5723
  %5727 = fmul fast float %5706, %5724
  %5728 = fmul fast float %5706, %5725
  %5729 = fadd fast float %5726, %5098
  %5730 = fadd fast float %5727, %5099
  %5731 = fadd fast float %5728, %5100
  %5732 = fmul fast float %5706, %5701
  %5733 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = fmul fast float %5732, %5734
  %5736 = fadd fast float %5735, %5733
  %5737 = fsub fast float 1.000000e+00, %5110
  %5738 = fmul fast float %5706, %5737
  %5739 = fadd fast float %5738, %5110
  %5740 = call float @dx.op.dot3.f32(i32 55, float %5729, float %5730, float %5731, float %5729, float %5730, float %5731)  ; Dot3(ax,ay,az,bx,by,bz)
  %5741 = call float @dx.op.unary.f32(i32 25, float %5740)  ; Rsqrt(value)
  %5742 = fmul fast float %5729, %5741
  %5743 = fmul fast float %5730, %5741
  %5744 = fmul fast float %5731, %5741
  br label %5745

; <label>:5745                                    ; preds = %5583, %5562
  %5746 = phi float [ %5629, %5583 ], [ %5196, %5562 ]
  %5747 = phi float [ %5630, %5583 ], [ %5197, %5562 ]
  %5748 = phi float [ %5631, %5583 ], [ %5198, %5562 ]
  %5749 = phi float [ %5720, %5583 ], [ %5156, %5562 ]
  %5750 = phi float [ %5721, %5583 ], [ %5157, %5562 ]
  %5751 = phi float [ %5722, %5583 ], [ %5158, %5562 ]
  %5752 = phi float [ %5742, %5583 ], [ %5098, %5562 ]
  %5753 = phi float [ %5743, %5583 ], [ %5099, %5562 ]
  %5754 = phi float [ %5744, %5583 ], [ %5100, %5562 ]
  %5755 = phi float [ %5736, %5583 ], [ %5159, %5562 ]
  %5756 = phi float [ %5739, %5583 ], [ %5110, %5562 ]
  %5757 = fsub fast float -0.000000e+00, %166
  %5758 = select i1 %258, float 0.000000e+00, float %5751
  %5759 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %5580, float %5581, float %5582)  ; Dot3(ax,ay,az,bx,by,bz)
  %5760 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5761 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = fmul fast float %5761, 2.000000e+00
  %5763 = fmul fast float %5762, %5752
  %5764 = fmul fast float %5762, %5753
  %5765 = fmul fast float %5762, %5754
  %5766 = fsub fast float %184, %5763
  %5767 = fsub fast float %185, %5764
  %5768 = fsub fast float %186, %5765
  %5769 = call float @dx.op.binary.f32(i32 36, float %5756, float 1.000000e+00)  ; FMin(a,b)
  %5770 = fsub fast float 1.000000e+00, %5769
  %5771 = bitcast float %5770 to i32
  %5772 = ashr i32 %5771, 1
  %5773 = add nsw i32 %5772, 532487669
  %5774 = bitcast i32 %5773 to float
  %5775 = fsub fast float 1.000000e+00, %5755
  %5776 = call float @dx.op.binary.f32(i32 35, float %5775, float 0x3F847AE140000000)  ; FMax(a,b)
  %5777 = fmul fast float %5776, %5776
  %5778 = fmul fast float %5777, %5777
  %5779 = call float @dx.op.unary.f32(i32 7, float %5760)  ; Saturate(value)
  %5780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5774, float %5778, float %5779, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5781 = extractvalue %dx.types.ResRet.f32 %5780, 0
  %5782 = fsub fast float 1.000000e+00, %5756
  %5783 = bitcast float %5782 to i32
  %5784 = sub nsw i32 2129859010, %5783
  %5785 = bitcast i32 %5784 to float
  %5786 = call float @dx.op.dot3.f32(i32 55, float %77, float %73, float %69, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5787 = fmul fast float %5786, 0x3FD20DD760000000
  %5788 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %5789 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = fcmp fast oeq float %5789, 0.000000e+00
  %5791 = fcmp fast oeq float %5788, 0.000000e+00
  %5792 = or i1 %5791, %5790
  br i1 %5792, label %5822, label %5793

; <label>:5793                                    ; preds = %5745
  %5794 = fsub fast float -0.000000e+00, %80
  %5795 = fsub fast float -0.000000e+00, %78
  %5796 = call float @dx.op.unary.f32(i32 24, float %5789)  ; Sqrt(value)
  %5797 = fdiv fast float %5796, %5788
  %5798 = fcmp fast ogt float %5797, 0x3FFB6F8900000000
  %5799 = select i1 %5798, float 0x3FFB6F8900000000, float %5797
  %5800 = fmul fast float %5799, 0x3FE8A23460000000
  %5801 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  %5802 = call float @dx.op.binary.f32(i32 35, float %5799, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5803 = fmul fast float %5801, %5788
  %5804 = fmul fast float %5802, 0x3FF279A740000000
  %5805 = fadd fast float %5804, -1.000000e+00
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %79, float %5794, float %5795, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.unary.f32(i32 25, float %5806)  ; Rsqrt(value)
  %5808 = fmul fast float %5807, %5794
  %5809 = fmul fast float %5807, %5795
  %5810 = fmul fast float %5807, %79
  %5811 = fmul fast float %5805, %5805
  %5812 = fsub fast float 1.000000e+00, %5811
  %5813 = fmul fast float %5802, 0x40005F8BE0000000
  %5814 = fsub fast float 0x400C5BF8A0000000, %5813
  %5815 = fdiv fast float %5803, %5814
  %5816 = fmul fast float %5815, 0x3FEE31C3C0000000
  %5817 = fmul fast float %5816, %5812
  %5818 = fmul fast float %5802, 0x3FDACB7480000000
  %5819 = fadd fast float %5818, 0xBFD7347680000000
  %5820 = fmul fast float %5819, %5815
  %5821 = fmul fast float %5820, %5812
  br label %5822

; <label>:5822                                    ; preds = %5793, %5745
  %5823 = phi float [ %5808, %5793 ], [ 0.000000e+00, %5745 ]
  %5824 = phi float [ %5809, %5793 ], [ 0.000000e+00, %5745 ]
  %5825 = phi float [ %5810, %5793 ], [ 0.000000e+00, %5745 ]
  %5826 = phi float [ %5817, %5793 ], [ 0.000000e+00, %5745 ]
  %5827 = phi float [ %5821, %5793 ], [ 0.000000e+00, %5745 ]
  %5828 = call float @dx.op.dot3.f32(i32 55, float %5823, float %5824, float %5825, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5829 = fmul fast float %5828, 0x3FDF454380000000
  %5830 = fmul fast float %5828, %5828
  %5831 = fmul fast float %5830, 0x3FEE471020000000
  %5832 = fadd fast float %5831, 0xBFD42F6020000000
  %5833 = fmul fast float %5788, 0x3FD20DD760000000
  %5834 = fmul fast float %5832, %5827
  %5835 = fadd fast float %5834, %5833
  %5836 = fmul fast float %5829, %5826
  %5837 = fadd fast float %5835, %5836
  %5838 = fsub fast float %5835, %5836
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5823, float %5824, float %5825, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = fmul fast float %5839, 0x3FDF454380000000
  %5841 = fmul fast float %5839, %5839
  %5842 = fmul fast float %5841, 0x3FEE471020000000
  %5843 = fadd fast float %5842, 0xBFD42F6020000000
  %5844 = call float @dx.op.dot3.f32(i32 55, float %5788, float %5826, float %5827, float 0x3FD20DD760000000, float %5840, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5846 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = fcmp fast oeq float %5846, 0.000000e+00
  %5848 = fcmp fast oeq float %5845, 0.000000e+00
  %5849 = or i1 %5848, %5847
  br i1 %5849, label %5879, label %5850

; <label>:5850                                    ; preds = %5822
  %5851 = fsub fast float -0.000000e+00, %76
  %5852 = fsub fast float -0.000000e+00, %74
  %5853 = call float @dx.op.unary.f32(i32 24, float %5846)  ; Sqrt(value)
  %5854 = fdiv fast float %5853, %5845
  %5855 = fcmp fast ogt float %5854, 0x3FFB6F8900000000
  %5856 = select i1 %5855, float 0x3FFB6F8900000000, float %5854
  %5857 = fmul fast float %5856, 0x3FE8A23460000000
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5856, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5860 = fmul fast float %5858, %5845
  %5861 = fmul fast float %5859, 0x3FF279A740000000
  %5862 = fadd fast float %5861, -1.000000e+00
  %5863 = call float @dx.op.dot3.f32(i32 55, float %5851, float %5852, float %75, float %5851, float %5852, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = call float @dx.op.unary.f32(i32 25, float %5863)  ; Rsqrt(value)
  %5865 = fmul fast float %5864, %5851
  %5866 = fmul fast float %5864, %5852
  %5867 = fmul fast float %5864, %75
  %5868 = fmul fast float %5862, %5862
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = fmul fast float %5859, 0x40005F8BE0000000
  %5871 = fsub fast float 0x400C5BF8A0000000, %5870
  %5872 = fdiv fast float %5860, %5871
  %5873 = fmul fast float %5872, 0x3FEE31C3C0000000
  %5874 = fmul fast float %5873, %5869
  %5875 = fmul fast float %5859, 0x3FDACB7480000000
  %5876 = fadd fast float %5875, 0xBFD7347680000000
  %5877 = fmul fast float %5876, %5872
  %5878 = fmul fast float %5877, %5869
  br label %5879

; <label>:5879                                    ; preds = %5850, %5822
  %5880 = phi float [ %5865, %5850 ], [ 0.000000e+00, %5822 ]
  %5881 = phi float [ %5866, %5850 ], [ 0.000000e+00, %5822 ]
  %5882 = phi float [ %5867, %5850 ], [ 0.000000e+00, %5822 ]
  %5883 = phi float [ %5874, %5850 ], [ 0.000000e+00, %5822 ]
  %5884 = phi float [ %5878, %5850 ], [ 0.000000e+00, %5822 ]
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5881, float %5882, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = fmul fast float %5885, 0x3FDF454380000000
  %5887 = fmul fast float %5885, %5885
  %5888 = fmul fast float %5887, 0x3FEE471020000000
  %5889 = fadd fast float %5888, 0xBFD42F6020000000
  %5890 = fmul fast float %5845, 0x3FD20DD760000000
  %5891 = fmul fast float %5889, %5884
  %5892 = fadd fast float %5891, %5890
  %5893 = fmul fast float %5886, %5883
  %5894 = fadd fast float %5892, %5893
  %5895 = fsub fast float %5892, %5893
  %5896 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5881, float %5882, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5897 = fmul fast float %5896, 0x3FDF454380000000
  %5898 = fmul fast float %5896, %5896
  %5899 = fmul fast float %5898, 0x3FEE471020000000
  %5900 = fadd fast float %5899, 0xBFD42F6020000000
  %5901 = call float @dx.op.dot3.f32(i32 55, float %5845, float %5883, float %5884, float 0x3FD20DD760000000, float %5897, float %5900)  ; Dot3(ax,ay,az,bx,by,bz)
  %5902 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5903 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5904 = fcmp fast oeq float %5903, 0.000000e+00
  %5905 = fcmp fast oeq float %5902, 0.000000e+00
  %5906 = or i1 %5905, %5904
  br i1 %5906, label %5936, label %5907

; <label>:5907                                    ; preds = %5879
  %5908 = fsub fast float -0.000000e+00, %72
  %5909 = fsub fast float -0.000000e+00, %70
  %5910 = call float @dx.op.unary.f32(i32 24, float %5903)  ; Sqrt(value)
  %5911 = fdiv fast float %5910, %5902
  %5912 = fcmp fast ogt float %5911, 0x3FFB6F8900000000
  %5913 = select i1 %5912, float 0x3FFB6F8900000000, float %5911
  %5914 = fmul fast float %5913, 0x3FE8A23460000000
  %5915 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5916 = call float @dx.op.binary.f32(i32 35, float %5913, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5917 = fmul fast float %5915, %5902
  %5918 = fmul fast float %5916, 0x3FF279A740000000
  %5919 = fadd fast float %5918, -1.000000e+00
  %5920 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %71, float %5908, float %5909, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5921 = call float @dx.op.unary.f32(i32 25, float %5920)  ; Rsqrt(value)
  %5922 = fmul fast float %5921, %5908
  %5923 = fmul fast float %5921, %5909
  %5924 = fmul fast float %5921, %71
  %5925 = fmul fast float %5919, %5919
  %5926 = fsub fast float 1.000000e+00, %5925
  %5927 = fmul fast float %5916, 0x40005F8BE0000000
  %5928 = fsub fast float 0x400C5BF8A0000000, %5927
  %5929 = fdiv fast float %5917, %5928
  %5930 = fmul fast float %5929, 0x3FEE31C3C0000000
  %5931 = fmul fast float %5930, %5926
  %5932 = fmul fast float %5916, 0x3FDACB7480000000
  %5933 = fadd fast float %5932, 0xBFD7347680000000
  %5934 = fmul fast float %5933, %5929
  %5935 = fmul fast float %5934, %5926
  br label %5936

; <label>:5936                                    ; preds = %5907, %5879
  %5937 = phi float [ %5922, %5907 ], [ 0.000000e+00, %5879 ]
  %5938 = phi float [ %5923, %5907 ], [ 0.000000e+00, %5879 ]
  %5939 = phi float [ %5924, %5907 ], [ 0.000000e+00, %5879 ]
  %5940 = phi float [ %5931, %5907 ], [ 0.000000e+00, %5879 ]
  %5941 = phi float [ %5935, %5907 ], [ 0.000000e+00, %5879 ]
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5937, float %5938, float %5939, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = fmul fast float %5942, 0x3FDF454380000000
  %5944 = fmul fast float %5942, %5942
  %5945 = fmul fast float %5944, 0x3FEE471020000000
  %5946 = fadd fast float %5945, 0xBFD42F6020000000
  %5947 = fmul fast float %5902, 0x3FD20DD760000000
  %5948 = fmul fast float %5946, %5941
  %5949 = fadd fast float %5948, %5947
  %5950 = fmul fast float %5943, %5940
  %5951 = fadd fast float %5949, %5950
  %5952 = fsub fast float %5949, %5950
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5937, float %5938, float %5939, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = fmul fast float %5953, 0x3FDF454380000000
  %5955 = fmul fast float %5953, %5953
  %5956 = fmul fast float %5955, 0x3FEE471020000000
  %5957 = fadd fast float %5956, 0xBFD42F6020000000
  %5958 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5940, float %5941, float 0x3FD20DD760000000, float %5954, float %5957)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = call float @dx.op.binary.f32(i32 35, float %5837, float 0.000000e+00)  ; FMax(a,b)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5894, float 0.000000e+00)  ; FMax(a,b)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5951, float 0.000000e+00)  ; FMax(a,b)
  %5962 = call float @dx.op.binary.f32(i32 35, float %5838, float 0.000000e+00)  ; FMax(a,b)
  %5963 = call float @dx.op.binary.f32(i32 35, float %5895, float 0.000000e+00)  ; FMax(a,b)
  %5964 = call float @dx.op.binary.f32(i32 35, float %5952, float 0.000000e+00)  ; FMax(a,b)
  %5965 = call float @dx.op.binary.f32(i32 35, float %5844, float 0.000000e+00)  ; FMax(a,b)
  %5966 = call float @dx.op.binary.f32(i32 35, float %5901, float 0.000000e+00)  ; FMax(a,b)
  %5967 = call float @dx.op.binary.f32(i32 35, float %5958, float 0.000000e+00)  ; FMax(a,b)
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  %5970 = call float @dx.op.binary.f32(i32 36, float %5746, float %5969)  ; FMin(a,b)
  %5971 = fmul fast float %5970, %5770
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = bitcast float %5972 to i32
  %5974 = sub nsw i32 2129859010, %5973
  %5975 = bitcast i32 %5974 to float
  %5976 = call float @dx.op.binary.f32(i32 36, float %5747, float %5969)  ; FMin(a,b)
  %5977 = fmul fast float %5976, %5770
  %5978 = fsub fast float 1.000000e+00, %5977
  %5979 = bitcast float %5978 to i32
  %5980 = sub nsw i32 2129859010, %5979
  %5981 = bitcast i32 %5980 to float
  %5982 = call float @dx.op.binary.f32(i32 36, float %5748, float %5969)  ; FMin(a,b)
  %5983 = fmul fast float %5982, %5770
  %5984 = fsub fast float 1.000000e+00, %5983
  %5985 = bitcast float %5984 to i32
  %5986 = sub nsw i32 2129859010, %5985
  %5987 = bitcast i32 %5986 to float
  %5988 = fmul fast float %5959, %5769
  %5989 = fmul fast float %5988, %5975
  %5990 = fmul fast float %5960, %5769
  %5991 = fmul fast float %5990, %5981
  %5992 = fmul fast float %5961, %5769
  %5993 = fmul fast float %5992, %5987
  %5994 = call float @dx.op.binary.f32(i32 36, float %5749, float %5969)  ; FMin(a,b)
  %5995 = fmul fast float %5994, %5770
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = bitcast float %5996 to i32
  %5998 = sub nsw i32 2129859010, %5997
  %5999 = bitcast i32 %5998 to float
  %6000 = call float @dx.op.binary.f32(i32 36, float %5750, float %5969)  ; FMin(a,b)
  %6001 = fmul fast float %6000, %5770
  %6002 = fsub fast float 1.000000e+00, %6001
  %6003 = bitcast float %6002 to i32
  %6004 = sub nsw i32 2129859010, %6003
  %6005 = bitcast i32 %6004 to float
  %6006 = call float @dx.op.binary.f32(i32 36, float %5758, float %5969)  ; FMin(a,b)
  %6007 = fmul fast float %6006, %5770
  %6008 = fsub fast float 1.000000e+00, %6007
  %6009 = bitcast float %6008 to i32
  %6010 = sub nsw i32 2129859010, %6009
  %6011 = bitcast i32 %6010 to float
  %6012 = fmul fast float %5965, %5769
  %6013 = fmul fast float %6012, %5999
  %6014 = fmul fast float %5966, %5769
  %6015 = fmul fast float %6014, %6005
  %6016 = fmul fast float %5967, %5769
  %6017 = fmul fast float %6016, %6011
  %6018 = call float @dx.op.dot3.f32(i32 55, float %5989, float %5991, float %5993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6019 = select i1 %258, float 0.000000e+00, float %5989
  %6020 = select i1 %258, float %6018, float %5991
  %6021 = select i1 %258, float 0.000000e+00, float %5993
  %6022 = call float @dx.op.dot3.f32(i32 55, float %5962, float %5963, float %5964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = select i1 %258, float 0.000000e+00, float %5962
  %6024 = select i1 %258, float %6022, float %5963
  %6025 = select i1 %258, float 0.000000e+00, float %5964
  %6026 = call float @dx.op.dot3.f32(i32 55, float %6013, float %6015, float %6017, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = select i1 %258, float 0.000000e+00, float %6013
  %6028 = select i1 %258, float %6026, float %6015
  %6029 = select i1 %258, float 0.000000e+00, float %6017
  %6030 = fmul fast float %4459, %4459
  %6031 = call float @dx.op.unary.f32(i32 7, float %6030)  ; Saturate(value)
  %6032 = fmul fast float %5760, 9.843750e-01
  %6033 = fmul fast float %5755, 9.843750e-01
  %6034 = fadd fast float %6032, 7.812500e-03
  %6035 = fadd fast float %6033, 7.812500e-03
  %6036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %6034, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6037 = extractvalue %dx.types.ResRet.f32 %6036, 0
  %6038 = extractvalue %dx.types.ResRet.f32 %6036, 1
  %6039 = extractvalue %dx.types.ResRet.f32 %6036, 2
  %6040 = extractvalue %dx.types.ResRet.f32 %6036, 3
  %6041 = fsub fast float 1.000000e+00, %6031
  %6042 = fsub fast float %6039, %6037
  %6043 = fsub fast float %6040, %6038
  %6044 = fmul fast float %6042, %6041
  %6045 = fmul fast float %6043, %6041
  %6046 = fadd fast float %6044, %6037
  %6047 = fadd fast float %6045, %6038
  %6048 = fmul fast float %6046, %5749
  %6049 = fmul fast float %6046, %5750
  %6050 = fmul fast float %6046, %5758
  %6051 = fadd fast float %6048, %6047
  %6052 = fadd fast float %6049, %6047
  %6053 = fadd fast float %6050, %6047
  %6054 = fcmp fast ogt float %5111, 0.000000e+00
  br i1 %6054, label %6055, label %6081

; <label>:6055                                    ; preds = %5936
  %6056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5111, float %5760, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6056, 2
  %6060 = fadd fast float %6057, -5.000000e-01
  %6061 = fadd fast float %6058, -5.000000e-01
  %6062 = fadd fast float %6059, -5.000000e-01
  %6063 = fsub fast float 1.000000e+00, %5749
  %6064 = fsub fast float 1.000000e+00, %5750
  %6065 = fsub fast float 1.000000e+00, %5758
  %6066 = fmul fast float %5749, 4.000000e+00
  %6067 = fmul fast float %6066, %6063
  %6068 = fmul fast float %6067, %6060
  %6069 = fmul fast float %5750, 4.000000e+00
  %6070 = fmul fast float %6069, %6064
  %6071 = fmul fast float %6070, %6061
  %6072 = fmul fast float %5758, 4.000000e+00
  %6073 = fmul fast float %6072, %6065
  %6074 = fmul fast float %6073, %6062
  %6075 = fadd fast float %6068, %6051
  %6076 = fadd fast float %6071, %6052
  %6077 = fadd fast float %6074, %6053
  %6078 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6079 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6080 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  br label %6081

; <label>:6081                                    ; preds = %6055, %5936
  %6082 = phi float [ %6078, %6055 ], [ %6051, %5936 ]
  %6083 = phi float [ %6079, %6055 ], [ %6052, %5936 ]
  %6084 = phi float [ %6080, %6055 ], [ %6053, %5936 ]
  %6085 = call float @dx.op.binary.f32(i32 35, float %6083, float %6084)  ; FMax(a,b)
  %6086 = call float @dx.op.binary.f32(i32 35, float %6082, float %6085)  ; FMax(a,b)
  %6087 = fsub fast float 1.000000e+00, %6086
  %6088 = fmul fast float %6086, %5755
  %6089 = fadd fast float %6088, %5755
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 2
  %6092 = extractvalue %dx.types.CBufRet.f32 %6090, 3
  %6093 = fmul fast float %6089, %6091
  %6094 = fadd fast float %6093, %6092
  %6095 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  %6096 = fsub fast float 1.000000e+00, %5781
  %6097 = fadd fast float %6096, %6095
  %6098 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  %6099 = fcmp fast olt float %6098, 1.000000e+00
  br i1 %6099, label %6100, label %6576

; <label>:6100                                    ; preds = %6081
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 2
  %6103 = extractvalue %dx.types.CBufRet.f32 %6101, 3
  %6104 = fmul fast float %6102, %109
  %6105 = fmul fast float %6103, %110
  %6106 = fptoui float %6104 to i32
  %6107 = fptoui float %6105 to i32
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 0
  %6110 = extractvalue %dx.types.CBufRet.f32 %6108, 2
  %6111 = extractvalue %dx.types.CBufRet.f32 %6108, 3
  %6112 = fadd fast float %97, -4.000000e+00
  %6113 = call float @dx.op.binary.f32(i32 35, float %6112, float 0.000000e+00)  ; FMax(a,b)
  %6114 = fadd fast float %6113, %6109
  %6115 = fmul fast float %6114, %6110
  %6116 = call float @dx.op.unary.f32(i32 23, float %6115)  ; Log(value)
  %6117 = fmul fast float %6116, %6111
  %6118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6119 = extractvalue %dx.types.CBufRet.f32 %6118, 2
  %6120 = fmul fast float %6117, %6119
  %6121 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.i32 %6122, 1
  %6124 = add i32 %6123, -1
  %6125 = uitofp i32 %6123 to float
  %6126 = fmul fast float %6125, %6121
  %6127 = fptoui float %6126 to i32
  %6128 = call i32 @dx.op.binary.i32(i32 40, i32 %6127, i32 %6124)  ; UMin(a,b)
  %6129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.i32 %6129, 2
  %6131 = extractvalue %dx.types.CBufRet.i32 %6129, 3
  %6132 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6107, i32 %6130, i32 %6106)  ; UMad(a,b,c)
  %6133 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6128, i32 %6131, i32 %6132)  ; UMad(a,b,c)
  %6134 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6135 = fptoui float %6134 to i32
  %6136 = lshr i32 %6135, 5
  %6137 = call i32 @dx.op.binary.i32(i32 40, i32 %6136, i32 8191)  ; UMin(a,b)
  %6138 = fsub fast float %5566, %166
  %6139 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  %6140 = fcmp fast ogt float %6139, 0.000000e+00
  %6141 = fcmp fast ogt float %5768, 0.000000e+00
  %6142 = and i1 %6141, %6140
  br i1 %6142, label %6143, label %6172

; <label>:6143                                    ; preds = %6100
  %6144 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %5768, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6145 = call float @dx.op.binary.f32(i32 35, float %6144, float -1.000000e+00)  ; FMax(a,b)
  %6146 = call float @dx.op.binary.f32(i32 36, float %6145, float 1.000000e+00)  ; FMin(a,b)
  %6147 = fmul fast float %6146, %6146
  %6148 = fsub fast float 1.000000e+00, %6147
  %6149 = fmul fast float %6148, 0x3FFC6E2300000000
  %6150 = fsub fast float 1.000000e+00, %6149
  %6151 = fcmp fast ogt float %6150, 0.000000e+00
  %6152 = call float @dx.op.unary.f32(i32 24, float %6150)  ; Sqrt(value)
  %6153 = fsub fast float 1.000000e+00, %6152
  %6154 = call float @dx.op.unary.f32(i32 23, float %6153)  ; Log(value)
  %6155 = fmul fast float %6154, 5.000000e+00
  %6156 = call float @dx.op.unary.f32(i32 21, float %6155)  ; Exp(value)
  %6157 = fmul fast float %6156, 0x3FEF591A60000000
  %6158 = fadd fast float %6157, 0x3F94DCB540000000
  %6159 = select i1 %6151, float %6158, float 1.000000e+00
  %6160 = fcmp fast oge float %6159, 1.000000e+00
  %6161 = fmul fast float %6144, 2.000000e+00
  %6162 = fadd fast float %6161, %5768
  %6163 = select i1 %6160, float %6162, float %5768
  %6164 = fsub fast float %6163, %5768
  %6165 = fmul fast float %6164, %6139
  %6166 = fadd fast float %6165, %5768
  %6167 = call float @dx.op.dot3.f32(i32 55, float %5766, float %5767, float %6166, float %5766, float %5767, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = call float @dx.op.unary.f32(i32 25, float %6167)  ; Rsqrt(value)
  %6169 = fmul fast float %6168, %5766
  %6170 = fmul fast float %6168, %5767
  %6171 = fmul fast float %6166, %6168
  br label %6172

; <label>:6172                                    ; preds = %6143, %6100
  %6173 = phi float [ %6169, %6143 ], [ %5766, %6100 ]
  %6174 = phi float [ %6170, %6143 ], [ %5767, %6100 ]
  %6175 = phi float [ %6171, %6143 ], [ %5768, %6100 ]
  %6176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.i32 %6176, 2
  %6178 = add nsw i32 %6177, -1
  %6179 = call i32 @dx.op.binary.i32(i32 37, i32 %6178, i32 0)  ; IMax(a,b)
  %6180 = shl i32 %6137, 2
  %6181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6180, i32 undef)  ; BufferLoad(srv,index,wot)
  %6182 = extractvalue %dx.types.ResRet.i32 %6181, 0
  %6183 = lshr i32 %6182, 16
  %6184 = and i32 %6182, 65535
  %6185 = lshr i32 %6182, 21
  %6186 = lshr i32 %6184, 5
  %6187 = call i32 @dx.op.binary.i32(i32 40, i32 %6186, i32 %6179)  ; UMin(a,b)
  %6188 = icmp ugt i32 %6185, %6187
  br i1 %6188, label %6552, label %6189

; <label>:6189                                    ; preds = %6172
  br label %6190

; <label>:6190                                    ; preds = %6544, %6189
  %6191 = phi float [ %6545, %6544 ], [ 0.000000e+00, %6189 ]
  %6192 = phi float [ %6546, %6544 ], [ 0.000000e+00, %6189 ]
  %6193 = phi float [ %6547, %6544 ], [ 0.000000e+00, %6189 ]
  %6194 = phi float [ %6548, %6544 ], [ 1.000000e+00, %6189 ]
  %6195 = phi i32 [ %6549, %6544 ], [ %6185, %6189 ]
  %6196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.i32 %6196, 2
  %6198 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6133, i32 %6197, i32 %6195)  ; UMad(a,b,c)
  %6199 = shl i32 %6198, 2
  %6200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6199, i32 undef)  ; BufferLoad(srv,index,wot)
  %6201 = extractvalue %dx.types.ResRet.i32 %6200, 0
  %6202 = shl i32 %6195, 5
  %6203 = sub nsw i32 %6183, %6202
  %6204 = call i32 @dx.op.binary.i32(i32 37, i32 %6203, i32 0)  ; IMax(a,b)
  %6205 = call i32 @dx.op.binary.i32(i32 38, i32 %6204, i32 31)  ; IMin(a,b)
  %6206 = sub nsw i32 1, %6183
  %6207 = add nsw i32 %6206, %6184
  %6208 = call i32 @dx.op.binary.i32(i32 37, i32 %6207, i32 0)  ; IMax(a,b)
  %6209 = call i32 @dx.op.binary.i32(i32 38, i32 %6208, i32 32)  ; IMin(a,b)
  %6210 = and i32 %6209, 31
  %6211 = shl i32 -1, %6210
  %6212 = xor i32 %6211, -1
  %6213 = and i32 %6205, 31
  %6214 = shl i32 %6212, %6213
  %6215 = icmp eq i32 %6209, 32
  %6216 = select i1 %6215, i32 -1, i32 %6214
  %6217 = and i32 %6216, %6201
  %6218 = icmp eq i32 %6217, 0
  br i1 %6218, label %6544, label %6219

; <label>:6219                                    ; preds = %6190
  br label %6220

; <label>:6220                                    ; preds = %6327, %6219
  %6221 = phi float [ %6328, %6327 ], [ %6191, %6219 ]
  %6222 = phi float [ %6329, %6327 ], [ %6192, %6219 ]
  %6223 = phi float [ %6330, %6327 ], [ %6193, %6219 ]
  %6224 = phi float [ %6331, %6327 ], [ %6194, %6219 ]
  %6225 = phi i32 [ %6230, %6327 ], [ %6217, %6219 ]
  %6226 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6225)  ; FirstbitLo(value)
  %6227 = add i32 %6226, %6202
  %6228 = and i32 %6226, 31
  %6229 = shl i32 1, %6228
  %6230 = xor i32 %6229, %6225
  %6231 = mul i32 %6227, 72
  %6232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6231, i32 undef)  ; BufferLoad(srv,index,wot)
  %6233 = extractvalue %dx.types.ResRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.ResRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.ResRet.f32 %6232, 2
  %6236 = add i32 %6231, 12
  %6237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6236, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.i32 %6237, 0
  %6239 = add i32 %6231, 16
  %6240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.f32 %6240, 0
  %6242 = extractvalue %dx.types.ResRet.f32 %6240, 1
  %6243 = extractvalue %dx.types.ResRet.f32 %6240, 2
  %6244 = add i32 %6231, 28
  %6245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6244, i32 undef)  ; BufferLoad(srv,index,wot)
  %6246 = extractvalue %dx.types.ResRet.f32 %6245, 0
  %6247 = add i32 %6231, 32
  %6248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6247, i32 undef)  ; BufferLoad(srv,index,wot)
  %6249 = extractvalue %dx.types.ResRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.ResRet.f32 %6248, 1
  %6251 = extractvalue %dx.types.ResRet.f32 %6248, 2
  %6252 = extractvalue %dx.types.ResRet.f32 %6248, 3
  %6253 = add i32 %6231, 48
  %6254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6253, i32 undef)  ; BufferLoad(srv,index,wot)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.f32 %6254, 1
  %6257 = add i32 %6231, 56
  %6258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6257, i32 undef)  ; BufferLoad(srv,index,wot)
  %6259 = extractvalue %dx.types.ResRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.ResRet.f32 %6258, 1
  %6261 = add i32 %6231, 64
  %6262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6261, i32 undef)  ; BufferLoad(srv,index,wot)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.ResRet.f32 %6262, 1
  %6265 = mul i32 %6227, 60
  %6266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6265, i32 undef)  ; BufferLoad(srv,index,wot)
  %6267 = extractvalue %dx.types.ResRet.f32 %6266, 0
  %6268 = extractvalue %dx.types.ResRet.f32 %6266, 1
  %6269 = extractvalue %dx.types.ResRet.f32 %6266, 2
  %6270 = add i32 %6265, 12
  %6271 = add i32 %6265, 48
  %6272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6271, i32 undef)  ; BufferLoad(srv,index,wot)
  %6273 = extractvalue %dx.types.ResRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.ResRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.ResRet.f32 %6272, 2
  %6276 = and i32 %6238, 32767
  %6277 = bitcast float %6233 to i32
  %6278 = icmp eq i32 %6277, -1
  %6279 = bitcast float %6234 to i32
  %6280 = and i32 %6238, 32768
  %6281 = icmp ne i32 %6280, 0
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6285 = extractvalue %dx.types.CBufRet.f32 %6282, 2
  %6286 = fsub fast float %6267, %6283
  %6287 = fsub fast float %6268, %6284
  %6288 = fsub fast float %6269, %6285
  %6289 = fsub fast float %164, %6286
  %6290 = fsub fast float %165, %6287
  %6291 = fsub fast float %166, %6288
  %6292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6270, i32 undef)  ; BufferLoad(srv,index,wot)
  %6293 = extractvalue %dx.types.ResRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.ResRet.f32 %6292, 1
  %6295 = extractvalue %dx.types.ResRet.f32 %6292, 2
  %6296 = call float @dx.op.dot3.f32(i32 55, float %6289, float %6290, float %6291, float %6293, float %6294, float %6295)  ; Dot3(ax,ay,az,bx,by,bz)
  %6297 = add i32 %6265, 24
  %6298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6297, i32 undef)  ; BufferLoad(srv,index,wot)
  %6299 = extractvalue %dx.types.ResRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.ResRet.f32 %6298, 2
  %6302 = call float @dx.op.dot3.f32(i32 55, float %6289, float %6290, float %6291, float %6299, float %6300, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = add i32 %6265, 36
  %6304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6303, i32 undef)  ; BufferLoad(srv,index,wot)
  %6305 = extractvalue %dx.types.ResRet.f32 %6304, 0
  %6306 = extractvalue %dx.types.ResRet.f32 %6304, 1
  %6307 = extractvalue %dx.types.ResRet.f32 %6304, 2
  %6308 = call float @dx.op.dot3.f32(i32 55, float %6289, float %6290, float %6291, float %6305, float %6306, float %6307)  ; Dot3(ax,ay,az,bx,by,bz)
  %6309 = call float @dx.op.unary.f32(i32 6, float %6296)  ; FAbs(value)
  %6310 = call float @dx.op.unary.f32(i32 6, float %6302)  ; FAbs(value)
  %6311 = call float @dx.op.unary.f32(i32 6, float %6308)  ; FAbs(value)
  %6312 = fsub fast float %6273, %6309
  %6313 = fsub fast float %6274, %6310
  %6314 = fsub fast float %6275, %6311
  %6315 = fmul fast float %6312, %6241
  %6316 = fmul fast float %6313, %6242
  %6317 = fmul fast float %6314, %6243
  %6318 = call float @dx.op.binary.f32(i32 36, float %6316, float %6317)  ; FMin(a,b)
  %6319 = call float @dx.op.binary.f32(i32 36, float %6315, float %6318)  ; FMin(a,b)
  %6320 = call float @dx.op.unary.f32(i32 7, float %6319)  ; Saturate(value)
  %6321 = call float @dx.op.binary.f32(i32 36, float %6224, float %6320)  ; FMin(a,b)
  %6322 = uitofp i1 %6281 to float
  %6323 = fadd fast float %6139, 1.000000e+00
  %6324 = fsub fast float %6323, %6322
  %6325 = fmul fast float %6321, %6324
  %6326 = fcmp fast ogt float %6325, 0.000000e+00
  br i1 %6326, label %6333, label %6327

; <label>:6327                                    ; preds = %6475, %6220
  %6328 = phi float [ %6539, %6475 ], [ %6221, %6220 ]
  %6329 = phi float [ %6540, %6475 ], [ %6222, %6220 ]
  %6330 = phi float [ %6541, %6475 ], [ %6223, %6220 ]
  %6331 = phi float [ %6542, %6475 ], [ %6224, %6220 ]
  %6332 = icmp eq i32 %6225, %6229
  br i1 %6332, label %6543, label %6220

; <label>:6333                                    ; preds = %6220
  br i1 %6278, label %6391, label %6334

; <label>:6334                                    ; preds = %6333
  %6335 = fsub fast float -0.000000e+00, %6293
  %6336 = fsub fast float -0.000000e+00, %6294
  %6337 = fsub fast float -0.000000e+00, %6295
  %6338 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %6335, float %6336, float %6337)  ; Dot3(ax,ay,az,bx,by,bz)
  %6339 = fsub fast float -0.000000e+00, %6338
  %6340 = call float @dx.op.dot3.f32(i32 55, float %6289, float %6290, float %6291, float %6335, float %6336, float %6337)  ; Dot3(ax,ay,az,bx,by,bz)
  %6341 = fadd fast float %6340, %6256
  %6342 = fadd fast float %6255, %6340
  %6343 = fsub fast float -0.000000e+00, %6342
  %6344 = fcmp ogt float %6338, -0.000000e+00
  %6345 = select i1 %6344, float %6343, float %6341
  %6346 = call float @dx.op.unary.f32(i32 6, float %6339)  ; FAbs(value)
  %6347 = fdiv fast float 1.000000e+00, %6346
  %6348 = fmul fast float %6345, %6347
  %6349 = call float @dx.op.binary.f32(i32 35, float %6348, float 0.000000e+00)  ; FMax(a,b)
  %6350 = fsub fast float -0.000000e+00, %6299
  %6351 = fsub fast float -0.000000e+00, %6300
  %6352 = fsub fast float -0.000000e+00, %6301
  %6353 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %6350, float %6351, float %6352)  ; Dot3(ax,ay,az,bx,by,bz)
  %6354 = fsub fast float -0.000000e+00, %6353
  %6355 = call float @dx.op.dot3.f32(i32 55, float %6289, float %6290, float %6291, float %6350, float %6351, float %6352)  ; Dot3(ax,ay,az,bx,by,bz)
  %6356 = fadd fast float %6355, %6260
  %6357 = fadd fast float %6259, %6355
  %6358 = fsub fast float -0.000000e+00, %6357
  %6359 = fcmp ogt float %6353, -0.000000e+00
  %6360 = select i1 %6359, float %6358, float %6356
  %6361 = call float @dx.op.unary.f32(i32 6, float %6354)  ; FAbs(value)
  %6362 = fdiv fast float 1.000000e+00, %6361
  %6363 = fmul fast float %6360, %6362
  %6364 = call float @dx.op.binary.f32(i32 35, float %6363, float 0.000000e+00)  ; FMax(a,b)
  %6365 = fsub fast float -0.000000e+00, %6305
  %6366 = fsub fast float -0.000000e+00, %6306
  %6367 = fsub fast float -0.000000e+00, %6307
  %6368 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %6365, float %6366, float %6367)  ; Dot3(ax,ay,az,bx,by,bz)
  %6369 = fsub fast float -0.000000e+00, %6368
  %6370 = call float @dx.op.dot3.f32(i32 55, float %6289, float %6290, float %6291, float %6365, float %6366, float %6367)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = fadd fast float %6370, %6264
  %6372 = fadd fast float %6263, %6370
  %6373 = fsub fast float -0.000000e+00, %6372
  %6374 = fcmp ogt float %6368, -0.000000e+00
  %6375 = select i1 %6374, float %6373, float %6371
  %6376 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6377 = fdiv fast float 1.000000e+00, %6376
  %6378 = fmul fast float %6375, %6377
  %6379 = call float @dx.op.binary.f32(i32 35, float %6378, float 0.000000e+00)  ; FMax(a,b)
  %6380 = call float @dx.op.binary.f32(i32 36, float %6364, float %6379)  ; FMin(a,b)
  %6381 = call float @dx.op.binary.f32(i32 36, float %6349, float %6380)  ; FMin(a,b)
  %6382 = fmul fast float %6381, %6173
  %6383 = fmul fast float %6381, %6174
  %6384 = fmul fast float %6381, %6175
  %6385 = fadd fast float %6382, %164
  %6386 = fadd fast float %6383, %165
  %6387 = fadd fast float %6384, %166
  %6388 = fsub fast float %6385, %6233
  %6389 = fsub fast float %6386, %6234
  %6390 = fsub fast float %6387, %6235
  br label %6398

; <label>:6391                                    ; preds = %6333
  %6392 = fmul fast float %6173, 8.096000e+03
  %6393 = fmul fast float %6174, 8.096000e+03
  %6394 = fmul fast float %6175, 8.096000e+03
  %6395 = fadd fast float %6392, %164
  %6396 = fadd fast float %6393, %165
  %6397 = fadd fast float %6394, %166
  br label %6398

; <label>:6398                                    ; preds = %6391, %6334
  %6399 = phi float [ %6173, %6391 ], [ %6388, %6334 ]
  %6400 = phi float [ %6174, %6391 ], [ %6389, %6334 ]
  %6401 = phi float [ %6175, %6391 ], [ %6390, %6334 ]
  %6402 = phi float [ %6395, %6391 ], [ %6385, %6334 ]
  %6403 = phi float [ %6396, %6391 ], [ %6386, %6334 ]
  %6404 = phi float [ %6397, %6391 ], [ %6387, %6334 ]
  %6405 = fcmp fast olt float %6252, 1.000000e+00
  br i1 %6405, label %6406, label %6437, !dx.controlflow.hints !100

; <label>:6406                                    ; preds = %6398
  %6407 = fmul fast float %6401, %6250
  %6408 = fmul fast float %6400, %6251
  %6409 = fsub fast float %6407, %6408
  %6410 = fmul fast float %6399, %6251
  %6411 = fmul fast float %6401, %6249
  %6412 = fsub fast float %6410, %6411
  %6413 = fmul fast float %6400, %6249
  %6414 = fmul fast float %6399, %6250
  %6415 = fsub fast float %6413, %6414
  %6416 = fmul fast float %6409, 2.000000e+00
  %6417 = fmul fast float %6412, 2.000000e+00
  %6418 = fmul fast float %6415, 2.000000e+00
  %6419 = fmul fast float %6416, %6252
  %6420 = fmul fast float %6417, %6252
  %6421 = fmul fast float %6418, %6252
  %6422 = fmul fast float %6418, %6250
  %6423 = fmul fast float %6417, %6251
  %6424 = fmul fast float %6416, %6251
  %6425 = fmul fast float %6418, %6249
  %6426 = fmul fast float %6417, %6249
  %6427 = fmul fast float %6416, %6250
  %6428 = fadd fast float %6422, %6399
  %6429 = fadd fast float %6428, %6419
  %6430 = fsub fast float %6429, %6423
  %6431 = fsub fast float %6400, %6425
  %6432 = fadd fast float %6431, %6420
  %6433 = fadd fast float %6432, %6424
  %6434 = fadd fast float %6421, %6401
  %6435 = fsub fast float %6434, %6427
  %6436 = fadd fast float %6435, %6426
  br label %6437

; <label>:6437                                    ; preds = %6406, %6398
  %6438 = phi float [ %6430, %6406 ], [ %6399, %6398 ]
  %6439 = phi float [ %6433, %6406 ], [ %6400, %6398 ]
  %6440 = phi float [ %6436, %6406 ], [ %6401, %6398 ]
  br i1 %6278, label %6472, label %6441

; <label>:6441                                    ; preds = %6437
  %6442 = fmul fast float %5755, 0x400187C840000000
  %6443 = fadd fast float %6442, 0xC00EFC2120000000
  %6444 = fmul fast float %6443, %5755
  %6445 = fadd fast float %6444, 0x3FE5D16340000000
  %6446 = fmul fast float %6445, %5755
  %6447 = fadd fast float %6446, 1.000000e+00
  %6448 = call float @dx.op.unary.f32(i32 7, float %6447)  ; Saturate(value)
  %6449 = fsub fast float %6402, %164
  %6450 = fsub fast float %6403, %165
  %6451 = fsub fast float %6404, %166
  %6452 = fsub fast float %6402, %6233
  %6453 = fsub fast float %6403, %6234
  %6454 = fsub fast float %6404, %6235
  %6455 = call float @dx.op.dot3.f32(i32 55, float %6449, float %6450, float %6451, float %6449, float %6450, float %6451)  ; Dot3(ax,ay,az,bx,by,bz)
  %6456 = call float @dx.op.dot3.f32(i32 55, float %6452, float %6453, float %6454, float %6452, float %6453, float %6454)  ; Dot3(ax,ay,az,bx,by,bz)
  %6457 = fadd fast float %6456, 0x3EE4F8B580000000
  %6458 = fdiv fast float %6455, %6457
  %6459 = bitcast float %6458 to i32
  %6460 = ashr i32 %6459, 1
  %6461 = add nsw i32 %6460, 532487669
  %6462 = bitcast i32 %6461 to float
  %6463 = fmul fast float %6462, %6448
  %6464 = call float @dx.op.unary.f32(i32 7, float %6463)  ; Saturate(value)
  %6465 = fmul fast float %6464, 0x4009981AE0000000
  %6466 = fsub fast float 0x40111BBD80000000, %6465
  %6467 = fmul fast float %6466, %6464
  %6468 = fadd fast float %6467, 0xC0009F6020000000
  %6469 = fmul fast float %6468, %6464
  %6470 = fadd fast float %6469, 1.000000e+00
  %6471 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  br label %6475

; <label>:6472                                    ; preds = %6437
  %6473 = icmp ne i32 %6279, -1
  %6474 = zext i1 %6473 to i32
  br label %6475

; <label>:6475                                    ; preds = %6472, %6441
  %6476 = phi float [ %5755, %6472 ], [ %6471, %6441 ]
  %6477 = phi i32 [ %6474, %6472 ], [ 0, %6441 ]
  %6478 = fmul float %6476, 5.000000e+00
  %6479 = fsub float 5.000000e+00, %6478
  %6480 = icmp ne i32 %6477, 0
  %6481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6482 = extractvalue %dx.types.CBufRet.f32 %6481, 3
  %6483 = fadd fast float %6482, %6479
  %6484 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6483)  ; FMax(a,b)
  %6485 = call float @dx.op.unary.f32(i32 6, float %6438)  ; FAbs(value)
  %6486 = call float @dx.op.unary.f32(i32 6, float %6439)  ; FAbs(value)
  %6487 = fadd fast float %6486, %6485
  %6488 = call float @dx.op.unary.f32(i32 6, float %6440)  ; FAbs(value)
  %6489 = fadd fast float %6487, %6488
  %6490 = fcmp fast oeq float %6489, 0.000000e+00
  %6491 = fdiv fast float 1.000000e+00, %6489
  %6492 = select i1 %6490, float 1.000000e+00, float %6491
  %6493 = fmul fast float %6492, %6438
  %6494 = fmul fast float %6492, %6439
  %6495 = call float @dx.op.unary.f32(i32 6, float %6494)  ; FAbs(value)
  %6496 = call float @dx.op.unary.f32(i32 6, float %6493)  ; FAbs(value)
  %6497 = fsub fast float 1.000000e+00, %6495
  %6498 = fsub fast float 1.000000e+00, %6496
  %6499 = fcmp fast oge float %6493, 0.000000e+00
  %6500 = fcmp fast oge float %6494, 0.000000e+00
  %6501 = select i1 %6499, float 1.000000e+00, float -1.000000e+00
  %6502 = select i1 %6500, float 1.000000e+00, float -1.000000e+00
  %6503 = fcmp fast ole float %6440, 0.000000e+00
  %6504 = fmul fast float %6501, %6497
  %6505 = fmul fast float %6502, %6498
  %6506 = select i1 %6503, float %6504, float %6493
  %6507 = select i1 %6503, float %6505, float %6494
  %6508 = fmul fast float %6506, 5.000000e-01
  %6509 = fmul fast float %6507, 5.000000e-01
  %6510 = fadd fast float %6508, 5.000000e-01
  %6511 = fadd fast float %6509, 5.000000e-01
  %6512 = uitofp i32 %6276 to float
  %6513 = call float @dx.op.binary.f32(i32 36, float %6484, float 3.000000e+00)  ; FMin(a,b)
  %6514 = fadd fast float %6513, 2.000000e+00
  %6515 = call float @dx.op.unary.f32(i32 21, float %6514)  ; Exp(value)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6481, 1
  %6517 = fmul fast float %6516, %6515
  %6518 = fmul fast float %6517, 2.000000e+00
  %6519 = fsub fast float 1.000000e+00, %6518
  %6520 = fmul fast float %6510, %6519
  %6521 = fmul fast float %6511, %6519
  %6522 = fadd fast float %6520, %6517
  %6523 = fadd fast float %6521, %6517
  %6524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6522, float %6523, float %6512, float undef, i32 0, i32 0, i32 undef, float %6484)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6525 = extractvalue %dx.types.ResRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.ResRet.f32 %6524, 1
  %6527 = extractvalue %dx.types.ResRet.f32 %6524, 2
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 3
  %6530 = fmul fast float %6529, %6246
  %6531 = call float @dx.op.binary.f32(i32 36, float %5787, float %6530)  ; FMin(a,b)
  %6532 = select i1 %6480, float %6531, float %6530
  %6533 = fmul fast float %6525, %6325
  %6534 = fmul fast float %6533, %6532
  %6535 = fmul fast float %6526, %6325
  %6536 = fmul fast float %6535, %6532
  %6537 = fmul fast float %6527, %6325
  %6538 = fmul fast float %6537, %6532
  %6539 = fadd fast float %6534, %6221
  %6540 = fadd fast float %6536, %6222
  %6541 = fadd fast float %6538, %6223
  %6542 = fsub fast float %6224, %6325
  br label %6327

; <label>:6543                                    ; preds = %6327
  br label %6544

; <label>:6544                                    ; preds = %6543, %6190
  %6545 = phi float [ %6191, %6190 ], [ %6328, %6543 ]
  %6546 = phi float [ %6192, %6190 ], [ %6329, %6543 ]
  %6547 = phi float [ %6193, %6190 ], [ %6330, %6543 ]
  %6548 = phi float [ %6194, %6190 ], [ %6331, %6543 ]
  %6549 = add i32 %6195, 1
  %6550 = icmp ugt i32 %6549, %6187
  br i1 %6550, label %6551, label %6190, !llvm.loop !101

; <label>:6551                                    ; preds = %6544
  br label %6552

; <label>:6552                                    ; preds = %6551, %6172
  %6553 = phi float [ 0.000000e+00, %6172 ], [ %6545, %6551 ]
  %6554 = phi float [ 0.000000e+00, %6172 ], [ %6546, %6551 ]
  %6555 = phi float [ 0.000000e+00, %6172 ], [ %6547, %6551 ]
  %6556 = call float @dx.op.dot3.f32(i32 55, float %6553, float %6554, float %6555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6557 = select i1 %258, float 0.000000e+00, float %6553
  %6558 = select i1 %258, float %6556, float %6554
  %6559 = select i1 %258, float 0.000000e+00, float %6555
  %6560 = fcmp fast olt float %6098, 0.000000e+00
  %6561 = call float @dx.op.unary.f32(i32 6, float %6098)  ; FAbs(value)
  %6562 = fmul fast float %6561, %6027
  %6563 = fmul fast float %6561, %6028
  %6564 = fmul fast float %6561, %6029
  %6565 = select i1 %6560, float %6027, float %6562
  %6566 = select i1 %6560, float %6028, float %6563
  %6567 = select i1 %6560, float %6029, float %6564
  %6568 = fsub fast float 1.000000e+00, %6561
  %6569 = call float @dx.op.unary.f32(i32 7, float %6568)  ; Saturate(value)
  %6570 = fmul fast float %6569, %6557
  %6571 = fmul fast float %6569, %6558
  %6572 = fmul fast float %6569, %6559
  %6573 = fadd fast float %6565, %6570
  %6574 = fadd fast float %6566, %6571
  %6575 = fadd fast float %6567, %6572
  br label %6576

; <label>:6576                                    ; preds = %6552, %6081
  %6577 = phi float [ %6027, %6081 ], [ %6573, %6552 ]
  %6578 = phi float [ %6028, %6081 ], [ %6574, %6552 ]
  %6579 = phi float [ %6029, %6081 ], [ %6575, %6552 ]
  %6580 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %5748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6581 = fcmp fast ogt float %6580, 0x3E7FF19E20000000
  %6582 = fdiv fast float 1.000000e+00, %6580
  %6583 = select i1 %6581, float %6582, float 0.000000e+00
  %6584 = fmul fast float %6583, %5746
  %6585 = fmul fast float %6583, %5747
  %6586 = fmul fast float %6583, %5748
  %6587 = fadd fast float %6584, -1.000000e+00
  %6588 = fadd fast float %6585, -1.000000e+00
  %6589 = fadd fast float %6586, -1.000000e+00
  %6590 = fmul fast float %6587, 5.000000e-01
  %6591 = fmul fast float %6588, 5.000000e-01
  %6592 = fmul fast float %6589, 5.000000e-01
  %6593 = fadd fast float %6590, 1.000000e+00
  %6594 = fadd fast float %6591, 1.000000e+00
  %6595 = fadd fast float %6592, 1.000000e+00
  %6596 = call float @dx.op.binary.f32(i32 35, float %5760, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6597 = fdiv fast float %4459, %6596
  %6598 = fcmp fast olt float %5182, 1.270000e+02
  %6599 = fcmp fast olt float %5183, 1.270000e+02
  %6600 = fcmp fast olt float %5184, 1.270000e+02
  %6601 = fmul fast float %5182, 0xBFF7154760000000
  %6602 = fmul fast float %6601, %6597
  %6603 = fmul fast float %5183, 0xBFF7154760000000
  %6604 = fmul fast float %6603, %6597
  %6605 = fmul fast float %5184, 0xBFF7154760000000
  %6606 = fmul fast float %6605, %6597
  %6607 = call float @dx.op.unary.f32(i32 21, float %6602)  ; Exp(value)
  %6608 = call float @dx.op.unary.f32(i32 21, float %6604)  ; Exp(value)
  %6609 = call float @dx.op.unary.f32(i32 21, float %6606)  ; Exp(value)
  %6610 = call float @dx.op.unary.f32(i32 7, float %6607)  ; Saturate(value)
  %6611 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6612 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6613 = select i1 %6598, float %6610, float 0.000000e+00
  %6614 = select i1 %6599, float %6611, float 0.000000e+00
  %6615 = select i1 %6600, float %6612, float 0.000000e+00
  %6616 = fmul fast float %6613, %6087
  %6617 = fmul fast float %6614, %6087
  %6618 = fmul fast float %6615, %6087
  %6619 = fadd fast float %6616, -1.000000e+00
  %6620 = fadd fast float %6617, -1.000000e+00
  %6621 = fadd fast float %6618, -1.000000e+00
  %6622 = fmul fast float %6619, %5137
  %6623 = fmul fast float %6620, %5137
  %6624 = fmul fast float %6621, %5137
  %6625 = fmul fast float %6577, %6082
  %6626 = fmul fast float %6578, %6083
  %6627 = fmul fast float %6579, %6084
  %6628 = fsub fast float 1.000000e+00, %5760
  %6629 = bitcast float %6628 to i32
  %6630 = sitofp i32 %6629 to float
  %6631 = fmul fast float %6630, 5.000000e+00
  %6632 = fadd fast float %6631, 0xC1EFBF8940000000
  %6633 = fptosi float %6632 to i32
  %6634 = bitcast i32 %6633 to float
  %6635 = fmul fast float %6634, %5112
  %6636 = fmul fast float %6019, %6635
  %6637 = fmul fast float %6636, %6087
  %6638 = fmul fast float %6637, %6593
  %6639 = fmul fast float %6020, %6635
  %6640 = fmul fast float %6639, %6087
  %6641 = fmul fast float %6640, %6594
  %6642 = fmul fast float %6021, %6635
  %6643 = fmul fast float %6642, %6087
  %6644 = fmul fast float %6643, %6595
  %6645 = fadd fast float %6625, %5104
  %6646 = fadd fast float %6645, %6638
  %6647 = fmul fast float %6646, %5137
  %6648 = fadd fast float %6626, %5105
  %6649 = fadd fast float %6648, %6641
  %6650 = fmul fast float %6649, %5137
  %6651 = fadd fast float %6627, %5106
  %6652 = fadd fast float %6651, %6644
  %6653 = fmul fast float %6652, %5137
  %6654 = fmul fast float %5750, 0x4012D0A400000000
  %6655 = fadd fast float %6624, 1.000000e+00
  %6656 = fadd fast float %6623, 1.000000e+00
  %6657 = fadd fast float %6622, 1.000000e+00
  %6658 = fmul fast float %6087, %6021
  %6659 = fmul fast float %6087, %6020
  %6660 = fmul fast float %6087, %6019
  %6661 = fmul fast float %5775, %5137
  %6662 = fsub fast float 1.000000e+00, %6661
  %6663 = call float @dx.op.unary.f32(i32 7, float %6662)  ; Saturate(value)
  %6664 = fsub fast float 1.000000e+00, %6663
  %6665 = fadd fast float %6654, 0x3FDB6377A0000000
  %6666 = fmul fast float %6664, %6665
  %6667 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6668 = fadd fast float %6666, %6667
  %6669 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6670 = call float @dx.op.binary.f32(i32 35, float %6669, float 0x3F847AE140000000)  ; FMax(a,b)
  %6671 = fmul fast float %6670, %6670
  %6672 = fmul fast float %6671, %6671
  %6673 = fmul fast float %6672, 0xC00A935000000000
  %6674 = call float @dx.op.unary.f32(i32 21, float %6673)  ; Exp(value)
  %6675 = fsub fast float 1.000000e+00, %6674
  %6676 = fmul fast float %6657, %6023
  %6677 = fmul fast float %6676, %6675
  %6678 = fmul fast float %6656, %6024
  %6679 = fmul fast float %6678, %6675
  %6680 = fmul fast float %6655, %6025
  %6681 = fmul fast float %6680, %6675
  %6682 = fadd fast float %6677, %6660
  %6683 = fmul fast float %6682, %5137
  %6684 = fadd fast float %6679, %6659
  %6685 = fmul fast float %6684, %5137
  %6686 = fadd fast float %6681, %6658
  %6687 = fmul fast float %6686, %5137
  %6688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.f32 %6688, 3
  %6690 = fcmp fast oeq float %6689, 0.000000e+00
  br i1 %6690, label %8368, label %6691

; <label>:6691                                    ; preds = %6576
  %6692 = extractvalue %dx.types.CBufRet.f32 %6688, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6688, 1
  %6694 = extractvalue %dx.types.CBufRet.f32 %6688, 2
  %6695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6696 = extractvalue %dx.types.CBufRet.f32 %6695, 0
  %6697 = extractvalue %dx.types.CBufRet.f32 %6695, 1
  %6698 = extractvalue %dx.types.CBufRet.f32 %6695, 2
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 0
  %6701 = extractvalue %dx.types.CBufRet.f32 %6699, 1
  %6702 = call float @dx.op.dot3.f32(i32 55, float %6696, float %6697, float %6698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6703 = select i1 %258, float %6700, float %6696
  %6704 = select i1 %258, float %6702, float %6697
  %6705 = select i1 %258, float %6701, float %6698
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6708 = fmul fast float %6707, %116
  %6709 = fmul fast float %6707, %117
  %6710 = fmul fast float %6707, %118
  %6711 = fadd fast float %6708, %164
  %6712 = fadd fast float %6709, %165
  %6713 = fadd fast float %6710, %166
  %6714 = fcmp fast olt float %6689, 0.000000e+00
  br i1 %6714, label %7810, label %6715

; <label>:6715                                    ; preds = %6691
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.CBufRet.f32 %6716, 1
  %6719 = extractvalue %dx.types.CBufRet.f32 %6716, 2
  %6720 = extractvalue %dx.types.CBufRet.f32 %6716, 3
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.CBufRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.CBufRet.f32 %6721, 2
  %6725 = extractvalue %dx.types.CBufRet.f32 %6721, 3
  %6726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6727 = extractvalue %dx.types.CBufRet.f32 %6726, 0
  %6728 = extractvalue %dx.types.CBufRet.f32 %6726, 1
  %6729 = extractvalue %dx.types.CBufRet.f32 %6726, 2
  %6730 = extractvalue %dx.types.CBufRet.f32 %6726, 3
  %6731 = fmul fast float %6717, %6711
  %6732 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6718, float %6731)  ; FMad(a,b,c)
  %6733 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6719, float %6732)  ; FMad(a,b,c)
  %6734 = fadd fast float %6733, %6720
  %6735 = fmul fast float %6722, %6711
  %6736 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6723, float %6735)  ; FMad(a,b,c)
  %6737 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6724, float %6736)  ; FMad(a,b,c)
  %6738 = fadd fast float %6737, %6725
  %6739 = fmul fast float %6727, %6711
  %6740 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6728, float %6739)  ; FMad(a,b,c)
  %6741 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6729, float %6740)  ; FMad(a,b,c)
  %6742 = fadd fast float %6741, %6730
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.CBufRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.CBufRet.f32 %6743, 3
  %6747 = fmul fast float %6746, %6734
  %6748 = fmul fast float %6746, %6738
  %6749 = fadd fast float %6747, %6744
  %6750 = fadd fast float %6748, %6745
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.CBufRet.f32 %6751, 1
  %6754 = extractvalue %dx.types.CBufRet.f32 %6751, 3
  %6755 = fmul fast float %6754, %6734
  %6756 = fmul fast float %6754, %6738
  %6757 = fadd fast float %6755, %6752
  %6758 = fadd fast float %6756, %6753
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6761 = fsub fast float %6760, %6742
  %6762 = extractvalue %dx.types.CBufRet.f32 %6759, 2
  %6763 = fmul fast float %6761, %6762
  %6764 = fsub fast float 1.000000e+00, %6763
  %6765 = call float @dx.op.unary.f32(i32 7, float %6764)  ; Saturate(value)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6751, 2
  %6767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.f32 %6767, 2
  %6769 = fadd fast float %6768, %6766
  %6770 = fcmp fast ogt float %6769, 0.000000e+00
  br i1 %6770, label %6771, label %6795

; <label>:6771                                    ; preds = %6715
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 0
  %6774 = extractvalue %dx.types.CBufRet.f32 %6772, 1
  %6775 = fsub fast float %6757, %6773
  %6776 = fsub fast float %6758, %6774
  %6777 = fcmp fast olt float %6775, 0.000000e+00
  %6778 = fcmp fast olt float %6776, 0.000000e+00
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6781 = extractvalue %dx.types.CBufRet.f32 %6779, 1
  %6782 = extractvalue %dx.types.CBufRet.f32 %6779, 2
  %6783 = extractvalue %dx.types.CBufRet.f32 %6779, 3
  %6784 = select i1 %6777, float %6780, float %6782
  %6785 = select i1 %6778, float %6781, float %6783
  %6786 = fmul fast float %6784, %6775
  %6787 = fmul fast float %6785, %6776
  %6788 = call float @dx.op.unary.f32(i32 6, float %6786)  ; FAbs(value)
  %6789 = call float @dx.op.unary.f32(i32 6, float %6787)  ; FAbs(value)
  %6790 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  %6791 = call float @dx.op.binary.f32(i32 35, float %6788, float %6789)  ; FMax(a,b)
  %6792 = fsub fast float %6790, %6791
  %6793 = call float @dx.op.unary.f32(i32 7, float %6792)  ; Saturate(value)
  %6794 = fmul fast float %6793, %6765
  br label %6795

; <label>:6795                                    ; preds = %6771, %6715
  %6796 = phi float [ %6794, %6771 ], [ 0.000000e+00, %6715 ]
  %6797 = extractvalue %dx.types.CBufRet.f32 %6743, 2
  %6798 = extractvalue %dx.types.CBufRet.f32 %6767, 1
  %6799 = fadd fast float %6798, %6797
  %6800 = fcmp fast ogt float %6799, 0.000000e+00
  %6801 = extractvalue %dx.types.CBufRet.f32 %6706, 0
  br i1 %6800, label %6802, label %6825

; <label>:6802                                    ; preds = %6795
  %6803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.CBufRet.f32 %6803, 1
  %6806 = fsub fast float %6749, %6804
  %6807 = fsub fast float %6750, %6805
  %6808 = fcmp fast olt float %6806, 0.000000e+00
  %6809 = fcmp fast olt float %6807, 0.000000e+00
  %6810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6811 = extractvalue %dx.types.CBufRet.f32 %6810, 0
  %6812 = extractvalue %dx.types.CBufRet.f32 %6810, 1
  %6813 = extractvalue %dx.types.CBufRet.f32 %6810, 2
  %6814 = extractvalue %dx.types.CBufRet.f32 %6810, 3
  %6815 = select i1 %6808, float %6811, float %6813
  %6816 = select i1 %6809, float %6812, float %6814
  %6817 = fmul fast float %6815, %6806
  %6818 = fmul fast float %6816, %6807
  %6819 = call float @dx.op.unary.f32(i32 6, float %6817)  ; FAbs(value)
  %6820 = call float @dx.op.unary.f32(i32 6, float %6818)  ; FAbs(value)
  %6821 = call float @dx.op.binary.f32(i32 35, float %6819, float %6820)  ; FMax(a,b)
  %6822 = fsub fast float %6801, %6821
  %6823 = call float @dx.op.unary.f32(i32 7, float %6822)  ; Saturate(value)
  %6824 = fmul fast float %6823, %6765
  br label %6825

; <label>:6825                                    ; preds = %6802, %6795
  %6826 = phi float [ %6824, %6802 ], [ 0.000000e+00, %6795 ]
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 1
  %6829 = call float @dx.op.unary.f32(i32 7, float %6828)  ; Saturate(value)
  %6830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6831 = extractvalue %dx.types.CBufRet.f32 %6830, 0
  %6832 = extractvalue %dx.types.CBufRet.f32 %6830, 1
  %6833 = fsub fast float %6734, %6831
  %6834 = fsub fast float %6738, %6832
  %6835 = fcmp fast olt float %6833, 0.000000e+00
  %6836 = fcmp fast olt float %6834, 0.000000e+00
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6840 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6841 = extractvalue %dx.types.CBufRet.f32 %6837, 3
  %6842 = select i1 %6835, float %6838, float %6840
  %6843 = select i1 %6836, float %6839, float %6841
  %6844 = fmul fast float %6842, %6833
  %6845 = fmul fast float %6843, %6834
  %6846 = call float @dx.op.unary.f32(i32 6, float %6844)  ; FAbs(value)
  %6847 = call float @dx.op.unary.f32(i32 6, float %6845)  ; FAbs(value)
  %6848 = call float @dx.op.binary.f32(i32 35, float %6846, float %6847)  ; FMax(a,b)
  %6849 = fsub fast float %6801, %6848
  %6850 = call float @dx.op.unary.f32(i32 7, float %6849)  ; Saturate(value)
  %6851 = call float @dx.op.binary.f32(i32 36, float %6850, float %6829)  ; FMin(a,b)
  %6852 = fmul fast float %6851, %6765
  %6853 = fsub fast float %6826, %6852
  %6854 = fsub fast float %6796, %6826
  %6855 = fsub fast float %6854, %6852
  %6856 = call float @dx.op.binary.f32(i32 35, float %6826, float %6796)  ; FMax(a,b)
  %6857 = call float @dx.op.binary.f32(i32 35, float %6852, float %6856)  ; FMax(a,b)
  %6858 = fcmp fast olt float %6857, 1.000000e+00
  br i1 %6858, label %6859, label %7257, !dx.controlflow.hints !103

; <label>:6859                                    ; preds = %6825
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 0
  %6862 = fcmp fast une float %6861, 0.000000e+00
  br i1 %6862, label %6863, label %7257, !dx.controlflow.hints !104

; <label>:6863                                    ; preds = %6859
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 0
  %6866 = extractvalue %dx.types.CBufRet.f32 %6864, 1
  %6867 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6868 = extractvalue %dx.types.CBufRet.f32 %6864, 3
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6871 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6872 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6873 = extractvalue %dx.types.CBufRet.f32 %6869, 3
  %6874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6875 = extractvalue %dx.types.CBufRet.f32 %6874, 0
  %6876 = extractvalue %dx.types.CBufRet.f32 %6874, 1
  %6877 = extractvalue %dx.types.CBufRet.f32 %6874, 2
  %6878 = extractvalue %dx.types.CBufRet.f32 %6874, 3
  %6879 = fmul fast float %6865, %6711
  %6880 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6866, float %6879)  ; FMad(a,b,c)
  %6881 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6867, float %6880)  ; FMad(a,b,c)
  %6882 = fadd fast float %6881, %6868
  %6883 = fmul fast float %6870, %6711
  %6884 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6871, float %6883)  ; FMad(a,b,c)
  %6885 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6872, float %6884)  ; FMad(a,b,c)
  %6886 = fadd fast float %6885, %6873
  %6887 = fmul fast float %6875, %6711
  %6888 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %6876, float %6887)  ; FMad(a,b,c)
  %6889 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6877, float %6888)  ; FMad(a,b,c)
  %6890 = fadd fast float %6889, %6878
  %6891 = fcmp fast oge float %6882, 1.000000e+00
  %6892 = fcmp fast oge float %6886, 1.000000e+00
  %6893 = or i1 %6891, %6892
  %6894 = fcmp fast olt float %6882, 0.000000e+00
  %6895 = fcmp fast olt float %6886, 0.000000e+00
  %6896 = or i1 %6894, %6895
  %6897 = or i1 %6893, %6896
  br i1 %6897, label %7257, label %6898, !dx.controlflow.hints !105

; <label>:6898                                    ; preds = %6863
  %6899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6899, 0
  %6901 = extractvalue %dx.types.CBufRet.f32 %6899, 1
  %6902 = extractvalue %dx.types.CBufRet.f32 %6899, 2
  %6903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.i32 %6903, 2
  %6905 = uitofp i32 %6904 to float
  %6906 = extractvalue %dx.types.CBufRet.i32 %6903, 3
  %6907 = uitofp i32 %6906 to float
  %6908 = extractvalue %dx.types.CBufRet.f32 %6899, 3
  %6909 = fmul fast float %6908, 2.000000e+00
  %6910 = fsub fast float %6882, %6900
  %6911 = fsub fast float %6886, %6901
  %6912 = fmul fast float %6909, %6910
  %6913 = fmul fast float %6909, %6911
  %6914 = fdiv fast float 1.000000e+00, %6694
  %6915 = fmul fast float %6913, %6914
  %6916 = call float @dx.op.unary.f32(i32 6, float %6915)  ; FAbs(value)
  %6917 = fmul fast float %6902, %6713
  %6918 = fmul fast float %6917, %6909
  %6919 = call float @dx.op.unary.f32(i32 6, float %6918)  ; FAbs(value)
  %6920 = call float @dx.op.unary.f32(i32 6, float %6912)  ; FAbs(value)
  %6921 = call float @dx.op.binary.f32(i32 35, float %6919, float %6916)  ; FMax(a,b)
  %6922 = call float @dx.op.binary.f32(i32 35, float %6920, float %6921)  ; FMax(a,b)
  %6923 = fmul fast float %6922, 2.000000e+00
  %6924 = call float @dx.op.unary.f32(i32 23, float %6923)  ; Log(value)
  %6925 = call float @dx.op.binary.f32(i32 35, float %6924, float %6905)  ; FMax(a,b)
  %6926 = call float @dx.op.unary.f32(i32 22, float %6925)  ; Frc(value)
  %6927 = fadd fast float %6926, 0xBFEA666660000000
  %6928 = fmul fast float %6927, 8.000000e+00
  %6929 = call float @dx.op.unary.f32(i32 7, float %6928)  ; Saturate(value)
  %6930 = call float @dx.op.unary.f32(i32 27, float %6925)  ; Round_ni(value)
  %6931 = fadd fast float %6930, %6929
  %6932 = call float @dx.op.binary.f32(i32 36, float %6931, float %6907)  ; FMin(a,b)
  %6933 = call float @dx.op.unary.f32(i32 27, float %6932)  ; Round_ni(value)
  %6934 = fsub fast float -0.000000e+00, %6933
  %6935 = call float @dx.op.unary.f32(i32 21, float %6934)  ; Exp(value)
  %6936 = fmul fast float %6935, %6909
  %6937 = fmul fast float %6936, %6882
  %6938 = fmul fast float %6936, %6886
  %6939 = fmul fast float %6937, 2.500000e-01
  %6940 = fmul fast float %6938, 2.500000e-01
  %6941 = fadd fast float %6939, 5.000000e-01
  %6942 = fadd fast float %6940, 5.000000e-01
  %6943 = fsub fast float %6907, %6905
  %6944 = fptoui float %6943 to i32
  %6945 = add i32 %6944, 320
  %6946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6945)  ; CBufferLoadLegacy(handle,regIndex)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6946, 0
  %6948 = extractvalue %dx.types.CBufRet.f32 %6946, 1
  %6949 = fcmp fast une float %6932, %6907
  %6950 = fsub fast float %6882, %6947
  %6951 = fsub fast float %6886, %6948
  %6952 = call float @dx.op.unary.f32(i32 6, float %6950)  ; FAbs(value)
  %6953 = call float @dx.op.unary.f32(i32 6, float %6951)  ; FAbs(value)
  %6954 = fmul fast float %6952, %6936
  %6955 = fmul fast float %6953, %6936
  %6956 = fcmp fast olt float %6954, 1.000000e+00
  %6957 = fcmp fast olt float %6955, 1.000000e+00
  %6958 = and i1 %6956, %6957
  %6959 = or i1 %6949, %6958
  br i1 %6959, label %6960, label %7257, !dx.controlflow.hints !106

; <label>:6960                                    ; preds = %6898
  %6961 = fmul fast float %6938, 5.000000e-01
  %6962 = fmul fast float %6937, 5.000000e-01
  %6963 = fadd fast float %6961, 5.000000e-01
  %6964 = fadd fast float %6962, 5.000000e-01
  %6965 = sitofp i32 %6904 to float
  %6966 = fsub fast float %6932, %6965
  %6967 = call float @dx.op.unary.f32(i32 27, float %6966)  ; Round_ni(value)
  %6968 = call float @dx.op.unary.f32(i32 22, float %6932)  ; Frc(value)
  %6969 = call float @dx.op.unary.f32(i32 22, float %6964)  ; Frc(value)
  %6970 = call float @dx.op.unary.f32(i32 22, float %6963)  ; Frc(value)
  %6971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6969, float %6970, float %6967, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6972 = extractvalue %dx.types.ResRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.ResRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.ResRet.f32 %6971, 2
  %6975 = extractvalue %dx.types.ResRet.f32 %6971, 3
  %6976 = fcmp fast ogt float %6968, 0.000000e+00
  br i1 %6976, label %6977, label %6998, !dx.controlflow.hints !107

; <label>:6977                                    ; preds = %6960
  %6978 = fadd fast float %6967, 1.000000e+00
  %6979 = call float @dx.op.unary.f32(i32 22, float %6941)  ; Frc(value)
  %6980 = call float @dx.op.unary.f32(i32 22, float %6942)  ; Frc(value)
  %6981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6979, float %6980, float %6978, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6982 = extractvalue %dx.types.ResRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.ResRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.ResRet.f32 %6981, 2
  %6985 = extractvalue %dx.types.ResRet.f32 %6981, 3
  %6986 = fsub fast float %6982, %6972
  %6987 = fsub fast float %6983, %6973
  %6988 = fsub fast float %6984, %6974
  %6989 = fsub fast float %6985, %6975
  %6990 = fmul fast float %6986, %6968
  %6991 = fmul fast float %6987, %6968
  %6992 = fmul fast float %6988, %6968
  %6993 = fmul fast float %6989, %6968
  %6994 = fadd fast float %6990, %6972
  %6995 = fadd fast float %6991, %6973
  %6996 = fadd fast float %6992, %6974
  %6997 = fadd fast float %6993, %6975
  br label %6998

; <label>:6998                                    ; preds = %6977, %6960
  %6999 = phi float [ %6994, %6977 ], [ %6972, %6960 ]
  %7000 = phi float [ %6995, %6977 ], [ %6973, %6960 ]
  %7001 = phi float [ %6996, %6977 ], [ %6974, %6960 ]
  %7002 = phi float [ %6997, %6977 ], [ %6975, %6960 ]
  %7003 = fadd fast float %6999, -5.000000e-01
  %7004 = fadd fast float %7001, -5.000000e-01
  %7005 = fmul fast float %7003, 0xBFD5555560000000
  %7006 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7004, float %7005)  ; FMad(a,b,c)
  %7007 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7000, float 0.000000e+00)  ; FMad(a,b,c)
  %7008 = fadd fast float %7007, %7002
  %7009 = fmul fast float %7003, -7.500000e-01
  %7010 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7004, float %7009)  ; FMad(a,b,c)
  %7011 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7000, float 0.000000e+00)  ; FMad(a,b,c)
  %7012 = fadd fast float %7011, %7002
  %7013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7013, 0
  %7015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.CBufRet.f32 %7015, 2
  %7019 = extractvalue %dx.types.CBufRet.f32 %7015, 3
  %7020 = fsub fast float %7016, %7006
  %7021 = fsub fast float %7017, %7008
  %7022 = fsub fast float %7018, %7010
  %7023 = fsub fast float %7019, %7012
  %7024 = fmul fast float %7020, %7014
  %7025 = fmul fast float %7021, %7014
  %7026 = fmul fast float %7022, %7014
  %7027 = fmul fast float %7023, %7014
  %7028 = fadd fast float %7024, %7006
  %7029 = fadd fast float %7025, %7008
  %7030 = fadd fast float %7026, %7010
  %7031 = fadd fast float %7027, %7012
  %7032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7033 = extractvalue %dx.types.ResRet.i32 %7032, 0
  %7034 = and i32 %7033, 536870911
  %7035 = uitofp i32 %7034 to float
  %7036 = fmul fast float %7035, %6882
  %7037 = fmul fast float %7035, %6886
  %7038 = fptoui float %7036 to i32
  %7039 = fptoui float %7037 to i32
  %7040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7041 = extractvalue %dx.types.ResRet.i32 %7040, 0
  %7042 = and i32 %7041, 31
  %7043 = lshr i32 %7038, %7042
  %7044 = lshr i32 %7039, %7042
  %7045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7046 = extractvalue %dx.types.ResRet.i32 %7045, 0
  %7047 = and i32 %7046, 31
  %7048 = shl i32 1, %7047
  %7049 = call i32 @dx.op.binary.i32(i32 40, i32 %7048, i32 4)  ; UMin(a,b)
  %7050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7051 = extractvalue %dx.types.ResRet.i32 %7050, 0
  %7052 = extractvalue %dx.types.ResRet.i32 %7050, 1
  %7053 = icmp eq i32 %7049, 0
  br i1 %7053, label %7095, label %7054

; <label>:7054                                    ; preds = %6998
  br label %7055

; <label>:7055                                    ; preds = %7083, %7054
  %7056 = phi i32 [ %7086, %7083 ], [ 0, %7054 ]
  %7057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7058 = extractvalue %dx.types.ResRet.i32 %7057, 0
  %7059 = lshr i32 %7058, 16
  %7060 = and i32 %7059, 31
  %7061 = shl i32 %7044, %7060
  %7062 = add i32 %7061, %7043
  %7063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7064 = extractvalue %dx.types.ResRet.i32 %7063, 0
  %7065 = and i32 %7064, 31
  %7066 = shl i32 %7062, %7065
  %7067 = add i32 %7066, %7056
  %7068 = shl i32 %7067, 2
  %7069 = add i32 %7068, 32
  %7070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7069, i32 undef)  ; BufferLoad(srv,index,wot)
  %7071 = extractvalue %dx.types.ResRet.i32 %7070, 0
  %7072 = icmp slt i32 %7071, 0
  %7073 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7056
  %7074 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7056
  %7075 = bitcast float* %7073 to i32*
  %7076 = bitcast float* %7074 to i32*
  br i1 %7072, label %7077, label %7083

; <label>:7077                                    ; preds = %7055
  %7078 = and i32 %7071, 1073741823
  %7079 = add nuw nsw i32 %7078, 20
  %7080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7079, i32 undef)  ; BufferLoad(srv,index,wot)
  %7081 = extractvalue %dx.types.ResRet.i32 %7080, 0
  %7082 = extractvalue %dx.types.ResRet.i32 %7080, 1
  br label %7083

; <label>:7083                                    ; preds = %7077, %7055
  %7084 = phi i32 [ %7081, %7077 ], [ %7051, %7055 ]
  %7085 = phi i32 [ %7082, %7077 ], [ %7052, %7055 ]
  store i32 %7084, i32* %7075, align 4
  store i32 %7085, i32* %7076, align 4
  %7086 = add nuw i32 %7056, 1
  %7087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.i32 %7087, 2
  %7089 = icmp eq i32 %7088, 0
  %7090 = icmp ugt i32 %7071, -1073741825
  %7091 = and i1 %7090, %7089
  %7092 = icmp ult i32 %7086, %7049
  %7093 = and i1 %7091, %7092
  br i1 %7093, label %7055, label %7094

; <label>:7094                                    ; preds = %7083
  br label %7095

; <label>:7095                                    ; preds = %7094, %6998
  %7096 = phi i32 [ 0, %6998 ], [ %7086, %7094 ]
  %7097 = extractvalue %dx.types.CBufRet.f32 %6860, 2
  %7098 = fptoui float %7097 to i32
  %7099 = icmp eq i32 %7098, 0
  br i1 %7099, label %7151, label %7100

; <label>:7100                                    ; preds = %7095
  br label %7101

; <label>:7101                                    ; preds = %7146, %7100
  %7102 = phi i32 [ %7147, %7146 ], [ %7096, %7100 ]
  %7103 = phi i32 [ %7148, %7146 ], [ 0, %7100 ]
  %7104 = lshr i32 %7103, 2
  %7105 = and i32 %7103, 3
  %7106 = add nuw nsw i32 %7104, 83
  %7107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7106)  ; CBufferLoadLegacy(handle,regIndex)
  %7108 = extractvalue %dx.types.CBufRet.i32 %7107, 0
  %7109 = extractvalue %dx.types.CBufRet.i32 %7107, 1
  %7110 = extractvalue %dx.types.CBufRet.i32 %7107, 2
  %7111 = extractvalue %dx.types.CBufRet.i32 %7107, 3
  %7112 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7108, i32* %7112, align 4
  %7113 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7109, i32* %7113, align 4
  %7114 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7110, i32* %7114, align 4
  %7115 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7111, i32* %7115, align 4
  %7116 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7105
  %7117 = load i32, i32* %7116, align 4, !tbaa !108, !noalias !112
  %7118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7119 = extractvalue %dx.types.ResRet.i32 %7118, 0
  %7120 = lshr i32 %7119, 16
  %7121 = and i32 %7120, 31
  %7122 = shl i32 %7044, %7121
  %7123 = add i32 %7122, %7043
  %7124 = shl i32 %7123, 2
  %7125 = add i32 %7124, %7117
  %7126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7125, i32 undef)  ; BufferLoad(srv,index,wot)
  %7127 = extractvalue %dx.types.ResRet.i32 %7126, 0
  %7128 = icmp eq i32 %7127, 0
  br i1 %7128, label %7146, label %7129

; <label>:7129                                    ; preds = %7101
  %7130 = icmp slt i32 %7127, 0
  %7131 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7102
  %7132 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7102
  %7133 = bitcast float* %7131 to i32*
  %7134 = bitcast float* %7132 to i32*
  br i1 %7130, label %7135, label %7142

; <label>:7135                                    ; preds = %7129
  %7136 = and i32 %7127, 1073741823
  %7137 = add i32 %7117, 20
  %7138 = add i32 %7137, %7136
  %7139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7138, i32 undef)  ; BufferLoad(srv,index,wot)
  %7140 = extractvalue %dx.types.ResRet.i32 %7139, 0
  %7141 = extractvalue %dx.types.ResRet.i32 %7139, 1
  br label %7142

; <label>:7142                                    ; preds = %7135, %7129
  %7143 = phi i32 [ %7140, %7135 ], [ %7051, %7129 ]
  %7144 = phi i32 [ %7141, %7135 ], [ %7052, %7129 ]
  store i32 %7143, i32* %7133, align 4
  store i32 %7144, i32* %7134, align 4
  %7145 = add i32 %7102, 1
  br label %7146

; <label>:7146                                    ; preds = %7142, %7101
  %7147 = phi i32 [ %7102, %7101 ], [ %7145, %7142 ]
  %7148 = add nuw i32 %7103, 1
  %7149 = icmp eq i32 %7148, %7098
  br i1 %7149, label %7150, label %7101

; <label>:7150                                    ; preds = %7146
  br label %7151

; <label>:7151                                    ; preds = %7150, %7095
  %7152 = phi i32 [ %7096, %7095 ], [ %7147, %7150 ]
  %7153 = icmp eq i32 %7152, 1
  %7154 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %7155 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %7153, label %7156, label %7159

; <label>:7156                                    ; preds = %7151
  %7157 = load float, float* %7154, align 4
  %7158 = load float, float* %7155, align 4
  br label %7186

; <label>:7159                                    ; preds = %7151
  %7160 = load float, float* %7154, align 4
  %7161 = load float, float* %7155, align 4
  %7162 = fdiv fast float 1.000000e+00, %7161
  %7163 = fsub fast float %7160, %7162
  %7164 = icmp ugt i32 %7152, 1
  br i1 %7164, label %7165, label %7181

; <label>:7165                                    ; preds = %7159
  br label %7166

; <label>:7166                                    ; preds = %7166, %7165
  %7167 = phi float [ %7176, %7166 ], [ %7163, %7165 ]
  %7168 = phi float [ %7177, %7166 ], [ %7160, %7165 ]
  %7169 = phi i32 [ %7178, %7166 ], [ 1, %7165 ]
  %7170 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7169
  %7171 = load float, float* %7170, align 4
  %7172 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7169
  %7173 = load float, float* %7172, align 4
  %7174 = fdiv fast float 1.000000e+00, %7173
  %7175 = fsub fast float %7171, %7174
  %7176 = call float @dx.op.binary.f32(i32 36, float %7167, float %7175)  ; FMin(a,b)
  %7177 = call float @dx.op.binary.f32(i32 35, float %7168, float %7171)  ; FMax(a,b)
  %7178 = add nuw i32 %7169, 1
  %7179 = icmp eq i32 %7178, %7152
  br i1 %7179, label %7180, label %7166

; <label>:7180                                    ; preds = %7166
  br label %7181

; <label>:7181                                    ; preds = %7180, %7159
  %7182 = phi float [ %7163, %7159 ], [ %7176, %7180 ]
  %7183 = phi float [ %7160, %7159 ], [ %7177, %7180 ]
  %7184 = fsub fast float %7183, %7182
  %7185 = fdiv fast float 1.000000e+00, %7184
  br label %7186

; <label>:7186                                    ; preds = %7181, %7156
  %7187 = phi float [ %7157, %7156 ], [ %7183, %7181 ]
  %7188 = phi float [ %7158, %7156 ], [ %7185, %7181 ]
  %7189 = fadd fast float %6890, %7187
  %7190 = fmul fast float %7189, %7188
  %7191 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  %7192 = fmul fast float %7191, 2.000000e+00
  %7193 = fsub fast float 1.000000e+00, %7192
  %7194 = fmul fast float %7028, %7028
  %7195 = fsub fast float %7029, %7194
  %7196 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7195)  ; FMax(a,b)
  %7197 = fdiv fast float 1.000000e+00, %7196
  %7198 = fmul fast float %7029, %7028
  %7199 = fsub fast float %7030, %7198
  %7200 = fsub fast float %7193, %7028
  %7201 = fmul fast float %7193, %7193
  %7202 = fsub fast float %7201, %7029
  %7203 = fmul fast float %7197, %7199
  %7204 = fmul fast float %7203, %7200
  %7205 = fsub fast float %7202, %7204
  %7206 = fmul fast float %7029, %7029
  %7207 = fsub fast float %7031, %7206
  %7208 = fmul fast float %7199, %7199
  %7209 = fmul fast float %7208, %7197
  %7210 = fsub fast float %7207, %7209
  %7211 = fdiv fast float %7205, %7210
  %7212 = fmul fast float %7211, %7199
  %7213 = fsub fast float %7200, %7212
  %7214 = fmul fast float %7213, %7197
  %7215 = fmul fast float %7214, %7028
  %7216 = fsub fast float 1.000000e+00, %7215
  %7217 = fmul fast float %7211, %7029
  %7218 = fsub fast float %7216, %7217
  %7219 = fmul fast float %7214, %7214
  %7220 = fmul fast float %7211, 4.000000e+00
  %7221 = fmul fast float %7220, %7218
  %7222 = fsub fast float %7219, %7221
  %7223 = call float @dx.op.unary.f32(i32 24, float %7222)  ; Sqrt(value)
  %7224 = fcmp fast oge float %7214, 0.000000e+00
  %7225 = fsub fast float -0.000000e+00, %7223
  %7226 = select i1 %7224, float %7225, float %7223
  %7227 = fsub fast float %7226, %7214
  %7228 = fdiv fast float %7227, %7211
  %7229 = fdiv fast float %7218, %7227
  %7230 = fmul fast float %7228, 5.000000e-01
  %7231 = fmul fast float %7229, 2.000000e+00
  %7232 = select i1 %7224, float %7230, float %7231
  %7233 = select i1 %7224, float %7231, float %7230
  %7234 = call float @dx.op.binary.f32(i32 35, float %7232, float %7233)  ; FMax(a,b)
  %7235 = call float @dx.op.binary.f32(i32 36, float %7232, float %7233)  ; FMin(a,b)
  %7236 = fcmp fast ogt float %7193, %7234
  %7237 = fsub fast float %7193, %7235
  %7238 = fsub fast float %7193, %7234
  %7239 = fsub fast float %7234, %7235
  %7240 = select i1 %7236, float %7238, float %7239
  %7241 = fmul float %7237, %7240
  %7242 = select i1 %7236, float %7235, float %7193
  %7243 = fcmp fast ogt float %7193, %7235
  %7244 = fmul fast float %7242, %7234
  %7245 = fadd fast float %7242, %7234
  %7246 = fmul fast float %7245, %7028
  %7247 = fadd fast float %7244, %7029
  %7248 = fsub fast float %7247, %7246
  %7249 = fdiv fast float %7248, %7241
  %7250 = select i1 %7243, float %7249, float 0.000000e+00
  %7251 = fsub fast float 1.000000e+00, %7250
  %7252 = select i1 %7236, float %7251, float %7250
  %7253 = call float @dx.op.unary.f32(i32 7, float %7252)  ; Saturate(value)
  %7254 = extractvalue %dx.types.CBufRet.f32 %7013, 3
  %7255 = fmul fast float %7254, %7253
  %7256 = fsub fast float 1.000000e+00, %7255
  br label %7257

; <label>:7257                                    ; preds = %7186, %6898, %6863, %6859, %6825
  %7258 = phi float [ 1.000000e+00, %6825 ], [ %7256, %7186 ], [ 1.000000e+00, %6863 ], [ 1.000000e+00, %6898 ], [ 1.000000e+00, %6859 ]
  %7259 = fcmp fast ogt float %6855, 0.000000e+00
  br i1 %7259, label %7260, label %7422, !dx.controlflow.hints !121

; <label>:7260                                    ; preds = %7257
  %7261 = fadd fast float %6768, %6742
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 2
  %7264 = extractvalue %dx.types.CBufRet.f32 %7262, 3
  %7265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.f32 %7265, 2
  %7267 = call float @dx.op.binary.f32(i32 35, float %7261, float 0.000000e+00)  ; FMax(a,b)
  %7268 = fadd fast float %7267, 0x3F10000000000000
  %7269 = fcmp fast oeq float %7266, 0.000000e+00
  br i1 %7269, label %7270, label %7337

; <label>:7270                                    ; preds = %7260
  %7271 = extractvalue %dx.types.CBufRet.f32 %7262, 1
  %7272 = extractvalue %dx.types.CBufRet.f32 %7262, 0
  %7273 = fmul fast float %7272, %6757
  %7274 = fmul fast float %7271, %6758
  %7275 = fadd fast float %7273, 5.000000e-01
  %7276 = call float @dx.op.unary.f32(i32 27, float %7275)  ; Round_ni(value)
  %7277 = fadd fast float %7274, 5.000000e-01
  %7278 = call float @dx.op.unary.f32(i32 27, float %7277)  ; Round_ni(value)
  %7279 = fsub fast float %7275, %7276
  %7280 = fsub fast float %7277, %7278
  %7281 = fadd fast float %7276, -5.000000e-01
  %7282 = fadd fast float %7278, -5.000000e-01
  %7283 = fmul fast float %7279, 2.000000e+00
  %7284 = fsub fast float 3.000000e+00, %7283
  %7285 = fadd fast float %7283, 1.000000e+00
  %7286 = fsub fast float 2.000000e+00, %7279
  %7287 = bitcast float %7284 to i32
  %7288 = sub nsw i32 2129859010, %7287
  %7289 = bitcast i32 %7288 to float
  %7290 = fmul fast float %7289, %7286
  %7291 = fadd fast float %7290, -1.000000e+00
  %7292 = bitcast float %7285 to i32
  %7293 = sub nsw i32 2129859010, %7292
  %7294 = bitcast i32 %7293 to float
  %7295 = fmul fast float %7294, %7279
  %7296 = fadd fast float %7295, 1.000000e+00
  %7297 = fmul fast float %7280, 2.000000e+00
  %7298 = fsub fast float 3.000000e+00, %7297
  %7299 = fadd fast float %7297, 1.000000e+00
  %7300 = fsub fast float 2.000000e+00, %7280
  %7301 = bitcast float %7298 to i32
  %7302 = sub nsw i32 2129859010, %7301
  %7303 = bitcast i32 %7302 to float
  %7304 = fmul fast float %7303, %7300
  %7305 = fadd fast float %7304, -1.000000e+00
  %7306 = bitcast float %7299 to i32
  %7307 = sub nsw i32 2129859010, %7306
  %7308 = bitcast i32 %7307 to float
  %7309 = fmul fast float %7308, %7280
  %7310 = fadd fast float %7309, 1.000000e+00
  %7311 = fadd fast float %7291, %7281
  %7312 = fmul fast float %7311, %7263
  %7313 = fadd fast float %7305, %7282
  %7314 = fmul fast float %7313, %7264
  %7315 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7312, float %7314, float undef, float undef, i32 0, i32 0, i32 undef, float %7268)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7316 = extractvalue %dx.types.ResRet.f32 %7315, 0
  %7317 = fmul fast float %7316, %7284
  %7318 = fadd fast float %7296, %7281
  %7319 = fmul fast float %7318, %7263
  %7320 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7319, float %7314, float undef, float undef, i32 0, i32 0, i32 undef, float %7268)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7321 = extractvalue %dx.types.ResRet.f32 %7320, 0
  %7322 = fmul fast float %7321, %7285
  %7323 = fadd fast float %7310, %7282
  %7324 = fmul fast float %7323, %7264
  %7325 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7312, float %7324, float undef, float undef, i32 0, i32 0, i32 undef, float %7268)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = fmul fast float %7326, %7284
  %7328 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7319, float %7324, float undef, float undef, i32 0, i32 0, i32 undef, float %7268)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7329 = extractvalue %dx.types.ResRet.f32 %7328, 0
  %7330 = fmul fast float %7329, %7285
  %7331 = fadd fast float %7330, %7327
  %7332 = fmul fast float %7331, %7299
  %7333 = fadd fast float %7322, %7317
  %7334 = fmul fast float %7333, %7298
  %7335 = fadd fast float %7334, %7332
  %7336 = fmul fast float %7335, 6.250000e-02
  br label %7422

; <label>:7337                                    ; preds = %7260
  %7338 = fmul fast float %269, 0x401921FB60000000
  %7339 = call float @dx.op.unary.f32(i32 13, float %7338)  ; Sin(value)
  %7340 = call float @dx.op.unary.f32(i32 12, float %7338)  ; Cos(value)
  %7341 = fsub fast float -0.000000e+00, %7339
  br label %7342

; <label>:7342                                    ; preds = %7391, %7337
  %7343 = phi float [ 0.000000e+00, %7337 ], [ %7386, %7391 ]
  %7344 = phi float [ 0.000000e+00, %7337 ], [ %7388, %7391 ]
  %7345 = phi i32 [ 0, %7337 ], [ %7392, %7391 ]
  %7346 = mul i32 %7345, 2
  %7347 = add i32 0, %7346
  %7348 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7347
  %7349 = load float, float* %7348, align 4
  %7350 = mul i32 %7345, 2
  %7351 = add i32 1, %7350
  %7352 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7351
  %7353 = load float, float* %7352, align 4
  %7354 = fmul fast float %7349, %7340
  %7355 = call float @dx.op.tertiary.f32(i32 46, float %7353, float %7341, float %7354)  ; FMad(a,b,c)
  %7356 = fmul fast float %7349, %7339
  %7357 = call float @dx.op.tertiary.f32(i32 46, float %7353, float %7340, float %7356)  ; FMad(a,b,c)
  %7358 = fmul fast float %7355, %7266
  %7359 = fmul fast float %7357, %7266
  %7360 = fadd fast float %7358, %6757
  %7361 = fadd fast float %7359, %6758
  %7362 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7360, float %7361, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7363 = extractvalue %dx.types.ResRet.f32 %7362, 0
  %7364 = extractvalue %dx.types.ResRet.f32 %7362, 1
  %7365 = extractvalue %dx.types.ResRet.f32 %7362, 2
  %7366 = extractvalue %dx.types.ResRet.f32 %7362, 3
  %7367 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7363, float* %7367, align 4
  %7368 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7364, float* %7368, align 4
  %7369 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7365, float* %7369, align 4
  %7370 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7366, float* %7370, align 4
  %7371 = fsub fast float %7363, %7268
  %7372 = fcmp fast olt float %7371, 0.000000e+00
  %7373 = select i1 %7372, float 0.000000e+00, float 1.000000e+00
  %7374 = fadd fast float %7373, %7343
  %7375 = fmul fast float %7373, %7371
  %7376 = fadd fast float %7375, %7344
  br label %7377

; <label>:7377                                    ; preds = %7377, %7342
  %7378 = phi i32 [ 1, %7342 ], [ %7389, %7377 ]
  %7379 = phi float [ %7376, %7342 ], [ %7388, %7377 ]
  %7380 = phi float [ %7374, %7342 ], [ %7386, %7377 ]
  %7381 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7378
  %7382 = load float, float* %7381, align 4, !tbaa !122, !noalias !112
  %7383 = fsub fast float %7382, %7268
  %7384 = fcmp fast olt float %7383, 0.000000e+00
  %7385 = select i1 %7384, float 0.000000e+00, float 1.000000e+00
  %7386 = fadd fast float %7385, %7380
  %7387 = fmul fast float %7385, %7383
  %7388 = fadd fast float %7387, %7379
  %7389 = add nuw nsw i32 %7378, 1
  %7390 = icmp eq i32 %7389, 4
  br i1 %7390, label %7391, label %7377, !llvm.loop !124

; <label>:7391                                    ; preds = %7377
  %7392 = add nuw nsw i32 %7345, 1
  %7393 = icmp eq i32 %7392, 8
  br i1 %7393, label %7394, label %7342, !llvm.loop !125

; <label>:7394                                    ; preds = %7391
  %7395 = fdiv fast float 1.000000e+00, %7386
  %7396 = fmul fast float %7395, %7388
  %7397 = fdiv fast float 1.000000e+00, %7268
  %7398 = fmul fast float %7396, %7397
  %7399 = call float @dx.op.unary.f32(i32 7, float %7398)  ; Saturate(value)
  %7400 = call float @dx.op.binary.f32(i32 35, float %7399, float 0.000000e+00)  ; FMax(a,b)
  %7401 = fmul fast float %7386, 3.125000e-02
  %7402 = call float @dx.op.unary.f32(i32 7, float %7401)  ; Saturate(value)
  %7403 = fmul fast float %7402, 2.000000e+00
  %7404 = fadd fast float %7403, -1.000000e+00
  %7405 = fcmp fast ogt float %7404, 0.000000e+00
  %7406 = fcmp fast olt float %7404, 0.000000e+00
  %7407 = zext i1 %7405 to i32
  %7408 = zext i1 %7406 to i32
  %7409 = sub nsw i32 %7407, %7408
  %7410 = sitofp i32 %7409 to float
  %7411 = fmul fast float %7410, %7404
  %7412 = fsub fast float 1.000000e+00, %7411
  %7413 = fmul fast float %7412, %7412
  %7414 = fmul fast float %7413, %7412
  %7415 = fsub fast float %7412, %7414
  %7416 = fmul fast float %7415, %7400
  %7417 = fsub fast float 1.000000e+00, %7414
  %7418 = fsub fast float %7417, %7416
  %7419 = fmul fast float %7410, 5.000000e-01
  %7420 = fmul fast float %7419, %7418
  %7421 = fsub fast float 5.000000e-01, %7420
  br label %7422

; <label>:7422                                    ; preds = %7394, %7270, %7257
  %7423 = phi float [ 1.000000e+00, %7257 ], [ %7336, %7270 ], [ %7421, %7394 ]
  %7424 = fcmp fast ogt float %6853, 0.000000e+00
  br i1 %7424, label %7425, label %7589, !dx.controlflow.hints !126

; <label>:7425                                    ; preds = %7422
  %7426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7426, 1
  %7428 = fadd fast float %7427, %6742
  %7429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7430 = extractvalue %dx.types.CBufRet.f32 %7429, 2
  %7431 = extractvalue %dx.types.CBufRet.f32 %7429, 3
  %7432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7433 = extractvalue %dx.types.CBufRet.f32 %7432, 1
  %7434 = call float @dx.op.binary.f32(i32 35, float %7428, float 0.000000e+00)  ; FMax(a,b)
  %7435 = fadd fast float %7434, 0x3F10000000000000
  %7436 = fcmp fast oeq float %7433, 0.000000e+00
  br i1 %7436, label %7437, label %7504

; <label>:7437                                    ; preds = %7425
  %7438 = extractvalue %dx.types.CBufRet.f32 %7429, 1
  %7439 = extractvalue %dx.types.CBufRet.f32 %7429, 0
  %7440 = fmul fast float %7439, %6749
  %7441 = fmul fast float %7438, %6750
  %7442 = fadd fast float %7440, 5.000000e-01
  %7443 = call float @dx.op.unary.f32(i32 27, float %7442)  ; Round_ni(value)
  %7444 = fadd fast float %7441, 5.000000e-01
  %7445 = call float @dx.op.unary.f32(i32 27, float %7444)  ; Round_ni(value)
  %7446 = fsub fast float %7442, %7443
  %7447 = fsub fast float %7444, %7445
  %7448 = fadd fast float %7443, -5.000000e-01
  %7449 = fadd fast float %7445, -5.000000e-01
  %7450 = fmul fast float %7446, 2.000000e+00
  %7451 = fsub fast float 3.000000e+00, %7450
  %7452 = fadd fast float %7450, 1.000000e+00
  %7453 = fsub fast float 2.000000e+00, %7446
  %7454 = bitcast float %7451 to i32
  %7455 = sub nsw i32 2129859010, %7454
  %7456 = bitcast i32 %7455 to float
  %7457 = fmul fast float %7456, %7453
  %7458 = fadd fast float %7457, -1.000000e+00
  %7459 = bitcast float %7452 to i32
  %7460 = sub nsw i32 2129859010, %7459
  %7461 = bitcast i32 %7460 to float
  %7462 = fmul fast float %7461, %7446
  %7463 = fadd fast float %7462, 1.000000e+00
  %7464 = fmul fast float %7447, 2.000000e+00
  %7465 = fsub fast float 3.000000e+00, %7464
  %7466 = fadd fast float %7464, 1.000000e+00
  %7467 = fsub fast float 2.000000e+00, %7447
  %7468 = bitcast float %7465 to i32
  %7469 = sub nsw i32 2129859010, %7468
  %7470 = bitcast i32 %7469 to float
  %7471 = fmul fast float %7470, %7467
  %7472 = fadd fast float %7471, -1.000000e+00
  %7473 = bitcast float %7466 to i32
  %7474 = sub nsw i32 2129859010, %7473
  %7475 = bitcast i32 %7474 to float
  %7476 = fmul fast float %7475, %7447
  %7477 = fadd fast float %7476, 1.000000e+00
  %7478 = fadd fast float %7458, %7448
  %7479 = fmul fast float %7478, %7430
  %7480 = fadd fast float %7472, %7449
  %7481 = fmul fast float %7480, %7431
  %7482 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7479, float %7481, float undef, float undef, i32 0, i32 0, i32 undef, float %7435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7483 = extractvalue %dx.types.ResRet.f32 %7482, 0
  %7484 = fmul fast float %7483, %7451
  %7485 = fadd fast float %7463, %7448
  %7486 = fmul fast float %7485, %7430
  %7487 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7486, float %7481, float undef, float undef, i32 0, i32 0, i32 undef, float %7435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7488 = extractvalue %dx.types.ResRet.f32 %7487, 0
  %7489 = fmul fast float %7488, %7452
  %7490 = fadd fast float %7477, %7449
  %7491 = fmul fast float %7490, %7431
  %7492 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7479, float %7491, float undef, float undef, i32 0, i32 0, i32 undef, float %7435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7493 = extractvalue %dx.types.ResRet.f32 %7492, 0
  %7494 = fmul fast float %7493, %7451
  %7495 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7486, float %7491, float undef, float undef, i32 0, i32 0, i32 undef, float %7435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7496 = extractvalue %dx.types.ResRet.f32 %7495, 0
  %7497 = fmul fast float %7496, %7452
  %7498 = fadd fast float %7497, %7494
  %7499 = fmul fast float %7498, %7466
  %7500 = fadd fast float %7489, %7484
  %7501 = fmul fast float %7500, %7465
  %7502 = fadd fast float %7501, %7499
  %7503 = fmul fast float %7502, 6.250000e-02
  br label %7589

; <label>:7504                                    ; preds = %7425
  %7505 = fmul fast float %269, 0x401921FB60000000
  %7506 = call float @dx.op.unary.f32(i32 13, float %7505)  ; Sin(value)
  %7507 = call float @dx.op.unary.f32(i32 12, float %7505)  ; Cos(value)
  %7508 = fsub fast float -0.000000e+00, %7506
  br label %7509

; <label>:7509                                    ; preds = %7558, %7504
  %7510 = phi float [ 0.000000e+00, %7504 ], [ %7553, %7558 ]
  %7511 = phi float [ 0.000000e+00, %7504 ], [ %7555, %7558 ]
  %7512 = phi i32 [ 0, %7504 ], [ %7559, %7558 ]
  %7513 = mul i32 %7512, 2
  %7514 = add i32 0, %7513
  %7515 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7514
  %7516 = load float, float* %7515, align 4
  %7517 = mul i32 %7512, 2
  %7518 = add i32 1, %7517
  %7519 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7518
  %7520 = load float, float* %7519, align 4
  %7521 = fmul fast float %7516, %7507
  %7522 = call float @dx.op.tertiary.f32(i32 46, float %7520, float %7508, float %7521)  ; FMad(a,b,c)
  %7523 = fmul fast float %7516, %7506
  %7524 = call float @dx.op.tertiary.f32(i32 46, float %7520, float %7507, float %7523)  ; FMad(a,b,c)
  %7525 = fmul fast float %7522, %7433
  %7526 = fmul fast float %7524, %7433
  %7527 = fadd fast float %7525, %6749
  %7528 = fadd fast float %7526, %6750
  %7529 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7527, float %7528, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7530 = extractvalue %dx.types.ResRet.f32 %7529, 0
  %7531 = extractvalue %dx.types.ResRet.f32 %7529, 1
  %7532 = extractvalue %dx.types.ResRet.f32 %7529, 2
  %7533 = extractvalue %dx.types.ResRet.f32 %7529, 3
  %7534 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7530, float* %7534, align 4
  %7535 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7531, float* %7535, align 4
  %7536 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7532, float* %7536, align 4
  %7537 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7533, float* %7537, align 4
  %7538 = fsub fast float %7530, %7435
  %7539 = fcmp fast olt float %7538, 0.000000e+00
  %7540 = select i1 %7539, float 0.000000e+00, float 1.000000e+00
  %7541 = fadd fast float %7540, %7510
  %7542 = fmul fast float %7540, %7538
  %7543 = fadd fast float %7542, %7511
  br label %7544

; <label>:7544                                    ; preds = %7544, %7509
  %7545 = phi i32 [ 1, %7509 ], [ %7556, %7544 ]
  %7546 = phi float [ %7543, %7509 ], [ %7555, %7544 ]
  %7547 = phi float [ %7541, %7509 ], [ %7553, %7544 ]
  %7548 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7545
  %7549 = load float, float* %7548, align 4, !tbaa !122, !noalias !112
  %7550 = fsub fast float %7549, %7435
  %7551 = fcmp fast olt float %7550, 0.000000e+00
  %7552 = select i1 %7551, float 0.000000e+00, float 1.000000e+00
  %7553 = fadd fast float %7552, %7547
  %7554 = fmul fast float %7552, %7550
  %7555 = fadd fast float %7554, %7546
  %7556 = add nuw nsw i32 %7545, 1
  %7557 = icmp eq i32 %7556, 4
  br i1 %7557, label %7558, label %7544, !llvm.loop !124

; <label>:7558                                    ; preds = %7544
  %7559 = add nuw nsw i32 %7512, 1
  %7560 = icmp eq i32 %7559, 8
  br i1 %7560, label %7561, label %7509, !llvm.loop !125

; <label>:7561                                    ; preds = %7558
  %7562 = fdiv fast float 1.000000e+00, %7553
  %7563 = fmul fast float %7562, %7555
  %7564 = fdiv fast float 1.000000e+00, %7435
  %7565 = fmul fast float %7563, %7564
  %7566 = call float @dx.op.unary.f32(i32 7, float %7565)  ; Saturate(value)
  %7567 = call float @dx.op.binary.f32(i32 35, float %7566, float 0.000000e+00)  ; FMax(a,b)
  %7568 = fmul fast float %7553, 3.125000e-02
  %7569 = call float @dx.op.unary.f32(i32 7, float %7568)  ; Saturate(value)
  %7570 = fmul fast float %7569, 2.000000e+00
  %7571 = fadd fast float %7570, -1.000000e+00
  %7572 = fcmp fast ogt float %7571, 0.000000e+00
  %7573 = fcmp fast olt float %7571, 0.000000e+00
  %7574 = zext i1 %7572 to i32
  %7575 = zext i1 %7573 to i32
  %7576 = sub nsw i32 %7574, %7575
  %7577 = sitofp i32 %7576 to float
  %7578 = fmul fast float %7577, %7571
  %7579 = fsub fast float 1.000000e+00, %7578
  %7580 = fmul fast float %7579, %7579
  %7581 = fmul fast float %7580, %7579
  %7582 = fsub fast float %7579, %7581
  %7583 = fmul fast float %7582, %7567
  %7584 = fsub fast float 1.000000e+00, %7581
  %7585 = fsub fast float %7584, %7583
  %7586 = fmul fast float %7577, 5.000000e-01
  %7587 = fmul fast float %7586, %7585
  %7588 = fsub fast float 5.000000e-01, %7587
  br label %7589

; <label>:7589                                    ; preds = %7561, %7437, %7422
  %7590 = phi float [ 1.000000e+00, %7422 ], [ %7503, %7437 ], [ %7588, %7561 ]
  %7591 = fcmp fast ogt float %6852, 0.000000e+00
  br i1 %7591, label %7592, label %7756, !dx.controlflow.hints !127

; <label>:7592                                    ; preds = %7589
  %7593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7593, 0
  %7595 = fadd fast float %7594, %6742
  %7596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7596, 2
  %7598 = extractvalue %dx.types.CBufRet.f32 %7596, 3
  %7599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7600 = extractvalue %dx.types.CBufRet.f32 %7599, 0
  %7601 = call float @dx.op.binary.f32(i32 35, float %7595, float 0.000000e+00)  ; FMax(a,b)
  %7602 = fadd fast float %7601, 0x3F10000000000000
  %7603 = fcmp fast oeq float %7600, 0.000000e+00
  br i1 %7603, label %7604, label %7671

; <label>:7604                                    ; preds = %7592
  %7605 = extractvalue %dx.types.CBufRet.f32 %7596, 1
  %7606 = extractvalue %dx.types.CBufRet.f32 %7596, 0
  %7607 = fmul fast float %7606, %6734
  %7608 = fmul fast float %7605, %6738
  %7609 = fadd fast float %7607, 5.000000e-01
  %7610 = call float @dx.op.unary.f32(i32 27, float %7609)  ; Round_ni(value)
  %7611 = fadd fast float %7608, 5.000000e-01
  %7612 = call float @dx.op.unary.f32(i32 27, float %7611)  ; Round_ni(value)
  %7613 = fsub fast float %7609, %7610
  %7614 = fsub fast float %7611, %7612
  %7615 = fadd fast float %7610, -5.000000e-01
  %7616 = fadd fast float %7612, -5.000000e-01
  %7617 = fmul fast float %7613, 2.000000e+00
  %7618 = fsub fast float 3.000000e+00, %7617
  %7619 = fadd fast float %7617, 1.000000e+00
  %7620 = fsub fast float 2.000000e+00, %7613
  %7621 = bitcast float %7618 to i32
  %7622 = sub nsw i32 2129859010, %7621
  %7623 = bitcast i32 %7622 to float
  %7624 = fmul fast float %7623, %7620
  %7625 = fadd fast float %7624, -1.000000e+00
  %7626 = bitcast float %7619 to i32
  %7627 = sub nsw i32 2129859010, %7626
  %7628 = bitcast i32 %7627 to float
  %7629 = fmul fast float %7628, %7613
  %7630 = fadd fast float %7629, 1.000000e+00
  %7631 = fmul fast float %7614, 2.000000e+00
  %7632 = fsub fast float 3.000000e+00, %7631
  %7633 = fadd fast float %7631, 1.000000e+00
  %7634 = fsub fast float 2.000000e+00, %7614
  %7635 = bitcast float %7632 to i32
  %7636 = sub nsw i32 2129859010, %7635
  %7637 = bitcast i32 %7636 to float
  %7638 = fmul fast float %7637, %7634
  %7639 = fadd fast float %7638, -1.000000e+00
  %7640 = bitcast float %7633 to i32
  %7641 = sub nsw i32 2129859010, %7640
  %7642 = bitcast i32 %7641 to float
  %7643 = fmul fast float %7642, %7614
  %7644 = fadd fast float %7643, 1.000000e+00
  %7645 = fadd fast float %7625, %7615
  %7646 = fmul fast float %7645, %7597
  %7647 = fadd fast float %7639, %7616
  %7648 = fmul fast float %7647, %7598
  %7649 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7646, float %7648, float undef, float undef, i32 0, i32 0, i32 undef, float %7602)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7650 = extractvalue %dx.types.ResRet.f32 %7649, 0
  %7651 = fmul fast float %7650, %7618
  %7652 = fadd fast float %7630, %7615
  %7653 = fmul fast float %7652, %7597
  %7654 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7653, float %7648, float undef, float undef, i32 0, i32 0, i32 undef, float %7602)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7655 = extractvalue %dx.types.ResRet.f32 %7654, 0
  %7656 = fmul fast float %7655, %7619
  %7657 = fadd fast float %7644, %7616
  %7658 = fmul fast float %7657, %7598
  %7659 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7646, float %7658, float undef, float undef, i32 0, i32 0, i32 undef, float %7602)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7660 = extractvalue %dx.types.ResRet.f32 %7659, 0
  %7661 = fmul fast float %7660, %7618
  %7662 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7653, float %7658, float undef, float undef, i32 0, i32 0, i32 undef, float %7602)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7663 = extractvalue %dx.types.ResRet.f32 %7662, 0
  %7664 = fmul fast float %7663, %7619
  %7665 = fadd fast float %7664, %7661
  %7666 = fmul fast float %7665, %7633
  %7667 = fadd fast float %7656, %7651
  %7668 = fmul fast float %7667, %7632
  %7669 = fadd fast float %7668, %7666
  %7670 = fmul fast float %7669, 6.250000e-02
  br label %7756

; <label>:7671                                    ; preds = %7592
  %7672 = fmul fast float %269, 0x401921FB60000000
  %7673 = call float @dx.op.unary.f32(i32 13, float %7672)  ; Sin(value)
  %7674 = call float @dx.op.unary.f32(i32 12, float %7672)  ; Cos(value)
  %7675 = fsub fast float -0.000000e+00, %7673
  br label %7676

; <label>:7676                                    ; preds = %7725, %7671
  %7677 = phi float [ 0.000000e+00, %7671 ], [ %7720, %7725 ]
  %7678 = phi float [ 0.000000e+00, %7671 ], [ %7722, %7725 ]
  %7679 = phi i32 [ 0, %7671 ], [ %7726, %7725 ]
  %7680 = mul i32 %7679, 2
  %7681 = add i32 0, %7680
  %7682 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7681
  %7683 = load float, float* %7682, align 4
  %7684 = mul i32 %7679, 2
  %7685 = add i32 1, %7684
  %7686 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7685
  %7687 = load float, float* %7686, align 4
  %7688 = fmul fast float %7683, %7674
  %7689 = call float @dx.op.tertiary.f32(i32 46, float %7687, float %7675, float %7688)  ; FMad(a,b,c)
  %7690 = fmul fast float %7683, %7673
  %7691 = call float @dx.op.tertiary.f32(i32 46, float %7687, float %7674, float %7690)  ; FMad(a,b,c)
  %7692 = fmul fast float %7689, %7600
  %7693 = fmul fast float %7691, %7600
  %7694 = fadd fast float %7692, %6734
  %7695 = fadd fast float %7693, %6738
  %7696 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7694, float %7695, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7697 = extractvalue %dx.types.ResRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.ResRet.f32 %7696, 1
  %7699 = extractvalue %dx.types.ResRet.f32 %7696, 2
  %7700 = extractvalue %dx.types.ResRet.f32 %7696, 3
  %7701 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7697, float* %7701, align 4
  %7702 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7698, float* %7702, align 4
  %7703 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7699, float* %7703, align 4
  %7704 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7700, float* %7704, align 4
  %7705 = fsub fast float %7697, %7602
  %7706 = fcmp fast olt float %7705, 0.000000e+00
  %7707 = select i1 %7706, float 0.000000e+00, float 1.000000e+00
  %7708 = fadd fast float %7707, %7677
  %7709 = fmul fast float %7707, %7705
  %7710 = fadd fast float %7709, %7678
  br label %7711

; <label>:7711                                    ; preds = %7711, %7676
  %7712 = phi i32 [ 1, %7676 ], [ %7723, %7711 ]
  %7713 = phi float [ %7710, %7676 ], [ %7722, %7711 ]
  %7714 = phi float [ %7708, %7676 ], [ %7720, %7711 ]
  %7715 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7712
  %7716 = load float, float* %7715, align 4, !tbaa !122, !noalias !112
  %7717 = fsub fast float %7716, %7602
  %7718 = fcmp fast olt float %7717, 0.000000e+00
  %7719 = select i1 %7718, float 0.000000e+00, float 1.000000e+00
  %7720 = fadd fast float %7719, %7714
  %7721 = fmul fast float %7719, %7717
  %7722 = fadd fast float %7721, %7713
  %7723 = add nuw nsw i32 %7712, 1
  %7724 = icmp eq i32 %7723, 4
  br i1 %7724, label %7725, label %7711, !llvm.loop !124

; <label>:7725                                    ; preds = %7711
  %7726 = add nuw nsw i32 %7679, 1
  %7727 = icmp eq i32 %7726, 8
  br i1 %7727, label %7728, label %7676, !llvm.loop !125

; <label>:7728                                    ; preds = %7725
  %7729 = fdiv fast float 1.000000e+00, %7720
  %7730 = fmul fast float %7729, %7722
  %7731 = fdiv fast float 1.000000e+00, %7602
  %7732 = fmul fast float %7730, %7731
  %7733 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7734 = call float @dx.op.binary.f32(i32 35, float %7733, float 0.000000e+00)  ; FMax(a,b)
  %7735 = fmul fast float %7720, 3.125000e-02
  %7736 = call float @dx.op.unary.f32(i32 7, float %7735)  ; Saturate(value)
  %7737 = fmul fast float %7736, 2.000000e+00
  %7738 = fadd fast float %7737, -1.000000e+00
  %7739 = fcmp fast ogt float %7738, 0.000000e+00
  %7740 = fcmp fast olt float %7738, 0.000000e+00
  %7741 = zext i1 %7739 to i32
  %7742 = zext i1 %7740 to i32
  %7743 = sub nsw i32 %7741, %7742
  %7744 = sitofp i32 %7743 to float
  %7745 = fmul fast float %7744, %7738
  %7746 = fsub fast float 1.000000e+00, %7745
  %7747 = fmul fast float %7746, %7746
  %7748 = fmul fast float %7747, %7746
  %7749 = fsub fast float %7746, %7748
  %7750 = fmul fast float %7749, %7734
  %7751 = fsub fast float 1.000000e+00, %7748
  %7752 = fsub fast float %7751, %7750
  %7753 = fmul fast float %7744, 5.000000e-01
  %7754 = fmul fast float %7753, %7752
  %7755 = fsub fast float 5.000000e-01, %7754
  br label %7756

; <label>:7756                                    ; preds = %7728, %7604, %7589
  %7757 = phi float [ 1.000000e+00, %7589 ], [ %7670, %7604 ], [ %7755, %7728 ]
  %7758 = fsub fast float %7423, %7258
  %7759 = fmul fast float %7758, %6796
  %7760 = fadd fast float %7759, %7258
  %7761 = fsub fast float %7590, %7760
  %7762 = fmul fast float %7761, %6826
  %7763 = fadd fast float %7762, %7760
  %7764 = fsub fast float %7757, %7763
  %7765 = fmul fast float %7764, %6852
  %7766 = fadd fast float %7765, %7763
  %7767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7768 = extractvalue %dx.types.CBufRet.f32 %7767, 2
  %7769 = fcmp fast ogt float %7768, 0.000000e+00
  br i1 %7769, label %7770, label %7810, !dx.controlflow.hints !128

; <label>:7770                                    ; preds = %7756
  %7771 = fcmp fast ugt float %7768, 0.000000e+00
  br i1 %7771, label %7772, label %7807

; <label>:7772                                    ; preds = %7770
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.CBufRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %7777 = extractvalue %dx.types.CBufRet.f32 %7773, 3
  %7778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7779 = extractvalue %dx.types.CBufRet.f32 %7778, 0
  %7780 = extractvalue %dx.types.CBufRet.f32 %7778, 1
  %7781 = extractvalue %dx.types.CBufRet.f32 %7778, 2
  %7782 = extractvalue %dx.types.CBufRet.f32 %7778, 3
  %7783 = extractvalue %dx.types.CBufRet.f32 %7767, 0
  %7784 = extractvalue %dx.types.CBufRet.f32 %7767, 1
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7788 = extractvalue %dx.types.CBufRet.f32 %7785, 2
  %7789 = fadd fast float %7786, %6711
  %7790 = fadd fast float %7787, %6712
  %7791 = fadd fast float %7788, %6713
  %7792 = fmul fast float %7789, %7774
  %7793 = call float @dx.op.tertiary.f32(i32 46, float %7775, float %7790, float %7792)  ; FMad(a,b,c)
  %7794 = call float @dx.op.tertiary.f32(i32 46, float %7776, float %7791, float %7793)  ; FMad(a,b,c)
  %7795 = fadd fast float %7794, %7777
  %7796 = fmul fast float %7789, %7779
  %7797 = call float @dx.op.tertiary.f32(i32 46, float %7780, float %7790, float %7796)  ; FMad(a,b,c)
  %7798 = call float @dx.op.tertiary.f32(i32 46, float %7781, float %7791, float %7797)  ; FMad(a,b,c)
  %7799 = fadd fast float %7798, %7782
  %7800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7795, float %7799, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7801 = extractvalue %dx.types.ResRet.f32 %7800, 0
  %7802 = fmul fast float %7801, %7784
  %7803 = fadd fast float %7802, %7783
  %7804 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7805 = fmul fast float %7804, %7768
  %7806 = fsub fast float 1.000000e+00, %7805
  br label %7807

; <label>:7807                                    ; preds = %7772, %7770
  %7808 = phi float [ %7806, %7772 ], [ 1.000000e+00, %7770 ]
  %7809 = fmul fast float %7808, %7766
  br label %7810

; <label>:7810                                    ; preds = %7807, %7756, %6691
  %7811 = phi float [ 1.000000e+00, %6691 ], [ %7809, %7807 ], [ %7766, %7756 ]
  %7812 = call float @dx.op.binary.f32(i32 36, float %7811, float %7811)  ; FMin(a,b)
  %7813 = call float @dx.op.binary.f32(i32 36, float %7811, float %7812)  ; FMin(a,b)
  %7814 = fcmp fast ogt float %7813, 0.000000e+00
  br i1 %7814, label %7815, label %7980, !dx.controlflow.hints !129

; <label>:7815                                    ; preds = %7810
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 0
  %7818 = extractvalue %dx.types.CBufRet.f32 %7816, 1
  %7819 = extractvalue %dx.types.CBufRet.f32 %7816, 2
  %7820 = extractvalue %dx.types.CBufRet.f32 %7816, 3
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7823 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %7824 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7825 = extractvalue %dx.types.CBufRet.f32 %7821, 3
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7828 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7829 = extractvalue %dx.types.CBufRet.f32 %7826, 2
  %7830 = extractvalue %dx.types.CBufRet.f32 %7826, 3
  %7831 = fmul fast float %7817, %6711
  %7832 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %7818, float %7831)  ; FMad(a,b,c)
  %7833 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %7819, float %7832)  ; FMad(a,b,c)
  %7834 = fadd fast float %7833, %7820
  %7835 = fmul fast float %7822, %6711
  %7836 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %7823, float %7835)  ; FMad(a,b,c)
  %7837 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %7824, float %7836)  ; FMad(a,b,c)
  %7838 = fadd fast float %7837, %7825
  %7839 = fmul fast float %7827, %6711
  %7840 = call float @dx.op.tertiary.f32(i32 46, float %6712, float %7828, float %7839)  ; FMad(a,b,c)
  %7841 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %7829, float %7840)  ; FMad(a,b,c)
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7844 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %7845 = extractvalue %dx.types.CBufRet.f32 %7842, 3
  %7846 = fmul fast float %7845, %7834
  %7847 = fmul fast float %7845, %7838
  %7848 = fadd fast float %7846, %7843
  %7849 = fadd fast float %7847, %7844
  %7850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7850, 0
  %7852 = extractvalue %dx.types.CBufRet.f32 %7850, 1
  %7853 = fsub fast float %7848, %7851
  %7854 = fsub fast float %7849, %7852
  %7855 = fcmp fast olt float %7853, 0.000000e+00
  %7856 = fcmp fast olt float %7854, 0.000000e+00
  %7857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7858 = extractvalue %dx.types.CBufRet.f32 %7857, 0
  %7859 = extractvalue %dx.types.CBufRet.f32 %7857, 1
  %7860 = extractvalue %dx.types.CBufRet.f32 %7857, 2
  %7861 = extractvalue %dx.types.CBufRet.f32 %7857, 3
  %7862 = select i1 %7855, float %7858, float %7860
  %7863 = select i1 %7856, float %7859, float %7861
  %7864 = fmul fast float %7862, %7853
  %7865 = fmul fast float %7863, %7854
  %7866 = call float @dx.op.unary.f32(i32 6, float %7864)  ; FAbs(value)
  %7867 = call float @dx.op.unary.f32(i32 6, float %7865)  ; FAbs(value)
  %7868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7869 = extractvalue %dx.types.CBufRet.f32 %7868, 0
  %7870 = call float @dx.op.binary.f32(i32 35, float %7866, float %7867)  ; FMax(a,b)
  %7871 = fsub fast float %7869, %7870
  %7872 = call float @dx.op.unary.f32(i32 7, float %7871)  ; Saturate(value)
  %7873 = fcmp fast ogt float %7872, 0.000000e+00
  br i1 %7873, label %7874, label %7915, !dx.controlflow.hints !130

; <label>:7874                                    ; preds = %7815
  %7875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7848, float %7849, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7876 = extractvalue %dx.types.ResRet.f32 %7875, 1
  %7877 = fcmp fast ogt float %7876, 0.000000e+00
  br i1 %7877, label %7878, label %7910

; <label>:7878                                    ; preds = %7874
  %7879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7848, float %7849, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7880 = extractvalue %dx.types.ResRet.f32 %7879, 0
  %7881 = extractvalue %dx.types.ResRet.f32 %7879, 1
  %7882 = extractvalue %dx.types.ResRet.f32 %7879, 2
  %7883 = extractvalue %dx.types.ResRet.f32 %7879, 3
  %7884 = fsub fast float 1.000000e+00, %7830
  %7885 = fsub fast float %7884, %7841
  %7886 = fmul fast float %7885, 0x400921FB60000000
  %7887 = fadd fast float %7886, 0x3FF921FB60000000
  %7888 = call float @dx.op.unary.f32(i32 13, float %7887)  ; Sin(value)
  %7889 = fadd fast float %7888, -1.000000e+00
  %7890 = fmul fast float %7889, 0x3FD45F3060000000
  %7891 = fmul fast float %7885, 0x401921FB60000000
  %7892 = fadd fast float %7891, 0x400921FB60000000
  %7893 = call float @dx.op.unary.f32(i32 13, float %7892)  ; Sin(value)
  %7894 = fadd fast float %7893, 0x3E7777A5C0000000
  %7895 = fmul fast float %7894, 0x3FC45F3060000000
  %7896 = fmul fast float %7885, 0x4022D97C80000000
  %7897 = fadd fast float %7896, 0x4012D97C80000000
  %7898 = call float @dx.op.unary.f32(i32 13, float %7897)  ; Sin(value)
  %7899 = fadd fast float %7898, 1.000000e+00
  %7900 = fmul fast float %7899, 0x3FBB2995E0000000
  %7901 = fmul fast float %7885, 0x402921FB60000000
  %7902 = fadd fast float %7901, 0x401921FB60000000
  %7903 = call float @dx.op.unary.f32(i32 13, float %7902)  ; Sin(value)
  %7904 = fadd fast float %7903, 0xBE8777A5C0000000
  %7905 = fmul fast float %7904, 0x3FB45F3060000000
  %7906 = call float @dx.op.dot4.f32(i32 56, float %7880, float %7881, float %7882, float %7883, float %7890, float %7895, float %7900, float %7905)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7907 = fmul fast float %7906, 0xBFF7154760000000
  %7908 = call float @dx.op.unary.f32(i32 21, float %7907)  ; Exp(value)
  %7909 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  br label %7910

; <label>:7910                                    ; preds = %7878, %7874
  %7911 = phi float [ %7909, %7878 ], [ 1.000000e+00, %7874 ]
  %7912 = fadd fast float %7911, -1.000000e+00
  %7913 = fmul fast float %7912, %7872
  %7914 = fadd fast float %7913, 1.000000e+00
  br label %7915

; <label>:7915                                    ; preds = %7910, %7815
  %7916 = phi float [ %7914, %7910 ], [ 1.000000e+00, %7815 ]
  %7917 = fmul fast float %7916, %7811
  %7918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.f32 %7918, 0
  %7920 = extractvalue %dx.types.CBufRet.f32 %7918, 1
  %7921 = extractvalue %dx.types.CBufRet.f32 %7918, 2
  %7922 = fadd fast float %7919, %164
  %7923 = fadd fast float %7920, %165
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 1
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7930 = fsub fast float -0.000000e+00, %7922
  %7931 = fsub fast float -0.000000e+00, %7923
  %7932 = fsub fast float %5757, %7921
  %7933 = fadd fast float %7932, %7925
  %7934 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7930, float %7931, float %7933)  ; Dot3(ax,ay,az,bx,by,bz)
  %7935 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7927, float %7928, float %7929)  ; Dot3(ax,ay,az,bx,by,bz)
  %7936 = fdiv fast float 1.000000e+00, %7935
  %7937 = fmul fast float %7936, %7934
  %7938 = fmul fast float %7927, %7937
  %7939 = fmul fast float %7928, %7937
  %7940 = fadd fast float %7938, %7922
  %7941 = fadd fast float %7939, %7923
  %7942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7943 = extractvalue %dx.types.CBufRet.f32 %7942, 0
  %7944 = extractvalue %dx.types.CBufRet.f32 %7942, 1
  %7945 = fsub fast float %7940, %7943
  %7946 = fsub fast float %7941, %7944
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %7949 = extractvalue %dx.types.CBufRet.f32 %7947, 3
  %7950 = fmul fast float %7945, %7948
  %7951 = fmul fast float %7946, %7949
  %7952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.i32 %7952, 3
  %7954 = icmp eq i32 %7953, 0
  br i1 %7954, label %7960, label %7955

; <label>:7955                                    ; preds = %7915
  %7956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7950, float %7951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7957 = extractvalue %dx.types.ResRet.f32 %7956, 0
  %7958 = extractvalue %dx.types.ResRet.f32 %7956, 1
  %7959 = extractvalue %dx.types.ResRet.f32 %7956, 2
  br label %7965

; <label>:7960                                    ; preds = %7915
  %7961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7950, float %7951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7962 = extractvalue %dx.types.ResRet.f32 %7961, 0
  %7963 = extractvalue %dx.types.ResRet.f32 %7961, 1
  %7964 = extractvalue %dx.types.ResRet.f32 %7961, 2
  br label %7965

; <label>:7965                                    ; preds = %7960, %7955
  %7966 = phi float [ %7957, %7955 ], [ %7962, %7960 ]
  %7967 = phi float [ %7958, %7955 ], [ %7963, %7960 ]
  %7968 = phi float [ %7959, %7955 ], [ %7964, %7960 ]
  %7969 = extractvalue %dx.types.CBufRet.f32 %7924, 2
  %7970 = fmul fast float %7969, %7966
  %7971 = extractvalue %dx.types.CBufRet.f32 %7924, 0
  %7972 = fsub fast float %7937, %7971
  %7973 = fsub fast float %7972, %7970
  %7974 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7973)  ; FMax(a,b)
  %7975 = fmul fast float %7974, %7967
  %7976 = call float @dx.op.binary.f32(i32 36, float %7968, float %7975)  ; FMin(a,b)
  %7977 = fmul fast float %7976, 0xBFF7154760000000
  %7978 = call float @dx.op.unary.f32(i32 21, float %7977)  ; Exp(value)
  %7979 = fmul fast float %7917, %7978
  br label %7980

; <label>:7980                                    ; preds = %7965, %7810
  %7981 = phi float [ %7979, %7965 ], [ %7811, %7810 ]
  %7982 = call float @dx.op.binary.f32(i32 36, float %7981, float %7981)  ; FMin(a,b)
  %7983 = call float @dx.op.binary.f32(i32 36, float %7981, float %7982)  ; FMin(a,b)
  %7984 = fcmp fast ogt float %7983, 0.000000e+00
  br i1 %7984, label %7985, label %8368, !dx.controlflow.hints !131

; <label>:7985                                    ; preds = %7980
  %7986 = fmul fast float %7981, %6703
  %7987 = fmul fast float %7981, %6704
  %7988 = fmul fast float %7981, %6705
  %7989 = fsub fast float %166, %5566
  %7990 = fcmp fast ogt float %7989, 0.000000e+00
  %7991 = fmul fast float %6692, 5.120000e+02
  %7992 = fmul fast float %6693, 5.120000e+02
  %7993 = fmul fast float %6694, 5.120000e+02
  %7994 = fadd fast float %7993, %166
  %7995 = fsub fast float %5566, %7994
  %7996 = fmul fast float %7995, 2.000000e+00
  %7997 = fadd fast float %7996, %7994
  %7998 = select i1 %7990, float %7997, float %7994
  %7999 = fsub fast float %7998, %166
  %8000 = call float @dx.op.dot3.f32(i32 55, float %7991, float %7992, float %7999, float %7991, float %7992, float %7999)  ; Dot3(ax,ay,az,bx,by,bz)
  %8001 = call float @dx.op.unary.f32(i32 25, float %8000)  ; Rsqrt(value)
  %8002 = fmul fast float %8001, %7991
  %8003 = fmul fast float %8001, %7992
  %8004 = fmul fast float %8001, %7999
  %8005 = fsub fast float %5566, %166
  %8006 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8005)  ; Dot3(ax,ay,az,bx,by,bz)
  %8007 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8002, float %8003, float %8004)  ; Dot3(ax,ay,az,bx,by,bz)
  %8008 = fdiv fast float 1.000000e+00, %8007
  %8009 = fmul fast float %8008, %8006
  %8010 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7989, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8011 = fcmp fast ogt float %8010, 0.000000e+00
  %8012 = fcmp fast olt float %8010, 0.000000e+00
  %8013 = zext i1 %8011 to i32
  %8014 = zext i1 %8012 to i32
  %8015 = sub nsw i32 %8013, %8014
  %8016 = sitofp i32 %8015 to float
  %8017 = fsub fast float %7998, %5566
  %8018 = call float @dx.op.dot3.f32(i32 55, float %7991, float %7992, float %8017, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8019 = fcmp fast ogt float %8018, 0.000000e+00
  %8020 = fcmp fast olt float %8018, 0.000000e+00
  %8021 = zext i1 %8019 to i32
  %8022 = zext i1 %8020 to i32
  %8023 = sub nsw i32 %8021, %8022
  %8024 = sitofp i32 %8023 to float
  %8025 = fcmp fast une float %8016, %8024
  br i1 %8025, label %8026, label %8036

; <label>:8026                                    ; preds = %7985
  %8027 = fmul fast float %8009, %8004
  %8028 = fmul fast float %8009, %8003
  %8029 = fmul fast float %8009, %8002
  %8030 = fmul fast float %8029, %8029
  %8031 = fmul fast float %8028, %8028
  %8032 = fadd fast float %8030, %8031
  %8033 = fmul fast float %8027, %8027
  %8034 = fadd fast float %8032, %8033
  %8035 = call float @dx.op.unary.f32(i32 24, float %8034)  ; Sqrt(value)
  br label %8046

; <label>:8036                                    ; preds = %7985
  %8037 = icmp slt i32 %8015, 0
  br i1 %8037, label %8038, label %8046

; <label>:8038                                    ; preds = %8036
  %8039 = fsub fast float %166, %7998
  %8040 = fmul fast float %7991, %7991
  %8041 = fmul fast float %7992, %7992
  %8042 = fadd fast float %8040, %8041
  %8043 = fmul fast float %8039, %8039
  %8044 = fadd fast float %8042, %8043
  %8045 = call float @dx.op.unary.f32(i32 24, float %8044)  ; Sqrt(value)
  br label %8046

; <label>:8046                                    ; preds = %8038, %8036, %8026
  %8047 = phi float [ %8035, %8026 ], [ %8045, %8038 ], [ 0.000000e+00, %8036 ]
  %8048 = fsub fast float -0.000000e+00, %8047
  %8049 = select i1 %7990, float -0.000000e+00, float %8048
  %8050 = fmul fast float %5563, 0x3FF7154760000000
  %8051 = fmul fast float %8050, %8049
  %8052 = fmul fast float %5564, 0x3FF7154760000000
  %8053 = fmul fast float %8052, %8049
  %8054 = fmul fast float %5565, 0x3FF7154760000000
  %8055 = fmul fast float %8054, %8049
  %8056 = call float @dx.op.unary.f32(i32 21, float %8051)  ; Exp(value)
  %8057 = call float @dx.op.unary.f32(i32 21, float %8053)  ; Exp(value)
  %8058 = call float @dx.op.unary.f32(i32 21, float %8055)  ; Exp(value)
  %8059 = call float @dx.op.unary.f32(i32 7, float %8056)  ; Saturate(value)
  %8060 = call float @dx.op.unary.f32(i32 7, float %8057)  ; Saturate(value)
  %8061 = call float @dx.op.unary.f32(i32 7, float %8058)  ; Saturate(value)
  %8062 = fmul fast float %7986, %8059
  %8063 = fmul fast float %7987, %8060
  %8064 = fmul fast float %7988, %8061
  %8065 = fsub fast float %6692, %184
  %8066 = fsub fast float %6693, %185
  %8067 = fsub fast float %6694, %186
  %8068 = call float @dx.op.dot3.f32(i32 55, float %8065, float %8066, float %8067, float %8065, float %8066, float %8067)  ; Dot3(ax,ay,az,bx,by,bz)
  %8069 = call float @dx.op.unary.f32(i32 25, float %8068)  ; Rsqrt(value)
  %8070 = fmul fast float %8069, %8065
  %8071 = fmul fast float %8069, %8066
  %8072 = fmul fast float %8069, %8067
  %8073 = call float @dx.op.dot3.f32(i32 55, float %6692, float %6693, float %6694, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %8074 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5581, float %5582, float %8070, float %8071, float %8072)  ; Dot3(ax,ay,az,bx,by,bz)
  %8075 = call float @dx.op.unary.f32(i32 7, float %8073)  ; Saturate(value)
  %8076 = fmul fast float %8075, %8075
  %8077 = fmul fast float %8076, %5785
  %8078 = call float @dx.op.unary.f32(i32 7, float %8077)  ; Saturate(value)
  %8079 = fmul fast float %8078, %8075
  %8080 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %8070, float %8071, float %8072)  ; Dot3(ax,ay,az,bx,by,bz)
  %8081 = fmul fast float %8080, %8080
  %8082 = call float @dx.op.unary.f32(i32 6, float %8073)  ; FAbs(value)
  %8083 = fsub fast float 1.000000e+00, %5778
  %8084 = fmul fast float %5760, %5760
  %8085 = fmul fast float %8084, %8083
  %8086 = fadd fast float %8085, %5778
  %8087 = bitcast float %8086 to i32
  %8088 = ashr i32 %8087, 1
  %8089 = add nsw i32 %8088, 532487669
  %8090 = bitcast i32 %8089 to float
  %8091 = fadd fast float %8090, %5760
  %8092 = fmul fast float %5778, %8081
  %8093 = fsub fast float 1.000000e+00, %8081
  %8094 = fadd fast float %8093, %8092
  %8095 = fmul fast float %8082, %8082
  %8096 = fmul fast float %8095, %8083
  %8097 = fadd fast float %8096, %5778
  %8098 = bitcast float %8097 to i32
  %8099 = ashr i32 %8098, 1
  %8100 = add nsw i32 %8099, 532487669
  %8101 = bitcast i32 %8100 to float
  %8102 = fadd fast float %8101, %8082
  %8103 = fmul fast float %8094, %8094
  %8104 = fmul fast float %8103, %8091
  %8105 = fmul fast float %8104, %8102
  %8106 = fdiv fast float 0x3FF0A00000000000, %8105
  %8107 = fmul fast float %8106, %5778
  %8108 = fmul fast float %6031, 0x3FF9999980000000
  %8109 = fsub fast float 5.000000e+00, %8108
  %8110 = call float @dx.op.unary.f32(i32 6, float %8074)  ; FAbs(value)
  %8111 = fsub fast float 1.000000e+00, %8110
  %8112 = fmul fast float %6031, 0x41D9660740000000
  %8113 = fadd fast float %8112, 0xC1EFBF8940000000
  %8114 = bitcast float %8111 to i32
  %8115 = sitofp i32 %8114 to float
  %8116 = fmul fast float %8115, %8109
  %8117 = fadd fast float %8113, %8116
  %8118 = fptosi float %8117 to i32
  %8119 = bitcast i32 %8118 to float
  %8120 = fsub fast float 1.000000e+00, %5749
  %8121 = fsub fast float 1.000000e+00, %5750
  %8122 = fsub fast float 1.000000e+00, %5758
  %8123 = fmul fast float %8119, %8120
  %8124 = fmul fast float %8119, %8121
  %8125 = fmul fast float %8119, %8122
  %8126 = fadd fast float %8123, %5749
  %8127 = fadd fast float %8124, %5750
  %8128 = fadd fast float %8125, %5758
  br i1 %6054, label %8129, label %8152

; <label>:8129                                    ; preds = %8046
  %8130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5111, float %8110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8131 = extractvalue %dx.types.ResRet.f32 %8130, 0
  %8132 = extractvalue %dx.types.ResRet.f32 %8130, 1
  %8133 = extractvalue %dx.types.ResRet.f32 %8130, 2
  %8134 = fadd fast float %8131, -5.000000e-01
  %8135 = fadd fast float %8132, -5.000000e-01
  %8136 = fadd fast float %8133, -5.000000e-01
  %8137 = fmul fast float %5749, 4.000000e+00
  %8138 = fmul fast float %8137, %8120
  %8139 = fmul fast float %8138, %8134
  %8140 = fmul fast float %5750, 4.000000e+00
  %8141 = fmul fast float %8140, %8121
  %8142 = fmul fast float %8141, %8135
  %8143 = fmul fast float %5758, 4.000000e+00
  %8144 = fmul fast float %8143, %8122
  %8145 = fmul fast float %8144, %8136
  %8146 = fadd fast float %8139, %8126
  %8147 = fadd fast float %8142, %8127
  %8148 = fadd fast float %8145, %8128
  %8149 = call float @dx.op.unary.f32(i32 7, float %8146)  ; Saturate(value)
  %8150 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  %8151 = call float @dx.op.unary.f32(i32 7, float %8148)  ; Saturate(value)
  br label %8152

; <label>:8152                                    ; preds = %8129, %8046
  %8153 = phi float [ %8149, %8129 ], [ %8126, %8046 ]
  %8154 = phi float [ %8150, %8129 ], [ %8127, %8046 ]
  %8155 = phi float [ %8151, %8129 ], [ %8128, %8046 ]
  %8156 = fmul fast float %8073, 9.843750e-01
  %8157 = fadd fast float %8156, 7.812500e-03
  %8158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8157, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8159 = extractvalue %dx.types.ResRet.f32 %8158, 0
  %8160 = extractvalue %dx.types.ResRet.f32 %8158, 1
  %8161 = extractvalue %dx.types.ResRet.f32 %8158, 2
  %8162 = extractvalue %dx.types.ResRet.f32 %8158, 3
  %8163 = fsub fast float %8161, %8159
  %8164 = fsub fast float %8162, %8160
  %8165 = fmul fast float %8163, %6041
  %8166 = fmul fast float %8164, %6041
  %8167 = fadd fast float %8165, %8159
  %8168 = fadd fast float %8166, %8160
  %8169 = fmul fast float %8167, %5749
  %8170 = fmul fast float %8167, %5750
  %8171 = fmul fast float %8167, %5758
  %8172 = fadd fast float %8169, %8168
  %8173 = fadd fast float %8170, %8168
  %8174 = fadd fast float %8171, %8168
  br i1 %6054, label %8175, label %8198

; <label>:8175                                    ; preds = %8152
  %8176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5111, float %8073, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8177 = extractvalue %dx.types.ResRet.f32 %8176, 0
  %8178 = extractvalue %dx.types.ResRet.f32 %8176, 1
  %8179 = extractvalue %dx.types.ResRet.f32 %8176, 2
  %8180 = fadd fast float %8177, -5.000000e-01
  %8181 = fadd fast float %8178, -5.000000e-01
  %8182 = fadd fast float %8179, -5.000000e-01
  %8183 = fmul fast float %5749, 4.000000e+00
  %8184 = fmul fast float %8183, %8120
  %8185 = fmul fast float %8184, %8180
  %8186 = fmul fast float %5750, 4.000000e+00
  %8187 = fmul fast float %8186, %8121
  %8188 = fmul fast float %8187, %8181
  %8189 = fmul fast float %5758, 4.000000e+00
  %8190 = fmul fast float %8189, %8122
  %8191 = fmul fast float %8190, %8182
  %8192 = fadd fast float %8185, %8172
  %8193 = fadd fast float %8188, %8173
  %8194 = fadd fast float %8191, %8174
  %8195 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8196 = call float @dx.op.unary.f32(i32 7, float %8193)  ; Saturate(value)
  %8197 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  br label %8198

; <label>:8198                                    ; preds = %8175, %8152
  %8199 = phi float [ %8195, %8175 ], [ %8172, %8152 ]
  %8200 = phi float [ %8196, %8175 ], [ %8173, %8152 ]
  %8201 = phi float [ %8197, %8175 ], [ %8174, %8152 ]
  %8202 = call float @dx.op.binary.f32(i32 35, float %8200, float %8201)  ; FMax(a,b)
  %8203 = call float @dx.op.binary.f32(i32 35, float %8199, float %8202)  ; FMax(a,b)
  %8204 = fsub fast float 1.000000e+00, %8203
  %8205 = call float @dx.op.binary.f32(i32 35, float %8082, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8206 = fdiv fast float %4459, %8205
  %8207 = fmul fast float %6601, %8206
  %8208 = fmul fast float %6603, %8206
  %8209 = fmul fast float %6605, %8206
  %8210 = call float @dx.op.unary.f32(i32 21, float %8207)  ; Exp(value)
  %8211 = call float @dx.op.unary.f32(i32 21, float %8208)  ; Exp(value)
  %8212 = call float @dx.op.unary.f32(i32 21, float %8209)  ; Exp(value)
  %8213 = call float @dx.op.unary.f32(i32 7, float %8210)  ; Saturate(value)
  %8214 = call float @dx.op.unary.f32(i32 7, float %8211)  ; Saturate(value)
  %8215 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8216 = select i1 %6598, float %8213, float 0.000000e+00
  %8217 = select i1 %6599, float %8214, float 0.000000e+00
  %8218 = select i1 %6600, float %8215, float 0.000000e+00
  %8219 = fsub fast float -0.000000e+00, %5752
  %8220 = fsub fast float -0.000000e+00, %5753
  %8221 = fsub fast float -0.000000e+00, %5754
  %8222 = call float @dx.op.dot3.f32(i32 55, float %6692, float %6693, float %6694, float %8219, float %8220, float %8221)  ; Dot3(ax,ay,az,bx,by,bz)
  %8223 = call float @dx.op.unary.f32(i32 7, float %8222)  ; Saturate(value)
  %8224 = fmul fast float %8223, 9.843750e-01
  %8225 = fadd fast float %8224, 7.812500e-03
  %8226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8225, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8227 = extractvalue %dx.types.ResRet.f32 %8226, 0
  %8228 = extractvalue %dx.types.ResRet.f32 %8226, 1
  %8229 = extractvalue %dx.types.ResRet.f32 %8226, 2
  %8230 = extractvalue %dx.types.ResRet.f32 %8226, 3
  %8231 = fsub fast float %8229, %8227
  %8232 = fsub fast float %8230, %8228
  %8233 = fmul fast float %8231, %6041
  %8234 = fmul fast float %8232, %6041
  %8235 = fadd fast float %8233, %8227
  %8236 = fadd fast float %8234, %8228
  %8237 = fmul fast float %8235, %5749
  %8238 = fmul fast float %8235, %5750
  %8239 = fmul fast float %8235, %5758
  %8240 = fadd fast float %8237, %8236
  %8241 = fadd fast float %8238, %8236
  %8242 = fadd fast float %8239, %8236
  br i1 %6054, label %8243, label %8266

; <label>:8243                                    ; preds = %8198
  %8244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5111, float %8223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8245 = extractvalue %dx.types.ResRet.f32 %8244, 0
  %8246 = extractvalue %dx.types.ResRet.f32 %8244, 1
  %8247 = extractvalue %dx.types.ResRet.f32 %8244, 2
  %8248 = fadd fast float %8245, -5.000000e-01
  %8249 = fadd fast float %8246, -5.000000e-01
  %8250 = fadd fast float %8247, -5.000000e-01
  %8251 = fmul fast float %5749, 4.000000e+00
  %8252 = fmul fast float %8251, %8120
  %8253 = fmul fast float %8252, %8248
  %8254 = fmul fast float %5750, 4.000000e+00
  %8255 = fmul fast float %8254, %8121
  %8256 = fmul fast float %8255, %8249
  %8257 = fmul fast float %5758, 4.000000e+00
  %8258 = fmul fast float %8257, %8122
  %8259 = fmul fast float %8258, %8250
  %8260 = fadd fast float %8253, %8240
  %8261 = fadd fast float %8256, %8241
  %8262 = fadd fast float %8259, %8242
  %8263 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  %8264 = call float @dx.op.unary.f32(i32 7, float %8261)  ; Saturate(value)
  %8265 = call float @dx.op.unary.f32(i32 7, float %8262)  ; Saturate(value)
  br label %8266

; <label>:8266                                    ; preds = %8243, %8198
  %8267 = phi float [ %8263, %8243 ], [ %8240, %8198 ]
  %8268 = phi float [ %8264, %8243 ], [ %8241, %8198 ]
  %8269 = phi float [ %8265, %8243 ], [ %8242, %8198 ]
  %8270 = call float @dx.op.binary.f32(i32 35, float %8268, float %8269)  ; FMax(a,b)
  %8271 = call float @dx.op.binary.f32(i32 35, float %8267, float %8270)  ; FMax(a,b)
  %8272 = fsub fast float 1.000000e+00, %8271
  %8273 = fmul fast float %5775, %6665
  %8274 = fadd fast float %6667, %8273
  %8275 = call float @dx.op.unary.f32(i32 7, float %8274)  ; Saturate(value)
  %8276 = fsub fast float %6692, %5766
  %8277 = fsub fast float %6693, %5767
  %8278 = fsub fast float %6694, %5768
  %8279 = call float @dx.op.dot3.f32(i32 55, float %8276, float %8277, float %8278, float %8276, float %8277, float %8278)  ; Dot3(ax,ay,az,bx,by,bz)
  %8280 = call float @dx.op.unary.f32(i32 25, float %8279)  ; Rsqrt(value)
  %8281 = fmul fast float %8280, %8276
  %8282 = fmul fast float %8280, %8277
  %8283 = fmul fast float %8280, %8278
  %8284 = call float @dx.op.dot3.f32(i32 55, float %8219, float %8220, float %8221, float %8281, float %8282, float %8283)  ; Dot3(ax,ay,az,bx,by,bz)
  %8285 = fmul fast float %8284, %8284
  %8286 = call float @dx.op.unary.f32(i32 6, float %8223)  ; FAbs(value)
  %8287 = call float @dx.op.binary.f32(i32 35, float %8275, float 0x3F847AE140000000)  ; FMax(a,b)
  %8288 = fmul fast float %8287, %8287
  %8289 = fmul fast float %8288, %8288
  %8290 = fsub fast float 1.000000e+00, %8289
  %8291 = fmul fast float %8084, %8290
  %8292 = fadd fast float %8291, %8289
  %8293 = bitcast float %8292 to i32
  %8294 = ashr i32 %8293, 1
  %8295 = add nsw i32 %8294, 532487669
  %8296 = bitcast i32 %8295 to float
  %8297 = fadd fast float %8296, %5760
  %8298 = fmul fast float %8289, %8285
  %8299 = fsub fast float 1.000000e+00, %8285
  %8300 = fadd fast float %8299, %8298
  %8301 = fmul fast float %8286, %8286
  %8302 = fmul fast float %8301, %8290
  %8303 = fadd fast float %8302, %8289
  %8304 = bitcast float %8303 to i32
  %8305 = ashr i32 %8304, 1
  %8306 = add nsw i32 %8305, 532487669
  %8307 = bitcast i32 %8306 to float
  %8308 = fadd fast float %8307, %8286
  %8309 = fmul fast float %8300, %8300
  %8310 = fmul fast float %8309, %8297
  %8311 = fmul fast float %8310, %8308
  %8312 = fdiv fast float 0x3FF0A00000000000, %8311
  %8313 = fmul fast float %8312, %8289
  %8314 = fmul fast float %8223, %8216
  %8315 = fmul fast float %8223, %8217
  %8316 = fmul fast float %8223, %8218
  %8317 = fmul fast float %8314, %8272
  %8318 = fmul fast float %8317, %8313
  %8319 = fmul fast float %8315, %8272
  %8320 = fmul fast float %8319, %8313
  %8321 = fmul fast float %8316, %8272
  %8322 = fmul fast float %8321, %8313
  %8323 = fmul fast float %8153, %8107
  %8324 = fmul fast float %8154, %8107
  %8325 = fmul fast float %8155, %8107
  %8326 = fsub fast float 1.000000e+00, %8074
  %8327 = bitcast float %8326 to i32
  %8328 = sitofp i32 %8327 to float
  %8329 = fmul fast float %8328, 5.000000e+00
  %8330 = fadd fast float %8329, 0xC1EFBF8940000000
  %8331 = fptosi float %8330 to i32
  %8332 = bitcast i32 %8331 to float
  %8333 = fmul fast float %8332, %5112
  %8334 = fmul fast float %8204, %8333
  %8335 = fmul fast float %8334, %6593
  %8336 = fmul fast float %8334, %6594
  %8337 = fmul fast float %8334, %6595
  %8338 = fadd fast float %8335, %8323
  %8339 = fadd fast float %8336, %8324
  %8340 = fadd fast float %8337, %8325
  %8341 = fmul fast float %8338, %8079
  %8342 = fmul fast float %8339, %8079
  %8343 = fmul fast float %8340, %8079
  %8344 = fmul fast float %8079, %8062
  %8345 = fmul fast float %8344, %8204
  %8346 = fmul fast float %8079, %8063
  %8347 = fmul fast float %8346, %8204
  %8348 = fmul fast float %8079, %8064
  %8349 = fmul fast float %8348, %8204
  %8350 = fadd fast float %8341, %8318
  %8351 = fadd fast float %8342, %8320
  %8352 = fadd fast float %8343, %8322
  %8353 = fmul fast float %8350, %8062
  %8354 = fmul fast float %8351, %8063
  %8355 = fmul fast float %8352, %8064
  %8356 = fadd fast float %8345, %6682
  %8357 = fmul fast float %8356, %5137
  %8358 = fadd fast float %8347, %6684
  %8359 = fmul fast float %8358, %5137
  %8360 = fadd fast float %8349, %6686
  %8361 = fmul fast float %8360, %5137
  %8362 = fadd fast float %8353, %6646
  %8363 = fmul fast float %8362, %5137
  %8364 = fadd fast float %8354, %6649
  %8365 = fmul fast float %8364, %5137
  %8366 = fadd fast float %8355, %6652
  %8367 = fmul fast float %8366, %5137
  br label %8368

; <label>:8368                                    ; preds = %8266, %7980, %6576
  %8369 = phi float [ %6647, %6576 ], [ %6647, %7980 ], [ %8363, %8266 ]
  %8370 = phi float [ %6650, %6576 ], [ %6650, %7980 ], [ %8365, %8266 ]
  %8371 = phi float [ %6653, %6576 ], [ %6653, %7980 ], [ %8367, %8266 ]
  %8372 = phi float [ %6683, %6576 ], [ %6683, %7980 ], [ %8357, %8266 ]
  %8373 = phi float [ %6685, %6576 ], [ %6685, %7980 ], [ %8359, %8266 ]
  %8374 = phi float [ %6687, %6576 ], [ %6687, %7980 ], [ %8361, %8266 ]
  %8375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8376 = extractvalue %dx.types.CBufRet.i32 %8375, 0
  %8377 = icmp eq i32 %8376, 0
  br i1 %8377, label %9195, label %8378

; <label>:8378                                    ; preds = %8368
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 2
  %8381 = extractvalue %dx.types.CBufRet.f32 %8379, 3
  %8382 = fmul fast float %8380, %109
  %8383 = fmul fast float %8381, %110
  %8384 = fptoui float %8382 to i32
  %8385 = fptoui float %8383 to i32
  %8386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8387 = extractvalue %dx.types.CBufRet.f32 %8386, 0
  %8388 = extractvalue %dx.types.CBufRet.f32 %8386, 2
  %8389 = extractvalue %dx.types.CBufRet.f32 %8386, 3
  %8390 = fadd fast float %97, -4.000000e+00
  %8391 = call float @dx.op.binary.f32(i32 35, float %8390, float 0.000000e+00)  ; FMax(a,b)
  %8392 = fadd fast float %8391, %8387
  %8393 = fmul fast float %8392, %8388
  %8394 = call float @dx.op.unary.f32(i32 23, float %8393)  ; Log(value)
  %8395 = fmul fast float %8394, %8389
  %8396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8397 = extractvalue %dx.types.CBufRet.f32 %8396, 2
  %8398 = fmul fast float %8395, %8397
  %8399 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.i32 %8400, 1
  %8402 = add i32 %8401, -1
  %8403 = uitofp i32 %8401 to float
  %8404 = fmul fast float %8403, %8399
  %8405 = fptoui float %8404 to i32
  %8406 = call i32 @dx.op.binary.i32(i32 40, i32 %8405, i32 %8402)  ; UMin(a,b)
  %8407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8408 = extractvalue %dx.types.CBufRet.i32 %8407, 2
  %8409 = extractvalue %dx.types.CBufRet.i32 %8407, 3
  %8410 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8385, i32 %8408, i32 %8384)  ; UMad(a,b,c)
  %8411 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8406, i32 %8409, i32 %8410)  ; UMad(a,b,c)
  %8412 = add nsw i32 %8376, -1
  %8413 = call i32 @dx.op.binary.i32(i32 37, i32 %8412, i32 0)  ; IMax(a,b)
  %8414 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %8415 = fptoui float %8414 to i32
  %8416 = lshr i32 %8415, 5
  %8417 = call i32 @dx.op.binary.i32(i32 40, i32 %8416, i32 8191)  ; UMin(a,b)
  %8418 = shl i32 %8417, 2
  %8419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8418, i32 undef)  ; BufferLoad(srv,index,wot)
  %8420 = extractvalue %dx.types.ResRet.i32 %8419, 0
  %8421 = lshr i32 %8420, 16
  %8422 = and i32 %8420, 65535
  %8423 = lshr i32 %8420, 21
  %8424 = lshr i32 %8422, 5
  %8425 = call i32 @dx.op.binary.i32(i32 40, i32 %8424, i32 %8413)  ; UMin(a,b)
  %8426 = icmp ugt i32 %8423, %8425
  br i1 %8426, label %9195, label %8427

; <label>:8427                                    ; preds = %8378
  br label %8428

; <label>:8428                                    ; preds = %9185, %8427
  %8429 = phi i32 [ %9192, %9185 ], [ %8423, %8427 ]
  %8430 = phi float [ %9186, %9185 ], [ %8369, %8427 ]
  %8431 = phi float [ %9187, %9185 ], [ %8370, %8427 ]
  %8432 = phi float [ %9188, %9185 ], [ %8371, %8427 ]
  %8433 = phi float [ %9189, %9185 ], [ %8372, %8427 ]
  %8434 = phi float [ %9190, %9185 ], [ %8373, %8427 ]
  %8435 = phi float [ %9191, %9185 ], [ %8374, %8427 ]
  %8436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8437 = extractvalue %dx.types.CBufRet.i32 %8436, 0
  %8438 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8411, i32 %8437, i32 %8429)  ; UMad(a,b,c)
  %8439 = shl i32 %8438, 2
  %8440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8439, i32 undef)  ; BufferLoad(srv,index,wot)
  %8441 = extractvalue %dx.types.ResRet.i32 %8440, 0
  %8442 = shl i32 %8429, 5
  %8443 = sub nsw i32 %8421, %8442
  %8444 = call i32 @dx.op.binary.i32(i32 37, i32 %8443, i32 0)  ; IMax(a,b)
  %8445 = call i32 @dx.op.binary.i32(i32 38, i32 %8444, i32 31)  ; IMin(a,b)
  %8446 = sub nsw i32 1, %8421
  %8447 = add nsw i32 %8446, %8422
  %8448 = call i32 @dx.op.binary.i32(i32 37, i32 %8447, i32 0)  ; IMax(a,b)
  %8449 = call i32 @dx.op.binary.i32(i32 38, i32 %8448, i32 32)  ; IMin(a,b)
  %8450 = and i32 %8449, 31
  %8451 = shl i32 -1, %8450
  %8452 = xor i32 %8451, -1
  %8453 = and i32 %8445, 31
  %8454 = shl i32 %8452, %8453
  %8455 = icmp eq i32 %8449, 32
  %8456 = select i1 %8455, i32 -1, i32 %8454
  %8457 = and i32 %8456, %8441
  %8458 = icmp eq i32 %8457, 0
  br i1 %8458, label %9185, label %8459

; <label>:8459                                    ; preds = %8428
  br label %8460

; <label>:8460                                    ; preds = %8595, %8459
  %8461 = phi i32 [ %8472, %8595 ], [ %8457, %8459 ]
  %8462 = phi float [ %8596, %8595 ], [ %8430, %8459 ]
  %8463 = phi float [ %8597, %8595 ], [ %8431, %8459 ]
  %8464 = phi float [ %8598, %8595 ], [ %8432, %8459 ]
  %8465 = phi float [ %8599, %8595 ], [ %8433, %8459 ]
  %8466 = phi float [ %8600, %8595 ], [ %8434, %8459 ]
  %8467 = phi float [ %8601, %8595 ], [ %8435, %8459 ]
  %8468 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8461)  ; FirstbitLo(value)
  %8469 = add i32 %8468, %8442
  %8470 = and i32 %8468, 31
  %8471 = shl i32 1, %8470
  %8472 = xor i32 %8471, %8461
  %8473 = mul i32 %8469, 112
  %8474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8473, i32 undef)  ; BufferLoad(srv,index,wot)
  %8475 = extractvalue %dx.types.ResRet.f32 %8474, 0
  %8476 = extractvalue %dx.types.ResRet.f32 %8474, 1
  %8477 = extractvalue %dx.types.ResRet.f32 %8474, 2
  %8478 = or i32 %8473, 12
  %8479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8478, i32 undef)  ; BufferLoad(srv,index,wot)
  %8480 = extractvalue %dx.types.ResRet.f32 %8479, 0
  %8481 = add i32 %8473, 16
  %8482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8481, i32 undef)  ; BufferLoad(srv,index,wot)
  %8483 = extractvalue %dx.types.ResRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.ResRet.f32 %8482, 1
  %8485 = extractvalue %dx.types.ResRet.f32 %8482, 2
  %8486 = add i32 %8473, 28
  %8487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8486, i32 undef)  ; BufferLoad(srv,index,wot)
  %8488 = extractvalue %dx.types.ResRet.i32 %8487, 0
  %8489 = add i32 %8473, 44
  %8490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8489, i32 undef)  ; BufferLoad(srv,index,wot)
  %8491 = extractvalue %dx.types.ResRet.f32 %8490, 0
  %8492 = add i32 %8473, 48
  %8493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8492, i32 undef)  ; BufferLoad(srv,index,wot)
  %8494 = extractvalue %dx.types.ResRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.ResRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.ResRet.f32 %8493, 2
  %8497 = extractvalue %dx.types.ResRet.f32 %8493, 3
  %8498 = add i32 %8473, 64
  %8499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8498, i32 undef)  ; BufferLoad(srv,index,wot)
  %8500 = extractvalue %dx.types.ResRet.f32 %8499, 0
  %8501 = extractvalue %dx.types.ResRet.f32 %8499, 1
  %8502 = extractvalue %dx.types.ResRet.f32 %8499, 2
  %8503 = extractvalue %dx.types.ResRet.f32 %8499, 3
  %8504 = add i32 %8473, 80
  %8505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8504, i32 undef)  ; BufferLoad(srv,index,wot)
  %8506 = extractvalue %dx.types.ResRet.f32 %8505, 1
  %8507 = extractvalue %dx.types.ResRet.f32 %8505, 2
  %8508 = add i32 %8473, 92
  %8509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8508, i32 undef)  ; BufferLoad(srv,index,wot)
  %8510 = extractvalue %dx.types.ResRet.i32 %8509, 0
  %8511 = call float @dx.op.dot3.f32(i32 55, float %8475, float %8476, float %8477, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8512 = select i1 %258, float %8506, float %8475
  %8513 = select i1 %258, float %8511, float %8476
  %8514 = select i1 %258, float %8507, float %8477
  %8515 = and i32 %8510, 65535
  %8516 = uitofp i32 %8515 to float
  %8517 = lshr i32 %8510, 16
  %8518 = uitofp i32 %8517 to float
  %8519 = and i32 %8488, 65535
  %8520 = and i32 %8488, 50331648
  %8521 = icmp slt i32 %8488, 0
  %8522 = icmp eq i32 %8520, 33554432
  %8523 = fsub fast float %8494, %164
  %8524 = fsub fast float %8495, %165
  %8525 = fsub fast float %8496, %166
  %8526 = call float @dx.op.dot3.f32(i32 55, float %8523, float %8524, float %8525, float %8523, float %8524, float %8525)  ; Dot3(ax,ay,az,bx,by,bz)
  %8527 = call float @dx.op.unary.f32(i32 24, float %8526)  ; Sqrt(value)
  %8528 = fdiv fast float 1.000000e+00, %8527
  %8529 = fmul fast float %8528, %8523
  %8530 = fmul fast float %8528, %8524
  %8531 = fmul fast float %8528, %8525
  %8532 = fadd fast float %8527, %8480
  %8533 = fdiv fast float 1.000000e+00, %8532
  %8534 = fmul float %8491, %8533
  %8535 = fmul float %8534, %8534
  %8536 = call float @dx.op.unary.f32(i32 7, float %8535)  ; Saturate(value)
  br i1 %8522, label %8537, label %8558

; <label>:8537                                    ; preds = %8460
  %8538 = fmul fast float %8502, %8483
  %8539 = fmul fast float %8502, %8484
  %8540 = fmul fast float %8502, %8485
  %8541 = fadd fast float %8523, %8538
  %8542 = fadd fast float %8524, %8539
  %8543 = fadd fast float %8525, %8540
  %8544 = call float @dx.op.dot3.f32(i32 55, float %8541, float %8542, float %8543, float %8541, float %8542, float %8543)  ; Dot3(ax,ay,az,bx,by,bz)
  %8545 = call float @dx.op.unary.f32(i32 25, float %8544)  ; Rsqrt(value)
  %8546 = fmul fast float %8545, %8541
  %8547 = fmul fast float %8545, %8542
  %8548 = fmul fast float %8545, %8543
  %8549 = fsub fast float %164, %8494
  %8550 = fsub fast float %165, %8495
  %8551 = fsub fast float %166, %8496
  %8552 = fsub fast float -0.000000e+00, %8549
  %8553 = fsub fast float -0.000000e+00, %8550
  %8554 = fsub fast float -0.000000e+00, %8551
  %8555 = call float @dx.op.dot3.f32(i32 55, float %8552, float %8553, float %8554, float %8483, float %8484, float %8485)  ; Dot3(ax,ay,az,bx,by,bz)
  %8556 = fcmp fast ogt float %8555, 0.000000e+00
  %8557 = uitofp i1 %8556 to float
  br label %8558

; <label>:8558                                    ; preds = %8537, %8460
  %8559 = phi float [ %8557, %8537 ], [ 1.000000e+00, %8460 ]
  %8560 = phi float [ %8546, %8537 ], [ %8529, %8460 ]
  %8561 = phi float [ %8547, %8537 ], [ %8530, %8460 ]
  %8562 = phi float [ %8548, %8537 ], [ %8531, %8460 ]
  %8563 = call float @dx.op.dot3.f32(i32 55, float %8483, float %8484, float %8485, float %8560, float %8561, float %8562)  ; Dot3(ax,ay,az,bx,by,bz)
  %8564 = fmul fast float %8563, %8563
  %8565 = call float @dx.op.unary.f32(i32 7, float %8564)  ; Saturate(value)
  %8566 = fsub fast float 1.000000e+00, %8565
  %8567 = fmul fast float %8566, 5.000000e-01
  %8568 = fcmp fast ogt float %8563, 0.000000e+00
  %8569 = fsub fast float 1.000000e+00, %8567
  %8570 = select i1 %8568, float %8567, float %8569
  %8571 = fmul fast float %8570, %8518
  %8572 = fadd fast float %8571, %8516
  %8573 = fmul fast float %8572, 0x3EF0001000000000
  %8574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8573, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8575 = extractvalue %dx.types.ResRet.f32 %8574, 0
  %8576 = fmul fast float %8563, %8500
  %8577 = fadd fast float %8576, %8501
  %8578 = call float @dx.op.unary.f32(i32 7, float %8577)  ; Saturate(value)
  %8579 = select i1 %8522, float 1.000000e+00, float %8578
  %8580 = select i1 %8522, float %8578, float 1.000000e+00
  %8581 = fmul fast float %8527, %8497
  %8582 = fsub fast float 1.000000e+00, %8581
  %8583 = fmul fast float %8582, %8503
  %8584 = call float @dx.op.unary.f32(i32 7, float %8583)  ; Saturate(value)
  %8585 = fmul fast float %8584, %8580
  %8586 = fmul fast float %8585, 2.000000e+00
  %8587 = fsub fast float 3.000000e+00, %8586
  %8588 = fmul fast float %8575, %8559
  %8589 = fmul fast float %8585, %8585
  %8590 = fmul fast float %8589, %8588
  %8591 = fmul fast float %8590, %8587
  %8592 = call float @dx.op.binary.f32(i32 36, float %8591, float %8591)  ; FMin(a,b)
  %8593 = call float @dx.op.binary.f32(i32 36, float %8591, float %8592)  ; FMin(a,b)
  %8594 = fcmp fast ogt float %8593, 0.000000e+00
  br i1 %8594, label %8603, label %8595, !dx.controlflow.hints !132

; <label>:8595                                    ; preds = %9138, %8749, %8558
  %8596 = phi float [ %8462, %8749 ], [ %8462, %8558 ], [ %9181, %9138 ]
  %8597 = phi float [ %8463, %8749 ], [ %8463, %8558 ], [ %9182, %9138 ]
  %8598 = phi float [ %8464, %8749 ], [ %8464, %8558 ], [ %9183, %9138 ]
  %8599 = phi float [ %8465, %8749 ], [ %8465, %8558 ], [ %9175, %9138 ]
  %8600 = phi float [ %8466, %8749 ], [ %8466, %8558 ], [ %9176, %9138 ]
  %8601 = phi float [ %8467, %8749 ], [ %8467, %8558 ], [ %9177, %9138 ]
  %8602 = icmp eq i32 %8461, %8471
  br i1 %8602, label %9184, label %8460

; <label>:8603                                    ; preds = %8558
  %8604 = icmp eq i32 %8519, 255
  br i1 %8604, label %8749, label %8605, !dx.controlflow.hints !133

; <label>:8605                                    ; preds = %8603
  %8606 = mul nuw nsw i32 %8519, 176
  %8607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8606, i32 undef)  ; BufferLoad(srv,index,wot)
  %8608 = extractvalue %dx.types.ResRet.f32 %8607, 0
  %8609 = extractvalue %dx.types.ResRet.f32 %8607, 1
  %8610 = extractvalue %dx.types.ResRet.f32 %8607, 2
  %8611 = extractvalue %dx.types.ResRet.f32 %8607, 3
  %8612 = add nuw nsw i32 %8606, 16
  %8613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8612, i32 undef)  ; BufferLoad(srv,index,wot)
  %8614 = extractvalue %dx.types.ResRet.f32 %8613, 0
  %8615 = extractvalue %dx.types.ResRet.f32 %8613, 1
  %8616 = add nuw nsw i32 %8606, 32
  %8617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8616, i32 undef)  ; BufferLoad(srv,index,wot)
  %8618 = extractvalue %dx.types.ResRet.f32 %8617, 0
  %8619 = extractvalue %dx.types.ResRet.f32 %8617, 1
  %8620 = extractvalue %dx.types.ResRet.f32 %8617, 2
  %8621 = add nuw nsw i32 %8606, 48
  %8622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8621, i32 undef)  ; BufferLoad(srv,index,wot)
  %8623 = extractvalue %dx.types.ResRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.ResRet.f32 %8622, 1
  %8625 = extractvalue %dx.types.ResRet.f32 %8622, 2
  %8626 = extractvalue %dx.types.ResRet.f32 %8622, 3
  %8627 = add nuw nsw i32 %8606, 64
  %8628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8627, i32 undef)  ; BufferLoad(srv,index,wot)
  %8629 = extractvalue %dx.types.ResRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.ResRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.ResRet.f32 %8628, 2
  %8632 = extractvalue %dx.types.ResRet.f32 %8628, 3
  %8633 = add nuw nsw i32 %8606, 80
  %8634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8633, i32 undef)  ; BufferLoad(srv,index,wot)
  %8635 = extractvalue %dx.types.ResRet.f32 %8634, 0
  %8636 = extractvalue %dx.types.ResRet.f32 %8634, 1
  %8637 = extractvalue %dx.types.ResRet.f32 %8634, 2
  %8638 = extractvalue %dx.types.ResRet.f32 %8634, 3
  %8639 = add nuw nsw i32 %8606, 96
  %8640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8639, i32 undef)  ; BufferLoad(srv,index,wot)
  %8641 = extractvalue %dx.types.ResRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.ResRet.f32 %8640, 1
  %8643 = extractvalue %dx.types.ResRet.f32 %8640, 2
  %8644 = extractvalue %dx.types.ResRet.f32 %8640, 3
  %8645 = bitcast float %8615 to i32
  %8646 = fmul fast float %8620, %116
  %8647 = fmul fast float %8620, %117
  %8648 = fmul fast float %8620, %118
  %8649 = fadd fast float %8646, %164
  %8650 = fadd fast float %8647, %165
  %8651 = fadd fast float %8648, %166
  %8652 = fmul fast float %8649, %8623
  %8653 = call float @dx.op.tertiary.f32(i32 46, float %8650, float %8629, float %8652)  ; FMad(a,b,c)
  %8654 = call float @dx.op.tertiary.f32(i32 46, float %8651, float %8635, float %8653)  ; FMad(a,b,c)
  %8655 = fadd fast float %8654, %8641
  %8656 = fmul fast float %8649, %8624
  %8657 = call float @dx.op.tertiary.f32(i32 46, float %8650, float %8630, float %8656)  ; FMad(a,b,c)
  %8658 = call float @dx.op.tertiary.f32(i32 46, float %8651, float %8636, float %8657)  ; FMad(a,b,c)
  %8659 = fadd fast float %8658, %8642
  %8660 = fmul fast float %8649, %8625
  %8661 = call float @dx.op.tertiary.f32(i32 46, float %8650, float %8631, float %8660)  ; FMad(a,b,c)
  %8662 = call float @dx.op.tertiary.f32(i32 46, float %8651, float %8637, float %8661)  ; FMad(a,b,c)
  %8663 = fadd fast float %8662, %8643
  %8664 = fmul fast float %8649, %8626
  %8665 = call float @dx.op.tertiary.f32(i32 46, float %8650, float %8632, float %8664)  ; FMad(a,b,c)
  %8666 = call float @dx.op.tertiary.f32(i32 46, float %8651, float %8638, float %8665)  ; FMad(a,b,c)
  %8667 = fadd fast float %8666, %8644
  %8668 = fdiv fast float %8655, %8667
  %8669 = fdiv fast float %8659, %8667
  %8670 = fdiv fast float %8663, %8667
  %8671 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8670)  ; FMax(a,b)
  %8672 = fmul fast float %269, 0x401921FB60000000
  %8673 = call float @dx.op.unary.f32(i32 13, float %8672)  ; Sin(value)
  %8674 = call float @dx.op.unary.f32(i32 12, float %8672)  ; Cos(value)
  %8675 = fmul fast float %8674, %8619
  %8676 = call float @dx.op.tertiary.f32(i32 46, float %8673, float %8619, float 0.000000e+00)  ; FMad(a,b,c)
  %8677 = fmul fast float %8619, %8673
  %8678 = fsub fast float -0.000000e+00, %8677
  %8679 = call float @dx.op.tertiary.f32(i32 46, float %8674, float %8619, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8680

; <label>:8680                                    ; preds = %8680, %8605
  %8681 = phi float [ 0.000000e+00, %8605 ], [ %8713, %8680 ]
  %8682 = phi float [ 0.000000e+00, %8605 ], [ %8715, %8680 ]
  %8683 = phi i32 [ 0, %8605 ], [ %8716, %8680 ]
  %8684 = mul i32 %8683, 2
  %8685 = add i32 0, %8684
  %8686 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8685
  %8687 = load float, float* %8686, align 4
  %8688 = mul i32 %8683, 2
  %8689 = add i32 1, %8688
  %8690 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8689
  %8691 = load float, float* %8690, align 4
  %8692 = fmul fast float %8675, %8687
  %8693 = call float @dx.op.tertiary.f32(i32 46, float %8691, float %8678, float %8692)  ; FMad(a,b,c)
  %8694 = fmul fast float %8687, %8676
  %8695 = call float @dx.op.tertiary.f32(i32 46, float %8691, float %8679, float %8694)  ; FMad(a,b,c)
  %8696 = fadd fast float %8693, %8668
  %8697 = fadd fast float %8695, %8669
  %8698 = fmul fast float %8696, %8614
  %8699 = fmul fast float %8697, %8614
  %8700 = call float @dx.op.binary.f32(i32 35, float %8698, float %8610)  ; FMax(a,b)
  %8701 = call float @dx.op.binary.f32(i32 35, float %8699, float %8610)  ; FMax(a,b)
  %8702 = call float @dx.op.binary.f32(i32 36, float %8700, float %8611)  ; FMin(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8701, float %8611)  ; FMin(a,b)
  %8704 = fadd fast float %8702, %8608
  %8705 = fadd fast float %8703, %8609
  %8706 = uitofp i32 %8645 to float
  %8707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8704, float %8705, float %8706, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8708 = extractvalue %dx.types.ResRet.f32 %8707, 0
  %8709 = fsub fast float %8708, %8671
  %8710 = fsub fast float %8709, %8618
  %8711 = fcmp fast ogt float %8710, 0.000000e+00
  %8712 = select i1 %8711, float 1.000000e+00, float 0.000000e+00
  %8713 = fadd fast float %8712, %8681
  %8714 = select i1 %8711, float %8710, float 0.000000e+00
  %8715 = fadd fast float %8714, %8682
  %8716 = add nuw nsw i32 %8683, 1
  %8717 = icmp eq i32 %8716, 8
  br i1 %8717, label %8718, label %8680

; <label>:8718                                    ; preds = %8680
  %8719 = fdiv fast float 1.000000e+00, %8713
  %8720 = fmul fast float %8719, %8715
  %8721 = fdiv fast float 1.000000e+00, %8671
  %8722 = fmul fast float %8720, %8721
  %8723 = call float @dx.op.unary.f32(i32 7, float %8722)  ; Saturate(value)
  %8724 = call float @dx.op.binary.f32(i32 35, float %8723, float 0.000000e+00)  ; FMax(a,b)
  %8725 = fmul fast float %8713, 1.250000e-01
  %8726 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  %8727 = fmul fast float %8726, 2.000000e+00
  %8728 = fadd fast float %8727, -1.000000e+00
  %8729 = fcmp fast ogt float %8728, 0.000000e+00
  %8730 = fcmp fast olt float %8728, 0.000000e+00
  %8731 = zext i1 %8729 to i32
  %8732 = zext i1 %8730 to i32
  %8733 = sub nsw i32 %8731, %8732
  %8734 = sitofp i32 %8733 to float
  %8735 = fmul fast float %8734, %8728
  %8736 = fsub fast float 1.000000e+00, %8735
  %8737 = fmul fast float %8736, %8736
  %8738 = fmul fast float %8737, %8736
  %8739 = fsub fast float %8736, %8738
  %8740 = fmul fast float %8739, %8724
  %8741 = fsub fast float 1.000000e+00, %8738
  %8742 = fsub fast float %8741, %8740
  %8743 = fmul fast float %8734, 5.000000e-01
  %8744 = fmul fast float %8743, %8742
  %8745 = fsub fast float -5.000000e-01, %8744
  %8746 = fmul fast float %8745, %8579
  %8747 = fadd fast float %8746, 1.000000e+00
  %8748 = fmul fast float %8747, %8591
  br label %8749

; <label>:8749                                    ; preds = %8718, %8603
  %8750 = phi float [ %8748, %8718 ], [ %8591, %8603 ]
  %8751 = call float @dx.op.binary.f32(i32 36, float %8750, float %8750)  ; FMin(a,b)
  %8752 = call float @dx.op.binary.f32(i32 36, float %8750, float %8751)  ; FMin(a,b)
  %8753 = fcmp fast ogt float %8752, 0.000000e+00
  br i1 %8753, label %8754, label %8595, !dx.controlflow.hints !134

; <label>:8754                                    ; preds = %8749
  %8755 = fmul fast float %8750, %8512
  %8756 = fmul fast float %8750, %8513
  %8757 = fmul fast float %8750, %8514
  %8758 = fsub fast float %8496, %5566
  %8759 = fcmp fast ogt float %8758, 0.000000e+00
  %8760 = fsub fast float %166, %5566
  %8761 = fcmp fast ogt float %8760, 0.000000e+00
  %8762 = xor i1 %8761, %8759
  %8763 = fsub fast float %5566, %8496
  %8764 = fmul fast float %8763, 2.000000e+00
  %8765 = fadd fast float %8764, %8496
  %8766 = select i1 %8762, float %8496, float %8765
  %8767 = fsub fast float %8766, %166
  %8768 = call float @dx.op.dot3.f32(i32 55, float %8523, float %8524, float %8767, float %8523, float %8524, float %8767)  ; Dot3(ax,ay,az,bx,by,bz)
  %8769 = call float @dx.op.unary.f32(i32 25, float %8768)  ; Rsqrt(value)
  %8770 = fmul fast float %8769, %8523
  %8771 = fmul fast float %8769, %8524
  %8772 = fmul fast float %8769, %8767
  %8773 = fsub fast float %5566, %166
  %8774 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8773)  ; Dot3(ax,ay,az,bx,by,bz)
  %8775 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8770, float %8771, float %8772)  ; Dot3(ax,ay,az,bx,by,bz)
  %8776 = fdiv fast float 1.000000e+00, %8775
  %8777 = fmul fast float %8776, %8774
  %8778 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8760, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8779 = fcmp fast ogt float %8778, 0.000000e+00
  %8780 = fcmp fast olt float %8778, 0.000000e+00
  %8781 = zext i1 %8779 to i32
  %8782 = zext i1 %8780 to i32
  %8783 = sub nsw i32 %8781, %8782
  %8784 = sitofp i32 %8783 to float
  %8785 = fsub fast float %8766, %5566
  %8786 = call float @dx.op.dot3.f32(i32 55, float %8523, float %8524, float %8785, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8787 = fcmp fast ogt float %8786, 0.000000e+00
  %8788 = fcmp fast olt float %8786, 0.000000e+00
  %8789 = zext i1 %8787 to i32
  %8790 = zext i1 %8788 to i32
  %8791 = sub nsw i32 %8789, %8790
  %8792 = sitofp i32 %8791 to float
  %8793 = fcmp fast une float %8784, %8792
  br i1 %8793, label %8794, label %8804

; <label>:8794                                    ; preds = %8754
  %8795 = fmul fast float %8777, %8772
  %8796 = fmul fast float %8777, %8771
  %8797 = fmul fast float %8777, %8770
  %8798 = fmul fast float %8797, %8797
  %8799 = fmul fast float %8796, %8796
  %8800 = fadd fast float %8798, %8799
  %8801 = fmul fast float %8795, %8795
  %8802 = fadd fast float %8800, %8801
  %8803 = call float @dx.op.unary.f32(i32 24, float %8802)  ; Sqrt(value)
  br label %8816

; <label>:8804                                    ; preds = %8754
  %8805 = icmp slt i32 %8783, 0
  br i1 %8805, label %8806, label %8816

; <label>:8806                                    ; preds = %8804
  %8807 = fsub fast float %164, %8494
  %8808 = fsub fast float %165, %8495
  %8809 = fsub fast float %166, %8766
  %8810 = fmul fast float %8807, %8807
  %8811 = fmul fast float %8808, %8808
  %8812 = fadd fast float %8810, %8811
  %8813 = fmul fast float %8809, %8809
  %8814 = fadd fast float %8812, %8813
  %8815 = call float @dx.op.unary.f32(i32 24, float %8814)  ; Sqrt(value)
  br label %8816

; <label>:8816                                    ; preds = %8806, %8804, %8794
  %8817 = phi float [ %8803, %8794 ], [ %8815, %8806 ], [ 0.000000e+00, %8804 ]
  %8818 = and i1 %8761, %8759
  %8819 = fsub fast float -0.000000e+00, %8817
  %8820 = select i1 %8818, float -0.000000e+00, float %8819
  %8821 = fmul fast float %5563, 0x3FF7154760000000
  %8822 = fmul fast float %8821, %8820
  %8823 = fmul fast float %5564, 0x3FF7154760000000
  %8824 = fmul fast float %8823, %8820
  %8825 = fmul fast float %5565, 0x3FF7154760000000
  %8826 = fmul fast float %8825, %8820
  %8827 = call float @dx.op.unary.f32(i32 21, float %8822)  ; Exp(value)
  %8828 = call float @dx.op.unary.f32(i32 21, float %8824)  ; Exp(value)
  %8829 = call float @dx.op.unary.f32(i32 21, float %8826)  ; Exp(value)
  %8830 = call float @dx.op.unary.f32(i32 7, float %8827)  ; Saturate(value)
  %8831 = call float @dx.op.unary.f32(i32 7, float %8828)  ; Saturate(value)
  %8832 = call float @dx.op.unary.f32(i32 7, float %8829)  ; Saturate(value)
  %8833 = fmul fast float %8755, %8830
  %8834 = fmul fast float %8756, %8831
  %8835 = fmul fast float %8757, %8832
  %8836 = fsub fast float %8529, %184
  %8837 = fsub fast float %8530, %185
  %8838 = fsub fast float %8531, %186
  %8839 = call float @dx.op.dot3.f32(i32 55, float %8836, float %8837, float %8838, float %8836, float %8837, float %8838)  ; Dot3(ax,ay,az,bx,by,bz)
  %8840 = call float @dx.op.unary.f32(i32 25, float %8839)  ; Rsqrt(value)
  %8841 = fmul fast float %8840, %8836
  %8842 = fmul fast float %8840, %8837
  %8843 = fmul fast float %8840, %8838
  %8844 = call float @dx.op.dot3.f32(i32 55, float %8529, float %8530, float %8531, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %8845 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5581, float %5582, float %8841, float %8842, float %8843)  ; Dot3(ax,ay,az,bx,by,bz)
  %8846 = call float @dx.op.unary.f32(i32 7, float %8844)  ; Saturate(value)
  %8847 = fmul fast float %8846, %8536
  %8848 = fmul fast float %8846, %8846
  %8849 = fmul fast float %8848, %5785
  %8850 = call float @dx.op.unary.f32(i32 7, float %8849)  ; Saturate(value)
  %8851 = fmul fast float %8847, %8850
  %8852 = bitcast float %8526 to i32
  %8853 = ashr i32 %8852, 1
  %8854 = sub nsw i32 1597463007, %8853
  %8855 = bitcast i32 %8854 to float
  %8856 = fmul fast float %8855, %8523
  %8857 = fmul fast float %8855, %8524
  %8858 = fmul fast float %8855, %8525
  %8859 = fsub fast float %8856, %184
  %8860 = fsub fast float %8857, %185
  %8861 = fsub fast float %8858, %186
  %8862 = call float @dx.op.dot3.f32(i32 55, float %8859, float %8860, float %8861, float %8859, float %8860, float %8861)  ; Dot3(ax,ay,az,bx,by,bz)
  %8863 = call float @dx.op.unary.f32(i32 25, float %8862)  ; Rsqrt(value)
  %8864 = fmul fast float %8859, %8863
  %8865 = fmul fast float %8860, %8863
  %8866 = fmul fast float %8861, %8863
  %8867 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %8864, float %8865, float %8866)  ; Dot3(ax,ay,az,bx,by,bz)
  %8868 = fmul fast float %8867, %8867
  %8869 = call float @dx.op.unary.f32(i32 6, float %8844)  ; FAbs(value)
  %8870 = fsub fast float 1.000000e+00, %5778
  %8871 = fmul fast float %5760, %5760
  %8872 = fmul fast float %8871, %8870
  %8873 = fadd fast float %8872, %5778
  %8874 = bitcast float %8873 to i32
  %8875 = ashr i32 %8874, 1
  %8876 = add nsw i32 %8875, 532487669
  %8877 = bitcast i32 %8876 to float
  %8878 = fadd fast float %8877, %5760
  %8879 = fmul fast float %5778, %8868
  %8880 = fsub fast float 1.000000e+00, %8868
  %8881 = fadd fast float %8880, %8879
  %8882 = fmul fast float %8869, %8869
  %8883 = fmul fast float %8882, %8870
  %8884 = fadd fast float %8883, %5778
  %8885 = bitcast float %8884 to i32
  %8886 = ashr i32 %8885, 1
  %8887 = add nsw i32 %8886, 532487669
  %8888 = bitcast i32 %8887 to float
  %8889 = fadd fast float %8888, %8869
  %8890 = fmul fast float %8881, %8881
  %8891 = fmul fast float %8890, %8878
  %8892 = fmul fast float %8891, %8889
  %8893 = fdiv fast float 1.000000e+00, %8892
  %8894 = bitcast float %5778 to i32
  %8895 = sitofp i32 %8894 to float
  %8896 = fmul fast float %8895, 0x3FE7F73180000000
  %8897 = fadd fast float %8896, 0x41AFE27C40000000
  %8898 = fptosi float %8897 to i32
  %8899 = bitcast i32 %8898 to float
  %8900 = fmul fast float %8491, 0x3FD80E9D60000000
  %8901 = fmul fast float %8900, %8855
  %8902 = fadd fast float %8899, %8901
  %8903 = bitcast float %8902 to i32
  %8904 = sub nsw i32 2129859010, %8903
  %8905 = bitcast i32 %8904 to float
  %8906 = fmul fast float %5778, %8893
  %8907 = fmul fast float %8906, %8899
  %8908 = fmul fast float %8907, %8905
  %8909 = fmul fast float %6031, 0x3FF9999980000000
  %8910 = fsub fast float 5.000000e+00, %8909
  %8911 = call float @dx.op.unary.f32(i32 6, float %8845)  ; FAbs(value)
  %8912 = fsub fast float 1.000000e+00, %8911
  %8913 = fmul fast float %6031, 0x41D9660740000000
  %8914 = fadd fast float %8913, 0xC1EFBF8940000000
  %8915 = bitcast float %8912 to i32
  %8916 = sitofp i32 %8915 to float
  %8917 = fmul fast float %8916, %8910
  %8918 = fadd fast float %8914, %8917
  %8919 = fptosi float %8918 to i32
  %8920 = bitcast i32 %8919 to float
  %8921 = fsub fast float 1.000000e+00, %5749
  %8922 = fsub fast float 1.000000e+00, %5750
  %8923 = fsub fast float 1.000000e+00, %5758
  %8924 = fmul fast float %8920, %8921
  %8925 = fmul fast float %8920, %8922
  %8926 = fmul fast float %8920, %8923
  %8927 = fadd fast float %8924, %5749
  %8928 = fadd fast float %8925, %5750
  %8929 = fadd fast float %8926, %5758
  br i1 %6054, label %8930, label %8953

; <label>:8930                                    ; preds = %8816
  %8931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5111, float %8911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8932 = extractvalue %dx.types.ResRet.f32 %8931, 0
  %8933 = extractvalue %dx.types.ResRet.f32 %8931, 1
  %8934 = extractvalue %dx.types.ResRet.f32 %8931, 2
  %8935 = fadd fast float %8932, -5.000000e-01
  %8936 = fadd fast float %8933, -5.000000e-01
  %8937 = fadd fast float %8934, -5.000000e-01
  %8938 = fmul fast float %5749, 4.000000e+00
  %8939 = fmul fast float %8938, %8921
  %8940 = fmul fast float %8939, %8935
  %8941 = fmul fast float %5750, 4.000000e+00
  %8942 = fmul fast float %8941, %8922
  %8943 = fmul fast float %8942, %8936
  %8944 = fmul fast float %5758, 4.000000e+00
  %8945 = fmul fast float %8944, %8923
  %8946 = fmul fast float %8945, %8937
  %8947 = fadd fast float %8940, %8927
  %8948 = fadd fast float %8943, %8928
  %8949 = fadd fast float %8946, %8929
  %8950 = call float @dx.op.unary.f32(i32 7, float %8947)  ; Saturate(value)
  %8951 = call float @dx.op.unary.f32(i32 7, float %8948)  ; Saturate(value)
  %8952 = call float @dx.op.unary.f32(i32 7, float %8949)  ; Saturate(value)
  br label %8953

; <label>:8953                                    ; preds = %8930, %8816
  %8954 = phi float [ %8950, %8930 ], [ %8927, %8816 ]
  %8955 = phi float [ %8951, %8930 ], [ %8928, %8816 ]
  %8956 = phi float [ %8952, %8930 ], [ %8929, %8816 ]
  %8957 = fmul fast float %8844, 9.843750e-01
  %8958 = fadd fast float %8957, 7.812500e-03
  %8959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8958, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8960 = extractvalue %dx.types.ResRet.f32 %8959, 0
  %8961 = extractvalue %dx.types.ResRet.f32 %8959, 1
  %8962 = extractvalue %dx.types.ResRet.f32 %8959, 2
  %8963 = extractvalue %dx.types.ResRet.f32 %8959, 3
  %8964 = fsub fast float %8962, %8960
  %8965 = fsub fast float %8963, %8961
  %8966 = fmul fast float %8964, %6041
  %8967 = fmul fast float %8965, %6041
  %8968 = fadd fast float %8966, %8960
  %8969 = fadd fast float %8967, %8961
  %8970 = fmul fast float %8968, %5749
  %8971 = fmul fast float %8968, %5750
  %8972 = fmul fast float %8968, %5758
  %8973 = fadd fast float %8970, %8969
  %8974 = fadd fast float %8971, %8969
  %8975 = fadd fast float %8972, %8969
  br i1 %6054, label %8976, label %8999

; <label>:8976                                    ; preds = %8953
  %8977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5111, float %8844, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8978 = extractvalue %dx.types.ResRet.f32 %8977, 0
  %8979 = extractvalue %dx.types.ResRet.f32 %8977, 1
  %8980 = extractvalue %dx.types.ResRet.f32 %8977, 2
  %8981 = fadd fast float %8978, -5.000000e-01
  %8982 = fadd fast float %8979, -5.000000e-01
  %8983 = fadd fast float %8980, -5.000000e-01
  %8984 = fmul fast float %5749, 4.000000e+00
  %8985 = fmul fast float %8984, %8921
  %8986 = fmul fast float %8985, %8981
  %8987 = fmul fast float %5750, 4.000000e+00
  %8988 = fmul fast float %8987, %8922
  %8989 = fmul fast float %8988, %8982
  %8990 = fmul fast float %5758, 4.000000e+00
  %8991 = fmul fast float %8990, %8923
  %8992 = fmul fast float %8991, %8983
  %8993 = fadd fast float %8986, %8973
  %8994 = fadd fast float %8989, %8974
  %8995 = fadd fast float %8992, %8975
  %8996 = call float @dx.op.unary.f32(i32 7, float %8993)  ; Saturate(value)
  %8997 = call float @dx.op.unary.f32(i32 7, float %8994)  ; Saturate(value)
  %8998 = call float @dx.op.unary.f32(i32 7, float %8995)  ; Saturate(value)
  br label %8999

; <label>:8999                                    ; preds = %8976, %8953
  %9000 = phi float [ %8996, %8976 ], [ %8973, %8953 ]
  %9001 = phi float [ %8997, %8976 ], [ %8974, %8953 ]
  %9002 = phi float [ %8998, %8976 ], [ %8975, %8953 ]
  %9003 = call float @dx.op.binary.f32(i32 35, float %9001, float %9002)  ; FMax(a,b)
  %9004 = call float @dx.op.binary.f32(i32 35, float %9000, float %9003)  ; FMax(a,b)
  %9005 = fsub fast float 1.000000e+00, %9004
  %9006 = call float @dx.op.binary.f32(i32 35, float %8869, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9007 = fdiv fast float %4459, %9006
  %9008 = fmul fast float %6601, %9007
  %9009 = fmul fast float %6603, %9007
  %9010 = fmul fast float %6605, %9007
  %9011 = call float @dx.op.unary.f32(i32 21, float %9008)  ; Exp(value)
  %9012 = call float @dx.op.unary.f32(i32 21, float %9009)  ; Exp(value)
  %9013 = call float @dx.op.unary.f32(i32 21, float %9010)  ; Exp(value)
  %9014 = call float @dx.op.unary.f32(i32 7, float %9011)  ; Saturate(value)
  %9015 = call float @dx.op.unary.f32(i32 7, float %9012)  ; Saturate(value)
  %9016 = call float @dx.op.unary.f32(i32 7, float %9013)  ; Saturate(value)
  %9017 = select i1 %6598, float %9014, float 0.000000e+00
  %9018 = select i1 %6599, float %9015, float 0.000000e+00
  %9019 = select i1 %6600, float %9016, float 0.000000e+00
  %9020 = fsub fast float -0.000000e+00, %5752
  %9021 = fsub fast float -0.000000e+00, %5753
  %9022 = fsub fast float -0.000000e+00, %5754
  %9023 = call float @dx.op.dot3.f32(i32 55, float %8529, float %8530, float %8531, float %9020, float %9021, float %9022)  ; Dot3(ax,ay,az,bx,by,bz)
  %9024 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  %9025 = fmul fast float %9024, %8536
  %9026 = fmul fast float %9024, 9.843750e-01
  %9027 = fadd fast float %9026, 7.812500e-03
  %9028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %9027, float %6035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9029 = extractvalue %dx.types.ResRet.f32 %9028, 0
  %9030 = extractvalue %dx.types.ResRet.f32 %9028, 1
  %9031 = extractvalue %dx.types.ResRet.f32 %9028, 2
  %9032 = extractvalue %dx.types.ResRet.f32 %9028, 3
  %9033 = fsub fast float %9031, %9029
  %9034 = fsub fast float %9032, %9030
  %9035 = fmul fast float %9033, %6041
  %9036 = fmul fast float %9034, %6041
  %9037 = fadd fast float %9035, %9029
  %9038 = fadd fast float %9036, %9030
  %9039 = fmul fast float %9037, %5749
  %9040 = fmul fast float %9037, %5750
  %9041 = fmul fast float %9037, %5758
  %9042 = fadd fast float %9039, %9038
  %9043 = fadd fast float %9040, %9038
  %9044 = fadd fast float %9041, %9038
  br i1 %6054, label %9045, label %9068

; <label>:9045                                    ; preds = %8999
  %9046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5111, float %9024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9047 = extractvalue %dx.types.ResRet.f32 %9046, 0
  %9048 = extractvalue %dx.types.ResRet.f32 %9046, 1
  %9049 = extractvalue %dx.types.ResRet.f32 %9046, 2
  %9050 = fadd fast float %9047, -5.000000e-01
  %9051 = fadd fast float %9048, -5.000000e-01
  %9052 = fadd fast float %9049, -5.000000e-01
  %9053 = fmul fast float %5749, 4.000000e+00
  %9054 = fmul fast float %9053, %8921
  %9055 = fmul fast float %9054, %9050
  %9056 = fmul fast float %5750, 4.000000e+00
  %9057 = fmul fast float %9056, %8922
  %9058 = fmul fast float %9057, %9051
  %9059 = fmul fast float %5758, 4.000000e+00
  %9060 = fmul fast float %9059, %8923
  %9061 = fmul fast float %9060, %9052
  %9062 = fadd fast float %9055, %9042
  %9063 = fadd fast float %9058, %9043
  %9064 = fadd fast float %9061, %9044
  %9065 = call float @dx.op.unary.f32(i32 7, float %9062)  ; Saturate(value)
  %9066 = call float @dx.op.unary.f32(i32 7, float %9063)  ; Saturate(value)
  %9067 = call float @dx.op.unary.f32(i32 7, float %9064)  ; Saturate(value)
  br label %9068

; <label>:9068                                    ; preds = %9045, %8999
  %9069 = phi float [ %9065, %9045 ], [ %9042, %8999 ]
  %9070 = phi float [ %9066, %9045 ], [ %9043, %8999 ]
  %9071 = phi float [ %9067, %9045 ], [ %9044, %8999 ]
  %9072 = call float @dx.op.binary.f32(i32 35, float %9070, float %9071)  ; FMax(a,b)
  %9073 = call float @dx.op.binary.f32(i32 35, float %9069, float %9072)  ; FMax(a,b)
  %9074 = fsub fast float 1.000000e+00, %9073
  %9075 = fmul fast float %5775, %6665
  %9076 = fadd fast float %6667, %9075
  %9077 = call float @dx.op.unary.f32(i32 7, float %9076)  ; Saturate(value)
  %9078 = fsub fast float %8856, %5766
  %9079 = fsub fast float %8857, %5767
  %9080 = fsub fast float %8858, %5768
  %9081 = call float @dx.op.dot3.f32(i32 55, float %9078, float %9079, float %9080, float %9078, float %9079, float %9080)  ; Dot3(ax,ay,az,bx,by,bz)
  %9082 = call float @dx.op.unary.f32(i32 25, float %9081)  ; Rsqrt(value)
  %9083 = fmul fast float %9078, %9082
  %9084 = fmul fast float %9079, %9082
  %9085 = fmul fast float %9080, %9082
  %9086 = call float @dx.op.dot3.f32(i32 55, float %9020, float %9021, float %9022, float %9083, float %9084, float %9085)  ; Dot3(ax,ay,az,bx,by,bz)
  %9087 = fmul fast float %9086, %9086
  %9088 = call float @dx.op.unary.f32(i32 6, float %9024)  ; FAbs(value)
  %9089 = call float @dx.op.binary.f32(i32 35, float %9077, float 0x3F847AE140000000)  ; FMax(a,b)
  %9090 = fmul fast float %9089, %9089
  %9091 = fmul fast float %9090, %9090
  %9092 = fsub fast float 1.000000e+00, %9091
  %9093 = fmul fast float %8871, %9092
  %9094 = fadd fast float %9093, %9091
  %9095 = bitcast float %9094 to i32
  %9096 = ashr i32 %9095, 1
  %9097 = add nsw i32 %9096, 532487669
  %9098 = bitcast i32 %9097 to float
  %9099 = fadd fast float %9098, %5760
  %9100 = fmul fast float %9091, %9087
  %9101 = fsub fast float 1.000000e+00, %9087
  %9102 = fadd fast float %9101, %9100
  %9103 = fmul fast float %9088, %9088
  %9104 = fmul fast float %9103, %9092
  %9105 = fadd fast float %9104, %9091
  %9106 = bitcast float %9105 to i32
  %9107 = ashr i32 %9106, 1
  %9108 = add nsw i32 %9107, 532487669
  %9109 = bitcast i32 %9108 to float
  %9110 = fadd fast float %9109, %9088
  %9111 = fmul fast float %9102, %9102
  %9112 = fmul fast float %9111, %9099
  %9113 = fmul fast float %9112, %9110
  %9114 = fdiv fast float 1.000000e+00, %9113
  %9115 = bitcast float %9091 to i32
  %9116 = sitofp i32 %9115 to float
  %9117 = fmul fast float %9116, 0x3FE7F73180000000
  %9118 = fadd fast float %9117, 0x41AFE27C40000000
  %9119 = fptosi float %9118 to i32
  %9120 = bitcast i32 %9119 to float
  %9121 = fadd fast float %9120, %8901
  %9122 = bitcast float %9121 to i32
  %9123 = sub nsw i32 2129859010, %9122
  %9124 = bitcast i32 %9123 to float
  %9125 = fmul fast float %9091, %9114
  %9126 = fmul fast float %9125, %9120
  %9127 = fmul fast float %9126, %9124
  br i1 %8521, label %9128, label %9138

; <label>:9128                                    ; preds = %9068
  %9129 = fmul fast float %9025, %9017
  %9130 = fmul fast float %9025, %9018
  %9131 = fmul fast float %9025, %9019
  %9132 = fmul fast float %9129, %9074
  %9133 = fmul fast float %9132, %9127
  %9134 = fmul fast float %9130, %9074
  %9135 = fmul fast float %9134, %9127
  %9136 = fmul fast float %9131, %9074
  %9137 = fmul fast float %9136, %9127
  br label %9138

; <label>:9138                                    ; preds = %9128, %9068
  %9139 = phi float [ %9133, %9128 ], [ 0.000000e+00, %9068 ]
  %9140 = phi float [ %9135, %9128 ], [ 0.000000e+00, %9068 ]
  %9141 = phi float [ %9137, %9128 ], [ 0.000000e+00, %9068 ]
  %9142 = fmul fast float %8954, %8908
  %9143 = fmul fast float %8955, %8908
  %9144 = fmul fast float %8956, %8908
  %9145 = fsub fast float 1.000000e+00, %8845
  %9146 = bitcast float %9145 to i32
  %9147 = sitofp i32 %9146 to float
  %9148 = fmul fast float %9147, 5.000000e+00
  %9149 = fadd fast float %9148, 0xC1EFBF8940000000
  %9150 = fptosi float %9149 to i32
  %9151 = bitcast i32 %9150 to float
  %9152 = fmul fast float %9151, %5112
  %9153 = fmul fast float %9005, %9152
  %9154 = fmul fast float %9153, %6593
  %9155 = fmul fast float %9153, %6594
  %9156 = fmul fast float %9153, %6595
  %9157 = fadd fast float %9154, %9142
  %9158 = fadd fast float %9155, %9143
  %9159 = fadd fast float %9156, %9144
  %9160 = fmul fast float %9157, %8851
  %9161 = fmul fast float %9158, %8851
  %9162 = fmul fast float %9159, %8851
  %9163 = fadd fast float %9160, %9139
  %9164 = fadd fast float %9161, %9140
  %9165 = fadd fast float %9162, %9141
  %9166 = fmul fast float %8833, %5137
  %9167 = fmul fast float %9166, %8851
  %9168 = fmul fast float %9167, %9005
  %9169 = fmul fast float %8834, %5137
  %9170 = fmul fast float %9169, %8851
  %9171 = fmul fast float %9170, %9005
  %9172 = fmul fast float %8835, %5137
  %9173 = fmul fast float %9172, %8851
  %9174 = fmul fast float %9173, %9005
  %9175 = fadd fast float %9168, %8465
  %9176 = fadd fast float %9171, %8466
  %9177 = fadd fast float %9174, %8467
  %9178 = fmul fast float %9166, %9163
  %9179 = fmul fast float %9169, %9164
  %9180 = fmul fast float %9172, %9165
  %9181 = fadd fast float %9178, %8462
  %9182 = fadd fast float %9179, %8463
  %9183 = fadd fast float %9180, %8464
  br label %8595

; <label>:9184                                    ; preds = %8595
  br label %9185

; <label>:9185                                    ; preds = %9184, %8428
  %9186 = phi float [ %8430, %8428 ], [ %8596, %9184 ]
  %9187 = phi float [ %8431, %8428 ], [ %8597, %9184 ]
  %9188 = phi float [ %8432, %8428 ], [ %8598, %9184 ]
  %9189 = phi float [ %8433, %8428 ], [ %8599, %9184 ]
  %9190 = phi float [ %8434, %8428 ], [ %8600, %9184 ]
  %9191 = phi float [ %8435, %8428 ], [ %8601, %9184 ]
  %9192 = add i32 %8429, 1
  %9193 = icmp ugt i32 %9192, %8425
  br i1 %9193, label %9194, label %8428

; <label>:9194                                    ; preds = %9185
  br label %9195

; <label>:9195                                    ; preds = %9194, %8378, %8368
  %9196 = phi float [ %8369, %8368 ], [ %8369, %8378 ], [ %9186, %9194 ]
  %9197 = phi float [ %8370, %8368 ], [ %8370, %8378 ], [ %9187, %9194 ]
  %9198 = phi float [ %8371, %8368 ], [ %8371, %8378 ], [ %9188, %9194 ]
  %9199 = phi float [ %8372, %8368 ], [ %8372, %8378 ], [ %9189, %9194 ]
  %9200 = phi float [ %8373, %8368 ], [ %8373, %8378 ], [ %9190, %9194 ]
  %9201 = phi float [ %8374, %8368 ], [ %8374, %8378 ], [ %9191, %9194 ]
  %9202 = fmul fast float %5137, %6622
  %9203 = fsub fast float -0.000000e+00, %9202
  %9204 = fmul fast float %5137, %6623
  %9205 = fsub fast float -0.000000e+00, %9204
  %9206 = fmul fast float %5137, %6624
  %9207 = fsub fast float -0.000000e+00, %9206
  %9208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9209 = extractvalue %dx.types.CBufRet.f32 %9208, 0
  %9210 = fmul fast float %9209, %6628
  %9211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.f32 %9211, 3
  %9213 = fsub fast float 1.000000e+00, %5115
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9215 = fadd fast float %9201, %5114
  %9216 = fmul fast float %9215, %5115
  %9217 = fmul fast float %9214, %9212
  %9218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %5116, i32 undef)  ; BufferLoad(srv,index,wot)
  %9219 = extractvalue %dx.types.ResRet.i32 %9218, 3
  %9220 = bitcast i32 %9219 to float
  %9221 = fsub fast float %9203, %9220
  %9222 = fsub fast float %9205, %9220
  %9223 = fsub fast float %9207, %9220
  %9224 = fmul fast float %9221, %198
  %9225 = fmul fast float %9222, %198
  %9226 = fmul fast float %9223, %198
  %9227 = fadd fast float %9224, %9220
  %9228 = fadd fast float %9225, %9220
  %9229 = fadd fast float %9226, %9220
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 3
  %9232 = fmul fast float %9199, %5746
  %9233 = fmul fast float %9200, %5747
  %9234 = fmul fast float %9201, %5748
  %9235 = fcmp fast ogt float %97, %218
  %9236 = and i1 %9235, %5569
  %9237 = or i1 %5575, %9236
  %9238 = icmp eq i32 %5568, 2
  %9239 = fcmp fast ole float %97, %218
  %9240 = and i1 %9239, %9238
  %9241 = or i1 %9240, %9237
  br i1 %9236, label %9242, label %9499

; <label>:9242                                    ; preds = %9195
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 2
  %9245 = extractvalue %dx.types.CBufRet.f32 %9243, 3
  %9246 = fmul fast float %9244, %109
  %9247 = fmul fast float %9245, %110
  %9248 = call float @dx.op.unary.f32(i32 7, float %9246)  ; Saturate(value)
  %9249 = call float @dx.op.unary.f32(i32 7, float %9247)  ; Saturate(value)
  %9250 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9248, float %9249, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9251 = extractvalue %dx.types.ResRet.f32 %9250, 0
  %9252 = extractvalue %dx.types.ResRet.f32 %9250, 1
  %9253 = extractvalue %dx.types.ResRet.f32 %9250, 2
  %9254 = extractvalue %dx.types.ResRet.f32 %9250, 3
  %9255 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9248, float %9249, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9256 = extractvalue %dx.types.ResRet.f32 %9255, 0
  %9257 = extractvalue %dx.types.ResRet.f32 %9255, 1
  %9258 = extractvalue %dx.types.ResRet.f32 %9255, 2
  %9259 = extractvalue %dx.types.ResRet.f32 %9255, 3
  %9260 = call float @dx.op.binary.f32(i32 35, float %9252, float %9253)  ; FMax(a,b)
  %9261 = call float @dx.op.binary.f32(i32 35, float %9251, float %9260)  ; FMax(a,b)
  %9262 = call float @dx.op.binary.f32(i32 35, float %9261, float %9254)  ; FMax(a,b)
  %9263 = call float @dx.op.binary.f32(i32 36, float %9257, float %9258)  ; FMin(a,b)
  %9264 = call float @dx.op.binary.f32(i32 36, float %9256, float %9263)  ; FMin(a,b)
  %9265 = call float @dx.op.binary.f32(i32 36, float %9264, float %9259)  ; FMin(a,b)
  %9266 = fmul fast float %9262, 2.550000e+02
  %9267 = fadd fast float %9266, 0x3F70101020000000
  %9268 = fptoui float %9267 to i32
  %9269 = fmul fast float %9265, 2.550000e+02
  %9270 = fadd fast float %9269, 0x3F70101020000000
  %9271 = fptoui float %9270 to i32
  %9272 = icmp ult i32 %9268, %9271
  br i1 %9272, label %9273, label %9441

; <label>:9273                                    ; preds = %9242
  %9274 = fcmp fast ogt float %96, 9.843750e-01
  %9275 = fadd fast float %97, -4.000000e+00
  %9276 = select i1 %9274, float -4.000000e+00, float %9275
  %9277 = call float @dx.op.binary.f32(i32 35, float %9276, float 0.000000e+00)  ; FMax(a,b)
  %9278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9279 = extractvalue %dx.types.CBufRet.f32 %9278, 0
  %9280 = fadd fast float %9279, %9277
  %9281 = extractvalue %dx.types.CBufRet.f32 %9278, 2
  %9282 = fmul fast float %9280, %9281
  %9283 = call float @dx.op.unary.f32(i32 23, float %9282)  ; Log(value)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9278, 3
  %9285 = fmul fast float %9284, %9283
  %9286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9287 = extractvalue %dx.types.CBufRet.f32 %9286, 2
  %9288 = fmul fast float %9285, %9287
  %9289 = call float @dx.op.unary.f32(i32 7, float %9288)  ; Saturate(value)
  %9290 = uitofp i32 %9268 to float
  %9291 = uitofp i32 %9271 to float
  %9292 = fadd fast float %9290, 5.000000e-01
  %9293 = fadd fast float %9291, 5.000000e-01
  %9294 = fmul fast float %9287, %9292
  %9295 = fmul fast float %9287, %9293
  %9296 = fadd fast float %9294, 0x3F0FFB4800000000
  %9297 = fadd fast float %9295, 0xBF0FFB4800000000
  %9298 = call float @dx.op.binary.f32(i32 35, float %9289, float %9296)  ; FMax(a,b)
  %9299 = call float @dx.op.binary.f32(i32 36, float %9298, float %9297)  ; FMin(a,b)
  %9300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9301 = extractvalue %dx.types.CBufRet.f32 %9300, 1
  %9302 = extractvalue %dx.types.CBufRet.f32 %9300, 2
  %9303 = extractvalue %dx.types.CBufRet.f32 %9300, 0
  %9304 = fmul fast float %9301, %9299
  %9305 = fadd fast float %9303, %9304
  %9306 = fadd fast float %9303, %9302
  %9307 = fsub fast float %9301, %9302
  %9308 = fadd fast float %9307, %9303
  %9309 = call float @dx.op.binary.f32(i32 35, float %9305, float %9306)  ; FMax(a,b)
  %9310 = call float @dx.op.binary.f32(i32 36, float %9309, float %9308)  ; FMin(a,b)
  %9311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9248, float %9249, float %9310, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9312 = extractvalue %dx.types.ResRet.f32 %9311, 0
  %9313 = extractvalue %dx.types.ResRet.f32 %9311, 1
  %9314 = extractvalue %dx.types.ResRet.f32 %9311, 2
  %9315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9316 = extractvalue %dx.types.CBufRet.i32 %9315, 0
  %9317 = extractvalue %dx.types.CBufRet.i32 %9315, 1
  %9318 = uitofp i32 %9316 to float
  %9319 = uitofp i32 %9317 to float
  %9320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9321 = extractvalue %dx.types.CBufRet.f32 %9320, 0
  %9322 = extractvalue %dx.types.CBufRet.f32 %9320, 1
  %9323 = fmul fast float %9318, %9248
  %9324 = fmul fast float %9319, %9249
  %9325 = fadd fast float %9323, -5.000000e-01
  %9326 = fadd fast float %9324, -5.000000e-01
  %9327 = call float @dx.op.unary.f32(i32 22, float %9325)  ; Frc(value)
  %9328 = call float @dx.op.unary.f32(i32 22, float %9326)  ; Frc(value)
  %9329 = fmul fast float %9327, %9327
  %9330 = fmul fast float %9329, %9327
  %9331 = fsub fast float 3.000000e+00, %9327
  %9332 = fmul fast float %9329, %9331
  %9333 = fmul fast float %9327, 3.000000e+00
  %9334 = fmul fast float %9330, 3.000000e+00
  %9335 = fmul fast float %9329, 6.000000e+00
  %9336 = fsub fast float %9334, %9335
  %9337 = fadd fast float %9336, 4.000000e+00
  %9338 = fmul fast float %9337, 0x3FC5555560000000
  %9339 = fmul fast float %9330, -3.000000e+00
  %9340 = fadd fast float %9329, %9327
  %9341 = fmul fast float %9340, 3.000000e+00
  %9342 = fadd fast float %9339, 1.000000e+00
  %9343 = fadd fast float %9342, %9341
  %9344 = fmul fast float %9330, 0x3FC5555560000000
  %9345 = fmul fast float %9328, %9328
  %9346 = fmul fast float %9345, %9328
  %9347 = fsub fast float 3.000000e+00, %9328
  %9348 = fmul fast float %9345, %9347
  %9349 = fmul fast float %9328, 3.000000e+00
  %9350 = fmul fast float %9346, 3.000000e+00
  %9351 = fmul fast float %9345, 6.000000e+00
  %9352 = fsub fast float %9350, %9351
  %9353 = fadd fast float %9352, 4.000000e+00
  %9354 = fmul fast float %9353, 0x3FC5555560000000
  %9355 = fmul fast float %9346, -3.000000e+00
  %9356 = fadd fast float %9345, %9328
  %9357 = fmul fast float %9356, 3.000000e+00
  %9358 = fadd fast float %9355, 1.000000e+00
  %9359 = fadd fast float %9358, %9357
  %9360 = fmul fast float %9346, 0x3FC5555560000000
  %9361 = fadd fast float %9327, 1.000000e+00
  %9362 = fsub fast float 1.000000e+00, %9333
  %9363 = fadd fast float %9362, %9332
  %9364 = fadd fast float %9363, %9337
  %9365 = fmul fast float %9364, 0x3FC5555560000000
  %9366 = fdiv fast float %9338, %9365
  %9367 = fsub fast float %9361, %9366
  %9368 = fsub fast float 1.000000e+00, %9327
  %9369 = fadd fast float %9343, %9330
  %9370 = fmul fast float %9369, 0x3FC5555560000000
  %9371 = fdiv fast float %9344, %9370
  %9372 = fadd fast float %9368, %9371
  %9373 = fadd fast float %9328, 1.000000e+00
  %9374 = fsub fast float 1.000000e+00, %9349
  %9375 = fadd fast float %9374, %9348
  %9376 = fadd fast float %9375, %9353
  %9377 = fmul fast float %9376, 0x3FC5555560000000
  %9378 = fdiv fast float %9354, %9377
  %9379 = fsub fast float %9373, %9378
  %9380 = fsub fast float 1.000000e+00, %9328
  %9381 = fadd fast float %9359, %9346
  %9382 = fmul fast float %9381, 0x3FC5555560000000
  %9383 = fdiv fast float %9360, %9382
  %9384 = fadd fast float %9383, %9380
  %9385 = fmul fast float %9367, %9321
  %9386 = fsub fast float %9248, %9385
  %9387 = fmul fast float %9372, %9321
  %9388 = fadd fast float %9387, %9248
  %9389 = fmul fast float %9384, %9322
  %9390 = fadd fast float %9389, %9249
  %9391 = fmul fast float %9379, %9322
  %9392 = fsub fast float %9249, %9391
  %9393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9386, float %9392, float %9310, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9394 = extractvalue %dx.types.ResRet.f32 %9393, 0
  %9395 = extractvalue %dx.types.ResRet.f32 %9393, 1
  %9396 = extractvalue %dx.types.ResRet.f32 %9393, 2
  %9397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9388, float %9392, float %9310, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9398 = extractvalue %dx.types.ResRet.f32 %9397, 0
  %9399 = extractvalue %dx.types.ResRet.f32 %9397, 1
  %9400 = extractvalue %dx.types.ResRet.f32 %9397, 2
  %9401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9386, float %9390, float %9310, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9402 = extractvalue %dx.types.ResRet.f32 %9401, 0
  %9403 = extractvalue %dx.types.ResRet.f32 %9401, 1
  %9404 = extractvalue %dx.types.ResRet.f32 %9401, 2
  %9405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9388, float %9390, float %9310, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9406 = extractvalue %dx.types.ResRet.f32 %9405, 0
  %9407 = extractvalue %dx.types.ResRet.f32 %9405, 1
  %9408 = extractvalue %dx.types.ResRet.f32 %9405, 2
  %9409 = fsub fast float %9402, %9394
  %9410 = fsub fast float %9403, %9395
  %9411 = fsub fast float %9404, %9396
  %9412 = fmul fast float %9409, %9382
  %9413 = fmul fast float %9410, %9382
  %9414 = fmul fast float %9411, %9382
  %9415 = fadd fast float %9412, %9394
  %9416 = fadd fast float %9413, %9395
  %9417 = fadd fast float %9414, %9396
  %9418 = fsub fast float %9406, %9398
  %9419 = fsub fast float %9407, %9399
  %9420 = fsub fast float %9408, %9400
  %9421 = fmul fast float %9418, %9382
  %9422 = fmul fast float %9419, %9382
  %9423 = fmul fast float %9420, %9382
  %9424 = fsub fast float %9398, %9415
  %9425 = fadd fast float %9424, %9421
  %9426 = fsub fast float %9399, %9416
  %9427 = fadd fast float %9426, %9422
  %9428 = fsub fast float %9400, %9417
  %9429 = fadd fast float %9428, %9423
  %9430 = fmul fast float %9425, %9370
  %9431 = fmul fast float %9427, %9370
  %9432 = fmul fast float %9429, %9370
  %9433 = fadd fast float %9430, %9415
  %9434 = fadd fast float %9431, %9416
  %9435 = fadd fast float %9432, %9417
  %9436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9437 = extractvalue %dx.types.CBufRet.f32 %9436, 1
  %9438 = fmul fast float %9433, %9437
  %9439 = fmul fast float %9434, %9437
  %9440 = fmul fast float %9435, %9437
  br label %9441

; <label>:9441                                    ; preds = %9273, %9242
  %9442 = phi float [ %9312, %9273 ], [ 1.000000e+00, %9242 ]
  %9443 = phi float [ %9313, %9273 ], [ 1.000000e+00, %9242 ]
  %9444 = phi float [ %9314, %9273 ], [ 1.000000e+00, %9242 ]
  %9445 = phi float [ %9438, %9273 ], [ 0.000000e+00, %9242 ]
  %9446 = phi float [ %9439, %9273 ], [ 0.000000e+00, %9242 ]
  %9447 = phi float [ %9440, %9273 ], [ 0.000000e+00, %9242 ]
  %9448 = fmul fast float %9445, %9227
  %9449 = fmul fast float %9446, %9228
  %9450 = fmul fast float %9447, %9229
  %9451 = call float @dx.op.dot3.f32(i32 55, float %9442, float %9443, float %9444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9452 = call float @dx.op.dot3.f32(i32 55, float %9448, float %9449, float %9450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9453 = select i1 %258, float %9451, float %9442
  %9454 = select i1 %258, float %9451, float %9443
  %9455 = select i1 %258, float 1.000000e+00, float %9444
  %9456 = select i1 %258, float %9452, float %9448
  %9457 = select i1 %258, float 0.000000e+00, float %9449
  %9458 = select i1 %258, float 0.000000e+00, float %9450
  %9459 = fmul fast float %9453, %9232
  %9460 = fmul fast float %9454, %9233
  %9461 = fmul fast float %9455, %9234
  %9462 = fadd fast float %9459, %9456
  %9463 = fadd fast float %9460, %9457
  %9464 = fadd fast float %9458, %9461
  %9465 = fmul fast float %9453, %9196
  %9466 = fmul fast float %9454, %9197
  %9467 = fmul fast float %9455, %9198
  %9468 = fmul fast float %134, %9244
  %9469 = fmul fast float %136, %9245
  %9470 = fsub fast float 1.000000e+00, %9468
  %9471 = fsub fast float 1.000000e+00, %9469
  %9472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9473 = extractvalue %dx.types.CBufRet.f32 %9472, 0
  %9474 = extractvalue %dx.types.CBufRet.f32 %9472, 1
  %9475 = extractvalue %dx.types.CBufRet.f32 %9472, 2
  %9476 = fmul fast float %9470, %9473
  %9477 = fmul fast float %9470, %9474
  %9478 = fmul fast float %9470, %9475
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 0
  %9481 = extractvalue %dx.types.CBufRet.f32 %9479, 1
  %9482 = extractvalue %dx.types.CBufRet.f32 %9479, 2
  %9483 = fmul fast float %9471, %9480
  %9484 = fmul fast float %9471, %9481
  %9485 = fmul fast float %9471, %9482
  %9486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9487 = extractvalue %dx.types.CBufRet.f32 %9486, 0
  %9488 = extractvalue %dx.types.CBufRet.f32 %9486, 1
  %9489 = extractvalue %dx.types.CBufRet.f32 %9486, 2
  %9490 = fadd fast float %9483, %9487
  %9491 = fadd fast float %9490, %9476
  %9492 = fadd fast float %9484, %9488
  %9493 = fadd fast float %9492, %9477
  %9494 = fadd fast float %9485, %9489
  %9495 = fadd fast float %9494, %9478
  %9496 = fmul fast float %9491, %218
  %9497 = fmul fast float %9493, %218
  %9498 = fmul fast float %9495, %218
  br label %9499

; <label>:9499                                    ; preds = %9441, %9195
  %9500 = phi float [ %9496, %9441 ], [ %164, %9195 ]
  %9501 = phi float [ %9497, %9441 ], [ %165, %9195 ]
  %9502 = phi float [ %9498, %9441 ], [ %166, %9195 ]
  %9503 = phi float [ %218, %9441 ], [ %97, %9195 ]
  %9504 = phi float [ %9462, %9441 ], [ %9232, %9195 ]
  %9505 = phi float [ %9463, %9441 ], [ %9233, %9195 ]
  %9506 = phi float [ %9464, %9441 ], [ %9234, %9195 ]
  %9507 = phi float [ %9465, %9441 ], [ %9196, %9195 ]
  %9508 = phi float [ %9466, %9441 ], [ %9197, %9195 ]
  %9509 = phi float [ %9467, %9441 ], [ %9198, %9195 ]
  %9510 = phi float [ %9442, %9441 ], [ 1.000000e+00, %9195 ]
  br i1 %9241, label %10665, label %9511

; <label>:9511                                    ; preds = %9499
  %9512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9513 = extractvalue %dx.types.CBufRet.f32 %9512, 0
  %9514 = extractvalue %dx.types.CBufRet.f32 %9512, 1
  %9515 = extractvalue %dx.types.CBufRet.f32 %9512, 2
  %9516 = extractvalue %dx.types.CBufRet.f32 %9512, 3
  %9517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9518 = extractvalue %dx.types.CBufRet.f32 %9517, 0
  %9519 = extractvalue %dx.types.CBufRet.f32 %9517, 1
  %9520 = extractvalue %dx.types.CBufRet.f32 %9517, 2
  %9521 = extractvalue %dx.types.CBufRet.f32 %9517, 3
  %9522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9523 = extractvalue %dx.types.CBufRet.f32 %9522, 0
  %9524 = extractvalue %dx.types.CBufRet.f32 %9522, 1
  %9525 = extractvalue %dx.types.CBufRet.f32 %9522, 2
  %9526 = extractvalue %dx.types.CBufRet.f32 %9522, 3
  %9527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9528 = extractvalue %dx.types.CBufRet.f32 %9527, 0
  %9529 = extractvalue %dx.types.CBufRet.f32 %9527, 1
  %9530 = extractvalue %dx.types.CBufRet.f32 %9527, 2
  %9531 = extractvalue %dx.types.CBufRet.f32 %9527, 3
  %9532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9533 = extractvalue %dx.types.CBufRet.f32 %9532, 3
  %9534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9535 = extractvalue %dx.types.CBufRet.f32 %9534, 3
  %9536 = extractvalue %dx.types.CBufRet.f32 %9534, 0
  %9537 = extractvalue %dx.types.CBufRet.f32 %9534, 1
  %9538 = extractvalue %dx.types.CBufRet.f32 %9534, 2
  %9539 = fcmp fast olt float %9538, -5.000000e-01
  %9540 = call float @dx.op.dot3.f32(i32 55, float %9500, float %9501, float %9502, float %9500, float %9501, float %9502)  ; Dot3(ax,ay,az,bx,by,bz)
  %9541 = call float @dx.op.unary.f32(i32 25, float %9540)  ; Rsqrt(value)
  %9542 = fmul fast float %9541, %9540
  %9543 = fmul fast float %9541, %9500
  %9544 = fmul fast float %9541, %9501
  %9545 = fmul fast float %9541, %9502
  %9546 = fadd fast float %9542, %9516
  %9547 = call float @dx.op.dot3.f32(i32 55, float %9543, float %9544, float %9545, float %9513, float %9514, float %9515)  ; Dot3(ax,ay,az,bx,by,bz)
  %9548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.i32 %9548, 1
  %9550 = and i32 %9549, 1
  %9551 = icmp ne i32 %9550, 0
  %9552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9553 = extractvalue %dx.types.CBufRet.f32 %9552, 2
  %9554 = fcmp fast ogt float %9553, 0.000000e+00
  %9555 = and i1 %9551, %9554
  br i1 %9555, label %9556, label %9962, !dx.controlflow.hints !135

; <label>:9556                                    ; preds = %9511
  %9557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9558 = extractvalue %dx.types.CBufRet.f32 %9557, 3
  %9559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9560 = extractvalue %dx.types.CBufRet.f32 %9559, 2
  %9561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9561, 2
  %9563 = fsub fast float %9560, %9562
  %9564 = and i32 %9549, 2
  %9565 = extractvalue %dx.types.CBufRet.i32 %9548, 0
  %9566 = call i32 @dx.op.binary.i32(i32 40, i32 %9565, i32 3)  ; UMin(a,b)
  %9567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9568 = extractvalue %dx.types.CBufRet.f32 %9567, 0
  %9569 = extractvalue %dx.types.CBufRet.f32 %9567, 1
  %9570 = extractvalue %dx.types.CBufRet.f32 %9561, 0
  %9571 = extractvalue %dx.types.CBufRet.f32 %9561, 1
  %9572 = fsub fast float %9568, %9570
  %9573 = fsub fast float %9569, %9571
  %9574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9575 = extractvalue %dx.types.CBufRet.f32 %9574, 0
  %9576 = fcmp fast ogt float %9575, 0.000000e+00
  %9577 = fsub fast float -0.000000e+00, %9572
  %9578 = fsub fast float -0.000000e+00, %9573
  %9579 = call float @dx.op.dot2.f32(i32 54, float %9543, float %9544, float %9543, float %9544)  ; Dot2(ax,ay,bx,by)
  %9580 = call float @dx.op.dot2.f32(i32 54, float %9543, float %9544, float %9577, float %9578)  ; Dot2(ax,ay,bx,by)
  %9581 = fmul fast float %9580, 2.000000e+00
  %9582 = call float @dx.op.dot2.f32(i32 54, float %9577, float %9578, float %9577, float %9578)  ; Dot2(ax,ay,bx,by)
  %9583 = fmul fast float %9575, %9575
  %9584 = fsub fast float %9582, %9583
  %9585 = fmul fast float %9581, %9581
  %9586 = fmul fast float %9579, 4.000000e+00
  %9587 = fmul fast float %9586, %9584
  %9588 = fsub fast float %9585, %9587
  %9589 = fcmp fast ogt float %9588, 0.000000e+00
  br i1 %9589, label %9590, label %9605

; <label>:9590                                    ; preds = %9556
  %9591 = fcmp fast ogt float %9581, 0.000000e+00
  %9592 = call float @dx.op.unary.f32(i32 24, float %9588)  ; Sqrt(value)
  %9593 = fsub fast float -0.000000e+00, %9592
  %9594 = select i1 %9591, float %9592, float %9593
  %9595 = fadd fast float %9594, %9581
  %9596 = fmul float %9595, -5.000000e-01
  %9597 = fdiv fast float %9596, %9579
  %9598 = call float @dx.op.binary.f32(i32 35, float %9597, float 0.000000e+00)  ; FMax(a,b)
  %9599 = call float @dx.op.binary.f32(i32 36, float %9542, float %9598)  ; FMin(a,b)
  %9600 = fdiv fast float %9584, %9596
  %9601 = call float @dx.op.binary.f32(i32 35, float %9600, float 0.000000e+00)  ; FMax(a,b)
  %9602 = call float @dx.op.binary.f32(i32 36, float %9542, float %9601)  ; FMin(a,b)
  %9603 = call float @dx.op.binary.f32(i32 36, float %9599, float %9602)  ; FMin(a,b)
  %9604 = call float @dx.op.binary.f32(i32 35, float %9599, float %9602)  ; FMax(a,b)
  br label %9605

; <label>:9605                                    ; preds = %9590, %9556
  %9606 = phi float [ %9604, %9590 ], [ -1.000000e+00, %9556 ]
  %9607 = phi float [ %9603, %9590 ], [ -1.000000e+00, %9556 ]
  %9608 = phi i1 [ true, %9590 ], [ false, %9556 ]
  %9609 = and i1 %9576, %9608
  br i1 %9609, label %9610, label %9612

; <label>:9610                                    ; preds = %9605
  %9611 = fcmp fast oeq float %9607, %9606
  br i1 %9611, label %9915, label %9613

; <label>:9612                                    ; preds = %9605
  br i1 %9576, label %9915, label %9613

; <label>:9613                                    ; preds = %9612, %9610
  %9614 = phi float [ %9542, %9612 ], [ %9606, %9610 ]
  %9615 = phi float [ 0.000000e+00, %9612 ], [ %9607, %9610 ]
  %9616 = icmp ne i32 %9564, 0
  %9617 = fmul fast float %9614, %9545
  %9618 = fadd fast float %9617, %9558
  %9619 = fmul fast float %9618, %9614
  %9620 = select i1 %9616, float 0.000000e+00, float %9619
  %9621 = fcmp fast oeq float %9545, 0.000000e+00
  %9622 = fdiv fast float %9563, %9545
  %9623 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9622)  ; FMax(a,b)
  %9624 = select i1 %9621, float %9614, float %9623
  %9625 = call float @dx.op.binary.f32(i32 36, float %9614, float %9624)  ; FMin(a,b)
  %9626 = fcmp fast ogt float %9545, 0.000000e+00
  %9627 = fcmp fast olt float %9563, 0.000000e+00
  br i1 %9626, label %9628, label %9685

; <label>:9628                                    ; preds = %9613
  %9629 = icmp eq i32 %9564, 0
  br i1 %9627, label %9630, label %9674

; <label>:9630                                    ; preds = %9628
  %9631 = select i1 %9629, float %9614, float 0.000000e+00
  %9632 = fsub fast float -0.000000e+00, %9631
  %9633 = call float @dx.op.unary.f32(i32 6, float %9632)  ; FAbs(value)
  %9634 = fmul fast float %9631, %9545
  %9635 = fadd fast float %9634, %9558
  %9636 = fmul fast float %9633, %9635
  %9637 = fsub fast float %9620, %9636
  %9638 = fsub fast float %9614, %9633
  %9639 = select i1 %9629, float %9638, float 0.000000e+00
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 0
  %9642 = extractvalue %dx.types.CBufRet.f32 %9640, 1
  %9643 = extractvalue %dx.types.CBufRet.f32 %9640, 2
  %9644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9645 = extractvalue %dx.types.CBufRet.f32 %9644, 0
  %9646 = extractvalue %dx.types.CBufRet.f32 %9644, 1
  %9647 = extractvalue %dx.types.CBufRet.f32 %9644, 2
  %9648 = extractvalue %dx.types.CBufRet.f32 %9644, 3
  %9649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9650 = extractvalue %dx.types.CBufRet.f32 %9649, 3
  %9651 = call float @dx.op.binary.f32(i32 36, float %9637, float %9650)  ; FMin(a,b)
  %9652 = fmul fast float %9648, %9639
  %9653 = call float @dx.op.unary.f32(i32 7, float %9652)  ; Saturate(value)
  %9654 = fsub fast float %9645, %9641
  %9655 = fsub fast float %9646, %9642
  %9656 = fsub fast float %9647, %9643
  %9657 = fmul fast float %9653, %9654
  %9658 = fmul fast float %9653, %9655
  %9659 = fmul fast float %9653, %9656
  %9660 = fadd fast float %9657, %9641
  %9661 = fadd fast float %9658, %9642
  %9662 = fadd fast float %9659, %9643
  %9663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9664 = extractvalue %dx.types.CBufRet.f32 %9663, 0
  %9665 = extractvalue %dx.types.CBufRet.f32 %9663, 1
  %9666 = fadd fast float %9665, %9664
  %9667 = call float @dx.op.unary.f32(i32 7, float %9666)  ; Saturate(value)
  %9668 = extractvalue %dx.types.CBufRet.f32 %9663, 2
  %9669 = extractvalue %dx.types.CBufRet.f32 %9663, 3
  %9670 = fadd fast float %9669, %9668
  %9671 = call float @dx.op.unary.f32(i32 7, float %9670)  ; Saturate(value)
  %9672 = fmul fast float %9667, %9651
  %9673 = fmul fast float %9672, %9671
  br label %9915

; <label>:9674                                    ; preds = %9628
  br i1 %9629, label %9675, label %9696

; <label>:9675                                    ; preds = %9674
  %9676 = call float @dx.op.binary.f32(i32 36, float %9625, float %9615)  ; FMin(a,b)
  %9677 = fsub fast float %9625, %9676
  %9678 = fsub fast float %9677, %9614
  %9679 = call float @dx.op.unary.f32(i32 6, float %9678)  ; FAbs(value)
  %9680 = fadd fast float %9677, %9614
  %9681 = fmul fast float %9680, %9545
  %9682 = fadd fast float %9681, %9558
  %9683 = fmul fast float %9682, %9679
  %9684 = fsub fast float %9620, %9683
  br label %9696

; <label>:9685                                    ; preds = %9613
  br i1 %9627, label %9686, label %9696

; <label>:9686                                    ; preds = %9685
  %9687 = call float @dx.op.binary.f32(i32 35, float %9615, float %9625)  ; FMax(a,b)
  %9688 = icmp eq i32 %9564, 0
  %9689 = select i1 %9688, float %9625, float 0.000000e+00
  %9690 = fsub fast float -0.000000e+00, %9689
  %9691 = call float @dx.op.unary.f32(i32 6, float %9690)  ; FAbs(value)
  %9692 = fmul fast float %9689, %9545
  %9693 = fadd fast float %9692, %9558
  %9694 = fmul fast float %9691, %9693
  %9695 = fsub fast float %9620, %9694
  br label %9696

; <label>:9696                                    ; preds = %9686, %9685, %9675, %9674
  %9697 = phi float [ %9615, %9674 ], [ %9615, %9675 ], [ %9687, %9686 ], [ %9615, %9685 ]
  %9698 = phi float [ 0.000000e+00, %9674 ], [ %9679, %9675 ], [ %9691, %9686 ], [ 0.000000e+00, %9685 ]
  %9699 = phi float [ %9620, %9674 ], [ %9684, %9675 ], [ %9695, %9686 ], [ %9620, %9685 ]
  %9700 = phi float [ %9625, %9674 ], [ %9625, %9675 ], [ %9614, %9686 ], [ %9614, %9685 ]
  %9701 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9701, align 4, !tbaa !122, !noalias !136
  %9702 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9702, align 4, !tbaa !122, !noalias !136
  %9703 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9703, align 4, !tbaa !122, !noalias !136
  %9704 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9704, align 4, !tbaa !122, !noalias !136
  %9705 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9705, align 4, !tbaa !122, !noalias !136
  %9706 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9706, align 4, !tbaa !122, !noalias !136
  %9707 = icmp sgt i32 %9566, 0
  br i1 %9707, label %9708, label %9769

; <label>:9708                                    ; preds = %9696
  br label %9709

; <label>:9709                                    ; preds = %9758, %9708
  %9710 = phi i32 [ %9759, %9758 ], [ 0, %9708 ]
  %9711 = phi i32 [ %9760, %9758 ], [ 0, %9708 ]
  %9712 = add nuw i32 %9711, 171
  %9713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9712)  ; CBufferLoadLegacy(handle,regIndex)
  %9714 = extractvalue %dx.types.CBufRet.f32 %9713, 0
  %9715 = extractvalue %dx.types.CBufRet.f32 %9713, 1
  %9716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.f32 %9716, 0
  %9718 = extractvalue %dx.types.CBufRet.f32 %9716, 1
  %9719 = fsub fast float %9714, %9717
  %9720 = fsub fast float %9715, %9718
  %9721 = extractvalue %dx.types.CBufRet.f32 %9713, 2
  %9722 = fsub fast float -0.000000e+00, %9719
  %9723 = fsub fast float -0.000000e+00, %9720
  %9724 = call float @dx.op.dot2.f32(i32 54, float %9543, float %9544, float %9722, float %9723)  ; Dot2(ax,ay,bx,by)
  %9725 = fmul fast float %9724, 2.000000e+00
  %9726 = call float @dx.op.dot2.f32(i32 54, float %9722, float %9723, float %9722, float %9723)  ; Dot2(ax,ay,bx,by)
  %9727 = fmul fast float %9721, %9721
  %9728 = fsub fast float %9726, %9727
  %9729 = fmul fast float %9725, %9725
  %9730 = fmul fast float %9586, %9728
  %9731 = fsub fast float %9729, %9730
  %9732 = fcmp fast ogt float %9731, 0.000000e+00
  br i1 %9732, label %9733, label %9748

; <label>:9733                                    ; preds = %9709
  %9734 = fcmp fast ogt float %9725, 0.000000e+00
  %9735 = call float @dx.op.unary.f32(i32 24, float %9731)  ; Sqrt(value)
  %9736 = fsub fast float -0.000000e+00, %9735
  %9737 = select i1 %9734, float %9735, float %9736
  %9738 = fadd fast float %9737, %9725
  %9739 = fmul float %9738, -5.000000e-01
  %9740 = fdiv fast float %9739, %9579
  %9741 = call float @dx.op.binary.f32(i32 35, float %9740, float 0.000000e+00)  ; FMax(a,b)
  %9742 = call float @dx.op.binary.f32(i32 36, float %9614, float %9741)  ; FMin(a,b)
  %9743 = fdiv fast float %9728, %9739
  %9744 = call float @dx.op.binary.f32(i32 35, float %9743, float 0.000000e+00)  ; FMax(a,b)
  %9745 = call float @dx.op.binary.f32(i32 36, float %9614, float %9744)  ; FMin(a,b)
  %9746 = call float @dx.op.binary.f32(i32 36, float %9742, float %9745)  ; FMin(a,b)
  %9747 = call float @dx.op.binary.f32(i32 35, float %9742, float %9745)  ; FMax(a,b)
  br label %9748

; <label>:9748                                    ; preds = %9733, %9709
  %9749 = phi float [ %9747, %9733 ], [ -1.000000e+00, %9709 ]
  %9750 = phi float [ %9746, %9733 ], [ -1.000000e+00, %9709 ]
  %9751 = phi i1 [ true, %9733 ], [ false, %9709 ]
  br i1 %9751, label %9752, label %9758

; <label>:9752                                    ; preds = %9748
  %9753 = call float @dx.op.binary.f32(i32 35, float %9697, float %9750)  ; FMax(a,b)
  %9754 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9711
  store float %9753, float* %9754, align 4, !tbaa !122, !noalias !136
  %9755 = call float @dx.op.binary.f32(i32 35, float %9697, float %9749)  ; FMax(a,b)
  %9756 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9711
  store float %9755, float* %9756, align 4, !tbaa !122, !noalias !136
  %9757 = add nsw i32 %9710, 1
  br label %9758

; <label>:9758                                    ; preds = %9752, %9748
  %9759 = phi i32 [ %9757, %9752 ], [ %9710, %9748 ]
  %9760 = add nuw nsw i32 %9711, 1
  %9761 = icmp eq i32 %9760, %9566
  br i1 %9761, label %9762, label %9709

; <label>:9762                                    ; preds = %9758
  %9763 = load float, float* %9703, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9764 = load float, float* %9702, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9765 = load float, float* %9701, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9766 = load float, float* %9706, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9767 = load float, float* %9705, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9768 = load float, float* %9704, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9769

; <label>:9769                                    ; preds = %9762, %9696
  %9770 = phi float [ -1.000000e+00, %9696 ], [ %9768, %9762 ]
  %9771 = phi float [ -1.000000e+00, %9696 ], [ %9767, %9762 ]
  %9772 = phi float [ -1.000000e+00, %9696 ], [ %9766, %9762 ]
  %9773 = phi float [ -1.000000e+00, %9696 ], [ %9765, %9762 ]
  %9774 = phi float [ -1.000000e+00, %9696 ], [ %9764, %9762 ]
  %9775 = phi float [ -1.000000e+00, %9696 ], [ %9763, %9762 ]
  %9776 = phi i32 [ 0, %9696 ], [ %9759, %9762 ]
  %9777 = call float @dx.op.binary.f32(i32 36, float %9774, float %9775)  ; FMin(a,b)
  %9778 = call float @dx.op.binary.f32(i32 36, float %9773, float %9777)  ; FMin(a,b)
  %9779 = call float @dx.op.binary.f32(i32 35, float %9773, float %9774)  ; FMax(a,b)
  %9780 = call float @dx.op.binary.f32(i32 36, float %9779, float %9775)  ; FMin(a,b)
  %9781 = call float @dx.op.binary.f32(i32 36, float %9773, float %9774)  ; FMin(a,b)
  %9782 = call float @dx.op.binary.f32(i32 35, float %9781, float %9780)  ; FMax(a,b)
  %9783 = call float @dx.op.binary.f32(i32 35, float %9774, float %9775)  ; FMax(a,b)
  %9784 = call float @dx.op.binary.f32(i32 35, float %9773, float %9783)  ; FMax(a,b)
  store float %9778, float* %9701, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9782, float* %9702, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9784, float* %9703, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9785 = call float @dx.op.binary.f32(i32 36, float %9771, float %9772)  ; FMin(a,b)
  %9786 = call float @dx.op.binary.f32(i32 36, float %9770, float %9785)  ; FMin(a,b)
  %9787 = call float @dx.op.binary.f32(i32 35, float %9770, float %9771)  ; FMax(a,b)
  %9788 = call float @dx.op.binary.f32(i32 36, float %9787, float %9772)  ; FMin(a,b)
  %9789 = call float @dx.op.binary.f32(i32 36, float %9770, float %9771)  ; FMin(a,b)
  %9790 = call float @dx.op.binary.f32(i32 35, float %9789, float %9788)  ; FMax(a,b)
  %9791 = call float @dx.op.binary.f32(i32 35, float %9771, float %9772)  ; FMax(a,b)
  %9792 = call float @dx.op.binary.f32(i32 35, float %9770, float %9791)  ; FMax(a,b)
  store float %9786, float* %9704, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9790, float* %9705, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9792, float* %9706, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9793 = sub nsw i32 3, %9776
  %9794 = icmp sgt i32 %9793, 2
  br i1 %9794, label %9795, label %9833

; <label>:9795                                    ; preds = %9769
  %9796 = icmp eq i32 %9564, 0
  %9797 = fsub fast float %9614, %9698
  %9798 = select i1 %9796, float %9797, float %9698
  %9799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9800 = extractvalue %dx.types.CBufRet.f32 %9799, 0
  %9801 = extractvalue %dx.types.CBufRet.f32 %9799, 1
  %9802 = extractvalue %dx.types.CBufRet.f32 %9799, 2
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 0
  %9805 = extractvalue %dx.types.CBufRet.f32 %9803, 1
  %9806 = extractvalue %dx.types.CBufRet.f32 %9803, 2
  %9807 = extractvalue %dx.types.CBufRet.f32 %9803, 3
  %9808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9809 = extractvalue %dx.types.CBufRet.f32 %9808, 3
  %9810 = call float @dx.op.binary.f32(i32 36, float %9699, float %9809)  ; FMin(a,b)
  %9811 = fmul fast float %9807, %9798
  %9812 = call float @dx.op.unary.f32(i32 7, float %9811)  ; Saturate(value)
  %9813 = fsub fast float %9804, %9800
  %9814 = fsub fast float %9805, %9801
  %9815 = fsub fast float %9806, %9802
  %9816 = fmul fast float %9812, %9813
  %9817 = fmul fast float %9812, %9814
  %9818 = fmul fast float %9812, %9815
  %9819 = fadd fast float %9816, %9800
  %9820 = fadd fast float %9817, %9801
  %9821 = fadd fast float %9818, %9802
  %9822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9823 = extractvalue %dx.types.CBufRet.f32 %9822, 0
  %9824 = extractvalue %dx.types.CBufRet.f32 %9822, 1
  %9825 = fadd fast float %9824, %9823
  %9826 = call float @dx.op.unary.f32(i32 7, float %9825)  ; Saturate(value)
  %9827 = extractvalue %dx.types.CBufRet.f32 %9822, 2
  %9828 = extractvalue %dx.types.CBufRet.f32 %9822, 3
  %9829 = fadd fast float %9828, %9827
  %9830 = call float @dx.op.unary.f32(i32 7, float %9829)  ; Saturate(value)
  %9831 = fmul fast float %9826, %9810
  %9832 = fmul fast float %9831, %9830
  br label %9915

; <label>:9833                                    ; preds = %9769
  %9834 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9793
  %9835 = load float, float* %9834, align 4, !tbaa !122, !noalias !136
  %9836 = fcmp fast olt float %9835, %9700
  %9837 = icmp sgt i32 %9776, 0
  %9838 = and i1 %9837, %9836
  br i1 %9838, label %9839, label %9876

; <label>:9839                                    ; preds = %9833
  br label %9840

; <label>:9840                                    ; preds = %9869, %9839
  %9841 = phi float [ %9870, %9869 ], [ %9698, %9839 ]
  %9842 = phi float [ %9871, %9869 ], [ %9699, %9839 ]
  %9843 = phi float [ %9851, %9869 ], [ %9835, %9839 ]
  %9844 = phi i32 [ %9848, %9869 ], [ %9793, %9839 ]
  %9845 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9844
  %9846 = load float, float* %9845, align 4, !tbaa !122, !noalias !136
  %9847 = icmp slt i32 %9844, 2
  %9848 = add nsw i32 %9844, 1
  %9849 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9848
  %9850 = load float, float* %9849, align 4, !tbaa !122, !noalias !136
  %9851 = select i1 %9847, float %9850, float %9614
  %9852 = call float @dx.op.binary.f32(i32 36, float %9851, float %9846)  ; FMin(a,b)
  %9853 = call float @dx.op.binary.f32(i32 36, float %9700, float %9852)  ; FMin(a,b)
  %9854 = icmp eq i32 %9564, 0
  %9855 = fadd fast float %9853, %9843
  %9856 = fmul fast float %9855, %9545
  %9857 = fadd fast float %9856, %9558
  br i1 %9854, label %9863, label %9858

; <label>:9858                                    ; preds = %9840
  %9859 = fsub fast float %9853, %9843
  %9860 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9859)  ; FMax(a,b)
  %9861 = fmul fast float %9860, %9857
  %9862 = fadd fast float %9861, %9842
  br label %9869

; <label>:9863                                    ; preds = %9840
  %9864 = fsub fast float %9843, %9853
  %9865 = call float @dx.op.unary.f32(i32 6, float %9864)  ; FAbs(value)
  %9866 = fadd fast float %9865, %9841
  %9867 = fmul fast float %9865, %9857
  %9868 = fsub fast float %9842, %9867
  br label %9869

; <label>:9869                                    ; preds = %9863, %9858
  %9870 = phi float [ %9860, %9858 ], [ %9866, %9863 ]
  %9871 = phi float [ %9862, %9858 ], [ %9868, %9863 ]
  %9872 = fcmp fast olt float %9851, %9700
  %9873 = icmp slt i32 %9848, 3
  %9874 = and i1 %9873, %9872
  br i1 %9874, label %9840, label %9875

; <label>:9875                                    ; preds = %9869
  br label %9876

; <label>:9876                                    ; preds = %9875, %9833
  %9877 = phi float [ %9698, %9833 ], [ %9870, %9875 ]
  %9878 = phi float [ %9699, %9833 ], [ %9871, %9875 ]
  %9879 = fsub fast float %9614, %9877
  %9880 = select i1 %9616, float %9877, float %9879
  %9881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9882 = extractvalue %dx.types.CBufRet.f32 %9881, 0
  %9883 = extractvalue %dx.types.CBufRet.f32 %9881, 1
  %9884 = extractvalue %dx.types.CBufRet.f32 %9881, 2
  %9885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9886 = extractvalue %dx.types.CBufRet.f32 %9885, 0
  %9887 = extractvalue %dx.types.CBufRet.f32 %9885, 1
  %9888 = extractvalue %dx.types.CBufRet.f32 %9885, 2
  %9889 = extractvalue %dx.types.CBufRet.f32 %9885, 3
  %9890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9891 = extractvalue %dx.types.CBufRet.f32 %9890, 3
  %9892 = call float @dx.op.binary.f32(i32 36, float %9878, float %9891)  ; FMin(a,b)
  %9893 = fmul fast float %9889, %9880
  %9894 = call float @dx.op.unary.f32(i32 7, float %9893)  ; Saturate(value)
  %9895 = fsub fast float %9886, %9882
  %9896 = fsub fast float %9887, %9883
  %9897 = fsub fast float %9888, %9884
  %9898 = fmul fast float %9894, %9895
  %9899 = fmul fast float %9894, %9896
  %9900 = fmul fast float %9894, %9897
  %9901 = fadd fast float %9898, %9882
  %9902 = fadd fast float %9899, %9883
  %9903 = fadd fast float %9900, %9884
  %9904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9905 = extractvalue %dx.types.CBufRet.f32 %9904, 0
  %9906 = extractvalue %dx.types.CBufRet.f32 %9904, 1
  %9907 = fadd fast float %9906, %9905
  %9908 = call float @dx.op.unary.f32(i32 7, float %9907)  ; Saturate(value)
  %9909 = extractvalue %dx.types.CBufRet.f32 %9904, 2
  %9910 = extractvalue %dx.types.CBufRet.f32 %9904, 3
  %9911 = fadd fast float %9910, %9909
  %9912 = call float @dx.op.unary.f32(i32 7, float %9911)  ; Saturate(value)
  %9913 = fmul fast float %9908, %9892
  %9914 = fmul fast float %9913, %9912
  br label %9915

; <label>:9915                                    ; preds = %9876, %9795, %9630, %9612, %9610
  %9916 = phi float [ %9639, %9630 ], [ %9798, %9795 ], [ %9880, %9876 ], [ 0.000000e+00, %9610 ], [ 0.000000e+00, %9612 ]
  %9917 = phi float [ %9673, %9630 ], [ %9832, %9795 ], [ %9914, %9876 ], [ 0.000000e+00, %9610 ], [ 0.000000e+00, %9612 ]
  %9918 = phi float [ %9660, %9630 ], [ %9819, %9795 ], [ %9901, %9876 ], [ 0.000000e+00, %9610 ], [ 0.000000e+00, %9612 ]
  %9919 = phi float [ %9661, %9630 ], [ %9820, %9795 ], [ %9902, %9876 ], [ 0.000000e+00, %9610 ], [ 0.000000e+00, %9612 ]
  %9920 = phi float [ %9662, %9630 ], [ %9821, %9795 ], [ %9903, %9876 ], [ 0.000000e+00, %9610 ], [ 0.000000e+00, %9612 ]
  %9921 = fmul fast float %9553, %9917
  %9922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9923 = extractvalue %dx.types.CBufRet.f32 %9922, 2
  %9924 = fsub fast float %9560, %9923
  %9925 = fcmp fast olt float %9921, -2.000000e+01
  %9926 = call float @dx.op.unary.f32(i32 21, float %9921)  ; Exp(value)
  %9927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9928 = extractvalue %dx.types.CBufRet.f32 %9927, 2
  %9929 = extractvalue %dx.types.CBufRet.f32 %9927, 3
  %9930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9931 = extractvalue %dx.types.CBufRet.f32 %9930, 2
  %9932 = fmul fast float %9929, %9924
  %9933 = call float @dx.op.unary.f32(i32 7, float %9932)  ; Saturate(value)
  %9934 = fsub fast float 1.000000e+00, %9933
  %9935 = fmul fast float %9545, 5.000000e-01
  %9936 = fadd fast float %9935, 5.000000e-01
  %9937 = call float @dx.op.unary.f32(i32 7, float %9936)  ; Saturate(value)
  %9938 = fsub fast float 1.000000e+00, %9937
  %9939 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9934)  ; FMax(a,b)
  %9940 = fdiv fast float %9938, %9939
  %9941 = fsub fast float %9924, %9502
  %9942 = call float @dx.op.unary.f32(i32 6, float %9941)  ; FAbs(value)
  %9943 = fmul fast float %9942, %9928
  %9944 = call float @dx.op.unary.f32(i32 7, float %9940)  ; Saturate(value)
  %9945 = fsub fast float 1.000000e+00, %9943
  %9946 = fmul fast float %9945, %9944
  %9947 = fadd fast float %9946, %9943
  %9948 = fmul fast float %9931, %9924
  %9949 = call float @dx.op.unary.f32(i32 7, float %9948)  ; Saturate(value)
  %9950 = fsub fast float 1.000000e+00, %9947
  %9951 = fmul fast float %9950, %9949
  %9952 = fadd fast float %9951, %9947
  %9953 = call float @dx.op.unary.f32(i32 7, float %9952)  ; Saturate(value)
  %9954 = fadd fast float %9926, -1.000000e+00
  %9955 = select i1 %9925, float -1.000000e+00, float %9954
  %9956 = fmul fast float %9953, %9955
  %9957 = fadd fast float %9956, 1.000000e+00
  %9958 = fsub fast float -0.000000e+00, %9956
  %9959 = fmul fast float %9918, %9958
  %9960 = fmul fast float %9919, %9958
  %9961 = fmul fast float %9920, %9958
  br label %9962

; <label>:9962                                    ; preds = %9915, %9511
  %9963 = phi float [ %9916, %9915 ], [ 0.000000e+00, %9511 ]
  %9964 = phi float [ %9957, %9915 ], [ 1.000000e+00, %9511 ]
  %9965 = phi float [ %9959, %9915 ], [ 0.000000e+00, %9511 ]
  %9966 = phi float [ %9960, %9915 ], [ 0.000000e+00, %9511 ]
  %9967 = phi float [ %9961, %9915 ], [ 0.000000e+00, %9511 ]
  %9968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9969 = extractvalue %dx.types.CBufRet.f32 %9968, 1
  %9970 = fsub fast float 1.000000e+00, %9964
  %9971 = fmul fast float %9970, %9546
  %9972 = fmul fast float %9971, %9969
  %9973 = fsub fast float %9546, %9972
  br i1 %9539, label %9974, label %10003, !dx.controlflow.hints !172

; <label>:9974                                    ; preds = %9962
  %9975 = fmul fast float %9547, %9536
  %9976 = fadd fast float %9975, %9537
  %9977 = call float @dx.op.unary.f32(i32 7, float %9976)  ; Saturate(value)
  %9978 = fmul fast float %9518, %9973
  %9979 = fsub fast float -0.000000e+00, %9978
  %9980 = fmul fast float %9519, %9973
  %9981 = fsub fast float -0.000000e+00, %9980
  %9982 = call float @dx.op.unary.f32(i32 21, float %9979)  ; Exp(value)
  %9983 = call float @dx.op.unary.f32(i32 21, float %9981)  ; Exp(value)
  %9984 = call float @dx.op.binary.f32(i32 35, float %9526, float %9982)  ; FMax(a,b)
  %9985 = call float @dx.op.binary.f32(i32 35, float %9526, float %9983)  ; FMax(a,b)
  %9986 = fsub fast float %9985, %9984
  %9987 = fmul fast float %9986, %9977
  %9988 = fadd fast float %9987, %9984
  %9989 = call float @dx.op.unary.f32(i32 7, float %9988)  ; Saturate(value)
  %9990 = fsub fast float %9523, %9528
  %9991 = fsub fast float %9524, %9529
  %9992 = fsub fast float %9525, %9530
  %9993 = fmul fast float %9977, %9990
  %9994 = fmul fast float %9977, %9991
  %9995 = fmul fast float %9977, %9992
  %9996 = fadd fast float %9993, %9528
  %9997 = fadd fast float %9994, %9529
  %9998 = fadd fast float %9995, %9530
  %9999 = fsub fast float 1.000000e+00, %9989
  %10000 = fmul fast float %9999, %9996
  %10001 = fmul fast float %9999, %9997
  %10002 = fmul fast float %9999, %9998
  br label %10062

; <label>:10003                                   ; preds = %9962
  %10004 = fmul fast float %9973, %9535
  %10005 = call float @dx.op.unary.f32(i32 7, float %10004)  ; Saturate(value)
  %10006 = fsub fast float 2.000000e+00, %10005
  %10007 = fmul fast float %10005, 9.921875e-01
  %10008 = fmul fast float %10007, %10006
  %10009 = fadd fast float %10008, 3.906250e-03
  %10010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %10009, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10011 = extractvalue %dx.types.ResRet.f32 %10010, 0
  %10012 = fsub fast float %10005, %10011
  %10013 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10012)  ; FMax(a,b)
  %10014 = fmul fast float %9521, %9502
  %10015 = call float @dx.op.unary.f32(i32 6, float %10014)  ; FAbs(value)
  %10016 = fcmp fast ogt float %10015, 0x3EB0C6F7A0000000
  br i1 %10016, label %10017, label %10023, !dx.controlflow.hints !173

; <label>:10017                                   ; preds = %10003
  %10018 = fmul fast float %10014, 0xBFF7154760000000
  %10019 = call float @dx.op.unary.f32(i32 21, float %10018)  ; Exp(value)
  %10020 = fsub fast float 1.000000e+00, %10019
  %10021 = fdiv fast float %10020, %10014
  %10022 = fmul fast float %10021, %9531
  br label %10023

; <label>:10023                                   ; preds = %10017, %10003
  %10024 = phi float [ %10022, %10017 ], [ %9531, %10003 ]
  %10025 = fadd fast float %10024, %9533
  %10026 = fmul fast float %10025, %10013
  %10027 = fmul fast float %9518, %10026
  %10028 = fsub fast float -0.000000e+00, %10027
  %10029 = fmul fast float %9519, %10026
  %10030 = fsub fast float -0.000000e+00, %10029
  %10031 = fmul fast float %9520, %10026
  %10032 = fsub fast float -0.000000e+00, %10031
  %10033 = call float @dx.op.unary.f32(i32 21, float %10028)  ; Exp(value)
  %10034 = call float @dx.op.unary.f32(i32 21, float %10030)  ; Exp(value)
  %10035 = call float @dx.op.unary.f32(i32 21, float %10032)  ; Exp(value)
  %10036 = fmul fast float %9547, %9547
  %10037 = fadd fast float %10036, 1.000000e+00
  %10038 = fmul fast float %10037, 0x3FAE8EC8A0000000
  %10039 = fmul fast float %10038, %9528
  %10040 = fmul fast float %10038, %9529
  %10041 = fmul fast float %10038, %9530
  %10042 = fmul fast float %9547, %9526
  %10043 = fsub fast float 1.000000e+00, %10042
  %10044 = fmul fast float %9526, %9526
  %10045 = fsub fast float 1.000000e+00, %10044
  %10046 = fmul fast float %10045, 0x3FB45F3060000000
  %10047 = fmul fast float %10043, %10043
  %10048 = fdiv fast float 1.000000e+00, %10047
  %10049 = fmul fast float %10046, %10048
  %10050 = fmul fast float %10049, %9523
  %10051 = fmul fast float %10049, %9524
  %10052 = fmul fast float %10049, %9525
  %10053 = fadd fast float %10050, %10039
  %10054 = fadd fast float %10051, %10040
  %10055 = fadd fast float %10052, %10041
  %10056 = fsub fast float 1.000000e+00, %10033
  %10057 = fsub fast float 1.000000e+00, %10034
  %10058 = fsub fast float 1.000000e+00, %10035
  %10059 = fmul fast float %10053, %10056
  %10060 = fmul fast float %10054, %10057
  %10061 = fmul fast float %10055, %10058
  br label %10062

; <label>:10062                                   ; preds = %10023, %9974
  %10063 = phi float [ %10000, %9974 ], [ %10059, %10023 ]
  %10064 = phi float [ %10001, %9974 ], [ %10060, %10023 ]
  %10065 = phi float [ %10002, %9974 ], [ %10061, %10023 ]
  %10066 = phi float [ %9989, %9974 ], [ %10033, %10023 ]
  %10067 = phi float [ %9989, %9974 ], [ %10034, %10023 ]
  %10068 = phi float [ %9989, %9974 ], [ %10035, %10023 ]
  br i1 %9555, label %10069, label %10267, !dx.controlflow.hints !174

; <label>:10069                                   ; preds = %10062
  %10070 = extractvalue %dx.types.CBufRet.f32 %9968, 0
  %10071 = fmul fast float %10070, %9970
  %10072 = fsub fast float %9965, %10063
  %10073 = fsub fast float %9966, %10064
  %10074 = fsub fast float %9967, %10065
  %10075 = fmul fast float %10071, %10072
  %10076 = fmul fast float %10071, %10073
  %10077 = fmul fast float %10071, %10074
  %10078 = fadd fast float %10075, %10063
  %10079 = fadd fast float %10076, %10064
  %10080 = fadd fast float %10077, %10065
  %10081 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10066)  ; FMax(a,b)
  %10082 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10067)  ; FMax(a,b)
  %10083 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10068)  ; FMax(a,b)
  %10084 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9964)  ; FMax(a,b)
  %10085 = call float @dx.op.binary.f32(i32 35, float %9963, float %9973)  ; FMax(a,b)
  %10086 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10085)  ; FMax(a,b)
  %10087 = fdiv fast float %9963, %10086
  %10088 = call float @dx.op.unary.f32(i32 7, float %10087)  ; Saturate(value)
  %10089 = fdiv fast float %9973, %10086
  %10090 = call float @dx.op.unary.f32(i32 7, float %10089)  ; Saturate(value)
  %10091 = fcmp fast une float %10084, 1.000000e+00
  br i1 %10091, label %10092, label %10105, !dx.controlflow.hints !175

; <label>:10092                                   ; preds = %10069
  %10093 = call float @dx.op.unary.f32(i32 23, float %10084)  ; Log(value)
  %10094 = fmul fast float %10093, 0x3FE62E4300000000
  %10095 = fmul fast float %9965, %10094
  %10096 = fsub fast float -0.000000e+00, %10095
  %10097 = fmul fast float %9966, %10094
  %10098 = fsub fast float -0.000000e+00, %10097
  %10099 = fmul fast float %9967, %10094
  %10100 = fsub fast float -0.000000e+00, %10099
  %10101 = fsub fast float 1.000000e+00, %10084
  %10102 = fdiv fast float %10096, %10101
  %10103 = fdiv fast float %10098, %10101
  %10104 = fdiv fast float %10100, %10101
  br label %10105

; <label>:10105                                   ; preds = %10092, %10069
  %10106 = phi float [ %10102, %10092 ], [ %9965, %10069 ]
  %10107 = phi float [ %10103, %10092 ], [ %9966, %10069 ]
  %10108 = phi float [ %10104, %10092 ], [ %9967, %10069 ]
  %10109 = phi float [ %10094, %10092 ], [ 0.000000e+00, %10069 ]
  %10110 = fcmp fast une float %10081, 1.000000e+00
  br i1 %10110, label %10111, label %10118, !dx.controlflow.hints !176

; <label>:10111                                   ; preds = %10105
  %10112 = call float @dx.op.unary.f32(i32 23, float %10081)  ; Log(value)
  %10113 = fmul fast float %10112, 0x3FE62E4300000000
  %10114 = fmul fast float %10078, %10113
  %10115 = fsub fast float -0.000000e+00, %10114
  %10116 = fsub fast float 1.000000e+00, %10081
  %10117 = fdiv fast float %10115, %10116
  br label %10118

; <label>:10118                                   ; preds = %10111, %10105
  %10119 = phi float [ %10117, %10111 ], [ %10078, %10105 ]
  %10120 = phi float [ %10113, %10111 ], [ 0.000000e+00, %10105 ]
  %10121 = fcmp fast une float %10082, 1.000000e+00
  br i1 %10121, label %10122, label %10129, !dx.controlflow.hints !176

; <label>:10122                                   ; preds = %10118
  %10123 = call float @dx.op.unary.f32(i32 23, float %10082)  ; Log(value)
  %10124 = fmul fast float %10123, 0x3FE62E4300000000
  %10125 = fmul fast float %10079, %10124
  %10126 = fsub fast float -0.000000e+00, %10125
  %10127 = fsub fast float 1.000000e+00, %10082
  %10128 = fdiv fast float %10126, %10127
  br label %10129

; <label>:10129                                   ; preds = %10122, %10118
  %10130 = phi float [ %10128, %10122 ], [ %10079, %10118 ]
  %10131 = phi float [ %10124, %10122 ], [ 0.000000e+00, %10118 ]
  %10132 = fcmp fast une float %10083, 1.000000e+00
  br i1 %10132, label %10133, label %10140, !dx.controlflow.hints !176

; <label>:10133                                   ; preds = %10129
  %10134 = call float @dx.op.unary.f32(i32 23, float %10083)  ; Log(value)
  %10135 = fmul fast float %10134, 0x3FE62E4300000000
  %10136 = fmul fast float %10080, %10135
  %10137 = fsub fast float -0.000000e+00, %10136
  %10138 = fsub fast float 1.000000e+00, %10083
  %10139 = fdiv fast float %10137, %10138
  br label %10140

; <label>:10140                                   ; preds = %10133, %10129
  %10141 = phi float [ %10139, %10133 ], [ %10080, %10129 ]
  %10142 = phi float [ %10135, %10133 ], [ 0.000000e+00, %10129 ]
  %10143 = fmul fast float %10106, %10090
  %10144 = fmul fast float %10107, %10090
  %10145 = fmul fast float %10108, %10090
  %10146 = fmul fast float %10109, %10090
  %10147 = fmul fast float %10119, %10088
  %10148 = fmul fast float %10130, %10088
  %10149 = fmul fast float %10141, %10088
  %10150 = fmul fast float %10120, %10088
  %10151 = fmul fast float %10131, %10088
  %10152 = fmul fast float %10142, %10088
  %10153 = fadd fast float %10147, %10143
  %10154 = fadd fast float %10148, %10144
  %10155 = fadd fast float %10149, %10145
  %10156 = fadd fast float %10150, %10146
  %10157 = fadd fast float %10151, %10146
  %10158 = fadd fast float %10152, %10146
  %10159 = fcmp fast une float %10156, 0.000000e+00
  br i1 %10159, label %10160, label %10167, !dx.controlflow.hints !177

; <label>:10160                                   ; preds = %10140
  %10161 = fmul fast float %10156, 0x3FF7154760000000
  %10162 = call float @dx.op.unary.f32(i32 21, float %10161)  ; Exp(value)
  %10163 = fsub fast float 1.000000e+00, %10162
  %10164 = fmul fast float %10153, %10163
  %10165 = fsub fast float -0.000000e+00, %10164
  %10166 = fdiv fast float %10165, %10156
  br label %10167

; <label>:10167                                   ; preds = %10160, %10140
  %10168 = phi float [ %10162, %10160 ], [ 1.000000e+00, %10140 ]
  %10169 = phi float [ %10166, %10160 ], [ %10153, %10140 ]
  %10170 = fcmp fast une float %10157, 0.000000e+00
  br i1 %10170, label %10171, label %10178, !dx.controlflow.hints !177

; <label>:10171                                   ; preds = %10167
  %10172 = fmul fast float %10157, 0x3FF7154760000000
  %10173 = call float @dx.op.unary.f32(i32 21, float %10172)  ; Exp(value)
  %10174 = fsub fast float 1.000000e+00, %10173
  %10175 = fmul fast float %10154, %10174
  %10176 = fsub fast float -0.000000e+00, %10175
  %10177 = fdiv fast float %10176, %10157
  br label %10178

; <label>:10178                                   ; preds = %10171, %10167
  %10179 = phi float [ %10173, %10171 ], [ 1.000000e+00, %10167 ]
  %10180 = phi float [ %10177, %10171 ], [ %10154, %10167 ]
  %10181 = fcmp fast une float %10158, 0.000000e+00
  br i1 %10181, label %10182, label %10189, !dx.controlflow.hints !177

; <label>:10182                                   ; preds = %10178
  %10183 = fmul fast float %10158, 0x3FF7154760000000
  %10184 = call float @dx.op.unary.f32(i32 21, float %10183)  ; Exp(value)
  %10185 = fsub fast float 1.000000e+00, %10184
  %10186 = fmul fast float %10155, %10185
  %10187 = fsub fast float -0.000000e+00, %10186
  %10188 = fdiv fast float %10187, %10158
  br label %10189

; <label>:10189                                   ; preds = %10182, %10178
  %10190 = phi float [ %10184, %10182 ], [ 1.000000e+00, %10178 ]
  %10191 = phi float [ %10188, %10182 ], [ %10155, %10178 ]
  %10192 = fcmp fast ogt float %10088, %10090
  br i1 %10192, label %10193, label %10213

; <label>:10193                                   ; preds = %10189
  %10194 = fsub fast float 1.000000e+00, %10090
  %10195 = fmul fast float %10106, %10194
  %10196 = fmul fast float %10107, %10194
  %10197 = fmul fast float %10108, %10194
  %10198 = fmul fast float %10109, %10194
  %10199 = fcmp fast une float %10198, 0.000000e+00
  br i1 %10199, label %10200, label %10251, !dx.controlflow.hints !178

; <label>:10200                                   ; preds = %10193
  %10201 = fmul fast float %10198, 0x3FF7154760000000
  %10202 = call float @dx.op.unary.f32(i32 21, float %10201)  ; Exp(value)
  %10203 = fsub fast float 1.000000e+00, %10202
  %10204 = fmul fast float %10195, %10203
  %10205 = fsub fast float -0.000000e+00, %10204
  %10206 = fmul fast float %10196, %10203
  %10207 = fsub fast float -0.000000e+00, %10206
  %10208 = fmul fast float %10197, %10203
  %10209 = fsub fast float -0.000000e+00, %10208
  %10210 = fdiv fast float %10205, %10198
  %10211 = fdiv fast float %10207, %10198
  %10212 = fdiv fast float %10209, %10198
  br label %10251

; <label>:10213                                   ; preds = %10189
  %10214 = fsub fast float 1.000000e+00, %10088
  %10215 = fmul fast float %10119, %10214
  %10216 = fmul fast float %10130, %10214
  %10217 = fmul fast float %10141, %10214
  %10218 = fmul fast float %10120, %10214
  %10219 = fmul fast float %10131, %10214
  %10220 = fmul fast float %10142, %10214
  %10221 = fcmp fast une float %10218, 0.000000e+00
  br i1 %10221, label %10222, label %10229, !dx.controlflow.hints !177

; <label>:10222                                   ; preds = %10213
  %10223 = fmul fast float %10218, 0x3FF7154760000000
  %10224 = call float @dx.op.unary.f32(i32 21, float %10223)  ; Exp(value)
  %10225 = fsub fast float 1.000000e+00, %10224
  %10226 = fmul fast float %10215, %10225
  %10227 = fsub fast float -0.000000e+00, %10226
  %10228 = fdiv fast float %10227, %10218
  br label %10229

; <label>:10229                                   ; preds = %10222, %10213
  %10230 = phi float [ %10228, %10222 ], [ %10215, %10213 ]
  %10231 = phi float [ %10224, %10222 ], [ 1.000000e+00, %10213 ]
  %10232 = fcmp fast une float %10219, 0.000000e+00
  br i1 %10232, label %10233, label %10240, !dx.controlflow.hints !177

; <label>:10233                                   ; preds = %10229
  %10234 = fmul fast float %10219, 0x3FF7154760000000
  %10235 = call float @dx.op.unary.f32(i32 21, float %10234)  ; Exp(value)
  %10236 = fsub fast float 1.000000e+00, %10235
  %10237 = fmul fast float %10216, %10236
  %10238 = fsub fast float -0.000000e+00, %10237
  %10239 = fdiv fast float %10238, %10219
  br label %10240

; <label>:10240                                   ; preds = %10233, %10229
  %10241 = phi float [ %10239, %10233 ], [ %10216, %10229 ]
  %10242 = phi float [ %10235, %10233 ], [ 1.000000e+00, %10229 ]
  %10243 = fcmp fast une float %10220, 0.000000e+00
  br i1 %10243, label %10244, label %10251, !dx.controlflow.hints !177

; <label>:10244                                   ; preds = %10240
  %10245 = fmul fast float %10220, 0x3FF7154760000000
  %10246 = call float @dx.op.unary.f32(i32 21, float %10245)  ; Exp(value)
  %10247 = fsub fast float 1.000000e+00, %10246
  %10248 = fmul fast float %10217, %10247
  %10249 = fsub fast float -0.000000e+00, %10248
  %10250 = fdiv fast float %10249, %10220
  br label %10251

; <label>:10251                                   ; preds = %10244, %10240, %10200, %10193
  %10252 = phi float [ %10250, %10244 ], [ %10212, %10200 ], [ %10197, %10193 ], [ %10217, %10240 ]
  %10253 = phi float [ %10241, %10244 ], [ %10211, %10200 ], [ %10196, %10193 ], [ %10241, %10240 ]
  %10254 = phi float [ %10230, %10244 ], [ %10210, %10200 ], [ %10195, %10193 ], [ %10230, %10240 ]
  %10255 = phi float [ %10246, %10244 ], [ %10202, %10200 ], [ 1.000000e+00, %10193 ], [ 1.000000e+00, %10240 ]
  %10256 = phi float [ %10242, %10244 ], [ %10202, %10200 ], [ 1.000000e+00, %10193 ], [ %10242, %10240 ]
  %10257 = phi float [ %10231, %10244 ], [ %10202, %10200 ], [ 1.000000e+00, %10193 ], [ %10231, %10240 ]
  %10258 = fmul fast float %10257, %10169
  %10259 = fmul fast float %10256, %10180
  %10260 = fmul fast float %10255, %10191
  %10261 = fadd fast float %10258, %10254
  %10262 = fadd fast float %10259, %10253
  %10263 = fadd fast float %10260, %10252
  %10264 = fmul fast float %10257, %10168
  %10265 = fmul fast float %10256, %10179
  %10266 = fmul fast float %10255, %10190
  br label %10267

; <label>:10267                                   ; preds = %10251, %10062
  %10268 = phi float [ %10266, %10251 ], [ %10068, %10062 ]
  %10269 = phi float [ %10265, %10251 ], [ %10067, %10062 ]
  %10270 = phi float [ %10264, %10251 ], [ %10066, %10062 ]
  %10271 = phi float [ %10263, %10251 ], [ %10065, %10062 ]
  %10272 = phi float [ %10262, %10251 ], [ %10064, %10062 ]
  %10273 = phi float [ %10261, %10251 ], [ %10063, %10062 ]
  %10274 = fmul fast float %10273, %9227
  %10275 = fmul fast float %10272, %9228
  %10276 = fmul fast float %10271, %9229
  %10277 = fmul fast float %10270, %9510
  %10278 = call float @dx.op.dot3.f32(i32 55, float %10270, float %10269, float %10268, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10279 = call float @dx.op.dot3.f32(i32 55, float %10274, float %10275, float %10276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10280 = select i1 %258, float %10278, float %10270
  %10281 = select i1 %258, float %10278, float %10269
  %10282 = select i1 %258, float 1.000000e+00, float %10268
  %10283 = select i1 %258, float %10279, float %10274
  %10284 = select i1 %258, float 0.000000e+00, float %10275
  %10285 = select i1 %258, float 0.000000e+00, float %10276
  %10286 = fmul fast float %10280, %9504
  %10287 = fmul fast float %10281, %9505
  %10288 = fmul fast float %10282, %9506
  %10289 = fadd fast float %10286, %10283
  %10290 = fadd fast float %10287, %10284
  %10291 = fadd fast float %10285, %10288
  %10292 = fmul fast float %10280, %9507
  %10293 = fmul fast float %10281, %9508
  %10294 = fmul fast float %10282, %9509
  %10295 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10296 = extractvalue %dx.types.CBufRet.i32 %10295, 0
  %10297 = icmp eq i32 %10296, 0
  br i1 %10297, label %10665, label %10298, !dx.controlflow.hints !179

; <label>:10298                                   ; preds = %10267
  %10299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10300 = extractvalue %dx.types.CBufRet.f32 %10299, 2
  %10301 = extractvalue %dx.types.CBufRet.f32 %10299, 3
  %10302 = fmul fast float %10300, %109
  %10303 = fmul fast float %10301, %110
  %10304 = fmul fast float %10302, 2.000000e+00
  %10305 = fmul fast float %10303, 2.000000e+00
  %10306 = fsub fast float 1.000000e+00, %10304
  %10307 = fsub fast float 1.000000e+00, %10305
  %10308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10309 = extractvalue %dx.types.CBufRet.f32 %10308, 0
  %10310 = extractvalue %dx.types.CBufRet.f32 %10308, 1
  %10311 = extractvalue %dx.types.CBufRet.f32 %10308, 2
  %10312 = fmul fast float %10306, %10309
  %10313 = fmul fast float %10306, %10310
  %10314 = fmul fast float %10306, %10311
  %10315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10316 = extractvalue %dx.types.CBufRet.f32 %10315, 0
  %10317 = extractvalue %dx.types.CBufRet.f32 %10315, 1
  %10318 = extractvalue %dx.types.CBufRet.f32 %10315, 2
  %10319 = fmul fast float %10307, %10316
  %10320 = fmul fast float %10307, %10317
  %10321 = fmul fast float %10307, %10318
  %10322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10323 = extractvalue %dx.types.CBufRet.f32 %10322, 0
  %10324 = extractvalue %dx.types.CBufRet.f32 %10322, 1
  %10325 = extractvalue %dx.types.CBufRet.f32 %10322, 2
  %10326 = fadd fast float %10319, %10323
  %10327 = fadd fast float %10326, %10312
  %10328 = fadd fast float %10320, %10324
  %10329 = fadd fast float %10328, %10313
  %10330 = fadd fast float %10321, %10325
  %10331 = fadd fast float %10330, %10314
  %10332 = fmul fast float %10327, %9503
  %10333 = fmul fast float %10329, %9503
  %10334 = fmul fast float %10331, %9503
  %10335 = fmul fast float %10332, %10332
  %10336 = fmul fast float %10333, %10333
  %10337 = fadd fast float %10335, %10336
  %10338 = fmul fast float %10334, %10334
  %10339 = fadd fast float %10337, %10338
  %10340 = call float @dx.op.unary.f32(i32 24, float %10339)  ; Sqrt(value)
  %10341 = extractvalue %dx.types.CBufRet.f32 %9230, 0
  %10342 = fsub fast float %10340, %10341
  %10343 = extractvalue %dx.types.CBufRet.f32 %9230, 2
  %10344 = fmul fast float %10342, %10343
  %10345 = call float @dx.op.unary.f32(i32 7, float %10344)  ; Saturate(value)
  %10346 = fadd fast float %10345, -5.000000e-01
  %10347 = fmul fast float %10346, 2.000000e+00
  %10348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10349 = extractvalue %dx.types.CBufRet.f32 %10348, 2
  %10350 = call float @dx.op.binary.f32(i32 36, float %10349, float %10347)  ; FMin(a,b)
  %10351 = fsub fast float -0.000000e+00, %10349
  %10352 = fcmp fast ogt float %10350, %10351
  br i1 %10352, label %10353, label %10665, !dx.controlflow.hints !180

; <label>:10353                                   ; preds = %10298
  %10354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10355 = extractvalue %dx.types.CBufRet.f32 %10354, 3
  %10356 = fcmp fast ogt float %10355, 0.000000e+00
  br i1 %10356, label %10357, label %10432, !dx.controlflow.hints !181

; <label>:10357                                   ; preds = %10353
  %10358 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10359 = extractvalue %dx.types.Dimensions %10358, 0
  %10360 = sitofp i32 %10359 to float
  %10361 = extractvalue %dx.types.Dimensions %10358, 1
  %10362 = sitofp i32 %10361 to float
  %10363 = fmul fast float %10302, %10360
  %10364 = fmul fast float %10303, %10362
  %10365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10366 = extractvalue %dx.types.CBufRet.f32 %10365, 1
  %10367 = fsub fast float -0.000000e+00, %10366
  %10368 = fptoui float %10367 to i32
  %10369 = fptoui float %10363 to i32
  %10370 = fptoui float %10364 to i32
  %10371 = and i32 %10368, 31
  %10372 = lshr i32 %10369, %10371
  %10373 = lshr i32 %10370, %10371
  %10374 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10368, i32 %10372, i32 %10373, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10375 = extractvalue %dx.types.ResRet.f32 %10374, 0
  %10376 = fcmp fast olt float %10375, -1.000000e+00
  %10377 = fcmp fast ogt float %10375, -1.000000e+00
  %10378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10379 = extractvalue %dx.types.CBufRet.f32 %10378, 1
  %10380 = select i1 %10377, float %10379, float 1.000000e+00
  %10381 = fadd fast float %10375, 1.000000e+00
  %10382 = fmul fast float %10380, %10381
  %10383 = call float @dx.op.unary.f32(i32 6, float %10382)  ; FAbs(value)
  %10384 = extractvalue %dx.types.CBufRet.f32 %10378, 3
  %10385 = fcmp fast oge float %10383, %10384
  %10386 = select i1 %10385, float 0x4197782600000000, float %10383
  %10387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10388 = extractvalue %dx.types.CBufRet.f32 %10387, 0
  %10389 = extractvalue %dx.types.CBufRet.f32 %10387, 1
  %10390 = extractvalue %dx.types.CBufRet.f32 %10387, 2
  %10391 = select i1 %10376, float %10388, float %10309
  %10392 = select i1 %10376, float %10389, float %10310
  %10393 = select i1 %10376, float %10390, float %10311
  %10394 = fmul fast float %10391, %10306
  %10395 = fmul fast float %10392, %10306
  %10396 = fmul fast float %10393, %10306
  %10397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10398 = extractvalue %dx.types.CBufRet.f32 %10397, 0
  %10399 = extractvalue %dx.types.CBufRet.f32 %10397, 1
  %10400 = extractvalue %dx.types.CBufRet.f32 %10397, 2
  %10401 = select i1 %10376, float %10398, float %10316
  %10402 = select i1 %10376, float %10399, float %10317
  %10403 = select i1 %10376, float %10400, float %10318
  %10404 = fmul fast float %10401, %10307
  %10405 = fmul fast float %10402, %10307
  %10406 = fmul fast float %10403, %10307
  %10407 = fadd fast float %10404, %10394
  %10408 = fadd fast float %10405, %10395
  %10409 = fadd fast float %10406, %10396
  %10410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10411 = extractvalue %dx.types.CBufRet.f32 %10410, 0
  %10412 = extractvalue %dx.types.CBufRet.f32 %10410, 1
  %10413 = extractvalue %dx.types.CBufRet.f32 %10410, 2
  %10414 = select i1 %10376, float %10411, float %10323
  %10415 = select i1 %10376, float %10412, float %10324
  %10416 = select i1 %10376, float %10413, float %10325
  %10417 = fadd fast float %10407, %10414
  %10418 = fadd fast float %10408, %10415
  %10419 = fadd fast float %10409, %10416
  %10420 = fmul fast float %10417, %10386
  %10421 = fmul fast float %10418, %10386
  %10422 = fmul fast float %10419, %10386
  %10423 = fmul fast float %10420, %10420
  %10424 = fmul fast float %10421, %10421
  %10425 = fadd fast float %10423, %10424
  %10426 = fmul fast float %10422, %10422
  %10427 = fadd fast float %10425, %10426
  %10428 = call float @dx.op.unary.f32(i32 24, float %10427)  ; Sqrt(value)
  %10429 = fsub fast float %10428, %10341
  %10430 = fmul fast float %10429, %10343
  %10431 = call float @dx.op.unary.f32(i32 7, float %10430)  ; Saturate(value)
  br label %10432

; <label>:10432                                   ; preds = %10357, %10353
  %10433 = phi float [ %10431, %10357 ], [ 1.000000e+00, %10353 ]
  %10434 = fmul fast float %10350, 5.000000e-01
  %10435 = fadd fast float %10434, 5.000000e-01
  %10436 = call float @dx.op.unary.f32(i32 22, float %10435)  ; Frc(value)
  %10437 = call float @dx.op.unary.f32(i32 27, float %10436)  ; Round_ni(value)
  %10438 = call float @dx.op.unary.f32(i32 22, float %10436)  ; Frc(value)
  %10439 = fmul fast float %10438, 2.000000e+00
  %10440 = fadd fast float %10439, -1.000000e+00
  %10441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10302, float %10303, float %10437, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10442 = extractvalue %dx.types.ResRet.f32 %10441, 0
  %10443 = extractvalue %dx.types.ResRet.f32 %10441, 1
  %10444 = extractvalue %dx.types.ResRet.f32 %10441, 2
  %10445 = extractvalue %dx.types.ResRet.f32 %10441, 3
  %10446 = fadd fast float %10442, -5.000000e-01
  %10447 = fadd fast float %10444, -5.000000e-01
  %10448 = fmul fast float %10446, 0xBFD5555560000000
  %10449 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10447, float %10448)  ; FMad(a,b,c)
  %10450 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10443, float 0.000000e+00)  ; FMad(a,b,c)
  %10451 = fadd fast float %10450, %10445
  %10452 = fmul fast float %10446, -7.500000e-01
  %10453 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10447, float %10452)  ; FMad(a,b,c)
  %10454 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10443, float 0.000000e+00)  ; FMad(a,b,c)
  %10455 = fadd fast float %10454, %10445
  %10456 = call float @dx.op.binary.f32(i32 35, float %10449, float -1.000000e+00)  ; FMax(a,b)
  %10457 = call float @dx.op.binary.f32(i32 35, float %10451, float -1.000000e+00)  ; FMax(a,b)
  %10458 = call float @dx.op.binary.f32(i32 35, float %10453, float -1.000000e+00)  ; FMax(a,b)
  %10459 = call float @dx.op.binary.f32(i32 35, float %10455, float -1.000000e+00)  ; FMax(a,b)
  %10460 = call float @dx.op.binary.f32(i32 36, float %10456, float 1.000000e+00)  ; FMin(a,b)
  %10461 = call float @dx.op.binary.f32(i32 36, float %10457, float 1.000000e+00)  ; FMin(a,b)
  %10462 = call float @dx.op.binary.f32(i32 36, float %10458, float 1.000000e+00)  ; FMin(a,b)
  %10463 = call float @dx.op.binary.f32(i32 36, float %10459, float 1.000000e+00)  ; FMin(a,b)
  %10464 = fcmp fast olt float %10460, 0x3FEFFF8020000000
  br i1 %10464, label %10465, label %10580, !dx.controlflow.hints !182

; <label>:10465                                   ; preds = %10432
  %10466 = extractvalue %dx.types.CBufRet.f32 %10348, 3
  %10467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10468 = extractvalue %dx.types.CBufRet.f32 %10467, 0
  %10469 = extractvalue %dx.types.CBufRet.f32 %10467, 1
  %10470 = extractvalue %dx.types.CBufRet.f32 %10467, 2
  %10471 = extractvalue %dx.types.CBufRet.f32 %10467, 3
  %10472 = fsub fast float %10468, %10460
  %10473 = fsub fast float %10469, %10461
  %10474 = fsub fast float %10470, %10462
  %10475 = fsub fast float %10471, %10463
  %10476 = fmul fast float %10472, %10466
  %10477 = fmul fast float %10473, %10466
  %10478 = fmul fast float %10474, %10466
  %10479 = fmul fast float %10475, %10466
  %10480 = fadd fast float %10476, %10460
  %10481 = fadd fast float %10477, %10461
  %10482 = fsub fast float -0.000000e+00, %10481
  %10483 = fadd fast float %10478, %10462
  %10484 = fadd fast float %10479, %10463
  %10485 = fmul fast float %10480, %10480
  %10486 = fsub fast float %10481, %10485
  %10487 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10486)  ; FMax(a,b)
  %10488 = fdiv fast float 1.000000e+00, %10487
  %10489 = fmul fast float %10481, %10480
  %10490 = fsub fast float %10483, %10489
  %10491 = fsub fast float %10440, %10480
  %10492 = fmul fast float %10440, %10440
  %10493 = fsub fast float %10492, %10481
  %10494 = fmul fast float %10491, %10488
  %10495 = fmul fast float %10494, %10490
  %10496 = fsub fast float %10493, %10495
  %10497 = fmul fast float %10481, %10481
  %10498 = fsub fast float %10484, %10497
  %10499 = fmul fast float %10490, %10490
  %10500 = fmul fast float %10499, %10488
  %10501 = fsub fast float %10498, %10500
  %10502 = fdiv fast float %10496, %10501
  %10503 = fmul fast float %10490, %10502
  %10504 = fsub fast float %10491, %10503
  %10505 = fmul fast float %10504, %10488
  %10506 = fmul fast float %10505, %10480
  %10507 = fsub fast float 1.000000e+00, %10506
  %10508 = fmul fast float %10481, %10502
  %10509 = fsub fast float %10507, %10508
  %10510 = fmul fast float %10505, %10505
  %10511 = fmul fast float %10502, 4.000000e+00
  %10512 = fmul fast float %10511, %10509
  %10513 = fsub fast float %10510, %10512
  %10514 = call float @dx.op.unary.f32(i32 24, float %10513)  ; Sqrt(value)
  %10515 = fcmp fast oge float %10505, 0.000000e+00
  %10516 = fsub fast float -0.000000e+00, %10514
  %10517 = select i1 %10515, float %10516, float %10514
  %10518 = fsub fast float %10517, %10505
  %10519 = fdiv fast float %10518, %10502
  %10520 = fdiv fast float %10509, %10518
  %10521 = fmul fast float %10519, 5.000000e-01
  %10522 = fmul fast float %10520, 2.000000e+00
  %10523 = select i1 %10515, float %10521, float %10522
  %10524 = select i1 %10515, float %10522, float %10521
  %10525 = call float @dx.op.binary.f32(i32 35, float %10523, float %10524)  ; FMax(a,b)
  %10526 = call float @dx.op.binary.f32(i32 36, float %10523, float %10524)  ; FMin(a,b)
  %10527 = fcmp fast ogt float %10440, %10526
  br i1 %10527, label %10528, label %10538

; <label>:10528                                   ; preds = %10465
  %10529 = fsub fast float %10440, %10526
  %10530 = fsub fast float %10525, %10526
  %10531 = fmul fast float %10529, %10530
  %10532 = fmul fast float %10525, %10440
  %10533 = fadd fast float %10525, %10440
  %10534 = fmul fast float %10533, %10480
  %10535 = fadd fast float %10532, %10481
  %10536 = fsub fast float %10535, %10534
  %10537 = fdiv fast float %10536, %10531
  br label %10538

; <label>:10538                                   ; preds = %10528, %10465
  %10539 = phi float [ %10537, %10528 ], [ 0.000000e+00, %10465 ]
  %10540 = fcmp fast ogt float %10440, %10525
  %10541 = fsub fast float %10440, %10525
  br i1 %10540, label %10542, label %10552

; <label>:10542                                   ; preds = %10538
  %10543 = fsub fast float %10525, %10526
  %10544 = fmul fast float %10543, %10541
  %10545 = fmul fast float %10526, %10440
  %10546 = fadd fast float %10526, %10440
  %10547 = fmul fast float %10546, %10480
  %10548 = fsub fast float %10482, %10545
  %10549 = fadd fast float %10548, %10547
  %10550 = fdiv fast float %10549, %10544
  %10551 = fadd fast float %10550, %10539
  br label %10552

; <label>:10552                                   ; preds = %10542, %10538
  %10553 = phi float [ %10551, %10542 ], [ %10539, %10538 ]
  %10554 = fsub fast float %10440, %10526
  %10555 = fmul fast float %10554, %10541
  %10556 = fmul fast float %10526, %10525
  %10557 = fadd fast float %10526, %10525
  %10558 = fmul fast float %10557, %10480
  %10559 = fadd fast float %10556, %10481
  %10560 = fsub fast float %10559, %10558
  %10561 = fdiv fast float %10560, %10555
  %10562 = call float @dx.op.unary.f32(i32 7, float %10553)  ; Saturate(value)
  %10563 = fcmp fast oeq float %9231, 0.000000e+00
  %10564 = extractvalue %dx.types.CBufRet.f32 %10348, 0
  %10565 = fcmp fast oeq float %10564, 0.000000e+00
  %10566 = or i1 %10563, %10565
  %10567 = fmul fast float %10564, 2.000000e+00
  %10568 = fadd fast float %10349, %10350
  %10569 = fdiv fast float %10568, %10567
  %10570 = call float @dx.op.unary.f32(i32 7, float %10569)  ; Saturate(value)
  %10571 = fmul fast float %10570, 2.000000e+00
  %10572 = fsub fast float 3.000000e+00, %10571
  %10573 = fmul fast float %10570, %10570
  %10574 = fmul fast float %10573, %10572
  %10575 = select i1 %10566, float 1.000000e+00, float %10574
  %10576 = fmul fast float %10561, %9231
  %10577 = fadd fast float %10562, %10576
  %10578 = call float @dx.op.unary.f32(i32 7, float %10577)  ; Saturate(value)
  %10579 = fmul fast float %10575, %10578
  br label %10580

; <label>:10580                                   ; preds = %10552, %10432
  %10581 = phi float [ %10579, %10552 ], [ 0.000000e+00, %10432 ]
  %10582 = fsub fast float 1.000000e+00, %10581
  %10583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10302, float %10303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10584 = extractvalue %dx.types.ResRet.f32 %10583, 0
  %10585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10586 = extractvalue %dx.types.CBufRet.i32 %10585, 2
  %10587 = icmp eq i32 %10586, 0
  br i1 %10587, label %10593, label %10588

; <label>:10588                                   ; preds = %10580
  %10589 = call float @dx.op.unary.f32(i32 7, float %10581)  ; Saturate(value)
  %10590 = fadd fast float %10584, -1.000000e+00
  %10591 = fmul fast float %10589, %10590
  %10592 = fadd fast float %10591, 1.000000e+00
  br label %10593

; <label>:10593                                   ; preds = %10588, %10580
  %10594 = phi float [ %10592, %10588 ], [ %10582, %10580 ]
  br i1 %10356, label %10595, label %10613

; <label>:10595                                   ; preds = %10593
  %10596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10597 = extractvalue %dx.types.CBufRet.f32 %10596, 1
  %10598 = fsub fast float %10433, %10597
  %10599 = call float @dx.op.unary.f32(i32 7, float %10598)  ; Saturate(value)
  %10600 = fsub fast float %10433, %10355
  %10601 = call float @dx.op.unary.f32(i32 7, float %10600)  ; Saturate(value)
  %10602 = fsub fast float %10599, %10601
  %10603 = fsub fast float %10435, %10601
  %10604 = fdiv fast float %10603, %10602
  %10605 = call float @dx.op.unary.f32(i32 7, float %10604)  ; Saturate(value)
  %10606 = fmul fast float %10605, 2.000000e+00
  %10607 = fsub fast float 3.000000e+00, %10606
  %10608 = fsub fast float %10584, %10594
  %10609 = fmul fast float %10605, %10605
  %10610 = fmul fast float %10609, %10608
  %10611 = fmul fast float %10610, %10607
  %10612 = fadd fast float %10611, %10594
  br label %10613

; <label>:10613                                   ; preds = %10595, %10593
  %10614 = phi float [ %10612, %10595 ], [ %10594, %10593 ]
  %10615 = call float @dx.op.binary.f32(i32 35, float %10584, float %10614)  ; FMax(a,b)
  %10616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10617 = extractvalue %dx.types.CBufRet.i32 %10616, 2
  %10618 = and i32 %10617, 1
  %10619 = icmp eq i32 %10618, 0
  %10620 = fcmp fast une float %10615, 1.000000e+00
  %10621 = and i1 %10620, %10619
  br i1 %10621, label %10622, label %10641

; <label>:10622                                   ; preds = %10613
  %10623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10302, float %10303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10624 = extractvalue %dx.types.ResRet.f32 %10623, 0
  %10625 = extractvalue %dx.types.ResRet.f32 %10623, 1
  %10626 = extractvalue %dx.types.ResRet.f32 %10623, 2
  %10627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10628 = extractvalue %dx.types.CBufRet.f32 %10627, 1
  %10629 = fmul fast float %10628, %10624
  %10630 = fmul fast float %10628, %10625
  %10631 = fmul fast float %10628, %10626
  %10632 = fcmp fast ogt float %10584, 0x3FEFFF2E40000000
  %10633 = fsub fast float 1.000000e+00, %10615
  %10634 = fsub fast float 1.000000e+00, %10584
  %10635 = fdiv fast float %10633, %10634
  %10636 = call float @dx.op.unary.f32(i32 7, float %10635)  ; Saturate(value)
  %10637 = select i1 %10632, float 0.000000e+00, float %10636
  %10638 = fmul fast float %10629, %10637
  %10639 = fmul fast float %10630, %10637
  %10640 = fmul fast float %10631, %10637
  br label %10641

; <label>:10641                                   ; preds = %10622, %10613
  %10642 = phi float [ 0.000000e+00, %10613 ], [ %10638, %10622 ]
  %10643 = phi float [ 0.000000e+00, %10613 ], [ %10639, %10622 ]
  %10644 = phi float [ 0.000000e+00, %10613 ], [ %10640, %10622 ]
  %10645 = fmul fast float %10642, %9227
  %10646 = fmul fast float %10643, %9228
  %10647 = fmul fast float %10644, %9229
  %10648 = fmul fast float %10615, %10277
  %10649 = call float @dx.op.dot3.f32(i32 55, float %10615, float %10615, float %10615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10650 = call float @dx.op.dot3.f32(i32 55, float %10645, float %10646, float %10647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10651 = select i1 %258, float %10649, float %10615
  %10652 = select i1 %258, float 1.000000e+00, float %10615
  %10653 = select i1 %258, float %10650, float %10645
  %10654 = select i1 %258, float 0.000000e+00, float %10646
  %10655 = select i1 %258, float 0.000000e+00, float %10647
  %10656 = fmul fast float %10651, %10289
  %10657 = fmul fast float %10651, %10290
  %10658 = fmul fast float %10652, %10291
  %10659 = fadd fast float %10656, %10653
  %10660 = fadd fast float %10657, %10654
  %10661 = fadd fast float %10655, %10658
  %10662 = fmul fast float %10651, %10292
  %10663 = fmul fast float %10651, %10293
  %10664 = fmul fast float %10652, %10294
  br label %10665

; <label>:10665                                   ; preds = %10641, %10298, %10267, %9499
  %10666 = phi float [ %9504, %9499 ], [ %10289, %10267 ], [ %10659, %10641 ], [ %10289, %10298 ]
  %10667 = phi float [ %9505, %9499 ], [ %10290, %10267 ], [ %10660, %10641 ], [ %10290, %10298 ]
  %10668 = phi float [ %9506, %9499 ], [ %10291, %10267 ], [ %10661, %10641 ], [ %10291, %10298 ]
  %10669 = phi float [ %9507, %9499 ], [ %10292, %10267 ], [ %10662, %10641 ], [ %10292, %10298 ]
  %10670 = phi float [ %9508, %9499 ], [ %10293, %10267 ], [ %10663, %10641 ], [ %10293, %10298 ]
  %10671 = phi float [ %9509, %9499 ], [ %10294, %10267 ], [ %10664, %10641 ], [ %10294, %10298 ]
  %10672 = phi float [ %9510, %9499 ], [ %10277, %10267 ], [ %10648, %10641 ], [ %10277, %10298 ]
  %10673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10674 = extractvalue %dx.types.CBufRet.f32 %10673, 2
  %10675 = extractvalue %dx.types.CBufRet.f32 %10673, 3
  %10676 = fmul fast float %10674, %109
  %10677 = fmul fast float %10675, %110
  %10678 = call float @dx.op.unary.f32(i32 7, float %10676)  ; Saturate(value)
  %10679 = call float @dx.op.unary.f32(i32 7, float %10677)  ; Saturate(value)
  %10680 = select i1 %9241, i32 2, i32 0
  %10681 = or i32 %10680, 1
  %10682 = uitofp i32 %10681 to float
  %10683 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10678, float %10679, float %10682, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10684 = extractvalue %dx.types.ResRet.f32 %10683, 0
  %10685 = extractvalue %dx.types.ResRet.f32 %10683, 1
  %10686 = extractvalue %dx.types.ResRet.f32 %10683, 2
  %10687 = extractvalue %dx.types.ResRet.f32 %10683, 3
  %10688 = add nuw nsw i32 %10680, 2
  %10689 = uitofp i32 %10688 to float
  %10690 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10678, float %10679, float %10689, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10691 = extractvalue %dx.types.ResRet.f32 %10690, 0
  %10692 = extractvalue %dx.types.ResRet.f32 %10690, 1
  %10693 = extractvalue %dx.types.ResRet.f32 %10690, 2
  %10694 = extractvalue %dx.types.ResRet.f32 %10690, 3
  %10695 = call float @dx.op.binary.f32(i32 35, float %10685, float %10686)  ; FMax(a,b)
  %10696 = call float @dx.op.binary.f32(i32 35, float %10684, float %10695)  ; FMax(a,b)
  %10697 = call float @dx.op.binary.f32(i32 35, float %10696, float %10687)  ; FMax(a,b)
  %10698 = call float @dx.op.binary.f32(i32 36, float %10692, float %10693)  ; FMin(a,b)
  %10699 = call float @dx.op.binary.f32(i32 36, float %10691, float %10698)  ; FMin(a,b)
  %10700 = call float @dx.op.binary.f32(i32 36, float %10699, float %10694)  ; FMin(a,b)
  %10701 = fmul fast float %10697, 2.550000e+02
  %10702 = fadd fast float %10701, 0x3F70101020000000
  %10703 = fptoui float %10702 to i32
  %10704 = fmul fast float %10700, 2.550000e+02
  %10705 = fadd fast float %10704, 0x3F70101020000000
  %10706 = fptoui float %10705 to i32
  %10707 = icmp ult i32 %10703, %10706
  br i1 %10707, label %10708, label %10877

; <label>:10708                                   ; preds = %10665
  %10709 = fcmp fast ogt float %96, 9.843750e-01
  %10710 = fadd fast float %9503, -4.000000e+00
  %10711 = select i1 %10709, float -4.000000e+00, float %10710
  %10712 = call float @dx.op.binary.f32(i32 35, float %10711, float 0.000000e+00)  ; FMax(a,b)
  %10713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10714 = extractvalue %dx.types.CBufRet.f32 %10713, 0
  %10715 = fadd fast float %10714, %10712
  %10716 = extractvalue %dx.types.CBufRet.f32 %10713, 2
  %10717 = fmul fast float %10715, %10716
  %10718 = call float @dx.op.unary.f32(i32 23, float %10717)  ; Log(value)
  %10719 = extractvalue %dx.types.CBufRet.f32 %10713, 3
  %10720 = fmul fast float %10719, %10718
  %10721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10722 = extractvalue %dx.types.CBufRet.f32 %10721, 2
  %10723 = fmul fast float %10720, %10722
  %10724 = call float @dx.op.unary.f32(i32 7, float %10723)  ; Saturate(value)
  %10725 = uitofp i32 %10703 to float
  %10726 = uitofp i32 %10706 to float
  %10727 = fadd fast float %10725, 5.000000e-01
  %10728 = fadd fast float %10726, 5.000000e-01
  %10729 = fmul fast float %10722, %10727
  %10730 = fmul fast float %10722, %10728
  %10731 = fadd fast float %10729, 0x3F0FFB4800000000
  %10732 = fadd fast float %10730, 0xBF0FFB4800000000
  %10733 = call float @dx.op.binary.f32(i32 35, float %10724, float %10731)  ; FMax(a,b)
  %10734 = call float @dx.op.binary.f32(i32 36, float %10733, float %10732)  ; FMin(a,b)
  %10735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10736 = extractvalue %dx.types.CBufRet.f32 %10735, 1
  %10737 = extractvalue %dx.types.CBufRet.f32 %10735, 2
  %10738 = extractvalue %dx.types.CBufRet.f32 %10735, 0
  %10739 = select i1 %9241, float %10738, float 0.000000e+00
  %10740 = fmul fast float %10736, %10734
  %10741 = fadd fast float %10739, %10740
  %10742 = fadd fast float %10739, %10737
  %10743 = fsub fast float %10736, %10737
  %10744 = fadd fast float %10743, %10739
  %10745 = call float @dx.op.binary.f32(i32 35, float %10741, float %10742)  ; FMax(a,b)
  %10746 = call float @dx.op.binary.f32(i32 36, float %10745, float %10744)  ; FMin(a,b)
  %10747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10678, float %10679, float %10746, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10748 = extractvalue %dx.types.ResRet.f32 %10747, 0
  %10749 = extractvalue %dx.types.ResRet.f32 %10747, 1
  %10750 = extractvalue %dx.types.ResRet.f32 %10747, 2
  %10751 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10752 = extractvalue %dx.types.CBufRet.i32 %10751, 0
  %10753 = extractvalue %dx.types.CBufRet.i32 %10751, 1
  %10754 = uitofp i32 %10752 to float
  %10755 = uitofp i32 %10753 to float
  %10756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10757 = extractvalue %dx.types.CBufRet.f32 %10756, 0
  %10758 = extractvalue %dx.types.CBufRet.f32 %10756, 1
  %10759 = fmul fast float %10754, %10678
  %10760 = fmul fast float %10755, %10679
  %10761 = fadd fast float %10759, -5.000000e-01
  %10762 = fadd fast float %10760, -5.000000e-01
  %10763 = call float @dx.op.unary.f32(i32 22, float %10761)  ; Frc(value)
  %10764 = call float @dx.op.unary.f32(i32 22, float %10762)  ; Frc(value)
  %10765 = fmul fast float %10763, %10763
  %10766 = fmul fast float %10765, %10763
  %10767 = fsub fast float 3.000000e+00, %10763
  %10768 = fmul fast float %10765, %10767
  %10769 = fmul fast float %10763, 3.000000e+00
  %10770 = fmul fast float %10766, 3.000000e+00
  %10771 = fmul fast float %10765, 6.000000e+00
  %10772 = fsub fast float %10770, %10771
  %10773 = fadd fast float %10772, 4.000000e+00
  %10774 = fmul fast float %10773, 0x3FC5555560000000
  %10775 = fmul fast float %10766, -3.000000e+00
  %10776 = fadd fast float %10765, %10763
  %10777 = fmul fast float %10776, 3.000000e+00
  %10778 = fadd fast float %10775, 1.000000e+00
  %10779 = fadd fast float %10778, %10777
  %10780 = fmul fast float %10766, 0x3FC5555560000000
  %10781 = fmul fast float %10764, %10764
  %10782 = fmul fast float %10781, %10764
  %10783 = fsub fast float 3.000000e+00, %10764
  %10784 = fmul fast float %10781, %10783
  %10785 = fmul fast float %10764, 3.000000e+00
  %10786 = fmul fast float %10782, 3.000000e+00
  %10787 = fmul fast float %10781, 6.000000e+00
  %10788 = fsub fast float %10786, %10787
  %10789 = fadd fast float %10788, 4.000000e+00
  %10790 = fmul fast float %10789, 0x3FC5555560000000
  %10791 = fmul fast float %10782, -3.000000e+00
  %10792 = fadd fast float %10781, %10764
  %10793 = fmul fast float %10792, 3.000000e+00
  %10794 = fadd fast float %10791, 1.000000e+00
  %10795 = fadd fast float %10794, %10793
  %10796 = fmul fast float %10782, 0x3FC5555560000000
  %10797 = fadd fast float %10763, 1.000000e+00
  %10798 = fsub fast float 1.000000e+00, %10769
  %10799 = fadd fast float %10798, %10768
  %10800 = fadd fast float %10799, %10773
  %10801 = fmul fast float %10800, 0x3FC5555560000000
  %10802 = fdiv fast float %10774, %10801
  %10803 = fsub fast float %10797, %10802
  %10804 = fsub fast float 1.000000e+00, %10763
  %10805 = fadd fast float %10779, %10766
  %10806 = fmul fast float %10805, 0x3FC5555560000000
  %10807 = fdiv fast float %10780, %10806
  %10808 = fadd fast float %10804, %10807
  %10809 = fadd fast float %10764, 1.000000e+00
  %10810 = fsub fast float 1.000000e+00, %10785
  %10811 = fadd fast float %10810, %10784
  %10812 = fadd fast float %10811, %10789
  %10813 = fmul fast float %10812, 0x3FC5555560000000
  %10814 = fdiv fast float %10790, %10813
  %10815 = fsub fast float %10809, %10814
  %10816 = fsub fast float 1.000000e+00, %10764
  %10817 = fadd fast float %10795, %10782
  %10818 = fmul fast float %10817, 0x3FC5555560000000
  %10819 = fdiv fast float %10796, %10818
  %10820 = fadd fast float %10819, %10816
  %10821 = fmul fast float %10803, %10757
  %10822 = fsub fast float %10678, %10821
  %10823 = fmul fast float %10808, %10757
  %10824 = fadd fast float %10823, %10678
  %10825 = fmul fast float %10820, %10758
  %10826 = fadd fast float %10825, %10679
  %10827 = fmul fast float %10815, %10758
  %10828 = fsub fast float %10679, %10827
  %10829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10822, float %10828, float %10746, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10830 = extractvalue %dx.types.ResRet.f32 %10829, 0
  %10831 = extractvalue %dx.types.ResRet.f32 %10829, 1
  %10832 = extractvalue %dx.types.ResRet.f32 %10829, 2
  %10833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10824, float %10828, float %10746, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10834 = extractvalue %dx.types.ResRet.f32 %10833, 0
  %10835 = extractvalue %dx.types.ResRet.f32 %10833, 1
  %10836 = extractvalue %dx.types.ResRet.f32 %10833, 2
  %10837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10822, float %10826, float %10746, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10838 = extractvalue %dx.types.ResRet.f32 %10837, 0
  %10839 = extractvalue %dx.types.ResRet.f32 %10837, 1
  %10840 = extractvalue %dx.types.ResRet.f32 %10837, 2
  %10841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10824, float %10826, float %10746, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10842 = extractvalue %dx.types.ResRet.f32 %10841, 0
  %10843 = extractvalue %dx.types.ResRet.f32 %10841, 1
  %10844 = extractvalue %dx.types.ResRet.f32 %10841, 2
  %10845 = fsub fast float %10838, %10830
  %10846 = fsub fast float %10839, %10831
  %10847 = fsub fast float %10840, %10832
  %10848 = fmul fast float %10845, %10818
  %10849 = fmul fast float %10846, %10818
  %10850 = fmul fast float %10847, %10818
  %10851 = fadd fast float %10848, %10830
  %10852 = fadd fast float %10849, %10831
  %10853 = fadd fast float %10850, %10832
  %10854 = fsub fast float %10842, %10834
  %10855 = fsub fast float %10843, %10835
  %10856 = fsub fast float %10844, %10836
  %10857 = fmul fast float %10854, %10818
  %10858 = fmul fast float %10855, %10818
  %10859 = fmul fast float %10856, %10818
  %10860 = fsub fast float %10834, %10851
  %10861 = fadd fast float %10860, %10857
  %10862 = fsub fast float %10835, %10852
  %10863 = fadd fast float %10862, %10858
  %10864 = fsub fast float %10836, %10853
  %10865 = fadd fast float %10864, %10859
  %10866 = fmul fast float %10861, %10806
  %10867 = fmul fast float %10863, %10806
  %10868 = fmul fast float %10865, %10806
  %10869 = fadd fast float %10866, %10851
  %10870 = fadd fast float %10867, %10852
  %10871 = fadd fast float %10868, %10853
  %10872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10873 = extractvalue %dx.types.CBufRet.f32 %10872, 1
  %10874 = fmul fast float %10869, %10873
  %10875 = fmul fast float %10870, %10873
  %10876 = fmul fast float %10871, %10873
  br label %10877

; <label>:10877                                   ; preds = %10708, %10665
  %10878 = phi float [ %10748, %10708 ], [ 1.000000e+00, %10665 ]
  %10879 = phi float [ %10749, %10708 ], [ 1.000000e+00, %10665 ]
  %10880 = phi float [ %10750, %10708 ], [ 1.000000e+00, %10665 ]
  %10881 = phi float [ %10874, %10708 ], [ 0.000000e+00, %10665 ]
  %10882 = phi float [ %10875, %10708 ], [ 0.000000e+00, %10665 ]
  %10883 = phi float [ %10876, %10708 ], [ 0.000000e+00, %10665 ]
  %10884 = fmul fast float %10881, %9227
  %10885 = fmul fast float %10882, %9228
  %10886 = fmul fast float %10883, %9229
  %10887 = fmul fast float %10878, %10672
  %10888 = call float @dx.op.dot3.f32(i32 55, float %10878, float %10879, float %10880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10889 = call float @dx.op.dot3.f32(i32 55, float %10884, float %10885, float %10886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10890 = select i1 %258, float %10888, float %10878
  %10891 = select i1 %258, float %10888, float %10879
  %10892 = select i1 %258, float 1.000000e+00, float %10880
  %10893 = select i1 %258, float %10889, float %10884
  %10894 = select i1 %258, float 0.000000e+00, float %10885
  %10895 = select i1 %258, float 0.000000e+00, float %10886
  %10896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10897 = extractvalue %dx.types.CBufRet.i32 %10896, 3
  %10898 = and i32 %10897, 3
  %10899 = icmp ne i32 %10898, 0
  %10900 = and i32 %10897, 4
  %10901 = icmp ne i32 %10900, 0
  %10902 = and i1 %10899, %10901
  %10903 = and i1 %258, %10902
  br i1 %10903, label %10904, label %10910

; <label>:10904                                   ; preds = %10877
  %10905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10906 = extractvalue %dx.types.CBufRet.f32 %10905, 1
  %10907 = fadd fast float %10887, -1.000000e+00
  %10908 = fmul fast float %10906, %10907
  %10909 = fadd fast float %10908, 1.000000e+00
  br label %10910

; <label>:10910                                   ; preds = %10904, %10877
  %10911 = phi float [ %10909, %10904 ], [ %10887, %10877 ]
  %10912 = fadd fast float %10669, %10666
  %10913 = fmul fast float %10890, %10912
  %10914 = fadd fast float %10913, %10893
  %10915 = fadd fast float %10670, %10667
  %10916 = fmul fast float %10891, %10915
  %10917 = fadd fast float %10916, %10894
  %10918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10919 = extractvalue %dx.types.CBufRet.f32 %10918, 0
  br i1 %258, label %10920, label %10935

; <label>:10920                                   ; preds = %10910
  %10921 = fadd fast float %10914, %10917
  %10922 = fmul fast float %10919, %10921
  %10923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10924 = extractvalue %dx.types.CBufRet.f32 %10923, 3
  %10925 = extractvalue %dx.types.CBufRet.f32 %9211, 1
  %10926 = fsub fast float %9216, %9210
  %10927 = fadd fast float %10926, %9217
  %10928 = fsub fast float %10927, %10925
  %10929 = extractvalue %dx.types.CBufRet.f32 %9211, 2
  %10930 = fmul fast float %10928, %10929
  %10931 = call float @dx.op.unary.f32(i32 7, float %10930)  ; Saturate(value)
  %10932 = fsub fast float %10931, %10924
  %10933 = fmul fast float %10932, %10911
  %10934 = fadd fast float %10933, %10924
  br label %10961

; <label>:10935                                   ; preds = %10910
  %10936 = fadd fast float %10671, %10668
  %10937 = fmul fast float %10892, %10936
  %10938 = fadd fast float %10937, %10895
  %10939 = fmul fast float %10919, %10914
  %10940 = fmul fast float %10919, %10917
  %10941 = fmul fast float %10919, %10938
  %10942 = call float @dx.op.binary.f32(i32 35, float %10940, float %10941)  ; FMax(a,b)
  %10943 = call float @dx.op.binary.f32(i32 35, float %10939, float %10942)  ; FMax(a,b)
  %10944 = call float @dx.op.binary.f32(i32 35, float %9228, float %9229)  ; FMax(a,b)
  %10945 = call float @dx.op.binary.f32(i32 35, float %9227, float %10944)  ; FMax(a,b)
  %10946 = call float @dx.op.binary.f32(i32 35, float %10943, float %10945)  ; FMax(a,b)
  %10947 = fcmp fast ugt float %10946, 0x3F10000000000000
  br i1 %10947, label %10949, label %10948

; <label>:10948                                   ; preds = %10935
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10949

; <label>:10949                                   ; preds = %10948, %10935
  %10950 = add i32 %60, 356
  %10951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10950, i32 undef)  ; BufferLoad(srv,index,wot)
  %10952 = extractvalue %dx.types.ResRet.i32 %10951, 0
  %10953 = and i32 %10952, 32
  %10954 = icmp eq i32 %10953, 0
  br i1 %10954, label %10961, label %10955

; <label>:10955                                   ; preds = %10949
  %10956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10957 = extractvalue %dx.types.CBufRet.f32 %10956, 0
  %10958 = fmul fast float %10957, 0x3FE99999A0000000
  %10959 = fadd fast float %10957, %10939
  %10960 = fadd fast float %10958, %10941
  br label %10961

; <label>:10961                                   ; preds = %10955, %10949, %10920
  %10962 = phi float [ 1.000000e+00, %10920 ], [ %9228, %10955 ], [ %9228, %10949 ]
  %10963 = phi float [ 1.000000e+00, %10920 ], [ %9229, %10955 ], [ %9229, %10949 ]
  %10964 = phi float [ %10922, %10920 ], [ %10959, %10955 ], [ %10939, %10949 ]
  %10965 = phi float [ %10934, %10920 ], [ %10940, %10955 ], [ %10940, %10949 ]
  %10966 = phi float [ 1.000000e+00, %10920 ], [ %10960, %10955 ], [ %10941, %10949 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10967 = call float @dx.op.binary.f32(i32 36, float %10964, float 3.225500e+04)  ; FMin(a,b)
  %10968 = call float @dx.op.binary.f32(i32 36, float %10965, float 3.225500e+04)  ; FMin(a,b)
  %10969 = call float @dx.op.binary.f32(i32 36, float %10966, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10967)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10968)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10969)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10970 = call float @dx.op.binary.f32(i32 36, float %9227, float 3.225500e+04)  ; FMin(a,b)
  %10971 = call float @dx.op.binary.f32(i32 36, float %10962, float 3.225500e+04)  ; FMin(a,b)
  %10972 = call float @dx.op.binary.f32(i32 36, float %10963, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10970)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10971)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10972)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

