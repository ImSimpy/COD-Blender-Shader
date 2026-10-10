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
; shader hash: ab9a617243d9222b8f8218413621d999
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
  %426 = add i32 %62, 472
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
  %702 = add i32 %62, 424
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
  %754 = add i32 %62, 408
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
  %778 = add i32 %62, 360
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
  %801 = add i32 %62, 440
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
  %999 = add i32 %62, 376
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
  %1083 = add i32 %62, 392
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
  %1124 = add i32 %62, 456
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
  %1191 = phi float [ 0.000000e+00, %468 ], [ %1116, %1167 ]
  %1192 = phi float [ 0.000000e+00, %468 ], [ %1117, %1167 ]
  %1193 = phi float [ 0.000000e+00, %468 ], [ %1118, %1167 ]
  %1194 = phi float [ 0.000000e+00, %468 ], [ %1168, %1167 ]
  %1195 = phi float [ 0.000000e+00, %468 ], [ %1169, %1167 ]
  %1196 = phi float [ 0.000000e+00, %468 ], [ %1170, %1167 ]
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
  %1432 = add i32 %62, 428
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
  %1484 = add i32 %62, 412
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
  %1510 = add i32 %62, 364
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
  %1533 = add i32 %62, 444
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
  %1731 = add i32 %62, 380
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
  %1815 = add i32 %62, 396
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
  %1856 = add i32 %62, 460
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
  %1922 = fmul fast float %1918, %1191
  %1923 = fmul fast float %1918, %1192
  %1924 = fmul fast float %1918, %1193
  br label %1925

; <label>:1925                                    ; preds = %1917, %1899
  %1926 = phi float [ %1919, %1917 ], [ %1188, %1899 ]
  %1927 = phi float [ %1920, %1917 ], [ %1189, %1899 ]
  %1928 = phi float [ %1921, %1917 ], [ %1190, %1899 ]
  %1929 = phi float [ %1922, %1917 ], [ %1191, %1899 ]
  %1930 = phi float [ %1923, %1917 ], [ %1192, %1899 ]
  %1931 = phi float [ %1924, %1917 ], [ %1193, %1899 ]
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
  %2058 = fsub fast float %1900, %1194
  %2059 = fsub fast float %1901, %1195
  %2060 = fsub fast float %1902, %1196
  %2061 = fmul fast float %2040, %2058
  %2062 = fmul fast float %2040, %2059
  %2063 = fmul fast float %2040, %2060
  %2064 = fadd fast float %2061, %1194
  %2065 = fadd fast float %2062, %1195
  %2066 = fadd fast float %2063, %1196
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
  %2106 = fadd fast float %2103, %1194
  %2107 = fadd fast float %2104, %1195
  %2108 = fadd fast float %2105, %1196
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
  %2128 = fadd fast float %2125, %1194
  %2129 = fadd fast float %2126, %1195
  %2130 = fadd fast float %2127, %1196
  br label %2131

; <label>:2131                                    ; preds = %2111, %2109, %2069, %2042, %2014, %1499, %1203, %1185
  %2132 = phi float [ %1186, %2014 ], [ %1186, %1499 ], [ %1186, %1185 ], [ %2114, %2111 ], [ %1186, %2109 ], [ %2072, %2069 ], [ %2047, %2042 ], [ %1186, %1203 ]
  %2133 = phi float [ %1187, %2014 ], [ %1187, %1499 ], [ %1187, %1185 ], [ %2115, %2111 ], [ %1187, %2109 ], [ %2073, %2069 ], [ %2048, %2042 ], [ %1187, %1203 ]
  %2134 = phi float [ %2015, %2014 ], [ %1188, %1499 ], [ %1188, %1185 ], [ %2015, %2111 ], [ %2015, %2109 ], [ %2015, %2069 ], [ %2015, %2042 ], [ %1188, %1203 ]
  %2135 = phi float [ %2016, %2014 ], [ %1189, %1499 ], [ %1189, %1185 ], [ %2016, %2111 ], [ %2016, %2109 ], [ %2016, %2069 ], [ %2016, %2042 ], [ %1189, %1203 ]
  %2136 = phi float [ %2017, %2014 ], [ %1190, %1499 ], [ %1190, %1185 ], [ %2017, %2111 ], [ %2017, %2109 ], [ %2017, %2069 ], [ %2017, %2042 ], [ %1190, %1203 ]
  %2137 = phi float [ %2018, %2014 ], [ %1191, %1499 ], [ %1191, %1185 ], [ %2018, %2111 ], [ %2018, %2109 ], [ %2018, %2069 ], [ %2018, %2042 ], [ %1191, %1203 ]
  %2138 = phi float [ %2019, %2014 ], [ %1192, %1499 ], [ %1192, %1185 ], [ %2019, %2111 ], [ %2019, %2109 ], [ %2019, %2069 ], [ %2019, %2042 ], [ %1192, %1203 ]
  %2139 = phi float [ %2020, %2014 ], [ %1193, %1499 ], [ %1193, %1185 ], [ %2020, %2111 ], [ %2020, %2109 ], [ %2020, %2069 ], [ %2020, %2042 ], [ %1193, %1203 ]
  %2140 = phi float [ %1194, %2014 ], [ %1194, %1499 ], [ %1194, %1185 ], [ %2128, %2111 ], [ %1194, %2109 ], [ %2106, %2069 ], [ %2064, %2042 ], [ %1194, %1203 ]
  %2141 = phi float [ %1195, %2014 ], [ %1195, %1499 ], [ %1195, %1185 ], [ %2129, %2111 ], [ %1195, %2109 ], [ %2107, %2069 ], [ %2065, %2042 ], [ %1195, %1203 ]
  %2142 = phi float [ %1196, %2014 ], [ %1196, %1499 ], [ %1196, %1185 ], [ %2130, %2111 ], [ %1196, %2109 ], [ %2108, %2069 ], [ %2066, %2042 ], [ %1196, %1203 ]
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
  %2377 = add i32 %62, 432
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
  %2429 = add i32 %62, 416
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
  %2455 = add i32 %62, 368
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
  %2478 = add i32 %62, 448
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
  %2676 = add i32 %62, 384
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
  %2760 = add i32 %62, 400
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
  %2801 = add i32 %62, 464
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
  %2867 = fmul fast float %2863, %2137
  %2868 = fmul fast float %2863, %2138
  %2869 = fmul fast float %2863, %2139
  br label %2870

; <label>:2870                                    ; preds = %2862, %2844
  %2871 = phi float [ %2864, %2862 ], [ %2134, %2844 ]
  %2872 = phi float [ %2865, %2862 ], [ %2135, %2844 ]
  %2873 = phi float [ %2866, %2862 ], [ %2136, %2844 ]
  %2874 = phi float [ %2867, %2862 ], [ %2137, %2844 ]
  %2875 = phi float [ %2868, %2862 ], [ %2138, %2844 ]
  %2876 = phi float [ %2869, %2862 ], [ %2139, %2844 ]
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
  %3003 = fsub fast float %2845, %2140
  %3004 = fsub fast float %2846, %2141
  %3005 = fsub fast float %2847, %2142
  %3006 = fmul fast float %2985, %3003
  %3007 = fmul fast float %2985, %3004
  %3008 = fmul fast float %2985, %3005
  %3009 = fadd fast float %3006, %2140
  %3010 = fadd fast float %3007, %2141
  %3011 = fadd fast float %3008, %2142
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
  %3051 = fadd fast float %3048, %2140
  %3052 = fadd fast float %3049, %2141
  %3053 = fadd fast float %3050, %2142
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
  %3073 = fadd fast float %3070, %2140
  %3074 = fadd fast float %3071, %2141
  %3075 = fadd fast float %3072, %2142
  br label %3076

; <label>:3076                                    ; preds = %3056, %3054, %3014, %2987, %2959, %2444, %2148, %2131
  %3077 = phi float [ %2132, %2959 ], [ %2132, %2444 ], [ %2132, %2131 ], [ %3059, %3056 ], [ %2132, %3054 ], [ %3017, %3014 ], [ %2992, %2987 ], [ %2132, %2148 ]
  %3078 = phi float [ %2133, %2959 ], [ %2133, %2444 ], [ %2133, %2131 ], [ %3060, %3056 ], [ %2133, %3054 ], [ %3018, %3014 ], [ %2993, %2987 ], [ %2133, %2148 ]
  %3079 = phi float [ %2960, %2959 ], [ %2134, %2444 ], [ %2134, %2131 ], [ %2960, %3056 ], [ %2960, %3054 ], [ %2960, %3014 ], [ %2960, %2987 ], [ %2134, %2148 ]
  %3080 = phi float [ %2961, %2959 ], [ %2135, %2444 ], [ %2135, %2131 ], [ %2961, %3056 ], [ %2961, %3054 ], [ %2961, %3014 ], [ %2961, %2987 ], [ %2135, %2148 ]
  %3081 = phi float [ %2962, %2959 ], [ %2136, %2444 ], [ %2136, %2131 ], [ %2962, %3056 ], [ %2962, %3054 ], [ %2962, %3014 ], [ %2962, %2987 ], [ %2136, %2148 ]
  %3082 = phi float [ %2963, %2959 ], [ %2137, %2444 ], [ %2137, %2131 ], [ %2963, %3056 ], [ %2963, %3054 ], [ %2963, %3014 ], [ %2963, %2987 ], [ %2137, %2148 ]
  %3083 = phi float [ %2964, %2959 ], [ %2138, %2444 ], [ %2138, %2131 ], [ %2964, %3056 ], [ %2964, %3054 ], [ %2964, %3014 ], [ %2964, %2987 ], [ %2138, %2148 ]
  %3084 = phi float [ %2965, %2959 ], [ %2139, %2444 ], [ %2139, %2131 ], [ %2965, %3056 ], [ %2965, %3054 ], [ %2965, %3014 ], [ %2965, %2987 ], [ %2139, %2148 ]
  %3085 = phi float [ %2140, %2959 ], [ %2140, %2444 ], [ %2140, %2131 ], [ %3073, %3056 ], [ %2140, %3054 ], [ %3051, %3014 ], [ %3009, %2987 ], [ %2140, %2148 ]
  %3086 = phi float [ %2141, %2959 ], [ %2141, %2444 ], [ %2141, %2131 ], [ %3074, %3056 ], [ %2141, %3054 ], [ %3052, %3014 ], [ %3010, %2987 ], [ %2141, %2148 ]
  %3087 = phi float [ %2142, %2959 ], [ %2142, %2444 ], [ %2142, %2131 ], [ %3075, %3056 ], [ %2142, %3054 ], [ %3053, %3014 ], [ %3011, %2987 ], [ %2142, %2148 ]
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
  %3322 = add i32 %62, 436
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
  %3374 = add i32 %62, 420
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
  %3400 = add i32 %62, 372
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
  %3423 = add i32 %62, 452
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
  %3621 = add i32 %62, 388
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
  %3705 = add i32 %62, 404
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
  %3746 = add i32 %62, 468
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
  %3812 = fmul fast float %3808, %3082
  %3813 = fmul fast float %3808, %3083
  %3814 = fmul fast float %3808, %3084
  br label %3815

; <label>:3815                                    ; preds = %3807, %3789
  %3816 = phi float [ %3809, %3807 ], [ %3079, %3789 ]
  %3817 = phi float [ %3810, %3807 ], [ %3080, %3789 ]
  %3818 = phi float [ %3811, %3807 ], [ %3081, %3789 ]
  %3819 = phi float [ %3812, %3807 ], [ %3082, %3789 ]
  %3820 = phi float [ %3813, %3807 ], [ %3083, %3789 ]
  %3821 = phi float [ %3814, %3807 ], [ %3084, %3789 ]
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
  %3948 = fsub fast float %3790, %3085
  %3949 = fsub fast float %3791, %3086
  %3950 = fsub fast float %3792, %3087
  %3951 = fmul fast float %3930, %3948
  %3952 = fmul fast float %3930, %3949
  %3953 = fmul fast float %3930, %3950
  %3954 = fadd fast float %3951, %3085
  %3955 = fadd fast float %3952, %3086
  %3956 = fadd fast float %3953, %3087
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
  %3996 = fadd fast float %3993, %3085
  %3997 = fadd fast float %3994, %3086
  %3998 = fadd fast float %3995, %3087
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
  %4018 = fadd fast float %4015, %3085
  %4019 = fadd fast float %4016, %3086
  %4020 = fadd fast float %4017, %3087
  br label %4021

; <label>:4021                                    ; preds = %4001, %3999, %3959, %3932, %3904, %3389, %3093, %3076
  %4022 = phi float [ %3077, %3904 ], [ %3077, %3389 ], [ %3077, %3076 ], [ %3077, %3093 ], [ %3937, %3932 ], [ %3962, %3959 ], [ %3077, %3999 ], [ %4004, %4001 ]
  %4023 = phi float [ %3078, %3904 ], [ %3078, %3389 ], [ %3078, %3076 ], [ %3078, %3093 ], [ %3938, %3932 ], [ %3963, %3959 ], [ %3078, %3999 ], [ %4005, %4001 ]
  %4024 = phi float [ %3905, %3904 ], [ %3079, %3389 ], [ %3079, %3076 ], [ %3079, %3093 ], [ %3905, %3932 ], [ %3905, %3959 ], [ %3905, %3999 ], [ %3905, %4001 ]
  %4025 = phi float [ %3906, %3904 ], [ %3080, %3389 ], [ %3080, %3076 ], [ %3080, %3093 ], [ %3906, %3932 ], [ %3906, %3959 ], [ %3906, %3999 ], [ %3906, %4001 ]
  %4026 = phi float [ %3907, %3904 ], [ %3081, %3389 ], [ %3081, %3076 ], [ %3081, %3093 ], [ %3907, %3932 ], [ %3907, %3959 ], [ %3907, %3999 ], [ %3907, %4001 ]
  %4027 = phi float [ %3908, %3904 ], [ %3082, %3389 ], [ %3082, %3076 ], [ %3082, %3093 ], [ %3908, %3932 ], [ %3908, %3959 ], [ %3908, %3999 ], [ %3908, %4001 ]
  %4028 = phi float [ %3909, %3904 ], [ %3083, %3389 ], [ %3083, %3076 ], [ %3083, %3093 ], [ %3909, %3932 ], [ %3909, %3959 ], [ %3909, %3999 ], [ %3909, %4001 ]
  %4029 = phi float [ %3910, %3904 ], [ %3084, %3389 ], [ %3084, %3076 ], [ %3084, %3093 ], [ %3910, %3932 ], [ %3910, %3959 ], [ %3910, %3999 ], [ %3910, %4001 ]
  %4030 = phi float [ %3085, %3904 ], [ %3085, %3389 ], [ %3085, %3076 ], [ %3085, %3093 ], [ %3954, %3932 ], [ %3996, %3959 ], [ %3085, %3999 ], [ %4018, %4001 ]
  %4031 = phi float [ %3086, %3904 ], [ %3086, %3389 ], [ %3086, %3076 ], [ %3086, %3093 ], [ %3955, %3932 ], [ %3997, %3959 ], [ %3086, %3999 ], [ %4019, %4001 ]
  %4032 = phi float [ %3087, %3904 ], [ %3087, %3389 ], [ %3087, %3076 ], [ %3087, %3093 ], [ %3956, %3932 ], [ %3998, %3959 ], [ %3087, %3999 ], [ %4020, %4001 ]
  %4033 = phi float [ %3911, %3904 ], [ %3088, %3389 ], [ %3088, %3076 ], [ %3088, %3093 ], [ %3911, %3932 ], [ %3911, %3959 ], [ %3911, %3999 ], [ %3911, %4001 ]
  %4034 = phi float [ %3089, %3904 ], [ %3089, %3389 ], [ %3089, %3076 ], [ %3089, %3093 ], [ %3944, %3932 ], [ %3990, %3959 ], [ %3089, %3999 ], [ %4012, %4001 ]
  %4035 = phi float [ %3090, %3904 ], [ %3090, %3389 ], [ %3090, %3076 ], [ %3090, %3093 ], [ %3941, %3932 ], [ %3967, %3959 ], [ %3090, %3999 ], [ %4009, %4001 ]
  %4036 = phi float [ %3091, %3904 ], [ %3091, %3389 ], [ %3091, %3076 ], [ %3091, %3093 ], [ %3947, %3932 ], [ %3992, %3959 ], [ %3091, %3999 ], [ %4014, %4001 ]
  %4037 = phi float [ %3912, %3904 ], [ %3092, %3389 ], [ %3092, %3076 ], [ %3092, %3093 ], [ %3912, %3932 ], [ %3912, %3959 ], [ %3912, %3999 ], [ %3912, %4001 ]
  %4038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4039 = extractvalue %dx.types.CBufRet.f32 %4038, 0
  %4040 = call float @dx.op.dot2.f32(i32 54, float %4022, float %4023, float %4022, float %4023)  ; Dot2(ax,ay,bx,by)
  %4041 = fmul fast float %4040, 0x3FE3333340000000
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = call float @dx.op.dot3.f32(i32 55, float %4022, float %4023, float %4042, float %4022, float %4023, float %4042)  ; Dot3(ax,ay,az,bx,by,bz)
  %4044 = call float @dx.op.unary.f32(i32 25, float %4043)  ; Rsqrt(value)
  %4045 = fmul fast float %4044, %4022
  %4046 = fmul fast float %4044, %4023
  %4047 = fmul fast float %4042, %4044
  %4048 = fmul fast float %4047, %120
  %4049 = fmul fast float %4047, %122
  %4050 = fmul fast float %4047, %124
  %4051 = fmul fast float %4045, %83
  %4052 = fmul fast float %4045, %84
  %4053 = fmul fast float %4045, %85
  %4054 = fadd fast float %4048, %4051
  %4055 = fadd fast float %4049, %4052
  %4056 = fadd fast float %4050, %4053
  %4057 = fmul fast float %134, %4046
  %4058 = fmul fast float %135, %4046
  %4059 = fmul fast float %136, %4046
  %4060 = fadd fast float %4054, %4057
  %4061 = fadd fast float %4055, %4058
  %4062 = fadd fast float %4056, %4059
  %4063 = call float @dx.op.dot3.f32(i32 55, float %4060, float %4061, float %4062, float %4060, float %4061, float %4062)  ; Dot3(ax,ay,az,bx,by,bz)
  %4064 = call float @dx.op.unary.f32(i32 25, float %4063)  ; Rsqrt(value)
  %4065 = fmul fast float %4060, %4064
  %4066 = fmul fast float %4061, %4064
  %4067 = fmul fast float %4062, %4064
  %4068 = and i32 %64, 1
  %4069 = icmp eq i32 %4068, 0
  br i1 %4069, label %4070, label %4631

; <label>:4070                                    ; preds = %4021
  %4071 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %4072 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %4073 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %4074 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %4075 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %4076 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %4077 = fadd fast float %4071, %170
  %4078 = fadd fast float %4072, %171
  %4079 = fadd fast float %4073, %172
  %4080 = fadd fast float %4074, %170
  %4081 = fadd fast float %4075, %171
  %4082 = fadd fast float %4076, %172
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = extractvalue %dx.types.CBufRet.f32 %4083, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4083, 2
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 2
  %4089 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4090 = fmul fast float %4084, %111
  %4091 = fmul fast float %4090, %4088
  %4092 = fmul fast float %4085, %112
  %4093 = fmul fast float %4092, %4089
  %4094 = fptoui float %4091 to i32
  %4095 = fptoui float %4093 to i32
  %4096 = fadd fast float %4084, -1.000000e+00
  %4097 = fadd fast float %4085, -1.000000e+00
  %4098 = fptoui float %4096 to i32
  %4099 = fptoui float %4097 to i32
  %4100 = call i32 @dx.op.binary.i32(i32 40, i32 %4094, i32 %4098)  ; UMin(a,b)
  %4101 = call i32 @dx.op.binary.i32(i32 40, i32 %4095, i32 %4099)  ; UMin(a,b)
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4105 = fmul fast float %4103, %99
  %4106 = fsub fast float %4105, %4104
  %4107 = fadd fast float %4086, -1.000000e+00
  %4108 = call float @dx.op.binary.f32(i32 36, float %4106, float %4107)  ; FMin(a,b)
  %4109 = fptoui float %4108 to i32
  %4110 = fptoui float %4084 to i32
  %4111 = fptoui float %4085 to i32
  %4112 = mul i32 %4109, %4111
  %4113 = add i32 %4112, %4101
  %4114 = mul i32 %4113, %4110
  %4115 = add i32 %4114, %4100
  %4116 = shl i32 %4115, 2
  %4117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.i32 %4117, 0
  %4119 = and i32 %4118, 1023
  %4120 = lshr i32 %4118, 10
  %4121 = icmp eq i32 %4119, 0
  br i1 %4121, label %4597, label %4122

; <label>:4122                                    ; preds = %4070
  %4123 = and i32 %4118, 1023
  br label %4124

; <label>:4124                                    ; preds = %4253, %4122
  %4125 = phi i32 [ %4203, %4253 ], [ 0, %4122 ]
  %4126 = phi float [ %4254, %4253 ], [ 0.000000e+00, %4122 ]
  %4127 = phi float [ %4255, %4253 ], [ %4039, %4122 ]
  %4128 = phi float [ %4256, %4253 ], [ %4037, %4122 ]
  %4129 = phi float [ %4257, %4253 ], [ 0.000000e+00, %4122 ]
  %4130 = phi float [ %4258, %4253 ], [ 0.000000e+00, %4122 ]
  %4131 = phi float [ %4259, %4253 ], [ %4030, %4122 ]
  %4132 = phi float [ %4260, %4253 ], [ %4031, %4122 ]
  %4133 = phi float [ %4261, %4253 ], [ %4032, %4122 ]
  %4134 = phi float [ %4262, %4253 ], [ %4027, %4122 ]
  %4135 = phi float [ %4263, %4253 ], [ %4028, %4122 ]
  %4136 = phi float [ %4264, %4253 ], [ %4029, %4122 ]
  %4137 = phi float [ %4265, %4253 ], [ %4065, %4122 ]
  %4138 = phi float [ %4266, %4253 ], [ %4066, %4122 ]
  %4139 = phi float [ %4267, %4253 ], [ %4067, %4122 ]
  %4140 = phi float [ %4268, %4253 ], [ %4035, %4122 ]
  %4141 = phi float [ %4269, %4253 ], [ %4034, %4122 ]
  %4142 = phi float [ %4270, %4253 ], [ 0.000000e+00, %4122 ]
  %4143 = phi float [ %4271, %4253 ], [ %4033, %4122 ]
  %4144 = phi float [ %4272, %4253 ], [ %4024, %4122 ]
  %4145 = phi float [ %4273, %4253 ], [ %4025, %4122 ]
  %4146 = phi float [ %4274, %4253 ], [ %4026, %4122 ]
  %4147 = add nuw nsw i32 %4125, %4120
  %4148 = shl i32 %4147, 2
  %4149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.i32 %4149, 0
  %4151 = shl i32 %4150, 8
  %4152 = or i32 %4151, 48
  %4153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = or i32 %4151, 64
  %4159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.i32 %4159, 0
  %4161 = extractvalue %dx.types.ResRet.i32 %4159, 1
  %4162 = or i32 %4151, 80
  %4163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 2
  %4165 = extractvalue %dx.types.ResRet.f32 %4163, 3
  %4166 = or i32 %4151, 96
  %4167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.ResRet.f32 %4167, 1
  %4170 = extractvalue %dx.types.ResRet.f32 %4167, 2
  %4171 = extractvalue %dx.types.ResRet.f32 %4167, 3
  %4172 = or i32 %4151, 112
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4175 = or i32 %4151, 128
  %4176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.ResRet.f32 %4176, 1
  %4179 = extractvalue %dx.types.ResRet.f32 %4176, 2
  %4180 = extractvalue %dx.types.ResRet.f32 %4176, 3
  %4181 = or i32 %4151, 144
  %4182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.ResRet.f32 %4182, 2
  %4186 = extractvalue %dx.types.ResRet.f32 %4182, 3
  %4187 = or i32 %4151, 160
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.ResRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.ResRet.f32 %4188, 2
  %4192 = extractvalue %dx.types.ResRet.f32 %4188, 3
  %4193 = or i32 %4151, 192
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = or i32 %4151, 208
  %4197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = or i32 %4151, 248
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = add nuw nsw i32 %4125, 1
  %4204 = bitcast float %4157 to i32
  %4205 = and i32 %4204, 512
  %4206 = icmp eq i32 %4205, 0
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4151, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.ResRet.f32 %4207, 3
  %4212 = call float @dx.op.dot4.f32(i32 56, float %4208, float %4209, float %4210, float %4211, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4213 = or i32 %4151, 16
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4217 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4218 = extractvalue %dx.types.ResRet.f32 %4214, 3
  %4219 = call float @dx.op.dot4.f32(i32 56, float %4215, float %4216, float %4217, float %4218, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4220 = or i32 %4151, 32
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.ResRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.ResRet.f32 %4221, 2
  %4225 = extractvalue %dx.types.ResRet.f32 %4221, 3
  %4226 = call float @dx.op.dot4.f32(i32 56, float %4222, float %4223, float %4224, float %4225, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4227 = call float @dx.op.unary.f32(i32 27, float %4212)  ; Round_ni(value)
  %4228 = call float @dx.op.unary.f32(i32 6, float %4227)  ; FAbs(value)
  %4229 = call float @dx.op.unary.f32(i32 27, float %4219)  ; Round_ni(value)
  %4230 = call float @dx.op.unary.f32(i32 6, float %4229)  ; FAbs(value)
  %4231 = call float @dx.op.unary.f32(i32 6, float %4226)  ; FAbs(value)
  %4232 = call float @dx.op.unary.f32(i32 27, float %4231)  ; Round_ni(value)
  %4233 = fadd fast float %4230, %4228
  %4234 = fadd fast float %4233, %4232
  %4235 = fcmp fast oeq float %4234, 0.000000e+00
  %4236 = call float @dx.op.dot4.f32(i32 56, float %4208, float %4209, float %4210, float %4211, float %4077, float %4078, float %4079, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4237 = call float @dx.op.dot4.f32(i32 56, float %4215, float %4216, float %4217, float %4218, float %4077, float %4078, float %4079, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4238 = call float @dx.op.dot4.f32(i32 56, float %4208, float %4209, float %4210, float %4211, float %4080, float %4081, float %4082, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4239 = call float @dx.op.dot4.f32(i32 56, float %4215, float %4216, float %4217, float %4218, float %4080, float %4081, float %4082, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4240 = fsub fast float %4236, %4212
  %4241 = fsub fast float %4238, %4212
  %4242 = fsub fast float %4237, %4219
  %4243 = fsub fast float %4239, %4219
  %4244 = call float @dx.op.dot3.f32(i32 55, float %4154, float %4155, float %4156, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4247 = fadd fast float %4246, %4244
  %4248 = call float @dx.op.unary.f32(i32 7, float %4247)  ; Saturate(value)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4245, 0
  %4250 = fcmp fast ogt float %4248, %4249
  %4251 = and i1 %4235, %4250
  %4252 = and i1 %4206, %4251
  br i1 %4252, label %4276, label %4253

; <label>:4253                                    ; preds = %4583, %4357, %4276, %4124
  %4254 = phi float [ %4126, %4276 ], [ %4360, %4357 ], [ %4360, %4583 ], [ %4126, %4124 ]
  %4255 = phi float [ %4127, %4276 ], [ %4127, %4357 ], [ %4559, %4583 ], [ %4127, %4124 ]
  %4256 = phi float [ %4128, %4276 ], [ %4128, %4357 ], [ %4557, %4583 ], [ %4128, %4124 ]
  %4257 = phi float [ %4129, %4276 ], [ %4129, %4357 ], [ %4484, %4583 ], [ %4129, %4124 ]
  %4258 = phi float [ %4130, %4276 ], [ %4130, %4357 ], [ %4482, %4583 ], [ %4130, %4124 ]
  %4259 = phi float [ %4131, %4276 ], [ %4131, %4357 ], [ %4527, %4583 ], [ %4131, %4124 ]
  %4260 = phi float [ %4132, %4276 ], [ %4132, %4357 ], [ %4528, %4583 ], [ %4132, %4124 ]
  %4261 = phi float [ %4133, %4276 ], [ %4133, %4357 ], [ %4529, %4583 ], [ %4133, %4124 ]
  %4262 = phi float [ %4134, %4276 ], [ %4134, %4357 ], [ %4593, %4583 ], [ %4134, %4124 ]
  %4263 = phi float [ %4135, %4276 ], [ %4135, %4357 ], [ %4594, %4583 ], [ %4135, %4124 ]
  %4264 = phi float [ %4136, %4276 ], [ %4136, %4357 ], [ %4595, %4583 ], [ %4136, %4124 ]
  %4265 = phi float [ %4137, %4276 ], [ %4137, %4357 ], [ %4463, %4583 ], [ %4137, %4124 ]
  %4266 = phi float [ %4138, %4276 ], [ %4138, %4357 ], [ %4464, %4583 ], [ %4138, %4124 ]
  %4267 = phi float [ %4139, %4276 ], [ %4139, %4357 ], [ %4465, %4583 ], [ %4139, %4124 ]
  %4268 = phi float [ %4140, %4276 ], [ %4140, %4357 ], [ %4537, %4583 ], [ %4140, %4124 ]
  %4269 = phi float [ %4141, %4276 ], [ %4141, %4357 ], [ %4534, %4583 ], [ %4141, %4124 ]
  %4270 = phi float [ %4142, %4276 ], [ %4142, %4357 ], [ %4531, %4583 ], [ %4142, %4124 ]
  %4271 = phi float [ %4143, %4276 ], [ %4143, %4357 ], [ %4480, %4583 ], [ %4143, %4124 ]
  %4272 = phi float [ %4144, %4276 ], [ %4144, %4357 ], [ %4475, %4583 ], [ %4144, %4124 ]
  %4273 = phi float [ %4145, %4276 ], [ %4145, %4357 ], [ %4476, %4583 ], [ %4145, %4124 ]
  %4274 = phi float [ %4146, %4276 ], [ %4146, %4357 ], [ %4477, %4583 ], [ %4146, %4124 ]
  %4275 = icmp eq i32 %4203, %4123
  br i1 %4275, label %4596, label %4124

; <label>:4276                                    ; preds = %4124
  %4277 = extractvalue %dx.types.ResRet.f32 %4173, 3
  %4278 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4279 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4280 = extractvalue %dx.types.ResRet.f32 %4163, 1
  %4281 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4282 = extractvalue %dx.types.ResRet.i32 %4159, 3
  %4283 = extractvalue %dx.types.ResRet.i32 %4159, 2
  %4284 = add i32 %4282, 0
  %4285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4284, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4287 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4285, %dx.types.Handle %4286, float %4212, float %4219, float undef, float undef, i32 0, i32 0, i32 undef, float %4240, float %4242, float undef, float %4241, float %4243, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 0
  %4289 = fmul fast float %4288, %4281
  %4290 = fadd fast float %4289, %4280
  %4291 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4292 = fmul fast float %4212, %4168
  %4293 = call float @dx.op.tertiary.f32(i32 46, float %4169, float %4219, float %4292)  ; FMad(a,b,c)
  %4294 = fadd fast float %4293, %4279
  %4295 = fmul fast float %4212, %4170
  %4296 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4219, float %4295)  ; FMad(a,b,c)
  %4297 = fadd fast float %4296, %4278
  %4298 = fmul fast float %4240, %4168
  %4299 = call float @dx.op.tertiary.f32(i32 46, float %4169, float %4242, float %4298)  ; FMad(a,b,c)
  %4300 = fmul fast float %4240, %4170
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4242, float %4300)  ; FMad(a,b,c)
  %4302 = fmul fast float %4241, %4168
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4169, float %4243, float %4302)  ; FMad(a,b,c)
  %4304 = fmul fast float %4241, %4170
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4171, float %4243, float %4304)  ; FMad(a,b,c)
  %4306 = add i32 %4283, 0
  %4307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4306, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4308 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4307, %dx.types.Handle %4286, float %4294, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float %4299, float %4301, float undef, float %4303, float %4305, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4309 = extractvalue %dx.types.ResRet.f32 %4308, 0
  %4310 = and i32 %4204, 1024
  %4311 = icmp ne i32 %4310, 0
  %4312 = fcmp fast ogt float %4309, 0x3FE0101020000000
  %4313 = uitofp i1 %4312 to float
  %4314 = select i1 %4311, float %4313, float %4309
  %4315 = and i32 %4204, 8192
  %4316 = icmp ne i32 %4315, 0
  %4317 = select i1 %4316, float %4277, float 1.000000e+00
  %4318 = fmul fast float %4212, 2.000000e+00
  %4319 = fadd fast float %4318, -1.000000e+00
  %4320 = call float @dx.op.unary.f32(i32 6, float %4319)  ; FAbs(value)
  %4321 = fmul fast float %4320, %4201
  %4322 = fsub fast float %4321, %4201
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4324 = fmul fast float %4219, 2.000000e+00
  %4325 = fadd fast float %4324, -1.000000e+00
  %4326 = call float @dx.op.unary.f32(i32 6, float %4325)  ; FAbs(value)
  %4327 = fmul fast float %4326, %4202
  %4328 = fsub fast float %4327, %4202
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fmul fast float %4231, %4164
  %4331 = fsub fast float %4330, %4164
  %4332 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4333 = fmul fast float %4291, %4317
  %4334 = fmul fast float %4333, %4288
  %4335 = fmul fast float %4334, %4323
  %4336 = fmul fast float %4335, %4314
  %4337 = fmul fast float %4336, %4329
  %4338 = fmul fast float %4337, %4332
  %4339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4339, 1
  %4341 = extractvalue %dx.types.CBufRet.f32 %4339, 0
  %4342 = fsub fast float %4248, %4341
  %4343 = fmul fast float %4342, %4340
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = fmul fast float %4338, %4165
  %4346 = fadd fast float %4338, %4165
  %4347 = fmul fast float %4346, %4174
  %4348 = fsub fast float %4347, %4174
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = and i32 %4204, 128
  %4351 = icmp ne i32 %4350, 0
  %4352 = select i1 %4351, float %4349, float %4345
  %4353 = fmul fast float %4352, %4344
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 0
  %4356 = fcmp fast ugt float %4353, %4355
  br i1 %4356, label %4357, label %4253

; <label>:4357                                    ; preds = %4276
  %4358 = select i1 %4316, float %4353, float 0.000000e+00
  %4359 = fadd fast float %4358, %4126
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  br i1 %4316, label %4253, label %4361

; <label>:4361                                    ; preds = %4357
  %4362 = and i32 %4204, 4
  %4363 = and i32 %4204, 8
  %4364 = add i32 %4160, 0
  %4365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4364, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4367 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4365, %dx.types.Handle %4366, float %4294, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float %4299, float %4301, float undef, float %4303, float %4305, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = extractvalue %dx.types.ResRet.f32 %4367, 1
  %4370 = extractvalue %dx.types.ResRet.f32 %4367, 2
  %4371 = extractvalue %dx.types.ResRet.f32 %4367, 3
  %4372 = bitcast float %4186 to i32
  %4373 = and i32 %4372, 255
  %4374 = uitofp i32 %4373 to float
  %4375 = lshr i32 %4372, 8
  %4376 = and i32 %4375, 255
  %4377 = uitofp i32 %4376 to float
  %4378 = fmul fast float %4371, %4374
  %4379 = fadd fast float %4378, %4377
  %4380 = fmul fast float %4379, 0x3F70101000000000
  %4381 = add i32 %4161, 0
  %4382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4381, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4383 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4382, %dx.types.Handle %4366, float %4294, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float %4299, float %4301, float undef, float %4303, float %4305, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4384 = extractvalue %dx.types.ResRet.f32 %4383, 0
  %4385 = extractvalue %dx.types.ResRet.f32 %4383, 1
  %4386 = extractvalue %dx.types.ResRet.f32 %4383, 2
  %4387 = extractvalue %dx.types.ResRet.f32 %4383, 3
  %4388 = bitcast float %4180 to i32
  %4389 = and i32 %4388, 255
  %4390 = uitofp i32 %4389 to float
  %4391 = lshr i32 %4388, 8
  %4392 = and i32 %4391, 255
  %4393 = uitofp i32 %4392 to float
  %4394 = lshr i32 %4388, 16
  %4395 = and i32 %4394, 255
  %4396 = uitofp i32 %4395 to float
  %4397 = fmul fast float %4396, 0x3F70101000000000
  %4398 = fmul fast float %4384, %4390
  %4399 = fadd fast float %4398, %4393
  %4400 = fmul fast float %4399, 0x3F70101000000000
  %4401 = fadd fast float %4385, -5.000000e-01
  %4402 = fadd fast float %4387, -5.000000e-01
  %4403 = fmul fast float %4401, %4397
  %4404 = fmul fast float %4402, %4397
  %4405 = fadd fast float %4403, 5.000000e-01
  %4406 = fadd fast float %4404, 5.000000e-01
  %4407 = fmul fast float %4368, %4189
  %4408 = fmul fast float %4369, %4190
  %4409 = fmul fast float %4370, %4191
  %4410 = fmul fast float %4405, 2.000000e+00
  %4411 = fadd fast float %4410, -1.000000e+00
  %4412 = fmul fast float %4406, 2.000000e+00
  %4413 = fadd fast float %4412, -1.000000e+00
  %4414 = fadd fast float %4411, %4413
  %4415 = fmul fast float %4414, 5.000000e-01
  %4416 = fsub fast float %4411, %4413
  %4417 = fmul fast float %4416, 5.000000e-01
  %4418 = call float @dx.op.unary.f32(i32 6, float %4415)  ; FAbs(value)
  %4419 = fsub fast float 1.000000e+00, %4418
  %4420 = call float @dx.op.unary.f32(i32 6, float %4417)  ; FAbs(value)
  %4421 = fsub fast float %4419, %4420
  %4422 = call float @dx.op.dot3.f32(i32 55, float %4415, float %4417, float %4421, float %4415, float %4417, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %4423 = call float @dx.op.unary.f32(i32 25, float %4422)  ; Rsqrt(value)
  %4424 = fmul fast float %4415, %4423
  %4425 = fmul fast float %4417, %4423
  %4426 = fmul fast float %4423, %4421
  %4427 = fmul fast float %4426, %4154
  %4428 = fmul fast float %4426, %4155
  %4429 = fmul fast float %4426, %4156
  %4430 = fmul fast float %4424, %4177
  %4431 = fmul fast float %4424, %4178
  %4432 = fmul fast float %4424, %4179
  %4433 = fadd fast float %4430, %4427
  %4434 = fadd fast float %4431, %4428
  %4435 = fadd fast float %4432, %4429
  %4436 = fmul fast float %4425, %4183
  %4437 = fmul fast float %4425, %4184
  %4438 = fmul fast float %4425, %4185
  %4439 = fadd fast float %4433, %4436
  %4440 = fadd fast float %4434, %4437
  %4441 = fadd fast float %4435, %4438
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4439, float %4440, float %4441, float %4439, float %4440, float %4441)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.unary.f32(i32 25, float %4442)  ; Rsqrt(value)
  %4444 = fmul fast float %4439, %4443
  %4445 = fmul fast float %4440, %4443
  %4446 = fmul fast float %4441, %4443
  %4447 = icmp ne i32 %4363, 0
  %4448 = select i1 %4447, float 1.000000e+00, float 0.000000e+00
  %4449 = fmul fast float %4353, %4448
  %4450 = and i32 %4204, 1
  %4451 = icmp eq i32 %4450, 0
  br i1 %4451, label %4452, label %4456

; <label>:4452                                    ; preds = %4361
  %4453 = fsub fast float %4444, %4137
  %4454 = fsub fast float %4445, %4138
  %4455 = fsub fast float %4446, %4139
  br label %4456

; <label>:4456                                    ; preds = %4452, %4361
  %4457 = phi float [ %4453, %4452 ], [ %4444, %4361 ]
  %4458 = phi float [ %4454, %4452 ], [ %4445, %4361 ]
  %4459 = phi float [ %4455, %4452 ], [ %4446, %4361 ]
  %4460 = fmul float %4459, %4449
  %4461 = fmul float %4458, %4449
  %4462 = fmul float %4457, %4449
  %4463 = fadd fast float %4462, %4137
  %4464 = fadd fast float %4461, %4138
  %4465 = fadd fast float %4460, %4139
  %4466 = icmp ne i32 %4362, 0
  %4467 = select i1 %4466, float 1.000000e+00, float 0.000000e+00
  %4468 = fmul fast float %4353, %4467
  %4469 = fsub fast float %4407, %4144
  %4470 = fsub fast float %4408, %4145
  %4471 = fsub fast float %4409, %4146
  %4472 = fmul fast float %4469, %4468
  %4473 = fmul fast float %4470, %4468
  %4474 = fmul fast float %4471, %4468
  %4475 = fadd fast float %4472, %4144
  %4476 = fadd fast float %4473, %4145
  %4477 = fadd fast float %4474, %4146
  %4478 = fsub fast float %4380, %4143
  %4479 = fmul fast float %4478, %4468
  %4480 = fadd fast float %4479, %4143
  %4481 = fmul fast float %4468, %4130
  %4482 = fsub fast float %4130, %4481
  %4483 = fmul fast float %4468, %4129
  %4484 = fsub fast float %4129, %4483
  %4485 = bitcast float %4198 to i32
  %4486 = lshr i32 %4485, 16
  %4487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4486)  ; LegacyF16ToF32(value)
  %4488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4489 = extractvalue %dx.types.ResRet.i32 %4488, 0
  %4490 = and i32 %4489, 1
  %4491 = icmp eq i32 %4490, 0
  br i1 %4491, label %4492, label %4517

; <label>:4492                                    ; preds = %4456
  %4493 = fadd fast float %4380, 0xBFB99999A0000000
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fmul fast float %4494, 0x3FF1C71C80000000
  %4496 = fsub fast float 1.000000e+00, %4495
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fmul fast float %4497, %4407
  %4499 = fmul fast float %4497, %4408
  %4500 = fmul fast float %4497, %4409
  %4501 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4502 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4503 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4504 = call float @dx.op.binary.f32(i32 35, float %4502, float %4503)  ; FMax(a,b)
  %4505 = call float @dx.op.binary.f32(i32 35, float %4501, float %4504)  ; FMax(a,b)
  %4506 = fcmp fast ogt float %4505, 0.000000e+00
  %4507 = bitcast float %4505 to i32
  %4508 = sub nsw i32 2129859010, %4507
  %4509 = bitcast i32 %4508 to float
  %4510 = select i1 %4506, float %4509, float 0.000000e+00
  %4511 = fmul fast float %4501, %4487
  %4512 = fmul fast float %4502, %4487
  %4513 = fmul fast float %4503, %4487
  %4514 = fmul fast float %4511, %4510
  %4515 = fmul fast float %4512, %4510
  %4516 = fmul fast float %4513, %4510
  br label %4517

; <label>:4517                                    ; preds = %4492, %4456
  %4518 = phi float [ %4487, %4456 ], [ %4514, %4492 ]
  %4519 = phi float [ %4487, %4456 ], [ %4515, %4492 ]
  %4520 = phi float [ %4487, %4456 ], [ %4516, %4492 ]
  %4521 = fsub fast float %4518, %4131
  %4522 = fsub fast float %4519, %4132
  %4523 = fsub fast float %4520, %4133
  %4524 = fmul fast float %4521, %4468
  %4525 = fmul fast float %4522, %4468
  %4526 = fmul fast float %4523, %4468
  %4527 = fadd fast float %4524, %4131
  %4528 = fadd fast float %4525, %4132
  %4529 = fadd fast float %4526, %4133
  %4530 = fadd fast float %4353, %4142
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = fsub fast float %4400, %4141
  %4533 = fmul fast float %4532, %4449
  %4534 = fadd fast float %4533, %4141
  %4535 = fsub fast float %4386, %4140
  %4536 = fmul fast float %4535, %4449
  %4537 = fadd fast float %4536, %4140
  %4538 = call float @dx.op.dot3.f32(i32 55, float %4407, float %4408, float %4409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.CBufRet.f32 %4539, 1
  %4542 = fmul fast float %4541, %4538
  %4543 = fadd fast float %4542, %4540
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = bitcast float %4192 to i32
  %4546 = and i32 %4545, 65535
  %4547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4546)  ; LegacyF16ToF32(value)
  %4548 = lshr i32 %4545, 16
  %4549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4548)  ; LegacyF16ToF32(value)
  %4550 = fcmp fast oge float %4547, 0.000000e+00
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = select i1 %4550, float %4547, float %4552
  %4554 = fadd fast float %4553, %4549
  %4555 = fsub fast float %4544, %4128
  %4556 = fmul fast float %4555, %4353
  %4557 = fadd fast float %4556, %4128
  %4558 = fmul fast float %4554, %4353
  %4559 = call float @dx.op.binary.f32(i32 35, float %4127, float %4558)  ; FMax(a,b)
  %4560 = and i32 %4204, 16
  %4561 = icmp eq i32 %4560, 0
  br i1 %4561, label %4583, label %4562

; <label>:4562                                    ; preds = %4517
  %4563 = add i32 %4195, 0
  %4564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4563, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4565 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4564, %dx.types.Handle %4366, float %4294, float %4297, float undef, float undef, i32 0, i32 0, i32 undef, float %4299, float %4301, float undef, float %4303, float %4305, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4569 = and i32 %4485, 65535
  %4570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4569)  ; LegacyF16ToF32(value)
  %4571 = fmul fast float %4566, %4189
  %4572 = fmul fast float %4567, %4190
  %4573 = fmul fast float %4568, %4191
  %4574 = and i32 %4204, 16384
  %4575 = icmp ne i32 %4574, 0
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 0
  %4578 = select i1 %4575, float %4577, float 1.000000e+00
  %4579 = fmul fast float %4578, %4570
  %4580 = fmul fast float %4571, %4579
  %4581 = fmul fast float %4572, %4579
  %4582 = fmul fast float %4573, %4579
  br label %4583

; <label>:4583                                    ; preds = %4562, %4517
  %4584 = phi float [ %4580, %4562 ], [ 0.000000e+00, %4517 ]
  %4585 = phi float [ %4581, %4562 ], [ 0.000000e+00, %4517 ]
  %4586 = phi float [ %4582, %4562 ], [ 0.000000e+00, %4517 ]
  %4587 = fsub fast float %4584, %4134
  %4588 = fsub fast float %4585, %4135
  %4589 = fsub fast float %4586, %4136
  %4590 = fmul fast float %4587, %4353
  %4591 = fmul fast float %4588, %4353
  %4592 = fmul fast float %4589, %4353
  %4593 = fadd fast float %4590, %4134
  %4594 = fadd fast float %4591, %4135
  %4595 = fadd fast float %4592, %4136
  br label %4253

; <label>:4596                                    ; preds = %4253
  br label %4597

; <label>:4597                                    ; preds = %4596, %4070
  %4598 = phi float [ 0.000000e+00, %4070 ], [ %4254, %4596 ]
  %4599 = phi float [ %4039, %4070 ], [ %4255, %4596 ]
  %4600 = phi float [ %4037, %4070 ], [ %4256, %4596 ]
  %4601 = phi float [ 0.000000e+00, %4070 ], [ %4257, %4596 ]
  %4602 = phi float [ 0.000000e+00, %4070 ], [ %4258, %4596 ]
  %4603 = phi float [ %4030, %4070 ], [ %4259, %4596 ]
  %4604 = phi float [ %4031, %4070 ], [ %4260, %4596 ]
  %4605 = phi float [ %4032, %4070 ], [ %4261, %4596 ]
  %4606 = phi float [ %4027, %4070 ], [ %4262, %4596 ]
  %4607 = phi float [ %4028, %4070 ], [ %4263, %4596 ]
  %4608 = phi float [ %4029, %4070 ], [ %4264, %4596 ]
  %4609 = phi float [ %4065, %4070 ], [ %4265, %4596 ]
  %4610 = phi float [ %4066, %4070 ], [ %4266, %4596 ]
  %4611 = phi float [ %4067, %4070 ], [ %4267, %4596 ]
  %4612 = phi float [ %4035, %4070 ], [ %4268, %4596 ]
  %4613 = phi float [ %4034, %4070 ], [ %4269, %4596 ]
  %4614 = phi float [ 0.000000e+00, %4070 ], [ %4270, %4596 ]
  %4615 = phi float [ %4033, %4070 ], [ %4271, %4596 ]
  %4616 = phi float [ %4024, %4070 ], [ %4272, %4596 ]
  %4617 = phi float [ %4025, %4070 ], [ %4273, %4596 ]
  %4618 = phi float [ %4026, %4070 ], [ %4274, %4596 ]
  %4619 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4620 = call float @dx.op.unary.f32(i32 25, float %4619)  ; Rsqrt(value)
  %4621 = fmul fast float %4620, %4609
  %4622 = fmul fast float %4620, %4610
  %4623 = fmul fast float %4620, %4611
  %4624 = fadd fast float %4614, %1198
  %4625 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float %4621, float %4622, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call float @dx.op.unary.f32(i32 25, float %4626)  ; Rsqrt(value)
  %4628 = fmul fast float %4627, %4621
  %4629 = fmul fast float %4627, %4622
  %4630 = fmul fast float %4627, %4623
  br label %4631

; <label>:4631                                    ; preds = %4597, %4021
  %4632 = phi float [ %4606, %4597 ], [ %4027, %4021 ]
  %4633 = phi float [ %4607, %4597 ], [ %4028, %4021 ]
  %4634 = phi float [ %4608, %4597 ], [ %4029, %4021 ]
  %4635 = phi float [ %4628, %4597 ], [ %4065, %4021 ]
  %4636 = phi float [ %4629, %4597 ], [ %4066, %4021 ]
  %4637 = phi float [ %4630, %4597 ], [ %4067, %4021 ]
  %4638 = phi float [ %4616, %4597 ], [ %4024, %4021 ]
  %4639 = phi float [ %4617, %4597 ], [ %4025, %4021 ]
  %4640 = phi float [ %4618, %4597 ], [ %4026, %4021 ]
  %4641 = phi float [ %4603, %4597 ], [ %4030, %4021 ]
  %4642 = phi float [ %4604, %4597 ], [ %4031, %4021 ]
  %4643 = phi float [ %4605, %4597 ], [ %4032, %4021 ]
  %4644 = phi float [ %4615, %4597 ], [ %4033, %4021 ]
  %4645 = phi float [ %4625, %4597 ], [ %1198, %4021 ]
  %4646 = phi float [ %4613, %4597 ], [ %4034, %4021 ]
  %4647 = phi float [ %4612, %4597 ], [ %4035, %4021 ]
  %4648 = phi float [ %4602, %4597 ], [ 0.000000e+00, %4021 ]
  %4649 = phi float [ %4601, %4597 ], [ 0.000000e+00, %4021 ]
  %4650 = phi float [ %4598, %4597 ], [ 0.000000e+00, %4021 ]
  %4651 = phi float [ %4599, %4597 ], [ %4039, %4021 ]
  %4652 = phi float [ %4600, %4597 ], [ %4037, %4021 ]
  %4653 = fadd fast float %4644, 0xBFB99999A0000000
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = fmul fast float %4654, 0x3FF1C71C80000000
  %4656 = call float @dx.op.binary.f32(i32 36, float %4644, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4657 = fsub fast float 1.000000e+00, %4655
  %4658 = call float @dx.op.unary.f32(i32 7, float %4657)  ; Saturate(value)
  %4659 = fmul fast float %4658, %4638
  %4660 = fmul fast float %4658, %4639
  %4661 = fmul fast float %4658, %4640
  %4662 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = fmul fast float %4655, %4638
  %4666 = fmul fast float %4655, %4639
  %4667 = fmul fast float %4655, %4640
  %4668 = fadd fast float %4665, %4656
  %4669 = fadd fast float %4666, %4656
  %4670 = fadd fast float %4667, %4656
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4673 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4674 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4676 = extractvalue %dx.types.ResRet.i32 %4675, 0
  %4677 = and i32 %4676, 1
  %4678 = icmp eq i32 %4677, 0
  br i1 %4678, label %4693, label %4679

; <label>:4679                                    ; preds = %4631
  %4680 = call float @dx.op.binary.f32(i32 35, float %4663, float %4664)  ; FMax(a,b)
  %4681 = call float @dx.op.binary.f32(i32 35, float %4662, float %4680)  ; FMax(a,b)
  %4682 = fcmp fast ogt float %4681, 0.000000e+00
  %4683 = bitcast float %4681 to i32
  %4684 = sub nsw i32 2129859010, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = select i1 %4682, float %4685, float 0.000000e+00
  %4687 = fmul fast float %4662, %4641
  %4688 = fmul fast float %4663, %4642
  %4689 = fmul fast float %4664, %4643
  %4690 = fmul fast float %4687, %4686
  %4691 = fmul fast float %4688, %4686
  %4692 = fmul fast float %4689, %4686
  br label %4693

; <label>:4693                                    ; preds = %4679, %4631
  %4694 = phi float [ %4690, %4679 ], [ %4641, %4631 ]
  %4695 = phi float [ %4691, %4679 ], [ %4642, %4631 ]
  %4696 = phi float [ %4692, %4679 ], [ %4643, %4631 ]
  %4697 = fadd fast float %4662, 0xBFD51EB860000000
  %4698 = fadd fast float %4663, 0xBFD51EB860000000
  %4699 = fadd fast float %4664, 0xBFD51EB860000000
  %4700 = fmul fast float %4697, %4697
  %4701 = fmul fast float %4698, %4698
  %4702 = fmul fast float %4699, %4699
  %4703 = fmul fast float %4700, %4700
  %4704 = fmul fast float %4703, 1.000000e+02
  %4705 = fmul fast float %4701, %4701
  %4706 = fmul fast float %4705, 1.000000e+02
  %4707 = fmul fast float %4702, %4702
  %4708 = fmul fast float %4707, 1.000000e+02
  %4709 = fadd fast float %4704, 3.500000e+00
  %4710 = fadd fast float %4706, 3.500000e+00
  %4711 = fadd fast float %4708, 3.500000e+00
  %4712 = call float @dx.op.binary.f32(i32 35, float %4694, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4713 = call float @dx.op.binary.f32(i32 35, float %4695, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4714 = call float @dx.op.binary.f32(i32 35, float %4696, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4715 = fdiv fast float %4709, %4712
  %4716 = fdiv fast float %4710, %4713
  %4717 = fdiv fast float %4711, %4714
  %4718 = fmul fast float %4036, 0xBFF7154760000000
  %4719 = fmul fast float %4718, %4715
  %4720 = call float @dx.op.unary.f32(i32 21, float %4719)  ; Exp(value)
  %4721 = fmul fast float %4720, 2.500000e-01
  %4722 = fmul fast float %4036, 0xBFDEC709E0000000
  %4723 = fmul fast float %4722, %4715
  %4724 = call float @dx.op.unary.f32(i32 21, float %4723)  ; Exp(value)
  %4725 = fmul fast float %4724, 7.500000e-01
  %4726 = fmul fast float %4718, %4716
  %4727 = call float @dx.op.unary.f32(i32 21, float %4726)  ; Exp(value)
  %4728 = fmul fast float %4727, 2.500000e-01
  %4729 = fmul fast float %4722, %4716
  %4730 = call float @dx.op.unary.f32(i32 21, float %4729)  ; Exp(value)
  %4731 = fmul fast float %4730, 7.500000e-01
  %4732 = fmul fast float %4718, %4717
  %4733 = call float @dx.op.unary.f32(i32 21, float %4732)  ; Exp(value)
  %4734 = fmul fast float %4733, 2.500000e-01
  %4735 = fmul fast float %4722, %4717
  %4736 = call float @dx.op.unary.f32(i32 21, float %4735)  ; Exp(value)
  %4737 = fmul fast float %4736, 7.500000e-01
  %4738 = fadd fast float %4721, %4725
  %4739 = fadd fast float %4728, %4731
  %4740 = fadd fast float %4734, %4737
  %4741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.i32 %4741, 3
  %4743 = and i32 %4742, 8
  %4744 = icmp ne i32 %4743, 0
  %4745 = call float @dx.op.binary.f32(i32 35, float %4662, float %4638)  ; FMax(a,b)
  %4746 = call float @dx.op.binary.f32(i32 35, float %4663, float %4638)  ; FMax(a,b)
  %4747 = call float @dx.op.binary.f32(i32 35, float %4664, float %4638)  ; FMax(a,b)
  %4748 = call float @dx.op.dot3.f32(i32 55, float %4662, float %4663, float %4664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4749 = select i1 %232, float %4638, float %4662
  %4750 = select i1 %232, float %4748, float %4663
  %4751 = select i1 %232, float 1.000000e+00, float %4664
  %4752 = select i1 %4744, float %4745, float %4749
  %4753 = select i1 %4744, float %4746, float %4750
  %4754 = select i1 %4744, float %4747, float %4751
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 0
  %4757 = extractvalue %dx.types.CBufRet.f32 %4755, 1
  %4758 = extractvalue %dx.types.CBufRet.f32 %4755, 2
  %4759 = fadd fast float %4756, %170
  %4760 = fadd fast float %4757, %171
  %4761 = fadd fast float %4758, %172
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4765 = fsub fast float %4759, %4763
  %4766 = fsub fast float %4760, %4764
  %4767 = fmul fast float %4765, %4765
  %4768 = fmul fast float %4766, %4766
  %4769 = fadd fast float %4767, %4768
  %4770 = call float @dx.op.unary.f32(i32 24, float %4769)  ; Sqrt(value)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4762, 2
  %4772 = fcmp fast olt float %4770, %4771
  br i1 %4772, label %4773, label %4840

; <label>:4773                                    ; preds = %4693
  %4774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4774, 0
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.CBufRet.f32 %4774, 1
  %4781 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4782 = extractvalue %dx.types.CBufRet.f32 %4778, 1
  %4783 = extractvalue %dx.types.CBufRet.f32 %4774, 3
  %4784 = extractvalue %dx.types.CBufRet.f32 %4776, 3
  %4785 = extractvalue %dx.types.CBufRet.f32 %4778, 3
  %4786 = fadd fast float %4783, %4759
  %4787 = fadd fast float %4784, %4760
  %4788 = fadd fast float %4785, %4761
  %4789 = fmul fast float %4786, %4775
  %4790 = call float @dx.op.tertiary.f32(i32 46, float %4787, float %4777, float %4789)  ; FMad(a,b,c)
  %4791 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %4779, float %4790)  ; FMad(a,b,c)
  %4792 = fmul fast float %4786, %4780
  %4793 = call float @dx.op.tertiary.f32(i32 46, float %4787, float %4781, float %4792)  ; FMad(a,b,c)
  %4794 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %4782, float %4793)  ; FMad(a,b,c)
  %4795 = fsub fast float %4791, %4783
  %4796 = fsub fast float %4794, %4784
  %4797 = fsub fast float %4795, %4763
  %4798 = fadd fast float %4797, %4771
  %4799 = fsub fast float %4796, %4764
  %4800 = fadd fast float %4799, %4771
  %4801 = extractvalue %dx.types.CBufRet.f32 %4762, 3
  %4802 = fmul fast float %4798, %4801
  %4803 = fmul fast float %4800, %4801
  %4804 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4805 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4806 = fsub fast float 1.000000e+00, %4804
  %4807 = fsub fast float 1.000000e+00, %4805
  %4808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4806, float %4807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 0
  %4810 = fcmp fast ugt float %4809, 0.000000e+00
  br i1 %4810, label %4811, label %5114

; <label>:4811                                    ; preds = %4773
  %4812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.f32 %4812, 2
  %4814 = fmul fast float %4813, %4809
  %4815 = extractvalue %dx.types.CBufRet.f32 %4812, 3
  %4816 = fadd fast float %4815, %4814
  %4817 = extractvalue %dx.types.CBufRet.f32 %4778, 2
  %4818 = fadd fast float %4816, %4785
  %4819 = fmul fast float %4791, %4779
  %4820 = call float @dx.op.tertiary.f32(i32 46, float %4794, float %4782, float %4819)  ; FMad(a,b,c)
  %4821 = call float @dx.op.tertiary.f32(i32 46, float %4818, float %4817, float %4820)  ; FMad(a,b,c)
  %4822 = fsub fast float %4821, %4785
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 2
  %4825 = fsub fast float %4822, %4824
  %4826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4806, float %4807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4827 = extractvalue %dx.types.ResRet.f32 %4826, 0
  %4828 = extractvalue %dx.types.ResRet.f32 %4826, 1
  %4829 = extractvalue %dx.types.ResRet.f32 %4826, 2
  %4830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4806, float %4807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = extractvalue %dx.types.ResRet.f32 %4830, 1
  %4833 = extractvalue %dx.types.ResRet.f32 %4830, 2
  %4834 = fadd fast float %4831, %4827
  %4835 = fmul fast float %4834, 0x3F847AE140000000
  %4836 = fadd fast float %4832, %4828
  %4837 = fmul fast float %4836, 0x3F847AE140000000
  %4838 = fadd fast float %4833, %4829
  %4839 = fmul fast float %4838, 0x3F847AE140000000
  br label %5114

; <label>:4840                                    ; preds = %4693
  %4841 = and i32 %208, 1
  %4842 = icmp eq i32 %4841, 0
  br i1 %4842, label %5114, label %4843

; <label>:4843                                    ; preds = %4840
  %4844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.f32 %4844, 0
  %4846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4847 = extractvalue %dx.types.CBufRet.f32 %4846, 0
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = extractvalue %dx.types.CBufRet.f32 %4844, 1
  %4851 = extractvalue %dx.types.CBufRet.f32 %4846, 1
  %4852 = extractvalue %dx.types.CBufRet.f32 %4848, 1
  %4853 = extractvalue %dx.types.CBufRet.f32 %4844, 3
  %4854 = extractvalue %dx.types.CBufRet.f32 %4846, 3
  %4855 = extractvalue %dx.types.CBufRet.f32 %4848, 3
  %4856 = fadd fast float %4853, %4759
  %4857 = fadd fast float %4854, %4760
  %4858 = fadd fast float %4855, %4761
  %4859 = fmul fast float %4856, %4845
  %4860 = call float @dx.op.tertiary.f32(i32 46, float %4857, float %4847, float %4859)  ; FMad(a,b,c)
  %4861 = call float @dx.op.tertiary.f32(i32 46, float %4858, float %4849, float %4860)  ; FMad(a,b,c)
  %4862 = fmul fast float %4856, %4850
  %4863 = call float @dx.op.tertiary.f32(i32 46, float %4857, float %4851, float %4862)  ; FMad(a,b,c)
  %4864 = call float @dx.op.tertiary.f32(i32 46, float %4858, float %4852, float %4863)  ; FMad(a,b,c)
  %4865 = fsub fast float %4861, %4853
  %4866 = fsub fast float %4864, %4854
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 1
  %4870 = extractvalue %dx.types.CBufRet.f32 %4867, 2
  %4871 = extractvalue %dx.types.CBufRet.f32 %4867, 3
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.i32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.i32 %4874, 1
  %4877 = udiv i32 %4876, %4875
  %4878 = fsub fast float %4865, %4868
  %4879 = fsub fast float %4866, %4869
  %4880 = call float @dx.op.binary.f32(i32 35, float %4878, float 0.000000e+00)  ; FMax(a,b)
  %4881 = call float @dx.op.binary.f32(i32 35, float %4879, float 0.000000e+00)  ; FMax(a,b)
  %4882 = call float @dx.op.binary.f32(i32 36, float %4880, float %4870)  ; FMin(a,b)
  %4883 = call float @dx.op.binary.f32(i32 36, float %4881, float %4871)  ; FMin(a,b)
  %4884 = add i32 %4875, -1
  %4885 = add i32 %4877, -1
  %4886 = fmul fast float %4882, %4873
  %4887 = fmul fast float %4883, %4873
  %4888 = fptoui float %4886 to i32
  %4889 = fptoui float %4887 to i32
  %4890 = call i32 @dx.op.binary.i32(i32 40, i32 %4888, i32 %4884)  ; UMin(a,b)
  %4891 = call i32 @dx.op.binary.i32(i32 40, i32 %4889, i32 %4885)  ; UMin(a,b)
  %4892 = mul i32 %4891, %4875
  %4893 = add i32 %4892, %4890
  %4894 = shl i32 %4893, 2
  %4895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4894, i32 undef)  ; BufferLoad(srv,index,wot)
  %4896 = extractvalue %dx.types.ResRet.i32 %4895, 0
  %4897 = icmp eq i32 %4896, -1
  br i1 %4897, label %5114, label %4898

; <label>:4898                                    ; preds = %4843
  %4899 = mul i32 %4896, 148
  %4900 = add i32 %4899, 4
  %4901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4900, i32 undef)  ; BufferLoad(srv,index,wot)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = add i32 %4899, 8
  %4904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4903, i32 undef)  ; BufferLoad(srv,index,wot)
  %4905 = extractvalue %dx.types.ResRet.f32 %4904, 0
  %4906 = add i32 %4899, 36
  %4907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4906, i32 undef)  ; BufferLoad(srv,index,wot)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = add i32 %4899, 60
  %4910 = add i32 %4899, 92
  %4911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4910, i32 undef)  ; BufferLoad(srv,index,wot)
  %4912 = extractvalue %dx.types.ResRet.i32 %4911, 0
  %4913 = add i32 %4899, 116
  %4914 = fsub fast float %4865, %4902
  %4915 = fsub fast float %4866, %4905
  %4916 = fmul fast float %4873, %4914
  %4917 = fmul fast float %4873, %4915
  %4918 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4919 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4920 = fsub fast float 1.000000e+00, %4919
  %4921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4922 = extractvalue %dx.types.CBufRet.f32 %4921, 2
  %4923 = call float @dx.op.unary.f32(i32 83, float %4918)  ; DerivCoarseX(value)
  %4924 = call float @dx.op.unary.f32(i32 83, float %4920)  ; DerivCoarseX(value)
  %4925 = call float @dx.op.unary.f32(i32 84, float %4918)  ; DerivCoarseY(value)
  %4926 = call float @dx.op.unary.f32(i32 84, float %4920)  ; DerivCoarseY(value)
  %4927 = fmul fast float %4923, %4922
  %4928 = fmul fast float %4924, %4922
  %4929 = fmul fast float %4925, %4922
  %4930 = fmul fast float %4926, %4922
  %4931 = call float @dx.op.dot2.f32(i32 54, float %4929, float %4930, float %4929, float %4930)  ; Dot2(ax,ay,bx,by)
  %4932 = call float @dx.op.dot2.f32(i32 54, float %4927, float %4928, float %4927, float %4928)  ; Dot2(ax,ay,bx,by)
  %4933 = call float @dx.op.binary.f32(i32 35, float %4932, float %4931)  ; FMax(a,b)
  %4934 = call float @dx.op.unary.f32(i32 23, float %4933)  ; Log(value)
  %4935 = fmul fast float %4934, 5.000000e-01
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 1
  %4938 = fadd fast float %4937, %4935
  %4939 = call float @dx.op.binary.f32(i32 35, float %4938, float 0.000000e+00)  ; FMax(a,b)
  %4940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4940, 3
  %4942 = fadd fast float %4941, %4939
  %4943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4944 = extractvalue %dx.types.CBufRet.f32 %4943, 3
  %4945 = fadd fast float %4942, %4944
  %4946 = add i32 %4912, 0
  %4947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4948 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4947, i32 0)  ; GetDimensions(handle,mipLevel)
  %4949 = extractvalue %dx.types.Dimensions %4948, 0
  %4950 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4949)  ; FirstbitLo(value)
  %4951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.i32 %4951, 1
  %4953 = sub nsw i32 %4952, %4950
  %4954 = sitofp i32 %4953 to float
  %4955 = fsub fast float %4945, %4954
  %4956 = call float @dx.op.binary.f32(i32 35, float %4955, float 0.000000e+00)  ; FMax(a,b)
  %4957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4947, %dx.types.Handle %52, float %4918, float %4920, float %4908, float undef, i32 0, i32 0, i32 undef, float %4956)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4958 = extractvalue %dx.types.ResRet.f32 %4957, 0
  %4959 = fcmp ule float %4958, 0x3FE0101020000000
  %4960 = extractvalue %dx.types.CBufRet.i32 %4951, 0
  %4961 = and i32 %4960, 128
  %4962 = icmp ne i32 %4961, 0
  %4963 = and i1 %4959, %4962
  br i1 %4963, label %5114, label %4964

; <label>:4964                                    ; preds = %4898
  %4965 = add i32 %4899, 20
  %4966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4967 = extractvalue %dx.types.ResRet.f32 %4966, 0
  %4968 = add i32 %4899, 24
  %4969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4968, i32 undef)  ; BufferLoad(srv,index,wot)
  %4970 = extractvalue %dx.types.ResRet.f32 %4969, 0
  %4971 = add i32 %4899, 40
  %4972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4971, i32 undef)  ; BufferLoad(srv,index,wot)
  %4973 = extractvalue %dx.types.ResRet.f32 %4972, 0
  %4974 = add i32 %4899, 96
  %4975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4974, i32 undef)  ; BufferLoad(srv,index,wot)
  %4976 = extractvalue %dx.types.ResRet.i32 %4975, 0
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 2
  %4979 = fmul fast float %4978, %4918
  %4980 = fmul fast float %4978, %4920
  %4981 = extractvalue %dx.types.CBufRet.f32 %4977, 3
  %4982 = fadd fast float %4979, %4981
  %4983 = fadd fast float %4980, %4981
  %4984 = add i32 %4976, 0
  %4985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4984, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4986 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4985, i32 0)  ; GetDimensions(handle,mipLevel)
  %4987 = extractvalue %dx.types.Dimensions %4986, 0
  %4988 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4987)  ; FirstbitLo(value)
  %4989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.i32 %4989, 1
  %4991 = sub nsw i32 %4990, %4988
  %4992 = sitofp i32 %4991 to float
  %4993 = fsub fast float %4942, %4992
  %4994 = call float @dx.op.binary.f32(i32 35, float %4993, float 0.000000e+00)  ; FMax(a,b)
  %4995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4985, %dx.types.Handle %52, float %4982, float %4983, float %4973, float undef, i32 0, i32 0, i32 undef, float %4994)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = fmul fast float %4996, %4967
  %4998 = fadd fast float %4997, %4970
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.CBufRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.CBufRet.f32 %4999, 2
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 3
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5007 = extractvalue %dx.types.CBufRet.f32 %4999, 3
  %5008 = fadd fast float %5004, %4865
  %5009 = fadd fast float %5006, %4866
  %5010 = fadd fast float %4998, %5007
  %5011 = fmul fast float %5008, %5000
  %5012 = call float @dx.op.tertiary.f32(i32 46, float %5009, float %5001, float %5011)  ; FMad(a,b,c)
  %5013 = call float @dx.op.tertiary.f32(i32 46, float %5010, float %5002, float %5012)  ; FMad(a,b,c)
  %5014 = fsub fast float %5013, %5007
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 2
  %5017 = fsub fast float %5014, %5016
  %5018 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5019 = extractvalue %dx.types.CBufRet.i32 %5018, 0
  %5020 = call i32 @dx.op.binary.i32(i32 40, i32 %4896, i32 %5019)  ; UMin(a,b)
  %5021 = mul i32 %5020, 36
  %5022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5021, i32 undef)  ; BufferLoad(srv,index,wot)
  %5023 = extractvalue %dx.types.ResRet.i32 %5022, 0
  %5024 = add i32 %5021, 4
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 0
  %5027 = fmul fast float %5026, %4918
  %5028 = fmul fast float %5026, %4920
  %5029 = extractvalue %dx.types.CBufRet.f32 %5025, 1
  %5030 = fadd fast float %5027, %5029
  %5031 = fadd fast float %5028, %5029
  %5032 = icmp eq i32 %5023, 0
  br i1 %5032, label %5101, label %5033

; <label>:5033                                    ; preds = %4964
  br label %5034

; <label>:5034                                    ; preds = %5091, %5033
  %5035 = phi float [ %5092, %5091 ], [ 0.000000e+00, %5033 ]
  %5036 = phi float [ %5093, %5091 ], [ 0.000000e+00, %5033 ]
  %5037 = phi float [ %5094, %5091 ], [ 0.000000e+00, %5033 ]
  %5038 = phi float [ %5095, %5091 ], [ 0.000000e+00, %5033 ]
  %5039 = phi float [ %5096, %5091 ], [ 0.000000e+00, %5033 ]
  %5040 = phi float [ %5097, %5091 ], [ 0.000000e+00, %5033 ]
  %5041 = phi i32 [ %5098, %5091 ], [ 0, %5033 ]
  %5042 = shl i32 %5041, 2
  %5043 = add i32 %4909, %5042
  %5044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5043, i32 undef)  ; BufferLoad(srv,index,wot)
  %5045 = extractvalue %dx.types.ResRet.f32 %5044, 0
  %5046 = add i32 %4913, %5042
  %5047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5046, i32 undef)  ; BufferLoad(srv,index,wot)
  %5048 = extractvalue %dx.types.ResRet.i32 %5047, 0
  %5049 = add i32 %5048, 0
  %5050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5049, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5051 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5050, i32 0)  ; GetDimensions(handle,mipLevel)
  %5052 = extractvalue %dx.types.Dimensions %5051, 0
  %5053 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5052)  ; FirstbitLo(value)
  %5054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.i32 %5054, 1
  %5056 = sub nsw i32 %5055, %5053
  %5057 = sitofp i32 %5056 to float
  %5058 = fsub fast float %4942, %5057
  %5059 = call float @dx.op.binary.f32(i32 35, float %5058, float 0.000000e+00)  ; FMax(a,b)
  %5060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5050, %dx.types.Handle %52, float %5030, float %5031, float %5045, float undef, i32 0, i32 0, i32 undef, float %5059)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 0
  %5062 = fcmp fast ogt float %5061, 0.000000e+00
  br i1 %5062, label %5063, label %5091

; <label>:5063                                    ; preds = %5034
  %5064 = add i32 %5024, %5042
  %5065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5064, i32 undef)  ; BufferLoad(srv,index,wot)
  %5066 = extractvalue %dx.types.ResRet.i32 %5065, 0
  %5067 = and i32 %5066, 32767
  %5068 = mul nuw nsw i32 %5067, 928
  %5069 = add nuw nsw i32 %5068, 48
  %5070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5069, i32 undef)  ; BufferLoad(srv,index,wot)
  %5071 = extractvalue %dx.types.ResRet.f32 %5070, 0
  %5072 = extractvalue %dx.types.ResRet.f32 %5070, 1
  %5073 = extractvalue %dx.types.ResRet.f32 %5070, 2
  %5074 = add nuw nsw i32 %5068, 60
  %5075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5074, i32 undef)  ; BufferLoad(srv,index,wot)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.ResRet.f32 %5075, 1
  %5078 = extractvalue %dx.types.ResRet.f32 %5075, 2
  %5079 = fmul fast float %5071, %5061
  %5080 = fmul fast float %5072, %5061
  %5081 = fmul fast float %5073, %5061
  %5082 = fadd fast float %5079, %5035
  %5083 = fadd fast float %5080, %5036
  %5084 = fadd fast float %5081, %5037
  %5085 = fmul fast float %5076, %5061
  %5086 = fmul fast float %5077, %5061
  %5087 = fmul fast float %5078, %5061
  %5088 = fadd fast float %5085, %5038
  %5089 = fadd fast float %5086, %5039
  %5090 = fadd fast float %5087, %5040
  br label %5091

; <label>:5091                                    ; preds = %5063, %5034
  %5092 = phi float [ %5082, %5063 ], [ %5035, %5034 ]
  %5093 = phi float [ %5083, %5063 ], [ %5036, %5034 ]
  %5094 = phi float [ %5084, %5063 ], [ %5037, %5034 ]
  %5095 = phi float [ %5088, %5063 ], [ %5038, %5034 ]
  %5096 = phi float [ %5089, %5063 ], [ %5039, %5034 ]
  %5097 = phi float [ %5090, %5063 ], [ %5040, %5034 ]
  %5098 = add nuw i32 %5041, 1
  %5099 = icmp eq i32 %5098, %5023
  br i1 %5099, label %5100, label %5034

; <label>:5100                                    ; preds = %5091
  br label %5101

; <label>:5101                                    ; preds = %5100, %4964
  %5102 = phi float [ 0.000000e+00, %4964 ], [ %5092, %5100 ]
  %5103 = phi float [ 0.000000e+00, %4964 ], [ %5093, %5100 ]
  %5104 = phi float [ 0.000000e+00, %4964 ], [ %5094, %5100 ]
  %5105 = phi float [ 0.000000e+00, %4964 ], [ %5095, %5100 ]
  %5106 = phi float [ 0.000000e+00, %4964 ], [ %5096, %5100 ]
  %5107 = phi float [ 0.000000e+00, %4964 ], [ %5097, %5100 ]
  %5108 = fadd fast float %5105, %5102
  %5109 = fmul fast float %5108, 0x3F847AE140000000
  %5110 = fadd fast float %5106, %5103
  %5111 = fmul fast float %5110, 0x3F847AE140000000
  %5112 = fadd fast float %5107, %5104
  %5113 = fmul fast float %5112, 0x3F847AE140000000
  br label %5114

; <label>:5114                                    ; preds = %5101, %4898, %4843, %4840, %4811, %4773
  %5115 = phi float [ %4825, %4811 ], [ -1.310720e+05, %4773 ], [ %5017, %5101 ], [ -1.310720e+05, %4843 ], [ -1.310720e+05, %4898 ], [ -1.310720e+05, %4840 ]
  %5116 = phi float [ %4835, %4811 ], [ 0.000000e+00, %4773 ], [ %5109, %5101 ], [ 0.000000e+00, %4843 ], [ 0.000000e+00, %4898 ], [ 0.000000e+00, %4840 ]
  %5117 = phi float [ %4837, %4811 ], [ 0.000000e+00, %4773 ], [ %5111, %5101 ], [ 0.000000e+00, %4843 ], [ 0.000000e+00, %4898 ], [ 0.000000e+00, %4840 ]
  %5118 = phi float [ %4839, %4811 ], [ 0.000000e+00, %4773 ], [ %5113, %5101 ], [ 0.000000e+00, %4843 ], [ 0.000000e+00, %4898 ], [ 0.000000e+00, %4840 ]
  %5119 = phi i1 [ true, %4811 ], [ false, %4773 ], [ true, %5101 ], [ false, %4843 ], [ false, %4898 ], [ false, %4840 ]
  %5120 = and i32 %208, 3
  %5121 = icmp eq i32 %5120, 1
  %5122 = select i1 %5121, float 1.000000e+00, float 0.000000e+00
  %5123 = fsub fast float %5115, %172
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = select i1 %5119, float %5124, float 1.000000e+00
  %5126 = fmul fast float %5125, %5122
  %5127 = icmp eq i32 %5120, 3
  %5128 = select i1 %5127, float 1.000000e+00, float %5126
  %5129 = call float @dx.op.binary.f32(i32 35, float %4650, float %5128)  ; FMax(a,b)
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fcmp fast une float %5130, 0.000000e+00
  %5132 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = call float @dx.op.unary.f32(i32 25, float %5132)  ; Rsqrt(value)
  br i1 %5131, label %5141, label %5134

; <label>:5134                                    ; preds = %5114
  %5135 = fmul fast float %5133, %170
  %5136 = fmul fast float %5133, %171
  %5137 = fmul fast float %5133, %172
  %5138 = fsub fast float -0.000000e+00, %5135
  %5139 = fsub fast float -0.000000e+00, %5136
  %5140 = fsub fast float -0.000000e+00, %5137
  br label %5309

; <label>:5141                                    ; preds = %5114
  %5142 = fmul fast float %170, %5133
  %5143 = fsub fast float -0.000000e+00, %5142
  %5144 = fmul fast float %171, %5133
  %5145 = fsub fast float -0.000000e+00, %5144
  %5146 = fmul fast float %172, %5133
  %5147 = fsub fast float -0.000000e+00, %5146
  %5148 = call float @dx.op.dot3.f32(i32 55, float %5143, float %5145, float %5147, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = fmul fast float %5130, 2.500000e+00
  %5150 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5151 = fmul fast float %5130, 0x4013FFFFE0000000
  %5152 = fadd fast float %5151, 0xBFFFFFFFE0000000
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = fmul fast float %5130, 0x4004000020000000
  %5155 = fadd fast float %5154, 0xBFF8000040000000
  %5156 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5157 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5158 = fmul fast float %4653, 1.000000e+01
  %5159 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5160 = fmul fast float %5159, 2.000000e+00
  %5161 = fsub fast float 3.000000e+00, %5160
  %5162 = fmul fast float %5159, %5159
  %5163 = fmul fast float %5162, %5161
  %5164 = fsub fast float 1.000000e+00, %5163
  %5165 = fsub fast float 0x3FE3333340000000, %4674
  %5166 = fmul fast float %5165, 0x400AAAAAA0000000
  %5167 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5168 = fmul fast float %5164, %5167
  %5169 = fmul fast float %4752, 0x3FEA2B8620000000
  %5170 = fmul fast float %4753, 0x3FEA2B8620000000
  %5171 = fmul fast float %4754, 0x3FEA2B8620000000
  %5172 = fadd fast float %5169, 0x3FC81DFBA0000000
  %5173 = fmul fast float %5172, %4752
  %5174 = fadd fast float %5173, 0x3F910E6020000000
  %5175 = fadd fast float %5170, 0x3FC81DFBA0000000
  %5176 = fmul fast float %5175, %4753
  %5177 = fadd fast float %5176, 0x3F910E6020000000
  %5178 = fadd fast float %5171, 0x3FC81DFBA0000000
  %5179 = fmul fast float %5178, %4754
  %5180 = fadd fast float %5179, 0x3F910E6020000000
  %5181 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5182 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5183 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5184 = fsub fast float %5181, %4752
  %5185 = fsub fast float %5182, %4753
  %5186 = fsub fast float %5183, %4754
  %5187 = fmul fast float %5184, %5157
  %5188 = fmul fast float %5187, %5168
  %5189 = fmul fast float %5185, %5157
  %5190 = fmul fast float %5189, %5168
  %5191 = fmul fast float %5186, %5157
  %5192 = fmul fast float %5191, %5168
  %5193 = fadd fast float %5188, %4752
  %5194 = fadd fast float %5190, %4753
  %5195 = fadd fast float %5192, %4754
  %5196 = fmul fast float %4647, %4647
  %5197 = fmul fast float %5196, %5196
  %5198 = fadd fast float %5153, 1.000000e+00
  %5199 = fsub fast float %5198, %5168
  %5200 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5201 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = fsub fast float 1.000000e+00, %5197
  %5204 = call float @dx.op.binary.f32(i32 36, float %5200, float %5203)  ; FMin(a,b)
  %5205 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5206 = call float @dx.op.binary.f32(i32 35, float %5204, float %5205)  ; FMax(a,b)
  %5207 = fadd fast float %5202, 0xBFE4CCCCC0000000
  %5208 = fmul fast float %5207, 0x4006DB6DA0000000
  %5209 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5210 = fmul fast float %5209, 2.000000e+00
  %5211 = fsub fast float 3.000000e+00, %5210
  %5212 = bitcast float %4671 to i32
  %5213 = ashr i32 %5212, 1
  %5214 = add nsw i32 %5213, 532487669
  %5215 = bitcast i32 %5214 to float
  %5216 = fsub fast float 1.000000e+00, %5215
  %5217 = bitcast float %5216 to i32
  %5218 = sub nsw i32 2129859010, %5217
  %5219 = bitcast i32 %5218 to float
  %5220 = fmul fast float %5219, 2.000000e+00
  %5221 = bitcast float %4672 to i32
  %5222 = ashr i32 %5221, 1
  %5223 = add nsw i32 %5222, 532487669
  %5224 = bitcast i32 %5223 to float
  %5225 = fsub fast float 1.000000e+00, %5224
  %5226 = bitcast float %5225 to i32
  %5227 = sub nsw i32 2129859010, %5226
  %5228 = bitcast i32 %5227 to float
  %5229 = fmul fast float %5228, 2.000000e+00
  %5230 = bitcast float %4673 to i32
  %5231 = ashr i32 %5230, 1
  %5232 = add nsw i32 %5231, 532487669
  %5233 = bitcast i32 %5232 to float
  %5234 = fsub fast float 1.000000e+00, %5233
  %5235 = bitcast float %5234 to i32
  %5236 = sub nsw i32 2129859010, %5235
  %5237 = bitcast i32 %5236 to float
  %5238 = fmul fast float %5237, 2.000000e+00
  %5239 = fsub fast float 0x4002A9FBE0000000, %5220
  %5240 = fadd fast float %5220, 0x3FD54FDF00000000
  %5241 = bitcast float %5240 to i32
  %5242 = sub nsw i32 2129859010, %5241
  %5243 = bitcast i32 %5242 to float
  %5244 = fmul fast float %5243, %5239
  %5245 = fmul fast float %5244, %5244
  %5246 = fsub fast float 0x4002A9FBE0000000, %5229
  %5247 = fadd fast float %5229, 0x3FD54FDF00000000
  %5248 = bitcast float %5247 to i32
  %5249 = sub nsw i32 2129859010, %5248
  %5250 = bitcast i32 %5249 to float
  %5251 = fmul fast float %5250, %5246
  %5252 = fmul fast float %5251, %5251
  %5253 = fsub fast float 0x4002A9FBE0000000, %5238
  %5254 = fadd fast float %5238, 0x3FD54FDF00000000
  %5255 = bitcast float %5254 to i32
  %5256 = sub nsw i32 2129859010, %5255
  %5257 = bitcast i32 %5256 to float
  %5258 = fmul fast float %5257, %5253
  %5259 = fmul fast float %5258, %5258
  %5260 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5245)  ; FMax(a,b)
  %5261 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5252)  ; FMax(a,b)
  %5262 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5259)  ; FMax(a,b)
  %5263 = fsub fast float 1.000000e+00, %5148
  %5264 = fadd fast float %5263, %5164
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = fsub fast float 1.000000e+00, %5128
  %5267 = fmul fast float %5206, %5266
  %5268 = fmul fast float %5209, %5209
  %5269 = fmul fast float %5268, %5267
  %5270 = fmul fast float %5269, %5211
  %5271 = fmul fast float %5266, 0xBFE99999A0000000
  %5272 = fmul fast float %5271, %5157
  %5273 = fmul fast float %5272, %5168
  %5274 = fadd fast float %5273, 1.000000e+00
  %5275 = fadd fast float %4674, -1.000000e+00
  %5276 = fmul fast float %5274, %5275
  %5277 = fadd fast float %5276, 1.000000e+00
  %5278 = fsub fast float %5260, %4671
  %5279 = fsub fast float %5261, %4672
  %5280 = fsub fast float %5262, %4673
  %5281 = fmul fast float %5270, %5278
  %5282 = fmul fast float %5270, %5279
  %5283 = fmul fast float %5270, %5280
  %5284 = fadd fast float %5281, %4671
  %5285 = fadd fast float %5282, %4672
  %5286 = fadd fast float %5283, %4673
  %5287 = fsub fast float %120, %4635
  %5288 = fsub fast float %122, %4636
  %5289 = fsub fast float %124, %4637
  %5290 = fmul fast float %5270, %5287
  %5291 = fmul fast float %5270, %5288
  %5292 = fmul fast float %5270, %5289
  %5293 = fadd fast float %5290, %4635
  %5294 = fadd fast float %5291, %4636
  %5295 = fadd fast float %5292, %4637
  %5296 = fmul fast float %5270, %5265
  %5297 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5298 = fsub fast float 1.000000e+00, %5297
  %5299 = fmul fast float %5296, %5298
  %5300 = fadd fast float %5299, %5297
  %5301 = fsub fast float 1.000000e+00, %4647
  %5302 = fmul fast float %5270, %5301
  %5303 = fadd fast float %5302, %4647
  %5304 = call float @dx.op.dot3.f32(i32 55, float %5293, float %5294, float %5295, float %5293, float %5294, float %5295)  ; Dot3(ax,ay,az,bx,by,bz)
  %5305 = call float @dx.op.unary.f32(i32 25, float %5304)  ; Rsqrt(value)
  %5306 = fmul fast float %5293, %5305
  %5307 = fmul fast float %5294, %5305
  %5308 = fmul fast float %5295, %5305
  br label %5309

; <label>:5309                                    ; preds = %5141, %5134
  %5310 = phi float [ %5140, %5134 ], [ %5147, %5141 ]
  %5311 = phi float [ %5139, %5134 ], [ %5145, %5141 ]
  %5312 = phi float [ %5138, %5134 ], [ %5143, %5141 ]
  %5313 = phi float [ %5137, %5134 ], [ %5146, %5141 ]
  %5314 = phi float [ %5136, %5134 ], [ %5144, %5141 ]
  %5315 = phi float [ %5135, %5134 ], [ %5142, %5141 ]
  %5316 = phi float [ %4752, %5134 ], [ %5193, %5141 ]
  %5317 = phi float [ %4753, %5134 ], [ %5194, %5141 ]
  %5318 = phi float [ %4754, %5134 ], [ %5195, %5141 ]
  %5319 = phi float [ %4671, %5134 ], [ %5284, %5141 ]
  %5320 = phi float [ %4672, %5134 ], [ %5285, %5141 ]
  %5321 = phi float [ %4673, %5134 ], [ %5286, %5141 ]
  %5322 = phi float [ %4635, %5134 ], [ %5306, %5141 ]
  %5323 = phi float [ %4636, %5134 ], [ %5307, %5141 ]
  %5324 = phi float [ %4637, %5134 ], [ %5308, %5141 ]
  %5325 = phi float [ %4674, %5134 ], [ %5300, %5141 ]
  %5326 = phi float [ %4647, %5134 ], [ %5303, %5141 ]
  %5327 = fsub fast float -0.000000e+00, %172
  %5328 = select i1 %232, float 0.000000e+00, float %5321
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %5312, float %5311, float %5310)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5314, float %5313, float %5322, float %5323, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = fmul fast float %5331, 2.000000e+00
  %5333 = fmul fast float %5332, %5322
  %5334 = fmul fast float %5332, %5323
  %5335 = fmul fast float %5332, %5324
  %5336 = fsub fast float %5315, %5333
  %5337 = fsub fast float %5314, %5334
  %5338 = fsub fast float %5313, %5335
  %5339 = call float @dx.op.binary.f32(i32 36, float %5326, float 1.000000e+00)  ; FMin(a,b)
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = bitcast float %5340 to i32
  %5342 = ashr i32 %5341, 1
  %5343 = add nsw i32 %5342, 532487669
  %5344 = bitcast i32 %5343 to float
  %5345 = fsub fast float 1.000000e+00, %5325
  %5346 = call float @dx.op.binary.f32(i32 35, float %5345, float 0x3F847AE140000000)  ; FMax(a,b)
  %5347 = fmul fast float %5346, %5346
  %5348 = fmul fast float %5347, %5347
  %5349 = call float @dx.op.unary.f32(i32 7, float %5330)  ; Saturate(value)
  %5350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5344, float %5348, float %5349, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5351 = extractvalue %dx.types.ResRet.f32 %5350, 0
  %5352 = fsub fast float 1.000000e+00, %5326
  %5353 = bitcast float %5352 to i32
  %5354 = sub nsw i32 2129859010, %5353
  %5355 = bitcast i32 %5354 to float
  %5356 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = fmul fast float %5356, 0x3FD20DD760000000
  %5358 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5359 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = fcmp fast oeq float %5359, 0.000000e+00
  %5361 = fcmp fast oeq float %5358, 0.000000e+00
  %5362 = or i1 %5361, %5360
  br i1 %5362, label %5392, label %5363

; <label>:5363                                    ; preds = %5309
  %5364 = fsub fast float -0.000000e+00, %82
  %5365 = fsub fast float -0.000000e+00, %80
  %5366 = call float @dx.op.unary.f32(i32 24, float %5359)  ; Sqrt(value)
  %5367 = fdiv fast float %5366, %5358
  %5368 = fcmp fast ogt float %5367, 0x3FFB6F8900000000
  %5369 = select i1 %5368, float 0x3FFB6F8900000000, float %5367
  %5370 = fmul fast float %5369, 0x3FE8A23460000000
  %5371 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5372 = call float @dx.op.binary.f32(i32 35, float %5369, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5373 = fmul fast float %5371, %5358
  %5374 = fmul fast float %5372, 0x3FF279A740000000
  %5375 = fadd fast float %5374, -1.000000e+00
  %5376 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %81, float %5364, float %5365, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = call float @dx.op.unary.f32(i32 25, float %5376)  ; Rsqrt(value)
  %5378 = fmul fast float %5377, %5364
  %5379 = fmul fast float %5377, %5365
  %5380 = fmul fast float %5377, %81
  %5381 = fmul fast float %5375, %5375
  %5382 = fsub fast float 1.000000e+00, %5381
  %5383 = fmul fast float %5372, 0x40005F8BE0000000
  %5384 = fsub fast float 0x400C5BF8A0000000, %5383
  %5385 = fdiv fast float %5373, %5384
  %5386 = fmul fast float %5385, 0x3FEE31C3C0000000
  %5387 = fmul fast float %5386, %5382
  %5388 = fmul fast float %5372, 0x3FDACB7480000000
  %5389 = fadd fast float %5388, 0xBFD7347680000000
  %5390 = fmul fast float %5389, %5385
  %5391 = fmul fast float %5390, %5382
  br label %5392

; <label>:5392                                    ; preds = %5363, %5309
  %5393 = phi float [ %5378, %5363 ], [ 0.000000e+00, %5309 ]
  %5394 = phi float [ %5379, %5363 ], [ 0.000000e+00, %5309 ]
  %5395 = phi float [ %5380, %5363 ], [ 0.000000e+00, %5309 ]
  %5396 = phi float [ %5387, %5363 ], [ 0.000000e+00, %5309 ]
  %5397 = phi float [ %5391, %5363 ], [ 0.000000e+00, %5309 ]
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5394, float %5395, float %5322, float %5323, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = fmul fast float %5398, 0x3FDF454380000000
  %5400 = fmul fast float %5398, %5398
  %5401 = fmul fast float %5400, 0x3FEE471020000000
  %5402 = fadd fast float %5401, 0xBFD42F6020000000
  %5403 = fmul fast float %5358, 0x3FD20DD760000000
  %5404 = fmul fast float %5402, %5397
  %5405 = fadd fast float %5404, %5403
  %5406 = fmul fast float %5399, %5396
  %5407 = fadd fast float %5405, %5406
  %5408 = fsub fast float %5405, %5406
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5394, float %5395, float %5336, float %5337, float %5338)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = fmul fast float %5409, 0x3FDF454380000000
  %5411 = fmul fast float %5409, %5409
  %5412 = fmul fast float %5411, 0x3FEE471020000000
  %5413 = fadd fast float %5412, 0xBFD42F6020000000
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5358, float %5396, float %5397, float 0x3FD20DD760000000, float %5410, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5416 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = fcmp fast oeq float %5416, 0.000000e+00
  %5418 = fcmp fast oeq float %5415, 0.000000e+00
  %5419 = or i1 %5418, %5417
  br i1 %5419, label %5449, label %5420

; <label>:5420                                    ; preds = %5392
  %5421 = fsub fast float -0.000000e+00, %78
  %5422 = fsub fast float -0.000000e+00, %76
  %5423 = call float @dx.op.unary.f32(i32 24, float %5416)  ; Sqrt(value)
  %5424 = fdiv fast float %5423, %5415
  %5425 = fcmp fast ogt float %5424, 0x3FFB6F8900000000
  %5426 = select i1 %5425, float 0x3FFB6F8900000000, float %5424
  %5427 = fmul fast float %5426, 0x3FE8A23460000000
  %5428 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5429 = call float @dx.op.binary.f32(i32 35, float %5426, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5430 = fmul fast float %5428, %5415
  %5431 = fmul fast float %5429, 0x3FF279A740000000
  %5432 = fadd fast float %5431, -1.000000e+00
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5421, float %5422, float %77, float %5421, float %5422, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = call float @dx.op.unary.f32(i32 25, float %5433)  ; Rsqrt(value)
  %5435 = fmul fast float %5434, %5421
  %5436 = fmul fast float %5434, %5422
  %5437 = fmul fast float %5434, %77
  %5438 = fmul fast float %5432, %5432
  %5439 = fsub fast float 1.000000e+00, %5438
  %5440 = fmul fast float %5429, 0x40005F8BE0000000
  %5441 = fsub fast float 0x400C5BF8A0000000, %5440
  %5442 = fdiv fast float %5430, %5441
  %5443 = fmul fast float %5442, 0x3FEE31C3C0000000
  %5444 = fmul fast float %5443, %5439
  %5445 = fmul fast float %5429, 0x3FDACB7480000000
  %5446 = fadd fast float %5445, 0xBFD7347680000000
  %5447 = fmul fast float %5446, %5442
  %5448 = fmul fast float %5447, %5439
  br label %5449

; <label>:5449                                    ; preds = %5420, %5392
  %5450 = phi float [ %5435, %5420 ], [ 0.000000e+00, %5392 ]
  %5451 = phi float [ %5436, %5420 ], [ 0.000000e+00, %5392 ]
  %5452 = phi float [ %5437, %5420 ], [ 0.000000e+00, %5392 ]
  %5453 = phi float [ %5444, %5420 ], [ 0.000000e+00, %5392 ]
  %5454 = phi float [ %5448, %5420 ], [ 0.000000e+00, %5392 ]
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float %5322, float %5323, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = fmul fast float %5455, 0x3FDF454380000000
  %5457 = fmul fast float %5455, %5455
  %5458 = fmul fast float %5457, 0x3FEE471020000000
  %5459 = fadd fast float %5458, 0xBFD42F6020000000
  %5460 = fmul fast float %5415, 0x3FD20DD760000000
  %5461 = fmul fast float %5459, %5454
  %5462 = fadd fast float %5461, %5460
  %5463 = fmul fast float %5456, %5453
  %5464 = fadd fast float %5462, %5463
  %5465 = fsub fast float %5462, %5463
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float %5336, float %5337, float %5338)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = fmul fast float %5466, 0x3FDF454380000000
  %5468 = fmul fast float %5466, %5466
  %5469 = fmul fast float %5468, 0x3FEE471020000000
  %5470 = fadd fast float %5469, 0xBFD42F6020000000
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5415, float %5453, float %5454, float 0x3FD20DD760000000, float %5467, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5473 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = fcmp fast oeq float %5473, 0.000000e+00
  %5475 = fcmp fast oeq float %5472, 0.000000e+00
  %5476 = or i1 %5475, %5474
  br i1 %5476, label %5506, label %5477

; <label>:5477                                    ; preds = %5449
  %5478 = fsub fast float -0.000000e+00, %74
  %5479 = fsub fast float -0.000000e+00, %72
  %5480 = call float @dx.op.unary.f32(i32 24, float %5473)  ; Sqrt(value)
  %5481 = fdiv fast float %5480, %5472
  %5482 = fcmp fast ogt float %5481, 0x3FFB6F8900000000
  %5483 = select i1 %5482, float 0x3FFB6F8900000000, float %5481
  %5484 = fmul fast float %5483, 0x3FE8A23460000000
  %5485 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5486 = call float @dx.op.binary.f32(i32 35, float %5483, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5487 = fmul fast float %5485, %5472
  %5488 = fmul fast float %5486, 0x3FF279A740000000
  %5489 = fadd fast float %5488, -1.000000e+00
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %73, float %5478, float %5479, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = call float @dx.op.unary.f32(i32 25, float %5490)  ; Rsqrt(value)
  %5492 = fmul fast float %5491, %5478
  %5493 = fmul fast float %5491, %5479
  %5494 = fmul fast float %5491, %73
  %5495 = fmul fast float %5489, %5489
  %5496 = fsub fast float 1.000000e+00, %5495
  %5497 = fmul fast float %5486, 0x40005F8BE0000000
  %5498 = fsub fast float 0x400C5BF8A0000000, %5497
  %5499 = fdiv fast float %5487, %5498
  %5500 = fmul fast float %5499, 0x3FEE31C3C0000000
  %5501 = fmul fast float %5500, %5496
  %5502 = fmul fast float %5486, 0x3FDACB7480000000
  %5503 = fadd fast float %5502, 0xBFD7347680000000
  %5504 = fmul fast float %5503, %5499
  %5505 = fmul fast float %5504, %5496
  br label %5506

; <label>:5506                                    ; preds = %5477, %5449
  %5507 = phi float [ %5492, %5477 ], [ 0.000000e+00, %5449 ]
  %5508 = phi float [ %5493, %5477 ], [ 0.000000e+00, %5449 ]
  %5509 = phi float [ %5494, %5477 ], [ 0.000000e+00, %5449 ]
  %5510 = phi float [ %5501, %5477 ], [ 0.000000e+00, %5449 ]
  %5511 = phi float [ %5505, %5477 ], [ 0.000000e+00, %5449 ]
  %5512 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5322, float %5323, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %5513 = fmul fast float %5512, 0x3FDF454380000000
  %5514 = fmul fast float %5512, %5512
  %5515 = fmul fast float %5514, 0x3FEE471020000000
  %5516 = fadd fast float %5515, 0xBFD42F6020000000
  %5517 = fmul fast float %5472, 0x3FD20DD760000000
  %5518 = fmul fast float %5516, %5511
  %5519 = fadd fast float %5518, %5517
  %5520 = fmul fast float %5513, %5510
  %5521 = fadd fast float %5519, %5520
  %5522 = fsub fast float %5519, %5520
  %5523 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5336, float %5337, float %5338)  ; Dot3(ax,ay,az,bx,by,bz)
  %5524 = fmul fast float %5523, 0x3FDF454380000000
  %5525 = fmul fast float %5523, %5523
  %5526 = fmul fast float %5525, 0x3FEE471020000000
  %5527 = fadd fast float %5526, 0xBFD42F6020000000
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5510, float %5511, float 0x3FD20DD760000000, float %5524, float %5527)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = call float @dx.op.binary.f32(i32 35, float %5407, float 0.000000e+00)  ; FMax(a,b)
  %5530 = call float @dx.op.binary.f32(i32 35, float %5464, float 0.000000e+00)  ; FMax(a,b)
  %5531 = call float @dx.op.binary.f32(i32 35, float %5521, float 0.000000e+00)  ; FMax(a,b)
  %5532 = call float @dx.op.binary.f32(i32 35, float %5408, float 0.000000e+00)  ; FMax(a,b)
  %5533 = call float @dx.op.binary.f32(i32 35, float %5465, float 0.000000e+00)  ; FMax(a,b)
  %5534 = call float @dx.op.binary.f32(i32 35, float %5522, float 0.000000e+00)  ; FMax(a,b)
  %5535 = call float @dx.op.binary.f32(i32 35, float %5414, float 0.000000e+00)  ; FMax(a,b)
  %5536 = call float @dx.op.binary.f32(i32 35, float %5471, float 0.000000e+00)  ; FMax(a,b)
  %5537 = call float @dx.op.binary.f32(i32 35, float %5528, float 0.000000e+00)  ; FMax(a,b)
  %5538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.f32 %5538, 0
  %5540 = call float @dx.op.binary.f32(i32 36, float %5316, float %5539)  ; FMin(a,b)
  %5541 = fmul fast float %5540, %5340
  %5542 = fsub fast float 1.000000e+00, %5541
  %5543 = bitcast float %5542 to i32
  %5544 = sub nsw i32 2129859010, %5543
  %5545 = bitcast i32 %5544 to float
  %5546 = call float @dx.op.binary.f32(i32 36, float %5317, float %5539)  ; FMin(a,b)
  %5547 = fmul fast float %5546, %5340
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = bitcast float %5548 to i32
  %5550 = sub nsw i32 2129859010, %5549
  %5551 = bitcast i32 %5550 to float
  %5552 = call float @dx.op.binary.f32(i32 36, float %5318, float %5539)  ; FMin(a,b)
  %5553 = fmul fast float %5552, %5340
  %5554 = fsub fast float 1.000000e+00, %5553
  %5555 = bitcast float %5554 to i32
  %5556 = sub nsw i32 2129859010, %5555
  %5557 = bitcast i32 %5556 to float
  %5558 = fmul fast float %5529, %5339
  %5559 = fmul fast float %5558, %5545
  %5560 = fmul fast float %5530, %5339
  %5561 = fmul fast float %5560, %5551
  %5562 = fmul fast float %5531, %5339
  %5563 = fmul fast float %5562, %5557
  %5564 = call float @dx.op.binary.f32(i32 36, float %5319, float %5539)  ; FMin(a,b)
  %5565 = fmul fast float %5564, %5340
  %5566 = fsub fast float 1.000000e+00, %5565
  %5567 = bitcast float %5566 to i32
  %5568 = sub nsw i32 2129859010, %5567
  %5569 = bitcast i32 %5568 to float
  %5570 = call float @dx.op.binary.f32(i32 36, float %5320, float %5539)  ; FMin(a,b)
  %5571 = fmul fast float %5570, %5340
  %5572 = fsub fast float 1.000000e+00, %5571
  %5573 = bitcast float %5572 to i32
  %5574 = sub nsw i32 2129859010, %5573
  %5575 = bitcast i32 %5574 to float
  %5576 = call float @dx.op.binary.f32(i32 36, float %5328, float %5539)  ; FMin(a,b)
  %5577 = fmul fast float %5576, %5340
  %5578 = fsub fast float 1.000000e+00, %5577
  %5579 = bitcast float %5578 to i32
  %5580 = sub nsw i32 2129859010, %5579
  %5581 = bitcast i32 %5580 to float
  %5582 = fmul fast float %5535, %5339
  %5583 = fmul fast float %5582, %5569
  %5584 = fmul fast float %5536, %5339
  %5585 = fmul fast float %5584, %5575
  %5586 = fmul fast float %5537, %5339
  %5587 = fmul fast float %5586, %5581
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5561, float %5563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = select i1 %232, float 0.000000e+00, float %5559
  %5590 = select i1 %232, float %5588, float %5561
  %5591 = select i1 %232, float 0.000000e+00, float %5563
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5533, float %5534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = select i1 %232, float 0.000000e+00, float %5532
  %5594 = select i1 %232, float %5592, float %5533
  %5595 = select i1 %232, float 0.000000e+00, float %5534
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5585, float %5587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = select i1 %232, float 0.000000e+00, float %5583
  %5598 = select i1 %232, float %5596, float %5585
  %5599 = select i1 %232, float 0.000000e+00, float %5587
  %5600 = fmul fast float %5330, 9.843750e-01
  %5601 = fmul fast float %5325, 9.843750e-01
  %5602 = fadd fast float %5600, 7.812500e-03
  %5603 = fadd fast float %5601, 7.812500e-03
  %5604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5602, float %5603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5605 = extractvalue %dx.types.ResRet.f32 %5604, 2
  %5606 = extractvalue %dx.types.ResRet.f32 %5604, 3
  %5607 = fmul fast float %5605, %5319
  %5608 = fmul fast float %5605, %5320
  %5609 = fmul fast float %5605, %5328
  %5610 = fadd fast float %5607, %5606
  %5611 = fadd fast float %5608, %5606
  %5612 = fadd fast float %5609, %5606
  %5613 = fcmp fast ogt float %4648, 0.000000e+00
  br i1 %5613, label %5614, label %5640

; <label>:5614                                    ; preds = %5506
  %5615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4648, float %5330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5616 = extractvalue %dx.types.ResRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.ResRet.f32 %5615, 1
  %5618 = extractvalue %dx.types.ResRet.f32 %5615, 2
  %5619 = fadd fast float %5616, -5.000000e-01
  %5620 = fadd fast float %5617, -5.000000e-01
  %5621 = fadd fast float %5618, -5.000000e-01
  %5622 = fsub fast float 1.000000e+00, %5319
  %5623 = fsub fast float 1.000000e+00, %5320
  %5624 = fsub fast float 1.000000e+00, %5328
  %5625 = fmul fast float %5319, 4.000000e+00
  %5626 = fmul fast float %5625, %5622
  %5627 = fmul fast float %5626, %5619
  %5628 = fmul fast float %5320, 4.000000e+00
  %5629 = fmul fast float %5628, %5623
  %5630 = fmul fast float %5629, %5620
  %5631 = fmul fast float %5328, 4.000000e+00
  %5632 = fmul fast float %5631, %5624
  %5633 = fmul fast float %5632, %5621
  %5634 = fadd fast float %5627, %5610
  %5635 = fadd fast float %5630, %5611
  %5636 = fadd fast float %5633, %5612
  %5637 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5638 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5639 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  br label %5640

; <label>:5640                                    ; preds = %5614, %5506
  %5641 = phi float [ %5637, %5614 ], [ %5610, %5506 ]
  %5642 = phi float [ %5638, %5614 ], [ %5611, %5506 ]
  %5643 = phi float [ %5639, %5614 ], [ %5612, %5506 ]
  %5644 = call float @dx.op.binary.f32(i32 35, float %5642, float %5643)  ; FMax(a,b)
  %5645 = call float @dx.op.binary.f32(i32 35, float %5641, float %5644)  ; FMax(a,b)
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = fmul fast float %5645, %5325
  %5648 = fadd fast float %5647, %5325
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 2
  %5651 = extractvalue %dx.types.CBufRet.f32 %5649, 3
  %5652 = fmul fast float %5648, %5650
  %5653 = fadd fast float %5652, %5651
  %5654 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5655 = fsub fast float 1.000000e+00, %5351
  %5656 = fadd fast float %5655, %5654
  %5657 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5658 = fcmp fast olt float %5657, 1.000000e+00
  br i1 %5658, label %5659, label %6135

; <label>:5659                                    ; preds = %5640
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 3
  %5663 = fmul fast float %5661, %111
  %5664 = fmul fast float %5662, %112
  %5665 = fptoui float %5663 to i32
  %5666 = fptoui float %5664 to i32
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 0
  %5669 = extractvalue %dx.types.CBufRet.f32 %5667, 2
  %5670 = extractvalue %dx.types.CBufRet.f32 %5667, 3
  %5671 = fadd fast float %99, -4.000000e+00
  %5672 = call float @dx.op.binary.f32(i32 35, float %5671, float 0.000000e+00)  ; FMax(a,b)
  %5673 = fadd fast float %5672, %5668
  %5674 = fmul fast float %5673, %5669
  %5675 = call float @dx.op.unary.f32(i32 23, float %5674)  ; Log(value)
  %5676 = fmul fast float %5675, %5670
  %5677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5677, 2
  %5679 = fmul fast float %5676, %5678
  %5680 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5681 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5682 = extractvalue %dx.types.CBufRet.i32 %5681, 1
  %5683 = add i32 %5682, -1
  %5684 = uitofp i32 %5682 to float
  %5685 = fmul fast float %5684, %5680
  %5686 = fptoui float %5685 to i32
  %5687 = call i32 @dx.op.binary.i32(i32 40, i32 %5686, i32 %5683)  ; UMin(a,b)
  %5688 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.i32 %5688, 2
  %5690 = extractvalue %dx.types.CBufRet.i32 %5688, 3
  %5691 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5666, i32 %5689, i32 %5665)  ; UMad(a,b,c)
  %5692 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5687, i32 %5690, i32 %5691)  ; UMad(a,b,c)
  %5693 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %5694 = fptoui float %5693 to i32
  %5695 = lshr i32 %5694, 5
  %5696 = call i32 @dx.op.binary.i32(i32 40, i32 %5695, i32 8191)  ; UMin(a,b)
  %5697 = fsub fast float %5115, %172
  %5698 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5699 = fcmp fast ogt float %5698, 0.000000e+00
  %5700 = fcmp fast ogt float %5338, 0.000000e+00
  %5701 = and i1 %5700, %5699
  br i1 %5701, label %5702, label %5731

; <label>:5702                                    ; preds = %5659
  %5703 = call float @dx.op.dot3.f32(i32 55, float %5336, float %5337, float %5338, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = call float @dx.op.binary.f32(i32 35, float %5703, float -1.000000e+00)  ; FMax(a,b)
  %5705 = call float @dx.op.binary.f32(i32 36, float %5704, float 1.000000e+00)  ; FMin(a,b)
  %5706 = fmul fast float %5705, %5705
  %5707 = fsub fast float 1.000000e+00, %5706
  %5708 = fmul fast float %5707, 0x3FFC6E2300000000
  %5709 = fsub fast float 1.000000e+00, %5708
  %5710 = fcmp fast ogt float %5709, 0.000000e+00
  %5711 = call float @dx.op.unary.f32(i32 24, float %5709)  ; Sqrt(value)
  %5712 = fsub fast float 1.000000e+00, %5711
  %5713 = call float @dx.op.unary.f32(i32 23, float %5712)  ; Log(value)
  %5714 = fmul fast float %5713, 5.000000e+00
  %5715 = call float @dx.op.unary.f32(i32 21, float %5714)  ; Exp(value)
  %5716 = fmul fast float %5715, 0x3FEF591A60000000
  %5717 = fadd fast float %5716, 0x3F94DCB540000000
  %5718 = select i1 %5710, float %5717, float 1.000000e+00
  %5719 = fcmp fast oge float %5718, 1.000000e+00
  %5720 = fmul fast float %5703, 2.000000e+00
  %5721 = fadd fast float %5720, %5338
  %5722 = select i1 %5719, float %5721, float %5338
  %5723 = fsub fast float %5722, %5338
  %5724 = fmul fast float %5723, %5698
  %5725 = fadd fast float %5724, %5338
  %5726 = call float @dx.op.dot3.f32(i32 55, float %5336, float %5337, float %5725, float %5336, float %5337, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = call float @dx.op.unary.f32(i32 25, float %5726)  ; Rsqrt(value)
  %5728 = fmul fast float %5727, %5336
  %5729 = fmul fast float %5727, %5337
  %5730 = fmul fast float %5725, %5727
  br label %5731

; <label>:5731                                    ; preds = %5702, %5659
  %5732 = phi float [ %5728, %5702 ], [ %5336, %5659 ]
  %5733 = phi float [ %5729, %5702 ], [ %5337, %5659 ]
  %5734 = phi float [ %5730, %5702 ], [ %5338, %5659 ]
  %5735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5736 = extractvalue %dx.types.CBufRet.i32 %5735, 2
  %5737 = add nsw i32 %5736, -1
  %5738 = call i32 @dx.op.binary.i32(i32 37, i32 %5737, i32 0)  ; IMax(a,b)
  %5739 = shl i32 %5696, 2
  %5740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5739, i32 undef)  ; BufferLoad(srv,index,wot)
  %5741 = extractvalue %dx.types.ResRet.i32 %5740, 0
  %5742 = lshr i32 %5741, 16
  %5743 = and i32 %5741, 65535
  %5744 = lshr i32 %5741, 21
  %5745 = lshr i32 %5743, 5
  %5746 = call i32 @dx.op.binary.i32(i32 40, i32 %5745, i32 %5738)  ; UMin(a,b)
  %5747 = icmp ugt i32 %5744, %5746
  br i1 %5747, label %6111, label %5748

; <label>:5748                                    ; preds = %5731
  br label %5749

; <label>:5749                                    ; preds = %6103, %5748
  %5750 = phi float [ %6104, %6103 ], [ 0.000000e+00, %5748 ]
  %5751 = phi float [ %6105, %6103 ], [ 0.000000e+00, %5748 ]
  %5752 = phi float [ %6106, %6103 ], [ 0.000000e+00, %5748 ]
  %5753 = phi float [ %6107, %6103 ], [ 1.000000e+00, %5748 ]
  %5754 = phi i32 [ %6108, %6103 ], [ %5744, %5748 ]
  %5755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5756 = extractvalue %dx.types.CBufRet.i32 %5755, 2
  %5757 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5692, i32 %5756, i32 %5754)  ; UMad(a,b,c)
  %5758 = shl i32 %5757, 2
  %5759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5758, i32 undef)  ; BufferLoad(srv,index,wot)
  %5760 = extractvalue %dx.types.ResRet.i32 %5759, 0
  %5761 = shl i32 %5754, 5
  %5762 = sub nsw i32 %5742, %5761
  %5763 = call i32 @dx.op.binary.i32(i32 37, i32 %5762, i32 0)  ; IMax(a,b)
  %5764 = call i32 @dx.op.binary.i32(i32 38, i32 %5763, i32 31)  ; IMin(a,b)
  %5765 = sub nsw i32 1, %5742
  %5766 = add nsw i32 %5765, %5743
  %5767 = call i32 @dx.op.binary.i32(i32 37, i32 %5766, i32 0)  ; IMax(a,b)
  %5768 = call i32 @dx.op.binary.i32(i32 38, i32 %5767, i32 32)  ; IMin(a,b)
  %5769 = and i32 %5768, 31
  %5770 = shl i32 -1, %5769
  %5771 = xor i32 %5770, -1
  %5772 = and i32 %5764, 31
  %5773 = shl i32 %5771, %5772
  %5774 = icmp eq i32 %5768, 32
  %5775 = select i1 %5774, i32 -1, i32 %5773
  %5776 = and i32 %5775, %5760
  %5777 = icmp eq i32 %5776, 0
  br i1 %5777, label %6103, label %5778

; <label>:5778                                    ; preds = %5749
  br label %5779

; <label>:5779                                    ; preds = %5886, %5778
  %5780 = phi float [ %5887, %5886 ], [ %5750, %5778 ]
  %5781 = phi float [ %5888, %5886 ], [ %5751, %5778 ]
  %5782 = phi float [ %5889, %5886 ], [ %5752, %5778 ]
  %5783 = phi float [ %5890, %5886 ], [ %5753, %5778 ]
  %5784 = phi i32 [ %5789, %5886 ], [ %5776, %5778 ]
  %5785 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5784)  ; FirstbitLo(value)
  %5786 = add i32 %5785, %5761
  %5787 = and i32 %5785, 31
  %5788 = shl i32 1, %5787
  %5789 = xor i32 %5788, %5784
  %5790 = mul i32 %5786, 72
  %5791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5790, i32 undef)  ; BufferLoad(srv,index,wot)
  %5792 = extractvalue %dx.types.ResRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.ResRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.ResRet.f32 %5791, 2
  %5795 = add i32 %5790, 12
  %5796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5795, i32 undef)  ; BufferLoad(srv,index,wot)
  %5797 = extractvalue %dx.types.ResRet.i32 %5796, 0
  %5798 = add i32 %5790, 16
  %5799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5798, i32 undef)  ; BufferLoad(srv,index,wot)
  %5800 = extractvalue %dx.types.ResRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.ResRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.ResRet.f32 %5799, 2
  %5803 = add i32 %5790, 28
  %5804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5803, i32 undef)  ; BufferLoad(srv,index,wot)
  %5805 = extractvalue %dx.types.ResRet.f32 %5804, 0
  %5806 = add i32 %5790, 32
  %5807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5806, i32 undef)  ; BufferLoad(srv,index,wot)
  %5808 = extractvalue %dx.types.ResRet.f32 %5807, 0
  %5809 = extractvalue %dx.types.ResRet.f32 %5807, 1
  %5810 = extractvalue %dx.types.ResRet.f32 %5807, 2
  %5811 = extractvalue %dx.types.ResRet.f32 %5807, 3
  %5812 = add i32 %5790, 48
  %5813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5812, i32 undef)  ; BufferLoad(srv,index,wot)
  %5814 = extractvalue %dx.types.ResRet.f32 %5813, 0
  %5815 = extractvalue %dx.types.ResRet.f32 %5813, 1
  %5816 = add i32 %5790, 56
  %5817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5816, i32 undef)  ; BufferLoad(srv,index,wot)
  %5818 = extractvalue %dx.types.ResRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.ResRet.f32 %5817, 1
  %5820 = add i32 %5790, 64
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.ResRet.f32 %5821, 1
  %5824 = mul i32 %5786, 60
  %5825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5824, i32 undef)  ; BufferLoad(srv,index,wot)
  %5826 = extractvalue %dx.types.ResRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.ResRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.ResRet.f32 %5825, 2
  %5829 = add i32 %5824, 12
  %5830 = add i32 %5824, 48
  %5831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5830, i32 undef)  ; BufferLoad(srv,index,wot)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = and i32 %5797, 32767
  %5836 = bitcast float %5792 to i32
  %5837 = icmp eq i32 %5836, -1
  %5838 = bitcast float %5793 to i32
  %5839 = and i32 %5797, 32768
  %5840 = icmp ne i32 %5839, 0
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 0
  %5843 = extractvalue %dx.types.CBufRet.f32 %5841, 1
  %5844 = extractvalue %dx.types.CBufRet.f32 %5841, 2
  %5845 = fsub fast float %5826, %5842
  %5846 = fsub fast float %5827, %5843
  %5847 = fsub fast float %5828, %5844
  %5848 = fsub fast float %170, %5845
  %5849 = fsub fast float %171, %5846
  %5850 = fsub fast float %172, %5847
  %5851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5829, i32 undef)  ; BufferLoad(srv,index,wot)
  %5852 = extractvalue %dx.types.ResRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.ResRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.ResRet.f32 %5851, 2
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5849, float %5850, float %5852, float %5853, float %5854)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = add i32 %5824, 24
  %5857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5856, i32 undef)  ; BufferLoad(srv,index,wot)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5849, float %5850, float %5858, float %5859, float %5860)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = add i32 %5824, 36
  %5863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5862, i32 undef)  ; BufferLoad(srv,index,wot)
  %5864 = extractvalue %dx.types.ResRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.ResRet.f32 %5863, 1
  %5866 = extractvalue %dx.types.ResRet.f32 %5863, 2
  %5867 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5849, float %5850, float %5864, float %5865, float %5866)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = call float @dx.op.unary.f32(i32 6, float %5855)  ; FAbs(value)
  %5869 = call float @dx.op.unary.f32(i32 6, float %5861)  ; FAbs(value)
  %5870 = call float @dx.op.unary.f32(i32 6, float %5867)  ; FAbs(value)
  %5871 = fsub fast float %5832, %5868
  %5872 = fsub fast float %5833, %5869
  %5873 = fsub fast float %5834, %5870
  %5874 = fmul fast float %5871, %5800
  %5875 = fmul fast float %5872, %5801
  %5876 = fmul fast float %5873, %5802
  %5877 = call float @dx.op.binary.f32(i32 36, float %5875, float %5876)  ; FMin(a,b)
  %5878 = call float @dx.op.binary.f32(i32 36, float %5874, float %5877)  ; FMin(a,b)
  %5879 = call float @dx.op.unary.f32(i32 7, float %5878)  ; Saturate(value)
  %5880 = call float @dx.op.binary.f32(i32 36, float %5783, float %5879)  ; FMin(a,b)
  %5881 = uitofp i1 %5840 to float
  %5882 = fadd fast float %5698, 1.000000e+00
  %5883 = fsub fast float %5882, %5881
  %5884 = fmul fast float %5880, %5883
  %5885 = fcmp fast ogt float %5884, 0.000000e+00
  br i1 %5885, label %5892, label %5886

; <label>:5886                                    ; preds = %6034, %5779
  %5887 = phi float [ %6098, %6034 ], [ %5780, %5779 ]
  %5888 = phi float [ %6099, %6034 ], [ %5781, %5779 ]
  %5889 = phi float [ %6100, %6034 ], [ %5782, %5779 ]
  %5890 = phi float [ %6101, %6034 ], [ %5783, %5779 ]
  %5891 = icmp eq i32 %5784, %5788
  br i1 %5891, label %6102, label %5779

; <label>:5892                                    ; preds = %5779
  br i1 %5837, label %5950, label %5893

; <label>:5893                                    ; preds = %5892
  %5894 = fsub fast float -0.000000e+00, %5852
  %5895 = fsub fast float -0.000000e+00, %5853
  %5896 = fsub fast float -0.000000e+00, %5854
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = fsub fast float -0.000000e+00, %5897
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5849, float %5850, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = fadd fast float %5899, %5815
  %5901 = fadd fast float %5814, %5899
  %5902 = fsub fast float -0.000000e+00, %5901
  %5903 = fcmp ogt float %5897, -0.000000e+00
  %5904 = select i1 %5903, float %5902, float %5900
  %5905 = call float @dx.op.unary.f32(i32 6, float %5898)  ; FAbs(value)
  %5906 = fdiv fast float 1.000000e+00, %5905
  %5907 = fmul fast float %5904, %5906
  %5908 = call float @dx.op.binary.f32(i32 35, float %5907, float 0.000000e+00)  ; FMax(a,b)
  %5909 = fsub fast float -0.000000e+00, %5858
  %5910 = fsub fast float -0.000000e+00, %5859
  %5911 = fsub fast float -0.000000e+00, %5860
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5909, float %5910, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = fsub fast float -0.000000e+00, %5912
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5849, float %5850, float %5909, float %5910, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fadd fast float %5914, %5819
  %5916 = fadd fast float %5818, %5914
  %5917 = fsub fast float -0.000000e+00, %5916
  %5918 = fcmp ogt float %5912, -0.000000e+00
  %5919 = select i1 %5918, float %5917, float %5915
  %5920 = call float @dx.op.unary.f32(i32 6, float %5913)  ; FAbs(value)
  %5921 = fdiv fast float 1.000000e+00, %5920
  %5922 = fmul fast float %5919, %5921
  %5923 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5924 = fsub fast float -0.000000e+00, %5864
  %5925 = fsub fast float -0.000000e+00, %5865
  %5926 = fsub fast float -0.000000e+00, %5866
  %5927 = call float @dx.op.dot3.f32(i32 55, float %5732, float %5733, float %5734, float %5924, float %5925, float %5926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = fsub fast float -0.000000e+00, %5927
  %5929 = call float @dx.op.dot3.f32(i32 55, float %5848, float %5849, float %5850, float %5924, float %5925, float %5926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = fadd fast float %5929, %5823
  %5931 = fadd fast float %5822, %5929
  %5932 = fsub fast float -0.000000e+00, %5931
  %5933 = fcmp ogt float %5927, -0.000000e+00
  %5934 = select i1 %5933, float %5932, float %5930
  %5935 = call float @dx.op.unary.f32(i32 6, float %5928)  ; FAbs(value)
  %5936 = fdiv fast float 1.000000e+00, %5935
  %5937 = fmul fast float %5934, %5936
  %5938 = call float @dx.op.binary.f32(i32 35, float %5937, float 0.000000e+00)  ; FMax(a,b)
  %5939 = call float @dx.op.binary.f32(i32 36, float %5923, float %5938)  ; FMin(a,b)
  %5940 = call float @dx.op.binary.f32(i32 36, float %5908, float %5939)  ; FMin(a,b)
  %5941 = fmul fast float %5940, %5732
  %5942 = fmul fast float %5940, %5733
  %5943 = fmul fast float %5940, %5734
  %5944 = fadd fast float %5941, %170
  %5945 = fadd fast float %5942, %171
  %5946 = fadd fast float %5943, %172
  %5947 = fsub fast float %5944, %5792
  %5948 = fsub fast float %5945, %5793
  %5949 = fsub fast float %5946, %5794
  br label %5957

; <label>:5950                                    ; preds = %5892
  %5951 = fmul fast float %5732, 8.096000e+03
  %5952 = fmul fast float %5733, 8.096000e+03
  %5953 = fmul fast float %5734, 8.096000e+03
  %5954 = fadd fast float %5951, %170
  %5955 = fadd fast float %5952, %171
  %5956 = fadd fast float %5953, %172
  br label %5957

; <label>:5957                                    ; preds = %5950, %5893
  %5958 = phi float [ %5732, %5950 ], [ %5947, %5893 ]
  %5959 = phi float [ %5733, %5950 ], [ %5948, %5893 ]
  %5960 = phi float [ %5734, %5950 ], [ %5949, %5893 ]
  %5961 = phi float [ %5954, %5950 ], [ %5944, %5893 ]
  %5962 = phi float [ %5955, %5950 ], [ %5945, %5893 ]
  %5963 = phi float [ %5956, %5950 ], [ %5946, %5893 ]
  %5964 = fcmp fast olt float %5811, 1.000000e+00
  br i1 %5964, label %5965, label %5996, !dx.controlflow.hints !100

; <label>:5965                                    ; preds = %5957
  %5966 = fmul fast float %5960, %5809
  %5967 = fmul fast float %5959, %5810
  %5968 = fsub fast float %5966, %5967
  %5969 = fmul fast float %5958, %5810
  %5970 = fmul fast float %5960, %5808
  %5971 = fsub fast float %5969, %5970
  %5972 = fmul fast float %5959, %5808
  %5973 = fmul fast float %5958, %5809
  %5974 = fsub fast float %5972, %5973
  %5975 = fmul fast float %5968, 2.000000e+00
  %5976 = fmul fast float %5971, 2.000000e+00
  %5977 = fmul fast float %5974, 2.000000e+00
  %5978 = fmul fast float %5975, %5811
  %5979 = fmul fast float %5976, %5811
  %5980 = fmul fast float %5977, %5811
  %5981 = fmul fast float %5977, %5809
  %5982 = fmul fast float %5976, %5810
  %5983 = fmul fast float %5975, %5810
  %5984 = fmul fast float %5977, %5808
  %5985 = fmul fast float %5976, %5808
  %5986 = fmul fast float %5975, %5809
  %5987 = fadd fast float %5981, %5958
  %5988 = fadd fast float %5987, %5978
  %5989 = fsub fast float %5988, %5982
  %5990 = fsub fast float %5959, %5984
  %5991 = fadd fast float %5990, %5979
  %5992 = fadd fast float %5991, %5983
  %5993 = fadd fast float %5980, %5960
  %5994 = fsub fast float %5993, %5986
  %5995 = fadd fast float %5994, %5985
  br label %5996

; <label>:5996                                    ; preds = %5965, %5957
  %5997 = phi float [ %5989, %5965 ], [ %5958, %5957 ]
  %5998 = phi float [ %5992, %5965 ], [ %5959, %5957 ]
  %5999 = phi float [ %5995, %5965 ], [ %5960, %5957 ]
  br i1 %5837, label %6031, label %6000

; <label>:6000                                    ; preds = %5996
  %6001 = fmul fast float %5325, 0x400187C840000000
  %6002 = fadd fast float %6001, 0xC00EFC2120000000
  %6003 = fmul fast float %6002, %5325
  %6004 = fadd fast float %6003, 0x3FE5D16340000000
  %6005 = fmul fast float %6004, %5325
  %6006 = fadd fast float %6005, 1.000000e+00
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6008 = fsub fast float %5961, %170
  %6009 = fsub fast float %5962, %171
  %6010 = fsub fast float %5963, %172
  %6011 = fsub fast float %5961, %5792
  %6012 = fsub fast float %5962, %5793
  %6013 = fsub fast float %5963, %5794
  %6014 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6009, float %6010, float %6008, float %6009, float %6010)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = call float @dx.op.dot3.f32(i32 55, float %6011, float %6012, float %6013, float %6011, float %6012, float %6013)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = fadd fast float %6015, 0x3EE4F8B580000000
  %6017 = fdiv fast float %6014, %6016
  %6018 = bitcast float %6017 to i32
  %6019 = ashr i32 %6018, 1
  %6020 = add nsw i32 %6019, 532487669
  %6021 = bitcast i32 %6020 to float
  %6022 = fmul fast float %6021, %6007
  %6023 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  %6024 = fmul fast float %6023, 0x4009981AE0000000
  %6025 = fsub fast float 0x40111BBD80000000, %6024
  %6026 = fmul fast float %6025, %6023
  %6027 = fadd fast float %6026, 0xC0009F6020000000
  %6028 = fmul fast float %6027, %6023
  %6029 = fadd fast float %6028, 1.000000e+00
  %6030 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  br label %6034

; <label>:6031                                    ; preds = %5996
  %6032 = icmp ne i32 %5838, -1
  %6033 = zext i1 %6032 to i32
  br label %6034

; <label>:6034                                    ; preds = %6031, %6000
  %6035 = phi float [ %5325, %6031 ], [ %6030, %6000 ]
  %6036 = phi i32 [ %6033, %6031 ], [ 0, %6000 ]
  %6037 = fmul float %6035, 5.000000e+00
  %6038 = fsub float 5.000000e+00, %6037
  %6039 = icmp ne i32 %6036, 0
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 3
  %6042 = fadd fast float %6041, %6038
  %6043 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6042)  ; FMax(a,b)
  %6044 = call float @dx.op.unary.f32(i32 6, float %5997)  ; FAbs(value)
  %6045 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6046 = fadd fast float %6045, %6044
  %6047 = call float @dx.op.unary.f32(i32 6, float %5999)  ; FAbs(value)
  %6048 = fadd fast float %6046, %6047
  %6049 = fcmp fast oeq float %6048, 0.000000e+00
  %6050 = fdiv fast float 1.000000e+00, %6048
  %6051 = select i1 %6049, float 1.000000e+00, float %6050
  %6052 = fmul fast float %6051, %5997
  %6053 = fmul fast float %6051, %5998
  %6054 = call float @dx.op.unary.f32(i32 6, float %6053)  ; FAbs(value)
  %6055 = call float @dx.op.unary.f32(i32 6, float %6052)  ; FAbs(value)
  %6056 = fsub fast float 1.000000e+00, %6054
  %6057 = fsub fast float 1.000000e+00, %6055
  %6058 = fcmp fast oge float %6052, 0.000000e+00
  %6059 = fcmp fast oge float %6053, 0.000000e+00
  %6060 = select i1 %6058, float 1.000000e+00, float -1.000000e+00
  %6061 = select i1 %6059, float 1.000000e+00, float -1.000000e+00
  %6062 = fcmp fast ole float %5999, 0.000000e+00
  %6063 = fmul fast float %6060, %6056
  %6064 = fmul fast float %6061, %6057
  %6065 = select i1 %6062, float %6063, float %6052
  %6066 = select i1 %6062, float %6064, float %6053
  %6067 = fmul fast float %6065, 5.000000e-01
  %6068 = fmul fast float %6066, 5.000000e-01
  %6069 = fadd fast float %6067, 5.000000e-01
  %6070 = fadd fast float %6068, 5.000000e-01
  %6071 = uitofp i32 %5835 to float
  %6072 = call float @dx.op.binary.f32(i32 36, float %6043, float 3.000000e+00)  ; FMin(a,b)
  %6073 = fadd fast float %6072, 2.000000e+00
  %6074 = call float @dx.op.unary.f32(i32 21, float %6073)  ; Exp(value)
  %6075 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6076 = fmul fast float %6075, %6074
  %6077 = fmul fast float %6076, 2.000000e+00
  %6078 = fsub fast float 1.000000e+00, %6077
  %6079 = fmul fast float %6069, %6078
  %6080 = fmul fast float %6070, %6078
  %6081 = fadd fast float %6079, %6076
  %6082 = fadd fast float %6080, %6076
  %6083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6081, float %6082, float %6071, float undef, i32 0, i32 0, i32 undef, float %6043)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.ResRet.f32 %6083, 2
  %6087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6088 = extractvalue %dx.types.CBufRet.f32 %6087, 3
  %6089 = fmul fast float %6088, %5805
  %6090 = call float @dx.op.binary.f32(i32 36, float %5357, float %6089)  ; FMin(a,b)
  %6091 = select i1 %6039, float %6090, float %6089
  %6092 = fmul fast float %6084, %5884
  %6093 = fmul fast float %6092, %6091
  %6094 = fmul fast float %6085, %5884
  %6095 = fmul fast float %6094, %6091
  %6096 = fmul fast float %6086, %5884
  %6097 = fmul fast float %6096, %6091
  %6098 = fadd fast float %6093, %5780
  %6099 = fadd fast float %6095, %5781
  %6100 = fadd fast float %6097, %5782
  %6101 = fsub fast float %5783, %5884
  br label %5886

; <label>:6102                                    ; preds = %5886
  br label %6103

; <label>:6103                                    ; preds = %6102, %5749
  %6104 = phi float [ %5750, %5749 ], [ %5887, %6102 ]
  %6105 = phi float [ %5751, %5749 ], [ %5888, %6102 ]
  %6106 = phi float [ %5752, %5749 ], [ %5889, %6102 ]
  %6107 = phi float [ %5753, %5749 ], [ %5890, %6102 ]
  %6108 = add i32 %5754, 1
  %6109 = icmp ugt i32 %6108, %5746
  br i1 %6109, label %6110, label %5749, !llvm.loop !101

; <label>:6110                                    ; preds = %6103
  br label %6111

; <label>:6111                                    ; preds = %6110, %5731
  %6112 = phi float [ 0.000000e+00, %5731 ], [ %6104, %6110 ]
  %6113 = phi float [ 0.000000e+00, %5731 ], [ %6105, %6110 ]
  %6114 = phi float [ 0.000000e+00, %5731 ], [ %6106, %6110 ]
  %6115 = call float @dx.op.dot3.f32(i32 55, float %6112, float %6113, float %6114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6116 = select i1 %232, float 0.000000e+00, float %6112
  %6117 = select i1 %232, float %6115, float %6113
  %6118 = select i1 %232, float 0.000000e+00, float %6114
  %6119 = fcmp fast olt float %5657, 0.000000e+00
  %6120 = call float @dx.op.unary.f32(i32 6, float %5657)  ; FAbs(value)
  %6121 = fmul fast float %6120, %5597
  %6122 = fmul fast float %6120, %5598
  %6123 = fmul fast float %6120, %5599
  %6124 = select i1 %6119, float %5597, float %6121
  %6125 = select i1 %6119, float %5598, float %6122
  %6126 = select i1 %6119, float %5599, float %6123
  %6127 = fsub fast float 1.000000e+00, %6120
  %6128 = call float @dx.op.unary.f32(i32 7, float %6127)  ; Saturate(value)
  %6129 = fmul fast float %6128, %6116
  %6130 = fmul fast float %6128, %6117
  %6131 = fmul fast float %6128, %6118
  %6132 = fadd fast float %6124, %6129
  %6133 = fadd fast float %6125, %6130
  %6134 = fadd fast float %6126, %6131
  br label %6135

; <label>:6135                                    ; preds = %6111, %5640
  %6136 = phi float [ %5597, %5640 ], [ %6132, %6111 ]
  %6137 = phi float [ %5598, %5640 ], [ %6133, %6111 ]
  %6138 = phi float [ %5599, %5640 ], [ %6134, %6111 ]
  %6139 = call float @dx.op.dot3.f32(i32 55, float %5316, float %5317, float %5318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = fcmp fast ogt float %6139, 0x3E7FF19E20000000
  %6141 = fdiv fast float 1.000000e+00, %6139
  %6142 = select i1 %6140, float %6141, float 0.000000e+00
  %6143 = fmul fast float %6142, %5316
  %6144 = fmul fast float %6142, %5317
  %6145 = fmul fast float %6142, %5318
  %6146 = fadd fast float %6143, -1.000000e+00
  %6147 = fadd fast float %6144, -1.000000e+00
  %6148 = fadd fast float %6145, -1.000000e+00
  %6149 = fmul fast float %6146, 5.000000e-01
  %6150 = fmul fast float %6147, 5.000000e-01
  %6151 = fmul fast float %6148, 5.000000e-01
  %6152 = fadd fast float %6149, 1.000000e+00
  %6153 = fadd fast float %6150, 1.000000e+00
  %6154 = fadd fast float %6151, 1.000000e+00
  %6155 = fmul fast float %5646, %4738
  %6156 = fmul fast float %5646, %4739
  %6157 = fmul fast float %5646, %4740
  %6158 = fadd fast float %6155, -1.000000e+00
  %6159 = fadd fast float %6156, -1.000000e+00
  %6160 = fadd fast float %6157, -1.000000e+00
  %6161 = fmul fast float %6158, %4645
  %6162 = fmul fast float %6159, %4645
  %6163 = fmul fast float %6160, %4645
  %6164 = fmul fast float %6136, %5641
  %6165 = fmul fast float %6137, %5642
  %6166 = fmul fast float %6138, %5643
  %6167 = fsub fast float 1.000000e+00, %5330
  %6168 = bitcast float %6167 to i32
  %6169 = sitofp i32 %6168 to float
  %6170 = fmul fast float %6169, 5.000000e+00
  %6171 = fadd fast float %6170, 0xC1EFBF8940000000
  %6172 = fptosi float %6171 to i32
  %6173 = bitcast i32 %6172 to float
  %6174 = fmul fast float %6173, %4649
  %6175 = fmul fast float %5589, %6174
  %6176 = fmul fast float %6175, %5646
  %6177 = fmul fast float %6176, %6152
  %6178 = fmul fast float %5590, %6174
  %6179 = fmul fast float %6178, %5646
  %6180 = fmul fast float %6179, %6153
  %6181 = fmul fast float %5591, %6174
  %6182 = fmul fast float %6181, %5646
  %6183 = fmul fast float %6182, %6154
  %6184 = fadd fast float %6164, %4632
  %6185 = fadd fast float %6184, %6177
  %6186 = fmul fast float %6185, %4645
  %6187 = fadd fast float %6165, %4633
  %6188 = fadd fast float %6187, %6180
  %6189 = fmul fast float %6188, %4645
  %6190 = fadd fast float %6166, %4634
  %6191 = fadd fast float %6190, %6183
  %6192 = fmul fast float %6191, %4645
  %6193 = fadd fast float %6163, 1.000000e+00
  %6194 = fadd fast float %6162, 1.000000e+00
  %6195 = fadd fast float %6161, 1.000000e+00
  %6196 = fmul fast float %5646, %5591
  %6197 = fmul fast float %5646, %5590
  %6198 = fmul fast float %5646, %5589
  %6199 = fmul fast float %6195, %5593
  %6200 = fmul fast float %6194, %5594
  %6201 = fmul fast float %6193, %5595
  %6202 = fadd fast float %6199, %6198
  %6203 = fmul fast float %6202, %4645
  %6204 = fadd fast float %6200, %6197
  %6205 = fmul fast float %6204, %4645
  %6206 = fadd fast float %6201, %6196
  %6207 = fmul fast float %6206, %4645
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 3
  %6210 = fcmp fast oeq float %6209, 0.000000e+00
  br i1 %6210, label %7806, label %6211

; <label>:6211                                    ; preds = %6135
  %6212 = extractvalue %dx.types.CBufRet.f32 %6208, 0
  %6213 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6214 = extractvalue %dx.types.CBufRet.f32 %6208, 2
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6220 = extractvalue %dx.types.CBufRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.CBufRet.f32 %6219, 1
  %6222 = call float @dx.op.dot3.f32(i32 55, float %6216, float %6217, float %6218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6223 = select i1 %232, float %6220, float %6216
  %6224 = select i1 %232, float %6222, float %6217
  %6225 = select i1 %232, float %6221, float %6218
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6228 = fmul fast float %6227, %120
  %6229 = fmul fast float %6227, %122
  %6230 = fmul fast float %6227, %124
  %6231 = fadd fast float %6228, %170
  %6232 = fadd fast float %6229, %171
  %6233 = fadd fast float %6230, %172
  %6234 = fcmp fast olt float %6209, 0.000000e+00
  br i1 %6234, label %7330, label %6235

; <label>:6235                                    ; preds = %6211
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6240 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = extractvalue %dx.types.CBufRet.f32 %6246, 3
  %6251 = fmul fast float %6237, %6231
  %6252 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6238, float %6251)  ; FMad(a,b,c)
  %6253 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6239, float %6252)  ; FMad(a,b,c)
  %6254 = fadd fast float %6253, %6240
  %6255 = fmul fast float %6242, %6231
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6243, float %6255)  ; FMad(a,b,c)
  %6257 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6244, float %6256)  ; FMad(a,b,c)
  %6258 = fadd fast float %6257, %6245
  %6259 = fmul fast float %6247, %6231
  %6260 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6248, float %6259)  ; FMad(a,b,c)
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6249, float %6260)  ; FMad(a,b,c)
  %6262 = fadd fast float %6261, %6250
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = extractvalue %dx.types.CBufRet.f32 %6263, 1
  %6266 = extractvalue %dx.types.CBufRet.f32 %6263, 3
  %6267 = fmul fast float %6266, %6254
  %6268 = fmul fast float %6266, %6258
  %6269 = fadd fast float %6267, %6264
  %6270 = fadd fast float %6268, %6265
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6275 = fmul fast float %6274, %6254
  %6276 = fmul fast float %6274, %6258
  %6277 = fadd fast float %6275, %6272
  %6278 = fadd fast float %6276, %6273
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 1
  %6281 = fsub fast float %6280, %6262
  %6282 = extractvalue %dx.types.CBufRet.f32 %6279, 2
  %6283 = fmul fast float %6281, %6282
  %6284 = fsub fast float 1.000000e+00, %6283
  %6285 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 2
  %6289 = fadd fast float %6288, %6286
  %6290 = fcmp fast ogt float %6289, 0.000000e+00
  br i1 %6290, label %6291, label %6315

; <label>:6291                                    ; preds = %6235
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.CBufRet.f32 %6292, 1
  %6295 = fsub fast float %6277, %6293
  %6296 = fsub fast float %6278, %6294
  %6297 = fcmp fast olt float %6295, 0.000000e+00
  %6298 = fcmp fast olt float %6296, 0.000000e+00
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.CBufRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.CBufRet.f32 %6299, 2
  %6303 = extractvalue %dx.types.CBufRet.f32 %6299, 3
  %6304 = select i1 %6297, float %6300, float %6302
  %6305 = select i1 %6298, float %6301, float %6303
  %6306 = fmul fast float %6304, %6295
  %6307 = fmul fast float %6305, %6296
  %6308 = call float @dx.op.unary.f32(i32 6, float %6306)  ; FAbs(value)
  %6309 = call float @dx.op.unary.f32(i32 6, float %6307)  ; FAbs(value)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6311 = call float @dx.op.binary.f32(i32 35, float %6308, float %6309)  ; FMax(a,b)
  %6312 = fsub fast float %6310, %6311
  %6313 = call float @dx.op.unary.f32(i32 7, float %6312)  ; Saturate(value)
  %6314 = fmul fast float %6313, %6285
  br label %6315

; <label>:6315                                    ; preds = %6291, %6235
  %6316 = phi float [ %6314, %6291 ], [ 0.000000e+00, %6235 ]
  %6317 = extractvalue %dx.types.CBufRet.f32 %6263, 2
  %6318 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6319 = fadd fast float %6318, %6317
  %6320 = fcmp fast ogt float %6319, 0.000000e+00
  %6321 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  br i1 %6320, label %6322, label %6345

; <label>:6322                                    ; preds = %6315
  %6323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.f32 %6323, 0
  %6325 = extractvalue %dx.types.CBufRet.f32 %6323, 1
  %6326 = fsub fast float %6269, %6324
  %6327 = fsub fast float %6270, %6325
  %6328 = fcmp fast olt float %6326, 0.000000e+00
  %6329 = fcmp fast olt float %6327, 0.000000e+00
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6334 = extractvalue %dx.types.CBufRet.f32 %6330, 3
  %6335 = select i1 %6328, float %6331, float %6333
  %6336 = select i1 %6329, float %6332, float %6334
  %6337 = fmul fast float %6335, %6326
  %6338 = fmul fast float %6336, %6327
  %6339 = call float @dx.op.unary.f32(i32 6, float %6337)  ; FAbs(value)
  %6340 = call float @dx.op.unary.f32(i32 6, float %6338)  ; FAbs(value)
  %6341 = call float @dx.op.binary.f32(i32 35, float %6339, float %6340)  ; FMax(a,b)
  %6342 = fsub fast float %6321, %6341
  %6343 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6344 = fmul fast float %6343, %6285
  br label %6345

; <label>:6345                                    ; preds = %6322, %6315
  %6346 = phi float [ %6344, %6322 ], [ 0.000000e+00, %6315 ]
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6349 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = fsub fast float %6254, %6351
  %6354 = fsub fast float %6258, %6352
  %6355 = fcmp fast olt float %6353, 0.000000e+00
  %6356 = fcmp fast olt float %6354, 0.000000e+00
  %6357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.f32 %6357, 0
  %6359 = extractvalue %dx.types.CBufRet.f32 %6357, 1
  %6360 = extractvalue %dx.types.CBufRet.f32 %6357, 2
  %6361 = extractvalue %dx.types.CBufRet.f32 %6357, 3
  %6362 = select i1 %6355, float %6358, float %6360
  %6363 = select i1 %6356, float %6359, float %6361
  %6364 = fmul fast float %6362, %6353
  %6365 = fmul fast float %6363, %6354
  %6366 = call float @dx.op.unary.f32(i32 6, float %6364)  ; FAbs(value)
  %6367 = call float @dx.op.unary.f32(i32 6, float %6365)  ; FAbs(value)
  %6368 = call float @dx.op.binary.f32(i32 35, float %6366, float %6367)  ; FMax(a,b)
  %6369 = fsub fast float %6321, %6368
  %6370 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6371 = call float @dx.op.binary.f32(i32 36, float %6370, float %6349)  ; FMin(a,b)
  %6372 = fmul fast float %6371, %6285
  %6373 = fsub fast float %6346, %6372
  %6374 = fsub fast float %6316, %6346
  %6375 = fsub fast float %6374, %6372
  %6376 = call float @dx.op.binary.f32(i32 35, float %6346, float %6316)  ; FMax(a,b)
  %6377 = call float @dx.op.binary.f32(i32 35, float %6372, float %6376)  ; FMax(a,b)
  %6378 = fcmp fast olt float %6377, 1.000000e+00
  br i1 %6378, label %6379, label %6777, !dx.controlflow.hints !103

; <label>:6379                                    ; preds = %6345
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 0
  %6382 = fcmp fast une float %6381, 0.000000e+00
  br i1 %6382, label %6383, label %6777, !dx.controlflow.hints !104

; <label>:6383                                    ; preds = %6379
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6388 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6399 = fmul fast float %6385, %6231
  %6400 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6386, float %6399)  ; FMad(a,b,c)
  %6401 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6387, float %6400)  ; FMad(a,b,c)
  %6402 = fadd fast float %6401, %6388
  %6403 = fmul fast float %6390, %6231
  %6404 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6391, float %6403)  ; FMad(a,b,c)
  %6405 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6392, float %6404)  ; FMad(a,b,c)
  %6406 = fadd fast float %6405, %6393
  %6407 = fmul fast float %6395, %6231
  %6408 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %6396, float %6407)  ; FMad(a,b,c)
  %6409 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %6397, float %6408)  ; FMad(a,b,c)
  %6410 = fadd fast float %6409, %6398
  %6411 = fcmp fast oge float %6402, 1.000000e+00
  %6412 = fcmp fast oge float %6406, 1.000000e+00
  %6413 = or i1 %6411, %6412
  %6414 = fcmp fast olt float %6402, 0.000000e+00
  %6415 = fcmp fast olt float %6406, 0.000000e+00
  %6416 = or i1 %6414, %6415
  %6417 = or i1 %6413, %6416
  br i1 %6417, label %6777, label %6418, !dx.controlflow.hints !105

; <label>:6418                                    ; preds = %6383
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 0
  %6421 = extractvalue %dx.types.CBufRet.f32 %6419, 1
  %6422 = extractvalue %dx.types.CBufRet.f32 %6419, 2
  %6423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6424 = extractvalue %dx.types.CBufRet.i32 %6423, 2
  %6425 = uitofp i32 %6424 to float
  %6426 = extractvalue %dx.types.CBufRet.i32 %6423, 3
  %6427 = uitofp i32 %6426 to float
  %6428 = extractvalue %dx.types.CBufRet.f32 %6419, 3
  %6429 = fmul fast float %6428, 2.000000e+00
  %6430 = fsub fast float %6402, %6420
  %6431 = fsub fast float %6406, %6421
  %6432 = fmul fast float %6429, %6430
  %6433 = fmul fast float %6429, %6431
  %6434 = fdiv fast float 1.000000e+00, %6214
  %6435 = fmul fast float %6433, %6434
  %6436 = call float @dx.op.unary.f32(i32 6, float %6435)  ; FAbs(value)
  %6437 = fmul fast float %6422, %6233
  %6438 = fmul fast float %6437, %6429
  %6439 = call float @dx.op.unary.f32(i32 6, float %6438)  ; FAbs(value)
  %6440 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6441 = call float @dx.op.binary.f32(i32 35, float %6439, float %6436)  ; FMax(a,b)
  %6442 = call float @dx.op.binary.f32(i32 35, float %6440, float %6441)  ; FMax(a,b)
  %6443 = fmul fast float %6442, 2.000000e+00
  %6444 = call float @dx.op.unary.f32(i32 23, float %6443)  ; Log(value)
  %6445 = call float @dx.op.binary.f32(i32 35, float %6444, float %6425)  ; FMax(a,b)
  %6446 = call float @dx.op.unary.f32(i32 22, float %6445)  ; Frc(value)
  %6447 = fadd fast float %6446, 0xBFEA666660000000
  %6448 = fmul fast float %6447, 8.000000e+00
  %6449 = call float @dx.op.unary.f32(i32 7, float %6448)  ; Saturate(value)
  %6450 = call float @dx.op.unary.f32(i32 27, float %6445)  ; Round_ni(value)
  %6451 = fadd fast float %6450, %6449
  %6452 = call float @dx.op.binary.f32(i32 36, float %6451, float %6427)  ; FMin(a,b)
  %6453 = call float @dx.op.unary.f32(i32 27, float %6452)  ; Round_ni(value)
  %6454 = fsub fast float -0.000000e+00, %6453
  %6455 = call float @dx.op.unary.f32(i32 21, float %6454)  ; Exp(value)
  %6456 = fmul fast float %6455, %6429
  %6457 = fmul fast float %6456, %6402
  %6458 = fmul fast float %6456, %6406
  %6459 = fmul fast float %6457, 2.500000e-01
  %6460 = fmul fast float %6458, 2.500000e-01
  %6461 = fadd fast float %6459, 5.000000e-01
  %6462 = fadd fast float %6460, 5.000000e-01
  %6463 = fsub fast float %6427, %6425
  %6464 = fptoui float %6463 to i32
  %6465 = add i32 %6464, 320
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6465)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6469 = fcmp fast une float %6452, %6427
  %6470 = fsub fast float %6402, %6467
  %6471 = fsub fast float %6406, %6468
  %6472 = call float @dx.op.unary.f32(i32 6, float %6470)  ; FAbs(value)
  %6473 = call float @dx.op.unary.f32(i32 6, float %6471)  ; FAbs(value)
  %6474 = fmul fast float %6472, %6456
  %6475 = fmul fast float %6473, %6456
  %6476 = fcmp fast olt float %6474, 1.000000e+00
  %6477 = fcmp fast olt float %6475, 1.000000e+00
  %6478 = and i1 %6476, %6477
  %6479 = or i1 %6469, %6478
  br i1 %6479, label %6480, label %6777, !dx.controlflow.hints !106

; <label>:6480                                    ; preds = %6418
  %6481 = fmul fast float %6458, 5.000000e-01
  %6482 = fmul fast float %6457, 5.000000e-01
  %6483 = fadd fast float %6481, 5.000000e-01
  %6484 = fadd fast float %6482, 5.000000e-01
  %6485 = sitofp i32 %6424 to float
  %6486 = fsub fast float %6452, %6485
  %6487 = call float @dx.op.unary.f32(i32 27, float %6486)  ; Round_ni(value)
  %6488 = call float @dx.op.unary.f32(i32 22, float %6452)  ; Frc(value)
  %6489 = call float @dx.op.unary.f32(i32 22, float %6484)  ; Frc(value)
  %6490 = call float @dx.op.unary.f32(i32 22, float %6483)  ; Frc(value)
  %6491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6489, float %6490, float %6487, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6492 = extractvalue %dx.types.ResRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.ResRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.ResRet.f32 %6491, 2
  %6495 = extractvalue %dx.types.ResRet.f32 %6491, 3
  %6496 = fcmp fast ogt float %6488, 0.000000e+00
  br i1 %6496, label %6497, label %6518, !dx.controlflow.hints !107

; <label>:6497                                    ; preds = %6480
  %6498 = fadd fast float %6487, 1.000000e+00
  %6499 = call float @dx.op.unary.f32(i32 22, float %6461)  ; Frc(value)
  %6500 = call float @dx.op.unary.f32(i32 22, float %6462)  ; Frc(value)
  %6501 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6499, float %6500, float %6498, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6502 = extractvalue %dx.types.ResRet.f32 %6501, 0
  %6503 = extractvalue %dx.types.ResRet.f32 %6501, 1
  %6504 = extractvalue %dx.types.ResRet.f32 %6501, 2
  %6505 = extractvalue %dx.types.ResRet.f32 %6501, 3
  %6506 = fsub fast float %6502, %6492
  %6507 = fsub fast float %6503, %6493
  %6508 = fsub fast float %6504, %6494
  %6509 = fsub fast float %6505, %6495
  %6510 = fmul fast float %6506, %6488
  %6511 = fmul fast float %6507, %6488
  %6512 = fmul fast float %6508, %6488
  %6513 = fmul fast float %6509, %6488
  %6514 = fadd fast float %6510, %6492
  %6515 = fadd fast float %6511, %6493
  %6516 = fadd fast float %6512, %6494
  %6517 = fadd fast float %6513, %6495
  br label %6518

; <label>:6518                                    ; preds = %6497, %6480
  %6519 = phi float [ %6514, %6497 ], [ %6492, %6480 ]
  %6520 = phi float [ %6515, %6497 ], [ %6493, %6480 ]
  %6521 = phi float [ %6516, %6497 ], [ %6494, %6480 ]
  %6522 = phi float [ %6517, %6497 ], [ %6495, %6480 ]
  %6523 = fadd fast float %6519, -5.000000e-01
  %6524 = fadd fast float %6521, -5.000000e-01
  %6525 = fmul fast float %6523, 0xBFD5555560000000
  %6526 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6524, float %6525)  ; FMad(a,b,c)
  %6527 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6520, float 0.000000e+00)  ; FMad(a,b,c)
  %6528 = fadd fast float %6527, %6522
  %6529 = fmul fast float %6523, -7.500000e-01
  %6530 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6524, float %6529)  ; FMad(a,b,c)
  %6531 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6520, float 0.000000e+00)  ; FMad(a,b,c)
  %6532 = fadd fast float %6531, %6522
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.CBufRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.CBufRet.f32 %6535, 2
  %6539 = extractvalue %dx.types.CBufRet.f32 %6535, 3
  %6540 = fsub fast float %6536, %6526
  %6541 = fsub fast float %6537, %6528
  %6542 = fsub fast float %6538, %6530
  %6543 = fsub fast float %6539, %6532
  %6544 = fmul fast float %6540, %6534
  %6545 = fmul fast float %6541, %6534
  %6546 = fmul fast float %6542, %6534
  %6547 = fmul fast float %6543, %6534
  %6548 = fadd fast float %6544, %6526
  %6549 = fadd fast float %6545, %6528
  %6550 = fadd fast float %6546, %6530
  %6551 = fadd fast float %6547, %6532
  %6552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6553 = extractvalue %dx.types.ResRet.i32 %6552, 0
  %6554 = and i32 %6553, 536870911
  %6555 = uitofp i32 %6554 to float
  %6556 = fmul fast float %6555, %6402
  %6557 = fmul fast float %6555, %6406
  %6558 = fptoui float %6556 to i32
  %6559 = fptoui float %6557 to i32
  %6560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6561 = extractvalue %dx.types.ResRet.i32 %6560, 0
  %6562 = and i32 %6561, 31
  %6563 = lshr i32 %6558, %6562
  %6564 = lshr i32 %6559, %6562
  %6565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6566 = extractvalue %dx.types.ResRet.i32 %6565, 0
  %6567 = and i32 %6566, 31
  %6568 = shl i32 1, %6567
  %6569 = call i32 @dx.op.binary.i32(i32 40, i32 %6568, i32 4)  ; UMin(a,b)
  %6570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6571 = extractvalue %dx.types.ResRet.i32 %6570, 0
  %6572 = extractvalue %dx.types.ResRet.i32 %6570, 1
  %6573 = icmp eq i32 %6569, 0
  br i1 %6573, label %6615, label %6574

; <label>:6574                                    ; preds = %6518
  br label %6575

; <label>:6575                                    ; preds = %6603, %6574
  %6576 = phi i32 [ %6606, %6603 ], [ 0, %6574 ]
  %6577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6578 = extractvalue %dx.types.ResRet.i32 %6577, 0
  %6579 = lshr i32 %6578, 16
  %6580 = and i32 %6579, 31
  %6581 = shl i32 %6564, %6580
  %6582 = add i32 %6581, %6563
  %6583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6584 = extractvalue %dx.types.ResRet.i32 %6583, 0
  %6585 = and i32 %6584, 31
  %6586 = shl i32 %6582, %6585
  %6587 = add i32 %6586, %6576
  %6588 = shl i32 %6587, 2
  %6589 = add i32 %6588, 32
  %6590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6589, i32 undef)  ; BufferLoad(srv,index,wot)
  %6591 = extractvalue %dx.types.ResRet.i32 %6590, 0
  %6592 = icmp slt i32 %6591, 0
  %6593 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6576
  %6594 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6576
  %6595 = bitcast float* %6593 to i32*
  %6596 = bitcast float* %6594 to i32*
  br i1 %6592, label %6597, label %6603

; <label>:6597                                    ; preds = %6575
  %6598 = and i32 %6591, 1073741823
  %6599 = add nuw nsw i32 %6598, 20
  %6600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6599, i32 undef)  ; BufferLoad(srv,index,wot)
  %6601 = extractvalue %dx.types.ResRet.i32 %6600, 0
  %6602 = extractvalue %dx.types.ResRet.i32 %6600, 1
  br label %6603

; <label>:6603                                    ; preds = %6597, %6575
  %6604 = phi i32 [ %6601, %6597 ], [ %6571, %6575 ]
  %6605 = phi i32 [ %6602, %6597 ], [ %6572, %6575 ]
  store i32 %6604, i32* %6595, align 4
  store i32 %6605, i32* %6596, align 4
  %6606 = add nuw i32 %6576, 1
  %6607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6608 = extractvalue %dx.types.CBufRet.i32 %6607, 2
  %6609 = icmp eq i32 %6608, 0
  %6610 = icmp ugt i32 %6591, -1073741825
  %6611 = and i1 %6610, %6609
  %6612 = icmp ult i32 %6606, %6569
  %6613 = and i1 %6611, %6612
  br i1 %6613, label %6575, label %6614

; <label>:6614                                    ; preds = %6603
  br label %6615

; <label>:6615                                    ; preds = %6614, %6518
  %6616 = phi i32 [ 0, %6518 ], [ %6606, %6614 ]
  %6617 = extractvalue %dx.types.CBufRet.f32 %6380, 2
  %6618 = fptoui float %6617 to i32
  %6619 = icmp eq i32 %6618, 0
  br i1 %6619, label %6671, label %6620

; <label>:6620                                    ; preds = %6615
  br label %6621

; <label>:6621                                    ; preds = %6666, %6620
  %6622 = phi i32 [ %6667, %6666 ], [ %6616, %6620 ]
  %6623 = phi i32 [ %6668, %6666 ], [ 0, %6620 ]
  %6624 = lshr i32 %6623, 2
  %6625 = and i32 %6623, 3
  %6626 = add nuw nsw i32 %6624, 83
  %6627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6626)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.i32 %6627, 0
  %6629 = extractvalue %dx.types.CBufRet.i32 %6627, 1
  %6630 = extractvalue %dx.types.CBufRet.i32 %6627, 2
  %6631 = extractvalue %dx.types.CBufRet.i32 %6627, 3
  %6632 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6628, i32* %6632, align 4
  %6633 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6629, i32* %6633, align 4
  %6634 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6630, i32* %6634, align 4
  %6635 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6631, i32* %6635, align 4
  %6636 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6625
  %6637 = load i32, i32* %6636, align 4, !tbaa !108, !noalias !112
  %6638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6639 = extractvalue %dx.types.ResRet.i32 %6638, 0
  %6640 = lshr i32 %6639, 16
  %6641 = and i32 %6640, 31
  %6642 = shl i32 %6564, %6641
  %6643 = add i32 %6642, %6563
  %6644 = shl i32 %6643, 2
  %6645 = add i32 %6644, %6637
  %6646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6645, i32 undef)  ; BufferLoad(srv,index,wot)
  %6647 = extractvalue %dx.types.ResRet.i32 %6646, 0
  %6648 = icmp eq i32 %6647, 0
  br i1 %6648, label %6666, label %6649

; <label>:6649                                    ; preds = %6621
  %6650 = icmp slt i32 %6647, 0
  %6651 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6622
  %6652 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6622
  %6653 = bitcast float* %6651 to i32*
  %6654 = bitcast float* %6652 to i32*
  br i1 %6650, label %6655, label %6662

; <label>:6655                                    ; preds = %6649
  %6656 = and i32 %6647, 1073741823
  %6657 = add i32 %6637, 20
  %6658 = add i32 %6657, %6656
  %6659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6658, i32 undef)  ; BufferLoad(srv,index,wot)
  %6660 = extractvalue %dx.types.ResRet.i32 %6659, 0
  %6661 = extractvalue %dx.types.ResRet.i32 %6659, 1
  br label %6662

; <label>:6662                                    ; preds = %6655, %6649
  %6663 = phi i32 [ %6660, %6655 ], [ %6571, %6649 ]
  %6664 = phi i32 [ %6661, %6655 ], [ %6572, %6649 ]
  store i32 %6663, i32* %6653, align 4
  store i32 %6664, i32* %6654, align 4
  %6665 = add i32 %6622, 1
  br label %6666

; <label>:6666                                    ; preds = %6662, %6621
  %6667 = phi i32 [ %6622, %6621 ], [ %6665, %6662 ]
  %6668 = add nuw i32 %6623, 1
  %6669 = icmp eq i32 %6668, %6618
  br i1 %6669, label %6670, label %6621

; <label>:6670                                    ; preds = %6666
  br label %6671

; <label>:6671                                    ; preds = %6670, %6615
  %6672 = phi i32 [ %6616, %6615 ], [ %6667, %6670 ]
  %6673 = icmp eq i32 %6672, 1
  %6674 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6675 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6673, label %6676, label %6679

; <label>:6676                                    ; preds = %6671
  %6677 = load float, float* %6674, align 4
  %6678 = load float, float* %6675, align 4
  br label %6706

; <label>:6679                                    ; preds = %6671
  %6680 = load float, float* %6674, align 4
  %6681 = load float, float* %6675, align 4
  %6682 = fdiv fast float 1.000000e+00, %6681
  %6683 = fsub fast float %6680, %6682
  %6684 = icmp ugt i32 %6672, 1
  br i1 %6684, label %6685, label %6701

; <label>:6685                                    ; preds = %6679
  br label %6686

; <label>:6686                                    ; preds = %6686, %6685
  %6687 = phi float [ %6696, %6686 ], [ %6683, %6685 ]
  %6688 = phi float [ %6697, %6686 ], [ %6680, %6685 ]
  %6689 = phi i32 [ %6698, %6686 ], [ 1, %6685 ]
  %6690 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6689
  %6691 = load float, float* %6690, align 4
  %6692 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6689
  %6693 = load float, float* %6692, align 4
  %6694 = fdiv fast float 1.000000e+00, %6693
  %6695 = fsub fast float %6691, %6694
  %6696 = call float @dx.op.binary.f32(i32 36, float %6687, float %6695)  ; FMin(a,b)
  %6697 = call float @dx.op.binary.f32(i32 35, float %6688, float %6691)  ; FMax(a,b)
  %6698 = add nuw i32 %6689, 1
  %6699 = icmp eq i32 %6698, %6672
  br i1 %6699, label %6700, label %6686

; <label>:6700                                    ; preds = %6686
  br label %6701

; <label>:6701                                    ; preds = %6700, %6679
  %6702 = phi float [ %6683, %6679 ], [ %6696, %6700 ]
  %6703 = phi float [ %6680, %6679 ], [ %6697, %6700 ]
  %6704 = fsub fast float %6703, %6702
  %6705 = fdiv fast float 1.000000e+00, %6704
  br label %6706

; <label>:6706                                    ; preds = %6701, %6676
  %6707 = phi float [ %6677, %6676 ], [ %6703, %6701 ]
  %6708 = phi float [ %6678, %6676 ], [ %6705, %6701 ]
  %6709 = fadd fast float %6410, %6707
  %6710 = fmul fast float %6709, %6708
  %6711 = call float @dx.op.unary.f32(i32 7, float %6710)  ; Saturate(value)
  %6712 = fmul fast float %6711, 2.000000e+00
  %6713 = fsub fast float 1.000000e+00, %6712
  %6714 = fmul fast float %6548, %6548
  %6715 = fsub fast float %6549, %6714
  %6716 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6715)  ; FMax(a,b)
  %6717 = fdiv fast float 1.000000e+00, %6716
  %6718 = fmul fast float %6549, %6548
  %6719 = fsub fast float %6550, %6718
  %6720 = fsub fast float %6713, %6548
  %6721 = fmul fast float %6713, %6713
  %6722 = fsub fast float %6721, %6549
  %6723 = fmul fast float %6717, %6719
  %6724 = fmul fast float %6723, %6720
  %6725 = fsub fast float %6722, %6724
  %6726 = fmul fast float %6549, %6549
  %6727 = fsub fast float %6551, %6726
  %6728 = fmul fast float %6719, %6719
  %6729 = fmul fast float %6728, %6717
  %6730 = fsub fast float %6727, %6729
  %6731 = fdiv fast float %6725, %6730
  %6732 = fmul fast float %6731, %6719
  %6733 = fsub fast float %6720, %6732
  %6734 = fmul fast float %6733, %6717
  %6735 = fmul fast float %6734, %6548
  %6736 = fsub fast float 1.000000e+00, %6735
  %6737 = fmul fast float %6731, %6549
  %6738 = fsub fast float %6736, %6737
  %6739 = fmul fast float %6734, %6734
  %6740 = fmul fast float %6731, 4.000000e+00
  %6741 = fmul fast float %6740, %6738
  %6742 = fsub fast float %6739, %6741
  %6743 = call float @dx.op.unary.f32(i32 24, float %6742)  ; Sqrt(value)
  %6744 = fcmp fast oge float %6734, 0.000000e+00
  %6745 = fsub fast float -0.000000e+00, %6743
  %6746 = select i1 %6744, float %6745, float %6743
  %6747 = fsub fast float %6746, %6734
  %6748 = fdiv fast float %6747, %6731
  %6749 = fdiv fast float %6738, %6747
  %6750 = fmul fast float %6748, 5.000000e-01
  %6751 = fmul fast float %6749, 2.000000e+00
  %6752 = select i1 %6744, float %6750, float %6751
  %6753 = select i1 %6744, float %6751, float %6750
  %6754 = call float @dx.op.binary.f32(i32 35, float %6752, float %6753)  ; FMax(a,b)
  %6755 = call float @dx.op.binary.f32(i32 36, float %6752, float %6753)  ; FMin(a,b)
  %6756 = fcmp fast ogt float %6713, %6754
  %6757 = fsub fast float %6713, %6755
  %6758 = fsub fast float %6713, %6754
  %6759 = fsub fast float %6754, %6755
  %6760 = select i1 %6756, float %6758, float %6759
  %6761 = fmul float %6757, %6760
  %6762 = select i1 %6756, float %6755, float %6713
  %6763 = fcmp fast ogt float %6713, %6755
  %6764 = fmul fast float %6762, %6754
  %6765 = fadd fast float %6762, %6754
  %6766 = fmul fast float %6765, %6548
  %6767 = fadd fast float %6764, %6549
  %6768 = fsub fast float %6767, %6766
  %6769 = fdiv fast float %6768, %6761
  %6770 = select i1 %6763, float %6769, float 0.000000e+00
  %6771 = fsub fast float 1.000000e+00, %6770
  %6772 = select i1 %6756, float %6771, float %6770
  %6773 = call float @dx.op.unary.f32(i32 7, float %6772)  ; Saturate(value)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6533, 3
  %6775 = fmul fast float %6774, %6773
  %6776 = fsub fast float 1.000000e+00, %6775
  br label %6777

; <label>:6777                                    ; preds = %6706, %6418, %6383, %6379, %6345
  %6778 = phi float [ 1.000000e+00, %6345 ], [ %6776, %6706 ], [ 1.000000e+00, %6383 ], [ 1.000000e+00, %6418 ], [ 1.000000e+00, %6379 ]
  %6779 = fcmp fast ogt float %6375, 0.000000e+00
  br i1 %6779, label %6780, label %6942, !dx.controlflow.hints !121

; <label>:6780                                    ; preds = %6777
  %6781 = fadd fast float %6288, %6262
  %6782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6783 = extractvalue %dx.types.CBufRet.f32 %6782, 2
  %6784 = extractvalue %dx.types.CBufRet.f32 %6782, 3
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 2
  %6787 = call float @dx.op.binary.f32(i32 35, float %6781, float 0.000000e+00)  ; FMax(a,b)
  %6788 = fadd fast float %6787, 0x3F10000000000000
  %6789 = fcmp fast oeq float %6786, 0.000000e+00
  br i1 %6789, label %6790, label %6857

; <label>:6790                                    ; preds = %6780
  %6791 = extractvalue %dx.types.CBufRet.f32 %6782, 1
  %6792 = extractvalue %dx.types.CBufRet.f32 %6782, 0
  %6793 = fmul fast float %6792, %6277
  %6794 = fmul fast float %6791, %6278
  %6795 = fadd fast float %6793, 5.000000e-01
  %6796 = call float @dx.op.unary.f32(i32 27, float %6795)  ; Round_ni(value)
  %6797 = fadd fast float %6794, 5.000000e-01
  %6798 = call float @dx.op.unary.f32(i32 27, float %6797)  ; Round_ni(value)
  %6799 = fsub fast float %6795, %6796
  %6800 = fsub fast float %6797, %6798
  %6801 = fadd fast float %6796, -5.000000e-01
  %6802 = fadd fast float %6798, -5.000000e-01
  %6803 = fmul fast float %6799, 2.000000e+00
  %6804 = fsub fast float 3.000000e+00, %6803
  %6805 = fadd fast float %6803, 1.000000e+00
  %6806 = fsub fast float 2.000000e+00, %6799
  %6807 = bitcast float %6804 to i32
  %6808 = sub nsw i32 2129859010, %6807
  %6809 = bitcast i32 %6808 to float
  %6810 = fmul fast float %6809, %6806
  %6811 = fadd fast float %6810, -1.000000e+00
  %6812 = bitcast float %6805 to i32
  %6813 = sub nsw i32 2129859010, %6812
  %6814 = bitcast i32 %6813 to float
  %6815 = fmul fast float %6814, %6799
  %6816 = fadd fast float %6815, 1.000000e+00
  %6817 = fmul fast float %6800, 2.000000e+00
  %6818 = fsub fast float 3.000000e+00, %6817
  %6819 = fadd fast float %6817, 1.000000e+00
  %6820 = fsub fast float 2.000000e+00, %6800
  %6821 = bitcast float %6818 to i32
  %6822 = sub nsw i32 2129859010, %6821
  %6823 = bitcast i32 %6822 to float
  %6824 = fmul fast float %6823, %6820
  %6825 = fadd fast float %6824, -1.000000e+00
  %6826 = bitcast float %6819 to i32
  %6827 = sub nsw i32 2129859010, %6826
  %6828 = bitcast i32 %6827 to float
  %6829 = fmul fast float %6828, %6800
  %6830 = fadd fast float %6829, 1.000000e+00
  %6831 = fadd fast float %6811, %6801
  %6832 = fmul fast float %6831, %6783
  %6833 = fadd fast float %6825, %6802
  %6834 = fmul fast float %6833, %6784
  %6835 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6832, float %6834, float undef, float undef, i32 0, i32 0, i32 undef, float %6788)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6836 = extractvalue %dx.types.ResRet.f32 %6835, 0
  %6837 = fmul fast float %6836, %6804
  %6838 = fadd fast float %6816, %6801
  %6839 = fmul fast float %6838, %6783
  %6840 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6839, float %6834, float undef, float undef, i32 0, i32 0, i32 undef, float %6788)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6841 = extractvalue %dx.types.ResRet.f32 %6840, 0
  %6842 = fmul fast float %6841, %6805
  %6843 = fadd fast float %6830, %6802
  %6844 = fmul fast float %6843, %6784
  %6845 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6832, float %6844, float undef, float undef, i32 0, i32 0, i32 undef, float %6788)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6846 = extractvalue %dx.types.ResRet.f32 %6845, 0
  %6847 = fmul fast float %6846, %6804
  %6848 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6839, float %6844, float undef, float undef, i32 0, i32 0, i32 undef, float %6788)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6849 = extractvalue %dx.types.ResRet.f32 %6848, 0
  %6850 = fmul fast float %6849, %6805
  %6851 = fadd fast float %6850, %6847
  %6852 = fmul fast float %6851, %6819
  %6853 = fadd fast float %6842, %6837
  %6854 = fmul fast float %6853, %6818
  %6855 = fadd fast float %6854, %6852
  %6856 = fmul fast float %6855, 6.250000e-02
  br label %6942

; <label>:6857                                    ; preds = %6780
  %6858 = fmul fast float %243, 0x401921FB60000000
  %6859 = call float @dx.op.unary.f32(i32 13, float %6858)  ; Sin(value)
  %6860 = call float @dx.op.unary.f32(i32 12, float %6858)  ; Cos(value)
  %6861 = fsub fast float -0.000000e+00, %6859
  br label %6862

; <label>:6862                                    ; preds = %6911, %6857
  %6863 = phi float [ 0.000000e+00, %6857 ], [ %6906, %6911 ]
  %6864 = phi float [ 0.000000e+00, %6857 ], [ %6908, %6911 ]
  %6865 = phi i32 [ 0, %6857 ], [ %6912, %6911 ]
  %6866 = mul i32 %6865, 2
  %6867 = add i32 0, %6866
  %6868 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6867
  %6869 = load float, float* %6868, align 4
  %6870 = mul i32 %6865, 2
  %6871 = add i32 1, %6870
  %6872 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6871
  %6873 = load float, float* %6872, align 4
  %6874 = fmul fast float %6869, %6860
  %6875 = call float @dx.op.tertiary.f32(i32 46, float %6873, float %6861, float %6874)  ; FMad(a,b,c)
  %6876 = fmul fast float %6869, %6859
  %6877 = call float @dx.op.tertiary.f32(i32 46, float %6873, float %6860, float %6876)  ; FMad(a,b,c)
  %6878 = fmul fast float %6875, %6786
  %6879 = fmul fast float %6877, %6786
  %6880 = fadd fast float %6878, %6277
  %6881 = fadd fast float %6879, %6278
  %6882 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6880, float %6881, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6883 = extractvalue %dx.types.ResRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.ResRet.f32 %6882, 1
  %6885 = extractvalue %dx.types.ResRet.f32 %6882, 2
  %6886 = extractvalue %dx.types.ResRet.f32 %6882, 3
  %6887 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6883, float* %6887, align 4
  %6888 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6884, float* %6888, align 4
  %6889 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6885, float* %6889, align 4
  %6890 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6886, float* %6890, align 4
  %6891 = fsub fast float %6883, %6788
  %6892 = fcmp fast olt float %6891, 0.000000e+00
  %6893 = select i1 %6892, float 0.000000e+00, float 1.000000e+00
  %6894 = fadd fast float %6893, %6863
  %6895 = fmul fast float %6893, %6891
  %6896 = fadd fast float %6895, %6864
  br label %6897

; <label>:6897                                    ; preds = %6897, %6862
  %6898 = phi i32 [ 1, %6862 ], [ %6909, %6897 ]
  %6899 = phi float [ %6896, %6862 ], [ %6908, %6897 ]
  %6900 = phi float [ %6894, %6862 ], [ %6906, %6897 ]
  %6901 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6898
  %6902 = load float, float* %6901, align 4, !tbaa !122, !noalias !112
  %6903 = fsub fast float %6902, %6788
  %6904 = fcmp fast olt float %6903, 0.000000e+00
  %6905 = select i1 %6904, float 0.000000e+00, float 1.000000e+00
  %6906 = fadd fast float %6905, %6900
  %6907 = fmul fast float %6905, %6903
  %6908 = fadd fast float %6907, %6899
  %6909 = add nuw nsw i32 %6898, 1
  %6910 = icmp eq i32 %6909, 4
  br i1 %6910, label %6911, label %6897, !llvm.loop !124

; <label>:6911                                    ; preds = %6897
  %6912 = add nuw nsw i32 %6865, 1
  %6913 = icmp eq i32 %6912, 8
  br i1 %6913, label %6914, label %6862, !llvm.loop !125

; <label>:6914                                    ; preds = %6911
  %6915 = fdiv fast float 1.000000e+00, %6906
  %6916 = fmul fast float %6915, %6908
  %6917 = fdiv fast float 1.000000e+00, %6788
  %6918 = fmul fast float %6916, %6917
  %6919 = call float @dx.op.unary.f32(i32 7, float %6918)  ; Saturate(value)
  %6920 = call float @dx.op.binary.f32(i32 35, float %6919, float 0.000000e+00)  ; FMax(a,b)
  %6921 = fmul fast float %6906, 3.125000e-02
  %6922 = call float @dx.op.unary.f32(i32 7, float %6921)  ; Saturate(value)
  %6923 = fmul fast float %6922, 2.000000e+00
  %6924 = fadd fast float %6923, -1.000000e+00
  %6925 = fcmp fast ogt float %6924, 0.000000e+00
  %6926 = fcmp fast olt float %6924, 0.000000e+00
  %6927 = zext i1 %6925 to i32
  %6928 = zext i1 %6926 to i32
  %6929 = sub nsw i32 %6927, %6928
  %6930 = sitofp i32 %6929 to float
  %6931 = fmul fast float %6930, %6924
  %6932 = fsub fast float 1.000000e+00, %6931
  %6933 = fmul fast float %6932, %6932
  %6934 = fmul fast float %6933, %6932
  %6935 = fsub fast float %6932, %6934
  %6936 = fmul fast float %6935, %6920
  %6937 = fsub fast float 1.000000e+00, %6934
  %6938 = fsub fast float %6937, %6936
  %6939 = fmul fast float %6930, 5.000000e-01
  %6940 = fmul fast float %6939, %6938
  %6941 = fsub fast float 5.000000e-01, %6940
  br label %6942

; <label>:6942                                    ; preds = %6914, %6790, %6777
  %6943 = phi float [ 1.000000e+00, %6777 ], [ %6856, %6790 ], [ %6941, %6914 ]
  %6944 = fcmp fast ogt float %6373, 0.000000e+00
  br i1 %6944, label %6945, label %7109, !dx.controlflow.hints !126

; <label>:6945                                    ; preds = %6942
  %6946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6947 = extractvalue %dx.types.CBufRet.f32 %6946, 1
  %6948 = fadd fast float %6947, %6262
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 2
  %6951 = extractvalue %dx.types.CBufRet.f32 %6949, 3
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6954 = call float @dx.op.binary.f32(i32 35, float %6948, float 0.000000e+00)  ; FMax(a,b)
  %6955 = fadd fast float %6954, 0x3F10000000000000
  %6956 = fcmp fast oeq float %6953, 0.000000e+00
  br i1 %6956, label %6957, label %7024

; <label>:6957                                    ; preds = %6945
  %6958 = extractvalue %dx.types.CBufRet.f32 %6949, 1
  %6959 = extractvalue %dx.types.CBufRet.f32 %6949, 0
  %6960 = fmul fast float %6959, %6269
  %6961 = fmul fast float %6958, %6270
  %6962 = fadd fast float %6960, 5.000000e-01
  %6963 = call float @dx.op.unary.f32(i32 27, float %6962)  ; Round_ni(value)
  %6964 = fadd fast float %6961, 5.000000e-01
  %6965 = call float @dx.op.unary.f32(i32 27, float %6964)  ; Round_ni(value)
  %6966 = fsub fast float %6962, %6963
  %6967 = fsub fast float %6964, %6965
  %6968 = fadd fast float %6963, -5.000000e-01
  %6969 = fadd fast float %6965, -5.000000e-01
  %6970 = fmul fast float %6966, 2.000000e+00
  %6971 = fsub fast float 3.000000e+00, %6970
  %6972 = fadd fast float %6970, 1.000000e+00
  %6973 = fsub fast float 2.000000e+00, %6966
  %6974 = bitcast float %6971 to i32
  %6975 = sub nsw i32 2129859010, %6974
  %6976 = bitcast i32 %6975 to float
  %6977 = fmul fast float %6976, %6973
  %6978 = fadd fast float %6977, -1.000000e+00
  %6979 = bitcast float %6972 to i32
  %6980 = sub nsw i32 2129859010, %6979
  %6981 = bitcast i32 %6980 to float
  %6982 = fmul fast float %6981, %6966
  %6983 = fadd fast float %6982, 1.000000e+00
  %6984 = fmul fast float %6967, 2.000000e+00
  %6985 = fsub fast float 3.000000e+00, %6984
  %6986 = fadd fast float %6984, 1.000000e+00
  %6987 = fsub fast float 2.000000e+00, %6967
  %6988 = bitcast float %6985 to i32
  %6989 = sub nsw i32 2129859010, %6988
  %6990 = bitcast i32 %6989 to float
  %6991 = fmul fast float %6990, %6987
  %6992 = fadd fast float %6991, -1.000000e+00
  %6993 = bitcast float %6986 to i32
  %6994 = sub nsw i32 2129859010, %6993
  %6995 = bitcast i32 %6994 to float
  %6996 = fmul fast float %6995, %6967
  %6997 = fadd fast float %6996, 1.000000e+00
  %6998 = fadd fast float %6978, %6968
  %6999 = fmul fast float %6998, %6950
  %7000 = fadd fast float %6992, %6969
  %7001 = fmul fast float %7000, %6951
  %7002 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6999, float %7001, float undef, float undef, i32 0, i32 0, i32 undef, float %6955)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7003 = extractvalue %dx.types.ResRet.f32 %7002, 0
  %7004 = fmul fast float %7003, %6971
  %7005 = fadd fast float %6983, %6968
  %7006 = fmul fast float %7005, %6950
  %7007 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7006, float %7001, float undef, float undef, i32 0, i32 0, i32 undef, float %6955)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7008 = extractvalue %dx.types.ResRet.f32 %7007, 0
  %7009 = fmul fast float %7008, %6972
  %7010 = fadd fast float %6997, %6969
  %7011 = fmul fast float %7010, %6951
  %7012 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %6999, float %7011, float undef, float undef, i32 0, i32 0, i32 undef, float %6955)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7013 = extractvalue %dx.types.ResRet.f32 %7012, 0
  %7014 = fmul fast float %7013, %6971
  %7015 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7006, float %7011, float undef, float undef, i32 0, i32 0, i32 undef, float %6955)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7016 = extractvalue %dx.types.ResRet.f32 %7015, 0
  %7017 = fmul fast float %7016, %6972
  %7018 = fadd fast float %7017, %7014
  %7019 = fmul fast float %7018, %6986
  %7020 = fadd fast float %7009, %7004
  %7021 = fmul fast float %7020, %6985
  %7022 = fadd fast float %7021, %7019
  %7023 = fmul fast float %7022, 6.250000e-02
  br label %7109

; <label>:7024                                    ; preds = %6945
  %7025 = fmul fast float %243, 0x401921FB60000000
  %7026 = call float @dx.op.unary.f32(i32 13, float %7025)  ; Sin(value)
  %7027 = call float @dx.op.unary.f32(i32 12, float %7025)  ; Cos(value)
  %7028 = fsub fast float -0.000000e+00, %7026
  br label %7029

; <label>:7029                                    ; preds = %7078, %7024
  %7030 = phi float [ 0.000000e+00, %7024 ], [ %7073, %7078 ]
  %7031 = phi float [ 0.000000e+00, %7024 ], [ %7075, %7078 ]
  %7032 = phi i32 [ 0, %7024 ], [ %7079, %7078 ]
  %7033 = mul i32 %7032, 2
  %7034 = add i32 0, %7033
  %7035 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7034
  %7036 = load float, float* %7035, align 4
  %7037 = mul i32 %7032, 2
  %7038 = add i32 1, %7037
  %7039 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7038
  %7040 = load float, float* %7039, align 4
  %7041 = fmul fast float %7036, %7027
  %7042 = call float @dx.op.tertiary.f32(i32 46, float %7040, float %7028, float %7041)  ; FMad(a,b,c)
  %7043 = fmul fast float %7036, %7026
  %7044 = call float @dx.op.tertiary.f32(i32 46, float %7040, float %7027, float %7043)  ; FMad(a,b,c)
  %7045 = fmul fast float %7042, %6953
  %7046 = fmul fast float %7044, %6953
  %7047 = fadd fast float %7045, %6269
  %7048 = fadd fast float %7046, %6270
  %7049 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7047, float %7048, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7050 = extractvalue %dx.types.ResRet.f32 %7049, 0
  %7051 = extractvalue %dx.types.ResRet.f32 %7049, 1
  %7052 = extractvalue %dx.types.ResRet.f32 %7049, 2
  %7053 = extractvalue %dx.types.ResRet.f32 %7049, 3
  %7054 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7050, float* %7054, align 4
  %7055 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7051, float* %7055, align 4
  %7056 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7052, float* %7056, align 4
  %7057 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7053, float* %7057, align 4
  %7058 = fsub fast float %7050, %6955
  %7059 = fcmp fast olt float %7058, 0.000000e+00
  %7060 = select i1 %7059, float 0.000000e+00, float 1.000000e+00
  %7061 = fadd fast float %7060, %7030
  %7062 = fmul fast float %7060, %7058
  %7063 = fadd fast float %7062, %7031
  br label %7064

; <label>:7064                                    ; preds = %7064, %7029
  %7065 = phi i32 [ 1, %7029 ], [ %7076, %7064 ]
  %7066 = phi float [ %7063, %7029 ], [ %7075, %7064 ]
  %7067 = phi float [ %7061, %7029 ], [ %7073, %7064 ]
  %7068 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7065
  %7069 = load float, float* %7068, align 4, !tbaa !122, !noalias !112
  %7070 = fsub fast float %7069, %6955
  %7071 = fcmp fast olt float %7070, 0.000000e+00
  %7072 = select i1 %7071, float 0.000000e+00, float 1.000000e+00
  %7073 = fadd fast float %7072, %7067
  %7074 = fmul fast float %7072, %7070
  %7075 = fadd fast float %7074, %7066
  %7076 = add nuw nsw i32 %7065, 1
  %7077 = icmp eq i32 %7076, 4
  br i1 %7077, label %7078, label %7064, !llvm.loop !124

; <label>:7078                                    ; preds = %7064
  %7079 = add nuw nsw i32 %7032, 1
  %7080 = icmp eq i32 %7079, 8
  br i1 %7080, label %7081, label %7029, !llvm.loop !125

; <label>:7081                                    ; preds = %7078
  %7082 = fdiv fast float 1.000000e+00, %7073
  %7083 = fmul fast float %7082, %7075
  %7084 = fdiv fast float 1.000000e+00, %6955
  %7085 = fmul fast float %7083, %7084
  %7086 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7087 = call float @dx.op.binary.f32(i32 35, float %7086, float 0.000000e+00)  ; FMax(a,b)
  %7088 = fmul fast float %7073, 3.125000e-02
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = fmul fast float %7089, 2.000000e+00
  %7091 = fadd fast float %7090, -1.000000e+00
  %7092 = fcmp fast ogt float %7091, 0.000000e+00
  %7093 = fcmp fast olt float %7091, 0.000000e+00
  %7094 = zext i1 %7092 to i32
  %7095 = zext i1 %7093 to i32
  %7096 = sub nsw i32 %7094, %7095
  %7097 = sitofp i32 %7096 to float
  %7098 = fmul fast float %7097, %7091
  %7099 = fsub fast float 1.000000e+00, %7098
  %7100 = fmul fast float %7099, %7099
  %7101 = fmul fast float %7100, %7099
  %7102 = fsub fast float %7099, %7101
  %7103 = fmul fast float %7102, %7087
  %7104 = fsub fast float 1.000000e+00, %7101
  %7105 = fsub fast float %7104, %7103
  %7106 = fmul fast float %7097, 5.000000e-01
  %7107 = fmul fast float %7106, %7105
  %7108 = fsub fast float 5.000000e-01, %7107
  br label %7109

; <label>:7109                                    ; preds = %7081, %6957, %6942
  %7110 = phi float [ 1.000000e+00, %6942 ], [ %7023, %6957 ], [ %7108, %7081 ]
  %7111 = fcmp fast ogt float %6372, 0.000000e+00
  br i1 %7111, label %7112, label %7276, !dx.controlflow.hints !127

; <label>:7112                                    ; preds = %7109
  %7113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7114 = extractvalue %dx.types.CBufRet.f32 %7113, 0
  %7115 = fadd fast float %7114, %6262
  %7116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7117 = extractvalue %dx.types.CBufRet.f32 %7116, 2
  %7118 = extractvalue %dx.types.CBufRet.f32 %7116, 3
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %7121 = call float @dx.op.binary.f32(i32 35, float %7115, float 0.000000e+00)  ; FMax(a,b)
  %7122 = fadd fast float %7121, 0x3F10000000000000
  %7123 = fcmp fast oeq float %7120, 0.000000e+00
  br i1 %7123, label %7124, label %7191

; <label>:7124                                    ; preds = %7112
  %7125 = extractvalue %dx.types.CBufRet.f32 %7116, 1
  %7126 = extractvalue %dx.types.CBufRet.f32 %7116, 0
  %7127 = fmul fast float %7126, %6254
  %7128 = fmul fast float %7125, %6258
  %7129 = fadd fast float %7127, 5.000000e-01
  %7130 = call float @dx.op.unary.f32(i32 27, float %7129)  ; Round_ni(value)
  %7131 = fadd fast float %7128, 5.000000e-01
  %7132 = call float @dx.op.unary.f32(i32 27, float %7131)  ; Round_ni(value)
  %7133 = fsub fast float %7129, %7130
  %7134 = fsub fast float %7131, %7132
  %7135 = fadd fast float %7130, -5.000000e-01
  %7136 = fadd fast float %7132, -5.000000e-01
  %7137 = fmul fast float %7133, 2.000000e+00
  %7138 = fsub fast float 3.000000e+00, %7137
  %7139 = fadd fast float %7137, 1.000000e+00
  %7140 = fsub fast float 2.000000e+00, %7133
  %7141 = bitcast float %7138 to i32
  %7142 = sub nsw i32 2129859010, %7141
  %7143 = bitcast i32 %7142 to float
  %7144 = fmul fast float %7143, %7140
  %7145 = fadd fast float %7144, -1.000000e+00
  %7146 = bitcast float %7139 to i32
  %7147 = sub nsw i32 2129859010, %7146
  %7148 = bitcast i32 %7147 to float
  %7149 = fmul fast float %7148, %7133
  %7150 = fadd fast float %7149, 1.000000e+00
  %7151 = fmul fast float %7134, 2.000000e+00
  %7152 = fsub fast float 3.000000e+00, %7151
  %7153 = fadd fast float %7151, 1.000000e+00
  %7154 = fsub fast float 2.000000e+00, %7134
  %7155 = bitcast float %7152 to i32
  %7156 = sub nsw i32 2129859010, %7155
  %7157 = bitcast i32 %7156 to float
  %7158 = fmul fast float %7157, %7154
  %7159 = fadd fast float %7158, -1.000000e+00
  %7160 = bitcast float %7153 to i32
  %7161 = sub nsw i32 2129859010, %7160
  %7162 = bitcast i32 %7161 to float
  %7163 = fmul fast float %7162, %7134
  %7164 = fadd fast float %7163, 1.000000e+00
  %7165 = fadd fast float %7145, %7135
  %7166 = fmul fast float %7165, %7117
  %7167 = fadd fast float %7159, %7136
  %7168 = fmul fast float %7167, %7118
  %7169 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7166, float %7168, float undef, float undef, i32 0, i32 0, i32 undef, float %7122)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7170 = extractvalue %dx.types.ResRet.f32 %7169, 0
  %7171 = fmul fast float %7170, %7138
  %7172 = fadd fast float %7150, %7135
  %7173 = fmul fast float %7172, %7117
  %7174 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7173, float %7168, float undef, float undef, i32 0, i32 0, i32 undef, float %7122)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7175 = extractvalue %dx.types.ResRet.f32 %7174, 0
  %7176 = fmul fast float %7175, %7139
  %7177 = fadd fast float %7164, %7136
  %7178 = fmul fast float %7177, %7118
  %7179 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7166, float %7178, float undef, float undef, i32 0, i32 0, i32 undef, float %7122)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7180 = extractvalue %dx.types.ResRet.f32 %7179, 0
  %7181 = fmul fast float %7180, %7138
  %7182 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7173, float %7178, float undef, float undef, i32 0, i32 0, i32 undef, float %7122)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7183 = extractvalue %dx.types.ResRet.f32 %7182, 0
  %7184 = fmul fast float %7183, %7139
  %7185 = fadd fast float %7184, %7181
  %7186 = fmul fast float %7185, %7153
  %7187 = fadd fast float %7176, %7171
  %7188 = fmul fast float %7187, %7152
  %7189 = fadd fast float %7188, %7186
  %7190 = fmul fast float %7189, 6.250000e-02
  br label %7276

; <label>:7191                                    ; preds = %7112
  %7192 = fmul fast float %243, 0x401921FB60000000
  %7193 = call float @dx.op.unary.f32(i32 13, float %7192)  ; Sin(value)
  %7194 = call float @dx.op.unary.f32(i32 12, float %7192)  ; Cos(value)
  %7195 = fsub fast float -0.000000e+00, %7193
  br label %7196

; <label>:7196                                    ; preds = %7245, %7191
  %7197 = phi float [ 0.000000e+00, %7191 ], [ %7240, %7245 ]
  %7198 = phi float [ 0.000000e+00, %7191 ], [ %7242, %7245 ]
  %7199 = phi i32 [ 0, %7191 ], [ %7246, %7245 ]
  %7200 = mul i32 %7199, 2
  %7201 = add i32 0, %7200
  %7202 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7201
  %7203 = load float, float* %7202, align 4
  %7204 = mul i32 %7199, 2
  %7205 = add i32 1, %7204
  %7206 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7205
  %7207 = load float, float* %7206, align 4
  %7208 = fmul fast float %7203, %7194
  %7209 = call float @dx.op.tertiary.f32(i32 46, float %7207, float %7195, float %7208)  ; FMad(a,b,c)
  %7210 = fmul fast float %7203, %7193
  %7211 = call float @dx.op.tertiary.f32(i32 46, float %7207, float %7194, float %7210)  ; FMad(a,b,c)
  %7212 = fmul fast float %7209, %7120
  %7213 = fmul fast float %7211, %7120
  %7214 = fadd fast float %7212, %6254
  %7215 = fadd fast float %7213, %6258
  %7216 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7214, float %7215, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7217 = extractvalue %dx.types.ResRet.f32 %7216, 0
  %7218 = extractvalue %dx.types.ResRet.f32 %7216, 1
  %7219 = extractvalue %dx.types.ResRet.f32 %7216, 2
  %7220 = extractvalue %dx.types.ResRet.f32 %7216, 3
  %7221 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7217, float* %7221, align 4
  %7222 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7218, float* %7222, align 4
  %7223 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7219, float* %7223, align 4
  %7224 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7220, float* %7224, align 4
  %7225 = fsub fast float %7217, %7122
  %7226 = fcmp fast olt float %7225, 0.000000e+00
  %7227 = select i1 %7226, float 0.000000e+00, float 1.000000e+00
  %7228 = fadd fast float %7227, %7197
  %7229 = fmul fast float %7227, %7225
  %7230 = fadd fast float %7229, %7198
  br label %7231

; <label>:7231                                    ; preds = %7231, %7196
  %7232 = phi i32 [ 1, %7196 ], [ %7243, %7231 ]
  %7233 = phi float [ %7230, %7196 ], [ %7242, %7231 ]
  %7234 = phi float [ %7228, %7196 ], [ %7240, %7231 ]
  %7235 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7232
  %7236 = load float, float* %7235, align 4, !tbaa !122, !noalias !112
  %7237 = fsub fast float %7236, %7122
  %7238 = fcmp fast olt float %7237, 0.000000e+00
  %7239 = select i1 %7238, float 0.000000e+00, float 1.000000e+00
  %7240 = fadd fast float %7239, %7234
  %7241 = fmul fast float %7239, %7237
  %7242 = fadd fast float %7241, %7233
  %7243 = add nuw nsw i32 %7232, 1
  %7244 = icmp eq i32 %7243, 4
  br i1 %7244, label %7245, label %7231, !llvm.loop !124

; <label>:7245                                    ; preds = %7231
  %7246 = add nuw nsw i32 %7199, 1
  %7247 = icmp eq i32 %7246, 8
  br i1 %7247, label %7248, label %7196, !llvm.loop !125

; <label>:7248                                    ; preds = %7245
  %7249 = fdiv fast float 1.000000e+00, %7240
  %7250 = fmul fast float %7249, %7242
  %7251 = fdiv fast float 1.000000e+00, %7122
  %7252 = fmul fast float %7250, %7251
  %7253 = call float @dx.op.unary.f32(i32 7, float %7252)  ; Saturate(value)
  %7254 = call float @dx.op.binary.f32(i32 35, float %7253, float 0.000000e+00)  ; FMax(a,b)
  %7255 = fmul fast float %7240, 3.125000e-02
  %7256 = call float @dx.op.unary.f32(i32 7, float %7255)  ; Saturate(value)
  %7257 = fmul fast float %7256, 2.000000e+00
  %7258 = fadd fast float %7257, -1.000000e+00
  %7259 = fcmp fast ogt float %7258, 0.000000e+00
  %7260 = fcmp fast olt float %7258, 0.000000e+00
  %7261 = zext i1 %7259 to i32
  %7262 = zext i1 %7260 to i32
  %7263 = sub nsw i32 %7261, %7262
  %7264 = sitofp i32 %7263 to float
  %7265 = fmul fast float %7264, %7258
  %7266 = fsub fast float 1.000000e+00, %7265
  %7267 = fmul fast float %7266, %7266
  %7268 = fmul fast float %7267, %7266
  %7269 = fsub fast float %7266, %7268
  %7270 = fmul fast float %7269, %7254
  %7271 = fsub fast float 1.000000e+00, %7268
  %7272 = fsub fast float %7271, %7270
  %7273 = fmul fast float %7264, 5.000000e-01
  %7274 = fmul fast float %7273, %7272
  %7275 = fsub fast float 5.000000e-01, %7274
  br label %7276

; <label>:7276                                    ; preds = %7248, %7124, %7109
  %7277 = phi float [ 1.000000e+00, %7109 ], [ %7190, %7124 ], [ %7275, %7248 ]
  %7278 = fsub fast float %6943, %6778
  %7279 = fmul fast float %7278, %6316
  %7280 = fadd fast float %7279, %6778
  %7281 = fsub fast float %7110, %7280
  %7282 = fmul fast float %7281, %6346
  %7283 = fadd fast float %7282, %7280
  %7284 = fsub fast float %7277, %7283
  %7285 = fmul fast float %7284, %6372
  %7286 = fadd fast float %7285, %7283
  %7287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7288 = extractvalue %dx.types.CBufRet.f32 %7287, 2
  %7289 = fcmp fast ogt float %7288, 0.000000e+00
  br i1 %7289, label %7290, label %7330, !dx.controlflow.hints !128

; <label>:7290                                    ; preds = %7276
  %7291 = fcmp fast ugt float %7288, 0.000000e+00
  br i1 %7291, label %7292, label %7327

; <label>:7292                                    ; preds = %7290
  %7293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7294 = extractvalue %dx.types.CBufRet.f32 %7293, 0
  %7295 = extractvalue %dx.types.CBufRet.f32 %7293, 1
  %7296 = extractvalue %dx.types.CBufRet.f32 %7293, 2
  %7297 = extractvalue %dx.types.CBufRet.f32 %7293, 3
  %7298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7299 = extractvalue %dx.types.CBufRet.f32 %7298, 0
  %7300 = extractvalue %dx.types.CBufRet.f32 %7298, 1
  %7301 = extractvalue %dx.types.CBufRet.f32 %7298, 2
  %7302 = extractvalue %dx.types.CBufRet.f32 %7298, 3
  %7303 = extractvalue %dx.types.CBufRet.f32 %7287, 0
  %7304 = extractvalue %dx.types.CBufRet.f32 %7287, 1
  %7305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7306 = extractvalue %dx.types.CBufRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.CBufRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.CBufRet.f32 %7305, 2
  %7309 = fadd fast float %7306, %6231
  %7310 = fadd fast float %7307, %6232
  %7311 = fadd fast float %7308, %6233
  %7312 = fmul fast float %7309, %7294
  %7313 = call float @dx.op.tertiary.f32(i32 46, float %7295, float %7310, float %7312)  ; FMad(a,b,c)
  %7314 = call float @dx.op.tertiary.f32(i32 46, float %7296, float %7311, float %7313)  ; FMad(a,b,c)
  %7315 = fadd fast float %7314, %7297
  %7316 = fmul fast float %7309, %7299
  %7317 = call float @dx.op.tertiary.f32(i32 46, float %7300, float %7310, float %7316)  ; FMad(a,b,c)
  %7318 = call float @dx.op.tertiary.f32(i32 46, float %7301, float %7311, float %7317)  ; FMad(a,b,c)
  %7319 = fadd fast float %7318, %7302
  %7320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7315, float %7319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7321 = extractvalue %dx.types.ResRet.f32 %7320, 0
  %7322 = fmul fast float %7321, %7304
  %7323 = fadd fast float %7322, %7303
  %7324 = call float @dx.op.unary.f32(i32 7, float %7323)  ; Saturate(value)
  %7325 = fmul fast float %7324, %7288
  %7326 = fsub fast float 1.000000e+00, %7325
  br label %7327

; <label>:7327                                    ; preds = %7292, %7290
  %7328 = phi float [ %7326, %7292 ], [ 1.000000e+00, %7290 ]
  %7329 = fmul fast float %7328, %7286
  br label %7330

; <label>:7330                                    ; preds = %7327, %7276, %6211
  %7331 = phi float [ 1.000000e+00, %6211 ], [ %7329, %7327 ], [ %7286, %7276 ]
  %7332 = call float @dx.op.binary.f32(i32 36, float %7331, float %7331)  ; FMin(a,b)
  %7333 = call float @dx.op.binary.f32(i32 36, float %7331, float %7332)  ; FMin(a,b)
  %7334 = fcmp fast ogt float %7333, 0.000000e+00
  br i1 %7334, label %7335, label %7500, !dx.controlflow.hints !129

; <label>:7335                                    ; preds = %7330
  %7336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.f32 %7336, 0
  %7338 = extractvalue %dx.types.CBufRet.f32 %7336, 1
  %7339 = extractvalue %dx.types.CBufRet.f32 %7336, 2
  %7340 = extractvalue %dx.types.CBufRet.f32 %7336, 3
  %7341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7342 = extractvalue %dx.types.CBufRet.f32 %7341, 0
  %7343 = extractvalue %dx.types.CBufRet.f32 %7341, 1
  %7344 = extractvalue %dx.types.CBufRet.f32 %7341, 2
  %7345 = extractvalue %dx.types.CBufRet.f32 %7341, 3
  %7346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.f32 %7346, 0
  %7348 = extractvalue %dx.types.CBufRet.f32 %7346, 1
  %7349 = extractvalue %dx.types.CBufRet.f32 %7346, 2
  %7350 = extractvalue %dx.types.CBufRet.f32 %7346, 3
  %7351 = fmul fast float %7337, %6231
  %7352 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %7338, float %7351)  ; FMad(a,b,c)
  %7353 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %7339, float %7352)  ; FMad(a,b,c)
  %7354 = fadd fast float %7353, %7340
  %7355 = fmul fast float %7342, %6231
  %7356 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %7343, float %7355)  ; FMad(a,b,c)
  %7357 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %7344, float %7356)  ; FMad(a,b,c)
  %7358 = fadd fast float %7357, %7345
  %7359 = fmul fast float %7347, %6231
  %7360 = call float @dx.op.tertiary.f32(i32 46, float %6232, float %7348, float %7359)  ; FMad(a,b,c)
  %7361 = call float @dx.op.tertiary.f32(i32 46, float %6233, float %7349, float %7360)  ; FMad(a,b,c)
  %7362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.f32 %7362, 0
  %7364 = extractvalue %dx.types.CBufRet.f32 %7362, 1
  %7365 = extractvalue %dx.types.CBufRet.f32 %7362, 3
  %7366 = fmul fast float %7365, %7354
  %7367 = fmul fast float %7365, %7358
  %7368 = fadd fast float %7366, %7363
  %7369 = fadd fast float %7367, %7364
  %7370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7371 = extractvalue %dx.types.CBufRet.f32 %7370, 0
  %7372 = extractvalue %dx.types.CBufRet.f32 %7370, 1
  %7373 = fsub fast float %7368, %7371
  %7374 = fsub fast float %7369, %7372
  %7375 = fcmp fast olt float %7373, 0.000000e+00
  %7376 = fcmp fast olt float %7374, 0.000000e+00
  %7377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7378 = extractvalue %dx.types.CBufRet.f32 %7377, 0
  %7379 = extractvalue %dx.types.CBufRet.f32 %7377, 1
  %7380 = extractvalue %dx.types.CBufRet.f32 %7377, 2
  %7381 = extractvalue %dx.types.CBufRet.f32 %7377, 3
  %7382 = select i1 %7375, float %7378, float %7380
  %7383 = select i1 %7376, float %7379, float %7381
  %7384 = fmul fast float %7382, %7373
  %7385 = fmul fast float %7383, %7374
  %7386 = call float @dx.op.unary.f32(i32 6, float %7384)  ; FAbs(value)
  %7387 = call float @dx.op.unary.f32(i32 6, float %7385)  ; FAbs(value)
  %7388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7389 = extractvalue %dx.types.CBufRet.f32 %7388, 0
  %7390 = call float @dx.op.binary.f32(i32 35, float %7386, float %7387)  ; FMax(a,b)
  %7391 = fsub fast float %7389, %7390
  %7392 = call float @dx.op.unary.f32(i32 7, float %7391)  ; Saturate(value)
  %7393 = fcmp fast ogt float %7392, 0.000000e+00
  br i1 %7393, label %7394, label %7435, !dx.controlflow.hints !130

; <label>:7394                                    ; preds = %7335
  %7395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7368, float %7369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7396 = extractvalue %dx.types.ResRet.f32 %7395, 1
  %7397 = fcmp fast ogt float %7396, 0.000000e+00
  br i1 %7397, label %7398, label %7430

; <label>:7398                                    ; preds = %7394
  %7399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7368, float %7369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7400 = extractvalue %dx.types.ResRet.f32 %7399, 0
  %7401 = extractvalue %dx.types.ResRet.f32 %7399, 1
  %7402 = extractvalue %dx.types.ResRet.f32 %7399, 2
  %7403 = extractvalue %dx.types.ResRet.f32 %7399, 3
  %7404 = fsub fast float 1.000000e+00, %7350
  %7405 = fsub fast float %7404, %7361
  %7406 = fmul fast float %7405, 0x400921FB60000000
  %7407 = fadd fast float %7406, 0x3FF921FB60000000
  %7408 = call float @dx.op.unary.f32(i32 13, float %7407)  ; Sin(value)
  %7409 = fadd fast float %7408, -1.000000e+00
  %7410 = fmul fast float %7409, 0x3FD45F3060000000
  %7411 = fmul fast float %7405, 0x401921FB60000000
  %7412 = fadd fast float %7411, 0x400921FB60000000
  %7413 = call float @dx.op.unary.f32(i32 13, float %7412)  ; Sin(value)
  %7414 = fadd fast float %7413, 0x3E7777A5C0000000
  %7415 = fmul fast float %7414, 0x3FC45F3060000000
  %7416 = fmul fast float %7405, 0x4022D97C80000000
  %7417 = fadd fast float %7416, 0x4012D97C80000000
  %7418 = call float @dx.op.unary.f32(i32 13, float %7417)  ; Sin(value)
  %7419 = fadd fast float %7418, 1.000000e+00
  %7420 = fmul fast float %7419, 0x3FBB2995E0000000
  %7421 = fmul fast float %7405, 0x402921FB60000000
  %7422 = fadd fast float %7421, 0x401921FB60000000
  %7423 = call float @dx.op.unary.f32(i32 13, float %7422)  ; Sin(value)
  %7424 = fadd fast float %7423, 0xBE8777A5C0000000
  %7425 = fmul fast float %7424, 0x3FB45F3060000000
  %7426 = call float @dx.op.dot4.f32(i32 56, float %7400, float %7401, float %7402, float %7403, float %7410, float %7415, float %7420, float %7425)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7427 = fmul fast float %7426, 0xBFF7154760000000
  %7428 = call float @dx.op.unary.f32(i32 21, float %7427)  ; Exp(value)
  %7429 = call float @dx.op.unary.f32(i32 7, float %7428)  ; Saturate(value)
  br label %7430

; <label>:7430                                    ; preds = %7398, %7394
  %7431 = phi float [ %7429, %7398 ], [ 1.000000e+00, %7394 ]
  %7432 = fadd fast float %7431, -1.000000e+00
  %7433 = fmul fast float %7432, %7392
  %7434 = fadd fast float %7433, 1.000000e+00
  br label %7435

; <label>:7435                                    ; preds = %7430, %7335
  %7436 = phi float [ %7434, %7430 ], [ 1.000000e+00, %7335 ]
  %7437 = fmul fast float %7436, %7331
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.CBufRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.CBufRet.f32 %7438, 2
  %7442 = fadd fast float %7439, %170
  %7443 = fadd fast float %7440, %171
  %7444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7445 = extractvalue %dx.types.CBufRet.f32 %7444, 1
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 0
  %7448 = extractvalue %dx.types.CBufRet.f32 %7446, 1
  %7449 = extractvalue %dx.types.CBufRet.f32 %7446, 2
  %7450 = fsub fast float -0.000000e+00, %7442
  %7451 = fsub fast float -0.000000e+00, %7443
  %7452 = fsub fast float %5327, %7441
  %7453 = fadd fast float %7452, %7445
  %7454 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7450, float %7451, float %7453)  ; Dot3(ax,ay,az,bx,by,bz)
  %7455 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7447, float %7448, float %7449)  ; Dot3(ax,ay,az,bx,by,bz)
  %7456 = fdiv fast float 1.000000e+00, %7455
  %7457 = fmul fast float %7456, %7454
  %7458 = fmul fast float %7447, %7457
  %7459 = fmul fast float %7448, %7457
  %7460 = fadd fast float %7458, %7442
  %7461 = fadd fast float %7459, %7443
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.CBufRet.f32 %7462, 1
  %7465 = fsub fast float %7460, %7463
  %7466 = fsub fast float %7461, %7464
  %7467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7467, 2
  %7469 = extractvalue %dx.types.CBufRet.f32 %7467, 3
  %7470 = fmul fast float %7465, %7468
  %7471 = fmul fast float %7466, %7469
  %7472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7473 = extractvalue %dx.types.CBufRet.i32 %7472, 3
  %7474 = icmp eq i32 %7473, 0
  br i1 %7474, label %7480, label %7475

; <label>:7475                                    ; preds = %7435
  %7476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7470, float %7471, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.ResRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.ResRet.f32 %7476, 2
  br label %7485

; <label>:7480                                    ; preds = %7435
  %7481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7470, float %7471, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7482 = extractvalue %dx.types.ResRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.ResRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.ResRet.f32 %7481, 2
  br label %7485

; <label>:7485                                    ; preds = %7480, %7475
  %7486 = phi float [ %7477, %7475 ], [ %7482, %7480 ]
  %7487 = phi float [ %7478, %7475 ], [ %7483, %7480 ]
  %7488 = phi float [ %7479, %7475 ], [ %7484, %7480 ]
  %7489 = extractvalue %dx.types.CBufRet.f32 %7444, 2
  %7490 = fmul fast float %7489, %7486
  %7491 = extractvalue %dx.types.CBufRet.f32 %7444, 0
  %7492 = fsub fast float %7457, %7491
  %7493 = fsub fast float %7492, %7490
  %7494 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7493)  ; FMax(a,b)
  %7495 = fmul fast float %7494, %7487
  %7496 = call float @dx.op.binary.f32(i32 36, float %7488, float %7495)  ; FMin(a,b)
  %7497 = fmul fast float %7496, 0xBFF7154760000000
  %7498 = call float @dx.op.unary.f32(i32 21, float %7497)  ; Exp(value)
  %7499 = fmul fast float %7437, %7498
  br label %7500

; <label>:7500                                    ; preds = %7485, %7330
  %7501 = phi float [ %7499, %7485 ], [ %7331, %7330 ]
  %7502 = call float @dx.op.binary.f32(i32 36, float %7501, float %7501)  ; FMin(a,b)
  %7503 = call float @dx.op.binary.f32(i32 36, float %7501, float %7502)  ; FMin(a,b)
  %7504 = fcmp fast ogt float %7503, 0.000000e+00
  br i1 %7504, label %7505, label %7806, !dx.controlflow.hints !131

; <label>:7505                                    ; preds = %7500
  %7506 = fmul fast float %7501, %6223
  %7507 = fmul fast float %7501, %6224
  %7508 = fmul fast float %7501, %6225
  %7509 = fsub fast float %172, %5115
  %7510 = fcmp fast ogt float %7509, 0.000000e+00
  %7511 = fmul fast float %6212, 5.120000e+02
  %7512 = fmul fast float %6213, 5.120000e+02
  %7513 = fmul fast float %6214, 5.120000e+02
  %7514 = fadd fast float %7513, %172
  %7515 = fsub fast float %5115, %7514
  %7516 = fmul fast float %7515, 2.000000e+00
  %7517 = fadd fast float %7516, %7514
  %7518 = select i1 %7510, float %7517, float %7514
  %7519 = fsub fast float %7518, %172
  %7520 = call float @dx.op.dot3.f32(i32 55, float %7511, float %7512, float %7519, float %7511, float %7512, float %7519)  ; Dot3(ax,ay,az,bx,by,bz)
  %7521 = call float @dx.op.unary.f32(i32 25, float %7520)  ; Rsqrt(value)
  %7522 = fmul fast float %7521, %7511
  %7523 = fmul fast float %7521, %7512
  %7524 = fmul fast float %7521, %7519
  %7525 = fsub fast float %5115, %172
  %7526 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7525)  ; Dot3(ax,ay,az,bx,by,bz)
  %7527 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7522, float %7523, float %7524)  ; Dot3(ax,ay,az,bx,by,bz)
  %7528 = fdiv fast float 1.000000e+00, %7527
  %7529 = fmul fast float %7528, %7526
  %7530 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7509, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7531 = fcmp fast ogt float %7530, 0.000000e+00
  %7532 = fcmp fast olt float %7530, 0.000000e+00
  %7533 = zext i1 %7531 to i32
  %7534 = zext i1 %7532 to i32
  %7535 = sub nsw i32 %7533, %7534
  %7536 = sitofp i32 %7535 to float
  %7537 = fsub fast float %7518, %5115
  %7538 = call float @dx.op.dot3.f32(i32 55, float %7511, float %7512, float %7537, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7539 = fcmp fast ogt float %7538, 0.000000e+00
  %7540 = fcmp fast olt float %7538, 0.000000e+00
  %7541 = zext i1 %7539 to i32
  %7542 = zext i1 %7540 to i32
  %7543 = sub nsw i32 %7541, %7542
  %7544 = sitofp i32 %7543 to float
  %7545 = fcmp fast une float %7536, %7544
  br i1 %7545, label %7546, label %7556

; <label>:7546                                    ; preds = %7505
  %7547 = fmul fast float %7529, %7524
  %7548 = fmul fast float %7529, %7523
  %7549 = fmul fast float %7529, %7522
  %7550 = fmul fast float %7549, %7549
  %7551 = fmul fast float %7548, %7548
  %7552 = fadd fast float %7550, %7551
  %7553 = fmul fast float %7547, %7547
  %7554 = fadd fast float %7552, %7553
  %7555 = call float @dx.op.unary.f32(i32 24, float %7554)  ; Sqrt(value)
  br label %7566

; <label>:7556                                    ; preds = %7505
  %7557 = icmp slt i32 %7535, 0
  br i1 %7557, label %7558, label %7566

; <label>:7558                                    ; preds = %7556
  %7559 = fsub fast float %172, %7518
  %7560 = fmul fast float %7511, %7511
  %7561 = fmul fast float %7512, %7512
  %7562 = fadd fast float %7560, %7561
  %7563 = fmul fast float %7559, %7559
  %7564 = fadd fast float %7562, %7563
  %7565 = call float @dx.op.unary.f32(i32 24, float %7564)  ; Sqrt(value)
  br label %7566

; <label>:7566                                    ; preds = %7558, %7556, %7546
  %7567 = phi float [ %7555, %7546 ], [ %7565, %7558 ], [ 0.000000e+00, %7556 ]
  %7568 = fsub fast float -0.000000e+00, %7567
  %7569 = select i1 %7510, float -0.000000e+00, float %7568
  %7570 = fmul fast float %5116, 0x3FF7154760000000
  %7571 = fmul fast float %7570, %7569
  %7572 = fmul fast float %5117, 0x3FF7154760000000
  %7573 = fmul fast float %7572, %7569
  %7574 = fmul fast float %5118, 0x3FF7154760000000
  %7575 = fmul fast float %7574, %7569
  %7576 = call float @dx.op.unary.f32(i32 21, float %7571)  ; Exp(value)
  %7577 = call float @dx.op.unary.f32(i32 21, float %7573)  ; Exp(value)
  %7578 = call float @dx.op.unary.f32(i32 21, float %7575)  ; Exp(value)
  %7579 = call float @dx.op.unary.f32(i32 7, float %7576)  ; Saturate(value)
  %7580 = call float @dx.op.unary.f32(i32 7, float %7577)  ; Saturate(value)
  %7581 = call float @dx.op.unary.f32(i32 7, float %7578)  ; Saturate(value)
  %7582 = fmul fast float %7506, %7579
  %7583 = fmul fast float %7507, %7580
  %7584 = fmul fast float %7508, %7581
  %7585 = fsub fast float %6212, %5315
  %7586 = fsub fast float %6213, %5314
  %7587 = fsub fast float %6214, %5313
  %7588 = call float @dx.op.dot3.f32(i32 55, float %7585, float %7586, float %7587, float %7585, float %7586, float %7587)  ; Dot3(ax,ay,az,bx,by,bz)
  %7589 = call float @dx.op.unary.f32(i32 25, float %7588)  ; Rsqrt(value)
  %7590 = fmul fast float %7589, %7585
  %7591 = fmul fast float %7589, %7586
  %7592 = fmul fast float %7589, %7587
  %7593 = call float @dx.op.dot3.f32(i32 55, float %6212, float %6213, float %6214, float %5322, float %5323, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %7594 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5311, float %5310, float %7590, float %7591, float %7592)  ; Dot3(ax,ay,az,bx,by,bz)
  %7595 = call float @dx.op.unary.f32(i32 7, float %7593)  ; Saturate(value)
  %7596 = fmul fast float %7595, %7595
  %7597 = fmul fast float %7596, %5355
  %7598 = call float @dx.op.unary.f32(i32 7, float %7597)  ; Saturate(value)
  %7599 = fmul fast float %7598, %7595
  %7600 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %7590, float %7591, float %7592)  ; Dot3(ax,ay,az,bx,by,bz)
  %7601 = fmul fast float %7600, %7600
  %7602 = call float @dx.op.unary.f32(i32 6, float %7593)  ; FAbs(value)
  %7603 = fsub fast float 1.000000e+00, %5348
  %7604 = fmul fast float %5330, %5330
  %7605 = fmul fast float %7604, %7603
  %7606 = fadd fast float %7605, %5348
  %7607 = bitcast float %7606 to i32
  %7608 = ashr i32 %7607, 1
  %7609 = add nsw i32 %7608, 532487669
  %7610 = bitcast i32 %7609 to float
  %7611 = fadd fast float %7610, %5330
  %7612 = fmul fast float %5348, %7601
  %7613 = fsub fast float 1.000000e+00, %7601
  %7614 = fadd fast float %7613, %7612
  %7615 = fmul fast float %7602, %7602
  %7616 = fmul fast float %7615, %7603
  %7617 = fadd fast float %7616, %5348
  %7618 = bitcast float %7617 to i32
  %7619 = ashr i32 %7618, 1
  %7620 = add nsw i32 %7619, 532487669
  %7621 = bitcast i32 %7620 to float
  %7622 = fadd fast float %7621, %7602
  %7623 = fmul fast float %7614, %7614
  %7624 = fmul fast float %7623, %7611
  %7625 = fmul fast float %7624, %7622
  %7626 = fdiv fast float 0x3FF0A00000000000, %7625
  %7627 = fmul fast float %7626, %5348
  %7628 = call float @dx.op.unary.f32(i32 6, float %7594)  ; FAbs(value)
  %7629 = fsub fast float 1.000000e+00, %7628
  %7630 = bitcast float %7629 to i32
  %7631 = sitofp i32 %7630 to float
  %7632 = fmul fast float %7631, 5.000000e+00
  %7633 = fadd fast float %7632, 0xC1EFBF8940000000
  %7634 = fptosi float %7633 to i32
  %7635 = bitcast i32 %7634 to float
  %7636 = fsub fast float 1.000000e+00, %5319
  %7637 = fsub fast float 1.000000e+00, %5320
  %7638 = fsub fast float 1.000000e+00, %5328
  %7639 = fmul fast float %7635, %7636
  %7640 = fmul fast float %7635, %7637
  %7641 = fmul fast float %7635, %7638
  %7642 = fadd fast float %7639, %5319
  %7643 = fadd fast float %7640, %5320
  %7644 = fadd fast float %7641, %5328
  br i1 %5613, label %7645, label %7668

; <label>:7645                                    ; preds = %7566
  %7646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4648, float %7628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7647 = extractvalue %dx.types.ResRet.f32 %7646, 0
  %7648 = extractvalue %dx.types.ResRet.f32 %7646, 1
  %7649 = extractvalue %dx.types.ResRet.f32 %7646, 2
  %7650 = fadd fast float %7647, -5.000000e-01
  %7651 = fadd fast float %7648, -5.000000e-01
  %7652 = fadd fast float %7649, -5.000000e-01
  %7653 = fmul fast float %5319, 4.000000e+00
  %7654 = fmul fast float %7653, %7636
  %7655 = fmul fast float %7654, %7650
  %7656 = fmul fast float %5320, 4.000000e+00
  %7657 = fmul fast float %7656, %7637
  %7658 = fmul fast float %7657, %7651
  %7659 = fmul fast float %5328, 4.000000e+00
  %7660 = fmul fast float %7659, %7638
  %7661 = fmul fast float %7660, %7652
  %7662 = fadd fast float %7655, %7642
  %7663 = fadd fast float %7658, %7643
  %7664 = fadd fast float %7661, %7644
  %7665 = call float @dx.op.unary.f32(i32 7, float %7662)  ; Saturate(value)
  %7666 = call float @dx.op.unary.f32(i32 7, float %7663)  ; Saturate(value)
  %7667 = call float @dx.op.unary.f32(i32 7, float %7664)  ; Saturate(value)
  br label %7668

; <label>:7668                                    ; preds = %7645, %7566
  %7669 = phi float [ %7665, %7645 ], [ %7642, %7566 ]
  %7670 = phi float [ %7666, %7645 ], [ %7643, %7566 ]
  %7671 = phi float [ %7667, %7645 ], [ %7644, %7566 ]
  %7672 = fmul fast float %7593, 9.843750e-01
  %7673 = fadd fast float %7672, 7.812500e-03
  %7674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7673, float %5603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7675 = extractvalue %dx.types.ResRet.f32 %7674, 2
  %7676 = extractvalue %dx.types.ResRet.f32 %7674, 3
  %7677 = fmul fast float %7675, %5319
  %7678 = fmul fast float %7675, %5320
  %7679 = fmul fast float %7675, %5328
  %7680 = fadd fast float %7677, %7676
  %7681 = fadd fast float %7678, %7676
  %7682 = fadd fast float %7679, %7676
  br i1 %5613, label %7683, label %7706

; <label>:7683                                    ; preds = %7668
  %7684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4648, float %7593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7685 = extractvalue %dx.types.ResRet.f32 %7684, 0
  %7686 = extractvalue %dx.types.ResRet.f32 %7684, 1
  %7687 = extractvalue %dx.types.ResRet.f32 %7684, 2
  %7688 = fadd fast float %7685, -5.000000e-01
  %7689 = fadd fast float %7686, -5.000000e-01
  %7690 = fadd fast float %7687, -5.000000e-01
  %7691 = fmul fast float %5319, 4.000000e+00
  %7692 = fmul fast float %7691, %7636
  %7693 = fmul fast float %7692, %7688
  %7694 = fmul fast float %5320, 4.000000e+00
  %7695 = fmul fast float %7694, %7637
  %7696 = fmul fast float %7695, %7689
  %7697 = fmul fast float %5328, 4.000000e+00
  %7698 = fmul fast float %7697, %7638
  %7699 = fmul fast float %7698, %7690
  %7700 = fadd fast float %7693, %7680
  %7701 = fadd fast float %7696, %7681
  %7702 = fadd fast float %7699, %7682
  %7703 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7704 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7705 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  br label %7706

; <label>:7706                                    ; preds = %7683, %7668
  %7707 = phi float [ %7703, %7683 ], [ %7680, %7668 ]
  %7708 = phi float [ %7704, %7683 ], [ %7681, %7668 ]
  %7709 = phi float [ %7705, %7683 ], [ %7682, %7668 ]
  %7710 = call float @dx.op.binary.f32(i32 35, float %7708, float %7709)  ; FMax(a,b)
  %7711 = call float @dx.op.binary.f32(i32 35, float %7707, float %7710)  ; FMax(a,b)
  %7712 = fsub fast float 1.000000e+00, %7711
  %7713 = fsub fast float -0.000000e+00, %5322
  %7714 = fsub fast float -0.000000e+00, %5323
  %7715 = fsub fast float -0.000000e+00, %5324
  %7716 = call float @dx.op.dot3.f32(i32 55, float %6212, float %6213, float %6214, float %7713, float %7714, float %7715)  ; Dot3(ax,ay,az,bx,by,bz)
  %7717 = call float @dx.op.unary.f32(i32 7, float %7716)  ; Saturate(value)
  %7718 = fmul fast float %7717, 9.843750e-01
  %7719 = fadd fast float %7718, 7.812500e-03
  %7720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7719, float %5603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7721 = extractvalue %dx.types.ResRet.f32 %7720, 2
  %7722 = extractvalue %dx.types.ResRet.f32 %7720, 3
  %7723 = fmul fast float %7721, %5319
  %7724 = fmul fast float %7721, %5320
  %7725 = fmul fast float %7721, %5328
  %7726 = fadd fast float %7723, %7722
  %7727 = fadd fast float %7724, %7722
  %7728 = fadd fast float %7725, %7722
  br i1 %5613, label %7729, label %7752

; <label>:7729                                    ; preds = %7706
  %7730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4648, float %7717, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7731 = extractvalue %dx.types.ResRet.f32 %7730, 0
  %7732 = extractvalue %dx.types.ResRet.f32 %7730, 1
  %7733 = extractvalue %dx.types.ResRet.f32 %7730, 2
  %7734 = fadd fast float %7731, -5.000000e-01
  %7735 = fadd fast float %7732, -5.000000e-01
  %7736 = fadd fast float %7733, -5.000000e-01
  %7737 = fmul fast float %5319, 4.000000e+00
  %7738 = fmul fast float %7737, %7636
  %7739 = fmul fast float %7738, %7734
  %7740 = fmul fast float %5320, 4.000000e+00
  %7741 = fmul fast float %7740, %7637
  %7742 = fmul fast float %7741, %7735
  %7743 = fmul fast float %5328, 4.000000e+00
  %7744 = fmul fast float %7743, %7638
  %7745 = fmul fast float %7744, %7736
  %7746 = fadd fast float %7739, %7726
  %7747 = fadd fast float %7742, %7727
  %7748 = fadd fast float %7745, %7728
  %7749 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7750 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7751 = call float @dx.op.unary.f32(i32 7, float %7748)  ; Saturate(value)
  br label %7752

; <label>:7752                                    ; preds = %7729, %7706
  %7753 = phi float [ %7749, %7729 ], [ %7726, %7706 ]
  %7754 = phi float [ %7750, %7729 ], [ %7727, %7706 ]
  %7755 = phi float [ %7751, %7729 ], [ %7728, %7706 ]
  %7756 = call float @dx.op.binary.f32(i32 35, float %7754, float %7755)  ; FMax(a,b)
  %7757 = call float @dx.op.binary.f32(i32 35, float %7753, float %7756)  ; FMax(a,b)
  %7758 = fsub fast float 1.000000e+00, %7757
  %7759 = fmul fast float %7758, %7717
  %7760 = fmul fast float %7759, %4738
  %7761 = fmul fast float %7759, %4739
  %7762 = fmul fast float %7759, %4740
  %7763 = fmul fast float %7669, %7627
  %7764 = fmul fast float %7670, %7627
  %7765 = fmul fast float %7671, %7627
  %7766 = fsub fast float 1.000000e+00, %7594
  %7767 = bitcast float %7766 to i32
  %7768 = sitofp i32 %7767 to float
  %7769 = fmul fast float %7768, 5.000000e+00
  %7770 = fadd fast float %7769, 0xC1EFBF8940000000
  %7771 = fptosi float %7770 to i32
  %7772 = bitcast i32 %7771 to float
  %7773 = fmul fast float %7772, %4649
  %7774 = fmul fast float %7712, %7773
  %7775 = fmul fast float %7774, %6152
  %7776 = fmul fast float %7774, %6153
  %7777 = fmul fast float %7774, %6154
  %7778 = fmul fast float %7712, %7599
  %7779 = fadd fast float %7775, %7763
  %7780 = fadd fast float %7776, %7764
  %7781 = fadd fast float %7777, %7765
  %7782 = fadd fast float %7760, %7778
  %7783 = fadd fast float %7761, %7778
  %7784 = fadd fast float %7762, %7778
  %7785 = fmul fast float %7782, %7582
  %7786 = fmul fast float %7783, %7583
  %7787 = fmul fast float %7784, %7584
  %7788 = fmul fast float %7599, %7582
  %7789 = fmul fast float %7788, %7779
  %7790 = fmul fast float %7599, %7583
  %7791 = fmul fast float %7790, %7780
  %7792 = fmul fast float %7599, %7584
  %7793 = fmul fast float %7792, %7781
  %7794 = fadd fast float %7785, %6202
  %7795 = fmul fast float %7794, %4645
  %7796 = fadd fast float %7786, %6204
  %7797 = fmul fast float %7796, %4645
  %7798 = fadd fast float %7787, %6206
  %7799 = fmul fast float %7798, %4645
  %7800 = fadd fast float %7789, %6185
  %7801 = fmul fast float %7800, %4645
  %7802 = fadd fast float %7791, %6188
  %7803 = fmul fast float %7802, %4645
  %7804 = fadd fast float %7793, %6191
  %7805 = fmul fast float %7804, %4645
  br label %7806

; <label>:7806                                    ; preds = %7752, %7500, %6135
  %7807 = phi float [ %6186, %6135 ], [ %6186, %7500 ], [ %7801, %7752 ]
  %7808 = phi float [ %6189, %6135 ], [ %6189, %7500 ], [ %7803, %7752 ]
  %7809 = phi float [ %6192, %6135 ], [ %6192, %7500 ], [ %7805, %7752 ]
  %7810 = phi float [ %6203, %6135 ], [ %6203, %7500 ], [ %7795, %7752 ]
  %7811 = phi float [ %6205, %6135 ], [ %6205, %7500 ], [ %7797, %7752 ]
  %7812 = phi float [ %6207, %6135 ], [ %6207, %7500 ], [ %7799, %7752 ]
  %7813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.i32 %7813, 0
  %7815 = icmp eq i32 %7814, 0
  br i1 %7815, label %8533, label %7816

; <label>:7816                                    ; preds = %7806
  %7817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7818 = extractvalue %dx.types.CBufRet.f32 %7817, 2
  %7819 = extractvalue %dx.types.CBufRet.f32 %7817, 3
  %7820 = fmul fast float %7818, %111
  %7821 = fmul fast float %7819, %112
  %7822 = fptoui float %7820 to i32
  %7823 = fptoui float %7821 to i32
  %7824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7825 = extractvalue %dx.types.CBufRet.f32 %7824, 0
  %7826 = extractvalue %dx.types.CBufRet.f32 %7824, 2
  %7827 = extractvalue %dx.types.CBufRet.f32 %7824, 3
  %7828 = fadd fast float %99, -4.000000e+00
  %7829 = call float @dx.op.binary.f32(i32 35, float %7828, float 0.000000e+00)  ; FMax(a,b)
  %7830 = fadd fast float %7829, %7825
  %7831 = fmul fast float %7830, %7826
  %7832 = call float @dx.op.unary.f32(i32 23, float %7831)  ; Log(value)
  %7833 = fmul fast float %7832, %7827
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 2
  %7836 = fmul fast float %7833, %7835
  %7837 = call float @dx.op.unary.f32(i32 7, float %7836)  ; Saturate(value)
  %7838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7839 = extractvalue %dx.types.CBufRet.i32 %7838, 1
  %7840 = add i32 %7839, -1
  %7841 = uitofp i32 %7839 to float
  %7842 = fmul fast float %7841, %7837
  %7843 = fptoui float %7842 to i32
  %7844 = call i32 @dx.op.binary.i32(i32 40, i32 %7843, i32 %7840)  ; UMin(a,b)
  %7845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7846 = extractvalue %dx.types.CBufRet.i32 %7845, 2
  %7847 = extractvalue %dx.types.CBufRet.i32 %7845, 3
  %7848 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7823, i32 %7846, i32 %7822)  ; UMad(a,b,c)
  %7849 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7844, i32 %7847, i32 %7848)  ; UMad(a,b,c)
  %7850 = add nsw i32 %7814, -1
  %7851 = call i32 @dx.op.binary.i32(i32 37, i32 %7850, i32 0)  ; IMax(a,b)
  %7852 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %7853 = fptoui float %7852 to i32
  %7854 = lshr i32 %7853, 5
  %7855 = call i32 @dx.op.binary.i32(i32 40, i32 %7854, i32 8191)  ; UMin(a,b)
  %7856 = shl i32 %7855, 2
  %7857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7856, i32 undef)  ; BufferLoad(srv,index,wot)
  %7858 = extractvalue %dx.types.ResRet.i32 %7857, 0
  %7859 = lshr i32 %7858, 16
  %7860 = and i32 %7858, 65535
  %7861 = lshr i32 %7858, 21
  %7862 = lshr i32 %7860, 5
  %7863 = call i32 @dx.op.binary.i32(i32 40, i32 %7862, i32 %7851)  ; UMin(a,b)
  %7864 = icmp ugt i32 %7861, %7863
  br i1 %7864, label %8533, label %7865

; <label>:7865                                    ; preds = %7816
  br label %7866

; <label>:7866                                    ; preds = %8523, %7865
  %7867 = phi i32 [ %8530, %8523 ], [ %7861, %7865 ]
  %7868 = phi float [ %8524, %8523 ], [ %7807, %7865 ]
  %7869 = phi float [ %8525, %8523 ], [ %7808, %7865 ]
  %7870 = phi float [ %8526, %8523 ], [ %7809, %7865 ]
  %7871 = phi float [ %8527, %8523 ], [ %7810, %7865 ]
  %7872 = phi float [ %8528, %8523 ], [ %7811, %7865 ]
  %7873 = phi float [ %8529, %8523 ], [ %7812, %7865 ]
  %7874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.i32 %7874, 0
  %7876 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7849, i32 %7875, i32 %7867)  ; UMad(a,b,c)
  %7877 = shl i32 %7876, 2
  %7878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7877, i32 undef)  ; BufferLoad(srv,index,wot)
  %7879 = extractvalue %dx.types.ResRet.i32 %7878, 0
  %7880 = shl i32 %7867, 5
  %7881 = sub nsw i32 %7859, %7880
  %7882 = call i32 @dx.op.binary.i32(i32 37, i32 %7881, i32 0)  ; IMax(a,b)
  %7883 = call i32 @dx.op.binary.i32(i32 38, i32 %7882, i32 31)  ; IMin(a,b)
  %7884 = sub nsw i32 1, %7859
  %7885 = add nsw i32 %7884, %7860
  %7886 = call i32 @dx.op.binary.i32(i32 37, i32 %7885, i32 0)  ; IMax(a,b)
  %7887 = call i32 @dx.op.binary.i32(i32 38, i32 %7886, i32 32)  ; IMin(a,b)
  %7888 = and i32 %7887, 31
  %7889 = shl i32 -1, %7888
  %7890 = xor i32 %7889, -1
  %7891 = and i32 %7883, 31
  %7892 = shl i32 %7890, %7891
  %7893 = icmp eq i32 %7887, 32
  %7894 = select i1 %7893, i32 -1, i32 %7892
  %7895 = and i32 %7894, %7879
  %7896 = icmp eq i32 %7895, 0
  br i1 %7896, label %8523, label %7897

; <label>:7897                                    ; preds = %7866
  br label %7898

; <label>:7898                                    ; preds = %8032, %7897
  %7899 = phi i32 [ %7910, %8032 ], [ %7895, %7897 ]
  %7900 = phi float [ %8033, %8032 ], [ %7868, %7897 ]
  %7901 = phi float [ %8034, %8032 ], [ %7869, %7897 ]
  %7902 = phi float [ %8035, %8032 ], [ %7870, %7897 ]
  %7903 = phi float [ %8036, %8032 ], [ %7871, %7897 ]
  %7904 = phi float [ %8037, %8032 ], [ %7872, %7897 ]
  %7905 = phi float [ %8038, %8032 ], [ %7873, %7897 ]
  %7906 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7899)  ; FirstbitLo(value)
  %7907 = add i32 %7906, %7880
  %7908 = and i32 %7906, 31
  %7909 = shl i32 1, %7908
  %7910 = xor i32 %7909, %7899
  %7911 = mul i32 %7907, 112
  %7912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7911, i32 undef)  ; BufferLoad(srv,index,wot)
  %7913 = extractvalue %dx.types.ResRet.f32 %7912, 0
  %7914 = extractvalue %dx.types.ResRet.f32 %7912, 1
  %7915 = extractvalue %dx.types.ResRet.f32 %7912, 2
  %7916 = or i32 %7911, 12
  %7917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7916, i32 undef)  ; BufferLoad(srv,index,wot)
  %7918 = extractvalue %dx.types.ResRet.f32 %7917, 0
  %7919 = add i32 %7911, 16
  %7920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7919, i32 undef)  ; BufferLoad(srv,index,wot)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.ResRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.ResRet.f32 %7920, 2
  %7924 = add i32 %7911, 28
  %7925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7924, i32 undef)  ; BufferLoad(srv,index,wot)
  %7926 = extractvalue %dx.types.ResRet.i32 %7925, 0
  %7927 = add i32 %7911, 44
  %7928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7927, i32 undef)  ; BufferLoad(srv,index,wot)
  %7929 = extractvalue %dx.types.ResRet.f32 %7928, 0
  %7930 = add i32 %7911, 48
  %7931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7930, i32 undef)  ; BufferLoad(srv,index,wot)
  %7932 = extractvalue %dx.types.ResRet.f32 %7931, 0
  %7933 = extractvalue %dx.types.ResRet.f32 %7931, 1
  %7934 = extractvalue %dx.types.ResRet.f32 %7931, 2
  %7935 = extractvalue %dx.types.ResRet.f32 %7931, 3
  %7936 = add i32 %7911, 64
  %7937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7936, i32 undef)  ; BufferLoad(srv,index,wot)
  %7938 = extractvalue %dx.types.ResRet.f32 %7937, 0
  %7939 = extractvalue %dx.types.ResRet.f32 %7937, 1
  %7940 = extractvalue %dx.types.ResRet.f32 %7937, 2
  %7941 = extractvalue %dx.types.ResRet.f32 %7937, 3
  %7942 = add i32 %7911, 80
  %7943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %7942, i32 undef)  ; BufferLoad(srv,index,wot)
  %7944 = extractvalue %dx.types.ResRet.f32 %7943, 1
  %7945 = extractvalue %dx.types.ResRet.f32 %7943, 2
  %7946 = add i32 %7911, 92
  %7947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %7946, i32 undef)  ; BufferLoad(srv,index,wot)
  %7948 = extractvalue %dx.types.ResRet.i32 %7947, 0
  %7949 = call float @dx.op.dot3.f32(i32 55, float %7913, float %7914, float %7915, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7950 = select i1 %232, float %7944, float %7913
  %7951 = select i1 %232, float %7949, float %7914
  %7952 = select i1 %232, float %7945, float %7915
  %7953 = and i32 %7948, 65535
  %7954 = uitofp i32 %7953 to float
  %7955 = lshr i32 %7948, 16
  %7956 = uitofp i32 %7955 to float
  %7957 = and i32 %7926, 65535
  %7958 = and i32 %7926, 50331648
  %7959 = icmp eq i32 %7958, 33554432
  %7960 = fsub fast float %7932, %170
  %7961 = fsub fast float %7933, %171
  %7962 = fsub fast float %7934, %172
  %7963 = call float @dx.op.dot3.f32(i32 55, float %7960, float %7961, float %7962, float %7960, float %7961, float %7962)  ; Dot3(ax,ay,az,bx,by,bz)
  %7964 = call float @dx.op.unary.f32(i32 24, float %7963)  ; Sqrt(value)
  %7965 = fdiv fast float 1.000000e+00, %7964
  %7966 = fmul fast float %7965, %7960
  %7967 = fmul fast float %7965, %7961
  %7968 = fmul fast float %7965, %7962
  %7969 = fadd fast float %7964, %7918
  %7970 = fdiv fast float 1.000000e+00, %7969
  %7971 = fmul float %7929, %7970
  %7972 = fmul float %7971, %7971
  %7973 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  br i1 %7959, label %7974, label %7995

; <label>:7974                                    ; preds = %7898
  %7975 = fmul fast float %7940, %7921
  %7976 = fmul fast float %7940, %7922
  %7977 = fmul fast float %7940, %7923
  %7978 = fadd fast float %7960, %7975
  %7979 = fadd fast float %7961, %7976
  %7980 = fadd fast float %7962, %7977
  %7981 = call float @dx.op.dot3.f32(i32 55, float %7978, float %7979, float %7980, float %7978, float %7979, float %7980)  ; Dot3(ax,ay,az,bx,by,bz)
  %7982 = call float @dx.op.unary.f32(i32 25, float %7981)  ; Rsqrt(value)
  %7983 = fmul fast float %7982, %7978
  %7984 = fmul fast float %7982, %7979
  %7985 = fmul fast float %7982, %7980
  %7986 = fsub fast float %170, %7932
  %7987 = fsub fast float %171, %7933
  %7988 = fsub fast float %172, %7934
  %7989 = fsub fast float -0.000000e+00, %7986
  %7990 = fsub fast float -0.000000e+00, %7987
  %7991 = fsub fast float -0.000000e+00, %7988
  %7992 = call float @dx.op.dot3.f32(i32 55, float %7989, float %7990, float %7991, float %7921, float %7922, float %7923)  ; Dot3(ax,ay,az,bx,by,bz)
  %7993 = fcmp fast ogt float %7992, 0.000000e+00
  %7994 = uitofp i1 %7993 to float
  br label %7995

; <label>:7995                                    ; preds = %7974, %7898
  %7996 = phi float [ %7994, %7974 ], [ 1.000000e+00, %7898 ]
  %7997 = phi float [ %7983, %7974 ], [ %7966, %7898 ]
  %7998 = phi float [ %7984, %7974 ], [ %7967, %7898 ]
  %7999 = phi float [ %7985, %7974 ], [ %7968, %7898 ]
  %8000 = call float @dx.op.dot3.f32(i32 55, float %7921, float %7922, float %7923, float %7997, float %7998, float %7999)  ; Dot3(ax,ay,az,bx,by,bz)
  %8001 = fmul fast float %8000, %8000
  %8002 = call float @dx.op.unary.f32(i32 7, float %8001)  ; Saturate(value)
  %8003 = fsub fast float 1.000000e+00, %8002
  %8004 = fmul fast float %8003, 5.000000e-01
  %8005 = fcmp fast ogt float %8000, 0.000000e+00
  %8006 = fsub fast float 1.000000e+00, %8004
  %8007 = select i1 %8005, float %8004, float %8006
  %8008 = fmul fast float %8007, %7956
  %8009 = fadd fast float %8008, %7954
  %8010 = fmul fast float %8009, 0x3EF0001000000000
  %8011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8010, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8012 = extractvalue %dx.types.ResRet.f32 %8011, 0
  %8013 = fmul fast float %8000, %7938
  %8014 = fadd fast float %8013, %7939
  %8015 = call float @dx.op.unary.f32(i32 7, float %8014)  ; Saturate(value)
  %8016 = select i1 %7959, float 1.000000e+00, float %8015
  %8017 = select i1 %7959, float %8015, float 1.000000e+00
  %8018 = fmul fast float %7964, %7935
  %8019 = fsub fast float 1.000000e+00, %8018
  %8020 = fmul fast float %8019, %7941
  %8021 = call float @dx.op.unary.f32(i32 7, float %8020)  ; Saturate(value)
  %8022 = fmul fast float %8021, %8017
  %8023 = fmul fast float %8022, 2.000000e+00
  %8024 = fsub fast float 3.000000e+00, %8023
  %8025 = fmul fast float %8012, %7996
  %8026 = fmul fast float %8022, %8022
  %8027 = fmul fast float %8026, %8025
  %8028 = fmul fast float %8027, %8024
  %8029 = call float @dx.op.binary.f32(i32 36, float %8028, float %8028)  ; FMin(a,b)
  %8030 = call float @dx.op.binary.f32(i32 36, float %8028, float %8029)  ; FMin(a,b)
  %8031 = fcmp fast ogt float %8030, 0.000000e+00
  br i1 %8031, label %8040, label %8032, !dx.controlflow.hints !132

; <label>:8032                                    ; preds = %8471, %8186, %7995
  %8033 = phi float [ %7900, %8186 ], [ %7900, %7995 ], [ %8519, %8471 ]
  %8034 = phi float [ %7901, %8186 ], [ %7901, %7995 ], [ %8520, %8471 ]
  %8035 = phi float [ %7902, %8186 ], [ %7902, %7995 ], [ %8521, %8471 ]
  %8036 = phi float [ %7903, %8186 ], [ %7903, %7995 ], [ %8510, %8471 ]
  %8037 = phi float [ %7904, %8186 ], [ %7904, %7995 ], [ %8511, %8471 ]
  %8038 = phi float [ %7905, %8186 ], [ %7905, %7995 ], [ %8512, %8471 ]
  %8039 = icmp eq i32 %7899, %7909
  br i1 %8039, label %8522, label %7898

; <label>:8040                                    ; preds = %7995
  %8041 = icmp eq i32 %7957, 255
  br i1 %8041, label %8186, label %8042, !dx.controlflow.hints !133

; <label>:8042                                    ; preds = %8040
  %8043 = mul nuw nsw i32 %7957, 176
  %8044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8043, i32 undef)  ; BufferLoad(srv,index,wot)
  %8045 = extractvalue %dx.types.ResRet.f32 %8044, 0
  %8046 = extractvalue %dx.types.ResRet.f32 %8044, 1
  %8047 = extractvalue %dx.types.ResRet.f32 %8044, 2
  %8048 = extractvalue %dx.types.ResRet.f32 %8044, 3
  %8049 = add nuw nsw i32 %8043, 16
  %8050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8049, i32 undef)  ; BufferLoad(srv,index,wot)
  %8051 = extractvalue %dx.types.ResRet.f32 %8050, 0
  %8052 = extractvalue %dx.types.ResRet.f32 %8050, 1
  %8053 = add nuw nsw i32 %8043, 32
  %8054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8053, i32 undef)  ; BufferLoad(srv,index,wot)
  %8055 = extractvalue %dx.types.ResRet.f32 %8054, 0
  %8056 = extractvalue %dx.types.ResRet.f32 %8054, 1
  %8057 = extractvalue %dx.types.ResRet.f32 %8054, 2
  %8058 = add nuw nsw i32 %8043, 48
  %8059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8058, i32 undef)  ; BufferLoad(srv,index,wot)
  %8060 = extractvalue %dx.types.ResRet.f32 %8059, 0
  %8061 = extractvalue %dx.types.ResRet.f32 %8059, 1
  %8062 = extractvalue %dx.types.ResRet.f32 %8059, 2
  %8063 = extractvalue %dx.types.ResRet.f32 %8059, 3
  %8064 = add nuw nsw i32 %8043, 64
  %8065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8064, i32 undef)  ; BufferLoad(srv,index,wot)
  %8066 = extractvalue %dx.types.ResRet.f32 %8065, 0
  %8067 = extractvalue %dx.types.ResRet.f32 %8065, 1
  %8068 = extractvalue %dx.types.ResRet.f32 %8065, 2
  %8069 = extractvalue %dx.types.ResRet.f32 %8065, 3
  %8070 = add nuw nsw i32 %8043, 80
  %8071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8070, i32 undef)  ; BufferLoad(srv,index,wot)
  %8072 = extractvalue %dx.types.ResRet.f32 %8071, 0
  %8073 = extractvalue %dx.types.ResRet.f32 %8071, 1
  %8074 = extractvalue %dx.types.ResRet.f32 %8071, 2
  %8075 = extractvalue %dx.types.ResRet.f32 %8071, 3
  %8076 = add nuw nsw i32 %8043, 96
  %8077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8076, i32 undef)  ; BufferLoad(srv,index,wot)
  %8078 = extractvalue %dx.types.ResRet.f32 %8077, 0
  %8079 = extractvalue %dx.types.ResRet.f32 %8077, 1
  %8080 = extractvalue %dx.types.ResRet.f32 %8077, 2
  %8081 = extractvalue %dx.types.ResRet.f32 %8077, 3
  %8082 = bitcast float %8052 to i32
  %8083 = fmul fast float %8057, %120
  %8084 = fmul fast float %8057, %122
  %8085 = fmul fast float %8057, %124
  %8086 = fadd fast float %8083, %170
  %8087 = fadd fast float %8084, %171
  %8088 = fadd fast float %8085, %172
  %8089 = fmul fast float %8086, %8060
  %8090 = call float @dx.op.tertiary.f32(i32 46, float %8087, float %8066, float %8089)  ; FMad(a,b,c)
  %8091 = call float @dx.op.tertiary.f32(i32 46, float %8088, float %8072, float %8090)  ; FMad(a,b,c)
  %8092 = fadd fast float %8091, %8078
  %8093 = fmul fast float %8086, %8061
  %8094 = call float @dx.op.tertiary.f32(i32 46, float %8087, float %8067, float %8093)  ; FMad(a,b,c)
  %8095 = call float @dx.op.tertiary.f32(i32 46, float %8088, float %8073, float %8094)  ; FMad(a,b,c)
  %8096 = fadd fast float %8095, %8079
  %8097 = fmul fast float %8086, %8062
  %8098 = call float @dx.op.tertiary.f32(i32 46, float %8087, float %8068, float %8097)  ; FMad(a,b,c)
  %8099 = call float @dx.op.tertiary.f32(i32 46, float %8088, float %8074, float %8098)  ; FMad(a,b,c)
  %8100 = fadd fast float %8099, %8080
  %8101 = fmul fast float %8086, %8063
  %8102 = call float @dx.op.tertiary.f32(i32 46, float %8087, float %8069, float %8101)  ; FMad(a,b,c)
  %8103 = call float @dx.op.tertiary.f32(i32 46, float %8088, float %8075, float %8102)  ; FMad(a,b,c)
  %8104 = fadd fast float %8103, %8081
  %8105 = fdiv fast float %8092, %8104
  %8106 = fdiv fast float %8096, %8104
  %8107 = fdiv fast float %8100, %8104
  %8108 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8107)  ; FMax(a,b)
  %8109 = fmul fast float %243, 0x401921FB60000000
  %8110 = call float @dx.op.unary.f32(i32 13, float %8109)  ; Sin(value)
  %8111 = call float @dx.op.unary.f32(i32 12, float %8109)  ; Cos(value)
  %8112 = fmul fast float %8111, %8056
  %8113 = call float @dx.op.tertiary.f32(i32 46, float %8110, float %8056, float 0.000000e+00)  ; FMad(a,b,c)
  %8114 = fmul fast float %8056, %8110
  %8115 = fsub fast float -0.000000e+00, %8114
  %8116 = call float @dx.op.tertiary.f32(i32 46, float %8111, float %8056, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8117

; <label>:8117                                    ; preds = %8117, %8042
  %8118 = phi float [ 0.000000e+00, %8042 ], [ %8150, %8117 ]
  %8119 = phi float [ 0.000000e+00, %8042 ], [ %8152, %8117 ]
  %8120 = phi i32 [ 0, %8042 ], [ %8153, %8117 ]
  %8121 = mul i32 %8120, 2
  %8122 = add i32 0, %8121
  %8123 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8122
  %8124 = load float, float* %8123, align 4
  %8125 = mul i32 %8120, 2
  %8126 = add i32 1, %8125
  %8127 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8126
  %8128 = load float, float* %8127, align 4
  %8129 = fmul fast float %8112, %8124
  %8130 = call float @dx.op.tertiary.f32(i32 46, float %8128, float %8115, float %8129)  ; FMad(a,b,c)
  %8131 = fmul fast float %8124, %8113
  %8132 = call float @dx.op.tertiary.f32(i32 46, float %8128, float %8116, float %8131)  ; FMad(a,b,c)
  %8133 = fadd fast float %8130, %8105
  %8134 = fadd fast float %8132, %8106
  %8135 = fmul fast float %8133, %8051
  %8136 = fmul fast float %8134, %8051
  %8137 = call float @dx.op.binary.f32(i32 35, float %8135, float %8047)  ; FMax(a,b)
  %8138 = call float @dx.op.binary.f32(i32 35, float %8136, float %8047)  ; FMax(a,b)
  %8139 = call float @dx.op.binary.f32(i32 36, float %8137, float %8048)  ; FMin(a,b)
  %8140 = call float @dx.op.binary.f32(i32 36, float %8138, float %8048)  ; FMin(a,b)
  %8141 = fadd fast float %8139, %8045
  %8142 = fadd fast float %8140, %8046
  %8143 = uitofp i32 %8082 to float
  %8144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8141, float %8142, float %8143, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8145 = extractvalue %dx.types.ResRet.f32 %8144, 0
  %8146 = fsub fast float %8145, %8108
  %8147 = fsub fast float %8146, %8055
  %8148 = fcmp fast ogt float %8147, 0.000000e+00
  %8149 = select i1 %8148, float 1.000000e+00, float 0.000000e+00
  %8150 = fadd fast float %8149, %8118
  %8151 = select i1 %8148, float %8147, float 0.000000e+00
  %8152 = fadd fast float %8151, %8119
  %8153 = add nuw nsw i32 %8120, 1
  %8154 = icmp eq i32 %8153, 8
  br i1 %8154, label %8155, label %8117

; <label>:8155                                    ; preds = %8117
  %8156 = fdiv fast float 1.000000e+00, %8150
  %8157 = fmul fast float %8156, %8152
  %8158 = fdiv fast float 1.000000e+00, %8108
  %8159 = fmul fast float %8157, %8158
  %8160 = call float @dx.op.unary.f32(i32 7, float %8159)  ; Saturate(value)
  %8161 = call float @dx.op.binary.f32(i32 35, float %8160, float 0.000000e+00)  ; FMax(a,b)
  %8162 = fmul fast float %8150, 1.250000e-01
  %8163 = call float @dx.op.unary.f32(i32 7, float %8162)  ; Saturate(value)
  %8164 = fmul fast float %8163, 2.000000e+00
  %8165 = fadd fast float %8164, -1.000000e+00
  %8166 = fcmp fast ogt float %8165, 0.000000e+00
  %8167 = fcmp fast olt float %8165, 0.000000e+00
  %8168 = zext i1 %8166 to i32
  %8169 = zext i1 %8167 to i32
  %8170 = sub nsw i32 %8168, %8169
  %8171 = sitofp i32 %8170 to float
  %8172 = fmul fast float %8171, %8165
  %8173 = fsub fast float 1.000000e+00, %8172
  %8174 = fmul fast float %8173, %8173
  %8175 = fmul fast float %8174, %8173
  %8176 = fsub fast float %8173, %8175
  %8177 = fmul fast float %8176, %8161
  %8178 = fsub fast float 1.000000e+00, %8175
  %8179 = fsub fast float %8178, %8177
  %8180 = fmul fast float %8171, 5.000000e-01
  %8181 = fmul fast float %8180, %8179
  %8182 = fsub fast float -5.000000e-01, %8181
  %8183 = fmul fast float %8182, %8016
  %8184 = fadd fast float %8183, 1.000000e+00
  %8185 = fmul fast float %8184, %8028
  br label %8186

; <label>:8186                                    ; preds = %8155, %8040
  %8187 = phi float [ %8185, %8155 ], [ %8028, %8040 ]
  %8188 = call float @dx.op.binary.f32(i32 36, float %8187, float %8187)  ; FMin(a,b)
  %8189 = call float @dx.op.binary.f32(i32 36, float %8187, float %8188)  ; FMin(a,b)
  %8190 = fcmp fast ogt float %8189, 0.000000e+00
  br i1 %8190, label %8191, label %8032, !dx.controlflow.hints !134

; <label>:8191                                    ; preds = %8186
  %8192 = fmul fast float %8187, %7950
  %8193 = fmul fast float %8187, %7951
  %8194 = fmul fast float %8187, %7952
  %8195 = fsub fast float %7934, %5115
  %8196 = fcmp fast ogt float %8195, 0.000000e+00
  %8197 = fsub fast float %172, %5115
  %8198 = fcmp fast ogt float %8197, 0.000000e+00
  %8199 = xor i1 %8198, %8196
  %8200 = fsub fast float %5115, %7934
  %8201 = fmul fast float %8200, 2.000000e+00
  %8202 = fadd fast float %8201, %7934
  %8203 = select i1 %8199, float %7934, float %8202
  %8204 = fsub fast float %8203, %172
  %8205 = call float @dx.op.dot3.f32(i32 55, float %7960, float %7961, float %8204, float %7960, float %7961, float %8204)  ; Dot3(ax,ay,az,bx,by,bz)
  %8206 = call float @dx.op.unary.f32(i32 25, float %8205)  ; Rsqrt(value)
  %8207 = fmul fast float %8206, %7960
  %8208 = fmul fast float %8206, %7961
  %8209 = fmul fast float %8206, %8204
  %8210 = fsub fast float %5115, %172
  %8211 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8210)  ; Dot3(ax,ay,az,bx,by,bz)
  %8212 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8207, float %8208, float %8209)  ; Dot3(ax,ay,az,bx,by,bz)
  %8213 = fdiv fast float 1.000000e+00, %8212
  %8214 = fmul fast float %8213, %8211
  %8215 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8197, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8216 = fcmp fast ogt float %8215, 0.000000e+00
  %8217 = fcmp fast olt float %8215, 0.000000e+00
  %8218 = zext i1 %8216 to i32
  %8219 = zext i1 %8217 to i32
  %8220 = sub nsw i32 %8218, %8219
  %8221 = sitofp i32 %8220 to float
  %8222 = fsub fast float %8203, %5115
  %8223 = call float @dx.op.dot3.f32(i32 55, float %7960, float %7961, float %8222, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8224 = fcmp fast ogt float %8223, 0.000000e+00
  %8225 = fcmp fast olt float %8223, 0.000000e+00
  %8226 = zext i1 %8224 to i32
  %8227 = zext i1 %8225 to i32
  %8228 = sub nsw i32 %8226, %8227
  %8229 = sitofp i32 %8228 to float
  %8230 = fcmp fast une float %8221, %8229
  br i1 %8230, label %8231, label %8241

; <label>:8231                                    ; preds = %8191
  %8232 = fmul fast float %8214, %8209
  %8233 = fmul fast float %8214, %8208
  %8234 = fmul fast float %8214, %8207
  %8235 = fmul fast float %8234, %8234
  %8236 = fmul fast float %8233, %8233
  %8237 = fadd fast float %8235, %8236
  %8238 = fmul fast float %8232, %8232
  %8239 = fadd fast float %8237, %8238
  %8240 = call float @dx.op.unary.f32(i32 24, float %8239)  ; Sqrt(value)
  br label %8253

; <label>:8241                                    ; preds = %8191
  %8242 = icmp slt i32 %8220, 0
  br i1 %8242, label %8243, label %8253

; <label>:8243                                    ; preds = %8241
  %8244 = fsub fast float %170, %7932
  %8245 = fsub fast float %171, %7933
  %8246 = fsub fast float %172, %8203
  %8247 = fmul fast float %8244, %8244
  %8248 = fmul fast float %8245, %8245
  %8249 = fadd fast float %8247, %8248
  %8250 = fmul fast float %8246, %8246
  %8251 = fadd fast float %8249, %8250
  %8252 = call float @dx.op.unary.f32(i32 24, float %8251)  ; Sqrt(value)
  br label %8253

; <label>:8253                                    ; preds = %8243, %8241, %8231
  %8254 = phi float [ %8240, %8231 ], [ %8252, %8243 ], [ 0.000000e+00, %8241 ]
  %8255 = and i1 %8198, %8196
  %8256 = fsub fast float -0.000000e+00, %8254
  %8257 = select i1 %8255, float -0.000000e+00, float %8256
  %8258 = fmul fast float %5116, 0x3FF7154760000000
  %8259 = fmul fast float %8258, %8257
  %8260 = fmul fast float %5117, 0x3FF7154760000000
  %8261 = fmul fast float %8260, %8257
  %8262 = fmul fast float %5118, 0x3FF7154760000000
  %8263 = fmul fast float %8262, %8257
  %8264 = call float @dx.op.unary.f32(i32 21, float %8259)  ; Exp(value)
  %8265 = call float @dx.op.unary.f32(i32 21, float %8261)  ; Exp(value)
  %8266 = call float @dx.op.unary.f32(i32 21, float %8263)  ; Exp(value)
  %8267 = call float @dx.op.unary.f32(i32 7, float %8264)  ; Saturate(value)
  %8268 = call float @dx.op.unary.f32(i32 7, float %8265)  ; Saturate(value)
  %8269 = call float @dx.op.unary.f32(i32 7, float %8266)  ; Saturate(value)
  %8270 = fmul fast float %8192, %8267
  %8271 = fmul fast float %8193, %8268
  %8272 = fmul fast float %8194, %8269
  %8273 = fsub fast float %7966, %5315
  %8274 = fsub fast float %7967, %5314
  %8275 = fsub fast float %7968, %5313
  %8276 = call float @dx.op.dot3.f32(i32 55, float %8273, float %8274, float %8275, float %8273, float %8274, float %8275)  ; Dot3(ax,ay,az,bx,by,bz)
  %8277 = call float @dx.op.unary.f32(i32 25, float %8276)  ; Rsqrt(value)
  %8278 = fmul fast float %8277, %8273
  %8279 = fmul fast float %8277, %8274
  %8280 = fmul fast float %8277, %8275
  %8281 = call float @dx.op.dot3.f32(i32 55, float %7966, float %7967, float %7968, float %5322, float %5323, float %5324)  ; Dot3(ax,ay,az,bx,by,bz)
  %8282 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5311, float %5310, float %8278, float %8279, float %8280)  ; Dot3(ax,ay,az,bx,by,bz)
  %8283 = call float @dx.op.unary.f32(i32 7, float %8281)  ; Saturate(value)
  %8284 = fmul fast float %8283, %7973
  %8285 = fmul fast float %8283, %8283
  %8286 = fmul fast float %8285, %5355
  %8287 = call float @dx.op.unary.f32(i32 7, float %8286)  ; Saturate(value)
  %8288 = fmul fast float %8284, %8287
  %8289 = bitcast float %7963 to i32
  %8290 = ashr i32 %8289, 1
  %8291 = sub nsw i32 1597463007, %8290
  %8292 = bitcast i32 %8291 to float
  %8293 = fmul fast float %8292, %7960
  %8294 = fmul fast float %8292, %7961
  %8295 = fmul fast float %8292, %7962
  %8296 = fsub fast float %8293, %5315
  %8297 = fsub fast float %8294, %5314
  %8298 = fsub fast float %8295, %5313
  %8299 = call float @dx.op.dot3.f32(i32 55, float %8296, float %8297, float %8298, float %8296, float %8297, float %8298)  ; Dot3(ax,ay,az,bx,by,bz)
  %8300 = call float @dx.op.unary.f32(i32 25, float %8299)  ; Rsqrt(value)
  %8301 = fmul fast float %8296, %8300
  %8302 = fmul fast float %8297, %8300
  %8303 = fmul fast float %8298, %8300
  %8304 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5323, float %5324, float %8301, float %8302, float %8303)  ; Dot3(ax,ay,az,bx,by,bz)
  %8305 = fmul fast float %8304, %8304
  %8306 = call float @dx.op.unary.f32(i32 6, float %8281)  ; FAbs(value)
  %8307 = fsub fast float 1.000000e+00, %5348
  %8308 = fmul fast float %5330, %5330
  %8309 = fmul fast float %8308, %8307
  %8310 = fadd fast float %8309, %5348
  %8311 = bitcast float %8310 to i32
  %8312 = ashr i32 %8311, 1
  %8313 = add nsw i32 %8312, 532487669
  %8314 = bitcast i32 %8313 to float
  %8315 = fadd fast float %8314, %5330
  %8316 = fmul fast float %5348, %8305
  %8317 = fsub fast float 1.000000e+00, %8305
  %8318 = fadd fast float %8317, %8316
  %8319 = fmul fast float %8306, %8306
  %8320 = fmul fast float %8319, %8307
  %8321 = fadd fast float %8320, %5348
  %8322 = bitcast float %8321 to i32
  %8323 = ashr i32 %8322, 1
  %8324 = add nsw i32 %8323, 532487669
  %8325 = bitcast i32 %8324 to float
  %8326 = fadd fast float %8325, %8306
  %8327 = fmul fast float %8318, %8318
  %8328 = fmul fast float %8327, %8315
  %8329 = fmul fast float %8328, %8326
  %8330 = fdiv fast float 1.000000e+00, %8329
  %8331 = bitcast float %5348 to i32
  %8332 = sitofp i32 %8331 to float
  %8333 = fmul fast float %8332, 0x3FE7F73180000000
  %8334 = fadd fast float %8333, 0x41AFE27C40000000
  %8335 = fptosi float %8334 to i32
  %8336 = bitcast i32 %8335 to float
  %8337 = fmul fast float %7929, 0x3FD80E9D60000000
  %8338 = fmul fast float %8337, %8292
  %8339 = fadd fast float %8336, %8338
  %8340 = bitcast float %8339 to i32
  %8341 = sub nsw i32 2129859010, %8340
  %8342 = bitcast i32 %8341 to float
  %8343 = fmul fast float %5348, %8330
  %8344 = fmul fast float %8343, %8336
  %8345 = fmul fast float %8344, %8342
  %8346 = call float @dx.op.unary.f32(i32 6, float %8282)  ; FAbs(value)
  %8347 = fsub fast float 1.000000e+00, %8346
  %8348 = bitcast float %8347 to i32
  %8349 = sitofp i32 %8348 to float
  %8350 = fmul fast float %8349, 5.000000e+00
  %8351 = fadd fast float %8350, 0xC1EFBF8940000000
  %8352 = fptosi float %8351 to i32
  %8353 = bitcast i32 %8352 to float
  %8354 = fsub fast float 1.000000e+00, %5319
  %8355 = fsub fast float 1.000000e+00, %5320
  %8356 = fsub fast float 1.000000e+00, %5328
  %8357 = fmul fast float %8353, %8354
  %8358 = fmul fast float %8353, %8355
  %8359 = fmul fast float %8353, %8356
  %8360 = fadd fast float %8357, %5319
  %8361 = fadd fast float %8358, %5320
  %8362 = fadd fast float %8359, %5328
  br i1 %5613, label %8363, label %8386

; <label>:8363                                    ; preds = %8253
  %8364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4648, float %8346, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8365 = extractvalue %dx.types.ResRet.f32 %8364, 0
  %8366 = extractvalue %dx.types.ResRet.f32 %8364, 1
  %8367 = extractvalue %dx.types.ResRet.f32 %8364, 2
  %8368 = fadd fast float %8365, -5.000000e-01
  %8369 = fadd fast float %8366, -5.000000e-01
  %8370 = fadd fast float %8367, -5.000000e-01
  %8371 = fmul fast float %5319, 4.000000e+00
  %8372 = fmul fast float %8371, %8354
  %8373 = fmul fast float %8372, %8368
  %8374 = fmul fast float %5320, 4.000000e+00
  %8375 = fmul fast float %8374, %8355
  %8376 = fmul fast float %8375, %8369
  %8377 = fmul fast float %5328, 4.000000e+00
  %8378 = fmul fast float %8377, %8356
  %8379 = fmul fast float %8378, %8370
  %8380 = fadd fast float %8373, %8360
  %8381 = fadd fast float %8376, %8361
  %8382 = fadd fast float %8379, %8362
  %8383 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  %8384 = call float @dx.op.unary.f32(i32 7, float %8381)  ; Saturate(value)
  %8385 = call float @dx.op.unary.f32(i32 7, float %8382)  ; Saturate(value)
  br label %8386

; <label>:8386                                    ; preds = %8363, %8253
  %8387 = phi float [ %8383, %8363 ], [ %8360, %8253 ]
  %8388 = phi float [ %8384, %8363 ], [ %8361, %8253 ]
  %8389 = phi float [ %8385, %8363 ], [ %8362, %8253 ]
  %8390 = fmul fast float %8281, 9.843750e-01
  %8391 = fadd fast float %8390, 7.812500e-03
  %8392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8391, float %5603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8393 = extractvalue %dx.types.ResRet.f32 %8392, 2
  %8394 = extractvalue %dx.types.ResRet.f32 %8392, 3
  %8395 = fmul fast float %8393, %5319
  %8396 = fmul fast float %8393, %5320
  %8397 = fmul fast float %8393, %5328
  %8398 = fadd fast float %8395, %8394
  %8399 = fadd fast float %8396, %8394
  %8400 = fadd fast float %8397, %8394
  br i1 %5613, label %8401, label %8424

; <label>:8401                                    ; preds = %8386
  %8402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4648, float %8281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8403 = extractvalue %dx.types.ResRet.f32 %8402, 0
  %8404 = extractvalue %dx.types.ResRet.f32 %8402, 1
  %8405 = extractvalue %dx.types.ResRet.f32 %8402, 2
  %8406 = fadd fast float %8403, -5.000000e-01
  %8407 = fadd fast float %8404, -5.000000e-01
  %8408 = fadd fast float %8405, -5.000000e-01
  %8409 = fmul fast float %5319, 4.000000e+00
  %8410 = fmul fast float %8409, %8354
  %8411 = fmul fast float %8410, %8406
  %8412 = fmul fast float %5320, 4.000000e+00
  %8413 = fmul fast float %8412, %8355
  %8414 = fmul fast float %8413, %8407
  %8415 = fmul fast float %5328, 4.000000e+00
  %8416 = fmul fast float %8415, %8356
  %8417 = fmul fast float %8416, %8408
  %8418 = fadd fast float %8411, %8398
  %8419 = fadd fast float %8414, %8399
  %8420 = fadd fast float %8417, %8400
  %8421 = call float @dx.op.unary.f32(i32 7, float %8418)  ; Saturate(value)
  %8422 = call float @dx.op.unary.f32(i32 7, float %8419)  ; Saturate(value)
  %8423 = call float @dx.op.unary.f32(i32 7, float %8420)  ; Saturate(value)
  br label %8424

; <label>:8424                                    ; preds = %8401, %8386
  %8425 = phi float [ %8421, %8401 ], [ %8398, %8386 ]
  %8426 = phi float [ %8422, %8401 ], [ %8399, %8386 ]
  %8427 = phi float [ %8423, %8401 ], [ %8400, %8386 ]
  %8428 = call float @dx.op.binary.f32(i32 35, float %8426, float %8427)  ; FMax(a,b)
  %8429 = call float @dx.op.binary.f32(i32 35, float %8425, float %8428)  ; FMax(a,b)
  %8430 = fsub fast float 1.000000e+00, %8429
  %8431 = fsub fast float -0.000000e+00, %5322
  %8432 = fsub fast float -0.000000e+00, %5323
  %8433 = fsub fast float -0.000000e+00, %5324
  %8434 = call float @dx.op.dot3.f32(i32 55, float %7966, float %7967, float %7968, float %8431, float %8432, float %8433)  ; Dot3(ax,ay,az,bx,by,bz)
  %8435 = call float @dx.op.unary.f32(i32 7, float %8434)  ; Saturate(value)
  %8436 = fmul fast float %8435, %7973
  %8437 = fmul fast float %8435, 9.843750e-01
  %8438 = fadd fast float %8437, 7.812500e-03
  %8439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8438, float %5603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8440 = extractvalue %dx.types.ResRet.f32 %8439, 2
  %8441 = extractvalue %dx.types.ResRet.f32 %8439, 3
  %8442 = fmul fast float %8440, %5319
  %8443 = fmul fast float %8440, %5320
  %8444 = fmul fast float %8440, %5328
  %8445 = fadd fast float %8442, %8441
  %8446 = fadd fast float %8443, %8441
  %8447 = fadd fast float %8444, %8441
  br i1 %5613, label %8448, label %8471

; <label>:8448                                    ; preds = %8424
  %8449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4648, float %8435, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8450 = extractvalue %dx.types.ResRet.f32 %8449, 0
  %8451 = extractvalue %dx.types.ResRet.f32 %8449, 1
  %8452 = extractvalue %dx.types.ResRet.f32 %8449, 2
  %8453 = fadd fast float %8450, -5.000000e-01
  %8454 = fadd fast float %8451, -5.000000e-01
  %8455 = fadd fast float %8452, -5.000000e-01
  %8456 = fmul fast float %5319, 4.000000e+00
  %8457 = fmul fast float %8456, %8354
  %8458 = fmul fast float %8457, %8453
  %8459 = fmul fast float %5320, 4.000000e+00
  %8460 = fmul fast float %8459, %8355
  %8461 = fmul fast float %8460, %8454
  %8462 = fmul fast float %5328, 4.000000e+00
  %8463 = fmul fast float %8462, %8356
  %8464 = fmul fast float %8463, %8455
  %8465 = fadd fast float %8458, %8445
  %8466 = fadd fast float %8461, %8446
  %8467 = fadd fast float %8464, %8447
  %8468 = call float @dx.op.unary.f32(i32 7, float %8465)  ; Saturate(value)
  %8469 = call float @dx.op.unary.f32(i32 7, float %8466)  ; Saturate(value)
  %8470 = call float @dx.op.unary.f32(i32 7, float %8467)  ; Saturate(value)
  br label %8471

; <label>:8471                                    ; preds = %8448, %8424
  %8472 = phi float [ %8468, %8448 ], [ %8445, %8424 ]
  %8473 = phi float [ %8469, %8448 ], [ %8446, %8424 ]
  %8474 = phi float [ %8470, %8448 ], [ %8447, %8424 ]
  %8475 = call float @dx.op.binary.f32(i32 35, float %8473, float %8474)  ; FMax(a,b)
  %8476 = call float @dx.op.binary.f32(i32 35, float %8472, float %8475)  ; FMax(a,b)
  %8477 = fsub fast float 1.000000e+00, %8476
  %8478 = fmul fast float %8436, %8477
  %8479 = fmul fast float %8478, %4738
  %8480 = fmul fast float %8478, %4739
  %8481 = fmul fast float %8478, %4740
  %8482 = fmul fast float %8387, %8345
  %8483 = fmul fast float %8388, %8345
  %8484 = fmul fast float %8389, %8345
  %8485 = fsub fast float 1.000000e+00, %8282
  %8486 = bitcast float %8485 to i32
  %8487 = sitofp i32 %8486 to float
  %8488 = fmul fast float %8487, 5.000000e+00
  %8489 = fadd fast float %8488, 0xC1EFBF8940000000
  %8490 = fptosi float %8489 to i32
  %8491 = bitcast i32 %8490 to float
  %8492 = fmul fast float %8491, %4649
  %8493 = fmul fast float %8430, %8492
  %8494 = fmul fast float %8493, %6152
  %8495 = fmul fast float %8493, %6153
  %8496 = fmul fast float %8493, %6154
  %8497 = fmul fast float %8430, %8288
  %8498 = fadd fast float %8494, %8482
  %8499 = fadd fast float %8495, %8483
  %8500 = fadd fast float %8496, %8484
  %8501 = fadd fast float %8479, %8497
  %8502 = fadd fast float %8480, %8497
  %8503 = fadd fast float %8481, %8497
  %8504 = fmul fast float %8270, %4645
  %8505 = fmul fast float %8504, %8501
  %8506 = fmul fast float %8271, %4645
  %8507 = fmul fast float %8506, %8502
  %8508 = fmul fast float %8272, %4645
  %8509 = fmul fast float %8508, %8503
  %8510 = fadd fast float %8505, %7903
  %8511 = fadd fast float %8507, %7904
  %8512 = fadd fast float %8509, %7905
  %8513 = fmul fast float %8504, %8288
  %8514 = fmul fast float %8513, %8498
  %8515 = fmul fast float %8506, %8288
  %8516 = fmul fast float %8515, %8499
  %8517 = fmul fast float %8508, %8288
  %8518 = fmul fast float %8517, %8500
  %8519 = fadd fast float %8514, %7900
  %8520 = fadd fast float %8516, %7901
  %8521 = fadd fast float %8518, %7902
  br label %8032

; <label>:8522                                    ; preds = %8032
  br label %8523

; <label>:8523                                    ; preds = %8522, %7866
  %8524 = phi float [ %7868, %7866 ], [ %8033, %8522 ]
  %8525 = phi float [ %7869, %7866 ], [ %8034, %8522 ]
  %8526 = phi float [ %7870, %7866 ], [ %8035, %8522 ]
  %8527 = phi float [ %7871, %7866 ], [ %8036, %8522 ]
  %8528 = phi float [ %7872, %7866 ], [ %8037, %8522 ]
  %8529 = phi float [ %7873, %7866 ], [ %8038, %8522 ]
  %8530 = add i32 %7867, 1
  %8531 = icmp ugt i32 %8530, %7863
  br i1 %8531, label %8532, label %7866

; <label>:8532                                    ; preds = %8523
  br label %8533

; <label>:8533                                    ; preds = %8532, %7816, %7806
  %8534 = phi float [ %7807, %7806 ], [ %7807, %7816 ], [ %8524, %8532 ]
  %8535 = phi float [ %7808, %7806 ], [ %7808, %7816 ], [ %8525, %8532 ]
  %8536 = phi float [ %7809, %7806 ], [ %7809, %7816 ], [ %8526, %8532 ]
  %8537 = phi float [ %7810, %7806 ], [ %7810, %7816 ], [ %8527, %8532 ]
  %8538 = phi float [ %7811, %7806 ], [ %7811, %7816 ], [ %8528, %8532 ]
  %8539 = phi float [ %7812, %7806 ], [ %7812, %7816 ], [ %8529, %8532 ]
  %8540 = fmul fast float %6161, %4645
  %8541 = fmul fast float %6162, %4645
  %8542 = fmul fast float %6163, %4645
  %8543 = fadd fast float %8540, 1.000000e+00
  %8544 = fadd fast float %8541, 1.000000e+00
  %8545 = fadd fast float %8542, 1.000000e+00
  %8546 = call float @dx.op.dot3.f32(i32 55, float %8543, float %8544, float %8545, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8547 = fsub fast float 1.000000e+00, %8546
  %8548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.f32 %8548, 0
  %8550 = fmul fast float %8549, %6167
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 3
  %8553 = fsub fast float 1.000000e+00, %4652
  %8554 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8555 = fadd fast float %8539, %4651
  %8556 = fmul fast float %8555, %4652
  %8557 = fmul fast float %8554, %8552
  %8558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8559 = extractvalue %dx.types.CBufRet.f32 %8558, 3
  %8560 = fmul fast float %8537, %5316
  %8561 = fmul fast float %8538, %5317
  %8562 = fmul fast float %8539, %5318
  %8563 = fcmp fast ogt float %99, %192
  %8564 = and i1 %8563, %5121
  %8565 = or i1 %5127, %8564
  %8566 = icmp eq i32 %5120, 2
  %8567 = fcmp fast ole float %99, %192
  %8568 = and i1 %8567, %8566
  %8569 = or i1 %8568, %8565
  br i1 %8564, label %8570, label %8827

; <label>:8570                                    ; preds = %8533
  %8571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8572 = extractvalue %dx.types.CBufRet.f32 %8571, 2
  %8573 = extractvalue %dx.types.CBufRet.f32 %8571, 3
  %8574 = fmul fast float %8572, %111
  %8575 = fmul fast float %8573, %112
  %8576 = call float @dx.op.unary.f32(i32 7, float %8574)  ; Saturate(value)
  %8577 = call float @dx.op.unary.f32(i32 7, float %8575)  ; Saturate(value)
  %8578 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8576, float %8577, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8579 = extractvalue %dx.types.ResRet.f32 %8578, 0
  %8580 = extractvalue %dx.types.ResRet.f32 %8578, 1
  %8581 = extractvalue %dx.types.ResRet.f32 %8578, 2
  %8582 = extractvalue %dx.types.ResRet.f32 %8578, 3
  %8583 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8576, float %8577, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8584 = extractvalue %dx.types.ResRet.f32 %8583, 0
  %8585 = extractvalue %dx.types.ResRet.f32 %8583, 1
  %8586 = extractvalue %dx.types.ResRet.f32 %8583, 2
  %8587 = extractvalue %dx.types.ResRet.f32 %8583, 3
  %8588 = call float @dx.op.binary.f32(i32 35, float %8580, float %8581)  ; FMax(a,b)
  %8589 = call float @dx.op.binary.f32(i32 35, float %8579, float %8588)  ; FMax(a,b)
  %8590 = call float @dx.op.binary.f32(i32 35, float %8589, float %8582)  ; FMax(a,b)
  %8591 = call float @dx.op.binary.f32(i32 36, float %8585, float %8586)  ; FMin(a,b)
  %8592 = call float @dx.op.binary.f32(i32 36, float %8584, float %8591)  ; FMin(a,b)
  %8593 = call float @dx.op.binary.f32(i32 36, float %8592, float %8587)  ; FMin(a,b)
  %8594 = fmul fast float %8590, 2.550000e+02
  %8595 = fadd fast float %8594, 0x3F70101020000000
  %8596 = fptoui float %8595 to i32
  %8597 = fmul fast float %8593, 2.550000e+02
  %8598 = fadd fast float %8597, 0x3F70101020000000
  %8599 = fptoui float %8598 to i32
  %8600 = icmp ult i32 %8596, %8599
  br i1 %8600, label %8601, label %8769

; <label>:8601                                    ; preds = %8570
  %8602 = fcmp fast ogt float %98, 9.843750e-01
  %8603 = fadd fast float %99, -4.000000e+00
  %8604 = select i1 %8602, float -4.000000e+00, float %8603
  %8605 = call float @dx.op.binary.f32(i32 35, float %8604, float 0.000000e+00)  ; FMax(a,b)
  %8606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8607 = extractvalue %dx.types.CBufRet.f32 %8606, 0
  %8608 = fadd fast float %8607, %8605
  %8609 = extractvalue %dx.types.CBufRet.f32 %8606, 2
  %8610 = fmul fast float %8608, %8609
  %8611 = call float @dx.op.unary.f32(i32 23, float %8610)  ; Log(value)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8606, 3
  %8613 = fmul fast float %8612, %8611
  %8614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8615 = extractvalue %dx.types.CBufRet.f32 %8614, 2
  %8616 = fmul fast float %8613, %8615
  %8617 = call float @dx.op.unary.f32(i32 7, float %8616)  ; Saturate(value)
  %8618 = uitofp i32 %8596 to float
  %8619 = uitofp i32 %8599 to float
  %8620 = fadd fast float %8618, 5.000000e-01
  %8621 = fadd fast float %8619, 5.000000e-01
  %8622 = fmul fast float %8615, %8620
  %8623 = fmul fast float %8615, %8621
  %8624 = fadd fast float %8622, 0x3F0FFB4800000000
  %8625 = fadd fast float %8623, 0xBF0FFB4800000000
  %8626 = call float @dx.op.binary.f32(i32 35, float %8617, float %8624)  ; FMax(a,b)
  %8627 = call float @dx.op.binary.f32(i32 36, float %8626, float %8625)  ; FMin(a,b)
  %8628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8628, 1
  %8630 = extractvalue %dx.types.CBufRet.f32 %8628, 2
  %8631 = extractvalue %dx.types.CBufRet.f32 %8628, 0
  %8632 = fmul fast float %8629, %8627
  %8633 = fadd fast float %8631, %8632
  %8634 = fadd fast float %8631, %8630
  %8635 = fsub fast float %8629, %8630
  %8636 = fadd fast float %8635, %8631
  %8637 = call float @dx.op.binary.f32(i32 35, float %8633, float %8634)  ; FMax(a,b)
  %8638 = call float @dx.op.binary.f32(i32 36, float %8637, float %8636)  ; FMin(a,b)
  %8639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8576, float %8577, float %8638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8640 = extractvalue %dx.types.ResRet.f32 %8639, 0
  %8641 = extractvalue %dx.types.ResRet.f32 %8639, 1
  %8642 = extractvalue %dx.types.ResRet.f32 %8639, 2
  %8643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.i32 %8643, 0
  %8645 = extractvalue %dx.types.CBufRet.i32 %8643, 1
  %8646 = uitofp i32 %8644 to float
  %8647 = uitofp i32 %8645 to float
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 0
  %8650 = extractvalue %dx.types.CBufRet.f32 %8648, 1
  %8651 = fmul fast float %8646, %8576
  %8652 = fmul fast float %8647, %8577
  %8653 = fadd fast float %8651, -5.000000e-01
  %8654 = fadd fast float %8652, -5.000000e-01
  %8655 = call float @dx.op.unary.f32(i32 22, float %8653)  ; Frc(value)
  %8656 = call float @dx.op.unary.f32(i32 22, float %8654)  ; Frc(value)
  %8657 = fmul fast float %8655, %8655
  %8658 = fmul fast float %8657, %8655
  %8659 = fsub fast float 3.000000e+00, %8655
  %8660 = fmul fast float %8657, %8659
  %8661 = fmul fast float %8655, 3.000000e+00
  %8662 = fmul fast float %8658, 3.000000e+00
  %8663 = fmul fast float %8657, 6.000000e+00
  %8664 = fsub fast float %8662, %8663
  %8665 = fadd fast float %8664, 4.000000e+00
  %8666 = fmul fast float %8665, 0x3FC5555560000000
  %8667 = fmul fast float %8658, -3.000000e+00
  %8668 = fadd fast float %8657, %8655
  %8669 = fmul fast float %8668, 3.000000e+00
  %8670 = fadd fast float %8667, 1.000000e+00
  %8671 = fadd fast float %8670, %8669
  %8672 = fmul fast float %8658, 0x3FC5555560000000
  %8673 = fmul fast float %8656, %8656
  %8674 = fmul fast float %8673, %8656
  %8675 = fsub fast float 3.000000e+00, %8656
  %8676 = fmul fast float %8673, %8675
  %8677 = fmul fast float %8656, 3.000000e+00
  %8678 = fmul fast float %8674, 3.000000e+00
  %8679 = fmul fast float %8673, 6.000000e+00
  %8680 = fsub fast float %8678, %8679
  %8681 = fadd fast float %8680, 4.000000e+00
  %8682 = fmul fast float %8681, 0x3FC5555560000000
  %8683 = fmul fast float %8674, -3.000000e+00
  %8684 = fadd fast float %8673, %8656
  %8685 = fmul fast float %8684, 3.000000e+00
  %8686 = fadd fast float %8683, 1.000000e+00
  %8687 = fadd fast float %8686, %8685
  %8688 = fmul fast float %8674, 0x3FC5555560000000
  %8689 = fadd fast float %8655, 1.000000e+00
  %8690 = fsub fast float 1.000000e+00, %8661
  %8691 = fadd fast float %8690, %8660
  %8692 = fadd fast float %8691, %8665
  %8693 = fmul fast float %8692, 0x3FC5555560000000
  %8694 = fdiv fast float %8666, %8693
  %8695 = fsub fast float %8689, %8694
  %8696 = fsub fast float 1.000000e+00, %8655
  %8697 = fadd fast float %8671, %8658
  %8698 = fmul fast float %8697, 0x3FC5555560000000
  %8699 = fdiv fast float %8672, %8698
  %8700 = fadd fast float %8696, %8699
  %8701 = fadd fast float %8656, 1.000000e+00
  %8702 = fsub fast float 1.000000e+00, %8677
  %8703 = fadd fast float %8702, %8676
  %8704 = fadd fast float %8703, %8681
  %8705 = fmul fast float %8704, 0x3FC5555560000000
  %8706 = fdiv fast float %8682, %8705
  %8707 = fsub fast float %8701, %8706
  %8708 = fsub fast float 1.000000e+00, %8656
  %8709 = fadd fast float %8687, %8674
  %8710 = fmul fast float %8709, 0x3FC5555560000000
  %8711 = fdiv fast float %8688, %8710
  %8712 = fadd fast float %8711, %8708
  %8713 = fmul fast float %8695, %8649
  %8714 = fsub fast float %8576, %8713
  %8715 = fmul fast float %8700, %8649
  %8716 = fadd fast float %8715, %8576
  %8717 = fmul fast float %8712, %8650
  %8718 = fadd fast float %8717, %8577
  %8719 = fmul fast float %8707, %8650
  %8720 = fsub fast float %8577, %8719
  %8721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8714, float %8720, float %8638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8722 = extractvalue %dx.types.ResRet.f32 %8721, 0
  %8723 = extractvalue %dx.types.ResRet.f32 %8721, 1
  %8724 = extractvalue %dx.types.ResRet.f32 %8721, 2
  %8725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8716, float %8720, float %8638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8726 = extractvalue %dx.types.ResRet.f32 %8725, 0
  %8727 = extractvalue %dx.types.ResRet.f32 %8725, 1
  %8728 = extractvalue %dx.types.ResRet.f32 %8725, 2
  %8729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8714, float %8718, float %8638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8730 = extractvalue %dx.types.ResRet.f32 %8729, 0
  %8731 = extractvalue %dx.types.ResRet.f32 %8729, 1
  %8732 = extractvalue %dx.types.ResRet.f32 %8729, 2
  %8733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8716, float %8718, float %8638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8734 = extractvalue %dx.types.ResRet.f32 %8733, 0
  %8735 = extractvalue %dx.types.ResRet.f32 %8733, 1
  %8736 = extractvalue %dx.types.ResRet.f32 %8733, 2
  %8737 = fsub fast float %8730, %8722
  %8738 = fsub fast float %8731, %8723
  %8739 = fsub fast float %8732, %8724
  %8740 = fmul fast float %8737, %8710
  %8741 = fmul fast float %8738, %8710
  %8742 = fmul fast float %8739, %8710
  %8743 = fadd fast float %8740, %8722
  %8744 = fadd fast float %8741, %8723
  %8745 = fadd fast float %8742, %8724
  %8746 = fsub fast float %8734, %8726
  %8747 = fsub fast float %8735, %8727
  %8748 = fsub fast float %8736, %8728
  %8749 = fmul fast float %8746, %8710
  %8750 = fmul fast float %8747, %8710
  %8751 = fmul fast float %8748, %8710
  %8752 = fsub fast float %8726, %8743
  %8753 = fadd fast float %8752, %8749
  %8754 = fsub fast float %8727, %8744
  %8755 = fadd fast float %8754, %8750
  %8756 = fsub fast float %8728, %8745
  %8757 = fadd fast float %8756, %8751
  %8758 = fmul fast float %8753, %8698
  %8759 = fmul fast float %8755, %8698
  %8760 = fmul fast float %8757, %8698
  %8761 = fadd fast float %8758, %8743
  %8762 = fadd fast float %8759, %8744
  %8763 = fadd fast float %8760, %8745
  %8764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8764, 1
  %8766 = fmul fast float %8761, %8765
  %8767 = fmul fast float %8762, %8765
  %8768 = fmul fast float %8763, %8765
  br label %8769

; <label>:8769                                    ; preds = %8601, %8570
  %8770 = phi float [ %8640, %8601 ], [ 1.000000e+00, %8570 ]
  %8771 = phi float [ %8641, %8601 ], [ 1.000000e+00, %8570 ]
  %8772 = phi float [ %8642, %8601 ], [ 1.000000e+00, %8570 ]
  %8773 = phi float [ %8766, %8601 ], [ 0.000000e+00, %8570 ]
  %8774 = phi float [ %8767, %8601 ], [ 0.000000e+00, %8570 ]
  %8775 = phi float [ %8768, %8601 ], [ 0.000000e+00, %8570 ]
  %8776 = fmul fast float %8773, %8547
  %8777 = fmul fast float %8774, %8547
  %8778 = fmul fast float %8775, %8547
  %8779 = call float @dx.op.dot3.f32(i32 55, float %8770, float %8771, float %8772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8780 = call float @dx.op.dot3.f32(i32 55, float %8776, float %8777, float %8778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8781 = select i1 %232, float %8779, float %8770
  %8782 = select i1 %232, float %8779, float %8771
  %8783 = select i1 %232, float 1.000000e+00, float %8772
  %8784 = select i1 %232, float %8780, float %8776
  %8785 = select i1 %232, float 0.000000e+00, float %8777
  %8786 = select i1 %232, float 0.000000e+00, float %8778
  %8787 = fmul fast float %8781, %8560
  %8788 = fmul fast float %8782, %8561
  %8789 = fmul fast float %8783, %8562
  %8790 = fadd fast float %8787, %8784
  %8791 = fadd fast float %8788, %8785
  %8792 = fadd fast float %8786, %8789
  %8793 = fmul fast float %8781, %8534
  %8794 = fmul fast float %8782, %8535
  %8795 = fmul fast float %8783, %8536
  %8796 = fmul fast float %140, %8572
  %8797 = fmul fast float %142, %8573
  %8798 = fsub fast float 1.000000e+00, %8796
  %8799 = fsub fast float 1.000000e+00, %8797
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 0
  %8802 = extractvalue %dx.types.CBufRet.f32 %8800, 1
  %8803 = extractvalue %dx.types.CBufRet.f32 %8800, 2
  %8804 = fmul fast float %8798, %8801
  %8805 = fmul fast float %8798, %8802
  %8806 = fmul fast float %8798, %8803
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 0
  %8809 = extractvalue %dx.types.CBufRet.f32 %8807, 1
  %8810 = extractvalue %dx.types.CBufRet.f32 %8807, 2
  %8811 = fmul fast float %8799, %8808
  %8812 = fmul fast float %8799, %8809
  %8813 = fmul fast float %8799, %8810
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 0
  %8816 = extractvalue %dx.types.CBufRet.f32 %8814, 1
  %8817 = extractvalue %dx.types.CBufRet.f32 %8814, 2
  %8818 = fadd fast float %8811, %8815
  %8819 = fadd fast float %8818, %8804
  %8820 = fadd fast float %8812, %8816
  %8821 = fadd fast float %8820, %8805
  %8822 = fadd fast float %8813, %8817
  %8823 = fadd fast float %8822, %8806
  %8824 = fmul fast float %8819, %192
  %8825 = fmul fast float %8821, %192
  %8826 = fmul fast float %8823, %192
  br label %8827

; <label>:8827                                    ; preds = %8769, %8533
  %8828 = phi float [ %8824, %8769 ], [ %170, %8533 ]
  %8829 = phi float [ %8825, %8769 ], [ %171, %8533 ]
  %8830 = phi float [ %8826, %8769 ], [ %172, %8533 ]
  %8831 = phi float [ %192, %8769 ], [ %99, %8533 ]
  %8832 = phi float [ %8790, %8769 ], [ %8560, %8533 ]
  %8833 = phi float [ %8791, %8769 ], [ %8561, %8533 ]
  %8834 = phi float [ %8792, %8769 ], [ %8562, %8533 ]
  %8835 = phi float [ %8793, %8769 ], [ %8534, %8533 ]
  %8836 = phi float [ %8794, %8769 ], [ %8535, %8533 ]
  %8837 = phi float [ %8795, %8769 ], [ %8536, %8533 ]
  %8838 = phi float [ %8770, %8769 ], [ 1.000000e+00, %8533 ]
  br i1 %8569, label %9993, label %8839

; <label>:8839                                    ; preds = %8827
  %8840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8841 = extractvalue %dx.types.CBufRet.f32 %8840, 0
  %8842 = extractvalue %dx.types.CBufRet.f32 %8840, 1
  %8843 = extractvalue %dx.types.CBufRet.f32 %8840, 2
  %8844 = extractvalue %dx.types.CBufRet.f32 %8840, 3
  %8845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8846 = extractvalue %dx.types.CBufRet.f32 %8845, 0
  %8847 = extractvalue %dx.types.CBufRet.f32 %8845, 1
  %8848 = extractvalue %dx.types.CBufRet.f32 %8845, 2
  %8849 = extractvalue %dx.types.CBufRet.f32 %8845, 3
  %8850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8851 = extractvalue %dx.types.CBufRet.f32 %8850, 0
  %8852 = extractvalue %dx.types.CBufRet.f32 %8850, 1
  %8853 = extractvalue %dx.types.CBufRet.f32 %8850, 2
  %8854 = extractvalue %dx.types.CBufRet.f32 %8850, 3
  %8855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.f32 %8855, 0
  %8857 = extractvalue %dx.types.CBufRet.f32 %8855, 1
  %8858 = extractvalue %dx.types.CBufRet.f32 %8855, 2
  %8859 = extractvalue %dx.types.CBufRet.f32 %8855, 3
  %8860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8860, 3
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 3
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8865 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8866 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8867 = fcmp fast olt float %8866, -5.000000e-01
  %8868 = call float @dx.op.dot3.f32(i32 55, float %8828, float %8829, float %8830, float %8828, float %8829, float %8830)  ; Dot3(ax,ay,az,bx,by,bz)
  %8869 = call float @dx.op.unary.f32(i32 25, float %8868)  ; Rsqrt(value)
  %8870 = fmul fast float %8869, %8868
  %8871 = fmul fast float %8869, %8828
  %8872 = fmul fast float %8869, %8829
  %8873 = fmul fast float %8869, %8830
  %8874 = fadd fast float %8870, %8844
  %8875 = call float @dx.op.dot3.f32(i32 55, float %8871, float %8872, float %8873, float %8841, float %8842, float %8843)  ; Dot3(ax,ay,az,bx,by,bz)
  %8876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8877 = extractvalue %dx.types.CBufRet.i32 %8876, 1
  %8878 = and i32 %8877, 1
  %8879 = icmp ne i32 %8878, 0
  %8880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8881 = extractvalue %dx.types.CBufRet.f32 %8880, 2
  %8882 = fcmp fast ogt float %8881, 0.000000e+00
  %8883 = and i1 %8879, %8882
  br i1 %8883, label %8884, label %9290, !dx.controlflow.hints !135

; <label>:8884                                    ; preds = %8839
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 3
  %8887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8888 = extractvalue %dx.types.CBufRet.f32 %8887, 2
  %8889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8890 = extractvalue %dx.types.CBufRet.f32 %8889, 2
  %8891 = fsub fast float %8888, %8890
  %8892 = and i32 %8877, 2
  %8893 = extractvalue %dx.types.CBufRet.i32 %8876, 0
  %8894 = call i32 @dx.op.binary.i32(i32 40, i32 %8893, i32 3)  ; UMin(a,b)
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.CBufRet.f32 %8889, 0
  %8899 = extractvalue %dx.types.CBufRet.f32 %8889, 1
  %8900 = fsub fast float %8896, %8898
  %8901 = fsub fast float %8897, %8899
  %8902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8903 = extractvalue %dx.types.CBufRet.f32 %8902, 0
  %8904 = fcmp fast ogt float %8903, 0.000000e+00
  %8905 = fsub fast float -0.000000e+00, %8900
  %8906 = fsub fast float -0.000000e+00, %8901
  %8907 = call float @dx.op.dot2.f32(i32 54, float %8871, float %8872, float %8871, float %8872)  ; Dot2(ax,ay,bx,by)
  %8908 = call float @dx.op.dot2.f32(i32 54, float %8871, float %8872, float %8905, float %8906)  ; Dot2(ax,ay,bx,by)
  %8909 = fmul fast float %8908, 2.000000e+00
  %8910 = call float @dx.op.dot2.f32(i32 54, float %8905, float %8906, float %8905, float %8906)  ; Dot2(ax,ay,bx,by)
  %8911 = fmul fast float %8903, %8903
  %8912 = fsub fast float %8910, %8911
  %8913 = fmul fast float %8909, %8909
  %8914 = fmul fast float %8907, 4.000000e+00
  %8915 = fmul fast float %8914, %8912
  %8916 = fsub fast float %8913, %8915
  %8917 = fcmp fast ogt float %8916, 0.000000e+00
  br i1 %8917, label %8918, label %8933

; <label>:8918                                    ; preds = %8884
  %8919 = fcmp fast ogt float %8909, 0.000000e+00
  %8920 = call float @dx.op.unary.f32(i32 24, float %8916)  ; Sqrt(value)
  %8921 = fsub fast float -0.000000e+00, %8920
  %8922 = select i1 %8919, float %8920, float %8921
  %8923 = fadd fast float %8922, %8909
  %8924 = fmul float %8923, -5.000000e-01
  %8925 = fdiv fast float %8924, %8907
  %8926 = call float @dx.op.binary.f32(i32 35, float %8925, float 0.000000e+00)  ; FMax(a,b)
  %8927 = call float @dx.op.binary.f32(i32 36, float %8870, float %8926)  ; FMin(a,b)
  %8928 = fdiv fast float %8912, %8924
  %8929 = call float @dx.op.binary.f32(i32 35, float %8928, float 0.000000e+00)  ; FMax(a,b)
  %8930 = call float @dx.op.binary.f32(i32 36, float %8870, float %8929)  ; FMin(a,b)
  %8931 = call float @dx.op.binary.f32(i32 36, float %8927, float %8930)  ; FMin(a,b)
  %8932 = call float @dx.op.binary.f32(i32 35, float %8927, float %8930)  ; FMax(a,b)
  br label %8933

; <label>:8933                                    ; preds = %8918, %8884
  %8934 = phi float [ %8932, %8918 ], [ -1.000000e+00, %8884 ]
  %8935 = phi float [ %8931, %8918 ], [ -1.000000e+00, %8884 ]
  %8936 = phi i1 [ true, %8918 ], [ false, %8884 ]
  %8937 = and i1 %8904, %8936
  br i1 %8937, label %8938, label %8940

; <label>:8938                                    ; preds = %8933
  %8939 = fcmp fast oeq float %8935, %8934
  br i1 %8939, label %9243, label %8941

; <label>:8940                                    ; preds = %8933
  br i1 %8904, label %9243, label %8941

; <label>:8941                                    ; preds = %8940, %8938
  %8942 = phi float [ %8870, %8940 ], [ %8934, %8938 ]
  %8943 = phi float [ 0.000000e+00, %8940 ], [ %8935, %8938 ]
  %8944 = icmp ne i32 %8892, 0
  %8945 = fmul fast float %8942, %8873
  %8946 = fadd fast float %8945, %8886
  %8947 = fmul fast float %8946, %8942
  %8948 = select i1 %8944, float 0.000000e+00, float %8947
  %8949 = fcmp fast oeq float %8873, 0.000000e+00
  %8950 = fdiv fast float %8891, %8873
  %8951 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8950)  ; FMax(a,b)
  %8952 = select i1 %8949, float %8942, float %8951
  %8953 = call float @dx.op.binary.f32(i32 36, float %8942, float %8952)  ; FMin(a,b)
  %8954 = fcmp fast ogt float %8873, 0.000000e+00
  %8955 = fcmp fast olt float %8891, 0.000000e+00
  br i1 %8954, label %8956, label %9013

; <label>:8956                                    ; preds = %8941
  %8957 = icmp eq i32 %8892, 0
  br i1 %8955, label %8958, label %9002

; <label>:8958                                    ; preds = %8956
  %8959 = select i1 %8957, float %8942, float 0.000000e+00
  %8960 = fsub fast float -0.000000e+00, %8959
  %8961 = call float @dx.op.unary.f32(i32 6, float %8960)  ; FAbs(value)
  %8962 = fmul fast float %8959, %8873
  %8963 = fadd fast float %8962, %8886
  %8964 = fmul fast float %8961, %8963
  %8965 = fsub fast float %8948, %8964
  %8966 = fsub fast float %8942, %8961
  %8967 = select i1 %8957, float %8966, float 0.000000e+00
  %8968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8969 = extractvalue %dx.types.CBufRet.f32 %8968, 0
  %8970 = extractvalue %dx.types.CBufRet.f32 %8968, 1
  %8971 = extractvalue %dx.types.CBufRet.f32 %8968, 2
  %8972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8973 = extractvalue %dx.types.CBufRet.f32 %8972, 0
  %8974 = extractvalue %dx.types.CBufRet.f32 %8972, 1
  %8975 = extractvalue %dx.types.CBufRet.f32 %8972, 2
  %8976 = extractvalue %dx.types.CBufRet.f32 %8972, 3
  %8977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8978 = extractvalue %dx.types.CBufRet.f32 %8977, 3
  %8979 = call float @dx.op.binary.f32(i32 36, float %8965, float %8978)  ; FMin(a,b)
  %8980 = fmul fast float %8976, %8967
  %8981 = call float @dx.op.unary.f32(i32 7, float %8980)  ; Saturate(value)
  %8982 = fsub fast float %8973, %8969
  %8983 = fsub fast float %8974, %8970
  %8984 = fsub fast float %8975, %8971
  %8985 = fmul fast float %8981, %8982
  %8986 = fmul fast float %8981, %8983
  %8987 = fmul fast float %8981, %8984
  %8988 = fadd fast float %8985, %8969
  %8989 = fadd fast float %8986, %8970
  %8990 = fadd fast float %8987, %8971
  %8991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8992 = extractvalue %dx.types.CBufRet.f32 %8991, 0
  %8993 = extractvalue %dx.types.CBufRet.f32 %8991, 1
  %8994 = fadd fast float %8993, %8992
  %8995 = call float @dx.op.unary.f32(i32 7, float %8994)  ; Saturate(value)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8991, 2
  %8997 = extractvalue %dx.types.CBufRet.f32 %8991, 3
  %8998 = fadd fast float %8997, %8996
  %8999 = call float @dx.op.unary.f32(i32 7, float %8998)  ; Saturate(value)
  %9000 = fmul fast float %8995, %8979
  %9001 = fmul fast float %9000, %8999
  br label %9243

; <label>:9002                                    ; preds = %8956
  br i1 %8957, label %9003, label %9024

; <label>:9003                                    ; preds = %9002
  %9004 = call float @dx.op.binary.f32(i32 36, float %8953, float %8943)  ; FMin(a,b)
  %9005 = fsub fast float %8953, %9004
  %9006 = fsub fast float %9005, %8942
  %9007 = call float @dx.op.unary.f32(i32 6, float %9006)  ; FAbs(value)
  %9008 = fadd fast float %9005, %8942
  %9009 = fmul fast float %9008, %8873
  %9010 = fadd fast float %9009, %8886
  %9011 = fmul fast float %9010, %9007
  %9012 = fsub fast float %8948, %9011
  br label %9024

; <label>:9013                                    ; preds = %8941
  br i1 %8955, label %9014, label %9024

; <label>:9014                                    ; preds = %9013
  %9015 = call float @dx.op.binary.f32(i32 35, float %8943, float %8953)  ; FMax(a,b)
  %9016 = icmp eq i32 %8892, 0
  %9017 = select i1 %9016, float %8953, float 0.000000e+00
  %9018 = fsub fast float -0.000000e+00, %9017
  %9019 = call float @dx.op.unary.f32(i32 6, float %9018)  ; FAbs(value)
  %9020 = fmul fast float %9017, %8873
  %9021 = fadd fast float %9020, %8886
  %9022 = fmul fast float %9019, %9021
  %9023 = fsub fast float %8948, %9022
  br label %9024

; <label>:9024                                    ; preds = %9014, %9013, %9003, %9002
  %9025 = phi float [ %8943, %9002 ], [ %8943, %9003 ], [ %9015, %9014 ], [ %8943, %9013 ]
  %9026 = phi float [ 0.000000e+00, %9002 ], [ %9007, %9003 ], [ %9019, %9014 ], [ 0.000000e+00, %9013 ]
  %9027 = phi float [ %8948, %9002 ], [ %9012, %9003 ], [ %9023, %9014 ], [ %8948, %9013 ]
  %9028 = phi float [ %8953, %9002 ], [ %8953, %9003 ], [ %8942, %9014 ], [ %8942, %9013 ]
  %9029 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9029, align 4, !tbaa !122, !noalias !136
  %9030 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9030, align 4, !tbaa !122, !noalias !136
  %9031 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9031, align 4, !tbaa !122, !noalias !136
  %9032 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9032, align 4, !tbaa !122, !noalias !136
  %9033 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9033, align 4, !tbaa !122, !noalias !136
  %9034 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9034, align 4, !tbaa !122, !noalias !136
  %9035 = icmp sgt i32 %8894, 0
  br i1 %9035, label %9036, label %9097

; <label>:9036                                    ; preds = %9024
  br label %9037

; <label>:9037                                    ; preds = %9086, %9036
  %9038 = phi i32 [ %9087, %9086 ], [ 0, %9036 ]
  %9039 = phi i32 [ %9088, %9086 ], [ 0, %9036 ]
  %9040 = add nuw i32 %9039, 171
  %9041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9040)  ; CBufferLoadLegacy(handle,regIndex)
  %9042 = extractvalue %dx.types.CBufRet.f32 %9041, 0
  %9043 = extractvalue %dx.types.CBufRet.f32 %9041, 1
  %9044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9045 = extractvalue %dx.types.CBufRet.f32 %9044, 0
  %9046 = extractvalue %dx.types.CBufRet.f32 %9044, 1
  %9047 = fsub fast float %9042, %9045
  %9048 = fsub fast float %9043, %9046
  %9049 = extractvalue %dx.types.CBufRet.f32 %9041, 2
  %9050 = fsub fast float -0.000000e+00, %9047
  %9051 = fsub fast float -0.000000e+00, %9048
  %9052 = call float @dx.op.dot2.f32(i32 54, float %8871, float %8872, float %9050, float %9051)  ; Dot2(ax,ay,bx,by)
  %9053 = fmul fast float %9052, 2.000000e+00
  %9054 = call float @dx.op.dot2.f32(i32 54, float %9050, float %9051, float %9050, float %9051)  ; Dot2(ax,ay,bx,by)
  %9055 = fmul fast float %9049, %9049
  %9056 = fsub fast float %9054, %9055
  %9057 = fmul fast float %9053, %9053
  %9058 = fmul fast float %8914, %9056
  %9059 = fsub fast float %9057, %9058
  %9060 = fcmp fast ogt float %9059, 0.000000e+00
  br i1 %9060, label %9061, label %9076

; <label>:9061                                    ; preds = %9037
  %9062 = fcmp fast ogt float %9053, 0.000000e+00
  %9063 = call float @dx.op.unary.f32(i32 24, float %9059)  ; Sqrt(value)
  %9064 = fsub fast float -0.000000e+00, %9063
  %9065 = select i1 %9062, float %9063, float %9064
  %9066 = fadd fast float %9065, %9053
  %9067 = fmul float %9066, -5.000000e-01
  %9068 = fdiv fast float %9067, %8907
  %9069 = call float @dx.op.binary.f32(i32 35, float %9068, float 0.000000e+00)  ; FMax(a,b)
  %9070 = call float @dx.op.binary.f32(i32 36, float %8942, float %9069)  ; FMin(a,b)
  %9071 = fdiv fast float %9056, %9067
  %9072 = call float @dx.op.binary.f32(i32 35, float %9071, float 0.000000e+00)  ; FMax(a,b)
  %9073 = call float @dx.op.binary.f32(i32 36, float %8942, float %9072)  ; FMin(a,b)
  %9074 = call float @dx.op.binary.f32(i32 36, float %9070, float %9073)  ; FMin(a,b)
  %9075 = call float @dx.op.binary.f32(i32 35, float %9070, float %9073)  ; FMax(a,b)
  br label %9076

; <label>:9076                                    ; preds = %9061, %9037
  %9077 = phi float [ %9075, %9061 ], [ -1.000000e+00, %9037 ]
  %9078 = phi float [ %9074, %9061 ], [ -1.000000e+00, %9037 ]
  %9079 = phi i1 [ true, %9061 ], [ false, %9037 ]
  br i1 %9079, label %9080, label %9086

; <label>:9080                                    ; preds = %9076
  %9081 = call float @dx.op.binary.f32(i32 35, float %9025, float %9078)  ; FMax(a,b)
  %9082 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9039
  store float %9081, float* %9082, align 4, !tbaa !122, !noalias !136
  %9083 = call float @dx.op.binary.f32(i32 35, float %9025, float %9077)  ; FMax(a,b)
  %9084 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9039
  store float %9083, float* %9084, align 4, !tbaa !122, !noalias !136
  %9085 = add nsw i32 %9038, 1
  br label %9086

; <label>:9086                                    ; preds = %9080, %9076
  %9087 = phi i32 [ %9085, %9080 ], [ %9038, %9076 ]
  %9088 = add nuw nsw i32 %9039, 1
  %9089 = icmp eq i32 %9088, %8894
  br i1 %9089, label %9090, label %9037

; <label>:9090                                    ; preds = %9086
  %9091 = load float, float* %9031, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9092 = load float, float* %9030, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9093 = load float, float* %9029, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9094 = load float, float* %9034, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9095 = load float, float* %9033, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9096 = load float, float* %9032, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9097

; <label>:9097                                    ; preds = %9090, %9024
  %9098 = phi float [ -1.000000e+00, %9024 ], [ %9096, %9090 ]
  %9099 = phi float [ -1.000000e+00, %9024 ], [ %9095, %9090 ]
  %9100 = phi float [ -1.000000e+00, %9024 ], [ %9094, %9090 ]
  %9101 = phi float [ -1.000000e+00, %9024 ], [ %9093, %9090 ]
  %9102 = phi float [ -1.000000e+00, %9024 ], [ %9092, %9090 ]
  %9103 = phi float [ -1.000000e+00, %9024 ], [ %9091, %9090 ]
  %9104 = phi i32 [ 0, %9024 ], [ %9087, %9090 ]
  %9105 = call float @dx.op.binary.f32(i32 36, float %9102, float %9103)  ; FMin(a,b)
  %9106 = call float @dx.op.binary.f32(i32 36, float %9101, float %9105)  ; FMin(a,b)
  %9107 = call float @dx.op.binary.f32(i32 35, float %9101, float %9102)  ; FMax(a,b)
  %9108 = call float @dx.op.binary.f32(i32 36, float %9107, float %9103)  ; FMin(a,b)
  %9109 = call float @dx.op.binary.f32(i32 36, float %9101, float %9102)  ; FMin(a,b)
  %9110 = call float @dx.op.binary.f32(i32 35, float %9109, float %9108)  ; FMax(a,b)
  %9111 = call float @dx.op.binary.f32(i32 35, float %9102, float %9103)  ; FMax(a,b)
  %9112 = call float @dx.op.binary.f32(i32 35, float %9101, float %9111)  ; FMax(a,b)
  store float %9106, float* %9029, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9110, float* %9030, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9112, float* %9031, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9113 = call float @dx.op.binary.f32(i32 36, float %9099, float %9100)  ; FMin(a,b)
  %9114 = call float @dx.op.binary.f32(i32 36, float %9098, float %9113)  ; FMin(a,b)
  %9115 = call float @dx.op.binary.f32(i32 35, float %9098, float %9099)  ; FMax(a,b)
  %9116 = call float @dx.op.binary.f32(i32 36, float %9115, float %9100)  ; FMin(a,b)
  %9117 = call float @dx.op.binary.f32(i32 36, float %9098, float %9099)  ; FMin(a,b)
  %9118 = call float @dx.op.binary.f32(i32 35, float %9117, float %9116)  ; FMax(a,b)
  %9119 = call float @dx.op.binary.f32(i32 35, float %9099, float %9100)  ; FMax(a,b)
  %9120 = call float @dx.op.binary.f32(i32 35, float %9098, float %9119)  ; FMax(a,b)
  store float %9114, float* %9032, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9118, float* %9033, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9120, float* %9034, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9121 = sub nsw i32 3, %9104
  %9122 = icmp sgt i32 %9121, 2
  br i1 %9122, label %9123, label %9161

; <label>:9123                                    ; preds = %9097
  %9124 = icmp eq i32 %8892, 0
  %9125 = fsub fast float %8942, %9026
  %9126 = select i1 %9124, float %9125, float %9026
  %9127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9128 = extractvalue %dx.types.CBufRet.f32 %9127, 0
  %9129 = extractvalue %dx.types.CBufRet.f32 %9127, 1
  %9130 = extractvalue %dx.types.CBufRet.f32 %9127, 2
  %9131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9132 = extractvalue %dx.types.CBufRet.f32 %9131, 0
  %9133 = extractvalue %dx.types.CBufRet.f32 %9131, 1
  %9134 = extractvalue %dx.types.CBufRet.f32 %9131, 2
  %9135 = extractvalue %dx.types.CBufRet.f32 %9131, 3
  %9136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9137 = extractvalue %dx.types.CBufRet.f32 %9136, 3
  %9138 = call float @dx.op.binary.f32(i32 36, float %9027, float %9137)  ; FMin(a,b)
  %9139 = fmul fast float %9135, %9126
  %9140 = call float @dx.op.unary.f32(i32 7, float %9139)  ; Saturate(value)
  %9141 = fsub fast float %9132, %9128
  %9142 = fsub fast float %9133, %9129
  %9143 = fsub fast float %9134, %9130
  %9144 = fmul fast float %9140, %9141
  %9145 = fmul fast float %9140, %9142
  %9146 = fmul fast float %9140, %9143
  %9147 = fadd fast float %9144, %9128
  %9148 = fadd fast float %9145, %9129
  %9149 = fadd fast float %9146, %9130
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 0
  %9152 = extractvalue %dx.types.CBufRet.f32 %9150, 1
  %9153 = fadd fast float %9152, %9151
  %9154 = call float @dx.op.unary.f32(i32 7, float %9153)  ; Saturate(value)
  %9155 = extractvalue %dx.types.CBufRet.f32 %9150, 2
  %9156 = extractvalue %dx.types.CBufRet.f32 %9150, 3
  %9157 = fadd fast float %9156, %9155
  %9158 = call float @dx.op.unary.f32(i32 7, float %9157)  ; Saturate(value)
  %9159 = fmul fast float %9154, %9138
  %9160 = fmul fast float %9159, %9158
  br label %9243

; <label>:9161                                    ; preds = %9097
  %9162 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9121
  %9163 = load float, float* %9162, align 4, !tbaa !122, !noalias !136
  %9164 = fcmp fast olt float %9163, %9028
  %9165 = icmp sgt i32 %9104, 0
  %9166 = and i1 %9165, %9164
  br i1 %9166, label %9167, label %9204

; <label>:9167                                    ; preds = %9161
  br label %9168

; <label>:9168                                    ; preds = %9197, %9167
  %9169 = phi float [ %9198, %9197 ], [ %9026, %9167 ]
  %9170 = phi float [ %9199, %9197 ], [ %9027, %9167 ]
  %9171 = phi float [ %9179, %9197 ], [ %9163, %9167 ]
  %9172 = phi i32 [ %9176, %9197 ], [ %9121, %9167 ]
  %9173 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9172
  %9174 = load float, float* %9173, align 4, !tbaa !122, !noalias !136
  %9175 = icmp slt i32 %9172, 2
  %9176 = add nsw i32 %9172, 1
  %9177 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9176
  %9178 = load float, float* %9177, align 4, !tbaa !122, !noalias !136
  %9179 = select i1 %9175, float %9178, float %8942
  %9180 = call float @dx.op.binary.f32(i32 36, float %9179, float %9174)  ; FMin(a,b)
  %9181 = call float @dx.op.binary.f32(i32 36, float %9028, float %9180)  ; FMin(a,b)
  %9182 = icmp eq i32 %8892, 0
  %9183 = fadd fast float %9181, %9171
  %9184 = fmul fast float %9183, %8873
  %9185 = fadd fast float %9184, %8886
  br i1 %9182, label %9191, label %9186

; <label>:9186                                    ; preds = %9168
  %9187 = fsub fast float %9181, %9171
  %9188 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9187)  ; FMax(a,b)
  %9189 = fmul fast float %9188, %9185
  %9190 = fadd fast float %9189, %9170
  br label %9197

; <label>:9191                                    ; preds = %9168
  %9192 = fsub fast float %9171, %9181
  %9193 = call float @dx.op.unary.f32(i32 6, float %9192)  ; FAbs(value)
  %9194 = fadd fast float %9193, %9169
  %9195 = fmul fast float %9193, %9185
  %9196 = fsub fast float %9170, %9195
  br label %9197

; <label>:9197                                    ; preds = %9191, %9186
  %9198 = phi float [ %9188, %9186 ], [ %9194, %9191 ]
  %9199 = phi float [ %9190, %9186 ], [ %9196, %9191 ]
  %9200 = fcmp fast olt float %9179, %9028
  %9201 = icmp slt i32 %9176, 3
  %9202 = and i1 %9201, %9200
  br i1 %9202, label %9168, label %9203

; <label>:9203                                    ; preds = %9197
  br label %9204

; <label>:9204                                    ; preds = %9203, %9161
  %9205 = phi float [ %9026, %9161 ], [ %9198, %9203 ]
  %9206 = phi float [ %9027, %9161 ], [ %9199, %9203 ]
  %9207 = fsub fast float %8942, %9205
  %9208 = select i1 %8944, float %9205, float %9207
  %9209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9210 = extractvalue %dx.types.CBufRet.f32 %9209, 0
  %9211 = extractvalue %dx.types.CBufRet.f32 %9209, 1
  %9212 = extractvalue %dx.types.CBufRet.f32 %9209, 2
  %9213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9214 = extractvalue %dx.types.CBufRet.f32 %9213, 0
  %9215 = extractvalue %dx.types.CBufRet.f32 %9213, 1
  %9216 = extractvalue %dx.types.CBufRet.f32 %9213, 2
  %9217 = extractvalue %dx.types.CBufRet.f32 %9213, 3
  %9218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9219 = extractvalue %dx.types.CBufRet.f32 %9218, 3
  %9220 = call float @dx.op.binary.f32(i32 36, float %9206, float %9219)  ; FMin(a,b)
  %9221 = fmul fast float %9217, %9208
  %9222 = call float @dx.op.unary.f32(i32 7, float %9221)  ; Saturate(value)
  %9223 = fsub fast float %9214, %9210
  %9224 = fsub fast float %9215, %9211
  %9225 = fsub fast float %9216, %9212
  %9226 = fmul fast float %9222, %9223
  %9227 = fmul fast float %9222, %9224
  %9228 = fmul fast float %9222, %9225
  %9229 = fadd fast float %9226, %9210
  %9230 = fadd fast float %9227, %9211
  %9231 = fadd fast float %9228, %9212
  %9232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9233 = extractvalue %dx.types.CBufRet.f32 %9232, 0
  %9234 = extractvalue %dx.types.CBufRet.f32 %9232, 1
  %9235 = fadd fast float %9234, %9233
  %9236 = call float @dx.op.unary.f32(i32 7, float %9235)  ; Saturate(value)
  %9237 = extractvalue %dx.types.CBufRet.f32 %9232, 2
  %9238 = extractvalue %dx.types.CBufRet.f32 %9232, 3
  %9239 = fadd fast float %9238, %9237
  %9240 = call float @dx.op.unary.f32(i32 7, float %9239)  ; Saturate(value)
  %9241 = fmul fast float %9236, %9220
  %9242 = fmul fast float %9241, %9240
  br label %9243

; <label>:9243                                    ; preds = %9204, %9123, %8958, %8940, %8938
  %9244 = phi float [ %8967, %8958 ], [ %9126, %9123 ], [ %9208, %9204 ], [ 0.000000e+00, %8938 ], [ 0.000000e+00, %8940 ]
  %9245 = phi float [ %9001, %8958 ], [ %9160, %9123 ], [ %9242, %9204 ], [ 0.000000e+00, %8938 ], [ 0.000000e+00, %8940 ]
  %9246 = phi float [ %8988, %8958 ], [ %9147, %9123 ], [ %9229, %9204 ], [ 0.000000e+00, %8938 ], [ 0.000000e+00, %8940 ]
  %9247 = phi float [ %8989, %8958 ], [ %9148, %9123 ], [ %9230, %9204 ], [ 0.000000e+00, %8938 ], [ 0.000000e+00, %8940 ]
  %9248 = phi float [ %8990, %8958 ], [ %9149, %9123 ], [ %9231, %9204 ], [ 0.000000e+00, %8938 ], [ 0.000000e+00, %8940 ]
  %9249 = fmul fast float %8881, %9245
  %9250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9251 = extractvalue %dx.types.CBufRet.f32 %9250, 2
  %9252 = fsub fast float %8888, %9251
  %9253 = fcmp fast olt float %9249, -2.000000e+01
  %9254 = call float @dx.op.unary.f32(i32 21, float %9249)  ; Exp(value)
  %9255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9256 = extractvalue %dx.types.CBufRet.f32 %9255, 2
  %9257 = extractvalue %dx.types.CBufRet.f32 %9255, 3
  %9258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9259 = extractvalue %dx.types.CBufRet.f32 %9258, 2
  %9260 = fmul fast float %9257, %9252
  %9261 = call float @dx.op.unary.f32(i32 7, float %9260)  ; Saturate(value)
  %9262 = fsub fast float 1.000000e+00, %9261
  %9263 = fmul fast float %8873, 5.000000e-01
  %9264 = fadd fast float %9263, 5.000000e-01
  %9265 = call float @dx.op.unary.f32(i32 7, float %9264)  ; Saturate(value)
  %9266 = fsub fast float 1.000000e+00, %9265
  %9267 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9262)  ; FMax(a,b)
  %9268 = fdiv fast float %9266, %9267
  %9269 = fsub fast float %9252, %8830
  %9270 = call float @dx.op.unary.f32(i32 6, float %9269)  ; FAbs(value)
  %9271 = fmul fast float %9270, %9256
  %9272 = call float @dx.op.unary.f32(i32 7, float %9268)  ; Saturate(value)
  %9273 = fsub fast float 1.000000e+00, %9271
  %9274 = fmul fast float %9273, %9272
  %9275 = fadd fast float %9274, %9271
  %9276 = fmul fast float %9259, %9252
  %9277 = call float @dx.op.unary.f32(i32 7, float %9276)  ; Saturate(value)
  %9278 = fsub fast float 1.000000e+00, %9275
  %9279 = fmul fast float %9278, %9277
  %9280 = fadd fast float %9279, %9275
  %9281 = call float @dx.op.unary.f32(i32 7, float %9280)  ; Saturate(value)
  %9282 = fadd fast float %9254, -1.000000e+00
  %9283 = select i1 %9253, float -1.000000e+00, float %9282
  %9284 = fmul fast float %9281, %9283
  %9285 = fadd fast float %9284, 1.000000e+00
  %9286 = fsub fast float -0.000000e+00, %9284
  %9287 = fmul fast float %9246, %9286
  %9288 = fmul fast float %9247, %9286
  %9289 = fmul fast float %9248, %9286
  br label %9290

; <label>:9290                                    ; preds = %9243, %8839
  %9291 = phi float [ %9244, %9243 ], [ 0.000000e+00, %8839 ]
  %9292 = phi float [ %9285, %9243 ], [ 1.000000e+00, %8839 ]
  %9293 = phi float [ %9287, %9243 ], [ 0.000000e+00, %8839 ]
  %9294 = phi float [ %9288, %9243 ], [ 0.000000e+00, %8839 ]
  %9295 = phi float [ %9289, %9243 ], [ 0.000000e+00, %8839 ]
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 1
  %9298 = fsub fast float 1.000000e+00, %9292
  %9299 = fmul fast float %9298, %8874
  %9300 = fmul fast float %9299, %9297
  %9301 = fsub fast float %8874, %9300
  br i1 %8867, label %9302, label %9331, !dx.controlflow.hints !172

; <label>:9302                                    ; preds = %9290
  %9303 = fmul fast float %8875, %8864
  %9304 = fadd fast float %9303, %8865
  %9305 = call float @dx.op.unary.f32(i32 7, float %9304)  ; Saturate(value)
  %9306 = fmul fast float %8846, %9301
  %9307 = fsub fast float -0.000000e+00, %9306
  %9308 = fmul fast float %8847, %9301
  %9309 = fsub fast float -0.000000e+00, %9308
  %9310 = call float @dx.op.unary.f32(i32 21, float %9307)  ; Exp(value)
  %9311 = call float @dx.op.unary.f32(i32 21, float %9309)  ; Exp(value)
  %9312 = call float @dx.op.binary.f32(i32 35, float %8854, float %9310)  ; FMax(a,b)
  %9313 = call float @dx.op.binary.f32(i32 35, float %8854, float %9311)  ; FMax(a,b)
  %9314 = fsub fast float %9313, %9312
  %9315 = fmul fast float %9314, %9305
  %9316 = fadd fast float %9315, %9312
  %9317 = call float @dx.op.unary.f32(i32 7, float %9316)  ; Saturate(value)
  %9318 = fsub fast float %8851, %8856
  %9319 = fsub fast float %8852, %8857
  %9320 = fsub fast float %8853, %8858
  %9321 = fmul fast float %9305, %9318
  %9322 = fmul fast float %9305, %9319
  %9323 = fmul fast float %9305, %9320
  %9324 = fadd fast float %9321, %8856
  %9325 = fadd fast float %9322, %8857
  %9326 = fadd fast float %9323, %8858
  %9327 = fsub fast float 1.000000e+00, %9317
  %9328 = fmul fast float %9327, %9324
  %9329 = fmul fast float %9327, %9325
  %9330 = fmul fast float %9327, %9326
  br label %9390

; <label>:9331                                    ; preds = %9290
  %9332 = fmul fast float %9301, %8863
  %9333 = call float @dx.op.unary.f32(i32 7, float %9332)  ; Saturate(value)
  %9334 = fsub fast float 2.000000e+00, %9333
  %9335 = fmul fast float %9333, 9.921875e-01
  %9336 = fmul fast float %9335, %9334
  %9337 = fadd fast float %9336, 3.906250e-03
  %9338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9337, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9339 = extractvalue %dx.types.ResRet.f32 %9338, 0
  %9340 = fsub fast float %9333, %9339
  %9341 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9340)  ; FMax(a,b)
  %9342 = fmul fast float %8849, %8830
  %9343 = call float @dx.op.unary.f32(i32 6, float %9342)  ; FAbs(value)
  %9344 = fcmp fast ogt float %9343, 0x3EB0C6F7A0000000
  br i1 %9344, label %9345, label %9351, !dx.controlflow.hints !173

; <label>:9345                                    ; preds = %9331
  %9346 = fmul fast float %9342, 0xBFF7154760000000
  %9347 = call float @dx.op.unary.f32(i32 21, float %9346)  ; Exp(value)
  %9348 = fsub fast float 1.000000e+00, %9347
  %9349 = fdiv fast float %9348, %9342
  %9350 = fmul fast float %9349, %8859
  br label %9351

; <label>:9351                                    ; preds = %9345, %9331
  %9352 = phi float [ %9350, %9345 ], [ %8859, %9331 ]
  %9353 = fadd fast float %9352, %8861
  %9354 = fmul fast float %9353, %9341
  %9355 = fmul fast float %8846, %9354
  %9356 = fsub fast float -0.000000e+00, %9355
  %9357 = fmul fast float %8847, %9354
  %9358 = fsub fast float -0.000000e+00, %9357
  %9359 = fmul fast float %8848, %9354
  %9360 = fsub fast float -0.000000e+00, %9359
  %9361 = call float @dx.op.unary.f32(i32 21, float %9356)  ; Exp(value)
  %9362 = call float @dx.op.unary.f32(i32 21, float %9358)  ; Exp(value)
  %9363 = call float @dx.op.unary.f32(i32 21, float %9360)  ; Exp(value)
  %9364 = fmul fast float %8875, %8875
  %9365 = fadd fast float %9364, 1.000000e+00
  %9366 = fmul fast float %9365, 0x3FAE8EC8A0000000
  %9367 = fmul fast float %9366, %8856
  %9368 = fmul fast float %9366, %8857
  %9369 = fmul fast float %9366, %8858
  %9370 = fmul fast float %8875, %8854
  %9371 = fsub fast float 1.000000e+00, %9370
  %9372 = fmul fast float %8854, %8854
  %9373 = fsub fast float 1.000000e+00, %9372
  %9374 = fmul fast float %9373, 0x3FB45F3060000000
  %9375 = fmul fast float %9371, %9371
  %9376 = fdiv fast float 1.000000e+00, %9375
  %9377 = fmul fast float %9374, %9376
  %9378 = fmul fast float %9377, %8851
  %9379 = fmul fast float %9377, %8852
  %9380 = fmul fast float %9377, %8853
  %9381 = fadd fast float %9378, %9367
  %9382 = fadd fast float %9379, %9368
  %9383 = fadd fast float %9380, %9369
  %9384 = fsub fast float 1.000000e+00, %9361
  %9385 = fsub fast float 1.000000e+00, %9362
  %9386 = fsub fast float 1.000000e+00, %9363
  %9387 = fmul fast float %9381, %9384
  %9388 = fmul fast float %9382, %9385
  %9389 = fmul fast float %9383, %9386
  br label %9390

; <label>:9390                                    ; preds = %9351, %9302
  %9391 = phi float [ %9328, %9302 ], [ %9387, %9351 ]
  %9392 = phi float [ %9329, %9302 ], [ %9388, %9351 ]
  %9393 = phi float [ %9330, %9302 ], [ %9389, %9351 ]
  %9394 = phi float [ %9317, %9302 ], [ %9361, %9351 ]
  %9395 = phi float [ %9317, %9302 ], [ %9362, %9351 ]
  %9396 = phi float [ %9317, %9302 ], [ %9363, %9351 ]
  br i1 %8883, label %9397, label %9595, !dx.controlflow.hints !174

; <label>:9397                                    ; preds = %9390
  %9398 = extractvalue %dx.types.CBufRet.f32 %9296, 0
  %9399 = fmul fast float %9398, %9298
  %9400 = fsub fast float %9293, %9391
  %9401 = fsub fast float %9294, %9392
  %9402 = fsub fast float %9295, %9393
  %9403 = fmul fast float %9399, %9400
  %9404 = fmul fast float %9399, %9401
  %9405 = fmul fast float %9399, %9402
  %9406 = fadd fast float %9403, %9391
  %9407 = fadd fast float %9404, %9392
  %9408 = fadd fast float %9405, %9393
  %9409 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9394)  ; FMax(a,b)
  %9410 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9395)  ; FMax(a,b)
  %9411 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9396)  ; FMax(a,b)
  %9412 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9292)  ; FMax(a,b)
  %9413 = call float @dx.op.binary.f32(i32 35, float %9291, float %9301)  ; FMax(a,b)
  %9414 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9413)  ; FMax(a,b)
  %9415 = fdiv fast float %9291, %9414
  %9416 = call float @dx.op.unary.f32(i32 7, float %9415)  ; Saturate(value)
  %9417 = fdiv fast float %9301, %9414
  %9418 = call float @dx.op.unary.f32(i32 7, float %9417)  ; Saturate(value)
  %9419 = fcmp fast une float %9412, 1.000000e+00
  br i1 %9419, label %9420, label %9433, !dx.controlflow.hints !175

; <label>:9420                                    ; preds = %9397
  %9421 = call float @dx.op.unary.f32(i32 23, float %9412)  ; Log(value)
  %9422 = fmul fast float %9421, 0x3FE62E4300000000
  %9423 = fmul fast float %9293, %9422
  %9424 = fsub fast float -0.000000e+00, %9423
  %9425 = fmul fast float %9294, %9422
  %9426 = fsub fast float -0.000000e+00, %9425
  %9427 = fmul fast float %9295, %9422
  %9428 = fsub fast float -0.000000e+00, %9427
  %9429 = fsub fast float 1.000000e+00, %9412
  %9430 = fdiv fast float %9424, %9429
  %9431 = fdiv fast float %9426, %9429
  %9432 = fdiv fast float %9428, %9429
  br label %9433

; <label>:9433                                    ; preds = %9420, %9397
  %9434 = phi float [ %9430, %9420 ], [ %9293, %9397 ]
  %9435 = phi float [ %9431, %9420 ], [ %9294, %9397 ]
  %9436 = phi float [ %9432, %9420 ], [ %9295, %9397 ]
  %9437 = phi float [ %9422, %9420 ], [ 0.000000e+00, %9397 ]
  %9438 = fcmp fast une float %9409, 1.000000e+00
  br i1 %9438, label %9439, label %9446, !dx.controlflow.hints !176

; <label>:9439                                    ; preds = %9433
  %9440 = call float @dx.op.unary.f32(i32 23, float %9409)  ; Log(value)
  %9441 = fmul fast float %9440, 0x3FE62E4300000000
  %9442 = fmul fast float %9406, %9441
  %9443 = fsub fast float -0.000000e+00, %9442
  %9444 = fsub fast float 1.000000e+00, %9409
  %9445 = fdiv fast float %9443, %9444
  br label %9446

; <label>:9446                                    ; preds = %9439, %9433
  %9447 = phi float [ %9445, %9439 ], [ %9406, %9433 ]
  %9448 = phi float [ %9441, %9439 ], [ 0.000000e+00, %9433 ]
  %9449 = fcmp fast une float %9410, 1.000000e+00
  br i1 %9449, label %9450, label %9457, !dx.controlflow.hints !176

; <label>:9450                                    ; preds = %9446
  %9451 = call float @dx.op.unary.f32(i32 23, float %9410)  ; Log(value)
  %9452 = fmul fast float %9451, 0x3FE62E4300000000
  %9453 = fmul fast float %9407, %9452
  %9454 = fsub fast float -0.000000e+00, %9453
  %9455 = fsub fast float 1.000000e+00, %9410
  %9456 = fdiv fast float %9454, %9455
  br label %9457

; <label>:9457                                    ; preds = %9450, %9446
  %9458 = phi float [ %9456, %9450 ], [ %9407, %9446 ]
  %9459 = phi float [ %9452, %9450 ], [ 0.000000e+00, %9446 ]
  %9460 = fcmp fast une float %9411, 1.000000e+00
  br i1 %9460, label %9461, label %9468, !dx.controlflow.hints !176

; <label>:9461                                    ; preds = %9457
  %9462 = call float @dx.op.unary.f32(i32 23, float %9411)  ; Log(value)
  %9463 = fmul fast float %9462, 0x3FE62E4300000000
  %9464 = fmul fast float %9408, %9463
  %9465 = fsub fast float -0.000000e+00, %9464
  %9466 = fsub fast float 1.000000e+00, %9411
  %9467 = fdiv fast float %9465, %9466
  br label %9468

; <label>:9468                                    ; preds = %9461, %9457
  %9469 = phi float [ %9467, %9461 ], [ %9408, %9457 ]
  %9470 = phi float [ %9463, %9461 ], [ 0.000000e+00, %9457 ]
  %9471 = fmul fast float %9434, %9418
  %9472 = fmul fast float %9435, %9418
  %9473 = fmul fast float %9436, %9418
  %9474 = fmul fast float %9437, %9418
  %9475 = fmul fast float %9447, %9416
  %9476 = fmul fast float %9458, %9416
  %9477 = fmul fast float %9469, %9416
  %9478 = fmul fast float %9448, %9416
  %9479 = fmul fast float %9459, %9416
  %9480 = fmul fast float %9470, %9416
  %9481 = fadd fast float %9475, %9471
  %9482 = fadd fast float %9476, %9472
  %9483 = fadd fast float %9477, %9473
  %9484 = fadd fast float %9478, %9474
  %9485 = fadd fast float %9479, %9474
  %9486 = fadd fast float %9480, %9474
  %9487 = fcmp fast une float %9484, 0.000000e+00
  br i1 %9487, label %9488, label %9495, !dx.controlflow.hints !177

; <label>:9488                                    ; preds = %9468
  %9489 = fmul fast float %9484, 0x3FF7154760000000
  %9490 = call float @dx.op.unary.f32(i32 21, float %9489)  ; Exp(value)
  %9491 = fsub fast float 1.000000e+00, %9490
  %9492 = fmul fast float %9481, %9491
  %9493 = fsub fast float -0.000000e+00, %9492
  %9494 = fdiv fast float %9493, %9484
  br label %9495

; <label>:9495                                    ; preds = %9488, %9468
  %9496 = phi float [ %9490, %9488 ], [ 1.000000e+00, %9468 ]
  %9497 = phi float [ %9494, %9488 ], [ %9481, %9468 ]
  %9498 = fcmp fast une float %9485, 0.000000e+00
  br i1 %9498, label %9499, label %9506, !dx.controlflow.hints !177

; <label>:9499                                    ; preds = %9495
  %9500 = fmul fast float %9485, 0x3FF7154760000000
  %9501 = call float @dx.op.unary.f32(i32 21, float %9500)  ; Exp(value)
  %9502 = fsub fast float 1.000000e+00, %9501
  %9503 = fmul fast float %9482, %9502
  %9504 = fsub fast float -0.000000e+00, %9503
  %9505 = fdiv fast float %9504, %9485
  br label %9506

; <label>:9506                                    ; preds = %9499, %9495
  %9507 = phi float [ %9501, %9499 ], [ 1.000000e+00, %9495 ]
  %9508 = phi float [ %9505, %9499 ], [ %9482, %9495 ]
  %9509 = fcmp fast une float %9486, 0.000000e+00
  br i1 %9509, label %9510, label %9517, !dx.controlflow.hints !177

; <label>:9510                                    ; preds = %9506
  %9511 = fmul fast float %9486, 0x3FF7154760000000
  %9512 = call float @dx.op.unary.f32(i32 21, float %9511)  ; Exp(value)
  %9513 = fsub fast float 1.000000e+00, %9512
  %9514 = fmul fast float %9483, %9513
  %9515 = fsub fast float -0.000000e+00, %9514
  %9516 = fdiv fast float %9515, %9486
  br label %9517

; <label>:9517                                    ; preds = %9510, %9506
  %9518 = phi float [ %9512, %9510 ], [ 1.000000e+00, %9506 ]
  %9519 = phi float [ %9516, %9510 ], [ %9483, %9506 ]
  %9520 = fcmp fast ogt float %9416, %9418
  br i1 %9520, label %9521, label %9541

; <label>:9521                                    ; preds = %9517
  %9522 = fsub fast float 1.000000e+00, %9418
  %9523 = fmul fast float %9434, %9522
  %9524 = fmul fast float %9435, %9522
  %9525 = fmul fast float %9436, %9522
  %9526 = fmul fast float %9437, %9522
  %9527 = fcmp fast une float %9526, 0.000000e+00
  br i1 %9527, label %9528, label %9579, !dx.controlflow.hints !178

; <label>:9528                                    ; preds = %9521
  %9529 = fmul fast float %9526, 0x3FF7154760000000
  %9530 = call float @dx.op.unary.f32(i32 21, float %9529)  ; Exp(value)
  %9531 = fsub fast float 1.000000e+00, %9530
  %9532 = fmul fast float %9523, %9531
  %9533 = fsub fast float -0.000000e+00, %9532
  %9534 = fmul fast float %9524, %9531
  %9535 = fsub fast float -0.000000e+00, %9534
  %9536 = fmul fast float %9525, %9531
  %9537 = fsub fast float -0.000000e+00, %9536
  %9538 = fdiv fast float %9533, %9526
  %9539 = fdiv fast float %9535, %9526
  %9540 = fdiv fast float %9537, %9526
  br label %9579

; <label>:9541                                    ; preds = %9517
  %9542 = fsub fast float 1.000000e+00, %9416
  %9543 = fmul fast float %9447, %9542
  %9544 = fmul fast float %9458, %9542
  %9545 = fmul fast float %9469, %9542
  %9546 = fmul fast float %9448, %9542
  %9547 = fmul fast float %9459, %9542
  %9548 = fmul fast float %9470, %9542
  %9549 = fcmp fast une float %9546, 0.000000e+00
  br i1 %9549, label %9550, label %9557, !dx.controlflow.hints !177

; <label>:9550                                    ; preds = %9541
  %9551 = fmul fast float %9546, 0x3FF7154760000000
  %9552 = call float @dx.op.unary.f32(i32 21, float %9551)  ; Exp(value)
  %9553 = fsub fast float 1.000000e+00, %9552
  %9554 = fmul fast float %9543, %9553
  %9555 = fsub fast float -0.000000e+00, %9554
  %9556 = fdiv fast float %9555, %9546
  br label %9557

; <label>:9557                                    ; preds = %9550, %9541
  %9558 = phi float [ %9556, %9550 ], [ %9543, %9541 ]
  %9559 = phi float [ %9552, %9550 ], [ 1.000000e+00, %9541 ]
  %9560 = fcmp fast une float %9547, 0.000000e+00
  br i1 %9560, label %9561, label %9568, !dx.controlflow.hints !177

; <label>:9561                                    ; preds = %9557
  %9562 = fmul fast float %9547, 0x3FF7154760000000
  %9563 = call float @dx.op.unary.f32(i32 21, float %9562)  ; Exp(value)
  %9564 = fsub fast float 1.000000e+00, %9563
  %9565 = fmul fast float %9544, %9564
  %9566 = fsub fast float -0.000000e+00, %9565
  %9567 = fdiv fast float %9566, %9547
  br label %9568

; <label>:9568                                    ; preds = %9561, %9557
  %9569 = phi float [ %9567, %9561 ], [ %9544, %9557 ]
  %9570 = phi float [ %9563, %9561 ], [ 1.000000e+00, %9557 ]
  %9571 = fcmp fast une float %9548, 0.000000e+00
  br i1 %9571, label %9572, label %9579, !dx.controlflow.hints !177

; <label>:9572                                    ; preds = %9568
  %9573 = fmul fast float %9548, 0x3FF7154760000000
  %9574 = call float @dx.op.unary.f32(i32 21, float %9573)  ; Exp(value)
  %9575 = fsub fast float 1.000000e+00, %9574
  %9576 = fmul fast float %9545, %9575
  %9577 = fsub fast float -0.000000e+00, %9576
  %9578 = fdiv fast float %9577, %9548
  br label %9579

; <label>:9579                                    ; preds = %9572, %9568, %9528, %9521
  %9580 = phi float [ %9578, %9572 ], [ %9540, %9528 ], [ %9525, %9521 ], [ %9545, %9568 ]
  %9581 = phi float [ %9569, %9572 ], [ %9539, %9528 ], [ %9524, %9521 ], [ %9569, %9568 ]
  %9582 = phi float [ %9558, %9572 ], [ %9538, %9528 ], [ %9523, %9521 ], [ %9558, %9568 ]
  %9583 = phi float [ %9574, %9572 ], [ %9530, %9528 ], [ 1.000000e+00, %9521 ], [ 1.000000e+00, %9568 ]
  %9584 = phi float [ %9570, %9572 ], [ %9530, %9528 ], [ 1.000000e+00, %9521 ], [ %9570, %9568 ]
  %9585 = phi float [ %9559, %9572 ], [ %9530, %9528 ], [ 1.000000e+00, %9521 ], [ %9559, %9568 ]
  %9586 = fmul fast float %9585, %9497
  %9587 = fmul fast float %9584, %9508
  %9588 = fmul fast float %9583, %9519
  %9589 = fadd fast float %9586, %9582
  %9590 = fadd fast float %9587, %9581
  %9591 = fadd fast float %9588, %9580
  %9592 = fmul fast float %9585, %9496
  %9593 = fmul fast float %9584, %9507
  %9594 = fmul fast float %9583, %9518
  br label %9595

; <label>:9595                                    ; preds = %9579, %9390
  %9596 = phi float [ %9594, %9579 ], [ %9396, %9390 ]
  %9597 = phi float [ %9593, %9579 ], [ %9395, %9390 ]
  %9598 = phi float [ %9592, %9579 ], [ %9394, %9390 ]
  %9599 = phi float [ %9591, %9579 ], [ %9393, %9390 ]
  %9600 = phi float [ %9590, %9579 ], [ %9392, %9390 ]
  %9601 = phi float [ %9589, %9579 ], [ %9391, %9390 ]
  %9602 = fmul fast float %9601, %8547
  %9603 = fmul fast float %9600, %8547
  %9604 = fmul fast float %9599, %8547
  %9605 = fmul fast float %9598, %8838
  %9606 = call float @dx.op.dot3.f32(i32 55, float %9598, float %9597, float %9596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9607 = call float @dx.op.dot3.f32(i32 55, float %9602, float %9603, float %9604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9608 = select i1 %232, float %9606, float %9598
  %9609 = select i1 %232, float %9606, float %9597
  %9610 = select i1 %232, float 1.000000e+00, float %9596
  %9611 = select i1 %232, float %9607, float %9602
  %9612 = select i1 %232, float 0.000000e+00, float %9603
  %9613 = select i1 %232, float 0.000000e+00, float %9604
  %9614 = fmul fast float %9608, %8832
  %9615 = fmul fast float %9609, %8833
  %9616 = fmul fast float %9610, %8834
  %9617 = fadd fast float %9614, %9611
  %9618 = fadd fast float %9615, %9612
  %9619 = fadd fast float %9613, %9616
  %9620 = fmul fast float %9608, %8835
  %9621 = fmul fast float %9609, %8836
  %9622 = fmul fast float %9610, %8837
  %9623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.i32 %9623, 0
  %9625 = icmp eq i32 %9624, 0
  br i1 %9625, label %9993, label %9626, !dx.controlflow.hints !179

; <label>:9626                                    ; preds = %9595
  %9627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9628 = extractvalue %dx.types.CBufRet.f32 %9627, 2
  %9629 = extractvalue %dx.types.CBufRet.f32 %9627, 3
  %9630 = fmul fast float %9628, %111
  %9631 = fmul fast float %9629, %112
  %9632 = fmul fast float %9630, 2.000000e+00
  %9633 = fmul fast float %9631, 2.000000e+00
  %9634 = fsub fast float 1.000000e+00, %9632
  %9635 = fsub fast float 1.000000e+00, %9633
  %9636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9637 = extractvalue %dx.types.CBufRet.f32 %9636, 0
  %9638 = extractvalue %dx.types.CBufRet.f32 %9636, 1
  %9639 = extractvalue %dx.types.CBufRet.f32 %9636, 2
  %9640 = fmul fast float %9634, %9637
  %9641 = fmul fast float %9634, %9638
  %9642 = fmul fast float %9634, %9639
  %9643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9644 = extractvalue %dx.types.CBufRet.f32 %9643, 0
  %9645 = extractvalue %dx.types.CBufRet.f32 %9643, 1
  %9646 = extractvalue %dx.types.CBufRet.f32 %9643, 2
  %9647 = fmul fast float %9635, %9644
  %9648 = fmul fast float %9635, %9645
  %9649 = fmul fast float %9635, %9646
  %9650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9651 = extractvalue %dx.types.CBufRet.f32 %9650, 0
  %9652 = extractvalue %dx.types.CBufRet.f32 %9650, 1
  %9653 = extractvalue %dx.types.CBufRet.f32 %9650, 2
  %9654 = fadd fast float %9647, %9651
  %9655 = fadd fast float %9654, %9640
  %9656 = fadd fast float %9648, %9652
  %9657 = fadd fast float %9656, %9641
  %9658 = fadd fast float %9649, %9653
  %9659 = fadd fast float %9658, %9642
  %9660 = fmul fast float %9655, %8831
  %9661 = fmul fast float %9657, %8831
  %9662 = fmul fast float %9659, %8831
  %9663 = fmul fast float %9660, %9660
  %9664 = fmul fast float %9661, %9661
  %9665 = fadd fast float %9663, %9664
  %9666 = fmul fast float %9662, %9662
  %9667 = fadd fast float %9665, %9666
  %9668 = call float @dx.op.unary.f32(i32 24, float %9667)  ; Sqrt(value)
  %9669 = extractvalue %dx.types.CBufRet.f32 %8558, 0
  %9670 = fsub fast float %9668, %9669
  %9671 = extractvalue %dx.types.CBufRet.f32 %8558, 2
  %9672 = fmul fast float %9670, %9671
  %9673 = call float @dx.op.unary.f32(i32 7, float %9672)  ; Saturate(value)
  %9674 = fadd fast float %9673, -5.000000e-01
  %9675 = fmul fast float %9674, 2.000000e+00
  %9676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9677 = extractvalue %dx.types.CBufRet.f32 %9676, 2
  %9678 = call float @dx.op.binary.f32(i32 36, float %9677, float %9675)  ; FMin(a,b)
  %9679 = fsub fast float -0.000000e+00, %9677
  %9680 = fcmp fast ogt float %9678, %9679
  br i1 %9680, label %9681, label %9993, !dx.controlflow.hints !180

; <label>:9681                                    ; preds = %9626
  %9682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9683 = extractvalue %dx.types.CBufRet.f32 %9682, 3
  %9684 = fcmp fast ogt float %9683, 0.000000e+00
  br i1 %9684, label %9685, label %9760, !dx.controlflow.hints !181

; <label>:9685                                    ; preds = %9681
  %9686 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9687 = extractvalue %dx.types.Dimensions %9686, 0
  %9688 = sitofp i32 %9687 to float
  %9689 = extractvalue %dx.types.Dimensions %9686, 1
  %9690 = sitofp i32 %9689 to float
  %9691 = fmul fast float %9630, %9688
  %9692 = fmul fast float %9631, %9690
  %9693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9694 = extractvalue %dx.types.CBufRet.f32 %9693, 1
  %9695 = fsub fast float -0.000000e+00, %9694
  %9696 = fptoui float %9695 to i32
  %9697 = fptoui float %9691 to i32
  %9698 = fptoui float %9692 to i32
  %9699 = and i32 %9696, 31
  %9700 = lshr i32 %9697, %9699
  %9701 = lshr i32 %9698, %9699
  %9702 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9696, i32 %9700, i32 %9701, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9703 = extractvalue %dx.types.ResRet.f32 %9702, 0
  %9704 = fcmp fast olt float %9703, -1.000000e+00
  %9705 = fcmp fast ogt float %9703, -1.000000e+00
  %9706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9707 = extractvalue %dx.types.CBufRet.f32 %9706, 1
  %9708 = select i1 %9705, float %9707, float 1.000000e+00
  %9709 = fadd fast float %9703, 1.000000e+00
  %9710 = fmul fast float %9708, %9709
  %9711 = call float @dx.op.unary.f32(i32 6, float %9710)  ; FAbs(value)
  %9712 = extractvalue %dx.types.CBufRet.f32 %9706, 3
  %9713 = fcmp fast oge float %9711, %9712
  %9714 = select i1 %9713, float 0x4197782600000000, float %9711
  %9715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9716 = extractvalue %dx.types.CBufRet.f32 %9715, 0
  %9717 = extractvalue %dx.types.CBufRet.f32 %9715, 1
  %9718 = extractvalue %dx.types.CBufRet.f32 %9715, 2
  %9719 = select i1 %9704, float %9716, float %9637
  %9720 = select i1 %9704, float %9717, float %9638
  %9721 = select i1 %9704, float %9718, float %9639
  %9722 = fmul fast float %9719, %9634
  %9723 = fmul fast float %9720, %9634
  %9724 = fmul fast float %9721, %9634
  %9725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9726 = extractvalue %dx.types.CBufRet.f32 %9725, 0
  %9727 = extractvalue %dx.types.CBufRet.f32 %9725, 1
  %9728 = extractvalue %dx.types.CBufRet.f32 %9725, 2
  %9729 = select i1 %9704, float %9726, float %9644
  %9730 = select i1 %9704, float %9727, float %9645
  %9731 = select i1 %9704, float %9728, float %9646
  %9732 = fmul fast float %9729, %9635
  %9733 = fmul fast float %9730, %9635
  %9734 = fmul fast float %9731, %9635
  %9735 = fadd fast float %9732, %9722
  %9736 = fadd fast float %9733, %9723
  %9737 = fadd fast float %9734, %9724
  %9738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9739 = extractvalue %dx.types.CBufRet.f32 %9738, 0
  %9740 = extractvalue %dx.types.CBufRet.f32 %9738, 1
  %9741 = extractvalue %dx.types.CBufRet.f32 %9738, 2
  %9742 = select i1 %9704, float %9739, float %9651
  %9743 = select i1 %9704, float %9740, float %9652
  %9744 = select i1 %9704, float %9741, float %9653
  %9745 = fadd fast float %9735, %9742
  %9746 = fadd fast float %9736, %9743
  %9747 = fadd fast float %9737, %9744
  %9748 = fmul fast float %9745, %9714
  %9749 = fmul fast float %9746, %9714
  %9750 = fmul fast float %9747, %9714
  %9751 = fmul fast float %9748, %9748
  %9752 = fmul fast float %9749, %9749
  %9753 = fadd fast float %9751, %9752
  %9754 = fmul fast float %9750, %9750
  %9755 = fadd fast float %9753, %9754
  %9756 = call float @dx.op.unary.f32(i32 24, float %9755)  ; Sqrt(value)
  %9757 = fsub fast float %9756, %9669
  %9758 = fmul fast float %9757, %9671
  %9759 = call float @dx.op.unary.f32(i32 7, float %9758)  ; Saturate(value)
  br label %9760

; <label>:9760                                    ; preds = %9685, %9681
  %9761 = phi float [ %9759, %9685 ], [ 1.000000e+00, %9681 ]
  %9762 = fmul fast float %9678, 5.000000e-01
  %9763 = fadd fast float %9762, 5.000000e-01
  %9764 = call float @dx.op.unary.f32(i32 22, float %9763)  ; Frc(value)
  %9765 = call float @dx.op.unary.f32(i32 27, float %9764)  ; Round_ni(value)
  %9766 = call float @dx.op.unary.f32(i32 22, float %9764)  ; Frc(value)
  %9767 = fmul fast float %9766, 2.000000e+00
  %9768 = fadd fast float %9767, -1.000000e+00
  %9769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9630, float %9631, float %9765, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9770 = extractvalue %dx.types.ResRet.f32 %9769, 0
  %9771 = extractvalue %dx.types.ResRet.f32 %9769, 1
  %9772 = extractvalue %dx.types.ResRet.f32 %9769, 2
  %9773 = extractvalue %dx.types.ResRet.f32 %9769, 3
  %9774 = fadd fast float %9770, -5.000000e-01
  %9775 = fadd fast float %9772, -5.000000e-01
  %9776 = fmul fast float %9774, 0xBFD5555560000000
  %9777 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9775, float %9776)  ; FMad(a,b,c)
  %9778 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9771, float 0.000000e+00)  ; FMad(a,b,c)
  %9779 = fadd fast float %9778, %9773
  %9780 = fmul fast float %9774, -7.500000e-01
  %9781 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9775, float %9780)  ; FMad(a,b,c)
  %9782 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9771, float 0.000000e+00)  ; FMad(a,b,c)
  %9783 = fadd fast float %9782, %9773
  %9784 = call float @dx.op.binary.f32(i32 35, float %9777, float -1.000000e+00)  ; FMax(a,b)
  %9785 = call float @dx.op.binary.f32(i32 35, float %9779, float -1.000000e+00)  ; FMax(a,b)
  %9786 = call float @dx.op.binary.f32(i32 35, float %9781, float -1.000000e+00)  ; FMax(a,b)
  %9787 = call float @dx.op.binary.f32(i32 35, float %9783, float -1.000000e+00)  ; FMax(a,b)
  %9788 = call float @dx.op.binary.f32(i32 36, float %9784, float 1.000000e+00)  ; FMin(a,b)
  %9789 = call float @dx.op.binary.f32(i32 36, float %9785, float 1.000000e+00)  ; FMin(a,b)
  %9790 = call float @dx.op.binary.f32(i32 36, float %9786, float 1.000000e+00)  ; FMin(a,b)
  %9791 = call float @dx.op.binary.f32(i32 36, float %9787, float 1.000000e+00)  ; FMin(a,b)
  %9792 = fcmp fast olt float %9788, 0x3FEFFF8020000000
  br i1 %9792, label %9793, label %9908, !dx.controlflow.hints !182

; <label>:9793                                    ; preds = %9760
  %9794 = extractvalue %dx.types.CBufRet.f32 %9676, 3
  %9795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9796 = extractvalue %dx.types.CBufRet.f32 %9795, 0
  %9797 = extractvalue %dx.types.CBufRet.f32 %9795, 1
  %9798 = extractvalue %dx.types.CBufRet.f32 %9795, 2
  %9799 = extractvalue %dx.types.CBufRet.f32 %9795, 3
  %9800 = fsub fast float %9796, %9788
  %9801 = fsub fast float %9797, %9789
  %9802 = fsub fast float %9798, %9790
  %9803 = fsub fast float %9799, %9791
  %9804 = fmul fast float %9800, %9794
  %9805 = fmul fast float %9801, %9794
  %9806 = fmul fast float %9802, %9794
  %9807 = fmul fast float %9803, %9794
  %9808 = fadd fast float %9804, %9788
  %9809 = fadd fast float %9805, %9789
  %9810 = fsub fast float -0.000000e+00, %9809
  %9811 = fadd fast float %9806, %9790
  %9812 = fadd fast float %9807, %9791
  %9813 = fmul fast float %9808, %9808
  %9814 = fsub fast float %9809, %9813
  %9815 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9814)  ; FMax(a,b)
  %9816 = fdiv fast float 1.000000e+00, %9815
  %9817 = fmul fast float %9809, %9808
  %9818 = fsub fast float %9811, %9817
  %9819 = fsub fast float %9768, %9808
  %9820 = fmul fast float %9768, %9768
  %9821 = fsub fast float %9820, %9809
  %9822 = fmul fast float %9819, %9816
  %9823 = fmul fast float %9822, %9818
  %9824 = fsub fast float %9821, %9823
  %9825 = fmul fast float %9809, %9809
  %9826 = fsub fast float %9812, %9825
  %9827 = fmul fast float %9818, %9818
  %9828 = fmul fast float %9827, %9816
  %9829 = fsub fast float %9826, %9828
  %9830 = fdiv fast float %9824, %9829
  %9831 = fmul fast float %9818, %9830
  %9832 = fsub fast float %9819, %9831
  %9833 = fmul fast float %9832, %9816
  %9834 = fmul fast float %9833, %9808
  %9835 = fsub fast float 1.000000e+00, %9834
  %9836 = fmul fast float %9809, %9830
  %9837 = fsub fast float %9835, %9836
  %9838 = fmul fast float %9833, %9833
  %9839 = fmul fast float %9830, 4.000000e+00
  %9840 = fmul fast float %9839, %9837
  %9841 = fsub fast float %9838, %9840
  %9842 = call float @dx.op.unary.f32(i32 24, float %9841)  ; Sqrt(value)
  %9843 = fcmp fast oge float %9833, 0.000000e+00
  %9844 = fsub fast float -0.000000e+00, %9842
  %9845 = select i1 %9843, float %9844, float %9842
  %9846 = fsub fast float %9845, %9833
  %9847 = fdiv fast float %9846, %9830
  %9848 = fdiv fast float %9837, %9846
  %9849 = fmul fast float %9847, 5.000000e-01
  %9850 = fmul fast float %9848, 2.000000e+00
  %9851 = select i1 %9843, float %9849, float %9850
  %9852 = select i1 %9843, float %9850, float %9849
  %9853 = call float @dx.op.binary.f32(i32 35, float %9851, float %9852)  ; FMax(a,b)
  %9854 = call float @dx.op.binary.f32(i32 36, float %9851, float %9852)  ; FMin(a,b)
  %9855 = fcmp fast ogt float %9768, %9854
  br i1 %9855, label %9856, label %9866

; <label>:9856                                    ; preds = %9793
  %9857 = fsub fast float %9768, %9854
  %9858 = fsub fast float %9853, %9854
  %9859 = fmul fast float %9857, %9858
  %9860 = fmul fast float %9853, %9768
  %9861 = fadd fast float %9853, %9768
  %9862 = fmul fast float %9861, %9808
  %9863 = fadd fast float %9860, %9809
  %9864 = fsub fast float %9863, %9862
  %9865 = fdiv fast float %9864, %9859
  br label %9866

; <label>:9866                                    ; preds = %9856, %9793
  %9867 = phi float [ %9865, %9856 ], [ 0.000000e+00, %9793 ]
  %9868 = fcmp fast ogt float %9768, %9853
  %9869 = fsub fast float %9768, %9853
  br i1 %9868, label %9870, label %9880

; <label>:9870                                    ; preds = %9866
  %9871 = fsub fast float %9853, %9854
  %9872 = fmul fast float %9871, %9869
  %9873 = fmul fast float %9854, %9768
  %9874 = fadd fast float %9854, %9768
  %9875 = fmul fast float %9874, %9808
  %9876 = fsub fast float %9810, %9873
  %9877 = fadd fast float %9876, %9875
  %9878 = fdiv fast float %9877, %9872
  %9879 = fadd fast float %9878, %9867
  br label %9880

; <label>:9880                                    ; preds = %9870, %9866
  %9881 = phi float [ %9879, %9870 ], [ %9867, %9866 ]
  %9882 = fsub fast float %9768, %9854
  %9883 = fmul fast float %9882, %9869
  %9884 = fmul fast float %9854, %9853
  %9885 = fadd fast float %9854, %9853
  %9886 = fmul fast float %9885, %9808
  %9887 = fadd fast float %9884, %9809
  %9888 = fsub fast float %9887, %9886
  %9889 = fdiv fast float %9888, %9883
  %9890 = call float @dx.op.unary.f32(i32 7, float %9881)  ; Saturate(value)
  %9891 = fcmp fast oeq float %8559, 0.000000e+00
  %9892 = extractvalue %dx.types.CBufRet.f32 %9676, 0
  %9893 = fcmp fast oeq float %9892, 0.000000e+00
  %9894 = or i1 %9891, %9893
  %9895 = fmul fast float %9892, 2.000000e+00
  %9896 = fadd fast float %9677, %9678
  %9897 = fdiv fast float %9896, %9895
  %9898 = call float @dx.op.unary.f32(i32 7, float %9897)  ; Saturate(value)
  %9899 = fmul fast float %9898, 2.000000e+00
  %9900 = fsub fast float 3.000000e+00, %9899
  %9901 = fmul fast float %9898, %9898
  %9902 = fmul fast float %9901, %9900
  %9903 = select i1 %9894, float 1.000000e+00, float %9902
  %9904 = fmul fast float %9889, %8559
  %9905 = fadd fast float %9890, %9904
  %9906 = call float @dx.op.unary.f32(i32 7, float %9905)  ; Saturate(value)
  %9907 = fmul fast float %9903, %9906
  br label %9908

; <label>:9908                                    ; preds = %9880, %9760
  %9909 = phi float [ %9907, %9880 ], [ 0.000000e+00, %9760 ]
  %9910 = fsub fast float 1.000000e+00, %9909
  %9911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9630, float %9631, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9912 = extractvalue %dx.types.ResRet.f32 %9911, 0
  %9913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9914 = extractvalue %dx.types.CBufRet.i32 %9913, 2
  %9915 = icmp eq i32 %9914, 0
  br i1 %9915, label %9921, label %9916

; <label>:9916                                    ; preds = %9908
  %9917 = call float @dx.op.unary.f32(i32 7, float %9909)  ; Saturate(value)
  %9918 = fadd fast float %9912, -1.000000e+00
  %9919 = fmul fast float %9917, %9918
  %9920 = fadd fast float %9919, 1.000000e+00
  br label %9921

; <label>:9921                                    ; preds = %9916, %9908
  %9922 = phi float [ %9920, %9916 ], [ %9910, %9908 ]
  br i1 %9684, label %9923, label %9941

; <label>:9923                                    ; preds = %9921
  %9924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9925 = extractvalue %dx.types.CBufRet.f32 %9924, 1
  %9926 = fsub fast float %9761, %9925
  %9927 = call float @dx.op.unary.f32(i32 7, float %9926)  ; Saturate(value)
  %9928 = fsub fast float %9761, %9683
  %9929 = call float @dx.op.unary.f32(i32 7, float %9928)  ; Saturate(value)
  %9930 = fsub fast float %9927, %9929
  %9931 = fsub fast float %9763, %9929
  %9932 = fdiv fast float %9931, %9930
  %9933 = call float @dx.op.unary.f32(i32 7, float %9932)  ; Saturate(value)
  %9934 = fmul fast float %9933, 2.000000e+00
  %9935 = fsub fast float 3.000000e+00, %9934
  %9936 = fsub fast float %9912, %9922
  %9937 = fmul fast float %9933, %9933
  %9938 = fmul fast float %9937, %9936
  %9939 = fmul fast float %9938, %9935
  %9940 = fadd fast float %9939, %9922
  br label %9941

; <label>:9941                                    ; preds = %9923, %9921
  %9942 = phi float [ %9940, %9923 ], [ %9922, %9921 ]
  %9943 = call float @dx.op.binary.f32(i32 35, float %9912, float %9942)  ; FMax(a,b)
  %9944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9945 = extractvalue %dx.types.CBufRet.i32 %9944, 2
  %9946 = and i32 %9945, 1
  %9947 = icmp eq i32 %9946, 0
  %9948 = fcmp fast une float %9943, 1.000000e+00
  %9949 = and i1 %9948, %9947
  br i1 %9949, label %9950, label %9969

; <label>:9950                                    ; preds = %9941
  %9951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9630, float %9631, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9952 = extractvalue %dx.types.ResRet.f32 %9951, 0
  %9953 = extractvalue %dx.types.ResRet.f32 %9951, 1
  %9954 = extractvalue %dx.types.ResRet.f32 %9951, 2
  %9955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9956 = extractvalue %dx.types.CBufRet.f32 %9955, 1
  %9957 = fmul fast float %9956, %9952
  %9958 = fmul fast float %9956, %9953
  %9959 = fmul fast float %9956, %9954
  %9960 = fcmp fast ogt float %9912, 0x3FEFFF2E40000000
  %9961 = fsub fast float 1.000000e+00, %9943
  %9962 = fsub fast float 1.000000e+00, %9912
  %9963 = fdiv fast float %9961, %9962
  %9964 = call float @dx.op.unary.f32(i32 7, float %9963)  ; Saturate(value)
  %9965 = select i1 %9960, float 0.000000e+00, float %9964
  %9966 = fmul fast float %9957, %9965
  %9967 = fmul fast float %9958, %9965
  %9968 = fmul fast float %9959, %9965
  br label %9969

; <label>:9969                                    ; preds = %9950, %9941
  %9970 = phi float [ 0.000000e+00, %9941 ], [ %9966, %9950 ]
  %9971 = phi float [ 0.000000e+00, %9941 ], [ %9967, %9950 ]
  %9972 = phi float [ 0.000000e+00, %9941 ], [ %9968, %9950 ]
  %9973 = fmul fast float %9970, %8547
  %9974 = fmul fast float %9971, %8547
  %9975 = fmul fast float %9972, %8547
  %9976 = fmul fast float %9943, %9605
  %9977 = call float @dx.op.dot3.f32(i32 55, float %9943, float %9943, float %9943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9978 = call float @dx.op.dot3.f32(i32 55, float %9973, float %9974, float %9975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9979 = select i1 %232, float %9977, float %9943
  %9980 = select i1 %232, float 1.000000e+00, float %9943
  %9981 = select i1 %232, float %9978, float %9973
  %9982 = select i1 %232, float 0.000000e+00, float %9974
  %9983 = select i1 %232, float 0.000000e+00, float %9975
  %9984 = fmul fast float %9979, %9617
  %9985 = fmul fast float %9979, %9618
  %9986 = fmul fast float %9980, %9619
  %9987 = fadd fast float %9984, %9981
  %9988 = fadd fast float %9985, %9982
  %9989 = fadd fast float %9983, %9986
  %9990 = fmul fast float %9979, %9620
  %9991 = fmul fast float %9979, %9621
  %9992 = fmul fast float %9980, %9622
  br label %9993

; <label>:9993                                    ; preds = %9969, %9626, %9595, %8827
  %9994 = phi float [ %8832, %8827 ], [ %9617, %9595 ], [ %9987, %9969 ], [ %9617, %9626 ]
  %9995 = phi float [ %8833, %8827 ], [ %9618, %9595 ], [ %9988, %9969 ], [ %9618, %9626 ]
  %9996 = phi float [ %8834, %8827 ], [ %9619, %9595 ], [ %9989, %9969 ], [ %9619, %9626 ]
  %9997 = phi float [ %8835, %8827 ], [ %9620, %9595 ], [ %9990, %9969 ], [ %9620, %9626 ]
  %9998 = phi float [ %8836, %8827 ], [ %9621, %9595 ], [ %9991, %9969 ], [ %9621, %9626 ]
  %9999 = phi float [ %8837, %8827 ], [ %9622, %9595 ], [ %9992, %9969 ], [ %9622, %9626 ]
  %10000 = phi float [ %8838, %8827 ], [ %9605, %9595 ], [ %9976, %9969 ], [ %9605, %9626 ]
  %10001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10002 = extractvalue %dx.types.CBufRet.f32 %10001, 2
  %10003 = extractvalue %dx.types.CBufRet.f32 %10001, 3
  %10004 = fmul fast float %10002, %111
  %10005 = fmul fast float %10003, %112
  %10006 = call float @dx.op.unary.f32(i32 7, float %10004)  ; Saturate(value)
  %10007 = call float @dx.op.unary.f32(i32 7, float %10005)  ; Saturate(value)
  %10008 = select i1 %8569, i32 2, i32 0
  %10009 = or i32 %10008, 1
  %10010 = uitofp i32 %10009 to float
  %10011 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10006, float %10007, float %10010, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10012 = extractvalue %dx.types.ResRet.f32 %10011, 0
  %10013 = extractvalue %dx.types.ResRet.f32 %10011, 1
  %10014 = extractvalue %dx.types.ResRet.f32 %10011, 2
  %10015 = extractvalue %dx.types.ResRet.f32 %10011, 3
  %10016 = add nuw nsw i32 %10008, 2
  %10017 = uitofp i32 %10016 to float
  %10018 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10006, float %10007, float %10017, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10019 = extractvalue %dx.types.ResRet.f32 %10018, 0
  %10020 = extractvalue %dx.types.ResRet.f32 %10018, 1
  %10021 = extractvalue %dx.types.ResRet.f32 %10018, 2
  %10022 = extractvalue %dx.types.ResRet.f32 %10018, 3
  %10023 = call float @dx.op.binary.f32(i32 35, float %10013, float %10014)  ; FMax(a,b)
  %10024 = call float @dx.op.binary.f32(i32 35, float %10012, float %10023)  ; FMax(a,b)
  %10025 = call float @dx.op.binary.f32(i32 35, float %10024, float %10015)  ; FMax(a,b)
  %10026 = call float @dx.op.binary.f32(i32 36, float %10020, float %10021)  ; FMin(a,b)
  %10027 = call float @dx.op.binary.f32(i32 36, float %10019, float %10026)  ; FMin(a,b)
  %10028 = call float @dx.op.binary.f32(i32 36, float %10027, float %10022)  ; FMin(a,b)
  %10029 = fmul fast float %10025, 2.550000e+02
  %10030 = fadd fast float %10029, 0x3F70101020000000
  %10031 = fptoui float %10030 to i32
  %10032 = fmul fast float %10028, 2.550000e+02
  %10033 = fadd fast float %10032, 0x3F70101020000000
  %10034 = fptoui float %10033 to i32
  %10035 = icmp ult i32 %10031, %10034
  br i1 %10035, label %10036, label %10205

; <label>:10036                                   ; preds = %9993
  %10037 = fcmp fast ogt float %98, 9.843750e-01
  %10038 = fadd fast float %8831, -4.000000e+00
  %10039 = select i1 %10037, float -4.000000e+00, float %10038
  %10040 = call float @dx.op.binary.f32(i32 35, float %10039, float 0.000000e+00)  ; FMax(a,b)
  %10041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10042 = extractvalue %dx.types.CBufRet.f32 %10041, 0
  %10043 = fadd fast float %10042, %10040
  %10044 = extractvalue %dx.types.CBufRet.f32 %10041, 2
  %10045 = fmul fast float %10043, %10044
  %10046 = call float @dx.op.unary.f32(i32 23, float %10045)  ; Log(value)
  %10047 = extractvalue %dx.types.CBufRet.f32 %10041, 3
  %10048 = fmul fast float %10047, %10046
  %10049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10050 = extractvalue %dx.types.CBufRet.f32 %10049, 2
  %10051 = fmul fast float %10048, %10050
  %10052 = call float @dx.op.unary.f32(i32 7, float %10051)  ; Saturate(value)
  %10053 = uitofp i32 %10031 to float
  %10054 = uitofp i32 %10034 to float
  %10055 = fadd fast float %10053, 5.000000e-01
  %10056 = fadd fast float %10054, 5.000000e-01
  %10057 = fmul fast float %10050, %10055
  %10058 = fmul fast float %10050, %10056
  %10059 = fadd fast float %10057, 0x3F0FFB4800000000
  %10060 = fadd fast float %10058, 0xBF0FFB4800000000
  %10061 = call float @dx.op.binary.f32(i32 35, float %10052, float %10059)  ; FMax(a,b)
  %10062 = call float @dx.op.binary.f32(i32 36, float %10061, float %10060)  ; FMin(a,b)
  %10063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10064 = extractvalue %dx.types.CBufRet.f32 %10063, 1
  %10065 = extractvalue %dx.types.CBufRet.f32 %10063, 2
  %10066 = extractvalue %dx.types.CBufRet.f32 %10063, 0
  %10067 = select i1 %8569, float %10066, float 0.000000e+00
  %10068 = fmul fast float %10064, %10062
  %10069 = fadd fast float %10067, %10068
  %10070 = fadd fast float %10067, %10065
  %10071 = fsub fast float %10064, %10065
  %10072 = fadd fast float %10071, %10067
  %10073 = call float @dx.op.binary.f32(i32 35, float %10069, float %10070)  ; FMax(a,b)
  %10074 = call float @dx.op.binary.f32(i32 36, float %10073, float %10072)  ; FMin(a,b)
  %10075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10006, float %10007, float %10074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10076 = extractvalue %dx.types.ResRet.f32 %10075, 0
  %10077 = extractvalue %dx.types.ResRet.f32 %10075, 1
  %10078 = extractvalue %dx.types.ResRet.f32 %10075, 2
  %10079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10080 = extractvalue %dx.types.CBufRet.i32 %10079, 0
  %10081 = extractvalue %dx.types.CBufRet.i32 %10079, 1
  %10082 = uitofp i32 %10080 to float
  %10083 = uitofp i32 %10081 to float
  %10084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10085 = extractvalue %dx.types.CBufRet.f32 %10084, 0
  %10086 = extractvalue %dx.types.CBufRet.f32 %10084, 1
  %10087 = fmul fast float %10082, %10006
  %10088 = fmul fast float %10083, %10007
  %10089 = fadd fast float %10087, -5.000000e-01
  %10090 = fadd fast float %10088, -5.000000e-01
  %10091 = call float @dx.op.unary.f32(i32 22, float %10089)  ; Frc(value)
  %10092 = call float @dx.op.unary.f32(i32 22, float %10090)  ; Frc(value)
  %10093 = fmul fast float %10091, %10091
  %10094 = fmul fast float %10093, %10091
  %10095 = fsub fast float 3.000000e+00, %10091
  %10096 = fmul fast float %10093, %10095
  %10097 = fmul fast float %10091, 3.000000e+00
  %10098 = fmul fast float %10094, 3.000000e+00
  %10099 = fmul fast float %10093, 6.000000e+00
  %10100 = fsub fast float %10098, %10099
  %10101 = fadd fast float %10100, 4.000000e+00
  %10102 = fmul fast float %10101, 0x3FC5555560000000
  %10103 = fmul fast float %10094, -3.000000e+00
  %10104 = fadd fast float %10093, %10091
  %10105 = fmul fast float %10104, 3.000000e+00
  %10106 = fadd fast float %10103, 1.000000e+00
  %10107 = fadd fast float %10106, %10105
  %10108 = fmul fast float %10094, 0x3FC5555560000000
  %10109 = fmul fast float %10092, %10092
  %10110 = fmul fast float %10109, %10092
  %10111 = fsub fast float 3.000000e+00, %10092
  %10112 = fmul fast float %10109, %10111
  %10113 = fmul fast float %10092, 3.000000e+00
  %10114 = fmul fast float %10110, 3.000000e+00
  %10115 = fmul fast float %10109, 6.000000e+00
  %10116 = fsub fast float %10114, %10115
  %10117 = fadd fast float %10116, 4.000000e+00
  %10118 = fmul fast float %10117, 0x3FC5555560000000
  %10119 = fmul fast float %10110, -3.000000e+00
  %10120 = fadd fast float %10109, %10092
  %10121 = fmul fast float %10120, 3.000000e+00
  %10122 = fadd fast float %10119, 1.000000e+00
  %10123 = fadd fast float %10122, %10121
  %10124 = fmul fast float %10110, 0x3FC5555560000000
  %10125 = fadd fast float %10091, 1.000000e+00
  %10126 = fsub fast float 1.000000e+00, %10097
  %10127 = fadd fast float %10126, %10096
  %10128 = fadd fast float %10127, %10101
  %10129 = fmul fast float %10128, 0x3FC5555560000000
  %10130 = fdiv fast float %10102, %10129
  %10131 = fsub fast float %10125, %10130
  %10132 = fsub fast float 1.000000e+00, %10091
  %10133 = fadd fast float %10107, %10094
  %10134 = fmul fast float %10133, 0x3FC5555560000000
  %10135 = fdiv fast float %10108, %10134
  %10136 = fadd fast float %10132, %10135
  %10137 = fadd fast float %10092, 1.000000e+00
  %10138 = fsub fast float 1.000000e+00, %10113
  %10139 = fadd fast float %10138, %10112
  %10140 = fadd fast float %10139, %10117
  %10141 = fmul fast float %10140, 0x3FC5555560000000
  %10142 = fdiv fast float %10118, %10141
  %10143 = fsub fast float %10137, %10142
  %10144 = fsub fast float 1.000000e+00, %10092
  %10145 = fadd fast float %10123, %10110
  %10146 = fmul fast float %10145, 0x3FC5555560000000
  %10147 = fdiv fast float %10124, %10146
  %10148 = fadd fast float %10147, %10144
  %10149 = fmul fast float %10131, %10085
  %10150 = fsub fast float %10006, %10149
  %10151 = fmul fast float %10136, %10085
  %10152 = fadd fast float %10151, %10006
  %10153 = fmul fast float %10148, %10086
  %10154 = fadd fast float %10153, %10007
  %10155 = fmul fast float %10143, %10086
  %10156 = fsub fast float %10007, %10155
  %10157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10150, float %10156, float %10074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10158 = extractvalue %dx.types.ResRet.f32 %10157, 0
  %10159 = extractvalue %dx.types.ResRet.f32 %10157, 1
  %10160 = extractvalue %dx.types.ResRet.f32 %10157, 2
  %10161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10152, float %10156, float %10074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10162 = extractvalue %dx.types.ResRet.f32 %10161, 0
  %10163 = extractvalue %dx.types.ResRet.f32 %10161, 1
  %10164 = extractvalue %dx.types.ResRet.f32 %10161, 2
  %10165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10150, float %10154, float %10074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10166 = extractvalue %dx.types.ResRet.f32 %10165, 0
  %10167 = extractvalue %dx.types.ResRet.f32 %10165, 1
  %10168 = extractvalue %dx.types.ResRet.f32 %10165, 2
  %10169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10152, float %10154, float %10074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10170 = extractvalue %dx.types.ResRet.f32 %10169, 0
  %10171 = extractvalue %dx.types.ResRet.f32 %10169, 1
  %10172 = extractvalue %dx.types.ResRet.f32 %10169, 2
  %10173 = fsub fast float %10166, %10158
  %10174 = fsub fast float %10167, %10159
  %10175 = fsub fast float %10168, %10160
  %10176 = fmul fast float %10173, %10146
  %10177 = fmul fast float %10174, %10146
  %10178 = fmul fast float %10175, %10146
  %10179 = fadd fast float %10176, %10158
  %10180 = fadd fast float %10177, %10159
  %10181 = fadd fast float %10178, %10160
  %10182 = fsub fast float %10170, %10162
  %10183 = fsub fast float %10171, %10163
  %10184 = fsub fast float %10172, %10164
  %10185 = fmul fast float %10182, %10146
  %10186 = fmul fast float %10183, %10146
  %10187 = fmul fast float %10184, %10146
  %10188 = fsub fast float %10162, %10179
  %10189 = fadd fast float %10188, %10185
  %10190 = fsub fast float %10163, %10180
  %10191 = fadd fast float %10190, %10186
  %10192 = fsub fast float %10164, %10181
  %10193 = fadd fast float %10192, %10187
  %10194 = fmul fast float %10189, %10134
  %10195 = fmul fast float %10191, %10134
  %10196 = fmul fast float %10193, %10134
  %10197 = fadd fast float %10194, %10179
  %10198 = fadd fast float %10195, %10180
  %10199 = fadd fast float %10196, %10181
  %10200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10201 = extractvalue %dx.types.CBufRet.f32 %10200, 1
  %10202 = fmul fast float %10197, %10201
  %10203 = fmul fast float %10198, %10201
  %10204 = fmul fast float %10199, %10201
  br label %10205

; <label>:10205                                   ; preds = %10036, %9993
  %10206 = phi float [ %10076, %10036 ], [ 1.000000e+00, %9993 ]
  %10207 = phi float [ %10077, %10036 ], [ 1.000000e+00, %9993 ]
  %10208 = phi float [ %10078, %10036 ], [ 1.000000e+00, %9993 ]
  %10209 = phi float [ %10202, %10036 ], [ 0.000000e+00, %9993 ]
  %10210 = phi float [ %10203, %10036 ], [ 0.000000e+00, %9993 ]
  %10211 = phi float [ %10204, %10036 ], [ 0.000000e+00, %9993 ]
  %10212 = fmul fast float %10209, %8547
  %10213 = fmul fast float %10210, %8547
  %10214 = fmul fast float %10211, %8547
  %10215 = fmul fast float %10206, %10000
  %10216 = call float @dx.op.dot3.f32(i32 55, float %10206, float %10207, float %10208, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10217 = call float @dx.op.dot3.f32(i32 55, float %10212, float %10213, float %10214, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10218 = select i1 %232, float %10216, float %10206
  %10219 = select i1 %232, float %10216, float %10207
  %10220 = select i1 %232, float 1.000000e+00, float %10208
  %10221 = select i1 %232, float %10217, float %10212
  %10222 = select i1 %232, float 0.000000e+00, float %10213
  %10223 = select i1 %232, float 0.000000e+00, float %10214
  %10224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10225 = extractvalue %dx.types.CBufRet.i32 %10224, 3
  %10226 = and i32 %10225, 3
  %10227 = icmp ne i32 %10226, 0
  %10228 = and i32 %10225, 4
  %10229 = icmp ne i32 %10228, 0
  %10230 = and i1 %10227, %10229
  %10231 = and i1 %232, %10230
  br i1 %10231, label %10232, label %10238

; <label>:10232                                   ; preds = %10205
  %10233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10234 = extractvalue %dx.types.CBufRet.f32 %10233, 1
  %10235 = fadd fast float %10215, -1.000000e+00
  %10236 = fmul fast float %10234, %10235
  %10237 = fadd fast float %10236, 1.000000e+00
  br label %10238

; <label>:10238                                   ; preds = %10232, %10205
  %10239 = phi float [ %10237, %10232 ], [ %10215, %10205 ]
  %10240 = fadd fast float %9997, %9994
  %10241 = fmul fast float %10218, %10240
  %10242 = fadd fast float %10241, %10221
  %10243 = fadd fast float %9998, %9995
  %10244 = fmul fast float %10219, %10243
  %10245 = fadd fast float %10244, %10222
  %10246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10247 = extractvalue %dx.types.CBufRet.f32 %10246, 0
  br i1 %232, label %10248, label %10271

; <label>:10248                                   ; preds = %10238
  %10249 = fadd fast float %10242, %10245
  %10250 = fmul fast float %10247, %10249
  %10251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10252 = extractvalue %dx.types.CBufRet.f32 %10251, 3
  %10253 = extractvalue %dx.types.CBufRet.f32 %8551, 1
  %10254 = fsub fast float %8556, %8550
  %10255 = fadd fast float %10254, %8557
  %10256 = fsub fast float %10255, %10253
  %10257 = extractvalue %dx.types.CBufRet.f32 %8551, 2
  %10258 = fmul fast float %10256, %10257
  %10259 = call float @dx.op.unary.f32(i32 7, float %10258)  ; Saturate(value)
  %10260 = fsub fast float %10259, %10252
  %10261 = fmul fast float %10260, %10239
  %10262 = fadd fast float %10261, %10252
  %10263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10264 = extractvalue %dx.types.CBufRet.f32 %10263, 0
  %10265 = fsub fast float %10262, %10264
  %10266 = fmul fast float %10265, 1.000000e+01
  %10267 = call float @dx.op.unary.f32(i32 7, float %10266)  ; Saturate(value)
  %10268 = fmul fast float %10267, %8546
  %10269 = fadd fast float %10268, %8547
  %10270 = fmul fast float %10269, %10262
  br label %10295

; <label>:10271                                   ; preds = %10238
  %10272 = fadd fast float %9999, %9996
  %10273 = fmul fast float %10220, %10272
  %10274 = fadd fast float %10273, %10223
  %10275 = fmul fast float %10247, %10242
  %10276 = fmul fast float %10247, %10245
  %10277 = fmul fast float %10247, %10274
  %10278 = call float @dx.op.binary.f32(i32 35, float %10276, float %10277)  ; FMax(a,b)
  %10279 = call float @dx.op.binary.f32(i32 35, float %10275, float %10278)  ; FMax(a,b)
  %10280 = call float @dx.op.binary.f32(i32 35, float %10279, float %8547)  ; FMax(a,b)
  %10281 = fcmp fast ugt float %10280, 0x3F10000000000000
  br i1 %10281, label %10283, label %10282

; <label>:10282                                   ; preds = %10271
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10283

; <label>:10283                                   ; preds = %10282, %10271
  %10284 = add i32 %62, 356
  %10285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10284, i32 undef)  ; BufferLoad(srv,index,wot)
  %10286 = extractvalue %dx.types.ResRet.i32 %10285, 0
  %10287 = and i32 %10286, 32
  %10288 = icmp eq i32 %10287, 0
  br i1 %10288, label %10295, label %10289

; <label>:10289                                   ; preds = %10283
  %10290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10291 = extractvalue %dx.types.CBufRet.f32 %10290, 0
  %10292 = fmul fast float %10291, 0x3FE99999A0000000
  %10293 = fadd fast float %10291, %10275
  %10294 = fadd fast float %10292, %10277
  br label %10295

; <label>:10295                                   ; preds = %10289, %10283, %10248
  %10296 = phi float [ %10250, %10248 ], [ %10293, %10289 ], [ %10275, %10283 ]
  %10297 = phi float [ %10270, %10248 ], [ %10276, %10289 ], [ %10276, %10283 ]
  %10298 = phi float [ %10269, %10248 ], [ %10294, %10289 ], [ %10277, %10283 ]
  %10299 = phi float [ %10269, %10248 ], [ %8547, %10289 ], [ %8547, %10283 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10300 = call float @dx.op.binary.f32(i32 36, float %10296, float 3.225500e+04)  ; FMin(a,b)
  %10301 = call float @dx.op.binary.f32(i32 36, float %10297, float 3.225500e+04)  ; FMin(a,b)
  %10302 = call float @dx.op.binary.f32(i32 36, float %10298, float 3.225500e+04)  ; FMin(a,b)
  %10303 = call float @dx.op.binary.f32(i32 36, float %10299, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10300)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10301)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10302)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10303)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

