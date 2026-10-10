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
; shader hash: 2340470b59598943b89f310b5471ac0f
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
  %426 = add i32 %62, 492
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
  br i1 %482, label %1185, label %483

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
  %1121 = and i32 %1120, 10240
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1167, label %1123

; <label>:1123                                    ; preds = %1115
  %1124 = add i32 %62, 476
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = add i32 %1126, 0
  %1128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1128, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 3
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 1048576
  %1135 = icmp ne i32 %1134, 0
  %1136 = and i32 %1133, 8192
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1153, label %1138

; <label>:1138                                    ; preds = %1123
  %1139 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1140 = select i1 %1135, float %1139, float %1130
  %1141 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1142 = select i1 %1135, float %1141, float %1130
  %1143 = add i32 %62, 96
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 16
  %1147 = and i32 %1146, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F80101020000000
  %1150 = fmul fast float %1149, %1142
  %1151 = fmul fast float %1149, %1130
  %1152 = fmul fast float %1149, %1140
  br label %1153

; <label>:1153                                    ; preds = %1138, %1123
  %1154 = phi float [ %1150, %1138 ], [ 0.000000e+00, %1123 ]
  %1155 = phi float [ %1151, %1138 ], [ 0.000000e+00, %1123 ]
  %1156 = phi float [ %1152, %1138 ], [ 0.000000e+00, %1123 ]
  %1157 = and i32 %1133, 2048
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1167, label %1159

; <label>:1159                                    ; preds = %1153
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = shl i32 %1161, 4
  %1163 = and i32 %1162, 32752
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = fmul fast float %1164, %1131
  %1166 = call float @dx.op.binary.f32(i32 35, float %1165, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1167

; <label>:1167                                    ; preds = %1159, %1153, %1115
  %1168 = phi float [ %1154, %1159 ], [ %1154, %1153 ], [ 0.000000e+00, %1115 ]
  %1169 = phi float [ %1155, %1159 ], [ %1155, %1153 ], [ 0.000000e+00, %1115 ]
  %1170 = phi float [ %1156, %1159 ], [ %1156, %1153 ], [ 0.000000e+00, %1115 ]
  %1171 = phi float [ %1166, %1159 ], [ 0x3F70101020000000, %1153 ], [ 0x3F70101020000000, %1115 ]
  %1172 = add i32 %62, 96
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 255
  %1176 = uitofp i32 %1175 to float
  %1177 = lshr i32 %1174, 8
  %1178 = and i32 %1177, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1181 = fmul fast float %1179, %1180
  %1182 = fadd fast float %1181, %1176
  %1183 = fmul fast float %1182, 0x3F70101020000000
  %1184 = call float @dx.op.unary.f32(i32 7, float %1183)  ; Saturate(value)
  br label %1185

; <label>:1185                                    ; preds = %1167, %468
  %1186 = phi float [ 0.000000e+00, %468 ], [ %1069, %1167 ]
  %1187 = phi float [ 0.000000e+00, %468 ], [ %1070, %1167 ]
  %1188 = phi float [ 0.000000e+00, %468 ], [ %988, %1167 ]
  %1189 = phi float [ 0.000000e+00, %468 ], [ %989, %1167 ]
  %1190 = phi float [ 0.000000e+00, %468 ], [ %990, %1167 ]
  %1191 = phi float [ 0.000000e+00, %468 ], [ %1168, %1167 ]
  %1192 = phi float [ 0.000000e+00, %468 ], [ %1169, %1167 ]
  %1193 = phi float [ 0.000000e+00, %468 ], [ %1170, %1167 ]
  %1194 = phi float [ 0.000000e+00, %468 ], [ %1116, %1167 ]
  %1195 = phi float [ 0.000000e+00, %468 ], [ %1117, %1167 ]
  %1196 = phi float [ 0.000000e+00, %468 ], [ %1118, %1167 ]
  %1197 = phi float [ 0.000000e+00, %468 ], [ %974, %1167 ]
  %1198 = phi float [ 0.000000e+00, %468 ], [ %770, %1167 ]
  %1199 = phi float [ 0.000000e+00, %468 ], [ %1068, %1167 ]
  %1200 = phi float [ 0.000000e+00, %468 ], [ %1071, %1167 ]
  %1201 = phi float [ 0.000000e+00, %468 ], [ %1171, %1167 ]
  %1202 = phi float [ 0.000000e+00, %468 ], [ %1184, %1167 ]
  br i1 %416, label %2131, label %1203

; <label>:1203                                    ; preds = %1185
  %1204 = icmp ult i32 %474, 2
  %1205 = add i32 %62, 40
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = add i32 %62, 44
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = or i32 %1210, %1207
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %2131, label %1213

; <label>:1213                                    ; preds = %1203
  %1214 = and i32 %1207, 262144
  %1215 = icmp ne i32 %1214, 0
  %1216 = select i1 %1215, float %65, float 1.000000e+00
  %1217 = select i1 %1215, float %66, float 0.000000e+00
  %1218 = select i1 %1215, float %67, float 0.000000e+00
  %1219 = select i1 %1215, float %68, float 1.000000e+00
  %1220 = select i1 %1215, float %69, float %90
  %1221 = select i1 %1215, float %70, float %91
  %1222 = add i32 %62, 300
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = fmul fast float %1226, 0x3F50624DE0000000
  %1228 = add i32 %62, 104
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = lshr i32 %1230, 16
  %1232 = and i32 %1231, 255
  %1233 = lshr i32 %1230, 24
  %1234 = add i32 %62, 308
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 65535
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = lshr i32 %1236, 16
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = add i32 %62, 48
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = lshr i32 %1243, 22
  %1245 = shl nuw nsw i32 %1244, 5
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = shl i32 %1243, 4
  %1248 = and i32 %1247, 32752
  %1249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1248)  ; LegacyF16ToF32(value)
  %1250 = lshr i32 %1243, 7
  %1251 = and i32 %1250, 32752
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.f32 %1253, 3
  %1255 = fmul fast float %1254, 1.000000e+03
  %1256 = fmul fast float %326, %1255
  %1257 = call float @dx.op.unary.f32(i32 22, float %1256)  ; Frc(value)
  %1258 = fadd fast float %1257, %316
  %1259 = fmul fast float %327, %1255
  %1260 = call float @dx.op.unary.f32(i32 22, float %1259)  ; Frc(value)
  %1261 = fadd fast float %1260, %318
  %1262 = fmul fast float %1227, %1255
  %1263 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1264 = fmul fast float %1263, 0x401921FB60000000
  %1265 = fadd fast float %1264, %1246
  %1266 = call float @dx.op.unary.f32(i32 13, float %1265)  ; Sin(value)
  %1267 = call float @dx.op.unary.f32(i32 12, float %1265)  ; Cos(value)
  %1268 = fsub fast float -0.000000e+00, %1266
  %1269 = fadd fast float %1220, -5.000000e-01
  %1270 = fadd fast float %1221, -5.000000e-01
  %1271 = fmul fast float %1238, %1269
  %1272 = fmul fast float %1240, %1270
  %1273 = fadd fast float %1271, 5.000000e-01
  %1274 = fadd fast float %1272, 5.000000e-01
  %1275 = fmul fast float %1249, %1273
  %1276 = fmul fast float %1252, %1274
  %1277 = fmul fast float %1267, %1275
  %1278 = call float @dx.op.tertiary.f32(i32 46, float %1268, float %1276, float %1277)  ; FMad(a,b,c)
  %1279 = fmul fast float %1266, %1275
  %1280 = call float @dx.op.tertiary.f32(i32 46, float %1267, float %1276, float %1279)  ; FMad(a,b,c)
  %1281 = fadd fast float %1258, %1278
  %1282 = fadd fast float %1261, %1280
  %1283 = icmp ugt i32 %1232, 1
  %1284 = icmp ugt i32 %1230, 33554431
  %1285 = or i1 %1284, %1283
  br i1 %1285, label %1286, label %1311

; <label>:1286                                    ; preds = %1213
  %1287 = add i32 %62, 244
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = lshr i32 %1289, 16
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = fmul fast float %1254, %1291
  %1293 = call float @dx.op.unary.f32(i32 22, float %1292)  ; Frc(value)
  %1294 = mul nuw nsw i32 %1232, %1233
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1293, %1295
  %1297 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1298 = fptoui float %1297 to i32
  %1299 = urem i32 %1298, %1232
  %1300 = udiv i32 %1298, %1233
  %1301 = call float @dx.op.unary.f32(i32 22, float %1281)  ; Frc(value)
  %1302 = call float @dx.op.unary.f32(i32 22, float %1282)  ; Frc(value)
  %1303 = uitofp i32 %1299 to float
  %1304 = uitofp i32 %1300 to float
  %1305 = fadd fast float %1301, %1303
  %1306 = fadd fast float %1302, %1304
  %1307 = uitofp i32 %1232 to float
  %1308 = uitofp i32 %1233 to float
  %1309 = fdiv fast float %1305, %1307
  %1310 = fdiv fast float %1306, %1308
  br label %1311

; <label>:1311                                    ; preds = %1286, %1213
  %1312 = phi float [ %1309, %1286 ], [ %1281, %1213 ]
  %1313 = phi float [ %1310, %1286 ], [ %1282, %1213 ]
  %1314 = and i32 %1207, 16777216
  %1315 = icmp eq i32 %1314, 0
  br i1 %1315, label %1425, label %1316

; <label>:1316                                    ; preds = %1311
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1321 = fadd fast float %1318, %170
  %1322 = fadd fast float %1319, %171
  %1323 = fadd fast float %1320, %172
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 0
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = icmp eq i32 %63, 65535
  br i1 %1327, label %1422, label %1328

; <label>:1328                                    ; preds = %1316
  %1329 = lshr i32 %63, 1
  %1330 = shl i32 %1329, 2
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = and i32 %63, 1
  %1334 = icmp ne i32 %1333, 0
  %1335 = lshr i32 %1332, 16
  %1336 = and i32 %1332, 65535
  %1337 = select i1 %1334, i32 %1335, i32 %1336
  %1338 = icmp eq i32 %1337, 65535
  br i1 %1338, label %1418, label %1339

; <label>:1339                                    ; preds = %1328
  %1340 = mul nuw nsw i32 %1337, 40
  %1341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = extractvalue %dx.types.ResRet.f32 %1341, 1
  %1344 = extractvalue %dx.types.ResRet.f32 %1341, 2
  %1345 = add nuw nsw i32 %1340, 12
  %1346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.f32 %1346, 0
  %1348 = extractvalue %dx.types.ResRet.f32 %1346, 1
  %1349 = extractvalue %dx.types.ResRet.f32 %1346, 2
  %1350 = add nuw nsw i32 %1340, 24
  %1351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1350, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = extractvalue %dx.types.ResRet.f32 %1351, 1
  %1354 = extractvalue %dx.types.ResRet.f32 %1351, 2
  %1355 = add nuw nsw i32 %1340, 36
  %1356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = fsub fast float %1321, %1342
  %1359 = fsub fast float %1322, %1343
  %1360 = fsub fast float %1323, %1344
  %1361 = fmul fast float %1357, %1358
  %1362 = fmul fast float %1357, %1359
  %1363 = fmul fast float %1357, %1360
  %1364 = call float @dx.op.unary.f32(i32 27, float %1361)  ; Round_ni(value)
  %1365 = call float @dx.op.unary.f32(i32 27, float %1362)  ; Round_ni(value)
  %1366 = call float @dx.op.unary.f32(i32 27, float %1363)  ; Round_ni(value)
  %1367 = fadd fast float %1364, 5.000000e-01
  %1368 = fadd fast float %1365, 5.000000e-01
  %1369 = fadd fast float %1366, 5.000000e-01
  %1370 = fmul fast float %1367, %1347
  %1371 = fmul fast float %1368, %1348
  %1372 = fmul fast float %1369, %1349
  %1373 = shl i32 %63, 2
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = add i32 %1375, 0
  %1377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1378 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1379 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1380 = call float @dx.op.unary.f32(i32 22, float %1372)  ; Frc(value)
  %1381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1377, %dx.types.Handle %55, float %1378, float %1379, float %1380, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1382 = extractvalue %dx.types.ResRet.f32 %1381, 0
  %1383 = extractvalue %dx.types.ResRet.f32 %1381, 1
  %1384 = extractvalue %dx.types.ResRet.f32 %1381, 2
  %1385 = fmul fast float %1382, 1.023000e+03
  %1386 = fmul fast float %1383, 1.023000e+03
  %1387 = fmul fast float %1384, 1.023000e+03
  %1388 = fadd fast float %1385, 5.000000e-01
  %1389 = fadd fast float %1386, 5.000000e-01
  %1390 = fadd fast float %1387, 5.000000e-01
  %1391 = call float @dx.op.unary.f32(i32 27, float %1388)  ; Round_ni(value)
  %1392 = call float @dx.op.unary.f32(i32 27, float %1389)  ; Round_ni(value)
  %1393 = call float @dx.op.unary.f32(i32 27, float %1390)  ; Round_ni(value)
  %1394 = fsub fast float %1361, %1364
  %1395 = fsub fast float %1362, %1365
  %1396 = fsub fast float %1363, %1366
  %1397 = fmul fast float %1394, 7.500000e-01
  %1398 = fmul fast float %1395, 7.500000e-01
  %1399 = fmul fast float %1396, 7.500000e-01
  %1400 = fadd fast float %1364, 1.250000e-01
  %1401 = fadd fast float %1400, %1397
  %1402 = fadd fast float %1401, %1391
  %1403 = fadd fast float %1365, 1.250000e-01
  %1404 = fadd fast float %1403, %1398
  %1405 = fadd fast float %1404, %1392
  %1406 = fadd fast float %1366, 1.250000e-01
  %1407 = fadd fast float %1406, %1399
  %1408 = fadd fast float %1407, %1393
  %1409 = fmul fast float %1402, %1352
  %1410 = fmul fast float %1405, %1353
  %1411 = fmul fast float %1408, %1354
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = add i32 %1413, 0
  %1415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1415, %dx.types.Handle %53, float %1409, float %1410, float %1411, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  br label %1418

; <label>:1418                                    ; preds = %1339, %1328
  %1419 = phi float [ %1417, %1339 ], [ -1.000000e+00, %1328 ]
  %1420 = fadd fast float %1419, %1326
  %1421 = call float @dx.op.unary.f32(i32 7, float %1420)  ; Saturate(value)
  br label %1422

; <label>:1422                                    ; preds = %1418, %1316
  %1423 = phi float [ %1421, %1418 ], [ %1326, %1316 ]
  %1424 = fmul fast float %1423, %471
  br label %1425

; <label>:1425                                    ; preds = %1422, %1311
  %1426 = phi float [ %1424, %1422 ], [ %471, %1311 ]
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 256
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1477, label %1431

; <label>:1431                                    ; preds = %1425
  %1432 = add i32 %62, 444
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1436, %dx.types.Handle %108, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = add i32 %62, 116
  %1440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1439, i32 undef)  ; BufferLoad(srv,index,wot)
  %1441 = extractvalue %dx.types.ResRet.i32 %1440, 0
  %1442 = shl i32 %1441, 4
  %1443 = and i32 %1442, 32752
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = lshr i32 %1441, 7
  %1446 = and i32 %1445, 32752
  %1447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1446)  ; LegacyF16ToF32(value)
  %1448 = fsub fast float 1.000000e+00, %1426
  %1449 = call float @dx.op.binary.f32(i32 35, float %1448, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1450 = bitcast float %1426 to i32
  %1451 = sitofp i32 %1450 to float
  %1452 = fadd fast float %1451, 0xC1CFBF8940000000
  %1453 = fmul fast float %1447, %1452
  %1454 = fadd fast float %1453, 0x41CFBF8940000000
  %1455 = fptosi float %1454 to i32
  %1456 = bitcast i32 %1455 to float
  %1457 = bitcast float %1449 to i32
  %1458 = sitofp i32 %1457 to float
  %1459 = fadd fast float %1458, 0xC1CFBF8940000000
  %1460 = fmul fast float %1459, %1447
  %1461 = fadd fast float %1460, 0x41CFBF8940000000
  %1462 = fptosi float %1461 to i32
  %1463 = bitcast i32 %1462 to float
  %1464 = fmul fast float %1456, %1444
  %1465 = fmul fast float %1463, %1444
  %1466 = fsub fast float %1449, %1464
  %1467 = fadd fast float %1465, %1449
  %1468 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1469 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1470 = fsub fast float %1438, %1468
  %1471 = fsub fast float %1469, %1468
  %1472 = bitcast float %1471 to i32
  %1473 = sub nsw i32 2129859010, %1472
  %1474 = bitcast i32 %1473 to float
  %1475 = fmul fast float %1474, %1470
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  br label %1477

; <label>:1477                                    ; preds = %1431, %1425
  %1478 = phi float [ %1476, %1431 ], [ %1426, %1425 ]
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 128
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1499, label %1483

; <label>:1483                                    ; preds = %1477
  %1484 = add i32 %62, 428
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %1486, 0
  %1488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1488, %dx.types.Handle %108, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 524288
  %1494 = icmp ne i32 %1493, 0
  %1495 = fcmp fast ogt float %1490, 0x3FE0101020000000
  %1496 = select i1 %1495, float 1.000000e+00, float 0.000000e+00
  %1497 = select i1 %1494, float %1496, float %1490
  %1498 = fmul fast float %1497, %1478
  br label %1499

; <label>:1499                                    ; preds = %1483, %1477
  %1500 = phi float [ %1498, %1483 ], [ %1478, %1477 ]
  %1501 = fcmp fast ult float %1500, 0x3F70101020000000
  br i1 %1501, label %2131, label %1502

; <label>:1502                                    ; preds = %1499
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 16
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1705, label %1507

; <label>:1507                                    ; preds = %1502
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = add i32 %62, 380
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = add i32 %1512, 0
  %1514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1514, %dx.types.Handle %107, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.ResRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.ResRet.f32 %1515, 2
  %1519 = extractvalue %dx.types.ResRet.f32 %1515, 3
  %1520 = and i32 %1509, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = lshr i32 %1509, 8
  %1523 = and i32 %1522, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = fmul fast float %1519, %1521
  %1526 = fadd fast float %1525, %1524
  %1527 = fmul fast float %1526, 0x3F70101000000000
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 512
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %1540, label %1532

; <label>:1532                                    ; preds = %1507
  %1533 = add i32 %62, 464
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = add i32 %1535, 0
  %1537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1537, %dx.types.Handle %108, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1539 = extractvalue %dx.types.ResRet.f32 %1538, 0
  br label %1540

; <label>:1540                                    ; preds = %1532, %1507
  %1541 = phi float [ %1539, %1532 ], [ 1.000000e+00, %1507 ]
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 33554432
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1652, label %1546

; <label>:1546                                    ; preds = %1540
  %1547 = add i32 %62, 240
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 65535
  %1551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1550)  ; LegacyF16ToF32(value)
  %1552 = lshr i32 %1549, 16
  %1553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1552)  ; LegacyF16ToF32(value)
  %1554 = add i32 %62, 244
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 65535
  %1558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1557)  ; LegacyF16ToF32(value)
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = lshr i32 %1560, 24
  %1562 = uitofp i32 %1561 to float
  %1563 = fmul fast float %1562, 0x3F70101020000000
  %1564 = and i32 %1560, 255
  %1565 = uitofp i32 %1564 to float
  %1566 = fmul fast float %1565, 0x3F70101020000000
  %1567 = lshr i32 %1560, 8
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = fmul fast float %1569, 0x3F70101020000000
  %1571 = lshr i32 %1560, 16
  %1572 = and i32 %1571, 255
  %1573 = uitofp i32 %1572 to float
  %1574 = fmul fast float %1573, 0x3F70101020000000
  %1575 = add i32 %62, 236
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = lshr i32 %1577, 24
  %1579 = uitofp i32 %1578 to float
  %1580 = fmul fast float %1579, 0x3F70101020000000
  %1581 = and i32 %1577, 255
  %1582 = uitofp i32 %1581 to float
  %1583 = fmul fast float %1582, 0x3F70101020000000
  %1584 = lshr i32 %1577, 8
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1586, 0x3F70101020000000
  %1588 = lshr i32 %1577, 16
  %1589 = and i32 %1588, 255
  %1590 = uitofp i32 %1589 to float
  %1591 = fmul fast float %1590, 0x3F70101020000000
  %1592 = bitcast float %1516 to i32
  %1593 = ashr i32 %1592, 1
  %1594 = sub nsw i32 1597463174, %1593
  %1595 = bitcast i32 %1594 to float
  %1596 = fmul fast float %1516, 5.000000e-01
  %1597 = fmul fast float %1595, %1595
  %1598 = fmul fast float %1597, %1596
  %1599 = fsub fast float 1.500000e+00, %1598
  %1600 = fmul fast float %1595, %1516
  %1601 = fmul fast float %1600, %1599
  %1602 = bitcast float %1517 to i32
  %1603 = ashr i32 %1602, 1
  %1604 = sub nsw i32 1597463174, %1603
  %1605 = bitcast i32 %1604 to float
  %1606 = fmul fast float %1517, 5.000000e-01
  %1607 = fmul fast float %1605, %1605
  %1608 = fmul fast float %1607, %1606
  %1609 = fsub fast float 1.500000e+00, %1608
  %1610 = fmul fast float %1605, %1517
  %1611 = fmul fast float %1610, %1609
  %1612 = bitcast float %1518 to i32
  %1613 = ashr i32 %1612, 1
  %1614 = sub nsw i32 1597463174, %1613
  %1615 = bitcast i32 %1614 to float
  %1616 = fmul fast float %1518, 5.000000e-01
  %1617 = fmul fast float %1615, %1615
  %1618 = fmul fast float %1617, %1616
  %1619 = fsub fast float 1.500000e+00, %1618
  %1620 = fmul fast float %1615, %1518
  %1621 = fmul fast float %1620, %1619
  %1622 = fsub fast float %1601, %1583
  %1623 = fsub fast float %1611, %1587
  %1624 = fsub fast float %1621, %1591
  %1625 = fmul fast float %1622, %1551
  %1626 = fmul fast float %1623, %1553
  %1627 = fmul fast float %1624, %1558
  %1628 = fadd fast float %1625, %1566
  %1629 = fadd fast float %1626, %1570
  %1630 = fadd fast float %1627, %1574
  %1631 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1632 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1633 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1634 = fmul fast float %1631, %1631
  %1635 = fmul fast float %1632, %1632
  %1636 = fmul fast float %1633, %1633
  %1637 = fsub fast float %1634, %1516
  %1638 = fsub fast float %1635, %1517
  %1639 = fsub fast float %1636, %1518
  %1640 = fmul fast float %1637, %1541
  %1641 = fmul fast float %1638, %1541
  %1642 = fmul fast float %1639, %1541
  %1643 = fadd fast float %1640, %1516
  %1644 = fadd fast float %1641, %1517
  %1645 = fadd fast float %1642, %1518
  %1646 = fadd fast float %1563, %1527
  %1647 = fsub fast float %1646, %1580
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1649 = fsub fast float %1648, %1527
  %1650 = fmul fast float %1649, %1541
  %1651 = fadd fast float %1650, %1527
  br label %1705

; <label>:1652                                    ; preds = %1540
  %1653 = and i32 %1543, 134217728
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1689, label %1655

; <label>:1655                                    ; preds = %1652
  %1656 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1657 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1658 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %1659 = fadd fast float %1656, -5.000000e-01
  %1660 = fadd fast float %1657, -5.000000e-01
  %1661 = fadd fast float %1658, -5.000000e-01
  %1662 = fmul fast float %1659, %1541
  %1663 = fmul fast float %1660, %1541
  %1664 = fmul fast float %1661, %1541
  %1665 = fadd fast float %1662, 5.000000e-01
  %1666 = fadd fast float %1663, 5.000000e-01
  %1667 = fadd fast float %1664, 5.000000e-01
  %1668 = call float @dx.op.unary.f32(i32 24, float %1516)  ; Sqrt(value)
  %1669 = call float @dx.op.unary.f32(i32 24, float %1517)  ; Sqrt(value)
  %1670 = call float @dx.op.unary.f32(i32 24, float %1518)  ; Sqrt(value)
  %1671 = fmul fast float %1665, 2.000000e+00
  %1672 = fsub fast float 1.000000e+00, %1671
  %1673 = fmul fast float %1672, %1668
  %1674 = fadd fast float %1673, %1671
  %1675 = fmul fast float %1674, %1668
  %1676 = fmul fast float %1666, 2.000000e+00
  %1677 = fsub fast float 1.000000e+00, %1676
  %1678 = fmul fast float %1677, %1669
  %1679 = fadd fast float %1678, %1676
  %1680 = fmul fast float %1679, %1669
  %1681 = fmul fast float %1667, 2.000000e+00
  %1682 = fsub fast float 1.000000e+00, %1681
  %1683 = fmul fast float %1682, %1670
  %1684 = fadd fast float %1683, %1681
  %1685 = fmul fast float %1684, %1670
  %1686 = fmul fast float %1675, %1675
  %1687 = fmul fast float %1680, %1680
  %1688 = fmul fast float %1685, %1685
  br label %1705

; <label>:1689                                    ; preds = %1652
  %1690 = fmul fast float %303, %303
  %1691 = fmul fast float %307, %307
  %1692 = fmul fast float %311, %311
  %1693 = fadd fast float %1690, -1.000000e+00
  %1694 = fadd fast float %1691, -1.000000e+00
  %1695 = fadd fast float %1692, -1.000000e+00
  %1696 = fmul fast float %1541, %1693
  %1697 = fmul fast float %1541, %1694
  %1698 = fmul fast float %1541, %1695
  %1699 = fadd fast float %1696, 1.000000e+00
  %1700 = fadd fast float %1697, 1.000000e+00
  %1701 = fadd fast float %1698, 1.000000e+00
  %1702 = fmul fast float %1699, %1516
  %1703 = fmul fast float %1700, %1517
  %1704 = fmul fast float %1701, %1518
  br label %1705

; <label>:1705                                    ; preds = %1689, %1655, %1546, %1502
  %1706 = phi float [ %1651, %1546 ], [ %1527, %1655 ], [ %1527, %1689 ], [ 0x3FA23C0BE0000000, %1502 ]
  %1707 = phi float [ %1643, %1546 ], [ %1686, %1655 ], [ %1702, %1689 ], [ 1.000000e+00, %1502 ]
  %1708 = phi float [ %1644, %1546 ], [ %1687, %1655 ], [ %1703, %1689 ], [ 1.000000e+00, %1502 ]
  %1709 = phi float [ %1645, %1546 ], [ %1688, %1655 ], [ %1704, %1689 ], [ 1.000000e+00, %1502 ]
  %1710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.i32 %1710, 1
  %1712 = and i32 %1711, 1
  %1713 = icmp ne i32 %1712, 0
  %1714 = add i32 %62, 356
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = and i32 %1716, 32
  %1718 = icmp ne i32 %1717, 0
  %1719 = and i1 %1713, %1718
  %1720 = select i1 %1719, float 1.000000e+00, float %1707
  %1721 = select i1 %1719, float 0x3FD3333340000000, float %1708
  %1722 = select i1 %1719, float 0x3FD3333340000000, float %1709
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 32
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1799, label %1727

; <label>:1727                                    ; preds = %1705
  %1728 = add i32 %62, 108
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = add i32 %62, 396
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = add i32 %1733, 0
  %1735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1735, %dx.types.Handle %107, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1737 = extractvalue %dx.types.ResRet.f32 %1736, 0
  %1738 = extractvalue %dx.types.ResRet.f32 %1736, 1
  %1739 = extractvalue %dx.types.ResRet.f32 %1736, 2
  %1740 = extractvalue %dx.types.ResRet.f32 %1736, 3
  %1741 = and i32 %1730, 255
  %1742 = uitofp i32 %1741 to float
  %1743 = lshr i32 %1730, 8
  %1744 = and i32 %1743, 255
  %1745 = uitofp i32 %1744 to float
  %1746 = lshr i32 %1730, 16
  %1747 = and i32 %1746, 255
  %1748 = uitofp i32 %1747 to float
  %1749 = fmul fast float %1748, 0x3F70101000000000
  %1750 = fmul fast float %1737, %1742
  %1751 = fadd fast float %1750, %1745
  %1752 = fmul fast float %1751, 0x3F70101000000000
  %1753 = fadd fast float %1738, -5.000000e-01
  %1754 = fadd fast float %1740, -5.000000e-01
  %1755 = fmul fast float %1753, %1749
  %1756 = fmul fast float %1754, %1749
  %1757 = fadd fast float %1755, 5.000000e-01
  %1758 = fadd fast float %1756, 5.000000e-01
  %1759 = fmul fast float %1757, 2.000000e+00
  %1760 = fadd fast float %1759, -1.000000e+00
  %1761 = fmul fast float %1758, 2.000000e+00
  %1762 = fadd fast float %1761, -1.000000e+00
  %1763 = fadd fast float %1760, %1762
  %1764 = fmul fast float %1763, 5.000000e-01
  %1765 = fsub fast float %1760, %1762
  %1766 = fmul fast float %1765, 5.000000e-01
  %1767 = call float @dx.op.unary.f32(i32 6, float %1764)  ; FAbs(value)
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = call float @dx.op.unary.f32(i32 6, float %1766)  ; FAbs(value)
  %1770 = fsub fast float %1768, %1769
  %1771 = call float @dx.op.dot3.f32(i32 55, float %1764, float %1766, float %1770, float %1764, float %1766, float %1770)  ; Dot3(ax,ay,az,bx,by,bz)
  %1772 = call float @dx.op.unary.f32(i32 25, float %1771)  ; Rsqrt(value)
  %1773 = fmul fast float %1764, %1772
  %1774 = fmul fast float %1766, %1772
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = and i32 %1776, 67108864
  %1778 = icmp eq i32 %1777, 0
  br i1 %1778, label %1795, label %1779

; <label>:1779                                    ; preds = %1727
  %1780 = add i32 %62, 296
  %1781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1780, i32 undef)  ; BufferLoad(srv,index,wot)
  %1782 = extractvalue %dx.types.ResRet.i32 %1781, 0
  %1783 = and i32 %1782, 65535
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 65535
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = lshr i32 %1782, 16
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = fsub fast float %1752, %1790
  %1792 = fmul fast float %1791, %1784
  %1793 = fadd fast float %1792, %1788
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  br label %1795

; <label>:1795                                    ; preds = %1779, %1727
  %1796 = phi float [ %1794, %1779 ], [ %1752, %1727 ]
  %1797 = call float @dx.op.dot2.f32(i32 54, float %1773, float %1774, float %1216, float %1217)  ; Dot2(ax,ay,bx,by)
  %1798 = call float @dx.op.dot2.f32(i32 54, float %1773, float %1774, float %1218, float %1219)  ; Dot2(ax,ay,bx,by)
  br label %1799

; <label>:1799                                    ; preds = %1795, %1705
  %1800 = phi float [ %1796, %1795 ], [ 0x3FD6666660000000, %1705 ]
  %1801 = phi float [ %1797, %1795 ], [ 0.000000e+00, %1705 ]
  %1802 = phi float [ %1798, %1795 ], [ 0.000000e+00, %1705 ]
  %1803 = phi float [ %1739, %1795 ], [ 1.000000e+00, %1705 ]
  %1804 = add i32 %62, 176
  %1805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.i32 %1805, 0
  %1807 = lshr i32 %1806, 22
  %1808 = shl nuw nsw i32 %1807, 5
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = and i32 %1811, 64
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %1847, label %1814

; <label>:1814                                    ; preds = %1799
  %1815 = add i32 %62, 412
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = add i32 %1817, 0
  %1819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 131072
  %1823 = icmp eq i32 %1822, 0
  %1824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1819, %dx.types.Handle %107, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1825 = extractvalue %dx.types.ResRet.f32 %1824, 0
  %1826 = extractvalue %dx.types.ResRet.f32 %1824, 1
  %1827 = extractvalue %dx.types.ResRet.f32 %1824, 2
  %1828 = fmul fast float %1825, %291
  %1829 = fmul fast float %1826, %294
  %1830 = fmul fast float %1827, %297
  br i1 %1823, label %1837, label %1831

; <label>:1831                                    ; preds = %1814
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 0
  %1834 = fmul fast float %1833, %1828
  %1835 = fmul fast float %1833, %1829
  %1836 = fmul fast float %1833, %1830
  br label %1837

; <label>:1837                                    ; preds = %1831, %1814
  %1838 = phi float [ %1834, %1831 ], [ %1828, %1814 ]
  %1839 = phi float [ %1835, %1831 ], [ %1829, %1814 ]
  %1840 = phi float [ %1836, %1831 ], [ %1830, %1814 ]
  %1841 = fmul fast float %1838, %1809
  %1842 = select i1 %232, float %1841, float %1838
  %1843 = call float @dx.op.dot3.f32(i32 55, float %1842, float %1839, float %1840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1844 = select i1 %232, float 0.000000e+00, float %1838
  %1845 = select i1 %232, float %1843, float %1839
  %1846 = select i1 %232, float 0.000000e+00, float %1840
  br label %1847

; <label>:1847                                    ; preds = %1837, %1799
  %1848 = phi float [ %1844, %1837 ], [ 0.000000e+00, %1799 ]
  %1849 = phi float [ %1845, %1837 ], [ 0.000000e+00, %1799 ]
  %1850 = phi float [ %1846, %1837 ], [ 0.000000e+00, %1799 ]
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %1852, 10240
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1899, label %1855

; <label>:1855                                    ; preds = %1847
  %1856 = add i32 %62, 480
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = add i32 %1858, 0
  %1860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1860, %dx.types.Handle %108, float %1312, float %1313, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 1
  %1863 = extractvalue %dx.types.ResRet.f32 %1861, 3
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 1048576
  %1867 = icmp ne i32 %1866, 0
  %1868 = and i32 %1865, 8192
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %1885, label %1870

; <label>:1870                                    ; preds = %1855
  %1871 = extractvalue %dx.types.ResRet.f32 %1861, 2
  %1872 = select i1 %1867, float %1871, float %1862
  %1873 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1874 = select i1 %1867, float %1873, float %1862
  %1875 = add i32 %62, 112
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = lshr i32 %1877, 16
  %1879 = and i32 %1878, 255
  %1880 = uitofp i32 %1879 to float
  %1881 = fmul fast float %1880, 0x3F80101020000000
  %1882 = fmul fast float %1881, %1874
  %1883 = fmul fast float %1881, %1862
  %1884 = fmul fast float %1881, %1872
  br label %1885

; <label>:1885                                    ; preds = %1870, %1855
  %1886 = phi float [ %1882, %1870 ], [ 0.000000e+00, %1855 ]
  %1887 = phi float [ %1883, %1870 ], [ 0.000000e+00, %1855 ]
  %1888 = phi float [ %1884, %1870 ], [ 0.000000e+00, %1855 ]
  %1889 = and i32 %1865, 2048
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %1899, label %1891

; <label>:1891                                    ; preds = %1885
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = shl i32 %1893, 4
  %1895 = and i32 %1894, 32752
  %1896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1895)  ; LegacyF16ToF32(value)
  %1897 = fmul fast float %1896, %1863
  %1898 = call float @dx.op.binary.f32(i32 35, float %1897, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1899

; <label>:1899                                    ; preds = %1891, %1885, %1847
  %1900 = phi float [ %1886, %1891 ], [ %1886, %1885 ], [ 0.000000e+00, %1847 ]
  %1901 = phi float [ %1887, %1891 ], [ %1887, %1885 ], [ 0.000000e+00, %1847 ]
  %1902 = phi float [ %1888, %1891 ], [ %1888, %1885 ], [ 0.000000e+00, %1847 ]
  %1903 = phi float [ %1898, %1891 ], [ 0x3F70101020000000, %1885 ], [ 0x3F70101020000000, %1847 ]
  %1904 = add i32 %62, 112
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = and i32 %1906, 255
  %1908 = uitofp i32 %1907 to float
  %1909 = lshr i32 %1906, 8
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1721, float %1722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1913 = fmul fast float %1911, %1912
  %1914 = fadd fast float %1913, %1908
  %1915 = fmul fast float %1914, 0x3F70101020000000
  %1916 = call float @dx.op.unary.f32(i32 7, float %1915)  ; Saturate(value)
  br i1 %1204, label %1917, label %1925

; <label>:1917                                    ; preds = %1899
  %1918 = fsub fast float 1.000000e+00, %1500
  %1919 = fmul fast float %1918, %1188
  %1920 = fmul fast float %1918, %1189
  %1921 = fmul fast float %1918, %1190
  %1922 = fmul fast float %1918, %1194
  %1923 = fmul fast float %1918, %1195
  %1924 = fmul fast float %1918, %1196
  br label %1925

; <label>:1925                                    ; preds = %1917, %1899
  %1926 = phi float [ %1919, %1917 ], [ %1188, %1899 ]
  %1927 = phi float [ %1920, %1917 ], [ %1189, %1899 ]
  %1928 = phi float [ %1921, %1917 ], [ %1190, %1899 ]
  %1929 = phi float [ %1922, %1917 ], [ %1194, %1899 ]
  %1930 = phi float [ %1923, %1917 ], [ %1195, %1899 ]
  %1931 = phi float [ %1924, %1917 ], [ %1196, %1899 ]
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = and i32 %1933, 3
  %1935 = icmp eq i32 %1934, 3
  br i1 %1935, label %2014, label %1936

; <label>:1936                                    ; preds = %1925
  %1937 = and i32 %1933, 16
  %1938 = icmp ne i32 %1937, 0
  %1939 = select i1 %1938, float %1500, float 0.000000e+00
  %1940 = icmp eq i32 %1934, 0
  br i1 %1940, label %1941, label %1969

; <label>:1941                                    ; preds = %1936
  %1942 = and i32 %1933, 64
  %1943 = icmp ne i32 %1942, 0
  %1944 = select i1 %1943, float %1500, float 0.000000e+00
  %1945 = fsub fast float %1720, %1926
  %1946 = fsub fast float %1721, %1927
  %1947 = fsub fast float %1722, %1928
  %1948 = fmul fast float %1939, %1945
  %1949 = fmul fast float %1939, %1946
  %1950 = fmul fast float %1939, %1947
  %1951 = fadd fast float %1948, %1926
  %1952 = fadd fast float %1949, %1927
  %1953 = fadd fast float %1950, %1928
  %1954 = fsub fast float %1706, %1197
  %1955 = fmul fast float %1939, %1954
  %1956 = fadd fast float %1955, %1197
  %1957 = fsub fast float %1848, %1929
  %1958 = fsub fast float %1849, %1930
  %1959 = fsub fast float %1850, %1931
  %1960 = fmul fast float %1944, %1957
  %1961 = fmul fast float %1944, %1958
  %1962 = fmul fast float %1944, %1959
  %1963 = fadd fast float %1960, %1929
  %1964 = fadd fast float %1961, %1930
  %1965 = fadd fast float %1962, %1931
  %1966 = fsub fast float %1916, %1202
  %1967 = fmul fast float %1939, %1966
  %1968 = fadd fast float %1967, %1202
  br label %2014

; <label>:1969                                    ; preds = %1936
  %1970 = icmp eq i32 %1934, 1
  br i1 %1970, label %1971, label %1984

; <label>:1971                                    ; preds = %1969
  %1972 = fadd fast float %1720, -1.000000e+00
  %1973 = fadd fast float %1721, -1.000000e+00
  %1974 = fadd fast float %1722, -1.000000e+00
  %1975 = fmul fast float %1939, %1972
  %1976 = fmul fast float %1939, %1973
  %1977 = fmul fast float %1939, %1974
  %1978 = fadd fast float %1975, 1.000000e+00
  %1979 = fadd fast float %1976, 1.000000e+00
  %1980 = fadd fast float %1977, 1.000000e+00
  %1981 = fmul fast float %1978, %1926
  %1982 = fmul fast float %1979, %1927
  %1983 = fmul fast float %1980, %1928
  br label %2014

; <label>:1984                                    ; preds = %1969
  %1985 = icmp eq i32 %1934, 2
  br i1 %1985, label %1986, label %2014

; <label>:1986                                    ; preds = %1984
  %1987 = call float @dx.op.unary.f32(i32 24, float %1720)  ; Sqrt(value)
  %1988 = call float @dx.op.unary.f32(i32 24, float %1721)  ; Sqrt(value)
  %1989 = call float @dx.op.unary.f32(i32 24, float %1722)  ; Sqrt(value)
  %1990 = fadd fast float %1987, -5.000000e-01
  %1991 = fadd fast float %1988, -5.000000e-01
  %1992 = fadd fast float %1989, -5.000000e-01
  %1993 = fmul fast float %1990, %1939
  %1994 = fmul fast float %1991, %1939
  %1995 = fmul fast float %1992, %1939
  %1996 = fadd fast float %1993, 5.000000e-01
  %1997 = fadd fast float %1994, 5.000000e-01
  %1998 = fadd fast float %1995, 5.000000e-01
  %1999 = fmul fast float %1996, 2.000000e+00
  %2000 = fsub fast float 1.000000e+00, %1999
  %2001 = fmul fast float %2000, %1926
  %2002 = fadd fast float %2001, %1999
  %2003 = fmul fast float %2002, %1926
  %2004 = fmul fast float %1997, 2.000000e+00
  %2005 = fsub fast float 1.000000e+00, %2004
  %2006 = fmul fast float %2005, %1927
  %2007 = fadd fast float %2006, %2004
  %2008 = fmul fast float %2007, %1927
  %2009 = fmul fast float %1998, 2.000000e+00
  %2010 = fsub fast float 1.000000e+00, %2009
  %2011 = fmul fast float %2010, %1928
  %2012 = fadd fast float %2011, %2009
  %2013 = fmul fast float %2012, %1928
  br label %2014

; <label>:2014                                    ; preds = %1986, %1984, %1971, %1941, %1925
  %2015 = phi float [ %1926, %1925 ], [ %2003, %1986 ], [ %1926, %1984 ], [ %1981, %1971 ], [ %1951, %1941 ]
  %2016 = phi float [ %1927, %1925 ], [ %2008, %1986 ], [ %1927, %1984 ], [ %1982, %1971 ], [ %1952, %1941 ]
  %2017 = phi float [ %1928, %1925 ], [ %2013, %1986 ], [ %1928, %1984 ], [ %1983, %1971 ], [ %1953, %1941 ]
  %2018 = phi float [ %1929, %1925 ], [ %1929, %1986 ], [ %1929, %1984 ], [ %1929, %1971 ], [ %1963, %1941 ]
  %2019 = phi float [ %1930, %1925 ], [ %1930, %1986 ], [ %1930, %1984 ], [ %1930, %1971 ], [ %1964, %1941 ]
  %2020 = phi float [ %1931, %1925 ], [ %1931, %1986 ], [ %1931, %1984 ], [ %1931, %1971 ], [ %1965, %1941 ]
  %2021 = phi float [ %1197, %1925 ], [ %1197, %1986 ], [ %1197, %1984 ], [ %1197, %1971 ], [ %1956, %1941 ]
  %2022 = phi float [ %1202, %1925 ], [ %1202, %1986 ], [ %1202, %1984 ], [ %1202, %1971 ], [ %1968, %1941 ]
  %2023 = and i32 %1933, 12
  %2024 = icmp eq i32 %2023, 12
  br i1 %2024, label %2131, label %2025

; <label>:2025                                    ; preds = %2014
  %2026 = and i32 %1933, 2097184
  %2027 = icmp eq i32 %2026, 2097184
  %2028 = select i1 %2027, float %1500, float 0.000000e+00
  %2029 = and i32 %1933, 4194336
  %2030 = icmp eq i32 %2029, 4194336
  %2031 = select i1 %2030, float %1500, float 0.000000e+00
  %2032 = and i32 %1933, 8388640
  %2033 = icmp eq i32 %2032, 8388640
  %2034 = select i1 %2033, float %1500, float 0.000000e+00
  %2035 = and i32 %1933, 2048
  %2036 = icmp ne i32 %2035, 0
  %2037 = select i1 %2036, float %1500, float 0.000000e+00
  %2038 = and i32 %1933, 8192
  %2039 = icmp ne i32 %2038, 0
  %2040 = select i1 %2039, float %1500, float 0.000000e+00
  %2041 = icmp eq i32 %2023, 0
  br i1 %2041, label %2042, label %2067

; <label>:2042                                    ; preds = %2025
  %2043 = fsub fast float %1801, %1186
  %2044 = fsub fast float %1802, %1187
  %2045 = fmul fast float %2028, %2043
  %2046 = fmul fast float %2028, %2044
  %2047 = fadd fast float %2045, %1186
  %2048 = fadd fast float %2046, %1187
  %2049 = fsub fast float %1803, %1200
  %2050 = fmul fast float %2031, %2049
  %2051 = fadd fast float %2050, %1200
  %2052 = fsub fast float %1800, %1199
  %2053 = fmul fast float %2034, %2052
  %2054 = fadd fast float %2053, %1199
  %2055 = fsub fast float %1903, %1201
  %2056 = fmul fast float %2037, %2055
  %2057 = fadd fast float %2056, %1201
  %2058 = fsub fast float %1900, %1191
  %2059 = fsub fast float %1901, %1192
  %2060 = fsub fast float %1902, %1193
  %2061 = fmul fast float %2040, %2058
  %2062 = fmul fast float %2040, %2059
  %2063 = fmul fast float %2040, %2060
  %2064 = fadd fast float %2061, %1191
  %2065 = fadd fast float %2062, %1192
  %2066 = fadd fast float %2063, %1193
  br label %2131

; <label>:2067                                    ; preds = %2025
  %2068 = icmp eq i32 %2023, 4
  br i1 %2068, label %2069, label %2109

; <label>:2069                                    ; preds = %2067
  %2070 = fmul fast float %2028, %1801
  %2071 = fmul fast float %2028, %1802
  %2072 = fadd fast float %2070, %1186
  %2073 = fadd fast float %2071, %1187
  %2074 = call float @dx.op.binary.f32(i32 36, float %1200, float %1803)  ; FMin(a,b)
  %2075 = fsub fast float %2074, %1200
  %2076 = fmul fast float %2075, %2031
  %2077 = fadd fast float %2076, %1200
  %2078 = fadd fast float %1800, %1199
  %2079 = fmul fast float %2078, 0x3FF337FAE0000000
  %2080 = fmul fast float %1199, %1199
  %2081 = fmul fast float %1800, %1800
  %2082 = fadd fast float %2081, %2080
  %2083 = fmul fast float %2082, 0x3FE5152B00000000
  %2084 = fmul fast float %1199, 0xBFCC1F85E0000000
  %2085 = fmul fast float %2084, %1800
  %2086 = fadd fast float %2085, 0xBFE1363700000000
  %2087 = fadd fast float %2086, %2079
  %2088 = fsub fast float %2087, %2083
  %2089 = fmul fast float %2078, 0x3FBA6F0D00000000
  %2090 = fmul fast float %2082, 0x3FD0432880000000
  %2091 = fmul fast float %1199, 0xBFEF110800000000
  %2092 = fmul fast float %2091, %1800
  %2093 = fadd fast float %2092, 1.000000e+00
  %2094 = fsub fast float %2093, %2089
  %2095 = fadd fast float %2094, %2090
  %2096 = fdiv fast float %2088, %2095
  %2097 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2098 = fsub fast float %2097, %1199
  %2099 = fmul fast float %2098, %2034
  %2100 = fadd fast float %2099, %1199
  %2101 = fmul fast float %2037, %1903
  %2102 = fadd fast float %2101, %1201
  %2103 = fmul fast float %2040, %1900
  %2104 = fmul fast float %2040, %1901
  %2105 = fmul fast float %2040, %1902
  %2106 = fadd fast float %2103, %1191
  %2107 = fadd fast float %2104, %1192
  %2108 = fadd fast float %2105, %1193
  br label %2131

; <label>:2109                                    ; preds = %2067
  %2110 = icmp eq i32 %2023, 8
  br i1 %2110, label %2111, label %2131

; <label>:2111                                    ; preds = %2109
  %2112 = fmul fast float %2028, %1801
  %2113 = fmul fast float %2028, %1802
  %2114 = fadd fast float %2112, %1186
  %2115 = fadd fast float %2113, %1187
  %2116 = call float @dx.op.binary.f32(i32 36, float %1200, float %1803)  ; FMin(a,b)
  %2117 = fsub fast float %2116, %1200
  %2118 = fmul fast float %2117, %2031
  %2119 = fadd fast float %2118, %1200
  %2120 = fsub fast float %1800, %1199
  %2121 = fmul fast float %2034, %2120
  %2122 = fadd fast float %2121, %1199
  %2123 = fmul fast float %2037, %1903
  %2124 = fadd fast float %2123, %1201
  %2125 = fmul fast float %2040, %1900
  %2126 = fmul fast float %2040, %1901
  %2127 = fmul fast float %2040, %1902
  %2128 = fadd fast float %2125, %1191
  %2129 = fadd fast float %2126, %1192
  %2130 = fadd fast float %2127, %1193
  br label %2131

; <label>:2131                                    ; preds = %2111, %2109, %2069, %2042, %2014, %1499, %1203, %1185
  %2132 = phi float [ %1186, %2014 ], [ %1186, %1499 ], [ %1186, %1185 ], [ %2114, %2111 ], [ %1186, %2109 ], [ %2072, %2069 ], [ %2047, %2042 ], [ %1186, %1203 ]
  %2133 = phi float [ %1187, %2014 ], [ %1187, %1499 ], [ %1187, %1185 ], [ %2115, %2111 ], [ %1187, %2109 ], [ %2073, %2069 ], [ %2048, %2042 ], [ %1187, %1203 ]
  %2134 = phi float [ %2015, %2014 ], [ %1188, %1499 ], [ %1188, %1185 ], [ %2015, %2111 ], [ %2015, %2109 ], [ %2015, %2069 ], [ %2015, %2042 ], [ %1188, %1203 ]
  %2135 = phi float [ %2016, %2014 ], [ %1189, %1499 ], [ %1189, %1185 ], [ %2016, %2111 ], [ %2016, %2109 ], [ %2016, %2069 ], [ %2016, %2042 ], [ %1189, %1203 ]
  %2136 = phi float [ %2017, %2014 ], [ %1190, %1499 ], [ %1190, %1185 ], [ %2017, %2111 ], [ %2017, %2109 ], [ %2017, %2069 ], [ %2017, %2042 ], [ %1190, %1203 ]
  %2137 = phi float [ %1191, %2014 ], [ %1191, %1499 ], [ %1191, %1185 ], [ %2128, %2111 ], [ %1191, %2109 ], [ %2106, %2069 ], [ %2064, %2042 ], [ %1191, %1203 ]
  %2138 = phi float [ %1192, %2014 ], [ %1192, %1499 ], [ %1192, %1185 ], [ %2129, %2111 ], [ %1192, %2109 ], [ %2107, %2069 ], [ %2065, %2042 ], [ %1192, %1203 ]
  %2139 = phi float [ %1193, %2014 ], [ %1193, %1499 ], [ %1193, %1185 ], [ %2130, %2111 ], [ %1193, %2109 ], [ %2108, %2069 ], [ %2066, %2042 ], [ %1193, %1203 ]
  %2140 = phi float [ %2018, %2014 ], [ %1194, %1499 ], [ %1194, %1185 ], [ %2018, %2111 ], [ %2018, %2109 ], [ %2018, %2069 ], [ %2018, %2042 ], [ %1194, %1203 ]
  %2141 = phi float [ %2019, %2014 ], [ %1195, %1499 ], [ %1195, %1185 ], [ %2019, %2111 ], [ %2019, %2109 ], [ %2019, %2069 ], [ %2019, %2042 ], [ %1195, %1203 ]
  %2142 = phi float [ %2020, %2014 ], [ %1196, %1499 ], [ %1196, %1185 ], [ %2020, %2111 ], [ %2020, %2109 ], [ %2020, %2069 ], [ %2020, %2042 ], [ %1196, %1203 ]
  %2143 = phi float [ %2021, %2014 ], [ %1197, %1499 ], [ %1197, %1185 ], [ %2021, %2111 ], [ %2021, %2109 ], [ %2021, %2069 ], [ %2021, %2042 ], [ %1197, %1203 ]
  %2144 = phi float [ %1199, %2014 ], [ %1199, %1499 ], [ %1199, %1185 ], [ %2122, %2111 ], [ %1199, %2109 ], [ %2100, %2069 ], [ %2054, %2042 ], [ %1199, %1203 ]
  %2145 = phi float [ %1200, %2014 ], [ %1200, %1499 ], [ %1200, %1185 ], [ %2119, %2111 ], [ %1200, %2109 ], [ %2077, %2069 ], [ %2051, %2042 ], [ %1200, %1203 ]
  %2146 = phi float [ %1201, %2014 ], [ %1201, %1499 ], [ %1201, %1185 ], [ %2124, %2111 ], [ %1201, %2109 ], [ %2102, %2069 ], [ %2057, %2042 ], [ %1201, %1203 ]
  %2147 = phi float [ %2022, %2014 ], [ %1202, %1499 ], [ %1202, %1185 ], [ %2022, %2111 ], [ %2022, %2109 ], [ %2022, %2069 ], [ %2022, %2042 ], [ %1202, %1203 ]
  br i1 %418, label %3076, label %2148

; <label>:2148                                    ; preds = %2131
  %2149 = icmp ult i32 %474, 3
  %2150 = add i32 %62, 56
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = add i32 %62, 60
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = or i32 %2155, %2152
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %3076, label %2158

; <label>:2158                                    ; preds = %2148
  %2159 = and i32 %2152, 262144
  %2160 = icmp ne i32 %2159, 0
  %2161 = select i1 %2160, float %65, float 1.000000e+00
  %2162 = select i1 %2160, float %66, float 0.000000e+00
  %2163 = select i1 %2160, float %67, float 0.000000e+00
  %2164 = select i1 %2160, float %68, float 1.000000e+00
  %2165 = select i1 %2160, float %69, float %90
  %2166 = select i1 %2160, float %70, float %91
  %2167 = add i32 %62, 316
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = lshr i32 %2169, 16
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = fmul fast float %2171, 0x3F50624DE0000000
  %2173 = add i32 %62, 120
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = lshr i32 %2175, 16
  %2177 = and i32 %2176, 255
  %2178 = lshr i32 %2175, 24
  %2179 = add i32 %62, 324
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 65535
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = lshr i32 %2181, 16
  %2185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2184)  ; LegacyF16ToF32(value)
  %2186 = add i32 %62, 64
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = lshr i32 %2188, 22
  %2190 = shl nuw nsw i32 %2189, 5
  %2191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2190)  ; LegacyF16ToF32(value)
  %2192 = shl i32 %2188, 4
  %2193 = and i32 %2192, 32752
  %2194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2193)  ; LegacyF16ToF32(value)
  %2195 = lshr i32 %2188, 7
  %2196 = and i32 %2195, 32752
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2200 = fmul fast float %2199, 1.000000e+03
  %2201 = fmul fast float %368, %2200
  %2202 = call float @dx.op.unary.f32(i32 22, float %2201)  ; Frc(value)
  %2203 = fadd fast float %2202, %358
  %2204 = fmul fast float %369, %2200
  %2205 = call float @dx.op.unary.f32(i32 22, float %2204)  ; Frc(value)
  %2206 = fadd fast float %2205, %360
  %2207 = fmul fast float %2172, %2200
  %2208 = call float @dx.op.unary.f32(i32 22, float %2207)  ; Frc(value)
  %2209 = fmul fast float %2208, 0x401921FB60000000
  %2210 = fadd fast float %2209, %2191
  %2211 = call float @dx.op.unary.f32(i32 13, float %2210)  ; Sin(value)
  %2212 = call float @dx.op.unary.f32(i32 12, float %2210)  ; Cos(value)
  %2213 = fsub fast float -0.000000e+00, %2211
  %2214 = fadd fast float %2165, -5.000000e-01
  %2215 = fadd fast float %2166, -5.000000e-01
  %2216 = fmul fast float %2183, %2214
  %2217 = fmul fast float %2185, %2215
  %2218 = fadd fast float %2216, 5.000000e-01
  %2219 = fadd fast float %2217, 5.000000e-01
  %2220 = fmul fast float %2194, %2218
  %2221 = fmul fast float %2197, %2219
  %2222 = fmul fast float %2212, %2220
  %2223 = call float @dx.op.tertiary.f32(i32 46, float %2213, float %2221, float %2222)  ; FMad(a,b,c)
  %2224 = fmul fast float %2211, %2220
  %2225 = call float @dx.op.tertiary.f32(i32 46, float %2212, float %2221, float %2224)  ; FMad(a,b,c)
  %2226 = fadd fast float %2203, %2223
  %2227 = fadd fast float %2206, %2225
  %2228 = icmp ugt i32 %2177, 1
  %2229 = icmp ugt i32 %2175, 33554431
  %2230 = or i1 %2229, %2228
  br i1 %2230, label %2231, label %2256

; <label>:2231                                    ; preds = %2158
  %2232 = add i32 %62, 260
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = lshr i32 %2234, 16
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = fmul fast float %2199, %2236
  %2238 = call float @dx.op.unary.f32(i32 22, float %2237)  ; Frc(value)
  %2239 = mul nuw nsw i32 %2177, %2178
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2238, %2240
  %2242 = call float @dx.op.unary.f32(i32 27, float %2241)  ; Round_ni(value)
  %2243 = fptoui float %2242 to i32
  %2244 = urem i32 %2243, %2177
  %2245 = udiv i32 %2243, %2178
  %2246 = call float @dx.op.unary.f32(i32 22, float %2226)  ; Frc(value)
  %2247 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2248 = uitofp i32 %2244 to float
  %2249 = uitofp i32 %2245 to float
  %2250 = fadd fast float %2246, %2248
  %2251 = fadd fast float %2247, %2249
  %2252 = uitofp i32 %2177 to float
  %2253 = uitofp i32 %2178 to float
  %2254 = fdiv fast float %2250, %2252
  %2255 = fdiv fast float %2251, %2253
  br label %2256

; <label>:2256                                    ; preds = %2231, %2158
  %2257 = phi float [ %2254, %2231 ], [ %2226, %2158 ]
  %2258 = phi float [ %2255, %2231 ], [ %2227, %2158 ]
  %2259 = and i32 %2152, 16777216
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2370, label %2261

; <label>:2261                                    ; preds = %2256
  %2262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2263 = extractvalue %dx.types.CBufRet.f32 %2262, 0
  %2264 = extractvalue %dx.types.CBufRet.f32 %2262, 1
  %2265 = extractvalue %dx.types.CBufRet.f32 %2262, 2
  %2266 = fadd fast float %2263, %170
  %2267 = fadd fast float %2264, %171
  %2268 = fadd fast float %2265, %172
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = call float @dx.op.unary.f32(i32 7, float %2270)  ; Saturate(value)
  %2272 = icmp eq i32 %63, 65535
  br i1 %2272, label %2367, label %2273

; <label>:2273                                    ; preds = %2261
  %2274 = lshr i32 %63, 1
  %2275 = shl i32 %2274, 2
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = and i32 %63, 1
  %2279 = icmp ne i32 %2278, 0
  %2280 = lshr i32 %2277, 16
  %2281 = and i32 %2277, 65535
  %2282 = select i1 %2279, i32 %2280, i32 %2281
  %2283 = icmp eq i32 %2282, 65535
  br i1 %2283, label %2363, label %2284

; <label>:2284                                    ; preds = %2273
  %2285 = mul nuw nsw i32 %2282, 40
  %2286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.ResRet.f32 %2286, 1
  %2289 = extractvalue %dx.types.ResRet.f32 %2286, 2
  %2290 = add nuw nsw i32 %2285, 12
  %2291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.f32 %2291, 0
  %2293 = extractvalue %dx.types.ResRet.f32 %2291, 1
  %2294 = extractvalue %dx.types.ResRet.f32 %2291, 2
  %2295 = add nuw nsw i32 %2285, 24
  %2296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = add nuw nsw i32 %2285, 36
  %2301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.f32 %2301, 0
  %2303 = fsub fast float %2266, %2287
  %2304 = fsub fast float %2267, %2288
  %2305 = fsub fast float %2268, %2289
  %2306 = fmul fast float %2302, %2303
  %2307 = fmul fast float %2302, %2304
  %2308 = fmul fast float %2302, %2305
  %2309 = call float @dx.op.unary.f32(i32 27, float %2306)  ; Round_ni(value)
  %2310 = call float @dx.op.unary.f32(i32 27, float %2307)  ; Round_ni(value)
  %2311 = call float @dx.op.unary.f32(i32 27, float %2308)  ; Round_ni(value)
  %2312 = fadd fast float %2309, 5.000000e-01
  %2313 = fadd fast float %2310, 5.000000e-01
  %2314 = fadd fast float %2311, 5.000000e-01
  %2315 = fmul fast float %2312, %2292
  %2316 = fmul fast float %2313, %2293
  %2317 = fmul fast float %2314, %2294
  %2318 = shl i32 %63, 2
  %2319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2320 = extractvalue %dx.types.ResRet.i32 %2319, 0
  %2321 = add i32 %2320, 0
  %2322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2321, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2323 = call float @dx.op.unary.f32(i32 22, float %2315)  ; Frc(value)
  %2324 = call float @dx.op.unary.f32(i32 22, float %2316)  ; Frc(value)
  %2325 = call float @dx.op.unary.f32(i32 22, float %2317)  ; Frc(value)
  %2326 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2322, %dx.types.Handle %55, float %2323, float %2324, float %2325, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.ResRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.ResRet.f32 %2326, 2
  %2330 = fmul fast float %2327, 1.023000e+03
  %2331 = fmul fast float %2328, 1.023000e+03
  %2332 = fmul fast float %2329, 1.023000e+03
  %2333 = fadd fast float %2330, 5.000000e-01
  %2334 = fadd fast float %2331, 5.000000e-01
  %2335 = fadd fast float %2332, 5.000000e-01
  %2336 = call float @dx.op.unary.f32(i32 27, float %2333)  ; Round_ni(value)
  %2337 = call float @dx.op.unary.f32(i32 27, float %2334)  ; Round_ni(value)
  %2338 = call float @dx.op.unary.f32(i32 27, float %2335)  ; Round_ni(value)
  %2339 = fsub fast float %2306, %2309
  %2340 = fsub fast float %2307, %2310
  %2341 = fsub fast float %2308, %2311
  %2342 = fmul fast float %2339, 7.500000e-01
  %2343 = fmul fast float %2340, 7.500000e-01
  %2344 = fmul fast float %2341, 7.500000e-01
  %2345 = fadd fast float %2309, 1.250000e-01
  %2346 = fadd fast float %2345, %2342
  %2347 = fadd fast float %2346, %2336
  %2348 = fadd fast float %2310, 1.250000e-01
  %2349 = fadd fast float %2348, %2343
  %2350 = fadd fast float %2349, %2337
  %2351 = fadd fast float %2311, 1.250000e-01
  %2352 = fadd fast float %2351, %2344
  %2353 = fadd fast float %2352, %2338
  %2354 = fmul fast float %2347, %2297
  %2355 = fmul fast float %2350, %2298
  %2356 = fmul fast float %2353, %2299
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2318, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = add i32 %2358, 0
  %2360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2361 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2360, %dx.types.Handle %53, float %2354, float %2355, float %2356, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  br label %2363

; <label>:2363                                    ; preds = %2284, %2273
  %2364 = phi float [ %2362, %2284 ], [ -1.000000e+00, %2273 ]
  %2365 = fadd fast float %2364, %2271
  %2366 = call float @dx.op.unary.f32(i32 7, float %2365)  ; Saturate(value)
  br label %2367

; <label>:2367                                    ; preds = %2363, %2261
  %2368 = phi float [ %2366, %2363 ], [ %2271, %2261 ]
  %2369 = fmul fast float %2368, %470
  br label %2370

; <label>:2370                                    ; preds = %2367, %2256
  %2371 = phi float [ %2369, %2367 ], [ %470, %2256 ]
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 256
  %2375 = icmp eq i32 %2374, 0
  br i1 %2375, label %2422, label %2376

; <label>:2376                                    ; preds = %2370
  %2377 = add i32 %62, 448
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = add i32 %2379, 0
  %2381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2380, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2382 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2381, %dx.types.Handle %108, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2383 = extractvalue %dx.types.ResRet.f32 %2382, 0
  %2384 = add i32 %62, 132
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = shl i32 %2386, 4
  %2388 = and i32 %2387, 32752
  %2389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2388)  ; LegacyF16ToF32(value)
  %2390 = lshr i32 %2386, 7
  %2391 = and i32 %2390, 32752
  %2392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2391)  ; LegacyF16ToF32(value)
  %2393 = fsub fast float 1.000000e+00, %2371
  %2394 = call float @dx.op.binary.f32(i32 35, float %2393, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2395 = bitcast float %2371 to i32
  %2396 = sitofp i32 %2395 to float
  %2397 = fadd fast float %2396, 0xC1CFBF8940000000
  %2398 = fmul fast float %2392, %2397
  %2399 = fadd fast float %2398, 0x41CFBF8940000000
  %2400 = fptosi float %2399 to i32
  %2401 = bitcast i32 %2400 to float
  %2402 = bitcast float %2394 to i32
  %2403 = sitofp i32 %2402 to float
  %2404 = fadd fast float %2403, 0xC1CFBF8940000000
  %2405 = fmul fast float %2404, %2392
  %2406 = fadd fast float %2405, 0x41CFBF8940000000
  %2407 = fptosi float %2406 to i32
  %2408 = bitcast i32 %2407 to float
  %2409 = fmul fast float %2401, %2389
  %2410 = fmul fast float %2408, %2389
  %2411 = fsub fast float %2394, %2409
  %2412 = fadd fast float %2410, %2394
  %2413 = call float @dx.op.unary.f32(i32 7, float %2411)  ; Saturate(value)
  %2414 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2415 = fsub fast float %2383, %2413
  %2416 = fsub fast float %2414, %2413
  %2417 = bitcast float %2416 to i32
  %2418 = sub nsw i32 2129859010, %2417
  %2419 = bitcast i32 %2418 to float
  %2420 = fmul fast float %2419, %2415
  %2421 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  br label %2422

; <label>:2422                                    ; preds = %2376, %2370
  %2423 = phi float [ %2421, %2376 ], [ %2371, %2370 ]
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 128
  %2427 = icmp eq i32 %2426, 0
  br i1 %2427, label %2444, label %2428

; <label>:2428                                    ; preds = %2422
  %2429 = add i32 %62, 432
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %2431, 0
  %2433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2433, %dx.types.Handle %108, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, 524288
  %2439 = icmp ne i32 %2438, 0
  %2440 = fcmp fast ogt float %2435, 0x3FE0101020000000
  %2441 = select i1 %2440, float 1.000000e+00, float 0.000000e+00
  %2442 = select i1 %2439, float %2441, float %2435
  %2443 = fmul fast float %2442, %2423
  br label %2444

; <label>:2444                                    ; preds = %2428, %2422
  %2445 = phi float [ %2443, %2428 ], [ %2423, %2422 ]
  %2446 = fcmp fast ult float %2445, 0x3F70101020000000
  br i1 %2446, label %3076, label %2447

; <label>:2447                                    ; preds = %2444
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = and i32 %2449, 16
  %2451 = icmp eq i32 %2450, 0
  br i1 %2451, label %2650, label %2452

; <label>:2452                                    ; preds = %2447
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2173, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = add i32 %62, 384
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = add i32 %2457, 0
  %2459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2459, %dx.types.Handle %107, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = extractvalue %dx.types.ResRet.f32 %2460, 3
  %2465 = and i32 %2454, 255
  %2466 = uitofp i32 %2465 to float
  %2467 = lshr i32 %2454, 8
  %2468 = and i32 %2467, 255
  %2469 = uitofp i32 %2468 to float
  %2470 = fmul fast float %2464, %2466
  %2471 = fadd fast float %2470, %2469
  %2472 = fmul fast float %2471, 0x3F70101000000000
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = and i32 %2474, 512
  %2476 = icmp eq i32 %2475, 0
  br i1 %2476, label %2485, label %2477

; <label>:2477                                    ; preds = %2452
  %2478 = add i32 %62, 468
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = add i32 %2480, 0
  %2482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2482, %dx.types.Handle %108, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  br label %2485

; <label>:2485                                    ; preds = %2477, %2452
  %2486 = phi float [ %2484, %2477 ], [ 1.000000e+00, %2452 ]
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 33554432
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2597, label %2491

; <label>:2491                                    ; preds = %2485
  %2492 = add i32 %62, 256
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 65535
  %2496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2495)  ; LegacyF16ToF32(value)
  %2497 = lshr i32 %2494, 16
  %2498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2497)  ; LegacyF16ToF32(value)
  %2499 = add i32 %62, 260
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 65535
  %2503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2502)  ; LegacyF16ToF32(value)
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = lshr i32 %2505, 24
  %2507 = uitofp i32 %2506 to float
  %2508 = fmul fast float %2507, 0x3F70101020000000
  %2509 = and i32 %2505, 255
  %2510 = uitofp i32 %2509 to float
  %2511 = fmul fast float %2510, 0x3F70101020000000
  %2512 = lshr i32 %2505, 8
  %2513 = and i32 %2512, 255
  %2514 = uitofp i32 %2513 to float
  %2515 = fmul fast float %2514, 0x3F70101020000000
  %2516 = lshr i32 %2505, 16
  %2517 = and i32 %2516, 255
  %2518 = uitofp i32 %2517 to float
  %2519 = fmul fast float %2518, 0x3F70101020000000
  %2520 = add i32 %62, 252
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = lshr i32 %2522, 24
  %2524 = uitofp i32 %2523 to float
  %2525 = fmul fast float %2524, 0x3F70101020000000
  %2526 = and i32 %2522, 255
  %2527 = uitofp i32 %2526 to float
  %2528 = fmul fast float %2527, 0x3F70101020000000
  %2529 = lshr i32 %2522, 8
  %2530 = and i32 %2529, 255
  %2531 = uitofp i32 %2530 to float
  %2532 = fmul fast float %2531, 0x3F70101020000000
  %2533 = lshr i32 %2522, 16
  %2534 = and i32 %2533, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = fmul fast float %2535, 0x3F70101020000000
  %2537 = bitcast float %2461 to i32
  %2538 = ashr i32 %2537, 1
  %2539 = sub nsw i32 1597463174, %2538
  %2540 = bitcast i32 %2539 to float
  %2541 = fmul fast float %2461, 5.000000e-01
  %2542 = fmul fast float %2540, %2540
  %2543 = fmul fast float %2542, %2541
  %2544 = fsub fast float 1.500000e+00, %2543
  %2545 = fmul fast float %2540, %2461
  %2546 = fmul fast float %2545, %2544
  %2547 = bitcast float %2462 to i32
  %2548 = ashr i32 %2547, 1
  %2549 = sub nsw i32 1597463174, %2548
  %2550 = bitcast i32 %2549 to float
  %2551 = fmul fast float %2462, 5.000000e-01
  %2552 = fmul fast float %2550, %2550
  %2553 = fmul fast float %2552, %2551
  %2554 = fsub fast float 1.500000e+00, %2553
  %2555 = fmul fast float %2550, %2462
  %2556 = fmul fast float %2555, %2554
  %2557 = bitcast float %2463 to i32
  %2558 = ashr i32 %2557, 1
  %2559 = sub nsw i32 1597463174, %2558
  %2560 = bitcast i32 %2559 to float
  %2561 = fmul fast float %2463, 5.000000e-01
  %2562 = fmul fast float %2560, %2560
  %2563 = fmul fast float %2562, %2561
  %2564 = fsub fast float 1.500000e+00, %2563
  %2565 = fmul fast float %2560, %2463
  %2566 = fmul fast float %2565, %2564
  %2567 = fsub fast float %2546, %2528
  %2568 = fsub fast float %2556, %2532
  %2569 = fsub fast float %2566, %2536
  %2570 = fmul fast float %2567, %2496
  %2571 = fmul fast float %2568, %2498
  %2572 = fmul fast float %2569, %2503
  %2573 = fadd fast float %2570, %2511
  %2574 = fadd fast float %2571, %2515
  %2575 = fadd fast float %2572, %2519
  %2576 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2577 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2578 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  %2579 = fmul fast float %2576, %2576
  %2580 = fmul fast float %2577, %2577
  %2581 = fmul fast float %2578, %2578
  %2582 = fsub fast float %2579, %2461
  %2583 = fsub fast float %2580, %2462
  %2584 = fsub fast float %2581, %2463
  %2585 = fmul fast float %2582, %2486
  %2586 = fmul fast float %2583, %2486
  %2587 = fmul fast float %2584, %2486
  %2588 = fadd fast float %2585, %2461
  %2589 = fadd fast float %2586, %2462
  %2590 = fadd fast float %2587, %2463
  %2591 = fadd fast float %2508, %2472
  %2592 = fsub fast float %2591, %2525
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2594 = fsub fast float %2593, %2472
  %2595 = fmul fast float %2594, %2486
  %2596 = fadd fast float %2595, %2472
  br label %2650

; <label>:2597                                    ; preds = %2485
  %2598 = and i32 %2488, 134217728
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %2634, label %2600

; <label>:2600                                    ; preds = %2597
  %2601 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2602 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %2603 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %2604 = fadd fast float %2601, -5.000000e-01
  %2605 = fadd fast float %2602, -5.000000e-01
  %2606 = fadd fast float %2603, -5.000000e-01
  %2607 = fmul fast float %2604, %2486
  %2608 = fmul fast float %2605, %2486
  %2609 = fmul fast float %2606, %2486
  %2610 = fadd fast float %2607, 5.000000e-01
  %2611 = fadd fast float %2608, 5.000000e-01
  %2612 = fadd fast float %2609, 5.000000e-01
  %2613 = call float @dx.op.unary.f32(i32 24, float %2461)  ; Sqrt(value)
  %2614 = call float @dx.op.unary.f32(i32 24, float %2462)  ; Sqrt(value)
  %2615 = call float @dx.op.unary.f32(i32 24, float %2463)  ; Sqrt(value)
  %2616 = fmul fast float %2610, 2.000000e+00
  %2617 = fsub fast float 1.000000e+00, %2616
  %2618 = fmul fast float %2617, %2613
  %2619 = fadd fast float %2618, %2616
  %2620 = fmul fast float %2619, %2613
  %2621 = fmul fast float %2611, 2.000000e+00
  %2622 = fsub fast float 1.000000e+00, %2621
  %2623 = fmul fast float %2622, %2614
  %2624 = fadd fast float %2623, %2621
  %2625 = fmul fast float %2624, %2614
  %2626 = fmul fast float %2612, 2.000000e+00
  %2627 = fsub fast float 1.000000e+00, %2626
  %2628 = fmul fast float %2627, %2615
  %2629 = fadd fast float %2628, %2626
  %2630 = fmul fast float %2629, %2615
  %2631 = fmul fast float %2620, %2620
  %2632 = fmul fast float %2625, %2625
  %2633 = fmul fast float %2630, %2630
  br label %2650

; <label>:2634                                    ; preds = %2597
  %2635 = fmul fast float %345, %345
  %2636 = fmul fast float %349, %349
  %2637 = fmul fast float %353, %353
  %2638 = fadd fast float %2635, -1.000000e+00
  %2639 = fadd fast float %2636, -1.000000e+00
  %2640 = fadd fast float %2637, -1.000000e+00
  %2641 = fmul fast float %2486, %2638
  %2642 = fmul fast float %2486, %2639
  %2643 = fmul fast float %2486, %2640
  %2644 = fadd fast float %2641, 1.000000e+00
  %2645 = fadd fast float %2642, 1.000000e+00
  %2646 = fadd fast float %2643, 1.000000e+00
  %2647 = fmul fast float %2644, %2461
  %2648 = fmul fast float %2645, %2462
  %2649 = fmul fast float %2646, %2463
  br label %2650

; <label>:2650                                    ; preds = %2634, %2600, %2491, %2447
  %2651 = phi float [ %2596, %2491 ], [ %2472, %2600 ], [ %2472, %2634 ], [ 0x3FA23C0BE0000000, %2447 ]
  %2652 = phi float [ %2588, %2491 ], [ %2631, %2600 ], [ %2647, %2634 ], [ 1.000000e+00, %2447 ]
  %2653 = phi float [ %2589, %2491 ], [ %2632, %2600 ], [ %2648, %2634 ], [ 1.000000e+00, %2447 ]
  %2654 = phi float [ %2590, %2491 ], [ %2633, %2600 ], [ %2649, %2634 ], [ 1.000000e+00, %2447 ]
  %2655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2656 = extractvalue %dx.types.CBufRet.i32 %2655, 1
  %2657 = and i32 %2656, 1
  %2658 = icmp ne i32 %2657, 0
  %2659 = add i32 %62, 356
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 32
  %2663 = icmp ne i32 %2662, 0
  %2664 = and i1 %2658, %2663
  %2665 = select i1 %2664, float 1.000000e+00, float %2652
  %2666 = select i1 %2664, float 0x3FD3333340000000, float %2653
  %2667 = select i1 %2664, float 0x3FD3333340000000, float %2654
  %2668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 32
  %2671 = icmp eq i32 %2670, 0
  br i1 %2671, label %2744, label %2672

; <label>:2672                                    ; preds = %2650
  %2673 = add i32 %62, 124
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = add i32 %62, 400
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = add i32 %2678, 0
  %2680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2680, %dx.types.Handle %107, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.ResRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.ResRet.f32 %2681, 2
  %2685 = extractvalue %dx.types.ResRet.f32 %2681, 3
  %2686 = and i32 %2675, 255
  %2687 = uitofp i32 %2686 to float
  %2688 = lshr i32 %2675, 8
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = lshr i32 %2675, 16
  %2692 = and i32 %2691, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101000000000
  %2695 = fmul fast float %2682, %2687
  %2696 = fadd fast float %2695, %2690
  %2697 = fmul fast float %2696, 0x3F70101000000000
  %2698 = fadd fast float %2683, -5.000000e-01
  %2699 = fadd fast float %2685, -5.000000e-01
  %2700 = fmul fast float %2698, %2694
  %2701 = fmul fast float %2699, %2694
  %2702 = fadd fast float %2700, 5.000000e-01
  %2703 = fadd fast float %2701, 5.000000e-01
  %2704 = fmul fast float %2702, 2.000000e+00
  %2705 = fadd fast float %2704, -1.000000e+00
  %2706 = fmul fast float %2703, 2.000000e+00
  %2707 = fadd fast float %2706, -1.000000e+00
  %2708 = fadd fast float %2705, %2707
  %2709 = fmul fast float %2708, 5.000000e-01
  %2710 = fsub fast float %2705, %2707
  %2711 = fmul fast float %2710, 5.000000e-01
  %2712 = call float @dx.op.unary.f32(i32 6, float %2709)  ; FAbs(value)
  %2713 = fsub fast float 1.000000e+00, %2712
  %2714 = call float @dx.op.unary.f32(i32 6, float %2711)  ; FAbs(value)
  %2715 = fsub fast float %2713, %2714
  %2716 = call float @dx.op.dot3.f32(i32 55, float %2709, float %2711, float %2715, float %2709, float %2711, float %2715)  ; Dot3(ax,ay,az,bx,by,bz)
  %2717 = call float @dx.op.unary.f32(i32 25, float %2716)  ; Rsqrt(value)
  %2718 = fmul fast float %2709, %2717
  %2719 = fmul fast float %2711, %2717
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = and i32 %2721, 67108864
  %2723 = icmp eq i32 %2722, 0
  br i1 %2723, label %2740, label %2724

; <label>:2724                                    ; preds = %2672
  %2725 = add i32 %62, 312
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = and i32 %2727, 65535
  %2729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2728)  ; LegacyF16ToF32(value)
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = and i32 %2731, 65535
  %2733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2732)  ; LegacyF16ToF32(value)
  %2734 = lshr i32 %2727, 16
  %2735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2734)  ; LegacyF16ToF32(value)
  %2736 = fsub fast float %2697, %2735
  %2737 = fmul fast float %2736, %2729
  %2738 = fadd fast float %2737, %2733
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  br label %2740

; <label>:2740                                    ; preds = %2724, %2672
  %2741 = phi float [ %2739, %2724 ], [ %2697, %2672 ]
  %2742 = call float @dx.op.dot2.f32(i32 54, float %2718, float %2719, float %2161, float %2162)  ; Dot2(ax,ay,bx,by)
  %2743 = call float @dx.op.dot2.f32(i32 54, float %2718, float %2719, float %2163, float %2164)  ; Dot2(ax,ay,bx,by)
  br label %2744

; <label>:2744                                    ; preds = %2740, %2650
  %2745 = phi float [ %2741, %2740 ], [ 0x3FD6666660000000, %2650 ]
  %2746 = phi float [ %2742, %2740 ], [ 0.000000e+00, %2650 ]
  %2747 = phi float [ %2743, %2740 ], [ 0.000000e+00, %2650 ]
  %2748 = phi float [ %2684, %2740 ], [ 1.000000e+00, %2650 ]
  %2749 = add i32 %62, 192
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = lshr i32 %2751, 22
  %2753 = shl nuw nsw i32 %2752, 5
  %2754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2753)  ; LegacyF16ToF32(value)
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 64
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2792, label %2759

; <label>:2759                                    ; preds = %2744
  %2760 = add i32 %62, 416
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = add i32 %2762, 0
  %2764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = and i32 %2766, 131072
  %2768 = icmp eq i32 %2767, 0
  %2769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2764, %dx.types.Handle %107, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2769, 2
  %2773 = fmul fast float %2770, %333
  %2774 = fmul fast float %2771, %336
  %2775 = fmul fast float %2772, %339
  br i1 %2768, label %2782, label %2776

; <label>:2776                                    ; preds = %2759
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = fmul fast float %2778, %2773
  %2780 = fmul fast float %2778, %2774
  %2781 = fmul fast float %2778, %2775
  br label %2782

; <label>:2782                                    ; preds = %2776, %2759
  %2783 = phi float [ %2779, %2776 ], [ %2773, %2759 ]
  %2784 = phi float [ %2780, %2776 ], [ %2774, %2759 ]
  %2785 = phi float [ %2781, %2776 ], [ %2775, %2759 ]
  %2786 = fmul fast float %2783, %2754
  %2787 = select i1 %232, float %2786, float %2783
  %2788 = call float @dx.op.dot3.f32(i32 55, float %2787, float %2784, float %2785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2789 = select i1 %232, float 0.000000e+00, float %2783
  %2790 = select i1 %232, float %2788, float %2784
  %2791 = select i1 %232, float 0.000000e+00, float %2785
  br label %2792

; <label>:2792                                    ; preds = %2782, %2744
  %2793 = phi float [ %2789, %2782 ], [ 0.000000e+00, %2744 ]
  %2794 = phi float [ %2790, %2782 ], [ 0.000000e+00, %2744 ]
  %2795 = phi float [ %2791, %2782 ], [ 0.000000e+00, %2744 ]
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = and i32 %2797, 10240
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2844, label %2800

; <label>:2800                                    ; preds = %2792
  %2801 = add i32 %62, 484
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = add i32 %2803, 0
  %2805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2806 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2805, %dx.types.Handle %108, float %2257, float %2258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2807 = extractvalue %dx.types.ResRet.f32 %2806, 1
  %2808 = extractvalue %dx.types.ResRet.f32 %2806, 3
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = and i32 %2810, 1048576
  %2812 = icmp ne i32 %2811, 0
  %2813 = and i32 %2810, 8192
  %2814 = icmp eq i32 %2813, 0
  br i1 %2814, label %2830, label %2815

; <label>:2815                                    ; preds = %2800
  %2816 = extractvalue %dx.types.ResRet.f32 %2806, 2
  %2817 = select i1 %2812, float %2816, float %2807
  %2818 = extractvalue %dx.types.ResRet.f32 %2806, 0
  %2819 = select i1 %2812, float %2818, float %2807
  %2820 = add i32 %62, 128
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = lshr i32 %2822, 16
  %2824 = and i32 %2823, 255
  %2825 = uitofp i32 %2824 to float
  %2826 = fmul fast float %2825, 0x3F80101020000000
  %2827 = fmul fast float %2826, %2819
  %2828 = fmul fast float %2826, %2807
  %2829 = fmul fast float %2826, %2817
  br label %2830

; <label>:2830                                    ; preds = %2815, %2800
  %2831 = phi float [ %2827, %2815 ], [ 0.000000e+00, %2800 ]
  %2832 = phi float [ %2828, %2815 ], [ 0.000000e+00, %2800 ]
  %2833 = phi float [ %2829, %2815 ], [ 0.000000e+00, %2800 ]
  %2834 = and i32 %2810, 2048
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2844, label %2836

; <label>:2836                                    ; preds = %2830
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = shl i32 %2838, 4
  %2840 = and i32 %2839, 32752
  %2841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2840)  ; LegacyF16ToF32(value)
  %2842 = fmul fast float %2841, %2808
  %2843 = call float @dx.op.binary.f32(i32 35, float %2842, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2844

; <label>:2844                                    ; preds = %2836, %2830, %2792
  %2845 = phi float [ %2831, %2836 ], [ %2831, %2830 ], [ 0.000000e+00, %2792 ]
  %2846 = phi float [ %2832, %2836 ], [ %2832, %2830 ], [ 0.000000e+00, %2792 ]
  %2847 = phi float [ %2833, %2836 ], [ %2833, %2830 ], [ 0.000000e+00, %2792 ]
  %2848 = phi float [ %2843, %2836 ], [ 0x3F70101020000000, %2830 ], [ 0x3F70101020000000, %2792 ]
  %2849 = add i32 %62, 128
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = and i32 %2851, 255
  %2853 = uitofp i32 %2852 to float
  %2854 = lshr i32 %2851, 8
  %2855 = and i32 %2854, 255
  %2856 = uitofp i32 %2855 to float
  %2857 = call float @dx.op.dot3.f32(i32 55, float %2665, float %2666, float %2667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2858 = fmul fast float %2856, %2857
  %2859 = fadd fast float %2858, %2853
  %2860 = fmul fast float %2859, 0x3F70101020000000
  %2861 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  br i1 %2149, label %2862, label %2870

; <label>:2862                                    ; preds = %2844
  %2863 = fsub fast float 1.000000e+00, %2445
  %2864 = fmul fast float %2863, %2134
  %2865 = fmul fast float %2863, %2135
  %2866 = fmul fast float %2863, %2136
  %2867 = fmul fast float %2863, %2140
  %2868 = fmul fast float %2863, %2141
  %2869 = fmul fast float %2863, %2142
  br label %2870

; <label>:2870                                    ; preds = %2862, %2844
  %2871 = phi float [ %2864, %2862 ], [ %2134, %2844 ]
  %2872 = phi float [ %2865, %2862 ], [ %2135, %2844 ]
  %2873 = phi float [ %2866, %2862 ], [ %2136, %2844 ]
  %2874 = phi float [ %2867, %2862 ], [ %2140, %2844 ]
  %2875 = phi float [ %2868, %2862 ], [ %2141, %2844 ]
  %2876 = phi float [ %2869, %2862 ], [ %2142, %2844 ]
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 3
  %2880 = icmp eq i32 %2879, 3
  br i1 %2880, label %2959, label %2881

; <label>:2881                                    ; preds = %2870
  %2882 = and i32 %2878, 16
  %2883 = icmp ne i32 %2882, 0
  %2884 = select i1 %2883, float %2445, float 0.000000e+00
  %2885 = icmp eq i32 %2879, 0
  br i1 %2885, label %2886, label %2914

; <label>:2886                                    ; preds = %2881
  %2887 = and i32 %2878, 64
  %2888 = icmp ne i32 %2887, 0
  %2889 = select i1 %2888, float %2445, float 0.000000e+00
  %2890 = fsub fast float %2665, %2871
  %2891 = fsub fast float %2666, %2872
  %2892 = fsub fast float %2667, %2873
  %2893 = fmul fast float %2884, %2890
  %2894 = fmul fast float %2884, %2891
  %2895 = fmul fast float %2884, %2892
  %2896 = fadd fast float %2893, %2871
  %2897 = fadd fast float %2894, %2872
  %2898 = fadd fast float %2895, %2873
  %2899 = fsub fast float %2651, %2143
  %2900 = fmul fast float %2884, %2899
  %2901 = fadd fast float %2900, %2143
  %2902 = fsub fast float %2793, %2874
  %2903 = fsub fast float %2794, %2875
  %2904 = fsub fast float %2795, %2876
  %2905 = fmul fast float %2889, %2902
  %2906 = fmul fast float %2889, %2903
  %2907 = fmul fast float %2889, %2904
  %2908 = fadd fast float %2905, %2874
  %2909 = fadd fast float %2906, %2875
  %2910 = fadd fast float %2907, %2876
  %2911 = fsub fast float %2861, %2147
  %2912 = fmul fast float %2884, %2911
  %2913 = fadd fast float %2912, %2147
  br label %2959

; <label>:2914                                    ; preds = %2881
  %2915 = icmp eq i32 %2879, 1
  br i1 %2915, label %2916, label %2929

; <label>:2916                                    ; preds = %2914
  %2917 = fadd fast float %2665, -1.000000e+00
  %2918 = fadd fast float %2666, -1.000000e+00
  %2919 = fadd fast float %2667, -1.000000e+00
  %2920 = fmul fast float %2884, %2917
  %2921 = fmul fast float %2884, %2918
  %2922 = fmul fast float %2884, %2919
  %2923 = fadd fast float %2920, 1.000000e+00
  %2924 = fadd fast float %2921, 1.000000e+00
  %2925 = fadd fast float %2922, 1.000000e+00
  %2926 = fmul fast float %2923, %2871
  %2927 = fmul fast float %2924, %2872
  %2928 = fmul fast float %2925, %2873
  br label %2959

; <label>:2929                                    ; preds = %2914
  %2930 = icmp eq i32 %2879, 2
  br i1 %2930, label %2931, label %2959

; <label>:2931                                    ; preds = %2929
  %2932 = call float @dx.op.unary.f32(i32 24, float %2665)  ; Sqrt(value)
  %2933 = call float @dx.op.unary.f32(i32 24, float %2666)  ; Sqrt(value)
  %2934 = call float @dx.op.unary.f32(i32 24, float %2667)  ; Sqrt(value)
  %2935 = fadd fast float %2932, -5.000000e-01
  %2936 = fadd fast float %2933, -5.000000e-01
  %2937 = fadd fast float %2934, -5.000000e-01
  %2938 = fmul fast float %2935, %2884
  %2939 = fmul fast float %2936, %2884
  %2940 = fmul fast float %2937, %2884
  %2941 = fadd fast float %2938, 5.000000e-01
  %2942 = fadd fast float %2939, 5.000000e-01
  %2943 = fadd fast float %2940, 5.000000e-01
  %2944 = fmul fast float %2941, 2.000000e+00
  %2945 = fsub fast float 1.000000e+00, %2944
  %2946 = fmul fast float %2945, %2871
  %2947 = fadd fast float %2946, %2944
  %2948 = fmul fast float %2947, %2871
  %2949 = fmul fast float %2942, 2.000000e+00
  %2950 = fsub fast float 1.000000e+00, %2949
  %2951 = fmul fast float %2950, %2872
  %2952 = fadd fast float %2951, %2949
  %2953 = fmul fast float %2952, %2872
  %2954 = fmul fast float %2943, 2.000000e+00
  %2955 = fsub fast float 1.000000e+00, %2954
  %2956 = fmul fast float %2955, %2873
  %2957 = fadd fast float %2956, %2954
  %2958 = fmul fast float %2957, %2873
  br label %2959

; <label>:2959                                    ; preds = %2931, %2929, %2916, %2886, %2870
  %2960 = phi float [ %2871, %2870 ], [ %2948, %2931 ], [ %2871, %2929 ], [ %2926, %2916 ], [ %2896, %2886 ]
  %2961 = phi float [ %2872, %2870 ], [ %2953, %2931 ], [ %2872, %2929 ], [ %2927, %2916 ], [ %2897, %2886 ]
  %2962 = phi float [ %2873, %2870 ], [ %2958, %2931 ], [ %2873, %2929 ], [ %2928, %2916 ], [ %2898, %2886 ]
  %2963 = phi float [ %2874, %2870 ], [ %2874, %2931 ], [ %2874, %2929 ], [ %2874, %2916 ], [ %2908, %2886 ]
  %2964 = phi float [ %2875, %2870 ], [ %2875, %2931 ], [ %2875, %2929 ], [ %2875, %2916 ], [ %2909, %2886 ]
  %2965 = phi float [ %2876, %2870 ], [ %2876, %2931 ], [ %2876, %2929 ], [ %2876, %2916 ], [ %2910, %2886 ]
  %2966 = phi float [ %2143, %2870 ], [ %2143, %2931 ], [ %2143, %2929 ], [ %2143, %2916 ], [ %2901, %2886 ]
  %2967 = phi float [ %2147, %2870 ], [ %2147, %2931 ], [ %2147, %2929 ], [ %2147, %2916 ], [ %2913, %2886 ]
  %2968 = and i32 %2878, 12
  %2969 = icmp eq i32 %2968, 12
  br i1 %2969, label %3076, label %2970

; <label>:2970                                    ; preds = %2959
  %2971 = and i32 %2878, 2097184
  %2972 = icmp eq i32 %2971, 2097184
  %2973 = select i1 %2972, float %2445, float 0.000000e+00
  %2974 = and i32 %2878, 4194336
  %2975 = icmp eq i32 %2974, 4194336
  %2976 = select i1 %2975, float %2445, float 0.000000e+00
  %2977 = and i32 %2878, 8388640
  %2978 = icmp eq i32 %2977, 8388640
  %2979 = select i1 %2978, float %2445, float 0.000000e+00
  %2980 = and i32 %2878, 2048
  %2981 = icmp ne i32 %2980, 0
  %2982 = select i1 %2981, float %2445, float 0.000000e+00
  %2983 = and i32 %2878, 8192
  %2984 = icmp ne i32 %2983, 0
  %2985 = select i1 %2984, float %2445, float 0.000000e+00
  %2986 = icmp eq i32 %2968, 0
  br i1 %2986, label %2987, label %3012

; <label>:2987                                    ; preds = %2970
  %2988 = fsub fast float %2746, %2132
  %2989 = fsub fast float %2747, %2133
  %2990 = fmul fast float %2973, %2988
  %2991 = fmul fast float %2973, %2989
  %2992 = fadd fast float %2990, %2132
  %2993 = fadd fast float %2991, %2133
  %2994 = fsub fast float %2748, %2145
  %2995 = fmul fast float %2976, %2994
  %2996 = fadd fast float %2995, %2145
  %2997 = fsub fast float %2745, %2144
  %2998 = fmul fast float %2979, %2997
  %2999 = fadd fast float %2998, %2144
  %3000 = fsub fast float %2848, %2146
  %3001 = fmul fast float %2982, %3000
  %3002 = fadd fast float %3001, %2146
  %3003 = fsub fast float %2845, %2137
  %3004 = fsub fast float %2846, %2138
  %3005 = fsub fast float %2847, %2139
  %3006 = fmul fast float %2985, %3003
  %3007 = fmul fast float %2985, %3004
  %3008 = fmul fast float %2985, %3005
  %3009 = fadd fast float %3006, %2137
  %3010 = fadd fast float %3007, %2138
  %3011 = fadd fast float %3008, %2139
  br label %3076

; <label>:3012                                    ; preds = %2970
  %3013 = icmp eq i32 %2968, 4
  br i1 %3013, label %3014, label %3054

; <label>:3014                                    ; preds = %3012
  %3015 = fmul fast float %2973, %2746
  %3016 = fmul fast float %2973, %2747
  %3017 = fadd fast float %3015, %2132
  %3018 = fadd fast float %3016, %2133
  %3019 = call float @dx.op.binary.f32(i32 36, float %2145, float %2748)  ; FMin(a,b)
  %3020 = fsub fast float %3019, %2145
  %3021 = fmul fast float %3020, %2976
  %3022 = fadd fast float %3021, %2145
  %3023 = fadd fast float %2745, %2144
  %3024 = fmul fast float %3023, 0x3FF337FAE0000000
  %3025 = fmul fast float %2144, %2144
  %3026 = fmul fast float %2745, %2745
  %3027 = fadd fast float %3026, %3025
  %3028 = fmul fast float %3027, 0x3FE5152B00000000
  %3029 = fmul fast float %2144, 0xBFCC1F85E0000000
  %3030 = fmul fast float %3029, %2745
  %3031 = fadd fast float %3030, 0xBFE1363700000000
  %3032 = fadd fast float %3031, %3024
  %3033 = fsub fast float %3032, %3028
  %3034 = fmul fast float %3023, 0x3FBA6F0D00000000
  %3035 = fmul fast float %3027, 0x3FD0432880000000
  %3036 = fmul fast float %2144, 0xBFEF110800000000
  %3037 = fmul fast float %3036, %2745
  %3038 = fadd fast float %3037, 1.000000e+00
  %3039 = fsub fast float %3038, %3034
  %3040 = fadd fast float %3039, %3035
  %3041 = fdiv fast float %3033, %3040
  %3042 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3043 = fsub fast float %3042, %2144
  %3044 = fmul fast float %3043, %2979
  %3045 = fadd fast float %3044, %2144
  %3046 = fmul fast float %2982, %2848
  %3047 = fadd fast float %3046, %2146
  %3048 = fmul fast float %2985, %2845
  %3049 = fmul fast float %2985, %2846
  %3050 = fmul fast float %2985, %2847
  %3051 = fadd fast float %3048, %2137
  %3052 = fadd fast float %3049, %2138
  %3053 = fadd fast float %3050, %2139
  br label %3076

; <label>:3054                                    ; preds = %3012
  %3055 = icmp eq i32 %2968, 8
  br i1 %3055, label %3056, label %3076

; <label>:3056                                    ; preds = %3054
  %3057 = fmul fast float %2973, %2746
  %3058 = fmul fast float %2973, %2747
  %3059 = fadd fast float %3057, %2132
  %3060 = fadd fast float %3058, %2133
  %3061 = call float @dx.op.binary.f32(i32 36, float %2145, float %2748)  ; FMin(a,b)
  %3062 = fsub fast float %3061, %2145
  %3063 = fmul fast float %3062, %2976
  %3064 = fadd fast float %3063, %2145
  %3065 = fsub fast float %2745, %2144
  %3066 = fmul fast float %2979, %3065
  %3067 = fadd fast float %3066, %2144
  %3068 = fmul fast float %2982, %2848
  %3069 = fadd fast float %3068, %2146
  %3070 = fmul fast float %2985, %2845
  %3071 = fmul fast float %2985, %2846
  %3072 = fmul fast float %2985, %2847
  %3073 = fadd fast float %3070, %2137
  %3074 = fadd fast float %3071, %2138
  %3075 = fadd fast float %3072, %2139
  br label %3076

; <label>:3076                                    ; preds = %3056, %3054, %3014, %2987, %2959, %2444, %2148, %2131
  %3077 = phi float [ %2132, %2959 ], [ %2132, %2444 ], [ %2132, %2131 ], [ %3059, %3056 ], [ %2132, %3054 ], [ %3017, %3014 ], [ %2992, %2987 ], [ %2132, %2148 ]
  %3078 = phi float [ %2133, %2959 ], [ %2133, %2444 ], [ %2133, %2131 ], [ %3060, %3056 ], [ %2133, %3054 ], [ %3018, %3014 ], [ %2993, %2987 ], [ %2133, %2148 ]
  %3079 = phi float [ %2960, %2959 ], [ %2134, %2444 ], [ %2134, %2131 ], [ %2960, %3056 ], [ %2960, %3054 ], [ %2960, %3014 ], [ %2960, %2987 ], [ %2134, %2148 ]
  %3080 = phi float [ %2961, %2959 ], [ %2135, %2444 ], [ %2135, %2131 ], [ %2961, %3056 ], [ %2961, %3054 ], [ %2961, %3014 ], [ %2961, %2987 ], [ %2135, %2148 ]
  %3081 = phi float [ %2962, %2959 ], [ %2136, %2444 ], [ %2136, %2131 ], [ %2962, %3056 ], [ %2962, %3054 ], [ %2962, %3014 ], [ %2962, %2987 ], [ %2136, %2148 ]
  %3082 = phi float [ %2137, %2959 ], [ %2137, %2444 ], [ %2137, %2131 ], [ %3073, %3056 ], [ %2137, %3054 ], [ %3051, %3014 ], [ %3009, %2987 ], [ %2137, %2148 ]
  %3083 = phi float [ %2138, %2959 ], [ %2138, %2444 ], [ %2138, %2131 ], [ %3074, %3056 ], [ %2138, %3054 ], [ %3052, %3014 ], [ %3010, %2987 ], [ %2138, %2148 ]
  %3084 = phi float [ %2139, %2959 ], [ %2139, %2444 ], [ %2139, %2131 ], [ %3075, %3056 ], [ %2139, %3054 ], [ %3053, %3014 ], [ %3011, %2987 ], [ %2139, %2148 ]
  %3085 = phi float [ %2963, %2959 ], [ %2140, %2444 ], [ %2140, %2131 ], [ %2963, %3056 ], [ %2963, %3054 ], [ %2963, %3014 ], [ %2963, %2987 ], [ %2140, %2148 ]
  %3086 = phi float [ %2964, %2959 ], [ %2141, %2444 ], [ %2141, %2131 ], [ %2964, %3056 ], [ %2964, %3054 ], [ %2964, %3014 ], [ %2964, %2987 ], [ %2141, %2148 ]
  %3087 = phi float [ %2965, %2959 ], [ %2142, %2444 ], [ %2142, %2131 ], [ %2965, %3056 ], [ %2965, %3054 ], [ %2965, %3014 ], [ %2965, %2987 ], [ %2142, %2148 ]
  %3088 = phi float [ %2966, %2959 ], [ %2143, %2444 ], [ %2143, %2131 ], [ %2966, %3056 ], [ %2966, %3054 ], [ %2966, %3014 ], [ %2966, %2987 ], [ %2143, %2148 ]
  %3089 = phi float [ %2144, %2959 ], [ %2144, %2444 ], [ %2144, %2131 ], [ %3067, %3056 ], [ %2144, %3054 ], [ %3045, %3014 ], [ %2999, %2987 ], [ %2144, %2148 ]
  %3090 = phi float [ %2145, %2959 ], [ %2145, %2444 ], [ %2145, %2131 ], [ %3064, %3056 ], [ %2145, %3054 ], [ %3022, %3014 ], [ %2996, %2987 ], [ %2145, %2148 ]
  %3091 = phi float [ %2146, %2959 ], [ %2146, %2444 ], [ %2146, %2131 ], [ %3069, %3056 ], [ %2146, %3054 ], [ %3047, %3014 ], [ %3002, %2987 ], [ %2146, %2148 ]
  %3092 = phi float [ %2967, %2959 ], [ %2147, %2444 ], [ %2147, %2131 ], [ %2967, %3056 ], [ %2967, %3054 ], [ %2967, %3014 ], [ %2967, %2987 ], [ %2147, %2148 ]
  br i1 %420, label %4021, label %3093

; <label>:3093                                    ; preds = %3076
  %3094 = icmp ult i32 %474, 4
  %3095 = add i32 %62, 72
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = add i32 %62, 76
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = or i32 %3100, %3097
  %3102 = icmp eq i32 %3101, 0
  br i1 %3102, label %4021, label %3103

; <label>:3103                                    ; preds = %3093
  %3104 = and i32 %3097, 262144
  %3105 = icmp ne i32 %3104, 0
  %3106 = select i1 %3105, float %65, float 1.000000e+00
  %3107 = select i1 %3105, float %66, float 0.000000e+00
  %3108 = select i1 %3105, float %67, float 0.000000e+00
  %3109 = select i1 %3105, float %68, float 1.000000e+00
  %3110 = select i1 %3105, float %69, float %90
  %3111 = select i1 %3105, float %70, float %91
  %3112 = add i32 %62, 332
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = lshr i32 %3114, 16
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = fmul fast float %3116, 0x3F50624DE0000000
  %3118 = add i32 %62, 136
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = lshr i32 %3120, 16
  %3122 = and i32 %3121, 255
  %3123 = lshr i32 %3120, 24
  %3124 = add i32 %62, 340
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 65535
  %3128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3127)  ; LegacyF16ToF32(value)
  %3129 = lshr i32 %3126, 16
  %3130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3129)  ; LegacyF16ToF32(value)
  %3131 = add i32 %62, 80
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = lshr i32 %3133, 22
  %3135 = shl nuw nsw i32 %3134, 5
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = shl i32 %3133, 4
  %3138 = and i32 %3137, 32752
  %3139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3138)  ; LegacyF16ToF32(value)
  %3140 = lshr i32 %3133, 7
  %3141 = and i32 %3140, 32752
  %3142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3141)  ; LegacyF16ToF32(value)
  %3143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3144 = extractvalue %dx.types.CBufRet.f32 %3143, 3
  %3145 = fmul fast float %3144, 1.000000e+03
  %3146 = fmul fast float %410, %3145
  %3147 = call float @dx.op.unary.f32(i32 22, float %3146)  ; Frc(value)
  %3148 = fadd fast float %3147, %400
  %3149 = fmul fast float %411, %3145
  %3150 = call float @dx.op.unary.f32(i32 22, float %3149)  ; Frc(value)
  %3151 = fadd fast float %3150, %402
  %3152 = fmul fast float %3117, %3145
  %3153 = call float @dx.op.unary.f32(i32 22, float %3152)  ; Frc(value)
  %3154 = fmul fast float %3153, 0x401921FB60000000
  %3155 = fadd fast float %3154, %3136
  %3156 = call float @dx.op.unary.f32(i32 13, float %3155)  ; Sin(value)
  %3157 = call float @dx.op.unary.f32(i32 12, float %3155)  ; Cos(value)
  %3158 = fsub fast float -0.000000e+00, %3156
  %3159 = fadd fast float %3110, -5.000000e-01
  %3160 = fadd fast float %3111, -5.000000e-01
  %3161 = fmul fast float %3128, %3159
  %3162 = fmul fast float %3130, %3160
  %3163 = fadd fast float %3161, 5.000000e-01
  %3164 = fadd fast float %3162, 5.000000e-01
  %3165 = fmul fast float %3139, %3163
  %3166 = fmul fast float %3142, %3164
  %3167 = fmul fast float %3157, %3165
  %3168 = call float @dx.op.tertiary.f32(i32 46, float %3158, float %3166, float %3167)  ; FMad(a,b,c)
  %3169 = fmul fast float %3156, %3165
  %3170 = call float @dx.op.tertiary.f32(i32 46, float %3157, float %3166, float %3169)  ; FMad(a,b,c)
  %3171 = fadd fast float %3148, %3168
  %3172 = fadd fast float %3151, %3170
  %3173 = icmp ugt i32 %3122, 1
  %3174 = icmp ugt i32 %3120, 33554431
  %3175 = or i1 %3174, %3173
  br i1 %3175, label %3176, label %3201

; <label>:3176                                    ; preds = %3103
  %3177 = add i32 %62, 276
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = lshr i32 %3179, 16
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = fmul fast float %3144, %3181
  %3183 = call float @dx.op.unary.f32(i32 22, float %3182)  ; Frc(value)
  %3184 = mul nuw nsw i32 %3122, %3123
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3183, %3185
  %3187 = call float @dx.op.unary.f32(i32 27, float %3186)  ; Round_ni(value)
  %3188 = fptoui float %3187 to i32
  %3189 = urem i32 %3188, %3122
  %3190 = udiv i32 %3188, %3123
  %3191 = call float @dx.op.unary.f32(i32 22, float %3171)  ; Frc(value)
  %3192 = call float @dx.op.unary.f32(i32 22, float %3172)  ; Frc(value)
  %3193 = uitofp i32 %3189 to float
  %3194 = uitofp i32 %3190 to float
  %3195 = fadd fast float %3191, %3193
  %3196 = fadd fast float %3192, %3194
  %3197 = uitofp i32 %3122 to float
  %3198 = uitofp i32 %3123 to float
  %3199 = fdiv fast float %3195, %3197
  %3200 = fdiv fast float %3196, %3198
  br label %3201

; <label>:3201                                    ; preds = %3176, %3103
  %3202 = phi float [ %3199, %3176 ], [ %3171, %3103 ]
  %3203 = phi float [ %3200, %3176 ], [ %3172, %3103 ]
  %3204 = and i32 %3097, 16777216
  %3205 = icmp eq i32 %3204, 0
  br i1 %3205, label %3315, label %3206

; <label>:3206                                    ; preds = %3201
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = extractvalue %dx.types.CBufRet.f32 %3207, 1
  %3210 = extractvalue %dx.types.CBufRet.f32 %3207, 2
  %3211 = fadd fast float %3208, %170
  %3212 = fadd fast float %3209, %171
  %3213 = fadd fast float %3210, %172
  %3214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3215 = extractvalue %dx.types.CBufRet.f32 %3214, 0
  %3216 = call float @dx.op.unary.f32(i32 7, float %3215)  ; Saturate(value)
  %3217 = icmp eq i32 %63, 65535
  br i1 %3217, label %3312, label %3218

; <label>:3218                                    ; preds = %3206
  %3219 = lshr i32 %63, 1
  %3220 = shl i32 %3219, 2
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = and i32 %63, 1
  %3224 = icmp ne i32 %3223, 0
  %3225 = lshr i32 %3222, 16
  %3226 = and i32 %3222, 65535
  %3227 = select i1 %3224, i32 %3225, i32 %3226
  %3228 = icmp eq i32 %3227, 65535
  br i1 %3228, label %3308, label %3229

; <label>:3229                                    ; preds = %3218
  %3230 = mul nuw nsw i32 %3227, 40
  %3231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.ResRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.ResRet.f32 %3231, 2
  %3235 = add nuw nsw i32 %3230, 12
  %3236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3240 = add nuw nsw i32 %3230, 24
  %3241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.f32 %3241, 0
  %3243 = extractvalue %dx.types.ResRet.f32 %3241, 1
  %3244 = extractvalue %dx.types.ResRet.f32 %3241, 2
  %3245 = add nuw nsw i32 %3230, 36
  %3246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.f32 %3246, 0
  %3248 = fsub fast float %3211, %3232
  %3249 = fsub fast float %3212, %3233
  %3250 = fsub fast float %3213, %3234
  %3251 = fmul fast float %3247, %3248
  %3252 = fmul fast float %3247, %3249
  %3253 = fmul fast float %3247, %3250
  %3254 = call float @dx.op.unary.f32(i32 27, float %3251)  ; Round_ni(value)
  %3255 = call float @dx.op.unary.f32(i32 27, float %3252)  ; Round_ni(value)
  %3256 = call float @dx.op.unary.f32(i32 27, float %3253)  ; Round_ni(value)
  %3257 = fadd fast float %3254, 5.000000e-01
  %3258 = fadd fast float %3255, 5.000000e-01
  %3259 = fadd fast float %3256, 5.000000e-01
  %3260 = fmul fast float %3257, %3237
  %3261 = fmul fast float %3258, %3238
  %3262 = fmul fast float %3259, %3239
  %3263 = shl i32 %63, 2
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = add i32 %3265, 0
  %3267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3268 = call float @dx.op.unary.f32(i32 22, float %3260)  ; Frc(value)
  %3269 = call float @dx.op.unary.f32(i32 22, float %3261)  ; Frc(value)
  %3270 = call float @dx.op.unary.f32(i32 22, float %3262)  ; Frc(value)
  %3271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3267, %dx.types.Handle %55, float %3268, float %3269, float %3270, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3272 = extractvalue %dx.types.ResRet.f32 %3271, 0
  %3273 = extractvalue %dx.types.ResRet.f32 %3271, 1
  %3274 = extractvalue %dx.types.ResRet.f32 %3271, 2
  %3275 = fmul fast float %3272, 1.023000e+03
  %3276 = fmul fast float %3273, 1.023000e+03
  %3277 = fmul fast float %3274, 1.023000e+03
  %3278 = fadd fast float %3275, 5.000000e-01
  %3279 = fadd fast float %3276, 5.000000e-01
  %3280 = fadd fast float %3277, 5.000000e-01
  %3281 = call float @dx.op.unary.f32(i32 27, float %3278)  ; Round_ni(value)
  %3282 = call float @dx.op.unary.f32(i32 27, float %3279)  ; Round_ni(value)
  %3283 = call float @dx.op.unary.f32(i32 27, float %3280)  ; Round_ni(value)
  %3284 = fsub fast float %3251, %3254
  %3285 = fsub fast float %3252, %3255
  %3286 = fsub fast float %3253, %3256
  %3287 = fmul fast float %3284, 7.500000e-01
  %3288 = fmul fast float %3285, 7.500000e-01
  %3289 = fmul fast float %3286, 7.500000e-01
  %3290 = fadd fast float %3254, 1.250000e-01
  %3291 = fadd fast float %3290, %3287
  %3292 = fadd fast float %3291, %3281
  %3293 = fadd fast float %3255, 1.250000e-01
  %3294 = fadd fast float %3293, %3288
  %3295 = fadd fast float %3294, %3282
  %3296 = fadd fast float %3256, 1.250000e-01
  %3297 = fadd fast float %3296, %3289
  %3298 = fadd fast float %3297, %3283
  %3299 = fmul fast float %3292, %3242
  %3300 = fmul fast float %3295, %3243
  %3301 = fmul fast float %3298, %3244
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = add i32 %3303, 0
  %3305 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3304, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3305, %dx.types.Handle %53, float %3299, float %3300, float %3301, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  br label %3308

; <label>:3308                                    ; preds = %3229, %3218
  %3309 = phi float [ %3307, %3229 ], [ -1.000000e+00, %3218 ]
  %3310 = fadd fast float %3309, %3216
  %3311 = call float @dx.op.unary.f32(i32 7, float %3310)  ; Saturate(value)
  br label %3312

; <label>:3312                                    ; preds = %3308, %3206
  %3313 = phi float [ %3311, %3308 ], [ %3216, %3206 ]
  %3314 = fmul fast float %3313, %469
  br label %3315

; <label>:3315                                    ; preds = %3312, %3201
  %3316 = phi float [ %3314, %3312 ], [ %469, %3201 ]
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 256
  %3320 = icmp eq i32 %3319, 0
  br i1 %3320, label %3367, label %3321

; <label>:3321                                    ; preds = %3315
  %3322 = add i32 %62, 452
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = add i32 %3324, 0
  %3326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3325, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3327 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3326, %dx.types.Handle %108, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3328 = extractvalue %dx.types.ResRet.f32 %3327, 0
  %3329 = add i32 %62, 148
  %3330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.i32 %3330, 0
  %3332 = shl i32 %3331, 4
  %3333 = and i32 %3332, 32752
  %3334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3333)  ; LegacyF16ToF32(value)
  %3335 = lshr i32 %3331, 7
  %3336 = and i32 %3335, 32752
  %3337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3336)  ; LegacyF16ToF32(value)
  %3338 = fsub fast float 1.000000e+00, %3316
  %3339 = call float @dx.op.binary.f32(i32 35, float %3338, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3340 = bitcast float %3316 to i32
  %3341 = sitofp i32 %3340 to float
  %3342 = fadd fast float %3341, 0xC1CFBF8940000000
  %3343 = fmul fast float %3337, %3342
  %3344 = fadd fast float %3343, 0x41CFBF8940000000
  %3345 = fptosi float %3344 to i32
  %3346 = bitcast i32 %3345 to float
  %3347 = bitcast float %3339 to i32
  %3348 = sitofp i32 %3347 to float
  %3349 = fadd fast float %3348, 0xC1CFBF8940000000
  %3350 = fmul fast float %3349, %3337
  %3351 = fadd fast float %3350, 0x41CFBF8940000000
  %3352 = fptosi float %3351 to i32
  %3353 = bitcast i32 %3352 to float
  %3354 = fmul fast float %3346, %3334
  %3355 = fmul fast float %3353, %3334
  %3356 = fsub fast float %3339, %3354
  %3357 = fadd fast float %3355, %3339
  %3358 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3359 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3360 = fsub fast float %3328, %3358
  %3361 = fsub fast float %3359, %3358
  %3362 = bitcast float %3361 to i32
  %3363 = sub nsw i32 2129859010, %3362
  %3364 = bitcast i32 %3363 to float
  %3365 = fmul fast float %3364, %3360
  %3366 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  br label %3367

; <label>:3367                                    ; preds = %3321, %3315
  %3368 = phi float [ %3366, %3321 ], [ %3316, %3315 ]
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = and i32 %3370, 128
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %3389, label %3373

; <label>:3373                                    ; preds = %3367
  %3374 = add i32 %62, 436
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3374, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = add i32 %3376, 0
  %3378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3378, %dx.types.Handle %108, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3380 = extractvalue %dx.types.ResRet.f32 %3379, 0
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = and i32 %3382, 524288
  %3384 = icmp ne i32 %3383, 0
  %3385 = fcmp fast ogt float %3380, 0x3FE0101020000000
  %3386 = select i1 %3385, float 1.000000e+00, float 0.000000e+00
  %3387 = select i1 %3384, float %3386, float %3380
  %3388 = fmul fast float %3387, %3368
  br label %3389

; <label>:3389                                    ; preds = %3373, %3367
  %3390 = phi float [ %3388, %3373 ], [ %3368, %3367 ]
  %3391 = fcmp fast ult float %3390, 0x3F70101020000000
  br i1 %3391, label %4021, label %3392

; <label>:3392                                    ; preds = %3389
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = and i32 %3394, 16
  %3396 = icmp eq i32 %3395, 0
  br i1 %3396, label %3595, label %3397

; <label>:3397                                    ; preds = %3392
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = add i32 %62, 388
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = add i32 %3402, 0
  %3404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3404, %dx.types.Handle %107, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3406 = extractvalue %dx.types.ResRet.f32 %3405, 0
  %3407 = extractvalue %dx.types.ResRet.f32 %3405, 1
  %3408 = extractvalue %dx.types.ResRet.f32 %3405, 2
  %3409 = extractvalue %dx.types.ResRet.f32 %3405, 3
  %3410 = and i32 %3399, 255
  %3411 = uitofp i32 %3410 to float
  %3412 = lshr i32 %3399, 8
  %3413 = and i32 %3412, 255
  %3414 = uitofp i32 %3413 to float
  %3415 = fmul fast float %3409, %3411
  %3416 = fadd fast float %3415, %3414
  %3417 = fmul fast float %3416, 0x3F70101000000000
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 512
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3430, label %3422

; <label>:3422                                    ; preds = %3397
  %3423 = add i32 %62, 472
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = add i32 %3425, 0
  %3427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3428 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3427, %dx.types.Handle %108, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3429 = extractvalue %dx.types.ResRet.f32 %3428, 0
  br label %3430

; <label>:3430                                    ; preds = %3422, %3397
  %3431 = phi float [ %3429, %3422 ], [ 1.000000e+00, %3397 ]
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 33554432
  %3435 = icmp eq i32 %3434, 0
  br i1 %3435, label %3542, label %3436

; <label>:3436                                    ; preds = %3430
  %3437 = add i32 %62, 272
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 65535
  %3441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3440)  ; LegacyF16ToF32(value)
  %3442 = lshr i32 %3439, 16
  %3443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3442)  ; LegacyF16ToF32(value)
  %3444 = add i32 %62, 276
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = and i32 %3446, 65535
  %3448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3447)  ; LegacyF16ToF32(value)
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = lshr i32 %3450, 24
  %3452 = uitofp i32 %3451 to float
  %3453 = fmul fast float %3452, 0x3F70101020000000
  %3454 = and i32 %3450, 255
  %3455 = uitofp i32 %3454 to float
  %3456 = fmul fast float %3455, 0x3F70101020000000
  %3457 = lshr i32 %3450, 8
  %3458 = and i32 %3457, 255
  %3459 = uitofp i32 %3458 to float
  %3460 = fmul fast float %3459, 0x3F70101020000000
  %3461 = lshr i32 %3450, 16
  %3462 = and i32 %3461, 255
  %3463 = uitofp i32 %3462 to float
  %3464 = fmul fast float %3463, 0x3F70101020000000
  %3465 = add i32 %62, 268
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = lshr i32 %3467, 24
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101020000000
  %3471 = and i32 %3467, 255
  %3472 = uitofp i32 %3471 to float
  %3473 = fmul fast float %3472, 0x3F70101020000000
  %3474 = lshr i32 %3467, 8
  %3475 = and i32 %3474, 255
  %3476 = uitofp i32 %3475 to float
  %3477 = fmul fast float %3476, 0x3F70101020000000
  %3478 = lshr i32 %3467, 16
  %3479 = and i32 %3478, 255
  %3480 = uitofp i32 %3479 to float
  %3481 = fmul fast float %3480, 0x3F70101020000000
  %3482 = bitcast float %3406 to i32
  %3483 = ashr i32 %3482, 1
  %3484 = sub nsw i32 1597463174, %3483
  %3485 = bitcast i32 %3484 to float
  %3486 = fmul fast float %3406, 5.000000e-01
  %3487 = fmul fast float %3485, %3485
  %3488 = fmul fast float %3487, %3486
  %3489 = fsub fast float 1.500000e+00, %3488
  %3490 = fmul fast float %3485, %3406
  %3491 = fmul fast float %3490, %3489
  %3492 = bitcast float %3407 to i32
  %3493 = ashr i32 %3492, 1
  %3494 = sub nsw i32 1597463174, %3493
  %3495 = bitcast i32 %3494 to float
  %3496 = fmul fast float %3407, 5.000000e-01
  %3497 = fmul fast float %3495, %3495
  %3498 = fmul fast float %3497, %3496
  %3499 = fsub fast float 1.500000e+00, %3498
  %3500 = fmul fast float %3495, %3407
  %3501 = fmul fast float %3500, %3499
  %3502 = bitcast float %3408 to i32
  %3503 = ashr i32 %3502, 1
  %3504 = sub nsw i32 1597463174, %3503
  %3505 = bitcast i32 %3504 to float
  %3506 = fmul fast float %3408, 5.000000e-01
  %3507 = fmul fast float %3505, %3505
  %3508 = fmul fast float %3507, %3506
  %3509 = fsub fast float 1.500000e+00, %3508
  %3510 = fmul fast float %3505, %3408
  %3511 = fmul fast float %3510, %3509
  %3512 = fsub fast float %3491, %3473
  %3513 = fsub fast float %3501, %3477
  %3514 = fsub fast float %3511, %3481
  %3515 = fmul fast float %3512, %3441
  %3516 = fmul fast float %3513, %3443
  %3517 = fmul fast float %3514, %3448
  %3518 = fadd fast float %3515, %3456
  %3519 = fadd fast float %3516, %3460
  %3520 = fadd fast float %3517, %3464
  %3521 = call float @dx.op.unary.f32(i32 7, float %3518)  ; Saturate(value)
  %3522 = call float @dx.op.unary.f32(i32 7, float %3519)  ; Saturate(value)
  %3523 = call float @dx.op.unary.f32(i32 7, float %3520)  ; Saturate(value)
  %3524 = fmul fast float %3521, %3521
  %3525 = fmul fast float %3522, %3522
  %3526 = fmul fast float %3523, %3523
  %3527 = fsub fast float %3524, %3406
  %3528 = fsub fast float %3525, %3407
  %3529 = fsub fast float %3526, %3408
  %3530 = fmul fast float %3527, %3431
  %3531 = fmul fast float %3528, %3431
  %3532 = fmul fast float %3529, %3431
  %3533 = fadd fast float %3530, %3406
  %3534 = fadd fast float %3531, %3407
  %3535 = fadd fast float %3532, %3408
  %3536 = fadd fast float %3453, %3417
  %3537 = fsub fast float %3536, %3470
  %3538 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  %3539 = fsub fast float %3538, %3417
  %3540 = fmul fast float %3539, %3431
  %3541 = fadd fast float %3540, %3417
  br label %3595

; <label>:3542                                    ; preds = %3430
  %3543 = and i32 %3433, 134217728
  %3544 = icmp eq i32 %3543, 0
  br i1 %3544, label %3579, label %3545

; <label>:3545                                    ; preds = %3542
  %3546 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3547 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %3548 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %3549 = fadd fast float %3546, -5.000000e-01
  %3550 = fadd fast float %3547, -5.000000e-01
  %3551 = fadd fast float %3548, -5.000000e-01
  %3552 = fmul fast float %3549, %3431
  %3553 = fmul fast float %3550, %3431
  %3554 = fmul fast float %3551, %3431
  %3555 = fadd fast float %3552, 5.000000e-01
  %3556 = fadd fast float %3553, 5.000000e-01
  %3557 = fadd fast float %3554, 5.000000e-01
  %3558 = call float @dx.op.unary.f32(i32 24, float %3406)  ; Sqrt(value)
  %3559 = call float @dx.op.unary.f32(i32 24, float %3407)  ; Sqrt(value)
  %3560 = call float @dx.op.unary.f32(i32 24, float %3408)  ; Sqrt(value)
  %3561 = fmul fast float %3555, 2.000000e+00
  %3562 = fsub fast float 1.000000e+00, %3561
  %3563 = fmul fast float %3562, %3558
  %3564 = fadd fast float %3563, %3561
  %3565 = fmul fast float %3564, %3558
  %3566 = fmul fast float %3556, 2.000000e+00
  %3567 = fsub fast float 1.000000e+00, %3566
  %3568 = fmul fast float %3567, %3559
  %3569 = fadd fast float %3568, %3566
  %3570 = fmul fast float %3569, %3559
  %3571 = fmul fast float %3557, 2.000000e+00
  %3572 = fsub fast float 1.000000e+00, %3571
  %3573 = fmul fast float %3572, %3560
  %3574 = fadd fast float %3573, %3571
  %3575 = fmul fast float %3574, %3560
  %3576 = fmul fast float %3565, %3565
  %3577 = fmul fast float %3570, %3570
  %3578 = fmul fast float %3575, %3575
  br label %3595

; <label>:3579                                    ; preds = %3542
  %3580 = fmul fast float %387, %387
  %3581 = fmul fast float %391, %391
  %3582 = fmul fast float %395, %395
  %3583 = fadd fast float %3580, -1.000000e+00
  %3584 = fadd fast float %3581, -1.000000e+00
  %3585 = fadd fast float %3582, -1.000000e+00
  %3586 = fmul fast float %3431, %3583
  %3587 = fmul fast float %3431, %3584
  %3588 = fmul fast float %3431, %3585
  %3589 = fadd fast float %3586, 1.000000e+00
  %3590 = fadd fast float %3587, 1.000000e+00
  %3591 = fadd fast float %3588, 1.000000e+00
  %3592 = fmul fast float %3589, %3406
  %3593 = fmul fast float %3590, %3407
  %3594 = fmul fast float %3591, %3408
  br label %3595

; <label>:3595                                    ; preds = %3579, %3545, %3436, %3392
  %3596 = phi float [ %3541, %3436 ], [ %3417, %3545 ], [ %3417, %3579 ], [ 0x3FA23C0BE0000000, %3392 ]
  %3597 = phi float [ %3533, %3436 ], [ %3576, %3545 ], [ %3592, %3579 ], [ 1.000000e+00, %3392 ]
  %3598 = phi float [ %3534, %3436 ], [ %3577, %3545 ], [ %3593, %3579 ], [ 1.000000e+00, %3392 ]
  %3599 = phi float [ %3535, %3436 ], [ %3578, %3545 ], [ %3594, %3579 ], [ 1.000000e+00, %3392 ]
  %3600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.i32 %3600, 1
  %3602 = and i32 %3601, 1
  %3603 = icmp ne i32 %3602, 0
  %3604 = add i32 %62, 356
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = and i32 %3606, 32
  %3608 = icmp ne i32 %3607, 0
  %3609 = and i1 %3603, %3608
  %3610 = select i1 %3609, float 1.000000e+00, float %3597
  %3611 = select i1 %3609, float 0x3FD3333340000000, float %3598
  %3612 = select i1 %3609, float 0x3FD3333340000000, float %3599
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = and i32 %3614, 32
  %3616 = icmp eq i32 %3615, 0
  br i1 %3616, label %3689, label %3617

; <label>:3617                                    ; preds = %3595
  %3618 = add i32 %62, 140
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = add i32 %62, 404
  %3622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.i32 %3622, 0
  %3624 = add i32 %3623, 0
  %3625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3625, %dx.types.Handle %107, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.ResRet.f32 %3626, 1
  %3629 = extractvalue %dx.types.ResRet.f32 %3626, 2
  %3630 = extractvalue %dx.types.ResRet.f32 %3626, 3
  %3631 = and i32 %3620, 255
  %3632 = uitofp i32 %3631 to float
  %3633 = lshr i32 %3620, 8
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = lshr i32 %3620, 16
  %3637 = and i32 %3636, 255
  %3638 = uitofp i32 %3637 to float
  %3639 = fmul fast float %3638, 0x3F70101000000000
  %3640 = fmul fast float %3627, %3632
  %3641 = fadd fast float %3640, %3635
  %3642 = fmul fast float %3641, 0x3F70101000000000
  %3643 = fadd fast float %3628, -5.000000e-01
  %3644 = fadd fast float %3630, -5.000000e-01
  %3645 = fmul fast float %3643, %3639
  %3646 = fmul fast float %3644, %3639
  %3647 = fadd fast float %3645, 5.000000e-01
  %3648 = fadd fast float %3646, 5.000000e-01
  %3649 = fmul fast float %3647, 2.000000e+00
  %3650 = fadd fast float %3649, -1.000000e+00
  %3651 = fmul fast float %3648, 2.000000e+00
  %3652 = fadd fast float %3651, -1.000000e+00
  %3653 = fadd fast float %3650, %3652
  %3654 = fmul fast float %3653, 5.000000e-01
  %3655 = fsub fast float %3650, %3652
  %3656 = fmul fast float %3655, 5.000000e-01
  %3657 = call float @dx.op.unary.f32(i32 6, float %3654)  ; FAbs(value)
  %3658 = fsub fast float 1.000000e+00, %3657
  %3659 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3660 = fsub fast float %3658, %3659
  %3661 = call float @dx.op.dot3.f32(i32 55, float %3654, float %3656, float %3660, float %3654, float %3656, float %3660)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = call float @dx.op.unary.f32(i32 25, float %3661)  ; Rsqrt(value)
  %3663 = fmul fast float %3654, %3662
  %3664 = fmul fast float %3656, %3662
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = and i32 %3666, 67108864
  %3668 = icmp eq i32 %3667, 0
  br i1 %3668, label %3685, label %3669

; <label>:3669                                    ; preds = %3617
  %3670 = add i32 %62, 328
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = and i32 %3672, 65535
  %3674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3673)  ; LegacyF16ToF32(value)
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = and i32 %3676, 65535
  %3678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3677)  ; LegacyF16ToF32(value)
  %3679 = lshr i32 %3672, 16
  %3680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3679)  ; LegacyF16ToF32(value)
  %3681 = fsub fast float %3642, %3680
  %3682 = fmul fast float %3681, %3674
  %3683 = fadd fast float %3682, %3678
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  br label %3685

; <label>:3685                                    ; preds = %3669, %3617
  %3686 = phi float [ %3684, %3669 ], [ %3642, %3617 ]
  %3687 = call float @dx.op.dot2.f32(i32 54, float %3663, float %3664, float %3106, float %3107)  ; Dot2(ax,ay,bx,by)
  %3688 = call float @dx.op.dot2.f32(i32 54, float %3663, float %3664, float %3108, float %3109)  ; Dot2(ax,ay,bx,by)
  br label %3689

; <label>:3689                                    ; preds = %3685, %3595
  %3690 = phi float [ %3686, %3685 ], [ 0x3FD6666660000000, %3595 ]
  %3691 = phi float [ %3687, %3685 ], [ 0.000000e+00, %3595 ]
  %3692 = phi float [ %3688, %3685 ], [ 0.000000e+00, %3595 ]
  %3693 = phi float [ %3629, %3685 ], [ 1.000000e+00, %3595 ]
  %3694 = add i32 %62, 208
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = lshr i32 %3696, 22
  %3698 = shl nuw nsw i32 %3697, 5
  %3699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3698)  ; LegacyF16ToF32(value)
  %3700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3701 = extractvalue %dx.types.ResRet.i32 %3700, 0
  %3702 = and i32 %3701, 64
  %3703 = icmp eq i32 %3702, 0
  br i1 %3703, label %3737, label %3704

; <label>:3704                                    ; preds = %3689
  %3705 = add i32 %62, 420
  %3706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.i32 %3706, 0
  %3708 = add i32 %3707, 0
  %3709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3708, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.i32 %3710, 0
  %3712 = and i32 %3711, 131072
  %3713 = icmp eq i32 %3712, 0
  %3714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3709, %dx.types.Handle %107, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = extractvalue %dx.types.ResRet.f32 %3714, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3714, 2
  %3718 = fmul fast float %3715, %375
  %3719 = fmul fast float %3716, %378
  %3720 = fmul fast float %3717, %381
  br i1 %3713, label %3727, label %3721

; <label>:3721                                    ; preds = %3704
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 0
  %3724 = fmul fast float %3723, %3718
  %3725 = fmul fast float %3723, %3719
  %3726 = fmul fast float %3723, %3720
  br label %3727

; <label>:3727                                    ; preds = %3721, %3704
  %3728 = phi float [ %3724, %3721 ], [ %3718, %3704 ]
  %3729 = phi float [ %3725, %3721 ], [ %3719, %3704 ]
  %3730 = phi float [ %3726, %3721 ], [ %3720, %3704 ]
  %3731 = fmul fast float %3728, %3699
  %3732 = select i1 %232, float %3731, float %3728
  %3733 = call float @dx.op.dot3.f32(i32 55, float %3732, float %3729, float %3730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3734 = select i1 %232, float 0.000000e+00, float %3728
  %3735 = select i1 %232, float %3733, float %3729
  %3736 = select i1 %232, float 0.000000e+00, float %3730
  br label %3737

; <label>:3737                                    ; preds = %3727, %3689
  %3738 = phi float [ %3734, %3727 ], [ 0.000000e+00, %3689 ]
  %3739 = phi float [ %3735, %3727 ], [ 0.000000e+00, %3689 ]
  %3740 = phi float [ %3736, %3727 ], [ 0.000000e+00, %3689 ]
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = and i32 %3742, 10240
  %3744 = icmp eq i32 %3743, 0
  br i1 %3744, label %3789, label %3745

; <label>:3745                                    ; preds = %3737
  %3746 = add i32 %62, 488
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = add i32 %3748, 0
  %3750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3750, %dx.types.Handle %108, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3751, 3
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = and i32 %3755, 1048576
  %3757 = icmp ne i32 %3756, 0
  %3758 = and i32 %3755, 8192
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3775, label %3760

; <label>:3760                                    ; preds = %3745
  %3761 = extractvalue %dx.types.ResRet.f32 %3751, 2
  %3762 = select i1 %3757, float %3761, float %3752
  %3763 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3764 = select i1 %3757, float %3763, float %3752
  %3765 = add i32 %62, 144
  %3766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.i32 %3766, 0
  %3768 = lshr i32 %3767, 16
  %3769 = and i32 %3768, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = fmul fast float %3770, 0x3F80101020000000
  %3772 = fmul fast float %3771, %3764
  %3773 = fmul fast float %3771, %3752
  %3774 = fmul fast float %3771, %3762
  br label %3775

; <label>:3775                                    ; preds = %3760, %3745
  %3776 = phi float [ %3772, %3760 ], [ 0.000000e+00, %3745 ]
  %3777 = phi float [ %3773, %3760 ], [ 0.000000e+00, %3745 ]
  %3778 = phi float [ %3774, %3760 ], [ 0.000000e+00, %3745 ]
  %3779 = and i32 %3755, 2048
  %3780 = icmp eq i32 %3779, 0
  br i1 %3780, label %3789, label %3781

; <label>:3781                                    ; preds = %3775
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = shl i32 %3783, 4
  %3785 = and i32 %3784, 32752
  %3786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3785)  ; LegacyF16ToF32(value)
  %3787 = fmul fast float %3786, %3753
  %3788 = call float @dx.op.binary.f32(i32 35, float %3787, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3789

; <label>:3789                                    ; preds = %3781, %3775, %3737
  %3790 = phi float [ %3776, %3781 ], [ %3776, %3775 ], [ 0.000000e+00, %3737 ]
  %3791 = phi float [ %3777, %3781 ], [ %3777, %3775 ], [ 0.000000e+00, %3737 ]
  %3792 = phi float [ %3778, %3781 ], [ %3778, %3775 ], [ 0.000000e+00, %3737 ]
  %3793 = phi float [ %3788, %3781 ], [ 0x3F70101020000000, %3775 ], [ 0x3F70101020000000, %3737 ]
  %3794 = add i32 %62, 144
  %3795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.i32 %3795, 0
  %3797 = and i32 %3796, 255
  %3798 = uitofp i32 %3797 to float
  %3799 = lshr i32 %3796, 8
  %3800 = and i32 %3799, 255
  %3801 = uitofp i32 %3800 to float
  %3802 = call float @dx.op.dot3.f32(i32 55, float %3610, float %3611, float %3612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3803 = fmul fast float %3801, %3802
  %3804 = fadd fast float %3803, %3798
  %3805 = fmul fast float %3804, 0x3F70101020000000
  %3806 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  br i1 %3094, label %3807, label %3815

; <label>:3807                                    ; preds = %3789
  %3808 = fsub fast float 1.000000e+00, %3390
  %3809 = fmul fast float %3808, %3079
  %3810 = fmul fast float %3808, %3080
  %3811 = fmul fast float %3808, %3081
  %3812 = fmul fast float %3808, %3085
  %3813 = fmul fast float %3808, %3086
  %3814 = fmul fast float %3808, %3087
  br label %3815

; <label>:3815                                    ; preds = %3807, %3789
  %3816 = phi float [ %3809, %3807 ], [ %3079, %3789 ]
  %3817 = phi float [ %3810, %3807 ], [ %3080, %3789 ]
  %3818 = phi float [ %3811, %3807 ], [ %3081, %3789 ]
  %3819 = phi float [ %3812, %3807 ], [ %3085, %3789 ]
  %3820 = phi float [ %3813, %3807 ], [ %3086, %3789 ]
  %3821 = phi float [ %3814, %3807 ], [ %3087, %3789 ]
  %3822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.i32 %3822, 0
  %3824 = and i32 %3823, 3
  %3825 = icmp eq i32 %3824, 3
  br i1 %3825, label %3904, label %3826

; <label>:3826                                    ; preds = %3815
  %3827 = and i32 %3823, 16
  %3828 = icmp ne i32 %3827, 0
  %3829 = select i1 %3828, float %3390, float 0.000000e+00
  %3830 = icmp eq i32 %3824, 0
  br i1 %3830, label %3831, label %3859

; <label>:3831                                    ; preds = %3826
  %3832 = and i32 %3823, 64
  %3833 = icmp ne i32 %3832, 0
  %3834 = select i1 %3833, float %3390, float 0.000000e+00
  %3835 = fsub fast float %3610, %3816
  %3836 = fsub fast float %3611, %3817
  %3837 = fsub fast float %3612, %3818
  %3838 = fmul fast float %3829, %3835
  %3839 = fmul fast float %3829, %3836
  %3840 = fmul fast float %3829, %3837
  %3841 = fadd fast float %3838, %3816
  %3842 = fadd fast float %3839, %3817
  %3843 = fadd fast float %3840, %3818
  %3844 = fsub fast float %3596, %3088
  %3845 = fmul fast float %3829, %3844
  %3846 = fadd fast float %3845, %3088
  %3847 = fsub fast float %3738, %3819
  %3848 = fsub fast float %3739, %3820
  %3849 = fsub fast float %3740, %3821
  %3850 = fmul fast float %3834, %3847
  %3851 = fmul fast float %3834, %3848
  %3852 = fmul fast float %3834, %3849
  %3853 = fadd fast float %3850, %3819
  %3854 = fadd fast float %3851, %3820
  %3855 = fadd fast float %3852, %3821
  %3856 = fsub fast float %3806, %3092
  %3857 = fmul fast float %3829, %3856
  %3858 = fadd fast float %3857, %3092
  br label %3904

; <label>:3859                                    ; preds = %3826
  %3860 = icmp eq i32 %3824, 1
  br i1 %3860, label %3861, label %3874

; <label>:3861                                    ; preds = %3859
  %3862 = fadd fast float %3610, -1.000000e+00
  %3863 = fadd fast float %3611, -1.000000e+00
  %3864 = fadd fast float %3612, -1.000000e+00
  %3865 = fmul fast float %3829, %3862
  %3866 = fmul fast float %3829, %3863
  %3867 = fmul fast float %3829, %3864
  %3868 = fadd fast float %3865, 1.000000e+00
  %3869 = fadd fast float %3866, 1.000000e+00
  %3870 = fadd fast float %3867, 1.000000e+00
  %3871 = fmul fast float %3868, %3816
  %3872 = fmul fast float %3869, %3817
  %3873 = fmul fast float %3870, %3818
  br label %3904

; <label>:3874                                    ; preds = %3859
  %3875 = icmp eq i32 %3824, 2
  br i1 %3875, label %3876, label %3904

; <label>:3876                                    ; preds = %3874
  %3877 = call float @dx.op.unary.f32(i32 24, float %3610)  ; Sqrt(value)
  %3878 = call float @dx.op.unary.f32(i32 24, float %3611)  ; Sqrt(value)
  %3879 = call float @dx.op.unary.f32(i32 24, float %3612)  ; Sqrt(value)
  %3880 = fadd fast float %3877, -5.000000e-01
  %3881 = fadd fast float %3878, -5.000000e-01
  %3882 = fadd fast float %3879, -5.000000e-01
  %3883 = fmul fast float %3880, %3829
  %3884 = fmul fast float %3881, %3829
  %3885 = fmul fast float %3882, %3829
  %3886 = fadd fast float %3883, 5.000000e-01
  %3887 = fadd fast float %3884, 5.000000e-01
  %3888 = fadd fast float %3885, 5.000000e-01
  %3889 = fmul fast float %3886, 2.000000e+00
  %3890 = fsub fast float 1.000000e+00, %3889
  %3891 = fmul fast float %3890, %3816
  %3892 = fadd fast float %3891, %3889
  %3893 = fmul fast float %3892, %3816
  %3894 = fmul fast float %3887, 2.000000e+00
  %3895 = fsub fast float 1.000000e+00, %3894
  %3896 = fmul fast float %3895, %3817
  %3897 = fadd fast float %3896, %3894
  %3898 = fmul fast float %3897, %3817
  %3899 = fmul fast float %3888, 2.000000e+00
  %3900 = fsub fast float 1.000000e+00, %3899
  %3901 = fmul fast float %3900, %3818
  %3902 = fadd fast float %3901, %3899
  %3903 = fmul fast float %3902, %3818
  br label %3904

; <label>:3904                                    ; preds = %3876, %3874, %3861, %3831, %3815
  %3905 = phi float [ %3816, %3815 ], [ %3893, %3876 ], [ %3816, %3874 ], [ %3871, %3861 ], [ %3841, %3831 ]
  %3906 = phi float [ %3817, %3815 ], [ %3898, %3876 ], [ %3817, %3874 ], [ %3872, %3861 ], [ %3842, %3831 ]
  %3907 = phi float [ %3818, %3815 ], [ %3903, %3876 ], [ %3818, %3874 ], [ %3873, %3861 ], [ %3843, %3831 ]
  %3908 = phi float [ %3819, %3815 ], [ %3819, %3876 ], [ %3819, %3874 ], [ %3819, %3861 ], [ %3853, %3831 ]
  %3909 = phi float [ %3820, %3815 ], [ %3820, %3876 ], [ %3820, %3874 ], [ %3820, %3861 ], [ %3854, %3831 ]
  %3910 = phi float [ %3821, %3815 ], [ %3821, %3876 ], [ %3821, %3874 ], [ %3821, %3861 ], [ %3855, %3831 ]
  %3911 = phi float [ %3088, %3815 ], [ %3088, %3876 ], [ %3088, %3874 ], [ %3088, %3861 ], [ %3846, %3831 ]
  %3912 = phi float [ %3092, %3815 ], [ %3092, %3876 ], [ %3092, %3874 ], [ %3092, %3861 ], [ %3858, %3831 ]
  %3913 = and i32 %3823, 12
  %3914 = icmp eq i32 %3913, 12
  br i1 %3914, label %4021, label %3915

; <label>:3915                                    ; preds = %3904
  %3916 = and i32 %3823, 2097184
  %3917 = icmp eq i32 %3916, 2097184
  %3918 = select i1 %3917, float %3390, float 0.000000e+00
  %3919 = and i32 %3823, 4194336
  %3920 = icmp eq i32 %3919, 4194336
  %3921 = select i1 %3920, float %3390, float 0.000000e+00
  %3922 = and i32 %3823, 8388640
  %3923 = icmp eq i32 %3922, 8388640
  %3924 = select i1 %3923, float %3390, float 0.000000e+00
  %3925 = and i32 %3823, 2048
  %3926 = icmp ne i32 %3925, 0
  %3927 = select i1 %3926, float %3390, float 0.000000e+00
  %3928 = and i32 %3823, 8192
  %3929 = icmp ne i32 %3928, 0
  %3930 = select i1 %3929, float %3390, float 0.000000e+00
  %3931 = icmp eq i32 %3913, 0
  br i1 %3931, label %3932, label %3957

; <label>:3932                                    ; preds = %3915
  %3933 = fsub fast float %3691, %3077
  %3934 = fsub fast float %3692, %3078
  %3935 = fmul fast float %3918, %3933
  %3936 = fmul fast float %3918, %3934
  %3937 = fadd fast float %3935, %3077
  %3938 = fadd fast float %3936, %3078
  %3939 = fsub fast float %3693, %3090
  %3940 = fmul fast float %3921, %3939
  %3941 = fadd fast float %3940, %3090
  %3942 = fsub fast float %3690, %3089
  %3943 = fmul fast float %3924, %3942
  %3944 = fadd fast float %3943, %3089
  %3945 = fsub fast float %3793, %3091
  %3946 = fmul fast float %3927, %3945
  %3947 = fadd fast float %3946, %3091
  %3948 = fsub fast float %3790, %3082
  %3949 = fsub fast float %3791, %3083
  %3950 = fsub fast float %3792, %3084
  %3951 = fmul fast float %3930, %3948
  %3952 = fmul fast float %3930, %3949
  %3953 = fmul fast float %3930, %3950
  %3954 = fadd fast float %3951, %3082
  %3955 = fadd fast float %3952, %3083
  %3956 = fadd fast float %3953, %3084
  br label %4021

; <label>:3957                                    ; preds = %3915
  %3958 = icmp eq i32 %3913, 4
  br i1 %3958, label %3959, label %3999

; <label>:3959                                    ; preds = %3957
  %3960 = fmul fast float %3918, %3691
  %3961 = fmul fast float %3918, %3692
  %3962 = fadd fast float %3960, %3077
  %3963 = fadd fast float %3961, %3078
  %3964 = call float @dx.op.binary.f32(i32 36, float %3090, float %3693)  ; FMin(a,b)
  %3965 = fsub fast float %3964, %3090
  %3966 = fmul fast float %3965, %3921
  %3967 = fadd fast float %3966, %3090
  %3968 = fadd fast float %3690, %3089
  %3969 = fmul fast float %3968, 0x3FF337FAE0000000
  %3970 = fmul fast float %3089, %3089
  %3971 = fmul fast float %3690, %3690
  %3972 = fadd fast float %3971, %3970
  %3973 = fmul fast float %3972, 0x3FE5152B00000000
  %3974 = fmul fast float %3089, 0xBFCC1F85E0000000
  %3975 = fmul fast float %3974, %3690
  %3976 = fadd fast float %3975, 0xBFE1363700000000
  %3977 = fadd fast float %3976, %3969
  %3978 = fsub fast float %3977, %3973
  %3979 = fmul fast float %3968, 0x3FBA6F0D00000000
  %3980 = fmul fast float %3972, 0x3FD0432880000000
  %3981 = fmul fast float %3089, 0xBFEF110800000000
  %3982 = fmul fast float %3981, %3690
  %3983 = fadd fast float %3982, 1.000000e+00
  %3984 = fsub fast float %3983, %3979
  %3985 = fadd fast float %3984, %3980
  %3986 = fdiv fast float %3978, %3985
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = fsub fast float %3987, %3089
  %3989 = fmul fast float %3988, %3924
  %3990 = fadd fast float %3989, %3089
  %3991 = fmul fast float %3927, %3793
  %3992 = fadd fast float %3991, %3091
  %3993 = fmul fast float %3930, %3790
  %3994 = fmul fast float %3930, %3791
  %3995 = fmul fast float %3930, %3792
  %3996 = fadd fast float %3993, %3082
  %3997 = fadd fast float %3994, %3083
  %3998 = fadd fast float %3995, %3084
  br label %4021

; <label>:3999                                    ; preds = %3957
  %4000 = icmp eq i32 %3913, 8
  br i1 %4000, label %4001, label %4021

; <label>:4001                                    ; preds = %3999
  %4002 = fmul fast float %3918, %3691
  %4003 = fmul fast float %3918, %3692
  %4004 = fadd fast float %4002, %3077
  %4005 = fadd fast float %4003, %3078
  %4006 = call float @dx.op.binary.f32(i32 36, float %3090, float %3693)  ; FMin(a,b)
  %4007 = fsub fast float %4006, %3090
  %4008 = fmul fast float %4007, %3921
  %4009 = fadd fast float %4008, %3090
  %4010 = fsub fast float %3690, %3089
  %4011 = fmul fast float %3924, %4010
  %4012 = fadd fast float %4011, %3089
  %4013 = fmul fast float %3927, %3793
  %4014 = fadd fast float %4013, %3091
  %4015 = fmul fast float %3930, %3790
  %4016 = fmul fast float %3930, %3791
  %4017 = fmul fast float %3930, %3792
  %4018 = fadd fast float %4015, %3082
  %4019 = fadd fast float %4016, %3083
  %4020 = fadd fast float %4017, %3084
  br label %4021

; <label>:4021                                    ; preds = %4001, %3999, %3959, %3932, %3904, %3389, %3093, %3076
  %4022 = phi float [ %3077, %3904 ], [ %3077, %3389 ], [ %3077, %3076 ], [ %3077, %3093 ], [ %3937, %3932 ], [ %3962, %3959 ], [ %3077, %3999 ], [ %4004, %4001 ]
  %4023 = phi float [ %3078, %3904 ], [ %3078, %3389 ], [ %3078, %3076 ], [ %3078, %3093 ], [ %3938, %3932 ], [ %3963, %3959 ], [ %3078, %3999 ], [ %4005, %4001 ]
  %4024 = phi float [ %3905, %3904 ], [ %3079, %3389 ], [ %3079, %3076 ], [ %3079, %3093 ], [ %3905, %3932 ], [ %3905, %3959 ], [ %3905, %3999 ], [ %3905, %4001 ]
  %4025 = phi float [ %3906, %3904 ], [ %3080, %3389 ], [ %3080, %3076 ], [ %3080, %3093 ], [ %3906, %3932 ], [ %3906, %3959 ], [ %3906, %3999 ], [ %3906, %4001 ]
  %4026 = phi float [ %3907, %3904 ], [ %3081, %3389 ], [ %3081, %3076 ], [ %3081, %3093 ], [ %3907, %3932 ], [ %3907, %3959 ], [ %3907, %3999 ], [ %3907, %4001 ]
  %4027 = phi float [ %3082, %3904 ], [ %3082, %3389 ], [ %3082, %3076 ], [ %3082, %3093 ], [ %3954, %3932 ], [ %3996, %3959 ], [ %3082, %3999 ], [ %4018, %4001 ]
  %4028 = phi float [ %3083, %3904 ], [ %3083, %3389 ], [ %3083, %3076 ], [ %3083, %3093 ], [ %3955, %3932 ], [ %3997, %3959 ], [ %3083, %3999 ], [ %4019, %4001 ]
  %4029 = phi float [ %3084, %3904 ], [ %3084, %3389 ], [ %3084, %3076 ], [ %3084, %3093 ], [ %3956, %3932 ], [ %3998, %3959 ], [ %3084, %3999 ], [ %4020, %4001 ]
  %4030 = phi float [ %3908, %3904 ], [ %3085, %3389 ], [ %3085, %3076 ], [ %3085, %3093 ], [ %3908, %3932 ], [ %3908, %3959 ], [ %3908, %3999 ], [ %3908, %4001 ]
  %4031 = phi float [ %3909, %3904 ], [ %3086, %3389 ], [ %3086, %3076 ], [ %3086, %3093 ], [ %3909, %3932 ], [ %3909, %3959 ], [ %3909, %3999 ], [ %3909, %4001 ]
  %4032 = phi float [ %3910, %3904 ], [ %3087, %3389 ], [ %3087, %3076 ], [ %3087, %3093 ], [ %3910, %3932 ], [ %3910, %3959 ], [ %3910, %3999 ], [ %3910, %4001 ]
  %4033 = phi float [ %3911, %3904 ], [ %3088, %3389 ], [ %3088, %3076 ], [ %3088, %3093 ], [ %3911, %3932 ], [ %3911, %3959 ], [ %3911, %3999 ], [ %3911, %4001 ]
  %4034 = phi float [ %3089, %3904 ], [ %3089, %3389 ], [ %3089, %3076 ], [ %3089, %3093 ], [ %3944, %3932 ], [ %3990, %3959 ], [ %3089, %3999 ], [ %4012, %4001 ]
  %4035 = phi float [ %3090, %3904 ], [ %3090, %3389 ], [ %3090, %3076 ], [ %3090, %3093 ], [ %3941, %3932 ], [ %3967, %3959 ], [ %3090, %3999 ], [ %4009, %4001 ]
  %4036 = phi float [ %3091, %3904 ], [ %3091, %3389 ], [ %3091, %3076 ], [ %3091, %3093 ], [ %3947, %3932 ], [ %3992, %3959 ], [ %3091, %3999 ], [ %4014, %4001 ]
  %4037 = phi float [ %3912, %3904 ], [ %3092, %3389 ], [ %3092, %3076 ], [ %3092, %3093 ], [ %3912, %3932 ], [ %3912, %3959 ], [ %3912, %3999 ], [ %3912, %4001 ]
  %4038 = add i32 %62, 360
  %4039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4038, i32 undef)  ; BufferLoad(srv,index,wot)
  %4040 = extractvalue %dx.types.ResRet.i32 %4039, 0
  %4041 = extractvalue %dx.types.ResRet.i32 %4039, 1
  %4042 = bitcast i32 %4040 to float
  %4043 = bitcast i32 %4041 to float
  %4044 = fcmp fast oge float %4042, 0.000000e+00
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 0
  %4047 = select i1 %4044, float %4042, float %4046
  %4048 = add i32 %62, 456
  %4049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4048, i32 undef)  ; BufferLoad(srv,index,wot)
  %4050 = extractvalue %dx.types.ResRet.i32 %4049, 0
  %4051 = add i32 %4050, 0
  %4052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4051, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4053 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4052, %dx.types.Handle %108, float %90, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = fmul fast float %4054, %4043
  %4056 = fadd fast float %4055, %4047
  %4057 = call float @dx.op.dot2.f32(i32 54, float %4022, float %4023, float %4022, float %4023)  ; Dot2(ax,ay,bx,by)
  %4058 = fmul fast float %4057, 0x3FE3333340000000
  %4059 = fsub fast float 1.000000e+00, %4058
  %4060 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4059, float %4022, float %4023, float %4059)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = call float @dx.op.unary.f32(i32 25, float %4060)  ; Rsqrt(value)
  %4062 = fmul fast float %4061, %4022
  %4063 = fmul fast float %4061, %4023
  %4064 = fmul fast float %4059, %4061
  %4065 = fmul fast float %4064, %120
  %4066 = fmul fast float %4064, %122
  %4067 = fmul fast float %4064, %124
  %4068 = fmul fast float %4062, %83
  %4069 = fmul fast float %4062, %84
  %4070 = fmul fast float %4062, %85
  %4071 = fadd fast float %4065, %4068
  %4072 = fadd fast float %4066, %4069
  %4073 = fadd fast float %4067, %4070
  %4074 = fmul fast float %134, %4063
  %4075 = fmul fast float %135, %4063
  %4076 = fmul fast float %136, %4063
  %4077 = fadd fast float %4071, %4074
  %4078 = fadd fast float %4072, %4075
  %4079 = fadd fast float %4073, %4076
  %4080 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4078, float %4079, float %4077, float %4078, float %4079)  ; Dot3(ax,ay,az,bx,by,bz)
  %4081 = call float @dx.op.unary.f32(i32 25, float %4080)  ; Rsqrt(value)
  %4082 = fmul fast float %4077, %4081
  %4083 = fmul fast float %4078, %4081
  %4084 = fmul fast float %4079, %4081
  %4085 = and i32 %64, 1
  %4086 = icmp eq i32 %4085, 0
  br i1 %4086, label %4087, label %4648

; <label>:4087                                    ; preds = %4021
  %4088 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %4089 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %4090 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %4091 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %4092 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %4093 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %4094 = fadd fast float %4088, %170
  %4095 = fadd fast float %4089, %171
  %4096 = fadd fast float %4090, %172
  %4097 = fadd fast float %4091, %170
  %4098 = fadd fast float %4092, %171
  %4099 = fadd fast float %4093, %172
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.CBufRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 2
  %4106 = extractvalue %dx.types.CBufRet.f32 %4104, 3
  %4107 = fmul fast float %4101, %111
  %4108 = fmul fast float %4107, %4105
  %4109 = fmul fast float %4102, %112
  %4110 = fmul fast float %4109, %4106
  %4111 = fptoui float %4108 to i32
  %4112 = fptoui float %4110 to i32
  %4113 = fadd fast float %4101, -1.000000e+00
  %4114 = fadd fast float %4102, -1.000000e+00
  %4115 = fptoui float %4113 to i32
  %4116 = fptoui float %4114 to i32
  %4117 = call i32 @dx.op.binary.i32(i32 40, i32 %4111, i32 %4115)  ; UMin(a,b)
  %4118 = call i32 @dx.op.binary.i32(i32 40, i32 %4112, i32 %4116)  ; UMin(a,b)
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 2
  %4121 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4122 = fmul fast float %4120, %99
  %4123 = fsub fast float %4122, %4121
  %4124 = fadd fast float %4103, -1.000000e+00
  %4125 = call float @dx.op.binary.f32(i32 36, float %4123, float %4124)  ; FMin(a,b)
  %4126 = fptoui float %4125 to i32
  %4127 = fptoui float %4101 to i32
  %4128 = fptoui float %4102 to i32
  %4129 = mul i32 %4126, %4128
  %4130 = add i32 %4129, %4118
  %4131 = mul i32 %4130, %4127
  %4132 = add i32 %4131, %4117
  %4133 = shl i32 %4132, 2
  %4134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.i32 %4134, 0
  %4136 = and i32 %4135, 1023
  %4137 = lshr i32 %4135, 10
  %4138 = icmp eq i32 %4136, 0
  br i1 %4138, label %4614, label %4139

; <label>:4139                                    ; preds = %4087
  %4140 = and i32 %4135, 1023
  br label %4141

; <label>:4141                                    ; preds = %4270, %4139
  %4142 = phi i32 [ %4220, %4270 ], [ 0, %4139 ]
  %4143 = phi float [ %4271, %4270 ], [ 0.000000e+00, %4139 ]
  %4144 = phi float [ %4272, %4270 ], [ %4056, %4139 ]
  %4145 = phi float [ %4273, %4270 ], [ %4037, %4139 ]
  %4146 = phi float [ %4274, %4270 ], [ 0.000000e+00, %4139 ]
  %4147 = phi float [ %4275, %4270 ], [ 0.000000e+00, %4139 ]
  %4148 = phi float [ %4276, %4270 ], [ %4027, %4139 ]
  %4149 = phi float [ %4277, %4270 ], [ %4028, %4139 ]
  %4150 = phi float [ %4278, %4270 ], [ %4029, %4139 ]
  %4151 = phi float [ %4279, %4270 ], [ %4030, %4139 ]
  %4152 = phi float [ %4280, %4270 ], [ %4031, %4139 ]
  %4153 = phi float [ %4281, %4270 ], [ %4032, %4139 ]
  %4154 = phi float [ %4282, %4270 ], [ %4082, %4139 ]
  %4155 = phi float [ %4283, %4270 ], [ %4083, %4139 ]
  %4156 = phi float [ %4284, %4270 ], [ %4084, %4139 ]
  %4157 = phi float [ %4285, %4270 ], [ %4035, %4139 ]
  %4158 = phi float [ %4286, %4270 ], [ %4034, %4139 ]
  %4159 = phi float [ %4287, %4270 ], [ 0.000000e+00, %4139 ]
  %4160 = phi float [ %4288, %4270 ], [ %4033, %4139 ]
  %4161 = phi float [ %4289, %4270 ], [ %4024, %4139 ]
  %4162 = phi float [ %4290, %4270 ], [ %4025, %4139 ]
  %4163 = phi float [ %4291, %4270 ], [ %4026, %4139 ]
  %4164 = add nuw nsw i32 %4142, %4137
  %4165 = shl i32 %4164, 2
  %4166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.i32 %4166, 0
  %4168 = shl i32 %4167, 8
  %4169 = or i32 %4168, 48
  %4170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.ResRet.f32 %4170, 1
  %4173 = extractvalue %dx.types.ResRet.f32 %4170, 2
  %4174 = extractvalue %dx.types.ResRet.f32 %4170, 3
  %4175 = or i32 %4168, 64
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = extractvalue %dx.types.ResRet.i32 %4176, 1
  %4179 = or i32 %4168, 80
  %4180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 2
  %4182 = extractvalue %dx.types.ResRet.f32 %4180, 3
  %4183 = or i32 %4168, 96
  %4184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.ResRet.f32 %4184, 2
  %4188 = extractvalue %dx.types.ResRet.f32 %4184, 3
  %4189 = or i32 %4168, 112
  %4190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 2
  %4192 = or i32 %4168, 128
  %4193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4192, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4197 = extractvalue %dx.types.ResRet.f32 %4193, 3
  %4198 = or i32 %4168, 144
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.ResRet.f32 %4199, 3
  %4204 = or i32 %4168, 160
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4209 = extractvalue %dx.types.ResRet.f32 %4205, 3
  %4210 = or i32 %4168, 192
  %4211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.i32 %4211, 0
  %4213 = or i32 %4168, 208
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = or i32 %4168, 248
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = add nuw nsw i32 %4142, 1
  %4221 = bitcast float %4174 to i32
  %4222 = and i32 %4221, 512
  %4223 = icmp eq i32 %4222, 0
  %4224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.ResRet.f32 %4224, 1
  %4227 = extractvalue %dx.types.ResRet.f32 %4224, 2
  %4228 = extractvalue %dx.types.ResRet.f32 %4224, 3
  %4229 = call float @dx.op.dot4.f32(i32 56, float %4225, float %4226, float %4227, float %4228, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4230 = or i32 %4168, 16
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = extractvalue %dx.types.ResRet.f32 %4231, 3
  %4236 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4237 = or i32 %4168, 32
  %4238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = extractvalue %dx.types.ResRet.f32 %4238, 1
  %4241 = extractvalue %dx.types.ResRet.f32 %4238, 2
  %4242 = extractvalue %dx.types.ResRet.f32 %4238, 3
  %4243 = call float @dx.op.dot4.f32(i32 56, float %4239, float %4240, float %4241, float %4242, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4244 = call float @dx.op.unary.f32(i32 27, float %4229)  ; Round_ni(value)
  %4245 = call float @dx.op.unary.f32(i32 6, float %4244)  ; FAbs(value)
  %4246 = call float @dx.op.unary.f32(i32 27, float %4236)  ; Round_ni(value)
  %4247 = call float @dx.op.unary.f32(i32 6, float %4246)  ; FAbs(value)
  %4248 = call float @dx.op.unary.f32(i32 6, float %4243)  ; FAbs(value)
  %4249 = call float @dx.op.unary.f32(i32 27, float %4248)  ; Round_ni(value)
  %4250 = fadd fast float %4247, %4245
  %4251 = fadd fast float %4250, %4249
  %4252 = fcmp fast oeq float %4251, 0.000000e+00
  %4253 = call float @dx.op.dot4.f32(i32 56, float %4225, float %4226, float %4227, float %4228, float %4094, float %4095, float %4096, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4254 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %4094, float %4095, float %4096, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4255 = call float @dx.op.dot4.f32(i32 56, float %4225, float %4226, float %4227, float %4228, float %4097, float %4098, float %4099, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4256 = call float @dx.op.dot4.f32(i32 56, float %4232, float %4233, float %4234, float %4235, float %4097, float %4098, float %4099, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4257 = fsub fast float %4253, %4229
  %4258 = fsub fast float %4255, %4229
  %4259 = fsub fast float %4254, %4236
  %4260 = fsub fast float %4256, %4236
  %4261 = call float @dx.op.dot3.f32(i32 55, float %4171, float %4172, float %4173, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 2
  %4264 = fadd fast float %4263, %4261
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4262, 0
  %4267 = fcmp fast ogt float %4265, %4266
  %4268 = and i1 %4252, %4267
  %4269 = and i1 %4223, %4268
  br i1 %4269, label %4293, label %4270

; <label>:4270                                    ; preds = %4600, %4374, %4293, %4141
  %4271 = phi float [ %4143, %4293 ], [ %4377, %4374 ], [ %4377, %4600 ], [ %4143, %4141 ]
  %4272 = phi float [ %4144, %4293 ], [ %4144, %4374 ], [ %4576, %4600 ], [ %4144, %4141 ]
  %4273 = phi float [ %4145, %4293 ], [ %4145, %4374 ], [ %4574, %4600 ], [ %4145, %4141 ]
  %4274 = phi float [ %4146, %4293 ], [ %4146, %4374 ], [ %4501, %4600 ], [ %4146, %4141 ]
  %4275 = phi float [ %4147, %4293 ], [ %4147, %4374 ], [ %4499, %4600 ], [ %4147, %4141 ]
  %4276 = phi float [ %4148, %4293 ], [ %4148, %4374 ], [ %4544, %4600 ], [ %4148, %4141 ]
  %4277 = phi float [ %4149, %4293 ], [ %4149, %4374 ], [ %4545, %4600 ], [ %4149, %4141 ]
  %4278 = phi float [ %4150, %4293 ], [ %4150, %4374 ], [ %4546, %4600 ], [ %4150, %4141 ]
  %4279 = phi float [ %4151, %4293 ], [ %4151, %4374 ], [ %4610, %4600 ], [ %4151, %4141 ]
  %4280 = phi float [ %4152, %4293 ], [ %4152, %4374 ], [ %4611, %4600 ], [ %4152, %4141 ]
  %4281 = phi float [ %4153, %4293 ], [ %4153, %4374 ], [ %4612, %4600 ], [ %4153, %4141 ]
  %4282 = phi float [ %4154, %4293 ], [ %4154, %4374 ], [ %4480, %4600 ], [ %4154, %4141 ]
  %4283 = phi float [ %4155, %4293 ], [ %4155, %4374 ], [ %4481, %4600 ], [ %4155, %4141 ]
  %4284 = phi float [ %4156, %4293 ], [ %4156, %4374 ], [ %4482, %4600 ], [ %4156, %4141 ]
  %4285 = phi float [ %4157, %4293 ], [ %4157, %4374 ], [ %4554, %4600 ], [ %4157, %4141 ]
  %4286 = phi float [ %4158, %4293 ], [ %4158, %4374 ], [ %4551, %4600 ], [ %4158, %4141 ]
  %4287 = phi float [ %4159, %4293 ], [ %4159, %4374 ], [ %4548, %4600 ], [ %4159, %4141 ]
  %4288 = phi float [ %4160, %4293 ], [ %4160, %4374 ], [ %4497, %4600 ], [ %4160, %4141 ]
  %4289 = phi float [ %4161, %4293 ], [ %4161, %4374 ], [ %4492, %4600 ], [ %4161, %4141 ]
  %4290 = phi float [ %4162, %4293 ], [ %4162, %4374 ], [ %4493, %4600 ], [ %4162, %4141 ]
  %4291 = phi float [ %4163, %4293 ], [ %4163, %4374 ], [ %4494, %4600 ], [ %4163, %4141 ]
  %4292 = icmp eq i32 %4220, %4140
  br i1 %4292, label %4613, label %4141

; <label>:4293                                    ; preds = %4141
  %4294 = extractvalue %dx.types.ResRet.f32 %4190, 3
  %4295 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4296 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4297 = extractvalue %dx.types.ResRet.f32 %4180, 1
  %4298 = extractvalue %dx.types.ResRet.f32 %4180, 0
  %4299 = extractvalue %dx.types.ResRet.i32 %4176, 3
  %4300 = extractvalue %dx.types.ResRet.i32 %4176, 2
  %4301 = add i32 %4299, 0
  %4302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4301, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4302, %dx.types.Handle %4303, float %4229, float %4236, float undef, float undef, i32 0, i32 0, i32 undef, float %4257, float %4259, float undef, float %4258, float %4260, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = fmul fast float %4305, %4298
  %4307 = fadd fast float %4306, %4297
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4229, %4185
  %4310 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4236, float %4309)  ; FMad(a,b,c)
  %4311 = fadd fast float %4310, %4296
  %4312 = fmul fast float %4229, %4187
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4236, float %4312)  ; FMad(a,b,c)
  %4314 = fadd fast float %4313, %4295
  %4315 = fmul fast float %4257, %4185
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4259, float %4315)  ; FMad(a,b,c)
  %4317 = fmul fast float %4257, %4187
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4259, float %4317)  ; FMad(a,b,c)
  %4319 = fmul fast float %4258, %4185
  %4320 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4260, float %4319)  ; FMad(a,b,c)
  %4321 = fmul fast float %4258, %4187
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4188, float %4260, float %4321)  ; FMad(a,b,c)
  %4323 = add i32 %4300, 0
  %4324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4323, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4325 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4324, %dx.types.Handle %4303, float %4311, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float %4316, float %4318, float undef, float %4320, float %4322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 0
  %4327 = and i32 %4221, 1024
  %4328 = icmp ne i32 %4327, 0
  %4329 = fcmp fast ogt float %4326, 0x3FE0101020000000
  %4330 = uitofp i1 %4329 to float
  %4331 = select i1 %4328, float %4330, float %4326
  %4332 = and i32 %4221, 8192
  %4333 = icmp ne i32 %4332, 0
  %4334 = select i1 %4333, float %4294, float 1.000000e+00
  %4335 = fmul fast float %4229, 2.000000e+00
  %4336 = fadd fast float %4335, -1.000000e+00
  %4337 = call float @dx.op.unary.f32(i32 6, float %4336)  ; FAbs(value)
  %4338 = fmul fast float %4337, %4218
  %4339 = fsub fast float %4338, %4218
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = fmul fast float %4236, 2.000000e+00
  %4342 = fadd fast float %4341, -1.000000e+00
  %4343 = call float @dx.op.unary.f32(i32 6, float %4342)  ; FAbs(value)
  %4344 = fmul fast float %4343, %4219
  %4345 = fsub fast float %4344, %4219
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4248, %4181
  %4348 = fsub fast float %4347, %4181
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = fmul fast float %4308, %4334
  %4351 = fmul fast float %4350, %4305
  %4352 = fmul fast float %4351, %4340
  %4353 = fmul fast float %4352, %4331
  %4354 = fmul fast float %4353, %4346
  %4355 = fmul fast float %4354, %4349
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 1
  %4358 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4359 = fsub fast float %4265, %4358
  %4360 = fmul fast float %4359, %4357
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4355, %4182
  %4363 = fadd fast float %4355, %4182
  %4364 = fmul fast float %4363, %4191
  %4365 = fsub fast float %4364, %4191
  %4366 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4367 = and i32 %4221, 128
  %4368 = icmp ne i32 %4367, 0
  %4369 = select i1 %4368, float %4366, float %4362
  %4370 = fmul fast float %4369, %4361
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = fcmp fast ugt float %4370, %4372
  br i1 %4373, label %4374, label %4270

; <label>:4374                                    ; preds = %4293
  %4375 = select i1 %4333, float %4370, float 0.000000e+00
  %4376 = fadd fast float %4375, %4143
  %4377 = call float @dx.op.unary.f32(i32 7, float %4376)  ; Saturate(value)
  br i1 %4333, label %4270, label %4378

; <label>:4378                                    ; preds = %4374
  %4379 = and i32 %4221, 4
  %4380 = and i32 %4221, 8
  %4381 = add i32 %4177, 0
  %4382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4381, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4384 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4382, %dx.types.Handle %4383, float %4311, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float %4316, float %4318, float undef, float %4320, float %4322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.ResRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.ResRet.f32 %4384, 2
  %4388 = extractvalue %dx.types.ResRet.f32 %4384, 3
  %4389 = bitcast float %4203 to i32
  %4390 = and i32 %4389, 255
  %4391 = uitofp i32 %4390 to float
  %4392 = lshr i32 %4389, 8
  %4393 = and i32 %4392, 255
  %4394 = uitofp i32 %4393 to float
  %4395 = fmul fast float %4388, %4391
  %4396 = fadd fast float %4395, %4394
  %4397 = fmul fast float %4396, 0x3F70101000000000
  %4398 = add i32 %4178, 0
  %4399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4398, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4400 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4399, %dx.types.Handle %4383, float %4311, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float %4316, float %4318, float undef, float %4320, float %4322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.ResRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.ResRet.f32 %4400, 2
  %4404 = extractvalue %dx.types.ResRet.f32 %4400, 3
  %4405 = bitcast float %4197 to i32
  %4406 = and i32 %4405, 255
  %4407 = uitofp i32 %4406 to float
  %4408 = lshr i32 %4405, 8
  %4409 = and i32 %4408, 255
  %4410 = uitofp i32 %4409 to float
  %4411 = lshr i32 %4405, 16
  %4412 = and i32 %4411, 255
  %4413 = uitofp i32 %4412 to float
  %4414 = fmul fast float %4413, 0x3F70101000000000
  %4415 = fmul fast float %4401, %4407
  %4416 = fadd fast float %4415, %4410
  %4417 = fmul fast float %4416, 0x3F70101000000000
  %4418 = fadd fast float %4402, -5.000000e-01
  %4419 = fadd fast float %4404, -5.000000e-01
  %4420 = fmul fast float %4418, %4414
  %4421 = fmul fast float %4419, %4414
  %4422 = fadd fast float %4420, 5.000000e-01
  %4423 = fadd fast float %4421, 5.000000e-01
  %4424 = fmul fast float %4385, %4206
  %4425 = fmul fast float %4386, %4207
  %4426 = fmul fast float %4387, %4208
  %4427 = fmul fast float %4422, 2.000000e+00
  %4428 = fadd fast float %4427, -1.000000e+00
  %4429 = fmul fast float %4423, 2.000000e+00
  %4430 = fadd fast float %4429, -1.000000e+00
  %4431 = fadd fast float %4428, %4430
  %4432 = fmul fast float %4431, 5.000000e-01
  %4433 = fsub fast float %4428, %4430
  %4434 = fmul fast float %4433, 5.000000e-01
  %4435 = call float @dx.op.unary.f32(i32 6, float %4432)  ; FAbs(value)
  %4436 = fsub fast float 1.000000e+00, %4435
  %4437 = call float @dx.op.unary.f32(i32 6, float %4434)  ; FAbs(value)
  %4438 = fsub fast float %4436, %4437
  %4439 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4434, float %4438, float %4432, float %4434, float %4438)  ; Dot3(ax,ay,az,bx,by,bz)
  %4440 = call float @dx.op.unary.f32(i32 25, float %4439)  ; Rsqrt(value)
  %4441 = fmul fast float %4432, %4440
  %4442 = fmul fast float %4434, %4440
  %4443 = fmul fast float %4440, %4438
  %4444 = fmul fast float %4443, %4171
  %4445 = fmul fast float %4443, %4172
  %4446 = fmul fast float %4443, %4173
  %4447 = fmul fast float %4441, %4194
  %4448 = fmul fast float %4441, %4195
  %4449 = fmul fast float %4441, %4196
  %4450 = fadd fast float %4447, %4444
  %4451 = fadd fast float %4448, %4445
  %4452 = fadd fast float %4449, %4446
  %4453 = fmul fast float %4442, %4200
  %4454 = fmul fast float %4442, %4201
  %4455 = fmul fast float %4442, %4202
  %4456 = fadd fast float %4450, %4453
  %4457 = fadd fast float %4451, %4454
  %4458 = fadd fast float %4452, %4455
  %4459 = call float @dx.op.dot3.f32(i32 55, float %4456, float %4457, float %4458, float %4456, float %4457, float %4458)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = call float @dx.op.unary.f32(i32 25, float %4459)  ; Rsqrt(value)
  %4461 = fmul fast float %4456, %4460
  %4462 = fmul fast float %4457, %4460
  %4463 = fmul fast float %4458, %4460
  %4464 = icmp ne i32 %4380, 0
  %4465 = select i1 %4464, float 1.000000e+00, float 0.000000e+00
  %4466 = fmul fast float %4370, %4465
  %4467 = and i32 %4221, 1
  %4468 = icmp eq i32 %4467, 0
  br i1 %4468, label %4469, label %4473

; <label>:4469                                    ; preds = %4378
  %4470 = fsub fast float %4461, %4154
  %4471 = fsub fast float %4462, %4155
  %4472 = fsub fast float %4463, %4156
  br label %4473

; <label>:4473                                    ; preds = %4469, %4378
  %4474 = phi float [ %4470, %4469 ], [ %4461, %4378 ]
  %4475 = phi float [ %4471, %4469 ], [ %4462, %4378 ]
  %4476 = phi float [ %4472, %4469 ], [ %4463, %4378 ]
  %4477 = fmul float %4476, %4466
  %4478 = fmul float %4475, %4466
  %4479 = fmul float %4474, %4466
  %4480 = fadd fast float %4479, %4154
  %4481 = fadd fast float %4478, %4155
  %4482 = fadd fast float %4477, %4156
  %4483 = icmp ne i32 %4379, 0
  %4484 = select i1 %4483, float 1.000000e+00, float 0.000000e+00
  %4485 = fmul fast float %4370, %4484
  %4486 = fsub fast float %4424, %4161
  %4487 = fsub fast float %4425, %4162
  %4488 = fsub fast float %4426, %4163
  %4489 = fmul fast float %4486, %4485
  %4490 = fmul fast float %4487, %4485
  %4491 = fmul fast float %4488, %4485
  %4492 = fadd fast float %4489, %4161
  %4493 = fadd fast float %4490, %4162
  %4494 = fadd fast float %4491, %4163
  %4495 = fsub fast float %4397, %4160
  %4496 = fmul fast float %4495, %4485
  %4497 = fadd fast float %4496, %4160
  %4498 = fmul fast float %4485, %4147
  %4499 = fsub fast float %4147, %4498
  %4500 = fmul fast float %4485, %4146
  %4501 = fsub fast float %4146, %4500
  %4502 = bitcast float %4215 to i32
  %4503 = lshr i32 %4502, 16
  %4504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4503)  ; LegacyF16ToF32(value)
  %4505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.i32 %4505, 0
  %4507 = and i32 %4506, 1
  %4508 = icmp eq i32 %4507, 0
  br i1 %4508, label %4509, label %4534

; <label>:4509                                    ; preds = %4473
  %4510 = fadd fast float %4397, 0xBFB99999A0000000
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fmul fast float %4511, 0x3FF1C71C80000000
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fmul fast float %4514, %4424
  %4516 = fmul fast float %4514, %4425
  %4517 = fmul fast float %4514, %4426
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4521 = call float @dx.op.binary.f32(i32 35, float %4519, float %4520)  ; FMax(a,b)
  %4522 = call float @dx.op.binary.f32(i32 35, float %4518, float %4521)  ; FMax(a,b)
  %4523 = fcmp fast ogt float %4522, 0.000000e+00
  %4524 = bitcast float %4522 to i32
  %4525 = sub nsw i32 2129859010, %4524
  %4526 = bitcast i32 %4525 to float
  %4527 = select i1 %4523, float %4526, float 0.000000e+00
  %4528 = fmul fast float %4518, %4504
  %4529 = fmul fast float %4519, %4504
  %4530 = fmul fast float %4520, %4504
  %4531 = fmul fast float %4528, %4527
  %4532 = fmul fast float %4529, %4527
  %4533 = fmul fast float %4530, %4527
  br label %4534

; <label>:4534                                    ; preds = %4509, %4473
  %4535 = phi float [ %4504, %4473 ], [ %4531, %4509 ]
  %4536 = phi float [ %4504, %4473 ], [ %4532, %4509 ]
  %4537 = phi float [ %4504, %4473 ], [ %4533, %4509 ]
  %4538 = fsub fast float %4535, %4148
  %4539 = fsub fast float %4536, %4149
  %4540 = fsub fast float %4537, %4150
  %4541 = fmul fast float %4538, %4485
  %4542 = fmul fast float %4539, %4485
  %4543 = fmul fast float %4540, %4485
  %4544 = fadd fast float %4541, %4148
  %4545 = fadd fast float %4542, %4149
  %4546 = fadd fast float %4543, %4150
  %4547 = fadd fast float %4370, %4159
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = fsub fast float %4417, %4158
  %4550 = fmul fast float %4549, %4466
  %4551 = fadd fast float %4550, %4158
  %4552 = fsub fast float %4403, %4157
  %4553 = fmul fast float %4552, %4466
  %4554 = fadd fast float %4553, %4157
  %4555 = call float @dx.op.dot3.f32(i32 55, float %4424, float %4425, float %4426, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4559 = fmul fast float %4558, %4555
  %4560 = fadd fast float %4559, %4557
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = bitcast float %4209 to i32
  %4563 = and i32 %4562, 65535
  %4564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4563)  ; LegacyF16ToF32(value)
  %4565 = lshr i32 %4562, 16
  %4566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4565)  ; LegacyF16ToF32(value)
  %4567 = fcmp fast oge float %4564, 0.000000e+00
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 0
  %4570 = select i1 %4567, float %4564, float %4569
  %4571 = fadd fast float %4570, %4566
  %4572 = fsub fast float %4561, %4145
  %4573 = fmul fast float %4572, %4370
  %4574 = fadd fast float %4573, %4145
  %4575 = fmul fast float %4571, %4370
  %4576 = call float @dx.op.binary.f32(i32 35, float %4144, float %4575)  ; FMax(a,b)
  %4577 = and i32 %4221, 16
  %4578 = icmp eq i32 %4577, 0
  br i1 %4578, label %4600, label %4579

; <label>:4579                                    ; preds = %4534
  %4580 = add i32 %4212, 0
  %4581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4580, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4582 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4581, %dx.types.Handle %4383, float %4311, float %4314, float undef, float undef, i32 0, i32 0, i32 undef, float %4316, float %4318, float undef, float %4320, float %4322, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = and i32 %4502, 65535
  %4587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4586)  ; LegacyF16ToF32(value)
  %4588 = fmul fast float %4583, %4206
  %4589 = fmul fast float %4584, %4207
  %4590 = fmul fast float %4585, %4208
  %4591 = and i32 %4221, 16384
  %4592 = icmp ne i32 %4591, 0
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 0
  %4595 = select i1 %4592, float %4594, float 1.000000e+00
  %4596 = fmul fast float %4595, %4587
  %4597 = fmul fast float %4588, %4596
  %4598 = fmul fast float %4589, %4596
  %4599 = fmul fast float %4590, %4596
  br label %4600

; <label>:4600                                    ; preds = %4579, %4534
  %4601 = phi float [ %4597, %4579 ], [ 0.000000e+00, %4534 ]
  %4602 = phi float [ %4598, %4579 ], [ 0.000000e+00, %4534 ]
  %4603 = phi float [ %4599, %4579 ], [ 0.000000e+00, %4534 ]
  %4604 = fsub fast float %4601, %4151
  %4605 = fsub fast float %4602, %4152
  %4606 = fsub fast float %4603, %4153
  %4607 = fmul fast float %4604, %4370
  %4608 = fmul fast float %4605, %4370
  %4609 = fmul fast float %4606, %4370
  %4610 = fadd fast float %4607, %4151
  %4611 = fadd fast float %4608, %4152
  %4612 = fadd fast float %4609, %4153
  br label %4270

; <label>:4613                                    ; preds = %4270
  br label %4614

; <label>:4614                                    ; preds = %4613, %4087
  %4615 = phi float [ 0.000000e+00, %4087 ], [ %4271, %4613 ]
  %4616 = phi float [ %4056, %4087 ], [ %4272, %4613 ]
  %4617 = phi float [ %4037, %4087 ], [ %4273, %4613 ]
  %4618 = phi float [ 0.000000e+00, %4087 ], [ %4274, %4613 ]
  %4619 = phi float [ 0.000000e+00, %4087 ], [ %4275, %4613 ]
  %4620 = phi float [ %4027, %4087 ], [ %4276, %4613 ]
  %4621 = phi float [ %4028, %4087 ], [ %4277, %4613 ]
  %4622 = phi float [ %4029, %4087 ], [ %4278, %4613 ]
  %4623 = phi float [ %4030, %4087 ], [ %4279, %4613 ]
  %4624 = phi float [ %4031, %4087 ], [ %4280, %4613 ]
  %4625 = phi float [ %4032, %4087 ], [ %4281, %4613 ]
  %4626 = phi float [ %4082, %4087 ], [ %4282, %4613 ]
  %4627 = phi float [ %4083, %4087 ], [ %4283, %4613 ]
  %4628 = phi float [ %4084, %4087 ], [ %4284, %4613 ]
  %4629 = phi float [ %4035, %4087 ], [ %4285, %4613 ]
  %4630 = phi float [ %4034, %4087 ], [ %4286, %4613 ]
  %4631 = phi float [ 0.000000e+00, %4087 ], [ %4287, %4613 ]
  %4632 = phi float [ %4033, %4087 ], [ %4288, %4613 ]
  %4633 = phi float [ %4024, %4087 ], [ %4289, %4613 ]
  %4634 = phi float [ %4025, %4087 ], [ %4290, %4613 ]
  %4635 = phi float [ %4026, %4087 ], [ %4291, %4613 ]
  %4636 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4627, float %4628, float %4626, float %4627, float %4628)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call float @dx.op.unary.f32(i32 25, float %4636)  ; Rsqrt(value)
  %4638 = fmul fast float %4637, %4626
  %4639 = fmul fast float %4637, %4627
  %4640 = fmul fast float %4637, %4628
  %4641 = fadd fast float %4631, %1198
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4644 = call float @dx.op.unary.f32(i32 25, float %4643)  ; Rsqrt(value)
  %4645 = fmul fast float %4644, %4638
  %4646 = fmul fast float %4644, %4639
  %4647 = fmul fast float %4644, %4640
  br label %4648

; <label>:4648                                    ; preds = %4614, %4021
  %4649 = phi float [ %4645, %4614 ], [ %4082, %4021 ]
  %4650 = phi float [ %4646, %4614 ], [ %4083, %4021 ]
  %4651 = phi float [ %4647, %4614 ], [ %4084, %4021 ]
  %4652 = phi float [ %4620, %4614 ], [ %4027, %4021 ]
  %4653 = phi float [ %4621, %4614 ], [ %4028, %4021 ]
  %4654 = phi float [ %4622, %4614 ], [ %4029, %4021 ]
  %4655 = phi float [ %4633, %4614 ], [ %4024, %4021 ]
  %4656 = phi float [ %4634, %4614 ], [ %4025, %4021 ]
  %4657 = phi float [ %4635, %4614 ], [ %4026, %4021 ]
  %4658 = phi float [ %4623, %4614 ], [ %4030, %4021 ]
  %4659 = phi float [ %4624, %4614 ], [ %4031, %4021 ]
  %4660 = phi float [ %4625, %4614 ], [ %4032, %4021 ]
  %4661 = phi float [ %4632, %4614 ], [ %4033, %4021 ]
  %4662 = phi float [ %4642, %4614 ], [ %1198, %4021 ]
  %4663 = phi float [ %4630, %4614 ], [ %4034, %4021 ]
  %4664 = phi float [ %4629, %4614 ], [ %4035, %4021 ]
  %4665 = phi float [ %4619, %4614 ], [ 0.000000e+00, %4021 ]
  %4666 = phi float [ %4618, %4614 ], [ 0.000000e+00, %4021 ]
  %4667 = phi float [ %4615, %4614 ], [ 0.000000e+00, %4021 ]
  %4668 = phi float [ %4616, %4614 ], [ %4056, %4021 ]
  %4669 = phi float [ %4617, %4614 ], [ %4037, %4021 ]
  %4670 = fadd fast float %4661, 0xBFB99999A0000000
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = fmul fast float %4671, 0x3FF1C71C80000000
  %4673 = call float @dx.op.binary.f32(i32 36, float %4661, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4674 = fsub fast float 1.000000e+00, %4672
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = fmul fast float %4675, %4655
  %4677 = fmul fast float %4675, %4656
  %4678 = fmul fast float %4675, %4657
  %4679 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4680 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4682 = fmul fast float %4672, %4655
  %4683 = fmul fast float %4672, %4656
  %4684 = fmul fast float %4672, %4657
  %4685 = fadd fast float %4682, %4673
  %4686 = fadd fast float %4683, %4673
  %4687 = fadd fast float %4684, %4673
  %4688 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4690 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4691 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4693 = extractvalue %dx.types.ResRet.i32 %4692, 0
  %4694 = and i32 %4693, 1
  %4695 = icmp eq i32 %4694, 0
  br i1 %4695, label %4710, label %4696

; <label>:4696                                    ; preds = %4648
  %4697 = call float @dx.op.binary.f32(i32 35, float %4680, float %4681)  ; FMax(a,b)
  %4698 = call float @dx.op.binary.f32(i32 35, float %4679, float %4697)  ; FMax(a,b)
  %4699 = fcmp fast ogt float %4698, 0.000000e+00
  %4700 = bitcast float %4698 to i32
  %4701 = sub nsw i32 2129859010, %4700
  %4702 = bitcast i32 %4701 to float
  %4703 = select i1 %4699, float %4702, float 0.000000e+00
  %4704 = fmul fast float %4679, %4652
  %4705 = fmul fast float %4680, %4653
  %4706 = fmul fast float %4681, %4654
  %4707 = fmul fast float %4704, %4703
  %4708 = fmul fast float %4705, %4703
  %4709 = fmul fast float %4706, %4703
  br label %4710

; <label>:4710                                    ; preds = %4696, %4648
  %4711 = phi float [ %4707, %4696 ], [ %4652, %4648 ]
  %4712 = phi float [ %4708, %4696 ], [ %4653, %4648 ]
  %4713 = phi float [ %4709, %4696 ], [ %4654, %4648 ]
  %4714 = fadd fast float %4679, 0xBFD51EB860000000
  %4715 = fadd fast float %4680, 0xBFD51EB860000000
  %4716 = fadd fast float %4681, 0xBFD51EB860000000
  %4717 = fmul fast float %4714, %4714
  %4718 = fmul fast float %4715, %4715
  %4719 = fmul fast float %4716, %4716
  %4720 = fmul fast float %4717, %4717
  %4721 = fmul fast float %4720, 1.000000e+02
  %4722 = fmul fast float %4718, %4718
  %4723 = fmul fast float %4722, 1.000000e+02
  %4724 = fmul fast float %4719, %4719
  %4725 = fmul fast float %4724, 1.000000e+02
  %4726 = fadd fast float %4721, 3.500000e+00
  %4727 = fadd fast float %4723, 3.500000e+00
  %4728 = fadd fast float %4725, 3.500000e+00
  %4729 = call float @dx.op.binary.f32(i32 35, float %4711, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4730 = call float @dx.op.binary.f32(i32 35, float %4712, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4731 = call float @dx.op.binary.f32(i32 35, float %4713, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4732 = fdiv fast float %4726, %4729
  %4733 = fdiv fast float %4727, %4730
  %4734 = fdiv fast float %4728, %4731
  %4735 = fmul fast float %4036, 0xBFF7154760000000
  %4736 = fmul fast float %4735, %4732
  %4737 = call float @dx.op.unary.f32(i32 21, float %4736)  ; Exp(value)
  %4738 = fmul fast float %4737, 2.500000e-01
  %4739 = fmul fast float %4036, 0xBFDEC709E0000000
  %4740 = fmul fast float %4739, %4732
  %4741 = call float @dx.op.unary.f32(i32 21, float %4740)  ; Exp(value)
  %4742 = fmul fast float %4741, 7.500000e-01
  %4743 = fmul fast float %4735, %4733
  %4744 = call float @dx.op.unary.f32(i32 21, float %4743)  ; Exp(value)
  %4745 = fmul fast float %4744, 2.500000e-01
  %4746 = fmul fast float %4739, %4733
  %4747 = call float @dx.op.unary.f32(i32 21, float %4746)  ; Exp(value)
  %4748 = fmul fast float %4747, 7.500000e-01
  %4749 = fmul fast float %4735, %4734
  %4750 = call float @dx.op.unary.f32(i32 21, float %4749)  ; Exp(value)
  %4751 = fmul fast float %4750, 2.500000e-01
  %4752 = fmul fast float %4739, %4734
  %4753 = call float @dx.op.unary.f32(i32 21, float %4752)  ; Exp(value)
  %4754 = fmul fast float %4753, 7.500000e-01
  %4755 = fadd fast float %4738, %4742
  %4756 = fadd fast float %4745, %4748
  %4757 = fadd fast float %4751, %4754
  %4758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.i32 %4758, 3
  %4760 = and i32 %4759, 8
  %4761 = icmp ne i32 %4760, 0
  %4762 = call float @dx.op.binary.f32(i32 35, float %4679, float %4655)  ; FMax(a,b)
  %4763 = call float @dx.op.binary.f32(i32 35, float %4680, float %4655)  ; FMax(a,b)
  %4764 = call float @dx.op.binary.f32(i32 35, float %4681, float %4655)  ; FMax(a,b)
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4679, float %4680, float %4681, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = select i1 %232, float %4655, float %4679
  %4767 = select i1 %232, float %4765, float %4680
  %4768 = select i1 %232, float 1.000000e+00, float %4681
  %4769 = select i1 %4761, float %4762, float %4766
  %4770 = select i1 %4761, float %4763, float %4767
  %4771 = select i1 %4761, float %4764, float %4768
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 0
  %4774 = extractvalue %dx.types.CBufRet.f32 %4772, 1
  %4775 = extractvalue %dx.types.CBufRet.f32 %4772, 2
  %4776 = fadd fast float %4773, %170
  %4777 = fadd fast float %4774, %171
  %4778 = fadd fast float %4775, %172
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.CBufRet.f32 %4779, 1
  %4782 = fsub fast float %4776, %4780
  %4783 = fsub fast float %4777, %4781
  %4784 = fmul fast float %4782, %4782
  %4785 = fmul fast float %4783, %4783
  %4786 = fadd fast float %4784, %4785
  %4787 = call float @dx.op.unary.f32(i32 24, float %4786)  ; Sqrt(value)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4779, 2
  %4789 = fcmp fast olt float %4787, %4788
  br i1 %4789, label %4790, label %4857

; <label>:4790                                    ; preds = %4710
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 0
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 0
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 0
  %4797 = extractvalue %dx.types.CBufRet.f32 %4791, 1
  %4798 = extractvalue %dx.types.CBufRet.f32 %4793, 1
  %4799 = extractvalue %dx.types.CBufRet.f32 %4795, 1
  %4800 = extractvalue %dx.types.CBufRet.f32 %4791, 3
  %4801 = extractvalue %dx.types.CBufRet.f32 %4793, 3
  %4802 = extractvalue %dx.types.CBufRet.f32 %4795, 3
  %4803 = fadd fast float %4800, %4776
  %4804 = fadd fast float %4801, %4777
  %4805 = fadd fast float %4802, %4778
  %4806 = fmul fast float %4803, %4792
  %4807 = call float @dx.op.tertiary.f32(i32 46, float %4804, float %4794, float %4806)  ; FMad(a,b,c)
  %4808 = call float @dx.op.tertiary.f32(i32 46, float %4805, float %4796, float %4807)  ; FMad(a,b,c)
  %4809 = fmul fast float %4803, %4797
  %4810 = call float @dx.op.tertiary.f32(i32 46, float %4804, float %4798, float %4809)  ; FMad(a,b,c)
  %4811 = call float @dx.op.tertiary.f32(i32 46, float %4805, float %4799, float %4810)  ; FMad(a,b,c)
  %4812 = fsub fast float %4808, %4800
  %4813 = fsub fast float %4811, %4801
  %4814 = fsub fast float %4812, %4780
  %4815 = fadd fast float %4814, %4788
  %4816 = fsub fast float %4813, %4781
  %4817 = fadd fast float %4816, %4788
  %4818 = extractvalue %dx.types.CBufRet.f32 %4779, 3
  %4819 = fmul fast float %4815, %4818
  %4820 = fmul fast float %4817, %4818
  %4821 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4822 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4823 = fsub fast float 1.000000e+00, %4821
  %4824 = fsub fast float 1.000000e+00, %4822
  %4825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4823, float %4824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = fcmp fast ugt float %4826, 0.000000e+00
  br i1 %4827, label %4828, label %5131

; <label>:4828                                    ; preds = %4790
  %4829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4830 = extractvalue %dx.types.CBufRet.f32 %4829, 2
  %4831 = fmul fast float %4830, %4826
  %4832 = extractvalue %dx.types.CBufRet.f32 %4829, 3
  %4833 = fadd fast float %4832, %4831
  %4834 = extractvalue %dx.types.CBufRet.f32 %4795, 2
  %4835 = fadd fast float %4833, %4802
  %4836 = fmul fast float %4808, %4796
  %4837 = call float @dx.op.tertiary.f32(i32 46, float %4811, float %4799, float %4836)  ; FMad(a,b,c)
  %4838 = call float @dx.op.tertiary.f32(i32 46, float %4835, float %4834, float %4837)  ; FMad(a,b,c)
  %4839 = fsub fast float %4838, %4802
  %4840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4841 = extractvalue %dx.types.CBufRet.f32 %4840, 2
  %4842 = fsub fast float %4839, %4841
  %4843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4823, float %4824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4844 = extractvalue %dx.types.ResRet.f32 %4843, 0
  %4845 = extractvalue %dx.types.ResRet.f32 %4843, 1
  %4846 = extractvalue %dx.types.ResRet.f32 %4843, 2
  %4847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4823, float %4824, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.ResRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.ResRet.f32 %4847, 2
  %4851 = fadd fast float %4848, %4844
  %4852 = fmul fast float %4851, 0x3F847AE140000000
  %4853 = fadd fast float %4849, %4845
  %4854 = fmul fast float %4853, 0x3F847AE140000000
  %4855 = fadd fast float %4850, %4846
  %4856 = fmul fast float %4855, 0x3F847AE140000000
  br label %5131

; <label>:4857                                    ; preds = %4710
  %4858 = and i32 %208, 1
  %4859 = icmp eq i32 %4858, 0
  br i1 %4859, label %5131, label %4860

; <label>:4860                                    ; preds = %4857
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4868 = extractvalue %dx.types.CBufRet.f32 %4863, 1
  %4869 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4870 = extractvalue %dx.types.CBufRet.f32 %4861, 3
  %4871 = extractvalue %dx.types.CBufRet.f32 %4863, 3
  %4872 = extractvalue %dx.types.CBufRet.f32 %4865, 3
  %4873 = fadd fast float %4870, %4776
  %4874 = fadd fast float %4871, %4777
  %4875 = fadd fast float %4872, %4778
  %4876 = fmul fast float %4873, %4862
  %4877 = call float @dx.op.tertiary.f32(i32 46, float %4874, float %4864, float %4876)  ; FMad(a,b,c)
  %4878 = call float @dx.op.tertiary.f32(i32 46, float %4875, float %4866, float %4877)  ; FMad(a,b,c)
  %4879 = fmul fast float %4873, %4867
  %4880 = call float @dx.op.tertiary.f32(i32 46, float %4874, float %4868, float %4879)  ; FMad(a,b,c)
  %4881 = call float @dx.op.tertiary.f32(i32 46, float %4875, float %4869, float %4880)  ; FMad(a,b,c)
  %4882 = fsub fast float %4878, %4870
  %4883 = fsub fast float %4881, %4871
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4887 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4888 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4890 = extractvalue %dx.types.CBufRet.f32 %4889, 3
  %4891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4892 = extractvalue %dx.types.CBufRet.i32 %4891, 0
  %4893 = extractvalue %dx.types.CBufRet.i32 %4891, 1
  %4894 = udiv i32 %4893, %4892
  %4895 = fsub fast float %4882, %4885
  %4896 = fsub fast float %4883, %4886
  %4897 = call float @dx.op.binary.f32(i32 35, float %4895, float 0.000000e+00)  ; FMax(a,b)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4896, float 0.000000e+00)  ; FMax(a,b)
  %4899 = call float @dx.op.binary.f32(i32 36, float %4897, float %4887)  ; FMin(a,b)
  %4900 = call float @dx.op.binary.f32(i32 36, float %4898, float %4888)  ; FMin(a,b)
  %4901 = add i32 %4892, -1
  %4902 = add i32 %4894, -1
  %4903 = fmul fast float %4899, %4890
  %4904 = fmul fast float %4900, %4890
  %4905 = fptoui float %4903 to i32
  %4906 = fptoui float %4904 to i32
  %4907 = call i32 @dx.op.binary.i32(i32 40, i32 %4905, i32 %4901)  ; UMin(a,b)
  %4908 = call i32 @dx.op.binary.i32(i32 40, i32 %4906, i32 %4902)  ; UMin(a,b)
  %4909 = mul i32 %4908, %4892
  %4910 = add i32 %4909, %4907
  %4911 = shl i32 %4910, 2
  %4912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4911, i32 undef)  ; BufferLoad(srv,index,wot)
  %4913 = extractvalue %dx.types.ResRet.i32 %4912, 0
  %4914 = icmp eq i32 %4913, -1
  br i1 %4914, label %5131, label %4915

; <label>:4915                                    ; preds = %4860
  %4916 = mul i32 %4913, 148
  %4917 = add i32 %4916, 4
  %4918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4917, i32 undef)  ; BufferLoad(srv,index,wot)
  %4919 = extractvalue %dx.types.ResRet.f32 %4918, 0
  %4920 = add i32 %4916, 8
  %4921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4920, i32 undef)  ; BufferLoad(srv,index,wot)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = add i32 %4916, 36
  %4924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4923, i32 undef)  ; BufferLoad(srv,index,wot)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 0
  %4926 = add i32 %4916, 60
  %4927 = add i32 %4916, 92
  %4928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.i32 %4928, 0
  %4930 = add i32 %4916, 116
  %4931 = fsub fast float %4882, %4919
  %4932 = fsub fast float %4883, %4922
  %4933 = fmul fast float %4890, %4931
  %4934 = fmul fast float %4890, %4932
  %4935 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4936 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4937 = fsub fast float 1.000000e+00, %4936
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 2
  %4940 = call float @dx.op.unary.f32(i32 83, float %4935)  ; DerivCoarseX(value)
  %4941 = call float @dx.op.unary.f32(i32 83, float %4937)  ; DerivCoarseX(value)
  %4942 = call float @dx.op.unary.f32(i32 84, float %4935)  ; DerivCoarseY(value)
  %4943 = call float @dx.op.unary.f32(i32 84, float %4937)  ; DerivCoarseY(value)
  %4944 = fmul fast float %4940, %4939
  %4945 = fmul fast float %4941, %4939
  %4946 = fmul fast float %4942, %4939
  %4947 = fmul fast float %4943, %4939
  %4948 = call float @dx.op.dot2.f32(i32 54, float %4946, float %4947, float %4946, float %4947)  ; Dot2(ax,ay,bx,by)
  %4949 = call float @dx.op.dot2.f32(i32 54, float %4944, float %4945, float %4944, float %4945)  ; Dot2(ax,ay,bx,by)
  %4950 = call float @dx.op.binary.f32(i32 35, float %4949, float %4948)  ; FMax(a,b)
  %4951 = call float @dx.op.unary.f32(i32 23, float %4950)  ; Log(value)
  %4952 = fmul fast float %4951, 5.000000e-01
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 1
  %4955 = fadd fast float %4954, %4952
  %4956 = call float @dx.op.binary.f32(i32 35, float %4955, float 0.000000e+00)  ; FMax(a,b)
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 3
  %4959 = fadd fast float %4958, %4956
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 3
  %4962 = fadd fast float %4959, %4961
  %4963 = add i32 %4929, 0
  %4964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4965 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4964, i32 0)  ; GetDimensions(handle,mipLevel)
  %4966 = extractvalue %dx.types.Dimensions %4965, 0
  %4967 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4966)  ; FirstbitLo(value)
  %4968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.i32 %4968, 1
  %4970 = sub nsw i32 %4969, %4967
  %4971 = sitofp i32 %4970 to float
  %4972 = fsub fast float %4962, %4971
  %4973 = call float @dx.op.binary.f32(i32 35, float %4972, float 0.000000e+00)  ; FMax(a,b)
  %4974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4964, %dx.types.Handle %52, float %4935, float %4937, float %4925, float undef, i32 0, i32 0, i32 undef, float %4973)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4975 = extractvalue %dx.types.ResRet.f32 %4974, 0
  %4976 = fcmp ule float %4975, 0x3FE0101020000000
  %4977 = extractvalue %dx.types.CBufRet.i32 %4968, 0
  %4978 = and i32 %4977, 128
  %4979 = icmp ne i32 %4978, 0
  %4980 = and i1 %4976, %4979
  br i1 %4980, label %5131, label %4981

; <label>:4981                                    ; preds = %4915
  %4982 = add i32 %4916, 20
  %4983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4982, i32 undef)  ; BufferLoad(srv,index,wot)
  %4984 = extractvalue %dx.types.ResRet.f32 %4983, 0
  %4985 = add i32 %4916, 24
  %4986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4985, i32 undef)  ; BufferLoad(srv,index,wot)
  %4987 = extractvalue %dx.types.ResRet.f32 %4986, 0
  %4988 = add i32 %4916, 40
  %4989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4988, i32 undef)  ; BufferLoad(srv,index,wot)
  %4990 = extractvalue %dx.types.ResRet.f32 %4989, 0
  %4991 = add i32 %4916, 96
  %4992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4991, i32 undef)  ; BufferLoad(srv,index,wot)
  %4993 = extractvalue %dx.types.ResRet.i32 %4992, 0
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 2
  %4996 = fmul fast float %4995, %4935
  %4997 = fmul fast float %4995, %4937
  %4998 = extractvalue %dx.types.CBufRet.f32 %4994, 3
  %4999 = fadd fast float %4996, %4998
  %5000 = fadd fast float %4997, %4998
  %5001 = add i32 %4993, 0
  %5002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5001, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5003 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5002, i32 0)  ; GetDimensions(handle,mipLevel)
  %5004 = extractvalue %dx.types.Dimensions %5003, 0
  %5005 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5004)  ; FirstbitLo(value)
  %5006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.i32 %5006, 1
  %5008 = sub nsw i32 %5007, %5005
  %5009 = sitofp i32 %5008 to float
  %5010 = fsub fast float %4959, %5009
  %5011 = call float @dx.op.binary.f32(i32 35, float %5010, float 0.000000e+00)  ; FMax(a,b)
  %5012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5002, %dx.types.Handle %52, float %4999, float %5000, float %4990, float undef, i32 0, i32 0, i32 undef, float %5011)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5013 = extractvalue %dx.types.ResRet.f32 %5012, 0
  %5014 = fmul fast float %5013, %4984
  %5015 = fadd fast float %5014, %4987
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.CBufRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 3
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 3
  %5024 = extractvalue %dx.types.CBufRet.f32 %5016, 3
  %5025 = fadd fast float %5021, %4882
  %5026 = fadd fast float %5023, %4883
  %5027 = fadd fast float %5015, %5024
  %5028 = fmul fast float %5025, %5017
  %5029 = call float @dx.op.tertiary.f32(i32 46, float %5026, float %5018, float %5028)  ; FMad(a,b,c)
  %5030 = call float @dx.op.tertiary.f32(i32 46, float %5027, float %5019, float %5029)  ; FMad(a,b,c)
  %5031 = fsub fast float %5030, %5024
  %5032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5033 = extractvalue %dx.types.CBufRet.f32 %5032, 2
  %5034 = fsub fast float %5031, %5033
  %5035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5036 = extractvalue %dx.types.CBufRet.i32 %5035, 0
  %5037 = call i32 @dx.op.binary.i32(i32 40, i32 %4913, i32 %5036)  ; UMin(a,b)
  %5038 = mul i32 %5037, 36
  %5039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5038, i32 undef)  ; BufferLoad(srv,index,wot)
  %5040 = extractvalue %dx.types.ResRet.i32 %5039, 0
  %5041 = add i32 %5038, 4
  %5042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5043 = extractvalue %dx.types.CBufRet.f32 %5042, 0
  %5044 = fmul fast float %5043, %4935
  %5045 = fmul fast float %5043, %4937
  %5046 = extractvalue %dx.types.CBufRet.f32 %5042, 1
  %5047 = fadd fast float %5044, %5046
  %5048 = fadd fast float %5045, %5046
  %5049 = icmp eq i32 %5040, 0
  br i1 %5049, label %5118, label %5050

; <label>:5050                                    ; preds = %4981
  br label %5051

; <label>:5051                                    ; preds = %5108, %5050
  %5052 = phi float [ %5109, %5108 ], [ 0.000000e+00, %5050 ]
  %5053 = phi float [ %5110, %5108 ], [ 0.000000e+00, %5050 ]
  %5054 = phi float [ %5111, %5108 ], [ 0.000000e+00, %5050 ]
  %5055 = phi float [ %5112, %5108 ], [ 0.000000e+00, %5050 ]
  %5056 = phi float [ %5113, %5108 ], [ 0.000000e+00, %5050 ]
  %5057 = phi float [ %5114, %5108 ], [ 0.000000e+00, %5050 ]
  %5058 = phi i32 [ %5115, %5108 ], [ 0, %5050 ]
  %5059 = shl i32 %5058, 2
  %5060 = add i32 %4926, %5059
  %5061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 0
  %5063 = add i32 %4930, %5059
  %5064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5063, i32 undef)  ; BufferLoad(srv,index,wot)
  %5065 = extractvalue %dx.types.ResRet.i32 %5064, 0
  %5066 = add i32 %5065, 0
  %5067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5066, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5068 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5067, i32 0)  ; GetDimensions(handle,mipLevel)
  %5069 = extractvalue %dx.types.Dimensions %5068, 0
  %5070 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5069)  ; FirstbitLo(value)
  %5071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.i32 %5071, 1
  %5073 = sub nsw i32 %5072, %5070
  %5074 = sitofp i32 %5073 to float
  %5075 = fsub fast float %4959, %5074
  %5076 = call float @dx.op.binary.f32(i32 35, float %5075, float 0.000000e+00)  ; FMax(a,b)
  %5077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5067, %dx.types.Handle %52, float %5047, float %5048, float %5062, float undef, i32 0, i32 0, i32 undef, float %5076)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5078 = extractvalue %dx.types.ResRet.f32 %5077, 0
  %5079 = fcmp fast ogt float %5078, 0.000000e+00
  br i1 %5079, label %5080, label %5108

; <label>:5080                                    ; preds = %5051
  %5081 = add i32 %5041, %5059
  %5082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5081, i32 undef)  ; BufferLoad(srv,index,wot)
  %5083 = extractvalue %dx.types.ResRet.i32 %5082, 0
  %5084 = and i32 %5083, 32767
  %5085 = mul nuw nsw i32 %5084, 928
  %5086 = add nuw nsw i32 %5085, 48
  %5087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5086, i32 undef)  ; BufferLoad(srv,index,wot)
  %5088 = extractvalue %dx.types.ResRet.f32 %5087, 0
  %5089 = extractvalue %dx.types.ResRet.f32 %5087, 1
  %5090 = extractvalue %dx.types.ResRet.f32 %5087, 2
  %5091 = add nuw nsw i32 %5085, 60
  %5092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5091, i32 undef)  ; BufferLoad(srv,index,wot)
  %5093 = extractvalue %dx.types.ResRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.ResRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.ResRet.f32 %5092, 2
  %5096 = fmul fast float %5088, %5078
  %5097 = fmul fast float %5089, %5078
  %5098 = fmul fast float %5090, %5078
  %5099 = fadd fast float %5096, %5052
  %5100 = fadd fast float %5097, %5053
  %5101 = fadd fast float %5098, %5054
  %5102 = fmul fast float %5093, %5078
  %5103 = fmul fast float %5094, %5078
  %5104 = fmul fast float %5095, %5078
  %5105 = fadd fast float %5102, %5055
  %5106 = fadd fast float %5103, %5056
  %5107 = fadd fast float %5104, %5057
  br label %5108

; <label>:5108                                    ; preds = %5080, %5051
  %5109 = phi float [ %5099, %5080 ], [ %5052, %5051 ]
  %5110 = phi float [ %5100, %5080 ], [ %5053, %5051 ]
  %5111 = phi float [ %5101, %5080 ], [ %5054, %5051 ]
  %5112 = phi float [ %5105, %5080 ], [ %5055, %5051 ]
  %5113 = phi float [ %5106, %5080 ], [ %5056, %5051 ]
  %5114 = phi float [ %5107, %5080 ], [ %5057, %5051 ]
  %5115 = add nuw i32 %5058, 1
  %5116 = icmp eq i32 %5115, %5040
  br i1 %5116, label %5117, label %5051

; <label>:5117                                    ; preds = %5108
  br label %5118

; <label>:5118                                    ; preds = %5117, %4981
  %5119 = phi float [ 0.000000e+00, %4981 ], [ %5109, %5117 ]
  %5120 = phi float [ 0.000000e+00, %4981 ], [ %5110, %5117 ]
  %5121 = phi float [ 0.000000e+00, %4981 ], [ %5111, %5117 ]
  %5122 = phi float [ 0.000000e+00, %4981 ], [ %5112, %5117 ]
  %5123 = phi float [ 0.000000e+00, %4981 ], [ %5113, %5117 ]
  %5124 = phi float [ 0.000000e+00, %4981 ], [ %5114, %5117 ]
  %5125 = fadd fast float %5122, %5119
  %5126 = fmul fast float %5125, 0x3F847AE140000000
  %5127 = fadd fast float %5123, %5120
  %5128 = fmul fast float %5127, 0x3F847AE140000000
  %5129 = fadd fast float %5124, %5121
  %5130 = fmul fast float %5129, 0x3F847AE140000000
  br label %5131

; <label>:5131                                    ; preds = %5118, %4915, %4860, %4857, %4828, %4790
  %5132 = phi float [ %4842, %4828 ], [ -1.310720e+05, %4790 ], [ %5034, %5118 ], [ -1.310720e+05, %4860 ], [ -1.310720e+05, %4915 ], [ -1.310720e+05, %4857 ]
  %5133 = phi float [ %4852, %4828 ], [ 0.000000e+00, %4790 ], [ %5126, %5118 ], [ 0.000000e+00, %4860 ], [ 0.000000e+00, %4915 ], [ 0.000000e+00, %4857 ]
  %5134 = phi float [ %4854, %4828 ], [ 0.000000e+00, %4790 ], [ %5128, %5118 ], [ 0.000000e+00, %4860 ], [ 0.000000e+00, %4915 ], [ 0.000000e+00, %4857 ]
  %5135 = phi float [ %4856, %4828 ], [ 0.000000e+00, %4790 ], [ %5130, %5118 ], [ 0.000000e+00, %4860 ], [ 0.000000e+00, %4915 ], [ 0.000000e+00, %4857 ]
  %5136 = phi i1 [ true, %4828 ], [ false, %4790 ], [ true, %5118 ], [ false, %4860 ], [ false, %4915 ], [ false, %4857 ]
  %5137 = and i32 %208, 3
  %5138 = icmp eq i32 %5137, 1
  %5139 = select i1 %5138, float 1.000000e+00, float 0.000000e+00
  %5140 = fsub fast float %5132, %172
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = select i1 %5136, float %5141, float 1.000000e+00
  %5143 = fmul fast float %5142, %5139
  %5144 = icmp eq i32 %5137, 3
  %5145 = select i1 %5144, float 1.000000e+00, float %5143
  %5146 = call float @dx.op.binary.f32(i32 35, float %4667, float %5145)  ; FMax(a,b)
  %5147 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5148 = fcmp fast une float %5147, 0.000000e+00
  %5149 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5150 = call float @dx.op.unary.f32(i32 25, float %5149)  ; Rsqrt(value)
  br i1 %5148, label %5158, label %5151

; <label>:5151                                    ; preds = %5131
  %5152 = fmul fast float %5150, %170
  %5153 = fmul fast float %5150, %171
  %5154 = fmul fast float %5150, %172
  %5155 = fsub fast float -0.000000e+00, %5152
  %5156 = fsub fast float -0.000000e+00, %5153
  %5157 = fsub fast float -0.000000e+00, %5154
  br label %5326

; <label>:5158                                    ; preds = %5131
  %5159 = fmul fast float %170, %5150
  %5160 = fsub fast float -0.000000e+00, %5159
  %5161 = fmul fast float %171, %5150
  %5162 = fsub fast float -0.000000e+00, %5161
  %5163 = fmul fast float %172, %5150
  %5164 = fsub fast float -0.000000e+00, %5163
  %5165 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5162, float %5164, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5166 = fmul fast float %5147, 2.500000e+00
  %5167 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5168 = fmul fast float %5147, 0x4013FFFFE0000000
  %5169 = fadd fast float %5168, 0xBFFFFFFFE0000000
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = fmul fast float %5147, 0x4004000020000000
  %5172 = fadd fast float %5171, 0xBFF8000040000000
  %5173 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5174 = call float @dx.op.unary.f32(i32 7, float %5167)  ; Saturate(value)
  %5175 = fmul fast float %4670, 1.000000e+01
  %5176 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5177 = fmul fast float %5176, 2.000000e+00
  %5178 = fsub fast float 3.000000e+00, %5177
  %5179 = fmul fast float %5176, %5176
  %5180 = fmul fast float %5179, %5178
  %5181 = fsub fast float 1.000000e+00, %5180
  %5182 = fsub fast float 0x3FE3333340000000, %4691
  %5183 = fmul fast float %5182, 0x400AAAAAA0000000
  %5184 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5185 = fmul fast float %5181, %5184
  %5186 = fmul fast float %4769, 0x3FEA2B8620000000
  %5187 = fmul fast float %4770, 0x3FEA2B8620000000
  %5188 = fmul fast float %4771, 0x3FEA2B8620000000
  %5189 = fadd fast float %5186, 0x3FC81DFBA0000000
  %5190 = fmul fast float %5189, %4769
  %5191 = fadd fast float %5190, 0x3F910E6020000000
  %5192 = fadd fast float %5187, 0x3FC81DFBA0000000
  %5193 = fmul fast float %5192, %4770
  %5194 = fadd fast float %5193, 0x3F910E6020000000
  %5195 = fadd fast float %5188, 0x3FC81DFBA0000000
  %5196 = fmul fast float %5195, %4771
  %5197 = fadd fast float %5196, 0x3F910E6020000000
  %5198 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5194)  ; Saturate(value)
  %5200 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5201 = fsub fast float %5198, %4769
  %5202 = fsub fast float %5199, %4770
  %5203 = fsub fast float %5200, %4771
  %5204 = fmul fast float %5201, %5174
  %5205 = fmul fast float %5204, %5185
  %5206 = fmul fast float %5202, %5174
  %5207 = fmul fast float %5206, %5185
  %5208 = fmul fast float %5203, %5174
  %5209 = fmul fast float %5208, %5185
  %5210 = fadd fast float %5205, %4769
  %5211 = fadd fast float %5207, %4770
  %5212 = fadd fast float %5209, %4771
  %5213 = fmul fast float %4664, %4664
  %5214 = fmul fast float %5213, %5213
  %5215 = fadd fast float %5170, 1.000000e+00
  %5216 = fsub fast float %5215, %5185
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fsub fast float 1.000000e+00, %5214
  %5221 = call float @dx.op.binary.f32(i32 36, float %5217, float %5220)  ; FMin(a,b)
  %5222 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5223 = call float @dx.op.binary.f32(i32 35, float %5221, float %5222)  ; FMax(a,b)
  %5224 = fadd fast float %5219, 0xBFE4CCCCC0000000
  %5225 = fmul fast float %5224, 0x4006DB6DA0000000
  %5226 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5227 = fmul fast float %5226, 2.000000e+00
  %5228 = fsub fast float 3.000000e+00, %5227
  %5229 = bitcast float %4688 to i32
  %5230 = ashr i32 %5229, 1
  %5231 = add nsw i32 %5230, 532487669
  %5232 = bitcast i32 %5231 to float
  %5233 = fsub fast float 1.000000e+00, %5232
  %5234 = bitcast float %5233 to i32
  %5235 = sub nsw i32 2129859010, %5234
  %5236 = bitcast i32 %5235 to float
  %5237 = fmul fast float %5236, 2.000000e+00
  %5238 = bitcast float %4689 to i32
  %5239 = ashr i32 %5238, 1
  %5240 = add nsw i32 %5239, 532487669
  %5241 = bitcast i32 %5240 to float
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = bitcast float %5242 to i32
  %5244 = sub nsw i32 2129859010, %5243
  %5245 = bitcast i32 %5244 to float
  %5246 = fmul fast float %5245, 2.000000e+00
  %5247 = bitcast float %4690 to i32
  %5248 = ashr i32 %5247, 1
  %5249 = add nsw i32 %5248, 532487669
  %5250 = bitcast i32 %5249 to float
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = bitcast float %5251 to i32
  %5253 = sub nsw i32 2129859010, %5252
  %5254 = bitcast i32 %5253 to float
  %5255 = fmul fast float %5254, 2.000000e+00
  %5256 = fsub fast float 0x4002A9FBE0000000, %5237
  %5257 = fadd fast float %5237, 0x3FD54FDF00000000
  %5258 = bitcast float %5257 to i32
  %5259 = sub nsw i32 2129859010, %5258
  %5260 = bitcast i32 %5259 to float
  %5261 = fmul fast float %5260, %5256
  %5262 = fmul fast float %5261, %5261
  %5263 = fsub fast float 0x4002A9FBE0000000, %5246
  %5264 = fadd fast float %5246, 0x3FD54FDF00000000
  %5265 = bitcast float %5264 to i32
  %5266 = sub nsw i32 2129859010, %5265
  %5267 = bitcast i32 %5266 to float
  %5268 = fmul fast float %5267, %5263
  %5269 = fmul fast float %5268, %5268
  %5270 = fsub fast float 0x4002A9FBE0000000, %5255
  %5271 = fadd fast float %5255, 0x3FD54FDF00000000
  %5272 = bitcast float %5271 to i32
  %5273 = sub nsw i32 2129859010, %5272
  %5274 = bitcast i32 %5273 to float
  %5275 = fmul fast float %5274, %5270
  %5276 = fmul fast float %5275, %5275
  %5277 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5262)  ; FMax(a,b)
  %5278 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5269)  ; FMax(a,b)
  %5279 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5276)  ; FMax(a,b)
  %5280 = fsub fast float 1.000000e+00, %5165
  %5281 = fadd fast float %5280, %5181
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fsub fast float 1.000000e+00, %5145
  %5284 = fmul fast float %5223, %5283
  %5285 = fmul fast float %5226, %5226
  %5286 = fmul fast float %5285, %5284
  %5287 = fmul fast float %5286, %5228
  %5288 = fmul fast float %5283, 0xBFE99999A0000000
  %5289 = fmul fast float %5288, %5174
  %5290 = fmul fast float %5289, %5185
  %5291 = fadd fast float %5290, 1.000000e+00
  %5292 = fadd fast float %4691, -1.000000e+00
  %5293 = fmul fast float %5291, %5292
  %5294 = fadd fast float %5293, 1.000000e+00
  %5295 = fsub fast float %5277, %4688
  %5296 = fsub fast float %5278, %4689
  %5297 = fsub fast float %5279, %4690
  %5298 = fmul fast float %5287, %5295
  %5299 = fmul fast float %5287, %5296
  %5300 = fmul fast float %5287, %5297
  %5301 = fadd fast float %5298, %4688
  %5302 = fadd fast float %5299, %4689
  %5303 = fadd fast float %5300, %4690
  %5304 = fsub fast float %120, %4649
  %5305 = fsub fast float %122, %4650
  %5306 = fsub fast float %124, %4651
  %5307 = fmul fast float %5287, %5304
  %5308 = fmul fast float %5287, %5305
  %5309 = fmul fast float %5287, %5306
  %5310 = fadd fast float %5307, %4649
  %5311 = fadd fast float %5308, %4650
  %5312 = fadd fast float %5309, %4651
  %5313 = fmul fast float %5287, %5282
  %5314 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5315 = fsub fast float 1.000000e+00, %5314
  %5316 = fmul fast float %5313, %5315
  %5317 = fadd fast float %5316, %5314
  %5318 = fsub fast float 1.000000e+00, %4664
  %5319 = fmul fast float %5287, %5318
  %5320 = fadd fast float %5319, %4664
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5310, float %5311, float %5312, float %5310, float %5311, float %5312)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.unary.f32(i32 25, float %5321)  ; Rsqrt(value)
  %5323 = fmul fast float %5310, %5322
  %5324 = fmul fast float %5311, %5322
  %5325 = fmul fast float %5312, %5322
  br label %5326

; <label>:5326                                    ; preds = %5158, %5151
  %5327 = phi float [ %5157, %5151 ], [ %5164, %5158 ]
  %5328 = phi float [ %5156, %5151 ], [ %5162, %5158 ]
  %5329 = phi float [ %5155, %5151 ], [ %5160, %5158 ]
  %5330 = phi float [ %5154, %5151 ], [ %5163, %5158 ]
  %5331 = phi float [ %5153, %5151 ], [ %5161, %5158 ]
  %5332 = phi float [ %5152, %5151 ], [ %5159, %5158 ]
  %5333 = phi float [ %4649, %5151 ], [ %5323, %5158 ]
  %5334 = phi float [ %4650, %5151 ], [ %5324, %5158 ]
  %5335 = phi float [ %4651, %5151 ], [ %5325, %5158 ]
  %5336 = phi float [ %4769, %5151 ], [ %5210, %5158 ]
  %5337 = phi float [ %4770, %5151 ], [ %5211, %5158 ]
  %5338 = phi float [ %4771, %5151 ], [ %5212, %5158 ]
  %5339 = phi float [ %4688, %5151 ], [ %5301, %5158 ]
  %5340 = phi float [ %4689, %5151 ], [ %5302, %5158 ]
  %5341 = phi float [ %4690, %5151 ], [ %5303, %5158 ]
  %5342 = phi float [ %4691, %5151 ], [ %5317, %5158 ]
  %5343 = phi float [ %4664, %5151 ], [ %5320, %5158 ]
  %5344 = fsub fast float -0.000000e+00, %172
  %5345 = select i1 %232, float 0.000000e+00, float %5341
  %5346 = call float @dx.op.dot3.f32(i32 55, float %5333, float %5334, float %5335, float %5329, float %5328, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5331, float %5330, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = fmul fast float %5348, 2.000000e+00
  %5350 = fmul fast float %5349, %5333
  %5351 = fmul fast float %5349, %5334
  %5352 = fmul fast float %5349, %5335
  %5353 = fsub fast float %5332, %5350
  %5354 = fsub fast float %5331, %5351
  %5355 = fsub fast float %5330, %5352
  %5356 = call float @dx.op.binary.f32(i32 36, float %5343, float 1.000000e+00)  ; FMin(a,b)
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = bitcast float %5357 to i32
  %5359 = ashr i32 %5358, 1
  %5360 = add nsw i32 %5359, 532487669
  %5361 = bitcast i32 %5360 to float
  %5362 = fsub fast float 1.000000e+00, %5342
  %5363 = call float @dx.op.binary.f32(i32 35, float %5362, float 0x3F847AE140000000)  ; FMax(a,b)
  %5364 = fmul fast float %5363, %5363
  %5365 = fmul fast float %5364, %5364
  %5366 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5361, float %5365, float %5366, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = fsub fast float 1.000000e+00, %5343
  %5370 = bitcast float %5369 to i32
  %5371 = sub nsw i32 2129859010, %5370
  %5372 = bitcast i32 %5371 to float
  %5373 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = fmul fast float %5373, 0x3FD20DD760000000
  %5375 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5376 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = fcmp fast oeq float %5376, 0.000000e+00
  %5378 = fcmp fast oeq float %5375, 0.000000e+00
  %5379 = or i1 %5378, %5377
  br i1 %5379, label %5409, label %5380

; <label>:5380                                    ; preds = %5326
  %5381 = fsub fast float -0.000000e+00, %82
  %5382 = fsub fast float -0.000000e+00, %80
  %5383 = call float @dx.op.unary.f32(i32 24, float %5376)  ; Sqrt(value)
  %5384 = fdiv fast float %5383, %5375
  %5385 = fcmp fast ogt float %5384, 0x3FFB6F8900000000
  %5386 = select i1 %5385, float 0x3FFB6F8900000000, float %5384
  %5387 = fmul fast float %5386, 0x3FE8A23460000000
  %5388 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5389 = call float @dx.op.binary.f32(i32 35, float %5386, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5390 = fmul fast float %5388, %5375
  %5391 = fmul fast float %5389, 0x3FF279A740000000
  %5392 = fadd fast float %5391, -1.000000e+00
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5381, float %5382, float %81, float %5381, float %5382, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 25, float %5393)  ; Rsqrt(value)
  %5395 = fmul fast float %5394, %5381
  %5396 = fmul fast float %5394, %5382
  %5397 = fmul fast float %5394, %81
  %5398 = fmul fast float %5392, %5392
  %5399 = fsub fast float 1.000000e+00, %5398
  %5400 = fmul fast float %5389, 0x40005F8BE0000000
  %5401 = fsub fast float 0x400C5BF8A0000000, %5400
  %5402 = fdiv fast float %5390, %5401
  %5403 = fmul fast float %5402, 0x3FEE31C3C0000000
  %5404 = fmul fast float %5403, %5399
  %5405 = fmul fast float %5389, 0x3FDACB7480000000
  %5406 = fadd fast float %5405, 0xBFD7347680000000
  %5407 = fmul fast float %5406, %5402
  %5408 = fmul fast float %5407, %5399
  br label %5409

; <label>:5409                                    ; preds = %5380, %5326
  %5410 = phi float [ %5395, %5380 ], [ 0.000000e+00, %5326 ]
  %5411 = phi float [ %5396, %5380 ], [ 0.000000e+00, %5326 ]
  %5412 = phi float [ %5397, %5380 ], [ 0.000000e+00, %5326 ]
  %5413 = phi float [ %5404, %5380 ], [ 0.000000e+00, %5326 ]
  %5414 = phi float [ %5408, %5380 ], [ 0.000000e+00, %5326 ]
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5410, float %5411, float %5412, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = fmul fast float %5415, 0x3FDF454380000000
  %5417 = fmul fast float %5415, %5415
  %5418 = fmul fast float %5417, 0x3FEE471020000000
  %5419 = fadd fast float %5418, 0xBFD42F6020000000
  %5420 = fmul fast float %5375, 0x3FD20DD760000000
  %5421 = fmul fast float %5419, %5414
  %5422 = fadd fast float %5421, %5420
  %5423 = fmul fast float %5416, %5413
  %5424 = fadd fast float %5422, %5423
  %5425 = fsub fast float %5422, %5423
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5410, float %5411, float %5412, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = fmul fast float %5426, 0x3FDF454380000000
  %5428 = fmul fast float %5426, %5426
  %5429 = fmul fast float %5428, 0x3FEE471020000000
  %5430 = fadd fast float %5429, 0xBFD42F6020000000
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5375, float %5413, float %5414, float 0x3FD20DD760000000, float %5427, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5433 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = fcmp fast oeq float %5433, 0.000000e+00
  %5435 = fcmp fast oeq float %5432, 0.000000e+00
  %5436 = or i1 %5435, %5434
  br i1 %5436, label %5466, label %5437

; <label>:5437                                    ; preds = %5409
  %5438 = fsub fast float -0.000000e+00, %78
  %5439 = fsub fast float -0.000000e+00, %76
  %5440 = call float @dx.op.unary.f32(i32 24, float %5433)  ; Sqrt(value)
  %5441 = fdiv fast float %5440, %5432
  %5442 = fcmp fast ogt float %5441, 0x3FFB6F8900000000
  %5443 = select i1 %5442, float 0x3FFB6F8900000000, float %5441
  %5444 = fmul fast float %5443, 0x3FE8A23460000000
  %5445 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5446 = call float @dx.op.binary.f32(i32 35, float %5443, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5447 = fmul fast float %5445, %5432
  %5448 = fmul fast float %5446, 0x3FF279A740000000
  %5449 = fadd fast float %5448, -1.000000e+00
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %77, float %5438, float %5439, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = call float @dx.op.unary.f32(i32 25, float %5450)  ; Rsqrt(value)
  %5452 = fmul fast float %5451, %5438
  %5453 = fmul fast float %5451, %5439
  %5454 = fmul fast float %5451, %77
  %5455 = fmul fast float %5449, %5449
  %5456 = fsub fast float 1.000000e+00, %5455
  %5457 = fmul fast float %5446, 0x40005F8BE0000000
  %5458 = fsub fast float 0x400C5BF8A0000000, %5457
  %5459 = fdiv fast float %5447, %5458
  %5460 = fmul fast float %5459, 0x3FEE31C3C0000000
  %5461 = fmul fast float %5460, %5456
  %5462 = fmul fast float %5446, 0x3FDACB7480000000
  %5463 = fadd fast float %5462, 0xBFD7347680000000
  %5464 = fmul fast float %5463, %5459
  %5465 = fmul fast float %5464, %5456
  br label %5466

; <label>:5466                                    ; preds = %5437, %5409
  %5467 = phi float [ %5452, %5437 ], [ 0.000000e+00, %5409 ]
  %5468 = phi float [ %5453, %5437 ], [ 0.000000e+00, %5409 ]
  %5469 = phi float [ %5454, %5437 ], [ 0.000000e+00, %5409 ]
  %5470 = phi float [ %5461, %5437 ], [ 0.000000e+00, %5409 ]
  %5471 = phi float [ %5465, %5437 ], [ 0.000000e+00, %5409 ]
  %5472 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5468, float %5469, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = fmul fast float %5472, 0x3FDF454380000000
  %5474 = fmul fast float %5472, %5472
  %5475 = fmul fast float %5474, 0x3FEE471020000000
  %5476 = fadd fast float %5475, 0xBFD42F6020000000
  %5477 = fmul fast float %5432, 0x3FD20DD760000000
  %5478 = fmul fast float %5476, %5471
  %5479 = fadd fast float %5478, %5477
  %5480 = fmul fast float %5473, %5470
  %5481 = fadd fast float %5479, %5480
  %5482 = fsub fast float %5479, %5480
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5468, float %5469, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = fmul fast float %5483, 0x3FDF454380000000
  %5485 = fmul fast float %5483, %5483
  %5486 = fmul fast float %5485, 0x3FEE471020000000
  %5487 = fadd fast float %5486, 0xBFD42F6020000000
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5432, float %5470, float %5471, float 0x3FD20DD760000000, float %5484, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5490 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = fcmp fast oeq float %5490, 0.000000e+00
  %5492 = fcmp fast oeq float %5489, 0.000000e+00
  %5493 = or i1 %5492, %5491
  br i1 %5493, label %5523, label %5494

; <label>:5494                                    ; preds = %5466
  %5495 = fsub fast float -0.000000e+00, %74
  %5496 = fsub fast float -0.000000e+00, %72
  %5497 = call float @dx.op.unary.f32(i32 24, float %5490)  ; Sqrt(value)
  %5498 = fdiv fast float %5497, %5489
  %5499 = fcmp fast ogt float %5498, 0x3FFB6F8900000000
  %5500 = select i1 %5499, float 0x3FFB6F8900000000, float %5498
  %5501 = fmul fast float %5500, 0x3FE8A23460000000
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = call float @dx.op.binary.f32(i32 35, float %5500, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5504 = fmul fast float %5502, %5489
  %5505 = fmul fast float %5503, 0x3FF279A740000000
  %5506 = fadd fast float %5505, -1.000000e+00
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5495, float %5496, float %73, float %5495, float %5496, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = call float @dx.op.unary.f32(i32 25, float %5507)  ; Rsqrt(value)
  %5509 = fmul fast float %5508, %5495
  %5510 = fmul fast float %5508, %5496
  %5511 = fmul fast float %5508, %73
  %5512 = fmul fast float %5506, %5506
  %5513 = fsub fast float 1.000000e+00, %5512
  %5514 = fmul fast float %5503, 0x40005F8BE0000000
  %5515 = fsub fast float 0x400C5BF8A0000000, %5514
  %5516 = fdiv fast float %5504, %5515
  %5517 = fmul fast float %5516, 0x3FEE31C3C0000000
  %5518 = fmul fast float %5517, %5513
  %5519 = fmul fast float %5503, 0x3FDACB7480000000
  %5520 = fadd fast float %5519, 0xBFD7347680000000
  %5521 = fmul fast float %5520, %5516
  %5522 = fmul fast float %5521, %5513
  br label %5523

; <label>:5523                                    ; preds = %5494, %5466
  %5524 = phi float [ %5509, %5494 ], [ 0.000000e+00, %5466 ]
  %5525 = phi float [ %5510, %5494 ], [ 0.000000e+00, %5466 ]
  %5526 = phi float [ %5511, %5494 ], [ 0.000000e+00, %5466 ]
  %5527 = phi float [ %5518, %5494 ], [ 0.000000e+00, %5466 ]
  %5528 = phi float [ %5522, %5494 ], [ 0.000000e+00, %5466 ]
  %5529 = call float @dx.op.dot3.f32(i32 55, float %5524, float %5525, float %5526, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = fmul fast float %5529, 0x3FDF454380000000
  %5531 = fmul fast float %5529, %5529
  %5532 = fmul fast float %5531, 0x3FEE471020000000
  %5533 = fadd fast float %5532, 0xBFD42F6020000000
  %5534 = fmul fast float %5489, 0x3FD20DD760000000
  %5535 = fmul fast float %5533, %5528
  %5536 = fadd fast float %5535, %5534
  %5537 = fmul fast float %5530, %5527
  %5538 = fadd fast float %5536, %5537
  %5539 = fsub fast float %5536, %5537
  %5540 = call float @dx.op.dot3.f32(i32 55, float %5524, float %5525, float %5526, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5541 = fmul fast float %5540, 0x3FDF454380000000
  %5542 = fmul fast float %5540, %5540
  %5543 = fmul fast float %5542, 0x3FEE471020000000
  %5544 = fadd fast float %5543, 0xBFD42F6020000000
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5527, float %5528, float 0x3FD20DD760000000, float %5541, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = call float @dx.op.binary.f32(i32 35, float %5424, float 0.000000e+00)  ; FMax(a,b)
  %5547 = call float @dx.op.binary.f32(i32 35, float %5481, float 0.000000e+00)  ; FMax(a,b)
  %5548 = call float @dx.op.binary.f32(i32 35, float %5538, float 0.000000e+00)  ; FMax(a,b)
  %5549 = call float @dx.op.binary.f32(i32 35, float %5425, float 0.000000e+00)  ; FMax(a,b)
  %5550 = call float @dx.op.binary.f32(i32 35, float %5482, float 0.000000e+00)  ; FMax(a,b)
  %5551 = call float @dx.op.binary.f32(i32 35, float %5539, float 0.000000e+00)  ; FMax(a,b)
  %5552 = call float @dx.op.binary.f32(i32 35, float %5431, float 0.000000e+00)  ; FMax(a,b)
  %5553 = call float @dx.op.binary.f32(i32 35, float %5488, float 0.000000e+00)  ; FMax(a,b)
  %5554 = call float @dx.op.binary.f32(i32 35, float %5545, float 0.000000e+00)  ; FMax(a,b)
  %5555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.f32 %5555, 0
  %5557 = call float @dx.op.binary.f32(i32 36, float %5336, float %5556)  ; FMin(a,b)
  %5558 = fmul fast float %5557, %5357
  %5559 = fsub fast float 1.000000e+00, %5558
  %5560 = bitcast float %5559 to i32
  %5561 = sub nsw i32 2129859010, %5560
  %5562 = bitcast i32 %5561 to float
  %5563 = call float @dx.op.binary.f32(i32 36, float %5337, float %5556)  ; FMin(a,b)
  %5564 = fmul fast float %5563, %5357
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = bitcast float %5565 to i32
  %5567 = sub nsw i32 2129859010, %5566
  %5568 = bitcast i32 %5567 to float
  %5569 = call float @dx.op.binary.f32(i32 36, float %5338, float %5556)  ; FMin(a,b)
  %5570 = fmul fast float %5569, %5357
  %5571 = fsub fast float 1.000000e+00, %5570
  %5572 = bitcast float %5571 to i32
  %5573 = sub nsw i32 2129859010, %5572
  %5574 = bitcast i32 %5573 to float
  %5575 = fmul fast float %5546, %5356
  %5576 = fmul fast float %5575, %5562
  %5577 = fmul fast float %5547, %5356
  %5578 = fmul fast float %5577, %5568
  %5579 = fmul fast float %5548, %5356
  %5580 = fmul fast float %5579, %5574
  %5581 = call float @dx.op.binary.f32(i32 36, float %5339, float %5556)  ; FMin(a,b)
  %5582 = fmul fast float %5581, %5357
  %5583 = fsub fast float 1.000000e+00, %5582
  %5584 = bitcast float %5583 to i32
  %5585 = sub nsw i32 2129859010, %5584
  %5586 = bitcast i32 %5585 to float
  %5587 = call float @dx.op.binary.f32(i32 36, float %5340, float %5556)  ; FMin(a,b)
  %5588 = fmul fast float %5587, %5357
  %5589 = fsub fast float 1.000000e+00, %5588
  %5590 = bitcast float %5589 to i32
  %5591 = sub nsw i32 2129859010, %5590
  %5592 = bitcast i32 %5591 to float
  %5593 = call float @dx.op.binary.f32(i32 36, float %5345, float %5556)  ; FMin(a,b)
  %5594 = fmul fast float %5593, %5357
  %5595 = fsub fast float 1.000000e+00, %5594
  %5596 = bitcast float %5595 to i32
  %5597 = sub nsw i32 2129859010, %5596
  %5598 = bitcast i32 %5597 to float
  %5599 = fmul fast float %5552, %5356
  %5600 = fmul fast float %5599, %5586
  %5601 = fmul fast float %5553, %5356
  %5602 = fmul fast float %5601, %5592
  %5603 = fmul fast float %5554, %5356
  %5604 = fmul fast float %5603, %5598
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5578, float %5580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = select i1 %232, float 0.000000e+00, float %5576
  %5607 = select i1 %232, float %5605, float %5578
  %5608 = select i1 %232, float 0.000000e+00, float %5580
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5549, float %5550, float %5551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = select i1 %232, float 0.000000e+00, float %5549
  %5611 = select i1 %232, float %5609, float %5550
  %5612 = select i1 %232, float 0.000000e+00, float %5551
  %5613 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5602, float %5604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5614 = select i1 %232, float 0.000000e+00, float %5600
  %5615 = select i1 %232, float %5613, float %5602
  %5616 = select i1 %232, float 0.000000e+00, float %5604
  %5617 = fmul fast float %5347, 9.843750e-01
  %5618 = fmul fast float %5342, 9.843750e-01
  %5619 = fadd fast float %5617, 7.812500e-03
  %5620 = fadd fast float %5618, 7.812500e-03
  %5621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5619, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5622 = extractvalue %dx.types.ResRet.f32 %5621, 2
  %5623 = extractvalue %dx.types.ResRet.f32 %5621, 3
  %5624 = fmul fast float %5622, %5339
  %5625 = fmul fast float %5622, %5340
  %5626 = fmul fast float %5622, %5345
  %5627 = fadd fast float %5624, %5623
  %5628 = fadd fast float %5625, %5623
  %5629 = fadd fast float %5626, %5623
  %5630 = fcmp fast ogt float %4665, 0.000000e+00
  br i1 %5630, label %5631, label %5657

; <label>:5631                                    ; preds = %5523
  %5632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4665, float %5347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5633 = extractvalue %dx.types.ResRet.f32 %5632, 0
  %5634 = extractvalue %dx.types.ResRet.f32 %5632, 1
  %5635 = extractvalue %dx.types.ResRet.f32 %5632, 2
  %5636 = fadd fast float %5633, -5.000000e-01
  %5637 = fadd fast float %5634, -5.000000e-01
  %5638 = fadd fast float %5635, -5.000000e-01
  %5639 = fsub fast float 1.000000e+00, %5339
  %5640 = fsub fast float 1.000000e+00, %5340
  %5641 = fsub fast float 1.000000e+00, %5345
  %5642 = fmul fast float %5339, 4.000000e+00
  %5643 = fmul fast float %5642, %5639
  %5644 = fmul fast float %5643, %5636
  %5645 = fmul fast float %5340, 4.000000e+00
  %5646 = fmul fast float %5645, %5640
  %5647 = fmul fast float %5646, %5637
  %5648 = fmul fast float %5345, 4.000000e+00
  %5649 = fmul fast float %5648, %5641
  %5650 = fmul fast float %5649, %5638
  %5651 = fadd fast float %5644, %5627
  %5652 = fadd fast float %5647, %5628
  %5653 = fadd fast float %5650, %5629
  %5654 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  br label %5657

; <label>:5657                                    ; preds = %5631, %5523
  %5658 = phi float [ %5654, %5631 ], [ %5627, %5523 ]
  %5659 = phi float [ %5655, %5631 ], [ %5628, %5523 ]
  %5660 = phi float [ %5656, %5631 ], [ %5629, %5523 ]
  %5661 = call float @dx.op.binary.f32(i32 35, float %5659, float %5660)  ; FMax(a,b)
  %5662 = call float @dx.op.binary.f32(i32 35, float %5658, float %5661)  ; FMax(a,b)
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = fmul fast float %5662, %5342
  %5665 = fadd fast float %5664, %5342
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5668 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5669 = fmul fast float %5665, %5667
  %5670 = fadd fast float %5669, %5668
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = fsub fast float 1.000000e+00, %5368
  %5673 = fadd fast float %5672, %5671
  %5674 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  %5675 = fcmp fast olt float %5674, 1.000000e+00
  br i1 %5675, label %5676, label %6152

; <label>:5676                                    ; preds = %5657
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5679 = extractvalue %dx.types.CBufRet.f32 %5677, 3
  %5680 = fmul fast float %5678, %111
  %5681 = fmul fast float %5679, %112
  %5682 = fptoui float %5680 to i32
  %5683 = fptoui float %5681 to i32
  %5684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5684, 0
  %5686 = extractvalue %dx.types.CBufRet.f32 %5684, 2
  %5687 = extractvalue %dx.types.CBufRet.f32 %5684, 3
  %5688 = fadd fast float %99, -4.000000e+00
  %5689 = call float @dx.op.binary.f32(i32 35, float %5688, float 0.000000e+00)  ; FMax(a,b)
  %5690 = fadd fast float %5689, %5685
  %5691 = fmul fast float %5690, %5686
  %5692 = call float @dx.op.unary.f32(i32 23, float %5691)  ; Log(value)
  %5693 = fmul fast float %5692, %5687
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5696 = fmul fast float %5693, %5695
  %5697 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.i32 %5698, 1
  %5700 = add i32 %5699, -1
  %5701 = uitofp i32 %5699 to float
  %5702 = fmul fast float %5701, %5697
  %5703 = fptoui float %5702 to i32
  %5704 = call i32 @dx.op.binary.i32(i32 40, i32 %5703, i32 %5700)  ; UMin(a,b)
  %5705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.i32 %5705, 2
  %5707 = extractvalue %dx.types.CBufRet.i32 %5705, 3
  %5708 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5683, i32 %5706, i32 %5682)  ; UMad(a,b,c)
  %5709 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5704, i32 %5707, i32 %5708)  ; UMad(a,b,c)
  %5710 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %5711 = fptoui float %5710 to i32
  %5712 = lshr i32 %5711, 5
  %5713 = call i32 @dx.op.binary.i32(i32 40, i32 %5712, i32 8191)  ; UMin(a,b)
  %5714 = fsub fast float %5132, %172
  %5715 = call float @dx.op.unary.f32(i32 7, float %5714)  ; Saturate(value)
  %5716 = fcmp fast ogt float %5715, 0.000000e+00
  %5717 = fcmp fast ogt float %5355, 0.000000e+00
  %5718 = and i1 %5717, %5716
  br i1 %5718, label %5719, label %5748

; <label>:5719                                    ; preds = %5676
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5353, float %5354, float %5355, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = call float @dx.op.binary.f32(i32 35, float %5720, float -1.000000e+00)  ; FMax(a,b)
  %5722 = call float @dx.op.binary.f32(i32 36, float %5721, float 1.000000e+00)  ; FMin(a,b)
  %5723 = fmul fast float %5722, %5722
  %5724 = fsub fast float 1.000000e+00, %5723
  %5725 = fmul fast float %5724, 0x3FFC6E2300000000
  %5726 = fsub fast float 1.000000e+00, %5725
  %5727 = fcmp fast ogt float %5726, 0.000000e+00
  %5728 = call float @dx.op.unary.f32(i32 24, float %5726)  ; Sqrt(value)
  %5729 = fsub fast float 1.000000e+00, %5728
  %5730 = call float @dx.op.unary.f32(i32 23, float %5729)  ; Log(value)
  %5731 = fmul fast float %5730, 5.000000e+00
  %5732 = call float @dx.op.unary.f32(i32 21, float %5731)  ; Exp(value)
  %5733 = fmul fast float %5732, 0x3FEF591A60000000
  %5734 = fadd fast float %5733, 0x3F94DCB540000000
  %5735 = select i1 %5727, float %5734, float 1.000000e+00
  %5736 = fcmp fast oge float %5735, 1.000000e+00
  %5737 = fmul fast float %5720, 2.000000e+00
  %5738 = fadd fast float %5737, %5355
  %5739 = select i1 %5736, float %5738, float %5355
  %5740 = fsub fast float %5739, %5355
  %5741 = fmul fast float %5740, %5715
  %5742 = fadd fast float %5741, %5355
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5353, float %5354, float %5742, float %5353, float %5354, float %5742)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.unary.f32(i32 25, float %5743)  ; Rsqrt(value)
  %5745 = fmul fast float %5744, %5353
  %5746 = fmul fast float %5744, %5354
  %5747 = fmul fast float %5742, %5744
  br label %5748

; <label>:5748                                    ; preds = %5719, %5676
  %5749 = phi float [ %5745, %5719 ], [ %5353, %5676 ]
  %5750 = phi float [ %5746, %5719 ], [ %5354, %5676 ]
  %5751 = phi float [ %5747, %5719 ], [ %5355, %5676 ]
  %5752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.i32 %5752, 2
  %5754 = add nsw i32 %5753, -1
  %5755 = call i32 @dx.op.binary.i32(i32 37, i32 %5754, i32 0)  ; IMax(a,b)
  %5756 = shl i32 %5713, 2
  %5757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5756, i32 undef)  ; BufferLoad(srv,index,wot)
  %5758 = extractvalue %dx.types.ResRet.i32 %5757, 0
  %5759 = lshr i32 %5758, 16
  %5760 = and i32 %5758, 65535
  %5761 = lshr i32 %5758, 21
  %5762 = lshr i32 %5760, 5
  %5763 = call i32 @dx.op.binary.i32(i32 40, i32 %5762, i32 %5755)  ; UMin(a,b)
  %5764 = icmp ugt i32 %5761, %5763
  br i1 %5764, label %6128, label %5765

; <label>:5765                                    ; preds = %5748
  br label %5766

; <label>:5766                                    ; preds = %6120, %5765
  %5767 = phi float [ %6121, %6120 ], [ 0.000000e+00, %5765 ]
  %5768 = phi float [ %6122, %6120 ], [ 0.000000e+00, %5765 ]
  %5769 = phi float [ %6123, %6120 ], [ 0.000000e+00, %5765 ]
  %5770 = phi float [ %6124, %6120 ], [ 1.000000e+00, %5765 ]
  %5771 = phi i32 [ %6125, %6120 ], [ %5761, %5765 ]
  %5772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.i32 %5772, 2
  %5774 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5709, i32 %5773, i32 %5771)  ; UMad(a,b,c)
  %5775 = shl i32 %5774, 2
  %5776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5775, i32 undef)  ; BufferLoad(srv,index,wot)
  %5777 = extractvalue %dx.types.ResRet.i32 %5776, 0
  %5778 = shl i32 %5771, 5
  %5779 = sub nsw i32 %5759, %5778
  %5780 = call i32 @dx.op.binary.i32(i32 37, i32 %5779, i32 0)  ; IMax(a,b)
  %5781 = call i32 @dx.op.binary.i32(i32 38, i32 %5780, i32 31)  ; IMin(a,b)
  %5782 = sub nsw i32 1, %5759
  %5783 = add nsw i32 %5782, %5760
  %5784 = call i32 @dx.op.binary.i32(i32 37, i32 %5783, i32 0)  ; IMax(a,b)
  %5785 = call i32 @dx.op.binary.i32(i32 38, i32 %5784, i32 32)  ; IMin(a,b)
  %5786 = and i32 %5785, 31
  %5787 = shl i32 -1, %5786
  %5788 = xor i32 %5787, -1
  %5789 = and i32 %5781, 31
  %5790 = shl i32 %5788, %5789
  %5791 = icmp eq i32 %5785, 32
  %5792 = select i1 %5791, i32 -1, i32 %5790
  %5793 = and i32 %5792, %5777
  %5794 = icmp eq i32 %5793, 0
  br i1 %5794, label %6120, label %5795

; <label>:5795                                    ; preds = %5766
  br label %5796

; <label>:5796                                    ; preds = %5903, %5795
  %5797 = phi float [ %5904, %5903 ], [ %5767, %5795 ]
  %5798 = phi float [ %5905, %5903 ], [ %5768, %5795 ]
  %5799 = phi float [ %5906, %5903 ], [ %5769, %5795 ]
  %5800 = phi float [ %5907, %5903 ], [ %5770, %5795 ]
  %5801 = phi i32 [ %5806, %5903 ], [ %5793, %5795 ]
  %5802 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5801)  ; FirstbitLo(value)
  %5803 = add i32 %5802, %5778
  %5804 = and i32 %5802, 31
  %5805 = shl i32 1, %5804
  %5806 = xor i32 %5805, %5801
  %5807 = mul i32 %5803, 72
  %5808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5807, i32 undef)  ; BufferLoad(srv,index,wot)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.ResRet.f32 %5808, 1
  %5811 = extractvalue %dx.types.ResRet.f32 %5808, 2
  %5812 = add i32 %5807, 12
  %5813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5812, i32 undef)  ; BufferLoad(srv,index,wot)
  %5814 = extractvalue %dx.types.ResRet.i32 %5813, 0
  %5815 = add i32 %5807, 16
  %5816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5815, i32 undef)  ; BufferLoad(srv,index,wot)
  %5817 = extractvalue %dx.types.ResRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.ResRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.ResRet.f32 %5816, 2
  %5820 = add i32 %5807, 28
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = add i32 %5807, 32
  %5824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5823, i32 undef)  ; BufferLoad(srv,index,wot)
  %5825 = extractvalue %dx.types.ResRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.ResRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.ResRet.f32 %5824, 2
  %5828 = extractvalue %dx.types.ResRet.f32 %5824, 3
  %5829 = add i32 %5807, 48
  %5830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5829, i32 undef)  ; BufferLoad(srv,index,wot)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.ResRet.f32 %5830, 1
  %5833 = add i32 %5807, 56
  %5834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 0
  %5836 = extractvalue %dx.types.ResRet.f32 %5834, 1
  %5837 = add i32 %5807, 64
  %5838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5837, i32 undef)  ; BufferLoad(srv,index,wot)
  %5839 = extractvalue %dx.types.ResRet.f32 %5838, 0
  %5840 = extractvalue %dx.types.ResRet.f32 %5838, 1
  %5841 = mul i32 %5803, 60
  %5842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5841, i32 undef)  ; BufferLoad(srv,index,wot)
  %5843 = extractvalue %dx.types.ResRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.ResRet.f32 %5842, 1
  %5845 = extractvalue %dx.types.ResRet.f32 %5842, 2
  %5846 = add i32 %5841, 12
  %5847 = add i32 %5841, 48
  %5848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5847, i32 undef)  ; BufferLoad(srv,index,wot)
  %5849 = extractvalue %dx.types.ResRet.f32 %5848, 0
  %5850 = extractvalue %dx.types.ResRet.f32 %5848, 1
  %5851 = extractvalue %dx.types.ResRet.f32 %5848, 2
  %5852 = and i32 %5814, 32767
  %5853 = bitcast float %5809 to i32
  %5854 = icmp eq i32 %5853, -1
  %5855 = bitcast float %5810 to i32
  %5856 = and i32 %5814, 32768
  %5857 = icmp ne i32 %5856, 0
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = extractvalue %dx.types.CBufRet.f32 %5858, 1
  %5861 = extractvalue %dx.types.CBufRet.f32 %5858, 2
  %5862 = fsub fast float %5843, %5859
  %5863 = fsub fast float %5844, %5860
  %5864 = fsub fast float %5845, %5861
  %5865 = fsub fast float %170, %5862
  %5866 = fsub fast float %171, %5863
  %5867 = fsub fast float %172, %5864
  %5868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5846, i32 undef)  ; BufferLoad(srv,index,wot)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.ResRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.ResRet.f32 %5868, 2
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5869, float %5870, float %5871)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = add i32 %5841, 24
  %5874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5873, i32 undef)  ; BufferLoad(srv,index,wot)
  %5875 = extractvalue %dx.types.ResRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.ResRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.ResRet.f32 %5874, 2
  %5878 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5875, float %5876, float %5877)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = add i32 %5841, 36
  %5880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5879, i32 undef)  ; BufferLoad(srv,index,wot)
  %5881 = extractvalue %dx.types.ResRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.ResRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.ResRet.f32 %5880, 2
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5881, float %5882, float %5883)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.unary.f32(i32 6, float %5872)  ; FAbs(value)
  %5886 = call float @dx.op.unary.f32(i32 6, float %5878)  ; FAbs(value)
  %5887 = call float @dx.op.unary.f32(i32 6, float %5884)  ; FAbs(value)
  %5888 = fsub fast float %5849, %5885
  %5889 = fsub fast float %5850, %5886
  %5890 = fsub fast float %5851, %5887
  %5891 = fmul fast float %5888, %5817
  %5892 = fmul fast float %5889, %5818
  %5893 = fmul fast float %5890, %5819
  %5894 = call float @dx.op.binary.f32(i32 36, float %5892, float %5893)  ; FMin(a,b)
  %5895 = call float @dx.op.binary.f32(i32 36, float %5891, float %5894)  ; FMin(a,b)
  %5896 = call float @dx.op.unary.f32(i32 7, float %5895)  ; Saturate(value)
  %5897 = call float @dx.op.binary.f32(i32 36, float %5800, float %5896)  ; FMin(a,b)
  %5898 = uitofp i1 %5857 to float
  %5899 = fadd fast float %5715, 1.000000e+00
  %5900 = fsub fast float %5899, %5898
  %5901 = fmul fast float %5897, %5900
  %5902 = fcmp fast ogt float %5901, 0.000000e+00
  br i1 %5902, label %5909, label %5903

; <label>:5903                                    ; preds = %6051, %5796
  %5904 = phi float [ %6115, %6051 ], [ %5797, %5796 ]
  %5905 = phi float [ %6116, %6051 ], [ %5798, %5796 ]
  %5906 = phi float [ %6117, %6051 ], [ %5799, %5796 ]
  %5907 = phi float [ %6118, %6051 ], [ %5800, %5796 ]
  %5908 = icmp eq i32 %5801, %5805
  br i1 %5908, label %6119, label %5796

; <label>:5909                                    ; preds = %5796
  br i1 %5854, label %5967, label %5910

; <label>:5910                                    ; preds = %5909
  %5911 = fsub fast float -0.000000e+00, %5869
  %5912 = fsub fast float -0.000000e+00, %5870
  %5913 = fsub fast float -0.000000e+00, %5871
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5911, float %5912, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fsub fast float -0.000000e+00, %5914
  %5916 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5911, float %5912, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5917 = fadd fast float %5916, %5832
  %5918 = fadd fast float %5831, %5916
  %5919 = fsub fast float -0.000000e+00, %5918
  %5920 = fcmp ogt float %5914, -0.000000e+00
  %5921 = select i1 %5920, float %5919, float %5917
  %5922 = call float @dx.op.unary.f32(i32 6, float %5915)  ; FAbs(value)
  %5923 = fdiv fast float 1.000000e+00, %5922
  %5924 = fmul fast float %5921, %5923
  %5925 = call float @dx.op.binary.f32(i32 35, float %5924, float 0.000000e+00)  ; FMax(a,b)
  %5926 = fsub fast float -0.000000e+00, %5875
  %5927 = fsub fast float -0.000000e+00, %5876
  %5928 = fsub fast float -0.000000e+00, %5877
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5926, float %5927, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = fsub fast float -0.000000e+00, %5929
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5926, float %5927, float %5928)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = fadd fast float %5931, %5836
  %5933 = fadd fast float %5835, %5931
  %5934 = fsub fast float -0.000000e+00, %5933
  %5935 = fcmp ogt float %5929, -0.000000e+00
  %5936 = select i1 %5935, float %5934, float %5932
  %5937 = call float @dx.op.unary.f32(i32 6, float %5930)  ; FAbs(value)
  %5938 = fdiv fast float 1.000000e+00, %5937
  %5939 = fmul fast float %5936, %5938
  %5940 = call float @dx.op.binary.f32(i32 35, float %5939, float 0.000000e+00)  ; FMax(a,b)
  %5941 = fsub fast float -0.000000e+00, %5881
  %5942 = fsub fast float -0.000000e+00, %5882
  %5943 = fsub fast float -0.000000e+00, %5883
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fsub fast float -0.000000e+00, %5944
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5866, float %5867, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = fadd fast float %5946, %5840
  %5948 = fadd fast float %5839, %5946
  %5949 = fsub fast float -0.000000e+00, %5948
  %5950 = fcmp ogt float %5944, -0.000000e+00
  %5951 = select i1 %5950, float %5949, float %5947
  %5952 = call float @dx.op.unary.f32(i32 6, float %5945)  ; FAbs(value)
  %5953 = fdiv fast float 1.000000e+00, %5952
  %5954 = fmul fast float %5951, %5953
  %5955 = call float @dx.op.binary.f32(i32 35, float %5954, float 0.000000e+00)  ; FMax(a,b)
  %5956 = call float @dx.op.binary.f32(i32 36, float %5940, float %5955)  ; FMin(a,b)
  %5957 = call float @dx.op.binary.f32(i32 36, float %5925, float %5956)  ; FMin(a,b)
  %5958 = fmul fast float %5957, %5749
  %5959 = fmul fast float %5957, %5750
  %5960 = fmul fast float %5957, %5751
  %5961 = fadd fast float %5958, %170
  %5962 = fadd fast float %5959, %171
  %5963 = fadd fast float %5960, %172
  %5964 = fsub fast float %5961, %5809
  %5965 = fsub fast float %5962, %5810
  %5966 = fsub fast float %5963, %5811
  br label %5974

; <label>:5967                                    ; preds = %5909
  %5968 = fmul fast float %5749, 8.096000e+03
  %5969 = fmul fast float %5750, 8.096000e+03
  %5970 = fmul fast float %5751, 8.096000e+03
  %5971 = fadd fast float %5968, %170
  %5972 = fadd fast float %5969, %171
  %5973 = fadd fast float %5970, %172
  br label %5974

; <label>:5974                                    ; preds = %5967, %5910
  %5975 = phi float [ %5749, %5967 ], [ %5964, %5910 ]
  %5976 = phi float [ %5750, %5967 ], [ %5965, %5910 ]
  %5977 = phi float [ %5751, %5967 ], [ %5966, %5910 ]
  %5978 = phi float [ %5971, %5967 ], [ %5961, %5910 ]
  %5979 = phi float [ %5972, %5967 ], [ %5962, %5910 ]
  %5980 = phi float [ %5973, %5967 ], [ %5963, %5910 ]
  %5981 = fcmp fast olt float %5828, 1.000000e+00
  br i1 %5981, label %5982, label %6013, !dx.controlflow.hints !100

; <label>:5982                                    ; preds = %5974
  %5983 = fmul fast float %5977, %5826
  %5984 = fmul fast float %5976, %5827
  %5985 = fsub fast float %5983, %5984
  %5986 = fmul fast float %5975, %5827
  %5987 = fmul fast float %5977, %5825
  %5988 = fsub fast float %5986, %5987
  %5989 = fmul fast float %5976, %5825
  %5990 = fmul fast float %5975, %5826
  %5991 = fsub fast float %5989, %5990
  %5992 = fmul fast float %5985, 2.000000e+00
  %5993 = fmul fast float %5988, 2.000000e+00
  %5994 = fmul fast float %5991, 2.000000e+00
  %5995 = fmul fast float %5992, %5828
  %5996 = fmul fast float %5993, %5828
  %5997 = fmul fast float %5994, %5828
  %5998 = fmul fast float %5994, %5826
  %5999 = fmul fast float %5993, %5827
  %6000 = fmul fast float %5992, %5827
  %6001 = fmul fast float %5994, %5825
  %6002 = fmul fast float %5993, %5825
  %6003 = fmul fast float %5992, %5826
  %6004 = fadd fast float %5998, %5975
  %6005 = fadd fast float %6004, %5995
  %6006 = fsub fast float %6005, %5999
  %6007 = fsub fast float %5976, %6001
  %6008 = fadd fast float %6007, %5996
  %6009 = fadd fast float %6008, %6000
  %6010 = fadd fast float %5997, %5977
  %6011 = fsub fast float %6010, %6003
  %6012 = fadd fast float %6011, %6002
  br label %6013

; <label>:6013                                    ; preds = %5982, %5974
  %6014 = phi float [ %6006, %5982 ], [ %5975, %5974 ]
  %6015 = phi float [ %6009, %5982 ], [ %5976, %5974 ]
  %6016 = phi float [ %6012, %5982 ], [ %5977, %5974 ]
  br i1 %5854, label %6048, label %6017

; <label>:6017                                    ; preds = %6013
  %6018 = fmul fast float %5342, 0x400187C840000000
  %6019 = fadd fast float %6018, 0xC00EFC2120000000
  %6020 = fmul fast float %6019, %5342
  %6021 = fadd fast float %6020, 0x3FE5D16340000000
  %6022 = fmul fast float %6021, %5342
  %6023 = fadd fast float %6022, 1.000000e+00
  %6024 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  %6025 = fsub fast float %5978, %170
  %6026 = fsub fast float %5979, %171
  %6027 = fsub fast float %5980, %172
  %6028 = fsub fast float %5978, %5809
  %6029 = fsub fast float %5979, %5810
  %6030 = fsub fast float %5980, %5811
  %6031 = call float @dx.op.dot3.f32(i32 55, float %6025, float %6026, float %6027, float %6025, float %6026, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6032 = call float @dx.op.dot3.f32(i32 55, float %6028, float %6029, float %6030, float %6028, float %6029, float %6030)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = fadd fast float %6032, 0x3EE4F8B580000000
  %6034 = fdiv fast float %6031, %6033
  %6035 = bitcast float %6034 to i32
  %6036 = ashr i32 %6035, 1
  %6037 = add nsw i32 %6036, 532487669
  %6038 = bitcast i32 %6037 to float
  %6039 = fmul fast float %6038, %6024
  %6040 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6041 = fmul fast float %6040, 0x4009981AE0000000
  %6042 = fsub fast float 0x40111BBD80000000, %6041
  %6043 = fmul fast float %6042, %6040
  %6044 = fadd fast float %6043, 0xC0009F6020000000
  %6045 = fmul fast float %6044, %6040
  %6046 = fadd fast float %6045, 1.000000e+00
  %6047 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  br label %6051

; <label>:6048                                    ; preds = %6013
  %6049 = icmp ne i32 %5855, -1
  %6050 = zext i1 %6049 to i32
  br label %6051

; <label>:6051                                    ; preds = %6048, %6017
  %6052 = phi float [ %5342, %6048 ], [ %6047, %6017 ]
  %6053 = phi i32 [ %6050, %6048 ], [ 0, %6017 ]
  %6054 = fmul float %6052, 5.000000e+00
  %6055 = fsub float 5.000000e+00, %6054
  %6056 = icmp ne i32 %6053, 0
  %6057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6058 = extractvalue %dx.types.CBufRet.f32 %6057, 3
  %6059 = fadd fast float %6058, %6055
  %6060 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6059)  ; FMax(a,b)
  %6061 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6062 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6063 = fadd fast float %6062, %6061
  %6064 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6065 = fadd fast float %6063, %6064
  %6066 = fcmp fast oeq float %6065, 0.000000e+00
  %6067 = fdiv fast float 1.000000e+00, %6065
  %6068 = select i1 %6066, float 1.000000e+00, float %6067
  %6069 = fmul fast float %6068, %6014
  %6070 = fmul fast float %6068, %6015
  %6071 = call float @dx.op.unary.f32(i32 6, float %6070)  ; FAbs(value)
  %6072 = call float @dx.op.unary.f32(i32 6, float %6069)  ; FAbs(value)
  %6073 = fsub fast float 1.000000e+00, %6071
  %6074 = fsub fast float 1.000000e+00, %6072
  %6075 = fcmp fast oge float %6069, 0.000000e+00
  %6076 = fcmp fast oge float %6070, 0.000000e+00
  %6077 = select i1 %6075, float 1.000000e+00, float -1.000000e+00
  %6078 = select i1 %6076, float 1.000000e+00, float -1.000000e+00
  %6079 = fcmp fast ole float %6016, 0.000000e+00
  %6080 = fmul fast float %6077, %6073
  %6081 = fmul fast float %6078, %6074
  %6082 = select i1 %6079, float %6080, float %6069
  %6083 = select i1 %6079, float %6081, float %6070
  %6084 = fmul fast float %6082, 5.000000e-01
  %6085 = fmul fast float %6083, 5.000000e-01
  %6086 = fadd fast float %6084, 5.000000e-01
  %6087 = fadd fast float %6085, 5.000000e-01
  %6088 = uitofp i32 %5852 to float
  %6089 = call float @dx.op.binary.f32(i32 36, float %6060, float 3.000000e+00)  ; FMin(a,b)
  %6090 = fadd fast float %6089, 2.000000e+00
  %6091 = call float @dx.op.unary.f32(i32 21, float %6090)  ; Exp(value)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6057, 1
  %6093 = fmul fast float %6092, %6091
  %6094 = fmul fast float %6093, 2.000000e+00
  %6095 = fsub fast float 1.000000e+00, %6094
  %6096 = fmul fast float %6086, %6095
  %6097 = fmul fast float %6087, %6095
  %6098 = fadd fast float %6096, %6093
  %6099 = fadd fast float %6097, %6093
  %6100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6098, float %6099, float %6088, float undef, i32 0, i32 0, i32 undef, float %6060)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6101 = extractvalue %dx.types.ResRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.ResRet.f32 %6100, 1
  %6103 = extractvalue %dx.types.ResRet.f32 %6100, 2
  %6104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6105 = extractvalue %dx.types.CBufRet.f32 %6104, 3
  %6106 = fmul fast float %6105, %5822
  %6107 = call float @dx.op.binary.f32(i32 36, float %5374, float %6106)  ; FMin(a,b)
  %6108 = select i1 %6056, float %6107, float %6106
  %6109 = fmul fast float %6101, %5901
  %6110 = fmul fast float %6109, %6108
  %6111 = fmul fast float %6102, %5901
  %6112 = fmul fast float %6111, %6108
  %6113 = fmul fast float %6103, %5901
  %6114 = fmul fast float %6113, %6108
  %6115 = fadd fast float %6110, %5797
  %6116 = fadd fast float %6112, %5798
  %6117 = fadd fast float %6114, %5799
  %6118 = fsub fast float %5800, %5901
  br label %5903

; <label>:6119                                    ; preds = %5903
  br label %6120

; <label>:6120                                    ; preds = %6119, %5766
  %6121 = phi float [ %5767, %5766 ], [ %5904, %6119 ]
  %6122 = phi float [ %5768, %5766 ], [ %5905, %6119 ]
  %6123 = phi float [ %5769, %5766 ], [ %5906, %6119 ]
  %6124 = phi float [ %5770, %5766 ], [ %5907, %6119 ]
  %6125 = add i32 %5771, 1
  %6126 = icmp ugt i32 %6125, %5763
  br i1 %6126, label %6127, label %5766, !llvm.loop !101

; <label>:6127                                    ; preds = %6120
  br label %6128

; <label>:6128                                    ; preds = %6127, %5748
  %6129 = phi float [ 0.000000e+00, %5748 ], [ %6121, %6127 ]
  %6130 = phi float [ 0.000000e+00, %5748 ], [ %6122, %6127 ]
  %6131 = phi float [ 0.000000e+00, %5748 ], [ %6123, %6127 ]
  %6132 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6133 = select i1 %232, float 0.000000e+00, float %6129
  %6134 = select i1 %232, float %6132, float %6130
  %6135 = select i1 %232, float 0.000000e+00, float %6131
  %6136 = fcmp fast olt float %5674, 0.000000e+00
  %6137 = call float @dx.op.unary.f32(i32 6, float %5674)  ; FAbs(value)
  %6138 = fmul fast float %6137, %5614
  %6139 = fmul fast float %6137, %5615
  %6140 = fmul fast float %6137, %5616
  %6141 = select i1 %6136, float %5614, float %6138
  %6142 = select i1 %6136, float %5615, float %6139
  %6143 = select i1 %6136, float %5616, float %6140
  %6144 = fsub fast float 1.000000e+00, %6137
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = fmul fast float %6145, %6133
  %6147 = fmul fast float %6145, %6134
  %6148 = fmul fast float %6145, %6135
  %6149 = fadd fast float %6141, %6146
  %6150 = fadd fast float %6142, %6147
  %6151 = fadd fast float %6143, %6148
  br label %6152

; <label>:6152                                    ; preds = %6128, %5657
  %6153 = phi float [ %5614, %5657 ], [ %6149, %6128 ]
  %6154 = phi float [ %5615, %5657 ], [ %6150, %6128 ]
  %6155 = phi float [ %5616, %5657 ], [ %6151, %6128 ]
  %6156 = call float @dx.op.dot3.f32(i32 55, float %5336, float %5337, float %5338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6157 = fcmp fast ogt float %6156, 0x3E7FF19E20000000
  %6158 = fdiv fast float 1.000000e+00, %6156
  %6159 = select i1 %6157, float %6158, float 0.000000e+00
  %6160 = fmul fast float %6159, %5336
  %6161 = fmul fast float %6159, %5337
  %6162 = fmul fast float %6159, %5338
  %6163 = fadd fast float %6160, -1.000000e+00
  %6164 = fadd fast float %6161, -1.000000e+00
  %6165 = fadd fast float %6162, -1.000000e+00
  %6166 = fmul fast float %6163, 5.000000e-01
  %6167 = fmul fast float %6164, 5.000000e-01
  %6168 = fmul fast float %6165, 5.000000e-01
  %6169 = fadd fast float %6166, 1.000000e+00
  %6170 = fadd fast float %6167, 1.000000e+00
  %6171 = fadd fast float %6168, 1.000000e+00
  %6172 = fmul fast float %5663, %4755
  %6173 = fmul fast float %5663, %4756
  %6174 = fmul fast float %5663, %4757
  %6175 = fadd fast float %6172, -1.000000e+00
  %6176 = fadd fast float %6173, -1.000000e+00
  %6177 = fadd fast float %6174, -1.000000e+00
  %6178 = fmul fast float %6175, %4662
  %6179 = fmul fast float %6176, %4662
  %6180 = fmul fast float %6177, %4662
  %6181 = fmul fast float %6153, %5658
  %6182 = fmul fast float %6154, %5659
  %6183 = fmul fast float %6155, %5660
  %6184 = fsub fast float 1.000000e+00, %5347
  %6185 = bitcast float %6184 to i32
  %6186 = sitofp i32 %6185 to float
  %6187 = fmul fast float %6186, 5.000000e+00
  %6188 = fadd fast float %6187, 0xC1EFBF8940000000
  %6189 = fptosi float %6188 to i32
  %6190 = bitcast i32 %6189 to float
  %6191 = fmul fast float %6190, %4666
  %6192 = fmul fast float %5606, %6191
  %6193 = fmul fast float %6192, %5663
  %6194 = fmul fast float %6193, %6169
  %6195 = fmul fast float %5607, %6191
  %6196 = fmul fast float %6195, %5663
  %6197 = fmul fast float %6196, %6170
  %6198 = fmul fast float %5608, %6191
  %6199 = fmul fast float %6198, %5663
  %6200 = fmul fast float %6199, %6171
  %6201 = fadd fast float %6181, %4658
  %6202 = fadd fast float %6201, %6194
  %6203 = fmul fast float %6202, %4662
  %6204 = fadd fast float %6182, %4659
  %6205 = fadd fast float %6204, %6197
  %6206 = fmul fast float %6205, %4662
  %6207 = fadd fast float %6183, %4660
  %6208 = fadd fast float %6207, %6200
  %6209 = fmul fast float %6208, %4662
  %6210 = fadd fast float %6180, 1.000000e+00
  %6211 = fadd fast float %6179, 1.000000e+00
  %6212 = fadd fast float %6178, 1.000000e+00
  %6213 = fmul fast float %5663, %5608
  %6214 = fmul fast float %5663, %5607
  %6215 = fmul fast float %5663, %5606
  %6216 = fmul fast float %6212, %5610
  %6217 = fmul fast float %6211, %5611
  %6218 = fmul fast float %6210, %5612
  %6219 = fadd fast float %6216, %6215
  %6220 = fmul fast float %6219, %4662
  %6221 = fadd fast float %6217, %6214
  %6222 = fmul fast float %6221, %4662
  %6223 = fadd fast float %6218, %6213
  %6224 = fmul fast float %6223, %4662
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 3
  %6227 = fcmp fast oeq float %6226, 0.000000e+00
  br i1 %6227, label %7823, label %6228

; <label>:6228                                    ; preds = %6152
  %6229 = extractvalue %dx.types.CBufRet.f32 %6225, 0
  %6230 = extractvalue %dx.types.CBufRet.f32 %6225, 1
  %6231 = extractvalue %dx.types.CBufRet.f32 %6225, 2
  %6232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6233 = extractvalue %dx.types.CBufRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.CBufRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.CBufRet.f32 %6232, 2
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = call float @dx.op.dot3.f32(i32 55, float %6233, float %6234, float %6235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6240 = select i1 %232, float %6237, float %6233
  %6241 = select i1 %232, float %6239, float %6234
  %6242 = select i1 %232, float %6238, float %6235
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 2
  %6245 = fmul fast float %6244, %120
  %6246 = fmul fast float %6244, %122
  %6247 = fmul fast float %6244, %124
  %6248 = fadd fast float %6245, %170
  %6249 = fadd fast float %6246, %171
  %6250 = fadd fast float %6247, %172
  %6251 = fcmp fast olt float %6226, 0.000000e+00
  br i1 %6251, label %7347, label %6252

; <label>:6252                                    ; preds = %6228
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.CBufRet.f32 %6253, 2
  %6257 = extractvalue %dx.types.CBufRet.f32 %6253, 3
  %6258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6258, 0
  %6260 = extractvalue %dx.types.CBufRet.f32 %6258, 1
  %6261 = extractvalue %dx.types.CBufRet.f32 %6258, 2
  %6262 = extractvalue %dx.types.CBufRet.f32 %6258, 3
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.CBufRet.f32 %6263, 1
  %6266 = extractvalue %dx.types.CBufRet.f32 %6263, 2
  %6267 = extractvalue %dx.types.CBufRet.f32 %6263, 3
  %6268 = fmul fast float %6254, %6248
  %6269 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6255, float %6268)  ; FMad(a,b,c)
  %6270 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %6256, float %6269)  ; FMad(a,b,c)
  %6271 = fadd fast float %6270, %6257
  %6272 = fmul fast float %6259, %6248
  %6273 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6260, float %6272)  ; FMad(a,b,c)
  %6274 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %6261, float %6273)  ; FMad(a,b,c)
  %6275 = fadd fast float %6274, %6262
  %6276 = fmul fast float %6264, %6248
  %6277 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6265, float %6276)  ; FMad(a,b,c)
  %6278 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %6266, float %6277)  ; FMad(a,b,c)
  %6279 = fadd fast float %6278, %6267
  %6280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6281 = extractvalue %dx.types.CBufRet.f32 %6280, 0
  %6282 = extractvalue %dx.types.CBufRet.f32 %6280, 1
  %6283 = extractvalue %dx.types.CBufRet.f32 %6280, 3
  %6284 = fmul fast float %6283, %6271
  %6285 = fmul fast float %6283, %6275
  %6286 = fadd fast float %6284, %6281
  %6287 = fadd fast float %6285, %6282
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.CBufRet.f32 %6288, 3
  %6292 = fmul fast float %6291, %6271
  %6293 = fmul fast float %6291, %6275
  %6294 = fadd fast float %6292, %6289
  %6295 = fadd fast float %6293, %6290
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 1
  %6298 = fsub fast float %6297, %6279
  %6299 = extractvalue %dx.types.CBufRet.f32 %6296, 2
  %6300 = fmul fast float %6298, %6299
  %6301 = fsub fast float 1.000000e+00, %6300
  %6302 = call float @dx.op.unary.f32(i32 7, float %6301)  ; Saturate(value)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6304, 2
  %6306 = fadd fast float %6305, %6303
  %6307 = fcmp fast ogt float %6306, 0.000000e+00
  br i1 %6307, label %6308, label %6332

; <label>:6308                                    ; preds = %6252
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.CBufRet.f32 %6309, 1
  %6312 = fsub fast float %6294, %6310
  %6313 = fsub fast float %6295, %6311
  %6314 = fcmp fast olt float %6312, 0.000000e+00
  %6315 = fcmp fast olt float %6313, 0.000000e+00
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.CBufRet.f32 %6316, 2
  %6320 = extractvalue %dx.types.CBufRet.f32 %6316, 3
  %6321 = select i1 %6314, float %6317, float %6319
  %6322 = select i1 %6315, float %6318, float %6320
  %6323 = fmul fast float %6321, %6312
  %6324 = fmul fast float %6322, %6313
  %6325 = call float @dx.op.unary.f32(i32 6, float %6323)  ; FAbs(value)
  %6326 = call float @dx.op.unary.f32(i32 6, float %6324)  ; FAbs(value)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6243, 0
  %6328 = call float @dx.op.binary.f32(i32 35, float %6325, float %6326)  ; FMax(a,b)
  %6329 = fsub fast float %6327, %6328
  %6330 = call float @dx.op.unary.f32(i32 7, float %6329)  ; Saturate(value)
  %6331 = fmul fast float %6330, %6302
  br label %6332

; <label>:6332                                    ; preds = %6308, %6252
  %6333 = phi float [ %6331, %6308 ], [ 0.000000e+00, %6252 ]
  %6334 = extractvalue %dx.types.CBufRet.f32 %6280, 2
  %6335 = extractvalue %dx.types.CBufRet.f32 %6304, 1
  %6336 = fadd fast float %6335, %6334
  %6337 = fcmp fast ogt float %6336, 0.000000e+00
  %6338 = extractvalue %dx.types.CBufRet.f32 %6243, 0
  br i1 %6337, label %6339, label %6362

; <label>:6339                                    ; preds = %6332
  %6340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6340, 0
  %6342 = extractvalue %dx.types.CBufRet.f32 %6340, 1
  %6343 = fsub fast float %6286, %6341
  %6344 = fsub fast float %6287, %6342
  %6345 = fcmp fast olt float %6343, 0.000000e+00
  %6346 = fcmp fast olt float %6344, 0.000000e+00
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6350 = extractvalue %dx.types.CBufRet.f32 %6347, 2
  %6351 = extractvalue %dx.types.CBufRet.f32 %6347, 3
  %6352 = select i1 %6345, float %6348, float %6350
  %6353 = select i1 %6346, float %6349, float %6351
  %6354 = fmul fast float %6352, %6343
  %6355 = fmul fast float %6353, %6344
  %6356 = call float @dx.op.unary.f32(i32 6, float %6354)  ; FAbs(value)
  %6357 = call float @dx.op.unary.f32(i32 6, float %6355)  ; FAbs(value)
  %6358 = call float @dx.op.binary.f32(i32 35, float %6356, float %6357)  ; FMax(a,b)
  %6359 = fsub fast float %6338, %6358
  %6360 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  %6361 = fmul fast float %6360, %6302
  br label %6362

; <label>:6362                                    ; preds = %6339, %6332
  %6363 = phi float [ %6361, %6339 ], [ 0.000000e+00, %6332 ]
  %6364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6365 = extractvalue %dx.types.CBufRet.f32 %6364, 1
  %6366 = call float @dx.op.unary.f32(i32 7, float %6365)  ; Saturate(value)
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6370 = fsub fast float %6271, %6368
  %6371 = fsub fast float %6275, %6369
  %6372 = fcmp fast olt float %6370, 0.000000e+00
  %6373 = fcmp fast olt float %6371, 0.000000e+00
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 0
  %6376 = extractvalue %dx.types.CBufRet.f32 %6374, 1
  %6377 = extractvalue %dx.types.CBufRet.f32 %6374, 2
  %6378 = extractvalue %dx.types.CBufRet.f32 %6374, 3
  %6379 = select i1 %6372, float %6375, float %6377
  %6380 = select i1 %6373, float %6376, float %6378
  %6381 = fmul fast float %6379, %6370
  %6382 = fmul fast float %6380, %6371
  %6383 = call float @dx.op.unary.f32(i32 6, float %6381)  ; FAbs(value)
  %6384 = call float @dx.op.unary.f32(i32 6, float %6382)  ; FAbs(value)
  %6385 = call float @dx.op.binary.f32(i32 35, float %6383, float %6384)  ; FMax(a,b)
  %6386 = fsub fast float %6338, %6385
  %6387 = call float @dx.op.unary.f32(i32 7, float %6386)  ; Saturate(value)
  %6388 = call float @dx.op.binary.f32(i32 36, float %6387, float %6366)  ; FMin(a,b)
  %6389 = fmul fast float %6388, %6302
  %6390 = fsub fast float %6363, %6389
  %6391 = fsub fast float %6333, %6363
  %6392 = fsub fast float %6391, %6389
  %6393 = call float @dx.op.binary.f32(i32 35, float %6363, float %6333)  ; FMax(a,b)
  %6394 = call float @dx.op.binary.f32(i32 35, float %6389, float %6393)  ; FMax(a,b)
  %6395 = fcmp fast olt float %6394, 1.000000e+00
  br i1 %6395, label %6396, label %6794, !dx.controlflow.hints !103

; <label>:6396                                    ; preds = %6362
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 0
  %6399 = fcmp fast une float %6398, 0.000000e+00
  br i1 %6399, label %6400, label %6794, !dx.controlflow.hints !104

; <label>:6400                                    ; preds = %6396
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.CBufRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.CBufRet.f32 %6401, 2
  %6405 = extractvalue %dx.types.CBufRet.f32 %6401, 3
  %6406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6406, 0
  %6408 = extractvalue %dx.types.CBufRet.f32 %6406, 1
  %6409 = extractvalue %dx.types.CBufRet.f32 %6406, 2
  %6410 = extractvalue %dx.types.CBufRet.f32 %6406, 3
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.CBufRet.f32 %6411, 2
  %6415 = extractvalue %dx.types.CBufRet.f32 %6411, 3
  %6416 = fmul fast float %6402, %6248
  %6417 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6403, float %6416)  ; FMad(a,b,c)
  %6418 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %6404, float %6417)  ; FMad(a,b,c)
  %6419 = fadd fast float %6418, %6405
  %6420 = fmul fast float %6407, %6248
  %6421 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6408, float %6420)  ; FMad(a,b,c)
  %6422 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %6409, float %6421)  ; FMad(a,b,c)
  %6423 = fadd fast float %6422, %6410
  %6424 = fmul fast float %6412, %6248
  %6425 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6413, float %6424)  ; FMad(a,b,c)
  %6426 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %6414, float %6425)  ; FMad(a,b,c)
  %6427 = fadd fast float %6426, %6415
  %6428 = fcmp fast oge float %6419, 1.000000e+00
  %6429 = fcmp fast oge float %6423, 1.000000e+00
  %6430 = or i1 %6428, %6429
  %6431 = fcmp fast olt float %6419, 0.000000e+00
  %6432 = fcmp fast olt float %6423, 0.000000e+00
  %6433 = or i1 %6431, %6432
  %6434 = or i1 %6430, %6433
  br i1 %6434, label %6794, label %6435, !dx.controlflow.hints !105

; <label>:6435                                    ; preds = %6400
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.i32 %6440, 2
  %6442 = uitofp i32 %6441 to float
  %6443 = extractvalue %dx.types.CBufRet.i32 %6440, 3
  %6444 = uitofp i32 %6443 to float
  %6445 = extractvalue %dx.types.CBufRet.f32 %6436, 3
  %6446 = fmul fast float %6445, 2.000000e+00
  %6447 = fsub fast float %6419, %6437
  %6448 = fsub fast float %6423, %6438
  %6449 = fmul fast float %6446, %6447
  %6450 = fmul fast float %6446, %6448
  %6451 = fdiv fast float 1.000000e+00, %6231
  %6452 = fmul fast float %6450, %6451
  %6453 = call float @dx.op.unary.f32(i32 6, float %6452)  ; FAbs(value)
  %6454 = fmul fast float %6439, %6250
  %6455 = fmul fast float %6454, %6446
  %6456 = call float @dx.op.unary.f32(i32 6, float %6455)  ; FAbs(value)
  %6457 = call float @dx.op.unary.f32(i32 6, float %6449)  ; FAbs(value)
  %6458 = call float @dx.op.binary.f32(i32 35, float %6456, float %6453)  ; FMax(a,b)
  %6459 = call float @dx.op.binary.f32(i32 35, float %6457, float %6458)  ; FMax(a,b)
  %6460 = fmul fast float %6459, 2.000000e+00
  %6461 = call float @dx.op.unary.f32(i32 23, float %6460)  ; Log(value)
  %6462 = call float @dx.op.binary.f32(i32 35, float %6461, float %6442)  ; FMax(a,b)
  %6463 = call float @dx.op.unary.f32(i32 22, float %6462)  ; Frc(value)
  %6464 = fadd fast float %6463, 0xBFEA666660000000
  %6465 = fmul fast float %6464, 8.000000e+00
  %6466 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  %6467 = call float @dx.op.unary.f32(i32 27, float %6462)  ; Round_ni(value)
  %6468 = fadd fast float %6467, %6466
  %6469 = call float @dx.op.binary.f32(i32 36, float %6468, float %6444)  ; FMin(a,b)
  %6470 = call float @dx.op.unary.f32(i32 27, float %6469)  ; Round_ni(value)
  %6471 = fsub fast float -0.000000e+00, %6470
  %6472 = call float @dx.op.unary.f32(i32 21, float %6471)  ; Exp(value)
  %6473 = fmul fast float %6472, %6446
  %6474 = fmul fast float %6473, %6419
  %6475 = fmul fast float %6473, %6423
  %6476 = fmul fast float %6474, 2.500000e-01
  %6477 = fmul fast float %6475, 2.500000e-01
  %6478 = fadd fast float %6476, 5.000000e-01
  %6479 = fadd fast float %6477, 5.000000e-01
  %6480 = fsub fast float %6444, %6442
  %6481 = fptoui float %6480 to i32
  %6482 = add i32 %6481, 320
  %6483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6482)  ; CBufferLoadLegacy(handle,regIndex)
  %6484 = extractvalue %dx.types.CBufRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.CBufRet.f32 %6483, 1
  %6486 = fcmp fast une float %6469, %6444
  %6487 = fsub fast float %6419, %6484
  %6488 = fsub fast float %6423, %6485
  %6489 = call float @dx.op.unary.f32(i32 6, float %6487)  ; FAbs(value)
  %6490 = call float @dx.op.unary.f32(i32 6, float %6488)  ; FAbs(value)
  %6491 = fmul fast float %6489, %6473
  %6492 = fmul fast float %6490, %6473
  %6493 = fcmp fast olt float %6491, 1.000000e+00
  %6494 = fcmp fast olt float %6492, 1.000000e+00
  %6495 = and i1 %6493, %6494
  %6496 = or i1 %6486, %6495
  br i1 %6496, label %6497, label %6794, !dx.controlflow.hints !106

; <label>:6497                                    ; preds = %6435
  %6498 = fmul fast float %6475, 5.000000e-01
  %6499 = fmul fast float %6474, 5.000000e-01
  %6500 = fadd fast float %6498, 5.000000e-01
  %6501 = fadd fast float %6499, 5.000000e-01
  %6502 = sitofp i32 %6441 to float
  %6503 = fsub fast float %6469, %6502
  %6504 = call float @dx.op.unary.f32(i32 27, float %6503)  ; Round_ni(value)
  %6505 = call float @dx.op.unary.f32(i32 22, float %6469)  ; Frc(value)
  %6506 = call float @dx.op.unary.f32(i32 22, float %6501)  ; Frc(value)
  %6507 = call float @dx.op.unary.f32(i32 22, float %6500)  ; Frc(value)
  %6508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6506, float %6507, float %6504, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6509 = extractvalue %dx.types.ResRet.f32 %6508, 0
  %6510 = extractvalue %dx.types.ResRet.f32 %6508, 1
  %6511 = extractvalue %dx.types.ResRet.f32 %6508, 2
  %6512 = extractvalue %dx.types.ResRet.f32 %6508, 3
  %6513 = fcmp fast ogt float %6505, 0.000000e+00
  br i1 %6513, label %6514, label %6535, !dx.controlflow.hints !107

; <label>:6514                                    ; preds = %6497
  %6515 = fadd fast float %6504, 1.000000e+00
  %6516 = call float @dx.op.unary.f32(i32 22, float %6478)  ; Frc(value)
  %6517 = call float @dx.op.unary.f32(i32 22, float %6479)  ; Frc(value)
  %6518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6516, float %6517, float %6515, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6519 = extractvalue %dx.types.ResRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.ResRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.ResRet.f32 %6518, 2
  %6522 = extractvalue %dx.types.ResRet.f32 %6518, 3
  %6523 = fsub fast float %6519, %6509
  %6524 = fsub fast float %6520, %6510
  %6525 = fsub fast float %6521, %6511
  %6526 = fsub fast float %6522, %6512
  %6527 = fmul fast float %6523, %6505
  %6528 = fmul fast float %6524, %6505
  %6529 = fmul fast float %6525, %6505
  %6530 = fmul fast float %6526, %6505
  %6531 = fadd fast float %6527, %6509
  %6532 = fadd fast float %6528, %6510
  %6533 = fadd fast float %6529, %6511
  %6534 = fadd fast float %6530, %6512
  br label %6535

; <label>:6535                                    ; preds = %6514, %6497
  %6536 = phi float [ %6531, %6514 ], [ %6509, %6497 ]
  %6537 = phi float [ %6532, %6514 ], [ %6510, %6497 ]
  %6538 = phi float [ %6533, %6514 ], [ %6511, %6497 ]
  %6539 = phi float [ %6534, %6514 ], [ %6512, %6497 ]
  %6540 = fadd fast float %6536, -5.000000e-01
  %6541 = fadd fast float %6538, -5.000000e-01
  %6542 = fmul fast float %6540, 0xBFD5555560000000
  %6543 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6541, float %6542)  ; FMad(a,b,c)
  %6544 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6537, float 0.000000e+00)  ; FMad(a,b,c)
  %6545 = fadd fast float %6544, %6539
  %6546 = fmul fast float %6540, -7.500000e-01
  %6547 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6541, float %6546)  ; FMad(a,b,c)
  %6548 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6537, float 0.000000e+00)  ; FMad(a,b,c)
  %6549 = fadd fast float %6548, %6539
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6556 = extractvalue %dx.types.CBufRet.f32 %6552, 3
  %6557 = fsub fast float %6553, %6543
  %6558 = fsub fast float %6554, %6545
  %6559 = fsub fast float %6555, %6547
  %6560 = fsub fast float %6556, %6549
  %6561 = fmul fast float %6557, %6551
  %6562 = fmul fast float %6558, %6551
  %6563 = fmul fast float %6559, %6551
  %6564 = fmul fast float %6560, %6551
  %6565 = fadd fast float %6561, %6543
  %6566 = fadd fast float %6562, %6545
  %6567 = fadd fast float %6563, %6547
  %6568 = fadd fast float %6564, %6549
  %6569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6570 = extractvalue %dx.types.ResRet.i32 %6569, 0
  %6571 = and i32 %6570, 536870911
  %6572 = uitofp i32 %6571 to float
  %6573 = fmul fast float %6572, %6419
  %6574 = fmul fast float %6572, %6423
  %6575 = fptoui float %6573 to i32
  %6576 = fptoui float %6574 to i32
  %6577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6578 = extractvalue %dx.types.ResRet.i32 %6577, 0
  %6579 = and i32 %6578, 31
  %6580 = lshr i32 %6575, %6579
  %6581 = lshr i32 %6576, %6579
  %6582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6583 = extractvalue %dx.types.ResRet.i32 %6582, 0
  %6584 = and i32 %6583, 31
  %6585 = shl i32 1, %6584
  %6586 = call i32 @dx.op.binary.i32(i32 40, i32 %6585, i32 4)  ; UMin(a,b)
  %6587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6588 = extractvalue %dx.types.ResRet.i32 %6587, 0
  %6589 = extractvalue %dx.types.ResRet.i32 %6587, 1
  %6590 = icmp eq i32 %6586, 0
  br i1 %6590, label %6632, label %6591

; <label>:6591                                    ; preds = %6535
  br label %6592

; <label>:6592                                    ; preds = %6620, %6591
  %6593 = phi i32 [ %6623, %6620 ], [ 0, %6591 ]
  %6594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6595 = extractvalue %dx.types.ResRet.i32 %6594, 0
  %6596 = lshr i32 %6595, 16
  %6597 = and i32 %6596, 31
  %6598 = shl i32 %6581, %6597
  %6599 = add i32 %6598, %6580
  %6600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6601 = extractvalue %dx.types.ResRet.i32 %6600, 0
  %6602 = and i32 %6601, 31
  %6603 = shl i32 %6599, %6602
  %6604 = add i32 %6603, %6593
  %6605 = shl i32 %6604, 2
  %6606 = add i32 %6605, 32
  %6607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6606, i32 undef)  ; BufferLoad(srv,index,wot)
  %6608 = extractvalue %dx.types.ResRet.i32 %6607, 0
  %6609 = icmp slt i32 %6608, 0
  %6610 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6593
  %6611 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6593
  %6612 = bitcast float* %6610 to i32*
  %6613 = bitcast float* %6611 to i32*
  br i1 %6609, label %6614, label %6620

; <label>:6614                                    ; preds = %6592
  %6615 = and i32 %6608, 1073741823
  %6616 = add nuw nsw i32 %6615, 20
  %6617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6616, i32 undef)  ; BufferLoad(srv,index,wot)
  %6618 = extractvalue %dx.types.ResRet.i32 %6617, 0
  %6619 = extractvalue %dx.types.ResRet.i32 %6617, 1
  br label %6620

; <label>:6620                                    ; preds = %6614, %6592
  %6621 = phi i32 [ %6618, %6614 ], [ %6588, %6592 ]
  %6622 = phi i32 [ %6619, %6614 ], [ %6589, %6592 ]
  store i32 %6621, i32* %6612, align 4
  store i32 %6622, i32* %6613, align 4
  %6623 = add nuw i32 %6593, 1
  %6624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.i32 %6624, 2
  %6626 = icmp eq i32 %6625, 0
  %6627 = icmp ugt i32 %6608, -1073741825
  %6628 = and i1 %6627, %6626
  %6629 = icmp ult i32 %6623, %6586
  %6630 = and i1 %6628, %6629
  br i1 %6630, label %6592, label %6631

; <label>:6631                                    ; preds = %6620
  br label %6632

; <label>:6632                                    ; preds = %6631, %6535
  %6633 = phi i32 [ 0, %6535 ], [ %6623, %6631 ]
  %6634 = extractvalue %dx.types.CBufRet.f32 %6397, 2
  %6635 = fptoui float %6634 to i32
  %6636 = icmp eq i32 %6635, 0
  br i1 %6636, label %6688, label %6637

; <label>:6637                                    ; preds = %6632
  br label %6638

; <label>:6638                                    ; preds = %6683, %6637
  %6639 = phi i32 [ %6684, %6683 ], [ %6633, %6637 ]
  %6640 = phi i32 [ %6685, %6683 ], [ 0, %6637 ]
  %6641 = lshr i32 %6640, 2
  %6642 = and i32 %6640, 3
  %6643 = add nuw nsw i32 %6641, 83
  %6644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6643)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.i32 %6644, 0
  %6646 = extractvalue %dx.types.CBufRet.i32 %6644, 1
  %6647 = extractvalue %dx.types.CBufRet.i32 %6644, 2
  %6648 = extractvalue %dx.types.CBufRet.i32 %6644, 3
  %6649 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6645, i32* %6649, align 4
  %6650 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6646, i32* %6650, align 4
  %6651 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6647, i32* %6651, align 4
  %6652 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6648, i32* %6652, align 4
  %6653 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6642
  %6654 = load i32, i32* %6653, align 4, !tbaa !108, !noalias !112
  %6655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6656 = extractvalue %dx.types.ResRet.i32 %6655, 0
  %6657 = lshr i32 %6656, 16
  %6658 = and i32 %6657, 31
  %6659 = shl i32 %6581, %6658
  %6660 = add i32 %6659, %6580
  %6661 = shl i32 %6660, 2
  %6662 = add i32 %6661, %6654
  %6663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6662, i32 undef)  ; BufferLoad(srv,index,wot)
  %6664 = extractvalue %dx.types.ResRet.i32 %6663, 0
  %6665 = icmp eq i32 %6664, 0
  br i1 %6665, label %6683, label %6666

; <label>:6666                                    ; preds = %6638
  %6667 = icmp slt i32 %6664, 0
  %6668 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6639
  %6669 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6639
  %6670 = bitcast float* %6668 to i32*
  %6671 = bitcast float* %6669 to i32*
  br i1 %6667, label %6672, label %6679

; <label>:6672                                    ; preds = %6666
  %6673 = and i32 %6664, 1073741823
  %6674 = add i32 %6654, 20
  %6675 = add i32 %6674, %6673
  %6676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6675, i32 undef)  ; BufferLoad(srv,index,wot)
  %6677 = extractvalue %dx.types.ResRet.i32 %6676, 0
  %6678 = extractvalue %dx.types.ResRet.i32 %6676, 1
  br label %6679

; <label>:6679                                    ; preds = %6672, %6666
  %6680 = phi i32 [ %6677, %6672 ], [ %6588, %6666 ]
  %6681 = phi i32 [ %6678, %6672 ], [ %6589, %6666 ]
  store i32 %6680, i32* %6670, align 4
  store i32 %6681, i32* %6671, align 4
  %6682 = add i32 %6639, 1
  br label %6683

; <label>:6683                                    ; preds = %6679, %6638
  %6684 = phi i32 [ %6639, %6638 ], [ %6682, %6679 ]
  %6685 = add nuw i32 %6640, 1
  %6686 = icmp eq i32 %6685, %6635
  br i1 %6686, label %6687, label %6638

; <label>:6687                                    ; preds = %6683
  br label %6688

; <label>:6688                                    ; preds = %6687, %6632
  %6689 = phi i32 [ %6633, %6632 ], [ %6684, %6687 ]
  %6690 = icmp eq i32 %6689, 1
  %6691 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6692 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6690, label %6693, label %6696

; <label>:6693                                    ; preds = %6688
  %6694 = load float, float* %6691, align 4
  %6695 = load float, float* %6692, align 4
  br label %6723

; <label>:6696                                    ; preds = %6688
  %6697 = load float, float* %6691, align 4
  %6698 = load float, float* %6692, align 4
  %6699 = fdiv fast float 1.000000e+00, %6698
  %6700 = fsub fast float %6697, %6699
  %6701 = icmp ugt i32 %6689, 1
  br i1 %6701, label %6702, label %6718

; <label>:6702                                    ; preds = %6696
  br label %6703

; <label>:6703                                    ; preds = %6703, %6702
  %6704 = phi float [ %6713, %6703 ], [ %6700, %6702 ]
  %6705 = phi float [ %6714, %6703 ], [ %6697, %6702 ]
  %6706 = phi i32 [ %6715, %6703 ], [ 1, %6702 ]
  %6707 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6706
  %6708 = load float, float* %6707, align 4
  %6709 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6706
  %6710 = load float, float* %6709, align 4
  %6711 = fdiv fast float 1.000000e+00, %6710
  %6712 = fsub fast float %6708, %6711
  %6713 = call float @dx.op.binary.f32(i32 36, float %6704, float %6712)  ; FMin(a,b)
  %6714 = call float @dx.op.binary.f32(i32 35, float %6705, float %6708)  ; FMax(a,b)
  %6715 = add nuw i32 %6706, 1
  %6716 = icmp eq i32 %6715, %6689
  br i1 %6716, label %6717, label %6703

; <label>:6717                                    ; preds = %6703
  br label %6718

; <label>:6718                                    ; preds = %6717, %6696
  %6719 = phi float [ %6700, %6696 ], [ %6713, %6717 ]
  %6720 = phi float [ %6697, %6696 ], [ %6714, %6717 ]
  %6721 = fsub fast float %6720, %6719
  %6722 = fdiv fast float 1.000000e+00, %6721
  br label %6723

; <label>:6723                                    ; preds = %6718, %6693
  %6724 = phi float [ %6694, %6693 ], [ %6720, %6718 ]
  %6725 = phi float [ %6695, %6693 ], [ %6722, %6718 ]
  %6726 = fadd fast float %6427, %6724
  %6727 = fmul fast float %6726, %6725
  %6728 = call float @dx.op.unary.f32(i32 7, float %6727)  ; Saturate(value)
  %6729 = fmul fast float %6728, 2.000000e+00
  %6730 = fsub fast float 1.000000e+00, %6729
  %6731 = fmul fast float %6565, %6565
  %6732 = fsub fast float %6566, %6731
  %6733 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6732)  ; FMax(a,b)
  %6734 = fdiv fast float 1.000000e+00, %6733
  %6735 = fmul fast float %6566, %6565
  %6736 = fsub fast float %6567, %6735
  %6737 = fsub fast float %6730, %6565
  %6738 = fmul fast float %6730, %6730
  %6739 = fsub fast float %6738, %6566
  %6740 = fmul fast float %6734, %6736
  %6741 = fmul fast float %6740, %6737
  %6742 = fsub fast float %6739, %6741
  %6743 = fmul fast float %6566, %6566
  %6744 = fsub fast float %6568, %6743
  %6745 = fmul fast float %6736, %6736
  %6746 = fmul fast float %6745, %6734
  %6747 = fsub fast float %6744, %6746
  %6748 = fdiv fast float %6742, %6747
  %6749 = fmul fast float %6748, %6736
  %6750 = fsub fast float %6737, %6749
  %6751 = fmul fast float %6750, %6734
  %6752 = fmul fast float %6751, %6565
  %6753 = fsub fast float 1.000000e+00, %6752
  %6754 = fmul fast float %6748, %6566
  %6755 = fsub fast float %6753, %6754
  %6756 = fmul fast float %6751, %6751
  %6757 = fmul fast float %6748, 4.000000e+00
  %6758 = fmul fast float %6757, %6755
  %6759 = fsub fast float %6756, %6758
  %6760 = call float @dx.op.unary.f32(i32 24, float %6759)  ; Sqrt(value)
  %6761 = fcmp fast oge float %6751, 0.000000e+00
  %6762 = fsub fast float -0.000000e+00, %6760
  %6763 = select i1 %6761, float %6762, float %6760
  %6764 = fsub fast float %6763, %6751
  %6765 = fdiv fast float %6764, %6748
  %6766 = fdiv fast float %6755, %6764
  %6767 = fmul fast float %6765, 5.000000e-01
  %6768 = fmul fast float %6766, 2.000000e+00
  %6769 = select i1 %6761, float %6767, float %6768
  %6770 = select i1 %6761, float %6768, float %6767
  %6771 = call float @dx.op.binary.f32(i32 35, float %6769, float %6770)  ; FMax(a,b)
  %6772 = call float @dx.op.binary.f32(i32 36, float %6769, float %6770)  ; FMin(a,b)
  %6773 = fcmp fast ogt float %6730, %6771
  %6774 = fsub fast float %6730, %6772
  %6775 = fsub fast float %6730, %6771
  %6776 = fsub fast float %6771, %6772
  %6777 = select i1 %6773, float %6775, float %6776
  %6778 = fmul float %6774, %6777
  %6779 = select i1 %6773, float %6772, float %6730
  %6780 = fcmp fast ogt float %6730, %6772
  %6781 = fmul fast float %6779, %6771
  %6782 = fadd fast float %6779, %6771
  %6783 = fmul fast float %6782, %6565
  %6784 = fadd fast float %6781, %6566
  %6785 = fsub fast float %6784, %6783
  %6786 = fdiv fast float %6785, %6778
  %6787 = select i1 %6780, float %6786, float 0.000000e+00
  %6788 = fsub fast float 1.000000e+00, %6787
  %6789 = select i1 %6773, float %6788, float %6787
  %6790 = call float @dx.op.unary.f32(i32 7, float %6789)  ; Saturate(value)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6550, 3
  %6792 = fmul fast float %6791, %6790
  %6793 = fsub fast float 1.000000e+00, %6792
  br label %6794

; <label>:6794                                    ; preds = %6723, %6435, %6400, %6396, %6362
  %6795 = phi float [ 1.000000e+00, %6362 ], [ %6793, %6723 ], [ 1.000000e+00, %6400 ], [ 1.000000e+00, %6435 ], [ 1.000000e+00, %6396 ]
  %6796 = fcmp fast ogt float %6392, 0.000000e+00
  br i1 %6796, label %6797, label %6959, !dx.controlflow.hints !121

; <label>:6797                                    ; preds = %6794
  %6798 = fadd fast float %6305, %6279
  %6799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6800 = extractvalue %dx.types.CBufRet.f32 %6799, 2
  %6801 = extractvalue %dx.types.CBufRet.f32 %6799, 3
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6804 = call float @dx.op.binary.f32(i32 35, float %6798, float 0.000000e+00)  ; FMax(a,b)
  %6805 = fadd fast float %6804, 0x3F10000000000000
  %6806 = fcmp fast oeq float %6803, 0.000000e+00
  br i1 %6806, label %6807, label %6874

; <label>:6807                                    ; preds = %6797
  %6808 = extractvalue %dx.types.CBufRet.f32 %6799, 1
  %6809 = extractvalue %dx.types.CBufRet.f32 %6799, 0
  %6810 = fmul fast float %6809, %6294
  %6811 = fmul fast float %6808, %6295
  %6812 = fadd fast float %6810, 5.000000e-01
  %6813 = call float @dx.op.unary.f32(i32 27, float %6812)  ; Round_ni(value)
  %6814 = fadd fast float %6811, 5.000000e-01
  %6815 = call float @dx.op.unary.f32(i32 27, float %6814)  ; Round_ni(value)
  %6816 = fsub fast float %6812, %6813
  %6817 = fsub fast float %6814, %6815
  %6818 = fadd fast float %6813, -5.000000e-01
  %6819 = fadd fast float %6815, -5.000000e-01
  %6820 = fmul fast float %6816, 2.000000e+00
  %6821 = fsub fast float 3.000000e+00, %6820
  %6822 = fadd fast float %6820, 1.000000e+00
  %6823 = fsub fast float 2.000000e+00, %6816
  %6824 = bitcast float %6821 to i32
  %6825 = sub nsw i32 2129859010, %6824
  %6826 = bitcast i32 %6825 to float
  %6827 = fmul fast float %6826, %6823
  %6828 = fadd fast float %6827, -1.000000e+00
  %6829 = bitcast float %6822 to i32
  %6830 = sub nsw i32 2129859010, %6829
  %6831 = bitcast i32 %6830 to float
  %6832 = fmul fast float %6831, %6816
  %6833 = fadd fast float %6832, 1.000000e+00
  %6834 = fmul fast float %6817, 2.000000e+00
  %6835 = fsub fast float 3.000000e+00, %6834
  %6836 = fadd fast float %6834, 1.000000e+00
  %6837 = fsub fast float 2.000000e+00, %6817
  %6838 = bitcast float %6835 to i32
  %6839 = sub nsw i32 2129859010, %6838
  %6840 = bitcast i32 %6839 to float
  %6841 = fmul fast float %6840, %6837
  %6842 = fadd fast float %6841, -1.000000e+00
  %6843 = bitcast float %6836 to i32
  %6844 = sub nsw i32 2129859010, %6843
  %6845 = bitcast i32 %6844 to float
  %6846 = fmul fast float %6845, %6817
  %6847 = fadd fast float %6846, 1.000000e+00
  %6848 = fadd fast float %6828, %6818
  %6849 = fmul fast float %6848, %6800
  %6850 = fadd fast float %6842, %6819
  %6851 = fmul fast float %6850, %6801
  %6852 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6849, float %6851, float undef, float undef, i32 0, i32 0, i32 undef, float %6805)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6853 = extractvalue %dx.types.ResRet.f32 %6852, 0
  %6854 = fmul fast float %6853, %6821
  %6855 = fadd fast float %6833, %6818
  %6856 = fmul fast float %6855, %6800
  %6857 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6856, float %6851, float undef, float undef, i32 0, i32 0, i32 undef, float %6805)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6858 = extractvalue %dx.types.ResRet.f32 %6857, 0
  %6859 = fmul fast float %6858, %6822
  %6860 = fadd fast float %6847, %6819
  %6861 = fmul fast float %6860, %6801
  %6862 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6849, float %6861, float undef, float undef, i32 0, i32 0, i32 undef, float %6805)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6863 = extractvalue %dx.types.ResRet.f32 %6862, 0
  %6864 = fmul fast float %6863, %6821
  %6865 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6856, float %6861, float undef, float undef, i32 0, i32 0, i32 undef, float %6805)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = fmul fast float %6866, %6822
  %6868 = fadd fast float %6867, %6864
  %6869 = fmul fast float %6868, %6836
  %6870 = fadd fast float %6859, %6854
  %6871 = fmul fast float %6870, %6835
  %6872 = fadd fast float %6871, %6869
  %6873 = fmul fast float %6872, 6.250000e-02
  br label %6959

; <label>:6874                                    ; preds = %6797
  %6875 = fmul fast float %243, 0x401921FB60000000
  %6876 = call float @dx.op.unary.f32(i32 13, float %6875)  ; Sin(value)
  %6877 = call float @dx.op.unary.f32(i32 12, float %6875)  ; Cos(value)
  %6878 = fsub fast float -0.000000e+00, %6876
  br label %6879

; <label>:6879                                    ; preds = %6928, %6874
  %6880 = phi float [ 0.000000e+00, %6874 ], [ %6923, %6928 ]
  %6881 = phi float [ 0.000000e+00, %6874 ], [ %6925, %6928 ]
  %6882 = phi i32 [ 0, %6874 ], [ %6929, %6928 ]
  %6883 = mul i32 %6882, 2
  %6884 = add i32 0, %6883
  %6885 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6884
  %6886 = load float, float* %6885, align 4
  %6887 = mul i32 %6882, 2
  %6888 = add i32 1, %6887
  %6889 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6888
  %6890 = load float, float* %6889, align 4
  %6891 = fmul fast float %6886, %6877
  %6892 = call float @dx.op.tertiary.f32(i32 46, float %6890, float %6878, float %6891)  ; FMad(a,b,c)
  %6893 = fmul fast float %6886, %6876
  %6894 = call float @dx.op.tertiary.f32(i32 46, float %6890, float %6877, float %6893)  ; FMad(a,b,c)
  %6895 = fmul fast float %6892, %6803
  %6896 = fmul fast float %6894, %6803
  %6897 = fadd fast float %6895, %6294
  %6898 = fadd fast float %6896, %6295
  %6899 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6897, float %6898, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6900 = extractvalue %dx.types.ResRet.f32 %6899, 0
  %6901 = extractvalue %dx.types.ResRet.f32 %6899, 1
  %6902 = extractvalue %dx.types.ResRet.f32 %6899, 2
  %6903 = extractvalue %dx.types.ResRet.f32 %6899, 3
  %6904 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6900, float* %6904, align 4
  %6905 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6901, float* %6905, align 4
  %6906 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6902, float* %6906, align 4
  %6907 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6903, float* %6907, align 4
  %6908 = fsub fast float %6900, %6805
  %6909 = fcmp fast olt float %6908, 0.000000e+00
  %6910 = select i1 %6909, float 0.000000e+00, float 1.000000e+00
  %6911 = fadd fast float %6910, %6880
  %6912 = fmul fast float %6910, %6908
  %6913 = fadd fast float %6912, %6881
  br label %6914

; <label>:6914                                    ; preds = %6914, %6879
  %6915 = phi i32 [ 1, %6879 ], [ %6926, %6914 ]
  %6916 = phi float [ %6913, %6879 ], [ %6925, %6914 ]
  %6917 = phi float [ %6911, %6879 ], [ %6923, %6914 ]
  %6918 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6915
  %6919 = load float, float* %6918, align 4, !tbaa !122, !noalias !112
  %6920 = fsub fast float %6919, %6805
  %6921 = fcmp fast olt float %6920, 0.000000e+00
  %6922 = select i1 %6921, float 0.000000e+00, float 1.000000e+00
  %6923 = fadd fast float %6922, %6917
  %6924 = fmul fast float %6922, %6920
  %6925 = fadd fast float %6924, %6916
  %6926 = add nuw nsw i32 %6915, 1
  %6927 = icmp eq i32 %6926, 4
  br i1 %6927, label %6928, label %6914, !llvm.loop !124

; <label>:6928                                    ; preds = %6914
  %6929 = add nuw nsw i32 %6882, 1
  %6930 = icmp eq i32 %6929, 8
  br i1 %6930, label %6931, label %6879, !llvm.loop !125

; <label>:6931                                    ; preds = %6928
  %6932 = fdiv fast float 1.000000e+00, %6923
  %6933 = fmul fast float %6932, %6925
  %6934 = fdiv fast float 1.000000e+00, %6805
  %6935 = fmul fast float %6933, %6934
  %6936 = call float @dx.op.unary.f32(i32 7, float %6935)  ; Saturate(value)
  %6937 = call float @dx.op.binary.f32(i32 35, float %6936, float 0.000000e+00)  ; FMax(a,b)
  %6938 = fmul fast float %6923, 3.125000e-02
  %6939 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6940 = fmul fast float %6939, 2.000000e+00
  %6941 = fadd fast float %6940, -1.000000e+00
  %6942 = fcmp fast ogt float %6941, 0.000000e+00
  %6943 = fcmp fast olt float %6941, 0.000000e+00
  %6944 = zext i1 %6942 to i32
  %6945 = zext i1 %6943 to i32
  %6946 = sub nsw i32 %6944, %6945
  %6947 = sitofp i32 %6946 to float
  %6948 = fmul fast float %6947, %6941
  %6949 = fsub fast float 1.000000e+00, %6948
  %6950 = fmul fast float %6949, %6949
  %6951 = fmul fast float %6950, %6949
  %6952 = fsub fast float %6949, %6951
  %6953 = fmul fast float %6952, %6937
  %6954 = fsub fast float 1.000000e+00, %6951
  %6955 = fsub fast float %6954, %6953
  %6956 = fmul fast float %6947, 5.000000e-01
  %6957 = fmul fast float %6956, %6955
  %6958 = fsub fast float 5.000000e-01, %6957
  br label %6959

; <label>:6959                                    ; preds = %6931, %6807, %6794
  %6960 = phi float [ 1.000000e+00, %6794 ], [ %6873, %6807 ], [ %6958, %6931 ]
  %6961 = fcmp fast ogt float %6390, 0.000000e+00
  br i1 %6961, label %6962, label %7126, !dx.controlflow.hints !126

; <label>:6962                                    ; preds = %6959
  %6963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6964 = extractvalue %dx.types.CBufRet.f32 %6963, 1
  %6965 = fadd fast float %6964, %6279
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 2
  %6968 = extractvalue %dx.types.CBufRet.f32 %6966, 3
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 1
  %6971 = call float @dx.op.binary.f32(i32 35, float %6965, float 0.000000e+00)  ; FMax(a,b)
  %6972 = fadd fast float %6971, 0x3F10000000000000
  %6973 = fcmp fast oeq float %6970, 0.000000e+00
  br i1 %6973, label %6974, label %7041

; <label>:6974                                    ; preds = %6962
  %6975 = extractvalue %dx.types.CBufRet.f32 %6966, 1
  %6976 = extractvalue %dx.types.CBufRet.f32 %6966, 0
  %6977 = fmul fast float %6976, %6286
  %6978 = fmul fast float %6975, %6287
  %6979 = fadd fast float %6977, 5.000000e-01
  %6980 = call float @dx.op.unary.f32(i32 27, float %6979)  ; Round_ni(value)
  %6981 = fadd fast float %6978, 5.000000e-01
  %6982 = call float @dx.op.unary.f32(i32 27, float %6981)  ; Round_ni(value)
  %6983 = fsub fast float %6979, %6980
  %6984 = fsub fast float %6981, %6982
  %6985 = fadd fast float %6980, -5.000000e-01
  %6986 = fadd fast float %6982, -5.000000e-01
  %6987 = fmul fast float %6983, 2.000000e+00
  %6988 = fsub fast float 3.000000e+00, %6987
  %6989 = fadd fast float %6987, 1.000000e+00
  %6990 = fsub fast float 2.000000e+00, %6983
  %6991 = bitcast float %6988 to i32
  %6992 = sub nsw i32 2129859010, %6991
  %6993 = bitcast i32 %6992 to float
  %6994 = fmul fast float %6993, %6990
  %6995 = fadd fast float %6994, -1.000000e+00
  %6996 = bitcast float %6989 to i32
  %6997 = sub nsw i32 2129859010, %6996
  %6998 = bitcast i32 %6997 to float
  %6999 = fmul fast float %6998, %6983
  %7000 = fadd fast float %6999, 1.000000e+00
  %7001 = fmul fast float %6984, 2.000000e+00
  %7002 = fsub fast float 3.000000e+00, %7001
  %7003 = fadd fast float %7001, 1.000000e+00
  %7004 = fsub fast float 2.000000e+00, %6984
  %7005 = bitcast float %7002 to i32
  %7006 = sub nsw i32 2129859010, %7005
  %7007 = bitcast i32 %7006 to float
  %7008 = fmul fast float %7007, %7004
  %7009 = fadd fast float %7008, -1.000000e+00
  %7010 = bitcast float %7003 to i32
  %7011 = sub nsw i32 2129859010, %7010
  %7012 = bitcast i32 %7011 to float
  %7013 = fmul fast float %7012, %6984
  %7014 = fadd fast float %7013, 1.000000e+00
  %7015 = fadd fast float %6995, %6985
  %7016 = fmul fast float %7015, %6967
  %7017 = fadd fast float %7009, %6986
  %7018 = fmul fast float %7017, %6968
  %7019 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7016, float %7018, float undef, float undef, i32 0, i32 0, i32 undef, float %6972)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7020 = extractvalue %dx.types.ResRet.f32 %7019, 0
  %7021 = fmul fast float %7020, %6988
  %7022 = fadd fast float %7000, %6985
  %7023 = fmul fast float %7022, %6967
  %7024 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7023, float %7018, float undef, float undef, i32 0, i32 0, i32 undef, float %6972)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7025 = extractvalue %dx.types.ResRet.f32 %7024, 0
  %7026 = fmul fast float %7025, %6989
  %7027 = fadd fast float %7014, %6986
  %7028 = fmul fast float %7027, %6968
  %7029 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7016, float %7028, float undef, float undef, i32 0, i32 0, i32 undef, float %6972)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7030 = extractvalue %dx.types.ResRet.f32 %7029, 0
  %7031 = fmul fast float %7030, %6988
  %7032 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7023, float %7028, float undef, float undef, i32 0, i32 0, i32 undef, float %6972)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = fmul fast float %7033, %6989
  %7035 = fadd fast float %7034, %7031
  %7036 = fmul fast float %7035, %7003
  %7037 = fadd fast float %7026, %7021
  %7038 = fmul fast float %7037, %7002
  %7039 = fadd fast float %7038, %7036
  %7040 = fmul fast float %7039, 6.250000e-02
  br label %7126

; <label>:7041                                    ; preds = %6962
  %7042 = fmul fast float %243, 0x401921FB60000000
  %7043 = call float @dx.op.unary.f32(i32 13, float %7042)  ; Sin(value)
  %7044 = call float @dx.op.unary.f32(i32 12, float %7042)  ; Cos(value)
  %7045 = fsub fast float -0.000000e+00, %7043
  br label %7046

; <label>:7046                                    ; preds = %7095, %7041
  %7047 = phi float [ 0.000000e+00, %7041 ], [ %7090, %7095 ]
  %7048 = phi float [ 0.000000e+00, %7041 ], [ %7092, %7095 ]
  %7049 = phi i32 [ 0, %7041 ], [ %7096, %7095 ]
  %7050 = mul i32 %7049, 2
  %7051 = add i32 0, %7050
  %7052 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7051
  %7053 = load float, float* %7052, align 4
  %7054 = mul i32 %7049, 2
  %7055 = add i32 1, %7054
  %7056 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7055
  %7057 = load float, float* %7056, align 4
  %7058 = fmul fast float %7053, %7044
  %7059 = call float @dx.op.tertiary.f32(i32 46, float %7057, float %7045, float %7058)  ; FMad(a,b,c)
  %7060 = fmul fast float %7053, %7043
  %7061 = call float @dx.op.tertiary.f32(i32 46, float %7057, float %7044, float %7060)  ; FMad(a,b,c)
  %7062 = fmul fast float %7059, %6970
  %7063 = fmul fast float %7061, %6970
  %7064 = fadd fast float %7062, %6286
  %7065 = fadd fast float %7063, %6287
  %7066 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7064, float %7065, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7067 = extractvalue %dx.types.ResRet.f32 %7066, 0
  %7068 = extractvalue %dx.types.ResRet.f32 %7066, 1
  %7069 = extractvalue %dx.types.ResRet.f32 %7066, 2
  %7070 = extractvalue %dx.types.ResRet.f32 %7066, 3
  %7071 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7067, float* %7071, align 4
  %7072 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7068, float* %7072, align 4
  %7073 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7069, float* %7073, align 4
  %7074 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7070, float* %7074, align 4
  %7075 = fsub fast float %7067, %6972
  %7076 = fcmp fast olt float %7075, 0.000000e+00
  %7077 = select i1 %7076, float 0.000000e+00, float 1.000000e+00
  %7078 = fadd fast float %7077, %7047
  %7079 = fmul fast float %7077, %7075
  %7080 = fadd fast float %7079, %7048
  br label %7081

; <label>:7081                                    ; preds = %7081, %7046
  %7082 = phi i32 [ 1, %7046 ], [ %7093, %7081 ]
  %7083 = phi float [ %7080, %7046 ], [ %7092, %7081 ]
  %7084 = phi float [ %7078, %7046 ], [ %7090, %7081 ]
  %7085 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7082
  %7086 = load float, float* %7085, align 4, !tbaa !122, !noalias !112
  %7087 = fsub fast float %7086, %6972
  %7088 = fcmp fast olt float %7087, 0.000000e+00
  %7089 = select i1 %7088, float 0.000000e+00, float 1.000000e+00
  %7090 = fadd fast float %7089, %7084
  %7091 = fmul fast float %7089, %7087
  %7092 = fadd fast float %7091, %7083
  %7093 = add nuw nsw i32 %7082, 1
  %7094 = icmp eq i32 %7093, 4
  br i1 %7094, label %7095, label %7081, !llvm.loop !124

; <label>:7095                                    ; preds = %7081
  %7096 = add nuw nsw i32 %7049, 1
  %7097 = icmp eq i32 %7096, 8
  br i1 %7097, label %7098, label %7046, !llvm.loop !125

; <label>:7098                                    ; preds = %7095
  %7099 = fdiv fast float 1.000000e+00, %7090
  %7100 = fmul fast float %7099, %7092
  %7101 = fdiv fast float 1.000000e+00, %6972
  %7102 = fmul fast float %7100, %7101
  %7103 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  %7104 = call float @dx.op.binary.f32(i32 35, float %7103, float 0.000000e+00)  ; FMax(a,b)
  %7105 = fmul fast float %7090, 3.125000e-02
  %7106 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7107 = fmul fast float %7106, 2.000000e+00
  %7108 = fadd fast float %7107, -1.000000e+00
  %7109 = fcmp fast ogt float %7108, 0.000000e+00
  %7110 = fcmp fast olt float %7108, 0.000000e+00
  %7111 = zext i1 %7109 to i32
  %7112 = zext i1 %7110 to i32
  %7113 = sub nsw i32 %7111, %7112
  %7114 = sitofp i32 %7113 to float
  %7115 = fmul fast float %7114, %7108
  %7116 = fsub fast float 1.000000e+00, %7115
  %7117 = fmul fast float %7116, %7116
  %7118 = fmul fast float %7117, %7116
  %7119 = fsub fast float %7116, %7118
  %7120 = fmul fast float %7119, %7104
  %7121 = fsub fast float 1.000000e+00, %7118
  %7122 = fsub fast float %7121, %7120
  %7123 = fmul fast float %7114, 5.000000e-01
  %7124 = fmul fast float %7123, %7122
  %7125 = fsub fast float 5.000000e-01, %7124
  br label %7126

; <label>:7126                                    ; preds = %7098, %6974, %6959
  %7127 = phi float [ 1.000000e+00, %6959 ], [ %7040, %6974 ], [ %7125, %7098 ]
  %7128 = fcmp fast ogt float %6389, 0.000000e+00
  br i1 %7128, label %7129, label %7293, !dx.controlflow.hints !127

; <label>:7129                                    ; preds = %7126
  %7130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7131 = extractvalue %dx.types.CBufRet.f32 %7130, 0
  %7132 = fadd fast float %7131, %6279
  %7133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.f32 %7133, 2
  %7135 = extractvalue %dx.types.CBufRet.f32 %7133, 3
  %7136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7137 = extractvalue %dx.types.CBufRet.f32 %7136, 0
  %7138 = call float @dx.op.binary.f32(i32 35, float %7132, float 0.000000e+00)  ; FMax(a,b)
  %7139 = fadd fast float %7138, 0x3F10000000000000
  %7140 = fcmp fast oeq float %7137, 0.000000e+00
  br i1 %7140, label %7141, label %7208

; <label>:7141                                    ; preds = %7129
  %7142 = extractvalue %dx.types.CBufRet.f32 %7133, 1
  %7143 = extractvalue %dx.types.CBufRet.f32 %7133, 0
  %7144 = fmul fast float %7143, %6271
  %7145 = fmul fast float %7142, %6275
  %7146 = fadd fast float %7144, 5.000000e-01
  %7147 = call float @dx.op.unary.f32(i32 27, float %7146)  ; Round_ni(value)
  %7148 = fadd fast float %7145, 5.000000e-01
  %7149 = call float @dx.op.unary.f32(i32 27, float %7148)  ; Round_ni(value)
  %7150 = fsub fast float %7146, %7147
  %7151 = fsub fast float %7148, %7149
  %7152 = fadd fast float %7147, -5.000000e-01
  %7153 = fadd fast float %7149, -5.000000e-01
  %7154 = fmul fast float %7150, 2.000000e+00
  %7155 = fsub fast float 3.000000e+00, %7154
  %7156 = fadd fast float %7154, 1.000000e+00
  %7157 = fsub fast float 2.000000e+00, %7150
  %7158 = bitcast float %7155 to i32
  %7159 = sub nsw i32 2129859010, %7158
  %7160 = bitcast i32 %7159 to float
  %7161 = fmul fast float %7160, %7157
  %7162 = fadd fast float %7161, -1.000000e+00
  %7163 = bitcast float %7156 to i32
  %7164 = sub nsw i32 2129859010, %7163
  %7165 = bitcast i32 %7164 to float
  %7166 = fmul fast float %7165, %7150
  %7167 = fadd fast float %7166, 1.000000e+00
  %7168 = fmul fast float %7151, 2.000000e+00
  %7169 = fsub fast float 3.000000e+00, %7168
  %7170 = fadd fast float %7168, 1.000000e+00
  %7171 = fsub fast float 2.000000e+00, %7151
  %7172 = bitcast float %7169 to i32
  %7173 = sub nsw i32 2129859010, %7172
  %7174 = bitcast i32 %7173 to float
  %7175 = fmul fast float %7174, %7171
  %7176 = fadd fast float %7175, -1.000000e+00
  %7177 = bitcast float %7170 to i32
  %7178 = sub nsw i32 2129859010, %7177
  %7179 = bitcast i32 %7178 to float
  %7180 = fmul fast float %7179, %7151
  %7181 = fadd fast float %7180, 1.000000e+00
  %7182 = fadd fast float %7162, %7152
  %7183 = fmul fast float %7182, %7134
  %7184 = fadd fast float %7176, %7153
  %7185 = fmul fast float %7184, %7135
  %7186 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7183, float %7185, float undef, float undef, i32 0, i32 0, i32 undef, float %7139)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7187 = extractvalue %dx.types.ResRet.f32 %7186, 0
  %7188 = fmul fast float %7187, %7155
  %7189 = fadd fast float %7167, %7152
  %7190 = fmul fast float %7189, %7134
  %7191 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7190, float %7185, float undef, float undef, i32 0, i32 0, i32 undef, float %7139)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7192 = extractvalue %dx.types.ResRet.f32 %7191, 0
  %7193 = fmul fast float %7192, %7156
  %7194 = fadd fast float %7181, %7153
  %7195 = fmul fast float %7194, %7135
  %7196 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7183, float %7195, float undef, float undef, i32 0, i32 0, i32 undef, float %7139)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7197 = extractvalue %dx.types.ResRet.f32 %7196, 0
  %7198 = fmul fast float %7197, %7155
  %7199 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7190, float %7195, float undef, float undef, i32 0, i32 0, i32 undef, float %7139)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7200 = extractvalue %dx.types.ResRet.f32 %7199, 0
  %7201 = fmul fast float %7200, %7156
  %7202 = fadd fast float %7201, %7198
  %7203 = fmul fast float %7202, %7170
  %7204 = fadd fast float %7193, %7188
  %7205 = fmul fast float %7204, %7169
  %7206 = fadd fast float %7205, %7203
  %7207 = fmul fast float %7206, 6.250000e-02
  br label %7293

; <label>:7208                                    ; preds = %7129
  %7209 = fmul fast float %243, 0x401921FB60000000
  %7210 = call float @dx.op.unary.f32(i32 13, float %7209)  ; Sin(value)
  %7211 = call float @dx.op.unary.f32(i32 12, float %7209)  ; Cos(value)
  %7212 = fsub fast float -0.000000e+00, %7210
  br label %7213

; <label>:7213                                    ; preds = %7262, %7208
  %7214 = phi float [ 0.000000e+00, %7208 ], [ %7257, %7262 ]
  %7215 = phi float [ 0.000000e+00, %7208 ], [ %7259, %7262 ]
  %7216 = phi i32 [ 0, %7208 ], [ %7263, %7262 ]
  %7217 = mul i32 %7216, 2
  %7218 = add i32 0, %7217
  %7219 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7218
  %7220 = load float, float* %7219, align 4
  %7221 = mul i32 %7216, 2
  %7222 = add i32 1, %7221
  %7223 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7222
  %7224 = load float, float* %7223, align 4
  %7225 = fmul fast float %7220, %7211
  %7226 = call float @dx.op.tertiary.f32(i32 46, float %7224, float %7212, float %7225)  ; FMad(a,b,c)
  %7227 = fmul fast float %7220, %7210
  %7228 = call float @dx.op.tertiary.f32(i32 46, float %7224, float %7211, float %7227)  ; FMad(a,b,c)
  %7229 = fmul fast float %7226, %7137
  %7230 = fmul fast float %7228, %7137
  %7231 = fadd fast float %7229, %6271
  %7232 = fadd fast float %7230, %6275
  %7233 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7231, float %7232, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7234 = extractvalue %dx.types.ResRet.f32 %7233, 0
  %7235 = extractvalue %dx.types.ResRet.f32 %7233, 1
  %7236 = extractvalue %dx.types.ResRet.f32 %7233, 2
  %7237 = extractvalue %dx.types.ResRet.f32 %7233, 3
  %7238 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7234, float* %7238, align 4
  %7239 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7235, float* %7239, align 4
  %7240 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7236, float* %7240, align 4
  %7241 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7237, float* %7241, align 4
  %7242 = fsub fast float %7234, %7139
  %7243 = fcmp fast olt float %7242, 0.000000e+00
  %7244 = select i1 %7243, float 0.000000e+00, float 1.000000e+00
  %7245 = fadd fast float %7244, %7214
  %7246 = fmul fast float %7244, %7242
  %7247 = fadd fast float %7246, %7215
  br label %7248

; <label>:7248                                    ; preds = %7248, %7213
  %7249 = phi i32 [ 1, %7213 ], [ %7260, %7248 ]
  %7250 = phi float [ %7247, %7213 ], [ %7259, %7248 ]
  %7251 = phi float [ %7245, %7213 ], [ %7257, %7248 ]
  %7252 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7249
  %7253 = load float, float* %7252, align 4, !tbaa !122, !noalias !112
  %7254 = fsub fast float %7253, %7139
  %7255 = fcmp fast olt float %7254, 0.000000e+00
  %7256 = select i1 %7255, float 0.000000e+00, float 1.000000e+00
  %7257 = fadd fast float %7256, %7251
  %7258 = fmul fast float %7256, %7254
  %7259 = fadd fast float %7258, %7250
  %7260 = add nuw nsw i32 %7249, 1
  %7261 = icmp eq i32 %7260, 4
  br i1 %7261, label %7262, label %7248, !llvm.loop !124

; <label>:7262                                    ; preds = %7248
  %7263 = add nuw nsw i32 %7216, 1
  %7264 = icmp eq i32 %7263, 8
  br i1 %7264, label %7265, label %7213, !llvm.loop !125

; <label>:7265                                    ; preds = %7262
  %7266 = fdiv fast float 1.000000e+00, %7257
  %7267 = fmul fast float %7266, %7259
  %7268 = fdiv fast float 1.000000e+00, %7139
  %7269 = fmul fast float %7267, %7268
  %7270 = call float @dx.op.unary.f32(i32 7, float %7269)  ; Saturate(value)
  %7271 = call float @dx.op.binary.f32(i32 35, float %7270, float 0.000000e+00)  ; FMax(a,b)
  %7272 = fmul fast float %7257, 3.125000e-02
  %7273 = call float @dx.op.unary.f32(i32 7, float %7272)  ; Saturate(value)
  %7274 = fmul fast float %7273, 2.000000e+00
  %7275 = fadd fast float %7274, -1.000000e+00
  %7276 = fcmp fast ogt float %7275, 0.000000e+00
  %7277 = fcmp fast olt float %7275, 0.000000e+00
  %7278 = zext i1 %7276 to i32
  %7279 = zext i1 %7277 to i32
  %7280 = sub nsw i32 %7278, %7279
  %7281 = sitofp i32 %7280 to float
  %7282 = fmul fast float %7281, %7275
  %7283 = fsub fast float 1.000000e+00, %7282
  %7284 = fmul fast float %7283, %7283
  %7285 = fmul fast float %7284, %7283
  %7286 = fsub fast float %7283, %7285
  %7287 = fmul fast float %7286, %7271
  %7288 = fsub fast float 1.000000e+00, %7285
  %7289 = fsub fast float %7288, %7287
  %7290 = fmul fast float %7281, 5.000000e-01
  %7291 = fmul fast float %7290, %7289
  %7292 = fsub fast float 5.000000e-01, %7291
  br label %7293

; <label>:7293                                    ; preds = %7265, %7141, %7126
  %7294 = phi float [ 1.000000e+00, %7126 ], [ %7207, %7141 ], [ %7292, %7265 ]
  %7295 = fsub fast float %6960, %6795
  %7296 = fmul fast float %7295, %6333
  %7297 = fadd fast float %7296, %6795
  %7298 = fsub fast float %7127, %7297
  %7299 = fmul fast float %7298, %6363
  %7300 = fadd fast float %7299, %7297
  %7301 = fsub fast float %7294, %7300
  %7302 = fmul fast float %7301, %6389
  %7303 = fadd fast float %7302, %7300
  %7304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7305 = extractvalue %dx.types.CBufRet.f32 %7304, 2
  %7306 = fcmp fast ogt float %7305, 0.000000e+00
  br i1 %7306, label %7307, label %7347, !dx.controlflow.hints !128

; <label>:7307                                    ; preds = %7293
  %7308 = fcmp fast ugt float %7305, 0.000000e+00
  br i1 %7308, label %7309, label %7344

; <label>:7309                                    ; preds = %7307
  %7310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7311 = extractvalue %dx.types.CBufRet.f32 %7310, 0
  %7312 = extractvalue %dx.types.CBufRet.f32 %7310, 1
  %7313 = extractvalue %dx.types.CBufRet.f32 %7310, 2
  %7314 = extractvalue %dx.types.CBufRet.f32 %7310, 3
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 0
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 1
  %7318 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7319 = extractvalue %dx.types.CBufRet.f32 %7315, 3
  %7320 = extractvalue %dx.types.CBufRet.f32 %7304, 0
  %7321 = extractvalue %dx.types.CBufRet.f32 %7304, 1
  %7322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7323 = extractvalue %dx.types.CBufRet.f32 %7322, 0
  %7324 = extractvalue %dx.types.CBufRet.f32 %7322, 1
  %7325 = extractvalue %dx.types.CBufRet.f32 %7322, 2
  %7326 = fadd fast float %7323, %6248
  %7327 = fadd fast float %7324, %6249
  %7328 = fadd fast float %7325, %6250
  %7329 = fmul fast float %7326, %7311
  %7330 = call float @dx.op.tertiary.f32(i32 46, float %7312, float %7327, float %7329)  ; FMad(a,b,c)
  %7331 = call float @dx.op.tertiary.f32(i32 46, float %7313, float %7328, float %7330)  ; FMad(a,b,c)
  %7332 = fadd fast float %7331, %7314
  %7333 = fmul fast float %7326, %7316
  %7334 = call float @dx.op.tertiary.f32(i32 46, float %7317, float %7327, float %7333)  ; FMad(a,b,c)
  %7335 = call float @dx.op.tertiary.f32(i32 46, float %7318, float %7328, float %7334)  ; FMad(a,b,c)
  %7336 = fadd fast float %7335, %7319
  %7337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7332, float %7336, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7338 = extractvalue %dx.types.ResRet.f32 %7337, 0
  %7339 = fmul fast float %7338, %7321
  %7340 = fadd fast float %7339, %7320
  %7341 = call float @dx.op.unary.f32(i32 7, float %7340)  ; Saturate(value)
  %7342 = fmul fast float %7341, %7305
  %7343 = fsub fast float 1.000000e+00, %7342
  br label %7344

; <label>:7344                                    ; preds = %7309, %7307
  %7345 = phi float [ %7343, %7309 ], [ 1.000000e+00, %7307 ]
  %7346 = fmul fast float %7345, %7303
  br label %7347

; <label>:7347                                    ; preds = %7344, %7293, %6228
  %7348 = phi float [ 1.000000e+00, %6228 ], [ %7346, %7344 ], [ %7303, %7293 ]
  %7349 = call float @dx.op.binary.f32(i32 36, float %7348, float %7348)  ; FMin(a,b)
  %7350 = call float @dx.op.binary.f32(i32 36, float %7348, float %7349)  ; FMin(a,b)
  %7351 = fcmp fast ogt float %7350, 0.000000e+00
  br i1 %7351, label %7352, label %7517, !dx.controlflow.hints !129

; <label>:7352                                    ; preds = %7347
  %7353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7354 = extractvalue %dx.types.CBufRet.f32 %7353, 0
  %7355 = extractvalue %dx.types.CBufRet.f32 %7353, 1
  %7356 = extractvalue %dx.types.CBufRet.f32 %7353, 2
  %7357 = extractvalue %dx.types.CBufRet.f32 %7353, 3
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 0
  %7360 = extractvalue %dx.types.CBufRet.f32 %7358, 1
  %7361 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7362 = extractvalue %dx.types.CBufRet.f32 %7358, 3
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 0
  %7365 = extractvalue %dx.types.CBufRet.f32 %7363, 1
  %7366 = extractvalue %dx.types.CBufRet.f32 %7363, 2
  %7367 = extractvalue %dx.types.CBufRet.f32 %7363, 3
  %7368 = fmul fast float %7354, %6248
  %7369 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %7355, float %7368)  ; FMad(a,b,c)
  %7370 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %7356, float %7369)  ; FMad(a,b,c)
  %7371 = fadd fast float %7370, %7357
  %7372 = fmul fast float %7359, %6248
  %7373 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %7360, float %7372)  ; FMad(a,b,c)
  %7374 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %7361, float %7373)  ; FMad(a,b,c)
  %7375 = fadd fast float %7374, %7362
  %7376 = fmul fast float %7364, %6248
  %7377 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %7365, float %7376)  ; FMad(a,b,c)
  %7378 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %7366, float %7377)  ; FMad(a,b,c)
  %7379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7380 = extractvalue %dx.types.CBufRet.f32 %7379, 0
  %7381 = extractvalue %dx.types.CBufRet.f32 %7379, 1
  %7382 = extractvalue %dx.types.CBufRet.f32 %7379, 3
  %7383 = fmul fast float %7382, %7371
  %7384 = fmul fast float %7382, %7375
  %7385 = fadd fast float %7383, %7380
  %7386 = fadd fast float %7384, %7381
  %7387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.CBufRet.f32 %7387, 1
  %7390 = fsub fast float %7385, %7388
  %7391 = fsub fast float %7386, %7389
  %7392 = fcmp fast olt float %7390, 0.000000e+00
  %7393 = fcmp fast olt float %7391, 0.000000e+00
  %7394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7394, 0
  %7396 = extractvalue %dx.types.CBufRet.f32 %7394, 1
  %7397 = extractvalue %dx.types.CBufRet.f32 %7394, 2
  %7398 = extractvalue %dx.types.CBufRet.f32 %7394, 3
  %7399 = select i1 %7392, float %7395, float %7397
  %7400 = select i1 %7393, float %7396, float %7398
  %7401 = fmul fast float %7399, %7390
  %7402 = fmul fast float %7400, %7391
  %7403 = call float @dx.op.unary.f32(i32 6, float %7401)  ; FAbs(value)
  %7404 = call float @dx.op.unary.f32(i32 6, float %7402)  ; FAbs(value)
  %7405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7406 = extractvalue %dx.types.CBufRet.f32 %7405, 0
  %7407 = call float @dx.op.binary.f32(i32 35, float %7403, float %7404)  ; FMax(a,b)
  %7408 = fsub fast float %7406, %7407
  %7409 = call float @dx.op.unary.f32(i32 7, float %7408)  ; Saturate(value)
  %7410 = fcmp fast ogt float %7409, 0.000000e+00
  br i1 %7410, label %7411, label %7452, !dx.controlflow.hints !130

; <label>:7411                                    ; preds = %7352
  %7412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7385, float %7386, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7413 = extractvalue %dx.types.ResRet.f32 %7412, 1
  %7414 = fcmp fast ogt float %7413, 0.000000e+00
  br i1 %7414, label %7415, label %7447

; <label>:7415                                    ; preds = %7411
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7385, float %7386, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7417 = extractvalue %dx.types.ResRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.ResRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.ResRet.f32 %7416, 2
  %7420 = extractvalue %dx.types.ResRet.f32 %7416, 3
  %7421 = fsub fast float 1.000000e+00, %7367
  %7422 = fsub fast float %7421, %7378
  %7423 = fmul fast float %7422, 0x400921FB60000000
  %7424 = fadd fast float %7423, 0x3FF921FB60000000
  %7425 = call float @dx.op.unary.f32(i32 13, float %7424)  ; Sin(value)
  %7426 = fadd fast float %7425, -1.000000e+00
  %7427 = fmul fast float %7426, 0x3FD45F3060000000
  %7428 = fmul fast float %7422, 0x401921FB60000000
  %7429 = fadd fast float %7428, 0x400921FB60000000
  %7430 = call float @dx.op.unary.f32(i32 13, float %7429)  ; Sin(value)
  %7431 = fadd fast float %7430, 0x3E7777A5C0000000
  %7432 = fmul fast float %7431, 0x3FC45F3060000000
  %7433 = fmul fast float %7422, 0x4022D97C80000000
  %7434 = fadd fast float %7433, 0x4012D97C80000000
  %7435 = call float @dx.op.unary.f32(i32 13, float %7434)  ; Sin(value)
  %7436 = fadd fast float %7435, 1.000000e+00
  %7437 = fmul fast float %7436, 0x3FBB2995E0000000
  %7438 = fmul fast float %7422, 0x402921FB60000000
  %7439 = fadd fast float %7438, 0x401921FB60000000
  %7440 = call float @dx.op.unary.f32(i32 13, float %7439)  ; Sin(value)
  %7441 = fadd fast float %7440, 0xBE8777A5C0000000
  %7442 = fmul fast float %7441, 0x3FB45F3060000000
  %7443 = call float @dx.op.dot4.f32(i32 56, float %7417, float %7418, float %7419, float %7420, float %7427, float %7432, float %7437, float %7442)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7444 = fmul fast float %7443, 0xBFF7154760000000
  %7445 = call float @dx.op.unary.f32(i32 21, float %7444)  ; Exp(value)
  %7446 = call float @dx.op.unary.f32(i32 7, float %7445)  ; Saturate(value)
  br label %7447

; <label>:7447                                    ; preds = %7415, %7411
  %7448 = phi float [ %7446, %7415 ], [ 1.000000e+00, %7411 ]
  %7449 = fadd fast float %7448, -1.000000e+00
  %7450 = fmul fast float %7449, %7409
  %7451 = fadd fast float %7450, 1.000000e+00
  br label %7452

; <label>:7452                                    ; preds = %7447, %7352
  %7453 = phi float [ %7451, %7447 ], [ 1.000000e+00, %7352 ]
  %7454 = fmul fast float %7453, %7348
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.CBufRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.CBufRet.f32 %7455, 2
  %7459 = fadd fast float %7456, %170
  %7460 = fadd fast float %7457, %171
  %7461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7462 = extractvalue %dx.types.CBufRet.f32 %7461, 1
  %7463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.CBufRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.CBufRet.f32 %7463, 2
  %7467 = fsub fast float -0.000000e+00, %7459
  %7468 = fsub fast float -0.000000e+00, %7460
  %7469 = fsub fast float %5344, %7458
  %7470 = fadd fast float %7469, %7462
  %7471 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7467, float %7468, float %7470)  ; Dot3(ax,ay,az,bx,by,bz)
  %7472 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7464, float %7465, float %7466)  ; Dot3(ax,ay,az,bx,by,bz)
  %7473 = fdiv fast float 1.000000e+00, %7472
  %7474 = fmul fast float %7473, %7471
  %7475 = fmul fast float %7464, %7474
  %7476 = fmul fast float %7465, %7474
  %7477 = fadd fast float %7475, %7459
  %7478 = fadd fast float %7476, %7460
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 0
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 1
  %7482 = fsub fast float %7477, %7480
  %7483 = fsub fast float %7478, %7481
  %7484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7485 = extractvalue %dx.types.CBufRet.f32 %7484, 2
  %7486 = extractvalue %dx.types.CBufRet.f32 %7484, 3
  %7487 = fmul fast float %7482, %7485
  %7488 = fmul fast float %7483, %7486
  %7489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7490 = extractvalue %dx.types.CBufRet.i32 %7489, 3
  %7491 = icmp eq i32 %7490, 0
  br i1 %7491, label %7497, label %7492

; <label>:7492                                    ; preds = %7452
  %7493 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7487, float %7488, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.ResRet.f32 %7493, 1
  %7496 = extractvalue %dx.types.ResRet.f32 %7493, 2
  br label %7502

; <label>:7497                                    ; preds = %7452
  %7498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7487, float %7488, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.ResRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.ResRet.f32 %7498, 2
  br label %7502

; <label>:7502                                    ; preds = %7497, %7492
  %7503 = phi float [ %7494, %7492 ], [ %7499, %7497 ]
  %7504 = phi float [ %7495, %7492 ], [ %7500, %7497 ]
  %7505 = phi float [ %7496, %7492 ], [ %7501, %7497 ]
  %7506 = extractvalue %dx.types.CBufRet.f32 %7461, 2
  %7507 = fmul fast float %7506, %7503
  %7508 = extractvalue %dx.types.CBufRet.f32 %7461, 0
  %7509 = fsub fast float %7474, %7508
  %7510 = fsub fast float %7509, %7507
  %7511 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7510)  ; FMax(a,b)
  %7512 = fmul fast float %7511, %7504
  %7513 = call float @dx.op.binary.f32(i32 36, float %7505, float %7512)  ; FMin(a,b)
  %7514 = fmul fast float %7513, 0xBFF7154760000000
  %7515 = call float @dx.op.unary.f32(i32 21, float %7514)  ; Exp(value)
  %7516 = fmul fast float %7454, %7515
  br label %7517

; <label>:7517                                    ; preds = %7502, %7347
  %7518 = phi float [ %7516, %7502 ], [ %7348, %7347 ]
  %7519 = call float @dx.op.binary.f32(i32 36, float %7518, float %7518)  ; FMin(a,b)
  %7520 = call float @dx.op.binary.f32(i32 36, float %7518, float %7519)  ; FMin(a,b)
  %7521 = fcmp fast ogt float %7520, 0.000000e+00
  br i1 %7521, label %7522, label %7823, !dx.controlflow.hints !131

; <label>:7522                                    ; preds = %7517
  %7523 = fmul fast float %7518, %6240
  %7524 = fmul fast float %7518, %6241
  %7525 = fmul fast float %7518, %6242
  %7526 = fsub fast float %172, %5132
  %7527 = fcmp fast ogt float %7526, 0.000000e+00
  %7528 = fmul fast float %6229, 5.120000e+02
  %7529 = fmul fast float %6230, 5.120000e+02
  %7530 = fmul fast float %6231, 5.120000e+02
  %7531 = fadd fast float %7530, %172
  %7532 = fsub fast float %5132, %7531
  %7533 = fmul fast float %7532, 2.000000e+00
  %7534 = fadd fast float %7533, %7531
  %7535 = select i1 %7527, float %7534, float %7531
  %7536 = fsub fast float %7535, %172
  %7537 = call float @dx.op.dot3.f32(i32 55, float %7528, float %7529, float %7536, float %7528, float %7529, float %7536)  ; Dot3(ax,ay,az,bx,by,bz)
  %7538 = call float @dx.op.unary.f32(i32 25, float %7537)  ; Rsqrt(value)
  %7539 = fmul fast float %7538, %7528
  %7540 = fmul fast float %7538, %7529
  %7541 = fmul fast float %7538, %7536
  %7542 = fsub fast float %5132, %172
  %7543 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7542)  ; Dot3(ax,ay,az,bx,by,bz)
  %7544 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7539, float %7540, float %7541)  ; Dot3(ax,ay,az,bx,by,bz)
  %7545 = fdiv fast float 1.000000e+00, %7544
  %7546 = fmul fast float %7545, %7543
  %7547 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7526, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7548 = fcmp fast ogt float %7547, 0.000000e+00
  %7549 = fcmp fast olt float %7547, 0.000000e+00
  %7550 = zext i1 %7548 to i32
  %7551 = zext i1 %7549 to i32
  %7552 = sub nsw i32 %7550, %7551
  %7553 = sitofp i32 %7552 to float
  %7554 = fsub fast float %7535, %5132
  %7555 = call float @dx.op.dot3.f32(i32 55, float %7528, float %7529, float %7554, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7556 = fcmp fast ogt float %7555, 0.000000e+00
  %7557 = fcmp fast olt float %7555, 0.000000e+00
  %7558 = zext i1 %7556 to i32
  %7559 = zext i1 %7557 to i32
  %7560 = sub nsw i32 %7558, %7559
  %7561 = sitofp i32 %7560 to float
  %7562 = fcmp fast une float %7553, %7561
  br i1 %7562, label %7563, label %7573

; <label>:7563                                    ; preds = %7522
  %7564 = fmul fast float %7546, %7541
  %7565 = fmul fast float %7546, %7540
  %7566 = fmul fast float %7546, %7539
  %7567 = fmul fast float %7566, %7566
  %7568 = fmul fast float %7565, %7565
  %7569 = fadd fast float %7567, %7568
  %7570 = fmul fast float %7564, %7564
  %7571 = fadd fast float %7569, %7570
  %7572 = call float @dx.op.unary.f32(i32 24, float %7571)  ; Sqrt(value)
  br label %7583

; <label>:7573                                    ; preds = %7522
  %7574 = icmp slt i32 %7552, 0
  br i1 %7574, label %7575, label %7583

; <label>:7575                                    ; preds = %7573
  %7576 = fsub fast float %172, %7535
  %7577 = fmul fast float %7528, %7528
  %7578 = fmul fast float %7529, %7529
  %7579 = fadd fast float %7577, %7578
  %7580 = fmul fast float %7576, %7576
  %7581 = fadd fast float %7579, %7580
  %7582 = call float @dx.op.unary.f32(i32 24, float %7581)  ; Sqrt(value)
  br label %7583

; <label>:7583                                    ; preds = %7575, %7573, %7563
  %7584 = phi float [ %7572, %7563 ], [ %7582, %7575 ], [ 0.000000e+00, %7573 ]
  %7585 = fsub fast float -0.000000e+00, %7584
  %7586 = select i1 %7527, float -0.000000e+00, float %7585
  %7587 = fmul fast float %5133, 0x3FF7154760000000
  %7588 = fmul fast float %7587, %7586
  %7589 = fmul fast float %5134, 0x3FF7154760000000
  %7590 = fmul fast float %7589, %7586
  %7591 = fmul fast float %5135, 0x3FF7154760000000
  %7592 = fmul fast float %7591, %7586
  %7593 = call float @dx.op.unary.f32(i32 21, float %7588)  ; Exp(value)
  %7594 = call float @dx.op.unary.f32(i32 21, float %7590)  ; Exp(value)
  %7595 = call float @dx.op.unary.f32(i32 21, float %7592)  ; Exp(value)
  %7596 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7597 = call float @dx.op.unary.f32(i32 7, float %7594)  ; Saturate(value)
  %7598 = call float @dx.op.unary.f32(i32 7, float %7595)  ; Saturate(value)
  %7599 = fmul fast float %7523, %7596
  %7600 = fmul fast float %7524, %7597
  %7601 = fmul fast float %7525, %7598
  %7602 = fsub fast float %6229, %5332
  %7603 = fsub fast float %6230, %5331
  %7604 = fsub fast float %6231, %5330
  %7605 = call float @dx.op.dot3.f32(i32 55, float %7602, float %7603, float %7604, float %7602, float %7603, float %7604)  ; Dot3(ax,ay,az,bx,by,bz)
  %7606 = call float @dx.op.unary.f32(i32 25, float %7605)  ; Rsqrt(value)
  %7607 = fmul fast float %7606, %7602
  %7608 = fmul fast float %7606, %7603
  %7609 = fmul fast float %7606, %7604
  %7610 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %7611 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5328, float %5327, float %7607, float %7608, float %7609)  ; Dot3(ax,ay,az,bx,by,bz)
  %7612 = call float @dx.op.unary.f32(i32 7, float %7610)  ; Saturate(value)
  %7613 = fmul fast float %7612, %7612
  %7614 = fmul fast float %7613, %5372
  %7615 = call float @dx.op.unary.f32(i32 7, float %7614)  ; Saturate(value)
  %7616 = fmul fast float %7615, %7612
  %7617 = call float @dx.op.dot3.f32(i32 55, float %5333, float %5334, float %5335, float %7607, float %7608, float %7609)  ; Dot3(ax,ay,az,bx,by,bz)
  %7618 = fmul fast float %7617, %7617
  %7619 = call float @dx.op.unary.f32(i32 6, float %7610)  ; FAbs(value)
  %7620 = fsub fast float 1.000000e+00, %5365
  %7621 = fmul fast float %5347, %5347
  %7622 = fmul fast float %7621, %7620
  %7623 = fadd fast float %7622, %5365
  %7624 = bitcast float %7623 to i32
  %7625 = ashr i32 %7624, 1
  %7626 = add nsw i32 %7625, 532487669
  %7627 = bitcast i32 %7626 to float
  %7628 = fadd fast float %7627, %5347
  %7629 = fmul fast float %5365, %7618
  %7630 = fsub fast float 1.000000e+00, %7618
  %7631 = fadd fast float %7630, %7629
  %7632 = fmul fast float %7619, %7619
  %7633 = fmul fast float %7632, %7620
  %7634 = fadd fast float %7633, %5365
  %7635 = bitcast float %7634 to i32
  %7636 = ashr i32 %7635, 1
  %7637 = add nsw i32 %7636, 532487669
  %7638 = bitcast i32 %7637 to float
  %7639 = fadd fast float %7638, %7619
  %7640 = fmul fast float %7631, %7631
  %7641 = fmul fast float %7640, %7628
  %7642 = fmul fast float %7641, %7639
  %7643 = fdiv fast float 0x3FF0A00000000000, %7642
  %7644 = fmul fast float %7643, %5365
  %7645 = call float @dx.op.unary.f32(i32 6, float %7611)  ; FAbs(value)
  %7646 = fsub fast float 1.000000e+00, %7645
  %7647 = bitcast float %7646 to i32
  %7648 = sitofp i32 %7647 to float
  %7649 = fmul fast float %7648, 5.000000e+00
  %7650 = fadd fast float %7649, 0xC1EFBF8940000000
  %7651 = fptosi float %7650 to i32
  %7652 = bitcast i32 %7651 to float
  %7653 = fsub fast float 1.000000e+00, %5339
  %7654 = fsub fast float 1.000000e+00, %5340
  %7655 = fsub fast float 1.000000e+00, %5345
  %7656 = fmul fast float %7652, %7653
  %7657 = fmul fast float %7652, %7654
  %7658 = fmul fast float %7652, %7655
  %7659 = fadd fast float %7656, %5339
  %7660 = fadd fast float %7657, %5340
  %7661 = fadd fast float %7658, %5345
  br i1 %5630, label %7662, label %7685

; <label>:7662                                    ; preds = %7583
  %7663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4665, float %7645, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7664 = extractvalue %dx.types.ResRet.f32 %7663, 0
  %7665 = extractvalue %dx.types.ResRet.f32 %7663, 1
  %7666 = extractvalue %dx.types.ResRet.f32 %7663, 2
  %7667 = fadd fast float %7664, -5.000000e-01
  %7668 = fadd fast float %7665, -5.000000e-01
  %7669 = fadd fast float %7666, -5.000000e-01
  %7670 = fmul fast float %5339, 4.000000e+00
  %7671 = fmul fast float %7670, %7653
  %7672 = fmul fast float %7671, %7667
  %7673 = fmul fast float %5340, 4.000000e+00
  %7674 = fmul fast float %7673, %7654
  %7675 = fmul fast float %7674, %7668
  %7676 = fmul fast float %5345, 4.000000e+00
  %7677 = fmul fast float %7676, %7655
  %7678 = fmul fast float %7677, %7669
  %7679 = fadd fast float %7672, %7659
  %7680 = fadd fast float %7675, %7660
  %7681 = fadd fast float %7678, %7661
  %7682 = call float @dx.op.unary.f32(i32 7, float %7679)  ; Saturate(value)
  %7683 = call float @dx.op.unary.f32(i32 7, float %7680)  ; Saturate(value)
  %7684 = call float @dx.op.unary.f32(i32 7, float %7681)  ; Saturate(value)
  br label %7685

; <label>:7685                                    ; preds = %7662, %7583
  %7686 = phi float [ %7682, %7662 ], [ %7659, %7583 ]
  %7687 = phi float [ %7683, %7662 ], [ %7660, %7583 ]
  %7688 = phi float [ %7684, %7662 ], [ %7661, %7583 ]
  %7689 = fmul fast float %7610, 9.843750e-01
  %7690 = fadd fast float %7689, 7.812500e-03
  %7691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7690, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7692 = extractvalue %dx.types.ResRet.f32 %7691, 2
  %7693 = extractvalue %dx.types.ResRet.f32 %7691, 3
  %7694 = fmul fast float %7692, %5339
  %7695 = fmul fast float %7692, %5340
  %7696 = fmul fast float %7692, %5345
  %7697 = fadd fast float %7694, %7693
  %7698 = fadd fast float %7695, %7693
  %7699 = fadd fast float %7696, %7693
  br i1 %5630, label %7700, label %7723

; <label>:7700                                    ; preds = %7685
  %7701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4665, float %7610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7702 = extractvalue %dx.types.ResRet.f32 %7701, 0
  %7703 = extractvalue %dx.types.ResRet.f32 %7701, 1
  %7704 = extractvalue %dx.types.ResRet.f32 %7701, 2
  %7705 = fadd fast float %7702, -5.000000e-01
  %7706 = fadd fast float %7703, -5.000000e-01
  %7707 = fadd fast float %7704, -5.000000e-01
  %7708 = fmul fast float %5339, 4.000000e+00
  %7709 = fmul fast float %7708, %7653
  %7710 = fmul fast float %7709, %7705
  %7711 = fmul fast float %5340, 4.000000e+00
  %7712 = fmul fast float %7711, %7654
  %7713 = fmul fast float %7712, %7706
  %7714 = fmul fast float %5345, 4.000000e+00
  %7715 = fmul fast float %7714, %7655
  %7716 = fmul fast float %7715, %7707
  %7717 = fadd fast float %7710, %7697
  %7718 = fadd fast float %7713, %7698
  %7719 = fadd fast float %7716, %7699
  %7720 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  %7721 = call float @dx.op.unary.f32(i32 7, float %7718)  ; Saturate(value)
  %7722 = call float @dx.op.unary.f32(i32 7, float %7719)  ; Saturate(value)
  br label %7723

; <label>:7723                                    ; preds = %7700, %7685
  %7724 = phi float [ %7720, %7700 ], [ %7697, %7685 ]
  %7725 = phi float [ %7721, %7700 ], [ %7698, %7685 ]
  %7726 = phi float [ %7722, %7700 ], [ %7699, %7685 ]
  %7727 = call float @dx.op.binary.f32(i32 35, float %7725, float %7726)  ; FMax(a,b)
  %7728 = call float @dx.op.binary.f32(i32 35, float %7724, float %7727)  ; FMax(a,b)
  %7729 = fsub fast float 1.000000e+00, %7728
  %7730 = fsub fast float -0.000000e+00, %5333
  %7731 = fsub fast float -0.000000e+00, %5334
  %7732 = fsub fast float -0.000000e+00, %5335
  %7733 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %7730, float %7731, float %7732)  ; Dot3(ax,ay,az,bx,by,bz)
  %7734 = call float @dx.op.unary.f32(i32 7, float %7733)  ; Saturate(value)
  %7735 = fmul fast float %7734, 9.843750e-01
  %7736 = fadd fast float %7735, 7.812500e-03
  %7737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7736, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7738 = extractvalue %dx.types.ResRet.f32 %7737, 2
  %7739 = extractvalue %dx.types.ResRet.f32 %7737, 3
  %7740 = fmul fast float %7738, %5339
  %7741 = fmul fast float %7738, %5340
  %7742 = fmul fast float %7738, %5345
  %7743 = fadd fast float %7740, %7739
  %7744 = fadd fast float %7741, %7739
  %7745 = fadd fast float %7742, %7739
  br i1 %5630, label %7746, label %7769

; <label>:7746                                    ; preds = %7723
  %7747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4665, float %7734, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7748 = extractvalue %dx.types.ResRet.f32 %7747, 0
  %7749 = extractvalue %dx.types.ResRet.f32 %7747, 1
  %7750 = extractvalue %dx.types.ResRet.f32 %7747, 2
  %7751 = fadd fast float %7748, -5.000000e-01
  %7752 = fadd fast float %7749, -5.000000e-01
  %7753 = fadd fast float %7750, -5.000000e-01
  %7754 = fmul fast float %5339, 4.000000e+00
  %7755 = fmul fast float %7754, %7653
  %7756 = fmul fast float %7755, %7751
  %7757 = fmul fast float %5340, 4.000000e+00
  %7758 = fmul fast float %7757, %7654
  %7759 = fmul fast float %7758, %7752
  %7760 = fmul fast float %5345, 4.000000e+00
  %7761 = fmul fast float %7760, %7655
  %7762 = fmul fast float %7761, %7753
  %7763 = fadd fast float %7756, %7743
  %7764 = fadd fast float %7759, %7744
  %7765 = fadd fast float %7762, %7745
  %7766 = call float @dx.op.unary.f32(i32 7, float %7763)  ; Saturate(value)
  %7767 = call float @dx.op.unary.f32(i32 7, float %7764)  ; Saturate(value)
  %7768 = call float @dx.op.unary.f32(i32 7, float %7765)  ; Saturate(value)
  br label %7769

; <label>:7769                                    ; preds = %7746, %7723
  %7770 = phi float [ %7766, %7746 ], [ %7743, %7723 ]
  %7771 = phi float [ %7767, %7746 ], [ %7744, %7723 ]
  %7772 = phi float [ %7768, %7746 ], [ %7745, %7723 ]
  %7773 = call float @dx.op.binary.f32(i32 35, float %7771, float %7772)  ; FMax(a,b)
  %7774 = call float @dx.op.binary.f32(i32 35, float %7770, float %7773)  ; FMax(a,b)
  %7775 = fsub fast float 1.000000e+00, %7774
  %7776 = fmul fast float %7775, %7734
  %7777 = fmul fast float %7776, %4755
  %7778 = fmul fast float %7776, %4756
  %7779 = fmul fast float %7776, %4757
  %7780 = fmul fast float %7686, %7644
  %7781 = fmul fast float %7687, %7644
  %7782 = fmul fast float %7688, %7644
  %7783 = fsub fast float 1.000000e+00, %7611
  %7784 = bitcast float %7783 to i32
  %7785 = sitofp i32 %7784 to float
  %7786 = fmul fast float %7785, 5.000000e+00
  %7787 = fadd fast float %7786, 0xC1EFBF8940000000
  %7788 = fptosi float %7787 to i32
  %7789 = bitcast i32 %7788 to float
  %7790 = fmul fast float %7789, %4666
  %7791 = fmul fast float %7729, %7790
  %7792 = fmul fast float %7791, %6169
  %7793 = fmul fast float %7791, %6170
  %7794 = fmul fast float %7791, %6171
  %7795 = fmul fast float %7729, %7616
  %7796 = fadd fast float %7792, %7780
  %7797 = fadd fast float %7793, %7781
  %7798 = fadd fast float %7794, %7782
  %7799 = fadd fast float %7777, %7795
  %7800 = fadd fast float %7778, %7795
  %7801 = fadd fast float %7779, %7795
  %7802 = fmul fast float %7799, %7599
  %7803 = fmul fast float %7800, %7600
  %7804 = fmul fast float %7801, %7601
  %7805 = fmul fast float %7616, %7599
  %7806 = fmul fast float %7805, %7796
  %7807 = fmul fast float %7616, %7600
  %7808 = fmul fast float %7807, %7797
  %7809 = fmul fast float %7616, %7601
  %7810 = fmul fast float %7809, %7798
  %7811 = fadd fast float %7802, %6219
  %7812 = fmul fast float %7811, %4662
  %7813 = fadd fast float %7803, %6221
  %7814 = fmul fast float %7813, %4662
  %7815 = fadd fast float %7804, %6223
  %7816 = fmul fast float %7815, %4662
  %7817 = fadd fast float %7806, %6202
  %7818 = fmul fast float %7817, %4662
  %7819 = fadd fast float %7808, %6205
  %7820 = fmul fast float %7819, %4662
  %7821 = fadd fast float %7810, %6208
  %7822 = fmul fast float %7821, %4662
  br label %7823

; <label>:7823                                    ; preds = %7769, %7517, %6152
  %7824 = phi float [ %6203, %6152 ], [ %6203, %7517 ], [ %7818, %7769 ]
  %7825 = phi float [ %6206, %6152 ], [ %6206, %7517 ], [ %7820, %7769 ]
  %7826 = phi float [ %6209, %6152 ], [ %6209, %7517 ], [ %7822, %7769 ]
  %7827 = phi float [ %6220, %6152 ], [ %6220, %7517 ], [ %7812, %7769 ]
  %7828 = phi float [ %6222, %6152 ], [ %6222, %7517 ], [ %7814, %7769 ]
  %7829 = phi float [ %6224, %6152 ], [ %6224, %7517 ], [ %7816, %7769 ]
  %7830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7831 = extractvalue %dx.types.CBufRet.i32 %7830, 0
  %7832 = icmp eq i32 %7831, 0
  br i1 %7832, label %8550, label %7833

; <label>:7833                                    ; preds = %7823
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 2
  %7836 = extractvalue %dx.types.CBufRet.f32 %7834, 3
  %7837 = fmul fast float %7835, %111
  %7838 = fmul fast float %7836, %112
  %7839 = fptoui float %7837 to i32
  %7840 = fptoui float %7838 to i32
  %7841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.CBufRet.f32 %7841, 2
  %7844 = extractvalue %dx.types.CBufRet.f32 %7841, 3
  %7845 = fadd fast float %99, -4.000000e+00
  %7846 = call float @dx.op.binary.f32(i32 35, float %7845, float 0.000000e+00)  ; FMax(a,b)
  %7847 = fadd fast float %7846, %7842
  %7848 = fmul fast float %7847, %7843
  %7849 = call float @dx.op.unary.f32(i32 23, float %7848)  ; Log(value)
  %7850 = fmul fast float %7849, %7844
  %7851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7852 = extractvalue %dx.types.CBufRet.f32 %7851, 2
  %7853 = fmul fast float %7850, %7852
  %7854 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.i32 %7855, 1
  %7857 = add i32 %7856, -1
  %7858 = uitofp i32 %7856 to float
  %7859 = fmul fast float %7858, %7854
  %7860 = fptoui float %7859 to i32
  %7861 = call i32 @dx.op.binary.i32(i32 40, i32 %7860, i32 %7857)  ; UMin(a,b)
  %7862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7863 = extractvalue %dx.types.CBufRet.i32 %7862, 2
  %7864 = extractvalue %dx.types.CBufRet.i32 %7862, 3
  %7865 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7840, i32 %7863, i32 %7839)  ; UMad(a,b,c)
  %7866 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7861, i32 %7864, i32 %7865)  ; UMad(a,b,c)
  %7867 = add nsw i32 %7831, -1
  %7868 = call i32 @dx.op.binary.i32(i32 37, i32 %7867, i32 0)  ; IMax(a,b)
  %7869 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %7870 = fptoui float %7869 to i32
  %7871 = lshr i32 %7870, 5
  %7872 = call i32 @dx.op.binary.i32(i32 40, i32 %7871, i32 8191)  ; UMin(a,b)
  %7873 = shl i32 %7872, 2
  %7874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7873, i32 undef)  ; BufferLoad(srv,index,wot)
  %7875 = extractvalue %dx.types.ResRet.i32 %7874, 0
  %7876 = lshr i32 %7875, 16
  %7877 = and i32 %7875, 65535
  %7878 = lshr i32 %7875, 21
  %7879 = lshr i32 %7877, 5
  %7880 = call i32 @dx.op.binary.i32(i32 40, i32 %7879, i32 %7868)  ; UMin(a,b)
  %7881 = icmp ugt i32 %7878, %7880
  br i1 %7881, label %8550, label %7882

; <label>:7882                                    ; preds = %7833
  br label %7883

; <label>:7883                                    ; preds = %8540, %7882
  %7884 = phi i32 [ %8547, %8540 ], [ %7878, %7882 ]
  %7885 = phi float [ %8541, %8540 ], [ %7824, %7882 ]
  %7886 = phi float [ %8542, %8540 ], [ %7825, %7882 ]
  %7887 = phi float [ %8543, %8540 ], [ %7826, %7882 ]
  %7888 = phi float [ %8544, %8540 ], [ %7827, %7882 ]
  %7889 = phi float [ %8545, %8540 ], [ %7828, %7882 ]
  %7890 = phi float [ %8546, %8540 ], [ %7829, %7882 ]
  %7891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7892 = extractvalue %dx.types.CBufRet.i32 %7891, 0
  %7893 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7866, i32 %7892, i32 %7884)  ; UMad(a,b,c)
  %7894 = shl i32 %7893, 2
  %7895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7894, i32 undef)  ; BufferLoad(srv,index,wot)
  %7896 = extractvalue %dx.types.ResRet.i32 %7895, 0
  %7897 = shl i32 %7884, 5
  %7898 = sub nsw i32 %7876, %7897
  %7899 = call i32 @dx.op.binary.i32(i32 37, i32 %7898, i32 0)  ; IMax(a,b)
  %7900 = call i32 @dx.op.binary.i32(i32 38, i32 %7899, i32 31)  ; IMin(a,b)
  %7901 = sub nsw i32 1, %7876
  %7902 = add nsw i32 %7901, %7877
  %7903 = call i32 @dx.op.binary.i32(i32 37, i32 %7902, i32 0)  ; IMax(a,b)
  %7904 = call i32 @dx.op.binary.i32(i32 38, i32 %7903, i32 32)  ; IMin(a,b)
  %7905 = and i32 %7904, 31
  %7906 = shl i32 -1, %7905
  %7907 = xor i32 %7906, -1
  %7908 = and i32 %7900, 31
  %7909 = shl i32 %7907, %7908
  %7910 = icmp eq i32 %7904, 32
  %7911 = select i1 %7910, i32 -1, i32 %7909
  %7912 = and i32 %7911, %7896
  %7913 = icmp eq i32 %7912, 0
  br i1 %7913, label %8540, label %7914

; <label>:7914                                    ; preds = %7883
  br label %7915

; <label>:7915                                    ; preds = %8049, %7914
  %7916 = phi i32 [ %7927, %8049 ], [ %7912, %7914 ]
  %7917 = phi float [ %8050, %8049 ], [ %7885, %7914 ]
  %7918 = phi float [ %8051, %8049 ], [ %7886, %7914 ]
  %7919 = phi float [ %8052, %8049 ], [ %7887, %7914 ]
  %7920 = phi float [ %8053, %8049 ], [ %7888, %7914 ]
  %7921 = phi float [ %8054, %8049 ], [ %7889, %7914 ]
  %7922 = phi float [ %8055, %8049 ], [ %7890, %7914 ]
  %7923 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7916)  ; FirstbitLo(value)
  %7924 = add i32 %7923, %7897
  %7925 = and i32 %7923, 31
  %7926 = shl i32 1, %7925
  %7927 = xor i32 %7926, %7916
  %7928 = mul i32 %7924, 112
  %7929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7928, i32 undef)  ; BufferLoad(srv,index,wot)
  %7930 = extractvalue %dx.types.ResRet.f32 %7929, 0
  %7931 = extractvalue %dx.types.ResRet.f32 %7929, 1
  %7932 = extractvalue %dx.types.ResRet.f32 %7929, 2
  %7933 = or i32 %7928, 12
  %7934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7933, i32 undef)  ; BufferLoad(srv,index,wot)
  %7935 = extractvalue %dx.types.ResRet.f32 %7934, 0
  %7936 = add i32 %7928, 16
  %7937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7936, i32 undef)  ; BufferLoad(srv,index,wot)
  %7938 = extractvalue %dx.types.ResRet.f32 %7937, 0
  %7939 = extractvalue %dx.types.ResRet.f32 %7937, 1
  %7940 = extractvalue %dx.types.ResRet.f32 %7937, 2
  %7941 = add i32 %7928, 28
  %7942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7941, i32 undef)  ; BufferLoad(srv,index,wot)
  %7943 = extractvalue %dx.types.ResRet.i32 %7942, 0
  %7944 = add i32 %7928, 44
  %7945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7944, i32 undef)  ; BufferLoad(srv,index,wot)
  %7946 = extractvalue %dx.types.ResRet.f32 %7945, 0
  %7947 = add i32 %7928, 48
  %7948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7947, i32 undef)  ; BufferLoad(srv,index,wot)
  %7949 = extractvalue %dx.types.ResRet.f32 %7948, 0
  %7950 = extractvalue %dx.types.ResRet.f32 %7948, 1
  %7951 = extractvalue %dx.types.ResRet.f32 %7948, 2
  %7952 = extractvalue %dx.types.ResRet.f32 %7948, 3
  %7953 = add i32 %7928, 64
  %7954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7953, i32 undef)  ; BufferLoad(srv,index,wot)
  %7955 = extractvalue %dx.types.ResRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.ResRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.ResRet.f32 %7954, 2
  %7958 = extractvalue %dx.types.ResRet.f32 %7954, 3
  %7959 = add i32 %7928, 80
  %7960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7959, i32 undef)  ; BufferLoad(srv,index,wot)
  %7961 = extractvalue %dx.types.ResRet.f32 %7960, 1
  %7962 = extractvalue %dx.types.ResRet.f32 %7960, 2
  %7963 = add i32 %7928, 92
  %7964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7963, i32 undef)  ; BufferLoad(srv,index,wot)
  %7965 = extractvalue %dx.types.ResRet.i32 %7964, 0
  %7966 = call float @dx.op.dot3.f32(i32 55, float %7930, float %7931, float %7932, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7967 = select i1 %232, float %7961, float %7930
  %7968 = select i1 %232, float %7966, float %7931
  %7969 = select i1 %232, float %7962, float %7932
  %7970 = and i32 %7965, 65535
  %7971 = uitofp i32 %7970 to float
  %7972 = lshr i32 %7965, 16
  %7973 = uitofp i32 %7972 to float
  %7974 = and i32 %7943, 65535
  %7975 = and i32 %7943, 50331648
  %7976 = icmp eq i32 %7975, 33554432
  %7977 = fsub fast float %7949, %170
  %7978 = fsub fast float %7950, %171
  %7979 = fsub fast float %7951, %172
  %7980 = call float @dx.op.dot3.f32(i32 55, float %7977, float %7978, float %7979, float %7977, float %7978, float %7979)  ; Dot3(ax,ay,az,bx,by,bz)
  %7981 = call float @dx.op.unary.f32(i32 24, float %7980)  ; Sqrt(value)
  %7982 = fdiv fast float 1.000000e+00, %7981
  %7983 = fmul fast float %7982, %7977
  %7984 = fmul fast float %7982, %7978
  %7985 = fmul fast float %7982, %7979
  %7986 = fadd fast float %7981, %7935
  %7987 = fdiv fast float 1.000000e+00, %7986
  %7988 = fmul float %7946, %7987
  %7989 = fmul float %7988, %7988
  %7990 = call float @dx.op.unary.f32(i32 7, float %7989)  ; Saturate(value)
  br i1 %7976, label %7991, label %8012

; <label>:7991                                    ; preds = %7915
  %7992 = fmul fast float %7957, %7938
  %7993 = fmul fast float %7957, %7939
  %7994 = fmul fast float %7957, %7940
  %7995 = fadd fast float %7977, %7992
  %7996 = fadd fast float %7978, %7993
  %7997 = fadd fast float %7979, %7994
  %7998 = call float @dx.op.dot3.f32(i32 55, float %7995, float %7996, float %7997, float %7995, float %7996, float %7997)  ; Dot3(ax,ay,az,bx,by,bz)
  %7999 = call float @dx.op.unary.f32(i32 25, float %7998)  ; Rsqrt(value)
  %8000 = fmul fast float %7999, %7995
  %8001 = fmul fast float %7999, %7996
  %8002 = fmul fast float %7999, %7997
  %8003 = fsub fast float %170, %7949
  %8004 = fsub fast float %171, %7950
  %8005 = fsub fast float %172, %7951
  %8006 = fsub fast float -0.000000e+00, %8003
  %8007 = fsub fast float -0.000000e+00, %8004
  %8008 = fsub fast float -0.000000e+00, %8005
  %8009 = call float @dx.op.dot3.f32(i32 55, float %8006, float %8007, float %8008, float %7938, float %7939, float %7940)  ; Dot3(ax,ay,az,bx,by,bz)
  %8010 = fcmp fast ogt float %8009, 0.000000e+00
  %8011 = uitofp i1 %8010 to float
  br label %8012

; <label>:8012                                    ; preds = %7991, %7915
  %8013 = phi float [ %8011, %7991 ], [ 1.000000e+00, %7915 ]
  %8014 = phi float [ %8000, %7991 ], [ %7983, %7915 ]
  %8015 = phi float [ %8001, %7991 ], [ %7984, %7915 ]
  %8016 = phi float [ %8002, %7991 ], [ %7985, %7915 ]
  %8017 = call float @dx.op.dot3.f32(i32 55, float %7938, float %7939, float %7940, float %8014, float %8015, float %8016)  ; Dot3(ax,ay,az,bx,by,bz)
  %8018 = fmul fast float %8017, %8017
  %8019 = call float @dx.op.unary.f32(i32 7, float %8018)  ; Saturate(value)
  %8020 = fsub fast float 1.000000e+00, %8019
  %8021 = fmul fast float %8020, 5.000000e-01
  %8022 = fcmp fast ogt float %8017, 0.000000e+00
  %8023 = fsub fast float 1.000000e+00, %8021
  %8024 = select i1 %8022, float %8021, float %8023
  %8025 = fmul fast float %8024, %7973
  %8026 = fadd fast float %8025, %7971
  %8027 = fmul fast float %8026, 0x3EF0001000000000
  %8028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8027, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8029 = extractvalue %dx.types.ResRet.f32 %8028, 0
  %8030 = fmul fast float %8017, %7955
  %8031 = fadd fast float %8030, %7956
  %8032 = call float @dx.op.unary.f32(i32 7, float %8031)  ; Saturate(value)
  %8033 = select i1 %7976, float 1.000000e+00, float %8032
  %8034 = select i1 %7976, float %8032, float 1.000000e+00
  %8035 = fmul fast float %7981, %7952
  %8036 = fsub fast float 1.000000e+00, %8035
  %8037 = fmul fast float %8036, %7958
  %8038 = call float @dx.op.unary.f32(i32 7, float %8037)  ; Saturate(value)
  %8039 = fmul fast float %8038, %8034
  %8040 = fmul fast float %8039, 2.000000e+00
  %8041 = fsub fast float 3.000000e+00, %8040
  %8042 = fmul fast float %8029, %8013
  %8043 = fmul fast float %8039, %8039
  %8044 = fmul fast float %8043, %8042
  %8045 = fmul fast float %8044, %8041
  %8046 = call float @dx.op.binary.f32(i32 36, float %8045, float %8045)  ; FMin(a,b)
  %8047 = call float @dx.op.binary.f32(i32 36, float %8045, float %8046)  ; FMin(a,b)
  %8048 = fcmp fast ogt float %8047, 0.000000e+00
  br i1 %8048, label %8057, label %8049, !dx.controlflow.hints !132

; <label>:8049                                    ; preds = %8488, %8203, %8012
  %8050 = phi float [ %7917, %8203 ], [ %7917, %8012 ], [ %8536, %8488 ]
  %8051 = phi float [ %7918, %8203 ], [ %7918, %8012 ], [ %8537, %8488 ]
  %8052 = phi float [ %7919, %8203 ], [ %7919, %8012 ], [ %8538, %8488 ]
  %8053 = phi float [ %7920, %8203 ], [ %7920, %8012 ], [ %8527, %8488 ]
  %8054 = phi float [ %7921, %8203 ], [ %7921, %8012 ], [ %8528, %8488 ]
  %8055 = phi float [ %7922, %8203 ], [ %7922, %8012 ], [ %8529, %8488 ]
  %8056 = icmp eq i32 %7916, %7926
  br i1 %8056, label %8539, label %7915

; <label>:8057                                    ; preds = %8012
  %8058 = icmp eq i32 %7974, 255
  br i1 %8058, label %8203, label %8059, !dx.controlflow.hints !133

; <label>:8059                                    ; preds = %8057
  %8060 = mul nuw nsw i32 %7974, 176
  %8061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8060, i32 undef)  ; BufferLoad(srv,index,wot)
  %8062 = extractvalue %dx.types.ResRet.f32 %8061, 0
  %8063 = extractvalue %dx.types.ResRet.f32 %8061, 1
  %8064 = extractvalue %dx.types.ResRet.f32 %8061, 2
  %8065 = extractvalue %dx.types.ResRet.f32 %8061, 3
  %8066 = add nuw nsw i32 %8060, 16
  %8067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8066, i32 undef)  ; BufferLoad(srv,index,wot)
  %8068 = extractvalue %dx.types.ResRet.f32 %8067, 0
  %8069 = extractvalue %dx.types.ResRet.f32 %8067, 1
  %8070 = add nuw nsw i32 %8060, 32
  %8071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8070, i32 undef)  ; BufferLoad(srv,index,wot)
  %8072 = extractvalue %dx.types.ResRet.f32 %8071, 0
  %8073 = extractvalue %dx.types.ResRet.f32 %8071, 1
  %8074 = extractvalue %dx.types.ResRet.f32 %8071, 2
  %8075 = add nuw nsw i32 %8060, 48
  %8076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8075, i32 undef)  ; BufferLoad(srv,index,wot)
  %8077 = extractvalue %dx.types.ResRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.ResRet.f32 %8076, 1
  %8079 = extractvalue %dx.types.ResRet.f32 %8076, 2
  %8080 = extractvalue %dx.types.ResRet.f32 %8076, 3
  %8081 = add nuw nsw i32 %8060, 64
  %8082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8081, i32 undef)  ; BufferLoad(srv,index,wot)
  %8083 = extractvalue %dx.types.ResRet.f32 %8082, 0
  %8084 = extractvalue %dx.types.ResRet.f32 %8082, 1
  %8085 = extractvalue %dx.types.ResRet.f32 %8082, 2
  %8086 = extractvalue %dx.types.ResRet.f32 %8082, 3
  %8087 = add nuw nsw i32 %8060, 80
  %8088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8087, i32 undef)  ; BufferLoad(srv,index,wot)
  %8089 = extractvalue %dx.types.ResRet.f32 %8088, 0
  %8090 = extractvalue %dx.types.ResRet.f32 %8088, 1
  %8091 = extractvalue %dx.types.ResRet.f32 %8088, 2
  %8092 = extractvalue %dx.types.ResRet.f32 %8088, 3
  %8093 = add nuw nsw i32 %8060, 96
  %8094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8093, i32 undef)  ; BufferLoad(srv,index,wot)
  %8095 = extractvalue %dx.types.ResRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.ResRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.ResRet.f32 %8094, 2
  %8098 = extractvalue %dx.types.ResRet.f32 %8094, 3
  %8099 = bitcast float %8069 to i32
  %8100 = fmul fast float %8074, %120
  %8101 = fmul fast float %8074, %122
  %8102 = fmul fast float %8074, %124
  %8103 = fadd fast float %8100, %170
  %8104 = fadd fast float %8101, %171
  %8105 = fadd fast float %8102, %172
  %8106 = fmul fast float %8103, %8077
  %8107 = call float @dx.op.tertiary.f32(i32 46, float %8104, float %8083, float %8106)  ; FMad(a,b,c)
  %8108 = call float @dx.op.tertiary.f32(i32 46, float %8105, float %8089, float %8107)  ; FMad(a,b,c)
  %8109 = fadd fast float %8108, %8095
  %8110 = fmul fast float %8103, %8078
  %8111 = call float @dx.op.tertiary.f32(i32 46, float %8104, float %8084, float %8110)  ; FMad(a,b,c)
  %8112 = call float @dx.op.tertiary.f32(i32 46, float %8105, float %8090, float %8111)  ; FMad(a,b,c)
  %8113 = fadd fast float %8112, %8096
  %8114 = fmul fast float %8103, %8079
  %8115 = call float @dx.op.tertiary.f32(i32 46, float %8104, float %8085, float %8114)  ; FMad(a,b,c)
  %8116 = call float @dx.op.tertiary.f32(i32 46, float %8105, float %8091, float %8115)  ; FMad(a,b,c)
  %8117 = fadd fast float %8116, %8097
  %8118 = fmul fast float %8103, %8080
  %8119 = call float @dx.op.tertiary.f32(i32 46, float %8104, float %8086, float %8118)  ; FMad(a,b,c)
  %8120 = call float @dx.op.tertiary.f32(i32 46, float %8105, float %8092, float %8119)  ; FMad(a,b,c)
  %8121 = fadd fast float %8120, %8098
  %8122 = fdiv fast float %8109, %8121
  %8123 = fdiv fast float %8113, %8121
  %8124 = fdiv fast float %8117, %8121
  %8125 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8124)  ; FMax(a,b)
  %8126 = fmul fast float %243, 0x401921FB60000000
  %8127 = call float @dx.op.unary.f32(i32 13, float %8126)  ; Sin(value)
  %8128 = call float @dx.op.unary.f32(i32 12, float %8126)  ; Cos(value)
  %8129 = fmul fast float %8128, %8073
  %8130 = call float @dx.op.tertiary.f32(i32 46, float %8127, float %8073, float 0.000000e+00)  ; FMad(a,b,c)
  %8131 = fmul fast float %8073, %8127
  %8132 = fsub fast float -0.000000e+00, %8131
  %8133 = call float @dx.op.tertiary.f32(i32 46, float %8128, float %8073, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8134

; <label>:8134                                    ; preds = %8134, %8059
  %8135 = phi float [ 0.000000e+00, %8059 ], [ %8167, %8134 ]
  %8136 = phi float [ 0.000000e+00, %8059 ], [ %8169, %8134 ]
  %8137 = phi i32 [ 0, %8059 ], [ %8170, %8134 ]
  %8138 = mul i32 %8137, 2
  %8139 = add i32 0, %8138
  %8140 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8139
  %8141 = load float, float* %8140, align 4
  %8142 = mul i32 %8137, 2
  %8143 = add i32 1, %8142
  %8144 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8143
  %8145 = load float, float* %8144, align 4
  %8146 = fmul fast float %8129, %8141
  %8147 = call float @dx.op.tertiary.f32(i32 46, float %8145, float %8132, float %8146)  ; FMad(a,b,c)
  %8148 = fmul fast float %8141, %8130
  %8149 = call float @dx.op.tertiary.f32(i32 46, float %8145, float %8133, float %8148)  ; FMad(a,b,c)
  %8150 = fadd fast float %8147, %8122
  %8151 = fadd fast float %8149, %8123
  %8152 = fmul fast float %8150, %8068
  %8153 = fmul fast float %8151, %8068
  %8154 = call float @dx.op.binary.f32(i32 35, float %8152, float %8064)  ; FMax(a,b)
  %8155 = call float @dx.op.binary.f32(i32 35, float %8153, float %8064)  ; FMax(a,b)
  %8156 = call float @dx.op.binary.f32(i32 36, float %8154, float %8065)  ; FMin(a,b)
  %8157 = call float @dx.op.binary.f32(i32 36, float %8155, float %8065)  ; FMin(a,b)
  %8158 = fadd fast float %8156, %8062
  %8159 = fadd fast float %8157, %8063
  %8160 = uitofp i32 %8099 to float
  %8161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8158, float %8159, float %8160, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8162 = extractvalue %dx.types.ResRet.f32 %8161, 0
  %8163 = fsub fast float %8162, %8125
  %8164 = fsub fast float %8163, %8072
  %8165 = fcmp fast ogt float %8164, 0.000000e+00
  %8166 = select i1 %8165, float 1.000000e+00, float 0.000000e+00
  %8167 = fadd fast float %8166, %8135
  %8168 = select i1 %8165, float %8164, float 0.000000e+00
  %8169 = fadd fast float %8168, %8136
  %8170 = add nuw nsw i32 %8137, 1
  %8171 = icmp eq i32 %8170, 8
  br i1 %8171, label %8172, label %8134

; <label>:8172                                    ; preds = %8134
  %8173 = fdiv fast float 1.000000e+00, %8167
  %8174 = fmul fast float %8173, %8169
  %8175 = fdiv fast float 1.000000e+00, %8125
  %8176 = fmul fast float %8174, %8175
  %8177 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8178 = call float @dx.op.binary.f32(i32 35, float %8177, float 0.000000e+00)  ; FMax(a,b)
  %8179 = fmul fast float %8167, 1.250000e-01
  %8180 = call float @dx.op.unary.f32(i32 7, float %8179)  ; Saturate(value)
  %8181 = fmul fast float %8180, 2.000000e+00
  %8182 = fadd fast float %8181, -1.000000e+00
  %8183 = fcmp fast ogt float %8182, 0.000000e+00
  %8184 = fcmp fast olt float %8182, 0.000000e+00
  %8185 = zext i1 %8183 to i32
  %8186 = zext i1 %8184 to i32
  %8187 = sub nsw i32 %8185, %8186
  %8188 = sitofp i32 %8187 to float
  %8189 = fmul fast float %8188, %8182
  %8190 = fsub fast float 1.000000e+00, %8189
  %8191 = fmul fast float %8190, %8190
  %8192 = fmul fast float %8191, %8190
  %8193 = fsub fast float %8190, %8192
  %8194 = fmul fast float %8193, %8178
  %8195 = fsub fast float 1.000000e+00, %8192
  %8196 = fsub fast float %8195, %8194
  %8197 = fmul fast float %8188, 5.000000e-01
  %8198 = fmul fast float %8197, %8196
  %8199 = fsub fast float -5.000000e-01, %8198
  %8200 = fmul fast float %8199, %8033
  %8201 = fadd fast float %8200, 1.000000e+00
  %8202 = fmul fast float %8201, %8045
  br label %8203

; <label>:8203                                    ; preds = %8172, %8057
  %8204 = phi float [ %8202, %8172 ], [ %8045, %8057 ]
  %8205 = call float @dx.op.binary.f32(i32 36, float %8204, float %8204)  ; FMin(a,b)
  %8206 = call float @dx.op.binary.f32(i32 36, float %8204, float %8205)  ; FMin(a,b)
  %8207 = fcmp fast ogt float %8206, 0.000000e+00
  br i1 %8207, label %8208, label %8049, !dx.controlflow.hints !134

; <label>:8208                                    ; preds = %8203
  %8209 = fmul fast float %8204, %7967
  %8210 = fmul fast float %8204, %7968
  %8211 = fmul fast float %8204, %7969
  %8212 = fsub fast float %7951, %5132
  %8213 = fcmp fast ogt float %8212, 0.000000e+00
  %8214 = fsub fast float %172, %5132
  %8215 = fcmp fast ogt float %8214, 0.000000e+00
  %8216 = xor i1 %8215, %8213
  %8217 = fsub fast float %5132, %7951
  %8218 = fmul fast float %8217, 2.000000e+00
  %8219 = fadd fast float %8218, %7951
  %8220 = select i1 %8216, float %7951, float %8219
  %8221 = fsub fast float %8220, %172
  %8222 = call float @dx.op.dot3.f32(i32 55, float %7977, float %7978, float %8221, float %7977, float %7978, float %8221)  ; Dot3(ax,ay,az,bx,by,bz)
  %8223 = call float @dx.op.unary.f32(i32 25, float %8222)  ; Rsqrt(value)
  %8224 = fmul fast float %8223, %7977
  %8225 = fmul fast float %8223, %7978
  %8226 = fmul fast float %8223, %8221
  %8227 = fsub fast float %5132, %172
  %8228 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8227)  ; Dot3(ax,ay,az,bx,by,bz)
  %8229 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8224, float %8225, float %8226)  ; Dot3(ax,ay,az,bx,by,bz)
  %8230 = fdiv fast float 1.000000e+00, %8229
  %8231 = fmul fast float %8230, %8228
  %8232 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8214, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8233 = fcmp fast ogt float %8232, 0.000000e+00
  %8234 = fcmp fast olt float %8232, 0.000000e+00
  %8235 = zext i1 %8233 to i32
  %8236 = zext i1 %8234 to i32
  %8237 = sub nsw i32 %8235, %8236
  %8238 = sitofp i32 %8237 to float
  %8239 = fsub fast float %8220, %5132
  %8240 = call float @dx.op.dot3.f32(i32 55, float %7977, float %7978, float %8239, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8241 = fcmp fast ogt float %8240, 0.000000e+00
  %8242 = fcmp fast olt float %8240, 0.000000e+00
  %8243 = zext i1 %8241 to i32
  %8244 = zext i1 %8242 to i32
  %8245 = sub nsw i32 %8243, %8244
  %8246 = sitofp i32 %8245 to float
  %8247 = fcmp fast une float %8238, %8246
  br i1 %8247, label %8248, label %8258

; <label>:8248                                    ; preds = %8208
  %8249 = fmul fast float %8231, %8226
  %8250 = fmul fast float %8231, %8225
  %8251 = fmul fast float %8231, %8224
  %8252 = fmul fast float %8251, %8251
  %8253 = fmul fast float %8250, %8250
  %8254 = fadd fast float %8252, %8253
  %8255 = fmul fast float %8249, %8249
  %8256 = fadd fast float %8254, %8255
  %8257 = call float @dx.op.unary.f32(i32 24, float %8256)  ; Sqrt(value)
  br label %8270

; <label>:8258                                    ; preds = %8208
  %8259 = icmp slt i32 %8237, 0
  br i1 %8259, label %8260, label %8270

; <label>:8260                                    ; preds = %8258
  %8261 = fsub fast float %170, %7949
  %8262 = fsub fast float %171, %7950
  %8263 = fsub fast float %172, %8220
  %8264 = fmul fast float %8261, %8261
  %8265 = fmul fast float %8262, %8262
  %8266 = fadd fast float %8264, %8265
  %8267 = fmul fast float %8263, %8263
  %8268 = fadd fast float %8266, %8267
  %8269 = call float @dx.op.unary.f32(i32 24, float %8268)  ; Sqrt(value)
  br label %8270

; <label>:8270                                    ; preds = %8260, %8258, %8248
  %8271 = phi float [ %8257, %8248 ], [ %8269, %8260 ], [ 0.000000e+00, %8258 ]
  %8272 = and i1 %8215, %8213
  %8273 = fsub fast float -0.000000e+00, %8271
  %8274 = select i1 %8272, float -0.000000e+00, float %8273
  %8275 = fmul fast float %5133, 0x3FF7154760000000
  %8276 = fmul fast float %8275, %8274
  %8277 = fmul fast float %5134, 0x3FF7154760000000
  %8278 = fmul fast float %8277, %8274
  %8279 = fmul fast float %5135, 0x3FF7154760000000
  %8280 = fmul fast float %8279, %8274
  %8281 = call float @dx.op.unary.f32(i32 21, float %8276)  ; Exp(value)
  %8282 = call float @dx.op.unary.f32(i32 21, float %8278)  ; Exp(value)
  %8283 = call float @dx.op.unary.f32(i32 21, float %8280)  ; Exp(value)
  %8284 = call float @dx.op.unary.f32(i32 7, float %8281)  ; Saturate(value)
  %8285 = call float @dx.op.unary.f32(i32 7, float %8282)  ; Saturate(value)
  %8286 = call float @dx.op.unary.f32(i32 7, float %8283)  ; Saturate(value)
  %8287 = fmul fast float %8209, %8284
  %8288 = fmul fast float %8210, %8285
  %8289 = fmul fast float %8211, %8286
  %8290 = fsub fast float %7983, %5332
  %8291 = fsub fast float %7984, %5331
  %8292 = fsub fast float %7985, %5330
  %8293 = call float @dx.op.dot3.f32(i32 55, float %8290, float %8291, float %8292, float %8290, float %8291, float %8292)  ; Dot3(ax,ay,az,bx,by,bz)
  %8294 = call float @dx.op.unary.f32(i32 25, float %8293)  ; Rsqrt(value)
  %8295 = fmul fast float %8294, %8290
  %8296 = fmul fast float %8294, %8291
  %8297 = fmul fast float %8294, %8292
  %8298 = call float @dx.op.dot3.f32(i32 55, float %7983, float %7984, float %7985, float %5333, float %5334, float %5335)  ; Dot3(ax,ay,az,bx,by,bz)
  %8299 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5328, float %5327, float %8295, float %8296, float %8297)  ; Dot3(ax,ay,az,bx,by,bz)
  %8300 = call float @dx.op.unary.f32(i32 7, float %8298)  ; Saturate(value)
  %8301 = fmul fast float %8300, %7990
  %8302 = fmul fast float %8300, %8300
  %8303 = fmul fast float %8302, %5372
  %8304 = call float @dx.op.unary.f32(i32 7, float %8303)  ; Saturate(value)
  %8305 = fmul fast float %8301, %8304
  %8306 = bitcast float %7980 to i32
  %8307 = ashr i32 %8306, 1
  %8308 = sub nsw i32 1597463007, %8307
  %8309 = bitcast i32 %8308 to float
  %8310 = fmul fast float %8309, %7977
  %8311 = fmul fast float %8309, %7978
  %8312 = fmul fast float %8309, %7979
  %8313 = fsub fast float %8310, %5332
  %8314 = fsub fast float %8311, %5331
  %8315 = fsub fast float %8312, %5330
  %8316 = call float @dx.op.dot3.f32(i32 55, float %8313, float %8314, float %8315, float %8313, float %8314, float %8315)  ; Dot3(ax,ay,az,bx,by,bz)
  %8317 = call float @dx.op.unary.f32(i32 25, float %8316)  ; Rsqrt(value)
  %8318 = fmul fast float %8313, %8317
  %8319 = fmul fast float %8314, %8317
  %8320 = fmul fast float %8315, %8317
  %8321 = call float @dx.op.dot3.f32(i32 55, float %5333, float %5334, float %5335, float %8318, float %8319, float %8320)  ; Dot3(ax,ay,az,bx,by,bz)
  %8322 = fmul fast float %8321, %8321
  %8323 = call float @dx.op.unary.f32(i32 6, float %8298)  ; FAbs(value)
  %8324 = fsub fast float 1.000000e+00, %5365
  %8325 = fmul fast float %5347, %5347
  %8326 = fmul fast float %8325, %8324
  %8327 = fadd fast float %8326, %5365
  %8328 = bitcast float %8327 to i32
  %8329 = ashr i32 %8328, 1
  %8330 = add nsw i32 %8329, 532487669
  %8331 = bitcast i32 %8330 to float
  %8332 = fadd fast float %8331, %5347
  %8333 = fmul fast float %5365, %8322
  %8334 = fsub fast float 1.000000e+00, %8322
  %8335 = fadd fast float %8334, %8333
  %8336 = fmul fast float %8323, %8323
  %8337 = fmul fast float %8336, %8324
  %8338 = fadd fast float %8337, %5365
  %8339 = bitcast float %8338 to i32
  %8340 = ashr i32 %8339, 1
  %8341 = add nsw i32 %8340, 532487669
  %8342 = bitcast i32 %8341 to float
  %8343 = fadd fast float %8342, %8323
  %8344 = fmul fast float %8335, %8335
  %8345 = fmul fast float %8344, %8332
  %8346 = fmul fast float %8345, %8343
  %8347 = fdiv fast float 1.000000e+00, %8346
  %8348 = bitcast float %5365 to i32
  %8349 = sitofp i32 %8348 to float
  %8350 = fmul fast float %8349, 0x3FE7F73180000000
  %8351 = fadd fast float %8350, 0x41AFE27C40000000
  %8352 = fptosi float %8351 to i32
  %8353 = bitcast i32 %8352 to float
  %8354 = fmul fast float %7946, 0x3FD80E9D60000000
  %8355 = fmul fast float %8354, %8309
  %8356 = fadd fast float %8353, %8355
  %8357 = bitcast float %8356 to i32
  %8358 = sub nsw i32 2129859010, %8357
  %8359 = bitcast i32 %8358 to float
  %8360 = fmul fast float %5365, %8347
  %8361 = fmul fast float %8360, %8353
  %8362 = fmul fast float %8361, %8359
  %8363 = call float @dx.op.unary.f32(i32 6, float %8299)  ; FAbs(value)
  %8364 = fsub fast float 1.000000e+00, %8363
  %8365 = bitcast float %8364 to i32
  %8366 = sitofp i32 %8365 to float
  %8367 = fmul fast float %8366, 5.000000e+00
  %8368 = fadd fast float %8367, 0xC1EFBF8940000000
  %8369 = fptosi float %8368 to i32
  %8370 = bitcast i32 %8369 to float
  %8371 = fsub fast float 1.000000e+00, %5339
  %8372 = fsub fast float 1.000000e+00, %5340
  %8373 = fsub fast float 1.000000e+00, %5345
  %8374 = fmul fast float %8370, %8371
  %8375 = fmul fast float %8370, %8372
  %8376 = fmul fast float %8370, %8373
  %8377 = fadd fast float %8374, %5339
  %8378 = fadd fast float %8375, %5340
  %8379 = fadd fast float %8376, %5345
  br i1 %5630, label %8380, label %8403

; <label>:8380                                    ; preds = %8270
  %8381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4665, float %8363, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8382 = extractvalue %dx.types.ResRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.ResRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.ResRet.f32 %8381, 2
  %8385 = fadd fast float %8382, -5.000000e-01
  %8386 = fadd fast float %8383, -5.000000e-01
  %8387 = fadd fast float %8384, -5.000000e-01
  %8388 = fmul fast float %5339, 4.000000e+00
  %8389 = fmul fast float %8388, %8371
  %8390 = fmul fast float %8389, %8385
  %8391 = fmul fast float %5340, 4.000000e+00
  %8392 = fmul fast float %8391, %8372
  %8393 = fmul fast float %8392, %8386
  %8394 = fmul fast float %5345, 4.000000e+00
  %8395 = fmul fast float %8394, %8373
  %8396 = fmul fast float %8395, %8387
  %8397 = fadd fast float %8390, %8377
  %8398 = fadd fast float %8393, %8378
  %8399 = fadd fast float %8396, %8379
  %8400 = call float @dx.op.unary.f32(i32 7, float %8397)  ; Saturate(value)
  %8401 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8402 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  br label %8403

; <label>:8403                                    ; preds = %8380, %8270
  %8404 = phi float [ %8400, %8380 ], [ %8377, %8270 ]
  %8405 = phi float [ %8401, %8380 ], [ %8378, %8270 ]
  %8406 = phi float [ %8402, %8380 ], [ %8379, %8270 ]
  %8407 = fmul fast float %8298, 9.843750e-01
  %8408 = fadd fast float %8407, 7.812500e-03
  %8409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8408, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8410 = extractvalue %dx.types.ResRet.f32 %8409, 2
  %8411 = extractvalue %dx.types.ResRet.f32 %8409, 3
  %8412 = fmul fast float %8410, %5339
  %8413 = fmul fast float %8410, %5340
  %8414 = fmul fast float %8410, %5345
  %8415 = fadd fast float %8412, %8411
  %8416 = fadd fast float %8413, %8411
  %8417 = fadd fast float %8414, %8411
  br i1 %5630, label %8418, label %8441

; <label>:8418                                    ; preds = %8403
  %8419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4665, float %8298, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8420 = extractvalue %dx.types.ResRet.f32 %8419, 0
  %8421 = extractvalue %dx.types.ResRet.f32 %8419, 1
  %8422 = extractvalue %dx.types.ResRet.f32 %8419, 2
  %8423 = fadd fast float %8420, -5.000000e-01
  %8424 = fadd fast float %8421, -5.000000e-01
  %8425 = fadd fast float %8422, -5.000000e-01
  %8426 = fmul fast float %5339, 4.000000e+00
  %8427 = fmul fast float %8426, %8371
  %8428 = fmul fast float %8427, %8423
  %8429 = fmul fast float %5340, 4.000000e+00
  %8430 = fmul fast float %8429, %8372
  %8431 = fmul fast float %8430, %8424
  %8432 = fmul fast float %5345, 4.000000e+00
  %8433 = fmul fast float %8432, %8373
  %8434 = fmul fast float %8433, %8425
  %8435 = fadd fast float %8428, %8415
  %8436 = fadd fast float %8431, %8416
  %8437 = fadd fast float %8434, %8417
  %8438 = call float @dx.op.unary.f32(i32 7, float %8435)  ; Saturate(value)
  %8439 = call float @dx.op.unary.f32(i32 7, float %8436)  ; Saturate(value)
  %8440 = call float @dx.op.unary.f32(i32 7, float %8437)  ; Saturate(value)
  br label %8441

; <label>:8441                                    ; preds = %8418, %8403
  %8442 = phi float [ %8438, %8418 ], [ %8415, %8403 ]
  %8443 = phi float [ %8439, %8418 ], [ %8416, %8403 ]
  %8444 = phi float [ %8440, %8418 ], [ %8417, %8403 ]
  %8445 = call float @dx.op.binary.f32(i32 35, float %8443, float %8444)  ; FMax(a,b)
  %8446 = call float @dx.op.binary.f32(i32 35, float %8442, float %8445)  ; FMax(a,b)
  %8447 = fsub fast float 1.000000e+00, %8446
  %8448 = fsub fast float -0.000000e+00, %5333
  %8449 = fsub fast float -0.000000e+00, %5334
  %8450 = fsub fast float -0.000000e+00, %5335
  %8451 = call float @dx.op.dot3.f32(i32 55, float %7983, float %7984, float %7985, float %8448, float %8449, float %8450)  ; Dot3(ax,ay,az,bx,by,bz)
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = fmul fast float %8452, %7990
  %8454 = fmul fast float %8452, 9.843750e-01
  %8455 = fadd fast float %8454, 7.812500e-03
  %8456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8455, float %5620, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8457 = extractvalue %dx.types.ResRet.f32 %8456, 2
  %8458 = extractvalue %dx.types.ResRet.f32 %8456, 3
  %8459 = fmul fast float %8457, %5339
  %8460 = fmul fast float %8457, %5340
  %8461 = fmul fast float %8457, %5345
  %8462 = fadd fast float %8459, %8458
  %8463 = fadd fast float %8460, %8458
  %8464 = fadd fast float %8461, %8458
  br i1 %5630, label %8465, label %8488

; <label>:8465                                    ; preds = %8441
  %8466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4665, float %8452, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8467 = extractvalue %dx.types.ResRet.f32 %8466, 0
  %8468 = extractvalue %dx.types.ResRet.f32 %8466, 1
  %8469 = extractvalue %dx.types.ResRet.f32 %8466, 2
  %8470 = fadd fast float %8467, -5.000000e-01
  %8471 = fadd fast float %8468, -5.000000e-01
  %8472 = fadd fast float %8469, -5.000000e-01
  %8473 = fmul fast float %5339, 4.000000e+00
  %8474 = fmul fast float %8473, %8371
  %8475 = fmul fast float %8474, %8470
  %8476 = fmul fast float %5340, 4.000000e+00
  %8477 = fmul fast float %8476, %8372
  %8478 = fmul fast float %8477, %8471
  %8479 = fmul fast float %5345, 4.000000e+00
  %8480 = fmul fast float %8479, %8373
  %8481 = fmul fast float %8480, %8472
  %8482 = fadd fast float %8475, %8462
  %8483 = fadd fast float %8478, %8463
  %8484 = fadd fast float %8481, %8464
  %8485 = call float @dx.op.unary.f32(i32 7, float %8482)  ; Saturate(value)
  %8486 = call float @dx.op.unary.f32(i32 7, float %8483)  ; Saturate(value)
  %8487 = call float @dx.op.unary.f32(i32 7, float %8484)  ; Saturate(value)
  br label %8488

; <label>:8488                                    ; preds = %8465, %8441
  %8489 = phi float [ %8485, %8465 ], [ %8462, %8441 ]
  %8490 = phi float [ %8486, %8465 ], [ %8463, %8441 ]
  %8491 = phi float [ %8487, %8465 ], [ %8464, %8441 ]
  %8492 = call float @dx.op.binary.f32(i32 35, float %8490, float %8491)  ; FMax(a,b)
  %8493 = call float @dx.op.binary.f32(i32 35, float %8489, float %8492)  ; FMax(a,b)
  %8494 = fsub fast float 1.000000e+00, %8493
  %8495 = fmul fast float %8453, %8494
  %8496 = fmul fast float %8495, %4755
  %8497 = fmul fast float %8495, %4756
  %8498 = fmul fast float %8495, %4757
  %8499 = fmul fast float %8404, %8362
  %8500 = fmul fast float %8405, %8362
  %8501 = fmul fast float %8406, %8362
  %8502 = fsub fast float 1.000000e+00, %8299
  %8503 = bitcast float %8502 to i32
  %8504 = sitofp i32 %8503 to float
  %8505 = fmul fast float %8504, 5.000000e+00
  %8506 = fadd fast float %8505, 0xC1EFBF8940000000
  %8507 = fptosi float %8506 to i32
  %8508 = bitcast i32 %8507 to float
  %8509 = fmul fast float %8508, %4666
  %8510 = fmul fast float %8447, %8509
  %8511 = fmul fast float %8510, %6169
  %8512 = fmul fast float %8510, %6170
  %8513 = fmul fast float %8510, %6171
  %8514 = fmul fast float %8447, %8305
  %8515 = fadd fast float %8511, %8499
  %8516 = fadd fast float %8512, %8500
  %8517 = fadd fast float %8513, %8501
  %8518 = fadd fast float %8496, %8514
  %8519 = fadd fast float %8497, %8514
  %8520 = fadd fast float %8498, %8514
  %8521 = fmul fast float %8287, %4662
  %8522 = fmul fast float %8521, %8518
  %8523 = fmul fast float %8288, %4662
  %8524 = fmul fast float %8523, %8519
  %8525 = fmul fast float %8289, %4662
  %8526 = fmul fast float %8525, %8520
  %8527 = fadd fast float %8522, %7920
  %8528 = fadd fast float %8524, %7921
  %8529 = fadd fast float %8526, %7922
  %8530 = fmul fast float %8521, %8305
  %8531 = fmul fast float %8530, %8515
  %8532 = fmul fast float %8523, %8305
  %8533 = fmul fast float %8532, %8516
  %8534 = fmul fast float %8525, %8305
  %8535 = fmul fast float %8534, %8517
  %8536 = fadd fast float %8531, %7917
  %8537 = fadd fast float %8533, %7918
  %8538 = fadd fast float %8535, %7919
  br label %8049

; <label>:8539                                    ; preds = %8049
  br label %8540

; <label>:8540                                    ; preds = %8539, %7883
  %8541 = phi float [ %7885, %7883 ], [ %8050, %8539 ]
  %8542 = phi float [ %7886, %7883 ], [ %8051, %8539 ]
  %8543 = phi float [ %7887, %7883 ], [ %8052, %8539 ]
  %8544 = phi float [ %7888, %7883 ], [ %8053, %8539 ]
  %8545 = phi float [ %7889, %7883 ], [ %8054, %8539 ]
  %8546 = phi float [ %7890, %7883 ], [ %8055, %8539 ]
  %8547 = add i32 %7884, 1
  %8548 = icmp ugt i32 %8547, %7880
  br i1 %8548, label %8549, label %7883

; <label>:8549                                    ; preds = %8540
  br label %8550

; <label>:8550                                    ; preds = %8549, %7833, %7823
  %8551 = phi float [ %7824, %7823 ], [ %7824, %7833 ], [ %8541, %8549 ]
  %8552 = phi float [ %7825, %7823 ], [ %7825, %7833 ], [ %8542, %8549 ]
  %8553 = phi float [ %7826, %7823 ], [ %7826, %7833 ], [ %8543, %8549 ]
  %8554 = phi float [ %7827, %7823 ], [ %7827, %7833 ], [ %8544, %8549 ]
  %8555 = phi float [ %7828, %7823 ], [ %7828, %7833 ], [ %8545, %8549 ]
  %8556 = phi float [ %7829, %7823 ], [ %7829, %7833 ], [ %8546, %8549 ]
  %8557 = fmul fast float %6178, %4662
  %8558 = fmul fast float %6179, %4662
  %8559 = fmul fast float %6180, %4662
  %8560 = fadd fast float %8557, 1.000000e+00
  %8561 = fadd fast float %8558, 1.000000e+00
  %8562 = fadd fast float %8559, 1.000000e+00
  %8563 = call float @dx.op.dot3.f32(i32 55, float %8560, float %8561, float %8562, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8564 = fsub fast float 1.000000e+00, %8563
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 0
  %8567 = fmul fast float %8566, %6184
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 3
  %8570 = fsub fast float 1.000000e+00, %4669
  %8571 = call float @dx.op.unary.f32(i32 7, float %8570)  ; Saturate(value)
  %8572 = fadd fast float %8556, %4668
  %8573 = fmul fast float %8572, %4669
  %8574 = fmul fast float %8571, %8569
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 3
  %8577 = fmul fast float %8554, %5336
  %8578 = fmul fast float %8555, %5337
  %8579 = fmul fast float %8556, %5338
  %8580 = fcmp fast ogt float %99, %192
  %8581 = and i1 %8580, %5138
  %8582 = or i1 %5144, %8581
  %8583 = icmp eq i32 %5137, 2
  %8584 = fcmp fast ole float %99, %192
  %8585 = and i1 %8584, %8583
  %8586 = or i1 %8585, %8582
  br i1 %8581, label %8587, label %8844

; <label>:8587                                    ; preds = %8550
  %8588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8589 = extractvalue %dx.types.CBufRet.f32 %8588, 2
  %8590 = extractvalue %dx.types.CBufRet.f32 %8588, 3
  %8591 = fmul fast float %8589, %111
  %8592 = fmul fast float %8590, %112
  %8593 = call float @dx.op.unary.f32(i32 7, float %8591)  ; Saturate(value)
  %8594 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8595 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8593, float %8594, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8596 = extractvalue %dx.types.ResRet.f32 %8595, 0
  %8597 = extractvalue %dx.types.ResRet.f32 %8595, 1
  %8598 = extractvalue %dx.types.ResRet.f32 %8595, 2
  %8599 = extractvalue %dx.types.ResRet.f32 %8595, 3
  %8600 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8593, float %8594, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8601 = extractvalue %dx.types.ResRet.f32 %8600, 0
  %8602 = extractvalue %dx.types.ResRet.f32 %8600, 1
  %8603 = extractvalue %dx.types.ResRet.f32 %8600, 2
  %8604 = extractvalue %dx.types.ResRet.f32 %8600, 3
  %8605 = call float @dx.op.binary.f32(i32 35, float %8597, float %8598)  ; FMax(a,b)
  %8606 = call float @dx.op.binary.f32(i32 35, float %8596, float %8605)  ; FMax(a,b)
  %8607 = call float @dx.op.binary.f32(i32 35, float %8606, float %8599)  ; FMax(a,b)
  %8608 = call float @dx.op.binary.f32(i32 36, float %8602, float %8603)  ; FMin(a,b)
  %8609 = call float @dx.op.binary.f32(i32 36, float %8601, float %8608)  ; FMin(a,b)
  %8610 = call float @dx.op.binary.f32(i32 36, float %8609, float %8604)  ; FMin(a,b)
  %8611 = fmul fast float %8607, 2.550000e+02
  %8612 = fadd fast float %8611, 0x3F70101020000000
  %8613 = fptoui float %8612 to i32
  %8614 = fmul fast float %8610, 2.550000e+02
  %8615 = fadd fast float %8614, 0x3F70101020000000
  %8616 = fptoui float %8615 to i32
  %8617 = icmp ult i32 %8613, %8616
  br i1 %8617, label %8618, label %8786

; <label>:8618                                    ; preds = %8587
  %8619 = fcmp fast ogt float %98, 9.843750e-01
  %8620 = fadd fast float %99, -4.000000e+00
  %8621 = select i1 %8619, float -4.000000e+00, float %8620
  %8622 = call float @dx.op.binary.f32(i32 35, float %8621, float 0.000000e+00)  ; FMax(a,b)
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8625 = fadd fast float %8624, %8622
  %8626 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8627 = fmul fast float %8625, %8626
  %8628 = call float @dx.op.unary.f32(i32 23, float %8627)  ; Log(value)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8623, 3
  %8630 = fmul fast float %8629, %8628
  %8631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8631, 2
  %8633 = fmul fast float %8630, %8632
  %8634 = call float @dx.op.unary.f32(i32 7, float %8633)  ; Saturate(value)
  %8635 = uitofp i32 %8613 to float
  %8636 = uitofp i32 %8616 to float
  %8637 = fadd fast float %8635, 5.000000e-01
  %8638 = fadd fast float %8636, 5.000000e-01
  %8639 = fmul fast float %8632, %8637
  %8640 = fmul fast float %8632, %8638
  %8641 = fadd fast float %8639, 0x3F0FFB4800000000
  %8642 = fadd fast float %8640, 0xBF0FFB4800000000
  %8643 = call float @dx.op.binary.f32(i32 35, float %8634, float %8641)  ; FMax(a,b)
  %8644 = call float @dx.op.binary.f32(i32 36, float %8643, float %8642)  ; FMin(a,b)
  %8645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8646 = extractvalue %dx.types.CBufRet.f32 %8645, 1
  %8647 = extractvalue %dx.types.CBufRet.f32 %8645, 2
  %8648 = extractvalue %dx.types.CBufRet.f32 %8645, 0
  %8649 = fmul fast float %8646, %8644
  %8650 = fadd fast float %8648, %8649
  %8651 = fadd fast float %8648, %8647
  %8652 = fsub fast float %8646, %8647
  %8653 = fadd fast float %8652, %8648
  %8654 = call float @dx.op.binary.f32(i32 35, float %8650, float %8651)  ; FMax(a,b)
  %8655 = call float @dx.op.binary.f32(i32 36, float %8654, float %8653)  ; FMin(a,b)
  %8656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8593, float %8594, float %8655, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8657 = extractvalue %dx.types.ResRet.f32 %8656, 0
  %8658 = extractvalue %dx.types.ResRet.f32 %8656, 1
  %8659 = extractvalue %dx.types.ResRet.f32 %8656, 2
  %8660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8661 = extractvalue %dx.types.CBufRet.i32 %8660, 0
  %8662 = extractvalue %dx.types.CBufRet.i32 %8660, 1
  %8663 = uitofp i32 %8661 to float
  %8664 = uitofp i32 %8662 to float
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 0
  %8667 = extractvalue %dx.types.CBufRet.f32 %8665, 1
  %8668 = fmul fast float %8663, %8593
  %8669 = fmul fast float %8664, %8594
  %8670 = fadd fast float %8668, -5.000000e-01
  %8671 = fadd fast float %8669, -5.000000e-01
  %8672 = call float @dx.op.unary.f32(i32 22, float %8670)  ; Frc(value)
  %8673 = call float @dx.op.unary.f32(i32 22, float %8671)  ; Frc(value)
  %8674 = fmul fast float %8672, %8672
  %8675 = fmul fast float %8674, %8672
  %8676 = fsub fast float 3.000000e+00, %8672
  %8677 = fmul fast float %8674, %8676
  %8678 = fmul fast float %8672, 3.000000e+00
  %8679 = fmul fast float %8675, 3.000000e+00
  %8680 = fmul fast float %8674, 6.000000e+00
  %8681 = fsub fast float %8679, %8680
  %8682 = fadd fast float %8681, 4.000000e+00
  %8683 = fmul fast float %8682, 0x3FC5555560000000
  %8684 = fmul fast float %8675, -3.000000e+00
  %8685 = fadd fast float %8674, %8672
  %8686 = fmul fast float %8685, 3.000000e+00
  %8687 = fadd fast float %8684, 1.000000e+00
  %8688 = fadd fast float %8687, %8686
  %8689 = fmul fast float %8675, 0x3FC5555560000000
  %8690 = fmul fast float %8673, %8673
  %8691 = fmul fast float %8690, %8673
  %8692 = fsub fast float 3.000000e+00, %8673
  %8693 = fmul fast float %8690, %8692
  %8694 = fmul fast float %8673, 3.000000e+00
  %8695 = fmul fast float %8691, 3.000000e+00
  %8696 = fmul fast float %8690, 6.000000e+00
  %8697 = fsub fast float %8695, %8696
  %8698 = fadd fast float %8697, 4.000000e+00
  %8699 = fmul fast float %8698, 0x3FC5555560000000
  %8700 = fmul fast float %8691, -3.000000e+00
  %8701 = fadd fast float %8690, %8673
  %8702 = fmul fast float %8701, 3.000000e+00
  %8703 = fadd fast float %8700, 1.000000e+00
  %8704 = fadd fast float %8703, %8702
  %8705 = fmul fast float %8691, 0x3FC5555560000000
  %8706 = fadd fast float %8672, 1.000000e+00
  %8707 = fsub fast float 1.000000e+00, %8678
  %8708 = fadd fast float %8707, %8677
  %8709 = fadd fast float %8708, %8682
  %8710 = fmul fast float %8709, 0x3FC5555560000000
  %8711 = fdiv fast float %8683, %8710
  %8712 = fsub fast float %8706, %8711
  %8713 = fsub fast float 1.000000e+00, %8672
  %8714 = fadd fast float %8688, %8675
  %8715 = fmul fast float %8714, 0x3FC5555560000000
  %8716 = fdiv fast float %8689, %8715
  %8717 = fadd fast float %8713, %8716
  %8718 = fadd fast float %8673, 1.000000e+00
  %8719 = fsub fast float 1.000000e+00, %8694
  %8720 = fadd fast float %8719, %8693
  %8721 = fadd fast float %8720, %8698
  %8722 = fmul fast float %8721, 0x3FC5555560000000
  %8723 = fdiv fast float %8699, %8722
  %8724 = fsub fast float %8718, %8723
  %8725 = fsub fast float 1.000000e+00, %8673
  %8726 = fadd fast float %8704, %8691
  %8727 = fmul fast float %8726, 0x3FC5555560000000
  %8728 = fdiv fast float %8705, %8727
  %8729 = fadd fast float %8728, %8725
  %8730 = fmul fast float %8712, %8666
  %8731 = fsub fast float %8593, %8730
  %8732 = fmul fast float %8717, %8666
  %8733 = fadd fast float %8732, %8593
  %8734 = fmul fast float %8729, %8667
  %8735 = fadd fast float %8734, %8594
  %8736 = fmul fast float %8724, %8667
  %8737 = fsub fast float %8594, %8736
  %8738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8731, float %8737, float %8655, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8739 = extractvalue %dx.types.ResRet.f32 %8738, 0
  %8740 = extractvalue %dx.types.ResRet.f32 %8738, 1
  %8741 = extractvalue %dx.types.ResRet.f32 %8738, 2
  %8742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8733, float %8737, float %8655, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8743 = extractvalue %dx.types.ResRet.f32 %8742, 0
  %8744 = extractvalue %dx.types.ResRet.f32 %8742, 1
  %8745 = extractvalue %dx.types.ResRet.f32 %8742, 2
  %8746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8731, float %8735, float %8655, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8747 = extractvalue %dx.types.ResRet.f32 %8746, 0
  %8748 = extractvalue %dx.types.ResRet.f32 %8746, 1
  %8749 = extractvalue %dx.types.ResRet.f32 %8746, 2
  %8750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8733, float %8735, float %8655, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8751 = extractvalue %dx.types.ResRet.f32 %8750, 0
  %8752 = extractvalue %dx.types.ResRet.f32 %8750, 1
  %8753 = extractvalue %dx.types.ResRet.f32 %8750, 2
  %8754 = fsub fast float %8747, %8739
  %8755 = fsub fast float %8748, %8740
  %8756 = fsub fast float %8749, %8741
  %8757 = fmul fast float %8754, %8727
  %8758 = fmul fast float %8755, %8727
  %8759 = fmul fast float %8756, %8727
  %8760 = fadd fast float %8757, %8739
  %8761 = fadd fast float %8758, %8740
  %8762 = fadd fast float %8759, %8741
  %8763 = fsub fast float %8751, %8743
  %8764 = fsub fast float %8752, %8744
  %8765 = fsub fast float %8753, %8745
  %8766 = fmul fast float %8763, %8727
  %8767 = fmul fast float %8764, %8727
  %8768 = fmul fast float %8765, %8727
  %8769 = fsub fast float %8743, %8760
  %8770 = fadd fast float %8769, %8766
  %8771 = fsub fast float %8744, %8761
  %8772 = fadd fast float %8771, %8767
  %8773 = fsub fast float %8745, %8762
  %8774 = fadd fast float %8773, %8768
  %8775 = fmul fast float %8770, %8715
  %8776 = fmul fast float %8772, %8715
  %8777 = fmul fast float %8774, %8715
  %8778 = fadd fast float %8775, %8760
  %8779 = fadd fast float %8776, %8761
  %8780 = fadd fast float %8777, %8762
  %8781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.f32 %8781, 1
  %8783 = fmul fast float %8778, %8782
  %8784 = fmul fast float %8779, %8782
  %8785 = fmul fast float %8780, %8782
  br label %8786

; <label>:8786                                    ; preds = %8618, %8587
  %8787 = phi float [ %8657, %8618 ], [ 1.000000e+00, %8587 ]
  %8788 = phi float [ %8658, %8618 ], [ 1.000000e+00, %8587 ]
  %8789 = phi float [ %8659, %8618 ], [ 1.000000e+00, %8587 ]
  %8790 = phi float [ %8783, %8618 ], [ 0.000000e+00, %8587 ]
  %8791 = phi float [ %8784, %8618 ], [ 0.000000e+00, %8587 ]
  %8792 = phi float [ %8785, %8618 ], [ 0.000000e+00, %8587 ]
  %8793 = fmul fast float %8790, %8564
  %8794 = fmul fast float %8791, %8564
  %8795 = fmul fast float %8792, %8564
  %8796 = call float @dx.op.dot3.f32(i32 55, float %8787, float %8788, float %8789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8797 = call float @dx.op.dot3.f32(i32 55, float %8793, float %8794, float %8795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8798 = select i1 %232, float %8796, float %8787
  %8799 = select i1 %232, float %8796, float %8788
  %8800 = select i1 %232, float 1.000000e+00, float %8789
  %8801 = select i1 %232, float %8797, float %8793
  %8802 = select i1 %232, float 0.000000e+00, float %8794
  %8803 = select i1 %232, float 0.000000e+00, float %8795
  %8804 = fmul fast float %8798, %8577
  %8805 = fmul fast float %8799, %8578
  %8806 = fmul fast float %8800, %8579
  %8807 = fadd fast float %8804, %8801
  %8808 = fadd fast float %8805, %8802
  %8809 = fadd fast float %8803, %8806
  %8810 = fmul fast float %8798, %8551
  %8811 = fmul fast float %8799, %8552
  %8812 = fmul fast float %8800, %8553
  %8813 = fmul fast float %140, %8589
  %8814 = fmul fast float %142, %8590
  %8815 = fsub fast float 1.000000e+00, %8813
  %8816 = fsub fast float 1.000000e+00, %8814
  %8817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8818 = extractvalue %dx.types.CBufRet.f32 %8817, 0
  %8819 = extractvalue %dx.types.CBufRet.f32 %8817, 1
  %8820 = extractvalue %dx.types.CBufRet.f32 %8817, 2
  %8821 = fmul fast float %8815, %8818
  %8822 = fmul fast float %8815, %8819
  %8823 = fmul fast float %8815, %8820
  %8824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8825 = extractvalue %dx.types.CBufRet.f32 %8824, 0
  %8826 = extractvalue %dx.types.CBufRet.f32 %8824, 1
  %8827 = extractvalue %dx.types.CBufRet.f32 %8824, 2
  %8828 = fmul fast float %8816, %8825
  %8829 = fmul fast float %8816, %8826
  %8830 = fmul fast float %8816, %8827
  %8831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8832 = extractvalue %dx.types.CBufRet.f32 %8831, 0
  %8833 = extractvalue %dx.types.CBufRet.f32 %8831, 1
  %8834 = extractvalue %dx.types.CBufRet.f32 %8831, 2
  %8835 = fadd fast float %8828, %8832
  %8836 = fadd fast float %8835, %8821
  %8837 = fadd fast float %8829, %8833
  %8838 = fadd fast float %8837, %8822
  %8839 = fadd fast float %8830, %8834
  %8840 = fadd fast float %8839, %8823
  %8841 = fmul fast float %8836, %192
  %8842 = fmul fast float %8838, %192
  %8843 = fmul fast float %8840, %192
  br label %8844

; <label>:8844                                    ; preds = %8786, %8550
  %8845 = phi float [ %8841, %8786 ], [ %170, %8550 ]
  %8846 = phi float [ %8842, %8786 ], [ %171, %8550 ]
  %8847 = phi float [ %8843, %8786 ], [ %172, %8550 ]
  %8848 = phi float [ %192, %8786 ], [ %99, %8550 ]
  %8849 = phi float [ %8807, %8786 ], [ %8577, %8550 ]
  %8850 = phi float [ %8808, %8786 ], [ %8578, %8550 ]
  %8851 = phi float [ %8809, %8786 ], [ %8579, %8550 ]
  %8852 = phi float [ %8810, %8786 ], [ %8551, %8550 ]
  %8853 = phi float [ %8811, %8786 ], [ %8552, %8550 ]
  %8854 = phi float [ %8812, %8786 ], [ %8553, %8550 ]
  %8855 = phi float [ %8787, %8786 ], [ 1.000000e+00, %8550 ]
  br i1 %8586, label %10010, label %8856

; <label>:8856                                    ; preds = %8844
  %8857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8858 = extractvalue %dx.types.CBufRet.f32 %8857, 0
  %8859 = extractvalue %dx.types.CBufRet.f32 %8857, 1
  %8860 = extractvalue %dx.types.CBufRet.f32 %8857, 2
  %8861 = extractvalue %dx.types.CBufRet.f32 %8857, 3
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8866 = extractvalue %dx.types.CBufRet.f32 %8862, 3
  %8867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8868 = extractvalue %dx.types.CBufRet.f32 %8867, 0
  %8869 = extractvalue %dx.types.CBufRet.f32 %8867, 1
  %8870 = extractvalue %dx.types.CBufRet.f32 %8867, 2
  %8871 = extractvalue %dx.types.CBufRet.f32 %8867, 3
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  %8874 = extractvalue %dx.types.CBufRet.f32 %8872, 1
  %8875 = extractvalue %dx.types.CBufRet.f32 %8872, 2
  %8876 = extractvalue %dx.types.CBufRet.f32 %8872, 3
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 3
  %8879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8880 = extractvalue %dx.types.CBufRet.f32 %8879, 3
  %8881 = extractvalue %dx.types.CBufRet.f32 %8879, 0
  %8882 = extractvalue %dx.types.CBufRet.f32 %8879, 1
  %8883 = extractvalue %dx.types.CBufRet.f32 %8879, 2
  %8884 = fcmp fast olt float %8883, -5.000000e-01
  %8885 = call float @dx.op.dot3.f32(i32 55, float %8845, float %8846, float %8847, float %8845, float %8846, float %8847)  ; Dot3(ax,ay,az,bx,by,bz)
  %8886 = call float @dx.op.unary.f32(i32 25, float %8885)  ; Rsqrt(value)
  %8887 = fmul fast float %8886, %8885
  %8888 = fmul fast float %8886, %8845
  %8889 = fmul fast float %8886, %8846
  %8890 = fmul fast float %8886, %8847
  %8891 = fadd fast float %8887, %8861
  %8892 = call float @dx.op.dot3.f32(i32 55, float %8888, float %8889, float %8890, float %8858, float %8859, float %8860)  ; Dot3(ax,ay,az,bx,by,bz)
  %8893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.i32 %8893, 1
  %8895 = and i32 %8894, 1
  %8896 = icmp ne i32 %8895, 0
  %8897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8898 = extractvalue %dx.types.CBufRet.f32 %8897, 2
  %8899 = fcmp fast ogt float %8898, 0.000000e+00
  %8900 = and i1 %8896, %8899
  br i1 %8900, label %8901, label %9307, !dx.controlflow.hints !135

; <label>:8901                                    ; preds = %8856
  %8902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8903 = extractvalue %dx.types.CBufRet.f32 %8902, 3
  %8904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8905 = extractvalue %dx.types.CBufRet.f32 %8904, 2
  %8906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8906, 2
  %8908 = fsub fast float %8905, %8907
  %8909 = and i32 %8894, 2
  %8910 = extractvalue %dx.types.CBufRet.i32 %8893, 0
  %8911 = call i32 @dx.op.binary.i32(i32 40, i32 %8910, i32 3)  ; UMin(a,b)
  %8912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8913 = extractvalue %dx.types.CBufRet.f32 %8912, 0
  %8914 = extractvalue %dx.types.CBufRet.f32 %8912, 1
  %8915 = extractvalue %dx.types.CBufRet.f32 %8906, 0
  %8916 = extractvalue %dx.types.CBufRet.f32 %8906, 1
  %8917 = fsub fast float %8913, %8915
  %8918 = fsub fast float %8914, %8916
  %8919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8920 = extractvalue %dx.types.CBufRet.f32 %8919, 0
  %8921 = fcmp fast ogt float %8920, 0.000000e+00
  %8922 = fsub fast float -0.000000e+00, %8917
  %8923 = fsub fast float -0.000000e+00, %8918
  %8924 = call float @dx.op.dot2.f32(i32 54, float %8888, float %8889, float %8888, float %8889)  ; Dot2(ax,ay,bx,by)
  %8925 = call float @dx.op.dot2.f32(i32 54, float %8888, float %8889, float %8922, float %8923)  ; Dot2(ax,ay,bx,by)
  %8926 = fmul fast float %8925, 2.000000e+00
  %8927 = call float @dx.op.dot2.f32(i32 54, float %8922, float %8923, float %8922, float %8923)  ; Dot2(ax,ay,bx,by)
  %8928 = fmul fast float %8920, %8920
  %8929 = fsub fast float %8927, %8928
  %8930 = fmul fast float %8926, %8926
  %8931 = fmul fast float %8924, 4.000000e+00
  %8932 = fmul fast float %8931, %8929
  %8933 = fsub fast float %8930, %8932
  %8934 = fcmp fast ogt float %8933, 0.000000e+00
  br i1 %8934, label %8935, label %8950

; <label>:8935                                    ; preds = %8901
  %8936 = fcmp fast ogt float %8926, 0.000000e+00
  %8937 = call float @dx.op.unary.f32(i32 24, float %8933)  ; Sqrt(value)
  %8938 = fsub fast float -0.000000e+00, %8937
  %8939 = select i1 %8936, float %8937, float %8938
  %8940 = fadd fast float %8939, %8926
  %8941 = fmul float %8940, -5.000000e-01
  %8942 = fdiv fast float %8941, %8924
  %8943 = call float @dx.op.binary.f32(i32 35, float %8942, float 0.000000e+00)  ; FMax(a,b)
  %8944 = call float @dx.op.binary.f32(i32 36, float %8887, float %8943)  ; FMin(a,b)
  %8945 = fdiv fast float %8929, %8941
  %8946 = call float @dx.op.binary.f32(i32 35, float %8945, float 0.000000e+00)  ; FMax(a,b)
  %8947 = call float @dx.op.binary.f32(i32 36, float %8887, float %8946)  ; FMin(a,b)
  %8948 = call float @dx.op.binary.f32(i32 36, float %8944, float %8947)  ; FMin(a,b)
  %8949 = call float @dx.op.binary.f32(i32 35, float %8944, float %8947)  ; FMax(a,b)
  br label %8950

; <label>:8950                                    ; preds = %8935, %8901
  %8951 = phi float [ %8949, %8935 ], [ -1.000000e+00, %8901 ]
  %8952 = phi float [ %8948, %8935 ], [ -1.000000e+00, %8901 ]
  %8953 = phi i1 [ true, %8935 ], [ false, %8901 ]
  %8954 = and i1 %8921, %8953
  br i1 %8954, label %8955, label %8957

; <label>:8955                                    ; preds = %8950
  %8956 = fcmp fast oeq float %8952, %8951
  br i1 %8956, label %9260, label %8958

; <label>:8957                                    ; preds = %8950
  br i1 %8921, label %9260, label %8958

; <label>:8958                                    ; preds = %8957, %8955
  %8959 = phi float [ %8887, %8957 ], [ %8951, %8955 ]
  %8960 = phi float [ 0.000000e+00, %8957 ], [ %8952, %8955 ]
  %8961 = icmp ne i32 %8909, 0
  %8962 = fmul fast float %8959, %8890
  %8963 = fadd fast float %8962, %8903
  %8964 = fmul fast float %8963, %8959
  %8965 = select i1 %8961, float 0.000000e+00, float %8964
  %8966 = fcmp fast oeq float %8890, 0.000000e+00
  %8967 = fdiv fast float %8908, %8890
  %8968 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8967)  ; FMax(a,b)
  %8969 = select i1 %8966, float %8959, float %8968
  %8970 = call float @dx.op.binary.f32(i32 36, float %8959, float %8969)  ; FMin(a,b)
  %8971 = fcmp fast ogt float %8890, 0.000000e+00
  %8972 = fcmp fast olt float %8908, 0.000000e+00
  br i1 %8971, label %8973, label %9030

; <label>:8973                                    ; preds = %8958
  %8974 = icmp eq i32 %8909, 0
  br i1 %8972, label %8975, label %9019

; <label>:8975                                    ; preds = %8973
  %8976 = select i1 %8974, float %8959, float 0.000000e+00
  %8977 = fsub fast float -0.000000e+00, %8976
  %8978 = call float @dx.op.unary.f32(i32 6, float %8977)  ; FAbs(value)
  %8979 = fmul fast float %8976, %8890
  %8980 = fadd fast float %8979, %8903
  %8981 = fmul fast float %8978, %8980
  %8982 = fsub fast float %8965, %8981
  %8983 = fsub fast float %8959, %8978
  %8984 = select i1 %8974, float %8983, float 0.000000e+00
  %8985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8986 = extractvalue %dx.types.CBufRet.f32 %8985, 0
  %8987 = extractvalue %dx.types.CBufRet.f32 %8985, 1
  %8988 = extractvalue %dx.types.CBufRet.f32 %8985, 2
  %8989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8990 = extractvalue %dx.types.CBufRet.f32 %8989, 0
  %8991 = extractvalue %dx.types.CBufRet.f32 %8989, 1
  %8992 = extractvalue %dx.types.CBufRet.f32 %8989, 2
  %8993 = extractvalue %dx.types.CBufRet.f32 %8989, 3
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 3
  %8996 = call float @dx.op.binary.f32(i32 36, float %8982, float %8995)  ; FMin(a,b)
  %8997 = fmul fast float %8993, %8984
  %8998 = call float @dx.op.unary.f32(i32 7, float %8997)  ; Saturate(value)
  %8999 = fsub fast float %8990, %8986
  %9000 = fsub fast float %8991, %8987
  %9001 = fsub fast float %8992, %8988
  %9002 = fmul fast float %8998, %8999
  %9003 = fmul fast float %8998, %9000
  %9004 = fmul fast float %8998, %9001
  %9005 = fadd fast float %9002, %8986
  %9006 = fadd fast float %9003, %8987
  %9007 = fadd fast float %9004, %8988
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9011 = fadd fast float %9010, %9009
  %9012 = call float @dx.op.unary.f32(i32 7, float %9011)  ; Saturate(value)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9014 = extractvalue %dx.types.CBufRet.f32 %9008, 3
  %9015 = fadd fast float %9014, %9013
  %9016 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  %9017 = fmul fast float %9012, %8996
  %9018 = fmul fast float %9017, %9016
  br label %9260

; <label>:9019                                    ; preds = %8973
  br i1 %8974, label %9020, label %9041

; <label>:9020                                    ; preds = %9019
  %9021 = call float @dx.op.binary.f32(i32 36, float %8970, float %8960)  ; FMin(a,b)
  %9022 = fsub fast float %8970, %9021
  %9023 = fsub fast float %9022, %8959
  %9024 = call float @dx.op.unary.f32(i32 6, float %9023)  ; FAbs(value)
  %9025 = fadd fast float %9022, %8959
  %9026 = fmul fast float %9025, %8890
  %9027 = fadd fast float %9026, %8903
  %9028 = fmul fast float %9027, %9024
  %9029 = fsub fast float %8965, %9028
  br label %9041

; <label>:9030                                    ; preds = %8958
  br i1 %8972, label %9031, label %9041

; <label>:9031                                    ; preds = %9030
  %9032 = call float @dx.op.binary.f32(i32 35, float %8960, float %8970)  ; FMax(a,b)
  %9033 = icmp eq i32 %8909, 0
  %9034 = select i1 %9033, float %8970, float 0.000000e+00
  %9035 = fsub fast float -0.000000e+00, %9034
  %9036 = call float @dx.op.unary.f32(i32 6, float %9035)  ; FAbs(value)
  %9037 = fmul fast float %9034, %8890
  %9038 = fadd fast float %9037, %8903
  %9039 = fmul fast float %9036, %9038
  %9040 = fsub fast float %8965, %9039
  br label %9041

; <label>:9041                                    ; preds = %9031, %9030, %9020, %9019
  %9042 = phi float [ %8960, %9019 ], [ %8960, %9020 ], [ %9032, %9031 ], [ %8960, %9030 ]
  %9043 = phi float [ 0.000000e+00, %9019 ], [ %9024, %9020 ], [ %9036, %9031 ], [ 0.000000e+00, %9030 ]
  %9044 = phi float [ %8965, %9019 ], [ %9029, %9020 ], [ %9040, %9031 ], [ %8965, %9030 ]
  %9045 = phi float [ %8970, %9019 ], [ %8970, %9020 ], [ %8959, %9031 ], [ %8959, %9030 ]
  %9046 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9046, align 4, !tbaa !122, !noalias !136
  %9047 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9047, align 4, !tbaa !122, !noalias !136
  %9048 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9048, align 4, !tbaa !122, !noalias !136
  %9049 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9049, align 4, !tbaa !122, !noalias !136
  %9050 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9050, align 4, !tbaa !122, !noalias !136
  %9051 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9051, align 4, !tbaa !122, !noalias !136
  %9052 = icmp sgt i32 %8911, 0
  br i1 %9052, label %9053, label %9114

; <label>:9053                                    ; preds = %9041
  br label %9054

; <label>:9054                                    ; preds = %9103, %9053
  %9055 = phi i32 [ %9104, %9103 ], [ 0, %9053 ]
  %9056 = phi i32 [ %9105, %9103 ], [ 0, %9053 ]
  %9057 = add nuw i32 %9056, 171
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9057)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 0
  %9060 = extractvalue %dx.types.CBufRet.f32 %9058, 1
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 0
  %9063 = extractvalue %dx.types.CBufRet.f32 %9061, 1
  %9064 = fsub fast float %9059, %9062
  %9065 = fsub fast float %9060, %9063
  %9066 = extractvalue %dx.types.CBufRet.f32 %9058, 2
  %9067 = fsub fast float -0.000000e+00, %9064
  %9068 = fsub fast float -0.000000e+00, %9065
  %9069 = call float @dx.op.dot2.f32(i32 54, float %8888, float %8889, float %9067, float %9068)  ; Dot2(ax,ay,bx,by)
  %9070 = fmul fast float %9069, 2.000000e+00
  %9071 = call float @dx.op.dot2.f32(i32 54, float %9067, float %9068, float %9067, float %9068)  ; Dot2(ax,ay,bx,by)
  %9072 = fmul fast float %9066, %9066
  %9073 = fsub fast float %9071, %9072
  %9074 = fmul fast float %9070, %9070
  %9075 = fmul fast float %8931, %9073
  %9076 = fsub fast float %9074, %9075
  %9077 = fcmp fast ogt float %9076, 0.000000e+00
  br i1 %9077, label %9078, label %9093

; <label>:9078                                    ; preds = %9054
  %9079 = fcmp fast ogt float %9070, 0.000000e+00
  %9080 = call float @dx.op.unary.f32(i32 24, float %9076)  ; Sqrt(value)
  %9081 = fsub fast float -0.000000e+00, %9080
  %9082 = select i1 %9079, float %9080, float %9081
  %9083 = fadd fast float %9082, %9070
  %9084 = fmul float %9083, -5.000000e-01
  %9085 = fdiv fast float %9084, %8924
  %9086 = call float @dx.op.binary.f32(i32 35, float %9085, float 0.000000e+00)  ; FMax(a,b)
  %9087 = call float @dx.op.binary.f32(i32 36, float %8959, float %9086)  ; FMin(a,b)
  %9088 = fdiv fast float %9073, %9084
  %9089 = call float @dx.op.binary.f32(i32 35, float %9088, float 0.000000e+00)  ; FMax(a,b)
  %9090 = call float @dx.op.binary.f32(i32 36, float %8959, float %9089)  ; FMin(a,b)
  %9091 = call float @dx.op.binary.f32(i32 36, float %9087, float %9090)  ; FMin(a,b)
  %9092 = call float @dx.op.binary.f32(i32 35, float %9087, float %9090)  ; FMax(a,b)
  br label %9093

; <label>:9093                                    ; preds = %9078, %9054
  %9094 = phi float [ %9092, %9078 ], [ -1.000000e+00, %9054 ]
  %9095 = phi float [ %9091, %9078 ], [ -1.000000e+00, %9054 ]
  %9096 = phi i1 [ true, %9078 ], [ false, %9054 ]
  br i1 %9096, label %9097, label %9103

; <label>:9097                                    ; preds = %9093
  %9098 = call float @dx.op.binary.f32(i32 35, float %9042, float %9095)  ; FMax(a,b)
  %9099 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9056
  store float %9098, float* %9099, align 4, !tbaa !122, !noalias !136
  %9100 = call float @dx.op.binary.f32(i32 35, float %9042, float %9094)  ; FMax(a,b)
  %9101 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9056
  store float %9100, float* %9101, align 4, !tbaa !122, !noalias !136
  %9102 = add nsw i32 %9055, 1
  br label %9103

; <label>:9103                                    ; preds = %9097, %9093
  %9104 = phi i32 [ %9102, %9097 ], [ %9055, %9093 ]
  %9105 = add nuw nsw i32 %9056, 1
  %9106 = icmp eq i32 %9105, %8911
  br i1 %9106, label %9107, label %9054

; <label>:9107                                    ; preds = %9103
  %9108 = load float, float* %9048, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9109 = load float, float* %9047, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9110 = load float, float* %9046, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9111 = load float, float* %9051, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9112 = load float, float* %9050, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9113 = load float, float* %9049, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9114

; <label>:9114                                    ; preds = %9107, %9041
  %9115 = phi float [ -1.000000e+00, %9041 ], [ %9113, %9107 ]
  %9116 = phi float [ -1.000000e+00, %9041 ], [ %9112, %9107 ]
  %9117 = phi float [ -1.000000e+00, %9041 ], [ %9111, %9107 ]
  %9118 = phi float [ -1.000000e+00, %9041 ], [ %9110, %9107 ]
  %9119 = phi float [ -1.000000e+00, %9041 ], [ %9109, %9107 ]
  %9120 = phi float [ -1.000000e+00, %9041 ], [ %9108, %9107 ]
  %9121 = phi i32 [ 0, %9041 ], [ %9104, %9107 ]
  %9122 = call float @dx.op.binary.f32(i32 36, float %9119, float %9120)  ; FMin(a,b)
  %9123 = call float @dx.op.binary.f32(i32 36, float %9118, float %9122)  ; FMin(a,b)
  %9124 = call float @dx.op.binary.f32(i32 35, float %9118, float %9119)  ; FMax(a,b)
  %9125 = call float @dx.op.binary.f32(i32 36, float %9124, float %9120)  ; FMin(a,b)
  %9126 = call float @dx.op.binary.f32(i32 36, float %9118, float %9119)  ; FMin(a,b)
  %9127 = call float @dx.op.binary.f32(i32 35, float %9126, float %9125)  ; FMax(a,b)
  %9128 = call float @dx.op.binary.f32(i32 35, float %9119, float %9120)  ; FMax(a,b)
  %9129 = call float @dx.op.binary.f32(i32 35, float %9118, float %9128)  ; FMax(a,b)
  store float %9123, float* %9046, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9127, float* %9047, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9129, float* %9048, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9130 = call float @dx.op.binary.f32(i32 36, float %9116, float %9117)  ; FMin(a,b)
  %9131 = call float @dx.op.binary.f32(i32 36, float %9115, float %9130)  ; FMin(a,b)
  %9132 = call float @dx.op.binary.f32(i32 35, float %9115, float %9116)  ; FMax(a,b)
  %9133 = call float @dx.op.binary.f32(i32 36, float %9132, float %9117)  ; FMin(a,b)
  %9134 = call float @dx.op.binary.f32(i32 36, float %9115, float %9116)  ; FMin(a,b)
  %9135 = call float @dx.op.binary.f32(i32 35, float %9134, float %9133)  ; FMax(a,b)
  %9136 = call float @dx.op.binary.f32(i32 35, float %9116, float %9117)  ; FMax(a,b)
  %9137 = call float @dx.op.binary.f32(i32 35, float %9115, float %9136)  ; FMax(a,b)
  store float %9131, float* %9049, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9135, float* %9050, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9137, float* %9051, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9138 = sub nsw i32 3, %9121
  %9139 = icmp sgt i32 %9138, 2
  br i1 %9139, label %9140, label %9178

; <label>:9140                                    ; preds = %9114
  %9141 = icmp eq i32 %8909, 0
  %9142 = fsub fast float %8959, %9043
  %9143 = select i1 %9141, float %9142, float %9043
  %9144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9145 = extractvalue %dx.types.CBufRet.f32 %9144, 0
  %9146 = extractvalue %dx.types.CBufRet.f32 %9144, 1
  %9147 = extractvalue %dx.types.CBufRet.f32 %9144, 2
  %9148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9148, 0
  %9150 = extractvalue %dx.types.CBufRet.f32 %9148, 1
  %9151 = extractvalue %dx.types.CBufRet.f32 %9148, 2
  %9152 = extractvalue %dx.types.CBufRet.f32 %9148, 3
  %9153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9154 = extractvalue %dx.types.CBufRet.f32 %9153, 3
  %9155 = call float @dx.op.binary.f32(i32 36, float %9044, float %9154)  ; FMin(a,b)
  %9156 = fmul fast float %9152, %9143
  %9157 = call float @dx.op.unary.f32(i32 7, float %9156)  ; Saturate(value)
  %9158 = fsub fast float %9149, %9145
  %9159 = fsub fast float %9150, %9146
  %9160 = fsub fast float %9151, %9147
  %9161 = fmul fast float %9157, %9158
  %9162 = fmul fast float %9157, %9159
  %9163 = fmul fast float %9157, %9160
  %9164 = fadd fast float %9161, %9145
  %9165 = fadd fast float %9162, %9146
  %9166 = fadd fast float %9163, %9147
  %9167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9168 = extractvalue %dx.types.CBufRet.f32 %9167, 0
  %9169 = extractvalue %dx.types.CBufRet.f32 %9167, 1
  %9170 = fadd fast float %9169, %9168
  %9171 = call float @dx.op.unary.f32(i32 7, float %9170)  ; Saturate(value)
  %9172 = extractvalue %dx.types.CBufRet.f32 %9167, 2
  %9173 = extractvalue %dx.types.CBufRet.f32 %9167, 3
  %9174 = fadd fast float %9173, %9172
  %9175 = call float @dx.op.unary.f32(i32 7, float %9174)  ; Saturate(value)
  %9176 = fmul fast float %9171, %9155
  %9177 = fmul fast float %9176, %9175
  br label %9260

; <label>:9178                                    ; preds = %9114
  %9179 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9138
  %9180 = load float, float* %9179, align 4, !tbaa !122, !noalias !136
  %9181 = fcmp fast olt float %9180, %9045
  %9182 = icmp sgt i32 %9121, 0
  %9183 = and i1 %9182, %9181
  br i1 %9183, label %9184, label %9221

; <label>:9184                                    ; preds = %9178
  br label %9185

; <label>:9185                                    ; preds = %9214, %9184
  %9186 = phi float [ %9215, %9214 ], [ %9043, %9184 ]
  %9187 = phi float [ %9216, %9214 ], [ %9044, %9184 ]
  %9188 = phi float [ %9196, %9214 ], [ %9180, %9184 ]
  %9189 = phi i32 [ %9193, %9214 ], [ %9138, %9184 ]
  %9190 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9189
  %9191 = load float, float* %9190, align 4, !tbaa !122, !noalias !136
  %9192 = icmp slt i32 %9189, 2
  %9193 = add nsw i32 %9189, 1
  %9194 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9193
  %9195 = load float, float* %9194, align 4, !tbaa !122, !noalias !136
  %9196 = select i1 %9192, float %9195, float %8959
  %9197 = call float @dx.op.binary.f32(i32 36, float %9196, float %9191)  ; FMin(a,b)
  %9198 = call float @dx.op.binary.f32(i32 36, float %9045, float %9197)  ; FMin(a,b)
  %9199 = icmp eq i32 %8909, 0
  %9200 = fadd fast float %9198, %9188
  %9201 = fmul fast float %9200, %8890
  %9202 = fadd fast float %9201, %8903
  br i1 %9199, label %9208, label %9203

; <label>:9203                                    ; preds = %9185
  %9204 = fsub fast float %9198, %9188
  %9205 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9204)  ; FMax(a,b)
  %9206 = fmul fast float %9205, %9202
  %9207 = fadd fast float %9206, %9187
  br label %9214

; <label>:9208                                    ; preds = %9185
  %9209 = fsub fast float %9188, %9198
  %9210 = call float @dx.op.unary.f32(i32 6, float %9209)  ; FAbs(value)
  %9211 = fadd fast float %9210, %9186
  %9212 = fmul fast float %9210, %9202
  %9213 = fsub fast float %9187, %9212
  br label %9214

; <label>:9214                                    ; preds = %9208, %9203
  %9215 = phi float [ %9205, %9203 ], [ %9211, %9208 ]
  %9216 = phi float [ %9207, %9203 ], [ %9213, %9208 ]
  %9217 = fcmp fast olt float %9196, %9045
  %9218 = icmp slt i32 %9193, 3
  %9219 = and i1 %9218, %9217
  br i1 %9219, label %9185, label %9220

; <label>:9220                                    ; preds = %9214
  br label %9221

; <label>:9221                                    ; preds = %9220, %9178
  %9222 = phi float [ %9043, %9178 ], [ %9215, %9220 ]
  %9223 = phi float [ %9044, %9178 ], [ %9216, %9220 ]
  %9224 = fsub fast float %8959, %9222
  %9225 = select i1 %8961, float %9222, float %9224
  %9226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.f32 %9226, 0
  %9228 = extractvalue %dx.types.CBufRet.f32 %9226, 1
  %9229 = extractvalue %dx.types.CBufRet.f32 %9226, 2
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 0
  %9232 = extractvalue %dx.types.CBufRet.f32 %9230, 1
  %9233 = extractvalue %dx.types.CBufRet.f32 %9230, 2
  %9234 = extractvalue %dx.types.CBufRet.f32 %9230, 3
  %9235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9236 = extractvalue %dx.types.CBufRet.f32 %9235, 3
  %9237 = call float @dx.op.binary.f32(i32 36, float %9223, float %9236)  ; FMin(a,b)
  %9238 = fmul fast float %9234, %9225
  %9239 = call float @dx.op.unary.f32(i32 7, float %9238)  ; Saturate(value)
  %9240 = fsub fast float %9231, %9227
  %9241 = fsub fast float %9232, %9228
  %9242 = fsub fast float %9233, %9229
  %9243 = fmul fast float %9239, %9240
  %9244 = fmul fast float %9239, %9241
  %9245 = fmul fast float %9239, %9242
  %9246 = fadd fast float %9243, %9227
  %9247 = fadd fast float %9244, %9228
  %9248 = fadd fast float %9245, %9229
  %9249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9250 = extractvalue %dx.types.CBufRet.f32 %9249, 0
  %9251 = extractvalue %dx.types.CBufRet.f32 %9249, 1
  %9252 = fadd fast float %9251, %9250
  %9253 = call float @dx.op.unary.f32(i32 7, float %9252)  ; Saturate(value)
  %9254 = extractvalue %dx.types.CBufRet.f32 %9249, 2
  %9255 = extractvalue %dx.types.CBufRet.f32 %9249, 3
  %9256 = fadd fast float %9255, %9254
  %9257 = call float @dx.op.unary.f32(i32 7, float %9256)  ; Saturate(value)
  %9258 = fmul fast float %9253, %9237
  %9259 = fmul fast float %9258, %9257
  br label %9260

; <label>:9260                                    ; preds = %9221, %9140, %8975, %8957, %8955
  %9261 = phi float [ %8984, %8975 ], [ %9143, %9140 ], [ %9225, %9221 ], [ 0.000000e+00, %8955 ], [ 0.000000e+00, %8957 ]
  %9262 = phi float [ %9018, %8975 ], [ %9177, %9140 ], [ %9259, %9221 ], [ 0.000000e+00, %8955 ], [ 0.000000e+00, %8957 ]
  %9263 = phi float [ %9005, %8975 ], [ %9164, %9140 ], [ %9246, %9221 ], [ 0.000000e+00, %8955 ], [ 0.000000e+00, %8957 ]
  %9264 = phi float [ %9006, %8975 ], [ %9165, %9140 ], [ %9247, %9221 ], [ 0.000000e+00, %8955 ], [ 0.000000e+00, %8957 ]
  %9265 = phi float [ %9007, %8975 ], [ %9166, %9140 ], [ %9248, %9221 ], [ 0.000000e+00, %8955 ], [ 0.000000e+00, %8957 ]
  %9266 = fmul fast float %8898, %9262
  %9267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9268 = extractvalue %dx.types.CBufRet.f32 %9267, 2
  %9269 = fsub fast float %8905, %9268
  %9270 = fcmp fast olt float %9266, -2.000000e+01
  %9271 = call float @dx.op.unary.f32(i32 21, float %9266)  ; Exp(value)
  %9272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9272, 2
  %9274 = extractvalue %dx.types.CBufRet.f32 %9272, 3
  %9275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9276 = extractvalue %dx.types.CBufRet.f32 %9275, 2
  %9277 = fmul fast float %9274, %9269
  %9278 = call float @dx.op.unary.f32(i32 7, float %9277)  ; Saturate(value)
  %9279 = fsub fast float 1.000000e+00, %9278
  %9280 = fmul fast float %8890, 5.000000e-01
  %9281 = fadd fast float %9280, 5.000000e-01
  %9282 = call float @dx.op.unary.f32(i32 7, float %9281)  ; Saturate(value)
  %9283 = fsub fast float 1.000000e+00, %9282
  %9284 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9279)  ; FMax(a,b)
  %9285 = fdiv fast float %9283, %9284
  %9286 = fsub fast float %9269, %8847
  %9287 = call float @dx.op.unary.f32(i32 6, float %9286)  ; FAbs(value)
  %9288 = fmul fast float %9287, %9273
  %9289 = call float @dx.op.unary.f32(i32 7, float %9285)  ; Saturate(value)
  %9290 = fsub fast float 1.000000e+00, %9288
  %9291 = fmul fast float %9290, %9289
  %9292 = fadd fast float %9291, %9288
  %9293 = fmul fast float %9276, %9269
  %9294 = call float @dx.op.unary.f32(i32 7, float %9293)  ; Saturate(value)
  %9295 = fsub fast float 1.000000e+00, %9292
  %9296 = fmul fast float %9295, %9294
  %9297 = fadd fast float %9296, %9292
  %9298 = call float @dx.op.unary.f32(i32 7, float %9297)  ; Saturate(value)
  %9299 = fadd fast float %9271, -1.000000e+00
  %9300 = select i1 %9270, float -1.000000e+00, float %9299
  %9301 = fmul fast float %9298, %9300
  %9302 = fadd fast float %9301, 1.000000e+00
  %9303 = fsub fast float -0.000000e+00, %9301
  %9304 = fmul fast float %9263, %9303
  %9305 = fmul fast float %9264, %9303
  %9306 = fmul fast float %9265, %9303
  br label %9307

; <label>:9307                                    ; preds = %9260, %8856
  %9308 = phi float [ %9261, %9260 ], [ 0.000000e+00, %8856 ]
  %9309 = phi float [ %9302, %9260 ], [ 1.000000e+00, %8856 ]
  %9310 = phi float [ %9304, %9260 ], [ 0.000000e+00, %8856 ]
  %9311 = phi float [ %9305, %9260 ], [ 0.000000e+00, %8856 ]
  %9312 = phi float [ %9306, %9260 ], [ 0.000000e+00, %8856 ]
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 1
  %9315 = fsub fast float 1.000000e+00, %9309
  %9316 = fmul fast float %9315, %8891
  %9317 = fmul fast float %9316, %9314
  %9318 = fsub fast float %8891, %9317
  br i1 %8884, label %9319, label %9348, !dx.controlflow.hints !172

; <label>:9319                                    ; preds = %9307
  %9320 = fmul fast float %8892, %8881
  %9321 = fadd fast float %9320, %8882
  %9322 = call float @dx.op.unary.f32(i32 7, float %9321)  ; Saturate(value)
  %9323 = fmul fast float %8863, %9318
  %9324 = fsub fast float -0.000000e+00, %9323
  %9325 = fmul fast float %8864, %9318
  %9326 = fsub fast float -0.000000e+00, %9325
  %9327 = call float @dx.op.unary.f32(i32 21, float %9324)  ; Exp(value)
  %9328 = call float @dx.op.unary.f32(i32 21, float %9326)  ; Exp(value)
  %9329 = call float @dx.op.binary.f32(i32 35, float %8871, float %9327)  ; FMax(a,b)
  %9330 = call float @dx.op.binary.f32(i32 35, float %8871, float %9328)  ; FMax(a,b)
  %9331 = fsub fast float %9330, %9329
  %9332 = fmul fast float %9331, %9322
  %9333 = fadd fast float %9332, %9329
  %9334 = call float @dx.op.unary.f32(i32 7, float %9333)  ; Saturate(value)
  %9335 = fsub fast float %8868, %8873
  %9336 = fsub fast float %8869, %8874
  %9337 = fsub fast float %8870, %8875
  %9338 = fmul fast float %9322, %9335
  %9339 = fmul fast float %9322, %9336
  %9340 = fmul fast float %9322, %9337
  %9341 = fadd fast float %9338, %8873
  %9342 = fadd fast float %9339, %8874
  %9343 = fadd fast float %9340, %8875
  %9344 = fsub fast float 1.000000e+00, %9334
  %9345 = fmul fast float %9344, %9341
  %9346 = fmul fast float %9344, %9342
  %9347 = fmul fast float %9344, %9343
  br label %9407

; <label>:9348                                    ; preds = %9307
  %9349 = fmul fast float %9318, %8880
  %9350 = call float @dx.op.unary.f32(i32 7, float %9349)  ; Saturate(value)
  %9351 = fsub fast float 2.000000e+00, %9350
  %9352 = fmul fast float %9350, 9.921875e-01
  %9353 = fmul fast float %9352, %9351
  %9354 = fadd fast float %9353, 3.906250e-03
  %9355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9354, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9356 = extractvalue %dx.types.ResRet.f32 %9355, 0
  %9357 = fsub fast float %9350, %9356
  %9358 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9357)  ; FMax(a,b)
  %9359 = fmul fast float %8866, %8847
  %9360 = call float @dx.op.unary.f32(i32 6, float %9359)  ; FAbs(value)
  %9361 = fcmp fast ogt float %9360, 0x3EB0C6F7A0000000
  br i1 %9361, label %9362, label %9368, !dx.controlflow.hints !173

; <label>:9362                                    ; preds = %9348
  %9363 = fmul fast float %9359, 0xBFF7154760000000
  %9364 = call float @dx.op.unary.f32(i32 21, float %9363)  ; Exp(value)
  %9365 = fsub fast float 1.000000e+00, %9364
  %9366 = fdiv fast float %9365, %9359
  %9367 = fmul fast float %9366, %8876
  br label %9368

; <label>:9368                                    ; preds = %9362, %9348
  %9369 = phi float [ %9367, %9362 ], [ %8876, %9348 ]
  %9370 = fadd fast float %9369, %8878
  %9371 = fmul fast float %9370, %9358
  %9372 = fmul fast float %8863, %9371
  %9373 = fsub fast float -0.000000e+00, %9372
  %9374 = fmul fast float %8864, %9371
  %9375 = fsub fast float -0.000000e+00, %9374
  %9376 = fmul fast float %8865, %9371
  %9377 = fsub fast float -0.000000e+00, %9376
  %9378 = call float @dx.op.unary.f32(i32 21, float %9373)  ; Exp(value)
  %9379 = call float @dx.op.unary.f32(i32 21, float %9375)  ; Exp(value)
  %9380 = call float @dx.op.unary.f32(i32 21, float %9377)  ; Exp(value)
  %9381 = fmul fast float %8892, %8892
  %9382 = fadd fast float %9381, 1.000000e+00
  %9383 = fmul fast float %9382, 0x3FAE8EC8A0000000
  %9384 = fmul fast float %9383, %8873
  %9385 = fmul fast float %9383, %8874
  %9386 = fmul fast float %9383, %8875
  %9387 = fmul fast float %8892, %8871
  %9388 = fsub fast float 1.000000e+00, %9387
  %9389 = fmul fast float %8871, %8871
  %9390 = fsub fast float 1.000000e+00, %9389
  %9391 = fmul fast float %9390, 0x3FB45F3060000000
  %9392 = fmul fast float %9388, %9388
  %9393 = fdiv fast float 1.000000e+00, %9392
  %9394 = fmul fast float %9391, %9393
  %9395 = fmul fast float %9394, %8868
  %9396 = fmul fast float %9394, %8869
  %9397 = fmul fast float %9394, %8870
  %9398 = fadd fast float %9395, %9384
  %9399 = fadd fast float %9396, %9385
  %9400 = fadd fast float %9397, %9386
  %9401 = fsub fast float 1.000000e+00, %9378
  %9402 = fsub fast float 1.000000e+00, %9379
  %9403 = fsub fast float 1.000000e+00, %9380
  %9404 = fmul fast float %9398, %9401
  %9405 = fmul fast float %9399, %9402
  %9406 = fmul fast float %9400, %9403
  br label %9407

; <label>:9407                                    ; preds = %9368, %9319
  %9408 = phi float [ %9345, %9319 ], [ %9404, %9368 ]
  %9409 = phi float [ %9346, %9319 ], [ %9405, %9368 ]
  %9410 = phi float [ %9347, %9319 ], [ %9406, %9368 ]
  %9411 = phi float [ %9334, %9319 ], [ %9378, %9368 ]
  %9412 = phi float [ %9334, %9319 ], [ %9379, %9368 ]
  %9413 = phi float [ %9334, %9319 ], [ %9380, %9368 ]
  br i1 %8900, label %9414, label %9612, !dx.controlflow.hints !174

; <label>:9414                                    ; preds = %9407
  %9415 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  %9416 = fmul fast float %9415, %9315
  %9417 = fsub fast float %9310, %9408
  %9418 = fsub fast float %9311, %9409
  %9419 = fsub fast float %9312, %9410
  %9420 = fmul fast float %9416, %9417
  %9421 = fmul fast float %9416, %9418
  %9422 = fmul fast float %9416, %9419
  %9423 = fadd fast float %9420, %9408
  %9424 = fadd fast float %9421, %9409
  %9425 = fadd fast float %9422, %9410
  %9426 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9411)  ; FMax(a,b)
  %9427 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9412)  ; FMax(a,b)
  %9428 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9413)  ; FMax(a,b)
  %9429 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9309)  ; FMax(a,b)
  %9430 = call float @dx.op.binary.f32(i32 35, float %9308, float %9318)  ; FMax(a,b)
  %9431 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9430)  ; FMax(a,b)
  %9432 = fdiv fast float %9308, %9431
  %9433 = call float @dx.op.unary.f32(i32 7, float %9432)  ; Saturate(value)
  %9434 = fdiv fast float %9318, %9431
  %9435 = call float @dx.op.unary.f32(i32 7, float %9434)  ; Saturate(value)
  %9436 = fcmp fast une float %9429, 1.000000e+00
  br i1 %9436, label %9437, label %9450, !dx.controlflow.hints !175

; <label>:9437                                    ; preds = %9414
  %9438 = call float @dx.op.unary.f32(i32 23, float %9429)  ; Log(value)
  %9439 = fmul fast float %9438, 0x3FE62E4300000000
  %9440 = fmul fast float %9310, %9439
  %9441 = fsub fast float -0.000000e+00, %9440
  %9442 = fmul fast float %9311, %9439
  %9443 = fsub fast float -0.000000e+00, %9442
  %9444 = fmul fast float %9312, %9439
  %9445 = fsub fast float -0.000000e+00, %9444
  %9446 = fsub fast float 1.000000e+00, %9429
  %9447 = fdiv fast float %9441, %9446
  %9448 = fdiv fast float %9443, %9446
  %9449 = fdiv fast float %9445, %9446
  br label %9450

; <label>:9450                                    ; preds = %9437, %9414
  %9451 = phi float [ %9447, %9437 ], [ %9310, %9414 ]
  %9452 = phi float [ %9448, %9437 ], [ %9311, %9414 ]
  %9453 = phi float [ %9449, %9437 ], [ %9312, %9414 ]
  %9454 = phi float [ %9439, %9437 ], [ 0.000000e+00, %9414 ]
  %9455 = fcmp fast une float %9426, 1.000000e+00
  br i1 %9455, label %9456, label %9463, !dx.controlflow.hints !176

; <label>:9456                                    ; preds = %9450
  %9457 = call float @dx.op.unary.f32(i32 23, float %9426)  ; Log(value)
  %9458 = fmul fast float %9457, 0x3FE62E4300000000
  %9459 = fmul fast float %9423, %9458
  %9460 = fsub fast float -0.000000e+00, %9459
  %9461 = fsub fast float 1.000000e+00, %9426
  %9462 = fdiv fast float %9460, %9461
  br label %9463

; <label>:9463                                    ; preds = %9456, %9450
  %9464 = phi float [ %9462, %9456 ], [ %9423, %9450 ]
  %9465 = phi float [ %9458, %9456 ], [ 0.000000e+00, %9450 ]
  %9466 = fcmp fast une float %9427, 1.000000e+00
  br i1 %9466, label %9467, label %9474, !dx.controlflow.hints !176

; <label>:9467                                    ; preds = %9463
  %9468 = call float @dx.op.unary.f32(i32 23, float %9427)  ; Log(value)
  %9469 = fmul fast float %9468, 0x3FE62E4300000000
  %9470 = fmul fast float %9424, %9469
  %9471 = fsub fast float -0.000000e+00, %9470
  %9472 = fsub fast float 1.000000e+00, %9427
  %9473 = fdiv fast float %9471, %9472
  br label %9474

; <label>:9474                                    ; preds = %9467, %9463
  %9475 = phi float [ %9473, %9467 ], [ %9424, %9463 ]
  %9476 = phi float [ %9469, %9467 ], [ 0.000000e+00, %9463 ]
  %9477 = fcmp fast une float %9428, 1.000000e+00
  br i1 %9477, label %9478, label %9485, !dx.controlflow.hints !176

; <label>:9478                                    ; preds = %9474
  %9479 = call float @dx.op.unary.f32(i32 23, float %9428)  ; Log(value)
  %9480 = fmul fast float %9479, 0x3FE62E4300000000
  %9481 = fmul fast float %9425, %9480
  %9482 = fsub fast float -0.000000e+00, %9481
  %9483 = fsub fast float 1.000000e+00, %9428
  %9484 = fdiv fast float %9482, %9483
  br label %9485

; <label>:9485                                    ; preds = %9478, %9474
  %9486 = phi float [ %9484, %9478 ], [ %9425, %9474 ]
  %9487 = phi float [ %9480, %9478 ], [ 0.000000e+00, %9474 ]
  %9488 = fmul fast float %9451, %9435
  %9489 = fmul fast float %9452, %9435
  %9490 = fmul fast float %9453, %9435
  %9491 = fmul fast float %9454, %9435
  %9492 = fmul fast float %9464, %9433
  %9493 = fmul fast float %9475, %9433
  %9494 = fmul fast float %9486, %9433
  %9495 = fmul fast float %9465, %9433
  %9496 = fmul fast float %9476, %9433
  %9497 = fmul fast float %9487, %9433
  %9498 = fadd fast float %9492, %9488
  %9499 = fadd fast float %9493, %9489
  %9500 = fadd fast float %9494, %9490
  %9501 = fadd fast float %9495, %9491
  %9502 = fadd fast float %9496, %9491
  %9503 = fadd fast float %9497, %9491
  %9504 = fcmp fast une float %9501, 0.000000e+00
  br i1 %9504, label %9505, label %9512, !dx.controlflow.hints !177

; <label>:9505                                    ; preds = %9485
  %9506 = fmul fast float %9501, 0x3FF7154760000000
  %9507 = call float @dx.op.unary.f32(i32 21, float %9506)  ; Exp(value)
  %9508 = fsub fast float 1.000000e+00, %9507
  %9509 = fmul fast float %9498, %9508
  %9510 = fsub fast float -0.000000e+00, %9509
  %9511 = fdiv fast float %9510, %9501
  br label %9512

; <label>:9512                                    ; preds = %9505, %9485
  %9513 = phi float [ %9507, %9505 ], [ 1.000000e+00, %9485 ]
  %9514 = phi float [ %9511, %9505 ], [ %9498, %9485 ]
  %9515 = fcmp fast une float %9502, 0.000000e+00
  br i1 %9515, label %9516, label %9523, !dx.controlflow.hints !177

; <label>:9516                                    ; preds = %9512
  %9517 = fmul fast float %9502, 0x3FF7154760000000
  %9518 = call float @dx.op.unary.f32(i32 21, float %9517)  ; Exp(value)
  %9519 = fsub fast float 1.000000e+00, %9518
  %9520 = fmul fast float %9499, %9519
  %9521 = fsub fast float -0.000000e+00, %9520
  %9522 = fdiv fast float %9521, %9502
  br label %9523

; <label>:9523                                    ; preds = %9516, %9512
  %9524 = phi float [ %9518, %9516 ], [ 1.000000e+00, %9512 ]
  %9525 = phi float [ %9522, %9516 ], [ %9499, %9512 ]
  %9526 = fcmp fast une float %9503, 0.000000e+00
  br i1 %9526, label %9527, label %9534, !dx.controlflow.hints !177

; <label>:9527                                    ; preds = %9523
  %9528 = fmul fast float %9503, 0x3FF7154760000000
  %9529 = call float @dx.op.unary.f32(i32 21, float %9528)  ; Exp(value)
  %9530 = fsub fast float 1.000000e+00, %9529
  %9531 = fmul fast float %9500, %9530
  %9532 = fsub fast float -0.000000e+00, %9531
  %9533 = fdiv fast float %9532, %9503
  br label %9534

; <label>:9534                                    ; preds = %9527, %9523
  %9535 = phi float [ %9529, %9527 ], [ 1.000000e+00, %9523 ]
  %9536 = phi float [ %9533, %9527 ], [ %9500, %9523 ]
  %9537 = fcmp fast ogt float %9433, %9435
  br i1 %9537, label %9538, label %9558

; <label>:9538                                    ; preds = %9534
  %9539 = fsub fast float 1.000000e+00, %9435
  %9540 = fmul fast float %9451, %9539
  %9541 = fmul fast float %9452, %9539
  %9542 = fmul fast float %9453, %9539
  %9543 = fmul fast float %9454, %9539
  %9544 = fcmp fast une float %9543, 0.000000e+00
  br i1 %9544, label %9545, label %9596, !dx.controlflow.hints !178

; <label>:9545                                    ; preds = %9538
  %9546 = fmul fast float %9543, 0x3FF7154760000000
  %9547 = call float @dx.op.unary.f32(i32 21, float %9546)  ; Exp(value)
  %9548 = fsub fast float 1.000000e+00, %9547
  %9549 = fmul fast float %9540, %9548
  %9550 = fsub fast float -0.000000e+00, %9549
  %9551 = fmul fast float %9541, %9548
  %9552 = fsub fast float -0.000000e+00, %9551
  %9553 = fmul fast float %9542, %9548
  %9554 = fsub fast float -0.000000e+00, %9553
  %9555 = fdiv fast float %9550, %9543
  %9556 = fdiv fast float %9552, %9543
  %9557 = fdiv fast float %9554, %9543
  br label %9596

; <label>:9558                                    ; preds = %9534
  %9559 = fsub fast float 1.000000e+00, %9433
  %9560 = fmul fast float %9464, %9559
  %9561 = fmul fast float %9475, %9559
  %9562 = fmul fast float %9486, %9559
  %9563 = fmul fast float %9465, %9559
  %9564 = fmul fast float %9476, %9559
  %9565 = fmul fast float %9487, %9559
  %9566 = fcmp fast une float %9563, 0.000000e+00
  br i1 %9566, label %9567, label %9574, !dx.controlflow.hints !177

; <label>:9567                                    ; preds = %9558
  %9568 = fmul fast float %9563, 0x3FF7154760000000
  %9569 = call float @dx.op.unary.f32(i32 21, float %9568)  ; Exp(value)
  %9570 = fsub fast float 1.000000e+00, %9569
  %9571 = fmul fast float %9560, %9570
  %9572 = fsub fast float -0.000000e+00, %9571
  %9573 = fdiv fast float %9572, %9563
  br label %9574

; <label>:9574                                    ; preds = %9567, %9558
  %9575 = phi float [ %9573, %9567 ], [ %9560, %9558 ]
  %9576 = phi float [ %9569, %9567 ], [ 1.000000e+00, %9558 ]
  %9577 = fcmp fast une float %9564, 0.000000e+00
  br i1 %9577, label %9578, label %9585, !dx.controlflow.hints !177

; <label>:9578                                    ; preds = %9574
  %9579 = fmul fast float %9564, 0x3FF7154760000000
  %9580 = call float @dx.op.unary.f32(i32 21, float %9579)  ; Exp(value)
  %9581 = fsub fast float 1.000000e+00, %9580
  %9582 = fmul fast float %9561, %9581
  %9583 = fsub fast float -0.000000e+00, %9582
  %9584 = fdiv fast float %9583, %9564
  br label %9585

; <label>:9585                                    ; preds = %9578, %9574
  %9586 = phi float [ %9584, %9578 ], [ %9561, %9574 ]
  %9587 = phi float [ %9580, %9578 ], [ 1.000000e+00, %9574 ]
  %9588 = fcmp fast une float %9565, 0.000000e+00
  br i1 %9588, label %9589, label %9596, !dx.controlflow.hints !177

; <label>:9589                                    ; preds = %9585
  %9590 = fmul fast float %9565, 0x3FF7154760000000
  %9591 = call float @dx.op.unary.f32(i32 21, float %9590)  ; Exp(value)
  %9592 = fsub fast float 1.000000e+00, %9591
  %9593 = fmul fast float %9562, %9592
  %9594 = fsub fast float -0.000000e+00, %9593
  %9595 = fdiv fast float %9594, %9565
  br label %9596

; <label>:9596                                    ; preds = %9589, %9585, %9545, %9538
  %9597 = phi float [ %9595, %9589 ], [ %9557, %9545 ], [ %9542, %9538 ], [ %9562, %9585 ]
  %9598 = phi float [ %9586, %9589 ], [ %9556, %9545 ], [ %9541, %9538 ], [ %9586, %9585 ]
  %9599 = phi float [ %9575, %9589 ], [ %9555, %9545 ], [ %9540, %9538 ], [ %9575, %9585 ]
  %9600 = phi float [ %9591, %9589 ], [ %9547, %9545 ], [ 1.000000e+00, %9538 ], [ 1.000000e+00, %9585 ]
  %9601 = phi float [ %9587, %9589 ], [ %9547, %9545 ], [ 1.000000e+00, %9538 ], [ %9587, %9585 ]
  %9602 = phi float [ %9576, %9589 ], [ %9547, %9545 ], [ 1.000000e+00, %9538 ], [ %9576, %9585 ]
  %9603 = fmul fast float %9602, %9514
  %9604 = fmul fast float %9601, %9525
  %9605 = fmul fast float %9600, %9536
  %9606 = fadd fast float %9603, %9599
  %9607 = fadd fast float %9604, %9598
  %9608 = fadd fast float %9605, %9597
  %9609 = fmul fast float %9602, %9513
  %9610 = fmul fast float %9601, %9524
  %9611 = fmul fast float %9600, %9535
  br label %9612

; <label>:9612                                    ; preds = %9596, %9407
  %9613 = phi float [ %9611, %9596 ], [ %9413, %9407 ]
  %9614 = phi float [ %9610, %9596 ], [ %9412, %9407 ]
  %9615 = phi float [ %9609, %9596 ], [ %9411, %9407 ]
  %9616 = phi float [ %9608, %9596 ], [ %9410, %9407 ]
  %9617 = phi float [ %9607, %9596 ], [ %9409, %9407 ]
  %9618 = phi float [ %9606, %9596 ], [ %9408, %9407 ]
  %9619 = fmul fast float %9618, %8564
  %9620 = fmul fast float %9617, %8564
  %9621 = fmul fast float %9616, %8564
  %9622 = fmul fast float %9615, %8855
  %9623 = call float @dx.op.dot3.f32(i32 55, float %9615, float %9614, float %9613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9624 = call float @dx.op.dot3.f32(i32 55, float %9619, float %9620, float %9621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9625 = select i1 %232, float %9623, float %9615
  %9626 = select i1 %232, float %9623, float %9614
  %9627 = select i1 %232, float 1.000000e+00, float %9613
  %9628 = select i1 %232, float %9624, float %9619
  %9629 = select i1 %232, float 0.000000e+00, float %9620
  %9630 = select i1 %232, float 0.000000e+00, float %9621
  %9631 = fmul fast float %9625, %8849
  %9632 = fmul fast float %9626, %8850
  %9633 = fmul fast float %9627, %8851
  %9634 = fadd fast float %9631, %9628
  %9635 = fadd fast float %9632, %9629
  %9636 = fadd fast float %9630, %9633
  %9637 = fmul fast float %9625, %8852
  %9638 = fmul fast float %9626, %8853
  %9639 = fmul fast float %9627, %8854
  %9640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.i32 %9640, 0
  %9642 = icmp eq i32 %9641, 0
  br i1 %9642, label %10010, label %9643, !dx.controlflow.hints !179

; <label>:9643                                    ; preds = %9612
  %9644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9645 = extractvalue %dx.types.CBufRet.f32 %9644, 2
  %9646 = extractvalue %dx.types.CBufRet.f32 %9644, 3
  %9647 = fmul fast float %9645, %111
  %9648 = fmul fast float %9646, %112
  %9649 = fmul fast float %9647, 2.000000e+00
  %9650 = fmul fast float %9648, 2.000000e+00
  %9651 = fsub fast float 1.000000e+00, %9649
  %9652 = fsub fast float 1.000000e+00, %9650
  %9653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9654 = extractvalue %dx.types.CBufRet.f32 %9653, 0
  %9655 = extractvalue %dx.types.CBufRet.f32 %9653, 1
  %9656 = extractvalue %dx.types.CBufRet.f32 %9653, 2
  %9657 = fmul fast float %9651, %9654
  %9658 = fmul fast float %9651, %9655
  %9659 = fmul fast float %9651, %9656
  %9660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9661 = extractvalue %dx.types.CBufRet.f32 %9660, 0
  %9662 = extractvalue %dx.types.CBufRet.f32 %9660, 1
  %9663 = extractvalue %dx.types.CBufRet.f32 %9660, 2
  %9664 = fmul fast float %9652, %9661
  %9665 = fmul fast float %9652, %9662
  %9666 = fmul fast float %9652, %9663
  %9667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9668 = extractvalue %dx.types.CBufRet.f32 %9667, 0
  %9669 = extractvalue %dx.types.CBufRet.f32 %9667, 1
  %9670 = extractvalue %dx.types.CBufRet.f32 %9667, 2
  %9671 = fadd fast float %9664, %9668
  %9672 = fadd fast float %9671, %9657
  %9673 = fadd fast float %9665, %9669
  %9674 = fadd fast float %9673, %9658
  %9675 = fadd fast float %9666, %9670
  %9676 = fadd fast float %9675, %9659
  %9677 = fmul fast float %9672, %8848
  %9678 = fmul fast float %9674, %8848
  %9679 = fmul fast float %9676, %8848
  %9680 = fmul fast float %9677, %9677
  %9681 = fmul fast float %9678, %9678
  %9682 = fadd fast float %9680, %9681
  %9683 = fmul fast float %9679, %9679
  %9684 = fadd fast float %9682, %9683
  %9685 = call float @dx.op.unary.f32(i32 24, float %9684)  ; Sqrt(value)
  %9686 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %9687 = fsub fast float %9685, %9686
  %9688 = extractvalue %dx.types.CBufRet.f32 %8575, 2
  %9689 = fmul fast float %9687, %9688
  %9690 = call float @dx.op.unary.f32(i32 7, float %9689)  ; Saturate(value)
  %9691 = fadd fast float %9690, -5.000000e-01
  %9692 = fmul fast float %9691, 2.000000e+00
  %9693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9694 = extractvalue %dx.types.CBufRet.f32 %9693, 2
  %9695 = call float @dx.op.binary.f32(i32 36, float %9694, float %9692)  ; FMin(a,b)
  %9696 = fsub fast float -0.000000e+00, %9694
  %9697 = fcmp fast ogt float %9695, %9696
  br i1 %9697, label %9698, label %10010, !dx.controlflow.hints !180

; <label>:9698                                    ; preds = %9643
  %9699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9700 = extractvalue %dx.types.CBufRet.f32 %9699, 3
  %9701 = fcmp fast ogt float %9700, 0.000000e+00
  br i1 %9701, label %9702, label %9777, !dx.controlflow.hints !181

; <label>:9702                                    ; preds = %9698
  %9703 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9704 = extractvalue %dx.types.Dimensions %9703, 0
  %9705 = sitofp i32 %9704 to float
  %9706 = extractvalue %dx.types.Dimensions %9703, 1
  %9707 = sitofp i32 %9706 to float
  %9708 = fmul fast float %9647, %9705
  %9709 = fmul fast float %9648, %9707
  %9710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9711 = extractvalue %dx.types.CBufRet.f32 %9710, 1
  %9712 = fsub fast float -0.000000e+00, %9711
  %9713 = fptoui float %9712 to i32
  %9714 = fptoui float %9708 to i32
  %9715 = fptoui float %9709 to i32
  %9716 = and i32 %9713, 31
  %9717 = lshr i32 %9714, %9716
  %9718 = lshr i32 %9715, %9716
  %9719 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9713, i32 %9717, i32 %9718, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9720 = extractvalue %dx.types.ResRet.f32 %9719, 0
  %9721 = fcmp fast olt float %9720, -1.000000e+00
  %9722 = fcmp fast ogt float %9720, -1.000000e+00
  %9723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9724 = extractvalue %dx.types.CBufRet.f32 %9723, 1
  %9725 = select i1 %9722, float %9724, float 1.000000e+00
  %9726 = fadd fast float %9720, 1.000000e+00
  %9727 = fmul fast float %9725, %9726
  %9728 = call float @dx.op.unary.f32(i32 6, float %9727)  ; FAbs(value)
  %9729 = extractvalue %dx.types.CBufRet.f32 %9723, 3
  %9730 = fcmp fast oge float %9728, %9729
  %9731 = select i1 %9730, float 0x4197782600000000, float %9728
  %9732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9733 = extractvalue %dx.types.CBufRet.f32 %9732, 0
  %9734 = extractvalue %dx.types.CBufRet.f32 %9732, 1
  %9735 = extractvalue %dx.types.CBufRet.f32 %9732, 2
  %9736 = select i1 %9721, float %9733, float %9654
  %9737 = select i1 %9721, float %9734, float %9655
  %9738 = select i1 %9721, float %9735, float %9656
  %9739 = fmul fast float %9736, %9651
  %9740 = fmul fast float %9737, %9651
  %9741 = fmul fast float %9738, %9651
  %9742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9743 = extractvalue %dx.types.CBufRet.f32 %9742, 0
  %9744 = extractvalue %dx.types.CBufRet.f32 %9742, 1
  %9745 = extractvalue %dx.types.CBufRet.f32 %9742, 2
  %9746 = select i1 %9721, float %9743, float %9661
  %9747 = select i1 %9721, float %9744, float %9662
  %9748 = select i1 %9721, float %9745, float %9663
  %9749 = fmul fast float %9746, %9652
  %9750 = fmul fast float %9747, %9652
  %9751 = fmul fast float %9748, %9652
  %9752 = fadd fast float %9749, %9739
  %9753 = fadd fast float %9750, %9740
  %9754 = fadd fast float %9751, %9741
  %9755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9756 = extractvalue %dx.types.CBufRet.f32 %9755, 0
  %9757 = extractvalue %dx.types.CBufRet.f32 %9755, 1
  %9758 = extractvalue %dx.types.CBufRet.f32 %9755, 2
  %9759 = select i1 %9721, float %9756, float %9668
  %9760 = select i1 %9721, float %9757, float %9669
  %9761 = select i1 %9721, float %9758, float %9670
  %9762 = fadd fast float %9752, %9759
  %9763 = fadd fast float %9753, %9760
  %9764 = fadd fast float %9754, %9761
  %9765 = fmul fast float %9762, %9731
  %9766 = fmul fast float %9763, %9731
  %9767 = fmul fast float %9764, %9731
  %9768 = fmul fast float %9765, %9765
  %9769 = fmul fast float %9766, %9766
  %9770 = fadd fast float %9768, %9769
  %9771 = fmul fast float %9767, %9767
  %9772 = fadd fast float %9770, %9771
  %9773 = call float @dx.op.unary.f32(i32 24, float %9772)  ; Sqrt(value)
  %9774 = fsub fast float %9773, %9686
  %9775 = fmul fast float %9774, %9688
  %9776 = call float @dx.op.unary.f32(i32 7, float %9775)  ; Saturate(value)
  br label %9777

; <label>:9777                                    ; preds = %9702, %9698
  %9778 = phi float [ %9776, %9702 ], [ 1.000000e+00, %9698 ]
  %9779 = fmul fast float %9695, 5.000000e-01
  %9780 = fadd fast float %9779, 5.000000e-01
  %9781 = call float @dx.op.unary.f32(i32 22, float %9780)  ; Frc(value)
  %9782 = call float @dx.op.unary.f32(i32 27, float %9781)  ; Round_ni(value)
  %9783 = call float @dx.op.unary.f32(i32 22, float %9781)  ; Frc(value)
  %9784 = fmul fast float %9783, 2.000000e+00
  %9785 = fadd fast float %9784, -1.000000e+00
  %9786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9647, float %9648, float %9782, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9787 = extractvalue %dx.types.ResRet.f32 %9786, 0
  %9788 = extractvalue %dx.types.ResRet.f32 %9786, 1
  %9789 = extractvalue %dx.types.ResRet.f32 %9786, 2
  %9790 = extractvalue %dx.types.ResRet.f32 %9786, 3
  %9791 = fadd fast float %9787, -5.000000e-01
  %9792 = fadd fast float %9789, -5.000000e-01
  %9793 = fmul fast float %9791, 0xBFD5555560000000
  %9794 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9792, float %9793)  ; FMad(a,b,c)
  %9795 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9788, float 0.000000e+00)  ; FMad(a,b,c)
  %9796 = fadd fast float %9795, %9790
  %9797 = fmul fast float %9791, -7.500000e-01
  %9798 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9792, float %9797)  ; FMad(a,b,c)
  %9799 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9788, float 0.000000e+00)  ; FMad(a,b,c)
  %9800 = fadd fast float %9799, %9790
  %9801 = call float @dx.op.binary.f32(i32 35, float %9794, float -1.000000e+00)  ; FMax(a,b)
  %9802 = call float @dx.op.binary.f32(i32 35, float %9796, float -1.000000e+00)  ; FMax(a,b)
  %9803 = call float @dx.op.binary.f32(i32 35, float %9798, float -1.000000e+00)  ; FMax(a,b)
  %9804 = call float @dx.op.binary.f32(i32 35, float %9800, float -1.000000e+00)  ; FMax(a,b)
  %9805 = call float @dx.op.binary.f32(i32 36, float %9801, float 1.000000e+00)  ; FMin(a,b)
  %9806 = call float @dx.op.binary.f32(i32 36, float %9802, float 1.000000e+00)  ; FMin(a,b)
  %9807 = call float @dx.op.binary.f32(i32 36, float %9803, float 1.000000e+00)  ; FMin(a,b)
  %9808 = call float @dx.op.binary.f32(i32 36, float %9804, float 1.000000e+00)  ; FMin(a,b)
  %9809 = fcmp fast olt float %9805, 0x3FEFFF8020000000
  br i1 %9809, label %9810, label %9925, !dx.controlflow.hints !182

; <label>:9810                                    ; preds = %9777
  %9811 = extractvalue %dx.types.CBufRet.f32 %9693, 3
  %9812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9813 = extractvalue %dx.types.CBufRet.f32 %9812, 0
  %9814 = extractvalue %dx.types.CBufRet.f32 %9812, 1
  %9815 = extractvalue %dx.types.CBufRet.f32 %9812, 2
  %9816 = extractvalue %dx.types.CBufRet.f32 %9812, 3
  %9817 = fsub fast float %9813, %9805
  %9818 = fsub fast float %9814, %9806
  %9819 = fsub fast float %9815, %9807
  %9820 = fsub fast float %9816, %9808
  %9821 = fmul fast float %9817, %9811
  %9822 = fmul fast float %9818, %9811
  %9823 = fmul fast float %9819, %9811
  %9824 = fmul fast float %9820, %9811
  %9825 = fadd fast float %9821, %9805
  %9826 = fadd fast float %9822, %9806
  %9827 = fsub fast float -0.000000e+00, %9826
  %9828 = fadd fast float %9823, %9807
  %9829 = fadd fast float %9824, %9808
  %9830 = fmul fast float %9825, %9825
  %9831 = fsub fast float %9826, %9830
  %9832 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9831)  ; FMax(a,b)
  %9833 = fdiv fast float 1.000000e+00, %9832
  %9834 = fmul fast float %9826, %9825
  %9835 = fsub fast float %9828, %9834
  %9836 = fsub fast float %9785, %9825
  %9837 = fmul fast float %9785, %9785
  %9838 = fsub fast float %9837, %9826
  %9839 = fmul fast float %9836, %9833
  %9840 = fmul fast float %9839, %9835
  %9841 = fsub fast float %9838, %9840
  %9842 = fmul fast float %9826, %9826
  %9843 = fsub fast float %9829, %9842
  %9844 = fmul fast float %9835, %9835
  %9845 = fmul fast float %9844, %9833
  %9846 = fsub fast float %9843, %9845
  %9847 = fdiv fast float %9841, %9846
  %9848 = fmul fast float %9835, %9847
  %9849 = fsub fast float %9836, %9848
  %9850 = fmul fast float %9849, %9833
  %9851 = fmul fast float %9850, %9825
  %9852 = fsub fast float 1.000000e+00, %9851
  %9853 = fmul fast float %9826, %9847
  %9854 = fsub fast float %9852, %9853
  %9855 = fmul fast float %9850, %9850
  %9856 = fmul fast float %9847, 4.000000e+00
  %9857 = fmul fast float %9856, %9854
  %9858 = fsub fast float %9855, %9857
  %9859 = call float @dx.op.unary.f32(i32 24, float %9858)  ; Sqrt(value)
  %9860 = fcmp fast oge float %9850, 0.000000e+00
  %9861 = fsub fast float -0.000000e+00, %9859
  %9862 = select i1 %9860, float %9861, float %9859
  %9863 = fsub fast float %9862, %9850
  %9864 = fdiv fast float %9863, %9847
  %9865 = fdiv fast float %9854, %9863
  %9866 = fmul fast float %9864, 5.000000e-01
  %9867 = fmul fast float %9865, 2.000000e+00
  %9868 = select i1 %9860, float %9866, float %9867
  %9869 = select i1 %9860, float %9867, float %9866
  %9870 = call float @dx.op.binary.f32(i32 35, float %9868, float %9869)  ; FMax(a,b)
  %9871 = call float @dx.op.binary.f32(i32 36, float %9868, float %9869)  ; FMin(a,b)
  %9872 = fcmp fast ogt float %9785, %9871
  br i1 %9872, label %9873, label %9883

; <label>:9873                                    ; preds = %9810
  %9874 = fsub fast float %9785, %9871
  %9875 = fsub fast float %9870, %9871
  %9876 = fmul fast float %9874, %9875
  %9877 = fmul fast float %9870, %9785
  %9878 = fadd fast float %9870, %9785
  %9879 = fmul fast float %9878, %9825
  %9880 = fadd fast float %9877, %9826
  %9881 = fsub fast float %9880, %9879
  %9882 = fdiv fast float %9881, %9876
  br label %9883

; <label>:9883                                    ; preds = %9873, %9810
  %9884 = phi float [ %9882, %9873 ], [ 0.000000e+00, %9810 ]
  %9885 = fcmp fast ogt float %9785, %9870
  %9886 = fsub fast float %9785, %9870
  br i1 %9885, label %9887, label %9897

; <label>:9887                                    ; preds = %9883
  %9888 = fsub fast float %9870, %9871
  %9889 = fmul fast float %9888, %9886
  %9890 = fmul fast float %9871, %9785
  %9891 = fadd fast float %9871, %9785
  %9892 = fmul fast float %9891, %9825
  %9893 = fsub fast float %9827, %9890
  %9894 = fadd fast float %9893, %9892
  %9895 = fdiv fast float %9894, %9889
  %9896 = fadd fast float %9895, %9884
  br label %9897

; <label>:9897                                    ; preds = %9887, %9883
  %9898 = phi float [ %9896, %9887 ], [ %9884, %9883 ]
  %9899 = fsub fast float %9785, %9871
  %9900 = fmul fast float %9899, %9886
  %9901 = fmul fast float %9871, %9870
  %9902 = fadd fast float %9871, %9870
  %9903 = fmul fast float %9902, %9825
  %9904 = fadd fast float %9901, %9826
  %9905 = fsub fast float %9904, %9903
  %9906 = fdiv fast float %9905, %9900
  %9907 = call float @dx.op.unary.f32(i32 7, float %9898)  ; Saturate(value)
  %9908 = fcmp fast oeq float %8576, 0.000000e+00
  %9909 = extractvalue %dx.types.CBufRet.f32 %9693, 0
  %9910 = fcmp fast oeq float %9909, 0.000000e+00
  %9911 = or i1 %9908, %9910
  %9912 = fmul fast float %9909, 2.000000e+00
  %9913 = fadd fast float %9694, %9695
  %9914 = fdiv fast float %9913, %9912
  %9915 = call float @dx.op.unary.f32(i32 7, float %9914)  ; Saturate(value)
  %9916 = fmul fast float %9915, 2.000000e+00
  %9917 = fsub fast float 3.000000e+00, %9916
  %9918 = fmul fast float %9915, %9915
  %9919 = fmul fast float %9918, %9917
  %9920 = select i1 %9911, float 1.000000e+00, float %9919
  %9921 = fmul fast float %9906, %8576
  %9922 = fadd fast float %9907, %9921
  %9923 = call float @dx.op.unary.f32(i32 7, float %9922)  ; Saturate(value)
  %9924 = fmul fast float %9920, %9923
  br label %9925

; <label>:9925                                    ; preds = %9897, %9777
  %9926 = phi float [ %9924, %9897 ], [ 0.000000e+00, %9777 ]
  %9927 = fsub fast float 1.000000e+00, %9926
  %9928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9647, float %9648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9929 = extractvalue %dx.types.ResRet.f32 %9928, 0
  %9930 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9931 = extractvalue %dx.types.CBufRet.i32 %9930, 2
  %9932 = icmp eq i32 %9931, 0
  br i1 %9932, label %9938, label %9933

; <label>:9933                                    ; preds = %9925
  %9934 = call float @dx.op.unary.f32(i32 7, float %9926)  ; Saturate(value)
  %9935 = fadd fast float %9929, -1.000000e+00
  %9936 = fmul fast float %9934, %9935
  %9937 = fadd fast float %9936, 1.000000e+00
  br label %9938

; <label>:9938                                    ; preds = %9933, %9925
  %9939 = phi float [ %9937, %9933 ], [ %9927, %9925 ]
  br i1 %9701, label %9940, label %9958

; <label>:9940                                    ; preds = %9938
  %9941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9942 = extractvalue %dx.types.CBufRet.f32 %9941, 1
  %9943 = fsub fast float %9778, %9942
  %9944 = call float @dx.op.unary.f32(i32 7, float %9943)  ; Saturate(value)
  %9945 = fsub fast float %9778, %9700
  %9946 = call float @dx.op.unary.f32(i32 7, float %9945)  ; Saturate(value)
  %9947 = fsub fast float %9944, %9946
  %9948 = fsub fast float %9780, %9946
  %9949 = fdiv fast float %9948, %9947
  %9950 = call float @dx.op.unary.f32(i32 7, float %9949)  ; Saturate(value)
  %9951 = fmul fast float %9950, 2.000000e+00
  %9952 = fsub fast float 3.000000e+00, %9951
  %9953 = fsub fast float %9929, %9939
  %9954 = fmul fast float %9950, %9950
  %9955 = fmul fast float %9954, %9953
  %9956 = fmul fast float %9955, %9952
  %9957 = fadd fast float %9956, %9939
  br label %9958

; <label>:9958                                    ; preds = %9940, %9938
  %9959 = phi float [ %9957, %9940 ], [ %9939, %9938 ]
  %9960 = call float @dx.op.binary.f32(i32 35, float %9929, float %9959)  ; FMax(a,b)
  %9961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9962 = extractvalue %dx.types.CBufRet.i32 %9961, 2
  %9963 = and i32 %9962, 1
  %9964 = icmp eq i32 %9963, 0
  %9965 = fcmp fast une float %9960, 1.000000e+00
  %9966 = and i1 %9965, %9964
  br i1 %9966, label %9967, label %9986

; <label>:9967                                    ; preds = %9958
  %9968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9647, float %9648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9969 = extractvalue %dx.types.ResRet.f32 %9968, 0
  %9970 = extractvalue %dx.types.ResRet.f32 %9968, 1
  %9971 = extractvalue %dx.types.ResRet.f32 %9968, 2
  %9972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9973 = extractvalue %dx.types.CBufRet.f32 %9972, 1
  %9974 = fmul fast float %9973, %9969
  %9975 = fmul fast float %9973, %9970
  %9976 = fmul fast float %9973, %9971
  %9977 = fcmp fast ogt float %9929, 0x3FEFFF2E40000000
  %9978 = fsub fast float 1.000000e+00, %9960
  %9979 = fsub fast float 1.000000e+00, %9929
  %9980 = fdiv fast float %9978, %9979
  %9981 = call float @dx.op.unary.f32(i32 7, float %9980)  ; Saturate(value)
  %9982 = select i1 %9977, float 0.000000e+00, float %9981
  %9983 = fmul fast float %9974, %9982
  %9984 = fmul fast float %9975, %9982
  %9985 = fmul fast float %9976, %9982
  br label %9986

; <label>:9986                                    ; preds = %9967, %9958
  %9987 = phi float [ 0.000000e+00, %9958 ], [ %9983, %9967 ]
  %9988 = phi float [ 0.000000e+00, %9958 ], [ %9984, %9967 ]
  %9989 = phi float [ 0.000000e+00, %9958 ], [ %9985, %9967 ]
  %9990 = fmul fast float %9987, %8564
  %9991 = fmul fast float %9988, %8564
  %9992 = fmul fast float %9989, %8564
  %9993 = fmul fast float %9960, %9622
  %9994 = call float @dx.op.dot3.f32(i32 55, float %9960, float %9960, float %9960, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9995 = call float @dx.op.dot3.f32(i32 55, float %9990, float %9991, float %9992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9996 = select i1 %232, float %9994, float %9960
  %9997 = select i1 %232, float 1.000000e+00, float %9960
  %9998 = select i1 %232, float %9995, float %9990
  %9999 = select i1 %232, float 0.000000e+00, float %9991
  %10000 = select i1 %232, float 0.000000e+00, float %9992
  %10001 = fmul fast float %9996, %9634
  %10002 = fmul fast float %9996, %9635
  %10003 = fmul fast float %9997, %9636
  %10004 = fadd fast float %10001, %9998
  %10005 = fadd fast float %10002, %9999
  %10006 = fadd fast float %10000, %10003
  %10007 = fmul fast float %9996, %9637
  %10008 = fmul fast float %9996, %9638
  %10009 = fmul fast float %9997, %9639
  br label %10010

; <label>:10010                                   ; preds = %9986, %9643, %9612, %8844
  %10011 = phi float [ %8849, %8844 ], [ %9634, %9612 ], [ %10004, %9986 ], [ %9634, %9643 ]
  %10012 = phi float [ %8850, %8844 ], [ %9635, %9612 ], [ %10005, %9986 ], [ %9635, %9643 ]
  %10013 = phi float [ %8851, %8844 ], [ %9636, %9612 ], [ %10006, %9986 ], [ %9636, %9643 ]
  %10014 = phi float [ %8852, %8844 ], [ %9637, %9612 ], [ %10007, %9986 ], [ %9637, %9643 ]
  %10015 = phi float [ %8853, %8844 ], [ %9638, %9612 ], [ %10008, %9986 ], [ %9638, %9643 ]
  %10016 = phi float [ %8854, %8844 ], [ %9639, %9612 ], [ %10009, %9986 ], [ %9639, %9643 ]
  %10017 = phi float [ %8855, %8844 ], [ %9622, %9612 ], [ %9993, %9986 ], [ %9622, %9643 ]
  %10018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10019 = extractvalue %dx.types.CBufRet.f32 %10018, 2
  %10020 = extractvalue %dx.types.CBufRet.f32 %10018, 3
  %10021 = fmul fast float %10019, %111
  %10022 = fmul fast float %10020, %112
  %10023 = call float @dx.op.unary.f32(i32 7, float %10021)  ; Saturate(value)
  %10024 = call float @dx.op.unary.f32(i32 7, float %10022)  ; Saturate(value)
  %10025 = select i1 %8586, i32 2, i32 0
  %10026 = or i32 %10025, 1
  %10027 = uitofp i32 %10026 to float
  %10028 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10023, float %10024, float %10027, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10029 = extractvalue %dx.types.ResRet.f32 %10028, 0
  %10030 = extractvalue %dx.types.ResRet.f32 %10028, 1
  %10031 = extractvalue %dx.types.ResRet.f32 %10028, 2
  %10032 = extractvalue %dx.types.ResRet.f32 %10028, 3
  %10033 = add nuw nsw i32 %10025, 2
  %10034 = uitofp i32 %10033 to float
  %10035 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10023, float %10024, float %10034, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10036 = extractvalue %dx.types.ResRet.f32 %10035, 0
  %10037 = extractvalue %dx.types.ResRet.f32 %10035, 1
  %10038 = extractvalue %dx.types.ResRet.f32 %10035, 2
  %10039 = extractvalue %dx.types.ResRet.f32 %10035, 3
  %10040 = call float @dx.op.binary.f32(i32 35, float %10030, float %10031)  ; FMax(a,b)
  %10041 = call float @dx.op.binary.f32(i32 35, float %10029, float %10040)  ; FMax(a,b)
  %10042 = call float @dx.op.binary.f32(i32 35, float %10041, float %10032)  ; FMax(a,b)
  %10043 = call float @dx.op.binary.f32(i32 36, float %10037, float %10038)  ; FMin(a,b)
  %10044 = call float @dx.op.binary.f32(i32 36, float %10036, float %10043)  ; FMin(a,b)
  %10045 = call float @dx.op.binary.f32(i32 36, float %10044, float %10039)  ; FMin(a,b)
  %10046 = fmul fast float %10042, 2.550000e+02
  %10047 = fadd fast float %10046, 0x3F70101020000000
  %10048 = fptoui float %10047 to i32
  %10049 = fmul fast float %10045, 2.550000e+02
  %10050 = fadd fast float %10049, 0x3F70101020000000
  %10051 = fptoui float %10050 to i32
  %10052 = icmp ult i32 %10048, %10051
  br i1 %10052, label %10053, label %10222

; <label>:10053                                   ; preds = %10010
  %10054 = fcmp fast ogt float %98, 9.843750e-01
  %10055 = fadd fast float %8848, -4.000000e+00
  %10056 = select i1 %10054, float -4.000000e+00, float %10055
  %10057 = call float @dx.op.binary.f32(i32 35, float %10056, float 0.000000e+00)  ; FMax(a,b)
  %10058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10059 = extractvalue %dx.types.CBufRet.f32 %10058, 0
  %10060 = fadd fast float %10059, %10057
  %10061 = extractvalue %dx.types.CBufRet.f32 %10058, 2
  %10062 = fmul fast float %10060, %10061
  %10063 = call float @dx.op.unary.f32(i32 23, float %10062)  ; Log(value)
  %10064 = extractvalue %dx.types.CBufRet.f32 %10058, 3
  %10065 = fmul fast float %10064, %10063
  %10066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10067 = extractvalue %dx.types.CBufRet.f32 %10066, 2
  %10068 = fmul fast float %10065, %10067
  %10069 = call float @dx.op.unary.f32(i32 7, float %10068)  ; Saturate(value)
  %10070 = uitofp i32 %10048 to float
  %10071 = uitofp i32 %10051 to float
  %10072 = fadd fast float %10070, 5.000000e-01
  %10073 = fadd fast float %10071, 5.000000e-01
  %10074 = fmul fast float %10067, %10072
  %10075 = fmul fast float %10067, %10073
  %10076 = fadd fast float %10074, 0x3F0FFB4800000000
  %10077 = fadd fast float %10075, 0xBF0FFB4800000000
  %10078 = call float @dx.op.binary.f32(i32 35, float %10069, float %10076)  ; FMax(a,b)
  %10079 = call float @dx.op.binary.f32(i32 36, float %10078, float %10077)  ; FMin(a,b)
  %10080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10081 = extractvalue %dx.types.CBufRet.f32 %10080, 1
  %10082 = extractvalue %dx.types.CBufRet.f32 %10080, 2
  %10083 = extractvalue %dx.types.CBufRet.f32 %10080, 0
  %10084 = select i1 %8586, float %10083, float 0.000000e+00
  %10085 = fmul fast float %10081, %10079
  %10086 = fadd fast float %10084, %10085
  %10087 = fadd fast float %10084, %10082
  %10088 = fsub fast float %10081, %10082
  %10089 = fadd fast float %10088, %10084
  %10090 = call float @dx.op.binary.f32(i32 35, float %10086, float %10087)  ; FMax(a,b)
  %10091 = call float @dx.op.binary.f32(i32 36, float %10090, float %10089)  ; FMin(a,b)
  %10092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10023, float %10024, float %10091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10093 = extractvalue %dx.types.ResRet.f32 %10092, 0
  %10094 = extractvalue %dx.types.ResRet.f32 %10092, 1
  %10095 = extractvalue %dx.types.ResRet.f32 %10092, 2
  %10096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10097 = extractvalue %dx.types.CBufRet.i32 %10096, 0
  %10098 = extractvalue %dx.types.CBufRet.i32 %10096, 1
  %10099 = uitofp i32 %10097 to float
  %10100 = uitofp i32 %10098 to float
  %10101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10102 = extractvalue %dx.types.CBufRet.f32 %10101, 0
  %10103 = extractvalue %dx.types.CBufRet.f32 %10101, 1
  %10104 = fmul fast float %10099, %10023
  %10105 = fmul fast float %10100, %10024
  %10106 = fadd fast float %10104, -5.000000e-01
  %10107 = fadd fast float %10105, -5.000000e-01
  %10108 = call float @dx.op.unary.f32(i32 22, float %10106)  ; Frc(value)
  %10109 = call float @dx.op.unary.f32(i32 22, float %10107)  ; Frc(value)
  %10110 = fmul fast float %10108, %10108
  %10111 = fmul fast float %10110, %10108
  %10112 = fsub fast float 3.000000e+00, %10108
  %10113 = fmul fast float %10110, %10112
  %10114 = fmul fast float %10108, 3.000000e+00
  %10115 = fmul fast float %10111, 3.000000e+00
  %10116 = fmul fast float %10110, 6.000000e+00
  %10117 = fsub fast float %10115, %10116
  %10118 = fadd fast float %10117, 4.000000e+00
  %10119 = fmul fast float %10118, 0x3FC5555560000000
  %10120 = fmul fast float %10111, -3.000000e+00
  %10121 = fadd fast float %10110, %10108
  %10122 = fmul fast float %10121, 3.000000e+00
  %10123 = fadd fast float %10120, 1.000000e+00
  %10124 = fadd fast float %10123, %10122
  %10125 = fmul fast float %10111, 0x3FC5555560000000
  %10126 = fmul fast float %10109, %10109
  %10127 = fmul fast float %10126, %10109
  %10128 = fsub fast float 3.000000e+00, %10109
  %10129 = fmul fast float %10126, %10128
  %10130 = fmul fast float %10109, 3.000000e+00
  %10131 = fmul fast float %10127, 3.000000e+00
  %10132 = fmul fast float %10126, 6.000000e+00
  %10133 = fsub fast float %10131, %10132
  %10134 = fadd fast float %10133, 4.000000e+00
  %10135 = fmul fast float %10134, 0x3FC5555560000000
  %10136 = fmul fast float %10127, -3.000000e+00
  %10137 = fadd fast float %10126, %10109
  %10138 = fmul fast float %10137, 3.000000e+00
  %10139 = fadd fast float %10136, 1.000000e+00
  %10140 = fadd fast float %10139, %10138
  %10141 = fmul fast float %10127, 0x3FC5555560000000
  %10142 = fadd fast float %10108, 1.000000e+00
  %10143 = fsub fast float 1.000000e+00, %10114
  %10144 = fadd fast float %10143, %10113
  %10145 = fadd fast float %10144, %10118
  %10146 = fmul fast float %10145, 0x3FC5555560000000
  %10147 = fdiv fast float %10119, %10146
  %10148 = fsub fast float %10142, %10147
  %10149 = fsub fast float 1.000000e+00, %10108
  %10150 = fadd fast float %10124, %10111
  %10151 = fmul fast float %10150, 0x3FC5555560000000
  %10152 = fdiv fast float %10125, %10151
  %10153 = fadd fast float %10149, %10152
  %10154 = fadd fast float %10109, 1.000000e+00
  %10155 = fsub fast float 1.000000e+00, %10130
  %10156 = fadd fast float %10155, %10129
  %10157 = fadd fast float %10156, %10134
  %10158 = fmul fast float %10157, 0x3FC5555560000000
  %10159 = fdiv fast float %10135, %10158
  %10160 = fsub fast float %10154, %10159
  %10161 = fsub fast float 1.000000e+00, %10109
  %10162 = fadd fast float %10140, %10127
  %10163 = fmul fast float %10162, 0x3FC5555560000000
  %10164 = fdiv fast float %10141, %10163
  %10165 = fadd fast float %10164, %10161
  %10166 = fmul fast float %10148, %10102
  %10167 = fsub fast float %10023, %10166
  %10168 = fmul fast float %10153, %10102
  %10169 = fadd fast float %10168, %10023
  %10170 = fmul fast float %10165, %10103
  %10171 = fadd fast float %10170, %10024
  %10172 = fmul fast float %10160, %10103
  %10173 = fsub fast float %10024, %10172
  %10174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10167, float %10173, float %10091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10175 = extractvalue %dx.types.ResRet.f32 %10174, 0
  %10176 = extractvalue %dx.types.ResRet.f32 %10174, 1
  %10177 = extractvalue %dx.types.ResRet.f32 %10174, 2
  %10178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10169, float %10173, float %10091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10179 = extractvalue %dx.types.ResRet.f32 %10178, 0
  %10180 = extractvalue %dx.types.ResRet.f32 %10178, 1
  %10181 = extractvalue %dx.types.ResRet.f32 %10178, 2
  %10182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10167, float %10171, float %10091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10183 = extractvalue %dx.types.ResRet.f32 %10182, 0
  %10184 = extractvalue %dx.types.ResRet.f32 %10182, 1
  %10185 = extractvalue %dx.types.ResRet.f32 %10182, 2
  %10186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10169, float %10171, float %10091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10187 = extractvalue %dx.types.ResRet.f32 %10186, 0
  %10188 = extractvalue %dx.types.ResRet.f32 %10186, 1
  %10189 = extractvalue %dx.types.ResRet.f32 %10186, 2
  %10190 = fsub fast float %10183, %10175
  %10191 = fsub fast float %10184, %10176
  %10192 = fsub fast float %10185, %10177
  %10193 = fmul fast float %10190, %10163
  %10194 = fmul fast float %10191, %10163
  %10195 = fmul fast float %10192, %10163
  %10196 = fadd fast float %10193, %10175
  %10197 = fadd fast float %10194, %10176
  %10198 = fadd fast float %10195, %10177
  %10199 = fsub fast float %10187, %10179
  %10200 = fsub fast float %10188, %10180
  %10201 = fsub fast float %10189, %10181
  %10202 = fmul fast float %10199, %10163
  %10203 = fmul fast float %10200, %10163
  %10204 = fmul fast float %10201, %10163
  %10205 = fsub fast float %10179, %10196
  %10206 = fadd fast float %10205, %10202
  %10207 = fsub fast float %10180, %10197
  %10208 = fadd fast float %10207, %10203
  %10209 = fsub fast float %10181, %10198
  %10210 = fadd fast float %10209, %10204
  %10211 = fmul fast float %10206, %10151
  %10212 = fmul fast float %10208, %10151
  %10213 = fmul fast float %10210, %10151
  %10214 = fadd fast float %10211, %10196
  %10215 = fadd fast float %10212, %10197
  %10216 = fadd fast float %10213, %10198
  %10217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10218 = extractvalue %dx.types.CBufRet.f32 %10217, 1
  %10219 = fmul fast float %10214, %10218
  %10220 = fmul fast float %10215, %10218
  %10221 = fmul fast float %10216, %10218
  br label %10222

; <label>:10222                                   ; preds = %10053, %10010
  %10223 = phi float [ %10093, %10053 ], [ 1.000000e+00, %10010 ]
  %10224 = phi float [ %10094, %10053 ], [ 1.000000e+00, %10010 ]
  %10225 = phi float [ %10095, %10053 ], [ 1.000000e+00, %10010 ]
  %10226 = phi float [ %10219, %10053 ], [ 0.000000e+00, %10010 ]
  %10227 = phi float [ %10220, %10053 ], [ 0.000000e+00, %10010 ]
  %10228 = phi float [ %10221, %10053 ], [ 0.000000e+00, %10010 ]
  %10229 = fmul fast float %10226, %8564
  %10230 = fmul fast float %10227, %8564
  %10231 = fmul fast float %10228, %8564
  %10232 = fmul fast float %10223, %10017
  %10233 = call float @dx.op.dot3.f32(i32 55, float %10223, float %10224, float %10225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10234 = call float @dx.op.dot3.f32(i32 55, float %10229, float %10230, float %10231, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10235 = select i1 %232, float %10233, float %10223
  %10236 = select i1 %232, float %10233, float %10224
  %10237 = select i1 %232, float 1.000000e+00, float %10225
  %10238 = select i1 %232, float %10234, float %10229
  %10239 = select i1 %232, float 0.000000e+00, float %10230
  %10240 = select i1 %232, float 0.000000e+00, float %10231
  %10241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10242 = extractvalue %dx.types.CBufRet.i32 %10241, 3
  %10243 = and i32 %10242, 3
  %10244 = icmp ne i32 %10243, 0
  %10245 = and i32 %10242, 4
  %10246 = icmp ne i32 %10245, 0
  %10247 = and i1 %10244, %10246
  %10248 = and i1 %232, %10247
  br i1 %10248, label %10249, label %10255

; <label>:10249                                   ; preds = %10222
  %10250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10251 = extractvalue %dx.types.CBufRet.f32 %10250, 1
  %10252 = fadd fast float %10232, -1.000000e+00
  %10253 = fmul fast float %10251, %10252
  %10254 = fadd fast float %10253, 1.000000e+00
  br label %10255

; <label>:10255                                   ; preds = %10249, %10222
  %10256 = phi float [ %10254, %10249 ], [ %10232, %10222 ]
  %10257 = fadd fast float %10014, %10011
  %10258 = fmul fast float %10235, %10257
  %10259 = fadd fast float %10258, %10238
  %10260 = fadd fast float %10015, %10012
  %10261 = fmul fast float %10236, %10260
  %10262 = fadd fast float %10261, %10239
  %10263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10264 = extractvalue %dx.types.CBufRet.f32 %10263, 0
  br i1 %232, label %10265, label %10288

; <label>:10265                                   ; preds = %10255
  %10266 = fadd fast float %10259, %10262
  %10267 = fmul fast float %10264, %10266
  %10268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10269 = extractvalue %dx.types.CBufRet.f32 %10268, 3
  %10270 = extractvalue %dx.types.CBufRet.f32 %8568, 1
  %10271 = fsub fast float %8573, %8567
  %10272 = fadd fast float %10271, %8574
  %10273 = fsub fast float %10272, %10270
  %10274 = extractvalue %dx.types.CBufRet.f32 %8568, 2
  %10275 = fmul fast float %10273, %10274
  %10276 = call float @dx.op.unary.f32(i32 7, float %10275)  ; Saturate(value)
  %10277 = fsub fast float %10276, %10269
  %10278 = fmul fast float %10277, %10256
  %10279 = fadd fast float %10278, %10269
  %10280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10281 = extractvalue %dx.types.CBufRet.f32 %10280, 0
  %10282 = fsub fast float %10279, %10281
  %10283 = fmul fast float %10282, 1.000000e+01
  %10284 = call float @dx.op.unary.f32(i32 7, float %10283)  ; Saturate(value)
  %10285 = fmul fast float %10284, %8563
  %10286 = fadd fast float %10285, %8564
  %10287 = fmul fast float %10286, %10279
  br label %10312

; <label>:10288                                   ; preds = %10255
  %10289 = fadd fast float %10016, %10013
  %10290 = fmul fast float %10237, %10289
  %10291 = fadd fast float %10290, %10240
  %10292 = fmul fast float %10264, %10259
  %10293 = fmul fast float %10264, %10262
  %10294 = fmul fast float %10264, %10291
  %10295 = call float @dx.op.binary.f32(i32 35, float %10293, float %10294)  ; FMax(a,b)
  %10296 = call float @dx.op.binary.f32(i32 35, float %10292, float %10295)  ; FMax(a,b)
  %10297 = call float @dx.op.binary.f32(i32 35, float %10296, float %8564)  ; FMax(a,b)
  %10298 = fcmp fast ugt float %10297, 0x3F10000000000000
  br i1 %10298, label %10300, label %10299

; <label>:10299                                   ; preds = %10288
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10300

; <label>:10300                                   ; preds = %10299, %10288
  %10301 = add i32 %62, 356
  %10302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10301, i32 undef)  ; BufferLoad(srv,index,wot)
  %10303 = extractvalue %dx.types.ResRet.i32 %10302, 0
  %10304 = and i32 %10303, 32
  %10305 = icmp eq i32 %10304, 0
  br i1 %10305, label %10312, label %10306

; <label>:10306                                   ; preds = %10300
  %10307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10308 = extractvalue %dx.types.CBufRet.f32 %10307, 0
  %10309 = fmul fast float %10308, 0x3FE99999A0000000
  %10310 = fadd fast float %10308, %10292
  %10311 = fadd fast float %10309, %10294
  br label %10312

; <label>:10312                                   ; preds = %10306, %10300, %10265
  %10313 = phi float [ %10267, %10265 ], [ %10310, %10306 ], [ %10292, %10300 ]
  %10314 = phi float [ %10287, %10265 ], [ %10293, %10306 ], [ %10293, %10300 ]
  %10315 = phi float [ %10286, %10265 ], [ %10311, %10306 ], [ %10294, %10300 ]
  %10316 = phi float [ %10286, %10265 ], [ %8564, %10306 ], [ %8564, %10300 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10317 = call float @dx.op.binary.f32(i32 36, float %10313, float 3.225500e+04)  ; FMin(a,b)
  %10318 = call float @dx.op.binary.f32(i32 36, float %10314, float 3.225500e+04)  ; FMin(a,b)
  %10319 = call float @dx.op.binary.f32(i32 36, float %10315, float 3.225500e+04)  ; FMin(a,b)
  %10320 = call float @dx.op.binary.f32(i32 36, float %10316, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10317)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10318)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10319)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10320)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

