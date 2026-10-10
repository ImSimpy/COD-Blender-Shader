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
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x z 
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
; shader hash: 304cef7c1daa7a00a84e272469853e8a
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42 }
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
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = alloca [12 x float], align 4
  %98 = alloca [12 x float], align 4
  %99 = alloca [4 x float], align 4
  %100 = alloca [4 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [3 x float], align 4
  %103 = alloca [3 x float], align 4
  %104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fmul fast float %107, %93
  %109 = fmul fast float %107, %94
  %110 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %111 = bitcast float %110 to i32
  %112 = ashr i32 %111, 1
  %113 = sub nsw i32 1597250115, %112
  %114 = bitcast i32 %113 to float
  %115 = fmul fast float %114, %84
  %116 = fmul fast float %114, %85
  %117 = fmul fast float %114, %86
  %118 = fmul fast float %85, %82
  %119 = fmul fast float %86, %81
  %120 = fsub fast float %118, %119
  %121 = fmul fast float %86, %80
  %122 = fmul fast float %84, %82
  %123 = fsub fast float %121, %122
  %124 = fmul fast float %84, %81
  %125 = fmul fast float %85, %80
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %120, %83
  %128 = fmul fast float %123, %83
  %129 = fmul fast float %126, %83
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %133 = fmul fast float %108, 2.000000e+00
  %134 = fmul fast float %133, %131
  %135 = fmul fast float %109, 2.000000e+00
  %136 = fmul fast float %135, %132
  %137 = fsub fast float 1.000000e+00, %134
  %138 = fsub fast float 1.000000e+00, %136
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = fmul fast float %137, %140
  %144 = fmul fast float %137, %141
  %145 = fmul fast float %137, %142
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fmul fast float %138, %147
  %151 = fmul fast float %138, %148
  %152 = fmul fast float %138, %149
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = fadd fast float %150, %154
  %158 = fadd fast float %157, %143
  %159 = fadd fast float %151, %155
  %160 = fadd fast float %159, %144
  %161 = fadd fast float %152, %156
  %162 = fadd fast float %161, %145
  %163 = fmul fast float %158, %96
  %164 = fmul fast float %160, %96
  %165 = fmul fast float %162, %96
  %166 = fmul fast float %108, 5.000000e-01
  %167 = fmul fast float %109, 5.000000e-01
  %168 = fptosi float %166 to i32
  %169 = fptosi float %167 to i32
  %170 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %168, i32 %169, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = lshr i32 %171, 18
  %173 = uitofp i32 %172 to float
  %174 = fmul fast float %173, 0x3F4C00EBA0000000
  %175 = call float @dx.op.unary.f32(i32 21, float %174)  ; Exp(value)
  %176 = fadd fast float %175, -1.000000e+00
  %177 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %178 = extractvalue %dx.types.Dimensions %177, 0
  %179 = sitofp i32 %178 to float
  %180 = extractvalue %dx.types.Dimensions %177, 1
  %181 = sitofp i32 %180 to float
  %182 = fcmp fast oge float %166, %179
  %183 = fcmp fast oge float %167, %181
  %184 = or i1 %182, %183
  %185 = select i1 %184, float 0x4197782600000000, float %176
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %189 = fmul fast float %187, %108
  %190 = fmul fast float %188, %109
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = and i32 %192, 114688
  %194 = icmp ne i32 %193, 0
  %195 = select i1 %194, float %189, float 0.000000e+00
  %196 = select i1 %194, float %190, float 0.000000e+00
  %197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %195, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = fmul fast float %198, 2.550000e+02
  %200 = fptoui float %199 to i32
  %201 = select i1 %194, i32 %200, i32 0
  %202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %204 = extractvalue %dx.types.CBufRet.i32 %203, 3
  %205 = and i32 %204, 3
  %206 = icmp ne i32 %205, 0
  %207 = and i32 %204, 4
  %208 = icmp ne i32 %207, 0
  %209 = and i1 %206, %208
  br i1 %209, label %210, label %221

; <label>:210                                     ; preds = %0
  %211 = extractvalue %dx.types.CBufRet.f32 %202, 3
  %212 = fmul fast float %211, %109
  %213 = extractvalue %dx.types.CBufRet.f32 %202, 2
  %214 = fmul fast float %213, %108
  %215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %214, float %212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fsub fast float 1.000000e+00, %216
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 0
  %220 = fcmp fast olt float %217, %219
  br label %224

; <label>:221                                     ; preds = %0
  %222 = icmp eq i32 %207, 0
  %223 = and i1 %206, %222
  br label %224

; <label>:224                                     ; preds = %221, %210
  %225 = phi i1 [ %220, %210 ], [ %223, %221 ]
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = fmul fast float %227, 0x3FE3C6EF40000000
  %229 = frem fast float %108, 2.560000e+02
  %230 = frem fast float %109, 2.560000e+02
  %231 = fptoui float %229 to i32
  %232 = fptoui float %230 to i32
  %233 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = fadd fast float %234, %228
  %236 = call float @dx.op.unary.f32(i32 22, float %235)  ; Frc(value)
  %237 = add i32 %60, 156
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = add i32 %60, 288
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 65535
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %272, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = fmul fast float %274, 0x3F50624DE0000000
  %278 = fmul fast float %276, 0x3F50624DE0000000
  %279 = add i32 %60, 172
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = add i32 %60, 304
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = fmul fast float %316, 0x3F50624DE0000000
  %320 = fmul fast float %318, 0x3F50624DE0000000
  %321 = add i32 %60, 188
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = add i32 %60, 320
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = fmul fast float %358, 0x3F50624DE0000000
  %362 = fmul fast float %360, 0x3F50624DE0000000
  %363 = add i32 %60, 204
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = add i32 %60, 336
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %398, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = fmul fast float %400, 0x3F50624DE0000000
  %404 = fmul fast float %402, 0x3F50624DE0000000
  %405 = add i32 %60, 348
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 32
  %409 = icmp eq i32 %408, 0
  %410 = and i32 %407, 64
  %411 = icmp eq i32 %410, 0
  %412 = and i32 %407, 128
  %413 = icmp eq i32 %412, 0
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 2
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %433, label %418

; <label>:418                                     ; preds = %224
  %419 = add i32 %60, 488
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = add i32 %421, 0
  %423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %423, %dx.types.Handle %105, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = extractvalue %dx.types.ResRet.f32 %424, 1
  %427 = extractvalue %dx.types.ResRet.f32 %424, 2
  %428 = extractvalue %dx.types.ResRet.f32 %424, 3
  %429 = fmul fast float %428, %89
  %430 = fmul fast float %425, %90
  %431 = fmul fast float %426, %91
  %432 = fmul fast float %427, %92
  br label %433

; <label>:433                                     ; preds = %418, %224
  %434 = phi float [ %92, %224 ], [ %432, %418 ]
  %435 = phi float [ %91, %224 ], [ %431, %418 ]
  %436 = phi float [ %90, %224 ], [ %430, %418 ]
  %437 = phi float [ %89, %224 ], [ %429, %418 ]
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 2
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %461, label %442

; <label>:442                                     ; preds = %433
  %443 = add i32 %60, 44
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 1
  %447 = icmp ne i32 %446, 0
  %448 = select i1 %447, float %436, float 1.000000e+00
  %449 = add i32 %60, 60
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 1
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %435, float 1.000000e+00
  %455 = add i32 %60, 76
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = add i32 %60, 28
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = or i32 %473, %470
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %1236, label %476

; <label>:476                                     ; preds = %461
  %477 = and i32 %470, 262144
  %478 = icmp ne i32 %477, 0
  %479 = select i1 %478, float %62, float 1.000000e+00
  %480 = select i1 %478, float %63, float 0.000000e+00
  %481 = select i1 %478, float %64, float 0.000000e+00
  %482 = select i1 %478, float %65, float 1.000000e+00
  %483 = select i1 %478, float %66, float %87
  %484 = select i1 %478, float %67, float %88
  %485 = add i32 %60, 284
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = lshr i32 %487, 16
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = fmul fast float %489, 0x3F50624DE0000000
  %491 = add i32 %60, 88
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 16
  %495 = and i32 %494, 255
  %496 = lshr i32 %493, 24
  %497 = add i32 %60, 292
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 65535
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %499, 16
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = add i32 %60, 32
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %583 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %584 = fadd fast float %581, %163
  %585 = fadd fast float %582, %164
  %586 = fadd fast float %583, %165
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = call float @dx.op.unary.f32(i32 7, float %588)  ; Saturate(value)
  %590 = icmp eq i32 %61, 65535
  br i1 %590, label %685, label %591

; <label>:591                                     ; preds = %579
  %592 = lshr i32 %61, 1
  %593 = shl i32 %592, 2
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = add nuw nsw i32 %603, 12
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = add nuw nsw i32 %603, 24
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = add nuw nsw i32 %603, 36
  %619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = add i32 %638, 0
  %640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %641 = call float @dx.op.unary.f32(i32 22, float %633)  ; Frc(value)
  %642 = call float @dx.op.unary.f32(i32 22, float %634)  ; Frc(value)
  %643 = call float @dx.op.unary.f32(i32 22, float %635)  ; Frc(value)
  %644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %640, %dx.types.Handle %55, float %641, float %642, float %643, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = add i32 %676, 0
  %678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %678, %dx.types.Handle %53, float %672, float %673, float %674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 256
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %740, label %694

; <label>:694                                     ; preds = %688
  %695 = add i32 %60, 424
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = add i32 %697, 0
  %699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %700 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %699, %dx.types.Handle %105, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = add i32 %60, 100
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 128
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %762, label %746

; <label>:746                                     ; preds = %740
  %747 = add i32 %60, 408
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = add i32 %749, 0
  %751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %752 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %751, %dx.types.Handle %105, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 16
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %966, label %768

; <label>:768                                     ; preds = %762
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %60, 360
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = add i32 %773, 0
  %775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %775, %dx.types.Handle %104, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 512
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %801, label %793

; <label>:793                                     ; preds = %768
  %794 = add i32 %60, 440
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = add i32 %796, 0
  %798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %797, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %799 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %798, %dx.types.Handle %105, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  br label %801

; <label>:801                                     ; preds = %793, %768
  %802 = phi float [ %800, %793 ], [ 1.000000e+00, %768 ]
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = and i32 %804, 33554432
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %913, label %807

; <label>:807                                     ; preds = %801
  %808 = add i32 %60, 224
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = lshr i32 %810, 16
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = add i32 %60, 228
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.i32 %971, 1
  %973 = and i32 %972, 1
  %974 = icmp ne i32 %973, 0
  %975 = add i32 %60, 356
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 32
  %979 = icmp ne i32 %978, 0
  %980 = and i1 %974, %979
  %981 = select i1 %980, float 1.000000e+00, float %968
  %982 = select i1 %980, float 0x3FD3333340000000, float %969
  %983 = select i1 %980, float 0x3FD3333340000000, float %970
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 32
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %1060, label %988

; <label>:988                                     ; preds = %966
  %989 = add i32 %60, 92
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = add i32 %60, 376
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = add i32 %994, 0
  %996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %996, %dx.types.Handle %104, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 67108864
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1056, label %1040

; <label>:1040                                    ; preds = %988
  %1041 = add i32 %60, 280
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 65535
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = lshr i32 %1067, 22
  %1069 = shl nuw nsw i32 %1068, 5
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 64
  %1074 = icmp eq i32 %1073, 0
  br i1 %1074, label %1108, label %1075

; <label>:1075                                    ; preds = %1060
  %1076 = add i32 %60, 392
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = add i32 %1078, 0
  %1080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 131072
  %1084 = icmp eq i32 %1083, 0
  %1085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1080, %dx.types.Handle %104, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = fmul fast float %1086, %242
  %1090 = fmul fast float %1087, %245
  %1091 = fmul fast float %1088, %248
  br i1 %1084, label %1098, label %1092

; <label>:1092                                    ; preds = %1075
  %1093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = and i32 %1113, 1024
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1146, label %1116

; <label>:1116                                    ; preds = %1108
  %1117 = add i32 %60, 152
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = fmul fast float %1121, 0x3F70101020000000
  %1123 = lshr i32 %1119, 8
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = fmul fast float %1125, 0x3F70101020000000
  %1127 = lshr i32 %1119, 16
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1129, 0x3F70101020000000
  %1131 = fmul fast float %1122, %1122
  %1132 = fmul fast float %1126, %1126
  %1133 = fmul fast float %1130, %1130
  %1134 = add i32 %60, 456
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = add i32 %1136, 0
  %1138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1138, %dx.types.Handle %105, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = fmul fast float %1131, %1140
  %1144 = fmul fast float %1132, %1141
  %1145 = fmul fast float %1133, %1142
  br label %1146

; <label>:1146                                    ; preds = %1116, %1108
  %1147 = phi float [ %1143, %1116 ], [ 0.000000e+00, %1108 ]
  %1148 = phi float [ %1144, %1116 ], [ 0.000000e+00, %1108 ]
  %1149 = phi float [ %1145, %1116 ], [ 0.000000e+00, %1108 ]
  %1150 = fcmp fast ogt float %1147, 0.000000e+00
  %1151 = fcmp fast ogt float %1148, 0.000000e+00
  %1152 = fcmp fast ogt float %1149, 0.000000e+00
  %1153 = call float @dx.op.unary.f32(i32 23, float %1147)  ; Log(value)
  %1154 = call float @dx.op.unary.f32(i32 23, float %1148)  ; Log(value)
  %1155 = call float @dx.op.unary.f32(i32 23, float %1149)  ; Log(value)
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = lshr i32 %1157, 7
  %1159 = and i32 %1158, 32752
  %1160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1159)  ; LegacyF16ToF32(value)
  %1161 = fmul fast float %1153, 0xBFE62E4300000000
  %1162 = fmul fast float %1161, %1160
  %1163 = fmul fast float %1154, 0xBFE62E4300000000
  %1164 = fmul fast float %1163, %1160
  %1165 = fmul fast float %1155, 0xBFE62E4300000000
  %1166 = fmul fast float %1165, %1160
  %1167 = select i1 %1150, float %1162, float 1.270000e+02
  %1168 = select i1 %1151, float %1164, float 1.270000e+02
  %1169 = select i1 %1152, float %1166, float 1.270000e+02
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 10240
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1218, label %1174

; <label>:1174                                    ; preds = %1146
  %1175 = add i32 %60, 472
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = add i32 %1177, 0
  %1179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1179, %dx.types.Handle %105, float %575, float %576, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = and i32 %1184, 1048576
  %1186 = icmp ne i32 %1185, 0
  %1187 = and i32 %1184, 8192
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1204, label %1189

; <label>:1189                                    ; preds = %1174
  %1190 = extractvalue %dx.types.ResRet.f32 %1180, 2
  %1191 = select i1 %1186, float %1190, float %1181
  %1192 = extractvalue %dx.types.ResRet.f32 %1180, 0
  %1193 = select i1 %1186, float %1192, float %1181
  %1194 = add i32 %60, 96
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = lshr i32 %1196, 16
  %1198 = and i32 %1197, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = fmul fast float %1199, 0x3F80101020000000
  %1201 = fmul fast float %1200, %1193
  %1202 = fmul fast float %1200, %1181
  %1203 = fmul fast float %1200, %1191
  br label %1204

; <label>:1204                                    ; preds = %1189, %1174
  %1205 = phi float [ %1201, %1189 ], [ 0.000000e+00, %1174 ]
  %1206 = phi float [ %1202, %1189 ], [ 0.000000e+00, %1174 ]
  %1207 = phi float [ %1203, %1189 ], [ 0.000000e+00, %1174 ]
  %1208 = and i32 %1184, 2048
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1218, label %1210

; <label>:1210                                    ; preds = %1204
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = shl i32 %1212, 4
  %1214 = and i32 %1213, 32752
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = fmul fast float %1215, %1182
  %1217 = call float @dx.op.binary.f32(i32 35, float %1216, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1218

; <label>:1218                                    ; preds = %1210, %1204, %1146
  %1219 = phi float [ %1205, %1210 ], [ %1205, %1204 ], [ 0.000000e+00, %1146 ]
  %1220 = phi float [ %1206, %1210 ], [ %1206, %1204 ], [ 0.000000e+00, %1146 ]
  %1221 = phi float [ %1207, %1210 ], [ %1207, %1204 ], [ 0.000000e+00, %1146 ]
  %1222 = phi float [ %1217, %1210 ], [ 0x3F70101020000000, %1204 ], [ 0x3F70101020000000, %1146 ]
  %1223 = add i32 %60, 96
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = lshr i32 %1225, 8
  %1229 = and i32 %1228, 255
  %1230 = uitofp i32 %1229 to float
  %1231 = call float @dx.op.dot3.f32(i32 55, float %981, float %982, float %983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1232 = fmul fast float %1230, %1231
  %1233 = fadd fast float %1232, %1227
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  br label %1236

; <label>:1236                                    ; preds = %1218, %461
  %1237 = phi float [ 0.000000e+00, %461 ], [ %1062, %1218 ]
  %1238 = phi float [ 0.000000e+00, %461 ], [ %1063, %1218 ]
  %1239 = phi float [ 0.000000e+00, %461 ], [ %981, %1218 ]
  %1240 = phi float [ 0.000000e+00, %461 ], [ %982, %1218 ]
  %1241 = phi float [ 0.000000e+00, %461 ], [ %983, %1218 ]
  %1242 = phi float [ 0.000000e+00, %461 ], [ %1109, %1218 ]
  %1243 = phi float [ 0.000000e+00, %461 ], [ %1110, %1218 ]
  %1244 = phi float [ 0.000000e+00, %461 ], [ %1111, %1218 ]
  %1245 = phi float [ 0.000000e+00, %461 ], [ %1219, %1218 ]
  %1246 = phi float [ 0.000000e+00, %461 ], [ %1220, %1218 ]
  %1247 = phi float [ 0.000000e+00, %461 ], [ %1221, %1218 ]
  %1248 = phi float [ 0.000000e+00, %461 ], [ %1167, %1218 ]
  %1249 = phi float [ 0.000000e+00, %461 ], [ %1168, %1218 ]
  %1250 = phi float [ 0.000000e+00, %461 ], [ %1169, %1218 ]
  %1251 = phi float [ 0.000000e+00, %461 ], [ %967, %1218 ]
  %1252 = phi float [ 0.000000e+00, %461 ], [ %763, %1218 ]
  %1253 = phi float [ 0.000000e+00, %461 ], [ %1061, %1218 ]
  %1254 = phi float [ 0.000000e+00, %461 ], [ %1064, %1218 ]
  %1255 = phi float [ 0.000000e+00, %461 ], [ %1222, %1218 ]
  %1256 = phi float [ 0.000000e+00, %461 ], [ %1235, %1218 ]
  br i1 %409, label %2294, label %1257

; <label>:1257                                    ; preds = %1236
  %1258 = icmp ult i32 %467, 2
  %1259 = add i32 %60, 40
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %60, 44
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = or i32 %1264, %1261
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %2294, label %1267

; <label>:1267                                    ; preds = %1257
  %1268 = and i32 %1261, 262144
  %1269 = icmp ne i32 %1268, 0
  %1270 = select i1 %1269, float %62, float 1.000000e+00
  %1271 = select i1 %1269, float %63, float 0.000000e+00
  %1272 = select i1 %1269, float %64, float 0.000000e+00
  %1273 = select i1 %1269, float %65, float 1.000000e+00
  %1274 = select i1 %1269, float %66, float %87
  %1275 = select i1 %1269, float %67, float %88
  %1276 = add i32 %60, 300
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = lshr i32 %1278, 16
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = fmul fast float %1280, 0x3F50624DE0000000
  %1282 = add i32 %60, 104
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = lshr i32 %1284, 16
  %1286 = and i32 %1285, 255
  %1287 = lshr i32 %1284, 24
  %1288 = add i32 %60, 308
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 65535
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = lshr i32 %1290, 16
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = add i32 %60, 48
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 22
  %1299 = shl nuw nsw i32 %1298, 5
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = shl i32 %1297, 4
  %1302 = and i32 %1301, 32752
  %1303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1302)  ; LegacyF16ToF32(value)
  %1304 = lshr i32 %1297, 7
  %1305 = and i32 %1304, 32752
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 3
  %1309 = fmul fast float %1308, 1.000000e+03
  %1310 = fmul fast float %319, %1309
  %1311 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1312 = fadd fast float %1311, %309
  %1313 = fmul fast float %320, %1309
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = fadd fast float %1314, %311
  %1316 = fmul fast float %1281, %1309
  %1317 = call float @dx.op.unary.f32(i32 22, float %1316)  ; Frc(value)
  %1318 = fmul fast float %1317, 0x401921FB60000000
  %1319 = fadd fast float %1318, %1300
  %1320 = call float @dx.op.unary.f32(i32 13, float %1319)  ; Sin(value)
  %1321 = call float @dx.op.unary.f32(i32 12, float %1319)  ; Cos(value)
  %1322 = fsub fast float -0.000000e+00, %1320
  %1323 = fadd fast float %1274, -5.000000e-01
  %1324 = fadd fast float %1275, -5.000000e-01
  %1325 = fmul fast float %1292, %1323
  %1326 = fmul fast float %1294, %1324
  %1327 = fadd fast float %1325, 5.000000e-01
  %1328 = fadd fast float %1326, 5.000000e-01
  %1329 = fmul fast float %1303, %1327
  %1330 = fmul fast float %1306, %1328
  %1331 = fmul fast float %1321, %1329
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1322, float %1330, float %1331)  ; FMad(a,b,c)
  %1333 = fmul fast float %1320, %1329
  %1334 = call float @dx.op.tertiary.f32(i32 46, float %1321, float %1330, float %1333)  ; FMad(a,b,c)
  %1335 = fadd fast float %1312, %1332
  %1336 = fadd fast float %1315, %1334
  %1337 = icmp ugt i32 %1286, 1
  %1338 = icmp ugt i32 %1284, 33554431
  %1339 = or i1 %1338, %1337
  br i1 %1339, label %1340, label %1365

; <label>:1340                                    ; preds = %1267
  %1341 = add i32 %60, 244
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = lshr i32 %1343, 16
  %1345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1344)  ; LegacyF16ToF32(value)
  %1346 = fmul fast float %1308, %1345
  %1347 = call float @dx.op.unary.f32(i32 22, float %1346)  ; Frc(value)
  %1348 = mul nuw nsw i32 %1286, %1287
  %1349 = uitofp i32 %1348 to float
  %1350 = fmul fast float %1347, %1349
  %1351 = call float @dx.op.unary.f32(i32 27, float %1350)  ; Round_ni(value)
  %1352 = fptoui float %1351 to i32
  %1353 = urem i32 %1352, %1286
  %1354 = udiv i32 %1352, %1287
  %1355 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1356 = call float @dx.op.unary.f32(i32 22, float %1336)  ; Frc(value)
  %1357 = uitofp i32 %1353 to float
  %1358 = uitofp i32 %1354 to float
  %1359 = fadd fast float %1355, %1357
  %1360 = fadd fast float %1356, %1358
  %1361 = uitofp i32 %1286 to float
  %1362 = uitofp i32 %1287 to float
  %1363 = fdiv fast float %1359, %1361
  %1364 = fdiv fast float %1360, %1362
  br label %1365

; <label>:1365                                    ; preds = %1340, %1267
  %1366 = phi float [ %1363, %1340 ], [ %1335, %1267 ]
  %1367 = phi float [ %1364, %1340 ], [ %1336, %1267 ]
  %1368 = and i32 %1261, 16777216
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1479, label %1370

; <label>:1370                                    ; preds = %1365
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.CBufRet.f32 %1371, 1
  %1374 = extractvalue %dx.types.CBufRet.f32 %1371, 2
  %1375 = fadd fast float %1372, %163
  %1376 = fadd fast float %1373, %164
  %1377 = fadd fast float %1374, %165
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1381 = icmp eq i32 %61, 65535
  br i1 %1381, label %1476, label %1382

; <label>:1382                                    ; preds = %1370
  %1383 = lshr i32 %61, 1
  %1384 = shl i32 %1383, 2
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %61, 1
  %1388 = icmp ne i32 %1387, 0
  %1389 = lshr i32 %1386, 16
  %1390 = and i32 %1386, 65535
  %1391 = select i1 %1388, i32 %1389, i32 %1390
  %1392 = icmp eq i32 %1391, 65535
  br i1 %1392, label %1472, label %1393

; <label>:1393                                    ; preds = %1382
  %1394 = mul nuw nsw i32 %1391, 40
  %1395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.f32 %1395, 0
  %1397 = extractvalue %dx.types.ResRet.f32 %1395, 1
  %1398 = extractvalue %dx.types.ResRet.f32 %1395, 2
  %1399 = add nuw nsw i32 %1394, 12
  %1400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1399, i32 undef)  ; BufferLoad(srv,index,wot)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = add nuw nsw i32 %1394, 24
  %1405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.ResRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.ResRet.f32 %1405, 2
  %1409 = add nuw nsw i32 %1394, 36
  %1410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = fsub fast float %1375, %1396
  %1413 = fsub fast float %1376, %1397
  %1414 = fsub fast float %1377, %1398
  %1415 = fmul fast float %1411, %1412
  %1416 = fmul fast float %1411, %1413
  %1417 = fmul fast float %1411, %1414
  %1418 = call float @dx.op.unary.f32(i32 27, float %1415)  ; Round_ni(value)
  %1419 = call float @dx.op.unary.f32(i32 27, float %1416)  ; Round_ni(value)
  %1420 = call float @dx.op.unary.f32(i32 27, float %1417)  ; Round_ni(value)
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = fadd fast float %1419, 5.000000e-01
  %1423 = fadd fast float %1420, 5.000000e-01
  %1424 = fmul fast float %1421, %1401
  %1425 = fmul fast float %1422, %1402
  %1426 = fmul fast float %1423, %1403
  %1427 = shl i32 %61, 2
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1427, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = add i32 %1429, 0
  %1431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1432 = call float @dx.op.unary.f32(i32 22, float %1424)  ; Frc(value)
  %1433 = call float @dx.op.unary.f32(i32 22, float %1425)  ; Frc(value)
  %1434 = call float @dx.op.unary.f32(i32 22, float %1426)  ; Frc(value)
  %1435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1431, %dx.types.Handle %55, float %1432, float %1433, float %1434, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.ResRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.ResRet.f32 %1435, 2
  %1439 = fmul fast float %1436, 1.023000e+03
  %1440 = fmul fast float %1437, 1.023000e+03
  %1441 = fmul fast float %1438, 1.023000e+03
  %1442 = fadd fast float %1439, 5.000000e-01
  %1443 = fadd fast float %1440, 5.000000e-01
  %1444 = fadd fast float %1441, 5.000000e-01
  %1445 = call float @dx.op.unary.f32(i32 27, float %1442)  ; Round_ni(value)
  %1446 = call float @dx.op.unary.f32(i32 27, float %1443)  ; Round_ni(value)
  %1447 = call float @dx.op.unary.f32(i32 27, float %1444)  ; Round_ni(value)
  %1448 = fsub fast float %1415, %1418
  %1449 = fsub fast float %1416, %1419
  %1450 = fsub fast float %1417, %1420
  %1451 = fmul fast float %1448, 7.500000e-01
  %1452 = fmul fast float %1449, 7.500000e-01
  %1453 = fmul fast float %1450, 7.500000e-01
  %1454 = fadd fast float %1418, 1.250000e-01
  %1455 = fadd fast float %1454, %1451
  %1456 = fadd fast float %1455, %1445
  %1457 = fadd fast float %1419, 1.250000e-01
  %1458 = fadd fast float %1457, %1452
  %1459 = fadd fast float %1458, %1446
  %1460 = fadd fast float %1420, 1.250000e-01
  %1461 = fadd fast float %1460, %1453
  %1462 = fadd fast float %1461, %1447
  %1463 = fmul fast float %1456, %1406
  %1464 = fmul fast float %1459, %1407
  %1465 = fmul fast float %1462, %1408
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1427, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = add i32 %1467, 0
  %1469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1469, %dx.types.Handle %53, float %1463, float %1464, float %1465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  br label %1472

; <label>:1472                                    ; preds = %1393, %1382
  %1473 = phi float [ %1471, %1393 ], [ -1.000000e+00, %1382 ]
  %1474 = fadd fast float %1473, %1380
  %1475 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  br label %1476

; <label>:1476                                    ; preds = %1472, %1370
  %1477 = phi float [ %1475, %1472 ], [ %1380, %1370 ]
  %1478 = fmul fast float %1477, %464
  br label %1479

; <label>:1479                                    ; preds = %1476, %1365
  %1480 = phi float [ %1478, %1476 ], [ %464, %1365 ]
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 256
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1531, label %1485

; <label>:1485                                    ; preds = %1479
  %1486 = add i32 %60, 428
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = add i32 %1488, 0
  %1490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1490, %dx.types.Handle %105, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = add i32 %60, 116
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = shl i32 %1495, 4
  %1497 = and i32 %1496, 32752
  %1498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1497)  ; LegacyF16ToF32(value)
  %1499 = lshr i32 %1495, 7
  %1500 = and i32 %1499, 32752
  %1501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1500)  ; LegacyF16ToF32(value)
  %1502 = fsub fast float 1.000000e+00, %1480
  %1503 = call float @dx.op.binary.f32(i32 35, float %1502, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1504 = bitcast float %1480 to i32
  %1505 = sitofp i32 %1504 to float
  %1506 = fadd fast float %1505, 0xC1CFBF8940000000
  %1507 = fmul fast float %1501, %1506
  %1508 = fadd fast float %1507, 0x41CFBF8940000000
  %1509 = fptosi float %1508 to i32
  %1510 = bitcast i32 %1509 to float
  %1511 = bitcast float %1503 to i32
  %1512 = sitofp i32 %1511 to float
  %1513 = fadd fast float %1512, 0xC1CFBF8940000000
  %1514 = fmul fast float %1513, %1501
  %1515 = fadd fast float %1514, 0x41CFBF8940000000
  %1516 = fptosi float %1515 to i32
  %1517 = bitcast i32 %1516 to float
  %1518 = fmul fast float %1510, %1498
  %1519 = fmul fast float %1517, %1498
  %1520 = fsub fast float %1503, %1518
  %1521 = fadd fast float %1519, %1503
  %1522 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1523 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1524 = fsub fast float %1492, %1522
  %1525 = fsub fast float %1523, %1522
  %1526 = bitcast float %1525 to i32
  %1527 = sub nsw i32 2129859010, %1526
  %1528 = bitcast i32 %1527 to float
  %1529 = fmul fast float %1528, %1524
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  br label %1531

; <label>:1531                                    ; preds = %1485, %1479
  %1532 = phi float [ %1530, %1485 ], [ %1480, %1479 ]
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 128
  %1536 = icmp eq i32 %1535, 0
  br i1 %1536, label %1553, label %1537

; <label>:1537                                    ; preds = %1531
  %1538 = add i32 %60, 412
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = add i32 %1540, 0
  %1542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1542, %dx.types.Handle %105, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1544 = extractvalue %dx.types.ResRet.f32 %1543, 0
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 524288
  %1548 = icmp ne i32 %1547, 0
  %1549 = fcmp fast ogt float %1544, 0x3FE0101020000000
  %1550 = select i1 %1549, float 1.000000e+00, float 0.000000e+00
  %1551 = select i1 %1548, float %1550, float %1544
  %1552 = fmul fast float %1551, %1532
  br label %1553

; <label>:1553                                    ; preds = %1537, %1531
  %1554 = phi float [ %1552, %1537 ], [ %1532, %1531 ]
  %1555 = fcmp fast ult float %1554, 0x3F70101020000000
  br i1 %1555, label %2294, label %1556

; <label>:1556                                    ; preds = %1553
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 16
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1759, label %1561

; <label>:1561                                    ; preds = %1556
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %60, 364
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = add i32 %1566, 0
  %1568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1568, %dx.types.Handle %104, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  %1571 = extractvalue %dx.types.ResRet.f32 %1569, 1
  %1572 = extractvalue %dx.types.ResRet.f32 %1569, 2
  %1573 = extractvalue %dx.types.ResRet.f32 %1569, 3
  %1574 = and i32 %1563, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = lshr i32 %1563, 8
  %1577 = and i32 %1576, 255
  %1578 = uitofp i32 %1577 to float
  %1579 = fmul fast float %1573, %1575
  %1580 = fadd fast float %1579, %1578
  %1581 = fmul fast float %1580, 0x3F70101000000000
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = and i32 %1583, 512
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1594, label %1586

; <label>:1586                                    ; preds = %1561
  %1587 = add i32 %60, 444
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1587, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = add i32 %1589, 0
  %1591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1591, %dx.types.Handle %105, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1593 = extractvalue %dx.types.ResRet.f32 %1592, 0
  br label %1594

; <label>:1594                                    ; preds = %1586, %1561
  %1595 = phi float [ %1593, %1586 ], [ 1.000000e+00, %1561 ]
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = and i32 %1597, 33554432
  %1599 = icmp eq i32 %1598, 0
  br i1 %1599, label %1706, label %1600

; <label>:1600                                    ; preds = %1594
  %1601 = add i32 %60, 240
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 65535
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = lshr i32 %1603, 16
  %1607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1606)  ; LegacyF16ToF32(value)
  %1608 = add i32 %60, 244
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = and i32 %1610, 65535
  %1612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1611)  ; LegacyF16ToF32(value)
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = lshr i32 %1614, 24
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = and i32 %1614, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = fmul fast float %1619, 0x3F70101020000000
  %1621 = lshr i32 %1614, 8
  %1622 = and i32 %1621, 255
  %1623 = uitofp i32 %1622 to float
  %1624 = fmul fast float %1623, 0x3F70101020000000
  %1625 = lshr i32 %1614, 16
  %1626 = and i32 %1625, 255
  %1627 = uitofp i32 %1626 to float
  %1628 = fmul fast float %1627, 0x3F70101020000000
  %1629 = add i32 %60, 236
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1629, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = lshr i32 %1631, 24
  %1633 = uitofp i32 %1632 to float
  %1634 = fmul fast float %1633, 0x3F70101020000000
  %1635 = and i32 %1631, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = fmul fast float %1636, 0x3F70101020000000
  %1638 = lshr i32 %1631, 8
  %1639 = and i32 %1638, 255
  %1640 = uitofp i32 %1639 to float
  %1641 = fmul fast float %1640, 0x3F70101020000000
  %1642 = lshr i32 %1631, 16
  %1643 = and i32 %1642, 255
  %1644 = uitofp i32 %1643 to float
  %1645 = fmul fast float %1644, 0x3F70101020000000
  %1646 = bitcast float %1570 to i32
  %1647 = ashr i32 %1646, 1
  %1648 = sub nsw i32 1597463174, %1647
  %1649 = bitcast i32 %1648 to float
  %1650 = fmul fast float %1570, 5.000000e-01
  %1651 = fmul fast float %1649, %1649
  %1652 = fmul fast float %1651, %1650
  %1653 = fsub fast float 1.500000e+00, %1652
  %1654 = fmul fast float %1649, %1570
  %1655 = fmul fast float %1654, %1653
  %1656 = bitcast float %1571 to i32
  %1657 = ashr i32 %1656, 1
  %1658 = sub nsw i32 1597463174, %1657
  %1659 = bitcast i32 %1658 to float
  %1660 = fmul fast float %1571, 5.000000e-01
  %1661 = fmul fast float %1659, %1659
  %1662 = fmul fast float %1661, %1660
  %1663 = fsub fast float 1.500000e+00, %1662
  %1664 = fmul fast float %1659, %1571
  %1665 = fmul fast float %1664, %1663
  %1666 = bitcast float %1572 to i32
  %1667 = ashr i32 %1666, 1
  %1668 = sub nsw i32 1597463174, %1667
  %1669 = bitcast i32 %1668 to float
  %1670 = fmul fast float %1572, 5.000000e-01
  %1671 = fmul fast float %1669, %1669
  %1672 = fmul fast float %1671, %1670
  %1673 = fsub fast float 1.500000e+00, %1672
  %1674 = fmul fast float %1669, %1572
  %1675 = fmul fast float %1674, %1673
  %1676 = fsub fast float %1655, %1637
  %1677 = fsub fast float %1665, %1641
  %1678 = fsub fast float %1675, %1645
  %1679 = fmul fast float %1676, %1605
  %1680 = fmul fast float %1677, %1607
  %1681 = fmul fast float %1678, %1612
  %1682 = fadd fast float %1679, %1620
  %1683 = fadd fast float %1680, %1624
  %1684 = fadd fast float %1681, %1628
  %1685 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1686 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1687 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1688 = fmul fast float %1685, %1685
  %1689 = fmul fast float %1686, %1686
  %1690 = fmul fast float %1687, %1687
  %1691 = fsub fast float %1688, %1570
  %1692 = fsub fast float %1689, %1571
  %1693 = fsub fast float %1690, %1572
  %1694 = fmul fast float %1691, %1595
  %1695 = fmul fast float %1692, %1595
  %1696 = fmul fast float %1693, %1595
  %1697 = fadd fast float %1694, %1570
  %1698 = fadd fast float %1695, %1571
  %1699 = fadd fast float %1696, %1572
  %1700 = fadd fast float %1617, %1581
  %1701 = fsub fast float %1700, %1634
  %1702 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1703 = fsub fast float %1702, %1581
  %1704 = fmul fast float %1703, %1595
  %1705 = fadd fast float %1704, %1581
  br label %1759

; <label>:1706                                    ; preds = %1594
  %1707 = and i32 %1597, 134217728
  %1708 = icmp eq i32 %1707, 0
  br i1 %1708, label %1743, label %1709

; <label>:1709                                    ; preds = %1706
  %1710 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1711 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %1712 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %1713 = fadd fast float %1710, -5.000000e-01
  %1714 = fadd fast float %1711, -5.000000e-01
  %1715 = fadd fast float %1712, -5.000000e-01
  %1716 = fmul fast float %1713, %1595
  %1717 = fmul fast float %1714, %1595
  %1718 = fmul fast float %1715, %1595
  %1719 = fadd fast float %1716, 5.000000e-01
  %1720 = fadd fast float %1717, 5.000000e-01
  %1721 = fadd fast float %1718, 5.000000e-01
  %1722 = call float @dx.op.unary.f32(i32 24, float %1570)  ; Sqrt(value)
  %1723 = call float @dx.op.unary.f32(i32 24, float %1571)  ; Sqrt(value)
  %1724 = call float @dx.op.unary.f32(i32 24, float %1572)  ; Sqrt(value)
  %1725 = fmul fast float %1719, 2.000000e+00
  %1726 = fsub fast float 1.000000e+00, %1725
  %1727 = fmul fast float %1726, %1722
  %1728 = fadd fast float %1727, %1725
  %1729 = fmul fast float %1728, %1722
  %1730 = fmul fast float %1720, 2.000000e+00
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = fmul fast float %1731, %1723
  %1733 = fadd fast float %1732, %1730
  %1734 = fmul fast float %1733, %1723
  %1735 = fmul fast float %1721, 2.000000e+00
  %1736 = fsub fast float 1.000000e+00, %1735
  %1737 = fmul fast float %1736, %1724
  %1738 = fadd fast float %1737, %1735
  %1739 = fmul fast float %1738, %1724
  %1740 = fmul fast float %1729, %1729
  %1741 = fmul fast float %1734, %1734
  %1742 = fmul fast float %1739, %1739
  br label %1759

; <label>:1743                                    ; preds = %1706
  %1744 = fmul fast float %296, %296
  %1745 = fmul fast float %300, %300
  %1746 = fmul fast float %304, %304
  %1747 = fadd fast float %1744, -1.000000e+00
  %1748 = fadd fast float %1745, -1.000000e+00
  %1749 = fadd fast float %1746, -1.000000e+00
  %1750 = fmul fast float %1595, %1747
  %1751 = fmul fast float %1595, %1748
  %1752 = fmul fast float %1595, %1749
  %1753 = fadd fast float %1750, 1.000000e+00
  %1754 = fadd fast float %1751, 1.000000e+00
  %1755 = fadd fast float %1752, 1.000000e+00
  %1756 = fmul fast float %1753, %1570
  %1757 = fmul fast float %1754, %1571
  %1758 = fmul fast float %1755, %1572
  br label %1759

; <label>:1759                                    ; preds = %1743, %1709, %1600, %1556
  %1760 = phi float [ %1705, %1600 ], [ %1581, %1709 ], [ %1581, %1743 ], [ 0x3FA23C0BE0000000, %1556 ]
  %1761 = phi float [ %1697, %1600 ], [ %1740, %1709 ], [ %1756, %1743 ], [ 1.000000e+00, %1556 ]
  %1762 = phi float [ %1698, %1600 ], [ %1741, %1709 ], [ %1757, %1743 ], [ 1.000000e+00, %1556 ]
  %1763 = phi float [ %1699, %1600 ], [ %1742, %1709 ], [ %1758, %1743 ], [ 1.000000e+00, %1556 ]
  %1764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.i32 %1764, 1
  %1766 = and i32 %1765, 1
  %1767 = icmp ne i32 %1766, 0
  %1768 = add i32 %60, 356
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 32
  %1772 = icmp ne i32 %1771, 0
  %1773 = and i1 %1767, %1772
  %1774 = select i1 %1773, float 1.000000e+00, float %1761
  %1775 = select i1 %1773, float 0x3FD3333340000000, float %1762
  %1776 = select i1 %1773, float 0x3FD3333340000000, float %1763
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = and i32 %1778, 32
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %1853, label %1781

; <label>:1781                                    ; preds = %1759
  %1782 = add i32 %60, 108
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = add i32 %60, 380
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = add i32 %1787, 0
  %1789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1789, %dx.types.Handle %104, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1791 = extractvalue %dx.types.ResRet.f32 %1790, 0
  %1792 = extractvalue %dx.types.ResRet.f32 %1790, 1
  %1793 = extractvalue %dx.types.ResRet.f32 %1790, 2
  %1794 = extractvalue %dx.types.ResRet.f32 %1790, 3
  %1795 = and i32 %1784, 255
  %1796 = uitofp i32 %1795 to float
  %1797 = lshr i32 %1784, 8
  %1798 = and i32 %1797, 255
  %1799 = uitofp i32 %1798 to float
  %1800 = lshr i32 %1784, 16
  %1801 = and i32 %1800, 255
  %1802 = uitofp i32 %1801 to float
  %1803 = fmul fast float %1802, 0x3F70101000000000
  %1804 = fmul fast float %1791, %1796
  %1805 = fadd fast float %1804, %1799
  %1806 = fmul fast float %1805, 0x3F70101000000000
  %1807 = fadd fast float %1792, -5.000000e-01
  %1808 = fadd fast float %1794, -5.000000e-01
  %1809 = fmul fast float %1807, %1803
  %1810 = fmul fast float %1808, %1803
  %1811 = fadd fast float %1809, 5.000000e-01
  %1812 = fadd fast float %1810, 5.000000e-01
  %1813 = fmul fast float %1811, 2.000000e+00
  %1814 = fadd fast float %1813, -1.000000e+00
  %1815 = fmul fast float %1812, 2.000000e+00
  %1816 = fadd fast float %1815, -1.000000e+00
  %1817 = fadd fast float %1814, %1816
  %1818 = fmul fast float %1817, 5.000000e-01
  %1819 = fsub fast float %1814, %1816
  %1820 = fmul fast float %1819, 5.000000e-01
  %1821 = call float @dx.op.unary.f32(i32 6, float %1818)  ; FAbs(value)
  %1822 = fsub fast float 1.000000e+00, %1821
  %1823 = call float @dx.op.unary.f32(i32 6, float %1820)  ; FAbs(value)
  %1824 = fsub fast float %1822, %1823
  %1825 = call float @dx.op.dot3.f32(i32 55, float %1818, float %1820, float %1824, float %1818, float %1820, float %1824)  ; Dot3(ax,ay,az,bx,by,bz)
  %1826 = call float @dx.op.unary.f32(i32 25, float %1825)  ; Rsqrt(value)
  %1827 = fmul fast float %1818, %1826
  %1828 = fmul fast float %1820, %1826
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = and i32 %1830, 67108864
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %1849, label %1833

; <label>:1833                                    ; preds = %1781
  %1834 = add i32 %60, 296
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 65535
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = and i32 %1840, 65535
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = lshr i32 %1836, 16
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = fsub fast float %1806, %1844
  %1846 = fmul fast float %1845, %1838
  %1847 = fadd fast float %1846, %1842
  %1848 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  br label %1849

; <label>:1849                                    ; preds = %1833, %1781
  %1850 = phi float [ %1848, %1833 ], [ %1806, %1781 ]
  %1851 = call float @dx.op.dot2.f32(i32 54, float %1827, float %1828, float %1270, float %1271)  ; Dot2(ax,ay,bx,by)
  %1852 = call float @dx.op.dot2.f32(i32 54, float %1827, float %1828, float %1272, float %1273)  ; Dot2(ax,ay,bx,by)
  br label %1853

; <label>:1853                                    ; preds = %1849, %1759
  %1854 = phi float [ %1850, %1849 ], [ 0x3FD6666660000000, %1759 ]
  %1855 = phi float [ %1851, %1849 ], [ 0.000000e+00, %1759 ]
  %1856 = phi float [ %1852, %1849 ], [ 0.000000e+00, %1759 ]
  %1857 = phi float [ %1793, %1849 ], [ 1.000000e+00, %1759 ]
  %1858 = add i32 %60, 176
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = lshr i32 %1860, 22
  %1862 = shl nuw nsw i32 %1861, 5
  %1863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1862)  ; LegacyF16ToF32(value)
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 64
  %1867 = icmp eq i32 %1866, 0
  br i1 %1867, label %1901, label %1868

; <label>:1868                                    ; preds = %1853
  %1869 = add i32 %60, 396
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = add i32 %1871, 0
  %1873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1872, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = and i32 %1875, 131072
  %1877 = icmp eq i32 %1876, 0
  %1878 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1873, %dx.types.Handle %104, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = fmul fast float %1879, %284
  %1883 = fmul fast float %1880, %287
  %1884 = fmul fast float %1881, %290
  br i1 %1877, label %1891, label %1885

; <label>:1885                                    ; preds = %1868
  %1886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1887 = extractvalue %dx.types.CBufRet.f32 %1886, 0
  %1888 = fmul fast float %1887, %1882
  %1889 = fmul fast float %1887, %1883
  %1890 = fmul fast float %1887, %1884
  br label %1891

; <label>:1891                                    ; preds = %1885, %1868
  %1892 = phi float [ %1888, %1885 ], [ %1882, %1868 ]
  %1893 = phi float [ %1889, %1885 ], [ %1883, %1868 ]
  %1894 = phi float [ %1890, %1885 ], [ %1884, %1868 ]
  %1895 = fmul fast float %1892, %1863
  %1896 = select i1 %225, float %1895, float %1892
  %1897 = call float @dx.op.dot3.f32(i32 55, float %1896, float %1893, float %1894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1898 = select i1 %225, float 0.000000e+00, float %1892
  %1899 = select i1 %225, float %1897, float %1893
  %1900 = select i1 %225, float 0.000000e+00, float %1894
  br label %1901

; <label>:1901                                    ; preds = %1891, %1853
  %1902 = phi float [ %1898, %1891 ], [ 0.000000e+00, %1853 ]
  %1903 = phi float [ %1899, %1891 ], [ 0.000000e+00, %1853 ]
  %1904 = phi float [ %1900, %1891 ], [ 0.000000e+00, %1853 ]
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = and i32 %1906, 1024
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %1939, label %1909

; <label>:1909                                    ; preds = %1901
  %1910 = add i32 %60, 168
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = and i32 %1912, 255
  %1914 = uitofp i32 %1913 to float
  %1915 = fmul fast float %1914, 0x3F70101020000000
  %1916 = lshr i32 %1912, 8
  %1917 = and i32 %1916, 255
  %1918 = uitofp i32 %1917 to float
  %1919 = fmul fast float %1918, 0x3F70101020000000
  %1920 = lshr i32 %1912, 16
  %1921 = and i32 %1920, 255
  %1922 = uitofp i32 %1921 to float
  %1923 = fmul fast float %1922, 0x3F70101020000000
  %1924 = fmul fast float %1915, %1915
  %1925 = fmul fast float %1919, %1919
  %1926 = fmul fast float %1923, %1923
  %1927 = add i32 %60, 460
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = add i32 %1929, 0
  %1931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1930, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1932 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1931, %dx.types.Handle %105, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.ResRet.f32 %1932, 2
  %1936 = fmul fast float %1924, %1933
  %1937 = fmul fast float %1925, %1934
  %1938 = fmul fast float %1926, %1935
  br label %1939

; <label>:1939                                    ; preds = %1909, %1901
  %1940 = phi float [ %1936, %1909 ], [ 0.000000e+00, %1901 ]
  %1941 = phi float [ %1937, %1909 ], [ 0.000000e+00, %1901 ]
  %1942 = phi float [ %1938, %1909 ], [ 0.000000e+00, %1901 ]
  %1943 = fcmp fast ogt float %1940, 0.000000e+00
  %1944 = fcmp fast ogt float %1941, 0.000000e+00
  %1945 = fcmp fast ogt float %1942, 0.000000e+00
  %1946 = call float @dx.op.unary.f32(i32 23, float %1940)  ; Log(value)
  %1947 = call float @dx.op.unary.f32(i32 23, float %1941)  ; Log(value)
  %1948 = call float @dx.op.unary.f32(i32 23, float %1942)  ; Log(value)
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = lshr i32 %1950, 7
  %1952 = and i32 %1951, 32752
  %1953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1952)  ; LegacyF16ToF32(value)
  %1954 = fmul fast float %1946, 0xBFE62E4300000000
  %1955 = fmul fast float %1954, %1953
  %1956 = fmul fast float %1947, 0xBFE62E4300000000
  %1957 = fmul fast float %1956, %1953
  %1958 = fmul fast float %1948, 0xBFE62E4300000000
  %1959 = fmul fast float %1958, %1953
  %1960 = select i1 %1943, float %1955, float 1.270000e+02
  %1961 = select i1 %1944, float %1957, float 1.270000e+02
  %1962 = select i1 %1945, float %1959, float 1.270000e+02
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = and i32 %1964, 10240
  %1966 = icmp eq i32 %1965, 0
  br i1 %1966, label %2011, label %1967

; <label>:1967                                    ; preds = %1939
  %1968 = add i32 %60, 476
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = add i32 %1970, 0
  %1972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1972, %dx.types.Handle %105, float %1366, float %1367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 1
  %1975 = extractvalue %dx.types.ResRet.f32 %1973, 3
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = and i32 %1977, 1048576
  %1979 = icmp ne i32 %1978, 0
  %1980 = and i32 %1977, 8192
  %1981 = icmp eq i32 %1980, 0
  br i1 %1981, label %1997, label %1982

; <label>:1982                                    ; preds = %1967
  %1983 = extractvalue %dx.types.ResRet.f32 %1973, 2
  %1984 = select i1 %1979, float %1983, float %1974
  %1985 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1986 = select i1 %1979, float %1985, float %1974
  %1987 = add i32 %60, 112
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = lshr i32 %1989, 16
  %1991 = and i32 %1990, 255
  %1992 = uitofp i32 %1991 to float
  %1993 = fmul fast float %1992, 0x3F80101020000000
  %1994 = fmul fast float %1993, %1986
  %1995 = fmul fast float %1993, %1974
  %1996 = fmul fast float %1993, %1984
  br label %1997

; <label>:1997                                    ; preds = %1982, %1967
  %1998 = phi float [ %1994, %1982 ], [ 0.000000e+00, %1967 ]
  %1999 = phi float [ %1995, %1982 ], [ 0.000000e+00, %1967 ]
  %2000 = phi float [ %1996, %1982 ], [ 0.000000e+00, %1967 ]
  %2001 = and i32 %1977, 2048
  %2002 = icmp eq i32 %2001, 0
  br i1 %2002, label %2011, label %2003

; <label>:2003                                    ; preds = %1997
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = shl i32 %2005, 4
  %2007 = and i32 %2006, 32752
  %2008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2007)  ; LegacyF16ToF32(value)
  %2009 = fmul fast float %2008, %1975
  %2010 = call float @dx.op.binary.f32(i32 35, float %2009, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2011

; <label>:2011                                    ; preds = %2003, %1997, %1939
  %2012 = phi float [ %1998, %2003 ], [ %1998, %1997 ], [ 0.000000e+00, %1939 ]
  %2013 = phi float [ %1999, %2003 ], [ %1999, %1997 ], [ 0.000000e+00, %1939 ]
  %2014 = phi float [ %2000, %2003 ], [ %2000, %1997 ], [ 0.000000e+00, %1939 ]
  %2015 = phi float [ %2010, %2003 ], [ 0x3F70101020000000, %1997 ], [ 0x3F70101020000000, %1939 ]
  %2016 = add i32 %60, 112
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = and i32 %2018, 255
  %2020 = uitofp i32 %2019 to float
  %2021 = lshr i32 %2018, 8
  %2022 = and i32 %2021, 255
  %2023 = uitofp i32 %2022 to float
  %2024 = call float @dx.op.dot3.f32(i32 55, float %1774, float %1775, float %1776, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2025 = fmul fast float %2023, %2024
  %2026 = fadd fast float %2025, %2020
  %2027 = fmul fast float %2026, 0x3F70101020000000
  %2028 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  br i1 %1258, label %2029, label %2064

; <label>:2029                                    ; preds = %2011
  %2030 = fmul fast float %2015, 2.000000e+00
  %2031 = fcmp fast olt float %1960, 1.270000e+02
  %2032 = fcmp fast olt float %1961, 1.270000e+02
  %2033 = fcmp fast olt float %1962, 1.270000e+02
  %2034 = fmul fast float %1960, 0xBFF7154760000000
  %2035 = fmul fast float %2034, %2030
  %2036 = fmul fast float %1961, 0xBFF7154760000000
  %2037 = fmul fast float %2036, %2030
  %2038 = fmul fast float %1962, 0xBFF7154760000000
  %2039 = fmul fast float %2038, %2030
  %2040 = call float @dx.op.unary.f32(i32 21, float %2035)  ; Exp(value)
  %2041 = call float @dx.op.unary.f32(i32 21, float %2037)  ; Exp(value)
  %2042 = call float @dx.op.unary.f32(i32 21, float %2039)  ; Exp(value)
  %2043 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2044 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2045 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2046 = fadd fast float %2043, -1.000000e+00
  %2047 = select i1 %2031, float %2046, float -1.000000e+00
  %2048 = fadd fast float %2044, -1.000000e+00
  %2049 = select i1 %2032, float %2048, float -1.000000e+00
  %2050 = fadd fast float %2045, -1.000000e+00
  %2051 = select i1 %2033, float %2050, float -1.000000e+00
  %2052 = fmul fast float %2047, %1554
  %2053 = fmul fast float %2049, %1554
  %2054 = fmul fast float %2051, %1554
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fadd fast float %2053, 1.000000e+00
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fmul fast float %2055, %1239
  %2059 = fmul fast float %2056, %1240
  %2060 = fmul fast float %2057, %1241
  %2061 = fmul fast float %2055, %1242
  %2062 = fmul fast float %2056, %1243
  %2063 = fmul fast float %2057, %1244
  br label %2064

; <label>:2064                                    ; preds = %2029, %2011
  %2065 = phi float [ %2058, %2029 ], [ %1239, %2011 ]
  %2066 = phi float [ %2059, %2029 ], [ %1240, %2011 ]
  %2067 = phi float [ %2060, %2029 ], [ %1241, %2011 ]
  %2068 = phi float [ %2061, %2029 ], [ %1242, %2011 ]
  %2069 = phi float [ %2062, %2029 ], [ %1243, %2011 ]
  %2070 = phi float [ %2063, %2029 ], [ %1244, %2011 ]
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = and i32 %2072, 3
  %2074 = icmp eq i32 %2073, 3
  br i1 %2074, label %2153, label %2075

; <label>:2075                                    ; preds = %2064
  %2076 = and i32 %2072, 16
  %2077 = icmp ne i32 %2076, 0
  %2078 = select i1 %2077, float %1554, float 0.000000e+00
  %2079 = icmp eq i32 %2073, 0
  br i1 %2079, label %2080, label %2108

; <label>:2080                                    ; preds = %2075
  %2081 = and i32 %2072, 64
  %2082 = icmp ne i32 %2081, 0
  %2083 = select i1 %2082, float %1554, float 0.000000e+00
  %2084 = fsub fast float %1774, %2065
  %2085 = fsub fast float %1775, %2066
  %2086 = fsub fast float %1776, %2067
  %2087 = fmul fast float %2078, %2084
  %2088 = fmul fast float %2078, %2085
  %2089 = fmul fast float %2078, %2086
  %2090 = fadd fast float %2087, %2065
  %2091 = fadd fast float %2088, %2066
  %2092 = fadd fast float %2089, %2067
  %2093 = fsub fast float %1760, %1251
  %2094 = fmul fast float %2078, %2093
  %2095 = fadd fast float %2094, %1251
  %2096 = fsub fast float %1902, %2068
  %2097 = fsub fast float %1903, %2069
  %2098 = fsub fast float %1904, %2070
  %2099 = fmul fast float %2083, %2096
  %2100 = fmul fast float %2083, %2097
  %2101 = fmul fast float %2083, %2098
  %2102 = fadd fast float %2099, %2068
  %2103 = fadd fast float %2100, %2069
  %2104 = fadd fast float %2101, %2070
  %2105 = fsub fast float %2028, %1256
  %2106 = fmul fast float %2078, %2105
  %2107 = fadd fast float %2106, %1256
  br label %2153

; <label>:2108                                    ; preds = %2075
  %2109 = icmp eq i32 %2073, 1
  br i1 %2109, label %2110, label %2123

; <label>:2110                                    ; preds = %2108
  %2111 = fadd fast float %1774, -1.000000e+00
  %2112 = fadd fast float %1775, -1.000000e+00
  %2113 = fadd fast float %1776, -1.000000e+00
  %2114 = fmul fast float %2078, %2111
  %2115 = fmul fast float %2078, %2112
  %2116 = fmul fast float %2078, %2113
  %2117 = fadd fast float %2114, 1.000000e+00
  %2118 = fadd fast float %2115, 1.000000e+00
  %2119 = fadd fast float %2116, 1.000000e+00
  %2120 = fmul fast float %2117, %2065
  %2121 = fmul fast float %2118, %2066
  %2122 = fmul fast float %2119, %2067
  br label %2153

; <label>:2123                                    ; preds = %2108
  %2124 = icmp eq i32 %2073, 2
  br i1 %2124, label %2125, label %2153

; <label>:2125                                    ; preds = %2123
  %2126 = call float @dx.op.unary.f32(i32 24, float %1774)  ; Sqrt(value)
  %2127 = call float @dx.op.unary.f32(i32 24, float %1775)  ; Sqrt(value)
  %2128 = call float @dx.op.unary.f32(i32 24, float %1776)  ; Sqrt(value)
  %2129 = fadd fast float %2126, -5.000000e-01
  %2130 = fadd fast float %2127, -5.000000e-01
  %2131 = fadd fast float %2128, -5.000000e-01
  %2132 = fmul fast float %2129, %2078
  %2133 = fmul fast float %2130, %2078
  %2134 = fmul fast float %2131, %2078
  %2135 = fadd fast float %2132, 5.000000e-01
  %2136 = fadd fast float %2133, 5.000000e-01
  %2137 = fadd fast float %2134, 5.000000e-01
  %2138 = fmul fast float %2135, 2.000000e+00
  %2139 = fsub fast float 1.000000e+00, %2138
  %2140 = fmul fast float %2139, %2065
  %2141 = fadd fast float %2140, %2138
  %2142 = fmul fast float %2141, %2065
  %2143 = fmul fast float %2136, 2.000000e+00
  %2144 = fsub fast float 1.000000e+00, %2143
  %2145 = fmul fast float %2144, %2066
  %2146 = fadd fast float %2145, %2143
  %2147 = fmul fast float %2146, %2066
  %2148 = fmul fast float %2137, 2.000000e+00
  %2149 = fsub fast float 1.000000e+00, %2148
  %2150 = fmul fast float %2149, %2067
  %2151 = fadd fast float %2150, %2148
  %2152 = fmul fast float %2151, %2067
  br label %2153

; <label>:2153                                    ; preds = %2125, %2123, %2110, %2080, %2064
  %2154 = phi float [ %2065, %2064 ], [ %2142, %2125 ], [ %2065, %2123 ], [ %2120, %2110 ], [ %2090, %2080 ]
  %2155 = phi float [ %2066, %2064 ], [ %2147, %2125 ], [ %2066, %2123 ], [ %2121, %2110 ], [ %2091, %2080 ]
  %2156 = phi float [ %2067, %2064 ], [ %2152, %2125 ], [ %2067, %2123 ], [ %2122, %2110 ], [ %2092, %2080 ]
  %2157 = phi float [ %2068, %2064 ], [ %2068, %2125 ], [ %2068, %2123 ], [ %2068, %2110 ], [ %2102, %2080 ]
  %2158 = phi float [ %2069, %2064 ], [ %2069, %2125 ], [ %2069, %2123 ], [ %2069, %2110 ], [ %2103, %2080 ]
  %2159 = phi float [ %2070, %2064 ], [ %2070, %2125 ], [ %2070, %2123 ], [ %2070, %2110 ], [ %2104, %2080 ]
  %2160 = phi float [ %1251, %2064 ], [ %1251, %2125 ], [ %1251, %2123 ], [ %1251, %2110 ], [ %2095, %2080 ]
  %2161 = phi float [ %1256, %2064 ], [ %1256, %2125 ], [ %1256, %2123 ], [ %1256, %2110 ], [ %2107, %2080 ]
  %2162 = and i32 %2072, 12
  %2163 = icmp eq i32 %2162, 12
  br i1 %2163, label %2294, label %2164

; <label>:2164                                    ; preds = %2153
  %2165 = and i32 %2072, 2097184
  %2166 = icmp eq i32 %2165, 2097184
  %2167 = select i1 %2166, float %1554, float 0.000000e+00
  %2168 = and i32 %2072, 4194336
  %2169 = icmp eq i32 %2168, 4194336
  %2170 = select i1 %2169, float %1554, float 0.000000e+00
  %2171 = and i32 %2072, 8388640
  %2172 = icmp eq i32 %2171, 8388640
  %2173 = select i1 %2172, float %1554, float 0.000000e+00
  %2174 = and i32 %2072, 1024
  %2175 = icmp ne i32 %2174, 0
  %2176 = select i1 %2175, float %1554, float 0.000000e+00
  %2177 = and i32 %2072, 2048
  %2178 = icmp ne i32 %2177, 0
  %2179 = select i1 %2178, float %1554, float 0.000000e+00
  %2180 = and i32 %2072, 8192
  %2181 = icmp ne i32 %2180, 0
  %2182 = select i1 %2181, float %1554, float 0.000000e+00
  %2183 = icmp eq i32 %2162, 0
  br i1 %2183, label %2184, label %2218

; <label>:2184                                    ; preds = %2164
  %2185 = fsub fast float %1855, %1237
  %2186 = fsub fast float %1856, %1238
  %2187 = fmul fast float %2167, %2185
  %2188 = fmul fast float %2167, %2186
  %2189 = fadd fast float %2187, %1237
  %2190 = fadd fast float %2188, %1238
  %2191 = fsub fast float %1857, %1254
  %2192 = fmul fast float %2170, %2191
  %2193 = fadd fast float %2192, %1254
  %2194 = fsub fast float %1854, %1253
  %2195 = fmul fast float %2173, %2194
  %2196 = fadd fast float %2195, %1253
  %2197 = fsub fast float %1960, %1248
  %2198 = fsub fast float %1961, %1249
  %2199 = fsub fast float %1962, %1250
  %2200 = fmul fast float %2176, %2197
  %2201 = fmul fast float %2176, %2198
  %2202 = fmul fast float %2176, %2199
  %2203 = fadd fast float %2200, %1248
  %2204 = fadd fast float %2201, %1249
  %2205 = fadd fast float %2202, %1250
  %2206 = fsub fast float %2015, %1255
  %2207 = fmul fast float %2179, %2206
  %2208 = fadd fast float %2207, %1255
  %2209 = fsub fast float %2012, %1245
  %2210 = fsub fast float %2013, %1246
  %2211 = fsub fast float %2014, %1247
  %2212 = fmul fast float %2182, %2209
  %2213 = fmul fast float %2182, %2210
  %2214 = fmul fast float %2182, %2211
  %2215 = fadd fast float %2212, %1245
  %2216 = fadd fast float %2213, %1246
  %2217 = fadd fast float %2214, %1247
  br label %2294

; <label>:2218                                    ; preds = %2164
  %2219 = icmp eq i32 %2162, 4
  br i1 %2219, label %2220, label %2266

; <label>:2220                                    ; preds = %2218
  %2221 = fmul fast float %2167, %1855
  %2222 = fmul fast float %2167, %1856
  %2223 = fadd fast float %2221, %1237
  %2224 = fadd fast float %2222, %1238
  %2225 = call float @dx.op.binary.f32(i32 36, float %1254, float %1857)  ; FMin(a,b)
  %2226 = fsub fast float %2225, %1254
  %2227 = fmul fast float %2226, %2170
  %2228 = fadd fast float %2227, %1254
  %2229 = fadd fast float %1854, %1253
  %2230 = fmul fast float %2229, 0x3FF337FAE0000000
  %2231 = fmul fast float %1253, %1253
  %2232 = fmul fast float %1854, %1854
  %2233 = fadd fast float %2232, %2231
  %2234 = fmul fast float %2233, 0x3FE5152B00000000
  %2235 = fmul fast float %1253, 0xBFCC1F85E0000000
  %2236 = fmul fast float %2235, %1854
  %2237 = fadd fast float %2236, 0xBFE1363700000000
  %2238 = fadd fast float %2237, %2230
  %2239 = fsub fast float %2238, %2234
  %2240 = fmul fast float %2229, 0x3FBA6F0D00000000
  %2241 = fmul fast float %2233, 0x3FD0432880000000
  %2242 = fmul fast float %1253, 0xBFEF110800000000
  %2243 = fmul fast float %2242, %1854
  %2244 = fadd fast float %2243, 1.000000e+00
  %2245 = fsub fast float %2244, %2240
  %2246 = fadd fast float %2245, %2241
  %2247 = fdiv fast float %2239, %2246
  %2248 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2249 = fsub fast float %2248, %1253
  %2250 = fmul fast float %2249, %2173
  %2251 = fadd fast float %2250, %1253
  %2252 = fmul fast float %2176, %1960
  %2253 = fmul fast float %2176, %1961
  %2254 = fmul fast float %2176, %1962
  %2255 = fadd fast float %2252, %1248
  %2256 = fadd fast float %2253, %1249
  %2257 = fadd fast float %2254, %1250
  %2258 = fmul fast float %2179, %2015
  %2259 = fadd fast float %2258, %1255
  %2260 = fmul fast float %2182, %2012
  %2261 = fmul fast float %2182, %2013
  %2262 = fmul fast float %2182, %2014
  %2263 = fadd fast float %2260, %1245
  %2264 = fadd fast float %2261, %1246
  %2265 = fadd fast float %2262, %1247
  br label %2294

; <label>:2266                                    ; preds = %2218
  %2267 = icmp eq i32 %2162, 8
  br i1 %2267, label %2268, label %2294

; <label>:2268                                    ; preds = %2266
  %2269 = fmul fast float %2167, %1855
  %2270 = fmul fast float %2167, %1856
  %2271 = fadd fast float %2269, %1237
  %2272 = fadd fast float %2270, %1238
  %2273 = call float @dx.op.binary.f32(i32 36, float %1254, float %1857)  ; FMin(a,b)
  %2274 = fsub fast float %2273, %1254
  %2275 = fmul fast float %2274, %2170
  %2276 = fadd fast float %2275, %1254
  %2277 = fsub fast float %1854, %1253
  %2278 = fmul fast float %2173, %2277
  %2279 = fadd fast float %2278, %1253
  %2280 = fmul fast float %2176, %1960
  %2281 = fmul fast float %2176, %1961
  %2282 = fmul fast float %2176, %1962
  %2283 = fadd fast float %2280, %1248
  %2284 = fadd fast float %2281, %1249
  %2285 = fadd fast float %2282, %1250
  %2286 = fmul fast float %2179, %2015
  %2287 = fadd fast float %2286, %1255
  %2288 = fmul fast float %2182, %2012
  %2289 = fmul fast float %2182, %2013
  %2290 = fmul fast float %2182, %2014
  %2291 = fadd fast float %2288, %1245
  %2292 = fadd fast float %2289, %1246
  %2293 = fadd fast float %2290, %1247
  br label %2294

; <label>:2294                                    ; preds = %2268, %2266, %2220, %2184, %2153, %1553, %1257, %1236
  %2295 = phi float [ %1237, %2153 ], [ %1237, %1553 ], [ %1237, %1236 ], [ %2271, %2268 ], [ %1237, %2266 ], [ %2223, %2220 ], [ %2189, %2184 ], [ %1237, %1257 ]
  %2296 = phi float [ %1238, %2153 ], [ %1238, %1553 ], [ %1238, %1236 ], [ %2272, %2268 ], [ %1238, %2266 ], [ %2224, %2220 ], [ %2190, %2184 ], [ %1238, %1257 ]
  %2297 = phi float [ %2154, %2153 ], [ %1239, %1553 ], [ %1239, %1236 ], [ %2154, %2268 ], [ %2154, %2266 ], [ %2154, %2220 ], [ %2154, %2184 ], [ %1239, %1257 ]
  %2298 = phi float [ %2155, %2153 ], [ %1240, %1553 ], [ %1240, %1236 ], [ %2155, %2268 ], [ %2155, %2266 ], [ %2155, %2220 ], [ %2155, %2184 ], [ %1240, %1257 ]
  %2299 = phi float [ %2156, %2153 ], [ %1241, %1553 ], [ %1241, %1236 ], [ %2156, %2268 ], [ %2156, %2266 ], [ %2156, %2220 ], [ %2156, %2184 ], [ %1241, %1257 ]
  %2300 = phi float [ %2157, %2153 ], [ %1242, %1553 ], [ %1242, %1236 ], [ %2157, %2268 ], [ %2157, %2266 ], [ %2157, %2220 ], [ %2157, %2184 ], [ %1242, %1257 ]
  %2301 = phi float [ %2158, %2153 ], [ %1243, %1553 ], [ %1243, %1236 ], [ %2158, %2268 ], [ %2158, %2266 ], [ %2158, %2220 ], [ %2158, %2184 ], [ %1243, %1257 ]
  %2302 = phi float [ %2159, %2153 ], [ %1244, %1553 ], [ %1244, %1236 ], [ %2159, %2268 ], [ %2159, %2266 ], [ %2159, %2220 ], [ %2159, %2184 ], [ %1244, %1257 ]
  %2303 = phi float [ %1245, %2153 ], [ %1245, %1553 ], [ %1245, %1236 ], [ %2291, %2268 ], [ %1245, %2266 ], [ %2263, %2220 ], [ %2215, %2184 ], [ %1245, %1257 ]
  %2304 = phi float [ %1246, %2153 ], [ %1246, %1553 ], [ %1246, %1236 ], [ %2292, %2268 ], [ %1246, %2266 ], [ %2264, %2220 ], [ %2216, %2184 ], [ %1246, %1257 ]
  %2305 = phi float [ %1247, %2153 ], [ %1247, %1553 ], [ %1247, %1236 ], [ %2293, %2268 ], [ %1247, %2266 ], [ %2265, %2220 ], [ %2217, %2184 ], [ %1247, %1257 ]
  %2306 = phi float [ %1248, %2153 ], [ %1248, %1553 ], [ %1248, %1236 ], [ %2283, %2268 ], [ %1248, %2266 ], [ %2255, %2220 ], [ %2203, %2184 ], [ %1248, %1257 ]
  %2307 = phi float [ %1249, %2153 ], [ %1249, %1553 ], [ %1249, %1236 ], [ %2284, %2268 ], [ %1249, %2266 ], [ %2256, %2220 ], [ %2204, %2184 ], [ %1249, %1257 ]
  %2308 = phi float [ %1250, %2153 ], [ %1250, %1553 ], [ %1250, %1236 ], [ %2285, %2268 ], [ %1250, %2266 ], [ %2257, %2220 ], [ %2205, %2184 ], [ %1250, %1257 ]
  %2309 = phi float [ %2160, %2153 ], [ %1251, %1553 ], [ %1251, %1236 ], [ %2160, %2268 ], [ %2160, %2266 ], [ %2160, %2220 ], [ %2160, %2184 ], [ %1251, %1257 ]
  %2310 = phi float [ %1253, %2153 ], [ %1253, %1553 ], [ %1253, %1236 ], [ %2279, %2268 ], [ %1253, %2266 ], [ %2251, %2220 ], [ %2196, %2184 ], [ %1253, %1257 ]
  %2311 = phi float [ %1254, %2153 ], [ %1254, %1553 ], [ %1254, %1236 ], [ %2276, %2268 ], [ %1254, %2266 ], [ %2228, %2220 ], [ %2193, %2184 ], [ %1254, %1257 ]
  %2312 = phi float [ %1255, %2153 ], [ %1255, %1553 ], [ %1255, %1236 ], [ %2287, %2268 ], [ %1255, %2266 ], [ %2259, %2220 ], [ %2208, %2184 ], [ %1255, %1257 ]
  %2313 = phi float [ %2161, %2153 ], [ %1256, %1553 ], [ %1256, %1236 ], [ %2161, %2268 ], [ %2161, %2266 ], [ %2161, %2220 ], [ %2161, %2184 ], [ %1256, %1257 ]
  br i1 %411, label %3351, label %2314

; <label>:2314                                    ; preds = %2294
  %2315 = icmp ult i32 %467, 3
  %2316 = add i32 %60, 56
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = add i32 %60, 60
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = or i32 %2321, %2318
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %3351, label %2324

; <label>:2324                                    ; preds = %2314
  %2325 = and i32 %2318, 262144
  %2326 = icmp ne i32 %2325, 0
  %2327 = select i1 %2326, float %62, float 1.000000e+00
  %2328 = select i1 %2326, float %63, float 0.000000e+00
  %2329 = select i1 %2326, float %64, float 0.000000e+00
  %2330 = select i1 %2326, float %65, float 1.000000e+00
  %2331 = select i1 %2326, float %66, float %87
  %2332 = select i1 %2326, float %67, float %88
  %2333 = add i32 %60, 316
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = lshr i32 %2335, 16
  %2337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2336)  ; LegacyF16ToF32(value)
  %2338 = fmul fast float %2337, 0x3F50624DE0000000
  %2339 = add i32 %60, 120
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = lshr i32 %2341, 16
  %2343 = and i32 %2342, 255
  %2344 = lshr i32 %2341, 24
  %2345 = add i32 %60, 324
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 65535
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = lshr i32 %2347, 16
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = add i32 %60, 64
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = lshr i32 %2354, 22
  %2356 = shl nuw nsw i32 %2355, 5
  %2357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2356)  ; LegacyF16ToF32(value)
  %2358 = shl i32 %2354, 4
  %2359 = and i32 %2358, 32752
  %2360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2359)  ; LegacyF16ToF32(value)
  %2361 = lshr i32 %2354, 7
  %2362 = and i32 %2361, 32752
  %2363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2362)  ; LegacyF16ToF32(value)
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 3
  %2366 = fmul fast float %2365, 1.000000e+03
  %2367 = fmul fast float %361, %2366
  %2368 = call float @dx.op.unary.f32(i32 22, float %2367)  ; Frc(value)
  %2369 = fadd fast float %2368, %351
  %2370 = fmul fast float %362, %2366
  %2371 = call float @dx.op.unary.f32(i32 22, float %2370)  ; Frc(value)
  %2372 = fadd fast float %2371, %353
  %2373 = fmul fast float %2338, %2366
  %2374 = call float @dx.op.unary.f32(i32 22, float %2373)  ; Frc(value)
  %2375 = fmul fast float %2374, 0x401921FB60000000
  %2376 = fadd fast float %2375, %2357
  %2377 = call float @dx.op.unary.f32(i32 13, float %2376)  ; Sin(value)
  %2378 = call float @dx.op.unary.f32(i32 12, float %2376)  ; Cos(value)
  %2379 = fsub fast float -0.000000e+00, %2377
  %2380 = fadd fast float %2331, -5.000000e-01
  %2381 = fadd fast float %2332, -5.000000e-01
  %2382 = fmul fast float %2349, %2380
  %2383 = fmul fast float %2351, %2381
  %2384 = fadd fast float %2382, 5.000000e-01
  %2385 = fadd fast float %2383, 5.000000e-01
  %2386 = fmul fast float %2360, %2384
  %2387 = fmul fast float %2363, %2385
  %2388 = fmul fast float %2378, %2386
  %2389 = call float @dx.op.tertiary.f32(i32 46, float %2379, float %2387, float %2388)  ; FMad(a,b,c)
  %2390 = fmul fast float %2377, %2386
  %2391 = call float @dx.op.tertiary.f32(i32 46, float %2378, float %2387, float %2390)  ; FMad(a,b,c)
  %2392 = fadd fast float %2369, %2389
  %2393 = fadd fast float %2372, %2391
  %2394 = icmp ugt i32 %2343, 1
  %2395 = icmp ugt i32 %2341, 33554431
  %2396 = or i1 %2395, %2394
  br i1 %2396, label %2397, label %2422

; <label>:2397                                    ; preds = %2324
  %2398 = add i32 %60, 260
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = lshr i32 %2400, 16
  %2402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2401)  ; LegacyF16ToF32(value)
  %2403 = fmul fast float %2365, %2402
  %2404 = call float @dx.op.unary.f32(i32 22, float %2403)  ; Frc(value)
  %2405 = mul nuw nsw i32 %2343, %2344
  %2406 = uitofp i32 %2405 to float
  %2407 = fmul fast float %2404, %2406
  %2408 = call float @dx.op.unary.f32(i32 27, float %2407)  ; Round_ni(value)
  %2409 = fptoui float %2408 to i32
  %2410 = urem i32 %2409, %2343
  %2411 = udiv i32 %2409, %2344
  %2412 = call float @dx.op.unary.f32(i32 22, float %2392)  ; Frc(value)
  %2413 = call float @dx.op.unary.f32(i32 22, float %2393)  ; Frc(value)
  %2414 = uitofp i32 %2410 to float
  %2415 = uitofp i32 %2411 to float
  %2416 = fadd fast float %2412, %2414
  %2417 = fadd fast float %2413, %2415
  %2418 = uitofp i32 %2343 to float
  %2419 = uitofp i32 %2344 to float
  %2420 = fdiv fast float %2416, %2418
  %2421 = fdiv fast float %2417, %2419
  br label %2422

; <label>:2422                                    ; preds = %2397, %2324
  %2423 = phi float [ %2420, %2397 ], [ %2392, %2324 ]
  %2424 = phi float [ %2421, %2397 ], [ %2393, %2324 ]
  %2425 = and i32 %2318, 16777216
  %2426 = icmp eq i32 %2425, 0
  br i1 %2426, label %2536, label %2427

; <label>:2427                                    ; preds = %2422
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2430 = extractvalue %dx.types.CBufRet.f32 %2428, 1
  %2431 = extractvalue %dx.types.CBufRet.f32 %2428, 2
  %2432 = fadd fast float %2429, %163
  %2433 = fadd fast float %2430, %164
  %2434 = fadd fast float %2431, %165
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 0
  %2437 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2438 = icmp eq i32 %61, 65535
  br i1 %2438, label %2533, label %2439

; <label>:2439                                    ; preds = %2427
  %2440 = lshr i32 %61, 1
  %2441 = shl i32 %2440, 2
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = and i32 %61, 1
  %2445 = icmp ne i32 %2444, 0
  %2446 = lshr i32 %2443, 16
  %2447 = and i32 %2443, 65535
  %2448 = select i1 %2445, i32 %2446, i32 %2447
  %2449 = icmp eq i32 %2448, 65535
  br i1 %2449, label %2529, label %2450

; <label>:2450                                    ; preds = %2439
  %2451 = mul nuw nsw i32 %2448, 40
  %2452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.f32 %2452, 0
  %2454 = extractvalue %dx.types.ResRet.f32 %2452, 1
  %2455 = extractvalue %dx.types.ResRet.f32 %2452, 2
  %2456 = add nuw nsw i32 %2451, 12
  %2457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.f32 %2457, 0
  %2459 = extractvalue %dx.types.ResRet.f32 %2457, 1
  %2460 = extractvalue %dx.types.ResRet.f32 %2457, 2
  %2461 = add nuw nsw i32 %2451, 24
  %2462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.f32 %2462, 0
  %2464 = extractvalue %dx.types.ResRet.f32 %2462, 1
  %2465 = extractvalue %dx.types.ResRet.f32 %2462, 2
  %2466 = add nuw nsw i32 %2451, 36
  %2467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.f32 %2467, 0
  %2469 = fsub fast float %2432, %2453
  %2470 = fsub fast float %2433, %2454
  %2471 = fsub fast float %2434, %2455
  %2472 = fmul fast float %2468, %2469
  %2473 = fmul fast float %2468, %2470
  %2474 = fmul fast float %2468, %2471
  %2475 = call float @dx.op.unary.f32(i32 27, float %2472)  ; Round_ni(value)
  %2476 = call float @dx.op.unary.f32(i32 27, float %2473)  ; Round_ni(value)
  %2477 = call float @dx.op.unary.f32(i32 27, float %2474)  ; Round_ni(value)
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fadd fast float %2476, 5.000000e-01
  %2480 = fadd fast float %2477, 5.000000e-01
  %2481 = fmul fast float %2478, %2458
  %2482 = fmul fast float %2479, %2459
  %2483 = fmul fast float %2480, %2460
  %2484 = shl i32 %61, 2
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = add i32 %2486, 0
  %2488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2489 = call float @dx.op.unary.f32(i32 22, float %2481)  ; Frc(value)
  %2490 = call float @dx.op.unary.f32(i32 22, float %2482)  ; Frc(value)
  %2491 = call float @dx.op.unary.f32(i32 22, float %2483)  ; Frc(value)
  %2492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2488, %dx.types.Handle %55, float %2489, float %2490, float %2491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 0
  %2494 = extractvalue %dx.types.ResRet.f32 %2492, 1
  %2495 = extractvalue %dx.types.ResRet.f32 %2492, 2
  %2496 = fmul fast float %2493, 1.023000e+03
  %2497 = fmul fast float %2494, 1.023000e+03
  %2498 = fmul fast float %2495, 1.023000e+03
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = call float @dx.op.unary.f32(i32 27, float %2499)  ; Round_ni(value)
  %2503 = call float @dx.op.unary.f32(i32 27, float %2500)  ; Round_ni(value)
  %2504 = call float @dx.op.unary.f32(i32 27, float %2501)  ; Round_ni(value)
  %2505 = fsub fast float %2472, %2475
  %2506 = fsub fast float %2473, %2476
  %2507 = fsub fast float %2474, %2477
  %2508 = fmul fast float %2505, 7.500000e-01
  %2509 = fmul fast float %2506, 7.500000e-01
  %2510 = fmul fast float %2507, 7.500000e-01
  %2511 = fadd fast float %2475, 1.250000e-01
  %2512 = fadd fast float %2511, %2508
  %2513 = fadd fast float %2512, %2502
  %2514 = fadd fast float %2476, 1.250000e-01
  %2515 = fadd fast float %2514, %2509
  %2516 = fadd fast float %2515, %2503
  %2517 = fadd fast float %2477, 1.250000e-01
  %2518 = fadd fast float %2517, %2510
  %2519 = fadd fast float %2518, %2504
  %2520 = fmul fast float %2513, %2463
  %2521 = fmul fast float %2516, %2464
  %2522 = fmul fast float %2519, %2465
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = add i32 %2524, 0
  %2526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2526, %dx.types.Handle %53, float %2520, float %2521, float %2522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2528 = extractvalue %dx.types.ResRet.f32 %2527, 0
  br label %2529

; <label>:2529                                    ; preds = %2450, %2439
  %2530 = phi float [ %2528, %2450 ], [ -1.000000e+00, %2439 ]
  %2531 = fadd fast float %2530, %2437
  %2532 = call float @dx.op.unary.f32(i32 7, float %2531)  ; Saturate(value)
  br label %2533

; <label>:2533                                    ; preds = %2529, %2427
  %2534 = phi float [ %2532, %2529 ], [ %2437, %2427 ]
  %2535 = fmul fast float %2534, %463
  br label %2536

; <label>:2536                                    ; preds = %2533, %2422
  %2537 = phi float [ %2535, %2533 ], [ %463, %2422 ]
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = and i32 %2539, 256
  %2541 = icmp eq i32 %2540, 0
  br i1 %2541, label %2588, label %2542

; <label>:2542                                    ; preds = %2536
  %2543 = add i32 %60, 432
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = add i32 %2545, 0
  %2547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2547, %dx.types.Handle %105, float %2423, float %2424, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2549 = extractvalue %dx.types.ResRet.f32 %2548, 0
  %2550 = add i32 %60, 132
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = shl i32 %2552, 4
  %2554 = and i32 %2553, 32752
  %2555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2554)  ; LegacyF16ToF32(value)
  %2556 = lshr i32 %2552, 7
  %2557 = and i32 %2556, 32752
  %2558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2557)  ; LegacyF16ToF32(value)
  %2559 = fsub fast float 1.000000e+00, %2537
  %2560 = call float @dx.op.binary.f32(i32 35, float %2559, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2561 = bitcast float %2537 to i32
  %2562 = sitofp i32 %2561 to float
  %2563 = fadd fast float %2562, 0xC1CFBF8940000000
  %2564 = fmul fast float %2558, %2563
  %2565 = fadd fast float %2564, 0x41CFBF8940000000
  %2566 = fptosi float %2565 to i32
  %2567 = bitcast i32 %2566 to float
  %2568 = bitcast float %2560 to i32
  %2569 = sitofp i32 %2568 to float
  %2570 = fadd fast float %2569, 0xC1CFBF8940000000
  %2571 = fmul fast float %2570, %2558
  %2572 = fadd fast float %2571, 0x41CFBF8940000000
  %2573 = fptosi float %2572 to i32
  %2574 = bitcast i32 %2573 to float
  %2575 = fmul fast float %2567, %2555
  %2576 = fmul fast float %2574, %2555
  %2577 = fsub fast float %2560, %2575
  %2578 = fadd fast float %2576, %2560
  %2579 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  %2580 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  %2581 = fsub fast float %2549, %2579
  %2582 = fsub fast float %2580, %2579
  %2583 = bitcast float %2582 to i32
  %2584 = sub nsw i32 2129859010, %2583
  %2585 = bitcast i32 %2584 to float
  %2586 = fmul fast float %2585, %2581
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  br label %2588

; <label>:2588                                    ; preds = %2542, %2536
  %2589 = phi float [ %2587, %2542 ], [ %2537, %2536 ]
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = and i32 %2591, 128
  %2593 = icmp eq i32 %2592, 0
  br i1 %2593, label %2610, label %2594

; <label>:2594                                    ; preds = %2588
  %2595 = add i32 %60, 416
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = add i32 %2597, 0
  %2599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2599, %dx.types.Handle %105, float %2423, float %2424, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2601 = extractvalue %dx.types.ResRet.f32 %2600, 0
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = and i32 %2603, 524288
  %2605 = icmp ne i32 %2604, 0
  %2606 = fcmp fast ogt float %2601, 0x3FE0101020000000
  %2607 = select i1 %2606, float 1.000000e+00, float 0.000000e+00
  %2608 = select i1 %2605, float %2607, float %2601
  %2609 = fmul fast float %2608, %2589
  br label %2610

; <label>:2610                                    ; preds = %2594, %2588
  %2611 = phi float [ %2609, %2594 ], [ %2589, %2588 ]
  %2612 = fcmp fast ult float %2611, 0x3F70101020000000
  br i1 %2612, label %3351, label %2613

; <label>:2613                                    ; preds = %2610
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 16
  %2617 = icmp eq i32 %2616, 0
  br i1 %2617, label %2816, label %2618

; <label>:2618                                    ; preds = %2613
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %60, 368
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = add i32 %2623, 0
  %2625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2625, %dx.types.Handle %104, float %2423, float %2424, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2627 = extractvalue %dx.types.ResRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.ResRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.ResRet.f32 %2626, 2
  %2630 = extractvalue %dx.types.ResRet.f32 %2626, 3
  %2631 = and i32 %2620, 255
  %2632 = uitofp i32 %2631 to float
  %2633 = lshr i32 %2620, 8
  %2634 = and i32 %2633, 255
  %2635 = uitofp i32 %2634 to float
  %2636 = fmul fast float %2630, %2632
  %2637 = fadd fast float %2636, %2635
  %2638 = fmul fast float %2637, 0x3F70101000000000
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 512
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2651, label %2643

; <label>:2643                                    ; preds = %2618
  %2644 = add i32 %60, 448
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = add i32 %2646, 0
  %2648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2648, %dx.types.Handle %105, float %2423, float %2424, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  br label %2651

; <label>:2651                                    ; preds = %2643, %2618
  %2652 = phi float [ %2650, %2643 ], [ 1.000000e+00, %2618 ]
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 33554432
  %2656 = icmp eq i32 %2655, 0
  br i1 %2656, label %2763, label %2657

; <label>:2657                                    ; preds = %2651
  %2658 = add i32 %60, 256
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 65535
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = lshr i32 %2660, 16
  %2664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2663)  ; LegacyF16ToF32(value)
  %2665 = add i32 %60, 260
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2665, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = and i32 %2667, 65535
  %2669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2668)  ; LegacyF16ToF32(value)
  %2670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2671 = extractvalue %dx.types.ResRet.i32 %2670, 0
  %2672 = lshr i32 %2671, 24
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = and i32 %2671, 255
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2676, 0x3F70101020000000
  %2678 = lshr i32 %2671, 8
  %2679 = and i32 %2678, 255
  %2680 = uitofp i32 %2679 to float
  %2681 = fmul fast float %2680, 0x3F70101020000000
  %2682 = lshr i32 %2671, 16
  %2683 = and i32 %2682, 255
  %2684 = uitofp i32 %2683 to float
  %2685 = fmul fast float %2684, 0x3F70101020000000
  %2686 = add i32 %60, 252
  %2687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2686, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.i32 %2687, 0
  %2689 = lshr i32 %2688, 24
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = and i32 %2688, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101020000000
  %2695 = lshr i32 %2688, 8
  %2696 = and i32 %2695, 255
  %2697 = uitofp i32 %2696 to float
  %2698 = fmul fast float %2697, 0x3F70101020000000
  %2699 = lshr i32 %2688, 16
  %2700 = and i32 %2699, 255
  %2701 = uitofp i32 %2700 to float
  %2702 = fmul fast float %2701, 0x3F70101020000000
  %2703 = bitcast float %2627 to i32
  %2704 = ashr i32 %2703, 1
  %2705 = sub nsw i32 1597463174, %2704
  %2706 = bitcast i32 %2705 to float
  %2707 = fmul fast float %2627, 5.000000e-01
  %2708 = fmul fast float %2706, %2706
  %2709 = fmul fast float %2708, %2707
  %2710 = fsub fast float 1.500000e+00, %2709
  %2711 = fmul fast float %2706, %2627
  %2712 = fmul fast float %2711, %2710
  %2713 = bitcast float %2628 to i32
  %2714 = ashr i32 %2713, 1
  %2715 = sub nsw i32 1597463174, %2714
  %2716 = bitcast i32 %2715 to float
  %2717 = fmul fast float %2628, 5.000000e-01
  %2718 = fmul fast float %2716, %2716
  %2719 = fmul fast float %2718, %2717
  %2720 = fsub fast float 1.500000e+00, %2719
  %2721 = fmul fast float %2716, %2628
  %2722 = fmul fast float %2721, %2720
  %2723 = bitcast float %2629 to i32
  %2724 = ashr i32 %2723, 1
  %2725 = sub nsw i32 1597463174, %2724
  %2726 = bitcast i32 %2725 to float
  %2727 = fmul fast float %2629, 5.000000e-01
  %2728 = fmul fast float %2726, %2726
  %2729 = fmul fast float %2728, %2727
  %2730 = fsub fast float 1.500000e+00, %2729
  %2731 = fmul fast float %2726, %2629
  %2732 = fmul fast float %2731, %2730
  %2733 = fsub fast float %2712, %2694
  %2734 = fsub fast float %2722, %2698
  %2735 = fsub fast float %2732, %2702
  %2736 = fmul fast float %2733, %2662
  %2737 = fmul fast float %2734, %2664
  %2738 = fmul fast float %2735, %2669
  %2739 = fadd fast float %2736, %2677
  %2740 = fadd fast float %2737, %2681
  %2741 = fadd fast float %2738, %2685
  %2742 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2743 = call float @dx.op.unary.f32(i32 7, float %2740)  ; Saturate(value)
  %2744 = call float @dx.op.unary.f32(i32 7, float %2741)  ; Saturate(value)
  %2745 = fmul fast float %2742, %2742
  %2746 = fmul fast float %2743, %2743
  %2747 = fmul fast float %2744, %2744
  %2748 = fsub fast float %2745, %2627
  %2749 = fsub fast float %2746, %2628
  %2750 = fsub fast float %2747, %2629
  %2751 = fmul fast float %2748, %2652
  %2752 = fmul fast float %2749, %2652
  %2753 = fmul fast float %2750, %2652
  %2754 = fadd fast float %2751, %2627
  %2755 = fadd fast float %2752, %2628
  %2756 = fadd fast float %2753, %2629
  %2757 = fadd fast float %2674, %2638
  %2758 = fsub fast float %2757, %2691
  %2759 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2760 = fsub fast float %2759, %2638
  %2761 = fmul fast float %2760, %2652
  %2762 = fadd fast float %2761, %2638
  br label %2816

; <label>:2763                                    ; preds = %2651
  %2764 = and i32 %2654, 134217728
  %2765 = icmp eq i32 %2764, 0
  br i1 %2765, label %2800, label %2766

; <label>:2766                                    ; preds = %2763
  %2767 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2768 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %2769 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %2770 = fadd fast float %2767, -5.000000e-01
  %2771 = fadd fast float %2768, -5.000000e-01
  %2772 = fadd fast float %2769, -5.000000e-01
  %2773 = fmul fast float %2770, %2652
  %2774 = fmul fast float %2771, %2652
  %2775 = fmul fast float %2772, %2652
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = call float @dx.op.unary.f32(i32 24, float %2627)  ; Sqrt(value)
  %2780 = call float @dx.op.unary.f32(i32 24, float %2628)  ; Sqrt(value)
  %2781 = call float @dx.op.unary.f32(i32 24, float %2629)  ; Sqrt(value)
  %2782 = fmul fast float %2776, 2.000000e+00
  %2783 = fsub fast float 1.000000e+00, %2782
  %2784 = fmul fast float %2783, %2779
  %2785 = fadd fast float %2784, %2782
  %2786 = fmul fast float %2785, %2779
  %2787 = fmul fast float %2777, 2.000000e+00
  %2788 = fsub fast float 1.000000e+00, %2787
  %2789 = fmul fast float %2788, %2780
  %2790 = fadd fast float %2789, %2787
  %2791 = fmul fast float %2790, %2780
  %2792 = fmul fast float %2778, 2.000000e+00
  %2793 = fsub fast float 1.000000e+00, %2792
  %2794 = fmul fast float %2793, %2781
  %2795 = fadd fast float %2794, %2792
  %2796 = fmul fast float %2795, %2781
  %2797 = fmul fast float %2786, %2786
  %2798 = fmul fast float %2791, %2791
  %2799 = fmul fast float %2796, %2796
  br label %2816

; <label>:2800                                    ; preds = %2763
  %2801 = fmul fast float %338, %338
  %2802 = fmul fast float %342, %342
  %2803 = fmul fast float %346, %346
  %2804 = fadd fast float %2801, -1.000000e+00
  %2805 = fadd fast float %2802, -1.000000e+00
  %2806 = fadd fast float %2803, -1.000000e+00
  %2807 = fmul fast float %2652, %2804
  %2808 = fmul fast float %2652, %2805
  %2809 = fmul fast float %2652, %2806
  %2810 = fadd fast float %2807, 1.000000e+00
  %2811 = fadd fast float %2808, 1.000000e+00
  %2812 = fadd fast float %2809, 1.000000e+00
  %2813 = fmul fast float %2810, %2627
  %2814 = fmul fast float %2811, %2628
  %2815 = fmul fast float %2812, %2629
  br label %2816

; <label>:2816                                    ; preds = %2800, %2766, %2657, %2613
  %2817 = phi float [ %2762, %2657 ], [ %2638, %2766 ], [ %2638, %2800 ], [ 0x3FA23C0BE0000000, %2613 ]
  %2818 = phi float [ %2754, %2657 ], [ %2797, %2766 ], [ %2813, %2800 ], [ 1.000000e+00, %2613 ]
  %2819 = phi float [ %2755, %2657 ], [ %2798, %2766 ], [ %2814, %2800 ], [ 1.000000e+00, %2613 ]
  %2820 = phi float [ %2756, %2657 ], [ %2799, %2766 ], [ %2815, %2800 ], [ 1.000000e+00, %2613 ]
  %2821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.i32 %2821, 1
  %2823 = and i32 %2822, 1
  %2824 = icmp ne i32 %2823, 0
  %2825 = add i32 %60, 356
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = and i32 %2827, 32
  %2829 = icmp ne i32 %2828, 0
  %2830 = and i1 %2824, %2829
  %2831 = select i1 %2830, float 1.000000e+00, float %2818
  %2832 = select i1 %2830, float 0x3FD3333340000000, float %2819
  %2833 = select i1 %2830, float 0x3FD3333340000000, float %2820
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = and i32 %2835, 32
  %2837 = icmp eq i32 %2836, 0
  br i1 %2837, label %2910, label %2838

; <label>:2838                                    ; preds = %2816
  %2839 = add i32 %60, 124
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = add i32 %60, 384
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = add i32 %2844, 0
  %2846 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2845, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2847 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2846, %dx.types.Handle %104, float %2423, float %2424, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2848 = extractvalue %dx.types.ResRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.ResRet.f32 %2847, 1
  %2850 = extractvalue %dx.types.ResRet.f32 %2847, 2
  %2851 = extractvalue %dx.types.ResRet.f32 %2847, 3
  %2852 = and i32 %2841, 255
  %2853 = uitofp i32 %2852 to float
  %2854 = lshr i32 %2841, 8
  %2855 = and i32 %2854, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = lshr i32 %2841, 16
  %2858 = and i32 %2857, 255
  %2859 = uitofp i32 %2858 to float
  %2860 = fmul fast float %2859, 0x3F70101000000000
  %2861 = fmul fast float %2848, %2853
  %2862 = fadd fast float %2861, %2856
  %2863 = fmul fast float %2862, 0x3F70101000000000
  %2864 = fadd fast float %2849, -5.000000e-01
  %2865 = fadd fast float %2851, -5.000000e-01
  %2866 = fmul fast float %2864, %2860
  %2867 = fmul fast float %2865, %2860
  %2868 = fadd fast float %2866, 5.000000e-01
  %2869 = fadd fast float %2867, 5.000000e-01
  %2870 = fmul fast float %2868, 2.000000e+00
  %2871 = fadd fast float %2870, -1.000000e+00
  %2872 = fmul fast float %2869, 2.000000e+00
  %2873 = fadd fast float %2872, -1.000000e+00
  %2874 = fadd fast float %2871, %2873
  %2875 = fmul fast float %2874, 5.000000e-01
  %2876 = fsub fast float %2871, %2873
  %2877 = fmul fast float %2876, 5.000000e-01
  %2878 = call float @dx.op.unary.f32(i32 6, float %2875)  ; FAbs(value)
  %2879 = fsub fast float 1.000000e+00, %2878
  %2880 = call float @dx.op.unary.f32(i32 6, float %2877)  ; FAbs(value)
  %2881 = fsub fast float %2879, %2880
  %2882 = call float @dx.op.dot3.f32(i32 55, float %2875, float %2877, float %2881, float %2875, float %2877, float %2881)  ; Dot3(ax,ay,az,bx,by,bz)
  %2883 = call float @dx.op.unary.f32(i32 25, float %2882)  ; Rsqrt(value)
  %2884 = fmul fast float %2875, %2883
  %2885 = fmul fast float %2877, %2883
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 67108864
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %2906, label %2890

; <label>:2890                                    ; preds = %2838
  %2891 = add i32 %60, 312
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 65535
  %2895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2894)  ; LegacyF16ToF32(value)
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = and i32 %2897, 65535
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = lshr i32 %2893, 16
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = fsub fast float %2863, %2901
  %2903 = fmul fast float %2902, %2895
  %2904 = fadd fast float %2903, %2899
  %2905 = call float @dx.op.unary.f32(i32 7, float %2904)  ; Saturate(value)
  br label %2906

; <label>:2906                                    ; preds = %2890, %2838
  %2907 = phi float [ %2905, %2890 ], [ %2863, %2838 ]
  %2908 = call float @dx.op.dot2.f32(i32 54, float %2884, float %2885, float %2327, float %2328)  ; Dot2(ax,ay,bx,by)
  %2909 = call float @dx.op.dot2.f32(i32 54, float %2884, float %2885, float %2329, float %2330)  ; Dot2(ax,ay,bx,by)
  br label %2910

; <label>:2910                                    ; preds = %2906, %2816
  %2911 = phi float [ %2907, %2906 ], [ 0x3FD6666660000000, %2816 ]
  %2912 = phi float [ %2908, %2906 ], [ 0.000000e+00, %2816 ]
  %2913 = phi float [ %2909, %2906 ], [ 0.000000e+00, %2816 ]
  %2914 = phi float [ %2850, %2906 ], [ 1.000000e+00, %2816 ]
  %2915 = add i32 %60, 192
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = lshr i32 %2917, 22
  %2919 = shl nuw nsw i32 %2918, 5
  %2920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2919)  ; LegacyF16ToF32(value)
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 64
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %2958, label %2925

; <label>:2925                                    ; preds = %2910
  %2926 = add i32 %60, 400
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %2928, 0
  %2930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, 131072
  %2934 = icmp eq i32 %2933, 0
  %2935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2930, %dx.types.Handle %104, float %2423, float %2424, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.f32 %2935, 1
  %2938 = extractvalue %dx.types.ResRet.f32 %2935, 2
  %2939 = fmul fast float %2936, %326
  %2940 = fmul fast float %2937, %329
  %2941 = fmul fast float %2938, %332
  br i1 %2934, label %2948, label %2942

; <label>:2942                                    ; preds = %2925
  %2943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2944 = extractvalue %dx.types.CBufRet.f32 %2943, 0
  %2945 = fmul fast float %2944, %2939
  %2946 = fmul fast float %2944, %2940
  %2947 = fmul fast float %2944, %2941
  br label %2948

; <label>:2948                                    ; preds = %2942, %2925
  %2949 = phi float [ %2945, %2942 ], [ %2939, %2925 ]
  %2950 = phi float [ %2946, %2942 ], [ %2940, %2925 ]
  %2951 = phi float [ %2947, %2942 ], [ %2941, %2925 ]
  %2952 = fmul fast float %2949, %2920
  %2953 = select i1 %225, float %2952, float %2949
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2953, float %2950, float %2951, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = select i1 %225, float 0.000000e+00, float %2949
  %2956 = select i1 %225, float %2954, float %2950
  %2957 = select i1 %225, float 0.000000e+00, float %2951
  br label %2958

; <label>:2958                                    ; preds = %2948, %2910
  %2959 = phi float [ %2955, %2948 ], [ 0.000000e+00, %2910 ]
  %2960 = phi float [ %2956, %2948 ], [ 0.000000e+00, %2910 ]
  %2961 = phi float [ %2957, %2948 ], [ 0.000000e+00, %2910 ]
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 1024
  %2965 = icmp eq i32 %2964, 0
  br i1 %2965, label %2996, label %2966

; <label>:2966                                    ; preds = %2958
  %2967 = add i32 %60, 184
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = lshr i32 %2969, 8
  %2974 = and i32 %2973, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = lshr i32 %2969, 16
  %2978 = and i32 %2977, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = fmul fast float %2972, %2972
  %2982 = fmul fast float %2976, %2976
  %2983 = fmul fast float %2980, %2980
  %2984 = add i32 %60, 464
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = add i32 %2986, 0
  %2988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2988, %dx.types.Handle %105, float %2423, float %2424, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.ResRet.f32 %2989, 1
  %2992 = extractvalue %dx.types.ResRet.f32 %2989, 2
  %2993 = fmul fast float %2981, %2990
  %2994 = fmul fast float %2982, %2991
  %2995 = fmul fast float %2983, %2992
  br label %2996

; <label>:2996                                    ; preds = %2966, %2958
  %2997 = phi float [ %2993, %2966 ], [ 0.000000e+00, %2958 ]
  %2998 = phi float [ %2994, %2966 ], [ 0.000000e+00, %2958 ]
  %2999 = phi float [ %2995, %2966 ], [ 0.000000e+00, %2958 ]
  %3000 = fcmp fast ogt float %2997, 0.000000e+00
  %3001 = fcmp fast ogt float %2998, 0.000000e+00
  %3002 = fcmp fast ogt float %2999, 0.000000e+00
  %3003 = call float @dx.op.unary.f32(i32 23, float %2997)  ; Log(value)
  %3004 = call float @dx.op.unary.f32(i32 23, float %2998)  ; Log(value)
  %3005 = call float @dx.op.unary.f32(i32 23, float %2999)  ; Log(value)
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = lshr i32 %3007, 7
  %3009 = and i32 %3008, 32752
  %3010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3009)  ; LegacyF16ToF32(value)
  %3011 = fmul fast float %3003, 0xBFE62E4300000000
  %3012 = fmul fast float %3011, %3010
  %3013 = fmul fast float %3004, 0xBFE62E4300000000
  %3014 = fmul fast float %3013, %3010
  %3015 = fmul fast float %3005, 0xBFE62E4300000000
  %3016 = fmul fast float %3015, %3010
  %3017 = select i1 %3000, float %3012, float 1.270000e+02
  %3018 = select i1 %3001, float %3014, float 1.270000e+02
  %3019 = select i1 %3002, float %3016, float 1.270000e+02
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = and i32 %3021, 10240
  %3023 = icmp eq i32 %3022, 0
  br i1 %3023, label %3068, label %3024

; <label>:3024                                    ; preds = %2996
  %3025 = add i32 %60, 480
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = add i32 %3027, 0
  %3029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3029, %dx.types.Handle %105, float %2423, float %2424, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 1
  %3032 = extractvalue %dx.types.ResRet.f32 %3030, 3
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = and i32 %3034, 1048576
  %3036 = icmp ne i32 %3035, 0
  %3037 = and i32 %3034, 8192
  %3038 = icmp eq i32 %3037, 0
  br i1 %3038, label %3054, label %3039

; <label>:3039                                    ; preds = %3024
  %3040 = extractvalue %dx.types.ResRet.f32 %3030, 2
  %3041 = select i1 %3036, float %3040, float %3031
  %3042 = extractvalue %dx.types.ResRet.f32 %3030, 0
  %3043 = select i1 %3036, float %3042, float %3031
  %3044 = add i32 %60, 128
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = lshr i32 %3046, 16
  %3048 = and i32 %3047, 255
  %3049 = uitofp i32 %3048 to float
  %3050 = fmul fast float %3049, 0x3F80101020000000
  %3051 = fmul fast float %3050, %3043
  %3052 = fmul fast float %3050, %3031
  %3053 = fmul fast float %3050, %3041
  br label %3054

; <label>:3054                                    ; preds = %3039, %3024
  %3055 = phi float [ %3051, %3039 ], [ 0.000000e+00, %3024 ]
  %3056 = phi float [ %3052, %3039 ], [ 0.000000e+00, %3024 ]
  %3057 = phi float [ %3053, %3039 ], [ 0.000000e+00, %3024 ]
  %3058 = and i32 %3034, 2048
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3068, label %3060

; <label>:3060                                    ; preds = %3054
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = shl i32 %3062, 4
  %3064 = and i32 %3063, 32752
  %3065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3064)  ; LegacyF16ToF32(value)
  %3066 = fmul fast float %3065, %3032
  %3067 = call float @dx.op.binary.f32(i32 35, float %3066, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3068

; <label>:3068                                    ; preds = %3060, %3054, %2996
  %3069 = phi float [ %3055, %3060 ], [ %3055, %3054 ], [ 0.000000e+00, %2996 ]
  %3070 = phi float [ %3056, %3060 ], [ %3056, %3054 ], [ 0.000000e+00, %2996 ]
  %3071 = phi float [ %3057, %3060 ], [ %3057, %3054 ], [ 0.000000e+00, %2996 ]
  %3072 = phi float [ %3067, %3060 ], [ 0x3F70101020000000, %3054 ], [ 0x3F70101020000000, %2996 ]
  %3073 = add i32 %60, 128
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = lshr i32 %3075, 8
  %3079 = and i32 %3078, 255
  %3080 = uitofp i32 %3079 to float
  %3081 = call float @dx.op.dot3.f32(i32 55, float %2831, float %2832, float %2833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3082 = fmul fast float %3080, %3081
  %3083 = fadd fast float %3082, %3077
  %3084 = fmul fast float %3083, 0x3F70101020000000
  %3085 = call float @dx.op.unary.f32(i32 7, float %3084)  ; Saturate(value)
  br i1 %2315, label %3086, label %3121

; <label>:3086                                    ; preds = %3068
  %3087 = fmul fast float %3072, 2.000000e+00
  %3088 = fcmp fast olt float %3017, 1.270000e+02
  %3089 = fcmp fast olt float %3018, 1.270000e+02
  %3090 = fcmp fast olt float %3019, 1.270000e+02
  %3091 = fmul fast float %3017, 0xBFF7154760000000
  %3092 = fmul fast float %3091, %3087
  %3093 = fmul fast float %3018, 0xBFF7154760000000
  %3094 = fmul fast float %3093, %3087
  %3095 = fmul fast float %3019, 0xBFF7154760000000
  %3096 = fmul fast float %3095, %3087
  %3097 = call float @dx.op.unary.f32(i32 21, float %3092)  ; Exp(value)
  %3098 = call float @dx.op.unary.f32(i32 21, float %3094)  ; Exp(value)
  %3099 = call float @dx.op.unary.f32(i32 21, float %3096)  ; Exp(value)
  %3100 = call float @dx.op.unary.f32(i32 7, float %3097)  ; Saturate(value)
  %3101 = call float @dx.op.unary.f32(i32 7, float %3098)  ; Saturate(value)
  %3102 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  %3103 = fadd fast float %3100, -1.000000e+00
  %3104 = select i1 %3088, float %3103, float -1.000000e+00
  %3105 = fadd fast float %3101, -1.000000e+00
  %3106 = select i1 %3089, float %3105, float -1.000000e+00
  %3107 = fadd fast float %3102, -1.000000e+00
  %3108 = select i1 %3090, float %3107, float -1.000000e+00
  %3109 = fmul fast float %3104, %2611
  %3110 = fmul fast float %3106, %2611
  %3111 = fmul fast float %3108, %2611
  %3112 = fadd fast float %3109, 1.000000e+00
  %3113 = fadd fast float %3110, 1.000000e+00
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fmul fast float %3112, %2297
  %3116 = fmul fast float %3113, %2298
  %3117 = fmul fast float %3114, %2299
  %3118 = fmul fast float %3112, %2300
  %3119 = fmul fast float %3113, %2301
  %3120 = fmul fast float %3114, %2302
  br label %3121

; <label>:3121                                    ; preds = %3086, %3068
  %3122 = phi float [ %3115, %3086 ], [ %2297, %3068 ]
  %3123 = phi float [ %3116, %3086 ], [ %2298, %3068 ]
  %3124 = phi float [ %3117, %3086 ], [ %2299, %3068 ]
  %3125 = phi float [ %3118, %3086 ], [ %2300, %3068 ]
  %3126 = phi float [ %3119, %3086 ], [ %2301, %3068 ]
  %3127 = phi float [ %3120, %3086 ], [ %2302, %3068 ]
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 3
  %3131 = icmp eq i32 %3130, 3
  br i1 %3131, label %3210, label %3132

; <label>:3132                                    ; preds = %3121
  %3133 = and i32 %3129, 16
  %3134 = icmp ne i32 %3133, 0
  %3135 = select i1 %3134, float %2611, float 0.000000e+00
  %3136 = icmp eq i32 %3130, 0
  br i1 %3136, label %3137, label %3165

; <label>:3137                                    ; preds = %3132
  %3138 = and i32 %3129, 64
  %3139 = icmp ne i32 %3138, 0
  %3140 = select i1 %3139, float %2611, float 0.000000e+00
  %3141 = fsub fast float %2831, %3122
  %3142 = fsub fast float %2832, %3123
  %3143 = fsub fast float %2833, %3124
  %3144 = fmul fast float %3135, %3141
  %3145 = fmul fast float %3135, %3142
  %3146 = fmul fast float %3135, %3143
  %3147 = fadd fast float %3144, %3122
  %3148 = fadd fast float %3145, %3123
  %3149 = fadd fast float %3146, %3124
  %3150 = fsub fast float %2817, %2309
  %3151 = fmul fast float %3135, %3150
  %3152 = fadd fast float %3151, %2309
  %3153 = fsub fast float %2959, %3125
  %3154 = fsub fast float %2960, %3126
  %3155 = fsub fast float %2961, %3127
  %3156 = fmul fast float %3140, %3153
  %3157 = fmul fast float %3140, %3154
  %3158 = fmul fast float %3140, %3155
  %3159 = fadd fast float %3156, %3125
  %3160 = fadd fast float %3157, %3126
  %3161 = fadd fast float %3158, %3127
  %3162 = fsub fast float %3085, %2313
  %3163 = fmul fast float %3135, %3162
  %3164 = fadd fast float %3163, %2313
  br label %3210

; <label>:3165                                    ; preds = %3132
  %3166 = icmp eq i32 %3130, 1
  br i1 %3166, label %3167, label %3180

; <label>:3167                                    ; preds = %3165
  %3168 = fadd fast float %2831, -1.000000e+00
  %3169 = fadd fast float %2832, -1.000000e+00
  %3170 = fadd fast float %2833, -1.000000e+00
  %3171 = fmul fast float %3135, %3168
  %3172 = fmul fast float %3135, %3169
  %3173 = fmul fast float %3135, %3170
  %3174 = fadd fast float %3171, 1.000000e+00
  %3175 = fadd fast float %3172, 1.000000e+00
  %3176 = fadd fast float %3173, 1.000000e+00
  %3177 = fmul fast float %3174, %3122
  %3178 = fmul fast float %3175, %3123
  %3179 = fmul fast float %3176, %3124
  br label %3210

; <label>:3180                                    ; preds = %3165
  %3181 = icmp eq i32 %3130, 2
  br i1 %3181, label %3182, label %3210

; <label>:3182                                    ; preds = %3180
  %3183 = call float @dx.op.unary.f32(i32 24, float %2831)  ; Sqrt(value)
  %3184 = call float @dx.op.unary.f32(i32 24, float %2832)  ; Sqrt(value)
  %3185 = call float @dx.op.unary.f32(i32 24, float %2833)  ; Sqrt(value)
  %3186 = fadd fast float %3183, -5.000000e-01
  %3187 = fadd fast float %3184, -5.000000e-01
  %3188 = fadd fast float %3185, -5.000000e-01
  %3189 = fmul fast float %3186, %3135
  %3190 = fmul fast float %3187, %3135
  %3191 = fmul fast float %3188, %3135
  %3192 = fadd fast float %3189, 5.000000e-01
  %3193 = fadd fast float %3190, 5.000000e-01
  %3194 = fadd fast float %3191, 5.000000e-01
  %3195 = fmul fast float %3192, 2.000000e+00
  %3196 = fsub fast float 1.000000e+00, %3195
  %3197 = fmul fast float %3196, %3122
  %3198 = fadd fast float %3197, %3195
  %3199 = fmul fast float %3198, %3122
  %3200 = fmul fast float %3193, 2.000000e+00
  %3201 = fsub fast float 1.000000e+00, %3200
  %3202 = fmul fast float %3201, %3123
  %3203 = fadd fast float %3202, %3200
  %3204 = fmul fast float %3203, %3123
  %3205 = fmul fast float %3194, 2.000000e+00
  %3206 = fsub fast float 1.000000e+00, %3205
  %3207 = fmul fast float %3206, %3124
  %3208 = fadd fast float %3207, %3205
  %3209 = fmul fast float %3208, %3124
  br label %3210

; <label>:3210                                    ; preds = %3182, %3180, %3167, %3137, %3121
  %3211 = phi float [ %3122, %3121 ], [ %3199, %3182 ], [ %3122, %3180 ], [ %3177, %3167 ], [ %3147, %3137 ]
  %3212 = phi float [ %3123, %3121 ], [ %3204, %3182 ], [ %3123, %3180 ], [ %3178, %3167 ], [ %3148, %3137 ]
  %3213 = phi float [ %3124, %3121 ], [ %3209, %3182 ], [ %3124, %3180 ], [ %3179, %3167 ], [ %3149, %3137 ]
  %3214 = phi float [ %3125, %3121 ], [ %3125, %3182 ], [ %3125, %3180 ], [ %3125, %3167 ], [ %3159, %3137 ]
  %3215 = phi float [ %3126, %3121 ], [ %3126, %3182 ], [ %3126, %3180 ], [ %3126, %3167 ], [ %3160, %3137 ]
  %3216 = phi float [ %3127, %3121 ], [ %3127, %3182 ], [ %3127, %3180 ], [ %3127, %3167 ], [ %3161, %3137 ]
  %3217 = phi float [ %2309, %3121 ], [ %2309, %3182 ], [ %2309, %3180 ], [ %2309, %3167 ], [ %3152, %3137 ]
  %3218 = phi float [ %2313, %3121 ], [ %2313, %3182 ], [ %2313, %3180 ], [ %2313, %3167 ], [ %3164, %3137 ]
  %3219 = and i32 %3129, 12
  %3220 = icmp eq i32 %3219, 12
  br i1 %3220, label %3351, label %3221

; <label>:3221                                    ; preds = %3210
  %3222 = and i32 %3129, 2097184
  %3223 = icmp eq i32 %3222, 2097184
  %3224 = select i1 %3223, float %2611, float 0.000000e+00
  %3225 = and i32 %3129, 4194336
  %3226 = icmp eq i32 %3225, 4194336
  %3227 = select i1 %3226, float %2611, float 0.000000e+00
  %3228 = and i32 %3129, 8388640
  %3229 = icmp eq i32 %3228, 8388640
  %3230 = select i1 %3229, float %2611, float 0.000000e+00
  %3231 = and i32 %3129, 1024
  %3232 = icmp ne i32 %3231, 0
  %3233 = select i1 %3232, float %2611, float 0.000000e+00
  %3234 = and i32 %3129, 2048
  %3235 = icmp ne i32 %3234, 0
  %3236 = select i1 %3235, float %2611, float 0.000000e+00
  %3237 = and i32 %3129, 8192
  %3238 = icmp ne i32 %3237, 0
  %3239 = select i1 %3238, float %2611, float 0.000000e+00
  %3240 = icmp eq i32 %3219, 0
  br i1 %3240, label %3241, label %3275

; <label>:3241                                    ; preds = %3221
  %3242 = fsub fast float %2912, %2295
  %3243 = fsub fast float %2913, %2296
  %3244 = fmul fast float %3224, %3242
  %3245 = fmul fast float %3224, %3243
  %3246 = fadd fast float %3244, %2295
  %3247 = fadd fast float %3245, %2296
  %3248 = fsub fast float %2914, %2311
  %3249 = fmul fast float %3227, %3248
  %3250 = fadd fast float %3249, %2311
  %3251 = fsub fast float %2911, %2310
  %3252 = fmul fast float %3230, %3251
  %3253 = fadd fast float %3252, %2310
  %3254 = fsub fast float %3017, %2306
  %3255 = fsub fast float %3018, %2307
  %3256 = fsub fast float %3019, %2308
  %3257 = fmul fast float %3233, %3254
  %3258 = fmul fast float %3233, %3255
  %3259 = fmul fast float %3233, %3256
  %3260 = fadd fast float %3257, %2306
  %3261 = fadd fast float %3258, %2307
  %3262 = fadd fast float %3259, %2308
  %3263 = fsub fast float %3072, %2312
  %3264 = fmul fast float %3236, %3263
  %3265 = fadd fast float %3264, %2312
  %3266 = fsub fast float %3069, %2303
  %3267 = fsub fast float %3070, %2304
  %3268 = fsub fast float %3071, %2305
  %3269 = fmul fast float %3239, %3266
  %3270 = fmul fast float %3239, %3267
  %3271 = fmul fast float %3239, %3268
  %3272 = fadd fast float %3269, %2303
  %3273 = fadd fast float %3270, %2304
  %3274 = fadd fast float %3271, %2305
  br label %3351

; <label>:3275                                    ; preds = %3221
  %3276 = icmp eq i32 %3219, 4
  br i1 %3276, label %3277, label %3323

; <label>:3277                                    ; preds = %3275
  %3278 = fmul fast float %3224, %2912
  %3279 = fmul fast float %3224, %2913
  %3280 = fadd fast float %3278, %2295
  %3281 = fadd fast float %3279, %2296
  %3282 = call float @dx.op.binary.f32(i32 36, float %2311, float %2914)  ; FMin(a,b)
  %3283 = fsub fast float %3282, %2311
  %3284 = fmul fast float %3283, %3227
  %3285 = fadd fast float %3284, %2311
  %3286 = fadd fast float %2911, %2310
  %3287 = fmul fast float %3286, 0x3FF337FAE0000000
  %3288 = fmul fast float %2310, %2310
  %3289 = fmul fast float %2911, %2911
  %3290 = fadd fast float %3289, %3288
  %3291 = fmul fast float %3290, 0x3FE5152B00000000
  %3292 = fmul fast float %2310, 0xBFCC1F85E0000000
  %3293 = fmul fast float %3292, %2911
  %3294 = fadd fast float %3293, 0xBFE1363700000000
  %3295 = fadd fast float %3294, %3287
  %3296 = fsub fast float %3295, %3291
  %3297 = fmul fast float %3286, 0x3FBA6F0D00000000
  %3298 = fmul fast float %3290, 0x3FD0432880000000
  %3299 = fmul fast float %2310, 0xBFEF110800000000
  %3300 = fmul fast float %3299, %2911
  %3301 = fadd fast float %3300, 1.000000e+00
  %3302 = fsub fast float %3301, %3297
  %3303 = fadd fast float %3302, %3298
  %3304 = fdiv fast float %3296, %3303
  %3305 = call float @dx.op.unary.f32(i32 7, float %3304)  ; Saturate(value)
  %3306 = fsub fast float %3305, %2310
  %3307 = fmul fast float %3306, %3230
  %3308 = fadd fast float %3307, %2310
  %3309 = fmul fast float %3233, %3017
  %3310 = fmul fast float %3233, %3018
  %3311 = fmul fast float %3233, %3019
  %3312 = fadd fast float %3309, %2306
  %3313 = fadd fast float %3310, %2307
  %3314 = fadd fast float %3311, %2308
  %3315 = fmul fast float %3236, %3072
  %3316 = fadd fast float %3315, %2312
  %3317 = fmul fast float %3239, %3069
  %3318 = fmul fast float %3239, %3070
  %3319 = fmul fast float %3239, %3071
  %3320 = fadd fast float %3317, %2303
  %3321 = fadd fast float %3318, %2304
  %3322 = fadd fast float %3319, %2305
  br label %3351

; <label>:3323                                    ; preds = %3275
  %3324 = icmp eq i32 %3219, 8
  br i1 %3324, label %3325, label %3351

; <label>:3325                                    ; preds = %3323
  %3326 = fmul fast float %3224, %2912
  %3327 = fmul fast float %3224, %2913
  %3328 = fadd fast float %3326, %2295
  %3329 = fadd fast float %3327, %2296
  %3330 = call float @dx.op.binary.f32(i32 36, float %2311, float %2914)  ; FMin(a,b)
  %3331 = fsub fast float %3330, %2311
  %3332 = fmul fast float %3331, %3227
  %3333 = fadd fast float %3332, %2311
  %3334 = fsub fast float %2911, %2310
  %3335 = fmul fast float %3230, %3334
  %3336 = fadd fast float %3335, %2310
  %3337 = fmul fast float %3233, %3017
  %3338 = fmul fast float %3233, %3018
  %3339 = fmul fast float %3233, %3019
  %3340 = fadd fast float %3337, %2306
  %3341 = fadd fast float %3338, %2307
  %3342 = fadd fast float %3339, %2308
  %3343 = fmul fast float %3236, %3072
  %3344 = fadd fast float %3343, %2312
  %3345 = fmul fast float %3239, %3069
  %3346 = fmul fast float %3239, %3070
  %3347 = fmul fast float %3239, %3071
  %3348 = fadd fast float %3345, %2303
  %3349 = fadd fast float %3346, %2304
  %3350 = fadd fast float %3347, %2305
  br label %3351

; <label>:3351                                    ; preds = %3325, %3323, %3277, %3241, %3210, %2610, %2314, %2294
  %3352 = phi float [ %2295, %3210 ], [ %2295, %2610 ], [ %2295, %2294 ], [ %3328, %3325 ], [ %2295, %3323 ], [ %3280, %3277 ], [ %3246, %3241 ], [ %2295, %2314 ]
  %3353 = phi float [ %2296, %3210 ], [ %2296, %2610 ], [ %2296, %2294 ], [ %3329, %3325 ], [ %2296, %3323 ], [ %3281, %3277 ], [ %3247, %3241 ], [ %2296, %2314 ]
  %3354 = phi float [ %3211, %3210 ], [ %2297, %2610 ], [ %2297, %2294 ], [ %3211, %3325 ], [ %3211, %3323 ], [ %3211, %3277 ], [ %3211, %3241 ], [ %2297, %2314 ]
  %3355 = phi float [ %3212, %3210 ], [ %2298, %2610 ], [ %2298, %2294 ], [ %3212, %3325 ], [ %3212, %3323 ], [ %3212, %3277 ], [ %3212, %3241 ], [ %2298, %2314 ]
  %3356 = phi float [ %3213, %3210 ], [ %2299, %2610 ], [ %2299, %2294 ], [ %3213, %3325 ], [ %3213, %3323 ], [ %3213, %3277 ], [ %3213, %3241 ], [ %2299, %2314 ]
  %3357 = phi float [ %3214, %3210 ], [ %2300, %2610 ], [ %2300, %2294 ], [ %3214, %3325 ], [ %3214, %3323 ], [ %3214, %3277 ], [ %3214, %3241 ], [ %2300, %2314 ]
  %3358 = phi float [ %3215, %3210 ], [ %2301, %2610 ], [ %2301, %2294 ], [ %3215, %3325 ], [ %3215, %3323 ], [ %3215, %3277 ], [ %3215, %3241 ], [ %2301, %2314 ]
  %3359 = phi float [ %3216, %3210 ], [ %2302, %2610 ], [ %2302, %2294 ], [ %3216, %3325 ], [ %3216, %3323 ], [ %3216, %3277 ], [ %3216, %3241 ], [ %2302, %2314 ]
  %3360 = phi float [ %2303, %3210 ], [ %2303, %2610 ], [ %2303, %2294 ], [ %3348, %3325 ], [ %2303, %3323 ], [ %3320, %3277 ], [ %3272, %3241 ], [ %2303, %2314 ]
  %3361 = phi float [ %2304, %3210 ], [ %2304, %2610 ], [ %2304, %2294 ], [ %3349, %3325 ], [ %2304, %3323 ], [ %3321, %3277 ], [ %3273, %3241 ], [ %2304, %2314 ]
  %3362 = phi float [ %2305, %3210 ], [ %2305, %2610 ], [ %2305, %2294 ], [ %3350, %3325 ], [ %2305, %3323 ], [ %3322, %3277 ], [ %3274, %3241 ], [ %2305, %2314 ]
  %3363 = phi float [ %2306, %3210 ], [ %2306, %2610 ], [ %2306, %2294 ], [ %3340, %3325 ], [ %2306, %3323 ], [ %3312, %3277 ], [ %3260, %3241 ], [ %2306, %2314 ]
  %3364 = phi float [ %2307, %3210 ], [ %2307, %2610 ], [ %2307, %2294 ], [ %3341, %3325 ], [ %2307, %3323 ], [ %3313, %3277 ], [ %3261, %3241 ], [ %2307, %2314 ]
  %3365 = phi float [ %2308, %3210 ], [ %2308, %2610 ], [ %2308, %2294 ], [ %3342, %3325 ], [ %2308, %3323 ], [ %3314, %3277 ], [ %3262, %3241 ], [ %2308, %2314 ]
  %3366 = phi float [ %3217, %3210 ], [ %2309, %2610 ], [ %2309, %2294 ], [ %3217, %3325 ], [ %3217, %3323 ], [ %3217, %3277 ], [ %3217, %3241 ], [ %2309, %2314 ]
  %3367 = phi float [ %2310, %3210 ], [ %2310, %2610 ], [ %2310, %2294 ], [ %3336, %3325 ], [ %2310, %3323 ], [ %3308, %3277 ], [ %3253, %3241 ], [ %2310, %2314 ]
  %3368 = phi float [ %2311, %3210 ], [ %2311, %2610 ], [ %2311, %2294 ], [ %3333, %3325 ], [ %2311, %3323 ], [ %3285, %3277 ], [ %3250, %3241 ], [ %2311, %2314 ]
  %3369 = phi float [ %2312, %3210 ], [ %2312, %2610 ], [ %2312, %2294 ], [ %3344, %3325 ], [ %2312, %3323 ], [ %3316, %3277 ], [ %3265, %3241 ], [ %2312, %2314 ]
  %3370 = phi float [ %3218, %3210 ], [ %2313, %2610 ], [ %2313, %2294 ], [ %3218, %3325 ], [ %3218, %3323 ], [ %3218, %3277 ], [ %3218, %3241 ], [ %2313, %2314 ]
  br i1 %413, label %4408, label %3371

; <label>:3371                                    ; preds = %3351
  %3372 = icmp ult i32 %467, 4
  %3373 = add i32 %60, 72
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = add i32 %60, 76
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = or i32 %3378, %3375
  %3380 = icmp eq i32 %3379, 0
  br i1 %3380, label %4408, label %3381

; <label>:3381                                    ; preds = %3371
  %3382 = and i32 %3375, 262144
  %3383 = icmp ne i32 %3382, 0
  %3384 = select i1 %3383, float %62, float 1.000000e+00
  %3385 = select i1 %3383, float %63, float 0.000000e+00
  %3386 = select i1 %3383, float %64, float 0.000000e+00
  %3387 = select i1 %3383, float %65, float 1.000000e+00
  %3388 = select i1 %3383, float %66, float %87
  %3389 = select i1 %3383, float %67, float %88
  %3390 = add i32 %60, 332
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = lshr i32 %3392, 16
  %3394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3393)  ; LegacyF16ToF32(value)
  %3395 = fmul fast float %3394, 0x3F50624DE0000000
  %3396 = add i32 %60, 136
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = lshr i32 %3398, 16
  %3400 = and i32 %3399, 255
  %3401 = lshr i32 %3398, 24
  %3402 = add i32 %60, 340
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = and i32 %3404, 65535
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = lshr i32 %3404, 16
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = add i32 %60, 80
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = lshr i32 %3411, 22
  %3413 = shl nuw nsw i32 %3412, 5
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = shl i32 %3411, 4
  %3416 = and i32 %3415, 32752
  %3417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3416)  ; LegacyF16ToF32(value)
  %3418 = lshr i32 %3411, 7
  %3419 = and i32 %3418, 32752
  %3420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3419)  ; LegacyF16ToF32(value)
  %3421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3422 = extractvalue %dx.types.CBufRet.f32 %3421, 3
  %3423 = fmul fast float %3422, 1.000000e+03
  %3424 = fmul fast float %403, %3423
  %3425 = call float @dx.op.unary.f32(i32 22, float %3424)  ; Frc(value)
  %3426 = fadd fast float %3425, %393
  %3427 = fmul fast float %404, %3423
  %3428 = call float @dx.op.unary.f32(i32 22, float %3427)  ; Frc(value)
  %3429 = fadd fast float %3428, %395
  %3430 = fmul fast float %3395, %3423
  %3431 = call float @dx.op.unary.f32(i32 22, float %3430)  ; Frc(value)
  %3432 = fmul fast float %3431, 0x401921FB60000000
  %3433 = fadd fast float %3432, %3414
  %3434 = call float @dx.op.unary.f32(i32 13, float %3433)  ; Sin(value)
  %3435 = call float @dx.op.unary.f32(i32 12, float %3433)  ; Cos(value)
  %3436 = fsub fast float -0.000000e+00, %3434
  %3437 = fadd fast float %3388, -5.000000e-01
  %3438 = fadd fast float %3389, -5.000000e-01
  %3439 = fmul fast float %3406, %3437
  %3440 = fmul fast float %3408, %3438
  %3441 = fadd fast float %3439, 5.000000e-01
  %3442 = fadd fast float %3440, 5.000000e-01
  %3443 = fmul fast float %3417, %3441
  %3444 = fmul fast float %3420, %3442
  %3445 = fmul fast float %3435, %3443
  %3446 = call float @dx.op.tertiary.f32(i32 46, float %3436, float %3444, float %3445)  ; FMad(a,b,c)
  %3447 = fmul fast float %3434, %3443
  %3448 = call float @dx.op.tertiary.f32(i32 46, float %3435, float %3444, float %3447)  ; FMad(a,b,c)
  %3449 = fadd fast float %3426, %3446
  %3450 = fadd fast float %3429, %3448
  %3451 = icmp ugt i32 %3400, 1
  %3452 = icmp ugt i32 %3398, 33554431
  %3453 = or i1 %3452, %3451
  br i1 %3453, label %3454, label %3479

; <label>:3454                                    ; preds = %3381
  %3455 = add i32 %60, 276
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = lshr i32 %3457, 16
  %3459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3458)  ; LegacyF16ToF32(value)
  %3460 = fmul fast float %3422, %3459
  %3461 = call float @dx.op.unary.f32(i32 22, float %3460)  ; Frc(value)
  %3462 = mul nuw nsw i32 %3400, %3401
  %3463 = uitofp i32 %3462 to float
  %3464 = fmul fast float %3461, %3463
  %3465 = call float @dx.op.unary.f32(i32 27, float %3464)  ; Round_ni(value)
  %3466 = fptoui float %3465 to i32
  %3467 = urem i32 %3466, %3400
  %3468 = udiv i32 %3466, %3401
  %3469 = call float @dx.op.unary.f32(i32 22, float %3449)  ; Frc(value)
  %3470 = call float @dx.op.unary.f32(i32 22, float %3450)  ; Frc(value)
  %3471 = uitofp i32 %3467 to float
  %3472 = uitofp i32 %3468 to float
  %3473 = fadd fast float %3469, %3471
  %3474 = fadd fast float %3470, %3472
  %3475 = uitofp i32 %3400 to float
  %3476 = uitofp i32 %3401 to float
  %3477 = fdiv fast float %3473, %3475
  %3478 = fdiv fast float %3474, %3476
  br label %3479

; <label>:3479                                    ; preds = %3454, %3381
  %3480 = phi float [ %3477, %3454 ], [ %3449, %3381 ]
  %3481 = phi float [ %3478, %3454 ], [ %3450, %3381 ]
  %3482 = and i32 %3375, 16777216
  %3483 = icmp eq i32 %3482, 0
  br i1 %3483, label %3593, label %3484

; <label>:3484                                    ; preds = %3479
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.CBufRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.CBufRet.f32 %3485, 2
  %3489 = fadd fast float %3486, %163
  %3490 = fadd fast float %3487, %164
  %3491 = fadd fast float %3488, %165
  %3492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3493 = extractvalue %dx.types.CBufRet.f32 %3492, 0
  %3494 = call float @dx.op.unary.f32(i32 7, float %3493)  ; Saturate(value)
  %3495 = icmp eq i32 %61, 65535
  br i1 %3495, label %3590, label %3496

; <label>:3496                                    ; preds = %3484
  %3497 = lshr i32 %61, 1
  %3498 = shl i32 %3497, 2
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = and i32 %61, 1
  %3502 = icmp ne i32 %3501, 0
  %3503 = lshr i32 %3500, 16
  %3504 = and i32 %3500, 65535
  %3505 = select i1 %3502, i32 %3503, i32 %3504
  %3506 = icmp eq i32 %3505, 65535
  br i1 %3506, label %3586, label %3507

; <label>:3507                                    ; preds = %3496
  %3508 = mul nuw nsw i32 %3505, 40
  %3509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.f32 %3509, 0
  %3511 = extractvalue %dx.types.ResRet.f32 %3509, 1
  %3512 = extractvalue %dx.types.ResRet.f32 %3509, 2
  %3513 = add nuw nsw i32 %3508, 12
  %3514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = extractvalue %dx.types.ResRet.f32 %3514, 1
  %3517 = extractvalue %dx.types.ResRet.f32 %3514, 2
  %3518 = add nuw nsw i32 %3508, 24
  %3519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.ResRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.ResRet.f32 %3519, 2
  %3523 = add nuw nsw i32 %3508, 36
  %3524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = fsub fast float %3489, %3510
  %3527 = fsub fast float %3490, %3511
  %3528 = fsub fast float %3491, %3512
  %3529 = fmul fast float %3525, %3526
  %3530 = fmul fast float %3525, %3527
  %3531 = fmul fast float %3525, %3528
  %3532 = call float @dx.op.unary.f32(i32 27, float %3529)  ; Round_ni(value)
  %3533 = call float @dx.op.unary.f32(i32 27, float %3530)  ; Round_ni(value)
  %3534 = call float @dx.op.unary.f32(i32 27, float %3531)  ; Round_ni(value)
  %3535 = fadd fast float %3532, 5.000000e-01
  %3536 = fadd fast float %3533, 5.000000e-01
  %3537 = fadd fast float %3534, 5.000000e-01
  %3538 = fmul fast float %3535, %3515
  %3539 = fmul fast float %3536, %3516
  %3540 = fmul fast float %3537, %3517
  %3541 = shl i32 %61, 2
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = add i32 %3543, 0
  %3545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3546 = call float @dx.op.unary.f32(i32 22, float %3538)  ; Frc(value)
  %3547 = call float @dx.op.unary.f32(i32 22, float %3539)  ; Frc(value)
  %3548 = call float @dx.op.unary.f32(i32 22, float %3540)  ; Frc(value)
  %3549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3545, %dx.types.Handle %55, float %3546, float %3547, float %3548, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3550 = extractvalue %dx.types.ResRet.f32 %3549, 0
  %3551 = extractvalue %dx.types.ResRet.f32 %3549, 1
  %3552 = extractvalue %dx.types.ResRet.f32 %3549, 2
  %3553 = fmul fast float %3550, 1.023000e+03
  %3554 = fmul fast float %3551, 1.023000e+03
  %3555 = fmul fast float %3552, 1.023000e+03
  %3556 = fadd fast float %3553, 5.000000e-01
  %3557 = fadd fast float %3554, 5.000000e-01
  %3558 = fadd fast float %3555, 5.000000e-01
  %3559 = call float @dx.op.unary.f32(i32 27, float %3556)  ; Round_ni(value)
  %3560 = call float @dx.op.unary.f32(i32 27, float %3557)  ; Round_ni(value)
  %3561 = call float @dx.op.unary.f32(i32 27, float %3558)  ; Round_ni(value)
  %3562 = fsub fast float %3529, %3532
  %3563 = fsub fast float %3530, %3533
  %3564 = fsub fast float %3531, %3534
  %3565 = fmul fast float %3562, 7.500000e-01
  %3566 = fmul fast float %3563, 7.500000e-01
  %3567 = fmul fast float %3564, 7.500000e-01
  %3568 = fadd fast float %3532, 1.250000e-01
  %3569 = fadd fast float %3568, %3565
  %3570 = fadd fast float %3569, %3559
  %3571 = fadd fast float %3533, 1.250000e-01
  %3572 = fadd fast float %3571, %3566
  %3573 = fadd fast float %3572, %3560
  %3574 = fadd fast float %3534, 1.250000e-01
  %3575 = fadd fast float %3574, %3567
  %3576 = fadd fast float %3575, %3561
  %3577 = fmul fast float %3570, %3520
  %3578 = fmul fast float %3573, %3521
  %3579 = fmul fast float %3576, %3522
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = add i32 %3581, 0
  %3583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3583, %dx.types.Handle %53, float %3577, float %3578, float %3579, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  br label %3586

; <label>:3586                                    ; preds = %3507, %3496
  %3587 = phi float [ %3585, %3507 ], [ -1.000000e+00, %3496 ]
  %3588 = fadd fast float %3587, %3494
  %3589 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  br label %3590

; <label>:3590                                    ; preds = %3586, %3484
  %3591 = phi float [ %3589, %3586 ], [ %3494, %3484 ]
  %3592 = fmul fast float %3591, %462
  br label %3593

; <label>:3593                                    ; preds = %3590, %3479
  %3594 = phi float [ %3592, %3590 ], [ %462, %3479 ]
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = and i32 %3596, 256
  %3598 = icmp eq i32 %3597, 0
  br i1 %3598, label %3645, label %3599

; <label>:3599                                    ; preds = %3593
  %3600 = add i32 %60, 436
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = add i32 %3602, 0
  %3604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3604, %dx.types.Handle %105, float %3480, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = add i32 %60, 148
  %3608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.i32 %3608, 0
  %3610 = shl i32 %3609, 4
  %3611 = and i32 %3610, 32752
  %3612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3611)  ; LegacyF16ToF32(value)
  %3613 = lshr i32 %3609, 7
  %3614 = and i32 %3613, 32752
  %3615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3614)  ; LegacyF16ToF32(value)
  %3616 = fsub fast float 1.000000e+00, %3594
  %3617 = call float @dx.op.binary.f32(i32 35, float %3616, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3618 = bitcast float %3594 to i32
  %3619 = sitofp i32 %3618 to float
  %3620 = fadd fast float %3619, 0xC1CFBF8940000000
  %3621 = fmul fast float %3615, %3620
  %3622 = fadd fast float %3621, 0x41CFBF8940000000
  %3623 = fptosi float %3622 to i32
  %3624 = bitcast i32 %3623 to float
  %3625 = bitcast float %3617 to i32
  %3626 = sitofp i32 %3625 to float
  %3627 = fadd fast float %3626, 0xC1CFBF8940000000
  %3628 = fmul fast float %3627, %3615
  %3629 = fadd fast float %3628, 0x41CFBF8940000000
  %3630 = fptosi float %3629 to i32
  %3631 = bitcast i32 %3630 to float
  %3632 = fmul fast float %3624, %3612
  %3633 = fmul fast float %3631, %3612
  %3634 = fsub fast float %3617, %3632
  %3635 = fadd fast float %3633, %3617
  %3636 = call float @dx.op.unary.f32(i32 7, float %3634)  ; Saturate(value)
  %3637 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3638 = fsub fast float %3606, %3636
  %3639 = fsub fast float %3637, %3636
  %3640 = bitcast float %3639 to i32
  %3641 = sub nsw i32 2129859010, %3640
  %3642 = bitcast i32 %3641 to float
  %3643 = fmul fast float %3642, %3638
  %3644 = call float @dx.op.unary.f32(i32 7, float %3643)  ; Saturate(value)
  br label %3645

; <label>:3645                                    ; preds = %3599, %3593
  %3646 = phi float [ %3644, %3599 ], [ %3594, %3593 ]
  %3647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.i32 %3647, 0
  %3649 = and i32 %3648, 128
  %3650 = icmp eq i32 %3649, 0
  br i1 %3650, label %3667, label %3651

; <label>:3651                                    ; preds = %3645
  %3652 = add i32 %60, 420
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = add i32 %3654, 0
  %3656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3656, %dx.types.Handle %105, float %3480, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = and i32 %3660, 524288
  %3662 = icmp ne i32 %3661, 0
  %3663 = fcmp fast ogt float %3658, 0x3FE0101020000000
  %3664 = select i1 %3663, float 1.000000e+00, float 0.000000e+00
  %3665 = select i1 %3662, float %3664, float %3658
  %3666 = fmul fast float %3665, %3646
  br label %3667

; <label>:3667                                    ; preds = %3651, %3645
  %3668 = phi float [ %3666, %3651 ], [ %3646, %3645 ]
  %3669 = fcmp fast ult float %3668, 0x3F70101020000000
  br i1 %3669, label %4408, label %3670

; <label>:3670                                    ; preds = %3667
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = and i32 %3672, 16
  %3674 = icmp eq i32 %3673, 0
  br i1 %3674, label %3873, label %3675

; <label>:3675                                    ; preds = %3670
  %3676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.i32 %3676, 0
  %3678 = add i32 %60, 372
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3678, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = add i32 %3680, 0
  %3682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3683 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3682, %dx.types.Handle %104, float %3480, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.ResRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.ResRet.f32 %3683, 2
  %3687 = extractvalue %dx.types.ResRet.f32 %3683, 3
  %3688 = and i32 %3677, 255
  %3689 = uitofp i32 %3688 to float
  %3690 = lshr i32 %3677, 8
  %3691 = and i32 %3690, 255
  %3692 = uitofp i32 %3691 to float
  %3693 = fmul fast float %3687, %3689
  %3694 = fadd fast float %3693, %3692
  %3695 = fmul fast float %3694, 0x3F70101000000000
  %3696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.i32 %3696, 0
  %3698 = and i32 %3697, 512
  %3699 = icmp eq i32 %3698, 0
  br i1 %3699, label %3708, label %3700

; <label>:3700                                    ; preds = %3675
  %3701 = add i32 %60, 452
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = add i32 %3703, 0
  %3705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3705, %dx.types.Handle %105, float %3480, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  br label %3708

; <label>:3708                                    ; preds = %3700, %3675
  %3709 = phi float [ %3707, %3700 ], [ 1.000000e+00, %3675 ]
  %3710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.i32 %3710, 0
  %3712 = and i32 %3711, 33554432
  %3713 = icmp eq i32 %3712, 0
  br i1 %3713, label %3820, label %3714

; <label>:3714                                    ; preds = %3708
  %3715 = add i32 %60, 272
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = and i32 %3717, 65535
  %3719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3718)  ; LegacyF16ToF32(value)
  %3720 = lshr i32 %3717, 16
  %3721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3720)  ; LegacyF16ToF32(value)
  %3722 = add i32 %60, 276
  %3723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.i32 %3723, 0
  %3725 = and i32 %3724, 65535
  %3726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3725)  ; LegacyF16ToF32(value)
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = lshr i32 %3728, 24
  %3730 = uitofp i32 %3729 to float
  %3731 = fmul fast float %3730, 0x3F70101020000000
  %3732 = and i32 %3728, 255
  %3733 = uitofp i32 %3732 to float
  %3734 = fmul fast float %3733, 0x3F70101020000000
  %3735 = lshr i32 %3728, 8
  %3736 = and i32 %3735, 255
  %3737 = uitofp i32 %3736 to float
  %3738 = fmul fast float %3737, 0x3F70101020000000
  %3739 = lshr i32 %3728, 16
  %3740 = and i32 %3739, 255
  %3741 = uitofp i32 %3740 to float
  %3742 = fmul fast float %3741, 0x3F70101020000000
  %3743 = add i32 %60, 268
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = lshr i32 %3745, 24
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 0x3F70101020000000
  %3749 = and i32 %3745, 255
  %3750 = uitofp i32 %3749 to float
  %3751 = fmul fast float %3750, 0x3F70101020000000
  %3752 = lshr i32 %3745, 8
  %3753 = and i32 %3752, 255
  %3754 = uitofp i32 %3753 to float
  %3755 = fmul fast float %3754, 0x3F70101020000000
  %3756 = lshr i32 %3745, 16
  %3757 = and i32 %3756, 255
  %3758 = uitofp i32 %3757 to float
  %3759 = fmul fast float %3758, 0x3F70101020000000
  %3760 = bitcast float %3684 to i32
  %3761 = ashr i32 %3760, 1
  %3762 = sub nsw i32 1597463174, %3761
  %3763 = bitcast i32 %3762 to float
  %3764 = fmul fast float %3684, 5.000000e-01
  %3765 = fmul fast float %3763, %3763
  %3766 = fmul fast float %3765, %3764
  %3767 = fsub fast float 1.500000e+00, %3766
  %3768 = fmul fast float %3763, %3684
  %3769 = fmul fast float %3768, %3767
  %3770 = bitcast float %3685 to i32
  %3771 = ashr i32 %3770, 1
  %3772 = sub nsw i32 1597463174, %3771
  %3773 = bitcast i32 %3772 to float
  %3774 = fmul fast float %3685, 5.000000e-01
  %3775 = fmul fast float %3773, %3773
  %3776 = fmul fast float %3775, %3774
  %3777 = fsub fast float 1.500000e+00, %3776
  %3778 = fmul fast float %3773, %3685
  %3779 = fmul fast float %3778, %3777
  %3780 = bitcast float %3686 to i32
  %3781 = ashr i32 %3780, 1
  %3782 = sub nsw i32 1597463174, %3781
  %3783 = bitcast i32 %3782 to float
  %3784 = fmul fast float %3686, 5.000000e-01
  %3785 = fmul fast float %3783, %3783
  %3786 = fmul fast float %3785, %3784
  %3787 = fsub fast float 1.500000e+00, %3786
  %3788 = fmul fast float %3783, %3686
  %3789 = fmul fast float %3788, %3787
  %3790 = fsub fast float %3769, %3751
  %3791 = fsub fast float %3779, %3755
  %3792 = fsub fast float %3789, %3759
  %3793 = fmul fast float %3790, %3719
  %3794 = fmul fast float %3791, %3721
  %3795 = fmul fast float %3792, %3726
  %3796 = fadd fast float %3793, %3734
  %3797 = fadd fast float %3794, %3738
  %3798 = fadd fast float %3795, %3742
  %3799 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3800 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3801 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3802 = fmul fast float %3799, %3799
  %3803 = fmul fast float %3800, %3800
  %3804 = fmul fast float %3801, %3801
  %3805 = fsub fast float %3802, %3684
  %3806 = fsub fast float %3803, %3685
  %3807 = fsub fast float %3804, %3686
  %3808 = fmul fast float %3805, %3709
  %3809 = fmul fast float %3806, %3709
  %3810 = fmul fast float %3807, %3709
  %3811 = fadd fast float %3808, %3684
  %3812 = fadd fast float %3809, %3685
  %3813 = fadd fast float %3810, %3686
  %3814 = fadd fast float %3731, %3695
  %3815 = fsub fast float %3814, %3748
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3817 = fsub fast float %3816, %3695
  %3818 = fmul fast float %3817, %3709
  %3819 = fadd fast float %3818, %3695
  br label %3873

; <label>:3820                                    ; preds = %3708
  %3821 = and i32 %3711, 134217728
  %3822 = icmp eq i32 %3821, 0
  br i1 %3822, label %3857, label %3823

; <label>:3823                                    ; preds = %3820
  %3824 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3825 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %3826 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %3827 = fadd fast float %3824, -5.000000e-01
  %3828 = fadd fast float %3825, -5.000000e-01
  %3829 = fadd fast float %3826, -5.000000e-01
  %3830 = fmul fast float %3827, %3709
  %3831 = fmul fast float %3828, %3709
  %3832 = fmul fast float %3829, %3709
  %3833 = fadd fast float %3830, 5.000000e-01
  %3834 = fadd fast float %3831, 5.000000e-01
  %3835 = fadd fast float %3832, 5.000000e-01
  %3836 = call float @dx.op.unary.f32(i32 24, float %3684)  ; Sqrt(value)
  %3837 = call float @dx.op.unary.f32(i32 24, float %3685)  ; Sqrt(value)
  %3838 = call float @dx.op.unary.f32(i32 24, float %3686)  ; Sqrt(value)
  %3839 = fmul fast float %3833, 2.000000e+00
  %3840 = fsub fast float 1.000000e+00, %3839
  %3841 = fmul fast float %3840, %3836
  %3842 = fadd fast float %3841, %3839
  %3843 = fmul fast float %3842, %3836
  %3844 = fmul fast float %3834, 2.000000e+00
  %3845 = fsub fast float 1.000000e+00, %3844
  %3846 = fmul fast float %3845, %3837
  %3847 = fadd fast float %3846, %3844
  %3848 = fmul fast float %3847, %3837
  %3849 = fmul fast float %3835, 2.000000e+00
  %3850 = fsub fast float 1.000000e+00, %3849
  %3851 = fmul fast float %3850, %3838
  %3852 = fadd fast float %3851, %3849
  %3853 = fmul fast float %3852, %3838
  %3854 = fmul fast float %3843, %3843
  %3855 = fmul fast float %3848, %3848
  %3856 = fmul fast float %3853, %3853
  br label %3873

; <label>:3857                                    ; preds = %3820
  %3858 = fmul fast float %380, %380
  %3859 = fmul fast float %384, %384
  %3860 = fmul fast float %388, %388
  %3861 = fadd fast float %3858, -1.000000e+00
  %3862 = fadd fast float %3859, -1.000000e+00
  %3863 = fadd fast float %3860, -1.000000e+00
  %3864 = fmul fast float %3709, %3861
  %3865 = fmul fast float %3709, %3862
  %3866 = fmul fast float %3709, %3863
  %3867 = fadd fast float %3864, 1.000000e+00
  %3868 = fadd fast float %3865, 1.000000e+00
  %3869 = fadd fast float %3866, 1.000000e+00
  %3870 = fmul fast float %3867, %3684
  %3871 = fmul fast float %3868, %3685
  %3872 = fmul fast float %3869, %3686
  br label %3873

; <label>:3873                                    ; preds = %3857, %3823, %3714, %3670
  %3874 = phi float [ %3819, %3714 ], [ %3695, %3823 ], [ %3695, %3857 ], [ 0x3FA23C0BE0000000, %3670 ]
  %3875 = phi float [ %3811, %3714 ], [ %3854, %3823 ], [ %3870, %3857 ], [ 1.000000e+00, %3670 ]
  %3876 = phi float [ %3812, %3714 ], [ %3855, %3823 ], [ %3871, %3857 ], [ 1.000000e+00, %3670 ]
  %3877 = phi float [ %3813, %3714 ], [ %3856, %3823 ], [ %3872, %3857 ], [ 1.000000e+00, %3670 ]
  %3878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.i32 %3878, 1
  %3880 = and i32 %3879, 1
  %3881 = icmp ne i32 %3880, 0
  %3882 = add i32 %60, 356
  %3883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3882, i32 undef)  ; BufferLoad(srv,index,wot)
  %3884 = extractvalue %dx.types.ResRet.i32 %3883, 0
  %3885 = and i32 %3884, 32
  %3886 = icmp ne i32 %3885, 0
  %3887 = and i1 %3881, %3886
  %3888 = select i1 %3887, float 1.000000e+00, float %3875
  %3889 = select i1 %3887, float 0x3FD3333340000000, float %3876
  %3890 = select i1 %3887, float 0x3FD3333340000000, float %3877
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = and i32 %3892, 32
  %3894 = icmp eq i32 %3893, 0
  br i1 %3894, label %3967, label %3895

; <label>:3895                                    ; preds = %3873
  %3896 = add i32 %60, 140
  %3897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3896, i32 undef)  ; BufferLoad(srv,index,wot)
  %3898 = extractvalue %dx.types.ResRet.i32 %3897, 0
  %3899 = add i32 %60, 388
  %3900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.i32 %3900, 0
  %3902 = add i32 %3901, 0
  %3903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3903, %dx.types.Handle %104, float %3480, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3905 = extractvalue %dx.types.ResRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.ResRet.f32 %3904, 1
  %3907 = extractvalue %dx.types.ResRet.f32 %3904, 2
  %3908 = extractvalue %dx.types.ResRet.f32 %3904, 3
  %3909 = and i32 %3898, 255
  %3910 = uitofp i32 %3909 to float
  %3911 = lshr i32 %3898, 8
  %3912 = and i32 %3911, 255
  %3913 = uitofp i32 %3912 to float
  %3914 = lshr i32 %3898, 16
  %3915 = and i32 %3914, 255
  %3916 = uitofp i32 %3915 to float
  %3917 = fmul fast float %3916, 0x3F70101000000000
  %3918 = fmul fast float %3905, %3910
  %3919 = fadd fast float %3918, %3913
  %3920 = fmul fast float %3919, 0x3F70101000000000
  %3921 = fadd fast float %3906, -5.000000e-01
  %3922 = fadd fast float %3908, -5.000000e-01
  %3923 = fmul fast float %3921, %3917
  %3924 = fmul fast float %3922, %3917
  %3925 = fadd fast float %3923, 5.000000e-01
  %3926 = fadd fast float %3924, 5.000000e-01
  %3927 = fmul fast float %3925, 2.000000e+00
  %3928 = fadd fast float %3927, -1.000000e+00
  %3929 = fmul fast float %3926, 2.000000e+00
  %3930 = fadd fast float %3929, -1.000000e+00
  %3931 = fadd fast float %3928, %3930
  %3932 = fmul fast float %3931, 5.000000e-01
  %3933 = fsub fast float %3928, %3930
  %3934 = fmul fast float %3933, 5.000000e-01
  %3935 = call float @dx.op.unary.f32(i32 6, float %3932)  ; FAbs(value)
  %3936 = fsub fast float 1.000000e+00, %3935
  %3937 = call float @dx.op.unary.f32(i32 6, float %3934)  ; FAbs(value)
  %3938 = fsub fast float %3936, %3937
  %3939 = call float @dx.op.dot3.f32(i32 55, float %3932, float %3934, float %3938, float %3932, float %3934, float %3938)  ; Dot3(ax,ay,az,bx,by,bz)
  %3940 = call float @dx.op.unary.f32(i32 25, float %3939)  ; Rsqrt(value)
  %3941 = fmul fast float %3932, %3940
  %3942 = fmul fast float %3934, %3940
  %3943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3944 = extractvalue %dx.types.ResRet.i32 %3943, 0
  %3945 = and i32 %3944, 67108864
  %3946 = icmp eq i32 %3945, 0
  br i1 %3946, label %3963, label %3947

; <label>:3947                                    ; preds = %3895
  %3948 = add i32 %60, 328
  %3949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.i32 %3949, 0
  %3951 = and i32 %3950, 65535
  %3952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3951)  ; LegacyF16ToF32(value)
  %3953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.i32 %3953, 0
  %3955 = and i32 %3954, 65535
  %3956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3955)  ; LegacyF16ToF32(value)
  %3957 = lshr i32 %3950, 16
  %3958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3957)  ; LegacyF16ToF32(value)
  %3959 = fsub fast float %3920, %3958
  %3960 = fmul fast float %3959, %3952
  %3961 = fadd fast float %3960, %3956
  %3962 = call float @dx.op.unary.f32(i32 7, float %3961)  ; Saturate(value)
  br label %3963

; <label>:3963                                    ; preds = %3947, %3895
  %3964 = phi float [ %3962, %3947 ], [ %3920, %3895 ]
  %3965 = call float @dx.op.dot2.f32(i32 54, float %3941, float %3942, float %3384, float %3385)  ; Dot2(ax,ay,bx,by)
  %3966 = call float @dx.op.dot2.f32(i32 54, float %3941, float %3942, float %3386, float %3387)  ; Dot2(ax,ay,bx,by)
  br label %3967

; <label>:3967                                    ; preds = %3963, %3873
  %3968 = phi float [ %3964, %3963 ], [ 0x3FD6666660000000, %3873 ]
  %3969 = phi float [ %3965, %3963 ], [ 0.000000e+00, %3873 ]
  %3970 = phi float [ %3966, %3963 ], [ 0.000000e+00, %3873 ]
  %3971 = phi float [ %3907, %3963 ], [ 1.000000e+00, %3873 ]
  %3972 = add i32 %60, 208
  %3973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.i32 %3973, 0
  %3975 = lshr i32 %3974, 22
  %3976 = shl nuw nsw i32 %3975, 5
  %3977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3976)  ; LegacyF16ToF32(value)
  %3978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.i32 %3978, 0
  %3980 = and i32 %3979, 64
  %3981 = icmp eq i32 %3980, 0
  br i1 %3981, label %4015, label %3982

; <label>:3982                                    ; preds = %3967
  %3983 = add i32 %60, 404
  %3984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3985 = extractvalue %dx.types.ResRet.i32 %3984, 0
  %3986 = add i32 %3985, 0
  %3987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %3989 = extractvalue %dx.types.ResRet.i32 %3988, 0
  %3990 = and i32 %3989, 131072
  %3991 = icmp eq i32 %3990, 0
  %3992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3987, %dx.types.Handle %104, float %3480, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3993 = extractvalue %dx.types.ResRet.f32 %3992, 0
  %3994 = extractvalue %dx.types.ResRet.f32 %3992, 1
  %3995 = extractvalue %dx.types.ResRet.f32 %3992, 2
  %3996 = fmul fast float %3993, %368
  %3997 = fmul fast float %3994, %371
  %3998 = fmul fast float %3995, %374
  br i1 %3991, label %4005, label %3999

; <label>:3999                                    ; preds = %3982
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 0
  %4002 = fmul fast float %4001, %3996
  %4003 = fmul fast float %4001, %3997
  %4004 = fmul fast float %4001, %3998
  br label %4005

; <label>:4005                                    ; preds = %3999, %3982
  %4006 = phi float [ %4002, %3999 ], [ %3996, %3982 ]
  %4007 = phi float [ %4003, %3999 ], [ %3997, %3982 ]
  %4008 = phi float [ %4004, %3999 ], [ %3998, %3982 ]
  %4009 = fmul fast float %4006, %3977
  %4010 = select i1 %225, float %4009, float %4006
  %4011 = call float @dx.op.dot3.f32(i32 55, float %4010, float %4007, float %4008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = select i1 %225, float 0.000000e+00, float %4006
  %4013 = select i1 %225, float %4011, float %4007
  %4014 = select i1 %225, float 0.000000e+00, float %4008
  br label %4015

; <label>:4015                                    ; preds = %4005, %3967
  %4016 = phi float [ %4012, %4005 ], [ 0.000000e+00, %3967 ]
  %4017 = phi float [ %4013, %4005 ], [ 0.000000e+00, %3967 ]
  %4018 = phi float [ %4014, %4005 ], [ 0.000000e+00, %3967 ]
  %4019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4020 = extractvalue %dx.types.ResRet.i32 %4019, 0
  %4021 = and i32 %4020, 1024
  %4022 = icmp eq i32 %4021, 0
  br i1 %4022, label %4053, label %4023

; <label>:4023                                    ; preds = %4015
  %4024 = add i32 %60, 200
  %4025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4024, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.i32 %4025, 0
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = fmul fast float %4028, 0x3F70101020000000
  %4030 = lshr i32 %4026, 8
  %4031 = and i32 %4030, 255
  %4032 = uitofp i32 %4031 to float
  %4033 = fmul fast float %4032, 0x3F70101020000000
  %4034 = lshr i32 %4026, 16
  %4035 = and i32 %4034, 255
  %4036 = uitofp i32 %4035 to float
  %4037 = fmul fast float %4036, 0x3F70101020000000
  %4038 = fmul fast float %4029, %4029
  %4039 = fmul fast float %4033, %4033
  %4040 = fmul fast float %4037, %4037
  %4041 = add i32 %60, 468
  %4042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4041, i32 undef)  ; BufferLoad(srv,index,wot)
  %4043 = extractvalue %dx.types.ResRet.i32 %4042, 0
  %4044 = add i32 %4043, 0
  %4045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4045, %dx.types.Handle %105, float %3480, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.ResRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.ResRet.f32 %4046, 2
  %4050 = fmul fast float %4038, %4047
  %4051 = fmul fast float %4039, %4048
  %4052 = fmul fast float %4040, %4049
  br label %4053

; <label>:4053                                    ; preds = %4023, %4015
  %4054 = phi float [ %4050, %4023 ], [ 0.000000e+00, %4015 ]
  %4055 = phi float [ %4051, %4023 ], [ 0.000000e+00, %4015 ]
  %4056 = phi float [ %4052, %4023 ], [ 0.000000e+00, %4015 ]
  %4057 = fcmp fast ogt float %4054, 0.000000e+00
  %4058 = fcmp fast ogt float %4055, 0.000000e+00
  %4059 = fcmp fast ogt float %4056, 0.000000e+00
  %4060 = call float @dx.op.unary.f32(i32 23, float %4054)  ; Log(value)
  %4061 = call float @dx.op.unary.f32(i32 23, float %4055)  ; Log(value)
  %4062 = call float @dx.op.unary.f32(i32 23, float %4056)  ; Log(value)
  %4063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %4064 = extractvalue %dx.types.ResRet.i32 %4063, 0
  %4065 = lshr i32 %4064, 7
  %4066 = and i32 %4065, 32752
  %4067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4066)  ; LegacyF16ToF32(value)
  %4068 = fmul fast float %4060, 0xBFE62E4300000000
  %4069 = fmul fast float %4068, %4067
  %4070 = fmul fast float %4061, 0xBFE62E4300000000
  %4071 = fmul fast float %4070, %4067
  %4072 = fmul fast float %4062, 0xBFE62E4300000000
  %4073 = fmul fast float %4072, %4067
  %4074 = select i1 %4057, float %4069, float 1.270000e+02
  %4075 = select i1 %4058, float %4071, float 1.270000e+02
  %4076 = select i1 %4059, float %4073, float 1.270000e+02
  %4077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.i32 %4077, 0
  %4079 = and i32 %4078, 10240
  %4080 = icmp eq i32 %4079, 0
  br i1 %4080, label %4125, label %4081

; <label>:4081                                    ; preds = %4053
  %4082 = add i32 %60, 484
  %4083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4082, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.i32 %4083, 0
  %4085 = add i32 %4084, 0
  %4086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4086, %dx.types.Handle %105, float %3480, float %3481, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4088 = extractvalue %dx.types.ResRet.f32 %4087, 1
  %4089 = extractvalue %dx.types.ResRet.f32 %4087, 3
  %4090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.i32 %4090, 0
  %4092 = and i32 %4091, 1048576
  %4093 = icmp ne i32 %4092, 0
  %4094 = and i32 %4091, 8192
  %4095 = icmp eq i32 %4094, 0
  br i1 %4095, label %4111, label %4096

; <label>:4096                                    ; preds = %4081
  %4097 = extractvalue %dx.types.ResRet.f32 %4087, 2
  %4098 = select i1 %4093, float %4097, float %4088
  %4099 = extractvalue %dx.types.ResRet.f32 %4087, 0
  %4100 = select i1 %4093, float %4099, float %4088
  %4101 = add i32 %60, 144
  %4102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4101, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.i32 %4102, 0
  %4104 = lshr i32 %4103, 16
  %4105 = and i32 %4104, 255
  %4106 = uitofp i32 %4105 to float
  %4107 = fmul fast float %4106, 0x3F80101020000000
  %4108 = fmul fast float %4107, %4100
  %4109 = fmul fast float %4107, %4088
  %4110 = fmul fast float %4107, %4098
  br label %4111

; <label>:4111                                    ; preds = %4096, %4081
  %4112 = phi float [ %4108, %4096 ], [ 0.000000e+00, %4081 ]
  %4113 = phi float [ %4109, %4096 ], [ 0.000000e+00, %4081 ]
  %4114 = phi float [ %4110, %4096 ], [ 0.000000e+00, %4081 ]
  %4115 = and i32 %4091, 2048
  %4116 = icmp eq i32 %4115, 0
  br i1 %4116, label %4125, label %4117

; <label>:4117                                    ; preds = %4111
  %4118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.i32 %4118, 0
  %4120 = shl i32 %4119, 4
  %4121 = and i32 %4120, 32752
  %4122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4121)  ; LegacyF16ToF32(value)
  %4123 = fmul fast float %4122, %4089
  %4124 = call float @dx.op.binary.f32(i32 35, float %4123, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4125

; <label>:4125                                    ; preds = %4117, %4111, %4053
  %4126 = phi float [ %4112, %4117 ], [ %4112, %4111 ], [ 0.000000e+00, %4053 ]
  %4127 = phi float [ %4113, %4117 ], [ %4113, %4111 ], [ 0.000000e+00, %4053 ]
  %4128 = phi float [ %4114, %4117 ], [ %4114, %4111 ], [ 0.000000e+00, %4053 ]
  %4129 = phi float [ %4124, %4117 ], [ 0x3F70101020000000, %4111 ], [ 0x3F70101020000000, %4053 ]
  %4130 = add i32 %60, 144
  %4131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4130, i32 undef)  ; BufferLoad(srv,index,wot)
  %4132 = extractvalue %dx.types.ResRet.i32 %4131, 0
  %4133 = and i32 %4132, 255
  %4134 = uitofp i32 %4133 to float
  %4135 = lshr i32 %4132, 8
  %4136 = and i32 %4135, 255
  %4137 = uitofp i32 %4136 to float
  %4138 = call float @dx.op.dot3.f32(i32 55, float %3888, float %3889, float %3890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4139 = fmul fast float %4137, %4138
  %4140 = fadd fast float %4139, %4134
  %4141 = fmul fast float %4140, 0x3F70101020000000
  %4142 = call float @dx.op.unary.f32(i32 7, float %4141)  ; Saturate(value)
  br i1 %3372, label %4143, label %4178

; <label>:4143                                    ; preds = %4125
  %4144 = fmul fast float %4129, 2.000000e+00
  %4145 = fcmp fast olt float %4074, 1.270000e+02
  %4146 = fcmp fast olt float %4075, 1.270000e+02
  %4147 = fcmp fast olt float %4076, 1.270000e+02
  %4148 = fmul fast float %4074, 0xBFF7154760000000
  %4149 = fmul fast float %4148, %4144
  %4150 = fmul fast float %4075, 0xBFF7154760000000
  %4151 = fmul fast float %4150, %4144
  %4152 = fmul fast float %4076, 0xBFF7154760000000
  %4153 = fmul fast float %4152, %4144
  %4154 = call float @dx.op.unary.f32(i32 21, float %4149)  ; Exp(value)
  %4155 = call float @dx.op.unary.f32(i32 21, float %4151)  ; Exp(value)
  %4156 = call float @dx.op.unary.f32(i32 21, float %4153)  ; Exp(value)
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4159 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4160 = fadd fast float %4157, -1.000000e+00
  %4161 = select i1 %4145, float %4160, float -1.000000e+00
  %4162 = fadd fast float %4158, -1.000000e+00
  %4163 = select i1 %4146, float %4162, float -1.000000e+00
  %4164 = fadd fast float %4159, -1.000000e+00
  %4165 = select i1 %4147, float %4164, float -1.000000e+00
  %4166 = fmul fast float %4161, %3668
  %4167 = fmul fast float %4163, %3668
  %4168 = fmul fast float %4165, %3668
  %4169 = fadd fast float %4166, 1.000000e+00
  %4170 = fadd fast float %4167, 1.000000e+00
  %4171 = fadd fast float %4168, 1.000000e+00
  %4172 = fmul fast float %4169, %3354
  %4173 = fmul fast float %4170, %3355
  %4174 = fmul fast float %4171, %3356
  %4175 = fmul fast float %4169, %3357
  %4176 = fmul fast float %4170, %3358
  %4177 = fmul fast float %4171, %3359
  br label %4178

; <label>:4178                                    ; preds = %4143, %4125
  %4179 = phi float [ %4172, %4143 ], [ %3354, %4125 ]
  %4180 = phi float [ %4173, %4143 ], [ %3355, %4125 ]
  %4181 = phi float [ %4174, %4143 ], [ %3356, %4125 ]
  %4182 = phi float [ %4175, %4143 ], [ %3357, %4125 ]
  %4183 = phi float [ %4176, %4143 ], [ %3358, %4125 ]
  %4184 = phi float [ %4177, %4143 ], [ %3359, %4125 ]
  %4185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.i32 %4185, 0
  %4187 = and i32 %4186, 3
  %4188 = icmp eq i32 %4187, 3
  br i1 %4188, label %4267, label %4189

; <label>:4189                                    ; preds = %4178
  %4190 = and i32 %4186, 16
  %4191 = icmp ne i32 %4190, 0
  %4192 = select i1 %4191, float %3668, float 0.000000e+00
  %4193 = icmp eq i32 %4187, 0
  br i1 %4193, label %4194, label %4222

; <label>:4194                                    ; preds = %4189
  %4195 = and i32 %4186, 64
  %4196 = icmp ne i32 %4195, 0
  %4197 = select i1 %4196, float %3668, float 0.000000e+00
  %4198 = fsub fast float %3888, %4179
  %4199 = fsub fast float %3889, %4180
  %4200 = fsub fast float %3890, %4181
  %4201 = fmul fast float %4192, %4198
  %4202 = fmul fast float %4192, %4199
  %4203 = fmul fast float %4192, %4200
  %4204 = fadd fast float %4201, %4179
  %4205 = fadd fast float %4202, %4180
  %4206 = fadd fast float %4203, %4181
  %4207 = fsub fast float %3874, %3366
  %4208 = fmul fast float %4192, %4207
  %4209 = fadd fast float %4208, %3366
  %4210 = fsub fast float %4016, %4182
  %4211 = fsub fast float %4017, %4183
  %4212 = fsub fast float %4018, %4184
  %4213 = fmul fast float %4197, %4210
  %4214 = fmul fast float %4197, %4211
  %4215 = fmul fast float %4197, %4212
  %4216 = fadd fast float %4213, %4182
  %4217 = fadd fast float %4214, %4183
  %4218 = fadd fast float %4215, %4184
  %4219 = fsub fast float %4142, %3370
  %4220 = fmul fast float %4192, %4219
  %4221 = fadd fast float %4220, %3370
  br label %4267

; <label>:4222                                    ; preds = %4189
  %4223 = icmp eq i32 %4187, 1
  br i1 %4223, label %4224, label %4237

; <label>:4224                                    ; preds = %4222
  %4225 = fadd fast float %3888, -1.000000e+00
  %4226 = fadd fast float %3889, -1.000000e+00
  %4227 = fadd fast float %3890, -1.000000e+00
  %4228 = fmul fast float %4192, %4225
  %4229 = fmul fast float %4192, %4226
  %4230 = fmul fast float %4192, %4227
  %4231 = fadd fast float %4228, 1.000000e+00
  %4232 = fadd fast float %4229, 1.000000e+00
  %4233 = fadd fast float %4230, 1.000000e+00
  %4234 = fmul fast float %4231, %4179
  %4235 = fmul fast float %4232, %4180
  %4236 = fmul fast float %4233, %4181
  br label %4267

; <label>:4237                                    ; preds = %4222
  %4238 = icmp eq i32 %4187, 2
  br i1 %4238, label %4239, label %4267

; <label>:4239                                    ; preds = %4237
  %4240 = call float @dx.op.unary.f32(i32 24, float %3888)  ; Sqrt(value)
  %4241 = call float @dx.op.unary.f32(i32 24, float %3889)  ; Sqrt(value)
  %4242 = call float @dx.op.unary.f32(i32 24, float %3890)  ; Sqrt(value)
  %4243 = fadd fast float %4240, -5.000000e-01
  %4244 = fadd fast float %4241, -5.000000e-01
  %4245 = fadd fast float %4242, -5.000000e-01
  %4246 = fmul fast float %4243, %4192
  %4247 = fmul fast float %4244, %4192
  %4248 = fmul fast float %4245, %4192
  %4249 = fadd fast float %4246, 5.000000e-01
  %4250 = fadd fast float %4247, 5.000000e-01
  %4251 = fadd fast float %4248, 5.000000e-01
  %4252 = fmul fast float %4249, 2.000000e+00
  %4253 = fsub fast float 1.000000e+00, %4252
  %4254 = fmul fast float %4253, %4179
  %4255 = fadd fast float %4254, %4252
  %4256 = fmul fast float %4255, %4179
  %4257 = fmul fast float %4250, 2.000000e+00
  %4258 = fsub fast float 1.000000e+00, %4257
  %4259 = fmul fast float %4258, %4180
  %4260 = fadd fast float %4259, %4257
  %4261 = fmul fast float %4260, %4180
  %4262 = fmul fast float %4251, 2.000000e+00
  %4263 = fsub fast float 1.000000e+00, %4262
  %4264 = fmul fast float %4263, %4181
  %4265 = fadd fast float %4264, %4262
  %4266 = fmul fast float %4265, %4181
  br label %4267

; <label>:4267                                    ; preds = %4239, %4237, %4224, %4194, %4178
  %4268 = phi float [ %4179, %4178 ], [ %4256, %4239 ], [ %4179, %4237 ], [ %4234, %4224 ], [ %4204, %4194 ]
  %4269 = phi float [ %4180, %4178 ], [ %4261, %4239 ], [ %4180, %4237 ], [ %4235, %4224 ], [ %4205, %4194 ]
  %4270 = phi float [ %4181, %4178 ], [ %4266, %4239 ], [ %4181, %4237 ], [ %4236, %4224 ], [ %4206, %4194 ]
  %4271 = phi float [ %4182, %4178 ], [ %4182, %4239 ], [ %4182, %4237 ], [ %4182, %4224 ], [ %4216, %4194 ]
  %4272 = phi float [ %4183, %4178 ], [ %4183, %4239 ], [ %4183, %4237 ], [ %4183, %4224 ], [ %4217, %4194 ]
  %4273 = phi float [ %4184, %4178 ], [ %4184, %4239 ], [ %4184, %4237 ], [ %4184, %4224 ], [ %4218, %4194 ]
  %4274 = phi float [ %3366, %4178 ], [ %3366, %4239 ], [ %3366, %4237 ], [ %3366, %4224 ], [ %4209, %4194 ]
  %4275 = phi float [ %3370, %4178 ], [ %3370, %4239 ], [ %3370, %4237 ], [ %3370, %4224 ], [ %4221, %4194 ]
  %4276 = and i32 %4186, 12
  %4277 = icmp eq i32 %4276, 12
  br i1 %4277, label %4408, label %4278

; <label>:4278                                    ; preds = %4267
  %4279 = and i32 %4186, 2097184
  %4280 = icmp eq i32 %4279, 2097184
  %4281 = select i1 %4280, float %3668, float 0.000000e+00
  %4282 = and i32 %4186, 4194336
  %4283 = icmp eq i32 %4282, 4194336
  %4284 = select i1 %4283, float %3668, float 0.000000e+00
  %4285 = and i32 %4186, 8388640
  %4286 = icmp eq i32 %4285, 8388640
  %4287 = select i1 %4286, float %3668, float 0.000000e+00
  %4288 = and i32 %4186, 1024
  %4289 = icmp ne i32 %4288, 0
  %4290 = select i1 %4289, float %3668, float 0.000000e+00
  %4291 = and i32 %4186, 2048
  %4292 = icmp ne i32 %4291, 0
  %4293 = select i1 %4292, float %3668, float 0.000000e+00
  %4294 = and i32 %4186, 8192
  %4295 = icmp ne i32 %4294, 0
  %4296 = select i1 %4295, float %3668, float 0.000000e+00
  %4297 = icmp eq i32 %4276, 0
  br i1 %4297, label %4298, label %4332

; <label>:4298                                    ; preds = %4278
  %4299 = fsub fast float %3969, %3352
  %4300 = fsub fast float %3970, %3353
  %4301 = fmul fast float %4281, %4299
  %4302 = fmul fast float %4281, %4300
  %4303 = fadd fast float %4301, %3352
  %4304 = fadd fast float %4302, %3353
  %4305 = fsub fast float %3971, %3368
  %4306 = fmul fast float %4284, %4305
  %4307 = fadd fast float %4306, %3368
  %4308 = fsub fast float %3968, %3367
  %4309 = fmul fast float %4287, %4308
  %4310 = fadd fast float %4309, %3367
  %4311 = fsub fast float %4074, %3363
  %4312 = fsub fast float %4075, %3364
  %4313 = fsub fast float %4076, %3365
  %4314 = fmul fast float %4290, %4311
  %4315 = fmul fast float %4290, %4312
  %4316 = fmul fast float %4290, %4313
  %4317 = fadd fast float %4314, %3363
  %4318 = fadd fast float %4315, %3364
  %4319 = fadd fast float %4316, %3365
  %4320 = fsub fast float %4129, %3369
  %4321 = fmul fast float %4293, %4320
  %4322 = fadd fast float %4321, %3369
  %4323 = fsub fast float %4126, %3360
  %4324 = fsub fast float %4127, %3361
  %4325 = fsub fast float %4128, %3362
  %4326 = fmul fast float %4296, %4323
  %4327 = fmul fast float %4296, %4324
  %4328 = fmul fast float %4296, %4325
  %4329 = fadd fast float %4326, %3360
  %4330 = fadd fast float %4327, %3361
  %4331 = fadd fast float %4328, %3362
  br label %4408

; <label>:4332                                    ; preds = %4278
  %4333 = icmp eq i32 %4276, 4
  br i1 %4333, label %4334, label %4380

; <label>:4334                                    ; preds = %4332
  %4335 = fmul fast float %4281, %3969
  %4336 = fmul fast float %4281, %3970
  %4337 = fadd fast float %4335, %3352
  %4338 = fadd fast float %4336, %3353
  %4339 = call float @dx.op.binary.f32(i32 36, float %3368, float %3971)  ; FMin(a,b)
  %4340 = fsub fast float %4339, %3368
  %4341 = fmul fast float %4340, %4284
  %4342 = fadd fast float %4341, %3368
  %4343 = fadd fast float %3968, %3367
  %4344 = fmul fast float %4343, 0x3FF337FAE0000000
  %4345 = fmul fast float %3367, %3367
  %4346 = fmul fast float %3968, %3968
  %4347 = fadd fast float %4346, %4345
  %4348 = fmul fast float %4347, 0x3FE5152B00000000
  %4349 = fmul fast float %3367, 0xBFCC1F85E0000000
  %4350 = fmul fast float %4349, %3968
  %4351 = fadd fast float %4350, 0xBFE1363700000000
  %4352 = fadd fast float %4351, %4344
  %4353 = fsub fast float %4352, %4348
  %4354 = fmul fast float %4343, 0x3FBA6F0D00000000
  %4355 = fmul fast float %4347, 0x3FD0432880000000
  %4356 = fmul fast float %3367, 0xBFEF110800000000
  %4357 = fmul fast float %4356, %3968
  %4358 = fadd fast float %4357, 1.000000e+00
  %4359 = fsub fast float %4358, %4354
  %4360 = fadd fast float %4359, %4355
  %4361 = fdiv fast float %4353, %4360
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = fsub fast float %4362, %3367
  %4364 = fmul fast float %4363, %4287
  %4365 = fadd fast float %4364, %3367
  %4366 = fmul fast float %4290, %4074
  %4367 = fmul fast float %4290, %4075
  %4368 = fmul fast float %4290, %4076
  %4369 = fadd fast float %4366, %3363
  %4370 = fadd fast float %4367, %3364
  %4371 = fadd fast float %4368, %3365
  %4372 = fmul fast float %4293, %4129
  %4373 = fadd fast float %4372, %3369
  %4374 = fmul fast float %4296, %4126
  %4375 = fmul fast float %4296, %4127
  %4376 = fmul fast float %4296, %4128
  %4377 = fadd fast float %4374, %3360
  %4378 = fadd fast float %4375, %3361
  %4379 = fadd fast float %4376, %3362
  br label %4408

; <label>:4380                                    ; preds = %4332
  %4381 = icmp eq i32 %4276, 8
  br i1 %4381, label %4382, label %4408

; <label>:4382                                    ; preds = %4380
  %4383 = fmul fast float %4281, %3969
  %4384 = fmul fast float %4281, %3970
  %4385 = fadd fast float %4383, %3352
  %4386 = fadd fast float %4384, %3353
  %4387 = call float @dx.op.binary.f32(i32 36, float %3368, float %3971)  ; FMin(a,b)
  %4388 = fsub fast float %4387, %3368
  %4389 = fmul fast float %4388, %4284
  %4390 = fadd fast float %4389, %3368
  %4391 = fsub fast float %3968, %3367
  %4392 = fmul fast float %4287, %4391
  %4393 = fadd fast float %4392, %3367
  %4394 = fmul fast float %4290, %4074
  %4395 = fmul fast float %4290, %4075
  %4396 = fmul fast float %4290, %4076
  %4397 = fadd fast float %4394, %3363
  %4398 = fadd fast float %4395, %3364
  %4399 = fadd fast float %4396, %3365
  %4400 = fmul fast float %4293, %4129
  %4401 = fadd fast float %4400, %3369
  %4402 = fmul fast float %4296, %4126
  %4403 = fmul fast float %4296, %4127
  %4404 = fmul fast float %4296, %4128
  %4405 = fadd fast float %4402, %3360
  %4406 = fadd fast float %4403, %3361
  %4407 = fadd fast float %4404, %3362
  br label %4408

; <label>:4408                                    ; preds = %4382, %4380, %4334, %4298, %4267, %3667, %3371, %3351
  %4409 = phi float [ %3352, %4267 ], [ %3352, %3667 ], [ %3352, %3351 ], [ %3352, %3371 ], [ %4303, %4298 ], [ %4337, %4334 ], [ %3352, %4380 ], [ %4385, %4382 ]
  %4410 = phi float [ %3353, %4267 ], [ %3353, %3667 ], [ %3353, %3351 ], [ %3353, %3371 ], [ %4304, %4298 ], [ %4338, %4334 ], [ %3353, %4380 ], [ %4386, %4382 ]
  %4411 = phi float [ %4268, %4267 ], [ %3354, %3667 ], [ %3354, %3351 ], [ %3354, %3371 ], [ %4268, %4298 ], [ %4268, %4334 ], [ %4268, %4380 ], [ %4268, %4382 ]
  %4412 = phi float [ %4269, %4267 ], [ %3355, %3667 ], [ %3355, %3351 ], [ %3355, %3371 ], [ %4269, %4298 ], [ %4269, %4334 ], [ %4269, %4380 ], [ %4269, %4382 ]
  %4413 = phi float [ %4270, %4267 ], [ %3356, %3667 ], [ %3356, %3351 ], [ %3356, %3371 ], [ %4270, %4298 ], [ %4270, %4334 ], [ %4270, %4380 ], [ %4270, %4382 ]
  %4414 = phi float [ %4271, %4267 ], [ %3357, %3667 ], [ %3357, %3351 ], [ %3357, %3371 ], [ %4271, %4298 ], [ %4271, %4334 ], [ %4271, %4380 ], [ %4271, %4382 ]
  %4415 = phi float [ %4272, %4267 ], [ %3358, %3667 ], [ %3358, %3351 ], [ %3358, %3371 ], [ %4272, %4298 ], [ %4272, %4334 ], [ %4272, %4380 ], [ %4272, %4382 ]
  %4416 = phi float [ %4273, %4267 ], [ %3359, %3667 ], [ %3359, %3351 ], [ %3359, %3371 ], [ %4273, %4298 ], [ %4273, %4334 ], [ %4273, %4380 ], [ %4273, %4382 ]
  %4417 = phi float [ %3360, %4267 ], [ %3360, %3667 ], [ %3360, %3351 ], [ %3360, %3371 ], [ %4329, %4298 ], [ %4377, %4334 ], [ %3360, %4380 ], [ %4405, %4382 ]
  %4418 = phi float [ %3361, %4267 ], [ %3361, %3667 ], [ %3361, %3351 ], [ %3361, %3371 ], [ %4330, %4298 ], [ %4378, %4334 ], [ %3361, %4380 ], [ %4406, %4382 ]
  %4419 = phi float [ %3362, %4267 ], [ %3362, %3667 ], [ %3362, %3351 ], [ %3362, %3371 ], [ %4331, %4298 ], [ %4379, %4334 ], [ %3362, %4380 ], [ %4407, %4382 ]
  %4420 = phi float [ %3363, %4267 ], [ %3363, %3667 ], [ %3363, %3351 ], [ %3363, %3371 ], [ %4317, %4298 ], [ %4369, %4334 ], [ %3363, %4380 ], [ %4397, %4382 ]
  %4421 = phi float [ %3364, %4267 ], [ %3364, %3667 ], [ %3364, %3351 ], [ %3364, %3371 ], [ %4318, %4298 ], [ %4370, %4334 ], [ %3364, %4380 ], [ %4398, %4382 ]
  %4422 = phi float [ %3365, %4267 ], [ %3365, %3667 ], [ %3365, %3351 ], [ %3365, %3371 ], [ %4319, %4298 ], [ %4371, %4334 ], [ %3365, %4380 ], [ %4399, %4382 ]
  %4423 = phi float [ %4274, %4267 ], [ %3366, %3667 ], [ %3366, %3351 ], [ %3366, %3371 ], [ %4274, %4298 ], [ %4274, %4334 ], [ %4274, %4380 ], [ %4274, %4382 ]
  %4424 = phi float [ %3367, %4267 ], [ %3367, %3667 ], [ %3367, %3351 ], [ %3367, %3371 ], [ %4310, %4298 ], [ %4365, %4334 ], [ %3367, %4380 ], [ %4393, %4382 ]
  %4425 = phi float [ %3368, %4267 ], [ %3368, %3667 ], [ %3368, %3351 ], [ %3368, %3371 ], [ %4307, %4298 ], [ %4342, %4334 ], [ %3368, %4380 ], [ %4390, %4382 ]
  %4426 = phi float [ %3369, %4267 ], [ %3369, %3667 ], [ %3369, %3351 ], [ %3369, %3371 ], [ %4322, %4298 ], [ %4373, %4334 ], [ %3369, %4380 ], [ %4401, %4382 ]
  %4427 = phi float [ %4275, %4267 ], [ %3370, %3667 ], [ %3370, %3351 ], [ %3370, %3371 ], [ %4275, %4298 ], [ %4275, %4334 ], [ %4275, %4380 ], [ %4275, %4382 ]
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 0
  %4430 = call float @dx.op.dot2.f32(i32 54, float %4409, float %4410, float %4409, float %4410)  ; Dot2(ax,ay,bx,by)
  %4431 = fmul fast float %4430, 0x3FE3333340000000
  %4432 = fsub fast float 1.000000e+00, %4431
  %4433 = call float @dx.op.dot3.f32(i32 55, float %4409, float %4410, float %4432, float %4409, float %4410, float %4432)  ; Dot3(ax,ay,az,bx,by,bz)
  %4434 = call float @dx.op.unary.f32(i32 25, float %4433)  ; Rsqrt(value)
  %4435 = fmul fast float %4434, %4409
  %4436 = fmul fast float %4434, %4410
  %4437 = fmul fast float %4432, %4434
  %4438 = fmul fast float %4437, %115
  %4439 = fmul fast float %4437, %116
  %4440 = fmul fast float %4437, %117
  %4441 = fmul fast float %4435, %80
  %4442 = fmul fast float %4435, %81
  %4443 = fmul fast float %4435, %82
  %4444 = fadd fast float %4438, %4441
  %4445 = fadd fast float %4439, %4442
  %4446 = fadd fast float %4440, %4443
  %4447 = fmul fast float %127, %4436
  %4448 = fmul fast float %128, %4436
  %4449 = fmul fast float %129, %4436
  %4450 = fadd fast float %4444, %4447
  %4451 = fadd fast float %4445, %4448
  %4452 = fadd fast float %4446, %4449
  %4453 = call float @dx.op.dot3.f32(i32 55, float %4450, float %4451, float %4452, float %4450, float %4451, float %4452)  ; Dot3(ax,ay,az,bx,by,bz)
  %4454 = call float @dx.op.unary.f32(i32 25, float %4453)  ; Rsqrt(value)
  %4455 = fmul fast float %4450, %4454
  %4456 = fmul fast float %4451, %4454
  %4457 = fmul fast float %4452, %4454
  %4458 = call float @dx.op.unary.f32(i32 83, float %163)  ; DerivCoarseX(value)
  %4459 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %4460 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4461 = call float @dx.op.unary.f32(i32 84, float %163)  ; DerivCoarseY(value)
  %4462 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %4463 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4464 = fadd fast float %4458, %163
  %4465 = fadd fast float %4459, %164
  %4466 = fadd fast float %4460, %165
  %4467 = fadd fast float %4461, %163
  %4468 = fadd fast float %4462, %164
  %4469 = fadd fast float %4463, %165
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 0
  %4472 = extractvalue %dx.types.CBufRet.f32 %4470, 1
  %4473 = extractvalue %dx.types.CBufRet.f32 %4470, 2
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4476 = extractvalue %dx.types.CBufRet.f32 %4474, 3
  %4477 = fmul fast float %4471, %108
  %4478 = fmul fast float %4477, %4475
  %4479 = fmul fast float %4472, %109
  %4480 = fmul fast float %4479, %4476
  %4481 = fptoui float %4478 to i32
  %4482 = fptoui float %4480 to i32
  %4483 = fadd fast float %4471, -1.000000e+00
  %4484 = fadd fast float %4472, -1.000000e+00
  %4485 = fptoui float %4483 to i32
  %4486 = fptoui float %4484 to i32
  %4487 = call i32 @dx.op.binary.i32(i32 40, i32 %4481, i32 %4485)  ; UMin(a,b)
  %4488 = call i32 @dx.op.binary.i32(i32 40, i32 %4482, i32 %4486)  ; UMin(a,b)
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4491 = extractvalue %dx.types.CBufRet.f32 %4489, 3
  %4492 = fmul fast float %4490, %96
  %4493 = fsub fast float %4492, %4491
  %4494 = fadd fast float %4473, -1.000000e+00
  %4495 = call float @dx.op.binary.f32(i32 36, float %4493, float %4494)  ; FMin(a,b)
  %4496 = fptoui float %4495 to i32
  %4497 = fptoui float %4471 to i32
  %4498 = fptoui float %4472 to i32
  %4499 = mul i32 %4496, %4498
  %4500 = add i32 %4499, %4488
  %4501 = mul i32 %4500, %4497
  %4502 = add i32 %4501, %4487
  %4503 = shl i32 %4502, 2
  %4504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.i32 %4504, 0
  %4506 = and i32 %4505, 1023
  %4507 = lshr i32 %4505, 10
  %4508 = icmp eq i32 %4506, 0
  br i1 %4508, label %5012, label %4509

; <label>:4509                                    ; preds = %4408
  %4510 = and i32 %4505, 1023
  br label %4511

; <label>:4511                                    ; preds = %4643, %4509
  %4512 = phi i32 [ %4593, %4643 ], [ 0, %4509 ]
  %4513 = phi float [ %4644, %4643 ], [ 0.000000e+00, %4509 ]
  %4514 = phi float [ %4645, %4643 ], [ %4429, %4509 ]
  %4515 = phi float [ %4646, %4643 ], [ %4427, %4509 ]
  %4516 = phi float [ %4647, %4643 ], [ %4420, %4509 ]
  %4517 = phi float [ %4648, %4643 ], [ %4421, %4509 ]
  %4518 = phi float [ %4649, %4643 ], [ %4422, %4509 ]
  %4519 = phi float [ %4650, %4643 ], [ 0.000000e+00, %4509 ]
  %4520 = phi float [ %4651, %4643 ], [ 0.000000e+00, %4509 ]
  %4521 = phi float [ %4652, %4643 ], [ %4417, %4509 ]
  %4522 = phi float [ %4653, %4643 ], [ %4418, %4509 ]
  %4523 = phi float [ %4654, %4643 ], [ %4419, %4509 ]
  %4524 = phi float [ %4655, %4643 ], [ %4414, %4509 ]
  %4525 = phi float [ %4656, %4643 ], [ %4415, %4509 ]
  %4526 = phi float [ %4657, %4643 ], [ %4416, %4509 ]
  %4527 = phi float [ %4658, %4643 ], [ %4455, %4509 ]
  %4528 = phi float [ %4659, %4643 ], [ %4456, %4509 ]
  %4529 = phi float [ %4660, %4643 ], [ %4457, %4509 ]
  %4530 = phi float [ %4661, %4643 ], [ %4425, %4509 ]
  %4531 = phi float [ %4662, %4643 ], [ %4424, %4509 ]
  %4532 = phi float [ %4663, %4643 ], [ 0.000000e+00, %4509 ]
  %4533 = phi float [ %4664, %4643 ], [ %4423, %4509 ]
  %4534 = phi float [ %4665, %4643 ], [ %4411, %4509 ]
  %4535 = phi float [ %4666, %4643 ], [ %4412, %4509 ]
  %4536 = phi float [ %4667, %4643 ], [ %4413, %4509 ]
  %4537 = add nuw nsw i32 %4512, %4507
  %4538 = shl i32 %4537, 2
  %4539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4540 = extractvalue %dx.types.ResRet.i32 %4539, 0
  %4541 = shl i32 %4540, 8
  %4542 = or i32 %4541, 48
  %4543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = extractvalue %dx.types.ResRet.f32 %4543, 3
  %4548 = or i32 %4541, 64
  %4549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.i32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.i32 %4549, 1
  %4552 = or i32 %4541, 80
  %4553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 3
  %4556 = or i32 %4541, 96
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4561 = extractvalue %dx.types.ResRet.f32 %4557, 3
  %4562 = or i32 %4541, 112
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4565 = or i32 %4541, 128
  %4566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.ResRet.f32 %4566, 2
  %4570 = extractvalue %dx.types.ResRet.f32 %4566, 3
  %4571 = or i32 %4541, 144
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4577 = or i32 %4541, 160
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = extractvalue %dx.types.ResRet.f32 %4578, 3
  %4583 = or i32 %4541, 192
  %4584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.i32 %4584, 0
  %4586 = or i32 %4541, 208
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = or i32 %4541, 248
  %4590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4589, i32 undef)  ; BufferLoad(srv,index,wot)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = extractvalue %dx.types.ResRet.f32 %4590, 1
  %4593 = add nuw nsw i32 %4512, 1
  %4594 = bitcast float %4547 to i32
  %4595 = and i32 %4594, 512
  %4596 = icmp eq i32 %4595, 0
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4541, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = extractvalue %dx.types.ResRet.f32 %4597, 3
  %4602 = call float @dx.op.dot4.f32(i32 56, float %4598, float %4599, float %4600, float %4601, float %163, float %164, float %165, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4603 = or i32 %4541, 16
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = extractvalue %dx.types.ResRet.f32 %4604, 3
  %4609 = call float @dx.op.dot4.f32(i32 56, float %4605, float %4606, float %4607, float %4608, float %163, float %164, float %165, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4610 = or i32 %4541, 32
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = extractvalue %dx.types.ResRet.f32 %4611, 3
  %4616 = call float @dx.op.dot4.f32(i32 56, float %4612, float %4613, float %4614, float %4615, float %163, float %164, float %165, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4617 = call float @dx.op.unary.f32(i32 27, float %4602)  ; Round_ni(value)
  %4618 = call float @dx.op.unary.f32(i32 6, float %4617)  ; FAbs(value)
  %4619 = call float @dx.op.unary.f32(i32 27, float %4609)  ; Round_ni(value)
  %4620 = call float @dx.op.unary.f32(i32 6, float %4619)  ; FAbs(value)
  %4621 = call float @dx.op.unary.f32(i32 6, float %4616)  ; FAbs(value)
  %4622 = call float @dx.op.unary.f32(i32 27, float %4621)  ; Round_ni(value)
  %4623 = fadd fast float %4620, %4618
  %4624 = fadd fast float %4623, %4622
  %4625 = fcmp fast oeq float %4624, 0.000000e+00
  %4626 = call float @dx.op.dot4.f32(i32 56, float %4598, float %4599, float %4600, float %4601, float %4464, float %4465, float %4466, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4627 = call float @dx.op.dot4.f32(i32 56, float %4605, float %4606, float %4607, float %4608, float %4464, float %4465, float %4466, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4628 = call float @dx.op.dot4.f32(i32 56, float %4598, float %4599, float %4600, float %4601, float %4467, float %4468, float %4469, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4629 = call float @dx.op.dot4.f32(i32 56, float %4605, float %4606, float %4607, float %4608, float %4467, float %4468, float %4469, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4630 = fsub fast float %4626, %4602
  %4631 = fsub fast float %4628, %4602
  %4632 = fsub fast float %4627, %4609
  %4633 = fsub fast float %4629, %4609
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4545, float %4546, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4637 = fadd fast float %4636, %4634
  %4638 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4635, 0
  %4640 = fcmp fast ogt float %4638, %4639
  %4641 = and i1 %4625, %4640
  %4642 = and i1 %4596, %4641
  br i1 %4642, label %4669, label %4643

; <label>:4643                                    ; preds = %4998, %4750, %4669, %4511
  %4644 = phi float [ %4513, %4669 ], [ %4753, %4750 ], [ %4753, %4998 ], [ %4513, %4511 ]
  %4645 = phi float [ %4514, %4669 ], [ %4514, %4750 ], [ %4974, %4998 ], [ %4514, %4511 ]
  %4646 = phi float [ %4515, %4669 ], [ %4515, %4750 ], [ %4972, %4998 ], [ %4515, %4511 ]
  %4647 = phi float [ %4516, %4669 ], [ %4516, %4750 ], [ %4950, %4998 ], [ %4516, %4511 ]
  %4648 = phi float [ %4517, %4669 ], [ %4517, %4750 ], [ %4951, %4998 ], [ %4517, %4511 ]
  %4649 = phi float [ %4518, %4669 ], [ %4518, %4750 ], [ %4952, %4998 ], [ %4518, %4511 ]
  %4650 = phi float [ %4519, %4669 ], [ %4519, %4750 ], [ %4877, %4998 ], [ %4519, %4511 ]
  %4651 = phi float [ %4520, %4669 ], [ %4520, %4750 ], [ %4875, %4998 ], [ %4520, %4511 ]
  %4652 = phi float [ %4521, %4669 ], [ %4521, %4750 ], [ %4920, %4998 ], [ %4521, %4511 ]
  %4653 = phi float [ %4522, %4669 ], [ %4522, %4750 ], [ %4921, %4998 ], [ %4522, %4511 ]
  %4654 = phi float [ %4523, %4669 ], [ %4523, %4750 ], [ %4922, %4998 ], [ %4523, %4511 ]
  %4655 = phi float [ %4524, %4669 ], [ %4524, %4750 ], [ %5008, %4998 ], [ %4524, %4511 ]
  %4656 = phi float [ %4525, %4669 ], [ %4525, %4750 ], [ %5009, %4998 ], [ %4525, %4511 ]
  %4657 = phi float [ %4526, %4669 ], [ %4526, %4750 ], [ %5010, %4998 ], [ %4526, %4511 ]
  %4658 = phi float [ %4527, %4669 ], [ %4527, %4750 ], [ %4856, %4998 ], [ %4527, %4511 ]
  %4659 = phi float [ %4528, %4669 ], [ %4528, %4750 ], [ %4857, %4998 ], [ %4528, %4511 ]
  %4660 = phi float [ %4529, %4669 ], [ %4529, %4750 ], [ %4858, %4998 ], [ %4529, %4511 ]
  %4661 = phi float [ %4530, %4669 ], [ %4530, %4750 ], [ %4930, %4998 ], [ %4530, %4511 ]
  %4662 = phi float [ %4531, %4669 ], [ %4531, %4750 ], [ %4927, %4998 ], [ %4531, %4511 ]
  %4663 = phi float [ %4532, %4669 ], [ %4532, %4750 ], [ %4924, %4998 ], [ %4532, %4511 ]
  %4664 = phi float [ %4533, %4669 ], [ %4533, %4750 ], [ %4873, %4998 ], [ %4533, %4511 ]
  %4665 = phi float [ %4534, %4669 ], [ %4534, %4750 ], [ %4868, %4998 ], [ %4534, %4511 ]
  %4666 = phi float [ %4535, %4669 ], [ %4535, %4750 ], [ %4869, %4998 ], [ %4535, %4511 ]
  %4667 = phi float [ %4536, %4669 ], [ %4536, %4750 ], [ %4870, %4998 ], [ %4536, %4511 ]
  %4668 = icmp eq i32 %4593, %4510
  br i1 %4668, label %5011, label %4511

; <label>:4669                                    ; preds = %4511
  %4670 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4671 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4673 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4674 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4675 = extractvalue %dx.types.ResRet.i32 %4549, 3
  %4676 = extractvalue %dx.types.ResRet.i32 %4549, 2
  %4677 = add i32 %4675, 0
  %4678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4677, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4678, %dx.types.Handle %4679, float %4602, float %4609, float undef, float undef, i32 0, i32 0, i32 undef, float %4630, float %4632, float undef, float %4631, float %4633, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = fmul fast float %4681, %4674
  %4683 = fadd fast float %4682, %4673
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fmul fast float %4602, %4558
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4609, float %4685)  ; FMad(a,b,c)
  %4687 = fadd fast float %4686, %4672
  %4688 = fmul fast float %4602, %4560
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4609, float %4688)  ; FMad(a,b,c)
  %4690 = fadd fast float %4689, %4671
  %4691 = fmul fast float %4630, %4558
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4632, float %4691)  ; FMad(a,b,c)
  %4693 = fmul fast float %4630, %4560
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4632, float %4693)  ; FMad(a,b,c)
  %4695 = fmul fast float %4631, %4558
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4633, float %4695)  ; FMad(a,b,c)
  %4697 = fmul fast float %4631, %4560
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4633, float %4697)  ; FMad(a,b,c)
  %4699 = add i32 %4676, 0
  %4700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4699, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4701 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4700, %dx.types.Handle %4679, float %4687, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float %4692, float %4694, float undef, float %4696, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = and i32 %4594, 1024
  %4704 = icmp ne i32 %4703, 0
  %4705 = fcmp fast ogt float %4702, 0x3FE0101020000000
  %4706 = uitofp i1 %4705 to float
  %4707 = select i1 %4704, float %4706, float %4702
  %4708 = and i32 %4594, 8192
  %4709 = icmp ne i32 %4708, 0
  %4710 = select i1 %4709, float %4670, float 1.000000e+00
  %4711 = fmul fast float %4602, 2.000000e+00
  %4712 = fadd fast float %4711, -1.000000e+00
  %4713 = call float @dx.op.unary.f32(i32 6, float %4712)  ; FAbs(value)
  %4714 = fmul fast float %4713, %4591
  %4715 = fsub fast float %4714, %4591
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4609, 2.000000e+00
  %4718 = fadd fast float %4717, -1.000000e+00
  %4719 = call float @dx.op.unary.f32(i32 6, float %4718)  ; FAbs(value)
  %4720 = fmul fast float %4719, %4592
  %4721 = fsub fast float %4720, %4592
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fmul fast float %4621, %4554
  %4724 = fsub fast float %4723, %4554
  %4725 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4726 = fmul fast float %4684, %4710
  %4727 = fmul fast float %4726, %4681
  %4728 = fmul fast float %4727, %4716
  %4729 = fmul fast float %4728, %4707
  %4730 = fmul fast float %4729, %4722
  %4731 = fmul fast float %4730, %4725
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 1
  %4734 = extractvalue %dx.types.CBufRet.f32 %4732, 0
  %4735 = fsub fast float %4638, %4734
  %4736 = fmul fast float %4735, %4733
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4731, %4555
  %4739 = fadd fast float %4731, %4555
  %4740 = fmul fast float %4739, %4564
  %4741 = fsub fast float %4740, %4564
  %4742 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4743 = and i32 %4594, 128
  %4744 = icmp ne i32 %4743, 0
  %4745 = select i1 %4744, float %4742, float %4738
  %4746 = fmul fast float %4745, %4737
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4749 = fcmp fast ugt float %4746, %4748
  br i1 %4749, label %4750, label %4643

; <label>:4750                                    ; preds = %4669
  %4751 = select i1 %4709, float %4746, float 0.000000e+00
  %4752 = fadd fast float %4751, %4513
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  br i1 %4709, label %4643, label %4754

; <label>:4754                                    ; preds = %4750
  %4755 = and i32 %4594, 4
  %4756 = and i32 %4594, 8
  %4757 = add i32 %4550, 0
  %4758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4757, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4760 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4758, %dx.types.Handle %4759, float %4687, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float %4692, float %4694, float undef, float %4696, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4761 = extractvalue %dx.types.ResRet.f32 %4760, 0
  %4762 = extractvalue %dx.types.ResRet.f32 %4760, 1
  %4763 = extractvalue %dx.types.ResRet.f32 %4760, 2
  %4764 = extractvalue %dx.types.ResRet.f32 %4760, 3
  %4765 = bitcast float %4576 to i32
  %4766 = and i32 %4765, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = lshr i32 %4765, 8
  %4769 = and i32 %4768, 255
  %4770 = uitofp i32 %4769 to float
  %4771 = fmul fast float %4764, %4767
  %4772 = fadd fast float %4771, %4770
  %4773 = fmul fast float %4772, 0x3F70101000000000
  %4774 = add i32 %4551, 0
  %4775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4774, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4776 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4775, %dx.types.Handle %4759, float %4687, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float %4692, float %4694, float undef, float %4696, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = extractvalue %dx.types.ResRet.f32 %4776, 1
  %4779 = extractvalue %dx.types.ResRet.f32 %4776, 2
  %4780 = extractvalue %dx.types.ResRet.f32 %4776, 3
  %4781 = bitcast float %4570 to i32
  %4782 = and i32 %4781, 255
  %4783 = uitofp i32 %4782 to float
  %4784 = lshr i32 %4781, 8
  %4785 = and i32 %4784, 255
  %4786 = uitofp i32 %4785 to float
  %4787 = lshr i32 %4781, 16
  %4788 = and i32 %4787, 255
  %4789 = uitofp i32 %4788 to float
  %4790 = fmul fast float %4789, 0x3F70101000000000
  %4791 = fmul fast float %4777, %4783
  %4792 = fadd fast float %4791, %4786
  %4793 = fmul fast float %4792, 0x3F70101000000000
  %4794 = fadd fast float %4778, -5.000000e-01
  %4795 = fadd fast float %4780, -5.000000e-01
  %4796 = fmul fast float %4794, %4790
  %4797 = fmul fast float %4795, %4790
  %4798 = fadd fast float %4796, 5.000000e-01
  %4799 = fadd fast float %4797, 5.000000e-01
  %4800 = fmul fast float %4761, %4579
  %4801 = fmul fast float %4762, %4580
  %4802 = fmul fast float %4763, %4581
  %4803 = fmul fast float %4798, 2.000000e+00
  %4804 = fadd fast float %4803, -1.000000e+00
  %4805 = fmul fast float %4799, 2.000000e+00
  %4806 = fadd fast float %4805, -1.000000e+00
  %4807 = fadd fast float %4804, %4806
  %4808 = fmul fast float %4807, 5.000000e-01
  %4809 = fsub fast float %4804, %4806
  %4810 = fmul fast float %4809, 5.000000e-01
  %4811 = call float @dx.op.unary.f32(i32 6, float %4808)  ; FAbs(value)
  %4812 = fsub fast float 1.000000e+00, %4811
  %4813 = call float @dx.op.unary.f32(i32 6, float %4810)  ; FAbs(value)
  %4814 = fsub fast float %4812, %4813
  %4815 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4810, float %4814, float %4808, float %4810, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %4816 = call float @dx.op.unary.f32(i32 25, float %4815)  ; Rsqrt(value)
  %4817 = fmul fast float %4808, %4816
  %4818 = fmul fast float %4810, %4816
  %4819 = fmul fast float %4816, %4814
  %4820 = fmul fast float %4819, %4544
  %4821 = fmul fast float %4819, %4545
  %4822 = fmul fast float %4819, %4546
  %4823 = fmul fast float %4817, %4567
  %4824 = fmul fast float %4817, %4568
  %4825 = fmul fast float %4817, %4569
  %4826 = fadd fast float %4823, %4820
  %4827 = fadd fast float %4824, %4821
  %4828 = fadd fast float %4825, %4822
  %4829 = fmul fast float %4818, %4573
  %4830 = fmul fast float %4818, %4574
  %4831 = fmul fast float %4818, %4575
  %4832 = fadd fast float %4826, %4829
  %4833 = fadd fast float %4827, %4830
  %4834 = fadd fast float %4828, %4831
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4832, float %4833, float %4834, float %4832, float %4833, float %4834)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = call float @dx.op.unary.f32(i32 25, float %4835)  ; Rsqrt(value)
  %4837 = fmul fast float %4832, %4836
  %4838 = fmul fast float %4833, %4836
  %4839 = fmul fast float %4834, %4836
  %4840 = icmp ne i32 %4756, 0
  %4841 = select i1 %4840, float 1.000000e+00, float 0.000000e+00
  %4842 = fmul fast float %4746, %4841
  %4843 = and i32 %4594, 1
  %4844 = icmp eq i32 %4843, 0
  br i1 %4844, label %4845, label %4849

; <label>:4845                                    ; preds = %4754
  %4846 = fsub fast float %4837, %4527
  %4847 = fsub fast float %4838, %4528
  %4848 = fsub fast float %4839, %4529
  br label %4849

; <label>:4849                                    ; preds = %4845, %4754
  %4850 = phi float [ %4846, %4845 ], [ %4837, %4754 ]
  %4851 = phi float [ %4847, %4845 ], [ %4838, %4754 ]
  %4852 = phi float [ %4848, %4845 ], [ %4839, %4754 ]
  %4853 = fmul float %4852, %4842
  %4854 = fmul float %4851, %4842
  %4855 = fmul float %4850, %4842
  %4856 = fadd fast float %4855, %4527
  %4857 = fadd fast float %4854, %4528
  %4858 = fadd fast float %4853, %4529
  %4859 = icmp ne i32 %4755, 0
  %4860 = select i1 %4859, float 1.000000e+00, float 0.000000e+00
  %4861 = fmul fast float %4746, %4860
  %4862 = fsub fast float %4800, %4534
  %4863 = fsub fast float %4801, %4535
  %4864 = fsub fast float %4802, %4536
  %4865 = fmul fast float %4862, %4861
  %4866 = fmul fast float %4863, %4861
  %4867 = fmul fast float %4864, %4861
  %4868 = fadd fast float %4865, %4534
  %4869 = fadd fast float %4866, %4535
  %4870 = fadd fast float %4867, %4536
  %4871 = fsub fast float %4773, %4533
  %4872 = fmul fast float %4871, %4861
  %4873 = fadd fast float %4872, %4533
  %4874 = fmul fast float %4861, %4520
  %4875 = fsub fast float %4520, %4874
  %4876 = fmul fast float %4861, %4519
  %4877 = fsub fast float %4519, %4876
  %4878 = bitcast float %4588 to i32
  %4879 = lshr i32 %4878, 16
  %4880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4879)  ; LegacyF16ToF32(value)
  %4881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4882 = extractvalue %dx.types.ResRet.i32 %4881, 0
  %4883 = and i32 %4882, 1
  %4884 = icmp eq i32 %4883, 0
  br i1 %4884, label %4885, label %4910

; <label>:4885                                    ; preds = %4849
  %4886 = fadd fast float %4773, 0xBFB99999A0000000
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fmul fast float %4887, 0x3FF1C71C80000000
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = fmul fast float %4890, %4800
  %4892 = fmul fast float %4890, %4801
  %4893 = fmul fast float %4890, %4802
  %4894 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4895 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.binary.f32(i32 35, float %4895, float %4896)  ; FMax(a,b)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4894, float %4897)  ; FMax(a,b)
  %4899 = fcmp fast ogt float %4898, 0.000000e+00
  %4900 = bitcast float %4898 to i32
  %4901 = sub nsw i32 2129859010, %4900
  %4902 = bitcast i32 %4901 to float
  %4903 = select i1 %4899, float %4902, float 0.000000e+00
  %4904 = fmul fast float %4894, %4880
  %4905 = fmul fast float %4895, %4880
  %4906 = fmul fast float %4896, %4880
  %4907 = fmul fast float %4904, %4903
  %4908 = fmul fast float %4905, %4903
  %4909 = fmul fast float %4906, %4903
  br label %4910

; <label>:4910                                    ; preds = %4885, %4849
  %4911 = phi float [ %4880, %4849 ], [ %4907, %4885 ]
  %4912 = phi float [ %4880, %4849 ], [ %4908, %4885 ]
  %4913 = phi float [ %4880, %4849 ], [ %4909, %4885 ]
  %4914 = fsub fast float %4911, %4521
  %4915 = fsub fast float %4912, %4522
  %4916 = fsub fast float %4913, %4523
  %4917 = fmul fast float %4914, %4861
  %4918 = fmul fast float %4915, %4861
  %4919 = fmul fast float %4916, %4861
  %4920 = fadd fast float %4917, %4521
  %4921 = fadd fast float %4918, %4522
  %4922 = fadd fast float %4919, %4523
  %4923 = fadd fast float %4746, %4532
  %4924 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4925 = fsub fast float %4793, %4531
  %4926 = fmul fast float %4925, %4842
  %4927 = fadd fast float %4926, %4531
  %4928 = fsub fast float %4779, %4530
  %4929 = fmul fast float %4928, %4842
  %4930 = fadd fast float %4929, %4530
  br i1 %4844, label %4939, label %4931

; <label>:4931                                    ; preds = %4910
  %4932 = and i32 %4594, 32768
  %4933 = icmp eq i32 %4932, 0
  br i1 %4933, label %4949, label %4934

; <label>:4934                                    ; preds = %4931
  %4935 = fmul fast float %4842, 1.270000e+02
  %4936 = fadd fast float %4935, %4516
  %4937 = fadd fast float %4935, %4517
  %4938 = fadd fast float %4935, %4518
  br label %4949

; <label>:4939                                    ; preds = %4910
  %4940 = fsub fast float 1.270000e+02, %4516
  %4941 = fsub fast float 1.270000e+02, %4517
  %4942 = fsub fast float 1.270000e+02, %4518
  %4943 = fmul fast float %4842, %4940
  %4944 = fmul fast float %4842, %4941
  %4945 = fmul fast float %4842, %4942
  %4946 = fadd fast float %4943, %4516
  %4947 = fadd fast float %4944, %4517
  %4948 = fadd fast float %4945, %4518
  br label %4949

; <label>:4949                                    ; preds = %4939, %4934, %4931
  %4950 = phi float [ %4936, %4934 ], [ %4516, %4931 ], [ %4946, %4939 ]
  %4951 = phi float [ %4937, %4934 ], [ %4517, %4931 ], [ %4947, %4939 ]
  %4952 = phi float [ %4938, %4934 ], [ %4518, %4931 ], [ %4948, %4939 ]
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4800, float %4801, float %4802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 0
  %4956 = extractvalue %dx.types.CBufRet.f32 %4954, 1
  %4957 = fmul fast float %4956, %4953
  %4958 = fadd fast float %4957, %4955
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = bitcast float %4582 to i32
  %4961 = and i32 %4960, 65535
  %4962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4961)  ; LegacyF16ToF32(value)
  %4963 = lshr i32 %4960, 16
  %4964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4963)  ; LegacyF16ToF32(value)
  %4965 = fcmp fast oge float %4962, 0.000000e+00
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = select i1 %4965, float %4962, float %4967
  %4969 = fadd fast float %4968, %4964
  %4970 = fsub fast float %4959, %4515
  %4971 = fmul fast float %4970, %4746
  %4972 = fadd fast float %4971, %4515
  %4973 = fmul fast float %4969, %4746
  %4974 = call float @dx.op.binary.f32(i32 35, float %4514, float %4973)  ; FMax(a,b)
  %4975 = and i32 %4594, 16
  %4976 = icmp eq i32 %4975, 0
  br i1 %4976, label %4998, label %4977

; <label>:4977                                    ; preds = %4949
  %4978 = add i32 %4585, 0
  %4979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4978, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4979, %dx.types.Handle %4759, float %4687, float %4690, float undef, float undef, i32 0, i32 0, i32 undef, float %4692, float %4694, float undef, float %4696, float %4698, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.ResRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.ResRet.f32 %4980, 2
  %4984 = and i32 %4878, 65535
  %4985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4984)  ; LegacyF16ToF32(value)
  %4986 = fmul fast float %4981, %4579
  %4987 = fmul fast float %4982, %4580
  %4988 = fmul fast float %4983, %4581
  %4989 = and i32 %4594, 16384
  %4990 = icmp ne i32 %4989, 0
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = select i1 %4990, float %4992, float 1.000000e+00
  %4994 = fmul fast float %4993, %4985
  %4995 = fmul fast float %4986, %4994
  %4996 = fmul fast float %4987, %4994
  %4997 = fmul fast float %4988, %4994
  br label %4998

; <label>:4998                                    ; preds = %4977, %4949
  %4999 = phi float [ %4995, %4977 ], [ 0.000000e+00, %4949 ]
  %5000 = phi float [ %4996, %4977 ], [ 0.000000e+00, %4949 ]
  %5001 = phi float [ %4997, %4977 ], [ 0.000000e+00, %4949 ]
  %5002 = fsub fast float %4999, %4524
  %5003 = fsub fast float %5000, %4525
  %5004 = fsub fast float %5001, %4526
  %5005 = fmul fast float %5002, %4746
  %5006 = fmul fast float %5003, %4746
  %5007 = fmul fast float %5004, %4746
  %5008 = fadd fast float %5005, %4524
  %5009 = fadd fast float %5006, %4525
  %5010 = fadd fast float %5007, %4526
  br label %4643

; <label>:5011                                    ; preds = %4643
  br label %5012

; <label>:5012                                    ; preds = %5011, %4408
  %5013 = phi float [ 0.000000e+00, %4408 ], [ %4644, %5011 ]
  %5014 = phi float [ %4429, %4408 ], [ %4645, %5011 ]
  %5015 = phi float [ %4427, %4408 ], [ %4646, %5011 ]
  %5016 = phi float [ %4420, %4408 ], [ %4647, %5011 ]
  %5017 = phi float [ %4421, %4408 ], [ %4648, %5011 ]
  %5018 = phi float [ %4422, %4408 ], [ %4649, %5011 ]
  %5019 = phi float [ 0.000000e+00, %4408 ], [ %4650, %5011 ]
  %5020 = phi float [ 0.000000e+00, %4408 ], [ %4651, %5011 ]
  %5021 = phi float [ %4417, %4408 ], [ %4652, %5011 ]
  %5022 = phi float [ %4418, %4408 ], [ %4653, %5011 ]
  %5023 = phi float [ %4419, %4408 ], [ %4654, %5011 ]
  %5024 = phi float [ %4414, %4408 ], [ %4655, %5011 ]
  %5025 = phi float [ %4415, %4408 ], [ %4656, %5011 ]
  %5026 = phi float [ %4416, %4408 ], [ %4657, %5011 ]
  %5027 = phi float [ %4455, %4408 ], [ %4658, %5011 ]
  %5028 = phi float [ %4456, %4408 ], [ %4659, %5011 ]
  %5029 = phi float [ %4457, %4408 ], [ %4660, %5011 ]
  %5030 = phi float [ %4425, %4408 ], [ %4661, %5011 ]
  %5031 = phi float [ %4424, %4408 ], [ %4662, %5011 ]
  %5032 = phi float [ 0.000000e+00, %4408 ], [ %4663, %5011 ]
  %5033 = phi float [ %4423, %4408 ], [ %4664, %5011 ]
  %5034 = phi float [ %4411, %4408 ], [ %4665, %5011 ]
  %5035 = phi float [ %4412, %4408 ], [ %4666, %5011 ]
  %5036 = phi float [ %4413, %4408 ], [ %4667, %5011 ]
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5028, float %5029, float %5027, float %5028, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 25, float %5037)  ; Rsqrt(value)
  %5039 = fmul fast float %5038, %5027
  %5040 = fmul fast float %5038, %5028
  %5041 = fmul fast float %5038, %5029
  %5042 = fadd fast float %5032, %1252
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5040, float %5041, float %5039, float %5040, float %5041)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = call float @dx.op.unary.f32(i32 25, float %5044)  ; Rsqrt(value)
  %5046 = fmul fast float %5045, %5039
  %5047 = fmul fast float %5045, %5040
  %5048 = fmul fast float %5045, %5041
  %5049 = fadd fast float %5033, 0xBFB99999A0000000
  %5050 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5051 = fmul fast float %5050, 0x3FF1C71C80000000
  %5052 = call float @dx.op.binary.f32(i32 36, float %5033, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5053 = fsub fast float 1.000000e+00, %5051
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fmul fast float %5054, %5034
  %5056 = fmul fast float %5054, %5035
  %5057 = fmul fast float %5054, %5036
  %5058 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5059 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5060 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5061 = fmul fast float %5051, %5034
  %5062 = fmul fast float %5051, %5035
  %5063 = fmul fast float %5051, %5036
  %5064 = fadd fast float %5061, %5052
  %5065 = fadd fast float %5062, %5052
  %5066 = fadd fast float %5063, %5052
  %5067 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5068 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5069 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5070 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5072 = extractvalue %dx.types.ResRet.i32 %5071, 0
  %5073 = and i32 %5072, 1
  %5074 = icmp eq i32 %5073, 0
  br i1 %5074, label %5089, label %5075

; <label>:5075                                    ; preds = %5012
  %5076 = call float @dx.op.binary.f32(i32 35, float %5059, float %5060)  ; FMax(a,b)
  %5077 = call float @dx.op.binary.f32(i32 35, float %5058, float %5076)  ; FMax(a,b)
  %5078 = fcmp fast ogt float %5077, 0.000000e+00
  %5079 = bitcast float %5077 to i32
  %5080 = sub nsw i32 2129859010, %5079
  %5081 = bitcast i32 %5080 to float
  %5082 = select i1 %5078, float %5081, float 0.000000e+00
  %5083 = fmul fast float %5058, %5021
  %5084 = fmul fast float %5059, %5022
  %5085 = fmul fast float %5060, %5023
  %5086 = fmul fast float %5083, %5082
  %5087 = fmul fast float %5084, %5082
  %5088 = fmul fast float %5085, %5082
  br label %5089

; <label>:5089                                    ; preds = %5075, %5012
  %5090 = phi float [ %5086, %5075 ], [ %5021, %5012 ]
  %5091 = phi float [ %5087, %5075 ], [ %5022, %5012 ]
  %5092 = phi float [ %5088, %5075 ], [ %5023, %5012 ]
  %5093 = call float @dx.op.binary.f32(i32 36, float %5016, float 1.270000e+02)  ; FMin(a,b)
  %5094 = call float @dx.op.binary.f32(i32 36, float %5017, float 1.270000e+02)  ; FMin(a,b)
  %5095 = call float @dx.op.binary.f32(i32 36, float %5018, float 1.270000e+02)  ; FMin(a,b)
  %5096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.i32 %5096, 3
  %5098 = and i32 %5097, 8
  %5099 = icmp ne i32 %5098, 0
  %5100 = call float @dx.op.binary.f32(i32 35, float %5058, float %5034)  ; FMax(a,b)
  %5101 = call float @dx.op.binary.f32(i32 35, float %5059, float %5034)  ; FMax(a,b)
  %5102 = call float @dx.op.binary.f32(i32 35, float %5060, float %5034)  ; FMax(a,b)
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5058, float %5059, float %5060, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = select i1 %225, float %5034, float %5058
  %5105 = select i1 %225, float %5103, float %5059
  %5106 = select i1 %225, float 1.000000e+00, float %5060
  %5107 = select i1 %5099, float %5100, float %5104
  %5108 = select i1 %5099, float %5101, float %5105
  %5109 = select i1 %5099, float %5102, float %5106
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5090, float %5091, float %5092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = select i1 %225, float %5110, float %5090
  %5112 = select i1 %225, float %5110, float %5091
  %5113 = select i1 %225, float %5110, float %5092
  %5114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5115 = extractvalue %dx.types.CBufRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.CBufRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.CBufRet.f32 %5114, 2
  %5118 = fadd fast float %5115, %163
  %5119 = fadd fast float %5116, %164
  %5120 = fadd fast float %5117, %165
  %5121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.f32 %5121, 0
  %5123 = extractvalue %dx.types.CBufRet.f32 %5121, 1
  %5124 = fsub fast float %5118, %5122
  %5125 = fsub fast float %5119, %5123
  %5126 = fmul fast float %5124, %5124
  %5127 = fmul fast float %5125, %5125
  %5128 = fadd fast float %5126, %5127
  %5129 = call float @dx.op.unary.f32(i32 24, float %5128)  ; Sqrt(value)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5121, 2
  %5131 = fcmp fast olt float %5129, %5130
  br i1 %5131, label %5132, label %5199

; <label>:5132                                    ; preds = %5089
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5140 = extractvalue %dx.types.CBufRet.f32 %5135, 1
  %5141 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5142 = extractvalue %dx.types.CBufRet.f32 %5133, 3
  %5143 = extractvalue %dx.types.CBufRet.f32 %5135, 3
  %5144 = extractvalue %dx.types.CBufRet.f32 %5137, 3
  %5145 = fadd fast float %5142, %5118
  %5146 = fadd fast float %5143, %5119
  %5147 = fadd fast float %5144, %5120
  %5148 = fmul fast float %5145, %5134
  %5149 = call float @dx.op.tertiary.f32(i32 46, float %5146, float %5136, float %5148)  ; FMad(a,b,c)
  %5150 = call float @dx.op.tertiary.f32(i32 46, float %5147, float %5138, float %5149)  ; FMad(a,b,c)
  %5151 = fmul fast float %5145, %5139
  %5152 = call float @dx.op.tertiary.f32(i32 46, float %5146, float %5140, float %5151)  ; FMad(a,b,c)
  %5153 = call float @dx.op.tertiary.f32(i32 46, float %5147, float %5141, float %5152)  ; FMad(a,b,c)
  %5154 = fsub fast float %5150, %5142
  %5155 = fsub fast float %5153, %5143
  %5156 = fsub fast float %5154, %5122
  %5157 = fadd fast float %5156, %5130
  %5158 = fsub fast float %5155, %5123
  %5159 = fadd fast float %5158, %5130
  %5160 = extractvalue %dx.types.CBufRet.f32 %5121, 3
  %5161 = fmul fast float %5157, %5160
  %5162 = fmul fast float %5159, %5160
  %5163 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5164 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5165 = fsub fast float 1.000000e+00, %5163
  %5166 = fsub fast float 1.000000e+00, %5164
  %5167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5165, float %5166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5168 = extractvalue %dx.types.ResRet.f32 %5167, 0
  %5169 = fcmp fast ugt float %5168, 0.000000e+00
  br i1 %5169, label %5170, label %5473

; <label>:5170                                    ; preds = %5132
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 2
  %5173 = fmul fast float %5172, %5168
  %5174 = extractvalue %dx.types.CBufRet.f32 %5171, 3
  %5175 = fadd fast float %5174, %5173
  %5176 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5177 = fadd fast float %5175, %5144
  %5178 = fmul fast float %5150, %5138
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %5153, float %5141, float %5178)  ; FMad(a,b,c)
  %5180 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5176, float %5179)  ; FMad(a,b,c)
  %5181 = fsub fast float %5180, %5144
  %5182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.f32 %5182, 2
  %5184 = fsub fast float %5181, %5183
  %5185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5165, float %5166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5165, float %5166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5190 = extractvalue %dx.types.ResRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.ResRet.f32 %5189, 1
  %5192 = extractvalue %dx.types.ResRet.f32 %5189, 2
  %5193 = fadd fast float %5190, %5186
  %5194 = fmul fast float %5193, 0x3F847AE140000000
  %5195 = fadd fast float %5191, %5187
  %5196 = fmul fast float %5195, 0x3F847AE140000000
  %5197 = fadd fast float %5192, %5188
  %5198 = fmul fast float %5197, 0x3F847AE140000000
  br label %5473

; <label>:5199                                    ; preds = %5089
  %5200 = and i32 %201, 1
  %5201 = icmp eq i32 %5200, 0
  br i1 %5201, label %5473, label %5202

; <label>:5202                                    ; preds = %5199
  %5203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.f32 %5203, 0
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 0
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 0
  %5209 = extractvalue %dx.types.CBufRet.f32 %5203, 1
  %5210 = extractvalue %dx.types.CBufRet.f32 %5205, 1
  %5211 = extractvalue %dx.types.CBufRet.f32 %5207, 1
  %5212 = extractvalue %dx.types.CBufRet.f32 %5203, 3
  %5213 = extractvalue %dx.types.CBufRet.f32 %5205, 3
  %5214 = extractvalue %dx.types.CBufRet.f32 %5207, 3
  %5215 = fadd fast float %5212, %5118
  %5216 = fadd fast float %5213, %5119
  %5217 = fadd fast float %5214, %5120
  %5218 = fmul fast float %5215, %5204
  %5219 = call float @dx.op.tertiary.f32(i32 46, float %5216, float %5206, float %5218)  ; FMad(a,b,c)
  %5220 = call float @dx.op.tertiary.f32(i32 46, float %5217, float %5208, float %5219)  ; FMad(a,b,c)
  %5221 = fmul fast float %5215, %5209
  %5222 = call float @dx.op.tertiary.f32(i32 46, float %5216, float %5210, float %5221)  ; FMad(a,b,c)
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5217, float %5211, float %5222)  ; FMad(a,b,c)
  %5224 = fsub fast float %5220, %5212
  %5225 = fsub fast float %5223, %5213
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.CBufRet.f32 %5226, 1
  %5229 = extractvalue %dx.types.CBufRet.f32 %5226, 2
  %5230 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5232 = extractvalue %dx.types.CBufRet.f32 %5231, 3
  %5233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.i32 %5233, 0
  %5235 = extractvalue %dx.types.CBufRet.i32 %5233, 1
  %5236 = udiv i32 %5235, %5234
  %5237 = fsub fast float %5224, %5227
  %5238 = fsub fast float %5225, %5228
  %5239 = call float @dx.op.binary.f32(i32 35, float %5237, float 0.000000e+00)  ; FMax(a,b)
  %5240 = call float @dx.op.binary.f32(i32 35, float %5238, float 0.000000e+00)  ; FMax(a,b)
  %5241 = call float @dx.op.binary.f32(i32 36, float %5239, float %5229)  ; FMin(a,b)
  %5242 = call float @dx.op.binary.f32(i32 36, float %5240, float %5230)  ; FMin(a,b)
  %5243 = add i32 %5234, -1
  %5244 = add i32 %5236, -1
  %5245 = fmul fast float %5241, %5232
  %5246 = fmul fast float %5242, %5232
  %5247 = fptoui float %5245 to i32
  %5248 = fptoui float %5246 to i32
  %5249 = call i32 @dx.op.binary.i32(i32 40, i32 %5247, i32 %5243)  ; UMin(a,b)
  %5250 = call i32 @dx.op.binary.i32(i32 40, i32 %5248, i32 %5244)  ; UMin(a,b)
  %5251 = mul i32 %5250, %5234
  %5252 = add i32 %5251, %5249
  %5253 = shl i32 %5252, 2
  %5254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5253, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.i32 %5254, 0
  %5256 = icmp eq i32 %5255, -1
  br i1 %5256, label %5473, label %5257

; <label>:5257                                    ; preds = %5202
  %5258 = mul i32 %5255, 148
  %5259 = add i32 %5258, 4
  %5260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5261 = extractvalue %dx.types.ResRet.f32 %5260, 0
  %5262 = add i32 %5258, 8
  %5263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = add i32 %5258, 36
  %5266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5265, i32 undef)  ; BufferLoad(srv,index,wot)
  %5267 = extractvalue %dx.types.ResRet.f32 %5266, 0
  %5268 = add i32 %5258, 60
  %5269 = add i32 %5258, 92
  %5270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5269, i32 undef)  ; BufferLoad(srv,index,wot)
  %5271 = extractvalue %dx.types.ResRet.i32 %5270, 0
  %5272 = add i32 %5258, 116
  %5273 = fsub fast float %5224, %5261
  %5274 = fsub fast float %5225, %5264
  %5275 = fmul fast float %5232, %5273
  %5276 = fmul fast float %5232, %5274
  %5277 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5278 = call float @dx.op.unary.f32(i32 7, float %5276)  ; Saturate(value)
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 2
  %5282 = call float @dx.op.unary.f32(i32 83, float %5277)  ; DerivCoarseX(value)
  %5283 = call float @dx.op.unary.f32(i32 83, float %5279)  ; DerivCoarseX(value)
  %5284 = call float @dx.op.unary.f32(i32 84, float %5277)  ; DerivCoarseY(value)
  %5285 = call float @dx.op.unary.f32(i32 84, float %5279)  ; DerivCoarseY(value)
  %5286 = fmul fast float %5282, %5281
  %5287 = fmul fast float %5283, %5281
  %5288 = fmul fast float %5284, %5281
  %5289 = fmul fast float %5285, %5281
  %5290 = call float @dx.op.dot2.f32(i32 54, float %5288, float %5289, float %5288, float %5289)  ; Dot2(ax,ay,bx,by)
  %5291 = call float @dx.op.dot2.f32(i32 54, float %5286, float %5287, float %5286, float %5287)  ; Dot2(ax,ay,bx,by)
  %5292 = call float @dx.op.binary.f32(i32 35, float %5291, float %5290)  ; FMax(a,b)
  %5293 = call float @dx.op.unary.f32(i32 23, float %5292)  ; Log(value)
  %5294 = fmul fast float %5293, 5.000000e-01
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 1
  %5297 = fadd fast float %5296, %5294
  %5298 = call float @dx.op.binary.f32(i32 35, float %5297, float 0.000000e+00)  ; FMax(a,b)
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 3
  %5301 = fadd fast float %5300, %5298
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 3
  %5304 = fadd fast float %5301, %5303
  %5305 = add i32 %5271, 0
  %5306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5305, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5307 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5306, i32 0)  ; GetDimensions(handle,mipLevel)
  %5308 = extractvalue %dx.types.Dimensions %5307, 0
  %5309 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5308)  ; FirstbitLo(value)
  %5310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.i32 %5310, 1
  %5312 = sub nsw i32 %5311, %5309
  %5313 = sitofp i32 %5312 to float
  %5314 = fsub fast float %5304, %5313
  %5315 = call float @dx.op.binary.f32(i32 35, float %5314, float 0.000000e+00)  ; FMax(a,b)
  %5316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5306, %dx.types.Handle %52, float %5277, float %5279, float %5267, float undef, i32 0, i32 0, i32 undef, float %5315)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = fcmp ule float %5317, 0x3FE0101020000000
  %5319 = extractvalue %dx.types.CBufRet.i32 %5310, 0
  %5320 = and i32 %5319, 128
  %5321 = icmp ne i32 %5320, 0
  %5322 = and i1 %5318, %5321
  br i1 %5322, label %5473, label %5323

; <label>:5323                                    ; preds = %5257
  %5324 = add i32 %5258, 20
  %5325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5324, i32 undef)  ; BufferLoad(srv,index,wot)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = add i32 %5258, 24
  %5328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.f32 %5328, 0
  %5330 = add i32 %5258, 40
  %5331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5330, i32 undef)  ; BufferLoad(srv,index,wot)
  %5332 = extractvalue %dx.types.ResRet.f32 %5331, 0
  %5333 = add i32 %5258, 96
  %5334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5333, i32 undef)  ; BufferLoad(srv,index,wot)
  %5335 = extractvalue %dx.types.ResRet.i32 %5334, 0
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 2
  %5338 = fmul fast float %5337, %5277
  %5339 = fmul fast float %5337, %5279
  %5340 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5341 = fadd fast float %5338, %5340
  %5342 = fadd fast float %5339, %5340
  %5343 = add i32 %5335, 0
  %5344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5343, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5345 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5344, i32 0)  ; GetDimensions(handle,mipLevel)
  %5346 = extractvalue %dx.types.Dimensions %5345, 0
  %5347 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5346)  ; FirstbitLo(value)
  %5348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.i32 %5348, 1
  %5350 = sub nsw i32 %5349, %5347
  %5351 = sitofp i32 %5350 to float
  %5352 = fsub fast float %5301, %5351
  %5353 = call float @dx.op.binary.f32(i32 35, float %5352, float 0.000000e+00)  ; FMax(a,b)
  %5354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5344, %dx.types.Handle %52, float %5341, float %5342, float %5332, float undef, i32 0, i32 0, i32 undef, float %5353)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 0
  %5356 = fmul fast float %5355, %5326
  %5357 = fadd fast float %5356, %5329
  %5358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.f32 %5358, 0
  %5360 = extractvalue %dx.types.CBufRet.f32 %5358, 1
  %5361 = extractvalue %dx.types.CBufRet.f32 %5358, 2
  %5362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.f32 %5362, 3
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 3
  %5366 = extractvalue %dx.types.CBufRet.f32 %5358, 3
  %5367 = fadd fast float %5363, %5224
  %5368 = fadd fast float %5365, %5225
  %5369 = fadd fast float %5357, %5366
  %5370 = fmul fast float %5367, %5359
  %5371 = call float @dx.op.tertiary.f32(i32 46, float %5368, float %5360, float %5370)  ; FMad(a,b,c)
  %5372 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %5361, float %5371)  ; FMad(a,b,c)
  %5373 = fsub fast float %5372, %5366
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 2
  %5376 = fsub fast float %5373, %5375
  %5377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.i32 %5377, 0
  %5379 = call i32 @dx.op.binary.i32(i32 40, i32 %5255, i32 %5378)  ; UMin(a,b)
  %5380 = mul i32 %5379, 36
  %5381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5380, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.i32 %5381, 0
  %5383 = add i32 %5380, 4
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = fmul fast float %5385, %5277
  %5387 = fmul fast float %5385, %5279
  %5388 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5389 = fadd fast float %5386, %5388
  %5390 = fadd fast float %5387, %5388
  %5391 = icmp eq i32 %5382, 0
  br i1 %5391, label %5460, label %5392

; <label>:5392                                    ; preds = %5323
  br label %5393

; <label>:5393                                    ; preds = %5450, %5392
  %5394 = phi float [ %5451, %5450 ], [ 0.000000e+00, %5392 ]
  %5395 = phi float [ %5452, %5450 ], [ 0.000000e+00, %5392 ]
  %5396 = phi float [ %5453, %5450 ], [ 0.000000e+00, %5392 ]
  %5397 = phi float [ %5454, %5450 ], [ 0.000000e+00, %5392 ]
  %5398 = phi float [ %5455, %5450 ], [ 0.000000e+00, %5392 ]
  %5399 = phi float [ %5456, %5450 ], [ 0.000000e+00, %5392 ]
  %5400 = phi i32 [ %5457, %5450 ], [ 0, %5392 ]
  %5401 = shl i32 %5400, 2
  %5402 = add i32 %5268, %5401
  %5403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = add i32 %5272, %5401
  %5406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.i32 %5406, 0
  %5408 = add i32 %5407, 0
  %5409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5410 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5409, i32 0)  ; GetDimensions(handle,mipLevel)
  %5411 = extractvalue %dx.types.Dimensions %5410, 0
  %5412 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5411)  ; FirstbitLo(value)
  %5413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5414 = extractvalue %dx.types.CBufRet.i32 %5413, 1
  %5415 = sub nsw i32 %5414, %5412
  %5416 = sitofp i32 %5415 to float
  %5417 = fsub fast float %5301, %5416
  %5418 = call float @dx.op.binary.f32(i32 35, float %5417, float 0.000000e+00)  ; FMax(a,b)
  %5419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5409, %dx.types.Handle %52, float %5389, float %5390, float %5404, float undef, i32 0, i32 0, i32 undef, float %5418)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 0
  %5421 = fcmp fast ogt float %5420, 0.000000e+00
  br i1 %5421, label %5422, label %5450

; <label>:5422                                    ; preds = %5393
  %5423 = add i32 %5383, %5401
  %5424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5425 = extractvalue %dx.types.ResRet.i32 %5424, 0
  %5426 = and i32 %5425, 32767
  %5427 = mul nuw nsw i32 %5426, 928
  %5428 = add nuw nsw i32 %5427, 48
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.ResRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.ResRet.f32 %5429, 2
  %5433 = add nuw nsw i32 %5427, 60
  %5434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = fmul fast float %5430, %5420
  %5439 = fmul fast float %5431, %5420
  %5440 = fmul fast float %5432, %5420
  %5441 = fadd fast float %5438, %5394
  %5442 = fadd fast float %5439, %5395
  %5443 = fadd fast float %5440, %5396
  %5444 = fmul fast float %5435, %5420
  %5445 = fmul fast float %5436, %5420
  %5446 = fmul fast float %5437, %5420
  %5447 = fadd fast float %5444, %5397
  %5448 = fadd fast float %5445, %5398
  %5449 = fadd fast float %5446, %5399
  br label %5450

; <label>:5450                                    ; preds = %5422, %5393
  %5451 = phi float [ %5441, %5422 ], [ %5394, %5393 ]
  %5452 = phi float [ %5442, %5422 ], [ %5395, %5393 ]
  %5453 = phi float [ %5443, %5422 ], [ %5396, %5393 ]
  %5454 = phi float [ %5447, %5422 ], [ %5397, %5393 ]
  %5455 = phi float [ %5448, %5422 ], [ %5398, %5393 ]
  %5456 = phi float [ %5449, %5422 ], [ %5399, %5393 ]
  %5457 = add nuw i32 %5400, 1
  %5458 = icmp eq i32 %5457, %5382
  br i1 %5458, label %5459, label %5393

; <label>:5459                                    ; preds = %5450
  br label %5460

; <label>:5460                                    ; preds = %5459, %5323
  %5461 = phi float [ 0.000000e+00, %5323 ], [ %5451, %5459 ]
  %5462 = phi float [ 0.000000e+00, %5323 ], [ %5452, %5459 ]
  %5463 = phi float [ 0.000000e+00, %5323 ], [ %5453, %5459 ]
  %5464 = phi float [ 0.000000e+00, %5323 ], [ %5454, %5459 ]
  %5465 = phi float [ 0.000000e+00, %5323 ], [ %5455, %5459 ]
  %5466 = phi float [ 0.000000e+00, %5323 ], [ %5456, %5459 ]
  %5467 = fadd fast float %5464, %5461
  %5468 = fmul fast float %5467, 0x3F847AE140000000
  %5469 = fadd fast float %5465, %5462
  %5470 = fmul fast float %5469, 0x3F847AE140000000
  %5471 = fadd fast float %5466, %5463
  %5472 = fmul fast float %5471, 0x3F847AE140000000
  br label %5473

; <label>:5473                                    ; preds = %5460, %5257, %5202, %5199, %5170, %5132
  %5474 = phi float [ %5194, %5170 ], [ 0.000000e+00, %5132 ], [ %5468, %5460 ], [ 0.000000e+00, %5202 ], [ 0.000000e+00, %5257 ], [ 0.000000e+00, %5199 ]
  %5475 = phi float [ %5196, %5170 ], [ 0.000000e+00, %5132 ], [ %5470, %5460 ], [ 0.000000e+00, %5202 ], [ 0.000000e+00, %5257 ], [ 0.000000e+00, %5199 ]
  %5476 = phi float [ %5198, %5170 ], [ 0.000000e+00, %5132 ], [ %5472, %5460 ], [ 0.000000e+00, %5202 ], [ 0.000000e+00, %5257 ], [ 0.000000e+00, %5199 ]
  %5477 = phi float [ %5184, %5170 ], [ -1.310720e+05, %5132 ], [ %5376, %5460 ], [ -1.310720e+05, %5202 ], [ -1.310720e+05, %5257 ], [ -1.310720e+05, %5199 ]
  %5478 = phi i1 [ true, %5170 ], [ false, %5132 ], [ true, %5460 ], [ false, %5202 ], [ false, %5257 ], [ false, %5199 ]
  %5479 = and i32 %201, 3
  %5480 = icmp eq i32 %5479, 1
  %5481 = select i1 %5480, float 1.000000e+00, float 0.000000e+00
  %5482 = fsub fast float %5477, %165
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = select i1 %5478, float %5483, float 1.000000e+00
  %5485 = fmul fast float %5484, %5481
  %5486 = icmp eq i32 %5479, 3
  %5487 = select i1 %5486, float 1.000000e+00, float %5485
  %5488 = call float @dx.op.binary.f32(i32 35, float %5013, float %5487)  ; FMax(a,b)
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5490 = fcmp fast une float %5489, 0.000000e+00
  %5491 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %165, float %163, float %164, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = call float @dx.op.unary.f32(i32 25, float %5491)  ; Rsqrt(value)
  br i1 %5490, label %5500, label %5493

; <label>:5493                                    ; preds = %5473
  %5494 = fmul fast float %5492, %163
  %5495 = fmul fast float %5492, %164
  %5496 = fmul fast float %5492, %165
  %5497 = fsub fast float -0.000000e+00, %5494
  %5498 = fsub fast float -0.000000e+00, %5495
  %5499 = fsub fast float -0.000000e+00, %5496
  br label %5668

; <label>:5500                                    ; preds = %5473
  %5501 = fmul fast float %163, %5492
  %5502 = fsub fast float -0.000000e+00, %5501
  %5503 = fmul fast float %164, %5492
  %5504 = fsub fast float -0.000000e+00, %5503
  %5505 = fmul fast float %165, %5492
  %5506 = fsub fast float -0.000000e+00, %5505
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5504, float %5506, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = fmul fast float %5489, 2.500000e+00
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = fmul fast float %5489, 0x4013FFFFE0000000
  %5511 = fadd fast float %5510, 0xBFFFFFFFE0000000
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = fmul fast float %5489, 0x4004000020000000
  %5514 = fadd fast float %5513, 0xBFF8000040000000
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5517 = fmul fast float %5049, 1.000000e+01
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5519 = fmul fast float %5518, 2.000000e+00
  %5520 = fsub fast float 3.000000e+00, %5519
  %5521 = fmul fast float %5518, %5518
  %5522 = fmul fast float %5521, %5520
  %5523 = fsub fast float 1.000000e+00, %5522
  %5524 = fsub fast float 0x3FE3333340000000, %5070
  %5525 = fmul fast float %5524, 0x400AAAAAA0000000
  %5526 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5527 = fmul fast float %5523, %5526
  %5528 = fmul fast float %5107, 0x3FEA2B8620000000
  %5529 = fmul fast float %5108, 0x3FEA2B8620000000
  %5530 = fmul fast float %5109, 0x3FEA2B8620000000
  %5531 = fadd fast float %5528, 0x3FC81DFBA0000000
  %5532 = fmul fast float %5531, %5107
  %5533 = fadd fast float %5532, 0x3F910E6020000000
  %5534 = fadd fast float %5529, 0x3FC81DFBA0000000
  %5535 = fmul fast float %5534, %5108
  %5536 = fadd fast float %5535, 0x3F910E6020000000
  %5537 = fadd fast float %5530, 0x3FC81DFBA0000000
  %5538 = fmul fast float %5537, %5109
  %5539 = fadd fast float %5538, 0x3F910E6020000000
  %5540 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5541 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5542 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5543 = fsub fast float %5540, %5107
  %5544 = fsub fast float %5541, %5108
  %5545 = fsub fast float %5542, %5109
  %5546 = fmul fast float %5543, %5516
  %5547 = fmul fast float %5546, %5527
  %5548 = fmul fast float %5544, %5516
  %5549 = fmul fast float %5548, %5527
  %5550 = fmul fast float %5545, %5516
  %5551 = fmul fast float %5550, %5527
  %5552 = fadd fast float %5547, %5107
  %5553 = fadd fast float %5549, %5108
  %5554 = fadd fast float %5551, %5109
  %5555 = fmul fast float %5030, %5030
  %5556 = fmul fast float %5555, %5555
  %5557 = fadd fast float %5512, 1.000000e+00
  %5558 = fsub fast float %5557, %5527
  %5559 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5560 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = fsub fast float 1.000000e+00, %5556
  %5563 = call float @dx.op.binary.f32(i32 36, float %5559, float %5562)  ; FMin(a,b)
  %5564 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5565 = call float @dx.op.binary.f32(i32 35, float %5563, float %5564)  ; FMax(a,b)
  %5566 = fadd fast float %5561, 0xBFE4CCCCC0000000
  %5567 = fmul fast float %5566, 0x4006DB6DA0000000
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = fmul fast float %5568, 2.000000e+00
  %5570 = fsub fast float 3.000000e+00, %5569
  %5571 = bitcast float %5067 to i32
  %5572 = ashr i32 %5571, 1
  %5573 = add nsw i32 %5572, 532487669
  %5574 = bitcast i32 %5573 to float
  %5575 = fsub fast float 1.000000e+00, %5574
  %5576 = bitcast float %5575 to i32
  %5577 = sub nsw i32 2129859010, %5576
  %5578 = bitcast i32 %5577 to float
  %5579 = fmul fast float %5578, 2.000000e+00
  %5580 = bitcast float %5068 to i32
  %5581 = ashr i32 %5580, 1
  %5582 = add nsw i32 %5581, 532487669
  %5583 = bitcast i32 %5582 to float
  %5584 = fsub fast float 1.000000e+00, %5583
  %5585 = bitcast float %5584 to i32
  %5586 = sub nsw i32 2129859010, %5585
  %5587 = bitcast i32 %5586 to float
  %5588 = fmul fast float %5587, 2.000000e+00
  %5589 = bitcast float %5069 to i32
  %5590 = ashr i32 %5589, 1
  %5591 = add nsw i32 %5590, 532487669
  %5592 = bitcast i32 %5591 to float
  %5593 = fsub fast float 1.000000e+00, %5592
  %5594 = bitcast float %5593 to i32
  %5595 = sub nsw i32 2129859010, %5594
  %5596 = bitcast i32 %5595 to float
  %5597 = fmul fast float %5596, 2.000000e+00
  %5598 = fsub fast float 0x4002A9FBE0000000, %5579
  %5599 = fadd fast float %5579, 0x3FD54FDF00000000
  %5600 = bitcast float %5599 to i32
  %5601 = sub nsw i32 2129859010, %5600
  %5602 = bitcast i32 %5601 to float
  %5603 = fmul fast float %5602, %5598
  %5604 = fmul fast float %5603, %5603
  %5605 = fsub fast float 0x4002A9FBE0000000, %5588
  %5606 = fadd fast float %5588, 0x3FD54FDF00000000
  %5607 = bitcast float %5606 to i32
  %5608 = sub nsw i32 2129859010, %5607
  %5609 = bitcast i32 %5608 to float
  %5610 = fmul fast float %5609, %5605
  %5611 = fmul fast float %5610, %5610
  %5612 = fsub fast float 0x4002A9FBE0000000, %5597
  %5613 = fadd fast float %5597, 0x3FD54FDF00000000
  %5614 = bitcast float %5613 to i32
  %5615 = sub nsw i32 2129859010, %5614
  %5616 = bitcast i32 %5615 to float
  %5617 = fmul fast float %5616, %5612
  %5618 = fmul fast float %5617, %5617
  %5619 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5604)  ; FMax(a,b)
  %5620 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5611)  ; FMax(a,b)
  %5621 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5618)  ; FMax(a,b)
  %5622 = fsub fast float 1.000000e+00, %5507
  %5623 = fadd fast float %5622, %5523
  %5624 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5625 = fsub fast float 1.000000e+00, %5487
  %5626 = fmul fast float %5565, %5625
  %5627 = fmul fast float %5568, %5568
  %5628 = fmul fast float %5627, %5626
  %5629 = fmul fast float %5628, %5570
  %5630 = fmul fast float %5625, 0xBFE99999A0000000
  %5631 = fmul fast float %5630, %5516
  %5632 = fmul fast float %5631, %5527
  %5633 = fadd fast float %5632, 1.000000e+00
  %5634 = fadd fast float %5070, -1.000000e+00
  %5635 = fmul fast float %5633, %5634
  %5636 = fadd fast float %5635, 1.000000e+00
  %5637 = fsub fast float %5619, %5067
  %5638 = fsub fast float %5620, %5068
  %5639 = fsub fast float %5621, %5069
  %5640 = fmul fast float %5629, %5637
  %5641 = fmul fast float %5629, %5638
  %5642 = fmul fast float %5629, %5639
  %5643 = fadd fast float %5640, %5067
  %5644 = fadd fast float %5641, %5068
  %5645 = fadd fast float %5642, %5069
  %5646 = fsub fast float %115, %5046
  %5647 = fsub fast float %116, %5047
  %5648 = fsub fast float %117, %5048
  %5649 = fmul fast float %5629, %5646
  %5650 = fmul fast float %5629, %5647
  %5651 = fmul fast float %5629, %5648
  %5652 = fadd fast float %5649, %5046
  %5653 = fadd fast float %5650, %5047
  %5654 = fadd fast float %5651, %5048
  %5655 = fmul fast float %5629, %5624
  %5656 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5657 = fsub fast float 1.000000e+00, %5656
  %5658 = fmul fast float %5655, %5657
  %5659 = fadd fast float %5658, %5656
  %5660 = fsub fast float 1.000000e+00, %5030
  %5661 = fmul fast float %5629, %5660
  %5662 = fadd fast float %5661, %5030
  %5663 = call float @dx.op.dot3.f32(i32 55, float %5652, float %5653, float %5654, float %5652, float %5653, float %5654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = call float @dx.op.unary.f32(i32 25, float %5663)  ; Rsqrt(value)
  %5665 = fmul fast float %5652, %5664
  %5666 = fmul fast float %5653, %5664
  %5667 = fmul fast float %5654, %5664
  br label %5668

; <label>:5668                                    ; preds = %5500, %5493
  %5669 = phi float [ %5499, %5493 ], [ %5506, %5500 ]
  %5670 = phi float [ %5498, %5493 ], [ %5504, %5500 ]
  %5671 = phi float [ %5497, %5493 ], [ %5502, %5500 ]
  %5672 = phi float [ %5496, %5493 ], [ %5505, %5500 ]
  %5673 = phi float [ %5495, %5493 ], [ %5503, %5500 ]
  %5674 = phi float [ %5494, %5493 ], [ %5501, %5500 ]
  %5675 = phi float [ %5107, %5493 ], [ %5552, %5500 ]
  %5676 = phi float [ %5108, %5493 ], [ %5553, %5500 ]
  %5677 = phi float [ %5109, %5493 ], [ %5554, %5500 ]
  %5678 = phi float [ %5067, %5493 ], [ %5643, %5500 ]
  %5679 = phi float [ %5068, %5493 ], [ %5644, %5500 ]
  %5680 = phi float [ %5069, %5493 ], [ %5645, %5500 ]
  %5681 = phi float [ %5046, %5493 ], [ %5665, %5500 ]
  %5682 = phi float [ %5047, %5493 ], [ %5666, %5500 ]
  %5683 = phi float [ %5048, %5493 ], [ %5667, %5500 ]
  %5684 = phi float [ %5070, %5493 ], [ %5659, %5500 ]
  %5685 = phi float [ %5030, %5493 ], [ %5662, %5500 ]
  %5686 = fsub fast float -0.000000e+00, %165
  %5687 = select i1 %225, float 0.000000e+00, float %5680
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %5671, float %5670, float %5669)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = call float @dx.op.dot3.f32(i32 55, float %5674, float %5673, float %5672, float %5681, float %5682, float %5683)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = fmul fast float %5690, 2.000000e+00
  %5692 = fmul fast float %5691, %5681
  %5693 = fmul fast float %5691, %5682
  %5694 = fmul fast float %5691, %5683
  %5695 = fsub fast float %5674, %5692
  %5696 = fsub fast float %5673, %5693
  %5697 = fsub fast float %5672, %5694
  %5698 = call float @dx.op.binary.f32(i32 36, float %5685, float 1.000000e+00)  ; FMin(a,b)
  %5699 = fsub fast float 1.000000e+00, %5698
  %5700 = bitcast float %5699 to i32
  %5701 = ashr i32 %5700, 1
  %5702 = add nsw i32 %5701, 532487669
  %5703 = bitcast i32 %5702 to float
  %5704 = fsub fast float 1.000000e+00, %5684
  %5705 = call float @dx.op.binary.f32(i32 35, float %5704, float 0x3F847AE140000000)  ; FMax(a,b)
  %5706 = fmul fast float %5705, %5705
  %5707 = fmul fast float %5706, %5706
  %5708 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5703, float %5707, float %5708, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5710 = extractvalue %dx.types.ResRet.f32 %5709, 0
  %5711 = fsub fast float 1.000000e+00, %5685
  %5712 = bitcast float %5711 to i32
  %5713 = sub nsw i32 2129859010, %5712
  %5714 = bitcast i32 %5713 to float
  %5715 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = fmul fast float %5715, 0x3FD20DD760000000
  %5717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5718 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = fcmp fast oeq float %5718, 0.000000e+00
  %5720 = fcmp fast oeq float %5717, 0.000000e+00
  %5721 = or i1 %5720, %5719
  br i1 %5721, label %5751, label %5722

; <label>:5722                                    ; preds = %5668
  %5723 = fsub fast float -0.000000e+00, %79
  %5724 = fsub fast float -0.000000e+00, %77
  %5725 = call float @dx.op.unary.f32(i32 24, float %5718)  ; Sqrt(value)
  %5726 = fdiv fast float %5725, %5717
  %5727 = fcmp fast ogt float %5726, 0x3FFB6F8900000000
  %5728 = select i1 %5727, float 0x3FFB6F8900000000, float %5726
  %5729 = fmul fast float %5728, 0x3FE8A23460000000
  %5730 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5731 = call float @dx.op.binary.f32(i32 35, float %5728, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5732 = fmul fast float %5730, %5717
  %5733 = fmul fast float %5731, 0x3FF279A740000000
  %5734 = fadd fast float %5733, -1.000000e+00
  %5735 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %78, float %5723, float %5724, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = call float @dx.op.unary.f32(i32 25, float %5735)  ; Rsqrt(value)
  %5737 = fmul fast float %5736, %5723
  %5738 = fmul fast float %5736, %5724
  %5739 = fmul fast float %5736, %78
  %5740 = fmul fast float %5734, %5734
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = fmul fast float %5731, 0x40005F8BE0000000
  %5743 = fsub fast float 0x400C5BF8A0000000, %5742
  %5744 = fdiv fast float %5732, %5743
  %5745 = fmul fast float %5744, 0x3FEE31C3C0000000
  %5746 = fmul fast float %5745, %5741
  %5747 = fmul fast float %5731, 0x3FDACB7480000000
  %5748 = fadd fast float %5747, 0xBFD7347680000000
  %5749 = fmul fast float %5748, %5744
  %5750 = fmul fast float %5749, %5741
  br label %5751

; <label>:5751                                    ; preds = %5722, %5668
  %5752 = phi float [ %5737, %5722 ], [ 0.000000e+00, %5668 ]
  %5753 = phi float [ %5738, %5722 ], [ 0.000000e+00, %5668 ]
  %5754 = phi float [ %5739, %5722 ], [ 0.000000e+00, %5668 ]
  %5755 = phi float [ %5746, %5722 ], [ 0.000000e+00, %5668 ]
  %5756 = phi float [ %5750, %5722 ], [ 0.000000e+00, %5668 ]
  %5757 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %5681, float %5682, float %5683)  ; Dot3(ax,ay,az,bx,by,bz)
  %5758 = fmul fast float %5757, 0x3FDF454380000000
  %5759 = fmul fast float %5757, %5757
  %5760 = fmul fast float %5759, 0x3FEE471020000000
  %5761 = fadd fast float %5760, 0xBFD42F6020000000
  %5762 = fmul fast float %5717, 0x3FD20DD760000000
  %5763 = fmul fast float %5761, %5756
  %5764 = fadd fast float %5763, %5762
  %5765 = fmul fast float %5758, %5755
  %5766 = fadd fast float %5764, %5765
  %5767 = fsub fast float %5764, %5765
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = fmul fast float %5768, 0x3FDF454380000000
  %5770 = fmul fast float %5768, %5768
  %5771 = fmul fast float %5770, 0x3FEE471020000000
  %5772 = fadd fast float %5771, 0xBFD42F6020000000
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5755, float %5756, float 0x3FD20DD760000000, float %5769, float %5772)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5775 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = fcmp fast oeq float %5775, 0.000000e+00
  %5777 = fcmp fast oeq float %5774, 0.000000e+00
  %5778 = or i1 %5777, %5776
  br i1 %5778, label %5808, label %5779

; <label>:5779                                    ; preds = %5751
  %5780 = fsub fast float -0.000000e+00, %75
  %5781 = fsub fast float -0.000000e+00, %73
  %5782 = call float @dx.op.unary.f32(i32 24, float %5775)  ; Sqrt(value)
  %5783 = fdiv fast float %5782, %5774
  %5784 = fcmp fast ogt float %5783, 0x3FFB6F8900000000
  %5785 = select i1 %5784, float 0x3FFB6F8900000000, float %5783
  %5786 = fmul fast float %5785, 0x3FE8A23460000000
  %5787 = call float @dx.op.unary.f32(i32 7, float %5786)  ; Saturate(value)
  %5788 = call float @dx.op.binary.f32(i32 35, float %5785, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5789 = fmul fast float %5787, %5774
  %5790 = fmul fast float %5788, 0x3FF279A740000000
  %5791 = fadd fast float %5790, -1.000000e+00
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %74, float %5780, float %5781, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = call float @dx.op.unary.f32(i32 25, float %5792)  ; Rsqrt(value)
  %5794 = fmul fast float %5793, %5780
  %5795 = fmul fast float %5793, %5781
  %5796 = fmul fast float %5793, %74
  %5797 = fmul fast float %5791, %5791
  %5798 = fsub fast float 1.000000e+00, %5797
  %5799 = fmul fast float %5788, 0x40005F8BE0000000
  %5800 = fsub fast float 0x400C5BF8A0000000, %5799
  %5801 = fdiv fast float %5789, %5800
  %5802 = fmul fast float %5801, 0x3FEE31C3C0000000
  %5803 = fmul fast float %5802, %5798
  %5804 = fmul fast float %5788, 0x3FDACB7480000000
  %5805 = fadd fast float %5804, 0xBFD7347680000000
  %5806 = fmul fast float %5805, %5801
  %5807 = fmul fast float %5806, %5798
  br label %5808

; <label>:5808                                    ; preds = %5779, %5751
  %5809 = phi float [ %5794, %5779 ], [ 0.000000e+00, %5751 ]
  %5810 = phi float [ %5795, %5779 ], [ 0.000000e+00, %5751 ]
  %5811 = phi float [ %5796, %5779 ], [ 0.000000e+00, %5751 ]
  %5812 = phi float [ %5803, %5779 ], [ 0.000000e+00, %5751 ]
  %5813 = phi float [ %5807, %5779 ], [ 0.000000e+00, %5751 ]
  %5814 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5810, float %5811, float %5681, float %5682, float %5683)  ; Dot3(ax,ay,az,bx,by,bz)
  %5815 = fmul fast float %5814, 0x3FDF454380000000
  %5816 = fmul fast float %5814, %5814
  %5817 = fmul fast float %5816, 0x3FEE471020000000
  %5818 = fadd fast float %5817, 0xBFD42F6020000000
  %5819 = fmul fast float %5774, 0x3FD20DD760000000
  %5820 = fmul fast float %5818, %5813
  %5821 = fadd fast float %5820, %5819
  %5822 = fmul fast float %5815, %5812
  %5823 = fadd fast float %5821, %5822
  %5824 = fsub fast float %5821, %5822
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5810, float %5811, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = fmul fast float %5825, 0x3FDF454380000000
  %5827 = fmul fast float %5825, %5825
  %5828 = fmul fast float %5827, 0x3FEE471020000000
  %5829 = fadd fast float %5828, 0xBFD42F6020000000
  %5830 = call float @dx.op.dot3.f32(i32 55, float %5774, float %5812, float %5813, float 0x3FD20DD760000000, float %5826, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5832 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5833 = fcmp fast oeq float %5832, 0.000000e+00
  %5834 = fcmp fast oeq float %5831, 0.000000e+00
  %5835 = or i1 %5834, %5833
  br i1 %5835, label %5865, label %5836

; <label>:5836                                    ; preds = %5808
  %5837 = fsub fast float -0.000000e+00, %71
  %5838 = fsub fast float -0.000000e+00, %69
  %5839 = call float @dx.op.unary.f32(i32 24, float %5832)  ; Sqrt(value)
  %5840 = fdiv fast float %5839, %5831
  %5841 = fcmp fast ogt float %5840, 0x3FFB6F8900000000
  %5842 = select i1 %5841, float 0x3FFB6F8900000000, float %5840
  %5843 = fmul fast float %5842, 0x3FE8A23460000000
  %5844 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  %5845 = call float @dx.op.binary.f32(i32 35, float %5842, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5846 = fmul fast float %5844, %5831
  %5847 = fmul fast float %5845, 0x3FF279A740000000
  %5848 = fadd fast float %5847, -1.000000e+00
  %5849 = call float @dx.op.dot3.f32(i32 55, float %5837, float %5838, float %70, float %5837, float %5838, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = call float @dx.op.unary.f32(i32 25, float %5849)  ; Rsqrt(value)
  %5851 = fmul fast float %5850, %5837
  %5852 = fmul fast float %5850, %5838
  %5853 = fmul fast float %5850, %70
  %5854 = fmul fast float %5848, %5848
  %5855 = fsub fast float 1.000000e+00, %5854
  %5856 = fmul fast float %5845, 0x40005F8BE0000000
  %5857 = fsub fast float 0x400C5BF8A0000000, %5856
  %5858 = fdiv fast float %5846, %5857
  %5859 = fmul fast float %5858, 0x3FEE31C3C0000000
  %5860 = fmul fast float %5859, %5855
  %5861 = fmul fast float %5845, 0x3FDACB7480000000
  %5862 = fadd fast float %5861, 0xBFD7347680000000
  %5863 = fmul fast float %5862, %5858
  %5864 = fmul fast float %5863, %5855
  br label %5865

; <label>:5865                                    ; preds = %5836, %5808
  %5866 = phi float [ %5851, %5836 ], [ 0.000000e+00, %5808 ]
  %5867 = phi float [ %5852, %5836 ], [ 0.000000e+00, %5808 ]
  %5868 = phi float [ %5853, %5836 ], [ 0.000000e+00, %5808 ]
  %5869 = phi float [ %5860, %5836 ], [ 0.000000e+00, %5808 ]
  %5870 = phi float [ %5864, %5836 ], [ 0.000000e+00, %5808 ]
  %5871 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5867, float %5868, float %5681, float %5682, float %5683)  ; Dot3(ax,ay,az,bx,by,bz)
  %5872 = fmul fast float %5871, 0x3FDF454380000000
  %5873 = fmul fast float %5871, %5871
  %5874 = fmul fast float %5873, 0x3FEE471020000000
  %5875 = fadd fast float %5874, 0xBFD42F6020000000
  %5876 = fmul fast float %5831, 0x3FD20DD760000000
  %5877 = fmul fast float %5875, %5870
  %5878 = fadd fast float %5877, %5876
  %5879 = fmul fast float %5872, %5869
  %5880 = fadd fast float %5878, %5879
  %5881 = fsub fast float %5878, %5879
  %5882 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5867, float %5868, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = fmul fast float %5882, 0x3FDF454380000000
  %5884 = fmul fast float %5882, %5882
  %5885 = fmul fast float %5884, 0x3FEE471020000000
  %5886 = fadd fast float %5885, 0xBFD42F6020000000
  %5887 = call float @dx.op.dot3.f32(i32 55, float %5831, float %5869, float %5870, float 0x3FD20DD760000000, float %5883, float %5886)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = call float @dx.op.binary.f32(i32 35, float %5766, float 0.000000e+00)  ; FMax(a,b)
  %5889 = call float @dx.op.binary.f32(i32 35, float %5823, float 0.000000e+00)  ; FMax(a,b)
  %5890 = call float @dx.op.binary.f32(i32 35, float %5880, float 0.000000e+00)  ; FMax(a,b)
  %5891 = call float @dx.op.binary.f32(i32 35, float %5767, float 0.000000e+00)  ; FMax(a,b)
  %5892 = call float @dx.op.binary.f32(i32 35, float %5824, float 0.000000e+00)  ; FMax(a,b)
  %5893 = call float @dx.op.binary.f32(i32 35, float %5881, float 0.000000e+00)  ; FMax(a,b)
  %5894 = call float @dx.op.binary.f32(i32 35, float %5773, float 0.000000e+00)  ; FMax(a,b)
  %5895 = call float @dx.op.binary.f32(i32 35, float %5830, float 0.000000e+00)  ; FMax(a,b)
  %5896 = call float @dx.op.binary.f32(i32 35, float %5887, float 0.000000e+00)  ; FMax(a,b)
  %5897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5897, 0
  %5899 = call float @dx.op.binary.f32(i32 36, float %5675, float %5898)  ; FMin(a,b)
  %5900 = fmul fast float %5899, %5699
  %5901 = fsub fast float 1.000000e+00, %5900
  %5902 = bitcast float %5901 to i32
  %5903 = sub nsw i32 2129859010, %5902
  %5904 = bitcast i32 %5903 to float
  %5905 = call float @dx.op.binary.f32(i32 36, float %5676, float %5898)  ; FMin(a,b)
  %5906 = fmul fast float %5905, %5699
  %5907 = fsub fast float 1.000000e+00, %5906
  %5908 = bitcast float %5907 to i32
  %5909 = sub nsw i32 2129859010, %5908
  %5910 = bitcast i32 %5909 to float
  %5911 = call float @dx.op.binary.f32(i32 36, float %5677, float %5898)  ; FMin(a,b)
  %5912 = fmul fast float %5911, %5699
  %5913 = fsub fast float 1.000000e+00, %5912
  %5914 = bitcast float %5913 to i32
  %5915 = sub nsw i32 2129859010, %5914
  %5916 = bitcast i32 %5915 to float
  %5917 = fmul fast float %5888, %5698
  %5918 = fmul fast float %5917, %5904
  %5919 = fmul fast float %5889, %5698
  %5920 = fmul fast float %5919, %5910
  %5921 = fmul fast float %5890, %5698
  %5922 = fmul fast float %5921, %5916
  %5923 = call float @dx.op.binary.f32(i32 36, float %5678, float %5898)  ; FMin(a,b)
  %5924 = fmul fast float %5923, %5699
  %5925 = fsub fast float 1.000000e+00, %5924
  %5926 = bitcast float %5925 to i32
  %5927 = sub nsw i32 2129859010, %5926
  %5928 = bitcast i32 %5927 to float
  %5929 = call float @dx.op.binary.f32(i32 36, float %5679, float %5898)  ; FMin(a,b)
  %5930 = fmul fast float %5929, %5699
  %5931 = fsub fast float 1.000000e+00, %5930
  %5932 = bitcast float %5931 to i32
  %5933 = sub nsw i32 2129859010, %5932
  %5934 = bitcast i32 %5933 to float
  %5935 = call float @dx.op.binary.f32(i32 36, float %5687, float %5898)  ; FMin(a,b)
  %5936 = fmul fast float %5935, %5699
  %5937 = fsub fast float 1.000000e+00, %5936
  %5938 = bitcast float %5937 to i32
  %5939 = sub nsw i32 2129859010, %5938
  %5940 = bitcast i32 %5939 to float
  %5941 = fmul fast float %5894, %5698
  %5942 = fmul fast float %5941, %5928
  %5943 = fmul fast float %5895, %5698
  %5944 = fmul fast float %5943, %5934
  %5945 = fmul fast float %5896, %5698
  %5946 = fmul fast float %5945, %5940
  %5947 = call float @dx.op.dot3.f32(i32 55, float %5918, float %5920, float %5922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5948 = select i1 %225, float 0.000000e+00, float %5918
  %5949 = select i1 %225, float %5947, float %5920
  %5950 = select i1 %225, float 0.000000e+00, float %5922
  %5951 = call float @dx.op.dot3.f32(i32 55, float %5891, float %5892, float %5893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = select i1 %225, float 0.000000e+00, float %5891
  %5953 = select i1 %225, float %5951, float %5892
  %5954 = select i1 %225, float 0.000000e+00, float %5893
  %5955 = call float @dx.op.dot3.f32(i32 55, float %5942, float %5944, float %5946, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = select i1 %225, float 0.000000e+00, float %5942
  %5957 = select i1 %225, float %5955, float %5944
  %5958 = select i1 %225, float 0.000000e+00, float %5946
  %5959 = fmul fast float %4426, %4426
  %5960 = call float @dx.op.unary.f32(i32 7, float %5959)  ; Saturate(value)
  %5961 = fmul fast float %5689, 9.843750e-01
  %5962 = fmul fast float %5684, 9.843750e-01
  %5963 = fadd fast float %5961, 7.812500e-03
  %5964 = fadd fast float %5962, 7.812500e-03
  %5965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5963, float %5964, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5966 = extractvalue %dx.types.ResRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.ResRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.ResRet.f32 %5965, 2
  %5969 = extractvalue %dx.types.ResRet.f32 %5965, 3
  %5970 = fsub fast float 1.000000e+00, %5960
  %5971 = fsub fast float %5968, %5966
  %5972 = fsub fast float %5969, %5967
  %5973 = fmul fast float %5971, %5970
  %5974 = fmul fast float %5972, %5970
  %5975 = fadd fast float %5973, %5966
  %5976 = fadd fast float %5974, %5967
  %5977 = fmul fast float %5975, %5678
  %5978 = fmul fast float %5975, %5679
  %5979 = fmul fast float %5975, %5687
  %5980 = fadd fast float %5977, %5976
  %5981 = fadd fast float %5978, %5976
  %5982 = fadd fast float %5979, %5976
  %5983 = fcmp fast ogt float %5020, 0.000000e+00
  br i1 %5983, label %5984, label %6010

; <label>:5984                                    ; preds = %5865
  %5985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5020, float %5689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = fadd fast float %5986, -5.000000e-01
  %5990 = fadd fast float %5987, -5.000000e-01
  %5991 = fadd fast float %5988, -5.000000e-01
  %5992 = fsub fast float 1.000000e+00, %5678
  %5993 = fsub fast float 1.000000e+00, %5679
  %5994 = fsub fast float 1.000000e+00, %5687
  %5995 = fmul fast float %5678, 4.000000e+00
  %5996 = fmul fast float %5995, %5992
  %5997 = fmul fast float %5996, %5989
  %5998 = fmul fast float %5679, 4.000000e+00
  %5999 = fmul fast float %5998, %5993
  %6000 = fmul fast float %5999, %5990
  %6001 = fmul fast float %5687, 4.000000e+00
  %6002 = fmul fast float %6001, %5994
  %6003 = fmul fast float %6002, %5991
  %6004 = fadd fast float %5997, %5980
  %6005 = fadd fast float %6000, %5981
  %6006 = fadd fast float %6003, %5982
  %6007 = call float @dx.op.unary.f32(i32 7, float %6004)  ; Saturate(value)
  %6008 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  %6009 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  br label %6010

; <label>:6010                                    ; preds = %5984, %5865
  %6011 = phi float [ %6007, %5984 ], [ %5980, %5865 ]
  %6012 = phi float [ %6008, %5984 ], [ %5981, %5865 ]
  %6013 = phi float [ %6009, %5984 ], [ %5982, %5865 ]
  %6014 = call float @dx.op.binary.f32(i32 35, float %6012, float %6013)  ; FMax(a,b)
  %6015 = call float @dx.op.binary.f32(i32 35, float %6011, float %6014)  ; FMax(a,b)
  %6016 = fsub fast float 1.000000e+00, %6015
  %6017 = fmul fast float %6015, %5684
  %6018 = fadd fast float %6017, %5684
  %6019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6020 = extractvalue %dx.types.CBufRet.f32 %6019, 2
  %6021 = extractvalue %dx.types.CBufRet.f32 %6019, 3
  %6022 = fmul fast float %6018, %6020
  %6023 = fadd fast float %6022, %6021
  %6024 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  %6025 = fsub fast float 1.000000e+00, %5710
  %6026 = fadd fast float %6025, %6024
  %6027 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6028 = fcmp fast olt float %6027, 1.000000e+00
  br i1 %6028, label %6029, label %6505

; <label>:6029                                    ; preds = %6010
  %6030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.f32 %6030, 2
  %6032 = extractvalue %dx.types.CBufRet.f32 %6030, 3
  %6033 = fmul fast float %6031, %108
  %6034 = fmul fast float %6032, %109
  %6035 = fptoui float %6033 to i32
  %6036 = fptoui float %6034 to i32
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6039 = extractvalue %dx.types.CBufRet.f32 %6037, 2
  %6040 = extractvalue %dx.types.CBufRet.f32 %6037, 3
  %6041 = fadd fast float %96, -4.000000e+00
  %6042 = call float @dx.op.binary.f32(i32 35, float %6041, float 0.000000e+00)  ; FMax(a,b)
  %6043 = fadd fast float %6042, %6038
  %6044 = fmul fast float %6043, %6039
  %6045 = call float @dx.op.unary.f32(i32 23, float %6044)  ; Log(value)
  %6046 = fmul fast float %6045, %6040
  %6047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6048 = extractvalue %dx.types.CBufRet.f32 %6047, 2
  %6049 = fmul fast float %6046, %6048
  %6050 = call float @dx.op.unary.f32(i32 7, float %6049)  ; Saturate(value)
  %6051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.i32 %6051, 1
  %6053 = add i32 %6052, -1
  %6054 = uitofp i32 %6052 to float
  %6055 = fmul fast float %6054, %6050
  %6056 = fptoui float %6055 to i32
  %6057 = call i32 @dx.op.binary.i32(i32 40, i32 %6056, i32 %6053)  ; UMin(a,b)
  %6058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6059 = extractvalue %dx.types.CBufRet.i32 %6058, 2
  %6060 = extractvalue %dx.types.CBufRet.i32 %6058, 3
  %6061 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6036, i32 %6059, i32 %6035)  ; UMad(a,b,c)
  %6062 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6057, i32 %6060, i32 %6061)  ; UMad(a,b,c)
  %6063 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %6064 = fptoui float %6063 to i32
  %6065 = lshr i32 %6064, 5
  %6066 = call i32 @dx.op.binary.i32(i32 40, i32 %6065, i32 8191)  ; UMin(a,b)
  %6067 = fsub fast float %5477, %165
  %6068 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6069 = fcmp fast ogt float %6068, 0.000000e+00
  %6070 = fcmp fast ogt float %5697, 0.000000e+00
  %6071 = and i1 %6070, %6069
  br i1 %6071, label %6072, label %6101

; <label>:6072                                    ; preds = %6029
  %6073 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5697, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = call float @dx.op.binary.f32(i32 35, float %6073, float -1.000000e+00)  ; FMax(a,b)
  %6075 = call float @dx.op.binary.f32(i32 36, float %6074, float 1.000000e+00)  ; FMin(a,b)
  %6076 = fmul fast float %6075, %6075
  %6077 = fsub fast float 1.000000e+00, %6076
  %6078 = fmul fast float %6077, 0x3FFC6E2300000000
  %6079 = fsub fast float 1.000000e+00, %6078
  %6080 = fcmp fast ogt float %6079, 0.000000e+00
  %6081 = call float @dx.op.unary.f32(i32 24, float %6079)  ; Sqrt(value)
  %6082 = fsub fast float 1.000000e+00, %6081
  %6083 = call float @dx.op.unary.f32(i32 23, float %6082)  ; Log(value)
  %6084 = fmul fast float %6083, 5.000000e+00
  %6085 = call float @dx.op.unary.f32(i32 21, float %6084)  ; Exp(value)
  %6086 = fmul fast float %6085, 0x3FEF591A60000000
  %6087 = fadd fast float %6086, 0x3F94DCB540000000
  %6088 = select i1 %6080, float %6087, float 1.000000e+00
  %6089 = fcmp fast oge float %6088, 1.000000e+00
  %6090 = fmul fast float %6073, 2.000000e+00
  %6091 = fadd fast float %6090, %5697
  %6092 = select i1 %6089, float %6091, float %5697
  %6093 = fsub fast float %6092, %5697
  %6094 = fmul fast float %6093, %6068
  %6095 = fadd fast float %6094, %5697
  %6096 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %6095, float %5695, float %5696, float %6095)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = call float @dx.op.unary.f32(i32 25, float %6096)  ; Rsqrt(value)
  %6098 = fmul fast float %6097, %5695
  %6099 = fmul fast float %6097, %5696
  %6100 = fmul fast float %6095, %6097
  br label %6101

; <label>:6101                                    ; preds = %6072, %6029
  %6102 = phi float [ %6098, %6072 ], [ %5695, %6029 ]
  %6103 = phi float [ %6099, %6072 ], [ %5696, %6029 ]
  %6104 = phi float [ %6100, %6072 ], [ %5697, %6029 ]
  %6105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.i32 %6105, 2
  %6107 = add nsw i32 %6106, -1
  %6108 = call i32 @dx.op.binary.i32(i32 37, i32 %6107, i32 0)  ; IMax(a,b)
  %6109 = shl i32 %6066, 2
  %6110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6109, i32 undef)  ; BufferLoad(srv,index,wot)
  %6111 = extractvalue %dx.types.ResRet.i32 %6110, 0
  %6112 = lshr i32 %6111, 16
  %6113 = and i32 %6111, 65535
  %6114 = lshr i32 %6111, 21
  %6115 = lshr i32 %6113, 5
  %6116 = call i32 @dx.op.binary.i32(i32 40, i32 %6115, i32 %6108)  ; UMin(a,b)
  %6117 = icmp ugt i32 %6114, %6116
  br i1 %6117, label %6481, label %6118

; <label>:6118                                    ; preds = %6101
  br label %6119

; <label>:6119                                    ; preds = %6473, %6118
  %6120 = phi float [ %6474, %6473 ], [ 0.000000e+00, %6118 ]
  %6121 = phi float [ %6475, %6473 ], [ 0.000000e+00, %6118 ]
  %6122 = phi float [ %6476, %6473 ], [ 0.000000e+00, %6118 ]
  %6123 = phi float [ %6477, %6473 ], [ 1.000000e+00, %6118 ]
  %6124 = phi i32 [ %6478, %6473 ], [ %6114, %6118 ]
  %6125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.i32 %6125, 2
  %6127 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6062, i32 %6126, i32 %6124)  ; UMad(a,b,c)
  %6128 = shl i32 %6127, 2
  %6129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6128, i32 undef)  ; BufferLoad(srv,index,wot)
  %6130 = extractvalue %dx.types.ResRet.i32 %6129, 0
  %6131 = shl i32 %6124, 5
  %6132 = sub nsw i32 %6112, %6131
  %6133 = call i32 @dx.op.binary.i32(i32 37, i32 %6132, i32 0)  ; IMax(a,b)
  %6134 = call i32 @dx.op.binary.i32(i32 38, i32 %6133, i32 31)  ; IMin(a,b)
  %6135 = sub nsw i32 1, %6112
  %6136 = add nsw i32 %6135, %6113
  %6137 = call i32 @dx.op.binary.i32(i32 37, i32 %6136, i32 0)  ; IMax(a,b)
  %6138 = call i32 @dx.op.binary.i32(i32 38, i32 %6137, i32 32)  ; IMin(a,b)
  %6139 = and i32 %6138, 31
  %6140 = shl i32 -1, %6139
  %6141 = xor i32 %6140, -1
  %6142 = and i32 %6134, 31
  %6143 = shl i32 %6141, %6142
  %6144 = icmp eq i32 %6138, 32
  %6145 = select i1 %6144, i32 -1, i32 %6143
  %6146 = and i32 %6145, %6130
  %6147 = icmp eq i32 %6146, 0
  br i1 %6147, label %6473, label %6148

; <label>:6148                                    ; preds = %6119
  br label %6149

; <label>:6149                                    ; preds = %6256, %6148
  %6150 = phi float [ %6257, %6256 ], [ %6120, %6148 ]
  %6151 = phi float [ %6258, %6256 ], [ %6121, %6148 ]
  %6152 = phi float [ %6259, %6256 ], [ %6122, %6148 ]
  %6153 = phi float [ %6260, %6256 ], [ %6123, %6148 ]
  %6154 = phi i32 [ %6159, %6256 ], [ %6146, %6148 ]
  %6155 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6154)  ; FirstbitLo(value)
  %6156 = add i32 %6155, %6131
  %6157 = and i32 %6155, 31
  %6158 = shl i32 1, %6157
  %6159 = xor i32 %6158, %6154
  %6160 = mul i32 %6156, 72
  %6161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6160, i32 undef)  ; BufferLoad(srv,index,wot)
  %6162 = extractvalue %dx.types.ResRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.ResRet.f32 %6161, 1
  %6164 = extractvalue %dx.types.ResRet.f32 %6161, 2
  %6165 = add i32 %6160, 12
  %6166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6165, i32 undef)  ; BufferLoad(srv,index,wot)
  %6167 = extractvalue %dx.types.ResRet.i32 %6166, 0
  %6168 = add i32 %6160, 16
  %6169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6168, i32 undef)  ; BufferLoad(srv,index,wot)
  %6170 = extractvalue %dx.types.ResRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.ResRet.f32 %6169, 1
  %6172 = extractvalue %dx.types.ResRet.f32 %6169, 2
  %6173 = add i32 %6160, 28
  %6174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6173, i32 undef)  ; BufferLoad(srv,index,wot)
  %6175 = extractvalue %dx.types.ResRet.f32 %6174, 0
  %6176 = add i32 %6160, 32
  %6177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6176, i32 undef)  ; BufferLoad(srv,index,wot)
  %6178 = extractvalue %dx.types.ResRet.f32 %6177, 0
  %6179 = extractvalue %dx.types.ResRet.f32 %6177, 1
  %6180 = extractvalue %dx.types.ResRet.f32 %6177, 2
  %6181 = extractvalue %dx.types.ResRet.f32 %6177, 3
  %6182 = add i32 %6160, 48
  %6183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6182, i32 undef)  ; BufferLoad(srv,index,wot)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 1
  %6186 = add i32 %6160, 56
  %6187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6186, i32 undef)  ; BufferLoad(srv,index,wot)
  %6188 = extractvalue %dx.types.ResRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.ResRet.f32 %6187, 1
  %6190 = add i32 %6160, 64
  %6191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6190, i32 undef)  ; BufferLoad(srv,index,wot)
  %6192 = extractvalue %dx.types.ResRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.ResRet.f32 %6191, 1
  %6194 = mul i32 %6156, 60
  %6195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6194, i32 undef)  ; BufferLoad(srv,index,wot)
  %6196 = extractvalue %dx.types.ResRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.ResRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.ResRet.f32 %6195, 2
  %6199 = add i32 %6194, 12
  %6200 = add i32 %6194, 48
  %6201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.ResRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.ResRet.f32 %6201, 2
  %6205 = and i32 %6167, 32767
  %6206 = bitcast float %6162 to i32
  %6207 = icmp eq i32 %6206, -1
  %6208 = bitcast float %6163 to i32
  %6209 = and i32 %6167, 32768
  %6210 = icmp ne i32 %6209, 0
  %6211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6212 = extractvalue %dx.types.CBufRet.f32 %6211, 0
  %6213 = extractvalue %dx.types.CBufRet.f32 %6211, 1
  %6214 = extractvalue %dx.types.CBufRet.f32 %6211, 2
  %6215 = fsub fast float %6196, %6212
  %6216 = fsub fast float %6197, %6213
  %6217 = fsub fast float %6198, %6214
  %6218 = fsub fast float %163, %6215
  %6219 = fsub fast float %164, %6216
  %6220 = fsub fast float %165, %6217
  %6221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6199, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.ResRet.f32 %6221, 1
  %6224 = extractvalue %dx.types.ResRet.f32 %6221, 2
  %6225 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6220, float %6222, float %6223, float %6224)  ; Dot3(ax,ay,az,bx,by,bz)
  %6226 = add i32 %6194, 24
  %6227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6226, i32 undef)  ; BufferLoad(srv,index,wot)
  %6228 = extractvalue %dx.types.ResRet.f32 %6227, 0
  %6229 = extractvalue %dx.types.ResRet.f32 %6227, 1
  %6230 = extractvalue %dx.types.ResRet.f32 %6227, 2
  %6231 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6220, float %6228, float %6229, float %6230)  ; Dot3(ax,ay,az,bx,by,bz)
  %6232 = add i32 %6194, 36
  %6233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6232, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.ResRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.ResRet.f32 %6233, 2
  %6237 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6220, float %6234, float %6235, float %6236)  ; Dot3(ax,ay,az,bx,by,bz)
  %6238 = call float @dx.op.unary.f32(i32 6, float %6225)  ; FAbs(value)
  %6239 = call float @dx.op.unary.f32(i32 6, float %6231)  ; FAbs(value)
  %6240 = call float @dx.op.unary.f32(i32 6, float %6237)  ; FAbs(value)
  %6241 = fsub fast float %6202, %6238
  %6242 = fsub fast float %6203, %6239
  %6243 = fsub fast float %6204, %6240
  %6244 = fmul fast float %6241, %6170
  %6245 = fmul fast float %6242, %6171
  %6246 = fmul fast float %6243, %6172
  %6247 = call float @dx.op.binary.f32(i32 36, float %6245, float %6246)  ; FMin(a,b)
  %6248 = call float @dx.op.binary.f32(i32 36, float %6244, float %6247)  ; FMin(a,b)
  %6249 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6250 = call float @dx.op.binary.f32(i32 36, float %6153, float %6249)  ; FMin(a,b)
  %6251 = uitofp i1 %6210 to float
  %6252 = fadd fast float %6068, 1.000000e+00
  %6253 = fsub fast float %6252, %6251
  %6254 = fmul fast float %6250, %6253
  %6255 = fcmp fast ogt float %6254, 0.000000e+00
  br i1 %6255, label %6262, label %6256

; <label>:6256                                    ; preds = %6404, %6149
  %6257 = phi float [ %6468, %6404 ], [ %6150, %6149 ]
  %6258 = phi float [ %6469, %6404 ], [ %6151, %6149 ]
  %6259 = phi float [ %6470, %6404 ], [ %6152, %6149 ]
  %6260 = phi float [ %6471, %6404 ], [ %6153, %6149 ]
  %6261 = icmp eq i32 %6154, %6158
  br i1 %6261, label %6472, label %6149

; <label>:6262                                    ; preds = %6149
  br i1 %6207, label %6320, label %6263

; <label>:6263                                    ; preds = %6262
  %6264 = fsub fast float -0.000000e+00, %6222
  %6265 = fsub fast float -0.000000e+00, %6223
  %6266 = fsub fast float -0.000000e+00, %6224
  %6267 = call float @dx.op.dot3.f32(i32 55, float %6102, float %6103, float %6104, float %6264, float %6265, float %6266)  ; Dot3(ax,ay,az,bx,by,bz)
  %6268 = fsub fast float -0.000000e+00, %6267
  %6269 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6220, float %6264, float %6265, float %6266)  ; Dot3(ax,ay,az,bx,by,bz)
  %6270 = fadd fast float %6269, %6185
  %6271 = fadd fast float %6184, %6269
  %6272 = fsub fast float -0.000000e+00, %6271
  %6273 = fcmp ogt float %6267, -0.000000e+00
  %6274 = select i1 %6273, float %6272, float %6270
  %6275 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6276 = fdiv fast float 1.000000e+00, %6275
  %6277 = fmul fast float %6274, %6276
  %6278 = call float @dx.op.binary.f32(i32 35, float %6277, float 0.000000e+00)  ; FMax(a,b)
  %6279 = fsub fast float -0.000000e+00, %6228
  %6280 = fsub fast float -0.000000e+00, %6229
  %6281 = fsub fast float -0.000000e+00, %6230
  %6282 = call float @dx.op.dot3.f32(i32 55, float %6102, float %6103, float %6104, float %6279, float %6280, float %6281)  ; Dot3(ax,ay,az,bx,by,bz)
  %6283 = fsub fast float -0.000000e+00, %6282
  %6284 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6220, float %6279, float %6280, float %6281)  ; Dot3(ax,ay,az,bx,by,bz)
  %6285 = fadd fast float %6284, %6189
  %6286 = fadd fast float %6188, %6284
  %6287 = fsub fast float -0.000000e+00, %6286
  %6288 = fcmp ogt float %6282, -0.000000e+00
  %6289 = select i1 %6288, float %6287, float %6285
  %6290 = call float @dx.op.unary.f32(i32 6, float %6283)  ; FAbs(value)
  %6291 = fdiv fast float 1.000000e+00, %6290
  %6292 = fmul fast float %6289, %6291
  %6293 = call float @dx.op.binary.f32(i32 35, float %6292, float 0.000000e+00)  ; FMax(a,b)
  %6294 = fsub fast float -0.000000e+00, %6234
  %6295 = fsub fast float -0.000000e+00, %6235
  %6296 = fsub fast float -0.000000e+00, %6236
  %6297 = call float @dx.op.dot3.f32(i32 55, float %6102, float %6103, float %6104, float %6294, float %6295, float %6296)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = fsub fast float -0.000000e+00, %6297
  %6299 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6220, float %6294, float %6295, float %6296)  ; Dot3(ax,ay,az,bx,by,bz)
  %6300 = fadd fast float %6299, %6193
  %6301 = fadd fast float %6192, %6299
  %6302 = fsub fast float -0.000000e+00, %6301
  %6303 = fcmp ogt float %6297, -0.000000e+00
  %6304 = select i1 %6303, float %6302, float %6300
  %6305 = call float @dx.op.unary.f32(i32 6, float %6298)  ; FAbs(value)
  %6306 = fdiv fast float 1.000000e+00, %6305
  %6307 = fmul fast float %6304, %6306
  %6308 = call float @dx.op.binary.f32(i32 35, float %6307, float 0.000000e+00)  ; FMax(a,b)
  %6309 = call float @dx.op.binary.f32(i32 36, float %6293, float %6308)  ; FMin(a,b)
  %6310 = call float @dx.op.binary.f32(i32 36, float %6278, float %6309)  ; FMin(a,b)
  %6311 = fmul fast float %6310, %6102
  %6312 = fmul fast float %6310, %6103
  %6313 = fmul fast float %6310, %6104
  %6314 = fadd fast float %6311, %163
  %6315 = fadd fast float %6312, %164
  %6316 = fadd fast float %6313, %165
  %6317 = fsub fast float %6314, %6162
  %6318 = fsub fast float %6315, %6163
  %6319 = fsub fast float %6316, %6164
  br label %6327

; <label>:6320                                    ; preds = %6262
  %6321 = fmul fast float %6102, 8.096000e+03
  %6322 = fmul fast float %6103, 8.096000e+03
  %6323 = fmul fast float %6104, 8.096000e+03
  %6324 = fadd fast float %6321, %163
  %6325 = fadd fast float %6322, %164
  %6326 = fadd fast float %6323, %165
  br label %6327

; <label>:6327                                    ; preds = %6320, %6263
  %6328 = phi float [ %6102, %6320 ], [ %6317, %6263 ]
  %6329 = phi float [ %6103, %6320 ], [ %6318, %6263 ]
  %6330 = phi float [ %6104, %6320 ], [ %6319, %6263 ]
  %6331 = phi float [ %6324, %6320 ], [ %6314, %6263 ]
  %6332 = phi float [ %6325, %6320 ], [ %6315, %6263 ]
  %6333 = phi float [ %6326, %6320 ], [ %6316, %6263 ]
  %6334 = fcmp fast olt float %6181, 1.000000e+00
  br i1 %6334, label %6335, label %6366, !dx.controlflow.hints !100

; <label>:6335                                    ; preds = %6327
  %6336 = fmul fast float %6330, %6179
  %6337 = fmul fast float %6329, %6180
  %6338 = fsub fast float %6336, %6337
  %6339 = fmul fast float %6328, %6180
  %6340 = fmul fast float %6330, %6178
  %6341 = fsub fast float %6339, %6340
  %6342 = fmul fast float %6329, %6178
  %6343 = fmul fast float %6328, %6179
  %6344 = fsub fast float %6342, %6343
  %6345 = fmul fast float %6338, 2.000000e+00
  %6346 = fmul fast float %6341, 2.000000e+00
  %6347 = fmul fast float %6344, 2.000000e+00
  %6348 = fmul fast float %6345, %6181
  %6349 = fmul fast float %6346, %6181
  %6350 = fmul fast float %6347, %6181
  %6351 = fmul fast float %6347, %6179
  %6352 = fmul fast float %6346, %6180
  %6353 = fmul fast float %6345, %6180
  %6354 = fmul fast float %6347, %6178
  %6355 = fmul fast float %6346, %6178
  %6356 = fmul fast float %6345, %6179
  %6357 = fadd fast float %6351, %6328
  %6358 = fadd fast float %6357, %6348
  %6359 = fsub fast float %6358, %6352
  %6360 = fsub fast float %6329, %6354
  %6361 = fadd fast float %6360, %6349
  %6362 = fadd fast float %6361, %6353
  %6363 = fadd fast float %6350, %6330
  %6364 = fsub fast float %6363, %6356
  %6365 = fadd fast float %6364, %6355
  br label %6366

; <label>:6366                                    ; preds = %6335, %6327
  %6367 = phi float [ %6359, %6335 ], [ %6328, %6327 ]
  %6368 = phi float [ %6362, %6335 ], [ %6329, %6327 ]
  %6369 = phi float [ %6365, %6335 ], [ %6330, %6327 ]
  br i1 %6207, label %6401, label %6370

; <label>:6370                                    ; preds = %6366
  %6371 = fmul fast float %5684, 0x400187C840000000
  %6372 = fadd fast float %6371, 0xC00EFC2120000000
  %6373 = fmul fast float %6372, %5684
  %6374 = fadd fast float %6373, 0x3FE5D16340000000
  %6375 = fmul fast float %6374, %5684
  %6376 = fadd fast float %6375, 1.000000e+00
  %6377 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6378 = fsub fast float %6331, %163
  %6379 = fsub fast float %6332, %164
  %6380 = fsub fast float %6333, %165
  %6381 = fsub fast float %6331, %6162
  %6382 = fsub fast float %6332, %6163
  %6383 = fsub fast float %6333, %6164
  %6384 = call float @dx.op.dot3.f32(i32 55, float %6378, float %6379, float %6380, float %6378, float %6379, float %6380)  ; Dot3(ax,ay,az,bx,by,bz)
  %6385 = call float @dx.op.dot3.f32(i32 55, float %6381, float %6382, float %6383, float %6381, float %6382, float %6383)  ; Dot3(ax,ay,az,bx,by,bz)
  %6386 = fadd fast float %6385, 0x3EE4F8B580000000
  %6387 = fdiv fast float %6384, %6386
  %6388 = bitcast float %6387 to i32
  %6389 = ashr i32 %6388, 1
  %6390 = add nsw i32 %6389, 532487669
  %6391 = bitcast i32 %6390 to float
  %6392 = fmul fast float %6391, %6377
  %6393 = call float @dx.op.unary.f32(i32 7, float %6392)  ; Saturate(value)
  %6394 = fmul fast float %6393, 0x4009981AE0000000
  %6395 = fsub fast float 0x40111BBD80000000, %6394
  %6396 = fmul fast float %6395, %6393
  %6397 = fadd fast float %6396, 0xC0009F6020000000
  %6398 = fmul fast float %6397, %6393
  %6399 = fadd fast float %6398, 1.000000e+00
  %6400 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  br label %6404

; <label>:6401                                    ; preds = %6366
  %6402 = icmp ne i32 %6208, -1
  %6403 = zext i1 %6402 to i32
  br label %6404

; <label>:6404                                    ; preds = %6401, %6370
  %6405 = phi float [ %5684, %6401 ], [ %6400, %6370 ]
  %6406 = phi i32 [ %6403, %6401 ], [ 0, %6370 ]
  %6407 = fmul float %6405, 5.000000e+00
  %6408 = fsub float 5.000000e+00, %6407
  %6409 = icmp ne i32 %6406, 0
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 3
  %6412 = fadd fast float %6411, %6408
  %6413 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6412)  ; FMax(a,b)
  %6414 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6415 = call float @dx.op.unary.f32(i32 6, float %6368)  ; FAbs(value)
  %6416 = fadd fast float %6415, %6414
  %6417 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6418 = fadd fast float %6416, %6417
  %6419 = fcmp fast oeq float %6418, 0.000000e+00
  %6420 = fdiv fast float 1.000000e+00, %6418
  %6421 = select i1 %6419, float 1.000000e+00, float %6420
  %6422 = fmul fast float %6421, %6367
  %6423 = fmul fast float %6421, %6368
  %6424 = call float @dx.op.unary.f32(i32 6, float %6423)  ; FAbs(value)
  %6425 = call float @dx.op.unary.f32(i32 6, float %6422)  ; FAbs(value)
  %6426 = fsub fast float 1.000000e+00, %6424
  %6427 = fsub fast float 1.000000e+00, %6425
  %6428 = fcmp fast oge float %6422, 0.000000e+00
  %6429 = fcmp fast oge float %6423, 0.000000e+00
  %6430 = select i1 %6428, float 1.000000e+00, float -1.000000e+00
  %6431 = select i1 %6429, float 1.000000e+00, float -1.000000e+00
  %6432 = fcmp fast ole float %6369, 0.000000e+00
  %6433 = fmul fast float %6430, %6426
  %6434 = fmul fast float %6431, %6427
  %6435 = select i1 %6432, float %6433, float %6422
  %6436 = select i1 %6432, float %6434, float %6423
  %6437 = fmul fast float %6435, 5.000000e-01
  %6438 = fmul fast float %6436, 5.000000e-01
  %6439 = fadd fast float %6437, 5.000000e-01
  %6440 = fadd fast float %6438, 5.000000e-01
  %6441 = uitofp i32 %6205 to float
  %6442 = call float @dx.op.binary.f32(i32 36, float %6413, float 3.000000e+00)  ; FMin(a,b)
  %6443 = fadd fast float %6442, 2.000000e+00
  %6444 = call float @dx.op.unary.f32(i32 21, float %6443)  ; Exp(value)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6410, 1
  %6446 = fmul fast float %6445, %6444
  %6447 = fmul fast float %6446, 2.000000e+00
  %6448 = fsub fast float 1.000000e+00, %6447
  %6449 = fmul fast float %6439, %6448
  %6450 = fmul fast float %6440, %6448
  %6451 = fadd fast float %6449, %6446
  %6452 = fadd fast float %6450, %6446
  %6453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6451, float %6452, float %6441, float undef, i32 0, i32 0, i32 undef, float %6413)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.ResRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.ResRet.f32 %6453, 2
  %6457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6457, 3
  %6459 = fmul fast float %6458, %6175
  %6460 = call float @dx.op.binary.f32(i32 36, float %5716, float %6459)  ; FMin(a,b)
  %6461 = select i1 %6409, float %6460, float %6459
  %6462 = fmul fast float %6454, %6254
  %6463 = fmul fast float %6462, %6461
  %6464 = fmul fast float %6455, %6254
  %6465 = fmul fast float %6464, %6461
  %6466 = fmul fast float %6456, %6254
  %6467 = fmul fast float %6466, %6461
  %6468 = fadd fast float %6463, %6150
  %6469 = fadd fast float %6465, %6151
  %6470 = fadd fast float %6467, %6152
  %6471 = fsub fast float %6153, %6254
  br label %6256

; <label>:6472                                    ; preds = %6256
  br label %6473

; <label>:6473                                    ; preds = %6472, %6119
  %6474 = phi float [ %6120, %6119 ], [ %6257, %6472 ]
  %6475 = phi float [ %6121, %6119 ], [ %6258, %6472 ]
  %6476 = phi float [ %6122, %6119 ], [ %6259, %6472 ]
  %6477 = phi float [ %6123, %6119 ], [ %6260, %6472 ]
  %6478 = add i32 %6124, 1
  %6479 = icmp ugt i32 %6478, %6116
  br i1 %6479, label %6480, label %6119, !llvm.loop !101

; <label>:6480                                    ; preds = %6473
  br label %6481

; <label>:6481                                    ; preds = %6480, %6101
  %6482 = phi float [ 0.000000e+00, %6101 ], [ %6474, %6480 ]
  %6483 = phi float [ 0.000000e+00, %6101 ], [ %6475, %6480 ]
  %6484 = phi float [ 0.000000e+00, %6101 ], [ %6476, %6480 ]
  %6485 = call float @dx.op.dot3.f32(i32 55, float %6482, float %6483, float %6484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6486 = select i1 %225, float 0.000000e+00, float %6482
  %6487 = select i1 %225, float %6485, float %6483
  %6488 = select i1 %225, float 0.000000e+00, float %6484
  %6489 = fcmp fast olt float %6027, 0.000000e+00
  %6490 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6491 = fmul fast float %6490, %5956
  %6492 = fmul fast float %6490, %5957
  %6493 = fmul fast float %6490, %5958
  %6494 = select i1 %6489, float %5956, float %6491
  %6495 = select i1 %6489, float %5957, float %6492
  %6496 = select i1 %6489, float %5958, float %6493
  %6497 = fsub fast float 1.000000e+00, %6490
  %6498 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  %6499 = fmul fast float %6498, %6486
  %6500 = fmul fast float %6498, %6487
  %6501 = fmul fast float %6498, %6488
  %6502 = fadd fast float %6494, %6499
  %6503 = fadd fast float %6495, %6500
  %6504 = fadd fast float %6496, %6501
  br label %6505

; <label>:6505                                    ; preds = %6481, %6010
  %6506 = phi float [ %5956, %6010 ], [ %6502, %6481 ]
  %6507 = phi float [ %5957, %6010 ], [ %6503, %6481 ]
  %6508 = phi float [ %5958, %6010 ], [ %6504, %6481 ]
  %6509 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6510 = fcmp fast ogt float %6509, 0x3E7FF19E20000000
  %6511 = fdiv fast float 1.000000e+00, %6509
  %6512 = select i1 %6510, float %6511, float 0.000000e+00
  %6513 = fmul fast float %6512, %5675
  %6514 = fmul fast float %6512, %5676
  %6515 = fmul fast float %6512, %5677
  %6516 = fadd fast float %6513, -1.000000e+00
  %6517 = fadd fast float %6514, -1.000000e+00
  %6518 = fadd fast float %6515, -1.000000e+00
  %6519 = fmul fast float %6516, 5.000000e-01
  %6520 = fmul fast float %6517, 5.000000e-01
  %6521 = fmul fast float %6518, 5.000000e-01
  %6522 = fadd fast float %6519, 1.000000e+00
  %6523 = fadd fast float %6520, 1.000000e+00
  %6524 = fadd fast float %6521, 1.000000e+00
  %6525 = call float @dx.op.binary.f32(i32 35, float %5689, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6526 = fdiv fast float %4426, %6525
  %6527 = fcmp fast olt float %5093, 1.270000e+02
  %6528 = fcmp fast olt float %5094, 1.270000e+02
  %6529 = fcmp fast olt float %5095, 1.270000e+02
  %6530 = fmul fast float %5093, 0xBFF7154760000000
  %6531 = fmul fast float %6530, %6526
  %6532 = fmul fast float %5094, 0xBFF7154760000000
  %6533 = fmul fast float %6532, %6526
  %6534 = fmul fast float %5095, 0xBFF7154760000000
  %6535 = fmul fast float %6534, %6526
  %6536 = call float @dx.op.unary.f32(i32 21, float %6531)  ; Exp(value)
  %6537 = call float @dx.op.unary.f32(i32 21, float %6533)  ; Exp(value)
  %6538 = call float @dx.op.unary.f32(i32 21, float %6535)  ; Exp(value)
  %6539 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  %6540 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6541 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  %6542 = select i1 %6527, float %6539, float 0.000000e+00
  %6543 = select i1 %6528, float %6540, float 0.000000e+00
  %6544 = select i1 %6529, float %6541, float 0.000000e+00
  %6545 = fmul fast float %6542, %6016
  %6546 = fmul fast float %6543, %6016
  %6547 = fmul fast float %6544, %6016
  %6548 = fadd fast float %6545, -1.000000e+00
  %6549 = fadd fast float %6546, -1.000000e+00
  %6550 = fadd fast float %6547, -1.000000e+00
  %6551 = fmul fast float %6548, %5043
  %6552 = fmul fast float %6549, %5043
  %6553 = fmul fast float %6550, %5043
  %6554 = fmul fast float %6506, %6011
  %6555 = fmul fast float %6507, %6012
  %6556 = fmul fast float %6508, %6013
  %6557 = fsub fast float 1.000000e+00, %5689
  %6558 = bitcast float %6557 to i32
  %6559 = sitofp i32 %6558 to float
  %6560 = fmul fast float %6559, 5.000000e+00
  %6561 = fadd fast float %6560, 0xC1EFBF8940000000
  %6562 = fptosi float %6561 to i32
  %6563 = bitcast i32 %6562 to float
  %6564 = fmul fast float %6563, %5019
  %6565 = fmul fast float %5948, %6564
  %6566 = fmul fast float %6565, %6016
  %6567 = fmul fast float %6566, %6522
  %6568 = fmul fast float %5949, %6564
  %6569 = fmul fast float %6568, %6016
  %6570 = fmul fast float %6569, %6523
  %6571 = fmul fast float %5950, %6564
  %6572 = fmul fast float %6571, %6016
  %6573 = fmul fast float %6572, %6524
  %6574 = fadd fast float %6554, %5024
  %6575 = fadd fast float %6574, %6567
  %6576 = fmul fast float %6575, %5043
  %6577 = fadd fast float %6555, %5025
  %6578 = fadd fast float %6577, %6570
  %6579 = fmul fast float %6578, %5043
  %6580 = fadd fast float %6556, %5026
  %6581 = fadd fast float %6580, %6573
  %6582 = fmul fast float %6581, %5043
  %6583 = fmul fast float %5679, 0x4012D0A400000000
  %6584 = fadd fast float %6553, 1.000000e+00
  %6585 = fadd fast float %6552, 1.000000e+00
  %6586 = fadd fast float %6551, 1.000000e+00
  %6587 = fmul fast float %6016, %5950
  %6588 = fmul fast float %6016, %5949
  %6589 = fmul fast float %6016, %5948
  %6590 = fmul fast float %5704, %5043
  %6591 = fsub fast float 1.000000e+00, %6590
  %6592 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  %6593 = fsub fast float 1.000000e+00, %6592
  %6594 = fadd fast float %6583, 0x3FDB6377A0000000
  %6595 = fmul fast float %6593, %6594
  %6596 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6597 = fadd fast float %6595, %6596
  %6598 = call float @dx.op.unary.f32(i32 7, float %6597)  ; Saturate(value)
  %6599 = call float @dx.op.binary.f32(i32 35, float %6598, float 0x3F847AE140000000)  ; FMax(a,b)
  %6600 = fmul fast float %6599, %6599
  %6601 = fmul fast float %6600, %6600
  %6602 = fmul fast float %6601, 0xC00A935000000000
  %6603 = call float @dx.op.unary.f32(i32 21, float %6602)  ; Exp(value)
  %6604 = fsub fast float 1.000000e+00, %6603
  %6605 = fmul fast float %6586, %5952
  %6606 = fmul fast float %6605, %6604
  %6607 = fmul fast float %6585, %5953
  %6608 = fmul fast float %6607, %6604
  %6609 = fmul fast float %6584, %5954
  %6610 = fmul fast float %6609, %6604
  %6611 = fadd fast float %6606, %6589
  %6612 = fmul fast float %6611, %5043
  %6613 = fadd fast float %6608, %6588
  %6614 = fmul fast float %6613, %5043
  %6615 = fadd fast float %6610, %6587
  %6616 = fmul fast float %6615, %5043
  %6617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.f32 %6617, 3
  %6619 = fcmp fast oeq float %6618, 0.000000e+00
  br i1 %6619, label %8297, label %6620

; <label>:6620                                    ; preds = %6505
  %6621 = extractvalue %dx.types.CBufRet.f32 %6617, 0
  %6622 = extractvalue %dx.types.CBufRet.f32 %6617, 1
  %6623 = extractvalue %dx.types.CBufRet.f32 %6617, 2
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = extractvalue %dx.types.CBufRet.f32 %6624, 1
  %6627 = extractvalue %dx.types.CBufRet.f32 %6624, 2
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = extractvalue %dx.types.CBufRet.f32 %6628, 1
  %6631 = call float @dx.op.dot3.f32(i32 55, float %6625, float %6626, float %6627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6632 = select i1 %225, float %6629, float %6625
  %6633 = select i1 %225, float %6631, float %6626
  %6634 = select i1 %225, float %6630, float %6627
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 2
  %6637 = fmul fast float %6636, %115
  %6638 = fmul fast float %6636, %116
  %6639 = fmul fast float %6636, %117
  %6640 = fadd fast float %6637, %163
  %6641 = fadd fast float %6638, %164
  %6642 = fadd fast float %6639, %165
  %6643 = fcmp fast olt float %6618, 0.000000e+00
  br i1 %6643, label %7739, label %6644

; <label>:6644                                    ; preds = %6620
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 0
  %6647 = extractvalue %dx.types.CBufRet.f32 %6645, 1
  %6648 = extractvalue %dx.types.CBufRet.f32 %6645, 2
  %6649 = extractvalue %dx.types.CBufRet.f32 %6645, 3
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6653 = extractvalue %dx.types.CBufRet.f32 %6650, 2
  %6654 = extractvalue %dx.types.CBufRet.f32 %6650, 3
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 0
  %6657 = extractvalue %dx.types.CBufRet.f32 %6655, 1
  %6658 = extractvalue %dx.types.CBufRet.f32 %6655, 2
  %6659 = extractvalue %dx.types.CBufRet.f32 %6655, 3
  %6660 = fmul fast float %6646, %6640
  %6661 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %6647, float %6660)  ; FMad(a,b,c)
  %6662 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6648, float %6661)  ; FMad(a,b,c)
  %6663 = fadd fast float %6662, %6649
  %6664 = fmul fast float %6651, %6640
  %6665 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %6652, float %6664)  ; FMad(a,b,c)
  %6666 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6653, float %6665)  ; FMad(a,b,c)
  %6667 = fadd fast float %6666, %6654
  %6668 = fmul fast float %6656, %6640
  %6669 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %6657, float %6668)  ; FMad(a,b,c)
  %6670 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6658, float %6669)  ; FMad(a,b,c)
  %6671 = fadd fast float %6670, %6659
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 0
  %6674 = extractvalue %dx.types.CBufRet.f32 %6672, 1
  %6675 = extractvalue %dx.types.CBufRet.f32 %6672, 3
  %6676 = fmul fast float %6675, %6663
  %6677 = fmul fast float %6675, %6667
  %6678 = fadd fast float %6676, %6673
  %6679 = fadd fast float %6677, %6674
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.CBufRet.f32 %6680, 1
  %6683 = extractvalue %dx.types.CBufRet.f32 %6680, 3
  %6684 = fmul fast float %6683, %6663
  %6685 = fmul fast float %6683, %6667
  %6686 = fadd fast float %6684, %6681
  %6687 = fadd fast float %6685, %6682
  %6688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.f32 %6688, 1
  %6690 = fsub fast float %6689, %6671
  %6691 = extractvalue %dx.types.CBufRet.f32 %6688, 2
  %6692 = fmul fast float %6690, %6691
  %6693 = fsub fast float 1.000000e+00, %6692
  %6694 = call float @dx.op.unary.f32(i32 7, float %6693)  ; Saturate(value)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6698 = fadd fast float %6697, %6695
  %6699 = fcmp fast ogt float %6698, 0.000000e+00
  br i1 %6699, label %6700, label %6724

; <label>:6700                                    ; preds = %6644
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6703 = extractvalue %dx.types.CBufRet.f32 %6701, 1
  %6704 = fsub fast float %6686, %6702
  %6705 = fsub fast float %6687, %6703
  %6706 = fcmp fast olt float %6704, 0.000000e+00
  %6707 = fcmp fast olt float %6705, 0.000000e+00
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 0
  %6710 = extractvalue %dx.types.CBufRet.f32 %6708, 1
  %6711 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6712 = extractvalue %dx.types.CBufRet.f32 %6708, 3
  %6713 = select i1 %6706, float %6709, float %6711
  %6714 = select i1 %6707, float %6710, float %6712
  %6715 = fmul fast float %6713, %6704
  %6716 = fmul fast float %6714, %6705
  %6717 = call float @dx.op.unary.f32(i32 6, float %6715)  ; FAbs(value)
  %6718 = call float @dx.op.unary.f32(i32 6, float %6716)  ; FAbs(value)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  %6720 = call float @dx.op.binary.f32(i32 35, float %6717, float %6718)  ; FMax(a,b)
  %6721 = fsub fast float %6719, %6720
  %6722 = call float @dx.op.unary.f32(i32 7, float %6721)  ; Saturate(value)
  %6723 = fmul fast float %6722, %6694
  br label %6724

; <label>:6724                                    ; preds = %6700, %6644
  %6725 = phi float [ %6723, %6700 ], [ 0.000000e+00, %6644 ]
  %6726 = extractvalue %dx.types.CBufRet.f32 %6672, 2
  %6727 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6728 = fadd fast float %6727, %6726
  %6729 = fcmp fast ogt float %6728, 0.000000e+00
  %6730 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  br i1 %6729, label %6731, label %6754

; <label>:6731                                    ; preds = %6724
  %6732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6733 = extractvalue %dx.types.CBufRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.CBufRet.f32 %6732, 1
  %6735 = fsub fast float %6678, %6733
  %6736 = fsub fast float %6679, %6734
  %6737 = fcmp fast olt float %6735, 0.000000e+00
  %6738 = fcmp fast olt float %6736, 0.000000e+00
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6743 = extractvalue %dx.types.CBufRet.f32 %6739, 3
  %6744 = select i1 %6737, float %6740, float %6742
  %6745 = select i1 %6738, float %6741, float %6743
  %6746 = fmul fast float %6744, %6735
  %6747 = fmul fast float %6745, %6736
  %6748 = call float @dx.op.unary.f32(i32 6, float %6746)  ; FAbs(value)
  %6749 = call float @dx.op.unary.f32(i32 6, float %6747)  ; FAbs(value)
  %6750 = call float @dx.op.binary.f32(i32 35, float %6748, float %6749)  ; FMax(a,b)
  %6751 = fsub fast float %6730, %6750
  %6752 = call float @dx.op.unary.f32(i32 7, float %6751)  ; Saturate(value)
  %6753 = fmul fast float %6752, %6694
  br label %6754

; <label>:6754                                    ; preds = %6731, %6724
  %6755 = phi float [ %6753, %6731 ], [ 0.000000e+00, %6724 ]
  %6756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6757 = extractvalue %dx.types.CBufRet.f32 %6756, 1
  %6758 = call float @dx.op.unary.f32(i32 7, float %6757)  ; Saturate(value)
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 0
  %6761 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6762 = fsub fast float %6663, %6760
  %6763 = fsub fast float %6667, %6761
  %6764 = fcmp fast olt float %6762, 0.000000e+00
  %6765 = fcmp fast olt float %6763, 0.000000e+00
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.CBufRet.f32 %6766, 2
  %6770 = extractvalue %dx.types.CBufRet.f32 %6766, 3
  %6771 = select i1 %6764, float %6767, float %6769
  %6772 = select i1 %6765, float %6768, float %6770
  %6773 = fmul fast float %6771, %6762
  %6774 = fmul fast float %6772, %6763
  %6775 = call float @dx.op.unary.f32(i32 6, float %6773)  ; FAbs(value)
  %6776 = call float @dx.op.unary.f32(i32 6, float %6774)  ; FAbs(value)
  %6777 = call float @dx.op.binary.f32(i32 35, float %6775, float %6776)  ; FMax(a,b)
  %6778 = fsub fast float %6730, %6777
  %6779 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6780 = call float @dx.op.binary.f32(i32 36, float %6779, float %6758)  ; FMin(a,b)
  %6781 = fmul fast float %6780, %6694
  %6782 = fsub fast float %6755, %6781
  %6783 = fsub fast float %6725, %6755
  %6784 = fsub fast float %6783, %6781
  %6785 = call float @dx.op.binary.f32(i32 35, float %6755, float %6725)  ; FMax(a,b)
  %6786 = call float @dx.op.binary.f32(i32 35, float %6781, float %6785)  ; FMax(a,b)
  %6787 = fcmp fast olt float %6786, 1.000000e+00
  br i1 %6787, label %6788, label %7186, !dx.controlflow.hints !103

; <label>:6788                                    ; preds = %6754
  %6789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6790 = extractvalue %dx.types.CBufRet.f32 %6789, 0
  %6791 = fcmp fast une float %6790, 0.000000e+00
  br i1 %6791, label %6792, label %7186, !dx.controlflow.hints !104

; <label>:6792                                    ; preds = %6788
  %6793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.CBufRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.CBufRet.f32 %6793, 2
  %6797 = extractvalue %dx.types.CBufRet.f32 %6793, 3
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6801 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6802 = extractvalue %dx.types.CBufRet.f32 %6798, 3
  %6803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.CBufRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.CBufRet.f32 %6803, 2
  %6807 = extractvalue %dx.types.CBufRet.f32 %6803, 3
  %6808 = fmul fast float %6794, %6640
  %6809 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %6795, float %6808)  ; FMad(a,b,c)
  %6810 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6796, float %6809)  ; FMad(a,b,c)
  %6811 = fadd fast float %6810, %6797
  %6812 = fmul fast float %6799, %6640
  %6813 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %6800, float %6812)  ; FMad(a,b,c)
  %6814 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6801, float %6813)  ; FMad(a,b,c)
  %6815 = fadd fast float %6814, %6802
  %6816 = fmul fast float %6804, %6640
  %6817 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %6805, float %6816)  ; FMad(a,b,c)
  %6818 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %6806, float %6817)  ; FMad(a,b,c)
  %6819 = fadd fast float %6818, %6807
  %6820 = fcmp fast oge float %6811, 1.000000e+00
  %6821 = fcmp fast oge float %6815, 1.000000e+00
  %6822 = or i1 %6820, %6821
  %6823 = fcmp fast olt float %6811, 0.000000e+00
  %6824 = fcmp fast olt float %6815, 0.000000e+00
  %6825 = or i1 %6823, %6824
  %6826 = or i1 %6822, %6825
  br i1 %6826, label %7186, label %6827, !dx.controlflow.hints !105

; <label>:6827                                    ; preds = %6792
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %6831 = extractvalue %dx.types.CBufRet.f32 %6828, 2
  %6832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6833 = extractvalue %dx.types.CBufRet.i32 %6832, 2
  %6834 = uitofp i32 %6833 to float
  %6835 = extractvalue %dx.types.CBufRet.i32 %6832, 3
  %6836 = uitofp i32 %6835 to float
  %6837 = extractvalue %dx.types.CBufRet.f32 %6828, 3
  %6838 = fmul fast float %6837, 2.000000e+00
  %6839 = fsub fast float %6811, %6829
  %6840 = fsub fast float %6815, %6830
  %6841 = fmul fast float %6838, %6839
  %6842 = fmul fast float %6838, %6840
  %6843 = fdiv fast float 1.000000e+00, %6623
  %6844 = fmul fast float %6842, %6843
  %6845 = call float @dx.op.unary.f32(i32 6, float %6844)  ; FAbs(value)
  %6846 = fmul fast float %6831, %6642
  %6847 = fmul fast float %6846, %6838
  %6848 = call float @dx.op.unary.f32(i32 6, float %6847)  ; FAbs(value)
  %6849 = call float @dx.op.unary.f32(i32 6, float %6841)  ; FAbs(value)
  %6850 = call float @dx.op.binary.f32(i32 35, float %6848, float %6845)  ; FMax(a,b)
  %6851 = call float @dx.op.binary.f32(i32 35, float %6849, float %6850)  ; FMax(a,b)
  %6852 = fmul fast float %6851, 2.000000e+00
  %6853 = call float @dx.op.unary.f32(i32 23, float %6852)  ; Log(value)
  %6854 = call float @dx.op.binary.f32(i32 35, float %6853, float %6834)  ; FMax(a,b)
  %6855 = call float @dx.op.unary.f32(i32 22, float %6854)  ; Frc(value)
  %6856 = fadd fast float %6855, 0xBFEA666660000000
  %6857 = fmul fast float %6856, 8.000000e+00
  %6858 = call float @dx.op.unary.f32(i32 7, float %6857)  ; Saturate(value)
  %6859 = call float @dx.op.unary.f32(i32 27, float %6854)  ; Round_ni(value)
  %6860 = fadd fast float %6859, %6858
  %6861 = call float @dx.op.binary.f32(i32 36, float %6860, float %6836)  ; FMin(a,b)
  %6862 = call float @dx.op.unary.f32(i32 27, float %6861)  ; Round_ni(value)
  %6863 = fsub fast float -0.000000e+00, %6862
  %6864 = call float @dx.op.unary.f32(i32 21, float %6863)  ; Exp(value)
  %6865 = fmul fast float %6864, %6838
  %6866 = fmul fast float %6865, %6811
  %6867 = fmul fast float %6865, %6815
  %6868 = fmul fast float %6866, 2.500000e-01
  %6869 = fmul fast float %6867, 2.500000e-01
  %6870 = fadd fast float %6868, 5.000000e-01
  %6871 = fadd fast float %6869, 5.000000e-01
  %6872 = fsub fast float %6836, %6834
  %6873 = fptoui float %6872 to i32
  %6874 = add i32 %6873, 320
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6874)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6878 = fcmp fast une float %6861, %6836
  %6879 = fsub fast float %6811, %6876
  %6880 = fsub fast float %6815, %6877
  %6881 = call float @dx.op.unary.f32(i32 6, float %6879)  ; FAbs(value)
  %6882 = call float @dx.op.unary.f32(i32 6, float %6880)  ; FAbs(value)
  %6883 = fmul fast float %6881, %6865
  %6884 = fmul fast float %6882, %6865
  %6885 = fcmp fast olt float %6883, 1.000000e+00
  %6886 = fcmp fast olt float %6884, 1.000000e+00
  %6887 = and i1 %6885, %6886
  %6888 = or i1 %6878, %6887
  br i1 %6888, label %6889, label %7186, !dx.controlflow.hints !106

; <label>:6889                                    ; preds = %6827
  %6890 = fmul fast float %6867, 5.000000e-01
  %6891 = fmul fast float %6866, 5.000000e-01
  %6892 = fadd fast float %6890, 5.000000e-01
  %6893 = fadd fast float %6891, 5.000000e-01
  %6894 = sitofp i32 %6833 to float
  %6895 = fsub fast float %6861, %6894
  %6896 = call float @dx.op.unary.f32(i32 27, float %6895)  ; Round_ni(value)
  %6897 = call float @dx.op.unary.f32(i32 22, float %6861)  ; Frc(value)
  %6898 = call float @dx.op.unary.f32(i32 22, float %6893)  ; Frc(value)
  %6899 = call float @dx.op.unary.f32(i32 22, float %6892)  ; Frc(value)
  %6900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6898, float %6899, float %6896, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6901 = extractvalue %dx.types.ResRet.f32 %6900, 0
  %6902 = extractvalue %dx.types.ResRet.f32 %6900, 1
  %6903 = extractvalue %dx.types.ResRet.f32 %6900, 2
  %6904 = extractvalue %dx.types.ResRet.f32 %6900, 3
  %6905 = fcmp fast ogt float %6897, 0.000000e+00
  br i1 %6905, label %6906, label %6927, !dx.controlflow.hints !107

; <label>:6906                                    ; preds = %6889
  %6907 = fadd fast float %6896, 1.000000e+00
  %6908 = call float @dx.op.unary.f32(i32 22, float %6870)  ; Frc(value)
  %6909 = call float @dx.op.unary.f32(i32 22, float %6871)  ; Frc(value)
  %6910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6908, float %6909, float %6907, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6911 = extractvalue %dx.types.ResRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.ResRet.f32 %6910, 1
  %6913 = extractvalue %dx.types.ResRet.f32 %6910, 2
  %6914 = extractvalue %dx.types.ResRet.f32 %6910, 3
  %6915 = fsub fast float %6911, %6901
  %6916 = fsub fast float %6912, %6902
  %6917 = fsub fast float %6913, %6903
  %6918 = fsub fast float %6914, %6904
  %6919 = fmul fast float %6915, %6897
  %6920 = fmul fast float %6916, %6897
  %6921 = fmul fast float %6917, %6897
  %6922 = fmul fast float %6918, %6897
  %6923 = fadd fast float %6919, %6901
  %6924 = fadd fast float %6920, %6902
  %6925 = fadd fast float %6921, %6903
  %6926 = fadd fast float %6922, %6904
  br label %6927

; <label>:6927                                    ; preds = %6906, %6889
  %6928 = phi float [ %6923, %6906 ], [ %6901, %6889 ]
  %6929 = phi float [ %6924, %6906 ], [ %6902, %6889 ]
  %6930 = phi float [ %6925, %6906 ], [ %6903, %6889 ]
  %6931 = phi float [ %6926, %6906 ], [ %6904, %6889 ]
  %6932 = fadd fast float %6928, -5.000000e-01
  %6933 = fadd fast float %6930, -5.000000e-01
  %6934 = fmul fast float %6932, 0xBFD5555560000000
  %6935 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6933, float %6934)  ; FMad(a,b,c)
  %6936 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6929, float 0.000000e+00)  ; FMad(a,b,c)
  %6937 = fadd fast float %6936, %6931
  %6938 = fmul fast float %6932, -7.500000e-01
  %6939 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6933, float %6938)  ; FMad(a,b,c)
  %6940 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6929, float 0.000000e+00)  ; FMad(a,b,c)
  %6941 = fadd fast float %6940, %6931
  %6942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6943 = extractvalue %dx.types.CBufRet.f32 %6942, 0
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6948 = extractvalue %dx.types.CBufRet.f32 %6944, 3
  %6949 = fsub fast float %6945, %6935
  %6950 = fsub fast float %6946, %6937
  %6951 = fsub fast float %6947, %6939
  %6952 = fsub fast float %6948, %6941
  %6953 = fmul fast float %6949, %6943
  %6954 = fmul fast float %6950, %6943
  %6955 = fmul fast float %6951, %6943
  %6956 = fmul fast float %6952, %6943
  %6957 = fadd fast float %6953, %6935
  %6958 = fadd fast float %6954, %6937
  %6959 = fadd fast float %6955, %6939
  %6960 = fadd fast float %6956, %6941
  %6961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6962 = extractvalue %dx.types.ResRet.i32 %6961, 0
  %6963 = and i32 %6962, 536870911
  %6964 = uitofp i32 %6963 to float
  %6965 = fmul fast float %6964, %6811
  %6966 = fmul fast float %6964, %6815
  %6967 = fptoui float %6965 to i32
  %6968 = fptoui float %6966 to i32
  %6969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6970 = extractvalue %dx.types.ResRet.i32 %6969, 0
  %6971 = and i32 %6970, 31
  %6972 = lshr i32 %6967, %6971
  %6973 = lshr i32 %6968, %6971
  %6974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6975 = extractvalue %dx.types.ResRet.i32 %6974, 0
  %6976 = and i32 %6975, 31
  %6977 = shl i32 1, %6976
  %6978 = call i32 @dx.op.binary.i32(i32 40, i32 %6977, i32 4)  ; UMin(a,b)
  %6979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6980 = extractvalue %dx.types.ResRet.i32 %6979, 0
  %6981 = extractvalue %dx.types.ResRet.i32 %6979, 1
  %6982 = icmp eq i32 %6978, 0
  br i1 %6982, label %7024, label %6983

; <label>:6983                                    ; preds = %6927
  br label %6984

; <label>:6984                                    ; preds = %7012, %6983
  %6985 = phi i32 [ %7015, %7012 ], [ 0, %6983 ]
  %6986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6987 = extractvalue %dx.types.ResRet.i32 %6986, 0
  %6988 = lshr i32 %6987, 16
  %6989 = and i32 %6988, 31
  %6990 = shl i32 %6973, %6989
  %6991 = add i32 %6990, %6972
  %6992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6993 = extractvalue %dx.types.ResRet.i32 %6992, 0
  %6994 = and i32 %6993, 31
  %6995 = shl i32 %6991, %6994
  %6996 = add i32 %6995, %6985
  %6997 = shl i32 %6996, 2
  %6998 = add i32 %6997, 32
  %6999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6998, i32 undef)  ; BufferLoad(srv,index,wot)
  %7000 = extractvalue %dx.types.ResRet.i32 %6999, 0
  %7001 = icmp slt i32 %7000, 0
  %7002 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6985
  %7003 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6985
  %7004 = bitcast float* %7002 to i32*
  %7005 = bitcast float* %7003 to i32*
  br i1 %7001, label %7006, label %7012

; <label>:7006                                    ; preds = %6984
  %7007 = and i32 %7000, 1073741823
  %7008 = add nuw nsw i32 %7007, 20
  %7009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7008, i32 undef)  ; BufferLoad(srv,index,wot)
  %7010 = extractvalue %dx.types.ResRet.i32 %7009, 0
  %7011 = extractvalue %dx.types.ResRet.i32 %7009, 1
  br label %7012

; <label>:7012                                    ; preds = %7006, %6984
  %7013 = phi i32 [ %7010, %7006 ], [ %6980, %6984 ]
  %7014 = phi i32 [ %7011, %7006 ], [ %6981, %6984 ]
  store i32 %7013, i32* %7004, align 4
  store i32 %7014, i32* %7005, align 4
  %7015 = add nuw i32 %6985, 1
  %7016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.i32 %7016, 2
  %7018 = icmp eq i32 %7017, 0
  %7019 = icmp ugt i32 %7000, -1073741825
  %7020 = and i1 %7019, %7018
  %7021 = icmp ult i32 %7015, %6978
  %7022 = and i1 %7020, %7021
  br i1 %7022, label %6984, label %7023

; <label>:7023                                    ; preds = %7012
  br label %7024

; <label>:7024                                    ; preds = %7023, %6927
  %7025 = phi i32 [ 0, %6927 ], [ %7015, %7023 ]
  %7026 = extractvalue %dx.types.CBufRet.f32 %6789, 2
  %7027 = fptoui float %7026 to i32
  %7028 = icmp eq i32 %7027, 0
  br i1 %7028, label %7080, label %7029

; <label>:7029                                    ; preds = %7024
  br label %7030

; <label>:7030                                    ; preds = %7075, %7029
  %7031 = phi i32 [ %7076, %7075 ], [ %7025, %7029 ]
  %7032 = phi i32 [ %7077, %7075 ], [ 0, %7029 ]
  %7033 = lshr i32 %7032, 2
  %7034 = and i32 %7032, 3
  %7035 = add nuw nsw i32 %7033, 83
  %7036 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7035)  ; CBufferLoadLegacy(handle,regIndex)
  %7037 = extractvalue %dx.types.CBufRet.i32 %7036, 0
  %7038 = extractvalue %dx.types.CBufRet.i32 %7036, 1
  %7039 = extractvalue %dx.types.CBufRet.i32 %7036, 2
  %7040 = extractvalue %dx.types.CBufRet.i32 %7036, 3
  %7041 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7037, i32* %7041, align 4
  %7042 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7038, i32* %7042, align 4
  %7043 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7039, i32* %7043, align 4
  %7044 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7040, i32* %7044, align 4
  %7045 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7034
  %7046 = load i32, i32* %7045, align 4, !tbaa !108, !noalias !112
  %7047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7048 = extractvalue %dx.types.ResRet.i32 %7047, 0
  %7049 = lshr i32 %7048, 16
  %7050 = and i32 %7049, 31
  %7051 = shl i32 %6973, %7050
  %7052 = add i32 %7051, %6972
  %7053 = shl i32 %7052, 2
  %7054 = add i32 %7053, %7046
  %7055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7054, i32 undef)  ; BufferLoad(srv,index,wot)
  %7056 = extractvalue %dx.types.ResRet.i32 %7055, 0
  %7057 = icmp eq i32 %7056, 0
  br i1 %7057, label %7075, label %7058

; <label>:7058                                    ; preds = %7030
  %7059 = icmp slt i32 %7056, 0
  %7060 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7031
  %7061 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7031
  %7062 = bitcast float* %7060 to i32*
  %7063 = bitcast float* %7061 to i32*
  br i1 %7059, label %7064, label %7071

; <label>:7064                                    ; preds = %7058
  %7065 = and i32 %7056, 1073741823
  %7066 = add i32 %7046, 20
  %7067 = add i32 %7066, %7065
  %7068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7067, i32 undef)  ; BufferLoad(srv,index,wot)
  %7069 = extractvalue %dx.types.ResRet.i32 %7068, 0
  %7070 = extractvalue %dx.types.ResRet.i32 %7068, 1
  br label %7071

; <label>:7071                                    ; preds = %7064, %7058
  %7072 = phi i32 [ %7069, %7064 ], [ %6980, %7058 ]
  %7073 = phi i32 [ %7070, %7064 ], [ %6981, %7058 ]
  store i32 %7072, i32* %7062, align 4
  store i32 %7073, i32* %7063, align 4
  %7074 = add i32 %7031, 1
  br label %7075

; <label>:7075                                    ; preds = %7071, %7030
  %7076 = phi i32 [ %7031, %7030 ], [ %7074, %7071 ]
  %7077 = add nuw i32 %7032, 1
  %7078 = icmp eq i32 %7077, %7027
  br i1 %7078, label %7079, label %7030

; <label>:7079                                    ; preds = %7075
  br label %7080

; <label>:7080                                    ; preds = %7079, %7024
  %7081 = phi i32 [ %7025, %7024 ], [ %7076, %7079 ]
  %7082 = icmp eq i32 %7081, 1
  %7083 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %7084 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %7082, label %7085, label %7088

; <label>:7085                                    ; preds = %7080
  %7086 = load float, float* %7083, align 4
  %7087 = load float, float* %7084, align 4
  br label %7115

; <label>:7088                                    ; preds = %7080
  %7089 = load float, float* %7083, align 4
  %7090 = load float, float* %7084, align 4
  %7091 = fdiv fast float 1.000000e+00, %7090
  %7092 = fsub fast float %7089, %7091
  %7093 = icmp ugt i32 %7081, 1
  br i1 %7093, label %7094, label %7110

; <label>:7094                                    ; preds = %7088
  br label %7095

; <label>:7095                                    ; preds = %7095, %7094
  %7096 = phi float [ %7105, %7095 ], [ %7092, %7094 ]
  %7097 = phi float [ %7106, %7095 ], [ %7089, %7094 ]
  %7098 = phi i32 [ %7107, %7095 ], [ 1, %7094 ]
  %7099 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7098
  %7100 = load float, float* %7099, align 4
  %7101 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7098
  %7102 = load float, float* %7101, align 4
  %7103 = fdiv fast float 1.000000e+00, %7102
  %7104 = fsub fast float %7100, %7103
  %7105 = call float @dx.op.binary.f32(i32 36, float %7096, float %7104)  ; FMin(a,b)
  %7106 = call float @dx.op.binary.f32(i32 35, float %7097, float %7100)  ; FMax(a,b)
  %7107 = add nuw i32 %7098, 1
  %7108 = icmp eq i32 %7107, %7081
  br i1 %7108, label %7109, label %7095

; <label>:7109                                    ; preds = %7095
  br label %7110

; <label>:7110                                    ; preds = %7109, %7088
  %7111 = phi float [ %7092, %7088 ], [ %7105, %7109 ]
  %7112 = phi float [ %7089, %7088 ], [ %7106, %7109 ]
  %7113 = fsub fast float %7112, %7111
  %7114 = fdiv fast float 1.000000e+00, %7113
  br label %7115

; <label>:7115                                    ; preds = %7110, %7085
  %7116 = phi float [ %7086, %7085 ], [ %7112, %7110 ]
  %7117 = phi float [ %7087, %7085 ], [ %7114, %7110 ]
  %7118 = fadd fast float %6819, %7116
  %7119 = fmul fast float %7118, %7117
  %7120 = call float @dx.op.unary.f32(i32 7, float %7119)  ; Saturate(value)
  %7121 = fmul fast float %7120, 2.000000e+00
  %7122 = fsub fast float 1.000000e+00, %7121
  %7123 = fmul fast float %6957, %6957
  %7124 = fsub fast float %6958, %7123
  %7125 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7124)  ; FMax(a,b)
  %7126 = fdiv fast float 1.000000e+00, %7125
  %7127 = fmul fast float %6958, %6957
  %7128 = fsub fast float %6959, %7127
  %7129 = fsub fast float %7122, %6957
  %7130 = fmul fast float %7122, %7122
  %7131 = fsub fast float %7130, %6958
  %7132 = fmul fast float %7126, %7128
  %7133 = fmul fast float %7132, %7129
  %7134 = fsub fast float %7131, %7133
  %7135 = fmul fast float %6958, %6958
  %7136 = fsub fast float %6960, %7135
  %7137 = fmul fast float %7128, %7128
  %7138 = fmul fast float %7137, %7126
  %7139 = fsub fast float %7136, %7138
  %7140 = fdiv fast float %7134, %7139
  %7141 = fmul fast float %7140, %7128
  %7142 = fsub fast float %7129, %7141
  %7143 = fmul fast float %7142, %7126
  %7144 = fmul fast float %7143, %6957
  %7145 = fsub fast float 1.000000e+00, %7144
  %7146 = fmul fast float %7140, %6958
  %7147 = fsub fast float %7145, %7146
  %7148 = fmul fast float %7143, %7143
  %7149 = fmul fast float %7140, 4.000000e+00
  %7150 = fmul fast float %7149, %7147
  %7151 = fsub fast float %7148, %7150
  %7152 = call float @dx.op.unary.f32(i32 24, float %7151)  ; Sqrt(value)
  %7153 = fcmp fast oge float %7143, 0.000000e+00
  %7154 = fsub fast float -0.000000e+00, %7152
  %7155 = select i1 %7153, float %7154, float %7152
  %7156 = fsub fast float %7155, %7143
  %7157 = fdiv fast float %7156, %7140
  %7158 = fdiv fast float %7147, %7156
  %7159 = fmul fast float %7157, 5.000000e-01
  %7160 = fmul fast float %7158, 2.000000e+00
  %7161 = select i1 %7153, float %7159, float %7160
  %7162 = select i1 %7153, float %7160, float %7159
  %7163 = call float @dx.op.binary.f32(i32 35, float %7161, float %7162)  ; FMax(a,b)
  %7164 = call float @dx.op.binary.f32(i32 36, float %7161, float %7162)  ; FMin(a,b)
  %7165 = fcmp fast ogt float %7122, %7163
  %7166 = fsub fast float %7122, %7164
  %7167 = fsub fast float %7122, %7163
  %7168 = fsub fast float %7163, %7164
  %7169 = select i1 %7165, float %7167, float %7168
  %7170 = fmul float %7166, %7169
  %7171 = select i1 %7165, float %7164, float %7122
  %7172 = fcmp fast ogt float %7122, %7164
  %7173 = fmul fast float %7171, %7163
  %7174 = fadd fast float %7171, %7163
  %7175 = fmul fast float %7174, %6957
  %7176 = fadd fast float %7173, %6958
  %7177 = fsub fast float %7176, %7175
  %7178 = fdiv fast float %7177, %7170
  %7179 = select i1 %7172, float %7178, float 0.000000e+00
  %7180 = fsub fast float 1.000000e+00, %7179
  %7181 = select i1 %7165, float %7180, float %7179
  %7182 = call float @dx.op.unary.f32(i32 7, float %7181)  ; Saturate(value)
  %7183 = extractvalue %dx.types.CBufRet.f32 %6942, 3
  %7184 = fmul fast float %7183, %7182
  %7185 = fsub fast float 1.000000e+00, %7184
  br label %7186

; <label>:7186                                    ; preds = %7115, %6827, %6792, %6788, %6754
  %7187 = phi float [ 1.000000e+00, %6754 ], [ %7185, %7115 ], [ 1.000000e+00, %6792 ], [ 1.000000e+00, %6827 ], [ 1.000000e+00, %6788 ]
  %7188 = fcmp fast ogt float %6784, 0.000000e+00
  br i1 %7188, label %7189, label %7351, !dx.controlflow.hints !121

; <label>:7189                                    ; preds = %7186
  %7190 = fadd fast float %6697, %6671
  %7191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7192 = extractvalue %dx.types.CBufRet.f32 %7191, 2
  %7193 = extractvalue %dx.types.CBufRet.f32 %7191, 3
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 2
  %7196 = call float @dx.op.binary.f32(i32 35, float %7190, float 0.000000e+00)  ; FMax(a,b)
  %7197 = fadd fast float %7196, 0x3F10000000000000
  %7198 = fcmp fast oeq float %7195, 0.000000e+00
  br i1 %7198, label %7199, label %7266

; <label>:7199                                    ; preds = %7189
  %7200 = extractvalue %dx.types.CBufRet.f32 %7191, 1
  %7201 = extractvalue %dx.types.CBufRet.f32 %7191, 0
  %7202 = fmul fast float %7201, %6686
  %7203 = fmul fast float %7200, %6687
  %7204 = fadd fast float %7202, 5.000000e-01
  %7205 = call float @dx.op.unary.f32(i32 27, float %7204)  ; Round_ni(value)
  %7206 = fadd fast float %7203, 5.000000e-01
  %7207 = call float @dx.op.unary.f32(i32 27, float %7206)  ; Round_ni(value)
  %7208 = fsub fast float %7204, %7205
  %7209 = fsub fast float %7206, %7207
  %7210 = fadd fast float %7205, -5.000000e-01
  %7211 = fadd fast float %7207, -5.000000e-01
  %7212 = fmul fast float %7208, 2.000000e+00
  %7213 = fsub fast float 3.000000e+00, %7212
  %7214 = fadd fast float %7212, 1.000000e+00
  %7215 = fsub fast float 2.000000e+00, %7208
  %7216 = bitcast float %7213 to i32
  %7217 = sub nsw i32 2129859010, %7216
  %7218 = bitcast i32 %7217 to float
  %7219 = fmul fast float %7218, %7215
  %7220 = fadd fast float %7219, -1.000000e+00
  %7221 = bitcast float %7214 to i32
  %7222 = sub nsw i32 2129859010, %7221
  %7223 = bitcast i32 %7222 to float
  %7224 = fmul fast float %7223, %7208
  %7225 = fadd fast float %7224, 1.000000e+00
  %7226 = fmul fast float %7209, 2.000000e+00
  %7227 = fsub fast float 3.000000e+00, %7226
  %7228 = fadd fast float %7226, 1.000000e+00
  %7229 = fsub fast float 2.000000e+00, %7209
  %7230 = bitcast float %7227 to i32
  %7231 = sub nsw i32 2129859010, %7230
  %7232 = bitcast i32 %7231 to float
  %7233 = fmul fast float %7232, %7229
  %7234 = fadd fast float %7233, -1.000000e+00
  %7235 = bitcast float %7228 to i32
  %7236 = sub nsw i32 2129859010, %7235
  %7237 = bitcast i32 %7236 to float
  %7238 = fmul fast float %7237, %7209
  %7239 = fadd fast float %7238, 1.000000e+00
  %7240 = fadd fast float %7220, %7210
  %7241 = fmul fast float %7240, %7192
  %7242 = fadd fast float %7234, %7211
  %7243 = fmul fast float %7242, %7193
  %7244 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7241, float %7243, float undef, float undef, i32 0, i32 0, i32 undef, float %7197)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7245 = extractvalue %dx.types.ResRet.f32 %7244, 0
  %7246 = fmul fast float %7245, %7213
  %7247 = fadd fast float %7225, %7210
  %7248 = fmul fast float %7247, %7192
  %7249 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7248, float %7243, float undef, float undef, i32 0, i32 0, i32 undef, float %7197)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 0
  %7251 = fmul fast float %7250, %7214
  %7252 = fadd fast float %7239, %7211
  %7253 = fmul fast float %7252, %7193
  %7254 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7241, float %7253, float undef, float undef, i32 0, i32 0, i32 undef, float %7197)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7255 = extractvalue %dx.types.ResRet.f32 %7254, 0
  %7256 = fmul fast float %7255, %7213
  %7257 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7248, float %7253, float undef, float undef, i32 0, i32 0, i32 undef, float %7197)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7258 = extractvalue %dx.types.ResRet.f32 %7257, 0
  %7259 = fmul fast float %7258, %7214
  %7260 = fadd fast float %7259, %7256
  %7261 = fmul fast float %7260, %7228
  %7262 = fadd fast float %7251, %7246
  %7263 = fmul fast float %7262, %7227
  %7264 = fadd fast float %7263, %7261
  %7265 = fmul fast float %7264, 6.250000e-02
  br label %7351

; <label>:7266                                    ; preds = %7189
  %7267 = fmul fast float %236, 0x401921FB60000000
  %7268 = call float @dx.op.unary.f32(i32 13, float %7267)  ; Sin(value)
  %7269 = call float @dx.op.unary.f32(i32 12, float %7267)  ; Cos(value)
  %7270 = fsub fast float -0.000000e+00, %7268
  br label %7271

; <label>:7271                                    ; preds = %7320, %7266
  %7272 = phi float [ 0.000000e+00, %7266 ], [ %7315, %7320 ]
  %7273 = phi float [ 0.000000e+00, %7266 ], [ %7317, %7320 ]
  %7274 = phi i32 [ 0, %7266 ], [ %7321, %7320 ]
  %7275 = mul i32 %7274, 2
  %7276 = add i32 0, %7275
  %7277 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7276
  %7278 = load float, float* %7277, align 4
  %7279 = mul i32 %7274, 2
  %7280 = add i32 1, %7279
  %7281 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7280
  %7282 = load float, float* %7281, align 4
  %7283 = fmul fast float %7278, %7269
  %7284 = call float @dx.op.tertiary.f32(i32 46, float %7282, float %7270, float %7283)  ; FMad(a,b,c)
  %7285 = fmul fast float %7278, %7268
  %7286 = call float @dx.op.tertiary.f32(i32 46, float %7282, float %7269, float %7285)  ; FMad(a,b,c)
  %7287 = fmul fast float %7284, %7195
  %7288 = fmul fast float %7286, %7195
  %7289 = fadd fast float %7287, %6686
  %7290 = fadd fast float %7288, %6687
  %7291 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7289, float %7290, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.ResRet.f32 %7291, 1
  %7294 = extractvalue %dx.types.ResRet.f32 %7291, 2
  %7295 = extractvalue %dx.types.ResRet.f32 %7291, 3
  %7296 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7292, float* %7296, align 4
  %7297 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7293, float* %7297, align 4
  %7298 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7294, float* %7298, align 4
  %7299 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7295, float* %7299, align 4
  %7300 = fsub fast float %7292, %7197
  %7301 = fcmp fast olt float %7300, 0.000000e+00
  %7302 = select i1 %7301, float 0.000000e+00, float 1.000000e+00
  %7303 = fadd fast float %7302, %7272
  %7304 = fmul fast float %7302, %7300
  %7305 = fadd fast float %7304, %7273
  br label %7306

; <label>:7306                                    ; preds = %7306, %7271
  %7307 = phi i32 [ 1, %7271 ], [ %7318, %7306 ]
  %7308 = phi float [ %7305, %7271 ], [ %7317, %7306 ]
  %7309 = phi float [ %7303, %7271 ], [ %7315, %7306 ]
  %7310 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7307
  %7311 = load float, float* %7310, align 4, !tbaa !122, !noalias !112
  %7312 = fsub fast float %7311, %7197
  %7313 = fcmp fast olt float %7312, 0.000000e+00
  %7314 = select i1 %7313, float 0.000000e+00, float 1.000000e+00
  %7315 = fadd fast float %7314, %7309
  %7316 = fmul fast float %7314, %7312
  %7317 = fadd fast float %7316, %7308
  %7318 = add nuw nsw i32 %7307, 1
  %7319 = icmp eq i32 %7318, 4
  br i1 %7319, label %7320, label %7306, !llvm.loop !124

; <label>:7320                                    ; preds = %7306
  %7321 = add nuw nsw i32 %7274, 1
  %7322 = icmp eq i32 %7321, 8
  br i1 %7322, label %7323, label %7271, !llvm.loop !125

; <label>:7323                                    ; preds = %7320
  %7324 = fdiv fast float 1.000000e+00, %7315
  %7325 = fmul fast float %7324, %7317
  %7326 = fdiv fast float 1.000000e+00, %7197
  %7327 = fmul fast float %7325, %7326
  %7328 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  %7329 = call float @dx.op.binary.f32(i32 35, float %7328, float 0.000000e+00)  ; FMax(a,b)
  %7330 = fmul fast float %7315, 3.125000e-02
  %7331 = call float @dx.op.unary.f32(i32 7, float %7330)  ; Saturate(value)
  %7332 = fmul fast float %7331, 2.000000e+00
  %7333 = fadd fast float %7332, -1.000000e+00
  %7334 = fcmp fast ogt float %7333, 0.000000e+00
  %7335 = fcmp fast olt float %7333, 0.000000e+00
  %7336 = zext i1 %7334 to i32
  %7337 = zext i1 %7335 to i32
  %7338 = sub nsw i32 %7336, %7337
  %7339 = sitofp i32 %7338 to float
  %7340 = fmul fast float %7339, %7333
  %7341 = fsub fast float 1.000000e+00, %7340
  %7342 = fmul fast float %7341, %7341
  %7343 = fmul fast float %7342, %7341
  %7344 = fsub fast float %7341, %7343
  %7345 = fmul fast float %7344, %7329
  %7346 = fsub fast float 1.000000e+00, %7343
  %7347 = fsub fast float %7346, %7345
  %7348 = fmul fast float %7339, 5.000000e-01
  %7349 = fmul fast float %7348, %7347
  %7350 = fsub fast float 5.000000e-01, %7349
  br label %7351

; <label>:7351                                    ; preds = %7323, %7199, %7186
  %7352 = phi float [ 1.000000e+00, %7186 ], [ %7265, %7199 ], [ %7350, %7323 ]
  %7353 = fcmp fast ogt float %6782, 0.000000e+00
  br i1 %7353, label %7354, label %7518, !dx.controlflow.hints !126

; <label>:7354                                    ; preds = %7351
  %7355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7356 = extractvalue %dx.types.CBufRet.f32 %7355, 1
  %7357 = fadd fast float %7356, %6671
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7360 = extractvalue %dx.types.CBufRet.f32 %7358, 3
  %7361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7362 = extractvalue %dx.types.CBufRet.f32 %7361, 1
  %7363 = call float @dx.op.binary.f32(i32 35, float %7357, float 0.000000e+00)  ; FMax(a,b)
  %7364 = fadd fast float %7363, 0x3F10000000000000
  %7365 = fcmp fast oeq float %7362, 0.000000e+00
  br i1 %7365, label %7366, label %7433

; <label>:7366                                    ; preds = %7354
  %7367 = extractvalue %dx.types.CBufRet.f32 %7358, 1
  %7368 = extractvalue %dx.types.CBufRet.f32 %7358, 0
  %7369 = fmul fast float %7368, %6678
  %7370 = fmul fast float %7367, %6679
  %7371 = fadd fast float %7369, 5.000000e-01
  %7372 = call float @dx.op.unary.f32(i32 27, float %7371)  ; Round_ni(value)
  %7373 = fadd fast float %7370, 5.000000e-01
  %7374 = call float @dx.op.unary.f32(i32 27, float %7373)  ; Round_ni(value)
  %7375 = fsub fast float %7371, %7372
  %7376 = fsub fast float %7373, %7374
  %7377 = fadd fast float %7372, -5.000000e-01
  %7378 = fadd fast float %7374, -5.000000e-01
  %7379 = fmul fast float %7375, 2.000000e+00
  %7380 = fsub fast float 3.000000e+00, %7379
  %7381 = fadd fast float %7379, 1.000000e+00
  %7382 = fsub fast float 2.000000e+00, %7375
  %7383 = bitcast float %7380 to i32
  %7384 = sub nsw i32 2129859010, %7383
  %7385 = bitcast i32 %7384 to float
  %7386 = fmul fast float %7385, %7382
  %7387 = fadd fast float %7386, -1.000000e+00
  %7388 = bitcast float %7381 to i32
  %7389 = sub nsw i32 2129859010, %7388
  %7390 = bitcast i32 %7389 to float
  %7391 = fmul fast float %7390, %7375
  %7392 = fadd fast float %7391, 1.000000e+00
  %7393 = fmul fast float %7376, 2.000000e+00
  %7394 = fsub fast float 3.000000e+00, %7393
  %7395 = fadd fast float %7393, 1.000000e+00
  %7396 = fsub fast float 2.000000e+00, %7376
  %7397 = bitcast float %7394 to i32
  %7398 = sub nsw i32 2129859010, %7397
  %7399 = bitcast i32 %7398 to float
  %7400 = fmul fast float %7399, %7396
  %7401 = fadd fast float %7400, -1.000000e+00
  %7402 = bitcast float %7395 to i32
  %7403 = sub nsw i32 2129859010, %7402
  %7404 = bitcast i32 %7403 to float
  %7405 = fmul fast float %7404, %7376
  %7406 = fadd fast float %7405, 1.000000e+00
  %7407 = fadd fast float %7387, %7377
  %7408 = fmul fast float %7407, %7359
  %7409 = fadd fast float %7401, %7378
  %7410 = fmul fast float %7409, %7360
  %7411 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7408, float %7410, float undef, float undef, i32 0, i32 0, i32 undef, float %7364)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7412 = extractvalue %dx.types.ResRet.f32 %7411, 0
  %7413 = fmul fast float %7412, %7380
  %7414 = fadd fast float %7392, %7377
  %7415 = fmul fast float %7414, %7359
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7415, float %7410, float undef, float undef, i32 0, i32 0, i32 undef, float %7364)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = fmul fast float %7417, %7381
  %7419 = fadd fast float %7406, %7378
  %7420 = fmul fast float %7419, %7360
  %7421 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7408, float %7420, float undef, float undef, i32 0, i32 0, i32 undef, float %7364)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = fmul fast float %7422, %7380
  %7424 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7415, float %7420, float undef, float undef, i32 0, i32 0, i32 undef, float %7364)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7425 = extractvalue %dx.types.ResRet.f32 %7424, 0
  %7426 = fmul fast float %7425, %7381
  %7427 = fadd fast float %7426, %7423
  %7428 = fmul fast float %7427, %7395
  %7429 = fadd fast float %7418, %7413
  %7430 = fmul fast float %7429, %7394
  %7431 = fadd fast float %7430, %7428
  %7432 = fmul fast float %7431, 6.250000e-02
  br label %7518

; <label>:7433                                    ; preds = %7354
  %7434 = fmul fast float %236, 0x401921FB60000000
  %7435 = call float @dx.op.unary.f32(i32 13, float %7434)  ; Sin(value)
  %7436 = call float @dx.op.unary.f32(i32 12, float %7434)  ; Cos(value)
  %7437 = fsub fast float -0.000000e+00, %7435
  br label %7438

; <label>:7438                                    ; preds = %7487, %7433
  %7439 = phi float [ 0.000000e+00, %7433 ], [ %7482, %7487 ]
  %7440 = phi float [ 0.000000e+00, %7433 ], [ %7484, %7487 ]
  %7441 = phi i32 [ 0, %7433 ], [ %7488, %7487 ]
  %7442 = mul i32 %7441, 2
  %7443 = add i32 0, %7442
  %7444 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7443
  %7445 = load float, float* %7444, align 4
  %7446 = mul i32 %7441, 2
  %7447 = add i32 1, %7446
  %7448 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7447
  %7449 = load float, float* %7448, align 4
  %7450 = fmul fast float %7445, %7436
  %7451 = call float @dx.op.tertiary.f32(i32 46, float %7449, float %7437, float %7450)  ; FMad(a,b,c)
  %7452 = fmul fast float %7445, %7435
  %7453 = call float @dx.op.tertiary.f32(i32 46, float %7449, float %7436, float %7452)  ; FMad(a,b,c)
  %7454 = fmul fast float %7451, %7362
  %7455 = fmul fast float %7453, %7362
  %7456 = fadd fast float %7454, %6678
  %7457 = fadd fast float %7455, %6679
  %7458 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7456, float %7457, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.ResRet.f32 %7458, 1
  %7461 = extractvalue %dx.types.ResRet.f32 %7458, 2
  %7462 = extractvalue %dx.types.ResRet.f32 %7458, 3
  %7463 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7459, float* %7463, align 4
  %7464 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7460, float* %7464, align 4
  %7465 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7461, float* %7465, align 4
  %7466 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7462, float* %7466, align 4
  %7467 = fsub fast float %7459, %7364
  %7468 = fcmp fast olt float %7467, 0.000000e+00
  %7469 = select i1 %7468, float 0.000000e+00, float 1.000000e+00
  %7470 = fadd fast float %7469, %7439
  %7471 = fmul fast float %7469, %7467
  %7472 = fadd fast float %7471, %7440
  br label %7473

; <label>:7473                                    ; preds = %7473, %7438
  %7474 = phi i32 [ 1, %7438 ], [ %7485, %7473 ]
  %7475 = phi float [ %7472, %7438 ], [ %7484, %7473 ]
  %7476 = phi float [ %7470, %7438 ], [ %7482, %7473 ]
  %7477 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7474
  %7478 = load float, float* %7477, align 4, !tbaa !122, !noalias !112
  %7479 = fsub fast float %7478, %7364
  %7480 = fcmp fast olt float %7479, 0.000000e+00
  %7481 = select i1 %7480, float 0.000000e+00, float 1.000000e+00
  %7482 = fadd fast float %7481, %7476
  %7483 = fmul fast float %7481, %7479
  %7484 = fadd fast float %7483, %7475
  %7485 = add nuw nsw i32 %7474, 1
  %7486 = icmp eq i32 %7485, 4
  br i1 %7486, label %7487, label %7473, !llvm.loop !124

; <label>:7487                                    ; preds = %7473
  %7488 = add nuw nsw i32 %7441, 1
  %7489 = icmp eq i32 %7488, 8
  br i1 %7489, label %7490, label %7438, !llvm.loop !125

; <label>:7490                                    ; preds = %7487
  %7491 = fdiv fast float 1.000000e+00, %7482
  %7492 = fmul fast float %7491, %7484
  %7493 = fdiv fast float 1.000000e+00, %7364
  %7494 = fmul fast float %7492, %7493
  %7495 = call float @dx.op.unary.f32(i32 7, float %7494)  ; Saturate(value)
  %7496 = call float @dx.op.binary.f32(i32 35, float %7495, float 0.000000e+00)  ; FMax(a,b)
  %7497 = fmul fast float %7482, 3.125000e-02
  %7498 = call float @dx.op.unary.f32(i32 7, float %7497)  ; Saturate(value)
  %7499 = fmul fast float %7498, 2.000000e+00
  %7500 = fadd fast float %7499, -1.000000e+00
  %7501 = fcmp fast ogt float %7500, 0.000000e+00
  %7502 = fcmp fast olt float %7500, 0.000000e+00
  %7503 = zext i1 %7501 to i32
  %7504 = zext i1 %7502 to i32
  %7505 = sub nsw i32 %7503, %7504
  %7506 = sitofp i32 %7505 to float
  %7507 = fmul fast float %7506, %7500
  %7508 = fsub fast float 1.000000e+00, %7507
  %7509 = fmul fast float %7508, %7508
  %7510 = fmul fast float %7509, %7508
  %7511 = fsub fast float %7508, %7510
  %7512 = fmul fast float %7511, %7496
  %7513 = fsub fast float 1.000000e+00, %7510
  %7514 = fsub fast float %7513, %7512
  %7515 = fmul fast float %7506, 5.000000e-01
  %7516 = fmul fast float %7515, %7514
  %7517 = fsub fast float 5.000000e-01, %7516
  br label %7518

; <label>:7518                                    ; preds = %7490, %7366, %7351
  %7519 = phi float [ 1.000000e+00, %7351 ], [ %7432, %7366 ], [ %7517, %7490 ]
  %7520 = fcmp fast ogt float %6781, 0.000000e+00
  br i1 %7520, label %7521, label %7685, !dx.controlflow.hints !127

; <label>:7521                                    ; preds = %7518
  %7522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.f32 %7522, 0
  %7524 = fadd fast float %7523, %6671
  %7525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7526 = extractvalue %dx.types.CBufRet.f32 %7525, 2
  %7527 = extractvalue %dx.types.CBufRet.f32 %7525, 3
  %7528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7529 = extractvalue %dx.types.CBufRet.f32 %7528, 0
  %7530 = call float @dx.op.binary.f32(i32 35, float %7524, float 0.000000e+00)  ; FMax(a,b)
  %7531 = fadd fast float %7530, 0x3F10000000000000
  %7532 = fcmp fast oeq float %7529, 0.000000e+00
  br i1 %7532, label %7533, label %7600

; <label>:7533                                    ; preds = %7521
  %7534 = extractvalue %dx.types.CBufRet.f32 %7525, 1
  %7535 = extractvalue %dx.types.CBufRet.f32 %7525, 0
  %7536 = fmul fast float %7535, %6663
  %7537 = fmul fast float %7534, %6667
  %7538 = fadd fast float %7536, 5.000000e-01
  %7539 = call float @dx.op.unary.f32(i32 27, float %7538)  ; Round_ni(value)
  %7540 = fadd fast float %7537, 5.000000e-01
  %7541 = call float @dx.op.unary.f32(i32 27, float %7540)  ; Round_ni(value)
  %7542 = fsub fast float %7538, %7539
  %7543 = fsub fast float %7540, %7541
  %7544 = fadd fast float %7539, -5.000000e-01
  %7545 = fadd fast float %7541, -5.000000e-01
  %7546 = fmul fast float %7542, 2.000000e+00
  %7547 = fsub fast float 3.000000e+00, %7546
  %7548 = fadd fast float %7546, 1.000000e+00
  %7549 = fsub fast float 2.000000e+00, %7542
  %7550 = bitcast float %7547 to i32
  %7551 = sub nsw i32 2129859010, %7550
  %7552 = bitcast i32 %7551 to float
  %7553 = fmul fast float %7552, %7549
  %7554 = fadd fast float %7553, -1.000000e+00
  %7555 = bitcast float %7548 to i32
  %7556 = sub nsw i32 2129859010, %7555
  %7557 = bitcast i32 %7556 to float
  %7558 = fmul fast float %7557, %7542
  %7559 = fadd fast float %7558, 1.000000e+00
  %7560 = fmul fast float %7543, 2.000000e+00
  %7561 = fsub fast float 3.000000e+00, %7560
  %7562 = fadd fast float %7560, 1.000000e+00
  %7563 = fsub fast float 2.000000e+00, %7543
  %7564 = bitcast float %7561 to i32
  %7565 = sub nsw i32 2129859010, %7564
  %7566 = bitcast i32 %7565 to float
  %7567 = fmul fast float %7566, %7563
  %7568 = fadd fast float %7567, -1.000000e+00
  %7569 = bitcast float %7562 to i32
  %7570 = sub nsw i32 2129859010, %7569
  %7571 = bitcast i32 %7570 to float
  %7572 = fmul fast float %7571, %7543
  %7573 = fadd fast float %7572, 1.000000e+00
  %7574 = fadd fast float %7554, %7544
  %7575 = fmul fast float %7574, %7526
  %7576 = fadd fast float %7568, %7545
  %7577 = fmul fast float %7576, %7527
  %7578 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7575, float %7577, float undef, float undef, i32 0, i32 0, i32 undef, float %7531)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7579 = extractvalue %dx.types.ResRet.f32 %7578, 0
  %7580 = fmul fast float %7579, %7547
  %7581 = fadd fast float %7559, %7544
  %7582 = fmul fast float %7581, %7526
  %7583 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7582, float %7577, float undef, float undef, i32 0, i32 0, i32 undef, float %7531)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7584 = extractvalue %dx.types.ResRet.f32 %7583, 0
  %7585 = fmul fast float %7584, %7548
  %7586 = fadd fast float %7573, %7545
  %7587 = fmul fast float %7586, %7527
  %7588 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7575, float %7587, float undef, float undef, i32 0, i32 0, i32 undef, float %7531)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7589 = extractvalue %dx.types.ResRet.f32 %7588, 0
  %7590 = fmul fast float %7589, %7547
  %7591 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7582, float %7587, float undef, float undef, i32 0, i32 0, i32 undef, float %7531)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7592 = extractvalue %dx.types.ResRet.f32 %7591, 0
  %7593 = fmul fast float %7592, %7548
  %7594 = fadd fast float %7593, %7590
  %7595 = fmul fast float %7594, %7562
  %7596 = fadd fast float %7585, %7580
  %7597 = fmul fast float %7596, %7561
  %7598 = fadd fast float %7597, %7595
  %7599 = fmul fast float %7598, 6.250000e-02
  br label %7685

; <label>:7600                                    ; preds = %7521
  %7601 = fmul fast float %236, 0x401921FB60000000
  %7602 = call float @dx.op.unary.f32(i32 13, float %7601)  ; Sin(value)
  %7603 = call float @dx.op.unary.f32(i32 12, float %7601)  ; Cos(value)
  %7604 = fsub fast float -0.000000e+00, %7602
  br label %7605

; <label>:7605                                    ; preds = %7654, %7600
  %7606 = phi float [ 0.000000e+00, %7600 ], [ %7649, %7654 ]
  %7607 = phi float [ 0.000000e+00, %7600 ], [ %7651, %7654 ]
  %7608 = phi i32 [ 0, %7600 ], [ %7655, %7654 ]
  %7609 = mul i32 %7608, 2
  %7610 = add i32 0, %7609
  %7611 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7610
  %7612 = load float, float* %7611, align 4
  %7613 = mul i32 %7608, 2
  %7614 = add i32 1, %7613
  %7615 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7614
  %7616 = load float, float* %7615, align 4
  %7617 = fmul fast float %7612, %7603
  %7618 = call float @dx.op.tertiary.f32(i32 46, float %7616, float %7604, float %7617)  ; FMad(a,b,c)
  %7619 = fmul fast float %7612, %7602
  %7620 = call float @dx.op.tertiary.f32(i32 46, float %7616, float %7603, float %7619)  ; FMad(a,b,c)
  %7621 = fmul fast float %7618, %7529
  %7622 = fmul fast float %7620, %7529
  %7623 = fadd fast float %7621, %6663
  %7624 = fadd fast float %7622, %6667
  %7625 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7623, float %7624, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7626 = extractvalue %dx.types.ResRet.f32 %7625, 0
  %7627 = extractvalue %dx.types.ResRet.f32 %7625, 1
  %7628 = extractvalue %dx.types.ResRet.f32 %7625, 2
  %7629 = extractvalue %dx.types.ResRet.f32 %7625, 3
  %7630 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7626, float* %7630, align 4
  %7631 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7627, float* %7631, align 4
  %7632 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7628, float* %7632, align 4
  %7633 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7629, float* %7633, align 4
  %7634 = fsub fast float %7626, %7531
  %7635 = fcmp fast olt float %7634, 0.000000e+00
  %7636 = select i1 %7635, float 0.000000e+00, float 1.000000e+00
  %7637 = fadd fast float %7636, %7606
  %7638 = fmul fast float %7636, %7634
  %7639 = fadd fast float %7638, %7607
  br label %7640

; <label>:7640                                    ; preds = %7640, %7605
  %7641 = phi i32 [ 1, %7605 ], [ %7652, %7640 ]
  %7642 = phi float [ %7639, %7605 ], [ %7651, %7640 ]
  %7643 = phi float [ %7637, %7605 ], [ %7649, %7640 ]
  %7644 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7641
  %7645 = load float, float* %7644, align 4, !tbaa !122, !noalias !112
  %7646 = fsub fast float %7645, %7531
  %7647 = fcmp fast olt float %7646, 0.000000e+00
  %7648 = select i1 %7647, float 0.000000e+00, float 1.000000e+00
  %7649 = fadd fast float %7648, %7643
  %7650 = fmul fast float %7648, %7646
  %7651 = fadd fast float %7650, %7642
  %7652 = add nuw nsw i32 %7641, 1
  %7653 = icmp eq i32 %7652, 4
  br i1 %7653, label %7654, label %7640, !llvm.loop !124

; <label>:7654                                    ; preds = %7640
  %7655 = add nuw nsw i32 %7608, 1
  %7656 = icmp eq i32 %7655, 8
  br i1 %7656, label %7657, label %7605, !llvm.loop !125

; <label>:7657                                    ; preds = %7654
  %7658 = fdiv fast float 1.000000e+00, %7649
  %7659 = fmul fast float %7658, %7651
  %7660 = fdiv fast float 1.000000e+00, %7531
  %7661 = fmul fast float %7659, %7660
  %7662 = call float @dx.op.unary.f32(i32 7, float %7661)  ; Saturate(value)
  %7663 = call float @dx.op.binary.f32(i32 35, float %7662, float 0.000000e+00)  ; FMax(a,b)
  %7664 = fmul fast float %7649, 3.125000e-02
  %7665 = call float @dx.op.unary.f32(i32 7, float %7664)  ; Saturate(value)
  %7666 = fmul fast float %7665, 2.000000e+00
  %7667 = fadd fast float %7666, -1.000000e+00
  %7668 = fcmp fast ogt float %7667, 0.000000e+00
  %7669 = fcmp fast olt float %7667, 0.000000e+00
  %7670 = zext i1 %7668 to i32
  %7671 = zext i1 %7669 to i32
  %7672 = sub nsw i32 %7670, %7671
  %7673 = sitofp i32 %7672 to float
  %7674 = fmul fast float %7673, %7667
  %7675 = fsub fast float 1.000000e+00, %7674
  %7676 = fmul fast float %7675, %7675
  %7677 = fmul fast float %7676, %7675
  %7678 = fsub fast float %7675, %7677
  %7679 = fmul fast float %7678, %7663
  %7680 = fsub fast float 1.000000e+00, %7677
  %7681 = fsub fast float %7680, %7679
  %7682 = fmul fast float %7673, 5.000000e-01
  %7683 = fmul fast float %7682, %7681
  %7684 = fsub fast float 5.000000e-01, %7683
  br label %7685

; <label>:7685                                    ; preds = %7657, %7533, %7518
  %7686 = phi float [ 1.000000e+00, %7518 ], [ %7599, %7533 ], [ %7684, %7657 ]
  %7687 = fsub fast float %7352, %7187
  %7688 = fmul fast float %7687, %6725
  %7689 = fadd fast float %7688, %7187
  %7690 = fsub fast float %7519, %7689
  %7691 = fmul fast float %7690, %6755
  %7692 = fadd fast float %7691, %7689
  %7693 = fsub fast float %7686, %7692
  %7694 = fmul fast float %7693, %6781
  %7695 = fadd fast float %7694, %7692
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 2
  %7698 = fcmp fast ogt float %7697, 0.000000e+00
  br i1 %7698, label %7699, label %7739, !dx.controlflow.hints !128

; <label>:7699                                    ; preds = %7685
  %7700 = fcmp fast ugt float %7697, 0.000000e+00
  br i1 %7700, label %7701, label %7736

; <label>:7701                                    ; preds = %7699
  %7702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7703 = extractvalue %dx.types.CBufRet.f32 %7702, 0
  %7704 = extractvalue %dx.types.CBufRet.f32 %7702, 1
  %7705 = extractvalue %dx.types.CBufRet.f32 %7702, 2
  %7706 = extractvalue %dx.types.CBufRet.f32 %7702, 3
  %7707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7708 = extractvalue %dx.types.CBufRet.f32 %7707, 0
  %7709 = extractvalue %dx.types.CBufRet.f32 %7707, 1
  %7710 = extractvalue %dx.types.CBufRet.f32 %7707, 2
  %7711 = extractvalue %dx.types.CBufRet.f32 %7707, 3
  %7712 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7713 = extractvalue %dx.types.CBufRet.f32 %7696, 1
  %7714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7715 = extractvalue %dx.types.CBufRet.f32 %7714, 0
  %7716 = extractvalue %dx.types.CBufRet.f32 %7714, 1
  %7717 = extractvalue %dx.types.CBufRet.f32 %7714, 2
  %7718 = fadd fast float %7715, %6640
  %7719 = fadd fast float %7716, %6641
  %7720 = fadd fast float %7717, %6642
  %7721 = fmul fast float %7718, %7703
  %7722 = call float @dx.op.tertiary.f32(i32 46, float %7704, float %7719, float %7721)  ; FMad(a,b,c)
  %7723 = call float @dx.op.tertiary.f32(i32 46, float %7705, float %7720, float %7722)  ; FMad(a,b,c)
  %7724 = fadd fast float %7723, %7706
  %7725 = fmul fast float %7718, %7708
  %7726 = call float @dx.op.tertiary.f32(i32 46, float %7709, float %7719, float %7725)  ; FMad(a,b,c)
  %7727 = call float @dx.op.tertiary.f32(i32 46, float %7710, float %7720, float %7726)  ; FMad(a,b,c)
  %7728 = fadd fast float %7727, %7711
  %7729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7724, float %7728, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7730 = extractvalue %dx.types.ResRet.f32 %7729, 0
  %7731 = fmul fast float %7730, %7713
  %7732 = fadd fast float %7731, %7712
  %7733 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7734 = fmul fast float %7733, %7697
  %7735 = fsub fast float 1.000000e+00, %7734
  br label %7736

; <label>:7736                                    ; preds = %7701, %7699
  %7737 = phi float [ %7735, %7701 ], [ 1.000000e+00, %7699 ]
  %7738 = fmul fast float %7737, %7695
  br label %7739

; <label>:7739                                    ; preds = %7736, %7685, %6620
  %7740 = phi float [ 1.000000e+00, %6620 ], [ %7738, %7736 ], [ %7695, %7685 ]
  %7741 = call float @dx.op.binary.f32(i32 36, float %7740, float %7740)  ; FMin(a,b)
  %7742 = call float @dx.op.binary.f32(i32 36, float %7740, float %7741)  ; FMin(a,b)
  %7743 = fcmp fast ogt float %7742, 0.000000e+00
  br i1 %7743, label %7744, label %7909, !dx.controlflow.hints !129

; <label>:7744                                    ; preds = %7739
  %7745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7746 = extractvalue %dx.types.CBufRet.f32 %7745, 0
  %7747 = extractvalue %dx.types.CBufRet.f32 %7745, 1
  %7748 = extractvalue %dx.types.CBufRet.f32 %7745, 2
  %7749 = extractvalue %dx.types.CBufRet.f32 %7745, 3
  %7750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7751 = extractvalue %dx.types.CBufRet.f32 %7750, 0
  %7752 = extractvalue %dx.types.CBufRet.f32 %7750, 1
  %7753 = extractvalue %dx.types.CBufRet.f32 %7750, 2
  %7754 = extractvalue %dx.types.CBufRet.f32 %7750, 3
  %7755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7756 = extractvalue %dx.types.CBufRet.f32 %7755, 0
  %7757 = extractvalue %dx.types.CBufRet.f32 %7755, 1
  %7758 = extractvalue %dx.types.CBufRet.f32 %7755, 2
  %7759 = extractvalue %dx.types.CBufRet.f32 %7755, 3
  %7760 = fmul fast float %7746, %6640
  %7761 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %7747, float %7760)  ; FMad(a,b,c)
  %7762 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %7748, float %7761)  ; FMad(a,b,c)
  %7763 = fadd fast float %7762, %7749
  %7764 = fmul fast float %7751, %6640
  %7765 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %7752, float %7764)  ; FMad(a,b,c)
  %7766 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %7753, float %7765)  ; FMad(a,b,c)
  %7767 = fadd fast float %7766, %7754
  %7768 = fmul fast float %7756, %6640
  %7769 = call float @dx.op.tertiary.f32(i32 46, float %6641, float %7757, float %7768)  ; FMad(a,b,c)
  %7770 = call float @dx.op.tertiary.f32(i32 46, float %6642, float %7758, float %7769)  ; FMad(a,b,c)
  %7771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7772 = extractvalue %dx.types.CBufRet.f32 %7771, 0
  %7773 = extractvalue %dx.types.CBufRet.f32 %7771, 1
  %7774 = extractvalue %dx.types.CBufRet.f32 %7771, 3
  %7775 = fmul fast float %7774, %7763
  %7776 = fmul fast float %7774, %7767
  %7777 = fadd fast float %7775, %7772
  %7778 = fadd fast float %7776, %7773
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = fsub fast float %7777, %7780
  %7783 = fsub fast float %7778, %7781
  %7784 = fcmp fast olt float %7782, 0.000000e+00
  %7785 = fcmp fast olt float %7783, 0.000000e+00
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 0
  %7788 = extractvalue %dx.types.CBufRet.f32 %7786, 1
  %7789 = extractvalue %dx.types.CBufRet.f32 %7786, 2
  %7790 = extractvalue %dx.types.CBufRet.f32 %7786, 3
  %7791 = select i1 %7784, float %7787, float %7789
  %7792 = select i1 %7785, float %7788, float %7790
  %7793 = fmul fast float %7791, %7782
  %7794 = fmul fast float %7792, %7783
  %7795 = call float @dx.op.unary.f32(i32 6, float %7793)  ; FAbs(value)
  %7796 = call float @dx.op.unary.f32(i32 6, float %7794)  ; FAbs(value)
  %7797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7797, 0
  %7799 = call float @dx.op.binary.f32(i32 35, float %7795, float %7796)  ; FMax(a,b)
  %7800 = fsub fast float %7798, %7799
  %7801 = call float @dx.op.unary.f32(i32 7, float %7800)  ; Saturate(value)
  %7802 = fcmp fast ogt float %7801, 0.000000e+00
  br i1 %7802, label %7803, label %7844, !dx.controlflow.hints !130

; <label>:7803                                    ; preds = %7744
  %7804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7777, float %7778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7805 = extractvalue %dx.types.ResRet.f32 %7804, 1
  %7806 = fcmp fast ogt float %7805, 0.000000e+00
  br i1 %7806, label %7807, label %7839

; <label>:7807                                    ; preds = %7803
  %7808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7777, float %7778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7809 = extractvalue %dx.types.ResRet.f32 %7808, 0
  %7810 = extractvalue %dx.types.ResRet.f32 %7808, 1
  %7811 = extractvalue %dx.types.ResRet.f32 %7808, 2
  %7812 = extractvalue %dx.types.ResRet.f32 %7808, 3
  %7813 = fsub fast float 1.000000e+00, %7759
  %7814 = fsub fast float %7813, %7770
  %7815 = fmul fast float %7814, 0x400921FB60000000
  %7816 = fadd fast float %7815, 0x3FF921FB60000000
  %7817 = call float @dx.op.unary.f32(i32 13, float %7816)  ; Sin(value)
  %7818 = fadd fast float %7817, -1.000000e+00
  %7819 = fmul fast float %7818, 0x3FD45F3060000000
  %7820 = fmul fast float %7814, 0x401921FB60000000
  %7821 = fadd fast float %7820, 0x400921FB60000000
  %7822 = call float @dx.op.unary.f32(i32 13, float %7821)  ; Sin(value)
  %7823 = fadd fast float %7822, 0x3E7777A5C0000000
  %7824 = fmul fast float %7823, 0x3FC45F3060000000
  %7825 = fmul fast float %7814, 0x4022D97C80000000
  %7826 = fadd fast float %7825, 0x4012D97C80000000
  %7827 = call float @dx.op.unary.f32(i32 13, float %7826)  ; Sin(value)
  %7828 = fadd fast float %7827, 1.000000e+00
  %7829 = fmul fast float %7828, 0x3FBB2995E0000000
  %7830 = fmul fast float %7814, 0x402921FB60000000
  %7831 = fadd fast float %7830, 0x401921FB60000000
  %7832 = call float @dx.op.unary.f32(i32 13, float %7831)  ; Sin(value)
  %7833 = fadd fast float %7832, 0xBE8777A5C0000000
  %7834 = fmul fast float %7833, 0x3FB45F3060000000
  %7835 = call float @dx.op.dot4.f32(i32 56, float %7809, float %7810, float %7811, float %7812, float %7819, float %7824, float %7829, float %7834)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7836 = fmul fast float %7835, 0xBFF7154760000000
  %7837 = call float @dx.op.unary.f32(i32 21, float %7836)  ; Exp(value)
  %7838 = call float @dx.op.unary.f32(i32 7, float %7837)  ; Saturate(value)
  br label %7839

; <label>:7839                                    ; preds = %7807, %7803
  %7840 = phi float [ %7838, %7807 ], [ 1.000000e+00, %7803 ]
  %7841 = fadd fast float %7840, -1.000000e+00
  %7842 = fmul fast float %7841, %7801
  %7843 = fadd fast float %7842, 1.000000e+00
  br label %7844

; <label>:7844                                    ; preds = %7839, %7744
  %7845 = phi float [ %7843, %7839 ], [ 1.000000e+00, %7744 ]
  %7846 = fmul fast float %7845, %7740
  %7847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7848 = extractvalue %dx.types.CBufRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.CBufRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.CBufRet.f32 %7847, 2
  %7851 = fadd fast float %7848, %163
  %7852 = fadd fast float %7849, %164
  %7853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7854 = extractvalue %dx.types.CBufRet.f32 %7853, 1
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7859 = fsub fast float -0.000000e+00, %7851
  %7860 = fsub fast float -0.000000e+00, %7852
  %7861 = fsub fast float %5686, %7850
  %7862 = fadd fast float %7861, %7854
  %7863 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7859, float %7860, float %7862)  ; Dot3(ax,ay,az,bx,by,bz)
  %7864 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7856, float %7857, float %7858)  ; Dot3(ax,ay,az,bx,by,bz)
  %7865 = fdiv fast float 1.000000e+00, %7864
  %7866 = fmul fast float %7865, %7863
  %7867 = fmul fast float %7856, %7866
  %7868 = fmul fast float %7857, %7866
  %7869 = fadd fast float %7867, %7851
  %7870 = fadd fast float %7868, %7852
  %7871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7872 = extractvalue %dx.types.CBufRet.f32 %7871, 0
  %7873 = extractvalue %dx.types.CBufRet.f32 %7871, 1
  %7874 = fsub fast float %7869, %7872
  %7875 = fsub fast float %7870, %7873
  %7876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7876, 2
  %7878 = extractvalue %dx.types.CBufRet.f32 %7876, 3
  %7879 = fmul fast float %7874, %7877
  %7880 = fmul fast float %7875, %7878
  %7881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.i32 %7881, 3
  %7883 = icmp eq i32 %7882, 0
  br i1 %7883, label %7889, label %7884

; <label>:7884                                    ; preds = %7844
  %7885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7879, float %7880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7886 = extractvalue %dx.types.ResRet.f32 %7885, 0
  %7887 = extractvalue %dx.types.ResRet.f32 %7885, 1
  %7888 = extractvalue %dx.types.ResRet.f32 %7885, 2
  br label %7894

; <label>:7889                                    ; preds = %7844
  %7890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7879, float %7880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7891 = extractvalue %dx.types.ResRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.ResRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.ResRet.f32 %7890, 2
  br label %7894

; <label>:7894                                    ; preds = %7889, %7884
  %7895 = phi float [ %7886, %7884 ], [ %7891, %7889 ]
  %7896 = phi float [ %7887, %7884 ], [ %7892, %7889 ]
  %7897 = phi float [ %7888, %7884 ], [ %7893, %7889 ]
  %7898 = extractvalue %dx.types.CBufRet.f32 %7853, 2
  %7899 = fmul fast float %7898, %7895
  %7900 = extractvalue %dx.types.CBufRet.f32 %7853, 0
  %7901 = fsub fast float %7866, %7900
  %7902 = fsub fast float %7901, %7899
  %7903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7902)  ; FMax(a,b)
  %7904 = fmul fast float %7903, %7896
  %7905 = call float @dx.op.binary.f32(i32 36, float %7897, float %7904)  ; FMin(a,b)
  %7906 = fmul fast float %7905, 0xBFF7154760000000
  %7907 = call float @dx.op.unary.f32(i32 21, float %7906)  ; Exp(value)
  %7908 = fmul fast float %7846, %7907
  br label %7909

; <label>:7909                                    ; preds = %7894, %7739
  %7910 = phi float [ %7908, %7894 ], [ %7740, %7739 ]
  %7911 = call float @dx.op.binary.f32(i32 36, float %7910, float %7910)  ; FMin(a,b)
  %7912 = call float @dx.op.binary.f32(i32 36, float %7910, float %7911)  ; FMin(a,b)
  %7913 = fcmp fast ogt float %7912, 0.000000e+00
  br i1 %7913, label %7914, label %8297, !dx.controlflow.hints !131

; <label>:7914                                    ; preds = %7909
  %7915 = fmul fast float %7910, %6632
  %7916 = fmul fast float %7910, %6633
  %7917 = fmul fast float %7910, %6634
  %7918 = fsub fast float %165, %5477
  %7919 = fcmp fast ogt float %7918, 0.000000e+00
  %7920 = fmul fast float %6621, 5.120000e+02
  %7921 = fmul fast float %6622, 5.120000e+02
  %7922 = fmul fast float %6623, 5.120000e+02
  %7923 = fadd fast float %7922, %165
  %7924 = fsub fast float %5477, %7923
  %7925 = fmul fast float %7924, 2.000000e+00
  %7926 = fadd fast float %7925, %7923
  %7927 = select i1 %7919, float %7926, float %7923
  %7928 = fsub fast float %7927, %165
  %7929 = call float @dx.op.dot3.f32(i32 55, float %7920, float %7921, float %7928, float %7920, float %7921, float %7928)  ; Dot3(ax,ay,az,bx,by,bz)
  %7930 = call float @dx.op.unary.f32(i32 25, float %7929)  ; Rsqrt(value)
  %7931 = fmul fast float %7930, %7920
  %7932 = fmul fast float %7930, %7921
  %7933 = fmul fast float %7930, %7928
  %7934 = fsub fast float %5477, %165
  %7935 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7934)  ; Dot3(ax,ay,az,bx,by,bz)
  %7936 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7931, float %7932, float %7933)  ; Dot3(ax,ay,az,bx,by,bz)
  %7937 = fdiv fast float 1.000000e+00, %7936
  %7938 = fmul fast float %7937, %7935
  %7939 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7918, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7940 = fcmp fast ogt float %7939, 0.000000e+00
  %7941 = fcmp fast olt float %7939, 0.000000e+00
  %7942 = zext i1 %7940 to i32
  %7943 = zext i1 %7941 to i32
  %7944 = sub nsw i32 %7942, %7943
  %7945 = sitofp i32 %7944 to float
  %7946 = fsub fast float %7927, %5477
  %7947 = call float @dx.op.dot3.f32(i32 55, float %7920, float %7921, float %7946, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7948 = fcmp fast ogt float %7947, 0.000000e+00
  %7949 = fcmp fast olt float %7947, 0.000000e+00
  %7950 = zext i1 %7948 to i32
  %7951 = zext i1 %7949 to i32
  %7952 = sub nsw i32 %7950, %7951
  %7953 = sitofp i32 %7952 to float
  %7954 = fcmp fast une float %7945, %7953
  br i1 %7954, label %7955, label %7965

; <label>:7955                                    ; preds = %7914
  %7956 = fmul fast float %7938, %7933
  %7957 = fmul fast float %7938, %7932
  %7958 = fmul fast float %7938, %7931
  %7959 = fmul fast float %7958, %7958
  %7960 = fmul fast float %7957, %7957
  %7961 = fadd fast float %7959, %7960
  %7962 = fmul fast float %7956, %7956
  %7963 = fadd fast float %7961, %7962
  %7964 = call float @dx.op.unary.f32(i32 24, float %7963)  ; Sqrt(value)
  br label %7975

; <label>:7965                                    ; preds = %7914
  %7966 = icmp slt i32 %7944, 0
  br i1 %7966, label %7967, label %7975

; <label>:7967                                    ; preds = %7965
  %7968 = fsub fast float %165, %7927
  %7969 = fmul fast float %7920, %7920
  %7970 = fmul fast float %7921, %7921
  %7971 = fadd fast float %7969, %7970
  %7972 = fmul fast float %7968, %7968
  %7973 = fadd fast float %7971, %7972
  %7974 = call float @dx.op.unary.f32(i32 24, float %7973)  ; Sqrt(value)
  br label %7975

; <label>:7975                                    ; preds = %7967, %7965, %7955
  %7976 = phi float [ %7964, %7955 ], [ %7974, %7967 ], [ 0.000000e+00, %7965 ]
  %7977 = fsub fast float -0.000000e+00, %7976
  %7978 = select i1 %7919, float -0.000000e+00, float %7977
  %7979 = fmul fast float %5474, 0x3FF7154760000000
  %7980 = fmul fast float %7979, %7978
  %7981 = fmul fast float %5475, 0x3FF7154760000000
  %7982 = fmul fast float %7981, %7978
  %7983 = fmul fast float %5476, 0x3FF7154760000000
  %7984 = fmul fast float %7983, %7978
  %7985 = call float @dx.op.unary.f32(i32 21, float %7980)  ; Exp(value)
  %7986 = call float @dx.op.unary.f32(i32 21, float %7982)  ; Exp(value)
  %7987 = call float @dx.op.unary.f32(i32 21, float %7984)  ; Exp(value)
  %7988 = call float @dx.op.unary.f32(i32 7, float %7985)  ; Saturate(value)
  %7989 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7990 = call float @dx.op.unary.f32(i32 7, float %7987)  ; Saturate(value)
  %7991 = fmul fast float %7915, %7988
  %7992 = fmul fast float %7916, %7989
  %7993 = fmul fast float %7917, %7990
  %7994 = fsub fast float %6621, %5674
  %7995 = fsub fast float %6622, %5673
  %7996 = fsub fast float %6623, %5672
  %7997 = call float @dx.op.dot3.f32(i32 55, float %7994, float %7995, float %7996, float %7994, float %7995, float %7996)  ; Dot3(ax,ay,az,bx,by,bz)
  %7998 = call float @dx.op.unary.f32(i32 25, float %7997)  ; Rsqrt(value)
  %7999 = fmul fast float %7998, %7994
  %8000 = fmul fast float %7998, %7995
  %8001 = fmul fast float %7998, %7996
  %8002 = call float @dx.op.dot3.f32(i32 55, float %6621, float %6622, float %6623, float %5681, float %5682, float %5683)  ; Dot3(ax,ay,az,bx,by,bz)
  %8003 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5670, float %5669, float %7999, float %8000, float %8001)  ; Dot3(ax,ay,az,bx,by,bz)
  %8004 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  %8005 = fmul fast float %8004, %8004
  %8006 = fmul fast float %8005, %5714
  %8007 = call float @dx.op.unary.f32(i32 7, float %8006)  ; Saturate(value)
  %8008 = fmul fast float %8007, %8004
  %8009 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %7999, float %8000, float %8001)  ; Dot3(ax,ay,az,bx,by,bz)
  %8010 = fmul fast float %8009, %8009
  %8011 = call float @dx.op.unary.f32(i32 6, float %8002)  ; FAbs(value)
  %8012 = fsub fast float 1.000000e+00, %5707
  %8013 = fmul fast float %5689, %5689
  %8014 = fmul fast float %8013, %8012
  %8015 = fadd fast float %8014, %5707
  %8016 = bitcast float %8015 to i32
  %8017 = ashr i32 %8016, 1
  %8018 = add nsw i32 %8017, 532487669
  %8019 = bitcast i32 %8018 to float
  %8020 = fadd fast float %8019, %5689
  %8021 = fmul fast float %5707, %8010
  %8022 = fsub fast float 1.000000e+00, %8010
  %8023 = fadd fast float %8022, %8021
  %8024 = fmul fast float %8011, %8011
  %8025 = fmul fast float %8024, %8012
  %8026 = fadd fast float %8025, %5707
  %8027 = bitcast float %8026 to i32
  %8028 = ashr i32 %8027, 1
  %8029 = add nsw i32 %8028, 532487669
  %8030 = bitcast i32 %8029 to float
  %8031 = fadd fast float %8030, %8011
  %8032 = fmul fast float %8023, %8023
  %8033 = fmul fast float %8032, %8020
  %8034 = fmul fast float %8033, %8031
  %8035 = fdiv fast float 0x3FF0A00000000000, %8034
  %8036 = fmul fast float %8035, %5707
  %8037 = fmul fast float %5960, 0x3FF9999980000000
  %8038 = fsub fast float 5.000000e+00, %8037
  %8039 = call float @dx.op.unary.f32(i32 6, float %8003)  ; FAbs(value)
  %8040 = fsub fast float 1.000000e+00, %8039
  %8041 = fmul fast float %5960, 0x41D9660740000000
  %8042 = fadd fast float %8041, 0xC1EFBF8940000000
  %8043 = bitcast float %8040 to i32
  %8044 = sitofp i32 %8043 to float
  %8045 = fmul fast float %8044, %8038
  %8046 = fadd fast float %8042, %8045
  %8047 = fptosi float %8046 to i32
  %8048 = bitcast i32 %8047 to float
  %8049 = fsub fast float 1.000000e+00, %5678
  %8050 = fsub fast float 1.000000e+00, %5679
  %8051 = fsub fast float 1.000000e+00, %5687
  %8052 = fmul fast float %8048, %8049
  %8053 = fmul fast float %8048, %8050
  %8054 = fmul fast float %8048, %8051
  %8055 = fadd fast float %8052, %5678
  %8056 = fadd fast float %8053, %5679
  %8057 = fadd fast float %8054, %5687
  br i1 %5983, label %8058, label %8081

; <label>:8058                                    ; preds = %7975
  %8059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5020, float %8039, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8060 = extractvalue %dx.types.ResRet.f32 %8059, 0
  %8061 = extractvalue %dx.types.ResRet.f32 %8059, 1
  %8062 = extractvalue %dx.types.ResRet.f32 %8059, 2
  %8063 = fadd fast float %8060, -5.000000e-01
  %8064 = fadd fast float %8061, -5.000000e-01
  %8065 = fadd fast float %8062, -5.000000e-01
  %8066 = fmul fast float %5678, 4.000000e+00
  %8067 = fmul fast float %8066, %8049
  %8068 = fmul fast float %8067, %8063
  %8069 = fmul fast float %5679, 4.000000e+00
  %8070 = fmul fast float %8069, %8050
  %8071 = fmul fast float %8070, %8064
  %8072 = fmul fast float %5687, 4.000000e+00
  %8073 = fmul fast float %8072, %8051
  %8074 = fmul fast float %8073, %8065
  %8075 = fadd fast float %8068, %8055
  %8076 = fadd fast float %8071, %8056
  %8077 = fadd fast float %8074, %8057
  %8078 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  %8079 = call float @dx.op.unary.f32(i32 7, float %8076)  ; Saturate(value)
  %8080 = call float @dx.op.unary.f32(i32 7, float %8077)  ; Saturate(value)
  br label %8081

; <label>:8081                                    ; preds = %8058, %7975
  %8082 = phi float [ %8078, %8058 ], [ %8055, %7975 ]
  %8083 = phi float [ %8079, %8058 ], [ %8056, %7975 ]
  %8084 = phi float [ %8080, %8058 ], [ %8057, %7975 ]
  %8085 = fmul fast float %8002, 9.843750e-01
  %8086 = fadd fast float %8085, 7.812500e-03
  %8087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8086, float %5964, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8088 = extractvalue %dx.types.ResRet.f32 %8087, 0
  %8089 = extractvalue %dx.types.ResRet.f32 %8087, 1
  %8090 = extractvalue %dx.types.ResRet.f32 %8087, 2
  %8091 = extractvalue %dx.types.ResRet.f32 %8087, 3
  %8092 = fsub fast float %8090, %8088
  %8093 = fsub fast float %8091, %8089
  %8094 = fmul fast float %8092, %5970
  %8095 = fmul fast float %8093, %5970
  %8096 = fadd fast float %8094, %8088
  %8097 = fadd fast float %8095, %8089
  %8098 = fmul fast float %8096, %5678
  %8099 = fmul fast float %8096, %5679
  %8100 = fmul fast float %8096, %5687
  %8101 = fadd fast float %8098, %8097
  %8102 = fadd fast float %8099, %8097
  %8103 = fadd fast float %8100, %8097
  br i1 %5983, label %8104, label %8127

; <label>:8104                                    ; preds = %8081
  %8105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5020, float %8002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8106 = extractvalue %dx.types.ResRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.ResRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.ResRet.f32 %8105, 2
  %8109 = fadd fast float %8106, -5.000000e-01
  %8110 = fadd fast float %8107, -5.000000e-01
  %8111 = fadd fast float %8108, -5.000000e-01
  %8112 = fmul fast float %5678, 4.000000e+00
  %8113 = fmul fast float %8112, %8049
  %8114 = fmul fast float %8113, %8109
  %8115 = fmul fast float %5679, 4.000000e+00
  %8116 = fmul fast float %8115, %8050
  %8117 = fmul fast float %8116, %8110
  %8118 = fmul fast float %5687, 4.000000e+00
  %8119 = fmul fast float %8118, %8051
  %8120 = fmul fast float %8119, %8111
  %8121 = fadd fast float %8114, %8101
  %8122 = fadd fast float %8117, %8102
  %8123 = fadd fast float %8120, %8103
  %8124 = call float @dx.op.unary.f32(i32 7, float %8121)  ; Saturate(value)
  %8125 = call float @dx.op.unary.f32(i32 7, float %8122)  ; Saturate(value)
  %8126 = call float @dx.op.unary.f32(i32 7, float %8123)  ; Saturate(value)
  br label %8127

; <label>:8127                                    ; preds = %8104, %8081
  %8128 = phi float [ %8124, %8104 ], [ %8101, %8081 ]
  %8129 = phi float [ %8125, %8104 ], [ %8102, %8081 ]
  %8130 = phi float [ %8126, %8104 ], [ %8103, %8081 ]
  %8131 = call float @dx.op.binary.f32(i32 35, float %8129, float %8130)  ; FMax(a,b)
  %8132 = call float @dx.op.binary.f32(i32 35, float %8128, float %8131)  ; FMax(a,b)
  %8133 = fsub fast float 1.000000e+00, %8132
  %8134 = call float @dx.op.binary.f32(i32 35, float %8011, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8135 = fdiv fast float %4426, %8134
  %8136 = fmul fast float %6530, %8135
  %8137 = fmul fast float %6532, %8135
  %8138 = fmul fast float %6534, %8135
  %8139 = call float @dx.op.unary.f32(i32 21, float %8136)  ; Exp(value)
  %8140 = call float @dx.op.unary.f32(i32 21, float %8137)  ; Exp(value)
  %8141 = call float @dx.op.unary.f32(i32 21, float %8138)  ; Exp(value)
  %8142 = call float @dx.op.unary.f32(i32 7, float %8139)  ; Saturate(value)
  %8143 = call float @dx.op.unary.f32(i32 7, float %8140)  ; Saturate(value)
  %8144 = call float @dx.op.unary.f32(i32 7, float %8141)  ; Saturate(value)
  %8145 = select i1 %6527, float %8142, float 0.000000e+00
  %8146 = select i1 %6528, float %8143, float 0.000000e+00
  %8147 = select i1 %6529, float %8144, float 0.000000e+00
  %8148 = fsub fast float -0.000000e+00, %5681
  %8149 = fsub fast float -0.000000e+00, %5682
  %8150 = fsub fast float -0.000000e+00, %5683
  %8151 = call float @dx.op.dot3.f32(i32 55, float %6621, float %6622, float %6623, float %8148, float %8149, float %8150)  ; Dot3(ax,ay,az,bx,by,bz)
  %8152 = call float @dx.op.unary.f32(i32 7, float %8151)  ; Saturate(value)
  %8153 = fmul fast float %8152, 9.843750e-01
  %8154 = fadd fast float %8153, 7.812500e-03
  %8155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8154, float %5964, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8156 = extractvalue %dx.types.ResRet.f32 %8155, 0
  %8157 = extractvalue %dx.types.ResRet.f32 %8155, 1
  %8158 = extractvalue %dx.types.ResRet.f32 %8155, 2
  %8159 = extractvalue %dx.types.ResRet.f32 %8155, 3
  %8160 = fsub fast float %8158, %8156
  %8161 = fsub fast float %8159, %8157
  %8162 = fmul fast float %8160, %5970
  %8163 = fmul fast float %8161, %5970
  %8164 = fadd fast float %8162, %8156
  %8165 = fadd fast float %8163, %8157
  %8166 = fmul fast float %8164, %5678
  %8167 = fmul fast float %8164, %5679
  %8168 = fmul fast float %8164, %5687
  %8169 = fadd fast float %8166, %8165
  %8170 = fadd fast float %8167, %8165
  %8171 = fadd fast float %8168, %8165
  br i1 %5983, label %8172, label %8195

; <label>:8172                                    ; preds = %8127
  %8173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5020, float %8152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8174 = extractvalue %dx.types.ResRet.f32 %8173, 0
  %8175 = extractvalue %dx.types.ResRet.f32 %8173, 1
  %8176 = extractvalue %dx.types.ResRet.f32 %8173, 2
  %8177 = fadd fast float %8174, -5.000000e-01
  %8178 = fadd fast float %8175, -5.000000e-01
  %8179 = fadd fast float %8176, -5.000000e-01
  %8180 = fmul fast float %5678, 4.000000e+00
  %8181 = fmul fast float %8180, %8049
  %8182 = fmul fast float %8181, %8177
  %8183 = fmul fast float %5679, 4.000000e+00
  %8184 = fmul fast float %8183, %8050
  %8185 = fmul fast float %8184, %8178
  %8186 = fmul fast float %5687, 4.000000e+00
  %8187 = fmul fast float %8186, %8051
  %8188 = fmul fast float %8187, %8179
  %8189 = fadd fast float %8182, %8169
  %8190 = fadd fast float %8185, %8170
  %8191 = fadd fast float %8188, %8171
  %8192 = call float @dx.op.unary.f32(i32 7, float %8189)  ; Saturate(value)
  %8193 = call float @dx.op.unary.f32(i32 7, float %8190)  ; Saturate(value)
  %8194 = call float @dx.op.unary.f32(i32 7, float %8191)  ; Saturate(value)
  br label %8195

; <label>:8195                                    ; preds = %8172, %8127
  %8196 = phi float [ %8192, %8172 ], [ %8169, %8127 ]
  %8197 = phi float [ %8193, %8172 ], [ %8170, %8127 ]
  %8198 = phi float [ %8194, %8172 ], [ %8171, %8127 ]
  %8199 = call float @dx.op.binary.f32(i32 35, float %8197, float %8198)  ; FMax(a,b)
  %8200 = call float @dx.op.binary.f32(i32 35, float %8196, float %8199)  ; FMax(a,b)
  %8201 = fsub fast float 1.000000e+00, %8200
  %8202 = fmul fast float %5704, %6594
  %8203 = fadd fast float %6596, %8202
  %8204 = call float @dx.op.unary.f32(i32 7, float %8203)  ; Saturate(value)
  %8205 = fsub fast float %6621, %5695
  %8206 = fsub fast float %6622, %5696
  %8207 = fsub fast float %6623, %5697
  %8208 = call float @dx.op.dot3.f32(i32 55, float %8205, float %8206, float %8207, float %8205, float %8206, float %8207)  ; Dot3(ax,ay,az,bx,by,bz)
  %8209 = call float @dx.op.unary.f32(i32 25, float %8208)  ; Rsqrt(value)
  %8210 = fmul fast float %8209, %8205
  %8211 = fmul fast float %8209, %8206
  %8212 = fmul fast float %8209, %8207
  %8213 = call float @dx.op.dot3.f32(i32 55, float %8148, float %8149, float %8150, float %8210, float %8211, float %8212)  ; Dot3(ax,ay,az,bx,by,bz)
  %8214 = fmul fast float %8213, %8213
  %8215 = call float @dx.op.unary.f32(i32 6, float %8152)  ; FAbs(value)
  %8216 = call float @dx.op.binary.f32(i32 35, float %8204, float 0x3F847AE140000000)  ; FMax(a,b)
  %8217 = fmul fast float %8216, %8216
  %8218 = fmul fast float %8217, %8217
  %8219 = fsub fast float 1.000000e+00, %8218
  %8220 = fmul fast float %8013, %8219
  %8221 = fadd fast float %8220, %8218
  %8222 = bitcast float %8221 to i32
  %8223 = ashr i32 %8222, 1
  %8224 = add nsw i32 %8223, 532487669
  %8225 = bitcast i32 %8224 to float
  %8226 = fadd fast float %8225, %5689
  %8227 = fmul fast float %8218, %8214
  %8228 = fsub fast float 1.000000e+00, %8214
  %8229 = fadd fast float %8228, %8227
  %8230 = fmul fast float %8215, %8215
  %8231 = fmul fast float %8230, %8219
  %8232 = fadd fast float %8231, %8218
  %8233 = bitcast float %8232 to i32
  %8234 = ashr i32 %8233, 1
  %8235 = add nsw i32 %8234, 532487669
  %8236 = bitcast i32 %8235 to float
  %8237 = fadd fast float %8236, %8215
  %8238 = fmul fast float %8229, %8229
  %8239 = fmul fast float %8238, %8226
  %8240 = fmul fast float %8239, %8237
  %8241 = fdiv fast float 0x3FF0A00000000000, %8240
  %8242 = fmul fast float %8241, %8218
  %8243 = fmul fast float %8152, %8145
  %8244 = fmul fast float %8152, %8146
  %8245 = fmul fast float %8152, %8147
  %8246 = fmul fast float %8243, %8201
  %8247 = fmul fast float %8246, %8242
  %8248 = fmul fast float %8244, %8201
  %8249 = fmul fast float %8248, %8242
  %8250 = fmul fast float %8245, %8201
  %8251 = fmul fast float %8250, %8242
  %8252 = fmul fast float %8082, %8036
  %8253 = fmul fast float %8083, %8036
  %8254 = fmul fast float %8084, %8036
  %8255 = fsub fast float 1.000000e+00, %8003
  %8256 = bitcast float %8255 to i32
  %8257 = sitofp i32 %8256 to float
  %8258 = fmul fast float %8257, 5.000000e+00
  %8259 = fadd fast float %8258, 0xC1EFBF8940000000
  %8260 = fptosi float %8259 to i32
  %8261 = bitcast i32 %8260 to float
  %8262 = fmul fast float %8261, %5019
  %8263 = fmul fast float %8133, %8262
  %8264 = fmul fast float %8263, %6522
  %8265 = fmul fast float %8263, %6523
  %8266 = fmul fast float %8263, %6524
  %8267 = fadd fast float %8264, %8252
  %8268 = fadd fast float %8265, %8253
  %8269 = fadd fast float %8266, %8254
  %8270 = fmul fast float %8267, %8008
  %8271 = fmul fast float %8268, %8008
  %8272 = fmul fast float %8269, %8008
  %8273 = fmul fast float %8008, %7991
  %8274 = fmul fast float %8273, %8133
  %8275 = fmul fast float %8008, %7992
  %8276 = fmul fast float %8275, %8133
  %8277 = fmul fast float %8008, %7993
  %8278 = fmul fast float %8277, %8133
  %8279 = fadd fast float %8270, %8247
  %8280 = fadd fast float %8271, %8249
  %8281 = fadd fast float %8272, %8251
  %8282 = fmul fast float %8279, %7991
  %8283 = fmul fast float %8280, %7992
  %8284 = fmul fast float %8281, %7993
  %8285 = fadd fast float %8274, %6611
  %8286 = fmul fast float %8285, %5043
  %8287 = fadd fast float %8276, %6613
  %8288 = fmul fast float %8287, %5043
  %8289 = fadd fast float %8278, %6615
  %8290 = fmul fast float %8289, %5043
  %8291 = fadd fast float %8282, %6575
  %8292 = fmul fast float %8291, %5043
  %8293 = fadd fast float %8283, %6578
  %8294 = fmul fast float %8293, %5043
  %8295 = fadd fast float %8284, %6581
  %8296 = fmul fast float %8295, %5043
  br label %8297

; <label>:8297                                    ; preds = %8195, %7909, %6505
  %8298 = phi float [ %6576, %6505 ], [ %6576, %7909 ], [ %8292, %8195 ]
  %8299 = phi float [ %6579, %6505 ], [ %6579, %7909 ], [ %8294, %8195 ]
  %8300 = phi float [ %6582, %6505 ], [ %6582, %7909 ], [ %8296, %8195 ]
  %8301 = phi float [ %6612, %6505 ], [ %6612, %7909 ], [ %8286, %8195 ]
  %8302 = phi float [ %6614, %6505 ], [ %6614, %7909 ], [ %8288, %8195 ]
  %8303 = phi float [ %6616, %6505 ], [ %6616, %7909 ], [ %8290, %8195 ]
  %8304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8305 = extractvalue %dx.types.CBufRet.i32 %8304, 0
  %8306 = icmp eq i32 %8305, 0
  br i1 %8306, label %9124, label %8307

; <label>:8307                                    ; preds = %8297
  %8308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8309 = extractvalue %dx.types.CBufRet.f32 %8308, 2
  %8310 = extractvalue %dx.types.CBufRet.f32 %8308, 3
  %8311 = fmul fast float %8309, %108
  %8312 = fmul fast float %8310, %109
  %8313 = fptoui float %8311 to i32
  %8314 = fptoui float %8312 to i32
  %8315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8316 = extractvalue %dx.types.CBufRet.f32 %8315, 0
  %8317 = extractvalue %dx.types.CBufRet.f32 %8315, 2
  %8318 = extractvalue %dx.types.CBufRet.f32 %8315, 3
  %8319 = fadd fast float %96, -4.000000e+00
  %8320 = call float @dx.op.binary.f32(i32 35, float %8319, float 0.000000e+00)  ; FMax(a,b)
  %8321 = fadd fast float %8320, %8316
  %8322 = fmul fast float %8321, %8317
  %8323 = call float @dx.op.unary.f32(i32 23, float %8322)  ; Log(value)
  %8324 = fmul fast float %8323, %8318
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8327 = fmul fast float %8324, %8326
  %8328 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8330 = extractvalue %dx.types.CBufRet.i32 %8329, 1
  %8331 = add i32 %8330, -1
  %8332 = uitofp i32 %8330 to float
  %8333 = fmul fast float %8332, %8328
  %8334 = fptoui float %8333 to i32
  %8335 = call i32 @dx.op.binary.i32(i32 40, i32 %8334, i32 %8331)  ; UMin(a,b)
  %8336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.i32 %8336, 2
  %8338 = extractvalue %dx.types.CBufRet.i32 %8336, 3
  %8339 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8314, i32 %8337, i32 %8313)  ; UMad(a,b,c)
  %8340 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8335, i32 %8338, i32 %8339)  ; UMad(a,b,c)
  %8341 = add nsw i32 %8305, -1
  %8342 = call i32 @dx.op.binary.i32(i32 37, i32 %8341, i32 0)  ; IMax(a,b)
  %8343 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %8344 = fptoui float %8343 to i32
  %8345 = lshr i32 %8344, 5
  %8346 = call i32 @dx.op.binary.i32(i32 40, i32 %8345, i32 8191)  ; UMin(a,b)
  %8347 = shl i32 %8346, 2
  %8348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8347, i32 undef)  ; BufferLoad(srv,index,wot)
  %8349 = extractvalue %dx.types.ResRet.i32 %8348, 0
  %8350 = lshr i32 %8349, 16
  %8351 = and i32 %8349, 65535
  %8352 = lshr i32 %8349, 21
  %8353 = lshr i32 %8351, 5
  %8354 = call i32 @dx.op.binary.i32(i32 40, i32 %8353, i32 %8342)  ; UMin(a,b)
  %8355 = icmp ugt i32 %8352, %8354
  br i1 %8355, label %9124, label %8356

; <label>:8356                                    ; preds = %8307
  br label %8357

; <label>:8357                                    ; preds = %9114, %8356
  %8358 = phi i32 [ %9121, %9114 ], [ %8352, %8356 ]
  %8359 = phi float [ %9115, %9114 ], [ %8298, %8356 ]
  %8360 = phi float [ %9116, %9114 ], [ %8299, %8356 ]
  %8361 = phi float [ %9117, %9114 ], [ %8300, %8356 ]
  %8362 = phi float [ %9118, %9114 ], [ %8301, %8356 ]
  %8363 = phi float [ %9119, %9114 ], [ %8302, %8356 ]
  %8364 = phi float [ %9120, %9114 ], [ %8303, %8356 ]
  %8365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.i32 %8365, 0
  %8367 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8340, i32 %8366, i32 %8358)  ; UMad(a,b,c)
  %8368 = shl i32 %8367, 2
  %8369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8368, i32 undef)  ; BufferLoad(srv,index,wot)
  %8370 = extractvalue %dx.types.ResRet.i32 %8369, 0
  %8371 = shl i32 %8358, 5
  %8372 = sub nsw i32 %8350, %8371
  %8373 = call i32 @dx.op.binary.i32(i32 37, i32 %8372, i32 0)  ; IMax(a,b)
  %8374 = call i32 @dx.op.binary.i32(i32 38, i32 %8373, i32 31)  ; IMin(a,b)
  %8375 = sub nsw i32 1, %8350
  %8376 = add nsw i32 %8375, %8351
  %8377 = call i32 @dx.op.binary.i32(i32 37, i32 %8376, i32 0)  ; IMax(a,b)
  %8378 = call i32 @dx.op.binary.i32(i32 38, i32 %8377, i32 32)  ; IMin(a,b)
  %8379 = and i32 %8378, 31
  %8380 = shl i32 -1, %8379
  %8381 = xor i32 %8380, -1
  %8382 = and i32 %8374, 31
  %8383 = shl i32 %8381, %8382
  %8384 = icmp eq i32 %8378, 32
  %8385 = select i1 %8384, i32 -1, i32 %8383
  %8386 = and i32 %8385, %8370
  %8387 = icmp eq i32 %8386, 0
  br i1 %8387, label %9114, label %8388

; <label>:8388                                    ; preds = %8357
  br label %8389

; <label>:8389                                    ; preds = %8524, %8388
  %8390 = phi i32 [ %8401, %8524 ], [ %8386, %8388 ]
  %8391 = phi float [ %8525, %8524 ], [ %8359, %8388 ]
  %8392 = phi float [ %8526, %8524 ], [ %8360, %8388 ]
  %8393 = phi float [ %8527, %8524 ], [ %8361, %8388 ]
  %8394 = phi float [ %8528, %8524 ], [ %8362, %8388 ]
  %8395 = phi float [ %8529, %8524 ], [ %8363, %8388 ]
  %8396 = phi float [ %8530, %8524 ], [ %8364, %8388 ]
  %8397 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8390)  ; FirstbitLo(value)
  %8398 = add i32 %8397, %8371
  %8399 = and i32 %8397, 31
  %8400 = shl i32 1, %8399
  %8401 = xor i32 %8400, %8390
  %8402 = mul i32 %8398, 112
  %8403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8402, i32 undef)  ; BufferLoad(srv,index,wot)
  %8404 = extractvalue %dx.types.ResRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.ResRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.ResRet.f32 %8403, 2
  %8407 = or i32 %8402, 12
  %8408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8407, i32 undef)  ; BufferLoad(srv,index,wot)
  %8409 = extractvalue %dx.types.ResRet.f32 %8408, 0
  %8410 = add i32 %8402, 16
  %8411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8410, i32 undef)  ; BufferLoad(srv,index,wot)
  %8412 = extractvalue %dx.types.ResRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.ResRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.ResRet.f32 %8411, 2
  %8415 = add i32 %8402, 28
  %8416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8415, i32 undef)  ; BufferLoad(srv,index,wot)
  %8417 = extractvalue %dx.types.ResRet.i32 %8416, 0
  %8418 = add i32 %8402, 44
  %8419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8418, i32 undef)  ; BufferLoad(srv,index,wot)
  %8420 = extractvalue %dx.types.ResRet.f32 %8419, 0
  %8421 = add i32 %8402, 48
  %8422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8421, i32 undef)  ; BufferLoad(srv,index,wot)
  %8423 = extractvalue %dx.types.ResRet.f32 %8422, 0
  %8424 = extractvalue %dx.types.ResRet.f32 %8422, 1
  %8425 = extractvalue %dx.types.ResRet.f32 %8422, 2
  %8426 = extractvalue %dx.types.ResRet.f32 %8422, 3
  %8427 = add i32 %8402, 64
  %8428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8427, i32 undef)  ; BufferLoad(srv,index,wot)
  %8429 = extractvalue %dx.types.ResRet.f32 %8428, 0
  %8430 = extractvalue %dx.types.ResRet.f32 %8428, 1
  %8431 = extractvalue %dx.types.ResRet.f32 %8428, 2
  %8432 = extractvalue %dx.types.ResRet.f32 %8428, 3
  %8433 = add i32 %8402, 80
  %8434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8433, i32 undef)  ; BufferLoad(srv,index,wot)
  %8435 = extractvalue %dx.types.ResRet.f32 %8434, 1
  %8436 = extractvalue %dx.types.ResRet.f32 %8434, 2
  %8437 = add i32 %8402, 92
  %8438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8437, i32 undef)  ; BufferLoad(srv,index,wot)
  %8439 = extractvalue %dx.types.ResRet.i32 %8438, 0
  %8440 = call float @dx.op.dot3.f32(i32 55, float %8404, float %8405, float %8406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8441 = select i1 %225, float %8435, float %8404
  %8442 = select i1 %225, float %8440, float %8405
  %8443 = select i1 %225, float %8436, float %8406
  %8444 = and i32 %8439, 65535
  %8445 = uitofp i32 %8444 to float
  %8446 = lshr i32 %8439, 16
  %8447 = uitofp i32 %8446 to float
  %8448 = and i32 %8417, 65535
  %8449 = and i32 %8417, 50331648
  %8450 = icmp slt i32 %8417, 0
  %8451 = icmp eq i32 %8449, 33554432
  %8452 = fsub fast float %8423, %163
  %8453 = fsub fast float %8424, %164
  %8454 = fsub fast float %8425, %165
  %8455 = call float @dx.op.dot3.f32(i32 55, float %8452, float %8453, float %8454, float %8452, float %8453, float %8454)  ; Dot3(ax,ay,az,bx,by,bz)
  %8456 = call float @dx.op.unary.f32(i32 24, float %8455)  ; Sqrt(value)
  %8457 = fdiv fast float 1.000000e+00, %8456
  %8458 = fmul fast float %8457, %8452
  %8459 = fmul fast float %8457, %8453
  %8460 = fmul fast float %8457, %8454
  %8461 = fadd fast float %8456, %8409
  %8462 = fdiv fast float 1.000000e+00, %8461
  %8463 = fmul float %8420, %8462
  %8464 = fmul float %8463, %8463
  %8465 = call float @dx.op.unary.f32(i32 7, float %8464)  ; Saturate(value)
  br i1 %8451, label %8466, label %8487

; <label>:8466                                    ; preds = %8389
  %8467 = fmul fast float %8431, %8412
  %8468 = fmul fast float %8431, %8413
  %8469 = fmul fast float %8431, %8414
  %8470 = fadd fast float %8452, %8467
  %8471 = fadd fast float %8453, %8468
  %8472 = fadd fast float %8454, %8469
  %8473 = call float @dx.op.dot3.f32(i32 55, float %8470, float %8471, float %8472, float %8470, float %8471, float %8472)  ; Dot3(ax,ay,az,bx,by,bz)
  %8474 = call float @dx.op.unary.f32(i32 25, float %8473)  ; Rsqrt(value)
  %8475 = fmul fast float %8474, %8470
  %8476 = fmul fast float %8474, %8471
  %8477 = fmul fast float %8474, %8472
  %8478 = fsub fast float %163, %8423
  %8479 = fsub fast float %164, %8424
  %8480 = fsub fast float %165, %8425
  %8481 = fsub fast float -0.000000e+00, %8478
  %8482 = fsub fast float -0.000000e+00, %8479
  %8483 = fsub fast float -0.000000e+00, %8480
  %8484 = call float @dx.op.dot3.f32(i32 55, float %8481, float %8482, float %8483, float %8412, float %8413, float %8414)  ; Dot3(ax,ay,az,bx,by,bz)
  %8485 = fcmp fast ogt float %8484, 0.000000e+00
  %8486 = uitofp i1 %8485 to float
  br label %8487

; <label>:8487                                    ; preds = %8466, %8389
  %8488 = phi float [ %8486, %8466 ], [ 1.000000e+00, %8389 ]
  %8489 = phi float [ %8475, %8466 ], [ %8458, %8389 ]
  %8490 = phi float [ %8476, %8466 ], [ %8459, %8389 ]
  %8491 = phi float [ %8477, %8466 ], [ %8460, %8389 ]
  %8492 = call float @dx.op.dot3.f32(i32 55, float %8412, float %8413, float %8414, float %8489, float %8490, float %8491)  ; Dot3(ax,ay,az,bx,by,bz)
  %8493 = fmul fast float %8492, %8492
  %8494 = call float @dx.op.unary.f32(i32 7, float %8493)  ; Saturate(value)
  %8495 = fsub fast float 1.000000e+00, %8494
  %8496 = fmul fast float %8495, 5.000000e-01
  %8497 = fcmp fast ogt float %8492, 0.000000e+00
  %8498 = fsub fast float 1.000000e+00, %8496
  %8499 = select i1 %8497, float %8496, float %8498
  %8500 = fmul fast float %8499, %8447
  %8501 = fadd fast float %8500, %8445
  %8502 = fmul fast float %8501, 0x3EF0001000000000
  %8503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8502, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8504 = extractvalue %dx.types.ResRet.f32 %8503, 0
  %8505 = fmul fast float %8492, %8429
  %8506 = fadd fast float %8505, %8430
  %8507 = call float @dx.op.unary.f32(i32 7, float %8506)  ; Saturate(value)
  %8508 = select i1 %8451, float 1.000000e+00, float %8507
  %8509 = select i1 %8451, float %8507, float 1.000000e+00
  %8510 = fmul fast float %8456, %8426
  %8511 = fsub fast float 1.000000e+00, %8510
  %8512 = fmul fast float %8511, %8432
  %8513 = call float @dx.op.unary.f32(i32 7, float %8512)  ; Saturate(value)
  %8514 = fmul fast float %8513, %8509
  %8515 = fmul fast float %8514, 2.000000e+00
  %8516 = fsub fast float 3.000000e+00, %8515
  %8517 = fmul fast float %8504, %8488
  %8518 = fmul fast float %8514, %8514
  %8519 = fmul fast float %8518, %8517
  %8520 = fmul fast float %8519, %8516
  %8521 = call float @dx.op.binary.f32(i32 36, float %8520, float %8520)  ; FMin(a,b)
  %8522 = call float @dx.op.binary.f32(i32 36, float %8520, float %8521)  ; FMin(a,b)
  %8523 = fcmp fast ogt float %8522, 0.000000e+00
  br i1 %8523, label %8532, label %8524, !dx.controlflow.hints !132

; <label>:8524                                    ; preds = %9067, %8678, %8487
  %8525 = phi float [ %8391, %8678 ], [ %8391, %8487 ], [ %9110, %9067 ]
  %8526 = phi float [ %8392, %8678 ], [ %8392, %8487 ], [ %9111, %9067 ]
  %8527 = phi float [ %8393, %8678 ], [ %8393, %8487 ], [ %9112, %9067 ]
  %8528 = phi float [ %8394, %8678 ], [ %8394, %8487 ], [ %9104, %9067 ]
  %8529 = phi float [ %8395, %8678 ], [ %8395, %8487 ], [ %9105, %9067 ]
  %8530 = phi float [ %8396, %8678 ], [ %8396, %8487 ], [ %9106, %9067 ]
  %8531 = icmp eq i32 %8390, %8400
  br i1 %8531, label %9113, label %8389

; <label>:8532                                    ; preds = %8487
  %8533 = icmp eq i32 %8448, 255
  br i1 %8533, label %8678, label %8534, !dx.controlflow.hints !133

; <label>:8534                                    ; preds = %8532
  %8535 = mul nuw nsw i32 %8448, 176
  %8536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8535, i32 undef)  ; BufferLoad(srv,index,wot)
  %8537 = extractvalue %dx.types.ResRet.f32 %8536, 0
  %8538 = extractvalue %dx.types.ResRet.f32 %8536, 1
  %8539 = extractvalue %dx.types.ResRet.f32 %8536, 2
  %8540 = extractvalue %dx.types.ResRet.f32 %8536, 3
  %8541 = add nuw nsw i32 %8535, 16
  %8542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8541, i32 undef)  ; BufferLoad(srv,index,wot)
  %8543 = extractvalue %dx.types.ResRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.ResRet.f32 %8542, 1
  %8545 = add nuw nsw i32 %8535, 32
  %8546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8545, i32 undef)  ; BufferLoad(srv,index,wot)
  %8547 = extractvalue %dx.types.ResRet.f32 %8546, 0
  %8548 = extractvalue %dx.types.ResRet.f32 %8546, 1
  %8549 = extractvalue %dx.types.ResRet.f32 %8546, 2
  %8550 = add nuw nsw i32 %8535, 48
  %8551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8550, i32 undef)  ; BufferLoad(srv,index,wot)
  %8552 = extractvalue %dx.types.ResRet.f32 %8551, 0
  %8553 = extractvalue %dx.types.ResRet.f32 %8551, 1
  %8554 = extractvalue %dx.types.ResRet.f32 %8551, 2
  %8555 = extractvalue %dx.types.ResRet.f32 %8551, 3
  %8556 = add nuw nsw i32 %8535, 64
  %8557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8556, i32 undef)  ; BufferLoad(srv,index,wot)
  %8558 = extractvalue %dx.types.ResRet.f32 %8557, 0
  %8559 = extractvalue %dx.types.ResRet.f32 %8557, 1
  %8560 = extractvalue %dx.types.ResRet.f32 %8557, 2
  %8561 = extractvalue %dx.types.ResRet.f32 %8557, 3
  %8562 = add nuw nsw i32 %8535, 80
  %8563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8562, i32 undef)  ; BufferLoad(srv,index,wot)
  %8564 = extractvalue %dx.types.ResRet.f32 %8563, 0
  %8565 = extractvalue %dx.types.ResRet.f32 %8563, 1
  %8566 = extractvalue %dx.types.ResRet.f32 %8563, 2
  %8567 = extractvalue %dx.types.ResRet.f32 %8563, 3
  %8568 = add nuw nsw i32 %8535, 96
  %8569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8568, i32 undef)  ; BufferLoad(srv,index,wot)
  %8570 = extractvalue %dx.types.ResRet.f32 %8569, 0
  %8571 = extractvalue %dx.types.ResRet.f32 %8569, 1
  %8572 = extractvalue %dx.types.ResRet.f32 %8569, 2
  %8573 = extractvalue %dx.types.ResRet.f32 %8569, 3
  %8574 = bitcast float %8544 to i32
  %8575 = fmul fast float %8549, %115
  %8576 = fmul fast float %8549, %116
  %8577 = fmul fast float %8549, %117
  %8578 = fadd fast float %8575, %163
  %8579 = fadd fast float %8576, %164
  %8580 = fadd fast float %8577, %165
  %8581 = fmul fast float %8578, %8552
  %8582 = call float @dx.op.tertiary.f32(i32 46, float %8579, float %8558, float %8581)  ; FMad(a,b,c)
  %8583 = call float @dx.op.tertiary.f32(i32 46, float %8580, float %8564, float %8582)  ; FMad(a,b,c)
  %8584 = fadd fast float %8583, %8570
  %8585 = fmul fast float %8578, %8553
  %8586 = call float @dx.op.tertiary.f32(i32 46, float %8579, float %8559, float %8585)  ; FMad(a,b,c)
  %8587 = call float @dx.op.tertiary.f32(i32 46, float %8580, float %8565, float %8586)  ; FMad(a,b,c)
  %8588 = fadd fast float %8587, %8571
  %8589 = fmul fast float %8578, %8554
  %8590 = call float @dx.op.tertiary.f32(i32 46, float %8579, float %8560, float %8589)  ; FMad(a,b,c)
  %8591 = call float @dx.op.tertiary.f32(i32 46, float %8580, float %8566, float %8590)  ; FMad(a,b,c)
  %8592 = fadd fast float %8591, %8572
  %8593 = fmul fast float %8578, %8555
  %8594 = call float @dx.op.tertiary.f32(i32 46, float %8579, float %8561, float %8593)  ; FMad(a,b,c)
  %8595 = call float @dx.op.tertiary.f32(i32 46, float %8580, float %8567, float %8594)  ; FMad(a,b,c)
  %8596 = fadd fast float %8595, %8573
  %8597 = fdiv fast float %8584, %8596
  %8598 = fdiv fast float %8588, %8596
  %8599 = fdiv fast float %8592, %8596
  %8600 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8599)  ; FMax(a,b)
  %8601 = fmul fast float %236, 0x401921FB60000000
  %8602 = call float @dx.op.unary.f32(i32 13, float %8601)  ; Sin(value)
  %8603 = call float @dx.op.unary.f32(i32 12, float %8601)  ; Cos(value)
  %8604 = fmul fast float %8603, %8548
  %8605 = call float @dx.op.tertiary.f32(i32 46, float %8602, float %8548, float 0.000000e+00)  ; FMad(a,b,c)
  %8606 = fmul fast float %8548, %8602
  %8607 = fsub fast float -0.000000e+00, %8606
  %8608 = call float @dx.op.tertiary.f32(i32 46, float %8603, float %8548, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8609

; <label>:8609                                    ; preds = %8609, %8534
  %8610 = phi float [ 0.000000e+00, %8534 ], [ %8642, %8609 ]
  %8611 = phi float [ 0.000000e+00, %8534 ], [ %8644, %8609 ]
  %8612 = phi i32 [ 0, %8534 ], [ %8645, %8609 ]
  %8613 = mul i32 %8612, 2
  %8614 = add i32 0, %8613
  %8615 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8614
  %8616 = load float, float* %8615, align 4
  %8617 = mul i32 %8612, 2
  %8618 = add i32 1, %8617
  %8619 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8618
  %8620 = load float, float* %8619, align 4
  %8621 = fmul fast float %8604, %8616
  %8622 = call float @dx.op.tertiary.f32(i32 46, float %8620, float %8607, float %8621)  ; FMad(a,b,c)
  %8623 = fmul fast float %8616, %8605
  %8624 = call float @dx.op.tertiary.f32(i32 46, float %8620, float %8608, float %8623)  ; FMad(a,b,c)
  %8625 = fadd fast float %8622, %8597
  %8626 = fadd fast float %8624, %8598
  %8627 = fmul fast float %8625, %8543
  %8628 = fmul fast float %8626, %8543
  %8629 = call float @dx.op.binary.f32(i32 35, float %8627, float %8539)  ; FMax(a,b)
  %8630 = call float @dx.op.binary.f32(i32 35, float %8628, float %8539)  ; FMax(a,b)
  %8631 = call float @dx.op.binary.f32(i32 36, float %8629, float %8540)  ; FMin(a,b)
  %8632 = call float @dx.op.binary.f32(i32 36, float %8630, float %8540)  ; FMin(a,b)
  %8633 = fadd fast float %8631, %8537
  %8634 = fadd fast float %8632, %8538
  %8635 = uitofp i32 %8574 to float
  %8636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8633, float %8634, float %8635, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8637 = extractvalue %dx.types.ResRet.f32 %8636, 0
  %8638 = fsub fast float %8637, %8600
  %8639 = fsub fast float %8638, %8547
  %8640 = fcmp fast ogt float %8639, 0.000000e+00
  %8641 = select i1 %8640, float 1.000000e+00, float 0.000000e+00
  %8642 = fadd fast float %8641, %8610
  %8643 = select i1 %8640, float %8639, float 0.000000e+00
  %8644 = fadd fast float %8643, %8611
  %8645 = add nuw nsw i32 %8612, 1
  %8646 = icmp eq i32 %8645, 8
  br i1 %8646, label %8647, label %8609

; <label>:8647                                    ; preds = %8609
  %8648 = fdiv fast float 1.000000e+00, %8642
  %8649 = fmul fast float %8648, %8644
  %8650 = fdiv fast float 1.000000e+00, %8600
  %8651 = fmul fast float %8649, %8650
  %8652 = call float @dx.op.unary.f32(i32 7, float %8651)  ; Saturate(value)
  %8653 = call float @dx.op.binary.f32(i32 35, float %8652, float 0.000000e+00)  ; FMax(a,b)
  %8654 = fmul fast float %8642, 1.250000e-01
  %8655 = call float @dx.op.unary.f32(i32 7, float %8654)  ; Saturate(value)
  %8656 = fmul fast float %8655, 2.000000e+00
  %8657 = fadd fast float %8656, -1.000000e+00
  %8658 = fcmp fast ogt float %8657, 0.000000e+00
  %8659 = fcmp fast olt float %8657, 0.000000e+00
  %8660 = zext i1 %8658 to i32
  %8661 = zext i1 %8659 to i32
  %8662 = sub nsw i32 %8660, %8661
  %8663 = sitofp i32 %8662 to float
  %8664 = fmul fast float %8663, %8657
  %8665 = fsub fast float 1.000000e+00, %8664
  %8666 = fmul fast float %8665, %8665
  %8667 = fmul fast float %8666, %8665
  %8668 = fsub fast float %8665, %8667
  %8669 = fmul fast float %8668, %8653
  %8670 = fsub fast float 1.000000e+00, %8667
  %8671 = fsub fast float %8670, %8669
  %8672 = fmul fast float %8663, 5.000000e-01
  %8673 = fmul fast float %8672, %8671
  %8674 = fsub fast float -5.000000e-01, %8673
  %8675 = fmul fast float %8674, %8508
  %8676 = fadd fast float %8675, 1.000000e+00
  %8677 = fmul fast float %8676, %8520
  br label %8678

; <label>:8678                                    ; preds = %8647, %8532
  %8679 = phi float [ %8677, %8647 ], [ %8520, %8532 ]
  %8680 = call float @dx.op.binary.f32(i32 36, float %8679, float %8679)  ; FMin(a,b)
  %8681 = call float @dx.op.binary.f32(i32 36, float %8679, float %8680)  ; FMin(a,b)
  %8682 = fcmp fast ogt float %8681, 0.000000e+00
  br i1 %8682, label %8683, label %8524, !dx.controlflow.hints !134

; <label>:8683                                    ; preds = %8678
  %8684 = fmul fast float %8679, %8441
  %8685 = fmul fast float %8679, %8442
  %8686 = fmul fast float %8679, %8443
  %8687 = fsub fast float %8425, %5477
  %8688 = fcmp fast ogt float %8687, 0.000000e+00
  %8689 = fsub fast float %165, %5477
  %8690 = fcmp fast ogt float %8689, 0.000000e+00
  %8691 = xor i1 %8690, %8688
  %8692 = fsub fast float %5477, %8425
  %8693 = fmul fast float %8692, 2.000000e+00
  %8694 = fadd fast float %8693, %8425
  %8695 = select i1 %8691, float %8425, float %8694
  %8696 = fsub fast float %8695, %165
  %8697 = call float @dx.op.dot3.f32(i32 55, float %8452, float %8453, float %8696, float %8452, float %8453, float %8696)  ; Dot3(ax,ay,az,bx,by,bz)
  %8698 = call float @dx.op.unary.f32(i32 25, float %8697)  ; Rsqrt(value)
  %8699 = fmul fast float %8698, %8452
  %8700 = fmul fast float %8698, %8453
  %8701 = fmul fast float %8698, %8696
  %8702 = fsub fast float %5477, %165
  %8703 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8702)  ; Dot3(ax,ay,az,bx,by,bz)
  %8704 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8699, float %8700, float %8701)  ; Dot3(ax,ay,az,bx,by,bz)
  %8705 = fdiv fast float 1.000000e+00, %8704
  %8706 = fmul fast float %8705, %8703
  %8707 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8689, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8708 = fcmp fast ogt float %8707, 0.000000e+00
  %8709 = fcmp fast olt float %8707, 0.000000e+00
  %8710 = zext i1 %8708 to i32
  %8711 = zext i1 %8709 to i32
  %8712 = sub nsw i32 %8710, %8711
  %8713 = sitofp i32 %8712 to float
  %8714 = fsub fast float %8695, %5477
  %8715 = call float @dx.op.dot3.f32(i32 55, float %8452, float %8453, float %8714, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8716 = fcmp fast ogt float %8715, 0.000000e+00
  %8717 = fcmp fast olt float %8715, 0.000000e+00
  %8718 = zext i1 %8716 to i32
  %8719 = zext i1 %8717 to i32
  %8720 = sub nsw i32 %8718, %8719
  %8721 = sitofp i32 %8720 to float
  %8722 = fcmp fast une float %8713, %8721
  br i1 %8722, label %8723, label %8733

; <label>:8723                                    ; preds = %8683
  %8724 = fmul fast float %8706, %8701
  %8725 = fmul fast float %8706, %8700
  %8726 = fmul fast float %8706, %8699
  %8727 = fmul fast float %8726, %8726
  %8728 = fmul fast float %8725, %8725
  %8729 = fadd fast float %8727, %8728
  %8730 = fmul fast float %8724, %8724
  %8731 = fadd fast float %8729, %8730
  %8732 = call float @dx.op.unary.f32(i32 24, float %8731)  ; Sqrt(value)
  br label %8745

; <label>:8733                                    ; preds = %8683
  %8734 = icmp slt i32 %8712, 0
  br i1 %8734, label %8735, label %8745

; <label>:8735                                    ; preds = %8733
  %8736 = fsub fast float %163, %8423
  %8737 = fsub fast float %164, %8424
  %8738 = fsub fast float %165, %8695
  %8739 = fmul fast float %8736, %8736
  %8740 = fmul fast float %8737, %8737
  %8741 = fadd fast float %8739, %8740
  %8742 = fmul fast float %8738, %8738
  %8743 = fadd fast float %8741, %8742
  %8744 = call float @dx.op.unary.f32(i32 24, float %8743)  ; Sqrt(value)
  br label %8745

; <label>:8745                                    ; preds = %8735, %8733, %8723
  %8746 = phi float [ %8732, %8723 ], [ %8744, %8735 ], [ 0.000000e+00, %8733 ]
  %8747 = and i1 %8690, %8688
  %8748 = fsub fast float -0.000000e+00, %8746
  %8749 = select i1 %8747, float -0.000000e+00, float %8748
  %8750 = fmul fast float %5474, 0x3FF7154760000000
  %8751 = fmul fast float %8750, %8749
  %8752 = fmul fast float %5475, 0x3FF7154760000000
  %8753 = fmul fast float %8752, %8749
  %8754 = fmul fast float %5476, 0x3FF7154760000000
  %8755 = fmul fast float %8754, %8749
  %8756 = call float @dx.op.unary.f32(i32 21, float %8751)  ; Exp(value)
  %8757 = call float @dx.op.unary.f32(i32 21, float %8753)  ; Exp(value)
  %8758 = call float @dx.op.unary.f32(i32 21, float %8755)  ; Exp(value)
  %8759 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8760 = call float @dx.op.unary.f32(i32 7, float %8757)  ; Saturate(value)
  %8761 = call float @dx.op.unary.f32(i32 7, float %8758)  ; Saturate(value)
  %8762 = fmul fast float %8684, %8759
  %8763 = fmul fast float %8685, %8760
  %8764 = fmul fast float %8686, %8761
  %8765 = fsub fast float %8458, %5674
  %8766 = fsub fast float %8459, %5673
  %8767 = fsub fast float %8460, %5672
  %8768 = call float @dx.op.dot3.f32(i32 55, float %8765, float %8766, float %8767, float %8765, float %8766, float %8767)  ; Dot3(ax,ay,az,bx,by,bz)
  %8769 = call float @dx.op.unary.f32(i32 25, float %8768)  ; Rsqrt(value)
  %8770 = fmul fast float %8769, %8765
  %8771 = fmul fast float %8769, %8766
  %8772 = fmul fast float %8769, %8767
  %8773 = call float @dx.op.dot3.f32(i32 55, float %8458, float %8459, float %8460, float %5681, float %5682, float %5683)  ; Dot3(ax,ay,az,bx,by,bz)
  %8774 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5670, float %5669, float %8770, float %8771, float %8772)  ; Dot3(ax,ay,az,bx,by,bz)
  %8775 = call float @dx.op.unary.f32(i32 7, float %8773)  ; Saturate(value)
  %8776 = fmul fast float %8775, %8465
  %8777 = fmul fast float %8775, %8775
  %8778 = fmul fast float %8777, %5714
  %8779 = call float @dx.op.unary.f32(i32 7, float %8778)  ; Saturate(value)
  %8780 = fmul fast float %8776, %8779
  %8781 = bitcast float %8455 to i32
  %8782 = ashr i32 %8781, 1
  %8783 = sub nsw i32 1597463007, %8782
  %8784 = bitcast i32 %8783 to float
  %8785 = fmul fast float %8784, %8452
  %8786 = fmul fast float %8784, %8453
  %8787 = fmul fast float %8784, %8454
  %8788 = fsub fast float %8785, %5674
  %8789 = fsub fast float %8786, %5673
  %8790 = fsub fast float %8787, %5672
  %8791 = call float @dx.op.dot3.f32(i32 55, float %8788, float %8789, float %8790, float %8788, float %8789, float %8790)  ; Dot3(ax,ay,az,bx,by,bz)
  %8792 = call float @dx.op.unary.f32(i32 25, float %8791)  ; Rsqrt(value)
  %8793 = fmul fast float %8788, %8792
  %8794 = fmul fast float %8789, %8792
  %8795 = fmul fast float %8790, %8792
  %8796 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %8793, float %8794, float %8795)  ; Dot3(ax,ay,az,bx,by,bz)
  %8797 = fmul fast float %8796, %8796
  %8798 = call float @dx.op.unary.f32(i32 6, float %8773)  ; FAbs(value)
  %8799 = fsub fast float 1.000000e+00, %5707
  %8800 = fmul fast float %5689, %5689
  %8801 = fmul fast float %8800, %8799
  %8802 = fadd fast float %8801, %5707
  %8803 = bitcast float %8802 to i32
  %8804 = ashr i32 %8803, 1
  %8805 = add nsw i32 %8804, 532487669
  %8806 = bitcast i32 %8805 to float
  %8807 = fadd fast float %8806, %5689
  %8808 = fmul fast float %5707, %8797
  %8809 = fsub fast float 1.000000e+00, %8797
  %8810 = fadd fast float %8809, %8808
  %8811 = fmul fast float %8798, %8798
  %8812 = fmul fast float %8811, %8799
  %8813 = fadd fast float %8812, %5707
  %8814 = bitcast float %8813 to i32
  %8815 = ashr i32 %8814, 1
  %8816 = add nsw i32 %8815, 532487669
  %8817 = bitcast i32 %8816 to float
  %8818 = fadd fast float %8817, %8798
  %8819 = fmul fast float %8810, %8810
  %8820 = fmul fast float %8819, %8807
  %8821 = fmul fast float %8820, %8818
  %8822 = fdiv fast float 1.000000e+00, %8821
  %8823 = bitcast float %5707 to i32
  %8824 = sitofp i32 %8823 to float
  %8825 = fmul fast float %8824, 0x3FE7F73180000000
  %8826 = fadd fast float %8825, 0x41AFE27C40000000
  %8827 = fptosi float %8826 to i32
  %8828 = bitcast i32 %8827 to float
  %8829 = fmul fast float %8420, 0x3FD80E9D60000000
  %8830 = fmul fast float %8829, %8784
  %8831 = fadd fast float %8828, %8830
  %8832 = bitcast float %8831 to i32
  %8833 = sub nsw i32 2129859010, %8832
  %8834 = bitcast i32 %8833 to float
  %8835 = fmul fast float %5707, %8822
  %8836 = fmul fast float %8835, %8828
  %8837 = fmul fast float %8836, %8834
  %8838 = fmul fast float %5960, 0x3FF9999980000000
  %8839 = fsub fast float 5.000000e+00, %8838
  %8840 = call float @dx.op.unary.f32(i32 6, float %8774)  ; FAbs(value)
  %8841 = fsub fast float 1.000000e+00, %8840
  %8842 = fmul fast float %5960, 0x41D9660740000000
  %8843 = fadd fast float %8842, 0xC1EFBF8940000000
  %8844 = bitcast float %8841 to i32
  %8845 = sitofp i32 %8844 to float
  %8846 = fmul fast float %8845, %8839
  %8847 = fadd fast float %8843, %8846
  %8848 = fptosi float %8847 to i32
  %8849 = bitcast i32 %8848 to float
  %8850 = fsub fast float 1.000000e+00, %5678
  %8851 = fsub fast float 1.000000e+00, %5679
  %8852 = fsub fast float 1.000000e+00, %5687
  %8853 = fmul fast float %8849, %8850
  %8854 = fmul fast float %8849, %8851
  %8855 = fmul fast float %8849, %8852
  %8856 = fadd fast float %8853, %5678
  %8857 = fadd fast float %8854, %5679
  %8858 = fadd fast float %8855, %5687
  br i1 %5983, label %8859, label %8882

; <label>:8859                                    ; preds = %8745
  %8860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5020, float %8840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8861 = extractvalue %dx.types.ResRet.f32 %8860, 0
  %8862 = extractvalue %dx.types.ResRet.f32 %8860, 1
  %8863 = extractvalue %dx.types.ResRet.f32 %8860, 2
  %8864 = fadd fast float %8861, -5.000000e-01
  %8865 = fadd fast float %8862, -5.000000e-01
  %8866 = fadd fast float %8863, -5.000000e-01
  %8867 = fmul fast float %5678, 4.000000e+00
  %8868 = fmul fast float %8867, %8850
  %8869 = fmul fast float %8868, %8864
  %8870 = fmul fast float %5679, 4.000000e+00
  %8871 = fmul fast float %8870, %8851
  %8872 = fmul fast float %8871, %8865
  %8873 = fmul fast float %5687, 4.000000e+00
  %8874 = fmul fast float %8873, %8852
  %8875 = fmul fast float %8874, %8866
  %8876 = fadd fast float %8869, %8856
  %8877 = fadd fast float %8872, %8857
  %8878 = fadd fast float %8875, %8858
  %8879 = call float @dx.op.unary.f32(i32 7, float %8876)  ; Saturate(value)
  %8880 = call float @dx.op.unary.f32(i32 7, float %8877)  ; Saturate(value)
  %8881 = call float @dx.op.unary.f32(i32 7, float %8878)  ; Saturate(value)
  br label %8882

; <label>:8882                                    ; preds = %8859, %8745
  %8883 = phi float [ %8879, %8859 ], [ %8856, %8745 ]
  %8884 = phi float [ %8880, %8859 ], [ %8857, %8745 ]
  %8885 = phi float [ %8881, %8859 ], [ %8858, %8745 ]
  %8886 = fmul fast float %8773, 9.843750e-01
  %8887 = fadd fast float %8886, 7.812500e-03
  %8888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8887, float %5964, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8889 = extractvalue %dx.types.ResRet.f32 %8888, 0
  %8890 = extractvalue %dx.types.ResRet.f32 %8888, 1
  %8891 = extractvalue %dx.types.ResRet.f32 %8888, 2
  %8892 = extractvalue %dx.types.ResRet.f32 %8888, 3
  %8893 = fsub fast float %8891, %8889
  %8894 = fsub fast float %8892, %8890
  %8895 = fmul fast float %8893, %5970
  %8896 = fmul fast float %8894, %5970
  %8897 = fadd fast float %8895, %8889
  %8898 = fadd fast float %8896, %8890
  %8899 = fmul fast float %8897, %5678
  %8900 = fmul fast float %8897, %5679
  %8901 = fmul fast float %8897, %5687
  %8902 = fadd fast float %8899, %8898
  %8903 = fadd fast float %8900, %8898
  %8904 = fadd fast float %8901, %8898
  br i1 %5983, label %8905, label %8928

; <label>:8905                                    ; preds = %8882
  %8906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5020, float %8773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8907 = extractvalue %dx.types.ResRet.f32 %8906, 0
  %8908 = extractvalue %dx.types.ResRet.f32 %8906, 1
  %8909 = extractvalue %dx.types.ResRet.f32 %8906, 2
  %8910 = fadd fast float %8907, -5.000000e-01
  %8911 = fadd fast float %8908, -5.000000e-01
  %8912 = fadd fast float %8909, -5.000000e-01
  %8913 = fmul fast float %5678, 4.000000e+00
  %8914 = fmul fast float %8913, %8850
  %8915 = fmul fast float %8914, %8910
  %8916 = fmul fast float %5679, 4.000000e+00
  %8917 = fmul fast float %8916, %8851
  %8918 = fmul fast float %8917, %8911
  %8919 = fmul fast float %5687, 4.000000e+00
  %8920 = fmul fast float %8919, %8852
  %8921 = fmul fast float %8920, %8912
  %8922 = fadd fast float %8915, %8902
  %8923 = fadd fast float %8918, %8903
  %8924 = fadd fast float %8921, %8904
  %8925 = call float @dx.op.unary.f32(i32 7, float %8922)  ; Saturate(value)
  %8926 = call float @dx.op.unary.f32(i32 7, float %8923)  ; Saturate(value)
  %8927 = call float @dx.op.unary.f32(i32 7, float %8924)  ; Saturate(value)
  br label %8928

; <label>:8928                                    ; preds = %8905, %8882
  %8929 = phi float [ %8925, %8905 ], [ %8902, %8882 ]
  %8930 = phi float [ %8926, %8905 ], [ %8903, %8882 ]
  %8931 = phi float [ %8927, %8905 ], [ %8904, %8882 ]
  %8932 = call float @dx.op.binary.f32(i32 35, float %8930, float %8931)  ; FMax(a,b)
  %8933 = call float @dx.op.binary.f32(i32 35, float %8929, float %8932)  ; FMax(a,b)
  %8934 = fsub fast float 1.000000e+00, %8933
  %8935 = call float @dx.op.binary.f32(i32 35, float %8798, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8936 = fdiv fast float %4426, %8935
  %8937 = fmul fast float %6530, %8936
  %8938 = fmul fast float %6532, %8936
  %8939 = fmul fast float %6534, %8936
  %8940 = call float @dx.op.unary.f32(i32 21, float %8937)  ; Exp(value)
  %8941 = call float @dx.op.unary.f32(i32 21, float %8938)  ; Exp(value)
  %8942 = call float @dx.op.unary.f32(i32 21, float %8939)  ; Exp(value)
  %8943 = call float @dx.op.unary.f32(i32 7, float %8940)  ; Saturate(value)
  %8944 = call float @dx.op.unary.f32(i32 7, float %8941)  ; Saturate(value)
  %8945 = call float @dx.op.unary.f32(i32 7, float %8942)  ; Saturate(value)
  %8946 = select i1 %6527, float %8943, float 0.000000e+00
  %8947 = select i1 %6528, float %8944, float 0.000000e+00
  %8948 = select i1 %6529, float %8945, float 0.000000e+00
  %8949 = fsub fast float -0.000000e+00, %5681
  %8950 = fsub fast float -0.000000e+00, %5682
  %8951 = fsub fast float -0.000000e+00, %5683
  %8952 = call float @dx.op.dot3.f32(i32 55, float %8458, float %8459, float %8460, float %8949, float %8950, float %8951)  ; Dot3(ax,ay,az,bx,by,bz)
  %8953 = call float @dx.op.unary.f32(i32 7, float %8952)  ; Saturate(value)
  %8954 = fmul fast float %8953, %8465
  %8955 = fmul fast float %8953, 9.843750e-01
  %8956 = fadd fast float %8955, 7.812500e-03
  %8957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8956, float %5964, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8958 = extractvalue %dx.types.ResRet.f32 %8957, 0
  %8959 = extractvalue %dx.types.ResRet.f32 %8957, 1
  %8960 = extractvalue %dx.types.ResRet.f32 %8957, 2
  %8961 = extractvalue %dx.types.ResRet.f32 %8957, 3
  %8962 = fsub fast float %8960, %8958
  %8963 = fsub fast float %8961, %8959
  %8964 = fmul fast float %8962, %5970
  %8965 = fmul fast float %8963, %5970
  %8966 = fadd fast float %8964, %8958
  %8967 = fadd fast float %8965, %8959
  %8968 = fmul fast float %8966, %5678
  %8969 = fmul fast float %8966, %5679
  %8970 = fmul fast float %8966, %5687
  %8971 = fadd fast float %8968, %8967
  %8972 = fadd fast float %8969, %8967
  %8973 = fadd fast float %8970, %8967
  br i1 %5983, label %8974, label %8997

; <label>:8974                                    ; preds = %8928
  %8975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5020, float %8953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8976 = extractvalue %dx.types.ResRet.f32 %8975, 0
  %8977 = extractvalue %dx.types.ResRet.f32 %8975, 1
  %8978 = extractvalue %dx.types.ResRet.f32 %8975, 2
  %8979 = fadd fast float %8976, -5.000000e-01
  %8980 = fadd fast float %8977, -5.000000e-01
  %8981 = fadd fast float %8978, -5.000000e-01
  %8982 = fmul fast float %5678, 4.000000e+00
  %8983 = fmul fast float %8982, %8850
  %8984 = fmul fast float %8983, %8979
  %8985 = fmul fast float %5679, 4.000000e+00
  %8986 = fmul fast float %8985, %8851
  %8987 = fmul fast float %8986, %8980
  %8988 = fmul fast float %5687, 4.000000e+00
  %8989 = fmul fast float %8988, %8852
  %8990 = fmul fast float %8989, %8981
  %8991 = fadd fast float %8984, %8971
  %8992 = fadd fast float %8987, %8972
  %8993 = fadd fast float %8990, %8973
  %8994 = call float @dx.op.unary.f32(i32 7, float %8991)  ; Saturate(value)
  %8995 = call float @dx.op.unary.f32(i32 7, float %8992)  ; Saturate(value)
  %8996 = call float @dx.op.unary.f32(i32 7, float %8993)  ; Saturate(value)
  br label %8997

; <label>:8997                                    ; preds = %8974, %8928
  %8998 = phi float [ %8994, %8974 ], [ %8971, %8928 ]
  %8999 = phi float [ %8995, %8974 ], [ %8972, %8928 ]
  %9000 = phi float [ %8996, %8974 ], [ %8973, %8928 ]
  %9001 = call float @dx.op.binary.f32(i32 35, float %8999, float %9000)  ; FMax(a,b)
  %9002 = call float @dx.op.binary.f32(i32 35, float %8998, float %9001)  ; FMax(a,b)
  %9003 = fsub fast float 1.000000e+00, %9002
  %9004 = fmul fast float %5704, %6594
  %9005 = fadd fast float %6596, %9004
  %9006 = call float @dx.op.unary.f32(i32 7, float %9005)  ; Saturate(value)
  %9007 = fsub fast float %8785, %5695
  %9008 = fsub fast float %8786, %5696
  %9009 = fsub fast float %8787, %5697
  %9010 = call float @dx.op.dot3.f32(i32 55, float %9007, float %9008, float %9009, float %9007, float %9008, float %9009)  ; Dot3(ax,ay,az,bx,by,bz)
  %9011 = call float @dx.op.unary.f32(i32 25, float %9010)  ; Rsqrt(value)
  %9012 = fmul fast float %9007, %9011
  %9013 = fmul fast float %9008, %9011
  %9014 = fmul fast float %9009, %9011
  %9015 = call float @dx.op.dot3.f32(i32 55, float %8949, float %8950, float %8951, float %9012, float %9013, float %9014)  ; Dot3(ax,ay,az,bx,by,bz)
  %9016 = fmul fast float %9015, %9015
  %9017 = call float @dx.op.unary.f32(i32 6, float %8953)  ; FAbs(value)
  %9018 = call float @dx.op.binary.f32(i32 35, float %9006, float 0x3F847AE140000000)  ; FMax(a,b)
  %9019 = fmul fast float %9018, %9018
  %9020 = fmul fast float %9019, %9019
  %9021 = fsub fast float 1.000000e+00, %9020
  %9022 = fmul fast float %8800, %9021
  %9023 = fadd fast float %9022, %9020
  %9024 = bitcast float %9023 to i32
  %9025 = ashr i32 %9024, 1
  %9026 = add nsw i32 %9025, 532487669
  %9027 = bitcast i32 %9026 to float
  %9028 = fadd fast float %9027, %5689
  %9029 = fmul fast float %9020, %9016
  %9030 = fsub fast float 1.000000e+00, %9016
  %9031 = fadd fast float %9030, %9029
  %9032 = fmul fast float %9017, %9017
  %9033 = fmul fast float %9032, %9021
  %9034 = fadd fast float %9033, %9020
  %9035 = bitcast float %9034 to i32
  %9036 = ashr i32 %9035, 1
  %9037 = add nsw i32 %9036, 532487669
  %9038 = bitcast i32 %9037 to float
  %9039 = fadd fast float %9038, %9017
  %9040 = fmul fast float %9031, %9031
  %9041 = fmul fast float %9040, %9028
  %9042 = fmul fast float %9041, %9039
  %9043 = fdiv fast float 1.000000e+00, %9042
  %9044 = bitcast float %9020 to i32
  %9045 = sitofp i32 %9044 to float
  %9046 = fmul fast float %9045, 0x3FE7F73180000000
  %9047 = fadd fast float %9046, 0x41AFE27C40000000
  %9048 = fptosi float %9047 to i32
  %9049 = bitcast i32 %9048 to float
  %9050 = fadd fast float %9049, %8830
  %9051 = bitcast float %9050 to i32
  %9052 = sub nsw i32 2129859010, %9051
  %9053 = bitcast i32 %9052 to float
  %9054 = fmul fast float %9020, %9043
  %9055 = fmul fast float %9054, %9049
  %9056 = fmul fast float %9055, %9053
  br i1 %8450, label %9057, label %9067

; <label>:9057                                    ; preds = %8997
  %9058 = fmul fast float %8954, %8946
  %9059 = fmul fast float %8954, %8947
  %9060 = fmul fast float %8954, %8948
  %9061 = fmul fast float %9058, %9003
  %9062 = fmul fast float %9061, %9056
  %9063 = fmul fast float %9059, %9003
  %9064 = fmul fast float %9063, %9056
  %9065 = fmul fast float %9060, %9003
  %9066 = fmul fast float %9065, %9056
  br label %9067

; <label>:9067                                    ; preds = %9057, %8997
  %9068 = phi float [ %9062, %9057 ], [ 0.000000e+00, %8997 ]
  %9069 = phi float [ %9064, %9057 ], [ 0.000000e+00, %8997 ]
  %9070 = phi float [ %9066, %9057 ], [ 0.000000e+00, %8997 ]
  %9071 = fmul fast float %8883, %8837
  %9072 = fmul fast float %8884, %8837
  %9073 = fmul fast float %8885, %8837
  %9074 = fsub fast float 1.000000e+00, %8774
  %9075 = bitcast float %9074 to i32
  %9076 = sitofp i32 %9075 to float
  %9077 = fmul fast float %9076, 5.000000e+00
  %9078 = fadd fast float %9077, 0xC1EFBF8940000000
  %9079 = fptosi float %9078 to i32
  %9080 = bitcast i32 %9079 to float
  %9081 = fmul fast float %9080, %5019
  %9082 = fmul fast float %8934, %9081
  %9083 = fmul fast float %9082, %6522
  %9084 = fmul fast float %9082, %6523
  %9085 = fmul fast float %9082, %6524
  %9086 = fadd fast float %9083, %9071
  %9087 = fadd fast float %9084, %9072
  %9088 = fadd fast float %9085, %9073
  %9089 = fmul fast float %9086, %8780
  %9090 = fmul fast float %9087, %8780
  %9091 = fmul fast float %9088, %8780
  %9092 = fadd fast float %9089, %9068
  %9093 = fadd fast float %9090, %9069
  %9094 = fadd fast float %9091, %9070
  %9095 = fmul fast float %8762, %5043
  %9096 = fmul fast float %9095, %8780
  %9097 = fmul fast float %9096, %8934
  %9098 = fmul fast float %8763, %5043
  %9099 = fmul fast float %9098, %8780
  %9100 = fmul fast float %9099, %8934
  %9101 = fmul fast float %8764, %5043
  %9102 = fmul fast float %9101, %8780
  %9103 = fmul fast float %9102, %8934
  %9104 = fadd fast float %9097, %8394
  %9105 = fadd fast float %9100, %8395
  %9106 = fadd fast float %9103, %8396
  %9107 = fmul fast float %9095, %9092
  %9108 = fmul fast float %9098, %9093
  %9109 = fmul fast float %9101, %9094
  %9110 = fadd fast float %9107, %8391
  %9111 = fadd fast float %9108, %8392
  %9112 = fadd fast float %9109, %8393
  br label %8524

; <label>:9113                                    ; preds = %8524
  br label %9114

; <label>:9114                                    ; preds = %9113, %8357
  %9115 = phi float [ %8359, %8357 ], [ %8525, %9113 ]
  %9116 = phi float [ %8360, %8357 ], [ %8526, %9113 ]
  %9117 = phi float [ %8361, %8357 ], [ %8527, %9113 ]
  %9118 = phi float [ %8362, %8357 ], [ %8528, %9113 ]
  %9119 = phi float [ %8363, %8357 ], [ %8529, %9113 ]
  %9120 = phi float [ %8364, %8357 ], [ %8530, %9113 ]
  %9121 = add i32 %8358, 1
  %9122 = icmp ugt i32 %9121, %8354
  br i1 %9122, label %9123, label %8357

; <label>:9123                                    ; preds = %9114
  br label %9124

; <label>:9124                                    ; preds = %9123, %8307, %8297
  %9125 = phi float [ %8298, %8297 ], [ %8298, %8307 ], [ %9115, %9123 ]
  %9126 = phi float [ %8299, %8297 ], [ %8299, %8307 ], [ %9116, %9123 ]
  %9127 = phi float [ %8300, %8297 ], [ %8300, %8307 ], [ %9117, %9123 ]
  %9128 = phi float [ %8301, %8297 ], [ %8301, %8307 ], [ %9118, %9123 ]
  %9129 = phi float [ %8302, %8297 ], [ %8302, %8307 ], [ %9119, %9123 ]
  %9130 = phi float [ %8303, %8297 ], [ %8303, %8307 ], [ %9120, %9123 ]
  %9131 = fmul fast float %5043, %6551
  %9132 = fsub fast float -0.000000e+00, %9131
  %9133 = fmul fast float %5043, %6552
  %9134 = fsub fast float -0.000000e+00, %9133
  %9135 = fmul fast float %5043, %6553
  %9136 = fsub fast float -0.000000e+00, %9135
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 0
  %9139 = fmul fast float %9138, %6557
  %9140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9141 = extractvalue %dx.types.CBufRet.f32 %9140, 3
  %9142 = fsub fast float 1.000000e+00, %5015
  %9143 = call float @dx.op.unary.f32(i32 7, float %9142)  ; Saturate(value)
  %9144 = fadd fast float %9130, %5014
  %9145 = fmul fast float %9144, %5015
  %9146 = fmul fast float %9143, %9141
  %9147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9148 = extractvalue %dx.types.CBufRet.f32 %9147, 3
  %9149 = fmul fast float %9128, %5675
  %9150 = fmul fast float %9129, %5676
  %9151 = fmul fast float %9130, %5677
  %9152 = fcmp fast ogt float %96, %185
  %9153 = and i1 %9152, %5480
  %9154 = or i1 %5486, %9153
  %9155 = icmp eq i32 %5479, 2
  %9156 = fcmp fast ole float %96, %185
  %9157 = and i1 %9156, %9155
  %9158 = or i1 %9157, %9154
  br i1 %9153, label %9159, label %9416

; <label>:9159                                    ; preds = %9124
  %9160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9161 = extractvalue %dx.types.CBufRet.f32 %9160, 2
  %9162 = extractvalue %dx.types.CBufRet.f32 %9160, 3
  %9163 = fmul fast float %9161, %108
  %9164 = fmul fast float %9162, %109
  %9165 = call float @dx.op.unary.f32(i32 7, float %9163)  ; Saturate(value)
  %9166 = call float @dx.op.unary.f32(i32 7, float %9164)  ; Saturate(value)
  %9167 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9165, float %9166, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9168 = extractvalue %dx.types.ResRet.f32 %9167, 0
  %9169 = extractvalue %dx.types.ResRet.f32 %9167, 1
  %9170 = extractvalue %dx.types.ResRet.f32 %9167, 2
  %9171 = extractvalue %dx.types.ResRet.f32 %9167, 3
  %9172 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9165, float %9166, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9173 = extractvalue %dx.types.ResRet.f32 %9172, 0
  %9174 = extractvalue %dx.types.ResRet.f32 %9172, 1
  %9175 = extractvalue %dx.types.ResRet.f32 %9172, 2
  %9176 = extractvalue %dx.types.ResRet.f32 %9172, 3
  %9177 = call float @dx.op.binary.f32(i32 35, float %9169, float %9170)  ; FMax(a,b)
  %9178 = call float @dx.op.binary.f32(i32 35, float %9168, float %9177)  ; FMax(a,b)
  %9179 = call float @dx.op.binary.f32(i32 35, float %9178, float %9171)  ; FMax(a,b)
  %9180 = call float @dx.op.binary.f32(i32 36, float %9174, float %9175)  ; FMin(a,b)
  %9181 = call float @dx.op.binary.f32(i32 36, float %9173, float %9180)  ; FMin(a,b)
  %9182 = call float @dx.op.binary.f32(i32 36, float %9181, float %9176)  ; FMin(a,b)
  %9183 = fmul fast float %9179, 2.550000e+02
  %9184 = fadd fast float %9183, 0x3F70101020000000
  %9185 = fptoui float %9184 to i32
  %9186 = fmul fast float %9182, 2.550000e+02
  %9187 = fadd fast float %9186, 0x3F70101020000000
  %9188 = fptoui float %9187 to i32
  %9189 = icmp ult i32 %9185, %9188
  br i1 %9189, label %9190, label %9358

; <label>:9190                                    ; preds = %9159
  %9191 = fcmp fast ogt float %95, 9.843750e-01
  %9192 = fadd fast float %96, -4.000000e+00
  %9193 = select i1 %9191, float -4.000000e+00, float %9192
  %9194 = call float @dx.op.binary.f32(i32 35, float %9193, float 0.000000e+00)  ; FMax(a,b)
  %9195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9196 = extractvalue %dx.types.CBufRet.f32 %9195, 0
  %9197 = fadd fast float %9196, %9194
  %9198 = extractvalue %dx.types.CBufRet.f32 %9195, 2
  %9199 = fmul fast float %9197, %9198
  %9200 = call float @dx.op.unary.f32(i32 23, float %9199)  ; Log(value)
  %9201 = extractvalue %dx.types.CBufRet.f32 %9195, 3
  %9202 = fmul fast float %9201, %9200
  %9203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9204 = extractvalue %dx.types.CBufRet.f32 %9203, 2
  %9205 = fmul fast float %9202, %9204
  %9206 = call float @dx.op.unary.f32(i32 7, float %9205)  ; Saturate(value)
  %9207 = uitofp i32 %9185 to float
  %9208 = uitofp i32 %9188 to float
  %9209 = fadd fast float %9207, 5.000000e-01
  %9210 = fadd fast float %9208, 5.000000e-01
  %9211 = fmul fast float %9204, %9209
  %9212 = fmul fast float %9204, %9210
  %9213 = fadd fast float %9211, 0x3F0FFB4800000000
  %9214 = fadd fast float %9212, 0xBF0FFB4800000000
  %9215 = call float @dx.op.binary.f32(i32 35, float %9206, float %9213)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 36, float %9215, float %9214)  ; FMin(a,b)
  %9217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9218 = extractvalue %dx.types.CBufRet.f32 %9217, 1
  %9219 = extractvalue %dx.types.CBufRet.f32 %9217, 2
  %9220 = extractvalue %dx.types.CBufRet.f32 %9217, 0
  %9221 = fmul fast float %9218, %9216
  %9222 = fadd fast float %9220, %9221
  %9223 = fadd fast float %9220, %9219
  %9224 = fsub fast float %9218, %9219
  %9225 = fadd fast float %9224, %9220
  %9226 = call float @dx.op.binary.f32(i32 35, float %9222, float %9223)  ; FMax(a,b)
  %9227 = call float @dx.op.binary.f32(i32 36, float %9226, float %9225)  ; FMin(a,b)
  %9228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9165, float %9166, float %9227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9229 = extractvalue %dx.types.ResRet.f32 %9228, 0
  %9230 = extractvalue %dx.types.ResRet.f32 %9228, 1
  %9231 = extractvalue %dx.types.ResRet.f32 %9228, 2
  %9232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9233 = extractvalue %dx.types.CBufRet.i32 %9232, 0
  %9234 = extractvalue %dx.types.CBufRet.i32 %9232, 1
  %9235 = uitofp i32 %9233 to float
  %9236 = uitofp i32 %9234 to float
  %9237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9237, 0
  %9239 = extractvalue %dx.types.CBufRet.f32 %9237, 1
  %9240 = fmul fast float %9235, %9165
  %9241 = fmul fast float %9236, %9166
  %9242 = fadd fast float %9240, -5.000000e-01
  %9243 = fadd fast float %9241, -5.000000e-01
  %9244 = call float @dx.op.unary.f32(i32 22, float %9242)  ; Frc(value)
  %9245 = call float @dx.op.unary.f32(i32 22, float %9243)  ; Frc(value)
  %9246 = fmul fast float %9244, %9244
  %9247 = fmul fast float %9246, %9244
  %9248 = fsub fast float 3.000000e+00, %9244
  %9249 = fmul fast float %9246, %9248
  %9250 = fmul fast float %9244, 3.000000e+00
  %9251 = fmul fast float %9247, 3.000000e+00
  %9252 = fmul fast float %9246, 6.000000e+00
  %9253 = fsub fast float %9251, %9252
  %9254 = fadd fast float %9253, 4.000000e+00
  %9255 = fmul fast float %9254, 0x3FC5555560000000
  %9256 = fmul fast float %9247, -3.000000e+00
  %9257 = fadd fast float %9246, %9244
  %9258 = fmul fast float %9257, 3.000000e+00
  %9259 = fadd fast float %9256, 1.000000e+00
  %9260 = fadd fast float %9259, %9258
  %9261 = fmul fast float %9247, 0x3FC5555560000000
  %9262 = fmul fast float %9245, %9245
  %9263 = fmul fast float %9262, %9245
  %9264 = fsub fast float 3.000000e+00, %9245
  %9265 = fmul fast float %9262, %9264
  %9266 = fmul fast float %9245, 3.000000e+00
  %9267 = fmul fast float %9263, 3.000000e+00
  %9268 = fmul fast float %9262, 6.000000e+00
  %9269 = fsub fast float %9267, %9268
  %9270 = fadd fast float %9269, 4.000000e+00
  %9271 = fmul fast float %9270, 0x3FC5555560000000
  %9272 = fmul fast float %9263, -3.000000e+00
  %9273 = fadd fast float %9262, %9245
  %9274 = fmul fast float %9273, 3.000000e+00
  %9275 = fadd fast float %9272, 1.000000e+00
  %9276 = fadd fast float %9275, %9274
  %9277 = fmul fast float %9263, 0x3FC5555560000000
  %9278 = fadd fast float %9244, 1.000000e+00
  %9279 = fsub fast float 1.000000e+00, %9250
  %9280 = fadd fast float %9279, %9249
  %9281 = fadd fast float %9280, %9254
  %9282 = fmul fast float %9281, 0x3FC5555560000000
  %9283 = fdiv fast float %9255, %9282
  %9284 = fsub fast float %9278, %9283
  %9285 = fsub fast float 1.000000e+00, %9244
  %9286 = fadd fast float %9260, %9247
  %9287 = fmul fast float %9286, 0x3FC5555560000000
  %9288 = fdiv fast float %9261, %9287
  %9289 = fadd fast float %9285, %9288
  %9290 = fadd fast float %9245, 1.000000e+00
  %9291 = fsub fast float 1.000000e+00, %9266
  %9292 = fadd fast float %9291, %9265
  %9293 = fadd fast float %9292, %9270
  %9294 = fmul fast float %9293, 0x3FC5555560000000
  %9295 = fdiv fast float %9271, %9294
  %9296 = fsub fast float %9290, %9295
  %9297 = fsub fast float 1.000000e+00, %9245
  %9298 = fadd fast float %9276, %9263
  %9299 = fmul fast float %9298, 0x3FC5555560000000
  %9300 = fdiv fast float %9277, %9299
  %9301 = fadd fast float %9300, %9297
  %9302 = fmul fast float %9284, %9238
  %9303 = fsub fast float %9165, %9302
  %9304 = fmul fast float %9289, %9238
  %9305 = fadd fast float %9304, %9165
  %9306 = fmul fast float %9301, %9239
  %9307 = fadd fast float %9306, %9166
  %9308 = fmul fast float %9296, %9239
  %9309 = fsub fast float %9166, %9308
  %9310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9303, float %9309, float %9227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9311 = extractvalue %dx.types.ResRet.f32 %9310, 0
  %9312 = extractvalue %dx.types.ResRet.f32 %9310, 1
  %9313 = extractvalue %dx.types.ResRet.f32 %9310, 2
  %9314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9305, float %9309, float %9227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9315 = extractvalue %dx.types.ResRet.f32 %9314, 0
  %9316 = extractvalue %dx.types.ResRet.f32 %9314, 1
  %9317 = extractvalue %dx.types.ResRet.f32 %9314, 2
  %9318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9303, float %9307, float %9227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9319 = extractvalue %dx.types.ResRet.f32 %9318, 0
  %9320 = extractvalue %dx.types.ResRet.f32 %9318, 1
  %9321 = extractvalue %dx.types.ResRet.f32 %9318, 2
  %9322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9305, float %9307, float %9227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9323 = extractvalue %dx.types.ResRet.f32 %9322, 0
  %9324 = extractvalue %dx.types.ResRet.f32 %9322, 1
  %9325 = extractvalue %dx.types.ResRet.f32 %9322, 2
  %9326 = fsub fast float %9319, %9311
  %9327 = fsub fast float %9320, %9312
  %9328 = fsub fast float %9321, %9313
  %9329 = fmul fast float %9326, %9299
  %9330 = fmul fast float %9327, %9299
  %9331 = fmul fast float %9328, %9299
  %9332 = fadd fast float %9329, %9311
  %9333 = fadd fast float %9330, %9312
  %9334 = fadd fast float %9331, %9313
  %9335 = fsub fast float %9323, %9315
  %9336 = fsub fast float %9324, %9316
  %9337 = fsub fast float %9325, %9317
  %9338 = fmul fast float %9335, %9299
  %9339 = fmul fast float %9336, %9299
  %9340 = fmul fast float %9337, %9299
  %9341 = fsub fast float %9315, %9332
  %9342 = fadd fast float %9341, %9338
  %9343 = fsub fast float %9316, %9333
  %9344 = fadd fast float %9343, %9339
  %9345 = fsub fast float %9317, %9334
  %9346 = fadd fast float %9345, %9340
  %9347 = fmul fast float %9342, %9287
  %9348 = fmul fast float %9344, %9287
  %9349 = fmul fast float %9346, %9287
  %9350 = fadd fast float %9347, %9332
  %9351 = fadd fast float %9348, %9333
  %9352 = fadd fast float %9349, %9334
  %9353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9354 = extractvalue %dx.types.CBufRet.f32 %9353, 1
  %9355 = fmul fast float %9350, %9354
  %9356 = fmul fast float %9351, %9354
  %9357 = fmul fast float %9352, %9354
  br label %9358

; <label>:9358                                    ; preds = %9190, %9159
  %9359 = phi float [ %9229, %9190 ], [ 1.000000e+00, %9159 ]
  %9360 = phi float [ %9230, %9190 ], [ 1.000000e+00, %9159 ]
  %9361 = phi float [ %9231, %9190 ], [ 1.000000e+00, %9159 ]
  %9362 = phi float [ %9355, %9190 ], [ 0.000000e+00, %9159 ]
  %9363 = phi float [ %9356, %9190 ], [ 0.000000e+00, %9159 ]
  %9364 = phi float [ %9357, %9190 ], [ 0.000000e+00, %9159 ]
  %9365 = fmul fast float %9362, %9132
  %9366 = fmul fast float %9363, %9134
  %9367 = fmul fast float %9364, %9136
  %9368 = call float @dx.op.dot3.f32(i32 55, float %9359, float %9360, float %9361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9369 = call float @dx.op.dot3.f32(i32 55, float %9365, float %9366, float %9367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9370 = select i1 %225, float %9368, float %9359
  %9371 = select i1 %225, float %9368, float %9360
  %9372 = select i1 %225, float 1.000000e+00, float %9361
  %9373 = select i1 %225, float %9369, float %9365
  %9374 = select i1 %225, float 0.000000e+00, float %9366
  %9375 = select i1 %225, float 0.000000e+00, float %9367
  %9376 = fmul fast float %9370, %9149
  %9377 = fmul fast float %9371, %9150
  %9378 = fmul fast float %9372, %9151
  %9379 = fadd fast float %9376, %9373
  %9380 = fadd fast float %9377, %9374
  %9381 = fadd fast float %9375, %9378
  %9382 = fmul fast float %9370, %9125
  %9383 = fmul fast float %9371, %9126
  %9384 = fmul fast float %9372, %9127
  %9385 = fmul fast float %133, %9161
  %9386 = fmul fast float %135, %9162
  %9387 = fsub fast float 1.000000e+00, %9385
  %9388 = fsub fast float 1.000000e+00, %9386
  %9389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9389, 0
  %9391 = extractvalue %dx.types.CBufRet.f32 %9389, 1
  %9392 = extractvalue %dx.types.CBufRet.f32 %9389, 2
  %9393 = fmul fast float %9387, %9390
  %9394 = fmul fast float %9387, %9391
  %9395 = fmul fast float %9387, %9392
  %9396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9397 = extractvalue %dx.types.CBufRet.f32 %9396, 0
  %9398 = extractvalue %dx.types.CBufRet.f32 %9396, 1
  %9399 = extractvalue %dx.types.CBufRet.f32 %9396, 2
  %9400 = fmul fast float %9388, %9397
  %9401 = fmul fast float %9388, %9398
  %9402 = fmul fast float %9388, %9399
  %9403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9404 = extractvalue %dx.types.CBufRet.f32 %9403, 0
  %9405 = extractvalue %dx.types.CBufRet.f32 %9403, 1
  %9406 = extractvalue %dx.types.CBufRet.f32 %9403, 2
  %9407 = fadd fast float %9400, %9404
  %9408 = fadd fast float %9407, %9393
  %9409 = fadd fast float %9401, %9405
  %9410 = fadd fast float %9409, %9394
  %9411 = fadd fast float %9402, %9406
  %9412 = fadd fast float %9411, %9395
  %9413 = fmul fast float %9408, %185
  %9414 = fmul fast float %9410, %185
  %9415 = fmul fast float %9412, %185
  br label %9416

; <label>:9416                                    ; preds = %9358, %9124
  %9417 = phi float [ %9413, %9358 ], [ %163, %9124 ]
  %9418 = phi float [ %9414, %9358 ], [ %164, %9124 ]
  %9419 = phi float [ %9415, %9358 ], [ %165, %9124 ]
  %9420 = phi float [ %185, %9358 ], [ %96, %9124 ]
  %9421 = phi float [ %9379, %9358 ], [ %9149, %9124 ]
  %9422 = phi float [ %9380, %9358 ], [ %9150, %9124 ]
  %9423 = phi float [ %9381, %9358 ], [ %9151, %9124 ]
  %9424 = phi float [ %9382, %9358 ], [ %9125, %9124 ]
  %9425 = phi float [ %9383, %9358 ], [ %9126, %9124 ]
  %9426 = phi float [ %9384, %9358 ], [ %9127, %9124 ]
  %9427 = phi float [ %9359, %9358 ], [ 1.000000e+00, %9124 ]
  br i1 %9158, label %10582, label %9428

; <label>:9428                                    ; preds = %9416
  %9429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9430 = extractvalue %dx.types.CBufRet.f32 %9429, 0
  %9431 = extractvalue %dx.types.CBufRet.f32 %9429, 1
  %9432 = extractvalue %dx.types.CBufRet.f32 %9429, 2
  %9433 = extractvalue %dx.types.CBufRet.f32 %9429, 3
  %9434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9435 = extractvalue %dx.types.CBufRet.f32 %9434, 0
  %9436 = extractvalue %dx.types.CBufRet.f32 %9434, 1
  %9437 = extractvalue %dx.types.CBufRet.f32 %9434, 2
  %9438 = extractvalue %dx.types.CBufRet.f32 %9434, 3
  %9439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9440 = extractvalue %dx.types.CBufRet.f32 %9439, 0
  %9441 = extractvalue %dx.types.CBufRet.f32 %9439, 1
  %9442 = extractvalue %dx.types.CBufRet.f32 %9439, 2
  %9443 = extractvalue %dx.types.CBufRet.f32 %9439, 3
  %9444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9445 = extractvalue %dx.types.CBufRet.f32 %9444, 0
  %9446 = extractvalue %dx.types.CBufRet.f32 %9444, 1
  %9447 = extractvalue %dx.types.CBufRet.f32 %9444, 2
  %9448 = extractvalue %dx.types.CBufRet.f32 %9444, 3
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 3
  %9451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9452 = extractvalue %dx.types.CBufRet.f32 %9451, 3
  %9453 = extractvalue %dx.types.CBufRet.f32 %9451, 0
  %9454 = extractvalue %dx.types.CBufRet.f32 %9451, 1
  %9455 = extractvalue %dx.types.CBufRet.f32 %9451, 2
  %9456 = fcmp fast olt float %9455, -5.000000e-01
  %9457 = call float @dx.op.dot3.f32(i32 55, float %9417, float %9418, float %9419, float %9417, float %9418, float %9419)  ; Dot3(ax,ay,az,bx,by,bz)
  %9458 = call float @dx.op.unary.f32(i32 25, float %9457)  ; Rsqrt(value)
  %9459 = fmul fast float %9458, %9457
  %9460 = fmul fast float %9458, %9417
  %9461 = fmul fast float %9458, %9418
  %9462 = fmul fast float %9458, %9419
  %9463 = fadd fast float %9459, %9433
  %9464 = call float @dx.op.dot3.f32(i32 55, float %9460, float %9461, float %9462, float %9430, float %9431, float %9432)  ; Dot3(ax,ay,az,bx,by,bz)
  %9465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9466 = extractvalue %dx.types.CBufRet.i32 %9465, 1
  %9467 = and i32 %9466, 1
  %9468 = icmp ne i32 %9467, 0
  %9469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9470 = extractvalue %dx.types.CBufRet.f32 %9469, 2
  %9471 = fcmp fast ogt float %9470, 0.000000e+00
  %9472 = and i1 %9468, %9471
  br i1 %9472, label %9473, label %9879, !dx.controlflow.hints !135

; <label>:9473                                    ; preds = %9428
  %9474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9475 = extractvalue %dx.types.CBufRet.f32 %9474, 3
  %9476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9477 = extractvalue %dx.types.CBufRet.f32 %9476, 2
  %9478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9479 = extractvalue %dx.types.CBufRet.f32 %9478, 2
  %9480 = fsub fast float %9477, %9479
  %9481 = and i32 %9466, 2
  %9482 = extractvalue %dx.types.CBufRet.i32 %9465, 0
  %9483 = call i32 @dx.op.binary.i32(i32 40, i32 %9482, i32 3)  ; UMin(a,b)
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 0
  %9486 = extractvalue %dx.types.CBufRet.f32 %9484, 1
  %9487 = extractvalue %dx.types.CBufRet.f32 %9478, 0
  %9488 = extractvalue %dx.types.CBufRet.f32 %9478, 1
  %9489 = fsub fast float %9485, %9487
  %9490 = fsub fast float %9486, %9488
  %9491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9492 = extractvalue %dx.types.CBufRet.f32 %9491, 0
  %9493 = fcmp fast ogt float %9492, 0.000000e+00
  %9494 = fsub fast float -0.000000e+00, %9489
  %9495 = fsub fast float -0.000000e+00, %9490
  %9496 = call float @dx.op.dot2.f32(i32 54, float %9460, float %9461, float %9460, float %9461)  ; Dot2(ax,ay,bx,by)
  %9497 = call float @dx.op.dot2.f32(i32 54, float %9460, float %9461, float %9494, float %9495)  ; Dot2(ax,ay,bx,by)
  %9498 = fmul fast float %9497, 2.000000e+00
  %9499 = call float @dx.op.dot2.f32(i32 54, float %9494, float %9495, float %9494, float %9495)  ; Dot2(ax,ay,bx,by)
  %9500 = fmul fast float %9492, %9492
  %9501 = fsub fast float %9499, %9500
  %9502 = fmul fast float %9498, %9498
  %9503 = fmul fast float %9496, 4.000000e+00
  %9504 = fmul fast float %9503, %9501
  %9505 = fsub fast float %9502, %9504
  %9506 = fcmp fast ogt float %9505, 0.000000e+00
  br i1 %9506, label %9507, label %9522

; <label>:9507                                    ; preds = %9473
  %9508 = fcmp fast ogt float %9498, 0.000000e+00
  %9509 = call float @dx.op.unary.f32(i32 24, float %9505)  ; Sqrt(value)
  %9510 = fsub fast float -0.000000e+00, %9509
  %9511 = select i1 %9508, float %9509, float %9510
  %9512 = fadd fast float %9511, %9498
  %9513 = fmul float %9512, -5.000000e-01
  %9514 = fdiv fast float %9513, %9496
  %9515 = call float @dx.op.binary.f32(i32 35, float %9514, float 0.000000e+00)  ; FMax(a,b)
  %9516 = call float @dx.op.binary.f32(i32 36, float %9459, float %9515)  ; FMin(a,b)
  %9517 = fdiv fast float %9501, %9513
  %9518 = call float @dx.op.binary.f32(i32 35, float %9517, float 0.000000e+00)  ; FMax(a,b)
  %9519 = call float @dx.op.binary.f32(i32 36, float %9459, float %9518)  ; FMin(a,b)
  %9520 = call float @dx.op.binary.f32(i32 36, float %9516, float %9519)  ; FMin(a,b)
  %9521 = call float @dx.op.binary.f32(i32 35, float %9516, float %9519)  ; FMax(a,b)
  br label %9522

; <label>:9522                                    ; preds = %9507, %9473
  %9523 = phi float [ %9521, %9507 ], [ -1.000000e+00, %9473 ]
  %9524 = phi float [ %9520, %9507 ], [ -1.000000e+00, %9473 ]
  %9525 = phi i1 [ true, %9507 ], [ false, %9473 ]
  %9526 = and i1 %9493, %9525
  br i1 %9526, label %9527, label %9529

; <label>:9527                                    ; preds = %9522
  %9528 = fcmp fast oeq float %9524, %9523
  br i1 %9528, label %9832, label %9530

; <label>:9529                                    ; preds = %9522
  br i1 %9493, label %9832, label %9530

; <label>:9530                                    ; preds = %9529, %9527
  %9531 = phi float [ %9459, %9529 ], [ %9523, %9527 ]
  %9532 = phi float [ 0.000000e+00, %9529 ], [ %9524, %9527 ]
  %9533 = icmp ne i32 %9481, 0
  %9534 = fmul fast float %9531, %9462
  %9535 = fadd fast float %9534, %9475
  %9536 = fmul fast float %9535, %9531
  %9537 = select i1 %9533, float 0.000000e+00, float %9536
  %9538 = fcmp fast oeq float %9462, 0.000000e+00
  %9539 = fdiv fast float %9480, %9462
  %9540 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9539)  ; FMax(a,b)
  %9541 = select i1 %9538, float %9531, float %9540
  %9542 = call float @dx.op.binary.f32(i32 36, float %9531, float %9541)  ; FMin(a,b)
  %9543 = fcmp fast ogt float %9462, 0.000000e+00
  %9544 = fcmp fast olt float %9480, 0.000000e+00
  br i1 %9543, label %9545, label %9602

; <label>:9545                                    ; preds = %9530
  %9546 = icmp eq i32 %9481, 0
  br i1 %9544, label %9547, label %9591

; <label>:9547                                    ; preds = %9545
  %9548 = select i1 %9546, float %9531, float 0.000000e+00
  %9549 = fsub fast float -0.000000e+00, %9548
  %9550 = call float @dx.op.unary.f32(i32 6, float %9549)  ; FAbs(value)
  %9551 = fmul fast float %9548, %9462
  %9552 = fadd fast float %9551, %9475
  %9553 = fmul fast float %9550, %9552
  %9554 = fsub fast float %9537, %9553
  %9555 = fsub fast float %9531, %9550
  %9556 = select i1 %9546, float %9555, float 0.000000e+00
  %9557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9558 = extractvalue %dx.types.CBufRet.f32 %9557, 0
  %9559 = extractvalue %dx.types.CBufRet.f32 %9557, 1
  %9560 = extractvalue %dx.types.CBufRet.f32 %9557, 2
  %9561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9561, 0
  %9563 = extractvalue %dx.types.CBufRet.f32 %9561, 1
  %9564 = extractvalue %dx.types.CBufRet.f32 %9561, 2
  %9565 = extractvalue %dx.types.CBufRet.f32 %9561, 3
  %9566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9567 = extractvalue %dx.types.CBufRet.f32 %9566, 3
  %9568 = call float @dx.op.binary.f32(i32 36, float %9554, float %9567)  ; FMin(a,b)
  %9569 = fmul fast float %9565, %9556
  %9570 = call float @dx.op.unary.f32(i32 7, float %9569)  ; Saturate(value)
  %9571 = fsub fast float %9562, %9558
  %9572 = fsub fast float %9563, %9559
  %9573 = fsub fast float %9564, %9560
  %9574 = fmul fast float %9570, %9571
  %9575 = fmul fast float %9570, %9572
  %9576 = fmul fast float %9570, %9573
  %9577 = fadd fast float %9574, %9558
  %9578 = fadd fast float %9575, %9559
  %9579 = fadd fast float %9576, %9560
  %9580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.f32 %9580, 0
  %9582 = extractvalue %dx.types.CBufRet.f32 %9580, 1
  %9583 = fadd fast float %9582, %9581
  %9584 = call float @dx.op.unary.f32(i32 7, float %9583)  ; Saturate(value)
  %9585 = extractvalue %dx.types.CBufRet.f32 %9580, 2
  %9586 = extractvalue %dx.types.CBufRet.f32 %9580, 3
  %9587 = fadd fast float %9586, %9585
  %9588 = call float @dx.op.unary.f32(i32 7, float %9587)  ; Saturate(value)
  %9589 = fmul fast float %9584, %9568
  %9590 = fmul fast float %9589, %9588
  br label %9832

; <label>:9591                                    ; preds = %9545
  br i1 %9546, label %9592, label %9613

; <label>:9592                                    ; preds = %9591
  %9593 = call float @dx.op.binary.f32(i32 36, float %9542, float %9532)  ; FMin(a,b)
  %9594 = fsub fast float %9542, %9593
  %9595 = fsub fast float %9594, %9531
  %9596 = call float @dx.op.unary.f32(i32 6, float %9595)  ; FAbs(value)
  %9597 = fadd fast float %9594, %9531
  %9598 = fmul fast float %9597, %9462
  %9599 = fadd fast float %9598, %9475
  %9600 = fmul fast float %9599, %9596
  %9601 = fsub fast float %9537, %9600
  br label %9613

; <label>:9602                                    ; preds = %9530
  br i1 %9544, label %9603, label %9613

; <label>:9603                                    ; preds = %9602
  %9604 = call float @dx.op.binary.f32(i32 35, float %9532, float %9542)  ; FMax(a,b)
  %9605 = icmp eq i32 %9481, 0
  %9606 = select i1 %9605, float %9542, float 0.000000e+00
  %9607 = fsub fast float -0.000000e+00, %9606
  %9608 = call float @dx.op.unary.f32(i32 6, float %9607)  ; FAbs(value)
  %9609 = fmul fast float %9606, %9462
  %9610 = fadd fast float %9609, %9475
  %9611 = fmul fast float %9608, %9610
  %9612 = fsub fast float %9537, %9611
  br label %9613

; <label>:9613                                    ; preds = %9603, %9602, %9592, %9591
  %9614 = phi float [ %9532, %9591 ], [ %9532, %9592 ], [ %9604, %9603 ], [ %9532, %9602 ]
  %9615 = phi float [ 0.000000e+00, %9591 ], [ %9596, %9592 ], [ %9608, %9603 ], [ 0.000000e+00, %9602 ]
  %9616 = phi float [ %9537, %9591 ], [ %9601, %9592 ], [ %9612, %9603 ], [ %9537, %9602 ]
  %9617 = phi float [ %9542, %9591 ], [ %9542, %9592 ], [ %9531, %9603 ], [ %9531, %9602 ]
  %9618 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %9618, align 4, !tbaa !122, !noalias !136
  %9619 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %9619, align 4, !tbaa !122, !noalias !136
  %9620 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %9620, align 4, !tbaa !122, !noalias !136
  %9621 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9621, align 4, !tbaa !122, !noalias !136
  %9622 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9622, align 4, !tbaa !122, !noalias !136
  %9623 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9623, align 4, !tbaa !122, !noalias !136
  %9624 = icmp sgt i32 %9483, 0
  br i1 %9624, label %9625, label %9686

; <label>:9625                                    ; preds = %9613
  br label %9626

; <label>:9626                                    ; preds = %9675, %9625
  %9627 = phi i32 [ %9676, %9675 ], [ 0, %9625 ]
  %9628 = phi i32 [ %9677, %9675 ], [ 0, %9625 ]
  %9629 = add nuw i32 %9628, 171
  %9630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9629)  ; CBufferLoadLegacy(handle,regIndex)
  %9631 = extractvalue %dx.types.CBufRet.f32 %9630, 0
  %9632 = extractvalue %dx.types.CBufRet.f32 %9630, 1
  %9633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9634 = extractvalue %dx.types.CBufRet.f32 %9633, 0
  %9635 = extractvalue %dx.types.CBufRet.f32 %9633, 1
  %9636 = fsub fast float %9631, %9634
  %9637 = fsub fast float %9632, %9635
  %9638 = extractvalue %dx.types.CBufRet.f32 %9630, 2
  %9639 = fsub fast float -0.000000e+00, %9636
  %9640 = fsub fast float -0.000000e+00, %9637
  %9641 = call float @dx.op.dot2.f32(i32 54, float %9460, float %9461, float %9639, float %9640)  ; Dot2(ax,ay,bx,by)
  %9642 = fmul fast float %9641, 2.000000e+00
  %9643 = call float @dx.op.dot2.f32(i32 54, float %9639, float %9640, float %9639, float %9640)  ; Dot2(ax,ay,bx,by)
  %9644 = fmul fast float %9638, %9638
  %9645 = fsub fast float %9643, %9644
  %9646 = fmul fast float %9642, %9642
  %9647 = fmul fast float %9503, %9645
  %9648 = fsub fast float %9646, %9647
  %9649 = fcmp fast ogt float %9648, 0.000000e+00
  br i1 %9649, label %9650, label %9665

; <label>:9650                                    ; preds = %9626
  %9651 = fcmp fast ogt float %9642, 0.000000e+00
  %9652 = call float @dx.op.unary.f32(i32 24, float %9648)  ; Sqrt(value)
  %9653 = fsub fast float -0.000000e+00, %9652
  %9654 = select i1 %9651, float %9652, float %9653
  %9655 = fadd fast float %9654, %9642
  %9656 = fmul float %9655, -5.000000e-01
  %9657 = fdiv fast float %9656, %9496
  %9658 = call float @dx.op.binary.f32(i32 35, float %9657, float 0.000000e+00)  ; FMax(a,b)
  %9659 = call float @dx.op.binary.f32(i32 36, float %9531, float %9658)  ; FMin(a,b)
  %9660 = fdiv fast float %9645, %9656
  %9661 = call float @dx.op.binary.f32(i32 35, float %9660, float 0.000000e+00)  ; FMax(a,b)
  %9662 = call float @dx.op.binary.f32(i32 36, float %9531, float %9661)  ; FMin(a,b)
  %9663 = call float @dx.op.binary.f32(i32 36, float %9659, float %9662)  ; FMin(a,b)
  %9664 = call float @dx.op.binary.f32(i32 35, float %9659, float %9662)  ; FMax(a,b)
  br label %9665

; <label>:9665                                    ; preds = %9650, %9626
  %9666 = phi float [ %9664, %9650 ], [ -1.000000e+00, %9626 ]
  %9667 = phi float [ %9663, %9650 ], [ -1.000000e+00, %9626 ]
  %9668 = phi i1 [ true, %9650 ], [ false, %9626 ]
  br i1 %9668, label %9669, label %9675

; <label>:9669                                    ; preds = %9665
  %9670 = call float @dx.op.binary.f32(i32 35, float %9614, float %9667)  ; FMax(a,b)
  %9671 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %9628
  store float %9670, float* %9671, align 4, !tbaa !122, !noalias !136
  %9672 = call float @dx.op.binary.f32(i32 35, float %9614, float %9666)  ; FMax(a,b)
  %9673 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9628
  store float %9672, float* %9673, align 4, !tbaa !122, !noalias !136
  %9674 = add nsw i32 %9627, 1
  br label %9675

; <label>:9675                                    ; preds = %9669, %9665
  %9676 = phi i32 [ %9674, %9669 ], [ %9627, %9665 ]
  %9677 = add nuw nsw i32 %9628, 1
  %9678 = icmp eq i32 %9677, %9483
  br i1 %9678, label %9679, label %9626

; <label>:9679                                    ; preds = %9675
  %9680 = load float, float* %9620, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9681 = load float, float* %9619, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9682 = load float, float* %9618, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9683 = load float, float* %9623, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9684 = load float, float* %9622, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9685 = load float, float* %9621, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9686

; <label>:9686                                    ; preds = %9679, %9613
  %9687 = phi float [ -1.000000e+00, %9613 ], [ %9685, %9679 ]
  %9688 = phi float [ -1.000000e+00, %9613 ], [ %9684, %9679 ]
  %9689 = phi float [ -1.000000e+00, %9613 ], [ %9683, %9679 ]
  %9690 = phi float [ -1.000000e+00, %9613 ], [ %9682, %9679 ]
  %9691 = phi float [ -1.000000e+00, %9613 ], [ %9681, %9679 ]
  %9692 = phi float [ -1.000000e+00, %9613 ], [ %9680, %9679 ]
  %9693 = phi i32 [ 0, %9613 ], [ %9676, %9679 ]
  %9694 = call float @dx.op.binary.f32(i32 36, float %9691, float %9692)  ; FMin(a,b)
  %9695 = call float @dx.op.binary.f32(i32 36, float %9690, float %9694)  ; FMin(a,b)
  %9696 = call float @dx.op.binary.f32(i32 35, float %9690, float %9691)  ; FMax(a,b)
  %9697 = call float @dx.op.binary.f32(i32 36, float %9696, float %9692)  ; FMin(a,b)
  %9698 = call float @dx.op.binary.f32(i32 36, float %9690, float %9691)  ; FMin(a,b)
  %9699 = call float @dx.op.binary.f32(i32 35, float %9698, float %9697)  ; FMax(a,b)
  %9700 = call float @dx.op.binary.f32(i32 35, float %9691, float %9692)  ; FMax(a,b)
  %9701 = call float @dx.op.binary.f32(i32 35, float %9690, float %9700)  ; FMax(a,b)
  store float %9695, float* %9618, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9699, float* %9619, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9701, float* %9620, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9702 = call float @dx.op.binary.f32(i32 36, float %9688, float %9689)  ; FMin(a,b)
  %9703 = call float @dx.op.binary.f32(i32 36, float %9687, float %9702)  ; FMin(a,b)
  %9704 = call float @dx.op.binary.f32(i32 35, float %9687, float %9688)  ; FMax(a,b)
  %9705 = call float @dx.op.binary.f32(i32 36, float %9704, float %9689)  ; FMin(a,b)
  %9706 = call float @dx.op.binary.f32(i32 36, float %9687, float %9688)  ; FMin(a,b)
  %9707 = call float @dx.op.binary.f32(i32 35, float %9706, float %9705)  ; FMax(a,b)
  %9708 = call float @dx.op.binary.f32(i32 35, float %9688, float %9689)  ; FMax(a,b)
  %9709 = call float @dx.op.binary.f32(i32 35, float %9687, float %9708)  ; FMax(a,b)
  store float %9703, float* %9621, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9707, float* %9622, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9709, float* %9623, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9710 = sub nsw i32 3, %9693
  %9711 = icmp sgt i32 %9710, 2
  br i1 %9711, label %9712, label %9750

; <label>:9712                                    ; preds = %9686
  %9713 = icmp eq i32 %9481, 0
  %9714 = fsub fast float %9531, %9615
  %9715 = select i1 %9713, float %9714, float %9615
  %9716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.f32 %9716, 0
  %9718 = extractvalue %dx.types.CBufRet.f32 %9716, 1
  %9719 = extractvalue %dx.types.CBufRet.f32 %9716, 2
  %9720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9721 = extractvalue %dx.types.CBufRet.f32 %9720, 0
  %9722 = extractvalue %dx.types.CBufRet.f32 %9720, 1
  %9723 = extractvalue %dx.types.CBufRet.f32 %9720, 2
  %9724 = extractvalue %dx.types.CBufRet.f32 %9720, 3
  %9725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9726 = extractvalue %dx.types.CBufRet.f32 %9725, 3
  %9727 = call float @dx.op.binary.f32(i32 36, float %9616, float %9726)  ; FMin(a,b)
  %9728 = fmul fast float %9724, %9715
  %9729 = call float @dx.op.unary.f32(i32 7, float %9728)  ; Saturate(value)
  %9730 = fsub fast float %9721, %9717
  %9731 = fsub fast float %9722, %9718
  %9732 = fsub fast float %9723, %9719
  %9733 = fmul fast float %9729, %9730
  %9734 = fmul fast float %9729, %9731
  %9735 = fmul fast float %9729, %9732
  %9736 = fadd fast float %9733, %9717
  %9737 = fadd fast float %9734, %9718
  %9738 = fadd fast float %9735, %9719
  %9739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9740 = extractvalue %dx.types.CBufRet.f32 %9739, 0
  %9741 = extractvalue %dx.types.CBufRet.f32 %9739, 1
  %9742 = fadd fast float %9741, %9740
  %9743 = call float @dx.op.unary.f32(i32 7, float %9742)  ; Saturate(value)
  %9744 = extractvalue %dx.types.CBufRet.f32 %9739, 2
  %9745 = extractvalue %dx.types.CBufRet.f32 %9739, 3
  %9746 = fadd fast float %9745, %9744
  %9747 = call float @dx.op.unary.f32(i32 7, float %9746)  ; Saturate(value)
  %9748 = fmul fast float %9743, %9727
  %9749 = fmul fast float %9748, %9747
  br label %9832

; <label>:9750                                    ; preds = %9686
  %9751 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %9710
  %9752 = load float, float* %9751, align 4, !tbaa !122, !noalias !136
  %9753 = fcmp fast olt float %9752, %9617
  %9754 = icmp sgt i32 %9693, 0
  %9755 = and i1 %9754, %9753
  br i1 %9755, label %9756, label %9793

; <label>:9756                                    ; preds = %9750
  br label %9757

; <label>:9757                                    ; preds = %9786, %9756
  %9758 = phi float [ %9787, %9786 ], [ %9615, %9756 ]
  %9759 = phi float [ %9788, %9786 ], [ %9616, %9756 ]
  %9760 = phi float [ %9768, %9786 ], [ %9752, %9756 ]
  %9761 = phi i32 [ %9765, %9786 ], [ %9710, %9756 ]
  %9762 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9761
  %9763 = load float, float* %9762, align 4, !tbaa !122, !noalias !136
  %9764 = icmp slt i32 %9761, 2
  %9765 = add nsw i32 %9761, 1
  %9766 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %9765
  %9767 = load float, float* %9766, align 4, !tbaa !122, !noalias !136
  %9768 = select i1 %9764, float %9767, float %9531
  %9769 = call float @dx.op.binary.f32(i32 36, float %9768, float %9763)  ; FMin(a,b)
  %9770 = call float @dx.op.binary.f32(i32 36, float %9617, float %9769)  ; FMin(a,b)
  %9771 = icmp eq i32 %9481, 0
  %9772 = fadd fast float %9770, %9760
  %9773 = fmul fast float %9772, %9462
  %9774 = fadd fast float %9773, %9475
  br i1 %9771, label %9780, label %9775

; <label>:9775                                    ; preds = %9757
  %9776 = fsub fast float %9770, %9760
  %9777 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9776)  ; FMax(a,b)
  %9778 = fmul fast float %9777, %9774
  %9779 = fadd fast float %9778, %9759
  br label %9786

; <label>:9780                                    ; preds = %9757
  %9781 = fsub fast float %9760, %9770
  %9782 = call float @dx.op.unary.f32(i32 6, float %9781)  ; FAbs(value)
  %9783 = fadd fast float %9782, %9758
  %9784 = fmul fast float %9782, %9774
  %9785 = fsub fast float %9759, %9784
  br label %9786

; <label>:9786                                    ; preds = %9780, %9775
  %9787 = phi float [ %9777, %9775 ], [ %9783, %9780 ]
  %9788 = phi float [ %9779, %9775 ], [ %9785, %9780 ]
  %9789 = fcmp fast olt float %9768, %9617
  %9790 = icmp slt i32 %9765, 3
  %9791 = and i1 %9790, %9789
  br i1 %9791, label %9757, label %9792

; <label>:9792                                    ; preds = %9786
  br label %9793

; <label>:9793                                    ; preds = %9792, %9750
  %9794 = phi float [ %9615, %9750 ], [ %9787, %9792 ]
  %9795 = phi float [ %9616, %9750 ], [ %9788, %9792 ]
  %9796 = fsub fast float %9531, %9794
  %9797 = select i1 %9533, float %9794, float %9796
  %9798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9799 = extractvalue %dx.types.CBufRet.f32 %9798, 0
  %9800 = extractvalue %dx.types.CBufRet.f32 %9798, 1
  %9801 = extractvalue %dx.types.CBufRet.f32 %9798, 2
  %9802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9803 = extractvalue %dx.types.CBufRet.f32 %9802, 0
  %9804 = extractvalue %dx.types.CBufRet.f32 %9802, 1
  %9805 = extractvalue %dx.types.CBufRet.f32 %9802, 2
  %9806 = extractvalue %dx.types.CBufRet.f32 %9802, 3
  %9807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9808 = extractvalue %dx.types.CBufRet.f32 %9807, 3
  %9809 = call float @dx.op.binary.f32(i32 36, float %9795, float %9808)  ; FMin(a,b)
  %9810 = fmul fast float %9806, %9797
  %9811 = call float @dx.op.unary.f32(i32 7, float %9810)  ; Saturate(value)
  %9812 = fsub fast float %9803, %9799
  %9813 = fsub fast float %9804, %9800
  %9814 = fsub fast float %9805, %9801
  %9815 = fmul fast float %9811, %9812
  %9816 = fmul fast float %9811, %9813
  %9817 = fmul fast float %9811, %9814
  %9818 = fadd fast float %9815, %9799
  %9819 = fadd fast float %9816, %9800
  %9820 = fadd fast float %9817, %9801
  %9821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9822 = extractvalue %dx.types.CBufRet.f32 %9821, 0
  %9823 = extractvalue %dx.types.CBufRet.f32 %9821, 1
  %9824 = fadd fast float %9823, %9822
  %9825 = call float @dx.op.unary.f32(i32 7, float %9824)  ; Saturate(value)
  %9826 = extractvalue %dx.types.CBufRet.f32 %9821, 2
  %9827 = extractvalue %dx.types.CBufRet.f32 %9821, 3
  %9828 = fadd fast float %9827, %9826
  %9829 = call float @dx.op.unary.f32(i32 7, float %9828)  ; Saturate(value)
  %9830 = fmul fast float %9825, %9809
  %9831 = fmul fast float %9830, %9829
  br label %9832

; <label>:9832                                    ; preds = %9793, %9712, %9547, %9529, %9527
  %9833 = phi float [ %9556, %9547 ], [ %9715, %9712 ], [ %9797, %9793 ], [ 0.000000e+00, %9527 ], [ 0.000000e+00, %9529 ]
  %9834 = phi float [ %9590, %9547 ], [ %9749, %9712 ], [ %9831, %9793 ], [ 0.000000e+00, %9527 ], [ 0.000000e+00, %9529 ]
  %9835 = phi float [ %9577, %9547 ], [ %9736, %9712 ], [ %9818, %9793 ], [ 0.000000e+00, %9527 ], [ 0.000000e+00, %9529 ]
  %9836 = phi float [ %9578, %9547 ], [ %9737, %9712 ], [ %9819, %9793 ], [ 0.000000e+00, %9527 ], [ 0.000000e+00, %9529 ]
  %9837 = phi float [ %9579, %9547 ], [ %9738, %9712 ], [ %9820, %9793 ], [ 0.000000e+00, %9527 ], [ 0.000000e+00, %9529 ]
  %9838 = fmul fast float %9470, %9834
  %9839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9840 = extractvalue %dx.types.CBufRet.f32 %9839, 2
  %9841 = fsub fast float %9477, %9840
  %9842 = fcmp fast olt float %9838, -2.000000e+01
  %9843 = call float @dx.op.unary.f32(i32 21, float %9838)  ; Exp(value)
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 2
  %9846 = extractvalue %dx.types.CBufRet.f32 %9844, 3
  %9847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9848 = extractvalue %dx.types.CBufRet.f32 %9847, 2
  %9849 = fmul fast float %9846, %9841
  %9850 = call float @dx.op.unary.f32(i32 7, float %9849)  ; Saturate(value)
  %9851 = fsub fast float 1.000000e+00, %9850
  %9852 = fmul fast float %9462, 5.000000e-01
  %9853 = fadd fast float %9852, 5.000000e-01
  %9854 = call float @dx.op.unary.f32(i32 7, float %9853)  ; Saturate(value)
  %9855 = fsub fast float 1.000000e+00, %9854
  %9856 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9851)  ; FMax(a,b)
  %9857 = fdiv fast float %9855, %9856
  %9858 = fsub fast float %9841, %9419
  %9859 = call float @dx.op.unary.f32(i32 6, float %9858)  ; FAbs(value)
  %9860 = fmul fast float %9859, %9845
  %9861 = call float @dx.op.unary.f32(i32 7, float %9857)  ; Saturate(value)
  %9862 = fsub fast float 1.000000e+00, %9860
  %9863 = fmul fast float %9862, %9861
  %9864 = fadd fast float %9863, %9860
  %9865 = fmul fast float %9848, %9841
  %9866 = call float @dx.op.unary.f32(i32 7, float %9865)  ; Saturate(value)
  %9867 = fsub fast float 1.000000e+00, %9864
  %9868 = fmul fast float %9867, %9866
  %9869 = fadd fast float %9868, %9864
  %9870 = call float @dx.op.unary.f32(i32 7, float %9869)  ; Saturate(value)
  %9871 = fadd fast float %9843, -1.000000e+00
  %9872 = select i1 %9842, float -1.000000e+00, float %9871
  %9873 = fmul fast float %9870, %9872
  %9874 = fadd fast float %9873, 1.000000e+00
  %9875 = fsub fast float -0.000000e+00, %9873
  %9876 = fmul fast float %9835, %9875
  %9877 = fmul fast float %9836, %9875
  %9878 = fmul fast float %9837, %9875
  br label %9879

; <label>:9879                                    ; preds = %9832, %9428
  %9880 = phi float [ %9833, %9832 ], [ 0.000000e+00, %9428 ]
  %9881 = phi float [ %9874, %9832 ], [ 1.000000e+00, %9428 ]
  %9882 = phi float [ %9876, %9832 ], [ 0.000000e+00, %9428 ]
  %9883 = phi float [ %9877, %9832 ], [ 0.000000e+00, %9428 ]
  %9884 = phi float [ %9878, %9832 ], [ 0.000000e+00, %9428 ]
  %9885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9886 = extractvalue %dx.types.CBufRet.f32 %9885, 1
  %9887 = fsub fast float 1.000000e+00, %9881
  %9888 = fmul fast float %9887, %9463
  %9889 = fmul fast float %9888, %9886
  %9890 = fsub fast float %9463, %9889
  br i1 %9456, label %9891, label %9920, !dx.controlflow.hints !172

; <label>:9891                                    ; preds = %9879
  %9892 = fmul fast float %9464, %9453
  %9893 = fadd fast float %9892, %9454
  %9894 = call float @dx.op.unary.f32(i32 7, float %9893)  ; Saturate(value)
  %9895 = fmul fast float %9435, %9890
  %9896 = fsub fast float -0.000000e+00, %9895
  %9897 = fmul fast float %9436, %9890
  %9898 = fsub fast float -0.000000e+00, %9897
  %9899 = call float @dx.op.unary.f32(i32 21, float %9896)  ; Exp(value)
  %9900 = call float @dx.op.unary.f32(i32 21, float %9898)  ; Exp(value)
  %9901 = call float @dx.op.binary.f32(i32 35, float %9443, float %9899)  ; FMax(a,b)
  %9902 = call float @dx.op.binary.f32(i32 35, float %9443, float %9900)  ; FMax(a,b)
  %9903 = fsub fast float %9902, %9901
  %9904 = fmul fast float %9903, %9894
  %9905 = fadd fast float %9904, %9901
  %9906 = call float @dx.op.unary.f32(i32 7, float %9905)  ; Saturate(value)
  %9907 = fsub fast float %9440, %9445
  %9908 = fsub fast float %9441, %9446
  %9909 = fsub fast float %9442, %9447
  %9910 = fmul fast float %9894, %9907
  %9911 = fmul fast float %9894, %9908
  %9912 = fmul fast float %9894, %9909
  %9913 = fadd fast float %9910, %9445
  %9914 = fadd fast float %9911, %9446
  %9915 = fadd fast float %9912, %9447
  %9916 = fsub fast float 1.000000e+00, %9906
  %9917 = fmul fast float %9916, %9913
  %9918 = fmul fast float %9916, %9914
  %9919 = fmul fast float %9916, %9915
  br label %9979

; <label>:9920                                    ; preds = %9879
  %9921 = fmul fast float %9890, %9452
  %9922 = call float @dx.op.unary.f32(i32 7, float %9921)  ; Saturate(value)
  %9923 = fsub fast float 2.000000e+00, %9922
  %9924 = fmul fast float %9922, 9.921875e-01
  %9925 = fmul fast float %9924, %9923
  %9926 = fadd fast float %9925, 3.906250e-03
  %9927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9926, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9928 = extractvalue %dx.types.ResRet.f32 %9927, 0
  %9929 = fsub fast float %9922, %9928
  %9930 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9929)  ; FMax(a,b)
  %9931 = fmul fast float %9438, %9419
  %9932 = call float @dx.op.unary.f32(i32 6, float %9931)  ; FAbs(value)
  %9933 = fcmp fast ogt float %9932, 0x3EB0C6F7A0000000
  br i1 %9933, label %9934, label %9940, !dx.controlflow.hints !173

; <label>:9934                                    ; preds = %9920
  %9935 = fmul fast float %9931, 0xBFF7154760000000
  %9936 = call float @dx.op.unary.f32(i32 21, float %9935)  ; Exp(value)
  %9937 = fsub fast float 1.000000e+00, %9936
  %9938 = fdiv fast float %9937, %9931
  %9939 = fmul fast float %9938, %9448
  br label %9940

; <label>:9940                                    ; preds = %9934, %9920
  %9941 = phi float [ %9939, %9934 ], [ %9448, %9920 ]
  %9942 = fadd fast float %9941, %9450
  %9943 = fmul fast float %9942, %9930
  %9944 = fmul fast float %9435, %9943
  %9945 = fsub fast float -0.000000e+00, %9944
  %9946 = fmul fast float %9436, %9943
  %9947 = fsub fast float -0.000000e+00, %9946
  %9948 = fmul fast float %9437, %9943
  %9949 = fsub fast float -0.000000e+00, %9948
  %9950 = call float @dx.op.unary.f32(i32 21, float %9945)  ; Exp(value)
  %9951 = call float @dx.op.unary.f32(i32 21, float %9947)  ; Exp(value)
  %9952 = call float @dx.op.unary.f32(i32 21, float %9949)  ; Exp(value)
  %9953 = fmul fast float %9464, %9464
  %9954 = fadd fast float %9953, 1.000000e+00
  %9955 = fmul fast float %9954, 0x3FAE8EC8A0000000
  %9956 = fmul fast float %9955, %9445
  %9957 = fmul fast float %9955, %9446
  %9958 = fmul fast float %9955, %9447
  %9959 = fmul fast float %9464, %9443
  %9960 = fsub fast float 1.000000e+00, %9959
  %9961 = fmul fast float %9443, %9443
  %9962 = fsub fast float 1.000000e+00, %9961
  %9963 = fmul fast float %9962, 0x3FB45F3060000000
  %9964 = fmul fast float %9960, %9960
  %9965 = fdiv fast float 1.000000e+00, %9964
  %9966 = fmul fast float %9963, %9965
  %9967 = fmul fast float %9966, %9440
  %9968 = fmul fast float %9966, %9441
  %9969 = fmul fast float %9966, %9442
  %9970 = fadd fast float %9967, %9956
  %9971 = fadd fast float %9968, %9957
  %9972 = fadd fast float %9969, %9958
  %9973 = fsub fast float 1.000000e+00, %9950
  %9974 = fsub fast float 1.000000e+00, %9951
  %9975 = fsub fast float 1.000000e+00, %9952
  %9976 = fmul fast float %9970, %9973
  %9977 = fmul fast float %9971, %9974
  %9978 = fmul fast float %9972, %9975
  br label %9979

; <label>:9979                                    ; preds = %9940, %9891
  %9980 = phi float [ %9917, %9891 ], [ %9976, %9940 ]
  %9981 = phi float [ %9918, %9891 ], [ %9977, %9940 ]
  %9982 = phi float [ %9919, %9891 ], [ %9978, %9940 ]
  %9983 = phi float [ %9906, %9891 ], [ %9950, %9940 ]
  %9984 = phi float [ %9906, %9891 ], [ %9951, %9940 ]
  %9985 = phi float [ %9906, %9891 ], [ %9952, %9940 ]
  br i1 %9472, label %9986, label %10184, !dx.controlflow.hints !174

; <label>:9986                                    ; preds = %9979
  %9987 = extractvalue %dx.types.CBufRet.f32 %9885, 0
  %9988 = fmul fast float %9987, %9887
  %9989 = fsub fast float %9882, %9980
  %9990 = fsub fast float %9883, %9981
  %9991 = fsub fast float %9884, %9982
  %9992 = fmul fast float %9988, %9989
  %9993 = fmul fast float %9988, %9990
  %9994 = fmul fast float %9988, %9991
  %9995 = fadd fast float %9992, %9980
  %9996 = fadd fast float %9993, %9981
  %9997 = fadd fast float %9994, %9982
  %9998 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9983)  ; FMax(a,b)
  %9999 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9984)  ; FMax(a,b)
  %10000 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9985)  ; FMax(a,b)
  %10001 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9881)  ; FMax(a,b)
  %10002 = call float @dx.op.binary.f32(i32 35, float %9880, float %9890)  ; FMax(a,b)
  %10003 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10002)  ; FMax(a,b)
  %10004 = fdiv fast float %9880, %10003
  %10005 = call float @dx.op.unary.f32(i32 7, float %10004)  ; Saturate(value)
  %10006 = fdiv fast float %9890, %10003
  %10007 = call float @dx.op.unary.f32(i32 7, float %10006)  ; Saturate(value)
  %10008 = fcmp fast une float %10001, 1.000000e+00
  br i1 %10008, label %10009, label %10022, !dx.controlflow.hints !175

; <label>:10009                                   ; preds = %9986
  %10010 = call float @dx.op.unary.f32(i32 23, float %10001)  ; Log(value)
  %10011 = fmul fast float %10010, 0x3FE62E4300000000
  %10012 = fmul fast float %9882, %10011
  %10013 = fsub fast float -0.000000e+00, %10012
  %10014 = fmul fast float %9883, %10011
  %10015 = fsub fast float -0.000000e+00, %10014
  %10016 = fmul fast float %9884, %10011
  %10017 = fsub fast float -0.000000e+00, %10016
  %10018 = fsub fast float 1.000000e+00, %10001
  %10019 = fdiv fast float %10013, %10018
  %10020 = fdiv fast float %10015, %10018
  %10021 = fdiv fast float %10017, %10018
  br label %10022

; <label>:10022                                   ; preds = %10009, %9986
  %10023 = phi float [ %10019, %10009 ], [ %9882, %9986 ]
  %10024 = phi float [ %10020, %10009 ], [ %9883, %9986 ]
  %10025 = phi float [ %10021, %10009 ], [ %9884, %9986 ]
  %10026 = phi float [ %10011, %10009 ], [ 0.000000e+00, %9986 ]
  %10027 = fcmp fast une float %9998, 1.000000e+00
  br i1 %10027, label %10028, label %10035, !dx.controlflow.hints !176

; <label>:10028                                   ; preds = %10022
  %10029 = call float @dx.op.unary.f32(i32 23, float %9998)  ; Log(value)
  %10030 = fmul fast float %10029, 0x3FE62E4300000000
  %10031 = fmul fast float %9995, %10030
  %10032 = fsub fast float -0.000000e+00, %10031
  %10033 = fsub fast float 1.000000e+00, %9998
  %10034 = fdiv fast float %10032, %10033
  br label %10035

; <label>:10035                                   ; preds = %10028, %10022
  %10036 = phi float [ %10034, %10028 ], [ %9995, %10022 ]
  %10037 = phi float [ %10030, %10028 ], [ 0.000000e+00, %10022 ]
  %10038 = fcmp fast une float %9999, 1.000000e+00
  br i1 %10038, label %10039, label %10046, !dx.controlflow.hints !176

; <label>:10039                                   ; preds = %10035
  %10040 = call float @dx.op.unary.f32(i32 23, float %9999)  ; Log(value)
  %10041 = fmul fast float %10040, 0x3FE62E4300000000
  %10042 = fmul fast float %9996, %10041
  %10043 = fsub fast float -0.000000e+00, %10042
  %10044 = fsub fast float 1.000000e+00, %9999
  %10045 = fdiv fast float %10043, %10044
  br label %10046

; <label>:10046                                   ; preds = %10039, %10035
  %10047 = phi float [ %10045, %10039 ], [ %9996, %10035 ]
  %10048 = phi float [ %10041, %10039 ], [ 0.000000e+00, %10035 ]
  %10049 = fcmp fast une float %10000, 1.000000e+00
  br i1 %10049, label %10050, label %10057, !dx.controlflow.hints !176

; <label>:10050                                   ; preds = %10046
  %10051 = call float @dx.op.unary.f32(i32 23, float %10000)  ; Log(value)
  %10052 = fmul fast float %10051, 0x3FE62E4300000000
  %10053 = fmul fast float %9997, %10052
  %10054 = fsub fast float -0.000000e+00, %10053
  %10055 = fsub fast float 1.000000e+00, %10000
  %10056 = fdiv fast float %10054, %10055
  br label %10057

; <label>:10057                                   ; preds = %10050, %10046
  %10058 = phi float [ %10056, %10050 ], [ %9997, %10046 ]
  %10059 = phi float [ %10052, %10050 ], [ 0.000000e+00, %10046 ]
  %10060 = fmul fast float %10023, %10007
  %10061 = fmul fast float %10024, %10007
  %10062 = fmul fast float %10025, %10007
  %10063 = fmul fast float %10026, %10007
  %10064 = fmul fast float %10036, %10005
  %10065 = fmul fast float %10047, %10005
  %10066 = fmul fast float %10058, %10005
  %10067 = fmul fast float %10037, %10005
  %10068 = fmul fast float %10048, %10005
  %10069 = fmul fast float %10059, %10005
  %10070 = fadd fast float %10064, %10060
  %10071 = fadd fast float %10065, %10061
  %10072 = fadd fast float %10066, %10062
  %10073 = fadd fast float %10067, %10063
  %10074 = fadd fast float %10068, %10063
  %10075 = fadd fast float %10069, %10063
  %10076 = fcmp fast une float %10073, 0.000000e+00
  br i1 %10076, label %10077, label %10084, !dx.controlflow.hints !177

; <label>:10077                                   ; preds = %10057
  %10078 = fmul fast float %10073, 0x3FF7154760000000
  %10079 = call float @dx.op.unary.f32(i32 21, float %10078)  ; Exp(value)
  %10080 = fsub fast float 1.000000e+00, %10079
  %10081 = fmul fast float %10070, %10080
  %10082 = fsub fast float -0.000000e+00, %10081
  %10083 = fdiv fast float %10082, %10073
  br label %10084

; <label>:10084                                   ; preds = %10077, %10057
  %10085 = phi float [ %10079, %10077 ], [ 1.000000e+00, %10057 ]
  %10086 = phi float [ %10083, %10077 ], [ %10070, %10057 ]
  %10087 = fcmp fast une float %10074, 0.000000e+00
  br i1 %10087, label %10088, label %10095, !dx.controlflow.hints !177

; <label>:10088                                   ; preds = %10084
  %10089 = fmul fast float %10074, 0x3FF7154760000000
  %10090 = call float @dx.op.unary.f32(i32 21, float %10089)  ; Exp(value)
  %10091 = fsub fast float 1.000000e+00, %10090
  %10092 = fmul fast float %10071, %10091
  %10093 = fsub fast float -0.000000e+00, %10092
  %10094 = fdiv fast float %10093, %10074
  br label %10095

; <label>:10095                                   ; preds = %10088, %10084
  %10096 = phi float [ %10090, %10088 ], [ 1.000000e+00, %10084 ]
  %10097 = phi float [ %10094, %10088 ], [ %10071, %10084 ]
  %10098 = fcmp fast une float %10075, 0.000000e+00
  br i1 %10098, label %10099, label %10106, !dx.controlflow.hints !177

; <label>:10099                                   ; preds = %10095
  %10100 = fmul fast float %10075, 0x3FF7154760000000
  %10101 = call float @dx.op.unary.f32(i32 21, float %10100)  ; Exp(value)
  %10102 = fsub fast float 1.000000e+00, %10101
  %10103 = fmul fast float %10072, %10102
  %10104 = fsub fast float -0.000000e+00, %10103
  %10105 = fdiv fast float %10104, %10075
  br label %10106

; <label>:10106                                   ; preds = %10099, %10095
  %10107 = phi float [ %10101, %10099 ], [ 1.000000e+00, %10095 ]
  %10108 = phi float [ %10105, %10099 ], [ %10072, %10095 ]
  %10109 = fcmp fast ogt float %10005, %10007
  br i1 %10109, label %10110, label %10130

; <label>:10110                                   ; preds = %10106
  %10111 = fsub fast float 1.000000e+00, %10007
  %10112 = fmul fast float %10023, %10111
  %10113 = fmul fast float %10024, %10111
  %10114 = fmul fast float %10025, %10111
  %10115 = fmul fast float %10026, %10111
  %10116 = fcmp fast une float %10115, 0.000000e+00
  br i1 %10116, label %10117, label %10168, !dx.controlflow.hints !178

; <label>:10117                                   ; preds = %10110
  %10118 = fmul fast float %10115, 0x3FF7154760000000
  %10119 = call float @dx.op.unary.f32(i32 21, float %10118)  ; Exp(value)
  %10120 = fsub fast float 1.000000e+00, %10119
  %10121 = fmul fast float %10112, %10120
  %10122 = fsub fast float -0.000000e+00, %10121
  %10123 = fmul fast float %10113, %10120
  %10124 = fsub fast float -0.000000e+00, %10123
  %10125 = fmul fast float %10114, %10120
  %10126 = fsub fast float -0.000000e+00, %10125
  %10127 = fdiv fast float %10122, %10115
  %10128 = fdiv fast float %10124, %10115
  %10129 = fdiv fast float %10126, %10115
  br label %10168

; <label>:10130                                   ; preds = %10106
  %10131 = fsub fast float 1.000000e+00, %10005
  %10132 = fmul fast float %10036, %10131
  %10133 = fmul fast float %10047, %10131
  %10134 = fmul fast float %10058, %10131
  %10135 = fmul fast float %10037, %10131
  %10136 = fmul fast float %10048, %10131
  %10137 = fmul fast float %10059, %10131
  %10138 = fcmp fast une float %10135, 0.000000e+00
  br i1 %10138, label %10139, label %10146, !dx.controlflow.hints !177

; <label>:10139                                   ; preds = %10130
  %10140 = fmul fast float %10135, 0x3FF7154760000000
  %10141 = call float @dx.op.unary.f32(i32 21, float %10140)  ; Exp(value)
  %10142 = fsub fast float 1.000000e+00, %10141
  %10143 = fmul fast float %10132, %10142
  %10144 = fsub fast float -0.000000e+00, %10143
  %10145 = fdiv fast float %10144, %10135
  br label %10146

; <label>:10146                                   ; preds = %10139, %10130
  %10147 = phi float [ %10145, %10139 ], [ %10132, %10130 ]
  %10148 = phi float [ %10141, %10139 ], [ 1.000000e+00, %10130 ]
  %10149 = fcmp fast une float %10136, 0.000000e+00
  br i1 %10149, label %10150, label %10157, !dx.controlflow.hints !177

; <label>:10150                                   ; preds = %10146
  %10151 = fmul fast float %10136, 0x3FF7154760000000
  %10152 = call float @dx.op.unary.f32(i32 21, float %10151)  ; Exp(value)
  %10153 = fsub fast float 1.000000e+00, %10152
  %10154 = fmul fast float %10133, %10153
  %10155 = fsub fast float -0.000000e+00, %10154
  %10156 = fdiv fast float %10155, %10136
  br label %10157

; <label>:10157                                   ; preds = %10150, %10146
  %10158 = phi float [ %10156, %10150 ], [ %10133, %10146 ]
  %10159 = phi float [ %10152, %10150 ], [ 1.000000e+00, %10146 ]
  %10160 = fcmp fast une float %10137, 0.000000e+00
  br i1 %10160, label %10161, label %10168, !dx.controlflow.hints !177

; <label>:10161                                   ; preds = %10157
  %10162 = fmul fast float %10137, 0x3FF7154760000000
  %10163 = call float @dx.op.unary.f32(i32 21, float %10162)  ; Exp(value)
  %10164 = fsub fast float 1.000000e+00, %10163
  %10165 = fmul fast float %10134, %10164
  %10166 = fsub fast float -0.000000e+00, %10165
  %10167 = fdiv fast float %10166, %10137
  br label %10168

; <label>:10168                                   ; preds = %10161, %10157, %10117, %10110
  %10169 = phi float [ %10167, %10161 ], [ %10129, %10117 ], [ %10114, %10110 ], [ %10134, %10157 ]
  %10170 = phi float [ %10158, %10161 ], [ %10128, %10117 ], [ %10113, %10110 ], [ %10158, %10157 ]
  %10171 = phi float [ %10147, %10161 ], [ %10127, %10117 ], [ %10112, %10110 ], [ %10147, %10157 ]
  %10172 = phi float [ %10163, %10161 ], [ %10119, %10117 ], [ 1.000000e+00, %10110 ], [ 1.000000e+00, %10157 ]
  %10173 = phi float [ %10159, %10161 ], [ %10119, %10117 ], [ 1.000000e+00, %10110 ], [ %10159, %10157 ]
  %10174 = phi float [ %10148, %10161 ], [ %10119, %10117 ], [ 1.000000e+00, %10110 ], [ %10148, %10157 ]
  %10175 = fmul fast float %10174, %10086
  %10176 = fmul fast float %10173, %10097
  %10177 = fmul fast float %10172, %10108
  %10178 = fadd fast float %10175, %10171
  %10179 = fadd fast float %10176, %10170
  %10180 = fadd fast float %10177, %10169
  %10181 = fmul fast float %10174, %10085
  %10182 = fmul fast float %10173, %10096
  %10183 = fmul fast float %10172, %10107
  br label %10184

; <label>:10184                                   ; preds = %10168, %9979
  %10185 = phi float [ %10183, %10168 ], [ %9985, %9979 ]
  %10186 = phi float [ %10182, %10168 ], [ %9984, %9979 ]
  %10187 = phi float [ %10181, %10168 ], [ %9983, %9979 ]
  %10188 = phi float [ %10180, %10168 ], [ %9982, %9979 ]
  %10189 = phi float [ %10179, %10168 ], [ %9981, %9979 ]
  %10190 = phi float [ %10178, %10168 ], [ %9980, %9979 ]
  %10191 = fmul fast float %10190, %9132
  %10192 = fmul fast float %10189, %9134
  %10193 = fmul fast float %10188, %9136
  %10194 = fmul fast float %10187, %9427
  %10195 = call float @dx.op.dot3.f32(i32 55, float %10187, float %10186, float %10185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10196 = call float @dx.op.dot3.f32(i32 55, float %10191, float %10192, float %10193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10197 = select i1 %225, float %10195, float %10187
  %10198 = select i1 %225, float %10195, float %10186
  %10199 = select i1 %225, float 1.000000e+00, float %10185
  %10200 = select i1 %225, float %10196, float %10191
  %10201 = select i1 %225, float 0.000000e+00, float %10192
  %10202 = select i1 %225, float 0.000000e+00, float %10193
  %10203 = fmul fast float %10197, %9421
  %10204 = fmul fast float %10198, %9422
  %10205 = fmul fast float %10199, %9423
  %10206 = fadd fast float %10203, %10200
  %10207 = fadd fast float %10204, %10201
  %10208 = fadd fast float %10202, %10205
  %10209 = fmul fast float %10197, %9424
  %10210 = fmul fast float %10198, %9425
  %10211 = fmul fast float %10199, %9426
  %10212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10213 = extractvalue %dx.types.CBufRet.i32 %10212, 0
  %10214 = icmp eq i32 %10213, 0
  br i1 %10214, label %10582, label %10215, !dx.controlflow.hints !179

; <label>:10215                                   ; preds = %10184
  %10216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10217 = extractvalue %dx.types.CBufRet.f32 %10216, 2
  %10218 = extractvalue %dx.types.CBufRet.f32 %10216, 3
  %10219 = fmul fast float %10217, %108
  %10220 = fmul fast float %10218, %109
  %10221 = fmul fast float %10219, 2.000000e+00
  %10222 = fmul fast float %10220, 2.000000e+00
  %10223 = fsub fast float 1.000000e+00, %10221
  %10224 = fsub fast float 1.000000e+00, %10222
  %10225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10226 = extractvalue %dx.types.CBufRet.f32 %10225, 0
  %10227 = extractvalue %dx.types.CBufRet.f32 %10225, 1
  %10228 = extractvalue %dx.types.CBufRet.f32 %10225, 2
  %10229 = fmul fast float %10223, %10226
  %10230 = fmul fast float %10223, %10227
  %10231 = fmul fast float %10223, %10228
  %10232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10233 = extractvalue %dx.types.CBufRet.f32 %10232, 0
  %10234 = extractvalue %dx.types.CBufRet.f32 %10232, 1
  %10235 = extractvalue %dx.types.CBufRet.f32 %10232, 2
  %10236 = fmul fast float %10224, %10233
  %10237 = fmul fast float %10224, %10234
  %10238 = fmul fast float %10224, %10235
  %10239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10240 = extractvalue %dx.types.CBufRet.f32 %10239, 0
  %10241 = extractvalue %dx.types.CBufRet.f32 %10239, 1
  %10242 = extractvalue %dx.types.CBufRet.f32 %10239, 2
  %10243 = fadd fast float %10236, %10240
  %10244 = fadd fast float %10243, %10229
  %10245 = fadd fast float %10237, %10241
  %10246 = fadd fast float %10245, %10230
  %10247 = fadd fast float %10238, %10242
  %10248 = fadd fast float %10247, %10231
  %10249 = fmul fast float %10244, %9420
  %10250 = fmul fast float %10246, %9420
  %10251 = fmul fast float %10248, %9420
  %10252 = fmul fast float %10249, %10249
  %10253 = fmul fast float %10250, %10250
  %10254 = fadd fast float %10252, %10253
  %10255 = fmul fast float %10251, %10251
  %10256 = fadd fast float %10254, %10255
  %10257 = call float @dx.op.unary.f32(i32 24, float %10256)  ; Sqrt(value)
  %10258 = extractvalue %dx.types.CBufRet.f32 %9147, 0
  %10259 = fsub fast float %10257, %10258
  %10260 = extractvalue %dx.types.CBufRet.f32 %9147, 2
  %10261 = fmul fast float %10259, %10260
  %10262 = call float @dx.op.unary.f32(i32 7, float %10261)  ; Saturate(value)
  %10263 = fadd fast float %10262, -5.000000e-01
  %10264 = fmul fast float %10263, 2.000000e+00
  %10265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10266 = extractvalue %dx.types.CBufRet.f32 %10265, 2
  %10267 = call float @dx.op.binary.f32(i32 36, float %10266, float %10264)  ; FMin(a,b)
  %10268 = fsub fast float -0.000000e+00, %10266
  %10269 = fcmp fast ogt float %10267, %10268
  br i1 %10269, label %10270, label %10582, !dx.controlflow.hints !180

; <label>:10270                                   ; preds = %10215
  %10271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10272 = extractvalue %dx.types.CBufRet.f32 %10271, 3
  %10273 = fcmp fast ogt float %10272, 0.000000e+00
  br i1 %10273, label %10274, label %10349, !dx.controlflow.hints !181

; <label>:10274                                   ; preds = %10270
  %10275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10276 = extractvalue %dx.types.Dimensions %10275, 0
  %10277 = sitofp i32 %10276 to float
  %10278 = extractvalue %dx.types.Dimensions %10275, 1
  %10279 = sitofp i32 %10278 to float
  %10280 = fmul fast float %10219, %10277
  %10281 = fmul fast float %10220, %10279
  %10282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10283 = extractvalue %dx.types.CBufRet.f32 %10282, 1
  %10284 = fsub fast float -0.000000e+00, %10283
  %10285 = fptoui float %10284 to i32
  %10286 = fptoui float %10280 to i32
  %10287 = fptoui float %10281 to i32
  %10288 = and i32 %10285, 31
  %10289 = lshr i32 %10286, %10288
  %10290 = lshr i32 %10287, %10288
  %10291 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10285, i32 %10289, i32 %10290, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10292 = extractvalue %dx.types.ResRet.f32 %10291, 0
  %10293 = fcmp fast olt float %10292, -1.000000e+00
  %10294 = fcmp fast ogt float %10292, -1.000000e+00
  %10295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10296 = extractvalue %dx.types.CBufRet.f32 %10295, 1
  %10297 = select i1 %10294, float %10296, float 1.000000e+00
  %10298 = fadd fast float %10292, 1.000000e+00
  %10299 = fmul fast float %10297, %10298
  %10300 = call float @dx.op.unary.f32(i32 6, float %10299)  ; FAbs(value)
  %10301 = extractvalue %dx.types.CBufRet.f32 %10295, 3
  %10302 = fcmp fast oge float %10300, %10301
  %10303 = select i1 %10302, float 0x4197782600000000, float %10300
  %10304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10305 = extractvalue %dx.types.CBufRet.f32 %10304, 0
  %10306 = extractvalue %dx.types.CBufRet.f32 %10304, 1
  %10307 = extractvalue %dx.types.CBufRet.f32 %10304, 2
  %10308 = select i1 %10293, float %10305, float %10226
  %10309 = select i1 %10293, float %10306, float %10227
  %10310 = select i1 %10293, float %10307, float %10228
  %10311 = fmul fast float %10308, %10223
  %10312 = fmul fast float %10309, %10223
  %10313 = fmul fast float %10310, %10223
  %10314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10315 = extractvalue %dx.types.CBufRet.f32 %10314, 0
  %10316 = extractvalue %dx.types.CBufRet.f32 %10314, 1
  %10317 = extractvalue %dx.types.CBufRet.f32 %10314, 2
  %10318 = select i1 %10293, float %10315, float %10233
  %10319 = select i1 %10293, float %10316, float %10234
  %10320 = select i1 %10293, float %10317, float %10235
  %10321 = fmul fast float %10318, %10224
  %10322 = fmul fast float %10319, %10224
  %10323 = fmul fast float %10320, %10224
  %10324 = fadd fast float %10321, %10311
  %10325 = fadd fast float %10322, %10312
  %10326 = fadd fast float %10323, %10313
  %10327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10328 = extractvalue %dx.types.CBufRet.f32 %10327, 0
  %10329 = extractvalue %dx.types.CBufRet.f32 %10327, 1
  %10330 = extractvalue %dx.types.CBufRet.f32 %10327, 2
  %10331 = select i1 %10293, float %10328, float %10240
  %10332 = select i1 %10293, float %10329, float %10241
  %10333 = select i1 %10293, float %10330, float %10242
  %10334 = fadd fast float %10324, %10331
  %10335 = fadd fast float %10325, %10332
  %10336 = fadd fast float %10326, %10333
  %10337 = fmul fast float %10334, %10303
  %10338 = fmul fast float %10335, %10303
  %10339 = fmul fast float %10336, %10303
  %10340 = fmul fast float %10337, %10337
  %10341 = fmul fast float %10338, %10338
  %10342 = fadd fast float %10340, %10341
  %10343 = fmul fast float %10339, %10339
  %10344 = fadd fast float %10342, %10343
  %10345 = call float @dx.op.unary.f32(i32 24, float %10344)  ; Sqrt(value)
  %10346 = fsub fast float %10345, %10258
  %10347 = fmul fast float %10346, %10260
  %10348 = call float @dx.op.unary.f32(i32 7, float %10347)  ; Saturate(value)
  br label %10349

; <label>:10349                                   ; preds = %10274, %10270
  %10350 = phi float [ %10348, %10274 ], [ 1.000000e+00, %10270 ]
  %10351 = fmul fast float %10267, 5.000000e-01
  %10352 = fadd fast float %10351, 5.000000e-01
  %10353 = call float @dx.op.unary.f32(i32 22, float %10352)  ; Frc(value)
  %10354 = call float @dx.op.unary.f32(i32 27, float %10353)  ; Round_ni(value)
  %10355 = call float @dx.op.unary.f32(i32 22, float %10353)  ; Frc(value)
  %10356 = fmul fast float %10355, 2.000000e+00
  %10357 = fadd fast float %10356, -1.000000e+00
  %10358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10219, float %10220, float %10354, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10359 = extractvalue %dx.types.ResRet.f32 %10358, 0
  %10360 = extractvalue %dx.types.ResRet.f32 %10358, 1
  %10361 = extractvalue %dx.types.ResRet.f32 %10358, 2
  %10362 = extractvalue %dx.types.ResRet.f32 %10358, 3
  %10363 = fadd fast float %10359, -5.000000e-01
  %10364 = fadd fast float %10361, -5.000000e-01
  %10365 = fmul fast float %10363, 0xBFD5555560000000
  %10366 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10364, float %10365)  ; FMad(a,b,c)
  %10367 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10360, float 0.000000e+00)  ; FMad(a,b,c)
  %10368 = fadd fast float %10367, %10362
  %10369 = fmul fast float %10363, -7.500000e-01
  %10370 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10364, float %10369)  ; FMad(a,b,c)
  %10371 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10360, float 0.000000e+00)  ; FMad(a,b,c)
  %10372 = fadd fast float %10371, %10362
  %10373 = call float @dx.op.binary.f32(i32 35, float %10366, float -1.000000e+00)  ; FMax(a,b)
  %10374 = call float @dx.op.binary.f32(i32 35, float %10368, float -1.000000e+00)  ; FMax(a,b)
  %10375 = call float @dx.op.binary.f32(i32 35, float %10370, float -1.000000e+00)  ; FMax(a,b)
  %10376 = call float @dx.op.binary.f32(i32 35, float %10372, float -1.000000e+00)  ; FMax(a,b)
  %10377 = call float @dx.op.binary.f32(i32 36, float %10373, float 1.000000e+00)  ; FMin(a,b)
  %10378 = call float @dx.op.binary.f32(i32 36, float %10374, float 1.000000e+00)  ; FMin(a,b)
  %10379 = call float @dx.op.binary.f32(i32 36, float %10375, float 1.000000e+00)  ; FMin(a,b)
  %10380 = call float @dx.op.binary.f32(i32 36, float %10376, float 1.000000e+00)  ; FMin(a,b)
  %10381 = fcmp fast olt float %10377, 0x3FEFFF8020000000
  br i1 %10381, label %10382, label %10497, !dx.controlflow.hints !182

; <label>:10382                                   ; preds = %10349
  %10383 = extractvalue %dx.types.CBufRet.f32 %10265, 3
  %10384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10385 = extractvalue %dx.types.CBufRet.f32 %10384, 0
  %10386 = extractvalue %dx.types.CBufRet.f32 %10384, 1
  %10387 = extractvalue %dx.types.CBufRet.f32 %10384, 2
  %10388 = extractvalue %dx.types.CBufRet.f32 %10384, 3
  %10389 = fsub fast float %10385, %10377
  %10390 = fsub fast float %10386, %10378
  %10391 = fsub fast float %10387, %10379
  %10392 = fsub fast float %10388, %10380
  %10393 = fmul fast float %10389, %10383
  %10394 = fmul fast float %10390, %10383
  %10395 = fmul fast float %10391, %10383
  %10396 = fmul fast float %10392, %10383
  %10397 = fadd fast float %10393, %10377
  %10398 = fadd fast float %10394, %10378
  %10399 = fsub fast float -0.000000e+00, %10398
  %10400 = fadd fast float %10395, %10379
  %10401 = fadd fast float %10396, %10380
  %10402 = fmul fast float %10397, %10397
  %10403 = fsub fast float %10398, %10402
  %10404 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10403)  ; FMax(a,b)
  %10405 = fdiv fast float 1.000000e+00, %10404
  %10406 = fmul fast float %10398, %10397
  %10407 = fsub fast float %10400, %10406
  %10408 = fsub fast float %10357, %10397
  %10409 = fmul fast float %10357, %10357
  %10410 = fsub fast float %10409, %10398
  %10411 = fmul fast float %10408, %10405
  %10412 = fmul fast float %10411, %10407
  %10413 = fsub fast float %10410, %10412
  %10414 = fmul fast float %10398, %10398
  %10415 = fsub fast float %10401, %10414
  %10416 = fmul fast float %10407, %10407
  %10417 = fmul fast float %10416, %10405
  %10418 = fsub fast float %10415, %10417
  %10419 = fdiv fast float %10413, %10418
  %10420 = fmul fast float %10407, %10419
  %10421 = fsub fast float %10408, %10420
  %10422 = fmul fast float %10421, %10405
  %10423 = fmul fast float %10422, %10397
  %10424 = fsub fast float 1.000000e+00, %10423
  %10425 = fmul fast float %10398, %10419
  %10426 = fsub fast float %10424, %10425
  %10427 = fmul fast float %10422, %10422
  %10428 = fmul fast float %10419, 4.000000e+00
  %10429 = fmul fast float %10428, %10426
  %10430 = fsub fast float %10427, %10429
  %10431 = call float @dx.op.unary.f32(i32 24, float %10430)  ; Sqrt(value)
  %10432 = fcmp fast oge float %10422, 0.000000e+00
  %10433 = fsub fast float -0.000000e+00, %10431
  %10434 = select i1 %10432, float %10433, float %10431
  %10435 = fsub fast float %10434, %10422
  %10436 = fdiv fast float %10435, %10419
  %10437 = fdiv fast float %10426, %10435
  %10438 = fmul fast float %10436, 5.000000e-01
  %10439 = fmul fast float %10437, 2.000000e+00
  %10440 = select i1 %10432, float %10438, float %10439
  %10441 = select i1 %10432, float %10439, float %10438
  %10442 = call float @dx.op.binary.f32(i32 35, float %10440, float %10441)  ; FMax(a,b)
  %10443 = call float @dx.op.binary.f32(i32 36, float %10440, float %10441)  ; FMin(a,b)
  %10444 = fcmp fast ogt float %10357, %10443
  br i1 %10444, label %10445, label %10455

; <label>:10445                                   ; preds = %10382
  %10446 = fsub fast float %10357, %10443
  %10447 = fsub fast float %10442, %10443
  %10448 = fmul fast float %10446, %10447
  %10449 = fmul fast float %10442, %10357
  %10450 = fadd fast float %10442, %10357
  %10451 = fmul fast float %10450, %10397
  %10452 = fadd fast float %10449, %10398
  %10453 = fsub fast float %10452, %10451
  %10454 = fdiv fast float %10453, %10448
  br label %10455

; <label>:10455                                   ; preds = %10445, %10382
  %10456 = phi float [ %10454, %10445 ], [ 0.000000e+00, %10382 ]
  %10457 = fcmp fast ogt float %10357, %10442
  %10458 = fsub fast float %10357, %10442
  br i1 %10457, label %10459, label %10469

; <label>:10459                                   ; preds = %10455
  %10460 = fsub fast float %10442, %10443
  %10461 = fmul fast float %10460, %10458
  %10462 = fmul fast float %10443, %10357
  %10463 = fadd fast float %10443, %10357
  %10464 = fmul fast float %10463, %10397
  %10465 = fsub fast float %10399, %10462
  %10466 = fadd fast float %10465, %10464
  %10467 = fdiv fast float %10466, %10461
  %10468 = fadd fast float %10467, %10456
  br label %10469

; <label>:10469                                   ; preds = %10459, %10455
  %10470 = phi float [ %10468, %10459 ], [ %10456, %10455 ]
  %10471 = fsub fast float %10357, %10443
  %10472 = fmul fast float %10471, %10458
  %10473 = fmul fast float %10443, %10442
  %10474 = fadd fast float %10443, %10442
  %10475 = fmul fast float %10474, %10397
  %10476 = fadd fast float %10473, %10398
  %10477 = fsub fast float %10476, %10475
  %10478 = fdiv fast float %10477, %10472
  %10479 = call float @dx.op.unary.f32(i32 7, float %10470)  ; Saturate(value)
  %10480 = fcmp fast oeq float %9148, 0.000000e+00
  %10481 = extractvalue %dx.types.CBufRet.f32 %10265, 0
  %10482 = fcmp fast oeq float %10481, 0.000000e+00
  %10483 = or i1 %10480, %10482
  %10484 = fmul fast float %10481, 2.000000e+00
  %10485 = fadd fast float %10266, %10267
  %10486 = fdiv fast float %10485, %10484
  %10487 = call float @dx.op.unary.f32(i32 7, float %10486)  ; Saturate(value)
  %10488 = fmul fast float %10487, 2.000000e+00
  %10489 = fsub fast float 3.000000e+00, %10488
  %10490 = fmul fast float %10487, %10487
  %10491 = fmul fast float %10490, %10489
  %10492 = select i1 %10483, float 1.000000e+00, float %10491
  %10493 = fmul fast float %10478, %9148
  %10494 = fadd fast float %10479, %10493
  %10495 = call float @dx.op.unary.f32(i32 7, float %10494)  ; Saturate(value)
  %10496 = fmul fast float %10492, %10495
  br label %10497

; <label>:10497                                   ; preds = %10469, %10349
  %10498 = phi float [ %10496, %10469 ], [ 0.000000e+00, %10349 ]
  %10499 = fsub fast float 1.000000e+00, %10498
  %10500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10219, float %10220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10501 = extractvalue %dx.types.ResRet.f32 %10500, 0
  %10502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10503 = extractvalue %dx.types.CBufRet.i32 %10502, 2
  %10504 = icmp eq i32 %10503, 0
  br i1 %10504, label %10510, label %10505

; <label>:10505                                   ; preds = %10497
  %10506 = call float @dx.op.unary.f32(i32 7, float %10498)  ; Saturate(value)
  %10507 = fadd fast float %10501, -1.000000e+00
  %10508 = fmul fast float %10506, %10507
  %10509 = fadd fast float %10508, 1.000000e+00
  br label %10510

; <label>:10510                                   ; preds = %10505, %10497
  %10511 = phi float [ %10509, %10505 ], [ %10499, %10497 ]
  br i1 %10273, label %10512, label %10530

; <label>:10512                                   ; preds = %10510
  %10513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10514 = extractvalue %dx.types.CBufRet.f32 %10513, 1
  %10515 = fsub fast float %10350, %10514
  %10516 = call float @dx.op.unary.f32(i32 7, float %10515)  ; Saturate(value)
  %10517 = fsub fast float %10350, %10272
  %10518 = call float @dx.op.unary.f32(i32 7, float %10517)  ; Saturate(value)
  %10519 = fsub fast float %10516, %10518
  %10520 = fsub fast float %10352, %10518
  %10521 = fdiv fast float %10520, %10519
  %10522 = call float @dx.op.unary.f32(i32 7, float %10521)  ; Saturate(value)
  %10523 = fmul fast float %10522, 2.000000e+00
  %10524 = fsub fast float 3.000000e+00, %10523
  %10525 = fsub fast float %10501, %10511
  %10526 = fmul fast float %10522, %10522
  %10527 = fmul fast float %10526, %10525
  %10528 = fmul fast float %10527, %10524
  %10529 = fadd fast float %10528, %10511
  br label %10530

; <label>:10530                                   ; preds = %10512, %10510
  %10531 = phi float [ %10529, %10512 ], [ %10511, %10510 ]
  %10532 = call float @dx.op.binary.f32(i32 35, float %10501, float %10531)  ; FMax(a,b)
  %10533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10534 = extractvalue %dx.types.CBufRet.i32 %10533, 2
  %10535 = and i32 %10534, 1
  %10536 = icmp eq i32 %10535, 0
  %10537 = fcmp fast une float %10532, 1.000000e+00
  %10538 = and i1 %10537, %10536
  br i1 %10538, label %10539, label %10558

; <label>:10539                                   ; preds = %10530
  %10540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10219, float %10220, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10541 = extractvalue %dx.types.ResRet.f32 %10540, 0
  %10542 = extractvalue %dx.types.ResRet.f32 %10540, 1
  %10543 = extractvalue %dx.types.ResRet.f32 %10540, 2
  %10544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10545 = extractvalue %dx.types.CBufRet.f32 %10544, 1
  %10546 = fmul fast float %10545, %10541
  %10547 = fmul fast float %10545, %10542
  %10548 = fmul fast float %10545, %10543
  %10549 = fcmp fast ogt float %10501, 0x3FEFFF2E40000000
  %10550 = fsub fast float 1.000000e+00, %10532
  %10551 = fsub fast float 1.000000e+00, %10501
  %10552 = fdiv fast float %10550, %10551
  %10553 = call float @dx.op.unary.f32(i32 7, float %10552)  ; Saturate(value)
  %10554 = select i1 %10549, float 0.000000e+00, float %10553
  %10555 = fmul fast float %10546, %10554
  %10556 = fmul fast float %10547, %10554
  %10557 = fmul fast float %10548, %10554
  br label %10558

; <label>:10558                                   ; preds = %10539, %10530
  %10559 = phi float [ 0.000000e+00, %10530 ], [ %10555, %10539 ]
  %10560 = phi float [ 0.000000e+00, %10530 ], [ %10556, %10539 ]
  %10561 = phi float [ 0.000000e+00, %10530 ], [ %10557, %10539 ]
  %10562 = fmul fast float %10559, %9132
  %10563 = fmul fast float %10560, %9134
  %10564 = fmul fast float %10561, %9136
  %10565 = fmul fast float %10532, %10194
  %10566 = call float @dx.op.dot3.f32(i32 55, float %10532, float %10532, float %10532, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10567 = call float @dx.op.dot3.f32(i32 55, float %10562, float %10563, float %10564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10568 = select i1 %225, float %10566, float %10532
  %10569 = select i1 %225, float 1.000000e+00, float %10532
  %10570 = select i1 %225, float %10567, float %10562
  %10571 = select i1 %225, float 0.000000e+00, float %10563
  %10572 = select i1 %225, float 0.000000e+00, float %10564
  %10573 = fmul fast float %10568, %10206
  %10574 = fmul fast float %10568, %10207
  %10575 = fmul fast float %10569, %10208
  %10576 = fadd fast float %10573, %10570
  %10577 = fadd fast float %10574, %10571
  %10578 = fadd fast float %10572, %10575
  %10579 = fmul fast float %10568, %10209
  %10580 = fmul fast float %10568, %10210
  %10581 = fmul fast float %10569, %10211
  br label %10582

; <label>:10582                                   ; preds = %10558, %10215, %10184, %9416
  %10583 = phi float [ %9421, %9416 ], [ %10206, %10184 ], [ %10576, %10558 ], [ %10206, %10215 ]
  %10584 = phi float [ %9422, %9416 ], [ %10207, %10184 ], [ %10577, %10558 ], [ %10207, %10215 ]
  %10585 = phi float [ %9423, %9416 ], [ %10208, %10184 ], [ %10578, %10558 ], [ %10208, %10215 ]
  %10586 = phi float [ %9424, %9416 ], [ %10209, %10184 ], [ %10579, %10558 ], [ %10209, %10215 ]
  %10587 = phi float [ %9425, %9416 ], [ %10210, %10184 ], [ %10580, %10558 ], [ %10210, %10215 ]
  %10588 = phi float [ %9426, %9416 ], [ %10211, %10184 ], [ %10581, %10558 ], [ %10211, %10215 ]
  %10589 = phi float [ %9427, %9416 ], [ %10194, %10184 ], [ %10565, %10558 ], [ %10194, %10215 ]
  %10590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10591 = extractvalue %dx.types.CBufRet.f32 %10590, 2
  %10592 = extractvalue %dx.types.CBufRet.f32 %10590, 3
  %10593 = fmul fast float %10591, %108
  %10594 = fmul fast float %10592, %109
  %10595 = call float @dx.op.unary.f32(i32 7, float %10593)  ; Saturate(value)
  %10596 = call float @dx.op.unary.f32(i32 7, float %10594)  ; Saturate(value)
  %10597 = select i1 %9158, i32 2, i32 0
  %10598 = or i32 %10597, 1
  %10599 = uitofp i32 %10598 to float
  %10600 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10595, float %10596, float %10599, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10601 = extractvalue %dx.types.ResRet.f32 %10600, 0
  %10602 = extractvalue %dx.types.ResRet.f32 %10600, 1
  %10603 = extractvalue %dx.types.ResRet.f32 %10600, 2
  %10604 = extractvalue %dx.types.ResRet.f32 %10600, 3
  %10605 = add nuw nsw i32 %10597, 2
  %10606 = uitofp i32 %10605 to float
  %10607 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10595, float %10596, float %10606, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10608 = extractvalue %dx.types.ResRet.f32 %10607, 0
  %10609 = extractvalue %dx.types.ResRet.f32 %10607, 1
  %10610 = extractvalue %dx.types.ResRet.f32 %10607, 2
  %10611 = extractvalue %dx.types.ResRet.f32 %10607, 3
  %10612 = call float @dx.op.binary.f32(i32 35, float %10602, float %10603)  ; FMax(a,b)
  %10613 = call float @dx.op.binary.f32(i32 35, float %10601, float %10612)  ; FMax(a,b)
  %10614 = call float @dx.op.binary.f32(i32 35, float %10613, float %10604)  ; FMax(a,b)
  %10615 = call float @dx.op.binary.f32(i32 36, float %10609, float %10610)  ; FMin(a,b)
  %10616 = call float @dx.op.binary.f32(i32 36, float %10608, float %10615)  ; FMin(a,b)
  %10617 = call float @dx.op.binary.f32(i32 36, float %10616, float %10611)  ; FMin(a,b)
  %10618 = fmul fast float %10614, 2.550000e+02
  %10619 = fadd fast float %10618, 0x3F70101020000000
  %10620 = fptoui float %10619 to i32
  %10621 = fmul fast float %10617, 2.550000e+02
  %10622 = fadd fast float %10621, 0x3F70101020000000
  %10623 = fptoui float %10622 to i32
  %10624 = icmp ult i32 %10620, %10623
  br i1 %10624, label %10625, label %10794

; <label>:10625                                   ; preds = %10582
  %10626 = fcmp fast ogt float %95, 9.843750e-01
  %10627 = fadd fast float %9420, -4.000000e+00
  %10628 = select i1 %10626, float -4.000000e+00, float %10627
  %10629 = call float @dx.op.binary.f32(i32 35, float %10628, float 0.000000e+00)  ; FMax(a,b)
  %10630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10631 = extractvalue %dx.types.CBufRet.f32 %10630, 0
  %10632 = fadd fast float %10631, %10629
  %10633 = extractvalue %dx.types.CBufRet.f32 %10630, 2
  %10634 = fmul fast float %10632, %10633
  %10635 = call float @dx.op.unary.f32(i32 23, float %10634)  ; Log(value)
  %10636 = extractvalue %dx.types.CBufRet.f32 %10630, 3
  %10637 = fmul fast float %10636, %10635
  %10638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10639 = extractvalue %dx.types.CBufRet.f32 %10638, 2
  %10640 = fmul fast float %10637, %10639
  %10641 = call float @dx.op.unary.f32(i32 7, float %10640)  ; Saturate(value)
  %10642 = uitofp i32 %10620 to float
  %10643 = uitofp i32 %10623 to float
  %10644 = fadd fast float %10642, 5.000000e-01
  %10645 = fadd fast float %10643, 5.000000e-01
  %10646 = fmul fast float %10639, %10644
  %10647 = fmul fast float %10639, %10645
  %10648 = fadd fast float %10646, 0x3F0FFB4800000000
  %10649 = fadd fast float %10647, 0xBF0FFB4800000000
  %10650 = call float @dx.op.binary.f32(i32 35, float %10641, float %10648)  ; FMax(a,b)
  %10651 = call float @dx.op.binary.f32(i32 36, float %10650, float %10649)  ; FMin(a,b)
  %10652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10653 = extractvalue %dx.types.CBufRet.f32 %10652, 1
  %10654 = extractvalue %dx.types.CBufRet.f32 %10652, 2
  %10655 = extractvalue %dx.types.CBufRet.f32 %10652, 0
  %10656 = select i1 %9158, float %10655, float 0.000000e+00
  %10657 = fmul fast float %10653, %10651
  %10658 = fadd fast float %10656, %10657
  %10659 = fadd fast float %10656, %10654
  %10660 = fsub fast float %10653, %10654
  %10661 = fadd fast float %10660, %10656
  %10662 = call float @dx.op.binary.f32(i32 35, float %10658, float %10659)  ; FMax(a,b)
  %10663 = call float @dx.op.binary.f32(i32 36, float %10662, float %10661)  ; FMin(a,b)
  %10664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10595, float %10596, float %10663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10665 = extractvalue %dx.types.ResRet.f32 %10664, 0
  %10666 = extractvalue %dx.types.ResRet.f32 %10664, 1
  %10667 = extractvalue %dx.types.ResRet.f32 %10664, 2
  %10668 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10669 = extractvalue %dx.types.CBufRet.i32 %10668, 0
  %10670 = extractvalue %dx.types.CBufRet.i32 %10668, 1
  %10671 = uitofp i32 %10669 to float
  %10672 = uitofp i32 %10670 to float
  %10673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10674 = extractvalue %dx.types.CBufRet.f32 %10673, 0
  %10675 = extractvalue %dx.types.CBufRet.f32 %10673, 1
  %10676 = fmul fast float %10671, %10595
  %10677 = fmul fast float %10672, %10596
  %10678 = fadd fast float %10676, -5.000000e-01
  %10679 = fadd fast float %10677, -5.000000e-01
  %10680 = call float @dx.op.unary.f32(i32 22, float %10678)  ; Frc(value)
  %10681 = call float @dx.op.unary.f32(i32 22, float %10679)  ; Frc(value)
  %10682 = fmul fast float %10680, %10680
  %10683 = fmul fast float %10682, %10680
  %10684 = fsub fast float 3.000000e+00, %10680
  %10685 = fmul fast float %10682, %10684
  %10686 = fmul fast float %10680, 3.000000e+00
  %10687 = fmul fast float %10683, 3.000000e+00
  %10688 = fmul fast float %10682, 6.000000e+00
  %10689 = fsub fast float %10687, %10688
  %10690 = fadd fast float %10689, 4.000000e+00
  %10691 = fmul fast float %10690, 0x3FC5555560000000
  %10692 = fmul fast float %10683, -3.000000e+00
  %10693 = fadd fast float %10682, %10680
  %10694 = fmul fast float %10693, 3.000000e+00
  %10695 = fadd fast float %10692, 1.000000e+00
  %10696 = fadd fast float %10695, %10694
  %10697 = fmul fast float %10683, 0x3FC5555560000000
  %10698 = fmul fast float %10681, %10681
  %10699 = fmul fast float %10698, %10681
  %10700 = fsub fast float 3.000000e+00, %10681
  %10701 = fmul fast float %10698, %10700
  %10702 = fmul fast float %10681, 3.000000e+00
  %10703 = fmul fast float %10699, 3.000000e+00
  %10704 = fmul fast float %10698, 6.000000e+00
  %10705 = fsub fast float %10703, %10704
  %10706 = fadd fast float %10705, 4.000000e+00
  %10707 = fmul fast float %10706, 0x3FC5555560000000
  %10708 = fmul fast float %10699, -3.000000e+00
  %10709 = fadd fast float %10698, %10681
  %10710 = fmul fast float %10709, 3.000000e+00
  %10711 = fadd fast float %10708, 1.000000e+00
  %10712 = fadd fast float %10711, %10710
  %10713 = fmul fast float %10699, 0x3FC5555560000000
  %10714 = fadd fast float %10680, 1.000000e+00
  %10715 = fsub fast float 1.000000e+00, %10686
  %10716 = fadd fast float %10715, %10685
  %10717 = fadd fast float %10716, %10690
  %10718 = fmul fast float %10717, 0x3FC5555560000000
  %10719 = fdiv fast float %10691, %10718
  %10720 = fsub fast float %10714, %10719
  %10721 = fsub fast float 1.000000e+00, %10680
  %10722 = fadd fast float %10696, %10683
  %10723 = fmul fast float %10722, 0x3FC5555560000000
  %10724 = fdiv fast float %10697, %10723
  %10725 = fadd fast float %10721, %10724
  %10726 = fadd fast float %10681, 1.000000e+00
  %10727 = fsub fast float 1.000000e+00, %10702
  %10728 = fadd fast float %10727, %10701
  %10729 = fadd fast float %10728, %10706
  %10730 = fmul fast float %10729, 0x3FC5555560000000
  %10731 = fdiv fast float %10707, %10730
  %10732 = fsub fast float %10726, %10731
  %10733 = fsub fast float 1.000000e+00, %10681
  %10734 = fadd fast float %10712, %10699
  %10735 = fmul fast float %10734, 0x3FC5555560000000
  %10736 = fdiv fast float %10713, %10735
  %10737 = fadd fast float %10736, %10733
  %10738 = fmul fast float %10720, %10674
  %10739 = fsub fast float %10595, %10738
  %10740 = fmul fast float %10725, %10674
  %10741 = fadd fast float %10740, %10595
  %10742 = fmul fast float %10737, %10675
  %10743 = fadd fast float %10742, %10596
  %10744 = fmul fast float %10732, %10675
  %10745 = fsub fast float %10596, %10744
  %10746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10739, float %10745, float %10663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10747 = extractvalue %dx.types.ResRet.f32 %10746, 0
  %10748 = extractvalue %dx.types.ResRet.f32 %10746, 1
  %10749 = extractvalue %dx.types.ResRet.f32 %10746, 2
  %10750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10741, float %10745, float %10663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10751 = extractvalue %dx.types.ResRet.f32 %10750, 0
  %10752 = extractvalue %dx.types.ResRet.f32 %10750, 1
  %10753 = extractvalue %dx.types.ResRet.f32 %10750, 2
  %10754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10739, float %10743, float %10663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10755 = extractvalue %dx.types.ResRet.f32 %10754, 0
  %10756 = extractvalue %dx.types.ResRet.f32 %10754, 1
  %10757 = extractvalue %dx.types.ResRet.f32 %10754, 2
  %10758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10741, float %10743, float %10663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10759 = extractvalue %dx.types.ResRet.f32 %10758, 0
  %10760 = extractvalue %dx.types.ResRet.f32 %10758, 1
  %10761 = extractvalue %dx.types.ResRet.f32 %10758, 2
  %10762 = fsub fast float %10755, %10747
  %10763 = fsub fast float %10756, %10748
  %10764 = fsub fast float %10757, %10749
  %10765 = fmul fast float %10762, %10735
  %10766 = fmul fast float %10763, %10735
  %10767 = fmul fast float %10764, %10735
  %10768 = fadd fast float %10765, %10747
  %10769 = fadd fast float %10766, %10748
  %10770 = fadd fast float %10767, %10749
  %10771 = fsub fast float %10759, %10751
  %10772 = fsub fast float %10760, %10752
  %10773 = fsub fast float %10761, %10753
  %10774 = fmul fast float %10771, %10735
  %10775 = fmul fast float %10772, %10735
  %10776 = fmul fast float %10773, %10735
  %10777 = fsub fast float %10751, %10768
  %10778 = fadd fast float %10777, %10774
  %10779 = fsub fast float %10752, %10769
  %10780 = fadd fast float %10779, %10775
  %10781 = fsub fast float %10753, %10770
  %10782 = fadd fast float %10781, %10776
  %10783 = fmul fast float %10778, %10723
  %10784 = fmul fast float %10780, %10723
  %10785 = fmul fast float %10782, %10723
  %10786 = fadd fast float %10783, %10768
  %10787 = fadd fast float %10784, %10769
  %10788 = fadd fast float %10785, %10770
  %10789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10790 = extractvalue %dx.types.CBufRet.f32 %10789, 1
  %10791 = fmul fast float %10786, %10790
  %10792 = fmul fast float %10787, %10790
  %10793 = fmul fast float %10788, %10790
  br label %10794

; <label>:10794                                   ; preds = %10625, %10582
  %10795 = phi float [ %10665, %10625 ], [ 1.000000e+00, %10582 ]
  %10796 = phi float [ %10666, %10625 ], [ 1.000000e+00, %10582 ]
  %10797 = phi float [ %10667, %10625 ], [ 1.000000e+00, %10582 ]
  %10798 = phi float [ %10791, %10625 ], [ 0.000000e+00, %10582 ]
  %10799 = phi float [ %10792, %10625 ], [ 0.000000e+00, %10582 ]
  %10800 = phi float [ %10793, %10625 ], [ 0.000000e+00, %10582 ]
  %10801 = fmul fast float %10798, %9132
  %10802 = fmul fast float %10799, %9134
  %10803 = fmul fast float %10800, %9136
  %10804 = fmul fast float %10795, %10589
  %10805 = call float @dx.op.dot3.f32(i32 55, float %10795, float %10796, float %10797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10806 = call float @dx.op.dot3.f32(i32 55, float %10801, float %10802, float %10803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10807 = select i1 %225, float %10805, float %10795
  %10808 = select i1 %225, float %10805, float %10796
  %10809 = select i1 %225, float 1.000000e+00, float %10797
  %10810 = select i1 %225, float %10806, float %10801
  %10811 = select i1 %225, float 0.000000e+00, float %10802
  %10812 = select i1 %225, float 0.000000e+00, float %10803
  %10813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10814 = extractvalue %dx.types.CBufRet.i32 %10813, 3
  %10815 = and i32 %10814, 3
  %10816 = icmp ne i32 %10815, 0
  %10817 = and i32 %10814, 4
  %10818 = icmp ne i32 %10817, 0
  %10819 = and i1 %10816, %10818
  %10820 = and i1 %225, %10819
  br i1 %10820, label %10821, label %10827

; <label>:10821                                   ; preds = %10794
  %10822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10823 = extractvalue %dx.types.CBufRet.f32 %10822, 1
  %10824 = fadd fast float %10804, -1.000000e+00
  %10825 = fmul fast float %10823, %10824
  %10826 = fadd fast float %10825, 1.000000e+00
  br label %10827

; <label>:10827                                   ; preds = %10821, %10794
  %10828 = phi float [ %10826, %10821 ], [ %10804, %10794 ]
  %10829 = fadd fast float %10586, %10583
  %10830 = fmul fast float %10807, %10829
  %10831 = fadd fast float %10830, %10810
  %10832 = fadd fast float %10587, %10584
  %10833 = fmul fast float %10808, %10832
  %10834 = fadd fast float %10833, %10811
  %10835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10836 = extractvalue %dx.types.CBufRet.f32 %10835, 0
  br i1 %225, label %10837, label %10852

; <label>:10837                                   ; preds = %10827
  %10838 = fadd fast float %10831, %10834
  %10839 = fmul fast float %10836, %10838
  %10840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10841 = extractvalue %dx.types.CBufRet.f32 %10840, 3
  %10842 = extractvalue %dx.types.CBufRet.f32 %9140, 1
  %10843 = fsub fast float %9145, %9139
  %10844 = fadd fast float %10843, %9146
  %10845 = fsub fast float %10844, %10842
  %10846 = extractvalue %dx.types.CBufRet.f32 %9140, 2
  %10847 = fmul fast float %10845, %10846
  %10848 = call float @dx.op.unary.f32(i32 7, float %10847)  ; Saturate(value)
  %10849 = fsub fast float %10848, %10841
  %10850 = fmul fast float %10849, %10828
  %10851 = fadd fast float %10850, %10841
  br label %10878

; <label>:10852                                   ; preds = %10827
  %10853 = fadd fast float %10588, %10585
  %10854 = fmul fast float %10809, %10853
  %10855 = fadd fast float %10854, %10812
  %10856 = fmul fast float %10836, %10831
  %10857 = fmul fast float %10836, %10834
  %10858 = fmul fast float %10836, %10855
  %10859 = call float @dx.op.binary.f32(i32 35, float %10857, float %10858)  ; FMax(a,b)
  %10860 = call float @dx.op.binary.f32(i32 35, float %10856, float %10859)  ; FMax(a,b)
  %10861 = call float @dx.op.binary.f32(i32 35, float %9134, float %9136)  ; FMax(a,b)
  %10862 = call float @dx.op.binary.f32(i32 35, float %9132, float %10861)  ; FMax(a,b)
  %10863 = call float @dx.op.binary.f32(i32 35, float %10860, float %10862)  ; FMax(a,b)
  %10864 = fcmp fast ugt float %10863, 0x3F10000000000000
  br i1 %10864, label %10866, label %10865

; <label>:10865                                   ; preds = %10852
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10866

; <label>:10866                                   ; preds = %10865, %10852
  %10867 = add i32 %60, 356
  %10868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10867, i32 undef)  ; BufferLoad(srv,index,wot)
  %10869 = extractvalue %dx.types.ResRet.i32 %10868, 0
  %10870 = and i32 %10869, 32
  %10871 = icmp eq i32 %10870, 0
  br i1 %10871, label %10878, label %10872

; <label>:10872                                   ; preds = %10866
  %10873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10874 = extractvalue %dx.types.CBufRet.f32 %10873, 0
  %10875 = fmul fast float %10874, 0x3FE99999A0000000
  %10876 = fadd fast float %10874, %10856
  %10877 = fadd fast float %10875, %10858
  br label %10878

; <label>:10878                                   ; preds = %10872, %10866, %10837
  %10879 = phi float [ 1.000000e+00, %10837 ], [ %9134, %10872 ], [ %9134, %10866 ]
  %10880 = phi float [ 1.000000e+00, %10837 ], [ %9136, %10872 ], [ %9136, %10866 ]
  %10881 = phi float [ %10839, %10837 ], [ %10876, %10872 ], [ %10856, %10866 ]
  %10882 = phi float [ %10851, %10837 ], [ %10857, %10872 ], [ %10857, %10866 ]
  %10883 = phi float [ 1.000000e+00, %10837 ], [ %10877, %10872 ], [ %10858, %10866 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10884 = call float @dx.op.binary.f32(i32 36, float %10881, float 3.225500e+04)  ; FMin(a,b)
  %10885 = call float @dx.op.binary.f32(i32 36, float %10882, float 3.225500e+04)  ; FMin(a,b)
  %10886 = call float @dx.op.binary.f32(i32 36, float %10883, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10884)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10885)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10886)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10887 = call float @dx.op.binary.f32(i32 36, float %9132, float 3.225500e+04)  ; FMin(a,b)
  %10888 = call float @dx.op.binary.f32(i32 36, float %10879, float 3.225500e+04)  ; FMin(a,b)
  %10889 = call float @dx.op.binary.f32(i32 36, float %10880, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10887)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10888)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10889)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!74 = !{[46 x i32] [i32 44, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0]}
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
!93 = !{i32 3, i32 5}
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

