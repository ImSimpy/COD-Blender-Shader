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
; shader hash: fb49da20ea07239bf31ad904f3862c68
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
  %426 = add i32 %62, 568
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
  br i1 %482, label %1257, label %483

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
  %702 = add i32 %62, 504
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
  %754 = add i32 %62, 488
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
  %778 = add i32 %62, 440
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
  %801 = add i32 %62, 520
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
  %999 = add i32 %62, 456
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
  %1083 = add i32 %62, 472
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
  %1141 = add i32 %62, 536
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
  %1179 = and i32 %1178, 26624
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1238, label %1181

; <label>:1181                                    ; preds = %1153
  %1182 = add i32 %62, 552
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1182, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %1184, 0
  %1186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1187 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1186, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.ResRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.ResRet.f32 %1187, 3
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 1048576
  %1194 = icmp ne i32 %1193, 0
  %1195 = and i32 %1192, 8192
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1211, label %1197

; <label>:1197                                    ; preds = %1181
  %1198 = extractvalue %dx.types.ResRet.f32 %1187, 2
  %1199 = select i1 %1194, float %1198, float %1189
  %1200 = select i1 %1194, float %1188, float %1189
  %1201 = add i32 %62, 96
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = lshr i32 %1203, 16
  %1205 = and i32 %1204, 255
  %1206 = uitofp i32 %1205 to float
  %1207 = fmul fast float %1206, 0x3F80101020000000
  %1208 = fmul fast float %1207, %1200
  %1209 = fmul fast float %1207, %1189
  %1210 = fmul fast float %1207, %1199
  br label %1211

; <label>:1211                                    ; preds = %1197, %1181
  %1212 = phi float [ %1208, %1197 ], [ 0.000000e+00, %1181 ]
  %1213 = phi float [ %1209, %1197 ], [ 0.000000e+00, %1181 ]
  %1214 = phi float [ %1210, %1197 ], [ 0.000000e+00, %1181 ]
  %1215 = and i32 %1192, 2048
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1225, label %1217

; <label>:1217                                    ; preds = %1211
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = shl i32 %1219, 4
  %1221 = and i32 %1220, 32752
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = fmul fast float %1222, %1190
  %1224 = call float @dx.op.binary.f32(i32 35, float %1223, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1225

; <label>:1225                                    ; preds = %1217, %1211
  %1226 = phi float [ %1224, %1217 ], [ 0x3F70101020000000, %1211 ]
  %1227 = and i32 %1192, 16384
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1238, label %1229

; <label>:1229                                    ; preds = %1225
  %1230 = add i32 %62, 96
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = lshr i32 %1232, 24
  %1234 = uitofp i32 %1233 to float
  %1235 = fmul fast float %1188, 0x3F70101020000000
  %1236 = select i1 %1194, float 0x3F70101020000000, float %1235
  %1237 = fmul fast float %1236, %1234
  br label %1238

; <label>:1238                                    ; preds = %1229, %1225, %1153
  %1239 = phi float [ %1212, %1229 ], [ %1212, %1225 ], [ 0.000000e+00, %1153 ]
  %1240 = phi float [ %1213, %1229 ], [ %1213, %1225 ], [ 0.000000e+00, %1153 ]
  %1241 = phi float [ %1214, %1229 ], [ %1214, %1225 ], [ 0.000000e+00, %1153 ]
  %1242 = phi float [ %1226, %1229 ], [ %1226, %1225 ], [ 0x3F70101020000000, %1153 ]
  %1243 = phi float [ %1237, %1229 ], [ 0.000000e+00, %1225 ], [ 0.000000e+00, %1153 ]
  %1244 = add i32 %62, 96
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = lshr i32 %1246, 8
  %1250 = and i32 %1249, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1253 = fmul fast float %1251, %1252
  %1254 = fadd fast float %1253, %1248
  %1255 = fmul fast float %1254, 0x3F70101020000000
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  br label %1257

; <label>:1257                                    ; preds = %1238, %468
  %1258 = phi float [ 0.000000e+00, %468 ], [ %1069, %1238 ]
  %1259 = phi float [ 0.000000e+00, %468 ], [ %1070, %1238 ]
  %1260 = phi float [ 0.000000e+00, %468 ], [ %988, %1238 ]
  %1261 = phi float [ 0.000000e+00, %468 ], [ %989, %1238 ]
  %1262 = phi float [ 0.000000e+00, %468 ], [ %990, %1238 ]
  %1263 = phi float [ 0.000000e+00, %468 ], [ %1116, %1238 ]
  %1264 = phi float [ 0.000000e+00, %468 ], [ %1117, %1238 ]
  %1265 = phi float [ 0.000000e+00, %468 ], [ %1118, %1238 ]
  %1266 = phi float [ 0.000000e+00, %468 ], [ %1239, %1238 ]
  %1267 = phi float [ 0.000000e+00, %468 ], [ %1240, %1238 ]
  %1268 = phi float [ 0.000000e+00, %468 ], [ %1241, %1238 ]
  %1269 = phi float [ 0.000000e+00, %468 ], [ %1174, %1238 ]
  %1270 = phi float [ 0.000000e+00, %468 ], [ %1175, %1238 ]
  %1271 = phi float [ 0.000000e+00, %468 ], [ %1176, %1238 ]
  %1272 = phi float [ 0.000000e+00, %468 ], [ %974, %1238 ]
  %1273 = phi float [ 0.000000e+00, %468 ], [ %770, %1238 ]
  %1274 = phi float [ 0.000000e+00, %468 ], [ %1068, %1238 ]
  %1275 = phi float [ 0.000000e+00, %468 ], [ %1071, %1238 ]
  %1276 = phi float [ 0.000000e+00, %468 ], [ %1242, %1238 ]
  %1277 = phi float [ 0.000000e+00, %468 ], [ %1243, %1238 ]
  %1278 = phi float [ 0.000000e+00, %468 ], [ %1256, %1238 ]
  br i1 %416, label %2340, label %1279

; <label>:1279                                    ; preds = %1257
  %1280 = icmp ult i32 %474, 2
  %1281 = add i32 %62, 40
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = add i32 %62, 44
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = or i32 %1286, %1283
  %1288 = icmp eq i32 %1287, 0
  br i1 %1288, label %2340, label %1289

; <label>:1289                                    ; preds = %1279
  %1290 = and i32 %1283, 262144
  %1291 = icmp ne i32 %1290, 0
  %1292 = select i1 %1291, float %65, float 1.000000e+00
  %1293 = select i1 %1291, float %66, float 0.000000e+00
  %1294 = select i1 %1291, float %67, float 0.000000e+00
  %1295 = select i1 %1291, float %68, float 1.000000e+00
  %1296 = select i1 %1291, float %69, float %90
  %1297 = select i1 %1291, float %70, float %91
  %1298 = add i32 %62, 300
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = lshr i32 %1300, 16
  %1302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1301)  ; LegacyF16ToF32(value)
  %1303 = fmul fast float %1302, 0x3F50624DE0000000
  %1304 = add i32 %62, 104
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = lshr i32 %1306, 16
  %1308 = and i32 %1307, 255
  %1309 = lshr i32 %1306, 24
  %1310 = add i32 %62, 308
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = and i32 %1312, 65535
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = lshr i32 %1312, 16
  %1316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1315)  ; LegacyF16ToF32(value)
  %1317 = add i32 %62, 48
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = lshr i32 %1319, 22
  %1321 = shl nuw nsw i32 %1320, 5
  %1322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1321)  ; LegacyF16ToF32(value)
  %1323 = shl i32 %1319, 4
  %1324 = and i32 %1323, 32752
  %1325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1324)  ; LegacyF16ToF32(value)
  %1326 = lshr i32 %1319, 7
  %1327 = and i32 %1326, 32752
  %1328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1327)  ; LegacyF16ToF32(value)
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 3
  %1331 = fmul fast float %1330, 1.000000e+03
  %1332 = fmul fast float %326, %1331
  %1333 = call float @dx.op.unary.f32(i32 22, float %1332)  ; Frc(value)
  %1334 = fadd fast float %1333, %316
  %1335 = fmul fast float %327, %1331
  %1336 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1337 = fadd fast float %1336, %318
  %1338 = fmul fast float %1303, %1331
  %1339 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1340 = fmul fast float %1339, 0x401921FB60000000
  %1341 = fadd fast float %1340, %1322
  %1342 = call float @dx.op.unary.f32(i32 13, float %1341)  ; Sin(value)
  %1343 = call float @dx.op.unary.f32(i32 12, float %1341)  ; Cos(value)
  %1344 = fsub fast float -0.000000e+00, %1342
  %1345 = fadd fast float %1296, -5.000000e-01
  %1346 = fadd fast float %1297, -5.000000e-01
  %1347 = fmul fast float %1314, %1345
  %1348 = fmul fast float %1316, %1346
  %1349 = fadd fast float %1347, 5.000000e-01
  %1350 = fadd fast float %1348, 5.000000e-01
  %1351 = fmul fast float %1325, %1349
  %1352 = fmul fast float %1328, %1350
  %1353 = fmul fast float %1343, %1351
  %1354 = call float @dx.op.tertiary.f32(i32 46, float %1344, float %1352, float %1353)  ; FMad(a,b,c)
  %1355 = fmul fast float %1342, %1351
  %1356 = call float @dx.op.tertiary.f32(i32 46, float %1343, float %1352, float %1355)  ; FMad(a,b,c)
  %1357 = fadd fast float %1334, %1354
  %1358 = fadd fast float %1337, %1356
  %1359 = icmp ugt i32 %1308, 1
  %1360 = icmp ugt i32 %1306, 33554431
  %1361 = or i1 %1360, %1359
  br i1 %1361, label %1362, label %1387

; <label>:1362                                    ; preds = %1289
  %1363 = add i32 %62, 244
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = lshr i32 %1365, 16
  %1367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1366)  ; LegacyF16ToF32(value)
  %1368 = fmul fast float %1330, %1367
  %1369 = call float @dx.op.unary.f32(i32 22, float %1368)  ; Frc(value)
  %1370 = mul nuw nsw i32 %1308, %1309
  %1371 = uitofp i32 %1370 to float
  %1372 = fmul fast float %1369, %1371
  %1373 = call float @dx.op.unary.f32(i32 27, float %1372)  ; Round_ni(value)
  %1374 = fptoui float %1373 to i32
  %1375 = urem i32 %1374, %1308
  %1376 = udiv i32 %1374, %1309
  %1377 = call float @dx.op.unary.f32(i32 22, float %1357)  ; Frc(value)
  %1378 = call float @dx.op.unary.f32(i32 22, float %1358)  ; Frc(value)
  %1379 = uitofp i32 %1375 to float
  %1380 = uitofp i32 %1376 to float
  %1381 = fadd fast float %1377, %1379
  %1382 = fadd fast float %1378, %1380
  %1383 = uitofp i32 %1308 to float
  %1384 = uitofp i32 %1309 to float
  %1385 = fdiv fast float %1381, %1383
  %1386 = fdiv fast float %1382, %1384
  br label %1387

; <label>:1387                                    ; preds = %1362, %1289
  %1388 = phi float [ %1385, %1362 ], [ %1357, %1289 ]
  %1389 = phi float [ %1386, %1362 ], [ %1358, %1289 ]
  %1390 = and i32 %1283, 16777216
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1501, label %1392

; <label>:1392                                    ; preds = %1387
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1397 = fadd fast float %1394, %170
  %1398 = fadd fast float %1395, %171
  %1399 = fadd fast float %1396, %172
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = icmp eq i32 %63, 65535
  br i1 %1403, label %1498, label %1404

; <label>:1404                                    ; preds = %1392
  %1405 = lshr i32 %63, 1
  %1406 = shl i32 %1405, 2
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = and i32 %63, 1
  %1410 = icmp ne i32 %1409, 0
  %1411 = lshr i32 %1408, 16
  %1412 = and i32 %1408, 65535
  %1413 = select i1 %1410, i32 %1411, i32 %1412
  %1414 = icmp eq i32 %1413, 65535
  br i1 %1414, label %1494, label %1415

; <label>:1415                                    ; preds = %1404
  %1416 = mul nuw nsw i32 %1413, 40
  %1417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.f32 %1417, 0
  %1419 = extractvalue %dx.types.ResRet.f32 %1417, 1
  %1420 = extractvalue %dx.types.ResRet.f32 %1417, 2
  %1421 = add nuw nsw i32 %1416, 12
  %1422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = extractvalue %dx.types.ResRet.f32 %1422, 1
  %1425 = extractvalue %dx.types.ResRet.f32 %1422, 2
  %1426 = add nuw nsw i32 %1416, 24
  %1427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.ResRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.ResRet.f32 %1427, 2
  %1431 = add nuw nsw i32 %1416, 36
  %1432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.f32 %1432, 0
  %1434 = fsub fast float %1397, %1418
  %1435 = fsub fast float %1398, %1419
  %1436 = fsub fast float %1399, %1420
  %1437 = fmul fast float %1433, %1434
  %1438 = fmul fast float %1433, %1435
  %1439 = fmul fast float %1433, %1436
  %1440 = call float @dx.op.unary.f32(i32 27, float %1437)  ; Round_ni(value)
  %1441 = call float @dx.op.unary.f32(i32 27, float %1438)  ; Round_ni(value)
  %1442 = call float @dx.op.unary.f32(i32 27, float %1439)  ; Round_ni(value)
  %1443 = fadd fast float %1440, 5.000000e-01
  %1444 = fadd fast float %1441, 5.000000e-01
  %1445 = fadd fast float %1442, 5.000000e-01
  %1446 = fmul fast float %1443, %1423
  %1447 = fmul fast float %1444, %1424
  %1448 = fmul fast float %1445, %1425
  %1449 = shl i32 %63, 2
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = add i32 %1451, 0
  %1453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1454 = call float @dx.op.unary.f32(i32 22, float %1446)  ; Frc(value)
  %1455 = call float @dx.op.unary.f32(i32 22, float %1447)  ; Frc(value)
  %1456 = call float @dx.op.unary.f32(i32 22, float %1448)  ; Frc(value)
  %1457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1453, %dx.types.Handle %55, float %1454, float %1455, float %1456, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1458 = extractvalue %dx.types.ResRet.f32 %1457, 0
  %1459 = extractvalue %dx.types.ResRet.f32 %1457, 1
  %1460 = extractvalue %dx.types.ResRet.f32 %1457, 2
  %1461 = fmul fast float %1458, 1.023000e+03
  %1462 = fmul fast float %1459, 1.023000e+03
  %1463 = fmul fast float %1460, 1.023000e+03
  %1464 = fadd fast float %1461, 5.000000e-01
  %1465 = fadd fast float %1462, 5.000000e-01
  %1466 = fadd fast float %1463, 5.000000e-01
  %1467 = call float @dx.op.unary.f32(i32 27, float %1464)  ; Round_ni(value)
  %1468 = call float @dx.op.unary.f32(i32 27, float %1465)  ; Round_ni(value)
  %1469 = call float @dx.op.unary.f32(i32 27, float %1466)  ; Round_ni(value)
  %1470 = fsub fast float %1437, %1440
  %1471 = fsub fast float %1438, %1441
  %1472 = fsub fast float %1439, %1442
  %1473 = fmul fast float %1470, 7.500000e-01
  %1474 = fmul fast float %1471, 7.500000e-01
  %1475 = fmul fast float %1472, 7.500000e-01
  %1476 = fadd fast float %1440, 1.250000e-01
  %1477 = fadd fast float %1476, %1473
  %1478 = fadd fast float %1477, %1467
  %1479 = fadd fast float %1441, 1.250000e-01
  %1480 = fadd fast float %1479, %1474
  %1481 = fadd fast float %1480, %1468
  %1482 = fadd fast float %1442, 1.250000e-01
  %1483 = fadd fast float %1482, %1475
  %1484 = fadd fast float %1483, %1469
  %1485 = fmul fast float %1478, %1428
  %1486 = fmul fast float %1481, %1429
  %1487 = fmul fast float %1484, %1430
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = add i32 %1489, 0
  %1491 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1490, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1491, %dx.types.Handle %53, float %1485, float %1486, float %1487, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  br label %1494

; <label>:1494                                    ; preds = %1415, %1404
  %1495 = phi float [ %1493, %1415 ], [ -1.000000e+00, %1404 ]
  %1496 = fadd fast float %1495, %1402
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  br label %1498

; <label>:1498                                    ; preds = %1494, %1392
  %1499 = phi float [ %1497, %1494 ], [ %1402, %1392 ]
  %1500 = fmul fast float %1499, %471
  br label %1501

; <label>:1501                                    ; preds = %1498, %1387
  %1502 = phi float [ %1500, %1498 ], [ %471, %1387 ]
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 256
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1553, label %1507

; <label>:1507                                    ; preds = %1501
  %1508 = add i32 %62, 508
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = add i32 %1510, 0
  %1512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1512, %dx.types.Handle %108, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = add i32 %62, 116
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = shl i32 %1517, 4
  %1519 = and i32 %1518, 32752
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = lshr i32 %1517, 7
  %1522 = and i32 %1521, 32752
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = fsub fast float 1.000000e+00, %1502
  %1525 = call float @dx.op.binary.f32(i32 35, float %1524, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1526 = bitcast float %1502 to i32
  %1527 = sitofp i32 %1526 to float
  %1528 = fadd fast float %1527, 0xC1CFBF8940000000
  %1529 = fmul fast float %1523, %1528
  %1530 = fadd fast float %1529, 0x41CFBF8940000000
  %1531 = fptosi float %1530 to i32
  %1532 = bitcast i32 %1531 to float
  %1533 = bitcast float %1525 to i32
  %1534 = sitofp i32 %1533 to float
  %1535 = fadd fast float %1534, 0xC1CFBF8940000000
  %1536 = fmul fast float %1535, %1523
  %1537 = fadd fast float %1536, 0x41CFBF8940000000
  %1538 = fptosi float %1537 to i32
  %1539 = bitcast i32 %1538 to float
  %1540 = fmul fast float %1532, %1520
  %1541 = fmul fast float %1539, %1520
  %1542 = fsub fast float %1525, %1540
  %1543 = fadd fast float %1541, %1525
  %1544 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1545 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1546 = fsub fast float %1514, %1544
  %1547 = fsub fast float %1545, %1544
  %1548 = bitcast float %1547 to i32
  %1549 = sub nsw i32 2129859010, %1548
  %1550 = bitcast i32 %1549 to float
  %1551 = fmul fast float %1550, %1546
  %1552 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  br label %1553

; <label>:1553                                    ; preds = %1507, %1501
  %1554 = phi float [ %1552, %1507 ], [ %1502, %1501 ]
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 128
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1575, label %1559

; <label>:1559                                    ; preds = %1553
  %1560 = add i32 %62, 492
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %1562, 0
  %1564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1564, %dx.types.Handle %108, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1566 = extractvalue %dx.types.ResRet.f32 %1565, 0
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 524288
  %1570 = icmp ne i32 %1569, 0
  %1571 = fcmp fast ogt float %1566, 0x3FE0101020000000
  %1572 = select i1 %1571, float 1.000000e+00, float 0.000000e+00
  %1573 = select i1 %1570, float %1572, float %1566
  %1574 = fmul fast float %1573, %1554
  br label %1575

; <label>:1575                                    ; preds = %1559, %1553
  %1576 = phi float [ %1574, %1559 ], [ %1554, %1553 ]
  %1577 = fcmp fast ult float %1576, 0x3F70101020000000
  br i1 %1577, label %2340, label %1578

; <label>:1578                                    ; preds = %1575
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = and i32 %1580, 16
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1781, label %1583

; <label>:1583                                    ; preds = %1578
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = add i32 %62, 444
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = add i32 %1588, 0
  %1590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1590, %dx.types.Handle %107, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.ResRet.f32 %1591, 1
  %1594 = extractvalue %dx.types.ResRet.f32 %1591, 2
  %1595 = extractvalue %dx.types.ResRet.f32 %1591, 3
  %1596 = and i32 %1585, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = lshr i32 %1585, 8
  %1599 = and i32 %1598, 255
  %1600 = uitofp i32 %1599 to float
  %1601 = fmul fast float %1595, %1597
  %1602 = fadd fast float %1601, %1600
  %1603 = fmul fast float %1602, 0x3F70101000000000
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = and i32 %1605, 512
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1616, label %1608

; <label>:1608                                    ; preds = %1583
  %1609 = add i32 %62, 524
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = add i32 %1611, 0
  %1613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1613, %dx.types.Handle %108, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  br label %1616

; <label>:1616                                    ; preds = %1608, %1583
  %1617 = phi float [ %1615, %1608 ], [ 1.000000e+00, %1583 ]
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 33554432
  %1621 = icmp eq i32 %1620, 0
  br i1 %1621, label %1728, label %1622

; <label>:1622                                    ; preds = %1616
  %1623 = add i32 %62, 240
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = and i32 %1625, 65535
  %1627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1626)  ; LegacyF16ToF32(value)
  %1628 = lshr i32 %1625, 16
  %1629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1628)  ; LegacyF16ToF32(value)
  %1630 = add i32 %62, 244
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = and i32 %1632, 65535
  %1634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1633)  ; LegacyF16ToF32(value)
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = lshr i32 %1636, 24
  %1638 = uitofp i32 %1637 to float
  %1639 = fmul fast float %1638, 0x3F70101020000000
  %1640 = and i32 %1636, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F70101020000000
  %1643 = lshr i32 %1636, 8
  %1644 = and i32 %1643, 255
  %1645 = uitofp i32 %1644 to float
  %1646 = fmul fast float %1645, 0x3F70101020000000
  %1647 = lshr i32 %1636, 16
  %1648 = and i32 %1647, 255
  %1649 = uitofp i32 %1648 to float
  %1650 = fmul fast float %1649, 0x3F70101020000000
  %1651 = add i32 %62, 236
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1651, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = lshr i32 %1653, 24
  %1655 = uitofp i32 %1654 to float
  %1656 = fmul fast float %1655, 0x3F70101020000000
  %1657 = and i32 %1653, 255
  %1658 = uitofp i32 %1657 to float
  %1659 = fmul fast float %1658, 0x3F70101020000000
  %1660 = lshr i32 %1653, 8
  %1661 = and i32 %1660, 255
  %1662 = uitofp i32 %1661 to float
  %1663 = fmul fast float %1662, 0x3F70101020000000
  %1664 = lshr i32 %1653, 16
  %1665 = and i32 %1664, 255
  %1666 = uitofp i32 %1665 to float
  %1667 = fmul fast float %1666, 0x3F70101020000000
  %1668 = bitcast float %1592 to i32
  %1669 = ashr i32 %1668, 1
  %1670 = sub nsw i32 1597463174, %1669
  %1671 = bitcast i32 %1670 to float
  %1672 = fmul fast float %1592, 5.000000e-01
  %1673 = fmul fast float %1671, %1671
  %1674 = fmul fast float %1673, %1672
  %1675 = fsub fast float 1.500000e+00, %1674
  %1676 = fmul fast float %1671, %1592
  %1677 = fmul fast float %1676, %1675
  %1678 = bitcast float %1593 to i32
  %1679 = ashr i32 %1678, 1
  %1680 = sub nsw i32 1597463174, %1679
  %1681 = bitcast i32 %1680 to float
  %1682 = fmul fast float %1593, 5.000000e-01
  %1683 = fmul fast float %1681, %1681
  %1684 = fmul fast float %1683, %1682
  %1685 = fsub fast float 1.500000e+00, %1684
  %1686 = fmul fast float %1681, %1593
  %1687 = fmul fast float %1686, %1685
  %1688 = bitcast float %1594 to i32
  %1689 = ashr i32 %1688, 1
  %1690 = sub nsw i32 1597463174, %1689
  %1691 = bitcast i32 %1690 to float
  %1692 = fmul fast float %1594, 5.000000e-01
  %1693 = fmul fast float %1691, %1691
  %1694 = fmul fast float %1693, %1692
  %1695 = fsub fast float 1.500000e+00, %1694
  %1696 = fmul fast float %1691, %1594
  %1697 = fmul fast float %1696, %1695
  %1698 = fsub fast float %1677, %1659
  %1699 = fsub fast float %1687, %1663
  %1700 = fsub fast float %1697, %1667
  %1701 = fmul fast float %1698, %1627
  %1702 = fmul fast float %1699, %1629
  %1703 = fmul fast float %1700, %1634
  %1704 = fadd fast float %1701, %1642
  %1705 = fadd fast float %1702, %1646
  %1706 = fadd fast float %1703, %1650
  %1707 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1708 = call float @dx.op.unary.f32(i32 7, float %1705)  ; Saturate(value)
  %1709 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1710 = fmul fast float %1707, %1707
  %1711 = fmul fast float %1708, %1708
  %1712 = fmul fast float %1709, %1709
  %1713 = fsub fast float %1710, %1592
  %1714 = fsub fast float %1711, %1593
  %1715 = fsub fast float %1712, %1594
  %1716 = fmul fast float %1713, %1617
  %1717 = fmul fast float %1714, %1617
  %1718 = fmul fast float %1715, %1617
  %1719 = fadd fast float %1716, %1592
  %1720 = fadd fast float %1717, %1593
  %1721 = fadd fast float %1718, %1594
  %1722 = fadd fast float %1639, %1603
  %1723 = fsub fast float %1722, %1656
  %1724 = call float @dx.op.unary.f32(i32 7, float %1723)  ; Saturate(value)
  %1725 = fsub fast float %1724, %1603
  %1726 = fmul fast float %1725, %1617
  %1727 = fadd fast float %1726, %1603
  br label %1781

; <label>:1728                                    ; preds = %1616
  %1729 = and i32 %1619, 134217728
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1765, label %1731

; <label>:1731                                    ; preds = %1728
  %1732 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1733 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1734 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %1735 = fadd fast float %1732, -5.000000e-01
  %1736 = fadd fast float %1733, -5.000000e-01
  %1737 = fadd fast float %1734, -5.000000e-01
  %1738 = fmul fast float %1735, %1617
  %1739 = fmul fast float %1736, %1617
  %1740 = fmul fast float %1737, %1617
  %1741 = fadd fast float %1738, 5.000000e-01
  %1742 = fadd fast float %1739, 5.000000e-01
  %1743 = fadd fast float %1740, 5.000000e-01
  %1744 = call float @dx.op.unary.f32(i32 24, float %1592)  ; Sqrt(value)
  %1745 = call float @dx.op.unary.f32(i32 24, float %1593)  ; Sqrt(value)
  %1746 = call float @dx.op.unary.f32(i32 24, float %1594)  ; Sqrt(value)
  %1747 = fmul fast float %1741, 2.000000e+00
  %1748 = fsub fast float 1.000000e+00, %1747
  %1749 = fmul fast float %1748, %1744
  %1750 = fadd fast float %1749, %1747
  %1751 = fmul fast float %1750, %1744
  %1752 = fmul fast float %1742, 2.000000e+00
  %1753 = fsub fast float 1.000000e+00, %1752
  %1754 = fmul fast float %1753, %1745
  %1755 = fadd fast float %1754, %1752
  %1756 = fmul fast float %1755, %1745
  %1757 = fmul fast float %1743, 2.000000e+00
  %1758 = fsub fast float 1.000000e+00, %1757
  %1759 = fmul fast float %1758, %1746
  %1760 = fadd fast float %1759, %1757
  %1761 = fmul fast float %1760, %1746
  %1762 = fmul fast float %1751, %1751
  %1763 = fmul fast float %1756, %1756
  %1764 = fmul fast float %1761, %1761
  br label %1781

; <label>:1765                                    ; preds = %1728
  %1766 = fmul fast float %303, %303
  %1767 = fmul fast float %307, %307
  %1768 = fmul fast float %311, %311
  %1769 = fadd fast float %1766, -1.000000e+00
  %1770 = fadd fast float %1767, -1.000000e+00
  %1771 = fadd fast float %1768, -1.000000e+00
  %1772 = fmul fast float %1617, %1769
  %1773 = fmul fast float %1617, %1770
  %1774 = fmul fast float %1617, %1771
  %1775 = fadd fast float %1772, 1.000000e+00
  %1776 = fadd fast float %1773, 1.000000e+00
  %1777 = fadd fast float %1774, 1.000000e+00
  %1778 = fmul fast float %1775, %1592
  %1779 = fmul fast float %1776, %1593
  %1780 = fmul fast float %1777, %1594
  br label %1781

; <label>:1781                                    ; preds = %1765, %1731, %1622, %1578
  %1782 = phi float [ %1727, %1622 ], [ %1603, %1731 ], [ %1603, %1765 ], [ 0x3FA23C0BE0000000, %1578 ]
  %1783 = phi float [ %1719, %1622 ], [ %1762, %1731 ], [ %1778, %1765 ], [ 1.000000e+00, %1578 ]
  %1784 = phi float [ %1720, %1622 ], [ %1763, %1731 ], [ %1779, %1765 ], [ 1.000000e+00, %1578 ]
  %1785 = phi float [ %1721, %1622 ], [ %1764, %1731 ], [ %1780, %1765 ], [ 1.000000e+00, %1578 ]
  %1786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.i32 %1786, 1
  %1788 = and i32 %1787, 1
  %1789 = icmp ne i32 %1788, 0
  %1790 = add i32 %62, 356
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 32
  %1794 = icmp ne i32 %1793, 0
  %1795 = and i1 %1789, %1794
  %1796 = select i1 %1795, float 1.000000e+00, float %1783
  %1797 = select i1 %1795, float 0x3FD3333340000000, float %1784
  %1798 = select i1 %1795, float 0x3FD3333340000000, float %1785
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = and i32 %1800, 32
  %1802 = icmp eq i32 %1801, 0
  br i1 %1802, label %1875, label %1803

; <label>:1803                                    ; preds = %1781
  %1804 = add i32 %62, 108
  %1805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1804, i32 undef)  ; BufferLoad(srv,index,wot)
  %1806 = extractvalue %dx.types.ResRet.i32 %1805, 0
  %1807 = add i32 %62, 460
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = add i32 %1809, 0
  %1811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1811, %dx.types.Handle %107, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = extractvalue %dx.types.ResRet.f32 %1812, 1
  %1815 = extractvalue %dx.types.ResRet.f32 %1812, 2
  %1816 = extractvalue %dx.types.ResRet.f32 %1812, 3
  %1817 = and i32 %1806, 255
  %1818 = uitofp i32 %1817 to float
  %1819 = lshr i32 %1806, 8
  %1820 = and i32 %1819, 255
  %1821 = uitofp i32 %1820 to float
  %1822 = lshr i32 %1806, 16
  %1823 = and i32 %1822, 255
  %1824 = uitofp i32 %1823 to float
  %1825 = fmul fast float %1824, 0x3F70101000000000
  %1826 = fmul fast float %1813, %1818
  %1827 = fadd fast float %1826, %1821
  %1828 = fmul fast float %1827, 0x3F70101000000000
  %1829 = fadd fast float %1814, -5.000000e-01
  %1830 = fadd fast float %1816, -5.000000e-01
  %1831 = fmul fast float %1829, %1825
  %1832 = fmul fast float %1830, %1825
  %1833 = fadd fast float %1831, 5.000000e-01
  %1834 = fadd fast float %1832, 5.000000e-01
  %1835 = fmul fast float %1833, 2.000000e+00
  %1836 = fadd fast float %1835, -1.000000e+00
  %1837 = fmul fast float %1834, 2.000000e+00
  %1838 = fadd fast float %1837, -1.000000e+00
  %1839 = fadd fast float %1836, %1838
  %1840 = fmul fast float %1839, 5.000000e-01
  %1841 = fsub fast float %1836, %1838
  %1842 = fmul fast float %1841, 5.000000e-01
  %1843 = call float @dx.op.unary.f32(i32 6, float %1840)  ; FAbs(value)
  %1844 = fsub fast float 1.000000e+00, %1843
  %1845 = call float @dx.op.unary.f32(i32 6, float %1842)  ; FAbs(value)
  %1846 = fsub fast float %1844, %1845
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1840, float %1842, float %1846, float %1840, float %1842, float %1846)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = call float @dx.op.unary.f32(i32 25, float %1847)  ; Rsqrt(value)
  %1849 = fmul fast float %1840, %1848
  %1850 = fmul fast float %1842, %1848
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %1852, 67108864
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1871, label %1855

; <label>:1855                                    ; preds = %1803
  %1856 = add i32 %62, 296
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, 65535
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = and i32 %1862, 65535
  %1864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1863)  ; LegacyF16ToF32(value)
  %1865 = lshr i32 %1858, 16
  %1866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1865)  ; LegacyF16ToF32(value)
  %1867 = fsub fast float %1828, %1866
  %1868 = fmul fast float %1867, %1860
  %1869 = fadd fast float %1868, %1864
  %1870 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  br label %1871

; <label>:1871                                    ; preds = %1855, %1803
  %1872 = phi float [ %1870, %1855 ], [ %1828, %1803 ]
  %1873 = call float @dx.op.dot2.f32(i32 54, float %1849, float %1850, float %1292, float %1293)  ; Dot2(ax,ay,bx,by)
  %1874 = call float @dx.op.dot2.f32(i32 54, float %1849, float %1850, float %1294, float %1295)  ; Dot2(ax,ay,bx,by)
  br label %1875

; <label>:1875                                    ; preds = %1871, %1781
  %1876 = phi float [ %1872, %1871 ], [ 0x3FD6666660000000, %1781 ]
  %1877 = phi float [ %1873, %1871 ], [ 0.000000e+00, %1781 ]
  %1878 = phi float [ %1874, %1871 ], [ 0.000000e+00, %1781 ]
  %1879 = phi float [ %1815, %1871 ], [ 1.000000e+00, %1781 ]
  %1880 = add i32 %62, 176
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = lshr i32 %1882, 22
  %1884 = shl nuw nsw i32 %1883, 5
  %1885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1884)  ; LegacyF16ToF32(value)
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = and i32 %1887, 64
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %1923, label %1890

; <label>:1890                                    ; preds = %1875
  %1891 = add i32 %62, 476
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = add i32 %1893, 0
  %1895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = and i32 %1897, 131072
  %1899 = icmp eq i32 %1898, 0
  %1900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1895, %dx.types.Handle %107, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = fmul fast float %1901, %291
  %1905 = fmul fast float %1902, %294
  %1906 = fmul fast float %1903, %297
  br i1 %1899, label %1913, label %1907

; <label>:1907                                    ; preds = %1890
  %1908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1909 = extractvalue %dx.types.CBufRet.f32 %1908, 0
  %1910 = fmul fast float %1909, %1904
  %1911 = fmul fast float %1909, %1905
  %1912 = fmul fast float %1909, %1906
  br label %1913

; <label>:1913                                    ; preds = %1907, %1890
  %1914 = phi float [ %1910, %1907 ], [ %1904, %1890 ]
  %1915 = phi float [ %1911, %1907 ], [ %1905, %1890 ]
  %1916 = phi float [ %1912, %1907 ], [ %1906, %1890 ]
  %1917 = fmul fast float %1914, %1885
  %1918 = select i1 %232, float %1917, float %1914
  %1919 = call float @dx.op.dot3.f32(i32 55, float %1918, float %1915, float %1916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1920 = select i1 %232, float 0.000000e+00, float %1914
  %1921 = select i1 %232, float %1919, float %1915
  %1922 = select i1 %232, float 0.000000e+00, float %1916
  br label %1923

; <label>:1923                                    ; preds = %1913, %1875
  %1924 = phi float [ %1920, %1913 ], [ 0.000000e+00, %1875 ]
  %1925 = phi float [ %1921, %1913 ], [ 0.000000e+00, %1875 ]
  %1926 = phi float [ %1922, %1913 ], [ 0.000000e+00, %1875 ]
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = and i32 %1928, 1024
  %1930 = icmp eq i32 %1929, 0
  br i1 %1930, label %1961, label %1931

; <label>:1931                                    ; preds = %1923
  %1932 = add i32 %62, 168
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = and i32 %1934, 255
  %1936 = uitofp i32 %1935 to float
  %1937 = fmul fast float %1936, 0x3F70101020000000
  %1938 = lshr i32 %1934, 8
  %1939 = and i32 %1938, 255
  %1940 = uitofp i32 %1939 to float
  %1941 = fmul fast float %1940, 0x3F70101020000000
  %1942 = lshr i32 %1934, 16
  %1943 = and i32 %1942, 255
  %1944 = uitofp i32 %1943 to float
  %1945 = fmul fast float %1944, 0x3F70101020000000
  %1946 = fmul fast float %1937, %1937
  %1947 = fmul fast float %1941, %1941
  %1948 = fmul fast float %1945, %1945
  %1949 = add i32 %62, 540
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1949, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = add i32 %1951, 0
  %1953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1952, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1954 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1953, %dx.types.Handle %108, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1955 = extractvalue %dx.types.ResRet.f32 %1954, 0
  %1956 = extractvalue %dx.types.ResRet.f32 %1954, 1
  %1957 = extractvalue %dx.types.ResRet.f32 %1954, 2
  %1958 = fmul fast float %1946, %1955
  %1959 = fmul fast float %1947, %1956
  %1960 = fmul fast float %1948, %1957
  br label %1961

; <label>:1961                                    ; preds = %1931, %1923
  %1962 = phi float [ %1958, %1931 ], [ 0.000000e+00, %1923 ]
  %1963 = phi float [ %1959, %1931 ], [ 0.000000e+00, %1923 ]
  %1964 = phi float [ %1960, %1931 ], [ 0.000000e+00, %1923 ]
  %1965 = fcmp fast ogt float %1962, 0.000000e+00
  %1966 = fcmp fast ogt float %1963, 0.000000e+00
  %1967 = fcmp fast ogt float %1964, 0.000000e+00
  %1968 = call float @dx.op.unary.f32(i32 23, float %1962)  ; Log(value)
  %1969 = call float @dx.op.unary.f32(i32 23, float %1963)  ; Log(value)
  %1970 = call float @dx.op.unary.f32(i32 23, float %1964)  ; Log(value)
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = lshr i32 %1972, 7
  %1974 = and i32 %1973, 32752
  %1975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1974)  ; LegacyF16ToF32(value)
  %1976 = fmul fast float %1968, 0xBFE62E4300000000
  %1977 = fmul fast float %1976, %1975
  %1978 = fmul fast float %1969, 0xBFE62E4300000000
  %1979 = fmul fast float %1978, %1975
  %1980 = fmul fast float %1970, 0xBFE62E4300000000
  %1981 = fmul fast float %1980, %1975
  %1982 = select i1 %1965, float %1977, float 1.270000e+02
  %1983 = select i1 %1966, float %1979, float 1.270000e+02
  %1984 = select i1 %1967, float %1981, float 1.270000e+02
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = and i32 %1986, 26624
  %1988 = icmp eq i32 %1987, 0
  br i1 %1988, label %2046, label %1989

; <label>:1989                                    ; preds = %1961
  %1990 = add i32 %62, 556
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = add i32 %1992, 0
  %1994 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1993, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1995 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1994, %dx.types.Handle %108, float %1388, float %1389, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1996 = extractvalue %dx.types.ResRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.ResRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.ResRet.f32 %1995, 3
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = and i32 %2000, 1048576
  %2002 = icmp ne i32 %2001, 0
  %2003 = and i32 %2000, 8192
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2019, label %2005

; <label>:2005                                    ; preds = %1989
  %2006 = extractvalue %dx.types.ResRet.f32 %1995, 2
  %2007 = select i1 %2002, float %2006, float %1997
  %2008 = select i1 %2002, float %1996, float %1997
  %2009 = add i32 %62, 112
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = lshr i32 %2011, 16
  %2013 = and i32 %2012, 255
  %2014 = uitofp i32 %2013 to float
  %2015 = fmul fast float %2014, 0x3F80101020000000
  %2016 = fmul fast float %2015, %2008
  %2017 = fmul fast float %2015, %1997
  %2018 = fmul fast float %2015, %2007
  br label %2019

; <label>:2019                                    ; preds = %2005, %1989
  %2020 = phi float [ %2016, %2005 ], [ 0.000000e+00, %1989 ]
  %2021 = phi float [ %2017, %2005 ], [ 0.000000e+00, %1989 ]
  %2022 = phi float [ %2018, %2005 ], [ 0.000000e+00, %1989 ]
  %2023 = and i32 %2000, 2048
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2033, label %2025

; <label>:2025                                    ; preds = %2019
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = shl i32 %2027, 4
  %2029 = and i32 %2028, 32752
  %2030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2029)  ; LegacyF16ToF32(value)
  %2031 = fmul fast float %2030, %1998
  %2032 = call float @dx.op.binary.f32(i32 35, float %2031, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2033

; <label>:2033                                    ; preds = %2025, %2019
  %2034 = phi float [ %2032, %2025 ], [ 0x3F70101020000000, %2019 ]
  %2035 = and i32 %2000, 16384
  %2036 = icmp eq i32 %2035, 0
  br i1 %2036, label %2046, label %2037

; <label>:2037                                    ; preds = %2033
  %2038 = add i32 %62, 112
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = lshr i32 %2040, 24
  %2042 = uitofp i32 %2041 to float
  %2043 = fmul fast float %1996, 0x3F70101020000000
  %2044 = select i1 %2002, float 0x3F70101020000000, float %2043
  %2045 = fmul fast float %2044, %2042
  br label %2046

; <label>:2046                                    ; preds = %2037, %2033, %1961
  %2047 = phi float [ %2020, %2037 ], [ %2020, %2033 ], [ 0.000000e+00, %1961 ]
  %2048 = phi float [ %2021, %2037 ], [ %2021, %2033 ], [ 0.000000e+00, %1961 ]
  %2049 = phi float [ %2022, %2037 ], [ %2022, %2033 ], [ 0.000000e+00, %1961 ]
  %2050 = phi float [ %2034, %2037 ], [ %2034, %2033 ], [ 0x3F70101020000000, %1961 ]
  %2051 = phi float [ %2045, %2037 ], [ 0.000000e+00, %2033 ], [ 0.000000e+00, %1961 ]
  %2052 = add i32 %62, 112
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = lshr i32 %2054, 8
  %2058 = and i32 %2057, 255
  %2059 = uitofp i32 %2058 to float
  %2060 = call float @dx.op.dot3.f32(i32 55, float %1796, float %1797, float %1798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2061 = fmul fast float %2059, %2060
  %2062 = fadd fast float %2061, %2056
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  br i1 %1280, label %2065, label %2100

; <label>:2065                                    ; preds = %2046
  %2066 = fmul fast float %2050, 2.000000e+00
  %2067 = fcmp fast olt float %1982, 1.270000e+02
  %2068 = fcmp fast olt float %1983, 1.270000e+02
  %2069 = fcmp fast olt float %1984, 1.270000e+02
  %2070 = fmul fast float %1982, 0xBFF7154760000000
  %2071 = fmul fast float %2070, %2066
  %2072 = fmul fast float %1983, 0xBFF7154760000000
  %2073 = fmul fast float %2072, %2066
  %2074 = fmul fast float %1984, 0xBFF7154760000000
  %2075 = fmul fast float %2074, %2066
  %2076 = call float @dx.op.unary.f32(i32 21, float %2071)  ; Exp(value)
  %2077 = call float @dx.op.unary.f32(i32 21, float %2073)  ; Exp(value)
  %2078 = call float @dx.op.unary.f32(i32 21, float %2075)  ; Exp(value)
  %2079 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2080 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  %2081 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  %2082 = fadd fast float %2079, -1.000000e+00
  %2083 = select i1 %2067, float %2082, float -1.000000e+00
  %2084 = fadd fast float %2080, -1.000000e+00
  %2085 = select i1 %2068, float %2084, float -1.000000e+00
  %2086 = fadd fast float %2081, -1.000000e+00
  %2087 = select i1 %2069, float %2086, float -1.000000e+00
  %2088 = fmul fast float %2083, %1576
  %2089 = fmul fast float %2085, %1576
  %2090 = fmul fast float %2087, %1576
  %2091 = fadd fast float %2088, 1.000000e+00
  %2092 = fadd fast float %2089, 1.000000e+00
  %2093 = fadd fast float %2090, 1.000000e+00
  %2094 = fmul fast float %2091, %1260
  %2095 = fmul fast float %2092, %1261
  %2096 = fmul fast float %2093, %1262
  %2097 = fmul fast float %2091, %1263
  %2098 = fmul fast float %2092, %1264
  %2099 = fmul fast float %2093, %1265
  br label %2100

; <label>:2100                                    ; preds = %2065, %2046
  %2101 = phi float [ %2094, %2065 ], [ %1260, %2046 ]
  %2102 = phi float [ %2095, %2065 ], [ %1261, %2046 ]
  %2103 = phi float [ %2096, %2065 ], [ %1262, %2046 ]
  %2104 = phi float [ %2097, %2065 ], [ %1263, %2046 ]
  %2105 = phi float [ %2098, %2065 ], [ %1264, %2046 ]
  %2106 = phi float [ %2099, %2065 ], [ %1265, %2046 ]
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = and i32 %2108, 3
  %2110 = icmp eq i32 %2109, 3
  br i1 %2110, label %2189, label %2111

; <label>:2111                                    ; preds = %2100
  %2112 = and i32 %2108, 16
  %2113 = icmp ne i32 %2112, 0
  %2114 = select i1 %2113, float %1576, float 0.000000e+00
  %2115 = icmp eq i32 %2109, 0
  br i1 %2115, label %2116, label %2144

; <label>:2116                                    ; preds = %2111
  %2117 = and i32 %2108, 64
  %2118 = icmp ne i32 %2117, 0
  %2119 = select i1 %2118, float %1576, float 0.000000e+00
  %2120 = fsub fast float %1796, %2101
  %2121 = fsub fast float %1797, %2102
  %2122 = fsub fast float %1798, %2103
  %2123 = fmul fast float %2114, %2120
  %2124 = fmul fast float %2114, %2121
  %2125 = fmul fast float %2114, %2122
  %2126 = fadd fast float %2123, %2101
  %2127 = fadd fast float %2124, %2102
  %2128 = fadd fast float %2125, %2103
  %2129 = fsub fast float %1782, %1272
  %2130 = fmul fast float %2114, %2129
  %2131 = fadd fast float %2130, %1272
  %2132 = fsub fast float %1924, %2104
  %2133 = fsub fast float %1925, %2105
  %2134 = fsub fast float %1926, %2106
  %2135 = fmul fast float %2119, %2132
  %2136 = fmul fast float %2119, %2133
  %2137 = fmul fast float %2119, %2134
  %2138 = fadd fast float %2135, %2104
  %2139 = fadd fast float %2136, %2105
  %2140 = fadd fast float %2137, %2106
  %2141 = fsub fast float %2064, %1278
  %2142 = fmul fast float %2114, %2141
  %2143 = fadd fast float %2142, %1278
  br label %2189

; <label>:2144                                    ; preds = %2111
  %2145 = icmp eq i32 %2109, 1
  br i1 %2145, label %2146, label %2159

; <label>:2146                                    ; preds = %2144
  %2147 = fadd fast float %1796, -1.000000e+00
  %2148 = fadd fast float %1797, -1.000000e+00
  %2149 = fadd fast float %1798, -1.000000e+00
  %2150 = fmul fast float %2114, %2147
  %2151 = fmul fast float %2114, %2148
  %2152 = fmul fast float %2114, %2149
  %2153 = fadd fast float %2150, 1.000000e+00
  %2154 = fadd fast float %2151, 1.000000e+00
  %2155 = fadd fast float %2152, 1.000000e+00
  %2156 = fmul fast float %2153, %2101
  %2157 = fmul fast float %2154, %2102
  %2158 = fmul fast float %2155, %2103
  br label %2189

; <label>:2159                                    ; preds = %2144
  %2160 = icmp eq i32 %2109, 2
  br i1 %2160, label %2161, label %2189

; <label>:2161                                    ; preds = %2159
  %2162 = call float @dx.op.unary.f32(i32 24, float %1796)  ; Sqrt(value)
  %2163 = call float @dx.op.unary.f32(i32 24, float %1797)  ; Sqrt(value)
  %2164 = call float @dx.op.unary.f32(i32 24, float %1798)  ; Sqrt(value)
  %2165 = fadd fast float %2162, -5.000000e-01
  %2166 = fadd fast float %2163, -5.000000e-01
  %2167 = fadd fast float %2164, -5.000000e-01
  %2168 = fmul fast float %2165, %2114
  %2169 = fmul fast float %2166, %2114
  %2170 = fmul fast float %2167, %2114
  %2171 = fadd fast float %2168, 5.000000e-01
  %2172 = fadd fast float %2169, 5.000000e-01
  %2173 = fadd fast float %2170, 5.000000e-01
  %2174 = fmul fast float %2171, 2.000000e+00
  %2175 = fsub fast float 1.000000e+00, %2174
  %2176 = fmul fast float %2175, %2101
  %2177 = fadd fast float %2176, %2174
  %2178 = fmul fast float %2177, %2101
  %2179 = fmul fast float %2172, 2.000000e+00
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = fmul fast float %2180, %2102
  %2182 = fadd fast float %2181, %2179
  %2183 = fmul fast float %2182, %2102
  %2184 = fmul fast float %2173, 2.000000e+00
  %2185 = fsub fast float 1.000000e+00, %2184
  %2186 = fmul fast float %2185, %2103
  %2187 = fadd fast float %2186, %2184
  %2188 = fmul fast float %2187, %2103
  br label %2189

; <label>:2189                                    ; preds = %2161, %2159, %2146, %2116, %2100
  %2190 = phi float [ %2101, %2100 ], [ %2178, %2161 ], [ %2101, %2159 ], [ %2156, %2146 ], [ %2126, %2116 ]
  %2191 = phi float [ %2102, %2100 ], [ %2183, %2161 ], [ %2102, %2159 ], [ %2157, %2146 ], [ %2127, %2116 ]
  %2192 = phi float [ %2103, %2100 ], [ %2188, %2161 ], [ %2103, %2159 ], [ %2158, %2146 ], [ %2128, %2116 ]
  %2193 = phi float [ %2104, %2100 ], [ %2104, %2161 ], [ %2104, %2159 ], [ %2104, %2146 ], [ %2138, %2116 ]
  %2194 = phi float [ %2105, %2100 ], [ %2105, %2161 ], [ %2105, %2159 ], [ %2105, %2146 ], [ %2139, %2116 ]
  %2195 = phi float [ %2106, %2100 ], [ %2106, %2161 ], [ %2106, %2159 ], [ %2106, %2146 ], [ %2140, %2116 ]
  %2196 = phi float [ %1272, %2100 ], [ %1272, %2161 ], [ %1272, %2159 ], [ %1272, %2146 ], [ %2131, %2116 ]
  %2197 = phi float [ %1278, %2100 ], [ %1278, %2161 ], [ %1278, %2159 ], [ %1278, %2146 ], [ %2143, %2116 ]
  %2198 = and i32 %2108, 12
  %2199 = icmp eq i32 %2198, 12
  br i1 %2199, label %2340, label %2200

; <label>:2200                                    ; preds = %2189
  %2201 = and i32 %2108, 2097184
  %2202 = icmp eq i32 %2201, 2097184
  %2203 = select i1 %2202, float %1576, float 0.000000e+00
  %2204 = and i32 %2108, 4194336
  %2205 = icmp eq i32 %2204, 4194336
  %2206 = select i1 %2205, float %1576, float 0.000000e+00
  %2207 = and i32 %2108, 8388640
  %2208 = icmp eq i32 %2207, 8388640
  %2209 = select i1 %2208, float %1576, float 0.000000e+00
  %2210 = and i32 %2108, 1024
  %2211 = icmp ne i32 %2210, 0
  %2212 = select i1 %2211, float %1576, float 0.000000e+00
  %2213 = and i32 %2108, 2048
  %2214 = icmp ne i32 %2213, 0
  %2215 = select i1 %2214, float %1576, float 0.000000e+00
  %2216 = and i32 %2108, 8192
  %2217 = icmp ne i32 %2216, 0
  %2218 = select i1 %2217, float %1576, float 0.000000e+00
  %2219 = and i32 %2108, 16384
  %2220 = icmp ne i32 %2219, 0
  %2221 = select i1 %2220, float %1576, float 0.000000e+00
  %2222 = icmp eq i32 %2198, 0
  br i1 %2222, label %2223, label %2260

; <label>:2223                                    ; preds = %2200
  %2224 = fsub fast float %1877, %1258
  %2225 = fsub fast float %1878, %1259
  %2226 = fmul fast float %2203, %2224
  %2227 = fmul fast float %2203, %2225
  %2228 = fadd fast float %2226, %1258
  %2229 = fadd fast float %2227, %1259
  %2230 = fsub fast float %1879, %1275
  %2231 = fmul fast float %2206, %2230
  %2232 = fadd fast float %2231, %1275
  %2233 = fsub fast float %1876, %1274
  %2234 = fmul fast float %2209, %2233
  %2235 = fadd fast float %2234, %1274
  %2236 = fsub fast float %1982, %1269
  %2237 = fsub fast float %1983, %1270
  %2238 = fsub fast float %1984, %1271
  %2239 = fmul fast float %2212, %2236
  %2240 = fmul fast float %2212, %2237
  %2241 = fmul fast float %2212, %2238
  %2242 = fadd fast float %2239, %1269
  %2243 = fadd fast float %2240, %1270
  %2244 = fadd fast float %2241, %1271
  %2245 = fsub fast float %2050, %1276
  %2246 = fmul fast float %2215, %2245
  %2247 = fadd fast float %2246, %1276
  %2248 = fsub fast float %2047, %1266
  %2249 = fsub fast float %2048, %1267
  %2250 = fsub fast float %2049, %1268
  %2251 = fmul fast float %2218, %2248
  %2252 = fmul fast float %2218, %2249
  %2253 = fmul fast float %2218, %2250
  %2254 = fadd fast float %2251, %1266
  %2255 = fadd fast float %2252, %1267
  %2256 = fadd fast float %2253, %1268
  %2257 = fsub fast float %2051, %1277
  %2258 = fmul fast float %2221, %2257
  %2259 = fadd fast float %2258, %1277
  br label %2340

; <label>:2260                                    ; preds = %2200
  %2261 = icmp eq i32 %2198, 4
  br i1 %2261, label %2262, label %2310

; <label>:2262                                    ; preds = %2260
  %2263 = fmul fast float %2203, %1877
  %2264 = fmul fast float %2203, %1878
  %2265 = fadd fast float %2263, %1258
  %2266 = fadd fast float %2264, %1259
  %2267 = call float @dx.op.binary.f32(i32 36, float %1275, float %1879)  ; FMin(a,b)
  %2268 = fsub fast float %2267, %1275
  %2269 = fmul fast float %2268, %2206
  %2270 = fadd fast float %2269, %1275
  %2271 = fadd fast float %1876, %1274
  %2272 = fmul fast float %2271, 0x3FF337FAE0000000
  %2273 = fmul fast float %1274, %1274
  %2274 = fmul fast float %1876, %1876
  %2275 = fadd fast float %2274, %2273
  %2276 = fmul fast float %2275, 0x3FE5152B00000000
  %2277 = fmul fast float %1274, 0xBFCC1F85E0000000
  %2278 = fmul fast float %2277, %1876
  %2279 = fadd fast float %2278, 0xBFE1363700000000
  %2280 = fadd fast float %2279, %2272
  %2281 = fsub fast float %2280, %2276
  %2282 = fmul fast float %2271, 0x3FBA6F0D00000000
  %2283 = fmul fast float %2275, 0x3FD0432880000000
  %2284 = fmul fast float %1274, 0xBFEF110800000000
  %2285 = fmul fast float %2284, %1876
  %2286 = fadd fast float %2285, 1.000000e+00
  %2287 = fsub fast float %2286, %2282
  %2288 = fadd fast float %2287, %2283
  %2289 = fdiv fast float %2281, %2288
  %2290 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2291 = fsub fast float %2290, %1274
  %2292 = fmul fast float %2291, %2209
  %2293 = fadd fast float %2292, %1274
  %2294 = fmul fast float %2212, %1982
  %2295 = fmul fast float %2212, %1983
  %2296 = fmul fast float %2212, %1984
  %2297 = fadd fast float %2294, %1269
  %2298 = fadd fast float %2295, %1270
  %2299 = fadd fast float %2296, %1271
  %2300 = fmul fast float %2215, %2050
  %2301 = fadd fast float %2300, %1276
  %2302 = fmul fast float %2218, %2047
  %2303 = fmul fast float %2218, %2048
  %2304 = fmul fast float %2218, %2049
  %2305 = fadd fast float %2302, %1266
  %2306 = fadd fast float %2303, %1267
  %2307 = fadd fast float %2304, %1268
  %2308 = fmul fast float %2221, %2051
  %2309 = fadd fast float %2308, %1277
  br label %2340

; <label>:2310                                    ; preds = %2260
  %2311 = icmp eq i32 %2198, 8
  br i1 %2311, label %2312, label %2340

; <label>:2312                                    ; preds = %2310
  %2313 = fmul fast float %2203, %1877
  %2314 = fmul fast float %2203, %1878
  %2315 = fadd fast float %2313, %1258
  %2316 = fadd fast float %2314, %1259
  %2317 = call float @dx.op.binary.f32(i32 36, float %1275, float %1879)  ; FMin(a,b)
  %2318 = fsub fast float %2317, %1275
  %2319 = fmul fast float %2318, %2206
  %2320 = fadd fast float %2319, %1275
  %2321 = fsub fast float %1876, %1274
  %2322 = fmul fast float %2209, %2321
  %2323 = fadd fast float %2322, %1274
  %2324 = fmul fast float %2212, %1982
  %2325 = fmul fast float %2212, %1983
  %2326 = fmul fast float %2212, %1984
  %2327 = fadd fast float %2324, %1269
  %2328 = fadd fast float %2325, %1270
  %2329 = fadd fast float %2326, %1271
  %2330 = fmul fast float %2215, %2050
  %2331 = fadd fast float %2330, %1276
  %2332 = fmul fast float %2218, %2047
  %2333 = fmul fast float %2218, %2048
  %2334 = fmul fast float %2218, %2049
  %2335 = fadd fast float %2332, %1266
  %2336 = fadd fast float %2333, %1267
  %2337 = fadd fast float %2334, %1268
  %2338 = fmul fast float %2221, %2051
  %2339 = fadd fast float %2338, %1277
  br label %2340

; <label>:2340                                    ; preds = %2312, %2310, %2262, %2223, %2189, %1575, %1279, %1257
  %2341 = phi float [ %1258, %2189 ], [ %1258, %1575 ], [ %1258, %1257 ], [ %2315, %2312 ], [ %1258, %2310 ], [ %2265, %2262 ], [ %2228, %2223 ], [ %1258, %1279 ]
  %2342 = phi float [ %1259, %2189 ], [ %1259, %1575 ], [ %1259, %1257 ], [ %2316, %2312 ], [ %1259, %2310 ], [ %2266, %2262 ], [ %2229, %2223 ], [ %1259, %1279 ]
  %2343 = phi float [ %2190, %2189 ], [ %1260, %1575 ], [ %1260, %1257 ], [ %2190, %2312 ], [ %2190, %2310 ], [ %2190, %2262 ], [ %2190, %2223 ], [ %1260, %1279 ]
  %2344 = phi float [ %2191, %2189 ], [ %1261, %1575 ], [ %1261, %1257 ], [ %2191, %2312 ], [ %2191, %2310 ], [ %2191, %2262 ], [ %2191, %2223 ], [ %1261, %1279 ]
  %2345 = phi float [ %2192, %2189 ], [ %1262, %1575 ], [ %1262, %1257 ], [ %2192, %2312 ], [ %2192, %2310 ], [ %2192, %2262 ], [ %2192, %2223 ], [ %1262, %1279 ]
  %2346 = phi float [ %2193, %2189 ], [ %1263, %1575 ], [ %1263, %1257 ], [ %2193, %2312 ], [ %2193, %2310 ], [ %2193, %2262 ], [ %2193, %2223 ], [ %1263, %1279 ]
  %2347 = phi float [ %2194, %2189 ], [ %1264, %1575 ], [ %1264, %1257 ], [ %2194, %2312 ], [ %2194, %2310 ], [ %2194, %2262 ], [ %2194, %2223 ], [ %1264, %1279 ]
  %2348 = phi float [ %2195, %2189 ], [ %1265, %1575 ], [ %1265, %1257 ], [ %2195, %2312 ], [ %2195, %2310 ], [ %2195, %2262 ], [ %2195, %2223 ], [ %1265, %1279 ]
  %2349 = phi float [ %1266, %2189 ], [ %1266, %1575 ], [ %1266, %1257 ], [ %2335, %2312 ], [ %1266, %2310 ], [ %2305, %2262 ], [ %2254, %2223 ], [ %1266, %1279 ]
  %2350 = phi float [ %1267, %2189 ], [ %1267, %1575 ], [ %1267, %1257 ], [ %2336, %2312 ], [ %1267, %2310 ], [ %2306, %2262 ], [ %2255, %2223 ], [ %1267, %1279 ]
  %2351 = phi float [ %1268, %2189 ], [ %1268, %1575 ], [ %1268, %1257 ], [ %2337, %2312 ], [ %1268, %2310 ], [ %2307, %2262 ], [ %2256, %2223 ], [ %1268, %1279 ]
  %2352 = phi float [ %1269, %2189 ], [ %1269, %1575 ], [ %1269, %1257 ], [ %2327, %2312 ], [ %1269, %2310 ], [ %2297, %2262 ], [ %2242, %2223 ], [ %1269, %1279 ]
  %2353 = phi float [ %1270, %2189 ], [ %1270, %1575 ], [ %1270, %1257 ], [ %2328, %2312 ], [ %1270, %2310 ], [ %2298, %2262 ], [ %2243, %2223 ], [ %1270, %1279 ]
  %2354 = phi float [ %1271, %2189 ], [ %1271, %1575 ], [ %1271, %1257 ], [ %2329, %2312 ], [ %1271, %2310 ], [ %2299, %2262 ], [ %2244, %2223 ], [ %1271, %1279 ]
  %2355 = phi float [ %2196, %2189 ], [ %1272, %1575 ], [ %1272, %1257 ], [ %2196, %2312 ], [ %2196, %2310 ], [ %2196, %2262 ], [ %2196, %2223 ], [ %1272, %1279 ]
  %2356 = phi float [ %1274, %2189 ], [ %1274, %1575 ], [ %1274, %1257 ], [ %2323, %2312 ], [ %1274, %2310 ], [ %2293, %2262 ], [ %2235, %2223 ], [ %1274, %1279 ]
  %2357 = phi float [ %1275, %2189 ], [ %1275, %1575 ], [ %1275, %1257 ], [ %2320, %2312 ], [ %1275, %2310 ], [ %2270, %2262 ], [ %2232, %2223 ], [ %1275, %1279 ]
  %2358 = phi float [ %1276, %2189 ], [ %1276, %1575 ], [ %1276, %1257 ], [ %2331, %2312 ], [ %1276, %2310 ], [ %2301, %2262 ], [ %2247, %2223 ], [ %1276, %1279 ]
  %2359 = phi float [ %1277, %2189 ], [ %1277, %1575 ], [ %1277, %1257 ], [ %2339, %2312 ], [ %1277, %2310 ], [ %2309, %2262 ], [ %2259, %2223 ], [ %1277, %1279 ]
  %2360 = phi float [ %2197, %2189 ], [ %1278, %1575 ], [ %1278, %1257 ], [ %2197, %2312 ], [ %2197, %2310 ], [ %2197, %2262 ], [ %2197, %2223 ], [ %1278, %1279 ]
  br i1 %418, label %3422, label %2361

; <label>:2361                                    ; preds = %2340
  %2362 = icmp ult i32 %474, 3
  %2363 = add i32 %62, 56
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = add i32 %62, 60
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = or i32 %2368, %2365
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %3422, label %2371

; <label>:2371                                    ; preds = %2361
  %2372 = and i32 %2365, 262144
  %2373 = icmp ne i32 %2372, 0
  %2374 = select i1 %2373, float %65, float 1.000000e+00
  %2375 = select i1 %2373, float %66, float 0.000000e+00
  %2376 = select i1 %2373, float %67, float 0.000000e+00
  %2377 = select i1 %2373, float %68, float 1.000000e+00
  %2378 = select i1 %2373, float %69, float %90
  %2379 = select i1 %2373, float %70, float %91
  %2380 = add i32 %62, 316
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = lshr i32 %2382, 16
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = fmul fast float %2384, 0x3F50624DE0000000
  %2386 = add i32 %62, 120
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = lshr i32 %2388, 16
  %2390 = and i32 %2389, 255
  %2391 = lshr i32 %2388, 24
  %2392 = add i32 %62, 324
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 65535
  %2396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2395)  ; LegacyF16ToF32(value)
  %2397 = lshr i32 %2394, 16
  %2398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2397)  ; LegacyF16ToF32(value)
  %2399 = add i32 %62, 64
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = lshr i32 %2401, 22
  %2403 = shl nuw nsw i32 %2402, 5
  %2404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2403)  ; LegacyF16ToF32(value)
  %2405 = shl i32 %2401, 4
  %2406 = and i32 %2405, 32752
  %2407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2406)  ; LegacyF16ToF32(value)
  %2408 = lshr i32 %2401, 7
  %2409 = and i32 %2408, 32752
  %2410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2409)  ; LegacyF16ToF32(value)
  %2411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2412 = extractvalue %dx.types.CBufRet.f32 %2411, 3
  %2413 = fmul fast float %2412, 1.000000e+03
  %2414 = fmul fast float %368, %2413
  %2415 = call float @dx.op.unary.f32(i32 22, float %2414)  ; Frc(value)
  %2416 = fadd fast float %2415, %358
  %2417 = fmul fast float %369, %2413
  %2418 = call float @dx.op.unary.f32(i32 22, float %2417)  ; Frc(value)
  %2419 = fadd fast float %2418, %360
  %2420 = fmul fast float %2385, %2413
  %2421 = call float @dx.op.unary.f32(i32 22, float %2420)  ; Frc(value)
  %2422 = fmul fast float %2421, 0x401921FB60000000
  %2423 = fadd fast float %2422, %2404
  %2424 = call float @dx.op.unary.f32(i32 13, float %2423)  ; Sin(value)
  %2425 = call float @dx.op.unary.f32(i32 12, float %2423)  ; Cos(value)
  %2426 = fsub fast float -0.000000e+00, %2424
  %2427 = fadd fast float %2378, -5.000000e-01
  %2428 = fadd fast float %2379, -5.000000e-01
  %2429 = fmul fast float %2396, %2427
  %2430 = fmul fast float %2398, %2428
  %2431 = fadd fast float %2429, 5.000000e-01
  %2432 = fadd fast float %2430, 5.000000e-01
  %2433 = fmul fast float %2407, %2431
  %2434 = fmul fast float %2410, %2432
  %2435 = fmul fast float %2425, %2433
  %2436 = call float @dx.op.tertiary.f32(i32 46, float %2426, float %2434, float %2435)  ; FMad(a,b,c)
  %2437 = fmul fast float %2424, %2433
  %2438 = call float @dx.op.tertiary.f32(i32 46, float %2425, float %2434, float %2437)  ; FMad(a,b,c)
  %2439 = fadd fast float %2416, %2436
  %2440 = fadd fast float %2419, %2438
  %2441 = icmp ugt i32 %2390, 1
  %2442 = icmp ugt i32 %2388, 33554431
  %2443 = or i1 %2442, %2441
  br i1 %2443, label %2444, label %2469

; <label>:2444                                    ; preds = %2371
  %2445 = add i32 %62, 260
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = lshr i32 %2447, 16
  %2449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2448)  ; LegacyF16ToF32(value)
  %2450 = fmul fast float %2412, %2449
  %2451 = call float @dx.op.unary.f32(i32 22, float %2450)  ; Frc(value)
  %2452 = mul nuw nsw i32 %2390, %2391
  %2453 = uitofp i32 %2452 to float
  %2454 = fmul fast float %2451, %2453
  %2455 = call float @dx.op.unary.f32(i32 27, float %2454)  ; Round_ni(value)
  %2456 = fptoui float %2455 to i32
  %2457 = urem i32 %2456, %2390
  %2458 = udiv i32 %2456, %2391
  %2459 = call float @dx.op.unary.f32(i32 22, float %2439)  ; Frc(value)
  %2460 = call float @dx.op.unary.f32(i32 22, float %2440)  ; Frc(value)
  %2461 = uitofp i32 %2457 to float
  %2462 = uitofp i32 %2458 to float
  %2463 = fadd fast float %2459, %2461
  %2464 = fadd fast float %2460, %2462
  %2465 = uitofp i32 %2390 to float
  %2466 = uitofp i32 %2391 to float
  %2467 = fdiv fast float %2463, %2465
  %2468 = fdiv fast float %2464, %2466
  br label %2469

; <label>:2469                                    ; preds = %2444, %2371
  %2470 = phi float [ %2467, %2444 ], [ %2439, %2371 ]
  %2471 = phi float [ %2468, %2444 ], [ %2440, %2371 ]
  %2472 = and i32 %2365, 16777216
  %2473 = icmp eq i32 %2472, 0
  br i1 %2473, label %2583, label %2474

; <label>:2474                                    ; preds = %2469
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 0
  %2477 = extractvalue %dx.types.CBufRet.f32 %2475, 1
  %2478 = extractvalue %dx.types.CBufRet.f32 %2475, 2
  %2479 = fadd fast float %2476, %170
  %2480 = fadd fast float %2477, %171
  %2481 = fadd fast float %2478, %172
  %2482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2483 = extractvalue %dx.types.CBufRet.f32 %2482, 0
  %2484 = call float @dx.op.unary.f32(i32 7, float %2483)  ; Saturate(value)
  %2485 = icmp eq i32 %63, 65535
  br i1 %2485, label %2580, label %2486

; <label>:2486                                    ; preds = %2474
  %2487 = lshr i32 %63, 1
  %2488 = shl i32 %2487, 2
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = and i32 %63, 1
  %2492 = icmp ne i32 %2491, 0
  %2493 = lshr i32 %2490, 16
  %2494 = and i32 %2490, 65535
  %2495 = select i1 %2492, i32 %2493, i32 %2494
  %2496 = icmp eq i32 %2495, 65535
  br i1 %2496, label %2576, label %2497

; <label>:2497                                    ; preds = %2486
  %2498 = mul nuw nsw i32 %2495, 40
  %2499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.ResRet.f32 %2499, 2
  %2503 = add nuw nsw i32 %2498, 12
  %2504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2503, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.ResRet.f32 %2504, 1
  %2507 = extractvalue %dx.types.ResRet.f32 %2504, 2
  %2508 = add nuw nsw i32 %2498, 24
  %2509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2508, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.f32 %2509, 0
  %2511 = extractvalue %dx.types.ResRet.f32 %2509, 1
  %2512 = extractvalue %dx.types.ResRet.f32 %2509, 2
  %2513 = add nuw nsw i32 %2498, 36
  %2514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.f32 %2514, 0
  %2516 = fsub fast float %2479, %2500
  %2517 = fsub fast float %2480, %2501
  %2518 = fsub fast float %2481, %2502
  %2519 = fmul fast float %2515, %2516
  %2520 = fmul fast float %2515, %2517
  %2521 = fmul fast float %2515, %2518
  %2522 = call float @dx.op.unary.f32(i32 27, float %2519)  ; Round_ni(value)
  %2523 = call float @dx.op.unary.f32(i32 27, float %2520)  ; Round_ni(value)
  %2524 = call float @dx.op.unary.f32(i32 27, float %2521)  ; Round_ni(value)
  %2525 = fadd fast float %2522, 5.000000e-01
  %2526 = fadd fast float %2523, 5.000000e-01
  %2527 = fadd fast float %2524, 5.000000e-01
  %2528 = fmul fast float %2525, %2505
  %2529 = fmul fast float %2526, %2506
  %2530 = fmul fast float %2527, %2507
  %2531 = shl i32 %63, 2
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = add i32 %2533, 0
  %2535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2536 = call float @dx.op.unary.f32(i32 22, float %2528)  ; Frc(value)
  %2537 = call float @dx.op.unary.f32(i32 22, float %2529)  ; Frc(value)
  %2538 = call float @dx.op.unary.f32(i32 22, float %2530)  ; Frc(value)
  %2539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2535, %dx.types.Handle %55, float %2536, float %2537, float %2538, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.ResRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.ResRet.f32 %2539, 2
  %2543 = fmul fast float %2540, 1.023000e+03
  %2544 = fmul fast float %2541, 1.023000e+03
  %2545 = fmul fast float %2542, 1.023000e+03
  %2546 = fadd fast float %2543, 5.000000e-01
  %2547 = fadd fast float %2544, 5.000000e-01
  %2548 = fadd fast float %2545, 5.000000e-01
  %2549 = call float @dx.op.unary.f32(i32 27, float %2546)  ; Round_ni(value)
  %2550 = call float @dx.op.unary.f32(i32 27, float %2547)  ; Round_ni(value)
  %2551 = call float @dx.op.unary.f32(i32 27, float %2548)  ; Round_ni(value)
  %2552 = fsub fast float %2519, %2522
  %2553 = fsub fast float %2520, %2523
  %2554 = fsub fast float %2521, %2524
  %2555 = fmul fast float %2552, 7.500000e-01
  %2556 = fmul fast float %2553, 7.500000e-01
  %2557 = fmul fast float %2554, 7.500000e-01
  %2558 = fadd fast float %2522, 1.250000e-01
  %2559 = fadd fast float %2558, %2555
  %2560 = fadd fast float %2559, %2549
  %2561 = fadd fast float %2523, 1.250000e-01
  %2562 = fadd fast float %2561, %2556
  %2563 = fadd fast float %2562, %2550
  %2564 = fadd fast float %2524, 1.250000e-01
  %2565 = fadd fast float %2564, %2557
  %2566 = fadd fast float %2565, %2551
  %2567 = fmul fast float %2560, %2510
  %2568 = fmul fast float %2563, %2511
  %2569 = fmul fast float %2566, %2512
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = add i32 %2571, 0
  %2573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2573, %dx.types.Handle %53, float %2567, float %2568, float %2569, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 0
  br label %2576

; <label>:2576                                    ; preds = %2497, %2486
  %2577 = phi float [ %2575, %2497 ], [ -1.000000e+00, %2486 ]
  %2578 = fadd fast float %2577, %2484
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  br label %2580

; <label>:2580                                    ; preds = %2576, %2474
  %2581 = phi float [ %2579, %2576 ], [ %2484, %2474 ]
  %2582 = fmul fast float %2581, %470
  br label %2583

; <label>:2583                                    ; preds = %2580, %2469
  %2584 = phi float [ %2582, %2580 ], [ %470, %2469 ]
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = and i32 %2586, 256
  %2588 = icmp eq i32 %2587, 0
  br i1 %2588, label %2635, label %2589

; <label>:2589                                    ; preds = %2583
  %2590 = add i32 %62, 512
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2590, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = add i32 %2592, 0
  %2594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2594, %dx.types.Handle %108, float %2470, float %2471, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2596 = extractvalue %dx.types.ResRet.f32 %2595, 0
  %2597 = add i32 %62, 132
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = shl i32 %2599, 4
  %2601 = and i32 %2600, 32752
  %2602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2601)  ; LegacyF16ToF32(value)
  %2603 = lshr i32 %2599, 7
  %2604 = and i32 %2603, 32752
  %2605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2604)  ; LegacyF16ToF32(value)
  %2606 = fsub fast float 1.000000e+00, %2584
  %2607 = call float @dx.op.binary.f32(i32 35, float %2606, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2608 = bitcast float %2584 to i32
  %2609 = sitofp i32 %2608 to float
  %2610 = fadd fast float %2609, 0xC1CFBF8940000000
  %2611 = fmul fast float %2605, %2610
  %2612 = fadd fast float %2611, 0x41CFBF8940000000
  %2613 = fptosi float %2612 to i32
  %2614 = bitcast i32 %2613 to float
  %2615 = bitcast float %2607 to i32
  %2616 = sitofp i32 %2615 to float
  %2617 = fadd fast float %2616, 0xC1CFBF8940000000
  %2618 = fmul fast float %2617, %2605
  %2619 = fadd fast float %2618, 0x41CFBF8940000000
  %2620 = fptosi float %2619 to i32
  %2621 = bitcast i32 %2620 to float
  %2622 = fmul fast float %2614, %2602
  %2623 = fmul fast float %2621, %2602
  %2624 = fsub fast float %2607, %2622
  %2625 = fadd fast float %2623, %2607
  %2626 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  %2627 = call float @dx.op.unary.f32(i32 7, float %2625)  ; Saturate(value)
  %2628 = fsub fast float %2596, %2626
  %2629 = fsub fast float %2627, %2626
  %2630 = bitcast float %2629 to i32
  %2631 = sub nsw i32 2129859010, %2630
  %2632 = bitcast i32 %2631 to float
  %2633 = fmul fast float %2632, %2628
  %2634 = call float @dx.op.unary.f32(i32 7, float %2633)  ; Saturate(value)
  br label %2635

; <label>:2635                                    ; preds = %2589, %2583
  %2636 = phi float [ %2634, %2589 ], [ %2584, %2583 ]
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 128
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2657, label %2641

; <label>:2641                                    ; preds = %2635
  %2642 = add i32 %62, 496
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = add i32 %2644, 0
  %2646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2646, %dx.types.Handle %108, float %2470, float %2471, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2648 = extractvalue %dx.types.ResRet.f32 %2647, 0
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, 524288
  %2652 = icmp ne i32 %2651, 0
  %2653 = fcmp fast ogt float %2648, 0x3FE0101020000000
  %2654 = select i1 %2653, float 1.000000e+00, float 0.000000e+00
  %2655 = select i1 %2652, float %2654, float %2648
  %2656 = fmul fast float %2655, %2636
  br label %2657

; <label>:2657                                    ; preds = %2641, %2635
  %2658 = phi float [ %2656, %2641 ], [ %2636, %2635 ]
  %2659 = fcmp fast ult float %2658, 0x3F70101020000000
  br i1 %2659, label %3422, label %2660

; <label>:2660                                    ; preds = %2657
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = and i32 %2662, 16
  %2664 = icmp eq i32 %2663, 0
  br i1 %2664, label %2863, label %2665

; <label>:2665                                    ; preds = %2660
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = add i32 %62, 448
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = add i32 %2670, 0
  %2672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2671, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2673 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2672, %dx.types.Handle %107, float %2470, float %2471, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2674 = extractvalue %dx.types.ResRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.ResRet.f32 %2673, 1
  %2676 = extractvalue %dx.types.ResRet.f32 %2673, 2
  %2677 = extractvalue %dx.types.ResRet.f32 %2673, 3
  %2678 = and i32 %2667, 255
  %2679 = uitofp i32 %2678 to float
  %2680 = lshr i32 %2667, 8
  %2681 = and i32 %2680, 255
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2677, %2679
  %2684 = fadd fast float %2683, %2682
  %2685 = fmul fast float %2684, 0x3F70101000000000
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 512
  %2689 = icmp eq i32 %2688, 0
  br i1 %2689, label %2698, label %2690

; <label>:2690                                    ; preds = %2665
  %2691 = add i32 %62, 528
  %2692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2691, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = add i32 %2693, 0
  %2695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2696 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2695, %dx.types.Handle %108, float %2470, float %2471, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2697 = extractvalue %dx.types.ResRet.f32 %2696, 0
  br label %2698

; <label>:2698                                    ; preds = %2690, %2665
  %2699 = phi float [ %2697, %2690 ], [ 1.000000e+00, %2665 ]
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 33554432
  %2703 = icmp eq i32 %2702, 0
  br i1 %2703, label %2810, label %2704

; <label>:2704                                    ; preds = %2698
  %2705 = add i32 %62, 256
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = and i32 %2707, 65535
  %2709 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2708)  ; LegacyF16ToF32(value)
  %2710 = lshr i32 %2707, 16
  %2711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2710)  ; LegacyF16ToF32(value)
  %2712 = add i32 %62, 260
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = and i32 %2714, 65535
  %2716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2715)  ; LegacyF16ToF32(value)
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = lshr i32 %2718, 24
  %2720 = uitofp i32 %2719 to float
  %2721 = fmul fast float %2720, 0x3F70101020000000
  %2722 = and i32 %2718, 255
  %2723 = uitofp i32 %2722 to float
  %2724 = fmul fast float %2723, 0x3F70101020000000
  %2725 = lshr i32 %2718, 8
  %2726 = and i32 %2725, 255
  %2727 = uitofp i32 %2726 to float
  %2728 = fmul fast float %2727, 0x3F70101020000000
  %2729 = lshr i32 %2718, 16
  %2730 = and i32 %2729, 255
  %2731 = uitofp i32 %2730 to float
  %2732 = fmul fast float %2731, 0x3F70101020000000
  %2733 = add i32 %62, 252
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = lshr i32 %2735, 24
  %2737 = uitofp i32 %2736 to float
  %2738 = fmul fast float %2737, 0x3F70101020000000
  %2739 = and i32 %2735, 255
  %2740 = uitofp i32 %2739 to float
  %2741 = fmul fast float %2740, 0x3F70101020000000
  %2742 = lshr i32 %2735, 8
  %2743 = and i32 %2742, 255
  %2744 = uitofp i32 %2743 to float
  %2745 = fmul fast float %2744, 0x3F70101020000000
  %2746 = lshr i32 %2735, 16
  %2747 = and i32 %2746, 255
  %2748 = uitofp i32 %2747 to float
  %2749 = fmul fast float %2748, 0x3F70101020000000
  %2750 = bitcast float %2674 to i32
  %2751 = ashr i32 %2750, 1
  %2752 = sub nsw i32 1597463174, %2751
  %2753 = bitcast i32 %2752 to float
  %2754 = fmul fast float %2674, 5.000000e-01
  %2755 = fmul fast float %2753, %2753
  %2756 = fmul fast float %2755, %2754
  %2757 = fsub fast float 1.500000e+00, %2756
  %2758 = fmul fast float %2753, %2674
  %2759 = fmul fast float %2758, %2757
  %2760 = bitcast float %2675 to i32
  %2761 = ashr i32 %2760, 1
  %2762 = sub nsw i32 1597463174, %2761
  %2763 = bitcast i32 %2762 to float
  %2764 = fmul fast float %2675, 5.000000e-01
  %2765 = fmul fast float %2763, %2763
  %2766 = fmul fast float %2765, %2764
  %2767 = fsub fast float 1.500000e+00, %2766
  %2768 = fmul fast float %2763, %2675
  %2769 = fmul fast float %2768, %2767
  %2770 = bitcast float %2676 to i32
  %2771 = ashr i32 %2770, 1
  %2772 = sub nsw i32 1597463174, %2771
  %2773 = bitcast i32 %2772 to float
  %2774 = fmul fast float %2676, 5.000000e-01
  %2775 = fmul fast float %2773, %2773
  %2776 = fmul fast float %2775, %2774
  %2777 = fsub fast float 1.500000e+00, %2776
  %2778 = fmul fast float %2773, %2676
  %2779 = fmul fast float %2778, %2777
  %2780 = fsub fast float %2759, %2741
  %2781 = fsub fast float %2769, %2745
  %2782 = fsub fast float %2779, %2749
  %2783 = fmul fast float %2780, %2709
  %2784 = fmul fast float %2781, %2711
  %2785 = fmul fast float %2782, %2716
  %2786 = fadd fast float %2783, %2724
  %2787 = fadd fast float %2784, %2728
  %2788 = fadd fast float %2785, %2732
  %2789 = call float @dx.op.unary.f32(i32 7, float %2786)  ; Saturate(value)
  %2790 = call float @dx.op.unary.f32(i32 7, float %2787)  ; Saturate(value)
  %2791 = call float @dx.op.unary.f32(i32 7, float %2788)  ; Saturate(value)
  %2792 = fmul fast float %2789, %2789
  %2793 = fmul fast float %2790, %2790
  %2794 = fmul fast float %2791, %2791
  %2795 = fsub fast float %2792, %2674
  %2796 = fsub fast float %2793, %2675
  %2797 = fsub fast float %2794, %2676
  %2798 = fmul fast float %2795, %2699
  %2799 = fmul fast float %2796, %2699
  %2800 = fmul fast float %2797, %2699
  %2801 = fadd fast float %2798, %2674
  %2802 = fadd fast float %2799, %2675
  %2803 = fadd fast float %2800, %2676
  %2804 = fadd fast float %2721, %2685
  %2805 = fsub fast float %2804, %2738
  %2806 = call float @dx.op.unary.f32(i32 7, float %2805)  ; Saturate(value)
  %2807 = fsub fast float %2806, %2685
  %2808 = fmul fast float %2807, %2699
  %2809 = fadd fast float %2808, %2685
  br label %2863

; <label>:2810                                    ; preds = %2698
  %2811 = and i32 %2701, 134217728
  %2812 = icmp eq i32 %2811, 0
  br i1 %2812, label %2847, label %2813

; <label>:2813                                    ; preds = %2810
  %2814 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2815 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %2816 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %2817 = fadd fast float %2814, -5.000000e-01
  %2818 = fadd fast float %2815, -5.000000e-01
  %2819 = fadd fast float %2816, -5.000000e-01
  %2820 = fmul fast float %2817, %2699
  %2821 = fmul fast float %2818, %2699
  %2822 = fmul fast float %2819, %2699
  %2823 = fadd fast float %2820, 5.000000e-01
  %2824 = fadd fast float %2821, 5.000000e-01
  %2825 = fadd fast float %2822, 5.000000e-01
  %2826 = call float @dx.op.unary.f32(i32 24, float %2674)  ; Sqrt(value)
  %2827 = call float @dx.op.unary.f32(i32 24, float %2675)  ; Sqrt(value)
  %2828 = call float @dx.op.unary.f32(i32 24, float %2676)  ; Sqrt(value)
  %2829 = fmul fast float %2823, 2.000000e+00
  %2830 = fsub fast float 1.000000e+00, %2829
  %2831 = fmul fast float %2830, %2826
  %2832 = fadd fast float %2831, %2829
  %2833 = fmul fast float %2832, %2826
  %2834 = fmul fast float %2824, 2.000000e+00
  %2835 = fsub fast float 1.000000e+00, %2834
  %2836 = fmul fast float %2835, %2827
  %2837 = fadd fast float %2836, %2834
  %2838 = fmul fast float %2837, %2827
  %2839 = fmul fast float %2825, 2.000000e+00
  %2840 = fsub fast float 1.000000e+00, %2839
  %2841 = fmul fast float %2840, %2828
  %2842 = fadd fast float %2841, %2839
  %2843 = fmul fast float %2842, %2828
  %2844 = fmul fast float %2833, %2833
  %2845 = fmul fast float %2838, %2838
  %2846 = fmul fast float %2843, %2843
  br label %2863

; <label>:2847                                    ; preds = %2810
  %2848 = fmul fast float %345, %345
  %2849 = fmul fast float %349, %349
  %2850 = fmul fast float %353, %353
  %2851 = fadd fast float %2848, -1.000000e+00
  %2852 = fadd fast float %2849, -1.000000e+00
  %2853 = fadd fast float %2850, -1.000000e+00
  %2854 = fmul fast float %2699, %2851
  %2855 = fmul fast float %2699, %2852
  %2856 = fmul fast float %2699, %2853
  %2857 = fadd fast float %2854, 1.000000e+00
  %2858 = fadd fast float %2855, 1.000000e+00
  %2859 = fadd fast float %2856, 1.000000e+00
  %2860 = fmul fast float %2857, %2674
  %2861 = fmul fast float %2858, %2675
  %2862 = fmul fast float %2859, %2676
  br label %2863

; <label>:2863                                    ; preds = %2847, %2813, %2704, %2660
  %2864 = phi float [ %2809, %2704 ], [ %2685, %2813 ], [ %2685, %2847 ], [ 0x3FA23C0BE0000000, %2660 ]
  %2865 = phi float [ %2801, %2704 ], [ %2844, %2813 ], [ %2860, %2847 ], [ 1.000000e+00, %2660 ]
  %2866 = phi float [ %2802, %2704 ], [ %2845, %2813 ], [ %2861, %2847 ], [ 1.000000e+00, %2660 ]
  %2867 = phi float [ %2803, %2704 ], [ %2846, %2813 ], [ %2862, %2847 ], [ 1.000000e+00, %2660 ]
  %2868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2869 = extractvalue %dx.types.CBufRet.i32 %2868, 1
  %2870 = and i32 %2869, 1
  %2871 = icmp ne i32 %2870, 0
  %2872 = add i32 %62, 356
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2872, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = and i32 %2874, 32
  %2876 = icmp ne i32 %2875, 0
  %2877 = and i1 %2871, %2876
  %2878 = select i1 %2877, float 1.000000e+00, float %2865
  %2879 = select i1 %2877, float 0x3FD3333340000000, float %2866
  %2880 = select i1 %2877, float 0x3FD3333340000000, float %2867
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 32
  %2884 = icmp eq i32 %2883, 0
  br i1 %2884, label %2957, label %2885

; <label>:2885                                    ; preds = %2863
  %2886 = add i32 %62, 124
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = add i32 %62, 464
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = add i32 %2891, 0
  %2893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2894 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2893, %dx.types.Handle %107, float %2470, float %2471, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2895 = extractvalue %dx.types.ResRet.f32 %2894, 0
  %2896 = extractvalue %dx.types.ResRet.f32 %2894, 1
  %2897 = extractvalue %dx.types.ResRet.f32 %2894, 2
  %2898 = extractvalue %dx.types.ResRet.f32 %2894, 3
  %2899 = and i32 %2888, 255
  %2900 = uitofp i32 %2899 to float
  %2901 = lshr i32 %2888, 8
  %2902 = and i32 %2901, 255
  %2903 = uitofp i32 %2902 to float
  %2904 = lshr i32 %2888, 16
  %2905 = and i32 %2904, 255
  %2906 = uitofp i32 %2905 to float
  %2907 = fmul fast float %2906, 0x3F70101000000000
  %2908 = fmul fast float %2895, %2900
  %2909 = fadd fast float %2908, %2903
  %2910 = fmul fast float %2909, 0x3F70101000000000
  %2911 = fadd fast float %2896, -5.000000e-01
  %2912 = fadd fast float %2898, -5.000000e-01
  %2913 = fmul fast float %2911, %2907
  %2914 = fmul fast float %2912, %2907
  %2915 = fadd fast float %2913, 5.000000e-01
  %2916 = fadd fast float %2914, 5.000000e-01
  %2917 = fmul fast float %2915, 2.000000e+00
  %2918 = fadd fast float %2917, -1.000000e+00
  %2919 = fmul fast float %2916, 2.000000e+00
  %2920 = fadd fast float %2919, -1.000000e+00
  %2921 = fadd fast float %2918, %2920
  %2922 = fmul fast float %2921, 5.000000e-01
  %2923 = fsub fast float %2918, %2920
  %2924 = fmul fast float %2923, 5.000000e-01
  %2925 = call float @dx.op.unary.f32(i32 6, float %2922)  ; FAbs(value)
  %2926 = fsub fast float 1.000000e+00, %2925
  %2927 = call float @dx.op.unary.f32(i32 6, float %2924)  ; FAbs(value)
  %2928 = fsub fast float %2926, %2927
  %2929 = call float @dx.op.dot3.f32(i32 55, float %2922, float %2924, float %2928, float %2922, float %2924, float %2928)  ; Dot3(ax,ay,az,bx,by,bz)
  %2930 = call float @dx.op.unary.f32(i32 25, float %2929)  ; Rsqrt(value)
  %2931 = fmul fast float %2922, %2930
  %2932 = fmul fast float %2924, %2930
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 67108864
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %2953, label %2937

; <label>:2937                                    ; preds = %2885
  %2938 = add i32 %62, 312
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %2940, 65535
  %2942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2941)  ; LegacyF16ToF32(value)
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %2944, 65535
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = lshr i32 %2940, 16
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = fsub fast float %2910, %2948
  %2950 = fmul fast float %2949, %2942
  %2951 = fadd fast float %2950, %2946
  %2952 = call float @dx.op.unary.f32(i32 7, float %2951)  ; Saturate(value)
  br label %2953

; <label>:2953                                    ; preds = %2937, %2885
  %2954 = phi float [ %2952, %2937 ], [ %2910, %2885 ]
  %2955 = call float @dx.op.dot2.f32(i32 54, float %2931, float %2932, float %2374, float %2375)  ; Dot2(ax,ay,bx,by)
  %2956 = call float @dx.op.dot2.f32(i32 54, float %2931, float %2932, float %2376, float %2377)  ; Dot2(ax,ay,bx,by)
  br label %2957

; <label>:2957                                    ; preds = %2953, %2863
  %2958 = phi float [ %2954, %2953 ], [ 0x3FD6666660000000, %2863 ]
  %2959 = phi float [ %2955, %2953 ], [ 0.000000e+00, %2863 ]
  %2960 = phi float [ %2956, %2953 ], [ 0.000000e+00, %2863 ]
  %2961 = phi float [ %2897, %2953 ], [ 1.000000e+00, %2863 ]
  %2962 = add i32 %62, 192
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = lshr i32 %2964, 22
  %2966 = shl nuw nsw i32 %2965, 5
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = and i32 %2969, 64
  %2971 = icmp eq i32 %2970, 0
  br i1 %2971, label %3005, label %2972

; <label>:2972                                    ; preds = %2957
  %2973 = add i32 %62, 480
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = add i32 %2975, 0
  %2977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2976, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %2979, 131072
  %2981 = icmp eq i32 %2980, 0
  %2982 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2977, %dx.types.Handle %107, float %2470, float %2471, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = fmul fast float %2983, %333
  %2987 = fmul fast float %2984, %336
  %2988 = fmul fast float %2985, %339
  br i1 %2981, label %2995, label %2989

; <label>:2989                                    ; preds = %2972
  %2990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2991 = extractvalue %dx.types.CBufRet.f32 %2990, 0
  %2992 = fmul fast float %2991, %2986
  %2993 = fmul fast float %2991, %2987
  %2994 = fmul fast float %2991, %2988
  br label %2995

; <label>:2995                                    ; preds = %2989, %2972
  %2996 = phi float [ %2992, %2989 ], [ %2986, %2972 ]
  %2997 = phi float [ %2993, %2989 ], [ %2987, %2972 ]
  %2998 = phi float [ %2994, %2989 ], [ %2988, %2972 ]
  %2999 = fmul fast float %2996, %2967
  %3000 = select i1 %232, float %2999, float %2996
  %3001 = call float @dx.op.dot3.f32(i32 55, float %3000, float %2997, float %2998, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3002 = select i1 %232, float 0.000000e+00, float %2996
  %3003 = select i1 %232, float %3001, float %2997
  %3004 = select i1 %232, float 0.000000e+00, float %2998
  br label %3005

; <label>:3005                                    ; preds = %2995, %2957
  %3006 = phi float [ %3002, %2995 ], [ 0.000000e+00, %2957 ]
  %3007 = phi float [ %3003, %2995 ], [ 0.000000e+00, %2957 ]
  %3008 = phi float [ %3004, %2995 ], [ 0.000000e+00, %2957 ]
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = and i32 %3010, 1024
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %3043, label %3013

; <label>:3013                                    ; preds = %3005
  %3014 = add i32 %62, 184
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 255
  %3018 = uitofp i32 %3017 to float
  %3019 = fmul fast float %3018, 0x3F70101020000000
  %3020 = lshr i32 %3016, 8
  %3021 = and i32 %3020, 255
  %3022 = uitofp i32 %3021 to float
  %3023 = fmul fast float %3022, 0x3F70101020000000
  %3024 = lshr i32 %3016, 16
  %3025 = and i32 %3024, 255
  %3026 = uitofp i32 %3025 to float
  %3027 = fmul fast float %3026, 0x3F70101020000000
  %3028 = fmul fast float %3019, %3019
  %3029 = fmul fast float %3023, %3023
  %3030 = fmul fast float %3027, %3027
  %3031 = add i32 %62, 544
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = add i32 %3033, 0
  %3035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3035, %dx.types.Handle %108, float %2470, float %2471, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.ResRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.ResRet.f32 %3036, 2
  %3040 = fmul fast float %3028, %3037
  %3041 = fmul fast float %3029, %3038
  %3042 = fmul fast float %3030, %3039
  br label %3043

; <label>:3043                                    ; preds = %3013, %3005
  %3044 = phi float [ %3040, %3013 ], [ 0.000000e+00, %3005 ]
  %3045 = phi float [ %3041, %3013 ], [ 0.000000e+00, %3005 ]
  %3046 = phi float [ %3042, %3013 ], [ 0.000000e+00, %3005 ]
  %3047 = fcmp fast ogt float %3044, 0.000000e+00
  %3048 = fcmp fast ogt float %3045, 0.000000e+00
  %3049 = fcmp fast ogt float %3046, 0.000000e+00
  %3050 = call float @dx.op.unary.f32(i32 23, float %3044)  ; Log(value)
  %3051 = call float @dx.op.unary.f32(i32 23, float %3045)  ; Log(value)
  %3052 = call float @dx.op.unary.f32(i32 23, float %3046)  ; Log(value)
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = lshr i32 %3054, 7
  %3056 = and i32 %3055, 32752
  %3057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3056)  ; LegacyF16ToF32(value)
  %3058 = fmul fast float %3050, 0xBFE62E4300000000
  %3059 = fmul fast float %3058, %3057
  %3060 = fmul fast float %3051, 0xBFE62E4300000000
  %3061 = fmul fast float %3060, %3057
  %3062 = fmul fast float %3052, 0xBFE62E4300000000
  %3063 = fmul fast float %3062, %3057
  %3064 = select i1 %3047, float %3059, float 1.270000e+02
  %3065 = select i1 %3048, float %3061, float 1.270000e+02
  %3066 = select i1 %3049, float %3063, float 1.270000e+02
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, 26624
  %3070 = icmp eq i32 %3069, 0
  br i1 %3070, label %3128, label %3071

; <label>:3071                                    ; preds = %3043
  %3072 = add i32 %62, 560
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = add i32 %3074, 0
  %3076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3075, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3076, %dx.types.Handle %108, float %2470, float %2471, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3078 = extractvalue %dx.types.ResRet.f32 %3077, 0
  %3079 = extractvalue %dx.types.ResRet.f32 %3077, 1
  %3080 = extractvalue %dx.types.ResRet.f32 %3077, 3
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = and i32 %3082, 1048576
  %3084 = icmp ne i32 %3083, 0
  %3085 = and i32 %3082, 8192
  %3086 = icmp eq i32 %3085, 0
  br i1 %3086, label %3101, label %3087

; <label>:3087                                    ; preds = %3071
  %3088 = extractvalue %dx.types.ResRet.f32 %3077, 2
  %3089 = select i1 %3084, float %3088, float %3079
  %3090 = select i1 %3084, float %3078, float %3079
  %3091 = add i32 %62, 128
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = lshr i32 %3093, 16
  %3095 = and i32 %3094, 255
  %3096 = uitofp i32 %3095 to float
  %3097 = fmul fast float %3096, 0x3F80101020000000
  %3098 = fmul fast float %3097, %3090
  %3099 = fmul fast float %3097, %3079
  %3100 = fmul fast float %3097, %3089
  br label %3101

; <label>:3101                                    ; preds = %3087, %3071
  %3102 = phi float [ %3098, %3087 ], [ 0.000000e+00, %3071 ]
  %3103 = phi float [ %3099, %3087 ], [ 0.000000e+00, %3071 ]
  %3104 = phi float [ %3100, %3087 ], [ 0.000000e+00, %3071 ]
  %3105 = and i32 %3082, 2048
  %3106 = icmp eq i32 %3105, 0
  br i1 %3106, label %3115, label %3107

; <label>:3107                                    ; preds = %3101
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = shl i32 %3109, 4
  %3111 = and i32 %3110, 32752
  %3112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3111)  ; LegacyF16ToF32(value)
  %3113 = fmul fast float %3112, %3080
  %3114 = call float @dx.op.binary.f32(i32 35, float %3113, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3115

; <label>:3115                                    ; preds = %3107, %3101
  %3116 = phi float [ %3114, %3107 ], [ 0x3F70101020000000, %3101 ]
  %3117 = and i32 %3082, 16384
  %3118 = icmp eq i32 %3117, 0
  br i1 %3118, label %3128, label %3119

; <label>:3119                                    ; preds = %3115
  %3120 = add i32 %62, 128
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = lshr i32 %3122, 24
  %3124 = uitofp i32 %3123 to float
  %3125 = fmul fast float %3078, 0x3F70101020000000
  %3126 = select i1 %3084, float 0x3F70101020000000, float %3125
  %3127 = fmul fast float %3126, %3124
  br label %3128

; <label>:3128                                    ; preds = %3119, %3115, %3043
  %3129 = phi float [ %3102, %3119 ], [ %3102, %3115 ], [ 0.000000e+00, %3043 ]
  %3130 = phi float [ %3103, %3119 ], [ %3103, %3115 ], [ 0.000000e+00, %3043 ]
  %3131 = phi float [ %3104, %3119 ], [ %3104, %3115 ], [ 0.000000e+00, %3043 ]
  %3132 = phi float [ %3116, %3119 ], [ %3116, %3115 ], [ 0x3F70101020000000, %3043 ]
  %3133 = phi float [ %3127, %3119 ], [ 0.000000e+00, %3115 ], [ 0.000000e+00, %3043 ]
  %3134 = add i32 %62, 128
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = and i32 %3136, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = lshr i32 %3136, 8
  %3140 = and i32 %3139, 255
  %3141 = uitofp i32 %3140 to float
  %3142 = call float @dx.op.dot3.f32(i32 55, float %2878, float %2879, float %2880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3143 = fmul fast float %3141, %3142
  %3144 = fadd fast float %3143, %3138
  %3145 = fmul fast float %3144, 0x3F70101020000000
  %3146 = call float @dx.op.unary.f32(i32 7, float %3145)  ; Saturate(value)
  br i1 %2362, label %3147, label %3182

; <label>:3147                                    ; preds = %3128
  %3148 = fmul fast float %3132, 2.000000e+00
  %3149 = fcmp fast olt float %3064, 1.270000e+02
  %3150 = fcmp fast olt float %3065, 1.270000e+02
  %3151 = fcmp fast olt float %3066, 1.270000e+02
  %3152 = fmul fast float %3064, 0xBFF7154760000000
  %3153 = fmul fast float %3152, %3148
  %3154 = fmul fast float %3065, 0xBFF7154760000000
  %3155 = fmul fast float %3154, %3148
  %3156 = fmul fast float %3066, 0xBFF7154760000000
  %3157 = fmul fast float %3156, %3148
  %3158 = call float @dx.op.unary.f32(i32 21, float %3153)  ; Exp(value)
  %3159 = call float @dx.op.unary.f32(i32 21, float %3155)  ; Exp(value)
  %3160 = call float @dx.op.unary.f32(i32 21, float %3157)  ; Exp(value)
  %3161 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3162 = call float @dx.op.unary.f32(i32 7, float %3159)  ; Saturate(value)
  %3163 = call float @dx.op.unary.f32(i32 7, float %3160)  ; Saturate(value)
  %3164 = fadd fast float %3161, -1.000000e+00
  %3165 = select i1 %3149, float %3164, float -1.000000e+00
  %3166 = fadd fast float %3162, -1.000000e+00
  %3167 = select i1 %3150, float %3166, float -1.000000e+00
  %3168 = fadd fast float %3163, -1.000000e+00
  %3169 = select i1 %3151, float %3168, float -1.000000e+00
  %3170 = fmul fast float %3165, %2658
  %3171 = fmul fast float %3167, %2658
  %3172 = fmul fast float %3169, %2658
  %3173 = fadd fast float %3170, 1.000000e+00
  %3174 = fadd fast float %3171, 1.000000e+00
  %3175 = fadd fast float %3172, 1.000000e+00
  %3176 = fmul fast float %3173, %2343
  %3177 = fmul fast float %3174, %2344
  %3178 = fmul fast float %3175, %2345
  %3179 = fmul fast float %3173, %2346
  %3180 = fmul fast float %3174, %2347
  %3181 = fmul fast float %3175, %2348
  br label %3182

; <label>:3182                                    ; preds = %3147, %3128
  %3183 = phi float [ %3176, %3147 ], [ %2343, %3128 ]
  %3184 = phi float [ %3177, %3147 ], [ %2344, %3128 ]
  %3185 = phi float [ %3178, %3147 ], [ %2345, %3128 ]
  %3186 = phi float [ %3179, %3147 ], [ %2346, %3128 ]
  %3187 = phi float [ %3180, %3147 ], [ %2347, %3128 ]
  %3188 = phi float [ %3181, %3147 ], [ %2348, %3128 ]
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = and i32 %3190, 3
  %3192 = icmp eq i32 %3191, 3
  br i1 %3192, label %3271, label %3193

; <label>:3193                                    ; preds = %3182
  %3194 = and i32 %3190, 16
  %3195 = icmp ne i32 %3194, 0
  %3196 = select i1 %3195, float %2658, float 0.000000e+00
  %3197 = icmp eq i32 %3191, 0
  br i1 %3197, label %3198, label %3226

; <label>:3198                                    ; preds = %3193
  %3199 = and i32 %3190, 64
  %3200 = icmp ne i32 %3199, 0
  %3201 = select i1 %3200, float %2658, float 0.000000e+00
  %3202 = fsub fast float %2878, %3183
  %3203 = fsub fast float %2879, %3184
  %3204 = fsub fast float %2880, %3185
  %3205 = fmul fast float %3196, %3202
  %3206 = fmul fast float %3196, %3203
  %3207 = fmul fast float %3196, %3204
  %3208 = fadd fast float %3205, %3183
  %3209 = fadd fast float %3206, %3184
  %3210 = fadd fast float %3207, %3185
  %3211 = fsub fast float %2864, %2355
  %3212 = fmul fast float %3196, %3211
  %3213 = fadd fast float %3212, %2355
  %3214 = fsub fast float %3006, %3186
  %3215 = fsub fast float %3007, %3187
  %3216 = fsub fast float %3008, %3188
  %3217 = fmul fast float %3201, %3214
  %3218 = fmul fast float %3201, %3215
  %3219 = fmul fast float %3201, %3216
  %3220 = fadd fast float %3217, %3186
  %3221 = fadd fast float %3218, %3187
  %3222 = fadd fast float %3219, %3188
  %3223 = fsub fast float %3146, %2360
  %3224 = fmul fast float %3196, %3223
  %3225 = fadd fast float %3224, %2360
  br label %3271

; <label>:3226                                    ; preds = %3193
  %3227 = icmp eq i32 %3191, 1
  br i1 %3227, label %3228, label %3241

; <label>:3228                                    ; preds = %3226
  %3229 = fadd fast float %2878, -1.000000e+00
  %3230 = fadd fast float %2879, -1.000000e+00
  %3231 = fadd fast float %2880, -1.000000e+00
  %3232 = fmul fast float %3196, %3229
  %3233 = fmul fast float %3196, %3230
  %3234 = fmul fast float %3196, %3231
  %3235 = fadd fast float %3232, 1.000000e+00
  %3236 = fadd fast float %3233, 1.000000e+00
  %3237 = fadd fast float %3234, 1.000000e+00
  %3238 = fmul fast float %3235, %3183
  %3239 = fmul fast float %3236, %3184
  %3240 = fmul fast float %3237, %3185
  br label %3271

; <label>:3241                                    ; preds = %3226
  %3242 = icmp eq i32 %3191, 2
  br i1 %3242, label %3243, label %3271

; <label>:3243                                    ; preds = %3241
  %3244 = call float @dx.op.unary.f32(i32 24, float %2878)  ; Sqrt(value)
  %3245 = call float @dx.op.unary.f32(i32 24, float %2879)  ; Sqrt(value)
  %3246 = call float @dx.op.unary.f32(i32 24, float %2880)  ; Sqrt(value)
  %3247 = fadd fast float %3244, -5.000000e-01
  %3248 = fadd fast float %3245, -5.000000e-01
  %3249 = fadd fast float %3246, -5.000000e-01
  %3250 = fmul fast float %3247, %3196
  %3251 = fmul fast float %3248, %3196
  %3252 = fmul fast float %3249, %3196
  %3253 = fadd fast float %3250, 5.000000e-01
  %3254 = fadd fast float %3251, 5.000000e-01
  %3255 = fadd fast float %3252, 5.000000e-01
  %3256 = fmul fast float %3253, 2.000000e+00
  %3257 = fsub fast float 1.000000e+00, %3256
  %3258 = fmul fast float %3257, %3183
  %3259 = fadd fast float %3258, %3256
  %3260 = fmul fast float %3259, %3183
  %3261 = fmul fast float %3254, 2.000000e+00
  %3262 = fsub fast float 1.000000e+00, %3261
  %3263 = fmul fast float %3262, %3184
  %3264 = fadd fast float %3263, %3261
  %3265 = fmul fast float %3264, %3184
  %3266 = fmul fast float %3255, 2.000000e+00
  %3267 = fsub fast float 1.000000e+00, %3266
  %3268 = fmul fast float %3267, %3185
  %3269 = fadd fast float %3268, %3266
  %3270 = fmul fast float %3269, %3185
  br label %3271

; <label>:3271                                    ; preds = %3243, %3241, %3228, %3198, %3182
  %3272 = phi float [ %3183, %3182 ], [ %3260, %3243 ], [ %3183, %3241 ], [ %3238, %3228 ], [ %3208, %3198 ]
  %3273 = phi float [ %3184, %3182 ], [ %3265, %3243 ], [ %3184, %3241 ], [ %3239, %3228 ], [ %3209, %3198 ]
  %3274 = phi float [ %3185, %3182 ], [ %3270, %3243 ], [ %3185, %3241 ], [ %3240, %3228 ], [ %3210, %3198 ]
  %3275 = phi float [ %3186, %3182 ], [ %3186, %3243 ], [ %3186, %3241 ], [ %3186, %3228 ], [ %3220, %3198 ]
  %3276 = phi float [ %3187, %3182 ], [ %3187, %3243 ], [ %3187, %3241 ], [ %3187, %3228 ], [ %3221, %3198 ]
  %3277 = phi float [ %3188, %3182 ], [ %3188, %3243 ], [ %3188, %3241 ], [ %3188, %3228 ], [ %3222, %3198 ]
  %3278 = phi float [ %2355, %3182 ], [ %2355, %3243 ], [ %2355, %3241 ], [ %2355, %3228 ], [ %3213, %3198 ]
  %3279 = phi float [ %2360, %3182 ], [ %2360, %3243 ], [ %2360, %3241 ], [ %2360, %3228 ], [ %3225, %3198 ]
  %3280 = and i32 %3190, 12
  %3281 = icmp eq i32 %3280, 12
  br i1 %3281, label %3422, label %3282

; <label>:3282                                    ; preds = %3271
  %3283 = and i32 %3190, 2097184
  %3284 = icmp eq i32 %3283, 2097184
  %3285 = select i1 %3284, float %2658, float 0.000000e+00
  %3286 = and i32 %3190, 4194336
  %3287 = icmp eq i32 %3286, 4194336
  %3288 = select i1 %3287, float %2658, float 0.000000e+00
  %3289 = and i32 %3190, 8388640
  %3290 = icmp eq i32 %3289, 8388640
  %3291 = select i1 %3290, float %2658, float 0.000000e+00
  %3292 = and i32 %3190, 1024
  %3293 = icmp ne i32 %3292, 0
  %3294 = select i1 %3293, float %2658, float 0.000000e+00
  %3295 = and i32 %3190, 2048
  %3296 = icmp ne i32 %3295, 0
  %3297 = select i1 %3296, float %2658, float 0.000000e+00
  %3298 = and i32 %3190, 8192
  %3299 = icmp ne i32 %3298, 0
  %3300 = select i1 %3299, float %2658, float 0.000000e+00
  %3301 = and i32 %3190, 16384
  %3302 = icmp ne i32 %3301, 0
  %3303 = select i1 %3302, float %2658, float 0.000000e+00
  %3304 = icmp eq i32 %3280, 0
  br i1 %3304, label %3305, label %3342

; <label>:3305                                    ; preds = %3282
  %3306 = fsub fast float %2959, %2341
  %3307 = fsub fast float %2960, %2342
  %3308 = fmul fast float %3285, %3306
  %3309 = fmul fast float %3285, %3307
  %3310 = fadd fast float %3308, %2341
  %3311 = fadd fast float %3309, %2342
  %3312 = fsub fast float %2961, %2357
  %3313 = fmul fast float %3288, %3312
  %3314 = fadd fast float %3313, %2357
  %3315 = fsub fast float %2958, %2356
  %3316 = fmul fast float %3291, %3315
  %3317 = fadd fast float %3316, %2356
  %3318 = fsub fast float %3064, %2352
  %3319 = fsub fast float %3065, %2353
  %3320 = fsub fast float %3066, %2354
  %3321 = fmul fast float %3294, %3318
  %3322 = fmul fast float %3294, %3319
  %3323 = fmul fast float %3294, %3320
  %3324 = fadd fast float %3321, %2352
  %3325 = fadd fast float %3322, %2353
  %3326 = fadd fast float %3323, %2354
  %3327 = fsub fast float %3132, %2358
  %3328 = fmul fast float %3297, %3327
  %3329 = fadd fast float %3328, %2358
  %3330 = fsub fast float %3129, %2349
  %3331 = fsub fast float %3130, %2350
  %3332 = fsub fast float %3131, %2351
  %3333 = fmul fast float %3300, %3330
  %3334 = fmul fast float %3300, %3331
  %3335 = fmul fast float %3300, %3332
  %3336 = fadd fast float %3333, %2349
  %3337 = fadd fast float %3334, %2350
  %3338 = fadd fast float %3335, %2351
  %3339 = fsub fast float %3133, %2359
  %3340 = fmul fast float %3303, %3339
  %3341 = fadd fast float %3340, %2359
  br label %3422

; <label>:3342                                    ; preds = %3282
  %3343 = icmp eq i32 %3280, 4
  br i1 %3343, label %3344, label %3392

; <label>:3344                                    ; preds = %3342
  %3345 = fmul fast float %3285, %2959
  %3346 = fmul fast float %3285, %2960
  %3347 = fadd fast float %3345, %2341
  %3348 = fadd fast float %3346, %2342
  %3349 = call float @dx.op.binary.f32(i32 36, float %2357, float %2961)  ; FMin(a,b)
  %3350 = fsub fast float %3349, %2357
  %3351 = fmul fast float %3350, %3288
  %3352 = fadd fast float %3351, %2357
  %3353 = fadd fast float %2958, %2356
  %3354 = fmul fast float %3353, 0x3FF337FAE0000000
  %3355 = fmul fast float %2356, %2356
  %3356 = fmul fast float %2958, %2958
  %3357 = fadd fast float %3356, %3355
  %3358 = fmul fast float %3357, 0x3FE5152B00000000
  %3359 = fmul fast float %2356, 0xBFCC1F85E0000000
  %3360 = fmul fast float %3359, %2958
  %3361 = fadd fast float %3360, 0xBFE1363700000000
  %3362 = fadd fast float %3361, %3354
  %3363 = fsub fast float %3362, %3358
  %3364 = fmul fast float %3353, 0x3FBA6F0D00000000
  %3365 = fmul fast float %3357, 0x3FD0432880000000
  %3366 = fmul fast float %2356, 0xBFEF110800000000
  %3367 = fmul fast float %3366, %2958
  %3368 = fadd fast float %3367, 1.000000e+00
  %3369 = fsub fast float %3368, %3364
  %3370 = fadd fast float %3369, %3365
  %3371 = fdiv fast float %3363, %3370
  %3372 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3373 = fsub fast float %3372, %2356
  %3374 = fmul fast float %3373, %3291
  %3375 = fadd fast float %3374, %2356
  %3376 = fmul fast float %3294, %3064
  %3377 = fmul fast float %3294, %3065
  %3378 = fmul fast float %3294, %3066
  %3379 = fadd fast float %3376, %2352
  %3380 = fadd fast float %3377, %2353
  %3381 = fadd fast float %3378, %2354
  %3382 = fmul fast float %3297, %3132
  %3383 = fadd fast float %3382, %2358
  %3384 = fmul fast float %3300, %3129
  %3385 = fmul fast float %3300, %3130
  %3386 = fmul fast float %3300, %3131
  %3387 = fadd fast float %3384, %2349
  %3388 = fadd fast float %3385, %2350
  %3389 = fadd fast float %3386, %2351
  %3390 = fmul fast float %3303, %3133
  %3391 = fadd fast float %3390, %2359
  br label %3422

; <label>:3392                                    ; preds = %3342
  %3393 = icmp eq i32 %3280, 8
  br i1 %3393, label %3394, label %3422

; <label>:3394                                    ; preds = %3392
  %3395 = fmul fast float %3285, %2959
  %3396 = fmul fast float %3285, %2960
  %3397 = fadd fast float %3395, %2341
  %3398 = fadd fast float %3396, %2342
  %3399 = call float @dx.op.binary.f32(i32 36, float %2357, float %2961)  ; FMin(a,b)
  %3400 = fsub fast float %3399, %2357
  %3401 = fmul fast float %3400, %3288
  %3402 = fadd fast float %3401, %2357
  %3403 = fsub fast float %2958, %2356
  %3404 = fmul fast float %3291, %3403
  %3405 = fadd fast float %3404, %2356
  %3406 = fmul fast float %3294, %3064
  %3407 = fmul fast float %3294, %3065
  %3408 = fmul fast float %3294, %3066
  %3409 = fadd fast float %3406, %2352
  %3410 = fadd fast float %3407, %2353
  %3411 = fadd fast float %3408, %2354
  %3412 = fmul fast float %3297, %3132
  %3413 = fadd fast float %3412, %2358
  %3414 = fmul fast float %3300, %3129
  %3415 = fmul fast float %3300, %3130
  %3416 = fmul fast float %3300, %3131
  %3417 = fadd fast float %3414, %2349
  %3418 = fadd fast float %3415, %2350
  %3419 = fadd fast float %3416, %2351
  %3420 = fmul fast float %3303, %3133
  %3421 = fadd fast float %3420, %2359
  br label %3422

; <label>:3422                                    ; preds = %3394, %3392, %3344, %3305, %3271, %2657, %2361, %2340
  %3423 = phi float [ %2341, %3271 ], [ %2341, %2657 ], [ %2341, %2340 ], [ %3397, %3394 ], [ %2341, %3392 ], [ %3347, %3344 ], [ %3310, %3305 ], [ %2341, %2361 ]
  %3424 = phi float [ %2342, %3271 ], [ %2342, %2657 ], [ %2342, %2340 ], [ %3398, %3394 ], [ %2342, %3392 ], [ %3348, %3344 ], [ %3311, %3305 ], [ %2342, %2361 ]
  %3425 = phi float [ %3272, %3271 ], [ %2343, %2657 ], [ %2343, %2340 ], [ %3272, %3394 ], [ %3272, %3392 ], [ %3272, %3344 ], [ %3272, %3305 ], [ %2343, %2361 ]
  %3426 = phi float [ %3273, %3271 ], [ %2344, %2657 ], [ %2344, %2340 ], [ %3273, %3394 ], [ %3273, %3392 ], [ %3273, %3344 ], [ %3273, %3305 ], [ %2344, %2361 ]
  %3427 = phi float [ %3274, %3271 ], [ %2345, %2657 ], [ %2345, %2340 ], [ %3274, %3394 ], [ %3274, %3392 ], [ %3274, %3344 ], [ %3274, %3305 ], [ %2345, %2361 ]
  %3428 = phi float [ %3275, %3271 ], [ %2346, %2657 ], [ %2346, %2340 ], [ %3275, %3394 ], [ %3275, %3392 ], [ %3275, %3344 ], [ %3275, %3305 ], [ %2346, %2361 ]
  %3429 = phi float [ %3276, %3271 ], [ %2347, %2657 ], [ %2347, %2340 ], [ %3276, %3394 ], [ %3276, %3392 ], [ %3276, %3344 ], [ %3276, %3305 ], [ %2347, %2361 ]
  %3430 = phi float [ %3277, %3271 ], [ %2348, %2657 ], [ %2348, %2340 ], [ %3277, %3394 ], [ %3277, %3392 ], [ %3277, %3344 ], [ %3277, %3305 ], [ %2348, %2361 ]
  %3431 = phi float [ %2349, %3271 ], [ %2349, %2657 ], [ %2349, %2340 ], [ %3417, %3394 ], [ %2349, %3392 ], [ %3387, %3344 ], [ %3336, %3305 ], [ %2349, %2361 ]
  %3432 = phi float [ %2350, %3271 ], [ %2350, %2657 ], [ %2350, %2340 ], [ %3418, %3394 ], [ %2350, %3392 ], [ %3388, %3344 ], [ %3337, %3305 ], [ %2350, %2361 ]
  %3433 = phi float [ %2351, %3271 ], [ %2351, %2657 ], [ %2351, %2340 ], [ %3419, %3394 ], [ %2351, %3392 ], [ %3389, %3344 ], [ %3338, %3305 ], [ %2351, %2361 ]
  %3434 = phi float [ %2352, %3271 ], [ %2352, %2657 ], [ %2352, %2340 ], [ %3409, %3394 ], [ %2352, %3392 ], [ %3379, %3344 ], [ %3324, %3305 ], [ %2352, %2361 ]
  %3435 = phi float [ %2353, %3271 ], [ %2353, %2657 ], [ %2353, %2340 ], [ %3410, %3394 ], [ %2353, %3392 ], [ %3380, %3344 ], [ %3325, %3305 ], [ %2353, %2361 ]
  %3436 = phi float [ %2354, %3271 ], [ %2354, %2657 ], [ %2354, %2340 ], [ %3411, %3394 ], [ %2354, %3392 ], [ %3381, %3344 ], [ %3326, %3305 ], [ %2354, %2361 ]
  %3437 = phi float [ %3278, %3271 ], [ %2355, %2657 ], [ %2355, %2340 ], [ %3278, %3394 ], [ %3278, %3392 ], [ %3278, %3344 ], [ %3278, %3305 ], [ %2355, %2361 ]
  %3438 = phi float [ %2356, %3271 ], [ %2356, %2657 ], [ %2356, %2340 ], [ %3405, %3394 ], [ %2356, %3392 ], [ %3375, %3344 ], [ %3317, %3305 ], [ %2356, %2361 ]
  %3439 = phi float [ %2357, %3271 ], [ %2357, %2657 ], [ %2357, %2340 ], [ %3402, %3394 ], [ %2357, %3392 ], [ %3352, %3344 ], [ %3314, %3305 ], [ %2357, %2361 ]
  %3440 = phi float [ %2358, %3271 ], [ %2358, %2657 ], [ %2358, %2340 ], [ %3413, %3394 ], [ %2358, %3392 ], [ %3383, %3344 ], [ %3329, %3305 ], [ %2358, %2361 ]
  %3441 = phi float [ %2359, %3271 ], [ %2359, %2657 ], [ %2359, %2340 ], [ %3421, %3394 ], [ %2359, %3392 ], [ %3391, %3344 ], [ %3341, %3305 ], [ %2359, %2361 ]
  %3442 = phi float [ %3279, %3271 ], [ %2360, %2657 ], [ %2360, %2340 ], [ %3279, %3394 ], [ %3279, %3392 ], [ %3279, %3344 ], [ %3279, %3305 ], [ %2360, %2361 ]
  br i1 %420, label %4504, label %3443

; <label>:3443                                    ; preds = %3422
  %3444 = icmp ult i32 %474, 4
  %3445 = add i32 %62, 72
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = add i32 %62, 76
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = or i32 %3450, %3447
  %3452 = icmp eq i32 %3451, 0
  br i1 %3452, label %4504, label %3453

; <label>:3453                                    ; preds = %3443
  %3454 = and i32 %3447, 262144
  %3455 = icmp ne i32 %3454, 0
  %3456 = select i1 %3455, float %65, float 1.000000e+00
  %3457 = select i1 %3455, float %66, float 0.000000e+00
  %3458 = select i1 %3455, float %67, float 0.000000e+00
  %3459 = select i1 %3455, float %68, float 1.000000e+00
  %3460 = select i1 %3455, float %69, float %90
  %3461 = select i1 %3455, float %70, float %91
  %3462 = add i32 %62, 332
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = lshr i32 %3464, 16
  %3466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3465)  ; LegacyF16ToF32(value)
  %3467 = fmul fast float %3466, 0x3F50624DE0000000
  %3468 = add i32 %62, 136
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = lshr i32 %3470, 16
  %3472 = and i32 %3471, 255
  %3473 = lshr i32 %3470, 24
  %3474 = add i32 %62, 340
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = and i32 %3476, 65535
  %3478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3477)  ; LegacyF16ToF32(value)
  %3479 = lshr i32 %3476, 16
  %3480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3479)  ; LegacyF16ToF32(value)
  %3481 = add i32 %62, 80
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = lshr i32 %3483, 22
  %3485 = shl nuw nsw i32 %3484, 5
  %3486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3485)  ; LegacyF16ToF32(value)
  %3487 = shl i32 %3483, 4
  %3488 = and i32 %3487, 32752
  %3489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3488)  ; LegacyF16ToF32(value)
  %3490 = lshr i32 %3483, 7
  %3491 = and i32 %3490, 32752
  %3492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3491)  ; LegacyF16ToF32(value)
  %3493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3493, 3
  %3495 = fmul fast float %3494, 1.000000e+03
  %3496 = fmul fast float %410, %3495
  %3497 = call float @dx.op.unary.f32(i32 22, float %3496)  ; Frc(value)
  %3498 = fadd fast float %3497, %400
  %3499 = fmul fast float %411, %3495
  %3500 = call float @dx.op.unary.f32(i32 22, float %3499)  ; Frc(value)
  %3501 = fadd fast float %3500, %402
  %3502 = fmul fast float %3467, %3495
  %3503 = call float @dx.op.unary.f32(i32 22, float %3502)  ; Frc(value)
  %3504 = fmul fast float %3503, 0x401921FB60000000
  %3505 = fadd fast float %3504, %3486
  %3506 = call float @dx.op.unary.f32(i32 13, float %3505)  ; Sin(value)
  %3507 = call float @dx.op.unary.f32(i32 12, float %3505)  ; Cos(value)
  %3508 = fsub fast float -0.000000e+00, %3506
  %3509 = fadd fast float %3460, -5.000000e-01
  %3510 = fadd fast float %3461, -5.000000e-01
  %3511 = fmul fast float %3478, %3509
  %3512 = fmul fast float %3480, %3510
  %3513 = fadd fast float %3511, 5.000000e-01
  %3514 = fadd fast float %3512, 5.000000e-01
  %3515 = fmul fast float %3489, %3513
  %3516 = fmul fast float %3492, %3514
  %3517 = fmul fast float %3507, %3515
  %3518 = call float @dx.op.tertiary.f32(i32 46, float %3508, float %3516, float %3517)  ; FMad(a,b,c)
  %3519 = fmul fast float %3506, %3515
  %3520 = call float @dx.op.tertiary.f32(i32 46, float %3507, float %3516, float %3519)  ; FMad(a,b,c)
  %3521 = fadd fast float %3498, %3518
  %3522 = fadd fast float %3501, %3520
  %3523 = icmp ugt i32 %3472, 1
  %3524 = icmp ugt i32 %3470, 33554431
  %3525 = or i1 %3524, %3523
  br i1 %3525, label %3526, label %3551

; <label>:3526                                    ; preds = %3453
  %3527 = add i32 %62, 276
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = lshr i32 %3529, 16
  %3531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3530)  ; LegacyF16ToF32(value)
  %3532 = fmul fast float %3494, %3531
  %3533 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3534 = mul nuw nsw i32 %3472, %3473
  %3535 = uitofp i32 %3534 to float
  %3536 = fmul fast float %3533, %3535
  %3537 = call float @dx.op.unary.f32(i32 27, float %3536)  ; Round_ni(value)
  %3538 = fptoui float %3537 to i32
  %3539 = urem i32 %3538, %3472
  %3540 = udiv i32 %3538, %3473
  %3541 = call float @dx.op.unary.f32(i32 22, float %3521)  ; Frc(value)
  %3542 = call float @dx.op.unary.f32(i32 22, float %3522)  ; Frc(value)
  %3543 = uitofp i32 %3539 to float
  %3544 = uitofp i32 %3540 to float
  %3545 = fadd fast float %3541, %3543
  %3546 = fadd fast float %3542, %3544
  %3547 = uitofp i32 %3472 to float
  %3548 = uitofp i32 %3473 to float
  %3549 = fdiv fast float %3545, %3547
  %3550 = fdiv fast float %3546, %3548
  br label %3551

; <label>:3551                                    ; preds = %3526, %3453
  %3552 = phi float [ %3549, %3526 ], [ %3521, %3453 ]
  %3553 = phi float [ %3550, %3526 ], [ %3522, %3453 ]
  %3554 = and i32 %3447, 16777216
  %3555 = icmp eq i32 %3554, 0
  br i1 %3555, label %3665, label %3556

; <label>:3556                                    ; preds = %3551
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 0
  %3559 = extractvalue %dx.types.CBufRet.f32 %3557, 1
  %3560 = extractvalue %dx.types.CBufRet.f32 %3557, 2
  %3561 = fadd fast float %3558, %170
  %3562 = fadd fast float %3559, %171
  %3563 = fadd fast float %3560, %172
  %3564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3565 = extractvalue %dx.types.CBufRet.f32 %3564, 0
  %3566 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3567 = icmp eq i32 %63, 65535
  br i1 %3567, label %3662, label %3568

; <label>:3568                                    ; preds = %3556
  %3569 = lshr i32 %63, 1
  %3570 = shl i32 %3569, 2
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = and i32 %63, 1
  %3574 = icmp ne i32 %3573, 0
  %3575 = lshr i32 %3572, 16
  %3576 = and i32 %3572, 65535
  %3577 = select i1 %3574, i32 %3575, i32 %3576
  %3578 = icmp eq i32 %3577, 65535
  br i1 %3578, label %3658, label %3579

; <label>:3579                                    ; preds = %3568
  %3580 = mul nuw nsw i32 %3577, 40
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3585 = add nuw nsw i32 %3580, 12
  %3586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = add nuw nsw i32 %3580, 24
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3595 = add nuw nsw i32 %3580, 36
  %3596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = fsub fast float %3561, %3582
  %3599 = fsub fast float %3562, %3583
  %3600 = fsub fast float %3563, %3584
  %3601 = fmul fast float %3597, %3598
  %3602 = fmul fast float %3597, %3599
  %3603 = fmul fast float %3597, %3600
  %3604 = call float @dx.op.unary.f32(i32 27, float %3601)  ; Round_ni(value)
  %3605 = call float @dx.op.unary.f32(i32 27, float %3602)  ; Round_ni(value)
  %3606 = call float @dx.op.unary.f32(i32 27, float %3603)  ; Round_ni(value)
  %3607 = fadd fast float %3604, 5.000000e-01
  %3608 = fadd fast float %3605, 5.000000e-01
  %3609 = fadd fast float %3606, 5.000000e-01
  %3610 = fmul fast float %3607, %3587
  %3611 = fmul fast float %3608, %3588
  %3612 = fmul fast float %3609, %3589
  %3613 = shl i32 %63, 2
  %3614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.i32 %3614, 0
  %3616 = add i32 %3615, 0
  %3617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3618 = call float @dx.op.unary.f32(i32 22, float %3610)  ; Frc(value)
  %3619 = call float @dx.op.unary.f32(i32 22, float %3611)  ; Frc(value)
  %3620 = call float @dx.op.unary.f32(i32 22, float %3612)  ; Frc(value)
  %3621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3617, %dx.types.Handle %55, float %3618, float %3619, float %3620, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = fmul fast float %3622, 1.023000e+03
  %3626 = fmul fast float %3623, 1.023000e+03
  %3627 = fmul fast float %3624, 1.023000e+03
  %3628 = fadd fast float %3625, 5.000000e-01
  %3629 = fadd fast float %3626, 5.000000e-01
  %3630 = fadd fast float %3627, 5.000000e-01
  %3631 = call float @dx.op.unary.f32(i32 27, float %3628)  ; Round_ni(value)
  %3632 = call float @dx.op.unary.f32(i32 27, float %3629)  ; Round_ni(value)
  %3633 = call float @dx.op.unary.f32(i32 27, float %3630)  ; Round_ni(value)
  %3634 = fsub fast float %3601, %3604
  %3635 = fsub fast float %3602, %3605
  %3636 = fsub fast float %3603, %3606
  %3637 = fmul fast float %3634, 7.500000e-01
  %3638 = fmul fast float %3635, 7.500000e-01
  %3639 = fmul fast float %3636, 7.500000e-01
  %3640 = fadd fast float %3604, 1.250000e-01
  %3641 = fadd fast float %3640, %3637
  %3642 = fadd fast float %3641, %3631
  %3643 = fadd fast float %3605, 1.250000e-01
  %3644 = fadd fast float %3643, %3638
  %3645 = fadd fast float %3644, %3632
  %3646 = fadd fast float %3606, 1.250000e-01
  %3647 = fadd fast float %3646, %3639
  %3648 = fadd fast float %3647, %3633
  %3649 = fmul fast float %3642, %3592
  %3650 = fmul fast float %3645, %3593
  %3651 = fmul fast float %3648, %3594
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = add i32 %3653, 0
  %3655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3655, %dx.types.Handle %53, float %3649, float %3650, float %3651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  br label %3658

; <label>:3658                                    ; preds = %3579, %3568
  %3659 = phi float [ %3657, %3579 ], [ -1.000000e+00, %3568 ]
  %3660 = fadd fast float %3659, %3566
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  br label %3662

; <label>:3662                                    ; preds = %3658, %3556
  %3663 = phi float [ %3661, %3658 ], [ %3566, %3556 ]
  %3664 = fmul fast float %3663, %469
  br label %3665

; <label>:3665                                    ; preds = %3662, %3551
  %3666 = phi float [ %3664, %3662 ], [ %469, %3551 ]
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = and i32 %3668, 256
  %3670 = icmp eq i32 %3669, 0
  br i1 %3670, label %3717, label %3671

; <label>:3671                                    ; preds = %3665
  %3672 = add i32 %62, 516
  %3673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3672, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.i32 %3673, 0
  %3675 = add i32 %3674, 0
  %3676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3676, %dx.types.Handle %108, float %3552, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = add i32 %62, 148
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = shl i32 %3681, 4
  %3683 = and i32 %3682, 32752
  %3684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3683)  ; LegacyF16ToF32(value)
  %3685 = lshr i32 %3681, 7
  %3686 = and i32 %3685, 32752
  %3687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3686)  ; LegacyF16ToF32(value)
  %3688 = fsub fast float 1.000000e+00, %3666
  %3689 = call float @dx.op.binary.f32(i32 35, float %3688, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3690 = bitcast float %3666 to i32
  %3691 = sitofp i32 %3690 to float
  %3692 = fadd fast float %3691, 0xC1CFBF8940000000
  %3693 = fmul fast float %3687, %3692
  %3694 = fadd fast float %3693, 0x41CFBF8940000000
  %3695 = fptosi float %3694 to i32
  %3696 = bitcast i32 %3695 to float
  %3697 = bitcast float %3689 to i32
  %3698 = sitofp i32 %3697 to float
  %3699 = fadd fast float %3698, 0xC1CFBF8940000000
  %3700 = fmul fast float %3699, %3687
  %3701 = fadd fast float %3700, 0x41CFBF8940000000
  %3702 = fptosi float %3701 to i32
  %3703 = bitcast i32 %3702 to float
  %3704 = fmul fast float %3696, %3684
  %3705 = fmul fast float %3703, %3684
  %3706 = fsub fast float %3689, %3704
  %3707 = fadd fast float %3705, %3689
  %3708 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3709 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3710 = fsub fast float %3678, %3708
  %3711 = fsub fast float %3709, %3708
  %3712 = bitcast float %3711 to i32
  %3713 = sub nsw i32 2129859010, %3712
  %3714 = bitcast i32 %3713 to float
  %3715 = fmul fast float %3714, %3710
  %3716 = call float @dx.op.unary.f32(i32 7, float %3715)  ; Saturate(value)
  br label %3717

; <label>:3717                                    ; preds = %3671, %3665
  %3718 = phi float [ %3716, %3671 ], [ %3666, %3665 ]
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = and i32 %3720, 128
  %3722 = icmp eq i32 %3721, 0
  br i1 %3722, label %3739, label %3723

; <label>:3723                                    ; preds = %3717
  %3724 = add i32 %62, 500
  %3725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3724, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.i32 %3725, 0
  %3727 = add i32 %3726, 0
  %3728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3729 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3728, %dx.types.Handle %108, float %3552, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.i32 %3731, 0
  %3733 = and i32 %3732, 524288
  %3734 = icmp ne i32 %3733, 0
  %3735 = fcmp fast ogt float %3730, 0x3FE0101020000000
  %3736 = select i1 %3735, float 1.000000e+00, float 0.000000e+00
  %3737 = select i1 %3734, float %3736, float %3730
  %3738 = fmul fast float %3737, %3718
  br label %3739

; <label>:3739                                    ; preds = %3723, %3717
  %3740 = phi float [ %3738, %3723 ], [ %3718, %3717 ]
  %3741 = fcmp fast ult float %3740, 0x3F70101020000000
  br i1 %3741, label %4504, label %3742

; <label>:3742                                    ; preds = %3739
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = and i32 %3744, 16
  %3746 = icmp eq i32 %3745, 0
  br i1 %3746, label %3945, label %3747

; <label>:3747                                    ; preds = %3742
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = add i32 %62, 452
  %3751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.i32 %3751, 0
  %3753 = add i32 %3752, 0
  %3754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3754, %dx.types.Handle %107, float %3552, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.ResRet.f32 %3755, 2
  %3759 = extractvalue %dx.types.ResRet.f32 %3755, 3
  %3760 = and i32 %3749, 255
  %3761 = uitofp i32 %3760 to float
  %3762 = lshr i32 %3749, 8
  %3763 = and i32 %3762, 255
  %3764 = uitofp i32 %3763 to float
  %3765 = fmul fast float %3759, %3761
  %3766 = fadd fast float %3765, %3764
  %3767 = fmul fast float %3766, 0x3F70101000000000
  %3768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.i32 %3768, 0
  %3770 = and i32 %3769, 512
  %3771 = icmp eq i32 %3770, 0
  br i1 %3771, label %3780, label %3772

; <label>:3772                                    ; preds = %3747
  %3773 = add i32 %62, 532
  %3774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.i32 %3774, 0
  %3776 = add i32 %3775, 0
  %3777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3776, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3778 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3777, %dx.types.Handle %108, float %3552, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  br label %3780

; <label>:3780                                    ; preds = %3772, %3747
  %3781 = phi float [ %3779, %3772 ], [ 1.000000e+00, %3747 ]
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = and i32 %3783, 33554432
  %3785 = icmp eq i32 %3784, 0
  br i1 %3785, label %3892, label %3786

; <label>:3786                                    ; preds = %3780
  %3787 = add i32 %62, 272
  %3788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3787, i32 undef)  ; BufferLoad(srv,index,wot)
  %3789 = extractvalue %dx.types.ResRet.i32 %3788, 0
  %3790 = and i32 %3789, 65535
  %3791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3790)  ; LegacyF16ToF32(value)
  %3792 = lshr i32 %3789, 16
  %3793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3792)  ; LegacyF16ToF32(value)
  %3794 = add i32 %62, 276
  %3795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.i32 %3795, 0
  %3797 = and i32 %3796, 65535
  %3798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3797)  ; LegacyF16ToF32(value)
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = lshr i32 %3800, 24
  %3802 = uitofp i32 %3801 to float
  %3803 = fmul fast float %3802, 0x3F70101020000000
  %3804 = and i32 %3800, 255
  %3805 = uitofp i32 %3804 to float
  %3806 = fmul fast float %3805, 0x3F70101020000000
  %3807 = lshr i32 %3800, 8
  %3808 = and i32 %3807, 255
  %3809 = uitofp i32 %3808 to float
  %3810 = fmul fast float %3809, 0x3F70101020000000
  %3811 = lshr i32 %3800, 16
  %3812 = and i32 %3811, 255
  %3813 = uitofp i32 %3812 to float
  %3814 = fmul fast float %3813, 0x3F70101020000000
  %3815 = add i32 %62, 268
  %3816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.i32 %3816, 0
  %3818 = lshr i32 %3817, 24
  %3819 = uitofp i32 %3818 to float
  %3820 = fmul fast float %3819, 0x3F70101020000000
  %3821 = and i32 %3817, 255
  %3822 = uitofp i32 %3821 to float
  %3823 = fmul fast float %3822, 0x3F70101020000000
  %3824 = lshr i32 %3817, 8
  %3825 = and i32 %3824, 255
  %3826 = uitofp i32 %3825 to float
  %3827 = fmul fast float %3826, 0x3F70101020000000
  %3828 = lshr i32 %3817, 16
  %3829 = and i32 %3828, 255
  %3830 = uitofp i32 %3829 to float
  %3831 = fmul fast float %3830, 0x3F70101020000000
  %3832 = bitcast float %3756 to i32
  %3833 = ashr i32 %3832, 1
  %3834 = sub nsw i32 1597463174, %3833
  %3835 = bitcast i32 %3834 to float
  %3836 = fmul fast float %3756, 5.000000e-01
  %3837 = fmul fast float %3835, %3835
  %3838 = fmul fast float %3837, %3836
  %3839 = fsub fast float 1.500000e+00, %3838
  %3840 = fmul fast float %3835, %3756
  %3841 = fmul fast float %3840, %3839
  %3842 = bitcast float %3757 to i32
  %3843 = ashr i32 %3842, 1
  %3844 = sub nsw i32 1597463174, %3843
  %3845 = bitcast i32 %3844 to float
  %3846 = fmul fast float %3757, 5.000000e-01
  %3847 = fmul fast float %3845, %3845
  %3848 = fmul fast float %3847, %3846
  %3849 = fsub fast float 1.500000e+00, %3848
  %3850 = fmul fast float %3845, %3757
  %3851 = fmul fast float %3850, %3849
  %3852 = bitcast float %3758 to i32
  %3853 = ashr i32 %3852, 1
  %3854 = sub nsw i32 1597463174, %3853
  %3855 = bitcast i32 %3854 to float
  %3856 = fmul fast float %3758, 5.000000e-01
  %3857 = fmul fast float %3855, %3855
  %3858 = fmul fast float %3857, %3856
  %3859 = fsub fast float 1.500000e+00, %3858
  %3860 = fmul fast float %3855, %3758
  %3861 = fmul fast float %3860, %3859
  %3862 = fsub fast float %3841, %3823
  %3863 = fsub fast float %3851, %3827
  %3864 = fsub fast float %3861, %3831
  %3865 = fmul fast float %3862, %3791
  %3866 = fmul fast float %3863, %3793
  %3867 = fmul fast float %3864, %3798
  %3868 = fadd fast float %3865, %3806
  %3869 = fadd fast float %3866, %3810
  %3870 = fadd fast float %3867, %3814
  %3871 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3872 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3873 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3874 = fmul fast float %3871, %3871
  %3875 = fmul fast float %3872, %3872
  %3876 = fmul fast float %3873, %3873
  %3877 = fsub fast float %3874, %3756
  %3878 = fsub fast float %3875, %3757
  %3879 = fsub fast float %3876, %3758
  %3880 = fmul fast float %3877, %3781
  %3881 = fmul fast float %3878, %3781
  %3882 = fmul fast float %3879, %3781
  %3883 = fadd fast float %3880, %3756
  %3884 = fadd fast float %3881, %3757
  %3885 = fadd fast float %3882, %3758
  %3886 = fadd fast float %3803, %3767
  %3887 = fsub fast float %3886, %3820
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = fsub fast float %3888, %3767
  %3890 = fmul fast float %3889, %3781
  %3891 = fadd fast float %3890, %3767
  br label %3945

; <label>:3892                                    ; preds = %3780
  %3893 = and i32 %3783, 134217728
  %3894 = icmp eq i32 %3893, 0
  br i1 %3894, label %3929, label %3895

; <label>:3895                                    ; preds = %3892
  %3896 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3897 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %3898 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %3899 = fadd fast float %3896, -5.000000e-01
  %3900 = fadd fast float %3897, -5.000000e-01
  %3901 = fadd fast float %3898, -5.000000e-01
  %3902 = fmul fast float %3899, %3781
  %3903 = fmul fast float %3900, %3781
  %3904 = fmul fast float %3901, %3781
  %3905 = fadd fast float %3902, 5.000000e-01
  %3906 = fadd fast float %3903, 5.000000e-01
  %3907 = fadd fast float %3904, 5.000000e-01
  %3908 = call float @dx.op.unary.f32(i32 24, float %3756)  ; Sqrt(value)
  %3909 = call float @dx.op.unary.f32(i32 24, float %3757)  ; Sqrt(value)
  %3910 = call float @dx.op.unary.f32(i32 24, float %3758)  ; Sqrt(value)
  %3911 = fmul fast float %3905, 2.000000e+00
  %3912 = fsub fast float 1.000000e+00, %3911
  %3913 = fmul fast float %3912, %3908
  %3914 = fadd fast float %3913, %3911
  %3915 = fmul fast float %3914, %3908
  %3916 = fmul fast float %3906, 2.000000e+00
  %3917 = fsub fast float 1.000000e+00, %3916
  %3918 = fmul fast float %3917, %3909
  %3919 = fadd fast float %3918, %3916
  %3920 = fmul fast float %3919, %3909
  %3921 = fmul fast float %3907, 2.000000e+00
  %3922 = fsub fast float 1.000000e+00, %3921
  %3923 = fmul fast float %3922, %3910
  %3924 = fadd fast float %3923, %3921
  %3925 = fmul fast float %3924, %3910
  %3926 = fmul fast float %3915, %3915
  %3927 = fmul fast float %3920, %3920
  %3928 = fmul fast float %3925, %3925
  br label %3945

; <label>:3929                                    ; preds = %3892
  %3930 = fmul fast float %387, %387
  %3931 = fmul fast float %391, %391
  %3932 = fmul fast float %395, %395
  %3933 = fadd fast float %3930, -1.000000e+00
  %3934 = fadd fast float %3931, -1.000000e+00
  %3935 = fadd fast float %3932, -1.000000e+00
  %3936 = fmul fast float %3781, %3933
  %3937 = fmul fast float %3781, %3934
  %3938 = fmul fast float %3781, %3935
  %3939 = fadd fast float %3936, 1.000000e+00
  %3940 = fadd fast float %3937, 1.000000e+00
  %3941 = fadd fast float %3938, 1.000000e+00
  %3942 = fmul fast float %3939, %3756
  %3943 = fmul fast float %3940, %3757
  %3944 = fmul fast float %3941, %3758
  br label %3945

; <label>:3945                                    ; preds = %3929, %3895, %3786, %3742
  %3946 = phi float [ %3891, %3786 ], [ %3767, %3895 ], [ %3767, %3929 ], [ 0x3FA23C0BE0000000, %3742 ]
  %3947 = phi float [ %3883, %3786 ], [ %3926, %3895 ], [ %3942, %3929 ], [ 1.000000e+00, %3742 ]
  %3948 = phi float [ %3884, %3786 ], [ %3927, %3895 ], [ %3943, %3929 ], [ 1.000000e+00, %3742 ]
  %3949 = phi float [ %3885, %3786 ], [ %3928, %3895 ], [ %3944, %3929 ], [ 1.000000e+00, %3742 ]
  %3950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.i32 %3950, 1
  %3952 = and i32 %3951, 1
  %3953 = icmp ne i32 %3952, 0
  %3954 = add i32 %62, 356
  %3955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3954, i32 undef)  ; BufferLoad(srv,index,wot)
  %3956 = extractvalue %dx.types.ResRet.i32 %3955, 0
  %3957 = and i32 %3956, 32
  %3958 = icmp ne i32 %3957, 0
  %3959 = and i1 %3953, %3958
  %3960 = select i1 %3959, float 1.000000e+00, float %3947
  %3961 = select i1 %3959, float 0x3FD3333340000000, float %3948
  %3962 = select i1 %3959, float 0x3FD3333340000000, float %3949
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = and i32 %3964, 32
  %3966 = icmp eq i32 %3965, 0
  br i1 %3966, label %4039, label %3967

; <label>:3967                                    ; preds = %3945
  %3968 = add i32 %62, 140
  %3969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.i32 %3969, 0
  %3971 = add i32 %62, 468
  %3972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3971, i32 undef)  ; BufferLoad(srv,index,wot)
  %3973 = extractvalue %dx.types.ResRet.i32 %3972, 0
  %3974 = add i32 %3973, 0
  %3975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3975, %dx.types.Handle %107, float %3552, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = extractvalue %dx.types.ResRet.f32 %3976, 3
  %3981 = and i32 %3970, 255
  %3982 = uitofp i32 %3981 to float
  %3983 = lshr i32 %3970, 8
  %3984 = and i32 %3983, 255
  %3985 = uitofp i32 %3984 to float
  %3986 = lshr i32 %3970, 16
  %3987 = and i32 %3986, 255
  %3988 = uitofp i32 %3987 to float
  %3989 = fmul fast float %3988, 0x3F70101000000000
  %3990 = fmul fast float %3977, %3982
  %3991 = fadd fast float %3990, %3985
  %3992 = fmul fast float %3991, 0x3F70101000000000
  %3993 = fadd fast float %3978, -5.000000e-01
  %3994 = fadd fast float %3980, -5.000000e-01
  %3995 = fmul fast float %3993, %3989
  %3996 = fmul fast float %3994, %3989
  %3997 = fadd fast float %3995, 5.000000e-01
  %3998 = fadd fast float %3996, 5.000000e-01
  %3999 = fmul fast float %3997, 2.000000e+00
  %4000 = fadd fast float %3999, -1.000000e+00
  %4001 = fmul fast float %3998, 2.000000e+00
  %4002 = fadd fast float %4001, -1.000000e+00
  %4003 = fadd fast float %4000, %4002
  %4004 = fmul fast float %4003, 5.000000e-01
  %4005 = fsub fast float %4000, %4002
  %4006 = fmul fast float %4005, 5.000000e-01
  %4007 = call float @dx.op.unary.f32(i32 6, float %4004)  ; FAbs(value)
  %4008 = fsub fast float 1.000000e+00, %4007
  %4009 = call float @dx.op.unary.f32(i32 6, float %4006)  ; FAbs(value)
  %4010 = fsub fast float %4008, %4009
  %4011 = call float @dx.op.dot3.f32(i32 55, float %4004, float %4006, float %4010, float %4004, float %4006, float %4010)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = call float @dx.op.unary.f32(i32 25, float %4011)  ; Rsqrt(value)
  %4013 = fmul fast float %4004, %4012
  %4014 = fmul fast float %4006, %4012
  %4015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.i32 %4015, 0
  %4017 = and i32 %4016, 67108864
  %4018 = icmp eq i32 %4017, 0
  br i1 %4018, label %4035, label %4019

; <label>:4019                                    ; preds = %3967
  %4020 = add i32 %62, 328
  %4021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4020, i32 undef)  ; BufferLoad(srv,index,wot)
  %4022 = extractvalue %dx.types.ResRet.i32 %4021, 0
  %4023 = and i32 %4022, 65535
  %4024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4023)  ; LegacyF16ToF32(value)
  %4025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3462, i32 undef)  ; BufferLoad(srv,index,wot)
  %4026 = extractvalue %dx.types.ResRet.i32 %4025, 0
  %4027 = and i32 %4026, 65535
  %4028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4027)  ; LegacyF16ToF32(value)
  %4029 = lshr i32 %4022, 16
  %4030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4029)  ; LegacyF16ToF32(value)
  %4031 = fsub fast float %3992, %4030
  %4032 = fmul fast float %4031, %4024
  %4033 = fadd fast float %4032, %4028
  %4034 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  br label %4035

; <label>:4035                                    ; preds = %4019, %3967
  %4036 = phi float [ %4034, %4019 ], [ %3992, %3967 ]
  %4037 = call float @dx.op.dot2.f32(i32 54, float %4013, float %4014, float %3456, float %3457)  ; Dot2(ax,ay,bx,by)
  %4038 = call float @dx.op.dot2.f32(i32 54, float %4013, float %4014, float %3458, float %3459)  ; Dot2(ax,ay,bx,by)
  br label %4039

; <label>:4039                                    ; preds = %4035, %3945
  %4040 = phi float [ %4036, %4035 ], [ 0x3FD6666660000000, %3945 ]
  %4041 = phi float [ %4037, %4035 ], [ 0.000000e+00, %3945 ]
  %4042 = phi float [ %4038, %4035 ], [ 0.000000e+00, %3945 ]
  %4043 = phi float [ %3979, %4035 ], [ 1.000000e+00, %3945 ]
  %4044 = add i32 %62, 208
  %4045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4046 = extractvalue %dx.types.ResRet.i32 %4045, 0
  %4047 = lshr i32 %4046, 22
  %4048 = shl nuw nsw i32 %4047, 5
  %4049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4048)  ; LegacyF16ToF32(value)
  %4050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.i32 %4050, 0
  %4052 = and i32 %4051, 64
  %4053 = icmp eq i32 %4052, 0
  br i1 %4053, label %4087, label %4054

; <label>:4054                                    ; preds = %4039
  %4055 = add i32 %62, 484
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = add i32 %4057, 0
  %4059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.i32 %4060, 0
  %4062 = and i32 %4061, 131072
  %4063 = icmp eq i32 %4062, 0
  %4064 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4059, %dx.types.Handle %107, float %3552, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.ResRet.f32 %4064, 1
  %4067 = extractvalue %dx.types.ResRet.f32 %4064, 2
  %4068 = fmul fast float %4065, %375
  %4069 = fmul fast float %4066, %378
  %4070 = fmul fast float %4067, %381
  br i1 %4063, label %4077, label %4071

; <label>:4071                                    ; preds = %4054
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = fmul fast float %4073, %4068
  %4075 = fmul fast float %4073, %4069
  %4076 = fmul fast float %4073, %4070
  br label %4077

; <label>:4077                                    ; preds = %4071, %4054
  %4078 = phi float [ %4074, %4071 ], [ %4068, %4054 ]
  %4079 = phi float [ %4075, %4071 ], [ %4069, %4054 ]
  %4080 = phi float [ %4076, %4071 ], [ %4070, %4054 ]
  %4081 = fmul fast float %4078, %4049
  %4082 = select i1 %232, float %4081, float %4078
  %4083 = call float @dx.op.dot3.f32(i32 55, float %4082, float %4079, float %4080, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4084 = select i1 %232, float 0.000000e+00, float %4078
  %4085 = select i1 %232, float %4083, float %4079
  %4086 = select i1 %232, float 0.000000e+00, float %4080
  br label %4087

; <label>:4087                                    ; preds = %4077, %4039
  %4088 = phi float [ %4084, %4077 ], [ 0.000000e+00, %4039 ]
  %4089 = phi float [ %4085, %4077 ], [ 0.000000e+00, %4039 ]
  %4090 = phi float [ %4086, %4077 ], [ 0.000000e+00, %4039 ]
  %4091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4092 = extractvalue %dx.types.ResRet.i32 %4091, 0
  %4093 = and i32 %4092, 1024
  %4094 = icmp eq i32 %4093, 0
  br i1 %4094, label %4125, label %4095

; <label>:4095                                    ; preds = %4087
  %4096 = add i32 %62, 200
  %4097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4096, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.i32 %4097, 0
  %4099 = and i32 %4098, 255
  %4100 = uitofp i32 %4099 to float
  %4101 = fmul fast float %4100, 0x3F70101020000000
  %4102 = lshr i32 %4098, 8
  %4103 = and i32 %4102, 255
  %4104 = uitofp i32 %4103 to float
  %4105 = fmul fast float %4104, 0x3F70101020000000
  %4106 = lshr i32 %4098, 16
  %4107 = and i32 %4106, 255
  %4108 = uitofp i32 %4107 to float
  %4109 = fmul fast float %4108, 0x3F70101020000000
  %4110 = fmul fast float %4101, %4101
  %4111 = fmul fast float %4105, %4105
  %4112 = fmul fast float %4109, %4109
  %4113 = add i32 %62, 548
  %4114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4113, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.i32 %4114, 0
  %4116 = add i32 %4115, 0
  %4117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4117, %dx.types.Handle %108, float %3552, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = fmul fast float %4110, %4119
  %4123 = fmul fast float %4111, %4120
  %4124 = fmul fast float %4112, %4121
  br label %4125

; <label>:4125                                    ; preds = %4095, %4087
  %4126 = phi float [ %4122, %4095 ], [ 0.000000e+00, %4087 ]
  %4127 = phi float [ %4123, %4095 ], [ 0.000000e+00, %4087 ]
  %4128 = phi float [ %4124, %4095 ], [ 0.000000e+00, %4087 ]
  %4129 = fcmp fast ogt float %4126, 0.000000e+00
  %4130 = fcmp fast ogt float %4127, 0.000000e+00
  %4131 = fcmp fast ogt float %4128, 0.000000e+00
  %4132 = call float @dx.op.unary.f32(i32 23, float %4126)  ; Log(value)
  %4133 = call float @dx.op.unary.f32(i32 23, float %4127)  ; Log(value)
  %4134 = call float @dx.op.unary.f32(i32 23, float %4128)  ; Log(value)
  %4135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4136 = extractvalue %dx.types.ResRet.i32 %4135, 0
  %4137 = lshr i32 %4136, 7
  %4138 = and i32 %4137, 32752
  %4139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4138)  ; LegacyF16ToF32(value)
  %4140 = fmul fast float %4132, 0xBFE62E4300000000
  %4141 = fmul fast float %4140, %4139
  %4142 = fmul fast float %4133, 0xBFE62E4300000000
  %4143 = fmul fast float %4142, %4139
  %4144 = fmul fast float %4134, 0xBFE62E4300000000
  %4145 = fmul fast float %4144, %4139
  %4146 = select i1 %4129, float %4141, float 1.270000e+02
  %4147 = select i1 %4130, float %4143, float 1.270000e+02
  %4148 = select i1 %4131, float %4145, float 1.270000e+02
  %4149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.i32 %4149, 0
  %4151 = and i32 %4150, 26624
  %4152 = icmp eq i32 %4151, 0
  br i1 %4152, label %4210, label %4153

; <label>:4153                                    ; preds = %4125
  %4154 = add i32 %62, 564
  %4155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.i32 %4155, 0
  %4157 = add i32 %4156, 0
  %4158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4158, %dx.types.Handle %108, float %3552, float %3553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.ResRet.f32 %4159, 1
  %4162 = extractvalue %dx.types.ResRet.f32 %4159, 3
  %4163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.i32 %4163, 0
  %4165 = and i32 %4164, 1048576
  %4166 = icmp ne i32 %4165, 0
  %4167 = and i32 %4164, 8192
  %4168 = icmp eq i32 %4167, 0
  br i1 %4168, label %4183, label %4169

; <label>:4169                                    ; preds = %4153
  %4170 = extractvalue %dx.types.ResRet.f32 %4159, 2
  %4171 = select i1 %4166, float %4170, float %4161
  %4172 = select i1 %4166, float %4160, float %4161
  %4173 = add i32 %62, 144
  %4174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.i32 %4174, 0
  %4176 = lshr i32 %4175, 16
  %4177 = and i32 %4176, 255
  %4178 = uitofp i32 %4177 to float
  %4179 = fmul fast float %4178, 0x3F80101020000000
  %4180 = fmul fast float %4179, %4172
  %4181 = fmul fast float %4179, %4161
  %4182 = fmul fast float %4179, %4171
  br label %4183

; <label>:4183                                    ; preds = %4169, %4153
  %4184 = phi float [ %4180, %4169 ], [ 0.000000e+00, %4153 ]
  %4185 = phi float [ %4181, %4169 ], [ 0.000000e+00, %4153 ]
  %4186 = phi float [ %4182, %4169 ], [ 0.000000e+00, %4153 ]
  %4187 = and i32 %4164, 2048
  %4188 = icmp eq i32 %4187, 0
  br i1 %4188, label %4197, label %4189

; <label>:4189                                    ; preds = %4183
  %4190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.i32 %4190, 0
  %4192 = shl i32 %4191, 4
  %4193 = and i32 %4192, 32752
  %4194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4193)  ; LegacyF16ToF32(value)
  %4195 = fmul fast float %4194, %4162
  %4196 = call float @dx.op.binary.f32(i32 35, float %4195, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4197

; <label>:4197                                    ; preds = %4189, %4183
  %4198 = phi float [ %4196, %4189 ], [ 0x3F70101020000000, %4183 ]
  %4199 = and i32 %4164, 16384
  %4200 = icmp eq i32 %4199, 0
  br i1 %4200, label %4210, label %4201

; <label>:4201                                    ; preds = %4197
  %4202 = add i32 %62, 144
  %4203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.i32 %4203, 0
  %4205 = lshr i32 %4204, 24
  %4206 = uitofp i32 %4205 to float
  %4207 = fmul fast float %4160, 0x3F70101020000000
  %4208 = select i1 %4166, float 0x3F70101020000000, float %4207
  %4209 = fmul fast float %4208, %4206
  br label %4210

; <label>:4210                                    ; preds = %4201, %4197, %4125
  %4211 = phi float [ %4184, %4201 ], [ %4184, %4197 ], [ 0.000000e+00, %4125 ]
  %4212 = phi float [ %4185, %4201 ], [ %4185, %4197 ], [ 0.000000e+00, %4125 ]
  %4213 = phi float [ %4186, %4201 ], [ %4186, %4197 ], [ 0.000000e+00, %4125 ]
  %4214 = phi float [ %4198, %4201 ], [ %4198, %4197 ], [ 0x3F70101020000000, %4125 ]
  %4215 = phi float [ %4209, %4201 ], [ 0.000000e+00, %4197 ], [ 0.000000e+00, %4125 ]
  %4216 = add i32 %62, 144
  %4217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.i32 %4217, 0
  %4219 = and i32 %4218, 255
  %4220 = uitofp i32 %4219 to float
  %4221 = lshr i32 %4218, 8
  %4222 = and i32 %4221, 255
  %4223 = uitofp i32 %4222 to float
  %4224 = call float @dx.op.dot3.f32(i32 55, float %3960, float %3961, float %3962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4225 = fmul fast float %4223, %4224
  %4226 = fadd fast float %4225, %4220
  %4227 = fmul fast float %4226, 0x3F70101020000000
  %4228 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  br i1 %3444, label %4229, label %4264

; <label>:4229                                    ; preds = %4210
  %4230 = fmul fast float %4214, 2.000000e+00
  %4231 = fcmp fast olt float %4146, 1.270000e+02
  %4232 = fcmp fast olt float %4147, 1.270000e+02
  %4233 = fcmp fast olt float %4148, 1.270000e+02
  %4234 = fmul fast float %4146, 0xBFF7154760000000
  %4235 = fmul fast float %4234, %4230
  %4236 = fmul fast float %4147, 0xBFF7154760000000
  %4237 = fmul fast float %4236, %4230
  %4238 = fmul fast float %4148, 0xBFF7154760000000
  %4239 = fmul fast float %4238, %4230
  %4240 = call float @dx.op.unary.f32(i32 21, float %4235)  ; Exp(value)
  %4241 = call float @dx.op.unary.f32(i32 21, float %4237)  ; Exp(value)
  %4242 = call float @dx.op.unary.f32(i32 21, float %4239)  ; Exp(value)
  %4243 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4244 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4245 = call float @dx.op.unary.f32(i32 7, float %4242)  ; Saturate(value)
  %4246 = fadd fast float %4243, -1.000000e+00
  %4247 = select i1 %4231, float %4246, float -1.000000e+00
  %4248 = fadd fast float %4244, -1.000000e+00
  %4249 = select i1 %4232, float %4248, float -1.000000e+00
  %4250 = fadd fast float %4245, -1.000000e+00
  %4251 = select i1 %4233, float %4250, float -1.000000e+00
  %4252 = fmul fast float %4247, %3740
  %4253 = fmul fast float %4249, %3740
  %4254 = fmul fast float %4251, %3740
  %4255 = fadd fast float %4252, 1.000000e+00
  %4256 = fadd fast float %4253, 1.000000e+00
  %4257 = fadd fast float %4254, 1.000000e+00
  %4258 = fmul fast float %4255, %3425
  %4259 = fmul fast float %4256, %3426
  %4260 = fmul fast float %4257, %3427
  %4261 = fmul fast float %4255, %3428
  %4262 = fmul fast float %4256, %3429
  %4263 = fmul fast float %4257, %3430
  br label %4264

; <label>:4264                                    ; preds = %4229, %4210
  %4265 = phi float [ %4258, %4229 ], [ %3425, %4210 ]
  %4266 = phi float [ %4259, %4229 ], [ %3426, %4210 ]
  %4267 = phi float [ %4260, %4229 ], [ %3427, %4210 ]
  %4268 = phi float [ %4261, %4229 ], [ %3428, %4210 ]
  %4269 = phi float [ %4262, %4229 ], [ %3429, %4210 ]
  %4270 = phi float [ %4263, %4229 ], [ %3430, %4210 ]
  %4271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.i32 %4271, 0
  %4273 = and i32 %4272, 3
  %4274 = icmp eq i32 %4273, 3
  br i1 %4274, label %4353, label %4275

; <label>:4275                                    ; preds = %4264
  %4276 = and i32 %4272, 16
  %4277 = icmp ne i32 %4276, 0
  %4278 = select i1 %4277, float %3740, float 0.000000e+00
  %4279 = icmp eq i32 %4273, 0
  br i1 %4279, label %4280, label %4308

; <label>:4280                                    ; preds = %4275
  %4281 = and i32 %4272, 64
  %4282 = icmp ne i32 %4281, 0
  %4283 = select i1 %4282, float %3740, float 0.000000e+00
  %4284 = fsub fast float %3960, %4265
  %4285 = fsub fast float %3961, %4266
  %4286 = fsub fast float %3962, %4267
  %4287 = fmul fast float %4278, %4284
  %4288 = fmul fast float %4278, %4285
  %4289 = fmul fast float %4278, %4286
  %4290 = fadd fast float %4287, %4265
  %4291 = fadd fast float %4288, %4266
  %4292 = fadd fast float %4289, %4267
  %4293 = fsub fast float %3946, %3437
  %4294 = fmul fast float %4278, %4293
  %4295 = fadd fast float %4294, %3437
  %4296 = fsub fast float %4088, %4268
  %4297 = fsub fast float %4089, %4269
  %4298 = fsub fast float %4090, %4270
  %4299 = fmul fast float %4283, %4296
  %4300 = fmul fast float %4283, %4297
  %4301 = fmul fast float %4283, %4298
  %4302 = fadd fast float %4299, %4268
  %4303 = fadd fast float %4300, %4269
  %4304 = fadd fast float %4301, %4270
  %4305 = fsub fast float %4228, %3442
  %4306 = fmul fast float %4278, %4305
  %4307 = fadd fast float %4306, %3442
  br label %4353

; <label>:4308                                    ; preds = %4275
  %4309 = icmp eq i32 %4273, 1
  br i1 %4309, label %4310, label %4323

; <label>:4310                                    ; preds = %4308
  %4311 = fadd fast float %3960, -1.000000e+00
  %4312 = fadd fast float %3961, -1.000000e+00
  %4313 = fadd fast float %3962, -1.000000e+00
  %4314 = fmul fast float %4278, %4311
  %4315 = fmul fast float %4278, %4312
  %4316 = fmul fast float %4278, %4313
  %4317 = fadd fast float %4314, 1.000000e+00
  %4318 = fadd fast float %4315, 1.000000e+00
  %4319 = fadd fast float %4316, 1.000000e+00
  %4320 = fmul fast float %4317, %4265
  %4321 = fmul fast float %4318, %4266
  %4322 = fmul fast float %4319, %4267
  br label %4353

; <label>:4323                                    ; preds = %4308
  %4324 = icmp eq i32 %4273, 2
  br i1 %4324, label %4325, label %4353

; <label>:4325                                    ; preds = %4323
  %4326 = call float @dx.op.unary.f32(i32 24, float %3960)  ; Sqrt(value)
  %4327 = call float @dx.op.unary.f32(i32 24, float %3961)  ; Sqrt(value)
  %4328 = call float @dx.op.unary.f32(i32 24, float %3962)  ; Sqrt(value)
  %4329 = fadd fast float %4326, -5.000000e-01
  %4330 = fadd fast float %4327, -5.000000e-01
  %4331 = fadd fast float %4328, -5.000000e-01
  %4332 = fmul fast float %4329, %4278
  %4333 = fmul fast float %4330, %4278
  %4334 = fmul fast float %4331, %4278
  %4335 = fadd fast float %4332, 5.000000e-01
  %4336 = fadd fast float %4333, 5.000000e-01
  %4337 = fadd fast float %4334, 5.000000e-01
  %4338 = fmul fast float %4335, 2.000000e+00
  %4339 = fsub fast float 1.000000e+00, %4338
  %4340 = fmul fast float %4339, %4265
  %4341 = fadd fast float %4340, %4338
  %4342 = fmul fast float %4341, %4265
  %4343 = fmul fast float %4336, 2.000000e+00
  %4344 = fsub fast float 1.000000e+00, %4343
  %4345 = fmul fast float %4344, %4266
  %4346 = fadd fast float %4345, %4343
  %4347 = fmul fast float %4346, %4266
  %4348 = fmul fast float %4337, 2.000000e+00
  %4349 = fsub fast float 1.000000e+00, %4348
  %4350 = fmul fast float %4349, %4267
  %4351 = fadd fast float %4350, %4348
  %4352 = fmul fast float %4351, %4267
  br label %4353

; <label>:4353                                    ; preds = %4325, %4323, %4310, %4280, %4264
  %4354 = phi float [ %4265, %4264 ], [ %4342, %4325 ], [ %4265, %4323 ], [ %4320, %4310 ], [ %4290, %4280 ]
  %4355 = phi float [ %4266, %4264 ], [ %4347, %4325 ], [ %4266, %4323 ], [ %4321, %4310 ], [ %4291, %4280 ]
  %4356 = phi float [ %4267, %4264 ], [ %4352, %4325 ], [ %4267, %4323 ], [ %4322, %4310 ], [ %4292, %4280 ]
  %4357 = phi float [ %4268, %4264 ], [ %4268, %4325 ], [ %4268, %4323 ], [ %4268, %4310 ], [ %4302, %4280 ]
  %4358 = phi float [ %4269, %4264 ], [ %4269, %4325 ], [ %4269, %4323 ], [ %4269, %4310 ], [ %4303, %4280 ]
  %4359 = phi float [ %4270, %4264 ], [ %4270, %4325 ], [ %4270, %4323 ], [ %4270, %4310 ], [ %4304, %4280 ]
  %4360 = phi float [ %3437, %4264 ], [ %3437, %4325 ], [ %3437, %4323 ], [ %3437, %4310 ], [ %4295, %4280 ]
  %4361 = phi float [ %3442, %4264 ], [ %3442, %4325 ], [ %3442, %4323 ], [ %3442, %4310 ], [ %4307, %4280 ]
  %4362 = and i32 %4272, 12
  %4363 = icmp eq i32 %4362, 12
  br i1 %4363, label %4504, label %4364

; <label>:4364                                    ; preds = %4353
  %4365 = and i32 %4272, 2097184
  %4366 = icmp eq i32 %4365, 2097184
  %4367 = select i1 %4366, float %3740, float 0.000000e+00
  %4368 = and i32 %4272, 4194336
  %4369 = icmp eq i32 %4368, 4194336
  %4370 = select i1 %4369, float %3740, float 0.000000e+00
  %4371 = and i32 %4272, 8388640
  %4372 = icmp eq i32 %4371, 8388640
  %4373 = select i1 %4372, float %3740, float 0.000000e+00
  %4374 = and i32 %4272, 1024
  %4375 = icmp ne i32 %4374, 0
  %4376 = select i1 %4375, float %3740, float 0.000000e+00
  %4377 = and i32 %4272, 2048
  %4378 = icmp ne i32 %4377, 0
  %4379 = select i1 %4378, float %3740, float 0.000000e+00
  %4380 = and i32 %4272, 8192
  %4381 = icmp ne i32 %4380, 0
  %4382 = select i1 %4381, float %3740, float 0.000000e+00
  %4383 = and i32 %4272, 16384
  %4384 = icmp ne i32 %4383, 0
  %4385 = select i1 %4384, float %3740, float 0.000000e+00
  %4386 = icmp eq i32 %4362, 0
  br i1 %4386, label %4387, label %4424

; <label>:4387                                    ; preds = %4364
  %4388 = fsub fast float %4041, %3423
  %4389 = fsub fast float %4042, %3424
  %4390 = fmul fast float %4367, %4388
  %4391 = fmul fast float %4367, %4389
  %4392 = fadd fast float %4390, %3423
  %4393 = fadd fast float %4391, %3424
  %4394 = fsub fast float %4043, %3439
  %4395 = fmul fast float %4370, %4394
  %4396 = fadd fast float %4395, %3439
  %4397 = fsub fast float %4040, %3438
  %4398 = fmul fast float %4373, %4397
  %4399 = fadd fast float %4398, %3438
  %4400 = fsub fast float %4146, %3434
  %4401 = fsub fast float %4147, %3435
  %4402 = fsub fast float %4148, %3436
  %4403 = fmul fast float %4376, %4400
  %4404 = fmul fast float %4376, %4401
  %4405 = fmul fast float %4376, %4402
  %4406 = fadd fast float %4403, %3434
  %4407 = fadd fast float %4404, %3435
  %4408 = fadd fast float %4405, %3436
  %4409 = fsub fast float %4214, %3440
  %4410 = fmul fast float %4379, %4409
  %4411 = fadd fast float %4410, %3440
  %4412 = fsub fast float %4211, %3431
  %4413 = fsub fast float %4212, %3432
  %4414 = fsub fast float %4213, %3433
  %4415 = fmul fast float %4382, %4412
  %4416 = fmul fast float %4382, %4413
  %4417 = fmul fast float %4382, %4414
  %4418 = fadd fast float %4415, %3431
  %4419 = fadd fast float %4416, %3432
  %4420 = fadd fast float %4417, %3433
  %4421 = fsub fast float %4215, %3441
  %4422 = fmul fast float %4385, %4421
  %4423 = fadd fast float %4422, %3441
  br label %4504

; <label>:4424                                    ; preds = %4364
  %4425 = icmp eq i32 %4362, 4
  br i1 %4425, label %4426, label %4474

; <label>:4426                                    ; preds = %4424
  %4427 = fmul fast float %4367, %4041
  %4428 = fmul fast float %4367, %4042
  %4429 = fadd fast float %4427, %3423
  %4430 = fadd fast float %4428, %3424
  %4431 = call float @dx.op.binary.f32(i32 36, float %3439, float %4043)  ; FMin(a,b)
  %4432 = fsub fast float %4431, %3439
  %4433 = fmul fast float %4432, %4370
  %4434 = fadd fast float %4433, %3439
  %4435 = fadd fast float %4040, %3438
  %4436 = fmul fast float %4435, 0x3FF337FAE0000000
  %4437 = fmul fast float %3438, %3438
  %4438 = fmul fast float %4040, %4040
  %4439 = fadd fast float %4438, %4437
  %4440 = fmul fast float %4439, 0x3FE5152B00000000
  %4441 = fmul fast float %3438, 0xBFCC1F85E0000000
  %4442 = fmul fast float %4441, %4040
  %4443 = fadd fast float %4442, 0xBFE1363700000000
  %4444 = fadd fast float %4443, %4436
  %4445 = fsub fast float %4444, %4440
  %4446 = fmul fast float %4435, 0x3FBA6F0D00000000
  %4447 = fmul fast float %4439, 0x3FD0432880000000
  %4448 = fmul fast float %3438, 0xBFEF110800000000
  %4449 = fmul fast float %4448, %4040
  %4450 = fadd fast float %4449, 1.000000e+00
  %4451 = fsub fast float %4450, %4446
  %4452 = fadd fast float %4451, %4447
  %4453 = fdiv fast float %4445, %4452
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = fsub fast float %4454, %3438
  %4456 = fmul fast float %4455, %4373
  %4457 = fadd fast float %4456, %3438
  %4458 = fmul fast float %4376, %4146
  %4459 = fmul fast float %4376, %4147
  %4460 = fmul fast float %4376, %4148
  %4461 = fadd fast float %4458, %3434
  %4462 = fadd fast float %4459, %3435
  %4463 = fadd fast float %4460, %3436
  %4464 = fmul fast float %4379, %4214
  %4465 = fadd fast float %4464, %3440
  %4466 = fmul fast float %4382, %4211
  %4467 = fmul fast float %4382, %4212
  %4468 = fmul fast float %4382, %4213
  %4469 = fadd fast float %4466, %3431
  %4470 = fadd fast float %4467, %3432
  %4471 = fadd fast float %4468, %3433
  %4472 = fmul fast float %4385, %4215
  %4473 = fadd fast float %4472, %3441
  br label %4504

; <label>:4474                                    ; preds = %4424
  %4475 = icmp eq i32 %4362, 8
  br i1 %4475, label %4476, label %4504

; <label>:4476                                    ; preds = %4474
  %4477 = fmul fast float %4367, %4041
  %4478 = fmul fast float %4367, %4042
  %4479 = fadd fast float %4477, %3423
  %4480 = fadd fast float %4478, %3424
  %4481 = call float @dx.op.binary.f32(i32 36, float %3439, float %4043)  ; FMin(a,b)
  %4482 = fsub fast float %4481, %3439
  %4483 = fmul fast float %4482, %4370
  %4484 = fadd fast float %4483, %3439
  %4485 = fsub fast float %4040, %3438
  %4486 = fmul fast float %4373, %4485
  %4487 = fadd fast float %4486, %3438
  %4488 = fmul fast float %4376, %4146
  %4489 = fmul fast float %4376, %4147
  %4490 = fmul fast float %4376, %4148
  %4491 = fadd fast float %4488, %3434
  %4492 = fadd fast float %4489, %3435
  %4493 = fadd fast float %4490, %3436
  %4494 = fmul fast float %4379, %4214
  %4495 = fadd fast float %4494, %3440
  %4496 = fmul fast float %4382, %4211
  %4497 = fmul fast float %4382, %4212
  %4498 = fmul fast float %4382, %4213
  %4499 = fadd fast float %4496, %3431
  %4500 = fadd fast float %4497, %3432
  %4501 = fadd fast float %4498, %3433
  %4502 = fmul fast float %4385, %4215
  %4503 = fadd fast float %4502, %3441
  br label %4504

; <label>:4504                                    ; preds = %4476, %4474, %4426, %4387, %4353, %3739, %3443, %3422
  %4505 = phi float [ %3423, %4353 ], [ %3423, %3739 ], [ %3423, %3422 ], [ %3423, %3443 ], [ %4392, %4387 ], [ %4429, %4426 ], [ %3423, %4474 ], [ %4479, %4476 ]
  %4506 = phi float [ %3424, %4353 ], [ %3424, %3739 ], [ %3424, %3422 ], [ %3424, %3443 ], [ %4393, %4387 ], [ %4430, %4426 ], [ %3424, %4474 ], [ %4480, %4476 ]
  %4507 = phi float [ %4354, %4353 ], [ %3425, %3739 ], [ %3425, %3422 ], [ %3425, %3443 ], [ %4354, %4387 ], [ %4354, %4426 ], [ %4354, %4474 ], [ %4354, %4476 ]
  %4508 = phi float [ %4355, %4353 ], [ %3426, %3739 ], [ %3426, %3422 ], [ %3426, %3443 ], [ %4355, %4387 ], [ %4355, %4426 ], [ %4355, %4474 ], [ %4355, %4476 ]
  %4509 = phi float [ %4356, %4353 ], [ %3427, %3739 ], [ %3427, %3422 ], [ %3427, %3443 ], [ %4356, %4387 ], [ %4356, %4426 ], [ %4356, %4474 ], [ %4356, %4476 ]
  %4510 = phi float [ %4357, %4353 ], [ %3428, %3739 ], [ %3428, %3422 ], [ %3428, %3443 ], [ %4357, %4387 ], [ %4357, %4426 ], [ %4357, %4474 ], [ %4357, %4476 ]
  %4511 = phi float [ %4358, %4353 ], [ %3429, %3739 ], [ %3429, %3422 ], [ %3429, %3443 ], [ %4358, %4387 ], [ %4358, %4426 ], [ %4358, %4474 ], [ %4358, %4476 ]
  %4512 = phi float [ %4359, %4353 ], [ %3430, %3739 ], [ %3430, %3422 ], [ %3430, %3443 ], [ %4359, %4387 ], [ %4359, %4426 ], [ %4359, %4474 ], [ %4359, %4476 ]
  %4513 = phi float [ %3431, %4353 ], [ %3431, %3739 ], [ %3431, %3422 ], [ %3431, %3443 ], [ %4418, %4387 ], [ %4469, %4426 ], [ %3431, %4474 ], [ %4499, %4476 ]
  %4514 = phi float [ %3432, %4353 ], [ %3432, %3739 ], [ %3432, %3422 ], [ %3432, %3443 ], [ %4419, %4387 ], [ %4470, %4426 ], [ %3432, %4474 ], [ %4500, %4476 ]
  %4515 = phi float [ %3433, %4353 ], [ %3433, %3739 ], [ %3433, %3422 ], [ %3433, %3443 ], [ %4420, %4387 ], [ %4471, %4426 ], [ %3433, %4474 ], [ %4501, %4476 ]
  %4516 = phi float [ %3434, %4353 ], [ %3434, %3739 ], [ %3434, %3422 ], [ %3434, %3443 ], [ %4406, %4387 ], [ %4461, %4426 ], [ %3434, %4474 ], [ %4491, %4476 ]
  %4517 = phi float [ %3435, %4353 ], [ %3435, %3739 ], [ %3435, %3422 ], [ %3435, %3443 ], [ %4407, %4387 ], [ %4462, %4426 ], [ %3435, %4474 ], [ %4492, %4476 ]
  %4518 = phi float [ %3436, %4353 ], [ %3436, %3739 ], [ %3436, %3422 ], [ %3436, %3443 ], [ %4408, %4387 ], [ %4463, %4426 ], [ %3436, %4474 ], [ %4493, %4476 ]
  %4519 = phi float [ %4360, %4353 ], [ %3437, %3739 ], [ %3437, %3422 ], [ %3437, %3443 ], [ %4360, %4387 ], [ %4360, %4426 ], [ %4360, %4474 ], [ %4360, %4476 ]
  %4520 = phi float [ %3438, %4353 ], [ %3438, %3739 ], [ %3438, %3422 ], [ %3438, %3443 ], [ %4399, %4387 ], [ %4457, %4426 ], [ %3438, %4474 ], [ %4487, %4476 ]
  %4521 = phi float [ %3439, %4353 ], [ %3439, %3739 ], [ %3439, %3422 ], [ %3439, %3443 ], [ %4396, %4387 ], [ %4434, %4426 ], [ %3439, %4474 ], [ %4484, %4476 ]
  %4522 = phi float [ %3440, %4353 ], [ %3440, %3739 ], [ %3440, %3422 ], [ %3440, %3443 ], [ %4411, %4387 ], [ %4465, %4426 ], [ %3440, %4474 ], [ %4495, %4476 ]
  %4523 = phi float [ %3441, %4353 ], [ %3441, %3739 ], [ %3441, %3422 ], [ %3441, %3443 ], [ %4423, %4387 ], [ %4473, %4426 ], [ %3441, %4474 ], [ %4503, %4476 ]
  %4524 = phi float [ %4361, %4353 ], [ %3442, %3739 ], [ %3442, %3422 ], [ %3442, %3443 ], [ %4361, %4387 ], [ %4361, %4426 ], [ %4361, %4474 ], [ %4361, %4476 ]
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 0
  %4527 = call float @dx.op.dot2.f32(i32 54, float %4505, float %4506, float %4505, float %4506)  ; Dot2(ax,ay,bx,by)
  %4528 = fmul fast float %4527, 0x3FE3333340000000
  %4529 = fsub fast float 1.000000e+00, %4528
  %4530 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4506, float %4529, float %4505, float %4506, float %4529)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = call float @dx.op.unary.f32(i32 25, float %4530)  ; Rsqrt(value)
  %4532 = fmul fast float %4531, %4505
  %4533 = fmul fast float %4531, %4506
  %4534 = fmul fast float %4529, %4531
  %4535 = fmul fast float %4534, %120
  %4536 = fmul fast float %4534, %122
  %4537 = fmul fast float %4534, %124
  %4538 = fmul fast float %4532, %83
  %4539 = fmul fast float %4532, %84
  %4540 = fmul fast float %4532, %85
  %4541 = fadd fast float %4535, %4538
  %4542 = fadd fast float %4536, %4539
  %4543 = fadd fast float %4537, %4540
  %4544 = fmul fast float %134, %4533
  %4545 = fmul fast float %135, %4533
  %4546 = fmul fast float %136, %4533
  %4547 = fadd fast float %4541, %4544
  %4548 = fadd fast float %4542, %4545
  %4549 = fadd fast float %4543, %4546
  %4550 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4548, float %4549, float %4547, float %4548, float %4549)  ; Dot3(ax,ay,az,bx,by,bz)
  %4551 = call float @dx.op.unary.f32(i32 25, float %4550)  ; Rsqrt(value)
  %4552 = fmul fast float %4547, %4551
  %4553 = fmul fast float %4548, %4551
  %4554 = fmul fast float %4549, %4551
  %4555 = and i32 %64, 1
  %4556 = icmp eq i32 %4555, 0
  br i1 %4556, label %4557, label %5153

; <label>:4557                                    ; preds = %4504
  %4558 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %4559 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %4560 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %4561 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %4562 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %4563 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %4564 = fadd fast float %4558, %170
  %4565 = fadd fast float %4559, %171
  %4566 = fadd fast float %4560, %172
  %4567 = fadd fast float %4561, %170
  %4568 = fadd fast float %4562, %171
  %4569 = fadd fast float %4563, %172
  %4570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.CBufRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.CBufRet.f32 %4570, 2
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 2
  %4576 = extractvalue %dx.types.CBufRet.f32 %4574, 3
  %4577 = fmul fast float %4571, %111
  %4578 = fmul fast float %4577, %4575
  %4579 = fmul fast float %4572, %112
  %4580 = fmul fast float %4579, %4576
  %4581 = fptoui float %4578 to i32
  %4582 = fptoui float %4580 to i32
  %4583 = fadd fast float %4571, -1.000000e+00
  %4584 = fadd fast float %4572, -1.000000e+00
  %4585 = fptoui float %4583 to i32
  %4586 = fptoui float %4584 to i32
  %4587 = call i32 @dx.op.binary.i32(i32 40, i32 %4581, i32 %4585)  ; UMin(a,b)
  %4588 = call i32 @dx.op.binary.i32(i32 40, i32 %4582, i32 %4586)  ; UMin(a,b)
  %4589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4589, 2
  %4591 = extractvalue %dx.types.CBufRet.f32 %4589, 3
  %4592 = fmul fast float %4590, %99
  %4593 = fsub fast float %4592, %4591
  %4594 = fadd fast float %4573, -1.000000e+00
  %4595 = call float @dx.op.binary.f32(i32 36, float %4593, float %4594)  ; FMin(a,b)
  %4596 = fptoui float %4595 to i32
  %4597 = fptoui float %4571 to i32
  %4598 = fptoui float %4572 to i32
  %4599 = mul i32 %4596, %4598
  %4600 = add i32 %4599, %4588
  %4601 = mul i32 %4600, %4597
  %4602 = add i32 %4601, %4587
  %4603 = shl i32 %4602, 2
  %4604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4603, i32 undef)  ; BufferLoad(srv,index,wot)
  %4605 = extractvalue %dx.types.ResRet.i32 %4604, 0
  %4606 = and i32 %4605, 1023
  %4607 = lshr i32 %4605, 10
  %4608 = icmp eq i32 %4606, 0
  br i1 %4608, label %5115, label %4609

; <label>:4609                                    ; preds = %4557
  %4610 = and i32 %4605, 1023
  br label %4611

; <label>:4611                                    ; preds = %4744, %4609
  %4612 = phi i32 [ %4694, %4744 ], [ 0, %4609 ]
  %4613 = phi float [ %4745, %4744 ], [ 0.000000e+00, %4609 ]
  %4614 = phi float [ %4746, %4744 ], [ %1273, %4609 ]
  %4615 = phi float [ %4747, %4744 ], [ %4526, %4609 ]
  %4616 = phi float [ %4748, %4744 ], [ %4524, %4609 ]
  %4617 = phi float [ %4749, %4744 ], [ %4516, %4609 ]
  %4618 = phi float [ %4750, %4744 ], [ %4517, %4609 ]
  %4619 = phi float [ %4751, %4744 ], [ %4518, %4609 ]
  %4620 = phi float [ %4752, %4744 ], [ %4523, %4609 ]
  %4621 = phi float [ %4753, %4744 ], [ 0.000000e+00, %4609 ]
  %4622 = phi float [ %4754, %4744 ], [ %4513, %4609 ]
  %4623 = phi float [ %4755, %4744 ], [ %4514, %4609 ]
  %4624 = phi float [ %4756, %4744 ], [ %4515, %4609 ]
  %4625 = phi float [ %4757, %4744 ], [ %4510, %4609 ]
  %4626 = phi float [ %4758, %4744 ], [ %4511, %4609 ]
  %4627 = phi float [ %4759, %4744 ], [ %4512, %4609 ]
  %4628 = phi float [ %4760, %4744 ], [ %4552, %4609 ]
  %4629 = phi float [ %4761, %4744 ], [ %4553, %4609 ]
  %4630 = phi float [ %4762, %4744 ], [ %4554, %4609 ]
  %4631 = phi float [ %4763, %4744 ], [ %4521, %4609 ]
  %4632 = phi float [ %4764, %4744 ], [ %4520, %4609 ]
  %4633 = phi float [ %4765, %4744 ], [ 0.000000e+00, %4609 ]
  %4634 = phi float [ %4766, %4744 ], [ %4519, %4609 ]
  %4635 = phi float [ %4767, %4744 ], [ %4507, %4609 ]
  %4636 = phi float [ %4768, %4744 ], [ %4508, %4609 ]
  %4637 = phi float [ %4769, %4744 ], [ %4509, %4609 ]
  %4638 = add nuw nsw i32 %4612, %4607
  %4639 = shl i32 %4638, 2
  %4640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4639, i32 undef)  ; BufferLoad(srv,index,wot)
  %4641 = extractvalue %dx.types.ResRet.i32 %4640, 0
  %4642 = shl i32 %4641, 8
  %4643 = or i32 %4642, 48
  %4644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4643, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.ResRet.f32 %4644, 2
  %4648 = extractvalue %dx.types.ResRet.f32 %4644, 3
  %4649 = or i32 %4642, 64
  %4650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4649, i32 undef)  ; BufferLoad(srv,index,wot)
  %4651 = extractvalue %dx.types.ResRet.i32 %4650, 0
  %4652 = extractvalue %dx.types.ResRet.i32 %4650, 1
  %4653 = or i32 %4642, 80
  %4654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4653, i32 undef)  ; BufferLoad(srv,index,wot)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 2
  %4656 = extractvalue %dx.types.ResRet.f32 %4654, 3
  %4657 = or i32 %4642, 96
  %4658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4657, i32 undef)  ; BufferLoad(srv,index,wot)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = extractvalue %dx.types.ResRet.f32 %4658, 1
  %4661 = extractvalue %dx.types.ResRet.f32 %4658, 2
  %4662 = extractvalue %dx.types.ResRet.f32 %4658, 3
  %4663 = or i32 %4642, 112
  %4664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 2
  %4666 = or i32 %4642, 128
  %4667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4666, i32 undef)  ; BufferLoad(srv,index,wot)
  %4668 = extractvalue %dx.types.ResRet.f32 %4667, 0
  %4669 = extractvalue %dx.types.ResRet.f32 %4667, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4667, 2
  %4671 = extractvalue %dx.types.ResRet.f32 %4667, 3
  %4672 = or i32 %4642, 144
  %4673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4672, i32 undef)  ; BufferLoad(srv,index,wot)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = extractvalue %dx.types.ResRet.f32 %4673, 1
  %4676 = extractvalue %dx.types.ResRet.f32 %4673, 2
  %4677 = extractvalue %dx.types.ResRet.f32 %4673, 3
  %4678 = or i32 %4642, 160
  %4679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = extractvalue %dx.types.ResRet.f32 %4679, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4679, 2
  %4683 = extractvalue %dx.types.ResRet.f32 %4679, 3
  %4684 = or i32 %4642, 192
  %4685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4684, i32 undef)  ; BufferLoad(srv,index,wot)
  %4686 = extractvalue %dx.types.ResRet.i32 %4685, 0
  %4687 = or i32 %4642, 208
  %4688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4687, i32 undef)  ; BufferLoad(srv,index,wot)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = or i32 %4642, 248
  %4691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4690, i32 undef)  ; BufferLoad(srv,index,wot)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = extractvalue %dx.types.ResRet.f32 %4691, 1
  %4694 = add nuw nsw i32 %4612, 1
  %4695 = bitcast float %4648 to i32
  %4696 = and i32 %4695, 512
  %4697 = icmp eq i32 %4696, 0
  %4698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.ResRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.ResRet.f32 %4698, 2
  %4702 = extractvalue %dx.types.ResRet.f32 %4698, 3
  %4703 = call float @dx.op.dot4.f32(i32 56, float %4699, float %4700, float %4701, float %4702, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4704 = or i32 %4642, 16
  %4705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4704, i32 undef)  ; BufferLoad(srv,index,wot)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = extractvalue %dx.types.ResRet.f32 %4705, 1
  %4708 = extractvalue %dx.types.ResRet.f32 %4705, 2
  %4709 = extractvalue %dx.types.ResRet.f32 %4705, 3
  %4710 = call float @dx.op.dot4.f32(i32 56, float %4706, float %4707, float %4708, float %4709, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4711 = or i32 %4642, 32
  %4712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4711, i32 undef)  ; BufferLoad(srv,index,wot)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.ResRet.f32 %4712, 1
  %4715 = extractvalue %dx.types.ResRet.f32 %4712, 2
  %4716 = extractvalue %dx.types.ResRet.f32 %4712, 3
  %4717 = call float @dx.op.dot4.f32(i32 56, float %4713, float %4714, float %4715, float %4716, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4718 = call float @dx.op.unary.f32(i32 27, float %4703)  ; Round_ni(value)
  %4719 = call float @dx.op.unary.f32(i32 6, float %4718)  ; FAbs(value)
  %4720 = call float @dx.op.unary.f32(i32 27, float %4710)  ; Round_ni(value)
  %4721 = call float @dx.op.unary.f32(i32 6, float %4720)  ; FAbs(value)
  %4722 = call float @dx.op.unary.f32(i32 6, float %4717)  ; FAbs(value)
  %4723 = call float @dx.op.unary.f32(i32 27, float %4722)  ; Round_ni(value)
  %4724 = fadd fast float %4721, %4719
  %4725 = fadd fast float %4724, %4723
  %4726 = fcmp fast oeq float %4725, 0.000000e+00
  %4727 = call float @dx.op.dot4.f32(i32 56, float %4699, float %4700, float %4701, float %4702, float %4564, float %4565, float %4566, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4728 = call float @dx.op.dot4.f32(i32 56, float %4706, float %4707, float %4708, float %4709, float %4564, float %4565, float %4566, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4729 = call float @dx.op.dot4.f32(i32 56, float %4699, float %4700, float %4701, float %4702, float %4567, float %4568, float %4569, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4730 = call float @dx.op.dot4.f32(i32 56, float %4706, float %4707, float %4708, float %4709, float %4567, float %4568, float %4569, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4731 = fsub fast float %4727, %4703
  %4732 = fsub fast float %4729, %4703
  %4733 = fsub fast float %4728, %4710
  %4734 = fsub fast float %4730, %4710
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4645, float %4646, float %4647, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 2
  %4738 = fadd fast float %4737, %4735
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4741 = fcmp fast ogt float %4739, %4740
  %4742 = and i1 %4726, %4741
  %4743 = and i1 %4697, %4742
  br i1 %4743, label %4771, label %4744

; <label>:4744                                    ; preds = %5101, %4852, %4771, %4611
  %4745 = phi float [ %4613, %4771 ], [ %4855, %4852 ], [ %4855, %5101 ], [ %4613, %4611 ]
  %4746 = phi float [ %4614, %4771 ], [ %4614, %4852 ], [ %5077, %5101 ], [ %4614, %4611 ]
  %4747 = phi float [ %4615, %4771 ], [ %4615, %4852 ], [ %5076, %5101 ], [ %4615, %4611 ]
  %4748 = phi float [ %4616, %4771 ], [ %4616, %4852 ], [ %5074, %5101 ], [ %4616, %4611 ]
  %4749 = phi float [ %4617, %4771 ], [ %4617, %4852 ], [ %5052, %5101 ], [ %4617, %4611 ]
  %4750 = phi float [ %4618, %4771 ], [ %4618, %4852 ], [ %5053, %5101 ], [ %4618, %4611 ]
  %4751 = phi float [ %4619, %4771 ], [ %4619, %4852 ], [ %5054, %5101 ], [ %4619, %4611 ]
  %4752 = phi float [ %4620, %4771 ], [ %4620, %4852 ], [ %4979, %5101 ], [ %4620, %4611 ]
  %4753 = phi float [ %4621, %4771 ], [ %4621, %4852 ], [ %4977, %5101 ], [ %4621, %4611 ]
  %4754 = phi float [ %4622, %4771 ], [ %4622, %4852 ], [ %5022, %5101 ], [ %4622, %4611 ]
  %4755 = phi float [ %4623, %4771 ], [ %4623, %4852 ], [ %5023, %5101 ], [ %4623, %4611 ]
  %4756 = phi float [ %4624, %4771 ], [ %4624, %4852 ], [ %5024, %5101 ], [ %4624, %4611 ]
  %4757 = phi float [ %4625, %4771 ], [ %4625, %4852 ], [ %5111, %5101 ], [ %4625, %4611 ]
  %4758 = phi float [ %4626, %4771 ], [ %4626, %4852 ], [ %5112, %5101 ], [ %4626, %4611 ]
  %4759 = phi float [ %4627, %4771 ], [ %4627, %4852 ], [ %5113, %5101 ], [ %4627, %4611 ]
  %4760 = phi float [ %4628, %4771 ], [ %4628, %4852 ], [ %4958, %5101 ], [ %4628, %4611 ]
  %4761 = phi float [ %4629, %4771 ], [ %4629, %4852 ], [ %4959, %5101 ], [ %4629, %4611 ]
  %4762 = phi float [ %4630, %4771 ], [ %4630, %4852 ], [ %4960, %5101 ], [ %4630, %4611 ]
  %4763 = phi float [ %4631, %4771 ], [ %4631, %4852 ], [ %5032, %5101 ], [ %4631, %4611 ]
  %4764 = phi float [ %4632, %4771 ], [ %4632, %4852 ], [ %5029, %5101 ], [ %4632, %4611 ]
  %4765 = phi float [ %4633, %4771 ], [ %4633, %4852 ], [ %5026, %5101 ], [ %4633, %4611 ]
  %4766 = phi float [ %4634, %4771 ], [ %4634, %4852 ], [ %4975, %5101 ], [ %4634, %4611 ]
  %4767 = phi float [ %4635, %4771 ], [ %4635, %4852 ], [ %4970, %5101 ], [ %4635, %4611 ]
  %4768 = phi float [ %4636, %4771 ], [ %4636, %4852 ], [ %4971, %5101 ], [ %4636, %4611 ]
  %4769 = phi float [ %4637, %4771 ], [ %4637, %4852 ], [ %4972, %5101 ], [ %4637, %4611 ]
  %4770 = icmp eq i32 %4694, %4610
  br i1 %4770, label %5114, label %4611

; <label>:4771                                    ; preds = %4611
  %4772 = extractvalue %dx.types.ResRet.f32 %4664, 3
  %4773 = extractvalue %dx.types.ResRet.f32 %4664, 1
  %4774 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4775 = extractvalue %dx.types.ResRet.f32 %4654, 1
  %4776 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4777 = extractvalue %dx.types.ResRet.i32 %4650, 3
  %4778 = extractvalue %dx.types.ResRet.i32 %4650, 2
  %4779 = add i32 %4777, 0
  %4780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4779, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4780, %dx.types.Handle %4781, float %4703, float %4710, float undef, float undef, i32 0, i32 0, i32 undef, float %4731, float %4733, float undef, float %4732, float %4734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4783 = extractvalue %dx.types.ResRet.f32 %4782, 0
  %4784 = fmul fast float %4783, %4776
  %4785 = fadd fast float %4784, %4775
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = fmul fast float %4703, %4659
  %4788 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4710, float %4787)  ; FMad(a,b,c)
  %4789 = fadd fast float %4788, %4774
  %4790 = fmul fast float %4703, %4661
  %4791 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4710, float %4790)  ; FMad(a,b,c)
  %4792 = fadd fast float %4791, %4773
  %4793 = fmul fast float %4731, %4659
  %4794 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4733, float %4793)  ; FMad(a,b,c)
  %4795 = fmul fast float %4731, %4661
  %4796 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4733, float %4795)  ; FMad(a,b,c)
  %4797 = fmul fast float %4732, %4659
  %4798 = call float @dx.op.tertiary.f32(i32 46, float %4660, float %4734, float %4797)  ; FMad(a,b,c)
  %4799 = fmul fast float %4732, %4661
  %4800 = call float @dx.op.tertiary.f32(i32 46, float %4662, float %4734, float %4799)  ; FMad(a,b,c)
  %4801 = add i32 %4778, 0
  %4802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4801, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4802, %dx.types.Handle %4781, float %4789, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float %4794, float %4796, float undef, float %4798, float %4800, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = and i32 %4695, 1024
  %4806 = icmp ne i32 %4805, 0
  %4807 = fcmp fast ogt float %4804, 0x3FE0101020000000
  %4808 = uitofp i1 %4807 to float
  %4809 = select i1 %4806, float %4808, float %4804
  %4810 = and i32 %4695, 8192
  %4811 = icmp ne i32 %4810, 0
  %4812 = select i1 %4811, float %4772, float 1.000000e+00
  %4813 = fmul fast float %4703, 2.000000e+00
  %4814 = fadd fast float %4813, -1.000000e+00
  %4815 = call float @dx.op.unary.f32(i32 6, float %4814)  ; FAbs(value)
  %4816 = fmul fast float %4815, %4692
  %4817 = fsub fast float %4816, %4692
  %4818 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4819 = fmul fast float %4710, 2.000000e+00
  %4820 = fadd fast float %4819, -1.000000e+00
  %4821 = call float @dx.op.unary.f32(i32 6, float %4820)  ; FAbs(value)
  %4822 = fmul fast float %4821, %4693
  %4823 = fsub fast float %4822, %4693
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = fmul fast float %4722, %4655
  %4826 = fsub fast float %4825, %4655
  %4827 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4828 = fmul fast float %4786, %4812
  %4829 = fmul fast float %4828, %4783
  %4830 = fmul fast float %4829, %4818
  %4831 = fmul fast float %4830, %4809
  %4832 = fmul fast float %4831, %4824
  %4833 = fmul fast float %4832, %4827
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 1
  %4836 = extractvalue %dx.types.CBufRet.f32 %4834, 0
  %4837 = fsub fast float %4739, %4836
  %4838 = fmul fast float %4837, %4835
  %4839 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4840 = fmul fast float %4833, %4656
  %4841 = fadd fast float %4833, %4656
  %4842 = fmul fast float %4841, %4665
  %4843 = fsub fast float %4842, %4665
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = and i32 %4695, 128
  %4846 = icmp ne i32 %4845, 0
  %4847 = select i1 %4846, float %4844, float %4840
  %4848 = fmul fast float %4847, %4839
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = fcmp fast ugt float %4848, %4850
  br i1 %4851, label %4852, label %4744

; <label>:4852                                    ; preds = %4771
  %4853 = select i1 %4811, float %4848, float 0.000000e+00
  %4854 = fadd fast float %4853, %4613
  %4855 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  br i1 %4811, label %4744, label %4856

; <label>:4856                                    ; preds = %4852
  %4857 = and i32 %4695, 4
  %4858 = and i32 %4695, 8
  %4859 = add i32 %4651, 0
  %4860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4859, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4862 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4860, %dx.types.Handle %4861, float %4789, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float %4794, float %4796, float undef, float %4798, float %4800, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4863 = extractvalue %dx.types.ResRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.ResRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.ResRet.f32 %4862, 2
  %4866 = extractvalue %dx.types.ResRet.f32 %4862, 3
  %4867 = bitcast float %4677 to i32
  %4868 = and i32 %4867, 255
  %4869 = uitofp i32 %4868 to float
  %4870 = lshr i32 %4867, 8
  %4871 = and i32 %4870, 255
  %4872 = uitofp i32 %4871 to float
  %4873 = fmul fast float %4866, %4869
  %4874 = fadd fast float %4873, %4872
  %4875 = fmul fast float %4874, 0x3F70101000000000
  %4876 = add i32 %4652, 0
  %4877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4876, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4878 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4877, %dx.types.Handle %4861, float %4789, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float %4794, float %4796, float undef, float %4798, float %4800, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.f32 %4878, 2
  %4882 = extractvalue %dx.types.ResRet.f32 %4878, 3
  %4883 = bitcast float %4671 to i32
  %4884 = and i32 %4883, 255
  %4885 = uitofp i32 %4884 to float
  %4886 = lshr i32 %4883, 8
  %4887 = and i32 %4886, 255
  %4888 = uitofp i32 %4887 to float
  %4889 = lshr i32 %4883, 16
  %4890 = and i32 %4889, 255
  %4891 = uitofp i32 %4890 to float
  %4892 = fmul fast float %4891, 0x3F70101000000000
  %4893 = fmul fast float %4879, %4885
  %4894 = fadd fast float %4893, %4888
  %4895 = fmul fast float %4894, 0x3F70101000000000
  %4896 = fadd fast float %4880, -5.000000e-01
  %4897 = fadd fast float %4882, -5.000000e-01
  %4898 = fmul fast float %4896, %4892
  %4899 = fmul fast float %4897, %4892
  %4900 = fadd fast float %4898, 5.000000e-01
  %4901 = fadd fast float %4899, 5.000000e-01
  %4902 = fmul fast float %4863, %4680
  %4903 = fmul fast float %4864, %4681
  %4904 = fmul fast float %4865, %4682
  %4905 = fmul fast float %4900, 2.000000e+00
  %4906 = fadd fast float %4905, -1.000000e+00
  %4907 = fmul fast float %4901, 2.000000e+00
  %4908 = fadd fast float %4907, -1.000000e+00
  %4909 = fadd fast float %4906, %4908
  %4910 = fmul fast float %4909, 5.000000e-01
  %4911 = fsub fast float %4906, %4908
  %4912 = fmul fast float %4911, 5.000000e-01
  %4913 = call float @dx.op.unary.f32(i32 6, float %4910)  ; FAbs(value)
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = call float @dx.op.unary.f32(i32 6, float %4912)  ; FAbs(value)
  %4916 = fsub fast float %4914, %4915
  %4917 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4912, float %4916, float %4910, float %4912, float %4916)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = call float @dx.op.unary.f32(i32 25, float %4917)  ; Rsqrt(value)
  %4919 = fmul fast float %4910, %4918
  %4920 = fmul fast float %4912, %4918
  %4921 = fmul fast float %4918, %4916
  %4922 = fmul fast float %4921, %4645
  %4923 = fmul fast float %4921, %4646
  %4924 = fmul fast float %4921, %4647
  %4925 = fmul fast float %4919, %4668
  %4926 = fmul fast float %4919, %4669
  %4927 = fmul fast float %4919, %4670
  %4928 = fadd fast float %4925, %4922
  %4929 = fadd fast float %4926, %4923
  %4930 = fadd fast float %4927, %4924
  %4931 = fmul fast float %4920, %4674
  %4932 = fmul fast float %4920, %4675
  %4933 = fmul fast float %4920, %4676
  %4934 = fadd fast float %4928, %4931
  %4935 = fadd fast float %4929, %4932
  %4936 = fadd fast float %4930, %4933
  %4937 = call float @dx.op.dot3.f32(i32 55, float %4934, float %4935, float %4936, float %4934, float %4935, float %4936)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call float @dx.op.unary.f32(i32 25, float %4937)  ; Rsqrt(value)
  %4939 = fmul fast float %4934, %4938
  %4940 = fmul fast float %4935, %4938
  %4941 = fmul fast float %4936, %4938
  %4942 = icmp ne i32 %4858, 0
  %4943 = select i1 %4942, float 1.000000e+00, float 0.000000e+00
  %4944 = fmul fast float %4848, %4943
  %4945 = and i32 %4695, 1
  %4946 = icmp eq i32 %4945, 0
  br i1 %4946, label %4947, label %4951

; <label>:4947                                    ; preds = %4856
  %4948 = fsub fast float %4939, %4628
  %4949 = fsub fast float %4940, %4629
  %4950 = fsub fast float %4941, %4630
  br label %4951

; <label>:4951                                    ; preds = %4947, %4856
  %4952 = phi float [ %4948, %4947 ], [ %4939, %4856 ]
  %4953 = phi float [ %4949, %4947 ], [ %4940, %4856 ]
  %4954 = phi float [ %4950, %4947 ], [ %4941, %4856 ]
  %4955 = fmul float %4954, %4944
  %4956 = fmul float %4953, %4944
  %4957 = fmul float %4952, %4944
  %4958 = fadd fast float %4957, %4628
  %4959 = fadd fast float %4956, %4629
  %4960 = fadd fast float %4955, %4630
  %4961 = icmp ne i32 %4857, 0
  %4962 = select i1 %4961, float 1.000000e+00, float 0.000000e+00
  %4963 = fmul fast float %4848, %4962
  %4964 = fsub fast float %4902, %4635
  %4965 = fsub fast float %4903, %4636
  %4966 = fsub fast float %4904, %4637
  %4967 = fmul fast float %4964, %4963
  %4968 = fmul fast float %4965, %4963
  %4969 = fmul fast float %4966, %4963
  %4970 = fadd fast float %4967, %4635
  %4971 = fadd fast float %4968, %4636
  %4972 = fadd fast float %4969, %4637
  %4973 = fsub fast float %4875, %4634
  %4974 = fmul fast float %4973, %4963
  %4975 = fadd fast float %4974, %4634
  %4976 = fmul fast float %4963, %4621
  %4977 = fsub fast float %4621, %4976
  %4978 = fmul fast float %4963, %4620
  %4979 = fsub fast float %4620, %4978
  %4980 = bitcast float %4689 to i32
  %4981 = lshr i32 %4980, 16
  %4982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4981)  ; LegacyF16ToF32(value)
  %4983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4984 = extractvalue %dx.types.ResRet.i32 %4983, 0
  %4985 = and i32 %4984, 1
  %4986 = icmp eq i32 %4985, 0
  br i1 %4986, label %4987, label %5012

; <label>:4987                                    ; preds = %4951
  %4988 = fadd fast float %4875, 0xBFB99999A0000000
  %4989 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4990 = fmul fast float %4989, 0x3FF1C71C80000000
  %4991 = fsub fast float 1.000000e+00, %4990
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = fmul fast float %4992, %4902
  %4994 = fmul fast float %4992, %4903
  %4995 = fmul fast float %4992, %4904
  %4996 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4997 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = call float @dx.op.binary.f32(i32 35, float %4997, float %4998)  ; FMax(a,b)
  %5000 = call float @dx.op.binary.f32(i32 35, float %4996, float %4999)  ; FMax(a,b)
  %5001 = fcmp fast ogt float %5000, 0.000000e+00
  %5002 = bitcast float %5000 to i32
  %5003 = sub nsw i32 2129859010, %5002
  %5004 = bitcast i32 %5003 to float
  %5005 = select i1 %5001, float %5004, float 0.000000e+00
  %5006 = fmul fast float %4996, %4982
  %5007 = fmul fast float %4997, %4982
  %5008 = fmul fast float %4998, %4982
  %5009 = fmul fast float %5006, %5005
  %5010 = fmul fast float %5007, %5005
  %5011 = fmul fast float %5008, %5005
  br label %5012

; <label>:5012                                    ; preds = %4987, %4951
  %5013 = phi float [ %4982, %4951 ], [ %5009, %4987 ]
  %5014 = phi float [ %4982, %4951 ], [ %5010, %4987 ]
  %5015 = phi float [ %4982, %4951 ], [ %5011, %4987 ]
  %5016 = fsub fast float %5013, %4622
  %5017 = fsub fast float %5014, %4623
  %5018 = fsub fast float %5015, %4624
  %5019 = fmul fast float %5016, %4963
  %5020 = fmul fast float %5017, %4963
  %5021 = fmul fast float %5018, %4963
  %5022 = fadd fast float %5019, %4622
  %5023 = fadd fast float %5020, %4623
  %5024 = fadd fast float %5021, %4624
  %5025 = fadd fast float %4848, %4633
  %5026 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5027 = fsub fast float %4895, %4632
  %5028 = fmul fast float %5027, %4944
  %5029 = fadd fast float %5028, %4632
  %5030 = fsub fast float %4881, %4631
  %5031 = fmul fast float %5030, %4944
  %5032 = fadd fast float %5031, %4631
  br i1 %4946, label %5041, label %5033

; <label>:5033                                    ; preds = %5012
  %5034 = and i32 %4695, 32768
  %5035 = icmp eq i32 %5034, 0
  br i1 %5035, label %5051, label %5036

; <label>:5036                                    ; preds = %5033
  %5037 = fmul fast float %4944, 1.270000e+02
  %5038 = fadd fast float %5037, %4617
  %5039 = fadd fast float %5037, %4618
  %5040 = fadd fast float %5037, %4619
  br label %5051

; <label>:5041                                    ; preds = %5012
  %5042 = fsub fast float 1.270000e+02, %4617
  %5043 = fsub fast float 1.270000e+02, %4618
  %5044 = fsub fast float 1.270000e+02, %4619
  %5045 = fmul fast float %4944, %5042
  %5046 = fmul fast float %4944, %5043
  %5047 = fmul fast float %4944, %5044
  %5048 = fadd fast float %5045, %4617
  %5049 = fadd fast float %5046, %4618
  %5050 = fadd fast float %5047, %4619
  br label %5051

; <label>:5051                                    ; preds = %5041, %5036, %5033
  %5052 = phi float [ %5038, %5036 ], [ %4617, %5033 ], [ %5048, %5041 ]
  %5053 = phi float [ %5039, %5036 ], [ %4618, %5033 ], [ %5049, %5041 ]
  %5054 = phi float [ %5040, %5036 ], [ %4619, %5033 ], [ %5050, %5041 ]
  %5055 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4903, float %4904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.f32 %5056, 0
  %5058 = extractvalue %dx.types.CBufRet.f32 %5056, 1
  %5059 = fmul fast float %5058, %5055
  %5060 = fadd fast float %5059, %5057
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = bitcast float %4683 to i32
  %5063 = and i32 %5062, 65535
  %5064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5063)  ; LegacyF16ToF32(value)
  %5065 = lshr i32 %5062, 16
  %5066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5065)  ; LegacyF16ToF32(value)
  %5067 = fcmp fast oge float %5064, 0.000000e+00
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 0
  %5070 = select i1 %5067, float %5064, float %5069
  %5071 = fadd fast float %5070, %5066
  %5072 = fsub fast float %5061, %4616
  %5073 = fmul fast float %5072, %4848
  %5074 = fadd fast float %5073, %4616
  %5075 = fmul fast float %5071, %4848
  %5076 = call float @dx.op.binary.f32(i32 35, float %4615, float %5075)  ; FMax(a,b)
  %5077 = call float @dx.op.binary.f32(i32 35, float %4614, float %4848)  ; FMax(a,b)
  %5078 = and i32 %4695, 16
  %5079 = icmp eq i32 %5078, 0
  br i1 %5079, label %5101, label %5080

; <label>:5080                                    ; preds = %5051
  %5081 = add i32 %4686, 0
  %5082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5081, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5083 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5082, %dx.types.Handle %4861, float %4789, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float %4794, float %4796, float undef, float %4798, float %4800, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5084 = extractvalue %dx.types.ResRet.f32 %5083, 0
  %5085 = extractvalue %dx.types.ResRet.f32 %5083, 1
  %5086 = extractvalue %dx.types.ResRet.f32 %5083, 2
  %5087 = and i32 %4980, 65535
  %5088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5087)  ; LegacyF16ToF32(value)
  %5089 = fmul fast float %5084, %4680
  %5090 = fmul fast float %5085, %4681
  %5091 = fmul fast float %5086, %4682
  %5092 = and i32 %4695, 16384
  %5093 = icmp ne i32 %5092, 0
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 0
  %5096 = select i1 %5093, float %5095, float 1.000000e+00
  %5097 = fmul fast float %5096, %5088
  %5098 = fmul fast float %5089, %5097
  %5099 = fmul fast float %5090, %5097
  %5100 = fmul fast float %5091, %5097
  br label %5101

; <label>:5101                                    ; preds = %5080, %5051
  %5102 = phi float [ %5098, %5080 ], [ 0.000000e+00, %5051 ]
  %5103 = phi float [ %5099, %5080 ], [ 0.000000e+00, %5051 ]
  %5104 = phi float [ %5100, %5080 ], [ 0.000000e+00, %5051 ]
  %5105 = fsub fast float %5102, %4625
  %5106 = fsub fast float %5103, %4626
  %5107 = fsub fast float %5104, %4627
  %5108 = fmul fast float %5105, %4848
  %5109 = fmul fast float %5106, %4848
  %5110 = fmul fast float %5107, %4848
  %5111 = fadd fast float %5108, %4625
  %5112 = fadd fast float %5109, %4626
  %5113 = fadd fast float %5110, %4627
  br label %4744

; <label>:5114                                    ; preds = %4744
  br label %5115

; <label>:5115                                    ; preds = %5114, %4557
  %5116 = phi float [ 0.000000e+00, %4557 ], [ %4745, %5114 ]
  %5117 = phi float [ %1273, %4557 ], [ %4746, %5114 ]
  %5118 = phi float [ %4526, %4557 ], [ %4747, %5114 ]
  %5119 = phi float [ %4524, %4557 ], [ %4748, %5114 ]
  %5120 = phi float [ %4516, %4557 ], [ %4749, %5114 ]
  %5121 = phi float [ %4517, %4557 ], [ %4750, %5114 ]
  %5122 = phi float [ %4518, %4557 ], [ %4751, %5114 ]
  %5123 = phi float [ %4523, %4557 ], [ %4752, %5114 ]
  %5124 = phi float [ 0.000000e+00, %4557 ], [ %4753, %5114 ]
  %5125 = phi float [ %4513, %4557 ], [ %4754, %5114 ]
  %5126 = phi float [ %4514, %4557 ], [ %4755, %5114 ]
  %5127 = phi float [ %4515, %4557 ], [ %4756, %5114 ]
  %5128 = phi float [ %4510, %4557 ], [ %4757, %5114 ]
  %5129 = phi float [ %4511, %4557 ], [ %4758, %5114 ]
  %5130 = phi float [ %4512, %4557 ], [ %4759, %5114 ]
  %5131 = phi float [ %4552, %4557 ], [ %4760, %5114 ]
  %5132 = phi float [ %4553, %4557 ], [ %4761, %5114 ]
  %5133 = phi float [ %4554, %4557 ], [ %4762, %5114 ]
  %5134 = phi float [ %4521, %4557 ], [ %4763, %5114 ]
  %5135 = phi float [ %4520, %4557 ], [ %4764, %5114 ]
  %5136 = phi float [ 0.000000e+00, %4557 ], [ %4765, %5114 ]
  %5137 = phi float [ %4519, %4557 ], [ %4766, %5114 ]
  %5138 = phi float [ %4507, %4557 ], [ %4767, %5114 ]
  %5139 = phi float [ %4508, %4557 ], [ %4768, %5114 ]
  %5140 = phi float [ %4509, %4557 ], [ %4769, %5114 ]
  %5141 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5132, float %5133, float %5131, float %5132, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = call float @dx.op.unary.f32(i32 25, float %5141)  ; Rsqrt(value)
  %5143 = fmul fast float %5142, %5131
  %5144 = fmul fast float %5142, %5132
  %5145 = fmul fast float %5142, %5133
  %5146 = fadd fast float %5136, %1273
  %5147 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5148 = call float @dx.op.dot3.f32(i32 55, float %5143, float %5144, float %5145, float %5143, float %5144, float %5145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = call float @dx.op.unary.f32(i32 25, float %5148)  ; Rsqrt(value)
  %5150 = fmul fast float %5149, %5143
  %5151 = fmul fast float %5149, %5144
  %5152 = fmul fast float %5149, %5145
  br label %5153

; <label>:5153                                    ; preds = %5115, %4504
  %5154 = phi float [ %5138, %5115 ], [ %4507, %4504 ]
  %5155 = phi float [ %5139, %5115 ], [ %4508, %4504 ]
  %5156 = phi float [ %5140, %5115 ], [ %4509, %4504 ]
  %5157 = phi float [ %5125, %5115 ], [ %4513, %4504 ]
  %5158 = phi float [ %5126, %5115 ], [ %4514, %4504 ]
  %5159 = phi float [ %5127, %5115 ], [ %4515, %4504 ]
  %5160 = phi float [ %5128, %5115 ], [ %4510, %4504 ]
  %5161 = phi float [ %5129, %5115 ], [ %4511, %4504 ]
  %5162 = phi float [ %5130, %5115 ], [ %4512, %4504 ]
  %5163 = phi float [ %5120, %5115 ], [ %4516, %4504 ]
  %5164 = phi float [ %5121, %5115 ], [ %4517, %4504 ]
  %5165 = phi float [ %5122, %5115 ], [ %4518, %4504 ]
  %5166 = phi float [ %5150, %5115 ], [ %4552, %4504 ]
  %5167 = phi float [ %5151, %5115 ], [ %4553, %4504 ]
  %5168 = phi float [ %5152, %5115 ], [ %4554, %4504 ]
  %5169 = phi float [ %5137, %5115 ], [ %4519, %4504 ]
  %5170 = phi float [ %5147, %5115 ], [ %1273, %4504 ]
  %5171 = phi float [ %5135, %5115 ], [ %4520, %4504 ]
  %5172 = phi float [ %5134, %5115 ], [ %4521, %4504 ]
  %5173 = phi float [ %5124, %5115 ], [ 0.000000e+00, %4504 ]
  %5174 = phi float [ %5123, %5115 ], [ %4523, %4504 ]
  %5175 = phi float [ %5116, %5115 ], [ 0.000000e+00, %4504 ]
  %5176 = phi float [ %5118, %5115 ], [ %4526, %4504 ]
  %5177 = phi float [ %5117, %5115 ], [ %1273, %4504 ]
  %5178 = phi float [ %5119, %5115 ], [ %4524, %4504 ]
  %5179 = fadd fast float %5169, 0xBFB99999A0000000
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fmul fast float %5180, 0x3FF1C71C80000000
  %5182 = call float @dx.op.binary.f32(i32 36, float %5169, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5183 = fsub fast float 1.000000e+00, %5181
  %5184 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5185 = fmul fast float %5184, %5154
  %5186 = fmul fast float %5184, %5155
  %5187 = fmul fast float %5184, %5156
  %5188 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5191 = fmul fast float %5181, %5154
  %5192 = fmul fast float %5181, %5155
  %5193 = fmul fast float %5181, %5156
  %5194 = fadd fast float %5191, %5182
  %5195 = fadd fast float %5192, %5182
  %5196 = fadd fast float %5193, %5182
  %5197 = call float @dx.op.unary.f32(i32 7, float %5194)  ; Saturate(value)
  %5198 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5199 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5200 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %5202 = extractvalue %dx.types.ResRet.i32 %5201, 0
  %5203 = and i32 %5202, 1
  %5204 = icmp eq i32 %5203, 0
  br i1 %5204, label %5219, label %5205

; <label>:5205                                    ; preds = %5153
  %5206 = call float @dx.op.binary.f32(i32 35, float %5189, float %5190)  ; FMax(a,b)
  %5207 = call float @dx.op.binary.f32(i32 35, float %5188, float %5206)  ; FMax(a,b)
  %5208 = fcmp fast ogt float %5207, 0.000000e+00
  %5209 = bitcast float %5207 to i32
  %5210 = sub nsw i32 2129859010, %5209
  %5211 = bitcast i32 %5210 to float
  %5212 = select i1 %5208, float %5211, float 0.000000e+00
  %5213 = fmul fast float %5188, %5157
  %5214 = fmul fast float %5189, %5158
  %5215 = fmul fast float %5190, %5159
  %5216 = fmul fast float %5213, %5212
  %5217 = fmul fast float %5214, %5212
  %5218 = fmul fast float %5215, %5212
  br label %5219

; <label>:5219                                    ; preds = %5205, %5153
  %5220 = phi float [ %5216, %5205 ], [ %5157, %5153 ]
  %5221 = phi float [ %5217, %5205 ], [ %5158, %5153 ]
  %5222 = phi float [ %5218, %5205 ], [ %5159, %5153 ]
  %5223 = call float @dx.op.binary.f32(i32 36, float %5163, float 1.270000e+02)  ; FMin(a,b)
  %5224 = call float @dx.op.binary.f32(i32 36, float %5164, float 1.270000e+02)  ; FMin(a,b)
  %5225 = call float @dx.op.binary.f32(i32 36, float %5165, float 1.270000e+02)  ; FMin(a,b)
  %5226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.i32 %5226, 3
  %5228 = and i32 %5227, 8
  %5229 = icmp ne i32 %5228, 0
  %5230 = call float @dx.op.binary.f32(i32 35, float %5188, float %5154)  ; FMax(a,b)
  %5231 = call float @dx.op.binary.f32(i32 35, float %5189, float %5154)  ; FMax(a,b)
  %5232 = call float @dx.op.binary.f32(i32 35, float %5190, float %5154)  ; FMax(a,b)
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5188, float %5189, float %5190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = select i1 %232, float %5154, float %5188
  %5235 = select i1 %232, float %5233, float %5189
  %5236 = select i1 %232, float 1.000000e+00, float %5190
  %5237 = select i1 %5229, float %5230, float %5234
  %5238 = select i1 %5229, float %5231, float %5235
  %5239 = select i1 %5229, float %5232, float %5236
  %5240 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5241 = select i1 %232, float %5240, float %5220
  %5242 = select i1 %232, float %5240, float %5221
  %5243 = select i1 %232, float %5240, float %5222
  %5244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.f32 %5244, 0
  %5246 = extractvalue %dx.types.CBufRet.f32 %5244, 1
  %5247 = extractvalue %dx.types.CBufRet.f32 %5244, 2
  %5248 = fadd fast float %5245, %170
  %5249 = fadd fast float %5246, %171
  %5250 = fadd fast float %5247, %172
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.CBufRet.f32 %5251, 1
  %5254 = fsub fast float %5248, %5252
  %5255 = fsub fast float %5249, %5253
  %5256 = fmul fast float %5254, %5254
  %5257 = fmul fast float %5255, %5255
  %5258 = fadd fast float %5256, %5257
  %5259 = call float @dx.op.unary.f32(i32 24, float %5258)  ; Sqrt(value)
  %5260 = extractvalue %dx.types.CBufRet.f32 %5251, 2
  %5261 = fcmp fast olt float %5259, %5260
  br i1 %5261, label %5262, label %5329

; <label>:5262                                    ; preds = %5219
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 0
  %5269 = extractvalue %dx.types.CBufRet.f32 %5263, 1
  %5270 = extractvalue %dx.types.CBufRet.f32 %5265, 1
  %5271 = extractvalue %dx.types.CBufRet.f32 %5267, 1
  %5272 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5273 = extractvalue %dx.types.CBufRet.f32 %5265, 3
  %5274 = extractvalue %dx.types.CBufRet.f32 %5267, 3
  %5275 = fadd fast float %5272, %5248
  %5276 = fadd fast float %5273, %5249
  %5277 = fadd fast float %5274, %5250
  %5278 = fmul fast float %5275, %5264
  %5279 = call float @dx.op.tertiary.f32(i32 46, float %5276, float %5266, float %5278)  ; FMad(a,b,c)
  %5280 = call float @dx.op.tertiary.f32(i32 46, float %5277, float %5268, float %5279)  ; FMad(a,b,c)
  %5281 = fmul fast float %5275, %5269
  %5282 = call float @dx.op.tertiary.f32(i32 46, float %5276, float %5270, float %5281)  ; FMad(a,b,c)
  %5283 = call float @dx.op.tertiary.f32(i32 46, float %5277, float %5271, float %5282)  ; FMad(a,b,c)
  %5284 = fsub fast float %5280, %5272
  %5285 = fsub fast float %5283, %5273
  %5286 = fsub fast float %5284, %5252
  %5287 = fadd fast float %5286, %5260
  %5288 = fsub fast float %5285, %5253
  %5289 = fadd fast float %5288, %5260
  %5290 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5291 = fmul fast float %5287, %5290
  %5292 = fmul fast float %5289, %5290
  %5293 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5295 = fsub fast float 1.000000e+00, %5293
  %5296 = fsub fast float 1.000000e+00, %5294
  %5297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %5295, float %5296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5298 = extractvalue %dx.types.ResRet.f32 %5297, 0
  %5299 = fcmp fast ugt float %5298, 0.000000e+00
  br i1 %5299, label %5300, label %5603

; <label>:5300                                    ; preds = %5262
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5303 = fmul fast float %5302, %5298
  %5304 = extractvalue %dx.types.CBufRet.f32 %5301, 3
  %5305 = fadd fast float %5304, %5303
  %5306 = extractvalue %dx.types.CBufRet.f32 %5267, 2
  %5307 = fadd fast float %5305, %5274
  %5308 = fmul fast float %5280, %5268
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %5283, float %5271, float %5308)  ; FMad(a,b,c)
  %5310 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5306, float %5309)  ; FMad(a,b,c)
  %5311 = fsub fast float %5310, %5274
  %5312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.f32 %5312, 2
  %5314 = fsub fast float %5311, %5313
  %5315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %5295, float %5296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5316 = extractvalue %dx.types.ResRet.f32 %5315, 0
  %5317 = extractvalue %dx.types.ResRet.f32 %5315, 1
  %5318 = extractvalue %dx.types.ResRet.f32 %5315, 2
  %5319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %5295, float %5296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.ResRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.ResRet.f32 %5319, 2
  %5323 = fadd fast float %5320, %5316
  %5324 = fmul fast float %5323, 0x3F847AE140000000
  %5325 = fadd fast float %5321, %5317
  %5326 = fmul fast float %5325, 0x3F847AE140000000
  %5327 = fadd fast float %5322, %5318
  %5328 = fmul fast float %5327, 0x3F847AE140000000
  br label %5603

; <label>:5329                                    ; preds = %5219
  %5330 = and i32 %208, 1
  %5331 = icmp eq i32 %5330, 0
  br i1 %5331, label %5603, label %5332

; <label>:5332                                    ; preds = %5329
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 0
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 0
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5339 = extractvalue %dx.types.CBufRet.f32 %5333, 1
  %5340 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5341 = extractvalue %dx.types.CBufRet.f32 %5337, 1
  %5342 = extractvalue %dx.types.CBufRet.f32 %5333, 3
  %5343 = extractvalue %dx.types.CBufRet.f32 %5335, 3
  %5344 = extractvalue %dx.types.CBufRet.f32 %5337, 3
  %5345 = fadd fast float %5342, %5248
  %5346 = fadd fast float %5343, %5249
  %5347 = fadd fast float %5344, %5250
  %5348 = fmul fast float %5345, %5334
  %5349 = call float @dx.op.tertiary.f32(i32 46, float %5346, float %5336, float %5348)  ; FMad(a,b,c)
  %5350 = call float @dx.op.tertiary.f32(i32 46, float %5347, float %5338, float %5349)  ; FMad(a,b,c)
  %5351 = fmul fast float %5345, %5339
  %5352 = call float @dx.op.tertiary.f32(i32 46, float %5346, float %5340, float %5351)  ; FMad(a,b,c)
  %5353 = call float @dx.op.tertiary.f32(i32 46, float %5347, float %5341, float %5352)  ; FMad(a,b,c)
  %5354 = fsub fast float %5350, %5342
  %5355 = fsub fast float %5353, %5343
  %5356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.f32 %5356, 0
  %5358 = extractvalue %dx.types.CBufRet.f32 %5356, 1
  %5359 = extractvalue %dx.types.CBufRet.f32 %5356, 2
  %5360 = extractvalue %dx.types.CBufRet.f32 %5356, 3
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 3
  %5363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.i32 %5363, 0
  %5365 = extractvalue %dx.types.CBufRet.i32 %5363, 1
  %5366 = udiv i32 %5365, %5364
  %5367 = fsub fast float %5354, %5357
  %5368 = fsub fast float %5355, %5358
  %5369 = call float @dx.op.binary.f32(i32 35, float %5367, float 0.000000e+00)  ; FMax(a,b)
  %5370 = call float @dx.op.binary.f32(i32 35, float %5368, float 0.000000e+00)  ; FMax(a,b)
  %5371 = call float @dx.op.binary.f32(i32 36, float %5369, float %5359)  ; FMin(a,b)
  %5372 = call float @dx.op.binary.f32(i32 36, float %5370, float %5360)  ; FMin(a,b)
  %5373 = add i32 %5364, -1
  %5374 = add i32 %5366, -1
  %5375 = fmul fast float %5371, %5362
  %5376 = fmul fast float %5372, %5362
  %5377 = fptoui float %5375 to i32
  %5378 = fptoui float %5376 to i32
  %5379 = call i32 @dx.op.binary.i32(i32 40, i32 %5377, i32 %5373)  ; UMin(a,b)
  %5380 = call i32 @dx.op.binary.i32(i32 40, i32 %5378, i32 %5374)  ; UMin(a,b)
  %5381 = mul i32 %5380, %5364
  %5382 = add i32 %5381, %5379
  %5383 = shl i32 %5382, 2
  %5384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5383, i32 undef)  ; BufferLoad(srv,index,wot)
  %5385 = extractvalue %dx.types.ResRet.i32 %5384, 0
  %5386 = icmp eq i32 %5385, -1
  br i1 %5386, label %5603, label %5387

; <label>:5387                                    ; preds = %5332
  %5388 = mul i32 %5385, 148
  %5389 = add i32 %5388, 4
  %5390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5391 = extractvalue %dx.types.ResRet.f32 %5390, 0
  %5392 = add i32 %5388, 8
  %5393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = add i32 %5388, 36
  %5396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5395, i32 undef)  ; BufferLoad(srv,index,wot)
  %5397 = extractvalue %dx.types.ResRet.f32 %5396, 0
  %5398 = add i32 %5388, 60
  %5399 = add i32 %5388, 92
  %5400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5399, i32 undef)  ; BufferLoad(srv,index,wot)
  %5401 = extractvalue %dx.types.ResRet.i32 %5400, 0
  %5402 = add i32 %5388, 116
  %5403 = fsub fast float %5354, %5391
  %5404 = fsub fast float %5355, %5394
  %5405 = fmul fast float %5362, %5403
  %5406 = fmul fast float %5362, %5404
  %5407 = call float @dx.op.unary.f32(i32 7, float %5405)  ; Saturate(value)
  %5408 = call float @dx.op.unary.f32(i32 7, float %5406)  ; Saturate(value)
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 2
  %5412 = call float @dx.op.unary.f32(i32 83, float %5407)  ; DerivCoarseX(value)
  %5413 = call float @dx.op.unary.f32(i32 83, float %5409)  ; DerivCoarseX(value)
  %5414 = call float @dx.op.unary.f32(i32 84, float %5407)  ; DerivCoarseY(value)
  %5415 = call float @dx.op.unary.f32(i32 84, float %5409)  ; DerivCoarseY(value)
  %5416 = fmul fast float %5412, %5411
  %5417 = fmul fast float %5413, %5411
  %5418 = fmul fast float %5414, %5411
  %5419 = fmul fast float %5415, %5411
  %5420 = call float @dx.op.dot2.f32(i32 54, float %5418, float %5419, float %5418, float %5419)  ; Dot2(ax,ay,bx,by)
  %5421 = call float @dx.op.dot2.f32(i32 54, float %5416, float %5417, float %5416, float %5417)  ; Dot2(ax,ay,bx,by)
  %5422 = call float @dx.op.binary.f32(i32 35, float %5421, float %5420)  ; FMax(a,b)
  %5423 = call float @dx.op.unary.f32(i32 23, float %5422)  ; Log(value)
  %5424 = fmul fast float %5423, 5.000000e-01
  %5425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5426 = extractvalue %dx.types.CBufRet.f32 %5425, 1
  %5427 = fadd fast float %5426, %5424
  %5428 = call float @dx.op.binary.f32(i32 35, float %5427, float 0.000000e+00)  ; FMax(a,b)
  %5429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.f32 %5429, 3
  %5431 = fadd fast float %5430, %5428
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 3
  %5434 = fadd fast float %5431, %5433
  %5435 = add i32 %5401, 0
  %5436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5437 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5436, i32 0)  ; GetDimensions(handle,mipLevel)
  %5438 = extractvalue %dx.types.Dimensions %5437, 0
  %5439 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5438)  ; FirstbitLo(value)
  %5440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = extractvalue %dx.types.CBufRet.i32 %5440, 1
  %5442 = sub nsw i32 %5441, %5439
  %5443 = sitofp i32 %5442 to float
  %5444 = fsub fast float %5434, %5443
  %5445 = call float @dx.op.binary.f32(i32 35, float %5444, float 0.000000e+00)  ; FMax(a,b)
  %5446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5436, %dx.types.Handle %52, float %5407, float %5409, float %5397, float undef, i32 0, i32 0, i32 undef, float %5445)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 0
  %5448 = fcmp ule float %5447, 0x3FE0101020000000
  %5449 = extractvalue %dx.types.CBufRet.i32 %5440, 0
  %5450 = and i32 %5449, 128
  %5451 = icmp ne i32 %5450, 0
  %5452 = and i1 %5448, %5451
  br i1 %5452, label %5603, label %5453

; <label>:5453                                    ; preds = %5387
  %5454 = add i32 %5388, 20
  %5455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = add i32 %5388, 24
  %5458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5457, i32 undef)  ; BufferLoad(srv,index,wot)
  %5459 = extractvalue %dx.types.ResRet.f32 %5458, 0
  %5460 = add i32 %5388, 40
  %5461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5460, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 0
  %5463 = add i32 %5388, 96
  %5464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.i32 %5464, 0
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 2
  %5468 = fmul fast float %5467, %5407
  %5469 = fmul fast float %5467, %5409
  %5470 = extractvalue %dx.types.CBufRet.f32 %5466, 3
  %5471 = fadd fast float %5468, %5470
  %5472 = fadd fast float %5469, %5470
  %5473 = add i32 %5465, 0
  %5474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5475 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5474, i32 0)  ; GetDimensions(handle,mipLevel)
  %5476 = extractvalue %dx.types.Dimensions %5475, 0
  %5477 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5476)  ; FirstbitLo(value)
  %5478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.i32 %5478, 1
  %5480 = sub nsw i32 %5479, %5477
  %5481 = sitofp i32 %5480 to float
  %5482 = fsub fast float %5431, %5481
  %5483 = call float @dx.op.binary.f32(i32 35, float %5482, float 0.000000e+00)  ; FMax(a,b)
  %5484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5474, %dx.types.Handle %52, float %5471, float %5472, float %5462, float undef, i32 0, i32 0, i32 undef, float %5483)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5485 = extractvalue %dx.types.ResRet.f32 %5484, 0
  %5486 = fmul fast float %5485, %5456
  %5487 = fadd fast float %5486, %5459
  %5488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5489 = extractvalue %dx.types.CBufRet.f32 %5488, 0
  %5490 = extractvalue %dx.types.CBufRet.f32 %5488, 1
  %5491 = extractvalue %dx.types.CBufRet.f32 %5488, 2
  %5492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5493 = extractvalue %dx.types.CBufRet.f32 %5492, 3
  %5494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5495 = extractvalue %dx.types.CBufRet.f32 %5494, 3
  %5496 = extractvalue %dx.types.CBufRet.f32 %5488, 3
  %5497 = fadd fast float %5493, %5354
  %5498 = fadd fast float %5495, %5355
  %5499 = fadd fast float %5487, %5496
  %5500 = fmul fast float %5497, %5489
  %5501 = call float @dx.op.tertiary.f32(i32 46, float %5498, float %5490, float %5500)  ; FMad(a,b,c)
  %5502 = call float @dx.op.tertiary.f32(i32 46, float %5499, float %5491, float %5501)  ; FMad(a,b,c)
  %5503 = fsub fast float %5502, %5496
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5506 = fsub fast float %5503, %5505
  %5507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.i32 %5507, 0
  %5509 = call i32 @dx.op.binary.i32(i32 40, i32 %5385, i32 %5508)  ; UMin(a,b)
  %5510 = mul i32 %5509, 36
  %5511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5510, i32 undef)  ; BufferLoad(srv,index,wot)
  %5512 = extractvalue %dx.types.ResRet.i32 %5511, 0
  %5513 = add i32 %5510, 4
  %5514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5514, 0
  %5516 = fmul fast float %5515, %5407
  %5517 = fmul fast float %5515, %5409
  %5518 = extractvalue %dx.types.CBufRet.f32 %5514, 1
  %5519 = fadd fast float %5516, %5518
  %5520 = fadd fast float %5517, %5518
  %5521 = icmp eq i32 %5512, 0
  br i1 %5521, label %5590, label %5522

; <label>:5522                                    ; preds = %5453
  br label %5523

; <label>:5523                                    ; preds = %5580, %5522
  %5524 = phi float [ %5581, %5580 ], [ 0.000000e+00, %5522 ]
  %5525 = phi float [ %5582, %5580 ], [ 0.000000e+00, %5522 ]
  %5526 = phi float [ %5583, %5580 ], [ 0.000000e+00, %5522 ]
  %5527 = phi float [ %5584, %5580 ], [ 0.000000e+00, %5522 ]
  %5528 = phi float [ %5585, %5580 ], [ 0.000000e+00, %5522 ]
  %5529 = phi float [ %5586, %5580 ], [ 0.000000e+00, %5522 ]
  %5530 = phi i32 [ %5587, %5580 ], [ 0, %5522 ]
  %5531 = shl i32 %5530, 2
  %5532 = add i32 %5398, %5531
  %5533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5532, i32 undef)  ; BufferLoad(srv,index,wot)
  %5534 = extractvalue %dx.types.ResRet.f32 %5533, 0
  %5535 = add i32 %5402, %5531
  %5536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5535, i32 undef)  ; BufferLoad(srv,index,wot)
  %5537 = extractvalue %dx.types.ResRet.i32 %5536, 0
  %5538 = add i32 %5537, 0
  %5539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5540 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5539, i32 0)  ; GetDimensions(handle,mipLevel)
  %5541 = extractvalue %dx.types.Dimensions %5540, 0
  %5542 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5541)  ; FirstbitLo(value)
  %5543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.i32 %5543, 1
  %5545 = sub nsw i32 %5544, %5542
  %5546 = sitofp i32 %5545 to float
  %5547 = fsub fast float %5431, %5546
  %5548 = call float @dx.op.binary.f32(i32 35, float %5547, float 0.000000e+00)  ; FMax(a,b)
  %5549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5539, %dx.types.Handle %52, float %5519, float %5520, float %5534, float undef, i32 0, i32 0, i32 undef, float %5548)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 0
  %5551 = fcmp fast ogt float %5550, 0.000000e+00
  br i1 %5551, label %5552, label %5580

; <label>:5552                                    ; preds = %5523
  %5553 = add i32 %5513, %5531
  %5554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5553, i32 undef)  ; BufferLoad(srv,index,wot)
  %5555 = extractvalue %dx.types.ResRet.i32 %5554, 0
  %5556 = and i32 %5555, 32767
  %5557 = mul nuw nsw i32 %5556, 928
  %5558 = add nuw nsw i32 %5557, 48
  %5559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5558, i32 undef)  ; BufferLoad(srv,index,wot)
  %5560 = extractvalue %dx.types.ResRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.ResRet.f32 %5559, 1
  %5562 = extractvalue %dx.types.ResRet.f32 %5559, 2
  %5563 = add nuw nsw i32 %5557, 60
  %5564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5563, i32 undef)  ; BufferLoad(srv,index,wot)
  %5565 = extractvalue %dx.types.ResRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.ResRet.f32 %5564, 1
  %5567 = extractvalue %dx.types.ResRet.f32 %5564, 2
  %5568 = fmul fast float %5560, %5550
  %5569 = fmul fast float %5561, %5550
  %5570 = fmul fast float %5562, %5550
  %5571 = fadd fast float %5568, %5524
  %5572 = fadd fast float %5569, %5525
  %5573 = fadd fast float %5570, %5526
  %5574 = fmul fast float %5565, %5550
  %5575 = fmul fast float %5566, %5550
  %5576 = fmul fast float %5567, %5550
  %5577 = fadd fast float %5574, %5527
  %5578 = fadd fast float %5575, %5528
  %5579 = fadd fast float %5576, %5529
  br label %5580

; <label>:5580                                    ; preds = %5552, %5523
  %5581 = phi float [ %5571, %5552 ], [ %5524, %5523 ]
  %5582 = phi float [ %5572, %5552 ], [ %5525, %5523 ]
  %5583 = phi float [ %5573, %5552 ], [ %5526, %5523 ]
  %5584 = phi float [ %5577, %5552 ], [ %5527, %5523 ]
  %5585 = phi float [ %5578, %5552 ], [ %5528, %5523 ]
  %5586 = phi float [ %5579, %5552 ], [ %5529, %5523 ]
  %5587 = add nuw i32 %5530, 1
  %5588 = icmp eq i32 %5587, %5512
  br i1 %5588, label %5589, label %5523

; <label>:5589                                    ; preds = %5580
  br label %5590

; <label>:5590                                    ; preds = %5589, %5453
  %5591 = phi float [ 0.000000e+00, %5453 ], [ %5581, %5589 ]
  %5592 = phi float [ 0.000000e+00, %5453 ], [ %5582, %5589 ]
  %5593 = phi float [ 0.000000e+00, %5453 ], [ %5583, %5589 ]
  %5594 = phi float [ 0.000000e+00, %5453 ], [ %5584, %5589 ]
  %5595 = phi float [ 0.000000e+00, %5453 ], [ %5585, %5589 ]
  %5596 = phi float [ 0.000000e+00, %5453 ], [ %5586, %5589 ]
  %5597 = fadd fast float %5594, %5591
  %5598 = fmul fast float %5597, 0x3F847AE140000000
  %5599 = fadd fast float %5595, %5592
  %5600 = fmul fast float %5599, 0x3F847AE140000000
  %5601 = fadd fast float %5596, %5593
  %5602 = fmul fast float %5601, 0x3F847AE140000000
  br label %5603

; <label>:5603                                    ; preds = %5590, %5387, %5332, %5329, %5300, %5262
  %5604 = phi float [ %5324, %5300 ], [ 0.000000e+00, %5262 ], [ %5598, %5590 ], [ 0.000000e+00, %5332 ], [ 0.000000e+00, %5387 ], [ 0.000000e+00, %5329 ]
  %5605 = phi float [ %5326, %5300 ], [ 0.000000e+00, %5262 ], [ %5600, %5590 ], [ 0.000000e+00, %5332 ], [ 0.000000e+00, %5387 ], [ 0.000000e+00, %5329 ]
  %5606 = phi float [ %5328, %5300 ], [ 0.000000e+00, %5262 ], [ %5602, %5590 ], [ 0.000000e+00, %5332 ], [ 0.000000e+00, %5387 ], [ 0.000000e+00, %5329 ]
  %5607 = phi float [ %5314, %5300 ], [ -1.310720e+05, %5262 ], [ %5506, %5590 ], [ -1.310720e+05, %5332 ], [ -1.310720e+05, %5387 ], [ -1.310720e+05, %5329 ]
  %5608 = phi i1 [ true, %5300 ], [ false, %5262 ], [ true, %5590 ], [ false, %5332 ], [ false, %5387 ], [ false, %5329 ]
  %5609 = and i32 %208, 3
  %5610 = icmp eq i32 %5609, 1
  %5611 = select i1 %5610, float 1.000000e+00, float 0.000000e+00
  %5612 = fsub fast float %5607, %172
  %5613 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5614 = select i1 %5608, float %5613, float 1.000000e+00
  %5615 = fmul fast float %5614, %5611
  %5616 = icmp eq i32 %5609, 3
  %5617 = select i1 %5616, float 1.000000e+00, float %5615
  %5618 = call float @dx.op.binary.f32(i32 35, float %5175, float %5617)  ; FMax(a,b)
  %5619 = call float @dx.op.unary.f32(i32 7, float %5618)  ; Saturate(value)
  %5620 = fcmp fast une float %5619, 0.000000e+00
  %5621 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = call float @dx.op.unary.f32(i32 25, float %5621)  ; Rsqrt(value)
  br i1 %5620, label %5630, label %5623

; <label>:5623                                    ; preds = %5603
  %5624 = fmul fast float %5622, %170
  %5625 = fmul fast float %5622, %171
  %5626 = fmul fast float %5622, %172
  %5627 = fsub fast float -0.000000e+00, %5624
  %5628 = fsub fast float -0.000000e+00, %5625
  %5629 = fsub fast float -0.000000e+00, %5626
  br label %5798

; <label>:5630                                    ; preds = %5603
  %5631 = fmul fast float %170, %5622
  %5632 = fsub fast float -0.000000e+00, %5631
  %5633 = fmul fast float %171, %5622
  %5634 = fsub fast float -0.000000e+00, %5633
  %5635 = fmul fast float %172, %5622
  %5636 = fsub fast float -0.000000e+00, %5635
  %5637 = call float @dx.op.dot3.f32(i32 55, float %5632, float %5634, float %5636, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = fmul fast float %5619, 2.500000e+00
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = fmul fast float %5619, 0x4013FFFFE0000000
  %5641 = fadd fast float %5640, 0xBFFFFFFFE0000000
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = fmul fast float %5619, 0x4004000020000000
  %5644 = fadd fast float %5643, 0xBFF8000040000000
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5647 = fmul fast float %5179, 1.000000e+01
  %5648 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5649 = fmul fast float %5648, 2.000000e+00
  %5650 = fsub fast float 3.000000e+00, %5649
  %5651 = fmul fast float %5648, %5648
  %5652 = fmul fast float %5651, %5650
  %5653 = fsub fast float 1.000000e+00, %5652
  %5654 = fsub fast float 0x3FE3333340000000, %5200
  %5655 = fmul fast float %5654, 0x400AAAAAA0000000
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5653, %5656
  %5658 = fmul fast float %5237, 0x3FEA2B8620000000
  %5659 = fmul fast float %5238, 0x3FEA2B8620000000
  %5660 = fmul fast float %5239, 0x3FEA2B8620000000
  %5661 = fadd fast float %5658, 0x3FC81DFBA0000000
  %5662 = fmul fast float %5661, %5237
  %5663 = fadd fast float %5662, 0x3F910E6020000000
  %5664 = fadd fast float %5659, 0x3FC81DFBA0000000
  %5665 = fmul fast float %5664, %5238
  %5666 = fadd fast float %5665, 0x3F910E6020000000
  %5667 = fadd fast float %5660, 0x3FC81DFBA0000000
  %5668 = fmul fast float %5667, %5239
  %5669 = fadd fast float %5668, 0x3F910E6020000000
  %5670 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5672 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5673 = fsub fast float %5670, %5237
  %5674 = fsub fast float %5671, %5238
  %5675 = fsub fast float %5672, %5239
  %5676 = fmul fast float %5673, %5646
  %5677 = fmul fast float %5676, %5657
  %5678 = fmul fast float %5674, %5646
  %5679 = fmul fast float %5678, %5657
  %5680 = fmul fast float %5675, %5646
  %5681 = fmul fast float %5680, %5657
  %5682 = fadd fast float %5677, %5237
  %5683 = fadd fast float %5679, %5238
  %5684 = fadd fast float %5681, %5239
  %5685 = fmul fast float %5172, %5172
  %5686 = fmul fast float %5685, %5685
  %5687 = fadd fast float %5642, 1.000000e+00
  %5688 = fsub fast float %5687, %5657
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = call float @dx.op.unary.f32(i32 7, float %5690)  ; Saturate(value)
  %5692 = fsub fast float 1.000000e+00, %5686
  %5693 = call float @dx.op.binary.f32(i32 36, float %5689, float %5692)  ; FMin(a,b)
  %5694 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5695 = call float @dx.op.binary.f32(i32 35, float %5693, float %5694)  ; FMax(a,b)
  %5696 = fadd fast float %5691, 0xBFE4CCCCC0000000
  %5697 = fmul fast float %5696, 0x4006DB6DA0000000
  %5698 = call float @dx.op.unary.f32(i32 7, float %5697)  ; Saturate(value)
  %5699 = fmul fast float %5698, 2.000000e+00
  %5700 = fsub fast float 3.000000e+00, %5699
  %5701 = bitcast float %5197 to i32
  %5702 = ashr i32 %5701, 1
  %5703 = add nsw i32 %5702, 532487669
  %5704 = bitcast i32 %5703 to float
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = bitcast float %5705 to i32
  %5707 = sub nsw i32 2129859010, %5706
  %5708 = bitcast i32 %5707 to float
  %5709 = fmul fast float %5708, 2.000000e+00
  %5710 = bitcast float %5198 to i32
  %5711 = ashr i32 %5710, 1
  %5712 = add nsw i32 %5711, 532487669
  %5713 = bitcast i32 %5712 to float
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = bitcast float %5714 to i32
  %5716 = sub nsw i32 2129859010, %5715
  %5717 = bitcast i32 %5716 to float
  %5718 = fmul fast float %5717, 2.000000e+00
  %5719 = bitcast float %5199 to i32
  %5720 = ashr i32 %5719, 1
  %5721 = add nsw i32 %5720, 532487669
  %5722 = bitcast i32 %5721 to float
  %5723 = fsub fast float 1.000000e+00, %5722
  %5724 = bitcast float %5723 to i32
  %5725 = sub nsw i32 2129859010, %5724
  %5726 = bitcast i32 %5725 to float
  %5727 = fmul fast float %5726, 2.000000e+00
  %5728 = fsub fast float 0x4002A9FBE0000000, %5709
  %5729 = fadd fast float %5709, 0x3FD54FDF00000000
  %5730 = bitcast float %5729 to i32
  %5731 = sub nsw i32 2129859010, %5730
  %5732 = bitcast i32 %5731 to float
  %5733 = fmul fast float %5732, %5728
  %5734 = fmul fast float %5733, %5733
  %5735 = fsub fast float 0x4002A9FBE0000000, %5718
  %5736 = fadd fast float %5718, 0x3FD54FDF00000000
  %5737 = bitcast float %5736 to i32
  %5738 = sub nsw i32 2129859010, %5737
  %5739 = bitcast i32 %5738 to float
  %5740 = fmul fast float %5739, %5735
  %5741 = fmul fast float %5740, %5740
  %5742 = fsub fast float 0x4002A9FBE0000000, %5727
  %5743 = fadd fast float %5727, 0x3FD54FDF00000000
  %5744 = bitcast float %5743 to i32
  %5745 = sub nsw i32 2129859010, %5744
  %5746 = bitcast i32 %5745 to float
  %5747 = fmul fast float %5746, %5742
  %5748 = fmul fast float %5747, %5747
  %5749 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5734)  ; FMax(a,b)
  %5750 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5741)  ; FMax(a,b)
  %5751 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5748)  ; FMax(a,b)
  %5752 = fsub fast float 1.000000e+00, %5637
  %5753 = fadd fast float %5752, %5653
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = fsub fast float 1.000000e+00, %5617
  %5756 = fmul fast float %5695, %5755
  %5757 = fmul fast float %5698, %5698
  %5758 = fmul fast float %5757, %5756
  %5759 = fmul fast float %5758, %5700
  %5760 = fmul fast float %5755, 0xBFE99999A0000000
  %5761 = fmul fast float %5760, %5646
  %5762 = fmul fast float %5761, %5657
  %5763 = fadd fast float %5762, 1.000000e+00
  %5764 = fadd fast float %5200, -1.000000e+00
  %5765 = fmul fast float %5763, %5764
  %5766 = fadd fast float %5765, 1.000000e+00
  %5767 = fsub fast float %5749, %5197
  %5768 = fsub fast float %5750, %5198
  %5769 = fsub fast float %5751, %5199
  %5770 = fmul fast float %5759, %5767
  %5771 = fmul fast float %5759, %5768
  %5772 = fmul fast float %5759, %5769
  %5773 = fadd fast float %5770, %5197
  %5774 = fadd fast float %5771, %5198
  %5775 = fadd fast float %5772, %5199
  %5776 = fsub fast float %120, %5166
  %5777 = fsub fast float %122, %5167
  %5778 = fsub fast float %124, %5168
  %5779 = fmul fast float %5759, %5776
  %5780 = fmul fast float %5759, %5777
  %5781 = fmul fast float %5759, %5778
  %5782 = fadd fast float %5779, %5166
  %5783 = fadd fast float %5780, %5167
  %5784 = fadd fast float %5781, %5168
  %5785 = fmul fast float %5759, %5754
  %5786 = call float @dx.op.unary.f32(i32 7, float %5766)  ; Saturate(value)
  %5787 = fsub fast float 1.000000e+00, %5786
  %5788 = fmul fast float %5785, %5787
  %5789 = fadd fast float %5788, %5786
  %5790 = fsub fast float 1.000000e+00, %5172
  %5791 = fmul fast float %5759, %5790
  %5792 = fadd fast float %5791, %5172
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5782, float %5783, float %5784, float %5782, float %5783, float %5784)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = call float @dx.op.unary.f32(i32 25, float %5793)  ; Rsqrt(value)
  %5795 = fmul fast float %5782, %5794
  %5796 = fmul fast float %5783, %5794
  %5797 = fmul fast float %5784, %5794
  br label %5798

; <label>:5798                                    ; preds = %5630, %5623
  %5799 = phi float [ %5629, %5623 ], [ %5636, %5630 ]
  %5800 = phi float [ %5628, %5623 ], [ %5634, %5630 ]
  %5801 = phi float [ %5627, %5623 ], [ %5632, %5630 ]
  %5802 = phi float [ %5626, %5623 ], [ %5635, %5630 ]
  %5803 = phi float [ %5625, %5623 ], [ %5633, %5630 ]
  %5804 = phi float [ %5624, %5623 ], [ %5631, %5630 ]
  %5805 = phi float [ %5237, %5623 ], [ %5682, %5630 ]
  %5806 = phi float [ %5238, %5623 ], [ %5683, %5630 ]
  %5807 = phi float [ %5239, %5623 ], [ %5684, %5630 ]
  %5808 = phi float [ %5197, %5623 ], [ %5773, %5630 ]
  %5809 = phi float [ %5198, %5623 ], [ %5774, %5630 ]
  %5810 = phi float [ %5199, %5623 ], [ %5775, %5630 ]
  %5811 = phi float [ %5166, %5623 ], [ %5795, %5630 ]
  %5812 = phi float [ %5167, %5623 ], [ %5796, %5630 ]
  %5813 = phi float [ %5168, %5623 ], [ %5797, %5630 ]
  %5814 = phi float [ %5200, %5623 ], [ %5789, %5630 ]
  %5815 = phi float [ %5172, %5623 ], [ %5792, %5630 ]
  %5816 = fsub fast float -0.000000e+00, %172
  %5817 = select i1 %232, float 0.000000e+00, float %5810
  %5818 = call float @dx.op.dot3.f32(i32 55, float %5811, float %5812, float %5813, float %5801, float %5800, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5803, float %5802, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = fmul fast float %5820, 2.000000e+00
  %5822 = fmul fast float %5821, %5811
  %5823 = fmul fast float %5821, %5812
  %5824 = fmul fast float %5821, %5813
  %5825 = fsub fast float %5804, %5822
  %5826 = fsub fast float %5803, %5823
  %5827 = fsub fast float %5802, %5824
  %5828 = call float @dx.op.binary.f32(i32 36, float %5815, float 1.000000e+00)  ; FMin(a,b)
  %5829 = fsub fast float 1.000000e+00, %5828
  %5830 = bitcast float %5829 to i32
  %5831 = ashr i32 %5830, 1
  %5832 = add nsw i32 %5831, 532487669
  %5833 = bitcast i32 %5832 to float
  %5834 = fsub fast float 1.000000e+00, %5814
  %5835 = call float @dx.op.binary.f32(i32 35, float %5834, float 0x3F847AE140000000)  ; FMax(a,b)
  %5836 = fmul fast float %5835, %5835
  %5837 = fmul fast float %5836, %5836
  %5838 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5833, float %5837, float %5838, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5840 = extractvalue %dx.types.ResRet.f32 %5839, 0
  %5841 = fsub fast float 1.000000e+00, %5815
  %5842 = bitcast float %5841 to i32
  %5843 = sub nsw i32 2129859010, %5842
  %5844 = bitcast i32 %5843 to float
  %5845 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = fmul fast float %5845, 0x3FD20DD760000000
  %5847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5848 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fcmp fast oeq float %5848, 0.000000e+00
  %5850 = fcmp fast oeq float %5847, 0.000000e+00
  %5851 = or i1 %5850, %5849
  br i1 %5851, label %5881, label %5852

; <label>:5852                                    ; preds = %5798
  %5853 = fsub fast float -0.000000e+00, %82
  %5854 = fsub fast float -0.000000e+00, %80
  %5855 = call float @dx.op.unary.f32(i32 24, float %5848)  ; Sqrt(value)
  %5856 = fdiv fast float %5855, %5847
  %5857 = fcmp fast ogt float %5856, 0x3FFB6F8900000000
  %5858 = select i1 %5857, float 0x3FFB6F8900000000, float %5856
  %5859 = fmul fast float %5858, 0x3FE8A23460000000
  %5860 = call float @dx.op.unary.f32(i32 7, float %5859)  ; Saturate(value)
  %5861 = call float @dx.op.binary.f32(i32 35, float %5858, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5862 = fmul fast float %5860, %5847
  %5863 = fmul fast float %5861, 0x3FF279A740000000
  %5864 = fadd fast float %5863, -1.000000e+00
  %5865 = call float @dx.op.dot3.f32(i32 55, float %5853, float %5854, float %81, float %5853, float %5854, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5866 = call float @dx.op.unary.f32(i32 25, float %5865)  ; Rsqrt(value)
  %5867 = fmul fast float %5866, %5853
  %5868 = fmul fast float %5866, %5854
  %5869 = fmul fast float %5866, %81
  %5870 = fmul fast float %5864, %5864
  %5871 = fsub fast float 1.000000e+00, %5870
  %5872 = fmul fast float %5861, 0x40005F8BE0000000
  %5873 = fsub fast float 0x400C5BF8A0000000, %5872
  %5874 = fdiv fast float %5862, %5873
  %5875 = fmul fast float %5874, 0x3FEE31C3C0000000
  %5876 = fmul fast float %5875, %5871
  %5877 = fmul fast float %5861, 0x3FDACB7480000000
  %5878 = fadd fast float %5877, 0xBFD7347680000000
  %5879 = fmul fast float %5878, %5874
  %5880 = fmul fast float %5879, %5871
  br label %5881

; <label>:5881                                    ; preds = %5852, %5798
  %5882 = phi float [ %5867, %5852 ], [ 0.000000e+00, %5798 ]
  %5883 = phi float [ %5868, %5852 ], [ 0.000000e+00, %5798 ]
  %5884 = phi float [ %5869, %5852 ], [ 0.000000e+00, %5798 ]
  %5885 = phi float [ %5876, %5852 ], [ 0.000000e+00, %5798 ]
  %5886 = phi float [ %5880, %5852 ], [ 0.000000e+00, %5798 ]
  %5887 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5883, float %5884, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = fmul fast float %5887, 0x3FDF454380000000
  %5889 = fmul fast float %5887, %5887
  %5890 = fmul fast float %5889, 0x3FEE471020000000
  %5891 = fadd fast float %5890, 0xBFD42F6020000000
  %5892 = fmul fast float %5847, 0x3FD20DD760000000
  %5893 = fmul fast float %5891, %5886
  %5894 = fadd fast float %5893, %5892
  %5895 = fmul fast float %5888, %5885
  %5896 = fadd fast float %5894, %5895
  %5897 = fsub fast float %5894, %5895
  %5898 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5883, float %5884, float %5825, float %5826, float %5827)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = fmul fast float %5898, 0x3FDF454380000000
  %5900 = fmul fast float %5898, %5898
  %5901 = fmul fast float %5900, 0x3FEE471020000000
  %5902 = fadd fast float %5901, 0xBFD42F6020000000
  %5903 = call float @dx.op.dot3.f32(i32 55, float %5847, float %5885, float %5886, float 0x3FD20DD760000000, float %5899, float %5902)  ; Dot3(ax,ay,az,bx,by,bz)
  %5904 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5905 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5906 = fcmp fast oeq float %5905, 0.000000e+00
  %5907 = fcmp fast oeq float %5904, 0.000000e+00
  %5908 = or i1 %5907, %5906
  br i1 %5908, label %5938, label %5909

; <label>:5909                                    ; preds = %5881
  %5910 = fsub fast float -0.000000e+00, %78
  %5911 = fsub fast float -0.000000e+00, %76
  %5912 = call float @dx.op.unary.f32(i32 24, float %5905)  ; Sqrt(value)
  %5913 = fdiv fast float %5912, %5904
  %5914 = fcmp fast ogt float %5913, 0x3FFB6F8900000000
  %5915 = select i1 %5914, float 0x3FFB6F8900000000, float %5913
  %5916 = fmul fast float %5915, 0x3FE8A23460000000
  %5917 = call float @dx.op.unary.f32(i32 7, float %5916)  ; Saturate(value)
  %5918 = call float @dx.op.binary.f32(i32 35, float %5915, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5919 = fmul fast float %5917, %5904
  %5920 = fmul fast float %5918, 0x3FF279A740000000
  %5921 = fadd fast float %5920, -1.000000e+00
  %5922 = call float @dx.op.dot3.f32(i32 55, float %5910, float %5911, float %77, float %5910, float %5911, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5923 = call float @dx.op.unary.f32(i32 25, float %5922)  ; Rsqrt(value)
  %5924 = fmul fast float %5923, %5910
  %5925 = fmul fast float %5923, %5911
  %5926 = fmul fast float %5923, %77
  %5927 = fmul fast float %5921, %5921
  %5928 = fsub fast float 1.000000e+00, %5927
  %5929 = fmul fast float %5918, 0x40005F8BE0000000
  %5930 = fsub fast float 0x400C5BF8A0000000, %5929
  %5931 = fdiv fast float %5919, %5930
  %5932 = fmul fast float %5931, 0x3FEE31C3C0000000
  %5933 = fmul fast float %5932, %5928
  %5934 = fmul fast float %5918, 0x3FDACB7480000000
  %5935 = fadd fast float %5934, 0xBFD7347680000000
  %5936 = fmul fast float %5935, %5931
  %5937 = fmul fast float %5936, %5928
  br label %5938

; <label>:5938                                    ; preds = %5909, %5881
  %5939 = phi float [ %5924, %5909 ], [ 0.000000e+00, %5881 ]
  %5940 = phi float [ %5925, %5909 ], [ 0.000000e+00, %5881 ]
  %5941 = phi float [ %5926, %5909 ], [ 0.000000e+00, %5881 ]
  %5942 = phi float [ %5933, %5909 ], [ 0.000000e+00, %5881 ]
  %5943 = phi float [ %5937, %5909 ], [ 0.000000e+00, %5881 ]
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5939, float %5940, float %5941, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = fmul fast float %5944, 0x3FDF454380000000
  %5946 = fmul fast float %5944, %5944
  %5947 = fmul fast float %5946, 0x3FEE471020000000
  %5948 = fadd fast float %5947, 0xBFD42F6020000000
  %5949 = fmul fast float %5904, 0x3FD20DD760000000
  %5950 = fmul fast float %5948, %5943
  %5951 = fadd fast float %5950, %5949
  %5952 = fmul fast float %5945, %5942
  %5953 = fadd fast float %5951, %5952
  %5954 = fsub fast float %5951, %5952
  %5955 = call float @dx.op.dot3.f32(i32 55, float %5939, float %5940, float %5941, float %5825, float %5826, float %5827)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = fmul fast float %5955, 0x3FDF454380000000
  %5957 = fmul fast float %5955, %5955
  %5958 = fmul fast float %5957, 0x3FEE471020000000
  %5959 = fadd fast float %5958, 0xBFD42F6020000000
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5904, float %5942, float %5943, float 0x3FD20DD760000000, float %5956, float %5959)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5962 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = fcmp fast oeq float %5962, 0.000000e+00
  %5964 = fcmp fast oeq float %5961, 0.000000e+00
  %5965 = or i1 %5964, %5963
  br i1 %5965, label %5995, label %5966

; <label>:5966                                    ; preds = %5938
  %5967 = fsub fast float -0.000000e+00, %74
  %5968 = fsub fast float -0.000000e+00, %72
  %5969 = call float @dx.op.unary.f32(i32 24, float %5962)  ; Sqrt(value)
  %5970 = fdiv fast float %5969, %5961
  %5971 = fcmp fast ogt float %5970, 0x3FFB6F8900000000
  %5972 = select i1 %5971, float 0x3FFB6F8900000000, float %5970
  %5973 = fmul fast float %5972, 0x3FE8A23460000000
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = call float @dx.op.binary.f32(i32 35, float %5972, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5976 = fmul fast float %5974, %5961
  %5977 = fmul fast float %5975, 0x3FF279A740000000
  %5978 = fadd fast float %5977, -1.000000e+00
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %73, float %5967, float %5968, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = call float @dx.op.unary.f32(i32 25, float %5979)  ; Rsqrt(value)
  %5981 = fmul fast float %5980, %5967
  %5982 = fmul fast float %5980, %5968
  %5983 = fmul fast float %5980, %73
  %5984 = fmul fast float %5978, %5978
  %5985 = fsub fast float 1.000000e+00, %5984
  %5986 = fmul fast float %5975, 0x40005F8BE0000000
  %5987 = fsub fast float 0x400C5BF8A0000000, %5986
  %5988 = fdiv fast float %5976, %5987
  %5989 = fmul fast float %5988, 0x3FEE31C3C0000000
  %5990 = fmul fast float %5989, %5985
  %5991 = fmul fast float %5975, 0x3FDACB7480000000
  %5992 = fadd fast float %5991, 0xBFD7347680000000
  %5993 = fmul fast float %5992, %5988
  %5994 = fmul fast float %5993, %5985
  br label %5995

; <label>:5995                                    ; preds = %5966, %5938
  %5996 = phi float [ %5981, %5966 ], [ 0.000000e+00, %5938 ]
  %5997 = phi float [ %5982, %5966 ], [ 0.000000e+00, %5938 ]
  %5998 = phi float [ %5983, %5966 ], [ 0.000000e+00, %5938 ]
  %5999 = phi float [ %5990, %5966 ], [ 0.000000e+00, %5938 ]
  %6000 = phi float [ %5994, %5966 ], [ 0.000000e+00, %5938 ]
  %6001 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = fmul fast float %6001, 0x3FDF454380000000
  %6003 = fmul fast float %6001, %6001
  %6004 = fmul fast float %6003, 0x3FEE471020000000
  %6005 = fadd fast float %6004, 0xBFD42F6020000000
  %6006 = fmul fast float %5961, 0x3FD20DD760000000
  %6007 = fmul fast float %6005, %6000
  %6008 = fadd fast float %6007, %6006
  %6009 = fmul fast float %6002, %5999
  %6010 = fadd fast float %6008, %6009
  %6011 = fsub fast float %6008, %6009
  %6012 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %5825, float %5826, float %5827)  ; Dot3(ax,ay,az,bx,by,bz)
  %6013 = fmul fast float %6012, 0x3FDF454380000000
  %6014 = fmul fast float %6012, %6012
  %6015 = fmul fast float %6014, 0x3FEE471020000000
  %6016 = fadd fast float %6015, 0xBFD42F6020000000
  %6017 = call float @dx.op.dot3.f32(i32 55, float %5961, float %5999, float %6000, float 0x3FD20DD760000000, float %6013, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %6018 = call float @dx.op.binary.f32(i32 35, float %5896, float 0.000000e+00)  ; FMax(a,b)
  %6019 = call float @dx.op.binary.f32(i32 35, float %5953, float 0.000000e+00)  ; FMax(a,b)
  %6020 = call float @dx.op.binary.f32(i32 35, float %6010, float 0.000000e+00)  ; FMax(a,b)
  %6021 = call float @dx.op.binary.f32(i32 35, float %5897, float 0.000000e+00)  ; FMax(a,b)
  %6022 = call float @dx.op.binary.f32(i32 35, float %5954, float 0.000000e+00)  ; FMax(a,b)
  %6023 = call float @dx.op.binary.f32(i32 35, float %6011, float 0.000000e+00)  ; FMax(a,b)
  %6024 = call float @dx.op.binary.f32(i32 35, float %5903, float 0.000000e+00)  ; FMax(a,b)
  %6025 = call float @dx.op.binary.f32(i32 35, float %5960, float 0.000000e+00)  ; FMax(a,b)
  %6026 = call float @dx.op.binary.f32(i32 35, float %6017, float 0.000000e+00)  ; FMax(a,b)
  %6027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.f32 %6027, 0
  %6029 = call float @dx.op.binary.f32(i32 36, float %5805, float %6028)  ; FMin(a,b)
  %6030 = fmul fast float %6029, %5829
  %6031 = fsub fast float 1.000000e+00, %6030
  %6032 = bitcast float %6031 to i32
  %6033 = sub nsw i32 2129859010, %6032
  %6034 = bitcast i32 %6033 to float
  %6035 = call float @dx.op.binary.f32(i32 36, float %5806, float %6028)  ; FMin(a,b)
  %6036 = fmul fast float %6035, %5829
  %6037 = fsub fast float 1.000000e+00, %6036
  %6038 = bitcast float %6037 to i32
  %6039 = sub nsw i32 2129859010, %6038
  %6040 = bitcast i32 %6039 to float
  %6041 = call float @dx.op.binary.f32(i32 36, float %5807, float %6028)  ; FMin(a,b)
  %6042 = fmul fast float %6041, %5829
  %6043 = fsub fast float 1.000000e+00, %6042
  %6044 = bitcast float %6043 to i32
  %6045 = sub nsw i32 2129859010, %6044
  %6046 = bitcast i32 %6045 to float
  %6047 = fmul fast float %6018, %5828
  %6048 = fmul fast float %6047, %6034
  %6049 = fmul fast float %6019, %5828
  %6050 = fmul fast float %6049, %6040
  %6051 = fmul fast float %6020, %5828
  %6052 = fmul fast float %6051, %6046
  %6053 = call float @dx.op.binary.f32(i32 36, float %5808, float %6028)  ; FMin(a,b)
  %6054 = fmul fast float %6053, %5829
  %6055 = fsub fast float 1.000000e+00, %6054
  %6056 = bitcast float %6055 to i32
  %6057 = sub nsw i32 2129859010, %6056
  %6058 = bitcast i32 %6057 to float
  %6059 = call float @dx.op.binary.f32(i32 36, float %5809, float %6028)  ; FMin(a,b)
  %6060 = fmul fast float %6059, %5829
  %6061 = fsub fast float 1.000000e+00, %6060
  %6062 = bitcast float %6061 to i32
  %6063 = sub nsw i32 2129859010, %6062
  %6064 = bitcast i32 %6063 to float
  %6065 = call float @dx.op.binary.f32(i32 36, float %5817, float %6028)  ; FMin(a,b)
  %6066 = fmul fast float %6065, %5829
  %6067 = fsub fast float 1.000000e+00, %6066
  %6068 = bitcast float %6067 to i32
  %6069 = sub nsw i32 2129859010, %6068
  %6070 = bitcast i32 %6069 to float
  %6071 = fmul fast float %6024, %5828
  %6072 = fmul fast float %6071, %6058
  %6073 = fmul fast float %6025, %5828
  %6074 = fmul fast float %6073, %6064
  %6075 = fmul fast float %6026, %5828
  %6076 = fmul fast float %6075, %6070
  %6077 = call float @dx.op.dot3.f32(i32 55, float %6048, float %6050, float %6052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = select i1 %232, float 0.000000e+00, float %6048
  %6079 = select i1 %232, float %6077, float %6050
  %6080 = select i1 %232, float 0.000000e+00, float %6052
  %6081 = call float @dx.op.dot3.f32(i32 55, float %6021, float %6022, float %6023, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6082 = select i1 %232, float 0.000000e+00, float %6021
  %6083 = select i1 %232, float %6081, float %6022
  %6084 = select i1 %232, float 0.000000e+00, float %6023
  %6085 = call float @dx.op.dot3.f32(i32 55, float %6072, float %6074, float %6076, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6086 = select i1 %232, float 0.000000e+00, float %6072
  %6087 = select i1 %232, float %6085, float %6074
  %6088 = select i1 %232, float 0.000000e+00, float %6076
  %6089 = fmul fast float %4522, %4522
  %6090 = call float @dx.op.unary.f32(i32 7, float %6089)  ; Saturate(value)
  %6091 = fmul fast float %5819, 9.843750e-01
  %6092 = fmul fast float %5814, 9.843750e-01
  %6093 = fadd fast float %6091, 7.812500e-03
  %6094 = fadd fast float %6092, 7.812500e-03
  %6095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %6093, float %6094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6096 = extractvalue %dx.types.ResRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.ResRet.f32 %6095, 1
  %6098 = extractvalue %dx.types.ResRet.f32 %6095, 2
  %6099 = extractvalue %dx.types.ResRet.f32 %6095, 3
  %6100 = fsub fast float 1.000000e+00, %6090
  %6101 = fsub fast float %6098, %6096
  %6102 = fsub fast float %6099, %6097
  %6103 = fmul fast float %6101, %6100
  %6104 = fmul fast float %6102, %6100
  %6105 = fadd fast float %6103, %6096
  %6106 = fadd fast float %6104, %6097
  %6107 = fmul fast float %6105, %5808
  %6108 = fmul fast float %6105, %5809
  %6109 = fmul fast float %6105, %5817
  %6110 = fadd fast float %6107, %6106
  %6111 = fadd fast float %6108, %6106
  %6112 = fadd fast float %6109, %6106
  %6113 = fcmp fast ogt float %5173, 0.000000e+00
  br i1 %6113, label %6114, label %6140

; <label>:6114                                    ; preds = %5995
  %6115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5173, float %5819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6116 = extractvalue %dx.types.ResRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.ResRet.f32 %6115, 1
  %6118 = extractvalue %dx.types.ResRet.f32 %6115, 2
  %6119 = fadd fast float %6116, -5.000000e-01
  %6120 = fadd fast float %6117, -5.000000e-01
  %6121 = fadd fast float %6118, -5.000000e-01
  %6122 = fsub fast float 1.000000e+00, %5808
  %6123 = fsub fast float 1.000000e+00, %5809
  %6124 = fsub fast float 1.000000e+00, %5817
  %6125 = fmul fast float %5808, 4.000000e+00
  %6126 = fmul fast float %6125, %6122
  %6127 = fmul fast float %6126, %6119
  %6128 = fmul fast float %5809, 4.000000e+00
  %6129 = fmul fast float %6128, %6123
  %6130 = fmul fast float %6129, %6120
  %6131 = fmul fast float %5817, 4.000000e+00
  %6132 = fmul fast float %6131, %6124
  %6133 = fmul fast float %6132, %6121
  %6134 = fadd fast float %6127, %6110
  %6135 = fadd fast float %6130, %6111
  %6136 = fadd fast float %6133, %6112
  %6137 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6138 = call float @dx.op.unary.f32(i32 7, float %6135)  ; Saturate(value)
  %6139 = call float @dx.op.unary.f32(i32 7, float %6136)  ; Saturate(value)
  br label %6140

; <label>:6140                                    ; preds = %6114, %5995
  %6141 = phi float [ %6137, %6114 ], [ %6110, %5995 ]
  %6142 = phi float [ %6138, %6114 ], [ %6111, %5995 ]
  %6143 = phi float [ %6139, %6114 ], [ %6112, %5995 ]
  %6144 = call float @dx.op.binary.f32(i32 35, float %6142, float %6143)  ; FMax(a,b)
  %6145 = call float @dx.op.binary.f32(i32 35, float %6141, float %6144)  ; FMax(a,b)
  %6146 = fsub fast float 1.000000e+00, %6145
  %6147 = fmul fast float %6145, %5814
  %6148 = fadd fast float %6147, %5814
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 2
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 3
  %6152 = fmul fast float %6148, %6150
  %6153 = fadd fast float %6152, %6151
  %6154 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  %6155 = fsub fast float 1.000000e+00, %5840
  %6156 = fadd fast float %6155, %6154
  %6157 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  %6158 = fcmp fast olt float %6157, 1.000000e+00
  br i1 %6158, label %6159, label %6635

; <label>:6159                                    ; preds = %6140
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6162 = extractvalue %dx.types.CBufRet.f32 %6160, 3
  %6163 = fmul fast float %6161, %111
  %6164 = fmul fast float %6162, %112
  %6165 = fptoui float %6163 to i32
  %6166 = fptoui float %6164 to i32
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.CBufRet.f32 %6167, 2
  %6170 = extractvalue %dx.types.CBufRet.f32 %6167, 3
  %6171 = fadd fast float %99, -4.000000e+00
  %6172 = call float @dx.op.binary.f32(i32 35, float %6171, float 0.000000e+00)  ; FMax(a,b)
  %6173 = fadd fast float %6172, %6168
  %6174 = fmul fast float %6173, %6169
  %6175 = call float @dx.op.unary.f32(i32 23, float %6174)  ; Log(value)
  %6176 = fmul fast float %6175, %6170
  %6177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6178 = extractvalue %dx.types.CBufRet.f32 %6177, 2
  %6179 = fmul fast float %6176, %6178
  %6180 = call float @dx.op.unary.f32(i32 7, float %6179)  ; Saturate(value)
  %6181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.i32 %6181, 1
  %6183 = add i32 %6182, -1
  %6184 = uitofp i32 %6182 to float
  %6185 = fmul fast float %6184, %6180
  %6186 = fptoui float %6185 to i32
  %6187 = call i32 @dx.op.binary.i32(i32 40, i32 %6186, i32 %6183)  ; UMin(a,b)
  %6188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.i32 %6188, 2
  %6190 = extractvalue %dx.types.CBufRet.i32 %6188, 3
  %6191 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6166, i32 %6189, i32 %6165)  ; UMad(a,b,c)
  %6192 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6187, i32 %6190, i32 %6191)  ; UMad(a,b,c)
  %6193 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %6194 = fptoui float %6193 to i32
  %6195 = lshr i32 %6194, 5
  %6196 = call i32 @dx.op.binary.i32(i32 40, i32 %6195, i32 8191)  ; UMin(a,b)
  %6197 = fsub fast float %5607, %172
  %6198 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6199 = fcmp fast ogt float %6198, 0.000000e+00
  %6200 = fcmp fast ogt float %5827, 0.000000e+00
  %6201 = and i1 %6200, %6199
  br i1 %6201, label %6202, label %6231

; <label>:6202                                    ; preds = %6159
  %6203 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %5827, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = call float @dx.op.binary.f32(i32 35, float %6203, float -1.000000e+00)  ; FMax(a,b)
  %6205 = call float @dx.op.binary.f32(i32 36, float %6204, float 1.000000e+00)  ; FMin(a,b)
  %6206 = fmul fast float %6205, %6205
  %6207 = fsub fast float 1.000000e+00, %6206
  %6208 = fmul fast float %6207, 0x3FFC6E2300000000
  %6209 = fsub fast float 1.000000e+00, %6208
  %6210 = fcmp fast ogt float %6209, 0.000000e+00
  %6211 = call float @dx.op.unary.f32(i32 24, float %6209)  ; Sqrt(value)
  %6212 = fsub fast float 1.000000e+00, %6211
  %6213 = call float @dx.op.unary.f32(i32 23, float %6212)  ; Log(value)
  %6214 = fmul fast float %6213, 5.000000e+00
  %6215 = call float @dx.op.unary.f32(i32 21, float %6214)  ; Exp(value)
  %6216 = fmul fast float %6215, 0x3FEF591A60000000
  %6217 = fadd fast float %6216, 0x3F94DCB540000000
  %6218 = select i1 %6210, float %6217, float 1.000000e+00
  %6219 = fcmp fast oge float %6218, 1.000000e+00
  %6220 = fmul fast float %6203, 2.000000e+00
  %6221 = fadd fast float %6220, %5827
  %6222 = select i1 %6219, float %6221, float %5827
  %6223 = fsub fast float %6222, %5827
  %6224 = fmul fast float %6223, %6198
  %6225 = fadd fast float %6224, %5827
  %6226 = call float @dx.op.dot3.f32(i32 55, float %5825, float %5826, float %6225, float %5825, float %5826, float %6225)  ; Dot3(ax,ay,az,bx,by,bz)
  %6227 = call float @dx.op.unary.f32(i32 25, float %6226)  ; Rsqrt(value)
  %6228 = fmul fast float %6227, %5825
  %6229 = fmul fast float %6227, %5826
  %6230 = fmul fast float %6225, %6227
  br label %6231

; <label>:6231                                    ; preds = %6202, %6159
  %6232 = phi float [ %6228, %6202 ], [ %5825, %6159 ]
  %6233 = phi float [ %6229, %6202 ], [ %5826, %6159 ]
  %6234 = phi float [ %6230, %6202 ], [ %5827, %6159 ]
  %6235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.i32 %6235, 2
  %6237 = add nsw i32 %6236, -1
  %6238 = call i32 @dx.op.binary.i32(i32 37, i32 %6237, i32 0)  ; IMax(a,b)
  %6239 = shl i32 %6196, 2
  %6240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.i32 %6240, 0
  %6242 = lshr i32 %6241, 16
  %6243 = and i32 %6241, 65535
  %6244 = lshr i32 %6241, 21
  %6245 = lshr i32 %6243, 5
  %6246 = call i32 @dx.op.binary.i32(i32 40, i32 %6245, i32 %6238)  ; UMin(a,b)
  %6247 = icmp ugt i32 %6244, %6246
  br i1 %6247, label %6611, label %6248

; <label>:6248                                    ; preds = %6231
  br label %6249

; <label>:6249                                    ; preds = %6603, %6248
  %6250 = phi float [ %6604, %6603 ], [ 0.000000e+00, %6248 ]
  %6251 = phi float [ %6605, %6603 ], [ 0.000000e+00, %6248 ]
  %6252 = phi float [ %6606, %6603 ], [ 0.000000e+00, %6248 ]
  %6253 = phi float [ %6607, %6603 ], [ 1.000000e+00, %6248 ]
  %6254 = phi i32 [ %6608, %6603 ], [ %6244, %6248 ]
  %6255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.i32 %6255, 2
  %6257 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6192, i32 %6256, i32 %6254)  ; UMad(a,b,c)
  %6258 = shl i32 %6257, 2
  %6259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.i32 %6259, 0
  %6261 = shl i32 %6254, 5
  %6262 = sub nsw i32 %6242, %6261
  %6263 = call i32 @dx.op.binary.i32(i32 37, i32 %6262, i32 0)  ; IMax(a,b)
  %6264 = call i32 @dx.op.binary.i32(i32 38, i32 %6263, i32 31)  ; IMin(a,b)
  %6265 = sub nsw i32 1, %6242
  %6266 = add nsw i32 %6265, %6243
  %6267 = call i32 @dx.op.binary.i32(i32 37, i32 %6266, i32 0)  ; IMax(a,b)
  %6268 = call i32 @dx.op.binary.i32(i32 38, i32 %6267, i32 32)  ; IMin(a,b)
  %6269 = and i32 %6268, 31
  %6270 = shl i32 -1, %6269
  %6271 = xor i32 %6270, -1
  %6272 = and i32 %6264, 31
  %6273 = shl i32 %6271, %6272
  %6274 = icmp eq i32 %6268, 32
  %6275 = select i1 %6274, i32 -1, i32 %6273
  %6276 = and i32 %6275, %6260
  %6277 = icmp eq i32 %6276, 0
  br i1 %6277, label %6603, label %6278

; <label>:6278                                    ; preds = %6249
  br label %6279

; <label>:6279                                    ; preds = %6386, %6278
  %6280 = phi float [ %6387, %6386 ], [ %6250, %6278 ]
  %6281 = phi float [ %6388, %6386 ], [ %6251, %6278 ]
  %6282 = phi float [ %6389, %6386 ], [ %6252, %6278 ]
  %6283 = phi float [ %6390, %6386 ], [ %6253, %6278 ]
  %6284 = phi i32 [ %6289, %6386 ], [ %6276, %6278 ]
  %6285 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6284)  ; FirstbitLo(value)
  %6286 = add i32 %6285, %6261
  %6287 = and i32 %6285, 31
  %6288 = shl i32 1, %6287
  %6289 = xor i32 %6288, %6284
  %6290 = mul i32 %6286, 72
  %6291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6290, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.ResRet.f32 %6291, 2
  %6295 = add i32 %6290, 12
  %6296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %6295, i32 undef)  ; BufferLoad(srv,index,wot)
  %6297 = extractvalue %dx.types.ResRet.i32 %6296, 0
  %6298 = add i32 %6290, 16
  %6299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6298, i32 undef)  ; BufferLoad(srv,index,wot)
  %6300 = extractvalue %dx.types.ResRet.f32 %6299, 0
  %6301 = extractvalue %dx.types.ResRet.f32 %6299, 1
  %6302 = extractvalue %dx.types.ResRet.f32 %6299, 2
  %6303 = add i32 %6290, 28
  %6304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6303, i32 undef)  ; BufferLoad(srv,index,wot)
  %6305 = extractvalue %dx.types.ResRet.f32 %6304, 0
  %6306 = add i32 %6290, 32
  %6307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6306, i32 undef)  ; BufferLoad(srv,index,wot)
  %6308 = extractvalue %dx.types.ResRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.ResRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.ResRet.f32 %6307, 2
  %6311 = extractvalue %dx.types.ResRet.f32 %6307, 3
  %6312 = add i32 %6290, 48
  %6313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6312, i32 undef)  ; BufferLoad(srv,index,wot)
  %6314 = extractvalue %dx.types.ResRet.f32 %6313, 0
  %6315 = extractvalue %dx.types.ResRet.f32 %6313, 1
  %6316 = add i32 %6290, 56
  %6317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6316, i32 undef)  ; BufferLoad(srv,index,wot)
  %6318 = extractvalue %dx.types.ResRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.ResRet.f32 %6317, 1
  %6320 = add i32 %6290, 64
  %6321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %6320, i32 undef)  ; BufferLoad(srv,index,wot)
  %6322 = extractvalue %dx.types.ResRet.f32 %6321, 0
  %6323 = extractvalue %dx.types.ResRet.f32 %6321, 1
  %6324 = mul i32 %6286, 60
  %6325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6324, i32 undef)  ; BufferLoad(srv,index,wot)
  %6326 = extractvalue %dx.types.ResRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.ResRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.ResRet.f32 %6325, 2
  %6329 = add i32 %6324, 12
  %6330 = add i32 %6324, 48
  %6331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6330, i32 undef)  ; BufferLoad(srv,index,wot)
  %6332 = extractvalue %dx.types.ResRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.ResRet.f32 %6331, 1
  %6334 = extractvalue %dx.types.ResRet.f32 %6331, 2
  %6335 = and i32 %6297, 32767
  %6336 = bitcast float %6292 to i32
  %6337 = icmp eq i32 %6336, -1
  %6338 = bitcast float %6293 to i32
  %6339 = and i32 %6297, 32768
  %6340 = icmp ne i32 %6339, 0
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6344 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6345 = fsub fast float %6326, %6342
  %6346 = fsub fast float %6327, %6343
  %6347 = fsub fast float %6328, %6344
  %6348 = fsub fast float %170, %6345
  %6349 = fsub fast float %171, %6346
  %6350 = fsub fast float %172, %6347
  %6351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6329, i32 undef)  ; BufferLoad(srv,index,wot)
  %6352 = extractvalue %dx.types.ResRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.ResRet.f32 %6351, 1
  %6354 = extractvalue %dx.types.ResRet.f32 %6351, 2
  %6355 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float %6352, float %6353, float %6354)  ; Dot3(ax,ay,az,bx,by,bz)
  %6356 = add i32 %6324, 24
  %6357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6356, i32 undef)  ; BufferLoad(srv,index,wot)
  %6358 = extractvalue %dx.types.ResRet.f32 %6357, 0
  %6359 = extractvalue %dx.types.ResRet.f32 %6357, 1
  %6360 = extractvalue %dx.types.ResRet.f32 %6357, 2
  %6361 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float %6358, float %6359, float %6360)  ; Dot3(ax,ay,az,bx,by,bz)
  %6362 = add i32 %6324, 36
  %6363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %6362, i32 undef)  ; BufferLoad(srv,index,wot)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.ResRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.ResRet.f32 %6363, 2
  %6367 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float %6364, float %6365, float %6366)  ; Dot3(ax,ay,az,bx,by,bz)
  %6368 = call float @dx.op.unary.f32(i32 6, float %6355)  ; FAbs(value)
  %6369 = call float @dx.op.unary.f32(i32 6, float %6361)  ; FAbs(value)
  %6370 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6371 = fsub fast float %6332, %6368
  %6372 = fsub fast float %6333, %6369
  %6373 = fsub fast float %6334, %6370
  %6374 = fmul fast float %6371, %6300
  %6375 = fmul fast float %6372, %6301
  %6376 = fmul fast float %6373, %6302
  %6377 = call float @dx.op.binary.f32(i32 36, float %6375, float %6376)  ; FMin(a,b)
  %6378 = call float @dx.op.binary.f32(i32 36, float %6374, float %6377)  ; FMin(a,b)
  %6379 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6380 = call float @dx.op.binary.f32(i32 36, float %6283, float %6379)  ; FMin(a,b)
  %6381 = uitofp i1 %6340 to float
  %6382 = fadd fast float %6198, 1.000000e+00
  %6383 = fsub fast float %6382, %6381
  %6384 = fmul fast float %6380, %6383
  %6385 = fcmp fast ogt float %6384, 0.000000e+00
  br i1 %6385, label %6392, label %6386

; <label>:6386                                    ; preds = %6534, %6279
  %6387 = phi float [ %6598, %6534 ], [ %6280, %6279 ]
  %6388 = phi float [ %6599, %6534 ], [ %6281, %6279 ]
  %6389 = phi float [ %6600, %6534 ], [ %6282, %6279 ]
  %6390 = phi float [ %6601, %6534 ], [ %6283, %6279 ]
  %6391 = icmp eq i32 %6284, %6288
  br i1 %6391, label %6602, label %6279

; <label>:6392                                    ; preds = %6279
  br i1 %6337, label %6450, label %6393

; <label>:6393                                    ; preds = %6392
  %6394 = fsub fast float -0.000000e+00, %6352
  %6395 = fsub fast float -0.000000e+00, %6353
  %6396 = fsub fast float -0.000000e+00, %6354
  %6397 = call float @dx.op.dot3.f32(i32 55, float %6232, float %6233, float %6234, float %6394, float %6395, float %6396)  ; Dot3(ax,ay,az,bx,by,bz)
  %6398 = fsub fast float -0.000000e+00, %6397
  %6399 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float %6394, float %6395, float %6396)  ; Dot3(ax,ay,az,bx,by,bz)
  %6400 = fadd fast float %6399, %6315
  %6401 = fadd fast float %6314, %6399
  %6402 = fsub fast float -0.000000e+00, %6401
  %6403 = fcmp ogt float %6397, -0.000000e+00
  %6404 = select i1 %6403, float %6402, float %6400
  %6405 = call float @dx.op.unary.f32(i32 6, float %6398)  ; FAbs(value)
  %6406 = fdiv fast float 1.000000e+00, %6405
  %6407 = fmul fast float %6404, %6406
  %6408 = call float @dx.op.binary.f32(i32 35, float %6407, float 0.000000e+00)  ; FMax(a,b)
  %6409 = fsub fast float -0.000000e+00, %6358
  %6410 = fsub fast float -0.000000e+00, %6359
  %6411 = fsub fast float -0.000000e+00, %6360
  %6412 = call float @dx.op.dot3.f32(i32 55, float %6232, float %6233, float %6234, float %6409, float %6410, float %6411)  ; Dot3(ax,ay,az,bx,by,bz)
  %6413 = fsub fast float -0.000000e+00, %6412
  %6414 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float %6409, float %6410, float %6411)  ; Dot3(ax,ay,az,bx,by,bz)
  %6415 = fadd fast float %6414, %6319
  %6416 = fadd fast float %6318, %6414
  %6417 = fsub fast float -0.000000e+00, %6416
  %6418 = fcmp ogt float %6412, -0.000000e+00
  %6419 = select i1 %6418, float %6417, float %6415
  %6420 = call float @dx.op.unary.f32(i32 6, float %6413)  ; FAbs(value)
  %6421 = fdiv fast float 1.000000e+00, %6420
  %6422 = fmul fast float %6419, %6421
  %6423 = call float @dx.op.binary.f32(i32 35, float %6422, float 0.000000e+00)  ; FMax(a,b)
  %6424 = fsub fast float -0.000000e+00, %6364
  %6425 = fsub fast float -0.000000e+00, %6365
  %6426 = fsub fast float -0.000000e+00, %6366
  %6427 = call float @dx.op.dot3.f32(i32 55, float %6232, float %6233, float %6234, float %6424, float %6425, float %6426)  ; Dot3(ax,ay,az,bx,by,bz)
  %6428 = fsub fast float -0.000000e+00, %6427
  %6429 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float %6424, float %6425, float %6426)  ; Dot3(ax,ay,az,bx,by,bz)
  %6430 = fadd fast float %6429, %6323
  %6431 = fadd fast float %6322, %6429
  %6432 = fsub fast float -0.000000e+00, %6431
  %6433 = fcmp ogt float %6427, -0.000000e+00
  %6434 = select i1 %6433, float %6432, float %6430
  %6435 = call float @dx.op.unary.f32(i32 6, float %6428)  ; FAbs(value)
  %6436 = fdiv fast float 1.000000e+00, %6435
  %6437 = fmul fast float %6434, %6436
  %6438 = call float @dx.op.binary.f32(i32 35, float %6437, float 0.000000e+00)  ; FMax(a,b)
  %6439 = call float @dx.op.binary.f32(i32 36, float %6423, float %6438)  ; FMin(a,b)
  %6440 = call float @dx.op.binary.f32(i32 36, float %6408, float %6439)  ; FMin(a,b)
  %6441 = fmul fast float %6440, %6232
  %6442 = fmul fast float %6440, %6233
  %6443 = fmul fast float %6440, %6234
  %6444 = fadd fast float %6441, %170
  %6445 = fadd fast float %6442, %171
  %6446 = fadd fast float %6443, %172
  %6447 = fsub fast float %6444, %6292
  %6448 = fsub fast float %6445, %6293
  %6449 = fsub fast float %6446, %6294
  br label %6457

; <label>:6450                                    ; preds = %6392
  %6451 = fmul fast float %6232, 8.096000e+03
  %6452 = fmul fast float %6233, 8.096000e+03
  %6453 = fmul fast float %6234, 8.096000e+03
  %6454 = fadd fast float %6451, %170
  %6455 = fadd fast float %6452, %171
  %6456 = fadd fast float %6453, %172
  br label %6457

; <label>:6457                                    ; preds = %6450, %6393
  %6458 = phi float [ %6232, %6450 ], [ %6447, %6393 ]
  %6459 = phi float [ %6233, %6450 ], [ %6448, %6393 ]
  %6460 = phi float [ %6234, %6450 ], [ %6449, %6393 ]
  %6461 = phi float [ %6454, %6450 ], [ %6444, %6393 ]
  %6462 = phi float [ %6455, %6450 ], [ %6445, %6393 ]
  %6463 = phi float [ %6456, %6450 ], [ %6446, %6393 ]
  %6464 = fcmp fast olt float %6311, 1.000000e+00
  br i1 %6464, label %6465, label %6496, !dx.controlflow.hints !100

; <label>:6465                                    ; preds = %6457
  %6466 = fmul fast float %6460, %6309
  %6467 = fmul fast float %6459, %6310
  %6468 = fsub fast float %6466, %6467
  %6469 = fmul fast float %6458, %6310
  %6470 = fmul fast float %6460, %6308
  %6471 = fsub fast float %6469, %6470
  %6472 = fmul fast float %6459, %6308
  %6473 = fmul fast float %6458, %6309
  %6474 = fsub fast float %6472, %6473
  %6475 = fmul fast float %6468, 2.000000e+00
  %6476 = fmul fast float %6471, 2.000000e+00
  %6477 = fmul fast float %6474, 2.000000e+00
  %6478 = fmul fast float %6475, %6311
  %6479 = fmul fast float %6476, %6311
  %6480 = fmul fast float %6477, %6311
  %6481 = fmul fast float %6477, %6309
  %6482 = fmul fast float %6476, %6310
  %6483 = fmul fast float %6475, %6310
  %6484 = fmul fast float %6477, %6308
  %6485 = fmul fast float %6476, %6308
  %6486 = fmul fast float %6475, %6309
  %6487 = fadd fast float %6481, %6458
  %6488 = fadd fast float %6487, %6478
  %6489 = fsub fast float %6488, %6482
  %6490 = fsub fast float %6459, %6484
  %6491 = fadd fast float %6490, %6479
  %6492 = fadd fast float %6491, %6483
  %6493 = fadd fast float %6480, %6460
  %6494 = fsub fast float %6493, %6486
  %6495 = fadd fast float %6494, %6485
  br label %6496

; <label>:6496                                    ; preds = %6465, %6457
  %6497 = phi float [ %6489, %6465 ], [ %6458, %6457 ]
  %6498 = phi float [ %6492, %6465 ], [ %6459, %6457 ]
  %6499 = phi float [ %6495, %6465 ], [ %6460, %6457 ]
  br i1 %6337, label %6531, label %6500

; <label>:6500                                    ; preds = %6496
  %6501 = fmul fast float %5814, 0x400187C840000000
  %6502 = fadd fast float %6501, 0xC00EFC2120000000
  %6503 = fmul fast float %6502, %5814
  %6504 = fadd fast float %6503, 0x3FE5D16340000000
  %6505 = fmul fast float %6504, %5814
  %6506 = fadd fast float %6505, 1.000000e+00
  %6507 = call float @dx.op.unary.f32(i32 7, float %6506)  ; Saturate(value)
  %6508 = fsub fast float %6461, %170
  %6509 = fsub fast float %6462, %171
  %6510 = fsub fast float %6463, %172
  %6511 = fsub fast float %6461, %6292
  %6512 = fsub fast float %6462, %6293
  %6513 = fsub fast float %6463, %6294
  %6514 = call float @dx.op.dot3.f32(i32 55, float %6508, float %6509, float %6510, float %6508, float %6509, float %6510)  ; Dot3(ax,ay,az,bx,by,bz)
  %6515 = call float @dx.op.dot3.f32(i32 55, float %6511, float %6512, float %6513, float %6511, float %6512, float %6513)  ; Dot3(ax,ay,az,bx,by,bz)
  %6516 = fadd fast float %6515, 0x3EE4F8B580000000
  %6517 = fdiv fast float %6514, %6516
  %6518 = bitcast float %6517 to i32
  %6519 = ashr i32 %6518, 1
  %6520 = add nsw i32 %6519, 532487669
  %6521 = bitcast i32 %6520 to float
  %6522 = fmul fast float %6521, %6507
  %6523 = call float @dx.op.unary.f32(i32 7, float %6522)  ; Saturate(value)
  %6524 = fmul fast float %6523, 0x4009981AE0000000
  %6525 = fsub fast float 0x40111BBD80000000, %6524
  %6526 = fmul fast float %6525, %6523
  %6527 = fadd fast float %6526, 0xC0009F6020000000
  %6528 = fmul fast float %6527, %6523
  %6529 = fadd fast float %6528, 1.000000e+00
  %6530 = call float @dx.op.unary.f32(i32 7, float %6529)  ; Saturate(value)
  br label %6534

; <label>:6531                                    ; preds = %6496
  %6532 = icmp ne i32 %6338, -1
  %6533 = zext i1 %6532 to i32
  br label %6534

; <label>:6534                                    ; preds = %6531, %6500
  %6535 = phi float [ %5814, %6531 ], [ %6530, %6500 ]
  %6536 = phi i32 [ %6533, %6531 ], [ 0, %6500 ]
  %6537 = fmul float %6535, 5.000000e+00
  %6538 = fsub float 5.000000e+00, %6537
  %6539 = icmp ne i32 %6536, 0
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 3
  %6542 = fadd fast float %6541, %6538
  %6543 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6542)  ; FMax(a,b)
  %6544 = call float @dx.op.unary.f32(i32 6, float %6497)  ; FAbs(value)
  %6545 = call float @dx.op.unary.f32(i32 6, float %6498)  ; FAbs(value)
  %6546 = fadd fast float %6545, %6544
  %6547 = call float @dx.op.unary.f32(i32 6, float %6499)  ; FAbs(value)
  %6548 = fadd fast float %6546, %6547
  %6549 = fcmp fast oeq float %6548, 0.000000e+00
  %6550 = fdiv fast float 1.000000e+00, %6548
  %6551 = select i1 %6549, float 1.000000e+00, float %6550
  %6552 = fmul fast float %6551, %6497
  %6553 = fmul fast float %6551, %6498
  %6554 = call float @dx.op.unary.f32(i32 6, float %6553)  ; FAbs(value)
  %6555 = call float @dx.op.unary.f32(i32 6, float %6552)  ; FAbs(value)
  %6556 = fsub fast float 1.000000e+00, %6554
  %6557 = fsub fast float 1.000000e+00, %6555
  %6558 = fcmp fast oge float %6552, 0.000000e+00
  %6559 = fcmp fast oge float %6553, 0.000000e+00
  %6560 = select i1 %6558, float 1.000000e+00, float -1.000000e+00
  %6561 = select i1 %6559, float 1.000000e+00, float -1.000000e+00
  %6562 = fcmp fast ole float %6499, 0.000000e+00
  %6563 = fmul fast float %6560, %6556
  %6564 = fmul fast float %6561, %6557
  %6565 = select i1 %6562, float %6563, float %6552
  %6566 = select i1 %6562, float %6564, float %6553
  %6567 = fmul fast float %6565, 5.000000e-01
  %6568 = fmul fast float %6566, 5.000000e-01
  %6569 = fadd fast float %6567, 5.000000e-01
  %6570 = fadd fast float %6568, 5.000000e-01
  %6571 = uitofp i32 %6335 to float
  %6572 = call float @dx.op.binary.f32(i32 36, float %6543, float 3.000000e+00)  ; FMin(a,b)
  %6573 = fadd fast float %6572, 2.000000e+00
  %6574 = call float @dx.op.unary.f32(i32 21, float %6573)  ; Exp(value)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6576 = fmul fast float %6575, %6574
  %6577 = fmul fast float %6576, 2.000000e+00
  %6578 = fsub fast float 1.000000e+00, %6577
  %6579 = fmul fast float %6569, %6578
  %6580 = fmul fast float %6570, %6578
  %6581 = fadd fast float %6579, %6576
  %6582 = fadd fast float %6580, %6576
  %6583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6581, float %6582, float %6571, float undef, i32 0, i32 0, i32 undef, float %6543)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6584 = extractvalue %dx.types.ResRet.f32 %6583, 0
  %6585 = extractvalue %dx.types.ResRet.f32 %6583, 1
  %6586 = extractvalue %dx.types.ResRet.f32 %6583, 2
  %6587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6587, 3
  %6589 = fmul fast float %6588, %6305
  %6590 = call float @dx.op.binary.f32(i32 36, float %5846, float %6589)  ; FMin(a,b)
  %6591 = select i1 %6539, float %6590, float %6589
  %6592 = fmul fast float %6584, %6384
  %6593 = fmul fast float %6592, %6591
  %6594 = fmul fast float %6585, %6384
  %6595 = fmul fast float %6594, %6591
  %6596 = fmul fast float %6586, %6384
  %6597 = fmul fast float %6596, %6591
  %6598 = fadd fast float %6593, %6280
  %6599 = fadd fast float %6595, %6281
  %6600 = fadd fast float %6597, %6282
  %6601 = fsub fast float %6283, %6384
  br label %6386

; <label>:6602                                    ; preds = %6386
  br label %6603

; <label>:6603                                    ; preds = %6602, %6249
  %6604 = phi float [ %6250, %6249 ], [ %6387, %6602 ]
  %6605 = phi float [ %6251, %6249 ], [ %6388, %6602 ]
  %6606 = phi float [ %6252, %6249 ], [ %6389, %6602 ]
  %6607 = phi float [ %6253, %6249 ], [ %6390, %6602 ]
  %6608 = add i32 %6254, 1
  %6609 = icmp ugt i32 %6608, %6246
  br i1 %6609, label %6610, label %6249, !llvm.loop !101

; <label>:6610                                    ; preds = %6603
  br label %6611

; <label>:6611                                    ; preds = %6610, %6231
  %6612 = phi float [ 0.000000e+00, %6231 ], [ %6604, %6610 ]
  %6613 = phi float [ 0.000000e+00, %6231 ], [ %6605, %6610 ]
  %6614 = phi float [ 0.000000e+00, %6231 ], [ %6606, %6610 ]
  %6615 = call float @dx.op.dot3.f32(i32 55, float %6612, float %6613, float %6614, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6616 = select i1 %232, float 0.000000e+00, float %6612
  %6617 = select i1 %232, float %6615, float %6613
  %6618 = select i1 %232, float 0.000000e+00, float %6614
  %6619 = fcmp fast olt float %6157, 0.000000e+00
  %6620 = call float @dx.op.unary.f32(i32 6, float %6157)  ; FAbs(value)
  %6621 = fmul fast float %6620, %6086
  %6622 = fmul fast float %6620, %6087
  %6623 = fmul fast float %6620, %6088
  %6624 = select i1 %6619, float %6086, float %6621
  %6625 = select i1 %6619, float %6087, float %6622
  %6626 = select i1 %6619, float %6088, float %6623
  %6627 = fsub fast float 1.000000e+00, %6620
  %6628 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  %6629 = fmul fast float %6628, %6616
  %6630 = fmul fast float %6628, %6617
  %6631 = fmul fast float %6628, %6618
  %6632 = fadd fast float %6624, %6629
  %6633 = fadd fast float %6625, %6630
  %6634 = fadd fast float %6626, %6631
  br label %6635

; <label>:6635                                    ; preds = %6611, %6140
  %6636 = phi float [ %6086, %6140 ], [ %6632, %6611 ]
  %6637 = phi float [ %6087, %6140 ], [ %6633, %6611 ]
  %6638 = phi float [ %6088, %6140 ], [ %6634, %6611 ]
  %6639 = call float @dx.op.dot3.f32(i32 55, float %5805, float %5806, float %5807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6640 = fcmp fast ogt float %6639, 0x3E7FF19E20000000
  %6641 = fdiv fast float 1.000000e+00, %6639
  %6642 = select i1 %6640, float %6641, float 0.000000e+00
  %6643 = fmul fast float %6642, %5805
  %6644 = fmul fast float %6642, %5806
  %6645 = fmul fast float %6642, %5807
  %6646 = fadd fast float %6643, -1.000000e+00
  %6647 = fadd fast float %6644, -1.000000e+00
  %6648 = fadd fast float %6645, -1.000000e+00
  %6649 = fmul fast float %6646, 5.000000e-01
  %6650 = fmul fast float %6647, 5.000000e-01
  %6651 = fmul fast float %6648, 5.000000e-01
  %6652 = fadd fast float %6649, 1.000000e+00
  %6653 = fadd fast float %6650, 1.000000e+00
  %6654 = fadd fast float %6651, 1.000000e+00
  %6655 = call float @dx.op.binary.f32(i32 35, float %5819, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6656 = fdiv fast float %4522, %6655
  %6657 = fcmp fast olt float %5223, 1.270000e+02
  %6658 = fcmp fast olt float %5224, 1.270000e+02
  %6659 = fcmp fast olt float %5225, 1.270000e+02
  %6660 = fmul fast float %5223, 0xBFF7154760000000
  %6661 = fmul fast float %6660, %6656
  %6662 = fmul fast float %5224, 0xBFF7154760000000
  %6663 = fmul fast float %6662, %6656
  %6664 = fmul fast float %5225, 0xBFF7154760000000
  %6665 = fmul fast float %6664, %6656
  %6666 = call float @dx.op.unary.f32(i32 21, float %6661)  ; Exp(value)
  %6667 = call float @dx.op.unary.f32(i32 21, float %6663)  ; Exp(value)
  %6668 = call float @dx.op.unary.f32(i32 21, float %6665)  ; Exp(value)
  %6669 = call float @dx.op.unary.f32(i32 7, float %6666)  ; Saturate(value)
  %6670 = call float @dx.op.unary.f32(i32 7, float %6667)  ; Saturate(value)
  %6671 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6672 = select i1 %6657, float %6669, float 0.000000e+00
  %6673 = select i1 %6658, float %6670, float 0.000000e+00
  %6674 = select i1 %6659, float %6671, float 0.000000e+00
  %6675 = fmul fast float %6672, %6146
  %6676 = fmul fast float %6673, %6146
  %6677 = fmul fast float %6674, %6146
  %6678 = fadd fast float %6675, -1.000000e+00
  %6679 = fadd fast float %6676, -1.000000e+00
  %6680 = fadd fast float %6677, -1.000000e+00
  %6681 = fmul fast float %6678, %5170
  %6682 = fmul fast float %6679, %5170
  %6683 = fmul fast float %6680, %5170
  %6684 = fmul fast float %6636, %6141
  %6685 = fmul fast float %6637, %6142
  %6686 = fmul fast float %6638, %6143
  %6687 = fsub fast float 1.000000e+00, %5819
  %6688 = bitcast float %6687 to i32
  %6689 = sitofp i32 %6688 to float
  %6690 = fmul fast float %6689, 5.000000e+00
  %6691 = fadd fast float %6690, 0xC1EFBF8940000000
  %6692 = fptosi float %6691 to i32
  %6693 = bitcast i32 %6692 to float
  %6694 = fmul fast float %6693, %5174
  %6695 = fmul fast float %6078, %6694
  %6696 = fmul fast float %6695, %6146
  %6697 = fmul fast float %6696, %6652
  %6698 = fmul fast float %6079, %6694
  %6699 = fmul fast float %6698, %6146
  %6700 = fmul fast float %6699, %6653
  %6701 = fmul fast float %6080, %6694
  %6702 = fmul fast float %6701, %6146
  %6703 = fmul fast float %6702, %6654
  %6704 = fadd fast float %6684, %5160
  %6705 = fadd fast float %6704, %6697
  %6706 = fmul fast float %6705, %5170
  %6707 = fadd fast float %6685, %5161
  %6708 = fadd fast float %6707, %6700
  %6709 = fmul fast float %6708, %5170
  %6710 = fadd fast float %6686, %5162
  %6711 = fadd fast float %6710, %6703
  %6712 = fmul fast float %6711, %5170
  %6713 = fmul fast float %5809, 0x4012D0A400000000
  %6714 = fadd fast float %6683, 1.000000e+00
  %6715 = fadd fast float %6682, 1.000000e+00
  %6716 = fadd fast float %6681, 1.000000e+00
  %6717 = fmul fast float %6146, %6080
  %6718 = fmul fast float %6146, %6079
  %6719 = fmul fast float %6146, %6078
  %6720 = fmul fast float %5834, %5170
  %6721 = fsub fast float 1.000000e+00, %6720
  %6722 = call float @dx.op.unary.f32(i32 7, float %6721)  ; Saturate(value)
  %6723 = fsub fast float 1.000000e+00, %6722
  %6724 = fadd fast float %6713, 0x3FDB6377A0000000
  %6725 = fmul fast float %6723, %6724
  %6726 = call float @dx.op.dot3.f32(i32 55, float %5241, float %5242, float %5243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6727 = fadd fast float %6725, %6726
  %6728 = call float @dx.op.unary.f32(i32 7, float %6727)  ; Saturate(value)
  %6729 = call float @dx.op.binary.f32(i32 35, float %6728, float 0x3F847AE140000000)  ; FMax(a,b)
  %6730 = fmul fast float %6729, %6729
  %6731 = fmul fast float %6730, %6730
  %6732 = fmul fast float %6731, 0xC00A935000000000
  %6733 = call float @dx.op.unary.f32(i32 21, float %6732)  ; Exp(value)
  %6734 = fsub fast float 1.000000e+00, %6733
  %6735 = fmul fast float %6716, %6082
  %6736 = fmul fast float %6735, %6734
  %6737 = fmul fast float %6715, %6083
  %6738 = fmul fast float %6737, %6734
  %6739 = fmul fast float %6714, %6084
  %6740 = fmul fast float %6739, %6734
  %6741 = fadd fast float %6736, %6719
  %6742 = fmul fast float %6741, %5170
  %6743 = fadd fast float %6738, %6718
  %6744 = fmul fast float %6743, %5170
  %6745 = fadd fast float %6740, %6717
  %6746 = fmul fast float %6745, %5170
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 3
  %6749 = fcmp fast oeq float %6748, 0.000000e+00
  br i1 %6749, label %8427, label %6750

; <label>:6750                                    ; preds = %6635
  %6751 = extractvalue %dx.types.CBufRet.f32 %6747, 0
  %6752 = extractvalue %dx.types.CBufRet.f32 %6747, 1
  %6753 = extractvalue %dx.types.CBufRet.f32 %6747, 2
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 0
  %6756 = extractvalue %dx.types.CBufRet.f32 %6754, 1
  %6757 = extractvalue %dx.types.CBufRet.f32 %6754, 2
  %6758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6759 = extractvalue %dx.types.CBufRet.f32 %6758, 0
  %6760 = extractvalue %dx.types.CBufRet.f32 %6758, 1
  %6761 = call float @dx.op.dot3.f32(i32 55, float %6755, float %6756, float %6757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6762 = select i1 %232, float %6759, float %6755
  %6763 = select i1 %232, float %6761, float %6756
  %6764 = select i1 %232, float %6760, float %6757
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 2
  %6767 = fmul fast float %6766, %120
  %6768 = fmul fast float %6766, %122
  %6769 = fmul fast float %6766, %124
  %6770 = fadd fast float %6767, %170
  %6771 = fadd fast float %6768, %171
  %6772 = fadd fast float %6769, %172
  %6773 = fcmp fast olt float %6748, 0.000000e+00
  br i1 %6773, label %7869, label %6774

; <label>:6774                                    ; preds = %6750
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 0
  %6777 = extractvalue %dx.types.CBufRet.f32 %6775, 1
  %6778 = extractvalue %dx.types.CBufRet.f32 %6775, 2
  %6779 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %6780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6781 = extractvalue %dx.types.CBufRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.CBufRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.CBufRet.f32 %6780, 3
  %6785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.f32 %6785, 0
  %6787 = extractvalue %dx.types.CBufRet.f32 %6785, 1
  %6788 = extractvalue %dx.types.CBufRet.f32 %6785, 2
  %6789 = extractvalue %dx.types.CBufRet.f32 %6785, 3
  %6790 = fmul fast float %6776, %6770
  %6791 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %6777, float %6790)  ; FMad(a,b,c)
  %6792 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %6778, float %6791)  ; FMad(a,b,c)
  %6793 = fadd fast float %6792, %6779
  %6794 = fmul fast float %6781, %6770
  %6795 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %6782, float %6794)  ; FMad(a,b,c)
  %6796 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %6783, float %6795)  ; FMad(a,b,c)
  %6797 = fadd fast float %6796, %6784
  %6798 = fmul fast float %6786, %6770
  %6799 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %6787, float %6798)  ; FMad(a,b,c)
  %6800 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %6788, float %6799)  ; FMad(a,b,c)
  %6801 = fadd fast float %6800, %6789
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 0
  %6804 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6805 = extractvalue %dx.types.CBufRet.f32 %6802, 3
  %6806 = fmul fast float %6805, %6793
  %6807 = fmul fast float %6805, %6797
  %6808 = fadd fast float %6806, %6803
  %6809 = fadd fast float %6807, %6804
  %6810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6811 = extractvalue %dx.types.CBufRet.f32 %6810, 0
  %6812 = extractvalue %dx.types.CBufRet.f32 %6810, 1
  %6813 = extractvalue %dx.types.CBufRet.f32 %6810, 3
  %6814 = fmul fast float %6813, %6793
  %6815 = fmul fast float %6813, %6797
  %6816 = fadd fast float %6814, %6811
  %6817 = fadd fast float %6815, %6812
  %6818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.f32 %6818, 1
  %6820 = fsub fast float %6819, %6801
  %6821 = extractvalue %dx.types.CBufRet.f32 %6818, 2
  %6822 = fmul fast float %6820, %6821
  %6823 = fsub fast float 1.000000e+00, %6822
  %6824 = call float @dx.op.unary.f32(i32 7, float %6823)  ; Saturate(value)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6810, 2
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6828 = fadd fast float %6827, %6825
  %6829 = fcmp fast ogt float %6828, 0.000000e+00
  br i1 %6829, label %6830, label %6854

; <label>:6830                                    ; preds = %6774
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = fsub fast float %6816, %6832
  %6835 = fsub fast float %6817, %6833
  %6836 = fcmp fast olt float %6834, 0.000000e+00
  %6837 = fcmp fast olt float %6835, 0.000000e+00
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6849 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6850 = call float @dx.op.binary.f32(i32 35, float %6847, float %6848)  ; FMax(a,b)
  %6851 = fsub fast float %6849, %6850
  %6852 = call float @dx.op.unary.f32(i32 7, float %6851)  ; Saturate(value)
  %6853 = fmul fast float %6852, %6824
  br label %6854

; <label>:6854                                    ; preds = %6830, %6774
  %6855 = phi float [ %6853, %6830 ], [ 0.000000e+00, %6774 ]
  %6856 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6857 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6858 = fadd fast float %6857, %6856
  %6859 = fcmp fast ogt float %6858, 0.000000e+00
  %6860 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  br i1 %6859, label %6861, label %6884

; <label>:6861                                    ; preds = %6854
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = fsub fast float %6808, %6863
  %6866 = fsub fast float %6809, %6864
  %6867 = fcmp fast olt float %6865, 0.000000e+00
  %6868 = fcmp fast olt float %6866, 0.000000e+00
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 0
  %6871 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6872 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6873 = extractvalue %dx.types.CBufRet.f32 %6869, 3
  %6874 = select i1 %6867, float %6870, float %6872
  %6875 = select i1 %6868, float %6871, float %6873
  %6876 = fmul fast float %6874, %6865
  %6877 = fmul fast float %6875, %6866
  %6878 = call float @dx.op.unary.f32(i32 6, float %6876)  ; FAbs(value)
  %6879 = call float @dx.op.unary.f32(i32 6, float %6877)  ; FAbs(value)
  %6880 = call float @dx.op.binary.f32(i32 35, float %6878, float %6879)  ; FMax(a,b)
  %6881 = fsub fast float %6860, %6880
  %6882 = call float @dx.op.unary.f32(i32 7, float %6881)  ; Saturate(value)
  %6883 = fmul fast float %6882, %6824
  br label %6884

; <label>:6884                                    ; preds = %6861, %6854
  %6885 = phi float [ %6883, %6861 ], [ 0.000000e+00, %6854 ]
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6888 = call float @dx.op.unary.f32(i32 7, float %6887)  ; Saturate(value)
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.CBufRet.f32 %6889, 1
  %6892 = fsub fast float %6793, %6890
  %6893 = fsub fast float %6797, %6891
  %6894 = fcmp fast olt float %6892, 0.000000e+00
  %6895 = fcmp fast olt float %6893, 0.000000e+00
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %6898 = extractvalue %dx.types.CBufRet.f32 %6896, 1
  %6899 = extractvalue %dx.types.CBufRet.f32 %6896, 2
  %6900 = extractvalue %dx.types.CBufRet.f32 %6896, 3
  %6901 = select i1 %6894, float %6897, float %6899
  %6902 = select i1 %6895, float %6898, float %6900
  %6903 = fmul fast float %6901, %6892
  %6904 = fmul fast float %6902, %6893
  %6905 = call float @dx.op.unary.f32(i32 6, float %6903)  ; FAbs(value)
  %6906 = call float @dx.op.unary.f32(i32 6, float %6904)  ; FAbs(value)
  %6907 = call float @dx.op.binary.f32(i32 35, float %6905, float %6906)  ; FMax(a,b)
  %6908 = fsub fast float %6860, %6907
  %6909 = call float @dx.op.unary.f32(i32 7, float %6908)  ; Saturate(value)
  %6910 = call float @dx.op.binary.f32(i32 36, float %6909, float %6888)  ; FMin(a,b)
  %6911 = fmul fast float %6910, %6824
  %6912 = fsub fast float %6885, %6911
  %6913 = fsub fast float %6855, %6885
  %6914 = fsub fast float %6913, %6911
  %6915 = call float @dx.op.binary.f32(i32 35, float %6885, float %6855)  ; FMax(a,b)
  %6916 = call float @dx.op.binary.f32(i32 35, float %6911, float %6915)  ; FMax(a,b)
  %6917 = fcmp fast olt float %6916, 1.000000e+00
  br i1 %6917, label %6918, label %7316, !dx.controlflow.hints !103

; <label>:6918                                    ; preds = %6884
  %6919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6920 = extractvalue %dx.types.CBufRet.f32 %6919, 0
  %6921 = fcmp fast une float %6920, 0.000000e+00
  br i1 %6921, label %6922, label %7316, !dx.controlflow.hints !104

; <label>:6922                                    ; preds = %6918
  %6923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6924 = extractvalue %dx.types.CBufRet.f32 %6923, 0
  %6925 = extractvalue %dx.types.CBufRet.f32 %6923, 1
  %6926 = extractvalue %dx.types.CBufRet.f32 %6923, 2
  %6927 = extractvalue %dx.types.CBufRet.f32 %6923, 3
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6932 = extractvalue %dx.types.CBufRet.f32 %6928, 3
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 1
  %6936 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6937 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6938 = fmul fast float %6924, %6770
  %6939 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %6925, float %6938)  ; FMad(a,b,c)
  %6940 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %6926, float %6939)  ; FMad(a,b,c)
  %6941 = fadd fast float %6940, %6927
  %6942 = fmul fast float %6929, %6770
  %6943 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %6930, float %6942)  ; FMad(a,b,c)
  %6944 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %6931, float %6943)  ; FMad(a,b,c)
  %6945 = fadd fast float %6944, %6932
  %6946 = fmul fast float %6934, %6770
  %6947 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %6935, float %6946)  ; FMad(a,b,c)
  %6948 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %6936, float %6947)  ; FMad(a,b,c)
  %6949 = fadd fast float %6948, %6937
  %6950 = fcmp fast oge float %6941, 1.000000e+00
  %6951 = fcmp fast oge float %6945, 1.000000e+00
  %6952 = or i1 %6950, %6951
  %6953 = fcmp fast olt float %6941, 0.000000e+00
  %6954 = fcmp fast olt float %6945, 0.000000e+00
  %6955 = or i1 %6953, %6954
  %6956 = or i1 %6952, %6955
  br i1 %6956, label %7316, label %6957, !dx.controlflow.hints !105

; <label>:6957                                    ; preds = %6922
  %6958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6959 = extractvalue %dx.types.CBufRet.f32 %6958, 0
  %6960 = extractvalue %dx.types.CBufRet.f32 %6958, 1
  %6961 = extractvalue %dx.types.CBufRet.f32 %6958, 2
  %6962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.i32 %6962, 2
  %6964 = uitofp i32 %6963 to float
  %6965 = extractvalue %dx.types.CBufRet.i32 %6962, 3
  %6966 = uitofp i32 %6965 to float
  %6967 = extractvalue %dx.types.CBufRet.f32 %6958, 3
  %6968 = fmul fast float %6967, 2.000000e+00
  %6969 = fsub fast float %6941, %6959
  %6970 = fsub fast float %6945, %6960
  %6971 = fmul fast float %6968, %6969
  %6972 = fmul fast float %6968, %6970
  %6973 = fdiv fast float 1.000000e+00, %6753
  %6974 = fmul fast float %6972, %6973
  %6975 = call float @dx.op.unary.f32(i32 6, float %6974)  ; FAbs(value)
  %6976 = fmul fast float %6961, %6772
  %6977 = fmul fast float %6976, %6968
  %6978 = call float @dx.op.unary.f32(i32 6, float %6977)  ; FAbs(value)
  %6979 = call float @dx.op.unary.f32(i32 6, float %6971)  ; FAbs(value)
  %6980 = call float @dx.op.binary.f32(i32 35, float %6978, float %6975)  ; FMax(a,b)
  %6981 = call float @dx.op.binary.f32(i32 35, float %6979, float %6980)  ; FMax(a,b)
  %6982 = fmul fast float %6981, 2.000000e+00
  %6983 = call float @dx.op.unary.f32(i32 23, float %6982)  ; Log(value)
  %6984 = call float @dx.op.binary.f32(i32 35, float %6983, float %6964)  ; FMax(a,b)
  %6985 = call float @dx.op.unary.f32(i32 22, float %6984)  ; Frc(value)
  %6986 = fadd fast float %6985, 0xBFEA666660000000
  %6987 = fmul fast float %6986, 8.000000e+00
  %6988 = call float @dx.op.unary.f32(i32 7, float %6987)  ; Saturate(value)
  %6989 = call float @dx.op.unary.f32(i32 27, float %6984)  ; Round_ni(value)
  %6990 = fadd fast float %6989, %6988
  %6991 = call float @dx.op.binary.f32(i32 36, float %6990, float %6966)  ; FMin(a,b)
  %6992 = call float @dx.op.unary.f32(i32 27, float %6991)  ; Round_ni(value)
  %6993 = fsub fast float -0.000000e+00, %6992
  %6994 = call float @dx.op.unary.f32(i32 21, float %6993)  ; Exp(value)
  %6995 = fmul fast float %6994, %6968
  %6996 = fmul fast float %6995, %6941
  %6997 = fmul fast float %6995, %6945
  %6998 = fmul fast float %6996, 2.500000e-01
  %6999 = fmul fast float %6997, 2.500000e-01
  %7000 = fadd fast float %6998, 5.000000e-01
  %7001 = fadd fast float %6999, 5.000000e-01
  %7002 = fsub fast float %6966, %6964
  %7003 = fptoui float %7002 to i32
  %7004 = add i32 %7003, 320
  %7005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %7004)  ; CBufferLoadLegacy(handle,regIndex)
  %7006 = extractvalue %dx.types.CBufRet.f32 %7005, 0
  %7007 = extractvalue %dx.types.CBufRet.f32 %7005, 1
  %7008 = fcmp fast une float %6991, %6966
  %7009 = fsub fast float %6941, %7006
  %7010 = fsub fast float %6945, %7007
  %7011 = call float @dx.op.unary.f32(i32 6, float %7009)  ; FAbs(value)
  %7012 = call float @dx.op.unary.f32(i32 6, float %7010)  ; FAbs(value)
  %7013 = fmul fast float %7011, %6995
  %7014 = fmul fast float %7012, %6995
  %7015 = fcmp fast olt float %7013, 1.000000e+00
  %7016 = fcmp fast olt float %7014, 1.000000e+00
  %7017 = and i1 %7015, %7016
  %7018 = or i1 %7008, %7017
  br i1 %7018, label %7019, label %7316, !dx.controlflow.hints !106

; <label>:7019                                    ; preds = %6957
  %7020 = fmul fast float %6997, 5.000000e-01
  %7021 = fmul fast float %6996, 5.000000e-01
  %7022 = fadd fast float %7020, 5.000000e-01
  %7023 = fadd fast float %7021, 5.000000e-01
  %7024 = sitofp i32 %6963 to float
  %7025 = fsub fast float %6991, %7024
  %7026 = call float @dx.op.unary.f32(i32 27, float %7025)  ; Round_ni(value)
  %7027 = call float @dx.op.unary.f32(i32 22, float %6991)  ; Frc(value)
  %7028 = call float @dx.op.unary.f32(i32 22, float %7023)  ; Frc(value)
  %7029 = call float @dx.op.unary.f32(i32 22, float %7022)  ; Frc(value)
  %7030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %7028, float %7029, float %7026, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7031 = extractvalue %dx.types.ResRet.f32 %7030, 0
  %7032 = extractvalue %dx.types.ResRet.f32 %7030, 1
  %7033 = extractvalue %dx.types.ResRet.f32 %7030, 2
  %7034 = extractvalue %dx.types.ResRet.f32 %7030, 3
  %7035 = fcmp fast ogt float %7027, 0.000000e+00
  br i1 %7035, label %7036, label %7057, !dx.controlflow.hints !107

; <label>:7036                                    ; preds = %7019
  %7037 = fadd fast float %7026, 1.000000e+00
  %7038 = call float @dx.op.unary.f32(i32 22, float %7000)  ; Frc(value)
  %7039 = call float @dx.op.unary.f32(i32 22, float %7001)  ; Frc(value)
  %7040 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %7038, float %7039, float %7037, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7041 = extractvalue %dx.types.ResRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.ResRet.f32 %7040, 1
  %7043 = extractvalue %dx.types.ResRet.f32 %7040, 2
  %7044 = extractvalue %dx.types.ResRet.f32 %7040, 3
  %7045 = fsub fast float %7041, %7031
  %7046 = fsub fast float %7042, %7032
  %7047 = fsub fast float %7043, %7033
  %7048 = fsub fast float %7044, %7034
  %7049 = fmul fast float %7045, %7027
  %7050 = fmul fast float %7046, %7027
  %7051 = fmul fast float %7047, %7027
  %7052 = fmul fast float %7048, %7027
  %7053 = fadd fast float %7049, %7031
  %7054 = fadd fast float %7050, %7032
  %7055 = fadd fast float %7051, %7033
  %7056 = fadd fast float %7052, %7034
  br label %7057

; <label>:7057                                    ; preds = %7036, %7019
  %7058 = phi float [ %7053, %7036 ], [ %7031, %7019 ]
  %7059 = phi float [ %7054, %7036 ], [ %7032, %7019 ]
  %7060 = phi float [ %7055, %7036 ], [ %7033, %7019 ]
  %7061 = phi float [ %7056, %7036 ], [ %7034, %7019 ]
  %7062 = fadd fast float %7058, -5.000000e-01
  %7063 = fadd fast float %7060, -5.000000e-01
  %7064 = fmul fast float %7062, 0xBFD5555560000000
  %7065 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7063, float %7064)  ; FMad(a,b,c)
  %7066 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7059, float 0.000000e+00)  ; FMad(a,b,c)
  %7067 = fadd fast float %7066, %7061
  %7068 = fmul fast float %7062, -7.500000e-01
  %7069 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7063, float %7068)  ; FMad(a,b,c)
  %7070 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7059, float 0.000000e+00)  ; FMad(a,b,c)
  %7071 = fadd fast float %7070, %7061
  %7072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7073 = extractvalue %dx.types.CBufRet.f32 %7072, 0
  %7074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7075 = extractvalue %dx.types.CBufRet.f32 %7074, 0
  %7076 = extractvalue %dx.types.CBufRet.f32 %7074, 1
  %7077 = extractvalue %dx.types.CBufRet.f32 %7074, 2
  %7078 = extractvalue %dx.types.CBufRet.f32 %7074, 3
  %7079 = fsub fast float %7075, %7065
  %7080 = fsub fast float %7076, %7067
  %7081 = fsub fast float %7077, %7069
  %7082 = fsub fast float %7078, %7071
  %7083 = fmul fast float %7079, %7073
  %7084 = fmul fast float %7080, %7073
  %7085 = fmul fast float %7081, %7073
  %7086 = fmul fast float %7082, %7073
  %7087 = fadd fast float %7083, %7065
  %7088 = fadd fast float %7084, %7067
  %7089 = fadd fast float %7085, %7069
  %7090 = fadd fast float %7086, %7071
  %7091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7092 = extractvalue %dx.types.ResRet.i32 %7091, 0
  %7093 = and i32 %7092, 536870911
  %7094 = uitofp i32 %7093 to float
  %7095 = fmul fast float %7094, %6941
  %7096 = fmul fast float %7094, %6945
  %7097 = fptoui float %7095 to i32
  %7098 = fptoui float %7096 to i32
  %7099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7100 = extractvalue %dx.types.ResRet.i32 %7099, 0
  %7101 = and i32 %7100, 31
  %7102 = lshr i32 %7097, %7101
  %7103 = lshr i32 %7098, %7101
  %7104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7105 = extractvalue %dx.types.ResRet.i32 %7104, 0
  %7106 = and i32 %7105, 31
  %7107 = shl i32 1, %7106
  %7108 = call i32 @dx.op.binary.i32(i32 40, i32 %7107, i32 4)  ; UMin(a,b)
  %7109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7110 = extractvalue %dx.types.ResRet.i32 %7109, 0
  %7111 = extractvalue %dx.types.ResRet.i32 %7109, 1
  %7112 = icmp eq i32 %7108, 0
  br i1 %7112, label %7154, label %7113

; <label>:7113                                    ; preds = %7057
  br label %7114

; <label>:7114                                    ; preds = %7142, %7113
  %7115 = phi i32 [ %7145, %7142 ], [ 0, %7113 ]
  %7116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7117 = extractvalue %dx.types.ResRet.i32 %7116, 0
  %7118 = lshr i32 %7117, 16
  %7119 = and i32 %7118, 31
  %7120 = shl i32 %7103, %7119
  %7121 = add i32 %7120, %7102
  %7122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7123 = extractvalue %dx.types.ResRet.i32 %7122, 0
  %7124 = and i32 %7123, 31
  %7125 = shl i32 %7121, %7124
  %7126 = add i32 %7125, %7115
  %7127 = shl i32 %7126, 2
  %7128 = add i32 %7127, 32
  %7129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7128, i32 undef)  ; BufferLoad(srv,index,wot)
  %7130 = extractvalue %dx.types.ResRet.i32 %7129, 0
  %7131 = icmp slt i32 %7130, 0
  %7132 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7115
  %7133 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7115
  %7134 = bitcast float* %7132 to i32*
  %7135 = bitcast float* %7133 to i32*
  br i1 %7131, label %7136, label %7142

; <label>:7136                                    ; preds = %7114
  %7137 = and i32 %7130, 1073741823
  %7138 = add nuw nsw i32 %7137, 20
  %7139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7138, i32 undef)  ; BufferLoad(srv,index,wot)
  %7140 = extractvalue %dx.types.ResRet.i32 %7139, 0
  %7141 = extractvalue %dx.types.ResRet.i32 %7139, 1
  br label %7142

; <label>:7142                                    ; preds = %7136, %7114
  %7143 = phi i32 [ %7140, %7136 ], [ %7110, %7114 ]
  %7144 = phi i32 [ %7141, %7136 ], [ %7111, %7114 ]
  store i32 %7143, i32* %7134, align 4
  store i32 %7144, i32* %7135, align 4
  %7145 = add nuw i32 %7115, 1
  %7146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.i32 %7146, 2
  %7148 = icmp eq i32 %7147, 0
  %7149 = icmp ugt i32 %7130, -1073741825
  %7150 = and i1 %7149, %7148
  %7151 = icmp ult i32 %7145, %7108
  %7152 = and i1 %7150, %7151
  br i1 %7152, label %7114, label %7153

; <label>:7153                                    ; preds = %7142
  br label %7154

; <label>:7154                                    ; preds = %7153, %7057
  %7155 = phi i32 [ 0, %7057 ], [ %7145, %7153 ]
  %7156 = extractvalue %dx.types.CBufRet.f32 %6919, 2
  %7157 = fptoui float %7156 to i32
  %7158 = icmp eq i32 %7157, 0
  br i1 %7158, label %7210, label %7159

; <label>:7159                                    ; preds = %7154
  br label %7160

; <label>:7160                                    ; preds = %7205, %7159
  %7161 = phi i32 [ %7206, %7205 ], [ %7155, %7159 ]
  %7162 = phi i32 [ %7207, %7205 ], [ 0, %7159 ]
  %7163 = lshr i32 %7162, 2
  %7164 = and i32 %7162, 3
  %7165 = add nuw nsw i32 %7163, 83
  %7166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %7165)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.i32 %7166, 0
  %7168 = extractvalue %dx.types.CBufRet.i32 %7166, 1
  %7169 = extractvalue %dx.types.CBufRet.i32 %7166, 2
  %7170 = extractvalue %dx.types.CBufRet.i32 %7166, 3
  %7171 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %7167, i32* %7171, align 4
  %7172 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %7168, i32* %7172, align 4
  %7173 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %7169, i32* %7173, align 4
  %7174 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %7170, i32* %7174, align 4
  %7175 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %7164
  %7176 = load i32, i32* %7175, align 4, !tbaa !108, !noalias !112
  %7177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7178 = extractvalue %dx.types.ResRet.i32 %7177, 0
  %7179 = lshr i32 %7178, 16
  %7180 = and i32 %7179, 31
  %7181 = shl i32 %7103, %7180
  %7182 = add i32 %7181, %7102
  %7183 = shl i32 %7182, 2
  %7184 = add i32 %7183, %7176
  %7185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7184, i32 undef)  ; BufferLoad(srv,index,wot)
  %7186 = extractvalue %dx.types.ResRet.i32 %7185, 0
  %7187 = icmp eq i32 %7186, 0
  br i1 %7187, label %7205, label %7188

; <label>:7188                                    ; preds = %7160
  %7189 = icmp slt i32 %7186, 0
  %7190 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7161
  %7191 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7161
  %7192 = bitcast float* %7190 to i32*
  %7193 = bitcast float* %7191 to i32*
  br i1 %7189, label %7194, label %7201

; <label>:7194                                    ; preds = %7188
  %7195 = and i32 %7186, 1073741823
  %7196 = add i32 %7176, 20
  %7197 = add i32 %7196, %7195
  %7198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7197, i32 undef)  ; BufferLoad(srv,index,wot)
  %7199 = extractvalue %dx.types.ResRet.i32 %7198, 0
  %7200 = extractvalue %dx.types.ResRet.i32 %7198, 1
  br label %7201

; <label>:7201                                    ; preds = %7194, %7188
  %7202 = phi i32 [ %7199, %7194 ], [ %7110, %7188 ]
  %7203 = phi i32 [ %7200, %7194 ], [ %7111, %7188 ]
  store i32 %7202, i32* %7192, align 4
  store i32 %7203, i32* %7193, align 4
  %7204 = add i32 %7161, 1
  br label %7205

; <label>:7205                                    ; preds = %7201, %7160
  %7206 = phi i32 [ %7161, %7160 ], [ %7204, %7201 ]
  %7207 = add nuw i32 %7162, 1
  %7208 = icmp eq i32 %7207, %7157
  br i1 %7208, label %7209, label %7160

; <label>:7209                                    ; preds = %7205
  br label %7210

; <label>:7210                                    ; preds = %7209, %7154
  %7211 = phi i32 [ %7155, %7154 ], [ %7206, %7209 ]
  %7212 = icmp eq i32 %7211, 1
  %7213 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %7214 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %7212, label %7215, label %7218

; <label>:7215                                    ; preds = %7210
  %7216 = load float, float* %7213, align 4
  %7217 = load float, float* %7214, align 4
  br label %7245

; <label>:7218                                    ; preds = %7210
  %7219 = load float, float* %7213, align 4
  %7220 = load float, float* %7214, align 4
  %7221 = fdiv fast float 1.000000e+00, %7220
  %7222 = fsub fast float %7219, %7221
  %7223 = icmp ugt i32 %7211, 1
  br i1 %7223, label %7224, label %7240

; <label>:7224                                    ; preds = %7218
  br label %7225

; <label>:7225                                    ; preds = %7225, %7224
  %7226 = phi float [ %7235, %7225 ], [ %7222, %7224 ]
  %7227 = phi float [ %7236, %7225 ], [ %7219, %7224 ]
  %7228 = phi i32 [ %7237, %7225 ], [ 1, %7224 ]
  %7229 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7228
  %7230 = load float, float* %7229, align 4
  %7231 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %7228
  %7232 = load float, float* %7231, align 4
  %7233 = fdiv fast float 1.000000e+00, %7232
  %7234 = fsub fast float %7230, %7233
  %7235 = call float @dx.op.binary.f32(i32 36, float %7226, float %7234)  ; FMin(a,b)
  %7236 = call float @dx.op.binary.f32(i32 35, float %7227, float %7230)  ; FMax(a,b)
  %7237 = add nuw i32 %7228, 1
  %7238 = icmp eq i32 %7237, %7211
  br i1 %7238, label %7239, label %7225

; <label>:7239                                    ; preds = %7225
  br label %7240

; <label>:7240                                    ; preds = %7239, %7218
  %7241 = phi float [ %7222, %7218 ], [ %7235, %7239 ]
  %7242 = phi float [ %7219, %7218 ], [ %7236, %7239 ]
  %7243 = fsub fast float %7242, %7241
  %7244 = fdiv fast float 1.000000e+00, %7243
  br label %7245

; <label>:7245                                    ; preds = %7240, %7215
  %7246 = phi float [ %7216, %7215 ], [ %7242, %7240 ]
  %7247 = phi float [ %7217, %7215 ], [ %7244, %7240 ]
  %7248 = fadd fast float %6949, %7246
  %7249 = fmul fast float %7248, %7247
  %7250 = call float @dx.op.unary.f32(i32 7, float %7249)  ; Saturate(value)
  %7251 = fmul fast float %7250, 2.000000e+00
  %7252 = fsub fast float 1.000000e+00, %7251
  %7253 = fmul fast float %7087, %7087
  %7254 = fsub fast float %7088, %7253
  %7255 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7254)  ; FMax(a,b)
  %7256 = fdiv fast float 1.000000e+00, %7255
  %7257 = fmul fast float %7088, %7087
  %7258 = fsub fast float %7089, %7257
  %7259 = fsub fast float %7252, %7087
  %7260 = fmul fast float %7252, %7252
  %7261 = fsub fast float %7260, %7088
  %7262 = fmul fast float %7256, %7258
  %7263 = fmul fast float %7262, %7259
  %7264 = fsub fast float %7261, %7263
  %7265 = fmul fast float %7088, %7088
  %7266 = fsub fast float %7090, %7265
  %7267 = fmul fast float %7258, %7258
  %7268 = fmul fast float %7267, %7256
  %7269 = fsub fast float %7266, %7268
  %7270 = fdiv fast float %7264, %7269
  %7271 = fmul fast float %7270, %7258
  %7272 = fsub fast float %7259, %7271
  %7273 = fmul fast float %7272, %7256
  %7274 = fmul fast float %7273, %7087
  %7275 = fsub fast float 1.000000e+00, %7274
  %7276 = fmul fast float %7270, %7088
  %7277 = fsub fast float %7275, %7276
  %7278 = fmul fast float %7273, %7273
  %7279 = fmul fast float %7270, 4.000000e+00
  %7280 = fmul fast float %7279, %7277
  %7281 = fsub fast float %7278, %7280
  %7282 = call float @dx.op.unary.f32(i32 24, float %7281)  ; Sqrt(value)
  %7283 = fcmp fast oge float %7273, 0.000000e+00
  %7284 = fsub fast float -0.000000e+00, %7282
  %7285 = select i1 %7283, float %7284, float %7282
  %7286 = fsub fast float %7285, %7273
  %7287 = fdiv fast float %7286, %7270
  %7288 = fdiv fast float %7277, %7286
  %7289 = fmul fast float %7287, 5.000000e-01
  %7290 = fmul fast float %7288, 2.000000e+00
  %7291 = select i1 %7283, float %7289, float %7290
  %7292 = select i1 %7283, float %7290, float %7289
  %7293 = call float @dx.op.binary.f32(i32 35, float %7291, float %7292)  ; FMax(a,b)
  %7294 = call float @dx.op.binary.f32(i32 36, float %7291, float %7292)  ; FMin(a,b)
  %7295 = fcmp fast ogt float %7252, %7293
  %7296 = fsub fast float %7252, %7294
  %7297 = fsub fast float %7252, %7293
  %7298 = fsub fast float %7293, %7294
  %7299 = select i1 %7295, float %7297, float %7298
  %7300 = fmul float %7296, %7299
  %7301 = select i1 %7295, float %7294, float %7252
  %7302 = fcmp fast ogt float %7252, %7294
  %7303 = fmul fast float %7301, %7293
  %7304 = fadd fast float %7301, %7293
  %7305 = fmul fast float %7304, %7087
  %7306 = fadd fast float %7303, %7088
  %7307 = fsub fast float %7306, %7305
  %7308 = fdiv fast float %7307, %7300
  %7309 = select i1 %7302, float %7308, float 0.000000e+00
  %7310 = fsub fast float 1.000000e+00, %7309
  %7311 = select i1 %7295, float %7310, float %7309
  %7312 = call float @dx.op.unary.f32(i32 7, float %7311)  ; Saturate(value)
  %7313 = extractvalue %dx.types.CBufRet.f32 %7072, 3
  %7314 = fmul fast float %7313, %7312
  %7315 = fsub fast float 1.000000e+00, %7314
  br label %7316

; <label>:7316                                    ; preds = %7245, %6957, %6922, %6918, %6884
  %7317 = phi float [ 1.000000e+00, %6884 ], [ %7315, %7245 ], [ 1.000000e+00, %6922 ], [ 1.000000e+00, %6957 ], [ 1.000000e+00, %6918 ]
  %7318 = fcmp fast ogt float %6914, 0.000000e+00
  br i1 %7318, label %7319, label %7481, !dx.controlflow.hints !121

; <label>:7319                                    ; preds = %7316
  %7320 = fadd fast float %6827, %6801
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 3
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 2
  %7326 = call float @dx.op.binary.f32(i32 35, float %7320, float 0.000000e+00)  ; FMax(a,b)
  %7327 = fadd fast float %7326, 0x3F10000000000000
  %7328 = fcmp fast oeq float %7325, 0.000000e+00
  br i1 %7328, label %7329, label %7396

; <label>:7329                                    ; preds = %7319
  %7330 = extractvalue %dx.types.CBufRet.f32 %7321, 1
  %7331 = extractvalue %dx.types.CBufRet.f32 %7321, 0
  %7332 = fmul fast float %7331, %6816
  %7333 = fmul fast float %7330, %6817
  %7334 = fadd fast float %7332, 5.000000e-01
  %7335 = call float @dx.op.unary.f32(i32 27, float %7334)  ; Round_ni(value)
  %7336 = fadd fast float %7333, 5.000000e-01
  %7337 = call float @dx.op.unary.f32(i32 27, float %7336)  ; Round_ni(value)
  %7338 = fsub fast float %7334, %7335
  %7339 = fsub fast float %7336, %7337
  %7340 = fadd fast float %7335, -5.000000e-01
  %7341 = fadd fast float %7337, -5.000000e-01
  %7342 = fmul fast float %7338, 2.000000e+00
  %7343 = fsub fast float 3.000000e+00, %7342
  %7344 = fadd fast float %7342, 1.000000e+00
  %7345 = fsub fast float 2.000000e+00, %7338
  %7346 = bitcast float %7343 to i32
  %7347 = sub nsw i32 2129859010, %7346
  %7348 = bitcast i32 %7347 to float
  %7349 = fmul fast float %7348, %7345
  %7350 = fadd fast float %7349, -1.000000e+00
  %7351 = bitcast float %7344 to i32
  %7352 = sub nsw i32 2129859010, %7351
  %7353 = bitcast i32 %7352 to float
  %7354 = fmul fast float %7353, %7338
  %7355 = fadd fast float %7354, 1.000000e+00
  %7356 = fmul fast float %7339, 2.000000e+00
  %7357 = fsub fast float 3.000000e+00, %7356
  %7358 = fadd fast float %7356, 1.000000e+00
  %7359 = fsub fast float 2.000000e+00, %7339
  %7360 = bitcast float %7357 to i32
  %7361 = sub nsw i32 2129859010, %7360
  %7362 = bitcast i32 %7361 to float
  %7363 = fmul fast float %7362, %7359
  %7364 = fadd fast float %7363, -1.000000e+00
  %7365 = bitcast float %7358 to i32
  %7366 = sub nsw i32 2129859010, %7365
  %7367 = bitcast i32 %7366 to float
  %7368 = fmul fast float %7367, %7339
  %7369 = fadd fast float %7368, 1.000000e+00
  %7370 = fadd fast float %7350, %7340
  %7371 = fmul fast float %7370, %7322
  %7372 = fadd fast float %7364, %7341
  %7373 = fmul fast float %7372, %7323
  %7374 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7371, float %7373, float undef, float undef, i32 0, i32 0, i32 undef, float %7327)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7375 = extractvalue %dx.types.ResRet.f32 %7374, 0
  %7376 = fmul fast float %7375, %7343
  %7377 = fadd fast float %7355, %7340
  %7378 = fmul fast float %7377, %7322
  %7379 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7378, float %7373, float undef, float undef, i32 0, i32 0, i32 undef, float %7327)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = fmul fast float %7380, %7344
  %7382 = fadd fast float %7369, %7341
  %7383 = fmul fast float %7382, %7323
  %7384 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7371, float %7383, float undef, float undef, i32 0, i32 0, i32 undef, float %7327)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7385 = extractvalue %dx.types.ResRet.f32 %7384, 0
  %7386 = fmul fast float %7385, %7343
  %7387 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %7378, float %7383, float undef, float undef, i32 0, i32 0, i32 undef, float %7327)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7388 = extractvalue %dx.types.ResRet.f32 %7387, 0
  %7389 = fmul fast float %7388, %7344
  %7390 = fadd fast float %7389, %7386
  %7391 = fmul fast float %7390, %7358
  %7392 = fadd fast float %7381, %7376
  %7393 = fmul fast float %7392, %7357
  %7394 = fadd fast float %7393, %7391
  %7395 = fmul fast float %7394, 6.250000e-02
  br label %7481

; <label>:7396                                    ; preds = %7319
  %7397 = fmul fast float %243, 0x401921FB60000000
  %7398 = call float @dx.op.unary.f32(i32 13, float %7397)  ; Sin(value)
  %7399 = call float @dx.op.unary.f32(i32 12, float %7397)  ; Cos(value)
  %7400 = fsub fast float -0.000000e+00, %7398
  br label %7401

; <label>:7401                                    ; preds = %7450, %7396
  %7402 = phi float [ 0.000000e+00, %7396 ], [ %7445, %7450 ]
  %7403 = phi float [ 0.000000e+00, %7396 ], [ %7447, %7450 ]
  %7404 = phi i32 [ 0, %7396 ], [ %7451, %7450 ]
  %7405 = mul i32 %7404, 2
  %7406 = add i32 0, %7405
  %7407 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7406
  %7408 = load float, float* %7407, align 4
  %7409 = mul i32 %7404, 2
  %7410 = add i32 1, %7409
  %7411 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7410
  %7412 = load float, float* %7411, align 4
  %7413 = fmul fast float %7408, %7399
  %7414 = call float @dx.op.tertiary.f32(i32 46, float %7412, float %7400, float %7413)  ; FMad(a,b,c)
  %7415 = fmul fast float %7408, %7398
  %7416 = call float @dx.op.tertiary.f32(i32 46, float %7412, float %7399, float %7415)  ; FMad(a,b,c)
  %7417 = fmul fast float %7414, %7325
  %7418 = fmul fast float %7416, %7325
  %7419 = fadd fast float %7417, %6816
  %7420 = fadd fast float %7418, %6817
  %7421 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %7419, float %7420, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7422 = extractvalue %dx.types.ResRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.ResRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.ResRet.f32 %7421, 2
  %7425 = extractvalue %dx.types.ResRet.f32 %7421, 3
  %7426 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7422, float* %7426, align 4
  %7427 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7423, float* %7427, align 4
  %7428 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7424, float* %7428, align 4
  %7429 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7425, float* %7429, align 4
  %7430 = fsub fast float %7422, %7327
  %7431 = fcmp fast olt float %7430, 0.000000e+00
  %7432 = select i1 %7431, float 0.000000e+00, float 1.000000e+00
  %7433 = fadd fast float %7432, %7402
  %7434 = fmul fast float %7432, %7430
  %7435 = fadd fast float %7434, %7403
  br label %7436

; <label>:7436                                    ; preds = %7436, %7401
  %7437 = phi i32 [ 1, %7401 ], [ %7448, %7436 ]
  %7438 = phi float [ %7435, %7401 ], [ %7447, %7436 ]
  %7439 = phi float [ %7433, %7401 ], [ %7445, %7436 ]
  %7440 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7437
  %7441 = load float, float* %7440, align 4, !tbaa !122, !noalias !112
  %7442 = fsub fast float %7441, %7327
  %7443 = fcmp fast olt float %7442, 0.000000e+00
  %7444 = select i1 %7443, float 0.000000e+00, float 1.000000e+00
  %7445 = fadd fast float %7444, %7439
  %7446 = fmul fast float %7444, %7442
  %7447 = fadd fast float %7446, %7438
  %7448 = add nuw nsw i32 %7437, 1
  %7449 = icmp eq i32 %7448, 4
  br i1 %7449, label %7450, label %7436, !llvm.loop !124

; <label>:7450                                    ; preds = %7436
  %7451 = add nuw nsw i32 %7404, 1
  %7452 = icmp eq i32 %7451, 8
  br i1 %7452, label %7453, label %7401, !llvm.loop !125

; <label>:7453                                    ; preds = %7450
  %7454 = fdiv fast float 1.000000e+00, %7445
  %7455 = fmul fast float %7454, %7447
  %7456 = fdiv fast float 1.000000e+00, %7327
  %7457 = fmul fast float %7455, %7456
  %7458 = call float @dx.op.unary.f32(i32 7, float %7457)  ; Saturate(value)
  %7459 = call float @dx.op.binary.f32(i32 35, float %7458, float 0.000000e+00)  ; FMax(a,b)
  %7460 = fmul fast float %7445, 3.125000e-02
  %7461 = call float @dx.op.unary.f32(i32 7, float %7460)  ; Saturate(value)
  %7462 = fmul fast float %7461, 2.000000e+00
  %7463 = fadd fast float %7462, -1.000000e+00
  %7464 = fcmp fast ogt float %7463, 0.000000e+00
  %7465 = fcmp fast olt float %7463, 0.000000e+00
  %7466 = zext i1 %7464 to i32
  %7467 = zext i1 %7465 to i32
  %7468 = sub nsw i32 %7466, %7467
  %7469 = sitofp i32 %7468 to float
  %7470 = fmul fast float %7469, %7463
  %7471 = fsub fast float 1.000000e+00, %7470
  %7472 = fmul fast float %7471, %7471
  %7473 = fmul fast float %7472, %7471
  %7474 = fsub fast float %7471, %7473
  %7475 = fmul fast float %7474, %7459
  %7476 = fsub fast float 1.000000e+00, %7473
  %7477 = fsub fast float %7476, %7475
  %7478 = fmul fast float %7469, 5.000000e-01
  %7479 = fmul fast float %7478, %7477
  %7480 = fsub fast float 5.000000e-01, %7479
  br label %7481

; <label>:7481                                    ; preds = %7453, %7329, %7316
  %7482 = phi float [ 1.000000e+00, %7316 ], [ %7395, %7329 ], [ %7480, %7453 ]
  %7483 = fcmp fast ogt float %6912, 0.000000e+00
  br i1 %7483, label %7484, label %7648, !dx.controlflow.hints !126

; <label>:7484                                    ; preds = %7481
  %7485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7486 = extractvalue %dx.types.CBufRet.f32 %7485, 1
  %7487 = fadd fast float %7486, %6801
  %7488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.f32 %7488, 2
  %7490 = extractvalue %dx.types.CBufRet.f32 %7488, 3
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7493 = call float @dx.op.binary.f32(i32 35, float %7487, float 0.000000e+00)  ; FMax(a,b)
  %7494 = fadd fast float %7493, 0x3F10000000000000
  %7495 = fcmp fast oeq float %7492, 0.000000e+00
  br i1 %7495, label %7496, label %7563

; <label>:7496                                    ; preds = %7484
  %7497 = extractvalue %dx.types.CBufRet.f32 %7488, 1
  %7498 = extractvalue %dx.types.CBufRet.f32 %7488, 0
  %7499 = fmul fast float %7498, %6808
  %7500 = fmul fast float %7497, %6809
  %7501 = fadd fast float %7499, 5.000000e-01
  %7502 = call float @dx.op.unary.f32(i32 27, float %7501)  ; Round_ni(value)
  %7503 = fadd fast float %7500, 5.000000e-01
  %7504 = call float @dx.op.unary.f32(i32 27, float %7503)  ; Round_ni(value)
  %7505 = fsub fast float %7501, %7502
  %7506 = fsub fast float %7503, %7504
  %7507 = fadd fast float %7502, -5.000000e-01
  %7508 = fadd fast float %7504, -5.000000e-01
  %7509 = fmul fast float %7505, 2.000000e+00
  %7510 = fsub fast float 3.000000e+00, %7509
  %7511 = fadd fast float %7509, 1.000000e+00
  %7512 = fsub fast float 2.000000e+00, %7505
  %7513 = bitcast float %7510 to i32
  %7514 = sub nsw i32 2129859010, %7513
  %7515 = bitcast i32 %7514 to float
  %7516 = fmul fast float %7515, %7512
  %7517 = fadd fast float %7516, -1.000000e+00
  %7518 = bitcast float %7511 to i32
  %7519 = sub nsw i32 2129859010, %7518
  %7520 = bitcast i32 %7519 to float
  %7521 = fmul fast float %7520, %7505
  %7522 = fadd fast float %7521, 1.000000e+00
  %7523 = fmul fast float %7506, 2.000000e+00
  %7524 = fsub fast float 3.000000e+00, %7523
  %7525 = fadd fast float %7523, 1.000000e+00
  %7526 = fsub fast float 2.000000e+00, %7506
  %7527 = bitcast float %7524 to i32
  %7528 = sub nsw i32 2129859010, %7527
  %7529 = bitcast i32 %7528 to float
  %7530 = fmul fast float %7529, %7526
  %7531 = fadd fast float %7530, -1.000000e+00
  %7532 = bitcast float %7525 to i32
  %7533 = sub nsw i32 2129859010, %7532
  %7534 = bitcast i32 %7533 to float
  %7535 = fmul fast float %7534, %7506
  %7536 = fadd fast float %7535, 1.000000e+00
  %7537 = fadd fast float %7517, %7507
  %7538 = fmul fast float %7537, %7489
  %7539 = fadd fast float %7531, %7508
  %7540 = fmul fast float %7539, %7490
  %7541 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7538, float %7540, float undef, float undef, i32 0, i32 0, i32 undef, float %7494)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7542 = extractvalue %dx.types.ResRet.f32 %7541, 0
  %7543 = fmul fast float %7542, %7510
  %7544 = fadd fast float %7522, %7507
  %7545 = fmul fast float %7544, %7489
  %7546 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7545, float %7540, float undef, float undef, i32 0, i32 0, i32 undef, float %7494)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7547 = extractvalue %dx.types.ResRet.f32 %7546, 0
  %7548 = fmul fast float %7547, %7511
  %7549 = fadd fast float %7536, %7508
  %7550 = fmul fast float %7549, %7490
  %7551 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7538, float %7550, float undef, float undef, i32 0, i32 0, i32 undef, float %7494)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7552 = extractvalue %dx.types.ResRet.f32 %7551, 0
  %7553 = fmul fast float %7552, %7510
  %7554 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7545, float %7550, float undef, float undef, i32 0, i32 0, i32 undef, float %7494)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7555 = extractvalue %dx.types.ResRet.f32 %7554, 0
  %7556 = fmul fast float %7555, %7511
  %7557 = fadd fast float %7556, %7553
  %7558 = fmul fast float %7557, %7525
  %7559 = fadd fast float %7548, %7543
  %7560 = fmul fast float %7559, %7524
  %7561 = fadd fast float %7560, %7558
  %7562 = fmul fast float %7561, 6.250000e-02
  br label %7648

; <label>:7563                                    ; preds = %7484
  %7564 = fmul fast float %243, 0x401921FB60000000
  %7565 = call float @dx.op.unary.f32(i32 13, float %7564)  ; Sin(value)
  %7566 = call float @dx.op.unary.f32(i32 12, float %7564)  ; Cos(value)
  %7567 = fsub fast float -0.000000e+00, %7565
  br label %7568

; <label>:7568                                    ; preds = %7617, %7563
  %7569 = phi float [ 0.000000e+00, %7563 ], [ %7612, %7617 ]
  %7570 = phi float [ 0.000000e+00, %7563 ], [ %7614, %7617 ]
  %7571 = phi i32 [ 0, %7563 ], [ %7618, %7617 ]
  %7572 = mul i32 %7571, 2
  %7573 = add i32 0, %7572
  %7574 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7573
  %7575 = load float, float* %7574, align 4
  %7576 = mul i32 %7571, 2
  %7577 = add i32 1, %7576
  %7578 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7577
  %7579 = load float, float* %7578, align 4
  %7580 = fmul fast float %7575, %7566
  %7581 = call float @dx.op.tertiary.f32(i32 46, float %7579, float %7567, float %7580)  ; FMad(a,b,c)
  %7582 = fmul fast float %7575, %7565
  %7583 = call float @dx.op.tertiary.f32(i32 46, float %7579, float %7566, float %7582)  ; FMad(a,b,c)
  %7584 = fmul fast float %7581, %7492
  %7585 = fmul fast float %7583, %7492
  %7586 = fadd fast float %7584, %6808
  %7587 = fadd fast float %7585, %6809
  %7588 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7586, float %7587, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7589 = extractvalue %dx.types.ResRet.f32 %7588, 0
  %7590 = extractvalue %dx.types.ResRet.f32 %7588, 1
  %7591 = extractvalue %dx.types.ResRet.f32 %7588, 2
  %7592 = extractvalue %dx.types.ResRet.f32 %7588, 3
  %7593 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7589, float* %7593, align 4
  %7594 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7590, float* %7594, align 4
  %7595 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7591, float* %7595, align 4
  %7596 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7592, float* %7596, align 4
  %7597 = fsub fast float %7589, %7494
  %7598 = fcmp fast olt float %7597, 0.000000e+00
  %7599 = select i1 %7598, float 0.000000e+00, float 1.000000e+00
  %7600 = fadd fast float %7599, %7569
  %7601 = fmul fast float %7599, %7597
  %7602 = fadd fast float %7601, %7570
  br label %7603

; <label>:7603                                    ; preds = %7603, %7568
  %7604 = phi i32 [ 1, %7568 ], [ %7615, %7603 ]
  %7605 = phi float [ %7602, %7568 ], [ %7614, %7603 ]
  %7606 = phi float [ %7600, %7568 ], [ %7612, %7603 ]
  %7607 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7604
  %7608 = load float, float* %7607, align 4, !tbaa !122, !noalias !112
  %7609 = fsub fast float %7608, %7494
  %7610 = fcmp fast olt float %7609, 0.000000e+00
  %7611 = select i1 %7610, float 0.000000e+00, float 1.000000e+00
  %7612 = fadd fast float %7611, %7606
  %7613 = fmul fast float %7611, %7609
  %7614 = fadd fast float %7613, %7605
  %7615 = add nuw nsw i32 %7604, 1
  %7616 = icmp eq i32 %7615, 4
  br i1 %7616, label %7617, label %7603, !llvm.loop !124

; <label>:7617                                    ; preds = %7603
  %7618 = add nuw nsw i32 %7571, 1
  %7619 = icmp eq i32 %7618, 8
  br i1 %7619, label %7620, label %7568, !llvm.loop !125

; <label>:7620                                    ; preds = %7617
  %7621 = fdiv fast float 1.000000e+00, %7612
  %7622 = fmul fast float %7621, %7614
  %7623 = fdiv fast float 1.000000e+00, %7494
  %7624 = fmul fast float %7622, %7623
  %7625 = call float @dx.op.unary.f32(i32 7, float %7624)  ; Saturate(value)
  %7626 = call float @dx.op.binary.f32(i32 35, float %7625, float 0.000000e+00)  ; FMax(a,b)
  %7627 = fmul fast float %7612, 3.125000e-02
  %7628 = call float @dx.op.unary.f32(i32 7, float %7627)  ; Saturate(value)
  %7629 = fmul fast float %7628, 2.000000e+00
  %7630 = fadd fast float %7629, -1.000000e+00
  %7631 = fcmp fast ogt float %7630, 0.000000e+00
  %7632 = fcmp fast olt float %7630, 0.000000e+00
  %7633 = zext i1 %7631 to i32
  %7634 = zext i1 %7632 to i32
  %7635 = sub nsw i32 %7633, %7634
  %7636 = sitofp i32 %7635 to float
  %7637 = fmul fast float %7636, %7630
  %7638 = fsub fast float 1.000000e+00, %7637
  %7639 = fmul fast float %7638, %7638
  %7640 = fmul fast float %7639, %7638
  %7641 = fsub fast float %7638, %7640
  %7642 = fmul fast float %7641, %7626
  %7643 = fsub fast float 1.000000e+00, %7640
  %7644 = fsub fast float %7643, %7642
  %7645 = fmul fast float %7636, 5.000000e-01
  %7646 = fmul fast float %7645, %7644
  %7647 = fsub fast float 5.000000e-01, %7646
  br label %7648

; <label>:7648                                    ; preds = %7620, %7496, %7481
  %7649 = phi float [ 1.000000e+00, %7481 ], [ %7562, %7496 ], [ %7647, %7620 ]
  %7650 = fcmp fast ogt float %6911, 0.000000e+00
  br i1 %7650, label %7651, label %7815, !dx.controlflow.hints !127

; <label>:7651                                    ; preds = %7648
  %7652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7653 = extractvalue %dx.types.CBufRet.f32 %7652, 0
  %7654 = fadd fast float %7653, %6801
  %7655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7656 = extractvalue %dx.types.CBufRet.f32 %7655, 2
  %7657 = extractvalue %dx.types.CBufRet.f32 %7655, 3
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 0
  %7660 = call float @dx.op.binary.f32(i32 35, float %7654, float 0.000000e+00)  ; FMax(a,b)
  %7661 = fadd fast float %7660, 0x3F10000000000000
  %7662 = fcmp fast oeq float %7659, 0.000000e+00
  br i1 %7662, label %7663, label %7730

; <label>:7663                                    ; preds = %7651
  %7664 = extractvalue %dx.types.CBufRet.f32 %7655, 1
  %7665 = extractvalue %dx.types.CBufRet.f32 %7655, 0
  %7666 = fmul fast float %7665, %6793
  %7667 = fmul fast float %7664, %6797
  %7668 = fadd fast float %7666, 5.000000e-01
  %7669 = call float @dx.op.unary.f32(i32 27, float %7668)  ; Round_ni(value)
  %7670 = fadd fast float %7667, 5.000000e-01
  %7671 = call float @dx.op.unary.f32(i32 27, float %7670)  ; Round_ni(value)
  %7672 = fsub fast float %7668, %7669
  %7673 = fsub fast float %7670, %7671
  %7674 = fadd fast float %7669, -5.000000e-01
  %7675 = fadd fast float %7671, -5.000000e-01
  %7676 = fmul fast float %7672, 2.000000e+00
  %7677 = fsub fast float 3.000000e+00, %7676
  %7678 = fadd fast float %7676, 1.000000e+00
  %7679 = fsub fast float 2.000000e+00, %7672
  %7680 = bitcast float %7677 to i32
  %7681 = sub nsw i32 2129859010, %7680
  %7682 = bitcast i32 %7681 to float
  %7683 = fmul fast float %7682, %7679
  %7684 = fadd fast float %7683, -1.000000e+00
  %7685 = bitcast float %7678 to i32
  %7686 = sub nsw i32 2129859010, %7685
  %7687 = bitcast i32 %7686 to float
  %7688 = fmul fast float %7687, %7672
  %7689 = fadd fast float %7688, 1.000000e+00
  %7690 = fmul fast float %7673, 2.000000e+00
  %7691 = fsub fast float 3.000000e+00, %7690
  %7692 = fadd fast float %7690, 1.000000e+00
  %7693 = fsub fast float 2.000000e+00, %7673
  %7694 = bitcast float %7691 to i32
  %7695 = sub nsw i32 2129859010, %7694
  %7696 = bitcast i32 %7695 to float
  %7697 = fmul fast float %7696, %7693
  %7698 = fadd fast float %7697, -1.000000e+00
  %7699 = bitcast float %7692 to i32
  %7700 = sub nsw i32 2129859010, %7699
  %7701 = bitcast i32 %7700 to float
  %7702 = fmul fast float %7701, %7673
  %7703 = fadd fast float %7702, 1.000000e+00
  %7704 = fadd fast float %7684, %7674
  %7705 = fmul fast float %7704, %7656
  %7706 = fadd fast float %7698, %7675
  %7707 = fmul fast float %7706, %7657
  %7708 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7705, float %7707, float undef, float undef, i32 0, i32 0, i32 undef, float %7661)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7709 = extractvalue %dx.types.ResRet.f32 %7708, 0
  %7710 = fmul fast float %7709, %7677
  %7711 = fadd fast float %7689, %7674
  %7712 = fmul fast float %7711, %7656
  %7713 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7712, float %7707, float undef, float undef, i32 0, i32 0, i32 undef, float %7661)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7714 = extractvalue %dx.types.ResRet.f32 %7713, 0
  %7715 = fmul fast float %7714, %7678
  %7716 = fadd fast float %7703, %7675
  %7717 = fmul fast float %7716, %7657
  %7718 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7705, float %7717, float undef, float undef, i32 0, i32 0, i32 undef, float %7661)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7719 = extractvalue %dx.types.ResRet.f32 %7718, 0
  %7720 = fmul fast float %7719, %7677
  %7721 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7712, float %7717, float undef, float undef, i32 0, i32 0, i32 undef, float %7661)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7722 = extractvalue %dx.types.ResRet.f32 %7721, 0
  %7723 = fmul fast float %7722, %7678
  %7724 = fadd fast float %7723, %7720
  %7725 = fmul fast float %7724, %7692
  %7726 = fadd fast float %7715, %7710
  %7727 = fmul fast float %7726, %7691
  %7728 = fadd fast float %7727, %7725
  %7729 = fmul fast float %7728, 6.250000e-02
  br label %7815

; <label>:7730                                    ; preds = %7651
  %7731 = fmul fast float %243, 0x401921FB60000000
  %7732 = call float @dx.op.unary.f32(i32 13, float %7731)  ; Sin(value)
  %7733 = call float @dx.op.unary.f32(i32 12, float %7731)  ; Cos(value)
  %7734 = fsub fast float -0.000000e+00, %7732
  br label %7735

; <label>:7735                                    ; preds = %7784, %7730
  %7736 = phi float [ 0.000000e+00, %7730 ], [ %7779, %7784 ]
  %7737 = phi float [ 0.000000e+00, %7730 ], [ %7781, %7784 ]
  %7738 = phi i32 [ 0, %7730 ], [ %7785, %7784 ]
  %7739 = mul i32 %7738, 2
  %7740 = add i32 0, %7739
  %7741 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7740
  %7742 = load float, float* %7741, align 4
  %7743 = mul i32 %7738, 2
  %7744 = add i32 1, %7743
  %7745 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7744
  %7746 = load float, float* %7745, align 4
  %7747 = fmul fast float %7742, %7733
  %7748 = call float @dx.op.tertiary.f32(i32 46, float %7746, float %7734, float %7747)  ; FMad(a,b,c)
  %7749 = fmul fast float %7742, %7732
  %7750 = call float @dx.op.tertiary.f32(i32 46, float %7746, float %7733, float %7749)  ; FMad(a,b,c)
  %7751 = fmul fast float %7748, %7659
  %7752 = fmul fast float %7750, %7659
  %7753 = fadd fast float %7751, %6793
  %7754 = fadd fast float %7752, %6797
  %7755 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7753, float %7754, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7756 = extractvalue %dx.types.ResRet.f32 %7755, 0
  %7757 = extractvalue %dx.types.ResRet.f32 %7755, 1
  %7758 = extractvalue %dx.types.ResRet.f32 %7755, 2
  %7759 = extractvalue %dx.types.ResRet.f32 %7755, 3
  %7760 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7756, float* %7760, align 4
  %7761 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7757, float* %7761, align 4
  %7762 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7758, float* %7762, align 4
  %7763 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7759, float* %7763, align 4
  %7764 = fsub fast float %7756, %7661
  %7765 = fcmp fast olt float %7764, 0.000000e+00
  %7766 = select i1 %7765, float 0.000000e+00, float 1.000000e+00
  %7767 = fadd fast float %7766, %7736
  %7768 = fmul fast float %7766, %7764
  %7769 = fadd fast float %7768, %7737
  br label %7770

; <label>:7770                                    ; preds = %7770, %7735
  %7771 = phi i32 [ 1, %7735 ], [ %7782, %7770 ]
  %7772 = phi float [ %7769, %7735 ], [ %7781, %7770 ]
  %7773 = phi float [ %7767, %7735 ], [ %7779, %7770 ]
  %7774 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7771
  %7775 = load float, float* %7774, align 4, !tbaa !122, !noalias !112
  %7776 = fsub fast float %7775, %7661
  %7777 = fcmp fast olt float %7776, 0.000000e+00
  %7778 = select i1 %7777, float 0.000000e+00, float 1.000000e+00
  %7779 = fadd fast float %7778, %7773
  %7780 = fmul fast float %7778, %7776
  %7781 = fadd fast float %7780, %7772
  %7782 = add nuw nsw i32 %7771, 1
  %7783 = icmp eq i32 %7782, 4
  br i1 %7783, label %7784, label %7770, !llvm.loop !124

; <label>:7784                                    ; preds = %7770
  %7785 = add nuw nsw i32 %7738, 1
  %7786 = icmp eq i32 %7785, 8
  br i1 %7786, label %7787, label %7735, !llvm.loop !125

; <label>:7787                                    ; preds = %7784
  %7788 = fdiv fast float 1.000000e+00, %7779
  %7789 = fmul fast float %7788, %7781
  %7790 = fdiv fast float 1.000000e+00, %7661
  %7791 = fmul fast float %7789, %7790
  %7792 = call float @dx.op.unary.f32(i32 7, float %7791)  ; Saturate(value)
  %7793 = call float @dx.op.binary.f32(i32 35, float %7792, float 0.000000e+00)  ; FMax(a,b)
  %7794 = fmul fast float %7779, 3.125000e-02
  %7795 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7796 = fmul fast float %7795, 2.000000e+00
  %7797 = fadd fast float %7796, -1.000000e+00
  %7798 = fcmp fast ogt float %7797, 0.000000e+00
  %7799 = fcmp fast olt float %7797, 0.000000e+00
  %7800 = zext i1 %7798 to i32
  %7801 = zext i1 %7799 to i32
  %7802 = sub nsw i32 %7800, %7801
  %7803 = sitofp i32 %7802 to float
  %7804 = fmul fast float %7803, %7797
  %7805 = fsub fast float 1.000000e+00, %7804
  %7806 = fmul fast float %7805, %7805
  %7807 = fmul fast float %7806, %7805
  %7808 = fsub fast float %7805, %7807
  %7809 = fmul fast float %7808, %7793
  %7810 = fsub fast float 1.000000e+00, %7807
  %7811 = fsub fast float %7810, %7809
  %7812 = fmul fast float %7803, 5.000000e-01
  %7813 = fmul fast float %7812, %7811
  %7814 = fsub fast float 5.000000e-01, %7813
  br label %7815

; <label>:7815                                    ; preds = %7787, %7663, %7648
  %7816 = phi float [ 1.000000e+00, %7648 ], [ %7729, %7663 ], [ %7814, %7787 ]
  %7817 = fsub fast float %7482, %7317
  %7818 = fmul fast float %7817, %6855
  %7819 = fadd fast float %7818, %7317
  %7820 = fsub fast float %7649, %7819
  %7821 = fmul fast float %7820, %6885
  %7822 = fadd fast float %7821, %7819
  %7823 = fsub fast float %7816, %7822
  %7824 = fmul fast float %7823, %6911
  %7825 = fadd fast float %7824, %7822
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 2
  %7828 = fcmp fast ogt float %7827, 0.000000e+00
  br i1 %7828, label %7829, label %7869, !dx.controlflow.hints !128

; <label>:7829                                    ; preds = %7815
  %7830 = fcmp fast ugt float %7827, 0.000000e+00
  br i1 %7830, label %7831, label %7866

; <label>:7831                                    ; preds = %7829
  %7832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7833 = extractvalue %dx.types.CBufRet.f32 %7832, 0
  %7834 = extractvalue %dx.types.CBufRet.f32 %7832, 1
  %7835 = extractvalue %dx.types.CBufRet.f32 %7832, 2
  %7836 = extractvalue %dx.types.CBufRet.f32 %7832, 3
  %7837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7838 = extractvalue %dx.types.CBufRet.f32 %7837, 0
  %7839 = extractvalue %dx.types.CBufRet.f32 %7837, 1
  %7840 = extractvalue %dx.types.CBufRet.f32 %7837, 2
  %7841 = extractvalue %dx.types.CBufRet.f32 %7837, 3
  %7842 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7843 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 0
  %7846 = extractvalue %dx.types.CBufRet.f32 %7844, 1
  %7847 = extractvalue %dx.types.CBufRet.f32 %7844, 2
  %7848 = fadd fast float %7845, %6770
  %7849 = fadd fast float %7846, %6771
  %7850 = fadd fast float %7847, %6772
  %7851 = fmul fast float %7848, %7833
  %7852 = call float @dx.op.tertiary.f32(i32 46, float %7834, float %7849, float %7851)  ; FMad(a,b,c)
  %7853 = call float @dx.op.tertiary.f32(i32 46, float %7835, float %7850, float %7852)  ; FMad(a,b,c)
  %7854 = fadd fast float %7853, %7836
  %7855 = fmul fast float %7848, %7838
  %7856 = call float @dx.op.tertiary.f32(i32 46, float %7839, float %7849, float %7855)  ; FMad(a,b,c)
  %7857 = call float @dx.op.tertiary.f32(i32 46, float %7840, float %7850, float %7856)  ; FMad(a,b,c)
  %7858 = fadd fast float %7857, %7841
  %7859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7854, float %7858, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7860 = extractvalue %dx.types.ResRet.f32 %7859, 0
  %7861 = fmul fast float %7860, %7843
  %7862 = fadd fast float %7861, %7842
  %7863 = call float @dx.op.unary.f32(i32 7, float %7862)  ; Saturate(value)
  %7864 = fmul fast float %7863, %7827
  %7865 = fsub fast float 1.000000e+00, %7864
  br label %7866

; <label>:7866                                    ; preds = %7831, %7829
  %7867 = phi float [ %7865, %7831 ], [ 1.000000e+00, %7829 ]
  %7868 = fmul fast float %7867, %7825
  br label %7869

; <label>:7869                                    ; preds = %7866, %7815, %6750
  %7870 = phi float [ 1.000000e+00, %6750 ], [ %7868, %7866 ], [ %7825, %7815 ]
  %7871 = call float @dx.op.binary.f32(i32 36, float %7870, float %7870)  ; FMin(a,b)
  %7872 = call float @dx.op.binary.f32(i32 36, float %7870, float %7871)  ; FMin(a,b)
  %7873 = fcmp fast ogt float %7872, 0.000000e+00
  br i1 %7873, label %7874, label %8039, !dx.controlflow.hints !129

; <label>:7874                                    ; preds = %7869
  %7875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7876 = extractvalue %dx.types.CBufRet.f32 %7875, 0
  %7877 = extractvalue %dx.types.CBufRet.f32 %7875, 1
  %7878 = extractvalue %dx.types.CBufRet.f32 %7875, 2
  %7879 = extractvalue %dx.types.CBufRet.f32 %7875, 3
  %7880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7881 = extractvalue %dx.types.CBufRet.f32 %7880, 0
  %7882 = extractvalue %dx.types.CBufRet.f32 %7880, 1
  %7883 = extractvalue %dx.types.CBufRet.f32 %7880, 2
  %7884 = extractvalue %dx.types.CBufRet.f32 %7880, 3
  %7885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7886 = extractvalue %dx.types.CBufRet.f32 %7885, 0
  %7887 = extractvalue %dx.types.CBufRet.f32 %7885, 1
  %7888 = extractvalue %dx.types.CBufRet.f32 %7885, 2
  %7889 = extractvalue %dx.types.CBufRet.f32 %7885, 3
  %7890 = fmul fast float %7876, %6770
  %7891 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %7877, float %7890)  ; FMad(a,b,c)
  %7892 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %7878, float %7891)  ; FMad(a,b,c)
  %7893 = fadd fast float %7892, %7879
  %7894 = fmul fast float %7881, %6770
  %7895 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %7882, float %7894)  ; FMad(a,b,c)
  %7896 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %7883, float %7895)  ; FMad(a,b,c)
  %7897 = fadd fast float %7896, %7884
  %7898 = fmul fast float %7886, %6770
  %7899 = call float @dx.op.tertiary.f32(i32 46, float %6771, float %7887, float %7898)  ; FMad(a,b,c)
  %7900 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %7888, float %7899)  ; FMad(a,b,c)
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.CBufRet.f32 %7901, 1
  %7904 = extractvalue %dx.types.CBufRet.f32 %7901, 3
  %7905 = fmul fast float %7904, %7893
  %7906 = fmul fast float %7904, %7897
  %7907 = fadd fast float %7905, %7902
  %7908 = fadd fast float %7906, %7903
  %7909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7909, 0
  %7911 = extractvalue %dx.types.CBufRet.f32 %7909, 1
  %7912 = fsub fast float %7907, %7910
  %7913 = fsub fast float %7908, %7911
  %7914 = fcmp fast olt float %7912, 0.000000e+00
  %7915 = fcmp fast olt float %7913, 0.000000e+00
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 0
  %7918 = extractvalue %dx.types.CBufRet.f32 %7916, 1
  %7919 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7920 = extractvalue %dx.types.CBufRet.f32 %7916, 3
  %7921 = select i1 %7914, float %7917, float %7919
  %7922 = select i1 %7915, float %7918, float %7920
  %7923 = fmul fast float %7921, %7912
  %7924 = fmul fast float %7922, %7913
  %7925 = call float @dx.op.unary.f32(i32 6, float %7923)  ; FAbs(value)
  %7926 = call float @dx.op.unary.f32(i32 6, float %7924)  ; FAbs(value)
  %7927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.f32 %7927, 0
  %7929 = call float @dx.op.binary.f32(i32 35, float %7925, float %7926)  ; FMax(a,b)
  %7930 = fsub fast float %7928, %7929
  %7931 = call float @dx.op.unary.f32(i32 7, float %7930)  ; Saturate(value)
  %7932 = fcmp fast ogt float %7931, 0.000000e+00
  br i1 %7932, label %7933, label %7974, !dx.controlflow.hints !130

; <label>:7933                                    ; preds = %7874
  %7934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7907, float %7908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7935 = extractvalue %dx.types.ResRet.f32 %7934, 1
  %7936 = fcmp fast ogt float %7935, 0.000000e+00
  br i1 %7936, label %7937, label %7969

; <label>:7937                                    ; preds = %7933
  %7938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7907, float %7908, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7939 = extractvalue %dx.types.ResRet.f32 %7938, 0
  %7940 = extractvalue %dx.types.ResRet.f32 %7938, 1
  %7941 = extractvalue %dx.types.ResRet.f32 %7938, 2
  %7942 = extractvalue %dx.types.ResRet.f32 %7938, 3
  %7943 = fsub fast float 1.000000e+00, %7889
  %7944 = fsub fast float %7943, %7900
  %7945 = fmul fast float %7944, 0x400921FB60000000
  %7946 = fadd fast float %7945, 0x3FF921FB60000000
  %7947 = call float @dx.op.unary.f32(i32 13, float %7946)  ; Sin(value)
  %7948 = fadd fast float %7947, -1.000000e+00
  %7949 = fmul fast float %7948, 0x3FD45F3060000000
  %7950 = fmul fast float %7944, 0x401921FB60000000
  %7951 = fadd fast float %7950, 0x400921FB60000000
  %7952 = call float @dx.op.unary.f32(i32 13, float %7951)  ; Sin(value)
  %7953 = fadd fast float %7952, 0x3E7777A5C0000000
  %7954 = fmul fast float %7953, 0x3FC45F3060000000
  %7955 = fmul fast float %7944, 0x4022D97C80000000
  %7956 = fadd fast float %7955, 0x4012D97C80000000
  %7957 = call float @dx.op.unary.f32(i32 13, float %7956)  ; Sin(value)
  %7958 = fadd fast float %7957, 1.000000e+00
  %7959 = fmul fast float %7958, 0x3FBB2995E0000000
  %7960 = fmul fast float %7944, 0x402921FB60000000
  %7961 = fadd fast float %7960, 0x401921FB60000000
  %7962 = call float @dx.op.unary.f32(i32 13, float %7961)  ; Sin(value)
  %7963 = fadd fast float %7962, 0xBE8777A5C0000000
  %7964 = fmul fast float %7963, 0x3FB45F3060000000
  %7965 = call float @dx.op.dot4.f32(i32 56, float %7939, float %7940, float %7941, float %7942, float %7949, float %7954, float %7959, float %7964)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7966 = fmul fast float %7965, 0xBFF7154760000000
  %7967 = call float @dx.op.unary.f32(i32 21, float %7966)  ; Exp(value)
  %7968 = call float @dx.op.unary.f32(i32 7, float %7967)  ; Saturate(value)
  br label %7969

; <label>:7969                                    ; preds = %7937, %7933
  %7970 = phi float [ %7968, %7937 ], [ 1.000000e+00, %7933 ]
  %7971 = fadd fast float %7970, -1.000000e+00
  %7972 = fmul fast float %7971, %7931
  %7973 = fadd fast float %7972, 1.000000e+00
  br label %7974

; <label>:7974                                    ; preds = %7969, %7874
  %7975 = phi float [ %7973, %7969 ], [ 1.000000e+00, %7874 ]
  %7976 = fmul fast float %7975, %7870
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 0
  %7979 = extractvalue %dx.types.CBufRet.f32 %7977, 1
  %7980 = extractvalue %dx.types.CBufRet.f32 %7977, 2
  %7981 = fadd fast float %7978, %170
  %7982 = fadd fast float %7979, %171
  %7983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7984 = extractvalue %dx.types.CBufRet.f32 %7983, 1
  %7985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7986 = extractvalue %dx.types.CBufRet.f32 %7985, 0
  %7987 = extractvalue %dx.types.CBufRet.f32 %7985, 1
  %7988 = extractvalue %dx.types.CBufRet.f32 %7985, 2
  %7989 = fsub fast float -0.000000e+00, %7981
  %7990 = fsub fast float -0.000000e+00, %7982
  %7991 = fsub fast float %5816, %7980
  %7992 = fadd fast float %7991, %7984
  %7993 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7989, float %7990, float %7992)  ; Dot3(ax,ay,az,bx,by,bz)
  %7994 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7986, float %7987, float %7988)  ; Dot3(ax,ay,az,bx,by,bz)
  %7995 = fdiv fast float 1.000000e+00, %7994
  %7996 = fmul fast float %7995, %7993
  %7997 = fmul fast float %7986, %7996
  %7998 = fmul fast float %7987, %7996
  %7999 = fadd fast float %7997, %7981
  %8000 = fadd fast float %7998, %7982
  %8001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8002 = extractvalue %dx.types.CBufRet.f32 %8001, 0
  %8003 = extractvalue %dx.types.CBufRet.f32 %8001, 1
  %8004 = fsub fast float %7999, %8002
  %8005 = fsub fast float %8000, %8003
  %8006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8006, 2
  %8008 = extractvalue %dx.types.CBufRet.f32 %8006, 3
  %8009 = fmul fast float %8004, %8007
  %8010 = fmul fast float %8005, %8008
  %8011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.i32 %8011, 3
  %8013 = icmp eq i32 %8012, 0
  br i1 %8013, label %8019, label %8014

; <label>:8014                                    ; preds = %7974
  %8015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %8009, float %8010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8016 = extractvalue %dx.types.ResRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.ResRet.f32 %8015, 1
  %8018 = extractvalue %dx.types.ResRet.f32 %8015, 2
  br label %8024

; <label>:8019                                    ; preds = %7974
  %8020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %8009, float %8010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8021 = extractvalue %dx.types.ResRet.f32 %8020, 0
  %8022 = extractvalue %dx.types.ResRet.f32 %8020, 1
  %8023 = extractvalue %dx.types.ResRet.f32 %8020, 2
  br label %8024

; <label>:8024                                    ; preds = %8019, %8014
  %8025 = phi float [ %8016, %8014 ], [ %8021, %8019 ]
  %8026 = phi float [ %8017, %8014 ], [ %8022, %8019 ]
  %8027 = phi float [ %8018, %8014 ], [ %8023, %8019 ]
  %8028 = extractvalue %dx.types.CBufRet.f32 %7983, 2
  %8029 = fmul fast float %8028, %8025
  %8030 = extractvalue %dx.types.CBufRet.f32 %7983, 0
  %8031 = fsub fast float %7996, %8030
  %8032 = fsub fast float %8031, %8029
  %8033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8032)  ; FMax(a,b)
  %8034 = fmul fast float %8033, %8026
  %8035 = call float @dx.op.binary.f32(i32 36, float %8027, float %8034)  ; FMin(a,b)
  %8036 = fmul fast float %8035, 0xBFF7154760000000
  %8037 = call float @dx.op.unary.f32(i32 21, float %8036)  ; Exp(value)
  %8038 = fmul fast float %7976, %8037
  br label %8039

; <label>:8039                                    ; preds = %8024, %7869
  %8040 = phi float [ %8038, %8024 ], [ %7870, %7869 ]
  %8041 = call float @dx.op.binary.f32(i32 36, float %8040, float %8040)  ; FMin(a,b)
  %8042 = call float @dx.op.binary.f32(i32 36, float %8040, float %8041)  ; FMin(a,b)
  %8043 = fcmp fast ogt float %8042, 0.000000e+00
  br i1 %8043, label %8044, label %8427, !dx.controlflow.hints !131

; <label>:8044                                    ; preds = %8039
  %8045 = fmul fast float %8040, %6762
  %8046 = fmul fast float %8040, %6763
  %8047 = fmul fast float %8040, %6764
  %8048 = fsub fast float %172, %5607
  %8049 = fcmp fast ogt float %8048, 0.000000e+00
  %8050 = fmul fast float %6751, 5.120000e+02
  %8051 = fmul fast float %6752, 5.120000e+02
  %8052 = fmul fast float %6753, 5.120000e+02
  %8053 = fadd fast float %8052, %172
  %8054 = fsub fast float %5607, %8053
  %8055 = fmul fast float %8054, 2.000000e+00
  %8056 = fadd fast float %8055, %8053
  %8057 = select i1 %8049, float %8056, float %8053
  %8058 = fsub fast float %8057, %172
  %8059 = call float @dx.op.dot3.f32(i32 55, float %8050, float %8051, float %8058, float %8050, float %8051, float %8058)  ; Dot3(ax,ay,az,bx,by,bz)
  %8060 = call float @dx.op.unary.f32(i32 25, float %8059)  ; Rsqrt(value)
  %8061 = fmul fast float %8060, %8050
  %8062 = fmul fast float %8060, %8051
  %8063 = fmul fast float %8060, %8058
  %8064 = fsub fast float %5607, %172
  %8065 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8064)  ; Dot3(ax,ay,az,bx,by,bz)
  %8066 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8061, float %8062, float %8063)  ; Dot3(ax,ay,az,bx,by,bz)
  %8067 = fdiv fast float 1.000000e+00, %8066
  %8068 = fmul fast float %8067, %8065
  %8069 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8048, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8070 = fcmp fast ogt float %8069, 0.000000e+00
  %8071 = fcmp fast olt float %8069, 0.000000e+00
  %8072 = zext i1 %8070 to i32
  %8073 = zext i1 %8071 to i32
  %8074 = sub nsw i32 %8072, %8073
  %8075 = sitofp i32 %8074 to float
  %8076 = fsub fast float %8057, %5607
  %8077 = call float @dx.op.dot3.f32(i32 55, float %8050, float %8051, float %8076, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8078 = fcmp fast ogt float %8077, 0.000000e+00
  %8079 = fcmp fast olt float %8077, 0.000000e+00
  %8080 = zext i1 %8078 to i32
  %8081 = zext i1 %8079 to i32
  %8082 = sub nsw i32 %8080, %8081
  %8083 = sitofp i32 %8082 to float
  %8084 = fcmp fast une float %8075, %8083
  br i1 %8084, label %8085, label %8095

; <label>:8085                                    ; preds = %8044
  %8086 = fmul fast float %8068, %8063
  %8087 = fmul fast float %8068, %8062
  %8088 = fmul fast float %8068, %8061
  %8089 = fmul fast float %8088, %8088
  %8090 = fmul fast float %8087, %8087
  %8091 = fadd fast float %8089, %8090
  %8092 = fmul fast float %8086, %8086
  %8093 = fadd fast float %8091, %8092
  %8094 = call float @dx.op.unary.f32(i32 24, float %8093)  ; Sqrt(value)
  br label %8105

; <label>:8095                                    ; preds = %8044
  %8096 = icmp slt i32 %8074, 0
  br i1 %8096, label %8097, label %8105

; <label>:8097                                    ; preds = %8095
  %8098 = fsub fast float %172, %8057
  %8099 = fmul fast float %8050, %8050
  %8100 = fmul fast float %8051, %8051
  %8101 = fadd fast float %8099, %8100
  %8102 = fmul fast float %8098, %8098
  %8103 = fadd fast float %8101, %8102
  %8104 = call float @dx.op.unary.f32(i32 24, float %8103)  ; Sqrt(value)
  br label %8105

; <label>:8105                                    ; preds = %8097, %8095, %8085
  %8106 = phi float [ %8094, %8085 ], [ %8104, %8097 ], [ 0.000000e+00, %8095 ]
  %8107 = fsub fast float -0.000000e+00, %8106
  %8108 = select i1 %8049, float -0.000000e+00, float %8107
  %8109 = fmul fast float %5604, 0x3FF7154760000000
  %8110 = fmul fast float %8109, %8108
  %8111 = fmul fast float %5605, 0x3FF7154760000000
  %8112 = fmul fast float %8111, %8108
  %8113 = fmul fast float %5606, 0x3FF7154760000000
  %8114 = fmul fast float %8113, %8108
  %8115 = call float @dx.op.unary.f32(i32 21, float %8110)  ; Exp(value)
  %8116 = call float @dx.op.unary.f32(i32 21, float %8112)  ; Exp(value)
  %8117 = call float @dx.op.unary.f32(i32 21, float %8114)  ; Exp(value)
  %8118 = call float @dx.op.unary.f32(i32 7, float %8115)  ; Saturate(value)
  %8119 = call float @dx.op.unary.f32(i32 7, float %8116)  ; Saturate(value)
  %8120 = call float @dx.op.unary.f32(i32 7, float %8117)  ; Saturate(value)
  %8121 = fmul fast float %8045, %8118
  %8122 = fmul fast float %8046, %8119
  %8123 = fmul fast float %8047, %8120
  %8124 = fsub fast float %6751, %5804
  %8125 = fsub fast float %6752, %5803
  %8126 = fsub fast float %6753, %5802
  %8127 = call float @dx.op.dot3.f32(i32 55, float %8124, float %8125, float %8126, float %8124, float %8125, float %8126)  ; Dot3(ax,ay,az,bx,by,bz)
  %8128 = call float @dx.op.unary.f32(i32 25, float %8127)  ; Rsqrt(value)
  %8129 = fmul fast float %8128, %8124
  %8130 = fmul fast float %8128, %8125
  %8131 = fmul fast float %8128, %8126
  %8132 = call float @dx.op.dot3.f32(i32 55, float %6751, float %6752, float %6753, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %8133 = call float @dx.op.dot3.f32(i32 55, float %5801, float %5800, float %5799, float %8129, float %8130, float %8131)  ; Dot3(ax,ay,az,bx,by,bz)
  %8134 = call float @dx.op.unary.f32(i32 7, float %8132)  ; Saturate(value)
  %8135 = fmul fast float %8134, %8134
  %8136 = fmul fast float %8135, %5844
  %8137 = call float @dx.op.unary.f32(i32 7, float %8136)  ; Saturate(value)
  %8138 = fmul fast float %8137, %8134
  %8139 = call float @dx.op.dot3.f32(i32 55, float %5811, float %5812, float %5813, float %8129, float %8130, float %8131)  ; Dot3(ax,ay,az,bx,by,bz)
  %8140 = fmul fast float %8139, %8139
  %8141 = call float @dx.op.unary.f32(i32 6, float %8132)  ; FAbs(value)
  %8142 = fsub fast float 1.000000e+00, %5837
  %8143 = fmul fast float %5819, %5819
  %8144 = fmul fast float %8143, %8142
  %8145 = fadd fast float %8144, %5837
  %8146 = bitcast float %8145 to i32
  %8147 = ashr i32 %8146, 1
  %8148 = add nsw i32 %8147, 532487669
  %8149 = bitcast i32 %8148 to float
  %8150 = fadd fast float %8149, %5819
  %8151 = fmul fast float %5837, %8140
  %8152 = fsub fast float 1.000000e+00, %8140
  %8153 = fadd fast float %8152, %8151
  %8154 = fmul fast float %8141, %8141
  %8155 = fmul fast float %8154, %8142
  %8156 = fadd fast float %8155, %5837
  %8157 = bitcast float %8156 to i32
  %8158 = ashr i32 %8157, 1
  %8159 = add nsw i32 %8158, 532487669
  %8160 = bitcast i32 %8159 to float
  %8161 = fadd fast float %8160, %8141
  %8162 = fmul fast float %8153, %8153
  %8163 = fmul fast float %8162, %8150
  %8164 = fmul fast float %8163, %8161
  %8165 = fdiv fast float 0x3FF0A00000000000, %8164
  %8166 = fmul fast float %8165, %5837
  %8167 = fmul fast float %6090, 0x3FF9999980000000
  %8168 = fsub fast float 5.000000e+00, %8167
  %8169 = call float @dx.op.unary.f32(i32 6, float %8133)  ; FAbs(value)
  %8170 = fsub fast float 1.000000e+00, %8169
  %8171 = fmul fast float %6090, 0x41D9660740000000
  %8172 = fadd fast float %8171, 0xC1EFBF8940000000
  %8173 = bitcast float %8170 to i32
  %8174 = sitofp i32 %8173 to float
  %8175 = fmul fast float %8174, %8168
  %8176 = fadd fast float %8172, %8175
  %8177 = fptosi float %8176 to i32
  %8178 = bitcast i32 %8177 to float
  %8179 = fsub fast float 1.000000e+00, %5808
  %8180 = fsub fast float 1.000000e+00, %5809
  %8181 = fsub fast float 1.000000e+00, %5817
  %8182 = fmul fast float %8178, %8179
  %8183 = fmul fast float %8178, %8180
  %8184 = fmul fast float %8178, %8181
  %8185 = fadd fast float %8182, %5808
  %8186 = fadd fast float %8183, %5809
  %8187 = fadd fast float %8184, %5817
  br i1 %6113, label %8188, label %8211

; <label>:8188                                    ; preds = %8105
  %8189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5173, float %8169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.ResRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.ResRet.f32 %8189, 2
  %8193 = fadd fast float %8190, -5.000000e-01
  %8194 = fadd fast float %8191, -5.000000e-01
  %8195 = fadd fast float %8192, -5.000000e-01
  %8196 = fmul fast float %5808, 4.000000e+00
  %8197 = fmul fast float %8196, %8179
  %8198 = fmul fast float %8197, %8193
  %8199 = fmul fast float %5809, 4.000000e+00
  %8200 = fmul fast float %8199, %8180
  %8201 = fmul fast float %8200, %8194
  %8202 = fmul fast float %5817, 4.000000e+00
  %8203 = fmul fast float %8202, %8181
  %8204 = fmul fast float %8203, %8195
  %8205 = fadd fast float %8198, %8185
  %8206 = fadd fast float %8201, %8186
  %8207 = fadd fast float %8204, %8187
  %8208 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8209 = call float @dx.op.unary.f32(i32 7, float %8206)  ; Saturate(value)
  %8210 = call float @dx.op.unary.f32(i32 7, float %8207)  ; Saturate(value)
  br label %8211

; <label>:8211                                    ; preds = %8188, %8105
  %8212 = phi float [ %8208, %8188 ], [ %8185, %8105 ]
  %8213 = phi float [ %8209, %8188 ], [ %8186, %8105 ]
  %8214 = phi float [ %8210, %8188 ], [ %8187, %8105 ]
  %8215 = fmul fast float %8132, 9.843750e-01
  %8216 = fadd fast float %8215, 7.812500e-03
  %8217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8216, float %6094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8218 = extractvalue %dx.types.ResRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.ResRet.f32 %8217, 1
  %8220 = extractvalue %dx.types.ResRet.f32 %8217, 2
  %8221 = extractvalue %dx.types.ResRet.f32 %8217, 3
  %8222 = fsub fast float %8220, %8218
  %8223 = fsub fast float %8221, %8219
  %8224 = fmul fast float %8222, %6100
  %8225 = fmul fast float %8223, %6100
  %8226 = fadd fast float %8224, %8218
  %8227 = fadd fast float %8225, %8219
  %8228 = fmul fast float %8226, %5808
  %8229 = fmul fast float %8226, %5809
  %8230 = fmul fast float %8226, %5817
  %8231 = fadd fast float %8228, %8227
  %8232 = fadd fast float %8229, %8227
  %8233 = fadd fast float %8230, %8227
  br i1 %6113, label %8234, label %8257

; <label>:8234                                    ; preds = %8211
  %8235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5173, float %8132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8236 = extractvalue %dx.types.ResRet.f32 %8235, 0
  %8237 = extractvalue %dx.types.ResRet.f32 %8235, 1
  %8238 = extractvalue %dx.types.ResRet.f32 %8235, 2
  %8239 = fadd fast float %8236, -5.000000e-01
  %8240 = fadd fast float %8237, -5.000000e-01
  %8241 = fadd fast float %8238, -5.000000e-01
  %8242 = fmul fast float %5808, 4.000000e+00
  %8243 = fmul fast float %8242, %8179
  %8244 = fmul fast float %8243, %8239
  %8245 = fmul fast float %5809, 4.000000e+00
  %8246 = fmul fast float %8245, %8180
  %8247 = fmul fast float %8246, %8240
  %8248 = fmul fast float %5817, 4.000000e+00
  %8249 = fmul fast float %8248, %8181
  %8250 = fmul fast float %8249, %8241
  %8251 = fadd fast float %8244, %8231
  %8252 = fadd fast float %8247, %8232
  %8253 = fadd fast float %8250, %8233
  %8254 = call float @dx.op.unary.f32(i32 7, float %8251)  ; Saturate(value)
  %8255 = call float @dx.op.unary.f32(i32 7, float %8252)  ; Saturate(value)
  %8256 = call float @dx.op.unary.f32(i32 7, float %8253)  ; Saturate(value)
  br label %8257

; <label>:8257                                    ; preds = %8234, %8211
  %8258 = phi float [ %8254, %8234 ], [ %8231, %8211 ]
  %8259 = phi float [ %8255, %8234 ], [ %8232, %8211 ]
  %8260 = phi float [ %8256, %8234 ], [ %8233, %8211 ]
  %8261 = call float @dx.op.binary.f32(i32 35, float %8259, float %8260)  ; FMax(a,b)
  %8262 = call float @dx.op.binary.f32(i32 35, float %8258, float %8261)  ; FMax(a,b)
  %8263 = fsub fast float 1.000000e+00, %8262
  %8264 = call float @dx.op.binary.f32(i32 35, float %8141, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8265 = fdiv fast float %4522, %8264
  %8266 = fmul fast float %6660, %8265
  %8267 = fmul fast float %6662, %8265
  %8268 = fmul fast float %6664, %8265
  %8269 = call float @dx.op.unary.f32(i32 21, float %8266)  ; Exp(value)
  %8270 = call float @dx.op.unary.f32(i32 21, float %8267)  ; Exp(value)
  %8271 = call float @dx.op.unary.f32(i32 21, float %8268)  ; Exp(value)
  %8272 = call float @dx.op.unary.f32(i32 7, float %8269)  ; Saturate(value)
  %8273 = call float @dx.op.unary.f32(i32 7, float %8270)  ; Saturate(value)
  %8274 = call float @dx.op.unary.f32(i32 7, float %8271)  ; Saturate(value)
  %8275 = select i1 %6657, float %8272, float 0.000000e+00
  %8276 = select i1 %6658, float %8273, float 0.000000e+00
  %8277 = select i1 %6659, float %8274, float 0.000000e+00
  %8278 = fsub fast float -0.000000e+00, %5811
  %8279 = fsub fast float -0.000000e+00, %5812
  %8280 = fsub fast float -0.000000e+00, %5813
  %8281 = call float @dx.op.dot3.f32(i32 55, float %6751, float %6752, float %6753, float %8278, float %8279, float %8280)  ; Dot3(ax,ay,az,bx,by,bz)
  %8282 = call float @dx.op.unary.f32(i32 7, float %8281)  ; Saturate(value)
  %8283 = fmul fast float %8282, 9.843750e-01
  %8284 = fadd fast float %8283, 7.812500e-03
  %8285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8284, float %6094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8286 = extractvalue %dx.types.ResRet.f32 %8285, 0
  %8287 = extractvalue %dx.types.ResRet.f32 %8285, 1
  %8288 = extractvalue %dx.types.ResRet.f32 %8285, 2
  %8289 = extractvalue %dx.types.ResRet.f32 %8285, 3
  %8290 = fsub fast float %8288, %8286
  %8291 = fsub fast float %8289, %8287
  %8292 = fmul fast float %8290, %6100
  %8293 = fmul fast float %8291, %6100
  %8294 = fadd fast float %8292, %8286
  %8295 = fadd fast float %8293, %8287
  %8296 = fmul fast float %8294, %5808
  %8297 = fmul fast float %8294, %5809
  %8298 = fmul fast float %8294, %5817
  %8299 = fadd fast float %8296, %8295
  %8300 = fadd fast float %8297, %8295
  %8301 = fadd fast float %8298, %8295
  br i1 %6113, label %8302, label %8325

; <label>:8302                                    ; preds = %8257
  %8303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5173, float %8282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8304 = extractvalue %dx.types.ResRet.f32 %8303, 0
  %8305 = extractvalue %dx.types.ResRet.f32 %8303, 1
  %8306 = extractvalue %dx.types.ResRet.f32 %8303, 2
  %8307 = fadd fast float %8304, -5.000000e-01
  %8308 = fadd fast float %8305, -5.000000e-01
  %8309 = fadd fast float %8306, -5.000000e-01
  %8310 = fmul fast float %5808, 4.000000e+00
  %8311 = fmul fast float %8310, %8179
  %8312 = fmul fast float %8311, %8307
  %8313 = fmul fast float %5809, 4.000000e+00
  %8314 = fmul fast float %8313, %8180
  %8315 = fmul fast float %8314, %8308
  %8316 = fmul fast float %5817, 4.000000e+00
  %8317 = fmul fast float %8316, %8181
  %8318 = fmul fast float %8317, %8309
  %8319 = fadd fast float %8312, %8299
  %8320 = fadd fast float %8315, %8300
  %8321 = fadd fast float %8318, %8301
  %8322 = call float @dx.op.unary.f32(i32 7, float %8319)  ; Saturate(value)
  %8323 = call float @dx.op.unary.f32(i32 7, float %8320)  ; Saturate(value)
  %8324 = call float @dx.op.unary.f32(i32 7, float %8321)  ; Saturate(value)
  br label %8325

; <label>:8325                                    ; preds = %8302, %8257
  %8326 = phi float [ %8322, %8302 ], [ %8299, %8257 ]
  %8327 = phi float [ %8323, %8302 ], [ %8300, %8257 ]
  %8328 = phi float [ %8324, %8302 ], [ %8301, %8257 ]
  %8329 = call float @dx.op.binary.f32(i32 35, float %8327, float %8328)  ; FMax(a,b)
  %8330 = call float @dx.op.binary.f32(i32 35, float %8326, float %8329)  ; FMax(a,b)
  %8331 = fsub fast float 1.000000e+00, %8330
  %8332 = fmul fast float %5834, %6724
  %8333 = fadd fast float %6726, %8332
  %8334 = call float @dx.op.unary.f32(i32 7, float %8333)  ; Saturate(value)
  %8335 = fsub fast float %6751, %5825
  %8336 = fsub fast float %6752, %5826
  %8337 = fsub fast float %6753, %5827
  %8338 = call float @dx.op.dot3.f32(i32 55, float %8335, float %8336, float %8337, float %8335, float %8336, float %8337)  ; Dot3(ax,ay,az,bx,by,bz)
  %8339 = call float @dx.op.unary.f32(i32 25, float %8338)  ; Rsqrt(value)
  %8340 = fmul fast float %8339, %8335
  %8341 = fmul fast float %8339, %8336
  %8342 = fmul fast float %8339, %8337
  %8343 = call float @dx.op.dot3.f32(i32 55, float %8278, float %8279, float %8280, float %8340, float %8341, float %8342)  ; Dot3(ax,ay,az,bx,by,bz)
  %8344 = fmul fast float %8343, %8343
  %8345 = call float @dx.op.unary.f32(i32 6, float %8282)  ; FAbs(value)
  %8346 = call float @dx.op.binary.f32(i32 35, float %8334, float 0x3F847AE140000000)  ; FMax(a,b)
  %8347 = fmul fast float %8346, %8346
  %8348 = fmul fast float %8347, %8347
  %8349 = fsub fast float 1.000000e+00, %8348
  %8350 = fmul fast float %8143, %8349
  %8351 = fadd fast float %8350, %8348
  %8352 = bitcast float %8351 to i32
  %8353 = ashr i32 %8352, 1
  %8354 = add nsw i32 %8353, 532487669
  %8355 = bitcast i32 %8354 to float
  %8356 = fadd fast float %8355, %5819
  %8357 = fmul fast float %8348, %8344
  %8358 = fsub fast float 1.000000e+00, %8344
  %8359 = fadd fast float %8358, %8357
  %8360 = fmul fast float %8345, %8345
  %8361 = fmul fast float %8360, %8349
  %8362 = fadd fast float %8361, %8348
  %8363 = bitcast float %8362 to i32
  %8364 = ashr i32 %8363, 1
  %8365 = add nsw i32 %8364, 532487669
  %8366 = bitcast i32 %8365 to float
  %8367 = fadd fast float %8366, %8345
  %8368 = fmul fast float %8359, %8359
  %8369 = fmul fast float %8368, %8356
  %8370 = fmul fast float %8369, %8367
  %8371 = fdiv fast float 0x3FF0A00000000000, %8370
  %8372 = fmul fast float %8371, %8348
  %8373 = fmul fast float %8282, %8275
  %8374 = fmul fast float %8282, %8276
  %8375 = fmul fast float %8282, %8277
  %8376 = fmul fast float %8373, %8331
  %8377 = fmul fast float %8376, %8372
  %8378 = fmul fast float %8374, %8331
  %8379 = fmul fast float %8378, %8372
  %8380 = fmul fast float %8375, %8331
  %8381 = fmul fast float %8380, %8372
  %8382 = fmul fast float %8212, %8166
  %8383 = fmul fast float %8213, %8166
  %8384 = fmul fast float %8214, %8166
  %8385 = fsub fast float 1.000000e+00, %8133
  %8386 = bitcast float %8385 to i32
  %8387 = sitofp i32 %8386 to float
  %8388 = fmul fast float %8387, 5.000000e+00
  %8389 = fadd fast float %8388, 0xC1EFBF8940000000
  %8390 = fptosi float %8389 to i32
  %8391 = bitcast i32 %8390 to float
  %8392 = fmul fast float %8391, %5174
  %8393 = fmul fast float %8263, %8392
  %8394 = fmul fast float %8393, %6652
  %8395 = fmul fast float %8393, %6653
  %8396 = fmul fast float %8393, %6654
  %8397 = fadd fast float %8394, %8382
  %8398 = fadd fast float %8395, %8383
  %8399 = fadd fast float %8396, %8384
  %8400 = fmul fast float %8397, %8138
  %8401 = fmul fast float %8398, %8138
  %8402 = fmul fast float %8399, %8138
  %8403 = fmul fast float %8138, %8121
  %8404 = fmul fast float %8403, %8263
  %8405 = fmul fast float %8138, %8122
  %8406 = fmul fast float %8405, %8263
  %8407 = fmul fast float %8138, %8123
  %8408 = fmul fast float %8407, %8263
  %8409 = fadd fast float %8400, %8377
  %8410 = fadd fast float %8401, %8379
  %8411 = fadd fast float %8402, %8381
  %8412 = fmul fast float %8409, %8121
  %8413 = fmul fast float %8410, %8122
  %8414 = fmul fast float %8411, %8123
  %8415 = fadd fast float %8404, %6741
  %8416 = fmul fast float %8415, %5170
  %8417 = fadd fast float %8406, %6743
  %8418 = fmul fast float %8417, %5170
  %8419 = fadd fast float %8408, %6745
  %8420 = fmul fast float %8419, %5170
  %8421 = fadd fast float %8412, %6705
  %8422 = fmul fast float %8421, %5170
  %8423 = fadd fast float %8413, %6708
  %8424 = fmul fast float %8423, %5170
  %8425 = fadd fast float %8414, %6711
  %8426 = fmul fast float %8425, %5170
  br label %8427

; <label>:8427                                    ; preds = %8325, %8039, %6635
  %8428 = phi float [ %6706, %6635 ], [ %6706, %8039 ], [ %8422, %8325 ]
  %8429 = phi float [ %6709, %6635 ], [ %6709, %8039 ], [ %8424, %8325 ]
  %8430 = phi float [ %6712, %6635 ], [ %6712, %8039 ], [ %8426, %8325 ]
  %8431 = phi float [ %6742, %6635 ], [ %6742, %8039 ], [ %8416, %8325 ]
  %8432 = phi float [ %6744, %6635 ], [ %6744, %8039 ], [ %8418, %8325 ]
  %8433 = phi float [ %6746, %6635 ], [ %6746, %8039 ], [ %8420, %8325 ]
  %8434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.i32 %8434, 0
  %8436 = icmp eq i32 %8435, 0
  br i1 %8436, label %9254, label %8437

; <label>:8437                                    ; preds = %8427
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 2
  %8440 = extractvalue %dx.types.CBufRet.f32 %8438, 3
  %8441 = fmul fast float %8439, %111
  %8442 = fmul fast float %8440, %112
  %8443 = fptoui float %8441 to i32
  %8444 = fptoui float %8442 to i32
  %8445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.f32 %8445, 0
  %8447 = extractvalue %dx.types.CBufRet.f32 %8445, 2
  %8448 = extractvalue %dx.types.CBufRet.f32 %8445, 3
  %8449 = fadd fast float %99, -4.000000e+00
  %8450 = call float @dx.op.binary.f32(i32 35, float %8449, float 0.000000e+00)  ; FMax(a,b)
  %8451 = fadd fast float %8450, %8446
  %8452 = fmul fast float %8451, %8447
  %8453 = call float @dx.op.unary.f32(i32 23, float %8452)  ; Log(value)
  %8454 = fmul fast float %8453, %8448
  %8455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8456 = extractvalue %dx.types.CBufRet.f32 %8455, 2
  %8457 = fmul fast float %8454, %8456
  %8458 = call float @dx.op.unary.f32(i32 7, float %8457)  ; Saturate(value)
  %8459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.i32 %8459, 1
  %8461 = add i32 %8460, -1
  %8462 = uitofp i32 %8460 to float
  %8463 = fmul fast float %8462, %8458
  %8464 = fptoui float %8463 to i32
  %8465 = call i32 @dx.op.binary.i32(i32 40, i32 %8464, i32 %8461)  ; UMin(a,b)
  %8466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.i32 %8466, 2
  %8468 = extractvalue %dx.types.CBufRet.i32 %8466, 3
  %8469 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8444, i32 %8467, i32 %8443)  ; UMad(a,b,c)
  %8470 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8465, i32 %8468, i32 %8469)  ; UMad(a,b,c)
  %8471 = add nsw i32 %8435, -1
  %8472 = call i32 @dx.op.binary.i32(i32 37, i32 %8471, i32 0)  ; IMax(a,b)
  %8473 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %8474 = fptoui float %8473 to i32
  %8475 = lshr i32 %8474, 5
  %8476 = call i32 @dx.op.binary.i32(i32 40, i32 %8475, i32 8191)  ; UMin(a,b)
  %8477 = shl i32 %8476, 2
  %8478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %8477, i32 undef)  ; BufferLoad(srv,index,wot)
  %8479 = extractvalue %dx.types.ResRet.i32 %8478, 0
  %8480 = lshr i32 %8479, 16
  %8481 = and i32 %8479, 65535
  %8482 = lshr i32 %8479, 21
  %8483 = lshr i32 %8481, 5
  %8484 = call i32 @dx.op.binary.i32(i32 40, i32 %8483, i32 %8472)  ; UMin(a,b)
  %8485 = icmp ugt i32 %8482, %8484
  br i1 %8485, label %9254, label %8486

; <label>:8486                                    ; preds = %8437
  br label %8487

; <label>:8487                                    ; preds = %9244, %8486
  %8488 = phi i32 [ %9251, %9244 ], [ %8482, %8486 ]
  %8489 = phi float [ %9245, %9244 ], [ %8428, %8486 ]
  %8490 = phi float [ %9246, %9244 ], [ %8429, %8486 ]
  %8491 = phi float [ %9247, %9244 ], [ %8430, %8486 ]
  %8492 = phi float [ %9248, %9244 ], [ %8431, %8486 ]
  %8493 = phi float [ %9249, %9244 ], [ %8432, %8486 ]
  %8494 = phi float [ %9250, %9244 ], [ %8433, %8486 ]
  %8495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8496 = extractvalue %dx.types.CBufRet.i32 %8495, 0
  %8497 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8470, i32 %8496, i32 %8488)  ; UMad(a,b,c)
  %8498 = shl i32 %8497, 2
  %8499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %8498, i32 undef)  ; BufferLoad(srv,index,wot)
  %8500 = extractvalue %dx.types.ResRet.i32 %8499, 0
  %8501 = shl i32 %8488, 5
  %8502 = sub nsw i32 %8480, %8501
  %8503 = call i32 @dx.op.binary.i32(i32 37, i32 %8502, i32 0)  ; IMax(a,b)
  %8504 = call i32 @dx.op.binary.i32(i32 38, i32 %8503, i32 31)  ; IMin(a,b)
  %8505 = sub nsw i32 1, %8480
  %8506 = add nsw i32 %8505, %8481
  %8507 = call i32 @dx.op.binary.i32(i32 37, i32 %8506, i32 0)  ; IMax(a,b)
  %8508 = call i32 @dx.op.binary.i32(i32 38, i32 %8507, i32 32)  ; IMin(a,b)
  %8509 = and i32 %8508, 31
  %8510 = shl i32 -1, %8509
  %8511 = xor i32 %8510, -1
  %8512 = and i32 %8504, 31
  %8513 = shl i32 %8511, %8512
  %8514 = icmp eq i32 %8508, 32
  %8515 = select i1 %8514, i32 -1, i32 %8513
  %8516 = and i32 %8515, %8500
  %8517 = icmp eq i32 %8516, 0
  br i1 %8517, label %9244, label %8518

; <label>:8518                                    ; preds = %8487
  br label %8519

; <label>:8519                                    ; preds = %8654, %8518
  %8520 = phi i32 [ %8531, %8654 ], [ %8516, %8518 ]
  %8521 = phi float [ %8655, %8654 ], [ %8489, %8518 ]
  %8522 = phi float [ %8656, %8654 ], [ %8490, %8518 ]
  %8523 = phi float [ %8657, %8654 ], [ %8491, %8518 ]
  %8524 = phi float [ %8658, %8654 ], [ %8492, %8518 ]
  %8525 = phi float [ %8659, %8654 ], [ %8493, %8518 ]
  %8526 = phi float [ %8660, %8654 ], [ %8494, %8518 ]
  %8527 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8520)  ; FirstbitLo(value)
  %8528 = add i32 %8527, %8501
  %8529 = and i32 %8527, 31
  %8530 = shl i32 1, %8529
  %8531 = xor i32 %8530, %8520
  %8532 = mul i32 %8528, 112
  %8533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8532, i32 undef)  ; BufferLoad(srv,index,wot)
  %8534 = extractvalue %dx.types.ResRet.f32 %8533, 0
  %8535 = extractvalue %dx.types.ResRet.f32 %8533, 1
  %8536 = extractvalue %dx.types.ResRet.f32 %8533, 2
  %8537 = or i32 %8532, 12
  %8538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8537, i32 undef)  ; BufferLoad(srv,index,wot)
  %8539 = extractvalue %dx.types.ResRet.f32 %8538, 0
  %8540 = add i32 %8532, 16
  %8541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8540, i32 undef)  ; BufferLoad(srv,index,wot)
  %8542 = extractvalue %dx.types.ResRet.f32 %8541, 0
  %8543 = extractvalue %dx.types.ResRet.f32 %8541, 1
  %8544 = extractvalue %dx.types.ResRet.f32 %8541, 2
  %8545 = add i32 %8532, 28
  %8546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8545, i32 undef)  ; BufferLoad(srv,index,wot)
  %8547 = extractvalue %dx.types.ResRet.i32 %8546, 0
  %8548 = add i32 %8532, 44
  %8549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8548, i32 undef)  ; BufferLoad(srv,index,wot)
  %8550 = extractvalue %dx.types.ResRet.f32 %8549, 0
  %8551 = add i32 %8532, 48
  %8552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8551, i32 undef)  ; BufferLoad(srv,index,wot)
  %8553 = extractvalue %dx.types.ResRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.ResRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.ResRet.f32 %8552, 2
  %8556 = extractvalue %dx.types.ResRet.f32 %8552, 3
  %8557 = add i32 %8532, 64
  %8558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8557, i32 undef)  ; BufferLoad(srv,index,wot)
  %8559 = extractvalue %dx.types.ResRet.f32 %8558, 0
  %8560 = extractvalue %dx.types.ResRet.f32 %8558, 1
  %8561 = extractvalue %dx.types.ResRet.f32 %8558, 2
  %8562 = extractvalue %dx.types.ResRet.f32 %8558, 3
  %8563 = add i32 %8532, 80
  %8564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8563, i32 undef)  ; BufferLoad(srv,index,wot)
  %8565 = extractvalue %dx.types.ResRet.f32 %8564, 1
  %8566 = extractvalue %dx.types.ResRet.f32 %8564, 2
  %8567 = add i32 %8532, 92
  %8568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8567, i32 undef)  ; BufferLoad(srv,index,wot)
  %8569 = extractvalue %dx.types.ResRet.i32 %8568, 0
  %8570 = call float @dx.op.dot3.f32(i32 55, float %8534, float %8535, float %8536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8571 = select i1 %232, float %8565, float %8534
  %8572 = select i1 %232, float %8570, float %8535
  %8573 = select i1 %232, float %8566, float %8536
  %8574 = and i32 %8569, 65535
  %8575 = uitofp i32 %8574 to float
  %8576 = lshr i32 %8569, 16
  %8577 = uitofp i32 %8576 to float
  %8578 = and i32 %8547, 65535
  %8579 = and i32 %8547, 50331648
  %8580 = icmp slt i32 %8547, 0
  %8581 = icmp eq i32 %8579, 33554432
  %8582 = fsub fast float %8553, %170
  %8583 = fsub fast float %8554, %171
  %8584 = fsub fast float %8555, %172
  %8585 = call float @dx.op.dot3.f32(i32 55, float %8582, float %8583, float %8584, float %8582, float %8583, float %8584)  ; Dot3(ax,ay,az,bx,by,bz)
  %8586 = call float @dx.op.unary.f32(i32 24, float %8585)  ; Sqrt(value)
  %8587 = fdiv fast float 1.000000e+00, %8586
  %8588 = fmul fast float %8587, %8582
  %8589 = fmul fast float %8587, %8583
  %8590 = fmul fast float %8587, %8584
  %8591 = fadd fast float %8586, %8539
  %8592 = fdiv fast float 1.000000e+00, %8591
  %8593 = fmul float %8550, %8592
  %8594 = fmul float %8593, %8593
  %8595 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  br i1 %8581, label %8596, label %8617

; <label>:8596                                    ; preds = %8519
  %8597 = fmul fast float %8561, %8542
  %8598 = fmul fast float %8561, %8543
  %8599 = fmul fast float %8561, %8544
  %8600 = fadd fast float %8582, %8597
  %8601 = fadd fast float %8583, %8598
  %8602 = fadd fast float %8584, %8599
  %8603 = call float @dx.op.dot3.f32(i32 55, float %8600, float %8601, float %8602, float %8600, float %8601, float %8602)  ; Dot3(ax,ay,az,bx,by,bz)
  %8604 = call float @dx.op.unary.f32(i32 25, float %8603)  ; Rsqrt(value)
  %8605 = fmul fast float %8604, %8600
  %8606 = fmul fast float %8604, %8601
  %8607 = fmul fast float %8604, %8602
  %8608 = fsub fast float %170, %8553
  %8609 = fsub fast float %171, %8554
  %8610 = fsub fast float %172, %8555
  %8611 = fsub fast float -0.000000e+00, %8608
  %8612 = fsub fast float -0.000000e+00, %8609
  %8613 = fsub fast float -0.000000e+00, %8610
  %8614 = call float @dx.op.dot3.f32(i32 55, float %8611, float %8612, float %8613, float %8542, float %8543, float %8544)  ; Dot3(ax,ay,az,bx,by,bz)
  %8615 = fcmp fast ogt float %8614, 0.000000e+00
  %8616 = uitofp i1 %8615 to float
  br label %8617

; <label>:8617                                    ; preds = %8596, %8519
  %8618 = phi float [ %8616, %8596 ], [ 1.000000e+00, %8519 ]
  %8619 = phi float [ %8605, %8596 ], [ %8588, %8519 ]
  %8620 = phi float [ %8606, %8596 ], [ %8589, %8519 ]
  %8621 = phi float [ %8607, %8596 ], [ %8590, %8519 ]
  %8622 = call float @dx.op.dot3.f32(i32 55, float %8542, float %8543, float %8544, float %8619, float %8620, float %8621)  ; Dot3(ax,ay,az,bx,by,bz)
  %8623 = fmul fast float %8622, %8622
  %8624 = call float @dx.op.unary.f32(i32 7, float %8623)  ; Saturate(value)
  %8625 = fsub fast float 1.000000e+00, %8624
  %8626 = fmul fast float %8625, 5.000000e-01
  %8627 = fcmp fast ogt float %8622, 0.000000e+00
  %8628 = fsub fast float 1.000000e+00, %8626
  %8629 = select i1 %8627, float %8626, float %8628
  %8630 = fmul fast float %8629, %8577
  %8631 = fadd fast float %8630, %8575
  %8632 = fmul fast float %8631, 0x3EF0001000000000
  %8633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8632, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8634 = extractvalue %dx.types.ResRet.f32 %8633, 0
  %8635 = fmul fast float %8622, %8559
  %8636 = fadd fast float %8635, %8560
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = select i1 %8581, float 1.000000e+00, float %8637
  %8639 = select i1 %8581, float %8637, float 1.000000e+00
  %8640 = fmul fast float %8586, %8556
  %8641 = fsub fast float 1.000000e+00, %8640
  %8642 = fmul fast float %8641, %8562
  %8643 = call float @dx.op.unary.f32(i32 7, float %8642)  ; Saturate(value)
  %8644 = fmul fast float %8643, %8639
  %8645 = fmul fast float %8644, 2.000000e+00
  %8646 = fsub fast float 3.000000e+00, %8645
  %8647 = fmul fast float %8634, %8618
  %8648 = fmul fast float %8644, %8644
  %8649 = fmul fast float %8648, %8647
  %8650 = fmul fast float %8649, %8646
  %8651 = call float @dx.op.binary.f32(i32 36, float %8650, float %8650)  ; FMin(a,b)
  %8652 = call float @dx.op.binary.f32(i32 36, float %8650, float %8651)  ; FMin(a,b)
  %8653 = fcmp fast ogt float %8652, 0.000000e+00
  br i1 %8653, label %8662, label %8654, !dx.controlflow.hints !132

; <label>:8654                                    ; preds = %9197, %8808, %8617
  %8655 = phi float [ %8521, %8808 ], [ %8521, %8617 ], [ %9240, %9197 ]
  %8656 = phi float [ %8522, %8808 ], [ %8522, %8617 ], [ %9241, %9197 ]
  %8657 = phi float [ %8523, %8808 ], [ %8523, %8617 ], [ %9242, %9197 ]
  %8658 = phi float [ %8524, %8808 ], [ %8524, %8617 ], [ %9234, %9197 ]
  %8659 = phi float [ %8525, %8808 ], [ %8525, %8617 ], [ %9235, %9197 ]
  %8660 = phi float [ %8526, %8808 ], [ %8526, %8617 ], [ %9236, %9197 ]
  %8661 = icmp eq i32 %8520, %8530
  br i1 %8661, label %9243, label %8519

; <label>:8662                                    ; preds = %8617
  %8663 = icmp eq i32 %8578, 255
  br i1 %8663, label %8808, label %8664, !dx.controlflow.hints !133

; <label>:8664                                    ; preds = %8662
  %8665 = mul nuw nsw i32 %8578, 176
  %8666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8665, i32 undef)  ; BufferLoad(srv,index,wot)
  %8667 = extractvalue %dx.types.ResRet.f32 %8666, 0
  %8668 = extractvalue %dx.types.ResRet.f32 %8666, 1
  %8669 = extractvalue %dx.types.ResRet.f32 %8666, 2
  %8670 = extractvalue %dx.types.ResRet.f32 %8666, 3
  %8671 = add nuw nsw i32 %8665, 16
  %8672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8671, i32 undef)  ; BufferLoad(srv,index,wot)
  %8673 = extractvalue %dx.types.ResRet.f32 %8672, 0
  %8674 = extractvalue %dx.types.ResRet.f32 %8672, 1
  %8675 = add nuw nsw i32 %8665, 32
  %8676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8675, i32 undef)  ; BufferLoad(srv,index,wot)
  %8677 = extractvalue %dx.types.ResRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.ResRet.f32 %8676, 1
  %8679 = extractvalue %dx.types.ResRet.f32 %8676, 2
  %8680 = add nuw nsw i32 %8665, 48
  %8681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8680, i32 undef)  ; BufferLoad(srv,index,wot)
  %8682 = extractvalue %dx.types.ResRet.f32 %8681, 0
  %8683 = extractvalue %dx.types.ResRet.f32 %8681, 1
  %8684 = extractvalue %dx.types.ResRet.f32 %8681, 2
  %8685 = extractvalue %dx.types.ResRet.f32 %8681, 3
  %8686 = add nuw nsw i32 %8665, 64
  %8687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8686, i32 undef)  ; BufferLoad(srv,index,wot)
  %8688 = extractvalue %dx.types.ResRet.f32 %8687, 0
  %8689 = extractvalue %dx.types.ResRet.f32 %8687, 1
  %8690 = extractvalue %dx.types.ResRet.f32 %8687, 2
  %8691 = extractvalue %dx.types.ResRet.f32 %8687, 3
  %8692 = add nuw nsw i32 %8665, 80
  %8693 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8692, i32 undef)  ; BufferLoad(srv,index,wot)
  %8694 = extractvalue %dx.types.ResRet.f32 %8693, 0
  %8695 = extractvalue %dx.types.ResRet.f32 %8693, 1
  %8696 = extractvalue %dx.types.ResRet.f32 %8693, 2
  %8697 = extractvalue %dx.types.ResRet.f32 %8693, 3
  %8698 = add nuw nsw i32 %8665, 96
  %8699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8698, i32 undef)  ; BufferLoad(srv,index,wot)
  %8700 = extractvalue %dx.types.ResRet.f32 %8699, 0
  %8701 = extractvalue %dx.types.ResRet.f32 %8699, 1
  %8702 = extractvalue %dx.types.ResRet.f32 %8699, 2
  %8703 = extractvalue %dx.types.ResRet.f32 %8699, 3
  %8704 = bitcast float %8674 to i32
  %8705 = fmul fast float %8679, %120
  %8706 = fmul fast float %8679, %122
  %8707 = fmul fast float %8679, %124
  %8708 = fadd fast float %8705, %170
  %8709 = fadd fast float %8706, %171
  %8710 = fadd fast float %8707, %172
  %8711 = fmul fast float %8708, %8682
  %8712 = call float @dx.op.tertiary.f32(i32 46, float %8709, float %8688, float %8711)  ; FMad(a,b,c)
  %8713 = call float @dx.op.tertiary.f32(i32 46, float %8710, float %8694, float %8712)  ; FMad(a,b,c)
  %8714 = fadd fast float %8713, %8700
  %8715 = fmul fast float %8708, %8683
  %8716 = call float @dx.op.tertiary.f32(i32 46, float %8709, float %8689, float %8715)  ; FMad(a,b,c)
  %8717 = call float @dx.op.tertiary.f32(i32 46, float %8710, float %8695, float %8716)  ; FMad(a,b,c)
  %8718 = fadd fast float %8717, %8701
  %8719 = fmul fast float %8708, %8684
  %8720 = call float @dx.op.tertiary.f32(i32 46, float %8709, float %8690, float %8719)  ; FMad(a,b,c)
  %8721 = call float @dx.op.tertiary.f32(i32 46, float %8710, float %8696, float %8720)  ; FMad(a,b,c)
  %8722 = fadd fast float %8721, %8702
  %8723 = fmul fast float %8708, %8685
  %8724 = call float @dx.op.tertiary.f32(i32 46, float %8709, float %8691, float %8723)  ; FMad(a,b,c)
  %8725 = call float @dx.op.tertiary.f32(i32 46, float %8710, float %8697, float %8724)  ; FMad(a,b,c)
  %8726 = fadd fast float %8725, %8703
  %8727 = fdiv fast float %8714, %8726
  %8728 = fdiv fast float %8718, %8726
  %8729 = fdiv fast float %8722, %8726
  %8730 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8729)  ; FMax(a,b)
  %8731 = fmul fast float %243, 0x401921FB60000000
  %8732 = call float @dx.op.unary.f32(i32 13, float %8731)  ; Sin(value)
  %8733 = call float @dx.op.unary.f32(i32 12, float %8731)  ; Cos(value)
  %8734 = fmul fast float %8733, %8678
  %8735 = call float @dx.op.tertiary.f32(i32 46, float %8732, float %8678, float 0.000000e+00)  ; FMad(a,b,c)
  %8736 = fmul fast float %8678, %8732
  %8737 = fsub fast float -0.000000e+00, %8736
  %8738 = call float @dx.op.tertiary.f32(i32 46, float %8733, float %8678, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8739

; <label>:8739                                    ; preds = %8739, %8664
  %8740 = phi float [ 0.000000e+00, %8664 ], [ %8772, %8739 ]
  %8741 = phi float [ 0.000000e+00, %8664 ], [ %8774, %8739 ]
  %8742 = phi i32 [ 0, %8664 ], [ %8775, %8739 ]
  %8743 = mul i32 %8742, 2
  %8744 = add i32 0, %8743
  %8745 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8744
  %8746 = load float, float* %8745, align 4
  %8747 = mul i32 %8742, 2
  %8748 = add i32 1, %8747
  %8749 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8748
  %8750 = load float, float* %8749, align 4
  %8751 = fmul fast float %8734, %8746
  %8752 = call float @dx.op.tertiary.f32(i32 46, float %8750, float %8737, float %8751)  ; FMad(a,b,c)
  %8753 = fmul fast float %8746, %8735
  %8754 = call float @dx.op.tertiary.f32(i32 46, float %8750, float %8738, float %8753)  ; FMad(a,b,c)
  %8755 = fadd fast float %8752, %8727
  %8756 = fadd fast float %8754, %8728
  %8757 = fmul fast float %8755, %8673
  %8758 = fmul fast float %8756, %8673
  %8759 = call float @dx.op.binary.f32(i32 35, float %8757, float %8669)  ; FMax(a,b)
  %8760 = call float @dx.op.binary.f32(i32 35, float %8758, float %8669)  ; FMax(a,b)
  %8761 = call float @dx.op.binary.f32(i32 36, float %8759, float %8670)  ; FMin(a,b)
  %8762 = call float @dx.op.binary.f32(i32 36, float %8760, float %8670)  ; FMin(a,b)
  %8763 = fadd fast float %8761, %8667
  %8764 = fadd fast float %8762, %8668
  %8765 = uitofp i32 %8704 to float
  %8766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8763, float %8764, float %8765, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8767 = extractvalue %dx.types.ResRet.f32 %8766, 0
  %8768 = fsub fast float %8767, %8730
  %8769 = fsub fast float %8768, %8677
  %8770 = fcmp fast ogt float %8769, 0.000000e+00
  %8771 = select i1 %8770, float 1.000000e+00, float 0.000000e+00
  %8772 = fadd fast float %8771, %8740
  %8773 = select i1 %8770, float %8769, float 0.000000e+00
  %8774 = fadd fast float %8773, %8741
  %8775 = add nuw nsw i32 %8742, 1
  %8776 = icmp eq i32 %8775, 8
  br i1 %8776, label %8777, label %8739

; <label>:8777                                    ; preds = %8739
  %8778 = fdiv fast float 1.000000e+00, %8772
  %8779 = fmul fast float %8778, %8774
  %8780 = fdiv fast float 1.000000e+00, %8730
  %8781 = fmul fast float %8779, %8780
  %8782 = call float @dx.op.unary.f32(i32 7, float %8781)  ; Saturate(value)
  %8783 = call float @dx.op.binary.f32(i32 35, float %8782, float 0.000000e+00)  ; FMax(a,b)
  %8784 = fmul fast float %8772, 1.250000e-01
  %8785 = call float @dx.op.unary.f32(i32 7, float %8784)  ; Saturate(value)
  %8786 = fmul fast float %8785, 2.000000e+00
  %8787 = fadd fast float %8786, -1.000000e+00
  %8788 = fcmp fast ogt float %8787, 0.000000e+00
  %8789 = fcmp fast olt float %8787, 0.000000e+00
  %8790 = zext i1 %8788 to i32
  %8791 = zext i1 %8789 to i32
  %8792 = sub nsw i32 %8790, %8791
  %8793 = sitofp i32 %8792 to float
  %8794 = fmul fast float %8793, %8787
  %8795 = fsub fast float 1.000000e+00, %8794
  %8796 = fmul fast float %8795, %8795
  %8797 = fmul fast float %8796, %8795
  %8798 = fsub fast float %8795, %8797
  %8799 = fmul fast float %8798, %8783
  %8800 = fsub fast float 1.000000e+00, %8797
  %8801 = fsub fast float %8800, %8799
  %8802 = fmul fast float %8793, 5.000000e-01
  %8803 = fmul fast float %8802, %8801
  %8804 = fsub fast float -5.000000e-01, %8803
  %8805 = fmul fast float %8804, %8638
  %8806 = fadd fast float %8805, 1.000000e+00
  %8807 = fmul fast float %8806, %8650
  br label %8808

; <label>:8808                                    ; preds = %8777, %8662
  %8809 = phi float [ %8807, %8777 ], [ %8650, %8662 ]
  %8810 = call float @dx.op.binary.f32(i32 36, float %8809, float %8809)  ; FMin(a,b)
  %8811 = call float @dx.op.binary.f32(i32 36, float %8809, float %8810)  ; FMin(a,b)
  %8812 = fcmp fast ogt float %8811, 0.000000e+00
  br i1 %8812, label %8813, label %8654, !dx.controlflow.hints !134

; <label>:8813                                    ; preds = %8808
  %8814 = fmul fast float %8809, %8571
  %8815 = fmul fast float %8809, %8572
  %8816 = fmul fast float %8809, %8573
  %8817 = fsub fast float %8555, %5607
  %8818 = fcmp fast ogt float %8817, 0.000000e+00
  %8819 = fsub fast float %172, %5607
  %8820 = fcmp fast ogt float %8819, 0.000000e+00
  %8821 = xor i1 %8820, %8818
  %8822 = fsub fast float %5607, %8555
  %8823 = fmul fast float %8822, 2.000000e+00
  %8824 = fadd fast float %8823, %8555
  %8825 = select i1 %8821, float %8555, float %8824
  %8826 = fsub fast float %8825, %172
  %8827 = call float @dx.op.dot3.f32(i32 55, float %8582, float %8583, float %8826, float %8582, float %8583, float %8826)  ; Dot3(ax,ay,az,bx,by,bz)
  %8828 = call float @dx.op.unary.f32(i32 25, float %8827)  ; Rsqrt(value)
  %8829 = fmul fast float %8828, %8582
  %8830 = fmul fast float %8828, %8583
  %8831 = fmul fast float %8828, %8826
  %8832 = fsub fast float %5607, %172
  %8833 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8832)  ; Dot3(ax,ay,az,bx,by,bz)
  %8834 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8829, float %8830, float %8831)  ; Dot3(ax,ay,az,bx,by,bz)
  %8835 = fdiv fast float 1.000000e+00, %8834
  %8836 = fmul fast float %8835, %8833
  %8837 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8819, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8838 = fcmp fast ogt float %8837, 0.000000e+00
  %8839 = fcmp fast olt float %8837, 0.000000e+00
  %8840 = zext i1 %8838 to i32
  %8841 = zext i1 %8839 to i32
  %8842 = sub nsw i32 %8840, %8841
  %8843 = sitofp i32 %8842 to float
  %8844 = fsub fast float %8825, %5607
  %8845 = call float @dx.op.dot3.f32(i32 55, float %8582, float %8583, float %8844, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8846 = fcmp fast ogt float %8845, 0.000000e+00
  %8847 = fcmp fast olt float %8845, 0.000000e+00
  %8848 = zext i1 %8846 to i32
  %8849 = zext i1 %8847 to i32
  %8850 = sub nsw i32 %8848, %8849
  %8851 = sitofp i32 %8850 to float
  %8852 = fcmp fast une float %8843, %8851
  br i1 %8852, label %8853, label %8863

; <label>:8853                                    ; preds = %8813
  %8854 = fmul fast float %8836, %8831
  %8855 = fmul fast float %8836, %8830
  %8856 = fmul fast float %8836, %8829
  %8857 = fmul fast float %8856, %8856
  %8858 = fmul fast float %8855, %8855
  %8859 = fadd fast float %8857, %8858
  %8860 = fmul fast float %8854, %8854
  %8861 = fadd fast float %8859, %8860
  %8862 = call float @dx.op.unary.f32(i32 24, float %8861)  ; Sqrt(value)
  br label %8875

; <label>:8863                                    ; preds = %8813
  %8864 = icmp slt i32 %8842, 0
  br i1 %8864, label %8865, label %8875

; <label>:8865                                    ; preds = %8863
  %8866 = fsub fast float %170, %8553
  %8867 = fsub fast float %171, %8554
  %8868 = fsub fast float %172, %8825
  %8869 = fmul fast float %8866, %8866
  %8870 = fmul fast float %8867, %8867
  %8871 = fadd fast float %8869, %8870
  %8872 = fmul fast float %8868, %8868
  %8873 = fadd fast float %8871, %8872
  %8874 = call float @dx.op.unary.f32(i32 24, float %8873)  ; Sqrt(value)
  br label %8875

; <label>:8875                                    ; preds = %8865, %8863, %8853
  %8876 = phi float [ %8862, %8853 ], [ %8874, %8865 ], [ 0.000000e+00, %8863 ]
  %8877 = and i1 %8820, %8818
  %8878 = fsub fast float -0.000000e+00, %8876
  %8879 = select i1 %8877, float -0.000000e+00, float %8878
  %8880 = fmul fast float %5604, 0x3FF7154760000000
  %8881 = fmul fast float %8880, %8879
  %8882 = fmul fast float %5605, 0x3FF7154760000000
  %8883 = fmul fast float %8882, %8879
  %8884 = fmul fast float %5606, 0x3FF7154760000000
  %8885 = fmul fast float %8884, %8879
  %8886 = call float @dx.op.unary.f32(i32 21, float %8881)  ; Exp(value)
  %8887 = call float @dx.op.unary.f32(i32 21, float %8883)  ; Exp(value)
  %8888 = call float @dx.op.unary.f32(i32 21, float %8885)  ; Exp(value)
  %8889 = call float @dx.op.unary.f32(i32 7, float %8886)  ; Saturate(value)
  %8890 = call float @dx.op.unary.f32(i32 7, float %8887)  ; Saturate(value)
  %8891 = call float @dx.op.unary.f32(i32 7, float %8888)  ; Saturate(value)
  %8892 = fmul fast float %8814, %8889
  %8893 = fmul fast float %8815, %8890
  %8894 = fmul fast float %8816, %8891
  %8895 = fsub fast float %8588, %5804
  %8896 = fsub fast float %8589, %5803
  %8897 = fsub fast float %8590, %5802
  %8898 = call float @dx.op.dot3.f32(i32 55, float %8895, float %8896, float %8897, float %8895, float %8896, float %8897)  ; Dot3(ax,ay,az,bx,by,bz)
  %8899 = call float @dx.op.unary.f32(i32 25, float %8898)  ; Rsqrt(value)
  %8900 = fmul fast float %8899, %8895
  %8901 = fmul fast float %8899, %8896
  %8902 = fmul fast float %8899, %8897
  %8903 = call float @dx.op.dot3.f32(i32 55, float %8588, float %8589, float %8590, float %5811, float %5812, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %8904 = call float @dx.op.dot3.f32(i32 55, float %5801, float %5800, float %5799, float %8900, float %8901, float %8902)  ; Dot3(ax,ay,az,bx,by,bz)
  %8905 = call float @dx.op.unary.f32(i32 7, float %8903)  ; Saturate(value)
  %8906 = fmul fast float %8905, %8595
  %8907 = fmul fast float %8905, %8905
  %8908 = fmul fast float %8907, %5844
  %8909 = call float @dx.op.unary.f32(i32 7, float %8908)  ; Saturate(value)
  %8910 = fmul fast float %8906, %8909
  %8911 = bitcast float %8585 to i32
  %8912 = ashr i32 %8911, 1
  %8913 = sub nsw i32 1597463007, %8912
  %8914 = bitcast i32 %8913 to float
  %8915 = fmul fast float %8914, %8582
  %8916 = fmul fast float %8914, %8583
  %8917 = fmul fast float %8914, %8584
  %8918 = fsub fast float %8915, %5804
  %8919 = fsub fast float %8916, %5803
  %8920 = fsub fast float %8917, %5802
  %8921 = call float @dx.op.dot3.f32(i32 55, float %8918, float %8919, float %8920, float %8918, float %8919, float %8920)  ; Dot3(ax,ay,az,bx,by,bz)
  %8922 = call float @dx.op.unary.f32(i32 25, float %8921)  ; Rsqrt(value)
  %8923 = fmul fast float %8918, %8922
  %8924 = fmul fast float %8919, %8922
  %8925 = fmul fast float %8920, %8922
  %8926 = call float @dx.op.dot3.f32(i32 55, float %5811, float %5812, float %5813, float %8923, float %8924, float %8925)  ; Dot3(ax,ay,az,bx,by,bz)
  %8927 = fmul fast float %8926, %8926
  %8928 = call float @dx.op.unary.f32(i32 6, float %8903)  ; FAbs(value)
  %8929 = fsub fast float 1.000000e+00, %5837
  %8930 = fmul fast float %5819, %5819
  %8931 = fmul fast float %8930, %8929
  %8932 = fadd fast float %8931, %5837
  %8933 = bitcast float %8932 to i32
  %8934 = ashr i32 %8933, 1
  %8935 = add nsw i32 %8934, 532487669
  %8936 = bitcast i32 %8935 to float
  %8937 = fadd fast float %8936, %5819
  %8938 = fmul fast float %5837, %8927
  %8939 = fsub fast float 1.000000e+00, %8927
  %8940 = fadd fast float %8939, %8938
  %8941 = fmul fast float %8928, %8928
  %8942 = fmul fast float %8941, %8929
  %8943 = fadd fast float %8942, %5837
  %8944 = bitcast float %8943 to i32
  %8945 = ashr i32 %8944, 1
  %8946 = add nsw i32 %8945, 532487669
  %8947 = bitcast i32 %8946 to float
  %8948 = fadd fast float %8947, %8928
  %8949 = fmul fast float %8940, %8940
  %8950 = fmul fast float %8949, %8937
  %8951 = fmul fast float %8950, %8948
  %8952 = fdiv fast float 1.000000e+00, %8951
  %8953 = bitcast float %5837 to i32
  %8954 = sitofp i32 %8953 to float
  %8955 = fmul fast float %8954, 0x3FE7F73180000000
  %8956 = fadd fast float %8955, 0x41AFE27C40000000
  %8957 = fptosi float %8956 to i32
  %8958 = bitcast i32 %8957 to float
  %8959 = fmul fast float %8550, 0x3FD80E9D60000000
  %8960 = fmul fast float %8959, %8914
  %8961 = fadd fast float %8958, %8960
  %8962 = bitcast float %8961 to i32
  %8963 = sub nsw i32 2129859010, %8962
  %8964 = bitcast i32 %8963 to float
  %8965 = fmul fast float %5837, %8952
  %8966 = fmul fast float %8965, %8958
  %8967 = fmul fast float %8966, %8964
  %8968 = fmul fast float %6090, 0x3FF9999980000000
  %8969 = fsub fast float 5.000000e+00, %8968
  %8970 = call float @dx.op.unary.f32(i32 6, float %8904)  ; FAbs(value)
  %8971 = fsub fast float 1.000000e+00, %8970
  %8972 = fmul fast float %6090, 0x41D9660740000000
  %8973 = fadd fast float %8972, 0xC1EFBF8940000000
  %8974 = bitcast float %8971 to i32
  %8975 = sitofp i32 %8974 to float
  %8976 = fmul fast float %8975, %8969
  %8977 = fadd fast float %8973, %8976
  %8978 = fptosi float %8977 to i32
  %8979 = bitcast i32 %8978 to float
  %8980 = fsub fast float 1.000000e+00, %5808
  %8981 = fsub fast float 1.000000e+00, %5809
  %8982 = fsub fast float 1.000000e+00, %5817
  %8983 = fmul fast float %8979, %8980
  %8984 = fmul fast float %8979, %8981
  %8985 = fmul fast float %8979, %8982
  %8986 = fadd fast float %8983, %5808
  %8987 = fadd fast float %8984, %5809
  %8988 = fadd fast float %8985, %5817
  br i1 %6113, label %8989, label %9012

; <label>:8989                                    ; preds = %8875
  %8990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5173, float %8970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8991 = extractvalue %dx.types.ResRet.f32 %8990, 0
  %8992 = extractvalue %dx.types.ResRet.f32 %8990, 1
  %8993 = extractvalue %dx.types.ResRet.f32 %8990, 2
  %8994 = fadd fast float %8991, -5.000000e-01
  %8995 = fadd fast float %8992, -5.000000e-01
  %8996 = fadd fast float %8993, -5.000000e-01
  %8997 = fmul fast float %5808, 4.000000e+00
  %8998 = fmul fast float %8997, %8980
  %8999 = fmul fast float %8998, %8994
  %9000 = fmul fast float %5809, 4.000000e+00
  %9001 = fmul fast float %9000, %8981
  %9002 = fmul fast float %9001, %8995
  %9003 = fmul fast float %5817, 4.000000e+00
  %9004 = fmul fast float %9003, %8982
  %9005 = fmul fast float %9004, %8996
  %9006 = fadd fast float %8999, %8986
  %9007 = fadd fast float %9002, %8987
  %9008 = fadd fast float %9005, %8988
  %9009 = call float @dx.op.unary.f32(i32 7, float %9006)  ; Saturate(value)
  %9010 = call float @dx.op.unary.f32(i32 7, float %9007)  ; Saturate(value)
  %9011 = call float @dx.op.unary.f32(i32 7, float %9008)  ; Saturate(value)
  br label %9012

; <label>:9012                                    ; preds = %8989, %8875
  %9013 = phi float [ %9009, %8989 ], [ %8986, %8875 ]
  %9014 = phi float [ %9010, %8989 ], [ %8987, %8875 ]
  %9015 = phi float [ %9011, %8989 ], [ %8988, %8875 ]
  %9016 = fmul fast float %8903, 9.843750e-01
  %9017 = fadd fast float %9016, 7.812500e-03
  %9018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %9017, float %6094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9019 = extractvalue %dx.types.ResRet.f32 %9018, 0
  %9020 = extractvalue %dx.types.ResRet.f32 %9018, 1
  %9021 = extractvalue %dx.types.ResRet.f32 %9018, 2
  %9022 = extractvalue %dx.types.ResRet.f32 %9018, 3
  %9023 = fsub fast float %9021, %9019
  %9024 = fsub fast float %9022, %9020
  %9025 = fmul fast float %9023, %6100
  %9026 = fmul fast float %9024, %6100
  %9027 = fadd fast float %9025, %9019
  %9028 = fadd fast float %9026, %9020
  %9029 = fmul fast float %9027, %5808
  %9030 = fmul fast float %9027, %5809
  %9031 = fmul fast float %9027, %5817
  %9032 = fadd fast float %9029, %9028
  %9033 = fadd fast float %9030, %9028
  %9034 = fadd fast float %9031, %9028
  br i1 %6113, label %9035, label %9058

; <label>:9035                                    ; preds = %9012
  %9036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5173, float %8903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9037 = extractvalue %dx.types.ResRet.f32 %9036, 0
  %9038 = extractvalue %dx.types.ResRet.f32 %9036, 1
  %9039 = extractvalue %dx.types.ResRet.f32 %9036, 2
  %9040 = fadd fast float %9037, -5.000000e-01
  %9041 = fadd fast float %9038, -5.000000e-01
  %9042 = fadd fast float %9039, -5.000000e-01
  %9043 = fmul fast float %5808, 4.000000e+00
  %9044 = fmul fast float %9043, %8980
  %9045 = fmul fast float %9044, %9040
  %9046 = fmul fast float %5809, 4.000000e+00
  %9047 = fmul fast float %9046, %8981
  %9048 = fmul fast float %9047, %9041
  %9049 = fmul fast float %5817, 4.000000e+00
  %9050 = fmul fast float %9049, %8982
  %9051 = fmul fast float %9050, %9042
  %9052 = fadd fast float %9045, %9032
  %9053 = fadd fast float %9048, %9033
  %9054 = fadd fast float %9051, %9034
  %9055 = call float @dx.op.unary.f32(i32 7, float %9052)  ; Saturate(value)
  %9056 = call float @dx.op.unary.f32(i32 7, float %9053)  ; Saturate(value)
  %9057 = call float @dx.op.unary.f32(i32 7, float %9054)  ; Saturate(value)
  br label %9058

; <label>:9058                                    ; preds = %9035, %9012
  %9059 = phi float [ %9055, %9035 ], [ %9032, %9012 ]
  %9060 = phi float [ %9056, %9035 ], [ %9033, %9012 ]
  %9061 = phi float [ %9057, %9035 ], [ %9034, %9012 ]
  %9062 = call float @dx.op.binary.f32(i32 35, float %9060, float %9061)  ; FMax(a,b)
  %9063 = call float @dx.op.binary.f32(i32 35, float %9059, float %9062)  ; FMax(a,b)
  %9064 = fsub fast float 1.000000e+00, %9063
  %9065 = call float @dx.op.binary.f32(i32 35, float %8928, float 0x3F50624DE0000000)  ; FMax(a,b)
  %9066 = fdiv fast float %4522, %9065
  %9067 = fmul fast float %6660, %9066
  %9068 = fmul fast float %6662, %9066
  %9069 = fmul fast float %6664, %9066
  %9070 = call float @dx.op.unary.f32(i32 21, float %9067)  ; Exp(value)
  %9071 = call float @dx.op.unary.f32(i32 21, float %9068)  ; Exp(value)
  %9072 = call float @dx.op.unary.f32(i32 21, float %9069)  ; Exp(value)
  %9073 = call float @dx.op.unary.f32(i32 7, float %9070)  ; Saturate(value)
  %9074 = call float @dx.op.unary.f32(i32 7, float %9071)  ; Saturate(value)
  %9075 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9076 = select i1 %6657, float %9073, float 0.000000e+00
  %9077 = select i1 %6658, float %9074, float 0.000000e+00
  %9078 = select i1 %6659, float %9075, float 0.000000e+00
  %9079 = fsub fast float -0.000000e+00, %5811
  %9080 = fsub fast float -0.000000e+00, %5812
  %9081 = fsub fast float -0.000000e+00, %5813
  %9082 = call float @dx.op.dot3.f32(i32 55, float %8588, float %8589, float %8590, float %9079, float %9080, float %9081)  ; Dot3(ax,ay,az,bx,by,bz)
  %9083 = call float @dx.op.unary.f32(i32 7, float %9082)  ; Saturate(value)
  %9084 = fmul fast float %9083, %8595
  %9085 = fmul fast float %9083, 9.843750e-01
  %9086 = fadd fast float %9085, 7.812500e-03
  %9087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %9086, float %6094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9088 = extractvalue %dx.types.ResRet.f32 %9087, 0
  %9089 = extractvalue %dx.types.ResRet.f32 %9087, 1
  %9090 = extractvalue %dx.types.ResRet.f32 %9087, 2
  %9091 = extractvalue %dx.types.ResRet.f32 %9087, 3
  %9092 = fsub fast float %9090, %9088
  %9093 = fsub fast float %9091, %9089
  %9094 = fmul fast float %9092, %6100
  %9095 = fmul fast float %9093, %6100
  %9096 = fadd fast float %9094, %9088
  %9097 = fadd fast float %9095, %9089
  %9098 = fmul fast float %9096, %5808
  %9099 = fmul fast float %9096, %5809
  %9100 = fmul fast float %9096, %5817
  %9101 = fadd fast float %9098, %9097
  %9102 = fadd fast float %9099, %9097
  %9103 = fadd fast float %9100, %9097
  br i1 %6113, label %9104, label %9127

; <label>:9104                                    ; preds = %9058
  %9105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %5173, float %9083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9106 = extractvalue %dx.types.ResRet.f32 %9105, 0
  %9107 = extractvalue %dx.types.ResRet.f32 %9105, 1
  %9108 = extractvalue %dx.types.ResRet.f32 %9105, 2
  %9109 = fadd fast float %9106, -5.000000e-01
  %9110 = fadd fast float %9107, -5.000000e-01
  %9111 = fadd fast float %9108, -5.000000e-01
  %9112 = fmul fast float %5808, 4.000000e+00
  %9113 = fmul fast float %9112, %8980
  %9114 = fmul fast float %9113, %9109
  %9115 = fmul fast float %5809, 4.000000e+00
  %9116 = fmul fast float %9115, %8981
  %9117 = fmul fast float %9116, %9110
  %9118 = fmul fast float %5817, 4.000000e+00
  %9119 = fmul fast float %9118, %8982
  %9120 = fmul fast float %9119, %9111
  %9121 = fadd fast float %9114, %9101
  %9122 = fadd fast float %9117, %9102
  %9123 = fadd fast float %9120, %9103
  %9124 = call float @dx.op.unary.f32(i32 7, float %9121)  ; Saturate(value)
  %9125 = call float @dx.op.unary.f32(i32 7, float %9122)  ; Saturate(value)
  %9126 = call float @dx.op.unary.f32(i32 7, float %9123)  ; Saturate(value)
  br label %9127

; <label>:9127                                    ; preds = %9104, %9058
  %9128 = phi float [ %9124, %9104 ], [ %9101, %9058 ]
  %9129 = phi float [ %9125, %9104 ], [ %9102, %9058 ]
  %9130 = phi float [ %9126, %9104 ], [ %9103, %9058 ]
  %9131 = call float @dx.op.binary.f32(i32 35, float %9129, float %9130)  ; FMax(a,b)
  %9132 = call float @dx.op.binary.f32(i32 35, float %9128, float %9131)  ; FMax(a,b)
  %9133 = fsub fast float 1.000000e+00, %9132
  %9134 = fmul fast float %5834, %6724
  %9135 = fadd fast float %6726, %9134
  %9136 = call float @dx.op.unary.f32(i32 7, float %9135)  ; Saturate(value)
  %9137 = fsub fast float %8915, %5825
  %9138 = fsub fast float %8916, %5826
  %9139 = fsub fast float %8917, %5827
  %9140 = call float @dx.op.dot3.f32(i32 55, float %9137, float %9138, float %9139, float %9137, float %9138, float %9139)  ; Dot3(ax,ay,az,bx,by,bz)
  %9141 = call float @dx.op.unary.f32(i32 25, float %9140)  ; Rsqrt(value)
  %9142 = fmul fast float %9137, %9141
  %9143 = fmul fast float %9138, %9141
  %9144 = fmul fast float %9139, %9141
  %9145 = call float @dx.op.dot3.f32(i32 55, float %9079, float %9080, float %9081, float %9142, float %9143, float %9144)  ; Dot3(ax,ay,az,bx,by,bz)
  %9146 = fmul fast float %9145, %9145
  %9147 = call float @dx.op.unary.f32(i32 6, float %9083)  ; FAbs(value)
  %9148 = call float @dx.op.binary.f32(i32 35, float %9136, float 0x3F847AE140000000)  ; FMax(a,b)
  %9149 = fmul fast float %9148, %9148
  %9150 = fmul fast float %9149, %9149
  %9151 = fsub fast float 1.000000e+00, %9150
  %9152 = fmul fast float %8930, %9151
  %9153 = fadd fast float %9152, %9150
  %9154 = bitcast float %9153 to i32
  %9155 = ashr i32 %9154, 1
  %9156 = add nsw i32 %9155, 532487669
  %9157 = bitcast i32 %9156 to float
  %9158 = fadd fast float %9157, %5819
  %9159 = fmul fast float %9150, %9146
  %9160 = fsub fast float 1.000000e+00, %9146
  %9161 = fadd fast float %9160, %9159
  %9162 = fmul fast float %9147, %9147
  %9163 = fmul fast float %9162, %9151
  %9164 = fadd fast float %9163, %9150
  %9165 = bitcast float %9164 to i32
  %9166 = ashr i32 %9165, 1
  %9167 = add nsw i32 %9166, 532487669
  %9168 = bitcast i32 %9167 to float
  %9169 = fadd fast float %9168, %9147
  %9170 = fmul fast float %9161, %9161
  %9171 = fmul fast float %9170, %9158
  %9172 = fmul fast float %9171, %9169
  %9173 = fdiv fast float 1.000000e+00, %9172
  %9174 = bitcast float %9150 to i32
  %9175 = sitofp i32 %9174 to float
  %9176 = fmul fast float %9175, 0x3FE7F73180000000
  %9177 = fadd fast float %9176, 0x41AFE27C40000000
  %9178 = fptosi float %9177 to i32
  %9179 = bitcast i32 %9178 to float
  %9180 = fadd fast float %9179, %8960
  %9181 = bitcast float %9180 to i32
  %9182 = sub nsw i32 2129859010, %9181
  %9183 = bitcast i32 %9182 to float
  %9184 = fmul fast float %9150, %9173
  %9185 = fmul fast float %9184, %9179
  %9186 = fmul fast float %9185, %9183
  br i1 %8580, label %9187, label %9197

; <label>:9187                                    ; preds = %9127
  %9188 = fmul fast float %9084, %9076
  %9189 = fmul fast float %9084, %9077
  %9190 = fmul fast float %9084, %9078
  %9191 = fmul fast float %9188, %9133
  %9192 = fmul fast float %9191, %9186
  %9193 = fmul fast float %9189, %9133
  %9194 = fmul fast float %9193, %9186
  %9195 = fmul fast float %9190, %9133
  %9196 = fmul fast float %9195, %9186
  br label %9197

; <label>:9197                                    ; preds = %9187, %9127
  %9198 = phi float [ %9192, %9187 ], [ 0.000000e+00, %9127 ]
  %9199 = phi float [ %9194, %9187 ], [ 0.000000e+00, %9127 ]
  %9200 = phi float [ %9196, %9187 ], [ 0.000000e+00, %9127 ]
  %9201 = fmul fast float %9013, %8967
  %9202 = fmul fast float %9014, %8967
  %9203 = fmul fast float %9015, %8967
  %9204 = fsub fast float 1.000000e+00, %8904
  %9205 = bitcast float %9204 to i32
  %9206 = sitofp i32 %9205 to float
  %9207 = fmul fast float %9206, 5.000000e+00
  %9208 = fadd fast float %9207, 0xC1EFBF8940000000
  %9209 = fptosi float %9208 to i32
  %9210 = bitcast i32 %9209 to float
  %9211 = fmul fast float %9210, %5174
  %9212 = fmul fast float %9064, %9211
  %9213 = fmul fast float %9212, %6652
  %9214 = fmul fast float %9212, %6653
  %9215 = fmul fast float %9212, %6654
  %9216 = fadd fast float %9213, %9201
  %9217 = fadd fast float %9214, %9202
  %9218 = fadd fast float %9215, %9203
  %9219 = fmul fast float %9216, %8910
  %9220 = fmul fast float %9217, %8910
  %9221 = fmul fast float %9218, %8910
  %9222 = fadd fast float %9219, %9198
  %9223 = fadd fast float %9220, %9199
  %9224 = fadd fast float %9221, %9200
  %9225 = fmul fast float %8892, %5170
  %9226 = fmul fast float %9225, %8910
  %9227 = fmul fast float %9226, %9064
  %9228 = fmul fast float %8893, %5170
  %9229 = fmul fast float %9228, %8910
  %9230 = fmul fast float %9229, %9064
  %9231 = fmul fast float %8894, %5170
  %9232 = fmul fast float %9231, %8910
  %9233 = fmul fast float %9232, %9064
  %9234 = fadd fast float %9227, %8524
  %9235 = fadd fast float %9230, %8525
  %9236 = fadd fast float %9233, %8526
  %9237 = fmul fast float %9225, %9222
  %9238 = fmul fast float %9228, %9223
  %9239 = fmul fast float %9231, %9224
  %9240 = fadd fast float %9237, %8521
  %9241 = fadd fast float %9238, %8522
  %9242 = fadd fast float %9239, %8523
  br label %8654

; <label>:9243                                    ; preds = %8654
  br label %9244

; <label>:9244                                    ; preds = %9243, %8487
  %9245 = phi float [ %8489, %8487 ], [ %8655, %9243 ]
  %9246 = phi float [ %8490, %8487 ], [ %8656, %9243 ]
  %9247 = phi float [ %8491, %8487 ], [ %8657, %9243 ]
  %9248 = phi float [ %8492, %8487 ], [ %8658, %9243 ]
  %9249 = phi float [ %8493, %8487 ], [ %8659, %9243 ]
  %9250 = phi float [ %8494, %8487 ], [ %8660, %9243 ]
  %9251 = add i32 %8488, 1
  %9252 = icmp ugt i32 %9251, %8484
  br i1 %9252, label %9253, label %8487

; <label>:9253                                    ; preds = %9244
  br label %9254

; <label>:9254                                    ; preds = %9253, %8437, %8427
  %9255 = phi float [ %8428, %8427 ], [ %8428, %8437 ], [ %9245, %9253 ]
  %9256 = phi float [ %8429, %8427 ], [ %8429, %8437 ], [ %9246, %9253 ]
  %9257 = phi float [ %8430, %8427 ], [ %8430, %8437 ], [ %9247, %9253 ]
  %9258 = phi float [ %8431, %8427 ], [ %8431, %8437 ], [ %9248, %9253 ]
  %9259 = phi float [ %8432, %8427 ], [ %8432, %8437 ], [ %9249, %9253 ]
  %9260 = phi float [ %8433, %8427 ], [ %8433, %8437 ], [ %9250, %9253 ]
  %9261 = fmul fast float %6681, %5170
  %9262 = fmul fast float %6682, %5170
  %9263 = fmul fast float %6683, %5170
  %9264 = fadd fast float %9261, 1.000000e+00
  %9265 = fadd fast float %9262, 1.000000e+00
  %9266 = fadd fast float %9263, 1.000000e+00
  %9267 = call float @dx.op.dot3.f32(i32 55, float %9264, float %9265, float %9266, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9268 = fsub fast float 1.000000e+00, %9267
  %9269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9270 = extractvalue %dx.types.CBufRet.f32 %9269, 0
  %9271 = fmul fast float %9270, %6687
  %9272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9273 = extractvalue %dx.types.CBufRet.f32 %9272, 3
  %9274 = fsub fast float 1.000000e+00, %5178
  %9275 = call float @dx.op.unary.f32(i32 7, float %9274)  ; Saturate(value)
  %9276 = fadd fast float %9260, %5176
  %9277 = fmul fast float %9276, %5178
  %9278 = fmul fast float %9275, %9273
  %9279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %9280 = extractvalue %dx.types.CBufRet.f32 %9279, 3
  %9281 = fmul fast float %9258, %5805
  %9282 = fmul fast float %9259, %5806
  %9283 = fmul fast float %9260, %5807
  %9284 = fcmp fast ogt float %99, %192
  %9285 = and i1 %9284, %5610
  %9286 = or i1 %5616, %9285
  %9287 = icmp eq i32 %5609, 2
  %9288 = fcmp fast ole float %99, %192
  %9289 = and i1 %9288, %9287
  %9290 = or i1 %9289, %9286
  br i1 %9285, label %9291, label %9548

; <label>:9291                                    ; preds = %9254
  %9292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9293 = extractvalue %dx.types.CBufRet.f32 %9292, 2
  %9294 = extractvalue %dx.types.CBufRet.f32 %9292, 3
  %9295 = fmul fast float %9293, %111
  %9296 = fmul fast float %9294, %112
  %9297 = call float @dx.op.unary.f32(i32 7, float %9295)  ; Saturate(value)
  %9298 = call float @dx.op.unary.f32(i32 7, float %9296)  ; Saturate(value)
  %9299 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9297, float %9298, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9300 = extractvalue %dx.types.ResRet.f32 %9299, 0
  %9301 = extractvalue %dx.types.ResRet.f32 %9299, 1
  %9302 = extractvalue %dx.types.ResRet.f32 %9299, 2
  %9303 = extractvalue %dx.types.ResRet.f32 %9299, 3
  %9304 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %9297, float %9298, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9305 = extractvalue %dx.types.ResRet.f32 %9304, 0
  %9306 = extractvalue %dx.types.ResRet.f32 %9304, 1
  %9307 = extractvalue %dx.types.ResRet.f32 %9304, 2
  %9308 = extractvalue %dx.types.ResRet.f32 %9304, 3
  %9309 = call float @dx.op.binary.f32(i32 35, float %9301, float %9302)  ; FMax(a,b)
  %9310 = call float @dx.op.binary.f32(i32 35, float %9300, float %9309)  ; FMax(a,b)
  %9311 = call float @dx.op.binary.f32(i32 35, float %9310, float %9303)  ; FMax(a,b)
  %9312 = call float @dx.op.binary.f32(i32 36, float %9306, float %9307)  ; FMin(a,b)
  %9313 = call float @dx.op.binary.f32(i32 36, float %9305, float %9312)  ; FMin(a,b)
  %9314 = call float @dx.op.binary.f32(i32 36, float %9313, float %9308)  ; FMin(a,b)
  %9315 = fmul fast float %9311, 2.550000e+02
  %9316 = fadd fast float %9315, 0x3F70101020000000
  %9317 = fptoui float %9316 to i32
  %9318 = fmul fast float %9314, 2.550000e+02
  %9319 = fadd fast float %9318, 0x3F70101020000000
  %9320 = fptoui float %9319 to i32
  %9321 = icmp ult i32 %9317, %9320
  br i1 %9321, label %9322, label %9490

; <label>:9322                                    ; preds = %9291
  %9323 = fcmp fast ogt float %98, 9.843750e-01
  %9324 = fadd fast float %99, -4.000000e+00
  %9325 = select i1 %9323, float -4.000000e+00, float %9324
  %9326 = call float @dx.op.binary.f32(i32 35, float %9325, float 0.000000e+00)  ; FMax(a,b)
  %9327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9328 = extractvalue %dx.types.CBufRet.f32 %9327, 0
  %9329 = fadd fast float %9328, %9326
  %9330 = extractvalue %dx.types.CBufRet.f32 %9327, 2
  %9331 = fmul fast float %9329, %9330
  %9332 = call float @dx.op.unary.f32(i32 23, float %9331)  ; Log(value)
  %9333 = extractvalue %dx.types.CBufRet.f32 %9327, 3
  %9334 = fmul fast float %9333, %9332
  %9335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9336 = extractvalue %dx.types.CBufRet.f32 %9335, 2
  %9337 = fmul fast float %9334, %9336
  %9338 = call float @dx.op.unary.f32(i32 7, float %9337)  ; Saturate(value)
  %9339 = uitofp i32 %9317 to float
  %9340 = uitofp i32 %9320 to float
  %9341 = fadd fast float %9339, 5.000000e-01
  %9342 = fadd fast float %9340, 5.000000e-01
  %9343 = fmul fast float %9336, %9341
  %9344 = fmul fast float %9336, %9342
  %9345 = fadd fast float %9343, 0x3F0FFB4800000000
  %9346 = fadd fast float %9344, 0xBF0FFB4800000000
  %9347 = call float @dx.op.binary.f32(i32 35, float %9338, float %9345)  ; FMax(a,b)
  %9348 = call float @dx.op.binary.f32(i32 36, float %9347, float %9346)  ; FMin(a,b)
  %9349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9350 = extractvalue %dx.types.CBufRet.f32 %9349, 1
  %9351 = extractvalue %dx.types.CBufRet.f32 %9349, 2
  %9352 = extractvalue %dx.types.CBufRet.f32 %9349, 0
  %9353 = fmul fast float %9350, %9348
  %9354 = fadd fast float %9352, %9353
  %9355 = fadd fast float %9352, %9351
  %9356 = fsub fast float %9350, %9351
  %9357 = fadd fast float %9356, %9352
  %9358 = call float @dx.op.binary.f32(i32 35, float %9354, float %9355)  ; FMax(a,b)
  %9359 = call float @dx.op.binary.f32(i32 36, float %9358, float %9357)  ; FMin(a,b)
  %9360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %9297, float %9298, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9361 = extractvalue %dx.types.ResRet.f32 %9360, 0
  %9362 = extractvalue %dx.types.ResRet.f32 %9360, 1
  %9363 = extractvalue %dx.types.ResRet.f32 %9360, 2
  %9364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9365 = extractvalue %dx.types.CBufRet.i32 %9364, 0
  %9366 = extractvalue %dx.types.CBufRet.i32 %9364, 1
  %9367 = uitofp i32 %9365 to float
  %9368 = uitofp i32 %9366 to float
  %9369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9370 = extractvalue %dx.types.CBufRet.f32 %9369, 0
  %9371 = extractvalue %dx.types.CBufRet.f32 %9369, 1
  %9372 = fmul fast float %9367, %9297
  %9373 = fmul fast float %9368, %9298
  %9374 = fadd fast float %9372, -5.000000e-01
  %9375 = fadd fast float %9373, -5.000000e-01
  %9376 = call float @dx.op.unary.f32(i32 22, float %9374)  ; Frc(value)
  %9377 = call float @dx.op.unary.f32(i32 22, float %9375)  ; Frc(value)
  %9378 = fmul fast float %9376, %9376
  %9379 = fmul fast float %9378, %9376
  %9380 = fsub fast float 3.000000e+00, %9376
  %9381 = fmul fast float %9378, %9380
  %9382 = fmul fast float %9376, 3.000000e+00
  %9383 = fmul fast float %9379, 3.000000e+00
  %9384 = fmul fast float %9378, 6.000000e+00
  %9385 = fsub fast float %9383, %9384
  %9386 = fadd fast float %9385, 4.000000e+00
  %9387 = fmul fast float %9386, 0x3FC5555560000000
  %9388 = fmul fast float %9379, -3.000000e+00
  %9389 = fadd fast float %9378, %9376
  %9390 = fmul fast float %9389, 3.000000e+00
  %9391 = fadd fast float %9388, 1.000000e+00
  %9392 = fadd fast float %9391, %9390
  %9393 = fmul fast float %9379, 0x3FC5555560000000
  %9394 = fmul fast float %9377, %9377
  %9395 = fmul fast float %9394, %9377
  %9396 = fsub fast float 3.000000e+00, %9377
  %9397 = fmul fast float %9394, %9396
  %9398 = fmul fast float %9377, 3.000000e+00
  %9399 = fmul fast float %9395, 3.000000e+00
  %9400 = fmul fast float %9394, 6.000000e+00
  %9401 = fsub fast float %9399, %9400
  %9402 = fadd fast float %9401, 4.000000e+00
  %9403 = fmul fast float %9402, 0x3FC5555560000000
  %9404 = fmul fast float %9395, -3.000000e+00
  %9405 = fadd fast float %9394, %9377
  %9406 = fmul fast float %9405, 3.000000e+00
  %9407 = fadd fast float %9404, 1.000000e+00
  %9408 = fadd fast float %9407, %9406
  %9409 = fmul fast float %9395, 0x3FC5555560000000
  %9410 = fadd fast float %9376, 1.000000e+00
  %9411 = fsub fast float 1.000000e+00, %9382
  %9412 = fadd fast float %9411, %9381
  %9413 = fadd fast float %9412, %9386
  %9414 = fmul fast float %9413, 0x3FC5555560000000
  %9415 = fdiv fast float %9387, %9414
  %9416 = fsub fast float %9410, %9415
  %9417 = fsub fast float 1.000000e+00, %9376
  %9418 = fadd fast float %9392, %9379
  %9419 = fmul fast float %9418, 0x3FC5555560000000
  %9420 = fdiv fast float %9393, %9419
  %9421 = fadd fast float %9417, %9420
  %9422 = fadd fast float %9377, 1.000000e+00
  %9423 = fsub fast float 1.000000e+00, %9398
  %9424 = fadd fast float %9423, %9397
  %9425 = fadd fast float %9424, %9402
  %9426 = fmul fast float %9425, 0x3FC5555560000000
  %9427 = fdiv fast float %9403, %9426
  %9428 = fsub fast float %9422, %9427
  %9429 = fsub fast float 1.000000e+00, %9377
  %9430 = fadd fast float %9408, %9395
  %9431 = fmul fast float %9430, 0x3FC5555560000000
  %9432 = fdiv fast float %9409, %9431
  %9433 = fadd fast float %9432, %9429
  %9434 = fmul fast float %9416, %9370
  %9435 = fsub fast float %9297, %9434
  %9436 = fmul fast float %9421, %9370
  %9437 = fadd fast float %9436, %9297
  %9438 = fmul fast float %9433, %9371
  %9439 = fadd fast float %9438, %9298
  %9440 = fmul fast float %9428, %9371
  %9441 = fsub fast float %9298, %9440
  %9442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9435, float %9441, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9443 = extractvalue %dx.types.ResRet.f32 %9442, 0
  %9444 = extractvalue %dx.types.ResRet.f32 %9442, 1
  %9445 = extractvalue %dx.types.ResRet.f32 %9442, 2
  %9446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9437, float %9441, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9447 = extractvalue %dx.types.ResRet.f32 %9446, 0
  %9448 = extractvalue %dx.types.ResRet.f32 %9446, 1
  %9449 = extractvalue %dx.types.ResRet.f32 %9446, 2
  %9450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9435, float %9439, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9451 = extractvalue %dx.types.ResRet.f32 %9450, 0
  %9452 = extractvalue %dx.types.ResRet.f32 %9450, 1
  %9453 = extractvalue %dx.types.ResRet.f32 %9450, 2
  %9454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %9437, float %9439, float %9359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9455 = extractvalue %dx.types.ResRet.f32 %9454, 0
  %9456 = extractvalue %dx.types.ResRet.f32 %9454, 1
  %9457 = extractvalue %dx.types.ResRet.f32 %9454, 2
  %9458 = fsub fast float %9451, %9443
  %9459 = fsub fast float %9452, %9444
  %9460 = fsub fast float %9453, %9445
  %9461 = fmul fast float %9458, %9431
  %9462 = fmul fast float %9459, %9431
  %9463 = fmul fast float %9460, %9431
  %9464 = fadd fast float %9461, %9443
  %9465 = fadd fast float %9462, %9444
  %9466 = fadd fast float %9463, %9445
  %9467 = fsub fast float %9455, %9447
  %9468 = fsub fast float %9456, %9448
  %9469 = fsub fast float %9457, %9449
  %9470 = fmul fast float %9467, %9431
  %9471 = fmul fast float %9468, %9431
  %9472 = fmul fast float %9469, %9431
  %9473 = fsub fast float %9447, %9464
  %9474 = fadd fast float %9473, %9470
  %9475 = fsub fast float %9448, %9465
  %9476 = fadd fast float %9475, %9471
  %9477 = fsub fast float %9449, %9466
  %9478 = fadd fast float %9477, %9472
  %9479 = fmul fast float %9474, %9419
  %9480 = fmul fast float %9476, %9419
  %9481 = fmul fast float %9478, %9419
  %9482 = fadd fast float %9479, %9464
  %9483 = fadd fast float %9480, %9465
  %9484 = fadd fast float %9481, %9466
  %9485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9486 = extractvalue %dx.types.CBufRet.f32 %9485, 1
  %9487 = fmul fast float %9482, %9486
  %9488 = fmul fast float %9483, %9486
  %9489 = fmul fast float %9484, %9486
  br label %9490

; <label>:9490                                    ; preds = %9322, %9291
  %9491 = phi float [ %9361, %9322 ], [ 1.000000e+00, %9291 ]
  %9492 = phi float [ %9362, %9322 ], [ 1.000000e+00, %9291 ]
  %9493 = phi float [ %9363, %9322 ], [ 1.000000e+00, %9291 ]
  %9494 = phi float [ %9487, %9322 ], [ 0.000000e+00, %9291 ]
  %9495 = phi float [ %9488, %9322 ], [ 0.000000e+00, %9291 ]
  %9496 = phi float [ %9489, %9322 ], [ 0.000000e+00, %9291 ]
  %9497 = fmul fast float %9494, %9268
  %9498 = fmul fast float %9495, %9268
  %9499 = fmul fast float %9496, %9268
  %9500 = call float @dx.op.dot3.f32(i32 55, float %9491, float %9492, float %9493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9501 = call float @dx.op.dot3.f32(i32 55, float %9497, float %9498, float %9499, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9502 = select i1 %232, float %9500, float %9491
  %9503 = select i1 %232, float %9500, float %9492
  %9504 = select i1 %232, float 1.000000e+00, float %9493
  %9505 = select i1 %232, float %9501, float %9497
  %9506 = select i1 %232, float 0.000000e+00, float %9498
  %9507 = select i1 %232, float 0.000000e+00, float %9499
  %9508 = fmul fast float %9502, %9281
  %9509 = fmul fast float %9503, %9282
  %9510 = fmul fast float %9504, %9283
  %9511 = fadd fast float %9508, %9505
  %9512 = fadd fast float %9509, %9506
  %9513 = fadd fast float %9507, %9510
  %9514 = fmul fast float %9502, %9255
  %9515 = fmul fast float %9503, %9256
  %9516 = fmul fast float %9504, %9257
  %9517 = fmul fast float %140, %9293
  %9518 = fmul fast float %142, %9294
  %9519 = fsub fast float 1.000000e+00, %9517
  %9520 = fsub fast float 1.000000e+00, %9518
  %9521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9522 = extractvalue %dx.types.CBufRet.f32 %9521, 0
  %9523 = extractvalue %dx.types.CBufRet.f32 %9521, 1
  %9524 = extractvalue %dx.types.CBufRet.f32 %9521, 2
  %9525 = fmul fast float %9519, %9522
  %9526 = fmul fast float %9519, %9523
  %9527 = fmul fast float %9519, %9524
  %9528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9529 = extractvalue %dx.types.CBufRet.f32 %9528, 0
  %9530 = extractvalue %dx.types.CBufRet.f32 %9528, 1
  %9531 = extractvalue %dx.types.CBufRet.f32 %9528, 2
  %9532 = fmul fast float %9520, %9529
  %9533 = fmul fast float %9520, %9530
  %9534 = fmul fast float %9520, %9531
  %9535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9536 = extractvalue %dx.types.CBufRet.f32 %9535, 0
  %9537 = extractvalue %dx.types.CBufRet.f32 %9535, 1
  %9538 = extractvalue %dx.types.CBufRet.f32 %9535, 2
  %9539 = fadd fast float %9532, %9536
  %9540 = fadd fast float %9539, %9525
  %9541 = fadd fast float %9533, %9537
  %9542 = fadd fast float %9541, %9526
  %9543 = fadd fast float %9534, %9538
  %9544 = fadd fast float %9543, %9527
  %9545 = fmul fast float %9540, %192
  %9546 = fmul fast float %9542, %192
  %9547 = fmul fast float %9544, %192
  br label %9548

; <label>:9548                                    ; preds = %9490, %9254
  %9549 = phi float [ %9545, %9490 ], [ %170, %9254 ]
  %9550 = phi float [ %9546, %9490 ], [ %171, %9254 ]
  %9551 = phi float [ %9547, %9490 ], [ %172, %9254 ]
  %9552 = phi float [ %192, %9490 ], [ %99, %9254 ]
  %9553 = phi float [ %9511, %9490 ], [ %9281, %9254 ]
  %9554 = phi float [ %9512, %9490 ], [ %9282, %9254 ]
  %9555 = phi float [ %9513, %9490 ], [ %9283, %9254 ]
  %9556 = phi float [ %9514, %9490 ], [ %9255, %9254 ]
  %9557 = phi float [ %9515, %9490 ], [ %9256, %9254 ]
  %9558 = phi float [ %9516, %9490 ], [ %9257, %9254 ]
  %9559 = phi float [ %9491, %9490 ], [ 1.000000e+00, %9254 ]
  br i1 %9290, label %10714, label %9560

; <label>:9560                                    ; preds = %9548
  %9561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9562 = extractvalue %dx.types.CBufRet.f32 %9561, 0
  %9563 = extractvalue %dx.types.CBufRet.f32 %9561, 1
  %9564 = extractvalue %dx.types.CBufRet.f32 %9561, 2
  %9565 = extractvalue %dx.types.CBufRet.f32 %9561, 3
  %9566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9567 = extractvalue %dx.types.CBufRet.f32 %9566, 0
  %9568 = extractvalue %dx.types.CBufRet.f32 %9566, 1
  %9569 = extractvalue %dx.types.CBufRet.f32 %9566, 2
  %9570 = extractvalue %dx.types.CBufRet.f32 %9566, 3
  %9571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9572 = extractvalue %dx.types.CBufRet.f32 %9571, 0
  %9573 = extractvalue %dx.types.CBufRet.f32 %9571, 1
  %9574 = extractvalue %dx.types.CBufRet.f32 %9571, 2
  %9575 = extractvalue %dx.types.CBufRet.f32 %9571, 3
  %9576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9577 = extractvalue %dx.types.CBufRet.f32 %9576, 0
  %9578 = extractvalue %dx.types.CBufRet.f32 %9576, 1
  %9579 = extractvalue %dx.types.CBufRet.f32 %9576, 2
  %9580 = extractvalue %dx.types.CBufRet.f32 %9576, 3
  %9581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9582 = extractvalue %dx.types.CBufRet.f32 %9581, 3
  %9583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9584 = extractvalue %dx.types.CBufRet.f32 %9583, 3
  %9585 = extractvalue %dx.types.CBufRet.f32 %9583, 0
  %9586 = extractvalue %dx.types.CBufRet.f32 %9583, 1
  %9587 = extractvalue %dx.types.CBufRet.f32 %9583, 2
  %9588 = fcmp fast olt float %9587, -5.000000e-01
  %9589 = call float @dx.op.dot3.f32(i32 55, float %9549, float %9550, float %9551, float %9549, float %9550, float %9551)  ; Dot3(ax,ay,az,bx,by,bz)
  %9590 = call float @dx.op.unary.f32(i32 25, float %9589)  ; Rsqrt(value)
  %9591 = fmul fast float %9590, %9589
  %9592 = fmul fast float %9590, %9549
  %9593 = fmul fast float %9590, %9550
  %9594 = fmul fast float %9590, %9551
  %9595 = fadd fast float %9591, %9565
  %9596 = call float @dx.op.dot3.f32(i32 55, float %9592, float %9593, float %9594, float %9562, float %9563, float %9564)  ; Dot3(ax,ay,az,bx,by,bz)
  %9597 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9598 = extractvalue %dx.types.CBufRet.i32 %9597, 1
  %9599 = and i32 %9598, 1
  %9600 = icmp ne i32 %9599, 0
  %9601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9602 = extractvalue %dx.types.CBufRet.f32 %9601, 2
  %9603 = fcmp fast ogt float %9602, 0.000000e+00
  %9604 = and i1 %9600, %9603
  br i1 %9604, label %9605, label %10011, !dx.controlflow.hints !135

; <label>:9605                                    ; preds = %9560
  %9606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9607 = extractvalue %dx.types.CBufRet.f32 %9606, 3
  %9608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9609 = extractvalue %dx.types.CBufRet.f32 %9608, 2
  %9610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9611 = extractvalue %dx.types.CBufRet.f32 %9610, 2
  %9612 = fsub fast float %9609, %9611
  %9613 = and i32 %9598, 2
  %9614 = extractvalue %dx.types.CBufRet.i32 %9597, 0
  %9615 = call i32 @dx.op.binary.i32(i32 40, i32 %9614, i32 3)  ; UMin(a,b)
  %9616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9617 = extractvalue %dx.types.CBufRet.f32 %9616, 0
  %9618 = extractvalue %dx.types.CBufRet.f32 %9616, 1
  %9619 = extractvalue %dx.types.CBufRet.f32 %9610, 0
  %9620 = extractvalue %dx.types.CBufRet.f32 %9610, 1
  %9621 = fsub fast float %9617, %9619
  %9622 = fsub fast float %9618, %9620
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 0
  %9625 = fcmp fast ogt float %9624, 0.000000e+00
  %9626 = fsub fast float -0.000000e+00, %9621
  %9627 = fsub fast float -0.000000e+00, %9622
  %9628 = call float @dx.op.dot2.f32(i32 54, float %9592, float %9593, float %9592, float %9593)  ; Dot2(ax,ay,bx,by)
  %9629 = call float @dx.op.dot2.f32(i32 54, float %9592, float %9593, float %9626, float %9627)  ; Dot2(ax,ay,bx,by)
  %9630 = fmul fast float %9629, 2.000000e+00
  %9631 = call float @dx.op.dot2.f32(i32 54, float %9626, float %9627, float %9626, float %9627)  ; Dot2(ax,ay,bx,by)
  %9632 = fmul fast float %9624, %9624
  %9633 = fsub fast float %9631, %9632
  %9634 = fmul fast float %9630, %9630
  %9635 = fmul fast float %9628, 4.000000e+00
  %9636 = fmul fast float %9635, %9633
  %9637 = fsub fast float %9634, %9636
  %9638 = fcmp fast ogt float %9637, 0.000000e+00
  br i1 %9638, label %9639, label %9654

; <label>:9639                                    ; preds = %9605
  %9640 = fcmp fast ogt float %9630, 0.000000e+00
  %9641 = call float @dx.op.unary.f32(i32 24, float %9637)  ; Sqrt(value)
  %9642 = fsub fast float -0.000000e+00, %9641
  %9643 = select i1 %9640, float %9641, float %9642
  %9644 = fadd fast float %9643, %9630
  %9645 = fmul float %9644, -5.000000e-01
  %9646 = fdiv fast float %9645, %9628
  %9647 = call float @dx.op.binary.f32(i32 35, float %9646, float 0.000000e+00)  ; FMax(a,b)
  %9648 = call float @dx.op.binary.f32(i32 36, float %9591, float %9647)  ; FMin(a,b)
  %9649 = fdiv fast float %9633, %9645
  %9650 = call float @dx.op.binary.f32(i32 35, float %9649, float 0.000000e+00)  ; FMax(a,b)
  %9651 = call float @dx.op.binary.f32(i32 36, float %9591, float %9650)  ; FMin(a,b)
  %9652 = call float @dx.op.binary.f32(i32 36, float %9648, float %9651)  ; FMin(a,b)
  %9653 = call float @dx.op.binary.f32(i32 35, float %9648, float %9651)  ; FMax(a,b)
  br label %9654

; <label>:9654                                    ; preds = %9639, %9605
  %9655 = phi float [ %9653, %9639 ], [ -1.000000e+00, %9605 ]
  %9656 = phi float [ %9652, %9639 ], [ -1.000000e+00, %9605 ]
  %9657 = phi i1 [ true, %9639 ], [ false, %9605 ]
  %9658 = and i1 %9625, %9657
  br i1 %9658, label %9659, label %9661

; <label>:9659                                    ; preds = %9654
  %9660 = fcmp fast oeq float %9656, %9655
  br i1 %9660, label %9964, label %9662

; <label>:9661                                    ; preds = %9654
  br i1 %9625, label %9964, label %9662

; <label>:9662                                    ; preds = %9661, %9659
  %9663 = phi float [ %9591, %9661 ], [ %9655, %9659 ]
  %9664 = phi float [ 0.000000e+00, %9661 ], [ %9656, %9659 ]
  %9665 = icmp ne i32 %9613, 0
  %9666 = fmul fast float %9663, %9594
  %9667 = fadd fast float %9666, %9607
  %9668 = fmul fast float %9667, %9663
  %9669 = select i1 %9665, float 0.000000e+00, float %9668
  %9670 = fcmp fast oeq float %9594, 0.000000e+00
  %9671 = fdiv fast float %9612, %9594
  %9672 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9671)  ; FMax(a,b)
  %9673 = select i1 %9670, float %9663, float %9672
  %9674 = call float @dx.op.binary.f32(i32 36, float %9663, float %9673)  ; FMin(a,b)
  %9675 = fcmp fast ogt float %9594, 0.000000e+00
  %9676 = fcmp fast olt float %9612, 0.000000e+00
  br i1 %9675, label %9677, label %9734

; <label>:9677                                    ; preds = %9662
  %9678 = icmp eq i32 %9613, 0
  br i1 %9676, label %9679, label %9723

; <label>:9679                                    ; preds = %9677
  %9680 = select i1 %9678, float %9663, float 0.000000e+00
  %9681 = fsub fast float -0.000000e+00, %9680
  %9682 = call float @dx.op.unary.f32(i32 6, float %9681)  ; FAbs(value)
  %9683 = fmul fast float %9680, %9594
  %9684 = fadd fast float %9683, %9607
  %9685 = fmul fast float %9682, %9684
  %9686 = fsub fast float %9669, %9685
  %9687 = fsub fast float %9663, %9682
  %9688 = select i1 %9678, float %9687, float 0.000000e+00
  %9689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9690 = extractvalue %dx.types.CBufRet.f32 %9689, 0
  %9691 = extractvalue %dx.types.CBufRet.f32 %9689, 1
  %9692 = extractvalue %dx.types.CBufRet.f32 %9689, 2
  %9693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9694 = extractvalue %dx.types.CBufRet.f32 %9693, 0
  %9695 = extractvalue %dx.types.CBufRet.f32 %9693, 1
  %9696 = extractvalue %dx.types.CBufRet.f32 %9693, 2
  %9697 = extractvalue %dx.types.CBufRet.f32 %9693, 3
  %9698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9699 = extractvalue %dx.types.CBufRet.f32 %9698, 3
  %9700 = call float @dx.op.binary.f32(i32 36, float %9686, float %9699)  ; FMin(a,b)
  %9701 = fmul fast float %9697, %9688
  %9702 = call float @dx.op.unary.f32(i32 7, float %9701)  ; Saturate(value)
  %9703 = fsub fast float %9694, %9690
  %9704 = fsub fast float %9695, %9691
  %9705 = fsub fast float %9696, %9692
  %9706 = fmul fast float %9702, %9703
  %9707 = fmul fast float %9702, %9704
  %9708 = fmul fast float %9702, %9705
  %9709 = fadd fast float %9706, %9690
  %9710 = fadd fast float %9707, %9691
  %9711 = fadd fast float %9708, %9692
  %9712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9713 = extractvalue %dx.types.CBufRet.f32 %9712, 0
  %9714 = extractvalue %dx.types.CBufRet.f32 %9712, 1
  %9715 = fadd fast float %9714, %9713
  %9716 = call float @dx.op.unary.f32(i32 7, float %9715)  ; Saturate(value)
  %9717 = extractvalue %dx.types.CBufRet.f32 %9712, 2
  %9718 = extractvalue %dx.types.CBufRet.f32 %9712, 3
  %9719 = fadd fast float %9718, %9717
  %9720 = call float @dx.op.unary.f32(i32 7, float %9719)  ; Saturate(value)
  %9721 = fmul fast float %9716, %9700
  %9722 = fmul fast float %9721, %9720
  br label %9964

; <label>:9723                                    ; preds = %9677
  br i1 %9678, label %9724, label %9745

; <label>:9724                                    ; preds = %9723
  %9725 = call float @dx.op.binary.f32(i32 36, float %9674, float %9664)  ; FMin(a,b)
  %9726 = fsub fast float %9674, %9725
  %9727 = fsub fast float %9726, %9663
  %9728 = call float @dx.op.unary.f32(i32 6, float %9727)  ; FAbs(value)
  %9729 = fadd fast float %9726, %9663
  %9730 = fmul fast float %9729, %9594
  %9731 = fadd fast float %9730, %9607
  %9732 = fmul fast float %9731, %9728
  %9733 = fsub fast float %9669, %9732
  br label %9745

; <label>:9734                                    ; preds = %9662
  br i1 %9676, label %9735, label %9745

; <label>:9735                                    ; preds = %9734
  %9736 = call float @dx.op.binary.f32(i32 35, float %9664, float %9674)  ; FMax(a,b)
  %9737 = icmp eq i32 %9613, 0
  %9738 = select i1 %9737, float %9674, float 0.000000e+00
  %9739 = fsub fast float -0.000000e+00, %9738
  %9740 = call float @dx.op.unary.f32(i32 6, float %9739)  ; FAbs(value)
  %9741 = fmul fast float %9738, %9594
  %9742 = fadd fast float %9741, %9607
  %9743 = fmul fast float %9740, %9742
  %9744 = fsub fast float %9669, %9743
  br label %9745

; <label>:9745                                    ; preds = %9735, %9734, %9724, %9723
  %9746 = phi float [ %9664, %9723 ], [ %9664, %9724 ], [ %9736, %9735 ], [ %9664, %9734 ]
  %9747 = phi float [ 0.000000e+00, %9723 ], [ %9728, %9724 ], [ %9740, %9735 ], [ 0.000000e+00, %9734 ]
  %9748 = phi float [ %9669, %9723 ], [ %9733, %9724 ], [ %9744, %9735 ], [ %9669, %9734 ]
  %9749 = phi float [ %9674, %9723 ], [ %9674, %9724 ], [ %9663, %9735 ], [ %9663, %9734 ]
  %9750 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9750, align 4, !tbaa !122, !noalias !136
  %9751 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9751, align 4, !tbaa !122, !noalias !136
  %9752 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9752, align 4, !tbaa !122, !noalias !136
  %9753 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9753, align 4, !tbaa !122, !noalias !136
  %9754 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9754, align 4, !tbaa !122, !noalias !136
  %9755 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9755, align 4, !tbaa !122, !noalias !136
  %9756 = icmp sgt i32 %9615, 0
  br i1 %9756, label %9757, label %9818

; <label>:9757                                    ; preds = %9745
  br label %9758

; <label>:9758                                    ; preds = %9807, %9757
  %9759 = phi i32 [ %9808, %9807 ], [ 0, %9757 ]
  %9760 = phi i32 [ %9809, %9807 ], [ 0, %9757 ]
  %9761 = add nuw i32 %9760, 171
  %9762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9761)  ; CBufferLoadLegacy(handle,regIndex)
  %9763 = extractvalue %dx.types.CBufRet.f32 %9762, 0
  %9764 = extractvalue %dx.types.CBufRet.f32 %9762, 1
  %9765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9766 = extractvalue %dx.types.CBufRet.f32 %9765, 0
  %9767 = extractvalue %dx.types.CBufRet.f32 %9765, 1
  %9768 = fsub fast float %9763, %9766
  %9769 = fsub fast float %9764, %9767
  %9770 = extractvalue %dx.types.CBufRet.f32 %9762, 2
  %9771 = fsub fast float -0.000000e+00, %9768
  %9772 = fsub fast float -0.000000e+00, %9769
  %9773 = call float @dx.op.dot2.f32(i32 54, float %9592, float %9593, float %9771, float %9772)  ; Dot2(ax,ay,bx,by)
  %9774 = fmul fast float %9773, 2.000000e+00
  %9775 = call float @dx.op.dot2.f32(i32 54, float %9771, float %9772, float %9771, float %9772)  ; Dot2(ax,ay,bx,by)
  %9776 = fmul fast float %9770, %9770
  %9777 = fsub fast float %9775, %9776
  %9778 = fmul fast float %9774, %9774
  %9779 = fmul fast float %9635, %9777
  %9780 = fsub fast float %9778, %9779
  %9781 = fcmp fast ogt float %9780, 0.000000e+00
  br i1 %9781, label %9782, label %9797

; <label>:9782                                    ; preds = %9758
  %9783 = fcmp fast ogt float %9774, 0.000000e+00
  %9784 = call float @dx.op.unary.f32(i32 24, float %9780)  ; Sqrt(value)
  %9785 = fsub fast float -0.000000e+00, %9784
  %9786 = select i1 %9783, float %9784, float %9785
  %9787 = fadd fast float %9786, %9774
  %9788 = fmul float %9787, -5.000000e-01
  %9789 = fdiv fast float %9788, %9628
  %9790 = call float @dx.op.binary.f32(i32 35, float %9789, float 0.000000e+00)  ; FMax(a,b)
  %9791 = call float @dx.op.binary.f32(i32 36, float %9663, float %9790)  ; FMin(a,b)
  %9792 = fdiv fast float %9777, %9788
  %9793 = call float @dx.op.binary.f32(i32 35, float %9792, float 0.000000e+00)  ; FMax(a,b)
  %9794 = call float @dx.op.binary.f32(i32 36, float %9663, float %9793)  ; FMin(a,b)
  %9795 = call float @dx.op.binary.f32(i32 36, float %9791, float %9794)  ; FMin(a,b)
  %9796 = call float @dx.op.binary.f32(i32 35, float %9791, float %9794)  ; FMax(a,b)
  br label %9797

; <label>:9797                                    ; preds = %9782, %9758
  %9798 = phi float [ %9796, %9782 ], [ -1.000000e+00, %9758 ]
  %9799 = phi float [ %9795, %9782 ], [ -1.000000e+00, %9758 ]
  %9800 = phi i1 [ true, %9782 ], [ false, %9758 ]
  br i1 %9800, label %9801, label %9807

; <label>:9801                                    ; preds = %9797
  %9802 = call float @dx.op.binary.f32(i32 35, float %9746, float %9799)  ; FMax(a,b)
  %9803 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9760
  store float %9802, float* %9803, align 4, !tbaa !122, !noalias !136
  %9804 = call float @dx.op.binary.f32(i32 35, float %9746, float %9798)  ; FMax(a,b)
  %9805 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9760
  store float %9804, float* %9805, align 4, !tbaa !122, !noalias !136
  %9806 = add nsw i32 %9759, 1
  br label %9807

; <label>:9807                                    ; preds = %9801, %9797
  %9808 = phi i32 [ %9806, %9801 ], [ %9759, %9797 ]
  %9809 = add nuw nsw i32 %9760, 1
  %9810 = icmp eq i32 %9809, %9615
  br i1 %9810, label %9811, label %9758

; <label>:9811                                    ; preds = %9807
  %9812 = load float, float* %9752, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9813 = load float, float* %9751, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9814 = load float, float* %9750, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9815 = load float, float* %9755, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9816 = load float, float* %9754, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9817 = load float, float* %9753, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9818

; <label>:9818                                    ; preds = %9811, %9745
  %9819 = phi float [ -1.000000e+00, %9745 ], [ %9817, %9811 ]
  %9820 = phi float [ -1.000000e+00, %9745 ], [ %9816, %9811 ]
  %9821 = phi float [ -1.000000e+00, %9745 ], [ %9815, %9811 ]
  %9822 = phi float [ -1.000000e+00, %9745 ], [ %9814, %9811 ]
  %9823 = phi float [ -1.000000e+00, %9745 ], [ %9813, %9811 ]
  %9824 = phi float [ -1.000000e+00, %9745 ], [ %9812, %9811 ]
  %9825 = phi i32 [ 0, %9745 ], [ %9808, %9811 ]
  %9826 = call float @dx.op.binary.f32(i32 36, float %9823, float %9824)  ; FMin(a,b)
  %9827 = call float @dx.op.binary.f32(i32 36, float %9822, float %9826)  ; FMin(a,b)
  %9828 = call float @dx.op.binary.f32(i32 35, float %9822, float %9823)  ; FMax(a,b)
  %9829 = call float @dx.op.binary.f32(i32 36, float %9828, float %9824)  ; FMin(a,b)
  %9830 = call float @dx.op.binary.f32(i32 36, float %9822, float %9823)  ; FMin(a,b)
  %9831 = call float @dx.op.binary.f32(i32 35, float %9830, float %9829)  ; FMax(a,b)
  %9832 = call float @dx.op.binary.f32(i32 35, float %9823, float %9824)  ; FMax(a,b)
  %9833 = call float @dx.op.binary.f32(i32 35, float %9822, float %9832)  ; FMax(a,b)
  store float %9827, float* %9750, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9831, float* %9751, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9833, float* %9752, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9834 = call float @dx.op.binary.f32(i32 36, float %9820, float %9821)  ; FMin(a,b)
  %9835 = call float @dx.op.binary.f32(i32 36, float %9819, float %9834)  ; FMin(a,b)
  %9836 = call float @dx.op.binary.f32(i32 35, float %9819, float %9820)  ; FMax(a,b)
  %9837 = call float @dx.op.binary.f32(i32 36, float %9836, float %9821)  ; FMin(a,b)
  %9838 = call float @dx.op.binary.f32(i32 36, float %9819, float %9820)  ; FMin(a,b)
  %9839 = call float @dx.op.binary.f32(i32 35, float %9838, float %9837)  ; FMax(a,b)
  %9840 = call float @dx.op.binary.f32(i32 35, float %9820, float %9821)  ; FMax(a,b)
  %9841 = call float @dx.op.binary.f32(i32 35, float %9819, float %9840)  ; FMax(a,b)
  store float %9835, float* %9753, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9839, float* %9754, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9841, float* %9755, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9842 = sub nsw i32 3, %9825
  %9843 = icmp sgt i32 %9842, 2
  br i1 %9843, label %9844, label %9882

; <label>:9844                                    ; preds = %9818
  %9845 = icmp eq i32 %9613, 0
  %9846 = fsub fast float %9663, %9747
  %9847 = select i1 %9845, float %9846, float %9747
  %9848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9849 = extractvalue %dx.types.CBufRet.f32 %9848, 0
  %9850 = extractvalue %dx.types.CBufRet.f32 %9848, 1
  %9851 = extractvalue %dx.types.CBufRet.f32 %9848, 2
  %9852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9853 = extractvalue %dx.types.CBufRet.f32 %9852, 0
  %9854 = extractvalue %dx.types.CBufRet.f32 %9852, 1
  %9855 = extractvalue %dx.types.CBufRet.f32 %9852, 2
  %9856 = extractvalue %dx.types.CBufRet.f32 %9852, 3
  %9857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9858 = extractvalue %dx.types.CBufRet.f32 %9857, 3
  %9859 = call float @dx.op.binary.f32(i32 36, float %9748, float %9858)  ; FMin(a,b)
  %9860 = fmul fast float %9856, %9847
  %9861 = call float @dx.op.unary.f32(i32 7, float %9860)  ; Saturate(value)
  %9862 = fsub fast float %9853, %9849
  %9863 = fsub fast float %9854, %9850
  %9864 = fsub fast float %9855, %9851
  %9865 = fmul fast float %9861, %9862
  %9866 = fmul fast float %9861, %9863
  %9867 = fmul fast float %9861, %9864
  %9868 = fadd fast float %9865, %9849
  %9869 = fadd fast float %9866, %9850
  %9870 = fadd fast float %9867, %9851
  %9871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9872 = extractvalue %dx.types.CBufRet.f32 %9871, 0
  %9873 = extractvalue %dx.types.CBufRet.f32 %9871, 1
  %9874 = fadd fast float %9873, %9872
  %9875 = call float @dx.op.unary.f32(i32 7, float %9874)  ; Saturate(value)
  %9876 = extractvalue %dx.types.CBufRet.f32 %9871, 2
  %9877 = extractvalue %dx.types.CBufRet.f32 %9871, 3
  %9878 = fadd fast float %9877, %9876
  %9879 = call float @dx.op.unary.f32(i32 7, float %9878)  ; Saturate(value)
  %9880 = fmul fast float %9875, %9859
  %9881 = fmul fast float %9880, %9879
  br label %9964

; <label>:9882                                    ; preds = %9818
  %9883 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9842
  %9884 = load float, float* %9883, align 4, !tbaa !122, !noalias !136
  %9885 = fcmp fast olt float %9884, %9749
  %9886 = icmp sgt i32 %9825, 0
  %9887 = and i1 %9886, %9885
  br i1 %9887, label %9888, label %9925

; <label>:9888                                    ; preds = %9882
  br label %9889

; <label>:9889                                    ; preds = %9918, %9888
  %9890 = phi float [ %9919, %9918 ], [ %9747, %9888 ]
  %9891 = phi float [ %9920, %9918 ], [ %9748, %9888 ]
  %9892 = phi float [ %9900, %9918 ], [ %9884, %9888 ]
  %9893 = phi i32 [ %9897, %9918 ], [ %9842, %9888 ]
  %9894 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9893
  %9895 = load float, float* %9894, align 4, !tbaa !122, !noalias !136
  %9896 = icmp slt i32 %9893, 2
  %9897 = add nsw i32 %9893, 1
  %9898 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9897
  %9899 = load float, float* %9898, align 4, !tbaa !122, !noalias !136
  %9900 = select i1 %9896, float %9899, float %9663
  %9901 = call float @dx.op.binary.f32(i32 36, float %9900, float %9895)  ; FMin(a,b)
  %9902 = call float @dx.op.binary.f32(i32 36, float %9749, float %9901)  ; FMin(a,b)
  %9903 = icmp eq i32 %9613, 0
  %9904 = fadd fast float %9902, %9892
  %9905 = fmul fast float %9904, %9594
  %9906 = fadd fast float %9905, %9607
  br i1 %9903, label %9912, label %9907

; <label>:9907                                    ; preds = %9889
  %9908 = fsub fast float %9902, %9892
  %9909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9908)  ; FMax(a,b)
  %9910 = fmul fast float %9909, %9906
  %9911 = fadd fast float %9910, %9891
  br label %9918

; <label>:9912                                    ; preds = %9889
  %9913 = fsub fast float %9892, %9902
  %9914 = call float @dx.op.unary.f32(i32 6, float %9913)  ; FAbs(value)
  %9915 = fadd fast float %9914, %9890
  %9916 = fmul fast float %9914, %9906
  %9917 = fsub fast float %9891, %9916
  br label %9918

; <label>:9918                                    ; preds = %9912, %9907
  %9919 = phi float [ %9909, %9907 ], [ %9915, %9912 ]
  %9920 = phi float [ %9911, %9907 ], [ %9917, %9912 ]
  %9921 = fcmp fast olt float %9900, %9749
  %9922 = icmp slt i32 %9897, 3
  %9923 = and i1 %9922, %9921
  br i1 %9923, label %9889, label %9924

; <label>:9924                                    ; preds = %9918
  br label %9925

; <label>:9925                                    ; preds = %9924, %9882
  %9926 = phi float [ %9747, %9882 ], [ %9919, %9924 ]
  %9927 = phi float [ %9748, %9882 ], [ %9920, %9924 ]
  %9928 = fsub fast float %9663, %9926
  %9929 = select i1 %9665, float %9926, float %9928
  %9930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9931 = extractvalue %dx.types.CBufRet.f32 %9930, 0
  %9932 = extractvalue %dx.types.CBufRet.f32 %9930, 1
  %9933 = extractvalue %dx.types.CBufRet.f32 %9930, 2
  %9934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9935 = extractvalue %dx.types.CBufRet.f32 %9934, 0
  %9936 = extractvalue %dx.types.CBufRet.f32 %9934, 1
  %9937 = extractvalue %dx.types.CBufRet.f32 %9934, 2
  %9938 = extractvalue %dx.types.CBufRet.f32 %9934, 3
  %9939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9940 = extractvalue %dx.types.CBufRet.f32 %9939, 3
  %9941 = call float @dx.op.binary.f32(i32 36, float %9927, float %9940)  ; FMin(a,b)
  %9942 = fmul fast float %9938, %9929
  %9943 = call float @dx.op.unary.f32(i32 7, float %9942)  ; Saturate(value)
  %9944 = fsub fast float %9935, %9931
  %9945 = fsub fast float %9936, %9932
  %9946 = fsub fast float %9937, %9933
  %9947 = fmul fast float %9943, %9944
  %9948 = fmul fast float %9943, %9945
  %9949 = fmul fast float %9943, %9946
  %9950 = fadd fast float %9947, %9931
  %9951 = fadd fast float %9948, %9932
  %9952 = fadd fast float %9949, %9933
  %9953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9954 = extractvalue %dx.types.CBufRet.f32 %9953, 0
  %9955 = extractvalue %dx.types.CBufRet.f32 %9953, 1
  %9956 = fadd fast float %9955, %9954
  %9957 = call float @dx.op.unary.f32(i32 7, float %9956)  ; Saturate(value)
  %9958 = extractvalue %dx.types.CBufRet.f32 %9953, 2
  %9959 = extractvalue %dx.types.CBufRet.f32 %9953, 3
  %9960 = fadd fast float %9959, %9958
  %9961 = call float @dx.op.unary.f32(i32 7, float %9960)  ; Saturate(value)
  %9962 = fmul fast float %9957, %9941
  %9963 = fmul fast float %9962, %9961
  br label %9964

; <label>:9964                                    ; preds = %9925, %9844, %9679, %9661, %9659
  %9965 = phi float [ %9688, %9679 ], [ %9847, %9844 ], [ %9929, %9925 ], [ 0.000000e+00, %9659 ], [ 0.000000e+00, %9661 ]
  %9966 = phi float [ %9722, %9679 ], [ %9881, %9844 ], [ %9963, %9925 ], [ 0.000000e+00, %9659 ], [ 0.000000e+00, %9661 ]
  %9967 = phi float [ %9709, %9679 ], [ %9868, %9844 ], [ %9950, %9925 ], [ 0.000000e+00, %9659 ], [ 0.000000e+00, %9661 ]
  %9968 = phi float [ %9710, %9679 ], [ %9869, %9844 ], [ %9951, %9925 ], [ 0.000000e+00, %9659 ], [ 0.000000e+00, %9661 ]
  %9969 = phi float [ %9711, %9679 ], [ %9870, %9844 ], [ %9952, %9925 ], [ 0.000000e+00, %9659 ], [ 0.000000e+00, %9661 ]
  %9970 = fmul fast float %9602, %9966
  %9971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9972 = extractvalue %dx.types.CBufRet.f32 %9971, 2
  %9973 = fsub fast float %9609, %9972
  %9974 = fcmp fast olt float %9970, -2.000000e+01
  %9975 = call float @dx.op.unary.f32(i32 21, float %9970)  ; Exp(value)
  %9976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9977 = extractvalue %dx.types.CBufRet.f32 %9976, 2
  %9978 = extractvalue %dx.types.CBufRet.f32 %9976, 3
  %9979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9980 = extractvalue %dx.types.CBufRet.f32 %9979, 2
  %9981 = fmul fast float %9978, %9973
  %9982 = call float @dx.op.unary.f32(i32 7, float %9981)  ; Saturate(value)
  %9983 = fsub fast float 1.000000e+00, %9982
  %9984 = fmul fast float %9594, 5.000000e-01
  %9985 = fadd fast float %9984, 5.000000e-01
  %9986 = call float @dx.op.unary.f32(i32 7, float %9985)  ; Saturate(value)
  %9987 = fsub fast float 1.000000e+00, %9986
  %9988 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9983)  ; FMax(a,b)
  %9989 = fdiv fast float %9987, %9988
  %9990 = fsub fast float %9973, %9551
  %9991 = call float @dx.op.unary.f32(i32 6, float %9990)  ; FAbs(value)
  %9992 = fmul fast float %9991, %9977
  %9993 = call float @dx.op.unary.f32(i32 7, float %9989)  ; Saturate(value)
  %9994 = fsub fast float 1.000000e+00, %9992
  %9995 = fmul fast float %9994, %9993
  %9996 = fadd fast float %9995, %9992
  %9997 = fmul fast float %9980, %9973
  %9998 = call float @dx.op.unary.f32(i32 7, float %9997)  ; Saturate(value)
  %9999 = fsub fast float 1.000000e+00, %9996
  %10000 = fmul fast float %9999, %9998
  %10001 = fadd fast float %10000, %9996
  %10002 = call float @dx.op.unary.f32(i32 7, float %10001)  ; Saturate(value)
  %10003 = fadd fast float %9975, -1.000000e+00
  %10004 = select i1 %9974, float -1.000000e+00, float %10003
  %10005 = fmul fast float %10002, %10004
  %10006 = fadd fast float %10005, 1.000000e+00
  %10007 = fsub fast float -0.000000e+00, %10005
  %10008 = fmul fast float %9967, %10007
  %10009 = fmul fast float %9968, %10007
  %10010 = fmul fast float %9969, %10007
  br label %10011

; <label>:10011                                   ; preds = %9964, %9560
  %10012 = phi float [ %9965, %9964 ], [ 0.000000e+00, %9560 ]
  %10013 = phi float [ %10006, %9964 ], [ 1.000000e+00, %9560 ]
  %10014 = phi float [ %10008, %9964 ], [ 0.000000e+00, %9560 ]
  %10015 = phi float [ %10009, %9964 ], [ 0.000000e+00, %9560 ]
  %10016 = phi float [ %10010, %9964 ], [ 0.000000e+00, %9560 ]
  %10017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10018 = extractvalue %dx.types.CBufRet.f32 %10017, 1
  %10019 = fsub fast float 1.000000e+00, %10013
  %10020 = fmul fast float %10019, %9595
  %10021 = fmul fast float %10020, %10018
  %10022 = fsub fast float %9595, %10021
  br i1 %9588, label %10023, label %10052, !dx.controlflow.hints !172

; <label>:10023                                   ; preds = %10011
  %10024 = fmul fast float %9596, %9585
  %10025 = fadd fast float %10024, %9586
  %10026 = call float @dx.op.unary.f32(i32 7, float %10025)  ; Saturate(value)
  %10027 = fmul fast float %9567, %10022
  %10028 = fsub fast float -0.000000e+00, %10027
  %10029 = fmul fast float %9568, %10022
  %10030 = fsub fast float -0.000000e+00, %10029
  %10031 = call float @dx.op.unary.f32(i32 21, float %10028)  ; Exp(value)
  %10032 = call float @dx.op.unary.f32(i32 21, float %10030)  ; Exp(value)
  %10033 = call float @dx.op.binary.f32(i32 35, float %9575, float %10031)  ; FMax(a,b)
  %10034 = call float @dx.op.binary.f32(i32 35, float %9575, float %10032)  ; FMax(a,b)
  %10035 = fsub fast float %10034, %10033
  %10036 = fmul fast float %10035, %10026
  %10037 = fadd fast float %10036, %10033
  %10038 = call float @dx.op.unary.f32(i32 7, float %10037)  ; Saturate(value)
  %10039 = fsub fast float %9572, %9577
  %10040 = fsub fast float %9573, %9578
  %10041 = fsub fast float %9574, %9579
  %10042 = fmul fast float %10026, %10039
  %10043 = fmul fast float %10026, %10040
  %10044 = fmul fast float %10026, %10041
  %10045 = fadd fast float %10042, %9577
  %10046 = fadd fast float %10043, %9578
  %10047 = fadd fast float %10044, %9579
  %10048 = fsub fast float 1.000000e+00, %10038
  %10049 = fmul fast float %10048, %10045
  %10050 = fmul fast float %10048, %10046
  %10051 = fmul fast float %10048, %10047
  br label %10111

; <label>:10052                                   ; preds = %10011
  %10053 = fmul fast float %10022, %9584
  %10054 = call float @dx.op.unary.f32(i32 7, float %10053)  ; Saturate(value)
  %10055 = fsub fast float 2.000000e+00, %10054
  %10056 = fmul fast float %10054, 9.921875e-01
  %10057 = fmul fast float %10056, %10055
  %10058 = fadd fast float %10057, 3.906250e-03
  %10059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %10058, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10060 = extractvalue %dx.types.ResRet.f32 %10059, 0
  %10061 = fsub fast float %10054, %10060
  %10062 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10061)  ; FMax(a,b)
  %10063 = fmul fast float %9570, %9551
  %10064 = call float @dx.op.unary.f32(i32 6, float %10063)  ; FAbs(value)
  %10065 = fcmp fast ogt float %10064, 0x3EB0C6F7A0000000
  br i1 %10065, label %10066, label %10072, !dx.controlflow.hints !173

; <label>:10066                                   ; preds = %10052
  %10067 = fmul fast float %10063, 0xBFF7154760000000
  %10068 = call float @dx.op.unary.f32(i32 21, float %10067)  ; Exp(value)
  %10069 = fsub fast float 1.000000e+00, %10068
  %10070 = fdiv fast float %10069, %10063
  %10071 = fmul fast float %10070, %9580
  br label %10072

; <label>:10072                                   ; preds = %10066, %10052
  %10073 = phi float [ %10071, %10066 ], [ %9580, %10052 ]
  %10074 = fadd fast float %10073, %9582
  %10075 = fmul fast float %10074, %10062
  %10076 = fmul fast float %9567, %10075
  %10077 = fsub fast float -0.000000e+00, %10076
  %10078 = fmul fast float %9568, %10075
  %10079 = fsub fast float -0.000000e+00, %10078
  %10080 = fmul fast float %9569, %10075
  %10081 = fsub fast float -0.000000e+00, %10080
  %10082 = call float @dx.op.unary.f32(i32 21, float %10077)  ; Exp(value)
  %10083 = call float @dx.op.unary.f32(i32 21, float %10079)  ; Exp(value)
  %10084 = call float @dx.op.unary.f32(i32 21, float %10081)  ; Exp(value)
  %10085 = fmul fast float %9596, %9596
  %10086 = fadd fast float %10085, 1.000000e+00
  %10087 = fmul fast float %10086, 0x3FAE8EC8A0000000
  %10088 = fmul fast float %10087, %9577
  %10089 = fmul fast float %10087, %9578
  %10090 = fmul fast float %10087, %9579
  %10091 = fmul fast float %9596, %9575
  %10092 = fsub fast float 1.000000e+00, %10091
  %10093 = fmul fast float %9575, %9575
  %10094 = fsub fast float 1.000000e+00, %10093
  %10095 = fmul fast float %10094, 0x3FB45F3060000000
  %10096 = fmul fast float %10092, %10092
  %10097 = fdiv fast float 1.000000e+00, %10096
  %10098 = fmul fast float %10095, %10097
  %10099 = fmul fast float %10098, %9572
  %10100 = fmul fast float %10098, %9573
  %10101 = fmul fast float %10098, %9574
  %10102 = fadd fast float %10099, %10088
  %10103 = fadd fast float %10100, %10089
  %10104 = fadd fast float %10101, %10090
  %10105 = fsub fast float 1.000000e+00, %10082
  %10106 = fsub fast float 1.000000e+00, %10083
  %10107 = fsub fast float 1.000000e+00, %10084
  %10108 = fmul fast float %10102, %10105
  %10109 = fmul fast float %10103, %10106
  %10110 = fmul fast float %10104, %10107
  br label %10111

; <label>:10111                                   ; preds = %10072, %10023
  %10112 = phi float [ %10049, %10023 ], [ %10108, %10072 ]
  %10113 = phi float [ %10050, %10023 ], [ %10109, %10072 ]
  %10114 = phi float [ %10051, %10023 ], [ %10110, %10072 ]
  %10115 = phi float [ %10038, %10023 ], [ %10082, %10072 ]
  %10116 = phi float [ %10038, %10023 ], [ %10083, %10072 ]
  %10117 = phi float [ %10038, %10023 ], [ %10084, %10072 ]
  br i1 %9604, label %10118, label %10316, !dx.controlflow.hints !174

; <label>:10118                                   ; preds = %10111
  %10119 = extractvalue %dx.types.CBufRet.f32 %10017, 0
  %10120 = fmul fast float %10119, %10019
  %10121 = fsub fast float %10014, %10112
  %10122 = fsub fast float %10015, %10113
  %10123 = fsub fast float %10016, %10114
  %10124 = fmul fast float %10120, %10121
  %10125 = fmul fast float %10120, %10122
  %10126 = fmul fast float %10120, %10123
  %10127 = fadd fast float %10124, %10112
  %10128 = fadd fast float %10125, %10113
  %10129 = fadd fast float %10126, %10114
  %10130 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10115)  ; FMax(a,b)
  %10131 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10116)  ; FMax(a,b)
  %10132 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10117)  ; FMax(a,b)
  %10133 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10013)  ; FMax(a,b)
  %10134 = call float @dx.op.binary.f32(i32 35, float %10012, float %10022)  ; FMax(a,b)
  %10135 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10134)  ; FMax(a,b)
  %10136 = fdiv fast float %10012, %10135
  %10137 = call float @dx.op.unary.f32(i32 7, float %10136)  ; Saturate(value)
  %10138 = fdiv fast float %10022, %10135
  %10139 = call float @dx.op.unary.f32(i32 7, float %10138)  ; Saturate(value)
  %10140 = fcmp fast une float %10133, 1.000000e+00
  br i1 %10140, label %10141, label %10154, !dx.controlflow.hints !175

; <label>:10141                                   ; preds = %10118
  %10142 = call float @dx.op.unary.f32(i32 23, float %10133)  ; Log(value)
  %10143 = fmul fast float %10142, 0x3FE62E4300000000
  %10144 = fmul fast float %10014, %10143
  %10145 = fsub fast float -0.000000e+00, %10144
  %10146 = fmul fast float %10015, %10143
  %10147 = fsub fast float -0.000000e+00, %10146
  %10148 = fmul fast float %10016, %10143
  %10149 = fsub fast float -0.000000e+00, %10148
  %10150 = fsub fast float 1.000000e+00, %10133
  %10151 = fdiv fast float %10145, %10150
  %10152 = fdiv fast float %10147, %10150
  %10153 = fdiv fast float %10149, %10150
  br label %10154

; <label>:10154                                   ; preds = %10141, %10118
  %10155 = phi float [ %10151, %10141 ], [ %10014, %10118 ]
  %10156 = phi float [ %10152, %10141 ], [ %10015, %10118 ]
  %10157 = phi float [ %10153, %10141 ], [ %10016, %10118 ]
  %10158 = phi float [ %10143, %10141 ], [ 0.000000e+00, %10118 ]
  %10159 = fcmp fast une float %10130, 1.000000e+00
  br i1 %10159, label %10160, label %10167, !dx.controlflow.hints !176

; <label>:10160                                   ; preds = %10154
  %10161 = call float @dx.op.unary.f32(i32 23, float %10130)  ; Log(value)
  %10162 = fmul fast float %10161, 0x3FE62E4300000000
  %10163 = fmul fast float %10127, %10162
  %10164 = fsub fast float -0.000000e+00, %10163
  %10165 = fsub fast float 1.000000e+00, %10130
  %10166 = fdiv fast float %10164, %10165
  br label %10167

; <label>:10167                                   ; preds = %10160, %10154
  %10168 = phi float [ %10166, %10160 ], [ %10127, %10154 ]
  %10169 = phi float [ %10162, %10160 ], [ 0.000000e+00, %10154 ]
  %10170 = fcmp fast une float %10131, 1.000000e+00
  br i1 %10170, label %10171, label %10178, !dx.controlflow.hints !176

; <label>:10171                                   ; preds = %10167
  %10172 = call float @dx.op.unary.f32(i32 23, float %10131)  ; Log(value)
  %10173 = fmul fast float %10172, 0x3FE62E4300000000
  %10174 = fmul fast float %10128, %10173
  %10175 = fsub fast float -0.000000e+00, %10174
  %10176 = fsub fast float 1.000000e+00, %10131
  %10177 = fdiv fast float %10175, %10176
  br label %10178

; <label>:10178                                   ; preds = %10171, %10167
  %10179 = phi float [ %10177, %10171 ], [ %10128, %10167 ]
  %10180 = phi float [ %10173, %10171 ], [ 0.000000e+00, %10167 ]
  %10181 = fcmp fast une float %10132, 1.000000e+00
  br i1 %10181, label %10182, label %10189, !dx.controlflow.hints !176

; <label>:10182                                   ; preds = %10178
  %10183 = call float @dx.op.unary.f32(i32 23, float %10132)  ; Log(value)
  %10184 = fmul fast float %10183, 0x3FE62E4300000000
  %10185 = fmul fast float %10129, %10184
  %10186 = fsub fast float -0.000000e+00, %10185
  %10187 = fsub fast float 1.000000e+00, %10132
  %10188 = fdiv fast float %10186, %10187
  br label %10189

; <label>:10189                                   ; preds = %10182, %10178
  %10190 = phi float [ %10188, %10182 ], [ %10129, %10178 ]
  %10191 = phi float [ %10184, %10182 ], [ 0.000000e+00, %10178 ]
  %10192 = fmul fast float %10155, %10139
  %10193 = fmul fast float %10156, %10139
  %10194 = fmul fast float %10157, %10139
  %10195 = fmul fast float %10158, %10139
  %10196 = fmul fast float %10168, %10137
  %10197 = fmul fast float %10179, %10137
  %10198 = fmul fast float %10190, %10137
  %10199 = fmul fast float %10169, %10137
  %10200 = fmul fast float %10180, %10137
  %10201 = fmul fast float %10191, %10137
  %10202 = fadd fast float %10196, %10192
  %10203 = fadd fast float %10197, %10193
  %10204 = fadd fast float %10198, %10194
  %10205 = fadd fast float %10199, %10195
  %10206 = fadd fast float %10200, %10195
  %10207 = fadd fast float %10201, %10195
  %10208 = fcmp fast une float %10205, 0.000000e+00
  br i1 %10208, label %10209, label %10216, !dx.controlflow.hints !177

; <label>:10209                                   ; preds = %10189
  %10210 = fmul fast float %10205, 0x3FF7154760000000
  %10211 = call float @dx.op.unary.f32(i32 21, float %10210)  ; Exp(value)
  %10212 = fsub fast float 1.000000e+00, %10211
  %10213 = fmul fast float %10202, %10212
  %10214 = fsub fast float -0.000000e+00, %10213
  %10215 = fdiv fast float %10214, %10205
  br label %10216

; <label>:10216                                   ; preds = %10209, %10189
  %10217 = phi float [ %10211, %10209 ], [ 1.000000e+00, %10189 ]
  %10218 = phi float [ %10215, %10209 ], [ %10202, %10189 ]
  %10219 = fcmp fast une float %10206, 0.000000e+00
  br i1 %10219, label %10220, label %10227, !dx.controlflow.hints !177

; <label>:10220                                   ; preds = %10216
  %10221 = fmul fast float %10206, 0x3FF7154760000000
  %10222 = call float @dx.op.unary.f32(i32 21, float %10221)  ; Exp(value)
  %10223 = fsub fast float 1.000000e+00, %10222
  %10224 = fmul fast float %10203, %10223
  %10225 = fsub fast float -0.000000e+00, %10224
  %10226 = fdiv fast float %10225, %10206
  br label %10227

; <label>:10227                                   ; preds = %10220, %10216
  %10228 = phi float [ %10222, %10220 ], [ 1.000000e+00, %10216 ]
  %10229 = phi float [ %10226, %10220 ], [ %10203, %10216 ]
  %10230 = fcmp fast une float %10207, 0.000000e+00
  br i1 %10230, label %10231, label %10238, !dx.controlflow.hints !177

; <label>:10231                                   ; preds = %10227
  %10232 = fmul fast float %10207, 0x3FF7154760000000
  %10233 = call float @dx.op.unary.f32(i32 21, float %10232)  ; Exp(value)
  %10234 = fsub fast float 1.000000e+00, %10233
  %10235 = fmul fast float %10204, %10234
  %10236 = fsub fast float -0.000000e+00, %10235
  %10237 = fdiv fast float %10236, %10207
  br label %10238

; <label>:10238                                   ; preds = %10231, %10227
  %10239 = phi float [ %10233, %10231 ], [ 1.000000e+00, %10227 ]
  %10240 = phi float [ %10237, %10231 ], [ %10204, %10227 ]
  %10241 = fcmp fast ogt float %10137, %10139
  br i1 %10241, label %10242, label %10262

; <label>:10242                                   ; preds = %10238
  %10243 = fsub fast float 1.000000e+00, %10139
  %10244 = fmul fast float %10155, %10243
  %10245 = fmul fast float %10156, %10243
  %10246 = fmul fast float %10157, %10243
  %10247 = fmul fast float %10158, %10243
  %10248 = fcmp fast une float %10247, 0.000000e+00
  br i1 %10248, label %10249, label %10300, !dx.controlflow.hints !178

; <label>:10249                                   ; preds = %10242
  %10250 = fmul fast float %10247, 0x3FF7154760000000
  %10251 = call float @dx.op.unary.f32(i32 21, float %10250)  ; Exp(value)
  %10252 = fsub fast float 1.000000e+00, %10251
  %10253 = fmul fast float %10244, %10252
  %10254 = fsub fast float -0.000000e+00, %10253
  %10255 = fmul fast float %10245, %10252
  %10256 = fsub fast float -0.000000e+00, %10255
  %10257 = fmul fast float %10246, %10252
  %10258 = fsub fast float -0.000000e+00, %10257
  %10259 = fdiv fast float %10254, %10247
  %10260 = fdiv fast float %10256, %10247
  %10261 = fdiv fast float %10258, %10247
  br label %10300

; <label>:10262                                   ; preds = %10238
  %10263 = fsub fast float 1.000000e+00, %10137
  %10264 = fmul fast float %10168, %10263
  %10265 = fmul fast float %10179, %10263
  %10266 = fmul fast float %10190, %10263
  %10267 = fmul fast float %10169, %10263
  %10268 = fmul fast float %10180, %10263
  %10269 = fmul fast float %10191, %10263
  %10270 = fcmp fast une float %10267, 0.000000e+00
  br i1 %10270, label %10271, label %10278, !dx.controlflow.hints !177

; <label>:10271                                   ; preds = %10262
  %10272 = fmul fast float %10267, 0x3FF7154760000000
  %10273 = call float @dx.op.unary.f32(i32 21, float %10272)  ; Exp(value)
  %10274 = fsub fast float 1.000000e+00, %10273
  %10275 = fmul fast float %10264, %10274
  %10276 = fsub fast float -0.000000e+00, %10275
  %10277 = fdiv fast float %10276, %10267
  br label %10278

; <label>:10278                                   ; preds = %10271, %10262
  %10279 = phi float [ %10277, %10271 ], [ %10264, %10262 ]
  %10280 = phi float [ %10273, %10271 ], [ 1.000000e+00, %10262 ]
  %10281 = fcmp fast une float %10268, 0.000000e+00
  br i1 %10281, label %10282, label %10289, !dx.controlflow.hints !177

; <label>:10282                                   ; preds = %10278
  %10283 = fmul fast float %10268, 0x3FF7154760000000
  %10284 = call float @dx.op.unary.f32(i32 21, float %10283)  ; Exp(value)
  %10285 = fsub fast float 1.000000e+00, %10284
  %10286 = fmul fast float %10265, %10285
  %10287 = fsub fast float -0.000000e+00, %10286
  %10288 = fdiv fast float %10287, %10268
  br label %10289

; <label>:10289                                   ; preds = %10282, %10278
  %10290 = phi float [ %10288, %10282 ], [ %10265, %10278 ]
  %10291 = phi float [ %10284, %10282 ], [ 1.000000e+00, %10278 ]
  %10292 = fcmp fast une float %10269, 0.000000e+00
  br i1 %10292, label %10293, label %10300, !dx.controlflow.hints !177

; <label>:10293                                   ; preds = %10289
  %10294 = fmul fast float %10269, 0x3FF7154760000000
  %10295 = call float @dx.op.unary.f32(i32 21, float %10294)  ; Exp(value)
  %10296 = fsub fast float 1.000000e+00, %10295
  %10297 = fmul fast float %10266, %10296
  %10298 = fsub fast float -0.000000e+00, %10297
  %10299 = fdiv fast float %10298, %10269
  br label %10300

; <label>:10300                                   ; preds = %10293, %10289, %10249, %10242
  %10301 = phi float [ %10299, %10293 ], [ %10261, %10249 ], [ %10246, %10242 ], [ %10266, %10289 ]
  %10302 = phi float [ %10290, %10293 ], [ %10260, %10249 ], [ %10245, %10242 ], [ %10290, %10289 ]
  %10303 = phi float [ %10279, %10293 ], [ %10259, %10249 ], [ %10244, %10242 ], [ %10279, %10289 ]
  %10304 = phi float [ %10295, %10293 ], [ %10251, %10249 ], [ 1.000000e+00, %10242 ], [ 1.000000e+00, %10289 ]
  %10305 = phi float [ %10291, %10293 ], [ %10251, %10249 ], [ 1.000000e+00, %10242 ], [ %10291, %10289 ]
  %10306 = phi float [ %10280, %10293 ], [ %10251, %10249 ], [ 1.000000e+00, %10242 ], [ %10280, %10289 ]
  %10307 = fmul fast float %10306, %10218
  %10308 = fmul fast float %10305, %10229
  %10309 = fmul fast float %10304, %10240
  %10310 = fadd fast float %10307, %10303
  %10311 = fadd fast float %10308, %10302
  %10312 = fadd fast float %10309, %10301
  %10313 = fmul fast float %10306, %10217
  %10314 = fmul fast float %10305, %10228
  %10315 = fmul fast float %10304, %10239
  br label %10316

; <label>:10316                                   ; preds = %10300, %10111
  %10317 = phi float [ %10315, %10300 ], [ %10117, %10111 ]
  %10318 = phi float [ %10314, %10300 ], [ %10116, %10111 ]
  %10319 = phi float [ %10313, %10300 ], [ %10115, %10111 ]
  %10320 = phi float [ %10312, %10300 ], [ %10114, %10111 ]
  %10321 = phi float [ %10311, %10300 ], [ %10113, %10111 ]
  %10322 = phi float [ %10310, %10300 ], [ %10112, %10111 ]
  %10323 = fmul fast float %10322, %9268
  %10324 = fmul fast float %10321, %9268
  %10325 = fmul fast float %10320, %9268
  %10326 = fmul fast float %10319, %9559
  %10327 = call float @dx.op.dot3.f32(i32 55, float %10319, float %10318, float %10317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10328 = call float @dx.op.dot3.f32(i32 55, float %10323, float %10324, float %10325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10329 = select i1 %232, float %10327, float %10319
  %10330 = select i1 %232, float %10327, float %10318
  %10331 = select i1 %232, float 1.000000e+00, float %10317
  %10332 = select i1 %232, float %10328, float %10323
  %10333 = select i1 %232, float 0.000000e+00, float %10324
  %10334 = select i1 %232, float 0.000000e+00, float %10325
  %10335 = fmul fast float %10329, %9553
  %10336 = fmul fast float %10330, %9554
  %10337 = fmul fast float %10331, %9555
  %10338 = fadd fast float %10335, %10332
  %10339 = fadd fast float %10336, %10333
  %10340 = fadd fast float %10334, %10337
  %10341 = fmul fast float %10329, %9556
  %10342 = fmul fast float %10330, %9557
  %10343 = fmul fast float %10331, %9558
  %10344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10345 = extractvalue %dx.types.CBufRet.i32 %10344, 0
  %10346 = icmp eq i32 %10345, 0
  br i1 %10346, label %10714, label %10347, !dx.controlflow.hints !179

; <label>:10347                                   ; preds = %10316
  %10348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10349 = extractvalue %dx.types.CBufRet.f32 %10348, 2
  %10350 = extractvalue %dx.types.CBufRet.f32 %10348, 3
  %10351 = fmul fast float %10349, %111
  %10352 = fmul fast float %10350, %112
  %10353 = fmul fast float %10351, 2.000000e+00
  %10354 = fmul fast float %10352, 2.000000e+00
  %10355 = fsub fast float 1.000000e+00, %10353
  %10356 = fsub fast float 1.000000e+00, %10354
  %10357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %10358 = extractvalue %dx.types.CBufRet.f32 %10357, 0
  %10359 = extractvalue %dx.types.CBufRet.f32 %10357, 1
  %10360 = extractvalue %dx.types.CBufRet.f32 %10357, 2
  %10361 = fmul fast float %10355, %10358
  %10362 = fmul fast float %10355, %10359
  %10363 = fmul fast float %10355, %10360
  %10364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %10365 = extractvalue %dx.types.CBufRet.f32 %10364, 0
  %10366 = extractvalue %dx.types.CBufRet.f32 %10364, 1
  %10367 = extractvalue %dx.types.CBufRet.f32 %10364, 2
  %10368 = fmul fast float %10356, %10365
  %10369 = fmul fast float %10356, %10366
  %10370 = fmul fast float %10356, %10367
  %10371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %10372 = extractvalue %dx.types.CBufRet.f32 %10371, 0
  %10373 = extractvalue %dx.types.CBufRet.f32 %10371, 1
  %10374 = extractvalue %dx.types.CBufRet.f32 %10371, 2
  %10375 = fadd fast float %10368, %10372
  %10376 = fadd fast float %10375, %10361
  %10377 = fadd fast float %10369, %10373
  %10378 = fadd fast float %10377, %10362
  %10379 = fadd fast float %10370, %10374
  %10380 = fadd fast float %10379, %10363
  %10381 = fmul fast float %10376, %9552
  %10382 = fmul fast float %10378, %9552
  %10383 = fmul fast float %10380, %9552
  %10384 = fmul fast float %10381, %10381
  %10385 = fmul fast float %10382, %10382
  %10386 = fadd fast float %10384, %10385
  %10387 = fmul fast float %10383, %10383
  %10388 = fadd fast float %10386, %10387
  %10389 = call float @dx.op.unary.f32(i32 24, float %10388)  ; Sqrt(value)
  %10390 = extractvalue %dx.types.CBufRet.f32 %9279, 0
  %10391 = fsub fast float %10389, %10390
  %10392 = extractvalue %dx.types.CBufRet.f32 %9279, 2
  %10393 = fmul fast float %10391, %10392
  %10394 = call float @dx.op.unary.f32(i32 7, float %10393)  ; Saturate(value)
  %10395 = fadd fast float %10394, -5.000000e-01
  %10396 = fmul fast float %10395, 2.000000e+00
  %10397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %10398 = extractvalue %dx.types.CBufRet.f32 %10397, 2
  %10399 = call float @dx.op.binary.f32(i32 36, float %10398, float %10396)  ; FMin(a,b)
  %10400 = fsub fast float -0.000000e+00, %10398
  %10401 = fcmp fast ogt float %10399, %10400
  br i1 %10401, label %10402, label %10714, !dx.controlflow.hints !180

; <label>:10402                                   ; preds = %10347
  %10403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %10404 = extractvalue %dx.types.CBufRet.f32 %10403, 3
  %10405 = fcmp fast ogt float %10404, 0.000000e+00
  br i1 %10405, label %10406, label %10481, !dx.controlflow.hints !181

; <label>:10406                                   ; preds = %10402
  %10407 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %10408 = extractvalue %dx.types.Dimensions %10407, 0
  %10409 = sitofp i32 %10408 to float
  %10410 = extractvalue %dx.types.Dimensions %10407, 1
  %10411 = sitofp i32 %10410 to float
  %10412 = fmul fast float %10351, %10409
  %10413 = fmul fast float %10352, %10411
  %10414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10415 = extractvalue %dx.types.CBufRet.f32 %10414, 1
  %10416 = fsub fast float -0.000000e+00, %10415
  %10417 = fptoui float %10416 to i32
  %10418 = fptoui float %10412 to i32
  %10419 = fptoui float %10413 to i32
  %10420 = and i32 %10417, 31
  %10421 = lshr i32 %10418, %10420
  %10422 = lshr i32 %10419, %10420
  %10423 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %10417, i32 %10421, i32 %10422, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %10424 = extractvalue %dx.types.ResRet.f32 %10423, 0
  %10425 = fcmp fast olt float %10424, -1.000000e+00
  %10426 = fcmp fast ogt float %10424, -1.000000e+00
  %10427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %10428 = extractvalue %dx.types.CBufRet.f32 %10427, 1
  %10429 = select i1 %10426, float %10428, float 1.000000e+00
  %10430 = fadd fast float %10424, 1.000000e+00
  %10431 = fmul fast float %10429, %10430
  %10432 = call float @dx.op.unary.f32(i32 6, float %10431)  ; FAbs(value)
  %10433 = extractvalue %dx.types.CBufRet.f32 %10427, 3
  %10434 = fcmp fast oge float %10432, %10433
  %10435 = select i1 %10434, float 0x4197782600000000, float %10432
  %10436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %10437 = extractvalue %dx.types.CBufRet.f32 %10436, 0
  %10438 = extractvalue %dx.types.CBufRet.f32 %10436, 1
  %10439 = extractvalue %dx.types.CBufRet.f32 %10436, 2
  %10440 = select i1 %10425, float %10437, float %10358
  %10441 = select i1 %10425, float %10438, float %10359
  %10442 = select i1 %10425, float %10439, float %10360
  %10443 = fmul fast float %10440, %10355
  %10444 = fmul fast float %10441, %10355
  %10445 = fmul fast float %10442, %10355
  %10446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %10447 = extractvalue %dx.types.CBufRet.f32 %10446, 0
  %10448 = extractvalue %dx.types.CBufRet.f32 %10446, 1
  %10449 = extractvalue %dx.types.CBufRet.f32 %10446, 2
  %10450 = select i1 %10425, float %10447, float %10365
  %10451 = select i1 %10425, float %10448, float %10366
  %10452 = select i1 %10425, float %10449, float %10367
  %10453 = fmul fast float %10450, %10356
  %10454 = fmul fast float %10451, %10356
  %10455 = fmul fast float %10452, %10356
  %10456 = fadd fast float %10453, %10443
  %10457 = fadd fast float %10454, %10444
  %10458 = fadd fast float %10455, %10445
  %10459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %10460 = extractvalue %dx.types.CBufRet.f32 %10459, 0
  %10461 = extractvalue %dx.types.CBufRet.f32 %10459, 1
  %10462 = extractvalue %dx.types.CBufRet.f32 %10459, 2
  %10463 = select i1 %10425, float %10460, float %10372
  %10464 = select i1 %10425, float %10461, float %10373
  %10465 = select i1 %10425, float %10462, float %10374
  %10466 = fadd fast float %10456, %10463
  %10467 = fadd fast float %10457, %10464
  %10468 = fadd fast float %10458, %10465
  %10469 = fmul fast float %10466, %10435
  %10470 = fmul fast float %10467, %10435
  %10471 = fmul fast float %10468, %10435
  %10472 = fmul fast float %10469, %10469
  %10473 = fmul fast float %10470, %10470
  %10474 = fadd fast float %10472, %10473
  %10475 = fmul fast float %10471, %10471
  %10476 = fadd fast float %10474, %10475
  %10477 = call float @dx.op.unary.f32(i32 24, float %10476)  ; Sqrt(value)
  %10478 = fsub fast float %10477, %10390
  %10479 = fmul fast float %10478, %10392
  %10480 = call float @dx.op.unary.f32(i32 7, float %10479)  ; Saturate(value)
  br label %10481

; <label>:10481                                   ; preds = %10406, %10402
  %10482 = phi float [ %10480, %10406 ], [ 1.000000e+00, %10402 ]
  %10483 = fmul fast float %10399, 5.000000e-01
  %10484 = fadd fast float %10483, 5.000000e-01
  %10485 = call float @dx.op.unary.f32(i32 22, float %10484)  ; Frc(value)
  %10486 = call float @dx.op.unary.f32(i32 27, float %10485)  ; Round_ni(value)
  %10487 = call float @dx.op.unary.f32(i32 22, float %10485)  ; Frc(value)
  %10488 = fmul fast float %10487, 2.000000e+00
  %10489 = fadd fast float %10488, -1.000000e+00
  %10490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %10351, float %10352, float %10486, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10491 = extractvalue %dx.types.ResRet.f32 %10490, 0
  %10492 = extractvalue %dx.types.ResRet.f32 %10490, 1
  %10493 = extractvalue %dx.types.ResRet.f32 %10490, 2
  %10494 = extractvalue %dx.types.ResRet.f32 %10490, 3
  %10495 = fadd fast float %10491, -5.000000e-01
  %10496 = fadd fast float %10493, -5.000000e-01
  %10497 = fmul fast float %10495, 0xBFD5555560000000
  %10498 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %10496, float %10497)  ; FMad(a,b,c)
  %10499 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %10492, float 0.000000e+00)  ; FMad(a,b,c)
  %10500 = fadd fast float %10499, %10494
  %10501 = fmul fast float %10495, -7.500000e-01
  %10502 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %10496, float %10501)  ; FMad(a,b,c)
  %10503 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %10492, float 0.000000e+00)  ; FMad(a,b,c)
  %10504 = fadd fast float %10503, %10494
  %10505 = call float @dx.op.binary.f32(i32 35, float %10498, float -1.000000e+00)  ; FMax(a,b)
  %10506 = call float @dx.op.binary.f32(i32 35, float %10500, float -1.000000e+00)  ; FMax(a,b)
  %10507 = call float @dx.op.binary.f32(i32 35, float %10502, float -1.000000e+00)  ; FMax(a,b)
  %10508 = call float @dx.op.binary.f32(i32 35, float %10504, float -1.000000e+00)  ; FMax(a,b)
  %10509 = call float @dx.op.binary.f32(i32 36, float %10505, float 1.000000e+00)  ; FMin(a,b)
  %10510 = call float @dx.op.binary.f32(i32 36, float %10506, float 1.000000e+00)  ; FMin(a,b)
  %10511 = call float @dx.op.binary.f32(i32 36, float %10507, float 1.000000e+00)  ; FMin(a,b)
  %10512 = call float @dx.op.binary.f32(i32 36, float %10508, float 1.000000e+00)  ; FMin(a,b)
  %10513 = fcmp fast olt float %10509, 0x3FEFFF8020000000
  br i1 %10513, label %10514, label %10629, !dx.controlflow.hints !182

; <label>:10514                                   ; preds = %10481
  %10515 = extractvalue %dx.types.CBufRet.f32 %10397, 3
  %10516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %10517 = extractvalue %dx.types.CBufRet.f32 %10516, 0
  %10518 = extractvalue %dx.types.CBufRet.f32 %10516, 1
  %10519 = extractvalue %dx.types.CBufRet.f32 %10516, 2
  %10520 = extractvalue %dx.types.CBufRet.f32 %10516, 3
  %10521 = fsub fast float %10517, %10509
  %10522 = fsub fast float %10518, %10510
  %10523 = fsub fast float %10519, %10511
  %10524 = fsub fast float %10520, %10512
  %10525 = fmul fast float %10521, %10515
  %10526 = fmul fast float %10522, %10515
  %10527 = fmul fast float %10523, %10515
  %10528 = fmul fast float %10524, %10515
  %10529 = fadd fast float %10525, %10509
  %10530 = fadd fast float %10526, %10510
  %10531 = fsub fast float -0.000000e+00, %10530
  %10532 = fadd fast float %10527, %10511
  %10533 = fadd fast float %10528, %10512
  %10534 = fmul fast float %10529, %10529
  %10535 = fsub fast float %10530, %10534
  %10536 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10535)  ; FMax(a,b)
  %10537 = fdiv fast float 1.000000e+00, %10536
  %10538 = fmul fast float %10530, %10529
  %10539 = fsub fast float %10532, %10538
  %10540 = fsub fast float %10489, %10529
  %10541 = fmul fast float %10489, %10489
  %10542 = fsub fast float %10541, %10530
  %10543 = fmul fast float %10540, %10537
  %10544 = fmul fast float %10543, %10539
  %10545 = fsub fast float %10542, %10544
  %10546 = fmul fast float %10530, %10530
  %10547 = fsub fast float %10533, %10546
  %10548 = fmul fast float %10539, %10539
  %10549 = fmul fast float %10548, %10537
  %10550 = fsub fast float %10547, %10549
  %10551 = fdiv fast float %10545, %10550
  %10552 = fmul fast float %10539, %10551
  %10553 = fsub fast float %10540, %10552
  %10554 = fmul fast float %10553, %10537
  %10555 = fmul fast float %10554, %10529
  %10556 = fsub fast float 1.000000e+00, %10555
  %10557 = fmul fast float %10530, %10551
  %10558 = fsub fast float %10556, %10557
  %10559 = fmul fast float %10554, %10554
  %10560 = fmul fast float %10551, 4.000000e+00
  %10561 = fmul fast float %10560, %10558
  %10562 = fsub fast float %10559, %10561
  %10563 = call float @dx.op.unary.f32(i32 24, float %10562)  ; Sqrt(value)
  %10564 = fcmp fast oge float %10554, 0.000000e+00
  %10565 = fsub fast float -0.000000e+00, %10563
  %10566 = select i1 %10564, float %10565, float %10563
  %10567 = fsub fast float %10566, %10554
  %10568 = fdiv fast float %10567, %10551
  %10569 = fdiv fast float %10558, %10567
  %10570 = fmul fast float %10568, 5.000000e-01
  %10571 = fmul fast float %10569, 2.000000e+00
  %10572 = select i1 %10564, float %10570, float %10571
  %10573 = select i1 %10564, float %10571, float %10570
  %10574 = call float @dx.op.binary.f32(i32 35, float %10572, float %10573)  ; FMax(a,b)
  %10575 = call float @dx.op.binary.f32(i32 36, float %10572, float %10573)  ; FMin(a,b)
  %10576 = fcmp fast ogt float %10489, %10575
  br i1 %10576, label %10577, label %10587

; <label>:10577                                   ; preds = %10514
  %10578 = fsub fast float %10489, %10575
  %10579 = fsub fast float %10574, %10575
  %10580 = fmul fast float %10578, %10579
  %10581 = fmul fast float %10574, %10489
  %10582 = fadd fast float %10574, %10489
  %10583 = fmul fast float %10582, %10529
  %10584 = fadd fast float %10581, %10530
  %10585 = fsub fast float %10584, %10583
  %10586 = fdiv fast float %10585, %10580
  br label %10587

; <label>:10587                                   ; preds = %10577, %10514
  %10588 = phi float [ %10586, %10577 ], [ 0.000000e+00, %10514 ]
  %10589 = fcmp fast ogt float %10489, %10574
  %10590 = fsub fast float %10489, %10574
  br i1 %10589, label %10591, label %10601

; <label>:10591                                   ; preds = %10587
  %10592 = fsub fast float %10574, %10575
  %10593 = fmul fast float %10592, %10590
  %10594 = fmul fast float %10575, %10489
  %10595 = fadd fast float %10575, %10489
  %10596 = fmul fast float %10595, %10529
  %10597 = fsub fast float %10531, %10594
  %10598 = fadd fast float %10597, %10596
  %10599 = fdiv fast float %10598, %10593
  %10600 = fadd fast float %10599, %10588
  br label %10601

; <label>:10601                                   ; preds = %10591, %10587
  %10602 = phi float [ %10600, %10591 ], [ %10588, %10587 ]
  %10603 = fsub fast float %10489, %10575
  %10604 = fmul fast float %10603, %10590
  %10605 = fmul fast float %10575, %10574
  %10606 = fadd fast float %10575, %10574
  %10607 = fmul fast float %10606, %10529
  %10608 = fadd fast float %10605, %10530
  %10609 = fsub fast float %10608, %10607
  %10610 = fdiv fast float %10609, %10604
  %10611 = call float @dx.op.unary.f32(i32 7, float %10602)  ; Saturate(value)
  %10612 = fcmp fast oeq float %9280, 0.000000e+00
  %10613 = extractvalue %dx.types.CBufRet.f32 %10397, 0
  %10614 = fcmp fast oeq float %10613, 0.000000e+00
  %10615 = or i1 %10612, %10614
  %10616 = fmul fast float %10613, 2.000000e+00
  %10617 = fadd fast float %10398, %10399
  %10618 = fdiv fast float %10617, %10616
  %10619 = call float @dx.op.unary.f32(i32 7, float %10618)  ; Saturate(value)
  %10620 = fmul fast float %10619, 2.000000e+00
  %10621 = fsub fast float 3.000000e+00, %10620
  %10622 = fmul fast float %10619, %10619
  %10623 = fmul fast float %10622, %10621
  %10624 = select i1 %10615, float 1.000000e+00, float %10623
  %10625 = fmul fast float %10610, %9280
  %10626 = fadd fast float %10611, %10625
  %10627 = call float @dx.op.unary.f32(i32 7, float %10626)  ; Saturate(value)
  %10628 = fmul fast float %10624, %10627
  br label %10629

; <label>:10629                                   ; preds = %10601, %10481
  %10630 = phi float [ %10628, %10601 ], [ 0.000000e+00, %10481 ]
  %10631 = fsub fast float 1.000000e+00, %10630
  %10632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %10351, float %10352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10633 = extractvalue %dx.types.ResRet.f32 %10632, 0
  %10634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10635 = extractvalue %dx.types.CBufRet.i32 %10634, 2
  %10636 = icmp eq i32 %10635, 0
  br i1 %10636, label %10642, label %10637

; <label>:10637                                   ; preds = %10629
  %10638 = call float @dx.op.unary.f32(i32 7, float %10630)  ; Saturate(value)
  %10639 = fadd fast float %10633, -1.000000e+00
  %10640 = fmul fast float %10638, %10639
  %10641 = fadd fast float %10640, 1.000000e+00
  br label %10642

; <label>:10642                                   ; preds = %10637, %10629
  %10643 = phi float [ %10641, %10637 ], [ %10631, %10629 ]
  br i1 %10405, label %10644, label %10662

; <label>:10644                                   ; preds = %10642
  %10645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10646 = extractvalue %dx.types.CBufRet.f32 %10645, 1
  %10647 = fsub fast float %10482, %10646
  %10648 = call float @dx.op.unary.f32(i32 7, float %10647)  ; Saturate(value)
  %10649 = fsub fast float %10482, %10404
  %10650 = call float @dx.op.unary.f32(i32 7, float %10649)  ; Saturate(value)
  %10651 = fsub fast float %10648, %10650
  %10652 = fsub fast float %10484, %10650
  %10653 = fdiv fast float %10652, %10651
  %10654 = call float @dx.op.unary.f32(i32 7, float %10653)  ; Saturate(value)
  %10655 = fmul fast float %10654, 2.000000e+00
  %10656 = fsub fast float 3.000000e+00, %10655
  %10657 = fsub fast float %10633, %10643
  %10658 = fmul fast float %10654, %10654
  %10659 = fmul fast float %10658, %10657
  %10660 = fmul fast float %10659, %10656
  %10661 = fadd fast float %10660, %10643
  br label %10662

; <label>:10662                                   ; preds = %10644, %10642
  %10663 = phi float [ %10661, %10644 ], [ %10643, %10642 ]
  %10664 = call float @dx.op.binary.f32(i32 35, float %10633, float %10663)  ; FMax(a,b)
  %10665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10666 = extractvalue %dx.types.CBufRet.i32 %10665, 2
  %10667 = and i32 %10666, 1
  %10668 = icmp eq i32 %10667, 0
  %10669 = fcmp fast une float %10664, 1.000000e+00
  %10670 = and i1 %10669, %10668
  br i1 %10670, label %10671, label %10690

; <label>:10671                                   ; preds = %10662
  %10672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %10351, float %10352, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10673 = extractvalue %dx.types.ResRet.f32 %10672, 0
  %10674 = extractvalue %dx.types.ResRet.f32 %10672, 1
  %10675 = extractvalue %dx.types.ResRet.f32 %10672, 2
  %10676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10677 = extractvalue %dx.types.CBufRet.f32 %10676, 1
  %10678 = fmul fast float %10677, %10673
  %10679 = fmul fast float %10677, %10674
  %10680 = fmul fast float %10677, %10675
  %10681 = fcmp fast ogt float %10633, 0x3FEFFF2E40000000
  %10682 = fsub fast float 1.000000e+00, %10664
  %10683 = fsub fast float 1.000000e+00, %10633
  %10684 = fdiv fast float %10682, %10683
  %10685 = call float @dx.op.unary.f32(i32 7, float %10684)  ; Saturate(value)
  %10686 = select i1 %10681, float 0.000000e+00, float %10685
  %10687 = fmul fast float %10678, %10686
  %10688 = fmul fast float %10679, %10686
  %10689 = fmul fast float %10680, %10686
  br label %10690

; <label>:10690                                   ; preds = %10671, %10662
  %10691 = phi float [ 0.000000e+00, %10662 ], [ %10687, %10671 ]
  %10692 = phi float [ 0.000000e+00, %10662 ], [ %10688, %10671 ]
  %10693 = phi float [ 0.000000e+00, %10662 ], [ %10689, %10671 ]
  %10694 = fmul fast float %10691, %9268
  %10695 = fmul fast float %10692, %9268
  %10696 = fmul fast float %10693, %9268
  %10697 = fmul fast float %10664, %10326
  %10698 = call float @dx.op.dot3.f32(i32 55, float %10664, float %10664, float %10664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10699 = call float @dx.op.dot3.f32(i32 55, float %10694, float %10695, float %10696, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10700 = select i1 %232, float %10698, float %10664
  %10701 = select i1 %232, float 1.000000e+00, float %10664
  %10702 = select i1 %232, float %10699, float %10694
  %10703 = select i1 %232, float 0.000000e+00, float %10695
  %10704 = select i1 %232, float 0.000000e+00, float %10696
  %10705 = fmul fast float %10700, %10338
  %10706 = fmul fast float %10700, %10339
  %10707 = fmul fast float %10701, %10340
  %10708 = fadd fast float %10705, %10702
  %10709 = fadd fast float %10706, %10703
  %10710 = fadd fast float %10704, %10707
  %10711 = fmul fast float %10700, %10341
  %10712 = fmul fast float %10700, %10342
  %10713 = fmul fast float %10701, %10343
  br label %10714

; <label>:10714                                   ; preds = %10690, %10347, %10316, %9548
  %10715 = phi float [ %9553, %9548 ], [ %10338, %10316 ], [ %10708, %10690 ], [ %10338, %10347 ]
  %10716 = phi float [ %9554, %9548 ], [ %10339, %10316 ], [ %10709, %10690 ], [ %10339, %10347 ]
  %10717 = phi float [ %9555, %9548 ], [ %10340, %10316 ], [ %10710, %10690 ], [ %10340, %10347 ]
  %10718 = phi float [ %9556, %9548 ], [ %10341, %10316 ], [ %10711, %10690 ], [ %10341, %10347 ]
  %10719 = phi float [ %9557, %9548 ], [ %10342, %10316 ], [ %10712, %10690 ], [ %10342, %10347 ]
  %10720 = phi float [ %9558, %9548 ], [ %10343, %10316 ], [ %10713, %10690 ], [ %10343, %10347 ]
  %10721 = phi float [ %9559, %9548 ], [ %10326, %10316 ], [ %10697, %10690 ], [ %10326, %10347 ]
  %10722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10723 = extractvalue %dx.types.CBufRet.f32 %10722, 2
  %10724 = extractvalue %dx.types.CBufRet.f32 %10722, 3
  %10725 = fmul fast float %10723, %111
  %10726 = fmul fast float %10724, %112
  %10727 = call float @dx.op.unary.f32(i32 7, float %10725)  ; Saturate(value)
  %10728 = call float @dx.op.unary.f32(i32 7, float %10726)  ; Saturate(value)
  %10729 = select i1 %9290, i32 2, i32 0
  %10730 = or i32 %10729, 1
  %10731 = uitofp i32 %10730 to float
  %10732 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10727, float %10728, float %10731, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10733 = extractvalue %dx.types.ResRet.f32 %10732, 0
  %10734 = extractvalue %dx.types.ResRet.f32 %10732, 1
  %10735 = extractvalue %dx.types.ResRet.f32 %10732, 2
  %10736 = extractvalue %dx.types.ResRet.f32 %10732, 3
  %10737 = add nuw nsw i32 %10729, 2
  %10738 = uitofp i32 %10737 to float
  %10739 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10727, float %10728, float %10738, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10740 = extractvalue %dx.types.ResRet.f32 %10739, 0
  %10741 = extractvalue %dx.types.ResRet.f32 %10739, 1
  %10742 = extractvalue %dx.types.ResRet.f32 %10739, 2
  %10743 = extractvalue %dx.types.ResRet.f32 %10739, 3
  %10744 = call float @dx.op.binary.f32(i32 35, float %10734, float %10735)  ; FMax(a,b)
  %10745 = call float @dx.op.binary.f32(i32 35, float %10733, float %10744)  ; FMax(a,b)
  %10746 = call float @dx.op.binary.f32(i32 35, float %10745, float %10736)  ; FMax(a,b)
  %10747 = call float @dx.op.binary.f32(i32 36, float %10741, float %10742)  ; FMin(a,b)
  %10748 = call float @dx.op.binary.f32(i32 36, float %10740, float %10747)  ; FMin(a,b)
  %10749 = call float @dx.op.binary.f32(i32 36, float %10748, float %10743)  ; FMin(a,b)
  %10750 = fmul fast float %10746, 2.550000e+02
  %10751 = fadd fast float %10750, 0x3F70101020000000
  %10752 = fptoui float %10751 to i32
  %10753 = fmul fast float %10749, 2.550000e+02
  %10754 = fadd fast float %10753, 0x3F70101020000000
  %10755 = fptoui float %10754 to i32
  %10756 = icmp ult i32 %10752, %10755
  br i1 %10756, label %10757, label %10926

; <label>:10757                                   ; preds = %10714
  %10758 = fcmp fast ogt float %98, 9.843750e-01
  %10759 = fadd fast float %9552, -4.000000e+00
  %10760 = select i1 %10758, float -4.000000e+00, float %10759
  %10761 = call float @dx.op.binary.f32(i32 35, float %10760, float 0.000000e+00)  ; FMax(a,b)
  %10762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10763 = extractvalue %dx.types.CBufRet.f32 %10762, 0
  %10764 = fadd fast float %10763, %10761
  %10765 = extractvalue %dx.types.CBufRet.f32 %10762, 2
  %10766 = fmul fast float %10764, %10765
  %10767 = call float @dx.op.unary.f32(i32 23, float %10766)  ; Log(value)
  %10768 = extractvalue %dx.types.CBufRet.f32 %10762, 3
  %10769 = fmul fast float %10768, %10767
  %10770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10771 = extractvalue %dx.types.CBufRet.f32 %10770, 2
  %10772 = fmul fast float %10769, %10771
  %10773 = call float @dx.op.unary.f32(i32 7, float %10772)  ; Saturate(value)
  %10774 = uitofp i32 %10752 to float
  %10775 = uitofp i32 %10755 to float
  %10776 = fadd fast float %10774, 5.000000e-01
  %10777 = fadd fast float %10775, 5.000000e-01
  %10778 = fmul fast float %10771, %10776
  %10779 = fmul fast float %10771, %10777
  %10780 = fadd fast float %10778, 0x3F0FFB4800000000
  %10781 = fadd fast float %10779, 0xBF0FFB4800000000
  %10782 = call float @dx.op.binary.f32(i32 35, float %10773, float %10780)  ; FMax(a,b)
  %10783 = call float @dx.op.binary.f32(i32 36, float %10782, float %10781)  ; FMin(a,b)
  %10784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10785 = extractvalue %dx.types.CBufRet.f32 %10784, 1
  %10786 = extractvalue %dx.types.CBufRet.f32 %10784, 2
  %10787 = extractvalue %dx.types.CBufRet.f32 %10784, 0
  %10788 = select i1 %9290, float %10787, float 0.000000e+00
  %10789 = fmul fast float %10785, %10783
  %10790 = fadd fast float %10788, %10789
  %10791 = fadd fast float %10788, %10786
  %10792 = fsub fast float %10785, %10786
  %10793 = fadd fast float %10792, %10788
  %10794 = call float @dx.op.binary.f32(i32 35, float %10790, float %10791)  ; FMax(a,b)
  %10795 = call float @dx.op.binary.f32(i32 36, float %10794, float %10793)  ; FMin(a,b)
  %10796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10727, float %10728, float %10795, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10797 = extractvalue %dx.types.ResRet.f32 %10796, 0
  %10798 = extractvalue %dx.types.ResRet.f32 %10796, 1
  %10799 = extractvalue %dx.types.ResRet.f32 %10796, 2
  %10800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10801 = extractvalue %dx.types.CBufRet.i32 %10800, 0
  %10802 = extractvalue %dx.types.CBufRet.i32 %10800, 1
  %10803 = uitofp i32 %10801 to float
  %10804 = uitofp i32 %10802 to float
  %10805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10806 = extractvalue %dx.types.CBufRet.f32 %10805, 0
  %10807 = extractvalue %dx.types.CBufRet.f32 %10805, 1
  %10808 = fmul fast float %10803, %10727
  %10809 = fmul fast float %10804, %10728
  %10810 = fadd fast float %10808, -5.000000e-01
  %10811 = fadd fast float %10809, -5.000000e-01
  %10812 = call float @dx.op.unary.f32(i32 22, float %10810)  ; Frc(value)
  %10813 = call float @dx.op.unary.f32(i32 22, float %10811)  ; Frc(value)
  %10814 = fmul fast float %10812, %10812
  %10815 = fmul fast float %10814, %10812
  %10816 = fsub fast float 3.000000e+00, %10812
  %10817 = fmul fast float %10814, %10816
  %10818 = fmul fast float %10812, 3.000000e+00
  %10819 = fmul fast float %10815, 3.000000e+00
  %10820 = fmul fast float %10814, 6.000000e+00
  %10821 = fsub fast float %10819, %10820
  %10822 = fadd fast float %10821, 4.000000e+00
  %10823 = fmul fast float %10822, 0x3FC5555560000000
  %10824 = fmul fast float %10815, -3.000000e+00
  %10825 = fadd fast float %10814, %10812
  %10826 = fmul fast float %10825, 3.000000e+00
  %10827 = fadd fast float %10824, 1.000000e+00
  %10828 = fadd fast float %10827, %10826
  %10829 = fmul fast float %10815, 0x3FC5555560000000
  %10830 = fmul fast float %10813, %10813
  %10831 = fmul fast float %10830, %10813
  %10832 = fsub fast float 3.000000e+00, %10813
  %10833 = fmul fast float %10830, %10832
  %10834 = fmul fast float %10813, 3.000000e+00
  %10835 = fmul fast float %10831, 3.000000e+00
  %10836 = fmul fast float %10830, 6.000000e+00
  %10837 = fsub fast float %10835, %10836
  %10838 = fadd fast float %10837, 4.000000e+00
  %10839 = fmul fast float %10838, 0x3FC5555560000000
  %10840 = fmul fast float %10831, -3.000000e+00
  %10841 = fadd fast float %10830, %10813
  %10842 = fmul fast float %10841, 3.000000e+00
  %10843 = fadd fast float %10840, 1.000000e+00
  %10844 = fadd fast float %10843, %10842
  %10845 = fmul fast float %10831, 0x3FC5555560000000
  %10846 = fadd fast float %10812, 1.000000e+00
  %10847 = fsub fast float 1.000000e+00, %10818
  %10848 = fadd fast float %10847, %10817
  %10849 = fadd fast float %10848, %10822
  %10850 = fmul fast float %10849, 0x3FC5555560000000
  %10851 = fdiv fast float %10823, %10850
  %10852 = fsub fast float %10846, %10851
  %10853 = fsub fast float 1.000000e+00, %10812
  %10854 = fadd fast float %10828, %10815
  %10855 = fmul fast float %10854, 0x3FC5555560000000
  %10856 = fdiv fast float %10829, %10855
  %10857 = fadd fast float %10853, %10856
  %10858 = fadd fast float %10813, 1.000000e+00
  %10859 = fsub fast float 1.000000e+00, %10834
  %10860 = fadd fast float %10859, %10833
  %10861 = fadd fast float %10860, %10838
  %10862 = fmul fast float %10861, 0x3FC5555560000000
  %10863 = fdiv fast float %10839, %10862
  %10864 = fsub fast float %10858, %10863
  %10865 = fsub fast float 1.000000e+00, %10813
  %10866 = fadd fast float %10844, %10831
  %10867 = fmul fast float %10866, 0x3FC5555560000000
  %10868 = fdiv fast float %10845, %10867
  %10869 = fadd fast float %10868, %10865
  %10870 = fmul fast float %10852, %10806
  %10871 = fsub fast float %10727, %10870
  %10872 = fmul fast float %10857, %10806
  %10873 = fadd fast float %10872, %10727
  %10874 = fmul fast float %10869, %10807
  %10875 = fadd fast float %10874, %10728
  %10876 = fmul fast float %10864, %10807
  %10877 = fsub fast float %10728, %10876
  %10878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10871, float %10877, float %10795, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10879 = extractvalue %dx.types.ResRet.f32 %10878, 0
  %10880 = extractvalue %dx.types.ResRet.f32 %10878, 1
  %10881 = extractvalue %dx.types.ResRet.f32 %10878, 2
  %10882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10873, float %10877, float %10795, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10883 = extractvalue %dx.types.ResRet.f32 %10882, 0
  %10884 = extractvalue %dx.types.ResRet.f32 %10882, 1
  %10885 = extractvalue %dx.types.ResRet.f32 %10882, 2
  %10886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10871, float %10875, float %10795, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10887 = extractvalue %dx.types.ResRet.f32 %10886, 0
  %10888 = extractvalue %dx.types.ResRet.f32 %10886, 1
  %10889 = extractvalue %dx.types.ResRet.f32 %10886, 2
  %10890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10873, float %10875, float %10795, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10891 = extractvalue %dx.types.ResRet.f32 %10890, 0
  %10892 = extractvalue %dx.types.ResRet.f32 %10890, 1
  %10893 = extractvalue %dx.types.ResRet.f32 %10890, 2
  %10894 = fsub fast float %10887, %10879
  %10895 = fsub fast float %10888, %10880
  %10896 = fsub fast float %10889, %10881
  %10897 = fmul fast float %10894, %10867
  %10898 = fmul fast float %10895, %10867
  %10899 = fmul fast float %10896, %10867
  %10900 = fadd fast float %10897, %10879
  %10901 = fadd fast float %10898, %10880
  %10902 = fadd fast float %10899, %10881
  %10903 = fsub fast float %10891, %10883
  %10904 = fsub fast float %10892, %10884
  %10905 = fsub fast float %10893, %10885
  %10906 = fmul fast float %10903, %10867
  %10907 = fmul fast float %10904, %10867
  %10908 = fmul fast float %10905, %10867
  %10909 = fsub fast float %10883, %10900
  %10910 = fadd fast float %10909, %10906
  %10911 = fsub fast float %10884, %10901
  %10912 = fadd fast float %10911, %10907
  %10913 = fsub fast float %10885, %10902
  %10914 = fadd fast float %10913, %10908
  %10915 = fmul fast float %10910, %10855
  %10916 = fmul fast float %10912, %10855
  %10917 = fmul fast float %10914, %10855
  %10918 = fadd fast float %10915, %10900
  %10919 = fadd fast float %10916, %10901
  %10920 = fadd fast float %10917, %10902
  %10921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10922 = extractvalue %dx.types.CBufRet.f32 %10921, 1
  %10923 = fmul fast float %10918, %10922
  %10924 = fmul fast float %10919, %10922
  %10925 = fmul fast float %10920, %10922
  br label %10926

; <label>:10926                                   ; preds = %10757, %10714
  %10927 = phi float [ %10797, %10757 ], [ 1.000000e+00, %10714 ]
  %10928 = phi float [ %10798, %10757 ], [ 1.000000e+00, %10714 ]
  %10929 = phi float [ %10799, %10757 ], [ 1.000000e+00, %10714 ]
  %10930 = phi float [ %10923, %10757 ], [ 0.000000e+00, %10714 ]
  %10931 = phi float [ %10924, %10757 ], [ 0.000000e+00, %10714 ]
  %10932 = phi float [ %10925, %10757 ], [ 0.000000e+00, %10714 ]
  %10933 = fmul fast float %10930, %9268
  %10934 = fmul fast float %10931, %9268
  %10935 = fmul fast float %10932, %9268
  %10936 = fmul fast float %10927, %10721
  %10937 = call float @dx.op.dot3.f32(i32 55, float %10927, float %10928, float %10929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10938 = call float @dx.op.dot3.f32(i32 55, float %10933, float %10934, float %10935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10939 = select i1 %232, float %10937, float %10927
  %10940 = select i1 %232, float %10937, float %10928
  %10941 = select i1 %232, float 1.000000e+00, float %10929
  %10942 = select i1 %232, float %10938, float %10933
  %10943 = select i1 %232, float 0.000000e+00, float %10934
  %10944 = select i1 %232, float 0.000000e+00, float %10935
  %10945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10946 = extractvalue %dx.types.CBufRet.i32 %10945, 3
  %10947 = and i32 %10946, 3
  %10948 = icmp ne i32 %10947, 0
  %10949 = and i32 %10946, 4
  %10950 = icmp ne i32 %10949, 0
  %10951 = and i1 %10948, %10950
  %10952 = and i1 %232, %10951
  br i1 %10952, label %10953, label %10959

; <label>:10953                                   ; preds = %10926
  %10954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10955 = extractvalue %dx.types.CBufRet.f32 %10954, 1
  %10956 = fadd fast float %10936, -1.000000e+00
  %10957 = fmul fast float %10955, %10956
  %10958 = fadd fast float %10957, 1.000000e+00
  br label %10959

; <label>:10959                                   ; preds = %10953, %10926
  %10960 = phi float [ %10958, %10953 ], [ %10936, %10926 ]
  %10961 = fadd fast float %10718, %10715
  %10962 = fmul fast float %10939, %10961
  %10963 = fadd fast float %10962, %10942
  %10964 = fadd fast float %10719, %10716
  %10965 = fmul fast float %10940, %10964
  %10966 = fadd fast float %10965, %10943
  %10967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10968 = extractvalue %dx.types.CBufRet.f32 %10967, 0
  br i1 %232, label %10969, label %10993

; <label>:10969                                   ; preds = %10959
  %10970 = fadd fast float %10963, %10966
  %10971 = fmul fast float %10968, %10970
  %10972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10973 = extractvalue %dx.types.CBufRet.f32 %10972, 3
  %10974 = extractvalue %dx.types.CBufRet.f32 %9272, 1
  %10975 = fsub fast float %9277, %9271
  %10976 = fadd fast float %10975, %9278
  %10977 = fsub fast float %10976, %10974
  %10978 = extractvalue %dx.types.CBufRet.f32 %9272, 2
  %10979 = fmul fast float %10977, %10978
  %10980 = call float @dx.op.unary.f32(i32 7, float %10979)  ; Saturate(value)
  %10981 = fsub fast float %10980, %10973
  %10982 = fmul fast float %10981, %10960
  %10983 = fadd fast float %10982, %10973
  %10984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10985 = extractvalue %dx.types.CBufRet.f32 %10984, 0
  %10986 = fsub fast float %10983, %10985
  %10987 = fmul fast float %10986, 1.000000e+01
  %10988 = call float @dx.op.unary.f32(i32 7, float %10987)  ; Saturate(value)
  %10989 = fsub fast float %5177, %9268
  %10990 = fmul fast float %10988, %10989
  %10991 = fadd fast float %10990, %9268
  %10992 = fmul fast float %10991, %10983
  br label %11017

; <label>:10993                                   ; preds = %10959
  %10994 = fadd fast float %10720, %10717
  %10995 = fmul fast float %10941, %10994
  %10996 = fadd fast float %10995, %10944
  %10997 = fmul fast float %10968, %10963
  %10998 = fmul fast float %10968, %10966
  %10999 = fmul fast float %10968, %10996
  %11000 = call float @dx.op.binary.f32(i32 35, float %10998, float %10999)  ; FMax(a,b)
  %11001 = call float @dx.op.binary.f32(i32 35, float %10997, float %11000)  ; FMax(a,b)
  %11002 = call float @dx.op.binary.f32(i32 35, float %11001, float %9268)  ; FMax(a,b)
  %11003 = fcmp fast ugt float %11002, 0x3F10000000000000
  br i1 %11003, label %11005, label %11004

; <label>:11004                                   ; preds = %10993
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %11005

; <label>:11005                                   ; preds = %11004, %10993
  %11006 = add i32 %62, 356
  %11007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %11006, i32 undef)  ; BufferLoad(srv,index,wot)
  %11008 = extractvalue %dx.types.ResRet.i32 %11007, 0
  %11009 = and i32 %11008, 32
  %11010 = icmp eq i32 %11009, 0
  br i1 %11010, label %11017, label %11011

; <label>:11011                                   ; preds = %11005
  %11012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %11013 = extractvalue %dx.types.CBufRet.f32 %11012, 0
  %11014 = fmul fast float %11013, 0x3FE99999A0000000
  %11015 = fadd fast float %11013, %10997
  %11016 = fadd fast float %11014, %10999
  br label %11017

; <label>:11017                                   ; preds = %11011, %11005, %10969
  %11018 = phi float [ %10971, %10969 ], [ %11015, %11011 ], [ %10997, %11005 ]
  %11019 = phi float [ %10992, %10969 ], [ %10998, %11011 ], [ %10998, %11005 ]
  %11020 = phi float [ %10991, %10969 ], [ %11016, %11011 ], [ %10999, %11005 ]
  %11021 = phi float [ %10991, %10969 ], [ %9268, %11011 ], [ %9268, %11005 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %11022 = call float @dx.op.binary.f32(i32 36, float %11018, float 3.225500e+04)  ; FMin(a,b)
  %11023 = call float @dx.op.binary.f32(i32 36, float %11019, float 3.225500e+04)  ; FMin(a,b)
  %11024 = call float @dx.op.binary.f32(i32 36, float %11020, float 3.225500e+04)  ; FMin(a,b)
  %11025 = call float @dx.op.binary.f32(i32 36, float %11021, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11022)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11023)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11024)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %11025)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

