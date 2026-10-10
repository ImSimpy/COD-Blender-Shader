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
; shader hash: 88342520b11b47eaa14d77f059530ff9
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
  %420 = add i32 %60, 508
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
  %696 = add i32 %60, 440
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
  %748 = add i32 %60, 424
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
  %772 = add i32 %60, 376
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
  %795 = add i32 %60, 460
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
  %993 = add i32 %60, 392
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
  %1077 = add i32 %60, 408
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
  %1135 = add i32 %60, 476
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
  %1176 = add i32 %60, 492
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
  %1243 = phi float [ 0.000000e+00, %462 ], [ %1220, %1219 ]
  %1244 = phi float [ 0.000000e+00, %462 ], [ %1221, %1219 ]
  %1245 = phi float [ 0.000000e+00, %462 ], [ %1222, %1219 ]
  %1246 = phi float [ 0.000000e+00, %462 ], [ %1110, %1219 ]
  %1247 = phi float [ 0.000000e+00, %462 ], [ %1111, %1219 ]
  %1248 = phi float [ 0.000000e+00, %462 ], [ %1112, %1219 ]
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
  %1487 = add i32 %60, 444
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
  %1539 = add i32 %60, 428
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
  %1565 = add i32 %60, 380
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
  %1588 = add i32 %60, 464
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
  %1786 = add i32 %60, 396
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
  %1870 = add i32 %60, 412
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
  %1928 = add i32 %60, 480
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
  %1969 = add i32 %60, 496
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
  %2062 = fmul fast float %2056, %1246
  %2063 = fmul fast float %2057, %1247
  %2064 = fmul fast float %2058, %1248
  br label %2065

; <label>:2065                                    ; preds = %2030, %2012
  %2066 = phi float [ %2059, %2030 ], [ %1240, %2012 ]
  %2067 = phi float [ %2060, %2030 ], [ %1241, %2012 ]
  %2068 = phi float [ %2061, %2030 ], [ %1242, %2012 ]
  %2069 = phi float [ %2062, %2030 ], [ %1246, %2012 ]
  %2070 = phi float [ %2063, %2030 ], [ %1247, %2012 ]
  %2071 = phi float [ %2064, %2030 ], [ %1248, %2012 ]
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
  %2210 = fsub fast float %2013, %1243
  %2211 = fsub fast float %2014, %1244
  %2212 = fsub fast float %2015, %1245
  %2213 = fmul fast float %2183, %2210
  %2214 = fmul fast float %2183, %2211
  %2215 = fmul fast float %2183, %2212
  %2216 = fadd fast float %2213, %1243
  %2217 = fadd fast float %2214, %1244
  %2218 = fadd fast float %2215, %1245
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
  %2264 = fadd fast float %2261, %1243
  %2265 = fadd fast float %2262, %1244
  %2266 = fadd fast float %2263, %1245
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
  %2292 = fadd fast float %2289, %1243
  %2293 = fadd fast float %2290, %1244
  %2294 = fadd fast float %2291, %1245
  br label %2295

; <label>:2295                                    ; preds = %2269, %2267, %2221, %2185, %2154, %1554, %1258, %1237
  %2296 = phi float [ %1238, %2154 ], [ %1238, %1554 ], [ %1238, %1237 ], [ %2272, %2269 ], [ %1238, %2267 ], [ %2224, %2221 ], [ %2190, %2185 ], [ %1238, %1258 ]
  %2297 = phi float [ %1239, %2154 ], [ %1239, %1554 ], [ %1239, %1237 ], [ %2273, %2269 ], [ %1239, %2267 ], [ %2225, %2221 ], [ %2191, %2185 ], [ %1239, %1258 ]
  %2298 = phi float [ %2155, %2154 ], [ %1240, %1554 ], [ %1240, %1237 ], [ %2155, %2269 ], [ %2155, %2267 ], [ %2155, %2221 ], [ %2155, %2185 ], [ %1240, %1258 ]
  %2299 = phi float [ %2156, %2154 ], [ %1241, %1554 ], [ %1241, %1237 ], [ %2156, %2269 ], [ %2156, %2267 ], [ %2156, %2221 ], [ %2156, %2185 ], [ %1241, %1258 ]
  %2300 = phi float [ %2157, %2154 ], [ %1242, %1554 ], [ %1242, %1237 ], [ %2157, %2269 ], [ %2157, %2267 ], [ %2157, %2221 ], [ %2157, %2185 ], [ %1242, %1258 ]
  %2301 = phi float [ %1243, %2154 ], [ %1243, %1554 ], [ %1243, %1237 ], [ %2292, %2269 ], [ %1243, %2267 ], [ %2264, %2221 ], [ %2216, %2185 ], [ %1243, %1258 ]
  %2302 = phi float [ %1244, %2154 ], [ %1244, %1554 ], [ %1244, %1237 ], [ %2293, %2269 ], [ %1244, %2267 ], [ %2265, %2221 ], [ %2217, %2185 ], [ %1244, %1258 ]
  %2303 = phi float [ %1245, %2154 ], [ %1245, %1554 ], [ %1245, %1237 ], [ %2294, %2269 ], [ %1245, %2267 ], [ %2266, %2221 ], [ %2218, %2185 ], [ %1245, %1258 ]
  %2304 = phi float [ %2158, %2154 ], [ %1246, %1554 ], [ %1246, %1237 ], [ %2158, %2269 ], [ %2158, %2267 ], [ %2158, %2221 ], [ %2158, %2185 ], [ %1246, %1258 ]
  %2305 = phi float [ %2159, %2154 ], [ %1247, %1554 ], [ %1247, %1237 ], [ %2159, %2269 ], [ %2159, %2267 ], [ %2159, %2221 ], [ %2159, %2185 ], [ %1247, %1258 ]
  %2306 = phi float [ %2160, %2154 ], [ %1248, %1554 ], [ %1248, %1237 ], [ %2160, %2269 ], [ %2160, %2267 ], [ %2160, %2221 ], [ %2160, %2185 ], [ %1248, %1258 ]
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
  %2544 = add i32 %60, 448
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
  %2596 = add i32 %60, 432
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
  %2622 = add i32 %60, 384
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
  %2645 = add i32 %60, 468
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
  %2843 = add i32 %60, 400
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
  %2927 = add i32 %60, 416
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
  %2985 = add i32 %60, 484
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
  %3026 = add i32 %60, 500
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
  %3119 = fmul fast float %3113, %2304
  %3120 = fmul fast float %3114, %2305
  %3121 = fmul fast float %3115, %2306
  br label %3122

; <label>:3122                                    ; preds = %3087, %3069
  %3123 = phi float [ %3116, %3087 ], [ %2298, %3069 ]
  %3124 = phi float [ %3117, %3087 ], [ %2299, %3069 ]
  %3125 = phi float [ %3118, %3087 ], [ %2300, %3069 ]
  %3126 = phi float [ %3119, %3087 ], [ %2304, %3069 ]
  %3127 = phi float [ %3120, %3087 ], [ %2305, %3069 ]
  %3128 = phi float [ %3121, %3087 ], [ %2306, %3069 ]
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
  %3267 = fsub fast float %3070, %2301
  %3268 = fsub fast float %3071, %2302
  %3269 = fsub fast float %3072, %2303
  %3270 = fmul fast float %3240, %3267
  %3271 = fmul fast float %3240, %3268
  %3272 = fmul fast float %3240, %3269
  %3273 = fadd fast float %3270, %2301
  %3274 = fadd fast float %3271, %2302
  %3275 = fadd fast float %3272, %2303
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
  %3321 = fadd fast float %3318, %2301
  %3322 = fadd fast float %3319, %2302
  %3323 = fadd fast float %3320, %2303
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
  %3349 = fadd fast float %3346, %2301
  %3350 = fadd fast float %3347, %2302
  %3351 = fadd fast float %3348, %2303
  br label %3352

; <label>:3352                                    ; preds = %3326, %3324, %3278, %3242, %3211, %2611, %2315, %2295
  %3353 = phi float [ %2296, %3211 ], [ %2296, %2611 ], [ %2296, %2295 ], [ %3329, %3326 ], [ %2296, %3324 ], [ %3281, %3278 ], [ %3247, %3242 ], [ %2296, %2315 ]
  %3354 = phi float [ %2297, %3211 ], [ %2297, %2611 ], [ %2297, %2295 ], [ %3330, %3326 ], [ %2297, %3324 ], [ %3282, %3278 ], [ %3248, %3242 ], [ %2297, %2315 ]
  %3355 = phi float [ %3212, %3211 ], [ %2298, %2611 ], [ %2298, %2295 ], [ %3212, %3326 ], [ %3212, %3324 ], [ %3212, %3278 ], [ %3212, %3242 ], [ %2298, %2315 ]
  %3356 = phi float [ %3213, %3211 ], [ %2299, %2611 ], [ %2299, %2295 ], [ %3213, %3326 ], [ %3213, %3324 ], [ %3213, %3278 ], [ %3213, %3242 ], [ %2299, %2315 ]
  %3357 = phi float [ %3214, %3211 ], [ %2300, %2611 ], [ %2300, %2295 ], [ %3214, %3326 ], [ %3214, %3324 ], [ %3214, %3278 ], [ %3214, %3242 ], [ %2300, %2315 ]
  %3358 = phi float [ %2301, %3211 ], [ %2301, %2611 ], [ %2301, %2295 ], [ %3349, %3326 ], [ %2301, %3324 ], [ %3321, %3278 ], [ %3273, %3242 ], [ %2301, %2315 ]
  %3359 = phi float [ %2302, %3211 ], [ %2302, %2611 ], [ %2302, %2295 ], [ %3350, %3326 ], [ %2302, %3324 ], [ %3322, %3278 ], [ %3274, %3242 ], [ %2302, %2315 ]
  %3360 = phi float [ %2303, %3211 ], [ %2303, %2611 ], [ %2303, %2295 ], [ %3351, %3326 ], [ %2303, %3324 ], [ %3323, %3278 ], [ %3275, %3242 ], [ %2303, %2315 ]
  %3361 = phi float [ %3215, %3211 ], [ %2304, %2611 ], [ %2304, %2295 ], [ %3215, %3326 ], [ %3215, %3324 ], [ %3215, %3278 ], [ %3215, %3242 ], [ %2304, %2315 ]
  %3362 = phi float [ %3216, %3211 ], [ %2305, %2611 ], [ %2305, %2295 ], [ %3216, %3326 ], [ %3216, %3324 ], [ %3216, %3278 ], [ %3216, %3242 ], [ %2305, %2315 ]
  %3363 = phi float [ %3217, %3211 ], [ %2306, %2611 ], [ %2306, %2295 ], [ %3217, %3326 ], [ %3217, %3324 ], [ %3217, %3278 ], [ %3217, %3242 ], [ %2306, %2315 ]
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
  %3601 = add i32 %60, 452
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
  %3653 = add i32 %60, 436
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
  %3679 = add i32 %60, 388
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
  %3702 = add i32 %60, 472
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
  %3900 = add i32 %60, 404
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
  %3984 = add i32 %60, 420
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
  %4042 = add i32 %60, 488
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
  %4083 = add i32 %60, 504
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
  %4176 = fmul fast float %4170, %3361
  %4177 = fmul fast float %4171, %3362
  %4178 = fmul fast float %4172, %3363
  br label %4179

; <label>:4179                                    ; preds = %4144, %4126
  %4180 = phi float [ %4173, %4144 ], [ %3355, %4126 ]
  %4181 = phi float [ %4174, %4144 ], [ %3356, %4126 ]
  %4182 = phi float [ %4175, %4144 ], [ %3357, %4126 ]
  %4183 = phi float [ %4176, %4144 ], [ %3361, %4126 ]
  %4184 = phi float [ %4177, %4144 ], [ %3362, %4126 ]
  %4185 = phi float [ %4178, %4144 ], [ %3363, %4126 ]
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
  %4324 = fsub fast float %4127, %3358
  %4325 = fsub fast float %4128, %3359
  %4326 = fsub fast float %4129, %3360
  %4327 = fmul fast float %4297, %4324
  %4328 = fmul fast float %4297, %4325
  %4329 = fmul fast float %4297, %4326
  %4330 = fadd fast float %4327, %3358
  %4331 = fadd fast float %4328, %3359
  %4332 = fadd fast float %4329, %3360
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
  %4378 = fadd fast float %4375, %3358
  %4379 = fadd fast float %4376, %3359
  %4380 = fadd fast float %4377, %3360
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
  %4406 = fadd fast float %4403, %3358
  %4407 = fadd fast float %4404, %3359
  %4408 = fadd fast float %4405, %3360
  br label %4409

; <label>:4409                                    ; preds = %4383, %4381, %4335, %4299, %4268, %3668, %3372, %3352
  %4410 = phi float [ %3353, %4268 ], [ %3353, %3668 ], [ %3353, %3352 ], [ %3353, %3372 ], [ %4304, %4299 ], [ %4338, %4335 ], [ %3353, %4381 ], [ %4386, %4383 ]
  %4411 = phi float [ %3354, %4268 ], [ %3354, %3668 ], [ %3354, %3352 ], [ %3354, %3372 ], [ %4305, %4299 ], [ %4339, %4335 ], [ %3354, %4381 ], [ %4387, %4383 ]
  %4412 = phi float [ %4269, %4268 ], [ %3355, %3668 ], [ %3355, %3352 ], [ %3355, %3372 ], [ %4269, %4299 ], [ %4269, %4335 ], [ %4269, %4381 ], [ %4269, %4383 ]
  %4413 = phi float [ %4270, %4268 ], [ %3356, %3668 ], [ %3356, %3352 ], [ %3356, %3372 ], [ %4270, %4299 ], [ %4270, %4335 ], [ %4270, %4381 ], [ %4270, %4383 ]
  %4414 = phi float [ %4271, %4268 ], [ %3357, %3668 ], [ %3357, %3352 ], [ %3357, %3372 ], [ %4271, %4299 ], [ %4271, %4335 ], [ %4271, %4381 ], [ %4271, %4383 ]
  %4415 = phi float [ %3358, %4268 ], [ %3358, %3668 ], [ %3358, %3352 ], [ %3358, %3372 ], [ %4330, %4299 ], [ %4378, %4335 ], [ %3358, %4381 ], [ %4406, %4383 ]
  %4416 = phi float [ %3359, %4268 ], [ %3359, %3668 ], [ %3359, %3352 ], [ %3359, %3372 ], [ %4331, %4299 ], [ %4379, %4335 ], [ %3359, %4381 ], [ %4407, %4383 ]
  %4417 = phi float [ %3360, %4268 ], [ %3360, %3668 ], [ %3360, %3352 ], [ %3360, %3372 ], [ %4332, %4299 ], [ %4380, %4335 ], [ %3360, %4381 ], [ %4408, %4383 ]
  %4418 = phi float [ %4272, %4268 ], [ %3361, %3668 ], [ %3361, %3352 ], [ %3361, %3372 ], [ %4272, %4299 ], [ %4272, %4335 ], [ %4272, %4381 ], [ %4272, %4383 ]
  %4419 = phi float [ %4273, %4268 ], [ %3362, %3668 ], [ %3362, %3352 ], [ %3362, %3372 ], [ %4273, %4299 ], [ %4273, %4335 ], [ %4273, %4381 ], [ %4273, %4383 ]
  %4420 = phi float [ %4274, %4268 ], [ %3363, %3668 ], [ %3363, %3352 ], [ %3363, %3372 ], [ %4274, %4299 ], [ %4274, %4335 ], [ %4274, %4381 ], [ %4274, %4383 ]
  %4421 = phi float [ %3364, %4268 ], [ %3364, %3668 ], [ %3364, %3352 ], [ %3364, %3372 ], [ %4318, %4299 ], [ %4370, %4335 ], [ %3364, %4381 ], [ %4398, %4383 ]
  %4422 = phi float [ %3365, %4268 ], [ %3365, %3668 ], [ %3365, %3352 ], [ %3365, %3372 ], [ %4319, %4299 ], [ %4371, %4335 ], [ %3365, %4381 ], [ %4399, %4383 ]
  %4423 = phi float [ %3366, %4268 ], [ %3366, %3668 ], [ %3366, %3352 ], [ %3366, %3372 ], [ %4320, %4299 ], [ %4372, %4335 ], [ %3366, %4381 ], [ %4400, %4383 ]
  %4424 = phi float [ %4275, %4268 ], [ %3367, %3668 ], [ %3367, %3352 ], [ %3367, %3372 ], [ %4275, %4299 ], [ %4275, %4335 ], [ %4275, %4381 ], [ %4275, %4383 ]
  %4425 = phi float [ %3368, %4268 ], [ %3368, %3668 ], [ %3368, %3352 ], [ %3368, %3372 ], [ %4311, %4299 ], [ %4366, %4335 ], [ %3368, %4381 ], [ %4394, %4383 ]
  %4426 = phi float [ %3369, %4268 ], [ %3369, %3668 ], [ %3369, %3352 ], [ %3369, %3372 ], [ %4308, %4299 ], [ %4343, %4335 ], [ %3369, %4381 ], [ %4391, %4383 ]
  %4427 = phi float [ %3370, %4268 ], [ %3370, %3668 ], [ %3370, %3352 ], [ %3370, %3372 ], [ %4323, %4299 ], [ %4374, %4335 ], [ %3370, %4381 ], [ %4402, %4383 ]
  %4428 = phi float [ %4276, %4268 ], [ %3371, %3668 ], [ %3371, %3352 ], [ %3371, %3372 ], [ %4276, %4299 ], [ %4276, %4335 ], [ %4276, %4381 ], [ %4276, %4383 ]
  %4429 = add i32 %60, 360
  %4430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.i32 %4430, 0
  %4432 = extractvalue %dx.types.ResRet.i32 %4430, 1
  %4433 = bitcast i32 %4431 to float
  %4434 = bitcast i32 %4432 to float
  %4435 = fcmp fast oge float %4433, 0.000000e+00
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = select i1 %4435, float %4433, float %4437
  %4439 = add i32 %60, 456
  %4440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.i32 %4440, 0
  %4442 = add i32 %4441, 0
  %4443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4443, %dx.types.Handle %106, float %88, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4445 = extractvalue %dx.types.ResRet.f32 %4444, 0
  %4446 = fmul fast float %4445, %4434
  %4447 = fadd fast float %4446, %4438
  %4448 = call float @dx.op.dot2.f32(i32 54, float %4410, float %4411, float %4410, float %4411)  ; Dot2(ax,ay,bx,by)
  %4449 = fmul fast float %4448, 0x3FE3333340000000
  %4450 = fsub fast float 1.000000e+00, %4449
  %4451 = call float @dx.op.dot3.f32(i32 55, float %4410, float %4411, float %4450, float %4410, float %4411, float %4450)  ; Dot3(ax,ay,az,bx,by,bz)
  %4452 = call float @dx.op.unary.f32(i32 25, float %4451)  ; Rsqrt(value)
  %4453 = fmul fast float %4452, %4410
  %4454 = fmul fast float %4452, %4411
  %4455 = fmul fast float %4450, %4452
  %4456 = fmul fast float %4455, %116
  %4457 = fmul fast float %4455, %117
  %4458 = fmul fast float %4455, %118
  %4459 = fmul fast float %4453, %81
  %4460 = fmul fast float %4453, %82
  %4461 = fmul fast float %4453, %83
  %4462 = fadd fast float %4456, %4459
  %4463 = fadd fast float %4457, %4460
  %4464 = fadd fast float %4458, %4461
  %4465 = fmul fast float %128, %4454
  %4466 = fmul fast float %129, %4454
  %4467 = fmul fast float %130, %4454
  %4468 = fadd fast float %4462, %4465
  %4469 = fadd fast float %4463, %4466
  %4470 = fadd fast float %4464, %4467
  %4471 = call float @dx.op.dot3.f32(i32 55, float %4468, float %4469, float %4470, float %4468, float %4469, float %4470)  ; Dot3(ax,ay,az,bx,by,bz)
  %4472 = call float @dx.op.unary.f32(i32 25, float %4471)  ; Rsqrt(value)
  %4473 = fmul fast float %4468, %4472
  %4474 = fmul fast float %4469, %4472
  %4475 = fmul fast float %4470, %4472
  %4476 = and i32 %62, 1
  %4477 = icmp eq i32 %4476, 0
  br i1 %4477, label %4478, label %5070

; <label>:4478                                    ; preds = %4409
  %4479 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %4480 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4481 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4482 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %4483 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4484 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4485 = fadd fast float %4479, %164
  %4486 = fadd fast float %4480, %165
  %4487 = fadd fast float %4481, %166
  %4488 = fadd fast float %4482, %164
  %4489 = fadd fast float %4483, %165
  %4490 = fadd fast float %4484, %166
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.CBufRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.CBufRet.f32 %4491, 2
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 2
  %4497 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4498 = fmul fast float %4492, %109
  %4499 = fmul fast float %4498, %4496
  %4500 = fmul fast float %4493, %110
  %4501 = fmul fast float %4500, %4497
  %4502 = fptoui float %4499 to i32
  %4503 = fptoui float %4501 to i32
  %4504 = fadd fast float %4492, -1.000000e+00
  %4505 = fadd fast float %4493, -1.000000e+00
  %4506 = fptoui float %4504 to i32
  %4507 = fptoui float %4505 to i32
  %4508 = call i32 @dx.op.binary.i32(i32 40, i32 %4502, i32 %4506)  ; UMin(a,b)
  %4509 = call i32 @dx.op.binary.i32(i32 40, i32 %4503, i32 %4507)  ; UMin(a,b)
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 2
  %4512 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4513 = fmul fast float %4511, %97
  %4514 = fsub fast float %4513, %4512
  %4515 = fadd fast float %4494, -1.000000e+00
  %4516 = call float @dx.op.binary.f32(i32 36, float %4514, float %4515)  ; FMin(a,b)
  %4517 = fptoui float %4516 to i32
  %4518 = fptoui float %4492 to i32
  %4519 = fptoui float %4493 to i32
  %4520 = mul i32 %4517, %4519
  %4521 = add i32 %4520, %4509
  %4522 = mul i32 %4521, %4518
  %4523 = add i32 %4522, %4508
  %4524 = shl i32 %4523, 2
  %4525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4524, i32 undef)  ; BufferLoad(srv,index,wot)
  %4526 = extractvalue %dx.types.ResRet.i32 %4525, 0
  %4527 = and i32 %4526, 1023
  %4528 = lshr i32 %4526, 10
  %4529 = icmp eq i32 %4527, 0
  br i1 %4529, label %5033, label %4530

; <label>:4530                                    ; preds = %4478
  %4531 = and i32 %4526, 1023
  br label %4532

; <label>:4532                                    ; preds = %4664, %4530
  %4533 = phi i32 [ %4614, %4664 ], [ 0, %4530 ]
  %4534 = phi float [ %4665, %4664 ], [ 0.000000e+00, %4530 ]
  %4535 = phi float [ %4666, %4664 ], [ %4447, %4530 ]
  %4536 = phi float [ %4667, %4664 ], [ %4428, %4530 ]
  %4537 = phi float [ %4668, %4664 ], [ %4421, %4530 ]
  %4538 = phi float [ %4669, %4664 ], [ %4422, %4530 ]
  %4539 = phi float [ %4670, %4664 ], [ %4423, %4530 ]
  %4540 = phi float [ %4671, %4664 ], [ 0.000000e+00, %4530 ]
  %4541 = phi float [ %4672, %4664 ], [ 0.000000e+00, %4530 ]
  %4542 = phi float [ %4673, %4664 ], [ %4415, %4530 ]
  %4543 = phi float [ %4674, %4664 ], [ %4416, %4530 ]
  %4544 = phi float [ %4675, %4664 ], [ %4417, %4530 ]
  %4545 = phi float [ %4676, %4664 ], [ %4418, %4530 ]
  %4546 = phi float [ %4677, %4664 ], [ %4419, %4530 ]
  %4547 = phi float [ %4678, %4664 ], [ %4420, %4530 ]
  %4548 = phi float [ %4679, %4664 ], [ %4473, %4530 ]
  %4549 = phi float [ %4680, %4664 ], [ %4474, %4530 ]
  %4550 = phi float [ %4681, %4664 ], [ %4475, %4530 ]
  %4551 = phi float [ %4682, %4664 ], [ %4426, %4530 ]
  %4552 = phi float [ %4683, %4664 ], [ %4425, %4530 ]
  %4553 = phi float [ %4684, %4664 ], [ 0.000000e+00, %4530 ]
  %4554 = phi float [ %4685, %4664 ], [ %4424, %4530 ]
  %4555 = phi float [ %4686, %4664 ], [ %4412, %4530 ]
  %4556 = phi float [ %4687, %4664 ], [ %4413, %4530 ]
  %4557 = phi float [ %4688, %4664 ], [ %4414, %4530 ]
  %4558 = add nuw nsw i32 %4533, %4528
  %4559 = shl i32 %4558, 2
  %4560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.i32 %4560, 0
  %4562 = shl i32 %4561, 8
  %4563 = or i32 %4562, 48
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4568 = extractvalue %dx.types.ResRet.f32 %4564, 3
  %4569 = or i32 %4562, 64
  %4570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.i32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.i32 %4570, 1
  %4573 = or i32 %4562, 80
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4577 = or i32 %4562, 96
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = extractvalue %dx.types.ResRet.f32 %4578, 3
  %4583 = or i32 %4562, 112
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 2
  %4586 = or i32 %4562, 128
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.ResRet.f32 %4587, 2
  %4591 = extractvalue %dx.types.ResRet.f32 %4587, 3
  %4592 = or i32 %4562, 144
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.ResRet.f32 %4593, 3
  %4598 = or i32 %4562, 160
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = extractvalue %dx.types.ResRet.f32 %4599, 3
  %4604 = or i32 %4562, 192
  %4605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.i32 %4605, 0
  %4607 = or i32 %4562, 208
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = or i32 %4562, 248
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = add nuw nsw i32 %4533, 1
  %4615 = bitcast float %4568 to i32
  %4616 = and i32 %4615, 512
  %4617 = icmp eq i32 %4616, 0
  %4618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4619 = extractvalue %dx.types.ResRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.ResRet.f32 %4618, 1
  %4621 = extractvalue %dx.types.ResRet.f32 %4618, 2
  %4622 = extractvalue %dx.types.ResRet.f32 %4618, 3
  %4623 = call float @dx.op.dot4.f32(i32 56, float %4619, float %4620, float %4621, float %4622, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4624 = or i32 %4562, 16
  %4625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4624, i32 undef)  ; BufferLoad(srv,index,wot)
  %4626 = extractvalue %dx.types.ResRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.ResRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.ResRet.f32 %4625, 2
  %4629 = extractvalue %dx.types.ResRet.f32 %4625, 3
  %4630 = call float @dx.op.dot4.f32(i32 56, float %4626, float %4627, float %4628, float %4629, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4631 = or i32 %4562, 32
  %4632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4631, i32 undef)  ; BufferLoad(srv,index,wot)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.ResRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.ResRet.f32 %4632, 2
  %4636 = extractvalue %dx.types.ResRet.f32 %4632, 3
  %4637 = call float @dx.op.dot4.f32(i32 56, float %4633, float %4634, float %4635, float %4636, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4638 = call float @dx.op.unary.f32(i32 27, float %4623)  ; Round_ni(value)
  %4639 = call float @dx.op.unary.f32(i32 6, float %4638)  ; FAbs(value)
  %4640 = call float @dx.op.unary.f32(i32 27, float %4630)  ; Round_ni(value)
  %4641 = call float @dx.op.unary.f32(i32 6, float %4640)  ; FAbs(value)
  %4642 = call float @dx.op.unary.f32(i32 6, float %4637)  ; FAbs(value)
  %4643 = call float @dx.op.unary.f32(i32 27, float %4642)  ; Round_ni(value)
  %4644 = fadd fast float %4641, %4639
  %4645 = fadd fast float %4644, %4643
  %4646 = fcmp fast oeq float %4645, 0.000000e+00
  %4647 = call float @dx.op.dot4.f32(i32 56, float %4619, float %4620, float %4621, float %4622, float %4485, float %4486, float %4487, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4648 = call float @dx.op.dot4.f32(i32 56, float %4626, float %4627, float %4628, float %4629, float %4485, float %4486, float %4487, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4649 = call float @dx.op.dot4.f32(i32 56, float %4619, float %4620, float %4621, float %4622, float %4488, float %4489, float %4490, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4650 = call float @dx.op.dot4.f32(i32 56, float %4626, float %4627, float %4628, float %4629, float %4488, float %4489, float %4490, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4651 = fsub fast float %4647, %4623
  %4652 = fsub fast float %4649, %4623
  %4653 = fsub fast float %4648, %4630
  %4654 = fsub fast float %4650, %4630
  %4655 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4566, float %4567, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4657 = extractvalue %dx.types.CBufRet.f32 %4656, 2
  %4658 = fadd fast float %4657, %4655
  %4659 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4656, 0
  %4661 = fcmp fast ogt float %4659, %4660
  %4662 = and i1 %4646, %4661
  %4663 = and i1 %4617, %4662
  br i1 %4663, label %4690, label %4664

; <label>:4664                                    ; preds = %5019, %4771, %4690, %4532
  %4665 = phi float [ %4534, %4690 ], [ %4774, %4771 ], [ %4774, %5019 ], [ %4534, %4532 ]
  %4666 = phi float [ %4535, %4690 ], [ %4535, %4771 ], [ %4995, %5019 ], [ %4535, %4532 ]
  %4667 = phi float [ %4536, %4690 ], [ %4536, %4771 ], [ %4993, %5019 ], [ %4536, %4532 ]
  %4668 = phi float [ %4537, %4690 ], [ %4537, %4771 ], [ %4971, %5019 ], [ %4537, %4532 ]
  %4669 = phi float [ %4538, %4690 ], [ %4538, %4771 ], [ %4972, %5019 ], [ %4538, %4532 ]
  %4670 = phi float [ %4539, %4690 ], [ %4539, %4771 ], [ %4973, %5019 ], [ %4539, %4532 ]
  %4671 = phi float [ %4540, %4690 ], [ %4540, %4771 ], [ %4898, %5019 ], [ %4540, %4532 ]
  %4672 = phi float [ %4541, %4690 ], [ %4541, %4771 ], [ %4896, %5019 ], [ %4541, %4532 ]
  %4673 = phi float [ %4542, %4690 ], [ %4542, %4771 ], [ %4941, %5019 ], [ %4542, %4532 ]
  %4674 = phi float [ %4543, %4690 ], [ %4543, %4771 ], [ %4942, %5019 ], [ %4543, %4532 ]
  %4675 = phi float [ %4544, %4690 ], [ %4544, %4771 ], [ %4943, %5019 ], [ %4544, %4532 ]
  %4676 = phi float [ %4545, %4690 ], [ %4545, %4771 ], [ %5029, %5019 ], [ %4545, %4532 ]
  %4677 = phi float [ %4546, %4690 ], [ %4546, %4771 ], [ %5030, %5019 ], [ %4546, %4532 ]
  %4678 = phi float [ %4547, %4690 ], [ %4547, %4771 ], [ %5031, %5019 ], [ %4547, %4532 ]
  %4679 = phi float [ %4548, %4690 ], [ %4548, %4771 ], [ %4877, %5019 ], [ %4548, %4532 ]
  %4680 = phi float [ %4549, %4690 ], [ %4549, %4771 ], [ %4878, %5019 ], [ %4549, %4532 ]
  %4681 = phi float [ %4550, %4690 ], [ %4550, %4771 ], [ %4879, %5019 ], [ %4550, %4532 ]
  %4682 = phi float [ %4551, %4690 ], [ %4551, %4771 ], [ %4951, %5019 ], [ %4551, %4532 ]
  %4683 = phi float [ %4552, %4690 ], [ %4552, %4771 ], [ %4948, %5019 ], [ %4552, %4532 ]
  %4684 = phi float [ %4553, %4690 ], [ %4553, %4771 ], [ %4945, %5019 ], [ %4553, %4532 ]
  %4685 = phi float [ %4554, %4690 ], [ %4554, %4771 ], [ %4894, %5019 ], [ %4554, %4532 ]
  %4686 = phi float [ %4555, %4690 ], [ %4555, %4771 ], [ %4889, %5019 ], [ %4555, %4532 ]
  %4687 = phi float [ %4556, %4690 ], [ %4556, %4771 ], [ %4890, %5019 ], [ %4556, %4532 ]
  %4688 = phi float [ %4557, %4690 ], [ %4557, %4771 ], [ %4891, %5019 ], [ %4557, %4532 ]
  %4689 = icmp eq i32 %4614, %4531
  br i1 %4689, label %5032, label %4532

; <label>:4690                                    ; preds = %4532
  %4691 = extractvalue %dx.types.ResRet.f32 %4584, 3
  %4692 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4693 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4694 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4696 = extractvalue %dx.types.ResRet.i32 %4570, 3
  %4697 = extractvalue %dx.types.ResRet.i32 %4570, 2
  %4698 = add i32 %4696, 0
  %4699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4698, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4701 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4699, %dx.types.Handle %4700, float %4623, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float %4651, float %4653, float undef, float %4652, float %4654, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = fmul fast float %4702, %4695
  %4704 = fadd fast float %4703, %4694
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = fmul fast float %4623, %4579
  %4707 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4630, float %4706)  ; FMad(a,b,c)
  %4708 = fadd fast float %4707, %4693
  %4709 = fmul fast float %4623, %4581
  %4710 = call float @dx.op.tertiary.f32(i32 46, float %4582, float %4630, float %4709)  ; FMad(a,b,c)
  %4711 = fadd fast float %4710, %4692
  %4712 = fmul fast float %4651, %4579
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4653, float %4712)  ; FMad(a,b,c)
  %4714 = fmul fast float %4651, %4581
  %4715 = call float @dx.op.tertiary.f32(i32 46, float %4582, float %4653, float %4714)  ; FMad(a,b,c)
  %4716 = fmul fast float %4652, %4579
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4580, float %4654, float %4716)  ; FMad(a,b,c)
  %4718 = fmul fast float %4652, %4581
  %4719 = call float @dx.op.tertiary.f32(i32 46, float %4582, float %4654, float %4718)  ; FMad(a,b,c)
  %4720 = add i32 %4697, 0
  %4721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4720, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4721, %dx.types.Handle %4700, float %4708, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4713, float %4715, float undef, float %4717, float %4719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = and i32 %4615, 1024
  %4725 = icmp ne i32 %4724, 0
  %4726 = fcmp fast ogt float %4723, 0x3FE0101020000000
  %4727 = uitofp i1 %4726 to float
  %4728 = select i1 %4725, float %4727, float %4723
  %4729 = and i32 %4615, 8192
  %4730 = icmp ne i32 %4729, 0
  %4731 = select i1 %4730, float %4691, float 1.000000e+00
  %4732 = fmul fast float %4623, 2.000000e+00
  %4733 = fadd fast float %4732, -1.000000e+00
  %4734 = call float @dx.op.unary.f32(i32 6, float %4733)  ; FAbs(value)
  %4735 = fmul fast float %4734, %4612
  %4736 = fsub fast float %4735, %4612
  %4737 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4738 = fmul fast float %4630, 2.000000e+00
  %4739 = fadd fast float %4738, -1.000000e+00
  %4740 = call float @dx.op.unary.f32(i32 6, float %4739)  ; FAbs(value)
  %4741 = fmul fast float %4740, %4613
  %4742 = fsub fast float %4741, %4613
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = fmul fast float %4642, %4575
  %4745 = fsub fast float %4744, %4575
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = fmul fast float %4705, %4731
  %4748 = fmul fast float %4747, %4702
  %4749 = fmul fast float %4748, %4737
  %4750 = fmul fast float %4749, %4728
  %4751 = fmul fast float %4750, %4743
  %4752 = fmul fast float %4751, %4746
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 1
  %4755 = extractvalue %dx.types.CBufRet.f32 %4753, 0
  %4756 = fsub fast float %4659, %4755
  %4757 = fmul fast float %4756, %4754
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = fmul fast float %4752, %4576
  %4760 = fadd fast float %4752, %4576
  %4761 = fmul fast float %4760, %4585
  %4762 = fsub fast float %4761, %4585
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4764 = and i32 %4615, 128
  %4765 = icmp ne i32 %4764, 0
  %4766 = select i1 %4765, float %4763, float %4759
  %4767 = fmul fast float %4766, %4758
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4770 = fcmp fast ugt float %4767, %4769
  br i1 %4770, label %4771, label %4664

; <label>:4771                                    ; preds = %4690
  %4772 = select i1 %4730, float %4767, float 0.000000e+00
  %4773 = fadd fast float %4772, %4534
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  br i1 %4730, label %4664, label %4775

; <label>:4775                                    ; preds = %4771
  %4776 = and i32 %4615, 4
  %4777 = and i32 %4615, 8
  %4778 = add i32 %4571, 0
  %4779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4781 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4779, %dx.types.Handle %4780, float %4708, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4713, float %4715, float undef, float %4717, float %4719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4782 = extractvalue %dx.types.ResRet.f32 %4781, 0
  %4783 = extractvalue %dx.types.ResRet.f32 %4781, 1
  %4784 = extractvalue %dx.types.ResRet.f32 %4781, 2
  %4785 = extractvalue %dx.types.ResRet.f32 %4781, 3
  %4786 = bitcast float %4597 to i32
  %4787 = and i32 %4786, 255
  %4788 = uitofp i32 %4787 to float
  %4789 = lshr i32 %4786, 8
  %4790 = and i32 %4789, 255
  %4791 = uitofp i32 %4790 to float
  %4792 = fmul fast float %4785, %4788
  %4793 = fadd fast float %4792, %4791
  %4794 = fmul fast float %4793, 0x3F70101000000000
  %4795 = add i32 %4572, 0
  %4796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4795, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4796, %dx.types.Handle %4780, float %4708, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4713, float %4715, float undef, float %4717, float %4719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4801 = extractvalue %dx.types.ResRet.f32 %4797, 3
  %4802 = bitcast float %4591 to i32
  %4803 = and i32 %4802, 255
  %4804 = uitofp i32 %4803 to float
  %4805 = lshr i32 %4802, 8
  %4806 = and i32 %4805, 255
  %4807 = uitofp i32 %4806 to float
  %4808 = lshr i32 %4802, 16
  %4809 = and i32 %4808, 255
  %4810 = uitofp i32 %4809 to float
  %4811 = fmul fast float %4810, 0x3F70101000000000
  %4812 = fmul fast float %4798, %4804
  %4813 = fadd fast float %4812, %4807
  %4814 = fmul fast float %4813, 0x3F70101000000000
  %4815 = fadd fast float %4799, -5.000000e-01
  %4816 = fadd fast float %4801, -5.000000e-01
  %4817 = fmul fast float %4815, %4811
  %4818 = fmul fast float %4816, %4811
  %4819 = fadd fast float %4817, 5.000000e-01
  %4820 = fadd fast float %4818, 5.000000e-01
  %4821 = fmul fast float %4782, %4600
  %4822 = fmul fast float %4783, %4601
  %4823 = fmul fast float %4784, %4602
  %4824 = fmul fast float %4819, 2.000000e+00
  %4825 = fadd fast float %4824, -1.000000e+00
  %4826 = fmul fast float %4820, 2.000000e+00
  %4827 = fadd fast float %4826, -1.000000e+00
  %4828 = fadd fast float %4825, %4827
  %4829 = fmul fast float %4828, 5.000000e-01
  %4830 = fsub fast float %4825, %4827
  %4831 = fmul fast float %4830, 5.000000e-01
  %4832 = call float @dx.op.unary.f32(i32 6, float %4829)  ; FAbs(value)
  %4833 = fsub fast float 1.000000e+00, %4832
  %4834 = call float @dx.op.unary.f32(i32 6, float %4831)  ; FAbs(value)
  %4835 = fsub fast float %4833, %4834
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4829, float %4831, float %4835, float %4829, float %4831, float %4835)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = call float @dx.op.unary.f32(i32 25, float %4836)  ; Rsqrt(value)
  %4838 = fmul fast float %4829, %4837
  %4839 = fmul fast float %4831, %4837
  %4840 = fmul fast float %4837, %4835
  %4841 = fmul fast float %4840, %4565
  %4842 = fmul fast float %4840, %4566
  %4843 = fmul fast float %4840, %4567
  %4844 = fmul fast float %4838, %4588
  %4845 = fmul fast float %4838, %4589
  %4846 = fmul fast float %4838, %4590
  %4847 = fadd fast float %4844, %4841
  %4848 = fadd fast float %4845, %4842
  %4849 = fadd fast float %4846, %4843
  %4850 = fmul fast float %4839, %4594
  %4851 = fmul fast float %4839, %4595
  %4852 = fmul fast float %4839, %4596
  %4853 = fadd fast float %4847, %4850
  %4854 = fadd fast float %4848, %4851
  %4855 = fadd fast float %4849, %4852
  %4856 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4854, float %4855, float %4853, float %4854, float %4855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = call float @dx.op.unary.f32(i32 25, float %4856)  ; Rsqrt(value)
  %4858 = fmul fast float %4853, %4857
  %4859 = fmul fast float %4854, %4857
  %4860 = fmul fast float %4855, %4857
  %4861 = icmp ne i32 %4777, 0
  %4862 = select i1 %4861, float 1.000000e+00, float 0.000000e+00
  %4863 = fmul fast float %4767, %4862
  %4864 = and i32 %4615, 1
  %4865 = icmp eq i32 %4864, 0
  br i1 %4865, label %4866, label %4870

; <label>:4866                                    ; preds = %4775
  %4867 = fsub fast float %4858, %4548
  %4868 = fsub fast float %4859, %4549
  %4869 = fsub fast float %4860, %4550
  br label %4870

; <label>:4870                                    ; preds = %4866, %4775
  %4871 = phi float [ %4867, %4866 ], [ %4858, %4775 ]
  %4872 = phi float [ %4868, %4866 ], [ %4859, %4775 ]
  %4873 = phi float [ %4869, %4866 ], [ %4860, %4775 ]
  %4874 = fmul float %4873, %4863
  %4875 = fmul float %4872, %4863
  %4876 = fmul float %4871, %4863
  %4877 = fadd fast float %4876, %4548
  %4878 = fadd fast float %4875, %4549
  %4879 = fadd fast float %4874, %4550
  %4880 = icmp ne i32 %4776, 0
  %4881 = select i1 %4880, float 1.000000e+00, float 0.000000e+00
  %4882 = fmul fast float %4767, %4881
  %4883 = fsub fast float %4821, %4555
  %4884 = fsub fast float %4822, %4556
  %4885 = fsub fast float %4823, %4557
  %4886 = fmul fast float %4883, %4882
  %4887 = fmul fast float %4884, %4882
  %4888 = fmul fast float %4885, %4882
  %4889 = fadd fast float %4886, %4555
  %4890 = fadd fast float %4887, %4556
  %4891 = fadd fast float %4888, %4557
  %4892 = fsub fast float %4794, %4554
  %4893 = fmul fast float %4892, %4882
  %4894 = fadd fast float %4893, %4554
  %4895 = fmul fast float %4882, %4541
  %4896 = fsub fast float %4541, %4895
  %4897 = fmul fast float %4882, %4540
  %4898 = fsub fast float %4540, %4897
  %4899 = bitcast float %4609 to i32
  %4900 = lshr i32 %4899, 16
  %4901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4900)  ; LegacyF16ToF32(value)
  %4902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4903 = extractvalue %dx.types.ResRet.i32 %4902, 0
  %4904 = and i32 %4903, 1
  %4905 = icmp eq i32 %4904, 0
  br i1 %4905, label %4906, label %4931

; <label>:4906                                    ; preds = %4870
  %4907 = fadd fast float %4794, 0xBFB99999A0000000
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4908, 0x3FF1C71C80000000
  %4910 = fsub fast float 1.000000e+00, %4909
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fmul fast float %4911, %4821
  %4913 = fmul fast float %4911, %4822
  %4914 = fmul fast float %4911, %4823
  %4915 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = call float @dx.op.binary.f32(i32 35, float %4916, float %4917)  ; FMax(a,b)
  %4919 = call float @dx.op.binary.f32(i32 35, float %4915, float %4918)  ; FMax(a,b)
  %4920 = fcmp fast ogt float %4919, 0.000000e+00
  %4921 = bitcast float %4919 to i32
  %4922 = sub nsw i32 2129859010, %4921
  %4923 = bitcast i32 %4922 to float
  %4924 = select i1 %4920, float %4923, float 0.000000e+00
  %4925 = fmul fast float %4915, %4901
  %4926 = fmul fast float %4916, %4901
  %4927 = fmul fast float %4917, %4901
  %4928 = fmul fast float %4925, %4924
  %4929 = fmul fast float %4926, %4924
  %4930 = fmul fast float %4927, %4924
  br label %4931

; <label>:4931                                    ; preds = %4906, %4870
  %4932 = phi float [ %4901, %4870 ], [ %4928, %4906 ]
  %4933 = phi float [ %4901, %4870 ], [ %4929, %4906 ]
  %4934 = phi float [ %4901, %4870 ], [ %4930, %4906 ]
  %4935 = fsub fast float %4932, %4542
  %4936 = fsub fast float %4933, %4543
  %4937 = fsub fast float %4934, %4544
  %4938 = fmul fast float %4935, %4882
  %4939 = fmul fast float %4936, %4882
  %4940 = fmul fast float %4937, %4882
  %4941 = fadd fast float %4938, %4542
  %4942 = fadd fast float %4939, %4543
  %4943 = fadd fast float %4940, %4544
  %4944 = fadd fast float %4767, %4553
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = fsub fast float %4814, %4552
  %4947 = fmul fast float %4946, %4863
  %4948 = fadd fast float %4947, %4552
  %4949 = fsub fast float %4800, %4551
  %4950 = fmul fast float %4949, %4863
  %4951 = fadd fast float %4950, %4551
  br i1 %4865, label %4960, label %4952

; <label>:4952                                    ; preds = %4931
  %4953 = and i32 %4615, 32768
  %4954 = icmp eq i32 %4953, 0
  br i1 %4954, label %4970, label %4955

; <label>:4955                                    ; preds = %4952
  %4956 = fmul fast float %4863, 1.270000e+02
  %4957 = fadd fast float %4956, %4537
  %4958 = fadd fast float %4956, %4538
  %4959 = fadd fast float %4956, %4539
  br label %4970

; <label>:4960                                    ; preds = %4931
  %4961 = fsub fast float 1.270000e+02, %4537
  %4962 = fsub fast float 1.270000e+02, %4538
  %4963 = fsub fast float 1.270000e+02, %4539
  %4964 = fmul fast float %4863, %4961
  %4965 = fmul fast float %4863, %4962
  %4966 = fmul fast float %4863, %4963
  %4967 = fadd fast float %4964, %4537
  %4968 = fadd fast float %4965, %4538
  %4969 = fadd fast float %4966, %4539
  br label %4970

; <label>:4970                                    ; preds = %4960, %4955, %4952
  %4971 = phi float [ %4957, %4955 ], [ %4537, %4952 ], [ %4967, %4960 ]
  %4972 = phi float [ %4958, %4955 ], [ %4538, %4952 ], [ %4968, %4960 ]
  %4973 = phi float [ %4959, %4955 ], [ %4539, %4952 ], [ %4969, %4960 ]
  %4974 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.f32 %4975, 0
  %4977 = extractvalue %dx.types.CBufRet.f32 %4975, 1
  %4978 = fmul fast float %4977, %4974
  %4979 = fadd fast float %4978, %4976
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = bitcast float %4603 to i32
  %4982 = and i32 %4981, 65535
  %4983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4982)  ; LegacyF16ToF32(value)
  %4984 = lshr i32 %4981, 16
  %4985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4984)  ; LegacyF16ToF32(value)
  %4986 = fcmp fast oge float %4983, 0.000000e+00
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 0
  %4989 = select i1 %4986, float %4983, float %4988
  %4990 = fadd fast float %4989, %4985
  %4991 = fsub fast float %4980, %4536
  %4992 = fmul fast float %4991, %4767
  %4993 = fadd fast float %4992, %4536
  %4994 = fmul fast float %4990, %4767
  %4995 = call float @dx.op.binary.f32(i32 35, float %4535, float %4994)  ; FMax(a,b)
  %4996 = and i32 %4615, 16
  %4997 = icmp eq i32 %4996, 0
  br i1 %4997, label %5019, label %4998

; <label>:4998                                    ; preds = %4970
  %4999 = add i32 %4606, 0
  %5000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4999, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5001 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5000, %dx.types.Handle %4780, float %4708, float %4711, float undef, float undef, i32 0, i32 0, i32 undef, float %4713, float %4715, float undef, float %4717, float %4719, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5002 = extractvalue %dx.types.ResRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.ResRet.f32 %5001, 1
  %5004 = extractvalue %dx.types.ResRet.f32 %5001, 2
  %5005 = and i32 %4899, 65535
  %5006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5005)  ; LegacyF16ToF32(value)
  %5007 = fmul fast float %5002, %4600
  %5008 = fmul fast float %5003, %4601
  %5009 = fmul fast float %5004, %4602
  %5010 = and i32 %4615, 16384
  %5011 = icmp ne i32 %5010, 0
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = select i1 %5011, float %5013, float 1.000000e+00
  %5015 = fmul fast float %5014, %5006
  %5016 = fmul fast float %5007, %5015
  %5017 = fmul fast float %5008, %5015
  %5018 = fmul fast float %5009, %5015
  br label %5019

; <label>:5019                                    ; preds = %4998, %4970
  %5020 = phi float [ %5016, %4998 ], [ 0.000000e+00, %4970 ]
  %5021 = phi float [ %5017, %4998 ], [ 0.000000e+00, %4970 ]
  %5022 = phi float [ %5018, %4998 ], [ 0.000000e+00, %4970 ]
  %5023 = fsub fast float %5020, %4545
  %5024 = fsub fast float %5021, %4546
  %5025 = fsub fast float %5022, %4547
  %5026 = fmul fast float %5023, %4767
  %5027 = fmul fast float %5024, %4767
  %5028 = fmul fast float %5025, %4767
  %5029 = fadd fast float %5026, %4545
  %5030 = fadd fast float %5027, %4546
  %5031 = fadd fast float %5028, %4547
  br label %4664

; <label>:5032                                    ; preds = %4664
  br label %5033

; <label>:5033                                    ; preds = %5032, %4478
  %5034 = phi float [ 0.000000e+00, %4478 ], [ %4665, %5032 ]
  %5035 = phi float [ %4447, %4478 ], [ %4666, %5032 ]
  %5036 = phi float [ %4428, %4478 ], [ %4667, %5032 ]
  %5037 = phi float [ %4421, %4478 ], [ %4668, %5032 ]
  %5038 = phi float [ %4422, %4478 ], [ %4669, %5032 ]
  %5039 = phi float [ %4423, %4478 ], [ %4670, %5032 ]
  %5040 = phi float [ 0.000000e+00, %4478 ], [ %4671, %5032 ]
  %5041 = phi float [ 0.000000e+00, %4478 ], [ %4672, %5032 ]
  %5042 = phi float [ %4415, %4478 ], [ %4673, %5032 ]
  %5043 = phi float [ %4416, %4478 ], [ %4674, %5032 ]
  %5044 = phi float [ %4417, %4478 ], [ %4675, %5032 ]
  %5045 = phi float [ %4418, %4478 ], [ %4676, %5032 ]
  %5046 = phi float [ %4419, %4478 ], [ %4677, %5032 ]
  %5047 = phi float [ %4420, %4478 ], [ %4678, %5032 ]
  %5048 = phi float [ %4473, %4478 ], [ %4679, %5032 ]
  %5049 = phi float [ %4474, %4478 ], [ %4680, %5032 ]
  %5050 = phi float [ %4475, %4478 ], [ %4681, %5032 ]
  %5051 = phi float [ %4426, %4478 ], [ %4682, %5032 ]
  %5052 = phi float [ %4425, %4478 ], [ %4683, %5032 ]
  %5053 = phi float [ 0.000000e+00, %4478 ], [ %4684, %5032 ]
  %5054 = phi float [ %4424, %4478 ], [ %4685, %5032 ]
  %5055 = phi float [ %4412, %4478 ], [ %4686, %5032 ]
  %5056 = phi float [ %4413, %4478 ], [ %4687, %5032 ]
  %5057 = phi float [ %4414, %4478 ], [ %4688, %5032 ]
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = call float @dx.op.unary.f32(i32 25, float %5058)  ; Rsqrt(value)
  %5060 = fmul fast float %5059, %5048
  %5061 = fmul fast float %5059, %5049
  %5062 = fmul fast float %5059, %5050
  %5063 = fadd fast float %5053, %1253
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = call float @dx.op.dot3.f32(i32 55, float %5060, float %5061, float %5062, float %5060, float %5061, float %5062)  ; Dot3(ax,ay,az,bx,by,bz)
  %5066 = call float @dx.op.unary.f32(i32 25, float %5065)  ; Rsqrt(value)
  %5067 = fmul fast float %5066, %5060
  %5068 = fmul fast float %5066, %5061
  %5069 = fmul fast float %5066, %5062
  br label %5070

; <label>:5070                                    ; preds = %5033, %4409
  %5071 = phi float [ %5067, %5033 ], [ %4473, %4409 ]
  %5072 = phi float [ %5068, %5033 ], [ %4474, %4409 ]
  %5073 = phi float [ %5069, %5033 ], [ %4475, %4409 ]
  %5074 = phi float [ %5055, %5033 ], [ %4412, %4409 ]
  %5075 = phi float [ %5056, %5033 ], [ %4413, %4409 ]
  %5076 = phi float [ %5057, %5033 ], [ %4414, %4409 ]
  %5077 = phi float [ %5042, %5033 ], [ %4415, %4409 ]
  %5078 = phi float [ %5043, %5033 ], [ %4416, %4409 ]
  %5079 = phi float [ %5044, %5033 ], [ %4417, %4409 ]
  %5080 = phi float [ %5045, %5033 ], [ %4418, %4409 ]
  %5081 = phi float [ %5046, %5033 ], [ %4419, %4409 ]
  %5082 = phi float [ %5047, %5033 ], [ %4420, %4409 ]
  %5083 = phi float [ %5037, %5033 ], [ %4421, %4409 ]
  %5084 = phi float [ %5038, %5033 ], [ %4422, %4409 ]
  %5085 = phi float [ %5039, %5033 ], [ %4423, %4409 ]
  %5086 = phi float [ %5054, %5033 ], [ %4424, %4409 ]
  %5087 = phi float [ %5064, %5033 ], [ %1253, %4409 ]
  %5088 = phi float [ %5052, %5033 ], [ %4425, %4409 ]
  %5089 = phi float [ %5051, %5033 ], [ %4426, %4409 ]
  %5090 = phi float [ %5041, %5033 ], [ 0.000000e+00, %4409 ]
  %5091 = phi float [ %5040, %5033 ], [ 0.000000e+00, %4409 ]
  %5092 = phi float [ %5034, %5033 ], [ 0.000000e+00, %4409 ]
  %5093 = phi float [ %5035, %5033 ], [ %4447, %4409 ]
  %5094 = phi float [ %5036, %5033 ], [ %4428, %4409 ]
  %5095 = fadd fast float %5086, 0xBFB99999A0000000
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = fmul fast float %5096, 0x3FF1C71C80000000
  %5098 = call float @dx.op.binary.f32(i32 36, float %5086, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5099 = fsub fast float 1.000000e+00, %5097
  %5100 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5101 = fmul fast float %5100, %5074
  %5102 = fmul fast float %5100, %5075
  %5103 = fmul fast float %5100, %5076
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5107 = fmul fast float %5097, %5074
  %5108 = fmul fast float %5097, %5075
  %5109 = fmul fast float %5097, %5076
  %5110 = fadd fast float %5107, %5098
  %5111 = fadd fast float %5108, %5098
  %5112 = fadd fast float %5109, %5098
  %5113 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5114 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5115 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5116 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5118 = extractvalue %dx.types.ResRet.i32 %5117, 0
  %5119 = and i32 %5118, 1
  %5120 = icmp eq i32 %5119, 0
  br i1 %5120, label %5135, label %5121

; <label>:5121                                    ; preds = %5070
  %5122 = call float @dx.op.binary.f32(i32 35, float %5105, float %5106)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 35, float %5104, float %5122)  ; FMax(a,b)
  %5124 = fcmp fast ogt float %5123, 0.000000e+00
  %5125 = bitcast float %5123 to i32
  %5126 = sub nsw i32 2129859010, %5125
  %5127 = bitcast i32 %5126 to float
  %5128 = select i1 %5124, float %5127, float 0.000000e+00
  %5129 = fmul fast float %5104, %5077
  %5130 = fmul fast float %5105, %5078
  %5131 = fmul fast float %5106, %5079
  %5132 = fmul fast float %5129, %5128
  %5133 = fmul fast float %5130, %5128
  %5134 = fmul fast float %5131, %5128
  br label %5135

; <label>:5135                                    ; preds = %5121, %5070
  %5136 = phi float [ %5132, %5121 ], [ %5077, %5070 ]
  %5137 = phi float [ %5133, %5121 ], [ %5078, %5070 ]
  %5138 = phi float [ %5134, %5121 ], [ %5079, %5070 ]
  %5139 = call float @dx.op.binary.f32(i32 36, float %5083, float 1.270000e+02)  ; FMin(a,b)
  %5140 = call float @dx.op.binary.f32(i32 36, float %5084, float 1.270000e+02)  ; FMin(a,b)
  %5141 = call float @dx.op.binary.f32(i32 36, float %5085, float 1.270000e+02)  ; FMin(a,b)
  %5142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.i32 %5142, 3
  %5144 = and i32 %5143, 8
  %5145 = icmp ne i32 %5144, 0
  %5146 = call float @dx.op.binary.f32(i32 35, float %5104, float %5074)  ; FMax(a,b)
  %5147 = call float @dx.op.binary.f32(i32 35, float %5105, float %5074)  ; FMax(a,b)
  %5148 = call float @dx.op.binary.f32(i32 35, float %5106, float %5074)  ; FMax(a,b)
  %5149 = call float @dx.op.dot3.f32(i32 55, float %5104, float %5105, float %5106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = select i1 %226, float %5074, float %5104
  %5151 = select i1 %226, float %5149, float %5105
  %5152 = select i1 %226, float 1.000000e+00, float %5106
  %5153 = select i1 %5145, float %5146, float %5150
  %5154 = select i1 %5145, float %5147, float %5151
  %5155 = select i1 %5145, float %5148, float %5152
  %5156 = call float @dx.op.dot3.f32(i32 55, float %5136, float %5137, float %5138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5157 = select i1 %226, float %5156, float %5136
  %5158 = select i1 %226, float %5156, float %5137
  %5159 = select i1 %226, float %5156, float %5138
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5164 = fadd fast float %5161, %164
  %5165 = fadd fast float %5162, %165
  %5166 = fadd fast float %5163, %166
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5170 = fsub fast float %5164, %5168
  %5171 = fsub fast float %5165, %5169
  %5172 = fmul fast float %5170, %5170
  %5173 = fmul fast float %5171, %5171
  %5174 = fadd fast float %5172, %5173
  %5175 = call float @dx.op.unary.f32(i32 24, float %5174)  ; Sqrt(value)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5167, 2
  %5177 = fcmp fast olt float %5175, %5176
  br i1 %5177, label %5178, label %5245

; <label>:5178                                    ; preds = %5135
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 0
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 0
  %5183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5184 = extractvalue %dx.types.CBufRet.f32 %5183, 0
  %5185 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5186 = extractvalue %dx.types.CBufRet.f32 %5181, 1
  %5187 = extractvalue %dx.types.CBufRet.f32 %5183, 1
  %5188 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5189 = extractvalue %dx.types.CBufRet.f32 %5181, 3
  %5190 = extractvalue %dx.types.CBufRet.f32 %5183, 3
  %5191 = fadd fast float %5188, %5164
  %5192 = fadd fast float %5189, %5165
  %5193 = fadd fast float %5190, %5166
  %5194 = fmul fast float %5191, %5180
  %5195 = call float @dx.op.tertiary.f32(i32 46, float %5192, float %5182, float %5194)  ; FMad(a,b,c)
  %5196 = call float @dx.op.tertiary.f32(i32 46, float %5193, float %5184, float %5195)  ; FMad(a,b,c)
  %5197 = fmul fast float %5191, %5185
  %5198 = call float @dx.op.tertiary.f32(i32 46, float %5192, float %5186, float %5197)  ; FMad(a,b,c)
  %5199 = call float @dx.op.tertiary.f32(i32 46, float %5193, float %5187, float %5198)  ; FMad(a,b,c)
  %5200 = fsub fast float %5196, %5188
  %5201 = fsub fast float %5199, %5189
  %5202 = fsub fast float %5200, %5168
  %5203 = fadd fast float %5202, %5176
  %5204 = fsub fast float %5201, %5169
  %5205 = fadd fast float %5204, %5176
  %5206 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5207 = fmul fast float %5203, %5206
  %5208 = fmul fast float %5205, %5206
  %5209 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5210 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5211 = fsub fast float 1.000000e+00, %5209
  %5212 = fsub fast float 1.000000e+00, %5210
  %5213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5211, float %5212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5214 = extractvalue %dx.types.ResRet.f32 %5213, 0
  %5215 = fcmp fast ugt float %5214, 0.000000e+00
  br i1 %5215, label %5216, label %5519

; <label>:5216                                    ; preds = %5178
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5219 = fmul fast float %5218, %5214
  %5220 = extractvalue %dx.types.CBufRet.f32 %5217, 3
  %5221 = fadd fast float %5220, %5219
  %5222 = extractvalue %dx.types.CBufRet.f32 %5183, 2
  %5223 = fadd fast float %5221, %5190
  %5224 = fmul fast float %5196, %5184
  %5225 = call float @dx.op.tertiary.f32(i32 46, float %5199, float %5187, float %5224)  ; FMad(a,b,c)
  %5226 = call float @dx.op.tertiary.f32(i32 46, float %5223, float %5222, float %5225)  ; FMad(a,b,c)
  %5227 = fsub fast float %5226, %5190
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 2
  %5230 = fsub fast float %5227, %5229
  %5231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5211, float %5212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5234 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5211, float %5212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = fadd fast float %5236, %5232
  %5240 = fmul fast float %5239, 0x3F847AE140000000
  %5241 = fadd fast float %5237, %5233
  %5242 = fmul fast float %5241, 0x3F847AE140000000
  %5243 = fadd fast float %5238, %5234
  %5244 = fmul fast float %5243, 0x3F847AE140000000
  br label %5519

; <label>:5245                                    ; preds = %5135
  %5246 = and i32 %202, 1
  %5247 = icmp eq i32 %5246, 0
  br i1 %5247, label %5519, label %5248

; <label>:5248                                    ; preds = %5245
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 0
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.CBufRet.f32 %5249, 1
  %5256 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %5257 = extractvalue %dx.types.CBufRet.f32 %5253, 1
  %5258 = extractvalue %dx.types.CBufRet.f32 %5249, 3
  %5259 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5260 = extractvalue %dx.types.CBufRet.f32 %5253, 3
  %5261 = fadd fast float %5258, %5164
  %5262 = fadd fast float %5259, %5165
  %5263 = fadd fast float %5260, %5166
  %5264 = fmul fast float %5261, %5250
  %5265 = call float @dx.op.tertiary.f32(i32 46, float %5262, float %5252, float %5264)  ; FMad(a,b,c)
  %5266 = call float @dx.op.tertiary.f32(i32 46, float %5263, float %5254, float %5265)  ; FMad(a,b,c)
  %5267 = fmul fast float %5261, %5255
  %5268 = call float @dx.op.tertiary.f32(i32 46, float %5262, float %5256, float %5267)  ; FMad(a,b,c)
  %5269 = call float @dx.op.tertiary.f32(i32 46, float %5263, float %5257, float %5268)  ; FMad(a,b,c)
  %5270 = fsub fast float %5266, %5258
  %5271 = fsub fast float %5269, %5259
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.CBufRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5276 = extractvalue %dx.types.CBufRet.f32 %5272, 3
  %5277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.f32 %5277, 3
  %5279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.i32 %5279, 0
  %5281 = extractvalue %dx.types.CBufRet.i32 %5279, 1
  %5282 = udiv i32 %5281, %5280
  %5283 = fsub fast float %5270, %5273
  %5284 = fsub fast float %5271, %5274
  %5285 = call float @dx.op.binary.f32(i32 35, float %5283, float 0.000000e+00)  ; FMax(a,b)
  %5286 = call float @dx.op.binary.f32(i32 35, float %5284, float 0.000000e+00)  ; FMax(a,b)
  %5287 = call float @dx.op.binary.f32(i32 36, float %5285, float %5275)  ; FMin(a,b)
  %5288 = call float @dx.op.binary.f32(i32 36, float %5286, float %5276)  ; FMin(a,b)
  %5289 = add i32 %5280, -1
  %5290 = add i32 %5282, -1
  %5291 = fmul fast float %5287, %5278
  %5292 = fmul fast float %5288, %5278
  %5293 = fptoui float %5291 to i32
  %5294 = fptoui float %5292 to i32
  %5295 = call i32 @dx.op.binary.i32(i32 40, i32 %5293, i32 %5289)  ; UMin(a,b)
  %5296 = call i32 @dx.op.binary.i32(i32 40, i32 %5294, i32 %5290)  ; UMin(a,b)
  %5297 = mul i32 %5296, %5280
  %5298 = add i32 %5297, %5295
  %5299 = shl i32 %5298, 2
  %5300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5299, i32 undef)  ; BufferLoad(srv,index,wot)
  %5301 = extractvalue %dx.types.ResRet.i32 %5300, 0
  %5302 = icmp eq i32 %5301, -1
  br i1 %5302, label %5519, label %5303

; <label>:5303                                    ; preds = %5248
  %5304 = mul i32 %5301, 148
  %5305 = add i32 %5304, 4
  %5306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5305, i32 undef)  ; BufferLoad(srv,index,wot)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = add i32 %5304, 8
  %5309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5308, i32 undef)  ; BufferLoad(srv,index,wot)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 0
  %5311 = add i32 %5304, 36
  %5312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5311, i32 undef)  ; BufferLoad(srv,index,wot)
  %5313 = extractvalue %dx.types.ResRet.f32 %5312, 0
  %5314 = add i32 %5304, 60
  %5315 = add i32 %5304, 92
  %5316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5315, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.i32 %5316, 0
  %5318 = add i32 %5304, 116
  %5319 = fsub fast float %5270, %5307
  %5320 = fsub fast float %5271, %5310
  %5321 = fmul fast float %5278, %5319
  %5322 = fmul fast float %5278, %5320
  %5323 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5324 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5325 = fsub fast float 1.000000e+00, %5324
  %5326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5327 = extractvalue %dx.types.CBufRet.f32 %5326, 2
  %5328 = call float @dx.op.unary.f32(i32 83, float %5323)  ; DerivCoarseX(value)
  %5329 = call float @dx.op.unary.f32(i32 83, float %5325)  ; DerivCoarseX(value)
  %5330 = call float @dx.op.unary.f32(i32 84, float %5323)  ; DerivCoarseY(value)
  %5331 = call float @dx.op.unary.f32(i32 84, float %5325)  ; DerivCoarseY(value)
  %5332 = fmul fast float %5328, %5327
  %5333 = fmul fast float %5329, %5327
  %5334 = fmul fast float %5330, %5327
  %5335 = fmul fast float %5331, %5327
  %5336 = call float @dx.op.dot2.f32(i32 54, float %5334, float %5335, float %5334, float %5335)  ; Dot2(ax,ay,bx,by)
  %5337 = call float @dx.op.dot2.f32(i32 54, float %5332, float %5333, float %5332, float %5333)  ; Dot2(ax,ay,bx,by)
  %5338 = call float @dx.op.binary.f32(i32 35, float %5337, float %5336)  ; FMax(a,b)
  %5339 = call float @dx.op.unary.f32(i32 23, float %5338)  ; Log(value)
  %5340 = fmul fast float %5339, 5.000000e-01
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5343 = fadd fast float %5342, %5340
  %5344 = call float @dx.op.binary.f32(i32 35, float %5343, float 0.000000e+00)  ; FMax(a,b)
  %5345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.f32 %5345, 3
  %5347 = fadd fast float %5346, %5344
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 3
  %5350 = fadd fast float %5347, %5349
  %5351 = add i32 %5317, 0
  %5352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5351, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5353 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5352, i32 0)  ; GetDimensions(handle,mipLevel)
  %5354 = extractvalue %dx.types.Dimensions %5353, 0
  %5355 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5354)  ; FirstbitLo(value)
  %5356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.i32 %5356, 1
  %5358 = sub nsw i32 %5357, %5355
  %5359 = sitofp i32 %5358 to float
  %5360 = fsub fast float %5350, %5359
  %5361 = call float @dx.op.binary.f32(i32 35, float %5360, float 0.000000e+00)  ; FMax(a,b)
  %5362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5352, %dx.types.Handle %52, float %5323, float %5325, float %5313, float undef, i32 0, i32 0, i32 undef, float %5361)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = fcmp ule float %5363, 0x3FE0101020000000
  %5365 = extractvalue %dx.types.CBufRet.i32 %5356, 0
  %5366 = and i32 %5365, 128
  %5367 = icmp ne i32 %5366, 0
  %5368 = and i1 %5364, %5367
  br i1 %5368, label %5519, label %5369

; <label>:5369                                    ; preds = %5303
  %5370 = add i32 %5304, 20
  %5371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = add i32 %5304, 24
  %5374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5373, i32 undef)  ; BufferLoad(srv,index,wot)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 0
  %5376 = add i32 %5304, 40
  %5377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5376, i32 undef)  ; BufferLoad(srv,index,wot)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = add i32 %5304, 96
  %5380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5379, i32 undef)  ; BufferLoad(srv,index,wot)
  %5381 = extractvalue %dx.types.ResRet.i32 %5380, 0
  %5382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.f32 %5382, 2
  %5384 = fmul fast float %5383, %5323
  %5385 = fmul fast float %5383, %5325
  %5386 = extractvalue %dx.types.CBufRet.f32 %5382, 3
  %5387 = fadd fast float %5384, %5386
  %5388 = fadd fast float %5385, %5386
  %5389 = add i32 %5381, 0
  %5390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5389, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5391 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5390, i32 0)  ; GetDimensions(handle,mipLevel)
  %5392 = extractvalue %dx.types.Dimensions %5391, 0
  %5393 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5392)  ; FirstbitLo(value)
  %5394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.i32 %5394, 1
  %5396 = sub nsw i32 %5395, %5393
  %5397 = sitofp i32 %5396 to float
  %5398 = fsub fast float %5347, %5397
  %5399 = call float @dx.op.binary.f32(i32 35, float %5398, float 0.000000e+00)  ; FMax(a,b)
  %5400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5390, %dx.types.Handle %52, float %5387, float %5388, float %5378, float undef, i32 0, i32 0, i32 undef, float %5399)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 0
  %5402 = fmul fast float %5401, %5372
  %5403 = fadd fast float %5402, %5375
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %5406 = extractvalue %dx.types.CBufRet.f32 %5404, 1
  %5407 = extractvalue %dx.types.CBufRet.f32 %5404, 2
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 3
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 3
  %5412 = extractvalue %dx.types.CBufRet.f32 %5404, 3
  %5413 = fadd fast float %5409, %5270
  %5414 = fadd fast float %5411, %5271
  %5415 = fadd fast float %5403, %5412
  %5416 = fmul fast float %5413, %5405
  %5417 = call float @dx.op.tertiary.f32(i32 46, float %5414, float %5406, float %5416)  ; FMad(a,b,c)
  %5418 = call float @dx.op.tertiary.f32(i32 46, float %5415, float %5407, float %5417)  ; FMad(a,b,c)
  %5419 = fsub fast float %5418, %5412
  %5420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5421 = extractvalue %dx.types.CBufRet.f32 %5420, 2
  %5422 = fsub fast float %5419, %5421
  %5423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.i32 %5423, 0
  %5425 = call i32 @dx.op.binary.i32(i32 40, i32 %5301, i32 %5424)  ; UMin(a,b)
  %5426 = mul i32 %5425, 36
  %5427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5426, i32 undef)  ; BufferLoad(srv,index,wot)
  %5428 = extractvalue %dx.types.ResRet.i32 %5427, 0
  %5429 = add i32 %5426, 4
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = fmul fast float %5431, %5323
  %5433 = fmul fast float %5431, %5325
  %5434 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5435 = fadd fast float %5432, %5434
  %5436 = fadd fast float %5433, %5434
  %5437 = icmp eq i32 %5428, 0
  br i1 %5437, label %5506, label %5438

; <label>:5438                                    ; preds = %5369
  br label %5439

; <label>:5439                                    ; preds = %5496, %5438
  %5440 = phi float [ %5497, %5496 ], [ 0.000000e+00, %5438 ]
  %5441 = phi float [ %5498, %5496 ], [ 0.000000e+00, %5438 ]
  %5442 = phi float [ %5499, %5496 ], [ 0.000000e+00, %5438 ]
  %5443 = phi float [ %5500, %5496 ], [ 0.000000e+00, %5438 ]
  %5444 = phi float [ %5501, %5496 ], [ 0.000000e+00, %5438 ]
  %5445 = phi float [ %5502, %5496 ], [ 0.000000e+00, %5438 ]
  %5446 = phi i32 [ %5503, %5496 ], [ 0, %5438 ]
  %5447 = shl i32 %5446, 2
  %5448 = add i32 %5314, %5447
  %5449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = add i32 %5318, %5447
  %5452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.i32 %5452, 0
  %5454 = add i32 %5453, 0
  %5455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5454, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5456 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5455, i32 0)  ; GetDimensions(handle,mipLevel)
  %5457 = extractvalue %dx.types.Dimensions %5456, 0
  %5458 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5457)  ; FirstbitLo(value)
  %5459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.i32 %5459, 1
  %5461 = sub nsw i32 %5460, %5458
  %5462 = sitofp i32 %5461 to float
  %5463 = fsub fast float %5347, %5462
  %5464 = call float @dx.op.binary.f32(i32 35, float %5463, float 0.000000e+00)  ; FMax(a,b)
  %5465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5455, %dx.types.Handle %52, float %5435, float %5436, float %5450, float undef, i32 0, i32 0, i32 undef, float %5464)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5466 = extractvalue %dx.types.ResRet.f32 %5465, 0
  %5467 = fcmp fast ogt float %5466, 0.000000e+00
  br i1 %5467, label %5468, label %5496

; <label>:5468                                    ; preds = %5439
  %5469 = add i32 %5429, %5447
  %5470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5469, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.i32 %5470, 0
  %5472 = and i32 %5471, 32767
  %5473 = mul nuw nsw i32 %5472, 928
  %5474 = add nuw nsw i32 %5473, 48
  %5475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5474, i32 undef)  ; BufferLoad(srv,index,wot)
  %5476 = extractvalue %dx.types.ResRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.ResRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.ResRet.f32 %5475, 2
  %5479 = add nuw nsw i32 %5473, 60
  %5480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5479, i32 undef)  ; BufferLoad(srv,index,wot)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.ResRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.ResRet.f32 %5480, 2
  %5484 = fmul fast float %5476, %5466
  %5485 = fmul fast float %5477, %5466
  %5486 = fmul fast float %5478, %5466
  %5487 = fadd fast float %5484, %5440
  %5488 = fadd fast float %5485, %5441
  %5489 = fadd fast float %5486, %5442
  %5490 = fmul fast float %5481, %5466
  %5491 = fmul fast float %5482, %5466
  %5492 = fmul fast float %5483, %5466
  %5493 = fadd fast float %5490, %5443
  %5494 = fadd fast float %5491, %5444
  %5495 = fadd fast float %5492, %5445
  br label %5496

; <label>:5496                                    ; preds = %5468, %5439
  %5497 = phi float [ %5487, %5468 ], [ %5440, %5439 ]
  %5498 = phi float [ %5488, %5468 ], [ %5441, %5439 ]
  %5499 = phi float [ %5489, %5468 ], [ %5442, %5439 ]
  %5500 = phi float [ %5493, %5468 ], [ %5443, %5439 ]
  %5501 = phi float [ %5494, %5468 ], [ %5444, %5439 ]
  %5502 = phi float [ %5495, %5468 ], [ %5445, %5439 ]
  %5503 = add nuw i32 %5446, 1
  %5504 = icmp eq i32 %5503, %5428
  br i1 %5504, label %5505, label %5439

; <label>:5505                                    ; preds = %5496
  br label %5506

; <label>:5506                                    ; preds = %5505, %5369
  %5507 = phi float [ 0.000000e+00, %5369 ], [ %5497, %5505 ]
  %5508 = phi float [ 0.000000e+00, %5369 ], [ %5498, %5505 ]
  %5509 = phi float [ 0.000000e+00, %5369 ], [ %5499, %5505 ]
  %5510 = phi float [ 0.000000e+00, %5369 ], [ %5500, %5505 ]
  %5511 = phi float [ 0.000000e+00, %5369 ], [ %5501, %5505 ]
  %5512 = phi float [ 0.000000e+00, %5369 ], [ %5502, %5505 ]
  %5513 = fadd fast float %5510, %5507
  %5514 = fmul fast float %5513, 0x3F847AE140000000
  %5515 = fadd fast float %5511, %5508
  %5516 = fmul fast float %5515, 0x3F847AE140000000
  %5517 = fadd fast float %5512, %5509
  %5518 = fmul fast float %5517, 0x3F847AE140000000
  br label %5519

; <label>:5519                                    ; preds = %5506, %5303, %5248, %5245, %5216, %5178
  %5520 = phi float [ %5240, %5216 ], [ 0.000000e+00, %5178 ], [ %5514, %5506 ], [ 0.000000e+00, %5248 ], [ 0.000000e+00, %5303 ], [ 0.000000e+00, %5245 ]
  %5521 = phi float [ %5242, %5216 ], [ 0.000000e+00, %5178 ], [ %5516, %5506 ], [ 0.000000e+00, %5248 ], [ 0.000000e+00, %5303 ], [ 0.000000e+00, %5245 ]
  %5522 = phi float [ %5244, %5216 ], [ 0.000000e+00, %5178 ], [ %5518, %5506 ], [ 0.000000e+00, %5248 ], [ 0.000000e+00, %5303 ], [ 0.000000e+00, %5245 ]
  %5523 = phi float [ %5230, %5216 ], [ -1.310720e+05, %5178 ], [ %5422, %5506 ], [ -1.310720e+05, %5248 ], [ -1.310720e+05, %5303 ], [ -1.310720e+05, %5245 ]
  %5524 = phi i1 [ true, %5216 ], [ false, %5178 ], [ true, %5506 ], [ false, %5248 ], [ false, %5303 ], [ false, %5245 ]
  %5525 = and i32 %202, 3
  %5526 = icmp eq i32 %5525, 1
  %5527 = select i1 %5526, float 1.000000e+00, float 0.000000e+00
  %5528 = fsub fast float %5523, %166
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = select i1 %5524, float %5529, float 1.000000e+00
  %5531 = fmul fast float %5530, %5527
  %5532 = icmp eq i32 %5525, 3
  %5533 = select i1 %5532, float 1.000000e+00, float %5531
  %5534 = call float @dx.op.binary.f32(i32 35, float %5092, float %5533)  ; FMax(a,b)
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = fcmp fast une float %5535, 0.000000e+00
  %5537 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = call float @dx.op.unary.f32(i32 25, float %5537)  ; Rsqrt(value)
  br i1 %5536, label %5546, label %5539

; <label>:5539                                    ; preds = %5519
  %5540 = fmul fast float %5538, %164
  %5541 = fmul fast float %5538, %165
  %5542 = fmul fast float %5538, %166
  %5543 = fsub fast float -0.000000e+00, %5540
  %5544 = fsub fast float -0.000000e+00, %5541
  %5545 = fsub fast float -0.000000e+00, %5542
  br label %5714

; <label>:5546                                    ; preds = %5519
  %5547 = fmul fast float %164, %5538
  %5548 = fsub fast float -0.000000e+00, %5547
  %5549 = fmul fast float %165, %5538
  %5550 = fsub fast float -0.000000e+00, %5549
  %5551 = fmul fast float %166, %5538
  %5552 = fsub fast float -0.000000e+00, %5551
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5548, float %5550, float %5552, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = fmul fast float %5535, 2.500000e+00
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = fmul fast float %5535, 0x4013FFFFE0000000
  %5557 = fadd fast float %5556, 0xBFFFFFFFE0000000
  %5558 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5559 = fmul fast float %5535, 0x4004000020000000
  %5560 = fadd fast float %5559, 0xBFF8000040000000
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5563 = fmul fast float %5095, 1.000000e+01
  %5564 = call float @dx.op.unary.f32(i32 7, float %5563)  ; Saturate(value)
  %5565 = fmul fast float %5564, 2.000000e+00
  %5566 = fsub fast float 3.000000e+00, %5565
  %5567 = fmul fast float %5564, %5564
  %5568 = fmul fast float %5567, %5566
  %5569 = fsub fast float 1.000000e+00, %5568
  %5570 = fsub fast float 0x3FE3333340000000, %5116
  %5571 = fmul fast float %5570, 0x400AAAAAA0000000
  %5572 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5573 = fmul fast float %5569, %5572
  %5574 = fmul fast float %5153, 0x3FEA2B8620000000
  %5575 = fmul fast float %5154, 0x3FEA2B8620000000
  %5576 = fmul fast float %5155, 0x3FEA2B8620000000
  %5577 = fadd fast float %5574, 0x3FC81DFBA0000000
  %5578 = fmul fast float %5577, %5153
  %5579 = fadd fast float %5578, 0x3F910E6020000000
  %5580 = fadd fast float %5575, 0x3FC81DFBA0000000
  %5581 = fmul fast float %5580, %5154
  %5582 = fadd fast float %5581, 0x3F910E6020000000
  %5583 = fadd fast float %5576, 0x3FC81DFBA0000000
  %5584 = fmul fast float %5583, %5155
  %5585 = fadd fast float %5584, 0x3F910E6020000000
  %5586 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5587 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5588 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5589 = fsub fast float %5586, %5153
  %5590 = fsub fast float %5587, %5154
  %5591 = fsub fast float %5588, %5155
  %5592 = fmul fast float %5589, %5562
  %5593 = fmul fast float %5592, %5573
  %5594 = fmul fast float %5590, %5562
  %5595 = fmul fast float %5594, %5573
  %5596 = fmul fast float %5591, %5562
  %5597 = fmul fast float %5596, %5573
  %5598 = fadd fast float %5593, %5153
  %5599 = fadd fast float %5595, %5154
  %5600 = fadd fast float %5597, %5155
  %5601 = fmul fast float %5089, %5089
  %5602 = fmul fast float %5601, %5601
  %5603 = fadd fast float %5558, 1.000000e+00
  %5604 = fsub fast float %5603, %5573
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5608 = fsub fast float 1.000000e+00, %5602
  %5609 = call float @dx.op.binary.f32(i32 36, float %5605, float %5608)  ; FMin(a,b)
  %5610 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5611 = call float @dx.op.binary.f32(i32 35, float %5609, float %5610)  ; FMax(a,b)
  %5612 = fadd fast float %5607, 0xBFE4CCCCC0000000
  %5613 = fmul fast float %5612, 0x4006DB6DA0000000
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = fmul fast float %5614, 2.000000e+00
  %5616 = fsub fast float 3.000000e+00, %5615
  %5617 = bitcast float %5113 to i32
  %5618 = ashr i32 %5617, 1
  %5619 = add nsw i32 %5618, 532487669
  %5620 = bitcast i32 %5619 to float
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = bitcast float %5621 to i32
  %5623 = sub nsw i32 2129859010, %5622
  %5624 = bitcast i32 %5623 to float
  %5625 = fmul fast float %5624, 2.000000e+00
  %5626 = bitcast float %5114 to i32
  %5627 = ashr i32 %5626, 1
  %5628 = add nsw i32 %5627, 532487669
  %5629 = bitcast i32 %5628 to float
  %5630 = fsub fast float 1.000000e+00, %5629
  %5631 = bitcast float %5630 to i32
  %5632 = sub nsw i32 2129859010, %5631
  %5633 = bitcast i32 %5632 to float
  %5634 = fmul fast float %5633, 2.000000e+00
  %5635 = bitcast float %5115 to i32
  %5636 = ashr i32 %5635, 1
  %5637 = add nsw i32 %5636, 532487669
  %5638 = bitcast i32 %5637 to float
  %5639 = fsub fast float 1.000000e+00, %5638
  %5640 = bitcast float %5639 to i32
  %5641 = sub nsw i32 2129859010, %5640
  %5642 = bitcast i32 %5641 to float
  %5643 = fmul fast float %5642, 2.000000e+00
  %5644 = fsub fast float 0x4002A9FBE0000000, %5625
  %5645 = fadd fast float %5625, 0x3FD54FDF00000000
  %5646 = bitcast float %5645 to i32
  %5647 = sub nsw i32 2129859010, %5646
  %5648 = bitcast i32 %5647 to float
  %5649 = fmul fast float %5648, %5644
  %5650 = fmul fast float %5649, %5649
  %5651 = fsub fast float 0x4002A9FBE0000000, %5634
  %5652 = fadd fast float %5634, 0x3FD54FDF00000000
  %5653 = bitcast float %5652 to i32
  %5654 = sub nsw i32 2129859010, %5653
  %5655 = bitcast i32 %5654 to float
  %5656 = fmul fast float %5655, %5651
  %5657 = fmul fast float %5656, %5656
  %5658 = fsub fast float 0x4002A9FBE0000000, %5643
  %5659 = fadd fast float %5643, 0x3FD54FDF00000000
  %5660 = bitcast float %5659 to i32
  %5661 = sub nsw i32 2129859010, %5660
  %5662 = bitcast i32 %5661 to float
  %5663 = fmul fast float %5662, %5658
  %5664 = fmul fast float %5663, %5663
  %5665 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5650)  ; FMax(a,b)
  %5666 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5657)  ; FMax(a,b)
  %5667 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5664)  ; FMax(a,b)
  %5668 = fsub fast float 1.000000e+00, %5553
  %5669 = fadd fast float %5668, %5569
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = fsub fast float 1.000000e+00, %5533
  %5672 = fmul fast float %5611, %5671
  %5673 = fmul fast float %5614, %5614
  %5674 = fmul fast float %5673, %5672
  %5675 = fmul fast float %5674, %5616
  %5676 = fmul fast float %5671, 0xBFE99999A0000000
  %5677 = fmul fast float %5676, %5562
  %5678 = fmul fast float %5677, %5573
  %5679 = fadd fast float %5678, 1.000000e+00
  %5680 = fadd fast float %5116, -1.000000e+00
  %5681 = fmul fast float %5679, %5680
  %5682 = fadd fast float %5681, 1.000000e+00
  %5683 = fsub fast float %5665, %5113
  %5684 = fsub fast float %5666, %5114
  %5685 = fsub fast float %5667, %5115
  %5686 = fmul fast float %5675, %5683
  %5687 = fmul fast float %5675, %5684
  %5688 = fmul fast float %5675, %5685
  %5689 = fadd fast float %5686, %5113
  %5690 = fadd fast float %5687, %5114
  %5691 = fadd fast float %5688, %5115
  %5692 = fsub fast float %116, %5071
  %5693 = fsub fast float %117, %5072
  %5694 = fsub fast float %118, %5073
  %5695 = fmul fast float %5675, %5692
  %5696 = fmul fast float %5675, %5693
  %5697 = fmul fast float %5675, %5694
  %5698 = fadd fast float %5695, %5071
  %5699 = fadd fast float %5696, %5072
  %5700 = fadd fast float %5697, %5073
  %5701 = fmul fast float %5675, %5670
  %5702 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5703 = fsub fast float 1.000000e+00, %5702
  %5704 = fmul fast float %5701, %5703
  %5705 = fadd fast float %5704, %5702
  %5706 = fsub fast float 1.000000e+00, %5089
  %5707 = fmul fast float %5675, %5706
  %5708 = fadd fast float %5707, %5089
  %5709 = call float @dx.op.dot3.f32(i32 55, float %5698, float %5699, float %5700, float %5698, float %5699, float %5700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5710 = call float @dx.op.unary.f32(i32 25, float %5709)  ; Rsqrt(value)
  %5711 = fmul fast float %5698, %5710
  %5712 = fmul fast float %5699, %5710
  %5713 = fmul fast float %5700, %5710
  br label %5714

; <label>:5714                                    ; preds = %5546, %5539
  %5715 = phi float [ %5545, %5539 ], [ %5552, %5546 ]
  %5716 = phi float [ %5544, %5539 ], [ %5550, %5546 ]
  %5717 = phi float [ %5543, %5539 ], [ %5548, %5546 ]
  %5718 = phi float [ %5542, %5539 ], [ %5551, %5546 ]
  %5719 = phi float [ %5541, %5539 ], [ %5549, %5546 ]
  %5720 = phi float [ %5540, %5539 ], [ %5547, %5546 ]
  %5721 = phi float [ %5153, %5539 ], [ %5598, %5546 ]
  %5722 = phi float [ %5154, %5539 ], [ %5599, %5546 ]
  %5723 = phi float [ %5155, %5539 ], [ %5600, %5546 ]
  %5724 = phi float [ %5113, %5539 ], [ %5689, %5546 ]
  %5725 = phi float [ %5114, %5539 ], [ %5690, %5546 ]
  %5726 = phi float [ %5115, %5539 ], [ %5691, %5546 ]
  %5727 = phi float [ %5071, %5539 ], [ %5711, %5546 ]
  %5728 = phi float [ %5072, %5539 ], [ %5712, %5546 ]
  %5729 = phi float [ %5073, %5539 ], [ %5713, %5546 ]
  %5730 = phi float [ %5116, %5539 ], [ %5705, %5546 ]
  %5731 = phi float [ %5089, %5539 ], [ %5708, %5546 ]
  %5732 = fsub fast float -0.000000e+00, %166
  %5733 = select i1 %226, float 0.000000e+00, float %5726
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %5729, float %5717, float %5716, float %5715)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5720, float %5719, float %5718, float %5727, float %5728, float %5729)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = fmul fast float %5736, 2.000000e+00
  %5738 = fmul fast float %5737, %5727
  %5739 = fmul fast float %5737, %5728
  %5740 = fmul fast float %5737, %5729
  %5741 = fsub fast float %5720, %5738
  %5742 = fsub fast float %5719, %5739
  %5743 = fsub fast float %5718, %5740
  %5744 = call float @dx.op.binary.f32(i32 36, float %5731, float 1.000000e+00)  ; FMin(a,b)
  %5745 = fsub fast float 1.000000e+00, %5744
  %5746 = bitcast float %5745 to i32
  %5747 = ashr i32 %5746, 1
  %5748 = add nsw i32 %5747, 532487669
  %5749 = bitcast i32 %5748 to float
  %5750 = fsub fast float 1.000000e+00, %5730
  %5751 = call float @dx.op.binary.f32(i32 35, float %5750, float 0x3F847AE140000000)  ; FMax(a,b)
  %5752 = fmul fast float %5751, %5751
  %5753 = fmul fast float %5752, %5752
  %5754 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5749, float %5753, float %5754, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = fsub fast float 1.000000e+00, %5731
  %5758 = bitcast float %5757 to i32
  %5759 = sub nsw i32 2129859010, %5758
  %5760 = bitcast i32 %5759 to float
  %5761 = call float @dx.op.dot3.f32(i32 55, float %77, float %73, float %69, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = fmul fast float %5761, 0x3FD20DD760000000
  %5763 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %5764 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5765 = fcmp fast oeq float %5764, 0.000000e+00
  %5766 = fcmp fast oeq float %5763, 0.000000e+00
  %5767 = or i1 %5766, %5765
  br i1 %5767, label %5797, label %5768

; <label>:5768                                    ; preds = %5714
  %5769 = fsub fast float -0.000000e+00, %80
  %5770 = fsub fast float -0.000000e+00, %78
  %5771 = call float @dx.op.unary.f32(i32 24, float %5764)  ; Sqrt(value)
  %5772 = fdiv fast float %5771, %5763
  %5773 = fcmp fast ogt float %5772, 0x3FFB6F8900000000
  %5774 = select i1 %5773, float 0x3FFB6F8900000000, float %5772
  %5775 = fmul fast float %5774, 0x3FE8A23460000000
  %5776 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5777 = call float @dx.op.binary.f32(i32 35, float %5774, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5778 = fmul fast float %5776, %5763
  %5779 = fmul fast float %5777, 0x3FF279A740000000
  %5780 = fadd fast float %5779, -1.000000e+00
  %5781 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5770, float %79, float %5769, float %5770, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5782 = call float @dx.op.unary.f32(i32 25, float %5781)  ; Rsqrt(value)
  %5783 = fmul fast float %5782, %5769
  %5784 = fmul fast float %5782, %5770
  %5785 = fmul fast float %5782, %79
  %5786 = fmul fast float %5780, %5780
  %5787 = fsub fast float 1.000000e+00, %5786
  %5788 = fmul fast float %5777, 0x40005F8BE0000000
  %5789 = fsub fast float 0x400C5BF8A0000000, %5788
  %5790 = fdiv fast float %5778, %5789
  %5791 = fmul fast float %5790, 0x3FEE31C3C0000000
  %5792 = fmul fast float %5791, %5787
  %5793 = fmul fast float %5777, 0x3FDACB7480000000
  %5794 = fadd fast float %5793, 0xBFD7347680000000
  %5795 = fmul fast float %5794, %5790
  %5796 = fmul fast float %5795, %5787
  br label %5797

; <label>:5797                                    ; preds = %5768, %5714
  %5798 = phi float [ %5783, %5768 ], [ 0.000000e+00, %5714 ]
  %5799 = phi float [ %5784, %5768 ], [ 0.000000e+00, %5714 ]
  %5800 = phi float [ %5785, %5768 ], [ 0.000000e+00, %5714 ]
  %5801 = phi float [ %5792, %5768 ], [ 0.000000e+00, %5714 ]
  %5802 = phi float [ %5796, %5768 ], [ 0.000000e+00, %5714 ]
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %5800, float %5727, float %5728, float %5729)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = fmul fast float %5803, 0x3FDF454380000000
  %5805 = fmul fast float %5803, %5803
  %5806 = fmul fast float %5805, 0x3FEE471020000000
  %5807 = fadd fast float %5806, 0xBFD42F6020000000
  %5808 = fmul fast float %5763, 0x3FD20DD760000000
  %5809 = fmul fast float %5807, %5802
  %5810 = fadd fast float %5809, %5808
  %5811 = fmul fast float %5804, %5801
  %5812 = fadd fast float %5810, %5811
  %5813 = fsub fast float %5810, %5811
  %5814 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %5800, float %5741, float %5742, float %5743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5815 = fmul fast float %5814, 0x3FDF454380000000
  %5816 = fmul fast float %5814, %5814
  %5817 = fmul fast float %5816, 0x3FEE471020000000
  %5818 = fadd fast float %5817, 0xBFD42F6020000000
  %5819 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5801, float %5802, float 0x3FD20DD760000000, float %5815, float %5818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5821 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = fcmp fast oeq float %5821, 0.000000e+00
  %5823 = fcmp fast oeq float %5820, 0.000000e+00
  %5824 = or i1 %5823, %5822
  br i1 %5824, label %5854, label %5825

; <label>:5825                                    ; preds = %5797
  %5826 = fsub fast float -0.000000e+00, %76
  %5827 = fsub fast float -0.000000e+00, %74
  %5828 = call float @dx.op.unary.f32(i32 24, float %5821)  ; Sqrt(value)
  %5829 = fdiv fast float %5828, %5820
  %5830 = fcmp fast ogt float %5829, 0x3FFB6F8900000000
  %5831 = select i1 %5830, float 0x3FFB6F8900000000, float %5829
  %5832 = fmul fast float %5831, 0x3FE8A23460000000
  %5833 = call float @dx.op.unary.f32(i32 7, float %5832)  ; Saturate(value)
  %5834 = call float @dx.op.binary.f32(i32 35, float %5831, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5835 = fmul fast float %5833, %5820
  %5836 = fmul fast float %5834, 0x3FF279A740000000
  %5837 = fadd fast float %5836, -1.000000e+00
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %75, float %5826, float %5827, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = call float @dx.op.unary.f32(i32 25, float %5838)  ; Rsqrt(value)
  %5840 = fmul fast float %5839, %5826
  %5841 = fmul fast float %5839, %5827
  %5842 = fmul fast float %5839, %75
  %5843 = fmul fast float %5837, %5837
  %5844 = fsub fast float 1.000000e+00, %5843
  %5845 = fmul fast float %5834, 0x40005F8BE0000000
  %5846 = fsub fast float 0x400C5BF8A0000000, %5845
  %5847 = fdiv fast float %5835, %5846
  %5848 = fmul fast float %5847, 0x3FEE31C3C0000000
  %5849 = fmul fast float %5848, %5844
  %5850 = fmul fast float %5834, 0x3FDACB7480000000
  %5851 = fadd fast float %5850, 0xBFD7347680000000
  %5852 = fmul fast float %5851, %5847
  %5853 = fmul fast float %5852, %5844
  br label %5854

; <label>:5854                                    ; preds = %5825, %5797
  %5855 = phi float [ %5840, %5825 ], [ 0.000000e+00, %5797 ]
  %5856 = phi float [ %5841, %5825 ], [ 0.000000e+00, %5797 ]
  %5857 = phi float [ %5842, %5825 ], [ 0.000000e+00, %5797 ]
  %5858 = phi float [ %5849, %5825 ], [ 0.000000e+00, %5797 ]
  %5859 = phi float [ %5853, %5825 ], [ 0.000000e+00, %5797 ]
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5855, float %5856, float %5857, float %5727, float %5728, float %5729)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = fmul fast float %5860, 0x3FDF454380000000
  %5862 = fmul fast float %5860, %5860
  %5863 = fmul fast float %5862, 0x3FEE471020000000
  %5864 = fadd fast float %5863, 0xBFD42F6020000000
  %5865 = fmul fast float %5820, 0x3FD20DD760000000
  %5866 = fmul fast float %5864, %5859
  %5867 = fadd fast float %5866, %5865
  %5868 = fmul fast float %5861, %5858
  %5869 = fadd fast float %5867, %5868
  %5870 = fsub fast float %5867, %5868
  %5871 = call float @dx.op.dot3.f32(i32 55, float %5855, float %5856, float %5857, float %5741, float %5742, float %5743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5872 = fmul fast float %5871, 0x3FDF454380000000
  %5873 = fmul fast float %5871, %5871
  %5874 = fmul fast float %5873, 0x3FEE471020000000
  %5875 = fadd fast float %5874, 0xBFD42F6020000000
  %5876 = call float @dx.op.dot3.f32(i32 55, float %5820, float %5858, float %5859, float 0x3FD20DD760000000, float %5872, float %5875)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5878 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = fcmp fast oeq float %5878, 0.000000e+00
  %5880 = fcmp fast oeq float %5877, 0.000000e+00
  %5881 = or i1 %5880, %5879
  br i1 %5881, label %5911, label %5882

; <label>:5882                                    ; preds = %5854
  %5883 = fsub fast float -0.000000e+00, %72
  %5884 = fsub fast float -0.000000e+00, %70
  %5885 = call float @dx.op.unary.f32(i32 24, float %5878)  ; Sqrt(value)
  %5886 = fdiv fast float %5885, %5877
  %5887 = fcmp fast ogt float %5886, 0x3FFB6F8900000000
  %5888 = select i1 %5887, float 0x3FFB6F8900000000, float %5886
  %5889 = fmul fast float %5888, 0x3FE8A23460000000
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5891 = call float @dx.op.binary.f32(i32 35, float %5888, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5892 = fmul fast float %5890, %5877
  %5893 = fmul fast float %5891, 0x3FF279A740000000
  %5894 = fadd fast float %5893, -1.000000e+00
  %5895 = call float @dx.op.dot3.f32(i32 55, float %5883, float %5884, float %71, float %5883, float %5884, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = call float @dx.op.unary.f32(i32 25, float %5895)  ; Rsqrt(value)
  %5897 = fmul fast float %5896, %5883
  %5898 = fmul fast float %5896, %5884
  %5899 = fmul fast float %5896, %71
  %5900 = fmul fast float %5894, %5894
  %5901 = fsub fast float 1.000000e+00, %5900
  %5902 = fmul fast float %5891, 0x40005F8BE0000000
  %5903 = fsub fast float 0x400C5BF8A0000000, %5902
  %5904 = fdiv fast float %5892, %5903
  %5905 = fmul fast float %5904, 0x3FEE31C3C0000000
  %5906 = fmul fast float %5905, %5901
  %5907 = fmul fast float %5891, 0x3FDACB7480000000
  %5908 = fadd fast float %5907, 0xBFD7347680000000
  %5909 = fmul fast float %5908, %5904
  %5910 = fmul fast float %5909, %5901
  br label %5911

; <label>:5911                                    ; preds = %5882, %5854
  %5912 = phi float [ %5897, %5882 ], [ 0.000000e+00, %5854 ]
  %5913 = phi float [ %5898, %5882 ], [ 0.000000e+00, %5854 ]
  %5914 = phi float [ %5899, %5882 ], [ 0.000000e+00, %5854 ]
  %5915 = phi float [ %5906, %5882 ], [ 0.000000e+00, %5854 ]
  %5916 = phi float [ %5910, %5882 ], [ 0.000000e+00, %5854 ]
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5914, float %5727, float %5728, float %5729)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = fmul fast float %5917, 0x3FDF454380000000
  %5919 = fmul fast float %5917, %5917
  %5920 = fmul fast float %5919, 0x3FEE471020000000
  %5921 = fadd fast float %5920, 0xBFD42F6020000000
  %5922 = fmul fast float %5877, 0x3FD20DD760000000
  %5923 = fmul fast float %5921, %5916
  %5924 = fadd fast float %5923, %5922
  %5925 = fmul fast float %5918, %5915
  %5926 = fadd fast float %5924, %5925
  %5927 = fsub fast float %5924, %5925
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5914, float %5741, float %5742, float %5743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = fmul fast float %5928, 0x3FDF454380000000
  %5930 = fmul fast float %5928, %5928
  %5931 = fmul fast float %5930, 0x3FEE471020000000
  %5932 = fadd fast float %5931, 0xBFD42F6020000000
  %5933 = call float @dx.op.dot3.f32(i32 55, float %5877, float %5915, float %5916, float 0x3FD20DD760000000, float %5929, float %5932)  ; Dot3(ax,ay,az,bx,by,bz)
  %5934 = call float @dx.op.binary.f32(i32 35, float %5812, float 0.000000e+00)  ; FMax(a,b)
  %5935 = call float @dx.op.binary.f32(i32 35, float %5869, float 0.000000e+00)  ; FMax(a,b)
  %5936 = call float @dx.op.binary.f32(i32 35, float %5926, float 0.000000e+00)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 35, float %5813, float 0.000000e+00)  ; FMax(a,b)
  %5938 = call float @dx.op.binary.f32(i32 35, float %5870, float 0.000000e+00)  ; FMax(a,b)
  %5939 = call float @dx.op.binary.f32(i32 35, float %5927, float 0.000000e+00)  ; FMax(a,b)
  %5940 = call float @dx.op.binary.f32(i32 35, float %5819, float 0.000000e+00)  ; FMax(a,b)
  %5941 = call float @dx.op.binary.f32(i32 35, float %5876, float 0.000000e+00)  ; FMax(a,b)
  %5942 = call float @dx.op.binary.f32(i32 35, float %5933, float 0.000000e+00)  ; FMax(a,b)
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5945 = call float @dx.op.binary.f32(i32 36, float %5721, float %5944)  ; FMin(a,b)
  %5946 = fmul fast float %5945, %5745
  %5947 = fsub fast float 1.000000e+00, %5946
  %5948 = bitcast float %5947 to i32
  %5949 = sub nsw i32 2129859010, %5948
  %5950 = bitcast i32 %5949 to float
  %5951 = call float @dx.op.binary.f32(i32 36, float %5722, float %5944)  ; FMin(a,b)
  %5952 = fmul fast float %5951, %5745
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = bitcast float %5953 to i32
  %5955 = sub nsw i32 2129859010, %5954
  %5956 = bitcast i32 %5955 to float
  %5957 = call float @dx.op.binary.f32(i32 36, float %5723, float %5944)  ; FMin(a,b)
  %5958 = fmul fast float %5957, %5745
  %5959 = fsub fast float 1.000000e+00, %5958
  %5960 = bitcast float %5959 to i32
  %5961 = sub nsw i32 2129859010, %5960
  %5962 = bitcast i32 %5961 to float
  %5963 = fmul fast float %5934, %5744
  %5964 = fmul fast float %5963, %5950
  %5965 = fmul fast float %5935, %5744
  %5966 = fmul fast float %5965, %5956
  %5967 = fmul fast float %5936, %5744
  %5968 = fmul fast float %5967, %5962
  %5969 = call float @dx.op.binary.f32(i32 36, float %5724, float %5944)  ; FMin(a,b)
  %5970 = fmul fast float %5969, %5745
  %5971 = fsub fast float 1.000000e+00, %5970
  %5972 = bitcast float %5971 to i32
  %5973 = sub nsw i32 2129859010, %5972
  %5974 = bitcast i32 %5973 to float
  %5975 = call float @dx.op.binary.f32(i32 36, float %5725, float %5944)  ; FMin(a,b)
  %5976 = fmul fast float %5975, %5745
  %5977 = fsub fast float 1.000000e+00, %5976
  %5978 = bitcast float %5977 to i32
  %5979 = sub nsw i32 2129859010, %5978
  %5980 = bitcast i32 %5979 to float
  %5981 = call float @dx.op.binary.f32(i32 36, float %5733, float %5944)  ; FMin(a,b)
  %5982 = fmul fast float %5981, %5745
  %5983 = fsub fast float 1.000000e+00, %5982
  %5984 = bitcast float %5983 to i32
  %5985 = sub nsw i32 2129859010, %5984
  %5986 = bitcast i32 %5985 to float
  %5987 = fmul fast float %5940, %5744
  %5988 = fmul fast float %5987, %5974
  %5989 = fmul fast float %5941, %5744
  %5990 = fmul fast float %5989, %5980
  %5991 = fmul fast float %5942, %5744
  %5992 = fmul fast float %5991, %5986
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5966, float %5968, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = select i1 %226, float 0.000000e+00, float %5964
  %5995 = select i1 %226, float %5993, float %5966
  %5996 = select i1 %226, float 0.000000e+00, float %5968
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5937, float %5938, float %5939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = select i1 %226, float 0.000000e+00, float %5937
  %5999 = select i1 %226, float %5997, float %5938
  %6000 = select i1 %226, float 0.000000e+00, float %5939
  %6001 = call float @dx.op.dot3.f32(i32 55, float %5988, float %5990, float %5992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = select i1 %226, float 0.000000e+00, float %5988
  %6003 = select i1 %226, float %6001, float %5990
  %6004 = select i1 %226, float 0.000000e+00, float %5992
  %6005 = fmul fast float %4427, %4427
  %6006 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  %6007 = fmul fast float %5735, 9.843750e-01
  %6008 = fmul fast float %5730, 9.843750e-01
  %6009 = fadd fast float %6007, 7.812500e-03
  %6010 = fadd fast float %6008, 7.812500e-03
  %6011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %6009, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6012 = extractvalue %dx.types.ResRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.ResRet.f32 %6011, 1
  %6014 = extractvalue %dx.types.ResRet.f32 %6011, 2
  %6015 = extractvalue %dx.types.ResRet.f32 %6011, 3
  %6016 = fsub fast float 1.000000e+00, %6006
  %6017 = fsub fast float %6014, %6012
  %6018 = fsub fast float %6015, %6013
  %6019 = fmul fast float %6017, %6016
  %6020 = fmul fast float %6018, %6016
  %6021 = fadd fast float %6019, %6012
  %6022 = fadd fast float %6020, %6013
  %6023 = fmul fast float %6021, %5724
  %6024 = fmul fast float %6021, %5725
  %6025 = fmul fast float %6021, %5733
  %6026 = fadd fast float %6023, %6022
  %6027 = fadd fast float %6024, %6022
  %6028 = fadd fast float %6025, %6022
  %6029 = fcmp fast ogt float %5090, 0.000000e+00
  br i1 %6029, label %6030, label %6056

; <label>:6030                                    ; preds = %5911
  %6031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5090, float %5735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6032 = extractvalue %dx.types.ResRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.ResRet.f32 %6031, 1
  %6034 = extractvalue %dx.types.ResRet.f32 %6031, 2
  %6035 = fadd fast float %6032, -5.000000e-01
  %6036 = fadd fast float %6033, -5.000000e-01
  %6037 = fadd fast float %6034, -5.000000e-01
  %6038 = fsub fast float 1.000000e+00, %5724
  %6039 = fsub fast float 1.000000e+00, %5725
  %6040 = fsub fast float 1.000000e+00, %5733
  %6041 = fmul fast float %5724, 4.000000e+00
  %6042 = fmul fast float %6041, %6038
  %6043 = fmul fast float %6042, %6035
  %6044 = fmul fast float %5725, 4.000000e+00
  %6045 = fmul fast float %6044, %6039
  %6046 = fmul fast float %6045, %6036
  %6047 = fmul fast float %5733, 4.000000e+00
  %6048 = fmul fast float %6047, %6040
  %6049 = fmul fast float %6048, %6037
  %6050 = fadd fast float %6043, %6026
  %6051 = fadd fast float %6046, %6027
  %6052 = fadd fast float %6049, %6028
  %6053 = call float @dx.op.unary.f32(i32 7, float %6050)  ; Saturate(value)
  %6054 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  %6055 = call float @dx.op.unary.f32(i32 7, float %6052)  ; Saturate(value)
  br label %6056

; <label>:6056                                    ; preds = %6030, %5911
  %6057 = phi float [ %6053, %6030 ], [ %6026, %5911 ]
  %6058 = phi float [ %6054, %6030 ], [ %6027, %5911 ]
  %6059 = phi float [ %6055, %6030 ], [ %6028, %5911 ]
  %6060 = call float @dx.op.binary.f32(i32 35, float %6058, float %6059)  ; FMax(a,b)
  %6061 = call float @dx.op.binary.f32(i32 35, float %6057, float %6060)  ; FMax(a,b)
  %6062 = fsub fast float 1.000000e+00, %6061
  %6063 = fmul fast float %6061, %5730
  %6064 = fadd fast float %6063, %5730
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6067 = extractvalue %dx.types.CBufRet.f32 %6065, 3
  %6068 = fmul fast float %6064, %6066
  %6069 = fadd fast float %6068, %6067
  %6070 = call float @dx.op.unary.f32(i32 7, float %6069)  ; Saturate(value)
  %6071 = fsub fast float 1.000000e+00, %5756
  %6072 = fadd fast float %6071, %6070
  %6073 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6074 = fcmp fast olt float %6073, 1.000000e+00
  br i1 %6074, label %6075, label %6551

; <label>:6075                                    ; preds = %6056
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 3
  %6079 = fmul fast float %6077, %109
  %6080 = fmul fast float %6078, %110
  %6081 = fptoui float %6079 to i32
  %6082 = fptoui float %6080 to i32
  %6083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.CBufRet.f32 %6083, 2
  %6086 = extractvalue %dx.types.CBufRet.f32 %6083, 3
  %6087 = fadd fast float %97, -4.000000e+00
  %6088 = call float @dx.op.binary.f32(i32 35, float %6087, float 0.000000e+00)  ; FMax(a,b)
  %6089 = fadd fast float %6088, %6084
  %6090 = fmul fast float %6089, %6085
  %6091 = call float @dx.op.unary.f32(i32 23, float %6090)  ; Log(value)
  %6092 = fmul fast float %6091, %6086
  %6093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.f32 %6093, 2
  %6095 = fmul fast float %6092, %6094
  %6096 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.i32 %6097, 1
  %6099 = add i32 %6098, -1
  %6100 = uitofp i32 %6098 to float
  %6101 = fmul fast float %6100, %6096
  %6102 = fptoui float %6101 to i32
  %6103 = call i32 @dx.op.binary.i32(i32 40, i32 %6102, i32 %6099)  ; UMin(a,b)
  %6104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.i32 %6104, 2
  %6106 = extractvalue %dx.types.CBufRet.i32 %6104, 3
  %6107 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6082, i32 %6105, i32 %6081)  ; UMad(a,b,c)
  %6108 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6103, i32 %6106, i32 %6107)  ; UMad(a,b,c)
  %6109 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6110 = fptoui float %6109 to i32
  %6111 = lshr i32 %6110, 5
  %6112 = call i32 @dx.op.binary.i32(i32 40, i32 %6111, i32 8191)  ; UMin(a,b)
  %6113 = fsub fast float %5523, %166
  %6114 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6115 = fcmp fast ogt float %6114, 0.000000e+00
  %6116 = fcmp fast ogt float %5743, 0.000000e+00
  %6117 = and i1 %6116, %6115
  br i1 %6117, label %6118, label %6147

; <label>:6118                                    ; preds = %6075
  %6119 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = call float @dx.op.binary.f32(i32 35, float %6119, float -1.000000e+00)  ; FMax(a,b)
  %6121 = call float @dx.op.binary.f32(i32 36, float %6120, float 1.000000e+00)  ; FMin(a,b)
  %6122 = fmul fast float %6121, %6121
  %6123 = fsub fast float 1.000000e+00, %6122
  %6124 = fmul fast float %6123, 0x3FFC6E2300000000
  %6125 = fsub fast float 1.000000e+00, %6124
  %6126 = fcmp fast ogt float %6125, 0.000000e+00
  %6127 = call float @dx.op.unary.f32(i32 24, float %6125)  ; Sqrt(value)
  %6128 = fsub fast float 1.000000e+00, %6127
  %6129 = call float @dx.op.unary.f32(i32 23, float %6128)  ; Log(value)
  %6130 = fmul fast float %6129, 5.000000e+00
  %6131 = call float @dx.op.unary.f32(i32 21, float %6130)  ; Exp(value)
  %6132 = fmul fast float %6131, 0x3FEF591A60000000
  %6133 = fadd fast float %6132, 0x3F94DCB540000000
  %6134 = select i1 %6126, float %6133, float 1.000000e+00
  %6135 = fcmp fast oge float %6134, 1.000000e+00
  %6136 = fmul fast float %6119, 2.000000e+00
  %6137 = fadd fast float %6136, %5743
  %6138 = select i1 %6135, float %6137, float %5743
  %6139 = fsub fast float %6138, %5743
  %6140 = fmul fast float %6139, %6114
  %6141 = fadd fast float %6140, %5743
  %6142 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %6141, float %5741, float %5742, float %6141)  ; Dot3(ax,ay,az,bx,by,bz)
  %6143 = call float @dx.op.unary.f32(i32 25, float %6142)  ; Rsqrt(value)
  %6144 = fmul fast float %6143, %5741
  %6145 = fmul fast float %6143, %5742
  %6146 = fmul fast float %6141, %6143
  br label %6147

; <label>:6147                                    ; preds = %6118, %6075
  %6148 = phi float [ %6144, %6118 ], [ %5741, %6075 ]
  %6149 = phi float [ %6145, %6118 ], [ %5742, %6075 ]
  %6150 = phi float [ %6146, %6118 ], [ %5743, %6075 ]
  %6151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.i32 %6151, 2
  %6153 = add nsw i32 %6152, -1
  %6154 = call i32 @dx.op.binary.i32(i32 37, i32 %6153, i32 0)  ; IMax(a,b)
  %6155 = shl i32 %6112, 2
  %6156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6155, i32 undef)  ; BufferLoad(srv,index,wot)
  %6157 = extractvalue %dx.types.ResRet.i32 %6156, 0
  %6158 = lshr i32 %6157, 16
  %6159 = and i32 %6157, 65535
  %6160 = lshr i32 %6157, 21
  %6161 = lshr i32 %6159, 5
  %6162 = call i32 @dx.op.binary.i32(i32 40, i32 %6161, i32 %6154)  ; UMin(a,b)
  %6163 = icmp ugt i32 %6160, %6162
  br i1 %6163, label %6527, label %6164

; <label>:6164                                    ; preds = %6147
  br label %6165

; <label>:6165                                    ; preds = %6519, %6164
  %6166 = phi float [ %6520, %6519 ], [ 0.000000e+00, %6164 ]
  %6167 = phi float [ %6521, %6519 ], [ 0.000000e+00, %6164 ]
  %6168 = phi float [ %6522, %6519 ], [ 0.000000e+00, %6164 ]
  %6169 = phi float [ %6523, %6519 ], [ 1.000000e+00, %6164 ]
  %6170 = phi i32 [ %6524, %6519 ], [ %6160, %6164 ]
  %6171 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.i32 %6171, 2
  %6173 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6108, i32 %6172, i32 %6170)  ; UMad(a,b,c)
  %6174 = shl i32 %6173, 2
  %6175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6174, i32 undef)  ; BufferLoad(srv,index,wot)
  %6176 = extractvalue %dx.types.ResRet.i32 %6175, 0
  %6177 = shl i32 %6170, 5
  %6178 = sub nsw i32 %6158, %6177
  %6179 = call i32 @dx.op.binary.i32(i32 37, i32 %6178, i32 0)  ; IMax(a,b)
  %6180 = call i32 @dx.op.binary.i32(i32 38, i32 %6179, i32 31)  ; IMin(a,b)
  %6181 = sub nsw i32 1, %6158
  %6182 = add nsw i32 %6181, %6159
  %6183 = call i32 @dx.op.binary.i32(i32 37, i32 %6182, i32 0)  ; IMax(a,b)
  %6184 = call i32 @dx.op.binary.i32(i32 38, i32 %6183, i32 32)  ; IMin(a,b)
  %6185 = and i32 %6184, 31
  %6186 = shl i32 -1, %6185
  %6187 = xor i32 %6186, -1
  %6188 = and i32 %6180, 31
  %6189 = shl i32 %6187, %6188
  %6190 = icmp eq i32 %6184, 32
  %6191 = select i1 %6190, i32 -1, i32 %6189
  %6192 = and i32 %6191, %6176
  %6193 = icmp eq i32 %6192, 0
  br i1 %6193, label %6519, label %6194

; <label>:6194                                    ; preds = %6165
  br label %6195

; <label>:6195                                    ; preds = %6302, %6194
  %6196 = phi float [ %6303, %6302 ], [ %6166, %6194 ]
  %6197 = phi float [ %6304, %6302 ], [ %6167, %6194 ]
  %6198 = phi float [ %6305, %6302 ], [ %6168, %6194 ]
  %6199 = phi float [ %6306, %6302 ], [ %6169, %6194 ]
  %6200 = phi i32 [ %6205, %6302 ], [ %6192, %6194 ]
  %6201 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6200)  ; FirstbitLo(value)
  %6202 = add i32 %6201, %6177
  %6203 = and i32 %6201, 31
  %6204 = shl i32 1, %6203
  %6205 = xor i32 %6204, %6200
  %6206 = mul i32 %6202, 72
  %6207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6206, i32 undef)  ; BufferLoad(srv,index,wot)
  %6208 = extractvalue %dx.types.ResRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.ResRet.f32 %6207, 1
  %6210 = extractvalue %dx.types.ResRet.f32 %6207, 2
  %6211 = add i32 %6206, 12
  %6212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6211, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.i32 %6212, 0
  %6214 = add i32 %6206, 16
  %6215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6214, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.ResRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.ResRet.f32 %6215, 2
  %6219 = add i32 %6206, 28
  %6220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6219, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.f32 %6220, 0
  %6222 = add i32 %6206, 32
  %6223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6222, i32 undef)  ; BufferLoad(srv,index,wot)
  %6224 = extractvalue %dx.types.ResRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.ResRet.f32 %6223, 1
  %6226 = extractvalue %dx.types.ResRet.f32 %6223, 2
  %6227 = extractvalue %dx.types.ResRet.f32 %6223, 3
  %6228 = add i32 %6206, 48
  %6229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6228, i32 undef)  ; BufferLoad(srv,index,wot)
  %6230 = extractvalue %dx.types.ResRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.ResRet.f32 %6229, 1
  %6232 = add i32 %6206, 56
  %6233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6232, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.ResRet.f32 %6233, 1
  %6236 = add i32 %6206, 64
  %6237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6236, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.f32 %6237, 0
  %6239 = extractvalue %dx.types.ResRet.f32 %6237, 1
  %6240 = mul i32 %6202, 60
  %6241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6240, i32 undef)  ; BufferLoad(srv,index,wot)
  %6242 = extractvalue %dx.types.ResRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.ResRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.ResRet.f32 %6241, 2
  %6245 = add i32 %6240, 12
  %6246 = add i32 %6240, 48
  %6247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6246, i32 undef)  ; BufferLoad(srv,index,wot)
  %6248 = extractvalue %dx.types.ResRet.f32 %6247, 0
  %6249 = extractvalue %dx.types.ResRet.f32 %6247, 1
  %6250 = extractvalue %dx.types.ResRet.f32 %6247, 2
  %6251 = and i32 %6213, 32767
  %6252 = bitcast float %6208 to i32
  %6253 = icmp eq i32 %6252, -1
  %6254 = bitcast float %6209 to i32
  %6255 = and i32 %6213, 32768
  %6256 = icmp ne i32 %6255, 0
  %6257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6258 = extractvalue %dx.types.CBufRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.CBufRet.f32 %6257, 1
  %6260 = extractvalue %dx.types.CBufRet.f32 %6257, 2
  %6261 = fsub fast float %6242, %6258
  %6262 = fsub fast float %6243, %6259
  %6263 = fsub fast float %6244, %6260
  %6264 = fsub fast float %164, %6261
  %6265 = fsub fast float %165, %6262
  %6266 = fsub fast float %166, %6263
  %6267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6245, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = call float @dx.op.dot3.f32(i32 55, float %6264, float %6265, float %6266, float %6268, float %6269, float %6270)  ; Dot3(ax,ay,az,bx,by,bz)
  %6272 = add i32 %6240, 24
  %6273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6272, i32 undef)  ; BufferLoad(srv,index,wot)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.ResRet.f32 %6273, 2
  %6277 = call float @dx.op.dot3.f32(i32 55, float %6264, float %6265, float %6266, float %6274, float %6275, float %6276)  ; Dot3(ax,ay,az,bx,by,bz)
  %6278 = add i32 %6240, 36
  %6279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6278, i32 undef)  ; BufferLoad(srv,index,wot)
  %6280 = extractvalue %dx.types.ResRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.ResRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.ResRet.f32 %6279, 2
  %6283 = call float @dx.op.dot3.f32(i32 55, float %6264, float %6265, float %6266, float %6280, float %6281, float %6282)  ; Dot3(ax,ay,az,bx,by,bz)
  %6284 = call float @dx.op.unary.f32(i32 6, float %6271)  ; FAbs(value)
  %6285 = call float @dx.op.unary.f32(i32 6, float %6277)  ; FAbs(value)
  %6286 = call float @dx.op.unary.f32(i32 6, float %6283)  ; FAbs(value)
  %6287 = fsub fast float %6248, %6284
  %6288 = fsub fast float %6249, %6285
  %6289 = fsub fast float %6250, %6286
  %6290 = fmul fast float %6287, %6216
  %6291 = fmul fast float %6288, %6217
  %6292 = fmul fast float %6289, %6218
  %6293 = call float @dx.op.binary.f32(i32 36, float %6291, float %6292)  ; FMin(a,b)
  %6294 = call float @dx.op.binary.f32(i32 36, float %6290, float %6293)  ; FMin(a,b)
  %6295 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6296 = call float @dx.op.binary.f32(i32 36, float %6199, float %6295)  ; FMin(a,b)
  %6297 = uitofp i1 %6256 to float
  %6298 = fadd fast float %6114, 1.000000e+00
  %6299 = fsub fast float %6298, %6297
  %6300 = fmul fast float %6296, %6299
  %6301 = fcmp fast ogt float %6300, 0.000000e+00
  br i1 %6301, label %6308, label %6302

; <label>:6302                                    ; preds = %6450, %6195
  %6303 = phi float [ %6514, %6450 ], [ %6196, %6195 ]
  %6304 = phi float [ %6515, %6450 ], [ %6197, %6195 ]
  %6305 = phi float [ %6516, %6450 ], [ %6198, %6195 ]
  %6306 = phi float [ %6517, %6450 ], [ %6199, %6195 ]
  %6307 = icmp eq i32 %6200, %6204
  br i1 %6307, label %6518, label %6195

; <label>:6308                                    ; preds = %6195
  br i1 %6253, label %6366, label %6309

; <label>:6309                                    ; preds = %6308
  %6310 = fsub fast float -0.000000e+00, %6268
  %6311 = fsub fast float -0.000000e+00, %6269
  %6312 = fsub fast float -0.000000e+00, %6270
  %6313 = call float @dx.op.dot3.f32(i32 55, float %6148, float %6149, float %6150, float %6310, float %6311, float %6312)  ; Dot3(ax,ay,az,bx,by,bz)
  %6314 = fsub fast float -0.000000e+00, %6313
  %6315 = call float @dx.op.dot3.f32(i32 55, float %6264, float %6265, float %6266, float %6310, float %6311, float %6312)  ; Dot3(ax,ay,az,bx,by,bz)
  %6316 = fadd fast float %6315, %6231
  %6317 = fadd fast float %6230, %6315
  %6318 = fsub fast float -0.000000e+00, %6317
  %6319 = fcmp ogt float %6313, -0.000000e+00
  %6320 = select i1 %6319, float %6318, float %6316
  %6321 = call float @dx.op.unary.f32(i32 6, float %6314)  ; FAbs(value)
  %6322 = fdiv fast float 1.000000e+00, %6321
  %6323 = fmul fast float %6320, %6322
  %6324 = call float @dx.op.binary.f32(i32 35, float %6323, float 0.000000e+00)  ; FMax(a,b)
  %6325 = fsub fast float -0.000000e+00, %6274
  %6326 = fsub fast float -0.000000e+00, %6275
  %6327 = fsub fast float -0.000000e+00, %6276
  %6328 = call float @dx.op.dot3.f32(i32 55, float %6148, float %6149, float %6150, float %6325, float %6326, float %6327)  ; Dot3(ax,ay,az,bx,by,bz)
  %6329 = fsub fast float -0.000000e+00, %6328
  %6330 = call float @dx.op.dot3.f32(i32 55, float %6264, float %6265, float %6266, float %6325, float %6326, float %6327)  ; Dot3(ax,ay,az,bx,by,bz)
  %6331 = fadd fast float %6330, %6235
  %6332 = fadd fast float %6234, %6330
  %6333 = fsub fast float -0.000000e+00, %6332
  %6334 = fcmp ogt float %6328, -0.000000e+00
  %6335 = select i1 %6334, float %6333, float %6331
  %6336 = call float @dx.op.unary.f32(i32 6, float %6329)  ; FAbs(value)
  %6337 = fdiv fast float 1.000000e+00, %6336
  %6338 = fmul fast float %6335, %6337
  %6339 = call float @dx.op.binary.f32(i32 35, float %6338, float 0.000000e+00)  ; FMax(a,b)
  %6340 = fsub fast float -0.000000e+00, %6280
  %6341 = fsub fast float -0.000000e+00, %6281
  %6342 = fsub fast float -0.000000e+00, %6282
  %6343 = call float @dx.op.dot3.f32(i32 55, float %6148, float %6149, float %6150, float %6340, float %6341, float %6342)  ; Dot3(ax,ay,az,bx,by,bz)
  %6344 = fsub fast float -0.000000e+00, %6343
  %6345 = call float @dx.op.dot3.f32(i32 55, float %6264, float %6265, float %6266, float %6340, float %6341, float %6342)  ; Dot3(ax,ay,az,bx,by,bz)
  %6346 = fadd fast float %6345, %6239
  %6347 = fadd fast float %6238, %6345
  %6348 = fsub fast float -0.000000e+00, %6347
  %6349 = fcmp ogt float %6343, -0.000000e+00
  %6350 = select i1 %6349, float %6348, float %6346
  %6351 = call float @dx.op.unary.f32(i32 6, float %6344)  ; FAbs(value)
  %6352 = fdiv fast float 1.000000e+00, %6351
  %6353 = fmul fast float %6350, %6352
  %6354 = call float @dx.op.binary.f32(i32 35, float %6353, float 0.000000e+00)  ; FMax(a,b)
  %6355 = call float @dx.op.binary.f32(i32 36, float %6339, float %6354)  ; FMin(a,b)
  %6356 = call float @dx.op.binary.f32(i32 36, float %6324, float %6355)  ; FMin(a,b)
  %6357 = fmul fast float %6356, %6148
  %6358 = fmul fast float %6356, %6149
  %6359 = fmul fast float %6356, %6150
  %6360 = fadd fast float %6357, %164
  %6361 = fadd fast float %6358, %165
  %6362 = fadd fast float %6359, %166
  %6363 = fsub fast float %6360, %6208
  %6364 = fsub fast float %6361, %6209
  %6365 = fsub fast float %6362, %6210
  br label %6373

; <label>:6366                                    ; preds = %6308
  %6367 = fmul fast float %6148, 8.096000e+03
  %6368 = fmul fast float %6149, 8.096000e+03
  %6369 = fmul fast float %6150, 8.096000e+03
  %6370 = fadd fast float %6367, %164
  %6371 = fadd fast float %6368, %165
  %6372 = fadd fast float %6369, %166
  br label %6373

; <label>:6373                                    ; preds = %6366, %6309
  %6374 = phi float [ %6148, %6366 ], [ %6363, %6309 ]
  %6375 = phi float [ %6149, %6366 ], [ %6364, %6309 ]
  %6376 = phi float [ %6150, %6366 ], [ %6365, %6309 ]
  %6377 = phi float [ %6370, %6366 ], [ %6360, %6309 ]
  %6378 = phi float [ %6371, %6366 ], [ %6361, %6309 ]
  %6379 = phi float [ %6372, %6366 ], [ %6362, %6309 ]
  %6380 = fcmp fast olt float %6227, 1.000000e+00
  br i1 %6380, label %6381, label %6412, !dx.controlflow.hints !100

; <label>:6381                                    ; preds = %6373
  %6382 = fmul fast float %6376, %6225
  %6383 = fmul fast float %6375, %6226
  %6384 = fsub fast float %6382, %6383
  %6385 = fmul fast float %6374, %6226
  %6386 = fmul fast float %6376, %6224
  %6387 = fsub fast float %6385, %6386
  %6388 = fmul fast float %6375, %6224
  %6389 = fmul fast float %6374, %6225
  %6390 = fsub fast float %6388, %6389
  %6391 = fmul fast float %6384, 2.000000e+00
  %6392 = fmul fast float %6387, 2.000000e+00
  %6393 = fmul fast float %6390, 2.000000e+00
  %6394 = fmul fast float %6391, %6227
  %6395 = fmul fast float %6392, %6227
  %6396 = fmul fast float %6393, %6227
  %6397 = fmul fast float %6393, %6225
  %6398 = fmul fast float %6392, %6226
  %6399 = fmul fast float %6391, %6226
  %6400 = fmul fast float %6393, %6224
  %6401 = fmul fast float %6392, %6224
  %6402 = fmul fast float %6391, %6225
  %6403 = fadd fast float %6397, %6374
  %6404 = fadd fast float %6403, %6394
  %6405 = fsub fast float %6404, %6398
  %6406 = fsub fast float %6375, %6400
  %6407 = fadd fast float %6406, %6395
  %6408 = fadd fast float %6407, %6399
  %6409 = fadd fast float %6396, %6376
  %6410 = fsub fast float %6409, %6402
  %6411 = fadd fast float %6410, %6401
  br label %6412

; <label>:6412                                    ; preds = %6381, %6373
  %6413 = phi float [ %6405, %6381 ], [ %6374, %6373 ]
  %6414 = phi float [ %6408, %6381 ], [ %6375, %6373 ]
  %6415 = phi float [ %6411, %6381 ], [ %6376, %6373 ]
  br i1 %6253, label %6447, label %6416

; <label>:6416                                    ; preds = %6412
  %6417 = fmul fast float %5730, 0x400187C840000000
  %6418 = fadd fast float %6417, 0xC00EFC2120000000
  %6419 = fmul fast float %6418, %5730
  %6420 = fadd fast float %6419, 0x3FE5D16340000000
  %6421 = fmul fast float %6420, %5730
  %6422 = fadd fast float %6421, 1.000000e+00
  %6423 = call float @dx.op.unary.f32(i32 7, float %6422)  ; Saturate(value)
  %6424 = fsub fast float %6377, %164
  %6425 = fsub fast float %6378, %165
  %6426 = fsub fast float %6379, %166
  %6427 = fsub fast float %6377, %6208
  %6428 = fsub fast float %6378, %6209
  %6429 = fsub fast float %6379, %6210
  %6430 = call float @dx.op.dot3.f32(i32 55, float %6424, float %6425, float %6426, float %6424, float %6425, float %6426)  ; Dot3(ax,ay,az,bx,by,bz)
  %6431 = call float @dx.op.dot3.f32(i32 55, float %6427, float %6428, float %6429, float %6427, float %6428, float %6429)  ; Dot3(ax,ay,az,bx,by,bz)
  %6432 = fadd fast float %6431, 0x3EE4F8B580000000
  %6433 = fdiv fast float %6430, %6432
  %6434 = bitcast float %6433 to i32
  %6435 = ashr i32 %6434, 1
  %6436 = add nsw i32 %6435, 532487669
  %6437 = bitcast i32 %6436 to float
  %6438 = fmul fast float %6437, %6423
  %6439 = call float @dx.op.unary.f32(i32 7, float %6438)  ; Saturate(value)
  %6440 = fmul fast float %6439, 0x4009981AE0000000
  %6441 = fsub fast float 0x40111BBD80000000, %6440
  %6442 = fmul fast float %6441, %6439
  %6443 = fadd fast float %6442, 0xC0009F6020000000
  %6444 = fmul fast float %6443, %6439
  %6445 = fadd fast float %6444, 1.000000e+00
  %6446 = call float @dx.op.unary.f32(i32 7, float %6445)  ; Saturate(value)
  br label %6450

; <label>:6447                                    ; preds = %6412
  %6448 = icmp ne i32 %6254, -1
  %6449 = zext i1 %6448 to i32
  br label %6450

; <label>:6450                                    ; preds = %6447, %6416
  %6451 = phi float [ %5730, %6447 ], [ %6446, %6416 ]
  %6452 = phi i32 [ %6449, %6447 ], [ 0, %6416 ]
  %6453 = fmul float %6451, 5.000000e+00
  %6454 = fsub float 5.000000e+00, %6453
  %6455 = icmp ne i32 %6452, 0
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 3
  %6458 = fadd fast float %6457, %6454
  %6459 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6458)  ; FMax(a,b)
  %6460 = call float @dx.op.unary.f32(i32 6, float %6413)  ; FAbs(value)
  %6461 = call float @dx.op.unary.f32(i32 6, float %6414)  ; FAbs(value)
  %6462 = fadd fast float %6461, %6460
  %6463 = call float @dx.op.unary.f32(i32 6, float %6415)  ; FAbs(value)
  %6464 = fadd fast float %6462, %6463
  %6465 = fcmp fast oeq float %6464, 0.000000e+00
  %6466 = fdiv fast float 1.000000e+00, %6464
  %6467 = select i1 %6465, float 1.000000e+00, float %6466
  %6468 = fmul fast float %6467, %6413
  %6469 = fmul fast float %6467, %6414
  %6470 = call float @dx.op.unary.f32(i32 6, float %6469)  ; FAbs(value)
  %6471 = call float @dx.op.unary.f32(i32 6, float %6468)  ; FAbs(value)
  %6472 = fsub fast float 1.000000e+00, %6470
  %6473 = fsub fast float 1.000000e+00, %6471
  %6474 = fcmp fast oge float %6468, 0.000000e+00
  %6475 = fcmp fast oge float %6469, 0.000000e+00
  %6476 = select i1 %6474, float 1.000000e+00, float -1.000000e+00
  %6477 = select i1 %6475, float 1.000000e+00, float -1.000000e+00
  %6478 = fcmp fast ole float %6415, 0.000000e+00
  %6479 = fmul fast float %6476, %6472
  %6480 = fmul fast float %6477, %6473
  %6481 = select i1 %6478, float %6479, float %6468
  %6482 = select i1 %6478, float %6480, float %6469
  %6483 = fmul fast float %6481, 5.000000e-01
  %6484 = fmul fast float %6482, 5.000000e-01
  %6485 = fadd fast float %6483, 5.000000e-01
  %6486 = fadd fast float %6484, 5.000000e-01
  %6487 = uitofp i32 %6251 to float
  %6488 = call float @dx.op.binary.f32(i32 36, float %6459, float 3.000000e+00)  ; FMin(a,b)
  %6489 = fadd fast float %6488, 2.000000e+00
  %6490 = call float @dx.op.unary.f32(i32 21, float %6489)  ; Exp(value)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6492 = fmul fast float %6491, %6490
  %6493 = fmul fast float %6492, 2.000000e+00
  %6494 = fsub fast float 1.000000e+00, %6493
  %6495 = fmul fast float %6485, %6494
  %6496 = fmul fast float %6486, %6494
  %6497 = fadd fast float %6495, %6492
  %6498 = fadd fast float %6496, %6492
  %6499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6497, float %6498, float %6487, float undef, i32 0, i32 0, i32 undef, float %6459)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6500 = extractvalue %dx.types.ResRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.ResRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.ResRet.f32 %6499, 2
  %6503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6504 = extractvalue %dx.types.CBufRet.f32 %6503, 3
  %6505 = fmul fast float %6504, %6221
  %6506 = call float @dx.op.binary.f32(i32 36, float %5762, float %6505)  ; FMin(a,b)
  %6507 = select i1 %6455, float %6506, float %6505
  %6508 = fmul fast float %6500, %6300
  %6509 = fmul fast float %6508, %6507
  %6510 = fmul fast float %6501, %6300
  %6511 = fmul fast float %6510, %6507
  %6512 = fmul fast float %6502, %6300
  %6513 = fmul fast float %6512, %6507
  %6514 = fadd fast float %6509, %6196
  %6515 = fadd fast float %6511, %6197
  %6516 = fadd fast float %6513, %6198
  %6517 = fsub fast float %6199, %6300
  br label %6302

; <label>:6518                                    ; preds = %6302
  br label %6519

; <label>:6519                                    ; preds = %6518, %6165
  %6520 = phi float [ %6166, %6165 ], [ %6303, %6518 ]
  %6521 = phi float [ %6167, %6165 ], [ %6304, %6518 ]
  %6522 = phi float [ %6168, %6165 ], [ %6305, %6518 ]
  %6523 = phi float [ %6169, %6165 ], [ %6306, %6518 ]
  %6524 = add i32 %6170, 1
  %6525 = icmp ugt i32 %6524, %6162
  br i1 %6525, label %6526, label %6165, !llvm.loop !101

; <label>:6526                                    ; preds = %6519
  br label %6527

; <label>:6527                                    ; preds = %6526, %6147
  %6528 = phi float [ 0.000000e+00, %6147 ], [ %6520, %6526 ]
  %6529 = phi float [ 0.000000e+00, %6147 ], [ %6521, %6526 ]
  %6530 = phi float [ 0.000000e+00, %6147 ], [ %6522, %6526 ]
  %6531 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6532 = select i1 %226, float 0.000000e+00, float %6528
  %6533 = select i1 %226, float %6531, float %6529
  %6534 = select i1 %226, float 0.000000e+00, float %6530
  %6535 = fcmp fast olt float %6073, 0.000000e+00
  %6536 = call float @dx.op.unary.f32(i32 6, float %6073)  ; FAbs(value)
  %6537 = fmul fast float %6536, %6002
  %6538 = fmul fast float %6536, %6003
  %6539 = fmul fast float %6536, %6004
  %6540 = select i1 %6535, float %6002, float %6537
  %6541 = select i1 %6535, float %6003, float %6538
  %6542 = select i1 %6535, float %6004, float %6539
  %6543 = fsub fast float 1.000000e+00, %6536
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = fmul fast float %6544, %6532
  %6546 = fmul fast float %6544, %6533
  %6547 = fmul fast float %6544, %6534
  %6548 = fadd fast float %6540, %6545
  %6549 = fadd fast float %6541, %6546
  %6550 = fadd fast float %6542, %6547
  br label %6551

; <label>:6551                                    ; preds = %6527, %6056
  %6552 = phi float [ %6002, %6056 ], [ %6548, %6527 ]
  %6553 = phi float [ %6003, %6056 ], [ %6549, %6527 ]
  %6554 = phi float [ %6004, %6056 ], [ %6550, %6527 ]
  %6555 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5722, float %5723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6556 = fcmp fast ogt float %6555, 0x3E7FF19E20000000
  %6557 = fdiv fast float 1.000000e+00, %6555
  %6558 = select i1 %6556, float %6557, float 0.000000e+00
  %6559 = fmul fast float %6558, %5721
  %6560 = fmul fast float %6558, %5722
  %6561 = fmul fast float %6558, %5723
  %6562 = fadd fast float %6559, -1.000000e+00
  %6563 = fadd fast float %6560, -1.000000e+00
  %6564 = fadd fast float %6561, -1.000000e+00
  %6565 = fmul fast float %6562, 5.000000e-01
  %6566 = fmul fast float %6563, 5.000000e-01
  %6567 = fmul fast float %6564, 5.000000e-01
  %6568 = fadd fast float %6565, 1.000000e+00
  %6569 = fadd fast float %6566, 1.000000e+00
  %6570 = fadd fast float %6567, 1.000000e+00
  %6571 = call float @dx.op.binary.f32(i32 35, float %5735, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6572 = fdiv fast float %4427, %6571
  %6573 = fcmp fast olt float %5139, 1.270000e+02
  %6574 = fcmp fast olt float %5140, 1.270000e+02
  %6575 = fcmp fast olt float %5141, 1.270000e+02
  %6576 = fmul fast float %5139, 0xBFF7154760000000
  %6577 = fmul fast float %6576, %6572
  %6578 = fmul fast float %5140, 0xBFF7154760000000
  %6579 = fmul fast float %6578, %6572
  %6580 = fmul fast float %5141, 0xBFF7154760000000
  %6581 = fmul fast float %6580, %6572
  %6582 = call float @dx.op.unary.f32(i32 21, float %6577)  ; Exp(value)
  %6583 = call float @dx.op.unary.f32(i32 21, float %6579)  ; Exp(value)
  %6584 = call float @dx.op.unary.f32(i32 21, float %6581)  ; Exp(value)
  %6585 = call float @dx.op.unary.f32(i32 7, float %6582)  ; Saturate(value)
  %6586 = call float @dx.op.unary.f32(i32 7, float %6583)  ; Saturate(value)
  %6587 = call float @dx.op.unary.f32(i32 7, float %6584)  ; Saturate(value)
  %6588 = select i1 %6573, float %6585, float 0.000000e+00
  %6589 = select i1 %6574, float %6586, float 0.000000e+00
  %6590 = select i1 %6575, float %6587, float 0.000000e+00
  %6591 = fmul fast float %6588, %6062
  %6592 = fmul fast float %6589, %6062
  %6593 = fmul fast float %6590, %6062
  %6594 = fadd fast float %6591, -1.000000e+00
  %6595 = fadd fast float %6592, -1.000000e+00
  %6596 = fadd fast float %6593, -1.000000e+00
  %6597 = fmul fast float %6594, %5087
  %6598 = fmul fast float %6595, %5087
  %6599 = fmul fast float %6596, %5087
  %6600 = fmul fast float %6552, %6057
  %6601 = fmul fast float %6553, %6058
  %6602 = fmul fast float %6554, %6059
  %6603 = fsub fast float 1.000000e+00, %5735
  %6604 = bitcast float %6603 to i32
  %6605 = sitofp i32 %6604 to float
  %6606 = fmul fast float %6605, 5.000000e+00
  %6607 = fadd fast float %6606, 0xC1EFBF8940000000
  %6608 = fptosi float %6607 to i32
  %6609 = bitcast i32 %6608 to float
  %6610 = fmul fast float %6609, %5091
  %6611 = fmul fast float %5994, %6610
  %6612 = fmul fast float %6611, %6062
  %6613 = fmul fast float %6612, %6568
  %6614 = fmul fast float %5995, %6610
  %6615 = fmul fast float %6614, %6062
  %6616 = fmul fast float %6615, %6569
  %6617 = fmul fast float %5996, %6610
  %6618 = fmul fast float %6617, %6062
  %6619 = fmul fast float %6618, %6570
  %6620 = fadd fast float %6600, %5080
  %6621 = fadd fast float %6620, %6613
  %6622 = fmul fast float %6621, %5087
  %6623 = fadd fast float %6601, %5081
  %6624 = fadd fast float %6623, %6616
  %6625 = fmul fast float %6624, %5087
  %6626 = fadd fast float %6602, %5082
  %6627 = fadd fast float %6626, %6619
  %6628 = fmul fast float %6627, %5087
  %6629 = fmul fast float %5725, 0x4012D0A400000000
  %6630 = fadd fast float %6599, 1.000000e+00
  %6631 = fadd fast float %6598, 1.000000e+00
  %6632 = fadd fast float %6597, 1.000000e+00
  %6633 = fmul fast float %6062, %5996
  %6634 = fmul fast float %6062, %5995
  %6635 = fmul fast float %6062, %5994
  %6636 = fmul fast float %5750, %5087
  %6637 = fsub fast float 1.000000e+00, %6636
  %6638 = call float @dx.op.unary.f32(i32 7, float %6637)  ; Saturate(value)
  %6639 = fsub fast float 1.000000e+00, %6638
  %6640 = fadd fast float %6629, 0x3FDB6377A0000000
  %6641 = fmul fast float %6639, %6640
  %6642 = call float @dx.op.dot3.f32(i32 55, float %5157, float %5158, float %5159, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6643 = fadd fast float %6641, %6642
  %6644 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  %6645 = call float @dx.op.binary.f32(i32 35, float %6644, float 0x3F847AE140000000)  ; FMax(a,b)
  %6646 = fmul fast float %6645, %6645
  %6647 = fmul fast float %6646, %6646
  %6648 = fmul fast float %6647, 0xC00A935000000000
  %6649 = call float @dx.op.unary.f32(i32 21, float %6648)  ; Exp(value)
  %6650 = fsub fast float 1.000000e+00, %6649
  %6651 = fmul fast float %6632, %5998
  %6652 = fmul fast float %6651, %6650
  %6653 = fmul fast float %6631, %5999
  %6654 = fmul fast float %6653, %6650
  %6655 = fmul fast float %6630, %6000
  %6656 = fmul fast float %6655, %6650
  %6657 = fadd fast float %6652, %6635
  %6658 = fmul fast float %6657, %5087
  %6659 = fadd fast float %6654, %6634
  %6660 = fmul fast float %6659, %5087
  %6661 = fadd fast float %6656, %6633
  %6662 = fmul fast float %6661, %5087
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 3
  %6665 = fcmp fast oeq float %6664, 0.000000e+00
  br i1 %6665, label %8343, label %6666

; <label>:6666                                    ; preds = %6551
  %6667 = extractvalue %dx.types.CBufRet.f32 %6663, 0
  %6668 = extractvalue %dx.types.CBufRet.f32 %6663, 1
  %6669 = extractvalue %dx.types.CBufRet.f32 %6663, 2
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6672 = extractvalue %dx.types.CBufRet.f32 %6670, 1
  %6673 = extractvalue %dx.types.CBufRet.f32 %6670, 2
  %6674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6675 = extractvalue %dx.types.CBufRet.f32 %6674, 0
  %6676 = extractvalue %dx.types.CBufRet.f32 %6674, 1
  %6677 = call float @dx.op.dot3.f32(i32 55, float %6671, float %6672, float %6673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6678 = select i1 %226, float %6675, float %6671
  %6679 = select i1 %226, float %6677, float %6672
  %6680 = select i1 %226, float %6676, float %6673
  %6681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6682 = extractvalue %dx.types.CBufRet.f32 %6681, 2
  %6683 = fmul fast float %6682, %116
  %6684 = fmul fast float %6682, %117
  %6685 = fmul fast float %6682, %118
  %6686 = fadd fast float %6683, %164
  %6687 = fadd fast float %6684, %165
  %6688 = fadd fast float %6685, %166
  %6689 = fcmp fast olt float %6664, 0.000000e+00
  br i1 %6689, label %7785, label %6690

; <label>:6690                                    ; preds = %6666
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6695 = extractvalue %dx.types.CBufRet.f32 %6691, 3
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6700 = extractvalue %dx.types.CBufRet.f32 %6696, 3
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6703 = extractvalue %dx.types.CBufRet.f32 %6701, 1
  %6704 = extractvalue %dx.types.CBufRet.f32 %6701, 2
  %6705 = extractvalue %dx.types.CBufRet.f32 %6701, 3
  %6706 = fmul fast float %6692, %6686
  %6707 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %6693, float %6706)  ; FMad(a,b,c)
  %6708 = call float @dx.op.tertiary.f32(i32 46, float %6688, float %6694, float %6707)  ; FMad(a,b,c)
  %6709 = fadd fast float %6708, %6695
  %6710 = fmul fast float %6697, %6686
  %6711 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %6698, float %6710)  ; FMad(a,b,c)
  %6712 = call float @dx.op.tertiary.f32(i32 46, float %6688, float %6699, float %6711)  ; FMad(a,b,c)
  %6713 = fadd fast float %6712, %6700
  %6714 = fmul fast float %6702, %6686
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %6703, float %6714)  ; FMad(a,b,c)
  %6716 = call float @dx.op.tertiary.f32(i32 46, float %6688, float %6704, float %6715)  ; FMad(a,b,c)
  %6717 = fadd fast float %6716, %6705
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6720 = extractvalue %dx.types.CBufRet.f32 %6718, 1
  %6721 = extractvalue %dx.types.CBufRet.f32 %6718, 3
  %6722 = fmul fast float %6721, %6709
  %6723 = fmul fast float %6721, %6713
  %6724 = fadd fast float %6722, %6719
  %6725 = fadd fast float %6723, %6720
  %6726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6727 = extractvalue %dx.types.CBufRet.f32 %6726, 0
  %6728 = extractvalue %dx.types.CBufRet.f32 %6726, 1
  %6729 = extractvalue %dx.types.CBufRet.f32 %6726, 3
  %6730 = fmul fast float %6729, %6709
  %6731 = fmul fast float %6729, %6713
  %6732 = fadd fast float %6730, %6727
  %6733 = fadd fast float %6731, %6728
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6736 = fsub fast float %6735, %6717
  %6737 = extractvalue %dx.types.CBufRet.f32 %6734, 2
  %6738 = fmul fast float %6736, %6737
  %6739 = fsub fast float 1.000000e+00, %6738
  %6740 = call float @dx.op.unary.f32(i32 7, float %6739)  ; Saturate(value)
  %6741 = extractvalue %dx.types.CBufRet.f32 %6726, 2
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 2
  %6744 = fadd fast float %6743, %6741
  %6745 = fcmp fast ogt float %6744, 0.000000e+00
  br i1 %6745, label %6746, label %6770

; <label>:6746                                    ; preds = %6690
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 0
  %6749 = extractvalue %dx.types.CBufRet.f32 %6747, 1
  %6750 = fsub fast float %6732, %6748
  %6751 = fsub fast float %6733, %6749
  %6752 = fcmp fast olt float %6750, 0.000000e+00
  %6753 = fcmp fast olt float %6751, 0.000000e+00
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6758 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6759 = select i1 %6752, float %6755, float %6757
  %6760 = select i1 %6753, float %6756, float %6758
  %6761 = fmul fast float %6759, %6750
  %6762 = fmul fast float %6760, %6751
  %6763 = call float @dx.op.unary.f32(i32 6, float %6761)  ; FAbs(value)
  %6764 = call float @dx.op.unary.f32(i32 6, float %6762)  ; FAbs(value)
  %6765 = extractvalue %dx.types.CBufRet.f32 %6681, 0
  %6766 = call float @dx.op.binary.f32(i32 35, float %6763, float %6764)  ; FMax(a,b)
  %6767 = fsub fast float %6765, %6766
  %6768 = call float @dx.op.unary.f32(i32 7, float %6767)  ; Saturate(value)
  %6769 = fmul fast float %6768, %6740
  br label %6770

; <label>:6770                                    ; preds = %6746, %6690
  %6771 = phi float [ %6769, %6746 ], [ 0.000000e+00, %6690 ]
  %6772 = extractvalue %dx.types.CBufRet.f32 %6718, 2
  %6773 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6774 = fadd fast float %6773, %6772
  %6775 = fcmp fast ogt float %6774, 0.000000e+00
  %6776 = extractvalue %dx.types.CBufRet.f32 %6681, 0
  br i1 %6775, label %6777, label %6800

; <label>:6777                                    ; preds = %6770
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 0
  %6780 = extractvalue %dx.types.CBufRet.f32 %6778, 1
  %6781 = fsub fast float %6724, %6779
  %6782 = fsub fast float %6725, %6780
  %6783 = fcmp fast olt float %6781, 0.000000e+00
  %6784 = fcmp fast olt float %6782, 0.000000e+00
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.CBufRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.CBufRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.CBufRet.f32 %6785, 3
  %6790 = select i1 %6783, float %6786, float %6788
  %6791 = select i1 %6784, float %6787, float %6789
  %6792 = fmul fast float %6790, %6781
  %6793 = fmul fast float %6791, %6782
  %6794 = call float @dx.op.unary.f32(i32 6, float %6792)  ; FAbs(value)
  %6795 = call float @dx.op.unary.f32(i32 6, float %6793)  ; FAbs(value)
  %6796 = call float @dx.op.binary.f32(i32 35, float %6794, float %6795)  ; FMax(a,b)
  %6797 = fsub fast float %6776, %6796
  %6798 = call float @dx.op.unary.f32(i32 7, float %6797)  ; Saturate(value)
  %6799 = fmul fast float %6798, %6740
  br label %6800

; <label>:6800                                    ; preds = %6777, %6770
  %6801 = phi float [ %6799, %6777 ], [ 0.000000e+00, %6770 ]
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6804 = call float @dx.op.unary.f32(i32 7, float %6803)  ; Saturate(value)
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6808 = fsub fast float %6709, %6806
  %6809 = fsub fast float %6713, %6807
  %6810 = fcmp fast olt float %6808, 0.000000e+00
  %6811 = fcmp fast olt float %6809, 0.000000e+00
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.CBufRet.f32 %6812, 2
  %6816 = extractvalue %dx.types.CBufRet.f32 %6812, 3
  %6817 = select i1 %6810, float %6813, float %6815
  %6818 = select i1 %6811, float %6814, float %6816
  %6819 = fmul fast float %6817, %6808
  %6820 = fmul fast float %6818, %6809
  %6821 = call float @dx.op.unary.f32(i32 6, float %6819)  ; FAbs(value)
  %6822 = call float @dx.op.unary.f32(i32 6, float %6820)  ; FAbs(value)
  %6823 = call float @dx.op.binary.f32(i32 35, float %6821, float %6822)  ; FMax(a,b)
  %6824 = fsub fast float %6776, %6823
  %6825 = call float @dx.op.unary.f32(i32 7, float %6824)  ; Saturate(value)
  %6826 = call float @dx.op.binary.f32(i32 36, float %6825, float %6804)  ; FMin(a,b)
  %6827 = fmul fast float %6826, %6740
  %6828 = fsub fast float %6801, %6827
  %6829 = fsub fast float %6771, %6801
  %6830 = fsub fast float %6829, %6827
  %6831 = call float @dx.op.binary.f32(i32 35, float %6801, float %6771)  ; FMax(a,b)
  %6832 = call float @dx.op.binary.f32(i32 35, float %6827, float %6831)  ; FMax(a,b)
  %6833 = fcmp fast olt float %6832, 1.000000e+00
  br i1 %6833, label %6834, label %7232, !dx.controlflow.hints !103

; <label>:6834                                    ; preds = %6800
  %6835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6836 = extractvalue %dx.types.CBufRet.f32 %6835, 0
  %6837 = fcmp fast une float %6836, 0.000000e+00
  br i1 %6837, label %6838, label %7232, !dx.controlflow.hints !104

; <label>:6838                                    ; preds = %6834
  %6839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6840 = extractvalue %dx.types.CBufRet.f32 %6839, 0
  %6841 = extractvalue %dx.types.CBufRet.f32 %6839, 1
  %6842 = extractvalue %dx.types.CBufRet.f32 %6839, 2
  %6843 = extractvalue %dx.types.CBufRet.f32 %6839, 3
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.CBufRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.CBufRet.f32 %6844, 2
  %6848 = extractvalue %dx.types.CBufRet.f32 %6844, 3
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6851 = extractvalue %dx.types.CBufRet.f32 %6849, 1
  %6852 = extractvalue %dx.types.CBufRet.f32 %6849, 2
  %6853 = extractvalue %dx.types.CBufRet.f32 %6849, 3
  %6854 = fmul fast float %6840, %6686
  %6855 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %6841, float %6854)  ; FMad(a,b,c)
  %6856 = call float @dx.op.tertiary.f32(i32 46, float %6688, float %6842, float %6855)  ; FMad(a,b,c)
  %6857 = fadd fast float %6856, %6843
  %6858 = fmul fast float %6845, %6686
  %6859 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %6846, float %6858)  ; FMad(a,b,c)
  %6860 = call float @dx.op.tertiary.f32(i32 46, float %6688, float %6847, float %6859)  ; FMad(a,b,c)
  %6861 = fadd fast float %6860, %6848
  %6862 = fmul fast float %6850, %6686
  %6863 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %6851, float %6862)  ; FMad(a,b,c)
  %6864 = call float @dx.op.tertiary.f32(i32 46, float %6688, float %6852, float %6863)  ; FMad(a,b,c)
  %6865 = fadd fast float %6864, %6853
  %6866 = fcmp fast oge float %6857, 1.000000e+00
  %6867 = fcmp fast oge float %6861, 1.000000e+00
  %6868 = or i1 %6866, %6867
  %6869 = fcmp fast olt float %6857, 0.000000e+00
  %6870 = fcmp fast olt float %6861, 0.000000e+00
  %6871 = or i1 %6869, %6870
  %6872 = or i1 %6868, %6871
  br i1 %6872, label %7232, label %6873, !dx.controlflow.hints !105

; <label>:6873                                    ; preds = %6838
  %6874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6875 = extractvalue %dx.types.CBufRet.f32 %6874, 0
  %6876 = extractvalue %dx.types.CBufRet.f32 %6874, 1
  %6877 = extractvalue %dx.types.CBufRet.f32 %6874, 2
  %6878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.i32 %6878, 2
  %6880 = uitofp i32 %6879 to float
  %6881 = extractvalue %dx.types.CBufRet.i32 %6878, 3
  %6882 = uitofp i32 %6881 to float
  %6883 = extractvalue %dx.types.CBufRet.f32 %6874, 3
  %6884 = fmul fast float %6883, 2.000000e+00
  %6885 = fsub fast float %6857, %6875
  %6886 = fsub fast float %6861, %6876
  %6887 = fmul fast float %6884, %6885
  %6888 = fmul fast float %6884, %6886
  %6889 = fdiv fast float 1.000000e+00, %6669
  %6890 = fmul fast float %6888, %6889
  %6891 = call float @dx.op.unary.f32(i32 6, float %6890)  ; FAbs(value)
  %6892 = fmul fast float %6877, %6688
  %6893 = fmul fast float %6892, %6884
  %6894 = call float @dx.op.unary.f32(i32 6, float %6893)  ; FAbs(value)
  %6895 = call float @dx.op.unary.f32(i32 6, float %6887)  ; FAbs(value)
  %6896 = call float @dx.op.binary.f32(i32 35, float %6894, float %6891)  ; FMax(a,b)
  %6897 = call float @dx.op.binary.f32(i32 35, float %6895, float %6896)  ; FMax(a,b)
  %6898 = fmul fast float %6897, 2.000000e+00
  %6899 = call float @dx.op.unary.f32(i32 23, float %6898)  ; Log(value)
  %6900 = call float @dx.op.binary.f32(i32 35, float %6899, float %6880)  ; FMax(a,b)
  %6901 = call float @dx.op.unary.f32(i32 22, float %6900)  ; Frc(value)
  %6902 = fadd fast float %6901, 0xBFEA666660000000
  %6903 = fmul fast float %6902, 8.000000e+00
  %6904 = call float @dx.op.unary.f32(i32 7, float %6903)  ; Saturate(value)
  %6905 = call float @dx.op.unary.f32(i32 27, float %6900)  ; Round_ni(value)
  %6906 = fadd fast float %6905, %6904
  %6907 = call float @dx.op.binary.f32(i32 36, float %6906, float %6882)  ; FMin(a,b)
  %6908 = call float @dx.op.unary.f32(i32 27, float %6907)  ; Round_ni(value)
  %6909 = fsub fast float -0.000000e+00, %6908
  %6910 = call float @dx.op.unary.f32(i32 21, float %6909)  ; Exp(value)
  %6911 = fmul fast float %6910, %6884
  %6912 = fmul fast float %6911, %6857
  %6913 = fmul fast float %6911, %6861
  %6914 = fmul fast float %6912, 2.500000e-01
  %6915 = fmul fast float %6913, 2.500000e-01
  %6916 = fadd fast float %6914, 5.000000e-01
  %6917 = fadd fast float %6915, 5.000000e-01
  %6918 = fsub fast float %6882, %6880
  %6919 = fptoui float %6918 to i32
  %6920 = add i32 %6919, 320
  %6921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6920)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.f32 %6921, 0
  %6923 = extractvalue %dx.types.CBufRet.f32 %6921, 1
  %6924 = fcmp fast une float %6907, %6882
  %6925 = fsub fast float %6857, %6922
  %6926 = fsub fast float %6861, %6923
  %6927 = call float @dx.op.unary.f32(i32 6, float %6925)  ; FAbs(value)
  %6928 = call float @dx.op.unary.f32(i32 6, float %6926)  ; FAbs(value)
  %6929 = fmul fast float %6927, %6911
  %6930 = fmul fast float %6928, %6911
  %6931 = fcmp fast olt float %6929, 1.000000e+00
  %6932 = fcmp fast olt float %6930, 1.000000e+00
  %6933 = and i1 %6931, %6932
  %6934 = or i1 %6924, %6933
  br i1 %6934, label %6935, label %7232, !dx.controlflow.hints !106

; <label>:6935                                    ; preds = %6873
  %6936 = fmul fast float %6913, 5.000000e-01
  %6937 = fmul fast float %6912, 5.000000e-01
  %6938 = fadd fast float %6936, 5.000000e-01
  %6939 = fadd fast float %6937, 5.000000e-01
  %6940 = sitofp i32 %6879 to float
  %6941 = fsub fast float %6907, %6940
  %6942 = call float @dx.op.unary.f32(i32 27, float %6941)  ; Round_ni(value)
  %6943 = call float @dx.op.unary.f32(i32 22, float %6907)  ; Frc(value)
  %6944 = call float @dx.op.unary.f32(i32 22, float %6939)  ; Frc(value)
  %6945 = call float @dx.op.unary.f32(i32 22, float %6938)  ; Frc(value)
  %6946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6944, float %6945, float %6942, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6947 = extractvalue %dx.types.ResRet.f32 %6946, 0
  %6948 = extractvalue %dx.types.ResRet.f32 %6946, 1
  %6949 = extractvalue %dx.types.ResRet.f32 %6946, 2
  %6950 = extractvalue %dx.types.ResRet.f32 %6946, 3
  %6951 = fcmp fast ogt float %6943, 0.000000e+00
  br i1 %6951, label %6952, label %6973, !dx.controlflow.hints !107

; <label>:6952                                    ; preds = %6935
  %6953 = fadd fast float %6942, 1.000000e+00
  %6954 = call float @dx.op.unary.f32(i32 22, float %6916)  ; Frc(value)
  %6955 = call float @dx.op.unary.f32(i32 22, float %6917)  ; Frc(value)
  %6956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6954, float %6955, float %6953, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6957 = extractvalue %dx.types.ResRet.f32 %6956, 0
  %6958 = extractvalue %dx.types.ResRet.f32 %6956, 1
  %6959 = extractvalue %dx.types.ResRet.f32 %6956, 2
  %6960 = extractvalue %dx.types.ResRet.f32 %6956, 3
  %6961 = fsub fast float %6957, %6947
  %6962 = fsub fast float %6958, %6948
  %6963 = fsub fast float %6959, %6949
  %6964 = fsub fast float %6960, %6950
  %6965 = fmul fast float %6961, %6943
  %6966 = fmul fast float %6962, %6943
  %6967 = fmul fast float %6963, %6943
  %6968 = fmul fast float %6964, %6943
  %6969 = fadd fast float %6965, %6947
  %6970 = fadd fast float %6966, %6948
  %6971 = fadd fast float %6967, %6949
  %6972 = fadd fast float %6968, %6950
  br label %6973

; <label>:6973                                    ; preds = %6952, %6935
  %6974 = phi float [ %6969, %6952 ], [ %6947, %6935 ]
  %6975 = phi float [ %6970, %6952 ], [ %6948, %6935 ]
  %6976 = phi float [ %6971, %6952 ], [ %6949, %6935 ]
  %6977 = phi float [ %6972, %6952 ], [ %6950, %6935 ]
  %6978 = fadd fast float %6974, -5.000000e-01
  %6979 = fadd fast float %6976, -5.000000e-01
  %6980 = fmul fast float %6978, 0xBFD5555560000000
  %6981 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6979, float %6980)  ; FMad(a,b,c)
  %6982 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6975, float 0.000000e+00)  ; FMad(a,b,c)
  %6983 = fadd fast float %6982, %6977
  %6984 = fmul fast float %6978, -7.500000e-01
  %6985 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6979, float %6984)  ; FMad(a,b,c)
  %6986 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6975, float 0.000000e+00)  ; FMad(a,b,c)
  %6987 = fadd fast float %6986, %6977
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6991 = extractvalue %dx.types.CBufRet.f32 %6990, 0
  %6992 = extractvalue %dx.types.CBufRet.f32 %6990, 1
  %6993 = extractvalue %dx.types.CBufRet.f32 %6990, 2
  %6994 = extractvalue %dx.types.CBufRet.f32 %6990, 3
  %6995 = fsub fast float %6991, %6981
  %6996 = fsub fast float %6992, %6983
  %6997 = fsub fast float %6993, %6985
  %6998 = fsub fast float %6994, %6987
  %6999 = fmul fast float %6995, %6989
  %7000 = fmul fast float %6996, %6989
  %7001 = fmul fast float %6997, %6989
  %7002 = fmul fast float %6998, %6989
  %7003 = fadd fast float %6999, %6981
  %7004 = fadd fast float %7000, %6983
  %7005 = fadd fast float %7001, %6985
  %7006 = fadd fast float %7002, %6987
  %7007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7008 = extractvalue %dx.types.ResRet.i32 %7007, 0
  %7009 = and i32 %7008, 536870911
  %7010 = uitofp i32 %7009 to float
  %7011 = fmul fast float %7010, %6857
  %7012 = fmul fast float %7010, %6861
  %7013 = fptoui float %7011 to i32
  %7014 = fptoui float %7012 to i32
  %7015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7016 = extractvalue %dx.types.ResRet.i32 %7015, 0
  %7017 = and i32 %7016, 31
  %7018 = lshr i32 %7013, %7017
  %7019 = lshr i32 %7014, %7017
  %7020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7021 = extractvalue %dx.types.ResRet.i32 %7020, 0
  %7022 = and i32 %7021, 31
  %7023 = shl i32 1, %7022
  %7024 = call i32 @dx.op.binary.i32(i32 40, i32 %7023, i32 4)  ; UMin(a,b)
  %7025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7026 = extractvalue %dx.types.ResRet.i32 %7025, 0
  %7027 = extractvalue %dx.types.ResRet.i32 %7025, 1
  %7028 = icmp eq i32 %7024, 0
  br i1 %7028, label %7070, label %7029

; <label>:7029                                    ; preds = %6973
  br label %7030

; <label>:7030                                    ; preds = %7058, %7029
  %7031 = phi i32 [ %7061, %7058 ], [ 0, %7029 ]
  %7032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7033 = extractvalue %dx.types.ResRet.i32 %7032, 0
  %7034 = lshr i32 %7033, 16
  %7035 = and i32 %7034, 31
  %7036 = shl i32 %7019, %7035
  %7037 = add i32 %7036, %7018
  %7038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7039 = extractvalue %dx.types.ResRet.i32 %7038, 0
  %7040 = and i32 %7039, 31
  %7041 = shl i32 %7037, %7040
  %7042 = add i32 %7041, %7031
  %7043 = shl i32 %7042, 2
  %7044 = add i32 %7043, 32
  %7045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7044, i32 undef)  ; BufferLoad(srv,index,wot)
  %7046 = extractvalue %dx.types.ResRet.i32 %7045, 0
  %7047 = icmp slt i32 %7046, 0
  %7048 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7031
  %7049 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7031
  %7050 = bitcast float* %7048 to i32*
  %7051 = bitcast float* %7049 to i32*
  br i1 %7047, label %7052, label %7058

; <label>:7052                                    ; preds = %7030
  %7053 = and i32 %7046, 1073741823
  %7054 = add nuw nsw i32 %7053, 20
  %7055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7054, i32 undef)  ; BufferLoad(srv,index,wot)
  %7056 = extractvalue %dx.types.ResRet.i32 %7055, 0
  %7057 = extractvalue %dx.types.ResRet.i32 %7055, 1
  br label %7058

; <label>:7058                                    ; preds = %7052, %7030
  %7059 = phi i32 [ %7056, %7052 ], [ %7026, %7030 ]
  %7060 = phi i32 [ %7057, %7052 ], [ %7027, %7030 ]
  store i32 %7059, i32* %7050, align 4
  store i32 %7060, i32* %7051, align 4
  %7061 = add nuw i32 %7031, 1
  %7062 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7063 = extractvalue %dx.types.CBufRet.i32 %7062, 2
  %7064 = icmp eq i32 %7063, 0
  %7065 = icmp ugt i32 %7046, -1073741825
  %7066 = and i1 %7065, %7064
  %7067 = icmp ult i32 %7061, %7024
  %7068 = and i1 %7066, %7067
  br i1 %7068, label %7030, label %7069

; <label>:7069                                    ; preds = %7058
  br label %7070

; <label>:7070                                    ; preds = %7069, %6973
  %7071 = phi i32 [ 0, %6973 ], [ %7061, %7069 ]
  %7072 = extractvalue %dx.types.CBufRet.f32 %6835, 2
  %7073 = fptoui float %7072 to i32
  %7074 = icmp eq i32 %7073, 0
  br i1 %7074, label %7126, label %7075

; <label>:7075                                    ; preds = %7070
  br label %7076

; <label>:7076                                    ; preds = %7121, %7075
  %7077 = phi i32 [ %7122, %7121 ], [ %7071, %7075 ]
  %7078 = phi i32 [ %7123, %7121 ], [ 0, %7075 ]
  %7079 = lshr i32 %7078, 2
  %7080 = and i32 %7078, 3
  %7081 = add nuw nsw i32 %7079, 83
  %7082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7081)  ; CBufferLoadLegacy(handle,regIndex)
  %7083 = extractvalue %dx.types.CBufRet.i32 %7082, 0
  %7084 = extractvalue %dx.types.CBufRet.i32 %7082, 1
  %7085 = extractvalue %dx.types.CBufRet.i32 %7082, 2
  %7086 = extractvalue %dx.types.CBufRet.i32 %7082, 3
  %7087 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7083, i32* %7087, align 4
  %7088 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7084, i32* %7088, align 4
  %7089 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7085, i32* %7089, align 4
  %7090 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7086, i32* %7090, align 4
  %7091 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7080
  %7092 = load i32, i32* %7091, align 4, !tbaa !108, !noalias !112
  %7093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7094 = extractvalue %dx.types.ResRet.i32 %7093, 0
  %7095 = lshr i32 %7094, 16
  %7096 = and i32 %7095, 31
  %7097 = shl i32 %7019, %7096
  %7098 = add i32 %7097, %7018
  %7099 = shl i32 %7098, 2
  %7100 = add i32 %7099, %7092
  %7101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7100, i32 undef)  ; BufferLoad(srv,index,wot)
  %7102 = extractvalue %dx.types.ResRet.i32 %7101, 0
  %7103 = icmp eq i32 %7102, 0
  br i1 %7103, label %7121, label %7104

; <label>:7104                                    ; preds = %7076
  %7105 = icmp slt i32 %7102, 0
  %7106 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7077
  %7107 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7077
  %7108 = bitcast float* %7106 to i32*
  %7109 = bitcast float* %7107 to i32*
  br i1 %7105, label %7110, label %7117

; <label>:7110                                    ; preds = %7104
  %7111 = and i32 %7102, 1073741823
  %7112 = add i32 %7092, 20
  %7113 = add i32 %7112, %7111
  %7114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7113, i32 undef)  ; BufferLoad(srv,index,wot)
  %7115 = extractvalue %dx.types.ResRet.i32 %7114, 0
  %7116 = extractvalue %dx.types.ResRet.i32 %7114, 1
  br label %7117

; <label>:7117                                    ; preds = %7110, %7104
  %7118 = phi i32 [ %7115, %7110 ], [ %7026, %7104 ]
  %7119 = phi i32 [ %7116, %7110 ], [ %7027, %7104 ]
  store i32 %7118, i32* %7108, align 4
  store i32 %7119, i32* %7109, align 4
  %7120 = add i32 %7077, 1
  br label %7121

; <label>:7121                                    ; preds = %7117, %7076
  %7122 = phi i32 [ %7077, %7076 ], [ %7120, %7117 ]
  %7123 = add nuw i32 %7078, 1
  %7124 = icmp eq i32 %7123, %7073
  br i1 %7124, label %7125, label %7076

; <label>:7125                                    ; preds = %7121
  br label %7126

; <label>:7126                                    ; preds = %7125, %7070
  %7127 = phi i32 [ %7071, %7070 ], [ %7122, %7125 ]
  %7128 = icmp eq i32 %7127, 1
  %7129 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %7130 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %7128, label %7131, label %7134

; <label>:7131                                    ; preds = %7126
  %7132 = load float, float* %7129, align 4
  %7133 = load float, float* %7130, align 4
  br label %7161

; <label>:7134                                    ; preds = %7126
  %7135 = load float, float* %7129, align 4
  %7136 = load float, float* %7130, align 4
  %7137 = fdiv fast float 1.000000e+00, %7136
  %7138 = fsub fast float %7135, %7137
  %7139 = icmp ugt i32 %7127, 1
  br i1 %7139, label %7140, label %7156

; <label>:7140                                    ; preds = %7134
  br label %7141

; <label>:7141                                    ; preds = %7141, %7140
  %7142 = phi float [ %7151, %7141 ], [ %7138, %7140 ]
  %7143 = phi float [ %7152, %7141 ], [ %7135, %7140 ]
  %7144 = phi i32 [ %7153, %7141 ], [ 1, %7140 ]
  %7145 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7144
  %7146 = load float, float* %7145, align 4
  %7147 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7144
  %7148 = load float, float* %7147, align 4
  %7149 = fdiv fast float 1.000000e+00, %7148
  %7150 = fsub fast float %7146, %7149
  %7151 = call float @dx.op.binary.f32(i32 36, float %7142, float %7150)  ; FMin(a,b)
  %7152 = call float @dx.op.binary.f32(i32 35, float %7143, float %7146)  ; FMax(a,b)
  %7153 = add nuw i32 %7144, 1
  %7154 = icmp eq i32 %7153, %7127
  br i1 %7154, label %7155, label %7141

; <label>:7155                                    ; preds = %7141
  br label %7156

; <label>:7156                                    ; preds = %7155, %7134
  %7157 = phi float [ %7138, %7134 ], [ %7151, %7155 ]
  %7158 = phi float [ %7135, %7134 ], [ %7152, %7155 ]
  %7159 = fsub fast float %7158, %7157
  %7160 = fdiv fast float 1.000000e+00, %7159
  br label %7161

; <label>:7161                                    ; preds = %7156, %7131
  %7162 = phi float [ %7132, %7131 ], [ %7158, %7156 ]
  %7163 = phi float [ %7133, %7131 ], [ %7160, %7156 ]
  %7164 = fadd fast float %6865, %7162
  %7165 = fmul fast float %7164, %7163
  %7166 = call float @dx.op.unary.f32(i32 7, float %7165)  ; Saturate(value)
  %7167 = fmul fast float %7166, 2.000000e+00
  %7168 = fsub fast float 1.000000e+00, %7167
  %7169 = fmul fast float %7003, %7003
  %7170 = fsub fast float %7004, %7169
  %7171 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7170)  ; FMax(a,b)
  %7172 = fdiv fast float 1.000000e+00, %7171
  %7173 = fmul fast float %7004, %7003
  %7174 = fsub fast float %7005, %7173
  %7175 = fsub fast float %7168, %7003
  %7176 = fmul fast float %7168, %7168
  %7177 = fsub fast float %7176, %7004
  %7178 = fmul fast float %7172, %7174
  %7179 = fmul fast float %7178, %7175
  %7180 = fsub fast float %7177, %7179
  %7181 = fmul fast float %7004, %7004
  %7182 = fsub fast float %7006, %7181
  %7183 = fmul fast float %7174, %7174
  %7184 = fmul fast float %7183, %7172
  %7185 = fsub fast float %7182, %7184
  %7186 = fdiv fast float %7180, %7185
  %7187 = fmul fast float %7186, %7174
  %7188 = fsub fast float %7175, %7187
  %7189 = fmul fast float %7188, %7172
  %7190 = fmul fast float %7189, %7003
  %7191 = fsub fast float 1.000000e+00, %7190
  %7192 = fmul fast float %7186, %7004
  %7193 = fsub fast float %7191, %7192
  %7194 = fmul fast float %7189, %7189
  %7195 = fmul fast float %7186, 4.000000e+00
  %7196 = fmul fast float %7195, %7193
  %7197 = fsub fast float %7194, %7196
  %7198 = call float @dx.op.unary.f32(i32 24, float %7197)  ; Sqrt(value)
  %7199 = fcmp fast oge float %7189, 0.000000e+00
  %7200 = fsub fast float -0.000000e+00, %7198
  %7201 = select i1 %7199, float %7200, float %7198
  %7202 = fsub fast float %7201, %7189
  %7203 = fdiv fast float %7202, %7186
  %7204 = fdiv fast float %7193, %7202
  %7205 = fmul fast float %7203, 5.000000e-01
  %7206 = fmul fast float %7204, 2.000000e+00
  %7207 = select i1 %7199, float %7205, float %7206
  %7208 = select i1 %7199, float %7206, float %7205
  %7209 = call float @dx.op.binary.f32(i32 35, float %7207, float %7208)  ; FMax(a,b)
  %7210 = call float @dx.op.binary.f32(i32 36, float %7207, float %7208)  ; FMin(a,b)
  %7211 = fcmp fast ogt float %7168, %7209
  %7212 = fsub fast float %7168, %7210
  %7213 = fsub fast float %7168, %7209
  %7214 = fsub fast float %7209, %7210
  %7215 = select i1 %7211, float %7213, float %7214
  %7216 = fmul float %7212, %7215
  %7217 = select i1 %7211, float %7210, float %7168
  %7218 = fcmp fast ogt float %7168, %7210
  %7219 = fmul fast float %7217, %7209
  %7220 = fadd fast float %7217, %7209
  %7221 = fmul fast float %7220, %7003
  %7222 = fadd fast float %7219, %7004
  %7223 = fsub fast float %7222, %7221
  %7224 = fdiv fast float %7223, %7216
  %7225 = select i1 %7218, float %7224, float 0.000000e+00
  %7226 = fsub fast float 1.000000e+00, %7225
  %7227 = select i1 %7211, float %7226, float %7225
  %7228 = call float @dx.op.unary.f32(i32 7, float %7227)  ; Saturate(value)
  %7229 = extractvalue %dx.types.CBufRet.f32 %6988, 3
  %7230 = fmul fast float %7229, %7228
  %7231 = fsub fast float 1.000000e+00, %7230
  br label %7232

; <label>:7232                                    ; preds = %7161, %6873, %6838, %6834, %6800
  %7233 = phi float [ 1.000000e+00, %6800 ], [ %7231, %7161 ], [ 1.000000e+00, %6838 ], [ 1.000000e+00, %6873 ], [ 1.000000e+00, %6834 ]
  %7234 = fcmp fast ogt float %6830, 0.000000e+00
  br i1 %7234, label %7235, label %7397, !dx.controlflow.hints !121

; <label>:7235                                    ; preds = %7232
  %7236 = fadd fast float %6743, %6717
  %7237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7238 = extractvalue %dx.types.CBufRet.f32 %7237, 2
  %7239 = extractvalue %dx.types.CBufRet.f32 %7237, 3
  %7240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7241 = extractvalue %dx.types.CBufRet.f32 %7240, 2
  %7242 = call float @dx.op.binary.f32(i32 35, float %7236, float 0.000000e+00)  ; FMax(a,b)
  %7243 = fadd fast float %7242, 0x3F10000000000000
  %7244 = fcmp fast oeq float %7241, 0.000000e+00
  br i1 %7244, label %7245, label %7312

; <label>:7245                                    ; preds = %7235
  %7246 = extractvalue %dx.types.CBufRet.f32 %7237, 1
  %7247 = extractvalue %dx.types.CBufRet.f32 %7237, 0
  %7248 = fmul fast float %7247, %6732
  %7249 = fmul fast float %7246, %6733
  %7250 = fadd fast float %7248, 5.000000e-01
  %7251 = call float @dx.op.unary.f32(i32 27, float %7250)  ; Round_ni(value)
  %7252 = fadd fast float %7249, 5.000000e-01
  %7253 = call float @dx.op.unary.f32(i32 27, float %7252)  ; Round_ni(value)
  %7254 = fsub fast float %7250, %7251
  %7255 = fsub fast float %7252, %7253
  %7256 = fadd fast float %7251, -5.000000e-01
  %7257 = fadd fast float %7253, -5.000000e-01
  %7258 = fmul fast float %7254, 2.000000e+00
  %7259 = fsub fast float 3.000000e+00, %7258
  %7260 = fadd fast float %7258, 1.000000e+00
  %7261 = fsub fast float 2.000000e+00, %7254
  %7262 = bitcast float %7259 to i32
  %7263 = sub nsw i32 2129859010, %7262
  %7264 = bitcast i32 %7263 to float
  %7265 = fmul fast float %7264, %7261
  %7266 = fadd fast float %7265, -1.000000e+00
  %7267 = bitcast float %7260 to i32
  %7268 = sub nsw i32 2129859010, %7267
  %7269 = bitcast i32 %7268 to float
  %7270 = fmul fast float %7269, %7254
  %7271 = fadd fast float %7270, 1.000000e+00
  %7272 = fmul fast float %7255, 2.000000e+00
  %7273 = fsub fast float 3.000000e+00, %7272
  %7274 = fadd fast float %7272, 1.000000e+00
  %7275 = fsub fast float 2.000000e+00, %7255
  %7276 = bitcast float %7273 to i32
  %7277 = sub nsw i32 2129859010, %7276
  %7278 = bitcast i32 %7277 to float
  %7279 = fmul fast float %7278, %7275
  %7280 = fadd fast float %7279, -1.000000e+00
  %7281 = bitcast float %7274 to i32
  %7282 = sub nsw i32 2129859010, %7281
  %7283 = bitcast i32 %7282 to float
  %7284 = fmul fast float %7283, %7255
  %7285 = fadd fast float %7284, 1.000000e+00
  %7286 = fadd fast float %7266, %7256
  %7287 = fmul fast float %7286, %7238
  %7288 = fadd fast float %7280, %7257
  %7289 = fmul fast float %7288, %7239
  %7290 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7287, float %7289, float undef, float undef, i32 0, i32 0, i32 undef, float %7243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7291 = extractvalue %dx.types.ResRet.f32 %7290, 0
  %7292 = fmul fast float %7291, %7259
  %7293 = fadd fast float %7271, %7256
  %7294 = fmul fast float %7293, %7238
  %7295 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7294, float %7289, float undef, float undef, i32 0, i32 0, i32 undef, float %7243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7296 = extractvalue %dx.types.ResRet.f32 %7295, 0
  %7297 = fmul fast float %7296, %7260
  %7298 = fadd fast float %7285, %7257
  %7299 = fmul fast float %7298, %7239
  %7300 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7287, float %7299, float undef, float undef, i32 0, i32 0, i32 undef, float %7243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7301 = extractvalue %dx.types.ResRet.f32 %7300, 0
  %7302 = fmul fast float %7301, %7259
  %7303 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7294, float %7299, float undef, float undef, i32 0, i32 0, i32 undef, float %7243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7304 = extractvalue %dx.types.ResRet.f32 %7303, 0
  %7305 = fmul fast float %7304, %7260
  %7306 = fadd fast float %7305, %7302
  %7307 = fmul fast float %7306, %7274
  %7308 = fadd fast float %7297, %7292
  %7309 = fmul fast float %7308, %7273
  %7310 = fadd fast float %7309, %7307
  %7311 = fmul fast float %7310, 6.250000e-02
  br label %7397

; <label>:7312                                    ; preds = %7235
  %7313 = fmul fast float %237, 0x401921FB60000000
  %7314 = call float @dx.op.unary.f32(i32 13, float %7313)  ; Sin(value)
  %7315 = call float @dx.op.unary.f32(i32 12, float %7313)  ; Cos(value)
  %7316 = fsub fast float -0.000000e+00, %7314
  br label %7317

; <label>:7317                                    ; preds = %7366, %7312
  %7318 = phi float [ 0.000000e+00, %7312 ], [ %7361, %7366 ]
  %7319 = phi float [ 0.000000e+00, %7312 ], [ %7363, %7366 ]
  %7320 = phi i32 [ 0, %7312 ], [ %7367, %7366 ]
  %7321 = mul i32 %7320, 2
  %7322 = add i32 0, %7321
  %7323 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7322
  %7324 = load float, float* %7323, align 4
  %7325 = mul i32 %7320, 2
  %7326 = add i32 1, %7325
  %7327 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7326
  %7328 = load float, float* %7327, align 4
  %7329 = fmul fast float %7324, %7315
  %7330 = call float @dx.op.tertiary.f32(i32 46, float %7328, float %7316, float %7329)  ; FMad(a,b,c)
  %7331 = fmul fast float %7324, %7314
  %7332 = call float @dx.op.tertiary.f32(i32 46, float %7328, float %7315, float %7331)  ; FMad(a,b,c)
  %7333 = fmul fast float %7330, %7241
  %7334 = fmul fast float %7332, %7241
  %7335 = fadd fast float %7333, %6732
  %7336 = fadd fast float %7334, %6733
  %7337 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7335, float %7336, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7338 = extractvalue %dx.types.ResRet.f32 %7337, 0
  %7339 = extractvalue %dx.types.ResRet.f32 %7337, 1
  %7340 = extractvalue %dx.types.ResRet.f32 %7337, 2
  %7341 = extractvalue %dx.types.ResRet.f32 %7337, 3
  %7342 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7338, float* %7342, align 4
  %7343 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7339, float* %7343, align 4
  %7344 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7340, float* %7344, align 4
  %7345 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7341, float* %7345, align 4
  %7346 = fsub fast float %7338, %7243
  %7347 = fcmp fast olt float %7346, 0.000000e+00
  %7348 = select i1 %7347, float 0.000000e+00, float 1.000000e+00
  %7349 = fadd fast float %7348, %7318
  %7350 = fmul fast float %7348, %7346
  %7351 = fadd fast float %7350, %7319
  br label %7352

; <label>:7352                                    ; preds = %7352, %7317
  %7353 = phi i32 [ 1, %7317 ], [ %7364, %7352 ]
  %7354 = phi float [ %7351, %7317 ], [ %7363, %7352 ]
  %7355 = phi float [ %7349, %7317 ], [ %7361, %7352 ]
  %7356 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7353
  %7357 = load float, float* %7356, align 4, !tbaa !122, !noalias !112
  %7358 = fsub fast float %7357, %7243
  %7359 = fcmp fast olt float %7358, 0.000000e+00
  %7360 = select i1 %7359, float 0.000000e+00, float 1.000000e+00
  %7361 = fadd fast float %7360, %7355
  %7362 = fmul fast float %7360, %7358
  %7363 = fadd fast float %7362, %7354
  %7364 = add nuw nsw i32 %7353, 1
  %7365 = icmp eq i32 %7364, 4
  br i1 %7365, label %7366, label %7352, !llvm.loop !124

; <label>:7366                                    ; preds = %7352
  %7367 = add nuw nsw i32 %7320, 1
  %7368 = icmp eq i32 %7367, 8
  br i1 %7368, label %7369, label %7317, !llvm.loop !125

; <label>:7369                                    ; preds = %7366
  %7370 = fdiv fast float 1.000000e+00, %7361
  %7371 = fmul fast float %7370, %7363
  %7372 = fdiv fast float 1.000000e+00, %7243
  %7373 = fmul fast float %7371, %7372
  %7374 = call float @dx.op.unary.f32(i32 7, float %7373)  ; Saturate(value)
  %7375 = call float @dx.op.binary.f32(i32 35, float %7374, float 0.000000e+00)  ; FMax(a,b)
  %7376 = fmul fast float %7361, 3.125000e-02
  %7377 = call float @dx.op.unary.f32(i32 7, float %7376)  ; Saturate(value)
  %7378 = fmul fast float %7377, 2.000000e+00
  %7379 = fadd fast float %7378, -1.000000e+00
  %7380 = fcmp fast ogt float %7379, 0.000000e+00
  %7381 = fcmp fast olt float %7379, 0.000000e+00
  %7382 = zext i1 %7380 to i32
  %7383 = zext i1 %7381 to i32
  %7384 = sub nsw i32 %7382, %7383
  %7385 = sitofp i32 %7384 to float
  %7386 = fmul fast float %7385, %7379
  %7387 = fsub fast float 1.000000e+00, %7386
  %7388 = fmul fast float %7387, %7387
  %7389 = fmul fast float %7388, %7387
  %7390 = fsub fast float %7387, %7389
  %7391 = fmul fast float %7390, %7375
  %7392 = fsub fast float 1.000000e+00, %7389
  %7393 = fsub fast float %7392, %7391
  %7394 = fmul fast float %7385, 5.000000e-01
  %7395 = fmul fast float %7394, %7393
  %7396 = fsub fast float 5.000000e-01, %7395
  br label %7397

; <label>:7397                                    ; preds = %7369, %7245, %7232
  %7398 = phi float [ 1.000000e+00, %7232 ], [ %7311, %7245 ], [ %7396, %7369 ]
  %7399 = fcmp fast ogt float %6828, 0.000000e+00
  br i1 %7399, label %7400, label %7564, !dx.controlflow.hints !126

; <label>:7400                                    ; preds = %7397
  %7401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7401, 1
  %7403 = fadd fast float %7402, %6717
  %7404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7405 = extractvalue %dx.types.CBufRet.f32 %7404, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7404, 3
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 1
  %7409 = call float @dx.op.binary.f32(i32 35, float %7403, float 0.000000e+00)  ; FMax(a,b)
  %7410 = fadd fast float %7409, 0x3F10000000000000
  %7411 = fcmp fast oeq float %7408, 0.000000e+00
  br i1 %7411, label %7412, label %7479

; <label>:7412                                    ; preds = %7400
  %7413 = extractvalue %dx.types.CBufRet.f32 %7404, 1
  %7414 = extractvalue %dx.types.CBufRet.f32 %7404, 0
  %7415 = fmul fast float %7414, %6724
  %7416 = fmul fast float %7413, %6725
  %7417 = fadd fast float %7415, 5.000000e-01
  %7418 = call float @dx.op.unary.f32(i32 27, float %7417)  ; Round_ni(value)
  %7419 = fadd fast float %7416, 5.000000e-01
  %7420 = call float @dx.op.unary.f32(i32 27, float %7419)  ; Round_ni(value)
  %7421 = fsub fast float %7417, %7418
  %7422 = fsub fast float %7419, %7420
  %7423 = fadd fast float %7418, -5.000000e-01
  %7424 = fadd fast float %7420, -5.000000e-01
  %7425 = fmul fast float %7421, 2.000000e+00
  %7426 = fsub fast float 3.000000e+00, %7425
  %7427 = fadd fast float %7425, 1.000000e+00
  %7428 = fsub fast float 2.000000e+00, %7421
  %7429 = bitcast float %7426 to i32
  %7430 = sub nsw i32 2129859010, %7429
  %7431 = bitcast i32 %7430 to float
  %7432 = fmul fast float %7431, %7428
  %7433 = fadd fast float %7432, -1.000000e+00
  %7434 = bitcast float %7427 to i32
  %7435 = sub nsw i32 2129859010, %7434
  %7436 = bitcast i32 %7435 to float
  %7437 = fmul fast float %7436, %7421
  %7438 = fadd fast float %7437, 1.000000e+00
  %7439 = fmul fast float %7422, 2.000000e+00
  %7440 = fsub fast float 3.000000e+00, %7439
  %7441 = fadd fast float %7439, 1.000000e+00
  %7442 = fsub fast float 2.000000e+00, %7422
  %7443 = bitcast float %7440 to i32
  %7444 = sub nsw i32 2129859010, %7443
  %7445 = bitcast i32 %7444 to float
  %7446 = fmul fast float %7445, %7442
  %7447 = fadd fast float %7446, -1.000000e+00
  %7448 = bitcast float %7441 to i32
  %7449 = sub nsw i32 2129859010, %7448
  %7450 = bitcast i32 %7449 to float
  %7451 = fmul fast float %7450, %7422
  %7452 = fadd fast float %7451, 1.000000e+00
  %7453 = fadd fast float %7433, %7423
  %7454 = fmul fast float %7453, %7405
  %7455 = fadd fast float %7447, %7424
  %7456 = fmul fast float %7455, %7406
  %7457 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7454, float %7456, float undef, float undef, i32 0, i32 0, i32 undef, float %7410)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7458 = extractvalue %dx.types.ResRet.f32 %7457, 0
  %7459 = fmul fast float %7458, %7426
  %7460 = fadd fast float %7438, %7423
  %7461 = fmul fast float %7460, %7405
  %7462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7461, float %7456, float undef, float undef, i32 0, i32 0, i32 undef, float %7410)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7463 = extractvalue %dx.types.ResRet.f32 %7462, 0
  %7464 = fmul fast float %7463, %7427
  %7465 = fadd fast float %7452, %7424
  %7466 = fmul fast float %7465, %7406
  %7467 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7454, float %7466, float undef, float undef, i32 0, i32 0, i32 undef, float %7410)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7468 = extractvalue %dx.types.ResRet.f32 %7467, 0
  %7469 = fmul fast float %7468, %7426
  %7470 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7461, float %7466, float undef, float undef, i32 0, i32 0, i32 undef, float %7410)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7471 = extractvalue %dx.types.ResRet.f32 %7470, 0
  %7472 = fmul fast float %7471, %7427
  %7473 = fadd fast float %7472, %7469
  %7474 = fmul fast float %7473, %7441
  %7475 = fadd fast float %7464, %7459
  %7476 = fmul fast float %7475, %7440
  %7477 = fadd fast float %7476, %7474
  %7478 = fmul fast float %7477, 6.250000e-02
  br label %7564

; <label>:7479                                    ; preds = %7400
  %7480 = fmul fast float %237, 0x401921FB60000000
  %7481 = call float @dx.op.unary.f32(i32 13, float %7480)  ; Sin(value)
  %7482 = call float @dx.op.unary.f32(i32 12, float %7480)  ; Cos(value)
  %7483 = fsub fast float -0.000000e+00, %7481
  br label %7484

; <label>:7484                                    ; preds = %7533, %7479
  %7485 = phi float [ 0.000000e+00, %7479 ], [ %7528, %7533 ]
  %7486 = phi float [ 0.000000e+00, %7479 ], [ %7530, %7533 ]
  %7487 = phi i32 [ 0, %7479 ], [ %7534, %7533 ]
  %7488 = mul i32 %7487, 2
  %7489 = add i32 0, %7488
  %7490 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7489
  %7491 = load float, float* %7490, align 4
  %7492 = mul i32 %7487, 2
  %7493 = add i32 1, %7492
  %7494 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7493
  %7495 = load float, float* %7494, align 4
  %7496 = fmul fast float %7491, %7482
  %7497 = call float @dx.op.tertiary.f32(i32 46, float %7495, float %7483, float %7496)  ; FMad(a,b,c)
  %7498 = fmul fast float %7491, %7481
  %7499 = call float @dx.op.tertiary.f32(i32 46, float %7495, float %7482, float %7498)  ; FMad(a,b,c)
  %7500 = fmul fast float %7497, %7408
  %7501 = fmul fast float %7499, %7408
  %7502 = fadd fast float %7500, %6724
  %7503 = fadd fast float %7501, %6725
  %7504 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7502, float %7503, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = extractvalue %dx.types.ResRet.f32 %7504, 1
  %7507 = extractvalue %dx.types.ResRet.f32 %7504, 2
  %7508 = extractvalue %dx.types.ResRet.f32 %7504, 3
  %7509 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7505, float* %7509, align 4
  %7510 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7506, float* %7510, align 4
  %7511 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7507, float* %7511, align 4
  %7512 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7508, float* %7512, align 4
  %7513 = fsub fast float %7505, %7410
  %7514 = fcmp fast olt float %7513, 0.000000e+00
  %7515 = select i1 %7514, float 0.000000e+00, float 1.000000e+00
  %7516 = fadd fast float %7515, %7485
  %7517 = fmul fast float %7515, %7513
  %7518 = fadd fast float %7517, %7486
  br label %7519

; <label>:7519                                    ; preds = %7519, %7484
  %7520 = phi i32 [ 1, %7484 ], [ %7531, %7519 ]
  %7521 = phi float [ %7518, %7484 ], [ %7530, %7519 ]
  %7522 = phi float [ %7516, %7484 ], [ %7528, %7519 ]
  %7523 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7520
  %7524 = load float, float* %7523, align 4, !tbaa !122, !noalias !112
  %7525 = fsub fast float %7524, %7410
  %7526 = fcmp fast olt float %7525, 0.000000e+00
  %7527 = select i1 %7526, float 0.000000e+00, float 1.000000e+00
  %7528 = fadd fast float %7527, %7522
  %7529 = fmul fast float %7527, %7525
  %7530 = fadd fast float %7529, %7521
  %7531 = add nuw nsw i32 %7520, 1
  %7532 = icmp eq i32 %7531, 4
  br i1 %7532, label %7533, label %7519, !llvm.loop !124

; <label>:7533                                    ; preds = %7519
  %7534 = add nuw nsw i32 %7487, 1
  %7535 = icmp eq i32 %7534, 8
  br i1 %7535, label %7536, label %7484, !llvm.loop !125

; <label>:7536                                    ; preds = %7533
  %7537 = fdiv fast float 1.000000e+00, %7528
  %7538 = fmul fast float %7537, %7530
  %7539 = fdiv fast float 1.000000e+00, %7410
  %7540 = fmul fast float %7538, %7539
  %7541 = call float @dx.op.unary.f32(i32 7, float %7540)  ; Saturate(value)
  %7542 = call float @dx.op.binary.f32(i32 35, float %7541, float 0.000000e+00)  ; FMax(a,b)
  %7543 = fmul fast float %7528, 3.125000e-02
  %7544 = call float @dx.op.unary.f32(i32 7, float %7543)  ; Saturate(value)
  %7545 = fmul fast float %7544, 2.000000e+00
  %7546 = fadd fast float %7545, -1.000000e+00
  %7547 = fcmp fast ogt float %7546, 0.000000e+00
  %7548 = fcmp fast olt float %7546, 0.000000e+00
  %7549 = zext i1 %7547 to i32
  %7550 = zext i1 %7548 to i32
  %7551 = sub nsw i32 %7549, %7550
  %7552 = sitofp i32 %7551 to float
  %7553 = fmul fast float %7552, %7546
  %7554 = fsub fast float 1.000000e+00, %7553
  %7555 = fmul fast float %7554, %7554
  %7556 = fmul fast float %7555, %7554
  %7557 = fsub fast float %7554, %7556
  %7558 = fmul fast float %7557, %7542
  %7559 = fsub fast float 1.000000e+00, %7556
  %7560 = fsub fast float %7559, %7558
  %7561 = fmul fast float %7552, 5.000000e-01
  %7562 = fmul fast float %7561, %7560
  %7563 = fsub fast float 5.000000e-01, %7562
  br label %7564

; <label>:7564                                    ; preds = %7536, %7412, %7397
  %7565 = phi float [ 1.000000e+00, %7397 ], [ %7478, %7412 ], [ %7563, %7536 ]
  %7566 = fcmp fast ogt float %6827, 0.000000e+00
  br i1 %7566, label %7567, label %7731, !dx.controlflow.hints !127

; <label>:7567                                    ; preds = %7564
  %7568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7569 = extractvalue %dx.types.CBufRet.f32 %7568, 0
  %7570 = fadd fast float %7569, %6717
  %7571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7572 = extractvalue %dx.types.CBufRet.f32 %7571, 2
  %7573 = extractvalue %dx.types.CBufRet.f32 %7571, 3
  %7574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7575 = extractvalue %dx.types.CBufRet.f32 %7574, 0
  %7576 = call float @dx.op.binary.f32(i32 35, float %7570, float 0.000000e+00)  ; FMax(a,b)
  %7577 = fadd fast float %7576, 0x3F10000000000000
  %7578 = fcmp fast oeq float %7575, 0.000000e+00
  br i1 %7578, label %7579, label %7646

; <label>:7579                                    ; preds = %7567
  %7580 = extractvalue %dx.types.CBufRet.f32 %7571, 1
  %7581 = extractvalue %dx.types.CBufRet.f32 %7571, 0
  %7582 = fmul fast float %7581, %6709
  %7583 = fmul fast float %7580, %6713
  %7584 = fadd fast float %7582, 5.000000e-01
  %7585 = call float @dx.op.unary.f32(i32 27, float %7584)  ; Round_ni(value)
  %7586 = fadd fast float %7583, 5.000000e-01
  %7587 = call float @dx.op.unary.f32(i32 27, float %7586)  ; Round_ni(value)
  %7588 = fsub fast float %7584, %7585
  %7589 = fsub fast float %7586, %7587
  %7590 = fadd fast float %7585, -5.000000e-01
  %7591 = fadd fast float %7587, -5.000000e-01
  %7592 = fmul fast float %7588, 2.000000e+00
  %7593 = fsub fast float 3.000000e+00, %7592
  %7594 = fadd fast float %7592, 1.000000e+00
  %7595 = fsub fast float 2.000000e+00, %7588
  %7596 = bitcast float %7593 to i32
  %7597 = sub nsw i32 2129859010, %7596
  %7598 = bitcast i32 %7597 to float
  %7599 = fmul fast float %7598, %7595
  %7600 = fadd fast float %7599, -1.000000e+00
  %7601 = bitcast float %7594 to i32
  %7602 = sub nsw i32 2129859010, %7601
  %7603 = bitcast i32 %7602 to float
  %7604 = fmul fast float %7603, %7588
  %7605 = fadd fast float %7604, 1.000000e+00
  %7606 = fmul fast float %7589, 2.000000e+00
  %7607 = fsub fast float 3.000000e+00, %7606
  %7608 = fadd fast float %7606, 1.000000e+00
  %7609 = fsub fast float 2.000000e+00, %7589
  %7610 = bitcast float %7607 to i32
  %7611 = sub nsw i32 2129859010, %7610
  %7612 = bitcast i32 %7611 to float
  %7613 = fmul fast float %7612, %7609
  %7614 = fadd fast float %7613, -1.000000e+00
  %7615 = bitcast float %7608 to i32
  %7616 = sub nsw i32 2129859010, %7615
  %7617 = bitcast i32 %7616 to float
  %7618 = fmul fast float %7617, %7589
  %7619 = fadd fast float %7618, 1.000000e+00
  %7620 = fadd fast float %7600, %7590
  %7621 = fmul fast float %7620, %7572
  %7622 = fadd fast float %7614, %7591
  %7623 = fmul fast float %7622, %7573
  %7624 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7621, float %7623, float undef, float undef, i32 0, i32 0, i32 undef, float %7577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7625 = extractvalue %dx.types.ResRet.f32 %7624, 0
  %7626 = fmul fast float %7625, %7593
  %7627 = fadd fast float %7605, %7590
  %7628 = fmul fast float %7627, %7572
  %7629 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7628, float %7623, float undef, float undef, i32 0, i32 0, i32 undef, float %7577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 0
  %7631 = fmul fast float %7630, %7594
  %7632 = fadd fast float %7619, %7591
  %7633 = fmul fast float %7632, %7573
  %7634 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7621, float %7633, float undef, float undef, i32 0, i32 0, i32 undef, float %7577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7635 = extractvalue %dx.types.ResRet.f32 %7634, 0
  %7636 = fmul fast float %7635, %7593
  %7637 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7628, float %7633, float undef, float undef, i32 0, i32 0, i32 undef, float %7577)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7638 = extractvalue %dx.types.ResRet.f32 %7637, 0
  %7639 = fmul fast float %7638, %7594
  %7640 = fadd fast float %7639, %7636
  %7641 = fmul fast float %7640, %7608
  %7642 = fadd fast float %7631, %7626
  %7643 = fmul fast float %7642, %7607
  %7644 = fadd fast float %7643, %7641
  %7645 = fmul fast float %7644, 6.250000e-02
  br label %7731

; <label>:7646                                    ; preds = %7567
  %7647 = fmul fast float %237, 0x401921FB60000000
  %7648 = call float @dx.op.unary.f32(i32 13, float %7647)  ; Sin(value)
  %7649 = call float @dx.op.unary.f32(i32 12, float %7647)  ; Cos(value)
  %7650 = fsub fast float -0.000000e+00, %7648
  br label %7651

; <label>:7651                                    ; preds = %7700, %7646
  %7652 = phi float [ 0.000000e+00, %7646 ], [ %7695, %7700 ]
  %7653 = phi float [ 0.000000e+00, %7646 ], [ %7697, %7700 ]
  %7654 = phi i32 [ 0, %7646 ], [ %7701, %7700 ]
  %7655 = mul i32 %7654, 2
  %7656 = add i32 0, %7655
  %7657 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7656
  %7658 = load float, float* %7657, align 4
  %7659 = mul i32 %7654, 2
  %7660 = add i32 1, %7659
  %7661 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7660
  %7662 = load float, float* %7661, align 4
  %7663 = fmul fast float %7658, %7649
  %7664 = call float @dx.op.tertiary.f32(i32 46, float %7662, float %7650, float %7663)  ; FMad(a,b,c)
  %7665 = fmul fast float %7658, %7648
  %7666 = call float @dx.op.tertiary.f32(i32 46, float %7662, float %7649, float %7665)  ; FMad(a,b,c)
  %7667 = fmul fast float %7664, %7575
  %7668 = fmul fast float %7666, %7575
  %7669 = fadd fast float %7667, %6709
  %7670 = fadd fast float %7668, %6713
  %7671 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7669, float %7670, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7672 = extractvalue %dx.types.ResRet.f32 %7671, 0
  %7673 = extractvalue %dx.types.ResRet.f32 %7671, 1
  %7674 = extractvalue %dx.types.ResRet.f32 %7671, 2
  %7675 = extractvalue %dx.types.ResRet.f32 %7671, 3
  %7676 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7672, float* %7676, align 4
  %7677 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7673, float* %7677, align 4
  %7678 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7674, float* %7678, align 4
  %7679 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7675, float* %7679, align 4
  %7680 = fsub fast float %7672, %7577
  %7681 = fcmp fast olt float %7680, 0.000000e+00
  %7682 = select i1 %7681, float 0.000000e+00, float 1.000000e+00
  %7683 = fadd fast float %7682, %7652
  %7684 = fmul fast float %7682, %7680
  %7685 = fadd fast float %7684, %7653
  br label %7686

; <label>:7686                                    ; preds = %7686, %7651
  %7687 = phi i32 [ 1, %7651 ], [ %7698, %7686 ]
  %7688 = phi float [ %7685, %7651 ], [ %7697, %7686 ]
  %7689 = phi float [ %7683, %7651 ], [ %7695, %7686 ]
  %7690 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7687
  %7691 = load float, float* %7690, align 4, !tbaa !122, !noalias !112
  %7692 = fsub fast float %7691, %7577
  %7693 = fcmp fast olt float %7692, 0.000000e+00
  %7694 = select i1 %7693, float 0.000000e+00, float 1.000000e+00
  %7695 = fadd fast float %7694, %7689
  %7696 = fmul fast float %7694, %7692
  %7697 = fadd fast float %7696, %7688
  %7698 = add nuw nsw i32 %7687, 1
  %7699 = icmp eq i32 %7698, 4
  br i1 %7699, label %7700, label %7686, !llvm.loop !124

; <label>:7700                                    ; preds = %7686
  %7701 = add nuw nsw i32 %7654, 1
  %7702 = icmp eq i32 %7701, 8
  br i1 %7702, label %7703, label %7651, !llvm.loop !125

; <label>:7703                                    ; preds = %7700
  %7704 = fdiv fast float 1.000000e+00, %7695
  %7705 = fmul fast float %7704, %7697
  %7706 = fdiv fast float 1.000000e+00, %7577
  %7707 = fmul fast float %7705, %7706
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7709 = call float @dx.op.binary.f32(i32 35, float %7708, float 0.000000e+00)  ; FMax(a,b)
  %7710 = fmul fast float %7695, 3.125000e-02
  %7711 = call float @dx.op.unary.f32(i32 7, float %7710)  ; Saturate(value)
  %7712 = fmul fast float %7711, 2.000000e+00
  %7713 = fadd fast float %7712, -1.000000e+00
  %7714 = fcmp fast ogt float %7713, 0.000000e+00
  %7715 = fcmp fast olt float %7713, 0.000000e+00
  %7716 = zext i1 %7714 to i32
  %7717 = zext i1 %7715 to i32
  %7718 = sub nsw i32 %7716, %7717
  %7719 = sitofp i32 %7718 to float
  %7720 = fmul fast float %7719, %7713
  %7721 = fsub fast float 1.000000e+00, %7720
  %7722 = fmul fast float %7721, %7721
  %7723 = fmul fast float %7722, %7721
  %7724 = fsub fast float %7721, %7723
  %7725 = fmul fast float %7724, %7709
  %7726 = fsub fast float 1.000000e+00, %7723
  %7727 = fsub fast float %7726, %7725
  %7728 = fmul fast float %7719, 5.000000e-01
  %7729 = fmul fast float %7728, %7727
  %7730 = fsub fast float 5.000000e-01, %7729
  br label %7731

; <label>:7731                                    ; preds = %7703, %7579, %7564
  %7732 = phi float [ 1.000000e+00, %7564 ], [ %7645, %7579 ], [ %7730, %7703 ]
  %7733 = fsub fast float %7398, %7233
  %7734 = fmul fast float %7733, %6771
  %7735 = fadd fast float %7734, %7233
  %7736 = fsub fast float %7565, %7735
  %7737 = fmul fast float %7736, %6801
  %7738 = fadd fast float %7737, %7735
  %7739 = fsub fast float %7732, %7738
  %7740 = fmul fast float %7739, %6827
  %7741 = fadd fast float %7740, %7738
  %7742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7743 = extractvalue %dx.types.CBufRet.f32 %7742, 2
  %7744 = fcmp fast ogt float %7743, 0.000000e+00
  br i1 %7744, label %7745, label %7785, !dx.controlflow.hints !128

; <label>:7745                                    ; preds = %7731
  %7746 = fcmp fast ugt float %7743, 0.000000e+00
  br i1 %7746, label %7747, label %7782

; <label>:7747                                    ; preds = %7745
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 0
  %7750 = extractvalue %dx.types.CBufRet.f32 %7748, 1
  %7751 = extractvalue %dx.types.CBufRet.f32 %7748, 2
  %7752 = extractvalue %dx.types.CBufRet.f32 %7748, 3
  %7753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7754 = extractvalue %dx.types.CBufRet.f32 %7753, 0
  %7755 = extractvalue %dx.types.CBufRet.f32 %7753, 1
  %7756 = extractvalue %dx.types.CBufRet.f32 %7753, 2
  %7757 = extractvalue %dx.types.CBufRet.f32 %7753, 3
  %7758 = extractvalue %dx.types.CBufRet.f32 %7742, 0
  %7759 = extractvalue %dx.types.CBufRet.f32 %7742, 1
  %7760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7761 = extractvalue %dx.types.CBufRet.f32 %7760, 0
  %7762 = extractvalue %dx.types.CBufRet.f32 %7760, 1
  %7763 = extractvalue %dx.types.CBufRet.f32 %7760, 2
  %7764 = fadd fast float %7761, %6686
  %7765 = fadd fast float %7762, %6687
  %7766 = fadd fast float %7763, %6688
  %7767 = fmul fast float %7764, %7749
  %7768 = call float @dx.op.tertiary.f32(i32 46, float %7750, float %7765, float %7767)  ; FMad(a,b,c)
  %7769 = call float @dx.op.tertiary.f32(i32 46, float %7751, float %7766, float %7768)  ; FMad(a,b,c)
  %7770 = fadd fast float %7769, %7752
  %7771 = fmul fast float %7764, %7754
  %7772 = call float @dx.op.tertiary.f32(i32 46, float %7755, float %7765, float %7771)  ; FMad(a,b,c)
  %7773 = call float @dx.op.tertiary.f32(i32 46, float %7756, float %7766, float %7772)  ; FMad(a,b,c)
  %7774 = fadd fast float %7773, %7757
  %7775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7770, float %7774, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7776 = extractvalue %dx.types.ResRet.f32 %7775, 0
  %7777 = fmul fast float %7776, %7759
  %7778 = fadd fast float %7777, %7758
  %7779 = call float @dx.op.unary.f32(i32 7, float %7778)  ; Saturate(value)
  %7780 = fmul fast float %7779, %7743
  %7781 = fsub fast float 1.000000e+00, %7780
  br label %7782

; <label>:7782                                    ; preds = %7747, %7745
  %7783 = phi float [ %7781, %7747 ], [ 1.000000e+00, %7745 ]
  %7784 = fmul fast float %7783, %7741
  br label %7785

; <label>:7785                                    ; preds = %7782, %7731, %6666
  %7786 = phi float [ 1.000000e+00, %6666 ], [ %7784, %7782 ], [ %7741, %7731 ]
  %7787 = call float @dx.op.binary.f32(i32 36, float %7786, float %7786)  ; FMin(a,b)
  %7788 = call float @dx.op.binary.f32(i32 36, float %7786, float %7787)  ; FMin(a,b)
  %7789 = fcmp fast ogt float %7788, 0.000000e+00
  br i1 %7789, label %7790, label %7955, !dx.controlflow.hints !129

; <label>:7790                                    ; preds = %7785
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 0
  %7793 = extractvalue %dx.types.CBufRet.f32 %7791, 1
  %7794 = extractvalue %dx.types.CBufRet.f32 %7791, 2
  %7795 = extractvalue %dx.types.CBufRet.f32 %7791, 3
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 0
  %7798 = extractvalue %dx.types.CBufRet.f32 %7796, 1
  %7799 = extractvalue %dx.types.CBufRet.f32 %7796, 2
  %7800 = extractvalue %dx.types.CBufRet.f32 %7796, 3
  %7801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.f32 %7801, 0
  %7803 = extractvalue %dx.types.CBufRet.f32 %7801, 1
  %7804 = extractvalue %dx.types.CBufRet.f32 %7801, 2
  %7805 = extractvalue %dx.types.CBufRet.f32 %7801, 3
  %7806 = fmul fast float %7792, %6686
  %7807 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %7793, float %7806)  ; FMad(a,b,c)
  %7808 = call float @dx.op.tertiary.f32(i32 46, float %6688, float %7794, float %7807)  ; FMad(a,b,c)
  %7809 = fadd fast float %7808, %7795
  %7810 = fmul fast float %7797, %6686
  %7811 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %7798, float %7810)  ; FMad(a,b,c)
  %7812 = call float @dx.op.tertiary.f32(i32 46, float %6688, float %7799, float %7811)  ; FMad(a,b,c)
  %7813 = fadd fast float %7812, %7800
  %7814 = fmul fast float %7802, %6686
  %7815 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %7803, float %7814)  ; FMad(a,b,c)
  %7816 = call float @dx.op.tertiary.f32(i32 46, float %6688, float %7804, float %7815)  ; FMad(a,b,c)
  %7817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7818 = extractvalue %dx.types.CBufRet.f32 %7817, 0
  %7819 = extractvalue %dx.types.CBufRet.f32 %7817, 1
  %7820 = extractvalue %dx.types.CBufRet.f32 %7817, 3
  %7821 = fmul fast float %7820, %7809
  %7822 = fmul fast float %7820, %7813
  %7823 = fadd fast float %7821, %7818
  %7824 = fadd fast float %7822, %7819
  %7825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7826 = extractvalue %dx.types.CBufRet.f32 %7825, 0
  %7827 = extractvalue %dx.types.CBufRet.f32 %7825, 1
  %7828 = fsub fast float %7823, %7826
  %7829 = fsub fast float %7824, %7827
  %7830 = fcmp fast olt float %7828, 0.000000e+00
  %7831 = fcmp fast olt float %7829, 0.000000e+00
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = extractvalue %dx.types.CBufRet.f32 %7832, 1
  %7835 = extractvalue %dx.types.CBufRet.f32 %7832, 2
  %7836 = extractvalue %dx.types.CBufRet.f32 %7832, 3
  %7837 = select i1 %7830, float %7833, float %7835
  %7838 = select i1 %7831, float %7834, float %7836
  %7839 = fmul fast float %7837, %7828
  %7840 = fmul fast float %7838, %7829
  %7841 = call float @dx.op.unary.f32(i32 6, float %7839)  ; FAbs(value)
  %7842 = call float @dx.op.unary.f32(i32 6, float %7840)  ; FAbs(value)
  %7843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7844 = extractvalue %dx.types.CBufRet.f32 %7843, 0
  %7845 = call float @dx.op.binary.f32(i32 35, float %7841, float %7842)  ; FMax(a,b)
  %7846 = fsub fast float %7844, %7845
  %7847 = call float @dx.op.unary.f32(i32 7, float %7846)  ; Saturate(value)
  %7848 = fcmp fast ogt float %7847, 0.000000e+00
  br i1 %7848, label %7849, label %7890, !dx.controlflow.hints !130

; <label>:7849                                    ; preds = %7790
  %7850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7823, float %7824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7851 = extractvalue %dx.types.ResRet.f32 %7850, 1
  %7852 = fcmp fast ogt float %7851, 0.000000e+00
  br i1 %7852, label %7853, label %7885

; <label>:7853                                    ; preds = %7849
  %7854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7823, float %7824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7855 = extractvalue %dx.types.ResRet.f32 %7854, 0
  %7856 = extractvalue %dx.types.ResRet.f32 %7854, 1
  %7857 = extractvalue %dx.types.ResRet.f32 %7854, 2
  %7858 = extractvalue %dx.types.ResRet.f32 %7854, 3
  %7859 = fsub fast float 1.000000e+00, %7805
  %7860 = fsub fast float %7859, %7816
  %7861 = fmul fast float %7860, 0x400921FB60000000
  %7862 = fadd fast float %7861, 0x3FF921FB60000000
  %7863 = call float @dx.op.unary.f32(i32 13, float %7862)  ; Sin(value)
  %7864 = fadd fast float %7863, -1.000000e+00
  %7865 = fmul fast float %7864, 0x3FD45F3060000000
  %7866 = fmul fast float %7860, 0x401921FB60000000
  %7867 = fadd fast float %7866, 0x400921FB60000000
  %7868 = call float @dx.op.unary.f32(i32 13, float %7867)  ; Sin(value)
  %7869 = fadd fast float %7868, 0x3E7777A5C0000000
  %7870 = fmul fast float %7869, 0x3FC45F3060000000
  %7871 = fmul fast float %7860, 0x4022D97C80000000
  %7872 = fadd fast float %7871, 0x4012D97C80000000
  %7873 = call float @dx.op.unary.f32(i32 13, float %7872)  ; Sin(value)
  %7874 = fadd fast float %7873, 1.000000e+00
  %7875 = fmul fast float %7874, 0x3FBB2995E0000000
  %7876 = fmul fast float %7860, 0x402921FB60000000
  %7877 = fadd fast float %7876, 0x401921FB60000000
  %7878 = call float @dx.op.unary.f32(i32 13, float %7877)  ; Sin(value)
  %7879 = fadd fast float %7878, 0xBE8777A5C0000000
  %7880 = fmul fast float %7879, 0x3FB45F3060000000
  %7881 = call float @dx.op.dot4.f32(i32 56, float %7855, float %7856, float %7857, float %7858, float %7865, float %7870, float %7875, float %7880)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7882 = fmul fast float %7881, 0xBFF7154760000000
  %7883 = call float @dx.op.unary.f32(i32 21, float %7882)  ; Exp(value)
  %7884 = call float @dx.op.unary.f32(i32 7, float %7883)  ; Saturate(value)
  br label %7885

; <label>:7885                                    ; preds = %7853, %7849
  %7886 = phi float [ %7884, %7853 ], [ 1.000000e+00, %7849 ]
  %7887 = fadd fast float %7886, -1.000000e+00
  %7888 = fmul fast float %7887, %7847
  %7889 = fadd fast float %7888, 1.000000e+00
  br label %7890

; <label>:7890                                    ; preds = %7885, %7790
  %7891 = phi float [ %7889, %7885 ], [ 1.000000e+00, %7790 ]
  %7892 = fmul fast float %7891, %7786
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 0
  %7895 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7896 = extractvalue %dx.types.CBufRet.f32 %7893, 2
  %7897 = fadd fast float %7894, %164
  %7898 = fadd fast float %7895, %165
  %7899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7900 = extractvalue %dx.types.CBufRet.f32 %7899, 1
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %7904 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7905 = fsub fast float -0.000000e+00, %7897
  %7906 = fsub fast float -0.000000e+00, %7898
  %7907 = fsub fast float %5732, %7896
  %7908 = fadd fast float %7907, %7900
  %7909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7905, float %7906, float %7908)  ; Dot3(ax,ay,az,bx,by,bz)
  %7910 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7902, float %7903, float %7904)  ; Dot3(ax,ay,az,bx,by,bz)
  %7911 = fdiv fast float 1.000000e+00, %7910
  %7912 = fmul fast float %7911, %7909
  %7913 = fmul fast float %7902, %7912
  %7914 = fmul fast float %7903, %7912
  %7915 = fadd fast float %7913, %7897
  %7916 = fadd fast float %7914, %7898
  %7917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7918 = extractvalue %dx.types.CBufRet.f32 %7917, 0
  %7919 = extractvalue %dx.types.CBufRet.f32 %7917, 1
  %7920 = fsub fast float %7915, %7918
  %7921 = fsub fast float %7916, %7919
  %7922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.f32 %7922, 2
  %7924 = extractvalue %dx.types.CBufRet.f32 %7922, 3
  %7925 = fmul fast float %7920, %7923
  %7926 = fmul fast float %7921, %7924
  %7927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.i32 %7927, 3
  %7929 = icmp eq i32 %7928, 0
  br i1 %7929, label %7935, label %7930

; <label>:7930                                    ; preds = %7890
  %7931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7925, float %7926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7932 = extractvalue %dx.types.ResRet.f32 %7931, 0
  %7933 = extractvalue %dx.types.ResRet.f32 %7931, 1
  %7934 = extractvalue %dx.types.ResRet.f32 %7931, 2
  br label %7940

; <label>:7935                                    ; preds = %7890
  %7936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7925, float %7926, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7937 = extractvalue %dx.types.ResRet.f32 %7936, 0
  %7938 = extractvalue %dx.types.ResRet.f32 %7936, 1
  %7939 = extractvalue %dx.types.ResRet.f32 %7936, 2
  br label %7940

; <label>:7940                                    ; preds = %7935, %7930
  %7941 = phi float [ %7932, %7930 ], [ %7937, %7935 ]
  %7942 = phi float [ %7933, %7930 ], [ %7938, %7935 ]
  %7943 = phi float [ %7934, %7930 ], [ %7939, %7935 ]
  %7944 = extractvalue %dx.types.CBufRet.f32 %7899, 2
  %7945 = fmul fast float %7944, %7941
  %7946 = extractvalue %dx.types.CBufRet.f32 %7899, 0
  %7947 = fsub fast float %7912, %7946
  %7948 = fsub fast float %7947, %7945
  %7949 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7948)  ; FMax(a,b)
  %7950 = fmul fast float %7949, %7942
  %7951 = call float @dx.op.binary.f32(i32 36, float %7943, float %7950)  ; FMin(a,b)
  %7952 = fmul fast float %7951, 0xBFF7154760000000
  %7953 = call float @dx.op.unary.f32(i32 21, float %7952)  ; Exp(value)
  %7954 = fmul fast float %7892, %7953
  br label %7955

; <label>:7955                                    ; preds = %7940, %7785
  %7956 = phi float [ %7954, %7940 ], [ %7786, %7785 ]
  %7957 = call float @dx.op.binary.f32(i32 36, float %7956, float %7956)  ; FMin(a,b)
  %7958 = call float @dx.op.binary.f32(i32 36, float %7956, float %7957)  ; FMin(a,b)
  %7959 = fcmp fast ogt float %7958, 0.000000e+00
  br i1 %7959, label %7960, label %8343, !dx.controlflow.hints !131

; <label>:7960                                    ; preds = %7955
  %7961 = fmul fast float %7956, %6678
  %7962 = fmul fast float %7956, %6679
  %7963 = fmul fast float %7956, %6680
  %7964 = fsub fast float %166, %5523
  %7965 = fcmp fast ogt float %7964, 0.000000e+00
  %7966 = fmul fast float %6667, 5.120000e+02
  %7967 = fmul fast float %6668, 5.120000e+02
  %7968 = fmul fast float %6669, 5.120000e+02
  %7969 = fadd fast float %7968, %166
  %7970 = fsub fast float %5523, %7969
  %7971 = fmul fast float %7970, 2.000000e+00
  %7972 = fadd fast float %7971, %7969
  %7973 = select i1 %7965, float %7972, float %7969
  %7974 = fsub fast float %7973, %166
  %7975 = call float @dx.op.dot3.f32(i32 55, float %7966, float %7967, float %7974, float %7966, float %7967, float %7974)  ; Dot3(ax,ay,az,bx,by,bz)
  %7976 = call float @dx.op.unary.f32(i32 25, float %7975)  ; Rsqrt(value)
  %7977 = fmul fast float %7976, %7966
  %7978 = fmul fast float %7976, %7967
  %7979 = fmul fast float %7976, %7974
  %7980 = fsub fast float %5523, %166
  %7981 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7980)  ; Dot3(ax,ay,az,bx,by,bz)
  %7982 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7977, float %7978, float %7979)  ; Dot3(ax,ay,az,bx,by,bz)
  %7983 = fdiv fast float 1.000000e+00, %7982
  %7984 = fmul fast float %7983, %7981
  %7985 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7964, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7986 = fcmp fast ogt float %7985, 0.000000e+00
  %7987 = fcmp fast olt float %7985, 0.000000e+00
  %7988 = zext i1 %7986 to i32
  %7989 = zext i1 %7987 to i32
  %7990 = sub nsw i32 %7988, %7989
  %7991 = sitofp i32 %7990 to float
  %7992 = fsub fast float %7973, %5523
  %7993 = call float @dx.op.dot3.f32(i32 55, float %7966, float %7967, float %7992, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7994 = fcmp fast ogt float %7993, 0.000000e+00
  %7995 = fcmp fast olt float %7993, 0.000000e+00
  %7996 = zext i1 %7994 to i32
  %7997 = zext i1 %7995 to i32
  %7998 = sub nsw i32 %7996, %7997
  %7999 = sitofp i32 %7998 to float
  %8000 = fcmp fast une float %7991, %7999
  br i1 %8000, label %8001, label %8011

; <label>:8001                                    ; preds = %7960
  %8002 = fmul fast float %7984, %7979
  %8003 = fmul fast float %7984, %7978
  %8004 = fmul fast float %7984, %7977
  %8005 = fmul fast float %8004, %8004
  %8006 = fmul fast float %8003, %8003
  %8007 = fadd fast float %8005, %8006
  %8008 = fmul fast float %8002, %8002
  %8009 = fadd fast float %8007, %8008
  %8010 = call float @dx.op.unary.f32(i32 24, float %8009)  ; Sqrt(value)
  br label %8021

; <label>:8011                                    ; preds = %7960
  %8012 = icmp slt i32 %7990, 0
  br i1 %8012, label %8013, label %8021

; <label>:8013                                    ; preds = %8011
  %8014 = fsub fast float %166, %7973
  %8015 = fmul fast float %7966, %7966
  %8016 = fmul fast float %7967, %7967
  %8017 = fadd fast float %8015, %8016
  %8018 = fmul fast float %8014, %8014
  %8019 = fadd fast float %8017, %8018
  %8020 = call float @dx.op.unary.f32(i32 24, float %8019)  ; Sqrt(value)
  br label %8021

; <label>:8021                                    ; preds = %8013, %8011, %8001
  %8022 = phi float [ %8010, %8001 ], [ %8020, %8013 ], [ 0.000000e+00, %8011 ]
  %8023 = fsub fast float -0.000000e+00, %8022
  %8024 = select i1 %7965, float -0.000000e+00, float %8023
  %8025 = fmul fast float %5520, 0x3FF7154760000000
  %8026 = fmul fast float %8025, %8024
  %8027 = fmul fast float %5521, 0x3FF7154760000000
  %8028 = fmul fast float %8027, %8024
  %8029 = fmul fast float %5522, 0x3FF7154760000000
  %8030 = fmul fast float %8029, %8024
  %8031 = call float @dx.op.unary.f32(i32 21, float %8026)  ; Exp(value)
  %8032 = call float @dx.op.unary.f32(i32 21, float %8028)  ; Exp(value)
  %8033 = call float @dx.op.unary.f32(i32 21, float %8030)  ; Exp(value)
  %8034 = call float @dx.op.unary.f32(i32 7, float %8031)  ; Saturate(value)
  %8035 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8036 = call float @dx.op.unary.f32(i32 7, float %8033)  ; Saturate(value)
  %8037 = fmul fast float %7961, %8034
  %8038 = fmul fast float %7962, %8035
  %8039 = fmul fast float %7963, %8036
  %8040 = fsub fast float %6667, %5720
  %8041 = fsub fast float %6668, %5719
  %8042 = fsub fast float %6669, %5718
  %8043 = call float @dx.op.dot3.f32(i32 55, float %8040, float %8041, float %8042, float %8040, float %8041, float %8042)  ; Dot3(ax,ay,az,bx,by,bz)
  %8044 = call float @dx.op.unary.f32(i32 25, float %8043)  ; Rsqrt(value)
  %8045 = fmul fast float %8044, %8040
  %8046 = fmul fast float %8044, %8041
  %8047 = fmul fast float %8044, %8042
  %8048 = call float @dx.op.dot3.f32(i32 55, float %6667, float %6668, float %6669, float %5727, float %5728, float %5729)  ; Dot3(ax,ay,az,bx,by,bz)
  %8049 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5716, float %5715, float %8045, float %8046, float %8047)  ; Dot3(ax,ay,az,bx,by,bz)
  %8050 = call float @dx.op.unary.f32(i32 7, float %8048)  ; Saturate(value)
  %8051 = fmul fast float %8050, %8050
  %8052 = fmul fast float %8051, %5760
  %8053 = call float @dx.op.unary.f32(i32 7, float %8052)  ; Saturate(value)
  %8054 = fmul fast float %8053, %8050
  %8055 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %5729, float %8045, float %8046, float %8047)  ; Dot3(ax,ay,az,bx,by,bz)
  %8056 = fmul fast float %8055, %8055
  %8057 = call float @dx.op.unary.f32(i32 6, float %8048)  ; FAbs(value)
  %8058 = fsub fast float 1.000000e+00, %5753
  %8059 = fmul fast float %5735, %5735
  %8060 = fmul fast float %8059, %8058
  %8061 = fadd fast float %8060, %5753
  %8062 = bitcast float %8061 to i32
  %8063 = ashr i32 %8062, 1
  %8064 = add nsw i32 %8063, 532487669
  %8065 = bitcast i32 %8064 to float
  %8066 = fadd fast float %8065, %5735
  %8067 = fmul fast float %5753, %8056
  %8068 = fsub fast float 1.000000e+00, %8056
  %8069 = fadd fast float %8068, %8067
  %8070 = fmul fast float %8057, %8057
  %8071 = fmul fast float %8070, %8058
  %8072 = fadd fast float %8071, %5753
  %8073 = bitcast float %8072 to i32
  %8074 = ashr i32 %8073, 1
  %8075 = add nsw i32 %8074, 532487669
  %8076 = bitcast i32 %8075 to float
  %8077 = fadd fast float %8076, %8057
  %8078 = fmul fast float %8069, %8069
  %8079 = fmul fast float %8078, %8066
  %8080 = fmul fast float %8079, %8077
  %8081 = fdiv fast float 0x3FF0A00000000000, %8080
  %8082 = fmul fast float %8081, %5753
  %8083 = fmul fast float %6006, 0x3FF9999980000000
  %8084 = fsub fast float 5.000000e+00, %8083
  %8085 = call float @dx.op.unary.f32(i32 6, float %8049)  ; FAbs(value)
  %8086 = fsub fast float 1.000000e+00, %8085
  %8087 = fmul fast float %6006, 0x41D9660740000000
  %8088 = fadd fast float %8087, 0xC1EFBF8940000000
  %8089 = bitcast float %8086 to i32
  %8090 = sitofp i32 %8089 to float
  %8091 = fmul fast float %8090, %8084
  %8092 = fadd fast float %8088, %8091
  %8093 = fptosi float %8092 to i32
  %8094 = bitcast i32 %8093 to float
  %8095 = fsub fast float 1.000000e+00, %5724
  %8096 = fsub fast float 1.000000e+00, %5725
  %8097 = fsub fast float 1.000000e+00, %5733
  %8098 = fmul fast float %8094, %8095
  %8099 = fmul fast float %8094, %8096
  %8100 = fmul fast float %8094, %8097
  %8101 = fadd fast float %8098, %5724
  %8102 = fadd fast float %8099, %5725
  %8103 = fadd fast float %8100, %5733
  br i1 %6029, label %8104, label %8127

; <label>:8104                                    ; preds = %8021
  %8105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5090, float %8085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8106 = extractvalue %dx.types.ResRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.ResRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.ResRet.f32 %8105, 2
  %8109 = fadd fast float %8106, -5.000000e-01
  %8110 = fadd fast float %8107, -5.000000e-01
  %8111 = fadd fast float %8108, -5.000000e-01
  %8112 = fmul fast float %5724, 4.000000e+00
  %8113 = fmul fast float %8112, %8095
  %8114 = fmul fast float %8113, %8109
  %8115 = fmul fast float %5725, 4.000000e+00
  %8116 = fmul fast float %8115, %8096
  %8117 = fmul fast float %8116, %8110
  %8118 = fmul fast float %5733, 4.000000e+00
  %8119 = fmul fast float %8118, %8097
  %8120 = fmul fast float %8119, %8111
  %8121 = fadd fast float %8114, %8101
  %8122 = fadd fast float %8117, %8102
  %8123 = fadd fast float %8120, %8103
  %8124 = call float @dx.op.unary.f32(i32 7, float %8121)  ; Saturate(value)
  %8125 = call float @dx.op.unary.f32(i32 7, float %8122)  ; Saturate(value)
  %8126 = call float @dx.op.unary.f32(i32 7, float %8123)  ; Saturate(value)
  br label %8127

; <label>:8127                                    ; preds = %8104, %8021
  %8128 = phi float [ %8124, %8104 ], [ %8101, %8021 ]
  %8129 = phi float [ %8125, %8104 ], [ %8102, %8021 ]
  %8130 = phi float [ %8126, %8104 ], [ %8103, %8021 ]
  %8131 = fmul fast float %8048, 9.843750e-01
  %8132 = fadd fast float %8131, 7.812500e-03
  %8133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8132, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8134 = extractvalue %dx.types.ResRet.f32 %8133, 0
  %8135 = extractvalue %dx.types.ResRet.f32 %8133, 1
  %8136 = extractvalue %dx.types.ResRet.f32 %8133, 2
  %8137 = extractvalue %dx.types.ResRet.f32 %8133, 3
  %8138 = fsub fast float %8136, %8134
  %8139 = fsub fast float %8137, %8135
  %8140 = fmul fast float %8138, %6016
  %8141 = fmul fast float %8139, %6016
  %8142 = fadd fast float %8140, %8134
  %8143 = fadd fast float %8141, %8135
  %8144 = fmul fast float %8142, %5724
  %8145 = fmul fast float %8142, %5725
  %8146 = fmul fast float %8142, %5733
  %8147 = fadd fast float %8144, %8143
  %8148 = fadd fast float %8145, %8143
  %8149 = fadd fast float %8146, %8143
  br i1 %6029, label %8150, label %8173

; <label>:8150                                    ; preds = %8127
  %8151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5090, float %8048, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8152 = extractvalue %dx.types.ResRet.f32 %8151, 0
  %8153 = extractvalue %dx.types.ResRet.f32 %8151, 1
  %8154 = extractvalue %dx.types.ResRet.f32 %8151, 2
  %8155 = fadd fast float %8152, -5.000000e-01
  %8156 = fadd fast float %8153, -5.000000e-01
  %8157 = fadd fast float %8154, -5.000000e-01
  %8158 = fmul fast float %5724, 4.000000e+00
  %8159 = fmul fast float %8158, %8095
  %8160 = fmul fast float %8159, %8155
  %8161 = fmul fast float %5725, 4.000000e+00
  %8162 = fmul fast float %8161, %8096
  %8163 = fmul fast float %8162, %8156
  %8164 = fmul fast float %5733, 4.000000e+00
  %8165 = fmul fast float %8164, %8097
  %8166 = fmul fast float %8165, %8157
  %8167 = fadd fast float %8160, %8147
  %8168 = fadd fast float %8163, %8148
  %8169 = fadd fast float %8166, %8149
  %8170 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  %8171 = call float @dx.op.unary.f32(i32 7, float %8168)  ; Saturate(value)
  %8172 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  br label %8173

; <label>:8173                                    ; preds = %8150, %8127
  %8174 = phi float [ %8170, %8150 ], [ %8147, %8127 ]
  %8175 = phi float [ %8171, %8150 ], [ %8148, %8127 ]
  %8176 = phi float [ %8172, %8150 ], [ %8149, %8127 ]
  %8177 = call float @dx.op.binary.f32(i32 35, float %8175, float %8176)  ; FMax(a,b)
  %8178 = call float @dx.op.binary.f32(i32 35, float %8174, float %8177)  ; FMax(a,b)
  %8179 = fsub fast float 1.000000e+00, %8178
  %8180 = call float @dx.op.binary.f32(i32 35, float %8057, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8181 = fdiv fast float %4427, %8180
  %8182 = fmul fast float %6576, %8181
  %8183 = fmul fast float %6578, %8181
  %8184 = fmul fast float %6580, %8181
  %8185 = call float @dx.op.unary.f32(i32 21, float %8182)  ; Exp(value)
  %8186 = call float @dx.op.unary.f32(i32 21, float %8183)  ; Exp(value)
  %8187 = call float @dx.op.unary.f32(i32 21, float %8184)  ; Exp(value)
  %8188 = call float @dx.op.unary.f32(i32 7, float %8185)  ; Saturate(value)
  %8189 = call float @dx.op.unary.f32(i32 7, float %8186)  ; Saturate(value)
  %8190 = call float @dx.op.unary.f32(i32 7, float %8187)  ; Saturate(value)
  %8191 = select i1 %6573, float %8188, float 0.000000e+00
  %8192 = select i1 %6574, float %8189, float 0.000000e+00
  %8193 = select i1 %6575, float %8190, float 0.000000e+00
  %8194 = fsub fast float -0.000000e+00, %5727
  %8195 = fsub fast float -0.000000e+00, %5728
  %8196 = fsub fast float -0.000000e+00, %5729
  %8197 = call float @dx.op.dot3.f32(i32 55, float %6667, float %6668, float %6669, float %8194, float %8195, float %8196)  ; Dot3(ax,ay,az,bx,by,bz)
  %8198 = call float @dx.op.unary.f32(i32 7, float %8197)  ; Saturate(value)
  %8199 = fmul fast float %8198, 9.843750e-01
  %8200 = fadd fast float %8199, 7.812500e-03
  %8201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8200, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8202 = extractvalue %dx.types.ResRet.f32 %8201, 0
  %8203 = extractvalue %dx.types.ResRet.f32 %8201, 1
  %8204 = extractvalue %dx.types.ResRet.f32 %8201, 2
  %8205 = extractvalue %dx.types.ResRet.f32 %8201, 3
  %8206 = fsub fast float %8204, %8202
  %8207 = fsub fast float %8205, %8203
  %8208 = fmul fast float %8206, %6016
  %8209 = fmul fast float %8207, %6016
  %8210 = fadd fast float %8208, %8202
  %8211 = fadd fast float %8209, %8203
  %8212 = fmul fast float %8210, %5724
  %8213 = fmul fast float %8210, %5725
  %8214 = fmul fast float %8210, %5733
  %8215 = fadd fast float %8212, %8211
  %8216 = fadd fast float %8213, %8211
  %8217 = fadd fast float %8214, %8211
  br i1 %6029, label %8218, label %8241

; <label>:8218                                    ; preds = %8173
  %8219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5090, float %8198, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8220 = extractvalue %dx.types.ResRet.f32 %8219, 0
  %8221 = extractvalue %dx.types.ResRet.f32 %8219, 1
  %8222 = extractvalue %dx.types.ResRet.f32 %8219, 2
  %8223 = fadd fast float %8220, -5.000000e-01
  %8224 = fadd fast float %8221, -5.000000e-01
  %8225 = fadd fast float %8222, -5.000000e-01
  %8226 = fmul fast float %5724, 4.000000e+00
  %8227 = fmul fast float %8226, %8095
  %8228 = fmul fast float %8227, %8223
  %8229 = fmul fast float %5725, 4.000000e+00
  %8230 = fmul fast float %8229, %8096
  %8231 = fmul fast float %8230, %8224
  %8232 = fmul fast float %5733, 4.000000e+00
  %8233 = fmul fast float %8232, %8097
  %8234 = fmul fast float %8233, %8225
  %8235 = fadd fast float %8228, %8215
  %8236 = fadd fast float %8231, %8216
  %8237 = fadd fast float %8234, %8217
  %8238 = call float @dx.op.unary.f32(i32 7, float %8235)  ; Saturate(value)
  %8239 = call float @dx.op.unary.f32(i32 7, float %8236)  ; Saturate(value)
  %8240 = call float @dx.op.unary.f32(i32 7, float %8237)  ; Saturate(value)
  br label %8241

; <label>:8241                                    ; preds = %8218, %8173
  %8242 = phi float [ %8238, %8218 ], [ %8215, %8173 ]
  %8243 = phi float [ %8239, %8218 ], [ %8216, %8173 ]
  %8244 = phi float [ %8240, %8218 ], [ %8217, %8173 ]
  %8245 = call float @dx.op.binary.f32(i32 35, float %8243, float %8244)  ; FMax(a,b)
  %8246 = call float @dx.op.binary.f32(i32 35, float %8242, float %8245)  ; FMax(a,b)
  %8247 = fsub fast float 1.000000e+00, %8246
  %8248 = fmul fast float %5750, %6640
  %8249 = fadd fast float %6642, %8248
  %8250 = call float @dx.op.unary.f32(i32 7, float %8249)  ; Saturate(value)
  %8251 = fsub fast float %6667, %5741
  %8252 = fsub fast float %6668, %5742
  %8253 = fsub fast float %6669, %5743
  %8254 = call float @dx.op.dot3.f32(i32 55, float %8251, float %8252, float %8253, float %8251, float %8252, float %8253)  ; Dot3(ax,ay,az,bx,by,bz)
  %8255 = call float @dx.op.unary.f32(i32 25, float %8254)  ; Rsqrt(value)
  %8256 = fmul fast float %8255, %8251
  %8257 = fmul fast float %8255, %8252
  %8258 = fmul fast float %8255, %8253
  %8259 = call float @dx.op.dot3.f32(i32 55, float %8194, float %8195, float %8196, float %8256, float %8257, float %8258)  ; Dot3(ax,ay,az,bx,by,bz)
  %8260 = fmul fast float %8259, %8259
  %8261 = call float @dx.op.unary.f32(i32 6, float %8198)  ; FAbs(value)
  %8262 = call float @dx.op.binary.f32(i32 35, float %8250, float 0x3F847AE140000000)  ; FMax(a,b)
  %8263 = fmul fast float %8262, %8262
  %8264 = fmul fast float %8263, %8263
  %8265 = fsub fast float 1.000000e+00, %8264
  %8266 = fmul fast float %8059, %8265
  %8267 = fadd fast float %8266, %8264
  %8268 = bitcast float %8267 to i32
  %8269 = ashr i32 %8268, 1
  %8270 = add nsw i32 %8269, 532487669
  %8271 = bitcast i32 %8270 to float
  %8272 = fadd fast float %8271, %5735
  %8273 = fmul fast float %8264, %8260
  %8274 = fsub fast float 1.000000e+00, %8260
  %8275 = fadd fast float %8274, %8273
  %8276 = fmul fast float %8261, %8261
  %8277 = fmul fast float %8276, %8265
  %8278 = fadd fast float %8277, %8264
  %8279 = bitcast float %8278 to i32
  %8280 = ashr i32 %8279, 1
  %8281 = add nsw i32 %8280, 532487669
  %8282 = bitcast i32 %8281 to float
  %8283 = fadd fast float %8282, %8261
  %8284 = fmul fast float %8275, %8275
  %8285 = fmul fast float %8284, %8272
  %8286 = fmul fast float %8285, %8283
  %8287 = fdiv fast float 0x3FF0A00000000000, %8286
  %8288 = fmul fast float %8287, %8264
  %8289 = fmul fast float %8198, %8191
  %8290 = fmul fast float %8198, %8192
  %8291 = fmul fast float %8198, %8193
  %8292 = fmul fast float %8289, %8247
  %8293 = fmul fast float %8292, %8288
  %8294 = fmul fast float %8290, %8247
  %8295 = fmul fast float %8294, %8288
  %8296 = fmul fast float %8291, %8247
  %8297 = fmul fast float %8296, %8288
  %8298 = fmul fast float %8128, %8082
  %8299 = fmul fast float %8129, %8082
  %8300 = fmul fast float %8130, %8082
  %8301 = fsub fast float 1.000000e+00, %8049
  %8302 = bitcast float %8301 to i32
  %8303 = sitofp i32 %8302 to float
  %8304 = fmul fast float %8303, 5.000000e+00
  %8305 = fadd fast float %8304, 0xC1EFBF8940000000
  %8306 = fptosi float %8305 to i32
  %8307 = bitcast i32 %8306 to float
  %8308 = fmul fast float %8307, %5091
  %8309 = fmul fast float %8179, %8308
  %8310 = fmul fast float %8309, %6568
  %8311 = fmul fast float %8309, %6569
  %8312 = fmul fast float %8309, %6570
  %8313 = fadd fast float %8310, %8298
  %8314 = fadd fast float %8311, %8299
  %8315 = fadd fast float %8312, %8300
  %8316 = fmul fast float %8313, %8054
  %8317 = fmul fast float %8314, %8054
  %8318 = fmul fast float %8315, %8054
  %8319 = fmul fast float %8054, %8037
  %8320 = fmul fast float %8319, %8179
  %8321 = fmul fast float %8054, %8038
  %8322 = fmul fast float %8321, %8179
  %8323 = fmul fast float %8054, %8039
  %8324 = fmul fast float %8323, %8179
  %8325 = fadd fast float %8316, %8293
  %8326 = fadd fast float %8317, %8295
  %8327 = fadd fast float %8318, %8297
  %8328 = fmul fast float %8325, %8037
  %8329 = fmul fast float %8326, %8038
  %8330 = fmul fast float %8327, %8039
  %8331 = fadd fast float %8320, %6657
  %8332 = fmul fast float %8331, %5087
  %8333 = fadd fast float %8322, %6659
  %8334 = fmul fast float %8333, %5087
  %8335 = fadd fast float %8324, %6661
  %8336 = fmul fast float %8335, %5087
  %8337 = fadd fast float %8328, %6621
  %8338 = fmul fast float %8337, %5087
  %8339 = fadd fast float %8329, %6624
  %8340 = fmul fast float %8339, %5087
  %8341 = fadd fast float %8330, %6627
  %8342 = fmul fast float %8341, %5087
  br label %8343

; <label>:8343                                    ; preds = %8241, %7955, %6551
  %8344 = phi float [ %6622, %6551 ], [ %6622, %7955 ], [ %8338, %8241 ]
  %8345 = phi float [ %6625, %6551 ], [ %6625, %7955 ], [ %8340, %8241 ]
  %8346 = phi float [ %6628, %6551 ], [ %6628, %7955 ], [ %8342, %8241 ]
  %8347 = phi float [ %6658, %6551 ], [ %6658, %7955 ], [ %8332, %8241 ]
  %8348 = phi float [ %6660, %6551 ], [ %6660, %7955 ], [ %8334, %8241 ]
  %8349 = phi float [ %6662, %6551 ], [ %6662, %7955 ], [ %8336, %8241 ]
  %8350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.i32 %8350, 0
  %8352 = icmp eq i32 %8351, 0
  br i1 %8352, label %9170, label %8353

; <label>:8353                                    ; preds = %8343
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 2
  %8356 = extractvalue %dx.types.CBufRet.f32 %8354, 3
  %8357 = fmul fast float %8355, %109
  %8358 = fmul fast float %8356, %110
  %8359 = fptoui float %8357 to i32
  %8360 = fptoui float %8358 to i32
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8364 = extractvalue %dx.types.CBufRet.f32 %8361, 3
  %8365 = fadd fast float %97, -4.000000e+00
  %8366 = call float @dx.op.binary.f32(i32 35, float %8365, float 0.000000e+00)  ; FMax(a,b)
  %8367 = fadd fast float %8366, %8362
  %8368 = fmul fast float %8367, %8363
  %8369 = call float @dx.op.unary.f32(i32 23, float %8368)  ; Log(value)
  %8370 = fmul fast float %8369, %8364
  %8371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8372 = extractvalue %dx.types.CBufRet.f32 %8371, 2
  %8373 = fmul fast float %8370, %8372
  %8374 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8376 = extractvalue %dx.types.CBufRet.i32 %8375, 1
  %8377 = add i32 %8376, -1
  %8378 = uitofp i32 %8376 to float
  %8379 = fmul fast float %8378, %8374
  %8380 = fptoui float %8379 to i32
  %8381 = call i32 @dx.op.binary.i32(i32 40, i32 %8380, i32 %8377)  ; UMin(a,b)
  %8382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8383 = extractvalue %dx.types.CBufRet.i32 %8382, 2
  %8384 = extractvalue %dx.types.CBufRet.i32 %8382, 3
  %8385 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8360, i32 %8383, i32 %8359)  ; UMad(a,b,c)
  %8386 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8381, i32 %8384, i32 %8385)  ; UMad(a,b,c)
  %8387 = add nsw i32 %8351, -1
  %8388 = call i32 @dx.op.binary.i32(i32 37, i32 %8387, i32 0)  ; IMax(a,b)
  %8389 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %8390 = fptoui float %8389 to i32
  %8391 = lshr i32 %8390, 5
  %8392 = call i32 @dx.op.binary.i32(i32 40, i32 %8391, i32 8191)  ; UMin(a,b)
  %8393 = shl i32 %8392, 2
  %8394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8393, i32 undef)  ; BufferLoad(srv,index,wot)
  %8395 = extractvalue %dx.types.ResRet.i32 %8394, 0
  %8396 = lshr i32 %8395, 16
  %8397 = and i32 %8395, 65535
  %8398 = lshr i32 %8395, 21
  %8399 = lshr i32 %8397, 5
  %8400 = call i32 @dx.op.binary.i32(i32 40, i32 %8399, i32 %8388)  ; UMin(a,b)
  %8401 = icmp ugt i32 %8398, %8400
  br i1 %8401, label %9170, label %8402

; <label>:8402                                    ; preds = %8353
  br label %8403

; <label>:8403                                    ; preds = %9160, %8402
  %8404 = phi i32 [ %9167, %9160 ], [ %8398, %8402 ]
  %8405 = phi float [ %9161, %9160 ], [ %8344, %8402 ]
  %8406 = phi float [ %9162, %9160 ], [ %8345, %8402 ]
  %8407 = phi float [ %9163, %9160 ], [ %8346, %8402 ]
  %8408 = phi float [ %9164, %9160 ], [ %8347, %8402 ]
  %8409 = phi float [ %9165, %9160 ], [ %8348, %8402 ]
  %8410 = phi float [ %9166, %9160 ], [ %8349, %8402 ]
  %8411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.i32 %8411, 0
  %8413 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8386, i32 %8412, i32 %8404)  ; UMad(a,b,c)
  %8414 = shl i32 %8413, 2
  %8415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8414, i32 undef)  ; BufferLoad(srv,index,wot)
  %8416 = extractvalue %dx.types.ResRet.i32 %8415, 0
  %8417 = shl i32 %8404, 5
  %8418 = sub nsw i32 %8396, %8417
  %8419 = call i32 @dx.op.binary.i32(i32 37, i32 %8418, i32 0)  ; IMax(a,b)
  %8420 = call i32 @dx.op.binary.i32(i32 38, i32 %8419, i32 31)  ; IMin(a,b)
  %8421 = sub nsw i32 1, %8396
  %8422 = add nsw i32 %8421, %8397
  %8423 = call i32 @dx.op.binary.i32(i32 37, i32 %8422, i32 0)  ; IMax(a,b)
  %8424 = call i32 @dx.op.binary.i32(i32 38, i32 %8423, i32 32)  ; IMin(a,b)
  %8425 = and i32 %8424, 31
  %8426 = shl i32 -1, %8425
  %8427 = xor i32 %8426, -1
  %8428 = and i32 %8420, 31
  %8429 = shl i32 %8427, %8428
  %8430 = icmp eq i32 %8424, 32
  %8431 = select i1 %8430, i32 -1, i32 %8429
  %8432 = and i32 %8431, %8416
  %8433 = icmp eq i32 %8432, 0
  br i1 %8433, label %9160, label %8434

; <label>:8434                                    ; preds = %8403
  br label %8435

; <label>:8435                                    ; preds = %8570, %8434
  %8436 = phi i32 [ %8447, %8570 ], [ %8432, %8434 ]
  %8437 = phi float [ %8571, %8570 ], [ %8405, %8434 ]
  %8438 = phi float [ %8572, %8570 ], [ %8406, %8434 ]
  %8439 = phi float [ %8573, %8570 ], [ %8407, %8434 ]
  %8440 = phi float [ %8574, %8570 ], [ %8408, %8434 ]
  %8441 = phi float [ %8575, %8570 ], [ %8409, %8434 ]
  %8442 = phi float [ %8576, %8570 ], [ %8410, %8434 ]
  %8443 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8436)  ; FirstbitLo(value)
  %8444 = add i32 %8443, %8417
  %8445 = and i32 %8443, 31
  %8446 = shl i32 1, %8445
  %8447 = xor i32 %8446, %8436
  %8448 = mul i32 %8444, 112
  %8449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8448, i32 undef)  ; BufferLoad(srv,index,wot)
  %8450 = extractvalue %dx.types.ResRet.f32 %8449, 0
  %8451 = extractvalue %dx.types.ResRet.f32 %8449, 1
  %8452 = extractvalue %dx.types.ResRet.f32 %8449, 2
  %8453 = or i32 %8448, 12
  %8454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8453, i32 undef)  ; BufferLoad(srv,index,wot)
  %8455 = extractvalue %dx.types.ResRet.f32 %8454, 0
  %8456 = add i32 %8448, 16
  %8457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8456, i32 undef)  ; BufferLoad(srv,index,wot)
  %8458 = extractvalue %dx.types.ResRet.f32 %8457, 0
  %8459 = extractvalue %dx.types.ResRet.f32 %8457, 1
  %8460 = extractvalue %dx.types.ResRet.f32 %8457, 2
  %8461 = add i32 %8448, 28
  %8462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8461, i32 undef)  ; BufferLoad(srv,index,wot)
  %8463 = extractvalue %dx.types.ResRet.i32 %8462, 0
  %8464 = add i32 %8448, 44
  %8465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8464, i32 undef)  ; BufferLoad(srv,index,wot)
  %8466 = extractvalue %dx.types.ResRet.f32 %8465, 0
  %8467 = add i32 %8448, 48
  %8468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8467, i32 undef)  ; BufferLoad(srv,index,wot)
  %8469 = extractvalue %dx.types.ResRet.f32 %8468, 0
  %8470 = extractvalue %dx.types.ResRet.f32 %8468, 1
  %8471 = extractvalue %dx.types.ResRet.f32 %8468, 2
  %8472 = extractvalue %dx.types.ResRet.f32 %8468, 3
  %8473 = add i32 %8448, 64
  %8474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8473, i32 undef)  ; BufferLoad(srv,index,wot)
  %8475 = extractvalue %dx.types.ResRet.f32 %8474, 0
  %8476 = extractvalue %dx.types.ResRet.f32 %8474, 1
  %8477 = extractvalue %dx.types.ResRet.f32 %8474, 2
  %8478 = extractvalue %dx.types.ResRet.f32 %8474, 3
  %8479 = add i32 %8448, 80
  %8480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8479, i32 undef)  ; BufferLoad(srv,index,wot)
  %8481 = extractvalue %dx.types.ResRet.f32 %8480, 1
  %8482 = extractvalue %dx.types.ResRet.f32 %8480, 2
  %8483 = add i32 %8448, 92
  %8484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8483, i32 undef)  ; BufferLoad(srv,index,wot)
  %8485 = extractvalue %dx.types.ResRet.i32 %8484, 0
  %8486 = call float @dx.op.dot3.f32(i32 55, float %8450, float %8451, float %8452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8487 = select i1 %226, float %8481, float %8450
  %8488 = select i1 %226, float %8486, float %8451
  %8489 = select i1 %226, float %8482, float %8452
  %8490 = and i32 %8485, 65535
  %8491 = uitofp i32 %8490 to float
  %8492 = lshr i32 %8485, 16
  %8493 = uitofp i32 %8492 to float
  %8494 = and i32 %8463, 65535
  %8495 = and i32 %8463, 50331648
  %8496 = icmp slt i32 %8463, 0
  %8497 = icmp eq i32 %8495, 33554432
  %8498 = fsub fast float %8469, %164
  %8499 = fsub fast float %8470, %165
  %8500 = fsub fast float %8471, %166
  %8501 = call float @dx.op.dot3.f32(i32 55, float %8498, float %8499, float %8500, float %8498, float %8499, float %8500)  ; Dot3(ax,ay,az,bx,by,bz)
  %8502 = call float @dx.op.unary.f32(i32 24, float %8501)  ; Sqrt(value)
  %8503 = fdiv fast float 1.000000e+00, %8502
  %8504 = fmul fast float %8503, %8498
  %8505 = fmul fast float %8503, %8499
  %8506 = fmul fast float %8503, %8500
  %8507 = fadd fast float %8502, %8455
  %8508 = fdiv fast float 1.000000e+00, %8507
  %8509 = fmul float %8466, %8508
  %8510 = fmul float %8509, %8509
  %8511 = call float @dx.op.unary.f32(i32 7, float %8510)  ; Saturate(value)
  br i1 %8497, label %8512, label %8533

; <label>:8512                                    ; preds = %8435
  %8513 = fmul fast float %8477, %8458
  %8514 = fmul fast float %8477, %8459
  %8515 = fmul fast float %8477, %8460
  %8516 = fadd fast float %8498, %8513
  %8517 = fadd fast float %8499, %8514
  %8518 = fadd fast float %8500, %8515
  %8519 = call float @dx.op.dot3.f32(i32 55, float %8516, float %8517, float %8518, float %8516, float %8517, float %8518)  ; Dot3(ax,ay,az,bx,by,bz)
  %8520 = call float @dx.op.unary.f32(i32 25, float %8519)  ; Rsqrt(value)
  %8521 = fmul fast float %8520, %8516
  %8522 = fmul fast float %8520, %8517
  %8523 = fmul fast float %8520, %8518
  %8524 = fsub fast float %164, %8469
  %8525 = fsub fast float %165, %8470
  %8526 = fsub fast float %166, %8471
  %8527 = fsub fast float -0.000000e+00, %8524
  %8528 = fsub fast float -0.000000e+00, %8525
  %8529 = fsub fast float -0.000000e+00, %8526
  %8530 = call float @dx.op.dot3.f32(i32 55, float %8527, float %8528, float %8529, float %8458, float %8459, float %8460)  ; Dot3(ax,ay,az,bx,by,bz)
  %8531 = fcmp fast ogt float %8530, 0.000000e+00
  %8532 = uitofp i1 %8531 to float
  br label %8533

; <label>:8533                                    ; preds = %8512, %8435
  %8534 = phi float [ %8532, %8512 ], [ 1.000000e+00, %8435 ]
  %8535 = phi float [ %8521, %8512 ], [ %8504, %8435 ]
  %8536 = phi float [ %8522, %8512 ], [ %8505, %8435 ]
  %8537 = phi float [ %8523, %8512 ], [ %8506, %8435 ]
  %8538 = call float @dx.op.dot3.f32(i32 55, float %8458, float %8459, float %8460, float %8535, float %8536, float %8537)  ; Dot3(ax,ay,az,bx,by,bz)
  %8539 = fmul fast float %8538, %8538
  %8540 = call float @dx.op.unary.f32(i32 7, float %8539)  ; Saturate(value)
  %8541 = fsub fast float 1.000000e+00, %8540
  %8542 = fmul fast float %8541, 5.000000e-01
  %8543 = fcmp fast ogt float %8538, 0.000000e+00
  %8544 = fsub fast float 1.000000e+00, %8542
  %8545 = select i1 %8543, float %8542, float %8544
  %8546 = fmul fast float %8545, %8493
  %8547 = fadd fast float %8546, %8491
  %8548 = fmul fast float %8547, 0x3EF0001000000000
  %8549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8548, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8550 = extractvalue %dx.types.ResRet.f32 %8549, 0
  %8551 = fmul fast float %8538, %8475
  %8552 = fadd fast float %8551, %8476
  %8553 = call float @dx.op.unary.f32(i32 7, float %8552)  ; Saturate(value)
  %8554 = select i1 %8497, float 1.000000e+00, float %8553
  %8555 = select i1 %8497, float %8553, float 1.000000e+00
  %8556 = fmul fast float %8502, %8472
  %8557 = fsub fast float 1.000000e+00, %8556
  %8558 = fmul fast float %8557, %8478
  %8559 = call float @dx.op.unary.f32(i32 7, float %8558)  ; Saturate(value)
  %8560 = fmul fast float %8559, %8555
  %8561 = fmul fast float %8560, 2.000000e+00
  %8562 = fsub fast float 3.000000e+00, %8561
  %8563 = fmul fast float %8550, %8534
  %8564 = fmul fast float %8560, %8560
  %8565 = fmul fast float %8564, %8563
  %8566 = fmul fast float %8565, %8562
  %8567 = call float @dx.op.binary.f32(i32 36, float %8566, float %8566)  ; FMin(a,b)
  %8568 = call float @dx.op.binary.f32(i32 36, float %8566, float %8567)  ; FMin(a,b)
  %8569 = fcmp fast ogt float %8568, 0.000000e+00
  br i1 %8569, label %8578, label %8570, !dx.controlflow.hints !132

; <label>:8570                                    ; preds = %9113, %8724, %8533
  %8571 = phi float [ %8437, %8724 ], [ %8437, %8533 ], [ %9156, %9113 ]
  %8572 = phi float [ %8438, %8724 ], [ %8438, %8533 ], [ %9157, %9113 ]
  %8573 = phi float [ %8439, %8724 ], [ %8439, %8533 ], [ %9158, %9113 ]
  %8574 = phi float [ %8440, %8724 ], [ %8440, %8533 ], [ %9150, %9113 ]
  %8575 = phi float [ %8441, %8724 ], [ %8441, %8533 ], [ %9151, %9113 ]
  %8576 = phi float [ %8442, %8724 ], [ %8442, %8533 ], [ %9152, %9113 ]
  %8577 = icmp eq i32 %8436, %8446
  br i1 %8577, label %9159, label %8435

; <label>:8578                                    ; preds = %8533
  %8579 = icmp eq i32 %8494, 255
  br i1 %8579, label %8724, label %8580, !dx.controlflow.hints !133

; <label>:8580                                    ; preds = %8578
  %8581 = mul nuw nsw i32 %8494, 176
  %8582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8581, i32 undef)  ; BufferLoad(srv,index,wot)
  %8583 = extractvalue %dx.types.ResRet.f32 %8582, 0
  %8584 = extractvalue %dx.types.ResRet.f32 %8582, 1
  %8585 = extractvalue %dx.types.ResRet.f32 %8582, 2
  %8586 = extractvalue %dx.types.ResRet.f32 %8582, 3
  %8587 = add nuw nsw i32 %8581, 16
  %8588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8587, i32 undef)  ; BufferLoad(srv,index,wot)
  %8589 = extractvalue %dx.types.ResRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.ResRet.f32 %8588, 1
  %8591 = add nuw nsw i32 %8581, 32
  %8592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8591, i32 undef)  ; BufferLoad(srv,index,wot)
  %8593 = extractvalue %dx.types.ResRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.ResRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.ResRet.f32 %8592, 2
  %8596 = add nuw nsw i32 %8581, 48
  %8597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8596, i32 undef)  ; BufferLoad(srv,index,wot)
  %8598 = extractvalue %dx.types.ResRet.f32 %8597, 0
  %8599 = extractvalue %dx.types.ResRet.f32 %8597, 1
  %8600 = extractvalue %dx.types.ResRet.f32 %8597, 2
  %8601 = extractvalue %dx.types.ResRet.f32 %8597, 3
  %8602 = add nuw nsw i32 %8581, 64
  %8603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8602, i32 undef)  ; BufferLoad(srv,index,wot)
  %8604 = extractvalue %dx.types.ResRet.f32 %8603, 0
  %8605 = extractvalue %dx.types.ResRet.f32 %8603, 1
  %8606 = extractvalue %dx.types.ResRet.f32 %8603, 2
  %8607 = extractvalue %dx.types.ResRet.f32 %8603, 3
  %8608 = add nuw nsw i32 %8581, 80
  %8609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8608, i32 undef)  ; BufferLoad(srv,index,wot)
  %8610 = extractvalue %dx.types.ResRet.f32 %8609, 0
  %8611 = extractvalue %dx.types.ResRet.f32 %8609, 1
  %8612 = extractvalue %dx.types.ResRet.f32 %8609, 2
  %8613 = extractvalue %dx.types.ResRet.f32 %8609, 3
  %8614 = add nuw nsw i32 %8581, 96
  %8615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8614, i32 undef)  ; BufferLoad(srv,index,wot)
  %8616 = extractvalue %dx.types.ResRet.f32 %8615, 0
  %8617 = extractvalue %dx.types.ResRet.f32 %8615, 1
  %8618 = extractvalue %dx.types.ResRet.f32 %8615, 2
  %8619 = extractvalue %dx.types.ResRet.f32 %8615, 3
  %8620 = bitcast float %8590 to i32
  %8621 = fmul fast float %8595, %116
  %8622 = fmul fast float %8595, %117
  %8623 = fmul fast float %8595, %118
  %8624 = fadd fast float %8621, %164
  %8625 = fadd fast float %8622, %165
  %8626 = fadd fast float %8623, %166
  %8627 = fmul fast float %8624, %8598
  %8628 = call float @dx.op.tertiary.f32(i32 46, float %8625, float %8604, float %8627)  ; FMad(a,b,c)
  %8629 = call float @dx.op.tertiary.f32(i32 46, float %8626, float %8610, float %8628)  ; FMad(a,b,c)
  %8630 = fadd fast float %8629, %8616
  %8631 = fmul fast float %8624, %8599
  %8632 = call float @dx.op.tertiary.f32(i32 46, float %8625, float %8605, float %8631)  ; FMad(a,b,c)
  %8633 = call float @dx.op.tertiary.f32(i32 46, float %8626, float %8611, float %8632)  ; FMad(a,b,c)
  %8634 = fadd fast float %8633, %8617
  %8635 = fmul fast float %8624, %8600
  %8636 = call float @dx.op.tertiary.f32(i32 46, float %8625, float %8606, float %8635)  ; FMad(a,b,c)
  %8637 = call float @dx.op.tertiary.f32(i32 46, float %8626, float %8612, float %8636)  ; FMad(a,b,c)
  %8638 = fadd fast float %8637, %8618
  %8639 = fmul fast float %8624, %8601
  %8640 = call float @dx.op.tertiary.f32(i32 46, float %8625, float %8607, float %8639)  ; FMad(a,b,c)
  %8641 = call float @dx.op.tertiary.f32(i32 46, float %8626, float %8613, float %8640)  ; FMad(a,b,c)
  %8642 = fadd fast float %8641, %8619
  %8643 = fdiv fast float %8630, %8642
  %8644 = fdiv fast float %8634, %8642
  %8645 = fdiv fast float %8638, %8642
  %8646 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8645)  ; FMax(a,b)
  %8647 = fmul fast float %237, 0x401921FB60000000
  %8648 = call float @dx.op.unary.f32(i32 13, float %8647)  ; Sin(value)
  %8649 = call float @dx.op.unary.f32(i32 12, float %8647)  ; Cos(value)
  %8650 = fmul fast float %8649, %8594
  %8651 = call float @dx.op.tertiary.f32(i32 46, float %8648, float %8594, float 0.000000e+00)  ; FMad(a,b,c)
  %8652 = fmul fast float %8594, %8648
  %8653 = fsub fast float -0.000000e+00, %8652
  %8654 = call float @dx.op.tertiary.f32(i32 46, float %8649, float %8594, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8655

; <label>:8655                                    ; preds = %8655, %8580
  %8656 = phi float [ 0.000000e+00, %8580 ], [ %8688, %8655 ]
  %8657 = phi float [ 0.000000e+00, %8580 ], [ %8690, %8655 ]
  %8658 = phi i32 [ 0, %8580 ], [ %8691, %8655 ]
  %8659 = mul i32 %8658, 2
  %8660 = add i32 0, %8659
  %8661 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8660
  %8662 = load float, float* %8661, align 4
  %8663 = mul i32 %8658, 2
  %8664 = add i32 1, %8663
  %8665 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8664
  %8666 = load float, float* %8665, align 4
  %8667 = fmul fast float %8650, %8662
  %8668 = call float @dx.op.tertiary.f32(i32 46, float %8666, float %8653, float %8667)  ; FMad(a,b,c)
  %8669 = fmul fast float %8662, %8651
  %8670 = call float @dx.op.tertiary.f32(i32 46, float %8666, float %8654, float %8669)  ; FMad(a,b,c)
  %8671 = fadd fast float %8668, %8643
  %8672 = fadd fast float %8670, %8644
  %8673 = fmul fast float %8671, %8589
  %8674 = fmul fast float %8672, %8589
  %8675 = call float @dx.op.binary.f32(i32 35, float %8673, float %8585)  ; FMax(a,b)
  %8676 = call float @dx.op.binary.f32(i32 35, float %8674, float %8585)  ; FMax(a,b)
  %8677 = call float @dx.op.binary.f32(i32 36, float %8675, float %8586)  ; FMin(a,b)
  %8678 = call float @dx.op.binary.f32(i32 36, float %8676, float %8586)  ; FMin(a,b)
  %8679 = fadd fast float %8677, %8583
  %8680 = fadd fast float %8678, %8584
  %8681 = uitofp i32 %8620 to float
  %8682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8679, float %8680, float %8681, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8683 = extractvalue %dx.types.ResRet.f32 %8682, 0
  %8684 = fsub fast float %8683, %8646
  %8685 = fsub fast float %8684, %8593
  %8686 = fcmp fast ogt float %8685, 0.000000e+00
  %8687 = select i1 %8686, float 1.000000e+00, float 0.000000e+00
  %8688 = fadd fast float %8687, %8656
  %8689 = select i1 %8686, float %8685, float 0.000000e+00
  %8690 = fadd fast float %8689, %8657
  %8691 = add nuw nsw i32 %8658, 1
  %8692 = icmp eq i32 %8691, 8
  br i1 %8692, label %8693, label %8655

; <label>:8693                                    ; preds = %8655
  %8694 = fdiv fast float 1.000000e+00, %8688
  %8695 = fmul fast float %8694, %8690
  %8696 = fdiv fast float 1.000000e+00, %8646
  %8697 = fmul fast float %8695, %8696
  %8698 = call float @dx.op.unary.f32(i32 7, float %8697)  ; Saturate(value)
  %8699 = call float @dx.op.binary.f32(i32 35, float %8698, float 0.000000e+00)  ; FMax(a,b)
  %8700 = fmul fast float %8688, 1.250000e-01
  %8701 = call float @dx.op.unary.f32(i32 7, float %8700)  ; Saturate(value)
  %8702 = fmul fast float %8701, 2.000000e+00
  %8703 = fadd fast float %8702, -1.000000e+00
  %8704 = fcmp fast ogt float %8703, 0.000000e+00
  %8705 = fcmp fast olt float %8703, 0.000000e+00
  %8706 = zext i1 %8704 to i32
  %8707 = zext i1 %8705 to i32
  %8708 = sub nsw i32 %8706, %8707
  %8709 = sitofp i32 %8708 to float
  %8710 = fmul fast float %8709, %8703
  %8711 = fsub fast float 1.000000e+00, %8710
  %8712 = fmul fast float %8711, %8711
  %8713 = fmul fast float %8712, %8711
  %8714 = fsub fast float %8711, %8713
  %8715 = fmul fast float %8714, %8699
  %8716 = fsub fast float 1.000000e+00, %8713
  %8717 = fsub fast float %8716, %8715
  %8718 = fmul fast float %8709, 5.000000e-01
  %8719 = fmul fast float %8718, %8717
  %8720 = fsub fast float -5.000000e-01, %8719
  %8721 = fmul fast float %8720, %8554
  %8722 = fadd fast float %8721, 1.000000e+00
  %8723 = fmul fast float %8722, %8566
  br label %8724

; <label>:8724                                    ; preds = %8693, %8578
  %8725 = phi float [ %8723, %8693 ], [ %8566, %8578 ]
  %8726 = call float @dx.op.binary.f32(i32 36, float %8725, float %8725)  ; FMin(a,b)
  %8727 = call float @dx.op.binary.f32(i32 36, float %8725, float %8726)  ; FMin(a,b)
  %8728 = fcmp fast ogt float %8727, 0.000000e+00
  br i1 %8728, label %8729, label %8570, !dx.controlflow.hints !134

; <label>:8729                                    ; preds = %8724
  %8730 = fmul fast float %8725, %8487
  %8731 = fmul fast float %8725, %8488
  %8732 = fmul fast float %8725, %8489
  %8733 = fsub fast float %8471, %5523
  %8734 = fcmp fast ogt float %8733, 0.000000e+00
  %8735 = fsub fast float %166, %5523
  %8736 = fcmp fast ogt float %8735, 0.000000e+00
  %8737 = xor i1 %8736, %8734
  %8738 = fsub fast float %5523, %8471
  %8739 = fmul fast float %8738, 2.000000e+00
  %8740 = fadd fast float %8739, %8471
  %8741 = select i1 %8737, float %8471, float %8740
  %8742 = fsub fast float %8741, %166
  %8743 = call float @dx.op.dot3.f32(i32 55, float %8498, float %8499, float %8742, float %8498, float %8499, float %8742)  ; Dot3(ax,ay,az,bx,by,bz)
  %8744 = call float @dx.op.unary.f32(i32 25, float %8743)  ; Rsqrt(value)
  %8745 = fmul fast float %8744, %8498
  %8746 = fmul fast float %8744, %8499
  %8747 = fmul fast float %8744, %8742
  %8748 = fsub fast float %5523, %166
  %8749 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8748)  ; Dot3(ax,ay,az,bx,by,bz)
  %8750 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8745, float %8746, float %8747)  ; Dot3(ax,ay,az,bx,by,bz)
  %8751 = fdiv fast float 1.000000e+00, %8750
  %8752 = fmul fast float %8751, %8749
  %8753 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8735, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8754 = fcmp fast ogt float %8753, 0.000000e+00
  %8755 = fcmp fast olt float %8753, 0.000000e+00
  %8756 = zext i1 %8754 to i32
  %8757 = zext i1 %8755 to i32
  %8758 = sub nsw i32 %8756, %8757
  %8759 = sitofp i32 %8758 to float
  %8760 = fsub fast float %8741, %5523
  %8761 = call float @dx.op.dot3.f32(i32 55, float %8498, float %8499, float %8760, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8762 = fcmp fast ogt float %8761, 0.000000e+00
  %8763 = fcmp fast olt float %8761, 0.000000e+00
  %8764 = zext i1 %8762 to i32
  %8765 = zext i1 %8763 to i32
  %8766 = sub nsw i32 %8764, %8765
  %8767 = sitofp i32 %8766 to float
  %8768 = fcmp fast une float %8759, %8767
  br i1 %8768, label %8769, label %8779

; <label>:8769                                    ; preds = %8729
  %8770 = fmul fast float %8752, %8747
  %8771 = fmul fast float %8752, %8746
  %8772 = fmul fast float %8752, %8745
  %8773 = fmul fast float %8772, %8772
  %8774 = fmul fast float %8771, %8771
  %8775 = fadd fast float %8773, %8774
  %8776 = fmul fast float %8770, %8770
  %8777 = fadd fast float %8775, %8776
  %8778 = call float @dx.op.unary.f32(i32 24, float %8777)  ; Sqrt(value)
  br label %8791

; <label>:8779                                    ; preds = %8729
  %8780 = icmp slt i32 %8758, 0
  br i1 %8780, label %8781, label %8791

; <label>:8781                                    ; preds = %8779
  %8782 = fsub fast float %164, %8469
  %8783 = fsub fast float %165, %8470
  %8784 = fsub fast float %166, %8741
  %8785 = fmul fast float %8782, %8782
  %8786 = fmul fast float %8783, %8783
  %8787 = fadd fast float %8785, %8786
  %8788 = fmul fast float %8784, %8784
  %8789 = fadd fast float %8787, %8788
  %8790 = call float @dx.op.unary.f32(i32 24, float %8789)  ; Sqrt(value)
  br label %8791

; <label>:8791                                    ; preds = %8781, %8779, %8769
  %8792 = phi float [ %8778, %8769 ], [ %8790, %8781 ], [ 0.000000e+00, %8779 ]
  %8793 = and i1 %8736, %8734
  %8794 = fsub fast float -0.000000e+00, %8792
  %8795 = select i1 %8793, float -0.000000e+00, float %8794
  %8796 = fmul fast float %5520, 0x3FF7154760000000
  %8797 = fmul fast float %8796, %8795
  %8798 = fmul fast float %5521, 0x3FF7154760000000
  %8799 = fmul fast float %8798, %8795
  %8800 = fmul fast float %5522, 0x3FF7154760000000
  %8801 = fmul fast float %8800, %8795
  %8802 = call float @dx.op.unary.f32(i32 21, float %8797)  ; Exp(value)
  %8803 = call float @dx.op.unary.f32(i32 21, float %8799)  ; Exp(value)
  %8804 = call float @dx.op.unary.f32(i32 21, float %8801)  ; Exp(value)
  %8805 = call float @dx.op.unary.f32(i32 7, float %8802)  ; Saturate(value)
  %8806 = call float @dx.op.unary.f32(i32 7, float %8803)  ; Saturate(value)
  %8807 = call float @dx.op.unary.f32(i32 7, float %8804)  ; Saturate(value)
  %8808 = fmul fast float %8730, %8805
  %8809 = fmul fast float %8731, %8806
  %8810 = fmul fast float %8732, %8807
  %8811 = fsub fast float %8504, %5720
  %8812 = fsub fast float %8505, %5719
  %8813 = fsub fast float %8506, %5718
  %8814 = call float @dx.op.dot3.f32(i32 55, float %8811, float %8812, float %8813, float %8811, float %8812, float %8813)  ; Dot3(ax,ay,az,bx,by,bz)
  %8815 = call float @dx.op.unary.f32(i32 25, float %8814)  ; Rsqrt(value)
  %8816 = fmul fast float %8815, %8811
  %8817 = fmul fast float %8815, %8812
  %8818 = fmul fast float %8815, %8813
  %8819 = call float @dx.op.dot3.f32(i32 55, float %8504, float %8505, float %8506, float %5727, float %5728, float %5729)  ; Dot3(ax,ay,az,bx,by,bz)
  %8820 = call float @dx.op.dot3.f32(i32 55, float %5717, float %5716, float %5715, float %8816, float %8817, float %8818)  ; Dot3(ax,ay,az,bx,by,bz)
  %8821 = call float @dx.op.unary.f32(i32 7, float %8819)  ; Saturate(value)
  %8822 = fmul fast float %8821, %8511
  %8823 = fmul fast float %8821, %8821
  %8824 = fmul fast float %8823, %5760
  %8825 = call float @dx.op.unary.f32(i32 7, float %8824)  ; Saturate(value)
  %8826 = fmul fast float %8822, %8825
  %8827 = bitcast float %8501 to i32
  %8828 = ashr i32 %8827, 1
  %8829 = sub nsw i32 1597463007, %8828
  %8830 = bitcast i32 %8829 to float
  %8831 = fmul fast float %8830, %8498
  %8832 = fmul fast float %8830, %8499
  %8833 = fmul fast float %8830, %8500
  %8834 = fsub fast float %8831, %5720
  %8835 = fsub fast float %8832, %5719
  %8836 = fsub fast float %8833, %5718
  %8837 = call float @dx.op.dot3.f32(i32 55, float %8834, float %8835, float %8836, float %8834, float %8835, float %8836)  ; Dot3(ax,ay,az,bx,by,bz)
  %8838 = call float @dx.op.unary.f32(i32 25, float %8837)  ; Rsqrt(value)
  %8839 = fmul fast float %8834, %8838
  %8840 = fmul fast float %8835, %8838
  %8841 = fmul fast float %8836, %8838
  %8842 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %5729, float %8839, float %8840, float %8841)  ; Dot3(ax,ay,az,bx,by,bz)
  %8843 = fmul fast float %8842, %8842
  %8844 = call float @dx.op.unary.f32(i32 6, float %8819)  ; FAbs(value)
  %8845 = fsub fast float 1.000000e+00, %5753
  %8846 = fmul fast float %5735, %5735
  %8847 = fmul fast float %8846, %8845
  %8848 = fadd fast float %8847, %5753
  %8849 = bitcast float %8848 to i32
  %8850 = ashr i32 %8849, 1
  %8851 = add nsw i32 %8850, 532487669
  %8852 = bitcast i32 %8851 to float
  %8853 = fadd fast float %8852, %5735
  %8854 = fmul fast float %5753, %8843
  %8855 = fsub fast float 1.000000e+00, %8843
  %8856 = fadd fast float %8855, %8854
  %8857 = fmul fast float %8844, %8844
  %8858 = fmul fast float %8857, %8845
  %8859 = fadd fast float %8858, %5753
  %8860 = bitcast float %8859 to i32
  %8861 = ashr i32 %8860, 1
  %8862 = add nsw i32 %8861, 532487669
  %8863 = bitcast i32 %8862 to float
  %8864 = fadd fast float %8863, %8844
  %8865 = fmul fast float %8856, %8856
  %8866 = fmul fast float %8865, %8853
  %8867 = fmul fast float %8866, %8864
  %8868 = fdiv fast float 1.000000e+00, %8867
  %8869 = bitcast float %5753 to i32
  %8870 = sitofp i32 %8869 to float
  %8871 = fmul fast float %8870, 0x3FE7F73180000000
  %8872 = fadd fast float %8871, 0x41AFE27C40000000
  %8873 = fptosi float %8872 to i32
  %8874 = bitcast i32 %8873 to float
  %8875 = fmul fast float %8466, 0x3FD80E9D60000000
  %8876 = fmul fast float %8875, %8830
  %8877 = fadd fast float %8874, %8876
  %8878 = bitcast float %8877 to i32
  %8879 = sub nsw i32 2129859010, %8878
  %8880 = bitcast i32 %8879 to float
  %8881 = fmul fast float %5753, %8868
  %8882 = fmul fast float %8881, %8874
  %8883 = fmul fast float %8882, %8880
  %8884 = fmul fast float %6006, 0x3FF9999980000000
  %8885 = fsub fast float 5.000000e+00, %8884
  %8886 = call float @dx.op.unary.f32(i32 6, float %8820)  ; FAbs(value)
  %8887 = fsub fast float 1.000000e+00, %8886
  %8888 = fmul fast float %6006, 0x41D9660740000000
  %8889 = fadd fast float %8888, 0xC1EFBF8940000000
  %8890 = bitcast float %8887 to i32
  %8891 = sitofp i32 %8890 to float
  %8892 = fmul fast float %8891, %8885
  %8893 = fadd fast float %8889, %8892
  %8894 = fptosi float %8893 to i32
  %8895 = bitcast i32 %8894 to float
  %8896 = fsub fast float 1.000000e+00, %5724
  %8897 = fsub fast float 1.000000e+00, %5725
  %8898 = fsub fast float 1.000000e+00, %5733
  %8899 = fmul fast float %8895, %8896
  %8900 = fmul fast float %8895, %8897
  %8901 = fmul fast float %8895, %8898
  %8902 = fadd fast float %8899, %5724
  %8903 = fadd fast float %8900, %5725
  %8904 = fadd fast float %8901, %5733
  br i1 %6029, label %8905, label %8928

; <label>:8905                                    ; preds = %8791
  %8906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5090, float %8886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8907 = extractvalue %dx.types.ResRet.f32 %8906, 0
  %8908 = extractvalue %dx.types.ResRet.f32 %8906, 1
  %8909 = extractvalue %dx.types.ResRet.f32 %8906, 2
  %8910 = fadd fast float %8907, -5.000000e-01
  %8911 = fadd fast float %8908, -5.000000e-01
  %8912 = fadd fast float %8909, -5.000000e-01
  %8913 = fmul fast float %5724, 4.000000e+00
  %8914 = fmul fast float %8913, %8896
  %8915 = fmul fast float %8914, %8910
  %8916 = fmul fast float %5725, 4.000000e+00
  %8917 = fmul fast float %8916, %8897
  %8918 = fmul fast float %8917, %8911
  %8919 = fmul fast float %5733, 4.000000e+00
  %8920 = fmul fast float %8919, %8898
  %8921 = fmul fast float %8920, %8912
  %8922 = fadd fast float %8915, %8902
  %8923 = fadd fast float %8918, %8903
  %8924 = fadd fast float %8921, %8904
  %8925 = call float @dx.op.unary.f32(i32 7, float %8922)  ; Saturate(value)
  %8926 = call float @dx.op.unary.f32(i32 7, float %8923)  ; Saturate(value)
  %8927 = call float @dx.op.unary.f32(i32 7, float %8924)  ; Saturate(value)
  br label %8928

; <label>:8928                                    ; preds = %8905, %8791
  %8929 = phi float [ %8925, %8905 ], [ %8902, %8791 ]
  %8930 = phi float [ %8926, %8905 ], [ %8903, %8791 ]
  %8931 = phi float [ %8927, %8905 ], [ %8904, %8791 ]
  %8932 = fmul fast float %8819, 9.843750e-01
  %8933 = fadd fast float %8932, 7.812500e-03
  %8934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8933, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8935 = extractvalue %dx.types.ResRet.f32 %8934, 0
  %8936 = extractvalue %dx.types.ResRet.f32 %8934, 1
  %8937 = extractvalue %dx.types.ResRet.f32 %8934, 2
  %8938 = extractvalue %dx.types.ResRet.f32 %8934, 3
  %8939 = fsub fast float %8937, %8935
  %8940 = fsub fast float %8938, %8936
  %8941 = fmul fast float %8939, %6016
  %8942 = fmul fast float %8940, %6016
  %8943 = fadd fast float %8941, %8935
  %8944 = fadd fast float %8942, %8936
  %8945 = fmul fast float %8943, %5724
  %8946 = fmul fast float %8943, %5725
  %8947 = fmul fast float %8943, %5733
  %8948 = fadd fast float %8945, %8944
  %8949 = fadd fast float %8946, %8944
  %8950 = fadd fast float %8947, %8944
  br i1 %6029, label %8951, label %8974

; <label>:8951                                    ; preds = %8928
  %8952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5090, float %8819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8953 = extractvalue %dx.types.ResRet.f32 %8952, 0
  %8954 = extractvalue %dx.types.ResRet.f32 %8952, 1
  %8955 = extractvalue %dx.types.ResRet.f32 %8952, 2
  %8956 = fadd fast float %8953, -5.000000e-01
  %8957 = fadd fast float %8954, -5.000000e-01
  %8958 = fadd fast float %8955, -5.000000e-01
  %8959 = fmul fast float %5724, 4.000000e+00
  %8960 = fmul fast float %8959, %8896
  %8961 = fmul fast float %8960, %8956
  %8962 = fmul fast float %5725, 4.000000e+00
  %8963 = fmul fast float %8962, %8897
  %8964 = fmul fast float %8963, %8957
  %8965 = fmul fast float %5733, 4.000000e+00
  %8966 = fmul fast float %8965, %8898
  %8967 = fmul fast float %8966, %8958
  %8968 = fadd fast float %8961, %8948
  %8969 = fadd fast float %8964, %8949
  %8970 = fadd fast float %8967, %8950
  %8971 = call float @dx.op.unary.f32(i32 7, float %8968)  ; Saturate(value)
  %8972 = call float @dx.op.unary.f32(i32 7, float %8969)  ; Saturate(value)
  %8973 = call float @dx.op.unary.f32(i32 7, float %8970)  ; Saturate(value)
  br label %8974

; <label>:8974                                    ; preds = %8951, %8928
  %8975 = phi float [ %8971, %8951 ], [ %8948, %8928 ]
  %8976 = phi float [ %8972, %8951 ], [ %8949, %8928 ]
  %8977 = phi float [ %8973, %8951 ], [ %8950, %8928 ]
  %8978 = call float @dx.op.binary.f32(i32 35, float %8976, float %8977)  ; FMax(a,b)
  %8979 = call float @dx.op.binary.f32(i32 35, float %8975, float %8978)  ; FMax(a,b)
  %8980 = fsub fast float 1.000000e+00, %8979
  %8981 = call float @dx.op.binary.f32(i32 35, float %8844, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8982 = fdiv fast float %4427, %8981
  %8983 = fmul fast float %6576, %8982
  %8984 = fmul fast float %6578, %8982
  %8985 = fmul fast float %6580, %8982
  %8986 = call float @dx.op.unary.f32(i32 21, float %8983)  ; Exp(value)
  %8987 = call float @dx.op.unary.f32(i32 21, float %8984)  ; Exp(value)
  %8988 = call float @dx.op.unary.f32(i32 21, float %8985)  ; Exp(value)
  %8989 = call float @dx.op.unary.f32(i32 7, float %8986)  ; Saturate(value)
  %8990 = call float @dx.op.unary.f32(i32 7, float %8987)  ; Saturate(value)
  %8991 = call float @dx.op.unary.f32(i32 7, float %8988)  ; Saturate(value)
  %8992 = select i1 %6573, float %8989, float 0.000000e+00
  %8993 = select i1 %6574, float %8990, float 0.000000e+00
  %8994 = select i1 %6575, float %8991, float 0.000000e+00
  %8995 = fsub fast float -0.000000e+00, %5727
  %8996 = fsub fast float -0.000000e+00, %5728
  %8997 = fsub fast float -0.000000e+00, %5729
  %8998 = call float @dx.op.dot3.f32(i32 55, float %8504, float %8505, float %8506, float %8995, float %8996, float %8997)  ; Dot3(ax,ay,az,bx,by,bz)
  %8999 = call float @dx.op.unary.f32(i32 7, float %8998)  ; Saturate(value)
  %9000 = fmul fast float %8999, %8511
  %9001 = fmul fast float %8999, 9.843750e-01
  %9002 = fadd fast float %9001, 7.812500e-03
  %9003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %9002, float %6010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9004 = extractvalue %dx.types.ResRet.f32 %9003, 0
  %9005 = extractvalue %dx.types.ResRet.f32 %9003, 1
  %9006 = extractvalue %dx.types.ResRet.f32 %9003, 2
  %9007 = extractvalue %dx.types.ResRet.f32 %9003, 3
  %9008 = fsub fast float %9006, %9004
  %9009 = fsub fast float %9007, %9005
  %9010 = fmul fast float %9008, %6016
  %9011 = fmul fast float %9009, %6016
  %9012 = fadd fast float %9010, %9004
  %9013 = fadd fast float %9011, %9005
  %9014 = fmul fast float %9012, %5724
  %9015 = fmul fast float %9012, %5725
  %9016 = fmul fast float %9012, %5733
  %9017 = fadd fast float %9014, %9013
  %9018 = fadd fast float %9015, %9013
  %9019 = fadd fast float %9016, %9013
  br i1 %6029, label %9020, label %9043

; <label>:9020                                    ; preds = %8974
  %9021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5090, float %8999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9022 = extractvalue %dx.types.ResRet.f32 %9021, 0
  %9023 = extractvalue %dx.types.ResRet.f32 %9021, 1
  %9024 = extractvalue %dx.types.ResRet.f32 %9021, 2
  %9025 = fadd fast float %9022, -5.000000e-01
  %9026 = fadd fast float %9023, -5.000000e-01
  %9027 = fadd fast float %9024, -5.000000e-01
  %9028 = fmul fast float %5724, 4.000000e+00
  %9029 = fmul fast float %9028, %8896
  %9030 = fmul fast float %9029, %9025
  %9031 = fmul fast float %5725, 4.000000e+00
  %9032 = fmul fast float %9031, %8897
  %9033 = fmul fast float %9032, %9026
  %9034 = fmul fast float %5733, 4.000000e+00
  %9035 = fmul fast float %9034, %8898
  %9036 = fmul fast float %9035, %9027
  %9037 = fadd fast float %9030, %9017
  %9038 = fadd fast float %9033, %9018
  %9039 = fadd fast float %9036, %9019
  %9040 = call float @dx.op.unary.f32(i32 7, float %9037)  ; Saturate(value)
  %9041 = call float @dx.op.unary.f32(i32 7, float %9038)  ; Saturate(value)
  %9042 = call float @dx.op.unary.f32(i32 7, float %9039)  ; Saturate(value)
  br label %9043

; <label>:9043                                    ; preds = %9020, %8974
  %9044 = phi float [ %9040, %9020 ], [ %9017, %8974 ]
  %9045 = phi float [ %9041, %9020 ], [ %9018, %8974 ]
  %9046 = phi float [ %9042, %9020 ], [ %9019, %8974 ]
  %9047 = call float @dx.op.binary.f32(i32 35, float %9045, float %9046)  ; FMax(a,b)
  %9048 = call float @dx.op.binary.f32(i32 35, float %9044, float %9047)  ; FMax(a,b)
  %9049 = fsub fast float 1.000000e+00, %9048
  %9050 = fmul fast float %5750, %6640
  %9051 = fadd fast float %6642, %9050
  %9052 = call float @dx.op.unary.f32(i32 7, float %9051)  ; Saturate(value)
  %9053 = fsub fast float %8831, %5741
  %9054 = fsub fast float %8832, %5742
  %9055 = fsub fast float %8833, %5743
  %9056 = call float @dx.op.dot3.f32(i32 55, float %9053, float %9054, float %9055, float %9053, float %9054, float %9055)  ; Dot3(ax,ay,az,bx,by,bz)
  %9057 = call float @dx.op.unary.f32(i32 25, float %9056)  ; Rsqrt(value)
  %9058 = fmul fast float %9053, %9057
  %9059 = fmul fast float %9054, %9057
  %9060 = fmul fast float %9055, %9057
  %9061 = call float @dx.op.dot3.f32(i32 55, float %8995, float %8996, float %8997, float %9058, float %9059, float %9060)  ; Dot3(ax,ay,az,bx,by,bz)
  %9062 = fmul fast float %9061, %9061
  %9063 = call float @dx.op.unary.f32(i32 6, float %8999)  ; FAbs(value)
  %9064 = call float @dx.op.binary.f32(i32 35, float %9052, float 0x3F847AE140000000)  ; FMax(a,b)
  %9065 = fmul fast float %9064, %9064
  %9066 = fmul fast float %9065, %9065
  %9067 = fsub fast float 1.000000e+00, %9066
  %9068 = fmul fast float %8846, %9067
  %9069 = fadd fast float %9068, %9066
  %9070 = bitcast float %9069 to i32
  %9071 = ashr i32 %9070, 1
  %9072 = add nsw i32 %9071, 532487669
  %9073 = bitcast i32 %9072 to float
  %9074 = fadd fast float %9073, %5735
  %9075 = fmul fast float %9066, %9062
  %9076 = fsub fast float 1.000000e+00, %9062
  %9077 = fadd fast float %9076, %9075
  %9078 = fmul fast float %9063, %9063
  %9079 = fmul fast float %9078, %9067
  %9080 = fadd fast float %9079, %9066
  %9081 = bitcast float %9080 to i32
  %9082 = ashr i32 %9081, 1
  %9083 = add nsw i32 %9082, 532487669
  %9084 = bitcast i32 %9083 to float
  %9085 = fadd fast float %9084, %9063
  %9086 = fmul fast float %9077, %9077
  %9087 = fmul fast float %9086, %9074
  %9088 = fmul fast float %9087, %9085
  %9089 = fdiv fast float 1.000000e+00, %9088
  %9090 = bitcast float %9066 to i32
  %9091 = sitofp i32 %9090 to float
  %9092 = fmul fast float %9091, 0x3FE7F73180000000
  %9093 = fadd fast float %9092, 0x41AFE27C40000000
  %9094 = fptosi float %9093 to i32
  %9095 = bitcast i32 %9094 to float
  %9096 = fadd fast float %9095, %8876
  %9097 = bitcast float %9096 to i32
  %9098 = sub nsw i32 2129859010, %9097
  %9099 = bitcast i32 %9098 to float
  %9100 = fmul fast float %9066, %9089
  %9101 = fmul fast float %9100, %9095
  %9102 = fmul fast float %9101, %9099
  br i1 %8496, label %9103, label %9113

; <label>:9103                                    ; preds = %9043
  %9104 = fmul fast float %9000, %8992
  %9105 = fmul fast float %9000, %8993
  %9106 = fmul fast float %9000, %8994
  %9107 = fmul fast float %9104, %9049
  %9108 = fmul fast float %9107, %9102
  %9109 = fmul fast float %9105, %9049
  %9110 = fmul fast float %9109, %9102
  %9111 = fmul fast float %9106, %9049
  %9112 = fmul fast float %9111, %9102
  br label %9113

; <label>:9113                                    ; preds = %9103, %9043
  %9114 = phi float [ %9108, %9103 ], [ 0.000000e+00, %9043 ]
  %9115 = phi float [ %9110, %9103 ], [ 0.000000e+00, %9043 ]
  %9116 = phi float [ %9112, %9103 ], [ 0.000000e+00, %9043 ]
  %9117 = fmul fast float %8929, %8883
  %9118 = fmul fast float %8930, %8883
  %9119 = fmul fast float %8931, %8883
  %9120 = fsub fast float 1.000000e+00, %8820
  %9121 = bitcast float %9120 to i32
  %9122 = sitofp i32 %9121 to float
  %9123 = fmul fast float %9122, 5.000000e+00
  %9124 = fadd fast float %9123, 0xC1EFBF8940000000
  %9125 = fptosi float %9124 to i32
  %9126 = bitcast i32 %9125 to float
  %9127 = fmul fast float %9126, %5091
  %9128 = fmul fast float %8980, %9127
  %9129 = fmul fast float %9128, %6568
  %9130 = fmul fast float %9128, %6569
  %9131 = fmul fast float %9128, %6570
  %9132 = fadd fast float %9129, %9117
  %9133 = fadd fast float %9130, %9118
  %9134 = fadd fast float %9131, %9119
  %9135 = fmul fast float %9132, %8826
  %9136 = fmul fast float %9133, %8826
  %9137 = fmul fast float %9134, %8826
  %9138 = fadd fast float %9135, %9114
  %9139 = fadd fast float %9136, %9115
  %9140 = fadd fast float %9137, %9116
  %9141 = fmul fast float %8808, %5087
  %9142 = fmul fast float %9141, %8826
  %9143 = fmul fast float %9142, %8980
  %9144 = fmul fast float %8809, %5087
  %9145 = fmul fast float %9144, %8826
  %9146 = fmul fast float %9145, %8980
  %9147 = fmul fast float %8810, %5087
  %9148 = fmul fast float %9147, %8826
  %9149 = fmul fast float %9148, %8980
  %9150 = fadd fast float %9143, %8440
  %9151 = fadd fast float %9146, %8441
  %9152 = fadd fast float %9149, %8442
  %9153 = fmul fast float %9141, %9138
  %9154 = fmul fast float %9144, %9139
  %9155 = fmul fast float %9147, %9140
  %9156 = fadd fast float %9153, %8437
  %9157 = fadd fast float %9154, %8438
  %9158 = fadd fast float %9155, %8439
  br label %8570

; <label>:9159                                    ; preds = %8570
  br label %9160

; <label>:9160                                    ; preds = %9159, %8403
  %9161 = phi float [ %8405, %8403 ], [ %8571, %9159 ]
  %9162 = phi float [ %8406, %8403 ], [ %8572, %9159 ]
  %9163 = phi float [ %8407, %8403 ], [ %8573, %9159 ]
  %9164 = phi float [ %8408, %8403 ], [ %8574, %9159 ]
  %9165 = phi float [ %8409, %8403 ], [ %8575, %9159 ]
  %9166 = phi float [ %8410, %8403 ], [ %8576, %9159 ]
  %9167 = add i32 %8404, 1
  %9168 = icmp ugt i32 %9167, %8400
  br i1 %9168, label %9169, label %8403

; <label>:9169                                    ; preds = %9160
  br label %9170

; <label>:9170                                    ; preds = %9169, %8353, %8343
  %9171 = phi float [ %8344, %8343 ], [ %8344, %8353 ], [ %9161, %9169 ]
  %9172 = phi float [ %8345, %8343 ], [ %8345, %8353 ], [ %9162, %9169 ]
  %9173 = phi float [ %8346, %8343 ], [ %8346, %8353 ], [ %9163, %9169 ]
  %9174 = phi float [ %8347, %8343 ], [ %8347, %8353 ], [ %9164, %9169 ]
  %9175 = phi float [ %8348, %8343 ], [ %8348, %8353 ], [ %9165, %9169 ]
  %9176 = phi float [ %8349, %8343 ], [ %8349, %8353 ], [ %9166, %9169 ]
  %9177 = fmul fast float %5087, %6597
  %9178 = fsub fast float -0.000000e+00, %9177
  %9179 = fmul fast float %5087, %6598
  %9180 = fsub fast float -0.000000e+00, %9179
  %9181 = fmul fast float %5087, %6599
  %9182 = fsub fast float -0.000000e+00, %9181
  %9183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9184 = extractvalue %dx.types.CBufRet.f32 %9183, 0
  %9185 = fmul fast float %9184, %6603
  %9186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9187 = extractvalue %dx.types.CBufRet.f32 %9186, 3
  %9188 = fsub fast float 1.000000e+00, %5094
  %9189 = call float @dx.op.unary.f32(i32 7, float %9188)  ; Saturate(value)
  %9190 = fadd fast float %9176, %5093
  %9191 = fmul fast float %9190, %5094
  %9192 = fmul fast float %9189, %9187
  %9193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9194 = extractvalue %dx.types.CBufRet.f32 %9193, 3
  %9195 = fmul fast float %9174, %5721
  %9196 = fmul fast float %9175, %5722
  %9197 = fmul fast float %9176, %5723
  %9198 = fcmp fast ogt float %97, %186
  %9199 = and i1 %9198, %5526
  %9200 = or i1 %5532, %9199
  %9201 = icmp eq i32 %5525, 2
  %9202 = fcmp fast ole float %97, %186
  %9203 = and i1 %9202, %9201
  %9204 = or i1 %9203, %9200
  br i1 %9199, label %9205, label %9462

; <label>:9205                                    ; preds = %9170
  %9206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9207 = extractvalue %dx.types.CBufRet.f32 %9206, 2
  %9208 = extractvalue %dx.types.CBufRet.f32 %9206, 3
  %9209 = fmul fast float %9207, %109
  %9210 = fmul fast float %9208, %110
  %9211 = call float @dx.op.unary.f32(i32 7, float %9209)  ; Saturate(value)
  %9212 = call float @dx.op.unary.f32(i32 7, float %9210)  ; Saturate(value)
  %9213 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9211, float %9212, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9214 = extractvalue %dx.types.ResRet.f32 %9213, 0
  %9215 = extractvalue %dx.types.ResRet.f32 %9213, 1
  %9216 = extractvalue %dx.types.ResRet.f32 %9213, 2
  %9217 = extractvalue %dx.types.ResRet.f32 %9213, 3
  %9218 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9211, float %9212, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9219 = extractvalue %dx.types.ResRet.f32 %9218, 0
  %9220 = extractvalue %dx.types.ResRet.f32 %9218, 1
  %9221 = extractvalue %dx.types.ResRet.f32 %9218, 2
  %9222 = extractvalue %dx.types.ResRet.f32 %9218, 3
  %9223 = call float @dx.op.binary.f32(i32 35, float %9215, float %9216)  ; FMax(a,b)
  %9224 = call float @dx.op.binary.f32(i32 35, float %9214, float %9223)  ; FMax(a,b)
  %9225 = call float @dx.op.binary.f32(i32 35, float %9224, float %9217)  ; FMax(a,b)
  %9226 = call float @dx.op.binary.f32(i32 36, float %9220, float %9221)  ; FMin(a,b)
  %9227 = call float @dx.op.binary.f32(i32 36, float %9219, float %9226)  ; FMin(a,b)
  %9228 = call float @dx.op.binary.f32(i32 36, float %9227, float %9222)  ; FMin(a,b)
  %9229 = fmul fast float %9225, 2.550000e+02
  %9230 = fadd fast float %9229, 0x3F70101020000000
  %9231 = fptoui float %9230 to i32
  %9232 = fmul fast float %9228, 2.550000e+02
  %9233 = fadd fast float %9232, 0x3F70101020000000
  %9234 = fptoui float %9233 to i32
  %9235 = icmp ult i32 %9231, %9234
  br i1 %9235, label %9236, label %9404

; <label>:9236                                    ; preds = %9205
  %9237 = fcmp fast ogt float %96, 9.843750e-01
  %9238 = fadd fast float %97, -4.000000e+00
  %9239 = select i1 %9237, float -4.000000e+00, float %9238
  %9240 = call float @dx.op.binary.f32(i32 35, float %9239, float 0.000000e+00)  ; FMax(a,b)
  %9241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9242 = extractvalue %dx.types.CBufRet.f32 %9241, 0
  %9243 = fadd fast float %9242, %9240
  %9244 = extractvalue %dx.types.CBufRet.f32 %9241, 2
  %9245 = fmul fast float %9243, %9244
  %9246 = call float @dx.op.unary.f32(i32 23, float %9245)  ; Log(value)
  %9247 = extractvalue %dx.types.CBufRet.f32 %9241, 3
  %9248 = fmul fast float %9247, %9246
  %9249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9250 = extractvalue %dx.types.CBufRet.f32 %9249, 2
  %9251 = fmul fast float %9248, %9250
  %9252 = call float @dx.op.unary.f32(i32 7, float %9251)  ; Saturate(value)
  %9253 = uitofp i32 %9231 to float
  %9254 = uitofp i32 %9234 to float
  %9255 = fadd fast float %9253, 5.000000e-01
  %9256 = fadd fast float %9254, 5.000000e-01
  %9257 = fmul fast float %9250, %9255
  %9258 = fmul fast float %9250, %9256
  %9259 = fadd fast float %9257, 0x3F0FFB4800000000
  %9260 = fadd fast float %9258, 0xBF0FFB4800000000
  %9261 = call float @dx.op.binary.f32(i32 35, float %9252, float %9259)  ; FMax(a,b)
  %9262 = call float @dx.op.binary.f32(i32 36, float %9261, float %9260)  ; FMin(a,b)
  %9263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9264 = extractvalue %dx.types.CBufRet.f32 %9263, 1
  %9265 = extractvalue %dx.types.CBufRet.f32 %9263, 2
  %9266 = extractvalue %dx.types.CBufRet.f32 %9263, 0
  %9267 = fmul fast float %9264, %9262
  %9268 = fadd fast float %9266, %9267
  %9269 = fadd fast float %9266, %9265
  %9270 = fsub fast float %9264, %9265
  %9271 = fadd fast float %9270, %9266
  %9272 = call float @dx.op.binary.f32(i32 35, float %9268, float %9269)  ; FMax(a,b)
  %9273 = call float @dx.op.binary.f32(i32 36, float %9272, float %9271)  ; FMin(a,b)
  %9274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9211, float %9212, float %9273, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9275 = extractvalue %dx.types.ResRet.f32 %9274, 0
  %9276 = extractvalue %dx.types.ResRet.f32 %9274, 1
  %9277 = extractvalue %dx.types.ResRet.f32 %9274, 2
  %9278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9279 = extractvalue %dx.types.CBufRet.i32 %9278, 0
  %9280 = extractvalue %dx.types.CBufRet.i32 %9278, 1
  %9281 = uitofp i32 %9279 to float
  %9282 = uitofp i32 %9280 to float
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 0
  %9285 = extractvalue %dx.types.CBufRet.f32 %9283, 1
  %9286 = fmul fast float %9281, %9211
  %9287 = fmul fast float %9282, %9212
  %9288 = fadd fast float %9286, -5.000000e-01
  %9289 = fadd fast float %9287, -5.000000e-01
  %9290 = call float @dx.op.unary.f32(i32 22, float %9288)  ; Frc(value)
  %9291 = call float @dx.op.unary.f32(i32 22, float %9289)  ; Frc(value)
  %9292 = fmul fast float %9290, %9290
  %9293 = fmul fast float %9292, %9290
  %9294 = fsub fast float 3.000000e+00, %9290
  %9295 = fmul fast float %9292, %9294
  %9296 = fmul fast float %9290, 3.000000e+00
  %9297 = fmul fast float %9293, 3.000000e+00
  %9298 = fmul fast float %9292, 6.000000e+00
  %9299 = fsub fast float %9297, %9298
  %9300 = fadd fast float %9299, 4.000000e+00
  %9301 = fmul fast float %9300, 0x3FC5555560000000
  %9302 = fmul fast float %9293, -3.000000e+00
  %9303 = fadd fast float %9292, %9290
  %9304 = fmul fast float %9303, 3.000000e+00
  %9305 = fadd fast float %9302, 1.000000e+00
  %9306 = fadd fast float %9305, %9304
  %9307 = fmul fast float %9293, 0x3FC5555560000000
  %9308 = fmul fast float %9291, %9291
  %9309 = fmul fast float %9308, %9291
  %9310 = fsub fast float 3.000000e+00, %9291
  %9311 = fmul fast float %9308, %9310
  %9312 = fmul fast float %9291, 3.000000e+00
  %9313 = fmul fast float %9309, 3.000000e+00
  %9314 = fmul fast float %9308, 6.000000e+00
  %9315 = fsub fast float %9313, %9314
  %9316 = fadd fast float %9315, 4.000000e+00
  %9317 = fmul fast float %9316, 0x3FC5555560000000
  %9318 = fmul fast float %9309, -3.000000e+00
  %9319 = fadd fast float %9308, %9291
  %9320 = fmul fast float %9319, 3.000000e+00
  %9321 = fadd fast float %9318, 1.000000e+00
  %9322 = fadd fast float %9321, %9320
  %9323 = fmul fast float %9309, 0x3FC5555560000000
  %9324 = fadd fast float %9290, 1.000000e+00
  %9325 = fsub fast float 1.000000e+00, %9296
  %9326 = fadd fast float %9325, %9295
  %9327 = fadd fast float %9326, %9300
  %9328 = fmul fast float %9327, 0x3FC5555560000000
  %9329 = fdiv fast float %9301, %9328
  %9330 = fsub fast float %9324, %9329
  %9331 = fsub fast float 1.000000e+00, %9290
  %9332 = fadd fast float %9306, %9293
  %9333 = fmul fast float %9332, 0x3FC5555560000000
  %9334 = fdiv fast float %9307, %9333
  %9335 = fadd fast float %9331, %9334
  %9336 = fadd fast float %9291, 1.000000e+00
  %9337 = fsub fast float 1.000000e+00, %9312
  %9338 = fadd fast float %9337, %9311
  %9339 = fadd fast float %9338, %9316
  %9340 = fmul fast float %9339, 0x3FC5555560000000
  %9341 = fdiv fast float %9317, %9340
  %9342 = fsub fast float %9336, %9341
  %9343 = fsub fast float 1.000000e+00, %9291
  %9344 = fadd fast float %9322, %9309
  %9345 = fmul fast float %9344, 0x3FC5555560000000
  %9346 = fdiv fast float %9323, %9345
  %9347 = fadd fast float %9346, %9343
  %9348 = fmul fast float %9330, %9284
  %9349 = fsub fast float %9211, %9348
  %9350 = fmul fast float %9335, %9284
  %9351 = fadd fast float %9350, %9211
  %9352 = fmul fast float %9347, %9285
  %9353 = fadd fast float %9352, %9212
  %9354 = fmul fast float %9342, %9285
  %9355 = fsub fast float %9212, %9354
  %9356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9349, float %9355, float %9273, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9357 = extractvalue %dx.types.ResRet.f32 %9356, 0
  %9358 = extractvalue %dx.types.ResRet.f32 %9356, 1
  %9359 = extractvalue %dx.types.ResRet.f32 %9356, 2
  %9360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9351, float %9355, float %9273, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9361 = extractvalue %dx.types.ResRet.f32 %9360, 0
  %9362 = extractvalue %dx.types.ResRet.f32 %9360, 1
  %9363 = extractvalue %dx.types.ResRet.f32 %9360, 2
  %9364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9349, float %9353, float %9273, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9365 = extractvalue %dx.types.ResRet.f32 %9364, 0
  %9366 = extractvalue %dx.types.ResRet.f32 %9364, 1
  %9367 = extractvalue %dx.types.ResRet.f32 %9364, 2
  %9368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9351, float %9353, float %9273, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9369 = extractvalue %dx.types.ResRet.f32 %9368, 0
  %9370 = extractvalue %dx.types.ResRet.f32 %9368, 1
  %9371 = extractvalue %dx.types.ResRet.f32 %9368, 2
  %9372 = fsub fast float %9365, %9357
  %9373 = fsub fast float %9366, %9358
  %9374 = fsub fast float %9367, %9359
  %9375 = fmul fast float %9372, %9345
  %9376 = fmul fast float %9373, %9345
  %9377 = fmul fast float %9374, %9345
  %9378 = fadd fast float %9375, %9357
  %9379 = fadd fast float %9376, %9358
  %9380 = fadd fast float %9377, %9359
  %9381 = fsub fast float %9369, %9361
  %9382 = fsub fast float %9370, %9362
  %9383 = fsub fast float %9371, %9363
  %9384 = fmul fast float %9381, %9345
  %9385 = fmul fast float %9382, %9345
  %9386 = fmul fast float %9383, %9345
  %9387 = fsub fast float %9361, %9378
  %9388 = fadd fast float %9387, %9384
  %9389 = fsub fast float %9362, %9379
  %9390 = fadd fast float %9389, %9385
  %9391 = fsub fast float %9363, %9380
  %9392 = fadd fast float %9391, %9386
  %9393 = fmul fast float %9388, %9333
  %9394 = fmul fast float %9390, %9333
  %9395 = fmul fast float %9392, %9333
  %9396 = fadd fast float %9393, %9378
  %9397 = fadd fast float %9394, %9379
  %9398 = fadd fast float %9395, %9380
  %9399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9400 = extractvalue %dx.types.CBufRet.f32 %9399, 1
  %9401 = fmul fast float %9396, %9400
  %9402 = fmul fast float %9397, %9400
  %9403 = fmul fast float %9398, %9400
  br label %9404

; <label>:9404                                    ; preds = %9236, %9205
  %9405 = phi float [ %9275, %9236 ], [ 1.000000e+00, %9205 ]
  %9406 = phi float [ %9276, %9236 ], [ 1.000000e+00, %9205 ]
  %9407 = phi float [ %9277, %9236 ], [ 1.000000e+00, %9205 ]
  %9408 = phi float [ %9401, %9236 ], [ 0.000000e+00, %9205 ]
  %9409 = phi float [ %9402, %9236 ], [ 0.000000e+00, %9205 ]
  %9410 = phi float [ %9403, %9236 ], [ 0.000000e+00, %9205 ]
  %9411 = fmul fast float %9408, %9178
  %9412 = fmul fast float %9409, %9180
  %9413 = fmul fast float %9410, %9182
  %9414 = call float @dx.op.dot3.f32(i32 55, float %9405, float %9406, float %9407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9415 = call float @dx.op.dot3.f32(i32 55, float %9411, float %9412, float %9413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9416 = select i1 %226, float %9414, float %9405
  %9417 = select i1 %226, float %9414, float %9406
  %9418 = select i1 %226, float 1.000000e+00, float %9407
  %9419 = select i1 %226, float %9415, float %9411
  %9420 = select i1 %226, float 0.000000e+00, float %9412
  %9421 = select i1 %226, float 0.000000e+00, float %9413
  %9422 = fmul fast float %9416, %9195
  %9423 = fmul fast float %9417, %9196
  %9424 = fmul fast float %9418, %9197
  %9425 = fadd fast float %9422, %9419
  %9426 = fadd fast float %9423, %9420
  %9427 = fadd fast float %9421, %9424
  %9428 = fmul fast float %9416, %9171
  %9429 = fmul fast float %9417, %9172
  %9430 = fmul fast float %9418, %9173
  %9431 = fmul fast float %134, %9207
  %9432 = fmul fast float %136, %9208
  %9433 = fsub fast float 1.000000e+00, %9431
  %9434 = fsub fast float 1.000000e+00, %9432
  %9435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9436 = extractvalue %dx.types.CBufRet.f32 %9435, 0
  %9437 = extractvalue %dx.types.CBufRet.f32 %9435, 1
  %9438 = extractvalue %dx.types.CBufRet.f32 %9435, 2
  %9439 = fmul fast float %9433, %9436
  %9440 = fmul fast float %9433, %9437
  %9441 = fmul fast float %9433, %9438
  %9442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9443 = extractvalue %dx.types.CBufRet.f32 %9442, 0
  %9444 = extractvalue %dx.types.CBufRet.f32 %9442, 1
  %9445 = extractvalue %dx.types.CBufRet.f32 %9442, 2
  %9446 = fmul fast float %9434, %9443
  %9447 = fmul fast float %9434, %9444
  %9448 = fmul fast float %9434, %9445
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 0
  %9451 = extractvalue %dx.types.CBufRet.f32 %9449, 1
  %9452 = extractvalue %dx.types.CBufRet.f32 %9449, 2
  %9453 = fadd fast float %9446, %9450
  %9454 = fadd fast float %9453, %9439
  %9455 = fadd fast float %9447, %9451
  %9456 = fadd fast float %9455, %9440
  %9457 = fadd fast float %9448, %9452
  %9458 = fadd fast float %9457, %9441
  %9459 = fmul fast float %9454, %186
  %9460 = fmul fast float %9456, %186
  %9461 = fmul fast float %9458, %186
  br label %9462

; <label>:9462                                    ; preds = %9404, %9170
  %9463 = phi float [ %9459, %9404 ], [ %164, %9170 ]
  %9464 = phi float [ %9460, %9404 ], [ %165, %9170 ]
  %9465 = phi float [ %9461, %9404 ], [ %166, %9170 ]
  %9466 = phi float [ %186, %9404 ], [ %97, %9170 ]
  %9467 = phi float [ %9425, %9404 ], [ %9195, %9170 ]
  %9468 = phi float [ %9426, %9404 ], [ %9196, %9170 ]
  %9469 = phi float [ %9427, %9404 ], [ %9197, %9170 ]
  %9470 = phi float [ %9428, %9404 ], [ %9171, %9170 ]
  %9471 = phi float [ %9429, %9404 ], [ %9172, %9170 ]
  %9472 = phi float [ %9430, %9404 ], [ %9173, %9170 ]
  %9473 = phi float [ %9405, %9404 ], [ 1.000000e+00, %9170 ]
  br i1 %9204, label %10628, label %9474

; <label>:9474                                    ; preds = %9462
  %9475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9476 = extractvalue %dx.types.CBufRet.f32 %9475, 0
  %9477 = extractvalue %dx.types.CBufRet.f32 %9475, 1
  %9478 = extractvalue %dx.types.CBufRet.f32 %9475, 2
  %9479 = extractvalue %dx.types.CBufRet.f32 %9475, 3
  %9480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9481 = extractvalue %dx.types.CBufRet.f32 %9480, 0
  %9482 = extractvalue %dx.types.CBufRet.f32 %9480, 1
  %9483 = extractvalue %dx.types.CBufRet.f32 %9480, 2
  %9484 = extractvalue %dx.types.CBufRet.f32 %9480, 3
  %9485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9486 = extractvalue %dx.types.CBufRet.f32 %9485, 0
  %9487 = extractvalue %dx.types.CBufRet.f32 %9485, 1
  %9488 = extractvalue %dx.types.CBufRet.f32 %9485, 2
  %9489 = extractvalue %dx.types.CBufRet.f32 %9485, 3
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 0
  %9492 = extractvalue %dx.types.CBufRet.f32 %9490, 1
  %9493 = extractvalue %dx.types.CBufRet.f32 %9490, 2
  %9494 = extractvalue %dx.types.CBufRet.f32 %9490, 3
  %9495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9496 = extractvalue %dx.types.CBufRet.f32 %9495, 3
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 3
  %9499 = extractvalue %dx.types.CBufRet.f32 %9497, 0
  %9500 = extractvalue %dx.types.CBufRet.f32 %9497, 1
  %9501 = extractvalue %dx.types.CBufRet.f32 %9497, 2
  %9502 = fcmp fast olt float %9501, -5.000000e-01
  %9503 = call float @dx.op.dot3.f32(i32 55, float %9463, float %9464, float %9465, float %9463, float %9464, float %9465)  ; Dot3(ax,ay,az,bx,by,bz)
  %9504 = call float @dx.op.unary.f32(i32 25, float %9503)  ; Rsqrt(value)
  %9505 = fmul fast float %9504, %9503
  %9506 = fmul fast float %9504, %9463
  %9507 = fmul fast float %9504, %9464
  %9508 = fmul fast float %9504, %9465
  %9509 = fadd fast float %9505, %9479
  %9510 = call float @dx.op.dot3.f32(i32 55, float %9506, float %9507, float %9508, float %9476, float %9477, float %9478)  ; Dot3(ax,ay,az,bx,by,bz)
  %9511 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.i32 %9511, 1
  %9513 = and i32 %9512, 1
  %9514 = icmp ne i32 %9513, 0
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 2
  %9517 = fcmp fast ogt float %9516, 0.000000e+00
  %9518 = and i1 %9514, %9517
  br i1 %9518, label %9519, label %9925, !dx.controlflow.hints !135

; <label>:9519                                    ; preds = %9474
  %9520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9521 = extractvalue %dx.types.CBufRet.f32 %9520, 3
  %9522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9523 = extractvalue %dx.types.CBufRet.f32 %9522, 2
  %9524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9525 = extractvalue %dx.types.CBufRet.f32 %9524, 2
  %9526 = fsub fast float %9523, %9525
  %9527 = and i32 %9512, 2
  %9528 = extractvalue %dx.types.CBufRet.i32 %9511, 0
  %9529 = call i32 @dx.op.binary.i32(i32 40, i32 %9528, i32 3)  ; UMin(a,b)
  %9530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9531 = extractvalue %dx.types.CBufRet.f32 %9530, 0
  %9532 = extractvalue %dx.types.CBufRet.f32 %9530, 1
  %9533 = extractvalue %dx.types.CBufRet.f32 %9524, 0
  %9534 = extractvalue %dx.types.CBufRet.f32 %9524, 1
  %9535 = fsub fast float %9531, %9533
  %9536 = fsub fast float %9532, %9534
  %9537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9538 = extractvalue %dx.types.CBufRet.f32 %9537, 0
  %9539 = fcmp fast ogt float %9538, 0.000000e+00
  %9540 = fsub fast float -0.000000e+00, %9535
  %9541 = fsub fast float -0.000000e+00, %9536
  %9542 = call float @dx.op.dot2.f32(i32 54, float %9506, float %9507, float %9506, float %9507)  ; Dot2(ax,ay,bx,by)
  %9543 = call float @dx.op.dot2.f32(i32 54, float %9506, float %9507, float %9540, float %9541)  ; Dot2(ax,ay,bx,by)
  %9544 = fmul fast float %9543, 2.000000e+00
  %9545 = call float @dx.op.dot2.f32(i32 54, float %9540, float %9541, float %9540, float %9541)  ; Dot2(ax,ay,bx,by)
  %9546 = fmul fast float %9538, %9538
  %9547 = fsub fast float %9545, %9546
  %9548 = fmul fast float %9544, %9544
  %9549 = fmul fast float %9542, 4.000000e+00
  %9550 = fmul fast float %9549, %9547
  %9551 = fsub fast float %9548, %9550
  %9552 = fcmp fast ogt float %9551, 0.000000e+00
  br i1 %9552, label %9553, label %9568

; <label>:9553                                    ; preds = %9519
  %9554 = fcmp fast ogt float %9544, 0.000000e+00
  %9555 = call float @dx.op.unary.f32(i32 24, float %9551)  ; Sqrt(value)
  %9556 = fsub fast float -0.000000e+00, %9555
  %9557 = select i1 %9554, float %9555, float %9556
  %9558 = fadd fast float %9557, %9544
  %9559 = fmul float %9558, -5.000000e-01
  %9560 = fdiv fast float %9559, %9542
  %9561 = call float @dx.op.binary.f32(i32 35, float %9560, float 0.000000e+00)  ; FMax(a,b)
  %9562 = call float @dx.op.binary.f32(i32 36, float %9505, float %9561)  ; FMin(a,b)
  %9563 = fdiv fast float %9547, %9559
  %9564 = call float @dx.op.binary.f32(i32 35, float %9563, float 0.000000e+00)  ; FMax(a,b)
  %9565 = call float @dx.op.binary.f32(i32 36, float %9505, float %9564)  ; FMin(a,b)
  %9566 = call float @dx.op.binary.f32(i32 36, float %9562, float %9565)  ; FMin(a,b)
  %9567 = call float @dx.op.binary.f32(i32 35, float %9562, float %9565)  ; FMax(a,b)
  br label %9568

; <label>:9568                                    ; preds = %9553, %9519
  %9569 = phi float [ %9567, %9553 ], [ -1.000000e+00, %9519 ]
  %9570 = phi float [ %9566, %9553 ], [ -1.000000e+00, %9519 ]
  %9571 = phi i1 [ true, %9553 ], [ false, %9519 ]
  %9572 = and i1 %9539, %9571
  br i1 %9572, label %9573, label %9575

; <label>:9573                                    ; preds = %9568
  %9574 = fcmp fast oeq float %9570, %9569
  br i1 %9574, label %9878, label %9576

; <label>:9575                                    ; preds = %9568
  br i1 %9539, label %9878, label %9576

; <label>:9576                                    ; preds = %9575, %9573
  %9577 = phi float [ %9505, %9575 ], [ %9569, %9573 ]
  %9578 = phi float [ 0.000000e+00, %9575 ], [ %9570, %9573 ]
  %9579 = icmp ne i32 %9527, 0
  %9580 = fmul fast float %9577, %9508
  %9581 = fadd fast float %9580, %9521
  %9582 = fmul fast float %9581, %9577
  %9583 = select i1 %9579, float 0.000000e+00, float %9582
  %9584 = fcmp fast oeq float %9508, 0.000000e+00
  %9585 = fdiv fast float %9526, %9508
  %9586 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9585)  ; FMax(a,b)
  %9587 = select i1 %9584, float %9577, float %9586
  %9588 = call float @dx.op.binary.f32(i32 36, float %9577, float %9587)  ; FMin(a,b)
  %9589 = fcmp fast ogt float %9508, 0.000000e+00
  %9590 = fcmp fast olt float %9526, 0.000000e+00
  br i1 %9589, label %9591, label %9648

; <label>:9591                                    ; preds = %9576
  %9592 = icmp eq i32 %9527, 0
  br i1 %9590, label %9593, label %9637

; <label>:9593                                    ; preds = %9591
  %9594 = select i1 %9592, float %9577, float 0.000000e+00
  %9595 = fsub fast float -0.000000e+00, %9594
  %9596 = call float @dx.op.unary.f32(i32 6, float %9595)  ; FAbs(value)
  %9597 = fmul fast float %9594, %9508
  %9598 = fadd fast float %9597, %9521
  %9599 = fmul fast float %9596, %9598
  %9600 = fsub fast float %9583, %9599
  %9601 = fsub fast float %9577, %9596
  %9602 = select i1 %9592, float %9601, float 0.000000e+00
  %9603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9604 = extractvalue %dx.types.CBufRet.f32 %9603, 0
  %9605 = extractvalue %dx.types.CBufRet.f32 %9603, 1
  %9606 = extractvalue %dx.types.CBufRet.f32 %9603, 2
  %9607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9608 = extractvalue %dx.types.CBufRet.f32 %9607, 0
  %9609 = extractvalue %dx.types.CBufRet.f32 %9607, 1
  %9610 = extractvalue %dx.types.CBufRet.f32 %9607, 2
  %9611 = extractvalue %dx.types.CBufRet.f32 %9607, 3
  %9612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9613 = extractvalue %dx.types.CBufRet.f32 %9612, 3
  %9614 = call float @dx.op.binary.f32(i32 36, float %9600, float %9613)  ; FMin(a,b)
  %9615 = fmul fast float %9611, %9602
  %9616 = call float @dx.op.unary.f32(i32 7, float %9615)  ; Saturate(value)
  %9617 = fsub fast float %9608, %9604
  %9618 = fsub fast float %9609, %9605
  %9619 = fsub fast float %9610, %9606
  %9620 = fmul fast float %9616, %9617
  %9621 = fmul fast float %9616, %9618
  %9622 = fmul fast float %9616, %9619
  %9623 = fadd fast float %9620, %9604
  %9624 = fadd fast float %9621, %9605
  %9625 = fadd fast float %9622, %9606
  %9626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9627 = extractvalue %dx.types.CBufRet.f32 %9626, 0
  %9628 = extractvalue %dx.types.CBufRet.f32 %9626, 1
  %9629 = fadd fast float %9628, %9627
  %9630 = call float @dx.op.unary.f32(i32 7, float %9629)  ; Saturate(value)
  %9631 = extractvalue %dx.types.CBufRet.f32 %9626, 2
  %9632 = extractvalue %dx.types.CBufRet.f32 %9626, 3
  %9633 = fadd fast float %9632, %9631
  %9634 = call float @dx.op.unary.f32(i32 7, float %9633)  ; Saturate(value)
  %9635 = fmul fast float %9630, %9614
  %9636 = fmul fast float %9635, %9634
  br label %9878

; <label>:9637                                    ; preds = %9591
  br i1 %9592, label %9638, label %9659

; <label>:9638                                    ; preds = %9637
  %9639 = call float @dx.op.binary.f32(i32 36, float %9588, float %9578)  ; FMin(a,b)
  %9640 = fsub fast float %9588, %9639
  %9641 = fsub fast float %9640, %9577
  %9642 = call float @dx.op.unary.f32(i32 6, float %9641)  ; FAbs(value)
  %9643 = fadd fast float %9640, %9577
  %9644 = fmul fast float %9643, %9508
  %9645 = fadd fast float %9644, %9521
  %9646 = fmul fast float %9645, %9642
  %9647 = fsub fast float %9583, %9646
  br label %9659

; <label>:9648                                    ; preds = %9576
  br i1 %9590, label %9649, label %9659

; <label>:9649                                    ; preds = %9648
  %9650 = call float @dx.op.binary.f32(i32 35, float %9578, float %9588)  ; FMax(a,b)
  %9651 = icmp eq i32 %9527, 0
  %9652 = select i1 %9651, float %9588, float 0.000000e+00
  %9653 = fsub fast float -0.000000e+00, %9652
  %9654 = call float @dx.op.unary.f32(i32 6, float %9653)  ; FAbs(value)
  %9655 = fmul fast float %9652, %9508
  %9656 = fadd fast float %9655, %9521
  %9657 = fmul fast float %9654, %9656
  %9658 = fsub fast float %9583, %9657
  br label %9659

; <label>:9659                                    ; preds = %9649, %9648, %9638, %9637
  %9660 = phi float [ %9578, %9637 ], [ %9578, %9638 ], [ %9650, %9649 ], [ %9578, %9648 ]
  %9661 = phi float [ 0.000000e+00, %9637 ], [ %9642, %9638 ], [ %9654, %9649 ], [ 0.000000e+00, %9648 ]
  %9662 = phi float [ %9583, %9637 ], [ %9647, %9638 ], [ %9658, %9649 ], [ %9583, %9648 ]
  %9663 = phi float [ %9588, %9637 ], [ %9588, %9638 ], [ %9577, %9649 ], [ %9577, %9648 ]
  %9664 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9664, align 4, !tbaa !122, !noalias !136
  %9665 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9665, align 4, !tbaa !122, !noalias !136
  %9666 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9666, align 4, !tbaa !122, !noalias !136
  %9667 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9667, align 4, !tbaa !122, !noalias !136
  %9668 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9668, align 4, !tbaa !122, !noalias !136
  %9669 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9669, align 4, !tbaa !122, !noalias !136
  %9670 = icmp sgt i32 %9529, 0
  br i1 %9670, label %9671, label %9732

; <label>:9671                                    ; preds = %9659
  br label %9672

; <label>:9672                                    ; preds = %9721, %9671
  %9673 = phi i32 [ %9722, %9721 ], [ 0, %9671 ]
  %9674 = phi i32 [ %9723, %9721 ], [ 0, %9671 ]
  %9675 = add nuw i32 %9674, 171
  %9676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9675)  ; CBufferLoadLegacy(handle,regIndex)
  %9677 = extractvalue %dx.types.CBufRet.f32 %9676, 0
  %9678 = extractvalue %dx.types.CBufRet.f32 %9676, 1
  %9679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9680 = extractvalue %dx.types.CBufRet.f32 %9679, 0
  %9681 = extractvalue %dx.types.CBufRet.f32 %9679, 1
  %9682 = fsub fast float %9677, %9680
  %9683 = fsub fast float %9678, %9681
  %9684 = extractvalue %dx.types.CBufRet.f32 %9676, 2
  %9685 = fsub fast float -0.000000e+00, %9682
  %9686 = fsub fast float -0.000000e+00, %9683
  %9687 = call float @dx.op.dot2.f32(i32 54, float %9506, float %9507, float %9685, float %9686)  ; Dot2(ax,ay,bx,by)
  %9688 = fmul fast float %9687, 2.000000e+00
  %9689 = call float @dx.op.dot2.f32(i32 54, float %9685, float %9686, float %9685, float %9686)  ; Dot2(ax,ay,bx,by)
  %9690 = fmul fast float %9684, %9684
  %9691 = fsub fast float %9689, %9690
  %9692 = fmul fast float %9688, %9688
  %9693 = fmul fast float %9549, %9691
  %9694 = fsub fast float %9692, %9693
  %9695 = fcmp fast ogt float %9694, 0.000000e+00
  br i1 %9695, label %9696, label %9711

; <label>:9696                                    ; preds = %9672
  %9697 = fcmp fast ogt float %9688, 0.000000e+00
  %9698 = call float @dx.op.unary.f32(i32 24, float %9694)  ; Sqrt(value)
  %9699 = fsub fast float -0.000000e+00, %9698
  %9700 = select i1 %9697, float %9698, float %9699
  %9701 = fadd fast float %9700, %9688
  %9702 = fmul float %9701, -5.000000e-01
  %9703 = fdiv fast float %9702, %9542
  %9704 = call float @dx.op.binary.f32(i32 35, float %9703, float 0.000000e+00)  ; FMax(a,b)
  %9705 = call float @dx.op.binary.f32(i32 36, float %9577, float %9704)  ; FMin(a,b)
  %9706 = fdiv fast float %9691, %9702
  %9707 = call float @dx.op.binary.f32(i32 35, float %9706, float 0.000000e+00)  ; FMax(a,b)
  %9708 = call float @dx.op.binary.f32(i32 36, float %9577, float %9707)  ; FMin(a,b)
  %9709 = call float @dx.op.binary.f32(i32 36, float %9705, float %9708)  ; FMin(a,b)
  %9710 = call float @dx.op.binary.f32(i32 35, float %9705, float %9708)  ; FMax(a,b)
  br label %9711

; <label>:9711                                    ; preds = %9696, %9672
  %9712 = phi float [ %9710, %9696 ], [ -1.000000e+00, %9672 ]
  %9713 = phi float [ %9709, %9696 ], [ -1.000000e+00, %9672 ]
  %9714 = phi i1 [ true, %9696 ], [ false, %9672 ]
  br i1 %9714, label %9715, label %9721

; <label>:9715                                    ; preds = %9711
  %9716 = call float @dx.op.binary.f32(i32 35, float %9660, float %9713)  ; FMax(a,b)
  %9717 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9674
  store float %9716, float* %9717, align 4, !tbaa !122, !noalias !136
  %9718 = call float @dx.op.binary.f32(i32 35, float %9660, float %9712)  ; FMax(a,b)
  %9719 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9674
  store float %9718, float* %9719, align 4, !tbaa !122, !noalias !136
  %9720 = add nsw i32 %9673, 1
  br label %9721

; <label>:9721                                    ; preds = %9715, %9711
  %9722 = phi i32 [ %9720, %9715 ], [ %9673, %9711 ]
  %9723 = add nuw nsw i32 %9674, 1
  %9724 = icmp eq i32 %9723, %9529
  br i1 %9724, label %9725, label %9672

; <label>:9725                                    ; preds = %9721
  %9726 = load float, float* %9666, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9727 = load float, float* %9665, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9728 = load float, float* %9664, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9729 = load float, float* %9669, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9730 = load float, float* %9668, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9731 = load float, float* %9667, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9732

; <label>:9732                                    ; preds = %9725, %9659
  %9733 = phi float [ -1.000000e+00, %9659 ], [ %9731, %9725 ]
  %9734 = phi float [ -1.000000e+00, %9659 ], [ %9730, %9725 ]
  %9735 = phi float [ -1.000000e+00, %9659 ], [ %9729, %9725 ]
  %9736 = phi float [ -1.000000e+00, %9659 ], [ %9728, %9725 ]
  %9737 = phi float [ -1.000000e+00, %9659 ], [ %9727, %9725 ]
  %9738 = phi float [ -1.000000e+00, %9659 ], [ %9726, %9725 ]
  %9739 = phi i32 [ 0, %9659 ], [ %9722, %9725 ]
  %9740 = call float @dx.op.binary.f32(i32 36, float %9737, float %9738)  ; FMin(a,b)
  %9741 = call float @dx.op.binary.f32(i32 36, float %9736, float %9740)  ; FMin(a,b)
  %9742 = call float @dx.op.binary.f32(i32 35, float %9736, float %9737)  ; FMax(a,b)
  %9743 = call float @dx.op.binary.f32(i32 36, float %9742, float %9738)  ; FMin(a,b)
  %9744 = call float @dx.op.binary.f32(i32 36, float %9736, float %9737)  ; FMin(a,b)
  %9745 = call float @dx.op.binary.f32(i32 35, float %9744, float %9743)  ; FMax(a,b)
  %9746 = call float @dx.op.binary.f32(i32 35, float %9737, float %9738)  ; FMax(a,b)
  %9747 = call float @dx.op.binary.f32(i32 35, float %9736, float %9746)  ; FMax(a,b)
  store float %9741, float* %9664, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9745, float* %9665, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9747, float* %9666, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9748 = call float @dx.op.binary.f32(i32 36, float %9734, float %9735)  ; FMin(a,b)
  %9749 = call float @dx.op.binary.f32(i32 36, float %9733, float %9748)  ; FMin(a,b)
  %9750 = call float @dx.op.binary.f32(i32 35, float %9733, float %9734)  ; FMax(a,b)
  %9751 = call float @dx.op.binary.f32(i32 36, float %9750, float %9735)  ; FMin(a,b)
  %9752 = call float @dx.op.binary.f32(i32 36, float %9733, float %9734)  ; FMin(a,b)
  %9753 = call float @dx.op.binary.f32(i32 35, float %9752, float %9751)  ; FMax(a,b)
  %9754 = call float @dx.op.binary.f32(i32 35, float %9734, float %9735)  ; FMax(a,b)
  %9755 = call float @dx.op.binary.f32(i32 35, float %9733, float %9754)  ; FMax(a,b)
  store float %9749, float* %9667, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9753, float* %9668, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9755, float* %9669, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9756 = sub nsw i32 3, %9739
  %9757 = icmp sgt i32 %9756, 2
  br i1 %9757, label %9758, label %9796

; <label>:9758                                    ; preds = %9732
  %9759 = icmp eq i32 %9527, 0
  %9760 = fsub fast float %9577, %9661
  %9761 = select i1 %9759, float %9760, float %9661
  %9762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9763 = extractvalue %dx.types.CBufRet.f32 %9762, 0
  %9764 = extractvalue %dx.types.CBufRet.f32 %9762, 1
  %9765 = extractvalue %dx.types.CBufRet.f32 %9762, 2
  %9766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9767 = extractvalue %dx.types.CBufRet.f32 %9766, 0
  %9768 = extractvalue %dx.types.CBufRet.f32 %9766, 1
  %9769 = extractvalue %dx.types.CBufRet.f32 %9766, 2
  %9770 = extractvalue %dx.types.CBufRet.f32 %9766, 3
  %9771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9772 = extractvalue %dx.types.CBufRet.f32 %9771, 3
  %9773 = call float @dx.op.binary.f32(i32 36, float %9662, float %9772)  ; FMin(a,b)
  %9774 = fmul fast float %9770, %9761
  %9775 = call float @dx.op.unary.f32(i32 7, float %9774)  ; Saturate(value)
  %9776 = fsub fast float %9767, %9763
  %9777 = fsub fast float %9768, %9764
  %9778 = fsub fast float %9769, %9765
  %9779 = fmul fast float %9775, %9776
  %9780 = fmul fast float %9775, %9777
  %9781 = fmul fast float %9775, %9778
  %9782 = fadd fast float %9779, %9763
  %9783 = fadd fast float %9780, %9764
  %9784 = fadd fast float %9781, %9765
  %9785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9786 = extractvalue %dx.types.CBufRet.f32 %9785, 0
  %9787 = extractvalue %dx.types.CBufRet.f32 %9785, 1
  %9788 = fadd fast float %9787, %9786
  %9789 = call float @dx.op.unary.f32(i32 7, float %9788)  ; Saturate(value)
  %9790 = extractvalue %dx.types.CBufRet.f32 %9785, 2
  %9791 = extractvalue %dx.types.CBufRet.f32 %9785, 3
  %9792 = fadd fast float %9791, %9790
  %9793 = call float @dx.op.unary.f32(i32 7, float %9792)  ; Saturate(value)
  %9794 = fmul fast float %9789, %9773
  %9795 = fmul fast float %9794, %9793
  br label %9878

; <label>:9796                                    ; preds = %9732
  %9797 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9756
  %9798 = load float, float* %9797, align 4, !tbaa !122, !noalias !136
  %9799 = fcmp fast olt float %9798, %9663
  %9800 = icmp sgt i32 %9739, 0
  %9801 = and i1 %9800, %9799
  br i1 %9801, label %9802, label %9839

; <label>:9802                                    ; preds = %9796
  br label %9803

; <label>:9803                                    ; preds = %9832, %9802
  %9804 = phi float [ %9833, %9832 ], [ %9661, %9802 ]
  %9805 = phi float [ %9834, %9832 ], [ %9662, %9802 ]
  %9806 = phi float [ %9814, %9832 ], [ %9798, %9802 ]
  %9807 = phi i32 [ %9811, %9832 ], [ %9756, %9802 ]
  %9808 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9807
  %9809 = load float, float* %9808, align 4, !tbaa !122, !noalias !136
  %9810 = icmp slt i32 %9807, 2
  %9811 = add nsw i32 %9807, 1
  %9812 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9811
  %9813 = load float, float* %9812, align 4, !tbaa !122, !noalias !136
  %9814 = select i1 %9810, float %9813, float %9577
  %9815 = call float @dx.op.binary.f32(i32 36, float %9814, float %9809)  ; FMin(a,b)
  %9816 = call float @dx.op.binary.f32(i32 36, float %9663, float %9815)  ; FMin(a,b)
  %9817 = icmp eq i32 %9527, 0
  %9818 = fadd fast float %9816, %9806
  %9819 = fmul fast float %9818, %9508
  %9820 = fadd fast float %9819, %9521
  br i1 %9817, label %9826, label %9821

; <label>:9821                                    ; preds = %9803
  %9822 = fsub fast float %9816, %9806
  %9823 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9822)  ; FMax(a,b)
  %9824 = fmul fast float %9823, %9820
  %9825 = fadd fast float %9824, %9805
  br label %9832

; <label>:9826                                    ; preds = %9803
  %9827 = fsub fast float %9806, %9816
  %9828 = call float @dx.op.unary.f32(i32 6, float %9827)  ; FAbs(value)
  %9829 = fadd fast float %9828, %9804
  %9830 = fmul fast float %9828, %9820
  %9831 = fsub fast float %9805, %9830
  br label %9832

; <label>:9832                                    ; preds = %9826, %9821
  %9833 = phi float [ %9823, %9821 ], [ %9829, %9826 ]
  %9834 = phi float [ %9825, %9821 ], [ %9831, %9826 ]
  %9835 = fcmp fast olt float %9814, %9663
  %9836 = icmp slt i32 %9811, 3
  %9837 = and i1 %9836, %9835
  br i1 %9837, label %9803, label %9838

; <label>:9838                                    ; preds = %9832
  br label %9839

; <label>:9839                                    ; preds = %9838, %9796
  %9840 = phi float [ %9661, %9796 ], [ %9833, %9838 ]
  %9841 = phi float [ %9662, %9796 ], [ %9834, %9838 ]
  %9842 = fsub fast float %9577, %9840
  %9843 = select i1 %9579, float %9840, float %9842
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 0
  %9846 = extractvalue %dx.types.CBufRet.f32 %9844, 1
  %9847 = extractvalue %dx.types.CBufRet.f32 %9844, 2
  %9848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9849 = extractvalue %dx.types.CBufRet.f32 %9848, 0
  %9850 = extractvalue %dx.types.CBufRet.f32 %9848, 1
  %9851 = extractvalue %dx.types.CBufRet.f32 %9848, 2
  %9852 = extractvalue %dx.types.CBufRet.f32 %9848, 3
  %9853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9854 = extractvalue %dx.types.CBufRet.f32 %9853, 3
  %9855 = call float @dx.op.binary.f32(i32 36, float %9841, float %9854)  ; FMin(a,b)
  %9856 = fmul fast float %9852, %9843
  %9857 = call float @dx.op.unary.f32(i32 7, float %9856)  ; Saturate(value)
  %9858 = fsub fast float %9849, %9845
  %9859 = fsub fast float %9850, %9846
  %9860 = fsub fast float %9851, %9847
  %9861 = fmul fast float %9857, %9858
  %9862 = fmul fast float %9857, %9859
  %9863 = fmul fast float %9857, %9860
  %9864 = fadd fast float %9861, %9845
  %9865 = fadd fast float %9862, %9846
  %9866 = fadd fast float %9863, %9847
  %9867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9868 = extractvalue %dx.types.CBufRet.f32 %9867, 0
  %9869 = extractvalue %dx.types.CBufRet.f32 %9867, 1
  %9870 = fadd fast float %9869, %9868
  %9871 = call float @dx.op.unary.f32(i32 7, float %9870)  ; Saturate(value)
  %9872 = extractvalue %dx.types.CBufRet.f32 %9867, 2
  %9873 = extractvalue %dx.types.CBufRet.f32 %9867, 3
  %9874 = fadd fast float %9873, %9872
  %9875 = call float @dx.op.unary.f32(i32 7, float %9874)  ; Saturate(value)
  %9876 = fmul fast float %9871, %9855
  %9877 = fmul fast float %9876, %9875
  br label %9878

; <label>:9878                                    ; preds = %9839, %9758, %9593, %9575, %9573
  %9879 = phi float [ %9602, %9593 ], [ %9761, %9758 ], [ %9843, %9839 ], [ 0.000000e+00, %9573 ], [ 0.000000e+00, %9575 ]
  %9880 = phi float [ %9636, %9593 ], [ %9795, %9758 ], [ %9877, %9839 ], [ 0.000000e+00, %9573 ], [ 0.000000e+00, %9575 ]
  %9881 = phi float [ %9623, %9593 ], [ %9782, %9758 ], [ %9864, %9839 ], [ 0.000000e+00, %9573 ], [ 0.000000e+00, %9575 ]
  %9882 = phi float [ %9624, %9593 ], [ %9783, %9758 ], [ %9865, %9839 ], [ 0.000000e+00, %9573 ], [ 0.000000e+00, %9575 ]
  %9883 = phi float [ %9625, %9593 ], [ %9784, %9758 ], [ %9866, %9839 ], [ 0.000000e+00, %9573 ], [ 0.000000e+00, %9575 ]
  %9884 = fmul fast float %9516, %9880
  %9885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9886 = extractvalue %dx.types.CBufRet.f32 %9885, 2
  %9887 = fsub fast float %9523, %9886
  %9888 = fcmp fast olt float %9884, -2.000000e+01
  %9889 = call float @dx.op.unary.f32(i32 21, float %9884)  ; Exp(value)
  %9890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9891 = extractvalue %dx.types.CBufRet.f32 %9890, 2
  %9892 = extractvalue %dx.types.CBufRet.f32 %9890, 3
  %9893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9894 = extractvalue %dx.types.CBufRet.f32 %9893, 2
  %9895 = fmul fast float %9892, %9887
  %9896 = call float @dx.op.unary.f32(i32 7, float %9895)  ; Saturate(value)
  %9897 = fsub fast float 1.000000e+00, %9896
  %9898 = fmul fast float %9508, 5.000000e-01
  %9899 = fadd fast float %9898, 5.000000e-01
  %9900 = call float @dx.op.unary.f32(i32 7, float %9899)  ; Saturate(value)
  %9901 = fsub fast float 1.000000e+00, %9900
  %9902 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9897)  ; FMax(a,b)
  %9903 = fdiv fast float %9901, %9902
  %9904 = fsub fast float %9887, %9465
  %9905 = call float @dx.op.unary.f32(i32 6, float %9904)  ; FAbs(value)
  %9906 = fmul fast float %9905, %9891
  %9907 = call float @dx.op.unary.f32(i32 7, float %9903)  ; Saturate(value)
  %9908 = fsub fast float 1.000000e+00, %9906
  %9909 = fmul fast float %9908, %9907
  %9910 = fadd fast float %9909, %9906
  %9911 = fmul fast float %9894, %9887
  %9912 = call float @dx.op.unary.f32(i32 7, float %9911)  ; Saturate(value)
  %9913 = fsub fast float 1.000000e+00, %9910
  %9914 = fmul fast float %9913, %9912
  %9915 = fadd fast float %9914, %9910
  %9916 = call float @dx.op.unary.f32(i32 7, float %9915)  ; Saturate(value)
  %9917 = fadd fast float %9889, -1.000000e+00
  %9918 = select i1 %9888, float -1.000000e+00, float %9917
  %9919 = fmul fast float %9916, %9918
  %9920 = fadd fast float %9919, 1.000000e+00
  %9921 = fsub fast float -0.000000e+00, %9919
  %9922 = fmul fast float %9881, %9921
  %9923 = fmul fast float %9882, %9921
  %9924 = fmul fast float %9883, %9921
  br label %9925

; <label>:9925                                    ; preds = %9878, %9474
  %9926 = phi float [ %9879, %9878 ], [ 0.000000e+00, %9474 ]
  %9927 = phi float [ %9920, %9878 ], [ 1.000000e+00, %9474 ]
  %9928 = phi float [ %9922, %9878 ], [ 0.000000e+00, %9474 ]
  %9929 = phi float [ %9923, %9878 ], [ 0.000000e+00, %9474 ]
  %9930 = phi float [ %9924, %9878 ], [ 0.000000e+00, %9474 ]
  %9931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9932 = extractvalue %dx.types.CBufRet.f32 %9931, 1
  %9933 = fsub fast float 1.000000e+00, %9927
  %9934 = fmul fast float %9933, %9509
  %9935 = fmul fast float %9934, %9932
  %9936 = fsub fast float %9509, %9935
  br i1 %9502, label %9937, label %9966, !dx.controlflow.hints !172

; <label>:9937                                    ; preds = %9925
  %9938 = fmul fast float %9510, %9499
  %9939 = fadd fast float %9938, %9500
  %9940 = call float @dx.op.unary.f32(i32 7, float %9939)  ; Saturate(value)
  %9941 = fmul fast float %9481, %9936
  %9942 = fsub fast float -0.000000e+00, %9941
  %9943 = fmul fast float %9482, %9936
  %9944 = fsub fast float -0.000000e+00, %9943
  %9945 = call float @dx.op.unary.f32(i32 21, float %9942)  ; Exp(value)
  %9946 = call float @dx.op.unary.f32(i32 21, float %9944)  ; Exp(value)
  %9947 = call float @dx.op.binary.f32(i32 35, float %9489, float %9945)  ; FMax(a,b)
  %9948 = call float @dx.op.binary.f32(i32 35, float %9489, float %9946)  ; FMax(a,b)
  %9949 = fsub fast float %9948, %9947
  %9950 = fmul fast float %9949, %9940
  %9951 = fadd fast float %9950, %9947
  %9952 = call float @dx.op.unary.f32(i32 7, float %9951)  ; Saturate(value)
  %9953 = fsub fast float %9486, %9491
  %9954 = fsub fast float %9487, %9492
  %9955 = fsub fast float %9488, %9493
  %9956 = fmul fast float %9940, %9953
  %9957 = fmul fast float %9940, %9954
  %9958 = fmul fast float %9940, %9955
  %9959 = fadd fast float %9956, %9491
  %9960 = fadd fast float %9957, %9492
  %9961 = fadd fast float %9958, %9493
  %9962 = fsub fast float 1.000000e+00, %9952
  %9963 = fmul fast float %9962, %9959
  %9964 = fmul fast float %9962, %9960
  %9965 = fmul fast float %9962, %9961
  br label %10025

; <label>:9966                                    ; preds = %9925
  %9967 = fmul fast float %9936, %9498
  %9968 = call float @dx.op.unary.f32(i32 7, float %9967)  ; Saturate(value)
  %9969 = fsub fast float 2.000000e+00, %9968
  %9970 = fmul fast float %9968, 9.921875e-01
  %9971 = fmul fast float %9970, %9969
  %9972 = fadd fast float %9971, 3.906250e-03
  %9973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9972, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9974 = extractvalue %dx.types.ResRet.f32 %9973, 0
  %9975 = fsub fast float %9968, %9974
  %9976 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9975)  ; FMax(a,b)
  %9977 = fmul fast float %9484, %9465
  %9978 = call float @dx.op.unary.f32(i32 6, float %9977)  ; FAbs(value)
  %9979 = fcmp fast ogt float %9978, 0x3EB0C6F7A0000000
  br i1 %9979, label %9980, label %9986, !dx.controlflow.hints !173

; <label>:9980                                    ; preds = %9966
  %9981 = fmul fast float %9977, 0xBFF7154760000000
  %9982 = call float @dx.op.unary.f32(i32 21, float %9981)  ; Exp(value)
  %9983 = fsub fast float 1.000000e+00, %9982
  %9984 = fdiv fast float %9983, %9977
  %9985 = fmul fast float %9984, %9494
  br label %9986

; <label>:9986                                    ; preds = %9980, %9966
  %9987 = phi float [ %9985, %9980 ], [ %9494, %9966 ]
  %9988 = fadd fast float %9987, %9496
  %9989 = fmul fast float %9988, %9976
  %9990 = fmul fast float %9481, %9989
  %9991 = fsub fast float -0.000000e+00, %9990
  %9992 = fmul fast float %9482, %9989
  %9993 = fsub fast float -0.000000e+00, %9992
  %9994 = fmul fast float %9483, %9989
  %9995 = fsub fast float -0.000000e+00, %9994
  %9996 = call float @dx.op.unary.f32(i32 21, float %9991)  ; Exp(value)
  %9997 = call float @dx.op.unary.f32(i32 21, float %9993)  ; Exp(value)
  %9998 = call float @dx.op.unary.f32(i32 21, float %9995)  ; Exp(value)
  %9999 = fmul fast float %9510, %9510
  %10000 = fadd fast float %9999, 1.000000e+00
  %10001 = fmul fast float %10000, 0x3FAE8EC8A0000000
  %10002 = fmul fast float %10001, %9491
  %10003 = fmul fast float %10001, %9492
  %10004 = fmul fast float %10001, %9493
  %10005 = fmul fast float %9510, %9489
  %10006 = fsub fast float 1.000000e+00, %10005
  %10007 = fmul fast float %9489, %9489
  %10008 = fsub fast float 1.000000e+00, %10007
  %10009 = fmul fast float %10008, 0x3FB45F3060000000
  %10010 = fmul fast float %10006, %10006
  %10011 = fdiv fast float 1.000000e+00, %10010
  %10012 = fmul fast float %10009, %10011
  %10013 = fmul fast float %10012, %9486
  %10014 = fmul fast float %10012, %9487
  %10015 = fmul fast float %10012, %9488
  %10016 = fadd fast float %10013, %10002
  %10017 = fadd fast float %10014, %10003
  %10018 = fadd fast float %10015, %10004
  %10019 = fsub fast float 1.000000e+00, %9996
  %10020 = fsub fast float 1.000000e+00, %9997
  %10021 = fsub fast float 1.000000e+00, %9998
  %10022 = fmul fast float %10016, %10019
  %10023 = fmul fast float %10017, %10020
  %10024 = fmul fast float %10018, %10021
  br label %10025

; <label>:10025                                   ; preds = %9986, %9937
  %10026 = phi float [ %9963, %9937 ], [ %10022, %9986 ]
  %10027 = phi float [ %9964, %9937 ], [ %10023, %9986 ]
  %10028 = phi float [ %9965, %9937 ], [ %10024, %9986 ]
  %10029 = phi float [ %9952, %9937 ], [ %9996, %9986 ]
  %10030 = phi float [ %9952, %9937 ], [ %9997, %9986 ]
  %10031 = phi float [ %9952, %9937 ], [ %9998, %9986 ]
  br i1 %9518, label %10032, label %10230, !dx.controlflow.hints !174

; <label>:10032                                   ; preds = %10025
  %10033 = extractvalue %dx.types.CBufRet.f32 %9931, 0
  %10034 = fmul fast float %10033, %9933
  %10035 = fsub fast float %9928, %10026
  %10036 = fsub fast float %9929, %10027
  %10037 = fsub fast float %9930, %10028
  %10038 = fmul fast float %10034, %10035
  %10039 = fmul fast float %10034, %10036
  %10040 = fmul fast float %10034, %10037
  %10041 = fadd fast float %10038, %10026
  %10042 = fadd fast float %10039, %10027
  %10043 = fadd fast float %10040, %10028
  %10044 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10029)  ; FMax(a,b)
  %10045 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10030)  ; FMax(a,b)
  %10046 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10031)  ; FMax(a,b)
  %10047 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9927)  ; FMax(a,b)
  %10048 = call float @dx.op.binary.f32(i32 35, float %9926, float %9936)  ; FMax(a,b)
  %10049 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10048)  ; FMax(a,b)
  %10050 = fdiv fast float %9926, %10049
  %10051 = call float @dx.op.unary.f32(i32 7, float %10050)  ; Saturate(value)
  %10052 = fdiv fast float %9936, %10049
  %10053 = call float @dx.op.unary.f32(i32 7, float %10052)  ; Saturate(value)
  %10054 = fcmp fast une float %10047, 1.000000e+00
  br i1 %10054, label %10055, label %10068, !dx.controlflow.hints !175

; <label>:10055                                   ; preds = %10032
  %10056 = call float @dx.op.unary.f32(i32 23, float %10047)  ; Log(value)
  %10057 = fmul fast float %10056, 0x3FE62E4300000000
  %10058 = fmul fast float %9928, %10057
  %10059 = fsub fast float -0.000000e+00, %10058
  %10060 = fmul fast float %9929, %10057
  %10061 = fsub fast float -0.000000e+00, %10060
  %10062 = fmul fast float %9930, %10057
  %10063 = fsub fast float -0.000000e+00, %10062
  %10064 = fsub fast float 1.000000e+00, %10047
  %10065 = fdiv fast float %10059, %10064
  %10066 = fdiv fast float %10061, %10064
  %10067 = fdiv fast float %10063, %10064
  br label %10068

; <label>:10068                                   ; preds = %10055, %10032
  %10069 = phi float [ %10065, %10055 ], [ %9928, %10032 ]
  %10070 = phi float [ %10066, %10055 ], [ %9929, %10032 ]
  %10071 = phi float [ %10067, %10055 ], [ %9930, %10032 ]
  %10072 = phi float [ %10057, %10055 ], [ 0.000000e+00, %10032 ]
  %10073 = fcmp fast une float %10044, 1.000000e+00
  br i1 %10073, label %10074, label %10081, !dx.controlflow.hints !176

; <label>:10074                                   ; preds = %10068
  %10075 = call float @dx.op.unary.f32(i32 23, float %10044)  ; Log(value)
  %10076 = fmul fast float %10075, 0x3FE62E4300000000
  %10077 = fmul fast float %10041, %10076
  %10078 = fsub fast float -0.000000e+00, %10077
  %10079 = fsub fast float 1.000000e+00, %10044
  %10080 = fdiv fast float %10078, %10079
  br label %10081

; <label>:10081                                   ; preds = %10074, %10068
  %10082 = phi float [ %10080, %10074 ], [ %10041, %10068 ]
  %10083 = phi float [ %10076, %10074 ], [ 0.000000e+00, %10068 ]
  %10084 = fcmp fast une float %10045, 1.000000e+00
  br i1 %10084, label %10085, label %10092, !dx.controlflow.hints !176

; <label>:10085                                   ; preds = %10081
  %10086 = call float @dx.op.unary.f32(i32 23, float %10045)  ; Log(value)
  %10087 = fmul fast float %10086, 0x3FE62E4300000000
  %10088 = fmul fast float %10042, %10087
  %10089 = fsub fast float -0.000000e+00, %10088
  %10090 = fsub fast float 1.000000e+00, %10045
  %10091 = fdiv fast float %10089, %10090
  br label %10092

; <label>:10092                                   ; preds = %10085, %10081
  %10093 = phi float [ %10091, %10085 ], [ %10042, %10081 ]
  %10094 = phi float [ %10087, %10085 ], [ 0.000000e+00, %10081 ]
  %10095 = fcmp fast une float %10046, 1.000000e+00
  br i1 %10095, label %10096, label %10103, !dx.controlflow.hints !176

; <label>:10096                                   ; preds = %10092
  %10097 = call float @dx.op.unary.f32(i32 23, float %10046)  ; Log(value)
  %10098 = fmul fast float %10097, 0x3FE62E4300000000
  %10099 = fmul fast float %10043, %10098
  %10100 = fsub fast float -0.000000e+00, %10099
  %10101 = fsub fast float 1.000000e+00, %10046
  %10102 = fdiv fast float %10100, %10101
  br label %10103

; <label>:10103                                   ; preds = %10096, %10092
  %10104 = phi float [ %10102, %10096 ], [ %10043, %10092 ]
  %10105 = phi float [ %10098, %10096 ], [ 0.000000e+00, %10092 ]
  %10106 = fmul fast float %10069, %10053
  %10107 = fmul fast float %10070, %10053
  %10108 = fmul fast float %10071, %10053
  %10109 = fmul fast float %10072, %10053
  %10110 = fmul fast float %10082, %10051
  %10111 = fmul fast float %10093, %10051
  %10112 = fmul fast float %10104, %10051
  %10113 = fmul fast float %10083, %10051
  %10114 = fmul fast float %10094, %10051
  %10115 = fmul fast float %10105, %10051
  %10116 = fadd fast float %10110, %10106
  %10117 = fadd fast float %10111, %10107
  %10118 = fadd fast float %10112, %10108
  %10119 = fadd fast float %10113, %10109
  %10120 = fadd fast float %10114, %10109
  %10121 = fadd fast float %10115, %10109
  %10122 = fcmp fast une float %10119, 0.000000e+00
  br i1 %10122, label %10123, label %10130, !dx.controlflow.hints !177

; <label>:10123                                   ; preds = %10103
  %10124 = fmul fast float %10119, 0x3FF7154760000000
  %10125 = call float @dx.op.unary.f32(i32 21, float %10124)  ; Exp(value)
  %10126 = fsub fast float 1.000000e+00, %10125
  %10127 = fmul fast float %10116, %10126
  %10128 = fsub fast float -0.000000e+00, %10127
  %10129 = fdiv fast float %10128, %10119
  br label %10130

; <label>:10130                                   ; preds = %10123, %10103
  %10131 = phi float [ %10125, %10123 ], [ 1.000000e+00, %10103 ]
  %10132 = phi float [ %10129, %10123 ], [ %10116, %10103 ]
  %10133 = fcmp fast une float %10120, 0.000000e+00
  br i1 %10133, label %10134, label %10141, !dx.controlflow.hints !177

; <label>:10134                                   ; preds = %10130
  %10135 = fmul fast float %10120, 0x3FF7154760000000
  %10136 = call float @dx.op.unary.f32(i32 21, float %10135)  ; Exp(value)
  %10137 = fsub fast float 1.000000e+00, %10136
  %10138 = fmul fast float %10117, %10137
  %10139 = fsub fast float -0.000000e+00, %10138
  %10140 = fdiv fast float %10139, %10120
  br label %10141

; <label>:10141                                   ; preds = %10134, %10130
  %10142 = phi float [ %10136, %10134 ], [ 1.000000e+00, %10130 ]
  %10143 = phi float [ %10140, %10134 ], [ %10117, %10130 ]
  %10144 = fcmp fast une float %10121, 0.000000e+00
  br i1 %10144, label %10145, label %10152, !dx.controlflow.hints !177

; <label>:10145                                   ; preds = %10141
  %10146 = fmul fast float %10121, 0x3FF7154760000000
  %10147 = call float @dx.op.unary.f32(i32 21, float %10146)  ; Exp(value)
  %10148 = fsub fast float 1.000000e+00, %10147
  %10149 = fmul fast float %10118, %10148
  %10150 = fsub fast float -0.000000e+00, %10149
  %10151 = fdiv fast float %10150, %10121
  br label %10152

; <label>:10152                                   ; preds = %10145, %10141
  %10153 = phi float [ %10147, %10145 ], [ 1.000000e+00, %10141 ]
  %10154 = phi float [ %10151, %10145 ], [ %10118, %10141 ]
  %10155 = fcmp fast ogt float %10051, %10053
  br i1 %10155, label %10156, label %10176

; <label>:10156                                   ; preds = %10152
  %10157 = fsub fast float 1.000000e+00, %10053
  %10158 = fmul fast float %10069, %10157
  %10159 = fmul fast float %10070, %10157
  %10160 = fmul fast float %10071, %10157
  %10161 = fmul fast float %10072, %10157
  %10162 = fcmp fast une float %10161, 0.000000e+00
  br i1 %10162, label %10163, label %10214, !dx.controlflow.hints !178

; <label>:10163                                   ; preds = %10156
  %10164 = fmul fast float %10161, 0x3FF7154760000000
  %10165 = call float @dx.op.unary.f32(i32 21, float %10164)  ; Exp(value)
  %10166 = fsub fast float 1.000000e+00, %10165
  %10167 = fmul fast float %10158, %10166
  %10168 = fsub fast float -0.000000e+00, %10167
  %10169 = fmul fast float %10159, %10166
  %10170 = fsub fast float -0.000000e+00, %10169
  %10171 = fmul fast float %10160, %10166
  %10172 = fsub fast float -0.000000e+00, %10171
  %10173 = fdiv fast float %10168, %10161
  %10174 = fdiv fast float %10170, %10161
  %10175 = fdiv fast float %10172, %10161
  br label %10214

; <label>:10176                                   ; preds = %10152
  %10177 = fsub fast float 1.000000e+00, %10051
  %10178 = fmul fast float %10082, %10177
  %10179 = fmul fast float %10093, %10177
  %10180 = fmul fast float %10104, %10177
  %10181 = fmul fast float %10083, %10177
  %10182 = fmul fast float %10094, %10177
  %10183 = fmul fast float %10105, %10177
  %10184 = fcmp fast une float %10181, 0.000000e+00
  br i1 %10184, label %10185, label %10192, !dx.controlflow.hints !177

; <label>:10185                                   ; preds = %10176
  %10186 = fmul fast float %10181, 0x3FF7154760000000
  %10187 = call float @dx.op.unary.f32(i32 21, float %10186)  ; Exp(value)
  %10188 = fsub fast float 1.000000e+00, %10187
  %10189 = fmul fast float %10178, %10188
  %10190 = fsub fast float -0.000000e+00, %10189
  %10191 = fdiv fast float %10190, %10181
  br label %10192

; <label>:10192                                   ; preds = %10185, %10176
  %10193 = phi float [ %10191, %10185 ], [ %10178, %10176 ]
  %10194 = phi float [ %10187, %10185 ], [ 1.000000e+00, %10176 ]
  %10195 = fcmp fast une float %10182, 0.000000e+00
  br i1 %10195, label %10196, label %10203, !dx.controlflow.hints !177

; <label>:10196                                   ; preds = %10192
  %10197 = fmul fast float %10182, 0x3FF7154760000000
  %10198 = call float @dx.op.unary.f32(i32 21, float %10197)  ; Exp(value)
  %10199 = fsub fast float 1.000000e+00, %10198
  %10200 = fmul fast float %10179, %10199
  %10201 = fsub fast float -0.000000e+00, %10200
  %10202 = fdiv fast float %10201, %10182
  br label %10203

; <label>:10203                                   ; preds = %10196, %10192
  %10204 = phi float [ %10202, %10196 ], [ %10179, %10192 ]
  %10205 = phi float [ %10198, %10196 ], [ 1.000000e+00, %10192 ]
  %10206 = fcmp fast une float %10183, 0.000000e+00
  br i1 %10206, label %10207, label %10214, !dx.controlflow.hints !177

; <label>:10207                                   ; preds = %10203
  %10208 = fmul fast float %10183, 0x3FF7154760000000
  %10209 = call float @dx.op.unary.f32(i32 21, float %10208)  ; Exp(value)
  %10210 = fsub fast float 1.000000e+00, %10209
  %10211 = fmul fast float %10180, %10210
  %10212 = fsub fast float -0.000000e+00, %10211
  %10213 = fdiv fast float %10212, %10183
  br label %10214

; <label>:10214                                   ; preds = %10207, %10203, %10163, %10156
  %10215 = phi float [ %10213, %10207 ], [ %10175, %10163 ], [ %10160, %10156 ], [ %10180, %10203 ]
  %10216 = phi float [ %10204, %10207 ], [ %10174, %10163 ], [ %10159, %10156 ], [ %10204, %10203 ]
  %10217 = phi float [ %10193, %10207 ], [ %10173, %10163 ], [ %10158, %10156 ], [ %10193, %10203 ]
  %10218 = phi float [ %10209, %10207 ], [ %10165, %10163 ], [ 1.000000e+00, %10156 ], [ 1.000000e+00, %10203 ]
  %10219 = phi float [ %10205, %10207 ], [ %10165, %10163 ], [ 1.000000e+00, %10156 ], [ %10205, %10203 ]
  %10220 = phi float [ %10194, %10207 ], [ %10165, %10163 ], [ 1.000000e+00, %10156 ], [ %10194, %10203 ]
  %10221 = fmul fast float %10220, %10132
  %10222 = fmul fast float %10219, %10143
  %10223 = fmul fast float %10218, %10154
  %10224 = fadd fast float %10221, %10217
  %10225 = fadd fast float %10222, %10216
  %10226 = fadd fast float %10223, %10215
  %10227 = fmul fast float %10220, %10131
  %10228 = fmul fast float %10219, %10142
  %10229 = fmul fast float %10218, %10153
  br label %10230

; <label>:10230                                   ; preds = %10214, %10025
  %10231 = phi float [ %10229, %10214 ], [ %10031, %10025 ]
  %10232 = phi float [ %10228, %10214 ], [ %10030, %10025 ]
  %10233 = phi float [ %10227, %10214 ], [ %10029, %10025 ]
  %10234 = phi float [ %10226, %10214 ], [ %10028, %10025 ]
  %10235 = phi float [ %10225, %10214 ], [ %10027, %10025 ]
  %10236 = phi float [ %10224, %10214 ], [ %10026, %10025 ]
  %10237 = fmul fast float %10236, %9178
  %10238 = fmul fast float %10235, %9180
  %10239 = fmul fast float %10234, %9182
  %10240 = fmul fast float %10233, %9473
  %10241 = call float @dx.op.dot3.f32(i32 55, float %10233, float %10232, float %10231, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10242 = call float @dx.op.dot3.f32(i32 55, float %10237, float %10238, float %10239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10243 = select i1 %226, float %10241, float %10233
  %10244 = select i1 %226, float %10241, float %10232
  %10245 = select i1 %226, float 1.000000e+00, float %10231
  %10246 = select i1 %226, float %10242, float %10237
  %10247 = select i1 %226, float 0.000000e+00, float %10238
  %10248 = select i1 %226, float 0.000000e+00, float %10239
  %10249 = fmul fast float %10243, %9467
  %10250 = fmul fast float %10244, %9468
  %10251 = fmul fast float %10245, %9469
  %10252 = fadd fast float %10249, %10246
  %10253 = fadd fast float %10250, %10247
  %10254 = fadd fast float %10248, %10251
  %10255 = fmul fast float %10243, %9470
  %10256 = fmul fast float %10244, %9471
  %10257 = fmul fast float %10245, %9472
  %10258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10259 = extractvalue %dx.types.CBufRet.i32 %10258, 0
  %10260 = icmp eq i32 %10259, 0
  br i1 %10260, label %10628, label %10261, !dx.controlflow.hints !179

; <label>:10261                                   ; preds = %10230
  %10262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10263 = extractvalue %dx.types.CBufRet.f32 %10262, 2
  %10264 = extractvalue %dx.types.CBufRet.f32 %10262, 3
  %10265 = fmul fast float %10263, %109
  %10266 = fmul fast float %10264, %110
  %10267 = fmul fast float %10265, 2.000000e+00
  %10268 = fmul fast float %10266, 2.000000e+00
  %10269 = fsub fast float 1.000000e+00, %10267
  %10270 = fsub fast float 1.000000e+00, %10268
  %10271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10272 = extractvalue %dx.types.CBufRet.f32 %10271, 0
  %10273 = extractvalue %dx.types.CBufRet.f32 %10271, 1
  %10274 = extractvalue %dx.types.CBufRet.f32 %10271, 2
  %10275 = fmul fast float %10269, %10272
  %10276 = fmul fast float %10269, %10273
  %10277 = fmul fast float %10269, %10274
  %10278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10279 = extractvalue %dx.types.CBufRet.f32 %10278, 0
  %10280 = extractvalue %dx.types.CBufRet.f32 %10278, 1
  %10281 = extractvalue %dx.types.CBufRet.f32 %10278, 2
  %10282 = fmul fast float %10270, %10279
  %10283 = fmul fast float %10270, %10280
  %10284 = fmul fast float %10270, %10281
  %10285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10286 = extractvalue %dx.types.CBufRet.f32 %10285, 0
  %10287 = extractvalue %dx.types.CBufRet.f32 %10285, 1
  %10288 = extractvalue %dx.types.CBufRet.f32 %10285, 2
  %10289 = fadd fast float %10282, %10286
  %10290 = fadd fast float %10289, %10275
  %10291 = fadd fast float %10283, %10287
  %10292 = fadd fast float %10291, %10276
  %10293 = fadd fast float %10284, %10288
  %10294 = fadd fast float %10293, %10277
  %10295 = fmul fast float %10290, %9466
  %10296 = fmul fast float %10292, %9466
  %10297 = fmul fast float %10294, %9466
  %10298 = fmul fast float %10295, %10295
  %10299 = fmul fast float %10296, %10296
  %10300 = fadd fast float %10298, %10299
  %10301 = fmul fast float %10297, %10297
  %10302 = fadd fast float %10300, %10301
  %10303 = call float @dx.op.unary.f32(i32 24, float %10302)  ; Sqrt(value)
  %10304 = extractvalue %dx.types.CBufRet.f32 %9193, 0
  %10305 = fsub fast float %10303, %10304
  %10306 = extractvalue %dx.types.CBufRet.f32 %9193, 2
  %10307 = fmul fast float %10305, %10306
  %10308 = call float @dx.op.unary.f32(i32 7, float %10307)  ; Saturate(value)
  %10309 = fadd fast float %10308, -5.000000e-01
  %10310 = fmul fast float %10309, 2.000000e+00
  %10311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10312 = extractvalue %dx.types.CBufRet.f32 %10311, 2
  %10313 = call float @dx.op.binary.f32(i32 36, float %10312, float %10310)  ; FMin(a,b)
  %10314 = fsub fast float -0.000000e+00, %10312
  %10315 = fcmp fast ogt float %10313, %10314
  br i1 %10315, label %10316, label %10628, !dx.controlflow.hints !180

; <label>:10316                                   ; preds = %10261
  %10317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10318 = extractvalue %dx.types.CBufRet.f32 %10317, 3
  %10319 = fcmp fast ogt float %10318, 0.000000e+00
  br i1 %10319, label %10320, label %10395, !dx.controlflow.hints !181

; <label>:10320                                   ; preds = %10316
  %10321 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10322 = extractvalue %dx.types.Dimensions %10321, 0
  %10323 = sitofp i32 %10322 to float
  %10324 = extractvalue %dx.types.Dimensions %10321, 1
  %10325 = sitofp i32 %10324 to float
  %10326 = fmul fast float %10265, %10323
  %10327 = fmul fast float %10266, %10325
  %10328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10329 = extractvalue %dx.types.CBufRet.f32 %10328, 1
  %10330 = fsub fast float -0.000000e+00, %10329
  %10331 = fptoui float %10330 to i32
  %10332 = fptoui float %10326 to i32
  %10333 = fptoui float %10327 to i32
  %10334 = and i32 %10331, 31
  %10335 = lshr i32 %10332, %10334
  %10336 = lshr i32 %10333, %10334
  %10337 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10331, i32 %10335, i32 %10336, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10338 = extractvalue %dx.types.ResRet.f32 %10337, 0
  %10339 = fcmp fast olt float %10338, -1.000000e+00
  %10340 = fcmp fast ogt float %10338, -1.000000e+00
  %10341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10342 = extractvalue %dx.types.CBufRet.f32 %10341, 1
  %10343 = select i1 %10340, float %10342, float 1.000000e+00
  %10344 = fadd fast float %10338, 1.000000e+00
  %10345 = fmul fast float %10343, %10344
  %10346 = call float @dx.op.unary.f32(i32 6, float %10345)  ; FAbs(value)
  %10347 = extractvalue %dx.types.CBufRet.f32 %10341, 3
  %10348 = fcmp fast oge float %10346, %10347
  %10349 = select i1 %10348, float 0x4197782600000000, float %10346
  %10350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10351 = extractvalue %dx.types.CBufRet.f32 %10350, 0
  %10352 = extractvalue %dx.types.CBufRet.f32 %10350, 1
  %10353 = extractvalue %dx.types.CBufRet.f32 %10350, 2
  %10354 = select i1 %10339, float %10351, float %10272
  %10355 = select i1 %10339, float %10352, float %10273
  %10356 = select i1 %10339, float %10353, float %10274
  %10357 = fmul fast float %10354, %10269
  %10358 = fmul fast float %10355, %10269
  %10359 = fmul fast float %10356, %10269
  %10360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10361 = extractvalue %dx.types.CBufRet.f32 %10360, 0
  %10362 = extractvalue %dx.types.CBufRet.f32 %10360, 1
  %10363 = extractvalue %dx.types.CBufRet.f32 %10360, 2
  %10364 = select i1 %10339, float %10361, float %10279
  %10365 = select i1 %10339, float %10362, float %10280
  %10366 = select i1 %10339, float %10363, float %10281
  %10367 = fmul fast float %10364, %10270
  %10368 = fmul fast float %10365, %10270
  %10369 = fmul fast float %10366, %10270
  %10370 = fadd fast float %10367, %10357
  %10371 = fadd fast float %10368, %10358
  %10372 = fadd fast float %10369, %10359
  %10373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10374 = extractvalue %dx.types.CBufRet.f32 %10373, 0
  %10375 = extractvalue %dx.types.CBufRet.f32 %10373, 1
  %10376 = extractvalue %dx.types.CBufRet.f32 %10373, 2
  %10377 = select i1 %10339, float %10374, float %10286
  %10378 = select i1 %10339, float %10375, float %10287
  %10379 = select i1 %10339, float %10376, float %10288
  %10380 = fadd fast float %10370, %10377
  %10381 = fadd fast float %10371, %10378
  %10382 = fadd fast float %10372, %10379
  %10383 = fmul fast float %10380, %10349
  %10384 = fmul fast float %10381, %10349
  %10385 = fmul fast float %10382, %10349
  %10386 = fmul fast float %10383, %10383
  %10387 = fmul fast float %10384, %10384
  %10388 = fadd fast float %10386, %10387
  %10389 = fmul fast float %10385, %10385
  %10390 = fadd fast float %10388, %10389
  %10391 = call float @dx.op.unary.f32(i32 24, float %10390)  ; Sqrt(value)
  %10392 = fsub fast float %10391, %10304
  %10393 = fmul fast float %10392, %10306
  %10394 = call float @dx.op.unary.f32(i32 7, float %10393)  ; Saturate(value)
  br label %10395

; <label>:10395                                   ; preds = %10320, %10316
  %10396 = phi float [ %10394, %10320 ], [ 1.000000e+00, %10316 ]
  %10397 = fmul fast float %10313, 5.000000e-01
  %10398 = fadd fast float %10397, 5.000000e-01
  %10399 = call float @dx.op.unary.f32(i32 22, float %10398)  ; Frc(value)
  %10400 = call float @dx.op.unary.f32(i32 27, float %10399)  ; Round_ni(value)
  %10401 = call float @dx.op.unary.f32(i32 22, float %10399)  ; Frc(value)
  %10402 = fmul fast float %10401, 2.000000e+00
  %10403 = fadd fast float %10402, -1.000000e+00
  %10404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10265, float %10266, float %10400, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10405 = extractvalue %dx.types.ResRet.f32 %10404, 0
  %10406 = extractvalue %dx.types.ResRet.f32 %10404, 1
  %10407 = extractvalue %dx.types.ResRet.f32 %10404, 2
  %10408 = extractvalue %dx.types.ResRet.f32 %10404, 3
  %10409 = fadd fast float %10405, -5.000000e-01
  %10410 = fadd fast float %10407, -5.000000e-01
  %10411 = fmul fast float %10409, 0xBFD5555560000000
  %10412 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10410, float %10411)  ; FMad(a,b,c)
  %10413 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10406, float 0.000000e+00)  ; FMad(a,b,c)
  %10414 = fadd fast float %10413, %10408
  %10415 = fmul fast float %10409, -7.500000e-01
  %10416 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10410, float %10415)  ; FMad(a,b,c)
  %10417 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10406, float 0.000000e+00)  ; FMad(a,b,c)
  %10418 = fadd fast float %10417, %10408
  %10419 = call float @dx.op.binary.f32(i32 35, float %10412, float -1.000000e+00)  ; FMax(a,b)
  %10420 = call float @dx.op.binary.f32(i32 35, float %10414, float -1.000000e+00)  ; FMax(a,b)
  %10421 = call float @dx.op.binary.f32(i32 35, float %10416, float -1.000000e+00)  ; FMax(a,b)
  %10422 = call float @dx.op.binary.f32(i32 35, float %10418, float -1.000000e+00)  ; FMax(a,b)
  %10423 = call float @dx.op.binary.f32(i32 36, float %10419, float 1.000000e+00)  ; FMin(a,b)
  %10424 = call float @dx.op.binary.f32(i32 36, float %10420, float 1.000000e+00)  ; FMin(a,b)
  %10425 = call float @dx.op.binary.f32(i32 36, float %10421, float 1.000000e+00)  ; FMin(a,b)
  %10426 = call float @dx.op.binary.f32(i32 36, float %10422, float 1.000000e+00)  ; FMin(a,b)
  %10427 = fcmp fast olt float %10423, 0x3FEFFF8020000000
  br i1 %10427, label %10428, label %10543, !dx.controlflow.hints !182

; <label>:10428                                   ; preds = %10395
  %10429 = extractvalue %dx.types.CBufRet.f32 %10311, 3
  %10430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10431 = extractvalue %dx.types.CBufRet.f32 %10430, 0
  %10432 = extractvalue %dx.types.CBufRet.f32 %10430, 1
  %10433 = extractvalue %dx.types.CBufRet.f32 %10430, 2
  %10434 = extractvalue %dx.types.CBufRet.f32 %10430, 3
  %10435 = fsub fast float %10431, %10423
  %10436 = fsub fast float %10432, %10424
  %10437 = fsub fast float %10433, %10425
  %10438 = fsub fast float %10434, %10426
  %10439 = fmul fast float %10435, %10429
  %10440 = fmul fast float %10436, %10429
  %10441 = fmul fast float %10437, %10429
  %10442 = fmul fast float %10438, %10429
  %10443 = fadd fast float %10439, %10423
  %10444 = fadd fast float %10440, %10424
  %10445 = fsub fast float -0.000000e+00, %10444
  %10446 = fadd fast float %10441, %10425
  %10447 = fadd fast float %10442, %10426
  %10448 = fmul fast float %10443, %10443
  %10449 = fsub fast float %10444, %10448
  %10450 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10449)  ; FMax(a,b)
  %10451 = fdiv fast float 1.000000e+00, %10450
  %10452 = fmul fast float %10444, %10443
  %10453 = fsub fast float %10446, %10452
  %10454 = fsub fast float %10403, %10443
  %10455 = fmul fast float %10403, %10403
  %10456 = fsub fast float %10455, %10444
  %10457 = fmul fast float %10454, %10451
  %10458 = fmul fast float %10457, %10453
  %10459 = fsub fast float %10456, %10458
  %10460 = fmul fast float %10444, %10444
  %10461 = fsub fast float %10447, %10460
  %10462 = fmul fast float %10453, %10453
  %10463 = fmul fast float %10462, %10451
  %10464 = fsub fast float %10461, %10463
  %10465 = fdiv fast float %10459, %10464
  %10466 = fmul fast float %10453, %10465
  %10467 = fsub fast float %10454, %10466
  %10468 = fmul fast float %10467, %10451
  %10469 = fmul fast float %10468, %10443
  %10470 = fsub fast float 1.000000e+00, %10469
  %10471 = fmul fast float %10444, %10465
  %10472 = fsub fast float %10470, %10471
  %10473 = fmul fast float %10468, %10468
  %10474 = fmul fast float %10465, 4.000000e+00
  %10475 = fmul fast float %10474, %10472
  %10476 = fsub fast float %10473, %10475
  %10477 = call float @dx.op.unary.f32(i32 24, float %10476)  ; Sqrt(value)
  %10478 = fcmp fast oge float %10468, 0.000000e+00
  %10479 = fsub fast float -0.000000e+00, %10477
  %10480 = select i1 %10478, float %10479, float %10477
  %10481 = fsub fast float %10480, %10468
  %10482 = fdiv fast float %10481, %10465
  %10483 = fdiv fast float %10472, %10481
  %10484 = fmul fast float %10482, 5.000000e-01
  %10485 = fmul fast float %10483, 2.000000e+00
  %10486 = select i1 %10478, float %10484, float %10485
  %10487 = select i1 %10478, float %10485, float %10484
  %10488 = call float @dx.op.binary.f32(i32 35, float %10486, float %10487)  ; FMax(a,b)
  %10489 = call float @dx.op.binary.f32(i32 36, float %10486, float %10487)  ; FMin(a,b)
  %10490 = fcmp fast ogt float %10403, %10489
  br i1 %10490, label %10491, label %10501

; <label>:10491                                   ; preds = %10428
  %10492 = fsub fast float %10403, %10489
  %10493 = fsub fast float %10488, %10489
  %10494 = fmul fast float %10492, %10493
  %10495 = fmul fast float %10488, %10403
  %10496 = fadd fast float %10488, %10403
  %10497 = fmul fast float %10496, %10443
  %10498 = fadd fast float %10495, %10444
  %10499 = fsub fast float %10498, %10497
  %10500 = fdiv fast float %10499, %10494
  br label %10501

; <label>:10501                                   ; preds = %10491, %10428
  %10502 = phi float [ %10500, %10491 ], [ 0.000000e+00, %10428 ]
  %10503 = fcmp fast ogt float %10403, %10488
  %10504 = fsub fast float %10403, %10488
  br i1 %10503, label %10505, label %10515

; <label>:10505                                   ; preds = %10501
  %10506 = fsub fast float %10488, %10489
  %10507 = fmul fast float %10506, %10504
  %10508 = fmul fast float %10489, %10403
  %10509 = fadd fast float %10489, %10403
  %10510 = fmul fast float %10509, %10443
  %10511 = fsub fast float %10445, %10508
  %10512 = fadd fast float %10511, %10510
  %10513 = fdiv fast float %10512, %10507
  %10514 = fadd fast float %10513, %10502
  br label %10515

; <label>:10515                                   ; preds = %10505, %10501
  %10516 = phi float [ %10514, %10505 ], [ %10502, %10501 ]
  %10517 = fsub fast float %10403, %10489
  %10518 = fmul fast float %10517, %10504
  %10519 = fmul fast float %10489, %10488
  %10520 = fadd fast float %10489, %10488
  %10521 = fmul fast float %10520, %10443
  %10522 = fadd fast float %10519, %10444
  %10523 = fsub fast float %10522, %10521
  %10524 = fdiv fast float %10523, %10518
  %10525 = call float @dx.op.unary.f32(i32 7, float %10516)  ; Saturate(value)
  %10526 = fcmp fast oeq float %9194, 0.000000e+00
  %10527 = extractvalue %dx.types.CBufRet.f32 %10311, 0
  %10528 = fcmp fast oeq float %10527, 0.000000e+00
  %10529 = or i1 %10526, %10528
  %10530 = fmul fast float %10527, 2.000000e+00
  %10531 = fadd fast float %10312, %10313
  %10532 = fdiv fast float %10531, %10530
  %10533 = call float @dx.op.unary.f32(i32 7, float %10532)  ; Saturate(value)
  %10534 = fmul fast float %10533, 2.000000e+00
  %10535 = fsub fast float 3.000000e+00, %10534
  %10536 = fmul fast float %10533, %10533
  %10537 = fmul fast float %10536, %10535
  %10538 = select i1 %10529, float 1.000000e+00, float %10537
  %10539 = fmul fast float %10524, %9194
  %10540 = fadd fast float %10525, %10539
  %10541 = call float @dx.op.unary.f32(i32 7, float %10540)  ; Saturate(value)
  %10542 = fmul fast float %10538, %10541
  br label %10543

; <label>:10543                                   ; preds = %10515, %10395
  %10544 = phi float [ %10542, %10515 ], [ 0.000000e+00, %10395 ]
  %10545 = fsub fast float 1.000000e+00, %10544
  %10546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10265, float %10266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10547 = extractvalue %dx.types.ResRet.f32 %10546, 0
  %10548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10549 = extractvalue %dx.types.CBufRet.i32 %10548, 2
  %10550 = icmp eq i32 %10549, 0
  br i1 %10550, label %10556, label %10551

; <label>:10551                                   ; preds = %10543
  %10552 = call float @dx.op.unary.f32(i32 7, float %10544)  ; Saturate(value)
  %10553 = fadd fast float %10547, -1.000000e+00
  %10554 = fmul fast float %10552, %10553
  %10555 = fadd fast float %10554, 1.000000e+00
  br label %10556

; <label>:10556                                   ; preds = %10551, %10543
  %10557 = phi float [ %10555, %10551 ], [ %10545, %10543 ]
  br i1 %10319, label %10558, label %10576

; <label>:10558                                   ; preds = %10556
  %10559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10560 = extractvalue %dx.types.CBufRet.f32 %10559, 1
  %10561 = fsub fast float %10396, %10560
  %10562 = call float @dx.op.unary.f32(i32 7, float %10561)  ; Saturate(value)
  %10563 = fsub fast float %10396, %10318
  %10564 = call float @dx.op.unary.f32(i32 7, float %10563)  ; Saturate(value)
  %10565 = fsub fast float %10562, %10564
  %10566 = fsub fast float %10398, %10564
  %10567 = fdiv fast float %10566, %10565
  %10568 = call float @dx.op.unary.f32(i32 7, float %10567)  ; Saturate(value)
  %10569 = fmul fast float %10568, 2.000000e+00
  %10570 = fsub fast float 3.000000e+00, %10569
  %10571 = fsub fast float %10547, %10557
  %10572 = fmul fast float %10568, %10568
  %10573 = fmul fast float %10572, %10571
  %10574 = fmul fast float %10573, %10570
  %10575 = fadd fast float %10574, %10557
  br label %10576

; <label>:10576                                   ; preds = %10558, %10556
  %10577 = phi float [ %10575, %10558 ], [ %10557, %10556 ]
  %10578 = call float @dx.op.binary.f32(i32 35, float %10547, float %10577)  ; FMax(a,b)
  %10579 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10580 = extractvalue %dx.types.CBufRet.i32 %10579, 2
  %10581 = and i32 %10580, 1
  %10582 = icmp eq i32 %10581, 0
  %10583 = fcmp fast une float %10578, 1.000000e+00
  %10584 = and i1 %10583, %10582
  br i1 %10584, label %10585, label %10604

; <label>:10585                                   ; preds = %10576
  %10586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10265, float %10266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10587 = extractvalue %dx.types.ResRet.f32 %10586, 0
  %10588 = extractvalue %dx.types.ResRet.f32 %10586, 1
  %10589 = extractvalue %dx.types.ResRet.f32 %10586, 2
  %10590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10591 = extractvalue %dx.types.CBufRet.f32 %10590, 1
  %10592 = fmul fast float %10591, %10587
  %10593 = fmul fast float %10591, %10588
  %10594 = fmul fast float %10591, %10589
  %10595 = fcmp fast ogt float %10547, 0x3FEFFF2E40000000
  %10596 = fsub fast float 1.000000e+00, %10578
  %10597 = fsub fast float 1.000000e+00, %10547
  %10598 = fdiv fast float %10596, %10597
  %10599 = call float @dx.op.unary.f32(i32 7, float %10598)  ; Saturate(value)
  %10600 = select i1 %10595, float 0.000000e+00, float %10599
  %10601 = fmul fast float %10592, %10600
  %10602 = fmul fast float %10593, %10600
  %10603 = fmul fast float %10594, %10600
  br label %10604

; <label>:10604                                   ; preds = %10585, %10576
  %10605 = phi float [ 0.000000e+00, %10576 ], [ %10601, %10585 ]
  %10606 = phi float [ 0.000000e+00, %10576 ], [ %10602, %10585 ]
  %10607 = phi float [ 0.000000e+00, %10576 ], [ %10603, %10585 ]
  %10608 = fmul fast float %10605, %9178
  %10609 = fmul fast float %10606, %9180
  %10610 = fmul fast float %10607, %9182
  %10611 = fmul fast float %10578, %10240
  %10612 = call float @dx.op.dot3.f32(i32 55, float %10578, float %10578, float %10578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10613 = call float @dx.op.dot3.f32(i32 55, float %10608, float %10609, float %10610, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10614 = select i1 %226, float %10612, float %10578
  %10615 = select i1 %226, float 1.000000e+00, float %10578
  %10616 = select i1 %226, float %10613, float %10608
  %10617 = select i1 %226, float 0.000000e+00, float %10609
  %10618 = select i1 %226, float 0.000000e+00, float %10610
  %10619 = fmul fast float %10614, %10252
  %10620 = fmul fast float %10614, %10253
  %10621 = fmul fast float %10615, %10254
  %10622 = fadd fast float %10619, %10616
  %10623 = fadd fast float %10620, %10617
  %10624 = fadd fast float %10618, %10621
  %10625 = fmul fast float %10614, %10255
  %10626 = fmul fast float %10614, %10256
  %10627 = fmul fast float %10615, %10257
  br label %10628

; <label>:10628                                   ; preds = %10604, %10261, %10230, %9462
  %10629 = phi float [ %9467, %9462 ], [ %10252, %10230 ], [ %10622, %10604 ], [ %10252, %10261 ]
  %10630 = phi float [ %9468, %9462 ], [ %10253, %10230 ], [ %10623, %10604 ], [ %10253, %10261 ]
  %10631 = phi float [ %9469, %9462 ], [ %10254, %10230 ], [ %10624, %10604 ], [ %10254, %10261 ]
  %10632 = phi float [ %9470, %9462 ], [ %10255, %10230 ], [ %10625, %10604 ], [ %10255, %10261 ]
  %10633 = phi float [ %9471, %9462 ], [ %10256, %10230 ], [ %10626, %10604 ], [ %10256, %10261 ]
  %10634 = phi float [ %9472, %9462 ], [ %10257, %10230 ], [ %10627, %10604 ], [ %10257, %10261 ]
  %10635 = phi float [ %9473, %9462 ], [ %10240, %10230 ], [ %10611, %10604 ], [ %10240, %10261 ]
  %10636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10637 = extractvalue %dx.types.CBufRet.f32 %10636, 2
  %10638 = extractvalue %dx.types.CBufRet.f32 %10636, 3
  %10639 = fmul fast float %10637, %109
  %10640 = fmul fast float %10638, %110
  %10641 = call float @dx.op.unary.f32(i32 7, float %10639)  ; Saturate(value)
  %10642 = call float @dx.op.unary.f32(i32 7, float %10640)  ; Saturate(value)
  %10643 = select i1 %9204, i32 2, i32 0
  %10644 = or i32 %10643, 1
  %10645 = uitofp i32 %10644 to float
  %10646 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10641, float %10642, float %10645, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10647 = extractvalue %dx.types.ResRet.f32 %10646, 0
  %10648 = extractvalue %dx.types.ResRet.f32 %10646, 1
  %10649 = extractvalue %dx.types.ResRet.f32 %10646, 2
  %10650 = extractvalue %dx.types.ResRet.f32 %10646, 3
  %10651 = add nuw nsw i32 %10643, 2
  %10652 = uitofp i32 %10651 to float
  %10653 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10641, float %10642, float %10652, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10654 = extractvalue %dx.types.ResRet.f32 %10653, 0
  %10655 = extractvalue %dx.types.ResRet.f32 %10653, 1
  %10656 = extractvalue %dx.types.ResRet.f32 %10653, 2
  %10657 = extractvalue %dx.types.ResRet.f32 %10653, 3
  %10658 = call float @dx.op.binary.f32(i32 35, float %10648, float %10649)  ; FMax(a,b)
  %10659 = call float @dx.op.binary.f32(i32 35, float %10647, float %10658)  ; FMax(a,b)
  %10660 = call float @dx.op.binary.f32(i32 35, float %10659, float %10650)  ; FMax(a,b)
  %10661 = call float @dx.op.binary.f32(i32 36, float %10655, float %10656)  ; FMin(a,b)
  %10662 = call float @dx.op.binary.f32(i32 36, float %10654, float %10661)  ; FMin(a,b)
  %10663 = call float @dx.op.binary.f32(i32 36, float %10662, float %10657)  ; FMin(a,b)
  %10664 = fmul fast float %10660, 2.550000e+02
  %10665 = fadd fast float %10664, 0x3F70101020000000
  %10666 = fptoui float %10665 to i32
  %10667 = fmul fast float %10663, 2.550000e+02
  %10668 = fadd fast float %10667, 0x3F70101020000000
  %10669 = fptoui float %10668 to i32
  %10670 = icmp ult i32 %10666, %10669
  br i1 %10670, label %10671, label %10840

; <label>:10671                                   ; preds = %10628
  %10672 = fcmp fast ogt float %96, 9.843750e-01
  %10673 = fadd fast float %9466, -4.000000e+00
  %10674 = select i1 %10672, float -4.000000e+00, float %10673
  %10675 = call float @dx.op.binary.f32(i32 35, float %10674, float 0.000000e+00)  ; FMax(a,b)
  %10676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10677 = extractvalue %dx.types.CBufRet.f32 %10676, 0
  %10678 = fadd fast float %10677, %10675
  %10679 = extractvalue %dx.types.CBufRet.f32 %10676, 2
  %10680 = fmul fast float %10678, %10679
  %10681 = call float @dx.op.unary.f32(i32 23, float %10680)  ; Log(value)
  %10682 = extractvalue %dx.types.CBufRet.f32 %10676, 3
  %10683 = fmul fast float %10682, %10681
  %10684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10685 = extractvalue %dx.types.CBufRet.f32 %10684, 2
  %10686 = fmul fast float %10683, %10685
  %10687 = call float @dx.op.unary.f32(i32 7, float %10686)  ; Saturate(value)
  %10688 = uitofp i32 %10666 to float
  %10689 = uitofp i32 %10669 to float
  %10690 = fadd fast float %10688, 5.000000e-01
  %10691 = fadd fast float %10689, 5.000000e-01
  %10692 = fmul fast float %10685, %10690
  %10693 = fmul fast float %10685, %10691
  %10694 = fadd fast float %10692, 0x3F0FFB4800000000
  %10695 = fadd fast float %10693, 0xBF0FFB4800000000
  %10696 = call float @dx.op.binary.f32(i32 35, float %10687, float %10694)  ; FMax(a,b)
  %10697 = call float @dx.op.binary.f32(i32 36, float %10696, float %10695)  ; FMin(a,b)
  %10698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10699 = extractvalue %dx.types.CBufRet.f32 %10698, 1
  %10700 = extractvalue %dx.types.CBufRet.f32 %10698, 2
  %10701 = extractvalue %dx.types.CBufRet.f32 %10698, 0
  %10702 = select i1 %9204, float %10701, float 0.000000e+00
  %10703 = fmul fast float %10699, %10697
  %10704 = fadd fast float %10702, %10703
  %10705 = fadd fast float %10702, %10700
  %10706 = fsub fast float %10699, %10700
  %10707 = fadd fast float %10706, %10702
  %10708 = call float @dx.op.binary.f32(i32 35, float %10704, float %10705)  ; FMax(a,b)
  %10709 = call float @dx.op.binary.f32(i32 36, float %10708, float %10707)  ; FMin(a,b)
  %10710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10641, float %10642, float %10709, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10711 = extractvalue %dx.types.ResRet.f32 %10710, 0
  %10712 = extractvalue %dx.types.ResRet.f32 %10710, 1
  %10713 = extractvalue %dx.types.ResRet.f32 %10710, 2
  %10714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10715 = extractvalue %dx.types.CBufRet.i32 %10714, 0
  %10716 = extractvalue %dx.types.CBufRet.i32 %10714, 1
  %10717 = uitofp i32 %10715 to float
  %10718 = uitofp i32 %10716 to float
  %10719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10720 = extractvalue %dx.types.CBufRet.f32 %10719, 0
  %10721 = extractvalue %dx.types.CBufRet.f32 %10719, 1
  %10722 = fmul fast float %10717, %10641
  %10723 = fmul fast float %10718, %10642
  %10724 = fadd fast float %10722, -5.000000e-01
  %10725 = fadd fast float %10723, -5.000000e-01
  %10726 = call float @dx.op.unary.f32(i32 22, float %10724)  ; Frc(value)
  %10727 = call float @dx.op.unary.f32(i32 22, float %10725)  ; Frc(value)
  %10728 = fmul fast float %10726, %10726
  %10729 = fmul fast float %10728, %10726
  %10730 = fsub fast float 3.000000e+00, %10726
  %10731 = fmul fast float %10728, %10730
  %10732 = fmul fast float %10726, 3.000000e+00
  %10733 = fmul fast float %10729, 3.000000e+00
  %10734 = fmul fast float %10728, 6.000000e+00
  %10735 = fsub fast float %10733, %10734
  %10736 = fadd fast float %10735, 4.000000e+00
  %10737 = fmul fast float %10736, 0x3FC5555560000000
  %10738 = fmul fast float %10729, -3.000000e+00
  %10739 = fadd fast float %10728, %10726
  %10740 = fmul fast float %10739, 3.000000e+00
  %10741 = fadd fast float %10738, 1.000000e+00
  %10742 = fadd fast float %10741, %10740
  %10743 = fmul fast float %10729, 0x3FC5555560000000
  %10744 = fmul fast float %10727, %10727
  %10745 = fmul fast float %10744, %10727
  %10746 = fsub fast float 3.000000e+00, %10727
  %10747 = fmul fast float %10744, %10746
  %10748 = fmul fast float %10727, 3.000000e+00
  %10749 = fmul fast float %10745, 3.000000e+00
  %10750 = fmul fast float %10744, 6.000000e+00
  %10751 = fsub fast float %10749, %10750
  %10752 = fadd fast float %10751, 4.000000e+00
  %10753 = fmul fast float %10752, 0x3FC5555560000000
  %10754 = fmul fast float %10745, -3.000000e+00
  %10755 = fadd fast float %10744, %10727
  %10756 = fmul fast float %10755, 3.000000e+00
  %10757 = fadd fast float %10754, 1.000000e+00
  %10758 = fadd fast float %10757, %10756
  %10759 = fmul fast float %10745, 0x3FC5555560000000
  %10760 = fadd fast float %10726, 1.000000e+00
  %10761 = fsub fast float 1.000000e+00, %10732
  %10762 = fadd fast float %10761, %10731
  %10763 = fadd fast float %10762, %10736
  %10764 = fmul fast float %10763, 0x3FC5555560000000
  %10765 = fdiv fast float %10737, %10764
  %10766 = fsub fast float %10760, %10765
  %10767 = fsub fast float 1.000000e+00, %10726
  %10768 = fadd fast float %10742, %10729
  %10769 = fmul fast float %10768, 0x3FC5555560000000
  %10770 = fdiv fast float %10743, %10769
  %10771 = fadd fast float %10767, %10770
  %10772 = fadd fast float %10727, 1.000000e+00
  %10773 = fsub fast float 1.000000e+00, %10748
  %10774 = fadd fast float %10773, %10747
  %10775 = fadd fast float %10774, %10752
  %10776 = fmul fast float %10775, 0x3FC5555560000000
  %10777 = fdiv fast float %10753, %10776
  %10778 = fsub fast float %10772, %10777
  %10779 = fsub fast float 1.000000e+00, %10727
  %10780 = fadd fast float %10758, %10745
  %10781 = fmul fast float %10780, 0x3FC5555560000000
  %10782 = fdiv fast float %10759, %10781
  %10783 = fadd fast float %10782, %10779
  %10784 = fmul fast float %10766, %10720
  %10785 = fsub fast float %10641, %10784
  %10786 = fmul fast float %10771, %10720
  %10787 = fadd fast float %10786, %10641
  %10788 = fmul fast float %10783, %10721
  %10789 = fadd fast float %10788, %10642
  %10790 = fmul fast float %10778, %10721
  %10791 = fsub fast float %10642, %10790
  %10792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10785, float %10791, float %10709, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10793 = extractvalue %dx.types.ResRet.f32 %10792, 0
  %10794 = extractvalue %dx.types.ResRet.f32 %10792, 1
  %10795 = extractvalue %dx.types.ResRet.f32 %10792, 2
  %10796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10787, float %10791, float %10709, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10797 = extractvalue %dx.types.ResRet.f32 %10796, 0
  %10798 = extractvalue %dx.types.ResRet.f32 %10796, 1
  %10799 = extractvalue %dx.types.ResRet.f32 %10796, 2
  %10800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10785, float %10789, float %10709, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10801 = extractvalue %dx.types.ResRet.f32 %10800, 0
  %10802 = extractvalue %dx.types.ResRet.f32 %10800, 1
  %10803 = extractvalue %dx.types.ResRet.f32 %10800, 2
  %10804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10787, float %10789, float %10709, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10805 = extractvalue %dx.types.ResRet.f32 %10804, 0
  %10806 = extractvalue %dx.types.ResRet.f32 %10804, 1
  %10807 = extractvalue %dx.types.ResRet.f32 %10804, 2
  %10808 = fsub fast float %10801, %10793
  %10809 = fsub fast float %10802, %10794
  %10810 = fsub fast float %10803, %10795
  %10811 = fmul fast float %10808, %10781
  %10812 = fmul fast float %10809, %10781
  %10813 = fmul fast float %10810, %10781
  %10814 = fadd fast float %10811, %10793
  %10815 = fadd fast float %10812, %10794
  %10816 = fadd fast float %10813, %10795
  %10817 = fsub fast float %10805, %10797
  %10818 = fsub fast float %10806, %10798
  %10819 = fsub fast float %10807, %10799
  %10820 = fmul fast float %10817, %10781
  %10821 = fmul fast float %10818, %10781
  %10822 = fmul fast float %10819, %10781
  %10823 = fsub fast float %10797, %10814
  %10824 = fadd fast float %10823, %10820
  %10825 = fsub fast float %10798, %10815
  %10826 = fadd fast float %10825, %10821
  %10827 = fsub fast float %10799, %10816
  %10828 = fadd fast float %10827, %10822
  %10829 = fmul fast float %10824, %10769
  %10830 = fmul fast float %10826, %10769
  %10831 = fmul fast float %10828, %10769
  %10832 = fadd fast float %10829, %10814
  %10833 = fadd fast float %10830, %10815
  %10834 = fadd fast float %10831, %10816
  %10835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10836 = extractvalue %dx.types.CBufRet.f32 %10835, 1
  %10837 = fmul fast float %10832, %10836
  %10838 = fmul fast float %10833, %10836
  %10839 = fmul fast float %10834, %10836
  br label %10840

; <label>:10840                                   ; preds = %10671, %10628
  %10841 = phi float [ %10711, %10671 ], [ 1.000000e+00, %10628 ]
  %10842 = phi float [ %10712, %10671 ], [ 1.000000e+00, %10628 ]
  %10843 = phi float [ %10713, %10671 ], [ 1.000000e+00, %10628 ]
  %10844 = phi float [ %10837, %10671 ], [ 0.000000e+00, %10628 ]
  %10845 = phi float [ %10838, %10671 ], [ 0.000000e+00, %10628 ]
  %10846 = phi float [ %10839, %10671 ], [ 0.000000e+00, %10628 ]
  %10847 = fmul fast float %10844, %9178
  %10848 = fmul fast float %10845, %9180
  %10849 = fmul fast float %10846, %9182
  %10850 = fmul fast float %10841, %10635
  %10851 = call float @dx.op.dot3.f32(i32 55, float %10841, float %10842, float %10843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10852 = call float @dx.op.dot3.f32(i32 55, float %10847, float %10848, float %10849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10853 = select i1 %226, float %10851, float %10841
  %10854 = select i1 %226, float %10851, float %10842
  %10855 = select i1 %226, float 1.000000e+00, float %10843
  %10856 = select i1 %226, float %10852, float %10847
  %10857 = select i1 %226, float 0.000000e+00, float %10848
  %10858 = select i1 %226, float 0.000000e+00, float %10849
  %10859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10860 = extractvalue %dx.types.CBufRet.i32 %10859, 3
  %10861 = and i32 %10860, 3
  %10862 = icmp ne i32 %10861, 0
  %10863 = and i32 %10860, 4
  %10864 = icmp ne i32 %10863, 0
  %10865 = and i1 %10862, %10864
  %10866 = and i1 %226, %10865
  br i1 %10866, label %10867, label %10873

; <label>:10867                                   ; preds = %10840
  %10868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10869 = extractvalue %dx.types.CBufRet.f32 %10868, 1
  %10870 = fadd fast float %10850, -1.000000e+00
  %10871 = fmul fast float %10869, %10870
  %10872 = fadd fast float %10871, 1.000000e+00
  br label %10873

; <label>:10873                                   ; preds = %10867, %10840
  %10874 = phi float [ %10872, %10867 ], [ %10850, %10840 ]
  %10875 = fadd fast float %10632, %10629
  %10876 = fmul fast float %10853, %10875
  %10877 = fadd fast float %10876, %10856
  %10878 = fadd fast float %10633, %10630
  %10879 = fmul fast float %10854, %10878
  %10880 = fadd fast float %10879, %10857
  %10881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10882 = extractvalue %dx.types.CBufRet.f32 %10881, 0
  br i1 %226, label %10883, label %10898

; <label>:10883                                   ; preds = %10873
  %10884 = fadd fast float %10877, %10880
  %10885 = fmul fast float %10882, %10884
  %10886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10887 = extractvalue %dx.types.CBufRet.f32 %10886, 3
  %10888 = extractvalue %dx.types.CBufRet.f32 %9186, 1
  %10889 = fsub fast float %9191, %9185
  %10890 = fadd fast float %10889, %9192
  %10891 = fsub fast float %10890, %10888
  %10892 = extractvalue %dx.types.CBufRet.f32 %9186, 2
  %10893 = fmul fast float %10891, %10892
  %10894 = call float @dx.op.unary.f32(i32 7, float %10893)  ; Saturate(value)
  %10895 = fsub fast float %10894, %10887
  %10896 = fmul fast float %10895, %10874
  %10897 = fadd fast float %10896, %10887
  br label %10924

; <label>:10898                                   ; preds = %10873
  %10899 = fadd fast float %10634, %10631
  %10900 = fmul fast float %10855, %10899
  %10901 = fadd fast float %10900, %10858
  %10902 = fmul fast float %10882, %10877
  %10903 = fmul fast float %10882, %10880
  %10904 = fmul fast float %10882, %10901
  %10905 = call float @dx.op.binary.f32(i32 35, float %10903, float %10904)  ; FMax(a,b)
  %10906 = call float @dx.op.binary.f32(i32 35, float %10902, float %10905)  ; FMax(a,b)
  %10907 = call float @dx.op.binary.f32(i32 35, float %9180, float %9182)  ; FMax(a,b)
  %10908 = call float @dx.op.binary.f32(i32 35, float %9178, float %10907)  ; FMax(a,b)
  %10909 = call float @dx.op.binary.f32(i32 35, float %10906, float %10908)  ; FMax(a,b)
  %10910 = fcmp fast ugt float %10909, 0x3F10000000000000
  br i1 %10910, label %10912, label %10911

; <label>:10911                                   ; preds = %10898
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10912

; <label>:10912                                   ; preds = %10911, %10898
  %10913 = add i32 %60, 356
  %10914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10913, i32 undef)  ; BufferLoad(srv,index,wot)
  %10915 = extractvalue %dx.types.ResRet.i32 %10914, 0
  %10916 = and i32 %10915, 32
  %10917 = icmp eq i32 %10916, 0
  br i1 %10917, label %10924, label %10918

; <label>:10918                                   ; preds = %10912
  %10919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10920 = extractvalue %dx.types.CBufRet.f32 %10919, 0
  %10921 = fmul fast float %10920, 0x3FE99999A0000000
  %10922 = fadd fast float %10920, %10902
  %10923 = fadd fast float %10921, %10904
  br label %10924

; <label>:10924                                   ; preds = %10918, %10912, %10883
  %10925 = phi float [ 1.000000e+00, %10883 ], [ %9180, %10918 ], [ %9180, %10912 ]
  %10926 = phi float [ 1.000000e+00, %10883 ], [ %9182, %10918 ], [ %9182, %10912 ]
  %10927 = phi float [ %10885, %10883 ], [ %10922, %10918 ], [ %10902, %10912 ]
  %10928 = phi float [ %10897, %10883 ], [ %10903, %10918 ], [ %10903, %10912 ]
  %10929 = phi float [ 1.000000e+00, %10883 ], [ %10923, %10918 ], [ %10904, %10912 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10930 = call float @dx.op.binary.f32(i32 36, float %10927, float 3.225500e+04)  ; FMin(a,b)
  %10931 = call float @dx.op.binary.f32(i32 36, float %10928, float 3.225500e+04)  ; FMin(a,b)
  %10932 = call float @dx.op.binary.f32(i32 36, float %10929, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10930)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10931)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10932)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10933 = call float @dx.op.binary.f32(i32 36, float %9178, float 3.225500e+04)  ; FMin(a,b)
  %10934 = call float @dx.op.binary.f32(i32 36, float %10925, float 3.225500e+04)  ; FMin(a,b)
  %10935 = call float @dx.op.binary.f32(i32 36, float %10926, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10933)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10934)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10935)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

