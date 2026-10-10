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
; shader hash: 13a2d90cba572673056cb4d8c3724143
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
  %1275 = phi float [ 0.000000e+00, %494 ], [ %1252, %1251 ]
  %1276 = phi float [ 0.000000e+00, %494 ], [ %1253, %1251 ]
  %1277 = phi float [ 0.000000e+00, %494 ], [ %1254, %1251 ]
  %1278 = phi float [ 0.000000e+00, %494 ], [ %1142, %1251 ]
  %1279 = phi float [ 0.000000e+00, %494 ], [ %1143, %1251 ]
  %1280 = phi float [ 0.000000e+00, %494 ], [ %1144, %1251 ]
  %1281 = phi float [ 0.000000e+00, %494 ], [ %1200, %1251 ]
  %1282 = phi float [ 0.000000e+00, %494 ], [ %1201, %1251 ]
  %1283 = phi float [ 0.000000e+00, %494 ], [ %1202, %1251 ]
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
  %2094 = fmul fast float %2088, %1278
  %2095 = fmul fast float %2089, %1279
  %2096 = fmul fast float %2090, %1280
  br label %2097

; <label>:2097                                    ; preds = %2062, %2044
  %2098 = phi float [ %2091, %2062 ], [ %1272, %2044 ]
  %2099 = phi float [ %2092, %2062 ], [ %1273, %2044 ]
  %2100 = phi float [ %2093, %2062 ], [ %1274, %2044 ]
  %2101 = phi float [ %2094, %2062 ], [ %1278, %2044 ]
  %2102 = phi float [ %2095, %2062 ], [ %1279, %2044 ]
  %2103 = phi float [ %2096, %2062 ], [ %1280, %2044 ]
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
  %2230 = fsub fast float %1993, %1281
  %2231 = fsub fast float %1994, %1282
  %2232 = fsub fast float %1995, %1283
  %2233 = fmul fast float %2209, %2230
  %2234 = fmul fast float %2209, %2231
  %2235 = fmul fast float %2209, %2232
  %2236 = fadd fast float %2233, %1281
  %2237 = fadd fast float %2234, %1282
  %2238 = fadd fast float %2235, %1283
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
  %2288 = fadd fast float %2285, %1281
  %2289 = fadd fast float %2286, %1282
  %2290 = fadd fast float %2287, %1283
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
  %2316 = fadd fast float %2313, %1281
  %2317 = fadd fast float %2314, %1282
  %2318 = fadd fast float %2315, %1283
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
  %2336 = phi float [ %2190, %2186 ], [ %1278, %1586 ], [ %1278, %1269 ], [ %2190, %2301 ], [ %2190, %2299 ], [ %2190, %2253 ], [ %2190, %2217 ], [ %1278, %1290 ]
  %2337 = phi float [ %2191, %2186 ], [ %1279, %1586 ], [ %1279, %1269 ], [ %2191, %2301 ], [ %2191, %2299 ], [ %2191, %2253 ], [ %2191, %2217 ], [ %1279, %1290 ]
  %2338 = phi float [ %2192, %2186 ], [ %1280, %1586 ], [ %1280, %1269 ], [ %2192, %2301 ], [ %2192, %2299 ], [ %2192, %2253 ], [ %2192, %2217 ], [ %1280, %1290 ]
  %2339 = phi float [ %1281, %2186 ], [ %1281, %1586 ], [ %1281, %1269 ], [ %2316, %2301 ], [ %1281, %2299 ], [ %2288, %2253 ], [ %2236, %2217 ], [ %1281, %1290 ]
  %2340 = phi float [ %1282, %2186 ], [ %1282, %1586 ], [ %1282, %1269 ], [ %2317, %2301 ], [ %1282, %2299 ], [ %2289, %2253 ], [ %2237, %2217 ], [ %1282, %1290 ]
  %2341 = phi float [ %1283, %2186 ], [ %1283, %1586 ], [ %1283, %1269 ], [ %2318, %2301 ], [ %1283, %2299 ], [ %2290, %2253 ], [ %2238, %2217 ], [ %1283, %1290 ]
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
  %3151 = fmul fast float %3145, %2336
  %3152 = fmul fast float %3146, %2337
  %3153 = fmul fast float %3147, %2338
  br label %3154

; <label>:3154                                    ; preds = %3119, %3101
  %3155 = phi float [ %3148, %3119 ], [ %2330, %3101 ]
  %3156 = phi float [ %3149, %3119 ], [ %2331, %3101 ]
  %3157 = phi float [ %3150, %3119 ], [ %2332, %3101 ]
  %3158 = phi float [ %3151, %3119 ], [ %2336, %3101 ]
  %3159 = phi float [ %3152, %3119 ], [ %2337, %3101 ]
  %3160 = phi float [ %3153, %3119 ], [ %2338, %3101 ]
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
  %3287 = fsub fast float %3050, %2339
  %3288 = fsub fast float %3051, %2340
  %3289 = fsub fast float %3052, %2341
  %3290 = fmul fast float %3266, %3287
  %3291 = fmul fast float %3266, %3288
  %3292 = fmul fast float %3266, %3289
  %3293 = fadd fast float %3290, %2339
  %3294 = fadd fast float %3291, %2340
  %3295 = fadd fast float %3292, %2341
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
  %3345 = fadd fast float %3342, %2339
  %3346 = fadd fast float %3343, %2340
  %3347 = fadd fast float %3344, %2341
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
  %3373 = fadd fast float %3370, %2339
  %3374 = fadd fast float %3371, %2340
  %3375 = fadd fast float %3372, %2341
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
  %3393 = phi float [ %3247, %3243 ], [ %2336, %2643 ], [ %2336, %2327 ], [ %3247, %3358 ], [ %3247, %3356 ], [ %3247, %3310 ], [ %3247, %3274 ], [ %2336, %2347 ]
  %3394 = phi float [ %3248, %3243 ], [ %2337, %2643 ], [ %2337, %2327 ], [ %3248, %3358 ], [ %3248, %3356 ], [ %3248, %3310 ], [ %3248, %3274 ], [ %2337, %2347 ]
  %3395 = phi float [ %3249, %3243 ], [ %2338, %2643 ], [ %2338, %2327 ], [ %3249, %3358 ], [ %3249, %3356 ], [ %3249, %3310 ], [ %3249, %3274 ], [ %2338, %2347 ]
  %3396 = phi float [ %2339, %3243 ], [ %2339, %2643 ], [ %2339, %2327 ], [ %3373, %3358 ], [ %2339, %3356 ], [ %3345, %3310 ], [ %3293, %3274 ], [ %2339, %2347 ]
  %3397 = phi float [ %2340, %3243 ], [ %2340, %2643 ], [ %2340, %2327 ], [ %3374, %3358 ], [ %2340, %3356 ], [ %3346, %3310 ], [ %3294, %3274 ], [ %2340, %2347 ]
  %3398 = phi float [ %2341, %3243 ], [ %2341, %2643 ], [ %2341, %2327 ], [ %3375, %3358 ], [ %2341, %3356 ], [ %3347, %3310 ], [ %3295, %3274 ], [ %2341, %2347 ]
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
  %4208 = fmul fast float %4202, %3393
  %4209 = fmul fast float %4203, %3394
  %4210 = fmul fast float %4204, %3395
  br label %4211

; <label>:4211                                    ; preds = %4176, %4158
  %4212 = phi float [ %4205, %4176 ], [ %3387, %4158 ]
  %4213 = phi float [ %4206, %4176 ], [ %3388, %4158 ]
  %4214 = phi float [ %4207, %4176 ], [ %3389, %4158 ]
  %4215 = phi float [ %4208, %4176 ], [ %3393, %4158 ]
  %4216 = phi float [ %4209, %4176 ], [ %3394, %4158 ]
  %4217 = phi float [ %4210, %4176 ], [ %3395, %4158 ]
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
  %4344 = fsub fast float %4107, %3396
  %4345 = fsub fast float %4108, %3397
  %4346 = fsub fast float %4109, %3398
  %4347 = fmul fast float %4323, %4344
  %4348 = fmul fast float %4323, %4345
  %4349 = fmul fast float %4323, %4346
  %4350 = fadd fast float %4347, %3396
  %4351 = fadd fast float %4348, %3397
  %4352 = fadd fast float %4349, %3398
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
  %4402 = fadd fast float %4399, %3396
  %4403 = fadd fast float %4400, %3397
  %4404 = fadd fast float %4401, %3398
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
  %4430 = fadd fast float %4427, %3396
  %4431 = fadd fast float %4428, %3397
  %4432 = fadd fast float %4429, %3398
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
  %4450 = phi float [ %4304, %4300 ], [ %3393, %3700 ], [ %3393, %3384 ], [ %3393, %3404 ], [ %4304, %4331 ], [ %4304, %4367 ], [ %4304, %4413 ], [ %4304, %4415 ]
  %4451 = phi float [ %4305, %4300 ], [ %3394, %3700 ], [ %3394, %3384 ], [ %3394, %3404 ], [ %4305, %4331 ], [ %4305, %4367 ], [ %4305, %4413 ], [ %4305, %4415 ]
  %4452 = phi float [ %4306, %4300 ], [ %3395, %3700 ], [ %3395, %3384 ], [ %3395, %3404 ], [ %4306, %4331 ], [ %4306, %4367 ], [ %4306, %4413 ], [ %4306, %4415 ]
  %4453 = phi float [ %3396, %4300 ], [ %3396, %3700 ], [ %3396, %3384 ], [ %3396, %3404 ], [ %4350, %4331 ], [ %4402, %4367 ], [ %3396, %4413 ], [ %4430, %4415 ]
  %4454 = phi float [ %3397, %4300 ], [ %3397, %3700 ], [ %3397, %3384 ], [ %3397, %3404 ], [ %4351, %4331 ], [ %4403, %4367 ], [ %3397, %4413 ], [ %4431, %4415 ]
  %4455 = phi float [ %3398, %4300 ], [ %3398, %3700 ], [ %3398, %3384 ], [ %3398, %3404 ], [ %4352, %4331 ], [ %4404, %4367 ], [ %3398, %4413 ], [ %4432, %4415 ]
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
  %4552 = phi float [ %4683, %4679 ], [ %4453, %4545 ]
  %4553 = phi float [ %4684, %4679 ], [ %4454, %4545 ]
  %4554 = phi float [ %4685, %4679 ], [ %4455, %4545 ]
  %4555 = phi float [ %4686, %4679 ], [ 0.000000e+00, %4545 ]
  %4556 = phi float [ %4687, %4679 ], [ 0.000000e+00, %4545 ]
  %4557 = phi float [ %4688, %4679 ], [ %4447, %4545 ]
  %4558 = phi float [ %4689, %4679 ], [ %4448, %4545 ]
  %4559 = phi float [ %4690, %4679 ], [ %4449, %4545 ]
  %4560 = phi float [ %4691, %4679 ], [ %4450, %4545 ]
  %4561 = phi float [ %4692, %4679 ], [ %4451, %4545 ]
  %4562 = phi float [ %4693, %4679 ], [ %4452, %4545 ]
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
  %5052 = phi float [ %4453, %4493 ], [ %4683, %5047 ]
  %5053 = phi float [ %4454, %4493 ], [ %4684, %5047 ]
  %5054 = phi float [ %4455, %4493 ], [ %4685, %5047 ]
  %5055 = phi float [ 0.000000e+00, %4493 ], [ %4686, %5047 ]
  %5056 = phi float [ 0.000000e+00, %4493 ], [ %4687, %5047 ]
  %5057 = phi float [ %4447, %4493 ], [ %4688, %5047 ]
  %5058 = phi float [ %4448, %4493 ], [ %4689, %5047 ]
  %5059 = phi float [ %4449, %4493 ], [ %4690, %5047 ]
  %5060 = phi float [ %4450, %4493 ], [ %4691, %5047 ]
  %5061 = phi float [ %4451, %4493 ], [ %4692, %5047 ]
  %5062 = phi float [ %4452, %4493 ], [ %4693, %5047 ]
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
  %5086 = phi float [ %5052, %5048 ], [ %4453, %4441 ]
  %5087 = phi float [ %5053, %5048 ], [ %4454, %4441 ]
  %5088 = phi float [ %5054, %5048 ], [ %4455, %4441 ]
  %5089 = phi float [ %5082, %5048 ], [ %4488, %4441 ]
  %5090 = phi float [ %5083, %5048 ], [ %4489, %4441 ]
  %5091 = phi float [ %5084, %5048 ], [ %4490, %4441 ]
  %5092 = phi float [ %5070, %5048 ], [ %4444, %4441 ]
  %5093 = phi float [ %5071, %5048 ], [ %4445, %4441 ]
  %5094 = phi float [ %5072, %5048 ], [ %4446, %4441 ]
  %5095 = phi float [ %5060, %5048 ], [ %4450, %4441 ]
  %5096 = phi float [ %5061, %5048 ], [ %4451, %4441 ]
  %5097 = phi float [ %5062, %5048 ], [ %4452, %4441 ]
  %5098 = phi float [ %5057, %5048 ], [ %4447, %4441 ]
  %5099 = phi float [ %5058, %5048 ], [ %4448, %4441 ]
  %5100 = phi float [ %5059, %5048 ], [ %4449, %4441 ]
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
  %5115 = bitcast i32 %5112 to float
  %5116 = bitcast i32 %5113 to float
  %5117 = bitcast i32 %5114 to float
  %5118 = add i32 %60, 376
  %5119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %5118, i32 undef)  ; BufferLoad(srv,index,wot)
  %5120 = extractvalue %dx.types.ResRet.i32 %5119, 0
  %5121 = extractvalue %dx.types.ResRet.i32 %5119, 1
  %5122 = extractvalue %dx.types.ResRet.i32 %5119, 2
  %5123 = bitcast i32 %5120 to float
  %5124 = bitcast i32 %5121 to float
  %5125 = bitcast i32 %5122 to float
  %5126 = fsub fast float %5123, %5115
  %5127 = fsub fast float %5124, %5116
  %5128 = fsub fast float %5125, %5117
  %5129 = fmul fast float %5126, %198
  %5130 = fmul fast float %5127, %198
  %5131 = fmul fast float %5128, %198
  %5132 = fadd fast float %5129, %5115
  %5133 = fadd fast float %5130, %5116
  %5134 = fadd fast float %5131, %5117
  %5135 = fmul fast float %5132, %5092
  %5136 = fmul fast float %5133, %5093
  %5137 = fmul fast float %5134, %5094
  %5138 = fmul fast float %5102, %198
  %5139 = fadd fast float %5101, 0xBFB99999A0000000
  %5140 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5141 = fmul fast float %5140, 0x3FF1C71C80000000
  %5142 = call float @dx.op.binary.f32(i32 36, float %5101, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5143 = fsub fast float 1.000000e+00, %5141
  %5144 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5145 = fmul fast float %5135, %5144
  %5146 = fmul fast float %5136, %5144
  %5147 = fmul fast float %5137, %5144
  %5148 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5149 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5150 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5151 = fmul fast float %5135, %5141
  %5152 = fmul fast float %5136, %5141
  %5153 = fmul fast float %5137, %5141
  %5154 = fadd fast float %5151, %5142
  %5155 = fadd fast float %5152, %5142
  %5156 = fadd fast float %5153, %5142
  %5157 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5158 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5159 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %5162 = extractvalue %dx.types.ResRet.i32 %5161, 0
  %5163 = and i32 %5162, 1
  %5164 = icmp eq i32 %5163, 0
  br i1 %5164, label %5179, label %5165

; <label>:5165                                    ; preds = %5085
  %5166 = call float @dx.op.binary.f32(i32 35, float %5149, float %5150)  ; FMax(a,b)
  %5167 = call float @dx.op.binary.f32(i32 35, float %5148, float %5166)  ; FMax(a,b)
  %5168 = fcmp fast ogt float %5167, 0.000000e+00
  %5169 = bitcast float %5167 to i32
  %5170 = sub nsw i32 2129859010, %5169
  %5171 = bitcast i32 %5170 to float
  %5172 = select i1 %5168, float %5171, float 0.000000e+00
  %5173 = fmul fast float %5148, %5098
  %5174 = fmul fast float %5149, %5099
  %5175 = fmul fast float %5150, %5100
  %5176 = fmul fast float %5173, %5172
  %5177 = fmul fast float %5174, %5172
  %5178 = fmul fast float %5175, %5172
  br label %5179

; <label>:5179                                    ; preds = %5165, %5085
  %5180 = phi float [ %5176, %5165 ], [ %5098, %5085 ]
  %5181 = phi float [ %5177, %5165 ], [ %5099, %5085 ]
  %5182 = phi float [ %5178, %5165 ], [ %5100, %5085 ]
  %5183 = call float @dx.op.binary.f32(i32 36, float %5086, float 1.270000e+02)  ; FMin(a,b)
  %5184 = call float @dx.op.binary.f32(i32 36, float %5087, float 1.270000e+02)  ; FMin(a,b)
  %5185 = call float @dx.op.binary.f32(i32 36, float %5088, float 1.270000e+02)  ; FMin(a,b)
  %5186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.i32 %5186, 3
  %5188 = and i32 %5187, 8
  %5189 = icmp ne i32 %5188, 0
  %5190 = call float @dx.op.binary.f32(i32 35, float %5148, float %5135)  ; FMax(a,b)
  %5191 = call float @dx.op.binary.f32(i32 35, float %5149, float %5135)  ; FMax(a,b)
  %5192 = call float @dx.op.binary.f32(i32 35, float %5150, float %5135)  ; FMax(a,b)
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = select i1 %258, float %5135, float %5148
  %5195 = select i1 %258, float %5193, float %5149
  %5196 = select i1 %258, float 1.000000e+00, float %5150
  %5197 = select i1 %5189, float %5190, float %5194
  %5198 = select i1 %5189, float %5191, float %5195
  %5199 = select i1 %5189, float %5192, float %5196
  %5200 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = select i1 %258, float %5200, float %5180
  %5202 = select i1 %258, float %5200, float %5181
  %5203 = select i1 %258, float %5200, float %5182
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5208 = fadd fast float %5205, %164
  %5209 = fadd fast float %5206, %165
  %5210 = fadd fast float %5207, %166
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.CBufRet.f32 %5211, 1
  %5214 = fsub fast float %5208, %5212
  %5215 = fsub fast float %5209, %5213
  %5216 = fmul fast float %5214, %5214
  %5217 = fmul fast float %5215, %5215
  %5218 = fadd fast float %5216, %5217
  %5219 = call float @dx.op.unary.f32(i32 24, float %5218)  ; Sqrt(value)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5211, 2
  %5221 = fcmp fast olt float %5219, %5220
  br i1 %5221, label %5222, label %5289

; <label>:5222                                    ; preds = %5179
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5226 = extractvalue %dx.types.CBufRet.f32 %5225, 0
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = extractvalue %dx.types.CBufRet.f32 %5223, 1
  %5230 = extractvalue %dx.types.CBufRet.f32 %5225, 1
  %5231 = extractvalue %dx.types.CBufRet.f32 %5227, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5223, 3
  %5233 = extractvalue %dx.types.CBufRet.f32 %5225, 3
  %5234 = extractvalue %dx.types.CBufRet.f32 %5227, 3
  %5235 = fadd fast float %5232, %5208
  %5236 = fadd fast float %5233, %5209
  %5237 = fadd fast float %5234, %5210
  %5238 = fmul fast float %5235, %5224
  %5239 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5226, float %5238)  ; FMad(a,b,c)
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5228, float %5239)  ; FMad(a,b,c)
  %5241 = fmul fast float %5235, %5229
  %5242 = call float @dx.op.tertiary.f32(i32 46, float %5236, float %5230, float %5241)  ; FMad(a,b,c)
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5231, float %5242)  ; FMad(a,b,c)
  %5244 = fsub fast float %5240, %5232
  %5245 = fsub fast float %5243, %5233
  %5246 = fsub fast float %5244, %5212
  %5247 = fadd fast float %5246, %5220
  %5248 = fsub fast float %5245, %5213
  %5249 = fadd fast float %5248, %5220
  %5250 = extractvalue %dx.types.CBufRet.f32 %5211, 3
  %5251 = fmul fast float %5247, %5250
  %5252 = fmul fast float %5249, %5250
  %5253 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5254 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5255 = fsub fast float 1.000000e+00, %5253
  %5256 = fsub fast float 1.000000e+00, %5254
  %5257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5255, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = fcmp fast ugt float %5258, 0.000000e+00
  br i1 %5259, label %5260, label %5563

; <label>:5260                                    ; preds = %5222
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5263 = fmul fast float %5262, %5258
  %5264 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5265 = fadd fast float %5264, %5263
  %5266 = extractvalue %dx.types.CBufRet.f32 %5227, 2
  %5267 = fadd fast float %5265, %5234
  %5268 = fmul fast float %5240, %5228
  %5269 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5231, float %5268)  ; FMad(a,b,c)
  %5270 = call float @dx.op.tertiary.f32(i32 46, float %5267, float %5266, float %5269)  ; FMad(a,b,c)
  %5271 = fsub fast float %5270, %5234
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5274 = fsub fast float %5271, %5273
  %5275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5255, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5255, float %5256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.ResRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.ResRet.f32 %5279, 2
  %5283 = fadd fast float %5280, %5276
  %5284 = fmul fast float %5283, 0x3F847AE140000000
  %5285 = fadd fast float %5281, %5277
  %5286 = fmul fast float %5285, 0x3F847AE140000000
  %5287 = fadd fast float %5282, %5278
  %5288 = fmul fast float %5287, 0x3F847AE140000000
  br label %5563

; <label>:5289                                    ; preds = %5179
  %5290 = and i32 %234, 1
  %5291 = icmp eq i32 %5290, 0
  br i1 %5291, label %5563, label %5292

; <label>:5292                                    ; preds = %5289
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 0
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 0
  %5299 = extractvalue %dx.types.CBufRet.f32 %5293, 1
  %5300 = extractvalue %dx.types.CBufRet.f32 %5295, 1
  %5301 = extractvalue %dx.types.CBufRet.f32 %5297, 1
  %5302 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5303 = extractvalue %dx.types.CBufRet.f32 %5295, 3
  %5304 = extractvalue %dx.types.CBufRet.f32 %5297, 3
  %5305 = fadd fast float %5302, %5208
  %5306 = fadd fast float %5303, %5209
  %5307 = fadd fast float %5304, %5210
  %5308 = fmul fast float %5305, %5294
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %5306, float %5296, float %5308)  ; FMad(a,b,c)
  %5310 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5298, float %5309)  ; FMad(a,b,c)
  %5311 = fmul fast float %5305, %5299
  %5312 = call float @dx.op.tertiary.f32(i32 46, float %5306, float %5300, float %5311)  ; FMad(a,b,c)
  %5313 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5301, float %5312)  ; FMad(a,b,c)
  %5314 = fsub fast float %5310, %5302
  %5315 = fsub fast float %5313, %5303
  %5316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.f32 %5316, 0
  %5318 = extractvalue %dx.types.CBufRet.f32 %5316, 1
  %5319 = extractvalue %dx.types.CBufRet.f32 %5316, 2
  %5320 = extractvalue %dx.types.CBufRet.f32 %5316, 3
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 3
  %5323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.i32 %5323, 0
  %5325 = extractvalue %dx.types.CBufRet.i32 %5323, 1
  %5326 = udiv i32 %5325, %5324
  %5327 = fsub fast float %5314, %5317
  %5328 = fsub fast float %5315, %5318
  %5329 = call float @dx.op.binary.f32(i32 35, float %5327, float 0.000000e+00)  ; FMax(a,b)
  %5330 = call float @dx.op.binary.f32(i32 35, float %5328, float 0.000000e+00)  ; FMax(a,b)
  %5331 = call float @dx.op.binary.f32(i32 36, float %5329, float %5319)  ; FMin(a,b)
  %5332 = call float @dx.op.binary.f32(i32 36, float %5330, float %5320)  ; FMin(a,b)
  %5333 = add i32 %5324, -1
  %5334 = add i32 %5326, -1
  %5335 = fmul fast float %5331, %5322
  %5336 = fmul fast float %5332, %5322
  %5337 = fptoui float %5335 to i32
  %5338 = fptoui float %5336 to i32
  %5339 = call i32 @dx.op.binary.i32(i32 40, i32 %5337, i32 %5333)  ; UMin(a,b)
  %5340 = call i32 @dx.op.binary.i32(i32 40, i32 %5338, i32 %5334)  ; UMin(a,b)
  %5341 = mul i32 %5340, %5324
  %5342 = add i32 %5341, %5339
  %5343 = shl i32 %5342, 2
  %5344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5343, i32 undef)  ; BufferLoad(srv,index,wot)
  %5345 = extractvalue %dx.types.ResRet.i32 %5344, 0
  %5346 = icmp eq i32 %5345, -1
  br i1 %5346, label %5563, label %5347

; <label>:5347                                    ; preds = %5292
  %5348 = mul i32 %5345, 148
  %5349 = add i32 %5348, 4
  %5350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5349, i32 undef)  ; BufferLoad(srv,index,wot)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = add i32 %5348, 8
  %5353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5352, i32 undef)  ; BufferLoad(srv,index,wot)
  %5354 = extractvalue %dx.types.ResRet.f32 %5353, 0
  %5355 = add i32 %5348, 36
  %5356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5355, i32 undef)  ; BufferLoad(srv,index,wot)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = add i32 %5348, 60
  %5359 = add i32 %5348, 92
  %5360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5359, i32 undef)  ; BufferLoad(srv,index,wot)
  %5361 = extractvalue %dx.types.ResRet.i32 %5360, 0
  %5362 = add i32 %5348, 116
  %5363 = fsub fast float %5314, %5351
  %5364 = fsub fast float %5315, %5354
  %5365 = fmul fast float %5322, %5363
  %5366 = fmul fast float %5322, %5364
  %5367 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5369 = fsub fast float 1.000000e+00, %5368
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 2
  %5372 = call float @dx.op.unary.f32(i32 83, float %5367)  ; DerivCoarseX(value)
  %5373 = call float @dx.op.unary.f32(i32 83, float %5369)  ; DerivCoarseX(value)
  %5374 = call float @dx.op.unary.f32(i32 84, float %5367)  ; DerivCoarseY(value)
  %5375 = call float @dx.op.unary.f32(i32 84, float %5369)  ; DerivCoarseY(value)
  %5376 = fmul fast float %5372, %5371
  %5377 = fmul fast float %5373, %5371
  %5378 = fmul fast float %5374, %5371
  %5379 = fmul fast float %5375, %5371
  %5380 = call float @dx.op.dot2.f32(i32 54, float %5378, float %5379, float %5378, float %5379)  ; Dot2(ax,ay,bx,by)
  %5381 = call float @dx.op.dot2.f32(i32 54, float %5376, float %5377, float %5376, float %5377)  ; Dot2(ax,ay,bx,by)
  %5382 = call float @dx.op.binary.f32(i32 35, float %5381, float %5380)  ; FMax(a,b)
  %5383 = call float @dx.op.unary.f32(i32 23, float %5382)  ; Log(value)
  %5384 = fmul fast float %5383, 5.000000e-01
  %5385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.f32 %5385, 1
  %5387 = fadd fast float %5386, %5384
  %5388 = call float @dx.op.binary.f32(i32 35, float %5387, float 0.000000e+00)  ; FMax(a,b)
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 3
  %5391 = fadd fast float %5390, %5388
  %5392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5393 = extractvalue %dx.types.CBufRet.f32 %5392, 3
  %5394 = fadd fast float %5391, %5393
  %5395 = add i32 %5361, 0
  %5396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5395, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5397 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5396, i32 0)  ; GetDimensions(handle,mipLevel)
  %5398 = extractvalue %dx.types.Dimensions %5397, 0
  %5399 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5398)  ; FirstbitLo(value)
  %5400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.i32 %5400, 1
  %5402 = sub nsw i32 %5401, %5399
  %5403 = sitofp i32 %5402 to float
  %5404 = fsub fast float %5394, %5403
  %5405 = call float @dx.op.binary.f32(i32 35, float %5404, float 0.000000e+00)  ; FMax(a,b)
  %5406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5396, %dx.types.Handle %52, float %5367, float %5369, float %5357, float undef, i32 0, i32 0, i32 undef, float %5405)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = fcmp ule float %5407, 0x3FE0101020000000
  %5409 = extractvalue %dx.types.CBufRet.i32 %5400, 0
  %5410 = and i32 %5409, 128
  %5411 = icmp ne i32 %5410, 0
  %5412 = and i1 %5408, %5411
  br i1 %5412, label %5563, label %5413

; <label>:5413                                    ; preds = %5347
  %5414 = add i32 %5348, 20
  %5415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5414, i32 undef)  ; BufferLoad(srv,index,wot)
  %5416 = extractvalue %dx.types.ResRet.f32 %5415, 0
  %5417 = add i32 %5348, 24
  %5418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5417, i32 undef)  ; BufferLoad(srv,index,wot)
  %5419 = extractvalue %dx.types.ResRet.f32 %5418, 0
  %5420 = add i32 %5348, 40
  %5421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = add i32 %5348, 96
  %5424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5425 = extractvalue %dx.types.ResRet.i32 %5424, 0
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 2
  %5428 = fmul fast float %5427, %5367
  %5429 = fmul fast float %5427, %5369
  %5430 = extractvalue %dx.types.CBufRet.f32 %5426, 3
  %5431 = fadd fast float %5428, %5430
  %5432 = fadd fast float %5429, %5430
  %5433 = add i32 %5425, 0
  %5434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5433, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5435 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5434, i32 0)  ; GetDimensions(handle,mipLevel)
  %5436 = extractvalue %dx.types.Dimensions %5435, 0
  %5437 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5436)  ; FirstbitLo(value)
  %5438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.i32 %5438, 1
  %5440 = sub nsw i32 %5439, %5437
  %5441 = sitofp i32 %5440 to float
  %5442 = fsub fast float %5391, %5441
  %5443 = call float @dx.op.binary.f32(i32 35, float %5442, float 0.000000e+00)  ; FMax(a,b)
  %5444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5434, %dx.types.Handle %52, float %5431, float %5432, float %5422, float undef, i32 0, i32 0, i32 undef, float %5443)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = fmul fast float %5445, %5416
  %5447 = fadd fast float %5446, %5419
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5451 = extractvalue %dx.types.CBufRet.f32 %5448, 2
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 3
  %5454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5454, 3
  %5456 = extractvalue %dx.types.CBufRet.f32 %5448, 3
  %5457 = fadd fast float %5453, %5314
  %5458 = fadd fast float %5455, %5315
  %5459 = fadd fast float %5447, %5456
  %5460 = fmul fast float %5457, %5449
  %5461 = call float @dx.op.tertiary.f32(i32 46, float %5458, float %5450, float %5460)  ; FMad(a,b,c)
  %5462 = call float @dx.op.tertiary.f32(i32 46, float %5459, float %5451, float %5461)  ; FMad(a,b,c)
  %5463 = fsub fast float %5462, %5456
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 2
  %5466 = fsub fast float %5463, %5465
  %5467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.i32 %5467, 0
  %5469 = call i32 @dx.op.binary.i32(i32 40, i32 %5345, i32 %5468)  ; UMin(a,b)
  %5470 = mul i32 %5469, 36
  %5471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5470, i32 undef)  ; BufferLoad(srv,index,wot)
  %5472 = extractvalue %dx.types.ResRet.i32 %5471, 0
  %5473 = add i32 %5470, 4
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 0
  %5476 = fmul fast float %5475, %5367
  %5477 = fmul fast float %5475, %5369
  %5478 = extractvalue %dx.types.CBufRet.f32 %5474, 1
  %5479 = fadd fast float %5476, %5478
  %5480 = fadd fast float %5477, %5478
  %5481 = icmp eq i32 %5472, 0
  br i1 %5481, label %5550, label %5482

; <label>:5482                                    ; preds = %5413
  br label %5483

; <label>:5483                                    ; preds = %5540, %5482
  %5484 = phi float [ %5541, %5540 ], [ 0.000000e+00, %5482 ]
  %5485 = phi float [ %5542, %5540 ], [ 0.000000e+00, %5482 ]
  %5486 = phi float [ %5543, %5540 ], [ 0.000000e+00, %5482 ]
  %5487 = phi float [ %5544, %5540 ], [ 0.000000e+00, %5482 ]
  %5488 = phi float [ %5545, %5540 ], [ 0.000000e+00, %5482 ]
  %5489 = phi float [ %5546, %5540 ], [ 0.000000e+00, %5482 ]
  %5490 = phi i32 [ %5547, %5540 ], [ 0, %5482 ]
  %5491 = shl i32 %5490, 2
  %5492 = add i32 %5358, %5491
  %5493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5492, i32 undef)  ; BufferLoad(srv,index,wot)
  %5494 = extractvalue %dx.types.ResRet.f32 %5493, 0
  %5495 = add i32 %5362, %5491
  %5496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5495, i32 undef)  ; BufferLoad(srv,index,wot)
  %5497 = extractvalue %dx.types.ResRet.i32 %5496, 0
  %5498 = add i32 %5497, 0
  %5499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5498, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5500 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5499, i32 0)  ; GetDimensions(handle,mipLevel)
  %5501 = extractvalue %dx.types.Dimensions %5500, 0
  %5502 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5501)  ; FirstbitLo(value)
  %5503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.i32 %5503, 1
  %5505 = sub nsw i32 %5504, %5502
  %5506 = sitofp i32 %5505 to float
  %5507 = fsub fast float %5391, %5506
  %5508 = call float @dx.op.binary.f32(i32 35, float %5507, float 0.000000e+00)  ; FMax(a,b)
  %5509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5499, %dx.types.Handle %52, float %5479, float %5480, float %5494, float undef, i32 0, i32 0, i32 undef, float %5508)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5510 = extractvalue %dx.types.ResRet.f32 %5509, 0
  %5511 = fcmp fast ogt float %5510, 0.000000e+00
  br i1 %5511, label %5512, label %5540

; <label>:5512                                    ; preds = %5483
  %5513 = add i32 %5473, %5491
  %5514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5513, i32 undef)  ; BufferLoad(srv,index,wot)
  %5515 = extractvalue %dx.types.ResRet.i32 %5514, 0
  %5516 = and i32 %5515, 32767
  %5517 = mul nuw nsw i32 %5516, 928
  %5518 = add nuw nsw i32 %5517, 48
  %5519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5518, i32 undef)  ; BufferLoad(srv,index,wot)
  %5520 = extractvalue %dx.types.ResRet.f32 %5519, 0
  %5521 = extractvalue %dx.types.ResRet.f32 %5519, 1
  %5522 = extractvalue %dx.types.ResRet.f32 %5519, 2
  %5523 = add nuw nsw i32 %5517, 60
  %5524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5523, i32 undef)  ; BufferLoad(srv,index,wot)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.ResRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.ResRet.f32 %5524, 2
  %5528 = fmul fast float %5520, %5510
  %5529 = fmul fast float %5521, %5510
  %5530 = fmul fast float %5522, %5510
  %5531 = fadd fast float %5528, %5484
  %5532 = fadd fast float %5529, %5485
  %5533 = fadd fast float %5530, %5486
  %5534 = fmul fast float %5525, %5510
  %5535 = fmul fast float %5526, %5510
  %5536 = fmul fast float %5527, %5510
  %5537 = fadd fast float %5534, %5487
  %5538 = fadd fast float %5535, %5488
  %5539 = fadd fast float %5536, %5489
  br label %5540

; <label>:5540                                    ; preds = %5512, %5483
  %5541 = phi float [ %5531, %5512 ], [ %5484, %5483 ]
  %5542 = phi float [ %5532, %5512 ], [ %5485, %5483 ]
  %5543 = phi float [ %5533, %5512 ], [ %5486, %5483 ]
  %5544 = phi float [ %5537, %5512 ], [ %5487, %5483 ]
  %5545 = phi float [ %5538, %5512 ], [ %5488, %5483 ]
  %5546 = phi float [ %5539, %5512 ], [ %5489, %5483 ]
  %5547 = add nuw i32 %5490, 1
  %5548 = icmp eq i32 %5547, %5472
  br i1 %5548, label %5549, label %5483

; <label>:5549                                    ; preds = %5540
  br label %5550

; <label>:5550                                    ; preds = %5549, %5413
  %5551 = phi float [ 0.000000e+00, %5413 ], [ %5541, %5549 ]
  %5552 = phi float [ 0.000000e+00, %5413 ], [ %5542, %5549 ]
  %5553 = phi float [ 0.000000e+00, %5413 ], [ %5543, %5549 ]
  %5554 = phi float [ 0.000000e+00, %5413 ], [ %5544, %5549 ]
  %5555 = phi float [ 0.000000e+00, %5413 ], [ %5545, %5549 ]
  %5556 = phi float [ 0.000000e+00, %5413 ], [ %5546, %5549 ]
  %5557 = fadd fast float %5554, %5551
  %5558 = fmul fast float %5557, 0x3F847AE140000000
  %5559 = fadd fast float %5555, %5552
  %5560 = fmul fast float %5559, 0x3F847AE140000000
  %5561 = fadd fast float %5556, %5553
  %5562 = fmul fast float %5561, 0x3F847AE140000000
  br label %5563

; <label>:5563                                    ; preds = %5550, %5347, %5292, %5289, %5260, %5222
  %5564 = phi float [ %5284, %5260 ], [ 0.000000e+00, %5222 ], [ %5558, %5550 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5347 ], [ 0.000000e+00, %5289 ]
  %5565 = phi float [ %5286, %5260 ], [ 0.000000e+00, %5222 ], [ %5560, %5550 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5347 ], [ 0.000000e+00, %5289 ]
  %5566 = phi float [ %5288, %5260 ], [ 0.000000e+00, %5222 ], [ %5562, %5550 ], [ 0.000000e+00, %5292 ], [ 0.000000e+00, %5347 ], [ 0.000000e+00, %5289 ]
  %5567 = phi float [ %5274, %5260 ], [ -1.310720e+05, %5222 ], [ %5466, %5550 ], [ -1.310720e+05, %5292 ], [ -1.310720e+05, %5347 ], [ -1.310720e+05, %5289 ]
  %5568 = phi i1 [ true, %5260 ], [ false, %5222 ], [ true, %5550 ], [ false, %5292 ], [ false, %5347 ], [ false, %5289 ]
  %5569 = and i32 %234, 3
  %5570 = icmp eq i32 %5569, 1
  %5571 = select i1 %5570, float 1.000000e+00, float 0.000000e+00
  %5572 = fsub fast float %5567, %166
  %5573 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5574 = select i1 %5568, float %5573, float 1.000000e+00
  %5575 = fmul fast float %5574, %5571
  %5576 = icmp eq i32 %5569, 3
  %5577 = select i1 %5576, float 1.000000e+00, float %5575
  %5578 = call float @dx.op.binary.f32(i32 35, float %5107, float %5577)  ; FMax(a,b)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = fcmp fast une float %5579, 0.000000e+00
  %5581 = fsub fast float -0.000000e+00, %184
  %5582 = fsub fast float -0.000000e+00, %185
  %5583 = fsub fast float -0.000000e+00, %186
  br i1 %5580, label %5584, label %5746

; <label>:5584                                    ; preds = %5563
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5583, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = fmul fast float %5579, 2.500000e+00
  %5587 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5588 = fmul fast float %5579, 0x4013FFFFE0000000
  %5589 = fadd fast float %5588, 0xBFFFFFFFE0000000
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fmul fast float %5579, 0x4004000020000000
  %5592 = fadd fast float %5591, 0xBFF8000040000000
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5595 = fmul fast float %5139, 1.000000e+01
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = fmul fast float %5596, 2.000000e+00
  %5598 = fsub fast float 3.000000e+00, %5597
  %5599 = fmul fast float %5596, %5596
  %5600 = fmul fast float %5599, %5598
  %5601 = fsub fast float 1.000000e+00, %5600
  %5602 = fsub fast float 0x3FE3333340000000, %5160
  %5603 = fmul fast float %5602, 0x400AAAAAA0000000
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fmul fast float %5601, %5604
  %5606 = fmul fast float %5197, 0x3FEA2B8620000000
  %5607 = fmul fast float %5198, 0x3FEA2B8620000000
  %5608 = fmul fast float %5199, 0x3FEA2B8620000000
  %5609 = fadd fast float %5606, 0x3FC81DFBA0000000
  %5610 = fmul fast float %5609, %5197
  %5611 = fadd fast float %5610, 0x3F910E6020000000
  %5612 = fadd fast float %5607, 0x3FC81DFBA0000000
  %5613 = fmul fast float %5612, %5198
  %5614 = fadd fast float %5613, 0x3F910E6020000000
  %5615 = fadd fast float %5608, 0x3FC81DFBA0000000
  %5616 = fmul fast float %5615, %5199
  %5617 = fadd fast float %5616, 0x3F910E6020000000
  %5618 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5619 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5620 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5621 = fsub fast float %5618, %5197
  %5622 = fsub fast float %5619, %5198
  %5623 = fsub fast float %5620, %5199
  %5624 = fmul fast float %5621, %5594
  %5625 = fmul fast float %5624, %5605
  %5626 = fmul fast float %5622, %5594
  %5627 = fmul fast float %5626, %5605
  %5628 = fmul fast float %5623, %5594
  %5629 = fmul fast float %5628, %5605
  %5630 = fadd fast float %5625, %5197
  %5631 = fadd fast float %5627, %5198
  %5632 = fadd fast float %5629, %5199
  %5633 = fmul fast float %5104, %5104
  %5634 = fmul fast float %5633, %5633
  %5635 = fadd fast float %5590, 1.000000e+00
  %5636 = fsub fast float %5635, %5605
  %5637 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5638 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = fsub fast float 1.000000e+00, %5634
  %5641 = call float @dx.op.binary.f32(i32 36, float %5637, float %5640)  ; FMin(a,b)
  %5642 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5641, float %5642)  ; FMax(a,b)
  %5644 = fadd fast float %5639, 0xBFE4CCCCC0000000
  %5645 = fmul fast float %5644, 0x4006DB6DA0000000
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = fmul fast float %5646, 2.000000e+00
  %5648 = fsub fast float 3.000000e+00, %5647
  %5649 = bitcast float %5157 to i32
  %5650 = ashr i32 %5649, 1
  %5651 = add nsw i32 %5650, 532487669
  %5652 = bitcast i32 %5651 to float
  %5653 = fsub fast float 1.000000e+00, %5652
  %5654 = bitcast float %5653 to i32
  %5655 = sub nsw i32 2129859010, %5654
  %5656 = bitcast i32 %5655 to float
  %5657 = fmul fast float %5656, 2.000000e+00
  %5658 = bitcast float %5158 to i32
  %5659 = ashr i32 %5658, 1
  %5660 = add nsw i32 %5659, 532487669
  %5661 = bitcast i32 %5660 to float
  %5662 = fsub fast float 1.000000e+00, %5661
  %5663 = bitcast float %5662 to i32
  %5664 = sub nsw i32 2129859010, %5663
  %5665 = bitcast i32 %5664 to float
  %5666 = fmul fast float %5665, 2.000000e+00
  %5667 = bitcast float %5159 to i32
  %5668 = ashr i32 %5667, 1
  %5669 = add nsw i32 %5668, 532487669
  %5670 = bitcast i32 %5669 to float
  %5671 = fsub fast float 1.000000e+00, %5670
  %5672 = bitcast float %5671 to i32
  %5673 = sub nsw i32 2129859010, %5672
  %5674 = bitcast i32 %5673 to float
  %5675 = fmul fast float %5674, 2.000000e+00
  %5676 = fsub fast float 0x4002A9FBE0000000, %5657
  %5677 = fadd fast float %5657, 0x3FD54FDF00000000
  %5678 = bitcast float %5677 to i32
  %5679 = sub nsw i32 2129859010, %5678
  %5680 = bitcast i32 %5679 to float
  %5681 = fmul fast float %5680, %5676
  %5682 = fmul fast float %5681, %5681
  %5683 = fsub fast float 0x4002A9FBE0000000, %5666
  %5684 = fadd fast float %5666, 0x3FD54FDF00000000
  %5685 = bitcast float %5684 to i32
  %5686 = sub nsw i32 2129859010, %5685
  %5687 = bitcast i32 %5686 to float
  %5688 = fmul fast float %5687, %5683
  %5689 = fmul fast float %5688, %5688
  %5690 = fsub fast float 0x4002A9FBE0000000, %5675
  %5691 = fadd fast float %5675, 0x3FD54FDF00000000
  %5692 = bitcast float %5691 to i32
  %5693 = sub nsw i32 2129859010, %5692
  %5694 = bitcast i32 %5693 to float
  %5695 = fmul fast float %5694, %5690
  %5696 = fmul fast float %5695, %5695
  %5697 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5682)  ; FMax(a,b)
  %5698 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5689)  ; FMax(a,b)
  %5699 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5696)  ; FMax(a,b)
  %5700 = fsub fast float 1.000000e+00, %5585
  %5701 = fadd fast float %5700, %5601
  %5702 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  %5703 = fsub fast float 1.000000e+00, %5577
  %5704 = fmul fast float %5643, %5703
  %5705 = fmul fast float %5646, %5646
  %5706 = fmul fast float %5705, %5704
  %5707 = fmul fast float %5706, %5648
  %5708 = fmul fast float %5703, 0xBFE99999A0000000
  %5709 = fmul fast float %5708, %5594
  %5710 = fmul fast float %5709, %5605
  %5711 = fadd fast float %5710, 1.000000e+00
  %5712 = fadd fast float %5160, -1.000000e+00
  %5713 = fmul fast float %5711, %5712
  %5714 = fadd fast float %5713, 1.000000e+00
  %5715 = fsub fast float %5697, %5157
  %5716 = fsub fast float %5698, %5158
  %5717 = fsub fast float %5699, %5159
  %5718 = fmul fast float %5707, %5715
  %5719 = fmul fast float %5707, %5716
  %5720 = fmul fast float %5707, %5717
  %5721 = fadd fast float %5718, %5157
  %5722 = fadd fast float %5719, %5158
  %5723 = fadd fast float %5720, %5159
  %5724 = fsub fast float %116, %5089
  %5725 = fsub fast float %117, %5090
  %5726 = fsub fast float %118, %5091
  %5727 = fmul fast float %5707, %5724
  %5728 = fmul fast float %5707, %5725
  %5729 = fmul fast float %5707, %5726
  %5730 = fadd fast float %5727, %5089
  %5731 = fadd fast float %5728, %5090
  %5732 = fadd fast float %5729, %5091
  %5733 = fmul fast float %5707, %5702
  %5734 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5735 = fsub fast float 1.000000e+00, %5734
  %5736 = fmul fast float %5733, %5735
  %5737 = fadd fast float %5736, %5734
  %5738 = fsub fast float 1.000000e+00, %5104
  %5739 = fmul fast float %5707, %5738
  %5740 = fadd fast float %5739, %5104
  %5741 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = call float @dx.op.unary.f32(i32 25, float %5741)  ; Rsqrt(value)
  %5743 = fmul fast float %5730, %5742
  %5744 = fmul fast float %5731, %5742
  %5745 = fmul fast float %5732, %5742
  br label %5746

; <label>:5746                                    ; preds = %5584, %5563
  %5747 = phi float [ %5630, %5584 ], [ %5197, %5563 ]
  %5748 = phi float [ %5631, %5584 ], [ %5198, %5563 ]
  %5749 = phi float [ %5632, %5584 ], [ %5199, %5563 ]
  %5750 = phi float [ %5721, %5584 ], [ %5157, %5563 ]
  %5751 = phi float [ %5722, %5584 ], [ %5158, %5563 ]
  %5752 = phi float [ %5723, %5584 ], [ %5159, %5563 ]
  %5753 = phi float [ %5743, %5584 ], [ %5089, %5563 ]
  %5754 = phi float [ %5744, %5584 ], [ %5090, %5563 ]
  %5755 = phi float [ %5745, %5584 ], [ %5091, %5563 ]
  %5756 = phi float [ %5737, %5584 ], [ %5160, %5563 ]
  %5757 = phi float [ %5740, %5584 ], [ %5104, %5563 ]
  %5758 = fsub fast float -0.000000e+00, %166
  %5759 = select i1 %258, float 0.000000e+00, float %5752
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %5755, float %5581, float %5582, float %5583)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = call float @dx.op.unary.f32(i32 7, float %5760)  ; Saturate(value)
  %5762 = call float @dx.op.dot3.f32(i32 55, float %184, float %185, float %186, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = fmul fast float %5762, 2.000000e+00
  %5764 = fmul fast float %5763, %5753
  %5765 = fmul fast float %5763, %5754
  %5766 = fmul fast float %5763, %5755
  %5767 = fsub fast float %184, %5764
  %5768 = fsub fast float %185, %5765
  %5769 = fsub fast float %186, %5766
  %5770 = call float @dx.op.binary.f32(i32 36, float %5757, float 1.000000e+00)  ; FMin(a,b)
  %5771 = fsub fast float 1.000000e+00, %5770
  %5772 = bitcast float %5771 to i32
  %5773 = ashr i32 %5772, 1
  %5774 = add nsw i32 %5773, 532487669
  %5775 = bitcast i32 %5774 to float
  %5776 = fsub fast float 1.000000e+00, %5756
  %5777 = call float @dx.op.binary.f32(i32 35, float %5776, float 0x3F847AE140000000)  ; FMax(a,b)
  %5778 = fmul fast float %5777, %5777
  %5779 = fmul fast float %5778, %5778
  %5780 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5775, float %5779, float %5780, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5782 = extractvalue %dx.types.ResRet.f32 %5781, 0
  %5783 = fsub fast float 1.000000e+00, %5757
  %5784 = bitcast float %5783 to i32
  %5785 = sub nsw i32 2129859010, %5784
  %5786 = bitcast i32 %5785 to float
  %5787 = call float @dx.op.dot3.f32(i32 55, float %77, float %73, float %69, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = fmul fast float %5787, 0x3FD20DD760000000
  %5789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %77)  ; FMax(a,b)
  %5790 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = fcmp fast oeq float %5790, 0.000000e+00
  %5792 = fcmp fast oeq float %5789, 0.000000e+00
  %5793 = or i1 %5792, %5791
  br i1 %5793, label %5823, label %5794

; <label>:5794                                    ; preds = %5746
  %5795 = fsub fast float -0.000000e+00, %80
  %5796 = fsub fast float -0.000000e+00, %78
  %5797 = call float @dx.op.unary.f32(i32 24, float %5790)  ; Sqrt(value)
  %5798 = fdiv fast float %5797, %5789
  %5799 = fcmp fast ogt float %5798, 0x3FFB6F8900000000
  %5800 = select i1 %5799, float 0x3FFB6F8900000000, float %5798
  %5801 = fmul fast float %5800, 0x3FE8A23460000000
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = call float @dx.op.binary.f32(i32 35, float %5800, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5804 = fmul fast float %5802, %5789
  %5805 = fmul fast float %5803, 0x3FF279A740000000
  %5806 = fadd fast float %5805, -1.000000e+00
  %5807 = call float @dx.op.dot3.f32(i32 55, float %5795, float %5796, float %79, float %5795, float %5796, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = call float @dx.op.unary.f32(i32 25, float %5807)  ; Rsqrt(value)
  %5809 = fmul fast float %5808, %5795
  %5810 = fmul fast float %5808, %5796
  %5811 = fmul fast float %5808, %79
  %5812 = fmul fast float %5806, %5806
  %5813 = fsub fast float 1.000000e+00, %5812
  %5814 = fmul fast float %5803, 0x40005F8BE0000000
  %5815 = fsub fast float 0x400C5BF8A0000000, %5814
  %5816 = fdiv fast float %5804, %5815
  %5817 = fmul fast float %5816, 0x3FEE31C3C0000000
  %5818 = fmul fast float %5817, %5813
  %5819 = fmul fast float %5803, 0x3FDACB7480000000
  %5820 = fadd fast float %5819, 0xBFD7347680000000
  %5821 = fmul fast float %5820, %5816
  %5822 = fmul fast float %5821, %5813
  br label %5823

; <label>:5823                                    ; preds = %5794, %5746
  %5824 = phi float [ %5809, %5794 ], [ 0.000000e+00, %5746 ]
  %5825 = phi float [ %5810, %5794 ], [ 0.000000e+00, %5746 ]
  %5826 = phi float [ %5811, %5794 ], [ 0.000000e+00, %5746 ]
  %5827 = phi float [ %5818, %5794 ], [ 0.000000e+00, %5746 ]
  %5828 = phi float [ %5822, %5794 ], [ 0.000000e+00, %5746 ]
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %5826, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = fmul fast float %5829, 0x3FDF454380000000
  %5831 = fmul fast float %5829, %5829
  %5832 = fmul fast float %5831, 0x3FEE471020000000
  %5833 = fadd fast float %5832, 0xBFD42F6020000000
  %5834 = fmul fast float %5789, 0x3FD20DD760000000
  %5835 = fmul fast float %5833, %5828
  %5836 = fadd fast float %5835, %5834
  %5837 = fmul fast float %5830, %5827
  %5838 = fadd fast float %5836, %5837
  %5839 = fsub fast float %5836, %5837
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5824, float %5825, float %5826, float %5767, float %5768, float %5769)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = fmul fast float %5840, 0x3FDF454380000000
  %5842 = fmul fast float %5840, %5840
  %5843 = fmul fast float %5842, 0x3FEE471020000000
  %5844 = fadd fast float %5843, 0xBFD42F6020000000
  %5845 = call float @dx.op.dot3.f32(i32 55, float %5789, float %5827, float %5828, float 0x3FD20DD760000000, float %5841, float %5844)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %73)  ; FMax(a,b)
  %5847 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = fcmp fast oeq float %5847, 0.000000e+00
  %5849 = fcmp fast oeq float %5846, 0.000000e+00
  %5850 = or i1 %5849, %5848
  br i1 %5850, label %5880, label %5851

; <label>:5851                                    ; preds = %5823
  %5852 = fsub fast float -0.000000e+00, %76
  %5853 = fsub fast float -0.000000e+00, %74
  %5854 = call float @dx.op.unary.f32(i32 24, float %5847)  ; Sqrt(value)
  %5855 = fdiv fast float %5854, %5846
  %5856 = fcmp fast ogt float %5855, 0x3FFB6F8900000000
  %5857 = select i1 %5856, float 0x3FFB6F8900000000, float %5855
  %5858 = fmul fast float %5857, 0x3FE8A23460000000
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = call float @dx.op.binary.f32(i32 35, float %5857, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5861 = fmul fast float %5859, %5846
  %5862 = fmul fast float %5860, 0x3FF279A740000000
  %5863 = fadd fast float %5862, -1.000000e+00
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5852, float %5853, float %75, float %5852, float %5853, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = call float @dx.op.unary.f32(i32 25, float %5864)  ; Rsqrt(value)
  %5866 = fmul fast float %5865, %5852
  %5867 = fmul fast float %5865, %5853
  %5868 = fmul fast float %5865, %75
  %5869 = fmul fast float %5863, %5863
  %5870 = fsub fast float 1.000000e+00, %5869
  %5871 = fmul fast float %5860, 0x40005F8BE0000000
  %5872 = fsub fast float 0x400C5BF8A0000000, %5871
  %5873 = fdiv fast float %5861, %5872
  %5874 = fmul fast float %5873, 0x3FEE31C3C0000000
  %5875 = fmul fast float %5874, %5870
  %5876 = fmul fast float %5860, 0x3FDACB7480000000
  %5877 = fadd fast float %5876, 0xBFD7347680000000
  %5878 = fmul fast float %5877, %5873
  %5879 = fmul fast float %5878, %5870
  br label %5880

; <label>:5880                                    ; preds = %5851, %5823
  %5881 = phi float [ %5866, %5851 ], [ 0.000000e+00, %5823 ]
  %5882 = phi float [ %5867, %5851 ], [ 0.000000e+00, %5823 ]
  %5883 = phi float [ %5868, %5851 ], [ 0.000000e+00, %5823 ]
  %5884 = phi float [ %5875, %5851 ], [ 0.000000e+00, %5823 ]
  %5885 = phi float [ %5879, %5851 ], [ 0.000000e+00, %5823 ]
  %5886 = call float @dx.op.dot3.f32(i32 55, float %5881, float %5882, float %5883, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5887 = fmul fast float %5886, 0x3FDF454380000000
  %5888 = fmul fast float %5886, %5886
  %5889 = fmul fast float %5888, 0x3FEE471020000000
  %5890 = fadd fast float %5889, 0xBFD42F6020000000
  %5891 = fmul fast float %5846, 0x3FD20DD760000000
  %5892 = fmul fast float %5890, %5885
  %5893 = fadd fast float %5892, %5891
  %5894 = fmul fast float %5887, %5884
  %5895 = fadd fast float %5893, %5894
  %5896 = fsub fast float %5893, %5894
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5881, float %5882, float %5883, float %5767, float %5768, float %5769)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fmul fast float %5897, 0x3FDF454380000000
  %5899 = fmul fast float %5897, %5897
  %5900 = fmul fast float %5899, 0x3FEE471020000000
  %5901 = fadd fast float %5900, 0xBFD42F6020000000
  %5902 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5884, float %5885, float 0x3FD20DD760000000, float %5898, float %5901)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %69)  ; FMax(a,b)
  %5904 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = fcmp fast oeq float %5904, 0.000000e+00
  %5906 = fcmp fast oeq float %5903, 0.000000e+00
  %5907 = or i1 %5906, %5905
  br i1 %5907, label %5937, label %5908

; <label>:5908                                    ; preds = %5880
  %5909 = fsub fast float -0.000000e+00, %72
  %5910 = fsub fast float -0.000000e+00, %70
  %5911 = call float @dx.op.unary.f32(i32 24, float %5904)  ; Sqrt(value)
  %5912 = fdiv fast float %5911, %5903
  %5913 = fcmp fast ogt float %5912, 0x3FFB6F8900000000
  %5914 = select i1 %5913, float 0x3FFB6F8900000000, float %5912
  %5915 = fmul fast float %5914, 0x3FE8A23460000000
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = call float @dx.op.binary.f32(i32 35, float %5914, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5918 = fmul fast float %5916, %5903
  %5919 = fmul fast float %5917, 0x3FF279A740000000
  %5920 = fadd fast float %5919, -1.000000e+00
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %71, float %5909, float %5910, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = call float @dx.op.unary.f32(i32 25, float %5921)  ; Rsqrt(value)
  %5923 = fmul fast float %5922, %5909
  %5924 = fmul fast float %5922, %5910
  %5925 = fmul fast float %5922, %71
  %5926 = fmul fast float %5920, %5920
  %5927 = fsub fast float 1.000000e+00, %5926
  %5928 = fmul fast float %5917, 0x40005F8BE0000000
  %5929 = fsub fast float 0x400C5BF8A0000000, %5928
  %5930 = fdiv fast float %5918, %5929
  %5931 = fmul fast float %5930, 0x3FEE31C3C0000000
  %5932 = fmul fast float %5931, %5927
  %5933 = fmul fast float %5917, 0x3FDACB7480000000
  %5934 = fadd fast float %5933, 0xBFD7347680000000
  %5935 = fmul fast float %5934, %5930
  %5936 = fmul fast float %5935, %5927
  br label %5937

; <label>:5937                                    ; preds = %5908, %5880
  %5938 = phi float [ %5923, %5908 ], [ 0.000000e+00, %5880 ]
  %5939 = phi float [ %5924, %5908 ], [ 0.000000e+00, %5880 ]
  %5940 = phi float [ %5925, %5908 ], [ 0.000000e+00, %5880 ]
  %5941 = phi float [ %5932, %5908 ], [ 0.000000e+00, %5880 ]
  %5942 = phi float [ %5936, %5908 ], [ 0.000000e+00, %5880 ]
  %5943 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5944 = fmul fast float %5943, 0x3FDF454380000000
  %5945 = fmul fast float %5943, %5943
  %5946 = fmul fast float %5945, 0x3FEE471020000000
  %5947 = fadd fast float %5946, 0xBFD42F6020000000
  %5948 = fmul fast float %5903, 0x3FD20DD760000000
  %5949 = fmul fast float %5947, %5942
  %5950 = fadd fast float %5949, %5948
  %5951 = fmul fast float %5944, %5941
  %5952 = fadd fast float %5950, %5951
  %5953 = fsub fast float %5950, %5951
  %5954 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %5767, float %5768, float %5769)  ; Dot3(ax,ay,az,bx,by,bz)
  %5955 = fmul fast float %5954, 0x3FDF454380000000
  %5956 = fmul fast float %5954, %5954
  %5957 = fmul fast float %5956, 0x3FEE471020000000
  %5958 = fadd fast float %5957, 0xBFD42F6020000000
  %5959 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5941, float %5942, float 0x3FD20DD760000000, float %5955, float %5958)  ; Dot3(ax,ay,az,bx,by,bz)
  %5960 = call float @dx.op.binary.f32(i32 35, float %5838, float 0.000000e+00)  ; FMax(a,b)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5895, float 0.000000e+00)  ; FMax(a,b)
  %5962 = call float @dx.op.binary.f32(i32 35, float %5952, float 0.000000e+00)  ; FMax(a,b)
  %5963 = call float @dx.op.binary.f32(i32 35, float %5839, float 0.000000e+00)  ; FMax(a,b)
  %5964 = call float @dx.op.binary.f32(i32 35, float %5896, float 0.000000e+00)  ; FMax(a,b)
  %5965 = call float @dx.op.binary.f32(i32 35, float %5953, float 0.000000e+00)  ; FMax(a,b)
  %5966 = call float @dx.op.binary.f32(i32 35, float %5845, float 0.000000e+00)  ; FMax(a,b)
  %5967 = call float @dx.op.binary.f32(i32 35, float %5902, float 0.000000e+00)  ; FMax(a,b)
  %5968 = call float @dx.op.binary.f32(i32 35, float %5959, float 0.000000e+00)  ; FMax(a,b)
  %5969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5969, 0
  %5971 = call float @dx.op.binary.f32(i32 36, float %5747, float %5970)  ; FMin(a,b)
  %5972 = fmul fast float %5971, %5771
  %5973 = fsub fast float 1.000000e+00, %5972
  %5974 = bitcast float %5973 to i32
  %5975 = sub nsw i32 2129859010, %5974
  %5976 = bitcast i32 %5975 to float
  %5977 = call float @dx.op.binary.f32(i32 36, float %5748, float %5970)  ; FMin(a,b)
  %5978 = fmul fast float %5977, %5771
  %5979 = fsub fast float 1.000000e+00, %5978
  %5980 = bitcast float %5979 to i32
  %5981 = sub nsw i32 2129859010, %5980
  %5982 = bitcast i32 %5981 to float
  %5983 = call float @dx.op.binary.f32(i32 36, float %5749, float %5970)  ; FMin(a,b)
  %5984 = fmul fast float %5983, %5771
  %5985 = fsub fast float 1.000000e+00, %5984
  %5986 = bitcast float %5985 to i32
  %5987 = sub nsw i32 2129859010, %5986
  %5988 = bitcast i32 %5987 to float
  %5989 = fmul fast float %5960, %5770
  %5990 = fmul fast float %5989, %5976
  %5991 = fmul fast float %5961, %5770
  %5992 = fmul fast float %5991, %5982
  %5993 = fmul fast float %5962, %5770
  %5994 = fmul fast float %5993, %5988
  %5995 = call float @dx.op.binary.f32(i32 36, float %5750, float %5970)  ; FMin(a,b)
  %5996 = fmul fast float %5995, %5771
  %5997 = fsub fast float 1.000000e+00, %5996
  %5998 = bitcast float %5997 to i32
  %5999 = sub nsw i32 2129859010, %5998
  %6000 = bitcast i32 %5999 to float
  %6001 = call float @dx.op.binary.f32(i32 36, float %5751, float %5970)  ; FMin(a,b)
  %6002 = fmul fast float %6001, %5771
  %6003 = fsub fast float 1.000000e+00, %6002
  %6004 = bitcast float %6003 to i32
  %6005 = sub nsw i32 2129859010, %6004
  %6006 = bitcast i32 %6005 to float
  %6007 = call float @dx.op.binary.f32(i32 36, float %5759, float %5970)  ; FMin(a,b)
  %6008 = fmul fast float %6007, %5771
  %6009 = fsub fast float 1.000000e+00, %6008
  %6010 = bitcast float %6009 to i32
  %6011 = sub nsw i32 2129859010, %6010
  %6012 = bitcast i32 %6011 to float
  %6013 = fmul fast float %5966, %5770
  %6014 = fmul fast float %6013, %6000
  %6015 = fmul fast float %5967, %5770
  %6016 = fmul fast float %6015, %6006
  %6017 = fmul fast float %5968, %5770
  %6018 = fmul fast float %6017, %6012
  %6019 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5992, float %5994, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6020 = select i1 %258, float 0.000000e+00, float %5990
  %6021 = select i1 %258, float %6019, float %5992
  %6022 = select i1 %258, float 0.000000e+00, float %5994
  %6023 = call float @dx.op.dot3.f32(i32 55, float %5963, float %5964, float %5965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6024 = select i1 %258, float 0.000000e+00, float %5963
  %6025 = select i1 %258, float %6023, float %5964
  %6026 = select i1 %258, float 0.000000e+00, float %5965
  %6027 = call float @dx.op.dot3.f32(i32 55, float %6014, float %6016, float %6018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = select i1 %258, float 0.000000e+00, float %6014
  %6029 = select i1 %258, float %6027, float %6016
  %6030 = select i1 %258, float 0.000000e+00, float %6018
  %6031 = fmul fast float %4459, %4459
  %6032 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  %6033 = fmul fast float %5761, 9.843750e-01
  %6034 = fmul fast float %5756, 9.843750e-01
  %6035 = fadd fast float %6033, 7.812500e-03
  %6036 = fadd fast float %6034, 7.812500e-03
  %6037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %6035, float %6036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6038 = extractvalue %dx.types.ResRet.f32 %6037, 0
  %6039 = extractvalue %dx.types.ResRet.f32 %6037, 1
  %6040 = extractvalue %dx.types.ResRet.f32 %6037, 2
  %6041 = extractvalue %dx.types.ResRet.f32 %6037, 3
  %6042 = fsub fast float 1.000000e+00, %6032
  %6043 = fsub fast float %6040, %6038
  %6044 = fsub fast float %6041, %6039
  %6045 = fmul fast float %6043, %6042
  %6046 = fmul fast float %6044, %6042
  %6047 = fadd fast float %6045, %6038
  %6048 = fadd fast float %6046, %6039
  %6049 = fmul fast float %6047, %5750
  %6050 = fmul fast float %6047, %5751
  %6051 = fmul fast float %6047, %5759
  %6052 = fadd fast float %6049, %6048
  %6053 = fadd fast float %6050, %6048
  %6054 = fadd fast float %6051, %6048
  %6055 = fcmp fast ogt float %5105, 0.000000e+00
  br i1 %6055, label %6056, label %6082

; <label>:6056                                    ; preds = %5937
  %6057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %5761, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6058 = extractvalue %dx.types.ResRet.f32 %6057, 0
  %6059 = extractvalue %dx.types.ResRet.f32 %6057, 1
  %6060 = extractvalue %dx.types.ResRet.f32 %6057, 2
  %6061 = fadd fast float %6058, -5.000000e-01
  %6062 = fadd fast float %6059, -5.000000e-01
  %6063 = fadd fast float %6060, -5.000000e-01
  %6064 = fsub fast float 1.000000e+00, %5750
  %6065 = fsub fast float 1.000000e+00, %5751
  %6066 = fsub fast float 1.000000e+00, %5759
  %6067 = fmul fast float %5750, 4.000000e+00
  %6068 = fmul fast float %6067, %6064
  %6069 = fmul fast float %6068, %6061
  %6070 = fmul fast float %5751, 4.000000e+00
  %6071 = fmul fast float %6070, %6065
  %6072 = fmul fast float %6071, %6062
  %6073 = fmul fast float %5759, 4.000000e+00
  %6074 = fmul fast float %6073, %6066
  %6075 = fmul fast float %6074, %6063
  %6076 = fadd fast float %6069, %6052
  %6077 = fadd fast float %6072, %6053
  %6078 = fadd fast float %6075, %6054
  %6079 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6080 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6081 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  br label %6082

; <label>:6082                                    ; preds = %6056, %5937
  %6083 = phi float [ %6079, %6056 ], [ %6052, %5937 ]
  %6084 = phi float [ %6080, %6056 ], [ %6053, %5937 ]
  %6085 = phi float [ %6081, %6056 ], [ %6054, %5937 ]
  %6086 = call float @dx.op.binary.f32(i32 35, float %6084, float %6085)  ; FMax(a,b)
  %6087 = call float @dx.op.binary.f32(i32 35, float %6083, float %6086)  ; FMax(a,b)
  %6088 = fsub fast float 1.000000e+00, %6087
  %6089 = fmul fast float %6087, %5756
  %6090 = fadd fast float %6089, %5756
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 2
  %6093 = extractvalue %dx.types.CBufRet.f32 %6091, 3
  %6094 = fmul fast float %6090, %6092
  %6095 = fadd fast float %6094, %6093
  %6096 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6097 = fsub fast float 1.000000e+00, %5782
  %6098 = fadd fast float %6097, %6096
  %6099 = call float @dx.op.unary.f32(i32 7, float %6098)  ; Saturate(value)
  %6100 = fcmp fast olt float %6099, 1.000000e+00
  br i1 %6100, label %6101, label %6577

; <label>:6101                                    ; preds = %6082
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 3
  %6105 = fmul fast float %6103, %109
  %6106 = fmul fast float %6104, %110
  %6107 = fptoui float %6105 to i32
  %6108 = fptoui float %6106 to i32
  %6109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6110 = extractvalue %dx.types.CBufRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.CBufRet.f32 %6109, 2
  %6112 = extractvalue %dx.types.CBufRet.f32 %6109, 3
  %6113 = fadd fast float %97, -4.000000e+00
  %6114 = call float @dx.op.binary.f32(i32 35, float %6113, float 0.000000e+00)  ; FMax(a,b)
  %6115 = fadd fast float %6114, %6110
  %6116 = fmul fast float %6115, %6111
  %6117 = call float @dx.op.unary.f32(i32 23, float %6116)  ; Log(value)
  %6118 = fmul fast float %6117, %6112
  %6119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6120 = extractvalue %dx.types.CBufRet.f32 %6119, 2
  %6121 = fmul fast float %6118, %6120
  %6122 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.i32 %6123, 1
  %6125 = add i32 %6124, -1
  %6126 = uitofp i32 %6124 to float
  %6127 = fmul fast float %6126, %6122
  %6128 = fptoui float %6127 to i32
  %6129 = call i32 @dx.op.binary.i32(i32 40, i32 %6128, i32 %6125)  ; UMin(a,b)
  %6130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.i32 %6130, 2
  %6132 = extractvalue %dx.types.CBufRet.i32 %6130, 3
  %6133 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6108, i32 %6131, i32 %6107)  ; UMad(a,b,c)
  %6134 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6129, i32 %6132, i32 %6133)  ; UMad(a,b,c)
  %6135 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %6136 = fptoui float %6135 to i32
  %6137 = lshr i32 %6136, 5
  %6138 = call i32 @dx.op.binary.i32(i32 40, i32 %6137, i32 8191)  ; UMin(a,b)
  %6139 = fsub fast float %5567, %166
  %6140 = call float @dx.op.unary.f32(i32 7, float %6139)  ; Saturate(value)
  %6141 = fcmp fast ogt float %6140, 0.000000e+00
  %6142 = fcmp fast ogt float %5769, 0.000000e+00
  %6143 = and i1 %6142, %6141
  br i1 %6143, label %6144, label %6173

; <label>:6144                                    ; preds = %6101
  %6145 = call float @dx.op.dot3.f32(i32 55, float %5767, float %5768, float %5769, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = call float @dx.op.binary.f32(i32 35, float %6145, float -1.000000e+00)  ; FMax(a,b)
  %6147 = call float @dx.op.binary.f32(i32 36, float %6146, float 1.000000e+00)  ; FMin(a,b)
  %6148 = fmul fast float %6147, %6147
  %6149 = fsub fast float 1.000000e+00, %6148
  %6150 = fmul fast float %6149, 0x3FFC6E2300000000
  %6151 = fsub fast float 1.000000e+00, %6150
  %6152 = fcmp fast ogt float %6151, 0.000000e+00
  %6153 = call float @dx.op.unary.f32(i32 24, float %6151)  ; Sqrt(value)
  %6154 = fsub fast float 1.000000e+00, %6153
  %6155 = call float @dx.op.unary.f32(i32 23, float %6154)  ; Log(value)
  %6156 = fmul fast float %6155, 5.000000e+00
  %6157 = call float @dx.op.unary.f32(i32 21, float %6156)  ; Exp(value)
  %6158 = fmul fast float %6157, 0x3FEF591A60000000
  %6159 = fadd fast float %6158, 0x3F94DCB540000000
  %6160 = select i1 %6152, float %6159, float 1.000000e+00
  %6161 = fcmp fast oge float %6160, 1.000000e+00
  %6162 = fmul fast float %6145, 2.000000e+00
  %6163 = fadd fast float %6162, %5769
  %6164 = select i1 %6161, float %6163, float %5769
  %6165 = fsub fast float %6164, %5769
  %6166 = fmul fast float %6165, %6140
  %6167 = fadd fast float %6166, %5769
  %6168 = call float @dx.op.dot3.f32(i32 55, float %5767, float %5768, float %6167, float %5767, float %5768, float %6167)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = call float @dx.op.unary.f32(i32 25, float %6168)  ; Rsqrt(value)
  %6170 = fmul fast float %6169, %5767
  %6171 = fmul fast float %6169, %5768
  %6172 = fmul fast float %6167, %6169
  br label %6173

; <label>:6173                                    ; preds = %6144, %6101
  %6174 = phi float [ %6170, %6144 ], [ %5767, %6101 ]
  %6175 = phi float [ %6171, %6144 ], [ %5768, %6101 ]
  %6176 = phi float [ %6172, %6144 ], [ %5769, %6101 ]
  %6177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6178 = extractvalue %dx.types.CBufRet.i32 %6177, 2
  %6179 = add nsw i32 %6178, -1
  %6180 = call i32 @dx.op.binary.i32(i32 37, i32 %6179, i32 0)  ; IMax(a,b)
  %6181 = shl i32 %6138, 2
  %6182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6181, i32 undef)  ; BufferLoad(srv,index,wot)
  %6183 = extractvalue %dx.types.ResRet.i32 %6182, 0
  %6184 = lshr i32 %6183, 16
  %6185 = and i32 %6183, 65535
  %6186 = lshr i32 %6183, 21
  %6187 = lshr i32 %6185, 5
  %6188 = call i32 @dx.op.binary.i32(i32 40, i32 %6187, i32 %6180)  ; UMin(a,b)
  %6189 = icmp ugt i32 %6186, %6188
  br i1 %6189, label %6553, label %6190

; <label>:6190                                    ; preds = %6173
  br label %6191

; <label>:6191                                    ; preds = %6545, %6190
  %6192 = phi float [ %6546, %6545 ], [ 0.000000e+00, %6190 ]
  %6193 = phi float [ %6547, %6545 ], [ 0.000000e+00, %6190 ]
  %6194 = phi float [ %6548, %6545 ], [ 0.000000e+00, %6190 ]
  %6195 = phi float [ %6549, %6545 ], [ 1.000000e+00, %6190 ]
  %6196 = phi i32 [ %6550, %6545 ], [ %6186, %6190 ]
  %6197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.i32 %6197, 2
  %6199 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6134, i32 %6198, i32 %6196)  ; UMad(a,b,c)
  %6200 = shl i32 %6199, 2
  %6201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.i32 %6201, 0
  %6203 = shl i32 %6196, 5
  %6204 = sub nsw i32 %6184, %6203
  %6205 = call i32 @dx.op.binary.i32(i32 37, i32 %6204, i32 0)  ; IMax(a,b)
  %6206 = call i32 @dx.op.binary.i32(i32 38, i32 %6205, i32 31)  ; IMin(a,b)
  %6207 = sub nsw i32 1, %6184
  %6208 = add nsw i32 %6207, %6185
  %6209 = call i32 @dx.op.binary.i32(i32 37, i32 %6208, i32 0)  ; IMax(a,b)
  %6210 = call i32 @dx.op.binary.i32(i32 38, i32 %6209, i32 32)  ; IMin(a,b)
  %6211 = and i32 %6210, 31
  %6212 = shl i32 -1, %6211
  %6213 = xor i32 %6212, -1
  %6214 = and i32 %6206, 31
  %6215 = shl i32 %6213, %6214
  %6216 = icmp eq i32 %6210, 32
  %6217 = select i1 %6216, i32 -1, i32 %6215
  %6218 = and i32 %6217, %6202
  %6219 = icmp eq i32 %6218, 0
  br i1 %6219, label %6545, label %6220

; <label>:6220                                    ; preds = %6191
  br label %6221

; <label>:6221                                    ; preds = %6328, %6220
  %6222 = phi float [ %6329, %6328 ], [ %6192, %6220 ]
  %6223 = phi float [ %6330, %6328 ], [ %6193, %6220 ]
  %6224 = phi float [ %6331, %6328 ], [ %6194, %6220 ]
  %6225 = phi float [ %6332, %6328 ], [ %6195, %6220 ]
  %6226 = phi i32 [ %6231, %6328 ], [ %6218, %6220 ]
  %6227 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6226)  ; FirstbitLo(value)
  %6228 = add i32 %6227, %6203
  %6229 = and i32 %6227, 31
  %6230 = shl i32 1, %6229
  %6231 = xor i32 %6230, %6226
  %6232 = mul i32 %6228, 72
  %6233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6232, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.ResRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.ResRet.f32 %6233, 2
  %6237 = add i32 %6232, 12
  %6238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6237, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.i32 %6238, 0
  %6240 = add i32 %6232, 16
  %6241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6240, i32 undef)  ; BufferLoad(srv,index,wot)
  %6242 = extractvalue %dx.types.ResRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.ResRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.ResRet.f32 %6241, 2
  %6245 = add i32 %6232, 28
  %6246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6245, i32 undef)  ; BufferLoad(srv,index,wot)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = add i32 %6232, 32
  %6249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6248, i32 undef)  ; BufferLoad(srv,index,wot)
  %6250 = extractvalue %dx.types.ResRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.ResRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.ResRet.f32 %6249, 2
  %6253 = extractvalue %dx.types.ResRet.f32 %6249, 3
  %6254 = add i32 %6232, 48
  %6255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6254, i32 undef)  ; BufferLoad(srv,index,wot)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.ResRet.f32 %6255, 1
  %6258 = add i32 %6232, 56
  %6259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = add i32 %6232, 64
  %6263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6262, i32 undef)  ; BufferLoad(srv,index,wot)
  %6264 = extractvalue %dx.types.ResRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.ResRet.f32 %6263, 1
  %6266 = mul i32 %6228, 60
  %6267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6266, i32 undef)  ; BufferLoad(srv,index,wot)
  %6268 = extractvalue %dx.types.ResRet.f32 %6267, 0
  %6269 = extractvalue %dx.types.ResRet.f32 %6267, 1
  %6270 = extractvalue %dx.types.ResRet.f32 %6267, 2
  %6271 = add i32 %6266, 12
  %6272 = add i32 %6266, 48
  %6273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6272, i32 undef)  ; BufferLoad(srv,index,wot)
  %6274 = extractvalue %dx.types.ResRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.ResRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.ResRet.f32 %6273, 2
  %6277 = and i32 %6239, 32767
  %6278 = bitcast float %6234 to i32
  %6279 = icmp eq i32 %6278, -1
  %6280 = bitcast float %6235 to i32
  %6281 = and i32 %6239, 32768
  %6282 = icmp ne i32 %6281, 0
  %6283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6284 = extractvalue %dx.types.CBufRet.f32 %6283, 0
  %6285 = extractvalue %dx.types.CBufRet.f32 %6283, 1
  %6286 = extractvalue %dx.types.CBufRet.f32 %6283, 2
  %6287 = fsub fast float %6268, %6284
  %6288 = fsub fast float %6269, %6285
  %6289 = fsub fast float %6270, %6286
  %6290 = fsub fast float %164, %6287
  %6291 = fsub fast float %165, %6288
  %6292 = fsub fast float %166, %6289
  %6293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6271, i32 undef)  ; BufferLoad(srv,index,wot)
  %6294 = extractvalue %dx.types.ResRet.f32 %6293, 0
  %6295 = extractvalue %dx.types.ResRet.f32 %6293, 1
  %6296 = extractvalue %dx.types.ResRet.f32 %6293, 2
  %6297 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6294, float %6295, float %6296)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = add i32 %6266, 24
  %6299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6298, i32 undef)  ; BufferLoad(srv,index,wot)
  %6300 = extractvalue %dx.types.ResRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.ResRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.ResRet.f32 %6299, 2
  %6303 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6300, float %6301, float %6302)  ; Dot3(ax,ay,az,bx,by,bz)
  %6304 = add i32 %6266, 36
  %6305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6304, i32 undef)  ; BufferLoad(srv,index,wot)
  %6306 = extractvalue %dx.types.ResRet.f32 %6305, 0
  %6307 = extractvalue %dx.types.ResRet.f32 %6305, 1
  %6308 = extractvalue %dx.types.ResRet.f32 %6305, 2
  %6309 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6306, float %6307, float %6308)  ; Dot3(ax,ay,az,bx,by,bz)
  %6310 = call float @dx.op.unary.f32(i32 6, float %6297)  ; FAbs(value)
  %6311 = call float @dx.op.unary.f32(i32 6, float %6303)  ; FAbs(value)
  %6312 = call float @dx.op.unary.f32(i32 6, float %6309)  ; FAbs(value)
  %6313 = fsub fast float %6274, %6310
  %6314 = fsub fast float %6275, %6311
  %6315 = fsub fast float %6276, %6312
  %6316 = fmul fast float %6313, %6242
  %6317 = fmul fast float %6314, %6243
  %6318 = fmul fast float %6315, %6244
  %6319 = call float @dx.op.binary.f32(i32 36, float %6317, float %6318)  ; FMin(a,b)
  %6320 = call float @dx.op.binary.f32(i32 36, float %6316, float %6319)  ; FMin(a,b)
  %6321 = call float @dx.op.unary.f32(i32 7, float %6320)  ; Saturate(value)
  %6322 = call float @dx.op.binary.f32(i32 36, float %6225, float %6321)  ; FMin(a,b)
  %6323 = uitofp i1 %6282 to float
  %6324 = fadd fast float %6140, 1.000000e+00
  %6325 = fsub fast float %6324, %6323
  %6326 = fmul fast float %6322, %6325
  %6327 = fcmp fast ogt float %6326, 0.000000e+00
  br i1 %6327, label %6334, label %6328

; <label>:6328                                    ; preds = %6476, %6221
  %6329 = phi float [ %6540, %6476 ], [ %6222, %6221 ]
  %6330 = phi float [ %6541, %6476 ], [ %6223, %6221 ]
  %6331 = phi float [ %6542, %6476 ], [ %6224, %6221 ]
  %6332 = phi float [ %6543, %6476 ], [ %6225, %6221 ]
  %6333 = icmp eq i32 %6226, %6230
  br i1 %6333, label %6544, label %6221

; <label>:6334                                    ; preds = %6221
  br i1 %6279, label %6392, label %6335

; <label>:6335                                    ; preds = %6334
  %6336 = fsub fast float -0.000000e+00, %6294
  %6337 = fsub fast float -0.000000e+00, %6295
  %6338 = fsub fast float -0.000000e+00, %6296
  %6339 = call float @dx.op.dot3.f32(i32 55, float %6174, float %6175, float %6176, float %6336, float %6337, float %6338)  ; Dot3(ax,ay,az,bx,by,bz)
  %6340 = fsub fast float -0.000000e+00, %6339
  %6341 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6336, float %6337, float %6338)  ; Dot3(ax,ay,az,bx,by,bz)
  %6342 = fadd fast float %6341, %6257
  %6343 = fadd fast float %6256, %6341
  %6344 = fsub fast float -0.000000e+00, %6343
  %6345 = fcmp ogt float %6339, -0.000000e+00
  %6346 = select i1 %6345, float %6344, float %6342
  %6347 = call float @dx.op.unary.f32(i32 6, float %6340)  ; FAbs(value)
  %6348 = fdiv fast float 1.000000e+00, %6347
  %6349 = fmul fast float %6346, %6348
  %6350 = call float @dx.op.binary.f32(i32 35, float %6349, float 0.000000e+00)  ; FMax(a,b)
  %6351 = fsub fast float -0.000000e+00, %6300
  %6352 = fsub fast float -0.000000e+00, %6301
  %6353 = fsub fast float -0.000000e+00, %6302
  %6354 = call float @dx.op.dot3.f32(i32 55, float %6174, float %6175, float %6176, float %6351, float %6352, float %6353)  ; Dot3(ax,ay,az,bx,by,bz)
  %6355 = fsub fast float -0.000000e+00, %6354
  %6356 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6351, float %6352, float %6353)  ; Dot3(ax,ay,az,bx,by,bz)
  %6357 = fadd fast float %6356, %6261
  %6358 = fadd fast float %6260, %6356
  %6359 = fsub fast float -0.000000e+00, %6358
  %6360 = fcmp ogt float %6354, -0.000000e+00
  %6361 = select i1 %6360, float %6359, float %6357
  %6362 = call float @dx.op.unary.f32(i32 6, float %6355)  ; FAbs(value)
  %6363 = fdiv fast float 1.000000e+00, %6362
  %6364 = fmul fast float %6361, %6363
  %6365 = call float @dx.op.binary.f32(i32 35, float %6364, float 0.000000e+00)  ; FMax(a,b)
  %6366 = fsub fast float -0.000000e+00, %6306
  %6367 = fsub fast float -0.000000e+00, %6307
  %6368 = fsub fast float -0.000000e+00, %6308
  %6369 = call float @dx.op.dot3.f32(i32 55, float %6174, float %6175, float %6176, float %6366, float %6367, float %6368)  ; Dot3(ax,ay,az,bx,by,bz)
  %6370 = fsub fast float -0.000000e+00, %6369
  %6371 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6366, float %6367, float %6368)  ; Dot3(ax,ay,az,bx,by,bz)
  %6372 = fadd fast float %6371, %6265
  %6373 = fadd fast float %6264, %6371
  %6374 = fsub fast float -0.000000e+00, %6373
  %6375 = fcmp ogt float %6369, -0.000000e+00
  %6376 = select i1 %6375, float %6374, float %6372
  %6377 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6378 = fdiv fast float 1.000000e+00, %6377
  %6379 = fmul fast float %6376, %6378
  %6380 = call float @dx.op.binary.f32(i32 35, float %6379, float 0.000000e+00)  ; FMax(a,b)
  %6381 = call float @dx.op.binary.f32(i32 36, float %6365, float %6380)  ; FMin(a,b)
  %6382 = call float @dx.op.binary.f32(i32 36, float %6350, float %6381)  ; FMin(a,b)
  %6383 = fmul fast float %6382, %6174
  %6384 = fmul fast float %6382, %6175
  %6385 = fmul fast float %6382, %6176
  %6386 = fadd fast float %6383, %164
  %6387 = fadd fast float %6384, %165
  %6388 = fadd fast float %6385, %166
  %6389 = fsub fast float %6386, %6234
  %6390 = fsub fast float %6387, %6235
  %6391 = fsub fast float %6388, %6236
  br label %6399

; <label>:6392                                    ; preds = %6334
  %6393 = fmul fast float %6174, 8.096000e+03
  %6394 = fmul fast float %6175, 8.096000e+03
  %6395 = fmul fast float %6176, 8.096000e+03
  %6396 = fadd fast float %6393, %164
  %6397 = fadd fast float %6394, %165
  %6398 = fadd fast float %6395, %166
  br label %6399

; <label>:6399                                    ; preds = %6392, %6335
  %6400 = phi float [ %6174, %6392 ], [ %6389, %6335 ]
  %6401 = phi float [ %6175, %6392 ], [ %6390, %6335 ]
  %6402 = phi float [ %6176, %6392 ], [ %6391, %6335 ]
  %6403 = phi float [ %6396, %6392 ], [ %6386, %6335 ]
  %6404 = phi float [ %6397, %6392 ], [ %6387, %6335 ]
  %6405 = phi float [ %6398, %6392 ], [ %6388, %6335 ]
  %6406 = fcmp fast olt float %6253, 1.000000e+00
  br i1 %6406, label %6407, label %6438, !dx.controlflow.hints !98

; <label>:6407                                    ; preds = %6399
  %6408 = fmul fast float %6402, %6251
  %6409 = fmul fast float %6401, %6252
  %6410 = fsub fast float %6408, %6409
  %6411 = fmul fast float %6400, %6252
  %6412 = fmul fast float %6402, %6250
  %6413 = fsub fast float %6411, %6412
  %6414 = fmul fast float %6401, %6250
  %6415 = fmul fast float %6400, %6251
  %6416 = fsub fast float %6414, %6415
  %6417 = fmul fast float %6410, 2.000000e+00
  %6418 = fmul fast float %6413, 2.000000e+00
  %6419 = fmul fast float %6416, 2.000000e+00
  %6420 = fmul fast float %6417, %6253
  %6421 = fmul fast float %6418, %6253
  %6422 = fmul fast float %6419, %6253
  %6423 = fmul fast float %6419, %6251
  %6424 = fmul fast float %6418, %6252
  %6425 = fmul fast float %6417, %6252
  %6426 = fmul fast float %6419, %6250
  %6427 = fmul fast float %6418, %6250
  %6428 = fmul fast float %6417, %6251
  %6429 = fadd fast float %6423, %6400
  %6430 = fadd fast float %6429, %6420
  %6431 = fsub fast float %6430, %6424
  %6432 = fsub fast float %6401, %6426
  %6433 = fadd fast float %6432, %6421
  %6434 = fadd fast float %6433, %6425
  %6435 = fadd fast float %6422, %6402
  %6436 = fsub fast float %6435, %6428
  %6437 = fadd fast float %6436, %6427
  br label %6438

; <label>:6438                                    ; preds = %6407, %6399
  %6439 = phi float [ %6431, %6407 ], [ %6400, %6399 ]
  %6440 = phi float [ %6434, %6407 ], [ %6401, %6399 ]
  %6441 = phi float [ %6437, %6407 ], [ %6402, %6399 ]
  br i1 %6279, label %6473, label %6442

; <label>:6442                                    ; preds = %6438
  %6443 = fmul fast float %5756, 0x400187C840000000
  %6444 = fadd fast float %6443, 0xC00EFC2120000000
  %6445 = fmul fast float %6444, %5756
  %6446 = fadd fast float %6445, 0x3FE5D16340000000
  %6447 = fmul fast float %6446, %5756
  %6448 = fadd fast float %6447, 1.000000e+00
  %6449 = call float @dx.op.unary.f32(i32 7, float %6448)  ; Saturate(value)
  %6450 = fsub fast float %6403, %164
  %6451 = fsub fast float %6404, %165
  %6452 = fsub fast float %6405, %166
  %6453 = fsub fast float %6403, %6234
  %6454 = fsub fast float %6404, %6235
  %6455 = fsub fast float %6405, %6236
  %6456 = call float @dx.op.dot3.f32(i32 55, float %6450, float %6451, float %6452, float %6450, float %6451, float %6452)  ; Dot3(ax,ay,az,bx,by,bz)
  %6457 = call float @dx.op.dot3.f32(i32 55, float %6453, float %6454, float %6455, float %6453, float %6454, float %6455)  ; Dot3(ax,ay,az,bx,by,bz)
  %6458 = fadd fast float %6457, 0x3EE4F8B580000000
  %6459 = fdiv fast float %6456, %6458
  %6460 = bitcast float %6459 to i32
  %6461 = ashr i32 %6460, 1
  %6462 = add nsw i32 %6461, 532487669
  %6463 = bitcast i32 %6462 to float
  %6464 = fmul fast float %6463, %6449
  %6465 = call float @dx.op.unary.f32(i32 7, float %6464)  ; Saturate(value)
  %6466 = fmul fast float %6465, 0x4009981AE0000000
  %6467 = fsub fast float 0x40111BBD80000000, %6466
  %6468 = fmul fast float %6467, %6465
  %6469 = fadd fast float %6468, 0xC0009F6020000000
  %6470 = fmul fast float %6469, %6465
  %6471 = fadd fast float %6470, 1.000000e+00
  %6472 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  br label %6476

; <label>:6473                                    ; preds = %6438
  %6474 = icmp ne i32 %6280, -1
  %6475 = zext i1 %6474 to i32
  br label %6476

; <label>:6476                                    ; preds = %6473, %6442
  %6477 = phi float [ %5756, %6473 ], [ %6472, %6442 ]
  %6478 = phi i32 [ %6475, %6473 ], [ 0, %6442 ]
  %6479 = fmul float %6477, 5.000000e+00
  %6480 = fsub float 5.000000e+00, %6479
  %6481 = icmp ne i32 %6478, 0
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 3
  %6484 = fadd fast float %6483, %6480
  %6485 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6484)  ; FMax(a,b)
  %6486 = call float @dx.op.unary.f32(i32 6, float %6439)  ; FAbs(value)
  %6487 = call float @dx.op.unary.f32(i32 6, float %6440)  ; FAbs(value)
  %6488 = fadd fast float %6487, %6486
  %6489 = call float @dx.op.unary.f32(i32 6, float %6441)  ; FAbs(value)
  %6490 = fadd fast float %6488, %6489
  %6491 = fcmp fast oeq float %6490, 0.000000e+00
  %6492 = fdiv fast float 1.000000e+00, %6490
  %6493 = select i1 %6491, float 1.000000e+00, float %6492
  %6494 = fmul fast float %6493, %6439
  %6495 = fmul fast float %6493, %6440
  %6496 = call float @dx.op.unary.f32(i32 6, float %6495)  ; FAbs(value)
  %6497 = call float @dx.op.unary.f32(i32 6, float %6494)  ; FAbs(value)
  %6498 = fsub fast float 1.000000e+00, %6496
  %6499 = fsub fast float 1.000000e+00, %6497
  %6500 = fcmp fast oge float %6494, 0.000000e+00
  %6501 = fcmp fast oge float %6495, 0.000000e+00
  %6502 = select i1 %6500, float 1.000000e+00, float -1.000000e+00
  %6503 = select i1 %6501, float 1.000000e+00, float -1.000000e+00
  %6504 = fcmp fast ole float %6441, 0.000000e+00
  %6505 = fmul fast float %6502, %6498
  %6506 = fmul fast float %6503, %6499
  %6507 = select i1 %6504, float %6505, float %6494
  %6508 = select i1 %6504, float %6506, float %6495
  %6509 = fmul fast float %6507, 5.000000e-01
  %6510 = fmul fast float %6508, 5.000000e-01
  %6511 = fadd fast float %6509, 5.000000e-01
  %6512 = fadd fast float %6510, 5.000000e-01
  %6513 = uitofp i32 %6277 to float
  %6514 = call float @dx.op.binary.f32(i32 36, float %6485, float 3.000000e+00)  ; FMin(a,b)
  %6515 = fadd fast float %6514, 2.000000e+00
  %6516 = call float @dx.op.unary.f32(i32 21, float %6515)  ; Exp(value)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6518 = fmul fast float %6517, %6516
  %6519 = fmul fast float %6518, 2.000000e+00
  %6520 = fsub fast float 1.000000e+00, %6519
  %6521 = fmul fast float %6511, %6520
  %6522 = fmul fast float %6512, %6520
  %6523 = fadd fast float %6521, %6518
  %6524 = fadd fast float %6522, %6518
  %6525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6523, float %6524, float %6513, float undef, i32 0, i32 0, i32 undef, float %6485)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6526 = extractvalue %dx.types.ResRet.f32 %6525, 0
  %6527 = extractvalue %dx.types.ResRet.f32 %6525, 1
  %6528 = extractvalue %dx.types.ResRet.f32 %6525, 2
  %6529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6530 = extractvalue %dx.types.CBufRet.f32 %6529, 3
  %6531 = fmul fast float %6530, %6247
  %6532 = call float @dx.op.binary.f32(i32 36, float %5788, float %6531)  ; FMin(a,b)
  %6533 = select i1 %6481, float %6532, float %6531
  %6534 = fmul fast float %6526, %6326
  %6535 = fmul fast float %6534, %6533
  %6536 = fmul fast float %6527, %6326
  %6537 = fmul fast float %6536, %6533
  %6538 = fmul fast float %6528, %6326
  %6539 = fmul fast float %6538, %6533
  %6540 = fadd fast float %6535, %6222
  %6541 = fadd fast float %6537, %6223
  %6542 = fadd fast float %6539, %6224
  %6543 = fsub fast float %6225, %6326
  br label %6328

; <label>:6544                                    ; preds = %6328
  br label %6545

; <label>:6545                                    ; preds = %6544, %6191
  %6546 = phi float [ %6192, %6191 ], [ %6329, %6544 ]
  %6547 = phi float [ %6193, %6191 ], [ %6330, %6544 ]
  %6548 = phi float [ %6194, %6191 ], [ %6331, %6544 ]
  %6549 = phi float [ %6195, %6191 ], [ %6332, %6544 ]
  %6550 = add i32 %6196, 1
  %6551 = icmp ugt i32 %6550, %6188
  br i1 %6551, label %6552, label %6191, !llvm.loop !99

; <label>:6552                                    ; preds = %6545
  br label %6553

; <label>:6553                                    ; preds = %6552, %6173
  %6554 = phi float [ 0.000000e+00, %6173 ], [ %6546, %6552 ]
  %6555 = phi float [ 0.000000e+00, %6173 ], [ %6547, %6552 ]
  %6556 = phi float [ 0.000000e+00, %6173 ], [ %6548, %6552 ]
  %6557 = call float @dx.op.dot3.f32(i32 55, float %6554, float %6555, float %6556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6558 = select i1 %258, float 0.000000e+00, float %6554
  %6559 = select i1 %258, float %6557, float %6555
  %6560 = select i1 %258, float 0.000000e+00, float %6556
  %6561 = fcmp fast olt float %6099, 0.000000e+00
  %6562 = call float @dx.op.unary.f32(i32 6, float %6099)  ; FAbs(value)
  %6563 = fmul fast float %6562, %6028
  %6564 = fmul fast float %6562, %6029
  %6565 = fmul fast float %6562, %6030
  %6566 = select i1 %6561, float %6028, float %6563
  %6567 = select i1 %6561, float %6029, float %6564
  %6568 = select i1 %6561, float %6030, float %6565
  %6569 = fsub fast float 1.000000e+00, %6562
  %6570 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6571 = fmul fast float %6570, %6558
  %6572 = fmul fast float %6570, %6559
  %6573 = fmul fast float %6570, %6560
  %6574 = fadd fast float %6566, %6571
  %6575 = fadd fast float %6567, %6572
  %6576 = fadd fast float %6568, %6573
  br label %6577

; <label>:6577                                    ; preds = %6553, %6082
  %6578 = phi float [ %6028, %6082 ], [ %6574, %6553 ]
  %6579 = phi float [ %6029, %6082 ], [ %6575, %6553 ]
  %6580 = phi float [ %6030, %6082 ], [ %6576, %6553 ]
  %6581 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6582 = fcmp fast ogt float %6581, 0x3E7FF19E20000000
  %6583 = fdiv fast float 1.000000e+00, %6581
  %6584 = select i1 %6582, float %6583, float 0.000000e+00
  %6585 = fmul fast float %6584, %5747
  %6586 = fmul fast float %6584, %5748
  %6587 = fmul fast float %6584, %5749
  %6588 = fadd fast float %6585, -1.000000e+00
  %6589 = fadd fast float %6586, -1.000000e+00
  %6590 = fadd fast float %6587, -1.000000e+00
  %6591 = fmul fast float %6588, 5.000000e-01
  %6592 = fmul fast float %6589, 5.000000e-01
  %6593 = fmul fast float %6590, 5.000000e-01
  %6594 = fadd fast float %6591, 1.000000e+00
  %6595 = fadd fast float %6592, 1.000000e+00
  %6596 = fadd fast float %6593, 1.000000e+00
  %6597 = call float @dx.op.binary.f32(i32 35, float %5761, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6598 = fdiv fast float %4459, %6597
  %6599 = fcmp fast olt float %5183, 1.270000e+02
  %6600 = fcmp fast olt float %5184, 1.270000e+02
  %6601 = fcmp fast olt float %5185, 1.270000e+02
  %6602 = fmul fast float %5183, 0xBFF7154760000000
  %6603 = fmul fast float %6602, %6598
  %6604 = fmul fast float %5184, 0xBFF7154760000000
  %6605 = fmul fast float %6604, %6598
  %6606 = fmul fast float %5185, 0xBFF7154760000000
  %6607 = fmul fast float %6606, %6598
  %6608 = call float @dx.op.unary.f32(i32 21, float %6603)  ; Exp(value)
  %6609 = call float @dx.op.unary.f32(i32 21, float %6605)  ; Exp(value)
  %6610 = call float @dx.op.unary.f32(i32 21, float %6607)  ; Exp(value)
  %6611 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6612 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6613 = call float @dx.op.unary.f32(i32 7, float %6610)  ; Saturate(value)
  %6614 = select i1 %6599, float %6611, float 0.000000e+00
  %6615 = select i1 %6600, float %6612, float 0.000000e+00
  %6616 = select i1 %6601, float %6613, float 0.000000e+00
  %6617 = fmul fast float %6614, %6088
  %6618 = fmul fast float %6615, %6088
  %6619 = fmul fast float %6616, %6088
  %6620 = fadd fast float %6617, -1.000000e+00
  %6621 = fadd fast float %6618, -1.000000e+00
  %6622 = fadd fast float %6619, -1.000000e+00
  %6623 = fmul fast float %6620, %5138
  %6624 = fmul fast float %6621, %5138
  %6625 = fmul fast float %6622, %5138
  %6626 = fmul fast float %6578, %6083
  %6627 = fmul fast float %6579, %6084
  %6628 = fmul fast float %6580, %6085
  %6629 = fsub fast float 1.000000e+00, %5761
  %6630 = bitcast float %6629 to i32
  %6631 = sitofp i32 %6630 to float
  %6632 = fmul fast float %6631, 5.000000e+00
  %6633 = fadd fast float %6632, 0xC1EFBF8940000000
  %6634 = fptosi float %6633 to i32
  %6635 = bitcast i32 %6634 to float
  %6636 = fmul fast float %6635, %5106
  %6637 = fmul fast float %6020, %6636
  %6638 = fmul fast float %6637, %6088
  %6639 = fmul fast float %6638, %6594
  %6640 = fmul fast float %6021, %6636
  %6641 = fmul fast float %6640, %6088
  %6642 = fmul fast float %6641, %6595
  %6643 = fmul fast float %6022, %6636
  %6644 = fmul fast float %6643, %6088
  %6645 = fmul fast float %6644, %6596
  %6646 = fadd fast float %6626, %5095
  %6647 = fadd fast float %6646, %6639
  %6648 = fmul fast float %6647, %5138
  %6649 = fadd fast float %6627, %5096
  %6650 = fadd fast float %6649, %6642
  %6651 = fmul fast float %6650, %5138
  %6652 = fadd fast float %6628, %5097
  %6653 = fadd fast float %6652, %6645
  %6654 = fmul fast float %6653, %5138
  %6655 = fmul fast float %5751, 0x4012D0A400000000
  %6656 = fadd fast float %6625, 1.000000e+00
  %6657 = fadd fast float %6624, 1.000000e+00
  %6658 = fadd fast float %6623, 1.000000e+00
  %6659 = fmul fast float %6088, %6022
  %6660 = fmul fast float %6088, %6021
  %6661 = fmul fast float %6088, %6020
  %6662 = fmul fast float %5776, %5138
  %6663 = fsub fast float 1.000000e+00, %6662
  %6664 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  %6665 = fsub fast float 1.000000e+00, %6664
  %6666 = fadd fast float %6655, 0x3FDB6377A0000000
  %6667 = fmul fast float %6665, %6666
  %6668 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5202, float %5203, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6669 = fadd fast float %6667, %6668
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = call float @dx.op.binary.f32(i32 35, float %6670, float 0x3F847AE140000000)  ; FMax(a,b)
  %6672 = fmul fast float %6671, %6671
  %6673 = fmul fast float %6672, %6672
  %6674 = fmul fast float %6673, 0xC00A935000000000
  %6675 = call float @dx.op.unary.f32(i32 21, float %6674)  ; Exp(value)
  %6676 = fsub fast float 1.000000e+00, %6675
  %6677 = fmul fast float %6658, %6024
  %6678 = fmul fast float %6677, %6676
  %6679 = fmul fast float %6657, %6025
  %6680 = fmul fast float %6679, %6676
  %6681 = fmul fast float %6656, %6026
  %6682 = fmul fast float %6681, %6676
  %6683 = fadd fast float %6678, %6661
  %6684 = fmul fast float %6683, %5138
  %6685 = fadd fast float %6680, %6660
  %6686 = fmul fast float %6685, %5138
  %6687 = fadd fast float %6682, %6659
  %6688 = fmul fast float %6687, %5138
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6691 = fcmp fast oeq float %6690, 0.000000e+00
  br i1 %6691, label %8369, label %6692

; <label>:6692                                    ; preds = %6577
  %6693 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6694 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6695 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  %6702 = extractvalue %dx.types.CBufRet.f32 %6700, 1
  %6703 = call float @dx.op.dot3.f32(i32 55, float %6697, float %6698, float %6699, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6704 = select i1 %258, float %6701, float %6697
  %6705 = select i1 %258, float %6703, float %6698
  %6706 = select i1 %258, float %6702, float %6699
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 2
  %6709 = fmul fast float %6708, %116
  %6710 = fmul fast float %6708, %117
  %6711 = fmul fast float %6708, %118
  %6712 = fadd fast float %6709, %164
  %6713 = fadd fast float %6710, %165
  %6714 = fadd fast float %6711, %166
  %6715 = fcmp fast olt float %6690, 0.000000e+00
  br i1 %6715, label %7811, label %6716

; <label>:6716                                    ; preds = %6692
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  %6719 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %6720 = extractvalue %dx.types.CBufRet.f32 %6717, 2
  %6721 = extractvalue %dx.types.CBufRet.f32 %6717, 3
  %6722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.f32 %6722, 1
  %6725 = extractvalue %dx.types.CBufRet.f32 %6722, 2
  %6726 = extractvalue %dx.types.CBufRet.f32 %6722, 3
  %6727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.f32 %6727, 0
  %6729 = extractvalue %dx.types.CBufRet.f32 %6727, 1
  %6730 = extractvalue %dx.types.CBufRet.f32 %6727, 2
  %6731 = extractvalue %dx.types.CBufRet.f32 %6727, 3
  %6732 = fmul fast float %6718, %6712
  %6733 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6719, float %6732)  ; FMad(a,b,c)
  %6734 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %6720, float %6733)  ; FMad(a,b,c)
  %6735 = fadd fast float %6734, %6721
  %6736 = fmul fast float %6723, %6712
  %6737 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6724, float %6736)  ; FMad(a,b,c)
  %6738 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %6725, float %6737)  ; FMad(a,b,c)
  %6739 = fadd fast float %6738, %6726
  %6740 = fmul fast float %6728, %6712
  %6741 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6729, float %6740)  ; FMad(a,b,c)
  %6742 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %6730, float %6741)  ; FMad(a,b,c)
  %6743 = fadd fast float %6742, %6731
  %6744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6745 = extractvalue %dx.types.CBufRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.CBufRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.CBufRet.f32 %6744, 3
  %6748 = fmul fast float %6747, %6735
  %6749 = fmul fast float %6747, %6739
  %6750 = fadd fast float %6748, %6745
  %6751 = fadd fast float %6749, %6746
  %6752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6753 = extractvalue %dx.types.CBufRet.f32 %6752, 0
  %6754 = extractvalue %dx.types.CBufRet.f32 %6752, 1
  %6755 = extractvalue %dx.types.CBufRet.f32 %6752, 3
  %6756 = fmul fast float %6755, %6735
  %6757 = fmul fast float %6755, %6739
  %6758 = fadd fast float %6756, %6753
  %6759 = fadd fast float %6757, %6754
  %6760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.f32 %6760, 1
  %6762 = fsub fast float %6761, %6743
  %6763 = extractvalue %dx.types.CBufRet.f32 %6760, 2
  %6764 = fmul fast float %6762, %6763
  %6765 = fsub fast float 1.000000e+00, %6764
  %6766 = call float @dx.op.unary.f32(i32 7, float %6765)  ; Saturate(value)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6752, 2
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 2
  %6770 = fadd fast float %6769, %6767
  %6771 = fcmp fast ogt float %6770, 0.000000e+00
  br i1 %6771, label %6772, label %6796

; <label>:6772                                    ; preds = %6716
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 0
  %6775 = extractvalue %dx.types.CBufRet.f32 %6773, 1
  %6776 = fsub fast float %6758, %6774
  %6777 = fsub fast float %6759, %6775
  %6778 = fcmp fast olt float %6776, 0.000000e+00
  %6779 = fcmp fast olt float %6777, 0.000000e+00
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.CBufRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6785 = select i1 %6778, float %6781, float %6783
  %6786 = select i1 %6779, float %6782, float %6784
  %6787 = fmul fast float %6785, %6776
  %6788 = fmul fast float %6786, %6777
  %6789 = call float @dx.op.unary.f32(i32 6, float %6787)  ; FAbs(value)
  %6790 = call float @dx.op.unary.f32(i32 6, float %6788)  ; FAbs(value)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  %6792 = call float @dx.op.binary.f32(i32 35, float %6789, float %6790)  ; FMax(a,b)
  %6793 = fsub fast float %6791, %6792
  %6794 = call float @dx.op.unary.f32(i32 7, float %6793)  ; Saturate(value)
  %6795 = fmul fast float %6794, %6766
  br label %6796

; <label>:6796                                    ; preds = %6772, %6716
  %6797 = phi float [ %6795, %6772 ], [ 0.000000e+00, %6716 ]
  %6798 = extractvalue %dx.types.CBufRet.f32 %6744, 2
  %6799 = extractvalue %dx.types.CBufRet.f32 %6768, 1
  %6800 = fadd fast float %6799, %6798
  %6801 = fcmp fast ogt float %6800, 0.000000e+00
  %6802 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  br i1 %6801, label %6803, label %6826

; <label>:6803                                    ; preds = %6796
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %6806 = extractvalue %dx.types.CBufRet.f32 %6804, 1
  %6807 = fsub fast float %6750, %6805
  %6808 = fsub fast float %6751, %6806
  %6809 = fcmp fast olt float %6807, 0.000000e+00
  %6810 = fcmp fast olt float %6808, 0.000000e+00
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.CBufRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.CBufRet.f32 %6811, 2
  %6815 = extractvalue %dx.types.CBufRet.f32 %6811, 3
  %6816 = select i1 %6809, float %6812, float %6814
  %6817 = select i1 %6810, float %6813, float %6815
  %6818 = fmul fast float %6816, %6807
  %6819 = fmul fast float %6817, %6808
  %6820 = call float @dx.op.unary.f32(i32 6, float %6818)  ; FAbs(value)
  %6821 = call float @dx.op.unary.f32(i32 6, float %6819)  ; FAbs(value)
  %6822 = call float @dx.op.binary.f32(i32 35, float %6820, float %6821)  ; FMax(a,b)
  %6823 = fsub fast float %6802, %6822
  %6824 = call float @dx.op.unary.f32(i32 7, float %6823)  ; Saturate(value)
  %6825 = fmul fast float %6824, %6766
  br label %6826

; <label>:6826                                    ; preds = %6803, %6796
  %6827 = phi float [ %6825, %6803 ], [ 0.000000e+00, %6796 ]
  %6828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6829 = extractvalue %dx.types.CBufRet.f32 %6828, 1
  %6830 = call float @dx.op.unary.f32(i32 7, float %6829)  ; Saturate(value)
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = fsub fast float %6735, %6832
  %6835 = fsub fast float %6739, %6833
  %6836 = fcmp fast olt float %6834, 0.000000e+00
  %6837 = fcmp fast olt float %6835, 0.000000e+00
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6841 = extractvalue %dx.types.CBufRet.f32 %6838, 2
  %6842 = extractvalue %dx.types.CBufRet.f32 %6838, 3
  %6843 = select i1 %6836, float %6839, float %6841
  %6844 = select i1 %6837, float %6840, float %6842
  %6845 = fmul fast float %6843, %6834
  %6846 = fmul fast float %6844, %6835
  %6847 = call float @dx.op.unary.f32(i32 6, float %6845)  ; FAbs(value)
  %6848 = call float @dx.op.unary.f32(i32 6, float %6846)  ; FAbs(value)
  %6849 = call float @dx.op.binary.f32(i32 35, float %6847, float %6848)  ; FMax(a,b)
  %6850 = fsub fast float %6802, %6849
  %6851 = call float @dx.op.unary.f32(i32 7, float %6850)  ; Saturate(value)
  %6852 = call float @dx.op.binary.f32(i32 36, float %6851, float %6830)  ; FMin(a,b)
  %6853 = fmul fast float %6852, %6766
  %6854 = fsub fast float %6827, %6853
  %6855 = fsub fast float %6797, %6827
  %6856 = fsub fast float %6855, %6853
  %6857 = call float @dx.op.binary.f32(i32 35, float %6827, float %6797)  ; FMax(a,b)
  %6858 = call float @dx.op.binary.f32(i32 35, float %6853, float %6857)  ; FMax(a,b)
  %6859 = fcmp fast olt float %6858, 1.000000e+00
  br i1 %6859, label %6860, label %7258, !dx.controlflow.hints !101

; <label>:6860                                    ; preds = %6826
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 0
  %6863 = fcmp fast une float %6862, 0.000000e+00
  br i1 %6863, label %6864, label %7258, !dx.controlflow.hints !102

; <label>:6864                                    ; preds = %6860
  %6865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6866 = extractvalue %dx.types.CBufRet.f32 %6865, 0
  %6867 = extractvalue %dx.types.CBufRet.f32 %6865, 1
  %6868 = extractvalue %dx.types.CBufRet.f32 %6865, 2
  %6869 = extractvalue %dx.types.CBufRet.f32 %6865, 3
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6873 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6874 = extractvalue %dx.types.CBufRet.f32 %6870, 3
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6878 = extractvalue %dx.types.CBufRet.f32 %6875, 2
  %6879 = extractvalue %dx.types.CBufRet.f32 %6875, 3
  %6880 = fmul fast float %6866, %6712
  %6881 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6867, float %6880)  ; FMad(a,b,c)
  %6882 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %6868, float %6881)  ; FMad(a,b,c)
  %6883 = fadd fast float %6882, %6869
  %6884 = fmul fast float %6871, %6712
  %6885 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6872, float %6884)  ; FMad(a,b,c)
  %6886 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %6873, float %6885)  ; FMad(a,b,c)
  %6887 = fadd fast float %6886, %6874
  %6888 = fmul fast float %6876, %6712
  %6889 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6877, float %6888)  ; FMad(a,b,c)
  %6890 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %6878, float %6889)  ; FMad(a,b,c)
  %6891 = fadd fast float %6890, %6879
  %6892 = fcmp fast oge float %6883, 1.000000e+00
  %6893 = fcmp fast oge float %6887, 1.000000e+00
  %6894 = or i1 %6892, %6893
  %6895 = fcmp fast olt float %6883, 0.000000e+00
  %6896 = fcmp fast olt float %6887, 0.000000e+00
  %6897 = or i1 %6895, %6896
  %6898 = or i1 %6894, %6897
  br i1 %6898, label %7258, label %6899, !dx.controlflow.hints !103

; <label>:6899                                    ; preds = %6864
  %6900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6901 = extractvalue %dx.types.CBufRet.f32 %6900, 0
  %6902 = extractvalue %dx.types.CBufRet.f32 %6900, 1
  %6903 = extractvalue %dx.types.CBufRet.f32 %6900, 2
  %6904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.i32 %6904, 2
  %6906 = uitofp i32 %6905 to float
  %6907 = extractvalue %dx.types.CBufRet.i32 %6904, 3
  %6908 = uitofp i32 %6907 to float
  %6909 = extractvalue %dx.types.CBufRet.f32 %6900, 3
  %6910 = fmul fast float %6909, 2.000000e+00
  %6911 = fsub fast float %6883, %6901
  %6912 = fsub fast float %6887, %6902
  %6913 = fmul fast float %6910, %6911
  %6914 = fmul fast float %6910, %6912
  %6915 = fdiv fast float 1.000000e+00, %6695
  %6916 = fmul fast float %6914, %6915
  %6917 = call float @dx.op.unary.f32(i32 6, float %6916)  ; FAbs(value)
  %6918 = fmul fast float %6903, %6714
  %6919 = fmul fast float %6918, %6910
  %6920 = call float @dx.op.unary.f32(i32 6, float %6919)  ; FAbs(value)
  %6921 = call float @dx.op.unary.f32(i32 6, float %6913)  ; FAbs(value)
  %6922 = call float @dx.op.binary.f32(i32 35, float %6920, float %6917)  ; FMax(a,b)
  %6923 = call float @dx.op.binary.f32(i32 35, float %6921, float %6922)  ; FMax(a,b)
  %6924 = fmul fast float %6923, 2.000000e+00
  %6925 = call float @dx.op.unary.f32(i32 23, float %6924)  ; Log(value)
  %6926 = call float @dx.op.binary.f32(i32 35, float %6925, float %6906)  ; FMax(a,b)
  %6927 = call float @dx.op.unary.f32(i32 22, float %6926)  ; Frc(value)
  %6928 = fadd fast float %6927, 0xBFEA666660000000
  %6929 = fmul fast float %6928, 8.000000e+00
  %6930 = call float @dx.op.unary.f32(i32 7, float %6929)  ; Saturate(value)
  %6931 = call float @dx.op.unary.f32(i32 27, float %6926)  ; Round_ni(value)
  %6932 = fadd fast float %6931, %6930
  %6933 = call float @dx.op.binary.f32(i32 36, float %6932, float %6908)  ; FMin(a,b)
  %6934 = call float @dx.op.unary.f32(i32 27, float %6933)  ; Round_ni(value)
  %6935 = fsub fast float -0.000000e+00, %6934
  %6936 = call float @dx.op.unary.f32(i32 21, float %6935)  ; Exp(value)
  %6937 = fmul fast float %6936, %6910
  %6938 = fmul fast float %6937, %6883
  %6939 = fmul fast float %6937, %6887
  %6940 = fmul fast float %6938, 2.500000e-01
  %6941 = fmul fast float %6939, 2.500000e-01
  %6942 = fadd fast float %6940, 5.000000e-01
  %6943 = fadd fast float %6941, 5.000000e-01
  %6944 = fsub fast float %6908, %6906
  %6945 = fptoui float %6944 to i32
  %6946 = add i32 %6945, 320
  %6947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6946)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6947, 0
  %6949 = extractvalue %dx.types.CBufRet.f32 %6947, 1
  %6950 = fcmp fast une float %6933, %6908
  %6951 = fsub fast float %6883, %6948
  %6952 = fsub fast float %6887, %6949
  %6953 = call float @dx.op.unary.f32(i32 6, float %6951)  ; FAbs(value)
  %6954 = call float @dx.op.unary.f32(i32 6, float %6952)  ; FAbs(value)
  %6955 = fmul fast float %6953, %6937
  %6956 = fmul fast float %6954, %6937
  %6957 = fcmp fast olt float %6955, 1.000000e+00
  %6958 = fcmp fast olt float %6956, 1.000000e+00
  %6959 = and i1 %6957, %6958
  %6960 = or i1 %6950, %6959
  br i1 %6960, label %6961, label %7258, !dx.controlflow.hints !104

; <label>:6961                                    ; preds = %6899
  %6962 = fmul fast float %6939, 5.000000e-01
  %6963 = fmul fast float %6938, 5.000000e-01
  %6964 = fadd fast float %6962, 5.000000e-01
  %6965 = fadd fast float %6963, 5.000000e-01
  %6966 = sitofp i32 %6905 to float
  %6967 = fsub fast float %6933, %6966
  %6968 = call float @dx.op.unary.f32(i32 27, float %6967)  ; Round_ni(value)
  %6969 = call float @dx.op.unary.f32(i32 22, float %6933)  ; Frc(value)
  %6970 = call float @dx.op.unary.f32(i32 22, float %6965)  ; Frc(value)
  %6971 = call float @dx.op.unary.f32(i32 22, float %6964)  ; Frc(value)
  %6972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6970, float %6971, float %6968, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6973 = extractvalue %dx.types.ResRet.f32 %6972, 0
  %6974 = extractvalue %dx.types.ResRet.f32 %6972, 1
  %6975 = extractvalue %dx.types.ResRet.f32 %6972, 2
  %6976 = extractvalue %dx.types.ResRet.f32 %6972, 3
  %6977 = fcmp fast ogt float %6969, 0.000000e+00
  br i1 %6977, label %6978, label %6999, !dx.controlflow.hints !105

; <label>:6978                                    ; preds = %6961
  %6979 = fadd fast float %6968, 1.000000e+00
  %6980 = call float @dx.op.unary.f32(i32 22, float %6942)  ; Frc(value)
  %6981 = call float @dx.op.unary.f32(i32 22, float %6943)  ; Frc(value)
  %6982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6980, float %6981, float %6979, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6983 = extractvalue %dx.types.ResRet.f32 %6982, 0
  %6984 = extractvalue %dx.types.ResRet.f32 %6982, 1
  %6985 = extractvalue %dx.types.ResRet.f32 %6982, 2
  %6986 = extractvalue %dx.types.ResRet.f32 %6982, 3
  %6987 = fsub fast float %6983, %6973
  %6988 = fsub fast float %6984, %6974
  %6989 = fsub fast float %6985, %6975
  %6990 = fsub fast float %6986, %6976
  %6991 = fmul fast float %6987, %6969
  %6992 = fmul fast float %6988, %6969
  %6993 = fmul fast float %6989, %6969
  %6994 = fmul fast float %6990, %6969
  %6995 = fadd fast float %6991, %6973
  %6996 = fadd fast float %6992, %6974
  %6997 = fadd fast float %6993, %6975
  %6998 = fadd fast float %6994, %6976
  br label %6999

; <label>:6999                                    ; preds = %6978, %6961
  %7000 = phi float [ %6995, %6978 ], [ %6973, %6961 ]
  %7001 = phi float [ %6996, %6978 ], [ %6974, %6961 ]
  %7002 = phi float [ %6997, %6978 ], [ %6975, %6961 ]
  %7003 = phi float [ %6998, %6978 ], [ %6976, %6961 ]
  %7004 = fadd fast float %7000, -5.000000e-01
  %7005 = fadd fast float %7002, -5.000000e-01
  %7006 = fmul fast float %7004, 0xBFD5555560000000
  %7007 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7005, float %7006)  ; FMad(a,b,c)
  %7008 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7001, float 0.000000e+00)  ; FMad(a,b,c)
  %7009 = fadd fast float %7008, %7003
  %7010 = fmul fast float %7004, -7.500000e-01
  %7011 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7005, float %7010)  ; FMad(a,b,c)
  %7012 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7001, float 0.000000e+00)  ; FMad(a,b,c)
  %7013 = fadd fast float %7012, %7003
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 0
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7019 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7020 = extractvalue %dx.types.CBufRet.f32 %7016, 3
  %7021 = fsub fast float %7017, %7007
  %7022 = fsub fast float %7018, %7009
  %7023 = fsub fast float %7019, %7011
  %7024 = fsub fast float %7020, %7013
  %7025 = fmul fast float %7021, %7015
  %7026 = fmul fast float %7022, %7015
  %7027 = fmul fast float %7023, %7015
  %7028 = fmul fast float %7024, %7015
  %7029 = fadd fast float %7025, %7007
  %7030 = fadd fast float %7026, %7009
  %7031 = fadd fast float %7027, %7011
  %7032 = fadd fast float %7028, %7013
  %7033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7034 = extractvalue %dx.types.ResRet.i32 %7033, 0
  %7035 = and i32 %7034, 536870911
  %7036 = uitofp i32 %7035 to float
  %7037 = fmul fast float %7036, %6883
  %7038 = fmul fast float %7036, %6887
  %7039 = fptoui float %7037 to i32
  %7040 = fptoui float %7038 to i32
  %7041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7042 = extractvalue %dx.types.ResRet.i32 %7041, 0
  %7043 = and i32 %7042, 31
  %7044 = lshr i32 %7039, %7043
  %7045 = lshr i32 %7040, %7043
  %7046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7047 = extractvalue %dx.types.ResRet.i32 %7046, 0
  %7048 = and i32 %7047, 31
  %7049 = shl i32 1, %7048
  %7050 = call i32 @dx.op.binary.i32(i32 40, i32 %7049, i32 4)  ; UMin(a,b)
  %7051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7052 = extractvalue %dx.types.ResRet.i32 %7051, 0
  %7053 = extractvalue %dx.types.ResRet.i32 %7051, 1
  %7054 = icmp eq i32 %7050, 0
  br i1 %7054, label %7096, label %7055

; <label>:7055                                    ; preds = %6999
  br label %7056

; <label>:7056                                    ; preds = %7084, %7055
  %7057 = phi i32 [ %7087, %7084 ], [ 0, %7055 ]
  %7058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7059 = extractvalue %dx.types.ResRet.i32 %7058, 0
  %7060 = lshr i32 %7059, 16
  %7061 = and i32 %7060, 31
  %7062 = shl i32 %7045, %7061
  %7063 = add i32 %7062, %7044
  %7064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7065 = extractvalue %dx.types.ResRet.i32 %7064, 0
  %7066 = and i32 %7065, 31
  %7067 = shl i32 %7063, %7066
  %7068 = add i32 %7067, %7057
  %7069 = shl i32 %7068, 2
  %7070 = add i32 %7069, 32
  %7071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7070, i32 undef)  ; BufferLoad(srv,index,wot)
  %7072 = extractvalue %dx.types.ResRet.i32 %7071, 0
  %7073 = icmp slt i32 %7072, 0
  %7074 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7057
  %7075 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7057
  %7076 = bitcast float* %7074 to i32*
  %7077 = bitcast float* %7075 to i32*
  br i1 %7073, label %7078, label %7084

; <label>:7078                                    ; preds = %7056
  %7079 = and i32 %7072, 1073741823
  %7080 = add nuw nsw i32 %7079, 20
  %7081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7080, i32 undef)  ; BufferLoad(srv,index,wot)
  %7082 = extractvalue %dx.types.ResRet.i32 %7081, 0
  %7083 = extractvalue %dx.types.ResRet.i32 %7081, 1
  br label %7084

; <label>:7084                                    ; preds = %7078, %7056
  %7085 = phi i32 [ %7082, %7078 ], [ %7052, %7056 ]
  %7086 = phi i32 [ %7083, %7078 ], [ %7053, %7056 ]
  store i32 %7085, i32* %7076, align 4
  store i32 %7086, i32* %7077, align 4
  %7087 = add nuw i32 %7057, 1
  %7088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7089 = extractvalue %dx.types.CBufRet.i32 %7088, 2
  %7090 = icmp eq i32 %7089, 0
  %7091 = icmp ugt i32 %7072, -1073741825
  %7092 = and i1 %7091, %7090
  %7093 = icmp ult i32 %7087, %7050
  %7094 = and i1 %7092, %7093
  br i1 %7094, label %7056, label %7095

; <label>:7095                                    ; preds = %7084
  br label %7096

; <label>:7096                                    ; preds = %7095, %6999
  %7097 = phi i32 [ 0, %6999 ], [ %7087, %7095 ]
  %7098 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %7099 = fptoui float %7098 to i32
  %7100 = icmp eq i32 %7099, 0
  br i1 %7100, label %7152, label %7101

; <label>:7101                                    ; preds = %7096
  br label %7102

; <label>:7102                                    ; preds = %7147, %7101
  %7103 = phi i32 [ %7148, %7147 ], [ %7097, %7101 ]
  %7104 = phi i32 [ %7149, %7147 ], [ 0, %7101 ]
  %7105 = lshr i32 %7104, 2
  %7106 = and i32 %7104, 3
  %7107 = add nuw nsw i32 %7105, 83
  %7108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7107)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.i32 %7108, 0
  %7110 = extractvalue %dx.types.CBufRet.i32 %7108, 1
  %7111 = extractvalue %dx.types.CBufRet.i32 %7108, 2
  %7112 = extractvalue %dx.types.CBufRet.i32 %7108, 3
  %7113 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7109, i32* %7113, align 4
  %7114 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7110, i32* %7114, align 4
  %7115 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7111, i32* %7115, align 4
  %7116 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7112, i32* %7116, align 4
  %7117 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7106
  %7118 = load i32, i32* %7117, align 4, !tbaa !106, !noalias !110
  %7119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7120 = extractvalue %dx.types.ResRet.i32 %7119, 0
  %7121 = lshr i32 %7120, 16
  %7122 = and i32 %7121, 31
  %7123 = shl i32 %7045, %7122
  %7124 = add i32 %7123, %7044
  %7125 = shl i32 %7124, 2
  %7126 = add i32 %7125, %7118
  %7127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7126, i32 undef)  ; BufferLoad(srv,index,wot)
  %7128 = extractvalue %dx.types.ResRet.i32 %7127, 0
  %7129 = icmp eq i32 %7128, 0
  br i1 %7129, label %7147, label %7130

; <label>:7130                                    ; preds = %7102
  %7131 = icmp slt i32 %7128, 0
  %7132 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7103
  %7133 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7103
  %7134 = bitcast float* %7132 to i32*
  %7135 = bitcast float* %7133 to i32*
  br i1 %7131, label %7136, label %7143

; <label>:7136                                    ; preds = %7130
  %7137 = and i32 %7128, 1073741823
  %7138 = add i32 %7118, 20
  %7139 = add i32 %7138, %7137
  %7140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7139, i32 undef)  ; BufferLoad(srv,index,wot)
  %7141 = extractvalue %dx.types.ResRet.i32 %7140, 0
  %7142 = extractvalue %dx.types.ResRet.i32 %7140, 1
  br label %7143

; <label>:7143                                    ; preds = %7136, %7130
  %7144 = phi i32 [ %7141, %7136 ], [ %7052, %7130 ]
  %7145 = phi i32 [ %7142, %7136 ], [ %7053, %7130 ]
  store i32 %7144, i32* %7134, align 4
  store i32 %7145, i32* %7135, align 4
  %7146 = add i32 %7103, 1
  br label %7147

; <label>:7147                                    ; preds = %7143, %7102
  %7148 = phi i32 [ %7103, %7102 ], [ %7146, %7143 ]
  %7149 = add nuw i32 %7104, 1
  %7150 = icmp eq i32 %7149, %7099
  br i1 %7150, label %7151, label %7102

; <label>:7151                                    ; preds = %7147
  br label %7152

; <label>:7152                                    ; preds = %7151, %7096
  %7153 = phi i32 [ %7097, %7096 ], [ %7148, %7151 ]
  %7154 = icmp eq i32 %7153, 1
  %7155 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  %7156 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  br i1 %7154, label %7157, label %7160

; <label>:7157                                    ; preds = %7152
  %7158 = load float, float* %7155, align 4
  %7159 = load float, float* %7156, align 4
  br label %7187

; <label>:7160                                    ; preds = %7152
  %7161 = load float, float* %7155, align 4
  %7162 = load float, float* %7156, align 4
  %7163 = fdiv fast float 1.000000e+00, %7162
  %7164 = fsub fast float %7161, %7163
  %7165 = icmp ugt i32 %7153, 1
  br i1 %7165, label %7166, label %7182

; <label>:7166                                    ; preds = %7160
  br label %7167

; <label>:7167                                    ; preds = %7167, %7166
  %7168 = phi float [ %7177, %7167 ], [ %7164, %7166 ]
  %7169 = phi float [ %7178, %7167 ], [ %7161, %7166 ]
  %7170 = phi i32 [ %7179, %7167 ], [ 1, %7166 ]
  %7171 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7170
  %7172 = load float, float* %7171, align 4
  %7173 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7170
  %7174 = load float, float* %7173, align 4
  %7175 = fdiv fast float 1.000000e+00, %7174
  %7176 = fsub fast float %7172, %7175
  %7177 = call float @dx.op.binary.f32(i32 36, float %7168, float %7176)  ; FMin(a,b)
  %7178 = call float @dx.op.binary.f32(i32 35, float %7169, float %7172)  ; FMax(a,b)
  %7179 = add nuw i32 %7170, 1
  %7180 = icmp eq i32 %7179, %7153
  br i1 %7180, label %7181, label %7167

; <label>:7181                                    ; preds = %7167
  br label %7182

; <label>:7182                                    ; preds = %7181, %7160
  %7183 = phi float [ %7164, %7160 ], [ %7177, %7181 ]
  %7184 = phi float [ %7161, %7160 ], [ %7178, %7181 ]
  %7185 = fsub fast float %7184, %7183
  %7186 = fdiv fast float 1.000000e+00, %7185
  br label %7187

; <label>:7187                                    ; preds = %7182, %7157
  %7188 = phi float [ %7158, %7157 ], [ %7184, %7182 ]
  %7189 = phi float [ %7159, %7157 ], [ %7186, %7182 ]
  %7190 = fadd fast float %6891, %7188
  %7191 = fmul fast float %7190, %7189
  %7192 = call float @dx.op.unary.f32(i32 7, float %7191)  ; Saturate(value)
  %7193 = fmul fast float %7192, 2.000000e+00
  %7194 = fsub fast float 1.000000e+00, %7193
  %7195 = fmul fast float %7029, %7029
  %7196 = fsub fast float %7030, %7195
  %7197 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7196)  ; FMax(a,b)
  %7198 = fdiv fast float 1.000000e+00, %7197
  %7199 = fmul fast float %7030, %7029
  %7200 = fsub fast float %7031, %7199
  %7201 = fsub fast float %7194, %7029
  %7202 = fmul fast float %7194, %7194
  %7203 = fsub fast float %7202, %7030
  %7204 = fmul fast float %7198, %7200
  %7205 = fmul fast float %7204, %7201
  %7206 = fsub fast float %7203, %7205
  %7207 = fmul fast float %7030, %7030
  %7208 = fsub fast float %7032, %7207
  %7209 = fmul fast float %7200, %7200
  %7210 = fmul fast float %7209, %7198
  %7211 = fsub fast float %7208, %7210
  %7212 = fdiv fast float %7206, %7211
  %7213 = fmul fast float %7212, %7200
  %7214 = fsub fast float %7201, %7213
  %7215 = fmul fast float %7214, %7198
  %7216 = fmul fast float %7215, %7029
  %7217 = fsub fast float 1.000000e+00, %7216
  %7218 = fmul fast float %7212, %7030
  %7219 = fsub fast float %7217, %7218
  %7220 = fmul fast float %7215, %7215
  %7221 = fmul fast float %7212, 4.000000e+00
  %7222 = fmul fast float %7221, %7219
  %7223 = fsub fast float %7220, %7222
  %7224 = call float @dx.op.unary.f32(i32 24, float %7223)  ; Sqrt(value)
  %7225 = fcmp fast oge float %7215, 0.000000e+00
  %7226 = fsub fast float -0.000000e+00, %7224
  %7227 = select i1 %7225, float %7226, float %7224
  %7228 = fsub fast float %7227, %7215
  %7229 = fdiv fast float %7228, %7212
  %7230 = fdiv fast float %7219, %7228
  %7231 = fmul fast float %7229, 5.000000e-01
  %7232 = fmul fast float %7230, 2.000000e+00
  %7233 = select i1 %7225, float %7231, float %7232
  %7234 = select i1 %7225, float %7232, float %7231
  %7235 = call float @dx.op.binary.f32(i32 35, float %7233, float %7234)  ; FMax(a,b)
  %7236 = call float @dx.op.binary.f32(i32 36, float %7233, float %7234)  ; FMin(a,b)
  %7237 = fcmp fast ogt float %7194, %7235
  %7238 = fsub fast float %7194, %7236
  %7239 = fsub fast float %7194, %7235
  %7240 = fsub fast float %7235, %7236
  %7241 = select i1 %7237, float %7239, float %7240
  %7242 = fmul float %7238, %7241
  %7243 = select i1 %7237, float %7236, float %7194
  %7244 = fcmp fast ogt float %7194, %7236
  %7245 = fmul fast float %7243, %7235
  %7246 = fadd fast float %7243, %7235
  %7247 = fmul fast float %7246, %7029
  %7248 = fadd fast float %7245, %7030
  %7249 = fsub fast float %7248, %7247
  %7250 = fdiv fast float %7249, %7242
  %7251 = select i1 %7244, float %7250, float 0.000000e+00
  %7252 = fsub fast float 1.000000e+00, %7251
  %7253 = select i1 %7237, float %7252, float %7251
  %7254 = call float @dx.op.unary.f32(i32 7, float %7253)  ; Saturate(value)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7014, 3
  %7256 = fmul fast float %7255, %7254
  %7257 = fsub fast float 1.000000e+00, %7256
  br label %7258

; <label>:7258                                    ; preds = %7187, %6899, %6864, %6860, %6826
  %7259 = phi float [ 1.000000e+00, %6826 ], [ %7257, %7187 ], [ 1.000000e+00, %6864 ], [ 1.000000e+00, %6899 ], [ 1.000000e+00, %6860 ]
  %7260 = fcmp fast ogt float %6856, 0.000000e+00
  br i1 %7260, label %7261, label %7423, !dx.controlflow.hints !119

; <label>:7261                                    ; preds = %7258
  %7262 = fadd fast float %6769, %6743
  %7263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7263, 2
  %7265 = extractvalue %dx.types.CBufRet.f32 %7263, 3
  %7266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7267 = extractvalue %dx.types.CBufRet.f32 %7266, 2
  %7268 = call float @dx.op.binary.f32(i32 35, float %7262, float 0.000000e+00)  ; FMax(a,b)
  %7269 = fadd fast float %7268, 0x3F10000000000000
  %7270 = fcmp fast oeq float %7267, 0.000000e+00
  br i1 %7270, label %7271, label %7338

; <label>:7271                                    ; preds = %7261
  %7272 = extractvalue %dx.types.CBufRet.f32 %7263, 1
  %7273 = extractvalue %dx.types.CBufRet.f32 %7263, 0
  %7274 = fmul fast float %7273, %6758
  %7275 = fmul fast float %7272, %6759
  %7276 = fadd fast float %7274, 5.000000e-01
  %7277 = call float @dx.op.unary.f32(i32 27, float %7276)  ; Round_ni(value)
  %7278 = fadd fast float %7275, 5.000000e-01
  %7279 = call float @dx.op.unary.f32(i32 27, float %7278)  ; Round_ni(value)
  %7280 = fsub fast float %7276, %7277
  %7281 = fsub fast float %7278, %7279
  %7282 = fadd fast float %7277, -5.000000e-01
  %7283 = fadd fast float %7279, -5.000000e-01
  %7284 = fmul fast float %7280, 2.000000e+00
  %7285 = fsub fast float 3.000000e+00, %7284
  %7286 = fadd fast float %7284, 1.000000e+00
  %7287 = fsub fast float 2.000000e+00, %7280
  %7288 = bitcast float %7285 to i32
  %7289 = sub nsw i32 2129859010, %7288
  %7290 = bitcast i32 %7289 to float
  %7291 = fmul fast float %7290, %7287
  %7292 = fadd fast float %7291, -1.000000e+00
  %7293 = bitcast float %7286 to i32
  %7294 = sub nsw i32 2129859010, %7293
  %7295 = bitcast i32 %7294 to float
  %7296 = fmul fast float %7295, %7280
  %7297 = fadd fast float %7296, 1.000000e+00
  %7298 = fmul fast float %7281, 2.000000e+00
  %7299 = fsub fast float 3.000000e+00, %7298
  %7300 = fadd fast float %7298, 1.000000e+00
  %7301 = fsub fast float 2.000000e+00, %7281
  %7302 = bitcast float %7299 to i32
  %7303 = sub nsw i32 2129859010, %7302
  %7304 = bitcast i32 %7303 to float
  %7305 = fmul fast float %7304, %7301
  %7306 = fadd fast float %7305, -1.000000e+00
  %7307 = bitcast float %7300 to i32
  %7308 = sub nsw i32 2129859010, %7307
  %7309 = bitcast i32 %7308 to float
  %7310 = fmul fast float %7309, %7281
  %7311 = fadd fast float %7310, 1.000000e+00
  %7312 = fadd fast float %7292, %7282
  %7313 = fmul fast float %7312, %7264
  %7314 = fadd fast float %7306, %7283
  %7315 = fmul fast float %7314, %7265
  %7316 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7313, float %7315, float undef, float undef, i32 0, i32 0, i32 undef, float %7269)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7317 = extractvalue %dx.types.ResRet.f32 %7316, 0
  %7318 = fmul fast float %7317, %7285
  %7319 = fadd fast float %7297, %7282
  %7320 = fmul fast float %7319, %7264
  %7321 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7320, float %7315, float undef, float undef, i32 0, i32 0, i32 undef, float %7269)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7322 = extractvalue %dx.types.ResRet.f32 %7321, 0
  %7323 = fmul fast float %7322, %7286
  %7324 = fadd fast float %7311, %7283
  %7325 = fmul fast float %7324, %7265
  %7326 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7313, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float %7269)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7327 = extractvalue %dx.types.ResRet.f32 %7326, 0
  %7328 = fmul fast float %7327, %7285
  %7329 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7320, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float %7269)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7330 = extractvalue %dx.types.ResRet.f32 %7329, 0
  %7331 = fmul fast float %7330, %7286
  %7332 = fadd fast float %7331, %7328
  %7333 = fmul fast float %7332, %7300
  %7334 = fadd fast float %7323, %7318
  %7335 = fmul fast float %7334, %7299
  %7336 = fadd fast float %7335, %7333
  %7337 = fmul fast float %7336, 6.250000e-02
  br label %7423

; <label>:7338                                    ; preds = %7261
  %7339 = fmul fast float %269, 0x401921FB60000000
  %7340 = call float @dx.op.unary.f32(i32 13, float %7339)  ; Sin(value)
  %7341 = call float @dx.op.unary.f32(i32 12, float %7339)  ; Cos(value)
  %7342 = fsub fast float -0.000000e+00, %7340
  br label %7343

; <label>:7343                                    ; preds = %7392, %7338
  %7344 = phi float [ 0.000000e+00, %7338 ], [ %7387, %7392 ]
  %7345 = phi float [ 0.000000e+00, %7338 ], [ %7389, %7392 ]
  %7346 = phi i32 [ 0, %7338 ], [ %7393, %7392 ]
  %7347 = mul i32 %7346, 2
  %7348 = add i32 0, %7347
  %7349 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7348
  %7350 = load float, float* %7349, align 4
  %7351 = mul i32 %7346, 2
  %7352 = add i32 1, %7351
  %7353 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7352
  %7354 = load float, float* %7353, align 4
  %7355 = fmul fast float %7350, %7341
  %7356 = call float @dx.op.tertiary.f32(i32 46, float %7354, float %7342, float %7355)  ; FMad(a,b,c)
  %7357 = fmul fast float %7350, %7340
  %7358 = call float @dx.op.tertiary.f32(i32 46, float %7354, float %7341, float %7357)  ; FMad(a,b,c)
  %7359 = fmul fast float %7356, %7267
  %7360 = fmul fast float %7358, %7267
  %7361 = fadd fast float %7359, %6758
  %7362 = fadd fast float %7360, %6759
  %7363 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7361, float %7362, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7364 = extractvalue %dx.types.ResRet.f32 %7363, 0
  %7365 = extractvalue %dx.types.ResRet.f32 %7363, 1
  %7366 = extractvalue %dx.types.ResRet.f32 %7363, 2
  %7367 = extractvalue %dx.types.ResRet.f32 %7363, 3
  %7368 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7364, float* %7368, align 4
  %7369 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7365, float* %7369, align 4
  %7370 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7366, float* %7370, align 4
  %7371 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7367, float* %7371, align 4
  %7372 = fsub fast float %7364, %7269
  %7373 = fcmp fast olt float %7372, 0.000000e+00
  %7374 = select i1 %7373, float 0.000000e+00, float 1.000000e+00
  %7375 = fadd fast float %7374, %7344
  %7376 = fmul fast float %7374, %7372
  %7377 = fadd fast float %7376, %7345
  br label %7378

; <label>:7378                                    ; preds = %7378, %7343
  %7379 = phi i32 [ 1, %7343 ], [ %7390, %7378 ]
  %7380 = phi float [ %7377, %7343 ], [ %7389, %7378 ]
  %7381 = phi float [ %7375, %7343 ], [ %7387, %7378 ]
  %7382 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7379
  %7383 = load float, float* %7382, align 4, !tbaa !120, !noalias !110
  %7384 = fsub fast float %7383, %7269
  %7385 = fcmp fast olt float %7384, 0.000000e+00
  %7386 = select i1 %7385, float 0.000000e+00, float 1.000000e+00
  %7387 = fadd fast float %7386, %7381
  %7388 = fmul fast float %7386, %7384
  %7389 = fadd fast float %7388, %7380
  %7390 = add nuw nsw i32 %7379, 1
  %7391 = icmp eq i32 %7390, 4
  br i1 %7391, label %7392, label %7378, !llvm.loop !122

; <label>:7392                                    ; preds = %7378
  %7393 = add nuw nsw i32 %7346, 1
  %7394 = icmp eq i32 %7393, 8
  br i1 %7394, label %7395, label %7343, !llvm.loop !123

; <label>:7395                                    ; preds = %7392
  %7396 = fdiv fast float 1.000000e+00, %7387
  %7397 = fmul fast float %7396, %7389
  %7398 = fdiv fast float 1.000000e+00, %7269
  %7399 = fmul fast float %7397, %7398
  %7400 = call float @dx.op.unary.f32(i32 7, float %7399)  ; Saturate(value)
  %7401 = call float @dx.op.binary.f32(i32 35, float %7400, float 0.000000e+00)  ; FMax(a,b)
  %7402 = fmul fast float %7387, 3.125000e-02
  %7403 = call float @dx.op.unary.f32(i32 7, float %7402)  ; Saturate(value)
  %7404 = fmul fast float %7403, 2.000000e+00
  %7405 = fadd fast float %7404, -1.000000e+00
  %7406 = fcmp fast ogt float %7405, 0.000000e+00
  %7407 = fcmp fast olt float %7405, 0.000000e+00
  %7408 = zext i1 %7406 to i32
  %7409 = zext i1 %7407 to i32
  %7410 = sub nsw i32 %7408, %7409
  %7411 = sitofp i32 %7410 to float
  %7412 = fmul fast float %7411, %7405
  %7413 = fsub fast float 1.000000e+00, %7412
  %7414 = fmul fast float %7413, %7413
  %7415 = fmul fast float %7414, %7413
  %7416 = fsub fast float %7413, %7415
  %7417 = fmul fast float %7416, %7401
  %7418 = fsub fast float 1.000000e+00, %7415
  %7419 = fsub fast float %7418, %7417
  %7420 = fmul fast float %7411, 5.000000e-01
  %7421 = fmul fast float %7420, %7419
  %7422 = fsub fast float 5.000000e-01, %7421
  br label %7423

; <label>:7423                                    ; preds = %7395, %7271, %7258
  %7424 = phi float [ 1.000000e+00, %7258 ], [ %7337, %7271 ], [ %7422, %7395 ]
  %7425 = fcmp fast ogt float %6854, 0.000000e+00
  br i1 %7425, label %7426, label %7590, !dx.controlflow.hints !124

; <label>:7426                                    ; preds = %7423
  %7427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7428 = extractvalue %dx.types.CBufRet.f32 %7427, 1
  %7429 = fadd fast float %7428, %6743
  %7430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7431 = extractvalue %dx.types.CBufRet.f32 %7430, 2
  %7432 = extractvalue %dx.types.CBufRet.f32 %7430, 3
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7435 = call float @dx.op.binary.f32(i32 35, float %7429, float 0.000000e+00)  ; FMax(a,b)
  %7436 = fadd fast float %7435, 0x3F10000000000000
  %7437 = fcmp fast oeq float %7434, 0.000000e+00
  br i1 %7437, label %7438, label %7505

; <label>:7438                                    ; preds = %7426
  %7439 = extractvalue %dx.types.CBufRet.f32 %7430, 1
  %7440 = extractvalue %dx.types.CBufRet.f32 %7430, 0
  %7441 = fmul fast float %7440, %6750
  %7442 = fmul fast float %7439, %6751
  %7443 = fadd fast float %7441, 5.000000e-01
  %7444 = call float @dx.op.unary.f32(i32 27, float %7443)  ; Round_ni(value)
  %7445 = fadd fast float %7442, 5.000000e-01
  %7446 = call float @dx.op.unary.f32(i32 27, float %7445)  ; Round_ni(value)
  %7447 = fsub fast float %7443, %7444
  %7448 = fsub fast float %7445, %7446
  %7449 = fadd fast float %7444, -5.000000e-01
  %7450 = fadd fast float %7446, -5.000000e-01
  %7451 = fmul fast float %7447, 2.000000e+00
  %7452 = fsub fast float 3.000000e+00, %7451
  %7453 = fadd fast float %7451, 1.000000e+00
  %7454 = fsub fast float 2.000000e+00, %7447
  %7455 = bitcast float %7452 to i32
  %7456 = sub nsw i32 2129859010, %7455
  %7457 = bitcast i32 %7456 to float
  %7458 = fmul fast float %7457, %7454
  %7459 = fadd fast float %7458, -1.000000e+00
  %7460 = bitcast float %7453 to i32
  %7461 = sub nsw i32 2129859010, %7460
  %7462 = bitcast i32 %7461 to float
  %7463 = fmul fast float %7462, %7447
  %7464 = fadd fast float %7463, 1.000000e+00
  %7465 = fmul fast float %7448, 2.000000e+00
  %7466 = fsub fast float 3.000000e+00, %7465
  %7467 = fadd fast float %7465, 1.000000e+00
  %7468 = fsub fast float 2.000000e+00, %7448
  %7469 = bitcast float %7466 to i32
  %7470 = sub nsw i32 2129859010, %7469
  %7471 = bitcast i32 %7470 to float
  %7472 = fmul fast float %7471, %7468
  %7473 = fadd fast float %7472, -1.000000e+00
  %7474 = bitcast float %7467 to i32
  %7475 = sub nsw i32 2129859010, %7474
  %7476 = bitcast i32 %7475 to float
  %7477 = fmul fast float %7476, %7448
  %7478 = fadd fast float %7477, 1.000000e+00
  %7479 = fadd fast float %7459, %7449
  %7480 = fmul fast float %7479, %7431
  %7481 = fadd fast float %7473, %7450
  %7482 = fmul fast float %7481, %7432
  %7483 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7480, float %7482, float undef, float undef, i32 0, i32 0, i32 undef, float %7436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7484 = extractvalue %dx.types.ResRet.f32 %7483, 0
  %7485 = fmul fast float %7484, %7452
  %7486 = fadd fast float %7464, %7449
  %7487 = fmul fast float %7486, %7431
  %7488 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7487, float %7482, float undef, float undef, i32 0, i32 0, i32 undef, float %7436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7489 = extractvalue %dx.types.ResRet.f32 %7488, 0
  %7490 = fmul fast float %7489, %7453
  %7491 = fadd fast float %7478, %7450
  %7492 = fmul fast float %7491, %7432
  %7493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7480, float %7492, float undef, float undef, i32 0, i32 0, i32 undef, float %7436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = fmul fast float %7494, %7452
  %7496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7487, float %7492, float undef, float undef, i32 0, i32 0, i32 undef, float %7436)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = fmul fast float %7497, %7453
  %7499 = fadd fast float %7498, %7495
  %7500 = fmul fast float %7499, %7467
  %7501 = fadd fast float %7490, %7485
  %7502 = fmul fast float %7501, %7466
  %7503 = fadd fast float %7502, %7500
  %7504 = fmul fast float %7503, 6.250000e-02
  br label %7590

; <label>:7505                                    ; preds = %7426
  %7506 = fmul fast float %269, 0x401921FB60000000
  %7507 = call float @dx.op.unary.f32(i32 13, float %7506)  ; Sin(value)
  %7508 = call float @dx.op.unary.f32(i32 12, float %7506)  ; Cos(value)
  %7509 = fsub fast float -0.000000e+00, %7507
  br label %7510

; <label>:7510                                    ; preds = %7559, %7505
  %7511 = phi float [ 0.000000e+00, %7505 ], [ %7554, %7559 ]
  %7512 = phi float [ 0.000000e+00, %7505 ], [ %7556, %7559 ]
  %7513 = phi i32 [ 0, %7505 ], [ %7560, %7559 ]
  %7514 = mul i32 %7513, 2
  %7515 = add i32 0, %7514
  %7516 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7515
  %7517 = load float, float* %7516, align 4
  %7518 = mul i32 %7513, 2
  %7519 = add i32 1, %7518
  %7520 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7519
  %7521 = load float, float* %7520, align 4
  %7522 = fmul fast float %7517, %7508
  %7523 = call float @dx.op.tertiary.f32(i32 46, float %7521, float %7509, float %7522)  ; FMad(a,b,c)
  %7524 = fmul fast float %7517, %7507
  %7525 = call float @dx.op.tertiary.f32(i32 46, float %7521, float %7508, float %7524)  ; FMad(a,b,c)
  %7526 = fmul fast float %7523, %7434
  %7527 = fmul fast float %7525, %7434
  %7528 = fadd fast float %7526, %6750
  %7529 = fadd fast float %7527, %6751
  %7530 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7528, float %7529, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7531 = extractvalue %dx.types.ResRet.f32 %7530, 0
  %7532 = extractvalue %dx.types.ResRet.f32 %7530, 1
  %7533 = extractvalue %dx.types.ResRet.f32 %7530, 2
  %7534 = extractvalue %dx.types.ResRet.f32 %7530, 3
  %7535 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7531, float* %7535, align 4
  %7536 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7532, float* %7536, align 4
  %7537 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7533, float* %7537, align 4
  %7538 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7534, float* %7538, align 4
  %7539 = fsub fast float %7531, %7436
  %7540 = fcmp fast olt float %7539, 0.000000e+00
  %7541 = select i1 %7540, float 0.000000e+00, float 1.000000e+00
  %7542 = fadd fast float %7541, %7511
  %7543 = fmul fast float %7541, %7539
  %7544 = fadd fast float %7543, %7512
  br label %7545

; <label>:7545                                    ; preds = %7545, %7510
  %7546 = phi i32 [ 1, %7510 ], [ %7557, %7545 ]
  %7547 = phi float [ %7544, %7510 ], [ %7556, %7545 ]
  %7548 = phi float [ %7542, %7510 ], [ %7554, %7545 ]
  %7549 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7546
  %7550 = load float, float* %7549, align 4, !tbaa !120, !noalias !110
  %7551 = fsub fast float %7550, %7436
  %7552 = fcmp fast olt float %7551, 0.000000e+00
  %7553 = select i1 %7552, float 0.000000e+00, float 1.000000e+00
  %7554 = fadd fast float %7553, %7548
  %7555 = fmul fast float %7553, %7551
  %7556 = fadd fast float %7555, %7547
  %7557 = add nuw nsw i32 %7546, 1
  %7558 = icmp eq i32 %7557, 4
  br i1 %7558, label %7559, label %7545, !llvm.loop !122

; <label>:7559                                    ; preds = %7545
  %7560 = add nuw nsw i32 %7513, 1
  %7561 = icmp eq i32 %7560, 8
  br i1 %7561, label %7562, label %7510, !llvm.loop !123

; <label>:7562                                    ; preds = %7559
  %7563 = fdiv fast float 1.000000e+00, %7554
  %7564 = fmul fast float %7563, %7556
  %7565 = fdiv fast float 1.000000e+00, %7436
  %7566 = fmul fast float %7564, %7565
  %7567 = call float @dx.op.unary.f32(i32 7, float %7566)  ; Saturate(value)
  %7568 = call float @dx.op.binary.f32(i32 35, float %7567, float 0.000000e+00)  ; FMax(a,b)
  %7569 = fmul fast float %7554, 3.125000e-02
  %7570 = call float @dx.op.unary.f32(i32 7, float %7569)  ; Saturate(value)
  %7571 = fmul fast float %7570, 2.000000e+00
  %7572 = fadd fast float %7571, -1.000000e+00
  %7573 = fcmp fast ogt float %7572, 0.000000e+00
  %7574 = fcmp fast olt float %7572, 0.000000e+00
  %7575 = zext i1 %7573 to i32
  %7576 = zext i1 %7574 to i32
  %7577 = sub nsw i32 %7575, %7576
  %7578 = sitofp i32 %7577 to float
  %7579 = fmul fast float %7578, %7572
  %7580 = fsub fast float 1.000000e+00, %7579
  %7581 = fmul fast float %7580, %7580
  %7582 = fmul fast float %7581, %7580
  %7583 = fsub fast float %7580, %7582
  %7584 = fmul fast float %7583, %7568
  %7585 = fsub fast float 1.000000e+00, %7582
  %7586 = fsub fast float %7585, %7584
  %7587 = fmul fast float %7578, 5.000000e-01
  %7588 = fmul fast float %7587, %7586
  %7589 = fsub fast float 5.000000e-01, %7588
  br label %7590

; <label>:7590                                    ; preds = %7562, %7438, %7423
  %7591 = phi float [ 1.000000e+00, %7423 ], [ %7504, %7438 ], [ %7589, %7562 ]
  %7592 = fcmp fast ogt float %6853, 0.000000e+00
  br i1 %7592, label %7593, label %7757, !dx.controlflow.hints !125

; <label>:7593                                    ; preds = %7590
  %7594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.f32 %7594, 0
  %7596 = fadd fast float %7595, %6743
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 2
  %7599 = extractvalue %dx.types.CBufRet.f32 %7597, 3
  %7600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7601 = extractvalue %dx.types.CBufRet.f32 %7600, 0
  %7602 = call float @dx.op.binary.f32(i32 35, float %7596, float 0.000000e+00)  ; FMax(a,b)
  %7603 = fadd fast float %7602, 0x3F10000000000000
  %7604 = fcmp fast oeq float %7601, 0.000000e+00
  br i1 %7604, label %7605, label %7672

; <label>:7605                                    ; preds = %7593
  %7606 = extractvalue %dx.types.CBufRet.f32 %7597, 1
  %7607 = extractvalue %dx.types.CBufRet.f32 %7597, 0
  %7608 = fmul fast float %7607, %6735
  %7609 = fmul fast float %7606, %6739
  %7610 = fadd fast float %7608, 5.000000e-01
  %7611 = call float @dx.op.unary.f32(i32 27, float %7610)  ; Round_ni(value)
  %7612 = fadd fast float %7609, 5.000000e-01
  %7613 = call float @dx.op.unary.f32(i32 27, float %7612)  ; Round_ni(value)
  %7614 = fsub fast float %7610, %7611
  %7615 = fsub fast float %7612, %7613
  %7616 = fadd fast float %7611, -5.000000e-01
  %7617 = fadd fast float %7613, -5.000000e-01
  %7618 = fmul fast float %7614, 2.000000e+00
  %7619 = fsub fast float 3.000000e+00, %7618
  %7620 = fadd fast float %7618, 1.000000e+00
  %7621 = fsub fast float 2.000000e+00, %7614
  %7622 = bitcast float %7619 to i32
  %7623 = sub nsw i32 2129859010, %7622
  %7624 = bitcast i32 %7623 to float
  %7625 = fmul fast float %7624, %7621
  %7626 = fadd fast float %7625, -1.000000e+00
  %7627 = bitcast float %7620 to i32
  %7628 = sub nsw i32 2129859010, %7627
  %7629 = bitcast i32 %7628 to float
  %7630 = fmul fast float %7629, %7614
  %7631 = fadd fast float %7630, 1.000000e+00
  %7632 = fmul fast float %7615, 2.000000e+00
  %7633 = fsub fast float 3.000000e+00, %7632
  %7634 = fadd fast float %7632, 1.000000e+00
  %7635 = fsub fast float 2.000000e+00, %7615
  %7636 = bitcast float %7633 to i32
  %7637 = sub nsw i32 2129859010, %7636
  %7638 = bitcast i32 %7637 to float
  %7639 = fmul fast float %7638, %7635
  %7640 = fadd fast float %7639, -1.000000e+00
  %7641 = bitcast float %7634 to i32
  %7642 = sub nsw i32 2129859010, %7641
  %7643 = bitcast i32 %7642 to float
  %7644 = fmul fast float %7643, %7615
  %7645 = fadd fast float %7644, 1.000000e+00
  %7646 = fadd fast float %7626, %7616
  %7647 = fmul fast float %7646, %7598
  %7648 = fadd fast float %7640, %7617
  %7649 = fmul fast float %7648, %7599
  %7650 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7647, float %7649, float undef, float undef, i32 0, i32 0, i32 undef, float %7603)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7651 = extractvalue %dx.types.ResRet.f32 %7650, 0
  %7652 = fmul fast float %7651, %7619
  %7653 = fadd fast float %7631, %7616
  %7654 = fmul fast float %7653, %7598
  %7655 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7654, float %7649, float undef, float undef, i32 0, i32 0, i32 undef, float %7603)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7656 = extractvalue %dx.types.ResRet.f32 %7655, 0
  %7657 = fmul fast float %7656, %7620
  %7658 = fadd fast float %7645, %7617
  %7659 = fmul fast float %7658, %7599
  %7660 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7647, float %7659, float undef, float undef, i32 0, i32 0, i32 undef, float %7603)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7661 = extractvalue %dx.types.ResRet.f32 %7660, 0
  %7662 = fmul fast float %7661, %7619
  %7663 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7654, float %7659, float undef, float undef, i32 0, i32 0, i32 undef, float %7603)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7664 = extractvalue %dx.types.ResRet.f32 %7663, 0
  %7665 = fmul fast float %7664, %7620
  %7666 = fadd fast float %7665, %7662
  %7667 = fmul fast float %7666, %7634
  %7668 = fadd fast float %7657, %7652
  %7669 = fmul fast float %7668, %7633
  %7670 = fadd fast float %7669, %7667
  %7671 = fmul fast float %7670, 6.250000e-02
  br label %7757

; <label>:7672                                    ; preds = %7593
  %7673 = fmul fast float %269, 0x401921FB60000000
  %7674 = call float @dx.op.unary.f32(i32 13, float %7673)  ; Sin(value)
  %7675 = call float @dx.op.unary.f32(i32 12, float %7673)  ; Cos(value)
  %7676 = fsub fast float -0.000000e+00, %7674
  br label %7677

; <label>:7677                                    ; preds = %7726, %7672
  %7678 = phi float [ 0.000000e+00, %7672 ], [ %7721, %7726 ]
  %7679 = phi float [ 0.000000e+00, %7672 ], [ %7723, %7726 ]
  %7680 = phi i32 [ 0, %7672 ], [ %7727, %7726 ]
  %7681 = mul i32 %7680, 2
  %7682 = add i32 0, %7681
  %7683 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7682
  %7684 = load float, float* %7683, align 4
  %7685 = mul i32 %7680, 2
  %7686 = add i32 1, %7685
  %7687 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7686
  %7688 = load float, float* %7687, align 4
  %7689 = fmul fast float %7684, %7675
  %7690 = call float @dx.op.tertiary.f32(i32 46, float %7688, float %7676, float %7689)  ; FMad(a,b,c)
  %7691 = fmul fast float %7684, %7674
  %7692 = call float @dx.op.tertiary.f32(i32 46, float %7688, float %7675, float %7691)  ; FMad(a,b,c)
  %7693 = fmul fast float %7690, %7601
  %7694 = fmul fast float %7692, %7601
  %7695 = fadd fast float %7693, %6735
  %7696 = fadd fast float %7694, %6739
  %7697 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7695, float %7696, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7698 = extractvalue %dx.types.ResRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.ResRet.f32 %7697, 1
  %7700 = extractvalue %dx.types.ResRet.f32 %7697, 2
  %7701 = extractvalue %dx.types.ResRet.f32 %7697, 3
  %7702 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7698, float* %7702, align 4
  %7703 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7699, float* %7703, align 4
  %7704 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7700, float* %7704, align 4
  %7705 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7701, float* %7705, align 4
  %7706 = fsub fast float %7698, %7603
  %7707 = fcmp fast olt float %7706, 0.000000e+00
  %7708 = select i1 %7707, float 0.000000e+00, float 1.000000e+00
  %7709 = fadd fast float %7708, %7678
  %7710 = fmul fast float %7708, %7706
  %7711 = fadd fast float %7710, %7679
  br label %7712

; <label>:7712                                    ; preds = %7712, %7677
  %7713 = phi i32 [ 1, %7677 ], [ %7724, %7712 ]
  %7714 = phi float [ %7711, %7677 ], [ %7723, %7712 ]
  %7715 = phi float [ %7709, %7677 ], [ %7721, %7712 ]
  %7716 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7713
  %7717 = load float, float* %7716, align 4, !tbaa !120, !noalias !110
  %7718 = fsub fast float %7717, %7603
  %7719 = fcmp fast olt float %7718, 0.000000e+00
  %7720 = select i1 %7719, float 0.000000e+00, float 1.000000e+00
  %7721 = fadd fast float %7720, %7715
  %7722 = fmul fast float %7720, %7718
  %7723 = fadd fast float %7722, %7714
  %7724 = add nuw nsw i32 %7713, 1
  %7725 = icmp eq i32 %7724, 4
  br i1 %7725, label %7726, label %7712, !llvm.loop !122

; <label>:7726                                    ; preds = %7712
  %7727 = add nuw nsw i32 %7680, 1
  %7728 = icmp eq i32 %7727, 8
  br i1 %7728, label %7729, label %7677, !llvm.loop !123

; <label>:7729                                    ; preds = %7726
  %7730 = fdiv fast float 1.000000e+00, %7721
  %7731 = fmul fast float %7730, %7723
  %7732 = fdiv fast float 1.000000e+00, %7603
  %7733 = fmul fast float %7731, %7732
  %7734 = call float @dx.op.unary.f32(i32 7, float %7733)  ; Saturate(value)
  %7735 = call float @dx.op.binary.f32(i32 35, float %7734, float 0.000000e+00)  ; FMax(a,b)
  %7736 = fmul fast float %7721, 3.125000e-02
  %7737 = call float @dx.op.unary.f32(i32 7, float %7736)  ; Saturate(value)
  %7738 = fmul fast float %7737, 2.000000e+00
  %7739 = fadd fast float %7738, -1.000000e+00
  %7740 = fcmp fast ogt float %7739, 0.000000e+00
  %7741 = fcmp fast olt float %7739, 0.000000e+00
  %7742 = zext i1 %7740 to i32
  %7743 = zext i1 %7741 to i32
  %7744 = sub nsw i32 %7742, %7743
  %7745 = sitofp i32 %7744 to float
  %7746 = fmul fast float %7745, %7739
  %7747 = fsub fast float 1.000000e+00, %7746
  %7748 = fmul fast float %7747, %7747
  %7749 = fmul fast float %7748, %7747
  %7750 = fsub fast float %7747, %7749
  %7751 = fmul fast float %7750, %7735
  %7752 = fsub fast float 1.000000e+00, %7749
  %7753 = fsub fast float %7752, %7751
  %7754 = fmul fast float %7745, 5.000000e-01
  %7755 = fmul fast float %7754, %7753
  %7756 = fsub fast float 5.000000e-01, %7755
  br label %7757

; <label>:7757                                    ; preds = %7729, %7605, %7590
  %7758 = phi float [ 1.000000e+00, %7590 ], [ %7671, %7605 ], [ %7756, %7729 ]
  %7759 = fsub fast float %7424, %7259
  %7760 = fmul fast float %7759, %6797
  %7761 = fadd fast float %7760, %7259
  %7762 = fsub fast float %7591, %7761
  %7763 = fmul fast float %7762, %6827
  %7764 = fadd fast float %7763, %7761
  %7765 = fsub fast float %7758, %7764
  %7766 = fmul fast float %7765, %6853
  %7767 = fadd fast float %7766, %7764
  %7768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7769 = extractvalue %dx.types.CBufRet.f32 %7768, 2
  %7770 = fcmp fast ogt float %7769, 0.000000e+00
  br i1 %7770, label %7771, label %7811, !dx.controlflow.hints !126

; <label>:7771                                    ; preds = %7757
  %7772 = fcmp fast ugt float %7769, 0.000000e+00
  br i1 %7772, label %7773, label %7808

; <label>:7773                                    ; preds = %7771
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7776 = extractvalue %dx.types.CBufRet.f32 %7774, 1
  %7777 = extractvalue %dx.types.CBufRet.f32 %7774, 2
  %7778 = extractvalue %dx.types.CBufRet.f32 %7774, 3
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.CBufRet.f32 %7779, 2
  %7783 = extractvalue %dx.types.CBufRet.f32 %7779, 3
  %7784 = extractvalue %dx.types.CBufRet.f32 %7768, 0
  %7785 = extractvalue %dx.types.CBufRet.f32 %7768, 1
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 0
  %7788 = extractvalue %dx.types.CBufRet.f32 %7786, 1
  %7789 = extractvalue %dx.types.CBufRet.f32 %7786, 2
  %7790 = fadd fast float %7787, %6712
  %7791 = fadd fast float %7788, %6713
  %7792 = fadd fast float %7789, %6714
  %7793 = fmul fast float %7790, %7775
  %7794 = call float @dx.op.tertiary.f32(i32 46, float %7776, float %7791, float %7793)  ; FMad(a,b,c)
  %7795 = call float @dx.op.tertiary.f32(i32 46, float %7777, float %7792, float %7794)  ; FMad(a,b,c)
  %7796 = fadd fast float %7795, %7778
  %7797 = fmul fast float %7790, %7780
  %7798 = call float @dx.op.tertiary.f32(i32 46, float %7781, float %7791, float %7797)  ; FMad(a,b,c)
  %7799 = call float @dx.op.tertiary.f32(i32 46, float %7782, float %7792, float %7798)  ; FMad(a,b,c)
  %7800 = fadd fast float %7799, %7783
  %7801 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7796, float %7800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7802 = extractvalue %dx.types.ResRet.f32 %7801, 0
  %7803 = fmul fast float %7802, %7785
  %7804 = fadd fast float %7803, %7784
  %7805 = call float @dx.op.unary.f32(i32 7, float %7804)  ; Saturate(value)
  %7806 = fmul fast float %7805, %7769
  %7807 = fsub fast float 1.000000e+00, %7806
  br label %7808

; <label>:7808                                    ; preds = %7773, %7771
  %7809 = phi float [ %7807, %7773 ], [ 1.000000e+00, %7771 ]
  %7810 = fmul fast float %7809, %7767
  br label %7811

; <label>:7811                                    ; preds = %7808, %7757, %6692
  %7812 = phi float [ 1.000000e+00, %6692 ], [ %7810, %7808 ], [ %7767, %7757 ]
  %7813 = call float @dx.op.binary.f32(i32 36, float %7812, float %7812)  ; FMin(a,b)
  %7814 = call float @dx.op.binary.f32(i32 36, float %7812, float %7813)  ; FMin(a,b)
  %7815 = fcmp fast ogt float %7814, 0.000000e+00
  br i1 %7815, label %7816, label %7981, !dx.controlflow.hints !127

; <label>:7816                                    ; preds = %7811
  %7817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7818 = extractvalue %dx.types.CBufRet.f32 %7817, 0
  %7819 = extractvalue %dx.types.CBufRet.f32 %7817, 1
  %7820 = extractvalue %dx.types.CBufRet.f32 %7817, 2
  %7821 = extractvalue %dx.types.CBufRet.f32 %7817, 3
  %7822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7823 = extractvalue %dx.types.CBufRet.f32 %7822, 0
  %7824 = extractvalue %dx.types.CBufRet.f32 %7822, 1
  %7825 = extractvalue %dx.types.CBufRet.f32 %7822, 2
  %7826 = extractvalue %dx.types.CBufRet.f32 %7822, 3
  %7827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7828 = extractvalue %dx.types.CBufRet.f32 %7827, 0
  %7829 = extractvalue %dx.types.CBufRet.f32 %7827, 1
  %7830 = extractvalue %dx.types.CBufRet.f32 %7827, 2
  %7831 = extractvalue %dx.types.CBufRet.f32 %7827, 3
  %7832 = fmul fast float %7818, %6712
  %7833 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %7819, float %7832)  ; FMad(a,b,c)
  %7834 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %7820, float %7833)  ; FMad(a,b,c)
  %7835 = fadd fast float %7834, %7821
  %7836 = fmul fast float %7823, %6712
  %7837 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %7824, float %7836)  ; FMad(a,b,c)
  %7838 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %7825, float %7837)  ; FMad(a,b,c)
  %7839 = fadd fast float %7838, %7826
  %7840 = fmul fast float %7828, %6712
  %7841 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %7829, float %7840)  ; FMad(a,b,c)
  %7842 = call float @dx.op.tertiary.f32(i32 46, float %6714, float %7830, float %7841)  ; FMad(a,b,c)
  %7843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7844 = extractvalue %dx.types.CBufRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.CBufRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.CBufRet.f32 %7843, 3
  %7847 = fmul fast float %7846, %7835
  %7848 = fmul fast float %7846, %7839
  %7849 = fadd fast float %7847, %7844
  %7850 = fadd fast float %7848, %7845
  %7851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7852 = extractvalue %dx.types.CBufRet.f32 %7851, 0
  %7853 = extractvalue %dx.types.CBufRet.f32 %7851, 1
  %7854 = fsub fast float %7849, %7852
  %7855 = fsub fast float %7850, %7853
  %7856 = fcmp fast olt float %7854, 0.000000e+00
  %7857 = fcmp fast olt float %7855, 0.000000e+00
  %7858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.f32 %7858, 0
  %7860 = extractvalue %dx.types.CBufRet.f32 %7858, 1
  %7861 = extractvalue %dx.types.CBufRet.f32 %7858, 2
  %7862 = extractvalue %dx.types.CBufRet.f32 %7858, 3
  %7863 = select i1 %7856, float %7859, float %7861
  %7864 = select i1 %7857, float %7860, float %7862
  %7865 = fmul fast float %7863, %7854
  %7866 = fmul fast float %7864, %7855
  %7867 = call float @dx.op.unary.f32(i32 6, float %7865)  ; FAbs(value)
  %7868 = call float @dx.op.unary.f32(i32 6, float %7866)  ; FAbs(value)
  %7869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7870 = extractvalue %dx.types.CBufRet.f32 %7869, 0
  %7871 = call float @dx.op.binary.f32(i32 35, float %7867, float %7868)  ; FMax(a,b)
  %7872 = fsub fast float %7870, %7871
  %7873 = call float @dx.op.unary.f32(i32 7, float %7872)  ; Saturate(value)
  %7874 = fcmp fast ogt float %7873, 0.000000e+00
  br i1 %7874, label %7875, label %7916, !dx.controlflow.hints !128

; <label>:7875                                    ; preds = %7816
  %7876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7849, float %7850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 1
  %7878 = fcmp fast ogt float %7877, 0.000000e+00
  br i1 %7878, label %7879, label %7911

; <label>:7879                                    ; preds = %7875
  %7880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7849, float %7850, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7881 = extractvalue %dx.types.ResRet.f32 %7880, 0
  %7882 = extractvalue %dx.types.ResRet.f32 %7880, 1
  %7883 = extractvalue %dx.types.ResRet.f32 %7880, 2
  %7884 = extractvalue %dx.types.ResRet.f32 %7880, 3
  %7885 = fsub fast float 1.000000e+00, %7831
  %7886 = fsub fast float %7885, %7842
  %7887 = fmul fast float %7886, 0x400921FB60000000
  %7888 = fadd fast float %7887, 0x3FF921FB60000000
  %7889 = call float @dx.op.unary.f32(i32 13, float %7888)  ; Sin(value)
  %7890 = fadd fast float %7889, -1.000000e+00
  %7891 = fmul fast float %7890, 0x3FD45F3060000000
  %7892 = fmul fast float %7886, 0x401921FB60000000
  %7893 = fadd fast float %7892, 0x400921FB60000000
  %7894 = call float @dx.op.unary.f32(i32 13, float %7893)  ; Sin(value)
  %7895 = fadd fast float %7894, 0x3E7777A5C0000000
  %7896 = fmul fast float %7895, 0x3FC45F3060000000
  %7897 = fmul fast float %7886, 0x4022D97C80000000
  %7898 = fadd fast float %7897, 0x4012D97C80000000
  %7899 = call float @dx.op.unary.f32(i32 13, float %7898)  ; Sin(value)
  %7900 = fadd fast float %7899, 1.000000e+00
  %7901 = fmul fast float %7900, 0x3FBB2995E0000000
  %7902 = fmul fast float %7886, 0x402921FB60000000
  %7903 = fadd fast float %7902, 0x401921FB60000000
  %7904 = call float @dx.op.unary.f32(i32 13, float %7903)  ; Sin(value)
  %7905 = fadd fast float %7904, 0xBE8777A5C0000000
  %7906 = fmul fast float %7905, 0x3FB45F3060000000
  %7907 = call float @dx.op.dot4.f32(i32 56, float %7881, float %7882, float %7883, float %7884, float %7891, float %7896, float %7901, float %7906)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7908 = fmul fast float %7907, 0xBFF7154760000000
  %7909 = call float @dx.op.unary.f32(i32 21, float %7908)  ; Exp(value)
  %7910 = call float @dx.op.unary.f32(i32 7, float %7909)  ; Saturate(value)
  br label %7911

; <label>:7911                                    ; preds = %7879, %7875
  %7912 = phi float [ %7910, %7879 ], [ 1.000000e+00, %7875 ]
  %7913 = fadd fast float %7912, -1.000000e+00
  %7914 = fmul fast float %7913, %7873
  %7915 = fadd fast float %7914, 1.000000e+00
  br label %7916

; <label>:7916                                    ; preds = %7911, %7816
  %7917 = phi float [ %7915, %7911 ], [ 1.000000e+00, %7816 ]
  %7918 = fmul fast float %7917, %7812
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7922 = extractvalue %dx.types.CBufRet.f32 %7919, 2
  %7923 = fadd fast float %7920, %164
  %7924 = fadd fast float %7921, %165
  %7925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.f32 %7925, 1
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 0
  %7929 = extractvalue %dx.types.CBufRet.f32 %7927, 1
  %7930 = extractvalue %dx.types.CBufRet.f32 %7927, 2
  %7931 = fsub fast float -0.000000e+00, %7923
  %7932 = fsub fast float -0.000000e+00, %7924
  %7933 = fsub fast float %5758, %7922
  %7934 = fadd fast float %7933, %7926
  %7935 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7931, float %7932, float %7934)  ; Dot3(ax,ay,az,bx,by,bz)
  %7936 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7928, float %7929, float %7930)  ; Dot3(ax,ay,az,bx,by,bz)
  %7937 = fdiv fast float 1.000000e+00, %7936
  %7938 = fmul fast float %7937, %7935
  %7939 = fmul fast float %7928, %7938
  %7940 = fmul fast float %7929, %7938
  %7941 = fadd fast float %7939, %7923
  %7942 = fadd fast float %7940, %7924
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 0
  %7945 = extractvalue %dx.types.CBufRet.f32 %7943, 1
  %7946 = fsub fast float %7941, %7944
  %7947 = fsub fast float %7942, %7945
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 2
  %7950 = extractvalue %dx.types.CBufRet.f32 %7948, 3
  %7951 = fmul fast float %7946, %7949
  %7952 = fmul fast float %7947, %7950
  %7953 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7954 = extractvalue %dx.types.CBufRet.i32 %7953, 3
  %7955 = icmp eq i32 %7954, 0
  br i1 %7955, label %7961, label %7956

; <label>:7956                                    ; preds = %7916
  %7957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7951, float %7952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7958 = extractvalue %dx.types.ResRet.f32 %7957, 0
  %7959 = extractvalue %dx.types.ResRet.f32 %7957, 1
  %7960 = extractvalue %dx.types.ResRet.f32 %7957, 2
  br label %7966

; <label>:7961                                    ; preds = %7916
  %7962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7951, float %7952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7963 = extractvalue %dx.types.ResRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.ResRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.ResRet.f32 %7962, 2
  br label %7966

; <label>:7966                                    ; preds = %7961, %7956
  %7967 = phi float [ %7958, %7956 ], [ %7963, %7961 ]
  %7968 = phi float [ %7959, %7956 ], [ %7964, %7961 ]
  %7969 = phi float [ %7960, %7956 ], [ %7965, %7961 ]
  %7970 = extractvalue %dx.types.CBufRet.f32 %7925, 2
  %7971 = fmul fast float %7970, %7967
  %7972 = extractvalue %dx.types.CBufRet.f32 %7925, 0
  %7973 = fsub fast float %7938, %7972
  %7974 = fsub fast float %7973, %7971
  %7975 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7974)  ; FMax(a,b)
  %7976 = fmul fast float %7975, %7968
  %7977 = call float @dx.op.binary.f32(i32 36, float %7969, float %7976)  ; FMin(a,b)
  %7978 = fmul fast float %7977, 0xBFF7154760000000
  %7979 = call float @dx.op.unary.f32(i32 21, float %7978)  ; Exp(value)
  %7980 = fmul fast float %7918, %7979
  br label %7981

; <label>:7981                                    ; preds = %7966, %7811
  %7982 = phi float [ %7980, %7966 ], [ %7812, %7811 ]
  %7983 = call float @dx.op.binary.f32(i32 36, float %7982, float %7982)  ; FMin(a,b)
  %7984 = call float @dx.op.binary.f32(i32 36, float %7982, float %7983)  ; FMin(a,b)
  %7985 = fcmp fast ogt float %7984, 0.000000e+00
  br i1 %7985, label %7986, label %8369, !dx.controlflow.hints !129

; <label>:7986                                    ; preds = %7981
  %7987 = fmul fast float %7982, %6704
  %7988 = fmul fast float %7982, %6705
  %7989 = fmul fast float %7982, %6706
  %7990 = fsub fast float %166, %5567
  %7991 = fcmp fast ogt float %7990, 0.000000e+00
  %7992 = fmul fast float %6693, 5.120000e+02
  %7993 = fmul fast float %6694, 5.120000e+02
  %7994 = fmul fast float %6695, 5.120000e+02
  %7995 = fadd fast float %7994, %166
  %7996 = fsub fast float %5567, %7995
  %7997 = fmul fast float %7996, 2.000000e+00
  %7998 = fadd fast float %7997, %7995
  %7999 = select i1 %7991, float %7998, float %7995
  %8000 = fsub fast float %7999, %166
  %8001 = call float @dx.op.dot3.f32(i32 55, float %7992, float %7993, float %8000, float %7992, float %7993, float %8000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8002 = call float @dx.op.unary.f32(i32 25, float %8001)  ; Rsqrt(value)
  %8003 = fmul fast float %8002, %7992
  %8004 = fmul fast float %8002, %7993
  %8005 = fmul fast float %8002, %8000
  %8006 = fsub fast float %5567, %166
  %8007 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8006)  ; Dot3(ax,ay,az,bx,by,bz)
  %8008 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8003, float %8004, float %8005)  ; Dot3(ax,ay,az,bx,by,bz)
  %8009 = fdiv fast float 1.000000e+00, %8008
  %8010 = fmul fast float %8009, %8007
  %8011 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7990, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8012 = fcmp fast ogt float %8011, 0.000000e+00
  %8013 = fcmp fast olt float %8011, 0.000000e+00
  %8014 = zext i1 %8012 to i32
  %8015 = zext i1 %8013 to i32
  %8016 = sub nsw i32 %8014, %8015
  %8017 = sitofp i32 %8016 to float
  %8018 = fsub fast float %7999, %5567
  %8019 = call float @dx.op.dot3.f32(i32 55, float %7992, float %7993, float %8018, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8020 = fcmp fast ogt float %8019, 0.000000e+00
  %8021 = fcmp fast olt float %8019, 0.000000e+00
  %8022 = zext i1 %8020 to i32
  %8023 = zext i1 %8021 to i32
  %8024 = sub nsw i32 %8022, %8023
  %8025 = sitofp i32 %8024 to float
  %8026 = fcmp fast une float %8017, %8025
  br i1 %8026, label %8027, label %8037

; <label>:8027                                    ; preds = %7986
  %8028 = fmul fast float %8010, %8005
  %8029 = fmul fast float %8010, %8004
  %8030 = fmul fast float %8010, %8003
  %8031 = fmul fast float %8030, %8030
  %8032 = fmul fast float %8029, %8029
  %8033 = fadd fast float %8031, %8032
  %8034 = fmul fast float %8028, %8028
  %8035 = fadd fast float %8033, %8034
  %8036 = call float @dx.op.unary.f32(i32 24, float %8035)  ; Sqrt(value)
  br label %8047

; <label>:8037                                    ; preds = %7986
  %8038 = icmp slt i32 %8016, 0
  br i1 %8038, label %8039, label %8047

; <label>:8039                                    ; preds = %8037
  %8040 = fsub fast float %166, %7999
  %8041 = fmul fast float %7992, %7992
  %8042 = fmul fast float %7993, %7993
  %8043 = fadd fast float %8041, %8042
  %8044 = fmul fast float %8040, %8040
  %8045 = fadd fast float %8043, %8044
  %8046 = call float @dx.op.unary.f32(i32 24, float %8045)  ; Sqrt(value)
  br label %8047

; <label>:8047                                    ; preds = %8039, %8037, %8027
  %8048 = phi float [ %8036, %8027 ], [ %8046, %8039 ], [ 0.000000e+00, %8037 ]
  %8049 = fsub fast float -0.000000e+00, %8048
  %8050 = select i1 %7991, float -0.000000e+00, float %8049
  %8051 = fmul fast float %5564, 0x3FF7154760000000
  %8052 = fmul fast float %8051, %8050
  %8053 = fmul fast float %5565, 0x3FF7154760000000
  %8054 = fmul fast float %8053, %8050
  %8055 = fmul fast float %5566, 0x3FF7154760000000
  %8056 = fmul fast float %8055, %8050
  %8057 = call float @dx.op.unary.f32(i32 21, float %8052)  ; Exp(value)
  %8058 = call float @dx.op.unary.f32(i32 21, float %8054)  ; Exp(value)
  %8059 = call float @dx.op.unary.f32(i32 21, float %8056)  ; Exp(value)
  %8060 = call float @dx.op.unary.f32(i32 7, float %8057)  ; Saturate(value)
  %8061 = call float @dx.op.unary.f32(i32 7, float %8058)  ; Saturate(value)
  %8062 = call float @dx.op.unary.f32(i32 7, float %8059)  ; Saturate(value)
  %8063 = fmul fast float %7987, %8060
  %8064 = fmul fast float %7988, %8061
  %8065 = fmul fast float %7989, %8062
  %8066 = fsub fast float %6693, %184
  %8067 = fsub fast float %6694, %185
  %8068 = fsub fast float %6695, %186
  %8069 = call float @dx.op.dot3.f32(i32 55, float %8066, float %8067, float %8068, float %8066, float %8067, float %8068)  ; Dot3(ax,ay,az,bx,by,bz)
  %8070 = call float @dx.op.unary.f32(i32 25, float %8069)  ; Rsqrt(value)
  %8071 = fmul fast float %8070, %8066
  %8072 = fmul fast float %8070, %8067
  %8073 = fmul fast float %8070, %8068
  %8074 = call float @dx.op.dot3.f32(i32 55, float %6693, float %6694, float %6695, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %8075 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5583, float %8071, float %8072, float %8073)  ; Dot3(ax,ay,az,bx,by,bz)
  %8076 = call float @dx.op.unary.f32(i32 7, float %8074)  ; Saturate(value)
  %8077 = fmul fast float %8076, %8076
  %8078 = fmul fast float %8077, %5786
  %8079 = call float @dx.op.unary.f32(i32 7, float %8078)  ; Saturate(value)
  %8080 = fmul fast float %8079, %8076
  %8081 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %5755, float %8071, float %8072, float %8073)  ; Dot3(ax,ay,az,bx,by,bz)
  %8082 = fmul fast float %8081, %8081
  %8083 = call float @dx.op.unary.f32(i32 6, float %8074)  ; FAbs(value)
  %8084 = fsub fast float 1.000000e+00, %5779
  %8085 = fmul fast float %5761, %5761
  %8086 = fmul fast float %8085, %8084
  %8087 = fadd fast float %8086, %5779
  %8088 = bitcast float %8087 to i32
  %8089 = ashr i32 %8088, 1
  %8090 = add nsw i32 %8089, 532487669
  %8091 = bitcast i32 %8090 to float
  %8092 = fadd fast float %8091, %5761
  %8093 = fmul fast float %5779, %8082
  %8094 = fsub fast float 1.000000e+00, %8082
  %8095 = fadd fast float %8094, %8093
  %8096 = fmul fast float %8083, %8083
  %8097 = fmul fast float %8096, %8084
  %8098 = fadd fast float %8097, %5779
  %8099 = bitcast float %8098 to i32
  %8100 = ashr i32 %8099, 1
  %8101 = add nsw i32 %8100, 532487669
  %8102 = bitcast i32 %8101 to float
  %8103 = fadd fast float %8102, %8083
  %8104 = fmul fast float %8095, %8095
  %8105 = fmul fast float %8104, %8092
  %8106 = fmul fast float %8105, %8103
  %8107 = fdiv fast float 0x3FF0A00000000000, %8106
  %8108 = fmul fast float %8107, %5779
  %8109 = fmul fast float %6032, 0x3FF9999980000000
  %8110 = fsub fast float 5.000000e+00, %8109
  %8111 = call float @dx.op.unary.f32(i32 6, float %8075)  ; FAbs(value)
  %8112 = fsub fast float 1.000000e+00, %8111
  %8113 = fmul fast float %6032, 0x41D9660740000000
  %8114 = fadd fast float %8113, 0xC1EFBF8940000000
  %8115 = bitcast float %8112 to i32
  %8116 = sitofp i32 %8115 to float
  %8117 = fmul fast float %8116, %8110
  %8118 = fadd fast float %8114, %8117
  %8119 = fptosi float %8118 to i32
  %8120 = bitcast i32 %8119 to float
  %8121 = fsub fast float 1.000000e+00, %5750
  %8122 = fsub fast float 1.000000e+00, %5751
  %8123 = fsub fast float 1.000000e+00, %5759
  %8124 = fmul fast float %8120, %8121
  %8125 = fmul fast float %8120, %8122
  %8126 = fmul fast float %8120, %8123
  %8127 = fadd fast float %8124, %5750
  %8128 = fadd fast float %8125, %5751
  %8129 = fadd fast float %8126, %5759
  br i1 %6055, label %8130, label %8153

; <label>:8130                                    ; preds = %8047
  %8131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8132 = extractvalue %dx.types.ResRet.f32 %8131, 0
  %8133 = extractvalue %dx.types.ResRet.f32 %8131, 1
  %8134 = extractvalue %dx.types.ResRet.f32 %8131, 2
  %8135 = fadd fast float %8132, -5.000000e-01
  %8136 = fadd fast float %8133, -5.000000e-01
  %8137 = fadd fast float %8134, -5.000000e-01
  %8138 = fmul fast float %5750, 4.000000e+00
  %8139 = fmul fast float %8138, %8121
  %8140 = fmul fast float %8139, %8135
  %8141 = fmul fast float %5751, 4.000000e+00
  %8142 = fmul fast float %8141, %8122
  %8143 = fmul fast float %8142, %8136
  %8144 = fmul fast float %5759, 4.000000e+00
  %8145 = fmul fast float %8144, %8123
  %8146 = fmul fast float %8145, %8137
  %8147 = fadd fast float %8140, %8127
  %8148 = fadd fast float %8143, %8128
  %8149 = fadd fast float %8146, %8129
  %8150 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  %8151 = call float @dx.op.unary.f32(i32 7, float %8148)  ; Saturate(value)
  %8152 = call float @dx.op.unary.f32(i32 7, float %8149)  ; Saturate(value)
  br label %8153

; <label>:8153                                    ; preds = %8130, %8047
  %8154 = phi float [ %8150, %8130 ], [ %8127, %8047 ]
  %8155 = phi float [ %8151, %8130 ], [ %8128, %8047 ]
  %8156 = phi float [ %8152, %8130 ], [ %8129, %8047 ]
  %8157 = fmul fast float %8074, 9.843750e-01
  %8158 = fadd fast float %8157, 7.812500e-03
  %8159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8158, float %6036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8160 = extractvalue %dx.types.ResRet.f32 %8159, 0
  %8161 = extractvalue %dx.types.ResRet.f32 %8159, 1
  %8162 = extractvalue %dx.types.ResRet.f32 %8159, 2
  %8163 = extractvalue %dx.types.ResRet.f32 %8159, 3
  %8164 = fsub fast float %8162, %8160
  %8165 = fsub fast float %8163, %8161
  %8166 = fmul fast float %8164, %6042
  %8167 = fmul fast float %8165, %6042
  %8168 = fadd fast float %8166, %8160
  %8169 = fadd fast float %8167, %8161
  %8170 = fmul fast float %8168, %5750
  %8171 = fmul fast float %8168, %5751
  %8172 = fmul fast float %8168, %5759
  %8173 = fadd fast float %8170, %8169
  %8174 = fadd fast float %8171, %8169
  %8175 = fadd fast float %8172, %8169
  br i1 %6055, label %8176, label %8199

; <label>:8176                                    ; preds = %8153
  %8177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8074, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8178 = extractvalue %dx.types.ResRet.f32 %8177, 0
  %8179 = extractvalue %dx.types.ResRet.f32 %8177, 1
  %8180 = extractvalue %dx.types.ResRet.f32 %8177, 2
  %8181 = fadd fast float %8178, -5.000000e-01
  %8182 = fadd fast float %8179, -5.000000e-01
  %8183 = fadd fast float %8180, -5.000000e-01
  %8184 = fmul fast float %5750, 4.000000e+00
  %8185 = fmul fast float %8184, %8121
  %8186 = fmul fast float %8185, %8181
  %8187 = fmul fast float %5751, 4.000000e+00
  %8188 = fmul fast float %8187, %8122
  %8189 = fmul fast float %8188, %8182
  %8190 = fmul fast float %5759, 4.000000e+00
  %8191 = fmul fast float %8190, %8123
  %8192 = fmul fast float %8191, %8183
  %8193 = fadd fast float %8186, %8173
  %8194 = fadd fast float %8189, %8174
  %8195 = fadd fast float %8192, %8175
  %8196 = call float @dx.op.unary.f32(i32 7, float %8193)  ; Saturate(value)
  %8197 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8198 = call float @dx.op.unary.f32(i32 7, float %8195)  ; Saturate(value)
  br label %8199

; <label>:8199                                    ; preds = %8176, %8153
  %8200 = phi float [ %8196, %8176 ], [ %8173, %8153 ]
  %8201 = phi float [ %8197, %8176 ], [ %8174, %8153 ]
  %8202 = phi float [ %8198, %8176 ], [ %8175, %8153 ]
  %8203 = call float @dx.op.binary.f32(i32 35, float %8201, float %8202)  ; FMax(a,b)
  %8204 = call float @dx.op.binary.f32(i32 35, float %8200, float %8203)  ; FMax(a,b)
  %8205 = fsub fast float 1.000000e+00, %8204
  %8206 = call float @dx.op.binary.f32(i32 35, float %8083, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8207 = fdiv fast float %4459, %8206
  %8208 = fmul fast float %6602, %8207
  %8209 = fmul fast float %6604, %8207
  %8210 = fmul fast float %6606, %8207
  %8211 = call float @dx.op.unary.f32(i32 21, float %8208)  ; Exp(value)
  %8212 = call float @dx.op.unary.f32(i32 21, float %8209)  ; Exp(value)
  %8213 = call float @dx.op.unary.f32(i32 21, float %8210)  ; Exp(value)
  %8214 = call float @dx.op.unary.f32(i32 7, float %8211)  ; Saturate(value)
  %8215 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8216 = call float @dx.op.unary.f32(i32 7, float %8213)  ; Saturate(value)
  %8217 = select i1 %6599, float %8214, float 0.000000e+00
  %8218 = select i1 %6600, float %8215, float 0.000000e+00
  %8219 = select i1 %6601, float %8216, float 0.000000e+00
  %8220 = fsub fast float -0.000000e+00, %5753
  %8221 = fsub fast float -0.000000e+00, %5754
  %8222 = fsub fast float -0.000000e+00, %5755
  %8223 = call float @dx.op.dot3.f32(i32 55, float %6693, float %6694, float %6695, float %8220, float %8221, float %8222)  ; Dot3(ax,ay,az,bx,by,bz)
  %8224 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8225 = fmul fast float %8224, 9.843750e-01
  %8226 = fadd fast float %8225, 7.812500e-03
  %8227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8226, float %6036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8228 = extractvalue %dx.types.ResRet.f32 %8227, 0
  %8229 = extractvalue %dx.types.ResRet.f32 %8227, 1
  %8230 = extractvalue %dx.types.ResRet.f32 %8227, 2
  %8231 = extractvalue %dx.types.ResRet.f32 %8227, 3
  %8232 = fsub fast float %8230, %8228
  %8233 = fsub fast float %8231, %8229
  %8234 = fmul fast float %8232, %6042
  %8235 = fmul fast float %8233, %6042
  %8236 = fadd fast float %8234, %8228
  %8237 = fadd fast float %8235, %8229
  %8238 = fmul fast float %8236, %5750
  %8239 = fmul fast float %8236, %5751
  %8240 = fmul fast float %8236, %5759
  %8241 = fadd fast float %8238, %8237
  %8242 = fadd fast float %8239, %8237
  %8243 = fadd fast float %8240, %8237
  br i1 %6055, label %8244, label %8267

; <label>:8244                                    ; preds = %8199
  %8245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8246 = extractvalue %dx.types.ResRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.ResRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.ResRet.f32 %8245, 2
  %8249 = fadd fast float %8246, -5.000000e-01
  %8250 = fadd fast float %8247, -5.000000e-01
  %8251 = fadd fast float %8248, -5.000000e-01
  %8252 = fmul fast float %5750, 4.000000e+00
  %8253 = fmul fast float %8252, %8121
  %8254 = fmul fast float %8253, %8249
  %8255 = fmul fast float %5751, 4.000000e+00
  %8256 = fmul fast float %8255, %8122
  %8257 = fmul fast float %8256, %8250
  %8258 = fmul fast float %5759, 4.000000e+00
  %8259 = fmul fast float %8258, %8123
  %8260 = fmul fast float %8259, %8251
  %8261 = fadd fast float %8254, %8241
  %8262 = fadd fast float %8257, %8242
  %8263 = fadd fast float %8260, %8243
  %8264 = call float @dx.op.unary.f32(i32 7, float %8261)  ; Saturate(value)
  %8265 = call float @dx.op.unary.f32(i32 7, float %8262)  ; Saturate(value)
  %8266 = call float @dx.op.unary.f32(i32 7, float %8263)  ; Saturate(value)
  br label %8267

; <label>:8267                                    ; preds = %8244, %8199
  %8268 = phi float [ %8264, %8244 ], [ %8241, %8199 ]
  %8269 = phi float [ %8265, %8244 ], [ %8242, %8199 ]
  %8270 = phi float [ %8266, %8244 ], [ %8243, %8199 ]
  %8271 = call float @dx.op.binary.f32(i32 35, float %8269, float %8270)  ; FMax(a,b)
  %8272 = call float @dx.op.binary.f32(i32 35, float %8268, float %8271)  ; FMax(a,b)
  %8273 = fsub fast float 1.000000e+00, %8272
  %8274 = fmul fast float %5776, %6666
  %8275 = fadd fast float %6668, %8274
  %8276 = call float @dx.op.unary.f32(i32 7, float %8275)  ; Saturate(value)
  %8277 = fsub fast float %6693, %5767
  %8278 = fsub fast float %6694, %5768
  %8279 = fsub fast float %6695, %5769
  %8280 = call float @dx.op.dot3.f32(i32 55, float %8277, float %8278, float %8279, float %8277, float %8278, float %8279)  ; Dot3(ax,ay,az,bx,by,bz)
  %8281 = call float @dx.op.unary.f32(i32 25, float %8280)  ; Rsqrt(value)
  %8282 = fmul fast float %8281, %8277
  %8283 = fmul fast float %8281, %8278
  %8284 = fmul fast float %8281, %8279
  %8285 = call float @dx.op.dot3.f32(i32 55, float %8220, float %8221, float %8222, float %8282, float %8283, float %8284)  ; Dot3(ax,ay,az,bx,by,bz)
  %8286 = fmul fast float %8285, %8285
  %8287 = call float @dx.op.unary.f32(i32 6, float %8224)  ; FAbs(value)
  %8288 = call float @dx.op.binary.f32(i32 35, float %8276, float 0x3F847AE140000000)  ; FMax(a,b)
  %8289 = fmul fast float %8288, %8288
  %8290 = fmul fast float %8289, %8289
  %8291 = fsub fast float 1.000000e+00, %8290
  %8292 = fmul fast float %8085, %8291
  %8293 = fadd fast float %8292, %8290
  %8294 = bitcast float %8293 to i32
  %8295 = ashr i32 %8294, 1
  %8296 = add nsw i32 %8295, 532487669
  %8297 = bitcast i32 %8296 to float
  %8298 = fadd fast float %8297, %5761
  %8299 = fmul fast float %8290, %8286
  %8300 = fsub fast float 1.000000e+00, %8286
  %8301 = fadd fast float %8300, %8299
  %8302 = fmul fast float %8287, %8287
  %8303 = fmul fast float %8302, %8291
  %8304 = fadd fast float %8303, %8290
  %8305 = bitcast float %8304 to i32
  %8306 = ashr i32 %8305, 1
  %8307 = add nsw i32 %8306, 532487669
  %8308 = bitcast i32 %8307 to float
  %8309 = fadd fast float %8308, %8287
  %8310 = fmul fast float %8301, %8301
  %8311 = fmul fast float %8310, %8298
  %8312 = fmul fast float %8311, %8309
  %8313 = fdiv fast float 0x3FF0A00000000000, %8312
  %8314 = fmul fast float %8313, %8290
  %8315 = fmul fast float %8224, %8217
  %8316 = fmul fast float %8224, %8218
  %8317 = fmul fast float %8224, %8219
  %8318 = fmul fast float %8315, %8273
  %8319 = fmul fast float %8318, %8314
  %8320 = fmul fast float %8316, %8273
  %8321 = fmul fast float %8320, %8314
  %8322 = fmul fast float %8317, %8273
  %8323 = fmul fast float %8322, %8314
  %8324 = fmul fast float %8154, %8108
  %8325 = fmul fast float %8155, %8108
  %8326 = fmul fast float %8156, %8108
  %8327 = fsub fast float 1.000000e+00, %8075
  %8328 = bitcast float %8327 to i32
  %8329 = sitofp i32 %8328 to float
  %8330 = fmul fast float %8329, 5.000000e+00
  %8331 = fadd fast float %8330, 0xC1EFBF8940000000
  %8332 = fptosi float %8331 to i32
  %8333 = bitcast i32 %8332 to float
  %8334 = fmul fast float %8333, %5106
  %8335 = fmul fast float %8205, %8334
  %8336 = fmul fast float %8335, %6594
  %8337 = fmul fast float %8335, %6595
  %8338 = fmul fast float %8335, %6596
  %8339 = fadd fast float %8336, %8324
  %8340 = fadd fast float %8337, %8325
  %8341 = fadd fast float %8338, %8326
  %8342 = fmul fast float %8339, %8080
  %8343 = fmul fast float %8340, %8080
  %8344 = fmul fast float %8341, %8080
  %8345 = fmul fast float %8080, %8063
  %8346 = fmul fast float %8345, %8205
  %8347 = fmul fast float %8080, %8064
  %8348 = fmul fast float %8347, %8205
  %8349 = fmul fast float %8080, %8065
  %8350 = fmul fast float %8349, %8205
  %8351 = fadd fast float %8342, %8319
  %8352 = fadd fast float %8343, %8321
  %8353 = fadd fast float %8344, %8323
  %8354 = fmul fast float %8351, %8063
  %8355 = fmul fast float %8352, %8064
  %8356 = fmul fast float %8353, %8065
  %8357 = fadd fast float %8346, %6683
  %8358 = fmul fast float %8357, %5138
  %8359 = fadd fast float %8348, %6685
  %8360 = fmul fast float %8359, %5138
  %8361 = fadd fast float %8350, %6687
  %8362 = fmul fast float %8361, %5138
  %8363 = fadd fast float %8354, %6647
  %8364 = fmul fast float %8363, %5138
  %8365 = fadd fast float %8355, %6650
  %8366 = fmul fast float %8365, %5138
  %8367 = fadd fast float %8356, %6653
  %8368 = fmul fast float %8367, %5138
  br label %8369

; <label>:8369                                    ; preds = %8267, %7981, %6577
  %8370 = phi float [ %6648, %6577 ], [ %6648, %7981 ], [ %8364, %8267 ]
  %8371 = phi float [ %6651, %6577 ], [ %6651, %7981 ], [ %8366, %8267 ]
  %8372 = phi float [ %6654, %6577 ], [ %6654, %7981 ], [ %8368, %8267 ]
  %8373 = phi float [ %6684, %6577 ], [ %6684, %7981 ], [ %8358, %8267 ]
  %8374 = phi float [ %6686, %6577 ], [ %6686, %7981 ], [ %8360, %8267 ]
  %8375 = phi float [ %6688, %6577 ], [ %6688, %7981 ], [ %8362, %8267 ]
  %8376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.i32 %8376, 0
  %8378 = icmp eq i32 %8377, 0
  br i1 %8378, label %9196, label %8379

; <label>:8379                                    ; preds = %8369
  %8380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8380, 2
  %8382 = extractvalue %dx.types.CBufRet.f32 %8380, 3
  %8383 = fmul fast float %8381, %109
  %8384 = fmul fast float %8382, %110
  %8385 = fptoui float %8383 to i32
  %8386 = fptoui float %8384 to i32
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 0
  %8389 = extractvalue %dx.types.CBufRet.f32 %8387, 2
  %8390 = extractvalue %dx.types.CBufRet.f32 %8387, 3
  %8391 = fadd fast float %97, -4.000000e+00
  %8392 = call float @dx.op.binary.f32(i32 35, float %8391, float 0.000000e+00)  ; FMax(a,b)
  %8393 = fadd fast float %8392, %8388
  %8394 = fmul fast float %8393, %8389
  %8395 = call float @dx.op.unary.f32(i32 23, float %8394)  ; Log(value)
  %8396 = fmul fast float %8395, %8390
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 2
  %8399 = fmul fast float %8396, %8398
  %8400 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  %8401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8402 = extractvalue %dx.types.CBufRet.i32 %8401, 1
  %8403 = add i32 %8402, -1
  %8404 = uitofp i32 %8402 to float
  %8405 = fmul fast float %8404, %8400
  %8406 = fptoui float %8405 to i32
  %8407 = call i32 @dx.op.binary.i32(i32 40, i32 %8406, i32 %8403)  ; UMin(a,b)
  %8408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8409 = extractvalue %dx.types.CBufRet.i32 %8408, 2
  %8410 = extractvalue %dx.types.CBufRet.i32 %8408, 3
  %8411 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8386, i32 %8409, i32 %8385)  ; UMad(a,b,c)
  %8412 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8407, i32 %8410, i32 %8411)  ; UMad(a,b,c)
  %8413 = add nsw i32 %8377, -1
  %8414 = call i32 @dx.op.binary.i32(i32 37, i32 %8413, i32 0)  ; IMax(a,b)
  %8415 = call float @dx.op.binary.f32(i32 35, float %97, float 0.000000e+00)  ; FMax(a,b)
  %8416 = fptoui float %8415 to i32
  %8417 = lshr i32 %8416, 5
  %8418 = call i32 @dx.op.binary.i32(i32 40, i32 %8417, i32 8191)  ; UMin(a,b)
  %8419 = shl i32 %8418, 2
  %8420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8419, i32 undef)  ; BufferLoad(srv,index,wot)
  %8421 = extractvalue %dx.types.ResRet.i32 %8420, 0
  %8422 = lshr i32 %8421, 16
  %8423 = and i32 %8421, 65535
  %8424 = lshr i32 %8421, 21
  %8425 = lshr i32 %8423, 5
  %8426 = call i32 @dx.op.binary.i32(i32 40, i32 %8425, i32 %8414)  ; UMin(a,b)
  %8427 = icmp ugt i32 %8424, %8426
  br i1 %8427, label %9196, label %8428

; <label>:8428                                    ; preds = %8379
  br label %8429

; <label>:8429                                    ; preds = %9186, %8428
  %8430 = phi i32 [ %9193, %9186 ], [ %8424, %8428 ]
  %8431 = phi float [ %9187, %9186 ], [ %8370, %8428 ]
  %8432 = phi float [ %9188, %9186 ], [ %8371, %8428 ]
  %8433 = phi float [ %9189, %9186 ], [ %8372, %8428 ]
  %8434 = phi float [ %9190, %9186 ], [ %8373, %8428 ]
  %8435 = phi float [ %9191, %9186 ], [ %8374, %8428 ]
  %8436 = phi float [ %9192, %9186 ], [ %8375, %8428 ]
  %8437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.i32 %8437, 0
  %8439 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8412, i32 %8438, i32 %8430)  ; UMad(a,b,c)
  %8440 = shl i32 %8439, 2
  %8441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8440, i32 undef)  ; BufferLoad(srv,index,wot)
  %8442 = extractvalue %dx.types.ResRet.i32 %8441, 0
  %8443 = shl i32 %8430, 5
  %8444 = sub nsw i32 %8422, %8443
  %8445 = call i32 @dx.op.binary.i32(i32 37, i32 %8444, i32 0)  ; IMax(a,b)
  %8446 = call i32 @dx.op.binary.i32(i32 38, i32 %8445, i32 31)  ; IMin(a,b)
  %8447 = sub nsw i32 1, %8422
  %8448 = add nsw i32 %8447, %8423
  %8449 = call i32 @dx.op.binary.i32(i32 37, i32 %8448, i32 0)  ; IMax(a,b)
  %8450 = call i32 @dx.op.binary.i32(i32 38, i32 %8449, i32 32)  ; IMin(a,b)
  %8451 = and i32 %8450, 31
  %8452 = shl i32 -1, %8451
  %8453 = xor i32 %8452, -1
  %8454 = and i32 %8446, 31
  %8455 = shl i32 %8453, %8454
  %8456 = icmp eq i32 %8450, 32
  %8457 = select i1 %8456, i32 -1, i32 %8455
  %8458 = and i32 %8457, %8442
  %8459 = icmp eq i32 %8458, 0
  br i1 %8459, label %9186, label %8460

; <label>:8460                                    ; preds = %8429
  br label %8461

; <label>:8461                                    ; preds = %8596, %8460
  %8462 = phi i32 [ %8473, %8596 ], [ %8458, %8460 ]
  %8463 = phi float [ %8597, %8596 ], [ %8431, %8460 ]
  %8464 = phi float [ %8598, %8596 ], [ %8432, %8460 ]
  %8465 = phi float [ %8599, %8596 ], [ %8433, %8460 ]
  %8466 = phi float [ %8600, %8596 ], [ %8434, %8460 ]
  %8467 = phi float [ %8601, %8596 ], [ %8435, %8460 ]
  %8468 = phi float [ %8602, %8596 ], [ %8436, %8460 ]
  %8469 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8462)  ; FirstbitLo(value)
  %8470 = add i32 %8469, %8443
  %8471 = and i32 %8469, 31
  %8472 = shl i32 1, %8471
  %8473 = xor i32 %8472, %8462
  %8474 = mul i32 %8470, 112
  %8475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8474, i32 undef)  ; BufferLoad(srv,index,wot)
  %8476 = extractvalue %dx.types.ResRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.ResRet.f32 %8475, 1
  %8478 = extractvalue %dx.types.ResRet.f32 %8475, 2
  %8479 = or i32 %8474, 12
  %8480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8479, i32 undef)  ; BufferLoad(srv,index,wot)
  %8481 = extractvalue %dx.types.ResRet.f32 %8480, 0
  %8482 = add i32 %8474, 16
  %8483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8482, i32 undef)  ; BufferLoad(srv,index,wot)
  %8484 = extractvalue %dx.types.ResRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.ResRet.f32 %8483, 1
  %8486 = extractvalue %dx.types.ResRet.f32 %8483, 2
  %8487 = add i32 %8474, 28
  %8488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8487, i32 undef)  ; BufferLoad(srv,index,wot)
  %8489 = extractvalue %dx.types.ResRet.i32 %8488, 0
  %8490 = add i32 %8474, 44
  %8491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8490, i32 undef)  ; BufferLoad(srv,index,wot)
  %8492 = extractvalue %dx.types.ResRet.f32 %8491, 0
  %8493 = add i32 %8474, 48
  %8494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8493, i32 undef)  ; BufferLoad(srv,index,wot)
  %8495 = extractvalue %dx.types.ResRet.f32 %8494, 0
  %8496 = extractvalue %dx.types.ResRet.f32 %8494, 1
  %8497 = extractvalue %dx.types.ResRet.f32 %8494, 2
  %8498 = extractvalue %dx.types.ResRet.f32 %8494, 3
  %8499 = add i32 %8474, 64
  %8500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8499, i32 undef)  ; BufferLoad(srv,index,wot)
  %8501 = extractvalue %dx.types.ResRet.f32 %8500, 0
  %8502 = extractvalue %dx.types.ResRet.f32 %8500, 1
  %8503 = extractvalue %dx.types.ResRet.f32 %8500, 2
  %8504 = extractvalue %dx.types.ResRet.f32 %8500, 3
  %8505 = add i32 %8474, 80
  %8506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8505, i32 undef)  ; BufferLoad(srv,index,wot)
  %8507 = extractvalue %dx.types.ResRet.f32 %8506, 1
  %8508 = extractvalue %dx.types.ResRet.f32 %8506, 2
  %8509 = add i32 %8474, 92
  %8510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8509, i32 undef)  ; BufferLoad(srv,index,wot)
  %8511 = extractvalue %dx.types.ResRet.i32 %8510, 0
  %8512 = call float @dx.op.dot3.f32(i32 55, float %8476, float %8477, float %8478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8513 = select i1 %258, float %8507, float %8476
  %8514 = select i1 %258, float %8512, float %8477
  %8515 = select i1 %258, float %8508, float %8478
  %8516 = and i32 %8511, 65535
  %8517 = uitofp i32 %8516 to float
  %8518 = lshr i32 %8511, 16
  %8519 = uitofp i32 %8518 to float
  %8520 = and i32 %8489, 65535
  %8521 = and i32 %8489, 50331648
  %8522 = icmp slt i32 %8489, 0
  %8523 = icmp eq i32 %8521, 33554432
  %8524 = fsub fast float %8495, %164
  %8525 = fsub fast float %8496, %165
  %8526 = fsub fast float %8497, %166
  %8527 = call float @dx.op.dot3.f32(i32 55, float %8524, float %8525, float %8526, float %8524, float %8525, float %8526)  ; Dot3(ax,ay,az,bx,by,bz)
  %8528 = call float @dx.op.unary.f32(i32 24, float %8527)  ; Sqrt(value)
  %8529 = fdiv fast float 1.000000e+00, %8528
  %8530 = fmul fast float %8529, %8524
  %8531 = fmul fast float %8529, %8525
  %8532 = fmul fast float %8529, %8526
  %8533 = fadd fast float %8528, %8481
  %8534 = fdiv fast float 1.000000e+00, %8533
  %8535 = fmul float %8492, %8534
  %8536 = fmul float %8535, %8535
  %8537 = call float @dx.op.unary.f32(i32 7, float %8536)  ; Saturate(value)
  br i1 %8523, label %8538, label %8559

; <label>:8538                                    ; preds = %8461
  %8539 = fmul fast float %8503, %8484
  %8540 = fmul fast float %8503, %8485
  %8541 = fmul fast float %8503, %8486
  %8542 = fadd fast float %8524, %8539
  %8543 = fadd fast float %8525, %8540
  %8544 = fadd fast float %8526, %8541
  %8545 = call float @dx.op.dot3.f32(i32 55, float %8542, float %8543, float %8544, float %8542, float %8543, float %8544)  ; Dot3(ax,ay,az,bx,by,bz)
  %8546 = call float @dx.op.unary.f32(i32 25, float %8545)  ; Rsqrt(value)
  %8547 = fmul fast float %8546, %8542
  %8548 = fmul fast float %8546, %8543
  %8549 = fmul fast float %8546, %8544
  %8550 = fsub fast float %164, %8495
  %8551 = fsub fast float %165, %8496
  %8552 = fsub fast float %166, %8497
  %8553 = fsub fast float -0.000000e+00, %8550
  %8554 = fsub fast float -0.000000e+00, %8551
  %8555 = fsub fast float -0.000000e+00, %8552
  %8556 = call float @dx.op.dot3.f32(i32 55, float %8553, float %8554, float %8555, float %8484, float %8485, float %8486)  ; Dot3(ax,ay,az,bx,by,bz)
  %8557 = fcmp fast ogt float %8556, 0.000000e+00
  %8558 = uitofp i1 %8557 to float
  br label %8559

; <label>:8559                                    ; preds = %8538, %8461
  %8560 = phi float [ %8558, %8538 ], [ 1.000000e+00, %8461 ]
  %8561 = phi float [ %8547, %8538 ], [ %8530, %8461 ]
  %8562 = phi float [ %8548, %8538 ], [ %8531, %8461 ]
  %8563 = phi float [ %8549, %8538 ], [ %8532, %8461 ]
  %8564 = call float @dx.op.dot3.f32(i32 55, float %8484, float %8485, float %8486, float %8561, float %8562, float %8563)  ; Dot3(ax,ay,az,bx,by,bz)
  %8565 = fmul fast float %8564, %8564
  %8566 = call float @dx.op.unary.f32(i32 7, float %8565)  ; Saturate(value)
  %8567 = fsub fast float 1.000000e+00, %8566
  %8568 = fmul fast float %8567, 5.000000e-01
  %8569 = fcmp fast ogt float %8564, 0.000000e+00
  %8570 = fsub fast float 1.000000e+00, %8568
  %8571 = select i1 %8569, float %8568, float %8570
  %8572 = fmul fast float %8571, %8519
  %8573 = fadd fast float %8572, %8517
  %8574 = fmul fast float %8573, 0x3EF0001000000000
  %8575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8574, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8576 = extractvalue %dx.types.ResRet.f32 %8575, 0
  %8577 = fmul fast float %8564, %8501
  %8578 = fadd fast float %8577, %8502
  %8579 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8580 = select i1 %8523, float 1.000000e+00, float %8579
  %8581 = select i1 %8523, float %8579, float 1.000000e+00
  %8582 = fmul fast float %8528, %8498
  %8583 = fsub fast float 1.000000e+00, %8582
  %8584 = fmul fast float %8583, %8504
  %8585 = call float @dx.op.unary.f32(i32 7, float %8584)  ; Saturate(value)
  %8586 = fmul fast float %8585, %8581
  %8587 = fmul fast float %8586, 2.000000e+00
  %8588 = fsub fast float 3.000000e+00, %8587
  %8589 = fmul fast float %8576, %8560
  %8590 = fmul fast float %8586, %8586
  %8591 = fmul fast float %8590, %8589
  %8592 = fmul fast float %8591, %8588
  %8593 = call float @dx.op.binary.f32(i32 36, float %8592, float %8592)  ; FMin(a,b)
  %8594 = call float @dx.op.binary.f32(i32 36, float %8592, float %8593)  ; FMin(a,b)
  %8595 = fcmp fast ogt float %8594, 0.000000e+00
  br i1 %8595, label %8604, label %8596, !dx.controlflow.hints !130

; <label>:8596                                    ; preds = %9139, %8750, %8559
  %8597 = phi float [ %8463, %8750 ], [ %8463, %8559 ], [ %9182, %9139 ]
  %8598 = phi float [ %8464, %8750 ], [ %8464, %8559 ], [ %9183, %9139 ]
  %8599 = phi float [ %8465, %8750 ], [ %8465, %8559 ], [ %9184, %9139 ]
  %8600 = phi float [ %8466, %8750 ], [ %8466, %8559 ], [ %9176, %9139 ]
  %8601 = phi float [ %8467, %8750 ], [ %8467, %8559 ], [ %9177, %9139 ]
  %8602 = phi float [ %8468, %8750 ], [ %8468, %8559 ], [ %9178, %9139 ]
  %8603 = icmp eq i32 %8462, %8472
  br i1 %8603, label %9185, label %8461

; <label>:8604                                    ; preds = %8559
  %8605 = icmp eq i32 %8520, 255
  br i1 %8605, label %8750, label %8606, !dx.controlflow.hints !131

; <label>:8606                                    ; preds = %8604
  %8607 = mul nuw nsw i32 %8520, 176
  %8608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8607, i32 undef)  ; BufferLoad(srv,index,wot)
  %8609 = extractvalue %dx.types.ResRet.f32 %8608, 0
  %8610 = extractvalue %dx.types.ResRet.f32 %8608, 1
  %8611 = extractvalue %dx.types.ResRet.f32 %8608, 2
  %8612 = extractvalue %dx.types.ResRet.f32 %8608, 3
  %8613 = add nuw nsw i32 %8607, 16
  %8614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8613, i32 undef)  ; BufferLoad(srv,index,wot)
  %8615 = extractvalue %dx.types.ResRet.f32 %8614, 0
  %8616 = extractvalue %dx.types.ResRet.f32 %8614, 1
  %8617 = add nuw nsw i32 %8607, 32
  %8618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8617, i32 undef)  ; BufferLoad(srv,index,wot)
  %8619 = extractvalue %dx.types.ResRet.f32 %8618, 0
  %8620 = extractvalue %dx.types.ResRet.f32 %8618, 1
  %8621 = extractvalue %dx.types.ResRet.f32 %8618, 2
  %8622 = add nuw nsw i32 %8607, 48
  %8623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8622, i32 undef)  ; BufferLoad(srv,index,wot)
  %8624 = extractvalue %dx.types.ResRet.f32 %8623, 0
  %8625 = extractvalue %dx.types.ResRet.f32 %8623, 1
  %8626 = extractvalue %dx.types.ResRet.f32 %8623, 2
  %8627 = extractvalue %dx.types.ResRet.f32 %8623, 3
  %8628 = add nuw nsw i32 %8607, 64
  %8629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8628, i32 undef)  ; BufferLoad(srv,index,wot)
  %8630 = extractvalue %dx.types.ResRet.f32 %8629, 0
  %8631 = extractvalue %dx.types.ResRet.f32 %8629, 1
  %8632 = extractvalue %dx.types.ResRet.f32 %8629, 2
  %8633 = extractvalue %dx.types.ResRet.f32 %8629, 3
  %8634 = add nuw nsw i32 %8607, 80
  %8635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8634, i32 undef)  ; BufferLoad(srv,index,wot)
  %8636 = extractvalue %dx.types.ResRet.f32 %8635, 0
  %8637 = extractvalue %dx.types.ResRet.f32 %8635, 1
  %8638 = extractvalue %dx.types.ResRet.f32 %8635, 2
  %8639 = extractvalue %dx.types.ResRet.f32 %8635, 3
  %8640 = add nuw nsw i32 %8607, 96
  %8641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8640, i32 undef)  ; BufferLoad(srv,index,wot)
  %8642 = extractvalue %dx.types.ResRet.f32 %8641, 0
  %8643 = extractvalue %dx.types.ResRet.f32 %8641, 1
  %8644 = extractvalue %dx.types.ResRet.f32 %8641, 2
  %8645 = extractvalue %dx.types.ResRet.f32 %8641, 3
  %8646 = bitcast float %8616 to i32
  %8647 = fmul fast float %8621, %116
  %8648 = fmul fast float %8621, %117
  %8649 = fmul fast float %8621, %118
  %8650 = fadd fast float %8647, %164
  %8651 = fadd fast float %8648, %165
  %8652 = fadd fast float %8649, %166
  %8653 = fmul fast float %8650, %8624
  %8654 = call float @dx.op.tertiary.f32(i32 46, float %8651, float %8630, float %8653)  ; FMad(a,b,c)
  %8655 = call float @dx.op.tertiary.f32(i32 46, float %8652, float %8636, float %8654)  ; FMad(a,b,c)
  %8656 = fadd fast float %8655, %8642
  %8657 = fmul fast float %8650, %8625
  %8658 = call float @dx.op.tertiary.f32(i32 46, float %8651, float %8631, float %8657)  ; FMad(a,b,c)
  %8659 = call float @dx.op.tertiary.f32(i32 46, float %8652, float %8637, float %8658)  ; FMad(a,b,c)
  %8660 = fadd fast float %8659, %8643
  %8661 = fmul fast float %8650, %8626
  %8662 = call float @dx.op.tertiary.f32(i32 46, float %8651, float %8632, float %8661)  ; FMad(a,b,c)
  %8663 = call float @dx.op.tertiary.f32(i32 46, float %8652, float %8638, float %8662)  ; FMad(a,b,c)
  %8664 = fadd fast float %8663, %8644
  %8665 = fmul fast float %8650, %8627
  %8666 = call float @dx.op.tertiary.f32(i32 46, float %8651, float %8633, float %8665)  ; FMad(a,b,c)
  %8667 = call float @dx.op.tertiary.f32(i32 46, float %8652, float %8639, float %8666)  ; FMad(a,b,c)
  %8668 = fadd fast float %8667, %8645
  %8669 = fdiv fast float %8656, %8668
  %8670 = fdiv fast float %8660, %8668
  %8671 = fdiv fast float %8664, %8668
  %8672 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8671)  ; FMax(a,b)
  %8673 = fmul fast float %269, 0x401921FB60000000
  %8674 = call float @dx.op.unary.f32(i32 13, float %8673)  ; Sin(value)
  %8675 = call float @dx.op.unary.f32(i32 12, float %8673)  ; Cos(value)
  %8676 = fmul fast float %8675, %8620
  %8677 = call float @dx.op.tertiary.f32(i32 46, float %8674, float %8620, float 0.000000e+00)  ; FMad(a,b,c)
  %8678 = fmul fast float %8620, %8674
  %8679 = fsub fast float -0.000000e+00, %8678
  %8680 = call float @dx.op.tertiary.f32(i32 46, float %8675, float %8620, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8681

; <label>:8681                                    ; preds = %8681, %8606
  %8682 = phi float [ 0.000000e+00, %8606 ], [ %8714, %8681 ]
  %8683 = phi float [ 0.000000e+00, %8606 ], [ %8716, %8681 ]
  %8684 = phi i32 [ 0, %8606 ], [ %8717, %8681 ]
  %8685 = mul i32 %8684, 2
  %8686 = add i32 0, %8685
  %8687 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8686
  %8688 = load float, float* %8687, align 4
  %8689 = mul i32 %8684, 2
  %8690 = add i32 1, %8689
  %8691 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8690
  %8692 = load float, float* %8691, align 4
  %8693 = fmul fast float %8676, %8688
  %8694 = call float @dx.op.tertiary.f32(i32 46, float %8692, float %8679, float %8693)  ; FMad(a,b,c)
  %8695 = fmul fast float %8688, %8677
  %8696 = call float @dx.op.tertiary.f32(i32 46, float %8692, float %8680, float %8695)  ; FMad(a,b,c)
  %8697 = fadd fast float %8694, %8669
  %8698 = fadd fast float %8696, %8670
  %8699 = fmul fast float %8697, %8615
  %8700 = fmul fast float %8698, %8615
  %8701 = call float @dx.op.binary.f32(i32 35, float %8699, float %8611)  ; FMax(a,b)
  %8702 = call float @dx.op.binary.f32(i32 35, float %8700, float %8611)  ; FMax(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8701, float %8612)  ; FMin(a,b)
  %8704 = call float @dx.op.binary.f32(i32 36, float %8702, float %8612)  ; FMin(a,b)
  %8705 = fadd fast float %8703, %8609
  %8706 = fadd fast float %8704, %8610
  %8707 = uitofp i32 %8646 to float
  %8708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8705, float %8706, float %8707, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8709 = extractvalue %dx.types.ResRet.f32 %8708, 0
  %8710 = fsub fast float %8709, %8672
  %8711 = fsub fast float %8710, %8619
  %8712 = fcmp fast ogt float %8711, 0.000000e+00
  %8713 = select i1 %8712, float 1.000000e+00, float 0.000000e+00
  %8714 = fadd fast float %8713, %8682
  %8715 = select i1 %8712, float %8711, float 0.000000e+00
  %8716 = fadd fast float %8715, %8683
  %8717 = add nuw nsw i32 %8684, 1
  %8718 = icmp eq i32 %8717, 8
  br i1 %8718, label %8719, label %8681

; <label>:8719                                    ; preds = %8681
  %8720 = fdiv fast float 1.000000e+00, %8714
  %8721 = fmul fast float %8720, %8716
  %8722 = fdiv fast float 1.000000e+00, %8672
  %8723 = fmul fast float %8721, %8722
  %8724 = call float @dx.op.unary.f32(i32 7, float %8723)  ; Saturate(value)
  %8725 = call float @dx.op.binary.f32(i32 35, float %8724, float 0.000000e+00)  ; FMax(a,b)
  %8726 = fmul fast float %8714, 1.250000e-01
  %8727 = call float @dx.op.unary.f32(i32 7, float %8726)  ; Saturate(value)
  %8728 = fmul fast float %8727, 2.000000e+00
  %8729 = fadd fast float %8728, -1.000000e+00
  %8730 = fcmp fast ogt float %8729, 0.000000e+00
  %8731 = fcmp fast olt float %8729, 0.000000e+00
  %8732 = zext i1 %8730 to i32
  %8733 = zext i1 %8731 to i32
  %8734 = sub nsw i32 %8732, %8733
  %8735 = sitofp i32 %8734 to float
  %8736 = fmul fast float %8735, %8729
  %8737 = fsub fast float 1.000000e+00, %8736
  %8738 = fmul fast float %8737, %8737
  %8739 = fmul fast float %8738, %8737
  %8740 = fsub fast float %8737, %8739
  %8741 = fmul fast float %8740, %8725
  %8742 = fsub fast float 1.000000e+00, %8739
  %8743 = fsub fast float %8742, %8741
  %8744 = fmul fast float %8735, 5.000000e-01
  %8745 = fmul fast float %8744, %8743
  %8746 = fsub fast float -5.000000e-01, %8745
  %8747 = fmul fast float %8746, %8580
  %8748 = fadd fast float %8747, 1.000000e+00
  %8749 = fmul fast float %8748, %8592
  br label %8750

; <label>:8750                                    ; preds = %8719, %8604
  %8751 = phi float [ %8749, %8719 ], [ %8592, %8604 ]
  %8752 = call float @dx.op.binary.f32(i32 36, float %8751, float %8751)  ; FMin(a,b)
  %8753 = call float @dx.op.binary.f32(i32 36, float %8751, float %8752)  ; FMin(a,b)
  %8754 = fcmp fast ogt float %8753, 0.000000e+00
  br i1 %8754, label %8755, label %8596, !dx.controlflow.hints !132

; <label>:8755                                    ; preds = %8750
  %8756 = fmul fast float %8751, %8513
  %8757 = fmul fast float %8751, %8514
  %8758 = fmul fast float %8751, %8515
  %8759 = fsub fast float %8497, %5567
  %8760 = fcmp fast ogt float %8759, 0.000000e+00
  %8761 = fsub fast float %166, %5567
  %8762 = fcmp fast ogt float %8761, 0.000000e+00
  %8763 = xor i1 %8762, %8760
  %8764 = fsub fast float %5567, %8497
  %8765 = fmul fast float %8764, 2.000000e+00
  %8766 = fadd fast float %8765, %8497
  %8767 = select i1 %8763, float %8497, float %8766
  %8768 = fsub fast float %8767, %166
  %8769 = call float @dx.op.dot3.f32(i32 55, float %8524, float %8525, float %8768, float %8524, float %8525, float %8768)  ; Dot3(ax,ay,az,bx,by,bz)
  %8770 = call float @dx.op.unary.f32(i32 25, float %8769)  ; Rsqrt(value)
  %8771 = fmul fast float %8770, %8524
  %8772 = fmul fast float %8770, %8525
  %8773 = fmul fast float %8770, %8768
  %8774 = fsub fast float %5567, %166
  %8775 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8774)  ; Dot3(ax,ay,az,bx,by,bz)
  %8776 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8771, float %8772, float %8773)  ; Dot3(ax,ay,az,bx,by,bz)
  %8777 = fdiv fast float 1.000000e+00, %8776
  %8778 = fmul fast float %8777, %8775
  %8779 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8761, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8780 = fcmp fast ogt float %8779, 0.000000e+00
  %8781 = fcmp fast olt float %8779, 0.000000e+00
  %8782 = zext i1 %8780 to i32
  %8783 = zext i1 %8781 to i32
  %8784 = sub nsw i32 %8782, %8783
  %8785 = sitofp i32 %8784 to float
  %8786 = fsub fast float %8767, %5567
  %8787 = call float @dx.op.dot3.f32(i32 55, float %8524, float %8525, float %8786, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8788 = fcmp fast ogt float %8787, 0.000000e+00
  %8789 = fcmp fast olt float %8787, 0.000000e+00
  %8790 = zext i1 %8788 to i32
  %8791 = zext i1 %8789 to i32
  %8792 = sub nsw i32 %8790, %8791
  %8793 = sitofp i32 %8792 to float
  %8794 = fcmp fast une float %8785, %8793
  br i1 %8794, label %8795, label %8805

; <label>:8795                                    ; preds = %8755
  %8796 = fmul fast float %8778, %8773
  %8797 = fmul fast float %8778, %8772
  %8798 = fmul fast float %8778, %8771
  %8799 = fmul fast float %8798, %8798
  %8800 = fmul fast float %8797, %8797
  %8801 = fadd fast float %8799, %8800
  %8802 = fmul fast float %8796, %8796
  %8803 = fadd fast float %8801, %8802
  %8804 = call float @dx.op.unary.f32(i32 24, float %8803)  ; Sqrt(value)
  br label %8817

; <label>:8805                                    ; preds = %8755
  %8806 = icmp slt i32 %8784, 0
  br i1 %8806, label %8807, label %8817

; <label>:8807                                    ; preds = %8805
  %8808 = fsub fast float %164, %8495
  %8809 = fsub fast float %165, %8496
  %8810 = fsub fast float %166, %8767
  %8811 = fmul fast float %8808, %8808
  %8812 = fmul fast float %8809, %8809
  %8813 = fadd fast float %8811, %8812
  %8814 = fmul fast float %8810, %8810
  %8815 = fadd fast float %8813, %8814
  %8816 = call float @dx.op.unary.f32(i32 24, float %8815)  ; Sqrt(value)
  br label %8817

; <label>:8817                                    ; preds = %8807, %8805, %8795
  %8818 = phi float [ %8804, %8795 ], [ %8816, %8807 ], [ 0.000000e+00, %8805 ]
  %8819 = and i1 %8762, %8760
  %8820 = fsub fast float -0.000000e+00, %8818
  %8821 = select i1 %8819, float -0.000000e+00, float %8820
  %8822 = fmul fast float %5564, 0x3FF7154760000000
  %8823 = fmul fast float %8822, %8821
  %8824 = fmul fast float %5565, 0x3FF7154760000000
  %8825 = fmul fast float %8824, %8821
  %8826 = fmul fast float %5566, 0x3FF7154760000000
  %8827 = fmul fast float %8826, %8821
  %8828 = call float @dx.op.unary.f32(i32 21, float %8823)  ; Exp(value)
  %8829 = call float @dx.op.unary.f32(i32 21, float %8825)  ; Exp(value)
  %8830 = call float @dx.op.unary.f32(i32 21, float %8827)  ; Exp(value)
  %8831 = call float @dx.op.unary.f32(i32 7, float %8828)  ; Saturate(value)
  %8832 = call float @dx.op.unary.f32(i32 7, float %8829)  ; Saturate(value)
  %8833 = call float @dx.op.unary.f32(i32 7, float %8830)  ; Saturate(value)
  %8834 = fmul fast float %8756, %8831
  %8835 = fmul fast float %8757, %8832
  %8836 = fmul fast float %8758, %8833
  %8837 = fsub fast float %8530, %184
  %8838 = fsub fast float %8531, %185
  %8839 = fsub fast float %8532, %186
  %8840 = call float @dx.op.dot3.f32(i32 55, float %8837, float %8838, float %8839, float %8837, float %8838, float %8839)  ; Dot3(ax,ay,az,bx,by,bz)
  %8841 = call float @dx.op.unary.f32(i32 25, float %8840)  ; Rsqrt(value)
  %8842 = fmul fast float %8841, %8837
  %8843 = fmul fast float %8841, %8838
  %8844 = fmul fast float %8841, %8839
  %8845 = call float @dx.op.dot3.f32(i32 55, float %8530, float %8531, float %8532, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %8846 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5583, float %8842, float %8843, float %8844)  ; Dot3(ax,ay,az,bx,by,bz)
  %8847 = call float @dx.op.unary.f32(i32 7, float %8845)  ; Saturate(value)
  %8848 = fmul fast float %8847, %8537
  %8849 = fmul fast float %8847, %8847
  %8850 = fmul fast float %8849, %5786
  %8851 = call float @dx.op.unary.f32(i32 7, float %8850)  ; Saturate(value)
  %8852 = fmul fast float %8848, %8851
  %8853 = bitcast float %8527 to i32
  %8854 = ashr i32 %8853, 1
  %8855 = sub nsw i32 1597463007, %8854
  %8856 = bitcast i32 %8855 to float
  %8857 = fmul fast float %8856, %8524
  %8858 = fmul fast float %8856, %8525
  %8859 = fmul fast float %8856, %8526
  %8860 = fsub fast float %8857, %184
  %8861 = fsub fast float %8858, %185
  %8862 = fsub fast float %8859, %186
  %8863 = call float @dx.op.dot3.f32(i32 55, float %8860, float %8861, float %8862, float %8860, float %8861, float %8862)  ; Dot3(ax,ay,az,bx,by,bz)
  %8864 = call float @dx.op.unary.f32(i32 25, float %8863)  ; Rsqrt(value)
  %8865 = fmul fast float %8860, %8864
  %8866 = fmul fast float %8861, %8864
  %8867 = fmul fast float %8862, %8864
  %8868 = call float @dx.op.dot3.f32(i32 55, float %5753, float %5754, float %5755, float %8865, float %8866, float %8867)  ; Dot3(ax,ay,az,bx,by,bz)
  %8869 = fmul fast float %8868, %8868
  %8870 = call float @dx.op.unary.f32(i32 6, float %8845)  ; FAbs(value)
  %8871 = fsub fast float 1.000000e+00, %5779
  %8872 = fmul fast float %5761, %5761
  %8873 = fmul fast float %8872, %8871
  %8874 = fadd fast float %8873, %5779
  %8875 = bitcast float %8874 to i32
  %8876 = ashr i32 %8875, 1
  %8877 = add nsw i32 %8876, 532487669
  %8878 = bitcast i32 %8877 to float
  %8879 = fadd fast float %8878, %5761
  %8880 = fmul fast float %5779, %8869
  %8881 = fsub fast float 1.000000e+00, %8869
  %8882 = fadd fast float %8881, %8880
  %8883 = fmul fast float %8870, %8870
  %8884 = fmul fast float %8883, %8871
  %8885 = fadd fast float %8884, %5779
  %8886 = bitcast float %8885 to i32
  %8887 = ashr i32 %8886, 1
  %8888 = add nsw i32 %8887, 532487669
  %8889 = bitcast i32 %8888 to float
  %8890 = fadd fast float %8889, %8870
  %8891 = fmul fast float %8882, %8882
  %8892 = fmul fast float %8891, %8879
  %8893 = fmul fast float %8892, %8890
  %8894 = fdiv fast float 1.000000e+00, %8893
  %8895 = bitcast float %5779 to i32
  %8896 = sitofp i32 %8895 to float
  %8897 = fmul fast float %8896, 0x3FE7F73180000000
  %8898 = fadd fast float %8897, 0x41AFE27C40000000
  %8899 = fptosi float %8898 to i32
  %8900 = bitcast i32 %8899 to float
  %8901 = fmul fast float %8492, 0x3FD80E9D60000000
  %8902 = fmul fast float %8901, %8856
  %8903 = fadd fast float %8900, %8902
  %8904 = bitcast float %8903 to i32
  %8905 = sub nsw i32 2129859010, %8904
  %8906 = bitcast i32 %8905 to float
  %8907 = fmul fast float %5779, %8894
  %8908 = fmul fast float %8907, %8900
  %8909 = fmul fast float %8908, %8906
  %8910 = fmul fast float %6032, 0x3FF9999980000000
  %8911 = fsub fast float 5.000000e+00, %8910
  %8912 = call float @dx.op.unary.f32(i32 6, float %8846)  ; FAbs(value)
  %8913 = fsub fast float 1.000000e+00, %8912
  %8914 = fmul fast float %6032, 0x41D9660740000000
  %8915 = fadd fast float %8914, 0xC1EFBF8940000000
  %8916 = bitcast float %8913 to i32
  %8917 = sitofp i32 %8916 to float
  %8918 = fmul fast float %8917, %8911
  %8919 = fadd fast float %8915, %8918
  %8920 = fptosi float %8919 to i32
  %8921 = bitcast i32 %8920 to float
  %8922 = fsub fast float 1.000000e+00, %5750
  %8923 = fsub fast float 1.000000e+00, %5751
  %8924 = fsub fast float 1.000000e+00, %5759
  %8925 = fmul fast float %8921, %8922
  %8926 = fmul fast float %8921, %8923
  %8927 = fmul fast float %8921, %8924
  %8928 = fadd fast float %8925, %5750
  %8929 = fadd fast float %8926, %5751
  %8930 = fadd fast float %8927, %5759
  br i1 %6055, label %8931, label %8954

; <label>:8931                                    ; preds = %8817
  %8932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8933 = extractvalue %dx.types.ResRet.f32 %8932, 0
  %8934 = extractvalue %dx.types.ResRet.f32 %8932, 1
  %8935 = extractvalue %dx.types.ResRet.f32 %8932, 2
  %8936 = fadd fast float %8933, -5.000000e-01
  %8937 = fadd fast float %8934, -5.000000e-01
  %8938 = fadd fast float %8935, -5.000000e-01
  %8939 = fmul fast float %5750, 4.000000e+00
  %8940 = fmul fast float %8939, %8922
  %8941 = fmul fast float %8940, %8936
  %8942 = fmul fast float %5751, 4.000000e+00
  %8943 = fmul fast float %8942, %8923
  %8944 = fmul fast float %8943, %8937
  %8945 = fmul fast float %5759, 4.000000e+00
  %8946 = fmul fast float %8945, %8924
  %8947 = fmul fast float %8946, %8938
  %8948 = fadd fast float %8941, %8928
  %8949 = fadd fast float %8944, %8929
  %8950 = fadd fast float %8947, %8930
  %8951 = call float @dx.op.unary.f32(i32 7, float %8948)  ; Saturate(value)
  %8952 = call float @dx.op.unary.f32(i32 7, float %8949)  ; Saturate(value)
  %8953 = call float @dx.op.unary.f32(i32 7, float %8950)  ; Saturate(value)
  br label %8954

; <label>:8954                                    ; preds = %8931, %8817
  %8955 = phi float [ %8951, %8931 ], [ %8928, %8817 ]
  %8956 = phi float [ %8952, %8931 ], [ %8929, %8817 ]
  %8957 = phi float [ %8953, %8931 ], [ %8930, %8817 ]
  %8958 = fmul fast float %8845, 9.843750e-01
  %8959 = fadd fast float %8958, 7.812500e-03
  %8960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8959, float %6036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8961 = extractvalue %dx.types.ResRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.ResRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.ResRet.f32 %8960, 2
  %8964 = extractvalue %dx.types.ResRet.f32 %8960, 3
  %8965 = fsub fast float %8963, %8961
  %8966 = fsub fast float %8964, %8962
  %8967 = fmul fast float %8965, %6042
  %8968 = fmul fast float %8966, %6042
  %8969 = fadd fast float %8967, %8961
  %8970 = fadd fast float %8968, %8962
  %8971 = fmul fast float %8969, %5750
  %8972 = fmul fast float %8969, %5751
  %8973 = fmul fast float %8969, %5759
  %8974 = fadd fast float %8971, %8970
  %8975 = fadd fast float %8972, %8970
  %8976 = fadd fast float %8973, %8970
  br i1 %6055, label %8977, label %9000

; <label>:8977                                    ; preds = %8954
  %8978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %8845, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8979 = extractvalue %dx.types.ResRet.f32 %8978, 0
  %8980 = extractvalue %dx.types.ResRet.f32 %8978, 1
  %8981 = extractvalue %dx.types.ResRet.f32 %8978, 2
  %8982 = fadd fast float %8979, -5.000000e-01
  %8983 = fadd fast float %8980, -5.000000e-01
  %8984 = fadd fast float %8981, -5.000000e-01
  %8985 = fmul fast float %5750, 4.000000e+00
  %8986 = fmul fast float %8985, %8922
  %8987 = fmul fast float %8986, %8982
  %8988 = fmul fast float %5751, 4.000000e+00
  %8989 = fmul fast float %8988, %8923
  %8990 = fmul fast float %8989, %8983
  %8991 = fmul fast float %5759, 4.000000e+00
  %8992 = fmul fast float %8991, %8924
  %8993 = fmul fast float %8992, %8984
  %8994 = fadd fast float %8987, %8974
  %8995 = fadd fast float %8990, %8975
  %8996 = fadd fast float %8993, %8976
  %8997 = call float @dx.op.unary.f32(i32 7, float %8994)  ; Saturate(value)
  %8998 = call float @dx.op.unary.f32(i32 7, float %8995)  ; Saturate(value)
  %8999 = call float @dx.op.unary.f32(i32 7, float %8996)  ; Saturate(value)
  br label %9000

; <label>:9000                                    ; preds = %8977, %8954
  %9001 = phi float [ %8997, %8977 ], [ %8974, %8954 ]
  %9002 = phi float [ %8998, %8977 ], [ %8975, %8954 ]
  %9003 = phi float [ %8999, %8977 ], [ %8976, %8954 ]
  %9004 = call float @dx.op.binary.f32(i32 35, float %9002, float %9003)  ; FMax(a,b)
  %9005 = call float @dx.op.binary.f32(i32 35, float %9001, float %9004)  ; FMax(a,b)
  %9006 = fsub fast float 1.000000e+00, %9005
  %9007 = call float @dx.op.binary.f32(i32 35, float %8870, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9008 = fdiv fast float %4459, %9007
  %9009 = fmul fast float %6602, %9008
  %9010 = fmul fast float %6604, %9008
  %9011 = fmul fast float %6606, %9008
  %9012 = call float @dx.op.unary.f32(i32 21, float %9009)  ; Exp(value)
  %9013 = call float @dx.op.unary.f32(i32 21, float %9010)  ; Exp(value)
  %9014 = call float @dx.op.unary.f32(i32 21, float %9011)  ; Exp(value)
  %9015 = call float @dx.op.unary.f32(i32 7, float %9012)  ; Saturate(value)
  %9016 = call float @dx.op.unary.f32(i32 7, float %9013)  ; Saturate(value)
  %9017 = call float @dx.op.unary.f32(i32 7, float %9014)  ; Saturate(value)
  %9018 = select i1 %6599, float %9015, float 0.000000e+00
  %9019 = select i1 %6600, float %9016, float 0.000000e+00
  %9020 = select i1 %6601, float %9017, float 0.000000e+00
  %9021 = fsub fast float -0.000000e+00, %5753
  %9022 = fsub fast float -0.000000e+00, %5754
  %9023 = fsub fast float -0.000000e+00, %5755
  %9024 = call float @dx.op.dot3.f32(i32 55, float %8530, float %8531, float %8532, float %9021, float %9022, float %9023)  ; Dot3(ax,ay,az,bx,by,bz)
  %9025 = call float @dx.op.unary.f32(i32 7, float %9024)  ; Saturate(value)
  %9026 = fmul fast float %9025, %8537
  %9027 = fmul fast float %9025, 9.843750e-01
  %9028 = fadd fast float %9027, 7.812500e-03
  %9029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %9028, float %6036, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9030 = extractvalue %dx.types.ResRet.f32 %9029, 0
  %9031 = extractvalue %dx.types.ResRet.f32 %9029, 1
  %9032 = extractvalue %dx.types.ResRet.f32 %9029, 2
  %9033 = extractvalue %dx.types.ResRet.f32 %9029, 3
  %9034 = fsub fast float %9032, %9030
  %9035 = fsub fast float %9033, %9031
  %9036 = fmul fast float %9034, %6042
  %9037 = fmul fast float %9035, %6042
  %9038 = fadd fast float %9036, %9030
  %9039 = fadd fast float %9037, %9031
  %9040 = fmul fast float %9038, %5750
  %9041 = fmul fast float %9038, %5751
  %9042 = fmul fast float %9038, %5759
  %9043 = fadd fast float %9040, %9039
  %9044 = fadd fast float %9041, %9039
  %9045 = fadd fast float %9042, %9039
  br i1 %6055, label %9046, label %9069

; <label>:9046                                    ; preds = %9000
  %9047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5105, float %9025, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9048 = extractvalue %dx.types.ResRet.f32 %9047, 0
  %9049 = extractvalue %dx.types.ResRet.f32 %9047, 1
  %9050 = extractvalue %dx.types.ResRet.f32 %9047, 2
  %9051 = fadd fast float %9048, -5.000000e-01
  %9052 = fadd fast float %9049, -5.000000e-01
  %9053 = fadd fast float %9050, -5.000000e-01
  %9054 = fmul fast float %5750, 4.000000e+00
  %9055 = fmul fast float %9054, %8922
  %9056 = fmul fast float %9055, %9051
  %9057 = fmul fast float %5751, 4.000000e+00
  %9058 = fmul fast float %9057, %8923
  %9059 = fmul fast float %9058, %9052
  %9060 = fmul fast float %5759, 4.000000e+00
  %9061 = fmul fast float %9060, %8924
  %9062 = fmul fast float %9061, %9053
  %9063 = fadd fast float %9056, %9043
  %9064 = fadd fast float %9059, %9044
  %9065 = fadd fast float %9062, %9045
  %9066 = call float @dx.op.unary.f32(i32 7, float %9063)  ; Saturate(value)
  %9067 = call float @dx.op.unary.f32(i32 7, float %9064)  ; Saturate(value)
  %9068 = call float @dx.op.unary.f32(i32 7, float %9065)  ; Saturate(value)
  br label %9069

; <label>:9069                                    ; preds = %9046, %9000
  %9070 = phi float [ %9066, %9046 ], [ %9043, %9000 ]
  %9071 = phi float [ %9067, %9046 ], [ %9044, %9000 ]
  %9072 = phi float [ %9068, %9046 ], [ %9045, %9000 ]
  %9073 = call float @dx.op.binary.f32(i32 35, float %9071, float %9072)  ; FMax(a,b)
  %9074 = call float @dx.op.binary.f32(i32 35, float %9070, float %9073)  ; FMax(a,b)
  %9075 = fsub fast float 1.000000e+00, %9074
  %9076 = fmul fast float %5776, %6666
  %9077 = fadd fast float %6668, %9076
  %9078 = call float @dx.op.unary.f32(i32 7, float %9077)  ; Saturate(value)
  %9079 = fsub fast float %8857, %5767
  %9080 = fsub fast float %8858, %5768
  %9081 = fsub fast float %8859, %5769
  %9082 = call float @dx.op.dot3.f32(i32 55, float %9079, float %9080, float %9081, float %9079, float %9080, float %9081)  ; Dot3(ax,ay,az,bx,by,bz)
  %9083 = call float @dx.op.unary.f32(i32 25, float %9082)  ; Rsqrt(value)
  %9084 = fmul fast float %9079, %9083
  %9085 = fmul fast float %9080, %9083
  %9086 = fmul fast float %9081, %9083
  %9087 = call float @dx.op.dot3.f32(i32 55, float %9021, float %9022, float %9023, float %9084, float %9085, float %9086)  ; Dot3(ax,ay,az,bx,by,bz)
  %9088 = fmul fast float %9087, %9087
  %9089 = call float @dx.op.unary.f32(i32 6, float %9025)  ; FAbs(value)
  %9090 = call float @dx.op.binary.f32(i32 35, float %9078, float 0x3F847AE140000000)  ; FMax(a,b)
  %9091 = fmul fast float %9090, %9090
  %9092 = fmul fast float %9091, %9091
  %9093 = fsub fast float 1.000000e+00, %9092
  %9094 = fmul fast float %8872, %9093
  %9095 = fadd fast float %9094, %9092
  %9096 = bitcast float %9095 to i32
  %9097 = ashr i32 %9096, 1
  %9098 = add nsw i32 %9097, 532487669
  %9099 = bitcast i32 %9098 to float
  %9100 = fadd fast float %9099, %5761
  %9101 = fmul fast float %9092, %9088
  %9102 = fsub fast float 1.000000e+00, %9088
  %9103 = fadd fast float %9102, %9101
  %9104 = fmul fast float %9089, %9089
  %9105 = fmul fast float %9104, %9093
  %9106 = fadd fast float %9105, %9092
  %9107 = bitcast float %9106 to i32
  %9108 = ashr i32 %9107, 1
  %9109 = add nsw i32 %9108, 532487669
  %9110 = bitcast i32 %9109 to float
  %9111 = fadd fast float %9110, %9089
  %9112 = fmul fast float %9103, %9103
  %9113 = fmul fast float %9112, %9100
  %9114 = fmul fast float %9113, %9111
  %9115 = fdiv fast float 1.000000e+00, %9114
  %9116 = bitcast float %9092 to i32
  %9117 = sitofp i32 %9116 to float
  %9118 = fmul fast float %9117, 0x3FE7F73180000000
  %9119 = fadd fast float %9118, 0x41AFE27C40000000
  %9120 = fptosi float %9119 to i32
  %9121 = bitcast i32 %9120 to float
  %9122 = fadd fast float %9121, %8902
  %9123 = bitcast float %9122 to i32
  %9124 = sub nsw i32 2129859010, %9123
  %9125 = bitcast i32 %9124 to float
  %9126 = fmul fast float %9092, %9115
  %9127 = fmul fast float %9126, %9121
  %9128 = fmul fast float %9127, %9125
  br i1 %8522, label %9129, label %9139

; <label>:9129                                    ; preds = %9069
  %9130 = fmul fast float %9026, %9018
  %9131 = fmul fast float %9026, %9019
  %9132 = fmul fast float %9026, %9020
  %9133 = fmul fast float %9130, %9075
  %9134 = fmul fast float %9133, %9128
  %9135 = fmul fast float %9131, %9075
  %9136 = fmul fast float %9135, %9128
  %9137 = fmul fast float %9132, %9075
  %9138 = fmul fast float %9137, %9128
  br label %9139

; <label>:9139                                    ; preds = %9129, %9069
  %9140 = phi float [ %9134, %9129 ], [ 0.000000e+00, %9069 ]
  %9141 = phi float [ %9136, %9129 ], [ 0.000000e+00, %9069 ]
  %9142 = phi float [ %9138, %9129 ], [ 0.000000e+00, %9069 ]
  %9143 = fmul fast float %8955, %8909
  %9144 = fmul fast float %8956, %8909
  %9145 = fmul fast float %8957, %8909
  %9146 = fsub fast float 1.000000e+00, %8846
  %9147 = bitcast float %9146 to i32
  %9148 = sitofp i32 %9147 to float
  %9149 = fmul fast float %9148, 5.000000e+00
  %9150 = fadd fast float %9149, 0xC1EFBF8940000000
  %9151 = fptosi float %9150 to i32
  %9152 = bitcast i32 %9151 to float
  %9153 = fmul fast float %9152, %5106
  %9154 = fmul fast float %9006, %9153
  %9155 = fmul fast float %9154, %6594
  %9156 = fmul fast float %9154, %6595
  %9157 = fmul fast float %9154, %6596
  %9158 = fadd fast float %9155, %9143
  %9159 = fadd fast float %9156, %9144
  %9160 = fadd fast float %9157, %9145
  %9161 = fmul fast float %9158, %8852
  %9162 = fmul fast float %9159, %8852
  %9163 = fmul fast float %9160, %8852
  %9164 = fadd fast float %9161, %9140
  %9165 = fadd fast float %9162, %9141
  %9166 = fadd fast float %9163, %9142
  %9167 = fmul fast float %8834, %5138
  %9168 = fmul fast float %9167, %8852
  %9169 = fmul fast float %9168, %9006
  %9170 = fmul fast float %8835, %5138
  %9171 = fmul fast float %9170, %8852
  %9172 = fmul fast float %9171, %9006
  %9173 = fmul fast float %8836, %5138
  %9174 = fmul fast float %9173, %8852
  %9175 = fmul fast float %9174, %9006
  %9176 = fadd fast float %9169, %8466
  %9177 = fadd fast float %9172, %8467
  %9178 = fadd fast float %9175, %8468
  %9179 = fmul fast float %9167, %9164
  %9180 = fmul fast float %9170, %9165
  %9181 = fmul fast float %9173, %9166
  %9182 = fadd fast float %9179, %8463
  %9183 = fadd fast float %9180, %8464
  %9184 = fadd fast float %9181, %8465
  br label %8596

; <label>:9185                                    ; preds = %8596
  br label %9186

; <label>:9186                                    ; preds = %9185, %8429
  %9187 = phi float [ %8431, %8429 ], [ %8597, %9185 ]
  %9188 = phi float [ %8432, %8429 ], [ %8598, %9185 ]
  %9189 = phi float [ %8433, %8429 ], [ %8599, %9185 ]
  %9190 = phi float [ %8434, %8429 ], [ %8600, %9185 ]
  %9191 = phi float [ %8435, %8429 ], [ %8601, %9185 ]
  %9192 = phi float [ %8436, %8429 ], [ %8602, %9185 ]
  %9193 = add i32 %8430, 1
  %9194 = icmp ugt i32 %9193, %8426
  br i1 %9194, label %9195, label %8429

; <label>:9195                                    ; preds = %9186
  br label %9196

; <label>:9196                                    ; preds = %9195, %8379, %8369
  %9197 = phi float [ %8370, %8369 ], [ %8370, %8379 ], [ %9187, %9195 ]
  %9198 = phi float [ %8371, %8369 ], [ %8371, %8379 ], [ %9188, %9195 ]
  %9199 = phi float [ %8372, %8369 ], [ %8372, %8379 ], [ %9189, %9195 ]
  %9200 = phi float [ %8373, %8369 ], [ %8373, %8379 ], [ %9190, %9195 ]
  %9201 = phi float [ %8374, %8369 ], [ %8374, %8379 ], [ %9191, %9195 ]
  %9202 = phi float [ %8375, %8369 ], [ %8375, %8379 ], [ %9192, %9195 ]
  %9203 = fmul fast float %6623, %5138
  %9204 = fmul fast float %6624, %5138
  %9205 = fmul fast float %6625, %5138
  %9206 = fadd fast float %9203, 1.000000e+00
  %9207 = fadd fast float %9204, 1.000000e+00
  %9208 = fadd fast float %9205, 1.000000e+00
  %9209 = call float @dx.op.dot3.f32(i32 55, float %9206, float %9207, float %9208, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9210 = fsub fast float 1.000000e+00, %9209
  %9211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.f32 %9211, 0
  %9213 = fmul fast float %9212, %6629
  %9214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9215 = extractvalue %dx.types.CBufRet.f32 %9214, 3
  %9216 = fsub fast float 1.000000e+00, %5109
  %9217 = call float @dx.op.unary.f32(i32 7, float %9216)  ; Saturate(value)
  %9218 = fadd fast float %9202, %5108
  %9219 = fmul fast float %9218, %5109
  %9220 = fmul fast float %9217, %9215
  %9221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9222 = extractvalue %dx.types.CBufRet.f32 %9221, 3
  %9223 = fmul fast float %9200, %5747
  %9224 = fmul fast float %9201, %5748
  %9225 = fmul fast float %9202, %5749
  %9226 = fcmp fast ogt float %97, %218
  %9227 = and i1 %9226, %5570
  %9228 = or i1 %5576, %9227
  %9229 = icmp eq i32 %5569, 2
  %9230 = fcmp fast ole float %97, %218
  %9231 = and i1 %9230, %9229
  %9232 = or i1 %9231, %9228
  br i1 %9227, label %9233, label %9490

; <label>:9233                                    ; preds = %9196
  %9234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9235 = extractvalue %dx.types.CBufRet.f32 %9234, 2
  %9236 = extractvalue %dx.types.CBufRet.f32 %9234, 3
  %9237 = fmul fast float %9235, %109
  %9238 = fmul fast float %9236, %110
  %9239 = call float @dx.op.unary.f32(i32 7, float %9237)  ; Saturate(value)
  %9240 = call float @dx.op.unary.f32(i32 7, float %9238)  ; Saturate(value)
  %9241 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9239, float %9240, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9242 = extractvalue %dx.types.ResRet.f32 %9241, 0
  %9243 = extractvalue %dx.types.ResRet.f32 %9241, 1
  %9244 = extractvalue %dx.types.ResRet.f32 %9241, 2
  %9245 = extractvalue %dx.types.ResRet.f32 %9241, 3
  %9246 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9239, float %9240, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9247 = extractvalue %dx.types.ResRet.f32 %9246, 0
  %9248 = extractvalue %dx.types.ResRet.f32 %9246, 1
  %9249 = extractvalue %dx.types.ResRet.f32 %9246, 2
  %9250 = extractvalue %dx.types.ResRet.f32 %9246, 3
  %9251 = call float @dx.op.binary.f32(i32 35, float %9243, float %9244)  ; FMax(a,b)
  %9252 = call float @dx.op.binary.f32(i32 35, float %9242, float %9251)  ; FMax(a,b)
  %9253 = call float @dx.op.binary.f32(i32 35, float %9252, float %9245)  ; FMax(a,b)
  %9254 = call float @dx.op.binary.f32(i32 36, float %9248, float %9249)  ; FMin(a,b)
  %9255 = call float @dx.op.binary.f32(i32 36, float %9247, float %9254)  ; FMin(a,b)
  %9256 = call float @dx.op.binary.f32(i32 36, float %9255, float %9250)  ; FMin(a,b)
  %9257 = fmul fast float %9253, 2.550000e+02
  %9258 = fadd fast float %9257, 0x3F70101020000000
  %9259 = fptoui float %9258 to i32
  %9260 = fmul fast float %9256, 2.550000e+02
  %9261 = fadd fast float %9260, 0x3F70101020000000
  %9262 = fptoui float %9261 to i32
  %9263 = icmp ult i32 %9259, %9262
  br i1 %9263, label %9264, label %9432

; <label>:9264                                    ; preds = %9233
  %9265 = fcmp fast ogt float %96, 9.843750e-01
  %9266 = fadd fast float %97, -4.000000e+00
  %9267 = select i1 %9265, float -4.000000e+00, float %9266
  %9268 = call float @dx.op.binary.f32(i32 35, float %9267, float 0.000000e+00)  ; FMax(a,b)
  %9269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9270 = extractvalue %dx.types.CBufRet.f32 %9269, 0
  %9271 = fadd fast float %9270, %9268
  %9272 = extractvalue %dx.types.CBufRet.f32 %9269, 2
  %9273 = fmul fast float %9271, %9272
  %9274 = call float @dx.op.unary.f32(i32 23, float %9273)  ; Log(value)
  %9275 = extractvalue %dx.types.CBufRet.f32 %9269, 3
  %9276 = fmul fast float %9275, %9274
  %9277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9278 = extractvalue %dx.types.CBufRet.f32 %9277, 2
  %9279 = fmul fast float %9276, %9278
  %9280 = call float @dx.op.unary.f32(i32 7, float %9279)  ; Saturate(value)
  %9281 = uitofp i32 %9259 to float
  %9282 = uitofp i32 %9262 to float
  %9283 = fadd fast float %9281, 5.000000e-01
  %9284 = fadd fast float %9282, 5.000000e-01
  %9285 = fmul fast float %9278, %9283
  %9286 = fmul fast float %9278, %9284
  %9287 = fadd fast float %9285, 0x3F0FFB4800000000
  %9288 = fadd fast float %9286, 0xBF0FFB4800000000
  %9289 = call float @dx.op.binary.f32(i32 35, float %9280, float %9287)  ; FMax(a,b)
  %9290 = call float @dx.op.binary.f32(i32 36, float %9289, float %9288)  ; FMin(a,b)
  %9291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.f32 %9291, 1
  %9293 = extractvalue %dx.types.CBufRet.f32 %9291, 2
  %9294 = extractvalue %dx.types.CBufRet.f32 %9291, 0
  %9295 = fmul fast float %9292, %9290
  %9296 = fadd fast float %9294, %9295
  %9297 = fadd fast float %9294, %9293
  %9298 = fsub fast float %9292, %9293
  %9299 = fadd fast float %9298, %9294
  %9300 = call float @dx.op.binary.f32(i32 35, float %9296, float %9297)  ; FMax(a,b)
  %9301 = call float @dx.op.binary.f32(i32 36, float %9300, float %9299)  ; FMin(a,b)
  %9302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9239, float %9240, float %9301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9303 = extractvalue %dx.types.ResRet.f32 %9302, 0
  %9304 = extractvalue %dx.types.ResRet.f32 %9302, 1
  %9305 = extractvalue %dx.types.ResRet.f32 %9302, 2
  %9306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9307 = extractvalue %dx.types.CBufRet.i32 %9306, 0
  %9308 = extractvalue %dx.types.CBufRet.i32 %9306, 1
  %9309 = uitofp i32 %9307 to float
  %9310 = uitofp i32 %9308 to float
  %9311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9312 = extractvalue %dx.types.CBufRet.f32 %9311, 0
  %9313 = extractvalue %dx.types.CBufRet.f32 %9311, 1
  %9314 = fmul fast float %9309, %9239
  %9315 = fmul fast float %9310, %9240
  %9316 = fadd fast float %9314, -5.000000e-01
  %9317 = fadd fast float %9315, -5.000000e-01
  %9318 = call float @dx.op.unary.f32(i32 22, float %9316)  ; Frc(value)
  %9319 = call float @dx.op.unary.f32(i32 22, float %9317)  ; Frc(value)
  %9320 = fmul fast float %9318, %9318
  %9321 = fmul fast float %9320, %9318
  %9322 = fsub fast float 3.000000e+00, %9318
  %9323 = fmul fast float %9320, %9322
  %9324 = fmul fast float %9318, 3.000000e+00
  %9325 = fmul fast float %9321, 3.000000e+00
  %9326 = fmul fast float %9320, 6.000000e+00
  %9327 = fsub fast float %9325, %9326
  %9328 = fadd fast float %9327, 4.000000e+00
  %9329 = fmul fast float %9328, 0x3FC5555560000000
  %9330 = fmul fast float %9321, -3.000000e+00
  %9331 = fadd fast float %9320, %9318
  %9332 = fmul fast float %9331, 3.000000e+00
  %9333 = fadd fast float %9330, 1.000000e+00
  %9334 = fadd fast float %9333, %9332
  %9335 = fmul fast float %9321, 0x3FC5555560000000
  %9336 = fmul fast float %9319, %9319
  %9337 = fmul fast float %9336, %9319
  %9338 = fsub fast float 3.000000e+00, %9319
  %9339 = fmul fast float %9336, %9338
  %9340 = fmul fast float %9319, 3.000000e+00
  %9341 = fmul fast float %9337, 3.000000e+00
  %9342 = fmul fast float %9336, 6.000000e+00
  %9343 = fsub fast float %9341, %9342
  %9344 = fadd fast float %9343, 4.000000e+00
  %9345 = fmul fast float %9344, 0x3FC5555560000000
  %9346 = fmul fast float %9337, -3.000000e+00
  %9347 = fadd fast float %9336, %9319
  %9348 = fmul fast float %9347, 3.000000e+00
  %9349 = fadd fast float %9346, 1.000000e+00
  %9350 = fadd fast float %9349, %9348
  %9351 = fmul fast float %9337, 0x3FC5555560000000
  %9352 = fadd fast float %9318, 1.000000e+00
  %9353 = fsub fast float 1.000000e+00, %9324
  %9354 = fadd fast float %9353, %9323
  %9355 = fadd fast float %9354, %9328
  %9356 = fmul fast float %9355, 0x3FC5555560000000
  %9357 = fdiv fast float %9329, %9356
  %9358 = fsub fast float %9352, %9357
  %9359 = fsub fast float 1.000000e+00, %9318
  %9360 = fadd fast float %9334, %9321
  %9361 = fmul fast float %9360, 0x3FC5555560000000
  %9362 = fdiv fast float %9335, %9361
  %9363 = fadd fast float %9359, %9362
  %9364 = fadd fast float %9319, 1.000000e+00
  %9365 = fsub fast float 1.000000e+00, %9340
  %9366 = fadd fast float %9365, %9339
  %9367 = fadd fast float %9366, %9344
  %9368 = fmul fast float %9367, 0x3FC5555560000000
  %9369 = fdiv fast float %9345, %9368
  %9370 = fsub fast float %9364, %9369
  %9371 = fsub fast float 1.000000e+00, %9319
  %9372 = fadd fast float %9350, %9337
  %9373 = fmul fast float %9372, 0x3FC5555560000000
  %9374 = fdiv fast float %9351, %9373
  %9375 = fadd fast float %9374, %9371
  %9376 = fmul fast float %9358, %9312
  %9377 = fsub fast float %9239, %9376
  %9378 = fmul fast float %9363, %9312
  %9379 = fadd fast float %9378, %9239
  %9380 = fmul fast float %9375, %9313
  %9381 = fadd fast float %9380, %9240
  %9382 = fmul fast float %9370, %9313
  %9383 = fsub fast float %9240, %9382
  %9384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9377, float %9383, float %9301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9385 = extractvalue %dx.types.ResRet.f32 %9384, 0
  %9386 = extractvalue %dx.types.ResRet.f32 %9384, 1
  %9387 = extractvalue %dx.types.ResRet.f32 %9384, 2
  %9388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9379, float %9383, float %9301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9389 = extractvalue %dx.types.ResRet.f32 %9388, 0
  %9390 = extractvalue %dx.types.ResRet.f32 %9388, 1
  %9391 = extractvalue %dx.types.ResRet.f32 %9388, 2
  %9392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9377, float %9381, float %9301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9393 = extractvalue %dx.types.ResRet.f32 %9392, 0
  %9394 = extractvalue %dx.types.ResRet.f32 %9392, 1
  %9395 = extractvalue %dx.types.ResRet.f32 %9392, 2
  %9396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9379, float %9381, float %9301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9397 = extractvalue %dx.types.ResRet.f32 %9396, 0
  %9398 = extractvalue %dx.types.ResRet.f32 %9396, 1
  %9399 = extractvalue %dx.types.ResRet.f32 %9396, 2
  %9400 = fsub fast float %9393, %9385
  %9401 = fsub fast float %9394, %9386
  %9402 = fsub fast float %9395, %9387
  %9403 = fmul fast float %9400, %9373
  %9404 = fmul fast float %9401, %9373
  %9405 = fmul fast float %9402, %9373
  %9406 = fadd fast float %9403, %9385
  %9407 = fadd fast float %9404, %9386
  %9408 = fadd fast float %9405, %9387
  %9409 = fsub fast float %9397, %9389
  %9410 = fsub fast float %9398, %9390
  %9411 = fsub fast float %9399, %9391
  %9412 = fmul fast float %9409, %9373
  %9413 = fmul fast float %9410, %9373
  %9414 = fmul fast float %9411, %9373
  %9415 = fsub fast float %9389, %9406
  %9416 = fadd fast float %9415, %9412
  %9417 = fsub fast float %9390, %9407
  %9418 = fadd fast float %9417, %9413
  %9419 = fsub fast float %9391, %9408
  %9420 = fadd fast float %9419, %9414
  %9421 = fmul fast float %9416, %9361
  %9422 = fmul fast float %9418, %9361
  %9423 = fmul fast float %9420, %9361
  %9424 = fadd fast float %9421, %9406
  %9425 = fadd fast float %9422, %9407
  %9426 = fadd fast float %9423, %9408
  %9427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9428 = extractvalue %dx.types.CBufRet.f32 %9427, 1
  %9429 = fmul fast float %9424, %9428
  %9430 = fmul fast float %9425, %9428
  %9431 = fmul fast float %9426, %9428
  br label %9432

; <label>:9432                                    ; preds = %9264, %9233
  %9433 = phi float [ %9303, %9264 ], [ 1.000000e+00, %9233 ]
  %9434 = phi float [ %9304, %9264 ], [ 1.000000e+00, %9233 ]
  %9435 = phi float [ %9305, %9264 ], [ 1.000000e+00, %9233 ]
  %9436 = phi float [ %9429, %9264 ], [ 0.000000e+00, %9233 ]
  %9437 = phi float [ %9430, %9264 ], [ 0.000000e+00, %9233 ]
  %9438 = phi float [ %9431, %9264 ], [ 0.000000e+00, %9233 ]
  %9439 = fmul fast float %9436, %9210
  %9440 = fmul fast float %9437, %9210
  %9441 = fmul fast float %9438, %9210
  %9442 = call float @dx.op.dot3.f32(i32 55, float %9433, float %9434, float %9435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9443 = call float @dx.op.dot3.f32(i32 55, float %9439, float %9440, float %9441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9444 = select i1 %258, float %9442, float %9433
  %9445 = select i1 %258, float %9442, float %9434
  %9446 = select i1 %258, float 1.000000e+00, float %9435
  %9447 = select i1 %258, float %9443, float %9439
  %9448 = select i1 %258, float 0.000000e+00, float %9440
  %9449 = select i1 %258, float 0.000000e+00, float %9441
  %9450 = fmul fast float %9444, %9223
  %9451 = fmul fast float %9445, %9224
  %9452 = fmul fast float %9446, %9225
  %9453 = fadd fast float %9450, %9447
  %9454 = fadd fast float %9451, %9448
  %9455 = fadd fast float %9449, %9452
  %9456 = fmul fast float %9444, %9197
  %9457 = fmul fast float %9445, %9198
  %9458 = fmul fast float %9446, %9199
  %9459 = fmul fast float %134, %9235
  %9460 = fmul fast float %136, %9236
  %9461 = fsub fast float 1.000000e+00, %9459
  %9462 = fsub fast float 1.000000e+00, %9460
  %9463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9464 = extractvalue %dx.types.CBufRet.f32 %9463, 0
  %9465 = extractvalue %dx.types.CBufRet.f32 %9463, 1
  %9466 = extractvalue %dx.types.CBufRet.f32 %9463, 2
  %9467 = fmul fast float %9461, %9464
  %9468 = fmul fast float %9461, %9465
  %9469 = fmul fast float %9461, %9466
  %9470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9471 = extractvalue %dx.types.CBufRet.f32 %9470, 0
  %9472 = extractvalue %dx.types.CBufRet.f32 %9470, 1
  %9473 = extractvalue %dx.types.CBufRet.f32 %9470, 2
  %9474 = fmul fast float %9462, %9471
  %9475 = fmul fast float %9462, %9472
  %9476 = fmul fast float %9462, %9473
  %9477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9478 = extractvalue %dx.types.CBufRet.f32 %9477, 0
  %9479 = extractvalue %dx.types.CBufRet.f32 %9477, 1
  %9480 = extractvalue %dx.types.CBufRet.f32 %9477, 2
  %9481 = fadd fast float %9474, %9478
  %9482 = fadd fast float %9481, %9467
  %9483 = fadd fast float %9475, %9479
  %9484 = fadd fast float %9483, %9468
  %9485 = fadd fast float %9476, %9480
  %9486 = fadd fast float %9485, %9469
  %9487 = fmul fast float %9482, %218
  %9488 = fmul fast float %9484, %218
  %9489 = fmul fast float %9486, %218
  br label %9490

; <label>:9490                                    ; preds = %9432, %9196
  %9491 = phi float [ %9487, %9432 ], [ %164, %9196 ]
  %9492 = phi float [ %9488, %9432 ], [ %165, %9196 ]
  %9493 = phi float [ %9489, %9432 ], [ %166, %9196 ]
  %9494 = phi float [ %218, %9432 ], [ %97, %9196 ]
  %9495 = phi float [ %9453, %9432 ], [ %9223, %9196 ]
  %9496 = phi float [ %9454, %9432 ], [ %9224, %9196 ]
  %9497 = phi float [ %9455, %9432 ], [ %9225, %9196 ]
  %9498 = phi float [ %9456, %9432 ], [ %9197, %9196 ]
  %9499 = phi float [ %9457, %9432 ], [ %9198, %9196 ]
  %9500 = phi float [ %9458, %9432 ], [ %9199, %9196 ]
  %9501 = phi float [ %9433, %9432 ], [ 1.000000e+00, %9196 ]
  br i1 %9232, label %10656, label %9502

; <label>:9502                                    ; preds = %9490
  %9503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9504 = extractvalue %dx.types.CBufRet.f32 %9503, 0
  %9505 = extractvalue %dx.types.CBufRet.f32 %9503, 1
  %9506 = extractvalue %dx.types.CBufRet.f32 %9503, 2
  %9507 = extractvalue %dx.types.CBufRet.f32 %9503, 3
  %9508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9509 = extractvalue %dx.types.CBufRet.f32 %9508, 0
  %9510 = extractvalue %dx.types.CBufRet.f32 %9508, 1
  %9511 = extractvalue %dx.types.CBufRet.f32 %9508, 2
  %9512 = extractvalue %dx.types.CBufRet.f32 %9508, 3
  %9513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9514 = extractvalue %dx.types.CBufRet.f32 %9513, 0
  %9515 = extractvalue %dx.types.CBufRet.f32 %9513, 1
  %9516 = extractvalue %dx.types.CBufRet.f32 %9513, 2
  %9517 = extractvalue %dx.types.CBufRet.f32 %9513, 3
  %9518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9519 = extractvalue %dx.types.CBufRet.f32 %9518, 0
  %9520 = extractvalue %dx.types.CBufRet.f32 %9518, 1
  %9521 = extractvalue %dx.types.CBufRet.f32 %9518, 2
  %9522 = extractvalue %dx.types.CBufRet.f32 %9518, 3
  %9523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9524 = extractvalue %dx.types.CBufRet.f32 %9523, 3
  %9525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9526 = extractvalue %dx.types.CBufRet.f32 %9525, 3
  %9527 = extractvalue %dx.types.CBufRet.f32 %9525, 0
  %9528 = extractvalue %dx.types.CBufRet.f32 %9525, 1
  %9529 = extractvalue %dx.types.CBufRet.f32 %9525, 2
  %9530 = fcmp fast olt float %9529, -5.000000e-01
  %9531 = call float @dx.op.dot3.f32(i32 55, float %9491, float %9492, float %9493, float %9491, float %9492, float %9493)  ; Dot3(ax,ay,az,bx,by,bz)
  %9532 = call float @dx.op.unary.f32(i32 25, float %9531)  ; Rsqrt(value)
  %9533 = fmul fast float %9532, %9531
  %9534 = fmul fast float %9532, %9491
  %9535 = fmul fast float %9532, %9492
  %9536 = fmul fast float %9532, %9493
  %9537 = fadd fast float %9533, %9507
  %9538 = call float @dx.op.dot3.f32(i32 55, float %9534, float %9535, float %9536, float %9504, float %9505, float %9506)  ; Dot3(ax,ay,az,bx,by,bz)
  %9539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.i32 %9539, 1
  %9541 = and i32 %9540, 1
  %9542 = icmp ne i32 %9541, 0
  %9543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9544 = extractvalue %dx.types.CBufRet.f32 %9543, 2
  %9545 = fcmp fast ogt float %9544, 0.000000e+00
  %9546 = and i1 %9542, %9545
  br i1 %9546, label %9547, label %9953, !dx.controlflow.hints !133

; <label>:9547                                    ; preds = %9502
  %9548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.f32 %9548, 3
  %9550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9551 = extractvalue %dx.types.CBufRet.f32 %9550, 2
  %9552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9553 = extractvalue %dx.types.CBufRet.f32 %9552, 2
  %9554 = fsub fast float %9551, %9553
  %9555 = and i32 %9540, 2
  %9556 = extractvalue %dx.types.CBufRet.i32 %9539, 0
  %9557 = call i32 @dx.op.binary.i32(i32 40, i32 %9556, i32 3)  ; UMin(a,b)
  %9558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9559 = extractvalue %dx.types.CBufRet.f32 %9558, 0
  %9560 = extractvalue %dx.types.CBufRet.f32 %9558, 1
  %9561 = extractvalue %dx.types.CBufRet.f32 %9552, 0
  %9562 = extractvalue %dx.types.CBufRet.f32 %9552, 1
  %9563 = fsub fast float %9559, %9561
  %9564 = fsub fast float %9560, %9562
  %9565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9566 = extractvalue %dx.types.CBufRet.f32 %9565, 0
  %9567 = fcmp fast ogt float %9566, 0.000000e+00
  %9568 = fsub fast float -0.000000e+00, %9563
  %9569 = fsub fast float -0.000000e+00, %9564
  %9570 = call float @dx.op.dot2.f32(i32 54, float %9534, float %9535, float %9534, float %9535)  ; Dot2(ax,ay,bx,by)
  %9571 = call float @dx.op.dot2.f32(i32 54, float %9534, float %9535, float %9568, float %9569)  ; Dot2(ax,ay,bx,by)
  %9572 = fmul fast float %9571, 2.000000e+00
  %9573 = call float @dx.op.dot2.f32(i32 54, float %9568, float %9569, float %9568, float %9569)  ; Dot2(ax,ay,bx,by)
  %9574 = fmul fast float %9566, %9566
  %9575 = fsub fast float %9573, %9574
  %9576 = fmul fast float %9572, %9572
  %9577 = fmul fast float %9570, 4.000000e+00
  %9578 = fmul fast float %9577, %9575
  %9579 = fsub fast float %9576, %9578
  %9580 = fcmp fast ogt float %9579, 0.000000e+00
  br i1 %9580, label %9581, label %9596

; <label>:9581                                    ; preds = %9547
  %9582 = fcmp fast ogt float %9572, 0.000000e+00
  %9583 = call float @dx.op.unary.f32(i32 24, float %9579)  ; Sqrt(value)
  %9584 = fsub fast float -0.000000e+00, %9583
  %9585 = select i1 %9582, float %9583, float %9584
  %9586 = fadd fast float %9585, %9572
  %9587 = fmul float %9586, -5.000000e-01
  %9588 = fdiv fast float %9587, %9570
  %9589 = call float @dx.op.binary.f32(i32 35, float %9588, float 0.000000e+00)  ; FMax(a,b)
  %9590 = call float @dx.op.binary.f32(i32 36, float %9533, float %9589)  ; FMin(a,b)
  %9591 = fdiv fast float %9575, %9587
  %9592 = call float @dx.op.binary.f32(i32 35, float %9591, float 0.000000e+00)  ; FMax(a,b)
  %9593 = call float @dx.op.binary.f32(i32 36, float %9533, float %9592)  ; FMin(a,b)
  %9594 = call float @dx.op.binary.f32(i32 36, float %9590, float %9593)  ; FMin(a,b)
  %9595 = call float @dx.op.binary.f32(i32 35, float %9590, float %9593)  ; FMax(a,b)
  br label %9596

; <label>:9596                                    ; preds = %9581, %9547
  %9597 = phi float [ %9595, %9581 ], [ -1.000000e+00, %9547 ]
  %9598 = phi float [ %9594, %9581 ], [ -1.000000e+00, %9547 ]
  %9599 = phi i1 [ true, %9581 ], [ false, %9547 ]
  %9600 = and i1 %9567, %9599
  br i1 %9600, label %9601, label %9603

; <label>:9601                                    ; preds = %9596
  %9602 = fcmp fast oeq float %9598, %9597
  br i1 %9602, label %9906, label %9604

; <label>:9603                                    ; preds = %9596
  br i1 %9567, label %9906, label %9604

; <label>:9604                                    ; preds = %9603, %9601
  %9605 = phi float [ %9533, %9603 ], [ %9597, %9601 ]
  %9606 = phi float [ 0.000000e+00, %9603 ], [ %9598, %9601 ]
  %9607 = icmp ne i32 %9555, 0
  %9608 = fmul fast float %9605, %9536
  %9609 = fadd fast float %9608, %9549
  %9610 = fmul fast float %9609, %9605
  %9611 = select i1 %9607, float 0.000000e+00, float %9610
  %9612 = fcmp fast oeq float %9536, 0.000000e+00
  %9613 = fdiv fast float %9554, %9536
  %9614 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9613)  ; FMax(a,b)
  %9615 = select i1 %9612, float %9605, float %9614
  %9616 = call float @dx.op.binary.f32(i32 36, float %9605, float %9615)  ; FMin(a,b)
  %9617 = fcmp fast ogt float %9536, 0.000000e+00
  %9618 = fcmp fast olt float %9554, 0.000000e+00
  br i1 %9617, label %9619, label %9676

; <label>:9619                                    ; preds = %9604
  %9620 = icmp eq i32 %9555, 0
  br i1 %9618, label %9621, label %9665

; <label>:9621                                    ; preds = %9619
  %9622 = select i1 %9620, float %9605, float 0.000000e+00
  %9623 = fsub fast float -0.000000e+00, %9622
  %9624 = call float @dx.op.unary.f32(i32 6, float %9623)  ; FAbs(value)
  %9625 = fmul fast float %9622, %9536
  %9626 = fadd fast float %9625, %9549
  %9627 = fmul fast float %9624, %9626
  %9628 = fsub fast float %9611, %9627
  %9629 = fsub fast float %9605, %9624
  %9630 = select i1 %9620, float %9629, float 0.000000e+00
  %9631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9632 = extractvalue %dx.types.CBufRet.f32 %9631, 0
  %9633 = extractvalue %dx.types.CBufRet.f32 %9631, 1
  %9634 = extractvalue %dx.types.CBufRet.f32 %9631, 2
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 0
  %9637 = extractvalue %dx.types.CBufRet.f32 %9635, 1
  %9638 = extractvalue %dx.types.CBufRet.f32 %9635, 2
  %9639 = extractvalue %dx.types.CBufRet.f32 %9635, 3
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 3
  %9642 = call float @dx.op.binary.f32(i32 36, float %9628, float %9641)  ; FMin(a,b)
  %9643 = fmul fast float %9639, %9630
  %9644 = call float @dx.op.unary.f32(i32 7, float %9643)  ; Saturate(value)
  %9645 = fsub fast float %9636, %9632
  %9646 = fsub fast float %9637, %9633
  %9647 = fsub fast float %9638, %9634
  %9648 = fmul fast float %9644, %9645
  %9649 = fmul fast float %9644, %9646
  %9650 = fmul fast float %9644, %9647
  %9651 = fadd fast float %9648, %9632
  %9652 = fadd fast float %9649, %9633
  %9653 = fadd fast float %9650, %9634
  %9654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9655 = extractvalue %dx.types.CBufRet.f32 %9654, 0
  %9656 = extractvalue %dx.types.CBufRet.f32 %9654, 1
  %9657 = fadd fast float %9656, %9655
  %9658 = call float @dx.op.unary.f32(i32 7, float %9657)  ; Saturate(value)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9654, 2
  %9660 = extractvalue %dx.types.CBufRet.f32 %9654, 3
  %9661 = fadd fast float %9660, %9659
  %9662 = call float @dx.op.unary.f32(i32 7, float %9661)  ; Saturate(value)
  %9663 = fmul fast float %9658, %9642
  %9664 = fmul fast float %9663, %9662
  br label %9906

; <label>:9665                                    ; preds = %9619
  br i1 %9620, label %9666, label %9687

; <label>:9666                                    ; preds = %9665
  %9667 = call float @dx.op.binary.f32(i32 36, float %9616, float %9606)  ; FMin(a,b)
  %9668 = fsub fast float %9616, %9667
  %9669 = fsub fast float %9668, %9605
  %9670 = call float @dx.op.unary.f32(i32 6, float %9669)  ; FAbs(value)
  %9671 = fadd fast float %9668, %9605
  %9672 = fmul fast float %9671, %9536
  %9673 = fadd fast float %9672, %9549
  %9674 = fmul fast float %9673, %9670
  %9675 = fsub fast float %9611, %9674
  br label %9687

; <label>:9676                                    ; preds = %9604
  br i1 %9618, label %9677, label %9687

; <label>:9677                                    ; preds = %9676
  %9678 = call float @dx.op.binary.f32(i32 35, float %9606, float %9616)  ; FMax(a,b)
  %9679 = icmp eq i32 %9555, 0
  %9680 = select i1 %9679, float %9616, float 0.000000e+00
  %9681 = fsub fast float -0.000000e+00, %9680
  %9682 = call float @dx.op.unary.f32(i32 6, float %9681)  ; FAbs(value)
  %9683 = fmul fast float %9680, %9536
  %9684 = fadd fast float %9683, %9549
  %9685 = fmul fast float %9682, %9684
  %9686 = fsub fast float %9611, %9685
  br label %9687

; <label>:9687                                    ; preds = %9677, %9676, %9666, %9665
  %9688 = phi float [ %9606, %9665 ], [ %9606, %9666 ], [ %9678, %9677 ], [ %9606, %9676 ]
  %9689 = phi float [ 0.000000e+00, %9665 ], [ %9670, %9666 ], [ %9682, %9677 ], [ 0.000000e+00, %9676 ]
  %9690 = phi float [ %9611, %9665 ], [ %9675, %9666 ], [ %9686, %9677 ], [ %9611, %9676 ]
  %9691 = phi float [ %9616, %9665 ], [ %9616, %9666 ], [ %9605, %9677 ], [ %9605, %9676 ]
  %9692 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9692, align 4, !tbaa !120, !noalias !134
  %9693 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9693, align 4, !tbaa !120, !noalias !134
  %9694 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9694, align 4, !tbaa !120, !noalias !134
  %9695 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9695, align 4, !tbaa !120, !noalias !134
  %9696 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9696, align 4, !tbaa !120, !noalias !134
  %9697 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9697, align 4, !tbaa !120, !noalias !134
  %9698 = icmp sgt i32 %9557, 0
  br i1 %9698, label %9699, label %9760

; <label>:9699                                    ; preds = %9687
  br label %9700

; <label>:9700                                    ; preds = %9749, %9699
  %9701 = phi i32 [ %9750, %9749 ], [ 0, %9699 ]
  %9702 = phi i32 [ %9751, %9749 ], [ 0, %9699 ]
  %9703 = add nuw i32 %9702, 171
  %9704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9703)  ; CBufferLoadLegacy(handle,regIndex)
  %9705 = extractvalue %dx.types.CBufRet.f32 %9704, 0
  %9706 = extractvalue %dx.types.CBufRet.f32 %9704, 1
  %9707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9708 = extractvalue %dx.types.CBufRet.f32 %9707, 0
  %9709 = extractvalue %dx.types.CBufRet.f32 %9707, 1
  %9710 = fsub fast float %9705, %9708
  %9711 = fsub fast float %9706, %9709
  %9712 = extractvalue %dx.types.CBufRet.f32 %9704, 2
  %9713 = fsub fast float -0.000000e+00, %9710
  %9714 = fsub fast float -0.000000e+00, %9711
  %9715 = call float @dx.op.dot2.f32(i32 54, float %9534, float %9535, float %9713, float %9714)  ; Dot2(ax,ay,bx,by)
  %9716 = fmul fast float %9715, 2.000000e+00
  %9717 = call float @dx.op.dot2.f32(i32 54, float %9713, float %9714, float %9713, float %9714)  ; Dot2(ax,ay,bx,by)
  %9718 = fmul fast float %9712, %9712
  %9719 = fsub fast float %9717, %9718
  %9720 = fmul fast float %9716, %9716
  %9721 = fmul fast float %9577, %9719
  %9722 = fsub fast float %9720, %9721
  %9723 = fcmp fast ogt float %9722, 0.000000e+00
  br i1 %9723, label %9724, label %9739

; <label>:9724                                    ; preds = %9700
  %9725 = fcmp fast ogt float %9716, 0.000000e+00
  %9726 = call float @dx.op.unary.f32(i32 24, float %9722)  ; Sqrt(value)
  %9727 = fsub fast float -0.000000e+00, %9726
  %9728 = select i1 %9725, float %9726, float %9727
  %9729 = fadd fast float %9728, %9716
  %9730 = fmul float %9729, -5.000000e-01
  %9731 = fdiv fast float %9730, %9570
  %9732 = call float @dx.op.binary.f32(i32 35, float %9731, float 0.000000e+00)  ; FMax(a,b)
  %9733 = call float @dx.op.binary.f32(i32 36, float %9605, float %9732)  ; FMin(a,b)
  %9734 = fdiv fast float %9719, %9730
  %9735 = call float @dx.op.binary.f32(i32 35, float %9734, float 0.000000e+00)  ; FMax(a,b)
  %9736 = call float @dx.op.binary.f32(i32 36, float %9605, float %9735)  ; FMin(a,b)
  %9737 = call float @dx.op.binary.f32(i32 36, float %9733, float %9736)  ; FMin(a,b)
  %9738 = call float @dx.op.binary.f32(i32 35, float %9733, float %9736)  ; FMax(a,b)
  br label %9739

; <label>:9739                                    ; preds = %9724, %9700
  %9740 = phi float [ %9738, %9724 ], [ -1.000000e+00, %9700 ]
  %9741 = phi float [ %9737, %9724 ], [ -1.000000e+00, %9700 ]
  %9742 = phi i1 [ true, %9724 ], [ false, %9700 ]
  br i1 %9742, label %9743, label %9749

; <label>:9743                                    ; preds = %9739
  %9744 = call float @dx.op.binary.f32(i32 35, float %9688, float %9741)  ; FMax(a,b)
  %9745 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9702
  store float %9744, float* %9745, align 4, !tbaa !120, !noalias !134
  %9746 = call float @dx.op.binary.f32(i32 35, float %9688, float %9740)  ; FMax(a,b)
  %9747 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9702
  store float %9746, float* %9747, align 4, !tbaa !120, !noalias !134
  %9748 = add nsw i32 %9701, 1
  br label %9749

; <label>:9749                                    ; preds = %9743, %9739
  %9750 = phi i32 [ %9748, %9743 ], [ %9701, %9739 ]
  %9751 = add nuw nsw i32 %9702, 1
  %9752 = icmp eq i32 %9751, %9557
  br i1 %9752, label %9753, label %9700

; <label>:9753                                    ; preds = %9749
  %9754 = load float, float* %9694, align 4, !tbaa !120, !alias.scope !150, !noalias !153
  %9755 = load float, float* %9693, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  %9756 = load float, float* %9692, align 4, !tbaa !120, !alias.scope !158, !noalias !159
  %9757 = load float, float* %9697, align 4, !tbaa !120, !alias.scope !160, !noalias !163
  %9758 = load float, float* %9696, align 4, !tbaa !120, !alias.scope !166, !noalias !167
  %9759 = load float, float* %9695, align 4, !tbaa !120, !alias.scope !168, !noalias !169
  br label %9760

; <label>:9760                                    ; preds = %9753, %9687
  %9761 = phi float [ -1.000000e+00, %9687 ], [ %9759, %9753 ]
  %9762 = phi float [ -1.000000e+00, %9687 ], [ %9758, %9753 ]
  %9763 = phi float [ -1.000000e+00, %9687 ], [ %9757, %9753 ]
  %9764 = phi float [ -1.000000e+00, %9687 ], [ %9756, %9753 ]
  %9765 = phi float [ -1.000000e+00, %9687 ], [ %9755, %9753 ]
  %9766 = phi float [ -1.000000e+00, %9687 ], [ %9754, %9753 ]
  %9767 = phi i32 [ 0, %9687 ], [ %9750, %9753 ]
  %9768 = call float @dx.op.binary.f32(i32 36, float %9765, float %9766)  ; FMin(a,b)
  %9769 = call float @dx.op.binary.f32(i32 36, float %9764, float %9768)  ; FMin(a,b)
  %9770 = call float @dx.op.binary.f32(i32 35, float %9764, float %9765)  ; FMax(a,b)
  %9771 = call float @dx.op.binary.f32(i32 36, float %9770, float %9766)  ; FMin(a,b)
  %9772 = call float @dx.op.binary.f32(i32 36, float %9764, float %9765)  ; FMin(a,b)
  %9773 = call float @dx.op.binary.f32(i32 35, float %9772, float %9771)  ; FMax(a,b)
  %9774 = call float @dx.op.binary.f32(i32 35, float %9765, float %9766)  ; FMax(a,b)
  %9775 = call float @dx.op.binary.f32(i32 35, float %9764, float %9774)  ; FMax(a,b)
  store float %9769, float* %9692, align 4, !tbaa !120, !alias.scope !158, !noalias !159
  store float %9773, float* %9693, align 4, !tbaa !120, !alias.scope !156, !noalias !157
  store float %9775, float* %9694, align 4, !tbaa !120, !alias.scope !150, !noalias !153
  %9776 = call float @dx.op.binary.f32(i32 36, float %9762, float %9763)  ; FMin(a,b)
  %9777 = call float @dx.op.binary.f32(i32 36, float %9761, float %9776)  ; FMin(a,b)
  %9778 = call float @dx.op.binary.f32(i32 35, float %9761, float %9762)  ; FMax(a,b)
  %9779 = call float @dx.op.binary.f32(i32 36, float %9778, float %9763)  ; FMin(a,b)
  %9780 = call float @dx.op.binary.f32(i32 36, float %9761, float %9762)  ; FMin(a,b)
  %9781 = call float @dx.op.binary.f32(i32 35, float %9780, float %9779)  ; FMax(a,b)
  %9782 = call float @dx.op.binary.f32(i32 35, float %9762, float %9763)  ; FMax(a,b)
  %9783 = call float @dx.op.binary.f32(i32 35, float %9761, float %9782)  ; FMax(a,b)
  store float %9777, float* %9695, align 4, !tbaa !120, !alias.scope !168, !noalias !169
  store float %9781, float* %9696, align 4, !tbaa !120, !alias.scope !166, !noalias !167
  store float %9783, float* %9697, align 4, !tbaa !120, !alias.scope !160, !noalias !163
  %9784 = sub nsw i32 3, %9767
  %9785 = icmp sgt i32 %9784, 2
  br i1 %9785, label %9786, label %9824

; <label>:9786                                    ; preds = %9760
  %9787 = icmp eq i32 %9555, 0
  %9788 = fsub fast float %9605, %9689
  %9789 = select i1 %9787, float %9788, float %9689
  %9790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9791 = extractvalue %dx.types.CBufRet.f32 %9790, 0
  %9792 = extractvalue %dx.types.CBufRet.f32 %9790, 1
  %9793 = extractvalue %dx.types.CBufRet.f32 %9790, 2
  %9794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9795 = extractvalue %dx.types.CBufRet.f32 %9794, 0
  %9796 = extractvalue %dx.types.CBufRet.f32 %9794, 1
  %9797 = extractvalue %dx.types.CBufRet.f32 %9794, 2
  %9798 = extractvalue %dx.types.CBufRet.f32 %9794, 3
  %9799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9800 = extractvalue %dx.types.CBufRet.f32 %9799, 3
  %9801 = call float @dx.op.binary.f32(i32 36, float %9690, float %9800)  ; FMin(a,b)
  %9802 = fmul fast float %9798, %9789
  %9803 = call float @dx.op.unary.f32(i32 7, float %9802)  ; Saturate(value)
  %9804 = fsub fast float %9795, %9791
  %9805 = fsub fast float %9796, %9792
  %9806 = fsub fast float %9797, %9793
  %9807 = fmul fast float %9803, %9804
  %9808 = fmul fast float %9803, %9805
  %9809 = fmul fast float %9803, %9806
  %9810 = fadd fast float %9807, %9791
  %9811 = fadd fast float %9808, %9792
  %9812 = fadd fast float %9809, %9793
  %9813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9814 = extractvalue %dx.types.CBufRet.f32 %9813, 0
  %9815 = extractvalue %dx.types.CBufRet.f32 %9813, 1
  %9816 = fadd fast float %9815, %9814
  %9817 = call float @dx.op.unary.f32(i32 7, float %9816)  ; Saturate(value)
  %9818 = extractvalue %dx.types.CBufRet.f32 %9813, 2
  %9819 = extractvalue %dx.types.CBufRet.f32 %9813, 3
  %9820 = fadd fast float %9819, %9818
  %9821 = call float @dx.op.unary.f32(i32 7, float %9820)  ; Saturate(value)
  %9822 = fmul fast float %9817, %9801
  %9823 = fmul fast float %9822, %9821
  br label %9906

; <label>:9824                                    ; preds = %9760
  %9825 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9784
  %9826 = load float, float* %9825, align 4, !tbaa !120, !noalias !134
  %9827 = fcmp fast olt float %9826, %9691
  %9828 = icmp sgt i32 %9767, 0
  %9829 = and i1 %9828, %9827
  br i1 %9829, label %9830, label %9867

; <label>:9830                                    ; preds = %9824
  br label %9831

; <label>:9831                                    ; preds = %9860, %9830
  %9832 = phi float [ %9861, %9860 ], [ %9689, %9830 ]
  %9833 = phi float [ %9862, %9860 ], [ %9690, %9830 ]
  %9834 = phi float [ %9842, %9860 ], [ %9826, %9830 ]
  %9835 = phi i32 [ %9839, %9860 ], [ %9784, %9830 ]
  %9836 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9835
  %9837 = load float, float* %9836, align 4, !tbaa !120, !noalias !134
  %9838 = icmp slt i32 %9835, 2
  %9839 = add nsw i32 %9835, 1
  %9840 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9839
  %9841 = load float, float* %9840, align 4, !tbaa !120, !noalias !134
  %9842 = select i1 %9838, float %9841, float %9605
  %9843 = call float @dx.op.binary.f32(i32 36, float %9842, float %9837)  ; FMin(a,b)
  %9844 = call float @dx.op.binary.f32(i32 36, float %9691, float %9843)  ; FMin(a,b)
  %9845 = icmp eq i32 %9555, 0
  %9846 = fadd fast float %9844, %9834
  %9847 = fmul fast float %9846, %9536
  %9848 = fadd fast float %9847, %9549
  br i1 %9845, label %9854, label %9849

; <label>:9849                                    ; preds = %9831
  %9850 = fsub fast float %9844, %9834
  %9851 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9850)  ; FMax(a,b)
  %9852 = fmul fast float %9851, %9848
  %9853 = fadd fast float %9852, %9833
  br label %9860

; <label>:9854                                    ; preds = %9831
  %9855 = fsub fast float %9834, %9844
  %9856 = call float @dx.op.unary.f32(i32 6, float %9855)  ; FAbs(value)
  %9857 = fadd fast float %9856, %9832
  %9858 = fmul fast float %9856, %9848
  %9859 = fsub fast float %9833, %9858
  br label %9860

; <label>:9860                                    ; preds = %9854, %9849
  %9861 = phi float [ %9851, %9849 ], [ %9857, %9854 ]
  %9862 = phi float [ %9853, %9849 ], [ %9859, %9854 ]
  %9863 = fcmp fast olt float %9842, %9691
  %9864 = icmp slt i32 %9839, 3
  %9865 = and i1 %9864, %9863
  br i1 %9865, label %9831, label %9866

; <label>:9866                                    ; preds = %9860
  br label %9867

; <label>:9867                                    ; preds = %9866, %9824
  %9868 = phi float [ %9689, %9824 ], [ %9861, %9866 ]
  %9869 = phi float [ %9690, %9824 ], [ %9862, %9866 ]
  %9870 = fsub fast float %9605, %9868
  %9871 = select i1 %9607, float %9868, float %9870
  %9872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9873 = extractvalue %dx.types.CBufRet.f32 %9872, 0
  %9874 = extractvalue %dx.types.CBufRet.f32 %9872, 1
  %9875 = extractvalue %dx.types.CBufRet.f32 %9872, 2
  %9876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9877 = extractvalue %dx.types.CBufRet.f32 %9876, 0
  %9878 = extractvalue %dx.types.CBufRet.f32 %9876, 1
  %9879 = extractvalue %dx.types.CBufRet.f32 %9876, 2
  %9880 = extractvalue %dx.types.CBufRet.f32 %9876, 3
  %9881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9882 = extractvalue %dx.types.CBufRet.f32 %9881, 3
  %9883 = call float @dx.op.binary.f32(i32 36, float %9869, float %9882)  ; FMin(a,b)
  %9884 = fmul fast float %9880, %9871
  %9885 = call float @dx.op.unary.f32(i32 7, float %9884)  ; Saturate(value)
  %9886 = fsub fast float %9877, %9873
  %9887 = fsub fast float %9878, %9874
  %9888 = fsub fast float %9879, %9875
  %9889 = fmul fast float %9885, %9886
  %9890 = fmul fast float %9885, %9887
  %9891 = fmul fast float %9885, %9888
  %9892 = fadd fast float %9889, %9873
  %9893 = fadd fast float %9890, %9874
  %9894 = fadd fast float %9891, %9875
  %9895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9896 = extractvalue %dx.types.CBufRet.f32 %9895, 0
  %9897 = extractvalue %dx.types.CBufRet.f32 %9895, 1
  %9898 = fadd fast float %9897, %9896
  %9899 = call float @dx.op.unary.f32(i32 7, float %9898)  ; Saturate(value)
  %9900 = extractvalue %dx.types.CBufRet.f32 %9895, 2
  %9901 = extractvalue %dx.types.CBufRet.f32 %9895, 3
  %9902 = fadd fast float %9901, %9900
  %9903 = call float @dx.op.unary.f32(i32 7, float %9902)  ; Saturate(value)
  %9904 = fmul fast float %9899, %9883
  %9905 = fmul fast float %9904, %9903
  br label %9906

; <label>:9906                                    ; preds = %9867, %9786, %9621, %9603, %9601
  %9907 = phi float [ %9630, %9621 ], [ %9789, %9786 ], [ %9871, %9867 ], [ 0.000000e+00, %9601 ], [ 0.000000e+00, %9603 ]
  %9908 = phi float [ %9664, %9621 ], [ %9823, %9786 ], [ %9905, %9867 ], [ 0.000000e+00, %9601 ], [ 0.000000e+00, %9603 ]
  %9909 = phi float [ %9651, %9621 ], [ %9810, %9786 ], [ %9892, %9867 ], [ 0.000000e+00, %9601 ], [ 0.000000e+00, %9603 ]
  %9910 = phi float [ %9652, %9621 ], [ %9811, %9786 ], [ %9893, %9867 ], [ 0.000000e+00, %9601 ], [ 0.000000e+00, %9603 ]
  %9911 = phi float [ %9653, %9621 ], [ %9812, %9786 ], [ %9894, %9867 ], [ 0.000000e+00, %9601 ], [ 0.000000e+00, %9603 ]
  %9912 = fmul fast float %9544, %9908
  %9913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9914 = extractvalue %dx.types.CBufRet.f32 %9913, 2
  %9915 = fsub fast float %9551, %9914
  %9916 = fcmp fast olt float %9912, -2.000000e+01
  %9917 = call float @dx.op.unary.f32(i32 21, float %9912)  ; Exp(value)
  %9918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9919 = extractvalue %dx.types.CBufRet.f32 %9918, 2
  %9920 = extractvalue %dx.types.CBufRet.f32 %9918, 3
  %9921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9922 = extractvalue %dx.types.CBufRet.f32 %9921, 2
  %9923 = fmul fast float %9920, %9915
  %9924 = call float @dx.op.unary.f32(i32 7, float %9923)  ; Saturate(value)
  %9925 = fsub fast float 1.000000e+00, %9924
  %9926 = fmul fast float %9536, 5.000000e-01
  %9927 = fadd fast float %9926, 5.000000e-01
  %9928 = call float @dx.op.unary.f32(i32 7, float %9927)  ; Saturate(value)
  %9929 = fsub fast float 1.000000e+00, %9928
  %9930 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9925)  ; FMax(a,b)
  %9931 = fdiv fast float %9929, %9930
  %9932 = fsub fast float %9915, %9493
  %9933 = call float @dx.op.unary.f32(i32 6, float %9932)  ; FAbs(value)
  %9934 = fmul fast float %9933, %9919
  %9935 = call float @dx.op.unary.f32(i32 7, float %9931)  ; Saturate(value)
  %9936 = fsub fast float 1.000000e+00, %9934
  %9937 = fmul fast float %9936, %9935
  %9938 = fadd fast float %9937, %9934
  %9939 = fmul fast float %9922, %9915
  %9940 = call float @dx.op.unary.f32(i32 7, float %9939)  ; Saturate(value)
  %9941 = fsub fast float 1.000000e+00, %9938
  %9942 = fmul fast float %9941, %9940
  %9943 = fadd fast float %9942, %9938
  %9944 = call float @dx.op.unary.f32(i32 7, float %9943)  ; Saturate(value)
  %9945 = fadd fast float %9917, -1.000000e+00
  %9946 = select i1 %9916, float -1.000000e+00, float %9945
  %9947 = fmul fast float %9944, %9946
  %9948 = fadd fast float %9947, 1.000000e+00
  %9949 = fsub fast float -0.000000e+00, %9947
  %9950 = fmul fast float %9909, %9949
  %9951 = fmul fast float %9910, %9949
  %9952 = fmul fast float %9911, %9949
  br label %9953

; <label>:9953                                    ; preds = %9906, %9502
  %9954 = phi float [ %9907, %9906 ], [ 0.000000e+00, %9502 ]
  %9955 = phi float [ %9948, %9906 ], [ 1.000000e+00, %9502 ]
  %9956 = phi float [ %9950, %9906 ], [ 0.000000e+00, %9502 ]
  %9957 = phi float [ %9951, %9906 ], [ 0.000000e+00, %9502 ]
  %9958 = phi float [ %9952, %9906 ], [ 0.000000e+00, %9502 ]
  %9959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9960 = extractvalue %dx.types.CBufRet.f32 %9959, 1
  %9961 = fsub fast float 1.000000e+00, %9955
  %9962 = fmul fast float %9961, %9537
  %9963 = fmul fast float %9962, %9960
  %9964 = fsub fast float %9537, %9963
  br i1 %9530, label %9965, label %9994, !dx.controlflow.hints !170

; <label>:9965                                    ; preds = %9953
  %9966 = fmul fast float %9538, %9527
  %9967 = fadd fast float %9966, %9528
  %9968 = call float @dx.op.unary.f32(i32 7, float %9967)  ; Saturate(value)
  %9969 = fmul fast float %9509, %9964
  %9970 = fsub fast float -0.000000e+00, %9969
  %9971 = fmul fast float %9510, %9964
  %9972 = fsub fast float -0.000000e+00, %9971
  %9973 = call float @dx.op.unary.f32(i32 21, float %9970)  ; Exp(value)
  %9974 = call float @dx.op.unary.f32(i32 21, float %9972)  ; Exp(value)
  %9975 = call float @dx.op.binary.f32(i32 35, float %9517, float %9973)  ; FMax(a,b)
  %9976 = call float @dx.op.binary.f32(i32 35, float %9517, float %9974)  ; FMax(a,b)
  %9977 = fsub fast float %9976, %9975
  %9978 = fmul fast float %9977, %9968
  %9979 = fadd fast float %9978, %9975
  %9980 = call float @dx.op.unary.f32(i32 7, float %9979)  ; Saturate(value)
  %9981 = fsub fast float %9514, %9519
  %9982 = fsub fast float %9515, %9520
  %9983 = fsub fast float %9516, %9521
  %9984 = fmul fast float %9968, %9981
  %9985 = fmul fast float %9968, %9982
  %9986 = fmul fast float %9968, %9983
  %9987 = fadd fast float %9984, %9519
  %9988 = fadd fast float %9985, %9520
  %9989 = fadd fast float %9986, %9521
  %9990 = fsub fast float 1.000000e+00, %9980
  %9991 = fmul fast float %9990, %9987
  %9992 = fmul fast float %9990, %9988
  %9993 = fmul fast float %9990, %9989
  br label %10053

; <label>:9994                                    ; preds = %9953
  %9995 = fmul fast float %9964, %9526
  %9996 = call float @dx.op.unary.f32(i32 7, float %9995)  ; Saturate(value)
  %9997 = fsub fast float 2.000000e+00, %9996
  %9998 = fmul fast float %9996, 9.921875e-01
  %9999 = fmul fast float %9998, %9997
  %10000 = fadd fast float %9999, 3.906250e-03
  %10001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %10000, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10002 = extractvalue %dx.types.ResRet.f32 %10001, 0
  %10003 = fsub fast float %9996, %10002
  %10004 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10003)  ; FMax(a,b)
  %10005 = fmul fast float %9512, %9493
  %10006 = call float @dx.op.unary.f32(i32 6, float %10005)  ; FAbs(value)
  %10007 = fcmp fast ogt float %10006, 0x3EB0C6F7A0000000
  br i1 %10007, label %10008, label %10014, !dx.controlflow.hints !171

; <label>:10008                                   ; preds = %9994
  %10009 = fmul fast float %10005, 0xBFF7154760000000
  %10010 = call float @dx.op.unary.f32(i32 21, float %10009)  ; Exp(value)
  %10011 = fsub fast float 1.000000e+00, %10010
  %10012 = fdiv fast float %10011, %10005
  %10013 = fmul fast float %10012, %9522
  br label %10014

; <label>:10014                                   ; preds = %10008, %9994
  %10015 = phi float [ %10013, %10008 ], [ %9522, %9994 ]
  %10016 = fadd fast float %10015, %9524
  %10017 = fmul fast float %10016, %10004
  %10018 = fmul fast float %9509, %10017
  %10019 = fsub fast float -0.000000e+00, %10018
  %10020 = fmul fast float %9510, %10017
  %10021 = fsub fast float -0.000000e+00, %10020
  %10022 = fmul fast float %9511, %10017
  %10023 = fsub fast float -0.000000e+00, %10022
  %10024 = call float @dx.op.unary.f32(i32 21, float %10019)  ; Exp(value)
  %10025 = call float @dx.op.unary.f32(i32 21, float %10021)  ; Exp(value)
  %10026 = call float @dx.op.unary.f32(i32 21, float %10023)  ; Exp(value)
  %10027 = fmul fast float %9538, %9538
  %10028 = fadd fast float %10027, 1.000000e+00
  %10029 = fmul fast float %10028, 0x3FAE8EC8A0000000
  %10030 = fmul fast float %10029, %9519
  %10031 = fmul fast float %10029, %9520
  %10032 = fmul fast float %10029, %9521
  %10033 = fmul fast float %9538, %9517
  %10034 = fsub fast float 1.000000e+00, %10033
  %10035 = fmul fast float %9517, %9517
  %10036 = fsub fast float 1.000000e+00, %10035
  %10037 = fmul fast float %10036, 0x3FB45F3060000000
  %10038 = fmul fast float %10034, %10034
  %10039 = fdiv fast float 1.000000e+00, %10038
  %10040 = fmul fast float %10037, %10039
  %10041 = fmul fast float %10040, %9514
  %10042 = fmul fast float %10040, %9515
  %10043 = fmul fast float %10040, %9516
  %10044 = fadd fast float %10041, %10030
  %10045 = fadd fast float %10042, %10031
  %10046 = fadd fast float %10043, %10032
  %10047 = fsub fast float 1.000000e+00, %10024
  %10048 = fsub fast float 1.000000e+00, %10025
  %10049 = fsub fast float 1.000000e+00, %10026
  %10050 = fmul fast float %10044, %10047
  %10051 = fmul fast float %10045, %10048
  %10052 = fmul fast float %10046, %10049
  br label %10053

; <label>:10053                                   ; preds = %10014, %9965
  %10054 = phi float [ %9991, %9965 ], [ %10050, %10014 ]
  %10055 = phi float [ %9992, %9965 ], [ %10051, %10014 ]
  %10056 = phi float [ %9993, %9965 ], [ %10052, %10014 ]
  %10057 = phi float [ %9980, %9965 ], [ %10024, %10014 ]
  %10058 = phi float [ %9980, %9965 ], [ %10025, %10014 ]
  %10059 = phi float [ %9980, %9965 ], [ %10026, %10014 ]
  br i1 %9546, label %10060, label %10258, !dx.controlflow.hints !172

; <label>:10060                                   ; preds = %10053
  %10061 = extractvalue %dx.types.CBufRet.f32 %9959, 0
  %10062 = fmul fast float %10061, %9961
  %10063 = fsub fast float %9956, %10054
  %10064 = fsub fast float %9957, %10055
  %10065 = fsub fast float %9958, %10056
  %10066 = fmul fast float %10062, %10063
  %10067 = fmul fast float %10062, %10064
  %10068 = fmul fast float %10062, %10065
  %10069 = fadd fast float %10066, %10054
  %10070 = fadd fast float %10067, %10055
  %10071 = fadd fast float %10068, %10056
  %10072 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10057)  ; FMax(a,b)
  %10073 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10058)  ; FMax(a,b)
  %10074 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10059)  ; FMax(a,b)
  %10075 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9955)  ; FMax(a,b)
  %10076 = call float @dx.op.binary.f32(i32 35, float %9954, float %9964)  ; FMax(a,b)
  %10077 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10076)  ; FMax(a,b)
  %10078 = fdiv fast float %9954, %10077
  %10079 = call float @dx.op.unary.f32(i32 7, float %10078)  ; Saturate(value)
  %10080 = fdiv fast float %9964, %10077
  %10081 = call float @dx.op.unary.f32(i32 7, float %10080)  ; Saturate(value)
  %10082 = fcmp fast une float %10075, 1.000000e+00
  br i1 %10082, label %10083, label %10096, !dx.controlflow.hints !173

; <label>:10083                                   ; preds = %10060
  %10084 = call float @dx.op.unary.f32(i32 23, float %10075)  ; Log(value)
  %10085 = fmul fast float %10084, 0x3FE62E4300000000
  %10086 = fmul fast float %9956, %10085
  %10087 = fsub fast float -0.000000e+00, %10086
  %10088 = fmul fast float %9957, %10085
  %10089 = fsub fast float -0.000000e+00, %10088
  %10090 = fmul fast float %9958, %10085
  %10091 = fsub fast float -0.000000e+00, %10090
  %10092 = fsub fast float 1.000000e+00, %10075
  %10093 = fdiv fast float %10087, %10092
  %10094 = fdiv fast float %10089, %10092
  %10095 = fdiv fast float %10091, %10092
  br label %10096

; <label>:10096                                   ; preds = %10083, %10060
  %10097 = phi float [ %10093, %10083 ], [ %9956, %10060 ]
  %10098 = phi float [ %10094, %10083 ], [ %9957, %10060 ]
  %10099 = phi float [ %10095, %10083 ], [ %9958, %10060 ]
  %10100 = phi float [ %10085, %10083 ], [ 0.000000e+00, %10060 ]
  %10101 = fcmp fast une float %10072, 1.000000e+00
  br i1 %10101, label %10102, label %10109, !dx.controlflow.hints !174

; <label>:10102                                   ; preds = %10096
  %10103 = call float @dx.op.unary.f32(i32 23, float %10072)  ; Log(value)
  %10104 = fmul fast float %10103, 0x3FE62E4300000000
  %10105 = fmul fast float %10069, %10104
  %10106 = fsub fast float -0.000000e+00, %10105
  %10107 = fsub fast float 1.000000e+00, %10072
  %10108 = fdiv fast float %10106, %10107
  br label %10109

; <label>:10109                                   ; preds = %10102, %10096
  %10110 = phi float [ %10108, %10102 ], [ %10069, %10096 ]
  %10111 = phi float [ %10104, %10102 ], [ 0.000000e+00, %10096 ]
  %10112 = fcmp fast une float %10073, 1.000000e+00
  br i1 %10112, label %10113, label %10120, !dx.controlflow.hints !174

; <label>:10113                                   ; preds = %10109
  %10114 = call float @dx.op.unary.f32(i32 23, float %10073)  ; Log(value)
  %10115 = fmul fast float %10114, 0x3FE62E4300000000
  %10116 = fmul fast float %10070, %10115
  %10117 = fsub fast float -0.000000e+00, %10116
  %10118 = fsub fast float 1.000000e+00, %10073
  %10119 = fdiv fast float %10117, %10118
  br label %10120

; <label>:10120                                   ; preds = %10113, %10109
  %10121 = phi float [ %10119, %10113 ], [ %10070, %10109 ]
  %10122 = phi float [ %10115, %10113 ], [ 0.000000e+00, %10109 ]
  %10123 = fcmp fast une float %10074, 1.000000e+00
  br i1 %10123, label %10124, label %10131, !dx.controlflow.hints !174

; <label>:10124                                   ; preds = %10120
  %10125 = call float @dx.op.unary.f32(i32 23, float %10074)  ; Log(value)
  %10126 = fmul fast float %10125, 0x3FE62E4300000000
  %10127 = fmul fast float %10071, %10126
  %10128 = fsub fast float -0.000000e+00, %10127
  %10129 = fsub fast float 1.000000e+00, %10074
  %10130 = fdiv fast float %10128, %10129
  br label %10131

; <label>:10131                                   ; preds = %10124, %10120
  %10132 = phi float [ %10130, %10124 ], [ %10071, %10120 ]
  %10133 = phi float [ %10126, %10124 ], [ 0.000000e+00, %10120 ]
  %10134 = fmul fast float %10097, %10081
  %10135 = fmul fast float %10098, %10081
  %10136 = fmul fast float %10099, %10081
  %10137 = fmul fast float %10100, %10081
  %10138 = fmul fast float %10110, %10079
  %10139 = fmul fast float %10121, %10079
  %10140 = fmul fast float %10132, %10079
  %10141 = fmul fast float %10111, %10079
  %10142 = fmul fast float %10122, %10079
  %10143 = fmul fast float %10133, %10079
  %10144 = fadd fast float %10138, %10134
  %10145 = fadd fast float %10139, %10135
  %10146 = fadd fast float %10140, %10136
  %10147 = fadd fast float %10141, %10137
  %10148 = fadd fast float %10142, %10137
  %10149 = fadd fast float %10143, %10137
  %10150 = fcmp fast une float %10147, 0.000000e+00
  br i1 %10150, label %10151, label %10158, !dx.controlflow.hints !175

; <label>:10151                                   ; preds = %10131
  %10152 = fmul fast float %10147, 0x3FF7154760000000
  %10153 = call float @dx.op.unary.f32(i32 21, float %10152)  ; Exp(value)
  %10154 = fsub fast float 1.000000e+00, %10153
  %10155 = fmul fast float %10144, %10154
  %10156 = fsub fast float -0.000000e+00, %10155
  %10157 = fdiv fast float %10156, %10147
  br label %10158

; <label>:10158                                   ; preds = %10151, %10131
  %10159 = phi float [ %10153, %10151 ], [ 1.000000e+00, %10131 ]
  %10160 = phi float [ %10157, %10151 ], [ %10144, %10131 ]
  %10161 = fcmp fast une float %10148, 0.000000e+00
  br i1 %10161, label %10162, label %10169, !dx.controlflow.hints !175

; <label>:10162                                   ; preds = %10158
  %10163 = fmul fast float %10148, 0x3FF7154760000000
  %10164 = call float @dx.op.unary.f32(i32 21, float %10163)  ; Exp(value)
  %10165 = fsub fast float 1.000000e+00, %10164
  %10166 = fmul fast float %10145, %10165
  %10167 = fsub fast float -0.000000e+00, %10166
  %10168 = fdiv fast float %10167, %10148
  br label %10169

; <label>:10169                                   ; preds = %10162, %10158
  %10170 = phi float [ %10164, %10162 ], [ 1.000000e+00, %10158 ]
  %10171 = phi float [ %10168, %10162 ], [ %10145, %10158 ]
  %10172 = fcmp fast une float %10149, 0.000000e+00
  br i1 %10172, label %10173, label %10180, !dx.controlflow.hints !175

; <label>:10173                                   ; preds = %10169
  %10174 = fmul fast float %10149, 0x3FF7154760000000
  %10175 = call float @dx.op.unary.f32(i32 21, float %10174)  ; Exp(value)
  %10176 = fsub fast float 1.000000e+00, %10175
  %10177 = fmul fast float %10146, %10176
  %10178 = fsub fast float -0.000000e+00, %10177
  %10179 = fdiv fast float %10178, %10149
  br label %10180

; <label>:10180                                   ; preds = %10173, %10169
  %10181 = phi float [ %10175, %10173 ], [ 1.000000e+00, %10169 ]
  %10182 = phi float [ %10179, %10173 ], [ %10146, %10169 ]
  %10183 = fcmp fast ogt float %10079, %10081
  br i1 %10183, label %10184, label %10204

; <label>:10184                                   ; preds = %10180
  %10185 = fsub fast float 1.000000e+00, %10081
  %10186 = fmul fast float %10097, %10185
  %10187 = fmul fast float %10098, %10185
  %10188 = fmul fast float %10099, %10185
  %10189 = fmul fast float %10100, %10185
  %10190 = fcmp fast une float %10189, 0.000000e+00
  br i1 %10190, label %10191, label %10242, !dx.controlflow.hints !176

; <label>:10191                                   ; preds = %10184
  %10192 = fmul fast float %10189, 0x3FF7154760000000
  %10193 = call float @dx.op.unary.f32(i32 21, float %10192)  ; Exp(value)
  %10194 = fsub fast float 1.000000e+00, %10193
  %10195 = fmul fast float %10186, %10194
  %10196 = fsub fast float -0.000000e+00, %10195
  %10197 = fmul fast float %10187, %10194
  %10198 = fsub fast float -0.000000e+00, %10197
  %10199 = fmul fast float %10188, %10194
  %10200 = fsub fast float -0.000000e+00, %10199
  %10201 = fdiv fast float %10196, %10189
  %10202 = fdiv fast float %10198, %10189
  %10203 = fdiv fast float %10200, %10189
  br label %10242

; <label>:10204                                   ; preds = %10180
  %10205 = fsub fast float 1.000000e+00, %10079
  %10206 = fmul fast float %10110, %10205
  %10207 = fmul fast float %10121, %10205
  %10208 = fmul fast float %10132, %10205
  %10209 = fmul fast float %10111, %10205
  %10210 = fmul fast float %10122, %10205
  %10211 = fmul fast float %10133, %10205
  %10212 = fcmp fast une float %10209, 0.000000e+00
  br i1 %10212, label %10213, label %10220, !dx.controlflow.hints !175

; <label>:10213                                   ; preds = %10204
  %10214 = fmul fast float %10209, 0x3FF7154760000000
  %10215 = call float @dx.op.unary.f32(i32 21, float %10214)  ; Exp(value)
  %10216 = fsub fast float 1.000000e+00, %10215
  %10217 = fmul fast float %10206, %10216
  %10218 = fsub fast float -0.000000e+00, %10217
  %10219 = fdiv fast float %10218, %10209
  br label %10220

; <label>:10220                                   ; preds = %10213, %10204
  %10221 = phi float [ %10219, %10213 ], [ %10206, %10204 ]
  %10222 = phi float [ %10215, %10213 ], [ 1.000000e+00, %10204 ]
  %10223 = fcmp fast une float %10210, 0.000000e+00
  br i1 %10223, label %10224, label %10231, !dx.controlflow.hints !175

; <label>:10224                                   ; preds = %10220
  %10225 = fmul fast float %10210, 0x3FF7154760000000
  %10226 = call float @dx.op.unary.f32(i32 21, float %10225)  ; Exp(value)
  %10227 = fsub fast float 1.000000e+00, %10226
  %10228 = fmul fast float %10207, %10227
  %10229 = fsub fast float -0.000000e+00, %10228
  %10230 = fdiv fast float %10229, %10210
  br label %10231

; <label>:10231                                   ; preds = %10224, %10220
  %10232 = phi float [ %10230, %10224 ], [ %10207, %10220 ]
  %10233 = phi float [ %10226, %10224 ], [ 1.000000e+00, %10220 ]
  %10234 = fcmp fast une float %10211, 0.000000e+00
  br i1 %10234, label %10235, label %10242, !dx.controlflow.hints !175

; <label>:10235                                   ; preds = %10231
  %10236 = fmul fast float %10211, 0x3FF7154760000000
  %10237 = call float @dx.op.unary.f32(i32 21, float %10236)  ; Exp(value)
  %10238 = fsub fast float 1.000000e+00, %10237
  %10239 = fmul fast float %10208, %10238
  %10240 = fsub fast float -0.000000e+00, %10239
  %10241 = fdiv fast float %10240, %10211
  br label %10242

; <label>:10242                                   ; preds = %10235, %10231, %10191, %10184
  %10243 = phi float [ %10241, %10235 ], [ %10203, %10191 ], [ %10188, %10184 ], [ %10208, %10231 ]
  %10244 = phi float [ %10232, %10235 ], [ %10202, %10191 ], [ %10187, %10184 ], [ %10232, %10231 ]
  %10245 = phi float [ %10221, %10235 ], [ %10201, %10191 ], [ %10186, %10184 ], [ %10221, %10231 ]
  %10246 = phi float [ %10237, %10235 ], [ %10193, %10191 ], [ 1.000000e+00, %10184 ], [ 1.000000e+00, %10231 ]
  %10247 = phi float [ %10233, %10235 ], [ %10193, %10191 ], [ 1.000000e+00, %10184 ], [ %10233, %10231 ]
  %10248 = phi float [ %10222, %10235 ], [ %10193, %10191 ], [ 1.000000e+00, %10184 ], [ %10222, %10231 ]
  %10249 = fmul fast float %10248, %10160
  %10250 = fmul fast float %10247, %10171
  %10251 = fmul fast float %10246, %10182
  %10252 = fadd fast float %10249, %10245
  %10253 = fadd fast float %10250, %10244
  %10254 = fadd fast float %10251, %10243
  %10255 = fmul fast float %10248, %10159
  %10256 = fmul fast float %10247, %10170
  %10257 = fmul fast float %10246, %10181
  br label %10258

; <label>:10258                                   ; preds = %10242, %10053
  %10259 = phi float [ %10257, %10242 ], [ %10059, %10053 ]
  %10260 = phi float [ %10256, %10242 ], [ %10058, %10053 ]
  %10261 = phi float [ %10255, %10242 ], [ %10057, %10053 ]
  %10262 = phi float [ %10254, %10242 ], [ %10056, %10053 ]
  %10263 = phi float [ %10253, %10242 ], [ %10055, %10053 ]
  %10264 = phi float [ %10252, %10242 ], [ %10054, %10053 ]
  %10265 = fmul fast float %10264, %9210
  %10266 = fmul fast float %10263, %9210
  %10267 = fmul fast float %10262, %9210
  %10268 = fmul fast float %10261, %9501
  %10269 = call float @dx.op.dot3.f32(i32 55, float %10261, float %10260, float %10259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10270 = call float @dx.op.dot3.f32(i32 55, float %10265, float %10266, float %10267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10271 = select i1 %258, float %10269, float %10261
  %10272 = select i1 %258, float %10269, float %10260
  %10273 = select i1 %258, float 1.000000e+00, float %10259
  %10274 = select i1 %258, float %10270, float %10265
  %10275 = select i1 %258, float 0.000000e+00, float %10266
  %10276 = select i1 %258, float 0.000000e+00, float %10267
  %10277 = fmul fast float %10271, %9495
  %10278 = fmul fast float %10272, %9496
  %10279 = fmul fast float %10273, %9497
  %10280 = fadd fast float %10277, %10274
  %10281 = fadd fast float %10278, %10275
  %10282 = fadd fast float %10276, %10279
  %10283 = fmul fast float %10271, %9498
  %10284 = fmul fast float %10272, %9499
  %10285 = fmul fast float %10273, %9500
  %10286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10287 = extractvalue %dx.types.CBufRet.i32 %10286, 0
  %10288 = icmp eq i32 %10287, 0
  br i1 %10288, label %10656, label %10289, !dx.controlflow.hints !177

; <label>:10289                                   ; preds = %10258
  %10290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10291 = extractvalue %dx.types.CBufRet.f32 %10290, 2
  %10292 = extractvalue %dx.types.CBufRet.f32 %10290, 3
  %10293 = fmul fast float %10291, %109
  %10294 = fmul fast float %10292, %110
  %10295 = fmul fast float %10293, 2.000000e+00
  %10296 = fmul fast float %10294, 2.000000e+00
  %10297 = fsub fast float 1.000000e+00, %10295
  %10298 = fsub fast float 1.000000e+00, %10296
  %10299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10300 = extractvalue %dx.types.CBufRet.f32 %10299, 0
  %10301 = extractvalue %dx.types.CBufRet.f32 %10299, 1
  %10302 = extractvalue %dx.types.CBufRet.f32 %10299, 2
  %10303 = fmul fast float %10297, %10300
  %10304 = fmul fast float %10297, %10301
  %10305 = fmul fast float %10297, %10302
  %10306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10307 = extractvalue %dx.types.CBufRet.f32 %10306, 0
  %10308 = extractvalue %dx.types.CBufRet.f32 %10306, 1
  %10309 = extractvalue %dx.types.CBufRet.f32 %10306, 2
  %10310 = fmul fast float %10298, %10307
  %10311 = fmul fast float %10298, %10308
  %10312 = fmul fast float %10298, %10309
  %10313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10314 = extractvalue %dx.types.CBufRet.f32 %10313, 0
  %10315 = extractvalue %dx.types.CBufRet.f32 %10313, 1
  %10316 = extractvalue %dx.types.CBufRet.f32 %10313, 2
  %10317 = fadd fast float %10310, %10314
  %10318 = fadd fast float %10317, %10303
  %10319 = fadd fast float %10311, %10315
  %10320 = fadd fast float %10319, %10304
  %10321 = fadd fast float %10312, %10316
  %10322 = fadd fast float %10321, %10305
  %10323 = fmul fast float %10318, %9494
  %10324 = fmul fast float %10320, %9494
  %10325 = fmul fast float %10322, %9494
  %10326 = fmul fast float %10323, %10323
  %10327 = fmul fast float %10324, %10324
  %10328 = fadd fast float %10326, %10327
  %10329 = fmul fast float %10325, %10325
  %10330 = fadd fast float %10328, %10329
  %10331 = call float @dx.op.unary.f32(i32 24, float %10330)  ; Sqrt(value)
  %10332 = extractvalue %dx.types.CBufRet.f32 %9221, 0
  %10333 = fsub fast float %10331, %10332
  %10334 = extractvalue %dx.types.CBufRet.f32 %9221, 2
  %10335 = fmul fast float %10333, %10334
  %10336 = call float @dx.op.unary.f32(i32 7, float %10335)  ; Saturate(value)
  %10337 = fadd fast float %10336, -5.000000e-01
  %10338 = fmul fast float %10337, 2.000000e+00
  %10339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10340 = extractvalue %dx.types.CBufRet.f32 %10339, 2
  %10341 = call float @dx.op.binary.f32(i32 36, float %10340, float %10338)  ; FMin(a,b)
  %10342 = fsub fast float -0.000000e+00, %10340
  %10343 = fcmp fast ogt float %10341, %10342
  br i1 %10343, label %10344, label %10656, !dx.controlflow.hints !178

; <label>:10344                                   ; preds = %10289
  %10345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10346 = extractvalue %dx.types.CBufRet.f32 %10345, 3
  %10347 = fcmp fast ogt float %10346, 0.000000e+00
  br i1 %10347, label %10348, label %10423, !dx.controlflow.hints !179

; <label>:10348                                   ; preds = %10344
  %10349 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10350 = extractvalue %dx.types.Dimensions %10349, 0
  %10351 = sitofp i32 %10350 to float
  %10352 = extractvalue %dx.types.Dimensions %10349, 1
  %10353 = sitofp i32 %10352 to float
  %10354 = fmul fast float %10293, %10351
  %10355 = fmul fast float %10294, %10353
  %10356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10357 = extractvalue %dx.types.CBufRet.f32 %10356, 1
  %10358 = fsub fast float -0.000000e+00, %10357
  %10359 = fptoui float %10358 to i32
  %10360 = fptoui float %10354 to i32
  %10361 = fptoui float %10355 to i32
  %10362 = and i32 %10359, 31
  %10363 = lshr i32 %10360, %10362
  %10364 = lshr i32 %10361, %10362
  %10365 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10359, i32 %10363, i32 %10364, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10366 = extractvalue %dx.types.ResRet.f32 %10365, 0
  %10367 = fcmp fast olt float %10366, -1.000000e+00
  %10368 = fcmp fast ogt float %10366, -1.000000e+00
  %10369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10370 = extractvalue %dx.types.CBufRet.f32 %10369, 1
  %10371 = select i1 %10368, float %10370, float 1.000000e+00
  %10372 = fadd fast float %10366, 1.000000e+00
  %10373 = fmul fast float %10371, %10372
  %10374 = call float @dx.op.unary.f32(i32 6, float %10373)  ; FAbs(value)
  %10375 = extractvalue %dx.types.CBufRet.f32 %10369, 3
  %10376 = fcmp fast oge float %10374, %10375
  %10377 = select i1 %10376, float 0x4197782600000000, float %10374
  %10378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10379 = extractvalue %dx.types.CBufRet.f32 %10378, 0
  %10380 = extractvalue %dx.types.CBufRet.f32 %10378, 1
  %10381 = extractvalue %dx.types.CBufRet.f32 %10378, 2
  %10382 = select i1 %10367, float %10379, float %10300
  %10383 = select i1 %10367, float %10380, float %10301
  %10384 = select i1 %10367, float %10381, float %10302
  %10385 = fmul fast float %10382, %10297
  %10386 = fmul fast float %10383, %10297
  %10387 = fmul fast float %10384, %10297
  %10388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10389 = extractvalue %dx.types.CBufRet.f32 %10388, 0
  %10390 = extractvalue %dx.types.CBufRet.f32 %10388, 1
  %10391 = extractvalue %dx.types.CBufRet.f32 %10388, 2
  %10392 = select i1 %10367, float %10389, float %10307
  %10393 = select i1 %10367, float %10390, float %10308
  %10394 = select i1 %10367, float %10391, float %10309
  %10395 = fmul fast float %10392, %10298
  %10396 = fmul fast float %10393, %10298
  %10397 = fmul fast float %10394, %10298
  %10398 = fadd fast float %10395, %10385
  %10399 = fadd fast float %10396, %10386
  %10400 = fadd fast float %10397, %10387
  %10401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10402 = extractvalue %dx.types.CBufRet.f32 %10401, 0
  %10403 = extractvalue %dx.types.CBufRet.f32 %10401, 1
  %10404 = extractvalue %dx.types.CBufRet.f32 %10401, 2
  %10405 = select i1 %10367, float %10402, float %10314
  %10406 = select i1 %10367, float %10403, float %10315
  %10407 = select i1 %10367, float %10404, float %10316
  %10408 = fadd fast float %10398, %10405
  %10409 = fadd fast float %10399, %10406
  %10410 = fadd fast float %10400, %10407
  %10411 = fmul fast float %10408, %10377
  %10412 = fmul fast float %10409, %10377
  %10413 = fmul fast float %10410, %10377
  %10414 = fmul fast float %10411, %10411
  %10415 = fmul fast float %10412, %10412
  %10416 = fadd fast float %10414, %10415
  %10417 = fmul fast float %10413, %10413
  %10418 = fadd fast float %10416, %10417
  %10419 = call float @dx.op.unary.f32(i32 24, float %10418)  ; Sqrt(value)
  %10420 = fsub fast float %10419, %10332
  %10421 = fmul fast float %10420, %10334
  %10422 = call float @dx.op.unary.f32(i32 7, float %10421)  ; Saturate(value)
  br label %10423

; <label>:10423                                   ; preds = %10348, %10344
  %10424 = phi float [ %10422, %10348 ], [ 1.000000e+00, %10344 ]
  %10425 = fmul fast float %10341, 5.000000e-01
  %10426 = fadd fast float %10425, 5.000000e-01
  %10427 = call float @dx.op.unary.f32(i32 22, float %10426)  ; Frc(value)
  %10428 = call float @dx.op.unary.f32(i32 27, float %10427)  ; Round_ni(value)
  %10429 = call float @dx.op.unary.f32(i32 22, float %10427)  ; Frc(value)
  %10430 = fmul fast float %10429, 2.000000e+00
  %10431 = fadd fast float %10430, -1.000000e+00
  %10432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10293, float %10294, float %10428, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10433 = extractvalue %dx.types.ResRet.f32 %10432, 0
  %10434 = extractvalue %dx.types.ResRet.f32 %10432, 1
  %10435 = extractvalue %dx.types.ResRet.f32 %10432, 2
  %10436 = extractvalue %dx.types.ResRet.f32 %10432, 3
  %10437 = fadd fast float %10433, -5.000000e-01
  %10438 = fadd fast float %10435, -5.000000e-01
  %10439 = fmul fast float %10437, 0xBFD5555560000000
  %10440 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10438, float %10439)  ; FMad(a,b,c)
  %10441 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10434, float 0.000000e+00)  ; FMad(a,b,c)
  %10442 = fadd fast float %10441, %10436
  %10443 = fmul fast float %10437, -7.500000e-01
  %10444 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10438, float %10443)  ; FMad(a,b,c)
  %10445 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10434, float 0.000000e+00)  ; FMad(a,b,c)
  %10446 = fadd fast float %10445, %10436
  %10447 = call float @dx.op.binary.f32(i32 35, float %10440, float -1.000000e+00)  ; FMax(a,b)
  %10448 = call float @dx.op.binary.f32(i32 35, float %10442, float -1.000000e+00)  ; FMax(a,b)
  %10449 = call float @dx.op.binary.f32(i32 35, float %10444, float -1.000000e+00)  ; FMax(a,b)
  %10450 = call float @dx.op.binary.f32(i32 35, float %10446, float -1.000000e+00)  ; FMax(a,b)
  %10451 = call float @dx.op.binary.f32(i32 36, float %10447, float 1.000000e+00)  ; FMin(a,b)
  %10452 = call float @dx.op.binary.f32(i32 36, float %10448, float 1.000000e+00)  ; FMin(a,b)
  %10453 = call float @dx.op.binary.f32(i32 36, float %10449, float 1.000000e+00)  ; FMin(a,b)
  %10454 = call float @dx.op.binary.f32(i32 36, float %10450, float 1.000000e+00)  ; FMin(a,b)
  %10455 = fcmp fast olt float %10451, 0x3FEFFF8020000000
  br i1 %10455, label %10456, label %10571, !dx.controlflow.hints !180

; <label>:10456                                   ; preds = %10423
  %10457 = extractvalue %dx.types.CBufRet.f32 %10339, 3
  %10458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10459 = extractvalue %dx.types.CBufRet.f32 %10458, 0
  %10460 = extractvalue %dx.types.CBufRet.f32 %10458, 1
  %10461 = extractvalue %dx.types.CBufRet.f32 %10458, 2
  %10462 = extractvalue %dx.types.CBufRet.f32 %10458, 3
  %10463 = fsub fast float %10459, %10451
  %10464 = fsub fast float %10460, %10452
  %10465 = fsub fast float %10461, %10453
  %10466 = fsub fast float %10462, %10454
  %10467 = fmul fast float %10463, %10457
  %10468 = fmul fast float %10464, %10457
  %10469 = fmul fast float %10465, %10457
  %10470 = fmul fast float %10466, %10457
  %10471 = fadd fast float %10467, %10451
  %10472 = fadd fast float %10468, %10452
  %10473 = fsub fast float -0.000000e+00, %10472
  %10474 = fadd fast float %10469, %10453
  %10475 = fadd fast float %10470, %10454
  %10476 = fmul fast float %10471, %10471
  %10477 = fsub fast float %10472, %10476
  %10478 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10477)  ; FMax(a,b)
  %10479 = fdiv fast float 1.000000e+00, %10478
  %10480 = fmul fast float %10472, %10471
  %10481 = fsub fast float %10474, %10480
  %10482 = fsub fast float %10431, %10471
  %10483 = fmul fast float %10431, %10431
  %10484 = fsub fast float %10483, %10472
  %10485 = fmul fast float %10482, %10479
  %10486 = fmul fast float %10485, %10481
  %10487 = fsub fast float %10484, %10486
  %10488 = fmul fast float %10472, %10472
  %10489 = fsub fast float %10475, %10488
  %10490 = fmul fast float %10481, %10481
  %10491 = fmul fast float %10490, %10479
  %10492 = fsub fast float %10489, %10491
  %10493 = fdiv fast float %10487, %10492
  %10494 = fmul fast float %10481, %10493
  %10495 = fsub fast float %10482, %10494
  %10496 = fmul fast float %10495, %10479
  %10497 = fmul fast float %10496, %10471
  %10498 = fsub fast float 1.000000e+00, %10497
  %10499 = fmul fast float %10472, %10493
  %10500 = fsub fast float %10498, %10499
  %10501 = fmul fast float %10496, %10496
  %10502 = fmul fast float %10493, 4.000000e+00
  %10503 = fmul fast float %10502, %10500
  %10504 = fsub fast float %10501, %10503
  %10505 = call float @dx.op.unary.f32(i32 24, float %10504)  ; Sqrt(value)
  %10506 = fcmp fast oge float %10496, 0.000000e+00
  %10507 = fsub fast float -0.000000e+00, %10505
  %10508 = select i1 %10506, float %10507, float %10505
  %10509 = fsub fast float %10508, %10496
  %10510 = fdiv fast float %10509, %10493
  %10511 = fdiv fast float %10500, %10509
  %10512 = fmul fast float %10510, 5.000000e-01
  %10513 = fmul fast float %10511, 2.000000e+00
  %10514 = select i1 %10506, float %10512, float %10513
  %10515 = select i1 %10506, float %10513, float %10512
  %10516 = call float @dx.op.binary.f32(i32 35, float %10514, float %10515)  ; FMax(a,b)
  %10517 = call float @dx.op.binary.f32(i32 36, float %10514, float %10515)  ; FMin(a,b)
  %10518 = fcmp fast ogt float %10431, %10517
  br i1 %10518, label %10519, label %10529

; <label>:10519                                   ; preds = %10456
  %10520 = fsub fast float %10431, %10517
  %10521 = fsub fast float %10516, %10517
  %10522 = fmul fast float %10520, %10521
  %10523 = fmul fast float %10516, %10431
  %10524 = fadd fast float %10516, %10431
  %10525 = fmul fast float %10524, %10471
  %10526 = fadd fast float %10523, %10472
  %10527 = fsub fast float %10526, %10525
  %10528 = fdiv fast float %10527, %10522
  br label %10529

; <label>:10529                                   ; preds = %10519, %10456
  %10530 = phi float [ %10528, %10519 ], [ 0.000000e+00, %10456 ]
  %10531 = fcmp fast ogt float %10431, %10516
  %10532 = fsub fast float %10431, %10516
  br i1 %10531, label %10533, label %10543

; <label>:10533                                   ; preds = %10529
  %10534 = fsub fast float %10516, %10517
  %10535 = fmul fast float %10534, %10532
  %10536 = fmul fast float %10517, %10431
  %10537 = fadd fast float %10517, %10431
  %10538 = fmul fast float %10537, %10471
  %10539 = fsub fast float %10473, %10536
  %10540 = fadd fast float %10539, %10538
  %10541 = fdiv fast float %10540, %10535
  %10542 = fadd fast float %10541, %10530
  br label %10543

; <label>:10543                                   ; preds = %10533, %10529
  %10544 = phi float [ %10542, %10533 ], [ %10530, %10529 ]
  %10545 = fsub fast float %10431, %10517
  %10546 = fmul fast float %10545, %10532
  %10547 = fmul fast float %10517, %10516
  %10548 = fadd fast float %10517, %10516
  %10549 = fmul fast float %10548, %10471
  %10550 = fadd fast float %10547, %10472
  %10551 = fsub fast float %10550, %10549
  %10552 = fdiv fast float %10551, %10546
  %10553 = call float @dx.op.unary.f32(i32 7, float %10544)  ; Saturate(value)
  %10554 = fcmp fast oeq float %9222, 0.000000e+00
  %10555 = extractvalue %dx.types.CBufRet.f32 %10339, 0
  %10556 = fcmp fast oeq float %10555, 0.000000e+00
  %10557 = or i1 %10554, %10556
  %10558 = fmul fast float %10555, 2.000000e+00
  %10559 = fadd fast float %10340, %10341
  %10560 = fdiv fast float %10559, %10558
  %10561 = call float @dx.op.unary.f32(i32 7, float %10560)  ; Saturate(value)
  %10562 = fmul fast float %10561, 2.000000e+00
  %10563 = fsub fast float 3.000000e+00, %10562
  %10564 = fmul fast float %10561, %10561
  %10565 = fmul fast float %10564, %10563
  %10566 = select i1 %10557, float 1.000000e+00, float %10565
  %10567 = fmul fast float %10552, %9222
  %10568 = fadd fast float %10553, %10567
  %10569 = call float @dx.op.unary.f32(i32 7, float %10568)  ; Saturate(value)
  %10570 = fmul fast float %10566, %10569
  br label %10571

; <label>:10571                                   ; preds = %10543, %10423
  %10572 = phi float [ %10570, %10543 ], [ 0.000000e+00, %10423 ]
  %10573 = fsub fast float 1.000000e+00, %10572
  %10574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10293, float %10294, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10575 = extractvalue %dx.types.ResRet.f32 %10574, 0
  %10576 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10577 = extractvalue %dx.types.CBufRet.i32 %10576, 2
  %10578 = icmp eq i32 %10577, 0
  br i1 %10578, label %10584, label %10579

; <label>:10579                                   ; preds = %10571
  %10580 = call float @dx.op.unary.f32(i32 7, float %10572)  ; Saturate(value)
  %10581 = fadd fast float %10575, -1.000000e+00
  %10582 = fmul fast float %10580, %10581
  %10583 = fadd fast float %10582, 1.000000e+00
  br label %10584

; <label>:10584                                   ; preds = %10579, %10571
  %10585 = phi float [ %10583, %10579 ], [ %10573, %10571 ]
  br i1 %10347, label %10586, label %10604

; <label>:10586                                   ; preds = %10584
  %10587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10588 = extractvalue %dx.types.CBufRet.f32 %10587, 1
  %10589 = fsub fast float %10424, %10588
  %10590 = call float @dx.op.unary.f32(i32 7, float %10589)  ; Saturate(value)
  %10591 = fsub fast float %10424, %10346
  %10592 = call float @dx.op.unary.f32(i32 7, float %10591)  ; Saturate(value)
  %10593 = fsub fast float %10590, %10592
  %10594 = fsub fast float %10426, %10592
  %10595 = fdiv fast float %10594, %10593
  %10596 = call float @dx.op.unary.f32(i32 7, float %10595)  ; Saturate(value)
  %10597 = fmul fast float %10596, 2.000000e+00
  %10598 = fsub fast float 3.000000e+00, %10597
  %10599 = fsub fast float %10575, %10585
  %10600 = fmul fast float %10596, %10596
  %10601 = fmul fast float %10600, %10599
  %10602 = fmul fast float %10601, %10598
  %10603 = fadd fast float %10602, %10585
  br label %10604

; <label>:10604                                   ; preds = %10586, %10584
  %10605 = phi float [ %10603, %10586 ], [ %10585, %10584 ]
  %10606 = call float @dx.op.binary.f32(i32 35, float %10575, float %10605)  ; FMax(a,b)
  %10607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10608 = extractvalue %dx.types.CBufRet.i32 %10607, 2
  %10609 = and i32 %10608, 1
  %10610 = icmp eq i32 %10609, 0
  %10611 = fcmp fast une float %10606, 1.000000e+00
  %10612 = and i1 %10611, %10610
  br i1 %10612, label %10613, label %10632

; <label>:10613                                   ; preds = %10604
  %10614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10293, float %10294, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10615 = extractvalue %dx.types.ResRet.f32 %10614, 0
  %10616 = extractvalue %dx.types.ResRet.f32 %10614, 1
  %10617 = extractvalue %dx.types.ResRet.f32 %10614, 2
  %10618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10619 = extractvalue %dx.types.CBufRet.f32 %10618, 1
  %10620 = fmul fast float %10619, %10615
  %10621 = fmul fast float %10619, %10616
  %10622 = fmul fast float %10619, %10617
  %10623 = fcmp fast ogt float %10575, 0x3FEFFF2E40000000
  %10624 = fsub fast float 1.000000e+00, %10606
  %10625 = fsub fast float 1.000000e+00, %10575
  %10626 = fdiv fast float %10624, %10625
  %10627 = call float @dx.op.unary.f32(i32 7, float %10626)  ; Saturate(value)
  %10628 = select i1 %10623, float 0.000000e+00, float %10627
  %10629 = fmul fast float %10620, %10628
  %10630 = fmul fast float %10621, %10628
  %10631 = fmul fast float %10622, %10628
  br label %10632

; <label>:10632                                   ; preds = %10613, %10604
  %10633 = phi float [ 0.000000e+00, %10604 ], [ %10629, %10613 ]
  %10634 = phi float [ 0.000000e+00, %10604 ], [ %10630, %10613 ]
  %10635 = phi float [ 0.000000e+00, %10604 ], [ %10631, %10613 ]
  %10636 = fmul fast float %10633, %9210
  %10637 = fmul fast float %10634, %9210
  %10638 = fmul fast float %10635, %9210
  %10639 = fmul fast float %10606, %10268
  %10640 = call float @dx.op.dot3.f32(i32 55, float %10606, float %10606, float %10606, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10641 = call float @dx.op.dot3.f32(i32 55, float %10636, float %10637, float %10638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10642 = select i1 %258, float %10640, float %10606
  %10643 = select i1 %258, float 1.000000e+00, float %10606
  %10644 = select i1 %258, float %10641, float %10636
  %10645 = select i1 %258, float 0.000000e+00, float %10637
  %10646 = select i1 %258, float 0.000000e+00, float %10638
  %10647 = fmul fast float %10642, %10280
  %10648 = fmul fast float %10642, %10281
  %10649 = fmul fast float %10643, %10282
  %10650 = fadd fast float %10647, %10644
  %10651 = fadd fast float %10648, %10645
  %10652 = fadd fast float %10646, %10649
  %10653 = fmul fast float %10642, %10283
  %10654 = fmul fast float %10642, %10284
  %10655 = fmul fast float %10643, %10285
  br label %10656

; <label>:10656                                   ; preds = %10632, %10289, %10258, %9490
  %10657 = phi float [ %9495, %9490 ], [ %10280, %10258 ], [ %10650, %10632 ], [ %10280, %10289 ]
  %10658 = phi float [ %9496, %9490 ], [ %10281, %10258 ], [ %10651, %10632 ], [ %10281, %10289 ]
  %10659 = phi float [ %9497, %9490 ], [ %10282, %10258 ], [ %10652, %10632 ], [ %10282, %10289 ]
  %10660 = phi float [ %9498, %9490 ], [ %10283, %10258 ], [ %10653, %10632 ], [ %10283, %10289 ]
  %10661 = phi float [ %9499, %9490 ], [ %10284, %10258 ], [ %10654, %10632 ], [ %10284, %10289 ]
  %10662 = phi float [ %9500, %9490 ], [ %10285, %10258 ], [ %10655, %10632 ], [ %10285, %10289 ]
  %10663 = phi float [ %9501, %9490 ], [ %10268, %10258 ], [ %10639, %10632 ], [ %10268, %10289 ]
  %10664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10665 = extractvalue %dx.types.CBufRet.f32 %10664, 2
  %10666 = extractvalue %dx.types.CBufRet.f32 %10664, 3
  %10667 = fmul fast float %10665, %109
  %10668 = fmul fast float %10666, %110
  %10669 = call float @dx.op.unary.f32(i32 7, float %10667)  ; Saturate(value)
  %10670 = call float @dx.op.unary.f32(i32 7, float %10668)  ; Saturate(value)
  %10671 = select i1 %9232, i32 2, i32 0
  %10672 = or i32 %10671, 1
  %10673 = uitofp i32 %10672 to float
  %10674 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10669, float %10670, float %10673, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10675 = extractvalue %dx.types.ResRet.f32 %10674, 0
  %10676 = extractvalue %dx.types.ResRet.f32 %10674, 1
  %10677 = extractvalue %dx.types.ResRet.f32 %10674, 2
  %10678 = extractvalue %dx.types.ResRet.f32 %10674, 3
  %10679 = add nuw nsw i32 %10671, 2
  %10680 = uitofp i32 %10679 to float
  %10681 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10669, float %10670, float %10680, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10682 = extractvalue %dx.types.ResRet.f32 %10681, 0
  %10683 = extractvalue %dx.types.ResRet.f32 %10681, 1
  %10684 = extractvalue %dx.types.ResRet.f32 %10681, 2
  %10685 = extractvalue %dx.types.ResRet.f32 %10681, 3
  %10686 = call float @dx.op.binary.f32(i32 35, float %10676, float %10677)  ; FMax(a,b)
  %10687 = call float @dx.op.binary.f32(i32 35, float %10675, float %10686)  ; FMax(a,b)
  %10688 = call float @dx.op.binary.f32(i32 35, float %10687, float %10678)  ; FMax(a,b)
  %10689 = call float @dx.op.binary.f32(i32 36, float %10683, float %10684)  ; FMin(a,b)
  %10690 = call float @dx.op.binary.f32(i32 36, float %10682, float %10689)  ; FMin(a,b)
  %10691 = call float @dx.op.binary.f32(i32 36, float %10690, float %10685)  ; FMin(a,b)
  %10692 = fmul fast float %10688, 2.550000e+02
  %10693 = fadd fast float %10692, 0x3F70101020000000
  %10694 = fptoui float %10693 to i32
  %10695 = fmul fast float %10691, 2.550000e+02
  %10696 = fadd fast float %10695, 0x3F70101020000000
  %10697 = fptoui float %10696 to i32
  %10698 = icmp ult i32 %10694, %10697
  br i1 %10698, label %10699, label %10868

; <label>:10699                                   ; preds = %10656
  %10700 = fcmp fast ogt float %96, 9.843750e-01
  %10701 = fadd fast float %9494, -4.000000e+00
  %10702 = select i1 %10700, float -4.000000e+00, float %10701
  %10703 = call float @dx.op.binary.f32(i32 35, float %10702, float 0.000000e+00)  ; FMax(a,b)
  %10704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10705 = extractvalue %dx.types.CBufRet.f32 %10704, 0
  %10706 = fadd fast float %10705, %10703
  %10707 = extractvalue %dx.types.CBufRet.f32 %10704, 2
  %10708 = fmul fast float %10706, %10707
  %10709 = call float @dx.op.unary.f32(i32 23, float %10708)  ; Log(value)
  %10710 = extractvalue %dx.types.CBufRet.f32 %10704, 3
  %10711 = fmul fast float %10710, %10709
  %10712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10713 = extractvalue %dx.types.CBufRet.f32 %10712, 2
  %10714 = fmul fast float %10711, %10713
  %10715 = call float @dx.op.unary.f32(i32 7, float %10714)  ; Saturate(value)
  %10716 = uitofp i32 %10694 to float
  %10717 = uitofp i32 %10697 to float
  %10718 = fadd fast float %10716, 5.000000e-01
  %10719 = fadd fast float %10717, 5.000000e-01
  %10720 = fmul fast float %10713, %10718
  %10721 = fmul fast float %10713, %10719
  %10722 = fadd fast float %10720, 0x3F0FFB4800000000
  %10723 = fadd fast float %10721, 0xBF0FFB4800000000
  %10724 = call float @dx.op.binary.f32(i32 35, float %10715, float %10722)  ; FMax(a,b)
  %10725 = call float @dx.op.binary.f32(i32 36, float %10724, float %10723)  ; FMin(a,b)
  %10726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10727 = extractvalue %dx.types.CBufRet.f32 %10726, 1
  %10728 = extractvalue %dx.types.CBufRet.f32 %10726, 2
  %10729 = extractvalue %dx.types.CBufRet.f32 %10726, 0
  %10730 = select i1 %9232, float %10729, float 0.000000e+00
  %10731 = fmul fast float %10727, %10725
  %10732 = fadd fast float %10730, %10731
  %10733 = fadd fast float %10730, %10728
  %10734 = fsub fast float %10727, %10728
  %10735 = fadd fast float %10734, %10730
  %10736 = call float @dx.op.binary.f32(i32 35, float %10732, float %10733)  ; FMax(a,b)
  %10737 = call float @dx.op.binary.f32(i32 36, float %10736, float %10735)  ; FMin(a,b)
  %10738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10669, float %10670, float %10737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10739 = extractvalue %dx.types.ResRet.f32 %10738, 0
  %10740 = extractvalue %dx.types.ResRet.f32 %10738, 1
  %10741 = extractvalue %dx.types.ResRet.f32 %10738, 2
  %10742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10743 = extractvalue %dx.types.CBufRet.i32 %10742, 0
  %10744 = extractvalue %dx.types.CBufRet.i32 %10742, 1
  %10745 = uitofp i32 %10743 to float
  %10746 = uitofp i32 %10744 to float
  %10747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10748 = extractvalue %dx.types.CBufRet.f32 %10747, 0
  %10749 = extractvalue %dx.types.CBufRet.f32 %10747, 1
  %10750 = fmul fast float %10745, %10669
  %10751 = fmul fast float %10746, %10670
  %10752 = fadd fast float %10750, -5.000000e-01
  %10753 = fadd fast float %10751, -5.000000e-01
  %10754 = call float @dx.op.unary.f32(i32 22, float %10752)  ; Frc(value)
  %10755 = call float @dx.op.unary.f32(i32 22, float %10753)  ; Frc(value)
  %10756 = fmul fast float %10754, %10754
  %10757 = fmul fast float %10756, %10754
  %10758 = fsub fast float 3.000000e+00, %10754
  %10759 = fmul fast float %10756, %10758
  %10760 = fmul fast float %10754, 3.000000e+00
  %10761 = fmul fast float %10757, 3.000000e+00
  %10762 = fmul fast float %10756, 6.000000e+00
  %10763 = fsub fast float %10761, %10762
  %10764 = fadd fast float %10763, 4.000000e+00
  %10765 = fmul fast float %10764, 0x3FC5555560000000
  %10766 = fmul fast float %10757, -3.000000e+00
  %10767 = fadd fast float %10756, %10754
  %10768 = fmul fast float %10767, 3.000000e+00
  %10769 = fadd fast float %10766, 1.000000e+00
  %10770 = fadd fast float %10769, %10768
  %10771 = fmul fast float %10757, 0x3FC5555560000000
  %10772 = fmul fast float %10755, %10755
  %10773 = fmul fast float %10772, %10755
  %10774 = fsub fast float 3.000000e+00, %10755
  %10775 = fmul fast float %10772, %10774
  %10776 = fmul fast float %10755, 3.000000e+00
  %10777 = fmul fast float %10773, 3.000000e+00
  %10778 = fmul fast float %10772, 6.000000e+00
  %10779 = fsub fast float %10777, %10778
  %10780 = fadd fast float %10779, 4.000000e+00
  %10781 = fmul fast float %10780, 0x3FC5555560000000
  %10782 = fmul fast float %10773, -3.000000e+00
  %10783 = fadd fast float %10772, %10755
  %10784 = fmul fast float %10783, 3.000000e+00
  %10785 = fadd fast float %10782, 1.000000e+00
  %10786 = fadd fast float %10785, %10784
  %10787 = fmul fast float %10773, 0x3FC5555560000000
  %10788 = fadd fast float %10754, 1.000000e+00
  %10789 = fsub fast float 1.000000e+00, %10760
  %10790 = fadd fast float %10789, %10759
  %10791 = fadd fast float %10790, %10764
  %10792 = fmul fast float %10791, 0x3FC5555560000000
  %10793 = fdiv fast float %10765, %10792
  %10794 = fsub fast float %10788, %10793
  %10795 = fsub fast float 1.000000e+00, %10754
  %10796 = fadd fast float %10770, %10757
  %10797 = fmul fast float %10796, 0x3FC5555560000000
  %10798 = fdiv fast float %10771, %10797
  %10799 = fadd fast float %10795, %10798
  %10800 = fadd fast float %10755, 1.000000e+00
  %10801 = fsub fast float 1.000000e+00, %10776
  %10802 = fadd fast float %10801, %10775
  %10803 = fadd fast float %10802, %10780
  %10804 = fmul fast float %10803, 0x3FC5555560000000
  %10805 = fdiv fast float %10781, %10804
  %10806 = fsub fast float %10800, %10805
  %10807 = fsub fast float 1.000000e+00, %10755
  %10808 = fadd fast float %10786, %10773
  %10809 = fmul fast float %10808, 0x3FC5555560000000
  %10810 = fdiv fast float %10787, %10809
  %10811 = fadd fast float %10810, %10807
  %10812 = fmul fast float %10794, %10748
  %10813 = fsub fast float %10669, %10812
  %10814 = fmul fast float %10799, %10748
  %10815 = fadd fast float %10814, %10669
  %10816 = fmul fast float %10811, %10749
  %10817 = fadd fast float %10816, %10670
  %10818 = fmul fast float %10806, %10749
  %10819 = fsub fast float %10670, %10818
  %10820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10813, float %10819, float %10737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10821 = extractvalue %dx.types.ResRet.f32 %10820, 0
  %10822 = extractvalue %dx.types.ResRet.f32 %10820, 1
  %10823 = extractvalue %dx.types.ResRet.f32 %10820, 2
  %10824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10815, float %10819, float %10737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10825 = extractvalue %dx.types.ResRet.f32 %10824, 0
  %10826 = extractvalue %dx.types.ResRet.f32 %10824, 1
  %10827 = extractvalue %dx.types.ResRet.f32 %10824, 2
  %10828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10813, float %10817, float %10737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10829 = extractvalue %dx.types.ResRet.f32 %10828, 0
  %10830 = extractvalue %dx.types.ResRet.f32 %10828, 1
  %10831 = extractvalue %dx.types.ResRet.f32 %10828, 2
  %10832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10815, float %10817, float %10737, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10833 = extractvalue %dx.types.ResRet.f32 %10832, 0
  %10834 = extractvalue %dx.types.ResRet.f32 %10832, 1
  %10835 = extractvalue %dx.types.ResRet.f32 %10832, 2
  %10836 = fsub fast float %10829, %10821
  %10837 = fsub fast float %10830, %10822
  %10838 = fsub fast float %10831, %10823
  %10839 = fmul fast float %10836, %10809
  %10840 = fmul fast float %10837, %10809
  %10841 = fmul fast float %10838, %10809
  %10842 = fadd fast float %10839, %10821
  %10843 = fadd fast float %10840, %10822
  %10844 = fadd fast float %10841, %10823
  %10845 = fsub fast float %10833, %10825
  %10846 = fsub fast float %10834, %10826
  %10847 = fsub fast float %10835, %10827
  %10848 = fmul fast float %10845, %10809
  %10849 = fmul fast float %10846, %10809
  %10850 = fmul fast float %10847, %10809
  %10851 = fsub fast float %10825, %10842
  %10852 = fadd fast float %10851, %10848
  %10853 = fsub fast float %10826, %10843
  %10854 = fadd fast float %10853, %10849
  %10855 = fsub fast float %10827, %10844
  %10856 = fadd fast float %10855, %10850
  %10857 = fmul fast float %10852, %10797
  %10858 = fmul fast float %10854, %10797
  %10859 = fmul fast float %10856, %10797
  %10860 = fadd fast float %10857, %10842
  %10861 = fadd fast float %10858, %10843
  %10862 = fadd fast float %10859, %10844
  %10863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10864 = extractvalue %dx.types.CBufRet.f32 %10863, 1
  %10865 = fmul fast float %10860, %10864
  %10866 = fmul fast float %10861, %10864
  %10867 = fmul fast float %10862, %10864
  br label %10868

; <label>:10868                                   ; preds = %10699, %10656
  %10869 = phi float [ %10739, %10699 ], [ 1.000000e+00, %10656 ]
  %10870 = phi float [ %10740, %10699 ], [ 1.000000e+00, %10656 ]
  %10871 = phi float [ %10741, %10699 ], [ 1.000000e+00, %10656 ]
  %10872 = phi float [ %10865, %10699 ], [ 0.000000e+00, %10656 ]
  %10873 = phi float [ %10866, %10699 ], [ 0.000000e+00, %10656 ]
  %10874 = phi float [ %10867, %10699 ], [ 0.000000e+00, %10656 ]
  %10875 = fmul fast float %10872, %9210
  %10876 = fmul fast float %10873, %9210
  %10877 = fmul fast float %10874, %9210
  %10878 = fmul fast float %10869, %10663
  %10879 = call float @dx.op.dot3.f32(i32 55, float %10869, float %10870, float %10871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10880 = call float @dx.op.dot3.f32(i32 55, float %10875, float %10876, float %10877, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10881 = select i1 %258, float %10879, float %10869
  %10882 = select i1 %258, float %10879, float %10870
  %10883 = select i1 %258, float 1.000000e+00, float %10871
  %10884 = select i1 %258, float %10880, float %10875
  %10885 = select i1 %258, float 0.000000e+00, float %10876
  %10886 = select i1 %258, float 0.000000e+00, float %10877
  %10887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10888 = extractvalue %dx.types.CBufRet.i32 %10887, 3
  %10889 = and i32 %10888, 3
  %10890 = icmp ne i32 %10889, 0
  %10891 = and i32 %10888, 4
  %10892 = icmp ne i32 %10891, 0
  %10893 = and i1 %10890, %10892
  %10894 = and i1 %258, %10893
  br i1 %10894, label %10895, label %10901

; <label>:10895                                   ; preds = %10868
  %10896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10897 = extractvalue %dx.types.CBufRet.f32 %10896, 1
  %10898 = fadd fast float %10878, -1.000000e+00
  %10899 = fmul fast float %10897, %10898
  %10900 = fadd fast float %10899, 1.000000e+00
  br label %10901

; <label>:10901                                   ; preds = %10895, %10868
  %10902 = phi float [ %10900, %10895 ], [ %10878, %10868 ]
  %10903 = fadd fast float %10660, %10657
  %10904 = fmul fast float %10881, %10903
  %10905 = fadd fast float %10904, %10884
  %10906 = fadd fast float %10661, %10658
  %10907 = fmul fast float %10882, %10906
  %10908 = fadd fast float %10907, %10885
  %10909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10910 = extractvalue %dx.types.CBufRet.f32 %10909, 0
  br i1 %258, label %10911, label %10934

; <label>:10911                                   ; preds = %10901
  %10912 = fadd fast float %10905, %10908
  %10913 = fmul fast float %10910, %10912
  %10914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10915 = extractvalue %dx.types.CBufRet.f32 %10914, 3
  %10916 = extractvalue %dx.types.CBufRet.f32 %9214, 1
  %10917 = fsub fast float %9219, %9213
  %10918 = fadd fast float %10917, %9220
  %10919 = fsub fast float %10918, %10916
  %10920 = extractvalue %dx.types.CBufRet.f32 %9214, 2
  %10921 = fmul fast float %10919, %10920
  %10922 = call float @dx.op.unary.f32(i32 7, float %10921)  ; Saturate(value)
  %10923 = fsub fast float %10922, %10915
  %10924 = fmul fast float %10923, %10902
  %10925 = fadd fast float %10924, %10915
  %10926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10927 = extractvalue %dx.types.CBufRet.f32 %10926, 0
  %10928 = fsub fast float %10925, %10927
  %10929 = fmul fast float %10928, 1.000000e+01
  %10930 = call float @dx.op.unary.f32(i32 7, float %10929)  ; Saturate(value)
  %10931 = fmul fast float %10930, %9209
  %10932 = fadd fast float %10931, %9210
  %10933 = fmul fast float %10932, %10925
  br label %10958

; <label>:10934                                   ; preds = %10901
  %10935 = fadd fast float %10662, %10659
  %10936 = fmul fast float %10883, %10935
  %10937 = fadd fast float %10936, %10886
  %10938 = fmul fast float %10910, %10905
  %10939 = fmul fast float %10910, %10908
  %10940 = fmul fast float %10910, %10937
  %10941 = call float @dx.op.binary.f32(i32 35, float %10939, float %10940)  ; FMax(a,b)
  %10942 = call float @dx.op.binary.f32(i32 35, float %10938, float %10941)  ; FMax(a,b)
  %10943 = call float @dx.op.binary.f32(i32 35, float %10942, float %9210)  ; FMax(a,b)
  %10944 = fcmp fast ugt float %10943, 0x3F10000000000000
  br i1 %10944, label %10946, label %10945

; <label>:10945                                   ; preds = %10934
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10946

; <label>:10946                                   ; preds = %10945, %10934
  %10947 = add i32 %60, 356
  %10948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10947, i32 undef)  ; BufferLoad(srv,index,wot)
  %10949 = extractvalue %dx.types.ResRet.i32 %10948, 0
  %10950 = and i32 %10949, 32
  %10951 = icmp eq i32 %10950, 0
  br i1 %10951, label %10958, label %10952

; <label>:10952                                   ; preds = %10946
  %10953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10954 = extractvalue %dx.types.CBufRet.f32 %10953, 0
  %10955 = fmul fast float %10954, 0x3FE99999A0000000
  %10956 = fadd fast float %10954, %10938
  %10957 = fadd fast float %10955, %10940
  br label %10958

; <label>:10958                                   ; preds = %10952, %10946, %10911
  %10959 = phi float [ %10913, %10911 ], [ %10956, %10952 ], [ %10938, %10946 ]
  %10960 = phi float [ %10933, %10911 ], [ %10939, %10952 ], [ %10939, %10946 ]
  %10961 = phi float [ %10932, %10911 ], [ %10957, %10952 ], [ %10940, %10946 ]
  %10962 = phi float [ %10932, %10911 ], [ %9210, %10952 ], [ %9210, %10946 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10963 = call float @dx.op.binary.f32(i32 36, float %10959, float 3.225500e+04)  ; FMin(a,b)
  %10964 = call float @dx.op.binary.f32(i32 36, float %10960, float 3.225500e+04)  ; FMin(a,b)
  %10965 = call float @dx.op.binary.f32(i32 36, float %10961, float 3.225500e+04)  ; FMin(a,b)
  %10966 = call float @dx.op.binary.f32(i32 36, float %10962, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10964)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10965)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

