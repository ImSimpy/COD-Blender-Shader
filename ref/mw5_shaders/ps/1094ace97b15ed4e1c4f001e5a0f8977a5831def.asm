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
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 69ec2f29e5041f64a1d462a56c285bfc
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
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
  %60 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = icmp ne i32 %60, 0
  %62 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %100 = alloca [12 x float], align 4
  %101 = alloca [12 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [4 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = alloca [3 x float], align 4
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = fmul fast float %110, %96
  %112 = fmul fast float %110, %97
  %113 = select i1 %61, float 1.000000e+00, float -1.000000e+00
  %114 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %115 = bitcast float %114 to i32
  %116 = ashr i32 %115, 1
  %117 = sub nsw i32 1597250115, %116
  %118 = bitcast i32 %117 to float
  %119 = fmul fast float %87, %113
  %120 = fmul fast float %119, %118
  %121 = fmul fast float %88, %113
  %122 = fmul fast float %121, %118
  %123 = fmul fast float %89, %113
  %124 = fmul fast float %123, %118
  %125 = fmul fast float %88, %85
  %126 = fmul fast float %89, %84
  %127 = fsub fast float %125, %126
  %128 = fmul fast float %89, %83
  %129 = fmul fast float %87, %85
  %130 = fsub fast float %128, %129
  %131 = fmul fast float %87, %84
  %132 = fmul fast float %88, %83
  %133 = fsub fast float %131, %132
  %134 = fmul fast float %127, %86
  %135 = fmul fast float %130, %86
  %136 = fmul fast float %133, %86
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %111, 2.000000e+00
  %141 = fmul fast float %140, %138
  %142 = fmul fast float %112, 2.000000e+00
  %143 = fmul fast float %142, %139
  %144 = fsub fast float 1.000000e+00, %141
  %145 = fsub fast float 1.000000e+00, %143
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fmul fast float %144, %147
  %151 = fmul fast float %144, %148
  %152 = fmul fast float %144, %149
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = extractvalue %dx.types.CBufRet.f32 %153, 1
  %156 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %157 = fmul fast float %145, %154
  %158 = fmul fast float %145, %155
  %159 = fmul fast float %145, %156
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %164 = fadd fast float %157, %161
  %165 = fadd fast float %164, %150
  %166 = fadd fast float %158, %162
  %167 = fadd fast float %166, %151
  %168 = fadd fast float %159, %163
  %169 = fadd fast float %168, %152
  %170 = fmul fast float %165, %99
  %171 = fmul fast float %167, %99
  %172 = fmul fast float %169, %99
  %173 = fmul fast float %111, 5.000000e-01
  %174 = fmul fast float %112, 5.000000e-01
  %175 = fptosi float %173 to i32
  %176 = fptosi float %174 to i32
  %177 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %175, i32 %176, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = lshr i32 %178, 18
  %180 = uitofp i32 %179 to float
  %181 = fmul fast float %180, 0x3F4C00EBA0000000
  %182 = call float @dx.op.unary.f32(i32 21, float %181)  ; Exp(value)
  %183 = fadd fast float %182, -1.000000e+00
  %184 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %185 = extractvalue %dx.types.Dimensions %184, 0
  %186 = sitofp i32 %185 to float
  %187 = extractvalue %dx.types.Dimensions %184, 1
  %188 = sitofp i32 %187 to float
  %189 = fcmp fast oge float %173, %186
  %190 = fcmp fast oge float %174, %188
  %191 = or i1 %189, %190
  %192 = select i1 %191, float 0x4197782600000000, float %183
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %196 = fmul fast float %194, %111
  %197 = fmul fast float %195, %112
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = and i32 %199, 114688
  %201 = icmp ne i32 %200, 0
  %202 = select i1 %201, float %196, float 0.000000e+00
  %203 = select i1 %201, float %197, float 0.000000e+00
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %202, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fmul fast float %205, 2.550000e+02
  %207 = fptoui float %206 to i32
  %208 = select i1 %201, i32 %207, i32 0
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.i32 %210, 3
  %212 = and i32 %211, 3
  %213 = icmp ne i32 %212, 0
  %214 = and i32 %211, 4
  %215 = icmp ne i32 %214, 0
  %216 = and i1 %213, %215
  br i1 %216, label %217, label %228

; <label>:217                                     ; preds = %0
  %218 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %219 = fmul fast float %218, %112
  %220 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %221 = fmul fast float %220, %111
  %222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %221, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fsub fast float 1.000000e+00, %223
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = fcmp fast olt float %224, %226
  br label %231

; <label>:228                                     ; preds = %0
  %229 = icmp eq i32 %214, 0
  %230 = and i1 %213, %229
  br label %231

; <label>:231                                     ; preds = %228, %217
  %232 = phi i1 [ %227, %217 ], [ %230, %228 ]
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = fmul fast float %234, 0x3FE3C6EF40000000
  %236 = frem fast float %111, 2.560000e+02
  %237 = frem fast float %112, 2.560000e+02
  %238 = fptoui float %236 to i32
  %239 = fptoui float %237 to i32
  %240 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %238, i32 %239, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = fadd fast float %241, %235
  %243 = call float @dx.op.unary.f32(i32 22, float %242)  ; Frc(value)
  %244 = add i32 %62, 156
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = shl i32 %246, 4
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %246, 7
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %246, 22
  %254 = shl nuw nsw i32 %253, 5
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = add i32 %62, 216
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %258, 8
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = lshr i32 %258, 16
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = add i32 %62, 36
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 65535
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %272, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = add i32 %62, 288
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = fmul fast float %281, 0x3F50624DE0000000
  %285 = fmul fast float %283, 0x3F50624DE0000000
  %286 = add i32 %62, 172
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = shl i32 %288, 4
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %288, 7
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %288, 22
  %296 = shl nuw nsw i32 %295, 5
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = add i32 %62, 232
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %300, 8
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %300, 16
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = add i32 %62, 52
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = add i32 %62, 304
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = fmul fast float %323, 0x3F50624DE0000000
  %327 = fmul fast float %325, 0x3F50624DE0000000
  %328 = add i32 %62, 188
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = shl i32 %330, 4
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %330, 7
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %330, 22
  %338 = shl nuw nsw i32 %337, 5
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %62, 248
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %342, 8
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %342, 16
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = add i32 %62, 68
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %62, 320
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = fmul fast float %365, 0x3F50624DE0000000
  %369 = fmul fast float %367, 0x3F50624DE0000000
  %370 = add i32 %62, 204
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = shl i32 %372, 4
  %374 = and i32 %373, 32752
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %372, 7
  %377 = and i32 %376, 32752
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %372, 22
  %380 = shl nuw nsw i32 %379, 5
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = add i32 %62, 264
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = lshr i32 %384, 8
  %389 = and i32 %388, 255
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %390, 0x3F70101020000000
  %392 = lshr i32 %384, 16
  %393 = and i32 %392, 255
  %394 = uitofp i32 %393 to float
  %395 = fmul fast float %394, 0x3F70101020000000
  %396 = add i32 %62, 84
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 65535
  %400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %399)  ; LegacyF16ToF32(value)
  %401 = lshr i32 %398, 16
  %402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %401)  ; LegacyF16ToF32(value)
  %403 = add i32 %62, 336
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 65535
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %405, 16
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = fmul fast float %407, 0x3F50624DE0000000
  %411 = fmul fast float %409, 0x3F50624DE0000000
  %412 = add i32 %62, 348
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 32
  %416 = icmp eq i32 %415, 0
  %417 = and i32 %414, 64
  %418 = icmp eq i32 %417, 0
  %419 = and i32 %414, 128
  %420 = icmp eq i32 %419, 0
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 2
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %440, label %425

; <label>:425                                     ; preds = %231
  %426 = add i32 %62, 508
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = add i32 %428, 0
  %430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %430, %dx.types.Handle %108, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %432 = extractvalue %dx.types.ResRet.f32 %431, 0
  %433 = extractvalue %dx.types.ResRet.f32 %431, 1
  %434 = extractvalue %dx.types.ResRet.f32 %431, 2
  %435 = extractvalue %dx.types.ResRet.f32 %431, 3
  %436 = fmul fast float %435, %92
  %437 = fmul fast float %432, %93
  %438 = fmul fast float %433, %94
  %439 = fmul fast float %434, %95
  br label %440

; <label>:440                                     ; preds = %425, %231
  %441 = phi float [ %95, %231 ], [ %439, %425 ]
  %442 = phi float [ %94, %231 ], [ %438, %425 ]
  %443 = phi float [ %93, %231 ], [ %437, %425 ]
  %444 = phi float [ %92, %231 ], [ %436, %425 ]
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 2
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %468, label %449

; <label>:449                                     ; preds = %440
  %450 = add i32 %62, 44
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 1
  %454 = icmp ne i32 %453, 0
  %455 = select i1 %454, float %443, float 1.000000e+00
  %456 = add i32 %62, 60
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 1
  %460 = icmp ne i32 %459, 0
  %461 = select i1 %460, float %442, float 1.000000e+00
  %462 = add i32 %62, 76
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 1
  %466 = icmp ne i32 %465, 0
  %467 = select i1 %466, float %441, float 1.000000e+00
  br label %468

; <label>:468                                     ; preds = %449, %440
  %469 = phi float [ %441, %440 ], [ %467, %449 ]
  %470 = phi float [ %442, %440 ], [ %461, %449 ]
  %471 = phi float [ %443, %440 ], [ %455, %449 ]
  %472 = lshr i32 %446, 20
  %473 = and i32 %472, 3
  %474 = add nuw nsw i32 %473, 1
  %475 = add i32 %62, 24
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = add i32 %62, 28
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = or i32 %480, %477
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %1216, label %483

; <label>:483                                     ; preds = %468
  %484 = and i32 %477, 262144
  %485 = icmp ne i32 %484, 0
  %486 = select i1 %485, float %65, float 1.000000e+00
  %487 = select i1 %485, float %66, float 0.000000e+00
  %488 = select i1 %485, float %67, float 0.000000e+00
  %489 = select i1 %485, float %68, float 1.000000e+00
  %490 = select i1 %485, float %69, float %90
  %491 = select i1 %485, float %70, float %91
  %492 = add i32 %62, 284
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = lshr i32 %494, 16
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = fmul fast float %496, 0x3F50624DE0000000
  %498 = add i32 %62, 88
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = lshr i32 %500, 16
  %502 = and i32 %501, 255
  %503 = lshr i32 %500, 24
  %504 = add i32 %62, 292
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = and i32 %506, 65535
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = lshr i32 %506, 16
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = add i32 %62, 32
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = lshr i32 %513, 22
  %515 = shl nuw nsw i32 %514, 5
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = shl i32 %513, 4
  %518 = and i32 %517, 32752
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = lshr i32 %513, 7
  %521 = and i32 %520, 32752
  %522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %521)  ; LegacyF16ToF32(value)
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 3
  %525 = fmul fast float %524, 1.000000e+03
  %526 = fmul fast float %284, %525
  %527 = call float @dx.op.unary.f32(i32 22, float %526)  ; Frc(value)
  %528 = fadd fast float %527, %274
  %529 = fmul fast float %285, %525
  %530 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %531 = fadd fast float %530, %276
  %532 = fmul fast float %497, %525
  %533 = call float @dx.op.unary.f32(i32 22, float %532)  ; Frc(value)
  %534 = fmul fast float %533, 0x401921FB60000000
  %535 = fadd fast float %534, %516
  %536 = call float @dx.op.unary.f32(i32 13, float %535)  ; Sin(value)
  %537 = call float @dx.op.unary.f32(i32 12, float %535)  ; Cos(value)
  %538 = fsub fast float -0.000000e+00, %536
  %539 = fadd fast float %490, -5.000000e-01
  %540 = fadd fast float %491, -5.000000e-01
  %541 = fmul fast float %508, %539
  %542 = fmul fast float %510, %540
  %543 = fadd fast float %541, 5.000000e-01
  %544 = fadd fast float %542, 5.000000e-01
  %545 = fmul fast float %519, %543
  %546 = fmul fast float %522, %544
  %547 = fmul fast float %537, %545
  %548 = call float @dx.op.tertiary.f32(i32 46, float %538, float %546, float %547)  ; FMad(a,b,c)
  %549 = fmul fast float %536, %545
  %550 = call float @dx.op.tertiary.f32(i32 46, float %537, float %546, float %549)  ; FMad(a,b,c)
  %551 = fadd fast float %528, %548
  %552 = fadd fast float %531, %550
  %553 = icmp ugt i32 %502, 1
  %554 = icmp ugt i32 %500, 33554431
  %555 = or i1 %554, %553
  br i1 %555, label %556, label %581

; <label>:556                                     ; preds = %483
  %557 = add i32 %62, 228
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = lshr i32 %559, 16
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = fmul fast float %524, %561
  %563 = call float @dx.op.unary.f32(i32 22, float %562)  ; Frc(value)
  %564 = mul nuw nsw i32 %502, %503
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %563, %565
  %567 = call float @dx.op.unary.f32(i32 27, float %566)  ; Round_ni(value)
  %568 = fptoui float %567 to i32
  %569 = urem i32 %568, %502
  %570 = udiv i32 %568, %503
  %571 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %572 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %573 = uitofp i32 %569 to float
  %574 = uitofp i32 %570 to float
  %575 = fadd fast float %571, %573
  %576 = fadd fast float %572, %574
  %577 = uitofp i32 %502 to float
  %578 = uitofp i32 %503 to float
  %579 = fdiv fast float %575, %577
  %580 = fdiv fast float %576, %578
  br label %581

; <label>:581                                     ; preds = %556, %483
  %582 = phi float [ %579, %556 ], [ %551, %483 ]
  %583 = phi float [ %580, %556 ], [ %552, %483 ]
  %584 = and i32 %477, 16777216
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %695, label %586

; <label>:586                                     ; preds = %581
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 0
  %589 = extractvalue %dx.types.CBufRet.f32 %587, 1
  %590 = extractvalue %dx.types.CBufRet.f32 %587, 2
  %591 = fadd fast float %588, %170
  %592 = fadd fast float %589, %171
  %593 = fadd fast float %590, %172
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 0
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = icmp eq i32 %63, 65535
  br i1 %597, label %692, label %598

; <label>:598                                     ; preds = %586
  %599 = lshr i32 %63, 1
  %600 = shl i32 %599, 2
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %63, 1
  %604 = icmp ne i32 %603, 0
  %605 = lshr i32 %602, 16
  %606 = and i32 %602, 65535
  %607 = select i1 %604, i32 %605, i32 %606
  %608 = icmp eq i32 %607, 65535
  br i1 %608, label %688, label %609

; <label>:609                                     ; preds = %598
  %610 = mul nuw nsw i32 %607, 40
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = add nuw nsw i32 %610, 12
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = add nuw nsw i32 %610, 24
  %621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = add nuw nsw i32 %610, 36
  %626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = fsub fast float %591, %612
  %629 = fsub fast float %592, %613
  %630 = fsub fast float %593, %614
  %631 = fmul fast float %627, %628
  %632 = fmul fast float %627, %629
  %633 = fmul fast float %627, %630
  %634 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %635 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %636 = call float @dx.op.unary.f32(i32 27, float %633)  ; Round_ni(value)
  %637 = fadd fast float %634, 5.000000e-01
  %638 = fadd fast float %635, 5.000000e-01
  %639 = fadd fast float %636, 5.000000e-01
  %640 = fmul fast float %637, %617
  %641 = fmul fast float %638, %618
  %642 = fmul fast float %639, %619
  %643 = shl i32 %63, 2
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = add i32 %645, 0
  %647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %648 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  %649 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %650 = call float @dx.op.unary.f32(i32 22, float %642)  ; Frc(value)
  %651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %647, %dx.types.Handle %55, float %648, float %649, float %650, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = fmul fast float %652, 1.023000e+03
  %656 = fmul fast float %653, 1.023000e+03
  %657 = fmul fast float %654, 1.023000e+03
  %658 = fadd fast float %655, 5.000000e-01
  %659 = fadd fast float %656, 5.000000e-01
  %660 = fadd fast float %657, 5.000000e-01
  %661 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %662 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %663 = call float @dx.op.unary.f32(i32 27, float %660)  ; Round_ni(value)
  %664 = fsub fast float %631, %634
  %665 = fsub fast float %632, %635
  %666 = fsub fast float %633, %636
  %667 = fmul fast float %664, 7.500000e-01
  %668 = fmul fast float %665, 7.500000e-01
  %669 = fmul fast float %666, 7.500000e-01
  %670 = fadd fast float %634, 1.250000e-01
  %671 = fadd fast float %670, %667
  %672 = fadd fast float %671, %661
  %673 = fadd fast float %635, 1.250000e-01
  %674 = fadd fast float %673, %668
  %675 = fadd fast float %674, %662
  %676 = fadd fast float %636, 1.250000e-01
  %677 = fadd fast float %676, %669
  %678 = fadd fast float %677, %663
  %679 = fmul fast float %672, %622
  %680 = fmul fast float %675, %623
  %681 = fmul fast float %678, %624
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = add i32 %683, 0
  %685 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %684, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %685, %dx.types.Handle %53, float %679, float %680, float %681, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %687 = extractvalue %dx.types.ResRet.f32 %686, 0
  br label %688

; <label>:688                                     ; preds = %609, %598
  %689 = phi float [ %687, %609 ], [ -1.000000e+00, %598 ]
  %690 = fadd fast float %689, %596
  %691 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  br label %692

; <label>:692                                     ; preds = %688, %586
  %693 = phi float [ %691, %688 ], [ %596, %586 ]
  %694 = fmul fast float %693, %444
  br label %695

; <label>:695                                     ; preds = %692, %581
  %696 = phi float [ %694, %692 ], [ %444, %581 ]
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 256
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %747, label %701

; <label>:701                                     ; preds = %695
  %702 = add i32 %62, 440
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = add i32 %704, 0
  %706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %706, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = add i32 %62, 100
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = shl i32 %711, 4
  %713 = and i32 %712, 32752
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = lshr i32 %711, 7
  %716 = and i32 %715, 32752
  %717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %716)  ; LegacyF16ToF32(value)
  %718 = fsub fast float 1.000000e+00, %696
  %719 = call float @dx.op.binary.f32(i32 35, float %718, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %720 = bitcast float %696 to i32
  %721 = sitofp i32 %720 to float
  %722 = fadd fast float %721, 0xC1CFBF8940000000
  %723 = fmul fast float %717, %722
  %724 = fadd fast float %723, 0x41CFBF8940000000
  %725 = fptosi float %724 to i32
  %726 = bitcast i32 %725 to float
  %727 = bitcast float %719 to i32
  %728 = sitofp i32 %727 to float
  %729 = fadd fast float %728, 0xC1CFBF8940000000
  %730 = fmul fast float %729, %717
  %731 = fadd fast float %730, 0x41CFBF8940000000
  %732 = fptosi float %731 to i32
  %733 = bitcast i32 %732 to float
  %734 = fmul fast float %726, %714
  %735 = fmul fast float %733, %714
  %736 = fsub fast float %719, %734
  %737 = fadd fast float %735, %719
  %738 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %739 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %740 = fsub fast float %708, %738
  %741 = fsub fast float %739, %738
  %742 = bitcast float %741 to i32
  %743 = sub nsw i32 2129859010, %742
  %744 = bitcast i32 %743 to float
  %745 = fmul fast float %744, %740
  %746 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  br label %747

; <label>:747                                     ; preds = %701, %695
  %748 = phi float [ %746, %701 ], [ %696, %695 ]
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 128
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %769, label %753

; <label>:753                                     ; preds = %747
  %754 = add i32 %62, 424
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = add i32 %756, 0
  %758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %759 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %758, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 524288
  %764 = icmp ne i32 %763, 0
  %765 = fcmp fast ogt float %760, 0x3FE0101020000000
  %766 = select i1 %765, float 1.000000e+00, float 0.000000e+00
  %767 = select i1 %764, float %766, float %760
  %768 = fmul fast float %767, %748
  br label %769

; <label>:769                                     ; preds = %753, %747
  %770 = phi float [ %768, %753 ], [ %748, %747 ]
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 16
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %973, label %775

; <label>:775                                     ; preds = %769
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = add i32 %62, 376
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = add i32 %780, 0
  %782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %782, %dx.types.Handle %107, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = extractvalue %dx.types.ResRet.f32 %783, 3
  %788 = and i32 %777, 255
  %789 = uitofp i32 %788 to float
  %790 = lshr i32 %777, 8
  %791 = and i32 %790, 255
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %787, %789
  %794 = fadd fast float %793, %792
  %795 = fmul fast float %794, 0x3F70101000000000
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 512
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %808, label %800

; <label>:800                                     ; preds = %775
  %801 = add i32 %62, 460
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = add i32 %803, 0
  %805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %806 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %805, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  br label %808

; <label>:808                                     ; preds = %800, %775
  %809 = phi float [ %807, %800 ], [ 1.000000e+00, %775 ]
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 33554432
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %920, label %814

; <label>:814                                     ; preds = %808
  %815 = add i32 %62, 224
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = lshr i32 %817, 16
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = add i32 %62, 228
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 65535
  %826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %825)  ; LegacyF16ToF32(value)
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = lshr i32 %828, 24
  %830 = uitofp i32 %829 to float
  %831 = fmul fast float %830, 0x3F70101020000000
  %832 = and i32 %828, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = lshr i32 %828, 8
  %836 = and i32 %835, 255
  %837 = uitofp i32 %836 to float
  %838 = fmul fast float %837, 0x3F70101020000000
  %839 = lshr i32 %828, 16
  %840 = and i32 %839, 255
  %841 = uitofp i32 %840 to float
  %842 = fmul fast float %841, 0x3F70101020000000
  %843 = add i32 %62, 220
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = lshr i32 %845, 24
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F70101020000000
  %849 = and i32 %845, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = lshr i32 %845, 8
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F70101020000000
  %856 = lshr i32 %845, 16
  %857 = and i32 %856, 255
  %858 = uitofp i32 %857 to float
  %859 = fmul fast float %858, 0x3F70101020000000
  %860 = bitcast float %784 to i32
  %861 = ashr i32 %860, 1
  %862 = sub nsw i32 1597463174, %861
  %863 = bitcast i32 %862 to float
  %864 = fmul fast float %784, 5.000000e-01
  %865 = fmul fast float %863, %863
  %866 = fmul fast float %865, %864
  %867 = fsub fast float 1.500000e+00, %866
  %868 = fmul fast float %863, %784
  %869 = fmul fast float %868, %867
  %870 = bitcast float %785 to i32
  %871 = ashr i32 %870, 1
  %872 = sub nsw i32 1597463174, %871
  %873 = bitcast i32 %872 to float
  %874 = fmul fast float %785, 5.000000e-01
  %875 = fmul fast float %873, %873
  %876 = fmul fast float %875, %874
  %877 = fsub fast float 1.500000e+00, %876
  %878 = fmul fast float %873, %785
  %879 = fmul fast float %878, %877
  %880 = bitcast float %786 to i32
  %881 = ashr i32 %880, 1
  %882 = sub nsw i32 1597463174, %881
  %883 = bitcast i32 %882 to float
  %884 = fmul fast float %786, 5.000000e-01
  %885 = fmul fast float %883, %883
  %886 = fmul fast float %885, %884
  %887 = fsub fast float 1.500000e+00, %886
  %888 = fmul fast float %883, %786
  %889 = fmul fast float %888, %887
  %890 = fsub fast float %869, %851
  %891 = fsub fast float %879, %855
  %892 = fsub fast float %889, %859
  %893 = fmul fast float %890, %819
  %894 = fmul fast float %891, %821
  %895 = fmul fast float %892, %826
  %896 = fadd fast float %893, %834
  %897 = fadd fast float %894, %838
  %898 = fadd fast float %895, %842
  %899 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %900 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %901 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  %902 = fmul fast float %899, %899
  %903 = fmul fast float %900, %900
  %904 = fmul fast float %901, %901
  %905 = fsub fast float %902, %784
  %906 = fsub fast float %903, %785
  %907 = fsub fast float %904, %786
  %908 = fmul fast float %905, %809
  %909 = fmul fast float %906, %809
  %910 = fmul fast float %907, %809
  %911 = fadd fast float %908, %784
  %912 = fadd fast float %909, %785
  %913 = fadd fast float %910, %786
  %914 = fadd fast float %831, %795
  %915 = fsub fast float %914, %848
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %917 = fsub fast float %916, %795
  %918 = fmul fast float %917, %809
  %919 = fadd fast float %918, %795
  br label %973

; <label>:920                                     ; preds = %808
  %921 = and i32 %811, 134217728
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %957, label %923

; <label>:923                                     ; preds = %920
  %924 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %926 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %927 = fadd fast float %924, -5.000000e-01
  %928 = fadd fast float %925, -5.000000e-01
  %929 = fadd fast float %926, -5.000000e-01
  %930 = fmul fast float %927, %809
  %931 = fmul fast float %928, %809
  %932 = fmul fast float %929, %809
  %933 = fadd fast float %930, 5.000000e-01
  %934 = fadd fast float %931, 5.000000e-01
  %935 = fadd fast float %932, 5.000000e-01
  %936 = call float @dx.op.unary.f32(i32 24, float %784)  ; Sqrt(value)
  %937 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %938 = call float @dx.op.unary.f32(i32 24, float %786)  ; Sqrt(value)
  %939 = fmul fast float %933, 2.000000e+00
  %940 = fsub fast float 1.000000e+00, %939
  %941 = fmul fast float %940, %936
  %942 = fadd fast float %941, %939
  %943 = fmul fast float %942, %936
  %944 = fmul fast float %934, 2.000000e+00
  %945 = fsub fast float 1.000000e+00, %944
  %946 = fmul fast float %945, %937
  %947 = fadd fast float %946, %944
  %948 = fmul fast float %947, %937
  %949 = fmul fast float %935, 2.000000e+00
  %950 = fsub fast float 1.000000e+00, %949
  %951 = fmul fast float %950, %938
  %952 = fadd fast float %951, %949
  %953 = fmul fast float %952, %938
  %954 = fmul fast float %943, %943
  %955 = fmul fast float %948, %948
  %956 = fmul fast float %953, %953
  br label %973

; <label>:957                                     ; preds = %920
  %958 = fmul fast float %261, %261
  %959 = fmul fast float %265, %265
  %960 = fmul fast float %269, %269
  %961 = fadd fast float %958, -1.000000e+00
  %962 = fadd fast float %959, -1.000000e+00
  %963 = fadd fast float %960, -1.000000e+00
  %964 = fmul fast float %809, %961
  %965 = fmul fast float %809, %962
  %966 = fmul fast float %809, %963
  %967 = fadd fast float %964, 1.000000e+00
  %968 = fadd fast float %965, 1.000000e+00
  %969 = fadd fast float %966, 1.000000e+00
  %970 = fmul fast float %967, %784
  %971 = fmul fast float %968, %785
  %972 = fmul fast float %969, %786
  br label %973

; <label>:973                                     ; preds = %957, %923, %814, %769
  %974 = phi float [ %919, %814 ], [ %795, %923 ], [ %795, %957 ], [ 0x3FA23C0BE0000000, %769 ]
  %975 = phi float [ %911, %814 ], [ %954, %923 ], [ %970, %957 ], [ 1.000000e+00, %769 ]
  %976 = phi float [ %912, %814 ], [ %955, %923 ], [ %971, %957 ], [ 1.000000e+00, %769 ]
  %977 = phi float [ %913, %814 ], [ %956, %923 ], [ %972, %957 ], [ 1.000000e+00, %769 ]
  %978 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.i32 %978, 1
  %980 = and i32 %979, 1
  %981 = icmp ne i32 %980, 0
  %982 = add i32 %62, 356
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %984, 32
  %986 = icmp ne i32 %985, 0
  %987 = and i1 %981, %986
  %988 = select i1 %987, float 1.000000e+00, float %975
  %989 = select i1 %987, float 0x3FD3333340000000, float %976
  %990 = select i1 %987, float 0x3FD3333340000000, float %977
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 32
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1067, label %995

; <label>:995                                     ; preds = %973
  %996 = add i32 %62, 92
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = add i32 %62, 392
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = add i32 %1001, 0
  %1003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1004 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1003, %dx.types.Handle %107, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.ResRet.f32 %1004, 3
  %1009 = and i32 %998, 255
  %1010 = uitofp i32 %1009 to float
  %1011 = lshr i32 %998, 8
  %1012 = and i32 %1011, 255
  %1013 = uitofp i32 %1012 to float
  %1014 = lshr i32 %998, 16
  %1015 = and i32 %1014, 255
  %1016 = uitofp i32 %1015 to float
  %1017 = fmul fast float %1016, 0x3F70101000000000
  %1018 = fmul fast float %1005, %1010
  %1019 = fadd fast float %1018, %1013
  %1020 = fmul fast float %1019, 0x3F70101000000000
  %1021 = fadd fast float %1006, -5.000000e-01
  %1022 = fadd fast float %1008, -5.000000e-01
  %1023 = fmul fast float %1021, %1017
  %1024 = fmul fast float %1022, %1017
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fadd fast float %1024, 5.000000e-01
  %1027 = fmul fast float %1025, 2.000000e+00
  %1028 = fadd fast float %1027, -1.000000e+00
  %1029 = fmul fast float %1026, 2.000000e+00
  %1030 = fadd fast float %1029, -1.000000e+00
  %1031 = fadd fast float %1028, %1030
  %1032 = fmul fast float %1031, 5.000000e-01
  %1033 = fsub fast float %1028, %1030
  %1034 = fmul fast float %1033, 5.000000e-01
  %1035 = call float @dx.op.unary.f32(i32 6, float %1032)  ; FAbs(value)
  %1036 = fsub fast float 1.000000e+00, %1035
  %1037 = call float @dx.op.unary.f32(i32 6, float %1034)  ; FAbs(value)
  %1038 = fsub fast float %1036, %1037
  %1039 = call float @dx.op.dot3.f32(i32 55, float %1032, float %1034, float %1038, float %1032, float %1034, float %1038)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = call float @dx.op.unary.f32(i32 25, float %1039)  ; Rsqrt(value)
  %1041 = fmul fast float %1032, %1040
  %1042 = fmul fast float %1034, %1040
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %1044, 67108864
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1063, label %1047

; <label>:1047                                    ; preds = %995
  %1048 = add i32 %62, 280
  %1049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.i32 %1049, 0
  %1051 = and i32 %1050, 65535
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = and i32 %1054, 65535
  %1056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1055)  ; LegacyF16ToF32(value)
  %1057 = lshr i32 %1050, 16
  %1058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1057)  ; LegacyF16ToF32(value)
  %1059 = fsub fast float %1020, %1058
  %1060 = fmul fast float %1059, %1052
  %1061 = fadd fast float %1060, %1056
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  br label %1063

; <label>:1063                                    ; preds = %1047, %995
  %1064 = phi float [ %1062, %1047 ], [ %1020, %995 ]
  %1065 = call float @dx.op.dot2.f32(i32 54, float %1041, float %1042, float %486, float %487)  ; Dot2(ax,ay,bx,by)
  %1066 = call float @dx.op.dot2.f32(i32 54, float %1041, float %1042, float %488, float %489)  ; Dot2(ax,ay,bx,by)
  br label %1067

; <label>:1067                                    ; preds = %1063, %973
  %1068 = phi float [ %1064, %1063 ], [ 0x3FD6666660000000, %973 ]
  %1069 = phi float [ %1065, %1063 ], [ 0.000000e+00, %973 ]
  %1070 = phi float [ %1066, %1063 ], [ 0.000000e+00, %973 ]
  %1071 = phi float [ %1007, %1063 ], [ 1.000000e+00, %973 ]
  %1072 = add i32 %62, 160
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = lshr i32 %1074, 22
  %1076 = shl nuw nsw i32 %1075, 5
  %1077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1076)  ; LegacyF16ToF32(value)
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 64
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1115, label %1082

; <label>:1082                                    ; preds = %1067
  %1083 = add i32 %62, 408
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %1085, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = and i32 %1089, 131072
  %1091 = icmp eq i32 %1090, 0
  %1092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1087, %dx.types.Handle %107, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = fmul fast float %1093, %249
  %1097 = fmul fast float %1094, %252
  %1098 = fmul fast float %1095, %255
  br i1 %1091, label %1105, label %1099

; <label>:1099                                    ; preds = %1082
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 0
  %1102 = fmul fast float %1101, %1096
  %1103 = fmul fast float %1101, %1097
  %1104 = fmul fast float %1101, %1098
  br label %1105

; <label>:1105                                    ; preds = %1099, %1082
  %1106 = phi float [ %1102, %1099 ], [ %1096, %1082 ]
  %1107 = phi float [ %1103, %1099 ], [ %1097, %1082 ]
  %1108 = phi float [ %1104, %1099 ], [ %1098, %1082 ]
  %1109 = fmul fast float %1106, %1077
  %1110 = select i1 %232, float %1109, float %1106
  %1111 = call float @dx.op.dot3.f32(i32 55, float %1110, float %1107, float %1108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = select i1 %232, float 0.000000e+00, float %1106
  %1113 = select i1 %232, float %1111, float %1107
  %1114 = select i1 %232, float 0.000000e+00, float %1108
  br label %1115

; <label>:1115                                    ; preds = %1105, %1067
  %1116 = phi float [ %1112, %1105 ], [ 0.000000e+00, %1067 ]
  %1117 = phi float [ %1113, %1105 ], [ 0.000000e+00, %1067 ]
  %1118 = phi float [ %1114, %1105 ], [ 0.000000e+00, %1067 ]
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 1024
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1153, label %1123

; <label>:1123                                    ; preds = %1115
  %1124 = add i32 %62, 152
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1128, 0x3F70101020000000
  %1130 = lshr i32 %1126, 8
  %1131 = and i32 %1130, 255
  %1132 = uitofp i32 %1131 to float
  %1133 = fmul fast float %1132, 0x3F70101020000000
  %1134 = lshr i32 %1126, 16
  %1135 = and i32 %1134, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = fmul fast float %1136, 0x3F70101020000000
  %1138 = fmul fast float %1129, %1129
  %1139 = fmul fast float %1133, %1133
  %1140 = fmul fast float %1137, %1137
  %1141 = add i32 %62, 476
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %1143, 0
  %1145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1145, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = fmul fast float %1138, %1147
  %1151 = fmul fast float %1139, %1148
  %1152 = fmul fast float %1140, %1149
  br label %1153

; <label>:1153                                    ; preds = %1123, %1115
  %1154 = phi float [ %1150, %1123 ], [ 0.000000e+00, %1115 ]
  %1155 = phi float [ %1151, %1123 ], [ 0.000000e+00, %1115 ]
  %1156 = phi float [ %1152, %1123 ], [ 0.000000e+00, %1115 ]
  %1157 = fcmp fast ogt float %1154, 0.000000e+00
  %1158 = fcmp fast ogt float %1155, 0.000000e+00
  %1159 = fcmp fast ogt float %1156, 0.000000e+00
  %1160 = call float @dx.op.unary.f32(i32 23, float %1154)  ; Log(value)
  %1161 = call float @dx.op.unary.f32(i32 23, float %1155)  ; Log(value)
  %1162 = call float @dx.op.unary.f32(i32 23, float %1156)  ; Log(value)
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = lshr i32 %1164, 7
  %1166 = and i32 %1165, 32752
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = fmul fast float %1160, 0xBFE62E4300000000
  %1169 = fmul fast float %1168, %1167
  %1170 = fmul fast float %1161, 0xBFE62E4300000000
  %1171 = fmul fast float %1170, %1167
  %1172 = fmul fast float %1162, 0xBFE62E4300000000
  %1173 = fmul fast float %1172, %1167
  %1174 = select i1 %1157, float %1169, float 1.270000e+02
  %1175 = select i1 %1158, float %1171, float 1.270000e+02
  %1176 = select i1 %1159, float %1173, float 1.270000e+02
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 10240
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1201, label %1181

; <label>:1181                                    ; preds = %1153
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 2048
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1201, label %1186

; <label>:1186                                    ; preds = %1181
  %1187 = add i32 %62, 492
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = add i32 %1189, 0
  %1191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1191, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 3
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = shl i32 %1195, 4
  %1197 = and i32 %1196, 32752
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = fmul fast float %1198, %1193
  %1200 = call float @dx.op.binary.f32(i32 35, float %1199, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1201

; <label>:1201                                    ; preds = %1186, %1181, %1153
  %1202 = phi float [ %1200, %1186 ], [ 0x3F70101020000000, %1181 ], [ 0x3F70101020000000, %1153 ]
  %1203 = add i32 %62, 96
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 255
  %1207 = uitofp i32 %1206 to float
  %1208 = lshr i32 %1205, 8
  %1209 = and i32 %1208, 255
  %1210 = uitofp i32 %1209 to float
  %1211 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1212 = fmul fast float %1210, %1211
  %1213 = fadd fast float %1212, %1207
  %1214 = fmul fast float %1213, 0x3F70101020000000
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  br label %1216

; <label>:1216                                    ; preds = %1201, %468
  %1217 = phi float [ 0.000000e+00, %468 ], [ %1069, %1201 ]
  %1218 = phi float [ 0.000000e+00, %468 ], [ %1070, %1201 ]
  %1219 = phi float [ 0.000000e+00, %468 ], [ %988, %1201 ]
  %1220 = phi float [ 0.000000e+00, %468 ], [ %989, %1201 ]
  %1221 = phi float [ 0.000000e+00, %468 ], [ %990, %1201 ]
  %1222 = phi float [ 0.000000e+00, %468 ], [ %1174, %1201 ]
  %1223 = phi float [ 0.000000e+00, %468 ], [ %1175, %1201 ]
  %1224 = phi float [ 0.000000e+00, %468 ], [ %1176, %1201 ]
  %1225 = phi float [ 0.000000e+00, %468 ], [ %1116, %1201 ]
  %1226 = phi float [ 0.000000e+00, %468 ], [ %1117, %1201 ]
  %1227 = phi float [ 0.000000e+00, %468 ], [ %1118, %1201 ]
  %1228 = phi float [ 0.000000e+00, %468 ], [ %974, %1201 ]
  %1229 = phi float [ 0.000000e+00, %468 ], [ %770, %1201 ]
  %1230 = phi float [ 0.000000e+00, %468 ], [ %1068, %1201 ]
  %1231 = phi float [ 0.000000e+00, %468 ], [ %1071, %1201 ]
  %1232 = phi float [ 0.000000e+00, %468 ], [ %1202, %1201 ]
  %1233 = phi float [ 0.000000e+00, %468 ], [ %1215, %1201 ]
  br i1 %416, label %2220, label %1234

; <label>:1234                                    ; preds = %1216
  %1235 = icmp ult i32 %474, 2
  %1236 = add i32 %62, 40
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = add i32 %62, 44
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = or i32 %1241, %1238
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %2220, label %1244

; <label>:1244                                    ; preds = %1234
  %1245 = and i32 %1238, 262144
  %1246 = icmp ne i32 %1245, 0
  %1247 = select i1 %1246, float %65, float 1.000000e+00
  %1248 = select i1 %1246, float %66, float 0.000000e+00
  %1249 = select i1 %1246, float %67, float 0.000000e+00
  %1250 = select i1 %1246, float %68, float 1.000000e+00
  %1251 = select i1 %1246, float %69, float %90
  %1252 = select i1 %1246, float %70, float %91
  %1253 = add i32 %62, 300
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = lshr i32 %1255, 16
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = fmul fast float %1257, 0x3F50624DE0000000
  %1259 = add i32 %62, 104
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = lshr i32 %1261, 16
  %1263 = and i32 %1262, 255
  %1264 = lshr i32 %1261, 24
  %1265 = add i32 %62, 308
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %1267, 65535
  %1269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1268)  ; LegacyF16ToF32(value)
  %1270 = lshr i32 %1267, 16
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = add i32 %62, 48
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = lshr i32 %1274, 22
  %1276 = shl nuw nsw i32 %1275, 5
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = shl i32 %1274, 4
  %1279 = and i32 %1278, 32752
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = lshr i32 %1274, 7
  %1282 = and i32 %1281, 32752
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 3
  %1286 = fmul fast float %1285, 1.000000e+03
  %1287 = fmul fast float %326, %1286
  %1288 = call float @dx.op.unary.f32(i32 22, float %1287)  ; Frc(value)
  %1289 = fadd fast float %1288, %316
  %1290 = fmul fast float %327, %1286
  %1291 = call float @dx.op.unary.f32(i32 22, float %1290)  ; Frc(value)
  %1292 = fadd fast float %1291, %318
  %1293 = fmul fast float %1258, %1286
  %1294 = call float @dx.op.unary.f32(i32 22, float %1293)  ; Frc(value)
  %1295 = fmul fast float %1294, 0x401921FB60000000
  %1296 = fadd fast float %1295, %1277
  %1297 = call float @dx.op.unary.f32(i32 13, float %1296)  ; Sin(value)
  %1298 = call float @dx.op.unary.f32(i32 12, float %1296)  ; Cos(value)
  %1299 = fsub fast float -0.000000e+00, %1297
  %1300 = fadd fast float %1251, -5.000000e-01
  %1301 = fadd fast float %1252, -5.000000e-01
  %1302 = fmul fast float %1269, %1300
  %1303 = fmul fast float %1271, %1301
  %1304 = fadd fast float %1302, 5.000000e-01
  %1305 = fadd fast float %1303, 5.000000e-01
  %1306 = fmul fast float %1280, %1304
  %1307 = fmul fast float %1283, %1305
  %1308 = fmul fast float %1298, %1306
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1299, float %1307, float %1308)  ; FMad(a,b,c)
  %1310 = fmul fast float %1297, %1306
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1298, float %1307, float %1310)  ; FMad(a,b,c)
  %1312 = fadd fast float %1289, %1309
  %1313 = fadd fast float %1292, %1311
  %1314 = icmp ugt i32 %1263, 1
  %1315 = icmp ugt i32 %1261, 33554431
  %1316 = or i1 %1315, %1314
  br i1 %1316, label %1317, label %1342

; <label>:1317                                    ; preds = %1244
  %1318 = add i32 %62, 244
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = lshr i32 %1320, 16
  %1322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1321)  ; LegacyF16ToF32(value)
  %1323 = fmul fast float %1285, %1322
  %1324 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1325 = mul nuw nsw i32 %1263, %1264
  %1326 = uitofp i32 %1325 to float
  %1327 = fmul fast float %1324, %1326
  %1328 = call float @dx.op.unary.f32(i32 27, float %1327)  ; Round_ni(value)
  %1329 = fptoui float %1328 to i32
  %1330 = urem i32 %1329, %1263
  %1331 = udiv i32 %1329, %1264
  %1332 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1333 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1334 = uitofp i32 %1330 to float
  %1335 = uitofp i32 %1331 to float
  %1336 = fadd fast float %1332, %1334
  %1337 = fadd fast float %1333, %1335
  %1338 = uitofp i32 %1263 to float
  %1339 = uitofp i32 %1264 to float
  %1340 = fdiv fast float %1336, %1338
  %1341 = fdiv fast float %1337, %1339
  br label %1342

; <label>:1342                                    ; preds = %1317, %1244
  %1343 = phi float [ %1340, %1317 ], [ %1312, %1244 ]
  %1344 = phi float [ %1341, %1317 ], [ %1313, %1244 ]
  %1345 = and i32 %1238, 16777216
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %1456, label %1347

; <label>:1347                                    ; preds = %1342
  %1348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.f32 %1348, 0
  %1350 = extractvalue %dx.types.CBufRet.f32 %1348, 1
  %1351 = extractvalue %dx.types.CBufRet.f32 %1348, 2
  %1352 = fadd fast float %1349, %170
  %1353 = fadd fast float %1350, %171
  %1354 = fadd fast float %1351, %172
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  %1357 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1358 = icmp eq i32 %63, 65535
  br i1 %1358, label %1453, label %1359

; <label>:1359                                    ; preds = %1347
  %1360 = lshr i32 %63, 1
  %1361 = shl i32 %1360, 2
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = and i32 %63, 1
  %1365 = icmp ne i32 %1364, 0
  %1366 = lshr i32 %1363, 16
  %1367 = and i32 %1363, 65535
  %1368 = select i1 %1365, i32 %1366, i32 %1367
  %1369 = icmp eq i32 %1368, 65535
  br i1 %1369, label %1449, label %1370

; <label>:1370                                    ; preds = %1359
  %1371 = mul nuw nsw i32 %1368, 40
  %1372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = add nuw nsw i32 %1371, 12
  %1377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.ResRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.ResRet.f32 %1377, 2
  %1381 = add nuw nsw i32 %1371, 24
  %1382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = add nuw nsw i32 %1371, 36
  %1387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = fsub fast float %1352, %1373
  %1390 = fsub fast float %1353, %1374
  %1391 = fsub fast float %1354, %1375
  %1392 = fmul fast float %1388, %1389
  %1393 = fmul fast float %1388, %1390
  %1394 = fmul fast float %1388, %1391
  %1395 = call float @dx.op.unary.f32(i32 27, float %1392)  ; Round_ni(value)
  %1396 = call float @dx.op.unary.f32(i32 27, float %1393)  ; Round_ni(value)
  %1397 = call float @dx.op.unary.f32(i32 27, float %1394)  ; Round_ni(value)
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = fmul fast float %1398, %1378
  %1402 = fmul fast float %1399, %1379
  %1403 = fmul fast float %1400, %1380
  %1404 = shl i32 %63, 2
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = add i32 %1406, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call float @dx.op.unary.f32(i32 22, float %1401)  ; Frc(value)
  %1410 = call float @dx.op.unary.f32(i32 22, float %1402)  ; Frc(value)
  %1411 = call float @dx.op.unary.f32(i32 22, float %1403)  ; Frc(value)
  %1412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1408, %dx.types.Handle %55, float %1409, float %1410, float %1411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1413 = extractvalue %dx.types.ResRet.f32 %1412, 0
  %1414 = extractvalue %dx.types.ResRet.f32 %1412, 1
  %1415 = extractvalue %dx.types.ResRet.f32 %1412, 2
  %1416 = fmul fast float %1413, 1.023000e+03
  %1417 = fmul fast float %1414, 1.023000e+03
  %1418 = fmul fast float %1415, 1.023000e+03
  %1419 = fadd fast float %1416, 5.000000e-01
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = call float @dx.op.unary.f32(i32 27, float %1419)  ; Round_ni(value)
  %1423 = call float @dx.op.unary.f32(i32 27, float %1420)  ; Round_ni(value)
  %1424 = call float @dx.op.unary.f32(i32 27, float %1421)  ; Round_ni(value)
  %1425 = fsub fast float %1392, %1395
  %1426 = fsub fast float %1393, %1396
  %1427 = fsub fast float %1394, %1397
  %1428 = fmul fast float %1425, 7.500000e-01
  %1429 = fmul fast float %1426, 7.500000e-01
  %1430 = fmul fast float %1427, 7.500000e-01
  %1431 = fadd fast float %1395, 1.250000e-01
  %1432 = fadd fast float %1431, %1428
  %1433 = fadd fast float %1432, %1422
  %1434 = fadd fast float %1396, 1.250000e-01
  %1435 = fadd fast float %1434, %1429
  %1436 = fadd fast float %1435, %1423
  %1437 = fadd fast float %1397, 1.250000e-01
  %1438 = fadd fast float %1437, %1430
  %1439 = fadd fast float %1438, %1424
  %1440 = fmul fast float %1433, %1383
  %1441 = fmul fast float %1436, %1384
  %1442 = fmul fast float %1439, %1385
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = add i32 %1444, 0
  %1446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1446, %dx.types.Handle %53, float %1440, float %1441, float %1442, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  br label %1449

; <label>:1449                                    ; preds = %1370, %1359
  %1450 = phi float [ %1448, %1370 ], [ -1.000000e+00, %1359 ]
  %1451 = fadd fast float %1450, %1357
  %1452 = call float @dx.op.unary.f32(i32 7, float %1451)  ; Saturate(value)
  br label %1453

; <label>:1453                                    ; preds = %1449, %1347
  %1454 = phi float [ %1452, %1449 ], [ %1357, %1347 ]
  %1455 = fmul fast float %1454, %471
  br label %1456

; <label>:1456                                    ; preds = %1453, %1342
  %1457 = phi float [ %1455, %1453 ], [ %471, %1342 ]
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 256
  %1461 = icmp eq i32 %1460, 0
  br i1 %1461, label %1508, label %1462

; <label>:1462                                    ; preds = %1456
  %1463 = add i32 %62, 444
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = add i32 %1465, 0
  %1467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1467, %dx.types.Handle %108, float %1343, float %1344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = add i32 %62, 116
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = shl i32 %1472, 4
  %1474 = and i32 %1473, 32752
  %1475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1474)  ; LegacyF16ToF32(value)
  %1476 = lshr i32 %1472, 7
  %1477 = and i32 %1476, 32752
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = fsub fast float 1.000000e+00, %1457
  %1480 = call float @dx.op.binary.f32(i32 35, float %1479, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1481 = bitcast float %1457 to i32
  %1482 = sitofp i32 %1481 to float
  %1483 = fadd fast float %1482, 0xC1CFBF8940000000
  %1484 = fmul fast float %1478, %1483
  %1485 = fadd fast float %1484, 0x41CFBF8940000000
  %1486 = fptosi float %1485 to i32
  %1487 = bitcast i32 %1486 to float
  %1488 = bitcast float %1480 to i32
  %1489 = sitofp i32 %1488 to float
  %1490 = fadd fast float %1489, 0xC1CFBF8940000000
  %1491 = fmul fast float %1490, %1478
  %1492 = fadd fast float %1491, 0x41CFBF8940000000
  %1493 = fptosi float %1492 to i32
  %1494 = bitcast i32 %1493 to float
  %1495 = fmul fast float %1487, %1475
  %1496 = fmul fast float %1494, %1475
  %1497 = fsub fast float %1480, %1495
  %1498 = fadd fast float %1496, %1480
  %1499 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1500 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1501 = fsub fast float %1469, %1499
  %1502 = fsub fast float %1500, %1499
  %1503 = bitcast float %1502 to i32
  %1504 = sub nsw i32 2129859010, %1503
  %1505 = bitcast i32 %1504 to float
  %1506 = fmul fast float %1505, %1501
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  br label %1508

; <label>:1508                                    ; preds = %1462, %1456
  %1509 = phi float [ %1507, %1462 ], [ %1457, %1456 ]
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 128
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1530, label %1514

; <label>:1514                                    ; preds = %1508
  %1515 = add i32 %62, 428
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = add i32 %1517, 0
  %1519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1520 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1519, %dx.types.Handle %108, float %1343, float %1344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 524288
  %1525 = icmp ne i32 %1524, 0
  %1526 = fcmp fast ogt float %1521, 0x3FE0101020000000
  %1527 = select i1 %1526, float 1.000000e+00, float 0.000000e+00
  %1528 = select i1 %1525, float %1527, float %1521
  %1529 = fmul fast float %1528, %1509
  br label %1530

; <label>:1530                                    ; preds = %1514, %1508
  %1531 = phi float [ %1529, %1514 ], [ %1509, %1508 ]
  %1532 = fcmp fast ult float %1531, 0x3F70101020000000
  br i1 %1532, label %2220, label %1533

; <label>:1533                                    ; preds = %1530
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 16
  %1537 = icmp eq i32 %1536, 0
  br i1 %1537, label %1736, label %1538

; <label>:1538                                    ; preds = %1533
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = add i32 %62, 380
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = add i32 %1543, 0
  %1545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1545, %dx.types.Handle %107, float %1343, float %1344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1547 = extractvalue %dx.types.ResRet.f32 %1546, 0
  %1548 = extractvalue %dx.types.ResRet.f32 %1546, 1
  %1549 = extractvalue %dx.types.ResRet.f32 %1546, 2
  %1550 = extractvalue %dx.types.ResRet.f32 %1546, 3
  %1551 = and i32 %1540, 255
  %1552 = uitofp i32 %1551 to float
  %1553 = lshr i32 %1540, 8
  %1554 = and i32 %1553, 255
  %1555 = uitofp i32 %1554 to float
  %1556 = fmul fast float %1550, %1552
  %1557 = fadd fast float %1556, %1555
  %1558 = fmul fast float %1557, 0x3F70101000000000
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 512
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1571, label %1563

; <label>:1563                                    ; preds = %1538
  %1564 = add i32 %62, 464
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = add i32 %1566, 0
  %1568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1568, %dx.types.Handle %108, float %1343, float %1344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1570 = extractvalue %dx.types.ResRet.f32 %1569, 0
  br label %1571

; <label>:1571                                    ; preds = %1563, %1538
  %1572 = phi float [ %1570, %1563 ], [ 1.000000e+00, %1538 ]
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 33554432
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1683, label %1577

; <label>:1577                                    ; preds = %1571
  %1578 = add i32 %62, 240
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 65535
  %1582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1581)  ; LegacyF16ToF32(value)
  %1583 = lshr i32 %1580, 16
  %1584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1583)  ; LegacyF16ToF32(value)
  %1585 = add i32 %62, 244
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 65535
  %1589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1588)  ; LegacyF16ToF32(value)
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = lshr i32 %1591, 24
  %1593 = uitofp i32 %1592 to float
  %1594 = fmul fast float %1593, 0x3F70101020000000
  %1595 = and i32 %1591, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = fmul fast float %1596, 0x3F70101020000000
  %1598 = lshr i32 %1591, 8
  %1599 = and i32 %1598, 255
  %1600 = uitofp i32 %1599 to float
  %1601 = fmul fast float %1600, 0x3F70101020000000
  %1602 = lshr i32 %1591, 16
  %1603 = and i32 %1602, 255
  %1604 = uitofp i32 %1603 to float
  %1605 = fmul fast float %1604, 0x3F70101020000000
  %1606 = add i32 %62, 236
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = lshr i32 %1608, 24
  %1610 = uitofp i32 %1609 to float
  %1611 = fmul fast float %1610, 0x3F70101020000000
  %1612 = and i32 %1608, 255
  %1613 = uitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 0x3F70101020000000
  %1615 = lshr i32 %1608, 8
  %1616 = and i32 %1615, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = fmul fast float %1617, 0x3F70101020000000
  %1619 = lshr i32 %1608, 16
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = fmul fast float %1621, 0x3F70101020000000
  %1623 = bitcast float %1547 to i32
  %1624 = ashr i32 %1623, 1
  %1625 = sub nsw i32 1597463174, %1624
  %1626 = bitcast i32 %1625 to float
  %1627 = fmul fast float %1547, 5.000000e-01
  %1628 = fmul fast float %1626, %1626
  %1629 = fmul fast float %1628, %1627
  %1630 = fsub fast float 1.500000e+00, %1629
  %1631 = fmul fast float %1626, %1547
  %1632 = fmul fast float %1631, %1630
  %1633 = bitcast float %1548 to i32
  %1634 = ashr i32 %1633, 1
  %1635 = sub nsw i32 1597463174, %1634
  %1636 = bitcast i32 %1635 to float
  %1637 = fmul fast float %1548, 5.000000e-01
  %1638 = fmul fast float %1636, %1636
  %1639 = fmul fast float %1638, %1637
  %1640 = fsub fast float 1.500000e+00, %1639
  %1641 = fmul fast float %1636, %1548
  %1642 = fmul fast float %1641, %1640
  %1643 = bitcast float %1549 to i32
  %1644 = ashr i32 %1643, 1
  %1645 = sub nsw i32 1597463174, %1644
  %1646 = bitcast i32 %1645 to float
  %1647 = fmul fast float %1549, 5.000000e-01
  %1648 = fmul fast float %1646, %1646
  %1649 = fmul fast float %1648, %1647
  %1650 = fsub fast float 1.500000e+00, %1649
  %1651 = fmul fast float %1646, %1549
  %1652 = fmul fast float %1651, %1650
  %1653 = fsub fast float %1632, %1614
  %1654 = fsub fast float %1642, %1618
  %1655 = fsub fast float %1652, %1622
  %1656 = fmul fast float %1653, %1582
  %1657 = fmul fast float %1654, %1584
  %1658 = fmul fast float %1655, %1589
  %1659 = fadd fast float %1656, %1597
  %1660 = fadd fast float %1657, %1601
  %1661 = fadd fast float %1658, %1605
  %1662 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1663 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1664 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1665 = fmul fast float %1662, %1662
  %1666 = fmul fast float %1663, %1663
  %1667 = fmul fast float %1664, %1664
  %1668 = fsub fast float %1665, %1547
  %1669 = fsub fast float %1666, %1548
  %1670 = fsub fast float %1667, %1549
  %1671 = fmul fast float %1668, %1572
  %1672 = fmul fast float %1669, %1572
  %1673 = fmul fast float %1670, %1572
  %1674 = fadd fast float %1671, %1547
  %1675 = fadd fast float %1672, %1548
  %1676 = fadd fast float %1673, %1549
  %1677 = fadd fast float %1594, %1558
  %1678 = fsub fast float %1677, %1611
  %1679 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1680 = fsub fast float %1679, %1558
  %1681 = fmul fast float %1680, %1572
  %1682 = fadd fast float %1681, %1558
  br label %1736

; <label>:1683                                    ; preds = %1571
  %1684 = and i32 %1574, 134217728
  %1685 = icmp eq i32 %1684, 0
  br i1 %1685, label %1720, label %1686

; <label>:1686                                    ; preds = %1683
  %1687 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1688 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1689 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %1690 = fadd fast float %1687, -5.000000e-01
  %1691 = fadd fast float %1688, -5.000000e-01
  %1692 = fadd fast float %1689, -5.000000e-01
  %1693 = fmul fast float %1690, %1572
  %1694 = fmul fast float %1691, %1572
  %1695 = fmul fast float %1692, %1572
  %1696 = fadd fast float %1693, 5.000000e-01
  %1697 = fadd fast float %1694, 5.000000e-01
  %1698 = fadd fast float %1695, 5.000000e-01
  %1699 = call float @dx.op.unary.f32(i32 24, float %1547)  ; Sqrt(value)
  %1700 = call float @dx.op.unary.f32(i32 24, float %1548)  ; Sqrt(value)
  %1701 = call float @dx.op.unary.f32(i32 24, float %1549)  ; Sqrt(value)
  %1702 = fmul fast float %1696, 2.000000e+00
  %1703 = fsub fast float 1.000000e+00, %1702
  %1704 = fmul fast float %1703, %1699
  %1705 = fadd fast float %1704, %1702
  %1706 = fmul fast float %1705, %1699
  %1707 = fmul fast float %1697, 2.000000e+00
  %1708 = fsub fast float 1.000000e+00, %1707
  %1709 = fmul fast float %1708, %1700
  %1710 = fadd fast float %1709, %1707
  %1711 = fmul fast float %1710, %1700
  %1712 = fmul fast float %1698, 2.000000e+00
  %1713 = fsub fast float 1.000000e+00, %1712
  %1714 = fmul fast float %1713, %1701
  %1715 = fadd fast float %1714, %1712
  %1716 = fmul fast float %1715, %1701
  %1717 = fmul fast float %1706, %1706
  %1718 = fmul fast float %1711, %1711
  %1719 = fmul fast float %1716, %1716
  br label %1736

; <label>:1720                                    ; preds = %1683
  %1721 = fmul fast float %303, %303
  %1722 = fmul fast float %307, %307
  %1723 = fmul fast float %311, %311
  %1724 = fadd fast float %1721, -1.000000e+00
  %1725 = fadd fast float %1722, -1.000000e+00
  %1726 = fadd fast float %1723, -1.000000e+00
  %1727 = fmul fast float %1572, %1724
  %1728 = fmul fast float %1572, %1725
  %1729 = fmul fast float %1572, %1726
  %1730 = fadd fast float %1727, 1.000000e+00
  %1731 = fadd fast float %1728, 1.000000e+00
  %1732 = fadd fast float %1729, 1.000000e+00
  %1733 = fmul fast float %1730, %1547
  %1734 = fmul fast float %1731, %1548
  %1735 = fmul fast float %1732, %1549
  br label %1736

; <label>:1736                                    ; preds = %1720, %1686, %1577, %1533
  %1737 = phi float [ %1682, %1577 ], [ %1558, %1686 ], [ %1558, %1720 ], [ 0x3FA23C0BE0000000, %1533 ]
  %1738 = phi float [ %1674, %1577 ], [ %1717, %1686 ], [ %1733, %1720 ], [ 1.000000e+00, %1533 ]
  %1739 = phi float [ %1675, %1577 ], [ %1718, %1686 ], [ %1734, %1720 ], [ 1.000000e+00, %1533 ]
  %1740 = phi float [ %1676, %1577 ], [ %1719, %1686 ], [ %1735, %1720 ], [ 1.000000e+00, %1533 ]
  %1741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1742 = extractvalue %dx.types.CBufRet.i32 %1741, 1
  %1743 = and i32 %1742, 1
  %1744 = icmp ne i32 %1743, 0
  %1745 = add i32 %62, 356
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = and i32 %1747, 32
  %1749 = icmp ne i32 %1748, 0
  %1750 = and i1 %1744, %1749
  %1751 = select i1 %1750, float 1.000000e+00, float %1738
  %1752 = select i1 %1750, float 0x3FD3333340000000, float %1739
  %1753 = select i1 %1750, float 0x3FD3333340000000, float %1740
  %1754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.i32 %1754, 0
  %1756 = and i32 %1755, 32
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1830, label %1758

; <label>:1758                                    ; preds = %1736
  %1759 = add i32 %62, 108
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = add i32 %62, 396
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = add i32 %1764, 0
  %1766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1766, %dx.types.Handle %107, float %1343, float %1344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1768 = extractvalue %dx.types.ResRet.f32 %1767, 0
  %1769 = extractvalue %dx.types.ResRet.f32 %1767, 1
  %1770 = extractvalue %dx.types.ResRet.f32 %1767, 2
  %1771 = extractvalue %dx.types.ResRet.f32 %1767, 3
  %1772 = and i32 %1761, 255
  %1773 = uitofp i32 %1772 to float
  %1774 = lshr i32 %1761, 8
  %1775 = and i32 %1774, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = lshr i32 %1761, 16
  %1778 = and i32 %1777, 255
  %1779 = uitofp i32 %1778 to float
  %1780 = fmul fast float %1779, 0x3F70101000000000
  %1781 = fmul fast float %1768, %1773
  %1782 = fadd fast float %1781, %1776
  %1783 = fmul fast float %1782, 0x3F70101000000000
  %1784 = fadd fast float %1769, -5.000000e-01
  %1785 = fadd fast float %1771, -5.000000e-01
  %1786 = fmul fast float %1784, %1780
  %1787 = fmul fast float %1785, %1780
  %1788 = fadd fast float %1786, 5.000000e-01
  %1789 = fadd fast float %1787, 5.000000e-01
  %1790 = fmul fast float %1788, 2.000000e+00
  %1791 = fadd fast float %1790, -1.000000e+00
  %1792 = fmul fast float %1789, 2.000000e+00
  %1793 = fadd fast float %1792, -1.000000e+00
  %1794 = fadd fast float %1791, %1793
  %1795 = fmul fast float %1794, 5.000000e-01
  %1796 = fsub fast float %1791, %1793
  %1797 = fmul fast float %1796, 5.000000e-01
  %1798 = call float @dx.op.unary.f32(i32 6, float %1795)  ; FAbs(value)
  %1799 = fsub fast float 1.000000e+00, %1798
  %1800 = call float @dx.op.unary.f32(i32 6, float %1797)  ; FAbs(value)
  %1801 = fsub fast float %1799, %1800
  %1802 = call float @dx.op.dot3.f32(i32 55, float %1795, float %1797, float %1801, float %1795, float %1797, float %1801)  ; Dot3(ax,ay,az,bx,by,bz)
  %1803 = call float @dx.op.unary.f32(i32 25, float %1802)  ; Rsqrt(value)
  %1804 = fmul fast float %1795, %1803
  %1805 = fmul fast float %1797, %1803
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 67108864
  %1809 = icmp eq i32 %1808, 0
  br i1 %1809, label %1826, label %1810

; <label>:1810                                    ; preds = %1758
  %1811 = add i32 %62, 296
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = and i32 %1813, 65535
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = and i32 %1817, 65535
  %1819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1818)  ; LegacyF16ToF32(value)
  %1820 = lshr i32 %1813, 16
  %1821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1820)  ; LegacyF16ToF32(value)
  %1822 = fsub fast float %1783, %1821
  %1823 = fmul fast float %1822, %1815
  %1824 = fadd fast float %1823, %1819
  %1825 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  br label %1826

; <label>:1826                                    ; preds = %1810, %1758
  %1827 = phi float [ %1825, %1810 ], [ %1783, %1758 ]
  %1828 = call float @dx.op.dot2.f32(i32 54, float %1804, float %1805, float %1247, float %1248)  ; Dot2(ax,ay,bx,by)
  %1829 = call float @dx.op.dot2.f32(i32 54, float %1804, float %1805, float %1249, float %1250)  ; Dot2(ax,ay,bx,by)
  br label %1830

; <label>:1830                                    ; preds = %1826, %1736
  %1831 = phi float [ %1827, %1826 ], [ 0x3FD6666660000000, %1736 ]
  %1832 = phi float [ %1828, %1826 ], [ 0.000000e+00, %1736 ]
  %1833 = phi float [ %1829, %1826 ], [ 0.000000e+00, %1736 ]
  %1834 = phi float [ %1770, %1826 ], [ 1.000000e+00, %1736 ]
  %1835 = add i32 %62, 176
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = lshr i32 %1837, 22
  %1839 = shl nuw nsw i32 %1838, 5
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 64
  %1844 = icmp eq i32 %1843, 0
  br i1 %1844, label %1878, label %1845

; <label>:1845                                    ; preds = %1830
  %1846 = add i32 %62, 412
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = add i32 %1848, 0
  %1850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %1852, 131072
  %1854 = icmp eq i32 %1853, 0
  %1855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1850, %dx.types.Handle %107, float %1343, float %1344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1856 = extractvalue %dx.types.ResRet.f32 %1855, 0
  %1857 = extractvalue %dx.types.ResRet.f32 %1855, 1
  %1858 = extractvalue %dx.types.ResRet.f32 %1855, 2
  %1859 = fmul fast float %1856, %291
  %1860 = fmul fast float %1857, %294
  %1861 = fmul fast float %1858, %297
  br i1 %1854, label %1868, label %1862

; <label>:1862                                    ; preds = %1845
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 0
  %1865 = fmul fast float %1864, %1859
  %1866 = fmul fast float %1864, %1860
  %1867 = fmul fast float %1864, %1861
  br label %1868

; <label>:1868                                    ; preds = %1862, %1845
  %1869 = phi float [ %1865, %1862 ], [ %1859, %1845 ]
  %1870 = phi float [ %1866, %1862 ], [ %1860, %1845 ]
  %1871 = phi float [ %1867, %1862 ], [ %1861, %1845 ]
  %1872 = fmul fast float %1869, %1840
  %1873 = select i1 %232, float %1872, float %1869
  %1874 = call float @dx.op.dot3.f32(i32 55, float %1873, float %1870, float %1871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1875 = select i1 %232, float 0.000000e+00, float %1869
  %1876 = select i1 %232, float %1874, float %1870
  %1877 = select i1 %232, float 0.000000e+00, float %1871
  br label %1878

; <label>:1878                                    ; preds = %1868, %1830
  %1879 = phi float [ %1875, %1868 ], [ 0.000000e+00, %1830 ]
  %1880 = phi float [ %1876, %1868 ], [ 0.000000e+00, %1830 ]
  %1881 = phi float [ %1877, %1868 ], [ 0.000000e+00, %1830 ]
  %1882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.i32 %1882, 0
  %1884 = and i32 %1883, 1024
  %1885 = icmp eq i32 %1884, 0
  br i1 %1885, label %1916, label %1886

; <label>:1886                                    ; preds = %1878
  %1887 = add i32 %62, 168
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %1889, 255
  %1891 = uitofp i32 %1890 to float
  %1892 = fmul fast float %1891, 0x3F70101020000000
  %1893 = lshr i32 %1889, 8
  %1894 = and i32 %1893, 255
  %1895 = uitofp i32 %1894 to float
  %1896 = fmul fast float %1895, 0x3F70101020000000
  %1897 = lshr i32 %1889, 16
  %1898 = and i32 %1897, 255
  %1899 = uitofp i32 %1898 to float
  %1900 = fmul fast float %1899, 0x3F70101020000000
  %1901 = fmul fast float %1892, %1892
  %1902 = fmul fast float %1896, %1896
  %1903 = fmul fast float %1900, %1900
  %1904 = add i32 %62, 480
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = add i32 %1906, 0
  %1908 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1907, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1909 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1908, %dx.types.Handle %108, float %1343, float %1344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.ResRet.f32 %1909, 1
  %1912 = extractvalue %dx.types.ResRet.f32 %1909, 2
  %1913 = fmul fast float %1901, %1910
  %1914 = fmul fast float %1902, %1911
  %1915 = fmul fast float %1903, %1912
  br label %1916

; <label>:1916                                    ; preds = %1886, %1878
  %1917 = phi float [ %1913, %1886 ], [ 0.000000e+00, %1878 ]
  %1918 = phi float [ %1914, %1886 ], [ 0.000000e+00, %1878 ]
  %1919 = phi float [ %1915, %1886 ], [ 0.000000e+00, %1878 ]
  %1920 = fcmp fast ogt float %1917, 0.000000e+00
  %1921 = fcmp fast ogt float %1918, 0.000000e+00
  %1922 = fcmp fast ogt float %1919, 0.000000e+00
  %1923 = call float @dx.op.unary.f32(i32 23, float %1917)  ; Log(value)
  %1924 = call float @dx.op.unary.f32(i32 23, float %1918)  ; Log(value)
  %1925 = call float @dx.op.unary.f32(i32 23, float %1919)  ; Log(value)
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = lshr i32 %1927, 7
  %1929 = and i32 %1928, 32752
  %1930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1929)  ; LegacyF16ToF32(value)
  %1931 = fmul fast float %1923, 0xBFE62E4300000000
  %1932 = fmul fast float %1931, %1930
  %1933 = fmul fast float %1924, 0xBFE62E4300000000
  %1934 = fmul fast float %1933, %1930
  %1935 = fmul fast float %1925, 0xBFE62E4300000000
  %1936 = fmul fast float %1935, %1930
  %1937 = select i1 %1920, float %1932, float 1.270000e+02
  %1938 = select i1 %1921, float %1934, float 1.270000e+02
  %1939 = select i1 %1922, float %1936, float 1.270000e+02
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = and i32 %1941, 10240
  %1943 = icmp eq i32 %1942, 0
  br i1 %1943, label %1964, label %1944

; <label>:1944                                    ; preds = %1916
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = and i32 %1946, 2048
  %1948 = icmp eq i32 %1947, 0
  br i1 %1948, label %1964, label %1949

; <label>:1949                                    ; preds = %1944
  %1950 = add i32 %62, 496
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = add i32 %1952, 0
  %1954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1953, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1955 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1954, %dx.types.Handle %108, float %1343, float %1344, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1956 = extractvalue %dx.types.ResRet.f32 %1955, 3
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = shl i32 %1958, 4
  %1960 = and i32 %1959, 32752
  %1961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1960)  ; LegacyF16ToF32(value)
  %1962 = fmul fast float %1961, %1956
  %1963 = call float @dx.op.binary.f32(i32 35, float %1962, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1964

; <label>:1964                                    ; preds = %1949, %1944, %1916
  %1965 = phi float [ %1963, %1949 ], [ 0x3F70101020000000, %1944 ], [ 0x3F70101020000000, %1916 ]
  %1966 = add i32 %62, 112
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = and i32 %1968, 255
  %1970 = uitofp i32 %1969 to float
  %1971 = lshr i32 %1968, 8
  %1972 = and i32 %1971, 255
  %1973 = uitofp i32 %1972 to float
  %1974 = call float @dx.op.dot3.f32(i32 55, float %1751, float %1752, float %1753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1975 = fmul fast float %1973, %1974
  %1976 = fadd fast float %1975, %1970
  %1977 = fmul fast float %1976, 0x3F70101020000000
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  br i1 %1235, label %1979, label %2014

; <label>:1979                                    ; preds = %1964
  %1980 = fmul fast float %1965, 2.000000e+00
  %1981 = fcmp fast olt float %1937, 1.270000e+02
  %1982 = fcmp fast olt float %1938, 1.270000e+02
  %1983 = fcmp fast olt float %1939, 1.270000e+02
  %1984 = fmul fast float %1937, 0xBFF7154760000000
  %1985 = fmul fast float %1984, %1980
  %1986 = fmul fast float %1938, 0xBFF7154760000000
  %1987 = fmul fast float %1986, %1980
  %1988 = fmul fast float %1939, 0xBFF7154760000000
  %1989 = fmul fast float %1988, %1980
  %1990 = call float @dx.op.unary.f32(i32 21, float %1985)  ; Exp(value)
  %1991 = call float @dx.op.unary.f32(i32 21, float %1987)  ; Exp(value)
  %1992 = call float @dx.op.unary.f32(i32 21, float %1989)  ; Exp(value)
  %1993 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1994 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1995 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1996 = fadd fast float %1993, -1.000000e+00
  %1997 = select i1 %1981, float %1996, float -1.000000e+00
  %1998 = fadd fast float %1994, -1.000000e+00
  %1999 = select i1 %1982, float %1998, float -1.000000e+00
  %2000 = fadd fast float %1995, -1.000000e+00
  %2001 = select i1 %1983, float %2000, float -1.000000e+00
  %2002 = fmul fast float %1997, %1531
  %2003 = fmul fast float %1999, %1531
  %2004 = fmul fast float %2001, %1531
  %2005 = fadd fast float %2002, 1.000000e+00
  %2006 = fadd fast float %2003, 1.000000e+00
  %2007 = fadd fast float %2004, 1.000000e+00
  %2008 = fmul fast float %2005, %1219
  %2009 = fmul fast float %2006, %1220
  %2010 = fmul fast float %2007, %1221
  %2011 = fmul fast float %2005, %1225
  %2012 = fmul fast float %2006, %1226
  %2013 = fmul fast float %2007, %1227
  br label %2014

; <label>:2014                                    ; preds = %1979, %1964
  %2015 = phi float [ %2008, %1979 ], [ %1219, %1964 ]
  %2016 = phi float [ %2009, %1979 ], [ %1220, %1964 ]
  %2017 = phi float [ %2010, %1979 ], [ %1221, %1964 ]
  %2018 = phi float [ %2011, %1979 ], [ %1225, %1964 ]
  %2019 = phi float [ %2012, %1979 ], [ %1226, %1964 ]
  %2020 = phi float [ %2013, %1979 ], [ %1227, %1964 ]
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = and i32 %2022, 3
  %2024 = icmp eq i32 %2023, 3
  br i1 %2024, label %2103, label %2025

; <label>:2025                                    ; preds = %2014
  %2026 = and i32 %2022, 16
  %2027 = icmp ne i32 %2026, 0
  %2028 = select i1 %2027, float %1531, float 0.000000e+00
  %2029 = icmp eq i32 %2023, 0
  br i1 %2029, label %2030, label %2058

; <label>:2030                                    ; preds = %2025
  %2031 = and i32 %2022, 64
  %2032 = icmp ne i32 %2031, 0
  %2033 = select i1 %2032, float %1531, float 0.000000e+00
  %2034 = fsub fast float %1751, %2015
  %2035 = fsub fast float %1752, %2016
  %2036 = fsub fast float %1753, %2017
  %2037 = fmul fast float %2028, %2034
  %2038 = fmul fast float %2028, %2035
  %2039 = fmul fast float %2028, %2036
  %2040 = fadd fast float %2037, %2015
  %2041 = fadd fast float %2038, %2016
  %2042 = fadd fast float %2039, %2017
  %2043 = fsub fast float %1737, %1228
  %2044 = fmul fast float %2028, %2043
  %2045 = fadd fast float %2044, %1228
  %2046 = fsub fast float %1879, %2018
  %2047 = fsub fast float %1880, %2019
  %2048 = fsub fast float %1881, %2020
  %2049 = fmul fast float %2033, %2046
  %2050 = fmul fast float %2033, %2047
  %2051 = fmul fast float %2033, %2048
  %2052 = fadd fast float %2049, %2018
  %2053 = fadd fast float %2050, %2019
  %2054 = fadd fast float %2051, %2020
  %2055 = fsub fast float %1978, %1233
  %2056 = fmul fast float %2028, %2055
  %2057 = fadd fast float %2056, %1233
  br label %2103

; <label>:2058                                    ; preds = %2025
  %2059 = icmp eq i32 %2023, 1
  br i1 %2059, label %2060, label %2073

; <label>:2060                                    ; preds = %2058
  %2061 = fadd fast float %1751, -1.000000e+00
  %2062 = fadd fast float %1752, -1.000000e+00
  %2063 = fadd fast float %1753, -1.000000e+00
  %2064 = fmul fast float %2028, %2061
  %2065 = fmul fast float %2028, %2062
  %2066 = fmul fast float %2028, %2063
  %2067 = fadd fast float %2064, 1.000000e+00
  %2068 = fadd fast float %2065, 1.000000e+00
  %2069 = fadd fast float %2066, 1.000000e+00
  %2070 = fmul fast float %2067, %2015
  %2071 = fmul fast float %2068, %2016
  %2072 = fmul fast float %2069, %2017
  br label %2103

; <label>:2073                                    ; preds = %2058
  %2074 = icmp eq i32 %2023, 2
  br i1 %2074, label %2075, label %2103

; <label>:2075                                    ; preds = %2073
  %2076 = call float @dx.op.unary.f32(i32 24, float %1751)  ; Sqrt(value)
  %2077 = call float @dx.op.unary.f32(i32 24, float %1752)  ; Sqrt(value)
  %2078 = call float @dx.op.unary.f32(i32 24, float %1753)  ; Sqrt(value)
  %2079 = fadd fast float %2076, -5.000000e-01
  %2080 = fadd fast float %2077, -5.000000e-01
  %2081 = fadd fast float %2078, -5.000000e-01
  %2082 = fmul fast float %2079, %2028
  %2083 = fmul fast float %2080, %2028
  %2084 = fmul fast float %2081, %2028
  %2085 = fadd fast float %2082, 5.000000e-01
  %2086 = fadd fast float %2083, 5.000000e-01
  %2087 = fadd fast float %2084, 5.000000e-01
  %2088 = fmul fast float %2085, 2.000000e+00
  %2089 = fsub fast float 1.000000e+00, %2088
  %2090 = fmul fast float %2089, %2015
  %2091 = fadd fast float %2090, %2088
  %2092 = fmul fast float %2091, %2015
  %2093 = fmul fast float %2086, 2.000000e+00
  %2094 = fsub fast float 1.000000e+00, %2093
  %2095 = fmul fast float %2094, %2016
  %2096 = fadd fast float %2095, %2093
  %2097 = fmul fast float %2096, %2016
  %2098 = fmul fast float %2087, 2.000000e+00
  %2099 = fsub fast float 1.000000e+00, %2098
  %2100 = fmul fast float %2099, %2017
  %2101 = fadd fast float %2100, %2098
  %2102 = fmul fast float %2101, %2017
  br label %2103

; <label>:2103                                    ; preds = %2075, %2073, %2060, %2030, %2014
  %2104 = phi float [ %2015, %2014 ], [ %2092, %2075 ], [ %2015, %2073 ], [ %2070, %2060 ], [ %2040, %2030 ]
  %2105 = phi float [ %2016, %2014 ], [ %2097, %2075 ], [ %2016, %2073 ], [ %2071, %2060 ], [ %2041, %2030 ]
  %2106 = phi float [ %2017, %2014 ], [ %2102, %2075 ], [ %2017, %2073 ], [ %2072, %2060 ], [ %2042, %2030 ]
  %2107 = phi float [ %2018, %2014 ], [ %2018, %2075 ], [ %2018, %2073 ], [ %2018, %2060 ], [ %2052, %2030 ]
  %2108 = phi float [ %2019, %2014 ], [ %2019, %2075 ], [ %2019, %2073 ], [ %2019, %2060 ], [ %2053, %2030 ]
  %2109 = phi float [ %2020, %2014 ], [ %2020, %2075 ], [ %2020, %2073 ], [ %2020, %2060 ], [ %2054, %2030 ]
  %2110 = phi float [ %1228, %2014 ], [ %1228, %2075 ], [ %1228, %2073 ], [ %1228, %2060 ], [ %2045, %2030 ]
  %2111 = phi float [ %1233, %2014 ], [ %1233, %2075 ], [ %1233, %2073 ], [ %1233, %2060 ], [ %2057, %2030 ]
  %2112 = and i32 %2022, 12
  %2113 = icmp eq i32 %2112, 12
  br i1 %2113, label %2220, label %2114

; <label>:2114                                    ; preds = %2103
  %2115 = and i32 %2022, 2097184
  %2116 = icmp eq i32 %2115, 2097184
  %2117 = select i1 %2116, float %1531, float 0.000000e+00
  %2118 = and i32 %2022, 4194336
  %2119 = icmp eq i32 %2118, 4194336
  %2120 = select i1 %2119, float %1531, float 0.000000e+00
  %2121 = and i32 %2022, 8388640
  %2122 = icmp eq i32 %2121, 8388640
  %2123 = select i1 %2122, float %1531, float 0.000000e+00
  %2124 = and i32 %2022, 1024
  %2125 = icmp ne i32 %2124, 0
  %2126 = select i1 %2125, float %1531, float 0.000000e+00
  %2127 = and i32 %2022, 2048
  %2128 = icmp ne i32 %2127, 0
  %2129 = select i1 %2128, float %1531, float 0.000000e+00
  %2130 = icmp eq i32 %2112, 0
  br i1 %2130, label %2131, label %2156

; <label>:2131                                    ; preds = %2114
  %2132 = fsub fast float %1832, %1217
  %2133 = fsub fast float %1833, %1218
  %2134 = fmul fast float %2117, %2132
  %2135 = fmul fast float %2117, %2133
  %2136 = fadd fast float %2134, %1217
  %2137 = fadd fast float %2135, %1218
  %2138 = fsub fast float %1834, %1231
  %2139 = fmul fast float %2120, %2138
  %2140 = fadd fast float %2139, %1231
  %2141 = fsub fast float %1831, %1230
  %2142 = fmul fast float %2123, %2141
  %2143 = fadd fast float %2142, %1230
  %2144 = fsub fast float %1937, %1222
  %2145 = fsub fast float %1938, %1223
  %2146 = fsub fast float %1939, %1224
  %2147 = fmul fast float %2126, %2144
  %2148 = fmul fast float %2126, %2145
  %2149 = fmul fast float %2126, %2146
  %2150 = fadd fast float %2147, %1222
  %2151 = fadd fast float %2148, %1223
  %2152 = fadd fast float %2149, %1224
  %2153 = fsub fast float %1965, %1232
  %2154 = fmul fast float %2129, %2153
  %2155 = fadd fast float %2154, %1232
  br label %2220

; <label>:2156                                    ; preds = %2114
  %2157 = icmp eq i32 %2112, 4
  br i1 %2157, label %2158, label %2198

; <label>:2158                                    ; preds = %2156
  %2159 = fmul fast float %2117, %1832
  %2160 = fmul fast float %2117, %1833
  %2161 = fadd fast float %2159, %1217
  %2162 = fadd fast float %2160, %1218
  %2163 = call float @dx.op.binary.f32(i32 36, float %1231, float %1834)  ; FMin(a,b)
  %2164 = fsub fast float %2163, %1231
  %2165 = fmul fast float %2164, %2120
  %2166 = fadd fast float %2165, %1231
  %2167 = fadd fast float %1831, %1230
  %2168 = fmul fast float %2167, 0x3FF337FAE0000000
  %2169 = fmul fast float %1230, %1230
  %2170 = fmul fast float %1831, %1831
  %2171 = fadd fast float %2170, %2169
  %2172 = fmul fast float %2171, 0x3FE5152B00000000
  %2173 = fmul fast float %1230, 0xBFCC1F85E0000000
  %2174 = fmul fast float %2173, %1831
  %2175 = fadd fast float %2174, 0xBFE1363700000000
  %2176 = fadd fast float %2175, %2168
  %2177 = fsub fast float %2176, %2172
  %2178 = fmul fast float %2167, 0x3FBA6F0D00000000
  %2179 = fmul fast float %2171, 0x3FD0432880000000
  %2180 = fmul fast float %1230, 0xBFEF110800000000
  %2181 = fmul fast float %2180, %1831
  %2182 = fadd fast float %2181, 1.000000e+00
  %2183 = fsub fast float %2182, %2178
  %2184 = fadd fast float %2183, %2179
  %2185 = fdiv fast float %2177, %2184
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = fsub fast float %2186, %1230
  %2188 = fmul fast float %2187, %2123
  %2189 = fadd fast float %2188, %1230
  %2190 = fmul fast float %2126, %1937
  %2191 = fmul fast float %2126, %1938
  %2192 = fmul fast float %2126, %1939
  %2193 = fadd fast float %2190, %1222
  %2194 = fadd fast float %2191, %1223
  %2195 = fadd fast float %2192, %1224
  %2196 = fmul fast float %2129, %1965
  %2197 = fadd fast float %2196, %1232
  br label %2220

; <label>:2198                                    ; preds = %2156
  %2199 = icmp eq i32 %2112, 8
  br i1 %2199, label %2200, label %2220

; <label>:2200                                    ; preds = %2198
  %2201 = fmul fast float %2117, %1832
  %2202 = fmul fast float %2117, %1833
  %2203 = fadd fast float %2201, %1217
  %2204 = fadd fast float %2202, %1218
  %2205 = call float @dx.op.binary.f32(i32 36, float %1231, float %1834)  ; FMin(a,b)
  %2206 = fsub fast float %2205, %1231
  %2207 = fmul fast float %2206, %2120
  %2208 = fadd fast float %2207, %1231
  %2209 = fsub fast float %1831, %1230
  %2210 = fmul fast float %2123, %2209
  %2211 = fadd fast float %2210, %1230
  %2212 = fmul fast float %2126, %1937
  %2213 = fmul fast float %2126, %1938
  %2214 = fmul fast float %2126, %1939
  %2215 = fadd fast float %2212, %1222
  %2216 = fadd fast float %2213, %1223
  %2217 = fadd fast float %2214, %1224
  %2218 = fmul fast float %2129, %1965
  %2219 = fadd fast float %2218, %1232
  br label %2220

; <label>:2220                                    ; preds = %2200, %2198, %2158, %2131, %2103, %1530, %1234, %1216
  %2221 = phi float [ %1217, %2103 ], [ %1217, %1530 ], [ %1217, %1216 ], [ %2203, %2200 ], [ %1217, %2198 ], [ %2161, %2158 ], [ %2136, %2131 ], [ %1217, %1234 ]
  %2222 = phi float [ %1218, %2103 ], [ %1218, %1530 ], [ %1218, %1216 ], [ %2204, %2200 ], [ %1218, %2198 ], [ %2162, %2158 ], [ %2137, %2131 ], [ %1218, %1234 ]
  %2223 = phi float [ %2104, %2103 ], [ %1219, %1530 ], [ %1219, %1216 ], [ %2104, %2200 ], [ %2104, %2198 ], [ %2104, %2158 ], [ %2104, %2131 ], [ %1219, %1234 ]
  %2224 = phi float [ %2105, %2103 ], [ %1220, %1530 ], [ %1220, %1216 ], [ %2105, %2200 ], [ %2105, %2198 ], [ %2105, %2158 ], [ %2105, %2131 ], [ %1220, %1234 ]
  %2225 = phi float [ %2106, %2103 ], [ %1221, %1530 ], [ %1221, %1216 ], [ %2106, %2200 ], [ %2106, %2198 ], [ %2106, %2158 ], [ %2106, %2131 ], [ %1221, %1234 ]
  %2226 = phi float [ %1222, %2103 ], [ %1222, %1530 ], [ %1222, %1216 ], [ %2215, %2200 ], [ %1222, %2198 ], [ %2193, %2158 ], [ %2150, %2131 ], [ %1222, %1234 ]
  %2227 = phi float [ %1223, %2103 ], [ %1223, %1530 ], [ %1223, %1216 ], [ %2216, %2200 ], [ %1223, %2198 ], [ %2194, %2158 ], [ %2151, %2131 ], [ %1223, %1234 ]
  %2228 = phi float [ %1224, %2103 ], [ %1224, %1530 ], [ %1224, %1216 ], [ %2217, %2200 ], [ %1224, %2198 ], [ %2195, %2158 ], [ %2152, %2131 ], [ %1224, %1234 ]
  %2229 = phi float [ %2107, %2103 ], [ %1225, %1530 ], [ %1225, %1216 ], [ %2107, %2200 ], [ %2107, %2198 ], [ %2107, %2158 ], [ %2107, %2131 ], [ %1225, %1234 ]
  %2230 = phi float [ %2108, %2103 ], [ %1226, %1530 ], [ %1226, %1216 ], [ %2108, %2200 ], [ %2108, %2198 ], [ %2108, %2158 ], [ %2108, %2131 ], [ %1226, %1234 ]
  %2231 = phi float [ %2109, %2103 ], [ %1227, %1530 ], [ %1227, %1216 ], [ %2109, %2200 ], [ %2109, %2198 ], [ %2109, %2158 ], [ %2109, %2131 ], [ %1227, %1234 ]
  %2232 = phi float [ %2110, %2103 ], [ %1228, %1530 ], [ %1228, %1216 ], [ %2110, %2200 ], [ %2110, %2198 ], [ %2110, %2158 ], [ %2110, %2131 ], [ %1228, %1234 ]
  %2233 = phi float [ %1230, %2103 ], [ %1230, %1530 ], [ %1230, %1216 ], [ %2211, %2200 ], [ %1230, %2198 ], [ %2189, %2158 ], [ %2143, %2131 ], [ %1230, %1234 ]
  %2234 = phi float [ %1231, %2103 ], [ %1231, %1530 ], [ %1231, %1216 ], [ %2208, %2200 ], [ %1231, %2198 ], [ %2166, %2158 ], [ %2140, %2131 ], [ %1231, %1234 ]
  %2235 = phi float [ %1232, %2103 ], [ %1232, %1530 ], [ %1232, %1216 ], [ %2219, %2200 ], [ %1232, %2198 ], [ %2197, %2158 ], [ %2155, %2131 ], [ %1232, %1234 ]
  %2236 = phi float [ %2111, %2103 ], [ %1233, %1530 ], [ %1233, %1216 ], [ %2111, %2200 ], [ %2111, %2198 ], [ %2111, %2158 ], [ %2111, %2131 ], [ %1233, %1234 ]
  br i1 %418, label %3223, label %2237

; <label>:2237                                    ; preds = %2220
  %2238 = icmp ult i32 %474, 3
  %2239 = add i32 %62, 56
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = add i32 %62, 60
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = or i32 %2244, %2241
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %3223, label %2247

; <label>:2247                                    ; preds = %2237
  %2248 = and i32 %2241, 262144
  %2249 = icmp ne i32 %2248, 0
  %2250 = select i1 %2249, float %65, float 1.000000e+00
  %2251 = select i1 %2249, float %66, float 0.000000e+00
  %2252 = select i1 %2249, float %67, float 0.000000e+00
  %2253 = select i1 %2249, float %68, float 1.000000e+00
  %2254 = select i1 %2249, float %69, float %90
  %2255 = select i1 %2249, float %70, float %91
  %2256 = add i32 %62, 316
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = lshr i32 %2258, 16
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = fmul fast float %2260, 0x3F50624DE0000000
  %2262 = add i32 %62, 120
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = lshr i32 %2264, 16
  %2266 = and i32 %2265, 255
  %2267 = lshr i32 %2264, 24
  %2268 = add i32 %62, 324
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 65535
  %2272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2271)  ; LegacyF16ToF32(value)
  %2273 = lshr i32 %2270, 16
  %2274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2273)  ; LegacyF16ToF32(value)
  %2275 = add i32 %62, 64
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = lshr i32 %2277, 22
  %2279 = shl nuw nsw i32 %2278, 5
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = shl i32 %2277, 4
  %2282 = and i32 %2281, 32752
  %2283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2282)  ; LegacyF16ToF32(value)
  %2284 = lshr i32 %2277, 7
  %2285 = and i32 %2284, 32752
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2288 = extractvalue %dx.types.CBufRet.f32 %2287, 3
  %2289 = fmul fast float %2288, 1.000000e+03
  %2290 = fmul fast float %368, %2289
  %2291 = call float @dx.op.unary.f32(i32 22, float %2290)  ; Frc(value)
  %2292 = fadd fast float %2291, %358
  %2293 = fmul fast float %369, %2289
  %2294 = call float @dx.op.unary.f32(i32 22, float %2293)  ; Frc(value)
  %2295 = fadd fast float %2294, %360
  %2296 = fmul fast float %2261, %2289
  %2297 = call float @dx.op.unary.f32(i32 22, float %2296)  ; Frc(value)
  %2298 = fmul fast float %2297, 0x401921FB60000000
  %2299 = fadd fast float %2298, %2280
  %2300 = call float @dx.op.unary.f32(i32 13, float %2299)  ; Sin(value)
  %2301 = call float @dx.op.unary.f32(i32 12, float %2299)  ; Cos(value)
  %2302 = fsub fast float -0.000000e+00, %2300
  %2303 = fadd fast float %2254, -5.000000e-01
  %2304 = fadd fast float %2255, -5.000000e-01
  %2305 = fmul fast float %2272, %2303
  %2306 = fmul fast float %2274, %2304
  %2307 = fadd fast float %2305, 5.000000e-01
  %2308 = fadd fast float %2306, 5.000000e-01
  %2309 = fmul fast float %2283, %2307
  %2310 = fmul fast float %2286, %2308
  %2311 = fmul fast float %2301, %2309
  %2312 = call float @dx.op.tertiary.f32(i32 46, float %2302, float %2310, float %2311)  ; FMad(a,b,c)
  %2313 = fmul fast float %2300, %2309
  %2314 = call float @dx.op.tertiary.f32(i32 46, float %2301, float %2310, float %2313)  ; FMad(a,b,c)
  %2315 = fadd fast float %2292, %2312
  %2316 = fadd fast float %2295, %2314
  %2317 = icmp ugt i32 %2266, 1
  %2318 = icmp ugt i32 %2264, 33554431
  %2319 = or i1 %2318, %2317
  br i1 %2319, label %2320, label %2345

; <label>:2320                                    ; preds = %2247
  %2321 = add i32 %62, 260
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = lshr i32 %2323, 16
  %2325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2324)  ; LegacyF16ToF32(value)
  %2326 = fmul fast float %2288, %2325
  %2327 = call float @dx.op.unary.f32(i32 22, float %2326)  ; Frc(value)
  %2328 = mul nuw nsw i32 %2266, %2267
  %2329 = uitofp i32 %2328 to float
  %2330 = fmul fast float %2327, %2329
  %2331 = call float @dx.op.unary.f32(i32 27, float %2330)  ; Round_ni(value)
  %2332 = fptoui float %2331 to i32
  %2333 = urem i32 %2332, %2266
  %2334 = udiv i32 %2332, %2267
  %2335 = call float @dx.op.unary.f32(i32 22, float %2315)  ; Frc(value)
  %2336 = call float @dx.op.unary.f32(i32 22, float %2316)  ; Frc(value)
  %2337 = uitofp i32 %2333 to float
  %2338 = uitofp i32 %2334 to float
  %2339 = fadd fast float %2335, %2337
  %2340 = fadd fast float %2336, %2338
  %2341 = uitofp i32 %2266 to float
  %2342 = uitofp i32 %2267 to float
  %2343 = fdiv fast float %2339, %2341
  %2344 = fdiv fast float %2340, %2342
  br label %2345

; <label>:2345                                    ; preds = %2320, %2247
  %2346 = phi float [ %2343, %2320 ], [ %2315, %2247 ]
  %2347 = phi float [ %2344, %2320 ], [ %2316, %2247 ]
  %2348 = and i32 %2241, 16777216
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2459, label %2350

; <label>:2350                                    ; preds = %2345
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2355 = fadd fast float %2352, %170
  %2356 = fadd fast float %2353, %171
  %2357 = fadd fast float %2354, %172
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = call float @dx.op.unary.f32(i32 7, float %2359)  ; Saturate(value)
  %2361 = icmp eq i32 %63, 65535
  br i1 %2361, label %2456, label %2362

; <label>:2362                                    ; preds = %2350
  %2363 = lshr i32 %63, 1
  %2364 = shl i32 %2363, 2
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %63, 1
  %2368 = icmp ne i32 %2367, 0
  %2369 = lshr i32 %2366, 16
  %2370 = and i32 %2366, 65535
  %2371 = select i1 %2368, i32 %2369, i32 %2370
  %2372 = icmp eq i32 %2371, 65535
  br i1 %2372, label %2452, label %2373

; <label>:2373                                    ; preds = %2362
  %2374 = mul nuw nsw i32 %2371, 40
  %2375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.ResRet.f32 %2375, 1
  %2378 = extractvalue %dx.types.ResRet.f32 %2375, 2
  %2379 = add nuw nsw i32 %2374, 12
  %2380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.ResRet.f32 %2380, 1
  %2383 = extractvalue %dx.types.ResRet.f32 %2380, 2
  %2384 = add nuw nsw i32 %2374, 24
  %2385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.f32 %2385, 0
  %2387 = extractvalue %dx.types.ResRet.f32 %2385, 1
  %2388 = extractvalue %dx.types.ResRet.f32 %2385, 2
  %2389 = add nuw nsw i32 %2374, 36
  %2390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  %2392 = fsub fast float %2355, %2376
  %2393 = fsub fast float %2356, %2377
  %2394 = fsub fast float %2357, %2378
  %2395 = fmul fast float %2391, %2392
  %2396 = fmul fast float %2391, %2393
  %2397 = fmul fast float %2391, %2394
  %2398 = call float @dx.op.unary.f32(i32 27, float %2395)  ; Round_ni(value)
  %2399 = call float @dx.op.unary.f32(i32 27, float %2396)  ; Round_ni(value)
  %2400 = call float @dx.op.unary.f32(i32 27, float %2397)  ; Round_ni(value)
  %2401 = fadd fast float %2398, 5.000000e-01
  %2402 = fadd fast float %2399, 5.000000e-01
  %2403 = fadd fast float %2400, 5.000000e-01
  %2404 = fmul fast float %2401, %2381
  %2405 = fmul fast float %2402, %2382
  %2406 = fmul fast float %2403, %2383
  %2407 = shl i32 %63, 2
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = add i32 %2409, 0
  %2411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2412 = call float @dx.op.unary.f32(i32 22, float %2404)  ; Frc(value)
  %2413 = call float @dx.op.unary.f32(i32 22, float %2405)  ; Frc(value)
  %2414 = call float @dx.op.unary.f32(i32 22, float %2406)  ; Frc(value)
  %2415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2411, %dx.types.Handle %55, float %2412, float %2413, float %2414, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2416 = extractvalue %dx.types.ResRet.f32 %2415, 0
  %2417 = extractvalue %dx.types.ResRet.f32 %2415, 1
  %2418 = extractvalue %dx.types.ResRet.f32 %2415, 2
  %2419 = fmul fast float %2416, 1.023000e+03
  %2420 = fmul fast float %2417, 1.023000e+03
  %2421 = fmul fast float %2418, 1.023000e+03
  %2422 = fadd fast float %2419, 5.000000e-01
  %2423 = fadd fast float %2420, 5.000000e-01
  %2424 = fadd fast float %2421, 5.000000e-01
  %2425 = call float @dx.op.unary.f32(i32 27, float %2422)  ; Round_ni(value)
  %2426 = call float @dx.op.unary.f32(i32 27, float %2423)  ; Round_ni(value)
  %2427 = call float @dx.op.unary.f32(i32 27, float %2424)  ; Round_ni(value)
  %2428 = fsub fast float %2395, %2398
  %2429 = fsub fast float %2396, %2399
  %2430 = fsub fast float %2397, %2400
  %2431 = fmul fast float %2428, 7.500000e-01
  %2432 = fmul fast float %2429, 7.500000e-01
  %2433 = fmul fast float %2430, 7.500000e-01
  %2434 = fadd fast float %2398, 1.250000e-01
  %2435 = fadd fast float %2434, %2431
  %2436 = fadd fast float %2435, %2425
  %2437 = fadd fast float %2399, 1.250000e-01
  %2438 = fadd fast float %2437, %2432
  %2439 = fadd fast float %2438, %2426
  %2440 = fadd fast float %2400, 1.250000e-01
  %2441 = fadd fast float %2440, %2433
  %2442 = fadd fast float %2441, %2427
  %2443 = fmul fast float %2436, %2386
  %2444 = fmul fast float %2439, %2387
  %2445 = fmul fast float %2442, %2388
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = add i32 %2447, 0
  %2449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2449, %dx.types.Handle %53, float %2443, float %2444, float %2445, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  br label %2452

; <label>:2452                                    ; preds = %2373, %2362
  %2453 = phi float [ %2451, %2373 ], [ -1.000000e+00, %2362 ]
  %2454 = fadd fast float %2453, %2360
  %2455 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  br label %2456

; <label>:2456                                    ; preds = %2452, %2350
  %2457 = phi float [ %2455, %2452 ], [ %2360, %2350 ]
  %2458 = fmul fast float %2457, %470
  br label %2459

; <label>:2459                                    ; preds = %2456, %2345
  %2460 = phi float [ %2458, %2456 ], [ %470, %2345 ]
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = and i32 %2462, 256
  %2464 = icmp eq i32 %2463, 0
  br i1 %2464, label %2511, label %2465

; <label>:2465                                    ; preds = %2459
  %2466 = add i32 %62, 448
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = add i32 %2468, 0
  %2470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2470, %dx.types.Handle %108, float %2346, float %2347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2472 = extractvalue %dx.types.ResRet.f32 %2471, 0
  %2473 = add i32 %62, 132
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2473, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = shl i32 %2475, 4
  %2477 = and i32 %2476, 32752
  %2478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2477)  ; LegacyF16ToF32(value)
  %2479 = lshr i32 %2475, 7
  %2480 = and i32 %2479, 32752
  %2481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2480)  ; LegacyF16ToF32(value)
  %2482 = fsub fast float 1.000000e+00, %2460
  %2483 = call float @dx.op.binary.f32(i32 35, float %2482, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2484 = bitcast float %2460 to i32
  %2485 = sitofp i32 %2484 to float
  %2486 = fadd fast float %2485, 0xC1CFBF8940000000
  %2487 = fmul fast float %2481, %2486
  %2488 = fadd fast float %2487, 0x41CFBF8940000000
  %2489 = fptosi float %2488 to i32
  %2490 = bitcast i32 %2489 to float
  %2491 = bitcast float %2483 to i32
  %2492 = sitofp i32 %2491 to float
  %2493 = fadd fast float %2492, 0xC1CFBF8940000000
  %2494 = fmul fast float %2493, %2481
  %2495 = fadd fast float %2494, 0x41CFBF8940000000
  %2496 = fptosi float %2495 to i32
  %2497 = bitcast i32 %2496 to float
  %2498 = fmul fast float %2490, %2478
  %2499 = fmul fast float %2497, %2478
  %2500 = fsub fast float %2483, %2498
  %2501 = fadd fast float %2499, %2483
  %2502 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  %2503 = call float @dx.op.unary.f32(i32 7, float %2501)  ; Saturate(value)
  %2504 = fsub fast float %2472, %2502
  %2505 = fsub fast float %2503, %2502
  %2506 = bitcast float %2505 to i32
  %2507 = sub nsw i32 2129859010, %2506
  %2508 = bitcast i32 %2507 to float
  %2509 = fmul fast float %2508, %2504
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  br label %2511

; <label>:2511                                    ; preds = %2465, %2459
  %2512 = phi float [ %2510, %2465 ], [ %2460, %2459 ]
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 128
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2533, label %2517

; <label>:2517                                    ; preds = %2511
  %2518 = add i32 %62, 432
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %2520, 0
  %2522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2522, %dx.types.Handle %108, float %2346, float %2347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2524 = extractvalue %dx.types.ResRet.f32 %2523, 0
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 524288
  %2528 = icmp ne i32 %2527, 0
  %2529 = fcmp fast ogt float %2524, 0x3FE0101020000000
  %2530 = select i1 %2529, float 1.000000e+00, float 0.000000e+00
  %2531 = select i1 %2528, float %2530, float %2524
  %2532 = fmul fast float %2531, %2512
  br label %2533

; <label>:2533                                    ; preds = %2517, %2511
  %2534 = phi float [ %2532, %2517 ], [ %2512, %2511 ]
  %2535 = fcmp fast ult float %2534, 0x3F70101020000000
  br i1 %2535, label %3223, label %2536

; <label>:2536                                    ; preds = %2533
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 16
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %2739, label %2541

; <label>:2541                                    ; preds = %2536
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %62, 384
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = add i32 %2546, 0
  %2548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2548, %dx.types.Handle %107, float %2346, float %2347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.ResRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.ResRet.f32 %2549, 2
  %2553 = extractvalue %dx.types.ResRet.f32 %2549, 3
  %2554 = and i32 %2543, 255
  %2555 = uitofp i32 %2554 to float
  %2556 = lshr i32 %2543, 8
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2553, %2555
  %2560 = fadd fast float %2559, %2558
  %2561 = fmul fast float %2560, 0x3F70101000000000
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 512
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2574, label %2566

; <label>:2566                                    ; preds = %2541
  %2567 = add i32 %62, 468
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2567, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = add i32 %2569, 0
  %2571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2571, %dx.types.Handle %108, float %2346, float %2347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2573 = extractvalue %dx.types.ResRet.f32 %2572, 0
  br label %2574

; <label>:2574                                    ; preds = %2566, %2541
  %2575 = phi float [ %2573, %2566 ], [ 1.000000e+00, %2541 ]
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 33554432
  %2579 = icmp eq i32 %2578, 0
  br i1 %2579, label %2686, label %2580

; <label>:2580                                    ; preds = %2574
  %2581 = add i32 %62, 256
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 65535
  %2585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2584)  ; LegacyF16ToF32(value)
  %2586 = lshr i32 %2583, 16
  %2587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2586)  ; LegacyF16ToF32(value)
  %2588 = add i32 %62, 260
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 65535
  %2592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2591)  ; LegacyF16ToF32(value)
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = lshr i32 %2594, 24
  %2596 = uitofp i32 %2595 to float
  %2597 = fmul fast float %2596, 0x3F70101020000000
  %2598 = and i32 %2594, 255
  %2599 = uitofp i32 %2598 to float
  %2600 = fmul fast float %2599, 0x3F70101020000000
  %2601 = lshr i32 %2594, 8
  %2602 = and i32 %2601, 255
  %2603 = uitofp i32 %2602 to float
  %2604 = fmul fast float %2603, 0x3F70101020000000
  %2605 = lshr i32 %2594, 16
  %2606 = and i32 %2605, 255
  %2607 = uitofp i32 %2606 to float
  %2608 = fmul fast float %2607, 0x3F70101020000000
  %2609 = add i32 %62, 252
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = lshr i32 %2611, 24
  %2613 = uitofp i32 %2612 to float
  %2614 = fmul fast float %2613, 0x3F70101020000000
  %2615 = and i32 %2611, 255
  %2616 = uitofp i32 %2615 to float
  %2617 = fmul fast float %2616, 0x3F70101020000000
  %2618 = lshr i32 %2611, 8
  %2619 = and i32 %2618, 255
  %2620 = uitofp i32 %2619 to float
  %2621 = fmul fast float %2620, 0x3F70101020000000
  %2622 = lshr i32 %2611, 16
  %2623 = and i32 %2622, 255
  %2624 = uitofp i32 %2623 to float
  %2625 = fmul fast float %2624, 0x3F70101020000000
  %2626 = bitcast float %2550 to i32
  %2627 = ashr i32 %2626, 1
  %2628 = sub nsw i32 1597463174, %2627
  %2629 = bitcast i32 %2628 to float
  %2630 = fmul fast float %2550, 5.000000e-01
  %2631 = fmul fast float %2629, %2629
  %2632 = fmul fast float %2631, %2630
  %2633 = fsub fast float 1.500000e+00, %2632
  %2634 = fmul fast float %2629, %2550
  %2635 = fmul fast float %2634, %2633
  %2636 = bitcast float %2551 to i32
  %2637 = ashr i32 %2636, 1
  %2638 = sub nsw i32 1597463174, %2637
  %2639 = bitcast i32 %2638 to float
  %2640 = fmul fast float %2551, 5.000000e-01
  %2641 = fmul fast float %2639, %2639
  %2642 = fmul fast float %2641, %2640
  %2643 = fsub fast float 1.500000e+00, %2642
  %2644 = fmul fast float %2639, %2551
  %2645 = fmul fast float %2644, %2643
  %2646 = bitcast float %2552 to i32
  %2647 = ashr i32 %2646, 1
  %2648 = sub nsw i32 1597463174, %2647
  %2649 = bitcast i32 %2648 to float
  %2650 = fmul fast float %2552, 5.000000e-01
  %2651 = fmul fast float %2649, %2649
  %2652 = fmul fast float %2651, %2650
  %2653 = fsub fast float 1.500000e+00, %2652
  %2654 = fmul fast float %2649, %2552
  %2655 = fmul fast float %2654, %2653
  %2656 = fsub fast float %2635, %2617
  %2657 = fsub fast float %2645, %2621
  %2658 = fsub fast float %2655, %2625
  %2659 = fmul fast float %2656, %2585
  %2660 = fmul fast float %2657, %2587
  %2661 = fmul fast float %2658, %2592
  %2662 = fadd fast float %2659, %2600
  %2663 = fadd fast float %2660, %2604
  %2664 = fadd fast float %2661, %2608
  %2665 = call float @dx.op.unary.f32(i32 7, float %2662)  ; Saturate(value)
  %2666 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  %2667 = call float @dx.op.unary.f32(i32 7, float %2664)  ; Saturate(value)
  %2668 = fmul fast float %2665, %2665
  %2669 = fmul fast float %2666, %2666
  %2670 = fmul fast float %2667, %2667
  %2671 = fsub fast float %2668, %2550
  %2672 = fsub fast float %2669, %2551
  %2673 = fsub fast float %2670, %2552
  %2674 = fmul fast float %2671, %2575
  %2675 = fmul fast float %2672, %2575
  %2676 = fmul fast float %2673, %2575
  %2677 = fadd fast float %2674, %2550
  %2678 = fadd fast float %2675, %2551
  %2679 = fadd fast float %2676, %2552
  %2680 = fadd fast float %2597, %2561
  %2681 = fsub fast float %2680, %2614
  %2682 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2683 = fsub fast float %2682, %2561
  %2684 = fmul fast float %2683, %2575
  %2685 = fadd fast float %2684, %2561
  br label %2739

; <label>:2686                                    ; preds = %2574
  %2687 = and i32 %2577, 134217728
  %2688 = icmp eq i32 %2687, 0
  br i1 %2688, label %2723, label %2689

; <label>:2689                                    ; preds = %2686
  %2690 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2691 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %2692 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %2693 = fadd fast float %2690, -5.000000e-01
  %2694 = fadd fast float %2691, -5.000000e-01
  %2695 = fadd fast float %2692, -5.000000e-01
  %2696 = fmul fast float %2693, %2575
  %2697 = fmul fast float %2694, %2575
  %2698 = fmul fast float %2695, %2575
  %2699 = fadd fast float %2696, 5.000000e-01
  %2700 = fadd fast float %2697, 5.000000e-01
  %2701 = fadd fast float %2698, 5.000000e-01
  %2702 = call float @dx.op.unary.f32(i32 24, float %2550)  ; Sqrt(value)
  %2703 = call float @dx.op.unary.f32(i32 24, float %2551)  ; Sqrt(value)
  %2704 = call float @dx.op.unary.f32(i32 24, float %2552)  ; Sqrt(value)
  %2705 = fmul fast float %2699, 2.000000e+00
  %2706 = fsub fast float 1.000000e+00, %2705
  %2707 = fmul fast float %2706, %2702
  %2708 = fadd fast float %2707, %2705
  %2709 = fmul fast float %2708, %2702
  %2710 = fmul fast float %2700, 2.000000e+00
  %2711 = fsub fast float 1.000000e+00, %2710
  %2712 = fmul fast float %2711, %2703
  %2713 = fadd fast float %2712, %2710
  %2714 = fmul fast float %2713, %2703
  %2715 = fmul fast float %2701, 2.000000e+00
  %2716 = fsub fast float 1.000000e+00, %2715
  %2717 = fmul fast float %2716, %2704
  %2718 = fadd fast float %2717, %2715
  %2719 = fmul fast float %2718, %2704
  %2720 = fmul fast float %2709, %2709
  %2721 = fmul fast float %2714, %2714
  %2722 = fmul fast float %2719, %2719
  br label %2739

; <label>:2723                                    ; preds = %2686
  %2724 = fmul fast float %345, %345
  %2725 = fmul fast float %349, %349
  %2726 = fmul fast float %353, %353
  %2727 = fadd fast float %2724, -1.000000e+00
  %2728 = fadd fast float %2725, -1.000000e+00
  %2729 = fadd fast float %2726, -1.000000e+00
  %2730 = fmul fast float %2575, %2727
  %2731 = fmul fast float %2575, %2728
  %2732 = fmul fast float %2575, %2729
  %2733 = fadd fast float %2730, 1.000000e+00
  %2734 = fadd fast float %2731, 1.000000e+00
  %2735 = fadd fast float %2732, 1.000000e+00
  %2736 = fmul fast float %2733, %2550
  %2737 = fmul fast float %2734, %2551
  %2738 = fmul fast float %2735, %2552
  br label %2739

; <label>:2739                                    ; preds = %2723, %2689, %2580, %2536
  %2740 = phi float [ %2685, %2580 ], [ %2561, %2689 ], [ %2561, %2723 ], [ 0x3FA23C0BE0000000, %2536 ]
  %2741 = phi float [ %2677, %2580 ], [ %2720, %2689 ], [ %2736, %2723 ], [ 1.000000e+00, %2536 ]
  %2742 = phi float [ %2678, %2580 ], [ %2721, %2689 ], [ %2737, %2723 ], [ 1.000000e+00, %2536 ]
  %2743 = phi float [ %2679, %2580 ], [ %2722, %2689 ], [ %2738, %2723 ], [ 1.000000e+00, %2536 ]
  %2744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2745 = extractvalue %dx.types.CBufRet.i32 %2744, 1
  %2746 = and i32 %2745, 1
  %2747 = icmp ne i32 %2746, 0
  %2748 = add i32 %62, 356
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = and i32 %2750, 32
  %2752 = icmp ne i32 %2751, 0
  %2753 = and i1 %2747, %2752
  %2754 = select i1 %2753, float 1.000000e+00, float %2741
  %2755 = select i1 %2753, float 0x3FD3333340000000, float %2742
  %2756 = select i1 %2753, float 0x3FD3333340000000, float %2743
  %2757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.i32 %2757, 0
  %2759 = and i32 %2758, 32
  %2760 = icmp eq i32 %2759, 0
  br i1 %2760, label %2833, label %2761

; <label>:2761                                    ; preds = %2739
  %2762 = add i32 %62, 124
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = add i32 %62, 400
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = add i32 %2767, 0
  %2769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2769, %dx.types.Handle %107, float %2346, float %2347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.ResRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.ResRet.f32 %2770, 2
  %2774 = extractvalue %dx.types.ResRet.f32 %2770, 3
  %2775 = and i32 %2764, 255
  %2776 = uitofp i32 %2775 to float
  %2777 = lshr i32 %2764, 8
  %2778 = and i32 %2777, 255
  %2779 = uitofp i32 %2778 to float
  %2780 = lshr i32 %2764, 16
  %2781 = and i32 %2780, 255
  %2782 = uitofp i32 %2781 to float
  %2783 = fmul fast float %2782, 0x3F70101000000000
  %2784 = fmul fast float %2771, %2776
  %2785 = fadd fast float %2784, %2779
  %2786 = fmul fast float %2785, 0x3F70101000000000
  %2787 = fadd fast float %2772, -5.000000e-01
  %2788 = fadd fast float %2774, -5.000000e-01
  %2789 = fmul fast float %2787, %2783
  %2790 = fmul fast float %2788, %2783
  %2791 = fadd fast float %2789, 5.000000e-01
  %2792 = fadd fast float %2790, 5.000000e-01
  %2793 = fmul fast float %2791, 2.000000e+00
  %2794 = fadd fast float %2793, -1.000000e+00
  %2795 = fmul fast float %2792, 2.000000e+00
  %2796 = fadd fast float %2795, -1.000000e+00
  %2797 = fadd fast float %2794, %2796
  %2798 = fmul fast float %2797, 5.000000e-01
  %2799 = fsub fast float %2794, %2796
  %2800 = fmul fast float %2799, 5.000000e-01
  %2801 = call float @dx.op.unary.f32(i32 6, float %2798)  ; FAbs(value)
  %2802 = fsub fast float 1.000000e+00, %2801
  %2803 = call float @dx.op.unary.f32(i32 6, float %2800)  ; FAbs(value)
  %2804 = fsub fast float %2802, %2803
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2798, float %2800, float %2804, float %2798, float %2800, float %2804)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = call float @dx.op.unary.f32(i32 25, float %2805)  ; Rsqrt(value)
  %2807 = fmul fast float %2798, %2806
  %2808 = fmul fast float %2800, %2806
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = and i32 %2810, 67108864
  %2812 = icmp eq i32 %2811, 0
  br i1 %2812, label %2829, label %2813

; <label>:2813                                    ; preds = %2761
  %2814 = add i32 %62, 312
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = and i32 %2816, 65535
  %2818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2817)  ; LegacyF16ToF32(value)
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, 65535
  %2822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2821)  ; LegacyF16ToF32(value)
  %2823 = lshr i32 %2816, 16
  %2824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2823)  ; LegacyF16ToF32(value)
  %2825 = fsub fast float %2786, %2824
  %2826 = fmul fast float %2825, %2818
  %2827 = fadd fast float %2826, %2822
  %2828 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  br label %2829

; <label>:2829                                    ; preds = %2813, %2761
  %2830 = phi float [ %2828, %2813 ], [ %2786, %2761 ]
  %2831 = call float @dx.op.dot2.f32(i32 54, float %2807, float %2808, float %2250, float %2251)  ; Dot2(ax,ay,bx,by)
  %2832 = call float @dx.op.dot2.f32(i32 54, float %2807, float %2808, float %2252, float %2253)  ; Dot2(ax,ay,bx,by)
  br label %2833

; <label>:2833                                    ; preds = %2829, %2739
  %2834 = phi float [ %2830, %2829 ], [ 0x3FD6666660000000, %2739 ]
  %2835 = phi float [ %2831, %2829 ], [ 0.000000e+00, %2739 ]
  %2836 = phi float [ %2832, %2829 ], [ 0.000000e+00, %2739 ]
  %2837 = phi float [ %2773, %2829 ], [ 1.000000e+00, %2739 ]
  %2838 = add i32 %62, 192
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = lshr i32 %2840, 22
  %2842 = shl nuw nsw i32 %2841, 5
  %2843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2842)  ; LegacyF16ToF32(value)
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = and i32 %2845, 64
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %2881, label %2848

; <label>:2848                                    ; preds = %2833
  %2849 = add i32 %62, 416
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = add i32 %2851, 0
  %2853 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2852, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 131072
  %2857 = icmp eq i32 %2856, 0
  %2858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2853, %dx.types.Handle %107, float %2346, float %2347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2859 = extractvalue %dx.types.ResRet.f32 %2858, 0
  %2860 = extractvalue %dx.types.ResRet.f32 %2858, 1
  %2861 = extractvalue %dx.types.ResRet.f32 %2858, 2
  %2862 = fmul fast float %2859, %333
  %2863 = fmul fast float %2860, %336
  %2864 = fmul fast float %2861, %339
  br i1 %2857, label %2871, label %2865

; <label>:2865                                    ; preds = %2848
  %2866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2867 = extractvalue %dx.types.CBufRet.f32 %2866, 0
  %2868 = fmul fast float %2867, %2862
  %2869 = fmul fast float %2867, %2863
  %2870 = fmul fast float %2867, %2864
  br label %2871

; <label>:2871                                    ; preds = %2865, %2848
  %2872 = phi float [ %2868, %2865 ], [ %2862, %2848 ]
  %2873 = phi float [ %2869, %2865 ], [ %2863, %2848 ]
  %2874 = phi float [ %2870, %2865 ], [ %2864, %2848 ]
  %2875 = fmul fast float %2872, %2843
  %2876 = select i1 %232, float %2875, float %2872
  %2877 = call float @dx.op.dot3.f32(i32 55, float %2876, float %2873, float %2874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2878 = select i1 %232, float 0.000000e+00, float %2872
  %2879 = select i1 %232, float %2877, float %2873
  %2880 = select i1 %232, float 0.000000e+00, float %2874
  br label %2881

; <label>:2881                                    ; preds = %2871, %2833
  %2882 = phi float [ %2878, %2871 ], [ 0.000000e+00, %2833 ]
  %2883 = phi float [ %2879, %2871 ], [ 0.000000e+00, %2833 ]
  %2884 = phi float [ %2880, %2871 ], [ 0.000000e+00, %2833 ]
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = and i32 %2886, 1024
  %2888 = icmp eq i32 %2887, 0
  br i1 %2888, label %2919, label %2889

; <label>:2889                                    ; preds = %2881
  %2890 = add i32 %62, 184
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = and i32 %2892, 255
  %2894 = uitofp i32 %2893 to float
  %2895 = fmul fast float %2894, 0x3F70101020000000
  %2896 = lshr i32 %2892, 8
  %2897 = and i32 %2896, 255
  %2898 = uitofp i32 %2897 to float
  %2899 = fmul fast float %2898, 0x3F70101020000000
  %2900 = lshr i32 %2892, 16
  %2901 = and i32 %2900, 255
  %2902 = uitofp i32 %2901 to float
  %2903 = fmul fast float %2902, 0x3F70101020000000
  %2904 = fmul fast float %2895, %2895
  %2905 = fmul fast float %2899, %2899
  %2906 = fmul fast float %2903, %2903
  %2907 = add i32 %62, 484
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = add i32 %2909, 0
  %2911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2911, %dx.types.Handle %108, float %2346, float %2347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2913 = extractvalue %dx.types.ResRet.f32 %2912, 0
  %2914 = extractvalue %dx.types.ResRet.f32 %2912, 1
  %2915 = extractvalue %dx.types.ResRet.f32 %2912, 2
  %2916 = fmul fast float %2904, %2913
  %2917 = fmul fast float %2905, %2914
  %2918 = fmul fast float %2906, %2915
  br label %2919

; <label>:2919                                    ; preds = %2889, %2881
  %2920 = phi float [ %2916, %2889 ], [ 0.000000e+00, %2881 ]
  %2921 = phi float [ %2917, %2889 ], [ 0.000000e+00, %2881 ]
  %2922 = phi float [ %2918, %2889 ], [ 0.000000e+00, %2881 ]
  %2923 = fcmp fast ogt float %2920, 0.000000e+00
  %2924 = fcmp fast ogt float %2921, 0.000000e+00
  %2925 = fcmp fast ogt float %2922, 0.000000e+00
  %2926 = call float @dx.op.unary.f32(i32 23, float %2920)  ; Log(value)
  %2927 = call float @dx.op.unary.f32(i32 23, float %2921)  ; Log(value)
  %2928 = call float @dx.op.unary.f32(i32 23, float %2922)  ; Log(value)
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = lshr i32 %2930, 7
  %2932 = and i32 %2931, 32752
  %2933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2932)  ; LegacyF16ToF32(value)
  %2934 = fmul fast float %2926, 0xBFE62E4300000000
  %2935 = fmul fast float %2934, %2933
  %2936 = fmul fast float %2927, 0xBFE62E4300000000
  %2937 = fmul fast float %2936, %2933
  %2938 = fmul fast float %2928, 0xBFE62E4300000000
  %2939 = fmul fast float %2938, %2933
  %2940 = select i1 %2923, float %2935, float 1.270000e+02
  %2941 = select i1 %2924, float %2937, float 1.270000e+02
  %2942 = select i1 %2925, float %2939, float 1.270000e+02
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %2944, 10240
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %2967, label %2947

; <label>:2947                                    ; preds = %2919
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = and i32 %2949, 2048
  %2951 = icmp eq i32 %2950, 0
  br i1 %2951, label %2967, label %2952

; <label>:2952                                    ; preds = %2947
  %2953 = add i32 %62, 500
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = add i32 %2955, 0
  %2957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2957, %dx.types.Handle %108, float %2346, float %2347, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 3
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = shl i32 %2961, 4
  %2963 = and i32 %2962, 32752
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = fmul fast float %2964, %2959
  %2966 = call float @dx.op.binary.f32(i32 35, float %2965, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2967

; <label>:2967                                    ; preds = %2952, %2947, %2919
  %2968 = phi float [ %2966, %2952 ], [ 0x3F70101020000000, %2947 ], [ 0x3F70101020000000, %2919 ]
  %2969 = add i32 %62, 128
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = lshr i32 %2971, 8
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = call float @dx.op.dot3.f32(i32 55, float %2754, float %2755, float %2756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2978 = fmul fast float %2976, %2977
  %2979 = fadd fast float %2978, %2973
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = call float @dx.op.unary.f32(i32 7, float %2980)  ; Saturate(value)
  br i1 %2238, label %2982, label %3017

; <label>:2982                                    ; preds = %2967
  %2983 = fmul fast float %2968, 2.000000e+00
  %2984 = fcmp fast olt float %2940, 1.270000e+02
  %2985 = fcmp fast olt float %2941, 1.270000e+02
  %2986 = fcmp fast olt float %2942, 1.270000e+02
  %2987 = fmul fast float %2940, 0xBFF7154760000000
  %2988 = fmul fast float %2987, %2983
  %2989 = fmul fast float %2941, 0xBFF7154760000000
  %2990 = fmul fast float %2989, %2983
  %2991 = fmul fast float %2942, 0xBFF7154760000000
  %2992 = fmul fast float %2991, %2983
  %2993 = call float @dx.op.unary.f32(i32 21, float %2988)  ; Exp(value)
  %2994 = call float @dx.op.unary.f32(i32 21, float %2990)  ; Exp(value)
  %2995 = call float @dx.op.unary.f32(i32 21, float %2992)  ; Exp(value)
  %2996 = call float @dx.op.unary.f32(i32 7, float %2993)  ; Saturate(value)
  %2997 = call float @dx.op.unary.f32(i32 7, float %2994)  ; Saturate(value)
  %2998 = call float @dx.op.unary.f32(i32 7, float %2995)  ; Saturate(value)
  %2999 = fadd fast float %2996, -1.000000e+00
  %3000 = select i1 %2984, float %2999, float -1.000000e+00
  %3001 = fadd fast float %2997, -1.000000e+00
  %3002 = select i1 %2985, float %3001, float -1.000000e+00
  %3003 = fadd fast float %2998, -1.000000e+00
  %3004 = select i1 %2986, float %3003, float -1.000000e+00
  %3005 = fmul fast float %3000, %2534
  %3006 = fmul fast float %3002, %2534
  %3007 = fmul fast float %3004, %2534
  %3008 = fadd fast float %3005, 1.000000e+00
  %3009 = fadd fast float %3006, 1.000000e+00
  %3010 = fadd fast float %3007, 1.000000e+00
  %3011 = fmul fast float %3008, %2223
  %3012 = fmul fast float %3009, %2224
  %3013 = fmul fast float %3010, %2225
  %3014 = fmul fast float %3008, %2229
  %3015 = fmul fast float %3009, %2230
  %3016 = fmul fast float %3010, %2231
  br label %3017

; <label>:3017                                    ; preds = %2982, %2967
  %3018 = phi float [ %3011, %2982 ], [ %2223, %2967 ]
  %3019 = phi float [ %3012, %2982 ], [ %2224, %2967 ]
  %3020 = phi float [ %3013, %2982 ], [ %2225, %2967 ]
  %3021 = phi float [ %3014, %2982 ], [ %2229, %2967 ]
  %3022 = phi float [ %3015, %2982 ], [ %2230, %2967 ]
  %3023 = phi float [ %3016, %2982 ], [ %2231, %2967 ]
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = and i32 %3025, 3
  %3027 = icmp eq i32 %3026, 3
  br i1 %3027, label %3106, label %3028

; <label>:3028                                    ; preds = %3017
  %3029 = and i32 %3025, 16
  %3030 = icmp ne i32 %3029, 0
  %3031 = select i1 %3030, float %2534, float 0.000000e+00
  %3032 = icmp eq i32 %3026, 0
  br i1 %3032, label %3033, label %3061

; <label>:3033                                    ; preds = %3028
  %3034 = and i32 %3025, 64
  %3035 = icmp ne i32 %3034, 0
  %3036 = select i1 %3035, float %2534, float 0.000000e+00
  %3037 = fsub fast float %2754, %3018
  %3038 = fsub fast float %2755, %3019
  %3039 = fsub fast float %2756, %3020
  %3040 = fmul fast float %3031, %3037
  %3041 = fmul fast float %3031, %3038
  %3042 = fmul fast float %3031, %3039
  %3043 = fadd fast float %3040, %3018
  %3044 = fadd fast float %3041, %3019
  %3045 = fadd fast float %3042, %3020
  %3046 = fsub fast float %2740, %2232
  %3047 = fmul fast float %3031, %3046
  %3048 = fadd fast float %3047, %2232
  %3049 = fsub fast float %2882, %3021
  %3050 = fsub fast float %2883, %3022
  %3051 = fsub fast float %2884, %3023
  %3052 = fmul fast float %3036, %3049
  %3053 = fmul fast float %3036, %3050
  %3054 = fmul fast float %3036, %3051
  %3055 = fadd fast float %3052, %3021
  %3056 = fadd fast float %3053, %3022
  %3057 = fadd fast float %3054, %3023
  %3058 = fsub fast float %2981, %2236
  %3059 = fmul fast float %3031, %3058
  %3060 = fadd fast float %3059, %2236
  br label %3106

; <label>:3061                                    ; preds = %3028
  %3062 = icmp eq i32 %3026, 1
  br i1 %3062, label %3063, label %3076

; <label>:3063                                    ; preds = %3061
  %3064 = fadd fast float %2754, -1.000000e+00
  %3065 = fadd fast float %2755, -1.000000e+00
  %3066 = fadd fast float %2756, -1.000000e+00
  %3067 = fmul fast float %3031, %3064
  %3068 = fmul fast float %3031, %3065
  %3069 = fmul fast float %3031, %3066
  %3070 = fadd fast float %3067, 1.000000e+00
  %3071 = fadd fast float %3068, 1.000000e+00
  %3072 = fadd fast float %3069, 1.000000e+00
  %3073 = fmul fast float %3070, %3018
  %3074 = fmul fast float %3071, %3019
  %3075 = fmul fast float %3072, %3020
  br label %3106

; <label>:3076                                    ; preds = %3061
  %3077 = icmp eq i32 %3026, 2
  br i1 %3077, label %3078, label %3106

; <label>:3078                                    ; preds = %3076
  %3079 = call float @dx.op.unary.f32(i32 24, float %2754)  ; Sqrt(value)
  %3080 = call float @dx.op.unary.f32(i32 24, float %2755)  ; Sqrt(value)
  %3081 = call float @dx.op.unary.f32(i32 24, float %2756)  ; Sqrt(value)
  %3082 = fadd fast float %3079, -5.000000e-01
  %3083 = fadd fast float %3080, -5.000000e-01
  %3084 = fadd fast float %3081, -5.000000e-01
  %3085 = fmul fast float %3082, %3031
  %3086 = fmul fast float %3083, %3031
  %3087 = fmul fast float %3084, %3031
  %3088 = fadd fast float %3085, 5.000000e-01
  %3089 = fadd fast float %3086, 5.000000e-01
  %3090 = fadd fast float %3087, 5.000000e-01
  %3091 = fmul fast float %3088, 2.000000e+00
  %3092 = fsub fast float 1.000000e+00, %3091
  %3093 = fmul fast float %3092, %3018
  %3094 = fadd fast float %3093, %3091
  %3095 = fmul fast float %3094, %3018
  %3096 = fmul fast float %3089, 2.000000e+00
  %3097 = fsub fast float 1.000000e+00, %3096
  %3098 = fmul fast float %3097, %3019
  %3099 = fadd fast float %3098, %3096
  %3100 = fmul fast float %3099, %3019
  %3101 = fmul fast float %3090, 2.000000e+00
  %3102 = fsub fast float 1.000000e+00, %3101
  %3103 = fmul fast float %3102, %3020
  %3104 = fadd fast float %3103, %3101
  %3105 = fmul fast float %3104, %3020
  br label %3106

; <label>:3106                                    ; preds = %3078, %3076, %3063, %3033, %3017
  %3107 = phi float [ %3018, %3017 ], [ %3095, %3078 ], [ %3018, %3076 ], [ %3073, %3063 ], [ %3043, %3033 ]
  %3108 = phi float [ %3019, %3017 ], [ %3100, %3078 ], [ %3019, %3076 ], [ %3074, %3063 ], [ %3044, %3033 ]
  %3109 = phi float [ %3020, %3017 ], [ %3105, %3078 ], [ %3020, %3076 ], [ %3075, %3063 ], [ %3045, %3033 ]
  %3110 = phi float [ %3021, %3017 ], [ %3021, %3078 ], [ %3021, %3076 ], [ %3021, %3063 ], [ %3055, %3033 ]
  %3111 = phi float [ %3022, %3017 ], [ %3022, %3078 ], [ %3022, %3076 ], [ %3022, %3063 ], [ %3056, %3033 ]
  %3112 = phi float [ %3023, %3017 ], [ %3023, %3078 ], [ %3023, %3076 ], [ %3023, %3063 ], [ %3057, %3033 ]
  %3113 = phi float [ %2232, %3017 ], [ %2232, %3078 ], [ %2232, %3076 ], [ %2232, %3063 ], [ %3048, %3033 ]
  %3114 = phi float [ %2236, %3017 ], [ %2236, %3078 ], [ %2236, %3076 ], [ %2236, %3063 ], [ %3060, %3033 ]
  %3115 = and i32 %3025, 12
  %3116 = icmp eq i32 %3115, 12
  br i1 %3116, label %3223, label %3117

; <label>:3117                                    ; preds = %3106
  %3118 = and i32 %3025, 2097184
  %3119 = icmp eq i32 %3118, 2097184
  %3120 = select i1 %3119, float %2534, float 0.000000e+00
  %3121 = and i32 %3025, 4194336
  %3122 = icmp eq i32 %3121, 4194336
  %3123 = select i1 %3122, float %2534, float 0.000000e+00
  %3124 = and i32 %3025, 8388640
  %3125 = icmp eq i32 %3124, 8388640
  %3126 = select i1 %3125, float %2534, float 0.000000e+00
  %3127 = and i32 %3025, 1024
  %3128 = icmp ne i32 %3127, 0
  %3129 = select i1 %3128, float %2534, float 0.000000e+00
  %3130 = and i32 %3025, 2048
  %3131 = icmp ne i32 %3130, 0
  %3132 = select i1 %3131, float %2534, float 0.000000e+00
  %3133 = icmp eq i32 %3115, 0
  br i1 %3133, label %3134, label %3159

; <label>:3134                                    ; preds = %3117
  %3135 = fsub fast float %2835, %2221
  %3136 = fsub fast float %2836, %2222
  %3137 = fmul fast float %3120, %3135
  %3138 = fmul fast float %3120, %3136
  %3139 = fadd fast float %3137, %2221
  %3140 = fadd fast float %3138, %2222
  %3141 = fsub fast float %2837, %2234
  %3142 = fmul fast float %3123, %3141
  %3143 = fadd fast float %3142, %2234
  %3144 = fsub fast float %2834, %2233
  %3145 = fmul fast float %3126, %3144
  %3146 = fadd fast float %3145, %2233
  %3147 = fsub fast float %2940, %2226
  %3148 = fsub fast float %2941, %2227
  %3149 = fsub fast float %2942, %2228
  %3150 = fmul fast float %3129, %3147
  %3151 = fmul fast float %3129, %3148
  %3152 = fmul fast float %3129, %3149
  %3153 = fadd fast float %3150, %2226
  %3154 = fadd fast float %3151, %2227
  %3155 = fadd fast float %3152, %2228
  %3156 = fsub fast float %2968, %2235
  %3157 = fmul fast float %3132, %3156
  %3158 = fadd fast float %3157, %2235
  br label %3223

; <label>:3159                                    ; preds = %3117
  %3160 = icmp eq i32 %3115, 4
  br i1 %3160, label %3161, label %3201

; <label>:3161                                    ; preds = %3159
  %3162 = fmul fast float %3120, %2835
  %3163 = fmul fast float %3120, %2836
  %3164 = fadd fast float %3162, %2221
  %3165 = fadd fast float %3163, %2222
  %3166 = call float @dx.op.binary.f32(i32 36, float %2234, float %2837)  ; FMin(a,b)
  %3167 = fsub fast float %3166, %2234
  %3168 = fmul fast float %3167, %3123
  %3169 = fadd fast float %3168, %2234
  %3170 = fadd fast float %2834, %2233
  %3171 = fmul fast float %3170, 0x3FF337FAE0000000
  %3172 = fmul fast float %2233, %2233
  %3173 = fmul fast float %2834, %2834
  %3174 = fadd fast float %3173, %3172
  %3175 = fmul fast float %3174, 0x3FE5152B00000000
  %3176 = fmul fast float %2233, 0xBFCC1F85E0000000
  %3177 = fmul fast float %3176, %2834
  %3178 = fadd fast float %3177, 0xBFE1363700000000
  %3179 = fadd fast float %3178, %3171
  %3180 = fsub fast float %3179, %3175
  %3181 = fmul fast float %3170, 0x3FBA6F0D00000000
  %3182 = fmul fast float %3174, 0x3FD0432880000000
  %3183 = fmul fast float %2233, 0xBFEF110800000000
  %3184 = fmul fast float %3183, %2834
  %3185 = fadd fast float %3184, 1.000000e+00
  %3186 = fsub fast float %3185, %3181
  %3187 = fadd fast float %3186, %3182
  %3188 = fdiv fast float %3180, %3187
  %3189 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3190 = fsub fast float %3189, %2233
  %3191 = fmul fast float %3190, %3126
  %3192 = fadd fast float %3191, %2233
  %3193 = fmul fast float %3129, %2940
  %3194 = fmul fast float %3129, %2941
  %3195 = fmul fast float %3129, %2942
  %3196 = fadd fast float %3193, %2226
  %3197 = fadd fast float %3194, %2227
  %3198 = fadd fast float %3195, %2228
  %3199 = fmul fast float %3132, %2968
  %3200 = fadd fast float %3199, %2235
  br label %3223

; <label>:3201                                    ; preds = %3159
  %3202 = icmp eq i32 %3115, 8
  br i1 %3202, label %3203, label %3223

; <label>:3203                                    ; preds = %3201
  %3204 = fmul fast float %3120, %2835
  %3205 = fmul fast float %3120, %2836
  %3206 = fadd fast float %3204, %2221
  %3207 = fadd fast float %3205, %2222
  %3208 = call float @dx.op.binary.f32(i32 36, float %2234, float %2837)  ; FMin(a,b)
  %3209 = fsub fast float %3208, %2234
  %3210 = fmul fast float %3209, %3123
  %3211 = fadd fast float %3210, %2234
  %3212 = fsub fast float %2834, %2233
  %3213 = fmul fast float %3126, %3212
  %3214 = fadd fast float %3213, %2233
  %3215 = fmul fast float %3129, %2940
  %3216 = fmul fast float %3129, %2941
  %3217 = fmul fast float %3129, %2942
  %3218 = fadd fast float %3215, %2226
  %3219 = fadd fast float %3216, %2227
  %3220 = fadd fast float %3217, %2228
  %3221 = fmul fast float %3132, %2968
  %3222 = fadd fast float %3221, %2235
  br label %3223

; <label>:3223                                    ; preds = %3203, %3201, %3161, %3134, %3106, %2533, %2237, %2220
  %3224 = phi float [ %2221, %3106 ], [ %2221, %2533 ], [ %2221, %2220 ], [ %3206, %3203 ], [ %2221, %3201 ], [ %3164, %3161 ], [ %3139, %3134 ], [ %2221, %2237 ]
  %3225 = phi float [ %2222, %3106 ], [ %2222, %2533 ], [ %2222, %2220 ], [ %3207, %3203 ], [ %2222, %3201 ], [ %3165, %3161 ], [ %3140, %3134 ], [ %2222, %2237 ]
  %3226 = phi float [ %3107, %3106 ], [ %2223, %2533 ], [ %2223, %2220 ], [ %3107, %3203 ], [ %3107, %3201 ], [ %3107, %3161 ], [ %3107, %3134 ], [ %2223, %2237 ]
  %3227 = phi float [ %3108, %3106 ], [ %2224, %2533 ], [ %2224, %2220 ], [ %3108, %3203 ], [ %3108, %3201 ], [ %3108, %3161 ], [ %3108, %3134 ], [ %2224, %2237 ]
  %3228 = phi float [ %3109, %3106 ], [ %2225, %2533 ], [ %2225, %2220 ], [ %3109, %3203 ], [ %3109, %3201 ], [ %3109, %3161 ], [ %3109, %3134 ], [ %2225, %2237 ]
  %3229 = phi float [ %2226, %3106 ], [ %2226, %2533 ], [ %2226, %2220 ], [ %3218, %3203 ], [ %2226, %3201 ], [ %3196, %3161 ], [ %3153, %3134 ], [ %2226, %2237 ]
  %3230 = phi float [ %2227, %3106 ], [ %2227, %2533 ], [ %2227, %2220 ], [ %3219, %3203 ], [ %2227, %3201 ], [ %3197, %3161 ], [ %3154, %3134 ], [ %2227, %2237 ]
  %3231 = phi float [ %2228, %3106 ], [ %2228, %2533 ], [ %2228, %2220 ], [ %3220, %3203 ], [ %2228, %3201 ], [ %3198, %3161 ], [ %3155, %3134 ], [ %2228, %2237 ]
  %3232 = phi float [ %3110, %3106 ], [ %2229, %2533 ], [ %2229, %2220 ], [ %3110, %3203 ], [ %3110, %3201 ], [ %3110, %3161 ], [ %3110, %3134 ], [ %2229, %2237 ]
  %3233 = phi float [ %3111, %3106 ], [ %2230, %2533 ], [ %2230, %2220 ], [ %3111, %3203 ], [ %3111, %3201 ], [ %3111, %3161 ], [ %3111, %3134 ], [ %2230, %2237 ]
  %3234 = phi float [ %3112, %3106 ], [ %2231, %2533 ], [ %2231, %2220 ], [ %3112, %3203 ], [ %3112, %3201 ], [ %3112, %3161 ], [ %3112, %3134 ], [ %2231, %2237 ]
  %3235 = phi float [ %3113, %3106 ], [ %2232, %2533 ], [ %2232, %2220 ], [ %3113, %3203 ], [ %3113, %3201 ], [ %3113, %3161 ], [ %3113, %3134 ], [ %2232, %2237 ]
  %3236 = phi float [ %2233, %3106 ], [ %2233, %2533 ], [ %2233, %2220 ], [ %3214, %3203 ], [ %2233, %3201 ], [ %3192, %3161 ], [ %3146, %3134 ], [ %2233, %2237 ]
  %3237 = phi float [ %2234, %3106 ], [ %2234, %2533 ], [ %2234, %2220 ], [ %3211, %3203 ], [ %2234, %3201 ], [ %3169, %3161 ], [ %3143, %3134 ], [ %2234, %2237 ]
  %3238 = phi float [ %2235, %3106 ], [ %2235, %2533 ], [ %2235, %2220 ], [ %3222, %3203 ], [ %2235, %3201 ], [ %3200, %3161 ], [ %3158, %3134 ], [ %2235, %2237 ]
  %3239 = phi float [ %3114, %3106 ], [ %2236, %2533 ], [ %2236, %2220 ], [ %3114, %3203 ], [ %3114, %3201 ], [ %3114, %3161 ], [ %3114, %3134 ], [ %2236, %2237 ]
  br i1 %420, label %4226, label %3240

; <label>:3240                                    ; preds = %3223
  %3241 = icmp ult i32 %474, 4
  %3242 = add i32 %62, 72
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = add i32 %62, 76
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = or i32 %3247, %3244
  %3249 = icmp eq i32 %3248, 0
  br i1 %3249, label %4226, label %3250

; <label>:3250                                    ; preds = %3240
  %3251 = and i32 %3244, 262144
  %3252 = icmp ne i32 %3251, 0
  %3253 = select i1 %3252, float %65, float 1.000000e+00
  %3254 = select i1 %3252, float %66, float 0.000000e+00
  %3255 = select i1 %3252, float %67, float 0.000000e+00
  %3256 = select i1 %3252, float %68, float 1.000000e+00
  %3257 = select i1 %3252, float %69, float %90
  %3258 = select i1 %3252, float %70, float %91
  %3259 = add i32 %62, 332
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = lshr i32 %3261, 16
  %3263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3262)  ; LegacyF16ToF32(value)
  %3264 = fmul fast float %3263, 0x3F50624DE0000000
  %3265 = add i32 %62, 136
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = lshr i32 %3267, 16
  %3269 = and i32 %3268, 255
  %3270 = lshr i32 %3267, 24
  %3271 = add i32 %62, 340
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3271, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = and i32 %3273, 65535
  %3275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3274)  ; LegacyF16ToF32(value)
  %3276 = lshr i32 %3273, 16
  %3277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3276)  ; LegacyF16ToF32(value)
  %3278 = add i32 %62, 80
  %3279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3278, i32 undef)  ; BufferLoad(srv,index,wot)
  %3280 = extractvalue %dx.types.ResRet.i32 %3279, 0
  %3281 = lshr i32 %3280, 22
  %3282 = shl nuw nsw i32 %3281, 5
  %3283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3282)  ; LegacyF16ToF32(value)
  %3284 = shl i32 %3280, 4
  %3285 = and i32 %3284, 32752
  %3286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3285)  ; LegacyF16ToF32(value)
  %3287 = lshr i32 %3280, 7
  %3288 = and i32 %3287, 32752
  %3289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3288)  ; LegacyF16ToF32(value)
  %3290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3291 = extractvalue %dx.types.CBufRet.f32 %3290, 3
  %3292 = fmul fast float %3291, 1.000000e+03
  %3293 = fmul fast float %410, %3292
  %3294 = call float @dx.op.unary.f32(i32 22, float %3293)  ; Frc(value)
  %3295 = fadd fast float %3294, %400
  %3296 = fmul fast float %411, %3292
  %3297 = call float @dx.op.unary.f32(i32 22, float %3296)  ; Frc(value)
  %3298 = fadd fast float %3297, %402
  %3299 = fmul fast float %3264, %3292
  %3300 = call float @dx.op.unary.f32(i32 22, float %3299)  ; Frc(value)
  %3301 = fmul fast float %3300, 0x401921FB60000000
  %3302 = fadd fast float %3301, %3283
  %3303 = call float @dx.op.unary.f32(i32 13, float %3302)  ; Sin(value)
  %3304 = call float @dx.op.unary.f32(i32 12, float %3302)  ; Cos(value)
  %3305 = fsub fast float -0.000000e+00, %3303
  %3306 = fadd fast float %3257, -5.000000e-01
  %3307 = fadd fast float %3258, -5.000000e-01
  %3308 = fmul fast float %3275, %3306
  %3309 = fmul fast float %3277, %3307
  %3310 = fadd fast float %3308, 5.000000e-01
  %3311 = fadd fast float %3309, 5.000000e-01
  %3312 = fmul fast float %3286, %3310
  %3313 = fmul fast float %3289, %3311
  %3314 = fmul fast float %3304, %3312
  %3315 = call float @dx.op.tertiary.f32(i32 46, float %3305, float %3313, float %3314)  ; FMad(a,b,c)
  %3316 = fmul fast float %3303, %3312
  %3317 = call float @dx.op.tertiary.f32(i32 46, float %3304, float %3313, float %3316)  ; FMad(a,b,c)
  %3318 = fadd fast float %3295, %3315
  %3319 = fadd fast float %3298, %3317
  %3320 = icmp ugt i32 %3269, 1
  %3321 = icmp ugt i32 %3267, 33554431
  %3322 = or i1 %3321, %3320
  br i1 %3322, label %3323, label %3348

; <label>:3323                                    ; preds = %3250
  %3324 = add i32 %62, 276
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = lshr i32 %3326, 16
  %3328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3327)  ; LegacyF16ToF32(value)
  %3329 = fmul fast float %3291, %3328
  %3330 = call float @dx.op.unary.f32(i32 22, float %3329)  ; Frc(value)
  %3331 = mul nuw nsw i32 %3269, %3270
  %3332 = uitofp i32 %3331 to float
  %3333 = fmul fast float %3330, %3332
  %3334 = call float @dx.op.unary.f32(i32 27, float %3333)  ; Round_ni(value)
  %3335 = fptoui float %3334 to i32
  %3336 = urem i32 %3335, %3269
  %3337 = udiv i32 %3335, %3270
  %3338 = call float @dx.op.unary.f32(i32 22, float %3318)  ; Frc(value)
  %3339 = call float @dx.op.unary.f32(i32 22, float %3319)  ; Frc(value)
  %3340 = uitofp i32 %3336 to float
  %3341 = uitofp i32 %3337 to float
  %3342 = fadd fast float %3338, %3340
  %3343 = fadd fast float %3339, %3341
  %3344 = uitofp i32 %3269 to float
  %3345 = uitofp i32 %3270 to float
  %3346 = fdiv fast float %3342, %3344
  %3347 = fdiv fast float %3343, %3345
  br label %3348

; <label>:3348                                    ; preds = %3323, %3250
  %3349 = phi float [ %3346, %3323 ], [ %3318, %3250 ]
  %3350 = phi float [ %3347, %3323 ], [ %3319, %3250 ]
  %3351 = and i32 %3244, 16777216
  %3352 = icmp eq i32 %3351, 0
  br i1 %3352, label %3462, label %3353

; <label>:3353                                    ; preds = %3348
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 0
  %3356 = extractvalue %dx.types.CBufRet.f32 %3354, 1
  %3357 = extractvalue %dx.types.CBufRet.f32 %3354, 2
  %3358 = fadd fast float %3355, %170
  %3359 = fadd fast float %3356, %171
  %3360 = fadd fast float %3357, %172
  %3361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3362 = extractvalue %dx.types.CBufRet.f32 %3361, 0
  %3363 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3364 = icmp eq i32 %63, 65535
  br i1 %3364, label %3459, label %3365

; <label>:3365                                    ; preds = %3353
  %3366 = lshr i32 %63, 1
  %3367 = shl i32 %3366, 2
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = and i32 %63, 1
  %3371 = icmp ne i32 %3370, 0
  %3372 = lshr i32 %3369, 16
  %3373 = and i32 %3369, 65535
  %3374 = select i1 %3371, i32 %3372, i32 %3373
  %3375 = icmp eq i32 %3374, 65535
  br i1 %3375, label %3455, label %3376

; <label>:3376                                    ; preds = %3365
  %3377 = mul nuw nsw i32 %3374, 40
  %3378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.f32 %3378, 0
  %3380 = extractvalue %dx.types.ResRet.f32 %3378, 1
  %3381 = extractvalue %dx.types.ResRet.f32 %3378, 2
  %3382 = add nuw nsw i32 %3377, 12
  %3383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = add nuw nsw i32 %3377, 24
  %3388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.ResRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.ResRet.f32 %3388, 2
  %3392 = add nuw nsw i32 %3377, 36
  %3393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3392, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = fsub fast float %3358, %3379
  %3396 = fsub fast float %3359, %3380
  %3397 = fsub fast float %3360, %3381
  %3398 = fmul fast float %3394, %3395
  %3399 = fmul fast float %3394, %3396
  %3400 = fmul fast float %3394, %3397
  %3401 = call float @dx.op.unary.f32(i32 27, float %3398)  ; Round_ni(value)
  %3402 = call float @dx.op.unary.f32(i32 27, float %3399)  ; Round_ni(value)
  %3403 = call float @dx.op.unary.f32(i32 27, float %3400)  ; Round_ni(value)
  %3404 = fadd fast float %3401, 5.000000e-01
  %3405 = fadd fast float %3402, 5.000000e-01
  %3406 = fadd fast float %3403, 5.000000e-01
  %3407 = fmul fast float %3404, %3384
  %3408 = fmul fast float %3405, %3385
  %3409 = fmul fast float %3406, %3386
  %3410 = shl i32 %63, 2
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = add i32 %3412, 0
  %3414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3415 = call float @dx.op.unary.f32(i32 22, float %3407)  ; Frc(value)
  %3416 = call float @dx.op.unary.f32(i32 22, float %3408)  ; Frc(value)
  %3417 = call float @dx.op.unary.f32(i32 22, float %3409)  ; Frc(value)
  %3418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3414, %dx.types.Handle %55, float %3415, float %3416, float %3417, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3419 = extractvalue %dx.types.ResRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.ResRet.f32 %3418, 1
  %3421 = extractvalue %dx.types.ResRet.f32 %3418, 2
  %3422 = fmul fast float %3419, 1.023000e+03
  %3423 = fmul fast float %3420, 1.023000e+03
  %3424 = fmul fast float %3421, 1.023000e+03
  %3425 = fadd fast float %3422, 5.000000e-01
  %3426 = fadd fast float %3423, 5.000000e-01
  %3427 = fadd fast float %3424, 5.000000e-01
  %3428 = call float @dx.op.unary.f32(i32 27, float %3425)  ; Round_ni(value)
  %3429 = call float @dx.op.unary.f32(i32 27, float %3426)  ; Round_ni(value)
  %3430 = call float @dx.op.unary.f32(i32 27, float %3427)  ; Round_ni(value)
  %3431 = fsub fast float %3398, %3401
  %3432 = fsub fast float %3399, %3402
  %3433 = fsub fast float %3400, %3403
  %3434 = fmul fast float %3431, 7.500000e-01
  %3435 = fmul fast float %3432, 7.500000e-01
  %3436 = fmul fast float %3433, 7.500000e-01
  %3437 = fadd fast float %3401, 1.250000e-01
  %3438 = fadd fast float %3437, %3434
  %3439 = fadd fast float %3438, %3428
  %3440 = fadd fast float %3402, 1.250000e-01
  %3441 = fadd fast float %3440, %3435
  %3442 = fadd fast float %3441, %3429
  %3443 = fadd fast float %3403, 1.250000e-01
  %3444 = fadd fast float %3443, %3436
  %3445 = fadd fast float %3444, %3430
  %3446 = fmul fast float %3439, %3389
  %3447 = fmul fast float %3442, %3390
  %3448 = fmul fast float %3445, %3391
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = add i32 %3450, 0
  %3452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3452, %dx.types.Handle %53, float %3446, float %3447, float %3448, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  br label %3455

; <label>:3455                                    ; preds = %3376, %3365
  %3456 = phi float [ %3454, %3376 ], [ -1.000000e+00, %3365 ]
  %3457 = fadd fast float %3456, %3363
  %3458 = call float @dx.op.unary.f32(i32 7, float %3457)  ; Saturate(value)
  br label %3459

; <label>:3459                                    ; preds = %3455, %3353
  %3460 = phi float [ %3458, %3455 ], [ %3363, %3353 ]
  %3461 = fmul fast float %3460, %469
  br label %3462

; <label>:3462                                    ; preds = %3459, %3348
  %3463 = phi float [ %3461, %3459 ], [ %469, %3348 ]
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = and i32 %3465, 256
  %3467 = icmp eq i32 %3466, 0
  br i1 %3467, label %3514, label %3468

; <label>:3468                                    ; preds = %3462
  %3469 = add i32 %62, 452
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = add i32 %3471, 0
  %3473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3473, %dx.types.Handle %108, float %3349, float %3350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3476 = add i32 %62, 148
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = shl i32 %3478, 4
  %3480 = and i32 %3479, 32752
  %3481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3480)  ; LegacyF16ToF32(value)
  %3482 = lshr i32 %3478, 7
  %3483 = and i32 %3482, 32752
  %3484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3483)  ; LegacyF16ToF32(value)
  %3485 = fsub fast float 1.000000e+00, %3463
  %3486 = call float @dx.op.binary.f32(i32 35, float %3485, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3487 = bitcast float %3463 to i32
  %3488 = sitofp i32 %3487 to float
  %3489 = fadd fast float %3488, 0xC1CFBF8940000000
  %3490 = fmul fast float %3484, %3489
  %3491 = fadd fast float %3490, 0x41CFBF8940000000
  %3492 = fptosi float %3491 to i32
  %3493 = bitcast i32 %3492 to float
  %3494 = bitcast float %3486 to i32
  %3495 = sitofp i32 %3494 to float
  %3496 = fadd fast float %3495, 0xC1CFBF8940000000
  %3497 = fmul fast float %3496, %3484
  %3498 = fadd fast float %3497, 0x41CFBF8940000000
  %3499 = fptosi float %3498 to i32
  %3500 = bitcast i32 %3499 to float
  %3501 = fmul fast float %3493, %3481
  %3502 = fmul fast float %3500, %3481
  %3503 = fsub fast float %3486, %3501
  %3504 = fadd fast float %3502, %3486
  %3505 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3506 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3507 = fsub fast float %3475, %3505
  %3508 = fsub fast float %3506, %3505
  %3509 = bitcast float %3508 to i32
  %3510 = sub nsw i32 2129859010, %3509
  %3511 = bitcast i32 %3510 to float
  %3512 = fmul fast float %3511, %3507
  %3513 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  br label %3514

; <label>:3514                                    ; preds = %3468, %3462
  %3515 = phi float [ %3513, %3468 ], [ %3463, %3462 ]
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = and i32 %3517, 128
  %3519 = icmp eq i32 %3518, 0
  br i1 %3519, label %3536, label %3520

; <label>:3520                                    ; preds = %3514
  %3521 = add i32 %62, 436
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = add i32 %3523, 0
  %3525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3525, %dx.types.Handle %108, float %3349, float %3350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3527 = extractvalue %dx.types.ResRet.f32 %3526, 0
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 524288
  %3531 = icmp ne i32 %3530, 0
  %3532 = fcmp fast ogt float %3527, 0x3FE0101020000000
  %3533 = select i1 %3532, float 1.000000e+00, float 0.000000e+00
  %3534 = select i1 %3531, float %3533, float %3527
  %3535 = fmul fast float %3534, %3515
  br label %3536

; <label>:3536                                    ; preds = %3520, %3514
  %3537 = phi float [ %3535, %3520 ], [ %3515, %3514 ]
  %3538 = fcmp fast ult float %3537, 0x3F70101020000000
  br i1 %3538, label %4226, label %3539

; <label>:3539                                    ; preds = %3536
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = and i32 %3541, 16
  %3543 = icmp eq i32 %3542, 0
  br i1 %3543, label %3742, label %3544

; <label>:3544                                    ; preds = %3539
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = add i32 %62, 388
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = add i32 %3549, 0
  %3551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3550, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3552 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3551, %dx.types.Handle %107, float %3349, float %3350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.ResRet.f32 %3552, 1
  %3555 = extractvalue %dx.types.ResRet.f32 %3552, 2
  %3556 = extractvalue %dx.types.ResRet.f32 %3552, 3
  %3557 = and i32 %3546, 255
  %3558 = uitofp i32 %3557 to float
  %3559 = lshr i32 %3546, 8
  %3560 = and i32 %3559, 255
  %3561 = uitofp i32 %3560 to float
  %3562 = fmul fast float %3556, %3558
  %3563 = fadd fast float %3562, %3561
  %3564 = fmul fast float %3563, 0x3F70101000000000
  %3565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3566 = extractvalue %dx.types.ResRet.i32 %3565, 0
  %3567 = and i32 %3566, 512
  %3568 = icmp eq i32 %3567, 0
  br i1 %3568, label %3577, label %3569

; <label>:3569                                    ; preds = %3544
  %3570 = add i32 %62, 472
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = add i32 %3572, 0
  %3574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3574, %dx.types.Handle %108, float %3349, float %3350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  br label %3577

; <label>:3577                                    ; preds = %3569, %3544
  %3578 = phi float [ %3576, %3569 ], [ 1.000000e+00, %3544 ]
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = and i32 %3580, 33554432
  %3582 = icmp eq i32 %3581, 0
  br i1 %3582, label %3689, label %3583

; <label>:3583                                    ; preds = %3577
  %3584 = add i32 %62, 272
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = and i32 %3586, 65535
  %3588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3587)  ; LegacyF16ToF32(value)
  %3589 = lshr i32 %3586, 16
  %3590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3589)  ; LegacyF16ToF32(value)
  %3591 = add i32 %62, 276
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = and i32 %3593, 65535
  %3595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3594)  ; LegacyF16ToF32(value)
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = lshr i32 %3597, 24
  %3599 = uitofp i32 %3598 to float
  %3600 = fmul fast float %3599, 0x3F70101020000000
  %3601 = and i32 %3597, 255
  %3602 = uitofp i32 %3601 to float
  %3603 = fmul fast float %3602, 0x3F70101020000000
  %3604 = lshr i32 %3597, 8
  %3605 = and i32 %3604, 255
  %3606 = uitofp i32 %3605 to float
  %3607 = fmul fast float %3606, 0x3F70101020000000
  %3608 = lshr i32 %3597, 16
  %3609 = and i32 %3608, 255
  %3610 = uitofp i32 %3609 to float
  %3611 = fmul fast float %3610, 0x3F70101020000000
  %3612 = add i32 %62, 268
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = lshr i32 %3614, 24
  %3616 = uitofp i32 %3615 to float
  %3617 = fmul fast float %3616, 0x3F70101020000000
  %3618 = and i32 %3614, 255
  %3619 = uitofp i32 %3618 to float
  %3620 = fmul fast float %3619, 0x3F70101020000000
  %3621 = lshr i32 %3614, 8
  %3622 = and i32 %3621, 255
  %3623 = uitofp i32 %3622 to float
  %3624 = fmul fast float %3623, 0x3F70101020000000
  %3625 = lshr i32 %3614, 16
  %3626 = and i32 %3625, 255
  %3627 = uitofp i32 %3626 to float
  %3628 = fmul fast float %3627, 0x3F70101020000000
  %3629 = bitcast float %3553 to i32
  %3630 = ashr i32 %3629, 1
  %3631 = sub nsw i32 1597463174, %3630
  %3632 = bitcast i32 %3631 to float
  %3633 = fmul fast float %3553, 5.000000e-01
  %3634 = fmul fast float %3632, %3632
  %3635 = fmul fast float %3634, %3633
  %3636 = fsub fast float 1.500000e+00, %3635
  %3637 = fmul fast float %3632, %3553
  %3638 = fmul fast float %3637, %3636
  %3639 = bitcast float %3554 to i32
  %3640 = ashr i32 %3639, 1
  %3641 = sub nsw i32 1597463174, %3640
  %3642 = bitcast i32 %3641 to float
  %3643 = fmul fast float %3554, 5.000000e-01
  %3644 = fmul fast float %3642, %3642
  %3645 = fmul fast float %3644, %3643
  %3646 = fsub fast float 1.500000e+00, %3645
  %3647 = fmul fast float %3642, %3554
  %3648 = fmul fast float %3647, %3646
  %3649 = bitcast float %3555 to i32
  %3650 = ashr i32 %3649, 1
  %3651 = sub nsw i32 1597463174, %3650
  %3652 = bitcast i32 %3651 to float
  %3653 = fmul fast float %3555, 5.000000e-01
  %3654 = fmul fast float %3652, %3652
  %3655 = fmul fast float %3654, %3653
  %3656 = fsub fast float 1.500000e+00, %3655
  %3657 = fmul fast float %3652, %3555
  %3658 = fmul fast float %3657, %3656
  %3659 = fsub fast float %3638, %3620
  %3660 = fsub fast float %3648, %3624
  %3661 = fsub fast float %3658, %3628
  %3662 = fmul fast float %3659, %3588
  %3663 = fmul fast float %3660, %3590
  %3664 = fmul fast float %3661, %3595
  %3665 = fadd fast float %3662, %3603
  %3666 = fadd fast float %3663, %3607
  %3667 = fadd fast float %3664, %3611
  %3668 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3669 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3670 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  %3671 = fmul fast float %3668, %3668
  %3672 = fmul fast float %3669, %3669
  %3673 = fmul fast float %3670, %3670
  %3674 = fsub fast float %3671, %3553
  %3675 = fsub fast float %3672, %3554
  %3676 = fsub fast float %3673, %3555
  %3677 = fmul fast float %3674, %3578
  %3678 = fmul fast float %3675, %3578
  %3679 = fmul fast float %3676, %3578
  %3680 = fadd fast float %3677, %3553
  %3681 = fadd fast float %3678, %3554
  %3682 = fadd fast float %3679, %3555
  %3683 = fadd fast float %3600, %3564
  %3684 = fsub fast float %3683, %3617
  %3685 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  %3686 = fsub fast float %3685, %3564
  %3687 = fmul fast float %3686, %3578
  %3688 = fadd fast float %3687, %3564
  br label %3742

; <label>:3689                                    ; preds = %3577
  %3690 = and i32 %3580, 134217728
  %3691 = icmp eq i32 %3690, 0
  br i1 %3691, label %3726, label %3692

; <label>:3692                                    ; preds = %3689
  %3693 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3694 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %3695 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %3696 = fadd fast float %3693, -5.000000e-01
  %3697 = fadd fast float %3694, -5.000000e-01
  %3698 = fadd fast float %3695, -5.000000e-01
  %3699 = fmul fast float %3696, %3578
  %3700 = fmul fast float %3697, %3578
  %3701 = fmul fast float %3698, %3578
  %3702 = fadd fast float %3699, 5.000000e-01
  %3703 = fadd fast float %3700, 5.000000e-01
  %3704 = fadd fast float %3701, 5.000000e-01
  %3705 = call float @dx.op.unary.f32(i32 24, float %3553)  ; Sqrt(value)
  %3706 = call float @dx.op.unary.f32(i32 24, float %3554)  ; Sqrt(value)
  %3707 = call float @dx.op.unary.f32(i32 24, float %3555)  ; Sqrt(value)
  %3708 = fmul fast float %3702, 2.000000e+00
  %3709 = fsub fast float 1.000000e+00, %3708
  %3710 = fmul fast float %3709, %3705
  %3711 = fadd fast float %3710, %3708
  %3712 = fmul fast float %3711, %3705
  %3713 = fmul fast float %3703, 2.000000e+00
  %3714 = fsub fast float 1.000000e+00, %3713
  %3715 = fmul fast float %3714, %3706
  %3716 = fadd fast float %3715, %3713
  %3717 = fmul fast float %3716, %3706
  %3718 = fmul fast float %3704, 2.000000e+00
  %3719 = fsub fast float 1.000000e+00, %3718
  %3720 = fmul fast float %3719, %3707
  %3721 = fadd fast float %3720, %3718
  %3722 = fmul fast float %3721, %3707
  %3723 = fmul fast float %3712, %3712
  %3724 = fmul fast float %3717, %3717
  %3725 = fmul fast float %3722, %3722
  br label %3742

; <label>:3726                                    ; preds = %3689
  %3727 = fmul fast float %387, %387
  %3728 = fmul fast float %391, %391
  %3729 = fmul fast float %395, %395
  %3730 = fadd fast float %3727, -1.000000e+00
  %3731 = fadd fast float %3728, -1.000000e+00
  %3732 = fadd fast float %3729, -1.000000e+00
  %3733 = fmul fast float %3578, %3730
  %3734 = fmul fast float %3578, %3731
  %3735 = fmul fast float %3578, %3732
  %3736 = fadd fast float %3733, 1.000000e+00
  %3737 = fadd fast float %3734, 1.000000e+00
  %3738 = fadd fast float %3735, 1.000000e+00
  %3739 = fmul fast float %3736, %3553
  %3740 = fmul fast float %3737, %3554
  %3741 = fmul fast float %3738, %3555
  br label %3742

; <label>:3742                                    ; preds = %3726, %3692, %3583, %3539
  %3743 = phi float [ %3688, %3583 ], [ %3564, %3692 ], [ %3564, %3726 ], [ 0x3FA23C0BE0000000, %3539 ]
  %3744 = phi float [ %3680, %3583 ], [ %3723, %3692 ], [ %3739, %3726 ], [ 1.000000e+00, %3539 ]
  %3745 = phi float [ %3681, %3583 ], [ %3724, %3692 ], [ %3740, %3726 ], [ 1.000000e+00, %3539 ]
  %3746 = phi float [ %3682, %3583 ], [ %3725, %3692 ], [ %3741, %3726 ], [ 1.000000e+00, %3539 ]
  %3747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.i32 %3747, 1
  %3749 = and i32 %3748, 1
  %3750 = icmp ne i32 %3749, 0
  %3751 = add i32 %62, 356
  %3752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.i32 %3752, 0
  %3754 = and i32 %3753, 32
  %3755 = icmp ne i32 %3754, 0
  %3756 = and i1 %3750, %3755
  %3757 = select i1 %3756, float 1.000000e+00, float %3744
  %3758 = select i1 %3756, float 0x3FD3333340000000, float %3745
  %3759 = select i1 %3756, float 0x3FD3333340000000, float %3746
  %3760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.i32 %3760, 0
  %3762 = and i32 %3761, 32
  %3763 = icmp eq i32 %3762, 0
  br i1 %3763, label %3836, label %3764

; <label>:3764                                    ; preds = %3742
  %3765 = add i32 %62, 140
  %3766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.i32 %3766, 0
  %3768 = add i32 %62, 404
  %3769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3768, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.i32 %3769, 0
  %3771 = add i32 %3770, 0
  %3772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3772, %dx.types.Handle %107, float %3349, float %3350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.ResRet.f32 %3773, 3
  %3778 = and i32 %3767, 255
  %3779 = uitofp i32 %3778 to float
  %3780 = lshr i32 %3767, 8
  %3781 = and i32 %3780, 255
  %3782 = uitofp i32 %3781 to float
  %3783 = lshr i32 %3767, 16
  %3784 = and i32 %3783, 255
  %3785 = uitofp i32 %3784 to float
  %3786 = fmul fast float %3785, 0x3F70101000000000
  %3787 = fmul fast float %3774, %3779
  %3788 = fadd fast float %3787, %3782
  %3789 = fmul fast float %3788, 0x3F70101000000000
  %3790 = fadd fast float %3775, -5.000000e-01
  %3791 = fadd fast float %3777, -5.000000e-01
  %3792 = fmul fast float %3790, %3786
  %3793 = fmul fast float %3791, %3786
  %3794 = fadd fast float %3792, 5.000000e-01
  %3795 = fadd fast float %3793, 5.000000e-01
  %3796 = fmul fast float %3794, 2.000000e+00
  %3797 = fadd fast float %3796, -1.000000e+00
  %3798 = fmul fast float %3795, 2.000000e+00
  %3799 = fadd fast float %3798, -1.000000e+00
  %3800 = fadd fast float %3797, %3799
  %3801 = fmul fast float %3800, 5.000000e-01
  %3802 = fsub fast float %3797, %3799
  %3803 = fmul fast float %3802, 5.000000e-01
  %3804 = call float @dx.op.unary.f32(i32 6, float %3801)  ; FAbs(value)
  %3805 = fsub fast float 1.000000e+00, %3804
  %3806 = call float @dx.op.unary.f32(i32 6, float %3803)  ; FAbs(value)
  %3807 = fsub fast float %3805, %3806
  %3808 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3803, float %3807, float %3801, float %3803, float %3807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3809 = call float @dx.op.unary.f32(i32 25, float %3808)  ; Rsqrt(value)
  %3810 = fmul fast float %3801, %3809
  %3811 = fmul fast float %3803, %3809
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = and i32 %3813, 67108864
  %3815 = icmp eq i32 %3814, 0
  br i1 %3815, label %3832, label %3816

; <label>:3816                                    ; preds = %3764
  %3817 = add i32 %62, 328
  %3818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.i32 %3818, 0
  %3820 = and i32 %3819, 65535
  %3821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3820)  ; LegacyF16ToF32(value)
  %3822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.i32 %3822, 0
  %3824 = and i32 %3823, 65535
  %3825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3824)  ; LegacyF16ToF32(value)
  %3826 = lshr i32 %3819, 16
  %3827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3826)  ; LegacyF16ToF32(value)
  %3828 = fsub fast float %3789, %3827
  %3829 = fmul fast float %3828, %3821
  %3830 = fadd fast float %3829, %3825
  %3831 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  br label %3832

; <label>:3832                                    ; preds = %3816, %3764
  %3833 = phi float [ %3831, %3816 ], [ %3789, %3764 ]
  %3834 = call float @dx.op.dot2.f32(i32 54, float %3810, float %3811, float %3253, float %3254)  ; Dot2(ax,ay,bx,by)
  %3835 = call float @dx.op.dot2.f32(i32 54, float %3810, float %3811, float %3255, float %3256)  ; Dot2(ax,ay,bx,by)
  br label %3836

; <label>:3836                                    ; preds = %3832, %3742
  %3837 = phi float [ %3833, %3832 ], [ 0x3FD6666660000000, %3742 ]
  %3838 = phi float [ %3834, %3832 ], [ 0.000000e+00, %3742 ]
  %3839 = phi float [ %3835, %3832 ], [ 0.000000e+00, %3742 ]
  %3840 = phi float [ %3776, %3832 ], [ 1.000000e+00, %3742 ]
  %3841 = add i32 %62, 208
  %3842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.i32 %3842, 0
  %3844 = lshr i32 %3843, 22
  %3845 = shl nuw nsw i32 %3844, 5
  %3846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3845)  ; LegacyF16ToF32(value)
  %3847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.i32 %3847, 0
  %3849 = and i32 %3848, 64
  %3850 = icmp eq i32 %3849, 0
  br i1 %3850, label %3884, label %3851

; <label>:3851                                    ; preds = %3836
  %3852 = add i32 %62, 420
  %3853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.i32 %3853, 0
  %3855 = add i32 %3854, 0
  %3856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3855, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3858 = extractvalue %dx.types.ResRet.i32 %3857, 0
  %3859 = and i32 %3858, 131072
  %3860 = icmp eq i32 %3859, 0
  %3861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3856, %dx.types.Handle %107, float %3349, float %3350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3861, 2
  %3865 = fmul fast float %3862, %375
  %3866 = fmul fast float %3863, %378
  %3867 = fmul fast float %3864, %381
  br i1 %3860, label %3874, label %3868

; <label>:3868                                    ; preds = %3851
  %3869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.f32 %3869, 0
  %3871 = fmul fast float %3870, %3865
  %3872 = fmul fast float %3870, %3866
  %3873 = fmul fast float %3870, %3867
  br label %3874

; <label>:3874                                    ; preds = %3868, %3851
  %3875 = phi float [ %3871, %3868 ], [ %3865, %3851 ]
  %3876 = phi float [ %3872, %3868 ], [ %3866, %3851 ]
  %3877 = phi float [ %3873, %3868 ], [ %3867, %3851 ]
  %3878 = fmul fast float %3875, %3846
  %3879 = select i1 %232, float %3878, float %3875
  %3880 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3876, float %3877, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3881 = select i1 %232, float 0.000000e+00, float %3875
  %3882 = select i1 %232, float %3880, float %3876
  %3883 = select i1 %232, float 0.000000e+00, float %3877
  br label %3884

; <label>:3884                                    ; preds = %3874, %3836
  %3885 = phi float [ %3881, %3874 ], [ 0.000000e+00, %3836 ]
  %3886 = phi float [ %3882, %3874 ], [ 0.000000e+00, %3836 ]
  %3887 = phi float [ %3883, %3874 ], [ 0.000000e+00, %3836 ]
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = and i32 %3889, 1024
  %3891 = icmp eq i32 %3890, 0
  br i1 %3891, label %3922, label %3892

; <label>:3892                                    ; preds = %3884
  %3893 = add i32 %62, 200
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = and i32 %3895, 255
  %3897 = uitofp i32 %3896 to float
  %3898 = fmul fast float %3897, 0x3F70101020000000
  %3899 = lshr i32 %3895, 8
  %3900 = and i32 %3899, 255
  %3901 = uitofp i32 %3900 to float
  %3902 = fmul fast float %3901, 0x3F70101020000000
  %3903 = lshr i32 %3895, 16
  %3904 = and i32 %3903, 255
  %3905 = uitofp i32 %3904 to float
  %3906 = fmul fast float %3905, 0x3F70101020000000
  %3907 = fmul fast float %3898, %3898
  %3908 = fmul fast float %3902, %3902
  %3909 = fmul fast float %3906, %3906
  %3910 = add i32 %62, 488
  %3911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.i32 %3911, 0
  %3913 = add i32 %3912, 0
  %3914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3914, %dx.types.Handle %108, float %3349, float %3350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = fmul fast float %3907, %3916
  %3920 = fmul fast float %3908, %3917
  %3921 = fmul fast float %3909, %3918
  br label %3922

; <label>:3922                                    ; preds = %3892, %3884
  %3923 = phi float [ %3919, %3892 ], [ 0.000000e+00, %3884 ]
  %3924 = phi float [ %3920, %3892 ], [ 0.000000e+00, %3884 ]
  %3925 = phi float [ %3921, %3892 ], [ 0.000000e+00, %3884 ]
  %3926 = fcmp fast ogt float %3923, 0.000000e+00
  %3927 = fcmp fast ogt float %3924, 0.000000e+00
  %3928 = fcmp fast ogt float %3925, 0.000000e+00
  %3929 = call float @dx.op.unary.f32(i32 23, float %3923)  ; Log(value)
  %3930 = call float @dx.op.unary.f32(i32 23, float %3924)  ; Log(value)
  %3931 = call float @dx.op.unary.f32(i32 23, float %3925)  ; Log(value)
  %3932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.i32 %3932, 0
  %3934 = lshr i32 %3933, 7
  %3935 = and i32 %3934, 32752
  %3936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3935)  ; LegacyF16ToF32(value)
  %3937 = fmul fast float %3929, 0xBFE62E4300000000
  %3938 = fmul fast float %3937, %3936
  %3939 = fmul fast float %3930, 0xBFE62E4300000000
  %3940 = fmul fast float %3939, %3936
  %3941 = fmul fast float %3931, 0xBFE62E4300000000
  %3942 = fmul fast float %3941, %3936
  %3943 = select i1 %3926, float %3938, float 1.270000e+02
  %3944 = select i1 %3927, float %3940, float 1.270000e+02
  %3945 = select i1 %3928, float %3942, float 1.270000e+02
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = and i32 %3947, 10240
  %3949 = icmp eq i32 %3948, 0
  br i1 %3949, label %3970, label %3950

; <label>:3950                                    ; preds = %3922
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = and i32 %3952, 2048
  %3954 = icmp eq i32 %3953, 0
  br i1 %3954, label %3970, label %3955

; <label>:3955                                    ; preds = %3950
  %3956 = add i32 %62, 504
  %3957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3958 = extractvalue %dx.types.ResRet.i32 %3957, 0
  %3959 = add i32 %3958, 0
  %3960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3961 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3960, %dx.types.Handle %108, float %3349, float %3350, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 3
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = shl i32 %3964, 4
  %3966 = and i32 %3965, 32752
  %3967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3966)  ; LegacyF16ToF32(value)
  %3968 = fmul fast float %3967, %3962
  %3969 = call float @dx.op.binary.f32(i32 35, float %3968, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3970

; <label>:3970                                    ; preds = %3955, %3950, %3922
  %3971 = phi float [ %3969, %3955 ], [ 0x3F70101020000000, %3950 ], [ 0x3F70101020000000, %3922 ]
  %3972 = add i32 %62, 144
  %3973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.i32 %3973, 0
  %3975 = and i32 %3974, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = lshr i32 %3974, 8
  %3978 = and i32 %3977, 255
  %3979 = uitofp i32 %3978 to float
  %3980 = call float @dx.op.dot3.f32(i32 55, float %3757, float %3758, float %3759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3981 = fmul fast float %3979, %3980
  %3982 = fadd fast float %3981, %3976
  %3983 = fmul fast float %3982, 0x3F70101020000000
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  br i1 %3241, label %3985, label %4020

; <label>:3985                                    ; preds = %3970
  %3986 = fmul fast float %3971, 2.000000e+00
  %3987 = fcmp fast olt float %3943, 1.270000e+02
  %3988 = fcmp fast olt float %3944, 1.270000e+02
  %3989 = fcmp fast olt float %3945, 1.270000e+02
  %3990 = fmul fast float %3943, 0xBFF7154760000000
  %3991 = fmul fast float %3990, %3986
  %3992 = fmul fast float %3944, 0xBFF7154760000000
  %3993 = fmul fast float %3992, %3986
  %3994 = fmul fast float %3945, 0xBFF7154760000000
  %3995 = fmul fast float %3994, %3986
  %3996 = call float @dx.op.unary.f32(i32 21, float %3991)  ; Exp(value)
  %3997 = call float @dx.op.unary.f32(i32 21, float %3993)  ; Exp(value)
  %3998 = call float @dx.op.unary.f32(i32 21, float %3995)  ; Exp(value)
  %3999 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %4000 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %4001 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4002 = fadd fast float %3999, -1.000000e+00
  %4003 = select i1 %3987, float %4002, float -1.000000e+00
  %4004 = fadd fast float %4000, -1.000000e+00
  %4005 = select i1 %3988, float %4004, float -1.000000e+00
  %4006 = fadd fast float %4001, -1.000000e+00
  %4007 = select i1 %3989, float %4006, float -1.000000e+00
  %4008 = fmul fast float %4003, %3537
  %4009 = fmul fast float %4005, %3537
  %4010 = fmul fast float %4007, %3537
  %4011 = fadd fast float %4008, 1.000000e+00
  %4012 = fadd fast float %4009, 1.000000e+00
  %4013 = fadd fast float %4010, 1.000000e+00
  %4014 = fmul fast float %4011, %3226
  %4015 = fmul fast float %4012, %3227
  %4016 = fmul fast float %4013, %3228
  %4017 = fmul fast float %4011, %3232
  %4018 = fmul fast float %4012, %3233
  %4019 = fmul fast float %4013, %3234
  br label %4020

; <label>:4020                                    ; preds = %3985, %3970
  %4021 = phi float [ %4014, %3985 ], [ %3226, %3970 ]
  %4022 = phi float [ %4015, %3985 ], [ %3227, %3970 ]
  %4023 = phi float [ %4016, %3985 ], [ %3228, %3970 ]
  %4024 = phi float [ %4017, %3985 ], [ %3232, %3970 ]
  %4025 = phi float [ %4018, %3985 ], [ %3233, %3970 ]
  %4026 = phi float [ %4019, %3985 ], [ %3234, %3970 ]
  %4027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %4028 = extractvalue %dx.types.ResRet.i32 %4027, 0
  %4029 = and i32 %4028, 3
  %4030 = icmp eq i32 %4029, 3
  br i1 %4030, label %4109, label %4031

; <label>:4031                                    ; preds = %4020
  %4032 = and i32 %4028, 16
  %4033 = icmp ne i32 %4032, 0
  %4034 = select i1 %4033, float %3537, float 0.000000e+00
  %4035 = icmp eq i32 %4029, 0
  br i1 %4035, label %4036, label %4064

; <label>:4036                                    ; preds = %4031
  %4037 = and i32 %4028, 64
  %4038 = icmp ne i32 %4037, 0
  %4039 = select i1 %4038, float %3537, float 0.000000e+00
  %4040 = fsub fast float %3757, %4021
  %4041 = fsub fast float %3758, %4022
  %4042 = fsub fast float %3759, %4023
  %4043 = fmul fast float %4034, %4040
  %4044 = fmul fast float %4034, %4041
  %4045 = fmul fast float %4034, %4042
  %4046 = fadd fast float %4043, %4021
  %4047 = fadd fast float %4044, %4022
  %4048 = fadd fast float %4045, %4023
  %4049 = fsub fast float %3743, %3235
  %4050 = fmul fast float %4034, %4049
  %4051 = fadd fast float %4050, %3235
  %4052 = fsub fast float %3885, %4024
  %4053 = fsub fast float %3886, %4025
  %4054 = fsub fast float %3887, %4026
  %4055 = fmul fast float %4039, %4052
  %4056 = fmul fast float %4039, %4053
  %4057 = fmul fast float %4039, %4054
  %4058 = fadd fast float %4055, %4024
  %4059 = fadd fast float %4056, %4025
  %4060 = fadd fast float %4057, %4026
  %4061 = fsub fast float %3984, %3239
  %4062 = fmul fast float %4034, %4061
  %4063 = fadd fast float %4062, %3239
  br label %4109

; <label>:4064                                    ; preds = %4031
  %4065 = icmp eq i32 %4029, 1
  br i1 %4065, label %4066, label %4079

; <label>:4066                                    ; preds = %4064
  %4067 = fadd fast float %3757, -1.000000e+00
  %4068 = fadd fast float %3758, -1.000000e+00
  %4069 = fadd fast float %3759, -1.000000e+00
  %4070 = fmul fast float %4034, %4067
  %4071 = fmul fast float %4034, %4068
  %4072 = fmul fast float %4034, %4069
  %4073 = fadd fast float %4070, 1.000000e+00
  %4074 = fadd fast float %4071, 1.000000e+00
  %4075 = fadd fast float %4072, 1.000000e+00
  %4076 = fmul fast float %4073, %4021
  %4077 = fmul fast float %4074, %4022
  %4078 = fmul fast float %4075, %4023
  br label %4109

; <label>:4079                                    ; preds = %4064
  %4080 = icmp eq i32 %4029, 2
  br i1 %4080, label %4081, label %4109

; <label>:4081                                    ; preds = %4079
  %4082 = call float @dx.op.unary.f32(i32 24, float %3757)  ; Sqrt(value)
  %4083 = call float @dx.op.unary.f32(i32 24, float %3758)  ; Sqrt(value)
  %4084 = call float @dx.op.unary.f32(i32 24, float %3759)  ; Sqrt(value)
  %4085 = fadd fast float %4082, -5.000000e-01
  %4086 = fadd fast float %4083, -5.000000e-01
  %4087 = fadd fast float %4084, -5.000000e-01
  %4088 = fmul fast float %4085, %4034
  %4089 = fmul fast float %4086, %4034
  %4090 = fmul fast float %4087, %4034
  %4091 = fadd fast float %4088, 5.000000e-01
  %4092 = fadd fast float %4089, 5.000000e-01
  %4093 = fadd fast float %4090, 5.000000e-01
  %4094 = fmul fast float %4091, 2.000000e+00
  %4095 = fsub fast float 1.000000e+00, %4094
  %4096 = fmul fast float %4095, %4021
  %4097 = fadd fast float %4096, %4094
  %4098 = fmul fast float %4097, %4021
  %4099 = fmul fast float %4092, 2.000000e+00
  %4100 = fsub fast float 1.000000e+00, %4099
  %4101 = fmul fast float %4100, %4022
  %4102 = fadd fast float %4101, %4099
  %4103 = fmul fast float %4102, %4022
  %4104 = fmul fast float %4093, 2.000000e+00
  %4105 = fsub fast float 1.000000e+00, %4104
  %4106 = fmul fast float %4105, %4023
  %4107 = fadd fast float %4106, %4104
  %4108 = fmul fast float %4107, %4023
  br label %4109

; <label>:4109                                    ; preds = %4081, %4079, %4066, %4036, %4020
  %4110 = phi float [ %4021, %4020 ], [ %4098, %4081 ], [ %4021, %4079 ], [ %4076, %4066 ], [ %4046, %4036 ]
  %4111 = phi float [ %4022, %4020 ], [ %4103, %4081 ], [ %4022, %4079 ], [ %4077, %4066 ], [ %4047, %4036 ]
  %4112 = phi float [ %4023, %4020 ], [ %4108, %4081 ], [ %4023, %4079 ], [ %4078, %4066 ], [ %4048, %4036 ]
  %4113 = phi float [ %4024, %4020 ], [ %4024, %4081 ], [ %4024, %4079 ], [ %4024, %4066 ], [ %4058, %4036 ]
  %4114 = phi float [ %4025, %4020 ], [ %4025, %4081 ], [ %4025, %4079 ], [ %4025, %4066 ], [ %4059, %4036 ]
  %4115 = phi float [ %4026, %4020 ], [ %4026, %4081 ], [ %4026, %4079 ], [ %4026, %4066 ], [ %4060, %4036 ]
  %4116 = phi float [ %3235, %4020 ], [ %3235, %4081 ], [ %3235, %4079 ], [ %3235, %4066 ], [ %4051, %4036 ]
  %4117 = phi float [ %3239, %4020 ], [ %3239, %4081 ], [ %3239, %4079 ], [ %3239, %4066 ], [ %4063, %4036 ]
  %4118 = and i32 %4028, 12
  %4119 = icmp eq i32 %4118, 12
  br i1 %4119, label %4226, label %4120

; <label>:4120                                    ; preds = %4109
  %4121 = and i32 %4028, 2097184
  %4122 = icmp eq i32 %4121, 2097184
  %4123 = select i1 %4122, float %3537, float 0.000000e+00
  %4124 = and i32 %4028, 4194336
  %4125 = icmp eq i32 %4124, 4194336
  %4126 = select i1 %4125, float %3537, float 0.000000e+00
  %4127 = and i32 %4028, 8388640
  %4128 = icmp eq i32 %4127, 8388640
  %4129 = select i1 %4128, float %3537, float 0.000000e+00
  %4130 = and i32 %4028, 1024
  %4131 = icmp ne i32 %4130, 0
  %4132 = select i1 %4131, float %3537, float 0.000000e+00
  %4133 = and i32 %4028, 2048
  %4134 = icmp ne i32 %4133, 0
  %4135 = select i1 %4134, float %3537, float 0.000000e+00
  %4136 = icmp eq i32 %4118, 0
  br i1 %4136, label %4137, label %4162

; <label>:4137                                    ; preds = %4120
  %4138 = fsub fast float %3838, %3224
  %4139 = fsub fast float %3839, %3225
  %4140 = fmul fast float %4123, %4138
  %4141 = fmul fast float %4123, %4139
  %4142 = fadd fast float %4140, %3224
  %4143 = fadd fast float %4141, %3225
  %4144 = fsub fast float %3840, %3237
  %4145 = fmul fast float %4126, %4144
  %4146 = fadd fast float %4145, %3237
  %4147 = fsub fast float %3837, %3236
  %4148 = fmul fast float %4129, %4147
  %4149 = fadd fast float %4148, %3236
  %4150 = fsub fast float %3943, %3229
  %4151 = fsub fast float %3944, %3230
  %4152 = fsub fast float %3945, %3231
  %4153 = fmul fast float %4132, %4150
  %4154 = fmul fast float %4132, %4151
  %4155 = fmul fast float %4132, %4152
  %4156 = fadd fast float %4153, %3229
  %4157 = fadd fast float %4154, %3230
  %4158 = fadd fast float %4155, %3231
  %4159 = fsub fast float %3971, %3238
  %4160 = fmul fast float %4135, %4159
  %4161 = fadd fast float %4160, %3238
  br label %4226

; <label>:4162                                    ; preds = %4120
  %4163 = icmp eq i32 %4118, 4
  br i1 %4163, label %4164, label %4204

; <label>:4164                                    ; preds = %4162
  %4165 = fmul fast float %4123, %3838
  %4166 = fmul fast float %4123, %3839
  %4167 = fadd fast float %4165, %3224
  %4168 = fadd fast float %4166, %3225
  %4169 = call float @dx.op.binary.f32(i32 36, float %3237, float %3840)  ; FMin(a,b)
  %4170 = fsub fast float %4169, %3237
  %4171 = fmul fast float %4170, %4126
  %4172 = fadd fast float %4171, %3237
  %4173 = fadd fast float %3837, %3236
  %4174 = fmul fast float %4173, 0x3FF337FAE0000000
  %4175 = fmul fast float %3236, %3236
  %4176 = fmul fast float %3837, %3837
  %4177 = fadd fast float %4176, %4175
  %4178 = fmul fast float %4177, 0x3FE5152B00000000
  %4179 = fmul fast float %3236, 0xBFCC1F85E0000000
  %4180 = fmul fast float %4179, %3837
  %4181 = fadd fast float %4180, 0xBFE1363700000000
  %4182 = fadd fast float %4181, %4174
  %4183 = fsub fast float %4182, %4178
  %4184 = fmul fast float %4173, 0x3FBA6F0D00000000
  %4185 = fmul fast float %4177, 0x3FD0432880000000
  %4186 = fmul fast float %3236, 0xBFEF110800000000
  %4187 = fmul fast float %4186, %3837
  %4188 = fadd fast float %4187, 1.000000e+00
  %4189 = fsub fast float %4188, %4184
  %4190 = fadd fast float %4189, %4185
  %4191 = fdiv fast float %4183, %4190
  %4192 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4193 = fsub fast float %4192, %3236
  %4194 = fmul fast float %4193, %4129
  %4195 = fadd fast float %4194, %3236
  %4196 = fmul fast float %4132, %3943
  %4197 = fmul fast float %4132, %3944
  %4198 = fmul fast float %4132, %3945
  %4199 = fadd fast float %4196, %3229
  %4200 = fadd fast float %4197, %3230
  %4201 = fadd fast float %4198, %3231
  %4202 = fmul fast float %4135, %3971
  %4203 = fadd fast float %4202, %3238
  br label %4226

; <label>:4204                                    ; preds = %4162
  %4205 = icmp eq i32 %4118, 8
  br i1 %4205, label %4206, label %4226

; <label>:4206                                    ; preds = %4204
  %4207 = fmul fast float %4123, %3838
  %4208 = fmul fast float %4123, %3839
  %4209 = fadd fast float %4207, %3224
  %4210 = fadd fast float %4208, %3225
  %4211 = call float @dx.op.binary.f32(i32 36, float %3237, float %3840)  ; FMin(a,b)
  %4212 = fsub fast float %4211, %3237
  %4213 = fmul fast float %4212, %4126
  %4214 = fadd fast float %4213, %3237
  %4215 = fsub fast float %3837, %3236
  %4216 = fmul fast float %4129, %4215
  %4217 = fadd fast float %4216, %3236
  %4218 = fmul fast float %4132, %3943
  %4219 = fmul fast float %4132, %3944
  %4220 = fmul fast float %4132, %3945
  %4221 = fadd fast float %4218, %3229
  %4222 = fadd fast float %4219, %3230
  %4223 = fadd fast float %4220, %3231
  %4224 = fmul fast float %4135, %3971
  %4225 = fadd fast float %4224, %3238
  br label %4226

; <label>:4226                                    ; preds = %4206, %4204, %4164, %4137, %4109, %3536, %3240, %3223
  %4227 = phi float [ %3224, %4109 ], [ %3224, %3536 ], [ %3224, %3223 ], [ %3224, %3240 ], [ %4142, %4137 ], [ %4167, %4164 ], [ %3224, %4204 ], [ %4209, %4206 ]
  %4228 = phi float [ %3225, %4109 ], [ %3225, %3536 ], [ %3225, %3223 ], [ %3225, %3240 ], [ %4143, %4137 ], [ %4168, %4164 ], [ %3225, %4204 ], [ %4210, %4206 ]
  %4229 = phi float [ %4110, %4109 ], [ %3226, %3536 ], [ %3226, %3223 ], [ %3226, %3240 ], [ %4110, %4137 ], [ %4110, %4164 ], [ %4110, %4204 ], [ %4110, %4206 ]
  %4230 = phi float [ %4111, %4109 ], [ %3227, %3536 ], [ %3227, %3223 ], [ %3227, %3240 ], [ %4111, %4137 ], [ %4111, %4164 ], [ %4111, %4204 ], [ %4111, %4206 ]
  %4231 = phi float [ %4112, %4109 ], [ %3228, %3536 ], [ %3228, %3223 ], [ %3228, %3240 ], [ %4112, %4137 ], [ %4112, %4164 ], [ %4112, %4204 ], [ %4112, %4206 ]
  %4232 = phi float [ %3229, %4109 ], [ %3229, %3536 ], [ %3229, %3223 ], [ %3229, %3240 ], [ %4156, %4137 ], [ %4199, %4164 ], [ %3229, %4204 ], [ %4221, %4206 ]
  %4233 = phi float [ %3230, %4109 ], [ %3230, %3536 ], [ %3230, %3223 ], [ %3230, %3240 ], [ %4157, %4137 ], [ %4200, %4164 ], [ %3230, %4204 ], [ %4222, %4206 ]
  %4234 = phi float [ %3231, %4109 ], [ %3231, %3536 ], [ %3231, %3223 ], [ %3231, %3240 ], [ %4158, %4137 ], [ %4201, %4164 ], [ %3231, %4204 ], [ %4223, %4206 ]
  %4235 = phi float [ %4113, %4109 ], [ %3232, %3536 ], [ %3232, %3223 ], [ %3232, %3240 ], [ %4113, %4137 ], [ %4113, %4164 ], [ %4113, %4204 ], [ %4113, %4206 ]
  %4236 = phi float [ %4114, %4109 ], [ %3233, %3536 ], [ %3233, %3223 ], [ %3233, %3240 ], [ %4114, %4137 ], [ %4114, %4164 ], [ %4114, %4204 ], [ %4114, %4206 ]
  %4237 = phi float [ %4115, %4109 ], [ %3234, %3536 ], [ %3234, %3223 ], [ %3234, %3240 ], [ %4115, %4137 ], [ %4115, %4164 ], [ %4115, %4204 ], [ %4115, %4206 ]
  %4238 = phi float [ %4116, %4109 ], [ %3235, %3536 ], [ %3235, %3223 ], [ %3235, %3240 ], [ %4116, %4137 ], [ %4116, %4164 ], [ %4116, %4204 ], [ %4116, %4206 ]
  %4239 = phi float [ %3236, %4109 ], [ %3236, %3536 ], [ %3236, %3223 ], [ %3236, %3240 ], [ %4149, %4137 ], [ %4195, %4164 ], [ %3236, %4204 ], [ %4217, %4206 ]
  %4240 = phi float [ %3237, %4109 ], [ %3237, %3536 ], [ %3237, %3223 ], [ %3237, %3240 ], [ %4146, %4137 ], [ %4172, %4164 ], [ %3237, %4204 ], [ %4214, %4206 ]
  %4241 = phi float [ %3238, %4109 ], [ %3238, %3536 ], [ %3238, %3223 ], [ %3238, %3240 ], [ %4161, %4137 ], [ %4203, %4164 ], [ %3238, %4204 ], [ %4225, %4206 ]
  %4242 = phi float [ %4117, %4109 ], [ %3239, %3536 ], [ %3239, %3223 ], [ %3239, %3240 ], [ %4117, %4137 ], [ %4117, %4164 ], [ %4117, %4204 ], [ %4117, %4206 ]
  %4243 = add i32 %62, 360
  %4244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.i32 %4244, 0
  %4246 = extractvalue %dx.types.ResRet.i32 %4244, 1
  %4247 = bitcast i32 %4245 to float
  %4248 = bitcast i32 %4246 to float
  %4249 = fcmp fast oge float %4247, 0.000000e+00
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 0
  %4252 = select i1 %4249, float %4247, float %4251
  %4253 = add i32 %62, 456
  %4254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.i32 %4254, 0
  %4256 = add i32 %4255, 0
  %4257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4256, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4258 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4257, %dx.types.Handle %108, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = fmul fast float %4259, %4248
  %4261 = fadd fast float %4260, %4252
  %4262 = call float @dx.op.dot2.f32(i32 54, float %4227, float %4228, float %4227, float %4228)  ; Dot2(ax,ay,bx,by)
  %4263 = fmul fast float %4262, 0x3FE3333340000000
  %4264 = fsub fast float 1.000000e+00, %4263
  %4265 = call float @dx.op.dot3.f32(i32 55, float %4227, float %4228, float %4264, float %4227, float %4228, float %4264)  ; Dot3(ax,ay,az,bx,by,bz)
  %4266 = call float @dx.op.unary.f32(i32 25, float %4265)  ; Rsqrt(value)
  %4267 = fmul fast float %4266, %4227
  %4268 = fmul fast float %4266, %4228
  %4269 = fmul fast float %4264, %4266
  %4270 = fmul fast float %4269, %120
  %4271 = fmul fast float %4269, %122
  %4272 = fmul fast float %4269, %124
  %4273 = fmul fast float %4267, %83
  %4274 = fmul fast float %4267, %84
  %4275 = fmul fast float %4267, %85
  %4276 = fadd fast float %4270, %4273
  %4277 = fadd fast float %4271, %4274
  %4278 = fadd fast float %4272, %4275
  %4279 = fmul fast float %134, %4268
  %4280 = fmul fast float %135, %4268
  %4281 = fmul fast float %136, %4268
  %4282 = fadd fast float %4276, %4279
  %4283 = fadd fast float %4277, %4280
  %4284 = fadd fast float %4278, %4281
  %4285 = call float @dx.op.dot3.f32(i32 55, float %4282, float %4283, float %4284, float %4282, float %4283, float %4284)  ; Dot3(ax,ay,az,bx,by,bz)
  %4286 = call float @dx.op.unary.f32(i32 25, float %4285)  ; Rsqrt(value)
  %4287 = fmul fast float %4282, %4286
  %4288 = fmul fast float %4283, %4286
  %4289 = fmul fast float %4284, %4286
  %4290 = and i32 %64, 1
  %4291 = icmp eq i32 %4290, 0
  br i1 %4291, label %4292, label %4835

; <label>:4292                                    ; preds = %4226
  %4293 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %4294 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %4295 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %4296 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %4297 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %4298 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %4299 = fadd fast float %4293, %170
  %4300 = fadd fast float %4294, %171
  %4301 = fadd fast float %4295, %172
  %4302 = fadd fast float %4296, %170
  %4303 = fadd fast float %4297, %171
  %4304 = fadd fast float %4298, %172
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.CBufRet.f32 %4305, 2
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 2
  %4311 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4312 = fmul fast float %4306, %111
  %4313 = fmul fast float %4312, %4310
  %4314 = fmul fast float %4307, %112
  %4315 = fmul fast float %4314, %4311
  %4316 = fptoui float %4313 to i32
  %4317 = fptoui float %4315 to i32
  %4318 = fadd fast float %4306, -1.000000e+00
  %4319 = fadd fast float %4307, -1.000000e+00
  %4320 = fptoui float %4318 to i32
  %4321 = fptoui float %4319 to i32
  %4322 = call i32 @dx.op.binary.i32(i32 40, i32 %4316, i32 %4320)  ; UMin(a,b)
  %4323 = call i32 @dx.op.binary.i32(i32 40, i32 %4317, i32 %4321)  ; UMin(a,b)
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 2
  %4326 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4327 = fmul fast float %4325, %99
  %4328 = fsub fast float %4327, %4326
  %4329 = fadd fast float %4308, -1.000000e+00
  %4330 = call float @dx.op.binary.f32(i32 36, float %4328, float %4329)  ; FMin(a,b)
  %4331 = fptoui float %4330 to i32
  %4332 = fptoui float %4306 to i32
  %4333 = fptoui float %4307 to i32
  %4334 = mul i32 %4331, %4333
  %4335 = add i32 %4334, %4323
  %4336 = mul i32 %4335, %4332
  %4337 = add i32 %4336, %4322
  %4338 = shl i32 %4337, 2
  %4339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.i32 %4339, 0
  %4341 = and i32 %4340, 1023
  %4342 = lshr i32 %4340, 10
  %4343 = icmp eq i32 %4341, 0
  br i1 %4343, label %4800, label %4344

; <label>:4344                                    ; preds = %4292
  %4345 = and i32 %4340, 1023
  br label %4346

; <label>:4346                                    ; preds = %4476, %4344
  %4347 = phi i32 [ %4426, %4476 ], [ 0, %4344 ]
  %4348 = phi float [ %4477, %4476 ], [ 0.000000e+00, %4344 ]
  %4349 = phi float [ %4478, %4476 ], [ %1229, %4344 ]
  %4350 = phi float [ %4479, %4476 ], [ %4261, %4344 ]
  %4351 = phi float [ %4480, %4476 ], [ %4242, %4344 ]
  %4352 = phi float [ %4481, %4476 ], [ %4232, %4344 ]
  %4353 = phi float [ %4482, %4476 ], [ %4233, %4344 ]
  %4354 = phi float [ %4483, %4476 ], [ %4234, %4344 ]
  %4355 = phi float [ %4484, %4476 ], [ 0.000000e+00, %4344 ]
  %4356 = phi float [ %4485, %4476 ], [ 0.000000e+00, %4344 ]
  %4357 = phi float [ %4486, %4476 ], [ %4235, %4344 ]
  %4358 = phi float [ %4487, %4476 ], [ %4236, %4344 ]
  %4359 = phi float [ %4488, %4476 ], [ %4237, %4344 ]
  %4360 = phi float [ %4489, %4476 ], [ %4287, %4344 ]
  %4361 = phi float [ %4490, %4476 ], [ %4288, %4344 ]
  %4362 = phi float [ %4491, %4476 ], [ %4289, %4344 ]
  %4363 = phi float [ %4492, %4476 ], [ %4240, %4344 ]
  %4364 = phi float [ %4493, %4476 ], [ %4239, %4344 ]
  %4365 = phi float [ %4494, %4476 ], [ 0.000000e+00, %4344 ]
  %4366 = phi float [ %4495, %4476 ], [ %4238, %4344 ]
  %4367 = phi float [ %4496, %4476 ], [ %4229, %4344 ]
  %4368 = phi float [ %4497, %4476 ], [ %4230, %4344 ]
  %4369 = phi float [ %4498, %4476 ], [ %4231, %4344 ]
  %4370 = add nuw nsw i32 %4347, %4342
  %4371 = shl i32 %4370, 2
  %4372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4373 = extractvalue %dx.types.ResRet.i32 %4372, 0
  %4374 = shl i32 %4373, 8
  %4375 = or i32 %4374, 48
  %4376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.ResRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.ResRet.f32 %4376, 2
  %4380 = extractvalue %dx.types.ResRet.f32 %4376, 3
  %4381 = or i32 %4374, 64
  %4382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4381, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.i32 %4382, 0
  %4384 = extractvalue %dx.types.ResRet.i32 %4382, 1
  %4385 = or i32 %4374, 80
  %4386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 2
  %4388 = extractvalue %dx.types.ResRet.f32 %4386, 3
  %4389 = or i32 %4374, 96
  %4390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = extractvalue %dx.types.ResRet.f32 %4390, 1
  %4393 = extractvalue %dx.types.ResRet.f32 %4390, 2
  %4394 = extractvalue %dx.types.ResRet.f32 %4390, 3
  %4395 = or i32 %4374, 112
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4398 = or i32 %4374, 128
  %4399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.f32 %4399, 0
  %4401 = extractvalue %dx.types.ResRet.f32 %4399, 1
  %4402 = extractvalue %dx.types.ResRet.f32 %4399, 2
  %4403 = extractvalue %dx.types.ResRet.f32 %4399, 3
  %4404 = or i32 %4374, 144
  %4405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.ResRet.f32 %4405, 1
  %4408 = extractvalue %dx.types.ResRet.f32 %4405, 2
  %4409 = extractvalue %dx.types.ResRet.f32 %4405, 3
  %4410 = or i32 %4374, 160
  %4411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.ResRet.f32 %4411, 1
  %4414 = extractvalue %dx.types.ResRet.f32 %4411, 2
  %4415 = extractvalue %dx.types.ResRet.f32 %4411, 3
  %4416 = or i32 %4374, 192
  %4417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.i32 %4417, 0
  %4419 = or i32 %4374, 208
  %4420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4419, i32 undef)  ; BufferLoad(srv,index,wot)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = or i32 %4374, 248
  %4423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.ResRet.f32 %4423, 1
  %4426 = add nuw nsw i32 %4347, 1
  %4427 = bitcast float %4380 to i32
  %4428 = and i32 %4427, 512
  %4429 = icmp eq i32 %4428, 0
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.ResRet.f32 %4430, 1
  %4433 = extractvalue %dx.types.ResRet.f32 %4430, 2
  %4434 = extractvalue %dx.types.ResRet.f32 %4430, 3
  %4435 = call float @dx.op.dot4.f32(i32 56, float %4431, float %4432, float %4433, float %4434, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4436 = or i32 %4374, 16
  %4437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.ResRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.ResRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.ResRet.f32 %4437, 3
  %4442 = call float @dx.op.dot4.f32(i32 56, float %4438, float %4439, float %4440, float %4441, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4443 = or i32 %4374, 32
  %4444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4443, i32 undef)  ; BufferLoad(srv,index,wot)
  %4445 = extractvalue %dx.types.ResRet.f32 %4444, 0
  %4446 = extractvalue %dx.types.ResRet.f32 %4444, 1
  %4447 = extractvalue %dx.types.ResRet.f32 %4444, 2
  %4448 = extractvalue %dx.types.ResRet.f32 %4444, 3
  %4449 = call float @dx.op.dot4.f32(i32 56, float %4445, float %4446, float %4447, float %4448, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4450 = call float @dx.op.unary.f32(i32 27, float %4435)  ; Round_ni(value)
  %4451 = call float @dx.op.unary.f32(i32 6, float %4450)  ; FAbs(value)
  %4452 = call float @dx.op.unary.f32(i32 27, float %4442)  ; Round_ni(value)
  %4453 = call float @dx.op.unary.f32(i32 6, float %4452)  ; FAbs(value)
  %4454 = call float @dx.op.unary.f32(i32 6, float %4449)  ; FAbs(value)
  %4455 = call float @dx.op.unary.f32(i32 27, float %4454)  ; Round_ni(value)
  %4456 = fadd fast float %4453, %4451
  %4457 = fadd fast float %4456, %4455
  %4458 = fcmp fast oeq float %4457, 0.000000e+00
  %4459 = call float @dx.op.dot4.f32(i32 56, float %4431, float %4432, float %4433, float %4434, float %4299, float %4300, float %4301, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4460 = call float @dx.op.dot4.f32(i32 56, float %4438, float %4439, float %4440, float %4441, float %4299, float %4300, float %4301, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4461 = call float @dx.op.dot4.f32(i32 56, float %4431, float %4432, float %4433, float %4434, float %4302, float %4303, float %4304, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4462 = call float @dx.op.dot4.f32(i32 56, float %4438, float %4439, float %4440, float %4441, float %4302, float %4303, float %4304, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4463 = fsub fast float %4459, %4435
  %4464 = fsub fast float %4461, %4435
  %4465 = fsub fast float %4460, %4442
  %4466 = fsub fast float %4462, %4442
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4377, float %4378, float %4379, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 2
  %4470 = fadd fast float %4469, %4467
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4473 = fcmp fast ogt float %4471, %4472
  %4474 = and i1 %4458, %4473
  %4475 = and i1 %4429, %4474
  br i1 %4475, label %4500, label %4476

; <label>:4476                                    ; preds = %4786, %4581, %4500, %4346
  %4477 = phi float [ %4348, %4500 ], [ %4584, %4581 ], [ %4584, %4786 ], [ %4348, %4346 ]
  %4478 = phi float [ %4349, %4500 ], [ %4349, %4581 ], [ %4762, %4786 ], [ %4349, %4346 ]
  %4479 = phi float [ %4350, %4500 ], [ %4350, %4581 ], [ %4761, %4786 ], [ %4350, %4346 ]
  %4480 = phi float [ %4351, %4500 ], [ %4351, %4581 ], [ %4759, %4786 ], [ %4351, %4346 ]
  %4481 = phi float [ %4352, %4500 ], [ %4352, %4581 ], [ %4737, %4786 ], [ %4352, %4346 ]
  %4482 = phi float [ %4353, %4500 ], [ %4353, %4581 ], [ %4738, %4786 ], [ %4353, %4346 ]
  %4483 = phi float [ %4354, %4500 ], [ %4354, %4581 ], [ %4739, %4786 ], [ %4354, %4346 ]
  %4484 = phi float [ %4355, %4500 ], [ %4355, %4581 ], [ %4708, %4786 ], [ %4355, %4346 ]
  %4485 = phi float [ %4356, %4500 ], [ %4356, %4581 ], [ %4706, %4786 ], [ %4356, %4346 ]
  %4486 = phi float [ %4357, %4500 ], [ %4357, %4581 ], [ %4796, %4786 ], [ %4357, %4346 ]
  %4487 = phi float [ %4358, %4500 ], [ %4358, %4581 ], [ %4797, %4786 ], [ %4358, %4346 ]
  %4488 = phi float [ %4359, %4500 ], [ %4359, %4581 ], [ %4798, %4786 ], [ %4359, %4346 ]
  %4489 = phi float [ %4360, %4500 ], [ %4360, %4581 ], [ %4687, %4786 ], [ %4360, %4346 ]
  %4490 = phi float [ %4361, %4500 ], [ %4361, %4581 ], [ %4688, %4786 ], [ %4361, %4346 ]
  %4491 = phi float [ %4362, %4500 ], [ %4362, %4581 ], [ %4689, %4786 ], [ %4362, %4346 ]
  %4492 = phi float [ %4363, %4500 ], [ %4363, %4581 ], [ %4717, %4786 ], [ %4363, %4346 ]
  %4493 = phi float [ %4364, %4500 ], [ %4364, %4581 ], [ %4714, %4786 ], [ %4364, %4346 ]
  %4494 = phi float [ %4365, %4500 ], [ %4365, %4581 ], [ %4711, %4786 ], [ %4365, %4346 ]
  %4495 = phi float [ %4366, %4500 ], [ %4366, %4581 ], [ %4704, %4786 ], [ %4366, %4346 ]
  %4496 = phi float [ %4367, %4500 ], [ %4367, %4581 ], [ %4699, %4786 ], [ %4367, %4346 ]
  %4497 = phi float [ %4368, %4500 ], [ %4368, %4581 ], [ %4700, %4786 ], [ %4368, %4346 ]
  %4498 = phi float [ %4369, %4500 ], [ %4369, %4581 ], [ %4701, %4786 ], [ %4369, %4346 ]
  %4499 = icmp eq i32 %4426, %4345
  br i1 %4499, label %4799, label %4346

; <label>:4500                                    ; preds = %4346
  %4501 = extractvalue %dx.types.ResRet.f32 %4396, 3
  %4502 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4503 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4504 = extractvalue %dx.types.ResRet.f32 %4386, 1
  %4505 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4506 = extractvalue %dx.types.ResRet.i32 %4382, 3
  %4507 = extractvalue %dx.types.ResRet.i32 %4382, 2
  %4508 = add i32 %4506, 0
  %4509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4508, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4511 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4509, %dx.types.Handle %4510, float %4435, float %4442, float undef, float undef, i32 0, i32 0, i32 undef, float %4463, float %4465, float undef, float %4464, float %4466, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = fmul fast float %4512, %4505
  %4514 = fadd fast float %4513, %4504
  %4515 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4516 = fmul fast float %4435, %4391
  %4517 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4442, float %4516)  ; FMad(a,b,c)
  %4518 = fadd fast float %4517, %4503
  %4519 = fmul fast float %4435, %4393
  %4520 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4442, float %4519)  ; FMad(a,b,c)
  %4521 = fadd fast float %4520, %4502
  %4522 = fmul fast float %4463, %4391
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4465, float %4522)  ; FMad(a,b,c)
  %4524 = fmul fast float %4463, %4393
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4465, float %4524)  ; FMad(a,b,c)
  %4526 = fmul fast float %4464, %4391
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4466, float %4526)  ; FMad(a,b,c)
  %4528 = fmul fast float %4464, %4393
  %4529 = call float @dx.op.tertiary.f32(i32 46, float %4394, float %4466, float %4528)  ; FMad(a,b,c)
  %4530 = add i32 %4507, 0
  %4531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4530, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4532 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4531, %dx.types.Handle %4510, float %4518, float %4521, float undef, float undef, i32 0, i32 0, i32 undef, float %4523, float %4525, float undef, float %4527, float %4529, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = and i32 %4427, 1024
  %4535 = icmp ne i32 %4534, 0
  %4536 = fcmp fast ogt float %4533, 0x3FE0101020000000
  %4537 = uitofp i1 %4536 to float
  %4538 = select i1 %4535, float %4537, float %4533
  %4539 = and i32 %4427, 8192
  %4540 = icmp ne i32 %4539, 0
  %4541 = select i1 %4540, float %4501, float 1.000000e+00
  %4542 = fmul fast float %4435, 2.000000e+00
  %4543 = fadd fast float %4542, -1.000000e+00
  %4544 = call float @dx.op.unary.f32(i32 6, float %4543)  ; FAbs(value)
  %4545 = fmul fast float %4544, %4424
  %4546 = fsub fast float %4545, %4424
  %4547 = call float @dx.op.unary.f32(i32 7, float %4546)  ; Saturate(value)
  %4548 = fmul fast float %4442, 2.000000e+00
  %4549 = fadd fast float %4548, -1.000000e+00
  %4550 = call float @dx.op.unary.f32(i32 6, float %4549)  ; FAbs(value)
  %4551 = fmul fast float %4550, %4425
  %4552 = fsub fast float %4551, %4425
  %4553 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4554 = fmul fast float %4454, %4387
  %4555 = fsub fast float %4554, %4387
  %4556 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4557 = fmul fast float %4515, %4541
  %4558 = fmul fast float %4557, %4512
  %4559 = fmul fast float %4558, %4547
  %4560 = fmul fast float %4559, %4538
  %4561 = fmul fast float %4560, %4553
  %4562 = fmul fast float %4561, %4556
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 1
  %4565 = extractvalue %dx.types.CBufRet.f32 %4563, 0
  %4566 = fsub fast float %4471, %4565
  %4567 = fmul fast float %4566, %4564
  %4568 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4569 = fmul fast float %4562, %4388
  %4570 = fadd fast float %4562, %4388
  %4571 = fmul fast float %4570, %4397
  %4572 = fsub fast float %4571, %4397
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = and i32 %4427, 128
  %4575 = icmp ne i32 %4574, 0
  %4576 = select i1 %4575, float %4573, float %4569
  %4577 = fmul fast float %4576, %4568
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 0
  %4580 = fcmp fast ugt float %4577, %4579
  br i1 %4580, label %4581, label %4476

; <label>:4581                                    ; preds = %4500
  %4582 = select i1 %4540, float %4577, float 0.000000e+00
  %4583 = fadd fast float %4582, %4348
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  br i1 %4540, label %4476, label %4585

; <label>:4585                                    ; preds = %4581
  %4586 = and i32 %4427, 4
  %4587 = and i32 %4427, 8
  %4588 = add i32 %4383, 0
  %4589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4588, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4591 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4589, %dx.types.Handle %4590, float %4518, float %4521, float undef, float undef, i32 0, i32 0, i32 undef, float %4523, float %4525, float undef, float %4527, float %4529, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.f32 %4591, 2
  %4595 = extractvalue %dx.types.ResRet.f32 %4591, 3
  %4596 = bitcast float %4409 to i32
  %4597 = and i32 %4596, 255
  %4598 = uitofp i32 %4597 to float
  %4599 = lshr i32 %4596, 8
  %4600 = and i32 %4599, 255
  %4601 = uitofp i32 %4600 to float
  %4602 = fmul fast float %4595, %4598
  %4603 = fadd fast float %4602, %4601
  %4604 = fmul fast float %4603, 0x3F70101000000000
  %4605 = add i32 %4384, 0
  %4606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4605, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4607 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4606, %dx.types.Handle %4590, float %4518, float %4521, float undef, float undef, i32 0, i32 0, i32 undef, float %4523, float %4525, float undef, float %4527, float %4529, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4608 = extractvalue %dx.types.ResRet.f32 %4607, 0
  %4609 = extractvalue %dx.types.ResRet.f32 %4607, 1
  %4610 = extractvalue %dx.types.ResRet.f32 %4607, 2
  %4611 = extractvalue %dx.types.ResRet.f32 %4607, 3
  %4612 = bitcast float %4403 to i32
  %4613 = and i32 %4612, 255
  %4614 = uitofp i32 %4613 to float
  %4615 = lshr i32 %4612, 8
  %4616 = and i32 %4615, 255
  %4617 = uitofp i32 %4616 to float
  %4618 = lshr i32 %4612, 16
  %4619 = and i32 %4618, 255
  %4620 = uitofp i32 %4619 to float
  %4621 = fmul fast float %4620, 0x3F70101000000000
  %4622 = fmul fast float %4608, %4614
  %4623 = fadd fast float %4622, %4617
  %4624 = fmul fast float %4623, 0x3F70101000000000
  %4625 = fadd fast float %4609, -5.000000e-01
  %4626 = fadd fast float %4611, -5.000000e-01
  %4627 = fmul fast float %4625, %4621
  %4628 = fmul fast float %4626, %4621
  %4629 = fadd fast float %4627, 5.000000e-01
  %4630 = fadd fast float %4628, 5.000000e-01
  %4631 = fmul fast float %4592, %4412
  %4632 = fmul fast float %4593, %4413
  %4633 = fmul fast float %4594, %4414
  %4634 = fmul fast float %4629, 2.000000e+00
  %4635 = fadd fast float %4634, -1.000000e+00
  %4636 = fmul fast float %4630, 2.000000e+00
  %4637 = fadd fast float %4636, -1.000000e+00
  %4638 = fadd fast float %4635, %4637
  %4639 = fmul fast float %4638, 5.000000e-01
  %4640 = fsub fast float %4635, %4637
  %4641 = fmul fast float %4640, 5.000000e-01
  %4642 = call float @dx.op.unary.f32(i32 6, float %4639)  ; FAbs(value)
  %4643 = fsub fast float 1.000000e+00, %4642
  %4644 = call float @dx.op.unary.f32(i32 6, float %4641)  ; FAbs(value)
  %4645 = fsub fast float %4643, %4644
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4641, float %4645, float %4639, float %4641, float %4645)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = call float @dx.op.unary.f32(i32 25, float %4646)  ; Rsqrt(value)
  %4648 = fmul fast float %4639, %4647
  %4649 = fmul fast float %4641, %4647
  %4650 = fmul fast float %4647, %4645
  %4651 = fmul fast float %4650, %4377
  %4652 = fmul fast float %4650, %4378
  %4653 = fmul fast float %4650, %4379
  %4654 = fmul fast float %4648, %4400
  %4655 = fmul fast float %4648, %4401
  %4656 = fmul fast float %4648, %4402
  %4657 = fadd fast float %4654, %4651
  %4658 = fadd fast float %4655, %4652
  %4659 = fadd fast float %4656, %4653
  %4660 = fmul fast float %4649, %4406
  %4661 = fmul fast float %4649, %4407
  %4662 = fmul fast float %4649, %4408
  %4663 = fadd fast float %4657, %4660
  %4664 = fadd fast float %4658, %4661
  %4665 = fadd fast float %4659, %4662
  %4666 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %4667 = call float @dx.op.unary.f32(i32 25, float %4666)  ; Rsqrt(value)
  %4668 = fmul fast float %4663, %4667
  %4669 = fmul fast float %4664, %4667
  %4670 = fmul fast float %4665, %4667
  %4671 = icmp ne i32 %4587, 0
  %4672 = select i1 %4671, float 1.000000e+00, float 0.000000e+00
  %4673 = fmul fast float %4577, %4672
  %4674 = and i32 %4427, 1
  %4675 = icmp eq i32 %4674, 0
  br i1 %4675, label %4676, label %4680

; <label>:4676                                    ; preds = %4585
  %4677 = fsub fast float %4668, %4360
  %4678 = fsub fast float %4669, %4361
  %4679 = fsub fast float %4670, %4362
  br label %4680

; <label>:4680                                    ; preds = %4676, %4585
  %4681 = phi float [ %4677, %4676 ], [ %4668, %4585 ]
  %4682 = phi float [ %4678, %4676 ], [ %4669, %4585 ]
  %4683 = phi float [ %4679, %4676 ], [ %4670, %4585 ]
  %4684 = fmul float %4683, %4673
  %4685 = fmul float %4682, %4673
  %4686 = fmul float %4681, %4673
  %4687 = fadd fast float %4686, %4360
  %4688 = fadd fast float %4685, %4361
  %4689 = fadd fast float %4684, %4362
  %4690 = icmp ne i32 %4586, 0
  %4691 = select i1 %4690, float 1.000000e+00, float 0.000000e+00
  %4692 = fmul fast float %4577, %4691
  %4693 = fsub fast float %4631, %4367
  %4694 = fsub fast float %4632, %4368
  %4695 = fsub fast float %4633, %4369
  %4696 = fmul fast float %4693, %4692
  %4697 = fmul fast float %4694, %4692
  %4698 = fmul fast float %4695, %4692
  %4699 = fadd fast float %4696, %4367
  %4700 = fadd fast float %4697, %4368
  %4701 = fadd fast float %4698, %4369
  %4702 = fsub fast float %4604, %4366
  %4703 = fmul fast float %4702, %4692
  %4704 = fadd fast float %4703, %4366
  %4705 = fmul fast float %4692, %4356
  %4706 = fsub fast float %4356, %4705
  %4707 = fmul fast float %4692, %4355
  %4708 = fsub fast float %4355, %4707
  %4709 = bitcast float %4421 to i32
  %4710 = fadd fast float %4577, %4365
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fsub fast float %4624, %4364
  %4713 = fmul fast float %4712, %4673
  %4714 = fadd fast float %4713, %4364
  %4715 = fsub fast float %4610, %4363
  %4716 = fmul fast float %4715, %4673
  %4717 = fadd fast float %4716, %4363
  br i1 %4675, label %4726, label %4718

; <label>:4718                                    ; preds = %4680
  %4719 = and i32 %4427, 32768
  %4720 = icmp eq i32 %4719, 0
  br i1 %4720, label %4736, label %4721

; <label>:4721                                    ; preds = %4718
  %4722 = fmul fast float %4673, 1.270000e+02
  %4723 = fadd fast float %4722, %4352
  %4724 = fadd fast float %4722, %4353
  %4725 = fadd fast float %4722, %4354
  br label %4736

; <label>:4726                                    ; preds = %4680
  %4727 = fsub fast float 1.270000e+02, %4352
  %4728 = fsub fast float 1.270000e+02, %4353
  %4729 = fsub fast float 1.270000e+02, %4354
  %4730 = fmul fast float %4673, %4727
  %4731 = fmul fast float %4673, %4728
  %4732 = fmul fast float %4673, %4729
  %4733 = fadd fast float %4730, %4352
  %4734 = fadd fast float %4731, %4353
  %4735 = fadd fast float %4732, %4354
  br label %4736

; <label>:4736                                    ; preds = %4726, %4721, %4718
  %4737 = phi float [ %4723, %4721 ], [ %4352, %4718 ], [ %4733, %4726 ]
  %4738 = phi float [ %4724, %4721 ], [ %4353, %4718 ], [ %4734, %4726 ]
  %4739 = phi float [ %4725, %4721 ], [ %4354, %4718 ], [ %4735, %4726 ]
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4632, float %4633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  %4743 = extractvalue %dx.types.CBufRet.f32 %4741, 1
  %4744 = fmul fast float %4743, %4740
  %4745 = fadd fast float %4744, %4742
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4747 = bitcast float %4415 to i32
  %4748 = and i32 %4747, 65535
  %4749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4748)  ; LegacyF16ToF32(value)
  %4750 = lshr i32 %4747, 16
  %4751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4750)  ; LegacyF16ToF32(value)
  %4752 = fcmp fast oge float %4749, 0.000000e+00
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 0
  %4755 = select i1 %4752, float %4749, float %4754
  %4756 = fadd fast float %4755, %4751
  %4757 = fsub fast float %4746, %4351
  %4758 = fmul fast float %4757, %4577
  %4759 = fadd fast float %4758, %4351
  %4760 = fmul fast float %4756, %4577
  %4761 = call float @dx.op.binary.f32(i32 35, float %4350, float %4760)  ; FMax(a,b)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4349, float %4577)  ; FMax(a,b)
  %4763 = and i32 %4427, 16
  %4764 = icmp eq i32 %4763, 0
  br i1 %4764, label %4786, label %4765

; <label>:4765                                    ; preds = %4736
  %4766 = add i32 %4418, 0
  %4767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4766, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4767, %dx.types.Handle %4590, float %4518, float %4521, float undef, float undef, i32 0, i32 0, i32 undef, float %4523, float %4525, float undef, float %4527, float %4529, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = and i32 %4709, 65535
  %4773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4772)  ; LegacyF16ToF32(value)
  %4774 = fmul fast float %4769, %4412
  %4775 = fmul fast float %4770, %4413
  %4776 = fmul fast float %4771, %4414
  %4777 = and i32 %4427, 16384
  %4778 = icmp ne i32 %4777, 0
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 0
  %4781 = select i1 %4778, float %4780, float 1.000000e+00
  %4782 = fmul fast float %4781, %4773
  %4783 = fmul fast float %4774, %4782
  %4784 = fmul fast float %4775, %4782
  %4785 = fmul fast float %4776, %4782
  br label %4786

; <label>:4786                                    ; preds = %4765, %4736
  %4787 = phi float [ %4783, %4765 ], [ 0.000000e+00, %4736 ]
  %4788 = phi float [ %4784, %4765 ], [ 0.000000e+00, %4736 ]
  %4789 = phi float [ %4785, %4765 ], [ 0.000000e+00, %4736 ]
  %4790 = fsub fast float %4787, %4357
  %4791 = fsub fast float %4788, %4358
  %4792 = fsub fast float %4789, %4359
  %4793 = fmul fast float %4790, %4577
  %4794 = fmul fast float %4791, %4577
  %4795 = fmul fast float %4792, %4577
  %4796 = fadd fast float %4793, %4357
  %4797 = fadd fast float %4794, %4358
  %4798 = fadd fast float %4795, %4359
  br label %4476

; <label>:4799                                    ; preds = %4476
  br label %4800

; <label>:4800                                    ; preds = %4799, %4292
  %4801 = phi float [ 0.000000e+00, %4292 ], [ %4477, %4799 ]
  %4802 = phi float [ %1229, %4292 ], [ %4478, %4799 ]
  %4803 = phi float [ %4261, %4292 ], [ %4479, %4799 ]
  %4804 = phi float [ %4242, %4292 ], [ %4480, %4799 ]
  %4805 = phi float [ %4232, %4292 ], [ %4481, %4799 ]
  %4806 = phi float [ %4233, %4292 ], [ %4482, %4799 ]
  %4807 = phi float [ %4234, %4292 ], [ %4483, %4799 ]
  %4808 = phi float [ 0.000000e+00, %4292 ], [ %4484, %4799 ]
  %4809 = phi float [ 0.000000e+00, %4292 ], [ %4485, %4799 ]
  %4810 = phi float [ %4235, %4292 ], [ %4486, %4799 ]
  %4811 = phi float [ %4236, %4292 ], [ %4487, %4799 ]
  %4812 = phi float [ %4237, %4292 ], [ %4488, %4799 ]
  %4813 = phi float [ %4287, %4292 ], [ %4489, %4799 ]
  %4814 = phi float [ %4288, %4292 ], [ %4490, %4799 ]
  %4815 = phi float [ %4289, %4292 ], [ %4491, %4799 ]
  %4816 = phi float [ %4240, %4292 ], [ %4492, %4799 ]
  %4817 = phi float [ %4239, %4292 ], [ %4493, %4799 ]
  %4818 = phi float [ 0.000000e+00, %4292 ], [ %4494, %4799 ]
  %4819 = phi float [ %4238, %4292 ], [ %4495, %4799 ]
  %4820 = phi float [ %4229, %4292 ], [ %4496, %4799 ]
  %4821 = phi float [ %4230, %4292 ], [ %4497, %4799 ]
  %4822 = phi float [ %4231, %4292 ], [ %4498, %4799 ]
  %4823 = call float @dx.op.dot3.f32(i32 55, float %4813, float %4814, float %4815, float %4813, float %4814, float %4815)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = call float @dx.op.unary.f32(i32 25, float %4823)  ; Rsqrt(value)
  %4825 = fmul fast float %4824, %4813
  %4826 = fmul fast float %4824, %4814
  %4827 = fmul fast float %4824, %4815
  %4828 = fadd fast float %4818, %1229
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = call float @dx.op.dot3.f32(i32 55, float %4825, float %4826, float %4827, float %4825, float %4826, float %4827)  ; Dot3(ax,ay,az,bx,by,bz)
  %4831 = call float @dx.op.unary.f32(i32 25, float %4830)  ; Rsqrt(value)
  %4832 = fmul fast float %4831, %4825
  %4833 = fmul fast float %4831, %4826
  %4834 = fmul fast float %4831, %4827
  br label %4835

; <label>:4835                                    ; preds = %4800, %4226
  %4836 = phi float [ %4832, %4800 ], [ %4287, %4226 ]
  %4837 = phi float [ %4833, %4800 ], [ %4288, %4226 ]
  %4838 = phi float [ %4834, %4800 ], [ %4289, %4226 ]
  %4839 = phi float [ %4820, %4800 ], [ %4229, %4226 ]
  %4840 = phi float [ %4821, %4800 ], [ %4230, %4226 ]
  %4841 = phi float [ %4822, %4800 ], [ %4231, %4226 ]
  %4842 = phi float [ %4810, %4800 ], [ %4235, %4226 ]
  %4843 = phi float [ %4811, %4800 ], [ %4236, %4226 ]
  %4844 = phi float [ %4812, %4800 ], [ %4237, %4226 ]
  %4845 = phi float [ %4805, %4800 ], [ %4232, %4226 ]
  %4846 = phi float [ %4806, %4800 ], [ %4233, %4226 ]
  %4847 = phi float [ %4807, %4800 ], [ %4234, %4226 ]
  %4848 = phi float [ %4819, %4800 ], [ %4238, %4226 ]
  %4849 = phi float [ %4829, %4800 ], [ %1229, %4226 ]
  %4850 = phi float [ %4817, %4800 ], [ %4239, %4226 ]
  %4851 = phi float [ %4816, %4800 ], [ %4240, %4226 ]
  %4852 = phi float [ %4809, %4800 ], [ 0.000000e+00, %4226 ]
  %4853 = phi float [ %4808, %4800 ], [ 0.000000e+00, %4226 ]
  %4854 = phi float [ %4801, %4800 ], [ 0.000000e+00, %4226 ]
  %4855 = phi float [ %4803, %4800 ], [ %4261, %4226 ]
  %4856 = phi float [ %4802, %4800 ], [ %1229, %4226 ]
  %4857 = phi float [ %4804, %4800 ], [ %4242, %4226 ]
  %4858 = fadd fast float %4848, 0xBFB99999A0000000
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fmul fast float %4859, 0x3FF1C71C80000000
  %4861 = call float @dx.op.binary.f32(i32 36, float %4848, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4862 = fsub fast float 1.000000e+00, %4860
  %4863 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4864 = fmul fast float %4863, %4839
  %4865 = fmul fast float %4863, %4840
  %4866 = fmul fast float %4863, %4841
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4869 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4870 = fmul fast float %4860, %4839
  %4871 = fmul fast float %4860, %4840
  %4872 = fmul fast float %4860, %4841
  %4873 = fadd fast float %4870, %4861
  %4874 = fadd fast float %4871, %4861
  %4875 = fadd fast float %4872, %4861
  %4876 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4877 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4878 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4879 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4880 = call float @dx.op.binary.f32(i32 36, float %4845, float 1.270000e+02)  ; FMin(a,b)
  %4881 = call float @dx.op.binary.f32(i32 36, float %4846, float 1.270000e+02)  ; FMin(a,b)
  %4882 = call float @dx.op.binary.f32(i32 36, float %4847, float 1.270000e+02)  ; FMin(a,b)
  %4883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4884 = extractvalue %dx.types.CBufRet.i32 %4883, 3
  %4885 = and i32 %4884, 8
  %4886 = icmp ne i32 %4885, 0
  %4887 = call float @dx.op.binary.f32(i32 35, float %4867, float %4839)  ; FMax(a,b)
  %4888 = call float @dx.op.binary.f32(i32 35, float %4868, float %4839)  ; FMax(a,b)
  %4889 = call float @dx.op.binary.f32(i32 35, float %4869, float %4839)  ; FMax(a,b)
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = select i1 %232, float %4839, float %4867
  %4892 = select i1 %232, float %4890, float %4868
  %4893 = select i1 %232, float 1.000000e+00, float %4869
  %4894 = select i1 %4886, float %4887, float %4891
  %4895 = select i1 %4886, float %4888, float %4892
  %4896 = select i1 %4886, float %4889, float %4893
  %4897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4898 = extractvalue %dx.types.CBufRet.f32 %4897, 0
  %4899 = extractvalue %dx.types.CBufRet.f32 %4897, 1
  %4900 = extractvalue %dx.types.CBufRet.f32 %4897, 2
  %4901 = fadd fast float %4898, %170
  %4902 = fadd fast float %4899, %171
  %4903 = fadd fast float %4900, %172
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.CBufRet.f32 %4904, 1
  %4907 = fsub fast float %4901, %4905
  %4908 = fsub fast float %4902, %4906
  %4909 = fmul fast float %4907, %4907
  %4910 = fmul fast float %4908, %4908
  %4911 = fadd fast float %4909, %4910
  %4912 = call float @dx.op.unary.f32(i32 24, float %4911)  ; Sqrt(value)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4914 = fcmp fast olt float %4912, %4913
  br i1 %4914, label %4915, label %4982

; <label>:4915                                    ; preds = %4835
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 0
  %4920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4921 = extractvalue %dx.types.CBufRet.f32 %4920, 0
  %4922 = extractvalue %dx.types.CBufRet.f32 %4916, 1
  %4923 = extractvalue %dx.types.CBufRet.f32 %4918, 1
  %4924 = extractvalue %dx.types.CBufRet.f32 %4920, 1
  %4925 = extractvalue %dx.types.CBufRet.f32 %4916, 3
  %4926 = extractvalue %dx.types.CBufRet.f32 %4918, 3
  %4927 = extractvalue %dx.types.CBufRet.f32 %4920, 3
  %4928 = fadd fast float %4925, %4901
  %4929 = fadd fast float %4926, %4902
  %4930 = fadd fast float %4927, %4903
  %4931 = fmul fast float %4928, %4917
  %4932 = call float @dx.op.tertiary.f32(i32 46, float %4929, float %4919, float %4931)  ; FMad(a,b,c)
  %4933 = call float @dx.op.tertiary.f32(i32 46, float %4930, float %4921, float %4932)  ; FMad(a,b,c)
  %4934 = fmul fast float %4928, %4922
  %4935 = call float @dx.op.tertiary.f32(i32 46, float %4929, float %4923, float %4934)  ; FMad(a,b,c)
  %4936 = call float @dx.op.tertiary.f32(i32 46, float %4930, float %4924, float %4935)  ; FMad(a,b,c)
  %4937 = fsub fast float %4933, %4925
  %4938 = fsub fast float %4936, %4926
  %4939 = fsub fast float %4937, %4905
  %4940 = fadd fast float %4939, %4913
  %4941 = fsub fast float %4938, %4906
  %4942 = fadd fast float %4941, %4913
  %4943 = extractvalue %dx.types.CBufRet.f32 %4904, 3
  %4944 = fmul fast float %4940, %4943
  %4945 = fmul fast float %4942, %4943
  %4946 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4947 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4948 = fsub fast float 1.000000e+00, %4946
  %4949 = fsub fast float 1.000000e+00, %4947
  %4950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4948, float %4949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4951 = extractvalue %dx.types.ResRet.f32 %4950, 0
  %4952 = fcmp fast ugt float %4951, 0.000000e+00
  br i1 %4952, label %4953, label %5256

; <label>:4953                                    ; preds = %4915
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 2
  %4956 = fmul fast float %4955, %4951
  %4957 = extractvalue %dx.types.CBufRet.f32 %4954, 3
  %4958 = fadd fast float %4957, %4956
  %4959 = extractvalue %dx.types.CBufRet.f32 %4920, 2
  %4960 = fadd fast float %4958, %4927
  %4961 = fmul fast float %4933, %4921
  %4962 = call float @dx.op.tertiary.f32(i32 46, float %4936, float %4924, float %4961)  ; FMad(a,b,c)
  %4963 = call float @dx.op.tertiary.f32(i32 46, float %4960, float %4959, float %4962)  ; FMad(a,b,c)
  %4964 = fsub fast float %4963, %4927
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 2
  %4967 = fsub fast float %4964, %4966
  %4968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4948, float %4949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4969 = extractvalue %dx.types.ResRet.f32 %4968, 0
  %4970 = extractvalue %dx.types.ResRet.f32 %4968, 1
  %4971 = extractvalue %dx.types.ResRet.f32 %4968, 2
  %4972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4948, float %4949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4973 = extractvalue %dx.types.ResRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.ResRet.f32 %4972, 1
  %4975 = extractvalue %dx.types.ResRet.f32 %4972, 2
  %4976 = fadd fast float %4973, %4969
  %4977 = fmul fast float %4976, 0x3F847AE140000000
  %4978 = fadd fast float %4974, %4970
  %4979 = fmul fast float %4978, 0x3F847AE140000000
  %4980 = fadd fast float %4975, %4971
  %4981 = fmul fast float %4980, 0x3F847AE140000000
  br label %5256

; <label>:4982                                    ; preds = %4835
  %4983 = and i32 %208, 1
  %4984 = icmp eq i32 %4983, 0
  br i1 %4984, label %5256, label %4985

; <label>:4985                                    ; preds = %4982
  %4986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4987 = extractvalue %dx.types.CBufRet.f32 %4986, 0
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.CBufRet.f32 %4986, 1
  %4993 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %4994 = extractvalue %dx.types.CBufRet.f32 %4990, 1
  %4995 = extractvalue %dx.types.CBufRet.f32 %4986, 3
  %4996 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4997 = extractvalue %dx.types.CBufRet.f32 %4990, 3
  %4998 = fadd fast float %4995, %4901
  %4999 = fadd fast float %4996, %4902
  %5000 = fadd fast float %4997, %4903
  %5001 = fmul fast float %4998, %4987
  %5002 = call float @dx.op.tertiary.f32(i32 46, float %4999, float %4989, float %5001)  ; FMad(a,b,c)
  %5003 = call float @dx.op.tertiary.f32(i32 46, float %5000, float %4991, float %5002)  ; FMad(a,b,c)
  %5004 = fmul fast float %4998, %4992
  %5005 = call float @dx.op.tertiary.f32(i32 46, float %4999, float %4993, float %5004)  ; FMad(a,b,c)
  %5006 = call float @dx.op.tertiary.f32(i32 46, float %5000, float %4994, float %5005)  ; FMad(a,b,c)
  %5007 = fsub fast float %5003, %4995
  %5008 = fsub fast float %5006, %4996
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 0
  %5011 = extractvalue %dx.types.CBufRet.f32 %5009, 1
  %5012 = extractvalue %dx.types.CBufRet.f32 %5009, 2
  %5013 = extractvalue %dx.types.CBufRet.f32 %5009, 3
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 3
  %5016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.i32 %5016, 0
  %5018 = extractvalue %dx.types.CBufRet.i32 %5016, 1
  %5019 = udiv i32 %5018, %5017
  %5020 = fsub fast float %5007, %5010
  %5021 = fsub fast float %5008, %5011
  %5022 = call float @dx.op.binary.f32(i32 35, float %5020, float 0.000000e+00)  ; FMax(a,b)
  %5023 = call float @dx.op.binary.f32(i32 35, float %5021, float 0.000000e+00)  ; FMax(a,b)
  %5024 = call float @dx.op.binary.f32(i32 36, float %5022, float %5012)  ; FMin(a,b)
  %5025 = call float @dx.op.binary.f32(i32 36, float %5023, float %5013)  ; FMin(a,b)
  %5026 = add i32 %5017, -1
  %5027 = add i32 %5019, -1
  %5028 = fmul fast float %5024, %5015
  %5029 = fmul fast float %5025, %5015
  %5030 = fptoui float %5028 to i32
  %5031 = fptoui float %5029 to i32
  %5032 = call i32 @dx.op.binary.i32(i32 40, i32 %5030, i32 %5026)  ; UMin(a,b)
  %5033 = call i32 @dx.op.binary.i32(i32 40, i32 %5031, i32 %5027)  ; UMin(a,b)
  %5034 = mul i32 %5033, %5017
  %5035 = add i32 %5034, %5032
  %5036 = shl i32 %5035, 2
  %5037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5036, i32 undef)  ; BufferLoad(srv,index,wot)
  %5038 = extractvalue %dx.types.ResRet.i32 %5037, 0
  %5039 = icmp eq i32 %5038, -1
  br i1 %5039, label %5256, label %5040

; <label>:5040                                    ; preds = %4985
  %5041 = mul i32 %5038, 148
  %5042 = add i32 %5041, 4
  %5043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5042, i32 undef)  ; BufferLoad(srv,index,wot)
  %5044 = extractvalue %dx.types.ResRet.f32 %5043, 0
  %5045 = add i32 %5041, 8
  %5046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5045, i32 undef)  ; BufferLoad(srv,index,wot)
  %5047 = extractvalue %dx.types.ResRet.f32 %5046, 0
  %5048 = add i32 %5041, 36
  %5049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5048, i32 undef)  ; BufferLoad(srv,index,wot)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = add i32 %5041, 60
  %5052 = add i32 %5041, 92
  %5053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5052, i32 undef)  ; BufferLoad(srv,index,wot)
  %5054 = extractvalue %dx.types.ResRet.i32 %5053, 0
  %5055 = add i32 %5041, 116
  %5056 = fsub fast float %5007, %5044
  %5057 = fsub fast float %5008, %5047
  %5058 = fmul fast float %5015, %5056
  %5059 = fmul fast float %5015, %5057
  %5060 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5061 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5062 = fsub fast float 1.000000e+00, %5061
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 2
  %5065 = call float @dx.op.unary.f32(i32 83, float %5060)  ; DerivCoarseX(value)
  %5066 = call float @dx.op.unary.f32(i32 83, float %5062)  ; DerivCoarseX(value)
  %5067 = call float @dx.op.unary.f32(i32 84, float %5060)  ; DerivCoarseY(value)
  %5068 = call float @dx.op.unary.f32(i32 84, float %5062)  ; DerivCoarseY(value)
  %5069 = fmul fast float %5065, %5064
  %5070 = fmul fast float %5066, %5064
  %5071 = fmul fast float %5067, %5064
  %5072 = fmul fast float %5068, %5064
  %5073 = call float @dx.op.dot2.f32(i32 54, float %5071, float %5072, float %5071, float %5072)  ; Dot2(ax,ay,bx,by)
  %5074 = call float @dx.op.dot2.f32(i32 54, float %5069, float %5070, float %5069, float %5070)  ; Dot2(ax,ay,bx,by)
  %5075 = call float @dx.op.binary.f32(i32 35, float %5074, float %5073)  ; FMax(a,b)
  %5076 = call float @dx.op.unary.f32(i32 23, float %5075)  ; Log(value)
  %5077 = fmul fast float %5076, 5.000000e-01
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 1
  %5080 = fadd fast float %5079, %5077
  %5081 = call float @dx.op.binary.f32(i32 35, float %5080, float 0.000000e+00)  ; FMax(a,b)
  %5082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.f32 %5082, 3
  %5084 = fadd fast float %5083, %5081
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 3
  %5087 = fadd fast float %5084, %5086
  %5088 = add i32 %5054, 0
  %5089 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5088, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5090 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5089, i32 0)  ; GetDimensions(handle,mipLevel)
  %5091 = extractvalue %dx.types.Dimensions %5090, 0
  %5092 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5091)  ; FirstbitLo(value)
  %5093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.i32 %5093, 1
  %5095 = sub nsw i32 %5094, %5092
  %5096 = sitofp i32 %5095 to float
  %5097 = fsub fast float %5087, %5096
  %5098 = call float @dx.op.binary.f32(i32 35, float %5097, float 0.000000e+00)  ; FMax(a,b)
  %5099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5089, %dx.types.Handle %52, float %5060, float %5062, float %5050, float undef, i32 0, i32 0, i32 undef, float %5098)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = fcmp ule float %5100, 0x3FE0101020000000
  %5102 = extractvalue %dx.types.CBufRet.i32 %5093, 0
  %5103 = and i32 %5102, 128
  %5104 = icmp ne i32 %5103, 0
  %5105 = and i1 %5101, %5104
  br i1 %5105, label %5256, label %5106

; <label>:5106                                    ; preds = %5040
  %5107 = add i32 %5041, 20
  %5108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5107, i32 undef)  ; BufferLoad(srv,index,wot)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  %5110 = add i32 %5041, 24
  %5111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5110, i32 undef)  ; BufferLoad(srv,index,wot)
  %5112 = extractvalue %dx.types.ResRet.f32 %5111, 0
  %5113 = add i32 %5041, 40
  %5114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5113, i32 undef)  ; BufferLoad(srv,index,wot)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = add i32 %5041, 96
  %5117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5118 = extractvalue %dx.types.ResRet.i32 %5117, 0
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5121 = fmul fast float %5120, %5060
  %5122 = fmul fast float %5120, %5062
  %5123 = extractvalue %dx.types.CBufRet.f32 %5119, 3
  %5124 = fadd fast float %5121, %5123
  %5125 = fadd fast float %5122, %5123
  %5126 = add i32 %5118, 0
  %5127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5126, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5128 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5127, i32 0)  ; GetDimensions(handle,mipLevel)
  %5129 = extractvalue %dx.types.Dimensions %5128, 0
  %5130 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5129)  ; FirstbitLo(value)
  %5131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.i32 %5131, 1
  %5133 = sub nsw i32 %5132, %5130
  %5134 = sitofp i32 %5133 to float
  %5135 = fsub fast float %5084, %5134
  %5136 = call float @dx.op.binary.f32(i32 35, float %5135, float 0.000000e+00)  ; FMax(a,b)
  %5137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5127, %dx.types.Handle %52, float %5124, float %5125, float %5115, float undef, i32 0, i32 0, i32 undef, float %5136)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5138 = extractvalue %dx.types.ResRet.f32 %5137, 0
  %5139 = fmul fast float %5138, %5109
  %5140 = fadd fast float %5139, %5112
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5144 = extractvalue %dx.types.CBufRet.f32 %5141, 2
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5148 = extractvalue %dx.types.CBufRet.f32 %5147, 3
  %5149 = extractvalue %dx.types.CBufRet.f32 %5141, 3
  %5150 = fadd fast float %5146, %5007
  %5151 = fadd fast float %5148, %5008
  %5152 = fadd fast float %5140, %5149
  %5153 = fmul fast float %5150, %5142
  %5154 = call float @dx.op.tertiary.f32(i32 46, float %5151, float %5143, float %5153)  ; FMad(a,b,c)
  %5155 = call float @dx.op.tertiary.f32(i32 46, float %5152, float %5144, float %5154)  ; FMad(a,b,c)
  %5156 = fsub fast float %5155, %5149
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 2
  %5159 = fsub fast float %5156, %5158
  %5160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.i32 %5160, 0
  %5162 = call i32 @dx.op.binary.i32(i32 40, i32 %5038, i32 %5161)  ; UMin(a,b)
  %5163 = mul i32 %5162, 36
  %5164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5163, i32 undef)  ; BufferLoad(srv,index,wot)
  %5165 = extractvalue %dx.types.ResRet.i32 %5164, 0
  %5166 = add i32 %5163, 4
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = fmul fast float %5168, %5060
  %5170 = fmul fast float %5168, %5062
  %5171 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5172 = fadd fast float %5169, %5171
  %5173 = fadd fast float %5170, %5171
  %5174 = icmp eq i32 %5165, 0
  br i1 %5174, label %5243, label %5175

; <label>:5175                                    ; preds = %5106
  br label %5176

; <label>:5176                                    ; preds = %5233, %5175
  %5177 = phi float [ %5234, %5233 ], [ 0.000000e+00, %5175 ]
  %5178 = phi float [ %5235, %5233 ], [ 0.000000e+00, %5175 ]
  %5179 = phi float [ %5236, %5233 ], [ 0.000000e+00, %5175 ]
  %5180 = phi float [ %5237, %5233 ], [ 0.000000e+00, %5175 ]
  %5181 = phi float [ %5238, %5233 ], [ 0.000000e+00, %5175 ]
  %5182 = phi float [ %5239, %5233 ], [ 0.000000e+00, %5175 ]
  %5183 = phi i32 [ %5240, %5233 ], [ 0, %5175 ]
  %5184 = shl i32 %5183, 2
  %5185 = add i32 %5051, %5184
  %5186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5185, i32 undef)  ; BufferLoad(srv,index,wot)
  %5187 = extractvalue %dx.types.ResRet.f32 %5186, 0
  %5188 = add i32 %5055, %5184
  %5189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5188, i32 undef)  ; BufferLoad(srv,index,wot)
  %5190 = extractvalue %dx.types.ResRet.i32 %5189, 0
  %5191 = add i32 %5190, 0
  %5192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5191, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5193 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5192, i32 0)  ; GetDimensions(handle,mipLevel)
  %5194 = extractvalue %dx.types.Dimensions %5193, 0
  %5195 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5194)  ; FirstbitLo(value)
  %5196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.i32 %5196, 1
  %5198 = sub nsw i32 %5197, %5195
  %5199 = sitofp i32 %5198 to float
  %5200 = fsub fast float %5084, %5199
  %5201 = call float @dx.op.binary.f32(i32 35, float %5200, float 0.000000e+00)  ; FMax(a,b)
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5192, %dx.types.Handle %52, float %5172, float %5173, float %5187, float undef, i32 0, i32 0, i32 undef, float %5201)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = fcmp fast ogt float %5203, 0.000000e+00
  br i1 %5204, label %5205, label %5233

; <label>:5205                                    ; preds = %5176
  %5206 = add i32 %5166, %5184
  %5207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5206, i32 undef)  ; BufferLoad(srv,index,wot)
  %5208 = extractvalue %dx.types.ResRet.i32 %5207, 0
  %5209 = and i32 %5208, 32767
  %5210 = mul nuw nsw i32 %5209, 928
  %5211 = add nuw nsw i32 %5210, 48
  %5212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5211, i32 undef)  ; BufferLoad(srv,index,wot)
  %5213 = extractvalue %dx.types.ResRet.f32 %5212, 0
  %5214 = extractvalue %dx.types.ResRet.f32 %5212, 1
  %5215 = extractvalue %dx.types.ResRet.f32 %5212, 2
  %5216 = add nuw nsw i32 %5210, 60
  %5217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5216, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = extractvalue %dx.types.ResRet.f32 %5217, 1
  %5220 = extractvalue %dx.types.ResRet.f32 %5217, 2
  %5221 = fmul fast float %5213, %5203
  %5222 = fmul fast float %5214, %5203
  %5223 = fmul fast float %5215, %5203
  %5224 = fadd fast float %5221, %5177
  %5225 = fadd fast float %5222, %5178
  %5226 = fadd fast float %5223, %5179
  %5227 = fmul fast float %5218, %5203
  %5228 = fmul fast float %5219, %5203
  %5229 = fmul fast float %5220, %5203
  %5230 = fadd fast float %5227, %5180
  %5231 = fadd fast float %5228, %5181
  %5232 = fadd fast float %5229, %5182
  br label %5233

; <label>:5233                                    ; preds = %5205, %5176
  %5234 = phi float [ %5224, %5205 ], [ %5177, %5176 ]
  %5235 = phi float [ %5225, %5205 ], [ %5178, %5176 ]
  %5236 = phi float [ %5226, %5205 ], [ %5179, %5176 ]
  %5237 = phi float [ %5230, %5205 ], [ %5180, %5176 ]
  %5238 = phi float [ %5231, %5205 ], [ %5181, %5176 ]
  %5239 = phi float [ %5232, %5205 ], [ %5182, %5176 ]
  %5240 = add nuw i32 %5183, 1
  %5241 = icmp eq i32 %5240, %5165
  br i1 %5241, label %5242, label %5176

; <label>:5242                                    ; preds = %5233
  br label %5243

; <label>:5243                                    ; preds = %5242, %5106
  %5244 = phi float [ 0.000000e+00, %5106 ], [ %5234, %5242 ]
  %5245 = phi float [ 0.000000e+00, %5106 ], [ %5235, %5242 ]
  %5246 = phi float [ 0.000000e+00, %5106 ], [ %5236, %5242 ]
  %5247 = phi float [ 0.000000e+00, %5106 ], [ %5237, %5242 ]
  %5248 = phi float [ 0.000000e+00, %5106 ], [ %5238, %5242 ]
  %5249 = phi float [ 0.000000e+00, %5106 ], [ %5239, %5242 ]
  %5250 = fadd fast float %5247, %5244
  %5251 = fmul fast float %5250, 0x3F847AE140000000
  %5252 = fadd fast float %5248, %5245
  %5253 = fmul fast float %5252, 0x3F847AE140000000
  %5254 = fadd fast float %5249, %5246
  %5255 = fmul fast float %5254, 0x3F847AE140000000
  br label %5256

; <label>:5256                                    ; preds = %5243, %5040, %4985, %4982, %4953, %4915
  %5257 = phi float [ %4977, %4953 ], [ 0.000000e+00, %4915 ], [ %5251, %5243 ], [ 0.000000e+00, %4985 ], [ 0.000000e+00, %5040 ], [ 0.000000e+00, %4982 ]
  %5258 = phi float [ %4979, %4953 ], [ 0.000000e+00, %4915 ], [ %5253, %5243 ], [ 0.000000e+00, %4985 ], [ 0.000000e+00, %5040 ], [ 0.000000e+00, %4982 ]
  %5259 = phi float [ %4981, %4953 ], [ 0.000000e+00, %4915 ], [ %5255, %5243 ], [ 0.000000e+00, %4985 ], [ 0.000000e+00, %5040 ], [ 0.000000e+00, %4982 ]
  %5260 = phi float [ %4967, %4953 ], [ -1.310720e+05, %4915 ], [ %5159, %5243 ], [ -1.310720e+05, %4985 ], [ -1.310720e+05, %5040 ], [ -1.310720e+05, %4982 ]
  %5261 = phi i1 [ true, %4953 ], [ false, %4915 ], [ true, %5243 ], [ false, %4985 ], [ false, %5040 ], [ false, %4982 ]
  %5262 = and i32 %208, 3
  %5263 = icmp eq i32 %5262, 1
  %5264 = select i1 %5263, float 1.000000e+00, float 0.000000e+00
  %5265 = fsub fast float %5260, %172
  %5266 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5267 = select i1 %5261, float %5266, float 1.000000e+00
  %5268 = fmul fast float %5267, %5264
  %5269 = icmp eq i32 %5262, 3
  %5270 = select i1 %5269, float 1.000000e+00, float %5268
  %5271 = call float @dx.op.binary.f32(i32 35, float %4854, float %5270)  ; FMax(a,b)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fcmp fast une float %5272, 0.000000e+00
  %5274 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = call float @dx.op.unary.f32(i32 25, float %5274)  ; Rsqrt(value)
  br i1 %5273, label %5283, label %5276

; <label>:5276                                    ; preds = %5256
  %5277 = fmul fast float %5275, %170
  %5278 = fmul fast float %5275, %171
  %5279 = fmul fast float %5275, %172
  %5280 = fsub fast float -0.000000e+00, %5277
  %5281 = fsub fast float -0.000000e+00, %5278
  %5282 = fsub fast float -0.000000e+00, %5279
  br label %5451

; <label>:5283                                    ; preds = %5256
  %5284 = fmul fast float %170, %5275
  %5285 = fsub fast float -0.000000e+00, %5284
  %5286 = fmul fast float %171, %5275
  %5287 = fsub fast float -0.000000e+00, %5286
  %5288 = fmul fast float %172, %5275
  %5289 = fsub fast float -0.000000e+00, %5288
  %5290 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5287, float %5289, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = fmul fast float %5272, 2.500000e+00
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fmul fast float %5272, 0x4013FFFFE0000000
  %5294 = fadd fast float %5293, 0xBFFFFFFFE0000000
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = fmul fast float %5272, 0x4004000020000000
  %5297 = fadd fast float %5296, 0xBFF8000040000000
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5300 = fmul fast float %4858, 1.000000e+01
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = fmul fast float %5301, 2.000000e+00
  %5303 = fsub fast float 3.000000e+00, %5302
  %5304 = fmul fast float %5301, %5301
  %5305 = fmul fast float %5304, %5303
  %5306 = fsub fast float 1.000000e+00, %5305
  %5307 = fsub fast float 0x3FE3333340000000, %4879
  %5308 = fmul fast float %5307, 0x400AAAAAA0000000
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = fmul fast float %5306, %5309
  %5311 = fmul fast float %4894, 0x3FEA2B8620000000
  %5312 = fmul fast float %4895, 0x3FEA2B8620000000
  %5313 = fmul fast float %4896, 0x3FEA2B8620000000
  %5314 = fadd fast float %5311, 0x3FC81DFBA0000000
  %5315 = fmul fast float %5314, %4894
  %5316 = fadd fast float %5315, 0x3F910E6020000000
  %5317 = fadd fast float %5312, 0x3FC81DFBA0000000
  %5318 = fmul fast float %5317, %4895
  %5319 = fadd fast float %5318, 0x3F910E6020000000
  %5320 = fadd fast float %5313, 0x3FC81DFBA0000000
  %5321 = fmul fast float %5320, %4896
  %5322 = fadd fast float %5321, 0x3F910E6020000000
  %5323 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5324 = call float @dx.op.unary.f32(i32 7, float %5319)  ; Saturate(value)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5326 = fsub fast float %5323, %4894
  %5327 = fsub fast float %5324, %4895
  %5328 = fsub fast float %5325, %4896
  %5329 = fmul fast float %5326, %5299
  %5330 = fmul fast float %5329, %5310
  %5331 = fmul fast float %5327, %5299
  %5332 = fmul fast float %5331, %5310
  %5333 = fmul fast float %5328, %5299
  %5334 = fmul fast float %5333, %5310
  %5335 = fadd fast float %5330, %4894
  %5336 = fadd fast float %5332, %4895
  %5337 = fadd fast float %5334, %4896
  %5338 = fmul fast float %4851, %4851
  %5339 = fmul fast float %5338, %5338
  %5340 = fadd fast float %5295, 1.000000e+00
  %5341 = fsub fast float %5340, %5310
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5345 = fsub fast float 1.000000e+00, %5339
  %5346 = call float @dx.op.binary.f32(i32 36, float %5342, float %5345)  ; FMin(a,b)
  %5347 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5348 = call float @dx.op.binary.f32(i32 35, float %5346, float %5347)  ; FMax(a,b)
  %5349 = fadd fast float %5344, 0xBFE4CCCCC0000000
  %5350 = fmul fast float %5349, 0x4006DB6DA0000000
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = fmul fast float %5351, 2.000000e+00
  %5353 = fsub fast float 3.000000e+00, %5352
  %5354 = bitcast float %4876 to i32
  %5355 = ashr i32 %5354, 1
  %5356 = add nsw i32 %5355, 532487669
  %5357 = bitcast i32 %5356 to float
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, 2.000000e+00
  %5363 = bitcast float %4877 to i32
  %5364 = ashr i32 %5363, 1
  %5365 = add nsw i32 %5364, 532487669
  %5366 = bitcast i32 %5365 to float
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = bitcast float %5367 to i32
  %5369 = sub nsw i32 2129859010, %5368
  %5370 = bitcast i32 %5369 to float
  %5371 = fmul fast float %5370, 2.000000e+00
  %5372 = bitcast float %4878 to i32
  %5373 = ashr i32 %5372, 1
  %5374 = add nsw i32 %5373, 532487669
  %5375 = bitcast i32 %5374 to float
  %5376 = fsub fast float 1.000000e+00, %5375
  %5377 = bitcast float %5376 to i32
  %5378 = sub nsw i32 2129859010, %5377
  %5379 = bitcast i32 %5378 to float
  %5380 = fmul fast float %5379, 2.000000e+00
  %5381 = fsub fast float 0x4002A9FBE0000000, %5362
  %5382 = fadd fast float %5362, 0x3FD54FDF00000000
  %5383 = bitcast float %5382 to i32
  %5384 = sub nsw i32 2129859010, %5383
  %5385 = bitcast i32 %5384 to float
  %5386 = fmul fast float %5385, %5381
  %5387 = fmul fast float %5386, %5386
  %5388 = fsub fast float 0x4002A9FBE0000000, %5371
  %5389 = fadd fast float %5371, 0x3FD54FDF00000000
  %5390 = bitcast float %5389 to i32
  %5391 = sub nsw i32 2129859010, %5390
  %5392 = bitcast i32 %5391 to float
  %5393 = fmul fast float %5392, %5388
  %5394 = fmul fast float %5393, %5393
  %5395 = fsub fast float 0x4002A9FBE0000000, %5380
  %5396 = fadd fast float %5380, 0x3FD54FDF00000000
  %5397 = bitcast float %5396 to i32
  %5398 = sub nsw i32 2129859010, %5397
  %5399 = bitcast i32 %5398 to float
  %5400 = fmul fast float %5399, %5395
  %5401 = fmul fast float %5400, %5400
  %5402 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5387)  ; FMax(a,b)
  %5403 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5394)  ; FMax(a,b)
  %5404 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5401)  ; FMax(a,b)
  %5405 = fsub fast float 1.000000e+00, %5290
  %5406 = fadd fast float %5405, %5306
  %5407 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5408 = fsub fast float 1.000000e+00, %5270
  %5409 = fmul fast float %5348, %5408
  %5410 = fmul fast float %5351, %5351
  %5411 = fmul fast float %5410, %5409
  %5412 = fmul fast float %5411, %5353
  %5413 = fmul fast float %5408, 0xBFE99999A0000000
  %5414 = fmul fast float %5413, %5299
  %5415 = fmul fast float %5414, %5310
  %5416 = fadd fast float %5415, 1.000000e+00
  %5417 = fadd fast float %4879, -1.000000e+00
  %5418 = fmul fast float %5416, %5417
  %5419 = fadd fast float %5418, 1.000000e+00
  %5420 = fsub fast float %5402, %4876
  %5421 = fsub fast float %5403, %4877
  %5422 = fsub fast float %5404, %4878
  %5423 = fmul fast float %5412, %5420
  %5424 = fmul fast float %5412, %5421
  %5425 = fmul fast float %5412, %5422
  %5426 = fadd fast float %5423, %4876
  %5427 = fadd fast float %5424, %4877
  %5428 = fadd fast float %5425, %4878
  %5429 = fsub fast float %120, %4836
  %5430 = fsub fast float %122, %4837
  %5431 = fsub fast float %124, %4838
  %5432 = fmul fast float %5412, %5429
  %5433 = fmul fast float %5412, %5430
  %5434 = fmul fast float %5412, %5431
  %5435 = fadd fast float %5432, %4836
  %5436 = fadd fast float %5433, %4837
  %5437 = fadd fast float %5434, %4838
  %5438 = fmul fast float %5412, %5407
  %5439 = call float @dx.op.unary.f32(i32 7, float %5419)  ; Saturate(value)
  %5440 = fsub fast float 1.000000e+00, %5439
  %5441 = fmul fast float %5438, %5440
  %5442 = fadd fast float %5441, %5439
  %5443 = fsub fast float 1.000000e+00, %4851
  %5444 = fmul fast float %5412, %5443
  %5445 = fadd fast float %5444, %4851
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float %5435, float %5436, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.unary.f32(i32 25, float %5446)  ; Rsqrt(value)
  %5448 = fmul fast float %5435, %5447
  %5449 = fmul fast float %5436, %5447
  %5450 = fmul fast float %5437, %5447
  br label %5451

; <label>:5451                                    ; preds = %5283, %5276
  %5452 = phi float [ %5282, %5276 ], [ %5289, %5283 ]
  %5453 = phi float [ %5281, %5276 ], [ %5287, %5283 ]
  %5454 = phi float [ %5280, %5276 ], [ %5285, %5283 ]
  %5455 = phi float [ %5279, %5276 ], [ %5288, %5283 ]
  %5456 = phi float [ %5278, %5276 ], [ %5286, %5283 ]
  %5457 = phi float [ %5277, %5276 ], [ %5284, %5283 ]
  %5458 = phi float [ %4894, %5276 ], [ %5335, %5283 ]
  %5459 = phi float [ %4895, %5276 ], [ %5336, %5283 ]
  %5460 = phi float [ %4896, %5276 ], [ %5337, %5283 ]
  %5461 = phi float [ %4836, %5276 ], [ %5448, %5283 ]
  %5462 = phi float [ %4837, %5276 ], [ %5449, %5283 ]
  %5463 = phi float [ %4838, %5276 ], [ %5450, %5283 ]
  %5464 = phi float [ %4876, %5276 ], [ %5426, %5283 ]
  %5465 = phi float [ %4877, %5276 ], [ %5427, %5283 ]
  %5466 = phi float [ %4878, %5276 ], [ %5428, %5283 ]
  %5467 = phi float [ %4879, %5276 ], [ %5442, %5283 ]
  %5468 = phi float [ %4851, %5276 ], [ %5445, %5283 ]
  %5469 = fsub fast float -0.000000e+00, %172
  %5470 = select i1 %232, float 0.000000e+00, float %5466
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %5463, float %5454, float %5453, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.unary.f32(i32 7, float %5471)  ; Saturate(value)
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5457, float %5456, float %5455, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = fmul fast float %5473, 2.000000e+00
  %5475 = fmul fast float %5474, %5461
  %5476 = fmul fast float %5474, %5462
  %5477 = fmul fast float %5474, %5463
  %5478 = fsub fast float %5457, %5475
  %5479 = fsub fast float %5456, %5476
  %5480 = fsub fast float %5455, %5477
  %5481 = call float @dx.op.binary.f32(i32 36, float %5468, float 1.000000e+00)  ; FMin(a,b)
  %5482 = fsub fast float 1.000000e+00, %5481
  %5483 = bitcast float %5482 to i32
  %5484 = ashr i32 %5483, 1
  %5485 = add nsw i32 %5484, 532487669
  %5486 = bitcast i32 %5485 to float
  %5487 = fsub fast float 1.000000e+00, %5467
  %5488 = call float @dx.op.binary.f32(i32 35, float %5487, float 0x3F847AE140000000)  ; FMax(a,b)
  %5489 = fmul fast float %5488, %5488
  %5490 = fmul fast float %5489, %5489
  %5491 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5486, float %5490, float %5491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 0
  %5494 = fsub fast float 1.000000e+00, %5468
  %5495 = bitcast float %5494 to i32
  %5496 = sub nsw i32 2129859010, %5495
  %5497 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = fmul fast float %5497, 0x3FD20DD760000000
  %5499 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5500 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fcmp fast oeq float %5500, 0.000000e+00
  %5502 = fcmp fast oeq float %5499, 0.000000e+00
  %5503 = or i1 %5502, %5501
  br i1 %5503, label %5533, label %5504

; <label>:5504                                    ; preds = %5451
  %5505 = fsub fast float -0.000000e+00, %82
  %5506 = fsub fast float -0.000000e+00, %80
  %5507 = call float @dx.op.unary.f32(i32 24, float %5500)  ; Sqrt(value)
  %5508 = fdiv fast float %5507, %5499
  %5509 = fcmp fast ogt float %5508, 0x3FFB6F8900000000
  %5510 = select i1 %5509, float 0x3FFB6F8900000000, float %5508
  %5511 = fmul fast float %5510, 0x3FE8A23460000000
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = call float @dx.op.binary.f32(i32 35, float %5510, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5514 = fmul fast float %5512, %5499
  %5515 = fmul fast float %5513, 0x3FF279A740000000
  %5516 = fadd fast float %5515, -1.000000e+00
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5506, float %81, float %5505, float %5506, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = call float @dx.op.unary.f32(i32 25, float %5517)  ; Rsqrt(value)
  %5519 = fmul fast float %5518, %5505
  %5520 = fmul fast float %5518, %5506
  %5521 = fmul fast float %5518, %81
  %5522 = fmul fast float %5516, %5516
  %5523 = fsub fast float 1.000000e+00, %5522
  %5524 = fmul fast float %5513, 0x40005F8BE0000000
  %5525 = fsub fast float 0x400C5BF8A0000000, %5524
  %5526 = fdiv fast float %5514, %5525
  %5527 = fmul fast float %5526, 0x3FEE31C3C0000000
  %5528 = fmul fast float %5527, %5523
  %5529 = fmul fast float %5513, 0x3FDACB7480000000
  %5530 = fadd fast float %5529, 0xBFD7347680000000
  %5531 = fmul fast float %5530, %5526
  %5532 = fmul fast float %5531, %5523
  br label %5533

; <label>:5533                                    ; preds = %5504, %5451
  %5534 = phi float [ %5519, %5504 ], [ 0.000000e+00, %5451 ]
  %5535 = phi float [ %5520, %5504 ], [ 0.000000e+00, %5451 ]
  %5536 = phi float [ %5521, %5504 ], [ 0.000000e+00, %5451 ]
  %5537 = phi float [ %5528, %5504 ], [ 0.000000e+00, %5451 ]
  %5538 = phi float [ %5532, %5504 ], [ 0.000000e+00, %5451 ]
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5535, float %5536, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = fmul fast float %5539, %5539
  %5541 = fmul fast float %5540, 0x3FEE471020000000
  %5542 = fadd fast float %5541, 0xBFD42F6020000000
  %5543 = fmul fast float %5499, 0x3FD20DD760000000
  %5544 = fmul fast float %5542, %5538
  %5545 = fmul fast float %5537, 0x3FDF454380000000
  %5546 = fmul fast float %5545, %5539
  %5547 = fadd fast float %5546, %5543
  %5548 = fadd fast float %5547, %5544
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5535, float %5536, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = fmul fast float %5549, 0x3FDF454380000000
  %5551 = fmul fast float %5549, %5549
  %5552 = fmul fast float %5551, 0x3FEE471020000000
  %5553 = fadd fast float %5552, 0xBFD42F6020000000
  %5554 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5537, float %5538, float 0x3FD20DD760000000, float %5550, float %5553)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5556 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = fcmp fast oeq float %5556, 0.000000e+00
  %5558 = fcmp fast oeq float %5555, 0.000000e+00
  %5559 = or i1 %5558, %5557
  br i1 %5559, label %5589, label %5560

; <label>:5560                                    ; preds = %5533
  %5561 = fsub fast float -0.000000e+00, %78
  %5562 = fsub fast float -0.000000e+00, %76
  %5563 = call float @dx.op.unary.f32(i32 24, float %5556)  ; Sqrt(value)
  %5564 = fdiv fast float %5563, %5555
  %5565 = fcmp fast ogt float %5564, 0x3FFB6F8900000000
  %5566 = select i1 %5565, float 0x3FFB6F8900000000, float %5564
  %5567 = fmul fast float %5566, 0x3FE8A23460000000
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = call float @dx.op.binary.f32(i32 35, float %5566, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5570 = fmul fast float %5568, %5555
  %5571 = fmul fast float %5569, 0x3FF279A740000000
  %5572 = fadd fast float %5571, -1.000000e+00
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5561, float %5562, float %77, float %5561, float %5562, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = call float @dx.op.unary.f32(i32 25, float %5573)  ; Rsqrt(value)
  %5575 = fmul fast float %5574, %5561
  %5576 = fmul fast float %5574, %5562
  %5577 = fmul fast float %5574, %77
  %5578 = fmul fast float %5572, %5572
  %5579 = fsub fast float 1.000000e+00, %5578
  %5580 = fmul fast float %5569, 0x40005F8BE0000000
  %5581 = fsub fast float 0x400C5BF8A0000000, %5580
  %5582 = fdiv fast float %5570, %5581
  %5583 = fmul fast float %5582, 0x3FEE31C3C0000000
  %5584 = fmul fast float %5583, %5579
  %5585 = fmul fast float %5569, 0x3FDACB7480000000
  %5586 = fadd fast float %5585, 0xBFD7347680000000
  %5587 = fmul fast float %5586, %5582
  %5588 = fmul fast float %5587, %5579
  br label %5589

; <label>:5589                                    ; preds = %5560, %5533
  %5590 = phi float [ %5575, %5560 ], [ 0.000000e+00, %5533 ]
  %5591 = phi float [ %5576, %5560 ], [ 0.000000e+00, %5533 ]
  %5592 = phi float [ %5577, %5560 ], [ 0.000000e+00, %5533 ]
  %5593 = phi float [ %5584, %5560 ], [ 0.000000e+00, %5533 ]
  %5594 = phi float [ %5588, %5560 ], [ 0.000000e+00, %5533 ]
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = fmul fast float %5595, %5595
  %5597 = fmul fast float %5596, 0x3FEE471020000000
  %5598 = fadd fast float %5597, 0xBFD42F6020000000
  %5599 = fmul fast float %5555, 0x3FD20DD760000000
  %5600 = fmul fast float %5598, %5594
  %5601 = fmul fast float %5593, 0x3FDF454380000000
  %5602 = fmul fast float %5601, %5595
  %5603 = fadd fast float %5602, %5599
  %5604 = fadd fast float %5603, %5600
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = fmul fast float %5605, 0x3FDF454380000000
  %5607 = fmul fast float %5605, %5605
  %5608 = fmul fast float %5607, 0x3FEE471020000000
  %5609 = fadd fast float %5608, 0xBFD42F6020000000
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5555, float %5593, float %5594, float 0x3FD20DD760000000, float %5606, float %5609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5612 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = fcmp fast oeq float %5612, 0.000000e+00
  %5614 = fcmp fast oeq float %5611, 0.000000e+00
  %5615 = or i1 %5614, %5613
  br i1 %5615, label %5645, label %5616

; <label>:5616                                    ; preds = %5589
  %5617 = fsub fast float -0.000000e+00, %74
  %5618 = fsub fast float -0.000000e+00, %72
  %5619 = call float @dx.op.unary.f32(i32 24, float %5612)  ; Sqrt(value)
  %5620 = fdiv fast float %5619, %5611
  %5621 = fcmp fast ogt float %5620, 0x3FFB6F8900000000
  %5622 = select i1 %5621, float 0x3FFB6F8900000000, float %5620
  %5623 = fmul fast float %5622, 0x3FE8A23460000000
  %5624 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5625 = call float @dx.op.binary.f32(i32 35, float %5622, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5626 = fmul fast float %5624, %5611
  %5627 = fmul fast float %5625, 0x3FF279A740000000
  %5628 = fadd fast float %5627, -1.000000e+00
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %73, float %5617, float %5618, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.unary.f32(i32 25, float %5629)  ; Rsqrt(value)
  %5631 = fmul fast float %5630, %5617
  %5632 = fmul fast float %5630, %5618
  %5633 = fmul fast float %5630, %73
  %5634 = fmul fast float %5628, %5628
  %5635 = fsub fast float 1.000000e+00, %5634
  %5636 = fmul fast float %5625, 0x40005F8BE0000000
  %5637 = fsub fast float 0x400C5BF8A0000000, %5636
  %5638 = fdiv fast float %5626, %5637
  %5639 = fmul fast float %5638, 0x3FEE31C3C0000000
  %5640 = fmul fast float %5639, %5635
  %5641 = fmul fast float %5625, 0x3FDACB7480000000
  %5642 = fadd fast float %5641, 0xBFD7347680000000
  %5643 = fmul fast float %5642, %5638
  %5644 = fmul fast float %5643, %5635
  br label %5645

; <label>:5645                                    ; preds = %5616, %5589
  %5646 = phi float [ %5631, %5616 ], [ 0.000000e+00, %5589 ]
  %5647 = phi float [ %5632, %5616 ], [ 0.000000e+00, %5589 ]
  %5648 = phi float [ %5633, %5616 ], [ 0.000000e+00, %5589 ]
  %5649 = phi float [ %5640, %5616 ], [ 0.000000e+00, %5589 ]
  %5650 = phi float [ %5644, %5616 ], [ 0.000000e+00, %5589 ]
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = fmul fast float %5651, %5651
  %5653 = fmul fast float %5652, 0x3FEE471020000000
  %5654 = fadd fast float %5653, 0xBFD42F6020000000
  %5655 = fmul fast float %5611, 0x3FD20DD760000000
  %5656 = fmul fast float %5654, %5650
  %5657 = fmul fast float %5649, 0x3FDF454380000000
  %5658 = fmul fast float %5657, %5651
  %5659 = fadd fast float %5658, %5655
  %5660 = fadd fast float %5659, %5656
  %5661 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = fmul fast float %5661, 0x3FDF454380000000
  %5663 = fmul fast float %5661, %5661
  %5664 = fmul fast float %5663, 0x3FEE471020000000
  %5665 = fadd fast float %5664, 0xBFD42F6020000000
  %5666 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5649, float %5650, float 0x3FD20DD760000000, float %5662, float %5665)  ; Dot3(ax,ay,az,bx,by,bz)
  %5667 = call float @dx.op.binary.f32(i32 35, float %5548, float 0.000000e+00)  ; FMax(a,b)
  %5668 = call float @dx.op.binary.f32(i32 35, float %5604, float 0.000000e+00)  ; FMax(a,b)
  %5669 = call float @dx.op.binary.f32(i32 35, float %5660, float 0.000000e+00)  ; FMax(a,b)
  %5670 = call float @dx.op.binary.f32(i32 35, float %5554, float 0.000000e+00)  ; FMax(a,b)
  %5671 = call float @dx.op.binary.f32(i32 35, float %5610, float 0.000000e+00)  ; FMax(a,b)
  %5672 = call float @dx.op.binary.f32(i32 35, float %5666, float 0.000000e+00)  ; FMax(a,b)
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = call float @dx.op.binary.f32(i32 36, float %5458, float %5674)  ; FMin(a,b)
  %5676 = fmul fast float %5675, %5482
  %5677 = fsub fast float 1.000000e+00, %5676
  %5678 = bitcast float %5677 to i32
  %5679 = sub nsw i32 2129859010, %5678
  %5680 = bitcast i32 %5679 to float
  %5681 = call float @dx.op.binary.f32(i32 36, float %5459, float %5674)  ; FMin(a,b)
  %5682 = fmul fast float %5681, %5482
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = bitcast float %5683 to i32
  %5685 = sub nsw i32 2129859010, %5684
  %5686 = bitcast i32 %5685 to float
  %5687 = call float @dx.op.binary.f32(i32 36, float %5460, float %5674)  ; FMin(a,b)
  %5688 = fmul fast float %5687, %5482
  %5689 = fsub fast float 1.000000e+00, %5688
  %5690 = bitcast float %5689 to i32
  %5691 = sub nsw i32 2129859010, %5690
  %5692 = bitcast i32 %5691 to float
  %5693 = fmul fast float %5667, %5481
  %5694 = fmul fast float %5693, %5680
  %5695 = fmul fast float %5668, %5481
  %5696 = fmul fast float %5695, %5686
  %5697 = fmul fast float %5669, %5481
  %5698 = fmul fast float %5697, %5692
  %5699 = call float @dx.op.binary.f32(i32 36, float %5464, float %5674)  ; FMin(a,b)
  %5700 = fmul fast float %5699, %5482
  %5701 = fsub fast float 1.000000e+00, %5700
  %5702 = bitcast float %5701 to i32
  %5703 = sub nsw i32 2129859010, %5702
  %5704 = bitcast i32 %5703 to float
  %5705 = call float @dx.op.binary.f32(i32 36, float %5465, float %5674)  ; FMin(a,b)
  %5706 = fmul fast float %5705, %5482
  %5707 = fsub fast float 1.000000e+00, %5706
  %5708 = bitcast float %5707 to i32
  %5709 = sub nsw i32 2129859010, %5708
  %5710 = bitcast i32 %5709 to float
  %5711 = call float @dx.op.binary.f32(i32 36, float %5470, float %5674)  ; FMin(a,b)
  %5712 = fmul fast float %5711, %5482
  %5713 = fsub fast float 1.000000e+00, %5712
  %5714 = bitcast float %5713 to i32
  %5715 = sub nsw i32 2129859010, %5714
  %5716 = bitcast i32 %5715 to float
  %5717 = fmul fast float %5670, %5481
  %5718 = fmul fast float %5717, %5704
  %5719 = fmul fast float %5671, %5481
  %5720 = fmul fast float %5719, %5710
  %5721 = fmul fast float %5672, %5481
  %5722 = fmul fast float %5721, %5716
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5696, float %5698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = select i1 %232, float 0.000000e+00, float %5694
  %5725 = select i1 %232, float %5723, float %5696
  %5726 = select i1 %232, float 0.000000e+00, float %5698
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5720, float %5722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = select i1 %232, float 0.000000e+00, float %5718
  %5729 = select i1 %232, float %5727, float %5720
  %5730 = select i1 %232, float 0.000000e+00, float %5722
  %5731 = fmul fast float %4241, %4241
  %5732 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  %5733 = fmul fast float %5472, 9.843750e-01
  %5734 = fmul fast float %5467, 9.843750e-01
  %5735 = fadd fast float %5733, 7.812500e-03
  %5736 = fadd fast float %5734, 7.812500e-03
  %5737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5735, float %5736, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5738 = extractvalue %dx.types.ResRet.f32 %5737, 0
  %5739 = extractvalue %dx.types.ResRet.f32 %5737, 1
  %5740 = extractvalue %dx.types.ResRet.f32 %5737, 2
  %5741 = extractvalue %dx.types.ResRet.f32 %5737, 3
  %5742 = fsub fast float 1.000000e+00, %5732
  %5743 = fsub fast float %5740, %5738
  %5744 = fsub fast float %5741, %5739
  %5745 = fmul fast float %5743, %5742
  %5746 = fmul fast float %5744, %5742
  %5747 = fadd fast float %5745, %5738
  %5748 = fadd fast float %5746, %5739
  %5749 = fmul fast float %5747, %5464
  %5750 = fmul fast float %5747, %5465
  %5751 = fmul fast float %5747, %5470
  %5752 = fadd fast float %5749, %5748
  %5753 = fadd fast float %5750, %5748
  %5754 = fadd fast float %5751, %5748
  %5755 = fcmp fast ogt float %4852, 0.000000e+00
  br i1 %5755, label %5756, label %5782

; <label>:5756                                    ; preds = %5645
  %5757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4852, float %5472, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5758 = extractvalue %dx.types.ResRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.ResRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.ResRet.f32 %5757, 2
  %5761 = fadd fast float %5758, -5.000000e-01
  %5762 = fadd fast float %5759, -5.000000e-01
  %5763 = fadd fast float %5760, -5.000000e-01
  %5764 = fsub fast float 1.000000e+00, %5464
  %5765 = fsub fast float 1.000000e+00, %5465
  %5766 = fsub fast float 1.000000e+00, %5470
  %5767 = fmul fast float %5464, 4.000000e+00
  %5768 = fmul fast float %5767, %5764
  %5769 = fmul fast float %5768, %5761
  %5770 = fmul fast float %5465, 4.000000e+00
  %5771 = fmul fast float %5770, %5765
  %5772 = fmul fast float %5771, %5762
  %5773 = fmul fast float %5470, 4.000000e+00
  %5774 = fmul fast float %5773, %5766
  %5775 = fmul fast float %5774, %5763
  %5776 = fadd fast float %5769, %5752
  %5777 = fadd fast float %5772, %5753
  %5778 = fadd fast float %5775, %5754
  %5779 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5780 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5781 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  br label %5782

; <label>:5782                                    ; preds = %5756, %5645
  %5783 = phi float [ %5779, %5756 ], [ %5752, %5645 ]
  %5784 = phi float [ %5780, %5756 ], [ %5753, %5645 ]
  %5785 = phi float [ %5781, %5756 ], [ %5754, %5645 ]
  %5786 = call float @dx.op.binary.f32(i32 35, float %5784, float %5785)  ; FMax(a,b)
  %5787 = call float @dx.op.binary.f32(i32 35, float %5783, float %5786)  ; FMax(a,b)
  %5788 = fsub fast float 1.000000e+00, %5787
  %5789 = fmul fast float %5787, %5467
  %5790 = fadd fast float %5789, %5467
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 3
  %5794 = fmul fast float %5790, %5792
  %5795 = fadd fast float %5794, %5793
  %5796 = call float @dx.op.unary.f32(i32 7, float %5795)  ; Saturate(value)
  %5797 = fsub fast float 1.000000e+00, %5493
  %5798 = fadd fast float %5797, %5796
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = fcmp fast olt float %5799, 1.000000e+00
  br i1 %5800, label %5801, label %6277

; <label>:5801                                    ; preds = %5782
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 2
  %5804 = extractvalue %dx.types.CBufRet.f32 %5802, 3
  %5805 = fmul fast float %5803, %111
  %5806 = fmul fast float %5804, %112
  %5807 = fptoui float %5805 to i32
  %5808 = fptoui float %5806 to i32
  %5809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5809, 0
  %5811 = extractvalue %dx.types.CBufRet.f32 %5809, 2
  %5812 = extractvalue %dx.types.CBufRet.f32 %5809, 3
  %5813 = fadd fast float %99, -4.000000e+00
  %5814 = call float @dx.op.binary.f32(i32 35, float %5813, float 0.000000e+00)  ; FMax(a,b)
  %5815 = fadd fast float %5814, %5810
  %5816 = fmul fast float %5815, %5811
  %5817 = call float @dx.op.unary.f32(i32 23, float %5816)  ; Log(value)
  %5818 = fmul fast float %5817, %5812
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 2
  %5821 = fmul fast float %5818, %5820
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.i32 %5823, 1
  %5825 = add i32 %5824, -1
  %5826 = uitofp i32 %5824 to float
  %5827 = fmul fast float %5826, %5822
  %5828 = fptoui float %5827 to i32
  %5829 = call i32 @dx.op.binary.i32(i32 40, i32 %5828, i32 %5825)  ; UMin(a,b)
  %5830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.i32 %5830, 2
  %5832 = extractvalue %dx.types.CBufRet.i32 %5830, 3
  %5833 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5808, i32 %5831, i32 %5807)  ; UMad(a,b,c)
  %5834 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5829, i32 %5832, i32 %5833)  ; UMad(a,b,c)
  %5835 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %5836 = fptoui float %5835 to i32
  %5837 = lshr i32 %5836, 5
  %5838 = call i32 @dx.op.binary.i32(i32 40, i32 %5837, i32 8191)  ; UMin(a,b)
  %5839 = fsub fast float %5260, %172
  %5840 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  %5841 = fcmp fast ogt float %5840, 0.000000e+00
  %5842 = fcmp fast ogt float %5480, 0.000000e+00
  %5843 = and i1 %5842, %5841
  br i1 %5843, label %5844, label %5873

; <label>:5844                                    ; preds = %5801
  %5845 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = call float @dx.op.binary.f32(i32 35, float %5845, float -1.000000e+00)  ; FMax(a,b)
  %5847 = call float @dx.op.binary.f32(i32 36, float %5846, float 1.000000e+00)  ; FMin(a,b)
  %5848 = fmul fast float %5847, %5847
  %5849 = fsub fast float 1.000000e+00, %5848
  %5850 = fmul fast float %5849, 0x3FFC6E2300000000
  %5851 = fsub fast float 1.000000e+00, %5850
  %5852 = fcmp fast ogt float %5851, 0.000000e+00
  %5853 = call float @dx.op.unary.f32(i32 24, float %5851)  ; Sqrt(value)
  %5854 = fsub fast float 1.000000e+00, %5853
  %5855 = call float @dx.op.unary.f32(i32 23, float %5854)  ; Log(value)
  %5856 = fmul fast float %5855, 5.000000e+00
  %5857 = call float @dx.op.unary.f32(i32 21, float %5856)  ; Exp(value)
  %5858 = fmul fast float %5857, 0x3FEF591A60000000
  %5859 = fadd fast float %5858, 0x3F94DCB540000000
  %5860 = select i1 %5852, float %5859, float 1.000000e+00
  %5861 = fcmp fast oge float %5860, 1.000000e+00
  %5862 = fmul fast float %5845, 2.000000e+00
  %5863 = fadd fast float %5862, %5480
  %5864 = select i1 %5861, float %5863, float %5480
  %5865 = fsub fast float %5864, %5480
  %5866 = fmul fast float %5865, %5840
  %5867 = fadd fast float %5866, %5480
  %5868 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5867, float %5478, float %5479, float %5867)  ; Dot3(ax,ay,az,bx,by,bz)
  %5869 = call float @dx.op.unary.f32(i32 25, float %5868)  ; Rsqrt(value)
  %5870 = fmul fast float %5869, %5478
  %5871 = fmul fast float %5869, %5479
  %5872 = fmul fast float %5867, %5869
  br label %5873

; <label>:5873                                    ; preds = %5844, %5801
  %5874 = phi float [ %5870, %5844 ], [ %5478, %5801 ]
  %5875 = phi float [ %5871, %5844 ], [ %5479, %5801 ]
  %5876 = phi float [ %5872, %5844 ], [ %5480, %5801 ]
  %5877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5878 = extractvalue %dx.types.CBufRet.i32 %5877, 2
  %5879 = add nsw i32 %5878, -1
  %5880 = call i32 @dx.op.binary.i32(i32 37, i32 %5879, i32 0)  ; IMax(a,b)
  %5881 = shl i32 %5838, 2
  %5882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5881, i32 undef)  ; BufferLoad(srv,index,wot)
  %5883 = extractvalue %dx.types.ResRet.i32 %5882, 0
  %5884 = lshr i32 %5883, 16
  %5885 = and i32 %5883, 65535
  %5886 = lshr i32 %5883, 21
  %5887 = lshr i32 %5885, 5
  %5888 = call i32 @dx.op.binary.i32(i32 40, i32 %5887, i32 %5880)  ; UMin(a,b)
  %5889 = icmp ugt i32 %5886, %5888
  br i1 %5889, label %6253, label %5890

; <label>:5890                                    ; preds = %5873
  br label %5891

; <label>:5891                                    ; preds = %6245, %5890
  %5892 = phi float [ %6246, %6245 ], [ 0.000000e+00, %5890 ]
  %5893 = phi float [ %6247, %6245 ], [ 0.000000e+00, %5890 ]
  %5894 = phi float [ %6248, %6245 ], [ 0.000000e+00, %5890 ]
  %5895 = phi float [ %6249, %6245 ], [ 1.000000e+00, %5890 ]
  %5896 = phi i32 [ %6250, %6245 ], [ %5886, %5890 ]
  %5897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.i32 %5897, 2
  %5899 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5834, i32 %5898, i32 %5896)  ; UMad(a,b,c)
  %5900 = shl i32 %5899, 2
  %5901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5900, i32 undef)  ; BufferLoad(srv,index,wot)
  %5902 = extractvalue %dx.types.ResRet.i32 %5901, 0
  %5903 = shl i32 %5896, 5
  %5904 = sub nsw i32 %5884, %5903
  %5905 = call i32 @dx.op.binary.i32(i32 37, i32 %5904, i32 0)  ; IMax(a,b)
  %5906 = call i32 @dx.op.binary.i32(i32 38, i32 %5905, i32 31)  ; IMin(a,b)
  %5907 = sub nsw i32 1, %5884
  %5908 = add nsw i32 %5907, %5885
  %5909 = call i32 @dx.op.binary.i32(i32 37, i32 %5908, i32 0)  ; IMax(a,b)
  %5910 = call i32 @dx.op.binary.i32(i32 38, i32 %5909, i32 32)  ; IMin(a,b)
  %5911 = and i32 %5910, 31
  %5912 = shl i32 -1, %5911
  %5913 = xor i32 %5912, -1
  %5914 = and i32 %5906, 31
  %5915 = shl i32 %5913, %5914
  %5916 = icmp eq i32 %5910, 32
  %5917 = select i1 %5916, i32 -1, i32 %5915
  %5918 = and i32 %5917, %5902
  %5919 = icmp eq i32 %5918, 0
  br i1 %5919, label %6245, label %5920

; <label>:5920                                    ; preds = %5891
  br label %5921

; <label>:5921                                    ; preds = %6028, %5920
  %5922 = phi float [ %6029, %6028 ], [ %5892, %5920 ]
  %5923 = phi float [ %6030, %6028 ], [ %5893, %5920 ]
  %5924 = phi float [ %6031, %6028 ], [ %5894, %5920 ]
  %5925 = phi float [ %6032, %6028 ], [ %5895, %5920 ]
  %5926 = phi i32 [ %5931, %6028 ], [ %5918, %5920 ]
  %5927 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5926)  ; FirstbitLo(value)
  %5928 = add i32 %5927, %5903
  %5929 = and i32 %5927, 31
  %5930 = shl i32 1, %5929
  %5931 = xor i32 %5930, %5926
  %5932 = mul i32 %5928, 72
  %5933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5932, i32 undef)  ; BufferLoad(srv,index,wot)
  %5934 = extractvalue %dx.types.ResRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.ResRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.ResRet.f32 %5933, 2
  %5937 = add i32 %5932, 12
  %5938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5937, i32 undef)  ; BufferLoad(srv,index,wot)
  %5939 = extractvalue %dx.types.ResRet.i32 %5938, 0
  %5940 = add i32 %5932, 16
  %5941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5940, i32 undef)  ; BufferLoad(srv,index,wot)
  %5942 = extractvalue %dx.types.ResRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.ResRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.ResRet.f32 %5941, 2
  %5945 = add i32 %5932, 28
  %5946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5945, i32 undef)  ; BufferLoad(srv,index,wot)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = add i32 %5932, 32
  %5949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5948, i32 undef)  ; BufferLoad(srv,index,wot)
  %5950 = extractvalue %dx.types.ResRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.ResRet.f32 %5949, 1
  %5952 = extractvalue %dx.types.ResRet.f32 %5949, 2
  %5953 = extractvalue %dx.types.ResRet.f32 %5949, 3
  %5954 = add i32 %5932, 48
  %5955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.ResRet.f32 %5955, 1
  %5958 = add i32 %5932, 56
  %5959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5958, i32 undef)  ; BufferLoad(srv,index,wot)
  %5960 = extractvalue %dx.types.ResRet.f32 %5959, 0
  %5961 = extractvalue %dx.types.ResRet.f32 %5959, 1
  %5962 = add i32 %5932, 64
  %5963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5962, i32 undef)  ; BufferLoad(srv,index,wot)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.ResRet.f32 %5963, 1
  %5966 = mul i32 %5928, 60
  %5967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5966, i32 undef)  ; BufferLoad(srv,index,wot)
  %5968 = extractvalue %dx.types.ResRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.ResRet.f32 %5967, 1
  %5970 = extractvalue %dx.types.ResRet.f32 %5967, 2
  %5971 = add i32 %5966, 12
  %5972 = add i32 %5966, 48
  %5973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5972, i32 undef)  ; BufferLoad(srv,index,wot)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.ResRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.ResRet.f32 %5973, 2
  %5977 = and i32 %5939, 32767
  %5978 = bitcast float %5934 to i32
  %5979 = icmp eq i32 %5978, -1
  %5980 = bitcast float %5935 to i32
  %5981 = and i32 %5939, 32768
  %5982 = icmp ne i32 %5981, 0
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5986 = extractvalue %dx.types.CBufRet.f32 %5983, 2
  %5987 = fsub fast float %5968, %5984
  %5988 = fsub fast float %5969, %5985
  %5989 = fsub fast float %5970, %5986
  %5990 = fsub fast float %170, %5987
  %5991 = fsub fast float %171, %5988
  %5992 = fsub fast float %172, %5989
  %5993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5971, i32 undef)  ; BufferLoad(srv,index,wot)
  %5994 = extractvalue %dx.types.ResRet.f32 %5993, 0
  %5995 = extractvalue %dx.types.ResRet.f32 %5993, 1
  %5996 = extractvalue %dx.types.ResRet.f32 %5993, 2
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float %5994, float %5995, float %5996)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = add i32 %5966, 24
  %5999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5998, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.ResRet.f32 %5999, 1
  %6002 = extractvalue %dx.types.ResRet.f32 %5999, 2
  %6003 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float %6000, float %6001, float %6002)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = add i32 %5966, 36
  %6005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6004, i32 undef)  ; BufferLoad(srv,index,wot)
  %6006 = extractvalue %dx.types.ResRet.f32 %6005, 0
  %6007 = extractvalue %dx.types.ResRet.f32 %6005, 1
  %6008 = extractvalue %dx.types.ResRet.f32 %6005, 2
  %6009 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = call float @dx.op.unary.f32(i32 6, float %5997)  ; FAbs(value)
  %6011 = call float @dx.op.unary.f32(i32 6, float %6003)  ; FAbs(value)
  %6012 = call float @dx.op.unary.f32(i32 6, float %6009)  ; FAbs(value)
  %6013 = fsub fast float %5974, %6010
  %6014 = fsub fast float %5975, %6011
  %6015 = fsub fast float %5976, %6012
  %6016 = fmul fast float %6013, %5942
  %6017 = fmul fast float %6014, %5943
  %6018 = fmul fast float %6015, %5944
  %6019 = call float @dx.op.binary.f32(i32 36, float %6017, float %6018)  ; FMin(a,b)
  %6020 = call float @dx.op.binary.f32(i32 36, float %6016, float %6019)  ; FMin(a,b)
  %6021 = call float @dx.op.unary.f32(i32 7, float %6020)  ; Saturate(value)
  %6022 = call float @dx.op.binary.f32(i32 36, float %5925, float %6021)  ; FMin(a,b)
  %6023 = uitofp i1 %5982 to float
  %6024 = fadd fast float %5840, 1.000000e+00
  %6025 = fsub fast float %6024, %6023
  %6026 = fmul fast float %6022, %6025
  %6027 = fcmp fast ogt float %6026, 0.000000e+00
  br i1 %6027, label %6034, label %6028

; <label>:6028                                    ; preds = %6176, %5921
  %6029 = phi float [ %6240, %6176 ], [ %5922, %5921 ]
  %6030 = phi float [ %6241, %6176 ], [ %5923, %5921 ]
  %6031 = phi float [ %6242, %6176 ], [ %5924, %5921 ]
  %6032 = phi float [ %6243, %6176 ], [ %5925, %5921 ]
  %6033 = icmp eq i32 %5926, %5930
  br i1 %6033, label %6244, label %5921

; <label>:6034                                    ; preds = %5921
  br i1 %5979, label %6092, label %6035

; <label>:6035                                    ; preds = %6034
  %6036 = fsub fast float -0.000000e+00, %5994
  %6037 = fsub fast float -0.000000e+00, %5995
  %6038 = fsub fast float -0.000000e+00, %5996
  %6039 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5875, float %5876, float %6036, float %6037, float %6038)  ; Dot3(ax,ay,az,bx,by,bz)
  %6040 = fsub fast float -0.000000e+00, %6039
  %6041 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float %6036, float %6037, float %6038)  ; Dot3(ax,ay,az,bx,by,bz)
  %6042 = fadd fast float %6041, %5957
  %6043 = fadd fast float %5956, %6041
  %6044 = fsub fast float -0.000000e+00, %6043
  %6045 = fcmp ogt float %6039, -0.000000e+00
  %6046 = select i1 %6045, float %6044, float %6042
  %6047 = call float @dx.op.unary.f32(i32 6, float %6040)  ; FAbs(value)
  %6048 = fdiv fast float 1.000000e+00, %6047
  %6049 = fmul fast float %6046, %6048
  %6050 = call float @dx.op.binary.f32(i32 35, float %6049, float 0.000000e+00)  ; FMax(a,b)
  %6051 = fsub fast float -0.000000e+00, %6000
  %6052 = fsub fast float -0.000000e+00, %6001
  %6053 = fsub fast float -0.000000e+00, %6002
  %6054 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5875, float %5876, float %6051, float %6052, float %6053)  ; Dot3(ax,ay,az,bx,by,bz)
  %6055 = fsub fast float -0.000000e+00, %6054
  %6056 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float %6051, float %6052, float %6053)  ; Dot3(ax,ay,az,bx,by,bz)
  %6057 = fadd fast float %6056, %5961
  %6058 = fadd fast float %5960, %6056
  %6059 = fsub fast float -0.000000e+00, %6058
  %6060 = fcmp ogt float %6054, -0.000000e+00
  %6061 = select i1 %6060, float %6059, float %6057
  %6062 = call float @dx.op.unary.f32(i32 6, float %6055)  ; FAbs(value)
  %6063 = fdiv fast float 1.000000e+00, %6062
  %6064 = fmul fast float %6061, %6063
  %6065 = call float @dx.op.binary.f32(i32 35, float %6064, float 0.000000e+00)  ; FMax(a,b)
  %6066 = fsub fast float -0.000000e+00, %6006
  %6067 = fsub fast float -0.000000e+00, %6007
  %6068 = fsub fast float -0.000000e+00, %6008
  %6069 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5875, float %5876, float %6066, float %6067, float %6068)  ; Dot3(ax,ay,az,bx,by,bz)
  %6070 = fsub fast float -0.000000e+00, %6069
  %6071 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float %6066, float %6067, float %6068)  ; Dot3(ax,ay,az,bx,by,bz)
  %6072 = fadd fast float %6071, %5965
  %6073 = fadd fast float %5964, %6071
  %6074 = fsub fast float -0.000000e+00, %6073
  %6075 = fcmp ogt float %6069, -0.000000e+00
  %6076 = select i1 %6075, float %6074, float %6072
  %6077 = call float @dx.op.unary.f32(i32 6, float %6070)  ; FAbs(value)
  %6078 = fdiv fast float 1.000000e+00, %6077
  %6079 = fmul fast float %6076, %6078
  %6080 = call float @dx.op.binary.f32(i32 35, float %6079, float 0.000000e+00)  ; FMax(a,b)
  %6081 = call float @dx.op.binary.f32(i32 36, float %6065, float %6080)  ; FMin(a,b)
  %6082 = call float @dx.op.binary.f32(i32 36, float %6050, float %6081)  ; FMin(a,b)
  %6083 = fmul fast float %6082, %5874
  %6084 = fmul fast float %6082, %5875
  %6085 = fmul fast float %6082, %5876
  %6086 = fadd fast float %6083, %170
  %6087 = fadd fast float %6084, %171
  %6088 = fadd fast float %6085, %172
  %6089 = fsub fast float %6086, %5934
  %6090 = fsub fast float %6087, %5935
  %6091 = fsub fast float %6088, %5936
  br label %6099

; <label>:6092                                    ; preds = %6034
  %6093 = fmul fast float %5874, 8.096000e+03
  %6094 = fmul fast float %5875, 8.096000e+03
  %6095 = fmul fast float %5876, 8.096000e+03
  %6096 = fadd fast float %6093, %170
  %6097 = fadd fast float %6094, %171
  %6098 = fadd fast float %6095, %172
  br label %6099

; <label>:6099                                    ; preds = %6092, %6035
  %6100 = phi float [ %5874, %6092 ], [ %6089, %6035 ]
  %6101 = phi float [ %5875, %6092 ], [ %6090, %6035 ]
  %6102 = phi float [ %5876, %6092 ], [ %6091, %6035 ]
  %6103 = phi float [ %6096, %6092 ], [ %6086, %6035 ]
  %6104 = phi float [ %6097, %6092 ], [ %6087, %6035 ]
  %6105 = phi float [ %6098, %6092 ], [ %6088, %6035 ]
  %6106 = fcmp fast olt float %5953, 1.000000e+00
  br i1 %6106, label %6107, label %6138, !dx.controlflow.hints !100

; <label>:6107                                    ; preds = %6099
  %6108 = fmul fast float %6102, %5951
  %6109 = fmul fast float %6101, %5952
  %6110 = fsub fast float %6108, %6109
  %6111 = fmul fast float %6100, %5952
  %6112 = fmul fast float %6102, %5950
  %6113 = fsub fast float %6111, %6112
  %6114 = fmul fast float %6101, %5950
  %6115 = fmul fast float %6100, %5951
  %6116 = fsub fast float %6114, %6115
  %6117 = fmul fast float %6110, 2.000000e+00
  %6118 = fmul fast float %6113, 2.000000e+00
  %6119 = fmul fast float %6116, 2.000000e+00
  %6120 = fmul fast float %6117, %5953
  %6121 = fmul fast float %6118, %5953
  %6122 = fmul fast float %6119, %5953
  %6123 = fmul fast float %6119, %5951
  %6124 = fmul fast float %6118, %5952
  %6125 = fmul fast float %6117, %5952
  %6126 = fmul fast float %6119, %5950
  %6127 = fmul fast float %6118, %5950
  %6128 = fmul fast float %6117, %5951
  %6129 = fadd fast float %6123, %6100
  %6130 = fadd fast float %6129, %6120
  %6131 = fsub fast float %6130, %6124
  %6132 = fsub fast float %6101, %6126
  %6133 = fadd fast float %6132, %6121
  %6134 = fadd fast float %6133, %6125
  %6135 = fadd fast float %6122, %6102
  %6136 = fsub fast float %6135, %6128
  %6137 = fadd fast float %6136, %6127
  br label %6138

; <label>:6138                                    ; preds = %6107, %6099
  %6139 = phi float [ %6131, %6107 ], [ %6100, %6099 ]
  %6140 = phi float [ %6134, %6107 ], [ %6101, %6099 ]
  %6141 = phi float [ %6137, %6107 ], [ %6102, %6099 ]
  br i1 %5979, label %6173, label %6142

; <label>:6142                                    ; preds = %6138
  %6143 = fmul fast float %5467, 0x400187C840000000
  %6144 = fadd fast float %6143, 0xC00EFC2120000000
  %6145 = fmul fast float %6144, %5467
  %6146 = fadd fast float %6145, 0x3FE5D16340000000
  %6147 = fmul fast float %6146, %5467
  %6148 = fadd fast float %6147, 1.000000e+00
  %6149 = call float @dx.op.unary.f32(i32 7, float %6148)  ; Saturate(value)
  %6150 = fsub fast float %6103, %170
  %6151 = fsub fast float %6104, %171
  %6152 = fsub fast float %6105, %172
  %6153 = fsub fast float %6103, %5934
  %6154 = fsub fast float %6104, %5935
  %6155 = fsub fast float %6105, %5936
  %6156 = call float @dx.op.dot3.f32(i32 55, float %6150, float %6151, float %6152, float %6150, float %6151, float %6152)  ; Dot3(ax,ay,az,bx,by,bz)
  %6157 = call float @dx.op.dot3.f32(i32 55, float %6153, float %6154, float %6155, float %6153, float %6154, float %6155)  ; Dot3(ax,ay,az,bx,by,bz)
  %6158 = fadd fast float %6157, 0x3EE4F8B580000000
  %6159 = fdiv fast float %6156, %6158
  %6160 = bitcast float %6159 to i32
  %6161 = ashr i32 %6160, 1
  %6162 = add nsw i32 %6161, 532487669
  %6163 = bitcast i32 %6162 to float
  %6164 = fmul fast float %6163, %6149
  %6165 = call float @dx.op.unary.f32(i32 7, float %6164)  ; Saturate(value)
  %6166 = fmul fast float %6165, 0x4009981AE0000000
  %6167 = fsub fast float 0x40111BBD80000000, %6166
  %6168 = fmul fast float %6167, %6165
  %6169 = fadd fast float %6168, 0xC0009F6020000000
  %6170 = fmul fast float %6169, %6165
  %6171 = fadd fast float %6170, 1.000000e+00
  %6172 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  br label %6176

; <label>:6173                                    ; preds = %6138
  %6174 = icmp ne i32 %5980, -1
  %6175 = zext i1 %6174 to i32
  br label %6176

; <label>:6176                                    ; preds = %6173, %6142
  %6177 = phi float [ %5467, %6173 ], [ %6172, %6142 ]
  %6178 = phi i32 [ %6175, %6173 ], [ 0, %6142 ]
  %6179 = fmul float %6177, 5.000000e+00
  %6180 = fsub float 5.000000e+00, %6179
  %6181 = icmp ne i32 %6178, 0
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 3
  %6184 = fadd fast float %6183, %6180
  %6185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6184)  ; FMax(a,b)
  %6186 = call float @dx.op.unary.f32(i32 6, float %6139)  ; FAbs(value)
  %6187 = call float @dx.op.unary.f32(i32 6, float %6140)  ; FAbs(value)
  %6188 = fadd fast float %6187, %6186
  %6189 = call float @dx.op.unary.f32(i32 6, float %6141)  ; FAbs(value)
  %6190 = fadd fast float %6188, %6189
  %6191 = fcmp fast oeq float %6190, 0.000000e+00
  %6192 = fdiv fast float 1.000000e+00, %6190
  %6193 = select i1 %6191, float 1.000000e+00, float %6192
  %6194 = fmul fast float %6193, %6139
  %6195 = fmul fast float %6193, %6140
  %6196 = call float @dx.op.unary.f32(i32 6, float %6195)  ; FAbs(value)
  %6197 = call float @dx.op.unary.f32(i32 6, float %6194)  ; FAbs(value)
  %6198 = fsub fast float 1.000000e+00, %6196
  %6199 = fsub fast float 1.000000e+00, %6197
  %6200 = fcmp fast oge float %6194, 0.000000e+00
  %6201 = fcmp fast oge float %6195, 0.000000e+00
  %6202 = select i1 %6200, float 1.000000e+00, float -1.000000e+00
  %6203 = select i1 %6201, float 1.000000e+00, float -1.000000e+00
  %6204 = fcmp fast ole float %6141, 0.000000e+00
  %6205 = fmul fast float %6202, %6198
  %6206 = fmul fast float %6203, %6199
  %6207 = select i1 %6204, float %6205, float %6194
  %6208 = select i1 %6204, float %6206, float %6195
  %6209 = fmul fast float %6207, 5.000000e-01
  %6210 = fmul fast float %6208, 5.000000e-01
  %6211 = fadd fast float %6209, 5.000000e-01
  %6212 = fadd fast float %6210, 5.000000e-01
  %6213 = uitofp i32 %5977 to float
  %6214 = call float @dx.op.binary.f32(i32 36, float %6185, float 3.000000e+00)  ; FMin(a,b)
  %6215 = fadd fast float %6214, 2.000000e+00
  %6216 = call float @dx.op.unary.f32(i32 21, float %6215)  ; Exp(value)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6182, 1
  %6218 = fmul fast float %6217, %6216
  %6219 = fmul fast float %6218, 2.000000e+00
  %6220 = fsub fast float 1.000000e+00, %6219
  %6221 = fmul fast float %6211, %6220
  %6222 = fmul fast float %6212, %6220
  %6223 = fadd fast float %6221, %6218
  %6224 = fadd fast float %6222, %6218
  %6225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6223, float %6224, float %6213, float undef, i32 0, i32 0, i32 undef, float %6185)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6226 = extractvalue %dx.types.ResRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.ResRet.f32 %6225, 1
  %6228 = extractvalue %dx.types.ResRet.f32 %6225, 2
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 3
  %6231 = fmul fast float %6230, %5947
  %6232 = call float @dx.op.binary.f32(i32 36, float %5498, float %6231)  ; FMin(a,b)
  %6233 = select i1 %6181, float %6232, float %6231
  %6234 = fmul fast float %6226, %6026
  %6235 = fmul fast float %6234, %6233
  %6236 = fmul fast float %6227, %6026
  %6237 = fmul fast float %6236, %6233
  %6238 = fmul fast float %6228, %6026
  %6239 = fmul fast float %6238, %6233
  %6240 = fadd fast float %6235, %5922
  %6241 = fadd fast float %6237, %5923
  %6242 = fadd fast float %6239, %5924
  %6243 = fsub fast float %5925, %6026
  br label %6028

; <label>:6244                                    ; preds = %6028
  br label %6245

; <label>:6245                                    ; preds = %6244, %5891
  %6246 = phi float [ %5892, %5891 ], [ %6029, %6244 ]
  %6247 = phi float [ %5893, %5891 ], [ %6030, %6244 ]
  %6248 = phi float [ %5894, %5891 ], [ %6031, %6244 ]
  %6249 = phi float [ %5895, %5891 ], [ %6032, %6244 ]
  %6250 = add i32 %5896, 1
  %6251 = icmp ugt i32 %6250, %5888
  br i1 %6251, label %6252, label %5891, !llvm.loop !101

; <label>:6252                                    ; preds = %6245
  br label %6253

; <label>:6253                                    ; preds = %6252, %5873
  %6254 = phi float [ 0.000000e+00, %5873 ], [ %6246, %6252 ]
  %6255 = phi float [ 0.000000e+00, %5873 ], [ %6247, %6252 ]
  %6256 = phi float [ 0.000000e+00, %5873 ], [ %6248, %6252 ]
  %6257 = call float @dx.op.dot3.f32(i32 55, float %6254, float %6255, float %6256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6258 = select i1 %232, float 0.000000e+00, float %6254
  %6259 = select i1 %232, float %6257, float %6255
  %6260 = select i1 %232, float 0.000000e+00, float %6256
  %6261 = fcmp fast olt float %5799, 0.000000e+00
  %6262 = call float @dx.op.unary.f32(i32 6, float %5799)  ; FAbs(value)
  %6263 = fmul fast float %6262, %5728
  %6264 = fmul fast float %6262, %5729
  %6265 = fmul fast float %6262, %5730
  %6266 = select i1 %6261, float %5728, float %6263
  %6267 = select i1 %6261, float %5729, float %6264
  %6268 = select i1 %6261, float %5730, float %6265
  %6269 = fsub fast float 1.000000e+00, %6262
  %6270 = call float @dx.op.unary.f32(i32 7, float %6269)  ; Saturate(value)
  %6271 = fmul fast float %6270, %6258
  %6272 = fmul fast float %6270, %6259
  %6273 = fmul fast float %6270, %6260
  %6274 = fadd fast float %6266, %6271
  %6275 = fadd fast float %6267, %6272
  %6276 = fadd fast float %6268, %6273
  br label %6277

; <label>:6277                                    ; preds = %6253, %5782
  %6278 = phi float [ %5728, %5782 ], [ %6274, %6253 ]
  %6279 = phi float [ %5729, %5782 ], [ %6275, %6253 ]
  %6280 = phi float [ %5730, %5782 ], [ %6276, %6253 ]
  %6281 = fmul fast float %5788, %5724
  %6282 = fmul fast float %5788, %5725
  %6283 = fmul fast float %5788, %5726
  %6284 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6285 = fcmp fast ogt float %6284, 0x3E7FF19E20000000
  %6286 = fdiv fast float 1.000000e+00, %6284
  %6287 = select i1 %6285, float %6286, float 0.000000e+00
  %6288 = fmul fast float %6287, %5458
  %6289 = fmul fast float %6287, %5459
  %6290 = fmul fast float %6287, %5460
  %6291 = fadd fast float %6288, -1.000000e+00
  %6292 = fadd fast float %6289, -1.000000e+00
  %6293 = fadd fast float %6290, -1.000000e+00
  %6294 = fmul fast float %6291, 5.000000e-01
  %6295 = fmul fast float %6292, 5.000000e-01
  %6296 = fmul fast float %6293, 5.000000e-01
  %6297 = fadd fast float %6294, 1.000000e+00
  %6298 = fadd fast float %6295, 1.000000e+00
  %6299 = fadd fast float %6296, 1.000000e+00
  %6300 = call float @dx.op.binary.f32(i32 35, float %5472, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6301 = fdiv fast float %4241, %6300
  %6302 = fcmp fast olt float %4880, 1.270000e+02
  %6303 = fcmp fast olt float %4881, 1.270000e+02
  %6304 = fcmp fast olt float %4882, 1.270000e+02
  %6305 = fmul fast float %4880, 0xBFF7154760000000
  %6306 = fmul fast float %6305, %6301
  %6307 = fmul fast float %4881, 0xBFF7154760000000
  %6308 = fmul fast float %6307, %6301
  %6309 = fmul fast float %4882, 0xBFF7154760000000
  %6310 = fmul fast float %6309, %6301
  %6311 = call float @dx.op.unary.f32(i32 21, float %6306)  ; Exp(value)
  %6312 = call float @dx.op.unary.f32(i32 21, float %6308)  ; Exp(value)
  %6313 = call float @dx.op.unary.f32(i32 21, float %6310)  ; Exp(value)
  %6314 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6315 = call float @dx.op.unary.f32(i32 7, float %6312)  ; Saturate(value)
  %6316 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  %6317 = select i1 %6302, float %6314, float 0.000000e+00
  %6318 = select i1 %6303, float %6315, float 0.000000e+00
  %6319 = select i1 %6304, float %6316, float 0.000000e+00
  %6320 = fmul fast float %6317, %5788
  %6321 = fmul fast float %6318, %5788
  %6322 = fmul fast float %6319, %5788
  %6323 = fadd fast float %6320, -1.000000e+00
  %6324 = fadd fast float %6321, -1.000000e+00
  %6325 = fadd fast float %6322, -1.000000e+00
  %6326 = fmul fast float %6278, %5783
  %6327 = fmul fast float %6279, %5784
  %6328 = fmul fast float %6280, %5785
  %6329 = fsub fast float 1.000000e+00, %5472
  %6330 = bitcast float %6329 to i32
  %6331 = sitofp i32 %6330 to float
  %6332 = fmul fast float %6331, 5.000000e+00
  %6333 = fadd fast float %6332, 0xC1EFBF8940000000
  %6334 = fptosi float %6333 to i32
  %6335 = bitcast i32 %6334 to float
  %6336 = fmul fast float %6335, %4853
  %6337 = fmul fast float %5724, %6336
  %6338 = fmul fast float %6337, %5788
  %6339 = fmul fast float %6338, %6297
  %6340 = fmul fast float %5725, %6336
  %6341 = fmul fast float %6340, %5788
  %6342 = fmul fast float %6341, %6298
  %6343 = fmul fast float %5726, %6336
  %6344 = fmul fast float %6343, %5788
  %6345 = fmul fast float %6344, %6299
  %6346 = fmul fast float %6281, %4849
  %6347 = fmul fast float %6282, %4849
  %6348 = fmul fast float %6283, %4849
  %6349 = fadd fast float %6326, %4842
  %6350 = fadd fast float %6349, %6339
  %6351 = fmul fast float %6350, %4849
  %6352 = fadd fast float %6327, %4843
  %6353 = fadd fast float %6352, %6342
  %6354 = fmul fast float %6353, %4849
  %6355 = fadd fast float %6328, %4844
  %6356 = fadd fast float %6355, %6345
  %6357 = fmul fast float %6356, %4849
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 3
  %6360 = fcmp fast oeq float %6359, 0.000000e+00
  br i1 %6360, label %7915, label %6361

; <label>:6361                                    ; preds = %6277
  %6362 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6363 = extractvalue %dx.types.CBufRet.f32 %6358, 1
  %6364 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6367 = extractvalue %dx.types.CBufRet.f32 %6365, 1
  %6368 = extractvalue %dx.types.CBufRet.f32 %6365, 2
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.CBufRet.f32 %6369, 1
  %6372 = call float @dx.op.dot3.f32(i32 55, float %6366, float %6367, float %6368, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6373 = select i1 %232, float %6370, float %6366
  %6374 = select i1 %232, float %6372, float %6367
  %6375 = select i1 %232, float %6371, float %6368
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 2
  %6378 = fmul fast float %6377, %120
  %6379 = fmul fast float %6377, %122
  %6380 = fmul fast float %6377, %124
  %6381 = fadd fast float %6378, %170
  %6382 = fadd fast float %6379, %171
  %6383 = fadd fast float %6380, %172
  %6384 = fcmp fast olt float %6359, 0.000000e+00
  br i1 %6384, label %7480, label %6385

; <label>:6385                                    ; preds = %6361
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6394 = extractvalue %dx.types.CBufRet.f32 %6391, 2
  %6395 = extractvalue %dx.types.CBufRet.f32 %6391, 3
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %6399 = extractvalue %dx.types.CBufRet.f32 %6396, 2
  %6400 = extractvalue %dx.types.CBufRet.f32 %6396, 3
  %6401 = fmul fast float %6387, %6381
  %6402 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6388, float %6401)  ; FMad(a,b,c)
  %6403 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6389, float %6402)  ; FMad(a,b,c)
  %6404 = fadd fast float %6403, %6390
  %6405 = fmul fast float %6392, %6381
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6393, float %6405)  ; FMad(a,b,c)
  %6407 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6394, float %6406)  ; FMad(a,b,c)
  %6408 = fadd fast float %6407, %6395
  %6409 = fmul fast float %6397, %6381
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6398, float %6409)  ; FMad(a,b,c)
  %6411 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6399, float %6410)  ; FMad(a,b,c)
  %6412 = fadd fast float %6411, %6400
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.CBufRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.CBufRet.f32 %6413, 3
  %6417 = fmul fast float %6416, %6404
  %6418 = fmul fast float %6416, %6408
  %6419 = fadd fast float %6417, %6414
  %6420 = fadd fast float %6418, %6415
  %6421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6422 = extractvalue %dx.types.CBufRet.f32 %6421, 0
  %6423 = extractvalue %dx.types.CBufRet.f32 %6421, 1
  %6424 = extractvalue %dx.types.CBufRet.f32 %6421, 3
  %6425 = fmul fast float %6424, %6404
  %6426 = fmul fast float %6424, %6408
  %6427 = fadd fast float %6425, %6422
  %6428 = fadd fast float %6426, %6423
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6431 = fsub fast float %6430, %6412
  %6432 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6433 = fmul fast float %6431, %6432
  %6434 = fsub fast float 1.000000e+00, %6433
  %6435 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6421, 2
  %6437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6438 = extractvalue %dx.types.CBufRet.f32 %6437, 2
  %6439 = fadd fast float %6438, %6436
  %6440 = fcmp fast ogt float %6439, 0.000000e+00
  br i1 %6440, label %6441, label %6465

; <label>:6441                                    ; preds = %6385
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6445 = fsub fast float %6427, %6443
  %6446 = fsub fast float %6428, %6444
  %6447 = fcmp fast olt float %6445, 0.000000e+00
  %6448 = fcmp fast olt float %6446, 0.000000e+00
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.CBufRet.f32 %6449, 1
  %6452 = extractvalue %dx.types.CBufRet.f32 %6449, 2
  %6453 = extractvalue %dx.types.CBufRet.f32 %6449, 3
  %6454 = select i1 %6447, float %6450, float %6452
  %6455 = select i1 %6448, float %6451, float %6453
  %6456 = fmul fast float %6454, %6445
  %6457 = fmul fast float %6455, %6446
  %6458 = call float @dx.op.unary.f32(i32 6, float %6456)  ; FAbs(value)
  %6459 = call float @dx.op.unary.f32(i32 6, float %6457)  ; FAbs(value)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6461 = call float @dx.op.binary.f32(i32 35, float %6458, float %6459)  ; FMax(a,b)
  %6462 = fsub fast float %6460, %6461
  %6463 = call float @dx.op.unary.f32(i32 7, float %6462)  ; Saturate(value)
  %6464 = fmul fast float %6463, %6435
  br label %6465

; <label>:6465                                    ; preds = %6441, %6385
  %6466 = phi float [ %6464, %6441 ], [ 0.000000e+00, %6385 ]
  %6467 = extractvalue %dx.types.CBufRet.f32 %6413, 2
  %6468 = extractvalue %dx.types.CBufRet.f32 %6437, 1
  %6469 = fadd fast float %6468, %6467
  %6470 = fcmp fast ogt float %6469, 0.000000e+00
  %6471 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  br i1 %6470, label %6472, label %6495

; <label>:6472                                    ; preds = %6465
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 0
  %6475 = extractvalue %dx.types.CBufRet.f32 %6473, 1
  %6476 = fsub fast float %6419, %6474
  %6477 = fsub fast float %6420, %6475
  %6478 = fcmp fast olt float %6476, 0.000000e+00
  %6479 = fcmp fast olt float %6477, 0.000000e+00
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 0
  %6482 = extractvalue %dx.types.CBufRet.f32 %6480, 1
  %6483 = extractvalue %dx.types.CBufRet.f32 %6480, 2
  %6484 = extractvalue %dx.types.CBufRet.f32 %6480, 3
  %6485 = select i1 %6478, float %6481, float %6483
  %6486 = select i1 %6479, float %6482, float %6484
  %6487 = fmul fast float %6485, %6476
  %6488 = fmul fast float %6486, %6477
  %6489 = call float @dx.op.unary.f32(i32 6, float %6487)  ; FAbs(value)
  %6490 = call float @dx.op.unary.f32(i32 6, float %6488)  ; FAbs(value)
  %6491 = call float @dx.op.binary.f32(i32 35, float %6489, float %6490)  ; FMax(a,b)
  %6492 = fsub fast float %6471, %6491
  %6493 = call float @dx.op.unary.f32(i32 7, float %6492)  ; Saturate(value)
  %6494 = fmul fast float %6493, %6435
  br label %6495

; <label>:6495                                    ; preds = %6472, %6465
  %6496 = phi float [ %6494, %6472 ], [ 0.000000e+00, %6465 ]
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6498 = extractvalue %dx.types.CBufRet.f32 %6497, 1
  %6499 = call float @dx.op.unary.f32(i32 7, float %6498)  ; Saturate(value)
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.CBufRet.f32 %6500, 1
  %6503 = fsub fast float %6404, %6501
  %6504 = fsub fast float %6408, %6502
  %6505 = fcmp fast olt float %6503, 0.000000e+00
  %6506 = fcmp fast olt float %6504, 0.000000e+00
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 0
  %6509 = extractvalue %dx.types.CBufRet.f32 %6507, 1
  %6510 = extractvalue %dx.types.CBufRet.f32 %6507, 2
  %6511 = extractvalue %dx.types.CBufRet.f32 %6507, 3
  %6512 = select i1 %6505, float %6508, float %6510
  %6513 = select i1 %6506, float %6509, float %6511
  %6514 = fmul fast float %6512, %6503
  %6515 = fmul fast float %6513, %6504
  %6516 = call float @dx.op.unary.f32(i32 6, float %6514)  ; FAbs(value)
  %6517 = call float @dx.op.unary.f32(i32 6, float %6515)  ; FAbs(value)
  %6518 = call float @dx.op.binary.f32(i32 35, float %6516, float %6517)  ; FMax(a,b)
  %6519 = fsub fast float %6471, %6518
  %6520 = call float @dx.op.unary.f32(i32 7, float %6519)  ; Saturate(value)
  %6521 = call float @dx.op.binary.f32(i32 36, float %6520, float %6499)  ; FMin(a,b)
  %6522 = fmul fast float %6521, %6435
  %6523 = fsub fast float %6496, %6522
  %6524 = fsub fast float %6466, %6496
  %6525 = fsub fast float %6524, %6522
  %6526 = call float @dx.op.binary.f32(i32 35, float %6496, float %6466)  ; FMax(a,b)
  %6527 = call float @dx.op.binary.f32(i32 35, float %6522, float %6526)  ; FMax(a,b)
  %6528 = fcmp fast olt float %6527, 1.000000e+00
  br i1 %6528, label %6529, label %6927, !dx.controlflow.hints !103

; <label>:6529                                    ; preds = %6495
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = fcmp fast une float %6531, 0.000000e+00
  br i1 %6532, label %6533, label %6927, !dx.controlflow.hints !104

; <label>:6533                                    ; preds = %6529
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = extractvalue %dx.types.CBufRet.f32 %6534, 1
  %6537 = extractvalue %dx.types.CBufRet.f32 %6534, 2
  %6538 = extractvalue %dx.types.CBufRet.f32 %6534, 3
  %6539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6540 = extractvalue %dx.types.CBufRet.f32 %6539, 0
  %6541 = extractvalue %dx.types.CBufRet.f32 %6539, 1
  %6542 = extractvalue %dx.types.CBufRet.f32 %6539, 2
  %6543 = extractvalue %dx.types.CBufRet.f32 %6539, 3
  %6544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6545 = extractvalue %dx.types.CBufRet.f32 %6544, 0
  %6546 = extractvalue %dx.types.CBufRet.f32 %6544, 1
  %6547 = extractvalue %dx.types.CBufRet.f32 %6544, 2
  %6548 = extractvalue %dx.types.CBufRet.f32 %6544, 3
  %6549 = fmul fast float %6535, %6381
  %6550 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6536, float %6549)  ; FMad(a,b,c)
  %6551 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6537, float %6550)  ; FMad(a,b,c)
  %6552 = fadd fast float %6551, %6538
  %6553 = fmul fast float %6540, %6381
  %6554 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6541, float %6553)  ; FMad(a,b,c)
  %6555 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6542, float %6554)  ; FMad(a,b,c)
  %6556 = fadd fast float %6555, %6543
  %6557 = fmul fast float %6545, %6381
  %6558 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %6546, float %6557)  ; FMad(a,b,c)
  %6559 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %6547, float %6558)  ; FMad(a,b,c)
  %6560 = fadd fast float %6559, %6548
  %6561 = fcmp fast oge float %6552, 1.000000e+00
  %6562 = fcmp fast oge float %6556, 1.000000e+00
  %6563 = or i1 %6561, %6562
  %6564 = fcmp fast olt float %6552, 0.000000e+00
  %6565 = fcmp fast olt float %6556, 0.000000e+00
  %6566 = or i1 %6564, %6565
  %6567 = or i1 %6563, %6566
  br i1 %6567, label %6927, label %6568, !dx.controlflow.hints !105

; <label>:6568                                    ; preds = %6533
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6572 = extractvalue %dx.types.CBufRet.f32 %6569, 2
  %6573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.i32 %6573, 2
  %6575 = uitofp i32 %6574 to float
  %6576 = extractvalue %dx.types.CBufRet.i32 %6573, 3
  %6577 = uitofp i32 %6576 to float
  %6578 = extractvalue %dx.types.CBufRet.f32 %6569, 3
  %6579 = fmul fast float %6578, 2.000000e+00
  %6580 = fsub fast float %6552, %6570
  %6581 = fsub fast float %6556, %6571
  %6582 = fmul fast float %6579, %6580
  %6583 = fmul fast float %6579, %6581
  %6584 = fdiv fast float 1.000000e+00, %6364
  %6585 = fmul fast float %6583, %6584
  %6586 = call float @dx.op.unary.f32(i32 6, float %6585)  ; FAbs(value)
  %6587 = fmul fast float %6572, %6383
  %6588 = fmul fast float %6587, %6579
  %6589 = call float @dx.op.unary.f32(i32 6, float %6588)  ; FAbs(value)
  %6590 = call float @dx.op.unary.f32(i32 6, float %6582)  ; FAbs(value)
  %6591 = call float @dx.op.binary.f32(i32 35, float %6589, float %6586)  ; FMax(a,b)
  %6592 = call float @dx.op.binary.f32(i32 35, float %6590, float %6591)  ; FMax(a,b)
  %6593 = fmul fast float %6592, 2.000000e+00
  %6594 = call float @dx.op.unary.f32(i32 23, float %6593)  ; Log(value)
  %6595 = call float @dx.op.binary.f32(i32 35, float %6594, float %6575)  ; FMax(a,b)
  %6596 = call float @dx.op.unary.f32(i32 22, float %6595)  ; Frc(value)
  %6597 = fadd fast float %6596, 0xBFEA666660000000
  %6598 = fmul fast float %6597, 8.000000e+00
  %6599 = call float @dx.op.unary.f32(i32 7, float %6598)  ; Saturate(value)
  %6600 = call float @dx.op.unary.f32(i32 27, float %6595)  ; Round_ni(value)
  %6601 = fadd fast float %6600, %6599
  %6602 = call float @dx.op.binary.f32(i32 36, float %6601, float %6577)  ; FMin(a,b)
  %6603 = call float @dx.op.unary.f32(i32 27, float %6602)  ; Round_ni(value)
  %6604 = fsub fast float -0.000000e+00, %6603
  %6605 = call float @dx.op.unary.f32(i32 21, float %6604)  ; Exp(value)
  %6606 = fmul fast float %6605, %6579
  %6607 = fmul fast float %6606, %6552
  %6608 = fmul fast float %6606, %6556
  %6609 = fmul fast float %6607, 2.500000e-01
  %6610 = fmul fast float %6608, 2.500000e-01
  %6611 = fadd fast float %6609, 5.000000e-01
  %6612 = fadd fast float %6610, 5.000000e-01
  %6613 = fsub fast float %6577, %6575
  %6614 = fptoui float %6613 to i32
  %6615 = add i32 %6614, 320
  %6616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6615)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6618 = extractvalue %dx.types.CBufRet.f32 %6616, 1
  %6619 = fcmp fast une float %6602, %6577
  %6620 = fsub fast float %6552, %6617
  %6621 = fsub fast float %6556, %6618
  %6622 = call float @dx.op.unary.f32(i32 6, float %6620)  ; FAbs(value)
  %6623 = call float @dx.op.unary.f32(i32 6, float %6621)  ; FAbs(value)
  %6624 = fmul fast float %6622, %6606
  %6625 = fmul fast float %6623, %6606
  %6626 = fcmp fast olt float %6624, 1.000000e+00
  %6627 = fcmp fast olt float %6625, 1.000000e+00
  %6628 = and i1 %6626, %6627
  %6629 = or i1 %6619, %6628
  br i1 %6629, label %6630, label %6927, !dx.controlflow.hints !106

; <label>:6630                                    ; preds = %6568
  %6631 = fmul fast float %6608, 5.000000e-01
  %6632 = fmul fast float %6607, 5.000000e-01
  %6633 = fadd fast float %6631, 5.000000e-01
  %6634 = fadd fast float %6632, 5.000000e-01
  %6635 = sitofp i32 %6574 to float
  %6636 = fsub fast float %6602, %6635
  %6637 = call float @dx.op.unary.f32(i32 27, float %6636)  ; Round_ni(value)
  %6638 = call float @dx.op.unary.f32(i32 22, float %6602)  ; Frc(value)
  %6639 = call float @dx.op.unary.f32(i32 22, float %6634)  ; Frc(value)
  %6640 = call float @dx.op.unary.f32(i32 22, float %6633)  ; Frc(value)
  %6641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6639, float %6640, float %6637, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6642 = extractvalue %dx.types.ResRet.f32 %6641, 0
  %6643 = extractvalue %dx.types.ResRet.f32 %6641, 1
  %6644 = extractvalue %dx.types.ResRet.f32 %6641, 2
  %6645 = extractvalue %dx.types.ResRet.f32 %6641, 3
  %6646 = fcmp fast ogt float %6638, 0.000000e+00
  br i1 %6646, label %6647, label %6668, !dx.controlflow.hints !107

; <label>:6647                                    ; preds = %6630
  %6648 = fadd fast float %6637, 1.000000e+00
  %6649 = call float @dx.op.unary.f32(i32 22, float %6611)  ; Frc(value)
  %6650 = call float @dx.op.unary.f32(i32 22, float %6612)  ; Frc(value)
  %6651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6649, float %6650, float %6648, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6652 = extractvalue %dx.types.ResRet.f32 %6651, 0
  %6653 = extractvalue %dx.types.ResRet.f32 %6651, 1
  %6654 = extractvalue %dx.types.ResRet.f32 %6651, 2
  %6655 = extractvalue %dx.types.ResRet.f32 %6651, 3
  %6656 = fsub fast float %6652, %6642
  %6657 = fsub fast float %6653, %6643
  %6658 = fsub fast float %6654, %6644
  %6659 = fsub fast float %6655, %6645
  %6660 = fmul fast float %6656, %6638
  %6661 = fmul fast float %6657, %6638
  %6662 = fmul fast float %6658, %6638
  %6663 = fmul fast float %6659, %6638
  %6664 = fadd fast float %6660, %6642
  %6665 = fadd fast float %6661, %6643
  %6666 = fadd fast float %6662, %6644
  %6667 = fadd fast float %6663, %6645
  br label %6668

; <label>:6668                                    ; preds = %6647, %6630
  %6669 = phi float [ %6664, %6647 ], [ %6642, %6630 ]
  %6670 = phi float [ %6665, %6647 ], [ %6643, %6630 ]
  %6671 = phi float [ %6666, %6647 ], [ %6644, %6630 ]
  %6672 = phi float [ %6667, %6647 ], [ %6645, %6630 ]
  %6673 = fadd fast float %6669, -5.000000e-01
  %6674 = fadd fast float %6671, -5.000000e-01
  %6675 = fmul fast float %6673, 0xBFD5555560000000
  %6676 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6674, float %6675)  ; FMad(a,b,c)
  %6677 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6670, float 0.000000e+00)  ; FMad(a,b,c)
  %6678 = fadd fast float %6677, %6672
  %6679 = fmul fast float %6673, -7.500000e-01
  %6680 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6674, float %6679)  ; FMad(a,b,c)
  %6681 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6670, float 0.000000e+00)  ; FMad(a,b,c)
  %6682 = fadd fast float %6681, %6672
  %6683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6683, 0
  %6685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6686 = extractvalue %dx.types.CBufRet.f32 %6685, 0
  %6687 = extractvalue %dx.types.CBufRet.f32 %6685, 1
  %6688 = extractvalue %dx.types.CBufRet.f32 %6685, 2
  %6689 = extractvalue %dx.types.CBufRet.f32 %6685, 3
  %6690 = fsub fast float %6686, %6676
  %6691 = fsub fast float %6687, %6678
  %6692 = fsub fast float %6688, %6680
  %6693 = fsub fast float %6689, %6682
  %6694 = fmul fast float %6690, %6684
  %6695 = fmul fast float %6691, %6684
  %6696 = fmul fast float %6692, %6684
  %6697 = fmul fast float %6693, %6684
  %6698 = fadd fast float %6694, %6676
  %6699 = fadd fast float %6695, %6678
  %6700 = fadd fast float %6696, %6680
  %6701 = fadd fast float %6697, %6682
  %6702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6703 = extractvalue %dx.types.ResRet.i32 %6702, 0
  %6704 = and i32 %6703, 536870911
  %6705 = uitofp i32 %6704 to float
  %6706 = fmul fast float %6705, %6552
  %6707 = fmul fast float %6705, %6556
  %6708 = fptoui float %6706 to i32
  %6709 = fptoui float %6707 to i32
  %6710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6711 = extractvalue %dx.types.ResRet.i32 %6710, 0
  %6712 = and i32 %6711, 31
  %6713 = lshr i32 %6708, %6712
  %6714 = lshr i32 %6709, %6712
  %6715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6716 = extractvalue %dx.types.ResRet.i32 %6715, 0
  %6717 = and i32 %6716, 31
  %6718 = shl i32 1, %6717
  %6719 = call i32 @dx.op.binary.i32(i32 40, i32 %6718, i32 4)  ; UMin(a,b)
  %6720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6721 = extractvalue %dx.types.ResRet.i32 %6720, 0
  %6722 = extractvalue %dx.types.ResRet.i32 %6720, 1
  %6723 = icmp eq i32 %6719, 0
  br i1 %6723, label %6765, label %6724

; <label>:6724                                    ; preds = %6668
  br label %6725

; <label>:6725                                    ; preds = %6753, %6724
  %6726 = phi i32 [ %6756, %6753 ], [ 0, %6724 ]
  %6727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6728 = extractvalue %dx.types.ResRet.i32 %6727, 0
  %6729 = lshr i32 %6728, 16
  %6730 = and i32 %6729, 31
  %6731 = shl i32 %6714, %6730
  %6732 = add i32 %6731, %6713
  %6733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6734 = extractvalue %dx.types.ResRet.i32 %6733, 0
  %6735 = and i32 %6734, 31
  %6736 = shl i32 %6732, %6735
  %6737 = add i32 %6736, %6726
  %6738 = shl i32 %6737, 2
  %6739 = add i32 %6738, 32
  %6740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6739, i32 undef)  ; BufferLoad(srv,index,wot)
  %6741 = extractvalue %dx.types.ResRet.i32 %6740, 0
  %6742 = icmp slt i32 %6741, 0
  %6743 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6726
  %6744 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6726
  %6745 = bitcast float* %6743 to i32*
  %6746 = bitcast float* %6744 to i32*
  br i1 %6742, label %6747, label %6753

; <label>:6747                                    ; preds = %6725
  %6748 = and i32 %6741, 1073741823
  %6749 = add nuw nsw i32 %6748, 20
  %6750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6749, i32 undef)  ; BufferLoad(srv,index,wot)
  %6751 = extractvalue %dx.types.ResRet.i32 %6750, 0
  %6752 = extractvalue %dx.types.ResRet.i32 %6750, 1
  br label %6753

; <label>:6753                                    ; preds = %6747, %6725
  %6754 = phi i32 [ %6751, %6747 ], [ %6721, %6725 ]
  %6755 = phi i32 [ %6752, %6747 ], [ %6722, %6725 ]
  store i32 %6754, i32* %6745, align 4
  store i32 %6755, i32* %6746, align 4
  %6756 = add nuw i32 %6726, 1
  %6757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6758 = extractvalue %dx.types.CBufRet.i32 %6757, 2
  %6759 = icmp eq i32 %6758, 0
  %6760 = icmp ugt i32 %6741, -1073741825
  %6761 = and i1 %6760, %6759
  %6762 = icmp ult i32 %6756, %6719
  %6763 = and i1 %6761, %6762
  br i1 %6763, label %6725, label %6764

; <label>:6764                                    ; preds = %6753
  br label %6765

; <label>:6765                                    ; preds = %6764, %6668
  %6766 = phi i32 [ 0, %6668 ], [ %6756, %6764 ]
  %6767 = extractvalue %dx.types.CBufRet.f32 %6530, 2
  %6768 = fptoui float %6767 to i32
  %6769 = icmp eq i32 %6768, 0
  br i1 %6769, label %6821, label %6770

; <label>:6770                                    ; preds = %6765
  br label %6771

; <label>:6771                                    ; preds = %6816, %6770
  %6772 = phi i32 [ %6817, %6816 ], [ %6766, %6770 ]
  %6773 = phi i32 [ %6818, %6816 ], [ 0, %6770 ]
  %6774 = lshr i32 %6773, 2
  %6775 = and i32 %6773, 3
  %6776 = add nuw nsw i32 %6774, 83
  %6777 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6776)  ; CBufferLoadLegacy(handle,regIndex)
  %6778 = extractvalue %dx.types.CBufRet.i32 %6777, 0
  %6779 = extractvalue %dx.types.CBufRet.i32 %6777, 1
  %6780 = extractvalue %dx.types.CBufRet.i32 %6777, 2
  %6781 = extractvalue %dx.types.CBufRet.i32 %6777, 3
  %6782 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6778, i32* %6782, align 4
  %6783 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6779, i32* %6783, align 4
  %6784 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6780, i32* %6784, align 4
  %6785 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6781, i32* %6785, align 4
  %6786 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6775
  %6787 = load i32, i32* %6786, align 4, !tbaa !108, !noalias !112
  %6788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6789 = extractvalue %dx.types.ResRet.i32 %6788, 0
  %6790 = lshr i32 %6789, 16
  %6791 = and i32 %6790, 31
  %6792 = shl i32 %6714, %6791
  %6793 = add i32 %6792, %6713
  %6794 = shl i32 %6793, 2
  %6795 = add i32 %6794, %6787
  %6796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6795, i32 undef)  ; BufferLoad(srv,index,wot)
  %6797 = extractvalue %dx.types.ResRet.i32 %6796, 0
  %6798 = icmp eq i32 %6797, 0
  br i1 %6798, label %6816, label %6799

; <label>:6799                                    ; preds = %6771
  %6800 = icmp slt i32 %6797, 0
  %6801 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6772
  %6802 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6772
  %6803 = bitcast float* %6801 to i32*
  %6804 = bitcast float* %6802 to i32*
  br i1 %6800, label %6805, label %6812

; <label>:6805                                    ; preds = %6799
  %6806 = and i32 %6797, 1073741823
  %6807 = add i32 %6787, 20
  %6808 = add i32 %6807, %6806
  %6809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6808, i32 undef)  ; BufferLoad(srv,index,wot)
  %6810 = extractvalue %dx.types.ResRet.i32 %6809, 0
  %6811 = extractvalue %dx.types.ResRet.i32 %6809, 1
  br label %6812

; <label>:6812                                    ; preds = %6805, %6799
  %6813 = phi i32 [ %6810, %6805 ], [ %6721, %6799 ]
  %6814 = phi i32 [ %6811, %6805 ], [ %6722, %6799 ]
  store i32 %6813, i32* %6803, align 4
  store i32 %6814, i32* %6804, align 4
  %6815 = add i32 %6772, 1
  br label %6816

; <label>:6816                                    ; preds = %6812, %6771
  %6817 = phi i32 [ %6772, %6771 ], [ %6815, %6812 ]
  %6818 = add nuw i32 %6773, 1
  %6819 = icmp eq i32 %6818, %6768
  br i1 %6819, label %6820, label %6771

; <label>:6820                                    ; preds = %6816
  br label %6821

; <label>:6821                                    ; preds = %6820, %6765
  %6822 = phi i32 [ %6766, %6765 ], [ %6817, %6820 ]
  %6823 = icmp eq i32 %6822, 1
  %6824 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6825 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6823, label %6826, label %6829

; <label>:6826                                    ; preds = %6821
  %6827 = load float, float* %6824, align 4
  %6828 = load float, float* %6825, align 4
  br label %6856

; <label>:6829                                    ; preds = %6821
  %6830 = load float, float* %6824, align 4
  %6831 = load float, float* %6825, align 4
  %6832 = fdiv fast float 1.000000e+00, %6831
  %6833 = fsub fast float %6830, %6832
  %6834 = icmp ugt i32 %6822, 1
  br i1 %6834, label %6835, label %6851

; <label>:6835                                    ; preds = %6829
  br label %6836

; <label>:6836                                    ; preds = %6836, %6835
  %6837 = phi float [ %6846, %6836 ], [ %6833, %6835 ]
  %6838 = phi float [ %6847, %6836 ], [ %6830, %6835 ]
  %6839 = phi i32 [ %6848, %6836 ], [ 1, %6835 ]
  %6840 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6839
  %6841 = load float, float* %6840, align 4
  %6842 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6839
  %6843 = load float, float* %6842, align 4
  %6844 = fdiv fast float 1.000000e+00, %6843
  %6845 = fsub fast float %6841, %6844
  %6846 = call float @dx.op.binary.f32(i32 36, float %6837, float %6845)  ; FMin(a,b)
  %6847 = call float @dx.op.binary.f32(i32 35, float %6838, float %6841)  ; FMax(a,b)
  %6848 = add nuw i32 %6839, 1
  %6849 = icmp eq i32 %6848, %6822
  br i1 %6849, label %6850, label %6836

; <label>:6850                                    ; preds = %6836
  br label %6851

; <label>:6851                                    ; preds = %6850, %6829
  %6852 = phi float [ %6833, %6829 ], [ %6846, %6850 ]
  %6853 = phi float [ %6830, %6829 ], [ %6847, %6850 ]
  %6854 = fsub fast float %6853, %6852
  %6855 = fdiv fast float 1.000000e+00, %6854
  br label %6856

; <label>:6856                                    ; preds = %6851, %6826
  %6857 = phi float [ %6827, %6826 ], [ %6853, %6851 ]
  %6858 = phi float [ %6828, %6826 ], [ %6855, %6851 ]
  %6859 = fadd fast float %6560, %6857
  %6860 = fmul fast float %6859, %6858
  %6861 = call float @dx.op.unary.f32(i32 7, float %6860)  ; Saturate(value)
  %6862 = fmul fast float %6861, 2.000000e+00
  %6863 = fsub fast float 1.000000e+00, %6862
  %6864 = fmul fast float %6698, %6698
  %6865 = fsub fast float %6699, %6864
  %6866 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6865)  ; FMax(a,b)
  %6867 = fdiv fast float 1.000000e+00, %6866
  %6868 = fmul fast float %6699, %6698
  %6869 = fsub fast float %6700, %6868
  %6870 = fsub fast float %6863, %6698
  %6871 = fmul fast float %6863, %6863
  %6872 = fsub fast float %6871, %6699
  %6873 = fmul fast float %6867, %6869
  %6874 = fmul fast float %6873, %6870
  %6875 = fsub fast float %6872, %6874
  %6876 = fmul fast float %6699, %6699
  %6877 = fsub fast float %6701, %6876
  %6878 = fmul fast float %6869, %6869
  %6879 = fmul fast float %6878, %6867
  %6880 = fsub fast float %6877, %6879
  %6881 = fdiv fast float %6875, %6880
  %6882 = fmul fast float %6881, %6869
  %6883 = fsub fast float %6870, %6882
  %6884 = fmul fast float %6883, %6867
  %6885 = fmul fast float %6884, %6698
  %6886 = fsub fast float 1.000000e+00, %6885
  %6887 = fmul fast float %6881, %6699
  %6888 = fsub fast float %6886, %6887
  %6889 = fmul fast float %6884, %6884
  %6890 = fmul fast float %6881, 4.000000e+00
  %6891 = fmul fast float %6890, %6888
  %6892 = fsub fast float %6889, %6891
  %6893 = call float @dx.op.unary.f32(i32 24, float %6892)  ; Sqrt(value)
  %6894 = fcmp fast oge float %6884, 0.000000e+00
  %6895 = fsub fast float -0.000000e+00, %6893
  %6896 = select i1 %6894, float %6895, float %6893
  %6897 = fsub fast float %6896, %6884
  %6898 = fdiv fast float %6897, %6881
  %6899 = fdiv fast float %6888, %6897
  %6900 = fmul fast float %6898, 5.000000e-01
  %6901 = fmul fast float %6899, 2.000000e+00
  %6902 = select i1 %6894, float %6900, float %6901
  %6903 = select i1 %6894, float %6901, float %6900
  %6904 = call float @dx.op.binary.f32(i32 35, float %6902, float %6903)  ; FMax(a,b)
  %6905 = call float @dx.op.binary.f32(i32 36, float %6902, float %6903)  ; FMin(a,b)
  %6906 = fcmp fast ogt float %6863, %6904
  %6907 = fsub fast float %6863, %6905
  %6908 = fsub fast float %6863, %6904
  %6909 = fsub fast float %6904, %6905
  %6910 = select i1 %6906, float %6908, float %6909
  %6911 = fmul float %6907, %6910
  %6912 = select i1 %6906, float %6905, float %6863
  %6913 = fcmp fast ogt float %6863, %6905
  %6914 = fmul fast float %6912, %6904
  %6915 = fadd fast float %6912, %6904
  %6916 = fmul fast float %6915, %6698
  %6917 = fadd fast float %6914, %6699
  %6918 = fsub fast float %6917, %6916
  %6919 = fdiv fast float %6918, %6911
  %6920 = select i1 %6913, float %6919, float 0.000000e+00
  %6921 = fsub fast float 1.000000e+00, %6920
  %6922 = select i1 %6906, float %6921, float %6920
  %6923 = call float @dx.op.unary.f32(i32 7, float %6922)  ; Saturate(value)
  %6924 = extractvalue %dx.types.CBufRet.f32 %6683, 3
  %6925 = fmul fast float %6924, %6923
  %6926 = fsub fast float 1.000000e+00, %6925
  br label %6927

; <label>:6927                                    ; preds = %6856, %6568, %6533, %6529, %6495
  %6928 = phi float [ 1.000000e+00, %6495 ], [ %6926, %6856 ], [ 1.000000e+00, %6533 ], [ 1.000000e+00, %6568 ], [ 1.000000e+00, %6529 ]
  %6929 = fcmp fast ogt float %6525, 0.000000e+00
  br i1 %6929, label %6930, label %7092, !dx.controlflow.hints !121

; <label>:6930                                    ; preds = %6927
  %6931 = fadd fast float %6438, %6412
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 2
  %6934 = extractvalue %dx.types.CBufRet.f32 %6932, 3
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 2
  %6937 = call float @dx.op.binary.f32(i32 35, float %6931, float 0.000000e+00)  ; FMax(a,b)
  %6938 = fadd fast float %6937, 0x3F10000000000000
  %6939 = fcmp fast oeq float %6936, 0.000000e+00
  br i1 %6939, label %6940, label %7007

; <label>:6940                                    ; preds = %6930
  %6941 = extractvalue %dx.types.CBufRet.f32 %6932, 1
  %6942 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6943 = fmul fast float %6942, %6427
  %6944 = fmul fast float %6941, %6428
  %6945 = fadd fast float %6943, 5.000000e-01
  %6946 = call float @dx.op.unary.f32(i32 27, float %6945)  ; Round_ni(value)
  %6947 = fadd fast float %6944, 5.000000e-01
  %6948 = call float @dx.op.unary.f32(i32 27, float %6947)  ; Round_ni(value)
  %6949 = fsub fast float %6945, %6946
  %6950 = fsub fast float %6947, %6948
  %6951 = fadd fast float %6946, -5.000000e-01
  %6952 = fadd fast float %6948, -5.000000e-01
  %6953 = fmul fast float %6949, 2.000000e+00
  %6954 = fsub fast float 3.000000e+00, %6953
  %6955 = fadd fast float %6953, 1.000000e+00
  %6956 = fsub fast float 2.000000e+00, %6949
  %6957 = bitcast float %6954 to i32
  %6958 = sub nsw i32 2129859010, %6957
  %6959 = bitcast i32 %6958 to float
  %6960 = fmul fast float %6959, %6956
  %6961 = fadd fast float %6960, -1.000000e+00
  %6962 = bitcast float %6955 to i32
  %6963 = sub nsw i32 2129859010, %6962
  %6964 = bitcast i32 %6963 to float
  %6965 = fmul fast float %6964, %6949
  %6966 = fadd fast float %6965, 1.000000e+00
  %6967 = fmul fast float %6950, 2.000000e+00
  %6968 = fsub fast float 3.000000e+00, %6967
  %6969 = fadd fast float %6967, 1.000000e+00
  %6970 = fsub fast float 2.000000e+00, %6950
  %6971 = bitcast float %6968 to i32
  %6972 = sub nsw i32 2129859010, %6971
  %6973 = bitcast i32 %6972 to float
  %6974 = fmul fast float %6973, %6970
  %6975 = fadd fast float %6974, -1.000000e+00
  %6976 = bitcast float %6969 to i32
  %6977 = sub nsw i32 2129859010, %6976
  %6978 = bitcast i32 %6977 to float
  %6979 = fmul fast float %6978, %6950
  %6980 = fadd fast float %6979, 1.000000e+00
  %6981 = fadd fast float %6961, %6951
  %6982 = fmul fast float %6981, %6933
  %6983 = fadd fast float %6975, %6952
  %6984 = fmul fast float %6983, %6934
  %6985 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6982, float %6984, float undef, float undef, i32 0, i32 0, i32 undef, float %6938)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6986 = extractvalue %dx.types.ResRet.f32 %6985, 0
  %6987 = fmul fast float %6986, %6954
  %6988 = fadd fast float %6966, %6951
  %6989 = fmul fast float %6988, %6933
  %6990 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6989, float %6984, float undef, float undef, i32 0, i32 0, i32 undef, float %6938)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6991 = extractvalue %dx.types.ResRet.f32 %6990, 0
  %6992 = fmul fast float %6991, %6955
  %6993 = fadd fast float %6980, %6952
  %6994 = fmul fast float %6993, %6934
  %6995 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6982, float %6994, float undef, float undef, i32 0, i32 0, i32 undef, float %6938)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6996 = extractvalue %dx.types.ResRet.f32 %6995, 0
  %6997 = fmul fast float %6996, %6954
  %6998 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6989, float %6994, float undef, float undef, i32 0, i32 0, i32 undef, float %6938)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6999 = extractvalue %dx.types.ResRet.f32 %6998, 0
  %7000 = fmul fast float %6999, %6955
  %7001 = fadd fast float %7000, %6997
  %7002 = fmul fast float %7001, %6969
  %7003 = fadd fast float %6992, %6987
  %7004 = fmul fast float %7003, %6968
  %7005 = fadd fast float %7004, %7002
  %7006 = fmul fast float %7005, 6.250000e-02
  br label %7092

; <label>:7007                                    ; preds = %6930
  %7008 = fmul fast float %243, 0x401921FB60000000
  %7009 = call float @dx.op.unary.f32(i32 13, float %7008)  ; Sin(value)
  %7010 = call float @dx.op.unary.f32(i32 12, float %7008)  ; Cos(value)
  %7011 = fsub fast float -0.000000e+00, %7009
  br label %7012

; <label>:7012                                    ; preds = %7061, %7007
  %7013 = phi float [ 0.000000e+00, %7007 ], [ %7056, %7061 ]
  %7014 = phi float [ 0.000000e+00, %7007 ], [ %7058, %7061 ]
  %7015 = phi i32 [ 0, %7007 ], [ %7062, %7061 ]
  %7016 = mul i32 %7015, 2
  %7017 = add i32 0, %7016
  %7018 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7017
  %7019 = load float, float* %7018, align 4
  %7020 = mul i32 %7015, 2
  %7021 = add i32 1, %7020
  %7022 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7021
  %7023 = load float, float* %7022, align 4
  %7024 = fmul fast float %7019, %7010
  %7025 = call float @dx.op.tertiary.f32(i32 46, float %7023, float %7011, float %7024)  ; FMad(a,b,c)
  %7026 = fmul fast float %7019, %7009
  %7027 = call float @dx.op.tertiary.f32(i32 46, float %7023, float %7010, float %7026)  ; FMad(a,b,c)
  %7028 = fmul fast float %7025, %6936
  %7029 = fmul fast float %7027, %6936
  %7030 = fadd fast float %7028, %6427
  %7031 = fadd fast float %7029, %6428
  %7032 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7030, float %7031, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = extractvalue %dx.types.ResRet.f32 %7032, 1
  %7035 = extractvalue %dx.types.ResRet.f32 %7032, 2
  %7036 = extractvalue %dx.types.ResRet.f32 %7032, 3
  %7037 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7033, float* %7037, align 4
  %7038 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7034, float* %7038, align 4
  %7039 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7035, float* %7039, align 4
  %7040 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7036, float* %7040, align 4
  %7041 = fsub fast float %7033, %6938
  %7042 = fcmp fast olt float %7041, 0.000000e+00
  %7043 = select i1 %7042, float 0.000000e+00, float 1.000000e+00
  %7044 = fadd fast float %7043, %7013
  %7045 = fmul fast float %7043, %7041
  %7046 = fadd fast float %7045, %7014
  br label %7047

; <label>:7047                                    ; preds = %7047, %7012
  %7048 = phi i32 [ 1, %7012 ], [ %7059, %7047 ]
  %7049 = phi float [ %7046, %7012 ], [ %7058, %7047 ]
  %7050 = phi float [ %7044, %7012 ], [ %7056, %7047 ]
  %7051 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7048
  %7052 = load float, float* %7051, align 4, !tbaa !122, !noalias !112
  %7053 = fsub fast float %7052, %6938
  %7054 = fcmp fast olt float %7053, 0.000000e+00
  %7055 = select i1 %7054, float 0.000000e+00, float 1.000000e+00
  %7056 = fadd fast float %7055, %7050
  %7057 = fmul fast float %7055, %7053
  %7058 = fadd fast float %7057, %7049
  %7059 = add nuw nsw i32 %7048, 1
  %7060 = icmp eq i32 %7059, 4
  br i1 %7060, label %7061, label %7047, !llvm.loop !124

; <label>:7061                                    ; preds = %7047
  %7062 = add nuw nsw i32 %7015, 1
  %7063 = icmp eq i32 %7062, 8
  br i1 %7063, label %7064, label %7012, !llvm.loop !125

; <label>:7064                                    ; preds = %7061
  %7065 = fdiv fast float 1.000000e+00, %7056
  %7066 = fmul fast float %7065, %7058
  %7067 = fdiv fast float 1.000000e+00, %6938
  %7068 = fmul fast float %7066, %7067
  %7069 = call float @dx.op.unary.f32(i32 7, float %7068)  ; Saturate(value)
  %7070 = call float @dx.op.binary.f32(i32 35, float %7069, float 0.000000e+00)  ; FMax(a,b)
  %7071 = fmul fast float %7056, 3.125000e-02
  %7072 = call float @dx.op.unary.f32(i32 7, float %7071)  ; Saturate(value)
  %7073 = fmul fast float %7072, 2.000000e+00
  %7074 = fadd fast float %7073, -1.000000e+00
  %7075 = fcmp fast ogt float %7074, 0.000000e+00
  %7076 = fcmp fast olt float %7074, 0.000000e+00
  %7077 = zext i1 %7075 to i32
  %7078 = zext i1 %7076 to i32
  %7079 = sub nsw i32 %7077, %7078
  %7080 = sitofp i32 %7079 to float
  %7081 = fmul fast float %7080, %7074
  %7082 = fsub fast float 1.000000e+00, %7081
  %7083 = fmul fast float %7082, %7082
  %7084 = fmul fast float %7083, %7082
  %7085 = fsub fast float %7082, %7084
  %7086 = fmul fast float %7085, %7070
  %7087 = fsub fast float 1.000000e+00, %7084
  %7088 = fsub fast float %7087, %7086
  %7089 = fmul fast float %7080, 5.000000e-01
  %7090 = fmul fast float %7089, %7088
  %7091 = fsub fast float 5.000000e-01, %7090
  br label %7092

; <label>:7092                                    ; preds = %7064, %6940, %6927
  %7093 = phi float [ 1.000000e+00, %6927 ], [ %7006, %6940 ], [ %7091, %7064 ]
  %7094 = fcmp fast ogt float %6523, 0.000000e+00
  br i1 %7094, label %7095, label %7259, !dx.controlflow.hints !126

; <label>:7095                                    ; preds = %7092
  %7096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7097 = extractvalue %dx.types.CBufRet.f32 %7096, 1
  %7098 = fadd fast float %7097, %6412
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 2
  %7101 = extractvalue %dx.types.CBufRet.f32 %7099, 3
  %7102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7103 = extractvalue %dx.types.CBufRet.f32 %7102, 1
  %7104 = call float @dx.op.binary.f32(i32 35, float %7098, float 0.000000e+00)  ; FMax(a,b)
  %7105 = fadd fast float %7104, 0x3F10000000000000
  %7106 = fcmp fast oeq float %7103, 0.000000e+00
  br i1 %7106, label %7107, label %7174

; <label>:7107                                    ; preds = %7095
  %7108 = extractvalue %dx.types.CBufRet.f32 %7099, 1
  %7109 = extractvalue %dx.types.CBufRet.f32 %7099, 0
  %7110 = fmul fast float %7109, %6419
  %7111 = fmul fast float %7108, %6420
  %7112 = fadd fast float %7110, 5.000000e-01
  %7113 = call float @dx.op.unary.f32(i32 27, float %7112)  ; Round_ni(value)
  %7114 = fadd fast float %7111, 5.000000e-01
  %7115 = call float @dx.op.unary.f32(i32 27, float %7114)  ; Round_ni(value)
  %7116 = fsub fast float %7112, %7113
  %7117 = fsub fast float %7114, %7115
  %7118 = fadd fast float %7113, -5.000000e-01
  %7119 = fadd fast float %7115, -5.000000e-01
  %7120 = fmul fast float %7116, 2.000000e+00
  %7121 = fsub fast float 3.000000e+00, %7120
  %7122 = fadd fast float %7120, 1.000000e+00
  %7123 = fsub fast float 2.000000e+00, %7116
  %7124 = bitcast float %7121 to i32
  %7125 = sub nsw i32 2129859010, %7124
  %7126 = bitcast i32 %7125 to float
  %7127 = fmul fast float %7126, %7123
  %7128 = fadd fast float %7127, -1.000000e+00
  %7129 = bitcast float %7122 to i32
  %7130 = sub nsw i32 2129859010, %7129
  %7131 = bitcast i32 %7130 to float
  %7132 = fmul fast float %7131, %7116
  %7133 = fadd fast float %7132, 1.000000e+00
  %7134 = fmul fast float %7117, 2.000000e+00
  %7135 = fsub fast float 3.000000e+00, %7134
  %7136 = fadd fast float %7134, 1.000000e+00
  %7137 = fsub fast float 2.000000e+00, %7117
  %7138 = bitcast float %7135 to i32
  %7139 = sub nsw i32 2129859010, %7138
  %7140 = bitcast i32 %7139 to float
  %7141 = fmul fast float %7140, %7137
  %7142 = fadd fast float %7141, -1.000000e+00
  %7143 = bitcast float %7136 to i32
  %7144 = sub nsw i32 2129859010, %7143
  %7145 = bitcast i32 %7144 to float
  %7146 = fmul fast float %7145, %7117
  %7147 = fadd fast float %7146, 1.000000e+00
  %7148 = fadd fast float %7128, %7118
  %7149 = fmul fast float %7148, %7100
  %7150 = fadd fast float %7142, %7119
  %7151 = fmul fast float %7150, %7101
  %7152 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7149, float %7151, float undef, float undef, i32 0, i32 0, i32 undef, float %7105)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7153 = extractvalue %dx.types.ResRet.f32 %7152, 0
  %7154 = fmul fast float %7153, %7121
  %7155 = fadd fast float %7133, %7118
  %7156 = fmul fast float %7155, %7100
  %7157 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7156, float %7151, float undef, float undef, i32 0, i32 0, i32 undef, float %7105)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7158 = extractvalue %dx.types.ResRet.f32 %7157, 0
  %7159 = fmul fast float %7158, %7122
  %7160 = fadd fast float %7147, %7119
  %7161 = fmul fast float %7160, %7101
  %7162 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7149, float %7161, float undef, float undef, i32 0, i32 0, i32 undef, float %7105)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7163 = extractvalue %dx.types.ResRet.f32 %7162, 0
  %7164 = fmul fast float %7163, %7121
  %7165 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7156, float %7161, float undef, float undef, i32 0, i32 0, i32 undef, float %7105)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7166 = extractvalue %dx.types.ResRet.f32 %7165, 0
  %7167 = fmul fast float %7166, %7122
  %7168 = fadd fast float %7167, %7164
  %7169 = fmul fast float %7168, %7136
  %7170 = fadd fast float %7159, %7154
  %7171 = fmul fast float %7170, %7135
  %7172 = fadd fast float %7171, %7169
  %7173 = fmul fast float %7172, 6.250000e-02
  br label %7259

; <label>:7174                                    ; preds = %7095
  %7175 = fmul fast float %243, 0x401921FB60000000
  %7176 = call float @dx.op.unary.f32(i32 13, float %7175)  ; Sin(value)
  %7177 = call float @dx.op.unary.f32(i32 12, float %7175)  ; Cos(value)
  %7178 = fsub fast float -0.000000e+00, %7176
  br label %7179

; <label>:7179                                    ; preds = %7228, %7174
  %7180 = phi float [ 0.000000e+00, %7174 ], [ %7223, %7228 ]
  %7181 = phi float [ 0.000000e+00, %7174 ], [ %7225, %7228 ]
  %7182 = phi i32 [ 0, %7174 ], [ %7229, %7228 ]
  %7183 = mul i32 %7182, 2
  %7184 = add i32 0, %7183
  %7185 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7184
  %7186 = load float, float* %7185, align 4
  %7187 = mul i32 %7182, 2
  %7188 = add i32 1, %7187
  %7189 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7188
  %7190 = load float, float* %7189, align 4
  %7191 = fmul fast float %7186, %7177
  %7192 = call float @dx.op.tertiary.f32(i32 46, float %7190, float %7178, float %7191)  ; FMad(a,b,c)
  %7193 = fmul fast float %7186, %7176
  %7194 = call float @dx.op.tertiary.f32(i32 46, float %7190, float %7177, float %7193)  ; FMad(a,b,c)
  %7195 = fmul fast float %7192, %7103
  %7196 = fmul fast float %7194, %7103
  %7197 = fadd fast float %7195, %6419
  %7198 = fadd fast float %7196, %6420
  %7199 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7197, float %7198, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = extractvalue %dx.types.ResRet.f32 %7199, 1
  %7202 = extractvalue %dx.types.ResRet.f32 %7199, 2
  %7203 = extractvalue %dx.types.ResRet.f32 %7199, 3
  %7204 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7200, float* %7204, align 4
  %7205 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7201, float* %7205, align 4
  %7206 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7202, float* %7206, align 4
  %7207 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7203, float* %7207, align 4
  %7208 = fsub fast float %7200, %7105
  %7209 = fcmp fast olt float %7208, 0.000000e+00
  %7210 = select i1 %7209, float 0.000000e+00, float 1.000000e+00
  %7211 = fadd fast float %7210, %7180
  %7212 = fmul fast float %7210, %7208
  %7213 = fadd fast float %7212, %7181
  br label %7214

; <label>:7214                                    ; preds = %7214, %7179
  %7215 = phi i32 [ 1, %7179 ], [ %7226, %7214 ]
  %7216 = phi float [ %7213, %7179 ], [ %7225, %7214 ]
  %7217 = phi float [ %7211, %7179 ], [ %7223, %7214 ]
  %7218 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7215
  %7219 = load float, float* %7218, align 4, !tbaa !122, !noalias !112
  %7220 = fsub fast float %7219, %7105
  %7221 = fcmp fast olt float %7220, 0.000000e+00
  %7222 = select i1 %7221, float 0.000000e+00, float 1.000000e+00
  %7223 = fadd fast float %7222, %7217
  %7224 = fmul fast float %7222, %7220
  %7225 = fadd fast float %7224, %7216
  %7226 = add nuw nsw i32 %7215, 1
  %7227 = icmp eq i32 %7226, 4
  br i1 %7227, label %7228, label %7214, !llvm.loop !124

; <label>:7228                                    ; preds = %7214
  %7229 = add nuw nsw i32 %7182, 1
  %7230 = icmp eq i32 %7229, 8
  br i1 %7230, label %7231, label %7179, !llvm.loop !125

; <label>:7231                                    ; preds = %7228
  %7232 = fdiv fast float 1.000000e+00, %7223
  %7233 = fmul fast float %7232, %7225
  %7234 = fdiv fast float 1.000000e+00, %7105
  %7235 = fmul fast float %7233, %7234
  %7236 = call float @dx.op.unary.f32(i32 7, float %7235)  ; Saturate(value)
  %7237 = call float @dx.op.binary.f32(i32 35, float %7236, float 0.000000e+00)  ; FMax(a,b)
  %7238 = fmul fast float %7223, 3.125000e-02
  %7239 = call float @dx.op.unary.f32(i32 7, float %7238)  ; Saturate(value)
  %7240 = fmul fast float %7239, 2.000000e+00
  %7241 = fadd fast float %7240, -1.000000e+00
  %7242 = fcmp fast ogt float %7241, 0.000000e+00
  %7243 = fcmp fast olt float %7241, 0.000000e+00
  %7244 = zext i1 %7242 to i32
  %7245 = zext i1 %7243 to i32
  %7246 = sub nsw i32 %7244, %7245
  %7247 = sitofp i32 %7246 to float
  %7248 = fmul fast float %7247, %7241
  %7249 = fsub fast float 1.000000e+00, %7248
  %7250 = fmul fast float %7249, %7249
  %7251 = fmul fast float %7250, %7249
  %7252 = fsub fast float %7249, %7251
  %7253 = fmul fast float %7252, %7237
  %7254 = fsub fast float 1.000000e+00, %7251
  %7255 = fsub fast float %7254, %7253
  %7256 = fmul fast float %7247, 5.000000e-01
  %7257 = fmul fast float %7256, %7255
  %7258 = fsub fast float 5.000000e-01, %7257
  br label %7259

; <label>:7259                                    ; preds = %7231, %7107, %7092
  %7260 = phi float [ 1.000000e+00, %7092 ], [ %7173, %7107 ], [ %7258, %7231 ]
  %7261 = fcmp fast ogt float %6522, 0.000000e+00
  br i1 %7261, label %7262, label %7426, !dx.controlflow.hints !127

; <label>:7262                                    ; preds = %7259
  %7263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7263, 0
  %7265 = fadd fast float %7264, %6412
  %7266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7267 = extractvalue %dx.types.CBufRet.f32 %7266, 2
  %7268 = extractvalue %dx.types.CBufRet.f32 %7266, 3
  %7269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7270 = extractvalue %dx.types.CBufRet.f32 %7269, 0
  %7271 = call float @dx.op.binary.f32(i32 35, float %7265, float 0.000000e+00)  ; FMax(a,b)
  %7272 = fadd fast float %7271, 0x3F10000000000000
  %7273 = fcmp fast oeq float %7270, 0.000000e+00
  br i1 %7273, label %7274, label %7341

; <label>:7274                                    ; preds = %7262
  %7275 = extractvalue %dx.types.CBufRet.f32 %7266, 1
  %7276 = extractvalue %dx.types.CBufRet.f32 %7266, 0
  %7277 = fmul fast float %7276, %6404
  %7278 = fmul fast float %7275, %6408
  %7279 = fadd fast float %7277, 5.000000e-01
  %7280 = call float @dx.op.unary.f32(i32 27, float %7279)  ; Round_ni(value)
  %7281 = fadd fast float %7278, 5.000000e-01
  %7282 = call float @dx.op.unary.f32(i32 27, float %7281)  ; Round_ni(value)
  %7283 = fsub fast float %7279, %7280
  %7284 = fsub fast float %7281, %7282
  %7285 = fadd fast float %7280, -5.000000e-01
  %7286 = fadd fast float %7282, -5.000000e-01
  %7287 = fmul fast float %7283, 2.000000e+00
  %7288 = fsub fast float 3.000000e+00, %7287
  %7289 = fadd fast float %7287, 1.000000e+00
  %7290 = fsub fast float 2.000000e+00, %7283
  %7291 = bitcast float %7288 to i32
  %7292 = sub nsw i32 2129859010, %7291
  %7293 = bitcast i32 %7292 to float
  %7294 = fmul fast float %7293, %7290
  %7295 = fadd fast float %7294, -1.000000e+00
  %7296 = bitcast float %7289 to i32
  %7297 = sub nsw i32 2129859010, %7296
  %7298 = bitcast i32 %7297 to float
  %7299 = fmul fast float %7298, %7283
  %7300 = fadd fast float %7299, 1.000000e+00
  %7301 = fmul fast float %7284, 2.000000e+00
  %7302 = fsub fast float 3.000000e+00, %7301
  %7303 = fadd fast float %7301, 1.000000e+00
  %7304 = fsub fast float 2.000000e+00, %7284
  %7305 = bitcast float %7302 to i32
  %7306 = sub nsw i32 2129859010, %7305
  %7307 = bitcast i32 %7306 to float
  %7308 = fmul fast float %7307, %7304
  %7309 = fadd fast float %7308, -1.000000e+00
  %7310 = bitcast float %7303 to i32
  %7311 = sub nsw i32 2129859010, %7310
  %7312 = bitcast i32 %7311 to float
  %7313 = fmul fast float %7312, %7284
  %7314 = fadd fast float %7313, 1.000000e+00
  %7315 = fadd fast float %7295, %7285
  %7316 = fmul fast float %7315, %7267
  %7317 = fadd fast float %7309, %7286
  %7318 = fmul fast float %7317, %7268
  %7319 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7316, float %7318, float undef, float undef, i32 0, i32 0, i32 undef, float %7272)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7320 = extractvalue %dx.types.ResRet.f32 %7319, 0
  %7321 = fmul fast float %7320, %7288
  %7322 = fadd fast float %7300, %7285
  %7323 = fmul fast float %7322, %7267
  %7324 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7323, float %7318, float undef, float undef, i32 0, i32 0, i32 undef, float %7272)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7325 = extractvalue %dx.types.ResRet.f32 %7324, 0
  %7326 = fmul fast float %7325, %7289
  %7327 = fadd fast float %7314, %7286
  %7328 = fmul fast float %7327, %7268
  %7329 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7316, float %7328, float undef, float undef, i32 0, i32 0, i32 undef, float %7272)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7330 = extractvalue %dx.types.ResRet.f32 %7329, 0
  %7331 = fmul fast float %7330, %7288
  %7332 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7323, float %7328, float undef, float undef, i32 0, i32 0, i32 undef, float %7272)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7333 = extractvalue %dx.types.ResRet.f32 %7332, 0
  %7334 = fmul fast float %7333, %7289
  %7335 = fadd fast float %7334, %7331
  %7336 = fmul fast float %7335, %7303
  %7337 = fadd fast float %7326, %7321
  %7338 = fmul fast float %7337, %7302
  %7339 = fadd fast float %7338, %7336
  %7340 = fmul fast float %7339, 6.250000e-02
  br label %7426

; <label>:7341                                    ; preds = %7262
  %7342 = fmul fast float %243, 0x401921FB60000000
  %7343 = call float @dx.op.unary.f32(i32 13, float %7342)  ; Sin(value)
  %7344 = call float @dx.op.unary.f32(i32 12, float %7342)  ; Cos(value)
  %7345 = fsub fast float -0.000000e+00, %7343
  br label %7346

; <label>:7346                                    ; preds = %7395, %7341
  %7347 = phi float [ 0.000000e+00, %7341 ], [ %7390, %7395 ]
  %7348 = phi float [ 0.000000e+00, %7341 ], [ %7392, %7395 ]
  %7349 = phi i32 [ 0, %7341 ], [ %7396, %7395 ]
  %7350 = mul i32 %7349, 2
  %7351 = add i32 0, %7350
  %7352 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7351
  %7353 = load float, float* %7352, align 4
  %7354 = mul i32 %7349, 2
  %7355 = add i32 1, %7354
  %7356 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7355
  %7357 = load float, float* %7356, align 4
  %7358 = fmul fast float %7353, %7344
  %7359 = call float @dx.op.tertiary.f32(i32 46, float %7357, float %7345, float %7358)  ; FMad(a,b,c)
  %7360 = fmul fast float %7353, %7343
  %7361 = call float @dx.op.tertiary.f32(i32 46, float %7357, float %7344, float %7360)  ; FMad(a,b,c)
  %7362 = fmul fast float %7359, %7270
  %7363 = fmul fast float %7361, %7270
  %7364 = fadd fast float %7362, %6404
  %7365 = fadd fast float %7363, %6408
  %7366 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7364, float %7365, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7367 = extractvalue %dx.types.ResRet.f32 %7366, 0
  %7368 = extractvalue %dx.types.ResRet.f32 %7366, 1
  %7369 = extractvalue %dx.types.ResRet.f32 %7366, 2
  %7370 = extractvalue %dx.types.ResRet.f32 %7366, 3
  %7371 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7367, float* %7371, align 4
  %7372 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7368, float* %7372, align 4
  %7373 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7369, float* %7373, align 4
  %7374 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7370, float* %7374, align 4
  %7375 = fsub fast float %7367, %7272
  %7376 = fcmp fast olt float %7375, 0.000000e+00
  %7377 = select i1 %7376, float 0.000000e+00, float 1.000000e+00
  %7378 = fadd fast float %7377, %7347
  %7379 = fmul fast float %7377, %7375
  %7380 = fadd fast float %7379, %7348
  br label %7381

; <label>:7381                                    ; preds = %7381, %7346
  %7382 = phi i32 [ 1, %7346 ], [ %7393, %7381 ]
  %7383 = phi float [ %7380, %7346 ], [ %7392, %7381 ]
  %7384 = phi float [ %7378, %7346 ], [ %7390, %7381 ]
  %7385 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7382
  %7386 = load float, float* %7385, align 4, !tbaa !122, !noalias !112
  %7387 = fsub fast float %7386, %7272
  %7388 = fcmp fast olt float %7387, 0.000000e+00
  %7389 = select i1 %7388, float 0.000000e+00, float 1.000000e+00
  %7390 = fadd fast float %7389, %7384
  %7391 = fmul fast float %7389, %7387
  %7392 = fadd fast float %7391, %7383
  %7393 = add nuw nsw i32 %7382, 1
  %7394 = icmp eq i32 %7393, 4
  br i1 %7394, label %7395, label %7381, !llvm.loop !124

; <label>:7395                                    ; preds = %7381
  %7396 = add nuw nsw i32 %7349, 1
  %7397 = icmp eq i32 %7396, 8
  br i1 %7397, label %7398, label %7346, !llvm.loop !125

; <label>:7398                                    ; preds = %7395
  %7399 = fdiv fast float 1.000000e+00, %7390
  %7400 = fmul fast float %7399, %7392
  %7401 = fdiv fast float 1.000000e+00, %7272
  %7402 = fmul fast float %7400, %7401
  %7403 = call float @dx.op.unary.f32(i32 7, float %7402)  ; Saturate(value)
  %7404 = call float @dx.op.binary.f32(i32 35, float %7403, float 0.000000e+00)  ; FMax(a,b)
  %7405 = fmul fast float %7390, 3.125000e-02
  %7406 = call float @dx.op.unary.f32(i32 7, float %7405)  ; Saturate(value)
  %7407 = fmul fast float %7406, 2.000000e+00
  %7408 = fadd fast float %7407, -1.000000e+00
  %7409 = fcmp fast ogt float %7408, 0.000000e+00
  %7410 = fcmp fast olt float %7408, 0.000000e+00
  %7411 = zext i1 %7409 to i32
  %7412 = zext i1 %7410 to i32
  %7413 = sub nsw i32 %7411, %7412
  %7414 = sitofp i32 %7413 to float
  %7415 = fmul fast float %7414, %7408
  %7416 = fsub fast float 1.000000e+00, %7415
  %7417 = fmul fast float %7416, %7416
  %7418 = fmul fast float %7417, %7416
  %7419 = fsub fast float %7416, %7418
  %7420 = fmul fast float %7419, %7404
  %7421 = fsub fast float 1.000000e+00, %7418
  %7422 = fsub fast float %7421, %7420
  %7423 = fmul fast float %7414, 5.000000e-01
  %7424 = fmul fast float %7423, %7422
  %7425 = fsub fast float 5.000000e-01, %7424
  br label %7426

; <label>:7426                                    ; preds = %7398, %7274, %7259
  %7427 = phi float [ 1.000000e+00, %7259 ], [ %7340, %7274 ], [ %7425, %7398 ]
  %7428 = fsub fast float %7093, %6928
  %7429 = fmul fast float %7428, %6466
  %7430 = fadd fast float %7429, %6928
  %7431 = fsub fast float %7260, %7430
  %7432 = fmul fast float %7431, %6496
  %7433 = fadd fast float %7432, %7430
  %7434 = fsub fast float %7427, %7433
  %7435 = fmul fast float %7434, %6522
  %7436 = fadd fast float %7435, %7433
  %7437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7437, 2
  %7439 = fcmp fast ogt float %7438, 0.000000e+00
  br i1 %7439, label %7440, label %7480, !dx.controlflow.hints !128

; <label>:7440                                    ; preds = %7426
  %7441 = fcmp fast ugt float %7438, 0.000000e+00
  br i1 %7441, label %7442, label %7477

; <label>:7442                                    ; preds = %7440
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 0
  %7445 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7446 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7447 = extractvalue %dx.types.CBufRet.f32 %7443, 3
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 0
  %7450 = extractvalue %dx.types.CBufRet.f32 %7448, 1
  %7451 = extractvalue %dx.types.CBufRet.f32 %7448, 2
  %7452 = extractvalue %dx.types.CBufRet.f32 %7448, 3
  %7453 = extractvalue %dx.types.CBufRet.f32 %7437, 0
  %7454 = extractvalue %dx.types.CBufRet.f32 %7437, 1
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.CBufRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.CBufRet.f32 %7455, 2
  %7459 = fadd fast float %7456, %6381
  %7460 = fadd fast float %7457, %6382
  %7461 = fadd fast float %7458, %6383
  %7462 = fmul fast float %7459, %7444
  %7463 = call float @dx.op.tertiary.f32(i32 46, float %7445, float %7460, float %7462)  ; FMad(a,b,c)
  %7464 = call float @dx.op.tertiary.f32(i32 46, float %7446, float %7461, float %7463)  ; FMad(a,b,c)
  %7465 = fadd fast float %7464, %7447
  %7466 = fmul fast float %7459, %7449
  %7467 = call float @dx.op.tertiary.f32(i32 46, float %7450, float %7460, float %7466)  ; FMad(a,b,c)
  %7468 = call float @dx.op.tertiary.f32(i32 46, float %7451, float %7461, float %7467)  ; FMad(a,b,c)
  %7469 = fadd fast float %7468, %7452
  %7470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7465, float %7469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7471 = extractvalue %dx.types.ResRet.f32 %7470, 0
  %7472 = fmul fast float %7471, %7454
  %7473 = fadd fast float %7472, %7453
  %7474 = call float @dx.op.unary.f32(i32 7, float %7473)  ; Saturate(value)
  %7475 = fmul fast float %7474, %7438
  %7476 = fsub fast float 1.000000e+00, %7475
  br label %7477

; <label>:7477                                    ; preds = %7442, %7440
  %7478 = phi float [ %7476, %7442 ], [ 1.000000e+00, %7440 ]
  %7479 = fmul fast float %7478, %7436
  br label %7480

; <label>:7480                                    ; preds = %7477, %7426, %6361
  %7481 = phi float [ 1.000000e+00, %6361 ], [ %7479, %7477 ], [ %7436, %7426 ]
  %7482 = call float @dx.op.binary.f32(i32 36, float %7481, float %7481)  ; FMin(a,b)
  %7483 = call float @dx.op.binary.f32(i32 36, float %7481, float %7482)  ; FMin(a,b)
  %7484 = fcmp fast ogt float %7483, 0.000000e+00
  br i1 %7484, label %7485, label %7650, !dx.controlflow.hints !129

; <label>:7485                                    ; preds = %7480
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7490 = extractvalue %dx.types.CBufRet.f32 %7486, 3
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.CBufRet.f32 %7491, 2
  %7495 = extractvalue %dx.types.CBufRet.f32 %7491, 3
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.CBufRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.CBufRet.f32 %7496, 2
  %7500 = extractvalue %dx.types.CBufRet.f32 %7496, 3
  %7501 = fmul fast float %7487, %6381
  %7502 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %7488, float %7501)  ; FMad(a,b,c)
  %7503 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %7489, float %7502)  ; FMad(a,b,c)
  %7504 = fadd fast float %7503, %7490
  %7505 = fmul fast float %7492, %6381
  %7506 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %7493, float %7505)  ; FMad(a,b,c)
  %7507 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %7494, float %7506)  ; FMad(a,b,c)
  %7508 = fadd fast float %7507, %7495
  %7509 = fmul fast float %7497, %6381
  %7510 = call float @dx.op.tertiary.f32(i32 46, float %6382, float %7498, float %7509)  ; FMad(a,b,c)
  %7511 = call float @dx.op.tertiary.f32(i32 46, float %6383, float %7499, float %7510)  ; FMad(a,b,c)
  %7512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7513 = extractvalue %dx.types.CBufRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.CBufRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.CBufRet.f32 %7512, 3
  %7516 = fmul fast float %7515, %7504
  %7517 = fmul fast float %7515, %7508
  %7518 = fadd fast float %7516, %7513
  %7519 = fadd fast float %7517, %7514
  %7520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7521 = extractvalue %dx.types.CBufRet.f32 %7520, 0
  %7522 = extractvalue %dx.types.CBufRet.f32 %7520, 1
  %7523 = fsub fast float %7518, %7521
  %7524 = fsub fast float %7519, %7522
  %7525 = fcmp fast olt float %7523, 0.000000e+00
  %7526 = fcmp fast olt float %7524, 0.000000e+00
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7530 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7531 = extractvalue %dx.types.CBufRet.f32 %7527, 3
  %7532 = select i1 %7525, float %7528, float %7530
  %7533 = select i1 %7526, float %7529, float %7531
  %7534 = fmul fast float %7532, %7523
  %7535 = fmul fast float %7533, %7524
  %7536 = call float @dx.op.unary.f32(i32 6, float %7534)  ; FAbs(value)
  %7537 = call float @dx.op.unary.f32(i32 6, float %7535)  ; FAbs(value)
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 0
  %7540 = call float @dx.op.binary.f32(i32 35, float %7536, float %7537)  ; FMax(a,b)
  %7541 = fsub fast float %7539, %7540
  %7542 = call float @dx.op.unary.f32(i32 7, float %7541)  ; Saturate(value)
  %7543 = fcmp fast ogt float %7542, 0.000000e+00
  br i1 %7543, label %7544, label %7585, !dx.controlflow.hints !130

; <label>:7544                                    ; preds = %7485
  %7545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7518, float %7519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7546 = extractvalue %dx.types.ResRet.f32 %7545, 1
  %7547 = fcmp fast ogt float %7546, 0.000000e+00
  br i1 %7547, label %7548, label %7580

; <label>:7548                                    ; preds = %7544
  %7549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7518, float %7519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7550 = extractvalue %dx.types.ResRet.f32 %7549, 0
  %7551 = extractvalue %dx.types.ResRet.f32 %7549, 1
  %7552 = extractvalue %dx.types.ResRet.f32 %7549, 2
  %7553 = extractvalue %dx.types.ResRet.f32 %7549, 3
  %7554 = fsub fast float 1.000000e+00, %7500
  %7555 = fsub fast float %7554, %7511
  %7556 = fmul fast float %7555, 0x400921FB60000000
  %7557 = fadd fast float %7556, 0x3FF921FB60000000
  %7558 = call float @dx.op.unary.f32(i32 13, float %7557)  ; Sin(value)
  %7559 = fadd fast float %7558, -1.000000e+00
  %7560 = fmul fast float %7559, 0x3FD45F3060000000
  %7561 = fmul fast float %7555, 0x401921FB60000000
  %7562 = fadd fast float %7561, 0x400921FB60000000
  %7563 = call float @dx.op.unary.f32(i32 13, float %7562)  ; Sin(value)
  %7564 = fadd fast float %7563, 0x3E7777A5C0000000
  %7565 = fmul fast float %7564, 0x3FC45F3060000000
  %7566 = fmul fast float %7555, 0x4022D97C80000000
  %7567 = fadd fast float %7566, 0x4012D97C80000000
  %7568 = call float @dx.op.unary.f32(i32 13, float %7567)  ; Sin(value)
  %7569 = fadd fast float %7568, 1.000000e+00
  %7570 = fmul fast float %7569, 0x3FBB2995E0000000
  %7571 = fmul fast float %7555, 0x402921FB60000000
  %7572 = fadd fast float %7571, 0x401921FB60000000
  %7573 = call float @dx.op.unary.f32(i32 13, float %7572)  ; Sin(value)
  %7574 = fadd fast float %7573, 0xBE8777A5C0000000
  %7575 = fmul fast float %7574, 0x3FB45F3060000000
  %7576 = call float @dx.op.dot4.f32(i32 56, float %7550, float %7551, float %7552, float %7553, float %7560, float %7565, float %7570, float %7575)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7577 = fmul fast float %7576, 0xBFF7154760000000
  %7578 = call float @dx.op.unary.f32(i32 21, float %7577)  ; Exp(value)
  %7579 = call float @dx.op.unary.f32(i32 7, float %7578)  ; Saturate(value)
  br label %7580

; <label>:7580                                    ; preds = %7548, %7544
  %7581 = phi float [ %7579, %7548 ], [ 1.000000e+00, %7544 ]
  %7582 = fadd fast float %7581, -1.000000e+00
  %7583 = fmul fast float %7582, %7542
  %7584 = fadd fast float %7583, 1.000000e+00
  br label %7585

; <label>:7585                                    ; preds = %7580, %7485
  %7586 = phi float [ %7584, %7580 ], [ 1.000000e+00, %7485 ]
  %7587 = fmul fast float %7586, %7481
  %7588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7589 = extractvalue %dx.types.CBufRet.f32 %7588, 0
  %7590 = extractvalue %dx.types.CBufRet.f32 %7588, 1
  %7591 = extractvalue %dx.types.CBufRet.f32 %7588, 2
  %7592 = fadd fast float %7589, %170
  %7593 = fadd fast float %7590, %171
  %7594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.f32 %7594, 1
  %7596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7596, 0
  %7598 = extractvalue %dx.types.CBufRet.f32 %7596, 1
  %7599 = extractvalue %dx.types.CBufRet.f32 %7596, 2
  %7600 = fsub fast float -0.000000e+00, %7592
  %7601 = fsub fast float -0.000000e+00, %7593
  %7602 = fsub fast float %5469, %7591
  %7603 = fadd fast float %7602, %7595
  %7604 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7600, float %7601, float %7603)  ; Dot3(ax,ay,az,bx,by,bz)
  %7605 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7597, float %7598, float %7599)  ; Dot3(ax,ay,az,bx,by,bz)
  %7606 = fdiv fast float 1.000000e+00, %7605
  %7607 = fmul fast float %7606, %7604
  %7608 = fmul fast float %7597, %7607
  %7609 = fmul fast float %7598, %7607
  %7610 = fadd fast float %7608, %7592
  %7611 = fadd fast float %7609, %7593
  %7612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7613 = extractvalue %dx.types.CBufRet.f32 %7612, 0
  %7614 = extractvalue %dx.types.CBufRet.f32 %7612, 1
  %7615 = fsub fast float %7610, %7613
  %7616 = fsub fast float %7611, %7614
  %7617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7618 = extractvalue %dx.types.CBufRet.f32 %7617, 2
  %7619 = extractvalue %dx.types.CBufRet.f32 %7617, 3
  %7620 = fmul fast float %7615, %7618
  %7621 = fmul fast float %7616, %7619
  %7622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.i32 %7622, 3
  %7624 = icmp eq i32 %7623, 0
  br i1 %7624, label %7630, label %7625

; <label>:7625                                    ; preds = %7585
  %7626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7620, float %7621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7627 = extractvalue %dx.types.ResRet.f32 %7626, 0
  %7628 = extractvalue %dx.types.ResRet.f32 %7626, 1
  %7629 = extractvalue %dx.types.ResRet.f32 %7626, 2
  br label %7635

; <label>:7630                                    ; preds = %7585
  %7631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7620, float %7621, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7632 = extractvalue %dx.types.ResRet.f32 %7631, 0
  %7633 = extractvalue %dx.types.ResRet.f32 %7631, 1
  %7634 = extractvalue %dx.types.ResRet.f32 %7631, 2
  br label %7635

; <label>:7635                                    ; preds = %7630, %7625
  %7636 = phi float [ %7627, %7625 ], [ %7632, %7630 ]
  %7637 = phi float [ %7628, %7625 ], [ %7633, %7630 ]
  %7638 = phi float [ %7629, %7625 ], [ %7634, %7630 ]
  %7639 = extractvalue %dx.types.CBufRet.f32 %7594, 2
  %7640 = fmul fast float %7639, %7636
  %7641 = extractvalue %dx.types.CBufRet.f32 %7594, 0
  %7642 = fsub fast float %7607, %7641
  %7643 = fsub fast float %7642, %7640
  %7644 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7643)  ; FMax(a,b)
  %7645 = fmul fast float %7644, %7637
  %7646 = call float @dx.op.binary.f32(i32 36, float %7638, float %7645)  ; FMin(a,b)
  %7647 = fmul fast float %7646, 0xBFF7154760000000
  %7648 = call float @dx.op.unary.f32(i32 21, float %7647)  ; Exp(value)
  %7649 = fmul fast float %7587, %7648
  br label %7650

; <label>:7650                                    ; preds = %7635, %7480
  %7651 = phi float [ %7649, %7635 ], [ %7481, %7480 ]
  %7652 = call float @dx.op.binary.f32(i32 36, float %7651, float %7651)  ; FMin(a,b)
  %7653 = call float @dx.op.binary.f32(i32 36, float %7651, float %7652)  ; FMin(a,b)
  %7654 = fcmp fast ogt float %7653, 0.000000e+00
  br i1 %7654, label %7655, label %7915, !dx.controlflow.hints !131

; <label>:7655                                    ; preds = %7650
  %7656 = fmul fast float %7651, %6373
  %7657 = fmul fast float %7651, %6374
  %7658 = fmul fast float %7651, %6375
  %7659 = fsub fast float %172, %5260
  %7660 = fcmp fast ogt float %7659, 0.000000e+00
  %7661 = fmul fast float %6362, 5.120000e+02
  %7662 = fmul fast float %6363, 5.120000e+02
  %7663 = fmul fast float %6364, 5.120000e+02
  %7664 = fadd fast float %7663, %172
  %7665 = fsub fast float %5260, %7664
  %7666 = fmul fast float %7665, 2.000000e+00
  %7667 = fadd fast float %7666, %7664
  %7668 = select i1 %7660, float %7667, float %7664
  %7669 = fsub fast float %7668, %172
  %7670 = call float @dx.op.dot3.f32(i32 55, float %7661, float %7662, float %7669, float %7661, float %7662, float %7669)  ; Dot3(ax,ay,az,bx,by,bz)
  %7671 = call float @dx.op.unary.f32(i32 25, float %7670)  ; Rsqrt(value)
  %7672 = fmul fast float %7671, %7661
  %7673 = fmul fast float %7671, %7662
  %7674 = fmul fast float %7671, %7669
  %7675 = fsub fast float %5260, %172
  %7676 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7675)  ; Dot3(ax,ay,az,bx,by,bz)
  %7677 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7672, float %7673, float %7674)  ; Dot3(ax,ay,az,bx,by,bz)
  %7678 = fdiv fast float 1.000000e+00, %7677
  %7679 = fmul fast float %7678, %7676
  %7680 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7659, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7681 = fcmp fast ogt float %7680, 0.000000e+00
  %7682 = fcmp fast olt float %7680, 0.000000e+00
  %7683 = zext i1 %7681 to i32
  %7684 = zext i1 %7682 to i32
  %7685 = sub nsw i32 %7683, %7684
  %7686 = sitofp i32 %7685 to float
  %7687 = fsub fast float %7668, %5260
  %7688 = call float @dx.op.dot3.f32(i32 55, float %7661, float %7662, float %7687, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7689 = fcmp fast ogt float %7688, 0.000000e+00
  %7690 = fcmp fast olt float %7688, 0.000000e+00
  %7691 = zext i1 %7689 to i32
  %7692 = zext i1 %7690 to i32
  %7693 = sub nsw i32 %7691, %7692
  %7694 = sitofp i32 %7693 to float
  %7695 = fcmp fast une float %7686, %7694
  br i1 %7695, label %7696, label %7706

; <label>:7696                                    ; preds = %7655
  %7697 = fmul fast float %7679, %7674
  %7698 = fmul fast float %7679, %7673
  %7699 = fmul fast float %7679, %7672
  %7700 = fmul fast float %7699, %7699
  %7701 = fmul fast float %7698, %7698
  %7702 = fadd fast float %7700, %7701
  %7703 = fmul fast float %7697, %7697
  %7704 = fadd fast float %7702, %7703
  %7705 = call float @dx.op.unary.f32(i32 24, float %7704)  ; Sqrt(value)
  br label %7716

; <label>:7706                                    ; preds = %7655
  %7707 = icmp slt i32 %7685, 0
  br i1 %7707, label %7708, label %7716

; <label>:7708                                    ; preds = %7706
  %7709 = fsub fast float %172, %7668
  %7710 = fmul fast float %7661, %7661
  %7711 = fmul fast float %7662, %7662
  %7712 = fadd fast float %7710, %7711
  %7713 = fmul fast float %7709, %7709
  %7714 = fadd fast float %7712, %7713
  %7715 = call float @dx.op.unary.f32(i32 24, float %7714)  ; Sqrt(value)
  br label %7716

; <label>:7716                                    ; preds = %7708, %7706, %7696
  %7717 = phi float [ %7705, %7696 ], [ %7715, %7708 ], [ 0.000000e+00, %7706 ]
  %7718 = fsub fast float -0.000000e+00, %7717
  %7719 = select i1 %7660, float -0.000000e+00, float %7718
  %7720 = fmul fast float %5257, 0x3FF7154760000000
  %7721 = fmul fast float %7720, %7719
  %7722 = fmul fast float %5258, 0x3FF7154760000000
  %7723 = fmul fast float %7722, %7719
  %7724 = fmul fast float %5259, 0x3FF7154760000000
  %7725 = fmul fast float %7724, %7719
  %7726 = call float @dx.op.unary.f32(i32 21, float %7721)  ; Exp(value)
  %7727 = call float @dx.op.unary.f32(i32 21, float %7723)  ; Exp(value)
  %7728 = call float @dx.op.unary.f32(i32 21, float %7725)  ; Exp(value)
  %7729 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7730 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  %7731 = call float @dx.op.unary.f32(i32 7, float %7728)  ; Saturate(value)
  %7732 = fmul fast float %7656, %7729
  %7733 = fmul fast float %7657, %7730
  %7734 = fmul fast float %7658, %7731
  %7735 = fsub fast float %6362, %5457
  %7736 = fsub fast float %6363, %5456
  %7737 = fsub fast float %6364, %5455
  %7738 = call float @dx.op.dot3.f32(i32 55, float %7735, float %7736, float %7737, float %7735, float %7736, float %7737)  ; Dot3(ax,ay,az,bx,by,bz)
  %7739 = call float @dx.op.unary.f32(i32 25, float %7738)  ; Rsqrt(value)
  %7740 = fmul fast float %7739, %7735
  %7741 = fmul fast float %7739, %7736
  %7742 = fmul fast float %7739, %7737
  %7743 = call float @dx.op.dot3.f32(i32 55, float %6362, float %6363, float %6364, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %7744 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5453, float %5452, float %7740, float %7741, float %7742)  ; Dot3(ax,ay,az,bx,by,bz)
  %7745 = call float @dx.op.unary.f32(i32 7, float %7743)  ; Saturate(value)
  %7746 = bitcast i32 %5496 to float
  %7747 = fmul fast float %7745, %7745
  %7748 = fmul fast float %7747, %7746
  %7749 = call float @dx.op.unary.f32(i32 7, float %7748)  ; Saturate(value)
  %7750 = fmul fast float %7749, %7745
  %7751 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %5463, float %7740, float %7741, float %7742)  ; Dot3(ax,ay,az,bx,by,bz)
  %7752 = fmul fast float %7751, %7751
  %7753 = call float @dx.op.unary.f32(i32 6, float %7743)  ; FAbs(value)
  %7754 = fsub fast float 1.000000e+00, %5490
  %7755 = fmul fast float %5472, %5472
  %7756 = fmul fast float %7755, %7754
  %7757 = fadd fast float %7756, %5490
  %7758 = bitcast float %7757 to i32
  %7759 = ashr i32 %7758, 1
  %7760 = add nsw i32 %7759, 532487669
  %7761 = bitcast i32 %7760 to float
  %7762 = fadd fast float %7761, %5472
  %7763 = fmul fast float %5490, %7752
  %7764 = fsub fast float 1.000000e+00, %7752
  %7765 = fadd fast float %7764, %7763
  %7766 = fmul fast float %7753, %7753
  %7767 = fmul fast float %7766, %7754
  %7768 = fadd fast float %7767, %5490
  %7769 = bitcast float %7768 to i32
  %7770 = ashr i32 %7769, 1
  %7771 = add nsw i32 %7770, 532487669
  %7772 = bitcast i32 %7771 to float
  %7773 = fadd fast float %7772, %7753
  %7774 = fmul fast float %7765, %7765
  %7775 = fmul fast float %7774, %7762
  %7776 = fmul fast float %7775, %7773
  %7777 = fdiv fast float 0x3FF0A00000000000, %7776
  %7778 = fmul fast float %7777, %5490
  %7779 = fmul fast float %5732, 0x3FF9999980000000
  %7780 = fsub fast float 5.000000e+00, %7779
  %7781 = call float @dx.op.unary.f32(i32 6, float %7744)  ; FAbs(value)
  %7782 = fsub fast float 1.000000e+00, %7781
  %7783 = fmul fast float %5732, 0x41D9660740000000
  %7784 = fadd fast float %7783, 0xC1EFBF8940000000
  %7785 = bitcast float %7782 to i32
  %7786 = sitofp i32 %7785 to float
  %7787 = fmul fast float %7786, %7780
  %7788 = fadd fast float %7784, %7787
  %7789 = fptosi float %7788 to i32
  %7790 = bitcast i32 %7789 to float
  %7791 = fsub fast float 1.000000e+00, %5464
  %7792 = fsub fast float 1.000000e+00, %5465
  %7793 = fsub fast float 1.000000e+00, %5470
  %7794 = fmul fast float %7790, %7791
  %7795 = fmul fast float %7790, %7792
  %7796 = fmul fast float %7790, %7793
  %7797 = fadd fast float %7794, %5464
  %7798 = fadd fast float %7795, %5465
  %7799 = fadd fast float %7796, %5470
  br i1 %5755, label %7800, label %7823

; <label>:7800                                    ; preds = %7716
  %7801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4852, float %7781, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7802 = extractvalue %dx.types.ResRet.f32 %7801, 0
  %7803 = extractvalue %dx.types.ResRet.f32 %7801, 1
  %7804 = extractvalue %dx.types.ResRet.f32 %7801, 2
  %7805 = fadd fast float %7802, -5.000000e-01
  %7806 = fadd fast float %7803, -5.000000e-01
  %7807 = fadd fast float %7804, -5.000000e-01
  %7808 = fmul fast float %5464, 4.000000e+00
  %7809 = fmul fast float %7808, %7791
  %7810 = fmul fast float %7809, %7805
  %7811 = fmul fast float %5465, 4.000000e+00
  %7812 = fmul fast float %7811, %7792
  %7813 = fmul fast float %7812, %7806
  %7814 = fmul fast float %5470, 4.000000e+00
  %7815 = fmul fast float %7814, %7793
  %7816 = fmul fast float %7815, %7807
  %7817 = fadd fast float %7810, %7797
  %7818 = fadd fast float %7813, %7798
  %7819 = fadd fast float %7816, %7799
  %7820 = call float @dx.op.unary.f32(i32 7, float %7817)  ; Saturate(value)
  %7821 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  %7822 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  br label %7823

; <label>:7823                                    ; preds = %7800, %7716
  %7824 = phi float [ %7820, %7800 ], [ %7797, %7716 ]
  %7825 = phi float [ %7821, %7800 ], [ %7798, %7716 ]
  %7826 = phi float [ %7822, %7800 ], [ %7799, %7716 ]
  %7827 = fmul fast float %7743, 9.843750e-01
  %7828 = fadd fast float %7827, 7.812500e-03
  %7829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7828, float %5736, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7830 = extractvalue %dx.types.ResRet.f32 %7829, 0
  %7831 = extractvalue %dx.types.ResRet.f32 %7829, 1
  %7832 = extractvalue %dx.types.ResRet.f32 %7829, 2
  %7833 = extractvalue %dx.types.ResRet.f32 %7829, 3
  %7834 = fsub fast float %7832, %7830
  %7835 = fsub fast float %7833, %7831
  %7836 = fmul fast float %7834, %5742
  %7837 = fmul fast float %7835, %5742
  %7838 = fadd fast float %7836, %7830
  %7839 = fadd fast float %7837, %7831
  %7840 = fmul fast float %7838, %5464
  %7841 = fmul fast float %7838, %5465
  %7842 = fmul fast float %7838, %5470
  %7843 = fadd fast float %7840, %7839
  %7844 = fadd fast float %7841, %7839
  %7845 = fadd fast float %7842, %7839
  br i1 %5755, label %7846, label %7869

; <label>:7846                                    ; preds = %7823
  %7847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4852, float %7743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7851 = fadd fast float %7848, -5.000000e-01
  %7852 = fadd fast float %7849, -5.000000e-01
  %7853 = fadd fast float %7850, -5.000000e-01
  %7854 = fmul fast float %5464, 4.000000e+00
  %7855 = fmul fast float %7854, %7791
  %7856 = fmul fast float %7855, %7851
  %7857 = fmul fast float %5465, 4.000000e+00
  %7858 = fmul fast float %7857, %7792
  %7859 = fmul fast float %7858, %7852
  %7860 = fmul fast float %5470, 4.000000e+00
  %7861 = fmul fast float %7860, %7793
  %7862 = fmul fast float %7861, %7853
  %7863 = fadd fast float %7856, %7843
  %7864 = fadd fast float %7859, %7844
  %7865 = fadd fast float %7862, %7845
  %7866 = call float @dx.op.unary.f32(i32 7, float %7863)  ; Saturate(value)
  %7867 = call float @dx.op.unary.f32(i32 7, float %7864)  ; Saturate(value)
  %7868 = call float @dx.op.unary.f32(i32 7, float %7865)  ; Saturate(value)
  br label %7869

; <label>:7869                                    ; preds = %7846, %7823
  %7870 = phi float [ %7866, %7846 ], [ %7843, %7823 ]
  %7871 = phi float [ %7867, %7846 ], [ %7844, %7823 ]
  %7872 = phi float [ %7868, %7846 ], [ %7845, %7823 ]
  %7873 = call float @dx.op.binary.f32(i32 35, float %7871, float %7872)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 35, float %7870, float %7873)  ; FMax(a,b)
  %7875 = fsub fast float 1.000000e+00, %7874
  %7876 = fmul fast float %7824, %7778
  %7877 = fmul fast float %7825, %7778
  %7878 = fmul fast float %7826, %7778
  %7879 = fsub fast float 1.000000e+00, %7744
  %7880 = bitcast float %7879 to i32
  %7881 = sitofp i32 %7880 to float
  %7882 = fmul fast float %7881, 5.000000e+00
  %7883 = fadd fast float %7882, 0xC1EFBF8940000000
  %7884 = fptosi float %7883 to i32
  %7885 = bitcast i32 %7884 to float
  %7886 = fmul fast float %7885, %4853
  %7887 = fmul fast float %7875, %7886
  %7888 = fmul fast float %7887, %6297
  %7889 = fmul fast float %7887, %6298
  %7890 = fmul fast float %7887, %6299
  %7891 = fadd fast float %7888, %7876
  %7892 = fadd fast float %7889, %7877
  %7893 = fadd fast float %7890, %7878
  %7894 = fmul fast float %7750, %7732
  %7895 = fmul fast float %7894, %7875
  %7896 = fmul fast float %7750, %7733
  %7897 = fmul fast float %7896, %7875
  %7898 = fmul fast float %7750, %7734
  %7899 = fmul fast float %7898, %7875
  %7900 = fmul fast float %7894, %7891
  %7901 = fmul fast float %7896, %7892
  %7902 = fmul fast float %7898, %7893
  %7903 = fadd fast float %7895, %6281
  %7904 = fmul fast float %7903, %4849
  %7905 = fadd fast float %7897, %6282
  %7906 = fmul fast float %7905, %4849
  %7907 = fadd fast float %7899, %6283
  %7908 = fmul fast float %7907, %4849
  %7909 = fadd fast float %7900, %6350
  %7910 = fmul fast float %7909, %4849
  %7911 = fadd fast float %7901, %6353
  %7912 = fmul fast float %7911, %4849
  %7913 = fadd fast float %7902, %6356
  %7914 = fmul fast float %7913, %4849
  br label %7915

; <label>:7915                                    ; preds = %7869, %7650, %6277
  %7916 = phi float [ %6351, %6277 ], [ %6351, %7650 ], [ %7910, %7869 ]
  %7917 = phi float [ %6354, %6277 ], [ %6354, %7650 ], [ %7912, %7869 ]
  %7918 = phi float [ %6357, %6277 ], [ %6357, %7650 ], [ %7914, %7869 ]
  %7919 = phi float [ %6346, %6277 ], [ %6346, %7650 ], [ %7904, %7869 ]
  %7920 = phi float [ %6347, %6277 ], [ %6347, %7650 ], [ %7906, %7869 ]
  %7921 = phi float [ %6348, %6277 ], [ %6348, %7650 ], [ %7908, %7869 ]
  %7922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7923 = extractvalue %dx.types.CBufRet.i32 %7922, 0
  %7924 = icmp eq i32 %7923, 0
  br i1 %7924, label %8600, label %7925

; <label>:7925                                    ; preds = %7915
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 3
  %7929 = fmul fast float %7927, %111
  %7930 = fmul fast float %7928, %112
  %7931 = fptoui float %7929 to i32
  %7932 = fptoui float %7930 to i32
  %7933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7933, 0
  %7935 = extractvalue %dx.types.CBufRet.f32 %7933, 2
  %7936 = extractvalue %dx.types.CBufRet.f32 %7933, 3
  %7937 = fadd fast float %99, -4.000000e+00
  %7938 = call float @dx.op.binary.f32(i32 35, float %7937, float 0.000000e+00)  ; FMax(a,b)
  %7939 = fadd fast float %7938, %7934
  %7940 = fmul fast float %7939, %7935
  %7941 = call float @dx.op.unary.f32(i32 23, float %7940)  ; Log(value)
  %7942 = fmul fast float %7941, %7936
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 2
  %7945 = fmul fast float %7942, %7944
  %7946 = call float @dx.op.unary.f32(i32 7, float %7945)  ; Saturate(value)
  %7947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.i32 %7947, 1
  %7949 = add i32 %7948, -1
  %7950 = uitofp i32 %7948 to float
  %7951 = fmul fast float %7950, %7946
  %7952 = fptoui float %7951 to i32
  %7953 = call i32 @dx.op.binary.i32(i32 40, i32 %7952, i32 %7949)  ; UMin(a,b)
  %7954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7955 = extractvalue %dx.types.CBufRet.i32 %7954, 2
  %7956 = extractvalue %dx.types.CBufRet.i32 %7954, 3
  %7957 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7932, i32 %7955, i32 %7931)  ; UMad(a,b,c)
  %7958 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7953, i32 %7956, i32 %7957)  ; UMad(a,b,c)
  %7959 = add nsw i32 %7923, -1
  %7960 = call i32 @dx.op.binary.i32(i32 37, i32 %7959, i32 0)  ; IMax(a,b)
  %7961 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %7962 = fptoui float %7961 to i32
  %7963 = lshr i32 %7962, 5
  %7964 = call i32 @dx.op.binary.i32(i32 40, i32 %7963, i32 8191)  ; UMin(a,b)
  %7965 = shl i32 %7964, 2
  %7966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7965, i32 undef)  ; BufferLoad(srv,index,wot)
  %7967 = extractvalue %dx.types.ResRet.i32 %7966, 0
  %7968 = lshr i32 %7967, 16
  %7969 = and i32 %7967, 65535
  %7970 = lshr i32 %7967, 21
  %7971 = lshr i32 %7969, 5
  %7972 = call i32 @dx.op.binary.i32(i32 40, i32 %7971, i32 %7960)  ; UMin(a,b)
  %7973 = icmp ugt i32 %7970, %7972
  br i1 %7973, label %8600, label %7974

; <label>:7974                                    ; preds = %7925
  br label %7975

; <label>:7975                                    ; preds = %8590, %7974
  %7976 = phi i32 [ %8597, %8590 ], [ %7970, %7974 ]
  %7977 = phi float [ %8591, %8590 ], [ %7916, %7974 ]
  %7978 = phi float [ %8592, %8590 ], [ %7917, %7974 ]
  %7979 = phi float [ %8593, %8590 ], [ %7918, %7974 ]
  %7980 = phi float [ %8594, %8590 ], [ %7919, %7974 ]
  %7981 = phi float [ %8595, %8590 ], [ %7920, %7974 ]
  %7982 = phi float [ %8596, %8590 ], [ %7921, %7974 ]
  %7983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7984 = extractvalue %dx.types.CBufRet.i32 %7983, 0
  %7985 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7958, i32 %7984, i32 %7976)  ; UMad(a,b,c)
  %7986 = shl i32 %7985, 2
  %7987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7986, i32 undef)  ; BufferLoad(srv,index,wot)
  %7988 = extractvalue %dx.types.ResRet.i32 %7987, 0
  %7989 = shl i32 %7976, 5
  %7990 = sub nsw i32 %7968, %7989
  %7991 = call i32 @dx.op.binary.i32(i32 37, i32 %7990, i32 0)  ; IMax(a,b)
  %7992 = call i32 @dx.op.binary.i32(i32 38, i32 %7991, i32 31)  ; IMin(a,b)
  %7993 = sub nsw i32 1, %7968
  %7994 = add nsw i32 %7993, %7969
  %7995 = call i32 @dx.op.binary.i32(i32 37, i32 %7994, i32 0)  ; IMax(a,b)
  %7996 = call i32 @dx.op.binary.i32(i32 38, i32 %7995, i32 32)  ; IMin(a,b)
  %7997 = and i32 %7996, 31
  %7998 = shl i32 -1, %7997
  %7999 = xor i32 %7998, -1
  %8000 = and i32 %7992, 31
  %8001 = shl i32 %7999, %8000
  %8002 = icmp eq i32 %7996, 32
  %8003 = select i1 %8002, i32 -1, i32 %8001
  %8004 = and i32 %8003, %7988
  %8005 = icmp eq i32 %8004, 0
  br i1 %8005, label %8590, label %8006

; <label>:8006                                    ; preds = %7975
  br label %8007

; <label>:8007                                    ; preds = %8141, %8006
  %8008 = phi i32 [ %8019, %8141 ], [ %8004, %8006 ]
  %8009 = phi float [ %8142, %8141 ], [ %7977, %8006 ]
  %8010 = phi float [ %8143, %8141 ], [ %7978, %8006 ]
  %8011 = phi float [ %8144, %8141 ], [ %7979, %8006 ]
  %8012 = phi float [ %8145, %8141 ], [ %7980, %8006 ]
  %8013 = phi float [ %8146, %8141 ], [ %7981, %8006 ]
  %8014 = phi float [ %8147, %8141 ], [ %7982, %8006 ]
  %8015 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8008)  ; FirstbitLo(value)
  %8016 = add i32 %8015, %7989
  %8017 = and i32 %8015, 31
  %8018 = shl i32 1, %8017
  %8019 = xor i32 %8018, %8008
  %8020 = mul i32 %8016, 112
  %8021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8020, i32 undef)  ; BufferLoad(srv,index,wot)
  %8022 = extractvalue %dx.types.ResRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.ResRet.f32 %8021, 1
  %8024 = extractvalue %dx.types.ResRet.f32 %8021, 2
  %8025 = or i32 %8020, 12
  %8026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8025, i32 undef)  ; BufferLoad(srv,index,wot)
  %8027 = extractvalue %dx.types.ResRet.f32 %8026, 0
  %8028 = add i32 %8020, 16
  %8029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8028, i32 undef)  ; BufferLoad(srv,index,wot)
  %8030 = extractvalue %dx.types.ResRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.ResRet.f32 %8029, 1
  %8032 = extractvalue %dx.types.ResRet.f32 %8029, 2
  %8033 = add i32 %8020, 28
  %8034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8033, i32 undef)  ; BufferLoad(srv,index,wot)
  %8035 = extractvalue %dx.types.ResRet.i32 %8034, 0
  %8036 = add i32 %8020, 44
  %8037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8036, i32 undef)  ; BufferLoad(srv,index,wot)
  %8038 = extractvalue %dx.types.ResRet.f32 %8037, 0
  %8039 = add i32 %8020, 48
  %8040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8039, i32 undef)  ; BufferLoad(srv,index,wot)
  %8041 = extractvalue %dx.types.ResRet.f32 %8040, 0
  %8042 = extractvalue %dx.types.ResRet.f32 %8040, 1
  %8043 = extractvalue %dx.types.ResRet.f32 %8040, 2
  %8044 = extractvalue %dx.types.ResRet.f32 %8040, 3
  %8045 = add i32 %8020, 64
  %8046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8045, i32 undef)  ; BufferLoad(srv,index,wot)
  %8047 = extractvalue %dx.types.ResRet.f32 %8046, 0
  %8048 = extractvalue %dx.types.ResRet.f32 %8046, 1
  %8049 = extractvalue %dx.types.ResRet.f32 %8046, 2
  %8050 = extractvalue %dx.types.ResRet.f32 %8046, 3
  %8051 = add i32 %8020, 80
  %8052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8051, i32 undef)  ; BufferLoad(srv,index,wot)
  %8053 = extractvalue %dx.types.ResRet.f32 %8052, 1
  %8054 = extractvalue %dx.types.ResRet.f32 %8052, 2
  %8055 = add i32 %8020, 92
  %8056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8055, i32 undef)  ; BufferLoad(srv,index,wot)
  %8057 = extractvalue %dx.types.ResRet.i32 %8056, 0
  %8058 = call float @dx.op.dot3.f32(i32 55, float %8022, float %8023, float %8024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8059 = select i1 %232, float %8053, float %8022
  %8060 = select i1 %232, float %8058, float %8023
  %8061 = select i1 %232, float %8054, float %8024
  %8062 = and i32 %8057, 65535
  %8063 = uitofp i32 %8062 to float
  %8064 = lshr i32 %8057, 16
  %8065 = uitofp i32 %8064 to float
  %8066 = and i32 %8035, 65535
  %8067 = and i32 %8035, 50331648
  %8068 = icmp eq i32 %8067, 33554432
  %8069 = fsub fast float %8041, %170
  %8070 = fsub fast float %8042, %171
  %8071 = fsub fast float %8043, %172
  %8072 = call float @dx.op.dot3.f32(i32 55, float %8069, float %8070, float %8071, float %8069, float %8070, float %8071)  ; Dot3(ax,ay,az,bx,by,bz)
  %8073 = call float @dx.op.unary.f32(i32 24, float %8072)  ; Sqrt(value)
  %8074 = fdiv fast float 1.000000e+00, %8073
  %8075 = fmul fast float %8074, %8069
  %8076 = fmul fast float %8074, %8070
  %8077 = fmul fast float %8074, %8071
  %8078 = fadd fast float %8073, %8027
  %8079 = fdiv fast float 1.000000e+00, %8078
  %8080 = fmul float %8038, %8079
  %8081 = fmul float %8080, %8080
  %8082 = call float @dx.op.unary.f32(i32 7, float %8081)  ; Saturate(value)
  br i1 %8068, label %8083, label %8104

; <label>:8083                                    ; preds = %8007
  %8084 = fmul fast float %8049, %8030
  %8085 = fmul fast float %8049, %8031
  %8086 = fmul fast float %8049, %8032
  %8087 = fadd fast float %8069, %8084
  %8088 = fadd fast float %8070, %8085
  %8089 = fadd fast float %8071, %8086
  %8090 = call float @dx.op.dot3.f32(i32 55, float %8087, float %8088, float %8089, float %8087, float %8088, float %8089)  ; Dot3(ax,ay,az,bx,by,bz)
  %8091 = call float @dx.op.unary.f32(i32 25, float %8090)  ; Rsqrt(value)
  %8092 = fmul fast float %8091, %8087
  %8093 = fmul fast float %8091, %8088
  %8094 = fmul fast float %8091, %8089
  %8095 = fsub fast float %170, %8041
  %8096 = fsub fast float %171, %8042
  %8097 = fsub fast float %172, %8043
  %8098 = fsub fast float -0.000000e+00, %8095
  %8099 = fsub fast float -0.000000e+00, %8096
  %8100 = fsub fast float -0.000000e+00, %8097
  %8101 = call float @dx.op.dot3.f32(i32 55, float %8098, float %8099, float %8100, float %8030, float %8031, float %8032)  ; Dot3(ax,ay,az,bx,by,bz)
  %8102 = fcmp fast ogt float %8101, 0.000000e+00
  %8103 = uitofp i1 %8102 to float
  br label %8104

; <label>:8104                                    ; preds = %8083, %8007
  %8105 = phi float [ %8103, %8083 ], [ 1.000000e+00, %8007 ]
  %8106 = phi float [ %8092, %8083 ], [ %8075, %8007 ]
  %8107 = phi float [ %8093, %8083 ], [ %8076, %8007 ]
  %8108 = phi float [ %8094, %8083 ], [ %8077, %8007 ]
  %8109 = call float @dx.op.dot3.f32(i32 55, float %8030, float %8031, float %8032, float %8106, float %8107, float %8108)  ; Dot3(ax,ay,az,bx,by,bz)
  %8110 = fmul fast float %8109, %8109
  %8111 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8112 = fsub fast float 1.000000e+00, %8111
  %8113 = fmul fast float %8112, 5.000000e-01
  %8114 = fcmp fast ogt float %8109, 0.000000e+00
  %8115 = fsub fast float 1.000000e+00, %8113
  %8116 = select i1 %8114, float %8113, float %8115
  %8117 = fmul fast float %8116, %8065
  %8118 = fadd fast float %8117, %8063
  %8119 = fmul fast float %8118, 0x3EF0001000000000
  %8120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8119, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8121 = extractvalue %dx.types.ResRet.f32 %8120, 0
  %8122 = fmul fast float %8109, %8047
  %8123 = fadd fast float %8122, %8048
  %8124 = call float @dx.op.unary.f32(i32 7, float %8123)  ; Saturate(value)
  %8125 = select i1 %8068, float 1.000000e+00, float %8124
  %8126 = select i1 %8068, float %8124, float 1.000000e+00
  %8127 = fmul fast float %8073, %8044
  %8128 = fsub fast float 1.000000e+00, %8127
  %8129 = fmul fast float %8128, %8050
  %8130 = call float @dx.op.unary.f32(i32 7, float %8129)  ; Saturate(value)
  %8131 = fmul fast float %8130, %8126
  %8132 = fmul fast float %8131, 2.000000e+00
  %8133 = fsub fast float 3.000000e+00, %8132
  %8134 = fmul fast float %8121, %8105
  %8135 = fmul fast float %8131, %8131
  %8136 = fmul fast float %8135, %8134
  %8137 = fmul fast float %8136, %8133
  %8138 = call float @dx.op.binary.f32(i32 36, float %8137, float %8137)  ; FMin(a,b)
  %8139 = call float @dx.op.binary.f32(i32 36, float %8137, float %8138)  ; FMin(a,b)
  %8140 = fcmp fast ogt float %8139, 0.000000e+00
  br i1 %8140, label %8149, label %8141, !dx.controlflow.hints !132

; <label>:8141                                    ; preds = %8546, %8295, %8104
  %8142 = phi float [ %8009, %8295 ], [ %8009, %8104 ], [ %8586, %8546 ]
  %8143 = phi float [ %8010, %8295 ], [ %8010, %8104 ], [ %8587, %8546 ]
  %8144 = phi float [ %8011, %8295 ], [ %8011, %8104 ], [ %8588, %8546 ]
  %8145 = phi float [ %8012, %8295 ], [ %8012, %8104 ], [ %8580, %8546 ]
  %8146 = phi float [ %8013, %8295 ], [ %8013, %8104 ], [ %8581, %8546 ]
  %8147 = phi float [ %8014, %8295 ], [ %8014, %8104 ], [ %8582, %8546 ]
  %8148 = icmp eq i32 %8008, %8018
  br i1 %8148, label %8589, label %8007

; <label>:8149                                    ; preds = %8104
  %8150 = icmp eq i32 %8066, 255
  br i1 %8150, label %8295, label %8151, !dx.controlflow.hints !133

; <label>:8151                                    ; preds = %8149
  %8152 = mul nuw nsw i32 %8066, 176
  %8153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8152, i32 undef)  ; BufferLoad(srv,index,wot)
  %8154 = extractvalue %dx.types.ResRet.f32 %8153, 0
  %8155 = extractvalue %dx.types.ResRet.f32 %8153, 1
  %8156 = extractvalue %dx.types.ResRet.f32 %8153, 2
  %8157 = extractvalue %dx.types.ResRet.f32 %8153, 3
  %8158 = add nuw nsw i32 %8152, 16
  %8159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8158, i32 undef)  ; BufferLoad(srv,index,wot)
  %8160 = extractvalue %dx.types.ResRet.f32 %8159, 0
  %8161 = extractvalue %dx.types.ResRet.f32 %8159, 1
  %8162 = add nuw nsw i32 %8152, 32
  %8163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8162, i32 undef)  ; BufferLoad(srv,index,wot)
  %8164 = extractvalue %dx.types.ResRet.f32 %8163, 0
  %8165 = extractvalue %dx.types.ResRet.f32 %8163, 1
  %8166 = extractvalue %dx.types.ResRet.f32 %8163, 2
  %8167 = add nuw nsw i32 %8152, 48
  %8168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8167, i32 undef)  ; BufferLoad(srv,index,wot)
  %8169 = extractvalue %dx.types.ResRet.f32 %8168, 0
  %8170 = extractvalue %dx.types.ResRet.f32 %8168, 1
  %8171 = extractvalue %dx.types.ResRet.f32 %8168, 2
  %8172 = extractvalue %dx.types.ResRet.f32 %8168, 3
  %8173 = add nuw nsw i32 %8152, 64
  %8174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8173, i32 undef)  ; BufferLoad(srv,index,wot)
  %8175 = extractvalue %dx.types.ResRet.f32 %8174, 0
  %8176 = extractvalue %dx.types.ResRet.f32 %8174, 1
  %8177 = extractvalue %dx.types.ResRet.f32 %8174, 2
  %8178 = extractvalue %dx.types.ResRet.f32 %8174, 3
  %8179 = add nuw nsw i32 %8152, 80
  %8180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8179, i32 undef)  ; BufferLoad(srv,index,wot)
  %8181 = extractvalue %dx.types.ResRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.ResRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.ResRet.f32 %8180, 2
  %8184 = extractvalue %dx.types.ResRet.f32 %8180, 3
  %8185 = add nuw nsw i32 %8152, 96
  %8186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8185, i32 undef)  ; BufferLoad(srv,index,wot)
  %8187 = extractvalue %dx.types.ResRet.f32 %8186, 0
  %8188 = extractvalue %dx.types.ResRet.f32 %8186, 1
  %8189 = extractvalue %dx.types.ResRet.f32 %8186, 2
  %8190 = extractvalue %dx.types.ResRet.f32 %8186, 3
  %8191 = bitcast float %8161 to i32
  %8192 = fmul fast float %8166, %120
  %8193 = fmul fast float %8166, %122
  %8194 = fmul fast float %8166, %124
  %8195 = fadd fast float %8192, %170
  %8196 = fadd fast float %8193, %171
  %8197 = fadd fast float %8194, %172
  %8198 = fmul fast float %8195, %8169
  %8199 = call float @dx.op.tertiary.f32(i32 46, float %8196, float %8175, float %8198)  ; FMad(a,b,c)
  %8200 = call float @dx.op.tertiary.f32(i32 46, float %8197, float %8181, float %8199)  ; FMad(a,b,c)
  %8201 = fadd fast float %8200, %8187
  %8202 = fmul fast float %8195, %8170
  %8203 = call float @dx.op.tertiary.f32(i32 46, float %8196, float %8176, float %8202)  ; FMad(a,b,c)
  %8204 = call float @dx.op.tertiary.f32(i32 46, float %8197, float %8182, float %8203)  ; FMad(a,b,c)
  %8205 = fadd fast float %8204, %8188
  %8206 = fmul fast float %8195, %8171
  %8207 = call float @dx.op.tertiary.f32(i32 46, float %8196, float %8177, float %8206)  ; FMad(a,b,c)
  %8208 = call float @dx.op.tertiary.f32(i32 46, float %8197, float %8183, float %8207)  ; FMad(a,b,c)
  %8209 = fadd fast float %8208, %8189
  %8210 = fmul fast float %8195, %8172
  %8211 = call float @dx.op.tertiary.f32(i32 46, float %8196, float %8178, float %8210)  ; FMad(a,b,c)
  %8212 = call float @dx.op.tertiary.f32(i32 46, float %8197, float %8184, float %8211)  ; FMad(a,b,c)
  %8213 = fadd fast float %8212, %8190
  %8214 = fdiv fast float %8201, %8213
  %8215 = fdiv fast float %8205, %8213
  %8216 = fdiv fast float %8209, %8213
  %8217 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8216)  ; FMax(a,b)
  %8218 = fmul fast float %243, 0x401921FB60000000
  %8219 = call float @dx.op.unary.f32(i32 13, float %8218)  ; Sin(value)
  %8220 = call float @dx.op.unary.f32(i32 12, float %8218)  ; Cos(value)
  %8221 = fmul fast float %8220, %8165
  %8222 = call float @dx.op.tertiary.f32(i32 46, float %8219, float %8165, float 0.000000e+00)  ; FMad(a,b,c)
  %8223 = fmul fast float %8165, %8219
  %8224 = fsub fast float -0.000000e+00, %8223
  %8225 = call float @dx.op.tertiary.f32(i32 46, float %8220, float %8165, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8226

; <label>:8226                                    ; preds = %8226, %8151
  %8227 = phi float [ 0.000000e+00, %8151 ], [ %8259, %8226 ]
  %8228 = phi float [ 0.000000e+00, %8151 ], [ %8261, %8226 ]
  %8229 = phi i32 [ 0, %8151 ], [ %8262, %8226 ]
  %8230 = mul i32 %8229, 2
  %8231 = add i32 0, %8230
  %8232 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8231
  %8233 = load float, float* %8232, align 4
  %8234 = mul i32 %8229, 2
  %8235 = add i32 1, %8234
  %8236 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8235
  %8237 = load float, float* %8236, align 4
  %8238 = fmul fast float %8221, %8233
  %8239 = call float @dx.op.tertiary.f32(i32 46, float %8237, float %8224, float %8238)  ; FMad(a,b,c)
  %8240 = fmul fast float %8233, %8222
  %8241 = call float @dx.op.tertiary.f32(i32 46, float %8237, float %8225, float %8240)  ; FMad(a,b,c)
  %8242 = fadd fast float %8239, %8214
  %8243 = fadd fast float %8241, %8215
  %8244 = fmul fast float %8242, %8160
  %8245 = fmul fast float %8243, %8160
  %8246 = call float @dx.op.binary.f32(i32 35, float %8244, float %8156)  ; FMax(a,b)
  %8247 = call float @dx.op.binary.f32(i32 35, float %8245, float %8156)  ; FMax(a,b)
  %8248 = call float @dx.op.binary.f32(i32 36, float %8246, float %8157)  ; FMin(a,b)
  %8249 = call float @dx.op.binary.f32(i32 36, float %8247, float %8157)  ; FMin(a,b)
  %8250 = fadd fast float %8248, %8154
  %8251 = fadd fast float %8249, %8155
  %8252 = uitofp i32 %8191 to float
  %8253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8250, float %8251, float %8252, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8254 = extractvalue %dx.types.ResRet.f32 %8253, 0
  %8255 = fsub fast float %8254, %8217
  %8256 = fsub fast float %8255, %8164
  %8257 = fcmp fast ogt float %8256, 0.000000e+00
  %8258 = select i1 %8257, float 1.000000e+00, float 0.000000e+00
  %8259 = fadd fast float %8258, %8227
  %8260 = select i1 %8257, float %8256, float 0.000000e+00
  %8261 = fadd fast float %8260, %8228
  %8262 = add nuw nsw i32 %8229, 1
  %8263 = icmp eq i32 %8262, 8
  br i1 %8263, label %8264, label %8226

; <label>:8264                                    ; preds = %8226
  %8265 = fdiv fast float 1.000000e+00, %8259
  %8266 = fmul fast float %8265, %8261
  %8267 = fdiv fast float 1.000000e+00, %8217
  %8268 = fmul fast float %8266, %8267
  %8269 = call float @dx.op.unary.f32(i32 7, float %8268)  ; Saturate(value)
  %8270 = call float @dx.op.binary.f32(i32 35, float %8269, float 0.000000e+00)  ; FMax(a,b)
  %8271 = fmul fast float %8259, 1.250000e-01
  %8272 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8273 = fmul fast float %8272, 2.000000e+00
  %8274 = fadd fast float %8273, -1.000000e+00
  %8275 = fcmp fast ogt float %8274, 0.000000e+00
  %8276 = fcmp fast olt float %8274, 0.000000e+00
  %8277 = zext i1 %8275 to i32
  %8278 = zext i1 %8276 to i32
  %8279 = sub nsw i32 %8277, %8278
  %8280 = sitofp i32 %8279 to float
  %8281 = fmul fast float %8280, %8274
  %8282 = fsub fast float 1.000000e+00, %8281
  %8283 = fmul fast float %8282, %8282
  %8284 = fmul fast float %8283, %8282
  %8285 = fsub fast float %8282, %8284
  %8286 = fmul fast float %8285, %8270
  %8287 = fsub fast float 1.000000e+00, %8284
  %8288 = fsub fast float %8287, %8286
  %8289 = fmul fast float %8280, 5.000000e-01
  %8290 = fmul fast float %8289, %8288
  %8291 = fsub fast float -5.000000e-01, %8290
  %8292 = fmul fast float %8291, %8125
  %8293 = fadd fast float %8292, 1.000000e+00
  %8294 = fmul fast float %8293, %8137
  br label %8295

; <label>:8295                                    ; preds = %8264, %8149
  %8296 = phi float [ %8294, %8264 ], [ %8137, %8149 ]
  %8297 = call float @dx.op.binary.f32(i32 36, float %8296, float %8296)  ; FMin(a,b)
  %8298 = call float @dx.op.binary.f32(i32 36, float %8296, float %8297)  ; FMin(a,b)
  %8299 = fcmp fast ogt float %8298, 0.000000e+00
  br i1 %8299, label %8300, label %8141, !dx.controlflow.hints !134

; <label>:8300                                    ; preds = %8295
  %8301 = fmul fast float %8296, %8059
  %8302 = fmul fast float %8296, %8060
  %8303 = fmul fast float %8296, %8061
  %8304 = fsub fast float %8043, %5260
  %8305 = fcmp fast ogt float %8304, 0.000000e+00
  %8306 = fsub fast float %172, %5260
  %8307 = fcmp fast ogt float %8306, 0.000000e+00
  %8308 = xor i1 %8307, %8305
  %8309 = fsub fast float %5260, %8043
  %8310 = fmul fast float %8309, 2.000000e+00
  %8311 = fadd fast float %8310, %8043
  %8312 = select i1 %8308, float %8043, float %8311
  %8313 = fsub fast float %8312, %172
  %8314 = call float @dx.op.dot3.f32(i32 55, float %8069, float %8070, float %8313, float %8069, float %8070, float %8313)  ; Dot3(ax,ay,az,bx,by,bz)
  %8315 = call float @dx.op.unary.f32(i32 25, float %8314)  ; Rsqrt(value)
  %8316 = fmul fast float %8315, %8069
  %8317 = fmul fast float %8315, %8070
  %8318 = fmul fast float %8315, %8313
  %8319 = fsub fast float %5260, %172
  %8320 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8319)  ; Dot3(ax,ay,az,bx,by,bz)
  %8321 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8316, float %8317, float %8318)  ; Dot3(ax,ay,az,bx,by,bz)
  %8322 = fdiv fast float 1.000000e+00, %8321
  %8323 = fmul fast float %8322, %8320
  %8324 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8306, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8325 = fcmp fast ogt float %8324, 0.000000e+00
  %8326 = fcmp fast olt float %8324, 0.000000e+00
  %8327 = zext i1 %8325 to i32
  %8328 = zext i1 %8326 to i32
  %8329 = sub nsw i32 %8327, %8328
  %8330 = sitofp i32 %8329 to float
  %8331 = fsub fast float %8312, %5260
  %8332 = call float @dx.op.dot3.f32(i32 55, float %8069, float %8070, float %8331, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8333 = fcmp fast ogt float %8332, 0.000000e+00
  %8334 = fcmp fast olt float %8332, 0.000000e+00
  %8335 = zext i1 %8333 to i32
  %8336 = zext i1 %8334 to i32
  %8337 = sub nsw i32 %8335, %8336
  %8338 = sitofp i32 %8337 to float
  %8339 = fcmp fast une float %8330, %8338
  br i1 %8339, label %8340, label %8350

; <label>:8340                                    ; preds = %8300
  %8341 = fmul fast float %8323, %8318
  %8342 = fmul fast float %8323, %8317
  %8343 = fmul fast float %8323, %8316
  %8344 = fmul fast float %8343, %8343
  %8345 = fmul fast float %8342, %8342
  %8346 = fadd fast float %8344, %8345
  %8347 = fmul fast float %8341, %8341
  %8348 = fadd fast float %8346, %8347
  %8349 = call float @dx.op.unary.f32(i32 24, float %8348)  ; Sqrt(value)
  br label %8362

; <label>:8350                                    ; preds = %8300
  %8351 = icmp slt i32 %8329, 0
  br i1 %8351, label %8352, label %8362

; <label>:8352                                    ; preds = %8350
  %8353 = fsub fast float %170, %8041
  %8354 = fsub fast float %171, %8042
  %8355 = fsub fast float %172, %8312
  %8356 = fmul fast float %8353, %8353
  %8357 = fmul fast float %8354, %8354
  %8358 = fadd fast float %8356, %8357
  %8359 = fmul fast float %8355, %8355
  %8360 = fadd fast float %8358, %8359
  %8361 = call float @dx.op.unary.f32(i32 24, float %8360)  ; Sqrt(value)
  br label %8362

; <label>:8362                                    ; preds = %8352, %8350, %8340
  %8363 = phi float [ %8349, %8340 ], [ %8361, %8352 ], [ 0.000000e+00, %8350 ]
  %8364 = and i1 %8307, %8305
  %8365 = fsub fast float -0.000000e+00, %8363
  %8366 = select i1 %8364, float -0.000000e+00, float %8365
  %8367 = fmul fast float %5257, 0x3FF7154760000000
  %8368 = fmul fast float %8367, %8366
  %8369 = fmul fast float %5258, 0x3FF7154760000000
  %8370 = fmul fast float %8369, %8366
  %8371 = fmul fast float %5259, 0x3FF7154760000000
  %8372 = fmul fast float %8371, %8366
  %8373 = call float @dx.op.unary.f32(i32 21, float %8368)  ; Exp(value)
  %8374 = call float @dx.op.unary.f32(i32 21, float %8370)  ; Exp(value)
  %8375 = call float @dx.op.unary.f32(i32 21, float %8372)  ; Exp(value)
  %8376 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8377 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8378 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  %8379 = fmul fast float %8301, %8376
  %8380 = fmul fast float %8302, %8377
  %8381 = fmul fast float %8303, %8378
  %8382 = fsub fast float %8075, %5457
  %8383 = fsub fast float %8076, %5456
  %8384 = fsub fast float %8077, %5455
  %8385 = call float @dx.op.dot3.f32(i32 55, float %8382, float %8383, float %8384, float %8382, float %8383, float %8384)  ; Dot3(ax,ay,az,bx,by,bz)
  %8386 = call float @dx.op.unary.f32(i32 25, float %8385)  ; Rsqrt(value)
  %8387 = fmul fast float %8386, %8382
  %8388 = fmul fast float %8386, %8383
  %8389 = fmul fast float %8386, %8384
  %8390 = call float @dx.op.dot3.f32(i32 55, float %8075, float %8076, float %8077, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %8391 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5453, float %5452, float %8387, float %8388, float %8389)  ; Dot3(ax,ay,az,bx,by,bz)
  %8392 = call float @dx.op.unary.f32(i32 7, float %8390)  ; Saturate(value)
  %8393 = fmul fast float %8392, %8082
  %8394 = bitcast i32 %5496 to float
  %8395 = fmul fast float %8392, %8392
  %8396 = fmul fast float %8395, %8394
  %8397 = call float @dx.op.unary.f32(i32 7, float %8396)  ; Saturate(value)
  %8398 = fmul fast float %8393, %8397
  %8399 = bitcast float %8072 to i32
  %8400 = ashr i32 %8399, 1
  %8401 = sub nsw i32 1597463007, %8400
  %8402 = bitcast i32 %8401 to float
  %8403 = fmul fast float %8402, %8069
  %8404 = fmul fast float %8402, %8070
  %8405 = fmul fast float %8402, %8071
  %8406 = fsub fast float %8403, %5457
  %8407 = fsub fast float %8404, %5456
  %8408 = fsub fast float %8405, %5455
  %8409 = call float @dx.op.dot3.f32(i32 55, float %8406, float %8407, float %8408, float %8406, float %8407, float %8408)  ; Dot3(ax,ay,az,bx,by,bz)
  %8410 = call float @dx.op.unary.f32(i32 25, float %8409)  ; Rsqrt(value)
  %8411 = fmul fast float %8406, %8410
  %8412 = fmul fast float %8407, %8410
  %8413 = fmul fast float %8408, %8410
  %8414 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %5463, float %8411, float %8412, float %8413)  ; Dot3(ax,ay,az,bx,by,bz)
  %8415 = fmul fast float %8414, %8414
  %8416 = call float @dx.op.unary.f32(i32 6, float %8390)  ; FAbs(value)
  %8417 = fsub fast float 1.000000e+00, %5490
  %8418 = fmul fast float %5472, %5472
  %8419 = fmul fast float %8418, %8417
  %8420 = fadd fast float %8419, %5490
  %8421 = bitcast float %8420 to i32
  %8422 = ashr i32 %8421, 1
  %8423 = add nsw i32 %8422, 532487669
  %8424 = bitcast i32 %8423 to float
  %8425 = fadd fast float %8424, %5472
  %8426 = fmul fast float %5490, %8415
  %8427 = fsub fast float 1.000000e+00, %8415
  %8428 = fadd fast float %8427, %8426
  %8429 = fmul fast float %8416, %8416
  %8430 = fmul fast float %8429, %8417
  %8431 = fadd fast float %8430, %5490
  %8432 = bitcast float %8431 to i32
  %8433 = ashr i32 %8432, 1
  %8434 = add nsw i32 %8433, 532487669
  %8435 = bitcast i32 %8434 to float
  %8436 = fadd fast float %8435, %8416
  %8437 = fmul fast float %8428, %8428
  %8438 = fmul fast float %8437, %8425
  %8439 = fmul fast float %8438, %8436
  %8440 = fdiv fast float 1.000000e+00, %8439
  %8441 = bitcast float %5490 to i32
  %8442 = sitofp i32 %8441 to float
  %8443 = fmul fast float %8442, 0x3FE7F73180000000
  %8444 = fadd fast float %8443, 0x41AFE27C40000000
  %8445 = fptosi float %8444 to i32
  %8446 = bitcast i32 %8445 to float
  %8447 = fmul fast float %8038, 0x3FD80E9D60000000
  %8448 = fmul fast float %8447, %8402
  %8449 = fadd fast float %8446, %8448
  %8450 = bitcast float %8449 to i32
  %8451 = sub nsw i32 2129859010, %8450
  %8452 = bitcast i32 %8451 to float
  %8453 = fmul fast float %5490, %8440
  %8454 = fmul fast float %8453, %8446
  %8455 = fmul fast float %8454, %8452
  %8456 = fmul fast float %5732, 0x3FF9999980000000
  %8457 = fsub fast float 5.000000e+00, %8456
  %8458 = call float @dx.op.unary.f32(i32 6, float %8391)  ; FAbs(value)
  %8459 = fsub fast float 1.000000e+00, %8458
  %8460 = fmul fast float %5732, 0x41D9660740000000
  %8461 = fadd fast float %8460, 0xC1EFBF8940000000
  %8462 = bitcast float %8459 to i32
  %8463 = sitofp i32 %8462 to float
  %8464 = fmul fast float %8463, %8457
  %8465 = fadd fast float %8461, %8464
  %8466 = fptosi float %8465 to i32
  %8467 = bitcast i32 %8466 to float
  %8468 = fsub fast float 1.000000e+00, %5464
  %8469 = fsub fast float 1.000000e+00, %5465
  %8470 = fsub fast float 1.000000e+00, %5470
  %8471 = fmul fast float %8467, %8468
  %8472 = fmul fast float %8467, %8469
  %8473 = fmul fast float %8467, %8470
  %8474 = fadd fast float %8471, %5464
  %8475 = fadd fast float %8472, %5465
  %8476 = fadd fast float %8473, %5470
  br i1 %5755, label %8477, label %8500

; <label>:8477                                    ; preds = %8362
  %8478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4852, float %8458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8479 = extractvalue %dx.types.ResRet.f32 %8478, 0
  %8480 = extractvalue %dx.types.ResRet.f32 %8478, 1
  %8481 = extractvalue %dx.types.ResRet.f32 %8478, 2
  %8482 = fadd fast float %8479, -5.000000e-01
  %8483 = fadd fast float %8480, -5.000000e-01
  %8484 = fadd fast float %8481, -5.000000e-01
  %8485 = fmul fast float %5464, 4.000000e+00
  %8486 = fmul fast float %8485, %8468
  %8487 = fmul fast float %8486, %8482
  %8488 = fmul fast float %5465, 4.000000e+00
  %8489 = fmul fast float %8488, %8469
  %8490 = fmul fast float %8489, %8483
  %8491 = fmul fast float %5470, 4.000000e+00
  %8492 = fmul fast float %8491, %8470
  %8493 = fmul fast float %8492, %8484
  %8494 = fadd fast float %8487, %8474
  %8495 = fadd fast float %8490, %8475
  %8496 = fadd fast float %8493, %8476
  %8497 = call float @dx.op.unary.f32(i32 7, float %8494)  ; Saturate(value)
  %8498 = call float @dx.op.unary.f32(i32 7, float %8495)  ; Saturate(value)
  %8499 = call float @dx.op.unary.f32(i32 7, float %8496)  ; Saturate(value)
  br label %8500

; <label>:8500                                    ; preds = %8477, %8362
  %8501 = phi float [ %8497, %8477 ], [ %8474, %8362 ]
  %8502 = phi float [ %8498, %8477 ], [ %8475, %8362 ]
  %8503 = phi float [ %8499, %8477 ], [ %8476, %8362 ]
  %8504 = fmul fast float %8390, 9.843750e-01
  %8505 = fadd fast float %8504, 7.812500e-03
  %8506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8505, float %5736, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8507 = extractvalue %dx.types.ResRet.f32 %8506, 0
  %8508 = extractvalue %dx.types.ResRet.f32 %8506, 1
  %8509 = extractvalue %dx.types.ResRet.f32 %8506, 2
  %8510 = extractvalue %dx.types.ResRet.f32 %8506, 3
  %8511 = fsub fast float %8509, %8507
  %8512 = fsub fast float %8510, %8508
  %8513 = fmul fast float %8511, %5742
  %8514 = fmul fast float %8512, %5742
  %8515 = fadd fast float %8513, %8507
  %8516 = fadd fast float %8514, %8508
  %8517 = fmul fast float %8515, %5464
  %8518 = fmul fast float %8515, %5465
  %8519 = fmul fast float %8515, %5470
  %8520 = fadd fast float %8517, %8516
  %8521 = fadd fast float %8518, %8516
  %8522 = fadd fast float %8519, %8516
  br i1 %5755, label %8523, label %8546

; <label>:8523                                    ; preds = %8500
  %8524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4852, float %8390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8525 = extractvalue %dx.types.ResRet.f32 %8524, 0
  %8526 = extractvalue %dx.types.ResRet.f32 %8524, 1
  %8527 = extractvalue %dx.types.ResRet.f32 %8524, 2
  %8528 = fadd fast float %8525, -5.000000e-01
  %8529 = fadd fast float %8526, -5.000000e-01
  %8530 = fadd fast float %8527, -5.000000e-01
  %8531 = fmul fast float %5464, 4.000000e+00
  %8532 = fmul fast float %8531, %8468
  %8533 = fmul fast float %8532, %8528
  %8534 = fmul fast float %5465, 4.000000e+00
  %8535 = fmul fast float %8534, %8469
  %8536 = fmul fast float %8535, %8529
  %8537 = fmul fast float %5470, 4.000000e+00
  %8538 = fmul fast float %8537, %8470
  %8539 = fmul fast float %8538, %8530
  %8540 = fadd fast float %8533, %8520
  %8541 = fadd fast float %8536, %8521
  %8542 = fadd fast float %8539, %8522
  %8543 = call float @dx.op.unary.f32(i32 7, float %8540)  ; Saturate(value)
  %8544 = call float @dx.op.unary.f32(i32 7, float %8541)  ; Saturate(value)
  %8545 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  br label %8546

; <label>:8546                                    ; preds = %8523, %8500
  %8547 = phi float [ %8543, %8523 ], [ %8520, %8500 ]
  %8548 = phi float [ %8544, %8523 ], [ %8521, %8500 ]
  %8549 = phi float [ %8545, %8523 ], [ %8522, %8500 ]
  %8550 = call float @dx.op.binary.f32(i32 35, float %8548, float %8549)  ; FMax(a,b)
  %8551 = call float @dx.op.binary.f32(i32 35, float %8547, float %8550)  ; FMax(a,b)
  %8552 = fsub fast float 1.000000e+00, %8551
  %8553 = fmul fast float %8501, %8455
  %8554 = fmul fast float %8502, %8455
  %8555 = fmul fast float %8503, %8455
  %8556 = fsub fast float 1.000000e+00, %8391
  %8557 = bitcast float %8556 to i32
  %8558 = sitofp i32 %8557 to float
  %8559 = fmul fast float %8558, 5.000000e+00
  %8560 = fadd fast float %8559, 0xC1EFBF8940000000
  %8561 = fptosi float %8560 to i32
  %8562 = bitcast i32 %8561 to float
  %8563 = fmul fast float %8562, %4853
  %8564 = fmul fast float %8552, %8563
  %8565 = fmul fast float %8564, %6297
  %8566 = fmul fast float %8564, %6298
  %8567 = fmul fast float %8564, %6299
  %8568 = fadd fast float %8565, %8553
  %8569 = fadd fast float %8566, %8554
  %8570 = fadd fast float %8567, %8555
  %8571 = fmul fast float %8379, %4849
  %8572 = fmul fast float %8571, %8398
  %8573 = fmul fast float %8572, %8552
  %8574 = fmul fast float %8380, %4849
  %8575 = fmul fast float %8574, %8398
  %8576 = fmul fast float %8575, %8552
  %8577 = fmul fast float %8381, %4849
  %8578 = fmul fast float %8577, %8398
  %8579 = fmul fast float %8578, %8552
  %8580 = fadd fast float %8573, %8012
  %8581 = fadd fast float %8576, %8013
  %8582 = fadd fast float %8579, %8014
  %8583 = fmul fast float %8572, %8568
  %8584 = fmul fast float %8575, %8569
  %8585 = fmul fast float %8578, %8570
  %8586 = fadd fast float %8583, %8009
  %8587 = fadd fast float %8584, %8010
  %8588 = fadd fast float %8585, %8011
  br label %8141

; <label>:8589                                    ; preds = %8141
  br label %8590

; <label>:8590                                    ; preds = %8589, %7975
  %8591 = phi float [ %7977, %7975 ], [ %8142, %8589 ]
  %8592 = phi float [ %7978, %7975 ], [ %8143, %8589 ]
  %8593 = phi float [ %7979, %7975 ], [ %8144, %8589 ]
  %8594 = phi float [ %7980, %7975 ], [ %8145, %8589 ]
  %8595 = phi float [ %7981, %7975 ], [ %8146, %8589 ]
  %8596 = phi float [ %7982, %7975 ], [ %8147, %8589 ]
  %8597 = add i32 %7976, 1
  %8598 = icmp ugt i32 %8597, %7972
  br i1 %8598, label %8599, label %7975

; <label>:8599                                    ; preds = %8590
  br label %8600

; <label>:8600                                    ; preds = %8599, %7925, %7915
  %8601 = phi float [ %7916, %7915 ], [ %7916, %7925 ], [ %8591, %8599 ]
  %8602 = phi float [ %7917, %7915 ], [ %7917, %7925 ], [ %8592, %8599 ]
  %8603 = phi float [ %7918, %7915 ], [ %7918, %7925 ], [ %8593, %8599 ]
  %8604 = phi float [ %7919, %7915 ], [ %7919, %7925 ], [ %8594, %8599 ]
  %8605 = phi float [ %7920, %7915 ], [ %7920, %7925 ], [ %8595, %8599 ]
  %8606 = phi float [ %7921, %7915 ], [ %7921, %7925 ], [ %8596, %8599 ]
  %8607 = fmul fast float %4849, %4849
  %8608 = fmul fast float %8607, %6323
  %8609 = fmul fast float %8607, %6324
  %8610 = fmul fast float %8607, %6325
  %8611 = fadd fast float %8608, 1.000000e+00
  %8612 = fadd fast float %8609, 1.000000e+00
  %8613 = fadd fast float %8610, 1.000000e+00
  %8614 = call float @dx.op.dot3.f32(i32 55, float %8611, float %8612, float %8613, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8615 = fsub fast float 1.000000e+00, %8614
  %8616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8617 = extractvalue %dx.types.CBufRet.f32 %8616, 0
  %8618 = fmul fast float %8617, %6329
  %8619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8620 = extractvalue %dx.types.CBufRet.f32 %8619, 3
  %8621 = fsub fast float 1.000000e+00, %4857
  %8622 = call float @dx.op.unary.f32(i32 7, float %8621)  ; Saturate(value)
  %8623 = fadd fast float %8606, %4855
  %8624 = fmul fast float %8623, %4857
  %8625 = fmul fast float %8622, %8620
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 3
  %8628 = fmul fast float %8604, %5458
  %8629 = fmul fast float %8605, %5459
  %8630 = fmul fast float %8606, %5460
  %8631 = fcmp fast ogt float %99, %192
  %8632 = and i1 %8631, %5263
  %8633 = or i1 %5269, %8632
  %8634 = icmp eq i32 %5262, 2
  %8635 = fcmp fast ole float %99, %192
  %8636 = and i1 %8635, %8634
  %8637 = or i1 %8636, %8633
  br i1 %8632, label %8638, label %8895

; <label>:8638                                    ; preds = %8600
  %8639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8640 = extractvalue %dx.types.CBufRet.f32 %8639, 2
  %8641 = extractvalue %dx.types.CBufRet.f32 %8639, 3
  %8642 = fmul fast float %8640, %111
  %8643 = fmul fast float %8641, %112
  %8644 = call float @dx.op.unary.f32(i32 7, float %8642)  ; Saturate(value)
  %8645 = call float @dx.op.unary.f32(i32 7, float %8643)  ; Saturate(value)
  %8646 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8644, float %8645, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8647 = extractvalue %dx.types.ResRet.f32 %8646, 0
  %8648 = extractvalue %dx.types.ResRet.f32 %8646, 1
  %8649 = extractvalue %dx.types.ResRet.f32 %8646, 2
  %8650 = extractvalue %dx.types.ResRet.f32 %8646, 3
  %8651 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8644, float %8645, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8652 = extractvalue %dx.types.ResRet.f32 %8651, 0
  %8653 = extractvalue %dx.types.ResRet.f32 %8651, 1
  %8654 = extractvalue %dx.types.ResRet.f32 %8651, 2
  %8655 = extractvalue %dx.types.ResRet.f32 %8651, 3
  %8656 = call float @dx.op.binary.f32(i32 35, float %8648, float %8649)  ; FMax(a,b)
  %8657 = call float @dx.op.binary.f32(i32 35, float %8647, float %8656)  ; FMax(a,b)
  %8658 = call float @dx.op.binary.f32(i32 35, float %8657, float %8650)  ; FMax(a,b)
  %8659 = call float @dx.op.binary.f32(i32 36, float %8653, float %8654)  ; FMin(a,b)
  %8660 = call float @dx.op.binary.f32(i32 36, float %8652, float %8659)  ; FMin(a,b)
  %8661 = call float @dx.op.binary.f32(i32 36, float %8660, float %8655)  ; FMin(a,b)
  %8662 = fmul fast float %8658, 2.550000e+02
  %8663 = fadd fast float %8662, 0x3F70101020000000
  %8664 = fptoui float %8663 to i32
  %8665 = fmul fast float %8661, 2.550000e+02
  %8666 = fadd fast float %8665, 0x3F70101020000000
  %8667 = fptoui float %8666 to i32
  %8668 = icmp ult i32 %8664, %8667
  br i1 %8668, label %8669, label %8837

; <label>:8669                                    ; preds = %8638
  %8670 = fcmp fast ogt float %98, 9.843750e-01
  %8671 = fadd fast float %99, -4.000000e+00
  %8672 = select i1 %8670, float -4.000000e+00, float %8671
  %8673 = call float @dx.op.binary.f32(i32 35, float %8672, float 0.000000e+00)  ; FMax(a,b)
  %8674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.f32 %8674, 0
  %8676 = fadd fast float %8675, %8673
  %8677 = extractvalue %dx.types.CBufRet.f32 %8674, 2
  %8678 = fmul fast float %8676, %8677
  %8679 = call float @dx.op.unary.f32(i32 23, float %8678)  ; Log(value)
  %8680 = extractvalue %dx.types.CBufRet.f32 %8674, 3
  %8681 = fmul fast float %8680, %8679
  %8682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8683 = extractvalue %dx.types.CBufRet.f32 %8682, 2
  %8684 = fmul fast float %8681, %8683
  %8685 = call float @dx.op.unary.f32(i32 7, float %8684)  ; Saturate(value)
  %8686 = uitofp i32 %8664 to float
  %8687 = uitofp i32 %8667 to float
  %8688 = fadd fast float %8686, 5.000000e-01
  %8689 = fadd fast float %8687, 5.000000e-01
  %8690 = fmul fast float %8683, %8688
  %8691 = fmul fast float %8683, %8689
  %8692 = fadd fast float %8690, 0x3F0FFB4800000000
  %8693 = fadd fast float %8691, 0xBF0FFB4800000000
  %8694 = call float @dx.op.binary.f32(i32 35, float %8685, float %8692)  ; FMax(a,b)
  %8695 = call float @dx.op.binary.f32(i32 36, float %8694, float %8693)  ; FMin(a,b)
  %8696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8697 = extractvalue %dx.types.CBufRet.f32 %8696, 1
  %8698 = extractvalue %dx.types.CBufRet.f32 %8696, 2
  %8699 = extractvalue %dx.types.CBufRet.f32 %8696, 0
  %8700 = fmul fast float %8697, %8695
  %8701 = fadd fast float %8699, %8700
  %8702 = fadd fast float %8699, %8698
  %8703 = fsub fast float %8697, %8698
  %8704 = fadd fast float %8703, %8699
  %8705 = call float @dx.op.binary.f32(i32 35, float %8701, float %8702)  ; FMax(a,b)
  %8706 = call float @dx.op.binary.f32(i32 36, float %8705, float %8704)  ; FMin(a,b)
  %8707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8644, float %8645, float %8706, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8708 = extractvalue %dx.types.ResRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.ResRet.f32 %8707, 1
  %8710 = extractvalue %dx.types.ResRet.f32 %8707, 2
  %8711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.i32 %8711, 0
  %8713 = extractvalue %dx.types.CBufRet.i32 %8711, 1
  %8714 = uitofp i32 %8712 to float
  %8715 = uitofp i32 %8713 to float
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 0
  %8718 = extractvalue %dx.types.CBufRet.f32 %8716, 1
  %8719 = fmul fast float %8714, %8644
  %8720 = fmul fast float %8715, %8645
  %8721 = fadd fast float %8719, -5.000000e-01
  %8722 = fadd fast float %8720, -5.000000e-01
  %8723 = call float @dx.op.unary.f32(i32 22, float %8721)  ; Frc(value)
  %8724 = call float @dx.op.unary.f32(i32 22, float %8722)  ; Frc(value)
  %8725 = fmul fast float %8723, %8723
  %8726 = fmul fast float %8725, %8723
  %8727 = fsub fast float 3.000000e+00, %8723
  %8728 = fmul fast float %8725, %8727
  %8729 = fmul fast float %8723, 3.000000e+00
  %8730 = fmul fast float %8726, 3.000000e+00
  %8731 = fmul fast float %8725, 6.000000e+00
  %8732 = fsub fast float %8730, %8731
  %8733 = fadd fast float %8732, 4.000000e+00
  %8734 = fmul fast float %8733, 0x3FC5555560000000
  %8735 = fmul fast float %8726, -3.000000e+00
  %8736 = fadd fast float %8725, %8723
  %8737 = fmul fast float %8736, 3.000000e+00
  %8738 = fadd fast float %8735, 1.000000e+00
  %8739 = fadd fast float %8738, %8737
  %8740 = fmul fast float %8726, 0x3FC5555560000000
  %8741 = fmul fast float %8724, %8724
  %8742 = fmul fast float %8741, %8724
  %8743 = fsub fast float 3.000000e+00, %8724
  %8744 = fmul fast float %8741, %8743
  %8745 = fmul fast float %8724, 3.000000e+00
  %8746 = fmul fast float %8742, 3.000000e+00
  %8747 = fmul fast float %8741, 6.000000e+00
  %8748 = fsub fast float %8746, %8747
  %8749 = fadd fast float %8748, 4.000000e+00
  %8750 = fmul fast float %8749, 0x3FC5555560000000
  %8751 = fmul fast float %8742, -3.000000e+00
  %8752 = fadd fast float %8741, %8724
  %8753 = fmul fast float %8752, 3.000000e+00
  %8754 = fadd fast float %8751, 1.000000e+00
  %8755 = fadd fast float %8754, %8753
  %8756 = fmul fast float %8742, 0x3FC5555560000000
  %8757 = fadd fast float %8723, 1.000000e+00
  %8758 = fsub fast float 1.000000e+00, %8729
  %8759 = fadd fast float %8758, %8728
  %8760 = fadd fast float %8759, %8733
  %8761 = fmul fast float %8760, 0x3FC5555560000000
  %8762 = fdiv fast float %8734, %8761
  %8763 = fsub fast float %8757, %8762
  %8764 = fsub fast float 1.000000e+00, %8723
  %8765 = fadd fast float %8739, %8726
  %8766 = fmul fast float %8765, 0x3FC5555560000000
  %8767 = fdiv fast float %8740, %8766
  %8768 = fadd fast float %8764, %8767
  %8769 = fadd fast float %8724, 1.000000e+00
  %8770 = fsub fast float 1.000000e+00, %8745
  %8771 = fadd fast float %8770, %8744
  %8772 = fadd fast float %8771, %8749
  %8773 = fmul fast float %8772, 0x3FC5555560000000
  %8774 = fdiv fast float %8750, %8773
  %8775 = fsub fast float %8769, %8774
  %8776 = fsub fast float 1.000000e+00, %8724
  %8777 = fadd fast float %8755, %8742
  %8778 = fmul fast float %8777, 0x3FC5555560000000
  %8779 = fdiv fast float %8756, %8778
  %8780 = fadd fast float %8779, %8776
  %8781 = fmul fast float %8763, %8717
  %8782 = fsub fast float %8644, %8781
  %8783 = fmul fast float %8768, %8717
  %8784 = fadd fast float %8783, %8644
  %8785 = fmul fast float %8780, %8718
  %8786 = fadd fast float %8785, %8645
  %8787 = fmul fast float %8775, %8718
  %8788 = fsub fast float %8645, %8787
  %8789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8782, float %8788, float %8706, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8790 = extractvalue %dx.types.ResRet.f32 %8789, 0
  %8791 = extractvalue %dx.types.ResRet.f32 %8789, 1
  %8792 = extractvalue %dx.types.ResRet.f32 %8789, 2
  %8793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8784, float %8788, float %8706, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8794 = extractvalue %dx.types.ResRet.f32 %8793, 0
  %8795 = extractvalue %dx.types.ResRet.f32 %8793, 1
  %8796 = extractvalue %dx.types.ResRet.f32 %8793, 2
  %8797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8782, float %8786, float %8706, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8798 = extractvalue %dx.types.ResRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.ResRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.ResRet.f32 %8797, 2
  %8801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8784, float %8786, float %8706, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8802 = extractvalue %dx.types.ResRet.f32 %8801, 0
  %8803 = extractvalue %dx.types.ResRet.f32 %8801, 1
  %8804 = extractvalue %dx.types.ResRet.f32 %8801, 2
  %8805 = fsub fast float %8798, %8790
  %8806 = fsub fast float %8799, %8791
  %8807 = fsub fast float %8800, %8792
  %8808 = fmul fast float %8805, %8778
  %8809 = fmul fast float %8806, %8778
  %8810 = fmul fast float %8807, %8778
  %8811 = fadd fast float %8808, %8790
  %8812 = fadd fast float %8809, %8791
  %8813 = fadd fast float %8810, %8792
  %8814 = fsub fast float %8802, %8794
  %8815 = fsub fast float %8803, %8795
  %8816 = fsub fast float %8804, %8796
  %8817 = fmul fast float %8814, %8778
  %8818 = fmul fast float %8815, %8778
  %8819 = fmul fast float %8816, %8778
  %8820 = fsub fast float %8794, %8811
  %8821 = fadd fast float %8820, %8817
  %8822 = fsub fast float %8795, %8812
  %8823 = fadd fast float %8822, %8818
  %8824 = fsub fast float %8796, %8813
  %8825 = fadd fast float %8824, %8819
  %8826 = fmul fast float %8821, %8766
  %8827 = fmul fast float %8823, %8766
  %8828 = fmul fast float %8825, %8766
  %8829 = fadd fast float %8826, %8811
  %8830 = fadd fast float %8827, %8812
  %8831 = fadd fast float %8828, %8813
  %8832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8833 = extractvalue %dx.types.CBufRet.f32 %8832, 1
  %8834 = fmul fast float %8829, %8833
  %8835 = fmul fast float %8830, %8833
  %8836 = fmul fast float %8831, %8833
  br label %8837

; <label>:8837                                    ; preds = %8669, %8638
  %8838 = phi float [ %8708, %8669 ], [ 1.000000e+00, %8638 ]
  %8839 = phi float [ %8709, %8669 ], [ 1.000000e+00, %8638 ]
  %8840 = phi float [ %8710, %8669 ], [ 1.000000e+00, %8638 ]
  %8841 = phi float [ %8834, %8669 ], [ 0.000000e+00, %8638 ]
  %8842 = phi float [ %8835, %8669 ], [ 0.000000e+00, %8638 ]
  %8843 = phi float [ %8836, %8669 ], [ 0.000000e+00, %8638 ]
  %8844 = fmul fast float %8841, %8615
  %8845 = fmul fast float %8842, %8615
  %8846 = fmul fast float %8843, %8615
  %8847 = call float @dx.op.dot3.f32(i32 55, float %8838, float %8839, float %8840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8848 = call float @dx.op.dot3.f32(i32 55, float %8844, float %8845, float %8846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8849 = select i1 %232, float %8847, float %8838
  %8850 = select i1 %232, float %8847, float %8839
  %8851 = select i1 %232, float 1.000000e+00, float %8840
  %8852 = select i1 %232, float %8848, float %8844
  %8853 = select i1 %232, float 0.000000e+00, float %8845
  %8854 = select i1 %232, float 0.000000e+00, float %8846
  %8855 = fmul fast float %8849, %8628
  %8856 = fmul fast float %8850, %8629
  %8857 = fmul fast float %8851, %8630
  %8858 = fadd fast float %8855, %8852
  %8859 = fadd fast float %8856, %8853
  %8860 = fadd fast float %8854, %8857
  %8861 = fmul fast float %8849, %8601
  %8862 = fmul fast float %8850, %8602
  %8863 = fmul fast float %8851, %8603
  %8864 = fmul fast float %140, %8640
  %8865 = fmul fast float %142, %8641
  %8866 = fsub fast float 1.000000e+00, %8864
  %8867 = fsub fast float 1.000000e+00, %8865
  %8868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8869 = extractvalue %dx.types.CBufRet.f32 %8868, 0
  %8870 = extractvalue %dx.types.CBufRet.f32 %8868, 1
  %8871 = extractvalue %dx.types.CBufRet.f32 %8868, 2
  %8872 = fmul fast float %8866, %8869
  %8873 = fmul fast float %8866, %8870
  %8874 = fmul fast float %8866, %8871
  %8875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8875, 0
  %8877 = extractvalue %dx.types.CBufRet.f32 %8875, 1
  %8878 = extractvalue %dx.types.CBufRet.f32 %8875, 2
  %8879 = fmul fast float %8867, %8876
  %8880 = fmul fast float %8867, %8877
  %8881 = fmul fast float %8867, %8878
  %8882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8883 = extractvalue %dx.types.CBufRet.f32 %8882, 0
  %8884 = extractvalue %dx.types.CBufRet.f32 %8882, 1
  %8885 = extractvalue %dx.types.CBufRet.f32 %8882, 2
  %8886 = fadd fast float %8879, %8883
  %8887 = fadd fast float %8886, %8872
  %8888 = fadd fast float %8880, %8884
  %8889 = fadd fast float %8888, %8873
  %8890 = fadd fast float %8881, %8885
  %8891 = fadd fast float %8890, %8874
  %8892 = fmul fast float %8887, %192
  %8893 = fmul fast float %8889, %192
  %8894 = fmul fast float %8891, %192
  br label %8895

; <label>:8895                                    ; preds = %8837, %8600
  %8896 = phi float [ %8892, %8837 ], [ %170, %8600 ]
  %8897 = phi float [ %8893, %8837 ], [ %171, %8600 ]
  %8898 = phi float [ %8894, %8837 ], [ %172, %8600 ]
  %8899 = phi float [ %192, %8837 ], [ %99, %8600 ]
  %8900 = phi float [ %8858, %8837 ], [ %8628, %8600 ]
  %8901 = phi float [ %8859, %8837 ], [ %8629, %8600 ]
  %8902 = phi float [ %8860, %8837 ], [ %8630, %8600 ]
  %8903 = phi float [ %8861, %8837 ], [ %8601, %8600 ]
  %8904 = phi float [ %8862, %8837 ], [ %8602, %8600 ]
  %8905 = phi float [ %8863, %8837 ], [ %8603, %8600 ]
  %8906 = phi float [ %8838, %8837 ], [ 1.000000e+00, %8600 ]
  br i1 %8637, label %10061, label %8907

; <label>:8907                                    ; preds = %8895
  %8908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.f32 %8908, 0
  %8910 = extractvalue %dx.types.CBufRet.f32 %8908, 1
  %8911 = extractvalue %dx.types.CBufRet.f32 %8908, 2
  %8912 = extractvalue %dx.types.CBufRet.f32 %8908, 3
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 0
  %8915 = extractvalue %dx.types.CBufRet.f32 %8913, 1
  %8916 = extractvalue %dx.types.CBufRet.f32 %8913, 2
  %8917 = extractvalue %dx.types.CBufRet.f32 %8913, 3
  %8918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8919 = extractvalue %dx.types.CBufRet.f32 %8918, 0
  %8920 = extractvalue %dx.types.CBufRet.f32 %8918, 1
  %8921 = extractvalue %dx.types.CBufRet.f32 %8918, 2
  %8922 = extractvalue %dx.types.CBufRet.f32 %8918, 3
  %8923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8924 = extractvalue %dx.types.CBufRet.f32 %8923, 0
  %8925 = extractvalue %dx.types.CBufRet.f32 %8923, 1
  %8926 = extractvalue %dx.types.CBufRet.f32 %8923, 2
  %8927 = extractvalue %dx.types.CBufRet.f32 %8923, 3
  %8928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8929 = extractvalue %dx.types.CBufRet.f32 %8928, 3
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 3
  %8932 = extractvalue %dx.types.CBufRet.f32 %8930, 0
  %8933 = extractvalue %dx.types.CBufRet.f32 %8930, 1
  %8934 = extractvalue %dx.types.CBufRet.f32 %8930, 2
  %8935 = fcmp fast olt float %8934, -5.000000e-01
  %8936 = call float @dx.op.dot3.f32(i32 55, float %8896, float %8897, float %8898, float %8896, float %8897, float %8898)  ; Dot3(ax,ay,az,bx,by,bz)
  %8937 = call float @dx.op.unary.f32(i32 25, float %8936)  ; Rsqrt(value)
  %8938 = fmul fast float %8937, %8936
  %8939 = fmul fast float %8937, %8896
  %8940 = fmul fast float %8937, %8897
  %8941 = fmul fast float %8937, %8898
  %8942 = fadd fast float %8938, %8912
  %8943 = call float @dx.op.dot3.f32(i32 55, float %8939, float %8940, float %8941, float %8909, float %8910, float %8911)  ; Dot3(ax,ay,az,bx,by,bz)
  %8944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8945 = extractvalue %dx.types.CBufRet.i32 %8944, 1
  %8946 = and i32 %8945, 1
  %8947 = icmp ne i32 %8946, 0
  %8948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8949 = extractvalue %dx.types.CBufRet.f32 %8948, 2
  %8950 = fcmp fast ogt float %8949, 0.000000e+00
  %8951 = and i1 %8947, %8950
  br i1 %8951, label %8952, label %9358, !dx.controlflow.hints !135

; <label>:8952                                    ; preds = %8907
  %8953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8954 = extractvalue %dx.types.CBufRet.f32 %8953, 3
  %8955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.f32 %8955, 2
  %8957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8958 = extractvalue %dx.types.CBufRet.f32 %8957, 2
  %8959 = fsub fast float %8956, %8958
  %8960 = and i32 %8945, 2
  %8961 = extractvalue %dx.types.CBufRet.i32 %8944, 0
  %8962 = call i32 @dx.op.binary.i32(i32 40, i32 %8961, i32 3)  ; UMin(a,b)
  %8963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8964 = extractvalue %dx.types.CBufRet.f32 %8963, 0
  %8965 = extractvalue %dx.types.CBufRet.f32 %8963, 1
  %8966 = extractvalue %dx.types.CBufRet.f32 %8957, 0
  %8967 = extractvalue %dx.types.CBufRet.f32 %8957, 1
  %8968 = fsub fast float %8964, %8966
  %8969 = fsub fast float %8965, %8967
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 0
  %8972 = fcmp fast ogt float %8971, 0.000000e+00
  %8973 = fsub fast float -0.000000e+00, %8968
  %8974 = fsub fast float -0.000000e+00, %8969
  %8975 = call float @dx.op.dot2.f32(i32 54, float %8939, float %8940, float %8939, float %8940)  ; Dot2(ax,ay,bx,by)
  %8976 = call float @dx.op.dot2.f32(i32 54, float %8939, float %8940, float %8973, float %8974)  ; Dot2(ax,ay,bx,by)
  %8977 = fmul fast float %8976, 2.000000e+00
  %8978 = call float @dx.op.dot2.f32(i32 54, float %8973, float %8974, float %8973, float %8974)  ; Dot2(ax,ay,bx,by)
  %8979 = fmul fast float %8971, %8971
  %8980 = fsub fast float %8978, %8979
  %8981 = fmul fast float %8977, %8977
  %8982 = fmul fast float %8975, 4.000000e+00
  %8983 = fmul fast float %8982, %8980
  %8984 = fsub fast float %8981, %8983
  %8985 = fcmp fast ogt float %8984, 0.000000e+00
  br i1 %8985, label %8986, label %9001

; <label>:8986                                    ; preds = %8952
  %8987 = fcmp fast ogt float %8977, 0.000000e+00
  %8988 = call float @dx.op.unary.f32(i32 24, float %8984)  ; Sqrt(value)
  %8989 = fsub fast float -0.000000e+00, %8988
  %8990 = select i1 %8987, float %8988, float %8989
  %8991 = fadd fast float %8990, %8977
  %8992 = fmul float %8991, -5.000000e-01
  %8993 = fdiv fast float %8992, %8975
  %8994 = call float @dx.op.binary.f32(i32 35, float %8993, float 0.000000e+00)  ; FMax(a,b)
  %8995 = call float @dx.op.binary.f32(i32 36, float %8938, float %8994)  ; FMin(a,b)
  %8996 = fdiv fast float %8980, %8992
  %8997 = call float @dx.op.binary.f32(i32 35, float %8996, float 0.000000e+00)  ; FMax(a,b)
  %8998 = call float @dx.op.binary.f32(i32 36, float %8938, float %8997)  ; FMin(a,b)
  %8999 = call float @dx.op.binary.f32(i32 36, float %8995, float %8998)  ; FMin(a,b)
  %9000 = call float @dx.op.binary.f32(i32 35, float %8995, float %8998)  ; FMax(a,b)
  br label %9001

; <label>:9001                                    ; preds = %8986, %8952
  %9002 = phi float [ %9000, %8986 ], [ -1.000000e+00, %8952 ]
  %9003 = phi float [ %8999, %8986 ], [ -1.000000e+00, %8952 ]
  %9004 = phi i1 [ true, %8986 ], [ false, %8952 ]
  %9005 = and i1 %8972, %9004
  br i1 %9005, label %9006, label %9008

; <label>:9006                                    ; preds = %9001
  %9007 = fcmp fast oeq float %9003, %9002
  br i1 %9007, label %9311, label %9009

; <label>:9008                                    ; preds = %9001
  br i1 %8972, label %9311, label %9009

; <label>:9009                                    ; preds = %9008, %9006
  %9010 = phi float [ %8938, %9008 ], [ %9002, %9006 ]
  %9011 = phi float [ 0.000000e+00, %9008 ], [ %9003, %9006 ]
  %9012 = icmp ne i32 %8960, 0
  %9013 = fmul fast float %9010, %8941
  %9014 = fadd fast float %9013, %8954
  %9015 = fmul fast float %9014, %9010
  %9016 = select i1 %9012, float 0.000000e+00, float %9015
  %9017 = fcmp fast oeq float %8941, 0.000000e+00
  %9018 = fdiv fast float %8959, %8941
  %9019 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9018)  ; FMax(a,b)
  %9020 = select i1 %9017, float %9010, float %9019
  %9021 = call float @dx.op.binary.f32(i32 36, float %9010, float %9020)  ; FMin(a,b)
  %9022 = fcmp fast ogt float %8941, 0.000000e+00
  %9023 = fcmp fast olt float %8959, 0.000000e+00
  br i1 %9022, label %9024, label %9081

; <label>:9024                                    ; preds = %9009
  %9025 = icmp eq i32 %8960, 0
  br i1 %9023, label %9026, label %9070

; <label>:9026                                    ; preds = %9024
  %9027 = select i1 %9025, float %9010, float 0.000000e+00
  %9028 = fsub fast float -0.000000e+00, %9027
  %9029 = call float @dx.op.unary.f32(i32 6, float %9028)  ; FAbs(value)
  %9030 = fmul fast float %9027, %8941
  %9031 = fadd fast float %9030, %8954
  %9032 = fmul fast float %9029, %9031
  %9033 = fsub fast float %9016, %9032
  %9034 = fsub fast float %9010, %9029
  %9035 = select i1 %9025, float %9034, float 0.000000e+00
  %9036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9037 = extractvalue %dx.types.CBufRet.f32 %9036, 0
  %9038 = extractvalue %dx.types.CBufRet.f32 %9036, 1
  %9039 = extractvalue %dx.types.CBufRet.f32 %9036, 2
  %9040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9041 = extractvalue %dx.types.CBufRet.f32 %9040, 0
  %9042 = extractvalue %dx.types.CBufRet.f32 %9040, 1
  %9043 = extractvalue %dx.types.CBufRet.f32 %9040, 2
  %9044 = extractvalue %dx.types.CBufRet.f32 %9040, 3
  %9045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9046 = extractvalue %dx.types.CBufRet.f32 %9045, 3
  %9047 = call float @dx.op.binary.f32(i32 36, float %9033, float %9046)  ; FMin(a,b)
  %9048 = fmul fast float %9044, %9035
  %9049 = call float @dx.op.unary.f32(i32 7, float %9048)  ; Saturate(value)
  %9050 = fsub fast float %9041, %9037
  %9051 = fsub fast float %9042, %9038
  %9052 = fsub fast float %9043, %9039
  %9053 = fmul fast float %9049, %9050
  %9054 = fmul fast float %9049, %9051
  %9055 = fmul fast float %9049, %9052
  %9056 = fadd fast float %9053, %9037
  %9057 = fadd fast float %9054, %9038
  %9058 = fadd fast float %9055, %9039
  %9059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9060 = extractvalue %dx.types.CBufRet.f32 %9059, 0
  %9061 = extractvalue %dx.types.CBufRet.f32 %9059, 1
  %9062 = fadd fast float %9061, %9060
  %9063 = call float @dx.op.unary.f32(i32 7, float %9062)  ; Saturate(value)
  %9064 = extractvalue %dx.types.CBufRet.f32 %9059, 2
  %9065 = extractvalue %dx.types.CBufRet.f32 %9059, 3
  %9066 = fadd fast float %9065, %9064
  %9067 = call float @dx.op.unary.f32(i32 7, float %9066)  ; Saturate(value)
  %9068 = fmul fast float %9063, %9047
  %9069 = fmul fast float %9068, %9067
  br label %9311

; <label>:9070                                    ; preds = %9024
  br i1 %9025, label %9071, label %9092

; <label>:9071                                    ; preds = %9070
  %9072 = call float @dx.op.binary.f32(i32 36, float %9021, float %9011)  ; FMin(a,b)
  %9073 = fsub fast float %9021, %9072
  %9074 = fsub fast float %9073, %9010
  %9075 = call float @dx.op.unary.f32(i32 6, float %9074)  ; FAbs(value)
  %9076 = fadd fast float %9073, %9010
  %9077 = fmul fast float %9076, %8941
  %9078 = fadd fast float %9077, %8954
  %9079 = fmul fast float %9078, %9075
  %9080 = fsub fast float %9016, %9079
  br label %9092

; <label>:9081                                    ; preds = %9009
  br i1 %9023, label %9082, label %9092

; <label>:9082                                    ; preds = %9081
  %9083 = call float @dx.op.binary.f32(i32 35, float %9011, float %9021)  ; FMax(a,b)
  %9084 = icmp eq i32 %8960, 0
  %9085 = select i1 %9084, float %9021, float 0.000000e+00
  %9086 = fsub fast float -0.000000e+00, %9085
  %9087 = call float @dx.op.unary.f32(i32 6, float %9086)  ; FAbs(value)
  %9088 = fmul fast float %9085, %8941
  %9089 = fadd fast float %9088, %8954
  %9090 = fmul fast float %9087, %9089
  %9091 = fsub fast float %9016, %9090
  br label %9092

; <label>:9092                                    ; preds = %9082, %9081, %9071, %9070
  %9093 = phi float [ %9011, %9070 ], [ %9011, %9071 ], [ %9083, %9082 ], [ %9011, %9081 ]
  %9094 = phi float [ 0.000000e+00, %9070 ], [ %9075, %9071 ], [ %9087, %9082 ], [ 0.000000e+00, %9081 ]
  %9095 = phi float [ %9016, %9070 ], [ %9080, %9071 ], [ %9091, %9082 ], [ %9016, %9081 ]
  %9096 = phi float [ %9021, %9070 ], [ %9021, %9071 ], [ %9010, %9082 ], [ %9010, %9081 ]
  %9097 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9097, align 4, !tbaa !122, !noalias !136
  %9098 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9098, align 4, !tbaa !122, !noalias !136
  %9099 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9099, align 4, !tbaa !122, !noalias !136
  %9100 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9100, align 4, !tbaa !122, !noalias !136
  %9101 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9101, align 4, !tbaa !122, !noalias !136
  %9102 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9102, align 4, !tbaa !122, !noalias !136
  %9103 = icmp sgt i32 %8962, 0
  br i1 %9103, label %9104, label %9165

; <label>:9104                                    ; preds = %9092
  br label %9105

; <label>:9105                                    ; preds = %9154, %9104
  %9106 = phi i32 [ %9155, %9154 ], [ 0, %9104 ]
  %9107 = phi i32 [ %9156, %9154 ], [ 0, %9104 ]
  %9108 = add nuw i32 %9107, 171
  %9109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9108)  ; CBufferLoadLegacy(handle,regIndex)
  %9110 = extractvalue %dx.types.CBufRet.f32 %9109, 0
  %9111 = extractvalue %dx.types.CBufRet.f32 %9109, 1
  %9112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9113 = extractvalue %dx.types.CBufRet.f32 %9112, 0
  %9114 = extractvalue %dx.types.CBufRet.f32 %9112, 1
  %9115 = fsub fast float %9110, %9113
  %9116 = fsub fast float %9111, %9114
  %9117 = extractvalue %dx.types.CBufRet.f32 %9109, 2
  %9118 = fsub fast float -0.000000e+00, %9115
  %9119 = fsub fast float -0.000000e+00, %9116
  %9120 = call float @dx.op.dot2.f32(i32 54, float %8939, float %8940, float %9118, float %9119)  ; Dot2(ax,ay,bx,by)
  %9121 = fmul fast float %9120, 2.000000e+00
  %9122 = call float @dx.op.dot2.f32(i32 54, float %9118, float %9119, float %9118, float %9119)  ; Dot2(ax,ay,bx,by)
  %9123 = fmul fast float %9117, %9117
  %9124 = fsub fast float %9122, %9123
  %9125 = fmul fast float %9121, %9121
  %9126 = fmul fast float %8982, %9124
  %9127 = fsub fast float %9125, %9126
  %9128 = fcmp fast ogt float %9127, 0.000000e+00
  br i1 %9128, label %9129, label %9144

; <label>:9129                                    ; preds = %9105
  %9130 = fcmp fast ogt float %9121, 0.000000e+00
  %9131 = call float @dx.op.unary.f32(i32 24, float %9127)  ; Sqrt(value)
  %9132 = fsub fast float -0.000000e+00, %9131
  %9133 = select i1 %9130, float %9131, float %9132
  %9134 = fadd fast float %9133, %9121
  %9135 = fmul float %9134, -5.000000e-01
  %9136 = fdiv fast float %9135, %8975
  %9137 = call float @dx.op.binary.f32(i32 35, float %9136, float 0.000000e+00)  ; FMax(a,b)
  %9138 = call float @dx.op.binary.f32(i32 36, float %9010, float %9137)  ; FMin(a,b)
  %9139 = fdiv fast float %9124, %9135
  %9140 = call float @dx.op.binary.f32(i32 35, float %9139, float 0.000000e+00)  ; FMax(a,b)
  %9141 = call float @dx.op.binary.f32(i32 36, float %9010, float %9140)  ; FMin(a,b)
  %9142 = call float @dx.op.binary.f32(i32 36, float %9138, float %9141)  ; FMin(a,b)
  %9143 = call float @dx.op.binary.f32(i32 35, float %9138, float %9141)  ; FMax(a,b)
  br label %9144

; <label>:9144                                    ; preds = %9129, %9105
  %9145 = phi float [ %9143, %9129 ], [ -1.000000e+00, %9105 ]
  %9146 = phi float [ %9142, %9129 ], [ -1.000000e+00, %9105 ]
  %9147 = phi i1 [ true, %9129 ], [ false, %9105 ]
  br i1 %9147, label %9148, label %9154

; <label>:9148                                    ; preds = %9144
  %9149 = call float @dx.op.binary.f32(i32 35, float %9093, float %9146)  ; FMax(a,b)
  %9150 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9107
  store float %9149, float* %9150, align 4, !tbaa !122, !noalias !136
  %9151 = call float @dx.op.binary.f32(i32 35, float %9093, float %9145)  ; FMax(a,b)
  %9152 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9107
  store float %9151, float* %9152, align 4, !tbaa !122, !noalias !136
  %9153 = add nsw i32 %9106, 1
  br label %9154

; <label>:9154                                    ; preds = %9148, %9144
  %9155 = phi i32 [ %9153, %9148 ], [ %9106, %9144 ]
  %9156 = add nuw nsw i32 %9107, 1
  %9157 = icmp eq i32 %9156, %8962
  br i1 %9157, label %9158, label %9105

; <label>:9158                                    ; preds = %9154
  %9159 = load float, float* %9099, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9160 = load float, float* %9098, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9161 = load float, float* %9097, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9162 = load float, float* %9102, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9163 = load float, float* %9101, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9164 = load float, float* %9100, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9165

; <label>:9165                                    ; preds = %9158, %9092
  %9166 = phi float [ -1.000000e+00, %9092 ], [ %9164, %9158 ]
  %9167 = phi float [ -1.000000e+00, %9092 ], [ %9163, %9158 ]
  %9168 = phi float [ -1.000000e+00, %9092 ], [ %9162, %9158 ]
  %9169 = phi float [ -1.000000e+00, %9092 ], [ %9161, %9158 ]
  %9170 = phi float [ -1.000000e+00, %9092 ], [ %9160, %9158 ]
  %9171 = phi float [ -1.000000e+00, %9092 ], [ %9159, %9158 ]
  %9172 = phi i32 [ 0, %9092 ], [ %9155, %9158 ]
  %9173 = call float @dx.op.binary.f32(i32 36, float %9170, float %9171)  ; FMin(a,b)
  %9174 = call float @dx.op.binary.f32(i32 36, float %9169, float %9173)  ; FMin(a,b)
  %9175 = call float @dx.op.binary.f32(i32 35, float %9169, float %9170)  ; FMax(a,b)
  %9176 = call float @dx.op.binary.f32(i32 36, float %9175, float %9171)  ; FMin(a,b)
  %9177 = call float @dx.op.binary.f32(i32 36, float %9169, float %9170)  ; FMin(a,b)
  %9178 = call float @dx.op.binary.f32(i32 35, float %9177, float %9176)  ; FMax(a,b)
  %9179 = call float @dx.op.binary.f32(i32 35, float %9170, float %9171)  ; FMax(a,b)
  %9180 = call float @dx.op.binary.f32(i32 35, float %9169, float %9179)  ; FMax(a,b)
  store float %9174, float* %9097, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9178, float* %9098, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9180, float* %9099, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9181 = call float @dx.op.binary.f32(i32 36, float %9167, float %9168)  ; FMin(a,b)
  %9182 = call float @dx.op.binary.f32(i32 36, float %9166, float %9181)  ; FMin(a,b)
  %9183 = call float @dx.op.binary.f32(i32 35, float %9166, float %9167)  ; FMax(a,b)
  %9184 = call float @dx.op.binary.f32(i32 36, float %9183, float %9168)  ; FMin(a,b)
  %9185 = call float @dx.op.binary.f32(i32 36, float %9166, float %9167)  ; FMin(a,b)
  %9186 = call float @dx.op.binary.f32(i32 35, float %9185, float %9184)  ; FMax(a,b)
  %9187 = call float @dx.op.binary.f32(i32 35, float %9167, float %9168)  ; FMax(a,b)
  %9188 = call float @dx.op.binary.f32(i32 35, float %9166, float %9187)  ; FMax(a,b)
  store float %9182, float* %9100, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9186, float* %9101, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9188, float* %9102, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9189 = sub nsw i32 3, %9172
  %9190 = icmp sgt i32 %9189, 2
  br i1 %9190, label %9191, label %9229

; <label>:9191                                    ; preds = %9165
  %9192 = icmp eq i32 %8960, 0
  %9193 = fsub fast float %9010, %9094
  %9194 = select i1 %9192, float %9193, float %9094
  %9195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9196 = extractvalue %dx.types.CBufRet.f32 %9195, 0
  %9197 = extractvalue %dx.types.CBufRet.f32 %9195, 1
  %9198 = extractvalue %dx.types.CBufRet.f32 %9195, 2
  %9199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9200 = extractvalue %dx.types.CBufRet.f32 %9199, 0
  %9201 = extractvalue %dx.types.CBufRet.f32 %9199, 1
  %9202 = extractvalue %dx.types.CBufRet.f32 %9199, 2
  %9203 = extractvalue %dx.types.CBufRet.f32 %9199, 3
  %9204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9205 = extractvalue %dx.types.CBufRet.f32 %9204, 3
  %9206 = call float @dx.op.binary.f32(i32 36, float %9095, float %9205)  ; FMin(a,b)
  %9207 = fmul fast float %9203, %9194
  %9208 = call float @dx.op.unary.f32(i32 7, float %9207)  ; Saturate(value)
  %9209 = fsub fast float %9200, %9196
  %9210 = fsub fast float %9201, %9197
  %9211 = fsub fast float %9202, %9198
  %9212 = fmul fast float %9208, %9209
  %9213 = fmul fast float %9208, %9210
  %9214 = fmul fast float %9208, %9211
  %9215 = fadd fast float %9212, %9196
  %9216 = fadd fast float %9213, %9197
  %9217 = fadd fast float %9214, %9198
  %9218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9219 = extractvalue %dx.types.CBufRet.f32 %9218, 0
  %9220 = extractvalue %dx.types.CBufRet.f32 %9218, 1
  %9221 = fadd fast float %9220, %9219
  %9222 = call float @dx.op.unary.f32(i32 7, float %9221)  ; Saturate(value)
  %9223 = extractvalue %dx.types.CBufRet.f32 %9218, 2
  %9224 = extractvalue %dx.types.CBufRet.f32 %9218, 3
  %9225 = fadd fast float %9224, %9223
  %9226 = call float @dx.op.unary.f32(i32 7, float %9225)  ; Saturate(value)
  %9227 = fmul fast float %9222, %9206
  %9228 = fmul fast float %9227, %9226
  br label %9311

; <label>:9229                                    ; preds = %9165
  %9230 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9189
  %9231 = load float, float* %9230, align 4, !tbaa !122, !noalias !136
  %9232 = fcmp fast olt float %9231, %9096
  %9233 = icmp sgt i32 %9172, 0
  %9234 = and i1 %9233, %9232
  br i1 %9234, label %9235, label %9272

; <label>:9235                                    ; preds = %9229
  br label %9236

; <label>:9236                                    ; preds = %9265, %9235
  %9237 = phi float [ %9266, %9265 ], [ %9094, %9235 ]
  %9238 = phi float [ %9267, %9265 ], [ %9095, %9235 ]
  %9239 = phi float [ %9247, %9265 ], [ %9231, %9235 ]
  %9240 = phi i32 [ %9244, %9265 ], [ %9189, %9235 ]
  %9241 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9240
  %9242 = load float, float* %9241, align 4, !tbaa !122, !noalias !136
  %9243 = icmp slt i32 %9240, 2
  %9244 = add nsw i32 %9240, 1
  %9245 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9244
  %9246 = load float, float* %9245, align 4, !tbaa !122, !noalias !136
  %9247 = select i1 %9243, float %9246, float %9010
  %9248 = call float @dx.op.binary.f32(i32 36, float %9247, float %9242)  ; FMin(a,b)
  %9249 = call float @dx.op.binary.f32(i32 36, float %9096, float %9248)  ; FMin(a,b)
  %9250 = icmp eq i32 %8960, 0
  %9251 = fadd fast float %9249, %9239
  %9252 = fmul fast float %9251, %8941
  %9253 = fadd fast float %9252, %8954
  br i1 %9250, label %9259, label %9254

; <label>:9254                                    ; preds = %9236
  %9255 = fsub fast float %9249, %9239
  %9256 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9255)  ; FMax(a,b)
  %9257 = fmul fast float %9256, %9253
  %9258 = fadd fast float %9257, %9238
  br label %9265

; <label>:9259                                    ; preds = %9236
  %9260 = fsub fast float %9239, %9249
  %9261 = call float @dx.op.unary.f32(i32 6, float %9260)  ; FAbs(value)
  %9262 = fadd fast float %9261, %9237
  %9263 = fmul fast float %9261, %9253
  %9264 = fsub fast float %9238, %9263
  br label %9265

; <label>:9265                                    ; preds = %9259, %9254
  %9266 = phi float [ %9256, %9254 ], [ %9262, %9259 ]
  %9267 = phi float [ %9258, %9254 ], [ %9264, %9259 ]
  %9268 = fcmp fast olt float %9247, %9096
  %9269 = icmp slt i32 %9244, 3
  %9270 = and i1 %9269, %9268
  br i1 %9270, label %9236, label %9271

; <label>:9271                                    ; preds = %9265
  br label %9272

; <label>:9272                                    ; preds = %9271, %9229
  %9273 = phi float [ %9094, %9229 ], [ %9266, %9271 ]
  %9274 = phi float [ %9095, %9229 ], [ %9267, %9271 ]
  %9275 = fsub fast float %9010, %9273
  %9276 = select i1 %9012, float %9273, float %9275
  %9277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9278 = extractvalue %dx.types.CBufRet.f32 %9277, 0
  %9279 = extractvalue %dx.types.CBufRet.f32 %9277, 1
  %9280 = extractvalue %dx.types.CBufRet.f32 %9277, 2
  %9281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9282 = extractvalue %dx.types.CBufRet.f32 %9281, 0
  %9283 = extractvalue %dx.types.CBufRet.f32 %9281, 1
  %9284 = extractvalue %dx.types.CBufRet.f32 %9281, 2
  %9285 = extractvalue %dx.types.CBufRet.f32 %9281, 3
  %9286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9287 = extractvalue %dx.types.CBufRet.f32 %9286, 3
  %9288 = call float @dx.op.binary.f32(i32 36, float %9274, float %9287)  ; FMin(a,b)
  %9289 = fmul fast float %9285, %9276
  %9290 = call float @dx.op.unary.f32(i32 7, float %9289)  ; Saturate(value)
  %9291 = fsub fast float %9282, %9278
  %9292 = fsub fast float %9283, %9279
  %9293 = fsub fast float %9284, %9280
  %9294 = fmul fast float %9290, %9291
  %9295 = fmul fast float %9290, %9292
  %9296 = fmul fast float %9290, %9293
  %9297 = fadd fast float %9294, %9278
  %9298 = fadd fast float %9295, %9279
  %9299 = fadd fast float %9296, %9280
  %9300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9301 = extractvalue %dx.types.CBufRet.f32 %9300, 0
  %9302 = extractvalue %dx.types.CBufRet.f32 %9300, 1
  %9303 = fadd fast float %9302, %9301
  %9304 = call float @dx.op.unary.f32(i32 7, float %9303)  ; Saturate(value)
  %9305 = extractvalue %dx.types.CBufRet.f32 %9300, 2
  %9306 = extractvalue %dx.types.CBufRet.f32 %9300, 3
  %9307 = fadd fast float %9306, %9305
  %9308 = call float @dx.op.unary.f32(i32 7, float %9307)  ; Saturate(value)
  %9309 = fmul fast float %9304, %9288
  %9310 = fmul fast float %9309, %9308
  br label %9311

; <label>:9311                                    ; preds = %9272, %9191, %9026, %9008, %9006
  %9312 = phi float [ %9035, %9026 ], [ %9194, %9191 ], [ %9276, %9272 ], [ 0.000000e+00, %9006 ], [ 0.000000e+00, %9008 ]
  %9313 = phi float [ %9069, %9026 ], [ %9228, %9191 ], [ %9310, %9272 ], [ 0.000000e+00, %9006 ], [ 0.000000e+00, %9008 ]
  %9314 = phi float [ %9056, %9026 ], [ %9215, %9191 ], [ %9297, %9272 ], [ 0.000000e+00, %9006 ], [ 0.000000e+00, %9008 ]
  %9315 = phi float [ %9057, %9026 ], [ %9216, %9191 ], [ %9298, %9272 ], [ 0.000000e+00, %9006 ], [ 0.000000e+00, %9008 ]
  %9316 = phi float [ %9058, %9026 ], [ %9217, %9191 ], [ %9299, %9272 ], [ 0.000000e+00, %9006 ], [ 0.000000e+00, %9008 ]
  %9317 = fmul fast float %8949, %9313
  %9318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9319 = extractvalue %dx.types.CBufRet.f32 %9318, 2
  %9320 = fsub fast float %8956, %9319
  %9321 = fcmp fast olt float %9317, -2.000000e+01
  %9322 = call float @dx.op.unary.f32(i32 21, float %9317)  ; Exp(value)
  %9323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9324 = extractvalue %dx.types.CBufRet.f32 %9323, 2
  %9325 = extractvalue %dx.types.CBufRet.f32 %9323, 3
  %9326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9327 = extractvalue %dx.types.CBufRet.f32 %9326, 2
  %9328 = fmul fast float %9325, %9320
  %9329 = call float @dx.op.unary.f32(i32 7, float %9328)  ; Saturate(value)
  %9330 = fsub fast float 1.000000e+00, %9329
  %9331 = fmul fast float %8941, 5.000000e-01
  %9332 = fadd fast float %9331, 5.000000e-01
  %9333 = call float @dx.op.unary.f32(i32 7, float %9332)  ; Saturate(value)
  %9334 = fsub fast float 1.000000e+00, %9333
  %9335 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9330)  ; FMax(a,b)
  %9336 = fdiv fast float %9334, %9335
  %9337 = fsub fast float %9320, %8898
  %9338 = call float @dx.op.unary.f32(i32 6, float %9337)  ; FAbs(value)
  %9339 = fmul fast float %9338, %9324
  %9340 = call float @dx.op.unary.f32(i32 7, float %9336)  ; Saturate(value)
  %9341 = fsub fast float 1.000000e+00, %9339
  %9342 = fmul fast float %9341, %9340
  %9343 = fadd fast float %9342, %9339
  %9344 = fmul fast float %9327, %9320
  %9345 = call float @dx.op.unary.f32(i32 7, float %9344)  ; Saturate(value)
  %9346 = fsub fast float 1.000000e+00, %9343
  %9347 = fmul fast float %9346, %9345
  %9348 = fadd fast float %9347, %9343
  %9349 = call float @dx.op.unary.f32(i32 7, float %9348)  ; Saturate(value)
  %9350 = fadd fast float %9322, -1.000000e+00
  %9351 = select i1 %9321, float -1.000000e+00, float %9350
  %9352 = fmul fast float %9349, %9351
  %9353 = fadd fast float %9352, 1.000000e+00
  %9354 = fsub fast float -0.000000e+00, %9352
  %9355 = fmul fast float %9314, %9354
  %9356 = fmul fast float %9315, %9354
  %9357 = fmul fast float %9316, %9354
  br label %9358

; <label>:9358                                    ; preds = %9311, %8907
  %9359 = phi float [ %9312, %9311 ], [ 0.000000e+00, %8907 ]
  %9360 = phi float [ %9353, %9311 ], [ 1.000000e+00, %8907 ]
  %9361 = phi float [ %9355, %9311 ], [ 0.000000e+00, %8907 ]
  %9362 = phi float [ %9356, %9311 ], [ 0.000000e+00, %8907 ]
  %9363 = phi float [ %9357, %9311 ], [ 0.000000e+00, %8907 ]
  %9364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9365 = extractvalue %dx.types.CBufRet.f32 %9364, 1
  %9366 = fsub fast float 1.000000e+00, %9360
  %9367 = fmul fast float %9366, %8942
  %9368 = fmul fast float %9367, %9365
  %9369 = fsub fast float %8942, %9368
  br i1 %8935, label %9370, label %9399, !dx.controlflow.hints !172

; <label>:9370                                    ; preds = %9358
  %9371 = fmul fast float %8943, %8932
  %9372 = fadd fast float %9371, %8933
  %9373 = call float @dx.op.unary.f32(i32 7, float %9372)  ; Saturate(value)
  %9374 = fmul fast float %8914, %9369
  %9375 = fsub fast float -0.000000e+00, %9374
  %9376 = fmul fast float %8915, %9369
  %9377 = fsub fast float -0.000000e+00, %9376
  %9378 = call float @dx.op.unary.f32(i32 21, float %9375)  ; Exp(value)
  %9379 = call float @dx.op.unary.f32(i32 21, float %9377)  ; Exp(value)
  %9380 = call float @dx.op.binary.f32(i32 35, float %8922, float %9378)  ; FMax(a,b)
  %9381 = call float @dx.op.binary.f32(i32 35, float %8922, float %9379)  ; FMax(a,b)
  %9382 = fsub fast float %9381, %9380
  %9383 = fmul fast float %9382, %9373
  %9384 = fadd fast float %9383, %9380
  %9385 = call float @dx.op.unary.f32(i32 7, float %9384)  ; Saturate(value)
  %9386 = fsub fast float %8919, %8924
  %9387 = fsub fast float %8920, %8925
  %9388 = fsub fast float %8921, %8926
  %9389 = fmul fast float %9373, %9386
  %9390 = fmul fast float %9373, %9387
  %9391 = fmul fast float %9373, %9388
  %9392 = fadd fast float %9389, %8924
  %9393 = fadd fast float %9390, %8925
  %9394 = fadd fast float %9391, %8926
  %9395 = fsub fast float 1.000000e+00, %9385
  %9396 = fmul fast float %9395, %9392
  %9397 = fmul fast float %9395, %9393
  %9398 = fmul fast float %9395, %9394
  br label %9458

; <label>:9399                                    ; preds = %9358
  %9400 = fmul fast float %9369, %8931
  %9401 = call float @dx.op.unary.f32(i32 7, float %9400)  ; Saturate(value)
  %9402 = fsub fast float 2.000000e+00, %9401
  %9403 = fmul fast float %9401, 9.921875e-01
  %9404 = fmul fast float %9403, %9402
  %9405 = fadd fast float %9404, 3.906250e-03
  %9406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9405, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9407 = extractvalue %dx.types.ResRet.f32 %9406, 0
  %9408 = fsub fast float %9401, %9407
  %9409 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9408)  ; FMax(a,b)
  %9410 = fmul fast float %8917, %8898
  %9411 = call float @dx.op.unary.f32(i32 6, float %9410)  ; FAbs(value)
  %9412 = fcmp fast ogt float %9411, 0x3EB0C6F7A0000000
  br i1 %9412, label %9413, label %9419, !dx.controlflow.hints !173

; <label>:9413                                    ; preds = %9399
  %9414 = fmul fast float %9410, 0xBFF7154760000000
  %9415 = call float @dx.op.unary.f32(i32 21, float %9414)  ; Exp(value)
  %9416 = fsub fast float 1.000000e+00, %9415
  %9417 = fdiv fast float %9416, %9410
  %9418 = fmul fast float %9417, %8927
  br label %9419

; <label>:9419                                    ; preds = %9413, %9399
  %9420 = phi float [ %9418, %9413 ], [ %8927, %9399 ]
  %9421 = fadd fast float %9420, %8929
  %9422 = fmul fast float %9421, %9409
  %9423 = fmul fast float %8914, %9422
  %9424 = fsub fast float -0.000000e+00, %9423
  %9425 = fmul fast float %8915, %9422
  %9426 = fsub fast float -0.000000e+00, %9425
  %9427 = fmul fast float %8916, %9422
  %9428 = fsub fast float -0.000000e+00, %9427
  %9429 = call float @dx.op.unary.f32(i32 21, float %9424)  ; Exp(value)
  %9430 = call float @dx.op.unary.f32(i32 21, float %9426)  ; Exp(value)
  %9431 = call float @dx.op.unary.f32(i32 21, float %9428)  ; Exp(value)
  %9432 = fmul fast float %8943, %8943
  %9433 = fadd fast float %9432, 1.000000e+00
  %9434 = fmul fast float %9433, 0x3FAE8EC8A0000000
  %9435 = fmul fast float %9434, %8924
  %9436 = fmul fast float %9434, %8925
  %9437 = fmul fast float %9434, %8926
  %9438 = fmul fast float %8943, %8922
  %9439 = fsub fast float 1.000000e+00, %9438
  %9440 = fmul fast float %8922, %8922
  %9441 = fsub fast float 1.000000e+00, %9440
  %9442 = fmul fast float %9441, 0x3FB45F3060000000
  %9443 = fmul fast float %9439, %9439
  %9444 = fdiv fast float 1.000000e+00, %9443
  %9445 = fmul fast float %9442, %9444
  %9446 = fmul fast float %9445, %8919
  %9447 = fmul fast float %9445, %8920
  %9448 = fmul fast float %9445, %8921
  %9449 = fadd fast float %9446, %9435
  %9450 = fadd fast float %9447, %9436
  %9451 = fadd fast float %9448, %9437
  %9452 = fsub fast float 1.000000e+00, %9429
  %9453 = fsub fast float 1.000000e+00, %9430
  %9454 = fsub fast float 1.000000e+00, %9431
  %9455 = fmul fast float %9449, %9452
  %9456 = fmul fast float %9450, %9453
  %9457 = fmul fast float %9451, %9454
  br label %9458

; <label>:9458                                    ; preds = %9419, %9370
  %9459 = phi float [ %9396, %9370 ], [ %9455, %9419 ]
  %9460 = phi float [ %9397, %9370 ], [ %9456, %9419 ]
  %9461 = phi float [ %9398, %9370 ], [ %9457, %9419 ]
  %9462 = phi float [ %9385, %9370 ], [ %9429, %9419 ]
  %9463 = phi float [ %9385, %9370 ], [ %9430, %9419 ]
  %9464 = phi float [ %9385, %9370 ], [ %9431, %9419 ]
  br i1 %8951, label %9465, label %9663, !dx.controlflow.hints !174

; <label>:9465                                    ; preds = %9458
  %9466 = extractvalue %dx.types.CBufRet.f32 %9364, 0
  %9467 = fmul fast float %9466, %9366
  %9468 = fsub fast float %9361, %9459
  %9469 = fsub fast float %9362, %9460
  %9470 = fsub fast float %9363, %9461
  %9471 = fmul fast float %9467, %9468
  %9472 = fmul fast float %9467, %9469
  %9473 = fmul fast float %9467, %9470
  %9474 = fadd fast float %9471, %9459
  %9475 = fadd fast float %9472, %9460
  %9476 = fadd fast float %9473, %9461
  %9477 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9462)  ; FMax(a,b)
  %9478 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9463)  ; FMax(a,b)
  %9479 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9464)  ; FMax(a,b)
  %9480 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9360)  ; FMax(a,b)
  %9481 = call float @dx.op.binary.f32(i32 35, float %9359, float %9369)  ; FMax(a,b)
  %9482 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9481)  ; FMax(a,b)
  %9483 = fdiv fast float %9359, %9482
  %9484 = call float @dx.op.unary.f32(i32 7, float %9483)  ; Saturate(value)
  %9485 = fdiv fast float %9369, %9482
  %9486 = call float @dx.op.unary.f32(i32 7, float %9485)  ; Saturate(value)
  %9487 = fcmp fast une float %9480, 1.000000e+00
  br i1 %9487, label %9488, label %9501, !dx.controlflow.hints !175

; <label>:9488                                    ; preds = %9465
  %9489 = call float @dx.op.unary.f32(i32 23, float %9480)  ; Log(value)
  %9490 = fmul fast float %9489, 0x3FE62E4300000000
  %9491 = fmul fast float %9361, %9490
  %9492 = fsub fast float -0.000000e+00, %9491
  %9493 = fmul fast float %9362, %9490
  %9494 = fsub fast float -0.000000e+00, %9493
  %9495 = fmul fast float %9363, %9490
  %9496 = fsub fast float -0.000000e+00, %9495
  %9497 = fsub fast float 1.000000e+00, %9480
  %9498 = fdiv fast float %9492, %9497
  %9499 = fdiv fast float %9494, %9497
  %9500 = fdiv fast float %9496, %9497
  br label %9501

; <label>:9501                                    ; preds = %9488, %9465
  %9502 = phi float [ %9498, %9488 ], [ %9361, %9465 ]
  %9503 = phi float [ %9499, %9488 ], [ %9362, %9465 ]
  %9504 = phi float [ %9500, %9488 ], [ %9363, %9465 ]
  %9505 = phi float [ %9490, %9488 ], [ 0.000000e+00, %9465 ]
  %9506 = fcmp fast une float %9477, 1.000000e+00
  br i1 %9506, label %9507, label %9514, !dx.controlflow.hints !176

; <label>:9507                                    ; preds = %9501
  %9508 = call float @dx.op.unary.f32(i32 23, float %9477)  ; Log(value)
  %9509 = fmul fast float %9508, 0x3FE62E4300000000
  %9510 = fmul fast float %9474, %9509
  %9511 = fsub fast float -0.000000e+00, %9510
  %9512 = fsub fast float 1.000000e+00, %9477
  %9513 = fdiv fast float %9511, %9512
  br label %9514

; <label>:9514                                    ; preds = %9507, %9501
  %9515 = phi float [ %9513, %9507 ], [ %9474, %9501 ]
  %9516 = phi float [ %9509, %9507 ], [ 0.000000e+00, %9501 ]
  %9517 = fcmp fast une float %9478, 1.000000e+00
  br i1 %9517, label %9518, label %9525, !dx.controlflow.hints !176

; <label>:9518                                    ; preds = %9514
  %9519 = call float @dx.op.unary.f32(i32 23, float %9478)  ; Log(value)
  %9520 = fmul fast float %9519, 0x3FE62E4300000000
  %9521 = fmul fast float %9475, %9520
  %9522 = fsub fast float -0.000000e+00, %9521
  %9523 = fsub fast float 1.000000e+00, %9478
  %9524 = fdiv fast float %9522, %9523
  br label %9525

; <label>:9525                                    ; preds = %9518, %9514
  %9526 = phi float [ %9524, %9518 ], [ %9475, %9514 ]
  %9527 = phi float [ %9520, %9518 ], [ 0.000000e+00, %9514 ]
  %9528 = fcmp fast une float %9479, 1.000000e+00
  br i1 %9528, label %9529, label %9536, !dx.controlflow.hints !176

; <label>:9529                                    ; preds = %9525
  %9530 = call float @dx.op.unary.f32(i32 23, float %9479)  ; Log(value)
  %9531 = fmul fast float %9530, 0x3FE62E4300000000
  %9532 = fmul fast float %9476, %9531
  %9533 = fsub fast float -0.000000e+00, %9532
  %9534 = fsub fast float 1.000000e+00, %9479
  %9535 = fdiv fast float %9533, %9534
  br label %9536

; <label>:9536                                    ; preds = %9529, %9525
  %9537 = phi float [ %9535, %9529 ], [ %9476, %9525 ]
  %9538 = phi float [ %9531, %9529 ], [ 0.000000e+00, %9525 ]
  %9539 = fmul fast float %9502, %9486
  %9540 = fmul fast float %9503, %9486
  %9541 = fmul fast float %9504, %9486
  %9542 = fmul fast float %9505, %9486
  %9543 = fmul fast float %9515, %9484
  %9544 = fmul fast float %9526, %9484
  %9545 = fmul fast float %9537, %9484
  %9546 = fmul fast float %9516, %9484
  %9547 = fmul fast float %9527, %9484
  %9548 = fmul fast float %9538, %9484
  %9549 = fadd fast float %9543, %9539
  %9550 = fadd fast float %9544, %9540
  %9551 = fadd fast float %9545, %9541
  %9552 = fadd fast float %9546, %9542
  %9553 = fadd fast float %9547, %9542
  %9554 = fadd fast float %9548, %9542
  %9555 = fcmp fast une float %9552, 0.000000e+00
  br i1 %9555, label %9556, label %9563, !dx.controlflow.hints !177

; <label>:9556                                    ; preds = %9536
  %9557 = fmul fast float %9552, 0x3FF7154760000000
  %9558 = call float @dx.op.unary.f32(i32 21, float %9557)  ; Exp(value)
  %9559 = fsub fast float 1.000000e+00, %9558
  %9560 = fmul fast float %9549, %9559
  %9561 = fsub fast float -0.000000e+00, %9560
  %9562 = fdiv fast float %9561, %9552
  br label %9563

; <label>:9563                                    ; preds = %9556, %9536
  %9564 = phi float [ %9558, %9556 ], [ 1.000000e+00, %9536 ]
  %9565 = phi float [ %9562, %9556 ], [ %9549, %9536 ]
  %9566 = fcmp fast une float %9553, 0.000000e+00
  br i1 %9566, label %9567, label %9574, !dx.controlflow.hints !177

; <label>:9567                                    ; preds = %9563
  %9568 = fmul fast float %9553, 0x3FF7154760000000
  %9569 = call float @dx.op.unary.f32(i32 21, float %9568)  ; Exp(value)
  %9570 = fsub fast float 1.000000e+00, %9569
  %9571 = fmul fast float %9550, %9570
  %9572 = fsub fast float -0.000000e+00, %9571
  %9573 = fdiv fast float %9572, %9553
  br label %9574

; <label>:9574                                    ; preds = %9567, %9563
  %9575 = phi float [ %9569, %9567 ], [ 1.000000e+00, %9563 ]
  %9576 = phi float [ %9573, %9567 ], [ %9550, %9563 ]
  %9577 = fcmp fast une float %9554, 0.000000e+00
  br i1 %9577, label %9578, label %9585, !dx.controlflow.hints !177

; <label>:9578                                    ; preds = %9574
  %9579 = fmul fast float %9554, 0x3FF7154760000000
  %9580 = call float @dx.op.unary.f32(i32 21, float %9579)  ; Exp(value)
  %9581 = fsub fast float 1.000000e+00, %9580
  %9582 = fmul fast float %9551, %9581
  %9583 = fsub fast float -0.000000e+00, %9582
  %9584 = fdiv fast float %9583, %9554
  br label %9585

; <label>:9585                                    ; preds = %9578, %9574
  %9586 = phi float [ %9580, %9578 ], [ 1.000000e+00, %9574 ]
  %9587 = phi float [ %9584, %9578 ], [ %9551, %9574 ]
  %9588 = fcmp fast ogt float %9484, %9486
  br i1 %9588, label %9589, label %9609

; <label>:9589                                    ; preds = %9585
  %9590 = fsub fast float 1.000000e+00, %9486
  %9591 = fmul fast float %9502, %9590
  %9592 = fmul fast float %9503, %9590
  %9593 = fmul fast float %9504, %9590
  %9594 = fmul fast float %9505, %9590
  %9595 = fcmp fast une float %9594, 0.000000e+00
  br i1 %9595, label %9596, label %9647, !dx.controlflow.hints !178

; <label>:9596                                    ; preds = %9589
  %9597 = fmul fast float %9594, 0x3FF7154760000000
  %9598 = call float @dx.op.unary.f32(i32 21, float %9597)  ; Exp(value)
  %9599 = fsub fast float 1.000000e+00, %9598
  %9600 = fmul fast float %9591, %9599
  %9601 = fsub fast float -0.000000e+00, %9600
  %9602 = fmul fast float %9592, %9599
  %9603 = fsub fast float -0.000000e+00, %9602
  %9604 = fmul fast float %9593, %9599
  %9605 = fsub fast float -0.000000e+00, %9604
  %9606 = fdiv fast float %9601, %9594
  %9607 = fdiv fast float %9603, %9594
  %9608 = fdiv fast float %9605, %9594
  br label %9647

; <label>:9609                                    ; preds = %9585
  %9610 = fsub fast float 1.000000e+00, %9484
  %9611 = fmul fast float %9515, %9610
  %9612 = fmul fast float %9526, %9610
  %9613 = fmul fast float %9537, %9610
  %9614 = fmul fast float %9516, %9610
  %9615 = fmul fast float %9527, %9610
  %9616 = fmul fast float %9538, %9610
  %9617 = fcmp fast une float %9614, 0.000000e+00
  br i1 %9617, label %9618, label %9625, !dx.controlflow.hints !177

; <label>:9618                                    ; preds = %9609
  %9619 = fmul fast float %9614, 0x3FF7154760000000
  %9620 = call float @dx.op.unary.f32(i32 21, float %9619)  ; Exp(value)
  %9621 = fsub fast float 1.000000e+00, %9620
  %9622 = fmul fast float %9611, %9621
  %9623 = fsub fast float -0.000000e+00, %9622
  %9624 = fdiv fast float %9623, %9614
  br label %9625

; <label>:9625                                    ; preds = %9618, %9609
  %9626 = phi float [ %9624, %9618 ], [ %9611, %9609 ]
  %9627 = phi float [ %9620, %9618 ], [ 1.000000e+00, %9609 ]
  %9628 = fcmp fast une float %9615, 0.000000e+00
  br i1 %9628, label %9629, label %9636, !dx.controlflow.hints !177

; <label>:9629                                    ; preds = %9625
  %9630 = fmul fast float %9615, 0x3FF7154760000000
  %9631 = call float @dx.op.unary.f32(i32 21, float %9630)  ; Exp(value)
  %9632 = fsub fast float 1.000000e+00, %9631
  %9633 = fmul fast float %9612, %9632
  %9634 = fsub fast float -0.000000e+00, %9633
  %9635 = fdiv fast float %9634, %9615
  br label %9636

; <label>:9636                                    ; preds = %9629, %9625
  %9637 = phi float [ %9635, %9629 ], [ %9612, %9625 ]
  %9638 = phi float [ %9631, %9629 ], [ 1.000000e+00, %9625 ]
  %9639 = fcmp fast une float %9616, 0.000000e+00
  br i1 %9639, label %9640, label %9647, !dx.controlflow.hints !177

; <label>:9640                                    ; preds = %9636
  %9641 = fmul fast float %9616, 0x3FF7154760000000
  %9642 = call float @dx.op.unary.f32(i32 21, float %9641)  ; Exp(value)
  %9643 = fsub fast float 1.000000e+00, %9642
  %9644 = fmul fast float %9613, %9643
  %9645 = fsub fast float -0.000000e+00, %9644
  %9646 = fdiv fast float %9645, %9616
  br label %9647

; <label>:9647                                    ; preds = %9640, %9636, %9596, %9589
  %9648 = phi float [ %9646, %9640 ], [ %9608, %9596 ], [ %9593, %9589 ], [ %9613, %9636 ]
  %9649 = phi float [ %9637, %9640 ], [ %9607, %9596 ], [ %9592, %9589 ], [ %9637, %9636 ]
  %9650 = phi float [ %9626, %9640 ], [ %9606, %9596 ], [ %9591, %9589 ], [ %9626, %9636 ]
  %9651 = phi float [ %9642, %9640 ], [ %9598, %9596 ], [ 1.000000e+00, %9589 ], [ 1.000000e+00, %9636 ]
  %9652 = phi float [ %9638, %9640 ], [ %9598, %9596 ], [ 1.000000e+00, %9589 ], [ %9638, %9636 ]
  %9653 = phi float [ %9627, %9640 ], [ %9598, %9596 ], [ 1.000000e+00, %9589 ], [ %9627, %9636 ]
  %9654 = fmul fast float %9653, %9565
  %9655 = fmul fast float %9652, %9576
  %9656 = fmul fast float %9651, %9587
  %9657 = fadd fast float %9654, %9650
  %9658 = fadd fast float %9655, %9649
  %9659 = fadd fast float %9656, %9648
  %9660 = fmul fast float %9653, %9564
  %9661 = fmul fast float %9652, %9575
  %9662 = fmul fast float %9651, %9586
  br label %9663

; <label>:9663                                    ; preds = %9647, %9458
  %9664 = phi float [ %9662, %9647 ], [ %9464, %9458 ]
  %9665 = phi float [ %9661, %9647 ], [ %9463, %9458 ]
  %9666 = phi float [ %9660, %9647 ], [ %9462, %9458 ]
  %9667 = phi float [ %9659, %9647 ], [ %9461, %9458 ]
  %9668 = phi float [ %9658, %9647 ], [ %9460, %9458 ]
  %9669 = phi float [ %9657, %9647 ], [ %9459, %9458 ]
  %9670 = fmul fast float %9669, %8615
  %9671 = fmul fast float %9668, %8615
  %9672 = fmul fast float %9667, %8615
  %9673 = fmul fast float %9666, %8906
  %9674 = call float @dx.op.dot3.f32(i32 55, float %9666, float %9665, float %9664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9675 = call float @dx.op.dot3.f32(i32 55, float %9670, float %9671, float %9672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9676 = select i1 %232, float %9674, float %9666
  %9677 = select i1 %232, float %9674, float %9665
  %9678 = select i1 %232, float 1.000000e+00, float %9664
  %9679 = select i1 %232, float %9675, float %9670
  %9680 = select i1 %232, float 0.000000e+00, float %9671
  %9681 = select i1 %232, float 0.000000e+00, float %9672
  %9682 = fmul fast float %9676, %8900
  %9683 = fmul fast float %9677, %8901
  %9684 = fmul fast float %9678, %8902
  %9685 = fadd fast float %9682, %9679
  %9686 = fadd fast float %9683, %9680
  %9687 = fadd fast float %9681, %9684
  %9688 = fmul fast float %9676, %8903
  %9689 = fmul fast float %9677, %8904
  %9690 = fmul fast float %9678, %8905
  %9691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9692 = extractvalue %dx.types.CBufRet.i32 %9691, 0
  %9693 = icmp eq i32 %9692, 0
  br i1 %9693, label %10061, label %9694, !dx.controlflow.hints !179

; <label>:9694                                    ; preds = %9663
  %9695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9696 = extractvalue %dx.types.CBufRet.f32 %9695, 2
  %9697 = extractvalue %dx.types.CBufRet.f32 %9695, 3
  %9698 = fmul fast float %9696, %111
  %9699 = fmul fast float %9697, %112
  %9700 = fmul fast float %9698, 2.000000e+00
  %9701 = fmul fast float %9699, 2.000000e+00
  %9702 = fsub fast float 1.000000e+00, %9700
  %9703 = fsub fast float 1.000000e+00, %9701
  %9704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9705 = extractvalue %dx.types.CBufRet.f32 %9704, 0
  %9706 = extractvalue %dx.types.CBufRet.f32 %9704, 1
  %9707 = extractvalue %dx.types.CBufRet.f32 %9704, 2
  %9708 = fmul fast float %9702, %9705
  %9709 = fmul fast float %9702, %9706
  %9710 = fmul fast float %9702, %9707
  %9711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9712 = extractvalue %dx.types.CBufRet.f32 %9711, 0
  %9713 = extractvalue %dx.types.CBufRet.f32 %9711, 1
  %9714 = extractvalue %dx.types.CBufRet.f32 %9711, 2
  %9715 = fmul fast float %9703, %9712
  %9716 = fmul fast float %9703, %9713
  %9717 = fmul fast float %9703, %9714
  %9718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9719 = extractvalue %dx.types.CBufRet.f32 %9718, 0
  %9720 = extractvalue %dx.types.CBufRet.f32 %9718, 1
  %9721 = extractvalue %dx.types.CBufRet.f32 %9718, 2
  %9722 = fadd fast float %9715, %9719
  %9723 = fadd fast float %9722, %9708
  %9724 = fadd fast float %9716, %9720
  %9725 = fadd fast float %9724, %9709
  %9726 = fadd fast float %9717, %9721
  %9727 = fadd fast float %9726, %9710
  %9728 = fmul fast float %9723, %8899
  %9729 = fmul fast float %9725, %8899
  %9730 = fmul fast float %9727, %8899
  %9731 = fmul fast float %9728, %9728
  %9732 = fmul fast float %9729, %9729
  %9733 = fadd fast float %9731, %9732
  %9734 = fmul fast float %9730, %9730
  %9735 = fadd fast float %9733, %9734
  %9736 = call float @dx.op.unary.f32(i32 24, float %9735)  ; Sqrt(value)
  %9737 = extractvalue %dx.types.CBufRet.f32 %8626, 0
  %9738 = fsub fast float %9736, %9737
  %9739 = extractvalue %dx.types.CBufRet.f32 %8626, 2
  %9740 = fmul fast float %9738, %9739
  %9741 = call float @dx.op.unary.f32(i32 7, float %9740)  ; Saturate(value)
  %9742 = fadd fast float %9741, -5.000000e-01
  %9743 = fmul fast float %9742, 2.000000e+00
  %9744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9745 = extractvalue %dx.types.CBufRet.f32 %9744, 2
  %9746 = call float @dx.op.binary.f32(i32 36, float %9745, float %9743)  ; FMin(a,b)
  %9747 = fsub fast float -0.000000e+00, %9745
  %9748 = fcmp fast ogt float %9746, %9747
  br i1 %9748, label %9749, label %10061, !dx.controlflow.hints !180

; <label>:9749                                    ; preds = %9694
  %9750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9751 = extractvalue %dx.types.CBufRet.f32 %9750, 3
  %9752 = fcmp fast ogt float %9751, 0.000000e+00
  br i1 %9752, label %9753, label %9828, !dx.controlflow.hints !181

; <label>:9753                                    ; preds = %9749
  %9754 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9755 = extractvalue %dx.types.Dimensions %9754, 0
  %9756 = sitofp i32 %9755 to float
  %9757 = extractvalue %dx.types.Dimensions %9754, 1
  %9758 = sitofp i32 %9757 to float
  %9759 = fmul fast float %9698, %9756
  %9760 = fmul fast float %9699, %9758
  %9761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9762 = extractvalue %dx.types.CBufRet.f32 %9761, 1
  %9763 = fsub fast float -0.000000e+00, %9762
  %9764 = fptoui float %9763 to i32
  %9765 = fptoui float %9759 to i32
  %9766 = fptoui float %9760 to i32
  %9767 = and i32 %9764, 31
  %9768 = lshr i32 %9765, %9767
  %9769 = lshr i32 %9766, %9767
  %9770 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9764, i32 %9768, i32 %9769, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9771 = extractvalue %dx.types.ResRet.f32 %9770, 0
  %9772 = fcmp fast olt float %9771, -1.000000e+00
  %9773 = fcmp fast ogt float %9771, -1.000000e+00
  %9774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9775 = extractvalue %dx.types.CBufRet.f32 %9774, 1
  %9776 = select i1 %9773, float %9775, float 1.000000e+00
  %9777 = fadd fast float %9771, 1.000000e+00
  %9778 = fmul fast float %9776, %9777
  %9779 = call float @dx.op.unary.f32(i32 6, float %9778)  ; FAbs(value)
  %9780 = extractvalue %dx.types.CBufRet.f32 %9774, 3
  %9781 = fcmp fast oge float %9779, %9780
  %9782 = select i1 %9781, float 0x4197782600000000, float %9779
  %9783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9784 = extractvalue %dx.types.CBufRet.f32 %9783, 0
  %9785 = extractvalue %dx.types.CBufRet.f32 %9783, 1
  %9786 = extractvalue %dx.types.CBufRet.f32 %9783, 2
  %9787 = select i1 %9772, float %9784, float %9705
  %9788 = select i1 %9772, float %9785, float %9706
  %9789 = select i1 %9772, float %9786, float %9707
  %9790 = fmul fast float %9787, %9702
  %9791 = fmul fast float %9788, %9702
  %9792 = fmul fast float %9789, %9702
  %9793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9794 = extractvalue %dx.types.CBufRet.f32 %9793, 0
  %9795 = extractvalue %dx.types.CBufRet.f32 %9793, 1
  %9796 = extractvalue %dx.types.CBufRet.f32 %9793, 2
  %9797 = select i1 %9772, float %9794, float %9712
  %9798 = select i1 %9772, float %9795, float %9713
  %9799 = select i1 %9772, float %9796, float %9714
  %9800 = fmul fast float %9797, %9703
  %9801 = fmul fast float %9798, %9703
  %9802 = fmul fast float %9799, %9703
  %9803 = fadd fast float %9800, %9790
  %9804 = fadd fast float %9801, %9791
  %9805 = fadd fast float %9802, %9792
  %9806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9807 = extractvalue %dx.types.CBufRet.f32 %9806, 0
  %9808 = extractvalue %dx.types.CBufRet.f32 %9806, 1
  %9809 = extractvalue %dx.types.CBufRet.f32 %9806, 2
  %9810 = select i1 %9772, float %9807, float %9719
  %9811 = select i1 %9772, float %9808, float %9720
  %9812 = select i1 %9772, float %9809, float %9721
  %9813 = fadd fast float %9803, %9810
  %9814 = fadd fast float %9804, %9811
  %9815 = fadd fast float %9805, %9812
  %9816 = fmul fast float %9813, %9782
  %9817 = fmul fast float %9814, %9782
  %9818 = fmul fast float %9815, %9782
  %9819 = fmul fast float %9816, %9816
  %9820 = fmul fast float %9817, %9817
  %9821 = fadd fast float %9819, %9820
  %9822 = fmul fast float %9818, %9818
  %9823 = fadd fast float %9821, %9822
  %9824 = call float @dx.op.unary.f32(i32 24, float %9823)  ; Sqrt(value)
  %9825 = fsub fast float %9824, %9737
  %9826 = fmul fast float %9825, %9739
  %9827 = call float @dx.op.unary.f32(i32 7, float %9826)  ; Saturate(value)
  br label %9828

; <label>:9828                                    ; preds = %9753, %9749
  %9829 = phi float [ %9827, %9753 ], [ 1.000000e+00, %9749 ]
  %9830 = fmul fast float %9746, 5.000000e-01
  %9831 = fadd fast float %9830, 5.000000e-01
  %9832 = call float @dx.op.unary.f32(i32 22, float %9831)  ; Frc(value)
  %9833 = call float @dx.op.unary.f32(i32 27, float %9832)  ; Round_ni(value)
  %9834 = call float @dx.op.unary.f32(i32 22, float %9832)  ; Frc(value)
  %9835 = fmul fast float %9834, 2.000000e+00
  %9836 = fadd fast float %9835, -1.000000e+00
  %9837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9698, float %9699, float %9833, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9838 = extractvalue %dx.types.ResRet.f32 %9837, 0
  %9839 = extractvalue %dx.types.ResRet.f32 %9837, 1
  %9840 = extractvalue %dx.types.ResRet.f32 %9837, 2
  %9841 = extractvalue %dx.types.ResRet.f32 %9837, 3
  %9842 = fadd fast float %9838, -5.000000e-01
  %9843 = fadd fast float %9840, -5.000000e-01
  %9844 = fmul fast float %9842, 0xBFD5555560000000
  %9845 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9843, float %9844)  ; FMad(a,b,c)
  %9846 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9839, float 0.000000e+00)  ; FMad(a,b,c)
  %9847 = fadd fast float %9846, %9841
  %9848 = fmul fast float %9842, -7.500000e-01
  %9849 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9843, float %9848)  ; FMad(a,b,c)
  %9850 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9839, float 0.000000e+00)  ; FMad(a,b,c)
  %9851 = fadd fast float %9850, %9841
  %9852 = call float @dx.op.binary.f32(i32 35, float %9845, float -1.000000e+00)  ; FMax(a,b)
  %9853 = call float @dx.op.binary.f32(i32 35, float %9847, float -1.000000e+00)  ; FMax(a,b)
  %9854 = call float @dx.op.binary.f32(i32 35, float %9849, float -1.000000e+00)  ; FMax(a,b)
  %9855 = call float @dx.op.binary.f32(i32 35, float %9851, float -1.000000e+00)  ; FMax(a,b)
  %9856 = call float @dx.op.binary.f32(i32 36, float %9852, float 1.000000e+00)  ; FMin(a,b)
  %9857 = call float @dx.op.binary.f32(i32 36, float %9853, float 1.000000e+00)  ; FMin(a,b)
  %9858 = call float @dx.op.binary.f32(i32 36, float %9854, float 1.000000e+00)  ; FMin(a,b)
  %9859 = call float @dx.op.binary.f32(i32 36, float %9855, float 1.000000e+00)  ; FMin(a,b)
  %9860 = fcmp fast olt float %9856, 0x3FEFFF8020000000
  br i1 %9860, label %9861, label %9976, !dx.controlflow.hints !182

; <label>:9861                                    ; preds = %9828
  %9862 = extractvalue %dx.types.CBufRet.f32 %9744, 3
  %9863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9864 = extractvalue %dx.types.CBufRet.f32 %9863, 0
  %9865 = extractvalue %dx.types.CBufRet.f32 %9863, 1
  %9866 = extractvalue %dx.types.CBufRet.f32 %9863, 2
  %9867 = extractvalue %dx.types.CBufRet.f32 %9863, 3
  %9868 = fsub fast float %9864, %9856
  %9869 = fsub fast float %9865, %9857
  %9870 = fsub fast float %9866, %9858
  %9871 = fsub fast float %9867, %9859
  %9872 = fmul fast float %9868, %9862
  %9873 = fmul fast float %9869, %9862
  %9874 = fmul fast float %9870, %9862
  %9875 = fmul fast float %9871, %9862
  %9876 = fadd fast float %9872, %9856
  %9877 = fadd fast float %9873, %9857
  %9878 = fsub fast float -0.000000e+00, %9877
  %9879 = fadd fast float %9874, %9858
  %9880 = fadd fast float %9875, %9859
  %9881 = fmul fast float %9876, %9876
  %9882 = fsub fast float %9877, %9881
  %9883 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9882)  ; FMax(a,b)
  %9884 = fdiv fast float 1.000000e+00, %9883
  %9885 = fmul fast float %9877, %9876
  %9886 = fsub fast float %9879, %9885
  %9887 = fsub fast float %9836, %9876
  %9888 = fmul fast float %9836, %9836
  %9889 = fsub fast float %9888, %9877
  %9890 = fmul fast float %9887, %9884
  %9891 = fmul fast float %9890, %9886
  %9892 = fsub fast float %9889, %9891
  %9893 = fmul fast float %9877, %9877
  %9894 = fsub fast float %9880, %9893
  %9895 = fmul fast float %9886, %9886
  %9896 = fmul fast float %9895, %9884
  %9897 = fsub fast float %9894, %9896
  %9898 = fdiv fast float %9892, %9897
  %9899 = fmul fast float %9886, %9898
  %9900 = fsub fast float %9887, %9899
  %9901 = fmul fast float %9900, %9884
  %9902 = fmul fast float %9901, %9876
  %9903 = fsub fast float 1.000000e+00, %9902
  %9904 = fmul fast float %9877, %9898
  %9905 = fsub fast float %9903, %9904
  %9906 = fmul fast float %9901, %9901
  %9907 = fmul fast float %9898, 4.000000e+00
  %9908 = fmul fast float %9907, %9905
  %9909 = fsub fast float %9906, %9908
  %9910 = call float @dx.op.unary.f32(i32 24, float %9909)  ; Sqrt(value)
  %9911 = fcmp fast oge float %9901, 0.000000e+00
  %9912 = fsub fast float -0.000000e+00, %9910
  %9913 = select i1 %9911, float %9912, float %9910
  %9914 = fsub fast float %9913, %9901
  %9915 = fdiv fast float %9914, %9898
  %9916 = fdiv fast float %9905, %9914
  %9917 = fmul fast float %9915, 5.000000e-01
  %9918 = fmul fast float %9916, 2.000000e+00
  %9919 = select i1 %9911, float %9917, float %9918
  %9920 = select i1 %9911, float %9918, float %9917
  %9921 = call float @dx.op.binary.f32(i32 35, float %9919, float %9920)  ; FMax(a,b)
  %9922 = call float @dx.op.binary.f32(i32 36, float %9919, float %9920)  ; FMin(a,b)
  %9923 = fcmp fast ogt float %9836, %9922
  br i1 %9923, label %9924, label %9934

; <label>:9924                                    ; preds = %9861
  %9925 = fsub fast float %9836, %9922
  %9926 = fsub fast float %9921, %9922
  %9927 = fmul fast float %9925, %9926
  %9928 = fmul fast float %9921, %9836
  %9929 = fadd fast float %9921, %9836
  %9930 = fmul fast float %9929, %9876
  %9931 = fadd fast float %9928, %9877
  %9932 = fsub fast float %9931, %9930
  %9933 = fdiv fast float %9932, %9927
  br label %9934

; <label>:9934                                    ; preds = %9924, %9861
  %9935 = phi float [ %9933, %9924 ], [ 0.000000e+00, %9861 ]
  %9936 = fcmp fast ogt float %9836, %9921
  %9937 = fsub fast float %9836, %9921
  br i1 %9936, label %9938, label %9948

; <label>:9938                                    ; preds = %9934
  %9939 = fsub fast float %9921, %9922
  %9940 = fmul fast float %9939, %9937
  %9941 = fmul fast float %9922, %9836
  %9942 = fadd fast float %9922, %9836
  %9943 = fmul fast float %9942, %9876
  %9944 = fsub fast float %9878, %9941
  %9945 = fadd fast float %9944, %9943
  %9946 = fdiv fast float %9945, %9940
  %9947 = fadd fast float %9946, %9935
  br label %9948

; <label>:9948                                    ; preds = %9938, %9934
  %9949 = phi float [ %9947, %9938 ], [ %9935, %9934 ]
  %9950 = fsub fast float %9836, %9922
  %9951 = fmul fast float %9950, %9937
  %9952 = fmul fast float %9922, %9921
  %9953 = fadd fast float %9922, %9921
  %9954 = fmul fast float %9953, %9876
  %9955 = fadd fast float %9952, %9877
  %9956 = fsub fast float %9955, %9954
  %9957 = fdiv fast float %9956, %9951
  %9958 = call float @dx.op.unary.f32(i32 7, float %9949)  ; Saturate(value)
  %9959 = fcmp fast oeq float %8627, 0.000000e+00
  %9960 = extractvalue %dx.types.CBufRet.f32 %9744, 0
  %9961 = fcmp fast oeq float %9960, 0.000000e+00
  %9962 = or i1 %9959, %9961
  %9963 = fmul fast float %9960, 2.000000e+00
  %9964 = fadd fast float %9745, %9746
  %9965 = fdiv fast float %9964, %9963
  %9966 = call float @dx.op.unary.f32(i32 7, float %9965)  ; Saturate(value)
  %9967 = fmul fast float %9966, 2.000000e+00
  %9968 = fsub fast float 3.000000e+00, %9967
  %9969 = fmul fast float %9966, %9966
  %9970 = fmul fast float %9969, %9968
  %9971 = select i1 %9962, float 1.000000e+00, float %9970
  %9972 = fmul fast float %9957, %8627
  %9973 = fadd fast float %9958, %9972
  %9974 = call float @dx.op.unary.f32(i32 7, float %9973)  ; Saturate(value)
  %9975 = fmul fast float %9971, %9974
  br label %9976

; <label>:9976                                    ; preds = %9948, %9828
  %9977 = phi float [ %9975, %9948 ], [ 0.000000e+00, %9828 ]
  %9978 = fsub fast float 1.000000e+00, %9977
  %9979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9698, float %9699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9980 = extractvalue %dx.types.ResRet.f32 %9979, 0
  %9981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9982 = extractvalue %dx.types.CBufRet.i32 %9981, 2
  %9983 = icmp eq i32 %9982, 0
  br i1 %9983, label %9989, label %9984

; <label>:9984                                    ; preds = %9976
  %9985 = call float @dx.op.unary.f32(i32 7, float %9977)  ; Saturate(value)
  %9986 = fadd fast float %9980, -1.000000e+00
  %9987 = fmul fast float %9985, %9986
  %9988 = fadd fast float %9987, 1.000000e+00
  br label %9989

; <label>:9989                                    ; preds = %9984, %9976
  %9990 = phi float [ %9988, %9984 ], [ %9978, %9976 ]
  br i1 %9752, label %9991, label %10009

; <label>:9991                                    ; preds = %9989
  %9992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9993 = extractvalue %dx.types.CBufRet.f32 %9992, 1
  %9994 = fsub fast float %9829, %9993
  %9995 = call float @dx.op.unary.f32(i32 7, float %9994)  ; Saturate(value)
  %9996 = fsub fast float %9829, %9751
  %9997 = call float @dx.op.unary.f32(i32 7, float %9996)  ; Saturate(value)
  %9998 = fsub fast float %9995, %9997
  %9999 = fsub fast float %9831, %9997
  %10000 = fdiv fast float %9999, %9998
  %10001 = call float @dx.op.unary.f32(i32 7, float %10000)  ; Saturate(value)
  %10002 = fmul fast float %10001, 2.000000e+00
  %10003 = fsub fast float 3.000000e+00, %10002
  %10004 = fsub fast float %9980, %9990
  %10005 = fmul fast float %10001, %10001
  %10006 = fmul fast float %10005, %10004
  %10007 = fmul fast float %10006, %10003
  %10008 = fadd fast float %10007, %9990
  br label %10009

; <label>:10009                                   ; preds = %9991, %9989
  %10010 = phi float [ %10008, %9991 ], [ %9990, %9989 ]
  %10011 = call float @dx.op.binary.f32(i32 35, float %9980, float %10010)  ; FMax(a,b)
  %10012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10013 = extractvalue %dx.types.CBufRet.i32 %10012, 2
  %10014 = and i32 %10013, 1
  %10015 = icmp eq i32 %10014, 0
  %10016 = fcmp fast une float %10011, 1.000000e+00
  %10017 = and i1 %10016, %10015
  br i1 %10017, label %10018, label %10037

; <label>:10018                                   ; preds = %10009
  %10019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9698, float %9699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10020 = extractvalue %dx.types.ResRet.f32 %10019, 0
  %10021 = extractvalue %dx.types.ResRet.f32 %10019, 1
  %10022 = extractvalue %dx.types.ResRet.f32 %10019, 2
  %10023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10024 = extractvalue %dx.types.CBufRet.f32 %10023, 1
  %10025 = fmul fast float %10024, %10020
  %10026 = fmul fast float %10024, %10021
  %10027 = fmul fast float %10024, %10022
  %10028 = fcmp fast ogt float %9980, 0x3FEFFF2E40000000
  %10029 = fsub fast float 1.000000e+00, %10011
  %10030 = fsub fast float 1.000000e+00, %9980
  %10031 = fdiv fast float %10029, %10030
  %10032 = call float @dx.op.unary.f32(i32 7, float %10031)  ; Saturate(value)
  %10033 = select i1 %10028, float 0.000000e+00, float %10032
  %10034 = fmul fast float %10025, %10033
  %10035 = fmul fast float %10026, %10033
  %10036 = fmul fast float %10027, %10033
  br label %10037

; <label>:10037                                   ; preds = %10018, %10009
  %10038 = phi float [ 0.000000e+00, %10009 ], [ %10034, %10018 ]
  %10039 = phi float [ 0.000000e+00, %10009 ], [ %10035, %10018 ]
  %10040 = phi float [ 0.000000e+00, %10009 ], [ %10036, %10018 ]
  %10041 = fmul fast float %10038, %8615
  %10042 = fmul fast float %10039, %8615
  %10043 = fmul fast float %10040, %8615
  %10044 = fmul fast float %10011, %9673
  %10045 = call float @dx.op.dot3.f32(i32 55, float %10011, float %10011, float %10011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10046 = call float @dx.op.dot3.f32(i32 55, float %10041, float %10042, float %10043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10047 = select i1 %232, float %10045, float %10011
  %10048 = select i1 %232, float 1.000000e+00, float %10011
  %10049 = select i1 %232, float %10046, float %10041
  %10050 = select i1 %232, float 0.000000e+00, float %10042
  %10051 = select i1 %232, float 0.000000e+00, float %10043
  %10052 = fmul fast float %10047, %9685
  %10053 = fmul fast float %10047, %9686
  %10054 = fmul fast float %10048, %9687
  %10055 = fadd fast float %10052, %10049
  %10056 = fadd fast float %10053, %10050
  %10057 = fadd fast float %10051, %10054
  %10058 = fmul fast float %10047, %9688
  %10059 = fmul fast float %10047, %9689
  %10060 = fmul fast float %10048, %9690
  br label %10061

; <label>:10061                                   ; preds = %10037, %9694, %9663, %8895
  %10062 = phi float [ %8900, %8895 ], [ %9685, %9663 ], [ %10055, %10037 ], [ %9685, %9694 ]
  %10063 = phi float [ %8901, %8895 ], [ %9686, %9663 ], [ %10056, %10037 ], [ %9686, %9694 ]
  %10064 = phi float [ %8902, %8895 ], [ %9687, %9663 ], [ %10057, %10037 ], [ %9687, %9694 ]
  %10065 = phi float [ %8903, %8895 ], [ %9688, %9663 ], [ %10058, %10037 ], [ %9688, %9694 ]
  %10066 = phi float [ %8904, %8895 ], [ %9689, %9663 ], [ %10059, %10037 ], [ %9689, %9694 ]
  %10067 = phi float [ %8905, %8895 ], [ %9690, %9663 ], [ %10060, %10037 ], [ %9690, %9694 ]
  %10068 = phi float [ %8906, %8895 ], [ %9673, %9663 ], [ %10044, %10037 ], [ %9673, %9694 ]
  %10069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10070 = extractvalue %dx.types.CBufRet.f32 %10069, 2
  %10071 = extractvalue %dx.types.CBufRet.f32 %10069, 3
  %10072 = fmul fast float %10070, %111
  %10073 = fmul fast float %10071, %112
  %10074 = call float @dx.op.unary.f32(i32 7, float %10072)  ; Saturate(value)
  %10075 = call float @dx.op.unary.f32(i32 7, float %10073)  ; Saturate(value)
  %10076 = select i1 %8637, i32 2, i32 0
  %10077 = or i32 %10076, 1
  %10078 = uitofp i32 %10077 to float
  %10079 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10074, float %10075, float %10078, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10080 = extractvalue %dx.types.ResRet.f32 %10079, 0
  %10081 = extractvalue %dx.types.ResRet.f32 %10079, 1
  %10082 = extractvalue %dx.types.ResRet.f32 %10079, 2
  %10083 = extractvalue %dx.types.ResRet.f32 %10079, 3
  %10084 = add nuw nsw i32 %10076, 2
  %10085 = uitofp i32 %10084 to float
  %10086 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10074, float %10075, float %10085, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10087 = extractvalue %dx.types.ResRet.f32 %10086, 0
  %10088 = extractvalue %dx.types.ResRet.f32 %10086, 1
  %10089 = extractvalue %dx.types.ResRet.f32 %10086, 2
  %10090 = extractvalue %dx.types.ResRet.f32 %10086, 3
  %10091 = call float @dx.op.binary.f32(i32 35, float %10081, float %10082)  ; FMax(a,b)
  %10092 = call float @dx.op.binary.f32(i32 35, float %10080, float %10091)  ; FMax(a,b)
  %10093 = call float @dx.op.binary.f32(i32 35, float %10092, float %10083)  ; FMax(a,b)
  %10094 = call float @dx.op.binary.f32(i32 36, float %10088, float %10089)  ; FMin(a,b)
  %10095 = call float @dx.op.binary.f32(i32 36, float %10087, float %10094)  ; FMin(a,b)
  %10096 = call float @dx.op.binary.f32(i32 36, float %10095, float %10090)  ; FMin(a,b)
  %10097 = fmul fast float %10093, 2.550000e+02
  %10098 = fadd fast float %10097, 0x3F70101020000000
  %10099 = fptoui float %10098 to i32
  %10100 = fmul fast float %10096, 2.550000e+02
  %10101 = fadd fast float %10100, 0x3F70101020000000
  %10102 = fptoui float %10101 to i32
  %10103 = icmp ult i32 %10099, %10102
  br i1 %10103, label %10104, label %10273

; <label>:10104                                   ; preds = %10061
  %10105 = fcmp fast ogt float %98, 9.843750e-01
  %10106 = fadd fast float %8899, -4.000000e+00
  %10107 = select i1 %10105, float -4.000000e+00, float %10106
  %10108 = call float @dx.op.binary.f32(i32 35, float %10107, float 0.000000e+00)  ; FMax(a,b)
  %10109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10110 = extractvalue %dx.types.CBufRet.f32 %10109, 0
  %10111 = fadd fast float %10110, %10108
  %10112 = extractvalue %dx.types.CBufRet.f32 %10109, 2
  %10113 = fmul fast float %10111, %10112
  %10114 = call float @dx.op.unary.f32(i32 23, float %10113)  ; Log(value)
  %10115 = extractvalue %dx.types.CBufRet.f32 %10109, 3
  %10116 = fmul fast float %10115, %10114
  %10117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10118 = extractvalue %dx.types.CBufRet.f32 %10117, 2
  %10119 = fmul fast float %10116, %10118
  %10120 = call float @dx.op.unary.f32(i32 7, float %10119)  ; Saturate(value)
  %10121 = uitofp i32 %10099 to float
  %10122 = uitofp i32 %10102 to float
  %10123 = fadd fast float %10121, 5.000000e-01
  %10124 = fadd fast float %10122, 5.000000e-01
  %10125 = fmul fast float %10118, %10123
  %10126 = fmul fast float %10118, %10124
  %10127 = fadd fast float %10125, 0x3F0FFB4800000000
  %10128 = fadd fast float %10126, 0xBF0FFB4800000000
  %10129 = call float @dx.op.binary.f32(i32 35, float %10120, float %10127)  ; FMax(a,b)
  %10130 = call float @dx.op.binary.f32(i32 36, float %10129, float %10128)  ; FMin(a,b)
  %10131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10132 = extractvalue %dx.types.CBufRet.f32 %10131, 1
  %10133 = extractvalue %dx.types.CBufRet.f32 %10131, 2
  %10134 = extractvalue %dx.types.CBufRet.f32 %10131, 0
  %10135 = select i1 %8637, float %10134, float 0.000000e+00
  %10136 = fmul fast float %10132, %10130
  %10137 = fadd fast float %10135, %10136
  %10138 = fadd fast float %10135, %10133
  %10139 = fsub fast float %10132, %10133
  %10140 = fadd fast float %10139, %10135
  %10141 = call float @dx.op.binary.f32(i32 35, float %10137, float %10138)  ; FMax(a,b)
  %10142 = call float @dx.op.binary.f32(i32 36, float %10141, float %10140)  ; FMin(a,b)
  %10143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10074, float %10075, float %10142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10144 = extractvalue %dx.types.ResRet.f32 %10143, 0
  %10145 = extractvalue %dx.types.ResRet.f32 %10143, 1
  %10146 = extractvalue %dx.types.ResRet.f32 %10143, 2
  %10147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10148 = extractvalue %dx.types.CBufRet.i32 %10147, 0
  %10149 = extractvalue %dx.types.CBufRet.i32 %10147, 1
  %10150 = uitofp i32 %10148 to float
  %10151 = uitofp i32 %10149 to float
  %10152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10153 = extractvalue %dx.types.CBufRet.f32 %10152, 0
  %10154 = extractvalue %dx.types.CBufRet.f32 %10152, 1
  %10155 = fmul fast float %10150, %10074
  %10156 = fmul fast float %10151, %10075
  %10157 = fadd fast float %10155, -5.000000e-01
  %10158 = fadd fast float %10156, -5.000000e-01
  %10159 = call float @dx.op.unary.f32(i32 22, float %10157)  ; Frc(value)
  %10160 = call float @dx.op.unary.f32(i32 22, float %10158)  ; Frc(value)
  %10161 = fmul fast float %10159, %10159
  %10162 = fmul fast float %10161, %10159
  %10163 = fsub fast float 3.000000e+00, %10159
  %10164 = fmul fast float %10161, %10163
  %10165 = fmul fast float %10159, 3.000000e+00
  %10166 = fmul fast float %10162, 3.000000e+00
  %10167 = fmul fast float %10161, 6.000000e+00
  %10168 = fsub fast float %10166, %10167
  %10169 = fadd fast float %10168, 4.000000e+00
  %10170 = fmul fast float %10169, 0x3FC5555560000000
  %10171 = fmul fast float %10162, -3.000000e+00
  %10172 = fadd fast float %10161, %10159
  %10173 = fmul fast float %10172, 3.000000e+00
  %10174 = fadd fast float %10171, 1.000000e+00
  %10175 = fadd fast float %10174, %10173
  %10176 = fmul fast float %10162, 0x3FC5555560000000
  %10177 = fmul fast float %10160, %10160
  %10178 = fmul fast float %10177, %10160
  %10179 = fsub fast float 3.000000e+00, %10160
  %10180 = fmul fast float %10177, %10179
  %10181 = fmul fast float %10160, 3.000000e+00
  %10182 = fmul fast float %10178, 3.000000e+00
  %10183 = fmul fast float %10177, 6.000000e+00
  %10184 = fsub fast float %10182, %10183
  %10185 = fadd fast float %10184, 4.000000e+00
  %10186 = fmul fast float %10185, 0x3FC5555560000000
  %10187 = fmul fast float %10178, -3.000000e+00
  %10188 = fadd fast float %10177, %10160
  %10189 = fmul fast float %10188, 3.000000e+00
  %10190 = fadd fast float %10187, 1.000000e+00
  %10191 = fadd fast float %10190, %10189
  %10192 = fmul fast float %10178, 0x3FC5555560000000
  %10193 = fadd fast float %10159, 1.000000e+00
  %10194 = fsub fast float 1.000000e+00, %10165
  %10195 = fadd fast float %10194, %10164
  %10196 = fadd fast float %10195, %10169
  %10197 = fmul fast float %10196, 0x3FC5555560000000
  %10198 = fdiv fast float %10170, %10197
  %10199 = fsub fast float %10193, %10198
  %10200 = fsub fast float 1.000000e+00, %10159
  %10201 = fadd fast float %10175, %10162
  %10202 = fmul fast float %10201, 0x3FC5555560000000
  %10203 = fdiv fast float %10176, %10202
  %10204 = fadd fast float %10200, %10203
  %10205 = fadd fast float %10160, 1.000000e+00
  %10206 = fsub fast float 1.000000e+00, %10181
  %10207 = fadd fast float %10206, %10180
  %10208 = fadd fast float %10207, %10185
  %10209 = fmul fast float %10208, 0x3FC5555560000000
  %10210 = fdiv fast float %10186, %10209
  %10211 = fsub fast float %10205, %10210
  %10212 = fsub fast float 1.000000e+00, %10160
  %10213 = fadd fast float %10191, %10178
  %10214 = fmul fast float %10213, 0x3FC5555560000000
  %10215 = fdiv fast float %10192, %10214
  %10216 = fadd fast float %10215, %10212
  %10217 = fmul fast float %10199, %10153
  %10218 = fsub fast float %10074, %10217
  %10219 = fmul fast float %10204, %10153
  %10220 = fadd fast float %10219, %10074
  %10221 = fmul fast float %10216, %10154
  %10222 = fadd fast float %10221, %10075
  %10223 = fmul fast float %10211, %10154
  %10224 = fsub fast float %10075, %10223
  %10225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10218, float %10224, float %10142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10226 = extractvalue %dx.types.ResRet.f32 %10225, 0
  %10227 = extractvalue %dx.types.ResRet.f32 %10225, 1
  %10228 = extractvalue %dx.types.ResRet.f32 %10225, 2
  %10229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10220, float %10224, float %10142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10230 = extractvalue %dx.types.ResRet.f32 %10229, 0
  %10231 = extractvalue %dx.types.ResRet.f32 %10229, 1
  %10232 = extractvalue %dx.types.ResRet.f32 %10229, 2
  %10233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10218, float %10222, float %10142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10234 = extractvalue %dx.types.ResRet.f32 %10233, 0
  %10235 = extractvalue %dx.types.ResRet.f32 %10233, 1
  %10236 = extractvalue %dx.types.ResRet.f32 %10233, 2
  %10237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10220, float %10222, float %10142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10238 = extractvalue %dx.types.ResRet.f32 %10237, 0
  %10239 = extractvalue %dx.types.ResRet.f32 %10237, 1
  %10240 = extractvalue %dx.types.ResRet.f32 %10237, 2
  %10241 = fsub fast float %10234, %10226
  %10242 = fsub fast float %10235, %10227
  %10243 = fsub fast float %10236, %10228
  %10244 = fmul fast float %10241, %10214
  %10245 = fmul fast float %10242, %10214
  %10246 = fmul fast float %10243, %10214
  %10247 = fadd fast float %10244, %10226
  %10248 = fadd fast float %10245, %10227
  %10249 = fadd fast float %10246, %10228
  %10250 = fsub fast float %10238, %10230
  %10251 = fsub fast float %10239, %10231
  %10252 = fsub fast float %10240, %10232
  %10253 = fmul fast float %10250, %10214
  %10254 = fmul fast float %10251, %10214
  %10255 = fmul fast float %10252, %10214
  %10256 = fsub fast float %10230, %10247
  %10257 = fadd fast float %10256, %10253
  %10258 = fsub fast float %10231, %10248
  %10259 = fadd fast float %10258, %10254
  %10260 = fsub fast float %10232, %10249
  %10261 = fadd fast float %10260, %10255
  %10262 = fmul fast float %10257, %10202
  %10263 = fmul fast float %10259, %10202
  %10264 = fmul fast float %10261, %10202
  %10265 = fadd fast float %10262, %10247
  %10266 = fadd fast float %10263, %10248
  %10267 = fadd fast float %10264, %10249
  %10268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10269 = extractvalue %dx.types.CBufRet.f32 %10268, 1
  %10270 = fmul fast float %10265, %10269
  %10271 = fmul fast float %10266, %10269
  %10272 = fmul fast float %10267, %10269
  br label %10273

; <label>:10273                                   ; preds = %10104, %10061
  %10274 = phi float [ %10144, %10104 ], [ 1.000000e+00, %10061 ]
  %10275 = phi float [ %10145, %10104 ], [ 1.000000e+00, %10061 ]
  %10276 = phi float [ %10146, %10104 ], [ 1.000000e+00, %10061 ]
  %10277 = phi float [ %10270, %10104 ], [ 0.000000e+00, %10061 ]
  %10278 = phi float [ %10271, %10104 ], [ 0.000000e+00, %10061 ]
  %10279 = phi float [ %10272, %10104 ], [ 0.000000e+00, %10061 ]
  %10280 = fmul fast float %10277, %8615
  %10281 = fmul fast float %10278, %8615
  %10282 = fmul fast float %10279, %8615
  %10283 = fmul fast float %10274, %10068
  %10284 = call float @dx.op.dot3.f32(i32 55, float %10274, float %10275, float %10276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10285 = call float @dx.op.dot3.f32(i32 55, float %10280, float %10281, float %10282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10286 = select i1 %232, float %10284, float %10274
  %10287 = select i1 %232, float %10284, float %10275
  %10288 = select i1 %232, float 1.000000e+00, float %10276
  %10289 = select i1 %232, float %10285, float %10280
  %10290 = select i1 %232, float 0.000000e+00, float %10281
  %10291 = select i1 %232, float 0.000000e+00, float %10282
  %10292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10293 = extractvalue %dx.types.CBufRet.i32 %10292, 3
  %10294 = and i32 %10293, 3
  %10295 = icmp ne i32 %10294, 0
  %10296 = and i32 %10293, 4
  %10297 = icmp ne i32 %10296, 0
  %10298 = and i1 %10295, %10297
  %10299 = and i1 %232, %10298
  br i1 %10299, label %10300, label %10306

; <label>:10300                                   ; preds = %10273
  %10301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10302 = extractvalue %dx.types.CBufRet.f32 %10301, 1
  %10303 = fadd fast float %10283, -1.000000e+00
  %10304 = fmul fast float %10302, %10303
  %10305 = fadd fast float %10304, 1.000000e+00
  br label %10306

; <label>:10306                                   ; preds = %10300, %10273
  %10307 = phi float [ %10305, %10300 ], [ %10283, %10273 ]
  %10308 = fadd fast float %10065, %10062
  %10309 = fmul fast float %10286, %10308
  %10310 = fadd fast float %10309, %10289
  %10311 = fadd fast float %10066, %10063
  %10312 = fmul fast float %10287, %10311
  %10313 = fadd fast float %10312, %10290
  %10314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10315 = extractvalue %dx.types.CBufRet.f32 %10314, 0
  br i1 %232, label %10316, label %10340

; <label>:10316                                   ; preds = %10306
  %10317 = fadd fast float %10310, %10313
  %10318 = fmul fast float %10315, %10317
  %10319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10320 = extractvalue %dx.types.CBufRet.f32 %10319, 3
  %10321 = extractvalue %dx.types.CBufRet.f32 %8619, 1
  %10322 = fsub fast float %8624, %8618
  %10323 = fadd fast float %10322, %8625
  %10324 = fsub fast float %10323, %10321
  %10325 = extractvalue %dx.types.CBufRet.f32 %8619, 2
  %10326 = fmul fast float %10324, %10325
  %10327 = call float @dx.op.unary.f32(i32 7, float %10326)  ; Saturate(value)
  %10328 = fsub fast float %10327, %10320
  %10329 = fmul fast float %10328, %10307
  %10330 = fadd fast float %10329, %10320
  %10331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10332 = extractvalue %dx.types.CBufRet.f32 %10331, 0
  %10333 = fsub fast float %10330, %10332
  %10334 = fmul fast float %10333, 1.000000e+01
  %10335 = call float @dx.op.unary.f32(i32 7, float %10334)  ; Saturate(value)
  %10336 = fsub fast float %4856, %8615
  %10337 = fmul fast float %10335, %10336
  %10338 = fadd fast float %10337, %8615
  %10339 = fmul fast float %10338, %10330
  br label %10364

; <label>:10340                                   ; preds = %10306
  %10341 = fadd fast float %10067, %10064
  %10342 = fmul fast float %10288, %10341
  %10343 = fadd fast float %10342, %10291
  %10344 = fmul fast float %10315, %10310
  %10345 = fmul fast float %10315, %10313
  %10346 = fmul fast float %10315, %10343
  %10347 = call float @dx.op.binary.f32(i32 35, float %10345, float %10346)  ; FMax(a,b)
  %10348 = call float @dx.op.binary.f32(i32 35, float %10344, float %10347)  ; FMax(a,b)
  %10349 = call float @dx.op.binary.f32(i32 35, float %10348, float %8615)  ; FMax(a,b)
  %10350 = fcmp fast ugt float %10349, 0x3F10000000000000
  br i1 %10350, label %10352, label %10351

; <label>:10351                                   ; preds = %10340
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10352

; <label>:10352                                   ; preds = %10351, %10340
  %10353 = add i32 %62, 356
  %10354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10353, i32 undef)  ; BufferLoad(srv,index,wot)
  %10355 = extractvalue %dx.types.ResRet.i32 %10354, 0
  %10356 = and i32 %10355, 32
  %10357 = icmp eq i32 %10356, 0
  br i1 %10357, label %10364, label %10358

; <label>:10358                                   ; preds = %10352
  %10359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10360 = extractvalue %dx.types.CBufRet.f32 %10359, 0
  %10361 = fmul fast float %10360, 0x3FE99999A0000000
  %10362 = fadd fast float %10360, %10344
  %10363 = fadd fast float %10361, %10346
  br label %10364

; <label>:10364                                   ; preds = %10358, %10352, %10316
  %10365 = phi float [ %10318, %10316 ], [ %10362, %10358 ], [ %10344, %10352 ]
  %10366 = phi float [ %10339, %10316 ], [ %10345, %10358 ], [ %10345, %10352 ]
  %10367 = phi float [ %10338, %10316 ], [ %10363, %10358 ], [ %10346, %10352 ]
  %10368 = phi float [ %10338, %10316 ], [ %8615, %10358 ], [ %8615, %10352 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10369 = call float @dx.op.binary.f32(i32 36, float %10365, float 3.225500e+04)  ; FMin(a,b)
  %10370 = call float @dx.op.binary.f32(i32 36, float %10366, float 3.225500e+04)  ; FMin(a,b)
  %10371 = call float @dx.op.binary.f32(i32 36, float %10367, float 3.225500e+04)  ; FMin(a,b)
  %10372 = call float @dx.op.binary.f32(i32 36, float %10368, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10370)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10371)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10372)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!74 = !{[47 x i32] [i32 45, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15]}
!75 = !{void ()* @ps_main, !"ps_main", !76, !4, !99}
!76 = !{!77, !97, null}
!77 = !{!78, !81, !82, !84, !86, !87, !88, !89, !90, !91, !92, !94, !96}
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
!94 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !79, i8 1, i32 1, i8 1, i32 11, i8 0, !95}
!95 = !{i32 3, i32 1}
!96 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !79, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!97 = !{!98}
!98 = !{i32 0, !"SV_Target", i8 9, i8 16, !79, i8 0, i32 1, i8 4, i32 0, i8 0, !80}
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
!142 = distinct !{!142, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!143 = distinct !{!143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!144 = distinct !{!144, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!145 = distinct !{!145, !143, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!146 = distinct !{!146, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!147 = distinct !{!147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!148 = distinct !{!148, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!149 = distinct !{!149, !147, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
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

