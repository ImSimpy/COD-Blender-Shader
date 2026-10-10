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
; shader hash: ee94cdffc4064fc6e1da7dde20c2d00c
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
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
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %96 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %97 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %98 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %99 = alloca [12 x float], align 4
  %100 = alloca [12 x float], align 4
  %101 = alloca [4 x float], align 4
  %102 = alloca [4 x float], align 4
  %103 = alloca [4 x float], align 4
  %104 = alloca [3 x float], align 4
  %105 = alloca [3 x float], align 4
  %106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fmul fast float %109, %95
  %111 = fmul fast float %109, %96
  %112 = select i1 %61, float 1.000000e+00, float -1.000000e+00
  %113 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = bitcast float %113 to i32
  %115 = ashr i32 %114, 1
  %116 = sub nsw i32 1597250115, %115
  %117 = bitcast i32 %116 to float
  %118 = fmul fast float %86, %112
  %119 = fmul fast float %118, %117
  %120 = fmul fast float %87, %112
  %121 = fmul fast float %120, %117
  %122 = fmul fast float %88, %112
  %123 = fmul fast float %122, %117
  %124 = fmul fast float %87, %84
  %125 = fmul fast float %88, %83
  %126 = fsub fast float %124, %125
  %127 = fmul fast float %88, %82
  %128 = fmul fast float %86, %84
  %129 = fsub fast float %127, %128
  %130 = fmul fast float %86, %83
  %131 = fmul fast float %87, %82
  %132 = fsub fast float %130, %131
  %133 = fmul fast float %126, %85
  %134 = fmul fast float %129, %85
  %135 = fmul fast float %132, %85
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %110, 2.000000e+00
  %140 = fmul fast float %139, %137
  %141 = fmul fast float %111, 2.000000e+00
  %142 = fmul fast float %141, %138
  %143 = fsub fast float 1.000000e+00, %140
  %144 = fsub fast float 1.000000e+00, %142
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fmul fast float %143, %146
  %150 = fmul fast float %143, %147
  %151 = fmul fast float %143, %148
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %156 = fmul fast float %144, %153
  %157 = fmul fast float %144, %154
  %158 = fmul fast float %144, %155
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = fadd fast float %156, %160
  %164 = fadd fast float %163, %149
  %165 = fadd fast float %157, %161
  %166 = fadd fast float %165, %150
  %167 = fadd fast float %158, %162
  %168 = fadd fast float %167, %151
  %169 = fmul fast float %164, %98
  %170 = fmul fast float %166, %98
  %171 = fmul fast float %168, %98
  %172 = fmul fast float %110, 5.000000e-01
  %173 = fmul fast float %111, 5.000000e-01
  %174 = fptosi float %172 to i32
  %175 = fptosi float %173 to i32
  %176 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %174, i32 %175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = lshr i32 %177, 18
  %179 = uitofp i32 %178 to float
  %180 = fmul fast float %179, 0x3F4C00EBA0000000
  %181 = call float @dx.op.unary.f32(i32 21, float %180)  ; Exp(value)
  %182 = fadd fast float %181, -1.000000e+00
  %183 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %184 = extractvalue %dx.types.Dimensions %183, 0
  %185 = sitofp i32 %184 to float
  %186 = extractvalue %dx.types.Dimensions %183, 1
  %187 = sitofp i32 %186 to float
  %188 = fcmp fast oge float %172, %185
  %189 = fcmp fast oge float %173, %187
  %190 = or i1 %188, %189
  %191 = select i1 %190, float 0x4197782600000000, float %182
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %195 = fmul fast float %193, %110
  %196 = fmul fast float %194, %111
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = and i32 %198, 114688
  %200 = icmp ne i32 %199, 0
  %201 = select i1 %200, float %195, float 0.000000e+00
  %202 = select i1 %200, float %196, float 0.000000e+00
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %55, float %201, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fmul fast float %204, 2.550000e+02
  %206 = fptoui float %205 to i32
  %207 = select i1 %200, i32 %206, i32 0
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.i32 %209, 3
  %211 = and i32 %210, 3
  %212 = icmp ne i32 %211, 0
  %213 = and i32 %210, 4
  %214 = icmp ne i32 %213, 0
  %215 = and i1 %212, %214
  br i1 %215, label %216, label %227

; <label>:216                                     ; preds = %0
  %217 = extractvalue %dx.types.CBufRet.f32 %208, 3
  %218 = fmul fast float %217, %111
  %219 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %220 = fmul fast float %219, %110
  %221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %54, float %220, float %218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = fsub fast float 1.000000e+00, %222
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = fcmp fast olt float %223, %225
  br label %230

; <label>:227                                     ; preds = %0
  %228 = icmp eq i32 %213, 0
  %229 = and i1 %212, %228
  br label %230

; <label>:230                                     ; preds = %227, %216
  %231 = phi i1 [ %226, %216 ], [ %229, %227 ]
  %232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %233 = extractvalue %dx.types.CBufRet.f32 %232, 2
  %234 = fmul fast float %233, 0x3FE3C6EF40000000
  %235 = frem fast float %110, 2.560000e+02
  %236 = frem fast float %111, 2.560000e+02
  %237 = fptoui float %235 to i32
  %238 = fptoui float %236 to i32
  %239 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %237, i32 %238, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fadd fast float %240, %234
  %242 = call float @dx.op.unary.f32(i32 22, float %241)  ; Frc(value)
  %243 = add i32 %62, 156
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = shl i32 %245, 4
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %245, 7
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %245, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %62, 216
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %257, 8
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %257, 16
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = add i32 %62, 36
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %62, 288
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %62, 172
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %62, 232
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %62, 52
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %62, 304
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %62, 188
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = shl i32 %329, 4
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %329, 7
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 22
  %337 = shl nuw nsw i32 %336, 5
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %62, 248
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %341, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %341, 16
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = add i32 %62, 68
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %62, 320
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %364, 0x3F50624DE0000000
  %368 = fmul fast float %366, 0x3F50624DE0000000
  %369 = add i32 %62, 204
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = shl i32 %371, 4
  %373 = and i32 %372, 32752
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %371, 7
  %376 = and i32 %375, 32752
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = lshr i32 %371, 22
  %379 = shl nuw nsw i32 %378, 5
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %62, 264
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 255
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = lshr i32 %383, 8
  %388 = and i32 %387, 255
  %389 = uitofp i32 %388 to float
  %390 = fmul fast float %389, 0x3F70101020000000
  %391 = lshr i32 %383, 16
  %392 = and i32 %391, 255
  %393 = uitofp i32 %392 to float
  %394 = fmul fast float %393, 0x3F70101020000000
  %395 = add i32 %62, 84
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 65535
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = lshr i32 %397, 16
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = add i32 %62, 336
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = fmul fast float %406, 0x3F50624DE0000000
  %410 = fmul fast float %408, 0x3F50624DE0000000
  %411 = add i32 %62, 348
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 32
  %415 = icmp eq i32 %414, 0
  %416 = and i32 %413, 64
  %417 = icmp eq i32 %416, 0
  %418 = and i32 %413, 128
  %419 = icmp eq i32 %418, 0
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 2
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %439, label %424

; <label>:424                                     ; preds = %230
  %425 = add i32 %62, 472
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %427, 0
  %429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %429, %dx.types.Handle %107, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  %432 = extractvalue %dx.types.ResRet.f32 %430, 1
  %433 = extractvalue %dx.types.ResRet.f32 %430, 2
  %434 = extractvalue %dx.types.ResRet.f32 %430, 3
  %435 = fmul fast float %434, %91
  %436 = fmul fast float %431, %92
  %437 = fmul fast float %432, %93
  %438 = fmul fast float %433, %94
  br label %439

; <label>:439                                     ; preds = %424, %230
  %440 = phi float [ %94, %230 ], [ %438, %424 ]
  %441 = phi float [ %93, %230 ], [ %437, %424 ]
  %442 = phi float [ %92, %230 ], [ %436, %424 ]
  %443 = phi float [ %91, %230 ], [ %435, %424 ]
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 2
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %467, label %448

; <label>:448                                     ; preds = %439
  %449 = add i32 %62, 44
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = and i32 %451, 1
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %453, float %442, float 1.000000e+00
  %455 = add i32 %62, 60
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 1
  %459 = icmp ne i32 %458, 0
  %460 = select i1 %459, float %441, float 1.000000e+00
  %461 = add i32 %62, 76
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 1
  %465 = icmp ne i32 %464, 0
  %466 = select i1 %465, float %440, float 1.000000e+00
  br label %467

; <label>:467                                     ; preds = %448, %439
  %468 = phi float [ %440, %439 ], [ %466, %448 ]
  %469 = phi float [ %441, %439 ], [ %460, %448 ]
  %470 = phi float [ %442, %439 ], [ %454, %448 ]
  %471 = lshr i32 %445, 20
  %472 = and i32 %471, 3
  %473 = add nuw nsw i32 %472, 1
  %474 = add i32 %62, 24
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = add i32 %62, 28
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = or i32 %479, %476
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %1131, label %482

; <label>:482                                     ; preds = %467
  %483 = and i32 %476, 262144
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %64, float 1.000000e+00
  %486 = select i1 %484, float %65, float 0.000000e+00
  %487 = select i1 %484, float %66, float 0.000000e+00
  %488 = select i1 %484, float %67, float 1.000000e+00
  %489 = select i1 %484, float %68, float %89
  %490 = select i1 %484, float %69, float %90
  %491 = add i32 %62, 284
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = lshr i32 %493, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = fmul fast float %495, 0x3F50624DE0000000
  %497 = add i32 %62, 88
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 16
  %501 = and i32 %500, 255
  %502 = lshr i32 %499, 24
  %503 = add i32 %62, 292
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 65535
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %505, 16
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = add i32 %62, 32
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 22
  %514 = shl nuw nsw i32 %513, 5
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = shl i32 %512, 4
  %517 = and i32 %516, 32752
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = lshr i32 %512, 7
  %520 = and i32 %519, 32752
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 3
  %524 = fmul fast float %523, 1.000000e+03
  %525 = fmul fast float %283, %524
  %526 = call float @dx.op.unary.f32(i32 22, float %525)  ; Frc(value)
  %527 = fadd fast float %526, %273
  %528 = fmul fast float %284, %524
  %529 = call float @dx.op.unary.f32(i32 22, float %528)  ; Frc(value)
  %530 = fadd fast float %529, %275
  %531 = fmul fast float %496, %524
  %532 = call float @dx.op.unary.f32(i32 22, float %531)  ; Frc(value)
  %533 = fmul fast float %532, 0x401921FB60000000
  %534 = fadd fast float %533, %515
  %535 = call float @dx.op.unary.f32(i32 13, float %534)  ; Sin(value)
  %536 = call float @dx.op.unary.f32(i32 12, float %534)  ; Cos(value)
  %537 = fsub fast float -0.000000e+00, %535
  %538 = fadd fast float %489, -5.000000e-01
  %539 = fadd fast float %490, -5.000000e-01
  %540 = fmul fast float %507, %538
  %541 = fmul fast float %509, %539
  %542 = fadd fast float %540, 5.000000e-01
  %543 = fadd fast float %541, 5.000000e-01
  %544 = fmul fast float %518, %542
  %545 = fmul fast float %521, %543
  %546 = fmul fast float %536, %544
  %547 = call float @dx.op.tertiary.f32(i32 46, float %537, float %545, float %546)  ; FMad(a,b,c)
  %548 = fmul fast float %535, %544
  %549 = call float @dx.op.tertiary.f32(i32 46, float %536, float %545, float %548)  ; FMad(a,b,c)
  %550 = fadd fast float %527, %547
  %551 = fadd fast float %530, %549
  %552 = icmp ugt i32 %501, 1
  %553 = icmp ugt i32 %499, 33554431
  %554 = or i1 %553, %552
  br i1 %554, label %555, label %580

; <label>:555                                     ; preds = %482
  %556 = add i32 %62, 228
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %556, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = lshr i32 %558, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = fmul fast float %523, %560
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = mul nuw nsw i32 %501, %502
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %562, %564
  %566 = call float @dx.op.unary.f32(i32 27, float %565)  ; Round_ni(value)
  %567 = fptoui float %566 to i32
  %568 = urem i32 %567, %501
  %569 = udiv i32 %567, %502
  %570 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %571 = call float @dx.op.unary.f32(i32 22, float %551)  ; Frc(value)
  %572 = uitofp i32 %568 to float
  %573 = uitofp i32 %569 to float
  %574 = fadd fast float %570, %572
  %575 = fadd fast float %571, %573
  %576 = uitofp i32 %501 to float
  %577 = uitofp i32 %502 to float
  %578 = fdiv fast float %574, %576
  %579 = fdiv fast float %575, %577
  br label %580

; <label>:580                                     ; preds = %555, %482
  %581 = phi float [ %578, %555 ], [ %550, %482 ]
  %582 = phi float [ %579, %555 ], [ %551, %482 ]
  %583 = and i32 %476, 16777216
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %694, label %585

; <label>:585                                     ; preds = %580
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 0
  %588 = extractvalue %dx.types.CBufRet.f32 %586, 1
  %589 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %590 = fadd fast float %587, %169
  %591 = fadd fast float %588, %170
  %592 = fadd fast float %589, %171
  %593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %594 = extractvalue %dx.types.CBufRet.f32 %593, 0
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = icmp eq i32 %63, 65535
  br i1 %596, label %691, label %597

; <label>:597                                     ; preds = %585
  %598 = lshr i32 %63, 1
  %599 = shl i32 %598, 2
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = and i32 %63, 1
  %603 = icmp ne i32 %602, 0
  %604 = lshr i32 %601, 16
  %605 = and i32 %601, 65535
  %606 = select i1 %603, i32 %604, i32 %605
  %607 = icmp eq i32 %606, 65535
  br i1 %607, label %687, label %608

; <label>:608                                     ; preds = %597
  %609 = mul nuw nsw i32 %606, 40
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = add nuw nsw i32 %609, 12
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = add nuw nsw i32 %609, 24
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = add nuw nsw i32 %609, 36
  %625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = fsub fast float %590, %611
  %628 = fsub fast float %591, %612
  %629 = fsub fast float %592, %613
  %630 = fmul fast float %626, %627
  %631 = fmul fast float %626, %628
  %632 = fmul fast float %626, %629
  %633 = call float @dx.op.unary.f32(i32 27, float %630)  ; Round_ni(value)
  %634 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %635 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %636 = fadd fast float %633, 5.000000e-01
  %637 = fadd fast float %634, 5.000000e-01
  %638 = fadd fast float %635, 5.000000e-01
  %639 = fmul fast float %636, %616
  %640 = fmul fast float %637, %617
  %641 = fmul fast float %638, %618
  %642 = shl i32 %63, 2
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call float @dx.op.unary.f32(i32 22, float %639)  ; Frc(value)
  %648 = call float @dx.op.unary.f32(i32 22, float %640)  ; Frc(value)
  %649 = call float @dx.op.unary.f32(i32 22, float %641)  ; Frc(value)
  %650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %646, %dx.types.Handle %55, float %647, float %648, float %649, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = fmul fast float %651, 1.023000e+03
  %655 = fmul fast float %652, 1.023000e+03
  %656 = fmul fast float %653, 1.023000e+03
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fadd fast float %655, 5.000000e-01
  %659 = fadd fast float %656, 5.000000e-01
  %660 = call float @dx.op.unary.f32(i32 27, float %657)  ; Round_ni(value)
  %661 = call float @dx.op.unary.f32(i32 27, float %658)  ; Round_ni(value)
  %662 = call float @dx.op.unary.f32(i32 27, float %659)  ; Round_ni(value)
  %663 = fsub fast float %630, %633
  %664 = fsub fast float %631, %634
  %665 = fsub fast float %632, %635
  %666 = fmul fast float %663, 7.500000e-01
  %667 = fmul fast float %664, 7.500000e-01
  %668 = fmul fast float %665, 7.500000e-01
  %669 = fadd fast float %633, 1.250000e-01
  %670 = fadd fast float %669, %666
  %671 = fadd fast float %670, %660
  %672 = fadd fast float %634, 1.250000e-01
  %673 = fadd fast float %672, %667
  %674 = fadd fast float %673, %661
  %675 = fadd fast float %635, 1.250000e-01
  %676 = fadd fast float %675, %668
  %677 = fadd fast float %676, %662
  %678 = fmul fast float %671, %621
  %679 = fmul fast float %674, %622
  %680 = fmul fast float %677, %623
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %682, 0
  %684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %684, %dx.types.Handle %53, float %678, float %679, float %680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  br label %687

; <label>:687                                     ; preds = %608, %597
  %688 = phi float [ %686, %608 ], [ -1.000000e+00, %597 ]
  %689 = fadd fast float %688, %595
  %690 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  br label %691

; <label>:691                                     ; preds = %687, %585
  %692 = phi float [ %690, %687 ], [ %595, %585 ]
  %693 = fmul fast float %692, %443
  br label %694

; <label>:694                                     ; preds = %691, %580
  %695 = phi float [ %693, %691 ], [ %443, %580 ]
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 256
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %746, label %700

; <label>:700                                     ; preds = %694
  %701 = add i32 %62, 424
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %107, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = add i32 %62, 100
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = shl i32 %710, 4
  %712 = and i32 %711, 32752
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = lshr i32 %710, 7
  %715 = and i32 %714, 32752
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = fsub fast float 1.000000e+00, %695
  %718 = call float @dx.op.binary.f32(i32 35, float %717, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %719 = bitcast float %695 to i32
  %720 = sitofp i32 %719 to float
  %721 = fadd fast float %720, 0xC1CFBF8940000000
  %722 = fmul fast float %716, %721
  %723 = fadd fast float %722, 0x41CFBF8940000000
  %724 = fptosi float %723 to i32
  %725 = bitcast i32 %724 to float
  %726 = bitcast float %718 to i32
  %727 = sitofp i32 %726 to float
  %728 = fadd fast float %727, 0xC1CFBF8940000000
  %729 = fmul fast float %728, %716
  %730 = fadd fast float %729, 0x41CFBF8940000000
  %731 = fptosi float %730 to i32
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %725, %713
  %734 = fmul fast float %732, %713
  %735 = fsub fast float %718, %733
  %736 = fadd fast float %734, %718
  %737 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %738 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %739 = fsub fast float %707, %737
  %740 = fsub fast float %738, %737
  %741 = bitcast float %740 to i32
  %742 = sub nsw i32 2129859010, %741
  %743 = bitcast i32 %742 to float
  %744 = fmul fast float %743, %739
  %745 = call float @dx.op.unary.f32(i32 7, float %744)  ; Saturate(value)
  br label %746

; <label>:746                                     ; preds = %700, %694
  %747 = phi float [ %745, %700 ], [ %695, %694 ]
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 128
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %768, label %752

; <label>:752                                     ; preds = %746
  %753 = add i32 %62, 408
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = add i32 %755, 0
  %757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %757, %dx.types.Handle %107, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 524288
  %763 = icmp ne i32 %762, 0
  %764 = fcmp fast ogt float %759, 0x3FE0101020000000
  %765 = select i1 %764, float 1.000000e+00, float 0.000000e+00
  %766 = select i1 %763, float %765, float %759
  %767 = fmul fast float %766, %747
  br label %768

; <label>:768                                     ; preds = %752, %746
  %769 = phi float [ %767, %752 ], [ %747, %746 ]
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 16
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %972, label %774

; <label>:774                                     ; preds = %768
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = add i32 %62, 360
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = add i32 %779, 0
  %781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %781, %dx.types.Handle %106, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = extractvalue %dx.types.ResRet.f32 %782, 1
  %785 = extractvalue %dx.types.ResRet.f32 %782, 2
  %786 = extractvalue %dx.types.ResRet.f32 %782, 3
  %787 = and i32 %776, 255
  %788 = uitofp i32 %787 to float
  %789 = lshr i32 %776, 8
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %786, %788
  %793 = fadd fast float %792, %791
  %794 = fmul fast float %793, 0x3F70101000000000
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 512
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %807, label %799

; <label>:799                                     ; preds = %774
  %800 = add i32 %62, 440
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %804, %dx.types.Handle %107, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  br label %807

; <label>:807                                     ; preds = %799, %774
  %808 = phi float [ %806, %799 ], [ 1.000000e+00, %774 ]
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 33554432
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %919, label %813

; <label>:813                                     ; preds = %807
  %814 = add i32 %62, 224
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %816, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = add i32 %62, 228
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = and i32 %823, 65535
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = lshr i32 %827, 24
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = and i32 %827, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = lshr i32 %827, 8
  %835 = and i32 %834, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = lshr i32 %827, 16
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = add i32 %62, 220
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = lshr i32 %844, 24
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = and i32 %844, 255
  %849 = uitofp i32 %848 to float
  %850 = fmul fast float %849, 0x3F70101020000000
  %851 = lshr i32 %844, 8
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = lshr i32 %844, 16
  %856 = and i32 %855, 255
  %857 = uitofp i32 %856 to float
  %858 = fmul fast float %857, 0x3F70101020000000
  %859 = bitcast float %783 to i32
  %860 = ashr i32 %859, 1
  %861 = sub nsw i32 1597463174, %860
  %862 = bitcast i32 %861 to float
  %863 = fmul fast float %783, 5.000000e-01
  %864 = fmul fast float %862, %862
  %865 = fmul fast float %864, %863
  %866 = fsub fast float 1.500000e+00, %865
  %867 = fmul fast float %862, %783
  %868 = fmul fast float %867, %866
  %869 = bitcast float %784 to i32
  %870 = ashr i32 %869, 1
  %871 = sub nsw i32 1597463174, %870
  %872 = bitcast i32 %871 to float
  %873 = fmul fast float %784, 5.000000e-01
  %874 = fmul fast float %872, %872
  %875 = fmul fast float %874, %873
  %876 = fsub fast float 1.500000e+00, %875
  %877 = fmul fast float %872, %784
  %878 = fmul fast float %877, %876
  %879 = bitcast float %785 to i32
  %880 = ashr i32 %879, 1
  %881 = sub nsw i32 1597463174, %880
  %882 = bitcast i32 %881 to float
  %883 = fmul fast float %785, 5.000000e-01
  %884 = fmul fast float %882, %882
  %885 = fmul fast float %884, %883
  %886 = fsub fast float 1.500000e+00, %885
  %887 = fmul fast float %882, %785
  %888 = fmul fast float %887, %886
  %889 = fsub fast float %868, %850
  %890 = fsub fast float %878, %854
  %891 = fsub fast float %888, %858
  %892 = fmul fast float %889, %818
  %893 = fmul fast float %890, %820
  %894 = fmul fast float %891, %825
  %895 = fadd fast float %892, %833
  %896 = fadd fast float %893, %837
  %897 = fadd fast float %894, %841
  %898 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %899 = call float @dx.op.unary.f32(i32 7, float %896)  ; Saturate(value)
  %900 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %901 = fmul fast float %898, %898
  %902 = fmul fast float %899, %899
  %903 = fmul fast float %900, %900
  %904 = fsub fast float %901, %783
  %905 = fsub fast float %902, %784
  %906 = fsub fast float %903, %785
  %907 = fmul fast float %904, %808
  %908 = fmul fast float %905, %808
  %909 = fmul fast float %906, %808
  %910 = fadd fast float %907, %783
  %911 = fadd fast float %908, %784
  %912 = fadd fast float %909, %785
  %913 = fadd fast float %830, %794
  %914 = fsub fast float %913, %847
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = fsub fast float %915, %794
  %917 = fmul fast float %916, %808
  %918 = fadd fast float %917, %794
  br label %972

; <label>:919                                     ; preds = %807
  %920 = and i32 %810, 134217728
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %956, label %922

; <label>:922                                     ; preds = %919
  %923 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %924 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %926 = fadd fast float %923, -5.000000e-01
  %927 = fadd fast float %924, -5.000000e-01
  %928 = fadd fast float %925, -5.000000e-01
  %929 = fmul fast float %926, %808
  %930 = fmul fast float %927, %808
  %931 = fmul fast float %928, %808
  %932 = fadd fast float %929, 5.000000e-01
  %933 = fadd fast float %930, 5.000000e-01
  %934 = fadd fast float %931, 5.000000e-01
  %935 = call float @dx.op.unary.f32(i32 24, float %783)  ; Sqrt(value)
  %936 = call float @dx.op.unary.f32(i32 24, float %784)  ; Sqrt(value)
  %937 = call float @dx.op.unary.f32(i32 24, float %785)  ; Sqrt(value)
  %938 = fmul fast float %932, 2.000000e+00
  %939 = fsub fast float 1.000000e+00, %938
  %940 = fmul fast float %939, %935
  %941 = fadd fast float %940, %938
  %942 = fmul fast float %941, %935
  %943 = fmul fast float %933, 2.000000e+00
  %944 = fsub fast float 1.000000e+00, %943
  %945 = fmul fast float %944, %936
  %946 = fadd fast float %945, %943
  %947 = fmul fast float %946, %936
  %948 = fmul fast float %934, 2.000000e+00
  %949 = fsub fast float 1.000000e+00, %948
  %950 = fmul fast float %949, %937
  %951 = fadd fast float %950, %948
  %952 = fmul fast float %951, %937
  %953 = fmul fast float %942, %942
  %954 = fmul fast float %947, %947
  %955 = fmul fast float %952, %952
  br label %972

; <label>:956                                     ; preds = %919
  %957 = fmul fast float %260, %260
  %958 = fmul fast float %264, %264
  %959 = fmul fast float %268, %268
  %960 = fadd fast float %957, -1.000000e+00
  %961 = fadd fast float %958, -1.000000e+00
  %962 = fadd fast float %959, -1.000000e+00
  %963 = fmul fast float %808, %960
  %964 = fmul fast float %808, %961
  %965 = fmul fast float %808, %962
  %966 = fadd fast float %963, 1.000000e+00
  %967 = fadd fast float %964, 1.000000e+00
  %968 = fadd fast float %965, 1.000000e+00
  %969 = fmul fast float %966, %783
  %970 = fmul fast float %967, %784
  %971 = fmul fast float %968, %785
  br label %972

; <label>:972                                     ; preds = %956, %922, %813, %768
  %973 = phi float [ %918, %813 ], [ %794, %922 ], [ %794, %956 ], [ 0x3FA23C0BE0000000, %768 ]
  %974 = phi float [ %910, %813 ], [ %953, %922 ], [ %969, %956 ], [ 1.000000e+00, %768 ]
  %975 = phi float [ %911, %813 ], [ %954, %922 ], [ %970, %956 ], [ 1.000000e+00, %768 ]
  %976 = phi float [ %912, %813 ], [ %955, %922 ], [ %971, %956 ], [ 1.000000e+00, %768 ]
  %977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.i32 %977, 1
  %979 = and i32 %978, 1
  %980 = icmp ne i32 %979, 0
  %981 = add i32 %62, 356
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 32
  %985 = icmp ne i32 %984, 0
  %986 = and i1 %980, %985
  %987 = select i1 %986, float 1.000000e+00, float %974
  %988 = select i1 %986, float 0x3FD3333340000000, float %975
  %989 = select i1 %986, float 0x3FD3333340000000, float %976
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 32
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1066, label %994

; <label>:994                                     ; preds = %972
  %995 = add i32 %62, 92
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = add i32 %62, 376
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %998, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = add i32 %1000, 0
  %1002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1003 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1002, %dx.types.Handle %106, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1007 = extractvalue %dx.types.ResRet.f32 %1003, 3
  %1008 = and i32 %997, 255
  %1009 = uitofp i32 %1008 to float
  %1010 = lshr i32 %997, 8
  %1011 = and i32 %1010, 255
  %1012 = uitofp i32 %1011 to float
  %1013 = lshr i32 %997, 16
  %1014 = and i32 %1013, 255
  %1015 = uitofp i32 %1014 to float
  %1016 = fmul fast float %1015, 0x3F70101000000000
  %1017 = fmul fast float %1004, %1009
  %1018 = fadd fast float %1017, %1012
  %1019 = fmul fast float %1018, 0x3F70101000000000
  %1020 = fadd fast float %1005, -5.000000e-01
  %1021 = fadd fast float %1007, -5.000000e-01
  %1022 = fmul fast float %1020, %1016
  %1023 = fmul fast float %1021, %1016
  %1024 = fadd fast float %1022, 5.000000e-01
  %1025 = fadd fast float %1023, 5.000000e-01
  %1026 = fmul fast float %1024, 2.000000e+00
  %1027 = fadd fast float %1026, -1.000000e+00
  %1028 = fmul fast float %1025, 2.000000e+00
  %1029 = fadd fast float %1028, -1.000000e+00
  %1030 = fadd fast float %1027, %1029
  %1031 = fmul fast float %1030, 5.000000e-01
  %1032 = fsub fast float %1027, %1029
  %1033 = fmul fast float %1032, 5.000000e-01
  %1034 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1035 = fsub fast float 1.000000e+00, %1034
  %1036 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1037 = fsub fast float %1035, %1036
  %1038 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1033, float %1037, float %1031, float %1033, float %1037)  ; Dot3(ax,ay,az,bx,by,bz)
  %1039 = call float @dx.op.unary.f32(i32 25, float %1038)  ; Rsqrt(value)
  %1040 = fmul fast float %1031, %1039
  %1041 = fmul fast float %1033, %1039
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 67108864
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1062, label %1046

; <label>:1046                                    ; preds = %994
  %1047 = add i32 %62, 280
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 65535
  %1051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1050)  ; LegacyF16ToF32(value)
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 65535
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = lshr i32 %1049, 16
  %1057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1056)  ; LegacyF16ToF32(value)
  %1058 = fsub fast float %1019, %1057
  %1059 = fmul fast float %1058, %1051
  %1060 = fadd fast float %1059, %1055
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  br label %1062

; <label>:1062                                    ; preds = %1046, %994
  %1063 = phi float [ %1061, %1046 ], [ %1019, %994 ]
  %1064 = call float @dx.op.dot2.f32(i32 54, float %1040, float %1041, float %485, float %486)  ; Dot2(ax,ay,bx,by)
  %1065 = call float @dx.op.dot2.f32(i32 54, float %1040, float %1041, float %487, float %488)  ; Dot2(ax,ay,bx,by)
  br label %1066

; <label>:1066                                    ; preds = %1062, %972
  %1067 = phi float [ %1063, %1062 ], [ 0x3FD6666660000000, %972 ]
  %1068 = phi float [ %1064, %1062 ], [ 0.000000e+00, %972 ]
  %1069 = phi float [ %1065, %1062 ], [ 0.000000e+00, %972 ]
  %1070 = phi float [ %1006, %1062 ], [ 1.000000e+00, %972 ]
  %1071 = add i32 %62, 160
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = lshr i32 %1073, 22
  %1075 = shl nuw nsw i32 %1074, 5
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 64
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1114, label %1081

; <label>:1081                                    ; preds = %1066
  %1082 = add i32 %62, 392
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = and i32 %1088, 131072
  %1090 = icmp eq i32 %1089, 0
  %1091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1086, %dx.types.Handle %106, float %581, float %582, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = fmul fast float %1092, %248
  %1096 = fmul fast float %1093, %251
  %1097 = fmul fast float %1094, %254
  br i1 %1090, label %1104, label %1098

; <label>:1098                                    ; preds = %1081
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = fmul fast float %1100, %1095
  %1102 = fmul fast float %1100, %1096
  %1103 = fmul fast float %1100, %1097
  br label %1104

; <label>:1104                                    ; preds = %1098, %1081
  %1105 = phi float [ %1101, %1098 ], [ %1095, %1081 ]
  %1106 = phi float [ %1102, %1098 ], [ %1096, %1081 ]
  %1107 = phi float [ %1103, %1098 ], [ %1097, %1081 ]
  %1108 = fmul fast float %1105, %1076
  %1109 = select i1 %231, float %1108, float %1105
  %1110 = call float @dx.op.dot3.f32(i32 55, float %1109, float %1106, float %1107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = select i1 %231, float 0.000000e+00, float %1105
  %1112 = select i1 %231, float %1110, float %1106
  %1113 = select i1 %231, float 0.000000e+00, float %1107
  br label %1114

; <label>:1114                                    ; preds = %1104, %1066
  %1115 = phi float [ %1111, %1104 ], [ 0.000000e+00, %1066 ]
  %1116 = phi float [ %1112, %1104 ], [ 0.000000e+00, %1066 ]
  %1117 = phi float [ %1113, %1104 ], [ 0.000000e+00, %1066 ]
  %1118 = add i32 %62, 96
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = lshr i32 %1120, 8
  %1124 = and i32 %1123, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = call float @dx.op.dot3.f32(i32 55, float %987, float %988, float %989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1127 = fmul fast float %1125, %1126
  %1128 = fadd fast float %1127, %1122
  %1129 = fmul fast float %1128, 0x3F70101020000000
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  br label %1131

; <label>:1131                                    ; preds = %1114, %467
  %1132 = phi float [ 0.000000e+00, %467 ], [ %1068, %1114 ]
  %1133 = phi float [ 0.000000e+00, %467 ], [ %1069, %1114 ]
  %1134 = phi float [ 0.000000e+00, %467 ], [ %987, %1114 ]
  %1135 = phi float [ 0.000000e+00, %467 ], [ %988, %1114 ]
  %1136 = phi float [ 0.000000e+00, %467 ], [ %989, %1114 ]
  %1137 = phi float [ 0.000000e+00, %467 ], [ %1115, %1114 ]
  %1138 = phi float [ 0.000000e+00, %467 ], [ %1116, %1114 ]
  %1139 = phi float [ 0.000000e+00, %467 ], [ %1117, %1114 ]
  %1140 = phi float [ 0.000000e+00, %467 ], [ %973, %1114 ]
  %1141 = phi float [ 0.000000e+00, %467 ], [ %769, %1114 ]
  %1142 = phi float [ 0.000000e+00, %467 ], [ %1067, %1114 ]
  %1143 = phi float [ 0.000000e+00, %467 ], [ %1070, %1114 ]
  %1144 = phi float [ 0.000000e+00, %467 ], [ %1130, %1114 ]
  br i1 %415, label %1986, label %1145

; <label>:1145                                    ; preds = %1131
  %1146 = icmp ult i32 %473, 2
  %1147 = add i32 %62, 40
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = add i32 %62, 44
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = or i32 %1152, %1149
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1986, label %1155

; <label>:1155                                    ; preds = %1145
  %1156 = and i32 %1149, 262144
  %1157 = icmp ne i32 %1156, 0
  %1158 = select i1 %1157, float %64, float 1.000000e+00
  %1159 = select i1 %1157, float %65, float 0.000000e+00
  %1160 = select i1 %1157, float %66, float 0.000000e+00
  %1161 = select i1 %1157, float %67, float 1.000000e+00
  %1162 = select i1 %1157, float %68, float %89
  %1163 = select i1 %1157, float %69, float %90
  %1164 = add i32 %62, 300
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = lshr i32 %1166, 16
  %1168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1167)  ; LegacyF16ToF32(value)
  %1169 = fmul fast float %1168, 0x3F50624DE0000000
  %1170 = add i32 %62, 104
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = lshr i32 %1172, 16
  %1174 = and i32 %1173, 255
  %1175 = lshr i32 %1172, 24
  %1176 = add i32 %62, 308
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 65535
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1178, 16
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = add i32 %62, 48
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = lshr i32 %1185, 22
  %1187 = shl nuw nsw i32 %1186, 5
  %1188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1187)  ; LegacyF16ToF32(value)
  %1189 = shl i32 %1185, 4
  %1190 = and i32 %1189, 32752
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = lshr i32 %1185, 7
  %1193 = and i32 %1192, 32752
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 3
  %1197 = fmul fast float %1196, 1.000000e+03
  %1198 = fmul fast float %325, %1197
  %1199 = call float @dx.op.unary.f32(i32 22, float %1198)  ; Frc(value)
  %1200 = fadd fast float %1199, %315
  %1201 = fmul fast float %326, %1197
  %1202 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1203 = fadd fast float %1202, %317
  %1204 = fmul fast float %1169, %1197
  %1205 = call float @dx.op.unary.f32(i32 22, float %1204)  ; Frc(value)
  %1206 = fmul fast float %1205, 0x401921FB60000000
  %1207 = fadd fast float %1206, %1188
  %1208 = call float @dx.op.unary.f32(i32 13, float %1207)  ; Sin(value)
  %1209 = call float @dx.op.unary.f32(i32 12, float %1207)  ; Cos(value)
  %1210 = fsub fast float -0.000000e+00, %1208
  %1211 = fadd fast float %1162, -5.000000e-01
  %1212 = fadd fast float %1163, -5.000000e-01
  %1213 = fmul fast float %1180, %1211
  %1214 = fmul fast float %1182, %1212
  %1215 = fadd fast float %1213, 5.000000e-01
  %1216 = fadd fast float %1214, 5.000000e-01
  %1217 = fmul fast float %1191, %1215
  %1218 = fmul fast float %1194, %1216
  %1219 = fmul fast float %1209, %1217
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1210, float %1218, float %1219)  ; FMad(a,b,c)
  %1221 = fmul fast float %1208, %1217
  %1222 = call float @dx.op.tertiary.f32(i32 46, float %1209, float %1218, float %1221)  ; FMad(a,b,c)
  %1223 = fadd fast float %1200, %1220
  %1224 = fadd fast float %1203, %1222
  %1225 = icmp ugt i32 %1174, 1
  %1226 = icmp ugt i32 %1172, 33554431
  %1227 = or i1 %1226, %1225
  br i1 %1227, label %1228, label %1253

; <label>:1228                                    ; preds = %1155
  %1229 = add i32 %62, 244
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = lshr i32 %1231, 16
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = fmul fast float %1196, %1233
  %1235 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1236 = mul nuw nsw i32 %1174, %1175
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1235, %1237
  %1239 = call float @dx.op.unary.f32(i32 27, float %1238)  ; Round_ni(value)
  %1240 = fptoui float %1239 to i32
  %1241 = urem i32 %1240, %1174
  %1242 = udiv i32 %1240, %1175
  %1243 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1244 = call float @dx.op.unary.f32(i32 22, float %1224)  ; Frc(value)
  %1245 = uitofp i32 %1241 to float
  %1246 = uitofp i32 %1242 to float
  %1247 = fadd fast float %1243, %1245
  %1248 = fadd fast float %1244, %1246
  %1249 = uitofp i32 %1174 to float
  %1250 = uitofp i32 %1175 to float
  %1251 = fdiv fast float %1247, %1249
  %1252 = fdiv fast float %1248, %1250
  br label %1253

; <label>:1253                                    ; preds = %1228, %1155
  %1254 = phi float [ %1251, %1228 ], [ %1223, %1155 ]
  %1255 = phi float [ %1252, %1228 ], [ %1224, %1155 ]
  %1256 = and i32 %1149, 16777216
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1367, label %1258

; <label>:1258                                    ; preds = %1253
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.CBufRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.CBufRet.f32 %1259, 2
  %1263 = fadd fast float %1260, %169
  %1264 = fadd fast float %1261, %170
  %1265 = fadd fast float %1262, %171
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = icmp eq i32 %63, 65535
  br i1 %1269, label %1364, label %1270

; <label>:1270                                    ; preds = %1258
  %1271 = lshr i32 %63, 1
  %1272 = shl i32 %1271, 2
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %63, 1
  %1276 = icmp ne i32 %1275, 0
  %1277 = lshr i32 %1274, 16
  %1278 = and i32 %1274, 65535
  %1279 = select i1 %1276, i32 %1277, i32 %1278
  %1280 = icmp eq i32 %1279, 65535
  br i1 %1280, label %1360, label %1281

; <label>:1281                                    ; preds = %1270
  %1282 = mul nuw nsw i32 %1279, 40
  %1283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = extractvalue %dx.types.ResRet.f32 %1283, 1
  %1286 = extractvalue %dx.types.ResRet.f32 %1283, 2
  %1287 = add nuw nsw i32 %1282, 12
  %1288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.ResRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.ResRet.f32 %1288, 2
  %1292 = add nuw nsw i32 %1282, 24
  %1293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = add nuw nsw i32 %1282, 36
  %1298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = fsub fast float %1263, %1284
  %1301 = fsub fast float %1264, %1285
  %1302 = fsub fast float %1265, %1286
  %1303 = fmul fast float %1299, %1300
  %1304 = fmul fast float %1299, %1301
  %1305 = fmul fast float %1299, %1302
  %1306 = call float @dx.op.unary.f32(i32 27, float %1303)  ; Round_ni(value)
  %1307 = call float @dx.op.unary.f32(i32 27, float %1304)  ; Round_ni(value)
  %1308 = call float @dx.op.unary.f32(i32 27, float %1305)  ; Round_ni(value)
  %1309 = fadd fast float %1306, 5.000000e-01
  %1310 = fadd fast float %1307, 5.000000e-01
  %1311 = fadd fast float %1308, 5.000000e-01
  %1312 = fmul fast float %1309, %1289
  %1313 = fmul fast float %1310, %1290
  %1314 = fmul fast float %1311, %1291
  %1315 = shl i32 %63, 2
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = add i32 %1317, 0
  %1319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1320 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1321 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1322 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1319, %dx.types.Handle %55, float %1320, float %1321, float %1322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  %1327 = fmul fast float %1324, 1.023000e+03
  %1328 = fmul fast float %1325, 1.023000e+03
  %1329 = fmul fast float %1326, 1.023000e+03
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = call float @dx.op.unary.f32(i32 27, float %1330)  ; Round_ni(value)
  %1334 = call float @dx.op.unary.f32(i32 27, float %1331)  ; Round_ni(value)
  %1335 = call float @dx.op.unary.f32(i32 27, float %1332)  ; Round_ni(value)
  %1336 = fsub fast float %1303, %1306
  %1337 = fsub fast float %1304, %1307
  %1338 = fsub fast float %1305, %1308
  %1339 = fmul fast float %1336, 7.500000e-01
  %1340 = fmul fast float %1337, 7.500000e-01
  %1341 = fmul fast float %1338, 7.500000e-01
  %1342 = fadd fast float %1306, 1.250000e-01
  %1343 = fadd fast float %1342, %1339
  %1344 = fadd fast float %1343, %1333
  %1345 = fadd fast float %1307, 1.250000e-01
  %1346 = fadd fast float %1345, %1340
  %1347 = fadd fast float %1346, %1334
  %1348 = fadd fast float %1308, 1.250000e-01
  %1349 = fadd fast float %1348, %1341
  %1350 = fadd fast float %1349, %1335
  %1351 = fmul fast float %1344, %1294
  %1352 = fmul fast float %1347, %1295
  %1353 = fmul fast float %1350, %1296
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = add i32 %1355, 0
  %1357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1357, %dx.types.Handle %53, float %1351, float %1352, float %1353, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  br label %1360

; <label>:1360                                    ; preds = %1281, %1270
  %1361 = phi float [ %1359, %1281 ], [ -1.000000e+00, %1270 ]
  %1362 = fadd fast float %1361, %1268
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  br label %1364

; <label>:1364                                    ; preds = %1360, %1258
  %1365 = phi float [ %1363, %1360 ], [ %1268, %1258 ]
  %1366 = fmul fast float %1365, %470
  br label %1367

; <label>:1367                                    ; preds = %1364, %1253
  %1368 = phi float [ %1366, %1364 ], [ %470, %1253 ]
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 256
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1419, label %1373

; <label>:1373                                    ; preds = %1367
  %1374 = add i32 %62, 428
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = add i32 %1376, 0
  %1378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1378, %dx.types.Handle %107, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = add i32 %62, 116
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = shl i32 %1383, 4
  %1385 = and i32 %1384, 32752
  %1386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1385)  ; LegacyF16ToF32(value)
  %1387 = lshr i32 %1383, 7
  %1388 = and i32 %1387, 32752
  %1389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1388)  ; LegacyF16ToF32(value)
  %1390 = fsub fast float 1.000000e+00, %1368
  %1391 = call float @dx.op.binary.f32(i32 35, float %1390, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1392 = bitcast float %1368 to i32
  %1393 = sitofp i32 %1392 to float
  %1394 = fadd fast float %1393, 0xC1CFBF8940000000
  %1395 = fmul fast float %1389, %1394
  %1396 = fadd fast float %1395, 0x41CFBF8940000000
  %1397 = fptosi float %1396 to i32
  %1398 = bitcast i32 %1397 to float
  %1399 = bitcast float %1391 to i32
  %1400 = sitofp i32 %1399 to float
  %1401 = fadd fast float %1400, 0xC1CFBF8940000000
  %1402 = fmul fast float %1401, %1389
  %1403 = fadd fast float %1402, 0x41CFBF8940000000
  %1404 = fptosi float %1403 to i32
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1398, %1386
  %1407 = fmul fast float %1405, %1386
  %1408 = fsub fast float %1391, %1406
  %1409 = fadd fast float %1407, %1391
  %1410 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1412 = fsub fast float %1380, %1410
  %1413 = fsub fast float %1411, %1410
  %1414 = bitcast float %1413 to i32
  %1415 = sub nsw i32 2129859010, %1414
  %1416 = bitcast i32 %1415 to float
  %1417 = fmul fast float %1416, %1412
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  br label %1419

; <label>:1419                                    ; preds = %1373, %1367
  %1420 = phi float [ %1418, %1373 ], [ %1368, %1367 ]
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 128
  %1424 = icmp eq i32 %1423, 0
  br i1 %1424, label %1441, label %1425

; <label>:1425                                    ; preds = %1419
  %1426 = add i32 %62, 412
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = add i32 %1428, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1430, %dx.types.Handle %107, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 524288
  %1436 = icmp ne i32 %1435, 0
  %1437 = fcmp fast ogt float %1432, 0x3FE0101020000000
  %1438 = select i1 %1437, float 1.000000e+00, float 0.000000e+00
  %1439 = select i1 %1436, float %1438, float %1432
  %1440 = fmul fast float %1439, %1420
  br label %1441

; <label>:1441                                    ; preds = %1425, %1419
  %1442 = phi float [ %1440, %1425 ], [ %1420, %1419 ]
  %1443 = fcmp fast ult float %1442, 0x3F70101020000000
  br i1 %1443, label %1986, label %1444

; <label>:1444                                    ; preds = %1441
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 16
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1647, label %1449

; <label>:1449                                    ; preds = %1444
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %62, 364
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = add i32 %1454, 0
  %1456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1456, %dx.types.Handle %106, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.ResRet.f32 %1457, 2
  %1461 = extractvalue %dx.types.ResRet.f32 %1457, 3
  %1462 = and i32 %1451, 255
  %1463 = uitofp i32 %1462 to float
  %1464 = lshr i32 %1451, 8
  %1465 = and i32 %1464, 255
  %1466 = uitofp i32 %1465 to float
  %1467 = fmul fast float %1461, %1463
  %1468 = fadd fast float %1467, %1466
  %1469 = fmul fast float %1468, 0x3F70101000000000
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = and i32 %1471, 512
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1482, label %1474

; <label>:1474                                    ; preds = %1449
  %1475 = add i32 %62, 444
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = add i32 %1477, 0
  %1479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1480 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1479, %dx.types.Handle %107, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  br label %1482

; <label>:1482                                    ; preds = %1474, %1449
  %1483 = phi float [ %1481, %1474 ], [ 1.000000e+00, %1449 ]
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 33554432
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1594, label %1488

; <label>:1488                                    ; preds = %1482
  %1489 = add i32 %62, 240
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = lshr i32 %1491, 16
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = add i32 %62, 244
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 65535
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = lshr i32 %1502, 24
  %1504 = uitofp i32 %1503 to float
  %1505 = fmul fast float %1504, 0x3F70101020000000
  %1506 = and i32 %1502, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = fmul fast float %1507, 0x3F70101020000000
  %1509 = lshr i32 %1502, 8
  %1510 = and i32 %1509, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1511, 0x3F70101020000000
  %1513 = lshr i32 %1502, 16
  %1514 = and i32 %1513, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = add i32 %62, 236
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = lshr i32 %1519, 24
  %1521 = uitofp i32 %1520 to float
  %1522 = fmul fast float %1521, 0x3F70101020000000
  %1523 = and i32 %1519, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = fmul fast float %1524, 0x3F70101020000000
  %1526 = lshr i32 %1519, 8
  %1527 = and i32 %1526, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = fmul fast float %1528, 0x3F70101020000000
  %1530 = lshr i32 %1519, 16
  %1531 = and i32 %1530, 255
  %1532 = uitofp i32 %1531 to float
  %1533 = fmul fast float %1532, 0x3F70101020000000
  %1534 = bitcast float %1458 to i32
  %1535 = ashr i32 %1534, 1
  %1536 = sub nsw i32 1597463174, %1535
  %1537 = bitcast i32 %1536 to float
  %1538 = fmul fast float %1458, 5.000000e-01
  %1539 = fmul fast float %1537, %1537
  %1540 = fmul fast float %1539, %1538
  %1541 = fsub fast float 1.500000e+00, %1540
  %1542 = fmul fast float %1537, %1458
  %1543 = fmul fast float %1542, %1541
  %1544 = bitcast float %1459 to i32
  %1545 = ashr i32 %1544, 1
  %1546 = sub nsw i32 1597463174, %1545
  %1547 = bitcast i32 %1546 to float
  %1548 = fmul fast float %1459, 5.000000e-01
  %1549 = fmul fast float %1547, %1547
  %1550 = fmul fast float %1549, %1548
  %1551 = fsub fast float 1.500000e+00, %1550
  %1552 = fmul fast float %1547, %1459
  %1553 = fmul fast float %1552, %1551
  %1554 = bitcast float %1460 to i32
  %1555 = ashr i32 %1554, 1
  %1556 = sub nsw i32 1597463174, %1555
  %1557 = bitcast i32 %1556 to float
  %1558 = fmul fast float %1460, 5.000000e-01
  %1559 = fmul fast float %1557, %1557
  %1560 = fmul fast float %1559, %1558
  %1561 = fsub fast float 1.500000e+00, %1560
  %1562 = fmul fast float %1557, %1460
  %1563 = fmul fast float %1562, %1561
  %1564 = fsub fast float %1543, %1525
  %1565 = fsub fast float %1553, %1529
  %1566 = fsub fast float %1563, %1533
  %1567 = fmul fast float %1564, %1493
  %1568 = fmul fast float %1565, %1495
  %1569 = fmul fast float %1566, %1500
  %1570 = fadd fast float %1567, %1508
  %1571 = fadd fast float %1568, %1512
  %1572 = fadd fast float %1569, %1516
  %1573 = call float @dx.op.unary.f32(i32 7, float %1570)  ; Saturate(value)
  %1574 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1575 = call float @dx.op.unary.f32(i32 7, float %1572)  ; Saturate(value)
  %1576 = fmul fast float %1573, %1573
  %1577 = fmul fast float %1574, %1574
  %1578 = fmul fast float %1575, %1575
  %1579 = fsub fast float %1576, %1458
  %1580 = fsub fast float %1577, %1459
  %1581 = fsub fast float %1578, %1460
  %1582 = fmul fast float %1579, %1483
  %1583 = fmul fast float %1580, %1483
  %1584 = fmul fast float %1581, %1483
  %1585 = fadd fast float %1582, %1458
  %1586 = fadd fast float %1583, %1459
  %1587 = fadd fast float %1584, %1460
  %1588 = fadd fast float %1505, %1469
  %1589 = fsub fast float %1588, %1522
  %1590 = call float @dx.op.unary.f32(i32 7, float %1589)  ; Saturate(value)
  %1591 = fsub fast float %1590, %1469
  %1592 = fmul fast float %1591, %1483
  %1593 = fadd fast float %1592, %1469
  br label %1647

; <label>:1594                                    ; preds = %1482
  %1595 = and i32 %1485, 134217728
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1631, label %1597

; <label>:1597                                    ; preds = %1594
  %1598 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %1599 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %1600 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %1601 = fadd fast float %1598, -5.000000e-01
  %1602 = fadd fast float %1599, -5.000000e-01
  %1603 = fadd fast float %1600, -5.000000e-01
  %1604 = fmul fast float %1601, %1483
  %1605 = fmul fast float %1602, %1483
  %1606 = fmul fast float %1603, %1483
  %1607 = fadd fast float %1604, 5.000000e-01
  %1608 = fadd fast float %1605, 5.000000e-01
  %1609 = fadd fast float %1606, 5.000000e-01
  %1610 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1611 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1612 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1613 = fmul fast float %1607, 2.000000e+00
  %1614 = fsub fast float 1.000000e+00, %1613
  %1615 = fmul fast float %1614, %1610
  %1616 = fadd fast float %1615, %1613
  %1617 = fmul fast float %1616, %1610
  %1618 = fmul fast float %1608, 2.000000e+00
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1611
  %1621 = fadd fast float %1620, %1618
  %1622 = fmul fast float %1621, %1611
  %1623 = fmul fast float %1609, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1612
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1612
  %1628 = fmul fast float %1617, %1617
  %1629 = fmul fast float %1622, %1622
  %1630 = fmul fast float %1627, %1627
  br label %1647

; <label>:1631                                    ; preds = %1594
  %1632 = fmul fast float %302, %302
  %1633 = fmul fast float %306, %306
  %1634 = fmul fast float %310, %310
  %1635 = fadd fast float %1632, -1.000000e+00
  %1636 = fadd fast float %1633, -1.000000e+00
  %1637 = fadd fast float %1634, -1.000000e+00
  %1638 = fmul fast float %1483, %1635
  %1639 = fmul fast float %1483, %1636
  %1640 = fmul fast float %1483, %1637
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fadd fast float %1639, 1.000000e+00
  %1643 = fadd fast float %1640, 1.000000e+00
  %1644 = fmul fast float %1641, %1458
  %1645 = fmul fast float %1642, %1459
  %1646 = fmul fast float %1643, %1460
  br label %1647

; <label>:1647                                    ; preds = %1631, %1597, %1488, %1444
  %1648 = phi float [ %1593, %1488 ], [ %1469, %1597 ], [ %1469, %1631 ], [ 0x3FA23C0BE0000000, %1444 ]
  %1649 = phi float [ %1585, %1488 ], [ %1628, %1597 ], [ %1644, %1631 ], [ 1.000000e+00, %1444 ]
  %1650 = phi float [ %1586, %1488 ], [ %1629, %1597 ], [ %1645, %1631 ], [ 1.000000e+00, %1444 ]
  %1651 = phi float [ %1587, %1488 ], [ %1630, %1597 ], [ %1646, %1631 ], [ 1.000000e+00, %1444 ]
  %1652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.i32 %1652, 1
  %1654 = and i32 %1653, 1
  %1655 = icmp ne i32 %1654, 0
  %1656 = add i32 %62, 356
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 32
  %1660 = icmp ne i32 %1659, 0
  %1661 = and i1 %1655, %1660
  %1662 = select i1 %1661, float 1.000000e+00, float %1649
  %1663 = select i1 %1661, float 0x3FD3333340000000, float %1650
  %1664 = select i1 %1661, float 0x3FD3333340000000, float %1651
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = and i32 %1666, 32
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1741, label %1669

; <label>:1669                                    ; preds = %1647
  %1670 = add i32 %62, 108
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = add i32 %62, 380
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = add i32 %1675, 0
  %1677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1677, %dx.types.Handle %106, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = extractvalue %dx.types.ResRet.f32 %1678, 3
  %1683 = and i32 %1672, 255
  %1684 = uitofp i32 %1683 to float
  %1685 = lshr i32 %1672, 8
  %1686 = and i32 %1685, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = lshr i32 %1672, 16
  %1689 = and i32 %1688, 255
  %1690 = uitofp i32 %1689 to float
  %1691 = fmul fast float %1690, 0x3F70101000000000
  %1692 = fmul fast float %1679, %1684
  %1693 = fadd fast float %1692, %1687
  %1694 = fmul fast float %1693, 0x3F70101000000000
  %1695 = fadd fast float %1680, -5.000000e-01
  %1696 = fadd fast float %1682, -5.000000e-01
  %1697 = fmul fast float %1695, %1691
  %1698 = fmul fast float %1696, %1691
  %1699 = fadd fast float %1697, 5.000000e-01
  %1700 = fadd fast float %1698, 5.000000e-01
  %1701 = fmul fast float %1699, 2.000000e+00
  %1702 = fadd fast float %1701, -1.000000e+00
  %1703 = fmul fast float %1700, 2.000000e+00
  %1704 = fadd fast float %1703, -1.000000e+00
  %1705 = fadd fast float %1702, %1704
  %1706 = fmul fast float %1705, 5.000000e-01
  %1707 = fsub fast float %1702, %1704
  %1708 = fmul fast float %1707, 5.000000e-01
  %1709 = call float @dx.op.unary.f32(i32 6, float %1706)  ; FAbs(value)
  %1710 = fsub fast float 1.000000e+00, %1709
  %1711 = call float @dx.op.unary.f32(i32 6, float %1708)  ; FAbs(value)
  %1712 = fsub fast float %1710, %1711
  %1713 = call float @dx.op.dot3.f32(i32 55, float %1706, float %1708, float %1712, float %1706, float %1708, float %1712)  ; Dot3(ax,ay,az,bx,by,bz)
  %1714 = call float @dx.op.unary.f32(i32 25, float %1713)  ; Rsqrt(value)
  %1715 = fmul fast float %1706, %1714
  %1716 = fmul fast float %1708, %1714
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = and i32 %1718, 67108864
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1737, label %1721

; <label>:1721                                    ; preds = %1669
  %1722 = add i32 %62, 296
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = and i32 %1724, 65535
  %1726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1725)  ; LegacyF16ToF32(value)
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = and i32 %1728, 65535
  %1730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1729)  ; LegacyF16ToF32(value)
  %1731 = lshr i32 %1724, 16
  %1732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1731)  ; LegacyF16ToF32(value)
  %1733 = fsub fast float %1694, %1732
  %1734 = fmul fast float %1733, %1726
  %1735 = fadd fast float %1734, %1730
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  br label %1737

; <label>:1737                                    ; preds = %1721, %1669
  %1738 = phi float [ %1736, %1721 ], [ %1694, %1669 ]
  %1739 = call float @dx.op.dot2.f32(i32 54, float %1715, float %1716, float %1158, float %1159)  ; Dot2(ax,ay,bx,by)
  %1740 = call float @dx.op.dot2.f32(i32 54, float %1715, float %1716, float %1160, float %1161)  ; Dot2(ax,ay,bx,by)
  br label %1741

; <label>:1741                                    ; preds = %1737, %1647
  %1742 = phi float [ %1738, %1737 ], [ 0x3FD6666660000000, %1647 ]
  %1743 = phi float [ %1739, %1737 ], [ 0.000000e+00, %1647 ]
  %1744 = phi float [ %1740, %1737 ], [ 0.000000e+00, %1647 ]
  %1745 = phi float [ %1681, %1737 ], [ 1.000000e+00, %1647 ]
  %1746 = add i32 %62, 176
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = lshr i32 %1748, 22
  %1750 = shl nuw nsw i32 %1749, 5
  %1751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1750)  ; LegacyF16ToF32(value)
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = and i32 %1753, 64
  %1755 = icmp eq i32 %1754, 0
  br i1 %1755, label %1789, label %1756

; <label>:1756                                    ; preds = %1741
  %1757 = add i32 %62, 396
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = add i32 %1759, 0
  %1761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 131072
  %1765 = icmp eq i32 %1764, 0
  %1766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1761, %dx.types.Handle %106, float %1254, float %1255, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1767 = extractvalue %dx.types.ResRet.f32 %1766, 0
  %1768 = extractvalue %dx.types.ResRet.f32 %1766, 1
  %1769 = extractvalue %dx.types.ResRet.f32 %1766, 2
  %1770 = fmul fast float %1767, %290
  %1771 = fmul fast float %1768, %293
  %1772 = fmul fast float %1769, %296
  br i1 %1765, label %1779, label %1773

; <label>:1773                                    ; preds = %1756
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 0
  %1776 = fmul fast float %1775, %1770
  %1777 = fmul fast float %1775, %1771
  %1778 = fmul fast float %1775, %1772
  br label %1779

; <label>:1779                                    ; preds = %1773, %1756
  %1780 = phi float [ %1776, %1773 ], [ %1770, %1756 ]
  %1781 = phi float [ %1777, %1773 ], [ %1771, %1756 ]
  %1782 = phi float [ %1778, %1773 ], [ %1772, %1756 ]
  %1783 = fmul fast float %1780, %1751
  %1784 = select i1 %231, float %1783, float %1780
  %1785 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1781, float %1782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1786 = select i1 %231, float 0.000000e+00, float %1780
  %1787 = select i1 %231, float %1785, float %1781
  %1788 = select i1 %231, float 0.000000e+00, float %1782
  br label %1789

; <label>:1789                                    ; preds = %1779, %1741
  %1790 = phi float [ %1786, %1779 ], [ 0.000000e+00, %1741 ]
  %1791 = phi float [ %1787, %1779 ], [ 0.000000e+00, %1741 ]
  %1792 = phi float [ %1788, %1779 ], [ 0.000000e+00, %1741 ]
  %1793 = add i32 %62, 112
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = and i32 %1795, 255
  %1797 = uitofp i32 %1796 to float
  %1798 = lshr i32 %1795, 8
  %1799 = and i32 %1798, 255
  %1800 = uitofp i32 %1799 to float
  %1801 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1802 = fmul fast float %1800, %1801
  %1803 = fadd fast float %1802, %1797
  %1804 = fmul fast float %1803, 0x3F70101020000000
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  br i1 %1146, label %1806, label %1814

; <label>:1806                                    ; preds = %1789
  %1807 = fsub fast float 1.000000e+00, %1442
  %1808 = fmul fast float %1807, %1134
  %1809 = fmul fast float %1807, %1135
  %1810 = fmul fast float %1807, %1136
  %1811 = fmul fast float %1807, %1137
  %1812 = fmul fast float %1807, %1138
  %1813 = fmul fast float %1807, %1139
  br label %1814

; <label>:1814                                    ; preds = %1806, %1789
  %1815 = phi float [ %1808, %1806 ], [ %1134, %1789 ]
  %1816 = phi float [ %1809, %1806 ], [ %1135, %1789 ]
  %1817 = phi float [ %1810, %1806 ], [ %1136, %1789 ]
  %1818 = phi float [ %1811, %1806 ], [ %1137, %1789 ]
  %1819 = phi float [ %1812, %1806 ], [ %1138, %1789 ]
  %1820 = phi float [ %1813, %1806 ], [ %1139, %1789 ]
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 3
  %1824 = icmp eq i32 %1823, 3
  br i1 %1824, label %1903, label %1825

; <label>:1825                                    ; preds = %1814
  %1826 = and i32 %1822, 16
  %1827 = icmp ne i32 %1826, 0
  %1828 = select i1 %1827, float %1442, float 0.000000e+00
  %1829 = icmp eq i32 %1823, 0
  br i1 %1829, label %1830, label %1858

; <label>:1830                                    ; preds = %1825
  %1831 = and i32 %1822, 64
  %1832 = icmp ne i32 %1831, 0
  %1833 = select i1 %1832, float %1442, float 0.000000e+00
  %1834 = fsub fast float %1662, %1815
  %1835 = fsub fast float %1663, %1816
  %1836 = fsub fast float %1664, %1817
  %1837 = fmul fast float %1828, %1834
  %1838 = fmul fast float %1828, %1835
  %1839 = fmul fast float %1828, %1836
  %1840 = fadd fast float %1837, %1815
  %1841 = fadd fast float %1838, %1816
  %1842 = fadd fast float %1839, %1817
  %1843 = fsub fast float %1648, %1140
  %1844 = fmul fast float %1828, %1843
  %1845 = fadd fast float %1844, %1140
  %1846 = fsub fast float %1790, %1818
  %1847 = fsub fast float %1791, %1819
  %1848 = fsub fast float %1792, %1820
  %1849 = fmul fast float %1833, %1846
  %1850 = fmul fast float %1833, %1847
  %1851 = fmul fast float %1833, %1848
  %1852 = fadd fast float %1849, %1818
  %1853 = fadd fast float %1850, %1819
  %1854 = fadd fast float %1851, %1820
  %1855 = fsub fast float %1805, %1144
  %1856 = fmul fast float %1828, %1855
  %1857 = fadd fast float %1856, %1144
  br label %1903

; <label>:1858                                    ; preds = %1825
  %1859 = icmp eq i32 %1823, 1
  br i1 %1859, label %1860, label %1873

; <label>:1860                                    ; preds = %1858
  %1861 = fadd fast float %1662, -1.000000e+00
  %1862 = fadd fast float %1663, -1.000000e+00
  %1863 = fadd fast float %1664, -1.000000e+00
  %1864 = fmul fast float %1828, %1861
  %1865 = fmul fast float %1828, %1862
  %1866 = fmul fast float %1828, %1863
  %1867 = fadd fast float %1864, 1.000000e+00
  %1868 = fadd fast float %1865, 1.000000e+00
  %1869 = fadd fast float %1866, 1.000000e+00
  %1870 = fmul fast float %1867, %1815
  %1871 = fmul fast float %1868, %1816
  %1872 = fmul fast float %1869, %1817
  br label %1903

; <label>:1873                                    ; preds = %1858
  %1874 = icmp eq i32 %1823, 2
  br i1 %1874, label %1875, label %1903

; <label>:1875                                    ; preds = %1873
  %1876 = call float @dx.op.unary.f32(i32 24, float %1662)  ; Sqrt(value)
  %1877 = call float @dx.op.unary.f32(i32 24, float %1663)  ; Sqrt(value)
  %1878 = call float @dx.op.unary.f32(i32 24, float %1664)  ; Sqrt(value)
  %1879 = fadd fast float %1876, -5.000000e-01
  %1880 = fadd fast float %1877, -5.000000e-01
  %1881 = fadd fast float %1878, -5.000000e-01
  %1882 = fmul fast float %1879, %1828
  %1883 = fmul fast float %1880, %1828
  %1884 = fmul fast float %1881, %1828
  %1885 = fadd fast float %1882, 5.000000e-01
  %1886 = fadd fast float %1883, 5.000000e-01
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = fmul fast float %1885, 2.000000e+00
  %1889 = fsub fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1889, %1815
  %1891 = fadd fast float %1890, %1888
  %1892 = fmul fast float %1891, %1815
  %1893 = fmul fast float %1886, 2.000000e+00
  %1894 = fsub fast float 1.000000e+00, %1893
  %1895 = fmul fast float %1894, %1816
  %1896 = fadd fast float %1895, %1893
  %1897 = fmul fast float %1896, %1816
  %1898 = fmul fast float %1887, 2.000000e+00
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fmul fast float %1899, %1817
  %1901 = fadd fast float %1900, %1898
  %1902 = fmul fast float %1901, %1817
  br label %1903

; <label>:1903                                    ; preds = %1875, %1873, %1860, %1830, %1814
  %1904 = phi float [ %1815, %1814 ], [ %1892, %1875 ], [ %1815, %1873 ], [ %1870, %1860 ], [ %1840, %1830 ]
  %1905 = phi float [ %1816, %1814 ], [ %1897, %1875 ], [ %1816, %1873 ], [ %1871, %1860 ], [ %1841, %1830 ]
  %1906 = phi float [ %1817, %1814 ], [ %1902, %1875 ], [ %1817, %1873 ], [ %1872, %1860 ], [ %1842, %1830 ]
  %1907 = phi float [ %1818, %1814 ], [ %1818, %1875 ], [ %1818, %1873 ], [ %1818, %1860 ], [ %1852, %1830 ]
  %1908 = phi float [ %1819, %1814 ], [ %1819, %1875 ], [ %1819, %1873 ], [ %1819, %1860 ], [ %1853, %1830 ]
  %1909 = phi float [ %1820, %1814 ], [ %1820, %1875 ], [ %1820, %1873 ], [ %1820, %1860 ], [ %1854, %1830 ]
  %1910 = phi float [ %1140, %1814 ], [ %1140, %1875 ], [ %1140, %1873 ], [ %1140, %1860 ], [ %1845, %1830 ]
  %1911 = phi float [ %1144, %1814 ], [ %1144, %1875 ], [ %1144, %1873 ], [ %1144, %1860 ], [ %1857, %1830 ]
  %1912 = and i32 %1822, 12
  %1913 = icmp eq i32 %1912, 12
  br i1 %1913, label %1986, label %1914

; <label>:1914                                    ; preds = %1903
  %1915 = and i32 %1822, 2097184
  %1916 = icmp eq i32 %1915, 2097184
  %1917 = select i1 %1916, float %1442, float 0.000000e+00
  %1918 = and i32 %1822, 4194336
  %1919 = icmp eq i32 %1918, 4194336
  %1920 = select i1 %1919, float %1442, float 0.000000e+00
  %1921 = and i32 %1822, 8388640
  %1922 = icmp eq i32 %1921, 8388640
  %1923 = select i1 %1922, float %1442, float 0.000000e+00
  %1924 = icmp eq i32 %1912, 0
  br i1 %1924, label %1925, label %1938

; <label>:1925                                    ; preds = %1914
  %1926 = fsub fast float %1743, %1132
  %1927 = fsub fast float %1744, %1133
  %1928 = fmul fast float %1917, %1926
  %1929 = fmul fast float %1917, %1927
  %1930 = fadd fast float %1928, %1132
  %1931 = fadd fast float %1929, %1133
  %1932 = fsub fast float %1745, %1143
  %1933 = fmul fast float %1920, %1932
  %1934 = fadd fast float %1933, %1143
  %1935 = fsub fast float %1742, %1142
  %1936 = fmul fast float %1923, %1935
  %1937 = fadd fast float %1936, %1142
  br label %1986

; <label>:1938                                    ; preds = %1914
  %1939 = icmp eq i32 %1912, 4
  br i1 %1939, label %1940, label %1972

; <label>:1940                                    ; preds = %1938
  %1941 = fmul fast float %1917, %1743
  %1942 = fmul fast float %1917, %1744
  %1943 = fadd fast float %1941, %1132
  %1944 = fadd fast float %1942, %1133
  %1945 = call float @dx.op.binary.f32(i32 36, float %1143, float %1745)  ; FMin(a,b)
  %1946 = fsub fast float %1945, %1143
  %1947 = fmul fast float %1946, %1920
  %1948 = fadd fast float %1947, %1143
  %1949 = fadd fast float %1742, %1142
  %1950 = fmul fast float %1949, 0x3FF337FAE0000000
  %1951 = fmul fast float %1142, %1142
  %1952 = fmul fast float %1742, %1742
  %1953 = fadd fast float %1952, %1951
  %1954 = fmul fast float %1953, 0x3FE5152B00000000
  %1955 = fmul fast float %1142, 0xBFCC1F85E0000000
  %1956 = fmul fast float %1955, %1742
  %1957 = fadd fast float %1956, 0xBFE1363700000000
  %1958 = fadd fast float %1957, %1950
  %1959 = fsub fast float %1958, %1954
  %1960 = fmul fast float %1949, 0x3FBA6F0D00000000
  %1961 = fmul fast float %1953, 0x3FD0432880000000
  %1962 = fmul fast float %1142, 0xBFEF110800000000
  %1963 = fmul fast float %1962, %1742
  %1964 = fadd fast float %1963, 1.000000e+00
  %1965 = fsub fast float %1964, %1960
  %1966 = fadd fast float %1965, %1961
  %1967 = fdiv fast float %1959, %1966
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fsub fast float %1968, %1142
  %1970 = fmul fast float %1969, %1923
  %1971 = fadd fast float %1970, %1142
  br label %1986

; <label>:1972                                    ; preds = %1938
  %1973 = icmp eq i32 %1912, 8
  br i1 %1973, label %1974, label %1986

; <label>:1974                                    ; preds = %1972
  %1975 = fmul fast float %1917, %1743
  %1976 = fmul fast float %1917, %1744
  %1977 = fadd fast float %1975, %1132
  %1978 = fadd fast float %1976, %1133
  %1979 = call float @dx.op.binary.f32(i32 36, float %1143, float %1745)  ; FMin(a,b)
  %1980 = fsub fast float %1979, %1143
  %1981 = fmul fast float %1980, %1920
  %1982 = fadd fast float %1981, %1143
  %1983 = fsub fast float %1742, %1142
  %1984 = fmul fast float %1923, %1983
  %1985 = fadd fast float %1984, %1142
  br label %1986

; <label>:1986                                    ; preds = %1974, %1972, %1940, %1925, %1903, %1441, %1145, %1131
  %1987 = phi float [ %1132, %1903 ], [ %1132, %1441 ], [ %1132, %1131 ], [ %1977, %1974 ], [ %1132, %1972 ], [ %1943, %1940 ], [ %1930, %1925 ], [ %1132, %1145 ]
  %1988 = phi float [ %1133, %1903 ], [ %1133, %1441 ], [ %1133, %1131 ], [ %1978, %1974 ], [ %1133, %1972 ], [ %1944, %1940 ], [ %1931, %1925 ], [ %1133, %1145 ]
  %1989 = phi float [ %1904, %1903 ], [ %1134, %1441 ], [ %1134, %1131 ], [ %1904, %1974 ], [ %1904, %1972 ], [ %1904, %1940 ], [ %1904, %1925 ], [ %1134, %1145 ]
  %1990 = phi float [ %1905, %1903 ], [ %1135, %1441 ], [ %1135, %1131 ], [ %1905, %1974 ], [ %1905, %1972 ], [ %1905, %1940 ], [ %1905, %1925 ], [ %1135, %1145 ]
  %1991 = phi float [ %1906, %1903 ], [ %1136, %1441 ], [ %1136, %1131 ], [ %1906, %1974 ], [ %1906, %1972 ], [ %1906, %1940 ], [ %1906, %1925 ], [ %1136, %1145 ]
  %1992 = phi float [ %1907, %1903 ], [ %1137, %1441 ], [ %1137, %1131 ], [ %1907, %1974 ], [ %1907, %1972 ], [ %1907, %1940 ], [ %1907, %1925 ], [ %1137, %1145 ]
  %1993 = phi float [ %1908, %1903 ], [ %1138, %1441 ], [ %1138, %1131 ], [ %1908, %1974 ], [ %1908, %1972 ], [ %1908, %1940 ], [ %1908, %1925 ], [ %1138, %1145 ]
  %1994 = phi float [ %1909, %1903 ], [ %1139, %1441 ], [ %1139, %1131 ], [ %1909, %1974 ], [ %1909, %1972 ], [ %1909, %1940 ], [ %1909, %1925 ], [ %1139, %1145 ]
  %1995 = phi float [ %1910, %1903 ], [ %1140, %1441 ], [ %1140, %1131 ], [ %1910, %1974 ], [ %1910, %1972 ], [ %1910, %1940 ], [ %1910, %1925 ], [ %1140, %1145 ]
  %1996 = phi float [ %1142, %1903 ], [ %1142, %1441 ], [ %1142, %1131 ], [ %1985, %1974 ], [ %1142, %1972 ], [ %1971, %1940 ], [ %1937, %1925 ], [ %1142, %1145 ]
  %1997 = phi float [ %1143, %1903 ], [ %1143, %1441 ], [ %1143, %1131 ], [ %1982, %1974 ], [ %1143, %1972 ], [ %1948, %1940 ], [ %1934, %1925 ], [ %1143, %1145 ]
  %1998 = phi float [ %1911, %1903 ], [ %1144, %1441 ], [ %1144, %1131 ], [ %1911, %1974 ], [ %1911, %1972 ], [ %1911, %1940 ], [ %1911, %1925 ], [ %1144, %1145 ]
  br i1 %417, label %2840, label %1999

; <label>:1999                                    ; preds = %1986
  %2000 = icmp ult i32 %473, 3
  %2001 = add i32 %62, 56
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = add i32 %62, 60
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = or i32 %2006, %2003
  %2008 = icmp eq i32 %2007, 0
  br i1 %2008, label %2840, label %2009

; <label>:2009                                    ; preds = %1999
  %2010 = and i32 %2003, 262144
  %2011 = icmp ne i32 %2010, 0
  %2012 = select i1 %2011, float %64, float 1.000000e+00
  %2013 = select i1 %2011, float %65, float 0.000000e+00
  %2014 = select i1 %2011, float %66, float 0.000000e+00
  %2015 = select i1 %2011, float %67, float 1.000000e+00
  %2016 = select i1 %2011, float %68, float %89
  %2017 = select i1 %2011, float %69, float %90
  %2018 = add i32 %62, 316
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = lshr i32 %2020, 16
  %2022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2021)  ; LegacyF16ToF32(value)
  %2023 = fmul fast float %2022, 0x3F50624DE0000000
  %2024 = add i32 %62, 120
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = lshr i32 %2026, 16
  %2028 = and i32 %2027, 255
  %2029 = lshr i32 %2026, 24
  %2030 = add i32 %62, 324
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = and i32 %2032, 65535
  %2034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2033)  ; LegacyF16ToF32(value)
  %2035 = lshr i32 %2032, 16
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = add i32 %62, 64
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = lshr i32 %2039, 22
  %2041 = shl nuw nsw i32 %2040, 5
  %2042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2041)  ; LegacyF16ToF32(value)
  %2043 = shl i32 %2039, 4
  %2044 = and i32 %2043, 32752
  %2045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2044)  ; LegacyF16ToF32(value)
  %2046 = lshr i32 %2039, 7
  %2047 = and i32 %2046, 32752
  %2048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2047)  ; LegacyF16ToF32(value)
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 3
  %2051 = fmul fast float %2050, 1.000000e+03
  %2052 = fmul fast float %367, %2051
  %2053 = call float @dx.op.unary.f32(i32 22, float %2052)  ; Frc(value)
  %2054 = fadd fast float %2053, %357
  %2055 = fmul fast float %368, %2051
  %2056 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2057 = fadd fast float %2056, %359
  %2058 = fmul fast float %2023, %2051
  %2059 = call float @dx.op.unary.f32(i32 22, float %2058)  ; Frc(value)
  %2060 = fmul fast float %2059, 0x401921FB60000000
  %2061 = fadd fast float %2060, %2042
  %2062 = call float @dx.op.unary.f32(i32 13, float %2061)  ; Sin(value)
  %2063 = call float @dx.op.unary.f32(i32 12, float %2061)  ; Cos(value)
  %2064 = fsub fast float -0.000000e+00, %2062
  %2065 = fadd fast float %2016, -5.000000e-01
  %2066 = fadd fast float %2017, -5.000000e-01
  %2067 = fmul fast float %2034, %2065
  %2068 = fmul fast float %2036, %2066
  %2069 = fadd fast float %2067, 5.000000e-01
  %2070 = fadd fast float %2068, 5.000000e-01
  %2071 = fmul fast float %2045, %2069
  %2072 = fmul fast float %2048, %2070
  %2073 = fmul fast float %2063, %2071
  %2074 = call float @dx.op.tertiary.f32(i32 46, float %2064, float %2072, float %2073)  ; FMad(a,b,c)
  %2075 = fmul fast float %2062, %2071
  %2076 = call float @dx.op.tertiary.f32(i32 46, float %2063, float %2072, float %2075)  ; FMad(a,b,c)
  %2077 = fadd fast float %2054, %2074
  %2078 = fadd fast float %2057, %2076
  %2079 = icmp ugt i32 %2028, 1
  %2080 = icmp ugt i32 %2026, 33554431
  %2081 = or i1 %2080, %2079
  br i1 %2081, label %2082, label %2107

; <label>:2082                                    ; preds = %2009
  %2083 = add i32 %62, 260
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = lshr i32 %2085, 16
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = fmul fast float %2050, %2087
  %2089 = call float @dx.op.unary.f32(i32 22, float %2088)  ; Frc(value)
  %2090 = mul nuw nsw i32 %2028, %2029
  %2091 = uitofp i32 %2090 to float
  %2092 = fmul fast float %2089, %2091
  %2093 = call float @dx.op.unary.f32(i32 27, float %2092)  ; Round_ni(value)
  %2094 = fptoui float %2093 to i32
  %2095 = urem i32 %2094, %2028
  %2096 = udiv i32 %2094, %2029
  %2097 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2098 = call float @dx.op.unary.f32(i32 22, float %2078)  ; Frc(value)
  %2099 = uitofp i32 %2095 to float
  %2100 = uitofp i32 %2096 to float
  %2101 = fadd fast float %2097, %2099
  %2102 = fadd fast float %2098, %2100
  %2103 = uitofp i32 %2028 to float
  %2104 = uitofp i32 %2029 to float
  %2105 = fdiv fast float %2101, %2103
  %2106 = fdiv fast float %2102, %2104
  br label %2107

; <label>:2107                                    ; preds = %2082, %2009
  %2108 = phi float [ %2105, %2082 ], [ %2077, %2009 ]
  %2109 = phi float [ %2106, %2082 ], [ %2078, %2009 ]
  %2110 = and i32 %2003, 16777216
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2221, label %2112

; <label>:2112                                    ; preds = %2107
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2116 = extractvalue %dx.types.CBufRet.f32 %2113, 2
  %2117 = fadd fast float %2114, %169
  %2118 = fadd fast float %2115, %170
  %2119 = fadd fast float %2116, %171
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 0
  %2122 = call float @dx.op.unary.f32(i32 7, float %2121)  ; Saturate(value)
  %2123 = icmp eq i32 %63, 65535
  br i1 %2123, label %2218, label %2124

; <label>:2124                                    ; preds = %2112
  %2125 = lshr i32 %63, 1
  %2126 = shl i32 %2125, 2
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = and i32 %63, 1
  %2130 = icmp ne i32 %2129, 0
  %2131 = lshr i32 %2128, 16
  %2132 = and i32 %2128, 65535
  %2133 = select i1 %2130, i32 %2131, i32 %2132
  %2134 = icmp eq i32 %2133, 65535
  br i1 %2134, label %2214, label %2135

; <label>:2135                                    ; preds = %2124
  %2136 = mul nuw nsw i32 %2133, 40
  %2137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.ResRet.f32 %2137, 1
  %2140 = extractvalue %dx.types.ResRet.f32 %2137, 2
  %2141 = add nuw nsw i32 %2136, 12
  %2142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.ResRet.f32 %2142, 1
  %2145 = extractvalue %dx.types.ResRet.f32 %2142, 2
  %2146 = add nuw nsw i32 %2136, 24
  %2147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.ResRet.f32 %2147, 1
  %2150 = extractvalue %dx.types.ResRet.f32 %2147, 2
  %2151 = add nuw nsw i32 %2136, 36
  %2152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = fsub fast float %2117, %2138
  %2155 = fsub fast float %2118, %2139
  %2156 = fsub fast float %2119, %2140
  %2157 = fmul fast float %2153, %2154
  %2158 = fmul fast float %2153, %2155
  %2159 = fmul fast float %2153, %2156
  %2160 = call float @dx.op.unary.f32(i32 27, float %2157)  ; Round_ni(value)
  %2161 = call float @dx.op.unary.f32(i32 27, float %2158)  ; Round_ni(value)
  %2162 = call float @dx.op.unary.f32(i32 27, float %2159)  ; Round_ni(value)
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = fadd fast float %2162, 5.000000e-01
  %2166 = fmul fast float %2163, %2143
  %2167 = fmul fast float %2164, %2144
  %2168 = fmul fast float %2165, %2145
  %2169 = shl i32 %63, 2
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = add i32 %2171, 0
  %2173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2174 = call float @dx.op.unary.f32(i32 22, float %2166)  ; Frc(value)
  %2175 = call float @dx.op.unary.f32(i32 22, float %2167)  ; Frc(value)
  %2176 = call float @dx.op.unary.f32(i32 22, float %2168)  ; Frc(value)
  %2177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2173, %dx.types.Handle %55, float %2174, float %2175, float %2176, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.ResRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.ResRet.f32 %2177, 2
  %2181 = fmul fast float %2178, 1.023000e+03
  %2182 = fmul fast float %2179, 1.023000e+03
  %2183 = fmul fast float %2180, 1.023000e+03
  %2184 = fadd fast float %2181, 5.000000e-01
  %2185 = fadd fast float %2182, 5.000000e-01
  %2186 = fadd fast float %2183, 5.000000e-01
  %2187 = call float @dx.op.unary.f32(i32 27, float %2184)  ; Round_ni(value)
  %2188 = call float @dx.op.unary.f32(i32 27, float %2185)  ; Round_ni(value)
  %2189 = call float @dx.op.unary.f32(i32 27, float %2186)  ; Round_ni(value)
  %2190 = fsub fast float %2157, %2160
  %2191 = fsub fast float %2158, %2161
  %2192 = fsub fast float %2159, %2162
  %2193 = fmul fast float %2190, 7.500000e-01
  %2194 = fmul fast float %2191, 7.500000e-01
  %2195 = fmul fast float %2192, 7.500000e-01
  %2196 = fadd fast float %2160, 1.250000e-01
  %2197 = fadd fast float %2196, %2193
  %2198 = fadd fast float %2197, %2187
  %2199 = fadd fast float %2161, 1.250000e-01
  %2200 = fadd fast float %2199, %2194
  %2201 = fadd fast float %2200, %2188
  %2202 = fadd fast float %2162, 1.250000e-01
  %2203 = fadd fast float %2202, %2195
  %2204 = fadd fast float %2203, %2189
  %2205 = fmul fast float %2198, %2148
  %2206 = fmul fast float %2201, %2149
  %2207 = fmul fast float %2204, %2150
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = add i32 %2209, 0
  %2211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2211, %dx.types.Handle %53, float %2205, float %2206, float %2207, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2213 = extractvalue %dx.types.ResRet.f32 %2212, 0
  br label %2214

; <label>:2214                                    ; preds = %2135, %2124
  %2215 = phi float [ %2213, %2135 ], [ -1.000000e+00, %2124 ]
  %2216 = fadd fast float %2215, %2122
  %2217 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  br label %2218

; <label>:2218                                    ; preds = %2214, %2112
  %2219 = phi float [ %2217, %2214 ], [ %2122, %2112 ]
  %2220 = fmul fast float %2219, %469
  br label %2221

; <label>:2221                                    ; preds = %2218, %2107
  %2222 = phi float [ %2220, %2218 ], [ %469, %2107 ]
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 256
  %2226 = icmp eq i32 %2225, 0
  br i1 %2226, label %2273, label %2227

; <label>:2227                                    ; preds = %2221
  %2228 = add i32 %62, 432
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %2230, 0
  %2232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2232, %dx.types.Handle %107, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2234 = extractvalue %dx.types.ResRet.f32 %2233, 0
  %2235 = add i32 %62, 132
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = shl i32 %2237, 4
  %2239 = and i32 %2238, 32752
  %2240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2239)  ; LegacyF16ToF32(value)
  %2241 = lshr i32 %2237, 7
  %2242 = and i32 %2241, 32752
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = fsub fast float 1.000000e+00, %2222
  %2245 = call float @dx.op.binary.f32(i32 35, float %2244, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2246 = bitcast float %2222 to i32
  %2247 = sitofp i32 %2246 to float
  %2248 = fadd fast float %2247, 0xC1CFBF8940000000
  %2249 = fmul fast float %2243, %2248
  %2250 = fadd fast float %2249, 0x41CFBF8940000000
  %2251 = fptosi float %2250 to i32
  %2252 = bitcast i32 %2251 to float
  %2253 = bitcast float %2245 to i32
  %2254 = sitofp i32 %2253 to float
  %2255 = fadd fast float %2254, 0xC1CFBF8940000000
  %2256 = fmul fast float %2255, %2243
  %2257 = fadd fast float %2256, 0x41CFBF8940000000
  %2258 = fptosi float %2257 to i32
  %2259 = bitcast i32 %2258 to float
  %2260 = fmul fast float %2252, %2240
  %2261 = fmul fast float %2259, %2240
  %2262 = fsub fast float %2245, %2260
  %2263 = fadd fast float %2261, %2245
  %2264 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2265 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2266 = fsub fast float %2234, %2264
  %2267 = fsub fast float %2265, %2264
  %2268 = bitcast float %2267 to i32
  %2269 = sub nsw i32 2129859010, %2268
  %2270 = bitcast i32 %2269 to float
  %2271 = fmul fast float %2270, %2266
  %2272 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  br label %2273

; <label>:2273                                    ; preds = %2227, %2221
  %2274 = phi float [ %2272, %2227 ], [ %2222, %2221 ]
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = and i32 %2276, 128
  %2278 = icmp eq i32 %2277, 0
  br i1 %2278, label %2295, label %2279

; <label>:2279                                    ; preds = %2273
  %2280 = add i32 %62, 416
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = add i32 %2282, 0
  %2284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2284, %dx.types.Handle %107, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = and i32 %2288, 524288
  %2290 = icmp ne i32 %2289, 0
  %2291 = fcmp fast ogt float %2286, 0x3FE0101020000000
  %2292 = select i1 %2291, float 1.000000e+00, float 0.000000e+00
  %2293 = select i1 %2290, float %2292, float %2286
  %2294 = fmul fast float %2293, %2274
  br label %2295

; <label>:2295                                    ; preds = %2279, %2273
  %2296 = phi float [ %2294, %2279 ], [ %2274, %2273 ]
  %2297 = fcmp fast ult float %2296, 0x3F70101020000000
  br i1 %2297, label %2840, label %2298

; <label>:2298                                    ; preds = %2295
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 16
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2501, label %2303

; <label>:2303                                    ; preds = %2298
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = add i32 %62, 368
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = add i32 %2308, 0
  %2310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2310, %dx.types.Handle %106, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = extractvalue %dx.types.ResRet.f32 %2311, 3
  %2316 = and i32 %2305, 255
  %2317 = uitofp i32 %2316 to float
  %2318 = lshr i32 %2305, 8
  %2319 = and i32 %2318, 255
  %2320 = uitofp i32 %2319 to float
  %2321 = fmul fast float %2315, %2317
  %2322 = fadd fast float %2321, %2320
  %2323 = fmul fast float %2322, 0x3F70101000000000
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 512
  %2327 = icmp eq i32 %2326, 0
  br i1 %2327, label %2336, label %2328

; <label>:2328                                    ; preds = %2303
  %2329 = add i32 %62, 448
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = add i32 %2331, 0
  %2333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2333, %dx.types.Handle %107, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  br label %2336

; <label>:2336                                    ; preds = %2328, %2303
  %2337 = phi float [ %2335, %2328 ], [ 1.000000e+00, %2303 ]
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 33554432
  %2341 = icmp eq i32 %2340, 0
  br i1 %2341, label %2448, label %2342

; <label>:2342                                    ; preds = %2336
  %2343 = add i32 %62, 256
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 65535
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = lshr i32 %2345, 16
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = add i32 %62, 260
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, 65535
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = lshr i32 %2356, 24
  %2358 = uitofp i32 %2357 to float
  %2359 = fmul fast float %2358, 0x3F70101020000000
  %2360 = and i32 %2356, 255
  %2361 = uitofp i32 %2360 to float
  %2362 = fmul fast float %2361, 0x3F70101020000000
  %2363 = lshr i32 %2356, 8
  %2364 = and i32 %2363, 255
  %2365 = uitofp i32 %2364 to float
  %2366 = fmul fast float %2365, 0x3F70101020000000
  %2367 = lshr i32 %2356, 16
  %2368 = and i32 %2367, 255
  %2369 = uitofp i32 %2368 to float
  %2370 = fmul fast float %2369, 0x3F70101020000000
  %2371 = add i32 %62, 252
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = lshr i32 %2373, 24
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101020000000
  %2377 = and i32 %2373, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = fmul fast float %2378, 0x3F70101020000000
  %2380 = lshr i32 %2373, 8
  %2381 = and i32 %2380, 255
  %2382 = uitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 0x3F70101020000000
  %2384 = lshr i32 %2373, 16
  %2385 = and i32 %2384, 255
  %2386 = uitofp i32 %2385 to float
  %2387 = fmul fast float %2386, 0x3F70101020000000
  %2388 = bitcast float %2312 to i32
  %2389 = ashr i32 %2388, 1
  %2390 = sub nsw i32 1597463174, %2389
  %2391 = bitcast i32 %2390 to float
  %2392 = fmul fast float %2312, 5.000000e-01
  %2393 = fmul fast float %2391, %2391
  %2394 = fmul fast float %2393, %2392
  %2395 = fsub fast float 1.500000e+00, %2394
  %2396 = fmul fast float %2391, %2312
  %2397 = fmul fast float %2396, %2395
  %2398 = bitcast float %2313 to i32
  %2399 = ashr i32 %2398, 1
  %2400 = sub nsw i32 1597463174, %2399
  %2401 = bitcast i32 %2400 to float
  %2402 = fmul fast float %2313, 5.000000e-01
  %2403 = fmul fast float %2401, %2401
  %2404 = fmul fast float %2403, %2402
  %2405 = fsub fast float 1.500000e+00, %2404
  %2406 = fmul fast float %2401, %2313
  %2407 = fmul fast float %2406, %2405
  %2408 = bitcast float %2314 to i32
  %2409 = ashr i32 %2408, 1
  %2410 = sub nsw i32 1597463174, %2409
  %2411 = bitcast i32 %2410 to float
  %2412 = fmul fast float %2314, 5.000000e-01
  %2413 = fmul fast float %2411, %2411
  %2414 = fmul fast float %2413, %2412
  %2415 = fsub fast float 1.500000e+00, %2414
  %2416 = fmul fast float %2411, %2314
  %2417 = fmul fast float %2416, %2415
  %2418 = fsub fast float %2397, %2379
  %2419 = fsub fast float %2407, %2383
  %2420 = fsub fast float %2417, %2387
  %2421 = fmul fast float %2418, %2347
  %2422 = fmul fast float %2419, %2349
  %2423 = fmul fast float %2420, %2354
  %2424 = fadd fast float %2421, %2362
  %2425 = fadd fast float %2422, %2366
  %2426 = fadd fast float %2423, %2370
  %2427 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2428 = call float @dx.op.unary.f32(i32 7, float %2425)  ; Saturate(value)
  %2429 = call float @dx.op.unary.f32(i32 7, float %2426)  ; Saturate(value)
  %2430 = fmul fast float %2427, %2427
  %2431 = fmul fast float %2428, %2428
  %2432 = fmul fast float %2429, %2429
  %2433 = fsub fast float %2430, %2312
  %2434 = fsub fast float %2431, %2313
  %2435 = fsub fast float %2432, %2314
  %2436 = fmul fast float %2433, %2337
  %2437 = fmul fast float %2434, %2337
  %2438 = fmul fast float %2435, %2337
  %2439 = fadd fast float %2436, %2312
  %2440 = fadd fast float %2437, %2313
  %2441 = fadd fast float %2438, %2314
  %2442 = fadd fast float %2359, %2323
  %2443 = fsub fast float %2442, %2376
  %2444 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  %2445 = fsub fast float %2444, %2323
  %2446 = fmul fast float %2445, %2337
  %2447 = fadd fast float %2446, %2323
  br label %2501

; <label>:2448                                    ; preds = %2336
  %2449 = and i32 %2339, 134217728
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2485, label %2451

; <label>:2451                                    ; preds = %2448
  %2452 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %2453 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %2454 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %2455 = fadd fast float %2452, -5.000000e-01
  %2456 = fadd fast float %2453, -5.000000e-01
  %2457 = fadd fast float %2454, -5.000000e-01
  %2458 = fmul fast float %2455, %2337
  %2459 = fmul fast float %2456, %2337
  %2460 = fmul fast float %2457, %2337
  %2461 = fadd fast float %2458, 5.000000e-01
  %2462 = fadd fast float %2459, 5.000000e-01
  %2463 = fadd fast float %2460, 5.000000e-01
  %2464 = call float @dx.op.unary.f32(i32 24, float %2312)  ; Sqrt(value)
  %2465 = call float @dx.op.unary.f32(i32 24, float %2313)  ; Sqrt(value)
  %2466 = call float @dx.op.unary.f32(i32 24, float %2314)  ; Sqrt(value)
  %2467 = fmul fast float %2461, 2.000000e+00
  %2468 = fsub fast float 1.000000e+00, %2467
  %2469 = fmul fast float %2468, %2464
  %2470 = fadd fast float %2469, %2467
  %2471 = fmul fast float %2470, %2464
  %2472 = fmul fast float %2462, 2.000000e+00
  %2473 = fsub fast float 1.000000e+00, %2472
  %2474 = fmul fast float %2473, %2465
  %2475 = fadd fast float %2474, %2472
  %2476 = fmul fast float %2475, %2465
  %2477 = fmul fast float %2463, 2.000000e+00
  %2478 = fsub fast float 1.000000e+00, %2477
  %2479 = fmul fast float %2478, %2466
  %2480 = fadd fast float %2479, %2477
  %2481 = fmul fast float %2480, %2466
  %2482 = fmul fast float %2471, %2471
  %2483 = fmul fast float %2476, %2476
  %2484 = fmul fast float %2481, %2481
  br label %2501

; <label>:2485                                    ; preds = %2448
  %2486 = fmul fast float %344, %344
  %2487 = fmul fast float %348, %348
  %2488 = fmul fast float %352, %352
  %2489 = fadd fast float %2486, -1.000000e+00
  %2490 = fadd fast float %2487, -1.000000e+00
  %2491 = fadd fast float %2488, -1.000000e+00
  %2492 = fmul fast float %2337, %2489
  %2493 = fmul fast float %2337, %2490
  %2494 = fmul fast float %2337, %2491
  %2495 = fadd fast float %2492, 1.000000e+00
  %2496 = fadd fast float %2493, 1.000000e+00
  %2497 = fadd fast float %2494, 1.000000e+00
  %2498 = fmul fast float %2495, %2312
  %2499 = fmul fast float %2496, %2313
  %2500 = fmul fast float %2497, %2314
  br label %2501

; <label>:2501                                    ; preds = %2485, %2451, %2342, %2298
  %2502 = phi float [ %2447, %2342 ], [ %2323, %2451 ], [ %2323, %2485 ], [ 0x3FA23C0BE0000000, %2298 ]
  %2503 = phi float [ %2439, %2342 ], [ %2482, %2451 ], [ %2498, %2485 ], [ 1.000000e+00, %2298 ]
  %2504 = phi float [ %2440, %2342 ], [ %2483, %2451 ], [ %2499, %2485 ], [ 1.000000e+00, %2298 ]
  %2505 = phi float [ %2441, %2342 ], [ %2484, %2451 ], [ %2500, %2485 ], [ 1.000000e+00, %2298 ]
  %2506 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.i32 %2506, 1
  %2508 = and i32 %2507, 1
  %2509 = icmp ne i32 %2508, 0
  %2510 = add i32 %62, 356
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 32
  %2514 = icmp ne i32 %2513, 0
  %2515 = and i1 %2509, %2514
  %2516 = select i1 %2515, float 1.000000e+00, float %2503
  %2517 = select i1 %2515, float 0x3FD3333340000000, float %2504
  %2518 = select i1 %2515, float 0x3FD3333340000000, float %2505
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = and i32 %2520, 32
  %2522 = icmp eq i32 %2521, 0
  br i1 %2522, label %2595, label %2523

; <label>:2523                                    ; preds = %2501
  %2524 = add i32 %62, 124
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = add i32 %62, 384
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = add i32 %2529, 0
  %2531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2531, %dx.types.Handle %106, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2534 = extractvalue %dx.types.ResRet.f32 %2532, 1
  %2535 = extractvalue %dx.types.ResRet.f32 %2532, 2
  %2536 = extractvalue %dx.types.ResRet.f32 %2532, 3
  %2537 = and i32 %2526, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = lshr i32 %2526, 8
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = lshr i32 %2526, 16
  %2543 = and i32 %2542, 255
  %2544 = uitofp i32 %2543 to float
  %2545 = fmul fast float %2544, 0x3F70101000000000
  %2546 = fmul fast float %2533, %2538
  %2547 = fadd fast float %2546, %2541
  %2548 = fmul fast float %2547, 0x3F70101000000000
  %2549 = fadd fast float %2534, -5.000000e-01
  %2550 = fadd fast float %2536, -5.000000e-01
  %2551 = fmul fast float %2549, %2545
  %2552 = fmul fast float %2550, %2545
  %2553 = fadd fast float %2551, 5.000000e-01
  %2554 = fadd fast float %2552, 5.000000e-01
  %2555 = fmul fast float %2553, 2.000000e+00
  %2556 = fadd fast float %2555, -1.000000e+00
  %2557 = fmul fast float %2554, 2.000000e+00
  %2558 = fadd fast float %2557, -1.000000e+00
  %2559 = fadd fast float %2556, %2558
  %2560 = fmul fast float %2559, 5.000000e-01
  %2561 = fsub fast float %2556, %2558
  %2562 = fmul fast float %2561, 5.000000e-01
  %2563 = call float @dx.op.unary.f32(i32 6, float %2560)  ; FAbs(value)
  %2564 = fsub fast float 1.000000e+00, %2563
  %2565 = call float @dx.op.unary.f32(i32 6, float %2562)  ; FAbs(value)
  %2566 = fsub fast float %2564, %2565
  %2567 = call float @dx.op.dot3.f32(i32 55, float %2560, float %2562, float %2566, float %2560, float %2562, float %2566)  ; Dot3(ax,ay,az,bx,by,bz)
  %2568 = call float @dx.op.unary.f32(i32 25, float %2567)  ; Rsqrt(value)
  %2569 = fmul fast float %2560, %2568
  %2570 = fmul fast float %2562, %2568
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 67108864
  %2574 = icmp eq i32 %2573, 0
  br i1 %2574, label %2591, label %2575

; <label>:2575                                    ; preds = %2523
  %2576 = add i32 %62, 312
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 65535
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 65535
  %2584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2583)  ; LegacyF16ToF32(value)
  %2585 = lshr i32 %2578, 16
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = fsub fast float %2548, %2586
  %2588 = fmul fast float %2587, %2580
  %2589 = fadd fast float %2588, %2584
  %2590 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  br label %2591

; <label>:2591                                    ; preds = %2575, %2523
  %2592 = phi float [ %2590, %2575 ], [ %2548, %2523 ]
  %2593 = call float @dx.op.dot2.f32(i32 54, float %2569, float %2570, float %2012, float %2013)  ; Dot2(ax,ay,bx,by)
  %2594 = call float @dx.op.dot2.f32(i32 54, float %2569, float %2570, float %2014, float %2015)  ; Dot2(ax,ay,bx,by)
  br label %2595

; <label>:2595                                    ; preds = %2591, %2501
  %2596 = phi float [ %2592, %2591 ], [ 0x3FD6666660000000, %2501 ]
  %2597 = phi float [ %2593, %2591 ], [ 0.000000e+00, %2501 ]
  %2598 = phi float [ %2594, %2591 ], [ 0.000000e+00, %2501 ]
  %2599 = phi float [ %2535, %2591 ], [ 1.000000e+00, %2501 ]
  %2600 = add i32 %62, 192
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = lshr i32 %2602, 22
  %2604 = shl nuw nsw i32 %2603, 5
  %2605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2604)  ; LegacyF16ToF32(value)
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 64
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2643, label %2610

; <label>:2610                                    ; preds = %2595
  %2611 = add i32 %62, 400
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = add i32 %2613, 0
  %2615 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2614, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 131072
  %2619 = icmp eq i32 %2618, 0
  %2620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2615, %dx.types.Handle %106, float %2108, float %2109, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2621 = extractvalue %dx.types.ResRet.f32 %2620, 0
  %2622 = extractvalue %dx.types.ResRet.f32 %2620, 1
  %2623 = extractvalue %dx.types.ResRet.f32 %2620, 2
  %2624 = fmul fast float %2621, %332
  %2625 = fmul fast float %2622, %335
  %2626 = fmul fast float %2623, %338
  br i1 %2619, label %2633, label %2627

; <label>:2627                                    ; preds = %2610
  %2628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.f32 %2628, 0
  %2630 = fmul fast float %2629, %2624
  %2631 = fmul fast float %2629, %2625
  %2632 = fmul fast float %2629, %2626
  br label %2633

; <label>:2633                                    ; preds = %2627, %2610
  %2634 = phi float [ %2630, %2627 ], [ %2624, %2610 ]
  %2635 = phi float [ %2631, %2627 ], [ %2625, %2610 ]
  %2636 = phi float [ %2632, %2627 ], [ %2626, %2610 ]
  %2637 = fmul fast float %2634, %2605
  %2638 = select i1 %231, float %2637, float %2634
  %2639 = call float @dx.op.dot3.f32(i32 55, float %2638, float %2635, float %2636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2640 = select i1 %231, float 0.000000e+00, float %2634
  %2641 = select i1 %231, float %2639, float %2635
  %2642 = select i1 %231, float 0.000000e+00, float %2636
  br label %2643

; <label>:2643                                    ; preds = %2633, %2595
  %2644 = phi float [ %2640, %2633 ], [ 0.000000e+00, %2595 ]
  %2645 = phi float [ %2641, %2633 ], [ 0.000000e+00, %2595 ]
  %2646 = phi float [ %2642, %2633 ], [ 0.000000e+00, %2595 ]
  %2647 = add i32 %62, 128
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = lshr i32 %2649, 8
  %2653 = and i32 %2652, 255
  %2654 = uitofp i32 %2653 to float
  %2655 = call float @dx.op.dot3.f32(i32 55, float %2516, float %2517, float %2518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2656 = fmul fast float %2654, %2655
  %2657 = fadd fast float %2656, %2651
  %2658 = fmul fast float %2657, 0x3F70101020000000
  %2659 = call float @dx.op.unary.f32(i32 7, float %2658)  ; Saturate(value)
  br i1 %2000, label %2660, label %2668

; <label>:2660                                    ; preds = %2643
  %2661 = fsub fast float 1.000000e+00, %2296
  %2662 = fmul fast float %2661, %1989
  %2663 = fmul fast float %2661, %1990
  %2664 = fmul fast float %2661, %1991
  %2665 = fmul fast float %2661, %1992
  %2666 = fmul fast float %2661, %1993
  %2667 = fmul fast float %2661, %1994
  br label %2668

; <label>:2668                                    ; preds = %2660, %2643
  %2669 = phi float [ %2662, %2660 ], [ %1989, %2643 ]
  %2670 = phi float [ %2663, %2660 ], [ %1990, %2643 ]
  %2671 = phi float [ %2664, %2660 ], [ %1991, %2643 ]
  %2672 = phi float [ %2665, %2660 ], [ %1992, %2643 ]
  %2673 = phi float [ %2666, %2660 ], [ %1993, %2643 ]
  %2674 = phi float [ %2667, %2660 ], [ %1994, %2643 ]
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = and i32 %2676, 3
  %2678 = icmp eq i32 %2677, 3
  br i1 %2678, label %2757, label %2679

; <label>:2679                                    ; preds = %2668
  %2680 = and i32 %2676, 16
  %2681 = icmp ne i32 %2680, 0
  %2682 = select i1 %2681, float %2296, float 0.000000e+00
  %2683 = icmp eq i32 %2677, 0
  br i1 %2683, label %2684, label %2712

; <label>:2684                                    ; preds = %2679
  %2685 = and i32 %2676, 64
  %2686 = icmp ne i32 %2685, 0
  %2687 = select i1 %2686, float %2296, float 0.000000e+00
  %2688 = fsub fast float %2516, %2669
  %2689 = fsub fast float %2517, %2670
  %2690 = fsub fast float %2518, %2671
  %2691 = fmul fast float %2682, %2688
  %2692 = fmul fast float %2682, %2689
  %2693 = fmul fast float %2682, %2690
  %2694 = fadd fast float %2691, %2669
  %2695 = fadd fast float %2692, %2670
  %2696 = fadd fast float %2693, %2671
  %2697 = fsub fast float %2502, %1995
  %2698 = fmul fast float %2682, %2697
  %2699 = fadd fast float %2698, %1995
  %2700 = fsub fast float %2644, %2672
  %2701 = fsub fast float %2645, %2673
  %2702 = fsub fast float %2646, %2674
  %2703 = fmul fast float %2687, %2700
  %2704 = fmul fast float %2687, %2701
  %2705 = fmul fast float %2687, %2702
  %2706 = fadd fast float %2703, %2672
  %2707 = fadd fast float %2704, %2673
  %2708 = fadd fast float %2705, %2674
  %2709 = fsub fast float %2659, %1998
  %2710 = fmul fast float %2682, %2709
  %2711 = fadd fast float %2710, %1998
  br label %2757

; <label>:2712                                    ; preds = %2679
  %2713 = icmp eq i32 %2677, 1
  br i1 %2713, label %2714, label %2727

; <label>:2714                                    ; preds = %2712
  %2715 = fadd fast float %2516, -1.000000e+00
  %2716 = fadd fast float %2517, -1.000000e+00
  %2717 = fadd fast float %2518, -1.000000e+00
  %2718 = fmul fast float %2682, %2715
  %2719 = fmul fast float %2682, %2716
  %2720 = fmul fast float %2682, %2717
  %2721 = fadd fast float %2718, 1.000000e+00
  %2722 = fadd fast float %2719, 1.000000e+00
  %2723 = fadd fast float %2720, 1.000000e+00
  %2724 = fmul fast float %2721, %2669
  %2725 = fmul fast float %2722, %2670
  %2726 = fmul fast float %2723, %2671
  br label %2757

; <label>:2727                                    ; preds = %2712
  %2728 = icmp eq i32 %2677, 2
  br i1 %2728, label %2729, label %2757

; <label>:2729                                    ; preds = %2727
  %2730 = call float @dx.op.unary.f32(i32 24, float %2516)  ; Sqrt(value)
  %2731 = call float @dx.op.unary.f32(i32 24, float %2517)  ; Sqrt(value)
  %2732 = call float @dx.op.unary.f32(i32 24, float %2518)  ; Sqrt(value)
  %2733 = fadd fast float %2730, -5.000000e-01
  %2734 = fadd fast float %2731, -5.000000e-01
  %2735 = fadd fast float %2732, -5.000000e-01
  %2736 = fmul fast float %2733, %2682
  %2737 = fmul fast float %2734, %2682
  %2738 = fmul fast float %2735, %2682
  %2739 = fadd fast float %2736, 5.000000e-01
  %2740 = fadd fast float %2737, 5.000000e-01
  %2741 = fadd fast float %2738, 5.000000e-01
  %2742 = fmul fast float %2739, 2.000000e+00
  %2743 = fsub fast float 1.000000e+00, %2742
  %2744 = fmul fast float %2743, %2669
  %2745 = fadd fast float %2744, %2742
  %2746 = fmul fast float %2745, %2669
  %2747 = fmul fast float %2740, 2.000000e+00
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2748, %2670
  %2750 = fadd fast float %2749, %2747
  %2751 = fmul fast float %2750, %2670
  %2752 = fmul fast float %2741, 2.000000e+00
  %2753 = fsub fast float 1.000000e+00, %2752
  %2754 = fmul fast float %2753, %2671
  %2755 = fadd fast float %2754, %2752
  %2756 = fmul fast float %2755, %2671
  br label %2757

; <label>:2757                                    ; preds = %2729, %2727, %2714, %2684, %2668
  %2758 = phi float [ %2669, %2668 ], [ %2746, %2729 ], [ %2669, %2727 ], [ %2724, %2714 ], [ %2694, %2684 ]
  %2759 = phi float [ %2670, %2668 ], [ %2751, %2729 ], [ %2670, %2727 ], [ %2725, %2714 ], [ %2695, %2684 ]
  %2760 = phi float [ %2671, %2668 ], [ %2756, %2729 ], [ %2671, %2727 ], [ %2726, %2714 ], [ %2696, %2684 ]
  %2761 = phi float [ %2672, %2668 ], [ %2672, %2729 ], [ %2672, %2727 ], [ %2672, %2714 ], [ %2706, %2684 ]
  %2762 = phi float [ %2673, %2668 ], [ %2673, %2729 ], [ %2673, %2727 ], [ %2673, %2714 ], [ %2707, %2684 ]
  %2763 = phi float [ %2674, %2668 ], [ %2674, %2729 ], [ %2674, %2727 ], [ %2674, %2714 ], [ %2708, %2684 ]
  %2764 = phi float [ %1995, %2668 ], [ %1995, %2729 ], [ %1995, %2727 ], [ %1995, %2714 ], [ %2699, %2684 ]
  %2765 = phi float [ %1998, %2668 ], [ %1998, %2729 ], [ %1998, %2727 ], [ %1998, %2714 ], [ %2711, %2684 ]
  %2766 = and i32 %2676, 12
  %2767 = icmp eq i32 %2766, 12
  br i1 %2767, label %2840, label %2768

; <label>:2768                                    ; preds = %2757
  %2769 = and i32 %2676, 2097184
  %2770 = icmp eq i32 %2769, 2097184
  %2771 = select i1 %2770, float %2296, float 0.000000e+00
  %2772 = and i32 %2676, 4194336
  %2773 = icmp eq i32 %2772, 4194336
  %2774 = select i1 %2773, float %2296, float 0.000000e+00
  %2775 = and i32 %2676, 8388640
  %2776 = icmp eq i32 %2775, 8388640
  %2777 = select i1 %2776, float %2296, float 0.000000e+00
  %2778 = icmp eq i32 %2766, 0
  br i1 %2778, label %2779, label %2792

; <label>:2779                                    ; preds = %2768
  %2780 = fsub fast float %2597, %1987
  %2781 = fsub fast float %2598, %1988
  %2782 = fmul fast float %2771, %2780
  %2783 = fmul fast float %2771, %2781
  %2784 = fadd fast float %2782, %1987
  %2785 = fadd fast float %2783, %1988
  %2786 = fsub fast float %2599, %1997
  %2787 = fmul fast float %2774, %2786
  %2788 = fadd fast float %2787, %1997
  %2789 = fsub fast float %2596, %1996
  %2790 = fmul fast float %2777, %2789
  %2791 = fadd fast float %2790, %1996
  br label %2840

; <label>:2792                                    ; preds = %2768
  %2793 = icmp eq i32 %2766, 4
  br i1 %2793, label %2794, label %2826

; <label>:2794                                    ; preds = %2792
  %2795 = fmul fast float %2771, %2597
  %2796 = fmul fast float %2771, %2598
  %2797 = fadd fast float %2795, %1987
  %2798 = fadd fast float %2796, %1988
  %2799 = call float @dx.op.binary.f32(i32 36, float %1997, float %2599)  ; FMin(a,b)
  %2800 = fsub fast float %2799, %1997
  %2801 = fmul fast float %2800, %2774
  %2802 = fadd fast float %2801, %1997
  %2803 = fadd fast float %2596, %1996
  %2804 = fmul fast float %2803, 0x3FF337FAE0000000
  %2805 = fmul fast float %1996, %1996
  %2806 = fmul fast float %2596, %2596
  %2807 = fadd fast float %2806, %2805
  %2808 = fmul fast float %2807, 0x3FE5152B00000000
  %2809 = fmul fast float %1996, 0xBFCC1F85E0000000
  %2810 = fmul fast float %2809, %2596
  %2811 = fadd fast float %2810, 0xBFE1363700000000
  %2812 = fadd fast float %2811, %2804
  %2813 = fsub fast float %2812, %2808
  %2814 = fmul fast float %2803, 0x3FBA6F0D00000000
  %2815 = fmul fast float %2807, 0x3FD0432880000000
  %2816 = fmul fast float %1996, 0xBFEF110800000000
  %2817 = fmul fast float %2816, %2596
  %2818 = fadd fast float %2817, 1.000000e+00
  %2819 = fsub fast float %2818, %2814
  %2820 = fadd fast float %2819, %2815
  %2821 = fdiv fast float %2813, %2820
  %2822 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2823 = fsub fast float %2822, %1996
  %2824 = fmul fast float %2823, %2777
  %2825 = fadd fast float %2824, %1996
  br label %2840

; <label>:2826                                    ; preds = %2792
  %2827 = icmp eq i32 %2766, 8
  br i1 %2827, label %2828, label %2840

; <label>:2828                                    ; preds = %2826
  %2829 = fmul fast float %2771, %2597
  %2830 = fmul fast float %2771, %2598
  %2831 = fadd fast float %2829, %1987
  %2832 = fadd fast float %2830, %1988
  %2833 = call float @dx.op.binary.f32(i32 36, float %1997, float %2599)  ; FMin(a,b)
  %2834 = fsub fast float %2833, %1997
  %2835 = fmul fast float %2834, %2774
  %2836 = fadd fast float %2835, %1997
  %2837 = fsub fast float %2596, %1996
  %2838 = fmul fast float %2777, %2837
  %2839 = fadd fast float %2838, %1996
  br label %2840

; <label>:2840                                    ; preds = %2828, %2826, %2794, %2779, %2757, %2295, %1999, %1986
  %2841 = phi float [ %1987, %2757 ], [ %1987, %2295 ], [ %1987, %1986 ], [ %2831, %2828 ], [ %1987, %2826 ], [ %2797, %2794 ], [ %2784, %2779 ], [ %1987, %1999 ]
  %2842 = phi float [ %1988, %2757 ], [ %1988, %2295 ], [ %1988, %1986 ], [ %2832, %2828 ], [ %1988, %2826 ], [ %2798, %2794 ], [ %2785, %2779 ], [ %1988, %1999 ]
  %2843 = phi float [ %2758, %2757 ], [ %1989, %2295 ], [ %1989, %1986 ], [ %2758, %2828 ], [ %2758, %2826 ], [ %2758, %2794 ], [ %2758, %2779 ], [ %1989, %1999 ]
  %2844 = phi float [ %2759, %2757 ], [ %1990, %2295 ], [ %1990, %1986 ], [ %2759, %2828 ], [ %2759, %2826 ], [ %2759, %2794 ], [ %2759, %2779 ], [ %1990, %1999 ]
  %2845 = phi float [ %2760, %2757 ], [ %1991, %2295 ], [ %1991, %1986 ], [ %2760, %2828 ], [ %2760, %2826 ], [ %2760, %2794 ], [ %2760, %2779 ], [ %1991, %1999 ]
  %2846 = phi float [ %2761, %2757 ], [ %1992, %2295 ], [ %1992, %1986 ], [ %2761, %2828 ], [ %2761, %2826 ], [ %2761, %2794 ], [ %2761, %2779 ], [ %1992, %1999 ]
  %2847 = phi float [ %2762, %2757 ], [ %1993, %2295 ], [ %1993, %1986 ], [ %2762, %2828 ], [ %2762, %2826 ], [ %2762, %2794 ], [ %2762, %2779 ], [ %1993, %1999 ]
  %2848 = phi float [ %2763, %2757 ], [ %1994, %2295 ], [ %1994, %1986 ], [ %2763, %2828 ], [ %2763, %2826 ], [ %2763, %2794 ], [ %2763, %2779 ], [ %1994, %1999 ]
  %2849 = phi float [ %2764, %2757 ], [ %1995, %2295 ], [ %1995, %1986 ], [ %2764, %2828 ], [ %2764, %2826 ], [ %2764, %2794 ], [ %2764, %2779 ], [ %1995, %1999 ]
  %2850 = phi float [ %1996, %2757 ], [ %1996, %2295 ], [ %1996, %1986 ], [ %2839, %2828 ], [ %1996, %2826 ], [ %2825, %2794 ], [ %2791, %2779 ], [ %1996, %1999 ]
  %2851 = phi float [ %1997, %2757 ], [ %1997, %2295 ], [ %1997, %1986 ], [ %2836, %2828 ], [ %1997, %2826 ], [ %2802, %2794 ], [ %2788, %2779 ], [ %1997, %1999 ]
  %2852 = phi float [ %2765, %2757 ], [ %1998, %2295 ], [ %1998, %1986 ], [ %2765, %2828 ], [ %2765, %2826 ], [ %2765, %2794 ], [ %2765, %2779 ], [ %1998, %1999 ]
  br i1 %419, label %3694, label %2853

; <label>:2853                                    ; preds = %2840
  %2854 = icmp ult i32 %473, 4
  %2855 = add i32 %62, 72
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = add i32 %62, 76
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = or i32 %2860, %2857
  %2862 = icmp eq i32 %2861, 0
  br i1 %2862, label %3694, label %2863

; <label>:2863                                    ; preds = %2853
  %2864 = and i32 %2857, 262144
  %2865 = icmp ne i32 %2864, 0
  %2866 = select i1 %2865, float %64, float 1.000000e+00
  %2867 = select i1 %2865, float %65, float 0.000000e+00
  %2868 = select i1 %2865, float %66, float 0.000000e+00
  %2869 = select i1 %2865, float %67, float 1.000000e+00
  %2870 = select i1 %2865, float %68, float %89
  %2871 = select i1 %2865, float %69, float %90
  %2872 = add i32 %62, 332
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = lshr i32 %2874, 16
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = fmul fast float %2876, 0x3F50624DE0000000
  %2878 = add i32 %62, 136
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = lshr i32 %2880, 16
  %2882 = and i32 %2881, 255
  %2883 = lshr i32 %2880, 24
  %2884 = add i32 %62, 340
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = and i32 %2886, 65535
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = lshr i32 %2886, 16
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = add i32 %62, 80
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = lshr i32 %2893, 22
  %2895 = shl nuw nsw i32 %2894, 5
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = shl i32 %2893, 4
  %2898 = and i32 %2897, 32752
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = lshr i32 %2893, 7
  %2901 = and i32 %2900, 32752
  %2902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2901)  ; LegacyF16ToF32(value)
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 3
  %2905 = fmul fast float %2904, 1.000000e+03
  %2906 = fmul fast float %409, %2905
  %2907 = call float @dx.op.unary.f32(i32 22, float %2906)  ; Frc(value)
  %2908 = fadd fast float %2907, %399
  %2909 = fmul fast float %410, %2905
  %2910 = call float @dx.op.unary.f32(i32 22, float %2909)  ; Frc(value)
  %2911 = fadd fast float %2910, %401
  %2912 = fmul fast float %2877, %2905
  %2913 = call float @dx.op.unary.f32(i32 22, float %2912)  ; Frc(value)
  %2914 = fmul fast float %2913, 0x401921FB60000000
  %2915 = fadd fast float %2914, %2896
  %2916 = call float @dx.op.unary.f32(i32 13, float %2915)  ; Sin(value)
  %2917 = call float @dx.op.unary.f32(i32 12, float %2915)  ; Cos(value)
  %2918 = fsub fast float -0.000000e+00, %2916
  %2919 = fadd fast float %2870, -5.000000e-01
  %2920 = fadd fast float %2871, -5.000000e-01
  %2921 = fmul fast float %2888, %2919
  %2922 = fmul fast float %2890, %2920
  %2923 = fadd fast float %2921, 5.000000e-01
  %2924 = fadd fast float %2922, 5.000000e-01
  %2925 = fmul fast float %2899, %2923
  %2926 = fmul fast float %2902, %2924
  %2927 = fmul fast float %2917, %2925
  %2928 = call float @dx.op.tertiary.f32(i32 46, float %2918, float %2926, float %2927)  ; FMad(a,b,c)
  %2929 = fmul fast float %2916, %2925
  %2930 = call float @dx.op.tertiary.f32(i32 46, float %2917, float %2926, float %2929)  ; FMad(a,b,c)
  %2931 = fadd fast float %2908, %2928
  %2932 = fadd fast float %2911, %2930
  %2933 = icmp ugt i32 %2882, 1
  %2934 = icmp ugt i32 %2880, 33554431
  %2935 = or i1 %2934, %2933
  br i1 %2935, label %2936, label %2961

; <label>:2936                                    ; preds = %2863
  %2937 = add i32 %62, 276
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = lshr i32 %2939, 16
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = fmul fast float %2904, %2941
  %2943 = call float @dx.op.unary.f32(i32 22, float %2942)  ; Frc(value)
  %2944 = mul nuw nsw i32 %2882, %2883
  %2945 = uitofp i32 %2944 to float
  %2946 = fmul fast float %2943, %2945
  %2947 = call float @dx.op.unary.f32(i32 27, float %2946)  ; Round_ni(value)
  %2948 = fptoui float %2947 to i32
  %2949 = urem i32 %2948, %2882
  %2950 = udiv i32 %2948, %2883
  %2951 = call float @dx.op.unary.f32(i32 22, float %2931)  ; Frc(value)
  %2952 = call float @dx.op.unary.f32(i32 22, float %2932)  ; Frc(value)
  %2953 = uitofp i32 %2949 to float
  %2954 = uitofp i32 %2950 to float
  %2955 = fadd fast float %2951, %2953
  %2956 = fadd fast float %2952, %2954
  %2957 = uitofp i32 %2882 to float
  %2958 = uitofp i32 %2883 to float
  %2959 = fdiv fast float %2955, %2957
  %2960 = fdiv fast float %2956, %2958
  br label %2961

; <label>:2961                                    ; preds = %2936, %2863
  %2962 = phi float [ %2959, %2936 ], [ %2931, %2863 ]
  %2963 = phi float [ %2960, %2936 ], [ %2932, %2863 ]
  %2964 = and i32 %2857, 16777216
  %2965 = icmp eq i32 %2964, 0
  br i1 %2965, label %3075, label %2966

; <label>:2966                                    ; preds = %2961
  %2967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.CBufRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.CBufRet.f32 %2967, 2
  %2971 = fadd fast float %2968, %169
  %2972 = fadd fast float %2969, %170
  %2973 = fadd fast float %2970, %171
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 0
  %2976 = call float @dx.op.unary.f32(i32 7, float %2975)  ; Saturate(value)
  %2977 = icmp eq i32 %63, 65535
  br i1 %2977, label %3072, label %2978

; <label>:2978                                    ; preds = %2966
  %2979 = lshr i32 %63, 1
  %2980 = shl i32 %2979, 2
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = and i32 %63, 1
  %2984 = icmp ne i32 %2983, 0
  %2985 = lshr i32 %2982, 16
  %2986 = and i32 %2982, 65535
  %2987 = select i1 %2984, i32 %2985, i32 %2986
  %2988 = icmp eq i32 %2987, 65535
  br i1 %2988, label %3068, label %2989

; <label>:2989                                    ; preds = %2978
  %2990 = mul nuw nsw i32 %2987, 40
  %2991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.ResRet.f32 %2991, 1
  %2994 = extractvalue %dx.types.ResRet.f32 %2991, 2
  %2995 = add nuw nsw i32 %2990, 12
  %2996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.f32 %2996, 0
  %2998 = extractvalue %dx.types.ResRet.f32 %2996, 1
  %2999 = extractvalue %dx.types.ResRet.f32 %2996, 2
  %3000 = add nuw nsw i32 %2990, 24
  %3001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.f32 %3001, 0
  %3003 = extractvalue %dx.types.ResRet.f32 %3001, 1
  %3004 = extractvalue %dx.types.ResRet.f32 %3001, 2
  %3005 = add nuw nsw i32 %2990, 36
  %3006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.f32 %3006, 0
  %3008 = fsub fast float %2971, %2992
  %3009 = fsub fast float %2972, %2993
  %3010 = fsub fast float %2973, %2994
  %3011 = fmul fast float %3007, %3008
  %3012 = fmul fast float %3007, %3009
  %3013 = fmul fast float %3007, %3010
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = fadd fast float %3015, 5.000000e-01
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = fmul fast float %3017, %2997
  %3021 = fmul fast float %3018, %2998
  %3022 = fmul fast float %3019, %2999
  %3023 = shl i32 %63, 2
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %3025, 0
  %3027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3028 = call float @dx.op.unary.f32(i32 22, float %3020)  ; Frc(value)
  %3029 = call float @dx.op.unary.f32(i32 22, float %3021)  ; Frc(value)
  %3030 = call float @dx.op.unary.f32(i32 22, float %3022)  ; Frc(value)
  %3031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3027, %dx.types.Handle %55, float %3028, float %3029, float %3030, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3035 = fmul fast float %3032, 1.023000e+03
  %3036 = fmul fast float %3033, 1.023000e+03
  %3037 = fmul fast float %3034, 1.023000e+03
  %3038 = fadd fast float %3035, 5.000000e-01
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = call float @dx.op.unary.f32(i32 27, float %3038)  ; Round_ni(value)
  %3042 = call float @dx.op.unary.f32(i32 27, float %3039)  ; Round_ni(value)
  %3043 = call float @dx.op.unary.f32(i32 27, float %3040)  ; Round_ni(value)
  %3044 = fsub fast float %3011, %3014
  %3045 = fsub fast float %3012, %3015
  %3046 = fsub fast float %3013, %3016
  %3047 = fmul fast float %3044, 7.500000e-01
  %3048 = fmul fast float %3045, 7.500000e-01
  %3049 = fmul fast float %3046, 7.500000e-01
  %3050 = fadd fast float %3014, 1.250000e-01
  %3051 = fadd fast float %3050, %3047
  %3052 = fadd fast float %3051, %3041
  %3053 = fadd fast float %3015, 1.250000e-01
  %3054 = fadd fast float %3053, %3048
  %3055 = fadd fast float %3054, %3042
  %3056 = fadd fast float %3016, 1.250000e-01
  %3057 = fadd fast float %3056, %3049
  %3058 = fadd fast float %3057, %3043
  %3059 = fmul fast float %3052, %3002
  %3060 = fmul fast float %3055, %3003
  %3061 = fmul fast float %3058, %3004
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = add i32 %3063, 0
  %3065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3065, %dx.types.Handle %53, float %3059, float %3060, float %3061, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 0
  br label %3068

; <label>:3068                                    ; preds = %2989, %2978
  %3069 = phi float [ %3067, %2989 ], [ -1.000000e+00, %2978 ]
  %3070 = fadd fast float %3069, %2976
  %3071 = call float @dx.op.unary.f32(i32 7, float %3070)  ; Saturate(value)
  br label %3072

; <label>:3072                                    ; preds = %3068, %2966
  %3073 = phi float [ %3071, %3068 ], [ %2976, %2966 ]
  %3074 = fmul fast float %3073, %468
  br label %3075

; <label>:3075                                    ; preds = %3072, %2961
  %3076 = phi float [ %3074, %3072 ], [ %468, %2961 ]
  %3077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3078 = extractvalue %dx.types.ResRet.i32 %3077, 0
  %3079 = and i32 %3078, 256
  %3080 = icmp eq i32 %3079, 0
  br i1 %3080, label %3127, label %3081

; <label>:3081                                    ; preds = %3075
  %3082 = add i32 %62, 436
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = add i32 %3084, 0
  %3086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3086, %dx.types.Handle %107, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3088 = extractvalue %dx.types.ResRet.f32 %3087, 0
  %3089 = add i32 %62, 148
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = shl i32 %3091, 4
  %3093 = and i32 %3092, 32752
  %3094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3093)  ; LegacyF16ToF32(value)
  %3095 = lshr i32 %3091, 7
  %3096 = and i32 %3095, 32752
  %3097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3096)  ; LegacyF16ToF32(value)
  %3098 = fsub fast float 1.000000e+00, %3076
  %3099 = call float @dx.op.binary.f32(i32 35, float %3098, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3100 = bitcast float %3076 to i32
  %3101 = sitofp i32 %3100 to float
  %3102 = fadd fast float %3101, 0xC1CFBF8940000000
  %3103 = fmul fast float %3097, %3102
  %3104 = fadd fast float %3103, 0x41CFBF8940000000
  %3105 = fptosi float %3104 to i32
  %3106 = bitcast i32 %3105 to float
  %3107 = bitcast float %3099 to i32
  %3108 = sitofp i32 %3107 to float
  %3109 = fadd fast float %3108, 0xC1CFBF8940000000
  %3110 = fmul fast float %3109, %3097
  %3111 = fadd fast float %3110, 0x41CFBF8940000000
  %3112 = fptosi float %3111 to i32
  %3113 = bitcast i32 %3112 to float
  %3114 = fmul fast float %3106, %3094
  %3115 = fmul fast float %3113, %3094
  %3116 = fsub fast float %3099, %3114
  %3117 = fadd fast float %3115, %3099
  %3118 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3119 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3120 = fsub fast float %3088, %3118
  %3121 = fsub fast float %3119, %3118
  %3122 = bitcast float %3121 to i32
  %3123 = sub nsw i32 2129859010, %3122
  %3124 = bitcast i32 %3123 to float
  %3125 = fmul fast float %3124, %3120
  %3126 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  br label %3127

; <label>:3127                                    ; preds = %3081, %3075
  %3128 = phi float [ %3126, %3081 ], [ %3076, %3075 ]
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = and i32 %3130, 128
  %3132 = icmp eq i32 %3131, 0
  br i1 %3132, label %3149, label %3133

; <label>:3133                                    ; preds = %3127
  %3134 = add i32 %62, 420
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = add i32 %3136, 0
  %3138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3138, %dx.types.Handle %107, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3140 = extractvalue %dx.types.ResRet.f32 %3139, 0
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = and i32 %3142, 524288
  %3144 = icmp ne i32 %3143, 0
  %3145 = fcmp fast ogt float %3140, 0x3FE0101020000000
  %3146 = select i1 %3145, float 1.000000e+00, float 0.000000e+00
  %3147 = select i1 %3144, float %3146, float %3140
  %3148 = fmul fast float %3147, %3128
  br label %3149

; <label>:3149                                    ; preds = %3133, %3127
  %3150 = phi float [ %3148, %3133 ], [ %3128, %3127 ]
  %3151 = fcmp fast ult float %3150, 0x3F70101020000000
  br i1 %3151, label %3694, label %3152

; <label>:3152                                    ; preds = %3149
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 16
  %3156 = icmp eq i32 %3155, 0
  br i1 %3156, label %3355, label %3157

; <label>:3157                                    ; preds = %3152
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = add i32 %62, 372
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = add i32 %3162, 0
  %3164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3164, %dx.types.Handle %106, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3166 = extractvalue %dx.types.ResRet.f32 %3165, 0
  %3167 = extractvalue %dx.types.ResRet.f32 %3165, 1
  %3168 = extractvalue %dx.types.ResRet.f32 %3165, 2
  %3169 = extractvalue %dx.types.ResRet.f32 %3165, 3
  %3170 = and i32 %3159, 255
  %3171 = uitofp i32 %3170 to float
  %3172 = lshr i32 %3159, 8
  %3173 = and i32 %3172, 255
  %3174 = uitofp i32 %3173 to float
  %3175 = fmul fast float %3169, %3171
  %3176 = fadd fast float %3175, %3174
  %3177 = fmul fast float %3176, 0x3F70101000000000
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 512
  %3181 = icmp eq i32 %3180, 0
  br i1 %3181, label %3190, label %3182

; <label>:3182                                    ; preds = %3157
  %3183 = add i32 %62, 452
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = add i32 %3185, 0
  %3187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3187, %dx.types.Handle %107, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 0
  br label %3190

; <label>:3190                                    ; preds = %3182, %3157
  %3191 = phi float [ %3189, %3182 ], [ 1.000000e+00, %3157 ]
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = and i32 %3193, 33554432
  %3195 = icmp eq i32 %3194, 0
  br i1 %3195, label %3302, label %3196

; <label>:3196                                    ; preds = %3190
  %3197 = add i32 %62, 272
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 65535
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = lshr i32 %3199, 16
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = add i32 %62, 276
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 65535
  %3208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3207)  ; LegacyF16ToF32(value)
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = lshr i32 %3210, 24
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = and i32 %3210, 255
  %3215 = uitofp i32 %3214 to float
  %3216 = fmul fast float %3215, 0x3F70101020000000
  %3217 = lshr i32 %3210, 8
  %3218 = and i32 %3217, 255
  %3219 = uitofp i32 %3218 to float
  %3220 = fmul fast float %3219, 0x3F70101020000000
  %3221 = lshr i32 %3210, 16
  %3222 = and i32 %3221, 255
  %3223 = uitofp i32 %3222 to float
  %3224 = fmul fast float %3223, 0x3F70101020000000
  %3225 = add i32 %62, 268
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = lshr i32 %3227, 24
  %3229 = uitofp i32 %3228 to float
  %3230 = fmul fast float %3229, 0x3F70101020000000
  %3231 = and i32 %3227, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = fmul fast float %3232, 0x3F70101020000000
  %3234 = lshr i32 %3227, 8
  %3235 = and i32 %3234, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = fmul fast float %3236, 0x3F70101020000000
  %3238 = lshr i32 %3227, 16
  %3239 = and i32 %3238, 255
  %3240 = uitofp i32 %3239 to float
  %3241 = fmul fast float %3240, 0x3F70101020000000
  %3242 = bitcast float %3166 to i32
  %3243 = ashr i32 %3242, 1
  %3244 = sub nsw i32 1597463174, %3243
  %3245 = bitcast i32 %3244 to float
  %3246 = fmul fast float %3166, 5.000000e-01
  %3247 = fmul fast float %3245, %3245
  %3248 = fmul fast float %3247, %3246
  %3249 = fsub fast float 1.500000e+00, %3248
  %3250 = fmul fast float %3245, %3166
  %3251 = fmul fast float %3250, %3249
  %3252 = bitcast float %3167 to i32
  %3253 = ashr i32 %3252, 1
  %3254 = sub nsw i32 1597463174, %3253
  %3255 = bitcast i32 %3254 to float
  %3256 = fmul fast float %3167, 5.000000e-01
  %3257 = fmul fast float %3255, %3255
  %3258 = fmul fast float %3257, %3256
  %3259 = fsub fast float 1.500000e+00, %3258
  %3260 = fmul fast float %3255, %3167
  %3261 = fmul fast float %3260, %3259
  %3262 = bitcast float %3168 to i32
  %3263 = ashr i32 %3262, 1
  %3264 = sub nsw i32 1597463174, %3263
  %3265 = bitcast i32 %3264 to float
  %3266 = fmul fast float %3168, 5.000000e-01
  %3267 = fmul fast float %3265, %3265
  %3268 = fmul fast float %3267, %3266
  %3269 = fsub fast float 1.500000e+00, %3268
  %3270 = fmul fast float %3265, %3168
  %3271 = fmul fast float %3270, %3269
  %3272 = fsub fast float %3251, %3233
  %3273 = fsub fast float %3261, %3237
  %3274 = fsub fast float %3271, %3241
  %3275 = fmul fast float %3272, %3201
  %3276 = fmul fast float %3273, %3203
  %3277 = fmul fast float %3274, %3208
  %3278 = fadd fast float %3275, %3216
  %3279 = fadd fast float %3276, %3220
  %3280 = fadd fast float %3277, %3224
  %3281 = call float @dx.op.unary.f32(i32 7, float %3278)  ; Saturate(value)
  %3282 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  %3283 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3284 = fmul fast float %3281, %3281
  %3285 = fmul fast float %3282, %3282
  %3286 = fmul fast float %3283, %3283
  %3287 = fsub fast float %3284, %3166
  %3288 = fsub fast float %3285, %3167
  %3289 = fsub fast float %3286, %3168
  %3290 = fmul fast float %3287, %3191
  %3291 = fmul fast float %3288, %3191
  %3292 = fmul fast float %3289, %3191
  %3293 = fadd fast float %3290, %3166
  %3294 = fadd fast float %3291, %3167
  %3295 = fadd fast float %3292, %3168
  %3296 = fadd fast float %3213, %3177
  %3297 = fsub fast float %3296, %3230
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3299 = fsub fast float %3298, %3177
  %3300 = fmul fast float %3299, %3191
  %3301 = fadd fast float %3300, %3177
  br label %3355

; <label>:3302                                    ; preds = %3190
  %3303 = and i32 %3193, 134217728
  %3304 = icmp eq i32 %3303, 0
  br i1 %3304, label %3339, label %3305

; <label>:3305                                    ; preds = %3302
  %3306 = call float @dx.op.unary.f32(i32 24, float %386)  ; Sqrt(value)
  %3307 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %3308 = call float @dx.op.unary.f32(i32 24, float %394)  ; Sqrt(value)
  %3309 = fadd fast float %3306, -5.000000e-01
  %3310 = fadd fast float %3307, -5.000000e-01
  %3311 = fadd fast float %3308, -5.000000e-01
  %3312 = fmul fast float %3309, %3191
  %3313 = fmul fast float %3310, %3191
  %3314 = fmul fast float %3311, %3191
  %3315 = fadd fast float %3312, 5.000000e-01
  %3316 = fadd fast float %3313, 5.000000e-01
  %3317 = fadd fast float %3314, 5.000000e-01
  %3318 = call float @dx.op.unary.f32(i32 24, float %3166)  ; Sqrt(value)
  %3319 = call float @dx.op.unary.f32(i32 24, float %3167)  ; Sqrt(value)
  %3320 = call float @dx.op.unary.f32(i32 24, float %3168)  ; Sqrt(value)
  %3321 = fmul fast float %3315, 2.000000e+00
  %3322 = fsub fast float 1.000000e+00, %3321
  %3323 = fmul fast float %3322, %3318
  %3324 = fadd fast float %3323, %3321
  %3325 = fmul fast float %3324, %3318
  %3326 = fmul fast float %3316, 2.000000e+00
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = fmul fast float %3327, %3319
  %3329 = fadd fast float %3328, %3326
  %3330 = fmul fast float %3329, %3319
  %3331 = fmul fast float %3317, 2.000000e+00
  %3332 = fsub fast float 1.000000e+00, %3331
  %3333 = fmul fast float %3332, %3320
  %3334 = fadd fast float %3333, %3331
  %3335 = fmul fast float %3334, %3320
  %3336 = fmul fast float %3325, %3325
  %3337 = fmul fast float %3330, %3330
  %3338 = fmul fast float %3335, %3335
  br label %3355

; <label>:3339                                    ; preds = %3302
  %3340 = fmul fast float %386, %386
  %3341 = fmul fast float %390, %390
  %3342 = fmul fast float %394, %394
  %3343 = fadd fast float %3340, -1.000000e+00
  %3344 = fadd fast float %3341, -1.000000e+00
  %3345 = fadd fast float %3342, -1.000000e+00
  %3346 = fmul fast float %3191, %3343
  %3347 = fmul fast float %3191, %3344
  %3348 = fmul fast float %3191, %3345
  %3349 = fadd fast float %3346, 1.000000e+00
  %3350 = fadd fast float %3347, 1.000000e+00
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fmul fast float %3349, %3166
  %3353 = fmul fast float %3350, %3167
  %3354 = fmul fast float %3351, %3168
  br label %3355

; <label>:3355                                    ; preds = %3339, %3305, %3196, %3152
  %3356 = phi float [ %3301, %3196 ], [ %3177, %3305 ], [ %3177, %3339 ], [ 0x3FA23C0BE0000000, %3152 ]
  %3357 = phi float [ %3293, %3196 ], [ %3336, %3305 ], [ %3352, %3339 ], [ 1.000000e+00, %3152 ]
  %3358 = phi float [ %3294, %3196 ], [ %3337, %3305 ], [ %3353, %3339 ], [ 1.000000e+00, %3152 ]
  %3359 = phi float [ %3295, %3196 ], [ %3338, %3305 ], [ %3354, %3339 ], [ 1.000000e+00, %3152 ]
  %3360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.i32 %3360, 1
  %3362 = and i32 %3361, 1
  %3363 = icmp ne i32 %3362, 0
  %3364 = add i32 %62, 356
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = and i32 %3366, 32
  %3368 = icmp ne i32 %3367, 0
  %3369 = and i1 %3363, %3368
  %3370 = select i1 %3369, float 1.000000e+00, float %3357
  %3371 = select i1 %3369, float 0x3FD3333340000000, float %3358
  %3372 = select i1 %3369, float 0x3FD3333340000000, float %3359
  %3373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3374 = extractvalue %dx.types.ResRet.i32 %3373, 0
  %3375 = and i32 %3374, 32
  %3376 = icmp eq i32 %3375, 0
  br i1 %3376, label %3449, label %3377

; <label>:3377                                    ; preds = %3355
  %3378 = add i32 %62, 140
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3378, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = add i32 %62, 388
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = add i32 %3383, 0
  %3385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3385, %dx.types.Handle %106, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3386, 2
  %3390 = extractvalue %dx.types.ResRet.f32 %3386, 3
  %3391 = and i32 %3380, 255
  %3392 = uitofp i32 %3391 to float
  %3393 = lshr i32 %3380, 8
  %3394 = and i32 %3393, 255
  %3395 = uitofp i32 %3394 to float
  %3396 = lshr i32 %3380, 16
  %3397 = and i32 %3396, 255
  %3398 = uitofp i32 %3397 to float
  %3399 = fmul fast float %3398, 0x3F70101000000000
  %3400 = fmul fast float %3387, %3392
  %3401 = fadd fast float %3400, %3395
  %3402 = fmul fast float %3401, 0x3F70101000000000
  %3403 = fadd fast float %3388, -5.000000e-01
  %3404 = fadd fast float %3390, -5.000000e-01
  %3405 = fmul fast float %3403, %3399
  %3406 = fmul fast float %3404, %3399
  %3407 = fadd fast float %3405, 5.000000e-01
  %3408 = fadd fast float %3406, 5.000000e-01
  %3409 = fmul fast float %3407, 2.000000e+00
  %3410 = fadd fast float %3409, -1.000000e+00
  %3411 = fmul fast float %3408, 2.000000e+00
  %3412 = fadd fast float %3411, -1.000000e+00
  %3413 = fadd fast float %3410, %3412
  %3414 = fmul fast float %3413, 5.000000e-01
  %3415 = fsub fast float %3410, %3412
  %3416 = fmul fast float %3415, 5.000000e-01
  %3417 = call float @dx.op.unary.f32(i32 6, float %3414)  ; FAbs(value)
  %3418 = fsub fast float 1.000000e+00, %3417
  %3419 = call float @dx.op.unary.f32(i32 6, float %3416)  ; FAbs(value)
  %3420 = fsub fast float %3418, %3419
  %3421 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3416, float %3420, float %3414, float %3416, float %3420)  ; Dot3(ax,ay,az,bx,by,bz)
  %3422 = call float @dx.op.unary.f32(i32 25, float %3421)  ; Rsqrt(value)
  %3423 = fmul fast float %3414, %3422
  %3424 = fmul fast float %3416, %3422
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = and i32 %3426, 67108864
  %3428 = icmp eq i32 %3427, 0
  br i1 %3428, label %3445, label %3429

; <label>:3429                                    ; preds = %3377
  %3430 = add i32 %62, 328
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 65535
  %3434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3433)  ; LegacyF16ToF32(value)
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = and i32 %3436, 65535
  %3438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3437)  ; LegacyF16ToF32(value)
  %3439 = lshr i32 %3432, 16
  %3440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3439)  ; LegacyF16ToF32(value)
  %3441 = fsub fast float %3402, %3440
  %3442 = fmul fast float %3441, %3434
  %3443 = fadd fast float %3442, %3438
  %3444 = call float @dx.op.unary.f32(i32 7, float %3443)  ; Saturate(value)
  br label %3445

; <label>:3445                                    ; preds = %3429, %3377
  %3446 = phi float [ %3444, %3429 ], [ %3402, %3377 ]
  %3447 = call float @dx.op.dot2.f32(i32 54, float %3423, float %3424, float %2866, float %2867)  ; Dot2(ax,ay,bx,by)
  %3448 = call float @dx.op.dot2.f32(i32 54, float %3423, float %3424, float %2868, float %2869)  ; Dot2(ax,ay,bx,by)
  br label %3449

; <label>:3449                                    ; preds = %3445, %3355
  %3450 = phi float [ %3446, %3445 ], [ 0x3FD6666660000000, %3355 ]
  %3451 = phi float [ %3447, %3445 ], [ 0.000000e+00, %3355 ]
  %3452 = phi float [ %3448, %3445 ], [ 0.000000e+00, %3355 ]
  %3453 = phi float [ %3389, %3445 ], [ 1.000000e+00, %3355 ]
  %3454 = add i32 %62, 208
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3454, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = lshr i32 %3456, 22
  %3458 = shl nuw nsw i32 %3457, 5
  %3459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3458)  ; LegacyF16ToF32(value)
  %3460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3461 = extractvalue %dx.types.ResRet.i32 %3460, 0
  %3462 = and i32 %3461, 64
  %3463 = icmp eq i32 %3462, 0
  br i1 %3463, label %3497, label %3464

; <label>:3464                                    ; preds = %3449
  %3465 = add i32 %62, 404
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = add i32 %3467, 0
  %3469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = and i32 %3471, 131072
  %3473 = icmp eq i32 %3472, 0
  %3474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3469, %dx.types.Handle %106, float %2962, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3478 = fmul fast float %3475, %374
  %3479 = fmul fast float %3476, %377
  %3480 = fmul fast float %3477, %380
  br i1 %3473, label %3487, label %3481

; <label>:3481                                    ; preds = %3464
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = fmul fast float %3483, %3478
  %3485 = fmul fast float %3483, %3479
  %3486 = fmul fast float %3483, %3480
  br label %3487

; <label>:3487                                    ; preds = %3481, %3464
  %3488 = phi float [ %3484, %3481 ], [ %3478, %3464 ]
  %3489 = phi float [ %3485, %3481 ], [ %3479, %3464 ]
  %3490 = phi float [ %3486, %3481 ], [ %3480, %3464 ]
  %3491 = fmul fast float %3488, %3459
  %3492 = select i1 %231, float %3491, float %3488
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3492, float %3489, float %3490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = select i1 %231, float 0.000000e+00, float %3488
  %3495 = select i1 %231, float %3493, float %3489
  %3496 = select i1 %231, float 0.000000e+00, float %3490
  br label %3497

; <label>:3497                                    ; preds = %3487, %3449
  %3498 = phi float [ %3494, %3487 ], [ 0.000000e+00, %3449 ]
  %3499 = phi float [ %3495, %3487 ], [ 0.000000e+00, %3449 ]
  %3500 = phi float [ %3496, %3487 ], [ 0.000000e+00, %3449 ]
  %3501 = add i32 %62, 144
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = and i32 %3503, 255
  %3505 = uitofp i32 %3504 to float
  %3506 = lshr i32 %3503, 8
  %3507 = and i32 %3506, 255
  %3508 = uitofp i32 %3507 to float
  %3509 = call float @dx.op.dot3.f32(i32 55, float %3370, float %3371, float %3372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3510 = fmul fast float %3508, %3509
  %3511 = fadd fast float %3510, %3505
  %3512 = fmul fast float %3511, 0x3F70101020000000
  %3513 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  br i1 %2854, label %3514, label %3522

; <label>:3514                                    ; preds = %3497
  %3515 = fsub fast float 1.000000e+00, %3150
  %3516 = fmul fast float %3515, %2843
  %3517 = fmul fast float %3515, %2844
  %3518 = fmul fast float %3515, %2845
  %3519 = fmul fast float %3515, %2846
  %3520 = fmul fast float %3515, %2847
  %3521 = fmul fast float %3515, %2848
  br label %3522

; <label>:3522                                    ; preds = %3514, %3497
  %3523 = phi float [ %3516, %3514 ], [ %2843, %3497 ]
  %3524 = phi float [ %3517, %3514 ], [ %2844, %3497 ]
  %3525 = phi float [ %3518, %3514 ], [ %2845, %3497 ]
  %3526 = phi float [ %3519, %3514 ], [ %2846, %3497 ]
  %3527 = phi float [ %3520, %3514 ], [ %2847, %3497 ]
  %3528 = phi float [ %3521, %3514 ], [ %2848, %3497 ]
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = and i32 %3530, 3
  %3532 = icmp eq i32 %3531, 3
  br i1 %3532, label %3611, label %3533

; <label>:3533                                    ; preds = %3522
  %3534 = and i32 %3530, 16
  %3535 = icmp ne i32 %3534, 0
  %3536 = select i1 %3535, float %3150, float 0.000000e+00
  %3537 = icmp eq i32 %3531, 0
  br i1 %3537, label %3538, label %3566

; <label>:3538                                    ; preds = %3533
  %3539 = and i32 %3530, 64
  %3540 = icmp ne i32 %3539, 0
  %3541 = select i1 %3540, float %3150, float 0.000000e+00
  %3542 = fsub fast float %3370, %3523
  %3543 = fsub fast float %3371, %3524
  %3544 = fsub fast float %3372, %3525
  %3545 = fmul fast float %3536, %3542
  %3546 = fmul fast float %3536, %3543
  %3547 = fmul fast float %3536, %3544
  %3548 = fadd fast float %3545, %3523
  %3549 = fadd fast float %3546, %3524
  %3550 = fadd fast float %3547, %3525
  %3551 = fsub fast float %3356, %2849
  %3552 = fmul fast float %3536, %3551
  %3553 = fadd fast float %3552, %2849
  %3554 = fsub fast float %3498, %3526
  %3555 = fsub fast float %3499, %3527
  %3556 = fsub fast float %3500, %3528
  %3557 = fmul fast float %3541, %3554
  %3558 = fmul fast float %3541, %3555
  %3559 = fmul fast float %3541, %3556
  %3560 = fadd fast float %3557, %3526
  %3561 = fadd fast float %3558, %3527
  %3562 = fadd fast float %3559, %3528
  %3563 = fsub fast float %3513, %2852
  %3564 = fmul fast float %3536, %3563
  %3565 = fadd fast float %3564, %2852
  br label %3611

; <label>:3566                                    ; preds = %3533
  %3567 = icmp eq i32 %3531, 1
  br i1 %3567, label %3568, label %3581

; <label>:3568                                    ; preds = %3566
  %3569 = fadd fast float %3370, -1.000000e+00
  %3570 = fadd fast float %3371, -1.000000e+00
  %3571 = fadd fast float %3372, -1.000000e+00
  %3572 = fmul fast float %3536, %3569
  %3573 = fmul fast float %3536, %3570
  %3574 = fmul fast float %3536, %3571
  %3575 = fadd fast float %3572, 1.000000e+00
  %3576 = fadd fast float %3573, 1.000000e+00
  %3577 = fadd fast float %3574, 1.000000e+00
  %3578 = fmul fast float %3575, %3523
  %3579 = fmul fast float %3576, %3524
  %3580 = fmul fast float %3577, %3525
  br label %3611

; <label>:3581                                    ; preds = %3566
  %3582 = icmp eq i32 %3531, 2
  br i1 %3582, label %3583, label %3611

; <label>:3583                                    ; preds = %3581
  %3584 = call float @dx.op.unary.f32(i32 24, float %3370)  ; Sqrt(value)
  %3585 = call float @dx.op.unary.f32(i32 24, float %3371)  ; Sqrt(value)
  %3586 = call float @dx.op.unary.f32(i32 24, float %3372)  ; Sqrt(value)
  %3587 = fadd fast float %3584, -5.000000e-01
  %3588 = fadd fast float %3585, -5.000000e-01
  %3589 = fadd fast float %3586, -5.000000e-01
  %3590 = fmul fast float %3587, %3536
  %3591 = fmul fast float %3588, %3536
  %3592 = fmul fast float %3589, %3536
  %3593 = fadd fast float %3590, 5.000000e-01
  %3594 = fadd fast float %3591, 5.000000e-01
  %3595 = fadd fast float %3592, 5.000000e-01
  %3596 = fmul fast float %3593, 2.000000e+00
  %3597 = fsub fast float 1.000000e+00, %3596
  %3598 = fmul fast float %3597, %3523
  %3599 = fadd fast float %3598, %3596
  %3600 = fmul fast float %3599, %3523
  %3601 = fmul fast float %3594, 2.000000e+00
  %3602 = fsub fast float 1.000000e+00, %3601
  %3603 = fmul fast float %3602, %3524
  %3604 = fadd fast float %3603, %3601
  %3605 = fmul fast float %3604, %3524
  %3606 = fmul fast float %3595, 2.000000e+00
  %3607 = fsub fast float 1.000000e+00, %3606
  %3608 = fmul fast float %3607, %3525
  %3609 = fadd fast float %3608, %3606
  %3610 = fmul fast float %3609, %3525
  br label %3611

; <label>:3611                                    ; preds = %3583, %3581, %3568, %3538, %3522
  %3612 = phi float [ %3523, %3522 ], [ %3600, %3583 ], [ %3523, %3581 ], [ %3578, %3568 ], [ %3548, %3538 ]
  %3613 = phi float [ %3524, %3522 ], [ %3605, %3583 ], [ %3524, %3581 ], [ %3579, %3568 ], [ %3549, %3538 ]
  %3614 = phi float [ %3525, %3522 ], [ %3610, %3583 ], [ %3525, %3581 ], [ %3580, %3568 ], [ %3550, %3538 ]
  %3615 = phi float [ %3526, %3522 ], [ %3526, %3583 ], [ %3526, %3581 ], [ %3526, %3568 ], [ %3560, %3538 ]
  %3616 = phi float [ %3527, %3522 ], [ %3527, %3583 ], [ %3527, %3581 ], [ %3527, %3568 ], [ %3561, %3538 ]
  %3617 = phi float [ %3528, %3522 ], [ %3528, %3583 ], [ %3528, %3581 ], [ %3528, %3568 ], [ %3562, %3538 ]
  %3618 = phi float [ %2849, %3522 ], [ %2849, %3583 ], [ %2849, %3581 ], [ %2849, %3568 ], [ %3553, %3538 ]
  %3619 = phi float [ %2852, %3522 ], [ %2852, %3583 ], [ %2852, %3581 ], [ %2852, %3568 ], [ %3565, %3538 ]
  %3620 = and i32 %3530, 12
  %3621 = icmp eq i32 %3620, 12
  br i1 %3621, label %3694, label %3622

; <label>:3622                                    ; preds = %3611
  %3623 = and i32 %3530, 2097184
  %3624 = icmp eq i32 %3623, 2097184
  %3625 = select i1 %3624, float %3150, float 0.000000e+00
  %3626 = and i32 %3530, 4194336
  %3627 = icmp eq i32 %3626, 4194336
  %3628 = select i1 %3627, float %3150, float 0.000000e+00
  %3629 = and i32 %3530, 8388640
  %3630 = icmp eq i32 %3629, 8388640
  %3631 = select i1 %3630, float %3150, float 0.000000e+00
  %3632 = icmp eq i32 %3620, 0
  br i1 %3632, label %3633, label %3646

; <label>:3633                                    ; preds = %3622
  %3634 = fsub fast float %3451, %2841
  %3635 = fsub fast float %3452, %2842
  %3636 = fmul fast float %3625, %3634
  %3637 = fmul fast float %3625, %3635
  %3638 = fadd fast float %3636, %2841
  %3639 = fadd fast float %3637, %2842
  %3640 = fsub fast float %3453, %2851
  %3641 = fmul fast float %3628, %3640
  %3642 = fadd fast float %3641, %2851
  %3643 = fsub fast float %3450, %2850
  %3644 = fmul fast float %3631, %3643
  %3645 = fadd fast float %3644, %2850
  br label %3694

; <label>:3646                                    ; preds = %3622
  %3647 = icmp eq i32 %3620, 4
  br i1 %3647, label %3648, label %3680

; <label>:3648                                    ; preds = %3646
  %3649 = fmul fast float %3625, %3451
  %3650 = fmul fast float %3625, %3452
  %3651 = fadd fast float %3649, %2841
  %3652 = fadd fast float %3650, %2842
  %3653 = call float @dx.op.binary.f32(i32 36, float %2851, float %3453)  ; FMin(a,b)
  %3654 = fsub fast float %3653, %2851
  %3655 = fmul fast float %3654, %3628
  %3656 = fadd fast float %3655, %2851
  %3657 = fadd fast float %3450, %2850
  %3658 = fmul fast float %3657, 0x3FF337FAE0000000
  %3659 = fmul fast float %2850, %2850
  %3660 = fmul fast float %3450, %3450
  %3661 = fadd fast float %3660, %3659
  %3662 = fmul fast float %3661, 0x3FE5152B00000000
  %3663 = fmul fast float %2850, 0xBFCC1F85E0000000
  %3664 = fmul fast float %3663, %3450
  %3665 = fadd fast float %3664, 0xBFE1363700000000
  %3666 = fadd fast float %3665, %3658
  %3667 = fsub fast float %3666, %3662
  %3668 = fmul fast float %3657, 0x3FBA6F0D00000000
  %3669 = fmul fast float %3661, 0x3FD0432880000000
  %3670 = fmul fast float %2850, 0xBFEF110800000000
  %3671 = fmul fast float %3670, %3450
  %3672 = fadd fast float %3671, 1.000000e+00
  %3673 = fsub fast float %3672, %3668
  %3674 = fadd fast float %3673, %3669
  %3675 = fdiv fast float %3667, %3674
  %3676 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3677 = fsub fast float %3676, %2850
  %3678 = fmul fast float %3677, %3631
  %3679 = fadd fast float %3678, %2850
  br label %3694

; <label>:3680                                    ; preds = %3646
  %3681 = icmp eq i32 %3620, 8
  br i1 %3681, label %3682, label %3694

; <label>:3682                                    ; preds = %3680
  %3683 = fmul fast float %3625, %3451
  %3684 = fmul fast float %3625, %3452
  %3685 = fadd fast float %3683, %2841
  %3686 = fadd fast float %3684, %2842
  %3687 = call float @dx.op.binary.f32(i32 36, float %2851, float %3453)  ; FMin(a,b)
  %3688 = fsub fast float %3687, %2851
  %3689 = fmul fast float %3688, %3628
  %3690 = fadd fast float %3689, %2851
  %3691 = fsub fast float %3450, %2850
  %3692 = fmul fast float %3631, %3691
  %3693 = fadd fast float %3692, %2850
  br label %3694

; <label>:3694                                    ; preds = %3682, %3680, %3648, %3633, %3611, %3149, %2853, %2840
  %3695 = phi float [ %2841, %3611 ], [ %2841, %3149 ], [ %2841, %2840 ], [ %2841, %2853 ], [ %3638, %3633 ], [ %3651, %3648 ], [ %2841, %3680 ], [ %3685, %3682 ]
  %3696 = phi float [ %2842, %3611 ], [ %2842, %3149 ], [ %2842, %2840 ], [ %2842, %2853 ], [ %3639, %3633 ], [ %3652, %3648 ], [ %2842, %3680 ], [ %3686, %3682 ]
  %3697 = phi float [ %3612, %3611 ], [ %2843, %3149 ], [ %2843, %2840 ], [ %2843, %2853 ], [ %3612, %3633 ], [ %3612, %3648 ], [ %3612, %3680 ], [ %3612, %3682 ]
  %3698 = phi float [ %3613, %3611 ], [ %2844, %3149 ], [ %2844, %2840 ], [ %2844, %2853 ], [ %3613, %3633 ], [ %3613, %3648 ], [ %3613, %3680 ], [ %3613, %3682 ]
  %3699 = phi float [ %3614, %3611 ], [ %2845, %3149 ], [ %2845, %2840 ], [ %2845, %2853 ], [ %3614, %3633 ], [ %3614, %3648 ], [ %3614, %3680 ], [ %3614, %3682 ]
  %3700 = phi float [ %3615, %3611 ], [ %2846, %3149 ], [ %2846, %2840 ], [ %2846, %2853 ], [ %3615, %3633 ], [ %3615, %3648 ], [ %3615, %3680 ], [ %3615, %3682 ]
  %3701 = phi float [ %3616, %3611 ], [ %2847, %3149 ], [ %2847, %2840 ], [ %2847, %2853 ], [ %3616, %3633 ], [ %3616, %3648 ], [ %3616, %3680 ], [ %3616, %3682 ]
  %3702 = phi float [ %3617, %3611 ], [ %2848, %3149 ], [ %2848, %2840 ], [ %2848, %2853 ], [ %3617, %3633 ], [ %3617, %3648 ], [ %3617, %3680 ], [ %3617, %3682 ]
  %3703 = phi float [ %3618, %3611 ], [ %2849, %3149 ], [ %2849, %2840 ], [ %2849, %2853 ], [ %3618, %3633 ], [ %3618, %3648 ], [ %3618, %3680 ], [ %3618, %3682 ]
  %3704 = phi float [ %2850, %3611 ], [ %2850, %3149 ], [ %2850, %2840 ], [ %2850, %2853 ], [ %3645, %3633 ], [ %3679, %3648 ], [ %2850, %3680 ], [ %3693, %3682 ]
  %3705 = phi float [ %2851, %3611 ], [ %2851, %3149 ], [ %2851, %2840 ], [ %2851, %2853 ], [ %3642, %3633 ], [ %3656, %3648 ], [ %2851, %3680 ], [ %3690, %3682 ]
  %3706 = phi float [ %3619, %3611 ], [ %2852, %3149 ], [ %2852, %2840 ], [ %2852, %2853 ], [ %3619, %3633 ], [ %3619, %3648 ], [ %3619, %3680 ], [ %3619, %3682 ]
  %3707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3707, 0
  %3709 = call float @dx.op.dot2.f32(i32 54, float %3695, float %3696, float %3695, float %3696)  ; Dot2(ax,ay,bx,by)
  %3710 = fmul fast float %3709, 0x3FE3333340000000
  %3711 = fsub fast float 1.000000e+00, %3710
  %3712 = call float @dx.op.dot3.f32(i32 55, float %3695, float %3696, float %3711, float %3695, float %3696, float %3711)  ; Dot3(ax,ay,az,bx,by,bz)
  %3713 = call float @dx.op.unary.f32(i32 25, float %3712)  ; Rsqrt(value)
  %3714 = fmul fast float %3713, %3695
  %3715 = fmul fast float %3713, %3696
  %3716 = fmul fast float %3711, %3713
  %3717 = fmul fast float %3716, %119
  %3718 = fmul fast float %3716, %121
  %3719 = fmul fast float %3716, %123
  %3720 = fmul fast float %3714, %82
  %3721 = fmul fast float %3714, %83
  %3722 = fmul fast float %3714, %84
  %3723 = fadd fast float %3717, %3720
  %3724 = fadd fast float %3718, %3721
  %3725 = fadd fast float %3719, %3722
  %3726 = fmul fast float %133, %3715
  %3727 = fmul fast float %134, %3715
  %3728 = fmul fast float %135, %3715
  %3729 = fadd fast float %3723, %3726
  %3730 = fadd fast float %3724, %3727
  %3731 = fadd fast float %3725, %3728
  %3732 = call float @dx.op.dot3.f32(i32 55, float %3729, float %3730, float %3731, float %3729, float %3730, float %3731)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = call float @dx.op.unary.f32(i32 25, float %3732)  ; Rsqrt(value)
  %3734 = fmul fast float %3729, %3733
  %3735 = fmul fast float %3730, %3733
  %3736 = fmul fast float %3731, %3733
  %3737 = call float @dx.op.unary.f32(i32 83, float %169)  ; DerivCoarseX(value)
  %3738 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %3739 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %3740 = call float @dx.op.unary.f32(i32 84, float %169)  ; DerivCoarseY(value)
  %3741 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %3742 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %3743 = fadd fast float %3737, %169
  %3744 = fadd fast float %3738, %170
  %3745 = fadd fast float %3739, %171
  %3746 = fadd fast float %3740, %169
  %3747 = fadd fast float %3741, %170
  %3748 = fadd fast float %3742, %171
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.CBufRet.f32 %3749, 1
  %3752 = extractvalue %dx.types.CBufRet.f32 %3749, 2
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 2
  %3755 = extractvalue %dx.types.CBufRet.f32 %3753, 3
  %3756 = fmul fast float %3750, %110
  %3757 = fmul fast float %3756, %3754
  %3758 = fmul fast float %3751, %111
  %3759 = fmul fast float %3758, %3755
  %3760 = fptoui float %3757 to i32
  %3761 = fptoui float %3759 to i32
  %3762 = fadd fast float %3750, -1.000000e+00
  %3763 = fadd fast float %3751, -1.000000e+00
  %3764 = fptoui float %3762 to i32
  %3765 = fptoui float %3763 to i32
  %3766 = call i32 @dx.op.binary.i32(i32 40, i32 %3760, i32 %3764)  ; UMin(a,b)
  %3767 = call i32 @dx.op.binary.i32(i32 40, i32 %3761, i32 %3765)  ; UMin(a,b)
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 3
  %3771 = fmul fast float %3769, %98
  %3772 = fsub fast float %3771, %3770
  %3773 = fadd fast float %3752, -1.000000e+00
  %3774 = call float @dx.op.binary.f32(i32 36, float %3772, float %3773)  ; FMin(a,b)
  %3775 = fptoui float %3774 to i32
  %3776 = fptoui float %3750 to i32
  %3777 = fptoui float %3751 to i32
  %3778 = mul i32 %3775, %3777
  %3779 = add i32 %3778, %3767
  %3780 = mul i32 %3779, %3776
  %3781 = add i32 %3780, %3766
  %3782 = shl i32 %3781, 2
  %3783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.i32 %3783, 0
  %3785 = and i32 %3784, 1023
  %3786 = lshr i32 %3784, 10
  %3787 = icmp eq i32 %3785, 0
  br i1 %3787, label %4216, label %3788

; <label>:3788                                    ; preds = %3694
  %3789 = and i32 %3784, 1023
  br label %3790

; <label>:3790                                    ; preds = %3917, %3788
  %3791 = phi i32 [ %3867, %3917 ], [ 0, %3788 ]
  %3792 = phi float [ %3918, %3917 ], [ 0.000000e+00, %3788 ]
  %3793 = phi float [ %3919, %3917 ], [ %1141, %3788 ]
  %3794 = phi float [ %3920, %3917 ], [ %3708, %3788 ]
  %3795 = phi float [ %3921, %3917 ], [ %3706, %3788 ]
  %3796 = phi float [ %3922, %3917 ], [ 0.000000e+00, %3788 ]
  %3797 = phi float [ %3923, %3917 ], [ 0.000000e+00, %3788 ]
  %3798 = phi float [ %3924, %3917 ], [ %3700, %3788 ]
  %3799 = phi float [ %3925, %3917 ], [ %3701, %3788 ]
  %3800 = phi float [ %3926, %3917 ], [ %3702, %3788 ]
  %3801 = phi float [ %3927, %3917 ], [ %3734, %3788 ]
  %3802 = phi float [ %3928, %3917 ], [ %3735, %3788 ]
  %3803 = phi float [ %3929, %3917 ], [ %3736, %3788 ]
  %3804 = phi float [ %3930, %3917 ], [ %3705, %3788 ]
  %3805 = phi float [ %3931, %3917 ], [ %3704, %3788 ]
  %3806 = phi float [ %3932, %3917 ], [ 0.000000e+00, %3788 ]
  %3807 = phi float [ %3933, %3917 ], [ %3703, %3788 ]
  %3808 = phi float [ %3934, %3917 ], [ %3697, %3788 ]
  %3809 = phi float [ %3935, %3917 ], [ %3698, %3788 ]
  %3810 = phi float [ %3936, %3917 ], [ %3699, %3788 ]
  %3811 = add nuw nsw i32 %3791, %3786
  %3812 = shl i32 %3811, 2
  %3813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.i32 %3813, 0
  %3815 = shl i32 %3814, 8
  %3816 = or i32 %3815, 48
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3822 = or i32 %3815, 64
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.i32 %3823, 1
  %3826 = or i32 %3815, 80
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3830 = or i32 %3815, 96
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = or i32 %3815, 112
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3839 = or i32 %3815, 128
  %3840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.ResRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.ResRet.f32 %3840, 2
  %3844 = extractvalue %dx.types.ResRet.f32 %3840, 3
  %3845 = or i32 %3815, 144
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3846, 3
  %3851 = or i32 %3815, 160
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = extractvalue %dx.types.ResRet.f32 %3852, 3
  %3857 = or i32 %3815, 192
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = or i32 %3815, 208
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = or i32 %3815, 248
  %3864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.f32 %3864, 0
  %3866 = extractvalue %dx.types.ResRet.f32 %3864, 1
  %3867 = add nuw nsw i32 %3791, 1
  %3868 = bitcast float %3821 to i32
  %3869 = and i32 %3868, 512
  %3870 = icmp eq i32 %3869, 0
  %3871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.f32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.f32 %3871, 1
  %3874 = extractvalue %dx.types.ResRet.f32 %3871, 2
  %3875 = extractvalue %dx.types.ResRet.f32 %3871, 3
  %3876 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %169, float %170, float %171, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3877 = or i32 %3815, 16
  %3878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3879 = extractvalue %dx.types.ResRet.f32 %3878, 0
  %3880 = extractvalue %dx.types.ResRet.f32 %3878, 1
  %3881 = extractvalue %dx.types.ResRet.f32 %3878, 2
  %3882 = extractvalue %dx.types.ResRet.f32 %3878, 3
  %3883 = call float @dx.op.dot4.f32(i32 56, float %3879, float %3880, float %3881, float %3882, float %169, float %170, float %171, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3884 = or i32 %3815, 32
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.ResRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.ResRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.ResRet.f32 %3885, 3
  %3890 = call float @dx.op.dot4.f32(i32 56, float %3886, float %3887, float %3888, float %3889, float %169, float %170, float %171, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3891 = call float @dx.op.unary.f32(i32 27, float %3876)  ; Round_ni(value)
  %3892 = call float @dx.op.unary.f32(i32 6, float %3891)  ; FAbs(value)
  %3893 = call float @dx.op.unary.f32(i32 27, float %3883)  ; Round_ni(value)
  %3894 = call float @dx.op.unary.f32(i32 6, float %3893)  ; FAbs(value)
  %3895 = call float @dx.op.unary.f32(i32 6, float %3890)  ; FAbs(value)
  %3896 = call float @dx.op.unary.f32(i32 27, float %3895)  ; Round_ni(value)
  %3897 = fadd fast float %3894, %3892
  %3898 = fadd fast float %3897, %3896
  %3899 = fcmp fast oeq float %3898, 0.000000e+00
  %3900 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %3743, float %3744, float %3745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3901 = call float @dx.op.dot4.f32(i32 56, float %3879, float %3880, float %3881, float %3882, float %3743, float %3744, float %3745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3902 = call float @dx.op.dot4.f32(i32 56, float %3872, float %3873, float %3874, float %3875, float %3746, float %3747, float %3748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3903 = call float @dx.op.dot4.f32(i32 56, float %3879, float %3880, float %3881, float %3882, float %3746, float %3747, float %3748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3904 = fsub fast float %3900, %3876
  %3905 = fsub fast float %3902, %3876
  %3906 = fsub fast float %3901, %3883
  %3907 = fsub fast float %3903, %3883
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3818, float %3819, float %3820, float %119, float %121, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 2
  %3911 = fadd fast float %3910, %3908
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3914 = fcmp fast ogt float %3912, %3913
  %3915 = and i1 %3899, %3914
  %3916 = and i1 %3870, %3915
  br i1 %3916, label %3938, label %3917

; <label>:3917                                    ; preds = %4202, %4019, %3938, %3790
  %3918 = phi float [ %3792, %3938 ], [ %4022, %4019 ], [ %4022, %4202 ], [ %3792, %3790 ]
  %3919 = phi float [ %3793, %3938 ], [ %3793, %4019 ], [ %4177, %4202 ], [ %3793, %3790 ]
  %3920 = phi float [ %3794, %3938 ], [ %3794, %4019 ], [ %4176, %4202 ], [ %3794, %3790 ]
  %3921 = phi float [ %3795, %3938 ], [ %3795, %4019 ], [ %4174, %4202 ], [ %3795, %3790 ]
  %3922 = phi float [ %3796, %3938 ], [ %3796, %4019 ], [ %4146, %4202 ], [ %3796, %3790 ]
  %3923 = phi float [ %3797, %3938 ], [ %3797, %4019 ], [ %4144, %4202 ], [ %3797, %3790 ]
  %3924 = phi float [ %3798, %3938 ], [ %3798, %4019 ], [ %4212, %4202 ], [ %3798, %3790 ]
  %3925 = phi float [ %3799, %3938 ], [ %3799, %4019 ], [ %4213, %4202 ], [ %3799, %3790 ]
  %3926 = phi float [ %3800, %3938 ], [ %3800, %4019 ], [ %4214, %4202 ], [ %3800, %3790 ]
  %3927 = phi float [ %3801, %3938 ], [ %3801, %4019 ], [ %4125, %4202 ], [ %3801, %3790 ]
  %3928 = phi float [ %3802, %3938 ], [ %3802, %4019 ], [ %4126, %4202 ], [ %3802, %3790 ]
  %3929 = phi float [ %3803, %3938 ], [ %3803, %4019 ], [ %4127, %4202 ], [ %3803, %3790 ]
  %3930 = phi float [ %3804, %3938 ], [ %3804, %4019 ], [ %4154, %4202 ], [ %3804, %3790 ]
  %3931 = phi float [ %3805, %3938 ], [ %3805, %4019 ], [ %4151, %4202 ], [ %3805, %3790 ]
  %3932 = phi float [ %3806, %3938 ], [ %3806, %4019 ], [ %4148, %4202 ], [ %3806, %3790 ]
  %3933 = phi float [ %3807, %3938 ], [ %3807, %4019 ], [ %4142, %4202 ], [ %3807, %3790 ]
  %3934 = phi float [ %3808, %3938 ], [ %3808, %4019 ], [ %4137, %4202 ], [ %3808, %3790 ]
  %3935 = phi float [ %3809, %3938 ], [ %3809, %4019 ], [ %4138, %4202 ], [ %3809, %3790 ]
  %3936 = phi float [ %3810, %3938 ], [ %3810, %4019 ], [ %4139, %4202 ], [ %3810, %3790 ]
  %3937 = icmp eq i32 %3867, %3789
  br i1 %3937, label %4215, label %3790

; <label>:3938                                    ; preds = %3790
  %3939 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3940 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3941 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3944 = extractvalue %dx.types.ResRet.i32 %3823, 3
  %3945 = extractvalue %dx.types.ResRet.i32 %3823, 2
  %3946 = add i32 %3944, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3947, %dx.types.Handle %3948, float %3876, float %3883, float undef, float undef, i32 0, i32 0, i32 undef, float %3904, float %3906, float undef, float %3905, float %3907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = fmul fast float %3950, %3943
  %3952 = fadd fast float %3951, %3942
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = fmul fast float %3876, %3832
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3883, float %3954)  ; FMad(a,b,c)
  %3956 = fadd fast float %3955, %3941
  %3957 = fmul fast float %3876, %3834
  %3958 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3883, float %3957)  ; FMad(a,b,c)
  %3959 = fadd fast float %3958, %3940
  %3960 = fmul fast float %3904, %3832
  %3961 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3906, float %3960)  ; FMad(a,b,c)
  %3962 = fmul fast float %3904, %3834
  %3963 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3906, float %3962)  ; FMad(a,b,c)
  %3964 = fmul fast float %3905, %3832
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3833, float %3907, float %3964)  ; FMad(a,b,c)
  %3966 = fmul fast float %3905, %3834
  %3967 = call float @dx.op.tertiary.f32(i32 46, float %3835, float %3907, float %3966)  ; FMad(a,b,c)
  %3968 = add i32 %3945, 0
  %3969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3968, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3970 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3969, %dx.types.Handle %3948, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3971 = extractvalue %dx.types.ResRet.f32 %3970, 0
  %3972 = and i32 %3868, 1024
  %3973 = icmp ne i32 %3972, 0
  %3974 = fcmp fast ogt float %3971, 0x3FE0101020000000
  %3975 = uitofp i1 %3974 to float
  %3976 = select i1 %3973, float %3975, float %3971
  %3977 = and i32 %3868, 8192
  %3978 = icmp ne i32 %3977, 0
  %3979 = select i1 %3978, float %3939, float 1.000000e+00
  %3980 = fmul fast float %3876, 2.000000e+00
  %3981 = fadd fast float %3980, -1.000000e+00
  %3982 = call float @dx.op.unary.f32(i32 6, float %3981)  ; FAbs(value)
  %3983 = fmul fast float %3982, %3865
  %3984 = fsub fast float %3983, %3865
  %3985 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3986 = fmul fast float %3883, 2.000000e+00
  %3987 = fadd fast float %3986, -1.000000e+00
  %3988 = call float @dx.op.unary.f32(i32 6, float %3987)  ; FAbs(value)
  %3989 = fmul fast float %3988, %3866
  %3990 = fsub fast float %3989, %3866
  %3991 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3992 = fmul fast float %3895, %3828
  %3993 = fsub fast float %3992, %3828
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = fmul fast float %3953, %3979
  %3996 = fmul fast float %3995, %3950
  %3997 = fmul fast float %3996, %3985
  %3998 = fmul fast float %3997, %3976
  %3999 = fmul fast float %3998, %3991
  %4000 = fmul fast float %3999, %3994
  %4001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4002 = extractvalue %dx.types.CBufRet.f32 %4001, 1
  %4003 = extractvalue %dx.types.CBufRet.f32 %4001, 0
  %4004 = fsub fast float %3912, %4003
  %4005 = fmul fast float %4004, %4002
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = fmul fast float %4000, %3829
  %4008 = fadd fast float %4000, %3829
  %4009 = fmul fast float %4008, %3838
  %4010 = fsub fast float %4009, %3838
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = and i32 %3868, 128
  %4013 = icmp ne i32 %4012, 0
  %4014 = select i1 %4013, float %4011, float %4007
  %4015 = fmul fast float %4014, %4006
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = fcmp fast ugt float %4015, %4017
  br i1 %4018, label %4019, label %3917

; <label>:4019                                    ; preds = %3938
  %4020 = select i1 %3978, float %4015, float 0.000000e+00
  %4021 = fadd fast float %4020, %3792
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  br i1 %3978, label %3917, label %4023

; <label>:4023                                    ; preds = %4019
  %4024 = and i32 %3868, 4
  %4025 = and i32 %3868, 8
  %4026 = add i32 %3824, 0
  %4027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4026, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4029 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4027, %dx.types.Handle %4028, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4034 = bitcast float %3850 to i32
  %4035 = and i32 %4034, 255
  %4036 = uitofp i32 %4035 to float
  %4037 = lshr i32 %4034, 8
  %4038 = and i32 %4037, 255
  %4039 = uitofp i32 %4038 to float
  %4040 = fmul fast float %4033, %4036
  %4041 = fadd fast float %4040, %4039
  %4042 = fmul fast float %4041, 0x3F70101000000000
  %4043 = add i32 %3825, 0
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4043, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4044, %dx.types.Handle %4028, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = extractvalue %dx.types.ResRet.f32 %4045, 3
  %4050 = bitcast float %3844 to i32
  %4051 = and i32 %4050, 255
  %4052 = uitofp i32 %4051 to float
  %4053 = lshr i32 %4050, 8
  %4054 = and i32 %4053, 255
  %4055 = uitofp i32 %4054 to float
  %4056 = lshr i32 %4050, 16
  %4057 = and i32 %4056, 255
  %4058 = uitofp i32 %4057 to float
  %4059 = fmul fast float %4058, 0x3F70101000000000
  %4060 = fmul fast float %4046, %4052
  %4061 = fadd fast float %4060, %4055
  %4062 = fmul fast float %4061, 0x3F70101000000000
  %4063 = fadd fast float %4047, -5.000000e-01
  %4064 = fadd fast float %4049, -5.000000e-01
  %4065 = fmul fast float %4063, %4059
  %4066 = fmul fast float %4064, %4059
  %4067 = fadd fast float %4065, 5.000000e-01
  %4068 = fadd fast float %4066, 5.000000e-01
  %4069 = fmul fast float %4030, %3853
  %4070 = fmul fast float %4031, %3854
  %4071 = fmul fast float %4032, %3855
  %4072 = fmul fast float %4067, 2.000000e+00
  %4073 = fadd fast float %4072, -1.000000e+00
  %4074 = fmul fast float %4068, 2.000000e+00
  %4075 = fadd fast float %4074, -1.000000e+00
  %4076 = fadd fast float %4073, %4075
  %4077 = fmul fast float %4076, 5.000000e-01
  %4078 = fsub fast float %4073, %4075
  %4079 = fmul fast float %4078, 5.000000e-01
  %4080 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4081 = fsub fast float 1.000000e+00, %4080
  %4082 = call float @dx.op.unary.f32(i32 6, float %4079)  ; FAbs(value)
  %4083 = fsub fast float %4081, %4082
  %4084 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4079, float %4083, float %4077, float %4079, float %4083)  ; Dot3(ax,ay,az,bx,by,bz)
  %4085 = call float @dx.op.unary.f32(i32 25, float %4084)  ; Rsqrt(value)
  %4086 = fmul fast float %4077, %4085
  %4087 = fmul fast float %4079, %4085
  %4088 = fmul fast float %4085, %4083
  %4089 = fmul fast float %4088, %3818
  %4090 = fmul fast float %4088, %3819
  %4091 = fmul fast float %4088, %3820
  %4092 = fmul fast float %4086, %3841
  %4093 = fmul fast float %4086, %3842
  %4094 = fmul fast float %4086, %3843
  %4095 = fadd fast float %4092, %4089
  %4096 = fadd fast float %4093, %4090
  %4097 = fadd fast float %4094, %4091
  %4098 = fmul fast float %4087, %3847
  %4099 = fmul fast float %4087, %3848
  %4100 = fmul fast float %4087, %3849
  %4101 = fadd fast float %4095, %4098
  %4102 = fadd fast float %4096, %4099
  %4103 = fadd fast float %4097, %4100
  %4104 = call float @dx.op.dot3.f32(i32 55, float %4101, float %4102, float %4103, float %4101, float %4102, float %4103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4105 = call float @dx.op.unary.f32(i32 25, float %4104)  ; Rsqrt(value)
  %4106 = fmul fast float %4101, %4105
  %4107 = fmul fast float %4102, %4105
  %4108 = fmul fast float %4103, %4105
  %4109 = icmp ne i32 %4025, 0
  %4110 = select i1 %4109, float 1.000000e+00, float 0.000000e+00
  %4111 = fmul fast float %4015, %4110
  %4112 = and i32 %3868, 1
  %4113 = icmp eq i32 %4112, 0
  br i1 %4113, label %4114, label %4118

; <label>:4114                                    ; preds = %4023
  %4115 = fsub fast float %4106, %3801
  %4116 = fsub fast float %4107, %3802
  %4117 = fsub fast float %4108, %3803
  br label %4118

; <label>:4118                                    ; preds = %4114, %4023
  %4119 = phi float [ %4115, %4114 ], [ %4106, %4023 ]
  %4120 = phi float [ %4116, %4114 ], [ %4107, %4023 ]
  %4121 = phi float [ %4117, %4114 ], [ %4108, %4023 ]
  %4122 = fmul float %4121, %4111
  %4123 = fmul float %4120, %4111
  %4124 = fmul float %4119, %4111
  %4125 = fadd fast float %4124, %3801
  %4126 = fadd fast float %4123, %3802
  %4127 = fadd fast float %4122, %3803
  %4128 = icmp ne i32 %4024, 0
  %4129 = select i1 %4128, float 1.000000e+00, float 0.000000e+00
  %4130 = fmul fast float %4015, %4129
  %4131 = fsub fast float %4069, %3808
  %4132 = fsub fast float %4070, %3809
  %4133 = fsub fast float %4071, %3810
  %4134 = fmul fast float %4131, %4130
  %4135 = fmul fast float %4132, %4130
  %4136 = fmul fast float %4133, %4130
  %4137 = fadd fast float %4134, %3808
  %4138 = fadd fast float %4135, %3809
  %4139 = fadd fast float %4136, %3810
  %4140 = fsub fast float %4042, %3807
  %4141 = fmul fast float %4140, %4130
  %4142 = fadd fast float %4141, %3807
  %4143 = fmul fast float %4130, %3797
  %4144 = fsub fast float %3797, %4143
  %4145 = fmul fast float %4130, %3796
  %4146 = fsub fast float %3796, %4145
  %4147 = fadd fast float %4015, %3806
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = fsub fast float %4062, %3805
  %4150 = fmul fast float %4149, %4111
  %4151 = fadd fast float %4150, %3805
  %4152 = fsub fast float %4048, %3804
  %4153 = fmul fast float %4152, %4111
  %4154 = fadd fast float %4153, %3804
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4069, float %4070, float %4071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4159 = fmul fast float %4158, %4155
  %4160 = fadd fast float %4159, %4157
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = bitcast float %3856 to i32
  %4163 = and i32 %4162, 65535
  %4164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4163)  ; LegacyF16ToF32(value)
  %4165 = lshr i32 %4162, 16
  %4166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4165)  ; LegacyF16ToF32(value)
  %4167 = fcmp fast oge float %4164, 0.000000e+00
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 0
  %4170 = select i1 %4167, float %4164, float %4169
  %4171 = fadd fast float %4170, %4166
  %4172 = fsub fast float %4161, %3795
  %4173 = fmul fast float %4172, %4015
  %4174 = fadd fast float %4173, %3795
  %4175 = fmul fast float %4171, %4015
  %4176 = call float @dx.op.binary.f32(i32 35, float %3794, float %4175)  ; FMax(a,b)
  %4177 = call float @dx.op.binary.f32(i32 35, float %3793, float %4015)  ; FMax(a,b)
  %4178 = and i32 %3868, 16
  %4179 = icmp eq i32 %4178, 0
  br i1 %4179, label %4202, label %4180

; <label>:4180                                    ; preds = %4118
  %4181 = bitcast float %3862 to i32
  %4182 = add i32 %3859, 0
  %4183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4183, %dx.types.Handle %4028, float %3956, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3961, float %3963, float undef, float %3965, float %3967, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.ResRet.f32 %4184, 2
  %4188 = and i32 %4181, 65535
  %4189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4188)  ; LegacyF16ToF32(value)
  %4190 = fmul fast float %4185, %3853
  %4191 = fmul fast float %4186, %3854
  %4192 = fmul fast float %4187, %3855
  %4193 = and i32 %3868, 16384
  %4194 = icmp ne i32 %4193, 0
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = select i1 %4194, float %4196, float 1.000000e+00
  %4198 = fmul fast float %4197, %4189
  %4199 = fmul fast float %4190, %4198
  %4200 = fmul fast float %4191, %4198
  %4201 = fmul fast float %4192, %4198
  br label %4202

; <label>:4202                                    ; preds = %4180, %4118
  %4203 = phi float [ %4199, %4180 ], [ 0.000000e+00, %4118 ]
  %4204 = phi float [ %4200, %4180 ], [ 0.000000e+00, %4118 ]
  %4205 = phi float [ %4201, %4180 ], [ 0.000000e+00, %4118 ]
  %4206 = fsub fast float %4203, %3798
  %4207 = fsub fast float %4204, %3799
  %4208 = fsub fast float %4205, %3800
  %4209 = fmul fast float %4206, %4015
  %4210 = fmul fast float %4207, %4015
  %4211 = fmul fast float %4208, %4015
  %4212 = fadd fast float %4209, %3798
  %4213 = fadd fast float %4210, %3799
  %4214 = fadd fast float %4211, %3800
  br label %3917

; <label>:4215                                    ; preds = %3917
  br label %4216

; <label>:4216                                    ; preds = %4215, %3694
  %4217 = phi float [ 0.000000e+00, %3694 ], [ %3918, %4215 ]
  %4218 = phi float [ %1141, %3694 ], [ %3919, %4215 ]
  %4219 = phi float [ %3708, %3694 ], [ %3920, %4215 ]
  %4220 = phi float [ %3706, %3694 ], [ %3921, %4215 ]
  %4221 = phi float [ 0.000000e+00, %3694 ], [ %3922, %4215 ]
  %4222 = phi float [ 0.000000e+00, %3694 ], [ %3923, %4215 ]
  %4223 = phi float [ %3700, %3694 ], [ %3924, %4215 ]
  %4224 = phi float [ %3701, %3694 ], [ %3925, %4215 ]
  %4225 = phi float [ %3702, %3694 ], [ %3926, %4215 ]
  %4226 = phi float [ %3734, %3694 ], [ %3927, %4215 ]
  %4227 = phi float [ %3735, %3694 ], [ %3928, %4215 ]
  %4228 = phi float [ %3736, %3694 ], [ %3929, %4215 ]
  %4229 = phi float [ %3705, %3694 ], [ %3930, %4215 ]
  %4230 = phi float [ %3704, %3694 ], [ %3931, %4215 ]
  %4231 = phi float [ 0.000000e+00, %3694 ], [ %3932, %4215 ]
  %4232 = phi float [ %3703, %3694 ], [ %3933, %4215 ]
  %4233 = phi float [ %3697, %3694 ], [ %3934, %4215 ]
  %4234 = phi float [ %3698, %3694 ], [ %3935, %4215 ]
  %4235 = phi float [ %3699, %3694 ], [ %3936, %4215 ]
  %4236 = call float @dx.op.dot3.f32(i32 55, float %4226, float %4227, float %4228, float %4226, float %4227, float %4228)  ; Dot3(ax,ay,az,bx,by,bz)
  %4237 = call float @dx.op.unary.f32(i32 25, float %4236)  ; Rsqrt(value)
  %4238 = fmul fast float %4237, %4226
  %4239 = fmul fast float %4237, %4227
  %4240 = fmul fast float %4237, %4228
  %4241 = fadd fast float %4231, %1141
  %4242 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4243 = call float @dx.op.dot3.f32(i32 55, float %4238, float %4239, float %4240, float %4238, float %4239, float %4240)  ; Dot3(ax,ay,az,bx,by,bz)
  %4244 = call float @dx.op.unary.f32(i32 25, float %4243)  ; Rsqrt(value)
  %4245 = fmul fast float %4244, %4238
  %4246 = fmul fast float %4244, %4239
  %4247 = fmul fast float %4244, %4240
  %4248 = fadd fast float %4232, 0xBFB99999A0000000
  %4249 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4250 = fmul fast float %4249, 0x3FF1C71C80000000
  %4251 = call float @dx.op.binary.f32(i32 36, float %4232, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4252 = fsub fast float 1.000000e+00, %4250
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = fmul fast float %4253, %4233
  %4255 = fmul fast float %4253, %4234
  %4256 = fmul fast float %4253, %4235
  %4257 = call float @dx.op.unary.f32(i32 7, float %4254)  ; Saturate(value)
  %4258 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4259 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4260 = fmul fast float %4250, %4233
  %4261 = fmul fast float %4250, %4234
  %4262 = fmul fast float %4250, %4235
  %4263 = fadd fast float %4260, %4251
  %4264 = fadd fast float %4261, %4251
  %4265 = fadd fast float %4262, %4251
  %4266 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4268 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4269 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.i32 %4270, 3
  %4272 = and i32 %4271, 8
  %4273 = icmp ne i32 %4272, 0
  %4274 = call float @dx.op.binary.f32(i32 35, float %4257, float %4233)  ; FMax(a,b)
  %4275 = call float @dx.op.binary.f32(i32 35, float %4258, float %4233)  ; FMax(a,b)
  %4276 = call float @dx.op.binary.f32(i32 35, float %4259, float %4233)  ; FMax(a,b)
  %4277 = call float @dx.op.dot3.f32(i32 55, float %4257, float %4258, float %4259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4278 = select i1 %231, float %4233, float %4257
  %4279 = select i1 %231, float %4277, float %4258
  %4280 = select i1 %231, float 1.000000e+00, float %4259
  %4281 = select i1 %4273, float %4274, float %4278
  %4282 = select i1 %4273, float %4275, float %4279
  %4283 = select i1 %4273, float %4276, float %4280
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4287 = extractvalue %dx.types.CBufRet.f32 %4284, 2
  %4288 = fadd fast float %4285, %169
  %4289 = fadd fast float %4286, %170
  %4290 = fadd fast float %4287, %171
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4294 = fsub fast float %4288, %4292
  %4295 = fsub fast float %4289, %4293
  %4296 = fmul fast float %4294, %4294
  %4297 = fmul fast float %4295, %4295
  %4298 = fadd fast float %4296, %4297
  %4299 = call float @dx.op.unary.f32(i32 24, float %4298)  ; Sqrt(value)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4301 = fcmp fast olt float %4299, %4300
  br i1 %4301, label %4302, label %4369

; <label>:4302                                    ; preds = %4216
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 0
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4310 = extractvalue %dx.types.CBufRet.f32 %4305, 1
  %4311 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4312 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4313 = extractvalue %dx.types.CBufRet.f32 %4305, 3
  %4314 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4315 = fadd fast float %4312, %4288
  %4316 = fadd fast float %4313, %4289
  %4317 = fadd fast float %4314, %4290
  %4318 = fmul fast float %4315, %4304
  %4319 = call float @dx.op.tertiary.f32(i32 46, float %4316, float %4306, float %4318)  ; FMad(a,b,c)
  %4320 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4308, float %4319)  ; FMad(a,b,c)
  %4321 = fmul fast float %4315, %4309
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4316, float %4310, float %4321)  ; FMad(a,b,c)
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4317, float %4311, float %4322)  ; FMad(a,b,c)
  %4324 = fsub fast float %4320, %4312
  %4325 = fsub fast float %4323, %4313
  %4326 = fsub fast float %4324, %4292
  %4327 = fadd fast float %4326, %4300
  %4328 = fsub fast float %4325, %4293
  %4329 = fadd fast float %4328, %4300
  %4330 = extractvalue %dx.types.CBufRet.f32 %4291, 3
  %4331 = fmul fast float %4327, %4330
  %4332 = fmul fast float %4329, %4330
  %4333 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4335 = fsub fast float 1.000000e+00, %4333
  %4336 = fsub fast float 1.000000e+00, %4334
  %4337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4335, float %4336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4338 = extractvalue %dx.types.ResRet.f32 %4337, 0
  %4339 = fcmp fast ugt float %4338, 0.000000e+00
  br i1 %4339, label %4340, label %4643

; <label>:4340                                    ; preds = %4302
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 2
  %4343 = fmul fast float %4342, %4338
  %4344 = extractvalue %dx.types.CBufRet.f32 %4341, 3
  %4345 = fadd fast float %4344, %4343
  %4346 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4347 = fadd fast float %4345, %4314
  %4348 = fmul fast float %4320, %4308
  %4349 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4311, float %4348)  ; FMad(a,b,c)
  %4350 = call float @dx.op.tertiary.f32(i32 46, float %4347, float %4346, float %4349)  ; FMad(a,b,c)
  %4351 = fsub fast float %4350, %4314
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 2
  %4354 = fsub fast float %4351, %4353
  %4355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4335, float %4336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4356 = extractvalue %dx.types.ResRet.f32 %4355, 0
  %4357 = extractvalue %dx.types.ResRet.f32 %4355, 1
  %4358 = extractvalue %dx.types.ResRet.f32 %4355, 2
  %4359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4335, float %4336, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.ResRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.ResRet.f32 %4359, 2
  %4363 = fadd fast float %4360, %4356
  %4364 = fmul fast float %4363, 0x3F847AE140000000
  %4365 = fadd fast float %4361, %4357
  %4366 = fmul fast float %4365, 0x3F847AE140000000
  %4367 = fadd fast float %4362, %4358
  %4368 = fmul fast float %4367, 0x3F847AE140000000
  br label %4643

; <label>:4369                                    ; preds = %4216
  %4370 = and i32 %207, 1
  %4371 = icmp eq i32 %4370, 0
  br i1 %4371, label %4643, label %4372

; <label>:4372                                    ; preds = %4369
  %4373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.f32 %4373, 0
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.CBufRet.f32 %4373, 1
  %4380 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4381 = extractvalue %dx.types.CBufRet.f32 %4377, 1
  %4382 = extractvalue %dx.types.CBufRet.f32 %4373, 3
  %4383 = extractvalue %dx.types.CBufRet.f32 %4375, 3
  %4384 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4385 = fadd fast float %4382, %4288
  %4386 = fadd fast float %4383, %4289
  %4387 = fadd fast float %4384, %4290
  %4388 = fmul fast float %4385, %4374
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4376, float %4388)  ; FMad(a,b,c)
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4378, float %4389)  ; FMad(a,b,c)
  %4391 = fmul fast float %4385, %4379
  %4392 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4380, float %4391)  ; FMad(a,b,c)
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4381, float %4392)  ; FMad(a,b,c)
  %4394 = fsub fast float %4390, %4382
  %4395 = fsub fast float %4393, %4383
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.CBufRet.f32 %4396, 2
  %4400 = extractvalue %dx.types.CBufRet.f32 %4396, 3
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 3
  %4403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.i32 %4403, 0
  %4405 = extractvalue %dx.types.CBufRet.i32 %4403, 1
  %4406 = udiv i32 %4405, %4404
  %4407 = fsub fast float %4394, %4397
  %4408 = fsub fast float %4395, %4398
  %4409 = call float @dx.op.binary.f32(i32 35, float %4407, float 0.000000e+00)  ; FMax(a,b)
  %4410 = call float @dx.op.binary.f32(i32 35, float %4408, float 0.000000e+00)  ; FMax(a,b)
  %4411 = call float @dx.op.binary.f32(i32 36, float %4409, float %4399)  ; FMin(a,b)
  %4412 = call float @dx.op.binary.f32(i32 36, float %4410, float %4400)  ; FMin(a,b)
  %4413 = add i32 %4404, -1
  %4414 = add i32 %4406, -1
  %4415 = fmul fast float %4411, %4402
  %4416 = fmul fast float %4412, %4402
  %4417 = fptoui float %4415 to i32
  %4418 = fptoui float %4416 to i32
  %4419 = call i32 @dx.op.binary.i32(i32 40, i32 %4417, i32 %4413)  ; UMin(a,b)
  %4420 = call i32 @dx.op.binary.i32(i32 40, i32 %4418, i32 %4414)  ; UMin(a,b)
  %4421 = mul i32 %4420, %4404
  %4422 = add i32 %4421, %4419
  %4423 = shl i32 %4422, 2
  %4424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4423, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.i32 %4424, 0
  %4426 = icmp eq i32 %4425, -1
  br i1 %4426, label %4643, label %4427

; <label>:4427                                    ; preds = %4372
  %4428 = mul i32 %4425, 148
  %4429 = add i32 %4428, 4
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = add i32 %4428, 8
  %4433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = add i32 %4428, 36
  %4436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = add i32 %4428, 60
  %4439 = add i32 %4428, 92
  %4440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.i32 %4440, 0
  %4442 = add i32 %4428, 116
  %4443 = fsub fast float %4394, %4431
  %4444 = fsub fast float %4395, %4434
  %4445 = fmul fast float %4402, %4443
  %4446 = fmul fast float %4402, %4444
  %4447 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4449 = fsub fast float 1.000000e+00, %4448
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 2
  %4452 = call float @dx.op.unary.f32(i32 83, float %4447)  ; DerivCoarseX(value)
  %4453 = call float @dx.op.unary.f32(i32 83, float %4449)  ; DerivCoarseX(value)
  %4454 = call float @dx.op.unary.f32(i32 84, float %4447)  ; DerivCoarseY(value)
  %4455 = call float @dx.op.unary.f32(i32 84, float %4449)  ; DerivCoarseY(value)
  %4456 = fmul fast float %4452, %4451
  %4457 = fmul fast float %4453, %4451
  %4458 = fmul fast float %4454, %4451
  %4459 = fmul fast float %4455, %4451
  %4460 = call float @dx.op.dot2.f32(i32 54, float %4458, float %4459, float %4458, float %4459)  ; Dot2(ax,ay,bx,by)
  %4461 = call float @dx.op.dot2.f32(i32 54, float %4456, float %4457, float %4456, float %4457)  ; Dot2(ax,ay,bx,by)
  %4462 = call float @dx.op.binary.f32(i32 35, float %4461, float %4460)  ; FMax(a,b)
  %4463 = call float @dx.op.unary.f32(i32 23, float %4462)  ; Log(value)
  %4464 = fmul fast float %4463, 5.000000e-01
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4467 = fadd fast float %4466, %4464
  %4468 = call float @dx.op.binary.f32(i32 35, float %4467, float 0.000000e+00)  ; FMax(a,b)
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4471 = fadd fast float %4470, %4468
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4474 = fadd fast float %4471, %4473
  %4475 = add i32 %4441, 0
  %4476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4475, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4477 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4476, i32 0)  ; GetDimensions(handle,mipLevel)
  %4478 = extractvalue %dx.types.Dimensions %4477, 0
  %4479 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4478)  ; FirstbitLo(value)
  %4480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.i32 %4480, 1
  %4482 = sub nsw i32 %4481, %4479
  %4483 = sitofp i32 %4482 to float
  %4484 = fsub fast float %4474, %4483
  %4485 = call float @dx.op.binary.f32(i32 35, float %4484, float 0.000000e+00)  ; FMax(a,b)
  %4486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4476, %dx.types.Handle %52, float %4447, float %4449, float %4437, float undef, i32 0, i32 0, i32 undef, float %4485)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = fcmp ule float %4487, 0x3FE0101020000000
  %4489 = extractvalue %dx.types.CBufRet.i32 %4480, 0
  %4490 = and i32 %4489, 128
  %4491 = icmp ne i32 %4490, 0
  %4492 = and i1 %4488, %4491
  br i1 %4492, label %4643, label %4493

; <label>:4493                                    ; preds = %4427
  %4494 = add i32 %4428, 20
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = add i32 %4428, 24
  %4498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = add i32 %4428, 40
  %4501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = add i32 %4428, 96
  %4504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.i32 %4504, 0
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 2
  %4508 = fmul fast float %4507, %4447
  %4509 = fmul fast float %4507, %4449
  %4510 = extractvalue %dx.types.CBufRet.f32 %4506, 3
  %4511 = fadd fast float %4508, %4510
  %4512 = fadd fast float %4509, %4510
  %4513 = add i32 %4505, 0
  %4514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4513, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4515 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4514, i32 0)  ; GetDimensions(handle,mipLevel)
  %4516 = extractvalue %dx.types.Dimensions %4515, 0
  %4517 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4516)  ; FirstbitLo(value)
  %4518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4519 = extractvalue %dx.types.CBufRet.i32 %4518, 1
  %4520 = sub nsw i32 %4519, %4517
  %4521 = sitofp i32 %4520 to float
  %4522 = fsub fast float %4471, %4521
  %4523 = call float @dx.op.binary.f32(i32 35, float %4522, float 0.000000e+00)  ; FMax(a,b)
  %4524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4514, %dx.types.Handle %52, float %4511, float %4512, float %4502, float undef, i32 0, i32 0, i32 undef, float %4523)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = fmul fast float %4525, %4496
  %4527 = fadd fast float %4526, %4499
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4531 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 3
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4536 = extractvalue %dx.types.CBufRet.f32 %4528, 3
  %4537 = fadd fast float %4533, %4394
  %4538 = fadd fast float %4535, %4395
  %4539 = fadd fast float %4527, %4536
  %4540 = fmul fast float %4537, %4529
  %4541 = call float @dx.op.tertiary.f32(i32 46, float %4538, float %4530, float %4540)  ; FMad(a,b,c)
  %4542 = call float @dx.op.tertiary.f32(i32 46, float %4539, float %4531, float %4541)  ; FMad(a,b,c)
  %4543 = fsub fast float %4542, %4536
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4546 = fsub fast float %4543, %4545
  %4547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.i32 %4547, 0
  %4549 = call i32 @dx.op.binary.i32(i32 40, i32 %4425, i32 %4548)  ; UMin(a,b)
  %4550 = mul i32 %4549, 36
  %4551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.i32 %4551, 0
  %4553 = add i32 %4550, 4
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4556 = fmul fast float %4555, %4447
  %4557 = fmul fast float %4555, %4449
  %4558 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4559 = fadd fast float %4556, %4558
  %4560 = fadd fast float %4557, %4558
  %4561 = icmp eq i32 %4552, 0
  br i1 %4561, label %4630, label %4562

; <label>:4562                                    ; preds = %4493
  br label %4563

; <label>:4563                                    ; preds = %4620, %4562
  %4564 = phi float [ %4621, %4620 ], [ 0.000000e+00, %4562 ]
  %4565 = phi float [ %4622, %4620 ], [ 0.000000e+00, %4562 ]
  %4566 = phi float [ %4623, %4620 ], [ 0.000000e+00, %4562 ]
  %4567 = phi float [ %4624, %4620 ], [ 0.000000e+00, %4562 ]
  %4568 = phi float [ %4625, %4620 ], [ 0.000000e+00, %4562 ]
  %4569 = phi float [ %4626, %4620 ], [ 0.000000e+00, %4562 ]
  %4570 = phi i32 [ %4627, %4620 ], [ 0, %4562 ]
  %4571 = shl i32 %4570, 2
  %4572 = add i32 %4438, %4571
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = add i32 %4442, %4571
  %4576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.i32 %4576, 0
  %4578 = add i32 %4577, 0
  %4579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4578, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4580 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4579, i32 0)  ; GetDimensions(handle,mipLevel)
  %4581 = extractvalue %dx.types.Dimensions %4580, 0
  %4582 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4581)  ; FirstbitLo(value)
  %4583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.i32 %4583, 1
  %4585 = sub nsw i32 %4584, %4582
  %4586 = sitofp i32 %4585 to float
  %4587 = fsub fast float %4471, %4586
  %4588 = call float @dx.op.binary.f32(i32 35, float %4587, float 0.000000e+00)  ; FMax(a,b)
  %4589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4579, %dx.types.Handle %52, float %4559, float %4560, float %4574, float undef, i32 0, i32 0, i32 undef, float %4588)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = fcmp fast ogt float %4590, 0.000000e+00
  br i1 %4591, label %4592, label %4620

; <label>:4592                                    ; preds = %4563
  %4593 = add i32 %4553, %4571
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = and i32 %4595, 32767
  %4597 = mul nuw nsw i32 %4596, 928
  %4598 = add nuw nsw i32 %4597, 48
  %4599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4598, i32 undef)  ; BufferLoad(srv,index,wot)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = add nuw nsw i32 %4597, 60
  %4604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = fmul fast float %4600, %4590
  %4609 = fmul fast float %4601, %4590
  %4610 = fmul fast float %4602, %4590
  %4611 = fadd fast float %4608, %4564
  %4612 = fadd fast float %4609, %4565
  %4613 = fadd fast float %4610, %4566
  %4614 = fmul fast float %4605, %4590
  %4615 = fmul fast float %4606, %4590
  %4616 = fmul fast float %4607, %4590
  %4617 = fadd fast float %4614, %4567
  %4618 = fadd fast float %4615, %4568
  %4619 = fadd fast float %4616, %4569
  br label %4620

; <label>:4620                                    ; preds = %4592, %4563
  %4621 = phi float [ %4611, %4592 ], [ %4564, %4563 ]
  %4622 = phi float [ %4612, %4592 ], [ %4565, %4563 ]
  %4623 = phi float [ %4613, %4592 ], [ %4566, %4563 ]
  %4624 = phi float [ %4617, %4592 ], [ %4567, %4563 ]
  %4625 = phi float [ %4618, %4592 ], [ %4568, %4563 ]
  %4626 = phi float [ %4619, %4592 ], [ %4569, %4563 ]
  %4627 = add nuw i32 %4570, 1
  %4628 = icmp eq i32 %4627, %4552
  br i1 %4628, label %4629, label %4563

; <label>:4629                                    ; preds = %4620
  br label %4630

; <label>:4630                                    ; preds = %4629, %4493
  %4631 = phi float [ 0.000000e+00, %4493 ], [ %4621, %4629 ]
  %4632 = phi float [ 0.000000e+00, %4493 ], [ %4622, %4629 ]
  %4633 = phi float [ 0.000000e+00, %4493 ], [ %4623, %4629 ]
  %4634 = phi float [ 0.000000e+00, %4493 ], [ %4624, %4629 ]
  %4635 = phi float [ 0.000000e+00, %4493 ], [ %4625, %4629 ]
  %4636 = phi float [ 0.000000e+00, %4493 ], [ %4626, %4629 ]
  %4637 = fadd fast float %4634, %4631
  %4638 = fmul fast float %4637, 0x3F847AE140000000
  %4639 = fadd fast float %4635, %4632
  %4640 = fmul fast float %4639, 0x3F847AE140000000
  %4641 = fadd fast float %4636, %4633
  %4642 = fmul fast float %4641, 0x3F847AE140000000
  br label %4643

; <label>:4643                                    ; preds = %4630, %4427, %4372, %4369, %4340, %4302
  %4644 = phi float [ %4364, %4340 ], [ 0.000000e+00, %4302 ], [ %4638, %4630 ], [ 0.000000e+00, %4372 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4369 ]
  %4645 = phi float [ %4366, %4340 ], [ 0.000000e+00, %4302 ], [ %4640, %4630 ], [ 0.000000e+00, %4372 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4369 ]
  %4646 = phi float [ %4368, %4340 ], [ 0.000000e+00, %4302 ], [ %4642, %4630 ], [ 0.000000e+00, %4372 ], [ 0.000000e+00, %4427 ], [ 0.000000e+00, %4369 ]
  %4647 = phi float [ %4354, %4340 ], [ -1.310720e+05, %4302 ], [ %4546, %4630 ], [ -1.310720e+05, %4372 ], [ -1.310720e+05, %4427 ], [ -1.310720e+05, %4369 ]
  %4648 = phi i1 [ true, %4340 ], [ false, %4302 ], [ true, %4630 ], [ false, %4372 ], [ false, %4427 ], [ false, %4369 ]
  %4649 = and i32 %207, 3
  %4650 = icmp eq i32 %4649, 1
  %4651 = select i1 %4650, float 1.000000e+00, float 0.000000e+00
  %4652 = fsub fast float %4647, %171
  %4653 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4654 = select i1 %4648, float %4653, float 1.000000e+00
  %4655 = fmul fast float %4654, %4651
  %4656 = icmp eq i32 %4649, 3
  %4657 = select i1 %4656, float 1.000000e+00, float %4655
  %4658 = call float @dx.op.binary.f32(i32 35, float %4217, float %4657)  ; FMax(a,b)
  %4659 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4660 = fcmp fast une float %4659, 0.000000e+00
  %4661 = call float @dx.op.dot3.f32(i32 55, float %169, float %170, float %171, float %169, float %170, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = call float @dx.op.unary.f32(i32 25, float %4661)  ; Rsqrt(value)
  br i1 %4660, label %4670, label %4663

; <label>:4663                                    ; preds = %4643
  %4664 = fmul fast float %4662, %169
  %4665 = fmul fast float %4662, %170
  %4666 = fmul fast float %4662, %171
  %4667 = fsub fast float -0.000000e+00, %4664
  %4668 = fsub fast float -0.000000e+00, %4665
  %4669 = fsub fast float -0.000000e+00, %4666
  br label %4838

; <label>:4670                                    ; preds = %4643
  %4671 = fmul fast float %169, %4662
  %4672 = fsub fast float -0.000000e+00, %4671
  %4673 = fmul fast float %170, %4662
  %4674 = fsub fast float -0.000000e+00, %4673
  %4675 = fmul fast float %171, %4662
  %4676 = fsub fast float -0.000000e+00, %4675
  %4677 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4674, float %4676, float %119, float %121, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = fmul fast float %4659, 2.500000e+00
  %4679 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4680 = fmul fast float %4659, 0x4013FFFFE0000000
  %4681 = fadd fast float %4680, 0xBFFFFFFFE0000000
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fmul fast float %4659, 0x4004000020000000
  %4684 = fadd fast float %4683, 0xBFF8000040000000
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4687 = fmul fast float %4248, 1.000000e+01
  %4688 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4689 = fmul fast float %4688, 2.000000e+00
  %4690 = fsub fast float 3.000000e+00, %4689
  %4691 = fmul fast float %4688, %4688
  %4692 = fmul fast float %4691, %4690
  %4693 = fsub fast float 1.000000e+00, %4692
  %4694 = fsub fast float 0x3FE3333340000000, %4269
  %4695 = fmul fast float %4694, 0x400AAAAAA0000000
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fmul fast float %4693, %4696
  %4698 = fmul fast float %4281, 0x3FEA2B8620000000
  %4699 = fmul fast float %4282, 0x3FEA2B8620000000
  %4700 = fmul fast float %4283, 0x3FEA2B8620000000
  %4701 = fadd fast float %4698, 0x3FC81DFBA0000000
  %4702 = fmul fast float %4701, %4281
  %4703 = fadd fast float %4702, 0x3F910E6020000000
  %4704 = fadd fast float %4699, 0x3FC81DFBA0000000
  %4705 = fmul fast float %4704, %4282
  %4706 = fadd fast float %4705, 0x3F910E6020000000
  %4707 = fadd fast float %4700, 0x3FC81DFBA0000000
  %4708 = fmul fast float %4707, %4283
  %4709 = fadd fast float %4708, 0x3F910E6020000000
  %4710 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4711 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4713 = fsub fast float %4710, %4281
  %4714 = fsub fast float %4711, %4282
  %4715 = fsub fast float %4712, %4283
  %4716 = fmul fast float %4713, %4686
  %4717 = fmul fast float %4716, %4697
  %4718 = fmul fast float %4714, %4686
  %4719 = fmul fast float %4718, %4697
  %4720 = fmul fast float %4715, %4686
  %4721 = fmul fast float %4720, %4697
  %4722 = fadd fast float %4717, %4281
  %4723 = fadd fast float %4719, %4282
  %4724 = fadd fast float %4721, %4283
  %4725 = fmul fast float %4229, %4229
  %4726 = fmul fast float %4725, %4725
  %4727 = fadd fast float %4682, 1.000000e+00
  %4728 = fsub fast float %4727, %4697
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = call float @dx.op.dot3.f32(i32 55, float %119, float %121, float %123, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = fsub fast float 1.000000e+00, %4726
  %4733 = call float @dx.op.binary.f32(i32 36, float %4729, float %4732)  ; FMin(a,b)
  %4734 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4735 = call float @dx.op.binary.f32(i32 35, float %4733, float %4734)  ; FMax(a,b)
  %4736 = fadd fast float %4731, 0xBFE4CCCCC0000000
  %4737 = fmul fast float %4736, 0x4006DB6DA0000000
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %4738, 2.000000e+00
  %4740 = fsub fast float 3.000000e+00, %4739
  %4741 = bitcast float %4266 to i32
  %4742 = ashr i32 %4741, 1
  %4743 = add nsw i32 %4742, 532487669
  %4744 = bitcast i32 %4743 to float
  %4745 = fsub fast float 1.000000e+00, %4744
  %4746 = bitcast float %4745 to i32
  %4747 = sub nsw i32 2129859010, %4746
  %4748 = bitcast i32 %4747 to float
  %4749 = fmul fast float %4748, 2.000000e+00
  %4750 = bitcast float %4267 to i32
  %4751 = ashr i32 %4750, 1
  %4752 = add nsw i32 %4751, 532487669
  %4753 = bitcast i32 %4752 to float
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = bitcast float %4754 to i32
  %4756 = sub nsw i32 2129859010, %4755
  %4757 = bitcast i32 %4756 to float
  %4758 = fmul fast float %4757, 2.000000e+00
  %4759 = bitcast float %4268 to i32
  %4760 = ashr i32 %4759, 1
  %4761 = add nsw i32 %4760, 532487669
  %4762 = bitcast i32 %4761 to float
  %4763 = fsub fast float 1.000000e+00, %4762
  %4764 = bitcast float %4763 to i32
  %4765 = sub nsw i32 2129859010, %4764
  %4766 = bitcast i32 %4765 to float
  %4767 = fmul fast float %4766, 2.000000e+00
  %4768 = fsub fast float 0x4002A9FBE0000000, %4749
  %4769 = fadd fast float %4749, 0x3FD54FDF00000000
  %4770 = bitcast float %4769 to i32
  %4771 = sub nsw i32 2129859010, %4770
  %4772 = bitcast i32 %4771 to float
  %4773 = fmul fast float %4772, %4768
  %4774 = fmul fast float %4773, %4773
  %4775 = fsub fast float 0x4002A9FBE0000000, %4758
  %4776 = fadd fast float %4758, 0x3FD54FDF00000000
  %4777 = bitcast float %4776 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = fmul fast float %4779, %4775
  %4781 = fmul fast float %4780, %4780
  %4782 = fsub fast float 0x4002A9FBE0000000, %4767
  %4783 = fadd fast float %4767, 0x3FD54FDF00000000
  %4784 = bitcast float %4783 to i32
  %4785 = sub nsw i32 2129859010, %4784
  %4786 = bitcast i32 %4785 to float
  %4787 = fmul fast float %4786, %4782
  %4788 = fmul fast float %4787, %4787
  %4789 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4774)  ; FMax(a,b)
  %4790 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4781)  ; FMax(a,b)
  %4791 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4788)  ; FMax(a,b)
  %4792 = fsub fast float 1.000000e+00, %4677
  %4793 = fadd fast float %4792, %4693
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = fsub fast float 1.000000e+00, %4657
  %4796 = fmul fast float %4735, %4795
  %4797 = fmul fast float %4738, %4738
  %4798 = fmul fast float %4797, %4796
  %4799 = fmul fast float %4798, %4740
  %4800 = fmul fast float %4795, 0xBFE99999A0000000
  %4801 = fmul fast float %4800, %4686
  %4802 = fmul fast float %4801, %4697
  %4803 = fadd fast float %4802, 1.000000e+00
  %4804 = fadd fast float %4269, -1.000000e+00
  %4805 = fmul fast float %4803, %4804
  %4806 = fadd fast float %4805, 1.000000e+00
  %4807 = fsub fast float %4789, %4266
  %4808 = fsub fast float %4790, %4267
  %4809 = fsub fast float %4791, %4268
  %4810 = fmul fast float %4799, %4807
  %4811 = fmul fast float %4799, %4808
  %4812 = fmul fast float %4799, %4809
  %4813 = fadd fast float %4810, %4266
  %4814 = fadd fast float %4811, %4267
  %4815 = fadd fast float %4812, %4268
  %4816 = fsub fast float %119, %4245
  %4817 = fsub fast float %121, %4246
  %4818 = fsub fast float %123, %4247
  %4819 = fmul fast float %4799, %4816
  %4820 = fmul fast float %4799, %4817
  %4821 = fmul fast float %4799, %4818
  %4822 = fadd fast float %4819, %4245
  %4823 = fadd fast float %4820, %4246
  %4824 = fadd fast float %4821, %4247
  %4825 = fmul fast float %4799, %4794
  %4826 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4827 = fsub fast float 1.000000e+00, %4826
  %4828 = fmul fast float %4825, %4827
  %4829 = fadd fast float %4828, %4826
  %4830 = fsub fast float 1.000000e+00, %4229
  %4831 = fmul fast float %4799, %4830
  %4832 = fadd fast float %4831, %4229
  %4833 = call float @dx.op.dot3.f32(i32 55, float %4822, float %4823, float %4824, float %4822, float %4823, float %4824)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = call float @dx.op.unary.f32(i32 25, float %4833)  ; Rsqrt(value)
  %4835 = fmul fast float %4822, %4834
  %4836 = fmul fast float %4823, %4834
  %4837 = fmul fast float %4824, %4834
  br label %4838

; <label>:4838                                    ; preds = %4670, %4663
  %4839 = phi float [ %4669, %4663 ], [ %4676, %4670 ]
  %4840 = phi float [ %4668, %4663 ], [ %4674, %4670 ]
  %4841 = phi float [ %4667, %4663 ], [ %4672, %4670 ]
  %4842 = phi float [ %4666, %4663 ], [ %4675, %4670 ]
  %4843 = phi float [ %4665, %4663 ], [ %4673, %4670 ]
  %4844 = phi float [ %4664, %4663 ], [ %4671, %4670 ]
  %4845 = phi float [ %4281, %4663 ], [ %4722, %4670 ]
  %4846 = phi float [ %4282, %4663 ], [ %4723, %4670 ]
  %4847 = phi float [ %4283, %4663 ], [ %4724, %4670 ]
  %4848 = phi float [ %4266, %4663 ], [ %4813, %4670 ]
  %4849 = phi float [ %4267, %4663 ], [ %4814, %4670 ]
  %4850 = phi float [ %4268, %4663 ], [ %4815, %4670 ]
  %4851 = phi float [ %4245, %4663 ], [ %4835, %4670 ]
  %4852 = phi float [ %4246, %4663 ], [ %4836, %4670 ]
  %4853 = phi float [ %4247, %4663 ], [ %4837, %4670 ]
  %4854 = phi float [ %4269, %4663 ], [ %4829, %4670 ]
  %4855 = phi float [ %4229, %4663 ], [ %4832, %4670 ]
  %4856 = fsub fast float -0.000000e+00, %171
  %4857 = select i1 %231, float 0.000000e+00, float %4850
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4851, float %4852, float %4853, float %4841, float %4840, float %4839)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = call float @dx.op.dot3.f32(i32 55, float %4844, float %4843, float %4842, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4861 = fmul fast float %4860, 2.000000e+00
  %4862 = fmul fast float %4861, %4851
  %4863 = fmul fast float %4861, %4852
  %4864 = fmul fast float %4861, %4853
  %4865 = fsub fast float %4844, %4862
  %4866 = fsub fast float %4843, %4863
  %4867 = fsub fast float %4842, %4864
  %4868 = call float @dx.op.binary.f32(i32 36, float %4855, float 1.000000e+00)  ; FMin(a,b)
  %4869 = fsub fast float 1.000000e+00, %4868
  %4870 = bitcast float %4869 to i32
  %4871 = ashr i32 %4870, 1
  %4872 = add nsw i32 %4871, 532487669
  %4873 = bitcast i32 %4872 to float
  %4874 = fsub fast float 1.000000e+00, %4854
  %4875 = call float @dx.op.binary.f32(i32 35, float %4874, float 0x3F847AE140000000)  ; FMax(a,b)
  %4876 = fmul fast float %4875, %4875
  %4877 = fmul fast float %4876, %4876
  %4878 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %4873, float %4877, float %4878, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4880 = extractvalue %dx.types.ResRet.f32 %4879, 0
  %4881 = fsub fast float 1.000000e+00, %4855
  %4882 = bitcast float %4881 to i32
  %4883 = sub nsw i32 2129859010, %4882
  %4884 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = fmul fast float %4884, 0x3FD20DD760000000
  %4886 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %4887 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = fcmp fast oeq float %4887, 0.000000e+00
  %4889 = fcmp fast oeq float %4886, 0.000000e+00
  %4890 = or i1 %4889, %4888
  br i1 %4890, label %4920, label %4891

; <label>:4891                                    ; preds = %4838
  %4892 = fsub fast float -0.000000e+00, %81
  %4893 = fsub fast float -0.000000e+00, %79
  %4894 = call float @dx.op.unary.f32(i32 24, float %4887)  ; Sqrt(value)
  %4895 = fdiv fast float %4894, %4886
  %4896 = fcmp fast ogt float %4895, 0x3FFB6F8900000000
  %4897 = select i1 %4896, float 0x3FFB6F8900000000, float %4895
  %4898 = fmul fast float %4897, 0x3FE8A23460000000
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = call float @dx.op.binary.f32(i32 35, float %4897, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4901 = fmul fast float %4899, %4886
  %4902 = fmul fast float %4900, 0x3FF279A740000000
  %4903 = fadd fast float %4902, -1.000000e+00
  %4904 = call float @dx.op.dot3.f32(i32 55, float %4892, float %4893, float %80, float %4892, float %4893, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = call float @dx.op.unary.f32(i32 25, float %4904)  ; Rsqrt(value)
  %4906 = fmul fast float %4905, %4892
  %4907 = fmul fast float %4905, %4893
  %4908 = fmul fast float %4905, %80
  %4909 = fmul fast float %4903, %4903
  %4910 = fsub fast float 1.000000e+00, %4909
  %4911 = fmul fast float %4900, 0x40005F8BE0000000
  %4912 = fsub fast float 0x400C5BF8A0000000, %4911
  %4913 = fdiv fast float %4901, %4912
  %4914 = fmul fast float %4913, 0x3FEE31C3C0000000
  %4915 = fmul fast float %4914, %4910
  %4916 = fmul fast float %4900, 0x3FDACB7480000000
  %4917 = fadd fast float %4916, 0xBFD7347680000000
  %4918 = fmul fast float %4917, %4913
  %4919 = fmul fast float %4918, %4910
  br label %4920

; <label>:4920                                    ; preds = %4891, %4838
  %4921 = phi float [ %4906, %4891 ], [ 0.000000e+00, %4838 ]
  %4922 = phi float [ %4907, %4891 ], [ 0.000000e+00, %4838 ]
  %4923 = phi float [ %4908, %4891 ], [ 0.000000e+00, %4838 ]
  %4924 = phi float [ %4915, %4891 ], [ 0.000000e+00, %4838 ]
  %4925 = phi float [ %4919, %4891 ], [ 0.000000e+00, %4838 ]
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = fmul fast float %4926, %4926
  %4928 = fmul fast float %4927, 0x3FEE471020000000
  %4929 = fadd fast float %4928, 0xBFD42F6020000000
  %4930 = fmul fast float %4886, 0x3FD20DD760000000
  %4931 = fmul fast float %4929, %4925
  %4932 = fmul fast float %4924, 0x3FDF454380000000
  %4933 = fmul fast float %4932, %4926
  %4934 = fadd fast float %4933, %4930
  %4935 = fadd fast float %4934, %4931
  %4936 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float %4865, float %4866, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %4937 = fmul fast float %4936, 0x3FDF454380000000
  %4938 = fmul fast float %4936, %4936
  %4939 = fmul fast float %4938, 0x3FEE471020000000
  %4940 = fadd fast float %4939, 0xBFD42F6020000000
  %4941 = call float @dx.op.dot3.f32(i32 55, float %4886, float %4924, float %4925, float 0x3FD20DD760000000, float %4937, float %4940)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %4943 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = fcmp fast oeq float %4943, 0.000000e+00
  %4945 = fcmp fast oeq float %4942, 0.000000e+00
  %4946 = or i1 %4945, %4944
  br i1 %4946, label %4976, label %4947

; <label>:4947                                    ; preds = %4920
  %4948 = fsub fast float -0.000000e+00, %77
  %4949 = fsub fast float -0.000000e+00, %75
  %4950 = call float @dx.op.unary.f32(i32 24, float %4943)  ; Sqrt(value)
  %4951 = fdiv fast float %4950, %4942
  %4952 = fcmp fast ogt float %4951, 0x3FFB6F8900000000
  %4953 = select i1 %4952, float 0x3FFB6F8900000000, float %4951
  %4954 = fmul fast float %4953, 0x3FE8A23460000000
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = call float @dx.op.binary.f32(i32 35, float %4953, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4957 = fmul fast float %4955, %4942
  %4958 = fmul fast float %4956, 0x3FF279A740000000
  %4959 = fadd fast float %4958, -1.000000e+00
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4948, float %4949, float %76, float %4948, float %4949, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = call float @dx.op.unary.f32(i32 25, float %4960)  ; Rsqrt(value)
  %4962 = fmul fast float %4961, %4948
  %4963 = fmul fast float %4961, %4949
  %4964 = fmul fast float %4961, %76
  %4965 = fmul fast float %4959, %4959
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = fmul fast float %4956, 0x40005F8BE0000000
  %4968 = fsub fast float 0x400C5BF8A0000000, %4967
  %4969 = fdiv fast float %4957, %4968
  %4970 = fmul fast float %4969, 0x3FEE31C3C0000000
  %4971 = fmul fast float %4970, %4966
  %4972 = fmul fast float %4956, 0x3FDACB7480000000
  %4973 = fadd fast float %4972, 0xBFD7347680000000
  %4974 = fmul fast float %4973, %4969
  %4975 = fmul fast float %4974, %4966
  br label %4976

; <label>:4976                                    ; preds = %4947, %4920
  %4977 = phi float [ %4962, %4947 ], [ 0.000000e+00, %4920 ]
  %4978 = phi float [ %4963, %4947 ], [ 0.000000e+00, %4920 ]
  %4979 = phi float [ %4964, %4947 ], [ 0.000000e+00, %4920 ]
  %4980 = phi float [ %4971, %4947 ], [ 0.000000e+00, %4920 ]
  %4981 = phi float [ %4975, %4947 ], [ 0.000000e+00, %4920 ]
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4978, float %4979, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = fmul fast float %4982, %4982
  %4984 = fmul fast float %4983, 0x3FEE471020000000
  %4985 = fadd fast float %4984, 0xBFD42F6020000000
  %4986 = fmul fast float %4942, 0x3FD20DD760000000
  %4987 = fmul fast float %4985, %4981
  %4988 = fmul fast float %4980, 0x3FDF454380000000
  %4989 = fmul fast float %4988, %4982
  %4990 = fadd fast float %4989, %4986
  %4991 = fadd fast float %4990, %4987
  %4992 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4978, float %4979, float %4865, float %4866, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %4993 = fmul fast float %4992, 0x3FDF454380000000
  %4994 = fmul fast float %4992, %4992
  %4995 = fmul fast float %4994, 0x3FEE471020000000
  %4996 = fadd fast float %4995, 0xBFD42F6020000000
  %4997 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4980, float %4981, float 0x3FD20DD760000000, float %4993, float %4996)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %4999 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5000 = fcmp fast oeq float %4999, 0.000000e+00
  %5001 = fcmp fast oeq float %4998, 0.000000e+00
  %5002 = or i1 %5001, %5000
  br i1 %5002, label %5032, label %5003

; <label>:5003                                    ; preds = %4976
  %5004 = fsub fast float -0.000000e+00, %73
  %5005 = fsub fast float -0.000000e+00, %71
  %5006 = call float @dx.op.unary.f32(i32 24, float %4999)  ; Sqrt(value)
  %5007 = fdiv fast float %5006, %4998
  %5008 = fcmp fast ogt float %5007, 0x3FFB6F8900000000
  %5009 = select i1 %5008, float 0x3FFB6F8900000000, float %5007
  %5010 = fmul fast float %5009, 0x3FE8A23460000000
  %5011 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5012 = call float @dx.op.binary.f32(i32 35, float %5009, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5013 = fmul fast float %5011, %4998
  %5014 = fmul fast float %5012, 0x3FF279A740000000
  %5015 = fadd fast float %5014, -1.000000e+00
  %5016 = call float @dx.op.dot3.f32(i32 55, float %5004, float %5005, float %72, float %5004, float %5005, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5017 = call float @dx.op.unary.f32(i32 25, float %5016)  ; Rsqrt(value)
  %5018 = fmul fast float %5017, %5004
  %5019 = fmul fast float %5017, %5005
  %5020 = fmul fast float %5017, %72
  %5021 = fmul fast float %5015, %5015
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = fmul fast float %5012, 0x40005F8BE0000000
  %5024 = fsub fast float 0x400C5BF8A0000000, %5023
  %5025 = fdiv fast float %5013, %5024
  %5026 = fmul fast float %5025, 0x3FEE31C3C0000000
  %5027 = fmul fast float %5026, %5022
  %5028 = fmul fast float %5012, 0x3FDACB7480000000
  %5029 = fadd fast float %5028, 0xBFD7347680000000
  %5030 = fmul fast float %5029, %5025
  %5031 = fmul fast float %5030, %5022
  br label %5032

; <label>:5032                                    ; preds = %5003, %4976
  %5033 = phi float [ %5018, %5003 ], [ 0.000000e+00, %4976 ]
  %5034 = phi float [ %5019, %5003 ], [ 0.000000e+00, %4976 ]
  %5035 = phi float [ %5020, %5003 ], [ 0.000000e+00, %4976 ]
  %5036 = phi float [ %5027, %5003 ], [ 0.000000e+00, %4976 ]
  %5037 = phi float [ %5031, %5003 ], [ 0.000000e+00, %4976 ]
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5034, float %5035, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = fmul fast float %5038, %5038
  %5040 = fmul fast float %5039, 0x3FEE471020000000
  %5041 = fadd fast float %5040, 0xBFD42F6020000000
  %5042 = fmul fast float %4998, 0x3FD20DD760000000
  %5043 = fmul fast float %5041, %5037
  %5044 = fmul fast float %5036, 0x3FDF454380000000
  %5045 = fmul fast float %5044, %5038
  %5046 = fadd fast float %5045, %5042
  %5047 = fadd fast float %5046, %5043
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5034, float %5035, float %4865, float %4866, float %4867)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = fmul fast float %5048, 0x3FDF454380000000
  %5050 = fmul fast float %5048, %5048
  %5051 = fmul fast float %5050, 0x3FEE471020000000
  %5052 = fadd fast float %5051, 0xBFD42F6020000000
  %5053 = call float @dx.op.dot3.f32(i32 55, float %4998, float %5036, float %5037, float 0x3FD20DD760000000, float %5049, float %5052)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = call float @dx.op.binary.f32(i32 35, float %4935, float 0.000000e+00)  ; FMax(a,b)
  %5055 = call float @dx.op.binary.f32(i32 35, float %4991, float 0.000000e+00)  ; FMax(a,b)
  %5056 = call float @dx.op.binary.f32(i32 35, float %5047, float 0.000000e+00)  ; FMax(a,b)
  %5057 = call float @dx.op.binary.f32(i32 35, float %4941, float 0.000000e+00)  ; FMax(a,b)
  %5058 = call float @dx.op.binary.f32(i32 35, float %4997, float 0.000000e+00)  ; FMax(a,b)
  %5059 = call float @dx.op.binary.f32(i32 35, float %5053, float 0.000000e+00)  ; FMax(a,b)
  %5060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5061 = extractvalue %dx.types.CBufRet.f32 %5060, 0
  %5062 = call float @dx.op.binary.f32(i32 36, float %4845, float %5061)  ; FMin(a,b)
  %5063 = fmul fast float %5062, %4869
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = bitcast float %5064 to i32
  %5066 = sub nsw i32 2129859010, %5065
  %5067 = bitcast i32 %5066 to float
  %5068 = call float @dx.op.binary.f32(i32 36, float %4846, float %5061)  ; FMin(a,b)
  %5069 = fmul fast float %5068, %4869
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = bitcast float %5070 to i32
  %5072 = sub nsw i32 2129859010, %5071
  %5073 = bitcast i32 %5072 to float
  %5074 = call float @dx.op.binary.f32(i32 36, float %4847, float %5061)  ; FMin(a,b)
  %5075 = fmul fast float %5074, %4869
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = bitcast float %5076 to i32
  %5078 = sub nsw i32 2129859010, %5077
  %5079 = bitcast i32 %5078 to float
  %5080 = fmul fast float %5054, %4868
  %5081 = fmul fast float %5080, %5067
  %5082 = fmul fast float %5055, %4868
  %5083 = fmul fast float %5082, %5073
  %5084 = fmul fast float %5056, %4868
  %5085 = fmul fast float %5084, %5079
  %5086 = call float @dx.op.binary.f32(i32 36, float %4848, float %5061)  ; FMin(a,b)
  %5087 = fmul fast float %5086, %4869
  %5088 = fsub fast float 1.000000e+00, %5087
  %5089 = bitcast float %5088 to i32
  %5090 = sub nsw i32 2129859010, %5089
  %5091 = bitcast i32 %5090 to float
  %5092 = call float @dx.op.binary.f32(i32 36, float %4849, float %5061)  ; FMin(a,b)
  %5093 = fmul fast float %5092, %4869
  %5094 = fsub fast float 1.000000e+00, %5093
  %5095 = bitcast float %5094 to i32
  %5096 = sub nsw i32 2129859010, %5095
  %5097 = bitcast i32 %5096 to float
  %5098 = call float @dx.op.binary.f32(i32 36, float %4857, float %5061)  ; FMin(a,b)
  %5099 = fmul fast float %5098, %4869
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = bitcast float %5100 to i32
  %5102 = sub nsw i32 2129859010, %5101
  %5103 = bitcast i32 %5102 to float
  %5104 = fmul fast float %5057, %4868
  %5105 = fmul fast float %5104, %5091
  %5106 = fmul fast float %5058, %4868
  %5107 = fmul fast float %5106, %5097
  %5108 = fmul fast float %5059, %4868
  %5109 = fmul fast float %5108, %5103
  %5110 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5083, float %5085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = select i1 %231, float 0.000000e+00, float %5081
  %5112 = select i1 %231, float %5110, float %5083
  %5113 = select i1 %231, float 0.000000e+00, float %5085
  %5114 = call float @dx.op.dot3.f32(i32 55, float %5105, float %5107, float %5109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = select i1 %231, float 0.000000e+00, float %5105
  %5116 = select i1 %231, float %5114, float %5107
  %5117 = select i1 %231, float 0.000000e+00, float %5109
  %5118 = fmul fast float %4859, 9.843750e-01
  %5119 = fmul fast float %4854, 9.843750e-01
  %5120 = fadd fast float %5118, 7.812500e-03
  %5121 = fadd fast float %5119, 7.812500e-03
  %5122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5120, float %5121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5123 = extractvalue %dx.types.ResRet.f32 %5122, 2
  %5124 = extractvalue %dx.types.ResRet.f32 %5122, 3
  %5125 = fmul fast float %5123, %4848
  %5126 = fmul fast float %5123, %4849
  %5127 = fmul fast float %5123, %4857
  %5128 = fadd fast float %5125, %5124
  %5129 = fadd fast float %5126, %5124
  %5130 = fadd fast float %5127, %5124
  %5131 = fcmp fast ogt float %4222, 0.000000e+00
  br i1 %5131, label %5132, label %5158

; <label>:5132                                    ; preds = %5032
  %5133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4222, float %4859, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5134 = extractvalue %dx.types.ResRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.ResRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.ResRet.f32 %5133, 2
  %5137 = fadd fast float %5134, -5.000000e-01
  %5138 = fadd fast float %5135, -5.000000e-01
  %5139 = fadd fast float %5136, -5.000000e-01
  %5140 = fsub fast float 1.000000e+00, %4848
  %5141 = fsub fast float 1.000000e+00, %4849
  %5142 = fsub fast float 1.000000e+00, %4857
  %5143 = fmul fast float %4848, 4.000000e+00
  %5144 = fmul fast float %5143, %5140
  %5145 = fmul fast float %5144, %5137
  %5146 = fmul fast float %4849, 4.000000e+00
  %5147 = fmul fast float %5146, %5141
  %5148 = fmul fast float %5147, %5138
  %5149 = fmul fast float %4857, 4.000000e+00
  %5150 = fmul fast float %5149, %5142
  %5151 = fmul fast float %5150, %5139
  %5152 = fadd fast float %5145, %5128
  %5153 = fadd fast float %5148, %5129
  %5154 = fadd fast float %5151, %5130
  %5155 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5156 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5157 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  br label %5158

; <label>:5158                                    ; preds = %5132, %5032
  %5159 = phi float [ %5155, %5132 ], [ %5128, %5032 ]
  %5160 = phi float [ %5156, %5132 ], [ %5129, %5032 ]
  %5161 = phi float [ %5157, %5132 ], [ %5130, %5032 ]
  %5162 = call float @dx.op.binary.f32(i32 35, float %5160, float %5161)  ; FMax(a,b)
  %5163 = call float @dx.op.binary.f32(i32 35, float %5159, float %5162)  ; FMax(a,b)
  %5164 = fsub fast float 1.000000e+00, %5163
  %5165 = fmul fast float %5163, %4854
  %5166 = fadd fast float %5165, %4854
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 2
  %5169 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5170 = fmul fast float %5166, %5168
  %5171 = fadd fast float %5170, %5169
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fsub fast float 1.000000e+00, %4880
  %5174 = fadd fast float %5173, %5172
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = fcmp fast olt float %5175, 1.000000e+00
  br i1 %5176, label %5177, label %5653

; <label>:5177                                    ; preds = %5158
  %5178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5178, 2
  %5180 = extractvalue %dx.types.CBufRet.f32 %5178, 3
  %5181 = fmul fast float %5179, %110
  %5182 = fmul fast float %5180, %111
  %5183 = fptoui float %5181 to i32
  %5184 = fptoui float %5182 to i32
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.CBufRet.f32 %5185, 2
  %5188 = extractvalue %dx.types.CBufRet.f32 %5185, 3
  %5189 = fadd fast float %98, -4.000000e+00
  %5190 = call float @dx.op.binary.f32(i32 35, float %5189, float 0.000000e+00)  ; FMax(a,b)
  %5191 = fadd fast float %5190, %5186
  %5192 = fmul fast float %5191, %5187
  %5193 = call float @dx.op.unary.f32(i32 23, float %5192)  ; Log(value)
  %5194 = fmul fast float %5193, %5188
  %5195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5196 = extractvalue %dx.types.CBufRet.f32 %5195, 2
  %5197 = fmul fast float %5194, %5196
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.i32 %5199, 1
  %5201 = add i32 %5200, -1
  %5202 = uitofp i32 %5200 to float
  %5203 = fmul fast float %5202, %5198
  %5204 = fptoui float %5203 to i32
  %5205 = call i32 @dx.op.binary.i32(i32 40, i32 %5204, i32 %5201)  ; UMin(a,b)
  %5206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.i32 %5206, 2
  %5208 = extractvalue %dx.types.CBufRet.i32 %5206, 3
  %5209 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5184, i32 %5207, i32 %5183)  ; UMad(a,b,c)
  %5210 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5205, i32 %5208, i32 %5209)  ; UMad(a,b,c)
  %5211 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %5212 = fptoui float %5211 to i32
  %5213 = lshr i32 %5212, 5
  %5214 = call i32 @dx.op.binary.i32(i32 40, i32 %5213, i32 8191)  ; UMin(a,b)
  %5215 = fsub fast float %4647, %171
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5217 = fcmp fast ogt float %5216, 0.000000e+00
  %5218 = fcmp fast ogt float %4867, 0.000000e+00
  %5219 = and i1 %5218, %5217
  br i1 %5219, label %5220, label %5249

; <label>:5220                                    ; preds = %5177
  %5221 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %4867, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = call float @dx.op.binary.f32(i32 35, float %5221, float -1.000000e+00)  ; FMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 36, float %5222, float 1.000000e+00)  ; FMin(a,b)
  %5224 = fmul fast float %5223, %5223
  %5225 = fsub fast float 1.000000e+00, %5224
  %5226 = fmul fast float %5225, 0x3FFC6E2300000000
  %5227 = fsub fast float 1.000000e+00, %5226
  %5228 = fcmp fast ogt float %5227, 0.000000e+00
  %5229 = call float @dx.op.unary.f32(i32 24, float %5227)  ; Sqrt(value)
  %5230 = fsub fast float 1.000000e+00, %5229
  %5231 = call float @dx.op.unary.f32(i32 23, float %5230)  ; Log(value)
  %5232 = fmul fast float %5231, 5.000000e+00
  %5233 = call float @dx.op.unary.f32(i32 21, float %5232)  ; Exp(value)
  %5234 = fmul fast float %5233, 0x3FEF591A60000000
  %5235 = fadd fast float %5234, 0x3F94DCB540000000
  %5236 = select i1 %5228, float %5235, float 1.000000e+00
  %5237 = fcmp fast oge float %5236, 1.000000e+00
  %5238 = fmul fast float %5221, 2.000000e+00
  %5239 = fadd fast float %5238, %4867
  %5240 = select i1 %5237, float %5239, float %4867
  %5241 = fsub fast float %5240, %4867
  %5242 = fmul fast float %5241, %5216
  %5243 = fadd fast float %5242, %4867
  %5244 = call float @dx.op.dot3.f32(i32 55, float %4865, float %4866, float %5243, float %4865, float %4866, float %5243)  ; Dot3(ax,ay,az,bx,by,bz)
  %5245 = call float @dx.op.unary.f32(i32 25, float %5244)  ; Rsqrt(value)
  %5246 = fmul fast float %5245, %4865
  %5247 = fmul fast float %5245, %4866
  %5248 = fmul fast float %5243, %5245
  br label %5249

; <label>:5249                                    ; preds = %5220, %5177
  %5250 = phi float [ %5246, %5220 ], [ %4865, %5177 ]
  %5251 = phi float [ %5247, %5220 ], [ %4866, %5177 ]
  %5252 = phi float [ %5248, %5220 ], [ %4867, %5177 ]
  %5253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5254 = extractvalue %dx.types.CBufRet.i32 %5253, 2
  %5255 = add nsw i32 %5254, -1
  %5256 = call i32 @dx.op.binary.i32(i32 37, i32 %5255, i32 0)  ; IMax(a,b)
  %5257 = shl i32 %5214, 2
  %5258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5257, i32 undef)  ; BufferLoad(srv,index,wot)
  %5259 = extractvalue %dx.types.ResRet.i32 %5258, 0
  %5260 = lshr i32 %5259, 16
  %5261 = and i32 %5259, 65535
  %5262 = lshr i32 %5259, 21
  %5263 = lshr i32 %5261, 5
  %5264 = call i32 @dx.op.binary.i32(i32 40, i32 %5263, i32 %5256)  ; UMin(a,b)
  %5265 = icmp ugt i32 %5262, %5264
  br i1 %5265, label %5629, label %5266

; <label>:5266                                    ; preds = %5249
  br label %5267

; <label>:5267                                    ; preds = %5621, %5266
  %5268 = phi float [ %5622, %5621 ], [ 0.000000e+00, %5266 ]
  %5269 = phi float [ %5623, %5621 ], [ 0.000000e+00, %5266 ]
  %5270 = phi float [ %5624, %5621 ], [ 0.000000e+00, %5266 ]
  %5271 = phi float [ %5625, %5621 ], [ 1.000000e+00, %5266 ]
  %5272 = phi i32 [ %5626, %5621 ], [ %5262, %5266 ]
  %5273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.i32 %5273, 2
  %5275 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5210, i32 %5274, i32 %5272)  ; UMad(a,b,c)
  %5276 = shl i32 %5275, 2
  %5277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.i32 %5277, 0
  %5279 = shl i32 %5272, 5
  %5280 = sub nsw i32 %5260, %5279
  %5281 = call i32 @dx.op.binary.i32(i32 37, i32 %5280, i32 0)  ; IMax(a,b)
  %5282 = call i32 @dx.op.binary.i32(i32 38, i32 %5281, i32 31)  ; IMin(a,b)
  %5283 = sub nsw i32 1, %5260
  %5284 = add nsw i32 %5283, %5261
  %5285 = call i32 @dx.op.binary.i32(i32 37, i32 %5284, i32 0)  ; IMax(a,b)
  %5286 = call i32 @dx.op.binary.i32(i32 38, i32 %5285, i32 32)  ; IMin(a,b)
  %5287 = and i32 %5286, 31
  %5288 = shl i32 -1, %5287
  %5289 = xor i32 %5288, -1
  %5290 = and i32 %5282, 31
  %5291 = shl i32 %5289, %5290
  %5292 = icmp eq i32 %5286, 32
  %5293 = select i1 %5292, i32 -1, i32 %5291
  %5294 = and i32 %5293, %5278
  %5295 = icmp eq i32 %5294, 0
  br i1 %5295, label %5621, label %5296

; <label>:5296                                    ; preds = %5267
  br label %5297

; <label>:5297                                    ; preds = %5404, %5296
  %5298 = phi float [ %5405, %5404 ], [ %5268, %5296 ]
  %5299 = phi float [ %5406, %5404 ], [ %5269, %5296 ]
  %5300 = phi float [ %5407, %5404 ], [ %5270, %5296 ]
  %5301 = phi float [ %5408, %5404 ], [ %5271, %5296 ]
  %5302 = phi i32 [ %5307, %5404 ], [ %5294, %5296 ]
  %5303 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5302)  ; FirstbitLo(value)
  %5304 = add i32 %5303, %5279
  %5305 = and i32 %5303, 31
  %5306 = shl i32 1, %5305
  %5307 = xor i32 %5306, %5302
  %5308 = mul i32 %5304, 72
  %5309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5308, i32 undef)  ; BufferLoad(srv,index,wot)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 0
  %5311 = extractvalue %dx.types.ResRet.f32 %5309, 1
  %5312 = extractvalue %dx.types.ResRet.f32 %5309, 2
  %5313 = add i32 %5308, 12
  %5314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5313, i32 undef)  ; BufferLoad(srv,index,wot)
  %5315 = extractvalue %dx.types.ResRet.i32 %5314, 0
  %5316 = add i32 %5308, 16
  %5317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5316, i32 undef)  ; BufferLoad(srv,index,wot)
  %5318 = extractvalue %dx.types.ResRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.ResRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.ResRet.f32 %5317, 2
  %5321 = add i32 %5308, 28
  %5322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5321, i32 undef)  ; BufferLoad(srv,index,wot)
  %5323 = extractvalue %dx.types.ResRet.f32 %5322, 0
  %5324 = add i32 %5308, 32
  %5325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5324, i32 undef)  ; BufferLoad(srv,index,wot)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.ResRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.ResRet.f32 %5325, 2
  %5329 = extractvalue %dx.types.ResRet.f32 %5325, 3
  %5330 = add i32 %5308, 48
  %5331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5330, i32 undef)  ; BufferLoad(srv,index,wot)
  %5332 = extractvalue %dx.types.ResRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.ResRet.f32 %5331, 1
  %5334 = add i32 %5308, 56
  %5335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5334, i32 undef)  ; BufferLoad(srv,index,wot)
  %5336 = extractvalue %dx.types.ResRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.ResRet.f32 %5335, 1
  %5338 = add i32 %5308, 64
  %5339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5338, i32 undef)  ; BufferLoad(srv,index,wot)
  %5340 = extractvalue %dx.types.ResRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.ResRet.f32 %5339, 1
  %5342 = mul i32 %5304, 60
  %5343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5342, i32 undef)  ; BufferLoad(srv,index,wot)
  %5344 = extractvalue %dx.types.ResRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.ResRet.f32 %5343, 1
  %5346 = extractvalue %dx.types.ResRet.f32 %5343, 2
  %5347 = add i32 %5342, 12
  %5348 = add i32 %5342, 48
  %5349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5348, i32 undef)  ; BufferLoad(srv,index,wot)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5353 = and i32 %5315, 32767
  %5354 = bitcast float %5310 to i32
  %5355 = icmp eq i32 %5354, -1
  %5356 = bitcast float %5311 to i32
  %5357 = and i32 %5315, 32768
  %5358 = icmp ne i32 %5357, 0
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.CBufRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.CBufRet.f32 %5359, 2
  %5363 = fsub fast float %5344, %5360
  %5364 = fsub fast float %5345, %5361
  %5365 = fsub fast float %5346, %5362
  %5366 = fsub fast float %169, %5363
  %5367 = fsub fast float %170, %5364
  %5368 = fsub fast float %171, %5365
  %5369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5347, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5367, float %5368, float %5370, float %5371, float %5372)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = add i32 %5342, 24
  %5375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5374, i32 undef)  ; BufferLoad(srv,index,wot)
  %5376 = extractvalue %dx.types.ResRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.ResRet.f32 %5375, 1
  %5378 = extractvalue %dx.types.ResRet.f32 %5375, 2
  %5379 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5367, float %5368, float %5376, float %5377, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = add i32 %5342, 36
  %5381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5380, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.ResRet.f32 %5381, 1
  %5384 = extractvalue %dx.types.ResRet.f32 %5381, 2
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5367, float %5368, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = call float @dx.op.unary.f32(i32 6, float %5373)  ; FAbs(value)
  %5387 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5388 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5389 = fsub fast float %5350, %5386
  %5390 = fsub fast float %5351, %5387
  %5391 = fsub fast float %5352, %5388
  %5392 = fmul fast float %5389, %5318
  %5393 = fmul fast float %5390, %5319
  %5394 = fmul fast float %5391, %5320
  %5395 = call float @dx.op.binary.f32(i32 36, float %5393, float %5394)  ; FMin(a,b)
  %5396 = call float @dx.op.binary.f32(i32 36, float %5392, float %5395)  ; FMin(a,b)
  %5397 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5398 = call float @dx.op.binary.f32(i32 36, float %5301, float %5397)  ; FMin(a,b)
  %5399 = uitofp i1 %5358 to float
  %5400 = fadd fast float %5216, 1.000000e+00
  %5401 = fsub fast float %5400, %5399
  %5402 = fmul fast float %5398, %5401
  %5403 = fcmp fast ogt float %5402, 0.000000e+00
  br i1 %5403, label %5410, label %5404

; <label>:5404                                    ; preds = %5552, %5297
  %5405 = phi float [ %5616, %5552 ], [ %5298, %5297 ]
  %5406 = phi float [ %5617, %5552 ], [ %5299, %5297 ]
  %5407 = phi float [ %5618, %5552 ], [ %5300, %5297 ]
  %5408 = phi float [ %5619, %5552 ], [ %5301, %5297 ]
  %5409 = icmp eq i32 %5302, %5306
  br i1 %5409, label %5620, label %5297

; <label>:5410                                    ; preds = %5297
  br i1 %5355, label %5468, label %5411

; <label>:5411                                    ; preds = %5410
  %5412 = fsub fast float -0.000000e+00, %5370
  %5413 = fsub fast float -0.000000e+00, %5371
  %5414 = fsub fast float -0.000000e+00, %5372
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5251, float %5252, float %5412, float %5413, float %5414)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = fsub fast float -0.000000e+00, %5415
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5367, float %5368, float %5412, float %5413, float %5414)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = fadd fast float %5417, %5333
  %5419 = fadd fast float %5332, %5417
  %5420 = fsub fast float -0.000000e+00, %5419
  %5421 = fcmp ogt float %5415, -0.000000e+00
  %5422 = select i1 %5421, float %5420, float %5418
  %5423 = call float @dx.op.unary.f32(i32 6, float %5416)  ; FAbs(value)
  %5424 = fdiv fast float 1.000000e+00, %5423
  %5425 = fmul fast float %5422, %5424
  %5426 = call float @dx.op.binary.f32(i32 35, float %5425, float 0.000000e+00)  ; FMax(a,b)
  %5427 = fsub fast float -0.000000e+00, %5376
  %5428 = fsub fast float -0.000000e+00, %5377
  %5429 = fsub fast float -0.000000e+00, %5378
  %5430 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5251, float %5252, float %5427, float %5428, float %5429)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = fsub fast float -0.000000e+00, %5430
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5367, float %5368, float %5427, float %5428, float %5429)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = fadd fast float %5432, %5337
  %5434 = fadd fast float %5336, %5432
  %5435 = fsub fast float -0.000000e+00, %5434
  %5436 = fcmp ogt float %5430, -0.000000e+00
  %5437 = select i1 %5436, float %5435, float %5433
  %5438 = call float @dx.op.unary.f32(i32 6, float %5431)  ; FAbs(value)
  %5439 = fdiv fast float 1.000000e+00, %5438
  %5440 = fmul fast float %5437, %5439
  %5441 = call float @dx.op.binary.f32(i32 35, float %5440, float 0.000000e+00)  ; FMax(a,b)
  %5442 = fsub fast float -0.000000e+00, %5382
  %5443 = fsub fast float -0.000000e+00, %5383
  %5444 = fsub fast float -0.000000e+00, %5384
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5251, float %5252, float %5442, float %5443, float %5444)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = fsub fast float -0.000000e+00, %5445
  %5447 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5367, float %5368, float %5442, float %5443, float %5444)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = fadd fast float %5447, %5341
  %5449 = fadd fast float %5340, %5447
  %5450 = fsub fast float -0.000000e+00, %5449
  %5451 = fcmp ogt float %5445, -0.000000e+00
  %5452 = select i1 %5451, float %5450, float %5448
  %5453 = call float @dx.op.unary.f32(i32 6, float %5446)  ; FAbs(value)
  %5454 = fdiv fast float 1.000000e+00, %5453
  %5455 = fmul fast float %5452, %5454
  %5456 = call float @dx.op.binary.f32(i32 35, float %5455, float 0.000000e+00)  ; FMax(a,b)
  %5457 = call float @dx.op.binary.f32(i32 36, float %5441, float %5456)  ; FMin(a,b)
  %5458 = call float @dx.op.binary.f32(i32 36, float %5426, float %5457)  ; FMin(a,b)
  %5459 = fmul fast float %5458, %5250
  %5460 = fmul fast float %5458, %5251
  %5461 = fmul fast float %5458, %5252
  %5462 = fadd fast float %5459, %169
  %5463 = fadd fast float %5460, %170
  %5464 = fadd fast float %5461, %171
  %5465 = fsub fast float %5462, %5310
  %5466 = fsub fast float %5463, %5311
  %5467 = fsub fast float %5464, %5312
  br label %5475

; <label>:5468                                    ; preds = %5410
  %5469 = fmul fast float %5250, 8.096000e+03
  %5470 = fmul fast float %5251, 8.096000e+03
  %5471 = fmul fast float %5252, 8.096000e+03
  %5472 = fadd fast float %5469, %169
  %5473 = fadd fast float %5470, %170
  %5474 = fadd fast float %5471, %171
  br label %5475

; <label>:5475                                    ; preds = %5468, %5411
  %5476 = phi float [ %5250, %5468 ], [ %5465, %5411 ]
  %5477 = phi float [ %5251, %5468 ], [ %5466, %5411 ]
  %5478 = phi float [ %5252, %5468 ], [ %5467, %5411 ]
  %5479 = phi float [ %5472, %5468 ], [ %5462, %5411 ]
  %5480 = phi float [ %5473, %5468 ], [ %5463, %5411 ]
  %5481 = phi float [ %5474, %5468 ], [ %5464, %5411 ]
  %5482 = fcmp fast olt float %5329, 1.000000e+00
  br i1 %5482, label %5483, label %5514, !dx.controlflow.hints !100

; <label>:5483                                    ; preds = %5475
  %5484 = fmul fast float %5478, %5327
  %5485 = fmul fast float %5477, %5328
  %5486 = fsub fast float %5484, %5485
  %5487 = fmul fast float %5476, %5328
  %5488 = fmul fast float %5478, %5326
  %5489 = fsub fast float %5487, %5488
  %5490 = fmul fast float %5477, %5326
  %5491 = fmul fast float %5476, %5327
  %5492 = fsub fast float %5490, %5491
  %5493 = fmul fast float %5486, 2.000000e+00
  %5494 = fmul fast float %5489, 2.000000e+00
  %5495 = fmul fast float %5492, 2.000000e+00
  %5496 = fmul fast float %5493, %5329
  %5497 = fmul fast float %5494, %5329
  %5498 = fmul fast float %5495, %5329
  %5499 = fmul fast float %5495, %5327
  %5500 = fmul fast float %5494, %5328
  %5501 = fmul fast float %5493, %5328
  %5502 = fmul fast float %5495, %5326
  %5503 = fmul fast float %5494, %5326
  %5504 = fmul fast float %5493, %5327
  %5505 = fadd fast float %5499, %5476
  %5506 = fadd fast float %5505, %5496
  %5507 = fsub fast float %5506, %5500
  %5508 = fsub fast float %5477, %5502
  %5509 = fadd fast float %5508, %5497
  %5510 = fadd fast float %5509, %5501
  %5511 = fadd fast float %5498, %5478
  %5512 = fsub fast float %5511, %5504
  %5513 = fadd fast float %5512, %5503
  br label %5514

; <label>:5514                                    ; preds = %5483, %5475
  %5515 = phi float [ %5507, %5483 ], [ %5476, %5475 ]
  %5516 = phi float [ %5510, %5483 ], [ %5477, %5475 ]
  %5517 = phi float [ %5513, %5483 ], [ %5478, %5475 ]
  br i1 %5355, label %5549, label %5518

; <label>:5518                                    ; preds = %5514
  %5519 = fmul fast float %4854, 0x400187C840000000
  %5520 = fadd fast float %5519, 0xC00EFC2120000000
  %5521 = fmul fast float %5520, %4854
  %5522 = fadd fast float %5521, 0x3FE5D16340000000
  %5523 = fmul fast float %5522, %4854
  %5524 = fadd fast float %5523, 1.000000e+00
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = fsub fast float %5479, %169
  %5527 = fsub fast float %5480, %170
  %5528 = fsub fast float %5481, %171
  %5529 = fsub fast float %5479, %5310
  %5530 = fsub fast float %5480, %5311
  %5531 = fsub fast float %5481, %5312
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5526, float %5527, float %5528, float %5526, float %5527, float %5528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5529, float %5530, float %5531, float %5529, float %5530, float %5531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fadd fast float %5533, 0x3EE4F8B580000000
  %5535 = fdiv fast float %5532, %5534
  %5536 = bitcast float %5535 to i32
  %5537 = ashr i32 %5536, 1
  %5538 = add nsw i32 %5537, 532487669
  %5539 = bitcast i32 %5538 to float
  %5540 = fmul fast float %5539, %5525
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = fmul fast float %5541, 0x4009981AE0000000
  %5543 = fsub fast float 0x40111BBD80000000, %5542
  %5544 = fmul fast float %5543, %5541
  %5545 = fadd fast float %5544, 0xC0009F6020000000
  %5546 = fmul fast float %5545, %5541
  %5547 = fadd fast float %5546, 1.000000e+00
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  br label %5552

; <label>:5549                                    ; preds = %5514
  %5550 = icmp ne i32 %5356, -1
  %5551 = zext i1 %5550 to i32
  br label %5552

; <label>:5552                                    ; preds = %5549, %5518
  %5553 = phi float [ %4854, %5549 ], [ %5548, %5518 ]
  %5554 = phi i32 [ %5551, %5549 ], [ 0, %5518 ]
  %5555 = fmul float %5553, 5.000000e+00
  %5556 = fsub float 5.000000e+00, %5555
  %5557 = icmp ne i32 %5554, 0
  %5558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.f32 %5558, 3
  %5560 = fadd fast float %5559, %5556
  %5561 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5560)  ; FMax(a,b)
  %5562 = call float @dx.op.unary.f32(i32 6, float %5515)  ; FAbs(value)
  %5563 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5564 = fadd fast float %5563, %5562
  %5565 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5566 = fadd fast float %5564, %5565
  %5567 = fcmp fast oeq float %5566, 0.000000e+00
  %5568 = fdiv fast float 1.000000e+00, %5566
  %5569 = select i1 %5567, float 1.000000e+00, float %5568
  %5570 = fmul fast float %5569, %5515
  %5571 = fmul fast float %5569, %5516
  %5572 = call float @dx.op.unary.f32(i32 6, float %5571)  ; FAbs(value)
  %5573 = call float @dx.op.unary.f32(i32 6, float %5570)  ; FAbs(value)
  %5574 = fsub fast float 1.000000e+00, %5572
  %5575 = fsub fast float 1.000000e+00, %5573
  %5576 = fcmp fast oge float %5570, 0.000000e+00
  %5577 = fcmp fast oge float %5571, 0.000000e+00
  %5578 = select i1 %5576, float 1.000000e+00, float -1.000000e+00
  %5579 = select i1 %5577, float 1.000000e+00, float -1.000000e+00
  %5580 = fcmp fast ole float %5517, 0.000000e+00
  %5581 = fmul fast float %5578, %5574
  %5582 = fmul fast float %5579, %5575
  %5583 = select i1 %5580, float %5581, float %5570
  %5584 = select i1 %5580, float %5582, float %5571
  %5585 = fmul fast float %5583, 5.000000e-01
  %5586 = fmul fast float %5584, 5.000000e-01
  %5587 = fadd fast float %5585, 5.000000e-01
  %5588 = fadd fast float %5586, 5.000000e-01
  %5589 = uitofp i32 %5353 to float
  %5590 = call float @dx.op.binary.f32(i32 36, float %5561, float 3.000000e+00)  ; FMin(a,b)
  %5591 = fadd fast float %5590, 2.000000e+00
  %5592 = call float @dx.op.unary.f32(i32 21, float %5591)  ; Exp(value)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5558, 1
  %5594 = fmul fast float %5593, %5592
  %5595 = fmul fast float %5594, 2.000000e+00
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = fmul fast float %5587, %5596
  %5598 = fmul fast float %5588, %5596
  %5599 = fadd fast float %5597, %5594
  %5600 = fadd fast float %5598, %5594
  %5601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %5599, float %5600, float %5589, float undef, i32 0, i32 0, i32 undef, float %5561)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5602 = extractvalue %dx.types.ResRet.f32 %5601, 0
  %5603 = extractvalue %dx.types.ResRet.f32 %5601, 1
  %5604 = extractvalue %dx.types.ResRet.f32 %5601, 2
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 3
  %5607 = fmul fast float %5606, %5323
  %5608 = call float @dx.op.binary.f32(i32 36, float %4885, float %5607)  ; FMin(a,b)
  %5609 = select i1 %5557, float %5608, float %5607
  %5610 = fmul fast float %5602, %5402
  %5611 = fmul fast float %5610, %5609
  %5612 = fmul fast float %5603, %5402
  %5613 = fmul fast float %5612, %5609
  %5614 = fmul fast float %5604, %5402
  %5615 = fmul fast float %5614, %5609
  %5616 = fadd fast float %5611, %5298
  %5617 = fadd fast float %5613, %5299
  %5618 = fadd fast float %5615, %5300
  %5619 = fsub fast float %5301, %5402
  br label %5404

; <label>:5620                                    ; preds = %5404
  br label %5621

; <label>:5621                                    ; preds = %5620, %5267
  %5622 = phi float [ %5268, %5267 ], [ %5405, %5620 ]
  %5623 = phi float [ %5269, %5267 ], [ %5406, %5620 ]
  %5624 = phi float [ %5270, %5267 ], [ %5407, %5620 ]
  %5625 = phi float [ %5271, %5267 ], [ %5408, %5620 ]
  %5626 = add i32 %5272, 1
  %5627 = icmp ugt i32 %5626, %5264
  br i1 %5627, label %5628, label %5267, !llvm.loop !101

; <label>:5628                                    ; preds = %5621
  br label %5629

; <label>:5629                                    ; preds = %5628, %5249
  %5630 = phi float [ 0.000000e+00, %5249 ], [ %5622, %5628 ]
  %5631 = phi float [ 0.000000e+00, %5249 ], [ %5623, %5628 ]
  %5632 = phi float [ 0.000000e+00, %5249 ], [ %5624, %5628 ]
  %5633 = call float @dx.op.dot3.f32(i32 55, float %5630, float %5631, float %5632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = select i1 %231, float 0.000000e+00, float %5630
  %5635 = select i1 %231, float %5633, float %5631
  %5636 = select i1 %231, float 0.000000e+00, float %5632
  %5637 = fcmp fast olt float %5175, 0.000000e+00
  %5638 = call float @dx.op.unary.f32(i32 6, float %5175)  ; FAbs(value)
  %5639 = fmul fast float %5638, %5115
  %5640 = fmul fast float %5638, %5116
  %5641 = fmul fast float %5638, %5117
  %5642 = select i1 %5637, float %5115, float %5639
  %5643 = select i1 %5637, float %5116, float %5640
  %5644 = select i1 %5637, float %5117, float %5641
  %5645 = fsub fast float 1.000000e+00, %5638
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = fmul fast float %5646, %5634
  %5648 = fmul fast float %5646, %5635
  %5649 = fmul fast float %5646, %5636
  %5650 = fadd fast float %5642, %5647
  %5651 = fadd fast float %5643, %5648
  %5652 = fadd fast float %5644, %5649
  br label %5653

; <label>:5653                                    ; preds = %5629, %5158
  %5654 = phi float [ %5115, %5158 ], [ %5650, %5629 ]
  %5655 = phi float [ %5116, %5158 ], [ %5651, %5629 ]
  %5656 = phi float [ %5117, %5158 ], [ %5652, %5629 ]
  %5657 = fmul fast float %5164, %5111
  %5658 = fmul fast float %5164, %5112
  %5659 = fmul fast float %5164, %5113
  %5660 = call float @dx.op.dot3.f32(i32 55, float %4845, float %4846, float %4847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5661 = fcmp fast ogt float %5660, 0x3E7FF19E20000000
  %5662 = fdiv fast float 1.000000e+00, %5660
  %5663 = select i1 %5661, float %5662, float 0.000000e+00
  %5664 = fmul fast float %5663, %4845
  %5665 = fmul fast float %5663, %4846
  %5666 = fmul fast float %5663, %4847
  %5667 = fadd fast float %5664, -1.000000e+00
  %5668 = fadd fast float %5665, -1.000000e+00
  %5669 = fadd fast float %5666, -1.000000e+00
  %5670 = fmul fast float %5667, 5.000000e-01
  %5671 = fmul fast float %5668, 5.000000e-01
  %5672 = fmul fast float %5669, 5.000000e-01
  %5673 = fadd fast float %5670, 1.000000e+00
  %5674 = fadd fast float %5671, 1.000000e+00
  %5675 = fadd fast float %5672, 1.000000e+00
  %5676 = fmul fast float %5654, %5159
  %5677 = fmul fast float %5655, %5160
  %5678 = fmul fast float %5656, %5161
  %5679 = fsub fast float 1.000000e+00, %4859
  %5680 = bitcast float %5679 to i32
  %5681 = sitofp i32 %5680 to float
  %5682 = fmul fast float %5681, 5.000000e+00
  %5683 = fadd fast float %5682, 0xC1EFBF8940000000
  %5684 = fptosi float %5683 to i32
  %5685 = bitcast i32 %5684 to float
  %5686 = fmul fast float %5685, %4221
  %5687 = fmul fast float %5111, %5686
  %5688 = fmul fast float %5687, %5164
  %5689 = fmul fast float %5688, %5673
  %5690 = fmul fast float %5112, %5686
  %5691 = fmul fast float %5690, %5164
  %5692 = fmul fast float %5691, %5674
  %5693 = fmul fast float %5113, %5686
  %5694 = fmul fast float %5693, %5164
  %5695 = fmul fast float %5694, %5675
  %5696 = fmul fast float %5657, %4242
  %5697 = fmul fast float %5658, %4242
  %5698 = fmul fast float %5659, %4242
  %5699 = fadd fast float %5676, %4223
  %5700 = fadd fast float %5699, %5689
  %5701 = fmul fast float %5700, %4242
  %5702 = fadd fast float %5677, %4224
  %5703 = fadd fast float %5702, %5692
  %5704 = fmul fast float %5703, %4242
  %5705 = fadd fast float %5678, %4225
  %5706 = fadd fast float %5705, %5695
  %5707 = fmul fast float %5706, %4242
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 3
  %5710 = fcmp fast oeq float %5709, 0.000000e+00
  br i1 %5710, label %7253, label %5711

; <label>:5711                                    ; preds = %5653
  %5712 = extractvalue %dx.types.CBufRet.f32 %5708, 0
  %5713 = extractvalue %dx.types.CBufRet.f32 %5708, 1
  %5714 = extractvalue %dx.types.CBufRet.f32 %5708, 2
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = extractvalue %dx.types.CBufRet.f32 %5715, 1
  %5718 = extractvalue %dx.types.CBufRet.f32 %5715, 2
  %5719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.CBufRet.f32 %5719, 1
  %5722 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5723 = select i1 %231, float %5720, float %5716
  %5724 = select i1 %231, float %5722, float %5717
  %5725 = select i1 %231, float %5721, float %5718
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5728 = fmul fast float %5727, %119
  %5729 = fmul fast float %5727, %121
  %5730 = fmul fast float %5727, %123
  %5731 = fadd fast float %5728, %169
  %5732 = fadd fast float %5729, %170
  %5733 = fadd fast float %5730, %171
  %5734 = fcmp fast olt float %5709, 0.000000e+00
  br i1 %5734, label %6830, label %5735

; <label>:5735                                    ; preds = %5711
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 0
  %5738 = extractvalue %dx.types.CBufRet.f32 %5736, 1
  %5739 = extractvalue %dx.types.CBufRet.f32 %5736, 2
  %5740 = extractvalue %dx.types.CBufRet.f32 %5736, 3
  %5741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.CBufRet.f32 %5741, 1
  %5744 = extractvalue %dx.types.CBufRet.f32 %5741, 2
  %5745 = extractvalue %dx.types.CBufRet.f32 %5741, 3
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5750 = extractvalue %dx.types.CBufRet.f32 %5746, 3
  %5751 = fmul fast float %5737, %5731
  %5752 = call float @dx.op.tertiary.f32(i32 46, float %5732, float %5738, float %5751)  ; FMad(a,b,c)
  %5753 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %5739, float %5752)  ; FMad(a,b,c)
  %5754 = fadd fast float %5753, %5740
  %5755 = fmul fast float %5742, %5731
  %5756 = call float @dx.op.tertiary.f32(i32 46, float %5732, float %5743, float %5755)  ; FMad(a,b,c)
  %5757 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %5744, float %5756)  ; FMad(a,b,c)
  %5758 = fadd fast float %5757, %5745
  %5759 = fmul fast float %5747, %5731
  %5760 = call float @dx.op.tertiary.f32(i32 46, float %5732, float %5748, float %5759)  ; FMad(a,b,c)
  %5761 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %5749, float %5760)  ; FMad(a,b,c)
  %5762 = fadd fast float %5761, %5750
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 0
  %5765 = extractvalue %dx.types.CBufRet.f32 %5763, 1
  %5766 = extractvalue %dx.types.CBufRet.f32 %5763, 3
  %5767 = fmul fast float %5766, %5754
  %5768 = fmul fast float %5766, %5758
  %5769 = fadd fast float %5767, %5764
  %5770 = fadd fast float %5768, %5765
  %5771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5771, 0
  %5773 = extractvalue %dx.types.CBufRet.f32 %5771, 1
  %5774 = extractvalue %dx.types.CBufRet.f32 %5771, 3
  %5775 = fmul fast float %5774, %5754
  %5776 = fmul fast float %5774, %5758
  %5777 = fadd fast float %5775, %5772
  %5778 = fadd fast float %5776, %5773
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5781 = fsub fast float %5780, %5762
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = fmul fast float %5781, %5782
  %5784 = fsub fast float 1.000000e+00, %5783
  %5785 = call float @dx.op.unary.f32(i32 7, float %5784)  ; Saturate(value)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5771, 2
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5789 = fadd fast float %5788, %5786
  %5790 = fcmp fast ogt float %5789, 0.000000e+00
  br i1 %5790, label %5791, label %5815

; <label>:5791                                    ; preds = %5735
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = fsub fast float %5777, %5793
  %5796 = fsub fast float %5778, %5794
  %5797 = fcmp fast olt float %5795, 0.000000e+00
  %5798 = fcmp fast olt float %5796, 0.000000e+00
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5803 = extractvalue %dx.types.CBufRet.f32 %5799, 3
  %5804 = select i1 %5797, float %5800, float %5802
  %5805 = select i1 %5798, float %5801, float %5803
  %5806 = fmul fast float %5804, %5795
  %5807 = fmul fast float %5805, %5796
  %5808 = call float @dx.op.unary.f32(i32 6, float %5806)  ; FAbs(value)
  %5809 = call float @dx.op.unary.f32(i32 6, float %5807)  ; FAbs(value)
  %5810 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  %5811 = call float @dx.op.binary.f32(i32 35, float %5808, float %5809)  ; FMax(a,b)
  %5812 = fsub fast float %5810, %5811
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = fmul fast float %5813, %5785
  br label %5815

; <label>:5815                                    ; preds = %5791, %5735
  %5816 = phi float [ %5814, %5791 ], [ 0.000000e+00, %5735 ]
  %5817 = extractvalue %dx.types.CBufRet.f32 %5763, 2
  %5818 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5819 = fadd fast float %5818, %5817
  %5820 = fcmp fast ogt float %5819, 0.000000e+00
  %5821 = extractvalue %dx.types.CBufRet.f32 %5726, 0
  br i1 %5820, label %5822, label %5845

; <label>:5822                                    ; preds = %5815
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.CBufRet.f32 %5823, 1
  %5826 = fsub fast float %5769, %5824
  %5827 = fsub fast float %5770, %5825
  %5828 = fcmp fast olt float %5826, 0.000000e+00
  %5829 = fcmp fast olt float %5827, 0.000000e+00
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.CBufRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.CBufRet.f32 %5830, 2
  %5834 = extractvalue %dx.types.CBufRet.f32 %5830, 3
  %5835 = select i1 %5828, float %5831, float %5833
  %5836 = select i1 %5829, float %5832, float %5834
  %5837 = fmul fast float %5835, %5826
  %5838 = fmul fast float %5836, %5827
  %5839 = call float @dx.op.unary.f32(i32 6, float %5837)  ; FAbs(value)
  %5840 = call float @dx.op.unary.f32(i32 6, float %5838)  ; FAbs(value)
  %5841 = call float @dx.op.binary.f32(i32 35, float %5839, float %5840)  ; FMax(a,b)
  %5842 = fsub fast float %5821, %5841
  %5843 = call float @dx.op.unary.f32(i32 7, float %5842)  ; Saturate(value)
  %5844 = fmul fast float %5843, %5785
  br label %5845

; <label>:5845                                    ; preds = %5822, %5815
  %5846 = phi float [ %5844, %5822 ], [ 0.000000e+00, %5815 ]
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 1
  %5849 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 0
  %5852 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5853 = fsub fast float %5754, %5851
  %5854 = fsub fast float %5758, %5852
  %5855 = fcmp fast olt float %5853, 0.000000e+00
  %5856 = fcmp fast olt float %5854, 0.000000e+00
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.CBufRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %5861 = extractvalue %dx.types.CBufRet.f32 %5857, 3
  %5862 = select i1 %5855, float %5858, float %5860
  %5863 = select i1 %5856, float %5859, float %5861
  %5864 = fmul fast float %5862, %5853
  %5865 = fmul fast float %5863, %5854
  %5866 = call float @dx.op.unary.f32(i32 6, float %5864)  ; FAbs(value)
  %5867 = call float @dx.op.unary.f32(i32 6, float %5865)  ; FAbs(value)
  %5868 = call float @dx.op.binary.f32(i32 35, float %5866, float %5867)  ; FMax(a,b)
  %5869 = fsub fast float %5821, %5868
  %5870 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5871 = call float @dx.op.binary.f32(i32 36, float %5870, float %5849)  ; FMin(a,b)
  %5872 = fmul fast float %5871, %5785
  %5873 = fsub fast float %5846, %5872
  %5874 = fsub fast float %5816, %5846
  %5875 = fsub fast float %5874, %5872
  %5876 = call float @dx.op.binary.f32(i32 35, float %5846, float %5816)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 35, float %5872, float %5876)  ; FMax(a,b)
  %5878 = fcmp fast olt float %5877, 1.000000e+00
  br i1 %5878, label %5879, label %6277, !dx.controlflow.hints !103

; <label>:5879                                    ; preds = %5845
  %5880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5881 = extractvalue %dx.types.CBufRet.f32 %5880, 0
  %5882 = fcmp fast une float %5881, 0.000000e+00
  br i1 %5882, label %5883, label %6277, !dx.controlflow.hints !104

; <label>:5883                                    ; preds = %5879
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 0
  %5886 = extractvalue %dx.types.CBufRet.f32 %5884, 1
  %5887 = extractvalue %dx.types.CBufRet.f32 %5884, 2
  %5888 = extractvalue %dx.types.CBufRet.f32 %5884, 3
  %5889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5889, 0
  %5891 = extractvalue %dx.types.CBufRet.f32 %5889, 1
  %5892 = extractvalue %dx.types.CBufRet.f32 %5889, 2
  %5893 = extractvalue %dx.types.CBufRet.f32 %5889, 3
  %5894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5895 = extractvalue %dx.types.CBufRet.f32 %5894, 0
  %5896 = extractvalue %dx.types.CBufRet.f32 %5894, 1
  %5897 = extractvalue %dx.types.CBufRet.f32 %5894, 2
  %5898 = extractvalue %dx.types.CBufRet.f32 %5894, 3
  %5899 = fmul fast float %5885, %5731
  %5900 = call float @dx.op.tertiary.f32(i32 46, float %5732, float %5886, float %5899)  ; FMad(a,b,c)
  %5901 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %5887, float %5900)  ; FMad(a,b,c)
  %5902 = fadd fast float %5901, %5888
  %5903 = fmul fast float %5890, %5731
  %5904 = call float @dx.op.tertiary.f32(i32 46, float %5732, float %5891, float %5903)  ; FMad(a,b,c)
  %5905 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %5892, float %5904)  ; FMad(a,b,c)
  %5906 = fadd fast float %5905, %5893
  %5907 = fmul fast float %5895, %5731
  %5908 = call float @dx.op.tertiary.f32(i32 46, float %5732, float %5896, float %5907)  ; FMad(a,b,c)
  %5909 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %5897, float %5908)  ; FMad(a,b,c)
  %5910 = fadd fast float %5909, %5898
  %5911 = fcmp fast oge float %5902, 1.000000e+00
  %5912 = fcmp fast oge float %5906, 1.000000e+00
  %5913 = or i1 %5911, %5912
  %5914 = fcmp fast olt float %5902, 0.000000e+00
  %5915 = fcmp fast olt float %5906, 0.000000e+00
  %5916 = or i1 %5914, %5915
  %5917 = or i1 %5913, %5916
  br i1 %5917, label %6277, label %5918, !dx.controlflow.hints !105

; <label>:5918                                    ; preds = %5883
  %5919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5920 = extractvalue %dx.types.CBufRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.CBufRet.f32 %5919, 1
  %5922 = extractvalue %dx.types.CBufRet.f32 %5919, 2
  %5923 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.i32 %5923, 2
  %5925 = uitofp i32 %5924 to float
  %5926 = extractvalue %dx.types.CBufRet.i32 %5923, 3
  %5927 = uitofp i32 %5926 to float
  %5928 = extractvalue %dx.types.CBufRet.f32 %5919, 3
  %5929 = fmul fast float %5928, 2.000000e+00
  %5930 = fsub fast float %5902, %5920
  %5931 = fsub fast float %5906, %5921
  %5932 = fmul fast float %5929, %5930
  %5933 = fmul fast float %5929, %5931
  %5934 = fdiv fast float 1.000000e+00, %5714
  %5935 = fmul fast float %5933, %5934
  %5936 = call float @dx.op.unary.f32(i32 6, float %5935)  ; FAbs(value)
  %5937 = fmul fast float %5922, %5733
  %5938 = fmul fast float %5937, %5929
  %5939 = call float @dx.op.unary.f32(i32 6, float %5938)  ; FAbs(value)
  %5940 = call float @dx.op.unary.f32(i32 6, float %5932)  ; FAbs(value)
  %5941 = call float @dx.op.binary.f32(i32 35, float %5939, float %5936)  ; FMax(a,b)
  %5942 = call float @dx.op.binary.f32(i32 35, float %5940, float %5941)  ; FMax(a,b)
  %5943 = fmul fast float %5942, 2.000000e+00
  %5944 = call float @dx.op.unary.f32(i32 23, float %5943)  ; Log(value)
  %5945 = call float @dx.op.binary.f32(i32 35, float %5944, float %5925)  ; FMax(a,b)
  %5946 = call float @dx.op.unary.f32(i32 22, float %5945)  ; Frc(value)
  %5947 = fadd fast float %5946, 0xBFEA666660000000
  %5948 = fmul fast float %5947, 8.000000e+00
  %5949 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  %5950 = call float @dx.op.unary.f32(i32 27, float %5945)  ; Round_ni(value)
  %5951 = fadd fast float %5950, %5949
  %5952 = call float @dx.op.binary.f32(i32 36, float %5951, float %5927)  ; FMin(a,b)
  %5953 = call float @dx.op.unary.f32(i32 27, float %5952)  ; Round_ni(value)
  %5954 = fsub fast float -0.000000e+00, %5953
  %5955 = call float @dx.op.unary.f32(i32 21, float %5954)  ; Exp(value)
  %5956 = fmul fast float %5955, %5929
  %5957 = fmul fast float %5956, %5902
  %5958 = fmul fast float %5956, %5906
  %5959 = fmul fast float %5957, 2.500000e-01
  %5960 = fmul fast float %5958, 2.500000e-01
  %5961 = fadd fast float %5959, 5.000000e-01
  %5962 = fadd fast float %5960, 5.000000e-01
  %5963 = fsub fast float %5927, %5925
  %5964 = fptoui float %5963 to i32
  %5965 = add i32 %5964, 320
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %5965)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.CBufRet.f32 %5966, 1
  %5969 = fcmp fast une float %5952, %5927
  %5970 = fsub fast float %5902, %5967
  %5971 = fsub fast float %5906, %5968
  %5972 = call float @dx.op.unary.f32(i32 6, float %5970)  ; FAbs(value)
  %5973 = call float @dx.op.unary.f32(i32 6, float %5971)  ; FAbs(value)
  %5974 = fmul fast float %5972, %5956
  %5975 = fmul fast float %5973, %5956
  %5976 = fcmp fast olt float %5974, 1.000000e+00
  %5977 = fcmp fast olt float %5975, 1.000000e+00
  %5978 = and i1 %5976, %5977
  %5979 = or i1 %5969, %5978
  br i1 %5979, label %5980, label %6277, !dx.controlflow.hints !106

; <label>:5980                                    ; preds = %5918
  %5981 = fmul fast float %5958, 5.000000e-01
  %5982 = fmul fast float %5957, 5.000000e-01
  %5983 = fadd fast float %5981, 5.000000e-01
  %5984 = fadd fast float %5982, 5.000000e-01
  %5985 = sitofp i32 %5924 to float
  %5986 = fsub fast float %5952, %5985
  %5987 = call float @dx.op.unary.f32(i32 27, float %5986)  ; Round_ni(value)
  %5988 = call float @dx.op.unary.f32(i32 22, float %5952)  ; Frc(value)
  %5989 = call float @dx.op.unary.f32(i32 22, float %5984)  ; Frc(value)
  %5990 = call float @dx.op.unary.f32(i32 22, float %5983)  ; Frc(value)
  %5991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5989, float %5990, float %5987, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5992 = extractvalue %dx.types.ResRet.f32 %5991, 0
  %5993 = extractvalue %dx.types.ResRet.f32 %5991, 1
  %5994 = extractvalue %dx.types.ResRet.f32 %5991, 2
  %5995 = extractvalue %dx.types.ResRet.f32 %5991, 3
  %5996 = fcmp fast ogt float %5988, 0.000000e+00
  br i1 %5996, label %5997, label %6018, !dx.controlflow.hints !107

; <label>:5997                                    ; preds = %5980
  %5998 = fadd fast float %5987, 1.000000e+00
  %5999 = call float @dx.op.unary.f32(i32 22, float %5961)  ; Frc(value)
  %6000 = call float @dx.op.unary.f32(i32 22, float %5962)  ; Frc(value)
  %6001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %5999, float %6000, float %5998, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6002 = extractvalue %dx.types.ResRet.f32 %6001, 0
  %6003 = extractvalue %dx.types.ResRet.f32 %6001, 1
  %6004 = extractvalue %dx.types.ResRet.f32 %6001, 2
  %6005 = extractvalue %dx.types.ResRet.f32 %6001, 3
  %6006 = fsub fast float %6002, %5992
  %6007 = fsub fast float %6003, %5993
  %6008 = fsub fast float %6004, %5994
  %6009 = fsub fast float %6005, %5995
  %6010 = fmul fast float %6006, %5988
  %6011 = fmul fast float %6007, %5988
  %6012 = fmul fast float %6008, %5988
  %6013 = fmul fast float %6009, %5988
  %6014 = fadd fast float %6010, %5992
  %6015 = fadd fast float %6011, %5993
  %6016 = fadd fast float %6012, %5994
  %6017 = fadd fast float %6013, %5995
  br label %6018

; <label>:6018                                    ; preds = %5997, %5980
  %6019 = phi float [ %6014, %5997 ], [ %5992, %5980 ]
  %6020 = phi float [ %6015, %5997 ], [ %5993, %5980 ]
  %6021 = phi float [ %6016, %5997 ], [ %5994, %5980 ]
  %6022 = phi float [ %6017, %5997 ], [ %5995, %5980 ]
  %6023 = fadd fast float %6019, -5.000000e-01
  %6024 = fadd fast float %6021, -5.000000e-01
  %6025 = fmul fast float %6023, 0xBFD5555560000000
  %6026 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6024, float %6025)  ; FMad(a,b,c)
  %6027 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6020, float 0.000000e+00)  ; FMad(a,b,c)
  %6028 = fadd fast float %6027, %6022
  %6029 = fmul fast float %6023, -7.500000e-01
  %6030 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6024, float %6029)  ; FMad(a,b,c)
  %6031 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6020, float 0.000000e+00)  ; FMad(a,b,c)
  %6032 = fadd fast float %6031, %6022
  %6033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6034 = extractvalue %dx.types.CBufRet.f32 %6033, 0
  %6035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6036 = extractvalue %dx.types.CBufRet.f32 %6035, 0
  %6037 = extractvalue %dx.types.CBufRet.f32 %6035, 1
  %6038 = extractvalue %dx.types.CBufRet.f32 %6035, 2
  %6039 = extractvalue %dx.types.CBufRet.f32 %6035, 3
  %6040 = fsub fast float %6036, %6026
  %6041 = fsub fast float %6037, %6028
  %6042 = fsub fast float %6038, %6030
  %6043 = fsub fast float %6039, %6032
  %6044 = fmul fast float %6040, %6034
  %6045 = fmul fast float %6041, %6034
  %6046 = fmul fast float %6042, %6034
  %6047 = fmul fast float %6043, %6034
  %6048 = fadd fast float %6044, %6026
  %6049 = fadd fast float %6045, %6028
  %6050 = fadd fast float %6046, %6030
  %6051 = fadd fast float %6047, %6032
  %6052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6053 = extractvalue %dx.types.ResRet.i32 %6052, 0
  %6054 = and i32 %6053, 536870911
  %6055 = uitofp i32 %6054 to float
  %6056 = fmul fast float %6055, %5902
  %6057 = fmul fast float %6055, %5906
  %6058 = fptoui float %6056 to i32
  %6059 = fptoui float %6057 to i32
  %6060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6061 = extractvalue %dx.types.ResRet.i32 %6060, 0
  %6062 = and i32 %6061, 31
  %6063 = lshr i32 %6058, %6062
  %6064 = lshr i32 %6059, %6062
  %6065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6066 = extractvalue %dx.types.ResRet.i32 %6065, 0
  %6067 = and i32 %6066, 31
  %6068 = shl i32 1, %6067
  %6069 = call i32 @dx.op.binary.i32(i32 40, i32 %6068, i32 4)  ; UMin(a,b)
  %6070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6071 = extractvalue %dx.types.ResRet.i32 %6070, 0
  %6072 = extractvalue %dx.types.ResRet.i32 %6070, 1
  %6073 = icmp eq i32 %6069, 0
  br i1 %6073, label %6115, label %6074

; <label>:6074                                    ; preds = %6018
  br label %6075

; <label>:6075                                    ; preds = %6103, %6074
  %6076 = phi i32 [ %6106, %6103 ], [ 0, %6074 ]
  %6077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6078 = extractvalue %dx.types.ResRet.i32 %6077, 0
  %6079 = lshr i32 %6078, 16
  %6080 = and i32 %6079, 31
  %6081 = shl i32 %6064, %6080
  %6082 = add i32 %6081, %6063
  %6083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6084 = extractvalue %dx.types.ResRet.i32 %6083, 0
  %6085 = and i32 %6084, 31
  %6086 = shl i32 %6082, %6085
  %6087 = add i32 %6086, %6076
  %6088 = shl i32 %6087, 2
  %6089 = add i32 %6088, 32
  %6090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6089, i32 undef)  ; BufferLoad(srv,index,wot)
  %6091 = extractvalue %dx.types.ResRet.i32 %6090, 0
  %6092 = icmp slt i32 %6091, 0
  %6093 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6076
  %6094 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6076
  %6095 = bitcast float* %6093 to i32*
  %6096 = bitcast float* %6094 to i32*
  br i1 %6092, label %6097, label %6103

; <label>:6097                                    ; preds = %6075
  %6098 = and i32 %6091, 1073741823
  %6099 = add nuw nsw i32 %6098, 20
  %6100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6099, i32 undef)  ; BufferLoad(srv,index,wot)
  %6101 = extractvalue %dx.types.ResRet.i32 %6100, 0
  %6102 = extractvalue %dx.types.ResRet.i32 %6100, 1
  br label %6103

; <label>:6103                                    ; preds = %6097, %6075
  %6104 = phi i32 [ %6101, %6097 ], [ %6071, %6075 ]
  %6105 = phi i32 [ %6102, %6097 ], [ %6072, %6075 ]
  store i32 %6104, i32* %6095, align 4
  store i32 %6105, i32* %6096, align 4
  %6106 = add nuw i32 %6076, 1
  %6107 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.i32 %6107, 2
  %6109 = icmp eq i32 %6108, 0
  %6110 = icmp ugt i32 %6091, -1073741825
  %6111 = and i1 %6110, %6109
  %6112 = icmp ult i32 %6106, %6069
  %6113 = and i1 %6111, %6112
  br i1 %6113, label %6075, label %6114

; <label>:6114                                    ; preds = %6103
  br label %6115

; <label>:6115                                    ; preds = %6114, %6018
  %6116 = phi i32 [ 0, %6018 ], [ %6106, %6114 ]
  %6117 = extractvalue %dx.types.CBufRet.f32 %5880, 2
  %6118 = fptoui float %6117 to i32
  %6119 = icmp eq i32 %6118, 0
  br i1 %6119, label %6171, label %6120

; <label>:6120                                    ; preds = %6115
  br label %6121

; <label>:6121                                    ; preds = %6166, %6120
  %6122 = phi i32 [ %6167, %6166 ], [ %6116, %6120 ]
  %6123 = phi i32 [ %6168, %6166 ], [ 0, %6120 ]
  %6124 = lshr i32 %6123, 2
  %6125 = and i32 %6123, 3
  %6126 = add nuw nsw i32 %6124, 83
  %6127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6126)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.i32 %6127, 0
  %6129 = extractvalue %dx.types.CBufRet.i32 %6127, 1
  %6130 = extractvalue %dx.types.CBufRet.i32 %6127, 2
  %6131 = extractvalue %dx.types.CBufRet.i32 %6127, 3
  %6132 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6128, i32* %6132, align 4
  %6133 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6129, i32* %6133, align 4
  %6134 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6130, i32* %6134, align 4
  %6135 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6131, i32* %6135, align 4
  %6136 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6125
  %6137 = load i32, i32* %6136, align 4, !tbaa !108, !noalias !112
  %6138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.i32 %6138, 0
  %6140 = lshr i32 %6139, 16
  %6141 = and i32 %6140, 31
  %6142 = shl i32 %6064, %6141
  %6143 = add i32 %6142, %6063
  %6144 = shl i32 %6143, 2
  %6145 = add i32 %6144, %6137
  %6146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6145, i32 undef)  ; BufferLoad(srv,index,wot)
  %6147 = extractvalue %dx.types.ResRet.i32 %6146, 0
  %6148 = icmp eq i32 %6147, 0
  br i1 %6148, label %6166, label %6149

; <label>:6149                                    ; preds = %6121
  %6150 = icmp slt i32 %6147, 0
  %6151 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6122
  %6152 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6122
  %6153 = bitcast float* %6151 to i32*
  %6154 = bitcast float* %6152 to i32*
  br i1 %6150, label %6155, label %6162

; <label>:6155                                    ; preds = %6149
  %6156 = and i32 %6147, 1073741823
  %6157 = add i32 %6137, 20
  %6158 = add i32 %6157, %6156
  %6159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6158, i32 undef)  ; BufferLoad(srv,index,wot)
  %6160 = extractvalue %dx.types.ResRet.i32 %6159, 0
  %6161 = extractvalue %dx.types.ResRet.i32 %6159, 1
  br label %6162

; <label>:6162                                    ; preds = %6155, %6149
  %6163 = phi i32 [ %6160, %6155 ], [ %6071, %6149 ]
  %6164 = phi i32 [ %6161, %6155 ], [ %6072, %6149 ]
  store i32 %6163, i32* %6153, align 4
  store i32 %6164, i32* %6154, align 4
  %6165 = add i32 %6122, 1
  br label %6166

; <label>:6166                                    ; preds = %6162, %6121
  %6167 = phi i32 [ %6122, %6121 ], [ %6165, %6162 ]
  %6168 = add nuw i32 %6123, 1
  %6169 = icmp eq i32 %6168, %6118
  br i1 %6169, label %6170, label %6121

; <label>:6170                                    ; preds = %6166
  br label %6171

; <label>:6171                                    ; preds = %6170, %6115
  %6172 = phi i32 [ %6116, %6115 ], [ %6167, %6170 ]
  %6173 = icmp eq i32 %6172, 1
  %6174 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %6175 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %6173, label %6176, label %6179

; <label>:6176                                    ; preds = %6171
  %6177 = load float, float* %6174, align 4
  %6178 = load float, float* %6175, align 4
  br label %6206

; <label>:6179                                    ; preds = %6171
  %6180 = load float, float* %6174, align 4
  %6181 = load float, float* %6175, align 4
  %6182 = fdiv fast float 1.000000e+00, %6181
  %6183 = fsub fast float %6180, %6182
  %6184 = icmp ugt i32 %6172, 1
  br i1 %6184, label %6185, label %6201

; <label>:6185                                    ; preds = %6179
  br label %6186

; <label>:6186                                    ; preds = %6186, %6185
  %6187 = phi float [ %6196, %6186 ], [ %6183, %6185 ]
  %6188 = phi float [ %6197, %6186 ], [ %6180, %6185 ]
  %6189 = phi i32 [ %6198, %6186 ], [ 1, %6185 ]
  %6190 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6189
  %6191 = load float, float* %6190, align 4
  %6192 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6189
  %6193 = load float, float* %6192, align 4
  %6194 = fdiv fast float 1.000000e+00, %6193
  %6195 = fsub fast float %6191, %6194
  %6196 = call float @dx.op.binary.f32(i32 36, float %6187, float %6195)  ; FMin(a,b)
  %6197 = call float @dx.op.binary.f32(i32 35, float %6188, float %6191)  ; FMax(a,b)
  %6198 = add nuw i32 %6189, 1
  %6199 = icmp eq i32 %6198, %6172
  br i1 %6199, label %6200, label %6186

; <label>:6200                                    ; preds = %6186
  br label %6201

; <label>:6201                                    ; preds = %6200, %6179
  %6202 = phi float [ %6183, %6179 ], [ %6196, %6200 ]
  %6203 = phi float [ %6180, %6179 ], [ %6197, %6200 ]
  %6204 = fsub fast float %6203, %6202
  %6205 = fdiv fast float 1.000000e+00, %6204
  br label %6206

; <label>:6206                                    ; preds = %6201, %6176
  %6207 = phi float [ %6177, %6176 ], [ %6203, %6201 ]
  %6208 = phi float [ %6178, %6176 ], [ %6205, %6201 ]
  %6209 = fadd fast float %5910, %6207
  %6210 = fmul fast float %6209, %6208
  %6211 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6212 = fmul fast float %6211, 2.000000e+00
  %6213 = fsub fast float 1.000000e+00, %6212
  %6214 = fmul fast float %6048, %6048
  %6215 = fsub fast float %6049, %6214
  %6216 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6215)  ; FMax(a,b)
  %6217 = fdiv fast float 1.000000e+00, %6216
  %6218 = fmul fast float %6049, %6048
  %6219 = fsub fast float %6050, %6218
  %6220 = fsub fast float %6213, %6048
  %6221 = fmul fast float %6213, %6213
  %6222 = fsub fast float %6221, %6049
  %6223 = fmul fast float %6217, %6219
  %6224 = fmul fast float %6223, %6220
  %6225 = fsub fast float %6222, %6224
  %6226 = fmul fast float %6049, %6049
  %6227 = fsub fast float %6051, %6226
  %6228 = fmul fast float %6219, %6219
  %6229 = fmul fast float %6228, %6217
  %6230 = fsub fast float %6227, %6229
  %6231 = fdiv fast float %6225, %6230
  %6232 = fmul fast float %6231, %6219
  %6233 = fsub fast float %6220, %6232
  %6234 = fmul fast float %6233, %6217
  %6235 = fmul fast float %6234, %6048
  %6236 = fsub fast float 1.000000e+00, %6235
  %6237 = fmul fast float %6231, %6049
  %6238 = fsub fast float %6236, %6237
  %6239 = fmul fast float %6234, %6234
  %6240 = fmul fast float %6231, 4.000000e+00
  %6241 = fmul fast float %6240, %6238
  %6242 = fsub fast float %6239, %6241
  %6243 = call float @dx.op.unary.f32(i32 24, float %6242)  ; Sqrt(value)
  %6244 = fcmp fast oge float %6234, 0.000000e+00
  %6245 = fsub fast float -0.000000e+00, %6243
  %6246 = select i1 %6244, float %6245, float %6243
  %6247 = fsub fast float %6246, %6234
  %6248 = fdiv fast float %6247, %6231
  %6249 = fdiv fast float %6238, %6247
  %6250 = fmul fast float %6248, 5.000000e-01
  %6251 = fmul fast float %6249, 2.000000e+00
  %6252 = select i1 %6244, float %6250, float %6251
  %6253 = select i1 %6244, float %6251, float %6250
  %6254 = call float @dx.op.binary.f32(i32 35, float %6252, float %6253)  ; FMax(a,b)
  %6255 = call float @dx.op.binary.f32(i32 36, float %6252, float %6253)  ; FMin(a,b)
  %6256 = fcmp fast ogt float %6213, %6254
  %6257 = fsub fast float %6213, %6255
  %6258 = fsub fast float %6213, %6254
  %6259 = fsub fast float %6254, %6255
  %6260 = select i1 %6256, float %6258, float %6259
  %6261 = fmul float %6257, %6260
  %6262 = select i1 %6256, float %6255, float %6213
  %6263 = fcmp fast ogt float %6213, %6255
  %6264 = fmul fast float %6262, %6254
  %6265 = fadd fast float %6262, %6254
  %6266 = fmul fast float %6265, %6048
  %6267 = fadd fast float %6264, %6049
  %6268 = fsub fast float %6267, %6266
  %6269 = fdiv fast float %6268, %6261
  %6270 = select i1 %6263, float %6269, float 0.000000e+00
  %6271 = fsub fast float 1.000000e+00, %6270
  %6272 = select i1 %6256, float %6271, float %6270
  %6273 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6033, 3
  %6275 = fmul fast float %6274, %6273
  %6276 = fsub fast float 1.000000e+00, %6275
  br label %6277

; <label>:6277                                    ; preds = %6206, %5918, %5883, %5879, %5845
  %6278 = phi float [ 1.000000e+00, %5845 ], [ %6276, %6206 ], [ 1.000000e+00, %5883 ], [ 1.000000e+00, %5918 ], [ 1.000000e+00, %5879 ]
  %6279 = fcmp fast ogt float %5875, 0.000000e+00
  br i1 %6279, label %6280, label %6442, !dx.controlflow.hints !121

; <label>:6280                                    ; preds = %6277
  %6281 = fadd fast float %5788, %5762
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 2
  %6284 = extractvalue %dx.types.CBufRet.f32 %6282, 3
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6287 = call float @dx.op.binary.f32(i32 35, float %6281, float 0.000000e+00)  ; FMax(a,b)
  %6288 = fadd fast float %6287, 0x3F10000000000000
  %6289 = fcmp fast oeq float %6286, 0.000000e+00
  br i1 %6289, label %6290, label %6357

; <label>:6290                                    ; preds = %6280
  %6291 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6292 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6293 = fmul fast float %6292, %5777
  %6294 = fmul fast float %6291, %5778
  %6295 = fadd fast float %6293, 5.000000e-01
  %6296 = call float @dx.op.unary.f32(i32 27, float %6295)  ; Round_ni(value)
  %6297 = fadd fast float %6294, 5.000000e-01
  %6298 = call float @dx.op.unary.f32(i32 27, float %6297)  ; Round_ni(value)
  %6299 = fsub fast float %6295, %6296
  %6300 = fsub fast float %6297, %6298
  %6301 = fadd fast float %6296, -5.000000e-01
  %6302 = fadd fast float %6298, -5.000000e-01
  %6303 = fmul fast float %6299, 2.000000e+00
  %6304 = fsub fast float 3.000000e+00, %6303
  %6305 = fadd fast float %6303, 1.000000e+00
  %6306 = fsub fast float 2.000000e+00, %6299
  %6307 = bitcast float %6304 to i32
  %6308 = sub nsw i32 2129859010, %6307
  %6309 = bitcast i32 %6308 to float
  %6310 = fmul fast float %6309, %6306
  %6311 = fadd fast float %6310, -1.000000e+00
  %6312 = bitcast float %6305 to i32
  %6313 = sub nsw i32 2129859010, %6312
  %6314 = bitcast i32 %6313 to float
  %6315 = fmul fast float %6314, %6299
  %6316 = fadd fast float %6315, 1.000000e+00
  %6317 = fmul fast float %6300, 2.000000e+00
  %6318 = fsub fast float 3.000000e+00, %6317
  %6319 = fadd fast float %6317, 1.000000e+00
  %6320 = fsub fast float 2.000000e+00, %6300
  %6321 = bitcast float %6318 to i32
  %6322 = sub nsw i32 2129859010, %6321
  %6323 = bitcast i32 %6322 to float
  %6324 = fmul fast float %6323, %6320
  %6325 = fadd fast float %6324, -1.000000e+00
  %6326 = bitcast float %6319 to i32
  %6327 = sub nsw i32 2129859010, %6326
  %6328 = bitcast i32 %6327 to float
  %6329 = fmul fast float %6328, %6300
  %6330 = fadd fast float %6329, 1.000000e+00
  %6331 = fadd fast float %6311, %6301
  %6332 = fmul fast float %6331, %6283
  %6333 = fadd fast float %6325, %6302
  %6334 = fmul fast float %6333, %6284
  %6335 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6332, float %6334, float undef, float undef, i32 0, i32 0, i32 undef, float %6288)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6336 = extractvalue %dx.types.ResRet.f32 %6335, 0
  %6337 = fmul fast float %6336, %6304
  %6338 = fadd fast float %6316, %6301
  %6339 = fmul fast float %6338, %6283
  %6340 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6339, float %6334, float undef, float undef, i32 0, i32 0, i32 undef, float %6288)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6341 = extractvalue %dx.types.ResRet.f32 %6340, 0
  %6342 = fmul fast float %6341, %6305
  %6343 = fadd fast float %6330, %6302
  %6344 = fmul fast float %6343, %6284
  %6345 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6332, float %6344, float undef, float undef, i32 0, i32 0, i32 undef, float %6288)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6346 = extractvalue %dx.types.ResRet.f32 %6345, 0
  %6347 = fmul fast float %6346, %6304
  %6348 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6339, float %6344, float undef, float undef, i32 0, i32 0, i32 undef, float %6288)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6349 = extractvalue %dx.types.ResRet.f32 %6348, 0
  %6350 = fmul fast float %6349, %6305
  %6351 = fadd fast float %6350, %6347
  %6352 = fmul fast float %6351, %6319
  %6353 = fadd fast float %6342, %6337
  %6354 = fmul fast float %6353, %6318
  %6355 = fadd fast float %6354, %6352
  %6356 = fmul fast float %6355, 6.250000e-02
  br label %6442

; <label>:6357                                    ; preds = %6280
  %6358 = fmul fast float %242, 0x401921FB60000000
  %6359 = call float @dx.op.unary.f32(i32 13, float %6358)  ; Sin(value)
  %6360 = call float @dx.op.unary.f32(i32 12, float %6358)  ; Cos(value)
  %6361 = fsub fast float -0.000000e+00, %6359
  br label %6362

; <label>:6362                                    ; preds = %6411, %6357
  %6363 = phi float [ 0.000000e+00, %6357 ], [ %6406, %6411 ]
  %6364 = phi float [ 0.000000e+00, %6357 ], [ %6408, %6411 ]
  %6365 = phi i32 [ 0, %6357 ], [ %6412, %6411 ]
  %6366 = mul i32 %6365, 2
  %6367 = add i32 0, %6366
  %6368 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6367
  %6369 = load float, float* %6368, align 4
  %6370 = mul i32 %6365, 2
  %6371 = add i32 1, %6370
  %6372 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6371
  %6373 = load float, float* %6372, align 4
  %6374 = fmul fast float %6369, %6360
  %6375 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %6361, float %6374)  ; FMad(a,b,c)
  %6376 = fmul fast float %6369, %6359
  %6377 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %6360, float %6376)  ; FMad(a,b,c)
  %6378 = fmul fast float %6375, %6286
  %6379 = fmul fast float %6377, %6286
  %6380 = fadd fast float %6378, %5777
  %6381 = fadd fast float %6379, %5778
  %6382 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6380, float %6381, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6383 = extractvalue %dx.types.ResRet.f32 %6382, 0
  %6384 = extractvalue %dx.types.ResRet.f32 %6382, 1
  %6385 = extractvalue %dx.types.ResRet.f32 %6382, 2
  %6386 = extractvalue %dx.types.ResRet.f32 %6382, 3
  %6387 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %6383, float* %6387, align 4
  %6388 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %6384, float* %6388, align 4
  %6389 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %6385, float* %6389, align 4
  %6390 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %6386, float* %6390, align 4
  %6391 = fsub fast float %6383, %6288
  %6392 = fcmp fast olt float %6391, 0.000000e+00
  %6393 = select i1 %6392, float 0.000000e+00, float 1.000000e+00
  %6394 = fadd fast float %6393, %6363
  %6395 = fmul fast float %6393, %6391
  %6396 = fadd fast float %6395, %6364
  br label %6397

; <label>:6397                                    ; preds = %6397, %6362
  %6398 = phi i32 [ 1, %6362 ], [ %6409, %6397 ]
  %6399 = phi float [ %6396, %6362 ], [ %6408, %6397 ]
  %6400 = phi float [ %6394, %6362 ], [ %6406, %6397 ]
  %6401 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %6398
  %6402 = load float, float* %6401, align 4, !tbaa !122, !noalias !112
  %6403 = fsub fast float %6402, %6288
  %6404 = fcmp fast olt float %6403, 0.000000e+00
  %6405 = select i1 %6404, float 0.000000e+00, float 1.000000e+00
  %6406 = fadd fast float %6405, %6400
  %6407 = fmul fast float %6405, %6403
  %6408 = fadd fast float %6407, %6399
  %6409 = add nuw nsw i32 %6398, 1
  %6410 = icmp eq i32 %6409, 4
  br i1 %6410, label %6411, label %6397, !llvm.loop !124

; <label>:6411                                    ; preds = %6397
  %6412 = add nuw nsw i32 %6365, 1
  %6413 = icmp eq i32 %6412, 8
  br i1 %6413, label %6414, label %6362, !llvm.loop !125

; <label>:6414                                    ; preds = %6411
  %6415 = fdiv fast float 1.000000e+00, %6406
  %6416 = fmul fast float %6415, %6408
  %6417 = fdiv fast float 1.000000e+00, %6288
  %6418 = fmul fast float %6416, %6417
  %6419 = call float @dx.op.unary.f32(i32 7, float %6418)  ; Saturate(value)
  %6420 = call float @dx.op.binary.f32(i32 35, float %6419, float 0.000000e+00)  ; FMax(a,b)
  %6421 = fmul fast float %6406, 3.125000e-02
  %6422 = call float @dx.op.unary.f32(i32 7, float %6421)  ; Saturate(value)
  %6423 = fmul fast float %6422, 2.000000e+00
  %6424 = fadd fast float %6423, -1.000000e+00
  %6425 = fcmp fast ogt float %6424, 0.000000e+00
  %6426 = fcmp fast olt float %6424, 0.000000e+00
  %6427 = zext i1 %6425 to i32
  %6428 = zext i1 %6426 to i32
  %6429 = sub nsw i32 %6427, %6428
  %6430 = sitofp i32 %6429 to float
  %6431 = fmul fast float %6430, %6424
  %6432 = fsub fast float 1.000000e+00, %6431
  %6433 = fmul fast float %6432, %6432
  %6434 = fmul fast float %6433, %6432
  %6435 = fsub fast float %6432, %6434
  %6436 = fmul fast float %6435, %6420
  %6437 = fsub fast float 1.000000e+00, %6434
  %6438 = fsub fast float %6437, %6436
  %6439 = fmul fast float %6430, 5.000000e-01
  %6440 = fmul fast float %6439, %6438
  %6441 = fsub fast float 5.000000e-01, %6440
  br label %6442

; <label>:6442                                    ; preds = %6414, %6290, %6277
  %6443 = phi float [ 1.000000e+00, %6277 ], [ %6356, %6290 ], [ %6441, %6414 ]
  %6444 = fcmp fast ogt float %5873, 0.000000e+00
  br i1 %6444, label %6445, label %6609, !dx.controlflow.hints !126

; <label>:6445                                    ; preds = %6442
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6448 = fadd fast float %6447, %5762
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 2
  %6451 = extractvalue %dx.types.CBufRet.f32 %6449, 3
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6454 = call float @dx.op.binary.f32(i32 35, float %6448, float 0.000000e+00)  ; FMax(a,b)
  %6455 = fadd fast float %6454, 0x3F10000000000000
  %6456 = fcmp fast oeq float %6453, 0.000000e+00
  br i1 %6456, label %6457, label %6524

; <label>:6457                                    ; preds = %6445
  %6458 = extractvalue %dx.types.CBufRet.f32 %6449, 1
  %6459 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6460 = fmul fast float %6459, %5769
  %6461 = fmul fast float %6458, %5770
  %6462 = fadd fast float %6460, 5.000000e-01
  %6463 = call float @dx.op.unary.f32(i32 27, float %6462)  ; Round_ni(value)
  %6464 = fadd fast float %6461, 5.000000e-01
  %6465 = call float @dx.op.unary.f32(i32 27, float %6464)  ; Round_ni(value)
  %6466 = fsub fast float %6462, %6463
  %6467 = fsub fast float %6464, %6465
  %6468 = fadd fast float %6463, -5.000000e-01
  %6469 = fadd fast float %6465, -5.000000e-01
  %6470 = fmul fast float %6466, 2.000000e+00
  %6471 = fsub fast float 3.000000e+00, %6470
  %6472 = fadd fast float %6470, 1.000000e+00
  %6473 = fsub fast float 2.000000e+00, %6466
  %6474 = bitcast float %6471 to i32
  %6475 = sub nsw i32 2129859010, %6474
  %6476 = bitcast i32 %6475 to float
  %6477 = fmul fast float %6476, %6473
  %6478 = fadd fast float %6477, -1.000000e+00
  %6479 = bitcast float %6472 to i32
  %6480 = sub nsw i32 2129859010, %6479
  %6481 = bitcast i32 %6480 to float
  %6482 = fmul fast float %6481, %6466
  %6483 = fadd fast float %6482, 1.000000e+00
  %6484 = fmul fast float %6467, 2.000000e+00
  %6485 = fsub fast float 3.000000e+00, %6484
  %6486 = fadd fast float %6484, 1.000000e+00
  %6487 = fsub fast float 2.000000e+00, %6467
  %6488 = bitcast float %6485 to i32
  %6489 = sub nsw i32 2129859010, %6488
  %6490 = bitcast i32 %6489 to float
  %6491 = fmul fast float %6490, %6487
  %6492 = fadd fast float %6491, -1.000000e+00
  %6493 = bitcast float %6486 to i32
  %6494 = sub nsw i32 2129859010, %6493
  %6495 = bitcast i32 %6494 to float
  %6496 = fmul fast float %6495, %6467
  %6497 = fadd fast float %6496, 1.000000e+00
  %6498 = fadd fast float %6478, %6468
  %6499 = fmul fast float %6498, %6450
  %6500 = fadd fast float %6492, %6469
  %6501 = fmul fast float %6500, %6451
  %6502 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6499, float %6501, float undef, float undef, i32 0, i32 0, i32 undef, float %6455)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6503 = extractvalue %dx.types.ResRet.f32 %6502, 0
  %6504 = fmul fast float %6503, %6471
  %6505 = fadd fast float %6483, %6468
  %6506 = fmul fast float %6505, %6450
  %6507 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6506, float %6501, float undef, float undef, i32 0, i32 0, i32 undef, float %6455)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6508 = extractvalue %dx.types.ResRet.f32 %6507, 0
  %6509 = fmul fast float %6508, %6472
  %6510 = fadd fast float %6497, %6469
  %6511 = fmul fast float %6510, %6451
  %6512 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6499, float %6511, float undef, float undef, i32 0, i32 0, i32 undef, float %6455)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6513 = extractvalue %dx.types.ResRet.f32 %6512, 0
  %6514 = fmul fast float %6513, %6471
  %6515 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6506, float %6511, float undef, float undef, i32 0, i32 0, i32 undef, float %6455)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6516 = extractvalue %dx.types.ResRet.f32 %6515, 0
  %6517 = fmul fast float %6516, %6472
  %6518 = fadd fast float %6517, %6514
  %6519 = fmul fast float %6518, %6486
  %6520 = fadd fast float %6509, %6504
  %6521 = fmul fast float %6520, %6485
  %6522 = fadd fast float %6521, %6519
  %6523 = fmul fast float %6522, 6.250000e-02
  br label %6609

; <label>:6524                                    ; preds = %6445
  %6525 = fmul fast float %242, 0x401921FB60000000
  %6526 = call float @dx.op.unary.f32(i32 13, float %6525)  ; Sin(value)
  %6527 = call float @dx.op.unary.f32(i32 12, float %6525)  ; Cos(value)
  %6528 = fsub fast float -0.000000e+00, %6526
  br label %6529

; <label>:6529                                    ; preds = %6578, %6524
  %6530 = phi float [ 0.000000e+00, %6524 ], [ %6573, %6578 ]
  %6531 = phi float [ 0.000000e+00, %6524 ], [ %6575, %6578 ]
  %6532 = phi i32 [ 0, %6524 ], [ %6579, %6578 ]
  %6533 = mul i32 %6532, 2
  %6534 = add i32 0, %6533
  %6535 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6534
  %6536 = load float, float* %6535, align 4
  %6537 = mul i32 %6532, 2
  %6538 = add i32 1, %6537
  %6539 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6538
  %6540 = load float, float* %6539, align 4
  %6541 = fmul fast float %6536, %6527
  %6542 = call float @dx.op.tertiary.f32(i32 46, float %6540, float %6528, float %6541)  ; FMad(a,b,c)
  %6543 = fmul fast float %6536, %6526
  %6544 = call float @dx.op.tertiary.f32(i32 46, float %6540, float %6527, float %6543)  ; FMad(a,b,c)
  %6545 = fmul fast float %6542, %6453
  %6546 = fmul fast float %6544, %6453
  %6547 = fadd fast float %6545, %5769
  %6548 = fadd fast float %6546, %5770
  %6549 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %6547, float %6548, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6550 = extractvalue %dx.types.ResRet.f32 %6549, 0
  %6551 = extractvalue %dx.types.ResRet.f32 %6549, 1
  %6552 = extractvalue %dx.types.ResRet.f32 %6549, 2
  %6553 = extractvalue %dx.types.ResRet.f32 %6549, 3
  %6554 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %6550, float* %6554, align 4
  %6555 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %6551, float* %6555, align 4
  %6556 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %6552, float* %6556, align 4
  %6557 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %6553, float* %6557, align 4
  %6558 = fsub fast float %6550, %6455
  %6559 = fcmp fast olt float %6558, 0.000000e+00
  %6560 = select i1 %6559, float 0.000000e+00, float 1.000000e+00
  %6561 = fadd fast float %6560, %6530
  %6562 = fmul fast float %6560, %6558
  %6563 = fadd fast float %6562, %6531
  br label %6564

; <label>:6564                                    ; preds = %6564, %6529
  %6565 = phi i32 [ 1, %6529 ], [ %6576, %6564 ]
  %6566 = phi float [ %6563, %6529 ], [ %6575, %6564 ]
  %6567 = phi float [ %6561, %6529 ], [ %6573, %6564 ]
  %6568 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %6565
  %6569 = load float, float* %6568, align 4, !tbaa !122, !noalias !112
  %6570 = fsub fast float %6569, %6455
  %6571 = fcmp fast olt float %6570, 0.000000e+00
  %6572 = select i1 %6571, float 0.000000e+00, float 1.000000e+00
  %6573 = fadd fast float %6572, %6567
  %6574 = fmul fast float %6572, %6570
  %6575 = fadd fast float %6574, %6566
  %6576 = add nuw nsw i32 %6565, 1
  %6577 = icmp eq i32 %6576, 4
  br i1 %6577, label %6578, label %6564, !llvm.loop !124

; <label>:6578                                    ; preds = %6564
  %6579 = add nuw nsw i32 %6532, 1
  %6580 = icmp eq i32 %6579, 8
  br i1 %6580, label %6581, label %6529, !llvm.loop !125

; <label>:6581                                    ; preds = %6578
  %6582 = fdiv fast float 1.000000e+00, %6573
  %6583 = fmul fast float %6582, %6575
  %6584 = fdiv fast float 1.000000e+00, %6455
  %6585 = fmul fast float %6583, %6584
  %6586 = call float @dx.op.unary.f32(i32 7, float %6585)  ; Saturate(value)
  %6587 = call float @dx.op.binary.f32(i32 35, float %6586, float 0.000000e+00)  ; FMax(a,b)
  %6588 = fmul fast float %6573, 3.125000e-02
  %6589 = call float @dx.op.unary.f32(i32 7, float %6588)  ; Saturate(value)
  %6590 = fmul fast float %6589, 2.000000e+00
  %6591 = fadd fast float %6590, -1.000000e+00
  %6592 = fcmp fast ogt float %6591, 0.000000e+00
  %6593 = fcmp fast olt float %6591, 0.000000e+00
  %6594 = zext i1 %6592 to i32
  %6595 = zext i1 %6593 to i32
  %6596 = sub nsw i32 %6594, %6595
  %6597 = sitofp i32 %6596 to float
  %6598 = fmul fast float %6597, %6591
  %6599 = fsub fast float 1.000000e+00, %6598
  %6600 = fmul fast float %6599, %6599
  %6601 = fmul fast float %6600, %6599
  %6602 = fsub fast float %6599, %6601
  %6603 = fmul fast float %6602, %6587
  %6604 = fsub fast float 1.000000e+00, %6601
  %6605 = fsub fast float %6604, %6603
  %6606 = fmul fast float %6597, 5.000000e-01
  %6607 = fmul fast float %6606, %6605
  %6608 = fsub fast float 5.000000e-01, %6607
  br label %6609

; <label>:6609                                    ; preds = %6581, %6457, %6442
  %6610 = phi float [ 1.000000e+00, %6442 ], [ %6523, %6457 ], [ %6608, %6581 ]
  %6611 = fcmp fast ogt float %5872, 0.000000e+00
  br i1 %6611, label %6612, label %6776, !dx.controlflow.hints !127

; <label>:6612                                    ; preds = %6609
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 0
  %6615 = fadd fast float %6614, %5762
  %6616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.f32 %6616, 2
  %6618 = extractvalue %dx.types.CBufRet.f32 %6616, 3
  %6619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6619, 0
  %6621 = call float @dx.op.binary.f32(i32 35, float %6615, float 0.000000e+00)  ; FMax(a,b)
  %6622 = fadd fast float %6621, 0x3F10000000000000
  %6623 = fcmp fast oeq float %6620, 0.000000e+00
  br i1 %6623, label %6624, label %6691

; <label>:6624                                    ; preds = %6612
  %6625 = extractvalue %dx.types.CBufRet.f32 %6616, 1
  %6626 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6627 = fmul fast float %6626, %5754
  %6628 = fmul fast float %6625, %5758
  %6629 = fadd fast float %6627, 5.000000e-01
  %6630 = call float @dx.op.unary.f32(i32 27, float %6629)  ; Round_ni(value)
  %6631 = fadd fast float %6628, 5.000000e-01
  %6632 = call float @dx.op.unary.f32(i32 27, float %6631)  ; Round_ni(value)
  %6633 = fsub fast float %6629, %6630
  %6634 = fsub fast float %6631, %6632
  %6635 = fadd fast float %6630, -5.000000e-01
  %6636 = fadd fast float %6632, -5.000000e-01
  %6637 = fmul fast float %6633, 2.000000e+00
  %6638 = fsub fast float 3.000000e+00, %6637
  %6639 = fadd fast float %6637, 1.000000e+00
  %6640 = fsub fast float 2.000000e+00, %6633
  %6641 = bitcast float %6638 to i32
  %6642 = sub nsw i32 2129859010, %6641
  %6643 = bitcast i32 %6642 to float
  %6644 = fmul fast float %6643, %6640
  %6645 = fadd fast float %6644, -1.000000e+00
  %6646 = bitcast float %6639 to i32
  %6647 = sub nsw i32 2129859010, %6646
  %6648 = bitcast i32 %6647 to float
  %6649 = fmul fast float %6648, %6633
  %6650 = fadd fast float %6649, 1.000000e+00
  %6651 = fmul fast float %6634, 2.000000e+00
  %6652 = fsub fast float 3.000000e+00, %6651
  %6653 = fadd fast float %6651, 1.000000e+00
  %6654 = fsub fast float 2.000000e+00, %6634
  %6655 = bitcast float %6652 to i32
  %6656 = sub nsw i32 2129859010, %6655
  %6657 = bitcast i32 %6656 to float
  %6658 = fmul fast float %6657, %6654
  %6659 = fadd fast float %6658, -1.000000e+00
  %6660 = bitcast float %6653 to i32
  %6661 = sub nsw i32 2129859010, %6660
  %6662 = bitcast i32 %6661 to float
  %6663 = fmul fast float %6662, %6634
  %6664 = fadd fast float %6663, 1.000000e+00
  %6665 = fadd fast float %6645, %6635
  %6666 = fmul fast float %6665, %6617
  %6667 = fadd fast float %6659, %6636
  %6668 = fmul fast float %6667, %6618
  %6669 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6666, float %6668, float undef, float undef, i32 0, i32 0, i32 undef, float %6622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = fmul fast float %6670, %6638
  %6672 = fadd fast float %6650, %6635
  %6673 = fmul fast float %6672, %6617
  %6674 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6673, float %6668, float undef, float undef, i32 0, i32 0, i32 undef, float %6622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6675 = extractvalue %dx.types.ResRet.f32 %6674, 0
  %6676 = fmul fast float %6675, %6639
  %6677 = fadd fast float %6664, %6636
  %6678 = fmul fast float %6677, %6618
  %6679 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6666, float %6678, float undef, float undef, i32 0, i32 0, i32 undef, float %6622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6680 = extractvalue %dx.types.ResRet.f32 %6679, 0
  %6681 = fmul fast float %6680, %6638
  %6682 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %6673, float %6678, float undef, float undef, i32 0, i32 0, i32 undef, float %6622)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6683 = extractvalue %dx.types.ResRet.f32 %6682, 0
  %6684 = fmul fast float %6683, %6639
  %6685 = fadd fast float %6684, %6681
  %6686 = fmul fast float %6685, %6653
  %6687 = fadd fast float %6676, %6671
  %6688 = fmul fast float %6687, %6652
  %6689 = fadd fast float %6688, %6686
  %6690 = fmul fast float %6689, 6.250000e-02
  br label %6776

; <label>:6691                                    ; preds = %6612
  %6692 = fmul fast float %242, 0x401921FB60000000
  %6693 = call float @dx.op.unary.f32(i32 13, float %6692)  ; Sin(value)
  %6694 = call float @dx.op.unary.f32(i32 12, float %6692)  ; Cos(value)
  %6695 = fsub fast float -0.000000e+00, %6693
  br label %6696

; <label>:6696                                    ; preds = %6745, %6691
  %6697 = phi float [ 0.000000e+00, %6691 ], [ %6740, %6745 ]
  %6698 = phi float [ 0.000000e+00, %6691 ], [ %6742, %6745 ]
  %6699 = phi i32 [ 0, %6691 ], [ %6746, %6745 ]
  %6700 = mul i32 %6699, 2
  %6701 = add i32 0, %6700
  %6702 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6701
  %6703 = load float, float* %6702, align 4
  %6704 = mul i32 %6699, 2
  %6705 = add i32 1, %6704
  %6706 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6705
  %6707 = load float, float* %6706, align 4
  %6708 = fmul fast float %6703, %6694
  %6709 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6695, float %6708)  ; FMad(a,b,c)
  %6710 = fmul fast float %6703, %6693
  %6711 = call float @dx.op.tertiary.f32(i32 46, float %6707, float %6694, float %6710)  ; FMad(a,b,c)
  %6712 = fmul fast float %6709, %6620
  %6713 = fmul fast float %6711, %6620
  %6714 = fadd fast float %6712, %5754
  %6715 = fadd fast float %6713, %5758
  %6716 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %6714, float %6715, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6717 = extractvalue %dx.types.ResRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.ResRet.f32 %6716, 1
  %6719 = extractvalue %dx.types.ResRet.f32 %6716, 2
  %6720 = extractvalue %dx.types.ResRet.f32 %6716, 3
  %6721 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %6717, float* %6721, align 4
  %6722 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %6718, float* %6722, align 4
  %6723 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %6719, float* %6723, align 4
  %6724 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %6720, float* %6724, align 4
  %6725 = fsub fast float %6717, %6622
  %6726 = fcmp fast olt float %6725, 0.000000e+00
  %6727 = select i1 %6726, float 0.000000e+00, float 1.000000e+00
  %6728 = fadd fast float %6727, %6697
  %6729 = fmul fast float %6727, %6725
  %6730 = fadd fast float %6729, %6698
  br label %6731

; <label>:6731                                    ; preds = %6731, %6696
  %6732 = phi i32 [ 1, %6696 ], [ %6743, %6731 ]
  %6733 = phi float [ %6730, %6696 ], [ %6742, %6731 ]
  %6734 = phi float [ %6728, %6696 ], [ %6740, %6731 ]
  %6735 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %6732
  %6736 = load float, float* %6735, align 4, !tbaa !122, !noalias !112
  %6737 = fsub fast float %6736, %6622
  %6738 = fcmp fast olt float %6737, 0.000000e+00
  %6739 = select i1 %6738, float 0.000000e+00, float 1.000000e+00
  %6740 = fadd fast float %6739, %6734
  %6741 = fmul fast float %6739, %6737
  %6742 = fadd fast float %6741, %6733
  %6743 = add nuw nsw i32 %6732, 1
  %6744 = icmp eq i32 %6743, 4
  br i1 %6744, label %6745, label %6731, !llvm.loop !124

; <label>:6745                                    ; preds = %6731
  %6746 = add nuw nsw i32 %6699, 1
  %6747 = icmp eq i32 %6746, 8
  br i1 %6747, label %6748, label %6696, !llvm.loop !125

; <label>:6748                                    ; preds = %6745
  %6749 = fdiv fast float 1.000000e+00, %6740
  %6750 = fmul fast float %6749, %6742
  %6751 = fdiv fast float 1.000000e+00, %6622
  %6752 = fmul fast float %6750, %6751
  %6753 = call float @dx.op.unary.f32(i32 7, float %6752)  ; Saturate(value)
  %6754 = call float @dx.op.binary.f32(i32 35, float %6753, float 0.000000e+00)  ; FMax(a,b)
  %6755 = fmul fast float %6740, 3.125000e-02
  %6756 = call float @dx.op.unary.f32(i32 7, float %6755)  ; Saturate(value)
  %6757 = fmul fast float %6756, 2.000000e+00
  %6758 = fadd fast float %6757, -1.000000e+00
  %6759 = fcmp fast ogt float %6758, 0.000000e+00
  %6760 = fcmp fast olt float %6758, 0.000000e+00
  %6761 = zext i1 %6759 to i32
  %6762 = zext i1 %6760 to i32
  %6763 = sub nsw i32 %6761, %6762
  %6764 = sitofp i32 %6763 to float
  %6765 = fmul fast float %6764, %6758
  %6766 = fsub fast float 1.000000e+00, %6765
  %6767 = fmul fast float %6766, %6766
  %6768 = fmul fast float %6767, %6766
  %6769 = fsub fast float %6766, %6768
  %6770 = fmul fast float %6769, %6754
  %6771 = fsub fast float 1.000000e+00, %6768
  %6772 = fsub fast float %6771, %6770
  %6773 = fmul fast float %6764, 5.000000e-01
  %6774 = fmul fast float %6773, %6772
  %6775 = fsub fast float 5.000000e-01, %6774
  br label %6776

; <label>:6776                                    ; preds = %6748, %6624, %6609
  %6777 = phi float [ 1.000000e+00, %6609 ], [ %6690, %6624 ], [ %6775, %6748 ]
  %6778 = fsub fast float %6443, %6278
  %6779 = fmul fast float %6778, %5816
  %6780 = fadd fast float %6779, %6278
  %6781 = fsub fast float %6610, %6780
  %6782 = fmul fast float %6781, %5846
  %6783 = fadd fast float %6782, %6780
  %6784 = fsub fast float %6777, %6783
  %6785 = fmul fast float %6784, %5872
  %6786 = fadd fast float %6785, %6783
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 2
  %6789 = fcmp fast ogt float %6788, 0.000000e+00
  br i1 %6789, label %6790, label %6830, !dx.controlflow.hints !128

; <label>:6790                                    ; preds = %6776
  %6791 = fcmp fast ugt float %6788, 0.000000e+00
  br i1 %6791, label %6792, label %6827

; <label>:6792                                    ; preds = %6790
  %6793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.CBufRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.CBufRet.f32 %6793, 2
  %6797 = extractvalue %dx.types.CBufRet.f32 %6793, 3
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6801 = extractvalue %dx.types.CBufRet.f32 %6798, 2
  %6802 = extractvalue %dx.types.CBufRet.f32 %6798, 3
  %6803 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6804 = extractvalue %dx.types.CBufRet.f32 %6787, 1
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %6809 = fadd fast float %6806, %5731
  %6810 = fadd fast float %6807, %5732
  %6811 = fadd fast float %6808, %5733
  %6812 = fmul fast float %6809, %6794
  %6813 = call float @dx.op.tertiary.f32(i32 46, float %6795, float %6810, float %6812)  ; FMad(a,b,c)
  %6814 = call float @dx.op.tertiary.f32(i32 46, float %6796, float %6811, float %6813)  ; FMad(a,b,c)
  %6815 = fadd fast float %6814, %6797
  %6816 = fmul fast float %6809, %6799
  %6817 = call float @dx.op.tertiary.f32(i32 46, float %6800, float %6810, float %6816)  ; FMad(a,b,c)
  %6818 = call float @dx.op.tertiary.f32(i32 46, float %6801, float %6811, float %6817)  ; FMad(a,b,c)
  %6819 = fadd fast float %6818, %6802
  %6820 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %6815, float %6819, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6821 = extractvalue %dx.types.ResRet.f32 %6820, 0
  %6822 = fmul fast float %6821, %6804
  %6823 = fadd fast float %6822, %6803
  %6824 = call float @dx.op.unary.f32(i32 7, float %6823)  ; Saturate(value)
  %6825 = fmul fast float %6824, %6788
  %6826 = fsub fast float 1.000000e+00, %6825
  br label %6827

; <label>:6827                                    ; preds = %6792, %6790
  %6828 = phi float [ %6826, %6792 ], [ 1.000000e+00, %6790 ]
  %6829 = fmul fast float %6828, %6786
  br label %6830

; <label>:6830                                    ; preds = %6827, %6776, %5711
  %6831 = phi float [ 1.000000e+00, %5711 ], [ %6829, %6827 ], [ %6786, %6776 ]
  %6832 = call float @dx.op.binary.f32(i32 36, float %6831, float %6831)  ; FMin(a,b)
  %6833 = call float @dx.op.binary.f32(i32 36, float %6831, float %6832)  ; FMin(a,b)
  %6834 = fcmp fast ogt float %6833, 0.000000e+00
  br i1 %6834, label %6835, label %7000, !dx.controlflow.hints !129

; <label>:6835                                    ; preds = %6830
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.CBufRet.f32 %6836, 2
  %6840 = extractvalue %dx.types.CBufRet.f32 %6836, 3
  %6841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6842 = extractvalue %dx.types.CBufRet.f32 %6841, 0
  %6843 = extractvalue %dx.types.CBufRet.f32 %6841, 1
  %6844 = extractvalue %dx.types.CBufRet.f32 %6841, 2
  %6845 = extractvalue %dx.types.CBufRet.f32 %6841, 3
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 0
  %6848 = extractvalue %dx.types.CBufRet.f32 %6846, 1
  %6849 = extractvalue %dx.types.CBufRet.f32 %6846, 2
  %6850 = extractvalue %dx.types.CBufRet.f32 %6846, 3
  %6851 = fmul fast float %6837, %5731
  %6852 = call float @dx.op.tertiary.f32(i32 46, float %5732, float %6838, float %6851)  ; FMad(a,b,c)
  %6853 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %6839, float %6852)  ; FMad(a,b,c)
  %6854 = fadd fast float %6853, %6840
  %6855 = fmul fast float %6842, %5731
  %6856 = call float @dx.op.tertiary.f32(i32 46, float %5732, float %6843, float %6855)  ; FMad(a,b,c)
  %6857 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %6844, float %6856)  ; FMad(a,b,c)
  %6858 = fadd fast float %6857, %6845
  %6859 = fmul fast float %6847, %5731
  %6860 = call float @dx.op.tertiary.f32(i32 46, float %5732, float %6848, float %6859)  ; FMad(a,b,c)
  %6861 = call float @dx.op.tertiary.f32(i32 46, float %5733, float %6849, float %6860)  ; FMad(a,b,c)
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.CBufRet.f32 %6862, 3
  %6866 = fmul fast float %6865, %6854
  %6867 = fmul fast float %6865, %6858
  %6868 = fadd fast float %6866, %6863
  %6869 = fadd fast float %6867, %6864
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6872 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6873 = fsub fast float %6868, %6871
  %6874 = fsub fast float %6869, %6872
  %6875 = fcmp fast olt float %6873, 0.000000e+00
  %6876 = fcmp fast olt float %6874, 0.000000e+00
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6880 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6881 = extractvalue %dx.types.CBufRet.f32 %6877, 3
  %6882 = select i1 %6875, float %6878, float %6880
  %6883 = select i1 %6876, float %6879, float %6881
  %6884 = fmul fast float %6882, %6873
  %6885 = fmul fast float %6883, %6874
  %6886 = call float @dx.op.unary.f32(i32 6, float %6884)  ; FAbs(value)
  %6887 = call float @dx.op.unary.f32(i32 6, float %6885)  ; FAbs(value)
  %6888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6889 = extractvalue %dx.types.CBufRet.f32 %6888, 0
  %6890 = call float @dx.op.binary.f32(i32 35, float %6886, float %6887)  ; FMax(a,b)
  %6891 = fsub fast float %6889, %6890
  %6892 = call float @dx.op.unary.f32(i32 7, float %6891)  ; Saturate(value)
  %6893 = fcmp fast ogt float %6892, 0.000000e+00
  br i1 %6893, label %6894, label %6935, !dx.controlflow.hints !130

; <label>:6894                                    ; preds = %6835
  %6895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %6868, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6896 = extractvalue %dx.types.ResRet.f32 %6895, 1
  %6897 = fcmp fast ogt float %6896, 0.000000e+00
  br i1 %6897, label %6898, label %6930

; <label>:6898                                    ; preds = %6894
  %6899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %6868, float %6869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6900 = extractvalue %dx.types.ResRet.f32 %6899, 0
  %6901 = extractvalue %dx.types.ResRet.f32 %6899, 1
  %6902 = extractvalue %dx.types.ResRet.f32 %6899, 2
  %6903 = extractvalue %dx.types.ResRet.f32 %6899, 3
  %6904 = fsub fast float 1.000000e+00, %6850
  %6905 = fsub fast float %6904, %6861
  %6906 = fmul fast float %6905, 0x400921FB60000000
  %6907 = fadd fast float %6906, 0x3FF921FB60000000
  %6908 = call float @dx.op.unary.f32(i32 13, float %6907)  ; Sin(value)
  %6909 = fadd fast float %6908, -1.000000e+00
  %6910 = fmul fast float %6909, 0x3FD45F3060000000
  %6911 = fmul fast float %6905, 0x401921FB60000000
  %6912 = fadd fast float %6911, 0x400921FB60000000
  %6913 = call float @dx.op.unary.f32(i32 13, float %6912)  ; Sin(value)
  %6914 = fadd fast float %6913, 0x3E7777A5C0000000
  %6915 = fmul fast float %6914, 0x3FC45F3060000000
  %6916 = fmul fast float %6905, 0x4022D97C80000000
  %6917 = fadd fast float %6916, 0x4012D97C80000000
  %6918 = call float @dx.op.unary.f32(i32 13, float %6917)  ; Sin(value)
  %6919 = fadd fast float %6918, 1.000000e+00
  %6920 = fmul fast float %6919, 0x3FBB2995E0000000
  %6921 = fmul fast float %6905, 0x402921FB60000000
  %6922 = fadd fast float %6921, 0x401921FB60000000
  %6923 = call float @dx.op.unary.f32(i32 13, float %6922)  ; Sin(value)
  %6924 = fadd fast float %6923, 0xBE8777A5C0000000
  %6925 = fmul fast float %6924, 0x3FB45F3060000000
  %6926 = call float @dx.op.dot4.f32(i32 56, float %6900, float %6901, float %6902, float %6903, float %6910, float %6915, float %6920, float %6925)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6927 = fmul fast float %6926, 0xBFF7154760000000
  %6928 = call float @dx.op.unary.f32(i32 21, float %6927)  ; Exp(value)
  %6929 = call float @dx.op.unary.f32(i32 7, float %6928)  ; Saturate(value)
  br label %6930

; <label>:6930                                    ; preds = %6898, %6894
  %6931 = phi float [ %6929, %6898 ], [ 1.000000e+00, %6894 ]
  %6932 = fadd fast float %6931, -1.000000e+00
  %6933 = fmul fast float %6932, %6892
  %6934 = fadd fast float %6933, 1.000000e+00
  br label %6935

; <label>:6935                                    ; preds = %6930, %6835
  %6936 = phi float [ %6934, %6930 ], [ 1.000000e+00, %6835 ]
  %6937 = fmul fast float %6936, %6831
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 1
  %6941 = extractvalue %dx.types.CBufRet.f32 %6938, 2
  %6942 = fadd fast float %6939, %169
  %6943 = fadd fast float %6940, %170
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6946, 0
  %6948 = extractvalue %dx.types.CBufRet.f32 %6946, 1
  %6949 = extractvalue %dx.types.CBufRet.f32 %6946, 2
  %6950 = fsub fast float -0.000000e+00, %6942
  %6951 = fsub fast float -0.000000e+00, %6943
  %6952 = fsub fast float %4856, %6941
  %6953 = fadd fast float %6952, %6945
  %6954 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6950, float %6951, float %6953)  ; Dot3(ax,ay,az,bx,by,bz)
  %6955 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6947, float %6948, float %6949)  ; Dot3(ax,ay,az,bx,by,bz)
  %6956 = fdiv fast float 1.000000e+00, %6955
  %6957 = fmul fast float %6956, %6954
  %6958 = fmul fast float %6947, %6957
  %6959 = fmul fast float %6948, %6957
  %6960 = fadd fast float %6958, %6942
  %6961 = fadd fast float %6959, %6943
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 0
  %6964 = extractvalue %dx.types.CBufRet.f32 %6962, 1
  %6965 = fsub fast float %6960, %6963
  %6966 = fsub fast float %6961, %6964
  %6967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6968 = extractvalue %dx.types.CBufRet.f32 %6967, 2
  %6969 = extractvalue %dx.types.CBufRet.f32 %6967, 3
  %6970 = fmul fast float %6965, %6968
  %6971 = fmul fast float %6966, %6969
  %6972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.i32 %6972, 3
  %6974 = icmp eq i32 %6973, 0
  br i1 %6974, label %6980, label %6975

; <label>:6975                                    ; preds = %6935
  %6976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %6970, float %6971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6977 = extractvalue %dx.types.ResRet.f32 %6976, 0
  %6978 = extractvalue %dx.types.ResRet.f32 %6976, 1
  %6979 = extractvalue %dx.types.ResRet.f32 %6976, 2
  br label %6985

; <label>:6980                                    ; preds = %6935
  %6981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %6970, float %6971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6982 = extractvalue %dx.types.ResRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.ResRet.f32 %6981, 1
  %6984 = extractvalue %dx.types.ResRet.f32 %6981, 2
  br label %6985

; <label>:6985                                    ; preds = %6980, %6975
  %6986 = phi float [ %6977, %6975 ], [ %6982, %6980 ]
  %6987 = phi float [ %6978, %6975 ], [ %6983, %6980 ]
  %6988 = phi float [ %6979, %6975 ], [ %6984, %6980 ]
  %6989 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6990 = fmul fast float %6989, %6986
  %6991 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6992 = fsub fast float %6957, %6991
  %6993 = fsub fast float %6992, %6990
  %6994 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6993)  ; FMax(a,b)
  %6995 = fmul fast float %6994, %6987
  %6996 = call float @dx.op.binary.f32(i32 36, float %6988, float %6995)  ; FMin(a,b)
  %6997 = fmul fast float %6996, 0xBFF7154760000000
  %6998 = call float @dx.op.unary.f32(i32 21, float %6997)  ; Exp(value)
  %6999 = fmul fast float %6937, %6998
  br label %7000

; <label>:7000                                    ; preds = %6985, %6830
  %7001 = phi float [ %6999, %6985 ], [ %6831, %6830 ]
  %7002 = call float @dx.op.binary.f32(i32 36, float %7001, float %7001)  ; FMin(a,b)
  %7003 = call float @dx.op.binary.f32(i32 36, float %7001, float %7002)  ; FMin(a,b)
  %7004 = fcmp fast ogt float %7003, 0.000000e+00
  br i1 %7004, label %7005, label %7253, !dx.controlflow.hints !131

; <label>:7005                                    ; preds = %7000
  %7006 = fmul fast float %7001, %5723
  %7007 = fmul fast float %7001, %5724
  %7008 = fmul fast float %7001, %5725
  %7009 = fsub fast float %171, %4647
  %7010 = fcmp fast ogt float %7009, 0.000000e+00
  %7011 = fmul fast float %5712, 5.120000e+02
  %7012 = fmul fast float %5713, 5.120000e+02
  %7013 = fmul fast float %5714, 5.120000e+02
  %7014 = fadd fast float %7013, %171
  %7015 = fsub fast float %4647, %7014
  %7016 = fmul fast float %7015, 2.000000e+00
  %7017 = fadd fast float %7016, %7014
  %7018 = select i1 %7010, float %7017, float %7014
  %7019 = fsub fast float %7018, %171
  %7020 = call float @dx.op.dot3.f32(i32 55, float %7011, float %7012, float %7019, float %7011, float %7012, float %7019)  ; Dot3(ax,ay,az,bx,by,bz)
  %7021 = call float @dx.op.unary.f32(i32 25, float %7020)  ; Rsqrt(value)
  %7022 = fmul fast float %7021, %7011
  %7023 = fmul fast float %7021, %7012
  %7024 = fmul fast float %7021, %7019
  %7025 = fsub fast float %4647, %171
  %7026 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7025)  ; Dot3(ax,ay,az,bx,by,bz)
  %7027 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7022, float %7023, float %7024)  ; Dot3(ax,ay,az,bx,by,bz)
  %7028 = fdiv fast float 1.000000e+00, %7027
  %7029 = fmul fast float %7028, %7026
  %7030 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7009, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7031 = fcmp fast ogt float %7030, 0.000000e+00
  %7032 = fcmp fast olt float %7030, 0.000000e+00
  %7033 = zext i1 %7031 to i32
  %7034 = zext i1 %7032 to i32
  %7035 = sub nsw i32 %7033, %7034
  %7036 = sitofp i32 %7035 to float
  %7037 = fsub fast float %7018, %4647
  %7038 = call float @dx.op.dot3.f32(i32 55, float %7011, float %7012, float %7037, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7039 = fcmp fast ogt float %7038, 0.000000e+00
  %7040 = fcmp fast olt float %7038, 0.000000e+00
  %7041 = zext i1 %7039 to i32
  %7042 = zext i1 %7040 to i32
  %7043 = sub nsw i32 %7041, %7042
  %7044 = sitofp i32 %7043 to float
  %7045 = fcmp fast une float %7036, %7044
  br i1 %7045, label %7046, label %7056

; <label>:7046                                    ; preds = %7005
  %7047 = fmul fast float %7029, %7024
  %7048 = fmul fast float %7029, %7023
  %7049 = fmul fast float %7029, %7022
  %7050 = fmul fast float %7049, %7049
  %7051 = fmul fast float %7048, %7048
  %7052 = fadd fast float %7050, %7051
  %7053 = fmul fast float %7047, %7047
  %7054 = fadd fast float %7052, %7053
  %7055 = call float @dx.op.unary.f32(i32 24, float %7054)  ; Sqrt(value)
  br label %7066

; <label>:7056                                    ; preds = %7005
  %7057 = icmp slt i32 %7035, 0
  br i1 %7057, label %7058, label %7066

; <label>:7058                                    ; preds = %7056
  %7059 = fsub fast float %171, %7018
  %7060 = fmul fast float %7011, %7011
  %7061 = fmul fast float %7012, %7012
  %7062 = fadd fast float %7060, %7061
  %7063 = fmul fast float %7059, %7059
  %7064 = fadd fast float %7062, %7063
  %7065 = call float @dx.op.unary.f32(i32 24, float %7064)  ; Sqrt(value)
  br label %7066

; <label>:7066                                    ; preds = %7058, %7056, %7046
  %7067 = phi float [ %7055, %7046 ], [ %7065, %7058 ], [ 0.000000e+00, %7056 ]
  %7068 = fsub fast float -0.000000e+00, %7067
  %7069 = select i1 %7010, float -0.000000e+00, float %7068
  %7070 = fmul fast float %4644, 0x3FF7154760000000
  %7071 = fmul fast float %7070, %7069
  %7072 = fmul fast float %4645, 0x3FF7154760000000
  %7073 = fmul fast float %7072, %7069
  %7074 = fmul fast float %4646, 0x3FF7154760000000
  %7075 = fmul fast float %7074, %7069
  %7076 = call float @dx.op.unary.f32(i32 21, float %7071)  ; Exp(value)
  %7077 = call float @dx.op.unary.f32(i32 21, float %7073)  ; Exp(value)
  %7078 = call float @dx.op.unary.f32(i32 21, float %7075)  ; Exp(value)
  %7079 = call float @dx.op.unary.f32(i32 7, float %7076)  ; Saturate(value)
  %7080 = call float @dx.op.unary.f32(i32 7, float %7077)  ; Saturate(value)
  %7081 = call float @dx.op.unary.f32(i32 7, float %7078)  ; Saturate(value)
  %7082 = fmul fast float %7006, %7079
  %7083 = fmul fast float %7007, %7080
  %7084 = fmul fast float %7008, %7081
  %7085 = fsub fast float %5712, %4844
  %7086 = fsub fast float %5713, %4843
  %7087 = fsub fast float %5714, %4842
  %7088 = call float @dx.op.dot3.f32(i32 55, float %7085, float %7086, float %7087, float %7085, float %7086, float %7087)  ; Dot3(ax,ay,az,bx,by,bz)
  %7089 = call float @dx.op.unary.f32(i32 25, float %7088)  ; Rsqrt(value)
  %7090 = fmul fast float %7089, %7085
  %7091 = fmul fast float %7089, %7086
  %7092 = fmul fast float %7089, %7087
  %7093 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %7094 = call float @dx.op.dot3.f32(i32 55, float %4841, float %4840, float %4839, float %7090, float %7091, float %7092)  ; Dot3(ax,ay,az,bx,by,bz)
  %7095 = call float @dx.op.unary.f32(i32 7, float %7093)  ; Saturate(value)
  %7096 = bitcast i32 %4883 to float
  %7097 = fmul fast float %7095, %7095
  %7098 = fmul fast float %7097, %7096
  %7099 = call float @dx.op.unary.f32(i32 7, float %7098)  ; Saturate(value)
  %7100 = fmul fast float %7099, %7095
  %7101 = call float @dx.op.dot3.f32(i32 55, float %4851, float %4852, float %4853, float %7090, float %7091, float %7092)  ; Dot3(ax,ay,az,bx,by,bz)
  %7102 = fmul fast float %7101, %7101
  %7103 = call float @dx.op.unary.f32(i32 6, float %7093)  ; FAbs(value)
  %7104 = fsub fast float 1.000000e+00, %4877
  %7105 = fmul fast float %4859, %4859
  %7106 = fmul fast float %7105, %7104
  %7107 = fadd fast float %7106, %4877
  %7108 = bitcast float %7107 to i32
  %7109 = ashr i32 %7108, 1
  %7110 = add nsw i32 %7109, 532487669
  %7111 = bitcast i32 %7110 to float
  %7112 = fadd fast float %7111, %4859
  %7113 = fmul fast float %4877, %7102
  %7114 = fsub fast float 1.000000e+00, %7102
  %7115 = fadd fast float %7114, %7113
  %7116 = fmul fast float %7103, %7103
  %7117 = fmul fast float %7116, %7104
  %7118 = fadd fast float %7117, %4877
  %7119 = bitcast float %7118 to i32
  %7120 = ashr i32 %7119, 1
  %7121 = add nsw i32 %7120, 532487669
  %7122 = bitcast i32 %7121 to float
  %7123 = fadd fast float %7122, %7103
  %7124 = fmul fast float %7115, %7115
  %7125 = fmul fast float %7124, %7112
  %7126 = fmul fast float %7125, %7123
  %7127 = fdiv fast float 0x3FF0A00000000000, %7126
  %7128 = fmul fast float %7127, %4877
  %7129 = call float @dx.op.unary.f32(i32 6, float %7094)  ; FAbs(value)
  %7130 = fsub fast float 1.000000e+00, %7129
  %7131 = bitcast float %7130 to i32
  %7132 = sitofp i32 %7131 to float
  %7133 = fmul fast float %7132, 5.000000e+00
  %7134 = fadd fast float %7133, 0xC1EFBF8940000000
  %7135 = fptosi float %7134 to i32
  %7136 = bitcast i32 %7135 to float
  %7137 = fsub fast float 1.000000e+00, %4848
  %7138 = fsub fast float 1.000000e+00, %4849
  %7139 = fsub fast float 1.000000e+00, %4857
  %7140 = fmul fast float %7136, %7137
  %7141 = fmul fast float %7136, %7138
  %7142 = fmul fast float %7136, %7139
  %7143 = fadd fast float %7140, %4848
  %7144 = fadd fast float %7141, %4849
  %7145 = fadd fast float %7142, %4857
  br i1 %5131, label %7146, label %7169

; <label>:7146                                    ; preds = %7066
  %7147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4222, float %7129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7148 = extractvalue %dx.types.ResRet.f32 %7147, 0
  %7149 = extractvalue %dx.types.ResRet.f32 %7147, 1
  %7150 = extractvalue %dx.types.ResRet.f32 %7147, 2
  %7151 = fadd fast float %7148, -5.000000e-01
  %7152 = fadd fast float %7149, -5.000000e-01
  %7153 = fadd fast float %7150, -5.000000e-01
  %7154 = fmul fast float %4848, 4.000000e+00
  %7155 = fmul fast float %7154, %7137
  %7156 = fmul fast float %7155, %7151
  %7157 = fmul fast float %4849, 4.000000e+00
  %7158 = fmul fast float %7157, %7138
  %7159 = fmul fast float %7158, %7152
  %7160 = fmul fast float %4857, 4.000000e+00
  %7161 = fmul fast float %7160, %7139
  %7162 = fmul fast float %7161, %7153
  %7163 = fadd fast float %7156, %7143
  %7164 = fadd fast float %7159, %7144
  %7165 = fadd fast float %7162, %7145
  %7166 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  %7167 = call float @dx.op.unary.f32(i32 7, float %7164)  ; Saturate(value)
  %7168 = call float @dx.op.unary.f32(i32 7, float %7165)  ; Saturate(value)
  br label %7169

; <label>:7169                                    ; preds = %7146, %7066
  %7170 = phi float [ %7166, %7146 ], [ %7143, %7066 ]
  %7171 = phi float [ %7167, %7146 ], [ %7144, %7066 ]
  %7172 = phi float [ %7168, %7146 ], [ %7145, %7066 ]
  %7173 = fmul fast float %7093, 9.843750e-01
  %7174 = fadd fast float %7173, 7.812500e-03
  %7175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7174, float %5121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7176 = extractvalue %dx.types.ResRet.f32 %7175, 2
  %7177 = extractvalue %dx.types.ResRet.f32 %7175, 3
  %7178 = fmul fast float %7176, %4848
  %7179 = fmul fast float %7176, %4849
  %7180 = fmul fast float %7176, %4857
  %7181 = fadd fast float %7178, %7177
  %7182 = fadd fast float %7179, %7177
  %7183 = fadd fast float %7180, %7177
  br i1 %5131, label %7184, label %7207

; <label>:7184                                    ; preds = %7169
  %7185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4222, float %7093, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.ResRet.f32 %7185, 1
  %7188 = extractvalue %dx.types.ResRet.f32 %7185, 2
  %7189 = fadd fast float %7186, -5.000000e-01
  %7190 = fadd fast float %7187, -5.000000e-01
  %7191 = fadd fast float %7188, -5.000000e-01
  %7192 = fmul fast float %4848, 4.000000e+00
  %7193 = fmul fast float %7192, %7137
  %7194 = fmul fast float %7193, %7189
  %7195 = fmul fast float %4849, 4.000000e+00
  %7196 = fmul fast float %7195, %7138
  %7197 = fmul fast float %7196, %7190
  %7198 = fmul fast float %4857, 4.000000e+00
  %7199 = fmul fast float %7198, %7139
  %7200 = fmul fast float %7199, %7191
  %7201 = fadd fast float %7194, %7181
  %7202 = fadd fast float %7197, %7182
  %7203 = fadd fast float %7200, %7183
  %7204 = call float @dx.op.unary.f32(i32 7, float %7201)  ; Saturate(value)
  %7205 = call float @dx.op.unary.f32(i32 7, float %7202)  ; Saturate(value)
  %7206 = call float @dx.op.unary.f32(i32 7, float %7203)  ; Saturate(value)
  br label %7207

; <label>:7207                                    ; preds = %7184, %7169
  %7208 = phi float [ %7204, %7184 ], [ %7181, %7169 ]
  %7209 = phi float [ %7205, %7184 ], [ %7182, %7169 ]
  %7210 = phi float [ %7206, %7184 ], [ %7183, %7169 ]
  %7211 = call float @dx.op.binary.f32(i32 35, float %7209, float %7210)  ; FMax(a,b)
  %7212 = call float @dx.op.binary.f32(i32 35, float %7208, float %7211)  ; FMax(a,b)
  %7213 = fsub fast float 1.000000e+00, %7212
  %7214 = fmul fast float %7170, %7128
  %7215 = fmul fast float %7171, %7128
  %7216 = fmul fast float %7172, %7128
  %7217 = fsub fast float 1.000000e+00, %7094
  %7218 = bitcast float %7217 to i32
  %7219 = sitofp i32 %7218 to float
  %7220 = fmul fast float %7219, 5.000000e+00
  %7221 = fadd fast float %7220, 0xC1EFBF8940000000
  %7222 = fptosi float %7221 to i32
  %7223 = bitcast i32 %7222 to float
  %7224 = fmul fast float %7223, %4221
  %7225 = fmul fast float %7213, %7224
  %7226 = fmul fast float %7225, %5673
  %7227 = fmul fast float %7225, %5674
  %7228 = fmul fast float %7225, %5675
  %7229 = fadd fast float %7226, %7214
  %7230 = fadd fast float %7227, %7215
  %7231 = fadd fast float %7228, %7216
  %7232 = fmul fast float %7100, %7082
  %7233 = fmul fast float %7232, %7213
  %7234 = fmul fast float %7100, %7083
  %7235 = fmul fast float %7234, %7213
  %7236 = fmul fast float %7100, %7084
  %7237 = fmul fast float %7236, %7213
  %7238 = fmul fast float %7232, %7229
  %7239 = fmul fast float %7234, %7230
  %7240 = fmul fast float %7236, %7231
  %7241 = fadd fast float %7233, %5657
  %7242 = fmul fast float %7241, %4242
  %7243 = fadd fast float %7235, %5658
  %7244 = fmul fast float %7243, %4242
  %7245 = fadd fast float %7237, %5659
  %7246 = fmul fast float %7245, %4242
  %7247 = fadd fast float %7238, %5700
  %7248 = fmul fast float %7247, %4242
  %7249 = fadd fast float %7239, %5703
  %7250 = fmul fast float %7249, %4242
  %7251 = fadd fast float %7240, %5706
  %7252 = fmul fast float %7251, %4242
  br label %7253

; <label>:7253                                    ; preds = %7207, %7000, %5653
  %7254 = phi float [ %5701, %5653 ], [ %5701, %7000 ], [ %7248, %7207 ]
  %7255 = phi float [ %5704, %5653 ], [ %5704, %7000 ], [ %7250, %7207 ]
  %7256 = phi float [ %5707, %5653 ], [ %5707, %7000 ], [ %7252, %7207 ]
  %7257 = phi float [ %5696, %5653 ], [ %5696, %7000 ], [ %7242, %7207 ]
  %7258 = phi float [ %5697, %5653 ], [ %5697, %7000 ], [ %7244, %7207 ]
  %7259 = phi float [ %5698, %5653 ], [ %5698, %7000 ], [ %7246, %7207 ]
  %7260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7261 = extractvalue %dx.types.CBufRet.i32 %7260, 0
  %7262 = icmp eq i32 %7261, 0
  br i1 %7262, label %7926, label %7263

; <label>:7263                                    ; preds = %7253
  %7264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7265 = extractvalue %dx.types.CBufRet.f32 %7264, 2
  %7266 = extractvalue %dx.types.CBufRet.f32 %7264, 3
  %7267 = fmul fast float %7265, %110
  %7268 = fmul fast float %7266, %111
  %7269 = fptoui float %7267 to i32
  %7270 = fptoui float %7268 to i32
  %7271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7272 = extractvalue %dx.types.CBufRet.f32 %7271, 0
  %7273 = extractvalue %dx.types.CBufRet.f32 %7271, 2
  %7274 = extractvalue %dx.types.CBufRet.f32 %7271, 3
  %7275 = fadd fast float %98, -4.000000e+00
  %7276 = call float @dx.op.binary.f32(i32 35, float %7275, float 0.000000e+00)  ; FMax(a,b)
  %7277 = fadd fast float %7276, %7272
  %7278 = fmul fast float %7277, %7273
  %7279 = call float @dx.op.unary.f32(i32 23, float %7278)  ; Log(value)
  %7280 = fmul fast float %7279, %7274
  %7281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7282 = extractvalue %dx.types.CBufRet.f32 %7281, 2
  %7283 = fmul fast float %7280, %7282
  %7284 = call float @dx.op.unary.f32(i32 7, float %7283)  ; Saturate(value)
  %7285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7286 = extractvalue %dx.types.CBufRet.i32 %7285, 1
  %7287 = add i32 %7286, -1
  %7288 = uitofp i32 %7286 to float
  %7289 = fmul fast float %7288, %7284
  %7290 = fptoui float %7289 to i32
  %7291 = call i32 @dx.op.binary.i32(i32 40, i32 %7290, i32 %7287)  ; UMin(a,b)
  %7292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7293 = extractvalue %dx.types.CBufRet.i32 %7292, 2
  %7294 = extractvalue %dx.types.CBufRet.i32 %7292, 3
  %7295 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7270, i32 %7293, i32 %7269)  ; UMad(a,b,c)
  %7296 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7291, i32 %7294, i32 %7295)  ; UMad(a,b,c)
  %7297 = add nsw i32 %7261, -1
  %7298 = call i32 @dx.op.binary.i32(i32 37, i32 %7297, i32 0)  ; IMax(a,b)
  %7299 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %7300 = fptoui float %7299 to i32
  %7301 = lshr i32 %7300, 5
  %7302 = call i32 @dx.op.binary.i32(i32 40, i32 %7301, i32 8191)  ; UMin(a,b)
  %7303 = shl i32 %7302, 2
  %7304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7303, i32 undef)  ; BufferLoad(srv,index,wot)
  %7305 = extractvalue %dx.types.ResRet.i32 %7304, 0
  %7306 = lshr i32 %7305, 16
  %7307 = and i32 %7305, 65535
  %7308 = lshr i32 %7305, 21
  %7309 = lshr i32 %7307, 5
  %7310 = call i32 @dx.op.binary.i32(i32 40, i32 %7309, i32 %7298)  ; UMin(a,b)
  %7311 = icmp ugt i32 %7308, %7310
  br i1 %7311, label %7926, label %7312

; <label>:7312                                    ; preds = %7263
  br label %7313

; <label>:7313                                    ; preds = %7916, %7312
  %7314 = phi i32 [ %7923, %7916 ], [ %7308, %7312 ]
  %7315 = phi float [ %7917, %7916 ], [ %7254, %7312 ]
  %7316 = phi float [ %7918, %7916 ], [ %7255, %7312 ]
  %7317 = phi float [ %7919, %7916 ], [ %7256, %7312 ]
  %7318 = phi float [ %7920, %7916 ], [ %7257, %7312 ]
  %7319 = phi float [ %7921, %7916 ], [ %7258, %7312 ]
  %7320 = phi float [ %7922, %7916 ], [ %7259, %7312 ]
  %7321 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.i32 %7321, 0
  %7323 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7296, i32 %7322, i32 %7314)  ; UMad(a,b,c)
  %7324 = shl i32 %7323, 2
  %7325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7324, i32 undef)  ; BufferLoad(srv,index,wot)
  %7326 = extractvalue %dx.types.ResRet.i32 %7325, 0
  %7327 = shl i32 %7314, 5
  %7328 = sub nsw i32 %7306, %7327
  %7329 = call i32 @dx.op.binary.i32(i32 37, i32 %7328, i32 0)  ; IMax(a,b)
  %7330 = call i32 @dx.op.binary.i32(i32 38, i32 %7329, i32 31)  ; IMin(a,b)
  %7331 = sub nsw i32 1, %7306
  %7332 = add nsw i32 %7331, %7307
  %7333 = call i32 @dx.op.binary.i32(i32 37, i32 %7332, i32 0)  ; IMax(a,b)
  %7334 = call i32 @dx.op.binary.i32(i32 38, i32 %7333, i32 32)  ; IMin(a,b)
  %7335 = and i32 %7334, 31
  %7336 = shl i32 -1, %7335
  %7337 = xor i32 %7336, -1
  %7338 = and i32 %7330, 31
  %7339 = shl i32 %7337, %7338
  %7340 = icmp eq i32 %7334, 32
  %7341 = select i1 %7340, i32 -1, i32 %7339
  %7342 = and i32 %7341, %7326
  %7343 = icmp eq i32 %7342, 0
  br i1 %7343, label %7916, label %7344

; <label>:7344                                    ; preds = %7313
  br label %7345

; <label>:7345                                    ; preds = %7479, %7344
  %7346 = phi i32 [ %7357, %7479 ], [ %7342, %7344 ]
  %7347 = phi float [ %7480, %7479 ], [ %7315, %7344 ]
  %7348 = phi float [ %7481, %7479 ], [ %7316, %7344 ]
  %7349 = phi float [ %7482, %7479 ], [ %7317, %7344 ]
  %7350 = phi float [ %7483, %7479 ], [ %7318, %7344 ]
  %7351 = phi float [ %7484, %7479 ], [ %7319, %7344 ]
  %7352 = phi float [ %7485, %7479 ], [ %7320, %7344 ]
  %7353 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7346)  ; FirstbitLo(value)
  %7354 = add i32 %7353, %7327
  %7355 = and i32 %7353, 31
  %7356 = shl i32 1, %7355
  %7357 = xor i32 %7356, %7346
  %7358 = mul i32 %7354, 112
  %7359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7358, i32 undef)  ; BufferLoad(srv,index,wot)
  %7360 = extractvalue %dx.types.ResRet.f32 %7359, 0
  %7361 = extractvalue %dx.types.ResRet.f32 %7359, 1
  %7362 = extractvalue %dx.types.ResRet.f32 %7359, 2
  %7363 = or i32 %7358, 12
  %7364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7363, i32 undef)  ; BufferLoad(srv,index,wot)
  %7365 = extractvalue %dx.types.ResRet.f32 %7364, 0
  %7366 = add i32 %7358, 16
  %7367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7366, i32 undef)  ; BufferLoad(srv,index,wot)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.ResRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.ResRet.f32 %7367, 2
  %7371 = add i32 %7358, 28
  %7372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7371, i32 undef)  ; BufferLoad(srv,index,wot)
  %7373 = extractvalue %dx.types.ResRet.i32 %7372, 0
  %7374 = add i32 %7358, 44
  %7375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7374, i32 undef)  ; BufferLoad(srv,index,wot)
  %7376 = extractvalue %dx.types.ResRet.f32 %7375, 0
  %7377 = add i32 %7358, 48
  %7378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7377, i32 undef)  ; BufferLoad(srv,index,wot)
  %7379 = extractvalue %dx.types.ResRet.f32 %7378, 0
  %7380 = extractvalue %dx.types.ResRet.f32 %7378, 1
  %7381 = extractvalue %dx.types.ResRet.f32 %7378, 2
  %7382 = extractvalue %dx.types.ResRet.f32 %7378, 3
  %7383 = add i32 %7358, 64
  %7384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7383, i32 undef)  ; BufferLoad(srv,index,wot)
  %7385 = extractvalue %dx.types.ResRet.f32 %7384, 0
  %7386 = extractvalue %dx.types.ResRet.f32 %7384, 1
  %7387 = extractvalue %dx.types.ResRet.f32 %7384, 2
  %7388 = extractvalue %dx.types.ResRet.f32 %7384, 3
  %7389 = add i32 %7358, 80
  %7390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7389, i32 undef)  ; BufferLoad(srv,index,wot)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 1
  %7392 = extractvalue %dx.types.ResRet.f32 %7390, 2
  %7393 = add i32 %7358, 92
  %7394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7393, i32 undef)  ; BufferLoad(srv,index,wot)
  %7395 = extractvalue %dx.types.ResRet.i32 %7394, 0
  %7396 = call float @dx.op.dot3.f32(i32 55, float %7360, float %7361, float %7362, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7397 = select i1 %231, float %7391, float %7360
  %7398 = select i1 %231, float %7396, float %7361
  %7399 = select i1 %231, float %7392, float %7362
  %7400 = and i32 %7395, 65535
  %7401 = uitofp i32 %7400 to float
  %7402 = lshr i32 %7395, 16
  %7403 = uitofp i32 %7402 to float
  %7404 = and i32 %7373, 65535
  %7405 = and i32 %7373, 50331648
  %7406 = icmp eq i32 %7405, 33554432
  %7407 = fsub fast float %7379, %169
  %7408 = fsub fast float %7380, %170
  %7409 = fsub fast float %7381, %171
  %7410 = call float @dx.op.dot3.f32(i32 55, float %7407, float %7408, float %7409, float %7407, float %7408, float %7409)  ; Dot3(ax,ay,az,bx,by,bz)
  %7411 = call float @dx.op.unary.f32(i32 24, float %7410)  ; Sqrt(value)
  %7412 = fdiv fast float 1.000000e+00, %7411
  %7413 = fmul fast float %7412, %7407
  %7414 = fmul fast float %7412, %7408
  %7415 = fmul fast float %7412, %7409
  %7416 = fadd fast float %7411, %7365
  %7417 = fdiv fast float 1.000000e+00, %7416
  %7418 = fmul float %7376, %7417
  %7419 = fmul float %7418, %7418
  %7420 = call float @dx.op.unary.f32(i32 7, float %7419)  ; Saturate(value)
  br i1 %7406, label %7421, label %7442

; <label>:7421                                    ; preds = %7345
  %7422 = fmul fast float %7387, %7368
  %7423 = fmul fast float %7387, %7369
  %7424 = fmul fast float %7387, %7370
  %7425 = fadd fast float %7407, %7422
  %7426 = fadd fast float %7408, %7423
  %7427 = fadd fast float %7409, %7424
  %7428 = call float @dx.op.dot3.f32(i32 55, float %7425, float %7426, float %7427, float %7425, float %7426, float %7427)  ; Dot3(ax,ay,az,bx,by,bz)
  %7429 = call float @dx.op.unary.f32(i32 25, float %7428)  ; Rsqrt(value)
  %7430 = fmul fast float %7429, %7425
  %7431 = fmul fast float %7429, %7426
  %7432 = fmul fast float %7429, %7427
  %7433 = fsub fast float %169, %7379
  %7434 = fsub fast float %170, %7380
  %7435 = fsub fast float %171, %7381
  %7436 = fsub fast float -0.000000e+00, %7433
  %7437 = fsub fast float -0.000000e+00, %7434
  %7438 = fsub fast float -0.000000e+00, %7435
  %7439 = call float @dx.op.dot3.f32(i32 55, float %7436, float %7437, float %7438, float %7368, float %7369, float %7370)  ; Dot3(ax,ay,az,bx,by,bz)
  %7440 = fcmp fast ogt float %7439, 0.000000e+00
  %7441 = uitofp i1 %7440 to float
  br label %7442

; <label>:7442                                    ; preds = %7421, %7345
  %7443 = phi float [ %7441, %7421 ], [ 1.000000e+00, %7345 ]
  %7444 = phi float [ %7430, %7421 ], [ %7413, %7345 ]
  %7445 = phi float [ %7431, %7421 ], [ %7414, %7345 ]
  %7446 = phi float [ %7432, %7421 ], [ %7415, %7345 ]
  %7447 = call float @dx.op.dot3.f32(i32 55, float %7368, float %7369, float %7370, float %7444, float %7445, float %7446)  ; Dot3(ax,ay,az,bx,by,bz)
  %7448 = fmul fast float %7447, %7447
  %7449 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7450 = fsub fast float 1.000000e+00, %7449
  %7451 = fmul fast float %7450, 5.000000e-01
  %7452 = fcmp fast ogt float %7447, 0.000000e+00
  %7453 = fsub fast float 1.000000e+00, %7451
  %7454 = select i1 %7452, float %7451, float %7453
  %7455 = fmul fast float %7454, %7403
  %7456 = fadd fast float %7455, %7401
  %7457 = fmul fast float %7456, 0x3EF0001000000000
  %7458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %7457, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = fmul fast float %7447, %7385
  %7461 = fadd fast float %7460, %7386
  %7462 = call float @dx.op.unary.f32(i32 7, float %7461)  ; Saturate(value)
  %7463 = select i1 %7406, float 1.000000e+00, float %7462
  %7464 = select i1 %7406, float %7462, float 1.000000e+00
  %7465 = fmul fast float %7411, %7382
  %7466 = fsub fast float 1.000000e+00, %7465
  %7467 = fmul fast float %7466, %7388
  %7468 = call float @dx.op.unary.f32(i32 7, float %7467)  ; Saturate(value)
  %7469 = fmul fast float %7468, %7464
  %7470 = fmul fast float %7469, 2.000000e+00
  %7471 = fsub fast float 3.000000e+00, %7470
  %7472 = fmul fast float %7459, %7443
  %7473 = fmul fast float %7469, %7469
  %7474 = fmul fast float %7473, %7472
  %7475 = fmul fast float %7474, %7471
  %7476 = call float @dx.op.binary.f32(i32 36, float %7475, float %7475)  ; FMin(a,b)
  %7477 = call float @dx.op.binary.f32(i32 36, float %7475, float %7476)  ; FMin(a,b)
  %7478 = fcmp fast ogt float %7477, 0.000000e+00
  br i1 %7478, label %7487, label %7479, !dx.controlflow.hints !132

; <label>:7479                                    ; preds = %7872, %7633, %7442
  %7480 = phi float [ %7347, %7633 ], [ %7347, %7442 ], [ %7912, %7872 ]
  %7481 = phi float [ %7348, %7633 ], [ %7348, %7442 ], [ %7913, %7872 ]
  %7482 = phi float [ %7349, %7633 ], [ %7349, %7442 ], [ %7914, %7872 ]
  %7483 = phi float [ %7350, %7633 ], [ %7350, %7442 ], [ %7906, %7872 ]
  %7484 = phi float [ %7351, %7633 ], [ %7351, %7442 ], [ %7907, %7872 ]
  %7485 = phi float [ %7352, %7633 ], [ %7352, %7442 ], [ %7908, %7872 ]
  %7486 = icmp eq i32 %7346, %7356
  br i1 %7486, label %7915, label %7345

; <label>:7487                                    ; preds = %7442
  %7488 = icmp eq i32 %7404, 255
  br i1 %7488, label %7633, label %7489, !dx.controlflow.hints !133

; <label>:7489                                    ; preds = %7487
  %7490 = mul nuw nsw i32 %7404, 176
  %7491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7490, i32 undef)  ; BufferLoad(srv,index,wot)
  %7492 = extractvalue %dx.types.ResRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.ResRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.ResRet.f32 %7491, 2
  %7495 = extractvalue %dx.types.ResRet.f32 %7491, 3
  %7496 = add nuw nsw i32 %7490, 16
  %7497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7496, i32 undef)  ; BufferLoad(srv,index,wot)
  %7498 = extractvalue %dx.types.ResRet.f32 %7497, 0
  %7499 = extractvalue %dx.types.ResRet.f32 %7497, 1
  %7500 = add nuw nsw i32 %7490, 32
  %7501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7500, i32 undef)  ; BufferLoad(srv,index,wot)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.ResRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.ResRet.f32 %7501, 2
  %7505 = add nuw nsw i32 %7490, 48
  %7506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7505, i32 undef)  ; BufferLoad(srv,index,wot)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = extractvalue %dx.types.ResRet.f32 %7506, 1
  %7509 = extractvalue %dx.types.ResRet.f32 %7506, 2
  %7510 = extractvalue %dx.types.ResRet.f32 %7506, 3
  %7511 = add nuw nsw i32 %7490, 64
  %7512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7511, i32 undef)  ; BufferLoad(srv,index,wot)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.ResRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.ResRet.f32 %7512, 2
  %7516 = extractvalue %dx.types.ResRet.f32 %7512, 3
  %7517 = add nuw nsw i32 %7490, 80
  %7518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7517, i32 undef)  ; BufferLoad(srv,index,wot)
  %7519 = extractvalue %dx.types.ResRet.f32 %7518, 0
  %7520 = extractvalue %dx.types.ResRet.f32 %7518, 1
  %7521 = extractvalue %dx.types.ResRet.f32 %7518, 2
  %7522 = extractvalue %dx.types.ResRet.f32 %7518, 3
  %7523 = add nuw nsw i32 %7490, 96
  %7524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %7523, i32 undef)  ; BufferLoad(srv,index,wot)
  %7525 = extractvalue %dx.types.ResRet.f32 %7524, 0
  %7526 = extractvalue %dx.types.ResRet.f32 %7524, 1
  %7527 = extractvalue %dx.types.ResRet.f32 %7524, 2
  %7528 = extractvalue %dx.types.ResRet.f32 %7524, 3
  %7529 = bitcast float %7499 to i32
  %7530 = fmul fast float %7504, %119
  %7531 = fmul fast float %7504, %121
  %7532 = fmul fast float %7504, %123
  %7533 = fadd fast float %7530, %169
  %7534 = fadd fast float %7531, %170
  %7535 = fadd fast float %7532, %171
  %7536 = fmul fast float %7533, %7507
  %7537 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7513, float %7536)  ; FMad(a,b,c)
  %7538 = call float @dx.op.tertiary.f32(i32 46, float %7535, float %7519, float %7537)  ; FMad(a,b,c)
  %7539 = fadd fast float %7538, %7525
  %7540 = fmul fast float %7533, %7508
  %7541 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7514, float %7540)  ; FMad(a,b,c)
  %7542 = call float @dx.op.tertiary.f32(i32 46, float %7535, float %7520, float %7541)  ; FMad(a,b,c)
  %7543 = fadd fast float %7542, %7526
  %7544 = fmul fast float %7533, %7509
  %7545 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7515, float %7544)  ; FMad(a,b,c)
  %7546 = call float @dx.op.tertiary.f32(i32 46, float %7535, float %7521, float %7545)  ; FMad(a,b,c)
  %7547 = fadd fast float %7546, %7527
  %7548 = fmul fast float %7533, %7510
  %7549 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7516, float %7548)  ; FMad(a,b,c)
  %7550 = call float @dx.op.tertiary.f32(i32 46, float %7535, float %7522, float %7549)  ; FMad(a,b,c)
  %7551 = fadd fast float %7550, %7528
  %7552 = fdiv fast float %7539, %7551
  %7553 = fdiv fast float %7543, %7551
  %7554 = fdiv fast float %7547, %7551
  %7555 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7554)  ; FMax(a,b)
  %7556 = fmul fast float %242, 0x401921FB60000000
  %7557 = call float @dx.op.unary.f32(i32 13, float %7556)  ; Sin(value)
  %7558 = call float @dx.op.unary.f32(i32 12, float %7556)  ; Cos(value)
  %7559 = fmul fast float %7558, %7503
  %7560 = call float @dx.op.tertiary.f32(i32 46, float %7557, float %7503, float 0.000000e+00)  ; FMad(a,b,c)
  %7561 = fmul fast float %7503, %7557
  %7562 = fsub fast float -0.000000e+00, %7561
  %7563 = call float @dx.op.tertiary.f32(i32 46, float %7558, float %7503, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7564

; <label>:7564                                    ; preds = %7564, %7489
  %7565 = phi float [ 0.000000e+00, %7489 ], [ %7597, %7564 ]
  %7566 = phi float [ 0.000000e+00, %7489 ], [ %7599, %7564 ]
  %7567 = phi i32 [ 0, %7489 ], [ %7600, %7564 ]
  %7568 = mul i32 %7567, 2
  %7569 = add i32 0, %7568
  %7570 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7569
  %7571 = load float, float* %7570, align 4
  %7572 = mul i32 %7567, 2
  %7573 = add i32 1, %7572
  %7574 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7573
  %7575 = load float, float* %7574, align 4
  %7576 = fmul fast float %7559, %7571
  %7577 = call float @dx.op.tertiary.f32(i32 46, float %7575, float %7562, float %7576)  ; FMad(a,b,c)
  %7578 = fmul fast float %7571, %7560
  %7579 = call float @dx.op.tertiary.f32(i32 46, float %7575, float %7563, float %7578)  ; FMad(a,b,c)
  %7580 = fadd fast float %7577, %7552
  %7581 = fadd fast float %7579, %7553
  %7582 = fmul fast float %7580, %7498
  %7583 = fmul fast float %7581, %7498
  %7584 = call float @dx.op.binary.f32(i32 35, float %7582, float %7494)  ; FMax(a,b)
  %7585 = call float @dx.op.binary.f32(i32 35, float %7583, float %7494)  ; FMax(a,b)
  %7586 = call float @dx.op.binary.f32(i32 36, float %7584, float %7495)  ; FMin(a,b)
  %7587 = call float @dx.op.binary.f32(i32 36, float %7585, float %7495)  ; FMin(a,b)
  %7588 = fadd fast float %7586, %7492
  %7589 = fadd fast float %7587, %7493
  %7590 = uitofp i32 %7529 to float
  %7591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %7588, float %7589, float %7590, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7592 = extractvalue %dx.types.ResRet.f32 %7591, 0
  %7593 = fsub fast float %7592, %7555
  %7594 = fsub fast float %7593, %7502
  %7595 = fcmp fast ogt float %7594, 0.000000e+00
  %7596 = select i1 %7595, float 1.000000e+00, float 0.000000e+00
  %7597 = fadd fast float %7596, %7565
  %7598 = select i1 %7595, float %7594, float 0.000000e+00
  %7599 = fadd fast float %7598, %7566
  %7600 = add nuw nsw i32 %7567, 1
  %7601 = icmp eq i32 %7600, 8
  br i1 %7601, label %7602, label %7564

; <label>:7602                                    ; preds = %7564
  %7603 = fdiv fast float 1.000000e+00, %7597
  %7604 = fmul fast float %7603, %7599
  %7605 = fdiv fast float 1.000000e+00, %7555
  %7606 = fmul fast float %7604, %7605
  %7607 = call float @dx.op.unary.f32(i32 7, float %7606)  ; Saturate(value)
  %7608 = call float @dx.op.binary.f32(i32 35, float %7607, float 0.000000e+00)  ; FMax(a,b)
  %7609 = fmul fast float %7597, 1.250000e-01
  %7610 = call float @dx.op.unary.f32(i32 7, float %7609)  ; Saturate(value)
  %7611 = fmul fast float %7610, 2.000000e+00
  %7612 = fadd fast float %7611, -1.000000e+00
  %7613 = fcmp fast ogt float %7612, 0.000000e+00
  %7614 = fcmp fast olt float %7612, 0.000000e+00
  %7615 = zext i1 %7613 to i32
  %7616 = zext i1 %7614 to i32
  %7617 = sub nsw i32 %7615, %7616
  %7618 = sitofp i32 %7617 to float
  %7619 = fmul fast float %7618, %7612
  %7620 = fsub fast float 1.000000e+00, %7619
  %7621 = fmul fast float %7620, %7620
  %7622 = fmul fast float %7621, %7620
  %7623 = fsub fast float %7620, %7622
  %7624 = fmul fast float %7623, %7608
  %7625 = fsub fast float 1.000000e+00, %7622
  %7626 = fsub fast float %7625, %7624
  %7627 = fmul fast float %7618, 5.000000e-01
  %7628 = fmul fast float %7627, %7626
  %7629 = fsub fast float -5.000000e-01, %7628
  %7630 = fmul fast float %7629, %7463
  %7631 = fadd fast float %7630, 1.000000e+00
  %7632 = fmul fast float %7631, %7475
  br label %7633

; <label>:7633                                    ; preds = %7602, %7487
  %7634 = phi float [ %7632, %7602 ], [ %7475, %7487 ]
  %7635 = call float @dx.op.binary.f32(i32 36, float %7634, float %7634)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7634, float %7635)  ; FMin(a,b)
  %7637 = fcmp fast ogt float %7636, 0.000000e+00
  br i1 %7637, label %7638, label %7479, !dx.controlflow.hints !134

; <label>:7638                                    ; preds = %7633
  %7639 = fmul fast float %7634, %7397
  %7640 = fmul fast float %7634, %7398
  %7641 = fmul fast float %7634, %7399
  %7642 = fsub fast float %7381, %4647
  %7643 = fcmp fast ogt float %7642, 0.000000e+00
  %7644 = fsub fast float %171, %4647
  %7645 = fcmp fast ogt float %7644, 0.000000e+00
  %7646 = xor i1 %7645, %7643
  %7647 = fsub fast float %4647, %7381
  %7648 = fmul fast float %7647, 2.000000e+00
  %7649 = fadd fast float %7648, %7381
  %7650 = select i1 %7646, float %7381, float %7649
  %7651 = fsub fast float %7650, %171
  %7652 = call float @dx.op.dot3.f32(i32 55, float %7407, float %7408, float %7651, float %7407, float %7408, float %7651)  ; Dot3(ax,ay,az,bx,by,bz)
  %7653 = call float @dx.op.unary.f32(i32 25, float %7652)  ; Rsqrt(value)
  %7654 = fmul fast float %7653, %7407
  %7655 = fmul fast float %7653, %7408
  %7656 = fmul fast float %7653, %7651
  %7657 = fsub fast float %4647, %171
  %7658 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7657)  ; Dot3(ax,ay,az,bx,by,bz)
  %7659 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7654, float %7655, float %7656)  ; Dot3(ax,ay,az,bx,by,bz)
  %7660 = fdiv fast float 1.000000e+00, %7659
  %7661 = fmul fast float %7660, %7658
  %7662 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7644, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7663 = fcmp fast ogt float %7662, 0.000000e+00
  %7664 = fcmp fast olt float %7662, 0.000000e+00
  %7665 = zext i1 %7663 to i32
  %7666 = zext i1 %7664 to i32
  %7667 = sub nsw i32 %7665, %7666
  %7668 = sitofp i32 %7667 to float
  %7669 = fsub fast float %7650, %4647
  %7670 = call float @dx.op.dot3.f32(i32 55, float %7407, float %7408, float %7669, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7671 = fcmp fast ogt float %7670, 0.000000e+00
  %7672 = fcmp fast olt float %7670, 0.000000e+00
  %7673 = zext i1 %7671 to i32
  %7674 = zext i1 %7672 to i32
  %7675 = sub nsw i32 %7673, %7674
  %7676 = sitofp i32 %7675 to float
  %7677 = fcmp fast une float %7668, %7676
  br i1 %7677, label %7678, label %7688

; <label>:7678                                    ; preds = %7638
  %7679 = fmul fast float %7661, %7656
  %7680 = fmul fast float %7661, %7655
  %7681 = fmul fast float %7661, %7654
  %7682 = fmul fast float %7681, %7681
  %7683 = fmul fast float %7680, %7680
  %7684 = fadd fast float %7682, %7683
  %7685 = fmul fast float %7679, %7679
  %7686 = fadd fast float %7684, %7685
  %7687 = call float @dx.op.unary.f32(i32 24, float %7686)  ; Sqrt(value)
  br label %7700

; <label>:7688                                    ; preds = %7638
  %7689 = icmp slt i32 %7667, 0
  br i1 %7689, label %7690, label %7700

; <label>:7690                                    ; preds = %7688
  %7691 = fsub fast float %169, %7379
  %7692 = fsub fast float %170, %7380
  %7693 = fsub fast float %171, %7650
  %7694 = fmul fast float %7691, %7691
  %7695 = fmul fast float %7692, %7692
  %7696 = fadd fast float %7694, %7695
  %7697 = fmul fast float %7693, %7693
  %7698 = fadd fast float %7696, %7697
  %7699 = call float @dx.op.unary.f32(i32 24, float %7698)  ; Sqrt(value)
  br label %7700

; <label>:7700                                    ; preds = %7690, %7688, %7678
  %7701 = phi float [ %7687, %7678 ], [ %7699, %7690 ], [ 0.000000e+00, %7688 ]
  %7702 = and i1 %7645, %7643
  %7703 = fsub fast float -0.000000e+00, %7701
  %7704 = select i1 %7702, float -0.000000e+00, float %7703
  %7705 = fmul fast float %4644, 0x3FF7154760000000
  %7706 = fmul fast float %7705, %7704
  %7707 = fmul fast float %4645, 0x3FF7154760000000
  %7708 = fmul fast float %7707, %7704
  %7709 = fmul fast float %4646, 0x3FF7154760000000
  %7710 = fmul fast float %7709, %7704
  %7711 = call float @dx.op.unary.f32(i32 21, float %7706)  ; Exp(value)
  %7712 = call float @dx.op.unary.f32(i32 21, float %7708)  ; Exp(value)
  %7713 = call float @dx.op.unary.f32(i32 21, float %7710)  ; Exp(value)
  %7714 = call float @dx.op.unary.f32(i32 7, float %7711)  ; Saturate(value)
  %7715 = call float @dx.op.unary.f32(i32 7, float %7712)  ; Saturate(value)
  %7716 = call float @dx.op.unary.f32(i32 7, float %7713)  ; Saturate(value)
  %7717 = fmul fast float %7639, %7714
  %7718 = fmul fast float %7640, %7715
  %7719 = fmul fast float %7641, %7716
  %7720 = fsub fast float %7413, %4844
  %7721 = fsub fast float %7414, %4843
  %7722 = fsub fast float %7415, %4842
  %7723 = call float @dx.op.dot3.f32(i32 55, float %7720, float %7721, float %7722, float %7720, float %7721, float %7722)  ; Dot3(ax,ay,az,bx,by,bz)
  %7724 = call float @dx.op.unary.f32(i32 25, float %7723)  ; Rsqrt(value)
  %7725 = fmul fast float %7724, %7720
  %7726 = fmul fast float %7724, %7721
  %7727 = fmul fast float %7724, %7722
  %7728 = call float @dx.op.dot3.f32(i32 55, float %7413, float %7414, float %7415, float %4851, float %4852, float %4853)  ; Dot3(ax,ay,az,bx,by,bz)
  %7729 = call float @dx.op.dot3.f32(i32 55, float %4841, float %4840, float %4839, float %7725, float %7726, float %7727)  ; Dot3(ax,ay,az,bx,by,bz)
  %7730 = call float @dx.op.unary.f32(i32 7, float %7728)  ; Saturate(value)
  %7731 = fmul fast float %7730, %7420
  %7732 = bitcast i32 %4883 to float
  %7733 = fmul fast float %7730, %7730
  %7734 = fmul fast float %7733, %7732
  %7735 = call float @dx.op.unary.f32(i32 7, float %7734)  ; Saturate(value)
  %7736 = fmul fast float %7731, %7735
  %7737 = bitcast float %7410 to i32
  %7738 = ashr i32 %7737, 1
  %7739 = sub nsw i32 1597463007, %7738
  %7740 = bitcast i32 %7739 to float
  %7741 = fmul fast float %7740, %7407
  %7742 = fmul fast float %7740, %7408
  %7743 = fmul fast float %7740, %7409
  %7744 = fsub fast float %7741, %4844
  %7745 = fsub fast float %7742, %4843
  %7746 = fsub fast float %7743, %4842
  %7747 = call float @dx.op.dot3.f32(i32 55, float %7744, float %7745, float %7746, float %7744, float %7745, float %7746)  ; Dot3(ax,ay,az,bx,by,bz)
  %7748 = call float @dx.op.unary.f32(i32 25, float %7747)  ; Rsqrt(value)
  %7749 = fmul fast float %7744, %7748
  %7750 = fmul fast float %7745, %7748
  %7751 = fmul fast float %7746, %7748
  %7752 = call float @dx.op.dot3.f32(i32 55, float %4851, float %4852, float %4853, float %7749, float %7750, float %7751)  ; Dot3(ax,ay,az,bx,by,bz)
  %7753 = fmul fast float %7752, %7752
  %7754 = call float @dx.op.unary.f32(i32 6, float %7728)  ; FAbs(value)
  %7755 = fsub fast float 1.000000e+00, %4877
  %7756 = fmul fast float %4859, %4859
  %7757 = fmul fast float %7756, %7755
  %7758 = fadd fast float %7757, %4877
  %7759 = bitcast float %7758 to i32
  %7760 = ashr i32 %7759, 1
  %7761 = add nsw i32 %7760, 532487669
  %7762 = bitcast i32 %7761 to float
  %7763 = fadd fast float %7762, %4859
  %7764 = fmul fast float %4877, %7753
  %7765 = fsub fast float 1.000000e+00, %7753
  %7766 = fadd fast float %7765, %7764
  %7767 = fmul fast float %7754, %7754
  %7768 = fmul fast float %7767, %7755
  %7769 = fadd fast float %7768, %4877
  %7770 = bitcast float %7769 to i32
  %7771 = ashr i32 %7770, 1
  %7772 = add nsw i32 %7771, 532487669
  %7773 = bitcast i32 %7772 to float
  %7774 = fadd fast float %7773, %7754
  %7775 = fmul fast float %7766, %7766
  %7776 = fmul fast float %7775, %7763
  %7777 = fmul fast float %7776, %7774
  %7778 = fdiv fast float 1.000000e+00, %7777
  %7779 = bitcast float %4877 to i32
  %7780 = sitofp i32 %7779 to float
  %7781 = fmul fast float %7780, 0x3FE7F73180000000
  %7782 = fadd fast float %7781, 0x41AFE27C40000000
  %7783 = fptosi float %7782 to i32
  %7784 = bitcast i32 %7783 to float
  %7785 = fmul fast float %7376, 0x3FD80E9D60000000
  %7786 = fmul fast float %7785, %7740
  %7787 = fadd fast float %7784, %7786
  %7788 = bitcast float %7787 to i32
  %7789 = sub nsw i32 2129859010, %7788
  %7790 = bitcast i32 %7789 to float
  %7791 = fmul fast float %4877, %7778
  %7792 = fmul fast float %7791, %7784
  %7793 = fmul fast float %7792, %7790
  %7794 = call float @dx.op.unary.f32(i32 6, float %7729)  ; FAbs(value)
  %7795 = fsub fast float 1.000000e+00, %7794
  %7796 = bitcast float %7795 to i32
  %7797 = sitofp i32 %7796 to float
  %7798 = fmul fast float %7797, 5.000000e+00
  %7799 = fadd fast float %7798, 0xC1EFBF8940000000
  %7800 = fptosi float %7799 to i32
  %7801 = bitcast i32 %7800 to float
  %7802 = fsub fast float 1.000000e+00, %4848
  %7803 = fsub fast float 1.000000e+00, %4849
  %7804 = fsub fast float 1.000000e+00, %4857
  %7805 = fmul fast float %7801, %7802
  %7806 = fmul fast float %7801, %7803
  %7807 = fmul fast float %7801, %7804
  %7808 = fadd fast float %7805, %4848
  %7809 = fadd fast float %7806, %4849
  %7810 = fadd fast float %7807, %4857
  br i1 %5131, label %7811, label %7834

; <label>:7811                                    ; preds = %7700
  %7812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4222, float %7794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = extractvalue %dx.types.ResRet.f32 %7812, 1
  %7815 = extractvalue %dx.types.ResRet.f32 %7812, 2
  %7816 = fadd fast float %7813, -5.000000e-01
  %7817 = fadd fast float %7814, -5.000000e-01
  %7818 = fadd fast float %7815, -5.000000e-01
  %7819 = fmul fast float %4848, 4.000000e+00
  %7820 = fmul fast float %7819, %7802
  %7821 = fmul fast float %7820, %7816
  %7822 = fmul fast float %4849, 4.000000e+00
  %7823 = fmul fast float %7822, %7803
  %7824 = fmul fast float %7823, %7817
  %7825 = fmul fast float %4857, 4.000000e+00
  %7826 = fmul fast float %7825, %7804
  %7827 = fmul fast float %7826, %7818
  %7828 = fadd fast float %7821, %7808
  %7829 = fadd fast float %7824, %7809
  %7830 = fadd fast float %7827, %7810
  %7831 = call float @dx.op.unary.f32(i32 7, float %7828)  ; Saturate(value)
  %7832 = call float @dx.op.unary.f32(i32 7, float %7829)  ; Saturate(value)
  %7833 = call float @dx.op.unary.f32(i32 7, float %7830)  ; Saturate(value)
  br label %7834

; <label>:7834                                    ; preds = %7811, %7700
  %7835 = phi float [ %7831, %7811 ], [ %7808, %7700 ]
  %7836 = phi float [ %7832, %7811 ], [ %7809, %7700 ]
  %7837 = phi float [ %7833, %7811 ], [ %7810, %7700 ]
  %7838 = fmul fast float %7728, 9.843750e-01
  %7839 = fadd fast float %7838, 7.812500e-03
  %7840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7839, float %5121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7841 = extractvalue %dx.types.ResRet.f32 %7840, 2
  %7842 = extractvalue %dx.types.ResRet.f32 %7840, 3
  %7843 = fmul fast float %7841, %4848
  %7844 = fmul fast float %7841, %4849
  %7845 = fmul fast float %7841, %4857
  %7846 = fadd fast float %7843, %7842
  %7847 = fadd fast float %7844, %7842
  %7848 = fadd fast float %7845, %7842
  br i1 %5131, label %7849, label %7872

; <label>:7849                                    ; preds = %7834
  %7850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4222, float %7728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7851 = extractvalue %dx.types.ResRet.f32 %7850, 0
  %7852 = extractvalue %dx.types.ResRet.f32 %7850, 1
  %7853 = extractvalue %dx.types.ResRet.f32 %7850, 2
  %7854 = fadd fast float %7851, -5.000000e-01
  %7855 = fadd fast float %7852, -5.000000e-01
  %7856 = fadd fast float %7853, -5.000000e-01
  %7857 = fmul fast float %4848, 4.000000e+00
  %7858 = fmul fast float %7857, %7802
  %7859 = fmul fast float %7858, %7854
  %7860 = fmul fast float %4849, 4.000000e+00
  %7861 = fmul fast float %7860, %7803
  %7862 = fmul fast float %7861, %7855
  %7863 = fmul fast float %4857, 4.000000e+00
  %7864 = fmul fast float %7863, %7804
  %7865 = fmul fast float %7864, %7856
  %7866 = fadd fast float %7859, %7846
  %7867 = fadd fast float %7862, %7847
  %7868 = fadd fast float %7865, %7848
  %7869 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7870 = call float @dx.op.unary.f32(i32 7, float %7867)  ; Saturate(value)
  %7871 = call float @dx.op.unary.f32(i32 7, float %7868)  ; Saturate(value)
  br label %7872

; <label>:7872                                    ; preds = %7849, %7834
  %7873 = phi float [ %7869, %7849 ], [ %7846, %7834 ]
  %7874 = phi float [ %7870, %7849 ], [ %7847, %7834 ]
  %7875 = phi float [ %7871, %7849 ], [ %7848, %7834 ]
  %7876 = call float @dx.op.binary.f32(i32 35, float %7874, float %7875)  ; FMax(a,b)
  %7877 = call float @dx.op.binary.f32(i32 35, float %7873, float %7876)  ; FMax(a,b)
  %7878 = fsub fast float 1.000000e+00, %7877
  %7879 = fmul fast float %7835, %7793
  %7880 = fmul fast float %7836, %7793
  %7881 = fmul fast float %7837, %7793
  %7882 = fsub fast float 1.000000e+00, %7729
  %7883 = bitcast float %7882 to i32
  %7884 = sitofp i32 %7883 to float
  %7885 = fmul fast float %7884, 5.000000e+00
  %7886 = fadd fast float %7885, 0xC1EFBF8940000000
  %7887 = fptosi float %7886 to i32
  %7888 = bitcast i32 %7887 to float
  %7889 = fmul fast float %7888, %4221
  %7890 = fmul fast float %7878, %7889
  %7891 = fmul fast float %7890, %5673
  %7892 = fmul fast float %7890, %5674
  %7893 = fmul fast float %7890, %5675
  %7894 = fadd fast float %7891, %7879
  %7895 = fadd fast float %7892, %7880
  %7896 = fadd fast float %7893, %7881
  %7897 = fmul fast float %7717, %4242
  %7898 = fmul fast float %7897, %7736
  %7899 = fmul fast float %7898, %7878
  %7900 = fmul fast float %7718, %4242
  %7901 = fmul fast float %7900, %7736
  %7902 = fmul fast float %7901, %7878
  %7903 = fmul fast float %7719, %4242
  %7904 = fmul fast float %7903, %7736
  %7905 = fmul fast float %7904, %7878
  %7906 = fadd fast float %7899, %7350
  %7907 = fadd fast float %7902, %7351
  %7908 = fadd fast float %7905, %7352
  %7909 = fmul fast float %7898, %7894
  %7910 = fmul fast float %7901, %7895
  %7911 = fmul fast float %7904, %7896
  %7912 = fadd fast float %7909, %7347
  %7913 = fadd fast float %7910, %7348
  %7914 = fadd fast float %7911, %7349
  br label %7479

; <label>:7915                                    ; preds = %7479
  br label %7916

; <label>:7916                                    ; preds = %7915, %7313
  %7917 = phi float [ %7315, %7313 ], [ %7480, %7915 ]
  %7918 = phi float [ %7316, %7313 ], [ %7481, %7915 ]
  %7919 = phi float [ %7317, %7313 ], [ %7482, %7915 ]
  %7920 = phi float [ %7318, %7313 ], [ %7483, %7915 ]
  %7921 = phi float [ %7319, %7313 ], [ %7484, %7915 ]
  %7922 = phi float [ %7320, %7313 ], [ %7485, %7915 ]
  %7923 = add i32 %7314, 1
  %7924 = icmp ugt i32 %7923, %7310
  br i1 %7924, label %7925, label %7313

; <label>:7925                                    ; preds = %7916
  br label %7926

; <label>:7926                                    ; preds = %7925, %7263, %7253
  %7927 = phi float [ %7254, %7253 ], [ %7254, %7263 ], [ %7917, %7925 ]
  %7928 = phi float [ %7255, %7253 ], [ %7255, %7263 ], [ %7918, %7925 ]
  %7929 = phi float [ %7256, %7253 ], [ %7256, %7263 ], [ %7919, %7925 ]
  %7930 = phi float [ %7257, %7253 ], [ %7257, %7263 ], [ %7920, %7925 ]
  %7931 = phi float [ %7258, %7253 ], [ %7258, %7263 ], [ %7921, %7925 ]
  %7932 = phi float [ %7259, %7253 ], [ %7259, %7263 ], [ %7922, %7925 ]
  %7933 = fmul fast float %4242, %4242
  %7934 = fsub fast float 1.000000e+00, %7933
  %7935 = call float @dx.op.dot3.f32(i32 55, float %7934, float %7934, float %7934, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7936 = fsub fast float 1.000000e+00, %7935
  %7937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7938 = extractvalue %dx.types.CBufRet.f32 %7937, 0
  %7939 = fmul fast float %7938, %5679
  %7940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7941 = extractvalue %dx.types.CBufRet.f32 %7940, 3
  %7942 = fsub fast float 1.000000e+00, %4220
  %7943 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7944 = fadd fast float %7932, %4219
  %7945 = fmul fast float %7944, %4220
  %7946 = fmul fast float %7943, %7941
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 3
  %7949 = fmul fast float %7930, %4845
  %7950 = fmul fast float %7931, %4846
  %7951 = fmul fast float %7932, %4847
  %7952 = fcmp fast ogt float %98, %191
  %7953 = and i1 %7952, %4650
  %7954 = or i1 %4656, %7953
  %7955 = icmp eq i32 %4649, 2
  %7956 = fcmp fast ole float %98, %191
  %7957 = and i1 %7956, %7955
  %7958 = or i1 %7957, %7954
  br i1 %7953, label %7959, label %8216

; <label>:7959                                    ; preds = %7926
  %7960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7961 = extractvalue %dx.types.CBufRet.f32 %7960, 2
  %7962 = extractvalue %dx.types.CBufRet.f32 %7960, 3
  %7963 = fmul fast float %7961, %110
  %7964 = fmul fast float %7962, %111
  %7965 = call float @dx.op.unary.f32(i32 7, float %7963)  ; Saturate(value)
  %7966 = call float @dx.op.unary.f32(i32 7, float %7964)  ; Saturate(value)
  %7967 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7965, float %7966, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7968 = extractvalue %dx.types.ResRet.f32 %7967, 0
  %7969 = extractvalue %dx.types.ResRet.f32 %7967, 1
  %7970 = extractvalue %dx.types.ResRet.f32 %7967, 2
  %7971 = extractvalue %dx.types.ResRet.f32 %7967, 3
  %7972 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %7965, float %7966, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7973 = extractvalue %dx.types.ResRet.f32 %7972, 0
  %7974 = extractvalue %dx.types.ResRet.f32 %7972, 1
  %7975 = extractvalue %dx.types.ResRet.f32 %7972, 2
  %7976 = extractvalue %dx.types.ResRet.f32 %7972, 3
  %7977 = call float @dx.op.binary.f32(i32 35, float %7969, float %7970)  ; FMax(a,b)
  %7978 = call float @dx.op.binary.f32(i32 35, float %7968, float %7977)  ; FMax(a,b)
  %7979 = call float @dx.op.binary.f32(i32 35, float %7978, float %7971)  ; FMax(a,b)
  %7980 = call float @dx.op.binary.f32(i32 36, float %7974, float %7975)  ; FMin(a,b)
  %7981 = call float @dx.op.binary.f32(i32 36, float %7973, float %7980)  ; FMin(a,b)
  %7982 = call float @dx.op.binary.f32(i32 36, float %7981, float %7976)  ; FMin(a,b)
  %7983 = fmul fast float %7979, 2.550000e+02
  %7984 = fadd fast float %7983, 0x3F70101020000000
  %7985 = fptoui float %7984 to i32
  %7986 = fmul fast float %7982, 2.550000e+02
  %7987 = fadd fast float %7986, 0x3F70101020000000
  %7988 = fptoui float %7987 to i32
  %7989 = icmp ult i32 %7985, %7988
  br i1 %7989, label %7990, label %8158

; <label>:7990                                    ; preds = %7959
  %7991 = fcmp fast ogt float %97, 9.843750e-01
  %7992 = fadd fast float %98, -4.000000e+00
  %7993 = select i1 %7991, float -4.000000e+00, float %7992
  %7994 = call float @dx.op.binary.f32(i32 35, float %7993, float 0.000000e+00)  ; FMax(a,b)
  %7995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7995, 0
  %7997 = fadd fast float %7996, %7994
  %7998 = extractvalue %dx.types.CBufRet.f32 %7995, 2
  %7999 = fmul fast float %7997, %7998
  %8000 = call float @dx.op.unary.f32(i32 23, float %7999)  ; Log(value)
  %8001 = extractvalue %dx.types.CBufRet.f32 %7995, 3
  %8002 = fmul fast float %8001, %8000
  %8003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8004 = extractvalue %dx.types.CBufRet.f32 %8003, 2
  %8005 = fmul fast float %8002, %8004
  %8006 = call float @dx.op.unary.f32(i32 7, float %8005)  ; Saturate(value)
  %8007 = uitofp i32 %7985 to float
  %8008 = uitofp i32 %7988 to float
  %8009 = fadd fast float %8007, 5.000000e-01
  %8010 = fadd fast float %8008, 5.000000e-01
  %8011 = fmul fast float %8004, %8009
  %8012 = fmul fast float %8004, %8010
  %8013 = fadd fast float %8011, 0x3F0FFB4800000000
  %8014 = fadd fast float %8012, 0xBF0FFB4800000000
  %8015 = call float @dx.op.binary.f32(i32 35, float %8006, float %8013)  ; FMax(a,b)
  %8016 = call float @dx.op.binary.f32(i32 36, float %8015, float %8014)  ; FMin(a,b)
  %8017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8018 = extractvalue %dx.types.CBufRet.f32 %8017, 1
  %8019 = extractvalue %dx.types.CBufRet.f32 %8017, 2
  %8020 = extractvalue %dx.types.CBufRet.f32 %8017, 0
  %8021 = fmul fast float %8018, %8016
  %8022 = fadd fast float %8020, %8021
  %8023 = fadd fast float %8020, %8019
  %8024 = fsub fast float %8018, %8019
  %8025 = fadd fast float %8024, %8020
  %8026 = call float @dx.op.binary.f32(i32 35, float %8022, float %8023)  ; FMax(a,b)
  %8027 = call float @dx.op.binary.f32(i32 36, float %8026, float %8025)  ; FMin(a,b)
  %8028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %7965, float %7966, float %8027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8029 = extractvalue %dx.types.ResRet.f32 %8028, 0
  %8030 = extractvalue %dx.types.ResRet.f32 %8028, 1
  %8031 = extractvalue %dx.types.ResRet.f32 %8028, 2
  %8032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.i32 %8032, 0
  %8034 = extractvalue %dx.types.CBufRet.i32 %8032, 1
  %8035 = uitofp i32 %8033 to float
  %8036 = uitofp i32 %8034 to float
  %8037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8038 = extractvalue %dx.types.CBufRet.f32 %8037, 0
  %8039 = extractvalue %dx.types.CBufRet.f32 %8037, 1
  %8040 = fmul fast float %8035, %7965
  %8041 = fmul fast float %8036, %7966
  %8042 = fadd fast float %8040, -5.000000e-01
  %8043 = fadd fast float %8041, -5.000000e-01
  %8044 = call float @dx.op.unary.f32(i32 22, float %8042)  ; Frc(value)
  %8045 = call float @dx.op.unary.f32(i32 22, float %8043)  ; Frc(value)
  %8046 = fmul fast float %8044, %8044
  %8047 = fmul fast float %8046, %8044
  %8048 = fsub fast float 3.000000e+00, %8044
  %8049 = fmul fast float %8046, %8048
  %8050 = fmul fast float %8044, 3.000000e+00
  %8051 = fmul fast float %8047, 3.000000e+00
  %8052 = fmul fast float %8046, 6.000000e+00
  %8053 = fsub fast float %8051, %8052
  %8054 = fadd fast float %8053, 4.000000e+00
  %8055 = fmul fast float %8054, 0x3FC5555560000000
  %8056 = fmul fast float %8047, -3.000000e+00
  %8057 = fadd fast float %8046, %8044
  %8058 = fmul fast float %8057, 3.000000e+00
  %8059 = fadd fast float %8056, 1.000000e+00
  %8060 = fadd fast float %8059, %8058
  %8061 = fmul fast float %8047, 0x3FC5555560000000
  %8062 = fmul fast float %8045, %8045
  %8063 = fmul fast float %8062, %8045
  %8064 = fsub fast float 3.000000e+00, %8045
  %8065 = fmul fast float %8062, %8064
  %8066 = fmul fast float %8045, 3.000000e+00
  %8067 = fmul fast float %8063, 3.000000e+00
  %8068 = fmul fast float %8062, 6.000000e+00
  %8069 = fsub fast float %8067, %8068
  %8070 = fadd fast float %8069, 4.000000e+00
  %8071 = fmul fast float %8070, 0x3FC5555560000000
  %8072 = fmul fast float %8063, -3.000000e+00
  %8073 = fadd fast float %8062, %8045
  %8074 = fmul fast float %8073, 3.000000e+00
  %8075 = fadd fast float %8072, 1.000000e+00
  %8076 = fadd fast float %8075, %8074
  %8077 = fmul fast float %8063, 0x3FC5555560000000
  %8078 = fadd fast float %8044, 1.000000e+00
  %8079 = fsub fast float 1.000000e+00, %8050
  %8080 = fadd fast float %8079, %8049
  %8081 = fadd fast float %8080, %8054
  %8082 = fmul fast float %8081, 0x3FC5555560000000
  %8083 = fdiv fast float %8055, %8082
  %8084 = fsub fast float %8078, %8083
  %8085 = fsub fast float 1.000000e+00, %8044
  %8086 = fadd fast float %8060, %8047
  %8087 = fmul fast float %8086, 0x3FC5555560000000
  %8088 = fdiv fast float %8061, %8087
  %8089 = fadd fast float %8085, %8088
  %8090 = fadd fast float %8045, 1.000000e+00
  %8091 = fsub fast float 1.000000e+00, %8066
  %8092 = fadd fast float %8091, %8065
  %8093 = fadd fast float %8092, %8070
  %8094 = fmul fast float %8093, 0x3FC5555560000000
  %8095 = fdiv fast float %8071, %8094
  %8096 = fsub fast float %8090, %8095
  %8097 = fsub fast float 1.000000e+00, %8045
  %8098 = fadd fast float %8076, %8063
  %8099 = fmul fast float %8098, 0x3FC5555560000000
  %8100 = fdiv fast float %8077, %8099
  %8101 = fadd fast float %8100, %8097
  %8102 = fmul fast float %8084, %8038
  %8103 = fsub fast float %7965, %8102
  %8104 = fmul fast float %8089, %8038
  %8105 = fadd fast float %8104, %7965
  %8106 = fmul fast float %8101, %8039
  %8107 = fadd fast float %8106, %7966
  %8108 = fmul fast float %8096, %8039
  %8109 = fsub fast float %7966, %8108
  %8110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8103, float %8109, float %8027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8111 = extractvalue %dx.types.ResRet.f32 %8110, 0
  %8112 = extractvalue %dx.types.ResRet.f32 %8110, 1
  %8113 = extractvalue %dx.types.ResRet.f32 %8110, 2
  %8114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8105, float %8109, float %8027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8115 = extractvalue %dx.types.ResRet.f32 %8114, 0
  %8116 = extractvalue %dx.types.ResRet.f32 %8114, 1
  %8117 = extractvalue %dx.types.ResRet.f32 %8114, 2
  %8118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8103, float %8107, float %8027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8119 = extractvalue %dx.types.ResRet.f32 %8118, 0
  %8120 = extractvalue %dx.types.ResRet.f32 %8118, 1
  %8121 = extractvalue %dx.types.ResRet.f32 %8118, 2
  %8122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8105, float %8107, float %8027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8123 = extractvalue %dx.types.ResRet.f32 %8122, 0
  %8124 = extractvalue %dx.types.ResRet.f32 %8122, 1
  %8125 = extractvalue %dx.types.ResRet.f32 %8122, 2
  %8126 = fsub fast float %8119, %8111
  %8127 = fsub fast float %8120, %8112
  %8128 = fsub fast float %8121, %8113
  %8129 = fmul fast float %8126, %8099
  %8130 = fmul fast float %8127, %8099
  %8131 = fmul fast float %8128, %8099
  %8132 = fadd fast float %8129, %8111
  %8133 = fadd fast float %8130, %8112
  %8134 = fadd fast float %8131, %8113
  %8135 = fsub fast float %8123, %8115
  %8136 = fsub fast float %8124, %8116
  %8137 = fsub fast float %8125, %8117
  %8138 = fmul fast float %8135, %8099
  %8139 = fmul fast float %8136, %8099
  %8140 = fmul fast float %8137, %8099
  %8141 = fsub fast float %8115, %8132
  %8142 = fadd fast float %8141, %8138
  %8143 = fsub fast float %8116, %8133
  %8144 = fadd fast float %8143, %8139
  %8145 = fsub fast float %8117, %8134
  %8146 = fadd fast float %8145, %8140
  %8147 = fmul fast float %8142, %8087
  %8148 = fmul fast float %8144, %8087
  %8149 = fmul fast float %8146, %8087
  %8150 = fadd fast float %8147, %8132
  %8151 = fadd fast float %8148, %8133
  %8152 = fadd fast float %8149, %8134
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 1
  %8155 = fmul fast float %8150, %8154
  %8156 = fmul fast float %8151, %8154
  %8157 = fmul fast float %8152, %8154
  br label %8158

; <label>:8158                                    ; preds = %7990, %7959
  %8159 = phi float [ %8029, %7990 ], [ 1.000000e+00, %7959 ]
  %8160 = phi float [ %8030, %7990 ], [ 1.000000e+00, %7959 ]
  %8161 = phi float [ %8031, %7990 ], [ 1.000000e+00, %7959 ]
  %8162 = phi float [ %8155, %7990 ], [ 0.000000e+00, %7959 ]
  %8163 = phi float [ %8156, %7990 ], [ 0.000000e+00, %7959 ]
  %8164 = phi float [ %8157, %7990 ], [ 0.000000e+00, %7959 ]
  %8165 = fmul fast float %8162, %7936
  %8166 = fmul fast float %8163, %7936
  %8167 = fmul fast float %8164, %7936
  %8168 = call float @dx.op.dot3.f32(i32 55, float %8159, float %8160, float %8161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8169 = call float @dx.op.dot3.f32(i32 55, float %8165, float %8166, float %8167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8170 = select i1 %231, float %8168, float %8159
  %8171 = select i1 %231, float %8168, float %8160
  %8172 = select i1 %231, float 1.000000e+00, float %8161
  %8173 = select i1 %231, float %8169, float %8165
  %8174 = select i1 %231, float 0.000000e+00, float %8166
  %8175 = select i1 %231, float 0.000000e+00, float %8167
  %8176 = fmul fast float %8170, %7949
  %8177 = fmul fast float %8171, %7950
  %8178 = fmul fast float %8172, %7951
  %8179 = fadd fast float %8176, %8173
  %8180 = fadd fast float %8177, %8174
  %8181 = fadd fast float %8175, %8178
  %8182 = fmul fast float %8170, %7927
  %8183 = fmul fast float %8171, %7928
  %8184 = fmul fast float %8172, %7929
  %8185 = fmul fast float %139, %7961
  %8186 = fmul fast float %141, %7962
  %8187 = fsub fast float 1.000000e+00, %8185
  %8188 = fsub fast float 1.000000e+00, %8186
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.CBufRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.CBufRet.f32 %8189, 2
  %8193 = fmul fast float %8187, %8190
  %8194 = fmul fast float %8187, %8191
  %8195 = fmul fast float %8187, %8192
  %8196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8197 = extractvalue %dx.types.CBufRet.f32 %8196, 0
  %8198 = extractvalue %dx.types.CBufRet.f32 %8196, 1
  %8199 = extractvalue %dx.types.CBufRet.f32 %8196, 2
  %8200 = fmul fast float %8188, %8197
  %8201 = fmul fast float %8188, %8198
  %8202 = fmul fast float %8188, %8199
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 0
  %8205 = extractvalue %dx.types.CBufRet.f32 %8203, 1
  %8206 = extractvalue %dx.types.CBufRet.f32 %8203, 2
  %8207 = fadd fast float %8200, %8204
  %8208 = fadd fast float %8207, %8193
  %8209 = fadd fast float %8201, %8205
  %8210 = fadd fast float %8209, %8194
  %8211 = fadd fast float %8202, %8206
  %8212 = fadd fast float %8211, %8195
  %8213 = fmul fast float %8208, %191
  %8214 = fmul fast float %8210, %191
  %8215 = fmul fast float %8212, %191
  br label %8216

; <label>:8216                                    ; preds = %8158, %7926
  %8217 = phi float [ %8213, %8158 ], [ %169, %7926 ]
  %8218 = phi float [ %8214, %8158 ], [ %170, %7926 ]
  %8219 = phi float [ %8215, %8158 ], [ %171, %7926 ]
  %8220 = phi float [ %191, %8158 ], [ %98, %7926 ]
  %8221 = phi float [ %8179, %8158 ], [ %7949, %7926 ]
  %8222 = phi float [ %8180, %8158 ], [ %7950, %7926 ]
  %8223 = phi float [ %8181, %8158 ], [ %7951, %7926 ]
  %8224 = phi float [ %8182, %8158 ], [ %7927, %7926 ]
  %8225 = phi float [ %8183, %8158 ], [ %7928, %7926 ]
  %8226 = phi float [ %8184, %8158 ], [ %7929, %7926 ]
  %8227 = phi float [ %8159, %8158 ], [ 1.000000e+00, %7926 ]
  br i1 %7958, label %9382, label %8228

; <label>:8228                                    ; preds = %8216
  %8229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8229, 0
  %8231 = extractvalue %dx.types.CBufRet.f32 %8229, 1
  %8232 = extractvalue %dx.types.CBufRet.f32 %8229, 2
  %8233 = extractvalue %dx.types.CBufRet.f32 %8229, 3
  %8234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8235 = extractvalue %dx.types.CBufRet.f32 %8234, 0
  %8236 = extractvalue %dx.types.CBufRet.f32 %8234, 1
  %8237 = extractvalue %dx.types.CBufRet.f32 %8234, 2
  %8238 = extractvalue %dx.types.CBufRet.f32 %8234, 3
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 0
  %8241 = extractvalue %dx.types.CBufRet.f32 %8239, 1
  %8242 = extractvalue %dx.types.CBufRet.f32 %8239, 2
  %8243 = extractvalue %dx.types.CBufRet.f32 %8239, 3
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 0
  %8246 = extractvalue %dx.types.CBufRet.f32 %8244, 1
  %8247 = extractvalue %dx.types.CBufRet.f32 %8244, 2
  %8248 = extractvalue %dx.types.CBufRet.f32 %8244, 3
  %8249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8250 = extractvalue %dx.types.CBufRet.f32 %8249, 3
  %8251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8252 = extractvalue %dx.types.CBufRet.f32 %8251, 3
  %8253 = extractvalue %dx.types.CBufRet.f32 %8251, 0
  %8254 = extractvalue %dx.types.CBufRet.f32 %8251, 1
  %8255 = extractvalue %dx.types.CBufRet.f32 %8251, 2
  %8256 = fcmp fast olt float %8255, -5.000000e-01
  %8257 = call float @dx.op.dot3.f32(i32 55, float %8217, float %8218, float %8219, float %8217, float %8218, float %8219)  ; Dot3(ax,ay,az,bx,by,bz)
  %8258 = call float @dx.op.unary.f32(i32 25, float %8257)  ; Rsqrt(value)
  %8259 = fmul fast float %8258, %8257
  %8260 = fmul fast float %8258, %8217
  %8261 = fmul fast float %8258, %8218
  %8262 = fmul fast float %8258, %8219
  %8263 = fadd fast float %8259, %8233
  %8264 = call float @dx.op.dot3.f32(i32 55, float %8260, float %8261, float %8262, float %8230, float %8231, float %8232)  ; Dot3(ax,ay,az,bx,by,bz)
  %8265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8266 = extractvalue %dx.types.CBufRet.i32 %8265, 1
  %8267 = and i32 %8266, 1
  %8268 = icmp ne i32 %8267, 0
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 2
  %8271 = fcmp fast ogt float %8270, 0.000000e+00
  %8272 = and i1 %8268, %8271
  br i1 %8272, label %8273, label %8679, !dx.controlflow.hints !135

; <label>:8273                                    ; preds = %8228
  %8274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8274, 3
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 2
  %8280 = fsub fast float %8277, %8279
  %8281 = and i32 %8266, 2
  %8282 = extractvalue %dx.types.CBufRet.i32 %8265, 0
  %8283 = call i32 @dx.op.binary.i32(i32 40, i32 %8282, i32 3)  ; UMin(a,b)
  %8284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8285 = extractvalue %dx.types.CBufRet.f32 %8284, 0
  %8286 = extractvalue %dx.types.CBufRet.f32 %8284, 1
  %8287 = extractvalue %dx.types.CBufRet.f32 %8278, 0
  %8288 = extractvalue %dx.types.CBufRet.f32 %8278, 1
  %8289 = fsub fast float %8285, %8287
  %8290 = fsub fast float %8286, %8288
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 0
  %8293 = fcmp fast ogt float %8292, 0.000000e+00
  %8294 = fsub fast float -0.000000e+00, %8289
  %8295 = fsub fast float -0.000000e+00, %8290
  %8296 = call float @dx.op.dot2.f32(i32 54, float %8260, float %8261, float %8260, float %8261)  ; Dot2(ax,ay,bx,by)
  %8297 = call float @dx.op.dot2.f32(i32 54, float %8260, float %8261, float %8294, float %8295)  ; Dot2(ax,ay,bx,by)
  %8298 = fmul fast float %8297, 2.000000e+00
  %8299 = call float @dx.op.dot2.f32(i32 54, float %8294, float %8295, float %8294, float %8295)  ; Dot2(ax,ay,bx,by)
  %8300 = fmul fast float %8292, %8292
  %8301 = fsub fast float %8299, %8300
  %8302 = fmul fast float %8298, %8298
  %8303 = fmul fast float %8296, 4.000000e+00
  %8304 = fmul fast float %8303, %8301
  %8305 = fsub fast float %8302, %8304
  %8306 = fcmp fast ogt float %8305, 0.000000e+00
  br i1 %8306, label %8307, label %8322

; <label>:8307                                    ; preds = %8273
  %8308 = fcmp fast ogt float %8298, 0.000000e+00
  %8309 = call float @dx.op.unary.f32(i32 24, float %8305)  ; Sqrt(value)
  %8310 = fsub fast float -0.000000e+00, %8309
  %8311 = select i1 %8308, float %8309, float %8310
  %8312 = fadd fast float %8311, %8298
  %8313 = fmul float %8312, -5.000000e-01
  %8314 = fdiv fast float %8313, %8296
  %8315 = call float @dx.op.binary.f32(i32 35, float %8314, float 0.000000e+00)  ; FMax(a,b)
  %8316 = call float @dx.op.binary.f32(i32 36, float %8259, float %8315)  ; FMin(a,b)
  %8317 = fdiv fast float %8301, %8313
  %8318 = call float @dx.op.binary.f32(i32 35, float %8317, float 0.000000e+00)  ; FMax(a,b)
  %8319 = call float @dx.op.binary.f32(i32 36, float %8259, float %8318)  ; FMin(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8316, float %8319)  ; FMin(a,b)
  %8321 = call float @dx.op.binary.f32(i32 35, float %8316, float %8319)  ; FMax(a,b)
  br label %8322

; <label>:8322                                    ; preds = %8307, %8273
  %8323 = phi float [ %8321, %8307 ], [ -1.000000e+00, %8273 ]
  %8324 = phi float [ %8320, %8307 ], [ -1.000000e+00, %8273 ]
  %8325 = phi i1 [ true, %8307 ], [ false, %8273 ]
  %8326 = and i1 %8293, %8325
  br i1 %8326, label %8327, label %8329

; <label>:8327                                    ; preds = %8322
  %8328 = fcmp fast oeq float %8324, %8323
  br i1 %8328, label %8632, label %8330

; <label>:8329                                    ; preds = %8322
  br i1 %8293, label %8632, label %8330

; <label>:8330                                    ; preds = %8329, %8327
  %8331 = phi float [ %8259, %8329 ], [ %8323, %8327 ]
  %8332 = phi float [ 0.000000e+00, %8329 ], [ %8324, %8327 ]
  %8333 = icmp ne i32 %8281, 0
  %8334 = fmul fast float %8331, %8262
  %8335 = fadd fast float %8334, %8275
  %8336 = fmul fast float %8335, %8331
  %8337 = select i1 %8333, float 0.000000e+00, float %8336
  %8338 = fcmp fast oeq float %8262, 0.000000e+00
  %8339 = fdiv fast float %8280, %8262
  %8340 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8339)  ; FMax(a,b)
  %8341 = select i1 %8338, float %8331, float %8340
  %8342 = call float @dx.op.binary.f32(i32 36, float %8331, float %8341)  ; FMin(a,b)
  %8343 = fcmp fast ogt float %8262, 0.000000e+00
  %8344 = fcmp fast olt float %8280, 0.000000e+00
  br i1 %8343, label %8345, label %8402

; <label>:8345                                    ; preds = %8330
  %8346 = icmp eq i32 %8281, 0
  br i1 %8344, label %8347, label %8391

; <label>:8347                                    ; preds = %8345
  %8348 = select i1 %8346, float %8331, float 0.000000e+00
  %8349 = fsub fast float -0.000000e+00, %8348
  %8350 = call float @dx.op.unary.f32(i32 6, float %8349)  ; FAbs(value)
  %8351 = fmul fast float %8348, %8262
  %8352 = fadd fast float %8351, %8275
  %8353 = fmul fast float %8350, %8352
  %8354 = fsub fast float %8337, %8353
  %8355 = fsub fast float %8331, %8350
  %8356 = select i1 %8346, float %8355, float 0.000000e+00
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.CBufRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.CBufRet.f32 %8357, 2
  %8361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8362 = extractvalue %dx.types.CBufRet.f32 %8361, 0
  %8363 = extractvalue %dx.types.CBufRet.f32 %8361, 1
  %8364 = extractvalue %dx.types.CBufRet.f32 %8361, 2
  %8365 = extractvalue %dx.types.CBufRet.f32 %8361, 3
  %8366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8367 = extractvalue %dx.types.CBufRet.f32 %8366, 3
  %8368 = call float @dx.op.binary.f32(i32 36, float %8354, float %8367)  ; FMin(a,b)
  %8369 = fmul fast float %8365, %8356
  %8370 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  %8371 = fsub fast float %8362, %8358
  %8372 = fsub fast float %8363, %8359
  %8373 = fsub fast float %8364, %8360
  %8374 = fmul fast float %8370, %8371
  %8375 = fmul fast float %8370, %8372
  %8376 = fmul fast float %8370, %8373
  %8377 = fadd fast float %8374, %8358
  %8378 = fadd fast float %8375, %8359
  %8379 = fadd fast float %8376, %8360
  %8380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8381 = extractvalue %dx.types.CBufRet.f32 %8380, 0
  %8382 = extractvalue %dx.types.CBufRet.f32 %8380, 1
  %8383 = fadd fast float %8382, %8381
  %8384 = call float @dx.op.unary.f32(i32 7, float %8383)  ; Saturate(value)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8380, 2
  %8386 = extractvalue %dx.types.CBufRet.f32 %8380, 3
  %8387 = fadd fast float %8386, %8385
  %8388 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  %8389 = fmul fast float %8384, %8368
  %8390 = fmul fast float %8389, %8388
  br label %8632

; <label>:8391                                    ; preds = %8345
  br i1 %8346, label %8392, label %8413

; <label>:8392                                    ; preds = %8391
  %8393 = call float @dx.op.binary.f32(i32 36, float %8342, float %8332)  ; FMin(a,b)
  %8394 = fsub fast float %8342, %8393
  %8395 = fsub fast float %8394, %8331
  %8396 = call float @dx.op.unary.f32(i32 6, float %8395)  ; FAbs(value)
  %8397 = fadd fast float %8394, %8331
  %8398 = fmul fast float %8397, %8262
  %8399 = fadd fast float %8398, %8275
  %8400 = fmul fast float %8399, %8396
  %8401 = fsub fast float %8337, %8400
  br label %8413

; <label>:8402                                    ; preds = %8330
  br i1 %8344, label %8403, label %8413

; <label>:8403                                    ; preds = %8402
  %8404 = call float @dx.op.binary.f32(i32 35, float %8332, float %8342)  ; FMax(a,b)
  %8405 = icmp eq i32 %8281, 0
  %8406 = select i1 %8405, float %8342, float 0.000000e+00
  %8407 = fsub fast float -0.000000e+00, %8406
  %8408 = call float @dx.op.unary.f32(i32 6, float %8407)  ; FAbs(value)
  %8409 = fmul fast float %8406, %8262
  %8410 = fadd fast float %8409, %8275
  %8411 = fmul fast float %8408, %8410
  %8412 = fsub fast float %8337, %8411
  br label %8413

; <label>:8413                                    ; preds = %8403, %8402, %8392, %8391
  %8414 = phi float [ %8332, %8391 ], [ %8332, %8392 ], [ %8404, %8403 ], [ %8332, %8402 ]
  %8415 = phi float [ 0.000000e+00, %8391 ], [ %8396, %8392 ], [ %8408, %8403 ], [ 0.000000e+00, %8402 ]
  %8416 = phi float [ %8337, %8391 ], [ %8401, %8392 ], [ %8412, %8403 ], [ %8337, %8402 ]
  %8417 = phi float [ %8342, %8391 ], [ %8342, %8392 ], [ %8331, %8403 ], [ %8331, %8402 ]
  %8418 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8418, align 4, !tbaa !122, !noalias !136
  %8419 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8419, align 4, !tbaa !122, !noalias !136
  %8420 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8420, align 4, !tbaa !122, !noalias !136
  %8421 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8421, align 4, !tbaa !122, !noalias !136
  %8422 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8422, align 4, !tbaa !122, !noalias !136
  %8423 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8423, align 4, !tbaa !122, !noalias !136
  %8424 = icmp sgt i32 %8283, 0
  br i1 %8424, label %8425, label %8486

; <label>:8425                                    ; preds = %8413
  br label %8426

; <label>:8426                                    ; preds = %8475, %8425
  %8427 = phi i32 [ %8476, %8475 ], [ 0, %8425 ]
  %8428 = phi i32 [ %8477, %8475 ], [ 0, %8425 ]
  %8429 = add nuw i32 %8428, 171
  %8430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %8429)  ; CBufferLoadLegacy(handle,regIndex)
  %8431 = extractvalue %dx.types.CBufRet.f32 %8430, 0
  %8432 = extractvalue %dx.types.CBufRet.f32 %8430, 1
  %8433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8434 = extractvalue %dx.types.CBufRet.f32 %8433, 0
  %8435 = extractvalue %dx.types.CBufRet.f32 %8433, 1
  %8436 = fsub fast float %8431, %8434
  %8437 = fsub fast float %8432, %8435
  %8438 = extractvalue %dx.types.CBufRet.f32 %8430, 2
  %8439 = fsub fast float -0.000000e+00, %8436
  %8440 = fsub fast float -0.000000e+00, %8437
  %8441 = call float @dx.op.dot2.f32(i32 54, float %8260, float %8261, float %8439, float %8440)  ; Dot2(ax,ay,bx,by)
  %8442 = fmul fast float %8441, 2.000000e+00
  %8443 = call float @dx.op.dot2.f32(i32 54, float %8439, float %8440, float %8439, float %8440)  ; Dot2(ax,ay,bx,by)
  %8444 = fmul fast float %8438, %8438
  %8445 = fsub fast float %8443, %8444
  %8446 = fmul fast float %8442, %8442
  %8447 = fmul fast float %8303, %8445
  %8448 = fsub fast float %8446, %8447
  %8449 = fcmp fast ogt float %8448, 0.000000e+00
  br i1 %8449, label %8450, label %8465

; <label>:8450                                    ; preds = %8426
  %8451 = fcmp fast ogt float %8442, 0.000000e+00
  %8452 = call float @dx.op.unary.f32(i32 24, float %8448)  ; Sqrt(value)
  %8453 = fsub fast float -0.000000e+00, %8452
  %8454 = select i1 %8451, float %8452, float %8453
  %8455 = fadd fast float %8454, %8442
  %8456 = fmul float %8455, -5.000000e-01
  %8457 = fdiv fast float %8456, %8296
  %8458 = call float @dx.op.binary.f32(i32 35, float %8457, float 0.000000e+00)  ; FMax(a,b)
  %8459 = call float @dx.op.binary.f32(i32 36, float %8331, float %8458)  ; FMin(a,b)
  %8460 = fdiv fast float %8445, %8456
  %8461 = call float @dx.op.binary.f32(i32 35, float %8460, float 0.000000e+00)  ; FMax(a,b)
  %8462 = call float @dx.op.binary.f32(i32 36, float %8331, float %8461)  ; FMin(a,b)
  %8463 = call float @dx.op.binary.f32(i32 36, float %8459, float %8462)  ; FMin(a,b)
  %8464 = call float @dx.op.binary.f32(i32 35, float %8459, float %8462)  ; FMax(a,b)
  br label %8465

; <label>:8465                                    ; preds = %8450, %8426
  %8466 = phi float [ %8464, %8450 ], [ -1.000000e+00, %8426 ]
  %8467 = phi float [ %8463, %8450 ], [ -1.000000e+00, %8426 ]
  %8468 = phi i1 [ true, %8450 ], [ false, %8426 ]
  br i1 %8468, label %8469, label %8475

; <label>:8469                                    ; preds = %8465
  %8470 = call float @dx.op.binary.f32(i32 35, float %8414, float %8467)  ; FMax(a,b)
  %8471 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8428
  store float %8470, float* %8471, align 4, !tbaa !122, !noalias !136
  %8472 = call float @dx.op.binary.f32(i32 35, float %8414, float %8466)  ; FMax(a,b)
  %8473 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8428
  store float %8472, float* %8473, align 4, !tbaa !122, !noalias !136
  %8474 = add nsw i32 %8427, 1
  br label %8475

; <label>:8475                                    ; preds = %8469, %8465
  %8476 = phi i32 [ %8474, %8469 ], [ %8427, %8465 ]
  %8477 = add nuw nsw i32 %8428, 1
  %8478 = icmp eq i32 %8477, %8283
  br i1 %8478, label %8479, label %8426

; <label>:8479                                    ; preds = %8475
  %8480 = load float, float* %8420, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %8481 = load float, float* %8419, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %8482 = load float, float* %8418, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %8483 = load float, float* %8423, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %8484 = load float, float* %8422, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %8485 = load float, float* %8421, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %8486

; <label>:8486                                    ; preds = %8479, %8413
  %8487 = phi float [ -1.000000e+00, %8413 ], [ %8485, %8479 ]
  %8488 = phi float [ -1.000000e+00, %8413 ], [ %8484, %8479 ]
  %8489 = phi float [ -1.000000e+00, %8413 ], [ %8483, %8479 ]
  %8490 = phi float [ -1.000000e+00, %8413 ], [ %8482, %8479 ]
  %8491 = phi float [ -1.000000e+00, %8413 ], [ %8481, %8479 ]
  %8492 = phi float [ -1.000000e+00, %8413 ], [ %8480, %8479 ]
  %8493 = phi i32 [ 0, %8413 ], [ %8476, %8479 ]
  %8494 = call float @dx.op.binary.f32(i32 36, float %8491, float %8492)  ; FMin(a,b)
  %8495 = call float @dx.op.binary.f32(i32 36, float %8490, float %8494)  ; FMin(a,b)
  %8496 = call float @dx.op.binary.f32(i32 35, float %8490, float %8491)  ; FMax(a,b)
  %8497 = call float @dx.op.binary.f32(i32 36, float %8496, float %8492)  ; FMin(a,b)
  %8498 = call float @dx.op.binary.f32(i32 36, float %8490, float %8491)  ; FMin(a,b)
  %8499 = call float @dx.op.binary.f32(i32 35, float %8498, float %8497)  ; FMax(a,b)
  %8500 = call float @dx.op.binary.f32(i32 35, float %8491, float %8492)  ; FMax(a,b)
  %8501 = call float @dx.op.binary.f32(i32 35, float %8490, float %8500)  ; FMax(a,b)
  store float %8495, float* %8418, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %8499, float* %8419, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %8501, float* %8420, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %8502 = call float @dx.op.binary.f32(i32 36, float %8488, float %8489)  ; FMin(a,b)
  %8503 = call float @dx.op.binary.f32(i32 36, float %8487, float %8502)  ; FMin(a,b)
  %8504 = call float @dx.op.binary.f32(i32 35, float %8487, float %8488)  ; FMax(a,b)
  %8505 = call float @dx.op.binary.f32(i32 36, float %8504, float %8489)  ; FMin(a,b)
  %8506 = call float @dx.op.binary.f32(i32 36, float %8487, float %8488)  ; FMin(a,b)
  %8507 = call float @dx.op.binary.f32(i32 35, float %8506, float %8505)  ; FMax(a,b)
  %8508 = call float @dx.op.binary.f32(i32 35, float %8488, float %8489)  ; FMax(a,b)
  %8509 = call float @dx.op.binary.f32(i32 35, float %8487, float %8508)  ; FMax(a,b)
  store float %8503, float* %8421, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %8507, float* %8422, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %8509, float* %8423, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %8510 = sub nsw i32 3, %8493
  %8511 = icmp sgt i32 %8510, 2
  br i1 %8511, label %8512, label %8550

; <label>:8512                                    ; preds = %8486
  %8513 = icmp eq i32 %8281, 0
  %8514 = fsub fast float %8331, %8415
  %8515 = select i1 %8513, float %8514, float %8415
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 0
  %8518 = extractvalue %dx.types.CBufRet.f32 %8516, 1
  %8519 = extractvalue %dx.types.CBufRet.f32 %8516, 2
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 0
  %8522 = extractvalue %dx.types.CBufRet.f32 %8520, 1
  %8523 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8524 = extractvalue %dx.types.CBufRet.f32 %8520, 3
  %8525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8525, 3
  %8527 = call float @dx.op.binary.f32(i32 36, float %8416, float %8526)  ; FMin(a,b)
  %8528 = fmul fast float %8524, %8515
  %8529 = call float @dx.op.unary.f32(i32 7, float %8528)  ; Saturate(value)
  %8530 = fsub fast float %8521, %8517
  %8531 = fsub fast float %8522, %8518
  %8532 = fsub fast float %8523, %8519
  %8533 = fmul fast float %8529, %8530
  %8534 = fmul fast float %8529, %8531
  %8535 = fmul fast float %8529, %8532
  %8536 = fadd fast float %8533, %8517
  %8537 = fadd fast float %8534, %8518
  %8538 = fadd fast float %8535, %8519
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 0
  %8541 = extractvalue %dx.types.CBufRet.f32 %8539, 1
  %8542 = fadd fast float %8541, %8540
  %8543 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8539, 2
  %8545 = extractvalue %dx.types.CBufRet.f32 %8539, 3
  %8546 = fadd fast float %8545, %8544
  %8547 = call float @dx.op.unary.f32(i32 7, float %8546)  ; Saturate(value)
  %8548 = fmul fast float %8543, %8527
  %8549 = fmul fast float %8548, %8547
  br label %8632

; <label>:8550                                    ; preds = %8486
  %8551 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8510
  %8552 = load float, float* %8551, align 4, !tbaa !122, !noalias !136
  %8553 = fcmp fast olt float %8552, %8417
  %8554 = icmp sgt i32 %8493, 0
  %8555 = and i1 %8554, %8553
  br i1 %8555, label %8556, label %8593

; <label>:8556                                    ; preds = %8550
  br label %8557

; <label>:8557                                    ; preds = %8586, %8556
  %8558 = phi float [ %8587, %8586 ], [ %8415, %8556 ]
  %8559 = phi float [ %8588, %8586 ], [ %8416, %8556 ]
  %8560 = phi float [ %8568, %8586 ], [ %8552, %8556 ]
  %8561 = phi i32 [ %8565, %8586 ], [ %8510, %8556 ]
  %8562 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8561
  %8563 = load float, float* %8562, align 4, !tbaa !122, !noalias !136
  %8564 = icmp slt i32 %8561, 2
  %8565 = add nsw i32 %8561, 1
  %8566 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8565
  %8567 = load float, float* %8566, align 4, !tbaa !122, !noalias !136
  %8568 = select i1 %8564, float %8567, float %8331
  %8569 = call float @dx.op.binary.f32(i32 36, float %8568, float %8563)  ; FMin(a,b)
  %8570 = call float @dx.op.binary.f32(i32 36, float %8417, float %8569)  ; FMin(a,b)
  %8571 = icmp eq i32 %8281, 0
  %8572 = fadd fast float %8570, %8560
  %8573 = fmul fast float %8572, %8262
  %8574 = fadd fast float %8573, %8275
  br i1 %8571, label %8580, label %8575

; <label>:8575                                    ; preds = %8557
  %8576 = fsub fast float %8570, %8560
  %8577 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8576)  ; FMax(a,b)
  %8578 = fmul fast float %8577, %8574
  %8579 = fadd fast float %8578, %8559
  br label %8586

; <label>:8580                                    ; preds = %8557
  %8581 = fsub fast float %8560, %8570
  %8582 = call float @dx.op.unary.f32(i32 6, float %8581)  ; FAbs(value)
  %8583 = fadd fast float %8582, %8558
  %8584 = fmul fast float %8582, %8574
  %8585 = fsub fast float %8559, %8584
  br label %8586

; <label>:8586                                    ; preds = %8580, %8575
  %8587 = phi float [ %8577, %8575 ], [ %8583, %8580 ]
  %8588 = phi float [ %8579, %8575 ], [ %8585, %8580 ]
  %8589 = fcmp fast olt float %8568, %8417
  %8590 = icmp slt i32 %8565, 3
  %8591 = and i1 %8590, %8589
  br i1 %8591, label %8557, label %8592

; <label>:8592                                    ; preds = %8586
  br label %8593

; <label>:8593                                    ; preds = %8592, %8550
  %8594 = phi float [ %8415, %8550 ], [ %8587, %8592 ]
  %8595 = phi float [ %8416, %8550 ], [ %8588, %8592 ]
  %8596 = fsub fast float %8331, %8594
  %8597 = select i1 %8333, float %8594, float %8596
  %8598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8599 = extractvalue %dx.types.CBufRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.CBufRet.f32 %8598, 1
  %8601 = extractvalue %dx.types.CBufRet.f32 %8598, 2
  %8602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8602, 0
  %8604 = extractvalue %dx.types.CBufRet.f32 %8602, 1
  %8605 = extractvalue %dx.types.CBufRet.f32 %8602, 2
  %8606 = extractvalue %dx.types.CBufRet.f32 %8602, 3
  %8607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8607, 3
  %8609 = call float @dx.op.binary.f32(i32 36, float %8595, float %8608)  ; FMin(a,b)
  %8610 = fmul fast float %8606, %8597
  %8611 = call float @dx.op.unary.f32(i32 7, float %8610)  ; Saturate(value)
  %8612 = fsub fast float %8603, %8599
  %8613 = fsub fast float %8604, %8600
  %8614 = fsub fast float %8605, %8601
  %8615 = fmul fast float %8611, %8612
  %8616 = fmul fast float %8611, %8613
  %8617 = fmul fast float %8611, %8614
  %8618 = fadd fast float %8615, %8599
  %8619 = fadd fast float %8616, %8600
  %8620 = fadd fast float %8617, %8601
  %8621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8622 = extractvalue %dx.types.CBufRet.f32 %8621, 0
  %8623 = extractvalue %dx.types.CBufRet.f32 %8621, 1
  %8624 = fadd fast float %8623, %8622
  %8625 = call float @dx.op.unary.f32(i32 7, float %8624)  ; Saturate(value)
  %8626 = extractvalue %dx.types.CBufRet.f32 %8621, 2
  %8627 = extractvalue %dx.types.CBufRet.f32 %8621, 3
  %8628 = fadd fast float %8627, %8626
  %8629 = call float @dx.op.unary.f32(i32 7, float %8628)  ; Saturate(value)
  %8630 = fmul fast float %8625, %8609
  %8631 = fmul fast float %8630, %8629
  br label %8632

; <label>:8632                                    ; preds = %8593, %8512, %8347, %8329, %8327
  %8633 = phi float [ %8356, %8347 ], [ %8515, %8512 ], [ %8597, %8593 ], [ 0.000000e+00, %8327 ], [ 0.000000e+00, %8329 ]
  %8634 = phi float [ %8390, %8347 ], [ %8549, %8512 ], [ %8631, %8593 ], [ 0.000000e+00, %8327 ], [ 0.000000e+00, %8329 ]
  %8635 = phi float [ %8377, %8347 ], [ %8536, %8512 ], [ %8618, %8593 ], [ 0.000000e+00, %8327 ], [ 0.000000e+00, %8329 ]
  %8636 = phi float [ %8378, %8347 ], [ %8537, %8512 ], [ %8619, %8593 ], [ 0.000000e+00, %8327 ], [ 0.000000e+00, %8329 ]
  %8637 = phi float [ %8379, %8347 ], [ %8538, %8512 ], [ %8620, %8593 ], [ 0.000000e+00, %8327 ], [ 0.000000e+00, %8329 ]
  %8638 = fmul fast float %8270, %8634
  %8639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8640 = extractvalue %dx.types.CBufRet.f32 %8639, 2
  %8641 = fsub fast float %8277, %8640
  %8642 = fcmp fast olt float %8638, -2.000000e+01
  %8643 = call float @dx.op.unary.f32(i32 21, float %8638)  ; Exp(value)
  %8644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8645 = extractvalue %dx.types.CBufRet.f32 %8644, 2
  %8646 = extractvalue %dx.types.CBufRet.f32 %8644, 3
  %8647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8648 = extractvalue %dx.types.CBufRet.f32 %8647, 2
  %8649 = fmul fast float %8646, %8641
  %8650 = call float @dx.op.unary.f32(i32 7, float %8649)  ; Saturate(value)
  %8651 = fsub fast float 1.000000e+00, %8650
  %8652 = fmul fast float %8262, 5.000000e-01
  %8653 = fadd fast float %8652, 5.000000e-01
  %8654 = call float @dx.op.unary.f32(i32 7, float %8653)  ; Saturate(value)
  %8655 = fsub fast float 1.000000e+00, %8654
  %8656 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8651)  ; FMax(a,b)
  %8657 = fdiv fast float %8655, %8656
  %8658 = fsub fast float %8641, %8219
  %8659 = call float @dx.op.unary.f32(i32 6, float %8658)  ; FAbs(value)
  %8660 = fmul fast float %8659, %8645
  %8661 = call float @dx.op.unary.f32(i32 7, float %8657)  ; Saturate(value)
  %8662 = fsub fast float 1.000000e+00, %8660
  %8663 = fmul fast float %8662, %8661
  %8664 = fadd fast float %8663, %8660
  %8665 = fmul fast float %8648, %8641
  %8666 = call float @dx.op.unary.f32(i32 7, float %8665)  ; Saturate(value)
  %8667 = fsub fast float 1.000000e+00, %8664
  %8668 = fmul fast float %8667, %8666
  %8669 = fadd fast float %8668, %8664
  %8670 = call float @dx.op.unary.f32(i32 7, float %8669)  ; Saturate(value)
  %8671 = fadd fast float %8643, -1.000000e+00
  %8672 = select i1 %8642, float -1.000000e+00, float %8671
  %8673 = fmul fast float %8670, %8672
  %8674 = fadd fast float %8673, 1.000000e+00
  %8675 = fsub fast float -0.000000e+00, %8673
  %8676 = fmul fast float %8635, %8675
  %8677 = fmul fast float %8636, %8675
  %8678 = fmul fast float %8637, %8675
  br label %8679

; <label>:8679                                    ; preds = %8632, %8228
  %8680 = phi float [ %8633, %8632 ], [ 0.000000e+00, %8228 ]
  %8681 = phi float [ %8674, %8632 ], [ 1.000000e+00, %8228 ]
  %8682 = phi float [ %8676, %8632 ], [ 0.000000e+00, %8228 ]
  %8683 = phi float [ %8677, %8632 ], [ 0.000000e+00, %8228 ]
  %8684 = phi float [ %8678, %8632 ], [ 0.000000e+00, %8228 ]
  %8685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8686 = extractvalue %dx.types.CBufRet.f32 %8685, 1
  %8687 = fsub fast float 1.000000e+00, %8681
  %8688 = fmul fast float %8687, %8263
  %8689 = fmul fast float %8688, %8686
  %8690 = fsub fast float %8263, %8689
  br i1 %8256, label %8691, label %8720, !dx.controlflow.hints !172

; <label>:8691                                    ; preds = %8679
  %8692 = fmul fast float %8264, %8253
  %8693 = fadd fast float %8692, %8254
  %8694 = call float @dx.op.unary.f32(i32 7, float %8693)  ; Saturate(value)
  %8695 = fmul fast float %8235, %8690
  %8696 = fsub fast float -0.000000e+00, %8695
  %8697 = fmul fast float %8236, %8690
  %8698 = fsub fast float -0.000000e+00, %8697
  %8699 = call float @dx.op.unary.f32(i32 21, float %8696)  ; Exp(value)
  %8700 = call float @dx.op.unary.f32(i32 21, float %8698)  ; Exp(value)
  %8701 = call float @dx.op.binary.f32(i32 35, float %8243, float %8699)  ; FMax(a,b)
  %8702 = call float @dx.op.binary.f32(i32 35, float %8243, float %8700)  ; FMax(a,b)
  %8703 = fsub fast float %8702, %8701
  %8704 = fmul fast float %8703, %8694
  %8705 = fadd fast float %8704, %8701
  %8706 = call float @dx.op.unary.f32(i32 7, float %8705)  ; Saturate(value)
  %8707 = fsub fast float %8240, %8245
  %8708 = fsub fast float %8241, %8246
  %8709 = fsub fast float %8242, %8247
  %8710 = fmul fast float %8694, %8707
  %8711 = fmul fast float %8694, %8708
  %8712 = fmul fast float %8694, %8709
  %8713 = fadd fast float %8710, %8245
  %8714 = fadd fast float %8711, %8246
  %8715 = fadd fast float %8712, %8247
  %8716 = fsub fast float 1.000000e+00, %8706
  %8717 = fmul fast float %8716, %8713
  %8718 = fmul fast float %8716, %8714
  %8719 = fmul fast float %8716, %8715
  br label %8779

; <label>:8720                                    ; preds = %8679
  %8721 = fmul fast float %8690, %8252
  %8722 = call float @dx.op.unary.f32(i32 7, float %8721)  ; Saturate(value)
  %8723 = fsub fast float 2.000000e+00, %8722
  %8724 = fmul fast float %8722, 9.921875e-01
  %8725 = fmul fast float %8724, %8723
  %8726 = fadd fast float %8725, 3.906250e-03
  %8727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %8726, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8728 = extractvalue %dx.types.ResRet.f32 %8727, 0
  %8729 = fsub fast float %8722, %8728
  %8730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8729)  ; FMax(a,b)
  %8731 = fmul fast float %8238, %8219
  %8732 = call float @dx.op.unary.f32(i32 6, float %8731)  ; FAbs(value)
  %8733 = fcmp fast ogt float %8732, 0x3EB0C6F7A0000000
  br i1 %8733, label %8734, label %8740, !dx.controlflow.hints !173

; <label>:8734                                    ; preds = %8720
  %8735 = fmul fast float %8731, 0xBFF7154760000000
  %8736 = call float @dx.op.unary.f32(i32 21, float %8735)  ; Exp(value)
  %8737 = fsub fast float 1.000000e+00, %8736
  %8738 = fdiv fast float %8737, %8731
  %8739 = fmul fast float %8738, %8248
  br label %8740

; <label>:8740                                    ; preds = %8734, %8720
  %8741 = phi float [ %8739, %8734 ], [ %8248, %8720 ]
  %8742 = fadd fast float %8741, %8250
  %8743 = fmul fast float %8742, %8730
  %8744 = fmul fast float %8235, %8743
  %8745 = fsub fast float -0.000000e+00, %8744
  %8746 = fmul fast float %8236, %8743
  %8747 = fsub fast float -0.000000e+00, %8746
  %8748 = fmul fast float %8237, %8743
  %8749 = fsub fast float -0.000000e+00, %8748
  %8750 = call float @dx.op.unary.f32(i32 21, float %8745)  ; Exp(value)
  %8751 = call float @dx.op.unary.f32(i32 21, float %8747)  ; Exp(value)
  %8752 = call float @dx.op.unary.f32(i32 21, float %8749)  ; Exp(value)
  %8753 = fmul fast float %8264, %8264
  %8754 = fadd fast float %8753, 1.000000e+00
  %8755 = fmul fast float %8754, 0x3FAE8EC8A0000000
  %8756 = fmul fast float %8755, %8245
  %8757 = fmul fast float %8755, %8246
  %8758 = fmul fast float %8755, %8247
  %8759 = fmul fast float %8264, %8243
  %8760 = fsub fast float 1.000000e+00, %8759
  %8761 = fmul fast float %8243, %8243
  %8762 = fsub fast float 1.000000e+00, %8761
  %8763 = fmul fast float %8762, 0x3FB45F3060000000
  %8764 = fmul fast float %8760, %8760
  %8765 = fdiv fast float 1.000000e+00, %8764
  %8766 = fmul fast float %8763, %8765
  %8767 = fmul fast float %8766, %8240
  %8768 = fmul fast float %8766, %8241
  %8769 = fmul fast float %8766, %8242
  %8770 = fadd fast float %8767, %8756
  %8771 = fadd fast float %8768, %8757
  %8772 = fadd fast float %8769, %8758
  %8773 = fsub fast float 1.000000e+00, %8750
  %8774 = fsub fast float 1.000000e+00, %8751
  %8775 = fsub fast float 1.000000e+00, %8752
  %8776 = fmul fast float %8770, %8773
  %8777 = fmul fast float %8771, %8774
  %8778 = fmul fast float %8772, %8775
  br label %8779

; <label>:8779                                    ; preds = %8740, %8691
  %8780 = phi float [ %8717, %8691 ], [ %8776, %8740 ]
  %8781 = phi float [ %8718, %8691 ], [ %8777, %8740 ]
  %8782 = phi float [ %8719, %8691 ], [ %8778, %8740 ]
  %8783 = phi float [ %8706, %8691 ], [ %8750, %8740 ]
  %8784 = phi float [ %8706, %8691 ], [ %8751, %8740 ]
  %8785 = phi float [ %8706, %8691 ], [ %8752, %8740 ]
  br i1 %8272, label %8786, label %8984, !dx.controlflow.hints !174

; <label>:8786                                    ; preds = %8779
  %8787 = extractvalue %dx.types.CBufRet.f32 %8685, 0
  %8788 = fmul fast float %8787, %8687
  %8789 = fsub fast float %8682, %8780
  %8790 = fsub fast float %8683, %8781
  %8791 = fsub fast float %8684, %8782
  %8792 = fmul fast float %8788, %8789
  %8793 = fmul fast float %8788, %8790
  %8794 = fmul fast float %8788, %8791
  %8795 = fadd fast float %8792, %8780
  %8796 = fadd fast float %8793, %8781
  %8797 = fadd fast float %8794, %8782
  %8798 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8783)  ; FMax(a,b)
  %8799 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8784)  ; FMax(a,b)
  %8800 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8785)  ; FMax(a,b)
  %8801 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8681)  ; FMax(a,b)
  %8802 = call float @dx.op.binary.f32(i32 35, float %8680, float %8690)  ; FMax(a,b)
  %8803 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8802)  ; FMax(a,b)
  %8804 = fdiv fast float %8680, %8803
  %8805 = call float @dx.op.unary.f32(i32 7, float %8804)  ; Saturate(value)
  %8806 = fdiv fast float %8690, %8803
  %8807 = call float @dx.op.unary.f32(i32 7, float %8806)  ; Saturate(value)
  %8808 = fcmp fast une float %8801, 1.000000e+00
  br i1 %8808, label %8809, label %8822, !dx.controlflow.hints !175

; <label>:8809                                    ; preds = %8786
  %8810 = call float @dx.op.unary.f32(i32 23, float %8801)  ; Log(value)
  %8811 = fmul fast float %8810, 0x3FE62E4300000000
  %8812 = fmul fast float %8682, %8811
  %8813 = fsub fast float -0.000000e+00, %8812
  %8814 = fmul fast float %8683, %8811
  %8815 = fsub fast float -0.000000e+00, %8814
  %8816 = fmul fast float %8684, %8811
  %8817 = fsub fast float -0.000000e+00, %8816
  %8818 = fsub fast float 1.000000e+00, %8801
  %8819 = fdiv fast float %8813, %8818
  %8820 = fdiv fast float %8815, %8818
  %8821 = fdiv fast float %8817, %8818
  br label %8822

; <label>:8822                                    ; preds = %8809, %8786
  %8823 = phi float [ %8819, %8809 ], [ %8682, %8786 ]
  %8824 = phi float [ %8820, %8809 ], [ %8683, %8786 ]
  %8825 = phi float [ %8821, %8809 ], [ %8684, %8786 ]
  %8826 = phi float [ %8811, %8809 ], [ 0.000000e+00, %8786 ]
  %8827 = fcmp fast une float %8798, 1.000000e+00
  br i1 %8827, label %8828, label %8835, !dx.controlflow.hints !176

; <label>:8828                                    ; preds = %8822
  %8829 = call float @dx.op.unary.f32(i32 23, float %8798)  ; Log(value)
  %8830 = fmul fast float %8829, 0x3FE62E4300000000
  %8831 = fmul fast float %8795, %8830
  %8832 = fsub fast float -0.000000e+00, %8831
  %8833 = fsub fast float 1.000000e+00, %8798
  %8834 = fdiv fast float %8832, %8833
  br label %8835

; <label>:8835                                    ; preds = %8828, %8822
  %8836 = phi float [ %8834, %8828 ], [ %8795, %8822 ]
  %8837 = phi float [ %8830, %8828 ], [ 0.000000e+00, %8822 ]
  %8838 = fcmp fast une float %8799, 1.000000e+00
  br i1 %8838, label %8839, label %8846, !dx.controlflow.hints !176

; <label>:8839                                    ; preds = %8835
  %8840 = call float @dx.op.unary.f32(i32 23, float %8799)  ; Log(value)
  %8841 = fmul fast float %8840, 0x3FE62E4300000000
  %8842 = fmul fast float %8796, %8841
  %8843 = fsub fast float -0.000000e+00, %8842
  %8844 = fsub fast float 1.000000e+00, %8799
  %8845 = fdiv fast float %8843, %8844
  br label %8846

; <label>:8846                                    ; preds = %8839, %8835
  %8847 = phi float [ %8845, %8839 ], [ %8796, %8835 ]
  %8848 = phi float [ %8841, %8839 ], [ 0.000000e+00, %8835 ]
  %8849 = fcmp fast une float %8800, 1.000000e+00
  br i1 %8849, label %8850, label %8857, !dx.controlflow.hints !176

; <label>:8850                                    ; preds = %8846
  %8851 = call float @dx.op.unary.f32(i32 23, float %8800)  ; Log(value)
  %8852 = fmul fast float %8851, 0x3FE62E4300000000
  %8853 = fmul fast float %8797, %8852
  %8854 = fsub fast float -0.000000e+00, %8853
  %8855 = fsub fast float 1.000000e+00, %8800
  %8856 = fdiv fast float %8854, %8855
  br label %8857

; <label>:8857                                    ; preds = %8850, %8846
  %8858 = phi float [ %8856, %8850 ], [ %8797, %8846 ]
  %8859 = phi float [ %8852, %8850 ], [ 0.000000e+00, %8846 ]
  %8860 = fmul fast float %8823, %8807
  %8861 = fmul fast float %8824, %8807
  %8862 = fmul fast float %8825, %8807
  %8863 = fmul fast float %8826, %8807
  %8864 = fmul fast float %8836, %8805
  %8865 = fmul fast float %8847, %8805
  %8866 = fmul fast float %8858, %8805
  %8867 = fmul fast float %8837, %8805
  %8868 = fmul fast float %8848, %8805
  %8869 = fmul fast float %8859, %8805
  %8870 = fadd fast float %8864, %8860
  %8871 = fadd fast float %8865, %8861
  %8872 = fadd fast float %8866, %8862
  %8873 = fadd fast float %8867, %8863
  %8874 = fadd fast float %8868, %8863
  %8875 = fadd fast float %8869, %8863
  %8876 = fcmp fast une float %8873, 0.000000e+00
  br i1 %8876, label %8877, label %8884, !dx.controlflow.hints !177

; <label>:8877                                    ; preds = %8857
  %8878 = fmul fast float %8873, 0x3FF7154760000000
  %8879 = call float @dx.op.unary.f32(i32 21, float %8878)  ; Exp(value)
  %8880 = fsub fast float 1.000000e+00, %8879
  %8881 = fmul fast float %8870, %8880
  %8882 = fsub fast float -0.000000e+00, %8881
  %8883 = fdiv fast float %8882, %8873
  br label %8884

; <label>:8884                                    ; preds = %8877, %8857
  %8885 = phi float [ %8879, %8877 ], [ 1.000000e+00, %8857 ]
  %8886 = phi float [ %8883, %8877 ], [ %8870, %8857 ]
  %8887 = fcmp fast une float %8874, 0.000000e+00
  br i1 %8887, label %8888, label %8895, !dx.controlflow.hints !177

; <label>:8888                                    ; preds = %8884
  %8889 = fmul fast float %8874, 0x3FF7154760000000
  %8890 = call float @dx.op.unary.f32(i32 21, float %8889)  ; Exp(value)
  %8891 = fsub fast float 1.000000e+00, %8890
  %8892 = fmul fast float %8871, %8891
  %8893 = fsub fast float -0.000000e+00, %8892
  %8894 = fdiv fast float %8893, %8874
  br label %8895

; <label>:8895                                    ; preds = %8888, %8884
  %8896 = phi float [ %8890, %8888 ], [ 1.000000e+00, %8884 ]
  %8897 = phi float [ %8894, %8888 ], [ %8871, %8884 ]
  %8898 = fcmp fast une float %8875, 0.000000e+00
  br i1 %8898, label %8899, label %8906, !dx.controlflow.hints !177

; <label>:8899                                    ; preds = %8895
  %8900 = fmul fast float %8875, 0x3FF7154760000000
  %8901 = call float @dx.op.unary.f32(i32 21, float %8900)  ; Exp(value)
  %8902 = fsub fast float 1.000000e+00, %8901
  %8903 = fmul fast float %8872, %8902
  %8904 = fsub fast float -0.000000e+00, %8903
  %8905 = fdiv fast float %8904, %8875
  br label %8906

; <label>:8906                                    ; preds = %8899, %8895
  %8907 = phi float [ %8901, %8899 ], [ 1.000000e+00, %8895 ]
  %8908 = phi float [ %8905, %8899 ], [ %8872, %8895 ]
  %8909 = fcmp fast ogt float %8805, %8807
  br i1 %8909, label %8910, label %8930

; <label>:8910                                    ; preds = %8906
  %8911 = fsub fast float 1.000000e+00, %8807
  %8912 = fmul fast float %8823, %8911
  %8913 = fmul fast float %8824, %8911
  %8914 = fmul fast float %8825, %8911
  %8915 = fmul fast float %8826, %8911
  %8916 = fcmp fast une float %8915, 0.000000e+00
  br i1 %8916, label %8917, label %8968, !dx.controlflow.hints !178

; <label>:8917                                    ; preds = %8910
  %8918 = fmul fast float %8915, 0x3FF7154760000000
  %8919 = call float @dx.op.unary.f32(i32 21, float %8918)  ; Exp(value)
  %8920 = fsub fast float 1.000000e+00, %8919
  %8921 = fmul fast float %8912, %8920
  %8922 = fsub fast float -0.000000e+00, %8921
  %8923 = fmul fast float %8913, %8920
  %8924 = fsub fast float -0.000000e+00, %8923
  %8925 = fmul fast float %8914, %8920
  %8926 = fsub fast float -0.000000e+00, %8925
  %8927 = fdiv fast float %8922, %8915
  %8928 = fdiv fast float %8924, %8915
  %8929 = fdiv fast float %8926, %8915
  br label %8968

; <label>:8930                                    ; preds = %8906
  %8931 = fsub fast float 1.000000e+00, %8805
  %8932 = fmul fast float %8836, %8931
  %8933 = fmul fast float %8847, %8931
  %8934 = fmul fast float %8858, %8931
  %8935 = fmul fast float %8837, %8931
  %8936 = fmul fast float %8848, %8931
  %8937 = fmul fast float %8859, %8931
  %8938 = fcmp fast une float %8935, 0.000000e+00
  br i1 %8938, label %8939, label %8946, !dx.controlflow.hints !177

; <label>:8939                                    ; preds = %8930
  %8940 = fmul fast float %8935, 0x3FF7154760000000
  %8941 = call float @dx.op.unary.f32(i32 21, float %8940)  ; Exp(value)
  %8942 = fsub fast float 1.000000e+00, %8941
  %8943 = fmul fast float %8932, %8942
  %8944 = fsub fast float -0.000000e+00, %8943
  %8945 = fdiv fast float %8944, %8935
  br label %8946

; <label>:8946                                    ; preds = %8939, %8930
  %8947 = phi float [ %8945, %8939 ], [ %8932, %8930 ]
  %8948 = phi float [ %8941, %8939 ], [ 1.000000e+00, %8930 ]
  %8949 = fcmp fast une float %8936, 0.000000e+00
  br i1 %8949, label %8950, label %8957, !dx.controlflow.hints !177

; <label>:8950                                    ; preds = %8946
  %8951 = fmul fast float %8936, 0x3FF7154760000000
  %8952 = call float @dx.op.unary.f32(i32 21, float %8951)  ; Exp(value)
  %8953 = fsub fast float 1.000000e+00, %8952
  %8954 = fmul fast float %8933, %8953
  %8955 = fsub fast float -0.000000e+00, %8954
  %8956 = fdiv fast float %8955, %8936
  br label %8957

; <label>:8957                                    ; preds = %8950, %8946
  %8958 = phi float [ %8956, %8950 ], [ %8933, %8946 ]
  %8959 = phi float [ %8952, %8950 ], [ 1.000000e+00, %8946 ]
  %8960 = fcmp fast une float %8937, 0.000000e+00
  br i1 %8960, label %8961, label %8968, !dx.controlflow.hints !177

; <label>:8961                                    ; preds = %8957
  %8962 = fmul fast float %8937, 0x3FF7154760000000
  %8963 = call float @dx.op.unary.f32(i32 21, float %8962)  ; Exp(value)
  %8964 = fsub fast float 1.000000e+00, %8963
  %8965 = fmul fast float %8934, %8964
  %8966 = fsub fast float -0.000000e+00, %8965
  %8967 = fdiv fast float %8966, %8937
  br label %8968

; <label>:8968                                    ; preds = %8961, %8957, %8917, %8910
  %8969 = phi float [ %8967, %8961 ], [ %8929, %8917 ], [ %8914, %8910 ], [ %8934, %8957 ]
  %8970 = phi float [ %8958, %8961 ], [ %8928, %8917 ], [ %8913, %8910 ], [ %8958, %8957 ]
  %8971 = phi float [ %8947, %8961 ], [ %8927, %8917 ], [ %8912, %8910 ], [ %8947, %8957 ]
  %8972 = phi float [ %8963, %8961 ], [ %8919, %8917 ], [ 1.000000e+00, %8910 ], [ 1.000000e+00, %8957 ]
  %8973 = phi float [ %8959, %8961 ], [ %8919, %8917 ], [ 1.000000e+00, %8910 ], [ %8959, %8957 ]
  %8974 = phi float [ %8948, %8961 ], [ %8919, %8917 ], [ 1.000000e+00, %8910 ], [ %8948, %8957 ]
  %8975 = fmul fast float %8974, %8886
  %8976 = fmul fast float %8973, %8897
  %8977 = fmul fast float %8972, %8908
  %8978 = fadd fast float %8975, %8971
  %8979 = fadd fast float %8976, %8970
  %8980 = fadd fast float %8977, %8969
  %8981 = fmul fast float %8974, %8885
  %8982 = fmul fast float %8973, %8896
  %8983 = fmul fast float %8972, %8907
  br label %8984

; <label>:8984                                    ; preds = %8968, %8779
  %8985 = phi float [ %8983, %8968 ], [ %8785, %8779 ]
  %8986 = phi float [ %8982, %8968 ], [ %8784, %8779 ]
  %8987 = phi float [ %8981, %8968 ], [ %8783, %8779 ]
  %8988 = phi float [ %8980, %8968 ], [ %8782, %8779 ]
  %8989 = phi float [ %8979, %8968 ], [ %8781, %8779 ]
  %8990 = phi float [ %8978, %8968 ], [ %8780, %8779 ]
  %8991 = fmul fast float %8990, %7936
  %8992 = fmul fast float %8989, %7936
  %8993 = fmul fast float %8988, %7936
  %8994 = fmul fast float %8987, %8227
  %8995 = call float @dx.op.dot3.f32(i32 55, float %8987, float %8986, float %8985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8996 = call float @dx.op.dot3.f32(i32 55, float %8991, float %8992, float %8993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8997 = select i1 %231, float %8995, float %8987
  %8998 = select i1 %231, float %8995, float %8986
  %8999 = select i1 %231, float 1.000000e+00, float %8985
  %9000 = select i1 %231, float %8996, float %8991
  %9001 = select i1 %231, float 0.000000e+00, float %8992
  %9002 = select i1 %231, float 0.000000e+00, float %8993
  %9003 = fmul fast float %8997, %8221
  %9004 = fmul fast float %8998, %8222
  %9005 = fmul fast float %8999, %8223
  %9006 = fadd fast float %9003, %9000
  %9007 = fadd fast float %9004, %9001
  %9008 = fadd fast float %9002, %9005
  %9009 = fmul fast float %8997, %8224
  %9010 = fmul fast float %8998, %8225
  %9011 = fmul fast float %8999, %8226
  %9012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.i32 %9012, 0
  %9014 = icmp eq i32 %9013, 0
  br i1 %9014, label %9382, label %9015, !dx.controlflow.hints !179

; <label>:9015                                    ; preds = %8984
  %9016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9017 = extractvalue %dx.types.CBufRet.f32 %9016, 2
  %9018 = extractvalue %dx.types.CBufRet.f32 %9016, 3
  %9019 = fmul fast float %9017, %110
  %9020 = fmul fast float %9018, %111
  %9021 = fmul fast float %9019, 2.000000e+00
  %9022 = fmul fast float %9020, 2.000000e+00
  %9023 = fsub fast float 1.000000e+00, %9021
  %9024 = fsub fast float 1.000000e+00, %9022
  %9025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9026 = extractvalue %dx.types.CBufRet.f32 %9025, 0
  %9027 = extractvalue %dx.types.CBufRet.f32 %9025, 1
  %9028 = extractvalue %dx.types.CBufRet.f32 %9025, 2
  %9029 = fmul fast float %9023, %9026
  %9030 = fmul fast float %9023, %9027
  %9031 = fmul fast float %9023, %9028
  %9032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9033 = extractvalue %dx.types.CBufRet.f32 %9032, 0
  %9034 = extractvalue %dx.types.CBufRet.f32 %9032, 1
  %9035 = extractvalue %dx.types.CBufRet.f32 %9032, 2
  %9036 = fmul fast float %9024, %9033
  %9037 = fmul fast float %9024, %9034
  %9038 = fmul fast float %9024, %9035
  %9039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9040 = extractvalue %dx.types.CBufRet.f32 %9039, 0
  %9041 = extractvalue %dx.types.CBufRet.f32 %9039, 1
  %9042 = extractvalue %dx.types.CBufRet.f32 %9039, 2
  %9043 = fadd fast float %9036, %9040
  %9044 = fadd fast float %9043, %9029
  %9045 = fadd fast float %9037, %9041
  %9046 = fadd fast float %9045, %9030
  %9047 = fadd fast float %9038, %9042
  %9048 = fadd fast float %9047, %9031
  %9049 = fmul fast float %9044, %8220
  %9050 = fmul fast float %9046, %8220
  %9051 = fmul fast float %9048, %8220
  %9052 = fmul fast float %9049, %9049
  %9053 = fmul fast float %9050, %9050
  %9054 = fadd fast float %9052, %9053
  %9055 = fmul fast float %9051, %9051
  %9056 = fadd fast float %9054, %9055
  %9057 = call float @dx.op.unary.f32(i32 24, float %9056)  ; Sqrt(value)
  %9058 = extractvalue %dx.types.CBufRet.f32 %7947, 0
  %9059 = fsub fast float %9057, %9058
  %9060 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %9061 = fmul fast float %9059, %9060
  %9062 = call float @dx.op.unary.f32(i32 7, float %9061)  ; Saturate(value)
  %9063 = fadd fast float %9062, -5.000000e-01
  %9064 = fmul fast float %9063, 2.000000e+00
  %9065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9065, 2
  %9067 = call float @dx.op.binary.f32(i32 36, float %9066, float %9064)  ; FMin(a,b)
  %9068 = fsub fast float -0.000000e+00, %9066
  %9069 = fcmp fast ogt float %9067, %9068
  br i1 %9069, label %9070, label %9382, !dx.controlflow.hints !180

; <label>:9070                                    ; preds = %9015
  %9071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9072 = extractvalue %dx.types.CBufRet.f32 %9071, 3
  %9073 = fcmp fast ogt float %9072, 0.000000e+00
  br i1 %9073, label %9074, label %9149, !dx.controlflow.hints !181

; <label>:9074                                    ; preds = %9070
  %9075 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9076 = extractvalue %dx.types.Dimensions %9075, 0
  %9077 = sitofp i32 %9076 to float
  %9078 = extractvalue %dx.types.Dimensions %9075, 1
  %9079 = sitofp i32 %9078 to float
  %9080 = fmul fast float %9019, %9077
  %9081 = fmul fast float %9020, %9079
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 1
  %9084 = fsub fast float -0.000000e+00, %9083
  %9085 = fptoui float %9084 to i32
  %9086 = fptoui float %9080 to i32
  %9087 = fptoui float %9081 to i32
  %9088 = and i32 %9085, 31
  %9089 = lshr i32 %9086, %9088
  %9090 = lshr i32 %9087, %9088
  %9091 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9085, i32 %9089, i32 %9090, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9092 = extractvalue %dx.types.ResRet.f32 %9091, 0
  %9093 = fcmp fast olt float %9092, -1.000000e+00
  %9094 = fcmp fast ogt float %9092, -1.000000e+00
  %9095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9096 = extractvalue %dx.types.CBufRet.f32 %9095, 1
  %9097 = select i1 %9094, float %9096, float 1.000000e+00
  %9098 = fadd fast float %9092, 1.000000e+00
  %9099 = fmul fast float %9097, %9098
  %9100 = call float @dx.op.unary.f32(i32 6, float %9099)  ; FAbs(value)
  %9101 = extractvalue %dx.types.CBufRet.f32 %9095, 3
  %9102 = fcmp fast oge float %9100, %9101
  %9103 = select i1 %9102, float 0x4197782600000000, float %9100
  %9104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9105 = extractvalue %dx.types.CBufRet.f32 %9104, 0
  %9106 = extractvalue %dx.types.CBufRet.f32 %9104, 1
  %9107 = extractvalue %dx.types.CBufRet.f32 %9104, 2
  %9108 = select i1 %9093, float %9105, float %9026
  %9109 = select i1 %9093, float %9106, float %9027
  %9110 = select i1 %9093, float %9107, float %9028
  %9111 = fmul fast float %9108, %9023
  %9112 = fmul fast float %9109, %9023
  %9113 = fmul fast float %9110, %9023
  %9114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9115 = extractvalue %dx.types.CBufRet.f32 %9114, 0
  %9116 = extractvalue %dx.types.CBufRet.f32 %9114, 1
  %9117 = extractvalue %dx.types.CBufRet.f32 %9114, 2
  %9118 = select i1 %9093, float %9115, float %9033
  %9119 = select i1 %9093, float %9116, float %9034
  %9120 = select i1 %9093, float %9117, float %9035
  %9121 = fmul fast float %9118, %9024
  %9122 = fmul fast float %9119, %9024
  %9123 = fmul fast float %9120, %9024
  %9124 = fadd fast float %9121, %9111
  %9125 = fadd fast float %9122, %9112
  %9126 = fadd fast float %9123, %9113
  %9127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9128 = extractvalue %dx.types.CBufRet.f32 %9127, 0
  %9129 = extractvalue %dx.types.CBufRet.f32 %9127, 1
  %9130 = extractvalue %dx.types.CBufRet.f32 %9127, 2
  %9131 = select i1 %9093, float %9128, float %9040
  %9132 = select i1 %9093, float %9129, float %9041
  %9133 = select i1 %9093, float %9130, float %9042
  %9134 = fadd fast float %9124, %9131
  %9135 = fadd fast float %9125, %9132
  %9136 = fadd fast float %9126, %9133
  %9137 = fmul fast float %9134, %9103
  %9138 = fmul fast float %9135, %9103
  %9139 = fmul fast float %9136, %9103
  %9140 = fmul fast float %9137, %9137
  %9141 = fmul fast float %9138, %9138
  %9142 = fadd fast float %9140, %9141
  %9143 = fmul fast float %9139, %9139
  %9144 = fadd fast float %9142, %9143
  %9145 = call float @dx.op.unary.f32(i32 24, float %9144)  ; Sqrt(value)
  %9146 = fsub fast float %9145, %9058
  %9147 = fmul fast float %9146, %9060
  %9148 = call float @dx.op.unary.f32(i32 7, float %9147)  ; Saturate(value)
  br label %9149

; <label>:9149                                    ; preds = %9074, %9070
  %9150 = phi float [ %9148, %9074 ], [ 1.000000e+00, %9070 ]
  %9151 = fmul fast float %9067, 5.000000e-01
  %9152 = fadd fast float %9151, 5.000000e-01
  %9153 = call float @dx.op.unary.f32(i32 22, float %9152)  ; Frc(value)
  %9154 = call float @dx.op.unary.f32(i32 27, float %9153)  ; Round_ni(value)
  %9155 = call float @dx.op.unary.f32(i32 22, float %9153)  ; Frc(value)
  %9156 = fmul fast float %9155, 2.000000e+00
  %9157 = fadd fast float %9156, -1.000000e+00
  %9158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9019, float %9020, float %9154, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9159 = extractvalue %dx.types.ResRet.f32 %9158, 0
  %9160 = extractvalue %dx.types.ResRet.f32 %9158, 1
  %9161 = extractvalue %dx.types.ResRet.f32 %9158, 2
  %9162 = extractvalue %dx.types.ResRet.f32 %9158, 3
  %9163 = fadd fast float %9159, -5.000000e-01
  %9164 = fadd fast float %9161, -5.000000e-01
  %9165 = fmul fast float %9163, 0xBFD5555560000000
  %9166 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9164, float %9165)  ; FMad(a,b,c)
  %9167 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9160, float 0.000000e+00)  ; FMad(a,b,c)
  %9168 = fadd fast float %9167, %9162
  %9169 = fmul fast float %9163, -7.500000e-01
  %9170 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9164, float %9169)  ; FMad(a,b,c)
  %9171 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9160, float 0.000000e+00)  ; FMad(a,b,c)
  %9172 = fadd fast float %9171, %9162
  %9173 = call float @dx.op.binary.f32(i32 35, float %9166, float -1.000000e+00)  ; FMax(a,b)
  %9174 = call float @dx.op.binary.f32(i32 35, float %9168, float -1.000000e+00)  ; FMax(a,b)
  %9175 = call float @dx.op.binary.f32(i32 35, float %9170, float -1.000000e+00)  ; FMax(a,b)
  %9176 = call float @dx.op.binary.f32(i32 35, float %9172, float -1.000000e+00)  ; FMax(a,b)
  %9177 = call float @dx.op.binary.f32(i32 36, float %9173, float 1.000000e+00)  ; FMin(a,b)
  %9178 = call float @dx.op.binary.f32(i32 36, float %9174, float 1.000000e+00)  ; FMin(a,b)
  %9179 = call float @dx.op.binary.f32(i32 36, float %9175, float 1.000000e+00)  ; FMin(a,b)
  %9180 = call float @dx.op.binary.f32(i32 36, float %9176, float 1.000000e+00)  ; FMin(a,b)
  %9181 = fcmp fast olt float %9177, 0x3FEFFF8020000000
  br i1 %9181, label %9182, label %9297, !dx.controlflow.hints !182

; <label>:9182                                    ; preds = %9149
  %9183 = extractvalue %dx.types.CBufRet.f32 %9065, 3
  %9184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9185 = extractvalue %dx.types.CBufRet.f32 %9184, 0
  %9186 = extractvalue %dx.types.CBufRet.f32 %9184, 1
  %9187 = extractvalue %dx.types.CBufRet.f32 %9184, 2
  %9188 = extractvalue %dx.types.CBufRet.f32 %9184, 3
  %9189 = fsub fast float %9185, %9177
  %9190 = fsub fast float %9186, %9178
  %9191 = fsub fast float %9187, %9179
  %9192 = fsub fast float %9188, %9180
  %9193 = fmul fast float %9189, %9183
  %9194 = fmul fast float %9190, %9183
  %9195 = fmul fast float %9191, %9183
  %9196 = fmul fast float %9192, %9183
  %9197 = fadd fast float %9193, %9177
  %9198 = fadd fast float %9194, %9178
  %9199 = fsub fast float -0.000000e+00, %9198
  %9200 = fadd fast float %9195, %9179
  %9201 = fadd fast float %9196, %9180
  %9202 = fmul fast float %9197, %9197
  %9203 = fsub fast float %9198, %9202
  %9204 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9203)  ; FMax(a,b)
  %9205 = fdiv fast float 1.000000e+00, %9204
  %9206 = fmul fast float %9198, %9197
  %9207 = fsub fast float %9200, %9206
  %9208 = fsub fast float %9157, %9197
  %9209 = fmul fast float %9157, %9157
  %9210 = fsub fast float %9209, %9198
  %9211 = fmul fast float %9208, %9205
  %9212 = fmul fast float %9211, %9207
  %9213 = fsub fast float %9210, %9212
  %9214 = fmul fast float %9198, %9198
  %9215 = fsub fast float %9201, %9214
  %9216 = fmul fast float %9207, %9207
  %9217 = fmul fast float %9216, %9205
  %9218 = fsub fast float %9215, %9217
  %9219 = fdiv fast float %9213, %9218
  %9220 = fmul fast float %9207, %9219
  %9221 = fsub fast float %9208, %9220
  %9222 = fmul fast float %9221, %9205
  %9223 = fmul fast float %9222, %9197
  %9224 = fsub fast float 1.000000e+00, %9223
  %9225 = fmul fast float %9198, %9219
  %9226 = fsub fast float %9224, %9225
  %9227 = fmul fast float %9222, %9222
  %9228 = fmul fast float %9219, 4.000000e+00
  %9229 = fmul fast float %9228, %9226
  %9230 = fsub fast float %9227, %9229
  %9231 = call float @dx.op.unary.f32(i32 24, float %9230)  ; Sqrt(value)
  %9232 = fcmp fast oge float %9222, 0.000000e+00
  %9233 = fsub fast float -0.000000e+00, %9231
  %9234 = select i1 %9232, float %9233, float %9231
  %9235 = fsub fast float %9234, %9222
  %9236 = fdiv fast float %9235, %9219
  %9237 = fdiv fast float %9226, %9235
  %9238 = fmul fast float %9236, 5.000000e-01
  %9239 = fmul fast float %9237, 2.000000e+00
  %9240 = select i1 %9232, float %9238, float %9239
  %9241 = select i1 %9232, float %9239, float %9238
  %9242 = call float @dx.op.binary.f32(i32 35, float %9240, float %9241)  ; FMax(a,b)
  %9243 = call float @dx.op.binary.f32(i32 36, float %9240, float %9241)  ; FMin(a,b)
  %9244 = fcmp fast ogt float %9157, %9243
  br i1 %9244, label %9245, label %9255

; <label>:9245                                    ; preds = %9182
  %9246 = fsub fast float %9157, %9243
  %9247 = fsub fast float %9242, %9243
  %9248 = fmul fast float %9246, %9247
  %9249 = fmul fast float %9242, %9157
  %9250 = fadd fast float %9242, %9157
  %9251 = fmul fast float %9250, %9197
  %9252 = fadd fast float %9249, %9198
  %9253 = fsub fast float %9252, %9251
  %9254 = fdiv fast float %9253, %9248
  br label %9255

; <label>:9255                                    ; preds = %9245, %9182
  %9256 = phi float [ %9254, %9245 ], [ 0.000000e+00, %9182 ]
  %9257 = fcmp fast ogt float %9157, %9242
  %9258 = fsub fast float %9157, %9242
  br i1 %9257, label %9259, label %9269

; <label>:9259                                    ; preds = %9255
  %9260 = fsub fast float %9242, %9243
  %9261 = fmul fast float %9260, %9258
  %9262 = fmul fast float %9243, %9157
  %9263 = fadd fast float %9243, %9157
  %9264 = fmul fast float %9263, %9197
  %9265 = fsub fast float %9199, %9262
  %9266 = fadd fast float %9265, %9264
  %9267 = fdiv fast float %9266, %9261
  %9268 = fadd fast float %9267, %9256
  br label %9269

; <label>:9269                                    ; preds = %9259, %9255
  %9270 = phi float [ %9268, %9259 ], [ %9256, %9255 ]
  %9271 = fsub fast float %9157, %9243
  %9272 = fmul fast float %9271, %9258
  %9273 = fmul fast float %9243, %9242
  %9274 = fadd fast float %9243, %9242
  %9275 = fmul fast float %9274, %9197
  %9276 = fadd fast float %9273, %9198
  %9277 = fsub fast float %9276, %9275
  %9278 = fdiv fast float %9277, %9272
  %9279 = call float @dx.op.unary.f32(i32 7, float %9270)  ; Saturate(value)
  %9280 = fcmp fast oeq float %7948, 0.000000e+00
  %9281 = extractvalue %dx.types.CBufRet.f32 %9065, 0
  %9282 = fcmp fast oeq float %9281, 0.000000e+00
  %9283 = or i1 %9280, %9282
  %9284 = fmul fast float %9281, 2.000000e+00
  %9285 = fadd fast float %9066, %9067
  %9286 = fdiv fast float %9285, %9284
  %9287 = call float @dx.op.unary.f32(i32 7, float %9286)  ; Saturate(value)
  %9288 = fmul fast float %9287, 2.000000e+00
  %9289 = fsub fast float 3.000000e+00, %9288
  %9290 = fmul fast float %9287, %9287
  %9291 = fmul fast float %9290, %9289
  %9292 = select i1 %9283, float 1.000000e+00, float %9291
  %9293 = fmul fast float %9278, %7948
  %9294 = fadd fast float %9279, %9293
  %9295 = call float @dx.op.unary.f32(i32 7, float %9294)  ; Saturate(value)
  %9296 = fmul fast float %9292, %9295
  br label %9297

; <label>:9297                                    ; preds = %9269, %9149
  %9298 = phi float [ %9296, %9269 ], [ 0.000000e+00, %9149 ]
  %9299 = fsub fast float 1.000000e+00, %9298
  %9300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9019, float %9020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9301 = extractvalue %dx.types.ResRet.f32 %9300, 0
  %9302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9303 = extractvalue %dx.types.CBufRet.i32 %9302, 2
  %9304 = icmp eq i32 %9303, 0
  br i1 %9304, label %9310, label %9305

; <label>:9305                                    ; preds = %9297
  %9306 = call float @dx.op.unary.f32(i32 7, float %9298)  ; Saturate(value)
  %9307 = fadd fast float %9301, -1.000000e+00
  %9308 = fmul fast float %9306, %9307
  %9309 = fadd fast float %9308, 1.000000e+00
  br label %9310

; <label>:9310                                    ; preds = %9305, %9297
  %9311 = phi float [ %9309, %9305 ], [ %9299, %9297 ]
  br i1 %9073, label %9312, label %9330

; <label>:9312                                    ; preds = %9310
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 1
  %9315 = fsub fast float %9150, %9314
  %9316 = call float @dx.op.unary.f32(i32 7, float %9315)  ; Saturate(value)
  %9317 = fsub fast float %9150, %9072
  %9318 = call float @dx.op.unary.f32(i32 7, float %9317)  ; Saturate(value)
  %9319 = fsub fast float %9316, %9318
  %9320 = fsub fast float %9152, %9318
  %9321 = fdiv fast float %9320, %9319
  %9322 = call float @dx.op.unary.f32(i32 7, float %9321)  ; Saturate(value)
  %9323 = fmul fast float %9322, 2.000000e+00
  %9324 = fsub fast float 3.000000e+00, %9323
  %9325 = fsub fast float %9301, %9311
  %9326 = fmul fast float %9322, %9322
  %9327 = fmul fast float %9326, %9325
  %9328 = fmul fast float %9327, %9324
  %9329 = fadd fast float %9328, %9311
  br label %9330

; <label>:9330                                    ; preds = %9312, %9310
  %9331 = phi float [ %9329, %9312 ], [ %9311, %9310 ]
  %9332 = call float @dx.op.binary.f32(i32 35, float %9301, float %9331)  ; FMax(a,b)
  %9333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.i32 %9333, 2
  %9335 = and i32 %9334, 1
  %9336 = icmp eq i32 %9335, 0
  %9337 = fcmp fast une float %9332, 1.000000e+00
  %9338 = and i1 %9337, %9336
  br i1 %9338, label %9339, label %9358

; <label>:9339                                    ; preds = %9330
  %9340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9019, float %9020, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9341 = extractvalue %dx.types.ResRet.f32 %9340, 0
  %9342 = extractvalue %dx.types.ResRet.f32 %9340, 1
  %9343 = extractvalue %dx.types.ResRet.f32 %9340, 2
  %9344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9345 = extractvalue %dx.types.CBufRet.f32 %9344, 1
  %9346 = fmul fast float %9345, %9341
  %9347 = fmul fast float %9345, %9342
  %9348 = fmul fast float %9345, %9343
  %9349 = fcmp fast ogt float %9301, 0x3FEFFF2E40000000
  %9350 = fsub fast float 1.000000e+00, %9332
  %9351 = fsub fast float 1.000000e+00, %9301
  %9352 = fdiv fast float %9350, %9351
  %9353 = call float @dx.op.unary.f32(i32 7, float %9352)  ; Saturate(value)
  %9354 = select i1 %9349, float 0.000000e+00, float %9353
  %9355 = fmul fast float %9346, %9354
  %9356 = fmul fast float %9347, %9354
  %9357 = fmul fast float %9348, %9354
  br label %9358

; <label>:9358                                    ; preds = %9339, %9330
  %9359 = phi float [ 0.000000e+00, %9330 ], [ %9355, %9339 ]
  %9360 = phi float [ 0.000000e+00, %9330 ], [ %9356, %9339 ]
  %9361 = phi float [ 0.000000e+00, %9330 ], [ %9357, %9339 ]
  %9362 = fmul fast float %9359, %7936
  %9363 = fmul fast float %9360, %7936
  %9364 = fmul fast float %9361, %7936
  %9365 = fmul fast float %9332, %8994
  %9366 = call float @dx.op.dot3.f32(i32 55, float %9332, float %9332, float %9332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9367 = call float @dx.op.dot3.f32(i32 55, float %9362, float %9363, float %9364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9368 = select i1 %231, float %9366, float %9332
  %9369 = select i1 %231, float 1.000000e+00, float %9332
  %9370 = select i1 %231, float %9367, float %9362
  %9371 = select i1 %231, float 0.000000e+00, float %9363
  %9372 = select i1 %231, float 0.000000e+00, float %9364
  %9373 = fmul fast float %9368, %9006
  %9374 = fmul fast float %9368, %9007
  %9375 = fmul fast float %9369, %9008
  %9376 = fadd fast float %9373, %9370
  %9377 = fadd fast float %9374, %9371
  %9378 = fadd fast float %9372, %9375
  %9379 = fmul fast float %9368, %9009
  %9380 = fmul fast float %9368, %9010
  %9381 = fmul fast float %9369, %9011
  br label %9382

; <label>:9382                                    ; preds = %9358, %9015, %8984, %8216
  %9383 = phi float [ %8221, %8216 ], [ %9006, %8984 ], [ %9376, %9358 ], [ %9006, %9015 ]
  %9384 = phi float [ %8222, %8216 ], [ %9007, %8984 ], [ %9377, %9358 ], [ %9007, %9015 ]
  %9385 = phi float [ %8223, %8216 ], [ %9008, %8984 ], [ %9378, %9358 ], [ %9008, %9015 ]
  %9386 = phi float [ %8224, %8216 ], [ %9009, %8984 ], [ %9379, %9358 ], [ %9009, %9015 ]
  %9387 = phi float [ %8225, %8216 ], [ %9010, %8984 ], [ %9380, %9358 ], [ %9010, %9015 ]
  %9388 = phi float [ %8226, %8216 ], [ %9011, %8984 ], [ %9381, %9358 ], [ %9011, %9015 ]
  %9389 = phi float [ %8227, %8216 ], [ %8994, %8984 ], [ %9365, %9358 ], [ %8994, %9015 ]
  %9390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9391 = extractvalue %dx.types.CBufRet.f32 %9390, 2
  %9392 = extractvalue %dx.types.CBufRet.f32 %9390, 3
  %9393 = fmul fast float %9391, %110
  %9394 = fmul fast float %9392, %111
  %9395 = call float @dx.op.unary.f32(i32 7, float %9393)  ; Saturate(value)
  %9396 = call float @dx.op.unary.f32(i32 7, float %9394)  ; Saturate(value)
  %9397 = select i1 %7958, i32 2, i32 0
  %9398 = or i32 %9397, 1
  %9399 = uitofp i32 %9398 to float
  %9400 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9395, float %9396, float %9399, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9401 = extractvalue %dx.types.ResRet.f32 %9400, 0
  %9402 = extractvalue %dx.types.ResRet.f32 %9400, 1
  %9403 = extractvalue %dx.types.ResRet.f32 %9400, 2
  %9404 = extractvalue %dx.types.ResRet.f32 %9400, 3
  %9405 = add nuw nsw i32 %9397, 2
  %9406 = uitofp i32 %9405 to float
  %9407 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9395, float %9396, float %9406, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9408 = extractvalue %dx.types.ResRet.f32 %9407, 0
  %9409 = extractvalue %dx.types.ResRet.f32 %9407, 1
  %9410 = extractvalue %dx.types.ResRet.f32 %9407, 2
  %9411 = extractvalue %dx.types.ResRet.f32 %9407, 3
  %9412 = call float @dx.op.binary.f32(i32 35, float %9402, float %9403)  ; FMax(a,b)
  %9413 = call float @dx.op.binary.f32(i32 35, float %9401, float %9412)  ; FMax(a,b)
  %9414 = call float @dx.op.binary.f32(i32 35, float %9413, float %9404)  ; FMax(a,b)
  %9415 = call float @dx.op.binary.f32(i32 36, float %9409, float %9410)  ; FMin(a,b)
  %9416 = call float @dx.op.binary.f32(i32 36, float %9408, float %9415)  ; FMin(a,b)
  %9417 = call float @dx.op.binary.f32(i32 36, float %9416, float %9411)  ; FMin(a,b)
  %9418 = fmul fast float %9414, 2.550000e+02
  %9419 = fadd fast float %9418, 0x3F70101020000000
  %9420 = fptoui float %9419 to i32
  %9421 = fmul fast float %9417, 2.550000e+02
  %9422 = fadd fast float %9421, 0x3F70101020000000
  %9423 = fptoui float %9422 to i32
  %9424 = icmp ult i32 %9420, %9423
  br i1 %9424, label %9425, label %9594

; <label>:9425                                    ; preds = %9382
  %9426 = fcmp fast ogt float %97, 9.843750e-01
  %9427 = fadd fast float %8220, -4.000000e+00
  %9428 = select i1 %9426, float -4.000000e+00, float %9427
  %9429 = call float @dx.op.binary.f32(i32 35, float %9428, float 0.000000e+00)  ; FMax(a,b)
  %9430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9431 = extractvalue %dx.types.CBufRet.f32 %9430, 0
  %9432 = fadd fast float %9431, %9429
  %9433 = extractvalue %dx.types.CBufRet.f32 %9430, 2
  %9434 = fmul fast float %9432, %9433
  %9435 = call float @dx.op.unary.f32(i32 23, float %9434)  ; Log(value)
  %9436 = extractvalue %dx.types.CBufRet.f32 %9430, 3
  %9437 = fmul fast float %9436, %9435
  %9438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9438, 2
  %9440 = fmul fast float %9437, %9439
  %9441 = call float @dx.op.unary.f32(i32 7, float %9440)  ; Saturate(value)
  %9442 = uitofp i32 %9420 to float
  %9443 = uitofp i32 %9423 to float
  %9444 = fadd fast float %9442, 5.000000e-01
  %9445 = fadd fast float %9443, 5.000000e-01
  %9446 = fmul fast float %9439, %9444
  %9447 = fmul fast float %9439, %9445
  %9448 = fadd fast float %9446, 0x3F0FFB4800000000
  %9449 = fadd fast float %9447, 0xBF0FFB4800000000
  %9450 = call float @dx.op.binary.f32(i32 35, float %9441, float %9448)  ; FMax(a,b)
  %9451 = call float @dx.op.binary.f32(i32 36, float %9450, float %9449)  ; FMin(a,b)
  %9452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9453 = extractvalue %dx.types.CBufRet.f32 %9452, 1
  %9454 = extractvalue %dx.types.CBufRet.f32 %9452, 2
  %9455 = extractvalue %dx.types.CBufRet.f32 %9452, 0
  %9456 = select i1 %7958, float %9455, float 0.000000e+00
  %9457 = fmul fast float %9453, %9451
  %9458 = fadd fast float %9456, %9457
  %9459 = fadd fast float %9456, %9454
  %9460 = fsub fast float %9453, %9454
  %9461 = fadd fast float %9460, %9456
  %9462 = call float @dx.op.binary.f32(i32 35, float %9458, float %9459)  ; FMax(a,b)
  %9463 = call float @dx.op.binary.f32(i32 36, float %9462, float %9461)  ; FMin(a,b)
  %9464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9395, float %9396, float %9463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9465 = extractvalue %dx.types.ResRet.f32 %9464, 0
  %9466 = extractvalue %dx.types.ResRet.f32 %9464, 1
  %9467 = extractvalue %dx.types.ResRet.f32 %9464, 2
  %9468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9469 = extractvalue %dx.types.CBufRet.i32 %9468, 0
  %9470 = extractvalue %dx.types.CBufRet.i32 %9468, 1
  %9471 = uitofp i32 %9469 to float
  %9472 = uitofp i32 %9470 to float
  %9473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9474 = extractvalue %dx.types.CBufRet.f32 %9473, 0
  %9475 = extractvalue %dx.types.CBufRet.f32 %9473, 1
  %9476 = fmul fast float %9471, %9395
  %9477 = fmul fast float %9472, %9396
  %9478 = fadd fast float %9476, -5.000000e-01
  %9479 = fadd fast float %9477, -5.000000e-01
  %9480 = call float @dx.op.unary.f32(i32 22, float %9478)  ; Frc(value)
  %9481 = call float @dx.op.unary.f32(i32 22, float %9479)  ; Frc(value)
  %9482 = fmul fast float %9480, %9480
  %9483 = fmul fast float %9482, %9480
  %9484 = fsub fast float 3.000000e+00, %9480
  %9485 = fmul fast float %9482, %9484
  %9486 = fmul fast float %9480, 3.000000e+00
  %9487 = fmul fast float %9483, 3.000000e+00
  %9488 = fmul fast float %9482, 6.000000e+00
  %9489 = fsub fast float %9487, %9488
  %9490 = fadd fast float %9489, 4.000000e+00
  %9491 = fmul fast float %9490, 0x3FC5555560000000
  %9492 = fmul fast float %9483, -3.000000e+00
  %9493 = fadd fast float %9482, %9480
  %9494 = fmul fast float %9493, 3.000000e+00
  %9495 = fadd fast float %9492, 1.000000e+00
  %9496 = fadd fast float %9495, %9494
  %9497 = fmul fast float %9483, 0x3FC5555560000000
  %9498 = fmul fast float %9481, %9481
  %9499 = fmul fast float %9498, %9481
  %9500 = fsub fast float 3.000000e+00, %9481
  %9501 = fmul fast float %9498, %9500
  %9502 = fmul fast float %9481, 3.000000e+00
  %9503 = fmul fast float %9499, 3.000000e+00
  %9504 = fmul fast float %9498, 6.000000e+00
  %9505 = fsub fast float %9503, %9504
  %9506 = fadd fast float %9505, 4.000000e+00
  %9507 = fmul fast float %9506, 0x3FC5555560000000
  %9508 = fmul fast float %9499, -3.000000e+00
  %9509 = fadd fast float %9498, %9481
  %9510 = fmul fast float %9509, 3.000000e+00
  %9511 = fadd fast float %9508, 1.000000e+00
  %9512 = fadd fast float %9511, %9510
  %9513 = fmul fast float %9499, 0x3FC5555560000000
  %9514 = fadd fast float %9480, 1.000000e+00
  %9515 = fsub fast float 1.000000e+00, %9486
  %9516 = fadd fast float %9515, %9485
  %9517 = fadd fast float %9516, %9490
  %9518 = fmul fast float %9517, 0x3FC5555560000000
  %9519 = fdiv fast float %9491, %9518
  %9520 = fsub fast float %9514, %9519
  %9521 = fsub fast float 1.000000e+00, %9480
  %9522 = fadd fast float %9496, %9483
  %9523 = fmul fast float %9522, 0x3FC5555560000000
  %9524 = fdiv fast float %9497, %9523
  %9525 = fadd fast float %9521, %9524
  %9526 = fadd fast float %9481, 1.000000e+00
  %9527 = fsub fast float 1.000000e+00, %9502
  %9528 = fadd fast float %9527, %9501
  %9529 = fadd fast float %9528, %9506
  %9530 = fmul fast float %9529, 0x3FC5555560000000
  %9531 = fdiv fast float %9507, %9530
  %9532 = fsub fast float %9526, %9531
  %9533 = fsub fast float 1.000000e+00, %9481
  %9534 = fadd fast float %9512, %9499
  %9535 = fmul fast float %9534, 0x3FC5555560000000
  %9536 = fdiv fast float %9513, %9535
  %9537 = fadd fast float %9536, %9533
  %9538 = fmul fast float %9520, %9474
  %9539 = fsub fast float %9395, %9538
  %9540 = fmul fast float %9525, %9474
  %9541 = fadd fast float %9540, %9395
  %9542 = fmul fast float %9537, %9475
  %9543 = fadd fast float %9542, %9396
  %9544 = fmul fast float %9532, %9475
  %9545 = fsub fast float %9396, %9544
  %9546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9539, float %9545, float %9463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9547 = extractvalue %dx.types.ResRet.f32 %9546, 0
  %9548 = extractvalue %dx.types.ResRet.f32 %9546, 1
  %9549 = extractvalue %dx.types.ResRet.f32 %9546, 2
  %9550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9541, float %9545, float %9463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9551 = extractvalue %dx.types.ResRet.f32 %9550, 0
  %9552 = extractvalue %dx.types.ResRet.f32 %9550, 1
  %9553 = extractvalue %dx.types.ResRet.f32 %9550, 2
  %9554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9539, float %9543, float %9463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9555 = extractvalue %dx.types.ResRet.f32 %9554, 0
  %9556 = extractvalue %dx.types.ResRet.f32 %9554, 1
  %9557 = extractvalue %dx.types.ResRet.f32 %9554, 2
  %9558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9541, float %9543, float %9463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9559 = extractvalue %dx.types.ResRet.f32 %9558, 0
  %9560 = extractvalue %dx.types.ResRet.f32 %9558, 1
  %9561 = extractvalue %dx.types.ResRet.f32 %9558, 2
  %9562 = fsub fast float %9555, %9547
  %9563 = fsub fast float %9556, %9548
  %9564 = fsub fast float %9557, %9549
  %9565 = fmul fast float %9562, %9535
  %9566 = fmul fast float %9563, %9535
  %9567 = fmul fast float %9564, %9535
  %9568 = fadd fast float %9565, %9547
  %9569 = fadd fast float %9566, %9548
  %9570 = fadd fast float %9567, %9549
  %9571 = fsub fast float %9559, %9551
  %9572 = fsub fast float %9560, %9552
  %9573 = fsub fast float %9561, %9553
  %9574 = fmul fast float %9571, %9535
  %9575 = fmul fast float %9572, %9535
  %9576 = fmul fast float %9573, %9535
  %9577 = fsub fast float %9551, %9568
  %9578 = fadd fast float %9577, %9574
  %9579 = fsub fast float %9552, %9569
  %9580 = fadd fast float %9579, %9575
  %9581 = fsub fast float %9553, %9570
  %9582 = fadd fast float %9581, %9576
  %9583 = fmul fast float %9578, %9523
  %9584 = fmul fast float %9580, %9523
  %9585 = fmul fast float %9582, %9523
  %9586 = fadd fast float %9583, %9568
  %9587 = fadd fast float %9584, %9569
  %9588 = fadd fast float %9585, %9570
  %9589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9590 = extractvalue %dx.types.CBufRet.f32 %9589, 1
  %9591 = fmul fast float %9586, %9590
  %9592 = fmul fast float %9587, %9590
  %9593 = fmul fast float %9588, %9590
  br label %9594

; <label>:9594                                    ; preds = %9425, %9382
  %9595 = phi float [ %9465, %9425 ], [ 1.000000e+00, %9382 ]
  %9596 = phi float [ %9466, %9425 ], [ 1.000000e+00, %9382 ]
  %9597 = phi float [ %9467, %9425 ], [ 1.000000e+00, %9382 ]
  %9598 = phi float [ %9591, %9425 ], [ 0.000000e+00, %9382 ]
  %9599 = phi float [ %9592, %9425 ], [ 0.000000e+00, %9382 ]
  %9600 = phi float [ %9593, %9425 ], [ 0.000000e+00, %9382 ]
  %9601 = fmul fast float %9598, %7936
  %9602 = fmul fast float %9599, %7936
  %9603 = fmul fast float %9600, %7936
  %9604 = fmul fast float %9595, %9389
  %9605 = call float @dx.op.dot3.f32(i32 55, float %9595, float %9596, float %9597, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9606 = call float @dx.op.dot3.f32(i32 55, float %9601, float %9602, float %9603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9607 = select i1 %231, float %9605, float %9595
  %9608 = select i1 %231, float %9605, float %9596
  %9609 = select i1 %231, float 1.000000e+00, float %9597
  %9610 = select i1 %231, float %9606, float %9601
  %9611 = select i1 %231, float 0.000000e+00, float %9602
  %9612 = select i1 %231, float 0.000000e+00, float %9603
  %9613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9614 = extractvalue %dx.types.CBufRet.i32 %9613, 3
  %9615 = and i32 %9614, 3
  %9616 = icmp ne i32 %9615, 0
  %9617 = and i32 %9614, 4
  %9618 = icmp ne i32 %9617, 0
  %9619 = and i1 %9616, %9618
  %9620 = and i1 %231, %9619
  br i1 %9620, label %9621, label %9627

; <label>:9621                                    ; preds = %9594
  %9622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9623 = extractvalue %dx.types.CBufRet.f32 %9622, 1
  %9624 = fadd fast float %9604, -1.000000e+00
  %9625 = fmul fast float %9623, %9624
  %9626 = fadd fast float %9625, 1.000000e+00
  br label %9627

; <label>:9627                                    ; preds = %9621, %9594
  %9628 = phi float [ %9626, %9621 ], [ %9604, %9594 ]
  %9629 = fadd fast float %9386, %9383
  %9630 = fmul fast float %9607, %9629
  %9631 = fadd fast float %9630, %9610
  %9632 = fadd fast float %9387, %9384
  %9633 = fmul fast float %9608, %9632
  %9634 = fadd fast float %9633, %9611
  %9635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9636 = extractvalue %dx.types.CBufRet.f32 %9635, 0
  br i1 %231, label %9637, label %9661

; <label>:9637                                    ; preds = %9627
  %9638 = fadd fast float %9631, %9634
  %9639 = fmul fast float %9636, %9638
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 3
  %9642 = extractvalue %dx.types.CBufRet.f32 %7940, 1
  %9643 = fsub fast float %7945, %7939
  %9644 = fadd fast float %9643, %7946
  %9645 = fsub fast float %9644, %9642
  %9646 = extractvalue %dx.types.CBufRet.f32 %7940, 2
  %9647 = fmul fast float %9645, %9646
  %9648 = call float @dx.op.unary.f32(i32 7, float %9647)  ; Saturate(value)
  %9649 = fsub fast float %9648, %9641
  %9650 = fmul fast float %9649, %9628
  %9651 = fadd fast float %9650, %9641
  %9652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9653 = extractvalue %dx.types.CBufRet.f32 %9652, 0
  %9654 = fsub fast float %9651, %9653
  %9655 = fmul fast float %9654, 1.000000e+01
  %9656 = call float @dx.op.unary.f32(i32 7, float %9655)  ; Saturate(value)
  %9657 = fsub fast float %4218, %7936
  %9658 = fmul fast float %9656, %9657
  %9659 = fadd fast float %9658, %7936
  %9660 = fmul fast float %9659, %9651
  br label %9685

; <label>:9661                                    ; preds = %9627
  %9662 = fadd fast float %9388, %9385
  %9663 = fmul fast float %9609, %9662
  %9664 = fadd fast float %9663, %9612
  %9665 = fmul fast float %9636, %9631
  %9666 = fmul fast float %9636, %9634
  %9667 = fmul fast float %9636, %9664
  %9668 = call float @dx.op.binary.f32(i32 35, float %9666, float %9667)  ; FMax(a,b)
  %9669 = call float @dx.op.binary.f32(i32 35, float %9665, float %9668)  ; FMax(a,b)
  %9670 = call float @dx.op.binary.f32(i32 35, float %9669, float %7936)  ; FMax(a,b)
  %9671 = fcmp fast ugt float %9670, 0x3F10000000000000
  br i1 %9671, label %9673, label %9672

; <label>:9672                                    ; preds = %9661
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9673

; <label>:9673                                    ; preds = %9672, %9661
  %9674 = add i32 %62, 356
  %9675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9674, i32 undef)  ; BufferLoad(srv,index,wot)
  %9676 = extractvalue %dx.types.ResRet.i32 %9675, 0
  %9677 = and i32 %9676, 32
  %9678 = icmp eq i32 %9677, 0
  br i1 %9678, label %9685, label %9679

; <label>:9679                                    ; preds = %9673
  %9680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9681 = extractvalue %dx.types.CBufRet.f32 %9680, 0
  %9682 = fmul fast float %9681, 0x3FE99999A0000000
  %9683 = fadd fast float %9681, %9665
  %9684 = fadd fast float %9682, %9667
  br label %9685

; <label>:9685                                    ; preds = %9679, %9673, %9637
  %9686 = phi float [ %9639, %9637 ], [ %9683, %9679 ], [ %9665, %9673 ]
  %9687 = phi float [ %9660, %9637 ], [ %9666, %9679 ], [ %9666, %9673 ]
  %9688 = phi float [ %9659, %9637 ], [ %9684, %9679 ], [ %9667, %9673 ]
  %9689 = phi float [ %9659, %9637 ], [ %7936, %9679 ], [ %7936, %9673 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9690 = call float @dx.op.binary.f32(i32 36, float %9686, float 3.225500e+04)  ; FMin(a,b)
  %9691 = call float @dx.op.binary.f32(i32 36, float %9687, float 3.225500e+04)  ; FMin(a,b)
  %9692 = call float @dx.op.binary.f32(i32 36, float %9688, float 3.225500e+04)  ; FMin(a,b)
  %9693 = call float @dx.op.binary.f32(i32 36, float %9689, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9690)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9691)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9692)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9693)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!74 = !{[47 x i32] [i32 45, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 0, i32 15]}
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
!93 = !{i32 3, i32 5}
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

