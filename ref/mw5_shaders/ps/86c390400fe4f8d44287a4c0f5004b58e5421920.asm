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
; shader hash: 3d9093197124d87c12d8f34b5f997996
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
  %420 = add i32 %60, 504
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
  %795 = add i32 %60, 456
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
  %1135 = add i32 %60, 472
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
  %1176 = add i32 %60, 488
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
  %1588 = add i32 %60, 460
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
  %1928 = add i32 %60, 476
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
  %1969 = add i32 %60, 492
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
  %2645 = add i32 %60, 464
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
  %2985 = add i32 %60, 480
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
  %3026 = add i32 %60, 496
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
  %3702 = add i32 %60, 468
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
  %4042 = add i32 %60, 484
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
  %4083 = add i32 %60, 500
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
  %4429 = add i32 %60, 360
  %4430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.i32 %4430, 0
  %4432 = bitcast i32 %4431 to float
  %4433 = fcmp fast oge float %4432, 0.000000e+00
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 0
  %4436 = select i1 %4433, float %4432, float %4435
  %4437 = call float @dx.op.dot2.f32(i32 54, float %4410, float %4411, float %4410, float %4411)  ; Dot2(ax,ay,bx,by)
  %4438 = fmul fast float %4437, 0x3FE3333340000000
  %4439 = fsub fast float 1.000000e+00, %4438
  %4440 = call float @dx.op.dot3.f32(i32 55, float %4410, float %4411, float %4439, float %4410, float %4411, float %4439)  ; Dot3(ax,ay,az,bx,by,bz)
  %4441 = call float @dx.op.unary.f32(i32 25, float %4440)  ; Rsqrt(value)
  %4442 = fmul fast float %4441, %4410
  %4443 = fmul fast float %4441, %4411
  %4444 = fmul fast float %4439, %4441
  %4445 = fmul fast float %4444, %116
  %4446 = fmul fast float %4444, %117
  %4447 = fmul fast float %4444, %118
  %4448 = fmul fast float %4442, %81
  %4449 = fmul fast float %4442, %82
  %4450 = fmul fast float %4442, %83
  %4451 = fadd fast float %4445, %4448
  %4452 = fadd fast float %4446, %4449
  %4453 = fadd fast float %4447, %4450
  %4454 = fmul fast float %128, %4443
  %4455 = fmul fast float %129, %4443
  %4456 = fmul fast float %130, %4443
  %4457 = fadd fast float %4451, %4454
  %4458 = fadd fast float %4452, %4455
  %4459 = fadd fast float %4453, %4456
  %4460 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4458, float %4459, float %4457, float %4458, float %4459)  ; Dot3(ax,ay,az,bx,by,bz)
  %4461 = call float @dx.op.unary.f32(i32 25, float %4460)  ; Rsqrt(value)
  %4462 = fmul fast float %4457, %4461
  %4463 = fmul fast float %4458, %4461
  %4464 = fmul fast float %4459, %4461
  %4465 = and i32 %62, 1
  %4466 = icmp eq i32 %4465, 0
  br i1 %4466, label %4467, label %5059

; <label>:4467                                    ; preds = %4409
  %4468 = call float @dx.op.unary.f32(i32 83, float %164)  ; DerivCoarseX(value)
  %4469 = call float @dx.op.unary.f32(i32 83, float %165)  ; DerivCoarseX(value)
  %4470 = call float @dx.op.unary.f32(i32 83, float %166)  ; DerivCoarseX(value)
  %4471 = call float @dx.op.unary.f32(i32 84, float %164)  ; DerivCoarseY(value)
  %4472 = call float @dx.op.unary.f32(i32 84, float %165)  ; DerivCoarseY(value)
  %4473 = call float @dx.op.unary.f32(i32 84, float %166)  ; DerivCoarseY(value)
  %4474 = fadd fast float %4468, %164
  %4475 = fadd fast float %4469, %165
  %4476 = fadd fast float %4470, %166
  %4477 = fadd fast float %4471, %164
  %4478 = fadd fast float %4472, %165
  %4479 = fadd fast float %4473, %166
  %4480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.f32 %4480, 0
  %4482 = extractvalue %dx.types.CBufRet.f32 %4480, 1
  %4483 = extractvalue %dx.types.CBufRet.f32 %4480, 2
  %4484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.f32 %4484, 2
  %4486 = extractvalue %dx.types.CBufRet.f32 %4484, 3
  %4487 = fmul fast float %4481, %109
  %4488 = fmul fast float %4487, %4485
  %4489 = fmul fast float %4482, %110
  %4490 = fmul fast float %4489, %4486
  %4491 = fptoui float %4488 to i32
  %4492 = fptoui float %4490 to i32
  %4493 = fadd fast float %4481, -1.000000e+00
  %4494 = fadd fast float %4482, -1.000000e+00
  %4495 = fptoui float %4493 to i32
  %4496 = fptoui float %4494 to i32
  %4497 = call i32 @dx.op.binary.i32(i32 40, i32 %4491, i32 %4495)  ; UMin(a,b)
  %4498 = call i32 @dx.op.binary.i32(i32 40, i32 %4492, i32 %4496)  ; UMin(a,b)
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 2
  %4501 = extractvalue %dx.types.CBufRet.f32 %4499, 3
  %4502 = fmul fast float %4500, %97
  %4503 = fsub fast float %4502, %4501
  %4504 = fadd fast float %4483, -1.000000e+00
  %4505 = call float @dx.op.binary.f32(i32 36, float %4503, float %4504)  ; FMin(a,b)
  %4506 = fptoui float %4505 to i32
  %4507 = fptoui float %4481 to i32
  %4508 = fptoui float %4482 to i32
  %4509 = mul i32 %4506, %4508
  %4510 = add i32 %4509, %4498
  %4511 = mul i32 %4510, %4507
  %4512 = add i32 %4511, %4497
  %4513 = shl i32 %4512, 2
  %4514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4513, i32 undef)  ; BufferLoad(srv,index,wot)
  %4515 = extractvalue %dx.types.ResRet.i32 %4514, 0
  %4516 = and i32 %4515, 1023
  %4517 = lshr i32 %4515, 10
  %4518 = icmp eq i32 %4516, 0
  br i1 %4518, label %5022, label %4519

; <label>:4519                                    ; preds = %4467
  %4520 = and i32 %4515, 1023
  br label %4521

; <label>:4521                                    ; preds = %4653, %4519
  %4522 = phi i32 [ %4603, %4653 ], [ 0, %4519 ]
  %4523 = phi float [ %4654, %4653 ], [ 0.000000e+00, %4519 ]
  %4524 = phi float [ %4655, %4653 ], [ %4436, %4519 ]
  %4525 = phi float [ %4656, %4653 ], [ %4428, %4519 ]
  %4526 = phi float [ %4657, %4653 ], [ %4421, %4519 ]
  %4527 = phi float [ %4658, %4653 ], [ %4422, %4519 ]
  %4528 = phi float [ %4659, %4653 ], [ %4423, %4519 ]
  %4529 = phi float [ %4660, %4653 ], [ 0.000000e+00, %4519 ]
  %4530 = phi float [ %4661, %4653 ], [ 0.000000e+00, %4519 ]
  %4531 = phi float [ %4662, %4653 ], [ %4418, %4519 ]
  %4532 = phi float [ %4663, %4653 ], [ %4419, %4519 ]
  %4533 = phi float [ %4664, %4653 ], [ %4420, %4519 ]
  %4534 = phi float [ %4665, %4653 ], [ %4415, %4519 ]
  %4535 = phi float [ %4666, %4653 ], [ %4416, %4519 ]
  %4536 = phi float [ %4667, %4653 ], [ %4417, %4519 ]
  %4537 = phi float [ %4668, %4653 ], [ %4462, %4519 ]
  %4538 = phi float [ %4669, %4653 ], [ %4463, %4519 ]
  %4539 = phi float [ %4670, %4653 ], [ %4464, %4519 ]
  %4540 = phi float [ %4671, %4653 ], [ %4426, %4519 ]
  %4541 = phi float [ %4672, %4653 ], [ %4425, %4519 ]
  %4542 = phi float [ %4673, %4653 ], [ 0.000000e+00, %4519 ]
  %4543 = phi float [ %4674, %4653 ], [ %4424, %4519 ]
  %4544 = phi float [ %4675, %4653 ], [ %4412, %4519 ]
  %4545 = phi float [ %4676, %4653 ], [ %4413, %4519 ]
  %4546 = phi float [ %4677, %4653 ], [ %4414, %4519 ]
  %4547 = add nuw nsw i32 %4522, %4517
  %4548 = shl i32 %4547, 2
  %4549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.i32 %4549, 0
  %4551 = shl i32 %4550, 8
  %4552 = or i32 %4551, 48
  %4553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4552, i32 undef)  ; BufferLoad(srv,index,wot)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4556 = extractvalue %dx.types.ResRet.f32 %4553, 2
  %4557 = extractvalue %dx.types.ResRet.f32 %4553, 3
  %4558 = or i32 %4551, 64
  %4559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4558, i32 undef)  ; BufferLoad(srv,index,wot)
  %4560 = extractvalue %dx.types.ResRet.i32 %4559, 0
  %4561 = extractvalue %dx.types.ResRet.i32 %4559, 1
  %4562 = or i32 %4551, 80
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4566 = or i32 %4551, 96
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4572 = or i32 %4551, 112
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4575 = or i32 %4551, 128
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4580 = extractvalue %dx.types.ResRet.f32 %4576, 3
  %4581 = or i32 %4551, 144
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = extractvalue %dx.types.ResRet.f32 %4582, 3
  %4587 = or i32 %4551, 160
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = extractvalue %dx.types.ResRet.f32 %4588, 3
  %4593 = or i32 %4551, 192
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = or i32 %4551, 208
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = or i32 %4551, 248
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.ResRet.f32 %4600, 1
  %4603 = add nuw nsw i32 %4522, 1
  %4604 = bitcast float %4557 to i32
  %4605 = and i32 %4604, 512
  %4606 = icmp eq i32 %4605, 0
  %4607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4551, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.f32 %4607, 0
  %4609 = extractvalue %dx.types.ResRet.f32 %4607, 1
  %4610 = extractvalue %dx.types.ResRet.f32 %4607, 2
  %4611 = extractvalue %dx.types.ResRet.f32 %4607, 3
  %4612 = call float @dx.op.dot4.f32(i32 56, float %4608, float %4609, float %4610, float %4611, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4613 = or i32 %4551, 16
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = extractvalue %dx.types.ResRet.f32 %4614, 3
  %4619 = call float @dx.op.dot4.f32(i32 56, float %4615, float %4616, float %4617, float %4618, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4620 = or i32 %4551, 32
  %4621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.f32 %4621, 0
  %4623 = extractvalue %dx.types.ResRet.f32 %4621, 1
  %4624 = extractvalue %dx.types.ResRet.f32 %4621, 2
  %4625 = extractvalue %dx.types.ResRet.f32 %4621, 3
  %4626 = call float @dx.op.dot4.f32(i32 56, float %4622, float %4623, float %4624, float %4625, float %164, float %165, float %166, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4627 = call float @dx.op.unary.f32(i32 27, float %4612)  ; Round_ni(value)
  %4628 = call float @dx.op.unary.f32(i32 6, float %4627)  ; FAbs(value)
  %4629 = call float @dx.op.unary.f32(i32 27, float %4619)  ; Round_ni(value)
  %4630 = call float @dx.op.unary.f32(i32 6, float %4629)  ; FAbs(value)
  %4631 = call float @dx.op.unary.f32(i32 6, float %4626)  ; FAbs(value)
  %4632 = call float @dx.op.unary.f32(i32 27, float %4631)  ; Round_ni(value)
  %4633 = fadd fast float %4630, %4628
  %4634 = fadd fast float %4633, %4632
  %4635 = fcmp fast oeq float %4634, 0.000000e+00
  %4636 = call float @dx.op.dot4.f32(i32 56, float %4608, float %4609, float %4610, float %4611, float %4474, float %4475, float %4476, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4637 = call float @dx.op.dot4.f32(i32 56, float %4615, float %4616, float %4617, float %4618, float %4474, float %4475, float %4476, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4638 = call float @dx.op.dot4.f32(i32 56, float %4608, float %4609, float %4610, float %4611, float %4477, float %4478, float %4479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4639 = call float @dx.op.dot4.f32(i32 56, float %4615, float %4616, float %4617, float %4618, float %4477, float %4478, float %4479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4640 = fsub fast float %4636, %4612
  %4641 = fsub fast float %4638, %4612
  %4642 = fsub fast float %4637, %4619
  %4643 = fsub fast float %4639, %4619
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4554, float %4555, float %4556, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4646 = extractvalue %dx.types.CBufRet.f32 %4645, 2
  %4647 = fadd fast float %4646, %4644
  %4648 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4645, 0
  %4650 = fcmp fast ogt float %4648, %4649
  %4651 = and i1 %4635, %4650
  %4652 = and i1 %4606, %4651
  br i1 %4652, label %4679, label %4653

; <label>:4653                                    ; preds = %5008, %4760, %4679, %4521
  %4654 = phi float [ %4523, %4679 ], [ %4763, %4760 ], [ %4763, %5008 ], [ %4523, %4521 ]
  %4655 = phi float [ %4524, %4679 ], [ %4524, %4760 ], [ %4984, %5008 ], [ %4524, %4521 ]
  %4656 = phi float [ %4525, %4679 ], [ %4525, %4760 ], [ %4982, %5008 ], [ %4525, %4521 ]
  %4657 = phi float [ %4526, %4679 ], [ %4526, %4760 ], [ %4960, %5008 ], [ %4526, %4521 ]
  %4658 = phi float [ %4527, %4679 ], [ %4527, %4760 ], [ %4961, %5008 ], [ %4527, %4521 ]
  %4659 = phi float [ %4528, %4679 ], [ %4528, %4760 ], [ %4962, %5008 ], [ %4528, %4521 ]
  %4660 = phi float [ %4529, %4679 ], [ %4529, %4760 ], [ %4887, %5008 ], [ %4529, %4521 ]
  %4661 = phi float [ %4530, %4679 ], [ %4530, %4760 ], [ %4885, %5008 ], [ %4530, %4521 ]
  %4662 = phi float [ %4531, %4679 ], [ %4531, %4760 ], [ %4930, %5008 ], [ %4531, %4521 ]
  %4663 = phi float [ %4532, %4679 ], [ %4532, %4760 ], [ %4931, %5008 ], [ %4532, %4521 ]
  %4664 = phi float [ %4533, %4679 ], [ %4533, %4760 ], [ %4932, %5008 ], [ %4533, %4521 ]
  %4665 = phi float [ %4534, %4679 ], [ %4534, %4760 ], [ %5018, %5008 ], [ %4534, %4521 ]
  %4666 = phi float [ %4535, %4679 ], [ %4535, %4760 ], [ %5019, %5008 ], [ %4535, %4521 ]
  %4667 = phi float [ %4536, %4679 ], [ %4536, %4760 ], [ %5020, %5008 ], [ %4536, %4521 ]
  %4668 = phi float [ %4537, %4679 ], [ %4537, %4760 ], [ %4866, %5008 ], [ %4537, %4521 ]
  %4669 = phi float [ %4538, %4679 ], [ %4538, %4760 ], [ %4867, %5008 ], [ %4538, %4521 ]
  %4670 = phi float [ %4539, %4679 ], [ %4539, %4760 ], [ %4868, %5008 ], [ %4539, %4521 ]
  %4671 = phi float [ %4540, %4679 ], [ %4540, %4760 ], [ %4940, %5008 ], [ %4540, %4521 ]
  %4672 = phi float [ %4541, %4679 ], [ %4541, %4760 ], [ %4937, %5008 ], [ %4541, %4521 ]
  %4673 = phi float [ %4542, %4679 ], [ %4542, %4760 ], [ %4934, %5008 ], [ %4542, %4521 ]
  %4674 = phi float [ %4543, %4679 ], [ %4543, %4760 ], [ %4883, %5008 ], [ %4543, %4521 ]
  %4675 = phi float [ %4544, %4679 ], [ %4544, %4760 ], [ %4878, %5008 ], [ %4544, %4521 ]
  %4676 = phi float [ %4545, %4679 ], [ %4545, %4760 ], [ %4879, %5008 ], [ %4545, %4521 ]
  %4677 = phi float [ %4546, %4679 ], [ %4546, %4760 ], [ %4880, %5008 ], [ %4546, %4521 ]
  %4678 = icmp eq i32 %4603, %4520
  br i1 %4678, label %5021, label %4521

; <label>:4679                                    ; preds = %4521
  %4680 = extractvalue %dx.types.ResRet.f32 %4573, 3
  %4681 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4683 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4684 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4685 = extractvalue %dx.types.ResRet.i32 %4559, 3
  %4686 = extractvalue %dx.types.ResRet.i32 %4559, 2
  %4687 = add i32 %4685, 0
  %4688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4688, %dx.types.Handle %4689, float %4612, float %4619, float undef, float undef, i32 0, i32 0, i32 undef, float %4640, float %4642, float undef, float %4641, float %4643, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = fmul fast float %4691, %4684
  %4693 = fadd fast float %4692, %4683
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fmul fast float %4612, %4568
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4619, float %4695)  ; FMad(a,b,c)
  %4697 = fadd fast float %4696, %4682
  %4698 = fmul fast float %4612, %4570
  %4699 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4619, float %4698)  ; FMad(a,b,c)
  %4700 = fadd fast float %4699, %4681
  %4701 = fmul fast float %4640, %4568
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4642, float %4701)  ; FMad(a,b,c)
  %4703 = fmul fast float %4640, %4570
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4642, float %4703)  ; FMad(a,b,c)
  %4705 = fmul fast float %4641, %4568
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4643, float %4705)  ; FMad(a,b,c)
  %4707 = fmul fast float %4641, %4570
  %4708 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4643, float %4707)  ; FMad(a,b,c)
  %4709 = add i32 %4686, 0
  %4710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4709, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4710, %dx.types.Handle %4689, float %4697, float %4700, float undef, float undef, i32 0, i32 0, i32 undef, float %4702, float %4704, float undef, float %4706, float %4708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = and i32 %4604, 1024
  %4714 = icmp ne i32 %4713, 0
  %4715 = fcmp fast ogt float %4712, 0x3FE0101020000000
  %4716 = uitofp i1 %4715 to float
  %4717 = select i1 %4714, float %4716, float %4712
  %4718 = and i32 %4604, 8192
  %4719 = icmp ne i32 %4718, 0
  %4720 = select i1 %4719, float %4680, float 1.000000e+00
  %4721 = fmul fast float %4612, 2.000000e+00
  %4722 = fadd fast float %4721, -1.000000e+00
  %4723 = call float @dx.op.unary.f32(i32 6, float %4722)  ; FAbs(value)
  %4724 = fmul fast float %4723, %4601
  %4725 = fsub fast float %4724, %4601
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fmul fast float %4619, 2.000000e+00
  %4728 = fadd fast float %4727, -1.000000e+00
  %4729 = call float @dx.op.unary.f32(i32 6, float %4728)  ; FAbs(value)
  %4730 = fmul fast float %4729, %4602
  %4731 = fsub fast float %4730, %4602
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fmul fast float %4631, %4564
  %4734 = fsub fast float %4733, %4564
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4694, %4720
  %4737 = fmul fast float %4736, %4691
  %4738 = fmul fast float %4737, %4726
  %4739 = fmul fast float %4738, %4717
  %4740 = fmul fast float %4739, %4732
  %4741 = fmul fast float %4740, %4735
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 1
  %4744 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4745 = fsub fast float %4648, %4744
  %4746 = fmul fast float %4745, %4743
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fmul fast float %4741, %4565
  %4749 = fadd fast float %4741, %4565
  %4750 = fmul fast float %4749, %4574
  %4751 = fsub fast float %4750, %4574
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = and i32 %4604, 128
  %4754 = icmp ne i32 %4753, 0
  %4755 = select i1 %4754, float %4752, float %4748
  %4756 = fmul fast float %4755, %4747
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = fcmp fast ugt float %4756, %4758
  br i1 %4759, label %4760, label %4653

; <label>:4760                                    ; preds = %4679
  %4761 = select i1 %4719, float %4756, float 0.000000e+00
  %4762 = fadd fast float %4761, %4523
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  br i1 %4719, label %4653, label %4764

; <label>:4764                                    ; preds = %4760
  %4765 = and i32 %4604, 4
  %4766 = and i32 %4604, 8
  %4767 = add i32 %4560, 0
  %4768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4767, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4770 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4768, %dx.types.Handle %4769, float %4697, float %4700, float undef, float undef, i32 0, i32 0, i32 undef, float %4702, float %4704, float undef, float %4706, float %4708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.ResRet.f32 %4770, 1
  %4773 = extractvalue %dx.types.ResRet.f32 %4770, 2
  %4774 = extractvalue %dx.types.ResRet.f32 %4770, 3
  %4775 = bitcast float %4586 to i32
  %4776 = and i32 %4775, 255
  %4777 = uitofp i32 %4776 to float
  %4778 = lshr i32 %4775, 8
  %4779 = and i32 %4778, 255
  %4780 = uitofp i32 %4779 to float
  %4781 = fmul fast float %4774, %4777
  %4782 = fadd fast float %4781, %4780
  %4783 = fmul fast float %4782, 0x3F70101000000000
  %4784 = add i32 %4561, 0
  %4785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4784, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4785, %dx.types.Handle %4769, float %4697, float %4700, float undef, float undef, i32 0, i32 0, i32 undef, float %4702, float %4704, float undef, float %4706, float %4708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.ResRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.ResRet.f32 %4786, 2
  %4790 = extractvalue %dx.types.ResRet.f32 %4786, 3
  %4791 = bitcast float %4580 to i32
  %4792 = and i32 %4791, 255
  %4793 = uitofp i32 %4792 to float
  %4794 = lshr i32 %4791, 8
  %4795 = and i32 %4794, 255
  %4796 = uitofp i32 %4795 to float
  %4797 = lshr i32 %4791, 16
  %4798 = and i32 %4797, 255
  %4799 = uitofp i32 %4798 to float
  %4800 = fmul fast float %4799, 0x3F70101000000000
  %4801 = fmul fast float %4787, %4793
  %4802 = fadd fast float %4801, %4796
  %4803 = fmul fast float %4802, 0x3F70101000000000
  %4804 = fadd fast float %4788, -5.000000e-01
  %4805 = fadd fast float %4790, -5.000000e-01
  %4806 = fmul fast float %4804, %4800
  %4807 = fmul fast float %4805, %4800
  %4808 = fadd fast float %4806, 5.000000e-01
  %4809 = fadd fast float %4807, 5.000000e-01
  %4810 = fmul fast float %4771, %4589
  %4811 = fmul fast float %4772, %4590
  %4812 = fmul fast float %4773, %4591
  %4813 = fmul fast float %4808, 2.000000e+00
  %4814 = fadd fast float %4813, -1.000000e+00
  %4815 = fmul fast float %4809, 2.000000e+00
  %4816 = fadd fast float %4815, -1.000000e+00
  %4817 = fadd fast float %4814, %4816
  %4818 = fmul fast float %4817, 5.000000e-01
  %4819 = fsub fast float %4814, %4816
  %4820 = fmul fast float %4819, 5.000000e-01
  %4821 = call float @dx.op.unary.f32(i32 6, float %4818)  ; FAbs(value)
  %4822 = fsub fast float 1.000000e+00, %4821
  %4823 = call float @dx.op.unary.f32(i32 6, float %4820)  ; FAbs(value)
  %4824 = fsub fast float %4822, %4823
  %4825 = call float @dx.op.dot3.f32(i32 55, float %4818, float %4820, float %4824, float %4818, float %4820, float %4824)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = call float @dx.op.unary.f32(i32 25, float %4825)  ; Rsqrt(value)
  %4827 = fmul fast float %4818, %4826
  %4828 = fmul fast float %4820, %4826
  %4829 = fmul fast float %4826, %4824
  %4830 = fmul fast float %4829, %4554
  %4831 = fmul fast float %4829, %4555
  %4832 = fmul fast float %4829, %4556
  %4833 = fmul fast float %4827, %4577
  %4834 = fmul fast float %4827, %4578
  %4835 = fmul fast float %4827, %4579
  %4836 = fadd fast float %4833, %4830
  %4837 = fadd fast float %4834, %4831
  %4838 = fadd fast float %4835, %4832
  %4839 = fmul fast float %4828, %4583
  %4840 = fmul fast float %4828, %4584
  %4841 = fmul fast float %4828, %4585
  %4842 = fadd fast float %4836, %4839
  %4843 = fadd fast float %4837, %4840
  %4844 = fadd fast float %4838, %4841
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %4844, float %4842, float %4843, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 25, float %4845)  ; Rsqrt(value)
  %4847 = fmul fast float %4842, %4846
  %4848 = fmul fast float %4843, %4846
  %4849 = fmul fast float %4844, %4846
  %4850 = icmp ne i32 %4766, 0
  %4851 = select i1 %4850, float 1.000000e+00, float 0.000000e+00
  %4852 = fmul fast float %4756, %4851
  %4853 = and i32 %4604, 1
  %4854 = icmp eq i32 %4853, 0
  br i1 %4854, label %4855, label %4859

; <label>:4855                                    ; preds = %4764
  %4856 = fsub fast float %4847, %4537
  %4857 = fsub fast float %4848, %4538
  %4858 = fsub fast float %4849, %4539
  br label %4859

; <label>:4859                                    ; preds = %4855, %4764
  %4860 = phi float [ %4856, %4855 ], [ %4847, %4764 ]
  %4861 = phi float [ %4857, %4855 ], [ %4848, %4764 ]
  %4862 = phi float [ %4858, %4855 ], [ %4849, %4764 ]
  %4863 = fmul float %4862, %4852
  %4864 = fmul float %4861, %4852
  %4865 = fmul float %4860, %4852
  %4866 = fadd fast float %4865, %4537
  %4867 = fadd fast float %4864, %4538
  %4868 = fadd fast float %4863, %4539
  %4869 = icmp ne i32 %4765, 0
  %4870 = select i1 %4869, float 1.000000e+00, float 0.000000e+00
  %4871 = fmul fast float %4756, %4870
  %4872 = fsub fast float %4810, %4544
  %4873 = fsub fast float %4811, %4545
  %4874 = fsub fast float %4812, %4546
  %4875 = fmul fast float %4872, %4871
  %4876 = fmul fast float %4873, %4871
  %4877 = fmul fast float %4874, %4871
  %4878 = fadd fast float %4875, %4544
  %4879 = fadd fast float %4876, %4545
  %4880 = fadd fast float %4877, %4546
  %4881 = fsub fast float %4783, %4543
  %4882 = fmul fast float %4881, %4871
  %4883 = fadd fast float %4882, %4543
  %4884 = fmul fast float %4871, %4530
  %4885 = fsub fast float %4530, %4884
  %4886 = fmul fast float %4871, %4529
  %4887 = fsub fast float %4529, %4886
  %4888 = bitcast float %4598 to i32
  %4889 = lshr i32 %4888, 16
  %4890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4889)  ; LegacyF16ToF32(value)
  %4891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4892 = extractvalue %dx.types.ResRet.i32 %4891, 0
  %4893 = and i32 %4892, 1
  %4894 = icmp eq i32 %4893, 0
  br i1 %4894, label %4895, label %4920

; <label>:4895                                    ; preds = %4859
  %4896 = fadd fast float %4783, 0xBFB99999A0000000
  %4897 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4898 = fmul fast float %4897, 0x3FF1C71C80000000
  %4899 = fsub fast float 1.000000e+00, %4898
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %4900, %4810
  %4902 = fmul fast float %4900, %4811
  %4903 = fmul fast float %4900, %4812
  %4904 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4905 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4906 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4907 = call float @dx.op.binary.f32(i32 35, float %4905, float %4906)  ; FMax(a,b)
  %4908 = call float @dx.op.binary.f32(i32 35, float %4904, float %4907)  ; FMax(a,b)
  %4909 = fcmp fast ogt float %4908, 0.000000e+00
  %4910 = bitcast float %4908 to i32
  %4911 = sub nsw i32 2129859010, %4910
  %4912 = bitcast i32 %4911 to float
  %4913 = select i1 %4909, float %4912, float 0.000000e+00
  %4914 = fmul fast float %4904, %4890
  %4915 = fmul fast float %4905, %4890
  %4916 = fmul fast float %4906, %4890
  %4917 = fmul fast float %4914, %4913
  %4918 = fmul fast float %4915, %4913
  %4919 = fmul fast float %4916, %4913
  br label %4920

; <label>:4920                                    ; preds = %4895, %4859
  %4921 = phi float [ %4890, %4859 ], [ %4917, %4895 ]
  %4922 = phi float [ %4890, %4859 ], [ %4918, %4895 ]
  %4923 = phi float [ %4890, %4859 ], [ %4919, %4895 ]
  %4924 = fsub fast float %4921, %4531
  %4925 = fsub fast float %4922, %4532
  %4926 = fsub fast float %4923, %4533
  %4927 = fmul fast float %4924, %4871
  %4928 = fmul fast float %4925, %4871
  %4929 = fmul fast float %4926, %4871
  %4930 = fadd fast float %4927, %4531
  %4931 = fadd fast float %4928, %4532
  %4932 = fadd fast float %4929, %4533
  %4933 = fadd fast float %4756, %4542
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fsub fast float %4803, %4541
  %4936 = fmul fast float %4935, %4852
  %4937 = fadd fast float %4936, %4541
  %4938 = fsub fast float %4789, %4540
  %4939 = fmul fast float %4938, %4852
  %4940 = fadd fast float %4939, %4540
  br i1 %4854, label %4949, label %4941

; <label>:4941                                    ; preds = %4920
  %4942 = and i32 %4604, 32768
  %4943 = icmp eq i32 %4942, 0
  br i1 %4943, label %4959, label %4944

; <label>:4944                                    ; preds = %4941
  %4945 = fmul fast float %4852, 1.270000e+02
  %4946 = fadd fast float %4945, %4526
  %4947 = fadd fast float %4945, %4527
  %4948 = fadd fast float %4945, %4528
  br label %4959

; <label>:4949                                    ; preds = %4920
  %4950 = fsub fast float 1.270000e+02, %4526
  %4951 = fsub fast float 1.270000e+02, %4527
  %4952 = fsub fast float 1.270000e+02, %4528
  %4953 = fmul fast float %4852, %4950
  %4954 = fmul fast float %4852, %4951
  %4955 = fmul fast float %4852, %4952
  %4956 = fadd fast float %4953, %4526
  %4957 = fadd fast float %4954, %4527
  %4958 = fadd fast float %4955, %4528
  br label %4959

; <label>:4959                                    ; preds = %4949, %4944, %4941
  %4960 = phi float [ %4946, %4944 ], [ %4526, %4941 ], [ %4956, %4949 ]
  %4961 = phi float [ %4947, %4944 ], [ %4527, %4941 ], [ %4957, %4949 ]
  %4962 = phi float [ %4948, %4944 ], [ %4528, %4941 ], [ %4958, %4949 ]
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %4812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.CBufRet.f32 %4964, 1
  %4967 = fmul fast float %4966, %4963
  %4968 = fadd fast float %4967, %4965
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = bitcast float %4592 to i32
  %4971 = and i32 %4970, 65535
  %4972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4971)  ; LegacyF16ToF32(value)
  %4973 = lshr i32 %4970, 16
  %4974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4973)  ; LegacyF16ToF32(value)
  %4975 = fcmp fast oge float %4972, 0.000000e+00
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = select i1 %4975, float %4972, float %4977
  %4979 = fadd fast float %4978, %4974
  %4980 = fsub fast float %4969, %4525
  %4981 = fmul fast float %4980, %4756
  %4982 = fadd fast float %4981, %4525
  %4983 = fmul fast float %4979, %4756
  %4984 = call float @dx.op.binary.f32(i32 35, float %4524, float %4983)  ; FMax(a,b)
  %4985 = and i32 %4604, 16
  %4986 = icmp eq i32 %4985, 0
  br i1 %4986, label %5008, label %4987

; <label>:4987                                    ; preds = %4959
  %4988 = add i32 %4595, 0
  %4989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4988, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4989, %dx.types.Handle %4769, float %4697, float %4700, float undef, float undef, i32 0, i32 0, i32 undef, float %4702, float %4704, float undef, float %4706, float %4708, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.ResRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.ResRet.f32 %4990, 2
  %4994 = and i32 %4888, 65535
  %4995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4994)  ; LegacyF16ToF32(value)
  %4996 = fmul fast float %4991, %4589
  %4997 = fmul fast float %4992, %4590
  %4998 = fmul fast float %4993, %4591
  %4999 = and i32 %4604, 16384
  %5000 = icmp ne i32 %4999, 0
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5003 = select i1 %5000, float %5002, float 1.000000e+00
  %5004 = fmul fast float %5003, %4995
  %5005 = fmul fast float %4996, %5004
  %5006 = fmul fast float %4997, %5004
  %5007 = fmul fast float %4998, %5004
  br label %5008

; <label>:5008                                    ; preds = %4987, %4959
  %5009 = phi float [ %5005, %4987 ], [ 0.000000e+00, %4959 ]
  %5010 = phi float [ %5006, %4987 ], [ 0.000000e+00, %4959 ]
  %5011 = phi float [ %5007, %4987 ], [ 0.000000e+00, %4959 ]
  %5012 = fsub fast float %5009, %4534
  %5013 = fsub fast float %5010, %4535
  %5014 = fsub fast float %5011, %4536
  %5015 = fmul fast float %5012, %4756
  %5016 = fmul fast float %5013, %4756
  %5017 = fmul fast float %5014, %4756
  %5018 = fadd fast float %5015, %4534
  %5019 = fadd fast float %5016, %4535
  %5020 = fadd fast float %5017, %4536
  br label %4653

; <label>:5021                                    ; preds = %4653
  br label %5022

; <label>:5022                                    ; preds = %5021, %4467
  %5023 = phi float [ 0.000000e+00, %4467 ], [ %4654, %5021 ]
  %5024 = phi float [ %4436, %4467 ], [ %4655, %5021 ]
  %5025 = phi float [ %4428, %4467 ], [ %4656, %5021 ]
  %5026 = phi float [ %4421, %4467 ], [ %4657, %5021 ]
  %5027 = phi float [ %4422, %4467 ], [ %4658, %5021 ]
  %5028 = phi float [ %4423, %4467 ], [ %4659, %5021 ]
  %5029 = phi float [ 0.000000e+00, %4467 ], [ %4660, %5021 ]
  %5030 = phi float [ 0.000000e+00, %4467 ], [ %4661, %5021 ]
  %5031 = phi float [ %4418, %4467 ], [ %4662, %5021 ]
  %5032 = phi float [ %4419, %4467 ], [ %4663, %5021 ]
  %5033 = phi float [ %4420, %4467 ], [ %4664, %5021 ]
  %5034 = phi float [ %4415, %4467 ], [ %4665, %5021 ]
  %5035 = phi float [ %4416, %4467 ], [ %4666, %5021 ]
  %5036 = phi float [ %4417, %4467 ], [ %4667, %5021 ]
  %5037 = phi float [ %4462, %4467 ], [ %4668, %5021 ]
  %5038 = phi float [ %4463, %4467 ], [ %4669, %5021 ]
  %5039 = phi float [ %4464, %4467 ], [ %4670, %5021 ]
  %5040 = phi float [ %4426, %4467 ], [ %4671, %5021 ]
  %5041 = phi float [ %4425, %4467 ], [ %4672, %5021 ]
  %5042 = phi float [ 0.000000e+00, %4467 ], [ %4673, %5021 ]
  %5043 = phi float [ %4424, %4467 ], [ %4674, %5021 ]
  %5044 = phi float [ %4412, %4467 ], [ %4675, %5021 ]
  %5045 = phi float [ %4413, %4467 ], [ %4676, %5021 ]
  %5046 = phi float [ %4414, %4467 ], [ %4677, %5021 ]
  %5047 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = call float @dx.op.unary.f32(i32 25, float %5047)  ; Rsqrt(value)
  %5049 = fmul fast float %5048, %5037
  %5050 = fmul fast float %5048, %5038
  %5051 = fmul fast float %5048, %5039
  %5052 = fadd fast float %5042, %1253
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float %5049, float %5050, float %5051)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  %5056 = fmul fast float %5055, %5049
  %5057 = fmul fast float %5055, %5050
  %5058 = fmul fast float %5055, %5051
  br label %5059

; <label>:5059                                    ; preds = %5022, %4409
  %5060 = phi float [ %5056, %5022 ], [ %4462, %4409 ]
  %5061 = phi float [ %5057, %5022 ], [ %4463, %4409 ]
  %5062 = phi float [ %5058, %5022 ], [ %4464, %4409 ]
  %5063 = phi float [ %5034, %5022 ], [ %4415, %4409 ]
  %5064 = phi float [ %5035, %5022 ], [ %4416, %4409 ]
  %5065 = phi float [ %5036, %5022 ], [ %4417, %4409 ]
  %5066 = phi float [ %5044, %5022 ], [ %4412, %4409 ]
  %5067 = phi float [ %5045, %5022 ], [ %4413, %4409 ]
  %5068 = phi float [ %5046, %5022 ], [ %4414, %4409 ]
  %5069 = phi float [ %5031, %5022 ], [ %4418, %4409 ]
  %5070 = phi float [ %5032, %5022 ], [ %4419, %4409 ]
  %5071 = phi float [ %5033, %5022 ], [ %4420, %4409 ]
  %5072 = phi float [ %5026, %5022 ], [ %4421, %4409 ]
  %5073 = phi float [ %5027, %5022 ], [ %4422, %4409 ]
  %5074 = phi float [ %5028, %5022 ], [ %4423, %4409 ]
  %5075 = phi float [ %5043, %5022 ], [ %4424, %4409 ]
  %5076 = phi float [ %5053, %5022 ], [ %1253, %4409 ]
  %5077 = phi float [ %5041, %5022 ], [ %4425, %4409 ]
  %5078 = phi float [ %5040, %5022 ], [ %4426, %4409 ]
  %5079 = phi float [ %5030, %5022 ], [ 0.000000e+00, %4409 ]
  %5080 = phi float [ %5029, %5022 ], [ 0.000000e+00, %4409 ]
  %5081 = phi float [ %5023, %5022 ], [ 0.000000e+00, %4409 ]
  %5082 = phi float [ %5024, %5022 ], [ %4436, %4409 ]
  %5083 = phi float [ %5025, %5022 ], [ %4428, %4409 ]
  %5084 = fadd fast float %5075, 0xBFB99999A0000000
  %5085 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5086 = fmul fast float %5085, 0x3FF1C71C80000000
  %5087 = call float @dx.op.binary.f32(i32 36, float %5075, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5088 = fsub fast float 1.000000e+00, %5086
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = fmul fast float %5089, %5066
  %5091 = fmul fast float %5089, %5067
  %5092 = fmul fast float %5089, %5068
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = fmul fast float %5086, %5066
  %5097 = fmul fast float %5086, %5067
  %5098 = fmul fast float %5086, %5068
  %5099 = fadd fast float %5096, %5087
  %5100 = fadd fast float %5097, %5087
  %5101 = fadd fast float %5098, %5087
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5107 = extractvalue %dx.types.ResRet.i32 %5106, 0
  %5108 = and i32 %5107, 1
  %5109 = icmp eq i32 %5108, 0
  br i1 %5109, label %5124, label %5110

; <label>:5110                                    ; preds = %5059
  %5111 = call float @dx.op.binary.f32(i32 35, float %5094, float %5095)  ; FMax(a,b)
  %5112 = call float @dx.op.binary.f32(i32 35, float %5093, float %5111)  ; FMax(a,b)
  %5113 = fcmp fast ogt float %5112, 0.000000e+00
  %5114 = bitcast float %5112 to i32
  %5115 = sub nsw i32 2129859010, %5114
  %5116 = bitcast i32 %5115 to float
  %5117 = select i1 %5113, float %5116, float 0.000000e+00
  %5118 = fmul fast float %5093, %5069
  %5119 = fmul fast float %5094, %5070
  %5120 = fmul fast float %5095, %5071
  %5121 = fmul fast float %5118, %5117
  %5122 = fmul fast float %5119, %5117
  %5123 = fmul fast float %5120, %5117
  br label %5124

; <label>:5124                                    ; preds = %5110, %5059
  %5125 = phi float [ %5121, %5110 ], [ %5069, %5059 ]
  %5126 = phi float [ %5122, %5110 ], [ %5070, %5059 ]
  %5127 = phi float [ %5123, %5110 ], [ %5071, %5059 ]
  %5128 = call float @dx.op.binary.f32(i32 36, float %5072, float 1.270000e+02)  ; FMin(a,b)
  %5129 = call float @dx.op.binary.f32(i32 36, float %5073, float 1.270000e+02)  ; FMin(a,b)
  %5130 = call float @dx.op.binary.f32(i32 36, float %5074, float 1.270000e+02)  ; FMin(a,b)
  %5131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.i32 %5131, 3
  %5133 = and i32 %5132, 8
  %5134 = icmp ne i32 %5133, 0
  %5135 = call float @dx.op.binary.f32(i32 35, float %5093, float %5066)  ; FMax(a,b)
  %5136 = call float @dx.op.binary.f32(i32 35, float %5094, float %5066)  ; FMax(a,b)
  %5137 = call float @dx.op.binary.f32(i32 35, float %5095, float %5066)  ; FMax(a,b)
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5093, float %5094, float %5095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = select i1 %226, float %5066, float %5093
  %5140 = select i1 %226, float %5138, float %5094
  %5141 = select i1 %226, float 1.000000e+00, float %5095
  %5142 = select i1 %5134, float %5135, float %5139
  %5143 = select i1 %5134, float %5136, float %5140
  %5144 = select i1 %5134, float %5137, float %5141
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5125, float %5126, float %5127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = select i1 %226, float %5145, float %5125
  %5147 = select i1 %226, float %5145, float %5126
  %5148 = select i1 %226, float %5145, float %5127
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5152 = extractvalue %dx.types.CBufRet.f32 %5149, 2
  %5153 = fadd fast float %5150, %164
  %5154 = fadd fast float %5151, %165
  %5155 = fadd fast float %5152, %166
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5159 = fsub fast float %5153, %5157
  %5160 = fsub fast float %5154, %5158
  %5161 = fmul fast float %5159, %5159
  %5162 = fmul fast float %5160, %5160
  %5163 = fadd fast float %5161, %5162
  %5164 = call float @dx.op.unary.f32(i32 24, float %5163)  ; Sqrt(value)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5166 = fcmp fast olt float %5164, %5165
  br i1 %5166, label %5167, label %5234

; <label>:5167                                    ; preds = %5124
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5175 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5176 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5168, 3
  %5178 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5179 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5180 = fadd fast float %5177, %5153
  %5181 = fadd fast float %5178, %5154
  %5182 = fadd fast float %5179, %5155
  %5183 = fmul fast float %5180, %5169
  %5184 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5171, float %5183)  ; FMad(a,b,c)
  %5185 = call float @dx.op.tertiary.f32(i32 46, float %5182, float %5173, float %5184)  ; FMad(a,b,c)
  %5186 = fmul fast float %5180, %5174
  %5187 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5175, float %5186)  ; FMad(a,b,c)
  %5188 = call float @dx.op.tertiary.f32(i32 46, float %5182, float %5176, float %5187)  ; FMad(a,b,c)
  %5189 = fsub fast float %5185, %5177
  %5190 = fsub fast float %5188, %5178
  %5191 = fsub fast float %5189, %5157
  %5192 = fadd fast float %5191, %5165
  %5193 = fsub fast float %5190, %5158
  %5194 = fadd fast float %5193, %5165
  %5195 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5196 = fmul fast float %5192, %5195
  %5197 = fmul fast float %5194, %5195
  %5198 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5200 = fsub fast float 1.000000e+00, %5198
  %5201 = fsub fast float 1.000000e+00, %5199
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = fcmp fast ugt float %5203, 0.000000e+00
  br i1 %5204, label %5205, label %5508

; <label>:5205                                    ; preds = %5167
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 2
  %5208 = fmul fast float %5207, %5203
  %5209 = extractvalue %dx.types.CBufRet.f32 %5206, 3
  %5210 = fadd fast float %5209, %5208
  %5211 = extractvalue %dx.types.CBufRet.f32 %5172, 2
  %5212 = fadd fast float %5210, %5179
  %5213 = fmul fast float %5185, %5173
  %5214 = call float @dx.op.tertiary.f32(i32 46, float %5188, float %5176, float %5213)  ; FMad(a,b,c)
  %5215 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5211, float %5214)  ; FMad(a,b,c)
  %5216 = fsub fast float %5215, %5179
  %5217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5218 = extractvalue %dx.types.CBufRet.f32 %5217, 2
  %5219 = fsub fast float %5216, %5218
  %5220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5221 = extractvalue %dx.types.ResRet.f32 %5220, 0
  %5222 = extractvalue %dx.types.ResRet.f32 %5220, 1
  %5223 = extractvalue %dx.types.ResRet.f32 %5220, 2
  %5224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5228 = fadd fast float %5225, %5221
  %5229 = fmul fast float %5228, 0x3F847AE140000000
  %5230 = fadd fast float %5226, %5222
  %5231 = fmul fast float %5230, 0x3F847AE140000000
  %5232 = fadd fast float %5227, %5223
  %5233 = fmul fast float %5232, 0x3F847AE140000000
  br label %5508

; <label>:5234                                    ; preds = %5124
  %5235 = and i32 %202, 1
  %5236 = icmp eq i32 %5235, 0
  br i1 %5236, label %5508, label %5237

; <label>:5237                                    ; preds = %5234
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 0
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 0
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.CBufRet.f32 %5238, 1
  %5245 = extractvalue %dx.types.CBufRet.f32 %5240, 1
  %5246 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5247 = extractvalue %dx.types.CBufRet.f32 %5238, 3
  %5248 = extractvalue %dx.types.CBufRet.f32 %5240, 3
  %5249 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5250 = fadd fast float %5247, %5153
  %5251 = fadd fast float %5248, %5154
  %5252 = fadd fast float %5249, %5155
  %5253 = fmul fast float %5250, %5239
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5241, float %5253)  ; FMad(a,b,c)
  %5255 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5243, float %5254)  ; FMad(a,b,c)
  %5256 = fmul fast float %5250, %5244
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5245, float %5256)  ; FMad(a,b,c)
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %5252, float %5246, float %5257)  ; FMad(a,b,c)
  %5259 = fsub fast float %5255, %5247
  %5260 = fsub fast float %5258, %5248
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5265 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.i32 %5268, 0
  %5270 = extractvalue %dx.types.CBufRet.i32 %5268, 1
  %5271 = udiv i32 %5270, %5269
  %5272 = fsub fast float %5259, %5262
  %5273 = fsub fast float %5260, %5263
  %5274 = call float @dx.op.binary.f32(i32 35, float %5272, float 0.000000e+00)  ; FMax(a,b)
  %5275 = call float @dx.op.binary.f32(i32 35, float %5273, float 0.000000e+00)  ; FMax(a,b)
  %5276 = call float @dx.op.binary.f32(i32 36, float %5274, float %5264)  ; FMin(a,b)
  %5277 = call float @dx.op.binary.f32(i32 36, float %5275, float %5265)  ; FMin(a,b)
  %5278 = add i32 %5269, -1
  %5279 = add i32 %5271, -1
  %5280 = fmul fast float %5276, %5267
  %5281 = fmul fast float %5277, %5267
  %5282 = fptoui float %5280 to i32
  %5283 = fptoui float %5281 to i32
  %5284 = call i32 @dx.op.binary.i32(i32 40, i32 %5282, i32 %5278)  ; UMin(a,b)
  %5285 = call i32 @dx.op.binary.i32(i32 40, i32 %5283, i32 %5279)  ; UMin(a,b)
  %5286 = mul i32 %5285, %5269
  %5287 = add i32 %5286, %5284
  %5288 = shl i32 %5287, 2
  %5289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5288, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.i32 %5289, 0
  %5291 = icmp eq i32 %5290, -1
  br i1 %5291, label %5508, label %5292

; <label>:5292                                    ; preds = %5237
  %5293 = mul i32 %5290, 148
  %5294 = add i32 %5293, 4
  %5295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = add i32 %5293, 8
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = add i32 %5293, 36
  %5301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = add i32 %5293, 60
  %5304 = add i32 %5293, 92
  %5305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5304, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.i32 %5305, 0
  %5307 = add i32 %5293, 116
  %5308 = fsub fast float %5259, %5296
  %5309 = fsub fast float %5260, %5299
  %5310 = fmul fast float %5267, %5308
  %5311 = fmul fast float %5267, %5309
  %5312 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5313 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5316 = extractvalue %dx.types.CBufRet.f32 %5315, 2
  %5317 = call float @dx.op.unary.f32(i32 83, float %5312)  ; DerivCoarseX(value)
  %5318 = call float @dx.op.unary.f32(i32 83, float %5314)  ; DerivCoarseX(value)
  %5319 = call float @dx.op.unary.f32(i32 84, float %5312)  ; DerivCoarseY(value)
  %5320 = call float @dx.op.unary.f32(i32 84, float %5314)  ; DerivCoarseY(value)
  %5321 = fmul fast float %5317, %5316
  %5322 = fmul fast float %5318, %5316
  %5323 = fmul fast float %5319, %5316
  %5324 = fmul fast float %5320, %5316
  %5325 = call float @dx.op.dot2.f32(i32 54, float %5323, float %5324, float %5323, float %5324)  ; Dot2(ax,ay,bx,by)
  %5326 = call float @dx.op.dot2.f32(i32 54, float %5321, float %5322, float %5321, float %5322)  ; Dot2(ax,ay,bx,by)
  %5327 = call float @dx.op.binary.f32(i32 35, float %5326, float %5325)  ; FMax(a,b)
  %5328 = call float @dx.op.unary.f32(i32 23, float %5327)  ; Log(value)
  %5329 = fmul fast float %5328, 5.000000e-01
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 1
  %5332 = fadd fast float %5331, %5329
  %5333 = call float @dx.op.binary.f32(i32 35, float %5332, float 0.000000e+00)  ; FMax(a,b)
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 3
  %5336 = fadd fast float %5335, %5333
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 3
  %5339 = fadd fast float %5336, %5338
  %5340 = add i32 %5306, 0
  %5341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5340, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5342 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5341, i32 0)  ; GetDimensions(handle,mipLevel)
  %5343 = extractvalue %dx.types.Dimensions %5342, 0
  %5344 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5343)  ; FirstbitLo(value)
  %5345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.i32 %5345, 1
  %5347 = sub nsw i32 %5346, %5344
  %5348 = sitofp i32 %5347 to float
  %5349 = fsub fast float %5339, %5348
  %5350 = call float @dx.op.binary.f32(i32 35, float %5349, float 0.000000e+00)  ; FMax(a,b)
  %5351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5341, %dx.types.Handle %52, float %5312, float %5314, float %5302, float undef, i32 0, i32 0, i32 undef, float %5350)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = fcmp ule float %5352, 0x3FE0101020000000
  %5354 = extractvalue %dx.types.CBufRet.i32 %5345, 0
  %5355 = and i32 %5354, 128
  %5356 = icmp ne i32 %5355, 0
  %5357 = and i1 %5353, %5356
  br i1 %5357, label %5508, label %5358

; <label>:5358                                    ; preds = %5292
  %5359 = add i32 %5293, 20
  %5360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5359, i32 undef)  ; BufferLoad(srv,index,wot)
  %5361 = extractvalue %dx.types.ResRet.f32 %5360, 0
  %5362 = add i32 %5293, 24
  %5363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = add i32 %5293, 40
  %5366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5365, i32 undef)  ; BufferLoad(srv,index,wot)
  %5367 = extractvalue %dx.types.ResRet.f32 %5366, 0
  %5368 = add i32 %5293, 96
  %5369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5368, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.i32 %5369, 0
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 2
  %5373 = fmul fast float %5372, %5312
  %5374 = fmul fast float %5372, %5314
  %5375 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5376 = fadd fast float %5373, %5375
  %5377 = fadd fast float %5374, %5375
  %5378 = add i32 %5370, 0
  %5379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5378, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5380 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5379, i32 0)  ; GetDimensions(handle,mipLevel)
  %5381 = extractvalue %dx.types.Dimensions %5380, 0
  %5382 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5381)  ; FirstbitLo(value)
  %5383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.i32 %5383, 1
  %5385 = sub nsw i32 %5384, %5382
  %5386 = sitofp i32 %5385 to float
  %5387 = fsub fast float %5336, %5386
  %5388 = call float @dx.op.binary.f32(i32 35, float %5387, float 0.000000e+00)  ; FMax(a,b)
  %5389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5379, %dx.types.Handle %52, float %5376, float %5377, float %5367, float undef, i32 0, i32 0, i32 undef, float %5388)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = fmul fast float %5390, %5361
  %5392 = fadd fast float %5391, %5364
  %5393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5394 = extractvalue %dx.types.CBufRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.CBufRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.CBufRet.f32 %5393, 2
  %5397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5398 = extractvalue %dx.types.CBufRet.f32 %5397, 3
  %5399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5400 = extractvalue %dx.types.CBufRet.f32 %5399, 3
  %5401 = extractvalue %dx.types.CBufRet.f32 %5393, 3
  %5402 = fadd fast float %5398, %5259
  %5403 = fadd fast float %5400, %5260
  %5404 = fadd fast float %5392, %5401
  %5405 = fmul fast float %5402, %5394
  %5406 = call float @dx.op.tertiary.f32(i32 46, float %5403, float %5395, float %5405)  ; FMad(a,b,c)
  %5407 = call float @dx.op.tertiary.f32(i32 46, float %5404, float %5396, float %5406)  ; FMad(a,b,c)
  %5408 = fsub fast float %5407, %5401
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5411 = fsub fast float %5408, %5410
  %5412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.i32 %5412, 0
  %5414 = call i32 @dx.op.binary.i32(i32 40, i32 %5290, i32 %5413)  ; UMin(a,b)
  %5415 = mul i32 %5414, 36
  %5416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5417 = extractvalue %dx.types.ResRet.i32 %5416, 0
  %5418 = add i32 %5415, 4
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = fmul fast float %5420, %5312
  %5422 = fmul fast float %5420, %5314
  %5423 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5424 = fadd fast float %5421, %5423
  %5425 = fadd fast float %5422, %5423
  %5426 = icmp eq i32 %5417, 0
  br i1 %5426, label %5495, label %5427

; <label>:5427                                    ; preds = %5358
  br label %5428

; <label>:5428                                    ; preds = %5485, %5427
  %5429 = phi float [ %5486, %5485 ], [ 0.000000e+00, %5427 ]
  %5430 = phi float [ %5487, %5485 ], [ 0.000000e+00, %5427 ]
  %5431 = phi float [ %5488, %5485 ], [ 0.000000e+00, %5427 ]
  %5432 = phi float [ %5489, %5485 ], [ 0.000000e+00, %5427 ]
  %5433 = phi float [ %5490, %5485 ], [ 0.000000e+00, %5427 ]
  %5434 = phi float [ %5491, %5485 ], [ 0.000000e+00, %5427 ]
  %5435 = phi i32 [ %5492, %5485 ], [ 0, %5427 ]
  %5436 = shl i32 %5435, 2
  %5437 = add i32 %5303, %5436
  %5438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5437, i32 undef)  ; BufferLoad(srv,index,wot)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = add i32 %5307, %5436
  %5441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5440, i32 undef)  ; BufferLoad(srv,index,wot)
  %5442 = extractvalue %dx.types.ResRet.i32 %5441, 0
  %5443 = add i32 %5442, 0
  %5444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5443, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5445 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5444, i32 0)  ; GetDimensions(handle,mipLevel)
  %5446 = extractvalue %dx.types.Dimensions %5445, 0
  %5447 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5446)  ; FirstbitLo(value)
  %5448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.i32 %5448, 1
  %5450 = sub nsw i32 %5449, %5447
  %5451 = sitofp i32 %5450 to float
  %5452 = fsub fast float %5336, %5451
  %5453 = call float @dx.op.binary.f32(i32 35, float %5452, float 0.000000e+00)  ; FMax(a,b)
  %5454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5444, %dx.types.Handle %52, float %5424, float %5425, float %5439, float undef, i32 0, i32 0, i32 undef, float %5453)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = fcmp fast ogt float %5455, 0.000000e+00
  br i1 %5456, label %5457, label %5485

; <label>:5457                                    ; preds = %5428
  %5458 = add i32 %5418, %5436
  %5459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.i32 %5459, 0
  %5461 = and i32 %5460, 32767
  %5462 = mul nuw nsw i32 %5461, 928
  %5463 = add nuw nsw i32 %5462, 48
  %5464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.ResRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.ResRet.f32 %5464, 2
  %5468 = add nuw nsw i32 %5462, 60
  %5469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5468, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.ResRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.ResRet.f32 %5469, 2
  %5473 = fmul fast float %5465, %5455
  %5474 = fmul fast float %5466, %5455
  %5475 = fmul fast float %5467, %5455
  %5476 = fadd fast float %5473, %5429
  %5477 = fadd fast float %5474, %5430
  %5478 = fadd fast float %5475, %5431
  %5479 = fmul fast float %5470, %5455
  %5480 = fmul fast float %5471, %5455
  %5481 = fmul fast float %5472, %5455
  %5482 = fadd fast float %5479, %5432
  %5483 = fadd fast float %5480, %5433
  %5484 = fadd fast float %5481, %5434
  br label %5485

; <label>:5485                                    ; preds = %5457, %5428
  %5486 = phi float [ %5476, %5457 ], [ %5429, %5428 ]
  %5487 = phi float [ %5477, %5457 ], [ %5430, %5428 ]
  %5488 = phi float [ %5478, %5457 ], [ %5431, %5428 ]
  %5489 = phi float [ %5482, %5457 ], [ %5432, %5428 ]
  %5490 = phi float [ %5483, %5457 ], [ %5433, %5428 ]
  %5491 = phi float [ %5484, %5457 ], [ %5434, %5428 ]
  %5492 = add nuw i32 %5435, 1
  %5493 = icmp eq i32 %5492, %5417
  br i1 %5493, label %5494, label %5428

; <label>:5494                                    ; preds = %5485
  br label %5495

; <label>:5495                                    ; preds = %5494, %5358
  %5496 = phi float [ 0.000000e+00, %5358 ], [ %5486, %5494 ]
  %5497 = phi float [ 0.000000e+00, %5358 ], [ %5487, %5494 ]
  %5498 = phi float [ 0.000000e+00, %5358 ], [ %5488, %5494 ]
  %5499 = phi float [ 0.000000e+00, %5358 ], [ %5489, %5494 ]
  %5500 = phi float [ 0.000000e+00, %5358 ], [ %5490, %5494 ]
  %5501 = phi float [ 0.000000e+00, %5358 ], [ %5491, %5494 ]
  %5502 = fadd fast float %5499, %5496
  %5503 = fmul fast float %5502, 0x3F847AE140000000
  %5504 = fadd fast float %5500, %5497
  %5505 = fmul fast float %5504, 0x3F847AE140000000
  %5506 = fadd fast float %5501, %5498
  %5507 = fmul fast float %5506, 0x3F847AE140000000
  br label %5508

; <label>:5508                                    ; preds = %5495, %5292, %5237, %5234, %5205, %5167
  %5509 = phi float [ %5229, %5205 ], [ 0.000000e+00, %5167 ], [ %5503, %5495 ], [ 0.000000e+00, %5237 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5234 ]
  %5510 = phi float [ %5231, %5205 ], [ 0.000000e+00, %5167 ], [ %5505, %5495 ], [ 0.000000e+00, %5237 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5234 ]
  %5511 = phi float [ %5233, %5205 ], [ 0.000000e+00, %5167 ], [ %5507, %5495 ], [ 0.000000e+00, %5237 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5234 ]
  %5512 = phi float [ %5219, %5205 ], [ -1.310720e+05, %5167 ], [ %5411, %5495 ], [ -1.310720e+05, %5237 ], [ -1.310720e+05, %5292 ], [ -1.310720e+05, %5234 ]
  %5513 = phi i1 [ true, %5205 ], [ false, %5167 ], [ true, %5495 ], [ false, %5237 ], [ false, %5292 ], [ false, %5234 ]
  %5514 = and i32 %202, 3
  %5515 = icmp eq i32 %5514, 1
  %5516 = select i1 %5515, float 1.000000e+00, float 0.000000e+00
  %5517 = fsub fast float %5512, %166
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5519 = select i1 %5513, float %5518, float 1.000000e+00
  %5520 = fmul fast float %5519, %5516
  %5521 = icmp eq i32 %5514, 3
  %5522 = select i1 %5521, float 1.000000e+00, float %5520
  %5523 = call float @dx.op.binary.f32(i32 35, float %5081, float %5522)  ; FMax(a,b)
  %5524 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5525 = fcmp fast une float %5524, 0.000000e+00
  %5526 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %164, float %165, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = call float @dx.op.unary.f32(i32 25, float %5526)  ; Rsqrt(value)
  br i1 %5525, label %5535, label %5528

; <label>:5528                                    ; preds = %5508
  %5529 = fmul fast float %5527, %164
  %5530 = fmul fast float %5527, %165
  %5531 = fmul fast float %5527, %166
  %5532 = fsub fast float -0.000000e+00, %5529
  %5533 = fsub fast float -0.000000e+00, %5530
  %5534 = fsub fast float -0.000000e+00, %5531
  br label %5703

; <label>:5535                                    ; preds = %5508
  %5536 = fmul fast float %164, %5527
  %5537 = fsub fast float -0.000000e+00, %5536
  %5538 = fmul fast float %165, %5527
  %5539 = fsub fast float -0.000000e+00, %5538
  %5540 = fmul fast float %166, %5527
  %5541 = fsub fast float -0.000000e+00, %5540
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5539, float %5541, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = fmul fast float %5524, 2.500000e+00
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = fmul fast float %5524, 0x4013FFFFE0000000
  %5546 = fadd fast float %5545, 0xBFFFFFFFE0000000
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5548 = fmul fast float %5524, 0x4004000020000000
  %5549 = fadd fast float %5548, 0xBFF8000040000000
  %5550 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5551 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5552 = fmul fast float %5084, 1.000000e+01
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = fmul fast float %5553, 2.000000e+00
  %5555 = fsub fast float 3.000000e+00, %5554
  %5556 = fmul fast float %5553, %5553
  %5557 = fmul fast float %5556, %5555
  %5558 = fsub fast float 1.000000e+00, %5557
  %5559 = fsub fast float 0x3FE3333340000000, %5105
  %5560 = fmul fast float %5559, 0x400AAAAAA0000000
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = fmul fast float %5558, %5561
  %5563 = fmul fast float %5142, 0x3FEA2B8620000000
  %5564 = fmul fast float %5143, 0x3FEA2B8620000000
  %5565 = fmul fast float %5144, 0x3FEA2B8620000000
  %5566 = fadd fast float %5563, 0x3FC81DFBA0000000
  %5567 = fmul fast float %5566, %5142
  %5568 = fadd fast float %5567, 0x3F910E6020000000
  %5569 = fadd fast float %5564, 0x3FC81DFBA0000000
  %5570 = fmul fast float %5569, %5143
  %5571 = fadd fast float %5570, 0x3F910E6020000000
  %5572 = fadd fast float %5565, 0x3FC81DFBA0000000
  %5573 = fmul fast float %5572, %5144
  %5574 = fadd fast float %5573, 0x3F910E6020000000
  %5575 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5576 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5577 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5578 = fsub fast float %5575, %5142
  %5579 = fsub fast float %5576, %5143
  %5580 = fsub fast float %5577, %5144
  %5581 = fmul fast float %5578, %5551
  %5582 = fmul fast float %5581, %5562
  %5583 = fmul fast float %5579, %5551
  %5584 = fmul fast float %5583, %5562
  %5585 = fmul fast float %5580, %5551
  %5586 = fmul fast float %5585, %5562
  %5587 = fadd fast float %5582, %5142
  %5588 = fadd fast float %5584, %5143
  %5589 = fadd fast float %5586, %5144
  %5590 = fmul fast float %5078, %5078
  %5591 = fmul fast float %5590, %5590
  %5592 = fadd fast float %5547, 1.000000e+00
  %5593 = fsub fast float %5592, %5562
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fsub fast float 1.000000e+00, %5591
  %5598 = call float @dx.op.binary.f32(i32 36, float %5594, float %5597)  ; FMin(a,b)
  %5599 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5600 = call float @dx.op.binary.f32(i32 35, float %5598, float %5599)  ; FMax(a,b)
  %5601 = fadd fast float %5596, 0xBFE4CCCCC0000000
  %5602 = fmul fast float %5601, 0x4006DB6DA0000000
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = fmul fast float %5603, 2.000000e+00
  %5605 = fsub fast float 3.000000e+00, %5604
  %5606 = bitcast float %5102 to i32
  %5607 = ashr i32 %5606, 1
  %5608 = add nsw i32 %5607, 532487669
  %5609 = bitcast i32 %5608 to float
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = sub nsw i32 2129859010, %5611
  %5613 = bitcast i32 %5612 to float
  %5614 = fmul fast float %5613, 2.000000e+00
  %5615 = bitcast float %5103 to i32
  %5616 = ashr i32 %5615, 1
  %5617 = add nsw i32 %5616, 532487669
  %5618 = bitcast i32 %5617 to float
  %5619 = fsub fast float 1.000000e+00, %5618
  %5620 = bitcast float %5619 to i32
  %5621 = sub nsw i32 2129859010, %5620
  %5622 = bitcast i32 %5621 to float
  %5623 = fmul fast float %5622, 2.000000e+00
  %5624 = bitcast float %5104 to i32
  %5625 = ashr i32 %5624, 1
  %5626 = add nsw i32 %5625, 532487669
  %5627 = bitcast i32 %5626 to float
  %5628 = fsub fast float 1.000000e+00, %5627
  %5629 = bitcast float %5628 to i32
  %5630 = sub nsw i32 2129859010, %5629
  %5631 = bitcast i32 %5630 to float
  %5632 = fmul fast float %5631, 2.000000e+00
  %5633 = fsub fast float 0x4002A9FBE0000000, %5614
  %5634 = fadd fast float %5614, 0x3FD54FDF00000000
  %5635 = bitcast float %5634 to i32
  %5636 = sub nsw i32 2129859010, %5635
  %5637 = bitcast i32 %5636 to float
  %5638 = fmul fast float %5637, %5633
  %5639 = fmul fast float %5638, %5638
  %5640 = fsub fast float 0x4002A9FBE0000000, %5623
  %5641 = fadd fast float %5623, 0x3FD54FDF00000000
  %5642 = bitcast float %5641 to i32
  %5643 = sub nsw i32 2129859010, %5642
  %5644 = bitcast i32 %5643 to float
  %5645 = fmul fast float %5644, %5640
  %5646 = fmul fast float %5645, %5645
  %5647 = fsub fast float 0x4002A9FBE0000000, %5632
  %5648 = fadd fast float %5632, 0x3FD54FDF00000000
  %5649 = bitcast float %5648 to i32
  %5650 = sub nsw i32 2129859010, %5649
  %5651 = bitcast i32 %5650 to float
  %5652 = fmul fast float %5651, %5647
  %5653 = fmul fast float %5652, %5652
  %5654 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5639)  ; FMax(a,b)
  %5655 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5646)  ; FMax(a,b)
  %5656 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5653)  ; FMax(a,b)
  %5657 = fsub fast float 1.000000e+00, %5542
  %5658 = fadd fast float %5657, %5558
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fsub fast float 1.000000e+00, %5522
  %5661 = fmul fast float %5600, %5660
  %5662 = fmul fast float %5603, %5603
  %5663 = fmul fast float %5662, %5661
  %5664 = fmul fast float %5663, %5605
  %5665 = fmul fast float %5660, 0xBFE99999A0000000
  %5666 = fmul fast float %5665, %5551
  %5667 = fmul fast float %5666, %5562
  %5668 = fadd fast float %5667, 1.000000e+00
  %5669 = fadd fast float %5105, -1.000000e+00
  %5670 = fmul fast float %5668, %5669
  %5671 = fadd fast float %5670, 1.000000e+00
  %5672 = fsub fast float %5654, %5102
  %5673 = fsub fast float %5655, %5103
  %5674 = fsub fast float %5656, %5104
  %5675 = fmul fast float %5664, %5672
  %5676 = fmul fast float %5664, %5673
  %5677 = fmul fast float %5664, %5674
  %5678 = fadd fast float %5675, %5102
  %5679 = fadd fast float %5676, %5103
  %5680 = fadd fast float %5677, %5104
  %5681 = fsub fast float %116, %5060
  %5682 = fsub fast float %117, %5061
  %5683 = fsub fast float %118, %5062
  %5684 = fmul fast float %5664, %5681
  %5685 = fmul fast float %5664, %5682
  %5686 = fmul fast float %5664, %5683
  %5687 = fadd fast float %5684, %5060
  %5688 = fadd fast float %5685, %5061
  %5689 = fadd fast float %5686, %5062
  %5690 = fmul fast float %5664, %5659
  %5691 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = fmul fast float %5690, %5692
  %5694 = fadd fast float %5693, %5691
  %5695 = fsub fast float 1.000000e+00, %5078
  %5696 = fmul fast float %5664, %5695
  %5697 = fadd fast float %5696, %5078
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5687, float %5688, float %5689, float %5687, float %5688, float %5689)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = call float @dx.op.unary.f32(i32 25, float %5698)  ; Rsqrt(value)
  %5700 = fmul fast float %5687, %5699
  %5701 = fmul fast float %5688, %5699
  %5702 = fmul fast float %5689, %5699
  br label %5703

; <label>:5703                                    ; preds = %5535, %5528
  %5704 = phi float [ %5534, %5528 ], [ %5541, %5535 ]
  %5705 = phi float [ %5533, %5528 ], [ %5539, %5535 ]
  %5706 = phi float [ %5532, %5528 ], [ %5537, %5535 ]
  %5707 = phi float [ %5531, %5528 ], [ %5540, %5535 ]
  %5708 = phi float [ %5530, %5528 ], [ %5538, %5535 ]
  %5709 = phi float [ %5529, %5528 ], [ %5536, %5535 ]
  %5710 = phi float [ %5142, %5528 ], [ %5587, %5535 ]
  %5711 = phi float [ %5143, %5528 ], [ %5588, %5535 ]
  %5712 = phi float [ %5144, %5528 ], [ %5589, %5535 ]
  %5713 = phi float [ %5102, %5528 ], [ %5678, %5535 ]
  %5714 = phi float [ %5103, %5528 ], [ %5679, %5535 ]
  %5715 = phi float [ %5104, %5528 ], [ %5680, %5535 ]
  %5716 = phi float [ %5060, %5528 ], [ %5700, %5535 ]
  %5717 = phi float [ %5061, %5528 ], [ %5701, %5535 ]
  %5718 = phi float [ %5062, %5528 ], [ %5702, %5535 ]
  %5719 = phi float [ %5105, %5528 ], [ %5694, %5535 ]
  %5720 = phi float [ %5078, %5528 ], [ %5697, %5535 ]
  %5721 = fsub fast float -0.000000e+00, %166
  %5722 = select i1 %226, float 0.000000e+00, float %5715
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %5706, float %5705, float %5704)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5709, float %5708, float %5707, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = fmul fast float %5725, 2.000000e+00
  %5727 = fmul fast float %5726, %5716
  %5728 = fmul fast float %5726, %5717
  %5729 = fmul fast float %5726, %5718
  %5730 = fsub fast float %5709, %5727
  %5731 = fsub fast float %5708, %5728
  %5732 = fsub fast float %5707, %5729
  %5733 = call float @dx.op.binary.f32(i32 36, float %5720, float 1.000000e+00)  ; FMin(a,b)
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = bitcast float %5734 to i32
  %5736 = ashr i32 %5735, 1
  %5737 = add nsw i32 %5736, 532487669
  %5738 = bitcast i32 %5737 to float
  %5739 = fsub fast float 1.000000e+00, %5719
  %5740 = call float @dx.op.binary.f32(i32 35, float %5739, float 0x3F847AE140000000)  ; FMax(a,b)
  %5741 = fmul fast float %5740, %5740
  %5742 = fmul fast float %5741, %5741
  %5743 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5738, float %5742, float %5743, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = fsub fast float 1.000000e+00, %5720
  %5747 = bitcast float %5746 to i32
  %5748 = sub nsw i32 2129859010, %5747
  %5749 = bitcast i32 %5748 to float
  %5750 = call float @dx.op.dot3.f32(i32 55, float %77, float %73, float %69, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = fmul fast float %5750, 0x3FD20DD760000000
  %5752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %5753 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = fcmp fast oeq float %5753, 0.000000e+00
  %5755 = fcmp fast oeq float %5752, 0.000000e+00
  %5756 = or i1 %5755, %5754
  br i1 %5756, label %5786, label %5757

; <label>:5757                                    ; preds = %5703
  %5758 = fsub fast float -0.000000e+00, %80
  %5759 = fsub fast float -0.000000e+00, %78
  %5760 = call float @dx.op.unary.f32(i32 24, float %5753)  ; Sqrt(value)
  %5761 = fdiv fast float %5760, %5752
  %5762 = fcmp fast ogt float %5761, 0x3FFB6F8900000000
  %5763 = select i1 %5762, float 0x3FFB6F8900000000, float %5761
  %5764 = fmul fast float %5763, 0x3FE8A23460000000
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5763, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5767 = fmul fast float %5765, %5752
  %5768 = fmul fast float %5766, 0x3FF279A740000000
  %5769 = fadd fast float %5768, -1.000000e+00
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5759, float %79, float %5758, float %5759, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 25, float %5770)  ; Rsqrt(value)
  %5772 = fmul fast float %5771, %5758
  %5773 = fmul fast float %5771, %5759
  %5774 = fmul fast float %5771, %79
  %5775 = fmul fast float %5769, %5769
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = fmul fast float %5766, 0x40005F8BE0000000
  %5778 = fsub fast float 0x400C5BF8A0000000, %5777
  %5779 = fdiv fast float %5767, %5778
  %5780 = fmul fast float %5779, 0x3FEE31C3C0000000
  %5781 = fmul fast float %5780, %5776
  %5782 = fmul fast float %5766, 0x3FDACB7480000000
  %5783 = fadd fast float %5782, 0xBFD7347680000000
  %5784 = fmul fast float %5783, %5779
  %5785 = fmul fast float %5784, %5776
  br label %5786

; <label>:5786                                    ; preds = %5757, %5703
  %5787 = phi float [ %5772, %5757 ], [ 0.000000e+00, %5703 ]
  %5788 = phi float [ %5773, %5757 ], [ 0.000000e+00, %5703 ]
  %5789 = phi float [ %5774, %5757 ], [ 0.000000e+00, %5703 ]
  %5790 = phi float [ %5781, %5757 ], [ 0.000000e+00, %5703 ]
  %5791 = phi float [ %5785, %5757 ], [ 0.000000e+00, %5703 ]
  %5792 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = fmul fast float %5792, 0x3FDF454380000000
  %5794 = fmul fast float %5792, %5792
  %5795 = fmul fast float %5794, 0x3FEE471020000000
  %5796 = fadd fast float %5795, 0xBFD42F6020000000
  %5797 = fmul fast float %5752, 0x3FD20DD760000000
  %5798 = fmul fast float %5796, %5791
  %5799 = fadd fast float %5798, %5797
  %5800 = fmul fast float %5793, %5790
  %5801 = fadd fast float %5799, %5800
  %5802 = fsub fast float %5799, %5800
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = fmul fast float %5803, 0x3FDF454380000000
  %5805 = fmul fast float %5803, %5803
  %5806 = fmul fast float %5805, 0x3FEE471020000000
  %5807 = fadd fast float %5806, 0xBFD42F6020000000
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5790, float %5791, float 0x3FD20DD760000000, float %5804, float %5807)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5810 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = fcmp fast oeq float %5810, 0.000000e+00
  %5812 = fcmp fast oeq float %5809, 0.000000e+00
  %5813 = or i1 %5812, %5811
  br i1 %5813, label %5843, label %5814

; <label>:5814                                    ; preds = %5786
  %5815 = fsub fast float -0.000000e+00, %76
  %5816 = fsub fast float -0.000000e+00, %74
  %5817 = call float @dx.op.unary.f32(i32 24, float %5810)  ; Sqrt(value)
  %5818 = fdiv fast float %5817, %5809
  %5819 = fcmp fast ogt float %5818, 0x3FFB6F8900000000
  %5820 = select i1 %5819, float 0x3FFB6F8900000000, float %5818
  %5821 = fmul fast float %5820, 0x3FE8A23460000000
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = call float @dx.op.binary.f32(i32 35, float %5820, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5824 = fmul fast float %5822, %5809
  %5825 = fmul fast float %5823, 0x3FF279A740000000
  %5826 = fadd fast float %5825, -1.000000e+00
  %5827 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %75, float %5815, float %5816, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = call float @dx.op.unary.f32(i32 25, float %5827)  ; Rsqrt(value)
  %5829 = fmul fast float %5828, %5815
  %5830 = fmul fast float %5828, %5816
  %5831 = fmul fast float %5828, %75
  %5832 = fmul fast float %5826, %5826
  %5833 = fsub fast float 1.000000e+00, %5832
  %5834 = fmul fast float %5823, 0x40005F8BE0000000
  %5835 = fsub fast float 0x400C5BF8A0000000, %5834
  %5836 = fdiv fast float %5824, %5835
  %5837 = fmul fast float %5836, 0x3FEE31C3C0000000
  %5838 = fmul fast float %5837, %5833
  %5839 = fmul fast float %5823, 0x3FDACB7480000000
  %5840 = fadd fast float %5839, 0xBFD7347680000000
  %5841 = fmul fast float %5840, %5836
  %5842 = fmul fast float %5841, %5833
  br label %5843

; <label>:5843                                    ; preds = %5814, %5786
  %5844 = phi float [ %5829, %5814 ], [ 0.000000e+00, %5786 ]
  %5845 = phi float [ %5830, %5814 ], [ 0.000000e+00, %5786 ]
  %5846 = phi float [ %5831, %5814 ], [ 0.000000e+00, %5786 ]
  %5847 = phi float [ %5838, %5814 ], [ 0.000000e+00, %5786 ]
  %5848 = phi float [ %5842, %5814 ], [ 0.000000e+00, %5786 ]
  %5849 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = fmul fast float %5849, 0x3FDF454380000000
  %5851 = fmul fast float %5849, %5849
  %5852 = fmul fast float %5851, 0x3FEE471020000000
  %5853 = fadd fast float %5852, 0xBFD42F6020000000
  %5854 = fmul fast float %5809, 0x3FD20DD760000000
  %5855 = fmul fast float %5853, %5848
  %5856 = fadd fast float %5855, %5854
  %5857 = fmul fast float %5850, %5847
  %5858 = fadd fast float %5856, %5857
  %5859 = fsub fast float %5856, %5857
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5844, float %5845, float %5846, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = fmul fast float %5860, 0x3FDF454380000000
  %5862 = fmul fast float %5860, %5860
  %5863 = fmul fast float %5862, 0x3FEE471020000000
  %5864 = fadd fast float %5863, 0xBFD42F6020000000
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5809, float %5847, float %5848, float 0x3FD20DD760000000, float %5861, float %5864)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5867 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = fcmp fast oeq float %5867, 0.000000e+00
  %5869 = fcmp fast oeq float %5866, 0.000000e+00
  %5870 = or i1 %5869, %5868
  br i1 %5870, label %5900, label %5871

; <label>:5871                                    ; preds = %5843
  %5872 = fsub fast float -0.000000e+00, %72
  %5873 = fsub fast float -0.000000e+00, %70
  %5874 = call float @dx.op.unary.f32(i32 24, float %5867)  ; Sqrt(value)
  %5875 = fdiv fast float %5874, %5866
  %5876 = fcmp fast ogt float %5875, 0x3FFB6F8900000000
  %5877 = select i1 %5876, float 0x3FFB6F8900000000, float %5875
  %5878 = fmul fast float %5877, 0x3FE8A23460000000
  %5879 = call float @dx.op.unary.f32(i32 7, float %5878)  ; Saturate(value)
  %5880 = call float @dx.op.binary.f32(i32 35, float %5877, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5881 = fmul fast float %5879, %5866
  %5882 = fmul fast float %5880, 0x3FF279A740000000
  %5883 = fadd fast float %5882, -1.000000e+00
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %71, float %5872, float %5873, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.unary.f32(i32 25, float %5884)  ; Rsqrt(value)
  %5886 = fmul fast float %5885, %5872
  %5887 = fmul fast float %5885, %5873
  %5888 = fmul fast float %5885, %71
  %5889 = fmul fast float %5883, %5883
  %5890 = fsub fast float 1.000000e+00, %5889
  %5891 = fmul fast float %5880, 0x40005F8BE0000000
  %5892 = fsub fast float 0x400C5BF8A0000000, %5891
  %5893 = fdiv fast float %5881, %5892
  %5894 = fmul fast float %5893, 0x3FEE31C3C0000000
  %5895 = fmul fast float %5894, %5890
  %5896 = fmul fast float %5880, 0x3FDACB7480000000
  %5897 = fadd fast float %5896, 0xBFD7347680000000
  %5898 = fmul fast float %5897, %5893
  %5899 = fmul fast float %5898, %5890
  br label %5900

; <label>:5900                                    ; preds = %5871, %5843
  %5901 = phi float [ %5886, %5871 ], [ 0.000000e+00, %5843 ]
  %5902 = phi float [ %5887, %5871 ], [ 0.000000e+00, %5843 ]
  %5903 = phi float [ %5888, %5871 ], [ 0.000000e+00, %5843 ]
  %5904 = phi float [ %5895, %5871 ], [ 0.000000e+00, %5843 ]
  %5905 = phi float [ %5899, %5871 ], [ 0.000000e+00, %5843 ]
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5901, float %5902, float %5903, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = fmul fast float %5906, 0x3FDF454380000000
  %5908 = fmul fast float %5906, %5906
  %5909 = fmul fast float %5908, 0x3FEE471020000000
  %5910 = fadd fast float %5909, 0xBFD42F6020000000
  %5911 = fmul fast float %5866, 0x3FD20DD760000000
  %5912 = fmul fast float %5910, %5905
  %5913 = fadd fast float %5912, %5911
  %5914 = fmul fast float %5907, %5904
  %5915 = fadd fast float %5913, %5914
  %5916 = fsub fast float %5913, %5914
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5901, float %5902, float %5903, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = fmul fast float %5917, 0x3FDF454380000000
  %5919 = fmul fast float %5917, %5917
  %5920 = fmul fast float %5919, 0x3FEE471020000000
  %5921 = fadd fast float %5920, 0xBFD42F6020000000
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5866, float %5904, float %5905, float 0x3FD20DD760000000, float %5918, float %5921)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = call float @dx.op.binary.f32(i32 35, float %5801, float 0.000000e+00)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5858, float 0.000000e+00)  ; FMax(a,b)
  %5925 = call float @dx.op.binary.f32(i32 35, float %5915, float 0.000000e+00)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 35, float %5802, float 0.000000e+00)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 35, float %5859, float 0.000000e+00)  ; FMax(a,b)
  %5928 = call float @dx.op.binary.f32(i32 35, float %5916, float 0.000000e+00)  ; FMax(a,b)
  %5929 = call float @dx.op.binary.f32(i32 35, float %5808, float 0.000000e+00)  ; FMax(a,b)
  %5930 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5931 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = call float @dx.op.binary.f32(i32 36, float %5710, float %5933)  ; FMin(a,b)
  %5935 = fmul fast float %5934, %5734
  %5936 = fsub fast float 1.000000e+00, %5935
  %5937 = bitcast float %5936 to i32
  %5938 = sub nsw i32 2129859010, %5937
  %5939 = bitcast i32 %5938 to float
  %5940 = call float @dx.op.binary.f32(i32 36, float %5711, float %5933)  ; FMin(a,b)
  %5941 = fmul fast float %5940, %5734
  %5942 = fsub fast float 1.000000e+00, %5941
  %5943 = bitcast float %5942 to i32
  %5944 = sub nsw i32 2129859010, %5943
  %5945 = bitcast i32 %5944 to float
  %5946 = call float @dx.op.binary.f32(i32 36, float %5712, float %5933)  ; FMin(a,b)
  %5947 = fmul fast float %5946, %5734
  %5948 = fsub fast float 1.000000e+00, %5947
  %5949 = bitcast float %5948 to i32
  %5950 = sub nsw i32 2129859010, %5949
  %5951 = bitcast i32 %5950 to float
  %5952 = fmul fast float %5923, %5733
  %5953 = fmul fast float %5952, %5939
  %5954 = fmul fast float %5924, %5733
  %5955 = fmul fast float %5954, %5945
  %5956 = fmul fast float %5925, %5733
  %5957 = fmul fast float %5956, %5951
  %5958 = call float @dx.op.binary.f32(i32 36, float %5713, float %5933)  ; FMin(a,b)
  %5959 = fmul fast float %5958, %5734
  %5960 = fsub fast float 1.000000e+00, %5959
  %5961 = bitcast float %5960 to i32
  %5962 = sub nsw i32 2129859010, %5961
  %5963 = bitcast i32 %5962 to float
  %5964 = call float @dx.op.binary.f32(i32 36, float %5714, float %5933)  ; FMin(a,b)
  %5965 = fmul fast float %5964, %5734
  %5966 = fsub fast float 1.000000e+00, %5965
  %5967 = bitcast float %5966 to i32
  %5968 = sub nsw i32 2129859010, %5967
  %5969 = bitcast i32 %5968 to float
  %5970 = call float @dx.op.binary.f32(i32 36, float %5722, float %5933)  ; FMin(a,b)
  %5971 = fmul fast float %5970, %5734
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = bitcast float %5972 to i32
  %5974 = sub nsw i32 2129859010, %5973
  %5975 = bitcast i32 %5974 to float
  %5976 = fmul fast float %5929, %5733
  %5977 = fmul fast float %5976, %5963
  %5978 = fmul fast float %5930, %5733
  %5979 = fmul fast float %5978, %5969
  %5980 = fmul fast float %5931, %5733
  %5981 = fmul fast float %5980, %5975
  %5982 = call float @dx.op.dot3.f32(i32 55, float %5953, float %5955, float %5957, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = select i1 %226, float 0.000000e+00, float %5953
  %5984 = select i1 %226, float %5982, float %5955
  %5985 = select i1 %226, float 0.000000e+00, float %5957
  %5986 = call float @dx.op.dot3.f32(i32 55, float %5926, float %5927, float %5928, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5987 = select i1 %226, float 0.000000e+00, float %5926
  %5988 = select i1 %226, float %5986, float %5927
  %5989 = select i1 %226, float 0.000000e+00, float %5928
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5977, float %5979, float %5981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = select i1 %226, float 0.000000e+00, float %5977
  %5992 = select i1 %226, float %5990, float %5979
  %5993 = select i1 %226, float 0.000000e+00, float %5981
  %5994 = fmul fast float %4427, %4427
  %5995 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5996 = fmul fast float %5724, 9.843750e-01
  %5997 = fmul fast float %5719, 9.843750e-01
  %5998 = fadd fast float %5996, 7.812500e-03
  %5999 = fadd fast float %5997, 7.812500e-03
  %6000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5998, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6001 = extractvalue %dx.types.ResRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.ResRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.ResRet.f32 %6000, 2
  %6004 = extractvalue %dx.types.ResRet.f32 %6000, 3
  %6005 = fsub fast float 1.000000e+00, %5995
  %6006 = fsub fast float %6003, %6001
  %6007 = fsub fast float %6004, %6002
  %6008 = fmul fast float %6006, %6005
  %6009 = fmul fast float %6007, %6005
  %6010 = fadd fast float %6008, %6001
  %6011 = fadd fast float %6009, %6002
  %6012 = fmul fast float %6010, %5713
  %6013 = fmul fast float %6010, %5714
  %6014 = fmul fast float %6010, %5722
  %6015 = fadd fast float %6012, %6011
  %6016 = fadd fast float %6013, %6011
  %6017 = fadd fast float %6014, %6011
  %6018 = fcmp fast ogt float %5079, 0.000000e+00
  br i1 %6018, label %6019, label %6045

; <label>:6019                                    ; preds = %5900
  %6020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %5724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6021 = extractvalue %dx.types.ResRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.ResRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.ResRet.f32 %6020, 2
  %6024 = fadd fast float %6021, -5.000000e-01
  %6025 = fadd fast float %6022, -5.000000e-01
  %6026 = fadd fast float %6023, -5.000000e-01
  %6027 = fsub fast float 1.000000e+00, %5713
  %6028 = fsub fast float 1.000000e+00, %5714
  %6029 = fsub fast float 1.000000e+00, %5722
  %6030 = fmul fast float %5713, 4.000000e+00
  %6031 = fmul fast float %6030, %6027
  %6032 = fmul fast float %6031, %6024
  %6033 = fmul fast float %5714, 4.000000e+00
  %6034 = fmul fast float %6033, %6028
  %6035 = fmul fast float %6034, %6025
  %6036 = fmul fast float %5722, 4.000000e+00
  %6037 = fmul fast float %6036, %6029
  %6038 = fmul fast float %6037, %6026
  %6039 = fadd fast float %6032, %6015
  %6040 = fadd fast float %6035, %6016
  %6041 = fadd fast float %6038, %6017
  %6042 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6043 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6044 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  br label %6045

; <label>:6045                                    ; preds = %6019, %5900
  %6046 = phi float [ %6042, %6019 ], [ %6015, %5900 ]
  %6047 = phi float [ %6043, %6019 ], [ %6016, %5900 ]
  %6048 = phi float [ %6044, %6019 ], [ %6017, %5900 ]
  %6049 = call float @dx.op.binary.f32(i32 35, float %6047, float %6048)  ; FMax(a,b)
  %6050 = call float @dx.op.binary.f32(i32 35, float %6046, float %6049)  ; FMax(a,b)
  %6051 = fsub fast float 1.000000e+00, %6050
  %6052 = fmul fast float %6050, %5719
  %6053 = fadd fast float %6052, %5719
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 2
  %6056 = extractvalue %dx.types.CBufRet.f32 %6054, 3
  %6057 = fmul fast float %6053, %6055
  %6058 = fadd fast float %6057, %6056
  %6059 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6060 = fsub fast float 1.000000e+00, %5745
  %6061 = fadd fast float %6060, %6059
  %6062 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6063 = fcmp fast olt float %6062, 1.000000e+00
  br i1 %6063, label %6064, label %6540

; <label>:6064                                    ; preds = %6045
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6067 = extractvalue %dx.types.CBufRet.f32 %6065, 3
  %6068 = fmul fast float %6066, %109
  %6069 = fmul fast float %6067, %110
  %6070 = fptoui float %6068 to i32
  %6071 = fptoui float %6069 to i32
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6072, 2
  %6075 = extractvalue %dx.types.CBufRet.f32 %6072, 3
  %6076 = fadd fast float %97, -4.000000e+00
  %6077 = call float @dx.op.binary.f32(i32 35, float %6076, float 0.000000e+00)  ; FMax(a,b)
  %6078 = fadd fast float %6077, %6073
  %6079 = fmul fast float %6078, %6074
  %6080 = call float @dx.op.unary.f32(i32 23, float %6079)  ; Log(value)
  %6081 = fmul fast float %6080, %6075
  %6082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6083 = extractvalue %dx.types.CBufRet.f32 %6082, 2
  %6084 = fmul fast float %6081, %6083
  %6085 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  %6086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.i32 %6086, 1
  %6088 = add i32 %6087, -1
  %6089 = uitofp i32 %6087 to float
  %6090 = fmul fast float %6089, %6085
  %6091 = fptoui float %6090 to i32
  %6092 = call i32 @dx.op.binary.i32(i32 40, i32 %6091, i32 %6088)  ; UMin(a,b)
  %6093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.i32 %6093, 2
  %6095 = extractvalue %dx.types.CBufRet.i32 %6093, 3
  %6096 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6071, i32 %6094, i32 %6070)  ; UMad(a,b,c)
  %6097 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6092, i32 %6095, i32 %6096)  ; UMad(a,b,c)
  %6098 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6099 = fptoui float %6098 to i32
  %6100 = lshr i32 %6099, 5
  %6101 = call i32 @dx.op.binary.i32(i32 40, i32 %6100, i32 8191)  ; UMin(a,b)
  %6102 = fsub fast float %5512, %166
  %6103 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6104 = fcmp fast ogt float %6103, 0.000000e+00
  %6105 = fcmp fast ogt float %5732, 0.000000e+00
  %6106 = and i1 %6105, %6104
  br i1 %6106, label %6107, label %6136

; <label>:6107                                    ; preds = %6064
  %6108 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6109 = call float @dx.op.binary.f32(i32 35, float %6108, float -1.000000e+00)  ; FMax(a,b)
  %6110 = call float @dx.op.binary.f32(i32 36, float %6109, float 1.000000e+00)  ; FMin(a,b)
  %6111 = fmul fast float %6110, %6110
  %6112 = fsub fast float 1.000000e+00, %6111
  %6113 = fmul fast float %6112, 0x3FFC6E2300000000
  %6114 = fsub fast float 1.000000e+00, %6113
  %6115 = fcmp fast ogt float %6114, 0.000000e+00
  %6116 = call float @dx.op.unary.f32(i32 24, float %6114)  ; Sqrt(value)
  %6117 = fsub fast float 1.000000e+00, %6116
  %6118 = call float @dx.op.unary.f32(i32 23, float %6117)  ; Log(value)
  %6119 = fmul fast float %6118, 5.000000e+00
  %6120 = call float @dx.op.unary.f32(i32 21, float %6119)  ; Exp(value)
  %6121 = fmul fast float %6120, 0x3FEF591A60000000
  %6122 = fadd fast float %6121, 0x3F94DCB540000000
  %6123 = select i1 %6115, float %6122, float 1.000000e+00
  %6124 = fcmp fast oge float %6123, 1.000000e+00
  %6125 = fmul fast float %6108, 2.000000e+00
  %6126 = fadd fast float %6125, %5732
  %6127 = select i1 %6124, float %6126, float %5732
  %6128 = fsub fast float %6127, %5732
  %6129 = fmul fast float %6128, %6103
  %6130 = fadd fast float %6129, %5732
  %6131 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %6130, float %5730, float %5731, float %6130)  ; Dot3(ax,ay,az,bx,by,bz)
  %6132 = call float @dx.op.unary.f32(i32 25, float %6131)  ; Rsqrt(value)
  %6133 = fmul fast float %6132, %5730
  %6134 = fmul fast float %6132, %5731
  %6135 = fmul fast float %6130, %6132
  br label %6136

; <label>:6136                                    ; preds = %6107, %6064
  %6137 = phi float [ %6133, %6107 ], [ %5730, %6064 ]
  %6138 = phi float [ %6134, %6107 ], [ %5731, %6064 ]
  %6139 = phi float [ %6135, %6107 ], [ %5732, %6064 ]
  %6140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.i32 %6140, 2
  %6142 = add nsw i32 %6141, -1
  %6143 = call i32 @dx.op.binary.i32(i32 37, i32 %6142, i32 0)  ; IMax(a,b)
  %6144 = shl i32 %6101, 2
  %6145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6144, i32 undef)  ; BufferLoad(srv,index,wot)
  %6146 = extractvalue %dx.types.ResRet.i32 %6145, 0
  %6147 = lshr i32 %6146, 16
  %6148 = and i32 %6146, 65535
  %6149 = lshr i32 %6146, 21
  %6150 = lshr i32 %6148, 5
  %6151 = call i32 @dx.op.binary.i32(i32 40, i32 %6150, i32 %6143)  ; UMin(a,b)
  %6152 = icmp ugt i32 %6149, %6151
  br i1 %6152, label %6516, label %6153

; <label>:6153                                    ; preds = %6136
  br label %6154

; <label>:6154                                    ; preds = %6508, %6153
  %6155 = phi float [ %6509, %6508 ], [ 0.000000e+00, %6153 ]
  %6156 = phi float [ %6510, %6508 ], [ 0.000000e+00, %6153 ]
  %6157 = phi float [ %6511, %6508 ], [ 0.000000e+00, %6153 ]
  %6158 = phi float [ %6512, %6508 ], [ 1.000000e+00, %6153 ]
  %6159 = phi i32 [ %6513, %6508 ], [ %6149, %6153 ]
  %6160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.i32 %6160, 2
  %6162 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6097, i32 %6161, i32 %6159)  ; UMad(a,b,c)
  %6163 = shl i32 %6162, 2
  %6164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6163, i32 undef)  ; BufferLoad(srv,index,wot)
  %6165 = extractvalue %dx.types.ResRet.i32 %6164, 0
  %6166 = shl i32 %6159, 5
  %6167 = sub nsw i32 %6147, %6166
  %6168 = call i32 @dx.op.binary.i32(i32 37, i32 %6167, i32 0)  ; IMax(a,b)
  %6169 = call i32 @dx.op.binary.i32(i32 38, i32 %6168, i32 31)  ; IMin(a,b)
  %6170 = sub nsw i32 1, %6147
  %6171 = add nsw i32 %6170, %6148
  %6172 = call i32 @dx.op.binary.i32(i32 37, i32 %6171, i32 0)  ; IMax(a,b)
  %6173 = call i32 @dx.op.binary.i32(i32 38, i32 %6172, i32 32)  ; IMin(a,b)
  %6174 = and i32 %6173, 31
  %6175 = shl i32 -1, %6174
  %6176 = xor i32 %6175, -1
  %6177 = and i32 %6169, 31
  %6178 = shl i32 %6176, %6177
  %6179 = icmp eq i32 %6173, 32
  %6180 = select i1 %6179, i32 -1, i32 %6178
  %6181 = and i32 %6180, %6165
  %6182 = icmp eq i32 %6181, 0
  br i1 %6182, label %6508, label %6183

; <label>:6183                                    ; preds = %6154
  br label %6184

; <label>:6184                                    ; preds = %6291, %6183
  %6185 = phi float [ %6292, %6291 ], [ %6155, %6183 ]
  %6186 = phi float [ %6293, %6291 ], [ %6156, %6183 ]
  %6187 = phi float [ %6294, %6291 ], [ %6157, %6183 ]
  %6188 = phi float [ %6295, %6291 ], [ %6158, %6183 ]
  %6189 = phi i32 [ %6194, %6291 ], [ %6181, %6183 ]
  %6190 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6189)  ; FirstbitLo(value)
  %6191 = add i32 %6190, %6166
  %6192 = and i32 %6190, 31
  %6193 = shl i32 1, %6192
  %6194 = xor i32 %6193, %6189
  %6195 = mul i32 %6191, 72
  %6196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6195, i32 undef)  ; BufferLoad(srv,index,wot)
  %6197 = extractvalue %dx.types.ResRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.ResRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.ResRet.f32 %6196, 2
  %6200 = add i32 %6195, 12
  %6201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.i32 %6201, 0
  %6203 = add i32 %6195, 16
  %6204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6203, i32 undef)  ; BufferLoad(srv,index,wot)
  %6205 = extractvalue %dx.types.ResRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.ResRet.f32 %6204, 1
  %6207 = extractvalue %dx.types.ResRet.f32 %6204, 2
  %6208 = add i32 %6195, 28
  %6209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6208, i32 undef)  ; BufferLoad(srv,index,wot)
  %6210 = extractvalue %dx.types.ResRet.f32 %6209, 0
  %6211 = add i32 %6195, 32
  %6212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6211, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.f32 %6212, 0
  %6214 = extractvalue %dx.types.ResRet.f32 %6212, 1
  %6215 = extractvalue %dx.types.ResRet.f32 %6212, 2
  %6216 = extractvalue %dx.types.ResRet.f32 %6212, 3
  %6217 = add i32 %6195, 48
  %6218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6217, i32 undef)  ; BufferLoad(srv,index,wot)
  %6219 = extractvalue %dx.types.ResRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.ResRet.f32 %6218, 1
  %6221 = add i32 %6195, 56
  %6222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6221, i32 undef)  ; BufferLoad(srv,index,wot)
  %6223 = extractvalue %dx.types.ResRet.f32 %6222, 0
  %6224 = extractvalue %dx.types.ResRet.f32 %6222, 1
  %6225 = add i32 %6195, 64
  %6226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6225, i32 undef)  ; BufferLoad(srv,index,wot)
  %6227 = extractvalue %dx.types.ResRet.f32 %6226, 0
  %6228 = extractvalue %dx.types.ResRet.f32 %6226, 1
  %6229 = mul i32 %6191, 60
  %6230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6229, i32 undef)  ; BufferLoad(srv,index,wot)
  %6231 = extractvalue %dx.types.ResRet.f32 %6230, 0
  %6232 = extractvalue %dx.types.ResRet.f32 %6230, 1
  %6233 = extractvalue %dx.types.ResRet.f32 %6230, 2
  %6234 = add i32 %6229, 12
  %6235 = add i32 %6229, 48
  %6236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6235, i32 undef)  ; BufferLoad(srv,index,wot)
  %6237 = extractvalue %dx.types.ResRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.ResRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.ResRet.f32 %6236, 2
  %6240 = and i32 %6202, 32767
  %6241 = bitcast float %6197 to i32
  %6242 = icmp eq i32 %6241, -1
  %6243 = bitcast float %6198 to i32
  %6244 = and i32 %6202, 32768
  %6245 = icmp ne i32 %6244, 0
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = fsub fast float %6231, %6247
  %6251 = fsub fast float %6232, %6248
  %6252 = fsub fast float %6233, %6249
  %6253 = fsub fast float %164, %6250
  %6254 = fsub fast float %165, %6251
  %6255 = fsub fast float %166, %6252
  %6256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6234, i32 undef)  ; BufferLoad(srv,index,wot)
  %6257 = extractvalue %dx.types.ResRet.f32 %6256, 0
  %6258 = extractvalue %dx.types.ResRet.f32 %6256, 1
  %6259 = extractvalue %dx.types.ResRet.f32 %6256, 2
  %6260 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6257, float %6258, float %6259)  ; Dot3(ax,ay,az,bx,by,bz)
  %6261 = add i32 %6229, 24
  %6262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6261, i32 undef)  ; BufferLoad(srv,index,wot)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 0
  %6264 = extractvalue %dx.types.ResRet.f32 %6262, 1
  %6265 = extractvalue %dx.types.ResRet.f32 %6262, 2
  %6266 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6263, float %6264, float %6265)  ; Dot3(ax,ay,az,bx,by,bz)
  %6267 = add i32 %6229, 36
  %6268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6267, i32 undef)  ; BufferLoad(srv,index,wot)
  %6269 = extractvalue %dx.types.ResRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.ResRet.f32 %6268, 1
  %6271 = extractvalue %dx.types.ResRet.f32 %6268, 2
  %6272 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6269, float %6270, float %6271)  ; Dot3(ax,ay,az,bx,by,bz)
  %6273 = call float @dx.op.unary.f32(i32 6, float %6260)  ; FAbs(value)
  %6274 = call float @dx.op.unary.f32(i32 6, float %6266)  ; FAbs(value)
  %6275 = call float @dx.op.unary.f32(i32 6, float %6272)  ; FAbs(value)
  %6276 = fsub fast float %6237, %6273
  %6277 = fsub fast float %6238, %6274
  %6278 = fsub fast float %6239, %6275
  %6279 = fmul fast float %6276, %6205
  %6280 = fmul fast float %6277, %6206
  %6281 = fmul fast float %6278, %6207
  %6282 = call float @dx.op.binary.f32(i32 36, float %6280, float %6281)  ; FMin(a,b)
  %6283 = call float @dx.op.binary.f32(i32 36, float %6279, float %6282)  ; FMin(a,b)
  %6284 = call float @dx.op.unary.f32(i32 7, float %6283)  ; Saturate(value)
  %6285 = call float @dx.op.binary.f32(i32 36, float %6188, float %6284)  ; FMin(a,b)
  %6286 = uitofp i1 %6245 to float
  %6287 = fadd fast float %6103, 1.000000e+00
  %6288 = fsub fast float %6287, %6286
  %6289 = fmul fast float %6285, %6288
  %6290 = fcmp fast ogt float %6289, 0.000000e+00
  br i1 %6290, label %6297, label %6291

; <label>:6291                                    ; preds = %6439, %6184
  %6292 = phi float [ %6503, %6439 ], [ %6185, %6184 ]
  %6293 = phi float [ %6504, %6439 ], [ %6186, %6184 ]
  %6294 = phi float [ %6505, %6439 ], [ %6187, %6184 ]
  %6295 = phi float [ %6506, %6439 ], [ %6188, %6184 ]
  %6296 = icmp eq i32 %6189, %6193
  br i1 %6296, label %6507, label %6184

; <label>:6297                                    ; preds = %6184
  br i1 %6242, label %6355, label %6298

; <label>:6298                                    ; preds = %6297
  %6299 = fsub fast float -0.000000e+00, %6257
  %6300 = fsub fast float -0.000000e+00, %6258
  %6301 = fsub fast float -0.000000e+00, %6259
  %6302 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6139, float %6299, float %6300, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = fsub fast float -0.000000e+00, %6302
  %6304 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6299, float %6300, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6305 = fadd fast float %6304, %6220
  %6306 = fadd fast float %6219, %6304
  %6307 = fsub fast float -0.000000e+00, %6306
  %6308 = fcmp ogt float %6302, -0.000000e+00
  %6309 = select i1 %6308, float %6307, float %6305
  %6310 = call float @dx.op.unary.f32(i32 6, float %6303)  ; FAbs(value)
  %6311 = fdiv fast float 1.000000e+00, %6310
  %6312 = fmul fast float %6309, %6311
  %6313 = call float @dx.op.binary.f32(i32 35, float %6312, float 0.000000e+00)  ; FMax(a,b)
  %6314 = fsub fast float -0.000000e+00, %6263
  %6315 = fsub fast float -0.000000e+00, %6264
  %6316 = fsub fast float -0.000000e+00, %6265
  %6317 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6139, float %6314, float %6315, float %6316)  ; Dot3(ax,ay,az,bx,by,bz)
  %6318 = fsub fast float -0.000000e+00, %6317
  %6319 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6314, float %6315, float %6316)  ; Dot3(ax,ay,az,bx,by,bz)
  %6320 = fadd fast float %6319, %6224
  %6321 = fadd fast float %6223, %6319
  %6322 = fsub fast float -0.000000e+00, %6321
  %6323 = fcmp ogt float %6317, -0.000000e+00
  %6324 = select i1 %6323, float %6322, float %6320
  %6325 = call float @dx.op.unary.f32(i32 6, float %6318)  ; FAbs(value)
  %6326 = fdiv fast float 1.000000e+00, %6325
  %6327 = fmul fast float %6324, %6326
  %6328 = call float @dx.op.binary.f32(i32 35, float %6327, float 0.000000e+00)  ; FMax(a,b)
  %6329 = fsub fast float -0.000000e+00, %6269
  %6330 = fsub fast float -0.000000e+00, %6270
  %6331 = fsub fast float -0.000000e+00, %6271
  %6332 = call float @dx.op.dot3.f32(i32 55, float %6137, float %6138, float %6139, float %6329, float %6330, float %6331)  ; Dot3(ax,ay,az,bx,by,bz)
  %6333 = fsub fast float -0.000000e+00, %6332
  %6334 = call float @dx.op.dot3.f32(i32 55, float %6253, float %6254, float %6255, float %6329, float %6330, float %6331)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = fadd fast float %6334, %6228
  %6336 = fadd fast float %6227, %6334
  %6337 = fsub fast float -0.000000e+00, %6336
  %6338 = fcmp ogt float %6332, -0.000000e+00
  %6339 = select i1 %6338, float %6337, float %6335
  %6340 = call float @dx.op.unary.f32(i32 6, float %6333)  ; FAbs(value)
  %6341 = fdiv fast float 1.000000e+00, %6340
  %6342 = fmul fast float %6339, %6341
  %6343 = call float @dx.op.binary.f32(i32 35, float %6342, float 0.000000e+00)  ; FMax(a,b)
  %6344 = call float @dx.op.binary.f32(i32 36, float %6328, float %6343)  ; FMin(a,b)
  %6345 = call float @dx.op.binary.f32(i32 36, float %6313, float %6344)  ; FMin(a,b)
  %6346 = fmul fast float %6345, %6137
  %6347 = fmul fast float %6345, %6138
  %6348 = fmul fast float %6345, %6139
  %6349 = fadd fast float %6346, %164
  %6350 = fadd fast float %6347, %165
  %6351 = fadd fast float %6348, %166
  %6352 = fsub fast float %6349, %6197
  %6353 = fsub fast float %6350, %6198
  %6354 = fsub fast float %6351, %6199
  br label %6362

; <label>:6355                                    ; preds = %6297
  %6356 = fmul fast float %6137, 8.096000e+03
  %6357 = fmul fast float %6138, 8.096000e+03
  %6358 = fmul fast float %6139, 8.096000e+03
  %6359 = fadd fast float %6356, %164
  %6360 = fadd fast float %6357, %165
  %6361 = fadd fast float %6358, %166
  br label %6362

; <label>:6362                                    ; preds = %6355, %6298
  %6363 = phi float [ %6137, %6355 ], [ %6352, %6298 ]
  %6364 = phi float [ %6138, %6355 ], [ %6353, %6298 ]
  %6365 = phi float [ %6139, %6355 ], [ %6354, %6298 ]
  %6366 = phi float [ %6359, %6355 ], [ %6349, %6298 ]
  %6367 = phi float [ %6360, %6355 ], [ %6350, %6298 ]
  %6368 = phi float [ %6361, %6355 ], [ %6351, %6298 ]
  %6369 = fcmp fast olt float %6216, 1.000000e+00
  br i1 %6369, label %6370, label %6401, !dx.controlflow.hints !100

; <label>:6370                                    ; preds = %6362
  %6371 = fmul fast float %6365, %6214
  %6372 = fmul fast float %6364, %6215
  %6373 = fsub fast float %6371, %6372
  %6374 = fmul fast float %6363, %6215
  %6375 = fmul fast float %6365, %6213
  %6376 = fsub fast float %6374, %6375
  %6377 = fmul fast float %6364, %6213
  %6378 = fmul fast float %6363, %6214
  %6379 = fsub fast float %6377, %6378
  %6380 = fmul fast float %6373, 2.000000e+00
  %6381 = fmul fast float %6376, 2.000000e+00
  %6382 = fmul fast float %6379, 2.000000e+00
  %6383 = fmul fast float %6380, %6216
  %6384 = fmul fast float %6381, %6216
  %6385 = fmul fast float %6382, %6216
  %6386 = fmul fast float %6382, %6214
  %6387 = fmul fast float %6381, %6215
  %6388 = fmul fast float %6380, %6215
  %6389 = fmul fast float %6382, %6213
  %6390 = fmul fast float %6381, %6213
  %6391 = fmul fast float %6380, %6214
  %6392 = fadd fast float %6386, %6363
  %6393 = fadd fast float %6392, %6383
  %6394 = fsub fast float %6393, %6387
  %6395 = fsub fast float %6364, %6389
  %6396 = fadd fast float %6395, %6384
  %6397 = fadd fast float %6396, %6388
  %6398 = fadd fast float %6385, %6365
  %6399 = fsub fast float %6398, %6391
  %6400 = fadd fast float %6399, %6390
  br label %6401

; <label>:6401                                    ; preds = %6370, %6362
  %6402 = phi float [ %6394, %6370 ], [ %6363, %6362 ]
  %6403 = phi float [ %6397, %6370 ], [ %6364, %6362 ]
  %6404 = phi float [ %6400, %6370 ], [ %6365, %6362 ]
  br i1 %6242, label %6436, label %6405

; <label>:6405                                    ; preds = %6401
  %6406 = fmul fast float %5719, 0x400187C840000000
  %6407 = fadd fast float %6406, 0xC00EFC2120000000
  %6408 = fmul fast float %6407, %5719
  %6409 = fadd fast float %6408, 0x3FE5D16340000000
  %6410 = fmul fast float %6409, %5719
  %6411 = fadd fast float %6410, 1.000000e+00
  %6412 = call float @dx.op.unary.f32(i32 7, float %6411)  ; Saturate(value)
  %6413 = fsub fast float %6366, %164
  %6414 = fsub fast float %6367, %165
  %6415 = fsub fast float %6368, %166
  %6416 = fsub fast float %6366, %6197
  %6417 = fsub fast float %6367, %6198
  %6418 = fsub fast float %6368, %6199
  %6419 = call float @dx.op.dot3.f32(i32 55, float %6413, float %6414, float %6415, float %6413, float %6414, float %6415)  ; Dot3(ax,ay,az,bx,by,bz)
  %6420 = call float @dx.op.dot3.f32(i32 55, float %6416, float %6417, float %6418, float %6416, float %6417, float %6418)  ; Dot3(ax,ay,az,bx,by,bz)
  %6421 = fadd fast float %6420, 0x3EE4F8B580000000
  %6422 = fdiv fast float %6419, %6421
  %6423 = bitcast float %6422 to i32
  %6424 = ashr i32 %6423, 1
  %6425 = add nsw i32 %6424, 532487669
  %6426 = bitcast i32 %6425 to float
  %6427 = fmul fast float %6426, %6412
  %6428 = call float @dx.op.unary.f32(i32 7, float %6427)  ; Saturate(value)
  %6429 = fmul fast float %6428, 0x4009981AE0000000
  %6430 = fsub fast float 0x40111BBD80000000, %6429
  %6431 = fmul fast float %6430, %6428
  %6432 = fadd fast float %6431, 0xC0009F6020000000
  %6433 = fmul fast float %6432, %6428
  %6434 = fadd fast float %6433, 1.000000e+00
  %6435 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  br label %6439

; <label>:6436                                    ; preds = %6401
  %6437 = icmp ne i32 %6243, -1
  %6438 = zext i1 %6437 to i32
  br label %6439

; <label>:6439                                    ; preds = %6436, %6405
  %6440 = phi float [ %5719, %6436 ], [ %6435, %6405 ]
  %6441 = phi i32 [ %6438, %6436 ], [ 0, %6405 ]
  %6442 = fmul float %6440, 5.000000e+00
  %6443 = fsub float 5.000000e+00, %6442
  %6444 = icmp ne i32 %6441, 0
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 3
  %6447 = fadd fast float %6446, %6443
  %6448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6447)  ; FMax(a,b)
  %6449 = call float @dx.op.unary.f32(i32 6, float %6402)  ; FAbs(value)
  %6450 = call float @dx.op.unary.f32(i32 6, float %6403)  ; FAbs(value)
  %6451 = fadd fast float %6450, %6449
  %6452 = call float @dx.op.unary.f32(i32 6, float %6404)  ; FAbs(value)
  %6453 = fadd fast float %6451, %6452
  %6454 = fcmp fast oeq float %6453, 0.000000e+00
  %6455 = fdiv fast float 1.000000e+00, %6453
  %6456 = select i1 %6454, float 1.000000e+00, float %6455
  %6457 = fmul fast float %6456, %6402
  %6458 = fmul fast float %6456, %6403
  %6459 = call float @dx.op.unary.f32(i32 6, float %6458)  ; FAbs(value)
  %6460 = call float @dx.op.unary.f32(i32 6, float %6457)  ; FAbs(value)
  %6461 = fsub fast float 1.000000e+00, %6459
  %6462 = fsub fast float 1.000000e+00, %6460
  %6463 = fcmp fast oge float %6457, 0.000000e+00
  %6464 = fcmp fast oge float %6458, 0.000000e+00
  %6465 = select i1 %6463, float 1.000000e+00, float -1.000000e+00
  %6466 = select i1 %6464, float 1.000000e+00, float -1.000000e+00
  %6467 = fcmp fast ole float %6404, 0.000000e+00
  %6468 = fmul fast float %6465, %6461
  %6469 = fmul fast float %6466, %6462
  %6470 = select i1 %6467, float %6468, float %6457
  %6471 = select i1 %6467, float %6469, float %6458
  %6472 = fmul fast float %6470, 5.000000e-01
  %6473 = fmul fast float %6471, 5.000000e-01
  %6474 = fadd fast float %6472, 5.000000e-01
  %6475 = fadd fast float %6473, 5.000000e-01
  %6476 = uitofp i32 %6240 to float
  %6477 = call float @dx.op.binary.f32(i32 36, float %6448, float 3.000000e+00)  ; FMin(a,b)
  %6478 = fadd fast float %6477, 2.000000e+00
  %6479 = call float @dx.op.unary.f32(i32 21, float %6478)  ; Exp(value)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6481 = fmul fast float %6480, %6479
  %6482 = fmul fast float %6481, 2.000000e+00
  %6483 = fsub fast float 1.000000e+00, %6482
  %6484 = fmul fast float %6474, %6483
  %6485 = fmul fast float %6475, %6483
  %6486 = fadd fast float %6484, %6481
  %6487 = fadd fast float %6485, %6481
  %6488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6486, float %6487, float %6476, float undef, i32 0, i32 0, i32 undef, float %6448)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6489 = extractvalue %dx.types.ResRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.ResRet.f32 %6488, 1
  %6491 = extractvalue %dx.types.ResRet.f32 %6488, 2
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6494 = fmul fast float %6493, %6210
  %6495 = call float @dx.op.binary.f32(i32 36, float %5751, float %6494)  ; FMin(a,b)
  %6496 = select i1 %6444, float %6495, float %6494
  %6497 = fmul fast float %6489, %6289
  %6498 = fmul fast float %6497, %6496
  %6499 = fmul fast float %6490, %6289
  %6500 = fmul fast float %6499, %6496
  %6501 = fmul fast float %6491, %6289
  %6502 = fmul fast float %6501, %6496
  %6503 = fadd fast float %6498, %6185
  %6504 = fadd fast float %6500, %6186
  %6505 = fadd fast float %6502, %6187
  %6506 = fsub fast float %6188, %6289
  br label %6291

; <label>:6507                                    ; preds = %6291
  br label %6508

; <label>:6508                                    ; preds = %6507, %6154
  %6509 = phi float [ %6155, %6154 ], [ %6292, %6507 ]
  %6510 = phi float [ %6156, %6154 ], [ %6293, %6507 ]
  %6511 = phi float [ %6157, %6154 ], [ %6294, %6507 ]
  %6512 = phi float [ %6158, %6154 ], [ %6295, %6507 ]
  %6513 = add i32 %6159, 1
  %6514 = icmp ugt i32 %6513, %6151
  br i1 %6514, label %6515, label %6154, !llvm.loop !101

; <label>:6515                                    ; preds = %6508
  br label %6516

; <label>:6516                                    ; preds = %6515, %6136
  %6517 = phi float [ 0.000000e+00, %6136 ], [ %6509, %6515 ]
  %6518 = phi float [ 0.000000e+00, %6136 ], [ %6510, %6515 ]
  %6519 = phi float [ 0.000000e+00, %6136 ], [ %6511, %6515 ]
  %6520 = call float @dx.op.dot3.f32(i32 55, float %6517, float %6518, float %6519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6521 = select i1 %226, float 0.000000e+00, float %6517
  %6522 = select i1 %226, float %6520, float %6518
  %6523 = select i1 %226, float 0.000000e+00, float %6519
  %6524 = fcmp fast olt float %6062, 0.000000e+00
  %6525 = call float @dx.op.unary.f32(i32 6, float %6062)  ; FAbs(value)
  %6526 = fmul fast float %6525, %5991
  %6527 = fmul fast float %6525, %5992
  %6528 = fmul fast float %6525, %5993
  %6529 = select i1 %6524, float %5991, float %6526
  %6530 = select i1 %6524, float %5992, float %6527
  %6531 = select i1 %6524, float %5993, float %6528
  %6532 = fsub fast float 1.000000e+00, %6525
  %6533 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  %6534 = fmul fast float %6533, %6521
  %6535 = fmul fast float %6533, %6522
  %6536 = fmul fast float %6533, %6523
  %6537 = fadd fast float %6529, %6534
  %6538 = fadd fast float %6530, %6535
  %6539 = fadd fast float %6531, %6536
  br label %6540

; <label>:6540                                    ; preds = %6516, %6045
  %6541 = phi float [ %5991, %6045 ], [ %6537, %6516 ]
  %6542 = phi float [ %5992, %6045 ], [ %6538, %6516 ]
  %6543 = phi float [ %5993, %6045 ], [ %6539, %6516 ]
  %6544 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5711, float %5712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6545 = fcmp fast ogt float %6544, 0x3E7FF19E20000000
  %6546 = fdiv fast float 1.000000e+00, %6544
  %6547 = select i1 %6545, float %6546, float 0.000000e+00
  %6548 = fmul fast float %6547, %5710
  %6549 = fmul fast float %6547, %5711
  %6550 = fmul fast float %6547, %5712
  %6551 = fadd fast float %6548, -1.000000e+00
  %6552 = fadd fast float %6549, -1.000000e+00
  %6553 = fadd fast float %6550, -1.000000e+00
  %6554 = fmul fast float %6551, 5.000000e-01
  %6555 = fmul fast float %6552, 5.000000e-01
  %6556 = fmul fast float %6553, 5.000000e-01
  %6557 = fadd fast float %6554, 1.000000e+00
  %6558 = fadd fast float %6555, 1.000000e+00
  %6559 = fadd fast float %6556, 1.000000e+00
  %6560 = call float @dx.op.binary.f32(i32 35, float %5724, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6561 = fdiv fast float %4427, %6560
  %6562 = fcmp fast olt float %5128, 1.270000e+02
  %6563 = fcmp fast olt float %5129, 1.270000e+02
  %6564 = fcmp fast olt float %5130, 1.270000e+02
  %6565 = fmul fast float %5128, 0xBFF7154760000000
  %6566 = fmul fast float %6565, %6561
  %6567 = fmul fast float %5129, 0xBFF7154760000000
  %6568 = fmul fast float %6567, %6561
  %6569 = fmul fast float %5130, 0xBFF7154760000000
  %6570 = fmul fast float %6569, %6561
  %6571 = call float @dx.op.unary.f32(i32 21, float %6566)  ; Exp(value)
  %6572 = call float @dx.op.unary.f32(i32 21, float %6568)  ; Exp(value)
  %6573 = call float @dx.op.unary.f32(i32 21, float %6570)  ; Exp(value)
  %6574 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6575 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6576 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6577 = select i1 %6562, float %6574, float 0.000000e+00
  %6578 = select i1 %6563, float %6575, float 0.000000e+00
  %6579 = select i1 %6564, float %6576, float 0.000000e+00
  %6580 = fmul fast float %6577, %6051
  %6581 = fmul fast float %6578, %6051
  %6582 = fmul fast float %6579, %6051
  %6583 = fadd fast float %6580, -1.000000e+00
  %6584 = fadd fast float %6581, -1.000000e+00
  %6585 = fadd fast float %6582, -1.000000e+00
  %6586 = fmul fast float %6583, %5076
  %6587 = fmul fast float %6584, %5076
  %6588 = fmul fast float %6585, %5076
  %6589 = fmul fast float %6541, %6046
  %6590 = fmul fast float %6542, %6047
  %6591 = fmul fast float %6543, %6048
  %6592 = fsub fast float 1.000000e+00, %5724
  %6593 = bitcast float %6592 to i32
  %6594 = sitofp i32 %6593 to float
  %6595 = fmul fast float %6594, 5.000000e+00
  %6596 = fadd fast float %6595, 0xC1EFBF8940000000
  %6597 = fptosi float %6596 to i32
  %6598 = bitcast i32 %6597 to float
  %6599 = fmul fast float %6598, %5080
  %6600 = fmul fast float %5983, %6599
  %6601 = fmul fast float %6600, %6051
  %6602 = fmul fast float %6601, %6557
  %6603 = fmul fast float %5984, %6599
  %6604 = fmul fast float %6603, %6051
  %6605 = fmul fast float %6604, %6558
  %6606 = fmul fast float %5985, %6599
  %6607 = fmul fast float %6606, %6051
  %6608 = fmul fast float %6607, %6559
  %6609 = fadd fast float %6589, %5063
  %6610 = fadd fast float %6609, %6602
  %6611 = fmul fast float %6610, %5076
  %6612 = fadd fast float %6590, %5064
  %6613 = fadd fast float %6612, %6605
  %6614 = fmul fast float %6613, %5076
  %6615 = fadd fast float %6591, %5065
  %6616 = fadd fast float %6615, %6608
  %6617 = fmul fast float %6616, %5076
  %6618 = fmul fast float %5714, 0x4012D0A400000000
  %6619 = fadd fast float %6588, 1.000000e+00
  %6620 = fadd fast float %6587, 1.000000e+00
  %6621 = fadd fast float %6586, 1.000000e+00
  %6622 = fmul fast float %6051, %5985
  %6623 = fmul fast float %6051, %5984
  %6624 = fmul fast float %6051, %5983
  %6625 = fmul fast float %5739, %5076
  %6626 = fsub fast float 1.000000e+00, %6625
  %6627 = call float @dx.op.unary.f32(i32 7, float %6626)  ; Saturate(value)
  %6628 = fsub fast float 1.000000e+00, %6627
  %6629 = fadd fast float %6618, 0x3FDB6377A0000000
  %6630 = fmul fast float %6628, %6629
  %6631 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5147, float %5148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6632 = fadd fast float %6630, %6631
  %6633 = call float @dx.op.unary.f32(i32 7, float %6632)  ; Saturate(value)
  %6634 = call float @dx.op.binary.f32(i32 35, float %6633, float 0x3F847AE140000000)  ; FMax(a,b)
  %6635 = fmul fast float %6634, %6634
  %6636 = fmul fast float %6635, %6635
  %6637 = fmul fast float %6636, 0xC00A935000000000
  %6638 = call float @dx.op.unary.f32(i32 21, float %6637)  ; Exp(value)
  %6639 = fsub fast float 1.000000e+00, %6638
  %6640 = fmul fast float %6621, %5987
  %6641 = fmul fast float %6640, %6639
  %6642 = fmul fast float %6620, %5988
  %6643 = fmul fast float %6642, %6639
  %6644 = fmul fast float %6619, %5989
  %6645 = fmul fast float %6644, %6639
  %6646 = fadd fast float %6641, %6624
  %6647 = fmul fast float %6646, %5076
  %6648 = fadd fast float %6643, %6623
  %6649 = fmul fast float %6648, %5076
  %6650 = fadd fast float %6645, %6622
  %6651 = fmul fast float %6650, %5076
  %6652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.f32 %6652, 3
  %6654 = fcmp fast oeq float %6653, 0.000000e+00
  br i1 %6654, label %8332, label %6655

; <label>:6655                                    ; preds = %6540
  %6656 = extractvalue %dx.types.CBufRet.f32 %6652, 0
  %6657 = extractvalue %dx.types.CBufRet.f32 %6652, 1
  %6658 = extractvalue %dx.types.CBufRet.f32 %6652, 2
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.CBufRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.CBufRet.f32 %6659, 2
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.CBufRet.f32 %6663, 1
  %6666 = call float @dx.op.dot3.f32(i32 55, float %6660, float %6661, float %6662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6667 = select i1 %226, float %6664, float %6660
  %6668 = select i1 %226, float %6666, float %6661
  %6669 = select i1 %226, float %6665, float %6662
  %6670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6670, 2
  %6672 = fmul fast float %6671, %116
  %6673 = fmul fast float %6671, %117
  %6674 = fmul fast float %6671, %118
  %6675 = fadd fast float %6672, %164
  %6676 = fadd fast float %6673, %165
  %6677 = fadd fast float %6674, %166
  %6678 = fcmp fast olt float %6653, 0.000000e+00
  br i1 %6678, label %7774, label %6679

; <label>:6679                                    ; preds = %6655
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.CBufRet.f32 %6680, 1
  %6683 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6684 = extractvalue %dx.types.CBufRet.f32 %6680, 3
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6688 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6689 = extractvalue %dx.types.CBufRet.f32 %6685, 3
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 0
  %6692 = extractvalue %dx.types.CBufRet.f32 %6690, 1
  %6693 = extractvalue %dx.types.CBufRet.f32 %6690, 2
  %6694 = extractvalue %dx.types.CBufRet.f32 %6690, 3
  %6695 = fmul fast float %6681, %6675
  %6696 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6682, float %6695)  ; FMad(a,b,c)
  %6697 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6683, float %6696)  ; FMad(a,b,c)
  %6698 = fadd fast float %6697, %6684
  %6699 = fmul fast float %6686, %6675
  %6700 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6687, float %6699)  ; FMad(a,b,c)
  %6701 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6688, float %6700)  ; FMad(a,b,c)
  %6702 = fadd fast float %6701, %6689
  %6703 = fmul fast float %6691, %6675
  %6704 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6692, float %6703)  ; FMad(a,b,c)
  %6705 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6693, float %6704)  ; FMad(a,b,c)
  %6706 = fadd fast float %6705, %6694
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  %6709 = extractvalue %dx.types.CBufRet.f32 %6707, 1
  %6710 = extractvalue %dx.types.CBufRet.f32 %6707, 3
  %6711 = fmul fast float %6710, %6698
  %6712 = fmul fast float %6710, %6702
  %6713 = fadd fast float %6711, %6708
  %6714 = fadd fast float %6712, %6709
  %6715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6716 = extractvalue %dx.types.CBufRet.f32 %6715, 0
  %6717 = extractvalue %dx.types.CBufRet.f32 %6715, 1
  %6718 = extractvalue %dx.types.CBufRet.f32 %6715, 3
  %6719 = fmul fast float %6718, %6698
  %6720 = fmul fast float %6718, %6702
  %6721 = fadd fast float %6719, %6716
  %6722 = fadd fast float %6720, %6717
  %6723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6724 = extractvalue %dx.types.CBufRet.f32 %6723, 1
  %6725 = fsub fast float %6724, %6706
  %6726 = extractvalue %dx.types.CBufRet.f32 %6723, 2
  %6727 = fmul fast float %6725, %6726
  %6728 = fsub fast float 1.000000e+00, %6727
  %6729 = call float @dx.op.unary.f32(i32 7, float %6728)  ; Saturate(value)
  %6730 = extractvalue %dx.types.CBufRet.f32 %6715, 2
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 2
  %6733 = fadd fast float %6732, %6730
  %6734 = fcmp fast ogt float %6733, 0.000000e+00
  br i1 %6734, label %6735, label %6759

; <label>:6735                                    ; preds = %6679
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %6738 = extractvalue %dx.types.CBufRet.f32 %6736, 1
  %6739 = fsub fast float %6721, %6737
  %6740 = fsub fast float %6722, %6738
  %6741 = fcmp fast olt float %6739, 0.000000e+00
  %6742 = fcmp fast olt float %6740, 0.000000e+00
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.CBufRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.CBufRet.f32 %6743, 2
  %6747 = extractvalue %dx.types.CBufRet.f32 %6743, 3
  %6748 = select i1 %6741, float %6744, float %6746
  %6749 = select i1 %6742, float %6745, float %6747
  %6750 = fmul fast float %6748, %6739
  %6751 = fmul fast float %6749, %6740
  %6752 = call float @dx.op.unary.f32(i32 6, float %6750)  ; FAbs(value)
  %6753 = call float @dx.op.unary.f32(i32 6, float %6751)  ; FAbs(value)
  %6754 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  %6755 = call float @dx.op.binary.f32(i32 35, float %6752, float %6753)  ; FMax(a,b)
  %6756 = fsub fast float %6754, %6755
  %6757 = call float @dx.op.unary.f32(i32 7, float %6756)  ; Saturate(value)
  %6758 = fmul fast float %6757, %6729
  br label %6759

; <label>:6759                                    ; preds = %6735, %6679
  %6760 = phi float [ %6758, %6735 ], [ 0.000000e+00, %6679 ]
  %6761 = extractvalue %dx.types.CBufRet.f32 %6707, 2
  %6762 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6763 = fadd fast float %6762, %6761
  %6764 = fcmp fast ogt float %6763, 0.000000e+00
  %6765 = extractvalue %dx.types.CBufRet.f32 %6670, 0
  br i1 %6764, label %6766, label %6789

; <label>:6766                                    ; preds = %6759
  %6767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.f32 %6767, 0
  %6769 = extractvalue %dx.types.CBufRet.f32 %6767, 1
  %6770 = fsub fast float %6713, %6768
  %6771 = fsub fast float %6714, %6769
  %6772 = fcmp fast olt float %6770, 0.000000e+00
  %6773 = fcmp fast olt float %6771, 0.000000e+00
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.CBufRet.f32 %6774, 1
  %6777 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6778 = extractvalue %dx.types.CBufRet.f32 %6774, 3
  %6779 = select i1 %6772, float %6775, float %6777
  %6780 = select i1 %6773, float %6776, float %6778
  %6781 = fmul fast float %6779, %6770
  %6782 = fmul fast float %6780, %6771
  %6783 = call float @dx.op.unary.f32(i32 6, float %6781)  ; FAbs(value)
  %6784 = call float @dx.op.unary.f32(i32 6, float %6782)  ; FAbs(value)
  %6785 = call float @dx.op.binary.f32(i32 35, float %6783, float %6784)  ; FMax(a,b)
  %6786 = fsub fast float %6765, %6785
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6788 = fmul fast float %6787, %6729
  br label %6789

; <label>:6789                                    ; preds = %6766, %6759
  %6790 = phi float [ %6788, %6766 ], [ 0.000000e+00, %6759 ]
  %6791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6792 = extractvalue %dx.types.CBufRet.f32 %6791, 1
  %6793 = call float @dx.op.unary.f32(i32 7, float %6792)  ; Saturate(value)
  %6794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6794, 0
  %6796 = extractvalue %dx.types.CBufRet.f32 %6794, 1
  %6797 = fsub fast float %6698, %6795
  %6798 = fsub fast float %6702, %6796
  %6799 = fcmp fast olt float %6797, 0.000000e+00
  %6800 = fcmp fast olt float %6798, 0.000000e+00
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.CBufRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.CBufRet.f32 %6801, 2
  %6805 = extractvalue %dx.types.CBufRet.f32 %6801, 3
  %6806 = select i1 %6799, float %6802, float %6804
  %6807 = select i1 %6800, float %6803, float %6805
  %6808 = fmul fast float %6806, %6797
  %6809 = fmul fast float %6807, %6798
  %6810 = call float @dx.op.unary.f32(i32 6, float %6808)  ; FAbs(value)
  %6811 = call float @dx.op.unary.f32(i32 6, float %6809)  ; FAbs(value)
  %6812 = call float @dx.op.binary.f32(i32 35, float %6810, float %6811)  ; FMax(a,b)
  %6813 = fsub fast float %6765, %6812
  %6814 = call float @dx.op.unary.f32(i32 7, float %6813)  ; Saturate(value)
  %6815 = call float @dx.op.binary.f32(i32 36, float %6814, float %6793)  ; FMin(a,b)
  %6816 = fmul fast float %6815, %6729
  %6817 = fsub fast float %6790, %6816
  %6818 = fsub fast float %6760, %6790
  %6819 = fsub fast float %6818, %6816
  %6820 = call float @dx.op.binary.f32(i32 35, float %6790, float %6760)  ; FMax(a,b)
  %6821 = call float @dx.op.binary.f32(i32 35, float %6816, float %6820)  ; FMax(a,b)
  %6822 = fcmp fast olt float %6821, 1.000000e+00
  br i1 %6822, label %6823, label %7221, !dx.controlflow.hints !103

; <label>:6823                                    ; preds = %6789
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = fcmp fast une float %6825, 0.000000e+00
  br i1 %6826, label %6827, label %7221, !dx.controlflow.hints !104

; <label>:6827                                    ; preds = %6823
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %6831 = extractvalue %dx.types.CBufRet.f32 %6828, 2
  %6832 = extractvalue %dx.types.CBufRet.f32 %6828, 3
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = extractvalue %dx.types.CBufRet.f32 %6833, 1
  %6836 = extractvalue %dx.types.CBufRet.f32 %6833, 2
  %6837 = extractvalue %dx.types.CBufRet.f32 %6833, 3
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.CBufRet.f32 %6838, 2
  %6842 = extractvalue %dx.types.CBufRet.f32 %6838, 3
  %6843 = fmul fast float %6829, %6675
  %6844 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6830, float %6843)  ; FMad(a,b,c)
  %6845 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6831, float %6844)  ; FMad(a,b,c)
  %6846 = fadd fast float %6845, %6832
  %6847 = fmul fast float %6834, %6675
  %6848 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6835, float %6847)  ; FMad(a,b,c)
  %6849 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6836, float %6848)  ; FMad(a,b,c)
  %6850 = fadd fast float %6849, %6837
  %6851 = fmul fast float %6839, %6675
  %6852 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %6840, float %6851)  ; FMad(a,b,c)
  %6853 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %6841, float %6852)  ; FMad(a,b,c)
  %6854 = fadd fast float %6853, %6842
  %6855 = fcmp fast oge float %6846, 1.000000e+00
  %6856 = fcmp fast oge float %6850, 1.000000e+00
  %6857 = or i1 %6855, %6856
  %6858 = fcmp fast olt float %6846, 0.000000e+00
  %6859 = fcmp fast olt float %6850, 0.000000e+00
  %6860 = or i1 %6858, %6859
  %6861 = or i1 %6857, %6860
  br i1 %6861, label %7221, label %6862, !dx.controlflow.hints !105

; <label>:6862                                    ; preds = %6827
  %6863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6864 = extractvalue %dx.types.CBufRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.CBufRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.CBufRet.f32 %6863, 2
  %6867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6868 = extractvalue %dx.types.CBufRet.i32 %6867, 2
  %6869 = uitofp i32 %6868 to float
  %6870 = extractvalue %dx.types.CBufRet.i32 %6867, 3
  %6871 = uitofp i32 %6870 to float
  %6872 = extractvalue %dx.types.CBufRet.f32 %6863, 3
  %6873 = fmul fast float %6872, 2.000000e+00
  %6874 = fsub fast float %6846, %6864
  %6875 = fsub fast float %6850, %6865
  %6876 = fmul fast float %6873, %6874
  %6877 = fmul fast float %6873, %6875
  %6878 = fdiv fast float 1.000000e+00, %6658
  %6879 = fmul fast float %6877, %6878
  %6880 = call float @dx.op.unary.f32(i32 6, float %6879)  ; FAbs(value)
  %6881 = fmul fast float %6866, %6677
  %6882 = fmul fast float %6881, %6873
  %6883 = call float @dx.op.unary.f32(i32 6, float %6882)  ; FAbs(value)
  %6884 = call float @dx.op.unary.f32(i32 6, float %6876)  ; FAbs(value)
  %6885 = call float @dx.op.binary.f32(i32 35, float %6883, float %6880)  ; FMax(a,b)
  %6886 = call float @dx.op.binary.f32(i32 35, float %6884, float %6885)  ; FMax(a,b)
  %6887 = fmul fast float %6886, 2.000000e+00
  %6888 = call float @dx.op.unary.f32(i32 23, float %6887)  ; Log(value)
  %6889 = call float @dx.op.binary.f32(i32 35, float %6888, float %6869)  ; FMax(a,b)
  %6890 = call float @dx.op.unary.f32(i32 22, float %6889)  ; Frc(value)
  %6891 = fadd fast float %6890, 0xBFEA666660000000
  %6892 = fmul fast float %6891, 8.000000e+00
  %6893 = call float @dx.op.unary.f32(i32 7, float %6892)  ; Saturate(value)
  %6894 = call float @dx.op.unary.f32(i32 27, float %6889)  ; Round_ni(value)
  %6895 = fadd fast float %6894, %6893
  %6896 = call float @dx.op.binary.f32(i32 36, float %6895, float %6871)  ; FMin(a,b)
  %6897 = call float @dx.op.unary.f32(i32 27, float %6896)  ; Round_ni(value)
  %6898 = fsub fast float -0.000000e+00, %6897
  %6899 = call float @dx.op.unary.f32(i32 21, float %6898)  ; Exp(value)
  %6900 = fmul fast float %6899, %6873
  %6901 = fmul fast float %6900, %6846
  %6902 = fmul fast float %6900, %6850
  %6903 = fmul fast float %6901, 2.500000e-01
  %6904 = fmul fast float %6902, 2.500000e-01
  %6905 = fadd fast float %6903, 5.000000e-01
  %6906 = fadd fast float %6904, 5.000000e-01
  %6907 = fsub fast float %6871, %6869
  %6908 = fptoui float %6907 to i32
  %6909 = add i32 %6908, 320
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6909)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.CBufRet.f32 %6910, 1
  %6913 = fcmp fast une float %6896, %6871
  %6914 = fsub fast float %6846, %6911
  %6915 = fsub fast float %6850, %6912
  %6916 = call float @dx.op.unary.f32(i32 6, float %6914)  ; FAbs(value)
  %6917 = call float @dx.op.unary.f32(i32 6, float %6915)  ; FAbs(value)
  %6918 = fmul fast float %6916, %6900
  %6919 = fmul fast float %6917, %6900
  %6920 = fcmp fast olt float %6918, 1.000000e+00
  %6921 = fcmp fast olt float %6919, 1.000000e+00
  %6922 = and i1 %6920, %6921
  %6923 = or i1 %6913, %6922
  br i1 %6923, label %6924, label %7221, !dx.controlflow.hints !106

; <label>:6924                                    ; preds = %6862
  %6925 = fmul fast float %6902, 5.000000e-01
  %6926 = fmul fast float %6901, 5.000000e-01
  %6927 = fadd fast float %6925, 5.000000e-01
  %6928 = fadd fast float %6926, 5.000000e-01
  %6929 = sitofp i32 %6868 to float
  %6930 = fsub fast float %6896, %6929
  %6931 = call float @dx.op.unary.f32(i32 27, float %6930)  ; Round_ni(value)
  %6932 = call float @dx.op.unary.f32(i32 22, float %6896)  ; Frc(value)
  %6933 = call float @dx.op.unary.f32(i32 22, float %6928)  ; Frc(value)
  %6934 = call float @dx.op.unary.f32(i32 22, float %6927)  ; Frc(value)
  %6935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6933, float %6934, float %6931, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6936 = extractvalue %dx.types.ResRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.ResRet.f32 %6935, 1
  %6938 = extractvalue %dx.types.ResRet.f32 %6935, 2
  %6939 = extractvalue %dx.types.ResRet.f32 %6935, 3
  %6940 = fcmp fast ogt float %6932, 0.000000e+00
  br i1 %6940, label %6941, label %6962, !dx.controlflow.hints !107

; <label>:6941                                    ; preds = %6924
  %6942 = fadd fast float %6931, 1.000000e+00
  %6943 = call float @dx.op.unary.f32(i32 22, float %6905)  ; Frc(value)
  %6944 = call float @dx.op.unary.f32(i32 22, float %6906)  ; Frc(value)
  %6945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6943, float %6944, float %6942, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = extractvalue %dx.types.ResRet.f32 %6945, 1
  %6948 = extractvalue %dx.types.ResRet.f32 %6945, 2
  %6949 = extractvalue %dx.types.ResRet.f32 %6945, 3
  %6950 = fsub fast float %6946, %6936
  %6951 = fsub fast float %6947, %6937
  %6952 = fsub fast float %6948, %6938
  %6953 = fsub fast float %6949, %6939
  %6954 = fmul fast float %6950, %6932
  %6955 = fmul fast float %6951, %6932
  %6956 = fmul fast float %6952, %6932
  %6957 = fmul fast float %6953, %6932
  %6958 = fadd fast float %6954, %6936
  %6959 = fadd fast float %6955, %6937
  %6960 = fadd fast float %6956, %6938
  %6961 = fadd fast float %6957, %6939
  br label %6962

; <label>:6962                                    ; preds = %6941, %6924
  %6963 = phi float [ %6958, %6941 ], [ %6936, %6924 ]
  %6964 = phi float [ %6959, %6941 ], [ %6937, %6924 ]
  %6965 = phi float [ %6960, %6941 ], [ %6938, %6924 ]
  %6966 = phi float [ %6961, %6941 ], [ %6939, %6924 ]
  %6967 = fadd fast float %6963, -5.000000e-01
  %6968 = fadd fast float %6965, -5.000000e-01
  %6969 = fmul fast float %6967, 0xBFD5555560000000
  %6970 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6968, float %6969)  ; FMad(a,b,c)
  %6971 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6964, float 0.000000e+00)  ; FMad(a,b,c)
  %6972 = fadd fast float %6971, %6966
  %6973 = fmul fast float %6967, -7.500000e-01
  %6974 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6968, float %6973)  ; FMad(a,b,c)
  %6975 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6964, float 0.000000e+00)  ; FMad(a,b,c)
  %6976 = fadd fast float %6975, %6966
  %6977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6978 = extractvalue %dx.types.CBufRet.f32 %6977, 0
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %6983 = extractvalue %dx.types.CBufRet.f32 %6979, 3
  %6984 = fsub fast float %6980, %6970
  %6985 = fsub fast float %6981, %6972
  %6986 = fsub fast float %6982, %6974
  %6987 = fsub fast float %6983, %6976
  %6988 = fmul fast float %6984, %6978
  %6989 = fmul fast float %6985, %6978
  %6990 = fmul fast float %6986, %6978
  %6991 = fmul fast float %6987, %6978
  %6992 = fadd fast float %6988, %6970
  %6993 = fadd fast float %6989, %6972
  %6994 = fadd fast float %6990, %6974
  %6995 = fadd fast float %6991, %6976
  %6996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6997 = extractvalue %dx.types.ResRet.i32 %6996, 0
  %6998 = and i32 %6997, 536870911
  %6999 = uitofp i32 %6998 to float
  %7000 = fmul fast float %6999, %6846
  %7001 = fmul fast float %6999, %6850
  %7002 = fptoui float %7000 to i32
  %7003 = fptoui float %7001 to i32
  %7004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7005 = extractvalue %dx.types.ResRet.i32 %7004, 0
  %7006 = and i32 %7005, 31
  %7007 = lshr i32 %7002, %7006
  %7008 = lshr i32 %7003, %7006
  %7009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7010 = extractvalue %dx.types.ResRet.i32 %7009, 0
  %7011 = and i32 %7010, 31
  %7012 = shl i32 1, %7011
  %7013 = call i32 @dx.op.binary.i32(i32 40, i32 %7012, i32 4)  ; UMin(a,b)
  %7014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7015 = extractvalue %dx.types.ResRet.i32 %7014, 0
  %7016 = extractvalue %dx.types.ResRet.i32 %7014, 1
  %7017 = icmp eq i32 %7013, 0
  br i1 %7017, label %7059, label %7018

; <label>:7018                                    ; preds = %6962
  br label %7019

; <label>:7019                                    ; preds = %7047, %7018
  %7020 = phi i32 [ %7050, %7047 ], [ 0, %7018 ]
  %7021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7022 = extractvalue %dx.types.ResRet.i32 %7021, 0
  %7023 = lshr i32 %7022, 16
  %7024 = and i32 %7023, 31
  %7025 = shl i32 %7008, %7024
  %7026 = add i32 %7025, %7007
  %7027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7028 = extractvalue %dx.types.ResRet.i32 %7027, 0
  %7029 = and i32 %7028, 31
  %7030 = shl i32 %7026, %7029
  %7031 = add i32 %7030, %7020
  %7032 = shl i32 %7031, 2
  %7033 = add i32 %7032, 32
  %7034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7033, i32 undef)  ; BufferLoad(srv,index,wot)
  %7035 = extractvalue %dx.types.ResRet.i32 %7034, 0
  %7036 = icmp slt i32 %7035, 0
  %7037 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7020
  %7038 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7020
  %7039 = bitcast float* %7037 to i32*
  %7040 = bitcast float* %7038 to i32*
  br i1 %7036, label %7041, label %7047

; <label>:7041                                    ; preds = %7019
  %7042 = and i32 %7035, 1073741823
  %7043 = add nuw nsw i32 %7042, 20
  %7044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7043, i32 undef)  ; BufferLoad(srv,index,wot)
  %7045 = extractvalue %dx.types.ResRet.i32 %7044, 0
  %7046 = extractvalue %dx.types.ResRet.i32 %7044, 1
  br label %7047

; <label>:7047                                    ; preds = %7041, %7019
  %7048 = phi i32 [ %7045, %7041 ], [ %7015, %7019 ]
  %7049 = phi i32 [ %7046, %7041 ], [ %7016, %7019 ]
  store i32 %7048, i32* %7039, align 4
  store i32 %7049, i32* %7040, align 4
  %7050 = add nuw i32 %7020, 1
  %7051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.i32 %7051, 2
  %7053 = icmp eq i32 %7052, 0
  %7054 = icmp ugt i32 %7035, -1073741825
  %7055 = and i1 %7054, %7053
  %7056 = icmp ult i32 %7050, %7013
  %7057 = and i1 %7055, %7056
  br i1 %7057, label %7019, label %7058

; <label>:7058                                    ; preds = %7047
  br label %7059

; <label>:7059                                    ; preds = %7058, %6962
  %7060 = phi i32 [ 0, %6962 ], [ %7050, %7058 ]
  %7061 = extractvalue %dx.types.CBufRet.f32 %6824, 2
  %7062 = fptoui float %7061 to i32
  %7063 = icmp eq i32 %7062, 0
  br i1 %7063, label %7115, label %7064

; <label>:7064                                    ; preds = %7059
  br label %7065

; <label>:7065                                    ; preds = %7110, %7064
  %7066 = phi i32 [ %7111, %7110 ], [ %7060, %7064 ]
  %7067 = phi i32 [ %7112, %7110 ], [ 0, %7064 ]
  %7068 = lshr i32 %7067, 2
  %7069 = and i32 %7067, 3
  %7070 = add nuw nsw i32 %7068, 83
  %7071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7070)  ; CBufferLoadLegacy(handle,regIndex)
  %7072 = extractvalue %dx.types.CBufRet.i32 %7071, 0
  %7073 = extractvalue %dx.types.CBufRet.i32 %7071, 1
  %7074 = extractvalue %dx.types.CBufRet.i32 %7071, 2
  %7075 = extractvalue %dx.types.CBufRet.i32 %7071, 3
  %7076 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7072, i32* %7076, align 4
  %7077 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7073, i32* %7077, align 4
  %7078 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7074, i32* %7078, align 4
  %7079 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7075, i32* %7079, align 4
  %7080 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7069
  %7081 = load i32, i32* %7080, align 4, !tbaa !108, !noalias !112
  %7082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7083 = extractvalue %dx.types.ResRet.i32 %7082, 0
  %7084 = lshr i32 %7083, 16
  %7085 = and i32 %7084, 31
  %7086 = shl i32 %7008, %7085
  %7087 = add i32 %7086, %7007
  %7088 = shl i32 %7087, 2
  %7089 = add i32 %7088, %7081
  %7090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7089, i32 undef)  ; BufferLoad(srv,index,wot)
  %7091 = extractvalue %dx.types.ResRet.i32 %7090, 0
  %7092 = icmp eq i32 %7091, 0
  br i1 %7092, label %7110, label %7093

; <label>:7093                                    ; preds = %7065
  %7094 = icmp slt i32 %7091, 0
  %7095 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7066
  %7096 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7066
  %7097 = bitcast float* %7095 to i32*
  %7098 = bitcast float* %7096 to i32*
  br i1 %7094, label %7099, label %7106

; <label>:7099                                    ; preds = %7093
  %7100 = and i32 %7091, 1073741823
  %7101 = add i32 %7081, 20
  %7102 = add i32 %7101, %7100
  %7103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7102, i32 undef)  ; BufferLoad(srv,index,wot)
  %7104 = extractvalue %dx.types.ResRet.i32 %7103, 0
  %7105 = extractvalue %dx.types.ResRet.i32 %7103, 1
  br label %7106

; <label>:7106                                    ; preds = %7099, %7093
  %7107 = phi i32 [ %7104, %7099 ], [ %7015, %7093 ]
  %7108 = phi i32 [ %7105, %7099 ], [ %7016, %7093 ]
  store i32 %7107, i32* %7097, align 4
  store i32 %7108, i32* %7098, align 4
  %7109 = add i32 %7066, 1
  br label %7110

; <label>:7110                                    ; preds = %7106, %7065
  %7111 = phi i32 [ %7066, %7065 ], [ %7109, %7106 ]
  %7112 = add nuw i32 %7067, 1
  %7113 = icmp eq i32 %7112, %7062
  br i1 %7113, label %7114, label %7065

; <label>:7114                                    ; preds = %7110
  br label %7115

; <label>:7115                                    ; preds = %7114, %7059
  %7116 = phi i32 [ %7060, %7059 ], [ %7111, %7114 ]
  %7117 = icmp eq i32 %7116, 1
  %7118 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %7119 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %7117, label %7120, label %7123

; <label>:7120                                    ; preds = %7115
  %7121 = load float, float* %7118, align 4
  %7122 = load float, float* %7119, align 4
  br label %7150

; <label>:7123                                    ; preds = %7115
  %7124 = load float, float* %7118, align 4
  %7125 = load float, float* %7119, align 4
  %7126 = fdiv fast float 1.000000e+00, %7125
  %7127 = fsub fast float %7124, %7126
  %7128 = icmp ugt i32 %7116, 1
  br i1 %7128, label %7129, label %7145

; <label>:7129                                    ; preds = %7123
  br label %7130

; <label>:7130                                    ; preds = %7130, %7129
  %7131 = phi float [ %7140, %7130 ], [ %7127, %7129 ]
  %7132 = phi float [ %7141, %7130 ], [ %7124, %7129 ]
  %7133 = phi i32 [ %7142, %7130 ], [ 1, %7129 ]
  %7134 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7133
  %7135 = load float, float* %7134, align 4
  %7136 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7133
  %7137 = load float, float* %7136, align 4
  %7138 = fdiv fast float 1.000000e+00, %7137
  %7139 = fsub fast float %7135, %7138
  %7140 = call float @dx.op.binary.f32(i32 36, float %7131, float %7139)  ; FMin(a,b)
  %7141 = call float @dx.op.binary.f32(i32 35, float %7132, float %7135)  ; FMax(a,b)
  %7142 = add nuw i32 %7133, 1
  %7143 = icmp eq i32 %7142, %7116
  br i1 %7143, label %7144, label %7130

; <label>:7144                                    ; preds = %7130
  br label %7145

; <label>:7145                                    ; preds = %7144, %7123
  %7146 = phi float [ %7127, %7123 ], [ %7140, %7144 ]
  %7147 = phi float [ %7124, %7123 ], [ %7141, %7144 ]
  %7148 = fsub fast float %7147, %7146
  %7149 = fdiv fast float 1.000000e+00, %7148
  br label %7150

; <label>:7150                                    ; preds = %7145, %7120
  %7151 = phi float [ %7121, %7120 ], [ %7147, %7145 ]
  %7152 = phi float [ %7122, %7120 ], [ %7149, %7145 ]
  %7153 = fadd fast float %6854, %7151
  %7154 = fmul fast float %7153, %7152
  %7155 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  %7156 = fmul fast float %7155, 2.000000e+00
  %7157 = fsub fast float 1.000000e+00, %7156
  %7158 = fmul fast float %6992, %6992
  %7159 = fsub fast float %6993, %7158
  %7160 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7159)  ; FMax(a,b)
  %7161 = fdiv fast float 1.000000e+00, %7160
  %7162 = fmul fast float %6993, %6992
  %7163 = fsub fast float %6994, %7162
  %7164 = fsub fast float %7157, %6992
  %7165 = fmul fast float %7157, %7157
  %7166 = fsub fast float %7165, %6993
  %7167 = fmul fast float %7161, %7163
  %7168 = fmul fast float %7167, %7164
  %7169 = fsub fast float %7166, %7168
  %7170 = fmul fast float %6993, %6993
  %7171 = fsub fast float %6995, %7170
  %7172 = fmul fast float %7163, %7163
  %7173 = fmul fast float %7172, %7161
  %7174 = fsub fast float %7171, %7173
  %7175 = fdiv fast float %7169, %7174
  %7176 = fmul fast float %7175, %7163
  %7177 = fsub fast float %7164, %7176
  %7178 = fmul fast float %7177, %7161
  %7179 = fmul fast float %7178, %6992
  %7180 = fsub fast float 1.000000e+00, %7179
  %7181 = fmul fast float %7175, %6993
  %7182 = fsub fast float %7180, %7181
  %7183 = fmul fast float %7178, %7178
  %7184 = fmul fast float %7175, 4.000000e+00
  %7185 = fmul fast float %7184, %7182
  %7186 = fsub fast float %7183, %7185
  %7187 = call float @dx.op.unary.f32(i32 24, float %7186)  ; Sqrt(value)
  %7188 = fcmp fast oge float %7178, 0.000000e+00
  %7189 = fsub fast float -0.000000e+00, %7187
  %7190 = select i1 %7188, float %7189, float %7187
  %7191 = fsub fast float %7190, %7178
  %7192 = fdiv fast float %7191, %7175
  %7193 = fdiv fast float %7182, %7191
  %7194 = fmul fast float %7192, 5.000000e-01
  %7195 = fmul fast float %7193, 2.000000e+00
  %7196 = select i1 %7188, float %7194, float %7195
  %7197 = select i1 %7188, float %7195, float %7194
  %7198 = call float @dx.op.binary.f32(i32 35, float %7196, float %7197)  ; FMax(a,b)
  %7199 = call float @dx.op.binary.f32(i32 36, float %7196, float %7197)  ; FMin(a,b)
  %7200 = fcmp fast ogt float %7157, %7198
  %7201 = fsub fast float %7157, %7199
  %7202 = fsub fast float %7157, %7198
  %7203 = fsub fast float %7198, %7199
  %7204 = select i1 %7200, float %7202, float %7203
  %7205 = fmul float %7201, %7204
  %7206 = select i1 %7200, float %7199, float %7157
  %7207 = fcmp fast ogt float %7157, %7199
  %7208 = fmul fast float %7206, %7198
  %7209 = fadd fast float %7206, %7198
  %7210 = fmul fast float %7209, %6992
  %7211 = fadd fast float %7208, %6993
  %7212 = fsub fast float %7211, %7210
  %7213 = fdiv fast float %7212, %7205
  %7214 = select i1 %7207, float %7213, float 0.000000e+00
  %7215 = fsub fast float 1.000000e+00, %7214
  %7216 = select i1 %7200, float %7215, float %7214
  %7217 = call float @dx.op.unary.f32(i32 7, float %7216)  ; Saturate(value)
  %7218 = extractvalue %dx.types.CBufRet.f32 %6977, 3
  %7219 = fmul fast float %7218, %7217
  %7220 = fsub fast float 1.000000e+00, %7219
  br label %7221

; <label>:7221                                    ; preds = %7150, %6862, %6827, %6823, %6789
  %7222 = phi float [ 1.000000e+00, %6789 ], [ %7220, %7150 ], [ 1.000000e+00, %6827 ], [ 1.000000e+00, %6862 ], [ 1.000000e+00, %6823 ]
  %7223 = fcmp fast ogt float %6819, 0.000000e+00
  br i1 %7223, label %7224, label %7386, !dx.controlflow.hints !121

; <label>:7224                                    ; preds = %7221
  %7225 = fadd fast float %6732, %6706
  %7226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7227 = extractvalue %dx.types.CBufRet.f32 %7226, 2
  %7228 = extractvalue %dx.types.CBufRet.f32 %7226, 3
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 2
  %7231 = call float @dx.op.binary.f32(i32 35, float %7225, float 0.000000e+00)  ; FMax(a,b)
  %7232 = fadd fast float %7231, 0x3F10000000000000
  %7233 = fcmp fast oeq float %7230, 0.000000e+00
  br i1 %7233, label %7234, label %7301

; <label>:7234                                    ; preds = %7224
  %7235 = extractvalue %dx.types.CBufRet.f32 %7226, 1
  %7236 = extractvalue %dx.types.CBufRet.f32 %7226, 0
  %7237 = fmul fast float %7236, %6721
  %7238 = fmul fast float %7235, %6722
  %7239 = fadd fast float %7237, 5.000000e-01
  %7240 = call float @dx.op.unary.f32(i32 27, float %7239)  ; Round_ni(value)
  %7241 = fadd fast float %7238, 5.000000e-01
  %7242 = call float @dx.op.unary.f32(i32 27, float %7241)  ; Round_ni(value)
  %7243 = fsub fast float %7239, %7240
  %7244 = fsub fast float %7241, %7242
  %7245 = fadd fast float %7240, -5.000000e-01
  %7246 = fadd fast float %7242, -5.000000e-01
  %7247 = fmul fast float %7243, 2.000000e+00
  %7248 = fsub fast float 3.000000e+00, %7247
  %7249 = fadd fast float %7247, 1.000000e+00
  %7250 = fsub fast float 2.000000e+00, %7243
  %7251 = bitcast float %7248 to i32
  %7252 = sub nsw i32 2129859010, %7251
  %7253 = bitcast i32 %7252 to float
  %7254 = fmul fast float %7253, %7250
  %7255 = fadd fast float %7254, -1.000000e+00
  %7256 = bitcast float %7249 to i32
  %7257 = sub nsw i32 2129859010, %7256
  %7258 = bitcast i32 %7257 to float
  %7259 = fmul fast float %7258, %7243
  %7260 = fadd fast float %7259, 1.000000e+00
  %7261 = fmul fast float %7244, 2.000000e+00
  %7262 = fsub fast float 3.000000e+00, %7261
  %7263 = fadd fast float %7261, 1.000000e+00
  %7264 = fsub fast float 2.000000e+00, %7244
  %7265 = bitcast float %7262 to i32
  %7266 = sub nsw i32 2129859010, %7265
  %7267 = bitcast i32 %7266 to float
  %7268 = fmul fast float %7267, %7264
  %7269 = fadd fast float %7268, -1.000000e+00
  %7270 = bitcast float %7263 to i32
  %7271 = sub nsw i32 2129859010, %7270
  %7272 = bitcast i32 %7271 to float
  %7273 = fmul fast float %7272, %7244
  %7274 = fadd fast float %7273, 1.000000e+00
  %7275 = fadd fast float %7255, %7245
  %7276 = fmul fast float %7275, %7227
  %7277 = fadd fast float %7269, %7246
  %7278 = fmul fast float %7277, %7228
  %7279 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7276, float %7278, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7280 = extractvalue %dx.types.ResRet.f32 %7279, 0
  %7281 = fmul fast float %7280, %7248
  %7282 = fadd fast float %7260, %7245
  %7283 = fmul fast float %7282, %7227
  %7284 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7283, float %7278, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7285 = extractvalue %dx.types.ResRet.f32 %7284, 0
  %7286 = fmul fast float %7285, %7249
  %7287 = fadd fast float %7274, %7246
  %7288 = fmul fast float %7287, %7228
  %7289 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7276, float %7288, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7290 = extractvalue %dx.types.ResRet.f32 %7289, 0
  %7291 = fmul fast float %7290, %7248
  %7292 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7283, float %7288, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7293 = extractvalue %dx.types.ResRet.f32 %7292, 0
  %7294 = fmul fast float %7293, %7249
  %7295 = fadd fast float %7294, %7291
  %7296 = fmul fast float %7295, %7263
  %7297 = fadd fast float %7286, %7281
  %7298 = fmul fast float %7297, %7262
  %7299 = fadd fast float %7298, %7296
  %7300 = fmul fast float %7299, 6.250000e-02
  br label %7386

; <label>:7301                                    ; preds = %7224
  %7302 = fmul fast float %237, 0x401921FB60000000
  %7303 = call float @dx.op.unary.f32(i32 13, float %7302)  ; Sin(value)
  %7304 = call float @dx.op.unary.f32(i32 12, float %7302)  ; Cos(value)
  %7305 = fsub fast float -0.000000e+00, %7303
  br label %7306

; <label>:7306                                    ; preds = %7355, %7301
  %7307 = phi float [ 0.000000e+00, %7301 ], [ %7350, %7355 ]
  %7308 = phi float [ 0.000000e+00, %7301 ], [ %7352, %7355 ]
  %7309 = phi i32 [ 0, %7301 ], [ %7356, %7355 ]
  %7310 = mul i32 %7309, 2
  %7311 = add i32 0, %7310
  %7312 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7311
  %7313 = load float, float* %7312, align 4
  %7314 = mul i32 %7309, 2
  %7315 = add i32 1, %7314
  %7316 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7315
  %7317 = load float, float* %7316, align 4
  %7318 = fmul fast float %7313, %7304
  %7319 = call float @dx.op.tertiary.f32(i32 46, float %7317, float %7305, float %7318)  ; FMad(a,b,c)
  %7320 = fmul fast float %7313, %7303
  %7321 = call float @dx.op.tertiary.f32(i32 46, float %7317, float %7304, float %7320)  ; FMad(a,b,c)
  %7322 = fmul fast float %7319, %7230
  %7323 = fmul fast float %7321, %7230
  %7324 = fadd fast float %7322, %6721
  %7325 = fadd fast float %7323, %6722
  %7326 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7324, float %7325, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7327 = extractvalue %dx.types.ResRet.f32 %7326, 0
  %7328 = extractvalue %dx.types.ResRet.f32 %7326, 1
  %7329 = extractvalue %dx.types.ResRet.f32 %7326, 2
  %7330 = extractvalue %dx.types.ResRet.f32 %7326, 3
  %7331 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7327, float* %7331, align 4
  %7332 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7328, float* %7332, align 4
  %7333 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7329, float* %7333, align 4
  %7334 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7330, float* %7334, align 4
  %7335 = fsub fast float %7327, %7232
  %7336 = fcmp fast olt float %7335, 0.000000e+00
  %7337 = select i1 %7336, float 0.000000e+00, float 1.000000e+00
  %7338 = fadd fast float %7337, %7307
  %7339 = fmul fast float %7337, %7335
  %7340 = fadd fast float %7339, %7308
  br label %7341

; <label>:7341                                    ; preds = %7341, %7306
  %7342 = phi i32 [ 1, %7306 ], [ %7353, %7341 ]
  %7343 = phi float [ %7340, %7306 ], [ %7352, %7341 ]
  %7344 = phi float [ %7338, %7306 ], [ %7350, %7341 ]
  %7345 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7342
  %7346 = load float, float* %7345, align 4, !tbaa !122, !noalias !112
  %7347 = fsub fast float %7346, %7232
  %7348 = fcmp fast olt float %7347, 0.000000e+00
  %7349 = select i1 %7348, float 0.000000e+00, float 1.000000e+00
  %7350 = fadd fast float %7349, %7344
  %7351 = fmul fast float %7349, %7347
  %7352 = fadd fast float %7351, %7343
  %7353 = add nuw nsw i32 %7342, 1
  %7354 = icmp eq i32 %7353, 4
  br i1 %7354, label %7355, label %7341, !llvm.loop !124

; <label>:7355                                    ; preds = %7341
  %7356 = add nuw nsw i32 %7309, 1
  %7357 = icmp eq i32 %7356, 8
  br i1 %7357, label %7358, label %7306, !llvm.loop !125

; <label>:7358                                    ; preds = %7355
  %7359 = fdiv fast float 1.000000e+00, %7350
  %7360 = fmul fast float %7359, %7352
  %7361 = fdiv fast float 1.000000e+00, %7232
  %7362 = fmul fast float %7360, %7361
  %7363 = call float @dx.op.unary.f32(i32 7, float %7362)  ; Saturate(value)
  %7364 = call float @dx.op.binary.f32(i32 35, float %7363, float 0.000000e+00)  ; FMax(a,b)
  %7365 = fmul fast float %7350, 3.125000e-02
  %7366 = call float @dx.op.unary.f32(i32 7, float %7365)  ; Saturate(value)
  %7367 = fmul fast float %7366, 2.000000e+00
  %7368 = fadd fast float %7367, -1.000000e+00
  %7369 = fcmp fast ogt float %7368, 0.000000e+00
  %7370 = fcmp fast olt float %7368, 0.000000e+00
  %7371 = zext i1 %7369 to i32
  %7372 = zext i1 %7370 to i32
  %7373 = sub nsw i32 %7371, %7372
  %7374 = sitofp i32 %7373 to float
  %7375 = fmul fast float %7374, %7368
  %7376 = fsub fast float 1.000000e+00, %7375
  %7377 = fmul fast float %7376, %7376
  %7378 = fmul fast float %7377, %7376
  %7379 = fsub fast float %7376, %7378
  %7380 = fmul fast float %7379, %7364
  %7381 = fsub fast float 1.000000e+00, %7378
  %7382 = fsub fast float %7381, %7380
  %7383 = fmul fast float %7374, 5.000000e-01
  %7384 = fmul fast float %7383, %7382
  %7385 = fsub fast float 5.000000e-01, %7384
  br label %7386

; <label>:7386                                    ; preds = %7358, %7234, %7221
  %7387 = phi float [ 1.000000e+00, %7221 ], [ %7300, %7234 ], [ %7385, %7358 ]
  %7388 = fcmp fast ogt float %6817, 0.000000e+00
  br i1 %7388, label %7389, label %7553, !dx.controlflow.hints !126

; <label>:7389                                    ; preds = %7386
  %7390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7391 = extractvalue %dx.types.CBufRet.f32 %7390, 1
  %7392 = fadd fast float %7391, %6706
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 2
  %7395 = extractvalue %dx.types.CBufRet.f32 %7393, 3
  %7396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7397 = extractvalue %dx.types.CBufRet.f32 %7396, 1
  %7398 = call float @dx.op.binary.f32(i32 35, float %7392, float 0.000000e+00)  ; FMax(a,b)
  %7399 = fadd fast float %7398, 0x3F10000000000000
  %7400 = fcmp fast oeq float %7397, 0.000000e+00
  br i1 %7400, label %7401, label %7468

; <label>:7401                                    ; preds = %7389
  %7402 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7403 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7404 = fmul fast float %7403, %6713
  %7405 = fmul fast float %7402, %6714
  %7406 = fadd fast float %7404, 5.000000e-01
  %7407 = call float @dx.op.unary.f32(i32 27, float %7406)  ; Round_ni(value)
  %7408 = fadd fast float %7405, 5.000000e-01
  %7409 = call float @dx.op.unary.f32(i32 27, float %7408)  ; Round_ni(value)
  %7410 = fsub fast float %7406, %7407
  %7411 = fsub fast float %7408, %7409
  %7412 = fadd fast float %7407, -5.000000e-01
  %7413 = fadd fast float %7409, -5.000000e-01
  %7414 = fmul fast float %7410, 2.000000e+00
  %7415 = fsub fast float 3.000000e+00, %7414
  %7416 = fadd fast float %7414, 1.000000e+00
  %7417 = fsub fast float 2.000000e+00, %7410
  %7418 = bitcast float %7415 to i32
  %7419 = sub nsw i32 2129859010, %7418
  %7420 = bitcast i32 %7419 to float
  %7421 = fmul fast float %7420, %7417
  %7422 = fadd fast float %7421, -1.000000e+00
  %7423 = bitcast float %7416 to i32
  %7424 = sub nsw i32 2129859010, %7423
  %7425 = bitcast i32 %7424 to float
  %7426 = fmul fast float %7425, %7410
  %7427 = fadd fast float %7426, 1.000000e+00
  %7428 = fmul fast float %7411, 2.000000e+00
  %7429 = fsub fast float 3.000000e+00, %7428
  %7430 = fadd fast float %7428, 1.000000e+00
  %7431 = fsub fast float 2.000000e+00, %7411
  %7432 = bitcast float %7429 to i32
  %7433 = sub nsw i32 2129859010, %7432
  %7434 = bitcast i32 %7433 to float
  %7435 = fmul fast float %7434, %7431
  %7436 = fadd fast float %7435, -1.000000e+00
  %7437 = bitcast float %7430 to i32
  %7438 = sub nsw i32 2129859010, %7437
  %7439 = bitcast i32 %7438 to float
  %7440 = fmul fast float %7439, %7411
  %7441 = fadd fast float %7440, 1.000000e+00
  %7442 = fadd fast float %7422, %7412
  %7443 = fmul fast float %7442, %7394
  %7444 = fadd fast float %7436, %7413
  %7445 = fmul fast float %7444, %7395
  %7446 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7443, float %7445, float undef, float undef, i32 0, i32 0, i32 undef, float %7399)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7447 = extractvalue %dx.types.ResRet.f32 %7446, 0
  %7448 = fmul fast float %7447, %7415
  %7449 = fadd fast float %7427, %7412
  %7450 = fmul fast float %7449, %7394
  %7451 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7450, float %7445, float undef, float undef, i32 0, i32 0, i32 undef, float %7399)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7452 = extractvalue %dx.types.ResRet.f32 %7451, 0
  %7453 = fmul fast float %7452, %7416
  %7454 = fadd fast float %7441, %7413
  %7455 = fmul fast float %7454, %7395
  %7456 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7443, float %7455, float undef, float undef, i32 0, i32 0, i32 undef, float %7399)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7457 = extractvalue %dx.types.ResRet.f32 %7456, 0
  %7458 = fmul fast float %7457, %7415
  %7459 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7450, float %7455, float undef, float undef, i32 0, i32 0, i32 undef, float %7399)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = fmul fast float %7460, %7416
  %7462 = fadd fast float %7461, %7458
  %7463 = fmul fast float %7462, %7430
  %7464 = fadd fast float %7453, %7448
  %7465 = fmul fast float %7464, %7429
  %7466 = fadd fast float %7465, %7463
  %7467 = fmul fast float %7466, 6.250000e-02
  br label %7553

; <label>:7468                                    ; preds = %7389
  %7469 = fmul fast float %237, 0x401921FB60000000
  %7470 = call float @dx.op.unary.f32(i32 13, float %7469)  ; Sin(value)
  %7471 = call float @dx.op.unary.f32(i32 12, float %7469)  ; Cos(value)
  %7472 = fsub fast float -0.000000e+00, %7470
  br label %7473

; <label>:7473                                    ; preds = %7522, %7468
  %7474 = phi float [ 0.000000e+00, %7468 ], [ %7517, %7522 ]
  %7475 = phi float [ 0.000000e+00, %7468 ], [ %7519, %7522 ]
  %7476 = phi i32 [ 0, %7468 ], [ %7523, %7522 ]
  %7477 = mul i32 %7476, 2
  %7478 = add i32 0, %7477
  %7479 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7478
  %7480 = load float, float* %7479, align 4
  %7481 = mul i32 %7476, 2
  %7482 = add i32 1, %7481
  %7483 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7482
  %7484 = load float, float* %7483, align 4
  %7485 = fmul fast float %7480, %7471
  %7486 = call float @dx.op.tertiary.f32(i32 46, float %7484, float %7472, float %7485)  ; FMad(a,b,c)
  %7487 = fmul fast float %7480, %7470
  %7488 = call float @dx.op.tertiary.f32(i32 46, float %7484, float %7471, float %7487)  ; FMad(a,b,c)
  %7489 = fmul fast float %7486, %7397
  %7490 = fmul fast float %7488, %7397
  %7491 = fadd fast float %7489, %6713
  %7492 = fadd fast float %7490, %6714
  %7493 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7491, float %7492, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.ResRet.f32 %7493, 1
  %7496 = extractvalue %dx.types.ResRet.f32 %7493, 2
  %7497 = extractvalue %dx.types.ResRet.f32 %7493, 3
  %7498 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7494, float* %7498, align 4
  %7499 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7495, float* %7499, align 4
  %7500 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7496, float* %7500, align 4
  %7501 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7497, float* %7501, align 4
  %7502 = fsub fast float %7494, %7399
  %7503 = fcmp fast olt float %7502, 0.000000e+00
  %7504 = select i1 %7503, float 0.000000e+00, float 1.000000e+00
  %7505 = fadd fast float %7504, %7474
  %7506 = fmul fast float %7504, %7502
  %7507 = fadd fast float %7506, %7475
  br label %7508

; <label>:7508                                    ; preds = %7508, %7473
  %7509 = phi i32 [ 1, %7473 ], [ %7520, %7508 ]
  %7510 = phi float [ %7507, %7473 ], [ %7519, %7508 ]
  %7511 = phi float [ %7505, %7473 ], [ %7517, %7508 ]
  %7512 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7509
  %7513 = load float, float* %7512, align 4, !tbaa !122, !noalias !112
  %7514 = fsub fast float %7513, %7399
  %7515 = fcmp fast olt float %7514, 0.000000e+00
  %7516 = select i1 %7515, float 0.000000e+00, float 1.000000e+00
  %7517 = fadd fast float %7516, %7511
  %7518 = fmul fast float %7516, %7514
  %7519 = fadd fast float %7518, %7510
  %7520 = add nuw nsw i32 %7509, 1
  %7521 = icmp eq i32 %7520, 4
  br i1 %7521, label %7522, label %7508, !llvm.loop !124

; <label>:7522                                    ; preds = %7508
  %7523 = add nuw nsw i32 %7476, 1
  %7524 = icmp eq i32 %7523, 8
  br i1 %7524, label %7525, label %7473, !llvm.loop !125

; <label>:7525                                    ; preds = %7522
  %7526 = fdiv fast float 1.000000e+00, %7517
  %7527 = fmul fast float %7526, %7519
  %7528 = fdiv fast float 1.000000e+00, %7399
  %7529 = fmul fast float %7527, %7528
  %7530 = call float @dx.op.unary.f32(i32 7, float %7529)  ; Saturate(value)
  %7531 = call float @dx.op.binary.f32(i32 35, float %7530, float 0.000000e+00)  ; FMax(a,b)
  %7532 = fmul fast float %7517, 3.125000e-02
  %7533 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7534 = fmul fast float %7533, 2.000000e+00
  %7535 = fadd fast float %7534, -1.000000e+00
  %7536 = fcmp fast ogt float %7535, 0.000000e+00
  %7537 = fcmp fast olt float %7535, 0.000000e+00
  %7538 = zext i1 %7536 to i32
  %7539 = zext i1 %7537 to i32
  %7540 = sub nsw i32 %7538, %7539
  %7541 = sitofp i32 %7540 to float
  %7542 = fmul fast float %7541, %7535
  %7543 = fsub fast float 1.000000e+00, %7542
  %7544 = fmul fast float %7543, %7543
  %7545 = fmul fast float %7544, %7543
  %7546 = fsub fast float %7543, %7545
  %7547 = fmul fast float %7546, %7531
  %7548 = fsub fast float 1.000000e+00, %7545
  %7549 = fsub fast float %7548, %7547
  %7550 = fmul fast float %7541, 5.000000e-01
  %7551 = fmul fast float %7550, %7549
  %7552 = fsub fast float 5.000000e-01, %7551
  br label %7553

; <label>:7553                                    ; preds = %7525, %7401, %7386
  %7554 = phi float [ 1.000000e+00, %7386 ], [ %7467, %7401 ], [ %7552, %7525 ]
  %7555 = fcmp fast ogt float %6816, 0.000000e+00
  br i1 %7555, label %7556, label %7720, !dx.controlflow.hints !127

; <label>:7556                                    ; preds = %7553
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 0
  %7559 = fadd fast float %7558, %6706
  %7560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7561 = extractvalue %dx.types.CBufRet.f32 %7560, 2
  %7562 = extractvalue %dx.types.CBufRet.f32 %7560, 3
  %7563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7564 = extractvalue %dx.types.CBufRet.f32 %7563, 0
  %7565 = call float @dx.op.binary.f32(i32 35, float %7559, float 0.000000e+00)  ; FMax(a,b)
  %7566 = fadd fast float %7565, 0x3F10000000000000
  %7567 = fcmp fast oeq float %7564, 0.000000e+00
  br i1 %7567, label %7568, label %7635

; <label>:7568                                    ; preds = %7556
  %7569 = extractvalue %dx.types.CBufRet.f32 %7560, 1
  %7570 = extractvalue %dx.types.CBufRet.f32 %7560, 0
  %7571 = fmul fast float %7570, %6698
  %7572 = fmul fast float %7569, %6702
  %7573 = fadd fast float %7571, 5.000000e-01
  %7574 = call float @dx.op.unary.f32(i32 27, float %7573)  ; Round_ni(value)
  %7575 = fadd fast float %7572, 5.000000e-01
  %7576 = call float @dx.op.unary.f32(i32 27, float %7575)  ; Round_ni(value)
  %7577 = fsub fast float %7573, %7574
  %7578 = fsub fast float %7575, %7576
  %7579 = fadd fast float %7574, -5.000000e-01
  %7580 = fadd fast float %7576, -5.000000e-01
  %7581 = fmul fast float %7577, 2.000000e+00
  %7582 = fsub fast float 3.000000e+00, %7581
  %7583 = fadd fast float %7581, 1.000000e+00
  %7584 = fsub fast float 2.000000e+00, %7577
  %7585 = bitcast float %7582 to i32
  %7586 = sub nsw i32 2129859010, %7585
  %7587 = bitcast i32 %7586 to float
  %7588 = fmul fast float %7587, %7584
  %7589 = fadd fast float %7588, -1.000000e+00
  %7590 = bitcast float %7583 to i32
  %7591 = sub nsw i32 2129859010, %7590
  %7592 = bitcast i32 %7591 to float
  %7593 = fmul fast float %7592, %7577
  %7594 = fadd fast float %7593, 1.000000e+00
  %7595 = fmul fast float %7578, 2.000000e+00
  %7596 = fsub fast float 3.000000e+00, %7595
  %7597 = fadd fast float %7595, 1.000000e+00
  %7598 = fsub fast float 2.000000e+00, %7578
  %7599 = bitcast float %7596 to i32
  %7600 = sub nsw i32 2129859010, %7599
  %7601 = bitcast i32 %7600 to float
  %7602 = fmul fast float %7601, %7598
  %7603 = fadd fast float %7602, -1.000000e+00
  %7604 = bitcast float %7597 to i32
  %7605 = sub nsw i32 2129859010, %7604
  %7606 = bitcast i32 %7605 to float
  %7607 = fmul fast float %7606, %7578
  %7608 = fadd fast float %7607, 1.000000e+00
  %7609 = fadd fast float %7589, %7579
  %7610 = fmul fast float %7609, %7561
  %7611 = fadd fast float %7603, %7580
  %7612 = fmul fast float %7611, %7562
  %7613 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7610, float %7612, float undef, float undef, i32 0, i32 0, i32 undef, float %7566)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7614 = extractvalue %dx.types.ResRet.f32 %7613, 0
  %7615 = fmul fast float %7614, %7582
  %7616 = fadd fast float %7594, %7579
  %7617 = fmul fast float %7616, %7561
  %7618 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7617, float %7612, float undef, float undef, i32 0, i32 0, i32 undef, float %7566)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7619 = extractvalue %dx.types.ResRet.f32 %7618, 0
  %7620 = fmul fast float %7619, %7583
  %7621 = fadd fast float %7608, %7580
  %7622 = fmul fast float %7621, %7562
  %7623 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7610, float %7622, float undef, float undef, i32 0, i32 0, i32 undef, float %7566)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7624 = extractvalue %dx.types.ResRet.f32 %7623, 0
  %7625 = fmul fast float %7624, %7582
  %7626 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7617, float %7622, float undef, float undef, i32 0, i32 0, i32 undef, float %7566)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7627 = extractvalue %dx.types.ResRet.f32 %7626, 0
  %7628 = fmul fast float %7627, %7583
  %7629 = fadd fast float %7628, %7625
  %7630 = fmul fast float %7629, %7597
  %7631 = fadd fast float %7620, %7615
  %7632 = fmul fast float %7631, %7596
  %7633 = fadd fast float %7632, %7630
  %7634 = fmul fast float %7633, 6.250000e-02
  br label %7720

; <label>:7635                                    ; preds = %7556
  %7636 = fmul fast float %237, 0x401921FB60000000
  %7637 = call float @dx.op.unary.f32(i32 13, float %7636)  ; Sin(value)
  %7638 = call float @dx.op.unary.f32(i32 12, float %7636)  ; Cos(value)
  %7639 = fsub fast float -0.000000e+00, %7637
  br label %7640

; <label>:7640                                    ; preds = %7689, %7635
  %7641 = phi float [ 0.000000e+00, %7635 ], [ %7684, %7689 ]
  %7642 = phi float [ 0.000000e+00, %7635 ], [ %7686, %7689 ]
  %7643 = phi i32 [ 0, %7635 ], [ %7690, %7689 ]
  %7644 = mul i32 %7643, 2
  %7645 = add i32 0, %7644
  %7646 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7645
  %7647 = load float, float* %7646, align 4
  %7648 = mul i32 %7643, 2
  %7649 = add i32 1, %7648
  %7650 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7649
  %7651 = load float, float* %7650, align 4
  %7652 = fmul fast float %7647, %7638
  %7653 = call float @dx.op.tertiary.f32(i32 46, float %7651, float %7639, float %7652)  ; FMad(a,b,c)
  %7654 = fmul fast float %7647, %7637
  %7655 = call float @dx.op.tertiary.f32(i32 46, float %7651, float %7638, float %7654)  ; FMad(a,b,c)
  %7656 = fmul fast float %7653, %7564
  %7657 = fmul fast float %7655, %7564
  %7658 = fadd fast float %7656, %6698
  %7659 = fadd fast float %7657, %6702
  %7660 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7658, float %7659, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7661 = extractvalue %dx.types.ResRet.f32 %7660, 0
  %7662 = extractvalue %dx.types.ResRet.f32 %7660, 1
  %7663 = extractvalue %dx.types.ResRet.f32 %7660, 2
  %7664 = extractvalue %dx.types.ResRet.f32 %7660, 3
  %7665 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7661, float* %7665, align 4
  %7666 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7662, float* %7666, align 4
  %7667 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7663, float* %7667, align 4
  %7668 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7664, float* %7668, align 4
  %7669 = fsub fast float %7661, %7566
  %7670 = fcmp fast olt float %7669, 0.000000e+00
  %7671 = select i1 %7670, float 0.000000e+00, float 1.000000e+00
  %7672 = fadd fast float %7671, %7641
  %7673 = fmul fast float %7671, %7669
  %7674 = fadd fast float %7673, %7642
  br label %7675

; <label>:7675                                    ; preds = %7675, %7640
  %7676 = phi i32 [ 1, %7640 ], [ %7687, %7675 ]
  %7677 = phi float [ %7674, %7640 ], [ %7686, %7675 ]
  %7678 = phi float [ %7672, %7640 ], [ %7684, %7675 ]
  %7679 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7676
  %7680 = load float, float* %7679, align 4, !tbaa !122, !noalias !112
  %7681 = fsub fast float %7680, %7566
  %7682 = fcmp fast olt float %7681, 0.000000e+00
  %7683 = select i1 %7682, float 0.000000e+00, float 1.000000e+00
  %7684 = fadd fast float %7683, %7678
  %7685 = fmul fast float %7683, %7681
  %7686 = fadd fast float %7685, %7677
  %7687 = add nuw nsw i32 %7676, 1
  %7688 = icmp eq i32 %7687, 4
  br i1 %7688, label %7689, label %7675, !llvm.loop !124

; <label>:7689                                    ; preds = %7675
  %7690 = add nuw nsw i32 %7643, 1
  %7691 = icmp eq i32 %7690, 8
  br i1 %7691, label %7692, label %7640, !llvm.loop !125

; <label>:7692                                    ; preds = %7689
  %7693 = fdiv fast float 1.000000e+00, %7684
  %7694 = fmul fast float %7693, %7686
  %7695 = fdiv fast float 1.000000e+00, %7566
  %7696 = fmul fast float %7694, %7695
  %7697 = call float @dx.op.unary.f32(i32 7, float %7696)  ; Saturate(value)
  %7698 = call float @dx.op.binary.f32(i32 35, float %7697, float 0.000000e+00)  ; FMax(a,b)
  %7699 = fmul fast float %7684, 3.125000e-02
  %7700 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7701 = fmul fast float %7700, 2.000000e+00
  %7702 = fadd fast float %7701, -1.000000e+00
  %7703 = fcmp fast ogt float %7702, 0.000000e+00
  %7704 = fcmp fast olt float %7702, 0.000000e+00
  %7705 = zext i1 %7703 to i32
  %7706 = zext i1 %7704 to i32
  %7707 = sub nsw i32 %7705, %7706
  %7708 = sitofp i32 %7707 to float
  %7709 = fmul fast float %7708, %7702
  %7710 = fsub fast float 1.000000e+00, %7709
  %7711 = fmul fast float %7710, %7710
  %7712 = fmul fast float %7711, %7710
  %7713 = fsub fast float %7710, %7712
  %7714 = fmul fast float %7713, %7698
  %7715 = fsub fast float 1.000000e+00, %7712
  %7716 = fsub fast float %7715, %7714
  %7717 = fmul fast float %7708, 5.000000e-01
  %7718 = fmul fast float %7717, %7716
  %7719 = fsub fast float 5.000000e-01, %7718
  br label %7720

; <label>:7720                                    ; preds = %7692, %7568, %7553
  %7721 = phi float [ 1.000000e+00, %7553 ], [ %7634, %7568 ], [ %7719, %7692 ]
  %7722 = fsub fast float %7387, %7222
  %7723 = fmul fast float %7722, %6760
  %7724 = fadd fast float %7723, %7222
  %7725 = fsub fast float %7554, %7724
  %7726 = fmul fast float %7725, %6790
  %7727 = fadd fast float %7726, %7724
  %7728 = fsub fast float %7721, %7727
  %7729 = fmul fast float %7728, %6816
  %7730 = fadd fast float %7729, %7727
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 2
  %7733 = fcmp fast ogt float %7732, 0.000000e+00
  br i1 %7733, label %7734, label %7774, !dx.controlflow.hints !128

; <label>:7734                                    ; preds = %7720
  %7735 = fcmp fast ugt float %7732, 0.000000e+00
  br i1 %7735, label %7736, label %7771

; <label>:7736                                    ; preds = %7734
  %7737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7738 = extractvalue %dx.types.CBufRet.f32 %7737, 0
  %7739 = extractvalue %dx.types.CBufRet.f32 %7737, 1
  %7740 = extractvalue %dx.types.CBufRet.f32 %7737, 2
  %7741 = extractvalue %dx.types.CBufRet.f32 %7737, 3
  %7742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7743 = extractvalue %dx.types.CBufRet.f32 %7742, 0
  %7744 = extractvalue %dx.types.CBufRet.f32 %7742, 1
  %7745 = extractvalue %dx.types.CBufRet.f32 %7742, 2
  %7746 = extractvalue %dx.types.CBufRet.f32 %7742, 3
  %7747 = extractvalue %dx.types.CBufRet.f32 %7731, 0
  %7748 = extractvalue %dx.types.CBufRet.f32 %7731, 1
  %7749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7750 = extractvalue %dx.types.CBufRet.f32 %7749, 0
  %7751 = extractvalue %dx.types.CBufRet.f32 %7749, 1
  %7752 = extractvalue %dx.types.CBufRet.f32 %7749, 2
  %7753 = fadd fast float %7750, %6675
  %7754 = fadd fast float %7751, %6676
  %7755 = fadd fast float %7752, %6677
  %7756 = fmul fast float %7753, %7738
  %7757 = call float @dx.op.tertiary.f32(i32 46, float %7739, float %7754, float %7756)  ; FMad(a,b,c)
  %7758 = call float @dx.op.tertiary.f32(i32 46, float %7740, float %7755, float %7757)  ; FMad(a,b,c)
  %7759 = fadd fast float %7758, %7741
  %7760 = fmul fast float %7753, %7743
  %7761 = call float @dx.op.tertiary.f32(i32 46, float %7744, float %7754, float %7760)  ; FMad(a,b,c)
  %7762 = call float @dx.op.tertiary.f32(i32 46, float %7745, float %7755, float %7761)  ; FMad(a,b,c)
  %7763 = fadd fast float %7762, %7746
  %7764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7759, float %7763, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7765 = extractvalue %dx.types.ResRet.f32 %7764, 0
  %7766 = fmul fast float %7765, %7748
  %7767 = fadd fast float %7766, %7747
  %7768 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7769 = fmul fast float %7768, %7732
  %7770 = fsub fast float 1.000000e+00, %7769
  br label %7771

; <label>:7771                                    ; preds = %7736, %7734
  %7772 = phi float [ %7770, %7736 ], [ 1.000000e+00, %7734 ]
  %7773 = fmul fast float %7772, %7730
  br label %7774

; <label>:7774                                    ; preds = %7771, %7720, %6655
  %7775 = phi float [ 1.000000e+00, %6655 ], [ %7773, %7771 ], [ %7730, %7720 ]
  %7776 = call float @dx.op.binary.f32(i32 36, float %7775, float %7775)  ; FMin(a,b)
  %7777 = call float @dx.op.binary.f32(i32 36, float %7775, float %7776)  ; FMin(a,b)
  %7778 = fcmp fast ogt float %7777, 0.000000e+00
  br i1 %7778, label %7779, label %7944, !dx.controlflow.hints !129

; <label>:7779                                    ; preds = %7774
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 0
  %7782 = extractvalue %dx.types.CBufRet.f32 %7780, 1
  %7783 = extractvalue %dx.types.CBufRet.f32 %7780, 2
  %7784 = extractvalue %dx.types.CBufRet.f32 %7780, 3
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 0
  %7787 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7788 = extractvalue %dx.types.CBufRet.f32 %7785, 2
  %7789 = extractvalue %dx.types.CBufRet.f32 %7785, 3
  %7790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7791 = extractvalue %dx.types.CBufRet.f32 %7790, 0
  %7792 = extractvalue %dx.types.CBufRet.f32 %7790, 1
  %7793 = extractvalue %dx.types.CBufRet.f32 %7790, 2
  %7794 = extractvalue %dx.types.CBufRet.f32 %7790, 3
  %7795 = fmul fast float %7781, %6675
  %7796 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %7782, float %7795)  ; FMad(a,b,c)
  %7797 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %7783, float %7796)  ; FMad(a,b,c)
  %7798 = fadd fast float %7797, %7784
  %7799 = fmul fast float %7786, %6675
  %7800 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %7787, float %7799)  ; FMad(a,b,c)
  %7801 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %7788, float %7800)  ; FMad(a,b,c)
  %7802 = fadd fast float %7801, %7789
  %7803 = fmul fast float %7791, %6675
  %7804 = call float @dx.op.tertiary.f32(i32 46, float %6676, float %7792, float %7803)  ; FMad(a,b,c)
  %7805 = call float @dx.op.tertiary.f32(i32 46, float %6677, float %7793, float %7804)  ; FMad(a,b,c)
  %7806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7807 = extractvalue %dx.types.CBufRet.f32 %7806, 0
  %7808 = extractvalue %dx.types.CBufRet.f32 %7806, 1
  %7809 = extractvalue %dx.types.CBufRet.f32 %7806, 3
  %7810 = fmul fast float %7809, %7798
  %7811 = fmul fast float %7809, %7802
  %7812 = fadd fast float %7810, %7807
  %7813 = fadd fast float %7811, %7808
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7817 = fsub fast float %7812, %7815
  %7818 = fsub fast float %7813, %7816
  %7819 = fcmp fast olt float %7817, 0.000000e+00
  %7820 = fcmp fast olt float %7818, 0.000000e+00
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7823 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %7824 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7825 = extractvalue %dx.types.CBufRet.f32 %7821, 3
  %7826 = select i1 %7819, float %7822, float %7824
  %7827 = select i1 %7820, float %7823, float %7825
  %7828 = fmul fast float %7826, %7817
  %7829 = fmul fast float %7827, %7818
  %7830 = call float @dx.op.unary.f32(i32 6, float %7828)  ; FAbs(value)
  %7831 = call float @dx.op.unary.f32(i32 6, float %7829)  ; FAbs(value)
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = call float @dx.op.binary.f32(i32 35, float %7830, float %7831)  ; FMax(a,b)
  %7835 = fsub fast float %7833, %7834
  %7836 = call float @dx.op.unary.f32(i32 7, float %7835)  ; Saturate(value)
  %7837 = fcmp fast ogt float %7836, 0.000000e+00
  br i1 %7837, label %7838, label %7879, !dx.controlflow.hints !130

; <label>:7838                                    ; preds = %7779
  %7839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7812, float %7813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7840 = extractvalue %dx.types.ResRet.f32 %7839, 1
  %7841 = fcmp fast ogt float %7840, 0.000000e+00
  br i1 %7841, label %7842, label %7874

; <label>:7842                                    ; preds = %7838
  %7843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7812, float %7813, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7844 = extractvalue %dx.types.ResRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.ResRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.ResRet.f32 %7843, 2
  %7847 = extractvalue %dx.types.ResRet.f32 %7843, 3
  %7848 = fsub fast float 1.000000e+00, %7794
  %7849 = fsub fast float %7848, %7805
  %7850 = fmul fast float %7849, 0x400921FB60000000
  %7851 = fadd fast float %7850, 0x3FF921FB60000000
  %7852 = call float @dx.op.unary.f32(i32 13, float %7851)  ; Sin(value)
  %7853 = fadd fast float %7852, -1.000000e+00
  %7854 = fmul fast float %7853, 0x3FD45F3060000000
  %7855 = fmul fast float %7849, 0x401921FB60000000
  %7856 = fadd fast float %7855, 0x400921FB60000000
  %7857 = call float @dx.op.unary.f32(i32 13, float %7856)  ; Sin(value)
  %7858 = fadd fast float %7857, 0x3E7777A5C0000000
  %7859 = fmul fast float %7858, 0x3FC45F3060000000
  %7860 = fmul fast float %7849, 0x4022D97C80000000
  %7861 = fadd fast float %7860, 0x4012D97C80000000
  %7862 = call float @dx.op.unary.f32(i32 13, float %7861)  ; Sin(value)
  %7863 = fadd fast float %7862, 1.000000e+00
  %7864 = fmul fast float %7863, 0x3FBB2995E0000000
  %7865 = fmul fast float %7849, 0x402921FB60000000
  %7866 = fadd fast float %7865, 0x401921FB60000000
  %7867 = call float @dx.op.unary.f32(i32 13, float %7866)  ; Sin(value)
  %7868 = fadd fast float %7867, 0xBE8777A5C0000000
  %7869 = fmul fast float %7868, 0x3FB45F3060000000
  %7870 = call float @dx.op.dot4.f32(i32 56, float %7844, float %7845, float %7846, float %7847, float %7854, float %7859, float %7864, float %7869)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7871 = fmul fast float %7870, 0xBFF7154760000000
  %7872 = call float @dx.op.unary.f32(i32 21, float %7871)  ; Exp(value)
  %7873 = call float @dx.op.unary.f32(i32 7, float %7872)  ; Saturate(value)
  br label %7874

; <label>:7874                                    ; preds = %7842, %7838
  %7875 = phi float [ %7873, %7842 ], [ 1.000000e+00, %7838 ]
  %7876 = fadd fast float %7875, -1.000000e+00
  %7877 = fmul fast float %7876, %7836
  %7878 = fadd fast float %7877, 1.000000e+00
  br label %7879

; <label>:7879                                    ; preds = %7874, %7779
  %7880 = phi float [ %7878, %7874 ], [ 1.000000e+00, %7779 ]
  %7881 = fmul fast float %7880, %7775
  %7882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7883 = extractvalue %dx.types.CBufRet.f32 %7882, 0
  %7884 = extractvalue %dx.types.CBufRet.f32 %7882, 1
  %7885 = extractvalue %dx.types.CBufRet.f32 %7882, 2
  %7886 = fadd fast float %7883, %164
  %7887 = fadd fast float %7884, %165
  %7888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7889 = extractvalue %dx.types.CBufRet.f32 %7888, 1
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.CBufRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.CBufRet.f32 %7890, 2
  %7894 = fsub fast float -0.000000e+00, %7886
  %7895 = fsub fast float -0.000000e+00, %7887
  %7896 = fsub fast float %5721, %7885
  %7897 = fadd fast float %7896, %7889
  %7898 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7894, float %7895, float %7897)  ; Dot3(ax,ay,az,bx,by,bz)
  %7899 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7891, float %7892, float %7893)  ; Dot3(ax,ay,az,bx,by,bz)
  %7900 = fdiv fast float 1.000000e+00, %7899
  %7901 = fmul fast float %7900, %7898
  %7902 = fmul fast float %7891, %7901
  %7903 = fmul fast float %7892, %7901
  %7904 = fadd fast float %7902, %7886
  %7905 = fadd fast float %7903, %7887
  %7906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7907 = extractvalue %dx.types.CBufRet.f32 %7906, 0
  %7908 = extractvalue %dx.types.CBufRet.f32 %7906, 1
  %7909 = fsub fast float %7904, %7907
  %7910 = fsub fast float %7905, %7908
  %7911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7912 = extractvalue %dx.types.CBufRet.f32 %7911, 2
  %7913 = extractvalue %dx.types.CBufRet.f32 %7911, 3
  %7914 = fmul fast float %7909, %7912
  %7915 = fmul fast float %7910, %7913
  %7916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.i32 %7916, 3
  %7918 = icmp eq i32 %7917, 0
  br i1 %7918, label %7924, label %7919

; <label>:7919                                    ; preds = %7879
  %7920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7914, float %7915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.ResRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.ResRet.f32 %7920, 2
  br label %7929

; <label>:7924                                    ; preds = %7879
  %7925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7914, float %7915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7926 = extractvalue %dx.types.ResRet.f32 %7925, 0
  %7927 = extractvalue %dx.types.ResRet.f32 %7925, 1
  %7928 = extractvalue %dx.types.ResRet.f32 %7925, 2
  br label %7929

; <label>:7929                                    ; preds = %7924, %7919
  %7930 = phi float [ %7921, %7919 ], [ %7926, %7924 ]
  %7931 = phi float [ %7922, %7919 ], [ %7927, %7924 ]
  %7932 = phi float [ %7923, %7919 ], [ %7928, %7924 ]
  %7933 = extractvalue %dx.types.CBufRet.f32 %7888, 2
  %7934 = fmul fast float %7933, %7930
  %7935 = extractvalue %dx.types.CBufRet.f32 %7888, 0
  %7936 = fsub fast float %7901, %7935
  %7937 = fsub fast float %7936, %7934
  %7938 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7937)  ; FMax(a,b)
  %7939 = fmul fast float %7938, %7931
  %7940 = call float @dx.op.binary.f32(i32 36, float %7932, float %7939)  ; FMin(a,b)
  %7941 = fmul fast float %7940, 0xBFF7154760000000
  %7942 = call float @dx.op.unary.f32(i32 21, float %7941)  ; Exp(value)
  %7943 = fmul fast float %7881, %7942
  br label %7944

; <label>:7944                                    ; preds = %7929, %7774
  %7945 = phi float [ %7943, %7929 ], [ %7775, %7774 ]
  %7946 = call float @dx.op.binary.f32(i32 36, float %7945, float %7945)  ; FMin(a,b)
  %7947 = call float @dx.op.binary.f32(i32 36, float %7945, float %7946)  ; FMin(a,b)
  %7948 = fcmp fast ogt float %7947, 0.000000e+00
  br i1 %7948, label %7949, label %8332, !dx.controlflow.hints !131

; <label>:7949                                    ; preds = %7944
  %7950 = fmul fast float %7945, %6667
  %7951 = fmul fast float %7945, %6668
  %7952 = fmul fast float %7945, %6669
  %7953 = fsub fast float %166, %5512
  %7954 = fcmp fast ogt float %7953, 0.000000e+00
  %7955 = fmul fast float %6656, 5.120000e+02
  %7956 = fmul fast float %6657, 5.120000e+02
  %7957 = fmul fast float %6658, 5.120000e+02
  %7958 = fadd fast float %7957, %166
  %7959 = fsub fast float %5512, %7958
  %7960 = fmul fast float %7959, 2.000000e+00
  %7961 = fadd fast float %7960, %7958
  %7962 = select i1 %7954, float %7961, float %7958
  %7963 = fsub fast float %7962, %166
  %7964 = call float @dx.op.dot3.f32(i32 55, float %7955, float %7956, float %7963, float %7955, float %7956, float %7963)  ; Dot3(ax,ay,az,bx,by,bz)
  %7965 = call float @dx.op.unary.f32(i32 25, float %7964)  ; Rsqrt(value)
  %7966 = fmul fast float %7965, %7955
  %7967 = fmul fast float %7965, %7956
  %7968 = fmul fast float %7965, %7963
  %7969 = fsub fast float %5512, %166
  %7970 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7969)  ; Dot3(ax,ay,az,bx,by,bz)
  %7971 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7966, float %7967, float %7968)  ; Dot3(ax,ay,az,bx,by,bz)
  %7972 = fdiv fast float 1.000000e+00, %7971
  %7973 = fmul fast float %7972, %7970
  %7974 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7953, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7975 = fcmp fast ogt float %7974, 0.000000e+00
  %7976 = fcmp fast olt float %7974, 0.000000e+00
  %7977 = zext i1 %7975 to i32
  %7978 = zext i1 %7976 to i32
  %7979 = sub nsw i32 %7977, %7978
  %7980 = sitofp i32 %7979 to float
  %7981 = fsub fast float %7962, %5512
  %7982 = call float @dx.op.dot3.f32(i32 55, float %7955, float %7956, float %7981, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7983 = fcmp fast ogt float %7982, 0.000000e+00
  %7984 = fcmp fast olt float %7982, 0.000000e+00
  %7985 = zext i1 %7983 to i32
  %7986 = zext i1 %7984 to i32
  %7987 = sub nsw i32 %7985, %7986
  %7988 = sitofp i32 %7987 to float
  %7989 = fcmp fast une float %7980, %7988
  br i1 %7989, label %7990, label %8000

; <label>:7990                                    ; preds = %7949
  %7991 = fmul fast float %7973, %7968
  %7992 = fmul fast float %7973, %7967
  %7993 = fmul fast float %7973, %7966
  %7994 = fmul fast float %7993, %7993
  %7995 = fmul fast float %7992, %7992
  %7996 = fadd fast float %7994, %7995
  %7997 = fmul fast float %7991, %7991
  %7998 = fadd fast float %7996, %7997
  %7999 = call float @dx.op.unary.f32(i32 24, float %7998)  ; Sqrt(value)
  br label %8010

; <label>:8000                                    ; preds = %7949
  %8001 = icmp slt i32 %7979, 0
  br i1 %8001, label %8002, label %8010

; <label>:8002                                    ; preds = %8000
  %8003 = fsub fast float %166, %7962
  %8004 = fmul fast float %7955, %7955
  %8005 = fmul fast float %7956, %7956
  %8006 = fadd fast float %8004, %8005
  %8007 = fmul fast float %8003, %8003
  %8008 = fadd fast float %8006, %8007
  %8009 = call float @dx.op.unary.f32(i32 24, float %8008)  ; Sqrt(value)
  br label %8010

; <label>:8010                                    ; preds = %8002, %8000, %7990
  %8011 = phi float [ %7999, %7990 ], [ %8009, %8002 ], [ 0.000000e+00, %8000 ]
  %8012 = fsub fast float -0.000000e+00, %8011
  %8013 = select i1 %7954, float -0.000000e+00, float %8012
  %8014 = fmul fast float %5509, 0x3FF7154760000000
  %8015 = fmul fast float %8014, %8013
  %8016 = fmul fast float %5510, 0x3FF7154760000000
  %8017 = fmul fast float %8016, %8013
  %8018 = fmul fast float %5511, 0x3FF7154760000000
  %8019 = fmul fast float %8018, %8013
  %8020 = call float @dx.op.unary.f32(i32 21, float %8015)  ; Exp(value)
  %8021 = call float @dx.op.unary.f32(i32 21, float %8017)  ; Exp(value)
  %8022 = call float @dx.op.unary.f32(i32 21, float %8019)  ; Exp(value)
  %8023 = call float @dx.op.unary.f32(i32 7, float %8020)  ; Saturate(value)
  %8024 = call float @dx.op.unary.f32(i32 7, float %8021)  ; Saturate(value)
  %8025 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8026 = fmul fast float %7950, %8023
  %8027 = fmul fast float %7951, %8024
  %8028 = fmul fast float %7952, %8025
  %8029 = fsub fast float %6656, %5709
  %8030 = fsub fast float %6657, %5708
  %8031 = fsub fast float %6658, %5707
  %8032 = call float @dx.op.dot3.f32(i32 55, float %8029, float %8030, float %8031, float %8029, float %8030, float %8031)  ; Dot3(ax,ay,az,bx,by,bz)
  %8033 = call float @dx.op.unary.f32(i32 25, float %8032)  ; Rsqrt(value)
  %8034 = fmul fast float %8033, %8029
  %8035 = fmul fast float %8033, %8030
  %8036 = fmul fast float %8033, %8031
  %8037 = call float @dx.op.dot3.f32(i32 55, float %6656, float %6657, float %6658, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %8038 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5705, float %5704, float %8034, float %8035, float %8036)  ; Dot3(ax,ay,az,bx,by,bz)
  %8039 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8040 = fmul fast float %8039, %8039
  %8041 = fmul fast float %8040, %5749
  %8042 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8043 = fmul fast float %8042, %8039
  %8044 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %8034, float %8035, float %8036)  ; Dot3(ax,ay,az,bx,by,bz)
  %8045 = fmul fast float %8044, %8044
  %8046 = call float @dx.op.unary.f32(i32 6, float %8037)  ; FAbs(value)
  %8047 = fsub fast float 1.000000e+00, %5742
  %8048 = fmul fast float %5724, %5724
  %8049 = fmul fast float %8048, %8047
  %8050 = fadd fast float %8049, %5742
  %8051 = bitcast float %8050 to i32
  %8052 = ashr i32 %8051, 1
  %8053 = add nsw i32 %8052, 532487669
  %8054 = bitcast i32 %8053 to float
  %8055 = fadd fast float %8054, %5724
  %8056 = fmul fast float %5742, %8045
  %8057 = fsub fast float 1.000000e+00, %8045
  %8058 = fadd fast float %8057, %8056
  %8059 = fmul fast float %8046, %8046
  %8060 = fmul fast float %8059, %8047
  %8061 = fadd fast float %8060, %5742
  %8062 = bitcast float %8061 to i32
  %8063 = ashr i32 %8062, 1
  %8064 = add nsw i32 %8063, 532487669
  %8065 = bitcast i32 %8064 to float
  %8066 = fadd fast float %8065, %8046
  %8067 = fmul fast float %8058, %8058
  %8068 = fmul fast float %8067, %8055
  %8069 = fmul fast float %8068, %8066
  %8070 = fdiv fast float 0x3FF0A00000000000, %8069
  %8071 = fmul fast float %8070, %5742
  %8072 = fmul fast float %5995, 0x3FF9999980000000
  %8073 = fsub fast float 5.000000e+00, %8072
  %8074 = call float @dx.op.unary.f32(i32 6, float %8038)  ; FAbs(value)
  %8075 = fsub fast float 1.000000e+00, %8074
  %8076 = fmul fast float %5995, 0x41D9660740000000
  %8077 = fadd fast float %8076, 0xC1EFBF8940000000
  %8078 = bitcast float %8075 to i32
  %8079 = sitofp i32 %8078 to float
  %8080 = fmul fast float %8079, %8073
  %8081 = fadd fast float %8077, %8080
  %8082 = fptosi float %8081 to i32
  %8083 = bitcast i32 %8082 to float
  %8084 = fsub fast float 1.000000e+00, %5713
  %8085 = fsub fast float 1.000000e+00, %5714
  %8086 = fsub fast float 1.000000e+00, %5722
  %8087 = fmul fast float %8083, %8084
  %8088 = fmul fast float %8083, %8085
  %8089 = fmul fast float %8083, %8086
  %8090 = fadd fast float %8087, %5713
  %8091 = fadd fast float %8088, %5714
  %8092 = fadd fast float %8089, %5722
  br i1 %6018, label %8093, label %8116

; <label>:8093                                    ; preds = %8010
  %8094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8095 = extractvalue %dx.types.ResRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.ResRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.ResRet.f32 %8094, 2
  %8098 = fadd fast float %8095, -5.000000e-01
  %8099 = fadd fast float %8096, -5.000000e-01
  %8100 = fadd fast float %8097, -5.000000e-01
  %8101 = fmul fast float %5713, 4.000000e+00
  %8102 = fmul fast float %8101, %8084
  %8103 = fmul fast float %8102, %8098
  %8104 = fmul fast float %5714, 4.000000e+00
  %8105 = fmul fast float %8104, %8085
  %8106 = fmul fast float %8105, %8099
  %8107 = fmul fast float %5722, 4.000000e+00
  %8108 = fmul fast float %8107, %8086
  %8109 = fmul fast float %8108, %8100
  %8110 = fadd fast float %8103, %8090
  %8111 = fadd fast float %8106, %8091
  %8112 = fadd fast float %8109, %8092
  %8113 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8114 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8115 = call float @dx.op.unary.f32(i32 7, float %8112)  ; Saturate(value)
  br label %8116

; <label>:8116                                    ; preds = %8093, %8010
  %8117 = phi float [ %8113, %8093 ], [ %8090, %8010 ]
  %8118 = phi float [ %8114, %8093 ], [ %8091, %8010 ]
  %8119 = phi float [ %8115, %8093 ], [ %8092, %8010 ]
  %8120 = fmul fast float %8037, 9.843750e-01
  %8121 = fadd fast float %8120, 7.812500e-03
  %8122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8121, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8123 = extractvalue %dx.types.ResRet.f32 %8122, 0
  %8124 = extractvalue %dx.types.ResRet.f32 %8122, 1
  %8125 = extractvalue %dx.types.ResRet.f32 %8122, 2
  %8126 = extractvalue %dx.types.ResRet.f32 %8122, 3
  %8127 = fsub fast float %8125, %8123
  %8128 = fsub fast float %8126, %8124
  %8129 = fmul fast float %8127, %6005
  %8130 = fmul fast float %8128, %6005
  %8131 = fadd fast float %8129, %8123
  %8132 = fadd fast float %8130, %8124
  %8133 = fmul fast float %8131, %5713
  %8134 = fmul fast float %8131, %5714
  %8135 = fmul fast float %8131, %5722
  %8136 = fadd fast float %8133, %8132
  %8137 = fadd fast float %8134, %8132
  %8138 = fadd fast float %8135, %8132
  br i1 %6018, label %8139, label %8162

; <label>:8139                                    ; preds = %8116
  %8140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8141 = extractvalue %dx.types.ResRet.f32 %8140, 0
  %8142 = extractvalue %dx.types.ResRet.f32 %8140, 1
  %8143 = extractvalue %dx.types.ResRet.f32 %8140, 2
  %8144 = fadd fast float %8141, -5.000000e-01
  %8145 = fadd fast float %8142, -5.000000e-01
  %8146 = fadd fast float %8143, -5.000000e-01
  %8147 = fmul fast float %5713, 4.000000e+00
  %8148 = fmul fast float %8147, %8084
  %8149 = fmul fast float %8148, %8144
  %8150 = fmul fast float %5714, 4.000000e+00
  %8151 = fmul fast float %8150, %8085
  %8152 = fmul fast float %8151, %8145
  %8153 = fmul fast float %5722, 4.000000e+00
  %8154 = fmul fast float %8153, %8086
  %8155 = fmul fast float %8154, %8146
  %8156 = fadd fast float %8149, %8136
  %8157 = fadd fast float %8152, %8137
  %8158 = fadd fast float %8155, %8138
  %8159 = call float @dx.op.unary.f32(i32 7, float %8156)  ; Saturate(value)
  %8160 = call float @dx.op.unary.f32(i32 7, float %8157)  ; Saturate(value)
  %8161 = call float @dx.op.unary.f32(i32 7, float %8158)  ; Saturate(value)
  br label %8162

; <label>:8162                                    ; preds = %8139, %8116
  %8163 = phi float [ %8159, %8139 ], [ %8136, %8116 ]
  %8164 = phi float [ %8160, %8139 ], [ %8137, %8116 ]
  %8165 = phi float [ %8161, %8139 ], [ %8138, %8116 ]
  %8166 = call float @dx.op.binary.f32(i32 35, float %8164, float %8165)  ; FMax(a,b)
  %8167 = call float @dx.op.binary.f32(i32 35, float %8163, float %8166)  ; FMax(a,b)
  %8168 = fsub fast float 1.000000e+00, %8167
  %8169 = call float @dx.op.binary.f32(i32 35, float %8046, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8170 = fdiv fast float %4427, %8169
  %8171 = fmul fast float %6565, %8170
  %8172 = fmul fast float %6567, %8170
  %8173 = fmul fast float %6569, %8170
  %8174 = call float @dx.op.unary.f32(i32 21, float %8171)  ; Exp(value)
  %8175 = call float @dx.op.unary.f32(i32 21, float %8172)  ; Exp(value)
  %8176 = call float @dx.op.unary.f32(i32 21, float %8173)  ; Exp(value)
  %8177 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  %8178 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8179 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8180 = select i1 %6562, float %8177, float 0.000000e+00
  %8181 = select i1 %6563, float %8178, float 0.000000e+00
  %8182 = select i1 %6564, float %8179, float 0.000000e+00
  %8183 = fsub fast float -0.000000e+00, %5716
  %8184 = fsub fast float -0.000000e+00, %5717
  %8185 = fsub fast float -0.000000e+00, %5718
  %8186 = call float @dx.op.dot3.f32(i32 55, float %6656, float %6657, float %6658, float %8183, float %8184, float %8185)  ; Dot3(ax,ay,az,bx,by,bz)
  %8187 = call float @dx.op.unary.f32(i32 7, float %8186)  ; Saturate(value)
  %8188 = fmul fast float %8187, 9.843750e-01
  %8189 = fadd fast float %8188, 7.812500e-03
  %8190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8189, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8191 = extractvalue %dx.types.ResRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.ResRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.ResRet.f32 %8190, 2
  %8194 = extractvalue %dx.types.ResRet.f32 %8190, 3
  %8195 = fsub fast float %8193, %8191
  %8196 = fsub fast float %8194, %8192
  %8197 = fmul fast float %8195, %6005
  %8198 = fmul fast float %8196, %6005
  %8199 = fadd fast float %8197, %8191
  %8200 = fadd fast float %8198, %8192
  %8201 = fmul fast float %8199, %5713
  %8202 = fmul fast float %8199, %5714
  %8203 = fmul fast float %8199, %5722
  %8204 = fadd fast float %8201, %8200
  %8205 = fadd fast float %8202, %8200
  %8206 = fadd fast float %8203, %8200
  br i1 %6018, label %8207, label %8230

; <label>:8207                                    ; preds = %8162
  %8208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8209 = extractvalue %dx.types.ResRet.f32 %8208, 0
  %8210 = extractvalue %dx.types.ResRet.f32 %8208, 1
  %8211 = extractvalue %dx.types.ResRet.f32 %8208, 2
  %8212 = fadd fast float %8209, -5.000000e-01
  %8213 = fadd fast float %8210, -5.000000e-01
  %8214 = fadd fast float %8211, -5.000000e-01
  %8215 = fmul fast float %5713, 4.000000e+00
  %8216 = fmul fast float %8215, %8084
  %8217 = fmul fast float %8216, %8212
  %8218 = fmul fast float %5714, 4.000000e+00
  %8219 = fmul fast float %8218, %8085
  %8220 = fmul fast float %8219, %8213
  %8221 = fmul fast float %5722, 4.000000e+00
  %8222 = fmul fast float %8221, %8086
  %8223 = fmul fast float %8222, %8214
  %8224 = fadd fast float %8217, %8204
  %8225 = fadd fast float %8220, %8205
  %8226 = fadd fast float %8223, %8206
  %8227 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8228 = call float @dx.op.unary.f32(i32 7, float %8225)  ; Saturate(value)
  %8229 = call float @dx.op.unary.f32(i32 7, float %8226)  ; Saturate(value)
  br label %8230

; <label>:8230                                    ; preds = %8207, %8162
  %8231 = phi float [ %8227, %8207 ], [ %8204, %8162 ]
  %8232 = phi float [ %8228, %8207 ], [ %8205, %8162 ]
  %8233 = phi float [ %8229, %8207 ], [ %8206, %8162 ]
  %8234 = call float @dx.op.binary.f32(i32 35, float %8232, float %8233)  ; FMax(a,b)
  %8235 = call float @dx.op.binary.f32(i32 35, float %8231, float %8234)  ; FMax(a,b)
  %8236 = fsub fast float 1.000000e+00, %8235
  %8237 = fmul fast float %5739, %6629
  %8238 = fadd fast float %6631, %8237
  %8239 = call float @dx.op.unary.f32(i32 7, float %8238)  ; Saturate(value)
  %8240 = fsub fast float %6656, %5730
  %8241 = fsub fast float %6657, %5731
  %8242 = fsub fast float %6658, %5732
  %8243 = call float @dx.op.dot3.f32(i32 55, float %8240, float %8241, float %8242, float %8240, float %8241, float %8242)  ; Dot3(ax,ay,az,bx,by,bz)
  %8244 = call float @dx.op.unary.f32(i32 25, float %8243)  ; Rsqrt(value)
  %8245 = fmul fast float %8244, %8240
  %8246 = fmul fast float %8244, %8241
  %8247 = fmul fast float %8244, %8242
  %8248 = call float @dx.op.dot3.f32(i32 55, float %8183, float %8184, float %8185, float %8245, float %8246, float %8247)  ; Dot3(ax,ay,az,bx,by,bz)
  %8249 = fmul fast float %8248, %8248
  %8250 = call float @dx.op.unary.f32(i32 6, float %8187)  ; FAbs(value)
  %8251 = call float @dx.op.binary.f32(i32 35, float %8239, float 0x3F847AE140000000)  ; FMax(a,b)
  %8252 = fmul fast float %8251, %8251
  %8253 = fmul fast float %8252, %8252
  %8254 = fsub fast float 1.000000e+00, %8253
  %8255 = fmul fast float %8048, %8254
  %8256 = fadd fast float %8255, %8253
  %8257 = bitcast float %8256 to i32
  %8258 = ashr i32 %8257, 1
  %8259 = add nsw i32 %8258, 532487669
  %8260 = bitcast i32 %8259 to float
  %8261 = fadd fast float %8260, %5724
  %8262 = fmul fast float %8253, %8249
  %8263 = fsub fast float 1.000000e+00, %8249
  %8264 = fadd fast float %8263, %8262
  %8265 = fmul fast float %8250, %8250
  %8266 = fmul fast float %8265, %8254
  %8267 = fadd fast float %8266, %8253
  %8268 = bitcast float %8267 to i32
  %8269 = ashr i32 %8268, 1
  %8270 = add nsw i32 %8269, 532487669
  %8271 = bitcast i32 %8270 to float
  %8272 = fadd fast float %8271, %8250
  %8273 = fmul fast float %8264, %8264
  %8274 = fmul fast float %8273, %8261
  %8275 = fmul fast float %8274, %8272
  %8276 = fdiv fast float 0x3FF0A00000000000, %8275
  %8277 = fmul fast float %8276, %8253
  %8278 = fmul fast float %8187, %8180
  %8279 = fmul fast float %8187, %8181
  %8280 = fmul fast float %8187, %8182
  %8281 = fmul fast float %8278, %8236
  %8282 = fmul fast float %8281, %8277
  %8283 = fmul fast float %8279, %8236
  %8284 = fmul fast float %8283, %8277
  %8285 = fmul fast float %8280, %8236
  %8286 = fmul fast float %8285, %8277
  %8287 = fmul fast float %8117, %8071
  %8288 = fmul fast float %8118, %8071
  %8289 = fmul fast float %8119, %8071
  %8290 = fsub fast float 1.000000e+00, %8038
  %8291 = bitcast float %8290 to i32
  %8292 = sitofp i32 %8291 to float
  %8293 = fmul fast float %8292, 5.000000e+00
  %8294 = fadd fast float %8293, 0xC1EFBF8940000000
  %8295 = fptosi float %8294 to i32
  %8296 = bitcast i32 %8295 to float
  %8297 = fmul fast float %8296, %5080
  %8298 = fmul fast float %8168, %8297
  %8299 = fmul fast float %8298, %6557
  %8300 = fmul fast float %8298, %6558
  %8301 = fmul fast float %8298, %6559
  %8302 = fadd fast float %8299, %8287
  %8303 = fadd fast float %8300, %8288
  %8304 = fadd fast float %8301, %8289
  %8305 = fmul fast float %8302, %8043
  %8306 = fmul fast float %8303, %8043
  %8307 = fmul fast float %8304, %8043
  %8308 = fmul fast float %8043, %8026
  %8309 = fmul fast float %8308, %8168
  %8310 = fmul fast float %8043, %8027
  %8311 = fmul fast float %8310, %8168
  %8312 = fmul fast float %8043, %8028
  %8313 = fmul fast float %8312, %8168
  %8314 = fadd fast float %8305, %8282
  %8315 = fadd fast float %8306, %8284
  %8316 = fadd fast float %8307, %8286
  %8317 = fmul fast float %8314, %8026
  %8318 = fmul fast float %8315, %8027
  %8319 = fmul fast float %8316, %8028
  %8320 = fadd fast float %8309, %6646
  %8321 = fmul fast float %8320, %5076
  %8322 = fadd fast float %8311, %6648
  %8323 = fmul fast float %8322, %5076
  %8324 = fadd fast float %8313, %6650
  %8325 = fmul fast float %8324, %5076
  %8326 = fadd fast float %8317, %6610
  %8327 = fmul fast float %8326, %5076
  %8328 = fadd fast float %8318, %6613
  %8329 = fmul fast float %8328, %5076
  %8330 = fadd fast float %8319, %6616
  %8331 = fmul fast float %8330, %5076
  br label %8332

; <label>:8332                                    ; preds = %8230, %7944, %6540
  %8333 = phi float [ %6611, %6540 ], [ %6611, %7944 ], [ %8327, %8230 ]
  %8334 = phi float [ %6614, %6540 ], [ %6614, %7944 ], [ %8329, %8230 ]
  %8335 = phi float [ %6617, %6540 ], [ %6617, %7944 ], [ %8331, %8230 ]
  %8336 = phi float [ %6647, %6540 ], [ %6647, %7944 ], [ %8321, %8230 ]
  %8337 = phi float [ %6649, %6540 ], [ %6649, %7944 ], [ %8323, %8230 ]
  %8338 = phi float [ %6651, %6540 ], [ %6651, %7944 ], [ %8325, %8230 ]
  %8339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.i32 %8339, 0
  %8341 = icmp eq i32 %8340, 0
  br i1 %8341, label %9159, label %8342

; <label>:8342                                    ; preds = %8332
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 2
  %8345 = extractvalue %dx.types.CBufRet.f32 %8343, 3
  %8346 = fmul fast float %8344, %109
  %8347 = fmul fast float %8345, %110
  %8348 = fptoui float %8346 to i32
  %8349 = fptoui float %8347 to i32
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 0
  %8352 = extractvalue %dx.types.CBufRet.f32 %8350, 2
  %8353 = extractvalue %dx.types.CBufRet.f32 %8350, 3
  %8354 = fadd fast float %97, -4.000000e+00
  %8355 = call float @dx.op.binary.f32(i32 35, float %8354, float 0.000000e+00)  ; FMax(a,b)
  %8356 = fadd fast float %8355, %8351
  %8357 = fmul fast float %8356, %8352
  %8358 = call float @dx.op.unary.f32(i32 23, float %8357)  ; Log(value)
  %8359 = fmul fast float %8358, %8353
  %8360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8361 = extractvalue %dx.types.CBufRet.f32 %8360, 2
  %8362 = fmul fast float %8359, %8361
  %8363 = call float @dx.op.unary.f32(i32 7, float %8362)  ; Saturate(value)
  %8364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.i32 %8364, 1
  %8366 = add i32 %8365, -1
  %8367 = uitofp i32 %8365 to float
  %8368 = fmul fast float %8367, %8363
  %8369 = fptoui float %8368 to i32
  %8370 = call i32 @dx.op.binary.i32(i32 40, i32 %8369, i32 %8366)  ; UMin(a,b)
  %8371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8372 = extractvalue %dx.types.CBufRet.i32 %8371, 2
  %8373 = extractvalue %dx.types.CBufRet.i32 %8371, 3
  %8374 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8349, i32 %8372, i32 %8348)  ; UMad(a,b,c)
  %8375 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8370, i32 %8373, i32 %8374)  ; UMad(a,b,c)
  %8376 = add nsw i32 %8340, -1
  %8377 = call i32 @dx.op.binary.i32(i32 37, i32 %8376, i32 0)  ; IMax(a,b)
  %8378 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %8379 = fptoui float %8378 to i32
  %8380 = lshr i32 %8379, 5
  %8381 = call i32 @dx.op.binary.i32(i32 40, i32 %8380, i32 8191)  ; UMin(a,b)
  %8382 = shl i32 %8381, 2
  %8383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8382, i32 undef)  ; BufferLoad(srv,index,wot)
  %8384 = extractvalue %dx.types.ResRet.i32 %8383, 0
  %8385 = lshr i32 %8384, 16
  %8386 = and i32 %8384, 65535
  %8387 = lshr i32 %8384, 21
  %8388 = lshr i32 %8386, 5
  %8389 = call i32 @dx.op.binary.i32(i32 40, i32 %8388, i32 %8377)  ; UMin(a,b)
  %8390 = icmp ugt i32 %8387, %8389
  br i1 %8390, label %9159, label %8391

; <label>:8391                                    ; preds = %8342
  br label %8392

; <label>:8392                                    ; preds = %9149, %8391
  %8393 = phi i32 [ %9156, %9149 ], [ %8387, %8391 ]
  %8394 = phi float [ %9150, %9149 ], [ %8333, %8391 ]
  %8395 = phi float [ %9151, %9149 ], [ %8334, %8391 ]
  %8396 = phi float [ %9152, %9149 ], [ %8335, %8391 ]
  %8397 = phi float [ %9153, %9149 ], [ %8336, %8391 ]
  %8398 = phi float [ %9154, %9149 ], [ %8337, %8391 ]
  %8399 = phi float [ %9155, %9149 ], [ %8338, %8391 ]
  %8400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.i32 %8400, 0
  %8402 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8375, i32 %8401, i32 %8393)  ; UMad(a,b,c)
  %8403 = shl i32 %8402, 2
  %8404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8403, i32 undef)  ; BufferLoad(srv,index,wot)
  %8405 = extractvalue %dx.types.ResRet.i32 %8404, 0
  %8406 = shl i32 %8393, 5
  %8407 = sub nsw i32 %8385, %8406
  %8408 = call i32 @dx.op.binary.i32(i32 37, i32 %8407, i32 0)  ; IMax(a,b)
  %8409 = call i32 @dx.op.binary.i32(i32 38, i32 %8408, i32 31)  ; IMin(a,b)
  %8410 = sub nsw i32 1, %8385
  %8411 = add nsw i32 %8410, %8386
  %8412 = call i32 @dx.op.binary.i32(i32 37, i32 %8411, i32 0)  ; IMax(a,b)
  %8413 = call i32 @dx.op.binary.i32(i32 38, i32 %8412, i32 32)  ; IMin(a,b)
  %8414 = and i32 %8413, 31
  %8415 = shl i32 -1, %8414
  %8416 = xor i32 %8415, -1
  %8417 = and i32 %8409, 31
  %8418 = shl i32 %8416, %8417
  %8419 = icmp eq i32 %8413, 32
  %8420 = select i1 %8419, i32 -1, i32 %8418
  %8421 = and i32 %8420, %8405
  %8422 = icmp eq i32 %8421, 0
  br i1 %8422, label %9149, label %8423

; <label>:8423                                    ; preds = %8392
  br label %8424

; <label>:8424                                    ; preds = %8559, %8423
  %8425 = phi i32 [ %8436, %8559 ], [ %8421, %8423 ]
  %8426 = phi float [ %8560, %8559 ], [ %8394, %8423 ]
  %8427 = phi float [ %8561, %8559 ], [ %8395, %8423 ]
  %8428 = phi float [ %8562, %8559 ], [ %8396, %8423 ]
  %8429 = phi float [ %8563, %8559 ], [ %8397, %8423 ]
  %8430 = phi float [ %8564, %8559 ], [ %8398, %8423 ]
  %8431 = phi float [ %8565, %8559 ], [ %8399, %8423 ]
  %8432 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8425)  ; FirstbitLo(value)
  %8433 = add i32 %8432, %8406
  %8434 = and i32 %8432, 31
  %8435 = shl i32 1, %8434
  %8436 = xor i32 %8435, %8425
  %8437 = mul i32 %8433, 112
  %8438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8437, i32 undef)  ; BufferLoad(srv,index,wot)
  %8439 = extractvalue %dx.types.ResRet.f32 %8438, 0
  %8440 = extractvalue %dx.types.ResRet.f32 %8438, 1
  %8441 = extractvalue %dx.types.ResRet.f32 %8438, 2
  %8442 = or i32 %8437, 12
  %8443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8442, i32 undef)  ; BufferLoad(srv,index,wot)
  %8444 = extractvalue %dx.types.ResRet.f32 %8443, 0
  %8445 = add i32 %8437, 16
  %8446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8445, i32 undef)  ; BufferLoad(srv,index,wot)
  %8447 = extractvalue %dx.types.ResRet.f32 %8446, 0
  %8448 = extractvalue %dx.types.ResRet.f32 %8446, 1
  %8449 = extractvalue %dx.types.ResRet.f32 %8446, 2
  %8450 = add i32 %8437, 28
  %8451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8450, i32 undef)  ; BufferLoad(srv,index,wot)
  %8452 = extractvalue %dx.types.ResRet.i32 %8451, 0
  %8453 = add i32 %8437, 44
  %8454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8453, i32 undef)  ; BufferLoad(srv,index,wot)
  %8455 = extractvalue %dx.types.ResRet.f32 %8454, 0
  %8456 = add i32 %8437, 48
  %8457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8456, i32 undef)  ; BufferLoad(srv,index,wot)
  %8458 = extractvalue %dx.types.ResRet.f32 %8457, 0
  %8459 = extractvalue %dx.types.ResRet.f32 %8457, 1
  %8460 = extractvalue %dx.types.ResRet.f32 %8457, 2
  %8461 = extractvalue %dx.types.ResRet.f32 %8457, 3
  %8462 = add i32 %8437, 64
  %8463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8462, i32 undef)  ; BufferLoad(srv,index,wot)
  %8464 = extractvalue %dx.types.ResRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.ResRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.ResRet.f32 %8463, 2
  %8467 = extractvalue %dx.types.ResRet.f32 %8463, 3
  %8468 = add i32 %8437, 80
  %8469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8468, i32 undef)  ; BufferLoad(srv,index,wot)
  %8470 = extractvalue %dx.types.ResRet.f32 %8469, 1
  %8471 = extractvalue %dx.types.ResRet.f32 %8469, 2
  %8472 = add i32 %8437, 92
  %8473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8472, i32 undef)  ; BufferLoad(srv,index,wot)
  %8474 = extractvalue %dx.types.ResRet.i32 %8473, 0
  %8475 = call float @dx.op.dot3.f32(i32 55, float %8439, float %8440, float %8441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8476 = select i1 %226, float %8470, float %8439
  %8477 = select i1 %226, float %8475, float %8440
  %8478 = select i1 %226, float %8471, float %8441
  %8479 = and i32 %8474, 65535
  %8480 = uitofp i32 %8479 to float
  %8481 = lshr i32 %8474, 16
  %8482 = uitofp i32 %8481 to float
  %8483 = and i32 %8452, 65535
  %8484 = and i32 %8452, 50331648
  %8485 = icmp slt i32 %8452, 0
  %8486 = icmp eq i32 %8484, 33554432
  %8487 = fsub fast float %8458, %164
  %8488 = fsub fast float %8459, %165
  %8489 = fsub fast float %8460, %166
  %8490 = call float @dx.op.dot3.f32(i32 55, float %8487, float %8488, float %8489, float %8487, float %8488, float %8489)  ; Dot3(ax,ay,az,bx,by,bz)
  %8491 = call float @dx.op.unary.f32(i32 24, float %8490)  ; Sqrt(value)
  %8492 = fdiv fast float 1.000000e+00, %8491
  %8493 = fmul fast float %8492, %8487
  %8494 = fmul fast float %8492, %8488
  %8495 = fmul fast float %8492, %8489
  %8496 = fadd fast float %8491, %8444
  %8497 = fdiv fast float 1.000000e+00, %8496
  %8498 = fmul float %8455, %8497
  %8499 = fmul float %8498, %8498
  %8500 = call float @dx.op.unary.f32(i32 7, float %8499)  ; Saturate(value)
  br i1 %8486, label %8501, label %8522

; <label>:8501                                    ; preds = %8424
  %8502 = fmul fast float %8466, %8447
  %8503 = fmul fast float %8466, %8448
  %8504 = fmul fast float %8466, %8449
  %8505 = fadd fast float %8487, %8502
  %8506 = fadd fast float %8488, %8503
  %8507 = fadd fast float %8489, %8504
  %8508 = call float @dx.op.dot3.f32(i32 55, float %8505, float %8506, float %8507, float %8505, float %8506, float %8507)  ; Dot3(ax,ay,az,bx,by,bz)
  %8509 = call float @dx.op.unary.f32(i32 25, float %8508)  ; Rsqrt(value)
  %8510 = fmul fast float %8509, %8505
  %8511 = fmul fast float %8509, %8506
  %8512 = fmul fast float %8509, %8507
  %8513 = fsub fast float %164, %8458
  %8514 = fsub fast float %165, %8459
  %8515 = fsub fast float %166, %8460
  %8516 = fsub fast float -0.000000e+00, %8513
  %8517 = fsub fast float -0.000000e+00, %8514
  %8518 = fsub fast float -0.000000e+00, %8515
  %8519 = call float @dx.op.dot3.f32(i32 55, float %8516, float %8517, float %8518, float %8447, float %8448, float %8449)  ; Dot3(ax,ay,az,bx,by,bz)
  %8520 = fcmp fast ogt float %8519, 0.000000e+00
  %8521 = uitofp i1 %8520 to float
  br label %8522

; <label>:8522                                    ; preds = %8501, %8424
  %8523 = phi float [ %8521, %8501 ], [ 1.000000e+00, %8424 ]
  %8524 = phi float [ %8510, %8501 ], [ %8493, %8424 ]
  %8525 = phi float [ %8511, %8501 ], [ %8494, %8424 ]
  %8526 = phi float [ %8512, %8501 ], [ %8495, %8424 ]
  %8527 = call float @dx.op.dot3.f32(i32 55, float %8447, float %8448, float %8449, float %8524, float %8525, float %8526)  ; Dot3(ax,ay,az,bx,by,bz)
  %8528 = fmul fast float %8527, %8527
  %8529 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8530 = fsub fast float 1.000000e+00, %8529
  %8531 = fmul fast float %8530, 5.000000e-01
  %8532 = fcmp fast ogt float %8527, 0.000000e+00
  %8533 = fsub fast float 1.000000e+00, %8531
  %8534 = select i1 %8532, float %8531, float %8533
  %8535 = fmul fast float %8534, %8482
  %8536 = fadd fast float %8535, %8480
  %8537 = fmul fast float %8536, 0x3EF0001000000000
  %8538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8537, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8539 = extractvalue %dx.types.ResRet.f32 %8538, 0
  %8540 = fmul fast float %8527, %8464
  %8541 = fadd fast float %8540, %8465
  %8542 = call float @dx.op.unary.f32(i32 7, float %8541)  ; Saturate(value)
  %8543 = select i1 %8486, float 1.000000e+00, float %8542
  %8544 = select i1 %8486, float %8542, float 1.000000e+00
  %8545 = fmul fast float %8491, %8461
  %8546 = fsub fast float 1.000000e+00, %8545
  %8547 = fmul fast float %8546, %8467
  %8548 = call float @dx.op.unary.f32(i32 7, float %8547)  ; Saturate(value)
  %8549 = fmul fast float %8548, %8544
  %8550 = fmul fast float %8549, 2.000000e+00
  %8551 = fsub fast float 3.000000e+00, %8550
  %8552 = fmul fast float %8539, %8523
  %8553 = fmul fast float %8549, %8549
  %8554 = fmul fast float %8553, %8552
  %8555 = fmul fast float %8554, %8551
  %8556 = call float @dx.op.binary.f32(i32 36, float %8555, float %8555)  ; FMin(a,b)
  %8557 = call float @dx.op.binary.f32(i32 36, float %8555, float %8556)  ; FMin(a,b)
  %8558 = fcmp fast ogt float %8557, 0.000000e+00
  br i1 %8558, label %8567, label %8559, !dx.controlflow.hints !132

; <label>:8559                                    ; preds = %9102, %8713, %8522
  %8560 = phi float [ %8426, %8713 ], [ %8426, %8522 ], [ %9145, %9102 ]
  %8561 = phi float [ %8427, %8713 ], [ %8427, %8522 ], [ %9146, %9102 ]
  %8562 = phi float [ %8428, %8713 ], [ %8428, %8522 ], [ %9147, %9102 ]
  %8563 = phi float [ %8429, %8713 ], [ %8429, %8522 ], [ %9139, %9102 ]
  %8564 = phi float [ %8430, %8713 ], [ %8430, %8522 ], [ %9140, %9102 ]
  %8565 = phi float [ %8431, %8713 ], [ %8431, %8522 ], [ %9141, %9102 ]
  %8566 = icmp eq i32 %8425, %8435
  br i1 %8566, label %9148, label %8424

; <label>:8567                                    ; preds = %8522
  %8568 = icmp eq i32 %8483, 255
  br i1 %8568, label %8713, label %8569, !dx.controlflow.hints !133

; <label>:8569                                    ; preds = %8567
  %8570 = mul nuw nsw i32 %8483, 176
  %8571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8570, i32 undef)  ; BufferLoad(srv,index,wot)
  %8572 = extractvalue %dx.types.ResRet.f32 %8571, 0
  %8573 = extractvalue %dx.types.ResRet.f32 %8571, 1
  %8574 = extractvalue %dx.types.ResRet.f32 %8571, 2
  %8575 = extractvalue %dx.types.ResRet.f32 %8571, 3
  %8576 = add nuw nsw i32 %8570, 16
  %8577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8576, i32 undef)  ; BufferLoad(srv,index,wot)
  %8578 = extractvalue %dx.types.ResRet.f32 %8577, 0
  %8579 = extractvalue %dx.types.ResRet.f32 %8577, 1
  %8580 = add nuw nsw i32 %8570, 32
  %8581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8580, i32 undef)  ; BufferLoad(srv,index,wot)
  %8582 = extractvalue %dx.types.ResRet.f32 %8581, 0
  %8583 = extractvalue %dx.types.ResRet.f32 %8581, 1
  %8584 = extractvalue %dx.types.ResRet.f32 %8581, 2
  %8585 = add nuw nsw i32 %8570, 48
  %8586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8585, i32 undef)  ; BufferLoad(srv,index,wot)
  %8587 = extractvalue %dx.types.ResRet.f32 %8586, 0
  %8588 = extractvalue %dx.types.ResRet.f32 %8586, 1
  %8589 = extractvalue %dx.types.ResRet.f32 %8586, 2
  %8590 = extractvalue %dx.types.ResRet.f32 %8586, 3
  %8591 = add nuw nsw i32 %8570, 64
  %8592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8591, i32 undef)  ; BufferLoad(srv,index,wot)
  %8593 = extractvalue %dx.types.ResRet.f32 %8592, 0
  %8594 = extractvalue %dx.types.ResRet.f32 %8592, 1
  %8595 = extractvalue %dx.types.ResRet.f32 %8592, 2
  %8596 = extractvalue %dx.types.ResRet.f32 %8592, 3
  %8597 = add nuw nsw i32 %8570, 80
  %8598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8597, i32 undef)  ; BufferLoad(srv,index,wot)
  %8599 = extractvalue %dx.types.ResRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.ResRet.f32 %8598, 1
  %8601 = extractvalue %dx.types.ResRet.f32 %8598, 2
  %8602 = extractvalue %dx.types.ResRet.f32 %8598, 3
  %8603 = add nuw nsw i32 %8570, 96
  %8604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8603, i32 undef)  ; BufferLoad(srv,index,wot)
  %8605 = extractvalue %dx.types.ResRet.f32 %8604, 0
  %8606 = extractvalue %dx.types.ResRet.f32 %8604, 1
  %8607 = extractvalue %dx.types.ResRet.f32 %8604, 2
  %8608 = extractvalue %dx.types.ResRet.f32 %8604, 3
  %8609 = bitcast float %8579 to i32
  %8610 = fmul fast float %8584, %116
  %8611 = fmul fast float %8584, %117
  %8612 = fmul fast float %8584, %118
  %8613 = fadd fast float %8610, %164
  %8614 = fadd fast float %8611, %165
  %8615 = fadd fast float %8612, %166
  %8616 = fmul fast float %8613, %8587
  %8617 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8593, float %8616)  ; FMad(a,b,c)
  %8618 = call float @dx.op.tertiary.f32(i32 46, float %8615, float %8599, float %8617)  ; FMad(a,b,c)
  %8619 = fadd fast float %8618, %8605
  %8620 = fmul fast float %8613, %8588
  %8621 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8594, float %8620)  ; FMad(a,b,c)
  %8622 = call float @dx.op.tertiary.f32(i32 46, float %8615, float %8600, float %8621)  ; FMad(a,b,c)
  %8623 = fadd fast float %8622, %8606
  %8624 = fmul fast float %8613, %8589
  %8625 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8595, float %8624)  ; FMad(a,b,c)
  %8626 = call float @dx.op.tertiary.f32(i32 46, float %8615, float %8601, float %8625)  ; FMad(a,b,c)
  %8627 = fadd fast float %8626, %8607
  %8628 = fmul fast float %8613, %8590
  %8629 = call float @dx.op.tertiary.f32(i32 46, float %8614, float %8596, float %8628)  ; FMad(a,b,c)
  %8630 = call float @dx.op.tertiary.f32(i32 46, float %8615, float %8602, float %8629)  ; FMad(a,b,c)
  %8631 = fadd fast float %8630, %8608
  %8632 = fdiv fast float %8619, %8631
  %8633 = fdiv fast float %8623, %8631
  %8634 = fdiv fast float %8627, %8631
  %8635 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8634)  ; FMax(a,b)
  %8636 = fmul fast float %237, 0x401921FB60000000
  %8637 = call float @dx.op.unary.f32(i32 13, float %8636)  ; Sin(value)
  %8638 = call float @dx.op.unary.f32(i32 12, float %8636)  ; Cos(value)
  %8639 = fmul fast float %8638, %8583
  %8640 = call float @dx.op.tertiary.f32(i32 46, float %8637, float %8583, float 0.000000e+00)  ; FMad(a,b,c)
  %8641 = fmul fast float %8583, %8637
  %8642 = fsub fast float -0.000000e+00, %8641
  %8643 = call float @dx.op.tertiary.f32(i32 46, float %8638, float %8583, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8644

; <label>:8644                                    ; preds = %8644, %8569
  %8645 = phi float [ 0.000000e+00, %8569 ], [ %8677, %8644 ]
  %8646 = phi float [ 0.000000e+00, %8569 ], [ %8679, %8644 ]
  %8647 = phi i32 [ 0, %8569 ], [ %8680, %8644 ]
  %8648 = mul i32 %8647, 2
  %8649 = add i32 0, %8648
  %8650 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8649
  %8651 = load float, float* %8650, align 4
  %8652 = mul i32 %8647, 2
  %8653 = add i32 1, %8652
  %8654 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8653
  %8655 = load float, float* %8654, align 4
  %8656 = fmul fast float %8639, %8651
  %8657 = call float @dx.op.tertiary.f32(i32 46, float %8655, float %8642, float %8656)  ; FMad(a,b,c)
  %8658 = fmul fast float %8651, %8640
  %8659 = call float @dx.op.tertiary.f32(i32 46, float %8655, float %8643, float %8658)  ; FMad(a,b,c)
  %8660 = fadd fast float %8657, %8632
  %8661 = fadd fast float %8659, %8633
  %8662 = fmul fast float %8660, %8578
  %8663 = fmul fast float %8661, %8578
  %8664 = call float @dx.op.binary.f32(i32 35, float %8662, float %8574)  ; FMax(a,b)
  %8665 = call float @dx.op.binary.f32(i32 35, float %8663, float %8574)  ; FMax(a,b)
  %8666 = call float @dx.op.binary.f32(i32 36, float %8664, float %8575)  ; FMin(a,b)
  %8667 = call float @dx.op.binary.f32(i32 36, float %8665, float %8575)  ; FMin(a,b)
  %8668 = fadd fast float %8666, %8572
  %8669 = fadd fast float %8667, %8573
  %8670 = uitofp i32 %8609 to float
  %8671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8668, float %8669, float %8670, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8672 = extractvalue %dx.types.ResRet.f32 %8671, 0
  %8673 = fsub fast float %8672, %8635
  %8674 = fsub fast float %8673, %8582
  %8675 = fcmp fast ogt float %8674, 0.000000e+00
  %8676 = select i1 %8675, float 1.000000e+00, float 0.000000e+00
  %8677 = fadd fast float %8676, %8645
  %8678 = select i1 %8675, float %8674, float 0.000000e+00
  %8679 = fadd fast float %8678, %8646
  %8680 = add nuw nsw i32 %8647, 1
  %8681 = icmp eq i32 %8680, 8
  br i1 %8681, label %8682, label %8644

; <label>:8682                                    ; preds = %8644
  %8683 = fdiv fast float 1.000000e+00, %8677
  %8684 = fmul fast float %8683, %8679
  %8685 = fdiv fast float 1.000000e+00, %8635
  %8686 = fmul fast float %8684, %8685
  %8687 = call float @dx.op.unary.f32(i32 7, float %8686)  ; Saturate(value)
  %8688 = call float @dx.op.binary.f32(i32 35, float %8687, float 0.000000e+00)  ; FMax(a,b)
  %8689 = fmul fast float %8677, 1.250000e-01
  %8690 = call float @dx.op.unary.f32(i32 7, float %8689)  ; Saturate(value)
  %8691 = fmul fast float %8690, 2.000000e+00
  %8692 = fadd fast float %8691, -1.000000e+00
  %8693 = fcmp fast ogt float %8692, 0.000000e+00
  %8694 = fcmp fast olt float %8692, 0.000000e+00
  %8695 = zext i1 %8693 to i32
  %8696 = zext i1 %8694 to i32
  %8697 = sub nsw i32 %8695, %8696
  %8698 = sitofp i32 %8697 to float
  %8699 = fmul fast float %8698, %8692
  %8700 = fsub fast float 1.000000e+00, %8699
  %8701 = fmul fast float %8700, %8700
  %8702 = fmul fast float %8701, %8700
  %8703 = fsub fast float %8700, %8702
  %8704 = fmul fast float %8703, %8688
  %8705 = fsub fast float 1.000000e+00, %8702
  %8706 = fsub fast float %8705, %8704
  %8707 = fmul fast float %8698, 5.000000e-01
  %8708 = fmul fast float %8707, %8706
  %8709 = fsub fast float -5.000000e-01, %8708
  %8710 = fmul fast float %8709, %8543
  %8711 = fadd fast float %8710, 1.000000e+00
  %8712 = fmul fast float %8711, %8555
  br label %8713

; <label>:8713                                    ; preds = %8682, %8567
  %8714 = phi float [ %8712, %8682 ], [ %8555, %8567 ]
  %8715 = call float @dx.op.binary.f32(i32 36, float %8714, float %8714)  ; FMin(a,b)
  %8716 = call float @dx.op.binary.f32(i32 36, float %8714, float %8715)  ; FMin(a,b)
  %8717 = fcmp fast ogt float %8716, 0.000000e+00
  br i1 %8717, label %8718, label %8559, !dx.controlflow.hints !134

; <label>:8718                                    ; preds = %8713
  %8719 = fmul fast float %8714, %8476
  %8720 = fmul fast float %8714, %8477
  %8721 = fmul fast float %8714, %8478
  %8722 = fsub fast float %8460, %5512
  %8723 = fcmp fast ogt float %8722, 0.000000e+00
  %8724 = fsub fast float %166, %5512
  %8725 = fcmp fast ogt float %8724, 0.000000e+00
  %8726 = xor i1 %8725, %8723
  %8727 = fsub fast float %5512, %8460
  %8728 = fmul fast float %8727, 2.000000e+00
  %8729 = fadd fast float %8728, %8460
  %8730 = select i1 %8726, float %8460, float %8729
  %8731 = fsub fast float %8730, %166
  %8732 = call float @dx.op.dot3.f32(i32 55, float %8487, float %8488, float %8731, float %8487, float %8488, float %8731)  ; Dot3(ax,ay,az,bx,by,bz)
  %8733 = call float @dx.op.unary.f32(i32 25, float %8732)  ; Rsqrt(value)
  %8734 = fmul fast float %8733, %8487
  %8735 = fmul fast float %8733, %8488
  %8736 = fmul fast float %8733, %8731
  %8737 = fsub fast float %5512, %166
  %8738 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8737)  ; Dot3(ax,ay,az,bx,by,bz)
  %8739 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8734, float %8735, float %8736)  ; Dot3(ax,ay,az,bx,by,bz)
  %8740 = fdiv fast float 1.000000e+00, %8739
  %8741 = fmul fast float %8740, %8738
  %8742 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8724, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8743 = fcmp fast ogt float %8742, 0.000000e+00
  %8744 = fcmp fast olt float %8742, 0.000000e+00
  %8745 = zext i1 %8743 to i32
  %8746 = zext i1 %8744 to i32
  %8747 = sub nsw i32 %8745, %8746
  %8748 = sitofp i32 %8747 to float
  %8749 = fsub fast float %8730, %5512
  %8750 = call float @dx.op.dot3.f32(i32 55, float %8487, float %8488, float %8749, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8751 = fcmp fast ogt float %8750, 0.000000e+00
  %8752 = fcmp fast olt float %8750, 0.000000e+00
  %8753 = zext i1 %8751 to i32
  %8754 = zext i1 %8752 to i32
  %8755 = sub nsw i32 %8753, %8754
  %8756 = sitofp i32 %8755 to float
  %8757 = fcmp fast une float %8748, %8756
  br i1 %8757, label %8758, label %8768

; <label>:8758                                    ; preds = %8718
  %8759 = fmul fast float %8741, %8736
  %8760 = fmul fast float %8741, %8735
  %8761 = fmul fast float %8741, %8734
  %8762 = fmul fast float %8761, %8761
  %8763 = fmul fast float %8760, %8760
  %8764 = fadd fast float %8762, %8763
  %8765 = fmul fast float %8759, %8759
  %8766 = fadd fast float %8764, %8765
  %8767 = call float @dx.op.unary.f32(i32 24, float %8766)  ; Sqrt(value)
  br label %8780

; <label>:8768                                    ; preds = %8718
  %8769 = icmp slt i32 %8747, 0
  br i1 %8769, label %8770, label %8780

; <label>:8770                                    ; preds = %8768
  %8771 = fsub fast float %164, %8458
  %8772 = fsub fast float %165, %8459
  %8773 = fsub fast float %166, %8730
  %8774 = fmul fast float %8771, %8771
  %8775 = fmul fast float %8772, %8772
  %8776 = fadd fast float %8774, %8775
  %8777 = fmul fast float %8773, %8773
  %8778 = fadd fast float %8776, %8777
  %8779 = call float @dx.op.unary.f32(i32 24, float %8778)  ; Sqrt(value)
  br label %8780

; <label>:8780                                    ; preds = %8770, %8768, %8758
  %8781 = phi float [ %8767, %8758 ], [ %8779, %8770 ], [ 0.000000e+00, %8768 ]
  %8782 = and i1 %8725, %8723
  %8783 = fsub fast float -0.000000e+00, %8781
  %8784 = select i1 %8782, float -0.000000e+00, float %8783
  %8785 = fmul fast float %5509, 0x3FF7154760000000
  %8786 = fmul fast float %8785, %8784
  %8787 = fmul fast float %5510, 0x3FF7154760000000
  %8788 = fmul fast float %8787, %8784
  %8789 = fmul fast float %5511, 0x3FF7154760000000
  %8790 = fmul fast float %8789, %8784
  %8791 = call float @dx.op.unary.f32(i32 21, float %8786)  ; Exp(value)
  %8792 = call float @dx.op.unary.f32(i32 21, float %8788)  ; Exp(value)
  %8793 = call float @dx.op.unary.f32(i32 21, float %8790)  ; Exp(value)
  %8794 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8795 = call float @dx.op.unary.f32(i32 7, float %8792)  ; Saturate(value)
  %8796 = call float @dx.op.unary.f32(i32 7, float %8793)  ; Saturate(value)
  %8797 = fmul fast float %8719, %8794
  %8798 = fmul fast float %8720, %8795
  %8799 = fmul fast float %8721, %8796
  %8800 = fsub fast float %8493, %5709
  %8801 = fsub fast float %8494, %5708
  %8802 = fsub fast float %8495, %5707
  %8803 = call float @dx.op.dot3.f32(i32 55, float %8800, float %8801, float %8802, float %8800, float %8801, float %8802)  ; Dot3(ax,ay,az,bx,by,bz)
  %8804 = call float @dx.op.unary.f32(i32 25, float %8803)  ; Rsqrt(value)
  %8805 = fmul fast float %8804, %8800
  %8806 = fmul fast float %8804, %8801
  %8807 = fmul fast float %8804, %8802
  %8808 = call float @dx.op.dot3.f32(i32 55, float %8493, float %8494, float %8495, float %5716, float %5717, float %5718)  ; Dot3(ax,ay,az,bx,by,bz)
  %8809 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5705, float %5704, float %8805, float %8806, float %8807)  ; Dot3(ax,ay,az,bx,by,bz)
  %8810 = call float @dx.op.unary.f32(i32 7, float %8808)  ; Saturate(value)
  %8811 = fmul fast float %8810, %8500
  %8812 = fmul fast float %8810, %8810
  %8813 = fmul fast float %8812, %5749
  %8814 = call float @dx.op.unary.f32(i32 7, float %8813)  ; Saturate(value)
  %8815 = fmul fast float %8811, %8814
  %8816 = bitcast float %8490 to i32
  %8817 = ashr i32 %8816, 1
  %8818 = sub nsw i32 1597463007, %8817
  %8819 = bitcast i32 %8818 to float
  %8820 = fmul fast float %8819, %8487
  %8821 = fmul fast float %8819, %8488
  %8822 = fmul fast float %8819, %8489
  %8823 = fsub fast float %8820, %5709
  %8824 = fsub fast float %8821, %5708
  %8825 = fsub fast float %8822, %5707
  %8826 = call float @dx.op.dot3.f32(i32 55, float %8823, float %8824, float %8825, float %8823, float %8824, float %8825)  ; Dot3(ax,ay,az,bx,by,bz)
  %8827 = call float @dx.op.unary.f32(i32 25, float %8826)  ; Rsqrt(value)
  %8828 = fmul fast float %8823, %8827
  %8829 = fmul fast float %8824, %8827
  %8830 = fmul fast float %8825, %8827
  %8831 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %8828, float %8829, float %8830)  ; Dot3(ax,ay,az,bx,by,bz)
  %8832 = fmul fast float %8831, %8831
  %8833 = call float @dx.op.unary.f32(i32 6, float %8808)  ; FAbs(value)
  %8834 = fsub fast float 1.000000e+00, %5742
  %8835 = fmul fast float %5724, %5724
  %8836 = fmul fast float %8835, %8834
  %8837 = fadd fast float %8836, %5742
  %8838 = bitcast float %8837 to i32
  %8839 = ashr i32 %8838, 1
  %8840 = add nsw i32 %8839, 532487669
  %8841 = bitcast i32 %8840 to float
  %8842 = fadd fast float %8841, %5724
  %8843 = fmul fast float %5742, %8832
  %8844 = fsub fast float 1.000000e+00, %8832
  %8845 = fadd fast float %8844, %8843
  %8846 = fmul fast float %8833, %8833
  %8847 = fmul fast float %8846, %8834
  %8848 = fadd fast float %8847, %5742
  %8849 = bitcast float %8848 to i32
  %8850 = ashr i32 %8849, 1
  %8851 = add nsw i32 %8850, 532487669
  %8852 = bitcast i32 %8851 to float
  %8853 = fadd fast float %8852, %8833
  %8854 = fmul fast float %8845, %8845
  %8855 = fmul fast float %8854, %8842
  %8856 = fmul fast float %8855, %8853
  %8857 = fdiv fast float 1.000000e+00, %8856
  %8858 = bitcast float %5742 to i32
  %8859 = sitofp i32 %8858 to float
  %8860 = fmul fast float %8859, 0x3FE7F73180000000
  %8861 = fadd fast float %8860, 0x41AFE27C40000000
  %8862 = fptosi float %8861 to i32
  %8863 = bitcast i32 %8862 to float
  %8864 = fmul fast float %8455, 0x3FD80E9D60000000
  %8865 = fmul fast float %8864, %8819
  %8866 = fadd fast float %8863, %8865
  %8867 = bitcast float %8866 to i32
  %8868 = sub nsw i32 2129859010, %8867
  %8869 = bitcast i32 %8868 to float
  %8870 = fmul fast float %5742, %8857
  %8871 = fmul fast float %8870, %8863
  %8872 = fmul fast float %8871, %8869
  %8873 = fmul fast float %5995, 0x3FF9999980000000
  %8874 = fsub fast float 5.000000e+00, %8873
  %8875 = call float @dx.op.unary.f32(i32 6, float %8809)  ; FAbs(value)
  %8876 = fsub fast float 1.000000e+00, %8875
  %8877 = fmul fast float %5995, 0x41D9660740000000
  %8878 = fadd fast float %8877, 0xC1EFBF8940000000
  %8879 = bitcast float %8876 to i32
  %8880 = sitofp i32 %8879 to float
  %8881 = fmul fast float %8880, %8874
  %8882 = fadd fast float %8878, %8881
  %8883 = fptosi float %8882 to i32
  %8884 = bitcast i32 %8883 to float
  %8885 = fsub fast float 1.000000e+00, %5713
  %8886 = fsub fast float 1.000000e+00, %5714
  %8887 = fsub fast float 1.000000e+00, %5722
  %8888 = fmul fast float %8884, %8885
  %8889 = fmul fast float %8884, %8886
  %8890 = fmul fast float %8884, %8887
  %8891 = fadd fast float %8888, %5713
  %8892 = fadd fast float %8889, %5714
  %8893 = fadd fast float %8890, %5722
  br i1 %6018, label %8894, label %8917

; <label>:8894                                    ; preds = %8780
  %8895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8896 = extractvalue %dx.types.ResRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.ResRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.ResRet.f32 %8895, 2
  %8899 = fadd fast float %8896, -5.000000e-01
  %8900 = fadd fast float %8897, -5.000000e-01
  %8901 = fadd fast float %8898, -5.000000e-01
  %8902 = fmul fast float %5713, 4.000000e+00
  %8903 = fmul fast float %8902, %8885
  %8904 = fmul fast float %8903, %8899
  %8905 = fmul fast float %5714, 4.000000e+00
  %8906 = fmul fast float %8905, %8886
  %8907 = fmul fast float %8906, %8900
  %8908 = fmul fast float %5722, 4.000000e+00
  %8909 = fmul fast float %8908, %8887
  %8910 = fmul fast float %8909, %8901
  %8911 = fadd fast float %8904, %8891
  %8912 = fadd fast float %8907, %8892
  %8913 = fadd fast float %8910, %8893
  %8914 = call float @dx.op.unary.f32(i32 7, float %8911)  ; Saturate(value)
  %8915 = call float @dx.op.unary.f32(i32 7, float %8912)  ; Saturate(value)
  %8916 = call float @dx.op.unary.f32(i32 7, float %8913)  ; Saturate(value)
  br label %8917

; <label>:8917                                    ; preds = %8894, %8780
  %8918 = phi float [ %8914, %8894 ], [ %8891, %8780 ]
  %8919 = phi float [ %8915, %8894 ], [ %8892, %8780 ]
  %8920 = phi float [ %8916, %8894 ], [ %8893, %8780 ]
  %8921 = fmul fast float %8808, 9.843750e-01
  %8922 = fadd fast float %8921, 7.812500e-03
  %8923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8922, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8924 = extractvalue %dx.types.ResRet.f32 %8923, 0
  %8925 = extractvalue %dx.types.ResRet.f32 %8923, 1
  %8926 = extractvalue %dx.types.ResRet.f32 %8923, 2
  %8927 = extractvalue %dx.types.ResRet.f32 %8923, 3
  %8928 = fsub fast float %8926, %8924
  %8929 = fsub fast float %8927, %8925
  %8930 = fmul fast float %8928, %6005
  %8931 = fmul fast float %8929, %6005
  %8932 = fadd fast float %8930, %8924
  %8933 = fadd fast float %8931, %8925
  %8934 = fmul fast float %8932, %5713
  %8935 = fmul fast float %8932, %5714
  %8936 = fmul fast float %8932, %5722
  %8937 = fadd fast float %8934, %8933
  %8938 = fadd fast float %8935, %8933
  %8939 = fadd fast float %8936, %8933
  br i1 %6018, label %8940, label %8963

; <label>:8940                                    ; preds = %8917
  %8941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8942 = extractvalue %dx.types.ResRet.f32 %8941, 0
  %8943 = extractvalue %dx.types.ResRet.f32 %8941, 1
  %8944 = extractvalue %dx.types.ResRet.f32 %8941, 2
  %8945 = fadd fast float %8942, -5.000000e-01
  %8946 = fadd fast float %8943, -5.000000e-01
  %8947 = fadd fast float %8944, -5.000000e-01
  %8948 = fmul fast float %5713, 4.000000e+00
  %8949 = fmul fast float %8948, %8885
  %8950 = fmul fast float %8949, %8945
  %8951 = fmul fast float %5714, 4.000000e+00
  %8952 = fmul fast float %8951, %8886
  %8953 = fmul fast float %8952, %8946
  %8954 = fmul fast float %5722, 4.000000e+00
  %8955 = fmul fast float %8954, %8887
  %8956 = fmul fast float %8955, %8947
  %8957 = fadd fast float %8950, %8937
  %8958 = fadd fast float %8953, %8938
  %8959 = fadd fast float %8956, %8939
  %8960 = call float @dx.op.unary.f32(i32 7, float %8957)  ; Saturate(value)
  %8961 = call float @dx.op.unary.f32(i32 7, float %8958)  ; Saturate(value)
  %8962 = call float @dx.op.unary.f32(i32 7, float %8959)  ; Saturate(value)
  br label %8963

; <label>:8963                                    ; preds = %8940, %8917
  %8964 = phi float [ %8960, %8940 ], [ %8937, %8917 ]
  %8965 = phi float [ %8961, %8940 ], [ %8938, %8917 ]
  %8966 = phi float [ %8962, %8940 ], [ %8939, %8917 ]
  %8967 = call float @dx.op.binary.f32(i32 35, float %8965, float %8966)  ; FMax(a,b)
  %8968 = call float @dx.op.binary.f32(i32 35, float %8964, float %8967)  ; FMax(a,b)
  %8969 = fsub fast float 1.000000e+00, %8968
  %8970 = call float @dx.op.binary.f32(i32 35, float %8833, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8971 = fdiv fast float %4427, %8970
  %8972 = fmul fast float %6565, %8971
  %8973 = fmul fast float %6567, %8971
  %8974 = fmul fast float %6569, %8971
  %8975 = call float @dx.op.unary.f32(i32 21, float %8972)  ; Exp(value)
  %8976 = call float @dx.op.unary.f32(i32 21, float %8973)  ; Exp(value)
  %8977 = call float @dx.op.unary.f32(i32 21, float %8974)  ; Exp(value)
  %8978 = call float @dx.op.unary.f32(i32 7, float %8975)  ; Saturate(value)
  %8979 = call float @dx.op.unary.f32(i32 7, float %8976)  ; Saturate(value)
  %8980 = call float @dx.op.unary.f32(i32 7, float %8977)  ; Saturate(value)
  %8981 = select i1 %6562, float %8978, float 0.000000e+00
  %8982 = select i1 %6563, float %8979, float 0.000000e+00
  %8983 = select i1 %6564, float %8980, float 0.000000e+00
  %8984 = fsub fast float -0.000000e+00, %5716
  %8985 = fsub fast float -0.000000e+00, %5717
  %8986 = fsub fast float -0.000000e+00, %5718
  %8987 = call float @dx.op.dot3.f32(i32 55, float %8493, float %8494, float %8495, float %8984, float %8985, float %8986)  ; Dot3(ax,ay,az,bx,by,bz)
  %8988 = call float @dx.op.unary.f32(i32 7, float %8987)  ; Saturate(value)
  %8989 = fmul fast float %8988, %8500
  %8990 = fmul fast float %8988, 9.843750e-01
  %8991 = fadd fast float %8990, 7.812500e-03
  %8992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8991, float %5999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8993 = extractvalue %dx.types.ResRet.f32 %8992, 0
  %8994 = extractvalue %dx.types.ResRet.f32 %8992, 1
  %8995 = extractvalue %dx.types.ResRet.f32 %8992, 2
  %8996 = extractvalue %dx.types.ResRet.f32 %8992, 3
  %8997 = fsub fast float %8995, %8993
  %8998 = fsub fast float %8996, %8994
  %8999 = fmul fast float %8997, %6005
  %9000 = fmul fast float %8998, %6005
  %9001 = fadd fast float %8999, %8993
  %9002 = fadd fast float %9000, %8994
  %9003 = fmul fast float %9001, %5713
  %9004 = fmul fast float %9001, %5714
  %9005 = fmul fast float %9001, %5722
  %9006 = fadd fast float %9003, %9002
  %9007 = fadd fast float %9004, %9002
  %9008 = fadd fast float %9005, %9002
  br i1 %6018, label %9009, label %9032

; <label>:9009                                    ; preds = %8963
  %9010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5079, float %8988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9011 = extractvalue %dx.types.ResRet.f32 %9010, 0
  %9012 = extractvalue %dx.types.ResRet.f32 %9010, 1
  %9013 = extractvalue %dx.types.ResRet.f32 %9010, 2
  %9014 = fadd fast float %9011, -5.000000e-01
  %9015 = fadd fast float %9012, -5.000000e-01
  %9016 = fadd fast float %9013, -5.000000e-01
  %9017 = fmul fast float %5713, 4.000000e+00
  %9018 = fmul fast float %9017, %8885
  %9019 = fmul fast float %9018, %9014
  %9020 = fmul fast float %5714, 4.000000e+00
  %9021 = fmul fast float %9020, %8886
  %9022 = fmul fast float %9021, %9015
  %9023 = fmul fast float %5722, 4.000000e+00
  %9024 = fmul fast float %9023, %8887
  %9025 = fmul fast float %9024, %9016
  %9026 = fadd fast float %9019, %9006
  %9027 = fadd fast float %9022, %9007
  %9028 = fadd fast float %9025, %9008
  %9029 = call float @dx.op.unary.f32(i32 7, float %9026)  ; Saturate(value)
  %9030 = call float @dx.op.unary.f32(i32 7, float %9027)  ; Saturate(value)
  %9031 = call float @dx.op.unary.f32(i32 7, float %9028)  ; Saturate(value)
  br label %9032

; <label>:9032                                    ; preds = %9009, %8963
  %9033 = phi float [ %9029, %9009 ], [ %9006, %8963 ]
  %9034 = phi float [ %9030, %9009 ], [ %9007, %8963 ]
  %9035 = phi float [ %9031, %9009 ], [ %9008, %8963 ]
  %9036 = call float @dx.op.binary.f32(i32 35, float %9034, float %9035)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 35, float %9033, float %9036)  ; FMax(a,b)
  %9038 = fsub fast float 1.000000e+00, %9037
  %9039 = fmul fast float %5739, %6629
  %9040 = fadd fast float %6631, %9039
  %9041 = call float @dx.op.unary.f32(i32 7, float %9040)  ; Saturate(value)
  %9042 = fsub fast float %8820, %5730
  %9043 = fsub fast float %8821, %5731
  %9044 = fsub fast float %8822, %5732
  %9045 = call float @dx.op.dot3.f32(i32 55, float %9042, float %9043, float %9044, float %9042, float %9043, float %9044)  ; Dot3(ax,ay,az,bx,by,bz)
  %9046 = call float @dx.op.unary.f32(i32 25, float %9045)  ; Rsqrt(value)
  %9047 = fmul fast float %9042, %9046
  %9048 = fmul fast float %9043, %9046
  %9049 = fmul fast float %9044, %9046
  %9050 = call float @dx.op.dot3.f32(i32 55, float %8984, float %8985, float %8986, float %9047, float %9048, float %9049)  ; Dot3(ax,ay,az,bx,by,bz)
  %9051 = fmul fast float %9050, %9050
  %9052 = call float @dx.op.unary.f32(i32 6, float %8988)  ; FAbs(value)
  %9053 = call float @dx.op.binary.f32(i32 35, float %9041, float 0x3F847AE140000000)  ; FMax(a,b)
  %9054 = fmul fast float %9053, %9053
  %9055 = fmul fast float %9054, %9054
  %9056 = fsub fast float 1.000000e+00, %9055
  %9057 = fmul fast float %8835, %9056
  %9058 = fadd fast float %9057, %9055
  %9059 = bitcast float %9058 to i32
  %9060 = ashr i32 %9059, 1
  %9061 = add nsw i32 %9060, 532487669
  %9062 = bitcast i32 %9061 to float
  %9063 = fadd fast float %9062, %5724
  %9064 = fmul fast float %9055, %9051
  %9065 = fsub fast float 1.000000e+00, %9051
  %9066 = fadd fast float %9065, %9064
  %9067 = fmul fast float %9052, %9052
  %9068 = fmul fast float %9067, %9056
  %9069 = fadd fast float %9068, %9055
  %9070 = bitcast float %9069 to i32
  %9071 = ashr i32 %9070, 1
  %9072 = add nsw i32 %9071, 532487669
  %9073 = bitcast i32 %9072 to float
  %9074 = fadd fast float %9073, %9052
  %9075 = fmul fast float %9066, %9066
  %9076 = fmul fast float %9075, %9063
  %9077 = fmul fast float %9076, %9074
  %9078 = fdiv fast float 1.000000e+00, %9077
  %9079 = bitcast float %9055 to i32
  %9080 = sitofp i32 %9079 to float
  %9081 = fmul fast float %9080, 0x3FE7F73180000000
  %9082 = fadd fast float %9081, 0x41AFE27C40000000
  %9083 = fptosi float %9082 to i32
  %9084 = bitcast i32 %9083 to float
  %9085 = fadd fast float %9084, %8865
  %9086 = bitcast float %9085 to i32
  %9087 = sub nsw i32 2129859010, %9086
  %9088 = bitcast i32 %9087 to float
  %9089 = fmul fast float %9055, %9078
  %9090 = fmul fast float %9089, %9084
  %9091 = fmul fast float %9090, %9088
  br i1 %8485, label %9092, label %9102

; <label>:9092                                    ; preds = %9032
  %9093 = fmul fast float %8989, %8981
  %9094 = fmul fast float %8989, %8982
  %9095 = fmul fast float %8989, %8983
  %9096 = fmul fast float %9093, %9038
  %9097 = fmul fast float %9096, %9091
  %9098 = fmul fast float %9094, %9038
  %9099 = fmul fast float %9098, %9091
  %9100 = fmul fast float %9095, %9038
  %9101 = fmul fast float %9100, %9091
  br label %9102

; <label>:9102                                    ; preds = %9092, %9032
  %9103 = phi float [ %9097, %9092 ], [ 0.000000e+00, %9032 ]
  %9104 = phi float [ %9099, %9092 ], [ 0.000000e+00, %9032 ]
  %9105 = phi float [ %9101, %9092 ], [ 0.000000e+00, %9032 ]
  %9106 = fmul fast float %8918, %8872
  %9107 = fmul fast float %8919, %8872
  %9108 = fmul fast float %8920, %8872
  %9109 = fsub fast float 1.000000e+00, %8809
  %9110 = bitcast float %9109 to i32
  %9111 = sitofp i32 %9110 to float
  %9112 = fmul fast float %9111, 5.000000e+00
  %9113 = fadd fast float %9112, 0xC1EFBF8940000000
  %9114 = fptosi float %9113 to i32
  %9115 = bitcast i32 %9114 to float
  %9116 = fmul fast float %9115, %5080
  %9117 = fmul fast float %8969, %9116
  %9118 = fmul fast float %9117, %6557
  %9119 = fmul fast float %9117, %6558
  %9120 = fmul fast float %9117, %6559
  %9121 = fadd fast float %9118, %9106
  %9122 = fadd fast float %9119, %9107
  %9123 = fadd fast float %9120, %9108
  %9124 = fmul fast float %9121, %8815
  %9125 = fmul fast float %9122, %8815
  %9126 = fmul fast float %9123, %8815
  %9127 = fadd fast float %9124, %9103
  %9128 = fadd fast float %9125, %9104
  %9129 = fadd fast float %9126, %9105
  %9130 = fmul fast float %8797, %5076
  %9131 = fmul fast float %9130, %8815
  %9132 = fmul fast float %9131, %8969
  %9133 = fmul fast float %8798, %5076
  %9134 = fmul fast float %9133, %8815
  %9135 = fmul fast float %9134, %8969
  %9136 = fmul fast float %8799, %5076
  %9137 = fmul fast float %9136, %8815
  %9138 = fmul fast float %9137, %8969
  %9139 = fadd fast float %9132, %8429
  %9140 = fadd fast float %9135, %8430
  %9141 = fadd fast float %9138, %8431
  %9142 = fmul fast float %9130, %9127
  %9143 = fmul fast float %9133, %9128
  %9144 = fmul fast float %9136, %9129
  %9145 = fadd fast float %9142, %8426
  %9146 = fadd fast float %9143, %8427
  %9147 = fadd fast float %9144, %8428
  br label %8559

; <label>:9148                                    ; preds = %8559
  br label %9149

; <label>:9149                                    ; preds = %9148, %8392
  %9150 = phi float [ %8394, %8392 ], [ %8560, %9148 ]
  %9151 = phi float [ %8395, %8392 ], [ %8561, %9148 ]
  %9152 = phi float [ %8396, %8392 ], [ %8562, %9148 ]
  %9153 = phi float [ %8397, %8392 ], [ %8563, %9148 ]
  %9154 = phi float [ %8398, %8392 ], [ %8564, %9148 ]
  %9155 = phi float [ %8399, %8392 ], [ %8565, %9148 ]
  %9156 = add i32 %8393, 1
  %9157 = icmp ugt i32 %9156, %8389
  br i1 %9157, label %9158, label %8392

; <label>:9158                                    ; preds = %9149
  br label %9159

; <label>:9159                                    ; preds = %9158, %8342, %8332
  %9160 = phi float [ %8333, %8332 ], [ %8333, %8342 ], [ %9150, %9158 ]
  %9161 = phi float [ %8334, %8332 ], [ %8334, %8342 ], [ %9151, %9158 ]
  %9162 = phi float [ %8335, %8332 ], [ %8335, %8342 ], [ %9152, %9158 ]
  %9163 = phi float [ %8336, %8332 ], [ %8336, %8342 ], [ %9153, %9158 ]
  %9164 = phi float [ %8337, %8332 ], [ %8337, %8342 ], [ %9154, %9158 ]
  %9165 = phi float [ %8338, %8332 ], [ %8338, %8342 ], [ %9155, %9158 ]
  %9166 = fmul fast float %5076, %6586
  %9167 = fsub fast float -0.000000e+00, %9166
  %9168 = fmul fast float %5076, %6587
  %9169 = fsub fast float -0.000000e+00, %9168
  %9170 = fmul fast float %5076, %6588
  %9171 = fsub fast float -0.000000e+00, %9170
  %9172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9173 = extractvalue %dx.types.CBufRet.f32 %9172, 0
  %9174 = fmul fast float %9173, %6592
  %9175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9176 = extractvalue %dx.types.CBufRet.f32 %9175, 3
  %9177 = fsub fast float 1.000000e+00, %5083
  %9178 = call float @dx.op.unary.f32(i32 7, float %9177)  ; Saturate(value)
  %9179 = fadd fast float %9165, %5082
  %9180 = fmul fast float %9179, %5083
  %9181 = fmul fast float %9178, %9176
  %9182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9183 = extractvalue %dx.types.CBufRet.f32 %9182, 3
  %9184 = fmul fast float %9163, %5710
  %9185 = fmul fast float %9164, %5711
  %9186 = fmul fast float %9165, %5712
  %9187 = fcmp fast ogt float %97, %186
  %9188 = and i1 %9187, %5515
  %9189 = or i1 %5521, %9188
  %9190 = icmp eq i32 %5514, 2
  %9191 = fcmp fast ole float %97, %186
  %9192 = and i1 %9191, %9190
  %9193 = or i1 %9192, %9189
  br i1 %9188, label %9194, label %9451

; <label>:9194                                    ; preds = %9159
  %9195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9196 = extractvalue %dx.types.CBufRet.f32 %9195, 2
  %9197 = extractvalue %dx.types.CBufRet.f32 %9195, 3
  %9198 = fmul fast float %9196, %109
  %9199 = fmul fast float %9197, %110
  %9200 = call float @dx.op.unary.f32(i32 7, float %9198)  ; Saturate(value)
  %9201 = call float @dx.op.unary.f32(i32 7, float %9199)  ; Saturate(value)
  %9202 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9200, float %9201, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9203 = extractvalue %dx.types.ResRet.f32 %9202, 0
  %9204 = extractvalue %dx.types.ResRet.f32 %9202, 1
  %9205 = extractvalue %dx.types.ResRet.f32 %9202, 2
  %9206 = extractvalue %dx.types.ResRet.f32 %9202, 3
  %9207 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9200, float %9201, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9208 = extractvalue %dx.types.ResRet.f32 %9207, 0
  %9209 = extractvalue %dx.types.ResRet.f32 %9207, 1
  %9210 = extractvalue %dx.types.ResRet.f32 %9207, 2
  %9211 = extractvalue %dx.types.ResRet.f32 %9207, 3
  %9212 = call float @dx.op.binary.f32(i32 35, float %9204, float %9205)  ; FMax(a,b)
  %9213 = call float @dx.op.binary.f32(i32 35, float %9203, float %9212)  ; FMax(a,b)
  %9214 = call float @dx.op.binary.f32(i32 35, float %9213, float %9206)  ; FMax(a,b)
  %9215 = call float @dx.op.binary.f32(i32 36, float %9209, float %9210)  ; FMin(a,b)
  %9216 = call float @dx.op.binary.f32(i32 36, float %9208, float %9215)  ; FMin(a,b)
  %9217 = call float @dx.op.binary.f32(i32 36, float %9216, float %9211)  ; FMin(a,b)
  %9218 = fmul fast float %9214, 2.550000e+02
  %9219 = fadd fast float %9218, 0x3F70101020000000
  %9220 = fptoui float %9219 to i32
  %9221 = fmul fast float %9217, 2.550000e+02
  %9222 = fadd fast float %9221, 0x3F70101020000000
  %9223 = fptoui float %9222 to i32
  %9224 = icmp ult i32 %9220, %9223
  br i1 %9224, label %9225, label %9393

; <label>:9225                                    ; preds = %9194
  %9226 = fcmp fast ogt float %96, 9.843750e-01
  %9227 = fadd fast float %97, -4.000000e+00
  %9228 = select i1 %9226, float -4.000000e+00, float %9227
  %9229 = call float @dx.op.binary.f32(i32 35, float %9228, float 0.000000e+00)  ; FMax(a,b)
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 0
  %9232 = fadd fast float %9231, %9229
  %9233 = extractvalue %dx.types.CBufRet.f32 %9230, 2
  %9234 = fmul fast float %9232, %9233
  %9235 = call float @dx.op.unary.f32(i32 23, float %9234)  ; Log(value)
  %9236 = extractvalue %dx.types.CBufRet.f32 %9230, 3
  %9237 = fmul fast float %9236, %9235
  %9238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9239 = extractvalue %dx.types.CBufRet.f32 %9238, 2
  %9240 = fmul fast float %9237, %9239
  %9241 = call float @dx.op.unary.f32(i32 7, float %9240)  ; Saturate(value)
  %9242 = uitofp i32 %9220 to float
  %9243 = uitofp i32 %9223 to float
  %9244 = fadd fast float %9242, 5.000000e-01
  %9245 = fadd fast float %9243, 5.000000e-01
  %9246 = fmul fast float %9239, %9244
  %9247 = fmul fast float %9239, %9245
  %9248 = fadd fast float %9246, 0x3F0FFB4800000000
  %9249 = fadd fast float %9247, 0xBF0FFB4800000000
  %9250 = call float @dx.op.binary.f32(i32 35, float %9241, float %9248)  ; FMax(a,b)
  %9251 = call float @dx.op.binary.f32(i32 36, float %9250, float %9249)  ; FMin(a,b)
  %9252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9253 = extractvalue %dx.types.CBufRet.f32 %9252, 1
  %9254 = extractvalue %dx.types.CBufRet.f32 %9252, 2
  %9255 = extractvalue %dx.types.CBufRet.f32 %9252, 0
  %9256 = fmul fast float %9253, %9251
  %9257 = fadd fast float %9255, %9256
  %9258 = fadd fast float %9255, %9254
  %9259 = fsub fast float %9253, %9254
  %9260 = fadd fast float %9259, %9255
  %9261 = call float @dx.op.binary.f32(i32 35, float %9257, float %9258)  ; FMax(a,b)
  %9262 = call float @dx.op.binary.f32(i32 36, float %9261, float %9260)  ; FMin(a,b)
  %9263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9200, float %9201, float %9262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9264 = extractvalue %dx.types.ResRet.f32 %9263, 0
  %9265 = extractvalue %dx.types.ResRet.f32 %9263, 1
  %9266 = extractvalue %dx.types.ResRet.f32 %9263, 2
  %9267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9268 = extractvalue %dx.types.CBufRet.i32 %9267, 0
  %9269 = extractvalue %dx.types.CBufRet.i32 %9267, 1
  %9270 = uitofp i32 %9268 to float
  %9271 = uitofp i32 %9269 to float
  %9272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9272, 0
  %9274 = extractvalue %dx.types.CBufRet.f32 %9272, 1
  %9275 = fmul fast float %9270, %9200
  %9276 = fmul fast float %9271, %9201
  %9277 = fadd fast float %9275, -5.000000e-01
  %9278 = fadd fast float %9276, -5.000000e-01
  %9279 = call float @dx.op.unary.f32(i32 22, float %9277)  ; Frc(value)
  %9280 = call float @dx.op.unary.f32(i32 22, float %9278)  ; Frc(value)
  %9281 = fmul fast float %9279, %9279
  %9282 = fmul fast float %9281, %9279
  %9283 = fsub fast float 3.000000e+00, %9279
  %9284 = fmul fast float %9281, %9283
  %9285 = fmul fast float %9279, 3.000000e+00
  %9286 = fmul fast float %9282, 3.000000e+00
  %9287 = fmul fast float %9281, 6.000000e+00
  %9288 = fsub fast float %9286, %9287
  %9289 = fadd fast float %9288, 4.000000e+00
  %9290 = fmul fast float %9289, 0x3FC5555560000000
  %9291 = fmul fast float %9282, -3.000000e+00
  %9292 = fadd fast float %9281, %9279
  %9293 = fmul fast float %9292, 3.000000e+00
  %9294 = fadd fast float %9291, 1.000000e+00
  %9295 = fadd fast float %9294, %9293
  %9296 = fmul fast float %9282, 0x3FC5555560000000
  %9297 = fmul fast float %9280, %9280
  %9298 = fmul fast float %9297, %9280
  %9299 = fsub fast float 3.000000e+00, %9280
  %9300 = fmul fast float %9297, %9299
  %9301 = fmul fast float %9280, 3.000000e+00
  %9302 = fmul fast float %9298, 3.000000e+00
  %9303 = fmul fast float %9297, 6.000000e+00
  %9304 = fsub fast float %9302, %9303
  %9305 = fadd fast float %9304, 4.000000e+00
  %9306 = fmul fast float %9305, 0x3FC5555560000000
  %9307 = fmul fast float %9298, -3.000000e+00
  %9308 = fadd fast float %9297, %9280
  %9309 = fmul fast float %9308, 3.000000e+00
  %9310 = fadd fast float %9307, 1.000000e+00
  %9311 = fadd fast float %9310, %9309
  %9312 = fmul fast float %9298, 0x3FC5555560000000
  %9313 = fadd fast float %9279, 1.000000e+00
  %9314 = fsub fast float 1.000000e+00, %9285
  %9315 = fadd fast float %9314, %9284
  %9316 = fadd fast float %9315, %9289
  %9317 = fmul fast float %9316, 0x3FC5555560000000
  %9318 = fdiv fast float %9290, %9317
  %9319 = fsub fast float %9313, %9318
  %9320 = fsub fast float 1.000000e+00, %9279
  %9321 = fadd fast float %9295, %9282
  %9322 = fmul fast float %9321, 0x3FC5555560000000
  %9323 = fdiv fast float %9296, %9322
  %9324 = fadd fast float %9320, %9323
  %9325 = fadd fast float %9280, 1.000000e+00
  %9326 = fsub fast float 1.000000e+00, %9301
  %9327 = fadd fast float %9326, %9300
  %9328 = fadd fast float %9327, %9305
  %9329 = fmul fast float %9328, 0x3FC5555560000000
  %9330 = fdiv fast float %9306, %9329
  %9331 = fsub fast float %9325, %9330
  %9332 = fsub fast float 1.000000e+00, %9280
  %9333 = fadd fast float %9311, %9298
  %9334 = fmul fast float %9333, 0x3FC5555560000000
  %9335 = fdiv fast float %9312, %9334
  %9336 = fadd fast float %9335, %9332
  %9337 = fmul fast float %9319, %9273
  %9338 = fsub fast float %9200, %9337
  %9339 = fmul fast float %9324, %9273
  %9340 = fadd fast float %9339, %9200
  %9341 = fmul fast float %9336, %9274
  %9342 = fadd fast float %9341, %9201
  %9343 = fmul fast float %9331, %9274
  %9344 = fsub fast float %9201, %9343
  %9345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9338, float %9344, float %9262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9346 = extractvalue %dx.types.ResRet.f32 %9345, 0
  %9347 = extractvalue %dx.types.ResRet.f32 %9345, 1
  %9348 = extractvalue %dx.types.ResRet.f32 %9345, 2
  %9349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9340, float %9344, float %9262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9350 = extractvalue %dx.types.ResRet.f32 %9349, 0
  %9351 = extractvalue %dx.types.ResRet.f32 %9349, 1
  %9352 = extractvalue %dx.types.ResRet.f32 %9349, 2
  %9353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9338, float %9342, float %9262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9354 = extractvalue %dx.types.ResRet.f32 %9353, 0
  %9355 = extractvalue %dx.types.ResRet.f32 %9353, 1
  %9356 = extractvalue %dx.types.ResRet.f32 %9353, 2
  %9357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9340, float %9342, float %9262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9358 = extractvalue %dx.types.ResRet.f32 %9357, 0
  %9359 = extractvalue %dx.types.ResRet.f32 %9357, 1
  %9360 = extractvalue %dx.types.ResRet.f32 %9357, 2
  %9361 = fsub fast float %9354, %9346
  %9362 = fsub fast float %9355, %9347
  %9363 = fsub fast float %9356, %9348
  %9364 = fmul fast float %9361, %9334
  %9365 = fmul fast float %9362, %9334
  %9366 = fmul fast float %9363, %9334
  %9367 = fadd fast float %9364, %9346
  %9368 = fadd fast float %9365, %9347
  %9369 = fadd fast float %9366, %9348
  %9370 = fsub fast float %9358, %9350
  %9371 = fsub fast float %9359, %9351
  %9372 = fsub fast float %9360, %9352
  %9373 = fmul fast float %9370, %9334
  %9374 = fmul fast float %9371, %9334
  %9375 = fmul fast float %9372, %9334
  %9376 = fsub fast float %9350, %9367
  %9377 = fadd fast float %9376, %9373
  %9378 = fsub fast float %9351, %9368
  %9379 = fadd fast float %9378, %9374
  %9380 = fsub fast float %9352, %9369
  %9381 = fadd fast float %9380, %9375
  %9382 = fmul fast float %9377, %9322
  %9383 = fmul fast float %9379, %9322
  %9384 = fmul fast float %9381, %9322
  %9385 = fadd fast float %9382, %9367
  %9386 = fadd fast float %9383, %9368
  %9387 = fadd fast float %9384, %9369
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 1
  %9390 = fmul fast float %9385, %9389
  %9391 = fmul fast float %9386, %9389
  %9392 = fmul fast float %9387, %9389
  br label %9393

; <label>:9393                                    ; preds = %9225, %9194
  %9394 = phi float [ %9264, %9225 ], [ 1.000000e+00, %9194 ]
  %9395 = phi float [ %9265, %9225 ], [ 1.000000e+00, %9194 ]
  %9396 = phi float [ %9266, %9225 ], [ 1.000000e+00, %9194 ]
  %9397 = phi float [ %9390, %9225 ], [ 0.000000e+00, %9194 ]
  %9398 = phi float [ %9391, %9225 ], [ 0.000000e+00, %9194 ]
  %9399 = phi float [ %9392, %9225 ], [ 0.000000e+00, %9194 ]
  %9400 = fmul fast float %9397, %9167
  %9401 = fmul fast float %9398, %9169
  %9402 = fmul fast float %9399, %9171
  %9403 = call float @dx.op.dot3.f32(i32 55, float %9394, float %9395, float %9396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9404 = call float @dx.op.dot3.f32(i32 55, float %9400, float %9401, float %9402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9405 = select i1 %226, float %9403, float %9394
  %9406 = select i1 %226, float %9403, float %9395
  %9407 = select i1 %226, float 1.000000e+00, float %9396
  %9408 = select i1 %226, float %9404, float %9400
  %9409 = select i1 %226, float 0.000000e+00, float %9401
  %9410 = select i1 %226, float 0.000000e+00, float %9402
  %9411 = fmul fast float %9405, %9184
  %9412 = fmul fast float %9406, %9185
  %9413 = fmul fast float %9407, %9186
  %9414 = fadd fast float %9411, %9408
  %9415 = fadd fast float %9412, %9409
  %9416 = fadd fast float %9410, %9413
  %9417 = fmul fast float %9405, %9160
  %9418 = fmul fast float %9406, %9161
  %9419 = fmul fast float %9407, %9162
  %9420 = fmul fast float %134, %9196
  %9421 = fmul fast float %136, %9197
  %9422 = fsub fast float 1.000000e+00, %9420
  %9423 = fsub fast float 1.000000e+00, %9421
  %9424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9425 = extractvalue %dx.types.CBufRet.f32 %9424, 0
  %9426 = extractvalue %dx.types.CBufRet.f32 %9424, 1
  %9427 = extractvalue %dx.types.CBufRet.f32 %9424, 2
  %9428 = fmul fast float %9422, %9425
  %9429 = fmul fast float %9422, %9426
  %9430 = fmul fast float %9422, %9427
  %9431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9432 = extractvalue %dx.types.CBufRet.f32 %9431, 0
  %9433 = extractvalue %dx.types.CBufRet.f32 %9431, 1
  %9434 = extractvalue %dx.types.CBufRet.f32 %9431, 2
  %9435 = fmul fast float %9423, %9432
  %9436 = fmul fast float %9423, %9433
  %9437 = fmul fast float %9423, %9434
  %9438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9438, 0
  %9440 = extractvalue %dx.types.CBufRet.f32 %9438, 1
  %9441 = extractvalue %dx.types.CBufRet.f32 %9438, 2
  %9442 = fadd fast float %9435, %9439
  %9443 = fadd fast float %9442, %9428
  %9444 = fadd fast float %9436, %9440
  %9445 = fadd fast float %9444, %9429
  %9446 = fadd fast float %9437, %9441
  %9447 = fadd fast float %9446, %9430
  %9448 = fmul fast float %9443, %186
  %9449 = fmul fast float %9445, %186
  %9450 = fmul fast float %9447, %186
  br label %9451

; <label>:9451                                    ; preds = %9393, %9159
  %9452 = phi float [ %9448, %9393 ], [ %164, %9159 ]
  %9453 = phi float [ %9449, %9393 ], [ %165, %9159 ]
  %9454 = phi float [ %9450, %9393 ], [ %166, %9159 ]
  %9455 = phi float [ %186, %9393 ], [ %97, %9159 ]
  %9456 = phi float [ %9414, %9393 ], [ %9184, %9159 ]
  %9457 = phi float [ %9415, %9393 ], [ %9185, %9159 ]
  %9458 = phi float [ %9416, %9393 ], [ %9186, %9159 ]
  %9459 = phi float [ %9417, %9393 ], [ %9160, %9159 ]
  %9460 = phi float [ %9418, %9393 ], [ %9161, %9159 ]
  %9461 = phi float [ %9419, %9393 ], [ %9162, %9159 ]
  %9462 = phi float [ %9394, %9393 ], [ 1.000000e+00, %9159 ]
  br i1 %9193, label %10617, label %9463

; <label>:9463                                    ; preds = %9451
  %9464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9465 = extractvalue %dx.types.CBufRet.f32 %9464, 0
  %9466 = extractvalue %dx.types.CBufRet.f32 %9464, 1
  %9467 = extractvalue %dx.types.CBufRet.f32 %9464, 2
  %9468 = extractvalue %dx.types.CBufRet.f32 %9464, 3
  %9469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9470 = extractvalue %dx.types.CBufRet.f32 %9469, 0
  %9471 = extractvalue %dx.types.CBufRet.f32 %9469, 1
  %9472 = extractvalue %dx.types.CBufRet.f32 %9469, 2
  %9473 = extractvalue %dx.types.CBufRet.f32 %9469, 3
  %9474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9475 = extractvalue %dx.types.CBufRet.f32 %9474, 0
  %9476 = extractvalue %dx.types.CBufRet.f32 %9474, 1
  %9477 = extractvalue %dx.types.CBufRet.f32 %9474, 2
  %9478 = extractvalue %dx.types.CBufRet.f32 %9474, 3
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 0
  %9481 = extractvalue %dx.types.CBufRet.f32 %9479, 1
  %9482 = extractvalue %dx.types.CBufRet.f32 %9479, 2
  %9483 = extractvalue %dx.types.CBufRet.f32 %9479, 3
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 3
  %9486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9487 = extractvalue %dx.types.CBufRet.f32 %9486, 3
  %9488 = extractvalue %dx.types.CBufRet.f32 %9486, 0
  %9489 = extractvalue %dx.types.CBufRet.f32 %9486, 1
  %9490 = extractvalue %dx.types.CBufRet.f32 %9486, 2
  %9491 = fcmp fast olt float %9490, -5.000000e-01
  %9492 = call float @dx.op.dot3.f32(i32 55, float %9452, float %9453, float %9454, float %9452, float %9453, float %9454)  ; Dot3(ax,ay,az,bx,by,bz)
  %9493 = call float @dx.op.unary.f32(i32 25, float %9492)  ; Rsqrt(value)
  %9494 = fmul fast float %9493, %9492
  %9495 = fmul fast float %9493, %9452
  %9496 = fmul fast float %9493, %9453
  %9497 = fmul fast float %9493, %9454
  %9498 = fadd fast float %9494, %9468
  %9499 = call float @dx.op.dot3.f32(i32 55, float %9495, float %9496, float %9497, float %9465, float %9466, float %9467)  ; Dot3(ax,ay,az,bx,by,bz)
  %9500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9501 = extractvalue %dx.types.CBufRet.i32 %9500, 1
  %9502 = and i32 %9501, 1
  %9503 = icmp ne i32 %9502, 0
  %9504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9505 = extractvalue %dx.types.CBufRet.f32 %9504, 2
  %9506 = fcmp fast ogt float %9505, 0.000000e+00
  %9507 = and i1 %9503, %9506
  br i1 %9507, label %9508, label %9914, !dx.controlflow.hints !135

; <label>:9508                                    ; preds = %9463
  %9509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9510 = extractvalue %dx.types.CBufRet.f32 %9509, 3
  %9511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9511, 2
  %9513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9514 = extractvalue %dx.types.CBufRet.f32 %9513, 2
  %9515 = fsub fast float %9512, %9514
  %9516 = and i32 %9501, 2
  %9517 = extractvalue %dx.types.CBufRet.i32 %9500, 0
  %9518 = call i32 @dx.op.binary.i32(i32 40, i32 %9517, i32 3)  ; UMin(a,b)
  %9519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9520 = extractvalue %dx.types.CBufRet.f32 %9519, 0
  %9521 = extractvalue %dx.types.CBufRet.f32 %9519, 1
  %9522 = extractvalue %dx.types.CBufRet.f32 %9513, 0
  %9523 = extractvalue %dx.types.CBufRet.f32 %9513, 1
  %9524 = fsub fast float %9520, %9522
  %9525 = fsub fast float %9521, %9523
  %9526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9527 = extractvalue %dx.types.CBufRet.f32 %9526, 0
  %9528 = fcmp fast ogt float %9527, 0.000000e+00
  %9529 = fsub fast float -0.000000e+00, %9524
  %9530 = fsub fast float -0.000000e+00, %9525
  %9531 = call float @dx.op.dot2.f32(i32 54, float %9495, float %9496, float %9495, float %9496)  ; Dot2(ax,ay,bx,by)
  %9532 = call float @dx.op.dot2.f32(i32 54, float %9495, float %9496, float %9529, float %9530)  ; Dot2(ax,ay,bx,by)
  %9533 = fmul fast float %9532, 2.000000e+00
  %9534 = call float @dx.op.dot2.f32(i32 54, float %9529, float %9530, float %9529, float %9530)  ; Dot2(ax,ay,bx,by)
  %9535 = fmul fast float %9527, %9527
  %9536 = fsub fast float %9534, %9535
  %9537 = fmul fast float %9533, %9533
  %9538 = fmul fast float %9531, 4.000000e+00
  %9539 = fmul fast float %9538, %9536
  %9540 = fsub fast float %9537, %9539
  %9541 = fcmp fast ogt float %9540, 0.000000e+00
  br i1 %9541, label %9542, label %9557

; <label>:9542                                    ; preds = %9508
  %9543 = fcmp fast ogt float %9533, 0.000000e+00
  %9544 = call float @dx.op.unary.f32(i32 24, float %9540)  ; Sqrt(value)
  %9545 = fsub fast float -0.000000e+00, %9544
  %9546 = select i1 %9543, float %9544, float %9545
  %9547 = fadd fast float %9546, %9533
  %9548 = fmul float %9547, -5.000000e-01
  %9549 = fdiv fast float %9548, %9531
  %9550 = call float @dx.op.binary.f32(i32 35, float %9549, float 0.000000e+00)  ; FMax(a,b)
  %9551 = call float @dx.op.binary.f32(i32 36, float %9494, float %9550)  ; FMin(a,b)
  %9552 = fdiv fast float %9536, %9548
  %9553 = call float @dx.op.binary.f32(i32 35, float %9552, float 0.000000e+00)  ; FMax(a,b)
  %9554 = call float @dx.op.binary.f32(i32 36, float %9494, float %9553)  ; FMin(a,b)
  %9555 = call float @dx.op.binary.f32(i32 36, float %9551, float %9554)  ; FMin(a,b)
  %9556 = call float @dx.op.binary.f32(i32 35, float %9551, float %9554)  ; FMax(a,b)
  br label %9557

; <label>:9557                                    ; preds = %9542, %9508
  %9558 = phi float [ %9556, %9542 ], [ -1.000000e+00, %9508 ]
  %9559 = phi float [ %9555, %9542 ], [ -1.000000e+00, %9508 ]
  %9560 = phi i1 [ true, %9542 ], [ false, %9508 ]
  %9561 = and i1 %9528, %9560
  br i1 %9561, label %9562, label %9564

; <label>:9562                                    ; preds = %9557
  %9563 = fcmp fast oeq float %9559, %9558
  br i1 %9563, label %9867, label %9565

; <label>:9564                                    ; preds = %9557
  br i1 %9528, label %9867, label %9565

; <label>:9565                                    ; preds = %9564, %9562
  %9566 = phi float [ %9494, %9564 ], [ %9558, %9562 ]
  %9567 = phi float [ 0.000000e+00, %9564 ], [ %9559, %9562 ]
  %9568 = icmp ne i32 %9516, 0
  %9569 = fmul fast float %9566, %9497
  %9570 = fadd fast float %9569, %9510
  %9571 = fmul fast float %9570, %9566
  %9572 = select i1 %9568, float 0.000000e+00, float %9571
  %9573 = fcmp fast oeq float %9497, 0.000000e+00
  %9574 = fdiv fast float %9515, %9497
  %9575 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9574)  ; FMax(a,b)
  %9576 = select i1 %9573, float %9566, float %9575
  %9577 = call float @dx.op.binary.f32(i32 36, float %9566, float %9576)  ; FMin(a,b)
  %9578 = fcmp fast ogt float %9497, 0.000000e+00
  %9579 = fcmp fast olt float %9515, 0.000000e+00
  br i1 %9578, label %9580, label %9637

; <label>:9580                                    ; preds = %9565
  %9581 = icmp eq i32 %9516, 0
  br i1 %9579, label %9582, label %9626

; <label>:9582                                    ; preds = %9580
  %9583 = select i1 %9581, float %9566, float 0.000000e+00
  %9584 = fsub fast float -0.000000e+00, %9583
  %9585 = call float @dx.op.unary.f32(i32 6, float %9584)  ; FAbs(value)
  %9586 = fmul fast float %9583, %9497
  %9587 = fadd fast float %9586, %9510
  %9588 = fmul fast float %9585, %9587
  %9589 = fsub fast float %9572, %9588
  %9590 = fsub fast float %9566, %9585
  %9591 = select i1 %9581, float %9590, float 0.000000e+00
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 0
  %9594 = extractvalue %dx.types.CBufRet.f32 %9592, 1
  %9595 = extractvalue %dx.types.CBufRet.f32 %9592, 2
  %9596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9597 = extractvalue %dx.types.CBufRet.f32 %9596, 0
  %9598 = extractvalue %dx.types.CBufRet.f32 %9596, 1
  %9599 = extractvalue %dx.types.CBufRet.f32 %9596, 2
  %9600 = extractvalue %dx.types.CBufRet.f32 %9596, 3
  %9601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9602 = extractvalue %dx.types.CBufRet.f32 %9601, 3
  %9603 = call float @dx.op.binary.f32(i32 36, float %9589, float %9602)  ; FMin(a,b)
  %9604 = fmul fast float %9600, %9591
  %9605 = call float @dx.op.unary.f32(i32 7, float %9604)  ; Saturate(value)
  %9606 = fsub fast float %9597, %9593
  %9607 = fsub fast float %9598, %9594
  %9608 = fsub fast float %9599, %9595
  %9609 = fmul fast float %9605, %9606
  %9610 = fmul fast float %9605, %9607
  %9611 = fmul fast float %9605, %9608
  %9612 = fadd fast float %9609, %9593
  %9613 = fadd fast float %9610, %9594
  %9614 = fadd fast float %9611, %9595
  %9615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9616 = extractvalue %dx.types.CBufRet.f32 %9615, 0
  %9617 = extractvalue %dx.types.CBufRet.f32 %9615, 1
  %9618 = fadd fast float %9617, %9616
  %9619 = call float @dx.op.unary.f32(i32 7, float %9618)  ; Saturate(value)
  %9620 = extractvalue %dx.types.CBufRet.f32 %9615, 2
  %9621 = extractvalue %dx.types.CBufRet.f32 %9615, 3
  %9622 = fadd fast float %9621, %9620
  %9623 = call float @dx.op.unary.f32(i32 7, float %9622)  ; Saturate(value)
  %9624 = fmul fast float %9619, %9603
  %9625 = fmul fast float %9624, %9623
  br label %9867

; <label>:9626                                    ; preds = %9580
  br i1 %9581, label %9627, label %9648

; <label>:9627                                    ; preds = %9626
  %9628 = call float @dx.op.binary.f32(i32 36, float %9577, float %9567)  ; FMin(a,b)
  %9629 = fsub fast float %9577, %9628
  %9630 = fsub fast float %9629, %9566
  %9631 = call float @dx.op.unary.f32(i32 6, float %9630)  ; FAbs(value)
  %9632 = fadd fast float %9629, %9566
  %9633 = fmul fast float %9632, %9497
  %9634 = fadd fast float %9633, %9510
  %9635 = fmul fast float %9634, %9631
  %9636 = fsub fast float %9572, %9635
  br label %9648

; <label>:9637                                    ; preds = %9565
  br i1 %9579, label %9638, label %9648

; <label>:9638                                    ; preds = %9637
  %9639 = call float @dx.op.binary.f32(i32 35, float %9567, float %9577)  ; FMax(a,b)
  %9640 = icmp eq i32 %9516, 0
  %9641 = select i1 %9640, float %9577, float 0.000000e+00
  %9642 = fsub fast float -0.000000e+00, %9641
  %9643 = call float @dx.op.unary.f32(i32 6, float %9642)  ; FAbs(value)
  %9644 = fmul fast float %9641, %9497
  %9645 = fadd fast float %9644, %9510
  %9646 = fmul fast float %9643, %9645
  %9647 = fsub fast float %9572, %9646
  br label %9648

; <label>:9648                                    ; preds = %9638, %9637, %9627, %9626
  %9649 = phi float [ %9567, %9626 ], [ %9567, %9627 ], [ %9639, %9638 ], [ %9567, %9637 ]
  %9650 = phi float [ 0.000000e+00, %9626 ], [ %9631, %9627 ], [ %9643, %9638 ], [ 0.000000e+00, %9637 ]
  %9651 = phi float [ %9572, %9626 ], [ %9636, %9627 ], [ %9647, %9638 ], [ %9572, %9637 ]
  %9652 = phi float [ %9577, %9626 ], [ %9577, %9627 ], [ %9566, %9638 ], [ %9566, %9637 ]
  %9653 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9653, align 4, !tbaa !122, !noalias !136
  %9654 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9654, align 4, !tbaa !122, !noalias !136
  %9655 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9655, align 4, !tbaa !122, !noalias !136
  %9656 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9656, align 4, !tbaa !122, !noalias !136
  %9657 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9657, align 4, !tbaa !122, !noalias !136
  %9658 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9658, align 4, !tbaa !122, !noalias !136
  %9659 = icmp sgt i32 %9518, 0
  br i1 %9659, label %9660, label %9721

; <label>:9660                                    ; preds = %9648
  br label %9661

; <label>:9661                                    ; preds = %9710, %9660
  %9662 = phi i32 [ %9711, %9710 ], [ 0, %9660 ]
  %9663 = phi i32 [ %9712, %9710 ], [ 0, %9660 ]
  %9664 = add nuw i32 %9663, 171
  %9665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9664)  ; CBufferLoadLegacy(handle,regIndex)
  %9666 = extractvalue %dx.types.CBufRet.f32 %9665, 0
  %9667 = extractvalue %dx.types.CBufRet.f32 %9665, 1
  %9668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9669 = extractvalue %dx.types.CBufRet.f32 %9668, 0
  %9670 = extractvalue %dx.types.CBufRet.f32 %9668, 1
  %9671 = fsub fast float %9666, %9669
  %9672 = fsub fast float %9667, %9670
  %9673 = extractvalue %dx.types.CBufRet.f32 %9665, 2
  %9674 = fsub fast float -0.000000e+00, %9671
  %9675 = fsub fast float -0.000000e+00, %9672
  %9676 = call float @dx.op.dot2.f32(i32 54, float %9495, float %9496, float %9674, float %9675)  ; Dot2(ax,ay,bx,by)
  %9677 = fmul fast float %9676, 2.000000e+00
  %9678 = call float @dx.op.dot2.f32(i32 54, float %9674, float %9675, float %9674, float %9675)  ; Dot2(ax,ay,bx,by)
  %9679 = fmul fast float %9673, %9673
  %9680 = fsub fast float %9678, %9679
  %9681 = fmul fast float %9677, %9677
  %9682 = fmul fast float %9538, %9680
  %9683 = fsub fast float %9681, %9682
  %9684 = fcmp fast ogt float %9683, 0.000000e+00
  br i1 %9684, label %9685, label %9700

; <label>:9685                                    ; preds = %9661
  %9686 = fcmp fast ogt float %9677, 0.000000e+00
  %9687 = call float @dx.op.unary.f32(i32 24, float %9683)  ; Sqrt(value)
  %9688 = fsub fast float -0.000000e+00, %9687
  %9689 = select i1 %9686, float %9687, float %9688
  %9690 = fadd fast float %9689, %9677
  %9691 = fmul float %9690, -5.000000e-01
  %9692 = fdiv fast float %9691, %9531
  %9693 = call float @dx.op.binary.f32(i32 35, float %9692, float 0.000000e+00)  ; FMax(a,b)
  %9694 = call float @dx.op.binary.f32(i32 36, float %9566, float %9693)  ; FMin(a,b)
  %9695 = fdiv fast float %9680, %9691
  %9696 = call float @dx.op.binary.f32(i32 35, float %9695, float 0.000000e+00)  ; FMax(a,b)
  %9697 = call float @dx.op.binary.f32(i32 36, float %9566, float %9696)  ; FMin(a,b)
  %9698 = call float @dx.op.binary.f32(i32 36, float %9694, float %9697)  ; FMin(a,b)
  %9699 = call float @dx.op.binary.f32(i32 35, float %9694, float %9697)  ; FMax(a,b)
  br label %9700

; <label>:9700                                    ; preds = %9685, %9661
  %9701 = phi float [ %9699, %9685 ], [ -1.000000e+00, %9661 ]
  %9702 = phi float [ %9698, %9685 ], [ -1.000000e+00, %9661 ]
  %9703 = phi i1 [ true, %9685 ], [ false, %9661 ]
  br i1 %9703, label %9704, label %9710

; <label>:9704                                    ; preds = %9700
  %9705 = call float @dx.op.binary.f32(i32 35, float %9649, float %9702)  ; FMax(a,b)
  %9706 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9663
  store float %9705, float* %9706, align 4, !tbaa !122, !noalias !136
  %9707 = call float @dx.op.binary.f32(i32 35, float %9649, float %9701)  ; FMax(a,b)
  %9708 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9663
  store float %9707, float* %9708, align 4, !tbaa !122, !noalias !136
  %9709 = add nsw i32 %9662, 1
  br label %9710

; <label>:9710                                    ; preds = %9704, %9700
  %9711 = phi i32 [ %9709, %9704 ], [ %9662, %9700 ]
  %9712 = add nuw nsw i32 %9663, 1
  %9713 = icmp eq i32 %9712, %9518
  br i1 %9713, label %9714, label %9661

; <label>:9714                                    ; preds = %9710
  %9715 = load float, float* %9655, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9716 = load float, float* %9654, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9717 = load float, float* %9653, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9718 = load float, float* %9658, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9719 = load float, float* %9657, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9720 = load float, float* %9656, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9721

; <label>:9721                                    ; preds = %9714, %9648
  %9722 = phi float [ -1.000000e+00, %9648 ], [ %9720, %9714 ]
  %9723 = phi float [ -1.000000e+00, %9648 ], [ %9719, %9714 ]
  %9724 = phi float [ -1.000000e+00, %9648 ], [ %9718, %9714 ]
  %9725 = phi float [ -1.000000e+00, %9648 ], [ %9717, %9714 ]
  %9726 = phi float [ -1.000000e+00, %9648 ], [ %9716, %9714 ]
  %9727 = phi float [ -1.000000e+00, %9648 ], [ %9715, %9714 ]
  %9728 = phi i32 [ 0, %9648 ], [ %9711, %9714 ]
  %9729 = call float @dx.op.binary.f32(i32 36, float %9726, float %9727)  ; FMin(a,b)
  %9730 = call float @dx.op.binary.f32(i32 36, float %9725, float %9729)  ; FMin(a,b)
  %9731 = call float @dx.op.binary.f32(i32 35, float %9725, float %9726)  ; FMax(a,b)
  %9732 = call float @dx.op.binary.f32(i32 36, float %9731, float %9727)  ; FMin(a,b)
  %9733 = call float @dx.op.binary.f32(i32 36, float %9725, float %9726)  ; FMin(a,b)
  %9734 = call float @dx.op.binary.f32(i32 35, float %9733, float %9732)  ; FMax(a,b)
  %9735 = call float @dx.op.binary.f32(i32 35, float %9726, float %9727)  ; FMax(a,b)
  %9736 = call float @dx.op.binary.f32(i32 35, float %9725, float %9735)  ; FMax(a,b)
  store float %9730, float* %9653, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9734, float* %9654, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9736, float* %9655, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9737 = call float @dx.op.binary.f32(i32 36, float %9723, float %9724)  ; FMin(a,b)
  %9738 = call float @dx.op.binary.f32(i32 36, float %9722, float %9737)  ; FMin(a,b)
  %9739 = call float @dx.op.binary.f32(i32 35, float %9722, float %9723)  ; FMax(a,b)
  %9740 = call float @dx.op.binary.f32(i32 36, float %9739, float %9724)  ; FMin(a,b)
  %9741 = call float @dx.op.binary.f32(i32 36, float %9722, float %9723)  ; FMin(a,b)
  %9742 = call float @dx.op.binary.f32(i32 35, float %9741, float %9740)  ; FMax(a,b)
  %9743 = call float @dx.op.binary.f32(i32 35, float %9723, float %9724)  ; FMax(a,b)
  %9744 = call float @dx.op.binary.f32(i32 35, float %9722, float %9743)  ; FMax(a,b)
  store float %9738, float* %9656, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9742, float* %9657, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9744, float* %9658, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9745 = sub nsw i32 3, %9728
  %9746 = icmp sgt i32 %9745, 2
  br i1 %9746, label %9747, label %9785

; <label>:9747                                    ; preds = %9721
  %9748 = icmp eq i32 %9516, 0
  %9749 = fsub fast float %9566, %9650
  %9750 = select i1 %9748, float %9749, float %9650
  %9751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9752 = extractvalue %dx.types.CBufRet.f32 %9751, 0
  %9753 = extractvalue %dx.types.CBufRet.f32 %9751, 1
  %9754 = extractvalue %dx.types.CBufRet.f32 %9751, 2
  %9755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9756 = extractvalue %dx.types.CBufRet.f32 %9755, 0
  %9757 = extractvalue %dx.types.CBufRet.f32 %9755, 1
  %9758 = extractvalue %dx.types.CBufRet.f32 %9755, 2
  %9759 = extractvalue %dx.types.CBufRet.f32 %9755, 3
  %9760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9761 = extractvalue %dx.types.CBufRet.f32 %9760, 3
  %9762 = call float @dx.op.binary.f32(i32 36, float %9651, float %9761)  ; FMin(a,b)
  %9763 = fmul fast float %9759, %9750
  %9764 = call float @dx.op.unary.f32(i32 7, float %9763)  ; Saturate(value)
  %9765 = fsub fast float %9756, %9752
  %9766 = fsub fast float %9757, %9753
  %9767 = fsub fast float %9758, %9754
  %9768 = fmul fast float %9764, %9765
  %9769 = fmul fast float %9764, %9766
  %9770 = fmul fast float %9764, %9767
  %9771 = fadd fast float %9768, %9752
  %9772 = fadd fast float %9769, %9753
  %9773 = fadd fast float %9770, %9754
  %9774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9775 = extractvalue %dx.types.CBufRet.f32 %9774, 0
  %9776 = extractvalue %dx.types.CBufRet.f32 %9774, 1
  %9777 = fadd fast float %9776, %9775
  %9778 = call float @dx.op.unary.f32(i32 7, float %9777)  ; Saturate(value)
  %9779 = extractvalue %dx.types.CBufRet.f32 %9774, 2
  %9780 = extractvalue %dx.types.CBufRet.f32 %9774, 3
  %9781 = fadd fast float %9780, %9779
  %9782 = call float @dx.op.unary.f32(i32 7, float %9781)  ; Saturate(value)
  %9783 = fmul fast float %9778, %9762
  %9784 = fmul fast float %9783, %9782
  br label %9867

; <label>:9785                                    ; preds = %9721
  %9786 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9745
  %9787 = load float, float* %9786, align 4, !tbaa !122, !noalias !136
  %9788 = fcmp fast olt float %9787, %9652
  %9789 = icmp sgt i32 %9728, 0
  %9790 = and i1 %9789, %9788
  br i1 %9790, label %9791, label %9828

; <label>:9791                                    ; preds = %9785
  br label %9792

; <label>:9792                                    ; preds = %9821, %9791
  %9793 = phi float [ %9822, %9821 ], [ %9650, %9791 ]
  %9794 = phi float [ %9823, %9821 ], [ %9651, %9791 ]
  %9795 = phi float [ %9803, %9821 ], [ %9787, %9791 ]
  %9796 = phi i32 [ %9800, %9821 ], [ %9745, %9791 ]
  %9797 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9796
  %9798 = load float, float* %9797, align 4, !tbaa !122, !noalias !136
  %9799 = icmp slt i32 %9796, 2
  %9800 = add nsw i32 %9796, 1
  %9801 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9800
  %9802 = load float, float* %9801, align 4, !tbaa !122, !noalias !136
  %9803 = select i1 %9799, float %9802, float %9566
  %9804 = call float @dx.op.binary.f32(i32 36, float %9803, float %9798)  ; FMin(a,b)
  %9805 = call float @dx.op.binary.f32(i32 36, float %9652, float %9804)  ; FMin(a,b)
  %9806 = icmp eq i32 %9516, 0
  %9807 = fadd fast float %9805, %9795
  %9808 = fmul fast float %9807, %9497
  %9809 = fadd fast float %9808, %9510
  br i1 %9806, label %9815, label %9810

; <label>:9810                                    ; preds = %9792
  %9811 = fsub fast float %9805, %9795
  %9812 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9811)  ; FMax(a,b)
  %9813 = fmul fast float %9812, %9809
  %9814 = fadd fast float %9813, %9794
  br label %9821

; <label>:9815                                    ; preds = %9792
  %9816 = fsub fast float %9795, %9805
  %9817 = call float @dx.op.unary.f32(i32 6, float %9816)  ; FAbs(value)
  %9818 = fadd fast float %9817, %9793
  %9819 = fmul fast float %9817, %9809
  %9820 = fsub fast float %9794, %9819
  br label %9821

; <label>:9821                                    ; preds = %9815, %9810
  %9822 = phi float [ %9812, %9810 ], [ %9818, %9815 ]
  %9823 = phi float [ %9814, %9810 ], [ %9820, %9815 ]
  %9824 = fcmp fast olt float %9803, %9652
  %9825 = icmp slt i32 %9800, 3
  %9826 = and i1 %9825, %9824
  br i1 %9826, label %9792, label %9827

; <label>:9827                                    ; preds = %9821
  br label %9828

; <label>:9828                                    ; preds = %9827, %9785
  %9829 = phi float [ %9650, %9785 ], [ %9822, %9827 ]
  %9830 = phi float [ %9651, %9785 ], [ %9823, %9827 ]
  %9831 = fsub fast float %9566, %9829
  %9832 = select i1 %9568, float %9829, float %9831
  %9833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9834 = extractvalue %dx.types.CBufRet.f32 %9833, 0
  %9835 = extractvalue %dx.types.CBufRet.f32 %9833, 1
  %9836 = extractvalue %dx.types.CBufRet.f32 %9833, 2
  %9837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9838 = extractvalue %dx.types.CBufRet.f32 %9837, 0
  %9839 = extractvalue %dx.types.CBufRet.f32 %9837, 1
  %9840 = extractvalue %dx.types.CBufRet.f32 %9837, 2
  %9841 = extractvalue %dx.types.CBufRet.f32 %9837, 3
  %9842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9843 = extractvalue %dx.types.CBufRet.f32 %9842, 3
  %9844 = call float @dx.op.binary.f32(i32 36, float %9830, float %9843)  ; FMin(a,b)
  %9845 = fmul fast float %9841, %9832
  %9846 = call float @dx.op.unary.f32(i32 7, float %9845)  ; Saturate(value)
  %9847 = fsub fast float %9838, %9834
  %9848 = fsub fast float %9839, %9835
  %9849 = fsub fast float %9840, %9836
  %9850 = fmul fast float %9846, %9847
  %9851 = fmul fast float %9846, %9848
  %9852 = fmul fast float %9846, %9849
  %9853 = fadd fast float %9850, %9834
  %9854 = fadd fast float %9851, %9835
  %9855 = fadd fast float %9852, %9836
  %9856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9857 = extractvalue %dx.types.CBufRet.f32 %9856, 0
  %9858 = extractvalue %dx.types.CBufRet.f32 %9856, 1
  %9859 = fadd fast float %9858, %9857
  %9860 = call float @dx.op.unary.f32(i32 7, float %9859)  ; Saturate(value)
  %9861 = extractvalue %dx.types.CBufRet.f32 %9856, 2
  %9862 = extractvalue %dx.types.CBufRet.f32 %9856, 3
  %9863 = fadd fast float %9862, %9861
  %9864 = call float @dx.op.unary.f32(i32 7, float %9863)  ; Saturate(value)
  %9865 = fmul fast float %9860, %9844
  %9866 = fmul fast float %9865, %9864
  br label %9867

; <label>:9867                                    ; preds = %9828, %9747, %9582, %9564, %9562
  %9868 = phi float [ %9591, %9582 ], [ %9750, %9747 ], [ %9832, %9828 ], [ 0.000000e+00, %9562 ], [ 0.000000e+00, %9564 ]
  %9869 = phi float [ %9625, %9582 ], [ %9784, %9747 ], [ %9866, %9828 ], [ 0.000000e+00, %9562 ], [ 0.000000e+00, %9564 ]
  %9870 = phi float [ %9612, %9582 ], [ %9771, %9747 ], [ %9853, %9828 ], [ 0.000000e+00, %9562 ], [ 0.000000e+00, %9564 ]
  %9871 = phi float [ %9613, %9582 ], [ %9772, %9747 ], [ %9854, %9828 ], [ 0.000000e+00, %9562 ], [ 0.000000e+00, %9564 ]
  %9872 = phi float [ %9614, %9582 ], [ %9773, %9747 ], [ %9855, %9828 ], [ 0.000000e+00, %9562 ], [ 0.000000e+00, %9564 ]
  %9873 = fmul fast float %9505, %9869
  %9874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9875 = extractvalue %dx.types.CBufRet.f32 %9874, 2
  %9876 = fsub fast float %9512, %9875
  %9877 = fcmp fast olt float %9873, -2.000000e+01
  %9878 = call float @dx.op.unary.f32(i32 21, float %9873)  ; Exp(value)
  %9879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9880 = extractvalue %dx.types.CBufRet.f32 %9879, 2
  %9881 = extractvalue %dx.types.CBufRet.f32 %9879, 3
  %9882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9883 = extractvalue %dx.types.CBufRet.f32 %9882, 2
  %9884 = fmul fast float %9881, %9876
  %9885 = call float @dx.op.unary.f32(i32 7, float %9884)  ; Saturate(value)
  %9886 = fsub fast float 1.000000e+00, %9885
  %9887 = fmul fast float %9497, 5.000000e-01
  %9888 = fadd fast float %9887, 5.000000e-01
  %9889 = call float @dx.op.unary.f32(i32 7, float %9888)  ; Saturate(value)
  %9890 = fsub fast float 1.000000e+00, %9889
  %9891 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9886)  ; FMax(a,b)
  %9892 = fdiv fast float %9890, %9891
  %9893 = fsub fast float %9876, %9454
  %9894 = call float @dx.op.unary.f32(i32 6, float %9893)  ; FAbs(value)
  %9895 = fmul fast float %9894, %9880
  %9896 = call float @dx.op.unary.f32(i32 7, float %9892)  ; Saturate(value)
  %9897 = fsub fast float 1.000000e+00, %9895
  %9898 = fmul fast float %9897, %9896
  %9899 = fadd fast float %9898, %9895
  %9900 = fmul fast float %9883, %9876
  %9901 = call float @dx.op.unary.f32(i32 7, float %9900)  ; Saturate(value)
  %9902 = fsub fast float 1.000000e+00, %9899
  %9903 = fmul fast float %9902, %9901
  %9904 = fadd fast float %9903, %9899
  %9905 = call float @dx.op.unary.f32(i32 7, float %9904)  ; Saturate(value)
  %9906 = fadd fast float %9878, -1.000000e+00
  %9907 = select i1 %9877, float -1.000000e+00, float %9906
  %9908 = fmul fast float %9905, %9907
  %9909 = fadd fast float %9908, 1.000000e+00
  %9910 = fsub fast float -0.000000e+00, %9908
  %9911 = fmul fast float %9870, %9910
  %9912 = fmul fast float %9871, %9910
  %9913 = fmul fast float %9872, %9910
  br label %9914

; <label>:9914                                    ; preds = %9867, %9463
  %9915 = phi float [ %9868, %9867 ], [ 0.000000e+00, %9463 ]
  %9916 = phi float [ %9909, %9867 ], [ 1.000000e+00, %9463 ]
  %9917 = phi float [ %9911, %9867 ], [ 0.000000e+00, %9463 ]
  %9918 = phi float [ %9912, %9867 ], [ 0.000000e+00, %9463 ]
  %9919 = phi float [ %9913, %9867 ], [ 0.000000e+00, %9463 ]
  %9920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9921 = extractvalue %dx.types.CBufRet.f32 %9920, 1
  %9922 = fsub fast float 1.000000e+00, %9916
  %9923 = fmul fast float %9922, %9498
  %9924 = fmul fast float %9923, %9921
  %9925 = fsub fast float %9498, %9924
  br i1 %9491, label %9926, label %9955, !dx.controlflow.hints !172

; <label>:9926                                    ; preds = %9914
  %9927 = fmul fast float %9499, %9488
  %9928 = fadd fast float %9927, %9489
  %9929 = call float @dx.op.unary.f32(i32 7, float %9928)  ; Saturate(value)
  %9930 = fmul fast float %9470, %9925
  %9931 = fsub fast float -0.000000e+00, %9930
  %9932 = fmul fast float %9471, %9925
  %9933 = fsub fast float -0.000000e+00, %9932
  %9934 = call float @dx.op.unary.f32(i32 21, float %9931)  ; Exp(value)
  %9935 = call float @dx.op.unary.f32(i32 21, float %9933)  ; Exp(value)
  %9936 = call float @dx.op.binary.f32(i32 35, float %9478, float %9934)  ; FMax(a,b)
  %9937 = call float @dx.op.binary.f32(i32 35, float %9478, float %9935)  ; FMax(a,b)
  %9938 = fsub fast float %9937, %9936
  %9939 = fmul fast float %9938, %9929
  %9940 = fadd fast float %9939, %9936
  %9941 = call float @dx.op.unary.f32(i32 7, float %9940)  ; Saturate(value)
  %9942 = fsub fast float %9475, %9480
  %9943 = fsub fast float %9476, %9481
  %9944 = fsub fast float %9477, %9482
  %9945 = fmul fast float %9929, %9942
  %9946 = fmul fast float %9929, %9943
  %9947 = fmul fast float %9929, %9944
  %9948 = fadd fast float %9945, %9480
  %9949 = fadd fast float %9946, %9481
  %9950 = fadd fast float %9947, %9482
  %9951 = fsub fast float 1.000000e+00, %9941
  %9952 = fmul fast float %9951, %9948
  %9953 = fmul fast float %9951, %9949
  %9954 = fmul fast float %9951, %9950
  br label %10014

; <label>:9955                                    ; preds = %9914
  %9956 = fmul fast float %9925, %9487
  %9957 = call float @dx.op.unary.f32(i32 7, float %9956)  ; Saturate(value)
  %9958 = fsub fast float 2.000000e+00, %9957
  %9959 = fmul fast float %9957, 9.921875e-01
  %9960 = fmul fast float %9959, %9958
  %9961 = fadd fast float %9960, 3.906250e-03
  %9962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9961, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9963 = extractvalue %dx.types.ResRet.f32 %9962, 0
  %9964 = fsub fast float %9957, %9963
  %9965 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9964)  ; FMax(a,b)
  %9966 = fmul fast float %9473, %9454
  %9967 = call float @dx.op.unary.f32(i32 6, float %9966)  ; FAbs(value)
  %9968 = fcmp fast ogt float %9967, 0x3EB0C6F7A0000000
  br i1 %9968, label %9969, label %9975, !dx.controlflow.hints !173

; <label>:9969                                    ; preds = %9955
  %9970 = fmul fast float %9966, 0xBFF7154760000000
  %9971 = call float @dx.op.unary.f32(i32 21, float %9970)  ; Exp(value)
  %9972 = fsub fast float 1.000000e+00, %9971
  %9973 = fdiv fast float %9972, %9966
  %9974 = fmul fast float %9973, %9483
  br label %9975

; <label>:9975                                    ; preds = %9969, %9955
  %9976 = phi float [ %9974, %9969 ], [ %9483, %9955 ]
  %9977 = fadd fast float %9976, %9485
  %9978 = fmul fast float %9977, %9965
  %9979 = fmul fast float %9470, %9978
  %9980 = fsub fast float -0.000000e+00, %9979
  %9981 = fmul fast float %9471, %9978
  %9982 = fsub fast float -0.000000e+00, %9981
  %9983 = fmul fast float %9472, %9978
  %9984 = fsub fast float -0.000000e+00, %9983
  %9985 = call float @dx.op.unary.f32(i32 21, float %9980)  ; Exp(value)
  %9986 = call float @dx.op.unary.f32(i32 21, float %9982)  ; Exp(value)
  %9987 = call float @dx.op.unary.f32(i32 21, float %9984)  ; Exp(value)
  %9988 = fmul fast float %9499, %9499
  %9989 = fadd fast float %9988, 1.000000e+00
  %9990 = fmul fast float %9989, 0x3FAE8EC8A0000000
  %9991 = fmul fast float %9990, %9480
  %9992 = fmul fast float %9990, %9481
  %9993 = fmul fast float %9990, %9482
  %9994 = fmul fast float %9499, %9478
  %9995 = fsub fast float 1.000000e+00, %9994
  %9996 = fmul fast float %9478, %9478
  %9997 = fsub fast float 1.000000e+00, %9996
  %9998 = fmul fast float %9997, 0x3FB45F3060000000
  %9999 = fmul fast float %9995, %9995
  %10000 = fdiv fast float 1.000000e+00, %9999
  %10001 = fmul fast float %9998, %10000
  %10002 = fmul fast float %10001, %9475
  %10003 = fmul fast float %10001, %9476
  %10004 = fmul fast float %10001, %9477
  %10005 = fadd fast float %10002, %9991
  %10006 = fadd fast float %10003, %9992
  %10007 = fadd fast float %10004, %9993
  %10008 = fsub fast float 1.000000e+00, %9985
  %10009 = fsub fast float 1.000000e+00, %9986
  %10010 = fsub fast float 1.000000e+00, %9987
  %10011 = fmul fast float %10005, %10008
  %10012 = fmul fast float %10006, %10009
  %10013 = fmul fast float %10007, %10010
  br label %10014

; <label>:10014                                   ; preds = %9975, %9926
  %10015 = phi float [ %9952, %9926 ], [ %10011, %9975 ]
  %10016 = phi float [ %9953, %9926 ], [ %10012, %9975 ]
  %10017 = phi float [ %9954, %9926 ], [ %10013, %9975 ]
  %10018 = phi float [ %9941, %9926 ], [ %9985, %9975 ]
  %10019 = phi float [ %9941, %9926 ], [ %9986, %9975 ]
  %10020 = phi float [ %9941, %9926 ], [ %9987, %9975 ]
  br i1 %9507, label %10021, label %10219, !dx.controlflow.hints !174

; <label>:10021                                   ; preds = %10014
  %10022 = extractvalue %dx.types.CBufRet.f32 %9920, 0
  %10023 = fmul fast float %10022, %9922
  %10024 = fsub fast float %9917, %10015
  %10025 = fsub fast float %9918, %10016
  %10026 = fsub fast float %9919, %10017
  %10027 = fmul fast float %10023, %10024
  %10028 = fmul fast float %10023, %10025
  %10029 = fmul fast float %10023, %10026
  %10030 = fadd fast float %10027, %10015
  %10031 = fadd fast float %10028, %10016
  %10032 = fadd fast float %10029, %10017
  %10033 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10018)  ; FMax(a,b)
  %10034 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10019)  ; FMax(a,b)
  %10035 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10020)  ; FMax(a,b)
  %10036 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9916)  ; FMax(a,b)
  %10037 = call float @dx.op.binary.f32(i32 35, float %9915, float %9925)  ; FMax(a,b)
  %10038 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10037)  ; FMax(a,b)
  %10039 = fdiv fast float %9915, %10038
  %10040 = call float @dx.op.unary.f32(i32 7, float %10039)  ; Saturate(value)
  %10041 = fdiv fast float %9925, %10038
  %10042 = call float @dx.op.unary.f32(i32 7, float %10041)  ; Saturate(value)
  %10043 = fcmp fast une float %10036, 1.000000e+00
  br i1 %10043, label %10044, label %10057, !dx.controlflow.hints !175

; <label>:10044                                   ; preds = %10021
  %10045 = call float @dx.op.unary.f32(i32 23, float %10036)  ; Log(value)
  %10046 = fmul fast float %10045, 0x3FE62E4300000000
  %10047 = fmul fast float %9917, %10046
  %10048 = fsub fast float -0.000000e+00, %10047
  %10049 = fmul fast float %9918, %10046
  %10050 = fsub fast float -0.000000e+00, %10049
  %10051 = fmul fast float %9919, %10046
  %10052 = fsub fast float -0.000000e+00, %10051
  %10053 = fsub fast float 1.000000e+00, %10036
  %10054 = fdiv fast float %10048, %10053
  %10055 = fdiv fast float %10050, %10053
  %10056 = fdiv fast float %10052, %10053
  br label %10057

; <label>:10057                                   ; preds = %10044, %10021
  %10058 = phi float [ %10054, %10044 ], [ %9917, %10021 ]
  %10059 = phi float [ %10055, %10044 ], [ %9918, %10021 ]
  %10060 = phi float [ %10056, %10044 ], [ %9919, %10021 ]
  %10061 = phi float [ %10046, %10044 ], [ 0.000000e+00, %10021 ]
  %10062 = fcmp fast une float %10033, 1.000000e+00
  br i1 %10062, label %10063, label %10070, !dx.controlflow.hints !176

; <label>:10063                                   ; preds = %10057
  %10064 = call float @dx.op.unary.f32(i32 23, float %10033)  ; Log(value)
  %10065 = fmul fast float %10064, 0x3FE62E4300000000
  %10066 = fmul fast float %10030, %10065
  %10067 = fsub fast float -0.000000e+00, %10066
  %10068 = fsub fast float 1.000000e+00, %10033
  %10069 = fdiv fast float %10067, %10068
  br label %10070

; <label>:10070                                   ; preds = %10063, %10057
  %10071 = phi float [ %10069, %10063 ], [ %10030, %10057 ]
  %10072 = phi float [ %10065, %10063 ], [ 0.000000e+00, %10057 ]
  %10073 = fcmp fast une float %10034, 1.000000e+00
  br i1 %10073, label %10074, label %10081, !dx.controlflow.hints !176

; <label>:10074                                   ; preds = %10070
  %10075 = call float @dx.op.unary.f32(i32 23, float %10034)  ; Log(value)
  %10076 = fmul fast float %10075, 0x3FE62E4300000000
  %10077 = fmul fast float %10031, %10076
  %10078 = fsub fast float -0.000000e+00, %10077
  %10079 = fsub fast float 1.000000e+00, %10034
  %10080 = fdiv fast float %10078, %10079
  br label %10081

; <label>:10081                                   ; preds = %10074, %10070
  %10082 = phi float [ %10080, %10074 ], [ %10031, %10070 ]
  %10083 = phi float [ %10076, %10074 ], [ 0.000000e+00, %10070 ]
  %10084 = fcmp fast une float %10035, 1.000000e+00
  br i1 %10084, label %10085, label %10092, !dx.controlflow.hints !176

; <label>:10085                                   ; preds = %10081
  %10086 = call float @dx.op.unary.f32(i32 23, float %10035)  ; Log(value)
  %10087 = fmul fast float %10086, 0x3FE62E4300000000
  %10088 = fmul fast float %10032, %10087
  %10089 = fsub fast float -0.000000e+00, %10088
  %10090 = fsub fast float 1.000000e+00, %10035
  %10091 = fdiv fast float %10089, %10090
  br label %10092

; <label>:10092                                   ; preds = %10085, %10081
  %10093 = phi float [ %10091, %10085 ], [ %10032, %10081 ]
  %10094 = phi float [ %10087, %10085 ], [ 0.000000e+00, %10081 ]
  %10095 = fmul fast float %10058, %10042
  %10096 = fmul fast float %10059, %10042
  %10097 = fmul fast float %10060, %10042
  %10098 = fmul fast float %10061, %10042
  %10099 = fmul fast float %10071, %10040
  %10100 = fmul fast float %10082, %10040
  %10101 = fmul fast float %10093, %10040
  %10102 = fmul fast float %10072, %10040
  %10103 = fmul fast float %10083, %10040
  %10104 = fmul fast float %10094, %10040
  %10105 = fadd fast float %10099, %10095
  %10106 = fadd fast float %10100, %10096
  %10107 = fadd fast float %10101, %10097
  %10108 = fadd fast float %10102, %10098
  %10109 = fadd fast float %10103, %10098
  %10110 = fadd fast float %10104, %10098
  %10111 = fcmp fast une float %10108, 0.000000e+00
  br i1 %10111, label %10112, label %10119, !dx.controlflow.hints !177

; <label>:10112                                   ; preds = %10092
  %10113 = fmul fast float %10108, 0x3FF7154760000000
  %10114 = call float @dx.op.unary.f32(i32 21, float %10113)  ; Exp(value)
  %10115 = fsub fast float 1.000000e+00, %10114
  %10116 = fmul fast float %10105, %10115
  %10117 = fsub fast float -0.000000e+00, %10116
  %10118 = fdiv fast float %10117, %10108
  br label %10119

; <label>:10119                                   ; preds = %10112, %10092
  %10120 = phi float [ %10114, %10112 ], [ 1.000000e+00, %10092 ]
  %10121 = phi float [ %10118, %10112 ], [ %10105, %10092 ]
  %10122 = fcmp fast une float %10109, 0.000000e+00
  br i1 %10122, label %10123, label %10130, !dx.controlflow.hints !177

; <label>:10123                                   ; preds = %10119
  %10124 = fmul fast float %10109, 0x3FF7154760000000
  %10125 = call float @dx.op.unary.f32(i32 21, float %10124)  ; Exp(value)
  %10126 = fsub fast float 1.000000e+00, %10125
  %10127 = fmul fast float %10106, %10126
  %10128 = fsub fast float -0.000000e+00, %10127
  %10129 = fdiv fast float %10128, %10109
  br label %10130

; <label>:10130                                   ; preds = %10123, %10119
  %10131 = phi float [ %10125, %10123 ], [ 1.000000e+00, %10119 ]
  %10132 = phi float [ %10129, %10123 ], [ %10106, %10119 ]
  %10133 = fcmp fast une float %10110, 0.000000e+00
  br i1 %10133, label %10134, label %10141, !dx.controlflow.hints !177

; <label>:10134                                   ; preds = %10130
  %10135 = fmul fast float %10110, 0x3FF7154760000000
  %10136 = call float @dx.op.unary.f32(i32 21, float %10135)  ; Exp(value)
  %10137 = fsub fast float 1.000000e+00, %10136
  %10138 = fmul fast float %10107, %10137
  %10139 = fsub fast float -0.000000e+00, %10138
  %10140 = fdiv fast float %10139, %10110
  br label %10141

; <label>:10141                                   ; preds = %10134, %10130
  %10142 = phi float [ %10136, %10134 ], [ 1.000000e+00, %10130 ]
  %10143 = phi float [ %10140, %10134 ], [ %10107, %10130 ]
  %10144 = fcmp fast ogt float %10040, %10042
  br i1 %10144, label %10145, label %10165

; <label>:10145                                   ; preds = %10141
  %10146 = fsub fast float 1.000000e+00, %10042
  %10147 = fmul fast float %10058, %10146
  %10148 = fmul fast float %10059, %10146
  %10149 = fmul fast float %10060, %10146
  %10150 = fmul fast float %10061, %10146
  %10151 = fcmp fast une float %10150, 0.000000e+00
  br i1 %10151, label %10152, label %10203, !dx.controlflow.hints !178

; <label>:10152                                   ; preds = %10145
  %10153 = fmul fast float %10150, 0x3FF7154760000000
  %10154 = call float @dx.op.unary.f32(i32 21, float %10153)  ; Exp(value)
  %10155 = fsub fast float 1.000000e+00, %10154
  %10156 = fmul fast float %10147, %10155
  %10157 = fsub fast float -0.000000e+00, %10156
  %10158 = fmul fast float %10148, %10155
  %10159 = fsub fast float -0.000000e+00, %10158
  %10160 = fmul fast float %10149, %10155
  %10161 = fsub fast float -0.000000e+00, %10160
  %10162 = fdiv fast float %10157, %10150
  %10163 = fdiv fast float %10159, %10150
  %10164 = fdiv fast float %10161, %10150
  br label %10203

; <label>:10165                                   ; preds = %10141
  %10166 = fsub fast float 1.000000e+00, %10040
  %10167 = fmul fast float %10071, %10166
  %10168 = fmul fast float %10082, %10166
  %10169 = fmul fast float %10093, %10166
  %10170 = fmul fast float %10072, %10166
  %10171 = fmul fast float %10083, %10166
  %10172 = fmul fast float %10094, %10166
  %10173 = fcmp fast une float %10170, 0.000000e+00
  br i1 %10173, label %10174, label %10181, !dx.controlflow.hints !177

; <label>:10174                                   ; preds = %10165
  %10175 = fmul fast float %10170, 0x3FF7154760000000
  %10176 = call float @dx.op.unary.f32(i32 21, float %10175)  ; Exp(value)
  %10177 = fsub fast float 1.000000e+00, %10176
  %10178 = fmul fast float %10167, %10177
  %10179 = fsub fast float -0.000000e+00, %10178
  %10180 = fdiv fast float %10179, %10170
  br label %10181

; <label>:10181                                   ; preds = %10174, %10165
  %10182 = phi float [ %10180, %10174 ], [ %10167, %10165 ]
  %10183 = phi float [ %10176, %10174 ], [ 1.000000e+00, %10165 ]
  %10184 = fcmp fast une float %10171, 0.000000e+00
  br i1 %10184, label %10185, label %10192, !dx.controlflow.hints !177

; <label>:10185                                   ; preds = %10181
  %10186 = fmul fast float %10171, 0x3FF7154760000000
  %10187 = call float @dx.op.unary.f32(i32 21, float %10186)  ; Exp(value)
  %10188 = fsub fast float 1.000000e+00, %10187
  %10189 = fmul fast float %10168, %10188
  %10190 = fsub fast float -0.000000e+00, %10189
  %10191 = fdiv fast float %10190, %10171
  br label %10192

; <label>:10192                                   ; preds = %10185, %10181
  %10193 = phi float [ %10191, %10185 ], [ %10168, %10181 ]
  %10194 = phi float [ %10187, %10185 ], [ 1.000000e+00, %10181 ]
  %10195 = fcmp fast une float %10172, 0.000000e+00
  br i1 %10195, label %10196, label %10203, !dx.controlflow.hints !177

; <label>:10196                                   ; preds = %10192
  %10197 = fmul fast float %10172, 0x3FF7154760000000
  %10198 = call float @dx.op.unary.f32(i32 21, float %10197)  ; Exp(value)
  %10199 = fsub fast float 1.000000e+00, %10198
  %10200 = fmul fast float %10169, %10199
  %10201 = fsub fast float -0.000000e+00, %10200
  %10202 = fdiv fast float %10201, %10172
  br label %10203

; <label>:10203                                   ; preds = %10196, %10192, %10152, %10145
  %10204 = phi float [ %10202, %10196 ], [ %10164, %10152 ], [ %10149, %10145 ], [ %10169, %10192 ]
  %10205 = phi float [ %10193, %10196 ], [ %10163, %10152 ], [ %10148, %10145 ], [ %10193, %10192 ]
  %10206 = phi float [ %10182, %10196 ], [ %10162, %10152 ], [ %10147, %10145 ], [ %10182, %10192 ]
  %10207 = phi float [ %10198, %10196 ], [ %10154, %10152 ], [ 1.000000e+00, %10145 ], [ 1.000000e+00, %10192 ]
  %10208 = phi float [ %10194, %10196 ], [ %10154, %10152 ], [ 1.000000e+00, %10145 ], [ %10194, %10192 ]
  %10209 = phi float [ %10183, %10196 ], [ %10154, %10152 ], [ 1.000000e+00, %10145 ], [ %10183, %10192 ]
  %10210 = fmul fast float %10209, %10121
  %10211 = fmul fast float %10208, %10132
  %10212 = fmul fast float %10207, %10143
  %10213 = fadd fast float %10210, %10206
  %10214 = fadd fast float %10211, %10205
  %10215 = fadd fast float %10212, %10204
  %10216 = fmul fast float %10209, %10120
  %10217 = fmul fast float %10208, %10131
  %10218 = fmul fast float %10207, %10142
  br label %10219

; <label>:10219                                   ; preds = %10203, %10014
  %10220 = phi float [ %10218, %10203 ], [ %10020, %10014 ]
  %10221 = phi float [ %10217, %10203 ], [ %10019, %10014 ]
  %10222 = phi float [ %10216, %10203 ], [ %10018, %10014 ]
  %10223 = phi float [ %10215, %10203 ], [ %10017, %10014 ]
  %10224 = phi float [ %10214, %10203 ], [ %10016, %10014 ]
  %10225 = phi float [ %10213, %10203 ], [ %10015, %10014 ]
  %10226 = fmul fast float %10225, %9167
  %10227 = fmul fast float %10224, %9169
  %10228 = fmul fast float %10223, %9171
  %10229 = fmul fast float %10222, %9462
  %10230 = call float @dx.op.dot3.f32(i32 55, float %10222, float %10221, float %10220, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10231 = call float @dx.op.dot3.f32(i32 55, float %10226, float %10227, float %10228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10232 = select i1 %226, float %10230, float %10222
  %10233 = select i1 %226, float %10230, float %10221
  %10234 = select i1 %226, float 1.000000e+00, float %10220
  %10235 = select i1 %226, float %10231, float %10226
  %10236 = select i1 %226, float 0.000000e+00, float %10227
  %10237 = select i1 %226, float 0.000000e+00, float %10228
  %10238 = fmul fast float %10232, %9456
  %10239 = fmul fast float %10233, %9457
  %10240 = fmul fast float %10234, %9458
  %10241 = fadd fast float %10238, %10235
  %10242 = fadd fast float %10239, %10236
  %10243 = fadd fast float %10237, %10240
  %10244 = fmul fast float %10232, %9459
  %10245 = fmul fast float %10233, %9460
  %10246 = fmul fast float %10234, %9461
  %10247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10248 = extractvalue %dx.types.CBufRet.i32 %10247, 0
  %10249 = icmp eq i32 %10248, 0
  br i1 %10249, label %10617, label %10250, !dx.controlflow.hints !179

; <label>:10250                                   ; preds = %10219
  %10251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10252 = extractvalue %dx.types.CBufRet.f32 %10251, 2
  %10253 = extractvalue %dx.types.CBufRet.f32 %10251, 3
  %10254 = fmul fast float %10252, %109
  %10255 = fmul fast float %10253, %110
  %10256 = fmul fast float %10254, 2.000000e+00
  %10257 = fmul fast float %10255, 2.000000e+00
  %10258 = fsub fast float 1.000000e+00, %10256
  %10259 = fsub fast float 1.000000e+00, %10257
  %10260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10261 = extractvalue %dx.types.CBufRet.f32 %10260, 0
  %10262 = extractvalue %dx.types.CBufRet.f32 %10260, 1
  %10263 = extractvalue %dx.types.CBufRet.f32 %10260, 2
  %10264 = fmul fast float %10258, %10261
  %10265 = fmul fast float %10258, %10262
  %10266 = fmul fast float %10258, %10263
  %10267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10268 = extractvalue %dx.types.CBufRet.f32 %10267, 0
  %10269 = extractvalue %dx.types.CBufRet.f32 %10267, 1
  %10270 = extractvalue %dx.types.CBufRet.f32 %10267, 2
  %10271 = fmul fast float %10259, %10268
  %10272 = fmul fast float %10259, %10269
  %10273 = fmul fast float %10259, %10270
  %10274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10275 = extractvalue %dx.types.CBufRet.f32 %10274, 0
  %10276 = extractvalue %dx.types.CBufRet.f32 %10274, 1
  %10277 = extractvalue %dx.types.CBufRet.f32 %10274, 2
  %10278 = fadd fast float %10271, %10275
  %10279 = fadd fast float %10278, %10264
  %10280 = fadd fast float %10272, %10276
  %10281 = fadd fast float %10280, %10265
  %10282 = fadd fast float %10273, %10277
  %10283 = fadd fast float %10282, %10266
  %10284 = fmul fast float %10279, %9455
  %10285 = fmul fast float %10281, %9455
  %10286 = fmul fast float %10283, %9455
  %10287 = fmul fast float %10284, %10284
  %10288 = fmul fast float %10285, %10285
  %10289 = fadd fast float %10287, %10288
  %10290 = fmul fast float %10286, %10286
  %10291 = fadd fast float %10289, %10290
  %10292 = call float @dx.op.unary.f32(i32 24, float %10291)  ; Sqrt(value)
  %10293 = extractvalue %dx.types.CBufRet.f32 %9182, 0
  %10294 = fsub fast float %10292, %10293
  %10295 = extractvalue %dx.types.CBufRet.f32 %9182, 2
  %10296 = fmul fast float %10294, %10295
  %10297 = call float @dx.op.unary.f32(i32 7, float %10296)  ; Saturate(value)
  %10298 = fadd fast float %10297, -5.000000e-01
  %10299 = fmul fast float %10298, 2.000000e+00
  %10300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10301 = extractvalue %dx.types.CBufRet.f32 %10300, 2
  %10302 = call float @dx.op.binary.f32(i32 36, float %10301, float %10299)  ; FMin(a,b)
  %10303 = fsub fast float -0.000000e+00, %10301
  %10304 = fcmp fast ogt float %10302, %10303
  br i1 %10304, label %10305, label %10617, !dx.controlflow.hints !180

; <label>:10305                                   ; preds = %10250
  %10306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10307 = extractvalue %dx.types.CBufRet.f32 %10306, 3
  %10308 = fcmp fast ogt float %10307, 0.000000e+00
  br i1 %10308, label %10309, label %10384, !dx.controlflow.hints !181

; <label>:10309                                   ; preds = %10305
  %10310 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10311 = extractvalue %dx.types.Dimensions %10310, 0
  %10312 = sitofp i32 %10311 to float
  %10313 = extractvalue %dx.types.Dimensions %10310, 1
  %10314 = sitofp i32 %10313 to float
  %10315 = fmul fast float %10254, %10312
  %10316 = fmul fast float %10255, %10314
  %10317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10318 = extractvalue %dx.types.CBufRet.f32 %10317, 1
  %10319 = fsub fast float -0.000000e+00, %10318
  %10320 = fptoui float %10319 to i32
  %10321 = fptoui float %10315 to i32
  %10322 = fptoui float %10316 to i32
  %10323 = and i32 %10320, 31
  %10324 = lshr i32 %10321, %10323
  %10325 = lshr i32 %10322, %10323
  %10326 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10320, i32 %10324, i32 %10325, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10327 = extractvalue %dx.types.ResRet.f32 %10326, 0
  %10328 = fcmp fast olt float %10327, -1.000000e+00
  %10329 = fcmp fast ogt float %10327, -1.000000e+00
  %10330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10331 = extractvalue %dx.types.CBufRet.f32 %10330, 1
  %10332 = select i1 %10329, float %10331, float 1.000000e+00
  %10333 = fadd fast float %10327, 1.000000e+00
  %10334 = fmul fast float %10332, %10333
  %10335 = call float @dx.op.unary.f32(i32 6, float %10334)  ; FAbs(value)
  %10336 = extractvalue %dx.types.CBufRet.f32 %10330, 3
  %10337 = fcmp fast oge float %10335, %10336
  %10338 = select i1 %10337, float 0x4197782600000000, float %10335
  %10339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10340 = extractvalue %dx.types.CBufRet.f32 %10339, 0
  %10341 = extractvalue %dx.types.CBufRet.f32 %10339, 1
  %10342 = extractvalue %dx.types.CBufRet.f32 %10339, 2
  %10343 = select i1 %10328, float %10340, float %10261
  %10344 = select i1 %10328, float %10341, float %10262
  %10345 = select i1 %10328, float %10342, float %10263
  %10346 = fmul fast float %10343, %10258
  %10347 = fmul fast float %10344, %10258
  %10348 = fmul fast float %10345, %10258
  %10349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10350 = extractvalue %dx.types.CBufRet.f32 %10349, 0
  %10351 = extractvalue %dx.types.CBufRet.f32 %10349, 1
  %10352 = extractvalue %dx.types.CBufRet.f32 %10349, 2
  %10353 = select i1 %10328, float %10350, float %10268
  %10354 = select i1 %10328, float %10351, float %10269
  %10355 = select i1 %10328, float %10352, float %10270
  %10356 = fmul fast float %10353, %10259
  %10357 = fmul fast float %10354, %10259
  %10358 = fmul fast float %10355, %10259
  %10359 = fadd fast float %10356, %10346
  %10360 = fadd fast float %10357, %10347
  %10361 = fadd fast float %10358, %10348
  %10362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10363 = extractvalue %dx.types.CBufRet.f32 %10362, 0
  %10364 = extractvalue %dx.types.CBufRet.f32 %10362, 1
  %10365 = extractvalue %dx.types.CBufRet.f32 %10362, 2
  %10366 = select i1 %10328, float %10363, float %10275
  %10367 = select i1 %10328, float %10364, float %10276
  %10368 = select i1 %10328, float %10365, float %10277
  %10369 = fadd fast float %10359, %10366
  %10370 = fadd fast float %10360, %10367
  %10371 = fadd fast float %10361, %10368
  %10372 = fmul fast float %10369, %10338
  %10373 = fmul fast float %10370, %10338
  %10374 = fmul fast float %10371, %10338
  %10375 = fmul fast float %10372, %10372
  %10376 = fmul fast float %10373, %10373
  %10377 = fadd fast float %10375, %10376
  %10378 = fmul fast float %10374, %10374
  %10379 = fadd fast float %10377, %10378
  %10380 = call float @dx.op.unary.f32(i32 24, float %10379)  ; Sqrt(value)
  %10381 = fsub fast float %10380, %10293
  %10382 = fmul fast float %10381, %10295
  %10383 = call float @dx.op.unary.f32(i32 7, float %10382)  ; Saturate(value)
  br label %10384

; <label>:10384                                   ; preds = %10309, %10305
  %10385 = phi float [ %10383, %10309 ], [ 1.000000e+00, %10305 ]
  %10386 = fmul fast float %10302, 5.000000e-01
  %10387 = fadd fast float %10386, 5.000000e-01
  %10388 = call float @dx.op.unary.f32(i32 22, float %10387)  ; Frc(value)
  %10389 = call float @dx.op.unary.f32(i32 27, float %10388)  ; Round_ni(value)
  %10390 = call float @dx.op.unary.f32(i32 22, float %10388)  ; Frc(value)
  %10391 = fmul fast float %10390, 2.000000e+00
  %10392 = fadd fast float %10391, -1.000000e+00
  %10393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10254, float %10255, float %10389, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10394 = extractvalue %dx.types.ResRet.f32 %10393, 0
  %10395 = extractvalue %dx.types.ResRet.f32 %10393, 1
  %10396 = extractvalue %dx.types.ResRet.f32 %10393, 2
  %10397 = extractvalue %dx.types.ResRet.f32 %10393, 3
  %10398 = fadd fast float %10394, -5.000000e-01
  %10399 = fadd fast float %10396, -5.000000e-01
  %10400 = fmul fast float %10398, 0xBFD5555560000000
  %10401 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10399, float %10400)  ; FMad(a,b,c)
  %10402 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10395, float 0.000000e+00)  ; FMad(a,b,c)
  %10403 = fadd fast float %10402, %10397
  %10404 = fmul fast float %10398, -7.500000e-01
  %10405 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10399, float %10404)  ; FMad(a,b,c)
  %10406 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10395, float 0.000000e+00)  ; FMad(a,b,c)
  %10407 = fadd fast float %10406, %10397
  %10408 = call float @dx.op.binary.f32(i32 35, float %10401, float -1.000000e+00)  ; FMax(a,b)
  %10409 = call float @dx.op.binary.f32(i32 35, float %10403, float -1.000000e+00)  ; FMax(a,b)
  %10410 = call float @dx.op.binary.f32(i32 35, float %10405, float -1.000000e+00)  ; FMax(a,b)
  %10411 = call float @dx.op.binary.f32(i32 35, float %10407, float -1.000000e+00)  ; FMax(a,b)
  %10412 = call float @dx.op.binary.f32(i32 36, float %10408, float 1.000000e+00)  ; FMin(a,b)
  %10413 = call float @dx.op.binary.f32(i32 36, float %10409, float 1.000000e+00)  ; FMin(a,b)
  %10414 = call float @dx.op.binary.f32(i32 36, float %10410, float 1.000000e+00)  ; FMin(a,b)
  %10415 = call float @dx.op.binary.f32(i32 36, float %10411, float 1.000000e+00)  ; FMin(a,b)
  %10416 = fcmp fast olt float %10412, 0x3FEFFF8020000000
  br i1 %10416, label %10417, label %10532, !dx.controlflow.hints !182

; <label>:10417                                   ; preds = %10384
  %10418 = extractvalue %dx.types.CBufRet.f32 %10300, 3
  %10419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10420 = extractvalue %dx.types.CBufRet.f32 %10419, 0
  %10421 = extractvalue %dx.types.CBufRet.f32 %10419, 1
  %10422 = extractvalue %dx.types.CBufRet.f32 %10419, 2
  %10423 = extractvalue %dx.types.CBufRet.f32 %10419, 3
  %10424 = fsub fast float %10420, %10412
  %10425 = fsub fast float %10421, %10413
  %10426 = fsub fast float %10422, %10414
  %10427 = fsub fast float %10423, %10415
  %10428 = fmul fast float %10424, %10418
  %10429 = fmul fast float %10425, %10418
  %10430 = fmul fast float %10426, %10418
  %10431 = fmul fast float %10427, %10418
  %10432 = fadd fast float %10428, %10412
  %10433 = fadd fast float %10429, %10413
  %10434 = fsub fast float -0.000000e+00, %10433
  %10435 = fadd fast float %10430, %10414
  %10436 = fadd fast float %10431, %10415
  %10437 = fmul fast float %10432, %10432
  %10438 = fsub fast float %10433, %10437
  %10439 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10438)  ; FMax(a,b)
  %10440 = fdiv fast float 1.000000e+00, %10439
  %10441 = fmul fast float %10433, %10432
  %10442 = fsub fast float %10435, %10441
  %10443 = fsub fast float %10392, %10432
  %10444 = fmul fast float %10392, %10392
  %10445 = fsub fast float %10444, %10433
  %10446 = fmul fast float %10443, %10440
  %10447 = fmul fast float %10446, %10442
  %10448 = fsub fast float %10445, %10447
  %10449 = fmul fast float %10433, %10433
  %10450 = fsub fast float %10436, %10449
  %10451 = fmul fast float %10442, %10442
  %10452 = fmul fast float %10451, %10440
  %10453 = fsub fast float %10450, %10452
  %10454 = fdiv fast float %10448, %10453
  %10455 = fmul fast float %10442, %10454
  %10456 = fsub fast float %10443, %10455
  %10457 = fmul fast float %10456, %10440
  %10458 = fmul fast float %10457, %10432
  %10459 = fsub fast float 1.000000e+00, %10458
  %10460 = fmul fast float %10433, %10454
  %10461 = fsub fast float %10459, %10460
  %10462 = fmul fast float %10457, %10457
  %10463 = fmul fast float %10454, 4.000000e+00
  %10464 = fmul fast float %10463, %10461
  %10465 = fsub fast float %10462, %10464
  %10466 = call float @dx.op.unary.f32(i32 24, float %10465)  ; Sqrt(value)
  %10467 = fcmp fast oge float %10457, 0.000000e+00
  %10468 = fsub fast float -0.000000e+00, %10466
  %10469 = select i1 %10467, float %10468, float %10466
  %10470 = fsub fast float %10469, %10457
  %10471 = fdiv fast float %10470, %10454
  %10472 = fdiv fast float %10461, %10470
  %10473 = fmul fast float %10471, 5.000000e-01
  %10474 = fmul fast float %10472, 2.000000e+00
  %10475 = select i1 %10467, float %10473, float %10474
  %10476 = select i1 %10467, float %10474, float %10473
  %10477 = call float @dx.op.binary.f32(i32 35, float %10475, float %10476)  ; FMax(a,b)
  %10478 = call float @dx.op.binary.f32(i32 36, float %10475, float %10476)  ; FMin(a,b)
  %10479 = fcmp fast ogt float %10392, %10478
  br i1 %10479, label %10480, label %10490

; <label>:10480                                   ; preds = %10417
  %10481 = fsub fast float %10392, %10478
  %10482 = fsub fast float %10477, %10478
  %10483 = fmul fast float %10481, %10482
  %10484 = fmul fast float %10477, %10392
  %10485 = fadd fast float %10477, %10392
  %10486 = fmul fast float %10485, %10432
  %10487 = fadd fast float %10484, %10433
  %10488 = fsub fast float %10487, %10486
  %10489 = fdiv fast float %10488, %10483
  br label %10490

; <label>:10490                                   ; preds = %10480, %10417
  %10491 = phi float [ %10489, %10480 ], [ 0.000000e+00, %10417 ]
  %10492 = fcmp fast ogt float %10392, %10477
  %10493 = fsub fast float %10392, %10477
  br i1 %10492, label %10494, label %10504

; <label>:10494                                   ; preds = %10490
  %10495 = fsub fast float %10477, %10478
  %10496 = fmul fast float %10495, %10493
  %10497 = fmul fast float %10478, %10392
  %10498 = fadd fast float %10478, %10392
  %10499 = fmul fast float %10498, %10432
  %10500 = fsub fast float %10434, %10497
  %10501 = fadd fast float %10500, %10499
  %10502 = fdiv fast float %10501, %10496
  %10503 = fadd fast float %10502, %10491
  br label %10504

; <label>:10504                                   ; preds = %10494, %10490
  %10505 = phi float [ %10503, %10494 ], [ %10491, %10490 ]
  %10506 = fsub fast float %10392, %10478
  %10507 = fmul fast float %10506, %10493
  %10508 = fmul fast float %10478, %10477
  %10509 = fadd fast float %10478, %10477
  %10510 = fmul fast float %10509, %10432
  %10511 = fadd fast float %10508, %10433
  %10512 = fsub fast float %10511, %10510
  %10513 = fdiv fast float %10512, %10507
  %10514 = call float @dx.op.unary.f32(i32 7, float %10505)  ; Saturate(value)
  %10515 = fcmp fast oeq float %9183, 0.000000e+00
  %10516 = extractvalue %dx.types.CBufRet.f32 %10300, 0
  %10517 = fcmp fast oeq float %10516, 0.000000e+00
  %10518 = or i1 %10515, %10517
  %10519 = fmul fast float %10516, 2.000000e+00
  %10520 = fadd fast float %10301, %10302
  %10521 = fdiv fast float %10520, %10519
  %10522 = call float @dx.op.unary.f32(i32 7, float %10521)  ; Saturate(value)
  %10523 = fmul fast float %10522, 2.000000e+00
  %10524 = fsub fast float 3.000000e+00, %10523
  %10525 = fmul fast float %10522, %10522
  %10526 = fmul fast float %10525, %10524
  %10527 = select i1 %10518, float 1.000000e+00, float %10526
  %10528 = fmul fast float %10513, %9183
  %10529 = fadd fast float %10514, %10528
  %10530 = call float @dx.op.unary.f32(i32 7, float %10529)  ; Saturate(value)
  %10531 = fmul fast float %10527, %10530
  br label %10532

; <label>:10532                                   ; preds = %10504, %10384
  %10533 = phi float [ %10531, %10504 ], [ 0.000000e+00, %10384 ]
  %10534 = fsub fast float 1.000000e+00, %10533
  %10535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10254, float %10255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10536 = extractvalue %dx.types.ResRet.f32 %10535, 0
  %10537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10538 = extractvalue %dx.types.CBufRet.i32 %10537, 2
  %10539 = icmp eq i32 %10538, 0
  br i1 %10539, label %10545, label %10540

; <label>:10540                                   ; preds = %10532
  %10541 = call float @dx.op.unary.f32(i32 7, float %10533)  ; Saturate(value)
  %10542 = fadd fast float %10536, -1.000000e+00
  %10543 = fmul fast float %10541, %10542
  %10544 = fadd fast float %10543, 1.000000e+00
  br label %10545

; <label>:10545                                   ; preds = %10540, %10532
  %10546 = phi float [ %10544, %10540 ], [ %10534, %10532 ]
  br i1 %10308, label %10547, label %10565

; <label>:10547                                   ; preds = %10545
  %10548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10549 = extractvalue %dx.types.CBufRet.f32 %10548, 1
  %10550 = fsub fast float %10385, %10549
  %10551 = call float @dx.op.unary.f32(i32 7, float %10550)  ; Saturate(value)
  %10552 = fsub fast float %10385, %10307
  %10553 = call float @dx.op.unary.f32(i32 7, float %10552)  ; Saturate(value)
  %10554 = fsub fast float %10551, %10553
  %10555 = fsub fast float %10387, %10553
  %10556 = fdiv fast float %10555, %10554
  %10557 = call float @dx.op.unary.f32(i32 7, float %10556)  ; Saturate(value)
  %10558 = fmul fast float %10557, 2.000000e+00
  %10559 = fsub fast float 3.000000e+00, %10558
  %10560 = fsub fast float %10536, %10546
  %10561 = fmul fast float %10557, %10557
  %10562 = fmul fast float %10561, %10560
  %10563 = fmul fast float %10562, %10559
  %10564 = fadd fast float %10563, %10546
  br label %10565

; <label>:10565                                   ; preds = %10547, %10545
  %10566 = phi float [ %10564, %10547 ], [ %10546, %10545 ]
  %10567 = call float @dx.op.binary.f32(i32 35, float %10536, float %10566)  ; FMax(a,b)
  %10568 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10569 = extractvalue %dx.types.CBufRet.i32 %10568, 2
  %10570 = and i32 %10569, 1
  %10571 = icmp eq i32 %10570, 0
  %10572 = fcmp fast une float %10567, 1.000000e+00
  %10573 = and i1 %10572, %10571
  br i1 %10573, label %10574, label %10593

; <label>:10574                                   ; preds = %10565
  %10575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10254, float %10255, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10576 = extractvalue %dx.types.ResRet.f32 %10575, 0
  %10577 = extractvalue %dx.types.ResRet.f32 %10575, 1
  %10578 = extractvalue %dx.types.ResRet.f32 %10575, 2
  %10579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10580 = extractvalue %dx.types.CBufRet.f32 %10579, 1
  %10581 = fmul fast float %10580, %10576
  %10582 = fmul fast float %10580, %10577
  %10583 = fmul fast float %10580, %10578
  %10584 = fcmp fast ogt float %10536, 0x3FEFFF2E40000000
  %10585 = fsub fast float 1.000000e+00, %10567
  %10586 = fsub fast float 1.000000e+00, %10536
  %10587 = fdiv fast float %10585, %10586
  %10588 = call float @dx.op.unary.f32(i32 7, float %10587)  ; Saturate(value)
  %10589 = select i1 %10584, float 0.000000e+00, float %10588
  %10590 = fmul fast float %10581, %10589
  %10591 = fmul fast float %10582, %10589
  %10592 = fmul fast float %10583, %10589
  br label %10593

; <label>:10593                                   ; preds = %10574, %10565
  %10594 = phi float [ 0.000000e+00, %10565 ], [ %10590, %10574 ]
  %10595 = phi float [ 0.000000e+00, %10565 ], [ %10591, %10574 ]
  %10596 = phi float [ 0.000000e+00, %10565 ], [ %10592, %10574 ]
  %10597 = fmul fast float %10594, %9167
  %10598 = fmul fast float %10595, %9169
  %10599 = fmul fast float %10596, %9171
  %10600 = fmul fast float %10567, %10229
  %10601 = call float @dx.op.dot3.f32(i32 55, float %10567, float %10567, float %10567, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10602 = call float @dx.op.dot3.f32(i32 55, float %10597, float %10598, float %10599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10603 = select i1 %226, float %10601, float %10567
  %10604 = select i1 %226, float 1.000000e+00, float %10567
  %10605 = select i1 %226, float %10602, float %10597
  %10606 = select i1 %226, float 0.000000e+00, float %10598
  %10607 = select i1 %226, float 0.000000e+00, float %10599
  %10608 = fmul fast float %10603, %10241
  %10609 = fmul fast float %10603, %10242
  %10610 = fmul fast float %10604, %10243
  %10611 = fadd fast float %10608, %10605
  %10612 = fadd fast float %10609, %10606
  %10613 = fadd fast float %10607, %10610
  %10614 = fmul fast float %10603, %10244
  %10615 = fmul fast float %10603, %10245
  %10616 = fmul fast float %10604, %10246
  br label %10617

; <label>:10617                                   ; preds = %10593, %10250, %10219, %9451
  %10618 = phi float [ %9456, %9451 ], [ %10241, %10219 ], [ %10611, %10593 ], [ %10241, %10250 ]
  %10619 = phi float [ %9457, %9451 ], [ %10242, %10219 ], [ %10612, %10593 ], [ %10242, %10250 ]
  %10620 = phi float [ %9458, %9451 ], [ %10243, %10219 ], [ %10613, %10593 ], [ %10243, %10250 ]
  %10621 = phi float [ %9459, %9451 ], [ %10244, %10219 ], [ %10614, %10593 ], [ %10244, %10250 ]
  %10622 = phi float [ %9460, %9451 ], [ %10245, %10219 ], [ %10615, %10593 ], [ %10245, %10250 ]
  %10623 = phi float [ %9461, %9451 ], [ %10246, %10219 ], [ %10616, %10593 ], [ %10246, %10250 ]
  %10624 = phi float [ %9462, %9451 ], [ %10229, %10219 ], [ %10600, %10593 ], [ %10229, %10250 ]
  %10625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10626 = extractvalue %dx.types.CBufRet.f32 %10625, 2
  %10627 = extractvalue %dx.types.CBufRet.f32 %10625, 3
  %10628 = fmul fast float %10626, %109
  %10629 = fmul fast float %10627, %110
  %10630 = call float @dx.op.unary.f32(i32 7, float %10628)  ; Saturate(value)
  %10631 = call float @dx.op.unary.f32(i32 7, float %10629)  ; Saturate(value)
  %10632 = select i1 %9193, i32 2, i32 0
  %10633 = or i32 %10632, 1
  %10634 = uitofp i32 %10633 to float
  %10635 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10630, float %10631, float %10634, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10636 = extractvalue %dx.types.ResRet.f32 %10635, 0
  %10637 = extractvalue %dx.types.ResRet.f32 %10635, 1
  %10638 = extractvalue %dx.types.ResRet.f32 %10635, 2
  %10639 = extractvalue %dx.types.ResRet.f32 %10635, 3
  %10640 = add nuw nsw i32 %10632, 2
  %10641 = uitofp i32 %10640 to float
  %10642 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10630, float %10631, float %10641, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10643 = extractvalue %dx.types.ResRet.f32 %10642, 0
  %10644 = extractvalue %dx.types.ResRet.f32 %10642, 1
  %10645 = extractvalue %dx.types.ResRet.f32 %10642, 2
  %10646 = extractvalue %dx.types.ResRet.f32 %10642, 3
  %10647 = call float @dx.op.binary.f32(i32 35, float %10637, float %10638)  ; FMax(a,b)
  %10648 = call float @dx.op.binary.f32(i32 35, float %10636, float %10647)  ; FMax(a,b)
  %10649 = call float @dx.op.binary.f32(i32 35, float %10648, float %10639)  ; FMax(a,b)
  %10650 = call float @dx.op.binary.f32(i32 36, float %10644, float %10645)  ; FMin(a,b)
  %10651 = call float @dx.op.binary.f32(i32 36, float %10643, float %10650)  ; FMin(a,b)
  %10652 = call float @dx.op.binary.f32(i32 36, float %10651, float %10646)  ; FMin(a,b)
  %10653 = fmul fast float %10649, 2.550000e+02
  %10654 = fadd fast float %10653, 0x3F70101020000000
  %10655 = fptoui float %10654 to i32
  %10656 = fmul fast float %10652, 2.550000e+02
  %10657 = fadd fast float %10656, 0x3F70101020000000
  %10658 = fptoui float %10657 to i32
  %10659 = icmp ult i32 %10655, %10658
  br i1 %10659, label %10660, label %10829

; <label>:10660                                   ; preds = %10617
  %10661 = fcmp fast ogt float %96, 9.843750e-01
  %10662 = fadd fast float %9455, -4.000000e+00
  %10663 = select i1 %10661, float -4.000000e+00, float %10662
  %10664 = call float @dx.op.binary.f32(i32 35, float %10663, float 0.000000e+00)  ; FMax(a,b)
  %10665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10666 = extractvalue %dx.types.CBufRet.f32 %10665, 0
  %10667 = fadd fast float %10666, %10664
  %10668 = extractvalue %dx.types.CBufRet.f32 %10665, 2
  %10669 = fmul fast float %10667, %10668
  %10670 = call float @dx.op.unary.f32(i32 23, float %10669)  ; Log(value)
  %10671 = extractvalue %dx.types.CBufRet.f32 %10665, 3
  %10672 = fmul fast float %10671, %10670
  %10673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10674 = extractvalue %dx.types.CBufRet.f32 %10673, 2
  %10675 = fmul fast float %10672, %10674
  %10676 = call float @dx.op.unary.f32(i32 7, float %10675)  ; Saturate(value)
  %10677 = uitofp i32 %10655 to float
  %10678 = uitofp i32 %10658 to float
  %10679 = fadd fast float %10677, 5.000000e-01
  %10680 = fadd fast float %10678, 5.000000e-01
  %10681 = fmul fast float %10674, %10679
  %10682 = fmul fast float %10674, %10680
  %10683 = fadd fast float %10681, 0x3F0FFB4800000000
  %10684 = fadd fast float %10682, 0xBF0FFB4800000000
  %10685 = call float @dx.op.binary.f32(i32 35, float %10676, float %10683)  ; FMax(a,b)
  %10686 = call float @dx.op.binary.f32(i32 36, float %10685, float %10684)  ; FMin(a,b)
  %10687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10688 = extractvalue %dx.types.CBufRet.f32 %10687, 1
  %10689 = extractvalue %dx.types.CBufRet.f32 %10687, 2
  %10690 = extractvalue %dx.types.CBufRet.f32 %10687, 0
  %10691 = select i1 %9193, float %10690, float 0.000000e+00
  %10692 = fmul fast float %10688, %10686
  %10693 = fadd fast float %10691, %10692
  %10694 = fadd fast float %10691, %10689
  %10695 = fsub fast float %10688, %10689
  %10696 = fadd fast float %10695, %10691
  %10697 = call float @dx.op.binary.f32(i32 35, float %10693, float %10694)  ; FMax(a,b)
  %10698 = call float @dx.op.binary.f32(i32 36, float %10697, float %10696)  ; FMin(a,b)
  %10699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10630, float %10631, float %10698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10700 = extractvalue %dx.types.ResRet.f32 %10699, 0
  %10701 = extractvalue %dx.types.ResRet.f32 %10699, 1
  %10702 = extractvalue %dx.types.ResRet.f32 %10699, 2
  %10703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10704 = extractvalue %dx.types.CBufRet.i32 %10703, 0
  %10705 = extractvalue %dx.types.CBufRet.i32 %10703, 1
  %10706 = uitofp i32 %10704 to float
  %10707 = uitofp i32 %10705 to float
  %10708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10709 = extractvalue %dx.types.CBufRet.f32 %10708, 0
  %10710 = extractvalue %dx.types.CBufRet.f32 %10708, 1
  %10711 = fmul fast float %10706, %10630
  %10712 = fmul fast float %10707, %10631
  %10713 = fadd fast float %10711, -5.000000e-01
  %10714 = fadd fast float %10712, -5.000000e-01
  %10715 = call float @dx.op.unary.f32(i32 22, float %10713)  ; Frc(value)
  %10716 = call float @dx.op.unary.f32(i32 22, float %10714)  ; Frc(value)
  %10717 = fmul fast float %10715, %10715
  %10718 = fmul fast float %10717, %10715
  %10719 = fsub fast float 3.000000e+00, %10715
  %10720 = fmul fast float %10717, %10719
  %10721 = fmul fast float %10715, 3.000000e+00
  %10722 = fmul fast float %10718, 3.000000e+00
  %10723 = fmul fast float %10717, 6.000000e+00
  %10724 = fsub fast float %10722, %10723
  %10725 = fadd fast float %10724, 4.000000e+00
  %10726 = fmul fast float %10725, 0x3FC5555560000000
  %10727 = fmul fast float %10718, -3.000000e+00
  %10728 = fadd fast float %10717, %10715
  %10729 = fmul fast float %10728, 3.000000e+00
  %10730 = fadd fast float %10727, 1.000000e+00
  %10731 = fadd fast float %10730, %10729
  %10732 = fmul fast float %10718, 0x3FC5555560000000
  %10733 = fmul fast float %10716, %10716
  %10734 = fmul fast float %10733, %10716
  %10735 = fsub fast float 3.000000e+00, %10716
  %10736 = fmul fast float %10733, %10735
  %10737 = fmul fast float %10716, 3.000000e+00
  %10738 = fmul fast float %10734, 3.000000e+00
  %10739 = fmul fast float %10733, 6.000000e+00
  %10740 = fsub fast float %10738, %10739
  %10741 = fadd fast float %10740, 4.000000e+00
  %10742 = fmul fast float %10741, 0x3FC5555560000000
  %10743 = fmul fast float %10734, -3.000000e+00
  %10744 = fadd fast float %10733, %10716
  %10745 = fmul fast float %10744, 3.000000e+00
  %10746 = fadd fast float %10743, 1.000000e+00
  %10747 = fadd fast float %10746, %10745
  %10748 = fmul fast float %10734, 0x3FC5555560000000
  %10749 = fadd fast float %10715, 1.000000e+00
  %10750 = fsub fast float 1.000000e+00, %10721
  %10751 = fadd fast float %10750, %10720
  %10752 = fadd fast float %10751, %10725
  %10753 = fmul fast float %10752, 0x3FC5555560000000
  %10754 = fdiv fast float %10726, %10753
  %10755 = fsub fast float %10749, %10754
  %10756 = fsub fast float 1.000000e+00, %10715
  %10757 = fadd fast float %10731, %10718
  %10758 = fmul fast float %10757, 0x3FC5555560000000
  %10759 = fdiv fast float %10732, %10758
  %10760 = fadd fast float %10756, %10759
  %10761 = fadd fast float %10716, 1.000000e+00
  %10762 = fsub fast float 1.000000e+00, %10737
  %10763 = fadd fast float %10762, %10736
  %10764 = fadd fast float %10763, %10741
  %10765 = fmul fast float %10764, 0x3FC5555560000000
  %10766 = fdiv fast float %10742, %10765
  %10767 = fsub fast float %10761, %10766
  %10768 = fsub fast float 1.000000e+00, %10716
  %10769 = fadd fast float %10747, %10734
  %10770 = fmul fast float %10769, 0x3FC5555560000000
  %10771 = fdiv fast float %10748, %10770
  %10772 = fadd fast float %10771, %10768
  %10773 = fmul fast float %10755, %10709
  %10774 = fsub fast float %10630, %10773
  %10775 = fmul fast float %10760, %10709
  %10776 = fadd fast float %10775, %10630
  %10777 = fmul fast float %10772, %10710
  %10778 = fadd fast float %10777, %10631
  %10779 = fmul fast float %10767, %10710
  %10780 = fsub fast float %10631, %10779
  %10781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10774, float %10780, float %10698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10782 = extractvalue %dx.types.ResRet.f32 %10781, 0
  %10783 = extractvalue %dx.types.ResRet.f32 %10781, 1
  %10784 = extractvalue %dx.types.ResRet.f32 %10781, 2
  %10785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10776, float %10780, float %10698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10786 = extractvalue %dx.types.ResRet.f32 %10785, 0
  %10787 = extractvalue %dx.types.ResRet.f32 %10785, 1
  %10788 = extractvalue %dx.types.ResRet.f32 %10785, 2
  %10789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10774, float %10778, float %10698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10790 = extractvalue %dx.types.ResRet.f32 %10789, 0
  %10791 = extractvalue %dx.types.ResRet.f32 %10789, 1
  %10792 = extractvalue %dx.types.ResRet.f32 %10789, 2
  %10793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10776, float %10778, float %10698, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10794 = extractvalue %dx.types.ResRet.f32 %10793, 0
  %10795 = extractvalue %dx.types.ResRet.f32 %10793, 1
  %10796 = extractvalue %dx.types.ResRet.f32 %10793, 2
  %10797 = fsub fast float %10790, %10782
  %10798 = fsub fast float %10791, %10783
  %10799 = fsub fast float %10792, %10784
  %10800 = fmul fast float %10797, %10770
  %10801 = fmul fast float %10798, %10770
  %10802 = fmul fast float %10799, %10770
  %10803 = fadd fast float %10800, %10782
  %10804 = fadd fast float %10801, %10783
  %10805 = fadd fast float %10802, %10784
  %10806 = fsub fast float %10794, %10786
  %10807 = fsub fast float %10795, %10787
  %10808 = fsub fast float %10796, %10788
  %10809 = fmul fast float %10806, %10770
  %10810 = fmul fast float %10807, %10770
  %10811 = fmul fast float %10808, %10770
  %10812 = fsub fast float %10786, %10803
  %10813 = fadd fast float %10812, %10809
  %10814 = fsub fast float %10787, %10804
  %10815 = fadd fast float %10814, %10810
  %10816 = fsub fast float %10788, %10805
  %10817 = fadd fast float %10816, %10811
  %10818 = fmul fast float %10813, %10758
  %10819 = fmul fast float %10815, %10758
  %10820 = fmul fast float %10817, %10758
  %10821 = fadd fast float %10818, %10803
  %10822 = fadd fast float %10819, %10804
  %10823 = fadd fast float %10820, %10805
  %10824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10825 = extractvalue %dx.types.CBufRet.f32 %10824, 1
  %10826 = fmul fast float %10821, %10825
  %10827 = fmul fast float %10822, %10825
  %10828 = fmul fast float %10823, %10825
  br label %10829

; <label>:10829                                   ; preds = %10660, %10617
  %10830 = phi float [ %10700, %10660 ], [ 1.000000e+00, %10617 ]
  %10831 = phi float [ %10701, %10660 ], [ 1.000000e+00, %10617 ]
  %10832 = phi float [ %10702, %10660 ], [ 1.000000e+00, %10617 ]
  %10833 = phi float [ %10826, %10660 ], [ 0.000000e+00, %10617 ]
  %10834 = phi float [ %10827, %10660 ], [ 0.000000e+00, %10617 ]
  %10835 = phi float [ %10828, %10660 ], [ 0.000000e+00, %10617 ]
  %10836 = fmul fast float %10833, %9167
  %10837 = fmul fast float %10834, %9169
  %10838 = fmul fast float %10835, %9171
  %10839 = fmul fast float %10830, %10624
  %10840 = call float @dx.op.dot3.f32(i32 55, float %10830, float %10831, float %10832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10841 = call float @dx.op.dot3.f32(i32 55, float %10836, float %10837, float %10838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10842 = select i1 %226, float %10840, float %10830
  %10843 = select i1 %226, float %10840, float %10831
  %10844 = select i1 %226, float 1.000000e+00, float %10832
  %10845 = select i1 %226, float %10841, float %10836
  %10846 = select i1 %226, float 0.000000e+00, float %10837
  %10847 = select i1 %226, float 0.000000e+00, float %10838
  %10848 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10849 = extractvalue %dx.types.CBufRet.i32 %10848, 3
  %10850 = and i32 %10849, 3
  %10851 = icmp ne i32 %10850, 0
  %10852 = and i32 %10849, 4
  %10853 = icmp ne i32 %10852, 0
  %10854 = and i1 %10851, %10853
  %10855 = and i1 %226, %10854
  br i1 %10855, label %10856, label %10862

; <label>:10856                                   ; preds = %10829
  %10857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10858 = extractvalue %dx.types.CBufRet.f32 %10857, 1
  %10859 = fadd fast float %10839, -1.000000e+00
  %10860 = fmul fast float %10858, %10859
  %10861 = fadd fast float %10860, 1.000000e+00
  br label %10862

; <label>:10862                                   ; preds = %10856, %10829
  %10863 = phi float [ %10861, %10856 ], [ %10839, %10829 ]
  %10864 = fadd fast float %10621, %10618
  %10865 = fmul fast float %10842, %10864
  %10866 = fadd fast float %10865, %10845
  %10867 = fadd fast float %10622, %10619
  %10868 = fmul fast float %10843, %10867
  %10869 = fadd fast float %10868, %10846
  %10870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10871 = extractvalue %dx.types.CBufRet.f32 %10870, 0
  br i1 %226, label %10872, label %10887

; <label>:10872                                   ; preds = %10862
  %10873 = fadd fast float %10866, %10869
  %10874 = fmul fast float %10871, %10873
  %10875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10876 = extractvalue %dx.types.CBufRet.f32 %10875, 3
  %10877 = extractvalue %dx.types.CBufRet.f32 %9175, 1
  %10878 = fsub fast float %9180, %9174
  %10879 = fadd fast float %10878, %9181
  %10880 = fsub fast float %10879, %10877
  %10881 = extractvalue %dx.types.CBufRet.f32 %9175, 2
  %10882 = fmul fast float %10880, %10881
  %10883 = call float @dx.op.unary.f32(i32 7, float %10882)  ; Saturate(value)
  %10884 = fsub fast float %10883, %10876
  %10885 = fmul fast float %10884, %10863
  %10886 = fadd fast float %10885, %10876
  br label %10913

; <label>:10887                                   ; preds = %10862
  %10888 = fadd fast float %10623, %10620
  %10889 = fmul fast float %10844, %10888
  %10890 = fadd fast float %10889, %10847
  %10891 = fmul fast float %10871, %10866
  %10892 = fmul fast float %10871, %10869
  %10893 = fmul fast float %10871, %10890
  %10894 = call float @dx.op.binary.f32(i32 35, float %10892, float %10893)  ; FMax(a,b)
  %10895 = call float @dx.op.binary.f32(i32 35, float %10891, float %10894)  ; FMax(a,b)
  %10896 = call float @dx.op.binary.f32(i32 35, float %9169, float %9171)  ; FMax(a,b)
  %10897 = call float @dx.op.binary.f32(i32 35, float %9167, float %10896)  ; FMax(a,b)
  %10898 = call float @dx.op.binary.f32(i32 35, float %10895, float %10897)  ; FMax(a,b)
  %10899 = fcmp fast ugt float %10898, 0x3F10000000000000
  br i1 %10899, label %10901, label %10900

; <label>:10900                                   ; preds = %10887
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10901

; <label>:10901                                   ; preds = %10900, %10887
  %10902 = add i32 %60, 356
  %10903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10902, i32 undef)  ; BufferLoad(srv,index,wot)
  %10904 = extractvalue %dx.types.ResRet.i32 %10903, 0
  %10905 = and i32 %10904, 32
  %10906 = icmp eq i32 %10905, 0
  br i1 %10906, label %10913, label %10907

; <label>:10907                                   ; preds = %10901
  %10908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10909 = extractvalue %dx.types.CBufRet.f32 %10908, 0
  %10910 = fmul fast float %10909, 0x3FE99999A0000000
  %10911 = fadd fast float %10909, %10891
  %10912 = fadd fast float %10910, %10893
  br label %10913

; <label>:10913                                   ; preds = %10907, %10901, %10872
  %10914 = phi float [ 1.000000e+00, %10872 ], [ %9169, %10907 ], [ %9169, %10901 ]
  %10915 = phi float [ 1.000000e+00, %10872 ], [ %9171, %10907 ], [ %9171, %10901 ]
  %10916 = phi float [ %10874, %10872 ], [ %10911, %10907 ], [ %10891, %10901 ]
  %10917 = phi float [ %10886, %10872 ], [ %10892, %10907 ], [ %10892, %10901 ]
  %10918 = phi float [ 1.000000e+00, %10872 ], [ %10912, %10907 ], [ %10893, %10901 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10919 = call float @dx.op.binary.f32(i32 36, float %10916, float 3.225500e+04)  ; FMin(a,b)
  %10920 = call float @dx.op.binary.f32(i32 36, float %10917, float 3.225500e+04)  ; FMin(a,b)
  %10921 = call float @dx.op.binary.f32(i32 36, float %10918, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10919)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10920)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10921)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10922 = call float @dx.op.binary.f32(i32 36, float %9167, float 3.225500e+04)  ; FMin(a,b)
  %10923 = call float @dx.op.binary.f32(i32 36, float %10914, float 3.225500e+04)  ; FMin(a,b)
  %10924 = call float @dx.op.binary.f32(i32 36, float %10915, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10922)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10923)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10924)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

