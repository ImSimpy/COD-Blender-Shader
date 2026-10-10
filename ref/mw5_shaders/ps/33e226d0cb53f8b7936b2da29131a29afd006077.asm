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
; shader hash: 169106c8b1f8d4596ba7271a36b1346f
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
  %426 = add i32 %62, 552
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
  br i1 %482, label %1199, label %483

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
  %1121 = and i32 %1120, 26624
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1180, label %1123

; <label>:1123                                    ; preds = %1115
  %1124 = add i32 %62, 536
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = add i32 %1126, 0
  %1128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1127, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1129 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1128, %dx.types.Handle %108, float %582, float %583, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1129, 3
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = and i32 %1134, 1048576
  %1136 = icmp ne i32 %1135, 0
  %1137 = and i32 %1134, 8192
  %1138 = icmp eq i32 %1137, 0
  br i1 %1138, label %1153, label %1139

; <label>:1139                                    ; preds = %1123
  %1140 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1141 = select i1 %1136, float %1140, float %1131
  %1142 = select i1 %1136, float %1130, float %1131
  %1143 = add i32 %62, 96
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 16
  %1147 = and i32 %1146, 255
  %1148 = uitofp i32 %1147 to float
  %1149 = fmul fast float %1148, 0x3F80101020000000
  %1150 = fmul fast float %1149, %1142
  %1151 = fmul fast float %1149, %1131
  %1152 = fmul fast float %1149, %1141
  br label %1153

; <label>:1153                                    ; preds = %1139, %1123
  %1154 = phi float [ %1150, %1139 ], [ 0.000000e+00, %1123 ]
  %1155 = phi float [ %1151, %1139 ], [ 0.000000e+00, %1123 ]
  %1156 = phi float [ %1152, %1139 ], [ 0.000000e+00, %1123 ]
  %1157 = and i32 %1134, 2048
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1167, label %1159

; <label>:1159                                    ; preds = %1153
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = shl i32 %1161, 4
  %1163 = and i32 %1162, 32752
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = fmul fast float %1164, %1132
  %1166 = call float @dx.op.binary.f32(i32 35, float %1165, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1167

; <label>:1167                                    ; preds = %1159, %1153
  %1168 = phi float [ %1166, %1159 ], [ 0x3F70101020000000, %1153 ]
  %1169 = and i32 %1134, 16384
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1180, label %1171

; <label>:1171                                    ; preds = %1167
  %1172 = add i32 %62, 96
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = lshr i32 %1174, 24
  %1176 = uitofp i32 %1175 to float
  %1177 = fmul fast float %1130, 0x3F70101020000000
  %1178 = select i1 %1136, float 0x3F70101020000000, float %1177
  %1179 = fmul fast float %1178, %1176
  br label %1180

; <label>:1180                                    ; preds = %1171, %1167, %1115
  %1181 = phi float [ %1154, %1171 ], [ %1154, %1167 ], [ 0.000000e+00, %1115 ]
  %1182 = phi float [ %1155, %1171 ], [ %1155, %1167 ], [ 0.000000e+00, %1115 ]
  %1183 = phi float [ %1156, %1171 ], [ %1156, %1167 ], [ 0.000000e+00, %1115 ]
  %1184 = phi float [ %1168, %1171 ], [ %1168, %1167 ], [ 0x3F70101020000000, %1115 ]
  %1185 = phi float [ %1179, %1171 ], [ 0.000000e+00, %1167 ], [ 0.000000e+00, %1115 ]
  %1186 = add i32 %62, 96
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = lshr i32 %1188, 8
  %1192 = and i32 %1191, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = call float @dx.op.dot3.f32(i32 55, float %988, float %989, float %990, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1195 = fmul fast float %1193, %1194
  %1196 = fadd fast float %1195, %1190
  %1197 = fmul fast float %1196, 0x3F70101020000000
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  br label %1199

; <label>:1199                                    ; preds = %1180, %468
  %1200 = phi float [ 0.000000e+00, %468 ], [ %1069, %1180 ]
  %1201 = phi float [ 0.000000e+00, %468 ], [ %1070, %1180 ]
  %1202 = phi float [ 0.000000e+00, %468 ], [ %1116, %1180 ]
  %1203 = phi float [ 0.000000e+00, %468 ], [ %1117, %1180 ]
  %1204 = phi float [ 0.000000e+00, %468 ], [ %1118, %1180 ]
  %1205 = phi float [ 0.000000e+00, %468 ], [ %988, %1180 ]
  %1206 = phi float [ 0.000000e+00, %468 ], [ %989, %1180 ]
  %1207 = phi float [ 0.000000e+00, %468 ], [ %990, %1180 ]
  %1208 = phi float [ 0.000000e+00, %468 ], [ %1181, %1180 ]
  %1209 = phi float [ 0.000000e+00, %468 ], [ %1182, %1180 ]
  %1210 = phi float [ 0.000000e+00, %468 ], [ %1183, %1180 ]
  %1211 = phi float [ 0.000000e+00, %468 ], [ %974, %1180 ]
  %1212 = phi float [ 0.000000e+00, %468 ], [ %770, %1180 ]
  %1213 = phi float [ 0.000000e+00, %468 ], [ %1068, %1180 ]
  %1214 = phi float [ 0.000000e+00, %468 ], [ %1071, %1180 ]
  %1215 = phi float [ 0.000000e+00, %468 ], [ %1184, %1180 ]
  %1216 = phi float [ 0.000000e+00, %468 ], [ %1185, %1180 ]
  %1217 = phi float [ 0.000000e+00, %468 ], [ %1198, %1180 ]
  br i1 %416, label %2170, label %1218

; <label>:1218                                    ; preds = %1199
  %1219 = icmp ult i32 %474, 2
  %1220 = add i32 %62, 40
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %62, 44
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = or i32 %1225, %1222
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %2170, label %1228

; <label>:1228                                    ; preds = %1218
  %1229 = and i32 %1222, 262144
  %1230 = icmp ne i32 %1229, 0
  %1231 = select i1 %1230, float %65, float 1.000000e+00
  %1232 = select i1 %1230, float %66, float 0.000000e+00
  %1233 = select i1 %1230, float %67, float 0.000000e+00
  %1234 = select i1 %1230, float %68, float 1.000000e+00
  %1235 = select i1 %1230, float %69, float %90
  %1236 = select i1 %1230, float %70, float %91
  %1237 = add i32 %62, 300
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = lshr i32 %1239, 16
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = fmul fast float %1241, 0x3F50624DE0000000
  %1243 = add i32 %62, 104
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = lshr i32 %1245, 16
  %1247 = and i32 %1246, 255
  %1248 = lshr i32 %1245, 24
  %1249 = add i32 %62, 308
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 65535
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = lshr i32 %1251, 16
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = add i32 %62, 48
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = lshr i32 %1258, 22
  %1260 = shl nuw nsw i32 %1259, 5
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = shl i32 %1258, 4
  %1263 = and i32 %1262, 32752
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = lshr i32 %1258, 7
  %1266 = and i32 %1265, 32752
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 3
  %1270 = fmul fast float %1269, 1.000000e+03
  %1271 = fmul fast float %326, %1270
  %1272 = call float @dx.op.unary.f32(i32 22, float %1271)  ; Frc(value)
  %1273 = fadd fast float %1272, %316
  %1274 = fmul fast float %327, %1270
  %1275 = call float @dx.op.unary.f32(i32 22, float %1274)  ; Frc(value)
  %1276 = fadd fast float %1275, %318
  %1277 = fmul fast float %1242, %1270
  %1278 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1279 = fmul fast float %1278, 0x401921FB60000000
  %1280 = fadd fast float %1279, %1261
  %1281 = call float @dx.op.unary.f32(i32 13, float %1280)  ; Sin(value)
  %1282 = call float @dx.op.unary.f32(i32 12, float %1280)  ; Cos(value)
  %1283 = fsub fast float -0.000000e+00, %1281
  %1284 = fadd fast float %1235, -5.000000e-01
  %1285 = fadd fast float %1236, -5.000000e-01
  %1286 = fmul fast float %1253, %1284
  %1287 = fmul fast float %1255, %1285
  %1288 = fadd fast float %1286, 5.000000e-01
  %1289 = fadd fast float %1287, 5.000000e-01
  %1290 = fmul fast float %1264, %1288
  %1291 = fmul fast float %1267, %1289
  %1292 = fmul fast float %1282, %1290
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1291, float %1292)  ; FMad(a,b,c)
  %1294 = fmul fast float %1281, %1290
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1291, float %1294)  ; FMad(a,b,c)
  %1296 = fadd fast float %1273, %1293
  %1297 = fadd fast float %1276, %1295
  %1298 = icmp ugt i32 %1247, 1
  %1299 = icmp ugt i32 %1245, 33554431
  %1300 = or i1 %1299, %1298
  br i1 %1300, label %1301, label %1326

; <label>:1301                                    ; preds = %1228
  %1302 = add i32 %62, 244
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = lshr i32 %1304, 16
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = fmul fast float %1269, %1306
  %1308 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1309 = mul nuw nsw i32 %1247, %1248
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1308, %1310
  %1312 = call float @dx.op.unary.f32(i32 27, float %1311)  ; Round_ni(value)
  %1313 = fptoui float %1312 to i32
  %1314 = urem i32 %1313, %1247
  %1315 = udiv i32 %1313, %1248
  %1316 = call float @dx.op.unary.f32(i32 22, float %1296)  ; Frc(value)
  %1317 = call float @dx.op.unary.f32(i32 22, float %1297)  ; Frc(value)
  %1318 = uitofp i32 %1314 to float
  %1319 = uitofp i32 %1315 to float
  %1320 = fadd fast float %1316, %1318
  %1321 = fadd fast float %1317, %1319
  %1322 = uitofp i32 %1247 to float
  %1323 = uitofp i32 %1248 to float
  %1324 = fdiv fast float %1320, %1322
  %1325 = fdiv fast float %1321, %1323
  br label %1326

; <label>:1326                                    ; preds = %1301, %1228
  %1327 = phi float [ %1324, %1301 ], [ %1296, %1228 ]
  %1328 = phi float [ %1325, %1301 ], [ %1297, %1228 ]
  %1329 = and i32 %1222, 16777216
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1440, label %1331

; <label>:1331                                    ; preds = %1326
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 0
  %1334 = extractvalue %dx.types.CBufRet.f32 %1332, 1
  %1335 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1336 = fadd fast float %1333, %170
  %1337 = fadd fast float %1334, %171
  %1338 = fadd fast float %1335, %172
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1342 = icmp eq i32 %63, 65535
  br i1 %1342, label %1437, label %1343

; <label>:1343                                    ; preds = %1331
  %1344 = lshr i32 %63, 1
  %1345 = shl i32 %1344, 2
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = and i32 %63, 1
  %1349 = icmp ne i32 %1348, 0
  %1350 = lshr i32 %1347, 16
  %1351 = and i32 %1347, 65535
  %1352 = select i1 %1349, i32 %1350, i32 %1351
  %1353 = icmp eq i32 %1352, 65535
  br i1 %1353, label %1433, label %1354

; <label>:1354                                    ; preds = %1343
  %1355 = mul nuw nsw i32 %1352, 40
  %1356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = add nuw nsw i32 %1355, 12
  %1361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.f32 %1361, 1
  %1364 = extractvalue %dx.types.ResRet.f32 %1361, 2
  %1365 = add nuw nsw i32 %1355, 24
  %1366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = add nuw nsw i32 %1355, 36
  %1371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = fsub fast float %1336, %1357
  %1374 = fsub fast float %1337, %1358
  %1375 = fsub fast float %1338, %1359
  %1376 = fmul fast float %1372, %1373
  %1377 = fmul fast float %1372, %1374
  %1378 = fmul fast float %1372, %1375
  %1379 = call float @dx.op.unary.f32(i32 27, float %1376)  ; Round_ni(value)
  %1380 = call float @dx.op.unary.f32(i32 27, float %1377)  ; Round_ni(value)
  %1381 = call float @dx.op.unary.f32(i32 27, float %1378)  ; Round_ni(value)
  %1382 = fadd fast float %1379, 5.000000e-01
  %1383 = fadd fast float %1380, 5.000000e-01
  %1384 = fadd fast float %1381, 5.000000e-01
  %1385 = fmul fast float %1382, %1362
  %1386 = fmul fast float %1383, %1363
  %1387 = fmul fast float %1384, %1364
  %1388 = shl i32 %63, 2
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = add i32 %1390, 0
  %1392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1393 = call float @dx.op.unary.f32(i32 22, float %1385)  ; Frc(value)
  %1394 = call float @dx.op.unary.f32(i32 22, float %1386)  ; Frc(value)
  %1395 = call float @dx.op.unary.f32(i32 22, float %1387)  ; Frc(value)
  %1396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1392, %dx.types.Handle %55, float %1393, float %1394, float %1395, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1400 = fmul fast float %1397, 1.023000e+03
  %1401 = fmul fast float %1398, 1.023000e+03
  %1402 = fmul fast float %1399, 1.023000e+03
  %1403 = fadd fast float %1400, 5.000000e-01
  %1404 = fadd fast float %1401, 5.000000e-01
  %1405 = fadd fast float %1402, 5.000000e-01
  %1406 = call float @dx.op.unary.f32(i32 27, float %1403)  ; Round_ni(value)
  %1407 = call float @dx.op.unary.f32(i32 27, float %1404)  ; Round_ni(value)
  %1408 = call float @dx.op.unary.f32(i32 27, float %1405)  ; Round_ni(value)
  %1409 = fsub fast float %1376, %1379
  %1410 = fsub fast float %1377, %1380
  %1411 = fsub fast float %1378, %1381
  %1412 = fmul fast float %1409, 7.500000e-01
  %1413 = fmul fast float %1410, 7.500000e-01
  %1414 = fmul fast float %1411, 7.500000e-01
  %1415 = fadd fast float %1379, 1.250000e-01
  %1416 = fadd fast float %1415, %1412
  %1417 = fadd fast float %1416, %1406
  %1418 = fadd fast float %1380, 1.250000e-01
  %1419 = fadd fast float %1418, %1413
  %1420 = fadd fast float %1419, %1407
  %1421 = fadd fast float %1381, 1.250000e-01
  %1422 = fadd fast float %1421, %1414
  %1423 = fadd fast float %1422, %1408
  %1424 = fmul fast float %1417, %1367
  %1425 = fmul fast float %1420, %1368
  %1426 = fmul fast float %1423, %1369
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = add i32 %1428, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1430, %dx.types.Handle %53, float %1424, float %1425, float %1426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  br label %1433

; <label>:1433                                    ; preds = %1354, %1343
  %1434 = phi float [ %1432, %1354 ], [ -1.000000e+00, %1343 ]
  %1435 = fadd fast float %1434, %1341
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  br label %1437

; <label>:1437                                    ; preds = %1433, %1331
  %1438 = phi float [ %1436, %1433 ], [ %1341, %1331 ]
  %1439 = fmul fast float %1438, %471
  br label %1440

; <label>:1440                                    ; preds = %1437, %1326
  %1441 = phi float [ %1439, %1437 ], [ %471, %1326 ]
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 256
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1492, label %1446

; <label>:1446                                    ; preds = %1440
  %1447 = add i32 %62, 508
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = add i32 %1449, 0
  %1451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1451, %dx.types.Handle %108, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = add i32 %62, 116
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = shl i32 %1456, 4
  %1458 = and i32 %1457, 32752
  %1459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1458)  ; LegacyF16ToF32(value)
  %1460 = lshr i32 %1456, 7
  %1461 = and i32 %1460, 32752
  %1462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1461)  ; LegacyF16ToF32(value)
  %1463 = fsub fast float 1.000000e+00, %1441
  %1464 = call float @dx.op.binary.f32(i32 35, float %1463, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1465 = bitcast float %1441 to i32
  %1466 = sitofp i32 %1465 to float
  %1467 = fadd fast float %1466, 0xC1CFBF8940000000
  %1468 = fmul fast float %1462, %1467
  %1469 = fadd fast float %1468, 0x41CFBF8940000000
  %1470 = fptosi float %1469 to i32
  %1471 = bitcast i32 %1470 to float
  %1472 = bitcast float %1464 to i32
  %1473 = sitofp i32 %1472 to float
  %1474 = fadd fast float %1473, 0xC1CFBF8940000000
  %1475 = fmul fast float %1474, %1462
  %1476 = fadd fast float %1475, 0x41CFBF8940000000
  %1477 = fptosi float %1476 to i32
  %1478 = bitcast i32 %1477 to float
  %1479 = fmul fast float %1471, %1459
  %1480 = fmul fast float %1478, %1459
  %1481 = fsub fast float %1464, %1479
  %1482 = fadd fast float %1480, %1464
  %1483 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1484 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1485 = fsub fast float %1453, %1483
  %1486 = fsub fast float %1484, %1483
  %1487 = bitcast float %1486 to i32
  %1488 = sub nsw i32 2129859010, %1487
  %1489 = bitcast i32 %1488 to float
  %1490 = fmul fast float %1489, %1485
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  br label %1492

; <label>:1492                                    ; preds = %1446, %1440
  %1493 = phi float [ %1491, %1446 ], [ %1441, %1440 ]
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 128
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1514, label %1498

; <label>:1498                                    ; preds = %1492
  %1499 = add i32 %62, 492
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = add i32 %1501, 0
  %1503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1503, %dx.types.Handle %108, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 524288
  %1509 = icmp ne i32 %1508, 0
  %1510 = fcmp fast ogt float %1505, 0x3FE0101020000000
  %1511 = select i1 %1510, float 1.000000e+00, float 0.000000e+00
  %1512 = select i1 %1509, float %1511, float %1505
  %1513 = fmul fast float %1512, %1493
  br label %1514

; <label>:1514                                    ; preds = %1498, %1492
  %1515 = phi float [ %1513, %1498 ], [ %1493, %1492 ]
  %1516 = fcmp fast ult float %1515, 0x3F70101020000000
  br i1 %1516, label %2170, label %1517

; <label>:1517                                    ; preds = %1514
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 16
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1720, label %1522

; <label>:1522                                    ; preds = %1517
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = add i32 %62, 444
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = add i32 %1527, 0
  %1529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1529, %dx.types.Handle %107, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = extractvalue %dx.types.ResRet.f32 %1530, 3
  %1535 = and i32 %1524, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = lshr i32 %1524, 8
  %1538 = and i32 %1537, 255
  %1539 = uitofp i32 %1538 to float
  %1540 = fmul fast float %1534, %1536
  %1541 = fadd fast float %1540, %1539
  %1542 = fmul fast float %1541, 0x3F70101000000000
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 512
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1555, label %1547

; <label>:1547                                    ; preds = %1522
  %1548 = add i32 %62, 524
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %1550, 0
  %1552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1552, %dx.types.Handle %108, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  br label %1555

; <label>:1555                                    ; preds = %1547, %1522
  %1556 = phi float [ %1554, %1547 ], [ 1.000000e+00, %1522 ]
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 33554432
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1667, label %1561

; <label>:1561                                    ; preds = %1555
  %1562 = add i32 %62, 240
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 65535
  %1566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1565)  ; LegacyF16ToF32(value)
  %1567 = lshr i32 %1564, 16
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = add i32 %62, 244
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 65535
  %1573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1572)  ; LegacyF16ToF32(value)
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = lshr i32 %1575, 24
  %1577 = uitofp i32 %1576 to float
  %1578 = fmul fast float %1577, 0x3F70101020000000
  %1579 = and i32 %1575, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = fmul fast float %1580, 0x3F70101020000000
  %1582 = lshr i32 %1575, 8
  %1583 = and i32 %1582, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1584, 0x3F70101020000000
  %1586 = lshr i32 %1575, 16
  %1587 = and i32 %1586, 255
  %1588 = uitofp i32 %1587 to float
  %1589 = fmul fast float %1588, 0x3F70101020000000
  %1590 = add i32 %62, 236
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = lshr i32 %1592, 24
  %1594 = uitofp i32 %1593 to float
  %1595 = fmul fast float %1594, 0x3F70101020000000
  %1596 = and i32 %1592, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = fmul fast float %1597, 0x3F70101020000000
  %1599 = lshr i32 %1592, 8
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = lshr i32 %1592, 16
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = fmul fast float %1605, 0x3F70101020000000
  %1607 = bitcast float %1531 to i32
  %1608 = ashr i32 %1607, 1
  %1609 = sub nsw i32 1597463174, %1608
  %1610 = bitcast i32 %1609 to float
  %1611 = fmul fast float %1531, 5.000000e-01
  %1612 = fmul fast float %1610, %1610
  %1613 = fmul fast float %1612, %1611
  %1614 = fsub fast float 1.500000e+00, %1613
  %1615 = fmul fast float %1610, %1531
  %1616 = fmul fast float %1615, %1614
  %1617 = bitcast float %1532 to i32
  %1618 = ashr i32 %1617, 1
  %1619 = sub nsw i32 1597463174, %1618
  %1620 = bitcast i32 %1619 to float
  %1621 = fmul fast float %1532, 5.000000e-01
  %1622 = fmul fast float %1620, %1620
  %1623 = fmul fast float %1622, %1621
  %1624 = fsub fast float 1.500000e+00, %1623
  %1625 = fmul fast float %1620, %1532
  %1626 = fmul fast float %1625, %1624
  %1627 = bitcast float %1533 to i32
  %1628 = ashr i32 %1627, 1
  %1629 = sub nsw i32 1597463174, %1628
  %1630 = bitcast i32 %1629 to float
  %1631 = fmul fast float %1533, 5.000000e-01
  %1632 = fmul fast float %1630, %1630
  %1633 = fmul fast float %1632, %1631
  %1634 = fsub fast float 1.500000e+00, %1633
  %1635 = fmul fast float %1630, %1533
  %1636 = fmul fast float %1635, %1634
  %1637 = fsub fast float %1616, %1598
  %1638 = fsub fast float %1626, %1602
  %1639 = fsub fast float %1636, %1606
  %1640 = fmul fast float %1637, %1566
  %1641 = fmul fast float %1638, %1568
  %1642 = fmul fast float %1639, %1573
  %1643 = fadd fast float %1640, %1581
  %1644 = fadd fast float %1641, %1585
  %1645 = fadd fast float %1642, %1589
  %1646 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1647 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1648 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1649 = fmul fast float %1646, %1646
  %1650 = fmul fast float %1647, %1647
  %1651 = fmul fast float %1648, %1648
  %1652 = fsub fast float %1649, %1531
  %1653 = fsub fast float %1650, %1532
  %1654 = fsub fast float %1651, %1533
  %1655 = fmul fast float %1652, %1556
  %1656 = fmul fast float %1653, %1556
  %1657 = fmul fast float %1654, %1556
  %1658 = fadd fast float %1655, %1531
  %1659 = fadd fast float %1656, %1532
  %1660 = fadd fast float %1657, %1533
  %1661 = fadd fast float %1578, %1542
  %1662 = fsub fast float %1661, %1595
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1664 = fsub fast float %1663, %1542
  %1665 = fmul fast float %1664, %1556
  %1666 = fadd fast float %1665, %1542
  br label %1720

; <label>:1667                                    ; preds = %1555
  %1668 = and i32 %1558, 134217728
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1704, label %1670

; <label>:1670                                    ; preds = %1667
  %1671 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %1672 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %1673 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %1674 = fadd fast float %1671, -5.000000e-01
  %1675 = fadd fast float %1672, -5.000000e-01
  %1676 = fadd fast float %1673, -5.000000e-01
  %1677 = fmul fast float %1674, %1556
  %1678 = fmul fast float %1675, %1556
  %1679 = fmul fast float %1676, %1556
  %1680 = fadd fast float %1677, 5.000000e-01
  %1681 = fadd fast float %1678, 5.000000e-01
  %1682 = fadd fast float %1679, 5.000000e-01
  %1683 = call float @dx.op.unary.f32(i32 24, float %1531)  ; Sqrt(value)
  %1684 = call float @dx.op.unary.f32(i32 24, float %1532)  ; Sqrt(value)
  %1685 = call float @dx.op.unary.f32(i32 24, float %1533)  ; Sqrt(value)
  %1686 = fmul fast float %1680, 2.000000e+00
  %1687 = fsub fast float 1.000000e+00, %1686
  %1688 = fmul fast float %1687, %1683
  %1689 = fadd fast float %1688, %1686
  %1690 = fmul fast float %1689, %1683
  %1691 = fmul fast float %1681, 2.000000e+00
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = fmul fast float %1692, %1684
  %1694 = fadd fast float %1693, %1691
  %1695 = fmul fast float %1694, %1684
  %1696 = fmul fast float %1682, 2.000000e+00
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = fmul fast float %1697, %1685
  %1699 = fadd fast float %1698, %1696
  %1700 = fmul fast float %1699, %1685
  %1701 = fmul fast float %1690, %1690
  %1702 = fmul fast float %1695, %1695
  %1703 = fmul fast float %1700, %1700
  br label %1720

; <label>:1704                                    ; preds = %1667
  %1705 = fmul fast float %303, %303
  %1706 = fmul fast float %307, %307
  %1707 = fmul fast float %311, %311
  %1708 = fadd fast float %1705, -1.000000e+00
  %1709 = fadd fast float %1706, -1.000000e+00
  %1710 = fadd fast float %1707, -1.000000e+00
  %1711 = fmul fast float %1556, %1708
  %1712 = fmul fast float %1556, %1709
  %1713 = fmul fast float %1556, %1710
  %1714 = fadd fast float %1711, 1.000000e+00
  %1715 = fadd fast float %1712, 1.000000e+00
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fmul fast float %1714, %1531
  %1718 = fmul fast float %1715, %1532
  %1719 = fmul fast float %1716, %1533
  br label %1720

; <label>:1720                                    ; preds = %1704, %1670, %1561, %1517
  %1721 = phi float [ %1666, %1561 ], [ %1542, %1670 ], [ %1542, %1704 ], [ 0x3FA23C0BE0000000, %1517 ]
  %1722 = phi float [ %1658, %1561 ], [ %1701, %1670 ], [ %1717, %1704 ], [ 1.000000e+00, %1517 ]
  %1723 = phi float [ %1659, %1561 ], [ %1702, %1670 ], [ %1718, %1704 ], [ 1.000000e+00, %1517 ]
  %1724 = phi float [ %1660, %1561 ], [ %1703, %1670 ], [ %1719, %1704 ], [ 1.000000e+00, %1517 ]
  %1725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.i32 %1725, 1
  %1727 = and i32 %1726, 1
  %1728 = icmp ne i32 %1727, 0
  %1729 = add i32 %62, 356
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = and i32 %1731, 32
  %1733 = icmp ne i32 %1732, 0
  %1734 = and i1 %1728, %1733
  %1735 = select i1 %1734, float 1.000000e+00, float %1722
  %1736 = select i1 %1734, float 0x3FD3333340000000, float %1723
  %1737 = select i1 %1734, float 0x3FD3333340000000, float %1724
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 32
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1814, label %1742

; <label>:1742                                    ; preds = %1720
  %1743 = add i32 %62, 108
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = add i32 %62, 460
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = add i32 %1748, 0
  %1750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1750, %dx.types.Handle %107, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.ResRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.ResRet.f32 %1751, 2
  %1755 = extractvalue %dx.types.ResRet.f32 %1751, 3
  %1756 = and i32 %1745, 255
  %1757 = uitofp i32 %1756 to float
  %1758 = lshr i32 %1745, 8
  %1759 = and i32 %1758, 255
  %1760 = uitofp i32 %1759 to float
  %1761 = lshr i32 %1745, 16
  %1762 = and i32 %1761, 255
  %1763 = uitofp i32 %1762 to float
  %1764 = fmul fast float %1763, 0x3F70101000000000
  %1765 = fmul fast float %1752, %1757
  %1766 = fadd fast float %1765, %1760
  %1767 = fmul fast float %1766, 0x3F70101000000000
  %1768 = fadd fast float %1753, -5.000000e-01
  %1769 = fadd fast float %1755, -5.000000e-01
  %1770 = fmul fast float %1768, %1764
  %1771 = fmul fast float %1769, %1764
  %1772 = fadd fast float %1770, 5.000000e-01
  %1773 = fadd fast float %1771, 5.000000e-01
  %1774 = fmul fast float %1772, 2.000000e+00
  %1775 = fadd fast float %1774, -1.000000e+00
  %1776 = fmul fast float %1773, 2.000000e+00
  %1777 = fadd fast float %1776, -1.000000e+00
  %1778 = fadd fast float %1775, %1777
  %1779 = fmul fast float %1778, 5.000000e-01
  %1780 = fsub fast float %1775, %1777
  %1781 = fmul fast float %1780, 5.000000e-01
  %1782 = call float @dx.op.unary.f32(i32 6, float %1779)  ; FAbs(value)
  %1783 = fsub fast float 1.000000e+00, %1782
  %1784 = call float @dx.op.unary.f32(i32 6, float %1781)  ; FAbs(value)
  %1785 = fsub fast float %1783, %1784
  %1786 = call float @dx.op.dot3.f32(i32 55, float %1779, float %1781, float %1785, float %1779, float %1781, float %1785)  ; Dot3(ax,ay,az,bx,by,bz)
  %1787 = call float @dx.op.unary.f32(i32 25, float %1786)  ; Rsqrt(value)
  %1788 = fmul fast float %1779, %1787
  %1789 = fmul fast float %1781, %1787
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 67108864
  %1793 = icmp eq i32 %1792, 0
  br i1 %1793, label %1810, label %1794

; <label>:1794                                    ; preds = %1742
  %1795 = add i32 %62, 296
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 65535
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 65535
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = lshr i32 %1797, 16
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = fsub fast float %1767, %1805
  %1807 = fmul fast float %1806, %1799
  %1808 = fadd fast float %1807, %1803
  %1809 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  br label %1810

; <label>:1810                                    ; preds = %1794, %1742
  %1811 = phi float [ %1809, %1794 ], [ %1767, %1742 ]
  %1812 = call float @dx.op.dot2.f32(i32 54, float %1788, float %1789, float %1231, float %1232)  ; Dot2(ax,ay,bx,by)
  %1813 = call float @dx.op.dot2.f32(i32 54, float %1788, float %1789, float %1233, float %1234)  ; Dot2(ax,ay,bx,by)
  br label %1814

; <label>:1814                                    ; preds = %1810, %1720
  %1815 = phi float [ %1811, %1810 ], [ 0x3FD6666660000000, %1720 ]
  %1816 = phi float [ %1812, %1810 ], [ 0.000000e+00, %1720 ]
  %1817 = phi float [ %1813, %1810 ], [ 0.000000e+00, %1720 ]
  %1818 = phi float [ %1754, %1810 ], [ 1.000000e+00, %1720 ]
  %1819 = add i32 %62, 176
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = lshr i32 %1821, 22
  %1823 = shl nuw nsw i32 %1822, 5
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = and i32 %1826, 64
  %1828 = icmp eq i32 %1827, 0
  br i1 %1828, label %1862, label %1829

; <label>:1829                                    ; preds = %1814
  %1830 = add i32 %62, 476
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = add i32 %1832, 0
  %1834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 131072
  %1838 = icmp eq i32 %1837, 0
  %1839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1834, %dx.types.Handle %107, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.ResRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.ResRet.f32 %1839, 2
  %1843 = fmul fast float %1840, %291
  %1844 = fmul fast float %1841, %294
  %1845 = fmul fast float %1842, %297
  br i1 %1838, label %1852, label %1846

; <label>:1846                                    ; preds = %1829
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = fmul fast float %1848, %1843
  %1850 = fmul fast float %1848, %1844
  %1851 = fmul fast float %1848, %1845
  br label %1852

; <label>:1852                                    ; preds = %1846, %1829
  %1853 = phi float [ %1849, %1846 ], [ %1843, %1829 ]
  %1854 = phi float [ %1850, %1846 ], [ %1844, %1829 ]
  %1855 = phi float [ %1851, %1846 ], [ %1845, %1829 ]
  %1856 = fmul fast float %1853, %1824
  %1857 = select i1 %232, float %1856, float %1853
  %1858 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1854, float %1855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1859 = select i1 %232, float 0.000000e+00, float %1853
  %1860 = select i1 %232, float %1858, float %1854
  %1861 = select i1 %232, float 0.000000e+00, float %1855
  br label %1862

; <label>:1862                                    ; preds = %1852, %1814
  %1863 = phi float [ %1859, %1852 ], [ 0.000000e+00, %1814 ]
  %1864 = phi float [ %1860, %1852 ], [ 0.000000e+00, %1814 ]
  %1865 = phi float [ %1861, %1852 ], [ 0.000000e+00, %1814 ]
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 26624
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %1927, label %1870

; <label>:1870                                    ; preds = %1862
  %1871 = add i32 %62, 540
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = add i32 %1873, 0
  %1875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1875, %dx.types.Handle %108, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.ResRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.ResRet.f32 %1876, 3
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = and i32 %1881, 1048576
  %1883 = icmp ne i32 %1882, 0
  %1884 = and i32 %1881, 8192
  %1885 = icmp eq i32 %1884, 0
  br i1 %1885, label %1900, label %1886

; <label>:1886                                    ; preds = %1870
  %1887 = extractvalue %dx.types.ResRet.f32 %1876, 2
  %1888 = select i1 %1883, float %1887, float %1878
  %1889 = select i1 %1883, float %1877, float %1878
  %1890 = add i32 %62, 112
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = lshr i32 %1892, 16
  %1894 = and i32 %1893, 255
  %1895 = uitofp i32 %1894 to float
  %1896 = fmul fast float %1895, 0x3F80101020000000
  %1897 = fmul fast float %1896, %1889
  %1898 = fmul fast float %1896, %1878
  %1899 = fmul fast float %1896, %1888
  br label %1900

; <label>:1900                                    ; preds = %1886, %1870
  %1901 = phi float [ %1897, %1886 ], [ 0.000000e+00, %1870 ]
  %1902 = phi float [ %1898, %1886 ], [ 0.000000e+00, %1870 ]
  %1903 = phi float [ %1899, %1886 ], [ 0.000000e+00, %1870 ]
  %1904 = and i32 %1881, 2048
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1914, label %1906

; <label>:1906                                    ; preds = %1900
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = shl i32 %1908, 4
  %1910 = and i32 %1909, 32752
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = fmul fast float %1911, %1879
  %1913 = call float @dx.op.binary.f32(i32 35, float %1912, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1914

; <label>:1914                                    ; preds = %1906, %1900
  %1915 = phi float [ %1913, %1906 ], [ 0x3F70101020000000, %1900 ]
  %1916 = and i32 %1881, 16384
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %1927, label %1918

; <label>:1918                                    ; preds = %1914
  %1919 = add i32 %62, 112
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = lshr i32 %1921, 24
  %1923 = uitofp i32 %1922 to float
  %1924 = fmul fast float %1877, 0x3F70101020000000
  %1925 = select i1 %1883, float 0x3F70101020000000, float %1924
  %1926 = fmul fast float %1925, %1923
  br label %1927

; <label>:1927                                    ; preds = %1918, %1914, %1862
  %1928 = phi float [ %1901, %1918 ], [ %1901, %1914 ], [ 0.000000e+00, %1862 ]
  %1929 = phi float [ %1902, %1918 ], [ %1902, %1914 ], [ 0.000000e+00, %1862 ]
  %1930 = phi float [ %1903, %1918 ], [ %1903, %1914 ], [ 0.000000e+00, %1862 ]
  %1931 = phi float [ %1915, %1918 ], [ %1915, %1914 ], [ 0x3F70101020000000, %1862 ]
  %1932 = phi float [ %1926, %1918 ], [ 0.000000e+00, %1914 ], [ 0.000000e+00, %1862 ]
  %1933 = add i32 %62, 112
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = and i32 %1935, 255
  %1937 = uitofp i32 %1936 to float
  %1938 = lshr i32 %1935, 8
  %1939 = and i32 %1938, 255
  %1940 = uitofp i32 %1939 to float
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1735, float %1736, float %1737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = fmul fast float %1940, %1941
  %1943 = fadd fast float %1942, %1937
  %1944 = fmul fast float %1943, 0x3F70101020000000
  %1945 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  br i1 %1219, label %1946, label %1954

; <label>:1946                                    ; preds = %1927
  %1947 = fsub fast float 1.000000e+00, %1515
  %1948 = fmul fast float %1947, %1205
  %1949 = fmul fast float %1947, %1206
  %1950 = fmul fast float %1947, %1207
  %1951 = fmul fast float %1947, %1202
  %1952 = fmul fast float %1947, %1203
  %1953 = fmul fast float %1947, %1204
  br label %1954

; <label>:1954                                    ; preds = %1946, %1927
  %1955 = phi float [ %1951, %1946 ], [ %1202, %1927 ]
  %1956 = phi float [ %1952, %1946 ], [ %1203, %1927 ]
  %1957 = phi float [ %1953, %1946 ], [ %1204, %1927 ]
  %1958 = phi float [ %1948, %1946 ], [ %1205, %1927 ]
  %1959 = phi float [ %1949, %1946 ], [ %1206, %1927 ]
  %1960 = phi float [ %1950, %1946 ], [ %1207, %1927 ]
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = and i32 %1962, 3
  %1964 = icmp eq i32 %1963, 3
  br i1 %1964, label %2043, label %1965

; <label>:1965                                    ; preds = %1954
  %1966 = and i32 %1962, 16
  %1967 = icmp ne i32 %1966, 0
  %1968 = select i1 %1967, float %1515, float 0.000000e+00
  %1969 = icmp eq i32 %1963, 0
  br i1 %1969, label %1970, label %1998

; <label>:1970                                    ; preds = %1965
  %1971 = and i32 %1962, 64
  %1972 = icmp ne i32 %1971, 0
  %1973 = select i1 %1972, float %1515, float 0.000000e+00
  %1974 = fsub fast float %1735, %1958
  %1975 = fsub fast float %1736, %1959
  %1976 = fsub fast float %1737, %1960
  %1977 = fmul fast float %1968, %1974
  %1978 = fmul fast float %1968, %1975
  %1979 = fmul fast float %1968, %1976
  %1980 = fadd fast float %1977, %1958
  %1981 = fadd fast float %1978, %1959
  %1982 = fadd fast float %1979, %1960
  %1983 = fsub fast float %1721, %1211
  %1984 = fmul fast float %1968, %1983
  %1985 = fadd fast float %1984, %1211
  %1986 = fsub fast float %1863, %1955
  %1987 = fsub fast float %1864, %1956
  %1988 = fsub fast float %1865, %1957
  %1989 = fmul fast float %1973, %1986
  %1990 = fmul fast float %1973, %1987
  %1991 = fmul fast float %1973, %1988
  %1992 = fadd fast float %1989, %1955
  %1993 = fadd fast float %1990, %1956
  %1994 = fadd fast float %1991, %1957
  %1995 = fsub fast float %1945, %1217
  %1996 = fmul fast float %1968, %1995
  %1997 = fadd fast float %1996, %1217
  br label %2043

; <label>:1998                                    ; preds = %1965
  %1999 = icmp eq i32 %1963, 1
  br i1 %1999, label %2000, label %2013

; <label>:2000                                    ; preds = %1998
  %2001 = fadd fast float %1735, -1.000000e+00
  %2002 = fadd fast float %1736, -1.000000e+00
  %2003 = fadd fast float %1737, -1.000000e+00
  %2004 = fmul fast float %1968, %2001
  %2005 = fmul fast float %1968, %2002
  %2006 = fmul fast float %1968, %2003
  %2007 = fadd fast float %2004, 1.000000e+00
  %2008 = fadd fast float %2005, 1.000000e+00
  %2009 = fadd fast float %2006, 1.000000e+00
  %2010 = fmul fast float %2007, %1958
  %2011 = fmul fast float %2008, %1959
  %2012 = fmul fast float %2009, %1960
  br label %2043

; <label>:2013                                    ; preds = %1998
  %2014 = icmp eq i32 %1963, 2
  br i1 %2014, label %2015, label %2043

; <label>:2015                                    ; preds = %2013
  %2016 = call float @dx.op.unary.f32(i32 24, float %1735)  ; Sqrt(value)
  %2017 = call float @dx.op.unary.f32(i32 24, float %1736)  ; Sqrt(value)
  %2018 = call float @dx.op.unary.f32(i32 24, float %1737)  ; Sqrt(value)
  %2019 = fadd fast float %2016, -5.000000e-01
  %2020 = fadd fast float %2017, -5.000000e-01
  %2021 = fadd fast float %2018, -5.000000e-01
  %2022 = fmul fast float %2019, %1968
  %2023 = fmul fast float %2020, %1968
  %2024 = fmul fast float %2021, %1968
  %2025 = fadd fast float %2022, 5.000000e-01
  %2026 = fadd fast float %2023, 5.000000e-01
  %2027 = fadd fast float %2024, 5.000000e-01
  %2028 = fmul fast float %2025, 2.000000e+00
  %2029 = fsub fast float 1.000000e+00, %2028
  %2030 = fmul fast float %2029, %1958
  %2031 = fadd fast float %2030, %2028
  %2032 = fmul fast float %2031, %1958
  %2033 = fmul fast float %2026, 2.000000e+00
  %2034 = fsub fast float 1.000000e+00, %2033
  %2035 = fmul fast float %2034, %1959
  %2036 = fadd fast float %2035, %2033
  %2037 = fmul fast float %2036, %1959
  %2038 = fmul fast float %2027, 2.000000e+00
  %2039 = fsub fast float 1.000000e+00, %2038
  %2040 = fmul fast float %2039, %1960
  %2041 = fadd fast float %2040, %2038
  %2042 = fmul fast float %2041, %1960
  br label %2043

; <label>:2043                                    ; preds = %2015, %2013, %2000, %1970, %1954
  %2044 = phi float [ %1955, %1954 ], [ %1955, %2015 ], [ %1955, %2013 ], [ %1955, %2000 ], [ %1992, %1970 ]
  %2045 = phi float [ %1956, %1954 ], [ %1956, %2015 ], [ %1956, %2013 ], [ %1956, %2000 ], [ %1993, %1970 ]
  %2046 = phi float [ %1957, %1954 ], [ %1957, %2015 ], [ %1957, %2013 ], [ %1957, %2000 ], [ %1994, %1970 ]
  %2047 = phi float [ %1958, %1954 ], [ %2032, %2015 ], [ %1958, %2013 ], [ %2010, %2000 ], [ %1980, %1970 ]
  %2048 = phi float [ %1959, %1954 ], [ %2037, %2015 ], [ %1959, %2013 ], [ %2011, %2000 ], [ %1981, %1970 ]
  %2049 = phi float [ %1960, %1954 ], [ %2042, %2015 ], [ %1960, %2013 ], [ %2012, %2000 ], [ %1982, %1970 ]
  %2050 = phi float [ %1211, %1954 ], [ %1211, %2015 ], [ %1211, %2013 ], [ %1211, %2000 ], [ %1985, %1970 ]
  %2051 = phi float [ %1217, %1954 ], [ %1217, %2015 ], [ %1217, %2013 ], [ %1217, %2000 ], [ %1997, %1970 ]
  %2052 = and i32 %1962, 12
  %2053 = icmp eq i32 %2052, 12
  br i1 %2053, label %2170, label %2054

; <label>:2054                                    ; preds = %2043
  %2055 = and i32 %1962, 2097184
  %2056 = icmp eq i32 %2055, 2097184
  %2057 = select i1 %2056, float %1515, float 0.000000e+00
  %2058 = and i32 %1962, 4194336
  %2059 = icmp eq i32 %2058, 4194336
  %2060 = select i1 %2059, float %1515, float 0.000000e+00
  %2061 = and i32 %1962, 8388640
  %2062 = icmp eq i32 %2061, 8388640
  %2063 = select i1 %2062, float %1515, float 0.000000e+00
  %2064 = and i32 %1962, 2048
  %2065 = icmp ne i32 %2064, 0
  %2066 = select i1 %2065, float %1515, float 0.000000e+00
  %2067 = and i32 %1962, 8192
  %2068 = icmp ne i32 %2067, 0
  %2069 = select i1 %2068, float %1515, float 0.000000e+00
  %2070 = and i32 %1962, 16384
  %2071 = icmp ne i32 %2070, 0
  %2072 = select i1 %2071, float %1515, float 0.000000e+00
  %2073 = icmp eq i32 %2052, 0
  br i1 %2073, label %2074, label %2102

; <label>:2074                                    ; preds = %2054
  %2075 = fsub fast float %1816, %1200
  %2076 = fsub fast float %1817, %1201
  %2077 = fmul fast float %2057, %2075
  %2078 = fmul fast float %2057, %2076
  %2079 = fadd fast float %2077, %1200
  %2080 = fadd fast float %2078, %1201
  %2081 = fsub fast float %1818, %1214
  %2082 = fmul fast float %2060, %2081
  %2083 = fadd fast float %2082, %1214
  %2084 = fsub fast float %1815, %1213
  %2085 = fmul fast float %2063, %2084
  %2086 = fadd fast float %2085, %1213
  %2087 = fsub fast float %1931, %1215
  %2088 = fmul fast float %2066, %2087
  %2089 = fadd fast float %2088, %1215
  %2090 = fsub fast float %1928, %1208
  %2091 = fsub fast float %1929, %1209
  %2092 = fsub fast float %1930, %1210
  %2093 = fmul fast float %2069, %2090
  %2094 = fmul fast float %2069, %2091
  %2095 = fmul fast float %2069, %2092
  %2096 = fadd fast float %2093, %1208
  %2097 = fadd fast float %2094, %1209
  %2098 = fadd fast float %2095, %1210
  %2099 = fsub fast float %1932, %1216
  %2100 = fmul fast float %2072, %2099
  %2101 = fadd fast float %2100, %1216
  br label %2170

; <label>:2102                                    ; preds = %2054
  %2103 = icmp eq i32 %2052, 4
  br i1 %2103, label %2104, label %2146

; <label>:2104                                    ; preds = %2102
  %2105 = fmul fast float %2057, %1816
  %2106 = fmul fast float %2057, %1817
  %2107 = fadd fast float %2105, %1200
  %2108 = fadd fast float %2106, %1201
  %2109 = call float @dx.op.binary.f32(i32 36, float %1214, float %1818)  ; FMin(a,b)
  %2110 = fsub fast float %2109, %1214
  %2111 = fmul fast float %2110, %2060
  %2112 = fadd fast float %2111, %1214
  %2113 = fadd fast float %1815, %1213
  %2114 = fmul fast float %2113, 0x3FF337FAE0000000
  %2115 = fmul fast float %1213, %1213
  %2116 = fmul fast float %1815, %1815
  %2117 = fadd fast float %2116, %2115
  %2118 = fmul fast float %2117, 0x3FE5152B00000000
  %2119 = fmul fast float %1213, 0xBFCC1F85E0000000
  %2120 = fmul fast float %2119, %1815
  %2121 = fadd fast float %2120, 0xBFE1363700000000
  %2122 = fadd fast float %2121, %2114
  %2123 = fsub fast float %2122, %2118
  %2124 = fmul fast float %2113, 0x3FBA6F0D00000000
  %2125 = fmul fast float %2117, 0x3FD0432880000000
  %2126 = fmul fast float %1213, 0xBFEF110800000000
  %2127 = fmul fast float %2126, %1815
  %2128 = fadd fast float %2127, 1.000000e+00
  %2129 = fsub fast float %2128, %2124
  %2130 = fadd fast float %2129, %2125
  %2131 = fdiv fast float %2123, %2130
  %2132 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2133 = fsub fast float %2132, %1213
  %2134 = fmul fast float %2133, %2063
  %2135 = fadd fast float %2134, %1213
  %2136 = fmul fast float %2066, %1931
  %2137 = fadd fast float %2136, %1215
  %2138 = fmul fast float %2069, %1928
  %2139 = fmul fast float %2069, %1929
  %2140 = fmul fast float %2069, %1930
  %2141 = fadd fast float %2138, %1208
  %2142 = fadd fast float %2139, %1209
  %2143 = fadd fast float %2140, %1210
  %2144 = fmul fast float %2072, %1932
  %2145 = fadd fast float %2144, %1216
  br label %2170

; <label>:2146                                    ; preds = %2102
  %2147 = icmp eq i32 %2052, 8
  br i1 %2147, label %2148, label %2170

; <label>:2148                                    ; preds = %2146
  %2149 = fmul fast float %2057, %1816
  %2150 = fmul fast float %2057, %1817
  %2151 = fadd fast float %2149, %1200
  %2152 = fadd fast float %2150, %1201
  %2153 = call float @dx.op.binary.f32(i32 36, float %1214, float %1818)  ; FMin(a,b)
  %2154 = fsub fast float %2153, %1214
  %2155 = fmul fast float %2154, %2060
  %2156 = fadd fast float %2155, %1214
  %2157 = fsub fast float %1815, %1213
  %2158 = fmul fast float %2063, %2157
  %2159 = fadd fast float %2158, %1213
  %2160 = fmul fast float %2066, %1931
  %2161 = fadd fast float %2160, %1215
  %2162 = fmul fast float %2069, %1928
  %2163 = fmul fast float %2069, %1929
  %2164 = fmul fast float %2069, %1930
  %2165 = fadd fast float %2162, %1208
  %2166 = fadd fast float %2163, %1209
  %2167 = fadd fast float %2164, %1210
  %2168 = fmul fast float %2072, %1932
  %2169 = fadd fast float %2168, %1216
  br label %2170

; <label>:2170                                    ; preds = %2148, %2146, %2104, %2074, %2043, %1514, %1218, %1199
  %2171 = phi float [ %1200, %2043 ], [ %1200, %1514 ], [ %1200, %1199 ], [ %2151, %2148 ], [ %1200, %2146 ], [ %2107, %2104 ], [ %2079, %2074 ], [ %1200, %1218 ]
  %2172 = phi float [ %1201, %2043 ], [ %1201, %1514 ], [ %1201, %1199 ], [ %2152, %2148 ], [ %1201, %2146 ], [ %2108, %2104 ], [ %2080, %2074 ], [ %1201, %1218 ]
  %2173 = phi float [ %2044, %2043 ], [ %1202, %1514 ], [ %1202, %1199 ], [ %2044, %2148 ], [ %2044, %2146 ], [ %2044, %2104 ], [ %2044, %2074 ], [ %1202, %1218 ]
  %2174 = phi float [ %2045, %2043 ], [ %1203, %1514 ], [ %1203, %1199 ], [ %2045, %2148 ], [ %2045, %2146 ], [ %2045, %2104 ], [ %2045, %2074 ], [ %1203, %1218 ]
  %2175 = phi float [ %2046, %2043 ], [ %1204, %1514 ], [ %1204, %1199 ], [ %2046, %2148 ], [ %2046, %2146 ], [ %2046, %2104 ], [ %2046, %2074 ], [ %1204, %1218 ]
  %2176 = phi float [ %2047, %2043 ], [ %1205, %1514 ], [ %1205, %1199 ], [ %2047, %2148 ], [ %2047, %2146 ], [ %2047, %2104 ], [ %2047, %2074 ], [ %1205, %1218 ]
  %2177 = phi float [ %2048, %2043 ], [ %1206, %1514 ], [ %1206, %1199 ], [ %2048, %2148 ], [ %2048, %2146 ], [ %2048, %2104 ], [ %2048, %2074 ], [ %1206, %1218 ]
  %2178 = phi float [ %2049, %2043 ], [ %1207, %1514 ], [ %1207, %1199 ], [ %2049, %2148 ], [ %2049, %2146 ], [ %2049, %2104 ], [ %2049, %2074 ], [ %1207, %1218 ]
  %2179 = phi float [ %1208, %2043 ], [ %1208, %1514 ], [ %1208, %1199 ], [ %2165, %2148 ], [ %1208, %2146 ], [ %2141, %2104 ], [ %2096, %2074 ], [ %1208, %1218 ]
  %2180 = phi float [ %1209, %2043 ], [ %1209, %1514 ], [ %1209, %1199 ], [ %2166, %2148 ], [ %1209, %2146 ], [ %2142, %2104 ], [ %2097, %2074 ], [ %1209, %1218 ]
  %2181 = phi float [ %1210, %2043 ], [ %1210, %1514 ], [ %1210, %1199 ], [ %2167, %2148 ], [ %1210, %2146 ], [ %2143, %2104 ], [ %2098, %2074 ], [ %1210, %1218 ]
  %2182 = phi float [ %2050, %2043 ], [ %1211, %1514 ], [ %1211, %1199 ], [ %2050, %2148 ], [ %2050, %2146 ], [ %2050, %2104 ], [ %2050, %2074 ], [ %1211, %1218 ]
  %2183 = phi float [ %1213, %2043 ], [ %1213, %1514 ], [ %1213, %1199 ], [ %2159, %2148 ], [ %1213, %2146 ], [ %2135, %2104 ], [ %2086, %2074 ], [ %1213, %1218 ]
  %2184 = phi float [ %1214, %2043 ], [ %1214, %1514 ], [ %1214, %1199 ], [ %2156, %2148 ], [ %1214, %2146 ], [ %2112, %2104 ], [ %2083, %2074 ], [ %1214, %1218 ]
  %2185 = phi float [ %1215, %2043 ], [ %1215, %1514 ], [ %1215, %1199 ], [ %2161, %2148 ], [ %1215, %2146 ], [ %2137, %2104 ], [ %2089, %2074 ], [ %1215, %1218 ]
  %2186 = phi float [ %1216, %2043 ], [ %1216, %1514 ], [ %1216, %1199 ], [ %2169, %2148 ], [ %1216, %2146 ], [ %2145, %2104 ], [ %2101, %2074 ], [ %1216, %1218 ]
  %2187 = phi float [ %2051, %2043 ], [ %1217, %1514 ], [ %1217, %1199 ], [ %2051, %2148 ], [ %2051, %2146 ], [ %2051, %2104 ], [ %2051, %2074 ], [ %1217, %1218 ]
  br i1 %418, label %3140, label %2188

; <label>:2188                                    ; preds = %2170
  %2189 = icmp ult i32 %474, 3
  %2190 = add i32 %62, 56
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = add i32 %62, 60
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = or i32 %2195, %2192
  %2197 = icmp eq i32 %2196, 0
  br i1 %2197, label %3140, label %2198

; <label>:2198                                    ; preds = %2188
  %2199 = and i32 %2192, 262144
  %2200 = icmp ne i32 %2199, 0
  %2201 = select i1 %2200, float %65, float 1.000000e+00
  %2202 = select i1 %2200, float %66, float 0.000000e+00
  %2203 = select i1 %2200, float %67, float 0.000000e+00
  %2204 = select i1 %2200, float %68, float 1.000000e+00
  %2205 = select i1 %2200, float %69, float %90
  %2206 = select i1 %2200, float %70, float %91
  %2207 = add i32 %62, 316
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = lshr i32 %2209, 16
  %2211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2210)  ; LegacyF16ToF32(value)
  %2212 = fmul fast float %2211, 0x3F50624DE0000000
  %2213 = add i32 %62, 120
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = lshr i32 %2215, 16
  %2217 = and i32 %2216, 255
  %2218 = lshr i32 %2215, 24
  %2219 = add i32 %62, 324
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 65535
  %2223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2222)  ; LegacyF16ToF32(value)
  %2224 = lshr i32 %2221, 16
  %2225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2224)  ; LegacyF16ToF32(value)
  %2226 = add i32 %62, 64
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = lshr i32 %2228, 22
  %2230 = shl nuw nsw i32 %2229, 5
  %2231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2230)  ; LegacyF16ToF32(value)
  %2232 = shl i32 %2228, 4
  %2233 = and i32 %2232, 32752
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = lshr i32 %2228, 7
  %2236 = and i32 %2235, 32752
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 3
  %2240 = fmul fast float %2239, 1.000000e+03
  %2241 = fmul fast float %368, %2240
  %2242 = call float @dx.op.unary.f32(i32 22, float %2241)  ; Frc(value)
  %2243 = fadd fast float %2242, %358
  %2244 = fmul fast float %369, %2240
  %2245 = call float @dx.op.unary.f32(i32 22, float %2244)  ; Frc(value)
  %2246 = fadd fast float %2245, %360
  %2247 = fmul fast float %2212, %2240
  %2248 = call float @dx.op.unary.f32(i32 22, float %2247)  ; Frc(value)
  %2249 = fmul fast float %2248, 0x401921FB60000000
  %2250 = fadd fast float %2249, %2231
  %2251 = call float @dx.op.unary.f32(i32 13, float %2250)  ; Sin(value)
  %2252 = call float @dx.op.unary.f32(i32 12, float %2250)  ; Cos(value)
  %2253 = fsub fast float -0.000000e+00, %2251
  %2254 = fadd fast float %2205, -5.000000e-01
  %2255 = fadd fast float %2206, -5.000000e-01
  %2256 = fmul fast float %2223, %2254
  %2257 = fmul fast float %2225, %2255
  %2258 = fadd fast float %2256, 5.000000e-01
  %2259 = fadd fast float %2257, 5.000000e-01
  %2260 = fmul fast float %2234, %2258
  %2261 = fmul fast float %2237, %2259
  %2262 = fmul fast float %2252, %2260
  %2263 = call float @dx.op.tertiary.f32(i32 46, float %2253, float %2261, float %2262)  ; FMad(a,b,c)
  %2264 = fmul fast float %2251, %2260
  %2265 = call float @dx.op.tertiary.f32(i32 46, float %2252, float %2261, float %2264)  ; FMad(a,b,c)
  %2266 = fadd fast float %2243, %2263
  %2267 = fadd fast float %2246, %2265
  %2268 = icmp ugt i32 %2217, 1
  %2269 = icmp ugt i32 %2215, 33554431
  %2270 = or i1 %2269, %2268
  br i1 %2270, label %2271, label %2296

; <label>:2271                                    ; preds = %2198
  %2272 = add i32 %62, 260
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = lshr i32 %2274, 16
  %2276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2275)  ; LegacyF16ToF32(value)
  %2277 = fmul fast float %2239, %2276
  %2278 = call float @dx.op.unary.f32(i32 22, float %2277)  ; Frc(value)
  %2279 = mul nuw nsw i32 %2217, %2218
  %2280 = uitofp i32 %2279 to float
  %2281 = fmul fast float %2278, %2280
  %2282 = call float @dx.op.unary.f32(i32 27, float %2281)  ; Round_ni(value)
  %2283 = fptoui float %2282 to i32
  %2284 = urem i32 %2283, %2217
  %2285 = udiv i32 %2283, %2218
  %2286 = call float @dx.op.unary.f32(i32 22, float %2266)  ; Frc(value)
  %2287 = call float @dx.op.unary.f32(i32 22, float %2267)  ; Frc(value)
  %2288 = uitofp i32 %2284 to float
  %2289 = uitofp i32 %2285 to float
  %2290 = fadd fast float %2286, %2288
  %2291 = fadd fast float %2287, %2289
  %2292 = uitofp i32 %2217 to float
  %2293 = uitofp i32 %2218 to float
  %2294 = fdiv fast float %2290, %2292
  %2295 = fdiv fast float %2291, %2293
  br label %2296

; <label>:2296                                    ; preds = %2271, %2198
  %2297 = phi float [ %2294, %2271 ], [ %2266, %2198 ]
  %2298 = phi float [ %2295, %2271 ], [ %2267, %2198 ]
  %2299 = and i32 %2192, 16777216
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2410, label %2301

; <label>:2301                                    ; preds = %2296
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 0
  %2304 = extractvalue %dx.types.CBufRet.f32 %2302, 1
  %2305 = extractvalue %dx.types.CBufRet.f32 %2302, 2
  %2306 = fadd fast float %2303, %170
  %2307 = fadd fast float %2304, %171
  %2308 = fadd fast float %2305, %172
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = icmp eq i32 %63, 65535
  br i1 %2312, label %2407, label %2313

; <label>:2313                                    ; preds = %2301
  %2314 = lshr i32 %63, 1
  %2315 = shl i32 %2314, 2
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %63, 1
  %2319 = icmp ne i32 %2318, 0
  %2320 = lshr i32 %2317, 16
  %2321 = and i32 %2317, 65535
  %2322 = select i1 %2319, i32 %2320, i32 %2321
  %2323 = icmp eq i32 %2322, 65535
  br i1 %2323, label %2403, label %2324

; <label>:2324                                    ; preds = %2313
  %2325 = mul nuw nsw i32 %2322, 40
  %2326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = extractvalue %dx.types.ResRet.f32 %2326, 1
  %2329 = extractvalue %dx.types.ResRet.f32 %2326, 2
  %2330 = add nuw nsw i32 %2325, 12
  %2331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 0
  %2333 = extractvalue %dx.types.ResRet.f32 %2331, 1
  %2334 = extractvalue %dx.types.ResRet.f32 %2331, 2
  %2335 = add nuw nsw i32 %2325, 24
  %2336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.f32 %2336, 0
  %2338 = extractvalue %dx.types.ResRet.f32 %2336, 1
  %2339 = extractvalue %dx.types.ResRet.f32 %2336, 2
  %2340 = add nuw nsw i32 %2325, 36
  %2341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = fsub fast float %2306, %2327
  %2344 = fsub fast float %2307, %2328
  %2345 = fsub fast float %2308, %2329
  %2346 = fmul fast float %2342, %2343
  %2347 = fmul fast float %2342, %2344
  %2348 = fmul fast float %2342, %2345
  %2349 = call float @dx.op.unary.f32(i32 27, float %2346)  ; Round_ni(value)
  %2350 = call float @dx.op.unary.f32(i32 27, float %2347)  ; Round_ni(value)
  %2351 = call float @dx.op.unary.f32(i32 27, float %2348)  ; Round_ni(value)
  %2352 = fadd fast float %2349, 5.000000e-01
  %2353 = fadd fast float %2350, 5.000000e-01
  %2354 = fadd fast float %2351, 5.000000e-01
  %2355 = fmul fast float %2352, %2332
  %2356 = fmul fast float %2353, %2333
  %2357 = fmul fast float %2354, %2334
  %2358 = shl i32 %63, 2
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = add i32 %2360, 0
  %2362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2363 = call float @dx.op.unary.f32(i32 22, float %2355)  ; Frc(value)
  %2364 = call float @dx.op.unary.f32(i32 22, float %2356)  ; Frc(value)
  %2365 = call float @dx.op.unary.f32(i32 22, float %2357)  ; Frc(value)
  %2366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2362, %dx.types.Handle %55, float %2363, float %2364, float %2365, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2367 = extractvalue %dx.types.ResRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.ResRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.ResRet.f32 %2366, 2
  %2370 = fmul fast float %2367, 1.023000e+03
  %2371 = fmul fast float %2368, 1.023000e+03
  %2372 = fmul fast float %2369, 1.023000e+03
  %2373 = fadd fast float %2370, 5.000000e-01
  %2374 = fadd fast float %2371, 5.000000e-01
  %2375 = fadd fast float %2372, 5.000000e-01
  %2376 = call float @dx.op.unary.f32(i32 27, float %2373)  ; Round_ni(value)
  %2377 = call float @dx.op.unary.f32(i32 27, float %2374)  ; Round_ni(value)
  %2378 = call float @dx.op.unary.f32(i32 27, float %2375)  ; Round_ni(value)
  %2379 = fsub fast float %2346, %2349
  %2380 = fsub fast float %2347, %2350
  %2381 = fsub fast float %2348, %2351
  %2382 = fmul fast float %2379, 7.500000e-01
  %2383 = fmul fast float %2380, 7.500000e-01
  %2384 = fmul fast float %2381, 7.500000e-01
  %2385 = fadd fast float %2349, 1.250000e-01
  %2386 = fadd fast float %2385, %2382
  %2387 = fadd fast float %2386, %2376
  %2388 = fadd fast float %2350, 1.250000e-01
  %2389 = fadd fast float %2388, %2383
  %2390 = fadd fast float %2389, %2377
  %2391 = fadd fast float %2351, 1.250000e-01
  %2392 = fadd fast float %2391, %2384
  %2393 = fadd fast float %2392, %2378
  %2394 = fmul fast float %2387, %2337
  %2395 = fmul fast float %2390, %2338
  %2396 = fmul fast float %2393, %2339
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = add i32 %2398, 0
  %2400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2401 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2400, %dx.types.Handle %53, float %2394, float %2395, float %2396, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2402 = extractvalue %dx.types.ResRet.f32 %2401, 0
  br label %2403

; <label>:2403                                    ; preds = %2324, %2313
  %2404 = phi float [ %2402, %2324 ], [ -1.000000e+00, %2313 ]
  %2405 = fadd fast float %2404, %2311
  %2406 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  br label %2407

; <label>:2407                                    ; preds = %2403, %2301
  %2408 = phi float [ %2406, %2403 ], [ %2311, %2301 ]
  %2409 = fmul fast float %2408, %470
  br label %2410

; <label>:2410                                    ; preds = %2407, %2296
  %2411 = phi float [ %2409, %2407 ], [ %470, %2296 ]
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 256
  %2415 = icmp eq i32 %2414, 0
  br i1 %2415, label %2462, label %2416

; <label>:2416                                    ; preds = %2410
  %2417 = add i32 %62, 512
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2417, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = add i32 %2419, 0
  %2421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2421, %dx.types.Handle %108, float %2297, float %2298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2423 = extractvalue %dx.types.ResRet.f32 %2422, 0
  %2424 = add i32 %62, 132
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2424, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = shl i32 %2426, 4
  %2428 = and i32 %2427, 32752
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = lshr i32 %2426, 7
  %2431 = and i32 %2430, 32752
  %2432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2431)  ; LegacyF16ToF32(value)
  %2433 = fsub fast float 1.000000e+00, %2411
  %2434 = call float @dx.op.binary.f32(i32 35, float %2433, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2435 = bitcast float %2411 to i32
  %2436 = sitofp i32 %2435 to float
  %2437 = fadd fast float %2436, 0xC1CFBF8940000000
  %2438 = fmul fast float %2432, %2437
  %2439 = fadd fast float %2438, 0x41CFBF8940000000
  %2440 = fptosi float %2439 to i32
  %2441 = bitcast i32 %2440 to float
  %2442 = bitcast float %2434 to i32
  %2443 = sitofp i32 %2442 to float
  %2444 = fadd fast float %2443, 0xC1CFBF8940000000
  %2445 = fmul fast float %2444, %2432
  %2446 = fadd fast float %2445, 0x41CFBF8940000000
  %2447 = fptosi float %2446 to i32
  %2448 = bitcast i32 %2447 to float
  %2449 = fmul fast float %2441, %2429
  %2450 = fmul fast float %2448, %2429
  %2451 = fsub fast float %2434, %2449
  %2452 = fadd fast float %2450, %2434
  %2453 = call float @dx.op.unary.f32(i32 7, float %2451)  ; Saturate(value)
  %2454 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  %2455 = fsub fast float %2423, %2453
  %2456 = fsub fast float %2454, %2453
  %2457 = bitcast float %2456 to i32
  %2458 = sub nsw i32 2129859010, %2457
  %2459 = bitcast i32 %2458 to float
  %2460 = fmul fast float %2459, %2455
  %2461 = call float @dx.op.unary.f32(i32 7, float %2460)  ; Saturate(value)
  br label %2462

; <label>:2462                                    ; preds = %2416, %2410
  %2463 = phi float [ %2461, %2416 ], [ %2411, %2410 ]
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 128
  %2467 = icmp eq i32 %2466, 0
  br i1 %2467, label %2484, label %2468

; <label>:2468                                    ; preds = %2462
  %2469 = add i32 %62, 496
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = add i32 %2471, 0
  %2473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2473, %dx.types.Handle %108, float %2297, float %2298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2475 = extractvalue %dx.types.ResRet.f32 %2474, 0
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 524288
  %2479 = icmp ne i32 %2478, 0
  %2480 = fcmp fast ogt float %2475, 0x3FE0101020000000
  %2481 = select i1 %2480, float 1.000000e+00, float 0.000000e+00
  %2482 = select i1 %2479, float %2481, float %2475
  %2483 = fmul fast float %2482, %2463
  br label %2484

; <label>:2484                                    ; preds = %2468, %2462
  %2485 = phi float [ %2483, %2468 ], [ %2463, %2462 ]
  %2486 = fcmp fast ult float %2485, 0x3F70101020000000
  br i1 %2486, label %3140, label %2487

; <label>:2487                                    ; preds = %2484
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 16
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2690, label %2492

; <label>:2492                                    ; preds = %2487
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = add i32 %62, 448
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = add i32 %2497, 0
  %2499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2499, %dx.types.Handle %107, float %2297, float %2298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2501 = extractvalue %dx.types.ResRet.f32 %2500, 0
  %2502 = extractvalue %dx.types.ResRet.f32 %2500, 1
  %2503 = extractvalue %dx.types.ResRet.f32 %2500, 2
  %2504 = extractvalue %dx.types.ResRet.f32 %2500, 3
  %2505 = and i32 %2494, 255
  %2506 = uitofp i32 %2505 to float
  %2507 = lshr i32 %2494, 8
  %2508 = and i32 %2507, 255
  %2509 = uitofp i32 %2508 to float
  %2510 = fmul fast float %2504, %2506
  %2511 = fadd fast float %2510, %2509
  %2512 = fmul fast float %2511, 0x3F70101000000000
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 512
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2525, label %2517

; <label>:2517                                    ; preds = %2492
  %2518 = add i32 %62, 528
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %2520, 0
  %2522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2522, %dx.types.Handle %108, float %2297, float %2298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2524 = extractvalue %dx.types.ResRet.f32 %2523, 0
  br label %2525

; <label>:2525                                    ; preds = %2517, %2492
  %2526 = phi float [ %2524, %2517 ], [ 1.000000e+00, %2492 ]
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 33554432
  %2530 = icmp eq i32 %2529, 0
  br i1 %2530, label %2637, label %2531

; <label>:2531                                    ; preds = %2525
  %2532 = add i32 %62, 256
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = and i32 %2534, 65535
  %2536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2535)  ; LegacyF16ToF32(value)
  %2537 = lshr i32 %2534, 16
  %2538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2537)  ; LegacyF16ToF32(value)
  %2539 = add i32 %62, 260
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, 65535
  %2543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2542)  ; LegacyF16ToF32(value)
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = lshr i32 %2545, 24
  %2547 = uitofp i32 %2546 to float
  %2548 = fmul fast float %2547, 0x3F70101020000000
  %2549 = and i32 %2545, 255
  %2550 = uitofp i32 %2549 to float
  %2551 = fmul fast float %2550, 0x3F70101020000000
  %2552 = lshr i32 %2545, 8
  %2553 = and i32 %2552, 255
  %2554 = uitofp i32 %2553 to float
  %2555 = fmul fast float %2554, 0x3F70101020000000
  %2556 = lshr i32 %2545, 16
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2558, 0x3F70101020000000
  %2560 = add i32 %62, 252
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = lshr i32 %2562, 24
  %2564 = uitofp i32 %2563 to float
  %2565 = fmul fast float %2564, 0x3F70101020000000
  %2566 = and i32 %2562, 255
  %2567 = uitofp i32 %2566 to float
  %2568 = fmul fast float %2567, 0x3F70101020000000
  %2569 = lshr i32 %2562, 8
  %2570 = and i32 %2569, 255
  %2571 = uitofp i32 %2570 to float
  %2572 = fmul fast float %2571, 0x3F70101020000000
  %2573 = lshr i32 %2562, 16
  %2574 = and i32 %2573, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = fmul fast float %2575, 0x3F70101020000000
  %2577 = bitcast float %2501 to i32
  %2578 = ashr i32 %2577, 1
  %2579 = sub nsw i32 1597463174, %2578
  %2580 = bitcast i32 %2579 to float
  %2581 = fmul fast float %2501, 5.000000e-01
  %2582 = fmul fast float %2580, %2580
  %2583 = fmul fast float %2582, %2581
  %2584 = fsub fast float 1.500000e+00, %2583
  %2585 = fmul fast float %2580, %2501
  %2586 = fmul fast float %2585, %2584
  %2587 = bitcast float %2502 to i32
  %2588 = ashr i32 %2587, 1
  %2589 = sub nsw i32 1597463174, %2588
  %2590 = bitcast i32 %2589 to float
  %2591 = fmul fast float %2502, 5.000000e-01
  %2592 = fmul fast float %2590, %2590
  %2593 = fmul fast float %2592, %2591
  %2594 = fsub fast float 1.500000e+00, %2593
  %2595 = fmul fast float %2590, %2502
  %2596 = fmul fast float %2595, %2594
  %2597 = bitcast float %2503 to i32
  %2598 = ashr i32 %2597, 1
  %2599 = sub nsw i32 1597463174, %2598
  %2600 = bitcast i32 %2599 to float
  %2601 = fmul fast float %2503, 5.000000e-01
  %2602 = fmul fast float %2600, %2600
  %2603 = fmul fast float %2602, %2601
  %2604 = fsub fast float 1.500000e+00, %2603
  %2605 = fmul fast float %2600, %2503
  %2606 = fmul fast float %2605, %2604
  %2607 = fsub fast float %2586, %2568
  %2608 = fsub fast float %2596, %2572
  %2609 = fsub fast float %2606, %2576
  %2610 = fmul fast float %2607, %2536
  %2611 = fmul fast float %2608, %2538
  %2612 = fmul fast float %2609, %2543
  %2613 = fadd fast float %2610, %2551
  %2614 = fadd fast float %2611, %2555
  %2615 = fadd fast float %2612, %2559
  %2616 = call float @dx.op.unary.f32(i32 7, float %2613)  ; Saturate(value)
  %2617 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2618 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2619 = fmul fast float %2616, %2616
  %2620 = fmul fast float %2617, %2617
  %2621 = fmul fast float %2618, %2618
  %2622 = fsub fast float %2619, %2501
  %2623 = fsub fast float %2620, %2502
  %2624 = fsub fast float %2621, %2503
  %2625 = fmul fast float %2622, %2526
  %2626 = fmul fast float %2623, %2526
  %2627 = fmul fast float %2624, %2526
  %2628 = fadd fast float %2625, %2501
  %2629 = fadd fast float %2626, %2502
  %2630 = fadd fast float %2627, %2503
  %2631 = fadd fast float %2548, %2512
  %2632 = fsub fast float %2631, %2565
  %2633 = call float @dx.op.unary.f32(i32 7, float %2632)  ; Saturate(value)
  %2634 = fsub fast float %2633, %2512
  %2635 = fmul fast float %2634, %2526
  %2636 = fadd fast float %2635, %2512
  br label %2690

; <label>:2637                                    ; preds = %2525
  %2638 = and i32 %2528, 134217728
  %2639 = icmp eq i32 %2638, 0
  br i1 %2639, label %2674, label %2640

; <label>:2640                                    ; preds = %2637
  %2641 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %2642 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %2643 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %2644 = fadd fast float %2641, -5.000000e-01
  %2645 = fadd fast float %2642, -5.000000e-01
  %2646 = fadd fast float %2643, -5.000000e-01
  %2647 = fmul fast float %2644, %2526
  %2648 = fmul fast float %2645, %2526
  %2649 = fmul fast float %2646, %2526
  %2650 = fadd fast float %2647, 5.000000e-01
  %2651 = fadd fast float %2648, 5.000000e-01
  %2652 = fadd fast float %2649, 5.000000e-01
  %2653 = call float @dx.op.unary.f32(i32 24, float %2501)  ; Sqrt(value)
  %2654 = call float @dx.op.unary.f32(i32 24, float %2502)  ; Sqrt(value)
  %2655 = call float @dx.op.unary.f32(i32 24, float %2503)  ; Sqrt(value)
  %2656 = fmul fast float %2650, 2.000000e+00
  %2657 = fsub fast float 1.000000e+00, %2656
  %2658 = fmul fast float %2657, %2653
  %2659 = fadd fast float %2658, %2656
  %2660 = fmul fast float %2659, %2653
  %2661 = fmul fast float %2651, 2.000000e+00
  %2662 = fsub fast float 1.000000e+00, %2661
  %2663 = fmul fast float %2662, %2654
  %2664 = fadd fast float %2663, %2661
  %2665 = fmul fast float %2664, %2654
  %2666 = fmul fast float %2652, 2.000000e+00
  %2667 = fsub fast float 1.000000e+00, %2666
  %2668 = fmul fast float %2667, %2655
  %2669 = fadd fast float %2668, %2666
  %2670 = fmul fast float %2669, %2655
  %2671 = fmul fast float %2660, %2660
  %2672 = fmul fast float %2665, %2665
  %2673 = fmul fast float %2670, %2670
  br label %2690

; <label>:2674                                    ; preds = %2637
  %2675 = fmul fast float %345, %345
  %2676 = fmul fast float %349, %349
  %2677 = fmul fast float %353, %353
  %2678 = fadd fast float %2675, -1.000000e+00
  %2679 = fadd fast float %2676, -1.000000e+00
  %2680 = fadd fast float %2677, -1.000000e+00
  %2681 = fmul fast float %2526, %2678
  %2682 = fmul fast float %2526, %2679
  %2683 = fmul fast float %2526, %2680
  %2684 = fadd fast float %2681, 1.000000e+00
  %2685 = fadd fast float %2682, 1.000000e+00
  %2686 = fadd fast float %2683, 1.000000e+00
  %2687 = fmul fast float %2684, %2501
  %2688 = fmul fast float %2685, %2502
  %2689 = fmul fast float %2686, %2503
  br label %2690

; <label>:2690                                    ; preds = %2674, %2640, %2531, %2487
  %2691 = phi float [ %2636, %2531 ], [ %2512, %2640 ], [ %2512, %2674 ], [ 0x3FA23C0BE0000000, %2487 ]
  %2692 = phi float [ %2628, %2531 ], [ %2671, %2640 ], [ %2687, %2674 ], [ 1.000000e+00, %2487 ]
  %2693 = phi float [ %2629, %2531 ], [ %2672, %2640 ], [ %2688, %2674 ], [ 1.000000e+00, %2487 ]
  %2694 = phi float [ %2630, %2531 ], [ %2673, %2640 ], [ %2689, %2674 ], [ 1.000000e+00, %2487 ]
  %2695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.i32 %2695, 1
  %2697 = and i32 %2696, 1
  %2698 = icmp ne i32 %2697, 0
  %2699 = add i32 %62, 356
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2699, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = and i32 %2701, 32
  %2703 = icmp ne i32 %2702, 0
  %2704 = and i1 %2698, %2703
  %2705 = select i1 %2704, float 1.000000e+00, float %2692
  %2706 = select i1 %2704, float 0x3FD3333340000000, float %2693
  %2707 = select i1 %2704, float 0x3FD3333340000000, float %2694
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %2709, 32
  %2711 = icmp eq i32 %2710, 0
  br i1 %2711, label %2784, label %2712

; <label>:2712                                    ; preds = %2690
  %2713 = add i32 %62, 124
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = add i32 %62, 464
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2716, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = add i32 %2718, 0
  %2720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2719, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2720, %dx.types.Handle %107, float %2297, float %2298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.ResRet.f32 %2721, 1
  %2724 = extractvalue %dx.types.ResRet.f32 %2721, 2
  %2725 = extractvalue %dx.types.ResRet.f32 %2721, 3
  %2726 = and i32 %2715, 255
  %2727 = uitofp i32 %2726 to float
  %2728 = lshr i32 %2715, 8
  %2729 = and i32 %2728, 255
  %2730 = uitofp i32 %2729 to float
  %2731 = lshr i32 %2715, 16
  %2732 = and i32 %2731, 255
  %2733 = uitofp i32 %2732 to float
  %2734 = fmul fast float %2733, 0x3F70101000000000
  %2735 = fmul fast float %2722, %2727
  %2736 = fadd fast float %2735, %2730
  %2737 = fmul fast float %2736, 0x3F70101000000000
  %2738 = fadd fast float %2723, -5.000000e-01
  %2739 = fadd fast float %2725, -5.000000e-01
  %2740 = fmul fast float %2738, %2734
  %2741 = fmul fast float %2739, %2734
  %2742 = fadd fast float %2740, 5.000000e-01
  %2743 = fadd fast float %2741, 5.000000e-01
  %2744 = fmul fast float %2742, 2.000000e+00
  %2745 = fadd fast float %2744, -1.000000e+00
  %2746 = fmul fast float %2743, 2.000000e+00
  %2747 = fadd fast float %2746, -1.000000e+00
  %2748 = fadd fast float %2745, %2747
  %2749 = fmul fast float %2748, 5.000000e-01
  %2750 = fsub fast float %2745, %2747
  %2751 = fmul fast float %2750, 5.000000e-01
  %2752 = call float @dx.op.unary.f32(i32 6, float %2749)  ; FAbs(value)
  %2753 = fsub fast float 1.000000e+00, %2752
  %2754 = call float @dx.op.unary.f32(i32 6, float %2751)  ; FAbs(value)
  %2755 = fsub fast float %2753, %2754
  %2756 = call float @dx.op.dot3.f32(i32 55, float %2749, float %2751, float %2755, float %2749, float %2751, float %2755)  ; Dot3(ax,ay,az,bx,by,bz)
  %2757 = call float @dx.op.unary.f32(i32 25, float %2756)  ; Rsqrt(value)
  %2758 = fmul fast float %2749, %2757
  %2759 = fmul fast float %2751, %2757
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = and i32 %2761, 67108864
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2780, label %2764

; <label>:2764                                    ; preds = %2712
  %2765 = add i32 %62, 312
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = and i32 %2767, 65535
  %2769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2768)  ; LegacyF16ToF32(value)
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = and i32 %2771, 65535
  %2773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2772)  ; LegacyF16ToF32(value)
  %2774 = lshr i32 %2767, 16
  %2775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2774)  ; LegacyF16ToF32(value)
  %2776 = fsub fast float %2737, %2775
  %2777 = fmul fast float %2776, %2769
  %2778 = fadd fast float %2777, %2773
  %2779 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  br label %2780

; <label>:2780                                    ; preds = %2764, %2712
  %2781 = phi float [ %2779, %2764 ], [ %2737, %2712 ]
  %2782 = call float @dx.op.dot2.f32(i32 54, float %2758, float %2759, float %2201, float %2202)  ; Dot2(ax,ay,bx,by)
  %2783 = call float @dx.op.dot2.f32(i32 54, float %2758, float %2759, float %2203, float %2204)  ; Dot2(ax,ay,bx,by)
  br label %2784

; <label>:2784                                    ; preds = %2780, %2690
  %2785 = phi float [ %2781, %2780 ], [ 0x3FD6666660000000, %2690 ]
  %2786 = phi float [ %2782, %2780 ], [ 0.000000e+00, %2690 ]
  %2787 = phi float [ %2783, %2780 ], [ 0.000000e+00, %2690 ]
  %2788 = phi float [ %2724, %2780 ], [ 1.000000e+00, %2690 ]
  %2789 = add i32 %62, 192
  %2790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2789, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.i32 %2790, 0
  %2792 = lshr i32 %2791, 22
  %2793 = shl nuw nsw i32 %2792, 5
  %2794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2793)  ; LegacyF16ToF32(value)
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = and i32 %2796, 64
  %2798 = icmp eq i32 %2797, 0
  br i1 %2798, label %2832, label %2799

; <label>:2799                                    ; preds = %2784
  %2800 = add i32 %62, 480
  %2801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2800, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.i32 %2801, 0
  %2803 = add i32 %2802, 0
  %2804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = and i32 %2806, 131072
  %2808 = icmp eq i32 %2807, 0
  %2809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2804, %dx.types.Handle %107, float %2297, float %2298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2810 = extractvalue %dx.types.ResRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.ResRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.ResRet.f32 %2809, 2
  %2813 = fmul fast float %2810, %333
  %2814 = fmul fast float %2811, %336
  %2815 = fmul fast float %2812, %339
  br i1 %2808, label %2822, label %2816

; <label>:2816                                    ; preds = %2799
  %2817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2818 = extractvalue %dx.types.CBufRet.f32 %2817, 0
  %2819 = fmul fast float %2818, %2813
  %2820 = fmul fast float %2818, %2814
  %2821 = fmul fast float %2818, %2815
  br label %2822

; <label>:2822                                    ; preds = %2816, %2799
  %2823 = phi float [ %2819, %2816 ], [ %2813, %2799 ]
  %2824 = phi float [ %2820, %2816 ], [ %2814, %2799 ]
  %2825 = phi float [ %2821, %2816 ], [ %2815, %2799 ]
  %2826 = fmul fast float %2823, %2794
  %2827 = select i1 %232, float %2826, float %2823
  %2828 = call float @dx.op.dot3.f32(i32 55, float %2827, float %2824, float %2825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2829 = select i1 %232, float 0.000000e+00, float %2823
  %2830 = select i1 %232, float %2828, float %2824
  %2831 = select i1 %232, float 0.000000e+00, float %2825
  br label %2832

; <label>:2832                                    ; preds = %2822, %2784
  %2833 = phi float [ %2829, %2822 ], [ 0.000000e+00, %2784 ]
  %2834 = phi float [ %2830, %2822 ], [ 0.000000e+00, %2784 ]
  %2835 = phi float [ %2831, %2822 ], [ 0.000000e+00, %2784 ]
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = and i32 %2837, 26624
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %2897, label %2840

; <label>:2840                                    ; preds = %2832
  %2841 = add i32 %62, 544
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = add i32 %2843, 0
  %2845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2845, %dx.types.Handle %108, float %2297, float %2298, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.ResRet.f32 %2846, 3
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = and i32 %2851, 1048576
  %2853 = icmp ne i32 %2852, 0
  %2854 = and i32 %2851, 8192
  %2855 = icmp eq i32 %2854, 0
  br i1 %2855, label %2870, label %2856

; <label>:2856                                    ; preds = %2840
  %2857 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2858 = select i1 %2853, float %2857, float %2848
  %2859 = select i1 %2853, float %2847, float %2848
  %2860 = add i32 %62, 128
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = lshr i32 %2862, 16
  %2864 = and i32 %2863, 255
  %2865 = uitofp i32 %2864 to float
  %2866 = fmul fast float %2865, 0x3F80101020000000
  %2867 = fmul fast float %2866, %2859
  %2868 = fmul fast float %2866, %2848
  %2869 = fmul fast float %2866, %2858
  br label %2870

; <label>:2870                                    ; preds = %2856, %2840
  %2871 = phi float [ %2867, %2856 ], [ 0.000000e+00, %2840 ]
  %2872 = phi float [ %2868, %2856 ], [ 0.000000e+00, %2840 ]
  %2873 = phi float [ %2869, %2856 ], [ 0.000000e+00, %2840 ]
  %2874 = and i32 %2851, 2048
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2884, label %2876

; <label>:2876                                    ; preds = %2870
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2789, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = shl i32 %2878, 4
  %2880 = and i32 %2879, 32752
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = fmul fast float %2881, %2849
  %2883 = call float @dx.op.binary.f32(i32 35, float %2882, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2884

; <label>:2884                                    ; preds = %2876, %2870
  %2885 = phi float [ %2883, %2876 ], [ 0x3F70101020000000, %2870 ]
  %2886 = and i32 %2851, 16384
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %2897, label %2888

; <label>:2888                                    ; preds = %2884
  %2889 = add i32 %62, 128
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = lshr i32 %2891, 24
  %2893 = uitofp i32 %2892 to float
  %2894 = fmul fast float %2847, 0x3F70101020000000
  %2895 = select i1 %2853, float 0x3F70101020000000, float %2894
  %2896 = fmul fast float %2895, %2893
  br label %2897

; <label>:2897                                    ; preds = %2888, %2884, %2832
  %2898 = phi float [ %2871, %2888 ], [ %2871, %2884 ], [ 0.000000e+00, %2832 ]
  %2899 = phi float [ %2872, %2888 ], [ %2872, %2884 ], [ 0.000000e+00, %2832 ]
  %2900 = phi float [ %2873, %2888 ], [ %2873, %2884 ], [ 0.000000e+00, %2832 ]
  %2901 = phi float [ %2885, %2888 ], [ %2885, %2884 ], [ 0x3F70101020000000, %2832 ]
  %2902 = phi float [ %2896, %2888 ], [ 0.000000e+00, %2884 ], [ 0.000000e+00, %2832 ]
  %2903 = add i32 %62, 128
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = and i32 %2905, 255
  %2907 = uitofp i32 %2906 to float
  %2908 = lshr i32 %2905, 8
  %2909 = and i32 %2908, 255
  %2910 = uitofp i32 %2909 to float
  %2911 = call float @dx.op.dot3.f32(i32 55, float %2705, float %2706, float %2707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2912 = fmul fast float %2910, %2911
  %2913 = fadd fast float %2912, %2907
  %2914 = fmul fast float %2913, 0x3F70101020000000
  %2915 = call float @dx.op.unary.f32(i32 7, float %2914)  ; Saturate(value)
  br i1 %2189, label %2916, label %2924

; <label>:2916                                    ; preds = %2897
  %2917 = fsub fast float 1.000000e+00, %2485
  %2918 = fmul fast float %2917, %2176
  %2919 = fmul fast float %2917, %2177
  %2920 = fmul fast float %2917, %2178
  %2921 = fmul fast float %2917, %2173
  %2922 = fmul fast float %2917, %2174
  %2923 = fmul fast float %2917, %2175
  br label %2924

; <label>:2924                                    ; preds = %2916, %2897
  %2925 = phi float [ %2921, %2916 ], [ %2173, %2897 ]
  %2926 = phi float [ %2922, %2916 ], [ %2174, %2897 ]
  %2927 = phi float [ %2923, %2916 ], [ %2175, %2897 ]
  %2928 = phi float [ %2918, %2916 ], [ %2176, %2897 ]
  %2929 = phi float [ %2919, %2916 ], [ %2177, %2897 ]
  %2930 = phi float [ %2920, %2916 ], [ %2178, %2897 ]
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, 3
  %2934 = icmp eq i32 %2933, 3
  br i1 %2934, label %3013, label %2935

; <label>:2935                                    ; preds = %2924
  %2936 = and i32 %2932, 16
  %2937 = icmp ne i32 %2936, 0
  %2938 = select i1 %2937, float %2485, float 0.000000e+00
  %2939 = icmp eq i32 %2933, 0
  br i1 %2939, label %2940, label %2968

; <label>:2940                                    ; preds = %2935
  %2941 = and i32 %2932, 64
  %2942 = icmp ne i32 %2941, 0
  %2943 = select i1 %2942, float %2485, float 0.000000e+00
  %2944 = fsub fast float %2705, %2928
  %2945 = fsub fast float %2706, %2929
  %2946 = fsub fast float %2707, %2930
  %2947 = fmul fast float %2938, %2944
  %2948 = fmul fast float %2938, %2945
  %2949 = fmul fast float %2938, %2946
  %2950 = fadd fast float %2947, %2928
  %2951 = fadd fast float %2948, %2929
  %2952 = fadd fast float %2949, %2930
  %2953 = fsub fast float %2691, %2182
  %2954 = fmul fast float %2938, %2953
  %2955 = fadd fast float %2954, %2182
  %2956 = fsub fast float %2833, %2925
  %2957 = fsub fast float %2834, %2926
  %2958 = fsub fast float %2835, %2927
  %2959 = fmul fast float %2943, %2956
  %2960 = fmul fast float %2943, %2957
  %2961 = fmul fast float %2943, %2958
  %2962 = fadd fast float %2959, %2925
  %2963 = fadd fast float %2960, %2926
  %2964 = fadd fast float %2961, %2927
  %2965 = fsub fast float %2915, %2187
  %2966 = fmul fast float %2938, %2965
  %2967 = fadd fast float %2966, %2187
  br label %3013

; <label>:2968                                    ; preds = %2935
  %2969 = icmp eq i32 %2933, 1
  br i1 %2969, label %2970, label %2983

; <label>:2970                                    ; preds = %2968
  %2971 = fadd fast float %2705, -1.000000e+00
  %2972 = fadd fast float %2706, -1.000000e+00
  %2973 = fadd fast float %2707, -1.000000e+00
  %2974 = fmul fast float %2938, %2971
  %2975 = fmul fast float %2938, %2972
  %2976 = fmul fast float %2938, %2973
  %2977 = fadd fast float %2974, 1.000000e+00
  %2978 = fadd fast float %2975, 1.000000e+00
  %2979 = fadd fast float %2976, 1.000000e+00
  %2980 = fmul fast float %2977, %2928
  %2981 = fmul fast float %2978, %2929
  %2982 = fmul fast float %2979, %2930
  br label %3013

; <label>:2983                                    ; preds = %2968
  %2984 = icmp eq i32 %2933, 2
  br i1 %2984, label %2985, label %3013

; <label>:2985                                    ; preds = %2983
  %2986 = call float @dx.op.unary.f32(i32 24, float %2705)  ; Sqrt(value)
  %2987 = call float @dx.op.unary.f32(i32 24, float %2706)  ; Sqrt(value)
  %2988 = call float @dx.op.unary.f32(i32 24, float %2707)  ; Sqrt(value)
  %2989 = fadd fast float %2986, -5.000000e-01
  %2990 = fadd fast float %2987, -5.000000e-01
  %2991 = fadd fast float %2988, -5.000000e-01
  %2992 = fmul fast float %2989, %2938
  %2993 = fmul fast float %2990, %2938
  %2994 = fmul fast float %2991, %2938
  %2995 = fadd fast float %2992, 5.000000e-01
  %2996 = fadd fast float %2993, 5.000000e-01
  %2997 = fadd fast float %2994, 5.000000e-01
  %2998 = fmul fast float %2995, 2.000000e+00
  %2999 = fsub fast float 1.000000e+00, %2998
  %3000 = fmul fast float %2999, %2928
  %3001 = fadd fast float %3000, %2998
  %3002 = fmul fast float %3001, %2928
  %3003 = fmul fast float %2996, 2.000000e+00
  %3004 = fsub fast float 1.000000e+00, %3003
  %3005 = fmul fast float %3004, %2929
  %3006 = fadd fast float %3005, %3003
  %3007 = fmul fast float %3006, %2929
  %3008 = fmul fast float %2997, 2.000000e+00
  %3009 = fsub fast float 1.000000e+00, %3008
  %3010 = fmul fast float %3009, %2930
  %3011 = fadd fast float %3010, %3008
  %3012 = fmul fast float %3011, %2930
  br label %3013

; <label>:3013                                    ; preds = %2985, %2983, %2970, %2940, %2924
  %3014 = phi float [ %2925, %2924 ], [ %2925, %2985 ], [ %2925, %2983 ], [ %2925, %2970 ], [ %2962, %2940 ]
  %3015 = phi float [ %2926, %2924 ], [ %2926, %2985 ], [ %2926, %2983 ], [ %2926, %2970 ], [ %2963, %2940 ]
  %3016 = phi float [ %2927, %2924 ], [ %2927, %2985 ], [ %2927, %2983 ], [ %2927, %2970 ], [ %2964, %2940 ]
  %3017 = phi float [ %2928, %2924 ], [ %3002, %2985 ], [ %2928, %2983 ], [ %2980, %2970 ], [ %2950, %2940 ]
  %3018 = phi float [ %2929, %2924 ], [ %3007, %2985 ], [ %2929, %2983 ], [ %2981, %2970 ], [ %2951, %2940 ]
  %3019 = phi float [ %2930, %2924 ], [ %3012, %2985 ], [ %2930, %2983 ], [ %2982, %2970 ], [ %2952, %2940 ]
  %3020 = phi float [ %2182, %2924 ], [ %2182, %2985 ], [ %2182, %2983 ], [ %2182, %2970 ], [ %2955, %2940 ]
  %3021 = phi float [ %2187, %2924 ], [ %2187, %2985 ], [ %2187, %2983 ], [ %2187, %2970 ], [ %2967, %2940 ]
  %3022 = and i32 %2932, 12
  %3023 = icmp eq i32 %3022, 12
  br i1 %3023, label %3140, label %3024

; <label>:3024                                    ; preds = %3013
  %3025 = and i32 %2932, 2097184
  %3026 = icmp eq i32 %3025, 2097184
  %3027 = select i1 %3026, float %2485, float 0.000000e+00
  %3028 = and i32 %2932, 4194336
  %3029 = icmp eq i32 %3028, 4194336
  %3030 = select i1 %3029, float %2485, float 0.000000e+00
  %3031 = and i32 %2932, 8388640
  %3032 = icmp eq i32 %3031, 8388640
  %3033 = select i1 %3032, float %2485, float 0.000000e+00
  %3034 = and i32 %2932, 2048
  %3035 = icmp ne i32 %3034, 0
  %3036 = select i1 %3035, float %2485, float 0.000000e+00
  %3037 = and i32 %2932, 8192
  %3038 = icmp ne i32 %3037, 0
  %3039 = select i1 %3038, float %2485, float 0.000000e+00
  %3040 = and i32 %2932, 16384
  %3041 = icmp ne i32 %3040, 0
  %3042 = select i1 %3041, float %2485, float 0.000000e+00
  %3043 = icmp eq i32 %3022, 0
  br i1 %3043, label %3044, label %3072

; <label>:3044                                    ; preds = %3024
  %3045 = fsub fast float %2786, %2171
  %3046 = fsub fast float %2787, %2172
  %3047 = fmul fast float %3027, %3045
  %3048 = fmul fast float %3027, %3046
  %3049 = fadd fast float %3047, %2171
  %3050 = fadd fast float %3048, %2172
  %3051 = fsub fast float %2788, %2184
  %3052 = fmul fast float %3030, %3051
  %3053 = fadd fast float %3052, %2184
  %3054 = fsub fast float %2785, %2183
  %3055 = fmul fast float %3033, %3054
  %3056 = fadd fast float %3055, %2183
  %3057 = fsub fast float %2901, %2185
  %3058 = fmul fast float %3036, %3057
  %3059 = fadd fast float %3058, %2185
  %3060 = fsub fast float %2898, %2179
  %3061 = fsub fast float %2899, %2180
  %3062 = fsub fast float %2900, %2181
  %3063 = fmul fast float %3039, %3060
  %3064 = fmul fast float %3039, %3061
  %3065 = fmul fast float %3039, %3062
  %3066 = fadd fast float %3063, %2179
  %3067 = fadd fast float %3064, %2180
  %3068 = fadd fast float %3065, %2181
  %3069 = fsub fast float %2902, %2186
  %3070 = fmul fast float %3042, %3069
  %3071 = fadd fast float %3070, %2186
  br label %3140

; <label>:3072                                    ; preds = %3024
  %3073 = icmp eq i32 %3022, 4
  br i1 %3073, label %3074, label %3116

; <label>:3074                                    ; preds = %3072
  %3075 = fmul fast float %3027, %2786
  %3076 = fmul fast float %3027, %2787
  %3077 = fadd fast float %3075, %2171
  %3078 = fadd fast float %3076, %2172
  %3079 = call float @dx.op.binary.f32(i32 36, float %2184, float %2788)  ; FMin(a,b)
  %3080 = fsub fast float %3079, %2184
  %3081 = fmul fast float %3080, %3030
  %3082 = fadd fast float %3081, %2184
  %3083 = fadd fast float %2785, %2183
  %3084 = fmul fast float %3083, 0x3FF337FAE0000000
  %3085 = fmul fast float %2183, %2183
  %3086 = fmul fast float %2785, %2785
  %3087 = fadd fast float %3086, %3085
  %3088 = fmul fast float %3087, 0x3FE5152B00000000
  %3089 = fmul fast float %2183, 0xBFCC1F85E0000000
  %3090 = fmul fast float %3089, %2785
  %3091 = fadd fast float %3090, 0xBFE1363700000000
  %3092 = fadd fast float %3091, %3084
  %3093 = fsub fast float %3092, %3088
  %3094 = fmul fast float %3083, 0x3FBA6F0D00000000
  %3095 = fmul fast float %3087, 0x3FD0432880000000
  %3096 = fmul fast float %2183, 0xBFEF110800000000
  %3097 = fmul fast float %3096, %2785
  %3098 = fadd fast float %3097, 1.000000e+00
  %3099 = fsub fast float %3098, %3094
  %3100 = fadd fast float %3099, %3095
  %3101 = fdiv fast float %3093, %3100
  %3102 = call float @dx.op.unary.f32(i32 7, float %3101)  ; Saturate(value)
  %3103 = fsub fast float %3102, %2183
  %3104 = fmul fast float %3103, %3033
  %3105 = fadd fast float %3104, %2183
  %3106 = fmul fast float %3036, %2901
  %3107 = fadd fast float %3106, %2185
  %3108 = fmul fast float %3039, %2898
  %3109 = fmul fast float %3039, %2899
  %3110 = fmul fast float %3039, %2900
  %3111 = fadd fast float %3108, %2179
  %3112 = fadd fast float %3109, %2180
  %3113 = fadd fast float %3110, %2181
  %3114 = fmul fast float %3042, %2902
  %3115 = fadd fast float %3114, %2186
  br label %3140

; <label>:3116                                    ; preds = %3072
  %3117 = icmp eq i32 %3022, 8
  br i1 %3117, label %3118, label %3140

; <label>:3118                                    ; preds = %3116
  %3119 = fmul fast float %3027, %2786
  %3120 = fmul fast float %3027, %2787
  %3121 = fadd fast float %3119, %2171
  %3122 = fadd fast float %3120, %2172
  %3123 = call float @dx.op.binary.f32(i32 36, float %2184, float %2788)  ; FMin(a,b)
  %3124 = fsub fast float %3123, %2184
  %3125 = fmul fast float %3124, %3030
  %3126 = fadd fast float %3125, %2184
  %3127 = fsub fast float %2785, %2183
  %3128 = fmul fast float %3033, %3127
  %3129 = fadd fast float %3128, %2183
  %3130 = fmul fast float %3036, %2901
  %3131 = fadd fast float %3130, %2185
  %3132 = fmul fast float %3039, %2898
  %3133 = fmul fast float %3039, %2899
  %3134 = fmul fast float %3039, %2900
  %3135 = fadd fast float %3132, %2179
  %3136 = fadd fast float %3133, %2180
  %3137 = fadd fast float %3134, %2181
  %3138 = fmul fast float %3042, %2902
  %3139 = fadd fast float %3138, %2186
  br label %3140

; <label>:3140                                    ; preds = %3118, %3116, %3074, %3044, %3013, %2484, %2188, %2170
  %3141 = phi float [ %2171, %3013 ], [ %2171, %2484 ], [ %2171, %2170 ], [ %3121, %3118 ], [ %2171, %3116 ], [ %3077, %3074 ], [ %3049, %3044 ], [ %2171, %2188 ]
  %3142 = phi float [ %2172, %3013 ], [ %2172, %2484 ], [ %2172, %2170 ], [ %3122, %3118 ], [ %2172, %3116 ], [ %3078, %3074 ], [ %3050, %3044 ], [ %2172, %2188 ]
  %3143 = phi float [ %3014, %3013 ], [ %2173, %2484 ], [ %2173, %2170 ], [ %3014, %3118 ], [ %3014, %3116 ], [ %3014, %3074 ], [ %3014, %3044 ], [ %2173, %2188 ]
  %3144 = phi float [ %3015, %3013 ], [ %2174, %2484 ], [ %2174, %2170 ], [ %3015, %3118 ], [ %3015, %3116 ], [ %3015, %3074 ], [ %3015, %3044 ], [ %2174, %2188 ]
  %3145 = phi float [ %3016, %3013 ], [ %2175, %2484 ], [ %2175, %2170 ], [ %3016, %3118 ], [ %3016, %3116 ], [ %3016, %3074 ], [ %3016, %3044 ], [ %2175, %2188 ]
  %3146 = phi float [ %3017, %3013 ], [ %2176, %2484 ], [ %2176, %2170 ], [ %3017, %3118 ], [ %3017, %3116 ], [ %3017, %3074 ], [ %3017, %3044 ], [ %2176, %2188 ]
  %3147 = phi float [ %3018, %3013 ], [ %2177, %2484 ], [ %2177, %2170 ], [ %3018, %3118 ], [ %3018, %3116 ], [ %3018, %3074 ], [ %3018, %3044 ], [ %2177, %2188 ]
  %3148 = phi float [ %3019, %3013 ], [ %2178, %2484 ], [ %2178, %2170 ], [ %3019, %3118 ], [ %3019, %3116 ], [ %3019, %3074 ], [ %3019, %3044 ], [ %2178, %2188 ]
  %3149 = phi float [ %2179, %3013 ], [ %2179, %2484 ], [ %2179, %2170 ], [ %3135, %3118 ], [ %2179, %3116 ], [ %3111, %3074 ], [ %3066, %3044 ], [ %2179, %2188 ]
  %3150 = phi float [ %2180, %3013 ], [ %2180, %2484 ], [ %2180, %2170 ], [ %3136, %3118 ], [ %2180, %3116 ], [ %3112, %3074 ], [ %3067, %3044 ], [ %2180, %2188 ]
  %3151 = phi float [ %2181, %3013 ], [ %2181, %2484 ], [ %2181, %2170 ], [ %3137, %3118 ], [ %2181, %3116 ], [ %3113, %3074 ], [ %3068, %3044 ], [ %2181, %2188 ]
  %3152 = phi float [ %3020, %3013 ], [ %2182, %2484 ], [ %2182, %2170 ], [ %3020, %3118 ], [ %3020, %3116 ], [ %3020, %3074 ], [ %3020, %3044 ], [ %2182, %2188 ]
  %3153 = phi float [ %2183, %3013 ], [ %2183, %2484 ], [ %2183, %2170 ], [ %3129, %3118 ], [ %2183, %3116 ], [ %3105, %3074 ], [ %3056, %3044 ], [ %2183, %2188 ]
  %3154 = phi float [ %2184, %3013 ], [ %2184, %2484 ], [ %2184, %2170 ], [ %3126, %3118 ], [ %2184, %3116 ], [ %3082, %3074 ], [ %3053, %3044 ], [ %2184, %2188 ]
  %3155 = phi float [ %2185, %3013 ], [ %2185, %2484 ], [ %2185, %2170 ], [ %3131, %3118 ], [ %2185, %3116 ], [ %3107, %3074 ], [ %3059, %3044 ], [ %2185, %2188 ]
  %3156 = phi float [ %2186, %3013 ], [ %2186, %2484 ], [ %2186, %2170 ], [ %3139, %3118 ], [ %2186, %3116 ], [ %3115, %3074 ], [ %3071, %3044 ], [ %2186, %2188 ]
  %3157 = phi float [ %3021, %3013 ], [ %2187, %2484 ], [ %2187, %2170 ], [ %3021, %3118 ], [ %3021, %3116 ], [ %3021, %3074 ], [ %3021, %3044 ], [ %2187, %2188 ]
  br i1 %420, label %4110, label %3158

; <label>:3158                                    ; preds = %3140
  %3159 = icmp ult i32 %474, 4
  %3160 = add i32 %62, 72
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = add i32 %62, 76
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = or i32 %3165, %3162
  %3167 = icmp eq i32 %3166, 0
  br i1 %3167, label %4110, label %3168

; <label>:3168                                    ; preds = %3158
  %3169 = and i32 %3162, 262144
  %3170 = icmp ne i32 %3169, 0
  %3171 = select i1 %3170, float %65, float 1.000000e+00
  %3172 = select i1 %3170, float %66, float 0.000000e+00
  %3173 = select i1 %3170, float %67, float 0.000000e+00
  %3174 = select i1 %3170, float %68, float 1.000000e+00
  %3175 = select i1 %3170, float %69, float %90
  %3176 = select i1 %3170, float %70, float %91
  %3177 = add i32 %62, 332
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = lshr i32 %3179, 16
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = fmul fast float %3181, 0x3F50624DE0000000
  %3183 = add i32 %62, 136
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = lshr i32 %3185, 16
  %3187 = and i32 %3186, 255
  %3188 = lshr i32 %3185, 24
  %3189 = add i32 %62, 340
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = lshr i32 %3191, 16
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = add i32 %62, 80
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = lshr i32 %3198, 22
  %3200 = shl nuw nsw i32 %3199, 5
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = shl i32 %3198, 4
  %3203 = and i32 %3202, 32752
  %3204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3203)  ; LegacyF16ToF32(value)
  %3205 = lshr i32 %3198, 7
  %3206 = and i32 %3205, 32752
  %3207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3206)  ; LegacyF16ToF32(value)
  %3208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3209 = extractvalue %dx.types.CBufRet.f32 %3208, 3
  %3210 = fmul fast float %3209, 1.000000e+03
  %3211 = fmul fast float %410, %3210
  %3212 = call float @dx.op.unary.f32(i32 22, float %3211)  ; Frc(value)
  %3213 = fadd fast float %3212, %400
  %3214 = fmul fast float %411, %3210
  %3215 = call float @dx.op.unary.f32(i32 22, float %3214)  ; Frc(value)
  %3216 = fadd fast float %3215, %402
  %3217 = fmul fast float %3182, %3210
  %3218 = call float @dx.op.unary.f32(i32 22, float %3217)  ; Frc(value)
  %3219 = fmul fast float %3218, 0x401921FB60000000
  %3220 = fadd fast float %3219, %3201
  %3221 = call float @dx.op.unary.f32(i32 13, float %3220)  ; Sin(value)
  %3222 = call float @dx.op.unary.f32(i32 12, float %3220)  ; Cos(value)
  %3223 = fsub fast float -0.000000e+00, %3221
  %3224 = fadd fast float %3175, -5.000000e-01
  %3225 = fadd fast float %3176, -5.000000e-01
  %3226 = fmul fast float %3193, %3224
  %3227 = fmul fast float %3195, %3225
  %3228 = fadd fast float %3226, 5.000000e-01
  %3229 = fadd fast float %3227, 5.000000e-01
  %3230 = fmul fast float %3204, %3228
  %3231 = fmul fast float %3207, %3229
  %3232 = fmul fast float %3222, %3230
  %3233 = call float @dx.op.tertiary.f32(i32 46, float %3223, float %3231, float %3232)  ; FMad(a,b,c)
  %3234 = fmul fast float %3221, %3230
  %3235 = call float @dx.op.tertiary.f32(i32 46, float %3222, float %3231, float %3234)  ; FMad(a,b,c)
  %3236 = fadd fast float %3213, %3233
  %3237 = fadd fast float %3216, %3235
  %3238 = icmp ugt i32 %3187, 1
  %3239 = icmp ugt i32 %3185, 33554431
  %3240 = or i1 %3239, %3238
  br i1 %3240, label %3241, label %3266

; <label>:3241                                    ; preds = %3168
  %3242 = add i32 %62, 276
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = lshr i32 %3244, 16
  %3246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3245)  ; LegacyF16ToF32(value)
  %3247 = fmul fast float %3209, %3246
  %3248 = call float @dx.op.unary.f32(i32 22, float %3247)  ; Frc(value)
  %3249 = mul nuw nsw i32 %3187, %3188
  %3250 = uitofp i32 %3249 to float
  %3251 = fmul fast float %3248, %3250
  %3252 = call float @dx.op.unary.f32(i32 27, float %3251)  ; Round_ni(value)
  %3253 = fptoui float %3252 to i32
  %3254 = urem i32 %3253, %3187
  %3255 = udiv i32 %3253, %3188
  %3256 = call float @dx.op.unary.f32(i32 22, float %3236)  ; Frc(value)
  %3257 = call float @dx.op.unary.f32(i32 22, float %3237)  ; Frc(value)
  %3258 = uitofp i32 %3254 to float
  %3259 = uitofp i32 %3255 to float
  %3260 = fadd fast float %3256, %3258
  %3261 = fadd fast float %3257, %3259
  %3262 = uitofp i32 %3187 to float
  %3263 = uitofp i32 %3188 to float
  %3264 = fdiv fast float %3260, %3262
  %3265 = fdiv fast float %3261, %3263
  br label %3266

; <label>:3266                                    ; preds = %3241, %3168
  %3267 = phi float [ %3264, %3241 ], [ %3236, %3168 ]
  %3268 = phi float [ %3265, %3241 ], [ %3237, %3168 ]
  %3269 = and i32 %3162, 16777216
  %3270 = icmp eq i32 %3269, 0
  br i1 %3270, label %3380, label %3271

; <label>:3271                                    ; preds = %3266
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 0
  %3274 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3275 = extractvalue %dx.types.CBufRet.f32 %3272, 2
  %3276 = fadd fast float %3273, %170
  %3277 = fadd fast float %3274, %171
  %3278 = fadd fast float %3275, %172
  %3279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3280 = extractvalue %dx.types.CBufRet.f32 %3279, 0
  %3281 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3282 = icmp eq i32 %63, 65535
  br i1 %3282, label %3377, label %3283

; <label>:3283                                    ; preds = %3271
  %3284 = lshr i32 %63, 1
  %3285 = shl i32 %3284, 2
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = and i32 %63, 1
  %3289 = icmp ne i32 %3288, 0
  %3290 = lshr i32 %3287, 16
  %3291 = and i32 %3287, 65535
  %3292 = select i1 %3289, i32 %3290, i32 %3291
  %3293 = icmp eq i32 %3292, 65535
  br i1 %3293, label %3373, label %3294

; <label>:3294                                    ; preds = %3283
  %3295 = mul nuw nsw i32 %3292, 40
  %3296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3295, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.f32 %3296, 0
  %3298 = extractvalue %dx.types.ResRet.f32 %3296, 1
  %3299 = extractvalue %dx.types.ResRet.f32 %3296, 2
  %3300 = add nuw nsw i32 %3295, 12
  %3301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3300, i32 undef)  ; BufferLoad(srv,index,wot)
  %3302 = extractvalue %dx.types.ResRet.f32 %3301, 0
  %3303 = extractvalue %dx.types.ResRet.f32 %3301, 1
  %3304 = extractvalue %dx.types.ResRet.f32 %3301, 2
  %3305 = add nuw nsw i32 %3295, 24
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.ResRet.f32 %3306, 2
  %3310 = add nuw nsw i32 %3295, 36
  %3311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = fsub fast float %3276, %3297
  %3314 = fsub fast float %3277, %3298
  %3315 = fsub fast float %3278, %3299
  %3316 = fmul fast float %3312, %3313
  %3317 = fmul fast float %3312, %3314
  %3318 = fmul fast float %3312, %3315
  %3319 = call float @dx.op.unary.f32(i32 27, float %3316)  ; Round_ni(value)
  %3320 = call float @dx.op.unary.f32(i32 27, float %3317)  ; Round_ni(value)
  %3321 = call float @dx.op.unary.f32(i32 27, float %3318)  ; Round_ni(value)
  %3322 = fadd fast float %3319, 5.000000e-01
  %3323 = fadd fast float %3320, 5.000000e-01
  %3324 = fadd fast float %3321, 5.000000e-01
  %3325 = fmul fast float %3322, %3302
  %3326 = fmul fast float %3323, %3303
  %3327 = fmul fast float %3324, %3304
  %3328 = shl i32 %63, 2
  %3329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3330 = extractvalue %dx.types.ResRet.i32 %3329, 0
  %3331 = add i32 %3330, 0
  %3332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3331, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3333 = call float @dx.op.unary.f32(i32 22, float %3325)  ; Frc(value)
  %3334 = call float @dx.op.unary.f32(i32 22, float %3326)  ; Frc(value)
  %3335 = call float @dx.op.unary.f32(i32 22, float %3327)  ; Frc(value)
  %3336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3332, %dx.types.Handle %55, float %3333, float %3334, float %3335, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3337 = extractvalue %dx.types.ResRet.f32 %3336, 0
  %3338 = extractvalue %dx.types.ResRet.f32 %3336, 1
  %3339 = extractvalue %dx.types.ResRet.f32 %3336, 2
  %3340 = fmul fast float %3337, 1.023000e+03
  %3341 = fmul fast float %3338, 1.023000e+03
  %3342 = fmul fast float %3339, 1.023000e+03
  %3343 = fadd fast float %3340, 5.000000e-01
  %3344 = fadd fast float %3341, 5.000000e-01
  %3345 = fadd fast float %3342, 5.000000e-01
  %3346 = call float @dx.op.unary.f32(i32 27, float %3343)  ; Round_ni(value)
  %3347 = call float @dx.op.unary.f32(i32 27, float %3344)  ; Round_ni(value)
  %3348 = call float @dx.op.unary.f32(i32 27, float %3345)  ; Round_ni(value)
  %3349 = fsub fast float %3316, %3319
  %3350 = fsub fast float %3317, %3320
  %3351 = fsub fast float %3318, %3321
  %3352 = fmul fast float %3349, 7.500000e-01
  %3353 = fmul fast float %3350, 7.500000e-01
  %3354 = fmul fast float %3351, 7.500000e-01
  %3355 = fadd fast float %3319, 1.250000e-01
  %3356 = fadd fast float %3355, %3352
  %3357 = fadd fast float %3356, %3346
  %3358 = fadd fast float %3320, 1.250000e-01
  %3359 = fadd fast float %3358, %3353
  %3360 = fadd fast float %3359, %3347
  %3361 = fadd fast float %3321, 1.250000e-01
  %3362 = fadd fast float %3361, %3354
  %3363 = fadd fast float %3362, %3348
  %3364 = fmul fast float %3357, %3307
  %3365 = fmul fast float %3360, %3308
  %3366 = fmul fast float %3363, %3309
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3328, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = add i32 %3368, 0
  %3370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3370, %dx.types.Handle %53, float %3364, float %3365, float %3366, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  br label %3373

; <label>:3373                                    ; preds = %3294, %3283
  %3374 = phi float [ %3372, %3294 ], [ -1.000000e+00, %3283 ]
  %3375 = fadd fast float %3374, %3281
  %3376 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  br label %3377

; <label>:3377                                    ; preds = %3373, %3271
  %3378 = phi float [ %3376, %3373 ], [ %3281, %3271 ]
  %3379 = fmul fast float %3378, %469
  br label %3380

; <label>:3380                                    ; preds = %3377, %3266
  %3381 = phi float [ %3379, %3377 ], [ %469, %3266 ]
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = and i32 %3383, 256
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %3432, label %3386

; <label>:3386                                    ; preds = %3380
  %3387 = add i32 %62, 516
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = add i32 %3389, 0
  %3391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3391, %dx.types.Handle %108, float %3267, float %3268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3393 = extractvalue %dx.types.ResRet.f32 %3392, 0
  %3394 = add i32 %62, 148
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = shl i32 %3396, 4
  %3398 = and i32 %3397, 32752
  %3399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3398)  ; LegacyF16ToF32(value)
  %3400 = lshr i32 %3396, 7
  %3401 = and i32 %3400, 32752
  %3402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3401)  ; LegacyF16ToF32(value)
  %3403 = fsub fast float 1.000000e+00, %3381
  %3404 = call float @dx.op.binary.f32(i32 35, float %3403, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3405 = bitcast float %3381 to i32
  %3406 = sitofp i32 %3405 to float
  %3407 = fadd fast float %3406, 0xC1CFBF8940000000
  %3408 = fmul fast float %3402, %3407
  %3409 = fadd fast float %3408, 0x41CFBF8940000000
  %3410 = fptosi float %3409 to i32
  %3411 = bitcast i32 %3410 to float
  %3412 = bitcast float %3404 to i32
  %3413 = sitofp i32 %3412 to float
  %3414 = fadd fast float %3413, 0xC1CFBF8940000000
  %3415 = fmul fast float %3414, %3402
  %3416 = fadd fast float %3415, 0x41CFBF8940000000
  %3417 = fptosi float %3416 to i32
  %3418 = bitcast i32 %3417 to float
  %3419 = fmul fast float %3411, %3399
  %3420 = fmul fast float %3418, %3399
  %3421 = fsub fast float %3404, %3419
  %3422 = fadd fast float %3420, %3404
  %3423 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  %3424 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3425 = fsub fast float %3393, %3423
  %3426 = fsub fast float %3424, %3423
  %3427 = bitcast float %3426 to i32
  %3428 = sub nsw i32 2129859010, %3427
  %3429 = bitcast i32 %3428 to float
  %3430 = fmul fast float %3429, %3425
  %3431 = call float @dx.op.unary.f32(i32 7, float %3430)  ; Saturate(value)
  br label %3432

; <label>:3432                                    ; preds = %3386, %3380
  %3433 = phi float [ %3431, %3386 ], [ %3381, %3380 ]
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 128
  %3437 = icmp eq i32 %3436, 0
  br i1 %3437, label %3454, label %3438

; <label>:3438                                    ; preds = %3432
  %3439 = add i32 %62, 500
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = add i32 %3441, 0
  %3443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3443, %dx.types.Handle %108, float %3267, float %3268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 524288
  %3449 = icmp ne i32 %3448, 0
  %3450 = fcmp fast ogt float %3445, 0x3FE0101020000000
  %3451 = select i1 %3450, float 1.000000e+00, float 0.000000e+00
  %3452 = select i1 %3449, float %3451, float %3445
  %3453 = fmul fast float %3452, %3433
  br label %3454

; <label>:3454                                    ; preds = %3438, %3432
  %3455 = phi float [ %3453, %3438 ], [ %3433, %3432 ]
  %3456 = fcmp fast ult float %3455, 0x3F70101020000000
  br i1 %3456, label %4110, label %3457

; <label>:3457                                    ; preds = %3454
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 16
  %3461 = icmp eq i32 %3460, 0
  br i1 %3461, label %3660, label %3462

; <label>:3462                                    ; preds = %3457
  %3463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3464 = extractvalue %dx.types.ResRet.i32 %3463, 0
  %3465 = add i32 %62, 452
  %3466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3465, i32 undef)  ; BufferLoad(srv,index,wot)
  %3467 = extractvalue %dx.types.ResRet.i32 %3466, 0
  %3468 = add i32 %3467, 0
  %3469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3469, %dx.types.Handle %107, float %3267, float %3268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3471 = extractvalue %dx.types.ResRet.f32 %3470, 0
  %3472 = extractvalue %dx.types.ResRet.f32 %3470, 1
  %3473 = extractvalue %dx.types.ResRet.f32 %3470, 2
  %3474 = extractvalue %dx.types.ResRet.f32 %3470, 3
  %3475 = and i32 %3464, 255
  %3476 = uitofp i32 %3475 to float
  %3477 = lshr i32 %3464, 8
  %3478 = and i32 %3477, 255
  %3479 = uitofp i32 %3478 to float
  %3480 = fmul fast float %3474, %3476
  %3481 = fadd fast float %3480, %3479
  %3482 = fmul fast float %3481, 0x3F70101000000000
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = and i32 %3484, 512
  %3486 = icmp eq i32 %3485, 0
  br i1 %3486, label %3495, label %3487

; <label>:3487                                    ; preds = %3462
  %3488 = add i32 %62, 532
  %3489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3488, i32 undef)  ; BufferLoad(srv,index,wot)
  %3490 = extractvalue %dx.types.ResRet.i32 %3489, 0
  %3491 = add i32 %3490, 0
  %3492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3492, %dx.types.Handle %108, float %3267, float %3268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3494 = extractvalue %dx.types.ResRet.f32 %3493, 0
  br label %3495

; <label>:3495                                    ; preds = %3487, %3462
  %3496 = phi float [ %3494, %3487 ], [ 1.000000e+00, %3462 ]
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = and i32 %3498, 33554432
  %3500 = icmp eq i32 %3499, 0
  br i1 %3500, label %3607, label %3501

; <label>:3501                                    ; preds = %3495
  %3502 = add i32 %62, 272
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 65535
  %3506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3505)  ; LegacyF16ToF32(value)
  %3507 = lshr i32 %3504, 16
  %3508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3507)  ; LegacyF16ToF32(value)
  %3509 = add i32 %62, 276
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = and i32 %3511, 65535
  %3513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3512)  ; LegacyF16ToF32(value)
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = lshr i32 %3515, 24
  %3517 = uitofp i32 %3516 to float
  %3518 = fmul fast float %3517, 0x3F70101020000000
  %3519 = and i32 %3515, 255
  %3520 = uitofp i32 %3519 to float
  %3521 = fmul fast float %3520, 0x3F70101020000000
  %3522 = lshr i32 %3515, 8
  %3523 = and i32 %3522, 255
  %3524 = uitofp i32 %3523 to float
  %3525 = fmul fast float %3524, 0x3F70101020000000
  %3526 = lshr i32 %3515, 16
  %3527 = and i32 %3526, 255
  %3528 = uitofp i32 %3527 to float
  %3529 = fmul fast float %3528, 0x3F70101020000000
  %3530 = add i32 %62, 268
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = lshr i32 %3532, 24
  %3534 = uitofp i32 %3533 to float
  %3535 = fmul fast float %3534, 0x3F70101020000000
  %3536 = and i32 %3532, 255
  %3537 = uitofp i32 %3536 to float
  %3538 = fmul fast float %3537, 0x3F70101020000000
  %3539 = lshr i32 %3532, 8
  %3540 = and i32 %3539, 255
  %3541 = uitofp i32 %3540 to float
  %3542 = fmul fast float %3541, 0x3F70101020000000
  %3543 = lshr i32 %3532, 16
  %3544 = and i32 %3543, 255
  %3545 = uitofp i32 %3544 to float
  %3546 = fmul fast float %3545, 0x3F70101020000000
  %3547 = bitcast float %3471 to i32
  %3548 = ashr i32 %3547, 1
  %3549 = sub nsw i32 1597463174, %3548
  %3550 = bitcast i32 %3549 to float
  %3551 = fmul fast float %3471, 5.000000e-01
  %3552 = fmul fast float %3550, %3550
  %3553 = fmul fast float %3552, %3551
  %3554 = fsub fast float 1.500000e+00, %3553
  %3555 = fmul fast float %3550, %3471
  %3556 = fmul fast float %3555, %3554
  %3557 = bitcast float %3472 to i32
  %3558 = ashr i32 %3557, 1
  %3559 = sub nsw i32 1597463174, %3558
  %3560 = bitcast i32 %3559 to float
  %3561 = fmul fast float %3472, 5.000000e-01
  %3562 = fmul fast float %3560, %3560
  %3563 = fmul fast float %3562, %3561
  %3564 = fsub fast float 1.500000e+00, %3563
  %3565 = fmul fast float %3560, %3472
  %3566 = fmul fast float %3565, %3564
  %3567 = bitcast float %3473 to i32
  %3568 = ashr i32 %3567, 1
  %3569 = sub nsw i32 1597463174, %3568
  %3570 = bitcast i32 %3569 to float
  %3571 = fmul fast float %3473, 5.000000e-01
  %3572 = fmul fast float %3570, %3570
  %3573 = fmul fast float %3572, %3571
  %3574 = fsub fast float 1.500000e+00, %3573
  %3575 = fmul fast float %3570, %3473
  %3576 = fmul fast float %3575, %3574
  %3577 = fsub fast float %3556, %3538
  %3578 = fsub fast float %3566, %3542
  %3579 = fsub fast float %3576, %3546
  %3580 = fmul fast float %3577, %3506
  %3581 = fmul fast float %3578, %3508
  %3582 = fmul fast float %3579, %3513
  %3583 = fadd fast float %3580, %3521
  %3584 = fadd fast float %3581, %3525
  %3585 = fadd fast float %3582, %3529
  %3586 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3587 = call float @dx.op.unary.f32(i32 7, float %3584)  ; Saturate(value)
  %3588 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3589 = fmul fast float %3586, %3586
  %3590 = fmul fast float %3587, %3587
  %3591 = fmul fast float %3588, %3588
  %3592 = fsub fast float %3589, %3471
  %3593 = fsub fast float %3590, %3472
  %3594 = fsub fast float %3591, %3473
  %3595 = fmul fast float %3592, %3496
  %3596 = fmul fast float %3593, %3496
  %3597 = fmul fast float %3594, %3496
  %3598 = fadd fast float %3595, %3471
  %3599 = fadd fast float %3596, %3472
  %3600 = fadd fast float %3597, %3473
  %3601 = fadd fast float %3518, %3482
  %3602 = fsub fast float %3601, %3535
  %3603 = call float @dx.op.unary.f32(i32 7, float %3602)  ; Saturate(value)
  %3604 = fsub fast float %3603, %3482
  %3605 = fmul fast float %3604, %3496
  %3606 = fadd fast float %3605, %3482
  br label %3660

; <label>:3607                                    ; preds = %3495
  %3608 = and i32 %3498, 134217728
  %3609 = icmp eq i32 %3608, 0
  br i1 %3609, label %3644, label %3610

; <label>:3610                                    ; preds = %3607
  %3611 = call float @dx.op.unary.f32(i32 24, float %387)  ; Sqrt(value)
  %3612 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %3613 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %3614 = fadd fast float %3611, -5.000000e-01
  %3615 = fadd fast float %3612, -5.000000e-01
  %3616 = fadd fast float %3613, -5.000000e-01
  %3617 = fmul fast float %3614, %3496
  %3618 = fmul fast float %3615, %3496
  %3619 = fmul fast float %3616, %3496
  %3620 = fadd fast float %3617, 5.000000e-01
  %3621 = fadd fast float %3618, 5.000000e-01
  %3622 = fadd fast float %3619, 5.000000e-01
  %3623 = call float @dx.op.unary.f32(i32 24, float %3471)  ; Sqrt(value)
  %3624 = call float @dx.op.unary.f32(i32 24, float %3472)  ; Sqrt(value)
  %3625 = call float @dx.op.unary.f32(i32 24, float %3473)  ; Sqrt(value)
  %3626 = fmul fast float %3620, 2.000000e+00
  %3627 = fsub fast float 1.000000e+00, %3626
  %3628 = fmul fast float %3627, %3623
  %3629 = fadd fast float %3628, %3626
  %3630 = fmul fast float %3629, %3623
  %3631 = fmul fast float %3621, 2.000000e+00
  %3632 = fsub fast float 1.000000e+00, %3631
  %3633 = fmul fast float %3632, %3624
  %3634 = fadd fast float %3633, %3631
  %3635 = fmul fast float %3634, %3624
  %3636 = fmul fast float %3622, 2.000000e+00
  %3637 = fsub fast float 1.000000e+00, %3636
  %3638 = fmul fast float %3637, %3625
  %3639 = fadd fast float %3638, %3636
  %3640 = fmul fast float %3639, %3625
  %3641 = fmul fast float %3630, %3630
  %3642 = fmul fast float %3635, %3635
  %3643 = fmul fast float %3640, %3640
  br label %3660

; <label>:3644                                    ; preds = %3607
  %3645 = fmul fast float %387, %387
  %3646 = fmul fast float %391, %391
  %3647 = fmul fast float %395, %395
  %3648 = fadd fast float %3645, -1.000000e+00
  %3649 = fadd fast float %3646, -1.000000e+00
  %3650 = fadd fast float %3647, -1.000000e+00
  %3651 = fmul fast float %3496, %3648
  %3652 = fmul fast float %3496, %3649
  %3653 = fmul fast float %3496, %3650
  %3654 = fadd fast float %3651, 1.000000e+00
  %3655 = fadd fast float %3652, 1.000000e+00
  %3656 = fadd fast float %3653, 1.000000e+00
  %3657 = fmul fast float %3654, %3471
  %3658 = fmul fast float %3655, %3472
  %3659 = fmul fast float %3656, %3473
  br label %3660

; <label>:3660                                    ; preds = %3644, %3610, %3501, %3457
  %3661 = phi float [ %3606, %3501 ], [ %3482, %3610 ], [ %3482, %3644 ], [ 0x3FA23C0BE0000000, %3457 ]
  %3662 = phi float [ %3598, %3501 ], [ %3641, %3610 ], [ %3657, %3644 ], [ 1.000000e+00, %3457 ]
  %3663 = phi float [ %3599, %3501 ], [ %3642, %3610 ], [ %3658, %3644 ], [ 1.000000e+00, %3457 ]
  %3664 = phi float [ %3600, %3501 ], [ %3643, %3610 ], [ %3659, %3644 ], [ 1.000000e+00, %3457 ]
  %3665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3666 = extractvalue %dx.types.CBufRet.i32 %3665, 1
  %3667 = and i32 %3666, 1
  %3668 = icmp ne i32 %3667, 0
  %3669 = add i32 %62, 356
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = and i32 %3671, 32
  %3673 = icmp ne i32 %3672, 0
  %3674 = and i1 %3668, %3673
  %3675 = select i1 %3674, float 1.000000e+00, float %3662
  %3676 = select i1 %3674, float 0x3FD3333340000000, float %3663
  %3677 = select i1 %3674, float 0x3FD3333340000000, float %3664
  %3678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.i32 %3678, 0
  %3680 = and i32 %3679, 32
  %3681 = icmp eq i32 %3680, 0
  br i1 %3681, label %3754, label %3682

; <label>:3682                                    ; preds = %3660
  %3683 = add i32 %62, 140
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = add i32 %62, 468
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = add i32 %3688, 0
  %3690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3690, %dx.types.Handle %107, float %3267, float %3268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.f32 %3691, 1
  %3694 = extractvalue %dx.types.ResRet.f32 %3691, 2
  %3695 = extractvalue %dx.types.ResRet.f32 %3691, 3
  %3696 = and i32 %3685, 255
  %3697 = uitofp i32 %3696 to float
  %3698 = lshr i32 %3685, 8
  %3699 = and i32 %3698, 255
  %3700 = uitofp i32 %3699 to float
  %3701 = lshr i32 %3685, 16
  %3702 = and i32 %3701, 255
  %3703 = uitofp i32 %3702 to float
  %3704 = fmul fast float %3703, 0x3F70101000000000
  %3705 = fmul fast float %3692, %3697
  %3706 = fadd fast float %3705, %3700
  %3707 = fmul fast float %3706, 0x3F70101000000000
  %3708 = fadd fast float %3693, -5.000000e-01
  %3709 = fadd fast float %3695, -5.000000e-01
  %3710 = fmul fast float %3708, %3704
  %3711 = fmul fast float %3709, %3704
  %3712 = fadd fast float %3710, 5.000000e-01
  %3713 = fadd fast float %3711, 5.000000e-01
  %3714 = fmul fast float %3712, 2.000000e+00
  %3715 = fadd fast float %3714, -1.000000e+00
  %3716 = fmul fast float %3713, 2.000000e+00
  %3717 = fadd fast float %3716, -1.000000e+00
  %3718 = fadd fast float %3715, %3717
  %3719 = fmul fast float %3718, 5.000000e-01
  %3720 = fsub fast float %3715, %3717
  %3721 = fmul fast float %3720, 5.000000e-01
  %3722 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3723 = fsub fast float 1.000000e+00, %3722
  %3724 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3725 = fsub fast float %3723, %3724
  %3726 = call float @dx.op.dot3.f32(i32 55, float %3719, float %3721, float %3725, float %3719, float %3721, float %3725)  ; Dot3(ax,ay,az,bx,by,bz)
  %3727 = call float @dx.op.unary.f32(i32 25, float %3726)  ; Rsqrt(value)
  %3728 = fmul fast float %3719, %3727
  %3729 = fmul fast float %3721, %3727
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = and i32 %3731, 67108864
  %3733 = icmp eq i32 %3732, 0
  br i1 %3733, label %3750, label %3734

; <label>:3734                                    ; preds = %3682
  %3735 = add i32 %62, 328
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = and i32 %3737, 65535
  %3739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3738)  ; LegacyF16ToF32(value)
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = and i32 %3741, 65535
  %3743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3742)  ; LegacyF16ToF32(value)
  %3744 = lshr i32 %3737, 16
  %3745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3744)  ; LegacyF16ToF32(value)
  %3746 = fsub fast float %3707, %3745
  %3747 = fmul fast float %3746, %3739
  %3748 = fadd fast float %3747, %3743
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  br label %3750

; <label>:3750                                    ; preds = %3734, %3682
  %3751 = phi float [ %3749, %3734 ], [ %3707, %3682 ]
  %3752 = call float @dx.op.dot2.f32(i32 54, float %3728, float %3729, float %3171, float %3172)  ; Dot2(ax,ay,bx,by)
  %3753 = call float @dx.op.dot2.f32(i32 54, float %3728, float %3729, float %3173, float %3174)  ; Dot2(ax,ay,bx,by)
  br label %3754

; <label>:3754                                    ; preds = %3750, %3660
  %3755 = phi float [ %3751, %3750 ], [ 0x3FD6666660000000, %3660 ]
  %3756 = phi float [ %3752, %3750 ], [ 0.000000e+00, %3660 ]
  %3757 = phi float [ %3753, %3750 ], [ 0.000000e+00, %3660 ]
  %3758 = phi float [ %3694, %3750 ], [ 1.000000e+00, %3660 ]
  %3759 = add i32 %62, 208
  %3760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.i32 %3760, 0
  %3762 = lshr i32 %3761, 22
  %3763 = shl nuw nsw i32 %3762, 5
  %3764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3763)  ; LegacyF16ToF32(value)
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = and i32 %3766, 64
  %3768 = icmp eq i32 %3767, 0
  br i1 %3768, label %3802, label %3769

; <label>:3769                                    ; preds = %3754
  %3770 = add i32 %62, 484
  %3771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.i32 %3771, 0
  %3773 = add i32 %3772, 0
  %3774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = and i32 %3776, 131072
  %3778 = icmp eq i32 %3777, 0
  %3779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3774, %dx.types.Handle %107, float %3267, float %3268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.ResRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.ResRet.f32 %3779, 2
  %3783 = fmul fast float %3780, %375
  %3784 = fmul fast float %3781, %378
  %3785 = fmul fast float %3782, %381
  br i1 %3778, label %3792, label %3786

; <label>:3786                                    ; preds = %3769
  %3787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3788 = extractvalue %dx.types.CBufRet.f32 %3787, 0
  %3789 = fmul fast float %3788, %3783
  %3790 = fmul fast float %3788, %3784
  %3791 = fmul fast float %3788, %3785
  br label %3792

; <label>:3792                                    ; preds = %3786, %3769
  %3793 = phi float [ %3789, %3786 ], [ %3783, %3769 ]
  %3794 = phi float [ %3790, %3786 ], [ %3784, %3769 ]
  %3795 = phi float [ %3791, %3786 ], [ %3785, %3769 ]
  %3796 = fmul fast float %3793, %3764
  %3797 = select i1 %232, float %3796, float %3793
  %3798 = call float @dx.op.dot3.f32(i32 55, float %3797, float %3794, float %3795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3799 = select i1 %232, float 0.000000e+00, float %3793
  %3800 = select i1 %232, float %3798, float %3794
  %3801 = select i1 %232, float 0.000000e+00, float %3795
  br label %3802

; <label>:3802                                    ; preds = %3792, %3754
  %3803 = phi float [ %3799, %3792 ], [ 0.000000e+00, %3754 ]
  %3804 = phi float [ %3800, %3792 ], [ 0.000000e+00, %3754 ]
  %3805 = phi float [ %3801, %3792 ], [ 0.000000e+00, %3754 ]
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = and i32 %3807, 26624
  %3809 = icmp eq i32 %3808, 0
  br i1 %3809, label %3867, label %3810

; <label>:3810                                    ; preds = %3802
  %3811 = add i32 %62, 548
  %3812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3811, i32 undef)  ; BufferLoad(srv,index,wot)
  %3813 = extractvalue %dx.types.ResRet.i32 %3812, 0
  %3814 = add i32 %3813, 0
  %3815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3814, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3816 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3815, %dx.types.Handle %108, float %3267, float %3268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3819 = extractvalue %dx.types.ResRet.f32 %3816, 3
  %3820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.i32 %3820, 0
  %3822 = and i32 %3821, 1048576
  %3823 = icmp ne i32 %3822, 0
  %3824 = and i32 %3821, 8192
  %3825 = icmp eq i32 %3824, 0
  br i1 %3825, label %3840, label %3826

; <label>:3826                                    ; preds = %3810
  %3827 = extractvalue %dx.types.ResRet.f32 %3816, 2
  %3828 = select i1 %3823, float %3827, float %3818
  %3829 = select i1 %3823, float %3817, float %3818
  %3830 = add i32 %62, 144
  %3831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.i32 %3831, 0
  %3833 = lshr i32 %3832, 16
  %3834 = and i32 %3833, 255
  %3835 = uitofp i32 %3834 to float
  %3836 = fmul fast float %3835, 0x3F80101020000000
  %3837 = fmul fast float %3836, %3829
  %3838 = fmul fast float %3836, %3818
  %3839 = fmul fast float %3836, %3828
  br label %3840

; <label>:3840                                    ; preds = %3826, %3810
  %3841 = phi float [ %3837, %3826 ], [ 0.000000e+00, %3810 ]
  %3842 = phi float [ %3838, %3826 ], [ 0.000000e+00, %3810 ]
  %3843 = phi float [ %3839, %3826 ], [ 0.000000e+00, %3810 ]
  %3844 = and i32 %3821, 2048
  %3845 = icmp eq i32 %3844, 0
  br i1 %3845, label %3854, label %3846

; <label>:3846                                    ; preds = %3840
  %3847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.i32 %3847, 0
  %3849 = shl i32 %3848, 4
  %3850 = and i32 %3849, 32752
  %3851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3850)  ; LegacyF16ToF32(value)
  %3852 = fmul fast float %3851, %3819
  %3853 = call float @dx.op.binary.f32(i32 35, float %3852, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3854

; <label>:3854                                    ; preds = %3846, %3840
  %3855 = phi float [ %3853, %3846 ], [ 0x3F70101020000000, %3840 ]
  %3856 = and i32 %3821, 16384
  %3857 = icmp eq i32 %3856, 0
  br i1 %3857, label %3867, label %3858

; <label>:3858                                    ; preds = %3854
  %3859 = add i32 %62, 144
  %3860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.i32 %3860, 0
  %3862 = lshr i32 %3861, 24
  %3863 = uitofp i32 %3862 to float
  %3864 = fmul fast float %3817, 0x3F70101020000000
  %3865 = select i1 %3823, float 0x3F70101020000000, float %3864
  %3866 = fmul fast float %3865, %3863
  br label %3867

; <label>:3867                                    ; preds = %3858, %3854, %3802
  %3868 = phi float [ %3841, %3858 ], [ %3841, %3854 ], [ 0.000000e+00, %3802 ]
  %3869 = phi float [ %3842, %3858 ], [ %3842, %3854 ], [ 0.000000e+00, %3802 ]
  %3870 = phi float [ %3843, %3858 ], [ %3843, %3854 ], [ 0.000000e+00, %3802 ]
  %3871 = phi float [ %3855, %3858 ], [ %3855, %3854 ], [ 0x3F70101020000000, %3802 ]
  %3872 = phi float [ %3866, %3858 ], [ 0.000000e+00, %3854 ], [ 0.000000e+00, %3802 ]
  %3873 = add i32 %62, 144
  %3874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.i32 %3874, 0
  %3876 = and i32 %3875, 255
  %3877 = uitofp i32 %3876 to float
  %3878 = lshr i32 %3875, 8
  %3879 = and i32 %3878, 255
  %3880 = uitofp i32 %3879 to float
  %3881 = call float @dx.op.dot3.f32(i32 55, float %3675, float %3676, float %3677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3882 = fmul fast float %3880, %3881
  %3883 = fadd fast float %3882, %3877
  %3884 = fmul fast float %3883, 0x3F70101020000000
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  br i1 %3159, label %3886, label %3894

; <label>:3886                                    ; preds = %3867
  %3887 = fsub fast float 1.000000e+00, %3455
  %3888 = fmul fast float %3887, %3146
  %3889 = fmul fast float %3887, %3147
  %3890 = fmul fast float %3887, %3148
  %3891 = fmul fast float %3887, %3143
  %3892 = fmul fast float %3887, %3144
  %3893 = fmul fast float %3887, %3145
  br label %3894

; <label>:3894                                    ; preds = %3886, %3867
  %3895 = phi float [ %3891, %3886 ], [ %3143, %3867 ]
  %3896 = phi float [ %3892, %3886 ], [ %3144, %3867 ]
  %3897 = phi float [ %3893, %3886 ], [ %3145, %3867 ]
  %3898 = phi float [ %3888, %3886 ], [ %3146, %3867 ]
  %3899 = phi float [ %3889, %3886 ], [ %3147, %3867 ]
  %3900 = phi float [ %3890, %3886 ], [ %3148, %3867 ]
  %3901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3902 = extractvalue %dx.types.ResRet.i32 %3901, 0
  %3903 = and i32 %3902, 3
  %3904 = icmp eq i32 %3903, 3
  br i1 %3904, label %3983, label %3905

; <label>:3905                                    ; preds = %3894
  %3906 = and i32 %3902, 16
  %3907 = icmp ne i32 %3906, 0
  %3908 = select i1 %3907, float %3455, float 0.000000e+00
  %3909 = icmp eq i32 %3903, 0
  br i1 %3909, label %3910, label %3938

; <label>:3910                                    ; preds = %3905
  %3911 = and i32 %3902, 64
  %3912 = icmp ne i32 %3911, 0
  %3913 = select i1 %3912, float %3455, float 0.000000e+00
  %3914 = fsub fast float %3675, %3898
  %3915 = fsub fast float %3676, %3899
  %3916 = fsub fast float %3677, %3900
  %3917 = fmul fast float %3908, %3914
  %3918 = fmul fast float %3908, %3915
  %3919 = fmul fast float %3908, %3916
  %3920 = fadd fast float %3917, %3898
  %3921 = fadd fast float %3918, %3899
  %3922 = fadd fast float %3919, %3900
  %3923 = fsub fast float %3661, %3152
  %3924 = fmul fast float %3908, %3923
  %3925 = fadd fast float %3924, %3152
  %3926 = fsub fast float %3803, %3895
  %3927 = fsub fast float %3804, %3896
  %3928 = fsub fast float %3805, %3897
  %3929 = fmul fast float %3913, %3926
  %3930 = fmul fast float %3913, %3927
  %3931 = fmul fast float %3913, %3928
  %3932 = fadd fast float %3929, %3895
  %3933 = fadd fast float %3930, %3896
  %3934 = fadd fast float %3931, %3897
  %3935 = fsub fast float %3885, %3157
  %3936 = fmul fast float %3908, %3935
  %3937 = fadd fast float %3936, %3157
  br label %3983

; <label>:3938                                    ; preds = %3905
  %3939 = icmp eq i32 %3903, 1
  br i1 %3939, label %3940, label %3953

; <label>:3940                                    ; preds = %3938
  %3941 = fadd fast float %3675, -1.000000e+00
  %3942 = fadd fast float %3676, -1.000000e+00
  %3943 = fadd fast float %3677, -1.000000e+00
  %3944 = fmul fast float %3908, %3941
  %3945 = fmul fast float %3908, %3942
  %3946 = fmul fast float %3908, %3943
  %3947 = fadd fast float %3944, 1.000000e+00
  %3948 = fadd fast float %3945, 1.000000e+00
  %3949 = fadd fast float %3946, 1.000000e+00
  %3950 = fmul fast float %3947, %3898
  %3951 = fmul fast float %3948, %3899
  %3952 = fmul fast float %3949, %3900
  br label %3983

; <label>:3953                                    ; preds = %3938
  %3954 = icmp eq i32 %3903, 2
  br i1 %3954, label %3955, label %3983

; <label>:3955                                    ; preds = %3953
  %3956 = call float @dx.op.unary.f32(i32 24, float %3675)  ; Sqrt(value)
  %3957 = call float @dx.op.unary.f32(i32 24, float %3676)  ; Sqrt(value)
  %3958 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3959 = fadd fast float %3956, -5.000000e-01
  %3960 = fadd fast float %3957, -5.000000e-01
  %3961 = fadd fast float %3958, -5.000000e-01
  %3962 = fmul fast float %3959, %3908
  %3963 = fmul fast float %3960, %3908
  %3964 = fmul fast float %3961, %3908
  %3965 = fadd fast float %3962, 5.000000e-01
  %3966 = fadd fast float %3963, 5.000000e-01
  %3967 = fadd fast float %3964, 5.000000e-01
  %3968 = fmul fast float %3965, 2.000000e+00
  %3969 = fsub fast float 1.000000e+00, %3968
  %3970 = fmul fast float %3969, %3898
  %3971 = fadd fast float %3970, %3968
  %3972 = fmul fast float %3971, %3898
  %3973 = fmul fast float %3966, 2.000000e+00
  %3974 = fsub fast float 1.000000e+00, %3973
  %3975 = fmul fast float %3974, %3899
  %3976 = fadd fast float %3975, %3973
  %3977 = fmul fast float %3976, %3899
  %3978 = fmul fast float %3967, 2.000000e+00
  %3979 = fsub fast float 1.000000e+00, %3978
  %3980 = fmul fast float %3979, %3900
  %3981 = fadd fast float %3980, %3978
  %3982 = fmul fast float %3981, %3900
  br label %3983

; <label>:3983                                    ; preds = %3955, %3953, %3940, %3910, %3894
  %3984 = phi float [ %3895, %3894 ], [ %3895, %3955 ], [ %3895, %3953 ], [ %3895, %3940 ], [ %3932, %3910 ]
  %3985 = phi float [ %3896, %3894 ], [ %3896, %3955 ], [ %3896, %3953 ], [ %3896, %3940 ], [ %3933, %3910 ]
  %3986 = phi float [ %3897, %3894 ], [ %3897, %3955 ], [ %3897, %3953 ], [ %3897, %3940 ], [ %3934, %3910 ]
  %3987 = phi float [ %3898, %3894 ], [ %3972, %3955 ], [ %3898, %3953 ], [ %3950, %3940 ], [ %3920, %3910 ]
  %3988 = phi float [ %3899, %3894 ], [ %3977, %3955 ], [ %3899, %3953 ], [ %3951, %3940 ], [ %3921, %3910 ]
  %3989 = phi float [ %3900, %3894 ], [ %3982, %3955 ], [ %3900, %3953 ], [ %3952, %3940 ], [ %3922, %3910 ]
  %3990 = phi float [ %3152, %3894 ], [ %3152, %3955 ], [ %3152, %3953 ], [ %3152, %3940 ], [ %3925, %3910 ]
  %3991 = phi float [ %3157, %3894 ], [ %3157, %3955 ], [ %3157, %3953 ], [ %3157, %3940 ], [ %3937, %3910 ]
  %3992 = and i32 %3902, 12
  %3993 = icmp eq i32 %3992, 12
  br i1 %3993, label %4110, label %3994

; <label>:3994                                    ; preds = %3983
  %3995 = and i32 %3902, 2097184
  %3996 = icmp eq i32 %3995, 2097184
  %3997 = select i1 %3996, float %3455, float 0.000000e+00
  %3998 = and i32 %3902, 4194336
  %3999 = icmp eq i32 %3998, 4194336
  %4000 = select i1 %3999, float %3455, float 0.000000e+00
  %4001 = and i32 %3902, 8388640
  %4002 = icmp eq i32 %4001, 8388640
  %4003 = select i1 %4002, float %3455, float 0.000000e+00
  %4004 = and i32 %3902, 2048
  %4005 = icmp ne i32 %4004, 0
  %4006 = select i1 %4005, float %3455, float 0.000000e+00
  %4007 = and i32 %3902, 8192
  %4008 = icmp ne i32 %4007, 0
  %4009 = select i1 %4008, float %3455, float 0.000000e+00
  %4010 = and i32 %3902, 16384
  %4011 = icmp ne i32 %4010, 0
  %4012 = select i1 %4011, float %3455, float 0.000000e+00
  %4013 = icmp eq i32 %3992, 0
  br i1 %4013, label %4014, label %4042

; <label>:4014                                    ; preds = %3994
  %4015 = fsub fast float %3756, %3141
  %4016 = fsub fast float %3757, %3142
  %4017 = fmul fast float %3997, %4015
  %4018 = fmul fast float %3997, %4016
  %4019 = fadd fast float %4017, %3141
  %4020 = fadd fast float %4018, %3142
  %4021 = fsub fast float %3758, %3154
  %4022 = fmul fast float %4000, %4021
  %4023 = fadd fast float %4022, %3154
  %4024 = fsub fast float %3755, %3153
  %4025 = fmul fast float %4003, %4024
  %4026 = fadd fast float %4025, %3153
  %4027 = fsub fast float %3871, %3155
  %4028 = fmul fast float %4006, %4027
  %4029 = fadd fast float %4028, %3155
  %4030 = fsub fast float %3868, %3149
  %4031 = fsub fast float %3869, %3150
  %4032 = fsub fast float %3870, %3151
  %4033 = fmul fast float %4009, %4030
  %4034 = fmul fast float %4009, %4031
  %4035 = fmul fast float %4009, %4032
  %4036 = fadd fast float %4033, %3149
  %4037 = fadd fast float %4034, %3150
  %4038 = fadd fast float %4035, %3151
  %4039 = fsub fast float %3872, %3156
  %4040 = fmul fast float %4012, %4039
  %4041 = fadd fast float %4040, %3156
  br label %4110

; <label>:4042                                    ; preds = %3994
  %4043 = icmp eq i32 %3992, 4
  br i1 %4043, label %4044, label %4086

; <label>:4044                                    ; preds = %4042
  %4045 = fmul fast float %3997, %3756
  %4046 = fmul fast float %3997, %3757
  %4047 = fadd fast float %4045, %3141
  %4048 = fadd fast float %4046, %3142
  %4049 = call float @dx.op.binary.f32(i32 36, float %3154, float %3758)  ; FMin(a,b)
  %4050 = fsub fast float %4049, %3154
  %4051 = fmul fast float %4050, %4000
  %4052 = fadd fast float %4051, %3154
  %4053 = fadd fast float %3755, %3153
  %4054 = fmul fast float %4053, 0x3FF337FAE0000000
  %4055 = fmul fast float %3153, %3153
  %4056 = fmul fast float %3755, %3755
  %4057 = fadd fast float %4056, %4055
  %4058 = fmul fast float %4057, 0x3FE5152B00000000
  %4059 = fmul fast float %3153, 0xBFCC1F85E0000000
  %4060 = fmul fast float %4059, %3755
  %4061 = fadd fast float %4060, 0xBFE1363700000000
  %4062 = fadd fast float %4061, %4054
  %4063 = fsub fast float %4062, %4058
  %4064 = fmul fast float %4053, 0x3FBA6F0D00000000
  %4065 = fmul fast float %4057, 0x3FD0432880000000
  %4066 = fmul fast float %3153, 0xBFEF110800000000
  %4067 = fmul fast float %4066, %3755
  %4068 = fadd fast float %4067, 1.000000e+00
  %4069 = fsub fast float %4068, %4064
  %4070 = fadd fast float %4069, %4065
  %4071 = fdiv fast float %4063, %4070
  %4072 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4073 = fsub fast float %4072, %3153
  %4074 = fmul fast float %4073, %4003
  %4075 = fadd fast float %4074, %3153
  %4076 = fmul fast float %4006, %3871
  %4077 = fadd fast float %4076, %3155
  %4078 = fmul fast float %4009, %3868
  %4079 = fmul fast float %4009, %3869
  %4080 = fmul fast float %4009, %3870
  %4081 = fadd fast float %4078, %3149
  %4082 = fadd fast float %4079, %3150
  %4083 = fadd fast float %4080, %3151
  %4084 = fmul fast float %4012, %3872
  %4085 = fadd fast float %4084, %3156
  br label %4110

; <label>:4086                                    ; preds = %4042
  %4087 = icmp eq i32 %3992, 8
  br i1 %4087, label %4088, label %4110

; <label>:4088                                    ; preds = %4086
  %4089 = fmul fast float %3997, %3756
  %4090 = fmul fast float %3997, %3757
  %4091 = fadd fast float %4089, %3141
  %4092 = fadd fast float %4090, %3142
  %4093 = call float @dx.op.binary.f32(i32 36, float %3154, float %3758)  ; FMin(a,b)
  %4094 = fsub fast float %4093, %3154
  %4095 = fmul fast float %4094, %4000
  %4096 = fadd fast float %4095, %3154
  %4097 = fsub fast float %3755, %3153
  %4098 = fmul fast float %4003, %4097
  %4099 = fadd fast float %4098, %3153
  %4100 = fmul fast float %4006, %3871
  %4101 = fadd fast float %4100, %3155
  %4102 = fmul fast float %4009, %3868
  %4103 = fmul fast float %4009, %3869
  %4104 = fmul fast float %4009, %3870
  %4105 = fadd fast float %4102, %3149
  %4106 = fadd fast float %4103, %3150
  %4107 = fadd fast float %4104, %3151
  %4108 = fmul fast float %4012, %3872
  %4109 = fadd fast float %4108, %3156
  br label %4110

; <label>:4110                                    ; preds = %4088, %4086, %4044, %4014, %3983, %3454, %3158, %3140
  %4111 = phi float [ %3141, %3983 ], [ %3141, %3454 ], [ %3141, %3140 ], [ %3141, %3158 ], [ %4019, %4014 ], [ %4047, %4044 ], [ %3141, %4086 ], [ %4091, %4088 ]
  %4112 = phi float [ %3142, %3983 ], [ %3142, %3454 ], [ %3142, %3140 ], [ %3142, %3158 ], [ %4020, %4014 ], [ %4048, %4044 ], [ %3142, %4086 ], [ %4092, %4088 ]
  %4113 = phi float [ %3984, %3983 ], [ %3143, %3454 ], [ %3143, %3140 ], [ %3143, %3158 ], [ %3984, %4014 ], [ %3984, %4044 ], [ %3984, %4086 ], [ %3984, %4088 ]
  %4114 = phi float [ %3985, %3983 ], [ %3144, %3454 ], [ %3144, %3140 ], [ %3144, %3158 ], [ %3985, %4014 ], [ %3985, %4044 ], [ %3985, %4086 ], [ %3985, %4088 ]
  %4115 = phi float [ %3986, %3983 ], [ %3145, %3454 ], [ %3145, %3140 ], [ %3145, %3158 ], [ %3986, %4014 ], [ %3986, %4044 ], [ %3986, %4086 ], [ %3986, %4088 ]
  %4116 = phi float [ %3987, %3983 ], [ %3146, %3454 ], [ %3146, %3140 ], [ %3146, %3158 ], [ %3987, %4014 ], [ %3987, %4044 ], [ %3987, %4086 ], [ %3987, %4088 ]
  %4117 = phi float [ %3988, %3983 ], [ %3147, %3454 ], [ %3147, %3140 ], [ %3147, %3158 ], [ %3988, %4014 ], [ %3988, %4044 ], [ %3988, %4086 ], [ %3988, %4088 ]
  %4118 = phi float [ %3989, %3983 ], [ %3148, %3454 ], [ %3148, %3140 ], [ %3148, %3158 ], [ %3989, %4014 ], [ %3989, %4044 ], [ %3989, %4086 ], [ %3989, %4088 ]
  %4119 = phi float [ %3149, %3983 ], [ %3149, %3454 ], [ %3149, %3140 ], [ %3149, %3158 ], [ %4036, %4014 ], [ %4081, %4044 ], [ %3149, %4086 ], [ %4105, %4088 ]
  %4120 = phi float [ %3150, %3983 ], [ %3150, %3454 ], [ %3150, %3140 ], [ %3150, %3158 ], [ %4037, %4014 ], [ %4082, %4044 ], [ %3150, %4086 ], [ %4106, %4088 ]
  %4121 = phi float [ %3151, %3983 ], [ %3151, %3454 ], [ %3151, %3140 ], [ %3151, %3158 ], [ %4038, %4014 ], [ %4083, %4044 ], [ %3151, %4086 ], [ %4107, %4088 ]
  %4122 = phi float [ %3990, %3983 ], [ %3152, %3454 ], [ %3152, %3140 ], [ %3152, %3158 ], [ %3990, %4014 ], [ %3990, %4044 ], [ %3990, %4086 ], [ %3990, %4088 ]
  %4123 = phi float [ %3153, %3983 ], [ %3153, %3454 ], [ %3153, %3140 ], [ %3153, %3158 ], [ %4026, %4014 ], [ %4075, %4044 ], [ %3153, %4086 ], [ %4099, %4088 ]
  %4124 = phi float [ %3154, %3983 ], [ %3154, %3454 ], [ %3154, %3140 ], [ %3154, %3158 ], [ %4023, %4014 ], [ %4052, %4044 ], [ %3154, %4086 ], [ %4096, %4088 ]
  %4125 = phi float [ %3155, %3983 ], [ %3155, %3454 ], [ %3155, %3140 ], [ %3155, %3158 ], [ %4029, %4014 ], [ %4077, %4044 ], [ %3155, %4086 ], [ %4101, %4088 ]
  %4126 = phi float [ %3156, %3983 ], [ %3156, %3454 ], [ %3156, %3140 ], [ %3156, %3158 ], [ %4041, %4014 ], [ %4085, %4044 ], [ %3156, %4086 ], [ %4109, %4088 ]
  %4127 = phi float [ %3991, %3983 ], [ %3157, %3454 ], [ %3157, %3140 ], [ %3157, %3158 ], [ %3991, %4014 ], [ %3991, %4044 ], [ %3991, %4086 ], [ %3991, %4088 ]
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = call float @dx.op.dot2.f32(i32 54, float %4111, float %4112, float %4111, float %4112)  ; Dot2(ax,ay,bx,by)
  %4131 = fmul fast float %4130, 0x3FE3333340000000
  %4132 = fsub fast float 1.000000e+00, %4131
  %4133 = call float @dx.op.dot3.f32(i32 55, float %4111, float %4112, float %4132, float %4111, float %4112, float %4132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4134 = call float @dx.op.unary.f32(i32 25, float %4133)  ; Rsqrt(value)
  %4135 = fmul fast float %4134, %4111
  %4136 = fmul fast float %4134, %4112
  %4137 = fmul fast float %4132, %4134
  %4138 = fmul fast float %4137, %120
  %4139 = fmul fast float %4137, %122
  %4140 = fmul fast float %4137, %124
  %4141 = fmul fast float %4135, %83
  %4142 = fmul fast float %4135, %84
  %4143 = fmul fast float %4135, %85
  %4144 = fadd fast float %4138, %4141
  %4145 = fadd fast float %4139, %4142
  %4146 = fadd fast float %4140, %4143
  %4147 = fmul fast float %134, %4136
  %4148 = fmul fast float %135, %4136
  %4149 = fmul fast float %136, %4136
  %4150 = fadd fast float %4144, %4147
  %4151 = fadd fast float %4145, %4148
  %4152 = fadd fast float %4146, %4149
  %4153 = call float @dx.op.dot3.f32(i32 55, float %4150, float %4151, float %4152, float %4150, float %4151, float %4152)  ; Dot3(ax,ay,az,bx,by,bz)
  %4154 = call float @dx.op.unary.f32(i32 25, float %4153)  ; Rsqrt(value)
  %4155 = fmul fast float %4150, %4154
  %4156 = fmul fast float %4151, %4154
  %4157 = fmul fast float %4152, %4154
  %4158 = and i32 %64, 1
  %4159 = icmp eq i32 %4158, 0
  br i1 %4159, label %4160, label %4725

; <label>:4160                                    ; preds = %4110
  %4161 = call float @dx.op.unary.f32(i32 83, float %170)  ; DerivCoarseX(value)
  %4162 = call float @dx.op.unary.f32(i32 83, float %171)  ; DerivCoarseX(value)
  %4163 = call float @dx.op.unary.f32(i32 83, float %172)  ; DerivCoarseX(value)
  %4164 = call float @dx.op.unary.f32(i32 84, float %170)  ; DerivCoarseY(value)
  %4165 = call float @dx.op.unary.f32(i32 84, float %171)  ; DerivCoarseY(value)
  %4166 = call float @dx.op.unary.f32(i32 84, float %172)  ; DerivCoarseY(value)
  %4167 = fadd fast float %4161, %170
  %4168 = fadd fast float %4162, %171
  %4169 = fadd fast float %4163, %172
  %4170 = fadd fast float %4164, %170
  %4171 = fadd fast float %4165, %171
  %4172 = fadd fast float %4166, %172
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.CBufRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.CBufRet.f32 %4173, 2
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 2
  %4179 = extractvalue %dx.types.CBufRet.f32 %4177, 3
  %4180 = fmul fast float %4174, %111
  %4181 = fmul fast float %4180, %4178
  %4182 = fmul fast float %4175, %112
  %4183 = fmul fast float %4182, %4179
  %4184 = fptoui float %4181 to i32
  %4185 = fptoui float %4183 to i32
  %4186 = fadd fast float %4174, -1.000000e+00
  %4187 = fadd fast float %4175, -1.000000e+00
  %4188 = fptoui float %4186 to i32
  %4189 = fptoui float %4187 to i32
  %4190 = call i32 @dx.op.binary.i32(i32 40, i32 %4184, i32 %4188)  ; UMin(a,b)
  %4191 = call i32 @dx.op.binary.i32(i32 40, i32 %4185, i32 %4189)  ; UMin(a,b)
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 2
  %4194 = extractvalue %dx.types.CBufRet.f32 %4192, 3
  %4195 = fmul fast float %4193, %99
  %4196 = fsub fast float %4195, %4194
  %4197 = fadd fast float %4176, -1.000000e+00
  %4198 = call float @dx.op.binary.f32(i32 36, float %4196, float %4197)  ; FMin(a,b)
  %4199 = fptoui float %4198 to i32
  %4200 = fptoui float %4174 to i32
  %4201 = fptoui float %4175 to i32
  %4202 = mul i32 %4199, %4201
  %4203 = add i32 %4202, %4191
  %4204 = mul i32 %4203, %4200
  %4205 = add i32 %4204, %4190
  %4206 = shl i32 %4205, 2
  %4207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.i32 %4207, 0
  %4209 = and i32 %4208, 1023
  %4210 = lshr i32 %4208, 10
  %4211 = icmp eq i32 %4209, 0
  br i1 %4211, label %4690, label %4212

; <label>:4212                                    ; preds = %4160
  %4213 = and i32 %4208, 1023
  br label %4214

; <label>:4214                                    ; preds = %4344, %4212
  %4215 = phi i32 [ %4294, %4344 ], [ 0, %4212 ]
  %4216 = phi float [ %4345, %4344 ], [ 0.000000e+00, %4212 ]
  %4217 = phi float [ %4346, %4344 ], [ %1212, %4212 ]
  %4218 = phi float [ %4347, %4344 ], [ %4129, %4212 ]
  %4219 = phi float [ %4348, %4344 ], [ %4127, %4212 ]
  %4220 = phi float [ %4349, %4344 ], [ %4126, %4212 ]
  %4221 = phi float [ %4350, %4344 ], [ 0.000000e+00, %4212 ]
  %4222 = phi float [ %4351, %4344 ], [ %4119, %4212 ]
  %4223 = phi float [ %4352, %4344 ], [ %4120, %4212 ]
  %4224 = phi float [ %4353, %4344 ], [ %4121, %4212 ]
  %4225 = phi float [ %4354, %4344 ], [ %4113, %4212 ]
  %4226 = phi float [ %4355, %4344 ], [ %4114, %4212 ]
  %4227 = phi float [ %4356, %4344 ], [ %4115, %4212 ]
  %4228 = phi float [ %4357, %4344 ], [ %4155, %4212 ]
  %4229 = phi float [ %4358, %4344 ], [ %4156, %4212 ]
  %4230 = phi float [ %4359, %4344 ], [ %4157, %4212 ]
  %4231 = phi float [ %4360, %4344 ], [ %4124, %4212 ]
  %4232 = phi float [ %4361, %4344 ], [ %4123, %4212 ]
  %4233 = phi float [ %4362, %4344 ], [ 0.000000e+00, %4212 ]
  %4234 = phi float [ %4363, %4344 ], [ %4122, %4212 ]
  %4235 = phi float [ %4364, %4344 ], [ %4116, %4212 ]
  %4236 = phi float [ %4365, %4344 ], [ %4117, %4212 ]
  %4237 = phi float [ %4366, %4344 ], [ %4118, %4212 ]
  %4238 = add nuw nsw i32 %4215, %4210
  %4239 = shl i32 %4238, 2
  %4240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.i32 %4240, 0
  %4242 = shl i32 %4241, 8
  %4243 = or i32 %4242, 48
  %4244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = extractvalue %dx.types.ResRet.f32 %4244, 1
  %4247 = extractvalue %dx.types.ResRet.f32 %4244, 2
  %4248 = extractvalue %dx.types.ResRet.f32 %4244, 3
  %4249 = or i32 %4242, 64
  %4250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.i32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.i32 %4250, 1
  %4253 = or i32 %4242, 80
  %4254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 2
  %4256 = extractvalue %dx.types.ResRet.f32 %4254, 3
  %4257 = or i32 %4242, 96
  %4258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4257, i32 undef)  ; BufferLoad(srv,index,wot)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.ResRet.f32 %4258, 1
  %4261 = extractvalue %dx.types.ResRet.f32 %4258, 2
  %4262 = extractvalue %dx.types.ResRet.f32 %4258, 3
  %4263 = or i32 %4242, 112
  %4264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 2
  %4266 = or i32 %4242, 128
  %4267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4266, i32 undef)  ; BufferLoad(srv,index,wot)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.ResRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.ResRet.f32 %4267, 2
  %4271 = extractvalue %dx.types.ResRet.f32 %4267, 3
  %4272 = or i32 %4242, 144
  %4273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.ResRet.f32 %4273, 1
  %4276 = extractvalue %dx.types.ResRet.f32 %4273, 2
  %4277 = extractvalue %dx.types.ResRet.f32 %4273, 3
  %4278 = or i32 %4242, 160
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = extractvalue %dx.types.ResRet.f32 %4279, 1
  %4282 = extractvalue %dx.types.ResRet.f32 %4279, 2
  %4283 = extractvalue %dx.types.ResRet.f32 %4279, 3
  %4284 = or i32 %4242, 192
  %4285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.i32 %4285, 0
  %4287 = or i32 %4242, 208
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = or i32 %4242, 248
  %4291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.ResRet.f32 %4291, 1
  %4294 = add nuw nsw i32 %4215, 1
  %4295 = bitcast float %4248 to i32
  %4296 = and i32 %4295, 512
  %4297 = icmp eq i32 %4296, 0
  %4298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4242, i32 undef)  ; BufferLoad(srv,index,wot)
  %4299 = extractvalue %dx.types.ResRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.ResRet.f32 %4298, 1
  %4301 = extractvalue %dx.types.ResRet.f32 %4298, 2
  %4302 = extractvalue %dx.types.ResRet.f32 %4298, 3
  %4303 = call float @dx.op.dot4.f32(i32 56, float %4299, float %4300, float %4301, float %4302, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4304 = or i32 %4242, 16
  %4305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4305, 2
  %4309 = extractvalue %dx.types.ResRet.f32 %4305, 3
  %4310 = call float @dx.op.dot4.f32(i32 56, float %4306, float %4307, float %4308, float %4309, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4311 = or i32 %4242, 32
  %4312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.ResRet.f32 %4312, 1
  %4315 = extractvalue %dx.types.ResRet.f32 %4312, 2
  %4316 = extractvalue %dx.types.ResRet.f32 %4312, 3
  %4317 = call float @dx.op.dot4.f32(i32 56, float %4313, float %4314, float %4315, float %4316, float %170, float %171, float %172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4318 = call float @dx.op.unary.f32(i32 27, float %4303)  ; Round_ni(value)
  %4319 = call float @dx.op.unary.f32(i32 6, float %4318)  ; FAbs(value)
  %4320 = call float @dx.op.unary.f32(i32 27, float %4310)  ; Round_ni(value)
  %4321 = call float @dx.op.unary.f32(i32 6, float %4320)  ; FAbs(value)
  %4322 = call float @dx.op.unary.f32(i32 6, float %4317)  ; FAbs(value)
  %4323 = call float @dx.op.unary.f32(i32 27, float %4322)  ; Round_ni(value)
  %4324 = fadd fast float %4321, %4319
  %4325 = fadd fast float %4324, %4323
  %4326 = fcmp fast oeq float %4325, 0.000000e+00
  %4327 = call float @dx.op.dot4.f32(i32 56, float %4299, float %4300, float %4301, float %4302, float %4167, float %4168, float %4169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4328 = call float @dx.op.dot4.f32(i32 56, float %4306, float %4307, float %4308, float %4309, float %4167, float %4168, float %4169, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4329 = call float @dx.op.dot4.f32(i32 56, float %4299, float %4300, float %4301, float %4302, float %4170, float %4171, float %4172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4330 = call float @dx.op.dot4.f32(i32 56, float %4306, float %4307, float %4308, float %4309, float %4170, float %4171, float %4172, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4331 = fsub fast float %4327, %4303
  %4332 = fsub fast float %4329, %4303
  %4333 = fsub fast float %4328, %4310
  %4334 = fsub fast float %4330, %4310
  %4335 = call float @dx.op.dot3.f32(i32 55, float %4245, float %4246, float %4247, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 2
  %4338 = fadd fast float %4337, %4335
  %4339 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4340 = extractvalue %dx.types.CBufRet.f32 %4336, 0
  %4341 = fcmp fast ogt float %4339, %4340
  %4342 = and i1 %4326, %4341
  %4343 = and i1 %4297, %4342
  br i1 %4343, label %4368, label %4344

; <label>:4344                                    ; preds = %4676, %4449, %4368, %4214
  %4345 = phi float [ %4216, %4368 ], [ %4452, %4449 ], [ %4452, %4676 ], [ %4216, %4214 ]
  %4346 = phi float [ %4217, %4368 ], [ %4217, %4449 ], [ %4652, %4676 ], [ %4217, %4214 ]
  %4347 = phi float [ %4218, %4368 ], [ %4218, %4449 ], [ %4651, %4676 ], [ %4218, %4214 ]
  %4348 = phi float [ %4219, %4368 ], [ %4219, %4449 ], [ %4649, %4676 ], [ %4219, %4214 ]
  %4349 = phi float [ %4220, %4368 ], [ %4220, %4449 ], [ %4576, %4676 ], [ %4220, %4214 ]
  %4350 = phi float [ %4221, %4368 ], [ %4221, %4449 ], [ %4574, %4676 ], [ %4221, %4214 ]
  %4351 = phi float [ %4222, %4368 ], [ %4222, %4449 ], [ %4619, %4676 ], [ %4222, %4214 ]
  %4352 = phi float [ %4223, %4368 ], [ %4223, %4449 ], [ %4620, %4676 ], [ %4223, %4214 ]
  %4353 = phi float [ %4224, %4368 ], [ %4224, %4449 ], [ %4621, %4676 ], [ %4224, %4214 ]
  %4354 = phi float [ %4225, %4368 ], [ %4225, %4449 ], [ %4686, %4676 ], [ %4225, %4214 ]
  %4355 = phi float [ %4226, %4368 ], [ %4226, %4449 ], [ %4687, %4676 ], [ %4226, %4214 ]
  %4356 = phi float [ %4227, %4368 ], [ %4227, %4449 ], [ %4688, %4676 ], [ %4227, %4214 ]
  %4357 = phi float [ %4228, %4368 ], [ %4228, %4449 ], [ %4555, %4676 ], [ %4228, %4214 ]
  %4358 = phi float [ %4229, %4368 ], [ %4229, %4449 ], [ %4556, %4676 ], [ %4229, %4214 ]
  %4359 = phi float [ %4230, %4368 ], [ %4230, %4449 ], [ %4557, %4676 ], [ %4230, %4214 ]
  %4360 = phi float [ %4231, %4368 ], [ %4231, %4449 ], [ %4629, %4676 ], [ %4231, %4214 ]
  %4361 = phi float [ %4232, %4368 ], [ %4232, %4449 ], [ %4626, %4676 ], [ %4232, %4214 ]
  %4362 = phi float [ %4233, %4368 ], [ %4233, %4449 ], [ %4623, %4676 ], [ %4233, %4214 ]
  %4363 = phi float [ %4234, %4368 ], [ %4234, %4449 ], [ %4572, %4676 ], [ %4234, %4214 ]
  %4364 = phi float [ %4235, %4368 ], [ %4235, %4449 ], [ %4567, %4676 ], [ %4235, %4214 ]
  %4365 = phi float [ %4236, %4368 ], [ %4236, %4449 ], [ %4568, %4676 ], [ %4236, %4214 ]
  %4366 = phi float [ %4237, %4368 ], [ %4237, %4449 ], [ %4569, %4676 ], [ %4237, %4214 ]
  %4367 = icmp eq i32 %4294, %4213
  br i1 %4367, label %4689, label %4214

; <label>:4368                                    ; preds = %4214
  %4369 = extractvalue %dx.types.ResRet.f32 %4264, 3
  %4370 = extractvalue %dx.types.ResRet.f32 %4264, 1
  %4371 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4372 = extractvalue %dx.types.ResRet.f32 %4254, 1
  %4373 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4374 = extractvalue %dx.types.ResRet.i32 %4250, 3
  %4375 = extractvalue %dx.types.ResRet.i32 %4250, 2
  %4376 = add i32 %4374, 0
  %4377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4376, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4379 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4377, %dx.types.Handle %4378, float %4303, float %4310, float undef, float undef, i32 0, i32 0, i32 undef, float %4331, float %4333, float undef, float %4332, float %4334, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = fmul fast float %4380, %4373
  %4382 = fadd fast float %4381, %4372
  %4383 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4384 = fmul fast float %4303, %4259
  %4385 = call float @dx.op.tertiary.f32(i32 46, float %4260, float %4310, float %4384)  ; FMad(a,b,c)
  %4386 = fadd fast float %4385, %4371
  %4387 = fmul fast float %4303, %4261
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4262, float %4310, float %4387)  ; FMad(a,b,c)
  %4389 = fadd fast float %4388, %4370
  %4390 = fmul fast float %4331, %4259
  %4391 = call float @dx.op.tertiary.f32(i32 46, float %4260, float %4333, float %4390)  ; FMad(a,b,c)
  %4392 = fmul fast float %4331, %4261
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4262, float %4333, float %4392)  ; FMad(a,b,c)
  %4394 = fmul fast float %4332, %4259
  %4395 = call float @dx.op.tertiary.f32(i32 46, float %4260, float %4334, float %4394)  ; FMad(a,b,c)
  %4396 = fmul fast float %4332, %4261
  %4397 = call float @dx.op.tertiary.f32(i32 46, float %4262, float %4334, float %4396)  ; FMad(a,b,c)
  %4398 = add i32 %4375, 0
  %4399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4398, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4400 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4399, %dx.types.Handle %4378, float %4386, float %4389, float undef, float undef, i32 0, i32 0, i32 undef, float %4391, float %4393, float undef, float %4395, float %4397, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = and i32 %4295, 1024
  %4403 = icmp ne i32 %4402, 0
  %4404 = fcmp fast ogt float %4401, 0x3FE0101020000000
  %4405 = uitofp i1 %4404 to float
  %4406 = select i1 %4403, float %4405, float %4401
  %4407 = and i32 %4295, 8192
  %4408 = icmp ne i32 %4407, 0
  %4409 = select i1 %4408, float %4369, float 1.000000e+00
  %4410 = fmul fast float %4303, 2.000000e+00
  %4411 = fadd fast float %4410, -1.000000e+00
  %4412 = call float @dx.op.unary.f32(i32 6, float %4411)  ; FAbs(value)
  %4413 = fmul fast float %4412, %4292
  %4414 = fsub fast float %4413, %4292
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fmul fast float %4310, 2.000000e+00
  %4417 = fadd fast float %4416, -1.000000e+00
  %4418 = call float @dx.op.unary.f32(i32 6, float %4417)  ; FAbs(value)
  %4419 = fmul fast float %4418, %4293
  %4420 = fsub fast float %4419, %4293
  %4421 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4422 = fmul fast float %4322, %4255
  %4423 = fsub fast float %4422, %4255
  %4424 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4425 = fmul fast float %4383, %4409
  %4426 = fmul fast float %4425, %4380
  %4427 = fmul fast float %4426, %4415
  %4428 = fmul fast float %4427, %4406
  %4429 = fmul fast float %4428, %4421
  %4430 = fmul fast float %4429, %4424
  %4431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.f32 %4431, 1
  %4433 = extractvalue %dx.types.CBufRet.f32 %4431, 0
  %4434 = fsub fast float %4339, %4433
  %4435 = fmul fast float %4434, %4432
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = fmul fast float %4430, %4256
  %4438 = fadd fast float %4430, %4256
  %4439 = fmul fast float %4438, %4265
  %4440 = fsub fast float %4439, %4265
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = and i32 %4295, 128
  %4443 = icmp ne i32 %4442, 0
  %4444 = select i1 %4443, float %4441, float %4437
  %4445 = fmul fast float %4444, %4436
  %4446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4446, 0
  %4448 = fcmp fast ugt float %4445, %4447
  br i1 %4448, label %4449, label %4344

; <label>:4449                                    ; preds = %4368
  %4450 = select i1 %4408, float %4445, float 0.000000e+00
  %4451 = fadd fast float %4450, %4216
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  br i1 %4408, label %4344, label %4453

; <label>:4453                                    ; preds = %4449
  %4454 = and i32 %4295, 4
  %4455 = and i32 %4295, 8
  %4456 = add i32 %4251, 0
  %4457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4456, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4459 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4457, %dx.types.Handle %4458, float %4386, float %4389, float undef, float undef, i32 0, i32 0, i32 undef, float %4391, float %4393, float undef, float %4395, float %4397, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4460 = extractvalue %dx.types.ResRet.f32 %4459, 0
  %4461 = extractvalue %dx.types.ResRet.f32 %4459, 1
  %4462 = extractvalue %dx.types.ResRet.f32 %4459, 2
  %4463 = extractvalue %dx.types.ResRet.f32 %4459, 3
  %4464 = bitcast float %4277 to i32
  %4465 = and i32 %4464, 255
  %4466 = uitofp i32 %4465 to float
  %4467 = lshr i32 %4464, 8
  %4468 = and i32 %4467, 255
  %4469 = uitofp i32 %4468 to float
  %4470 = fmul fast float %4463, %4466
  %4471 = fadd fast float %4470, %4469
  %4472 = fmul fast float %4471, 0x3F70101000000000
  %4473 = add i32 %4252, 0
  %4474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4475 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4474, %dx.types.Handle %4458, float %4386, float %4389, float undef, float undef, i32 0, i32 0, i32 undef, float %4391, float %4393, float undef, float %4395, float %4397, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4476 = extractvalue %dx.types.ResRet.f32 %4475, 0
  %4477 = extractvalue %dx.types.ResRet.f32 %4475, 1
  %4478 = extractvalue %dx.types.ResRet.f32 %4475, 2
  %4479 = extractvalue %dx.types.ResRet.f32 %4475, 3
  %4480 = bitcast float %4271 to i32
  %4481 = and i32 %4480, 255
  %4482 = uitofp i32 %4481 to float
  %4483 = lshr i32 %4480, 8
  %4484 = and i32 %4483, 255
  %4485 = uitofp i32 %4484 to float
  %4486 = lshr i32 %4480, 16
  %4487 = and i32 %4486, 255
  %4488 = uitofp i32 %4487 to float
  %4489 = fmul fast float %4488, 0x3F70101000000000
  %4490 = fmul fast float %4476, %4482
  %4491 = fadd fast float %4490, %4485
  %4492 = fmul fast float %4491, 0x3F70101000000000
  %4493 = fadd fast float %4477, -5.000000e-01
  %4494 = fadd fast float %4479, -5.000000e-01
  %4495 = fmul fast float %4493, %4489
  %4496 = fmul fast float %4494, %4489
  %4497 = fadd fast float %4495, 5.000000e-01
  %4498 = fadd fast float %4496, 5.000000e-01
  %4499 = fmul fast float %4460, %4280
  %4500 = fmul fast float %4461, %4281
  %4501 = fmul fast float %4462, %4282
  %4502 = fmul fast float %4497, 2.000000e+00
  %4503 = fadd fast float %4502, -1.000000e+00
  %4504 = fmul fast float %4498, 2.000000e+00
  %4505 = fadd fast float %4504, -1.000000e+00
  %4506 = fadd fast float %4503, %4505
  %4507 = fmul fast float %4506, 5.000000e-01
  %4508 = fsub fast float %4503, %4505
  %4509 = fmul fast float %4508, 5.000000e-01
  %4510 = call float @dx.op.unary.f32(i32 6, float %4507)  ; FAbs(value)
  %4511 = fsub fast float 1.000000e+00, %4510
  %4512 = call float @dx.op.unary.f32(i32 6, float %4509)  ; FAbs(value)
  %4513 = fsub fast float %4511, %4512
  %4514 = call float @dx.op.dot3.f32(i32 55, float %4507, float %4509, float %4513, float %4507, float %4509, float %4513)  ; Dot3(ax,ay,az,bx,by,bz)
  %4515 = call float @dx.op.unary.f32(i32 25, float %4514)  ; Rsqrt(value)
  %4516 = fmul fast float %4507, %4515
  %4517 = fmul fast float %4509, %4515
  %4518 = fmul fast float %4515, %4513
  %4519 = fmul fast float %4518, %4245
  %4520 = fmul fast float %4518, %4246
  %4521 = fmul fast float %4518, %4247
  %4522 = fmul fast float %4516, %4268
  %4523 = fmul fast float %4516, %4269
  %4524 = fmul fast float %4516, %4270
  %4525 = fadd fast float %4522, %4519
  %4526 = fadd fast float %4523, %4520
  %4527 = fadd fast float %4524, %4521
  %4528 = fmul fast float %4517, %4274
  %4529 = fmul fast float %4517, %4275
  %4530 = fmul fast float %4517, %4276
  %4531 = fadd fast float %4525, %4528
  %4532 = fadd fast float %4526, %4529
  %4533 = fadd fast float %4527, %4530
  %4534 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call float @dx.op.unary.f32(i32 25, float %4534)  ; Rsqrt(value)
  %4536 = fmul fast float %4531, %4535
  %4537 = fmul fast float %4532, %4535
  %4538 = fmul fast float %4533, %4535
  %4539 = icmp ne i32 %4455, 0
  %4540 = select i1 %4539, float 1.000000e+00, float 0.000000e+00
  %4541 = fmul fast float %4445, %4540
  %4542 = and i32 %4295, 1
  %4543 = icmp eq i32 %4542, 0
  br i1 %4543, label %4544, label %4548

; <label>:4544                                    ; preds = %4453
  %4545 = fsub fast float %4536, %4228
  %4546 = fsub fast float %4537, %4229
  %4547 = fsub fast float %4538, %4230
  br label %4548

; <label>:4548                                    ; preds = %4544, %4453
  %4549 = phi float [ %4545, %4544 ], [ %4536, %4453 ]
  %4550 = phi float [ %4546, %4544 ], [ %4537, %4453 ]
  %4551 = phi float [ %4547, %4544 ], [ %4538, %4453 ]
  %4552 = fmul float %4551, %4541
  %4553 = fmul float %4550, %4541
  %4554 = fmul float %4549, %4541
  %4555 = fadd fast float %4554, %4228
  %4556 = fadd fast float %4553, %4229
  %4557 = fadd fast float %4552, %4230
  %4558 = icmp ne i32 %4454, 0
  %4559 = select i1 %4558, float 1.000000e+00, float 0.000000e+00
  %4560 = fmul fast float %4445, %4559
  %4561 = fsub fast float %4499, %4235
  %4562 = fsub fast float %4500, %4236
  %4563 = fsub fast float %4501, %4237
  %4564 = fmul fast float %4561, %4560
  %4565 = fmul fast float %4562, %4560
  %4566 = fmul fast float %4563, %4560
  %4567 = fadd fast float %4564, %4235
  %4568 = fadd fast float %4565, %4236
  %4569 = fadd fast float %4566, %4237
  %4570 = fsub fast float %4472, %4234
  %4571 = fmul fast float %4570, %4560
  %4572 = fadd fast float %4571, %4234
  %4573 = fmul fast float %4560, %4221
  %4574 = fsub fast float %4221, %4573
  %4575 = fmul fast float %4560, %4220
  %4576 = fsub fast float %4220, %4575
  %4577 = bitcast float %4289 to i32
  %4578 = lshr i32 %4577, 16
  %4579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4578)  ; LegacyF16ToF32(value)
  %4580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.i32 %4580, 0
  %4582 = and i32 %4581, 1
  %4583 = icmp eq i32 %4582, 0
  br i1 %4583, label %4584, label %4609

; <label>:4584                                    ; preds = %4548
  %4585 = fadd fast float %4472, 0xBFB99999A0000000
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = fmul fast float %4586, 0x3FF1C71C80000000
  %4588 = fsub fast float 1.000000e+00, %4587
  %4589 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4590 = fmul fast float %4589, %4499
  %4591 = fmul fast float %4589, %4500
  %4592 = fmul fast float %4589, %4501
  %4593 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4595 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4596 = call float @dx.op.binary.f32(i32 35, float %4594, float %4595)  ; FMax(a,b)
  %4597 = call float @dx.op.binary.f32(i32 35, float %4593, float %4596)  ; FMax(a,b)
  %4598 = fcmp fast ogt float %4597, 0.000000e+00
  %4599 = bitcast float %4597 to i32
  %4600 = sub nsw i32 2129859010, %4599
  %4601 = bitcast i32 %4600 to float
  %4602 = select i1 %4598, float %4601, float 0.000000e+00
  %4603 = fmul fast float %4593, %4579
  %4604 = fmul fast float %4594, %4579
  %4605 = fmul fast float %4595, %4579
  %4606 = fmul fast float %4603, %4602
  %4607 = fmul fast float %4604, %4602
  %4608 = fmul fast float %4605, %4602
  br label %4609

; <label>:4609                                    ; preds = %4584, %4548
  %4610 = phi float [ %4579, %4548 ], [ %4606, %4584 ]
  %4611 = phi float [ %4579, %4548 ], [ %4607, %4584 ]
  %4612 = phi float [ %4579, %4548 ], [ %4608, %4584 ]
  %4613 = fsub fast float %4610, %4222
  %4614 = fsub fast float %4611, %4223
  %4615 = fsub fast float %4612, %4224
  %4616 = fmul fast float %4613, %4560
  %4617 = fmul fast float %4614, %4560
  %4618 = fmul fast float %4615, %4560
  %4619 = fadd fast float %4616, %4222
  %4620 = fadd fast float %4617, %4223
  %4621 = fadd fast float %4618, %4224
  %4622 = fadd fast float %4445, %4233
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = fsub fast float %4492, %4232
  %4625 = fmul fast float %4624, %4541
  %4626 = fadd fast float %4625, %4232
  %4627 = fsub fast float %4478, %4231
  %4628 = fmul fast float %4627, %4541
  %4629 = fadd fast float %4628, %4231
  %4630 = call float @dx.op.dot3.f32(i32 55, float %4499, float %4500, float %4501, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4634 = fmul fast float %4633, %4630
  %4635 = fadd fast float %4634, %4632
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = bitcast float %4283 to i32
  %4638 = and i32 %4637, 65535
  %4639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4638)  ; LegacyF16ToF32(value)
  %4640 = lshr i32 %4637, 16
  %4641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4640)  ; LegacyF16ToF32(value)
  %4642 = fcmp fast oge float %4639, 0.000000e+00
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4645 = select i1 %4642, float %4639, float %4644
  %4646 = fadd fast float %4645, %4641
  %4647 = fsub fast float %4636, %4219
  %4648 = fmul fast float %4647, %4445
  %4649 = fadd fast float %4648, %4219
  %4650 = fmul fast float %4646, %4445
  %4651 = call float @dx.op.binary.f32(i32 35, float %4218, float %4650)  ; FMax(a,b)
  %4652 = call float @dx.op.binary.f32(i32 35, float %4217, float %4445)  ; FMax(a,b)
  %4653 = and i32 %4295, 16
  %4654 = icmp eq i32 %4653, 0
  br i1 %4654, label %4676, label %4655

; <label>:4655                                    ; preds = %4609
  %4656 = add i32 %4286, 0
  %4657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4656, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4658 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4657, %dx.types.Handle %4458, float %4386, float %4389, float undef, float undef, i32 0, i32 0, i32 undef, float %4391, float %4393, float undef, float %4395, float %4397, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4659 = extractvalue %dx.types.ResRet.f32 %4658, 0
  %4660 = extractvalue %dx.types.ResRet.f32 %4658, 1
  %4661 = extractvalue %dx.types.ResRet.f32 %4658, 2
  %4662 = and i32 %4577, 65535
  %4663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4662)  ; LegacyF16ToF32(value)
  %4664 = fmul fast float %4659, %4280
  %4665 = fmul fast float %4660, %4281
  %4666 = fmul fast float %4661, %4282
  %4667 = and i32 %4295, 16384
  %4668 = icmp ne i32 %4667, 0
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 0
  %4671 = select i1 %4668, float %4670, float 1.000000e+00
  %4672 = fmul fast float %4671, %4663
  %4673 = fmul fast float %4664, %4672
  %4674 = fmul fast float %4665, %4672
  %4675 = fmul fast float %4666, %4672
  br label %4676

; <label>:4676                                    ; preds = %4655, %4609
  %4677 = phi float [ %4673, %4655 ], [ 0.000000e+00, %4609 ]
  %4678 = phi float [ %4674, %4655 ], [ 0.000000e+00, %4609 ]
  %4679 = phi float [ %4675, %4655 ], [ 0.000000e+00, %4609 ]
  %4680 = fsub fast float %4677, %4225
  %4681 = fsub fast float %4678, %4226
  %4682 = fsub fast float %4679, %4227
  %4683 = fmul fast float %4680, %4445
  %4684 = fmul fast float %4681, %4445
  %4685 = fmul fast float %4682, %4445
  %4686 = fadd fast float %4683, %4225
  %4687 = fadd fast float %4684, %4226
  %4688 = fadd fast float %4685, %4227
  br label %4344

; <label>:4689                                    ; preds = %4344
  br label %4690

; <label>:4690                                    ; preds = %4689, %4160
  %4691 = phi float [ 0.000000e+00, %4160 ], [ %4345, %4689 ]
  %4692 = phi float [ %1212, %4160 ], [ %4346, %4689 ]
  %4693 = phi float [ %4129, %4160 ], [ %4347, %4689 ]
  %4694 = phi float [ %4127, %4160 ], [ %4348, %4689 ]
  %4695 = phi float [ %4126, %4160 ], [ %4349, %4689 ]
  %4696 = phi float [ 0.000000e+00, %4160 ], [ %4350, %4689 ]
  %4697 = phi float [ %4119, %4160 ], [ %4351, %4689 ]
  %4698 = phi float [ %4120, %4160 ], [ %4352, %4689 ]
  %4699 = phi float [ %4121, %4160 ], [ %4353, %4689 ]
  %4700 = phi float [ %4113, %4160 ], [ %4354, %4689 ]
  %4701 = phi float [ %4114, %4160 ], [ %4355, %4689 ]
  %4702 = phi float [ %4115, %4160 ], [ %4356, %4689 ]
  %4703 = phi float [ %4155, %4160 ], [ %4357, %4689 ]
  %4704 = phi float [ %4156, %4160 ], [ %4358, %4689 ]
  %4705 = phi float [ %4157, %4160 ], [ %4359, %4689 ]
  %4706 = phi float [ %4124, %4160 ], [ %4360, %4689 ]
  %4707 = phi float [ %4123, %4160 ], [ %4361, %4689 ]
  %4708 = phi float [ 0.000000e+00, %4160 ], [ %4362, %4689 ]
  %4709 = phi float [ %4122, %4160 ], [ %4363, %4689 ]
  %4710 = phi float [ %4116, %4160 ], [ %4364, %4689 ]
  %4711 = phi float [ %4117, %4160 ], [ %4365, %4689 ]
  %4712 = phi float [ %4118, %4160 ], [ %4366, %4689 ]
  %4713 = call float @dx.op.dot3.f32(i32 55, float %4703, float %4704, float %4705, float %4703, float %4704, float %4705)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = call float @dx.op.unary.f32(i32 25, float %4713)  ; Rsqrt(value)
  %4715 = fmul fast float %4714, %4703
  %4716 = fmul fast float %4714, %4704
  %4717 = fmul fast float %4714, %4705
  %4718 = fadd fast float %4708, %1212
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = call float @dx.op.dot3.f32(i32 55, float %4715, float %4716, float %4717, float %4715, float %4716, float %4717)  ; Dot3(ax,ay,az,bx,by,bz)
  %4721 = call float @dx.op.unary.f32(i32 25, float %4720)  ; Rsqrt(value)
  %4722 = fmul fast float %4721, %4715
  %4723 = fmul fast float %4721, %4716
  %4724 = fmul fast float %4721, %4717
  br label %4725

; <label>:4725                                    ; preds = %4690, %4110
  %4726 = phi float [ %4722, %4690 ], [ %4155, %4110 ]
  %4727 = phi float [ %4723, %4690 ], [ %4156, %4110 ]
  %4728 = phi float [ %4724, %4690 ], [ %4157, %4110 ]
  %4729 = phi float [ %4700, %4690 ], [ %4113, %4110 ]
  %4730 = phi float [ %4701, %4690 ], [ %4114, %4110 ]
  %4731 = phi float [ %4702, %4690 ], [ %4115, %4110 ]
  %4732 = phi float [ %4710, %4690 ], [ %4116, %4110 ]
  %4733 = phi float [ %4711, %4690 ], [ %4117, %4110 ]
  %4734 = phi float [ %4712, %4690 ], [ %4118, %4110 ]
  %4735 = phi float [ %4697, %4690 ], [ %4119, %4110 ]
  %4736 = phi float [ %4698, %4690 ], [ %4120, %4110 ]
  %4737 = phi float [ %4699, %4690 ], [ %4121, %4110 ]
  %4738 = phi float [ %4709, %4690 ], [ %4122, %4110 ]
  %4739 = phi float [ %4719, %4690 ], [ %1212, %4110 ]
  %4740 = phi float [ %4707, %4690 ], [ %4123, %4110 ]
  %4741 = phi float [ %4706, %4690 ], [ %4124, %4110 ]
  %4742 = phi float [ %4696, %4690 ], [ 0.000000e+00, %4110 ]
  %4743 = phi float [ %4695, %4690 ], [ %4126, %4110 ]
  %4744 = phi float [ %4691, %4690 ], [ 0.000000e+00, %4110 ]
  %4745 = phi float [ %4693, %4690 ], [ %4129, %4110 ]
  %4746 = phi float [ %4692, %4690 ], [ %1212, %4110 ]
  %4747 = phi float [ %4694, %4690 ], [ %4127, %4110 ]
  %4748 = fadd fast float %4738, 0xBFB99999A0000000
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4749, 0x3FF1C71C80000000
  %4751 = call float @dx.op.binary.f32(i32 36, float %4738, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4752 = fsub fast float 1.000000e+00, %4750
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = fmul fast float %4753, %4732
  %4755 = fmul fast float %4753, %4733
  %4756 = fmul fast float %4753, %4734
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4759 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4760 = fmul fast float %4750, %4732
  %4761 = fmul fast float %4750, %4733
  %4762 = fmul fast float %4750, %4734
  %4763 = fadd fast float %4760, %4751
  %4764 = fadd fast float %4761, %4751
  %4765 = fadd fast float %4762, %4751
  %4766 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4767 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4768 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4769 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4771 = extractvalue %dx.types.ResRet.i32 %4770, 0
  %4772 = and i32 %4771, 1
  %4773 = icmp eq i32 %4772, 0
  br i1 %4773, label %4788, label %4774

; <label>:4774                                    ; preds = %4725
  %4775 = call float @dx.op.binary.f32(i32 35, float %4758, float %4759)  ; FMax(a,b)
  %4776 = call float @dx.op.binary.f32(i32 35, float %4757, float %4775)  ; FMax(a,b)
  %4777 = fcmp fast ogt float %4776, 0.000000e+00
  %4778 = bitcast float %4776 to i32
  %4779 = sub nsw i32 2129859010, %4778
  %4780 = bitcast i32 %4779 to float
  %4781 = select i1 %4777, float %4780, float 0.000000e+00
  %4782 = fmul fast float %4757, %4735
  %4783 = fmul fast float %4758, %4736
  %4784 = fmul fast float %4759, %4737
  %4785 = fmul fast float %4782, %4781
  %4786 = fmul fast float %4783, %4781
  %4787 = fmul fast float %4784, %4781
  br label %4788

; <label>:4788                                    ; preds = %4774, %4725
  %4789 = phi float [ %4785, %4774 ], [ %4735, %4725 ]
  %4790 = phi float [ %4786, %4774 ], [ %4736, %4725 ]
  %4791 = phi float [ %4787, %4774 ], [ %4737, %4725 ]
  %4792 = fadd fast float %4757, 0xBFD51EB860000000
  %4793 = fadd fast float %4758, 0xBFD51EB860000000
  %4794 = fadd fast float %4759, 0xBFD51EB860000000
  %4795 = fmul fast float %4792, %4792
  %4796 = fmul fast float %4793, %4793
  %4797 = fmul fast float %4794, %4794
  %4798 = fmul fast float %4795, %4795
  %4799 = fmul fast float %4798, 1.000000e+02
  %4800 = fmul fast float %4796, %4796
  %4801 = fmul fast float %4800, 1.000000e+02
  %4802 = fmul fast float %4797, %4797
  %4803 = fmul fast float %4802, 1.000000e+02
  %4804 = fadd fast float %4799, 3.500000e+00
  %4805 = fadd fast float %4801, 3.500000e+00
  %4806 = fadd fast float %4803, 3.500000e+00
  %4807 = call float @dx.op.binary.f32(i32 35, float %4789, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4808 = call float @dx.op.binary.f32(i32 35, float %4790, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4809 = call float @dx.op.binary.f32(i32 35, float %4791, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4810 = fdiv fast float %4804, %4807
  %4811 = fdiv fast float %4805, %4808
  %4812 = fdiv fast float %4806, %4809
  %4813 = fmul fast float %4125, 0xBFF7154760000000
  %4814 = fmul fast float %4813, %4810
  %4815 = call float @dx.op.unary.f32(i32 21, float %4814)  ; Exp(value)
  %4816 = fmul fast float %4815, 2.500000e-01
  %4817 = fmul fast float %4125, 0xBFDEC709E0000000
  %4818 = fmul fast float %4817, %4810
  %4819 = call float @dx.op.unary.f32(i32 21, float %4818)  ; Exp(value)
  %4820 = fmul fast float %4819, 7.500000e-01
  %4821 = fmul fast float %4813, %4811
  %4822 = call float @dx.op.unary.f32(i32 21, float %4821)  ; Exp(value)
  %4823 = fmul fast float %4822, 2.500000e-01
  %4824 = fmul fast float %4817, %4811
  %4825 = call float @dx.op.unary.f32(i32 21, float %4824)  ; Exp(value)
  %4826 = fmul fast float %4825, 7.500000e-01
  %4827 = fmul fast float %4813, %4812
  %4828 = call float @dx.op.unary.f32(i32 21, float %4827)  ; Exp(value)
  %4829 = fmul fast float %4828, 2.500000e-01
  %4830 = fmul fast float %4817, %4812
  %4831 = call float @dx.op.unary.f32(i32 21, float %4830)  ; Exp(value)
  %4832 = fmul fast float %4831, 7.500000e-01
  %4833 = fadd fast float %4816, %4820
  %4834 = fadd fast float %4823, %4826
  %4835 = fadd fast float %4829, %4832
  %4836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.i32 %4836, 3
  %4838 = and i32 %4837, 8
  %4839 = icmp ne i32 %4838, 0
  %4840 = call float @dx.op.binary.f32(i32 35, float %4757, float %4732)  ; FMax(a,b)
  %4841 = call float @dx.op.binary.f32(i32 35, float %4758, float %4732)  ; FMax(a,b)
  %4842 = call float @dx.op.binary.f32(i32 35, float %4759, float %4732)  ; FMax(a,b)
  %4843 = call float @dx.op.dot3.f32(i32 55, float %4757, float %4758, float %4759, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4844 = select i1 %232, float %4732, float %4757
  %4845 = select i1 %232, float %4843, float %4758
  %4846 = select i1 %232, float 1.000000e+00, float %4759
  %4847 = select i1 %4839, float %4840, float %4844
  %4848 = select i1 %4839, float %4841, float %4845
  %4849 = select i1 %4839, float %4842, float %4846
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4853 = extractvalue %dx.types.CBufRet.f32 %4850, 2
  %4854 = fadd fast float %4851, %170
  %4855 = fadd fast float %4852, %171
  %4856 = fadd fast float %4853, %172
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.CBufRet.f32 %4857, 1
  %4860 = fsub fast float %4854, %4858
  %4861 = fsub fast float %4855, %4859
  %4862 = fmul fast float %4860, %4860
  %4863 = fmul fast float %4861, %4861
  %4864 = fadd fast float %4862, %4863
  %4865 = call float @dx.op.unary.f32(i32 24, float %4864)  ; Sqrt(value)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4857, 2
  %4867 = fcmp fast olt float %4865, %4866
  br i1 %4867, label %4868, label %4935

; <label>:4868                                    ; preds = %4788
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4875 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4876 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4873, 1
  %4878 = extractvalue %dx.types.CBufRet.f32 %4869, 3
  %4879 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4880 = extractvalue %dx.types.CBufRet.f32 %4873, 3
  %4881 = fadd fast float %4878, %4854
  %4882 = fadd fast float %4879, %4855
  %4883 = fadd fast float %4880, %4856
  %4884 = fmul fast float %4881, %4870
  %4885 = call float @dx.op.tertiary.f32(i32 46, float %4882, float %4872, float %4884)  ; FMad(a,b,c)
  %4886 = call float @dx.op.tertiary.f32(i32 46, float %4883, float %4874, float %4885)  ; FMad(a,b,c)
  %4887 = fmul fast float %4881, %4875
  %4888 = call float @dx.op.tertiary.f32(i32 46, float %4882, float %4876, float %4887)  ; FMad(a,b,c)
  %4889 = call float @dx.op.tertiary.f32(i32 46, float %4883, float %4877, float %4888)  ; FMad(a,b,c)
  %4890 = fsub fast float %4886, %4878
  %4891 = fsub fast float %4889, %4879
  %4892 = fsub fast float %4890, %4858
  %4893 = fadd fast float %4892, %4866
  %4894 = fsub fast float %4891, %4859
  %4895 = fadd fast float %4894, %4866
  %4896 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4897 = fmul fast float %4893, %4896
  %4898 = fmul fast float %4895, %4896
  %4899 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4900 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4901 = fsub fast float 1.000000e+00, %4899
  %4902 = fsub fast float 1.000000e+00, %4900
  %4903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %54, float %4901, float %4902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4904 = extractvalue %dx.types.ResRet.f32 %4903, 0
  %4905 = fcmp fast ugt float %4904, 0.000000e+00
  br i1 %4905, label %4906, label %5209

; <label>:4906                                    ; preds = %4868
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 2
  %4909 = fmul fast float %4908, %4904
  %4910 = extractvalue %dx.types.CBufRet.f32 %4907, 3
  %4911 = fadd fast float %4910, %4909
  %4912 = extractvalue %dx.types.CBufRet.f32 %4873, 2
  %4913 = fadd fast float %4911, %4880
  %4914 = fmul fast float %4886, %4874
  %4915 = call float @dx.op.tertiary.f32(i32 46, float %4889, float %4877, float %4914)  ; FMad(a,b,c)
  %4916 = call float @dx.op.tertiary.f32(i32 46, float %4913, float %4912, float %4915)  ; FMad(a,b,c)
  %4917 = fsub fast float %4916, %4880
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 2
  %4920 = fsub fast float %4917, %4919
  %4921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %54, float %4901, float %4902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4922 = extractvalue %dx.types.ResRet.f32 %4921, 0
  %4923 = extractvalue %dx.types.ResRet.f32 %4921, 1
  %4924 = extractvalue %dx.types.ResRet.f32 %4921, 2
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %54, float %4901, float %4902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 0
  %4927 = extractvalue %dx.types.ResRet.f32 %4925, 1
  %4928 = extractvalue %dx.types.ResRet.f32 %4925, 2
  %4929 = fadd fast float %4926, %4922
  %4930 = fmul fast float %4929, 0x3F847AE140000000
  %4931 = fadd fast float %4927, %4923
  %4932 = fmul fast float %4931, 0x3F847AE140000000
  %4933 = fadd fast float %4928, %4924
  %4934 = fmul fast float %4933, 0x3F847AE140000000
  br label %5209

; <label>:4935                                    ; preds = %4788
  %4936 = and i32 %208, 1
  %4937 = icmp eq i32 %4936, 0
  br i1 %4937, label %5209, label %4938

; <label>:4938                                    ; preds = %4935
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 0
  %4941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4942 = extractvalue %dx.types.CBufRet.f32 %4941, 0
  %4943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4944 = extractvalue %dx.types.CBufRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.CBufRet.f32 %4939, 1
  %4946 = extractvalue %dx.types.CBufRet.f32 %4941, 1
  %4947 = extractvalue %dx.types.CBufRet.f32 %4943, 1
  %4948 = extractvalue %dx.types.CBufRet.f32 %4939, 3
  %4949 = extractvalue %dx.types.CBufRet.f32 %4941, 3
  %4950 = extractvalue %dx.types.CBufRet.f32 %4943, 3
  %4951 = fadd fast float %4948, %4854
  %4952 = fadd fast float %4949, %4855
  %4953 = fadd fast float %4950, %4856
  %4954 = fmul fast float %4951, %4940
  %4955 = call float @dx.op.tertiary.f32(i32 46, float %4952, float %4942, float %4954)  ; FMad(a,b,c)
  %4956 = call float @dx.op.tertiary.f32(i32 46, float %4953, float %4944, float %4955)  ; FMad(a,b,c)
  %4957 = fmul fast float %4951, %4945
  %4958 = call float @dx.op.tertiary.f32(i32 46, float %4952, float %4946, float %4957)  ; FMad(a,b,c)
  %4959 = call float @dx.op.tertiary.f32(i32 46, float %4953, float %4947, float %4958)  ; FMad(a,b,c)
  %4960 = fsub fast float %4956, %4948
  %4961 = fsub fast float %4959, %4949
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.CBufRet.f32 %4962, 1
  %4965 = extractvalue %dx.types.CBufRet.f32 %4962, 2
  %4966 = extractvalue %dx.types.CBufRet.f32 %4962, 3
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 3
  %4969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.i32 %4969, 0
  %4971 = extractvalue %dx.types.CBufRet.i32 %4969, 1
  %4972 = udiv i32 %4971, %4970
  %4973 = fsub fast float %4960, %4963
  %4974 = fsub fast float %4961, %4964
  %4975 = call float @dx.op.binary.f32(i32 35, float %4973, float 0.000000e+00)  ; FMax(a,b)
  %4976 = call float @dx.op.binary.f32(i32 35, float %4974, float 0.000000e+00)  ; FMax(a,b)
  %4977 = call float @dx.op.binary.f32(i32 36, float %4975, float %4965)  ; FMin(a,b)
  %4978 = call float @dx.op.binary.f32(i32 36, float %4976, float %4966)  ; FMin(a,b)
  %4979 = add i32 %4970, -1
  %4980 = add i32 %4972, -1
  %4981 = fmul fast float %4977, %4968
  %4982 = fmul fast float %4978, %4968
  %4983 = fptoui float %4981 to i32
  %4984 = fptoui float %4982 to i32
  %4985 = call i32 @dx.op.binary.i32(i32 40, i32 %4983, i32 %4979)  ; UMin(a,b)
  %4986 = call i32 @dx.op.binary.i32(i32 40, i32 %4984, i32 %4980)  ; UMin(a,b)
  %4987 = mul i32 %4986, %4970
  %4988 = add i32 %4987, %4985
  %4989 = shl i32 %4988, 2
  %4990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4989, i32 undef)  ; BufferLoad(srv,index,wot)
  %4991 = extractvalue %dx.types.ResRet.i32 %4990, 0
  %4992 = icmp eq i32 %4991, -1
  br i1 %4992, label %5209, label %4993

; <label>:4993                                    ; preds = %4938
  %4994 = mul i32 %4991, 148
  %4995 = add i32 %4994, 4
  %4996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4995, i32 undef)  ; BufferLoad(srv,index,wot)
  %4997 = extractvalue %dx.types.ResRet.f32 %4996, 0
  %4998 = add i32 %4994, 8
  %4999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4998, i32 undef)  ; BufferLoad(srv,index,wot)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = add i32 %4994, 36
  %5002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5001, i32 undef)  ; BufferLoad(srv,index,wot)
  %5003 = extractvalue %dx.types.ResRet.f32 %5002, 0
  %5004 = add i32 %4994, 60
  %5005 = add i32 %4994, 92
  %5006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5005, i32 undef)  ; BufferLoad(srv,index,wot)
  %5007 = extractvalue %dx.types.ResRet.i32 %5006, 0
  %5008 = add i32 %4994, 116
  %5009 = fsub fast float %4960, %4997
  %5010 = fsub fast float %4961, %5000
  %5011 = fmul fast float %4968, %5009
  %5012 = fmul fast float %4968, %5010
  %5013 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5014 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5015 = fsub fast float 1.000000e+00, %5014
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5018 = call float @dx.op.unary.f32(i32 83, float %5013)  ; DerivCoarseX(value)
  %5019 = call float @dx.op.unary.f32(i32 83, float %5015)  ; DerivCoarseX(value)
  %5020 = call float @dx.op.unary.f32(i32 84, float %5013)  ; DerivCoarseY(value)
  %5021 = call float @dx.op.unary.f32(i32 84, float %5015)  ; DerivCoarseY(value)
  %5022 = fmul fast float %5018, %5017
  %5023 = fmul fast float %5019, %5017
  %5024 = fmul fast float %5020, %5017
  %5025 = fmul fast float %5021, %5017
  %5026 = call float @dx.op.dot2.f32(i32 54, float %5024, float %5025, float %5024, float %5025)  ; Dot2(ax,ay,bx,by)
  %5027 = call float @dx.op.dot2.f32(i32 54, float %5022, float %5023, float %5022, float %5023)  ; Dot2(ax,ay,bx,by)
  %5028 = call float @dx.op.binary.f32(i32 35, float %5027, float %5026)  ; FMax(a,b)
  %5029 = call float @dx.op.unary.f32(i32 23, float %5028)  ; Log(value)
  %5030 = fmul fast float %5029, 5.000000e-01
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 1
  %5033 = fadd fast float %5032, %5030
  %5034 = call float @dx.op.binary.f32(i32 35, float %5033, float 0.000000e+00)  ; FMax(a,b)
  %5035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5036 = extractvalue %dx.types.CBufRet.f32 %5035, 3
  %5037 = fadd fast float %5036, %5034
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 3
  %5040 = fadd fast float %5037, %5039
  %5041 = add i32 %5007, 0
  %5042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5041, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5043 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5042, i32 0)  ; GetDimensions(handle,mipLevel)
  %5044 = extractvalue %dx.types.Dimensions %5043, 0
  %5045 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5044)  ; FirstbitLo(value)
  %5046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = extractvalue %dx.types.CBufRet.i32 %5046, 1
  %5048 = sub nsw i32 %5047, %5045
  %5049 = sitofp i32 %5048 to float
  %5050 = fsub fast float %5040, %5049
  %5051 = call float @dx.op.binary.f32(i32 35, float %5050, float 0.000000e+00)  ; FMax(a,b)
  %5052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5042, %dx.types.Handle %52, float %5013, float %5015, float %5003, float undef, i32 0, i32 0, i32 undef, float %5051)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = fcmp ule float %5053, 0x3FE0101020000000
  %5055 = extractvalue %dx.types.CBufRet.i32 %5046, 0
  %5056 = and i32 %5055, 128
  %5057 = icmp ne i32 %5056, 0
  %5058 = and i1 %5054, %5057
  br i1 %5058, label %5209, label %5059

; <label>:5059                                    ; preds = %4993
  %5060 = add i32 %4994, 20
  %5061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5060, i32 undef)  ; BufferLoad(srv,index,wot)
  %5062 = extractvalue %dx.types.ResRet.f32 %5061, 0
  %5063 = add i32 %4994, 24
  %5064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5063, i32 undef)  ; BufferLoad(srv,index,wot)
  %5065 = extractvalue %dx.types.ResRet.f32 %5064, 0
  %5066 = add i32 %4994, 40
  %5067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5066, i32 undef)  ; BufferLoad(srv,index,wot)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 0
  %5069 = add i32 %4994, 96
  %5070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5069, i32 undef)  ; BufferLoad(srv,index,wot)
  %5071 = extractvalue %dx.types.ResRet.i32 %5070, 0
  %5072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5073 = extractvalue %dx.types.CBufRet.f32 %5072, 2
  %5074 = fmul fast float %5073, %5013
  %5075 = fmul fast float %5073, %5015
  %5076 = extractvalue %dx.types.CBufRet.f32 %5072, 3
  %5077 = fadd fast float %5074, %5076
  %5078 = fadd fast float %5075, %5076
  %5079 = add i32 %5071, 0
  %5080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5079, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5081 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5080, i32 0)  ; GetDimensions(handle,mipLevel)
  %5082 = extractvalue %dx.types.Dimensions %5081, 0
  %5083 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5082)  ; FirstbitLo(value)
  %5084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.i32 %5084, 1
  %5086 = sub nsw i32 %5085, %5083
  %5087 = sitofp i32 %5086 to float
  %5088 = fsub fast float %5037, %5087
  %5089 = call float @dx.op.binary.f32(i32 35, float %5088, float 0.000000e+00)  ; FMax(a,b)
  %5090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5080, %dx.types.Handle %52, float %5077, float %5078, float %5068, float undef, i32 0, i32 0, i32 undef, float %5089)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5091 = extractvalue %dx.types.ResRet.f32 %5090, 0
  %5092 = fmul fast float %5091, %5062
  %5093 = fadd fast float %5092, %5065
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 0
  %5096 = extractvalue %dx.types.CBufRet.f32 %5094, 1
  %5097 = extractvalue %dx.types.CBufRet.f32 %5094, 2
  %5098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.f32 %5098, 3
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 3
  %5102 = extractvalue %dx.types.CBufRet.f32 %5094, 3
  %5103 = fadd fast float %5099, %4960
  %5104 = fadd fast float %5101, %4961
  %5105 = fadd fast float %5093, %5102
  %5106 = fmul fast float %5103, %5095
  %5107 = call float @dx.op.tertiary.f32(i32 46, float %5104, float %5096, float %5106)  ; FMad(a,b,c)
  %5108 = call float @dx.op.tertiary.f32(i32 46, float %5105, float %5097, float %5107)  ; FMad(a,b,c)
  %5109 = fsub fast float %5108, %5102
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 2
  %5112 = fsub fast float %5109, %5111
  %5113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.i32 %5113, 0
  %5115 = call i32 @dx.op.binary.i32(i32 40, i32 %4991, i32 %5114)  ; UMin(a,b)
  %5116 = mul i32 %5115, 36
  %5117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5116, i32 undef)  ; BufferLoad(srv,index,wot)
  %5118 = extractvalue %dx.types.ResRet.i32 %5117, 0
  %5119 = add i32 %5116, 4
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 0
  %5122 = fmul fast float %5121, %5013
  %5123 = fmul fast float %5121, %5015
  %5124 = extractvalue %dx.types.CBufRet.f32 %5120, 1
  %5125 = fadd fast float %5122, %5124
  %5126 = fadd fast float %5123, %5124
  %5127 = icmp eq i32 %5118, 0
  br i1 %5127, label %5196, label %5128

; <label>:5128                                    ; preds = %5059
  br label %5129

; <label>:5129                                    ; preds = %5186, %5128
  %5130 = phi float [ %5187, %5186 ], [ 0.000000e+00, %5128 ]
  %5131 = phi float [ %5188, %5186 ], [ 0.000000e+00, %5128 ]
  %5132 = phi float [ %5189, %5186 ], [ 0.000000e+00, %5128 ]
  %5133 = phi float [ %5190, %5186 ], [ 0.000000e+00, %5128 ]
  %5134 = phi float [ %5191, %5186 ], [ 0.000000e+00, %5128 ]
  %5135 = phi float [ %5192, %5186 ], [ 0.000000e+00, %5128 ]
  %5136 = phi i32 [ %5193, %5186 ], [ 0, %5128 ]
  %5137 = shl i32 %5136, 2
  %5138 = add i32 %5004, %5137
  %5139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %5138, i32 undef)  ; BufferLoad(srv,index,wot)
  %5140 = extractvalue %dx.types.ResRet.f32 %5139, 0
  %5141 = add i32 %5008, %5137
  %5142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5141, i32 undef)  ; BufferLoad(srv,index,wot)
  %5143 = extractvalue %dx.types.ResRet.i32 %5142, 0
  %5144 = add i32 %5143, 0
  %5145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5144, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5146 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5145, i32 0)  ; GetDimensions(handle,mipLevel)
  %5147 = extractvalue %dx.types.Dimensions %5146, 0
  %5148 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5147)  ; FirstbitLo(value)
  %5149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.i32 %5149, 1
  %5151 = sub nsw i32 %5150, %5148
  %5152 = sitofp i32 %5151 to float
  %5153 = fsub fast float %5037, %5152
  %5154 = call float @dx.op.binary.f32(i32 35, float %5153, float 0.000000e+00)  ; FMax(a,b)
  %5155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5145, %dx.types.Handle %52, float %5125, float %5126, float %5140, float undef, i32 0, i32 0, i32 undef, float %5154)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5156 = extractvalue %dx.types.ResRet.f32 %5155, 0
  %5157 = fcmp fast ogt float %5156, 0.000000e+00
  br i1 %5157, label %5158, label %5186

; <label>:5158                                    ; preds = %5129
  %5159 = add i32 %5119, %5137
  %5160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5159, i32 undef)  ; BufferLoad(srv,index,wot)
  %5161 = extractvalue %dx.types.ResRet.i32 %5160, 0
  %5162 = and i32 %5161, 32767
  %5163 = mul nuw nsw i32 %5162, 928
  %5164 = add nuw nsw i32 %5163, 48
  %5165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5164, i32 undef)  ; BufferLoad(srv,index,wot)
  %5166 = extractvalue %dx.types.ResRet.f32 %5165, 0
  %5167 = extractvalue %dx.types.ResRet.f32 %5165, 1
  %5168 = extractvalue %dx.types.ResRet.f32 %5165, 2
  %5169 = add nuw nsw i32 %5163, 60
  %5170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %5169, i32 undef)  ; BufferLoad(srv,index,wot)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.ResRet.f32 %5170, 2
  %5174 = fmul fast float %5166, %5156
  %5175 = fmul fast float %5167, %5156
  %5176 = fmul fast float %5168, %5156
  %5177 = fadd fast float %5174, %5130
  %5178 = fadd fast float %5175, %5131
  %5179 = fadd fast float %5176, %5132
  %5180 = fmul fast float %5171, %5156
  %5181 = fmul fast float %5172, %5156
  %5182 = fmul fast float %5173, %5156
  %5183 = fadd fast float %5180, %5133
  %5184 = fadd fast float %5181, %5134
  %5185 = fadd fast float %5182, %5135
  br label %5186

; <label>:5186                                    ; preds = %5158, %5129
  %5187 = phi float [ %5177, %5158 ], [ %5130, %5129 ]
  %5188 = phi float [ %5178, %5158 ], [ %5131, %5129 ]
  %5189 = phi float [ %5179, %5158 ], [ %5132, %5129 ]
  %5190 = phi float [ %5183, %5158 ], [ %5133, %5129 ]
  %5191 = phi float [ %5184, %5158 ], [ %5134, %5129 ]
  %5192 = phi float [ %5185, %5158 ], [ %5135, %5129 ]
  %5193 = add nuw i32 %5136, 1
  %5194 = icmp eq i32 %5193, %5118
  br i1 %5194, label %5195, label %5129

; <label>:5195                                    ; preds = %5186
  br label %5196

; <label>:5196                                    ; preds = %5195, %5059
  %5197 = phi float [ 0.000000e+00, %5059 ], [ %5187, %5195 ]
  %5198 = phi float [ 0.000000e+00, %5059 ], [ %5188, %5195 ]
  %5199 = phi float [ 0.000000e+00, %5059 ], [ %5189, %5195 ]
  %5200 = phi float [ 0.000000e+00, %5059 ], [ %5190, %5195 ]
  %5201 = phi float [ 0.000000e+00, %5059 ], [ %5191, %5195 ]
  %5202 = phi float [ 0.000000e+00, %5059 ], [ %5192, %5195 ]
  %5203 = fadd fast float %5200, %5197
  %5204 = fmul fast float %5203, 0x3F847AE140000000
  %5205 = fadd fast float %5201, %5198
  %5206 = fmul fast float %5205, 0x3F847AE140000000
  %5207 = fadd fast float %5202, %5199
  %5208 = fmul fast float %5207, 0x3F847AE140000000
  br label %5209

; <label>:5209                                    ; preds = %5196, %4993, %4938, %4935, %4906, %4868
  %5210 = phi float [ %4920, %4906 ], [ -1.310720e+05, %4868 ], [ %5112, %5196 ], [ -1.310720e+05, %4938 ], [ -1.310720e+05, %4993 ], [ -1.310720e+05, %4935 ]
  %5211 = phi float [ %4930, %4906 ], [ 0.000000e+00, %4868 ], [ %5204, %5196 ], [ 0.000000e+00, %4938 ], [ 0.000000e+00, %4993 ], [ 0.000000e+00, %4935 ]
  %5212 = phi float [ %4932, %4906 ], [ 0.000000e+00, %4868 ], [ %5206, %5196 ], [ 0.000000e+00, %4938 ], [ 0.000000e+00, %4993 ], [ 0.000000e+00, %4935 ]
  %5213 = phi float [ %4934, %4906 ], [ 0.000000e+00, %4868 ], [ %5208, %5196 ], [ 0.000000e+00, %4938 ], [ 0.000000e+00, %4993 ], [ 0.000000e+00, %4935 ]
  %5214 = phi i1 [ true, %4906 ], [ false, %4868 ], [ true, %5196 ], [ false, %4938 ], [ false, %4993 ], [ false, %4935 ]
  %5215 = and i32 %208, 3
  %5216 = icmp eq i32 %5215, 1
  %5217 = select i1 %5216, float 1.000000e+00, float 0.000000e+00
  %5218 = fsub fast float %5210, %172
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = select i1 %5214, float %5219, float 1.000000e+00
  %5221 = fmul fast float %5220, %5217
  %5222 = icmp eq i32 %5215, 3
  %5223 = select i1 %5222, float 1.000000e+00, float %5221
  %5224 = call float @dx.op.binary.f32(i32 35, float %4744, float %5223)  ; FMax(a,b)
  %5225 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5226 = fcmp fast une float %5225, 0.000000e+00
  %5227 = call float @dx.op.dot3.f32(i32 55, float %170, float %171, float %172, float %170, float %171, float %172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = call float @dx.op.unary.f32(i32 25, float %5227)  ; Rsqrt(value)
  br i1 %5226, label %5236, label %5229

; <label>:5229                                    ; preds = %5209
  %5230 = fmul fast float %5228, %170
  %5231 = fmul fast float %5228, %171
  %5232 = fmul fast float %5228, %172
  %5233 = fsub fast float -0.000000e+00, %5230
  %5234 = fsub fast float -0.000000e+00, %5231
  %5235 = fsub fast float -0.000000e+00, %5232
  br label %5404

; <label>:5236                                    ; preds = %5209
  %5237 = fmul fast float %170, %5228
  %5238 = fsub fast float -0.000000e+00, %5237
  %5239 = fmul fast float %171, %5228
  %5240 = fsub fast float -0.000000e+00, %5239
  %5241 = fmul fast float %172, %5228
  %5242 = fsub fast float -0.000000e+00, %5241
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5240, float %5242, float %120, float %122, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = fmul fast float %5225, 2.500000e+00
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = fmul fast float %5225, 0x4013FFFFE0000000
  %5247 = fadd fast float %5246, 0xBFFFFFFFE0000000
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5249 = fmul fast float %5225, 0x4004000020000000
  %5250 = fadd fast float %5249, 0xBFF8000040000000
  %5251 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5252 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5253 = fmul fast float %4748, 1.000000e+01
  %5254 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5255 = fmul fast float %5254, 2.000000e+00
  %5256 = fsub fast float 3.000000e+00, %5255
  %5257 = fmul fast float %5254, %5254
  %5258 = fmul fast float %5257, %5256
  %5259 = fsub fast float 1.000000e+00, %5258
  %5260 = fsub fast float 0x3FE3333340000000, %4769
  %5261 = fmul fast float %5260, 0x400AAAAAA0000000
  %5262 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5263 = fmul fast float %5259, %5262
  %5264 = fmul fast float %4847, 0x3FEA2B8620000000
  %5265 = fmul fast float %4848, 0x3FEA2B8620000000
  %5266 = fmul fast float %4849, 0x3FEA2B8620000000
  %5267 = fadd fast float %5264, 0x3FC81DFBA0000000
  %5268 = fmul fast float %5267, %4847
  %5269 = fadd fast float %5268, 0x3F910E6020000000
  %5270 = fadd fast float %5265, 0x3FC81DFBA0000000
  %5271 = fmul fast float %5270, %4848
  %5272 = fadd fast float %5271, 0x3F910E6020000000
  %5273 = fadd fast float %5266, 0x3FC81DFBA0000000
  %5274 = fmul fast float %5273, %4849
  %5275 = fadd fast float %5274, 0x3F910E6020000000
  %5276 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  %5278 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5279 = fsub fast float %5276, %4847
  %5280 = fsub fast float %5277, %4848
  %5281 = fsub fast float %5278, %4849
  %5282 = fmul fast float %5279, %5252
  %5283 = fmul fast float %5282, %5263
  %5284 = fmul fast float %5280, %5252
  %5285 = fmul fast float %5284, %5263
  %5286 = fmul fast float %5281, %5252
  %5287 = fmul fast float %5286, %5263
  %5288 = fadd fast float %5283, %4847
  %5289 = fadd fast float %5285, %4848
  %5290 = fadd fast float %5287, %4849
  %5291 = fmul fast float %4741, %4741
  %5292 = fmul fast float %5291, %5291
  %5293 = fadd fast float %5248, 1.000000e+00
  %5294 = fsub fast float %5293, %5263
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = call float @dx.op.dot3.f32(i32 55, float %120, float %122, float %124, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5298 = fsub fast float 1.000000e+00, %5292
  %5299 = call float @dx.op.binary.f32(i32 36, float %5295, float %5298)  ; FMin(a,b)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5301 = call float @dx.op.binary.f32(i32 35, float %5299, float %5300)  ; FMax(a,b)
  %5302 = fadd fast float %5297, 0xBFE4CCCCC0000000
  %5303 = fmul fast float %5302, 0x4006DB6DA0000000
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = fmul fast float %5304, 2.000000e+00
  %5306 = fsub fast float 3.000000e+00, %5305
  %5307 = bitcast float %4766 to i32
  %5308 = ashr i32 %5307, 1
  %5309 = add nsw i32 %5308, 532487669
  %5310 = bitcast i32 %5309 to float
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = bitcast float %5311 to i32
  %5313 = sub nsw i32 2129859010, %5312
  %5314 = bitcast i32 %5313 to float
  %5315 = fmul fast float %5314, 2.000000e+00
  %5316 = bitcast float %4767 to i32
  %5317 = ashr i32 %5316, 1
  %5318 = add nsw i32 %5317, 532487669
  %5319 = bitcast i32 %5318 to float
  %5320 = fsub fast float 1.000000e+00, %5319
  %5321 = bitcast float %5320 to i32
  %5322 = sub nsw i32 2129859010, %5321
  %5323 = bitcast i32 %5322 to float
  %5324 = fmul fast float %5323, 2.000000e+00
  %5325 = bitcast float %4768 to i32
  %5326 = ashr i32 %5325, 1
  %5327 = add nsw i32 %5326, 532487669
  %5328 = bitcast i32 %5327 to float
  %5329 = fsub fast float 1.000000e+00, %5328
  %5330 = bitcast float %5329 to i32
  %5331 = sub nsw i32 2129859010, %5330
  %5332 = bitcast i32 %5331 to float
  %5333 = fmul fast float %5332, 2.000000e+00
  %5334 = fsub fast float 0x4002A9FBE0000000, %5315
  %5335 = fadd fast float %5315, 0x3FD54FDF00000000
  %5336 = bitcast float %5335 to i32
  %5337 = sub nsw i32 2129859010, %5336
  %5338 = bitcast i32 %5337 to float
  %5339 = fmul fast float %5338, %5334
  %5340 = fmul fast float %5339, %5339
  %5341 = fsub fast float 0x4002A9FBE0000000, %5324
  %5342 = fadd fast float %5324, 0x3FD54FDF00000000
  %5343 = bitcast float %5342 to i32
  %5344 = sub nsw i32 2129859010, %5343
  %5345 = bitcast i32 %5344 to float
  %5346 = fmul fast float %5345, %5341
  %5347 = fmul fast float %5346, %5346
  %5348 = fsub fast float 0x4002A9FBE0000000, %5333
  %5349 = fadd fast float %5333, 0x3FD54FDF00000000
  %5350 = bitcast float %5349 to i32
  %5351 = sub nsw i32 2129859010, %5350
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, %5348
  %5354 = fmul fast float %5353, %5353
  %5355 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5340)  ; FMax(a,b)
  %5356 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5347)  ; FMax(a,b)
  %5357 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5354)  ; FMax(a,b)
  %5358 = fsub fast float 1.000000e+00, %5243
  %5359 = fadd fast float %5358, %5259
  %5360 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5361 = fsub fast float 1.000000e+00, %5223
  %5362 = fmul fast float %5301, %5361
  %5363 = fmul fast float %5304, %5304
  %5364 = fmul fast float %5363, %5362
  %5365 = fmul fast float %5364, %5306
  %5366 = fmul fast float %5361, 0xBFE99999A0000000
  %5367 = fmul fast float %5366, %5252
  %5368 = fmul fast float %5367, %5263
  %5369 = fadd fast float %5368, 1.000000e+00
  %5370 = fadd fast float %4769, -1.000000e+00
  %5371 = fmul fast float %5369, %5370
  %5372 = fadd fast float %5371, 1.000000e+00
  %5373 = fsub fast float %5355, %4766
  %5374 = fsub fast float %5356, %4767
  %5375 = fsub fast float %5357, %4768
  %5376 = fmul fast float %5365, %5373
  %5377 = fmul fast float %5365, %5374
  %5378 = fmul fast float %5365, %5375
  %5379 = fadd fast float %5376, %4766
  %5380 = fadd fast float %5377, %4767
  %5381 = fadd fast float %5378, %4768
  %5382 = fsub fast float %120, %4726
  %5383 = fsub fast float %122, %4727
  %5384 = fsub fast float %124, %4728
  %5385 = fmul fast float %5365, %5382
  %5386 = fmul fast float %5365, %5383
  %5387 = fmul fast float %5365, %5384
  %5388 = fadd fast float %5385, %4726
  %5389 = fadd fast float %5386, %4727
  %5390 = fadd fast float %5387, %4728
  %5391 = fmul fast float %5365, %5360
  %5392 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5393 = fsub fast float 1.000000e+00, %5392
  %5394 = fmul fast float %5391, %5393
  %5395 = fadd fast float %5394, %5392
  %5396 = fsub fast float 1.000000e+00, %4741
  %5397 = fmul fast float %5365, %5396
  %5398 = fadd fast float %5397, %4741
  %5399 = call float @dx.op.dot3.f32(i32 55, float %5388, float %5389, float %5390, float %5388, float %5389, float %5390)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = call float @dx.op.unary.f32(i32 25, float %5399)  ; Rsqrt(value)
  %5401 = fmul fast float %5388, %5400
  %5402 = fmul fast float %5389, %5400
  %5403 = fmul fast float %5390, %5400
  br label %5404

; <label>:5404                                    ; preds = %5236, %5229
  %5405 = phi float [ %5235, %5229 ], [ %5242, %5236 ]
  %5406 = phi float [ %5234, %5229 ], [ %5240, %5236 ]
  %5407 = phi float [ %5233, %5229 ], [ %5238, %5236 ]
  %5408 = phi float [ %5232, %5229 ], [ %5241, %5236 ]
  %5409 = phi float [ %5231, %5229 ], [ %5239, %5236 ]
  %5410 = phi float [ %5230, %5229 ], [ %5237, %5236 ]
  %5411 = phi float [ %4847, %5229 ], [ %5288, %5236 ]
  %5412 = phi float [ %4848, %5229 ], [ %5289, %5236 ]
  %5413 = phi float [ %4849, %5229 ], [ %5290, %5236 ]
  %5414 = phi float [ %4766, %5229 ], [ %5379, %5236 ]
  %5415 = phi float [ %4767, %5229 ], [ %5380, %5236 ]
  %5416 = phi float [ %4768, %5229 ], [ %5381, %5236 ]
  %5417 = phi float [ %4726, %5229 ], [ %5401, %5236 ]
  %5418 = phi float [ %4727, %5229 ], [ %5402, %5236 ]
  %5419 = phi float [ %4728, %5229 ], [ %5403, %5236 ]
  %5420 = phi float [ %4769, %5229 ], [ %5395, %5236 ]
  %5421 = phi float [ %4741, %5229 ], [ %5398, %5236 ]
  %5422 = fsub fast float -0.000000e+00, %172
  %5423 = select i1 %232, float 0.000000e+00, float %5416
  %5424 = call float @dx.op.dot3.f32(i32 55, float %5417, float %5418, float %5419, float %5407, float %5406, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5410, float %5409, float %5408, float %5417, float %5418, float %5419)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = fmul fast float %5426, 2.000000e+00
  %5428 = fmul fast float %5427, %5417
  %5429 = fmul fast float %5427, %5418
  %5430 = fmul fast float %5427, %5419
  %5431 = fsub fast float %5410, %5428
  %5432 = fsub fast float %5409, %5429
  %5433 = fsub fast float %5408, %5430
  %5434 = call float @dx.op.binary.f32(i32 36, float %5421, float 1.000000e+00)  ; FMin(a,b)
  %5435 = fsub fast float 1.000000e+00, %5434
  %5436 = bitcast float %5435 to i32
  %5437 = ashr i32 %5436, 1
  %5438 = add nsw i32 %5437, 532487669
  %5439 = bitcast i32 %5438 to float
  %5440 = fsub fast float 1.000000e+00, %5420
  %5441 = call float @dx.op.binary.f32(i32 35, float %5440, float 0x3F847AE140000000)  ; FMax(a,b)
  %5442 = fmul fast float %5441, %5441
  %5443 = fmul fast float %5442, %5442
  %5444 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %54, float %5439, float %5443, float %5444, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = fsub fast float 1.000000e+00, %5421
  %5448 = bitcast float %5447 to i32
  %5449 = sub nsw i32 2129859010, %5448
  %5450 = bitcast i32 %5449 to float
  %5451 = call float @dx.op.dot3.f32(i32 55, float %79, float %75, float %71, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = fmul fast float %5451, 0x3FD20DD760000000
  %5453 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %79)  ; FMax(a,b)
  %5454 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = fcmp fast oeq float %5454, 0.000000e+00
  %5456 = fcmp fast oeq float %5453, 0.000000e+00
  %5457 = or i1 %5456, %5455
  br i1 %5457, label %5487, label %5458

; <label>:5458                                    ; preds = %5404
  %5459 = fsub fast float -0.000000e+00, %82
  %5460 = fsub fast float -0.000000e+00, %80
  %5461 = call float @dx.op.unary.f32(i32 24, float %5454)  ; Sqrt(value)
  %5462 = fdiv fast float %5461, %5453
  %5463 = fcmp fast ogt float %5462, 0x3FFB6F8900000000
  %5464 = select i1 %5463, float 0x3FFB6F8900000000, float %5462
  %5465 = fmul fast float %5464, 0x3FE8A23460000000
  %5466 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5467 = call float @dx.op.binary.f32(i32 35, float %5464, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5468 = fmul fast float %5466, %5453
  %5469 = fmul fast float %5467, 0x3FF279A740000000
  %5470 = fadd fast float %5469, -1.000000e+00
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %81, float %5459, float %5460, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.unary.f32(i32 25, float %5471)  ; Rsqrt(value)
  %5473 = fmul fast float %5472, %5459
  %5474 = fmul fast float %5472, %5460
  %5475 = fmul fast float %5472, %81
  %5476 = fmul fast float %5470, %5470
  %5477 = fsub fast float 1.000000e+00, %5476
  %5478 = fmul fast float %5467, 0x40005F8BE0000000
  %5479 = fsub fast float 0x400C5BF8A0000000, %5478
  %5480 = fdiv fast float %5468, %5479
  %5481 = fmul fast float %5480, 0x3FEE31C3C0000000
  %5482 = fmul fast float %5481, %5477
  %5483 = fmul fast float %5467, 0x3FDACB7480000000
  %5484 = fadd fast float %5483, 0xBFD7347680000000
  %5485 = fmul fast float %5484, %5480
  %5486 = fmul fast float %5485, %5477
  br label %5487

; <label>:5487                                    ; preds = %5458, %5404
  %5488 = phi float [ %5473, %5458 ], [ 0.000000e+00, %5404 ]
  %5489 = phi float [ %5474, %5458 ], [ 0.000000e+00, %5404 ]
  %5490 = phi float [ %5475, %5458 ], [ 0.000000e+00, %5404 ]
  %5491 = phi float [ %5482, %5458 ], [ 0.000000e+00, %5404 ]
  %5492 = phi float [ %5486, %5458 ], [ 0.000000e+00, %5404 ]
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5489, float %5490, float %5417, float %5418, float %5419)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = fmul fast float %5493, 0x3FDF454380000000
  %5495 = fmul fast float %5493, %5493
  %5496 = fmul fast float %5495, 0x3FEE471020000000
  %5497 = fadd fast float %5496, 0xBFD42F6020000000
  %5498 = fmul fast float %5453, 0x3FD20DD760000000
  %5499 = fmul fast float %5497, %5492
  %5500 = fadd fast float %5499, %5498
  %5501 = fmul fast float %5494, %5491
  %5502 = fadd fast float %5500, %5501
  %5503 = fsub fast float %5500, %5501
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5488, float %5489, float %5490, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = fmul fast float %5504, 0x3FDF454380000000
  %5506 = fmul fast float %5504, %5504
  %5507 = fmul fast float %5506, 0x3FEE471020000000
  %5508 = fadd fast float %5507, 0xBFD42F6020000000
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5491, float %5492, float 0x3FD20DD760000000, float %5505, float %5508)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %75)  ; FMax(a,b)
  %5511 = call float @dx.op.dot3.f32(i32 55, float %76, float %77, float %78, float %76, float %77, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = fcmp fast oeq float %5511, 0.000000e+00
  %5513 = fcmp fast oeq float %5510, 0.000000e+00
  %5514 = or i1 %5513, %5512
  br i1 %5514, label %5544, label %5515

; <label>:5515                                    ; preds = %5487
  %5516 = fsub fast float -0.000000e+00, %78
  %5517 = fsub fast float -0.000000e+00, %76
  %5518 = call float @dx.op.unary.f32(i32 24, float %5511)  ; Sqrt(value)
  %5519 = fdiv fast float %5518, %5510
  %5520 = fcmp fast ogt float %5519, 0x3FFB6F8900000000
  %5521 = select i1 %5520, float 0x3FFB6F8900000000, float %5519
  %5522 = fmul fast float %5521, 0x3FE8A23460000000
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5524 = call float @dx.op.binary.f32(i32 35, float %5521, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5525 = fmul fast float %5523, %5510
  %5526 = fmul fast float %5524, 0x3FF279A740000000
  %5527 = fadd fast float %5526, -1.000000e+00
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %77, float %5516, float %5517, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = call float @dx.op.unary.f32(i32 25, float %5528)  ; Rsqrt(value)
  %5530 = fmul fast float %5529, %5516
  %5531 = fmul fast float %5529, %5517
  %5532 = fmul fast float %5529, %77
  %5533 = fmul fast float %5527, %5527
  %5534 = fsub fast float 1.000000e+00, %5533
  %5535 = fmul fast float %5524, 0x40005F8BE0000000
  %5536 = fsub fast float 0x400C5BF8A0000000, %5535
  %5537 = fdiv fast float %5525, %5536
  %5538 = fmul fast float %5537, 0x3FEE31C3C0000000
  %5539 = fmul fast float %5538, %5534
  %5540 = fmul fast float %5524, 0x3FDACB7480000000
  %5541 = fadd fast float %5540, 0xBFD7347680000000
  %5542 = fmul fast float %5541, %5537
  %5543 = fmul fast float %5542, %5534
  br label %5544

; <label>:5544                                    ; preds = %5515, %5487
  %5545 = phi float [ %5530, %5515 ], [ 0.000000e+00, %5487 ]
  %5546 = phi float [ %5531, %5515 ], [ 0.000000e+00, %5487 ]
  %5547 = phi float [ %5532, %5515 ], [ 0.000000e+00, %5487 ]
  %5548 = phi float [ %5539, %5515 ], [ 0.000000e+00, %5487 ]
  %5549 = phi float [ %5543, %5515 ], [ 0.000000e+00, %5487 ]
  %5550 = call float @dx.op.dot3.f32(i32 55, float %5545, float %5546, float %5547, float %5417, float %5418, float %5419)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = fmul fast float %5550, 0x3FDF454380000000
  %5552 = fmul fast float %5550, %5550
  %5553 = fmul fast float %5552, 0x3FEE471020000000
  %5554 = fadd fast float %5553, 0xBFD42F6020000000
  %5555 = fmul fast float %5510, 0x3FD20DD760000000
  %5556 = fmul fast float %5554, %5549
  %5557 = fadd fast float %5556, %5555
  %5558 = fmul fast float %5551, %5548
  %5559 = fadd fast float %5557, %5558
  %5560 = fsub fast float %5557, %5558
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5545, float %5546, float %5547, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = fmul fast float %5561, 0x3FDF454380000000
  %5563 = fmul fast float %5561, %5561
  %5564 = fmul fast float %5563, 0x3FEE471020000000
  %5565 = fadd fast float %5564, 0xBFD42F6020000000
  %5566 = call float @dx.op.dot3.f32(i32 55, float %5510, float %5548, float %5549, float 0x3FD20DD760000000, float %5562, float %5565)  ; Dot3(ax,ay,az,bx,by,bz)
  %5567 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %71)  ; FMax(a,b)
  %5568 = call float @dx.op.dot3.f32(i32 55, float %72, float %73, float %74, float %72, float %73, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = fcmp fast oeq float %5568, 0.000000e+00
  %5570 = fcmp fast oeq float %5567, 0.000000e+00
  %5571 = or i1 %5570, %5569
  br i1 %5571, label %5601, label %5572

; <label>:5572                                    ; preds = %5544
  %5573 = fsub fast float -0.000000e+00, %74
  %5574 = fsub fast float -0.000000e+00, %72
  %5575 = call float @dx.op.unary.f32(i32 24, float %5568)  ; Sqrt(value)
  %5576 = fdiv fast float %5575, %5567
  %5577 = fcmp fast ogt float %5576, 0x3FFB6F8900000000
  %5578 = select i1 %5577, float 0x3FFB6F8900000000, float %5576
  %5579 = fmul fast float %5578, 0x3FE8A23460000000
  %5580 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5581 = call float @dx.op.binary.f32(i32 35, float %5578, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5582 = fmul fast float %5580, %5567
  %5583 = fmul fast float %5581, 0x3FF279A740000000
  %5584 = fadd fast float %5583, -1.000000e+00
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5573, float %5574, float %73, float %5573, float %5574, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = call float @dx.op.unary.f32(i32 25, float %5585)  ; Rsqrt(value)
  %5587 = fmul fast float %5586, %5573
  %5588 = fmul fast float %5586, %5574
  %5589 = fmul fast float %5586, %73
  %5590 = fmul fast float %5584, %5584
  %5591 = fsub fast float 1.000000e+00, %5590
  %5592 = fmul fast float %5581, 0x40005F8BE0000000
  %5593 = fsub fast float 0x400C5BF8A0000000, %5592
  %5594 = fdiv fast float %5582, %5593
  %5595 = fmul fast float %5594, 0x3FEE31C3C0000000
  %5596 = fmul fast float %5595, %5591
  %5597 = fmul fast float %5581, 0x3FDACB7480000000
  %5598 = fadd fast float %5597, 0xBFD7347680000000
  %5599 = fmul fast float %5598, %5594
  %5600 = fmul fast float %5599, %5591
  br label %5601

; <label>:5601                                    ; preds = %5572, %5544
  %5602 = phi float [ %5587, %5572 ], [ 0.000000e+00, %5544 ]
  %5603 = phi float [ %5588, %5572 ], [ 0.000000e+00, %5544 ]
  %5604 = phi float [ %5589, %5572 ], [ 0.000000e+00, %5544 ]
  %5605 = phi float [ %5596, %5572 ], [ 0.000000e+00, %5544 ]
  %5606 = phi float [ %5600, %5572 ], [ 0.000000e+00, %5544 ]
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float %5417, float %5418, float %5419)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = fmul fast float %5607, 0x3FDF454380000000
  %5609 = fmul fast float %5607, %5607
  %5610 = fmul fast float %5609, 0x3FEE471020000000
  %5611 = fadd fast float %5610, 0xBFD42F6020000000
  %5612 = fmul fast float %5567, 0x3FD20DD760000000
  %5613 = fmul fast float %5611, %5606
  %5614 = fadd fast float %5613, %5612
  %5615 = fmul fast float %5608, %5605
  %5616 = fadd fast float %5614, %5615
  %5617 = fsub fast float %5614, %5615
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float %5431, float %5432, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fmul fast float %5618, 0x3FDF454380000000
  %5620 = fmul fast float %5618, %5618
  %5621 = fmul fast float %5620, 0x3FEE471020000000
  %5622 = fadd fast float %5621, 0xBFD42F6020000000
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5605, float %5606, float 0x3FD20DD760000000, float %5619, float %5622)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5502, float 0.000000e+00)  ; FMax(a,b)
  %5625 = call float @dx.op.binary.f32(i32 35, float %5559, float 0.000000e+00)  ; FMax(a,b)
  %5626 = call float @dx.op.binary.f32(i32 35, float %5616, float 0.000000e+00)  ; FMax(a,b)
  %5627 = call float @dx.op.binary.f32(i32 35, float %5503, float 0.000000e+00)  ; FMax(a,b)
  %5628 = call float @dx.op.binary.f32(i32 35, float %5560, float 0.000000e+00)  ; FMax(a,b)
  %5629 = call float @dx.op.binary.f32(i32 35, float %5617, float 0.000000e+00)  ; FMax(a,b)
  %5630 = call float @dx.op.binary.f32(i32 35, float %5509, float 0.000000e+00)  ; FMax(a,b)
  %5631 = call float @dx.op.binary.f32(i32 35, float %5566, float 0.000000e+00)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 35, float %5623, float 0.000000e+00)  ; FMax(a,b)
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 0
  %5635 = call float @dx.op.binary.f32(i32 36, float %5411, float %5634)  ; FMin(a,b)
  %5636 = fmul fast float %5635, %5435
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = bitcast float %5637 to i32
  %5639 = sub nsw i32 2129859010, %5638
  %5640 = bitcast i32 %5639 to float
  %5641 = call float @dx.op.binary.f32(i32 36, float %5412, float %5634)  ; FMin(a,b)
  %5642 = fmul fast float %5641, %5435
  %5643 = fsub fast float 1.000000e+00, %5642
  %5644 = bitcast float %5643 to i32
  %5645 = sub nsw i32 2129859010, %5644
  %5646 = bitcast i32 %5645 to float
  %5647 = call float @dx.op.binary.f32(i32 36, float %5413, float %5634)  ; FMin(a,b)
  %5648 = fmul fast float %5647, %5435
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = bitcast float %5649 to i32
  %5651 = sub nsw i32 2129859010, %5650
  %5652 = bitcast i32 %5651 to float
  %5653 = fmul fast float %5624, %5434
  %5654 = fmul fast float %5653, %5640
  %5655 = fmul fast float %5625, %5434
  %5656 = fmul fast float %5655, %5646
  %5657 = fmul fast float %5626, %5434
  %5658 = fmul fast float %5657, %5652
  %5659 = call float @dx.op.binary.f32(i32 36, float %5414, float %5634)  ; FMin(a,b)
  %5660 = fmul fast float %5659, %5435
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = call float @dx.op.binary.f32(i32 36, float %5415, float %5634)  ; FMin(a,b)
  %5666 = fmul fast float %5665, %5435
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = bitcast float %5667 to i32
  %5669 = sub nsw i32 2129859010, %5668
  %5670 = bitcast i32 %5669 to float
  %5671 = call float @dx.op.binary.f32(i32 36, float %5423, float %5634)  ; FMin(a,b)
  %5672 = fmul fast float %5671, %5435
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = fmul fast float %5630, %5434
  %5678 = fmul fast float %5677, %5664
  %5679 = fmul fast float %5631, %5434
  %5680 = fmul fast float %5679, %5670
  %5681 = fmul fast float %5632, %5434
  %5682 = fmul fast float %5681, %5676
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5654, float %5656, float %5658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = select i1 %232, float 0.000000e+00, float %5654
  %5685 = select i1 %232, float %5683, float %5656
  %5686 = select i1 %232, float 0.000000e+00, float %5658
  %5687 = call float @dx.op.dot3.f32(i32 55, float %5627, float %5628, float %5629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = select i1 %232, float 0.000000e+00, float %5627
  %5689 = select i1 %232, float %5687, float %5628
  %5690 = select i1 %232, float 0.000000e+00, float %5629
  %5691 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5680, float %5682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = select i1 %232, float 0.000000e+00, float %5678
  %5693 = select i1 %232, float %5691, float %5680
  %5694 = select i1 %232, float 0.000000e+00, float %5682
  %5695 = fmul fast float %5425, 9.843750e-01
  %5696 = fmul fast float %5420, 9.843750e-01
  %5697 = fadd fast float %5695, 7.812500e-03
  %5698 = fadd fast float %5696, 7.812500e-03
  %5699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %5697, float %5698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5700 = extractvalue %dx.types.ResRet.f32 %5699, 2
  %5701 = extractvalue %dx.types.ResRet.f32 %5699, 3
  %5702 = fmul fast float %5700, %5414
  %5703 = fmul fast float %5700, %5415
  %5704 = fmul fast float %5700, %5423
  %5705 = fadd fast float %5702, %5701
  %5706 = fadd fast float %5703, %5701
  %5707 = fadd fast float %5704, %5701
  %5708 = fcmp fast ogt float %4742, 0.000000e+00
  br i1 %5708, label %5709, label %5735

; <label>:5709                                    ; preds = %5601
  %5710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4742, float %5425, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5711 = extractvalue %dx.types.ResRet.f32 %5710, 0
  %5712 = extractvalue %dx.types.ResRet.f32 %5710, 1
  %5713 = extractvalue %dx.types.ResRet.f32 %5710, 2
  %5714 = fadd fast float %5711, -5.000000e-01
  %5715 = fadd fast float %5712, -5.000000e-01
  %5716 = fadd fast float %5713, -5.000000e-01
  %5717 = fsub fast float 1.000000e+00, %5414
  %5718 = fsub fast float 1.000000e+00, %5415
  %5719 = fsub fast float 1.000000e+00, %5423
  %5720 = fmul fast float %5414, 4.000000e+00
  %5721 = fmul fast float %5720, %5717
  %5722 = fmul fast float %5721, %5714
  %5723 = fmul fast float %5415, 4.000000e+00
  %5724 = fmul fast float %5723, %5718
  %5725 = fmul fast float %5724, %5715
  %5726 = fmul fast float %5423, 4.000000e+00
  %5727 = fmul fast float %5726, %5719
  %5728 = fmul fast float %5727, %5716
  %5729 = fadd fast float %5722, %5705
  %5730 = fadd fast float %5725, %5706
  %5731 = fadd fast float %5728, %5707
  %5732 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5733 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  %5734 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  br label %5735

; <label>:5735                                    ; preds = %5709, %5601
  %5736 = phi float [ %5732, %5709 ], [ %5705, %5601 ]
  %5737 = phi float [ %5733, %5709 ], [ %5706, %5601 ]
  %5738 = phi float [ %5734, %5709 ], [ %5707, %5601 ]
  %5739 = call float @dx.op.binary.f32(i32 35, float %5737, float %5738)  ; FMax(a,b)
  %5740 = call float @dx.op.binary.f32(i32 35, float %5736, float %5739)  ; FMax(a,b)
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = fmul fast float %5740, %5420
  %5743 = fadd fast float %5742, %5420
  %5744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.f32 %5744, 2
  %5746 = extractvalue %dx.types.CBufRet.f32 %5744, 3
  %5747 = fmul fast float %5743, %5745
  %5748 = fadd fast float %5747, %5746
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5750 = fsub fast float 1.000000e+00, %5446
  %5751 = fadd fast float %5750, %5749
  %5752 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5753 = fcmp fast olt float %5752, 1.000000e+00
  br i1 %5753, label %5754, label %6230

; <label>:5754                                    ; preds = %5735
  %5755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5756 = extractvalue %dx.types.CBufRet.f32 %5755, 2
  %5757 = extractvalue %dx.types.CBufRet.f32 %5755, 3
  %5758 = fmul fast float %5756, %111
  %5759 = fmul fast float %5757, %112
  %5760 = fptoui float %5758 to i32
  %5761 = fptoui float %5759 to i32
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.CBufRet.f32 %5762, 2
  %5765 = extractvalue %dx.types.CBufRet.f32 %5762, 3
  %5766 = fadd fast float %99, -4.000000e+00
  %5767 = call float @dx.op.binary.f32(i32 35, float %5766, float 0.000000e+00)  ; FMax(a,b)
  %5768 = fadd fast float %5767, %5763
  %5769 = fmul fast float %5768, %5764
  %5770 = call float @dx.op.unary.f32(i32 23, float %5769)  ; Log(value)
  %5771 = fmul fast float %5770, %5765
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 2
  %5774 = fmul fast float %5771, %5773
  %5775 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.i32 %5776, 1
  %5778 = add i32 %5777, -1
  %5779 = uitofp i32 %5777 to float
  %5780 = fmul fast float %5779, %5775
  %5781 = fptoui float %5780 to i32
  %5782 = call i32 @dx.op.binary.i32(i32 40, i32 %5781, i32 %5778)  ; UMin(a,b)
  %5783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.i32 %5783, 2
  %5785 = extractvalue %dx.types.CBufRet.i32 %5783, 3
  %5786 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5761, i32 %5784, i32 %5760)  ; UMad(a,b,c)
  %5787 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5782, i32 %5785, i32 %5786)  ; UMad(a,b,c)
  %5788 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %5789 = fptoui float %5788 to i32
  %5790 = lshr i32 %5789, 5
  %5791 = call i32 @dx.op.binary.i32(i32 40, i32 %5790, i32 8191)  ; UMin(a,b)
  %5792 = fsub fast float %5210, %172
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fcmp fast ogt float %5793, 0.000000e+00
  %5795 = fcmp fast ogt float %5433, 0.000000e+00
  %5796 = and i1 %5795, %5794
  br i1 %5796, label %5797, label %5826

; <label>:5797                                    ; preds = %5754
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = call float @dx.op.binary.f32(i32 35, float %5798, float -1.000000e+00)  ; FMax(a,b)
  %5800 = call float @dx.op.binary.f32(i32 36, float %5799, float 1.000000e+00)  ; FMin(a,b)
  %5801 = fmul fast float %5800, %5800
  %5802 = fsub fast float 1.000000e+00, %5801
  %5803 = fmul fast float %5802, 0x3FFC6E2300000000
  %5804 = fsub fast float 1.000000e+00, %5803
  %5805 = fcmp fast ogt float %5804, 0.000000e+00
  %5806 = call float @dx.op.unary.f32(i32 24, float %5804)  ; Sqrt(value)
  %5807 = fsub fast float 1.000000e+00, %5806
  %5808 = call float @dx.op.unary.f32(i32 23, float %5807)  ; Log(value)
  %5809 = fmul fast float %5808, 5.000000e+00
  %5810 = call float @dx.op.unary.f32(i32 21, float %5809)  ; Exp(value)
  %5811 = fmul fast float %5810, 0x3FEF591A60000000
  %5812 = fadd fast float %5811, 0x3F94DCB540000000
  %5813 = select i1 %5805, float %5812, float 1.000000e+00
  %5814 = fcmp fast oge float %5813, 1.000000e+00
  %5815 = fmul fast float %5798, 2.000000e+00
  %5816 = fadd fast float %5815, %5433
  %5817 = select i1 %5814, float %5816, float %5433
  %5818 = fsub fast float %5817, %5433
  %5819 = fmul fast float %5818, %5793
  %5820 = fadd fast float %5819, %5433
  %5821 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5820, float %5431, float %5432, float %5820)  ; Dot3(ax,ay,az,bx,by,bz)
  %5822 = call float @dx.op.unary.f32(i32 25, float %5821)  ; Rsqrt(value)
  %5823 = fmul fast float %5822, %5431
  %5824 = fmul fast float %5822, %5432
  %5825 = fmul fast float %5820, %5822
  br label %5826

; <label>:5826                                    ; preds = %5797, %5754
  %5827 = phi float [ %5823, %5797 ], [ %5431, %5754 ]
  %5828 = phi float [ %5824, %5797 ], [ %5432, %5754 ]
  %5829 = phi float [ %5825, %5797 ], [ %5433, %5754 ]
  %5830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.i32 %5830, 2
  %5832 = add nsw i32 %5831, -1
  %5833 = call i32 @dx.op.binary.i32(i32 37, i32 %5832, i32 0)  ; IMax(a,b)
  %5834 = shl i32 %5791, 2
  %5835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %5834, i32 undef)  ; BufferLoad(srv,index,wot)
  %5836 = extractvalue %dx.types.ResRet.i32 %5835, 0
  %5837 = lshr i32 %5836, 16
  %5838 = and i32 %5836, 65535
  %5839 = lshr i32 %5836, 21
  %5840 = lshr i32 %5838, 5
  %5841 = call i32 @dx.op.binary.i32(i32 40, i32 %5840, i32 %5833)  ; UMin(a,b)
  %5842 = icmp ugt i32 %5839, %5841
  br i1 %5842, label %6206, label %5843

; <label>:5843                                    ; preds = %5826
  br label %5844

; <label>:5844                                    ; preds = %6198, %5843
  %5845 = phi float [ %6199, %6198 ], [ 0.000000e+00, %5843 ]
  %5846 = phi float [ %6200, %6198 ], [ 0.000000e+00, %5843 ]
  %5847 = phi float [ %6201, %6198 ], [ 0.000000e+00, %5843 ]
  %5848 = phi float [ %6202, %6198 ], [ 1.000000e+00, %5843 ]
  %5849 = phi i32 [ %6203, %6198 ], [ %5839, %5843 ]
  %5850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.i32 %5850, 2
  %5852 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5787, i32 %5851, i32 %5849)  ; UMad(a,b,c)
  %5853 = shl i32 %5852, 2
  %5854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %5853, i32 undef)  ; BufferLoad(srv,index,wot)
  %5855 = extractvalue %dx.types.ResRet.i32 %5854, 0
  %5856 = shl i32 %5849, 5
  %5857 = sub nsw i32 %5837, %5856
  %5858 = call i32 @dx.op.binary.i32(i32 37, i32 %5857, i32 0)  ; IMax(a,b)
  %5859 = call i32 @dx.op.binary.i32(i32 38, i32 %5858, i32 31)  ; IMin(a,b)
  %5860 = sub nsw i32 1, %5837
  %5861 = add nsw i32 %5860, %5838
  %5862 = call i32 @dx.op.binary.i32(i32 37, i32 %5861, i32 0)  ; IMax(a,b)
  %5863 = call i32 @dx.op.binary.i32(i32 38, i32 %5862, i32 32)  ; IMin(a,b)
  %5864 = and i32 %5863, 31
  %5865 = shl i32 -1, %5864
  %5866 = xor i32 %5865, -1
  %5867 = and i32 %5859, 31
  %5868 = shl i32 %5866, %5867
  %5869 = icmp eq i32 %5863, 32
  %5870 = select i1 %5869, i32 -1, i32 %5868
  %5871 = and i32 %5870, %5855
  %5872 = icmp eq i32 %5871, 0
  br i1 %5872, label %6198, label %5873

; <label>:5873                                    ; preds = %5844
  br label %5874

; <label>:5874                                    ; preds = %5981, %5873
  %5875 = phi float [ %5982, %5981 ], [ %5845, %5873 ]
  %5876 = phi float [ %5983, %5981 ], [ %5846, %5873 ]
  %5877 = phi float [ %5984, %5981 ], [ %5847, %5873 ]
  %5878 = phi float [ %5985, %5981 ], [ %5848, %5873 ]
  %5879 = phi i32 [ %5884, %5981 ], [ %5871, %5873 ]
  %5880 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5879)  ; FirstbitLo(value)
  %5881 = add i32 %5880, %5856
  %5882 = and i32 %5880, 31
  %5883 = shl i32 1, %5882
  %5884 = xor i32 %5883, %5879
  %5885 = mul i32 %5881, 72
  %5886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5885, i32 undef)  ; BufferLoad(srv,index,wot)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.ResRet.f32 %5886, 1
  %5889 = extractvalue %dx.types.ResRet.f32 %5886, 2
  %5890 = add i32 %5885, 12
  %5891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %5890, i32 undef)  ; BufferLoad(srv,index,wot)
  %5892 = extractvalue %dx.types.ResRet.i32 %5891, 0
  %5893 = add i32 %5885, 16
  %5894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5893, i32 undef)  ; BufferLoad(srv,index,wot)
  %5895 = extractvalue %dx.types.ResRet.f32 %5894, 0
  %5896 = extractvalue %dx.types.ResRet.f32 %5894, 1
  %5897 = extractvalue %dx.types.ResRet.f32 %5894, 2
  %5898 = add i32 %5885, 28
  %5899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5898, i32 undef)  ; BufferLoad(srv,index,wot)
  %5900 = extractvalue %dx.types.ResRet.f32 %5899, 0
  %5901 = add i32 %5885, 32
  %5902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5901, i32 undef)  ; BufferLoad(srv,index,wot)
  %5903 = extractvalue %dx.types.ResRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.ResRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.ResRet.f32 %5902, 2
  %5906 = extractvalue %dx.types.ResRet.f32 %5902, 3
  %5907 = add i32 %5885, 48
  %5908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5907, i32 undef)  ; BufferLoad(srv,index,wot)
  %5909 = extractvalue %dx.types.ResRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.ResRet.f32 %5908, 1
  %5911 = add i32 %5885, 56
  %5912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5911, i32 undef)  ; BufferLoad(srv,index,wot)
  %5913 = extractvalue %dx.types.ResRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.ResRet.f32 %5912, 1
  %5915 = add i32 %5885, 64
  %5916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %48, i32 %5915, i32 undef)  ; BufferLoad(srv,index,wot)
  %5917 = extractvalue %dx.types.ResRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.ResRet.f32 %5916, 1
  %5919 = mul i32 %5881, 60
  %5920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5919, i32 undef)  ; BufferLoad(srv,index,wot)
  %5921 = extractvalue %dx.types.ResRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.ResRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.ResRet.f32 %5920, 2
  %5924 = add i32 %5919, 12
  %5925 = add i32 %5919, 48
  %5926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5925, i32 undef)  ; BufferLoad(srv,index,wot)
  %5927 = extractvalue %dx.types.ResRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.ResRet.f32 %5926, 1
  %5929 = extractvalue %dx.types.ResRet.f32 %5926, 2
  %5930 = and i32 %5892, 32767
  %5931 = bitcast float %5887 to i32
  %5932 = icmp eq i32 %5931, -1
  %5933 = bitcast float %5888 to i32
  %5934 = and i32 %5892, 32768
  %5935 = icmp ne i32 %5934, 0
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5940 = fsub fast float %5921, %5937
  %5941 = fsub fast float %5922, %5938
  %5942 = fsub fast float %5923, %5939
  %5943 = fsub fast float %170, %5940
  %5944 = fsub fast float %171, %5941
  %5945 = fsub fast float %172, %5942
  %5946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5924, i32 undef)  ; BufferLoad(srv,index,wot)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.ResRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.ResRet.f32 %5946, 2
  %5950 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %5947, float %5948, float %5949)  ; Dot3(ax,ay,az,bx,by,bz)
  %5951 = add i32 %5919, 24
  %5952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5951, i32 undef)  ; BufferLoad(srv,index,wot)
  %5953 = extractvalue %dx.types.ResRet.f32 %5952, 0
  %5954 = extractvalue %dx.types.ResRet.f32 %5952, 1
  %5955 = extractvalue %dx.types.ResRet.f32 %5952, 2
  %5956 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %5953, float %5954, float %5955)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = add i32 %5919, 36
  %5958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %47, i32 %5957, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.ResRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.ResRet.f32 %5958, 2
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = call float @dx.op.unary.f32(i32 6, float %5950)  ; FAbs(value)
  %5964 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %5965 = call float @dx.op.unary.f32(i32 6, float %5962)  ; FAbs(value)
  %5966 = fsub fast float %5927, %5963
  %5967 = fsub fast float %5928, %5964
  %5968 = fsub fast float %5929, %5965
  %5969 = fmul fast float %5966, %5895
  %5970 = fmul fast float %5967, %5896
  %5971 = fmul fast float %5968, %5897
  %5972 = call float @dx.op.binary.f32(i32 36, float %5970, float %5971)  ; FMin(a,b)
  %5973 = call float @dx.op.binary.f32(i32 36, float %5969, float %5972)  ; FMin(a,b)
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = call float @dx.op.binary.f32(i32 36, float %5878, float %5974)  ; FMin(a,b)
  %5976 = uitofp i1 %5935 to float
  %5977 = fadd fast float %5793, 1.000000e+00
  %5978 = fsub fast float %5977, %5976
  %5979 = fmul fast float %5975, %5978
  %5980 = fcmp fast ogt float %5979, 0.000000e+00
  br i1 %5980, label %5987, label %5981

; <label>:5981                                    ; preds = %6129, %5874
  %5982 = phi float [ %6193, %6129 ], [ %5875, %5874 ]
  %5983 = phi float [ %6194, %6129 ], [ %5876, %5874 ]
  %5984 = phi float [ %6195, %6129 ], [ %5877, %5874 ]
  %5985 = phi float [ %6196, %6129 ], [ %5878, %5874 ]
  %5986 = icmp eq i32 %5879, %5883
  br i1 %5986, label %6197, label %5874

; <label>:5987                                    ; preds = %5874
  br i1 %5932, label %6045, label %5988

; <label>:5988                                    ; preds = %5987
  %5989 = fsub fast float -0.000000e+00, %5947
  %5990 = fsub fast float -0.000000e+00, %5948
  %5991 = fsub fast float -0.000000e+00, %5949
  %5992 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %5989, float %5990, float %5991)  ; Dot3(ax,ay,az,bx,by,bz)
  %5993 = fsub fast float -0.000000e+00, %5992
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %5989, float %5990, float %5991)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = fadd fast float %5994, %5910
  %5996 = fadd fast float %5909, %5994
  %5997 = fsub fast float -0.000000e+00, %5996
  %5998 = fcmp ogt float %5992, -0.000000e+00
  %5999 = select i1 %5998, float %5997, float %5995
  %6000 = call float @dx.op.unary.f32(i32 6, float %5993)  ; FAbs(value)
  %6001 = fdiv fast float 1.000000e+00, %6000
  %6002 = fmul fast float %5999, %6001
  %6003 = call float @dx.op.binary.f32(i32 35, float %6002, float 0.000000e+00)  ; FMax(a,b)
  %6004 = fsub fast float -0.000000e+00, %5953
  %6005 = fsub fast float -0.000000e+00, %5954
  %6006 = fsub fast float -0.000000e+00, %5955
  %6007 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %6004, float %6005, float %6006)  ; Dot3(ax,ay,az,bx,by,bz)
  %6008 = fsub fast float -0.000000e+00, %6007
  %6009 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %6004, float %6005, float %6006)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = fadd fast float %6009, %5914
  %6011 = fadd fast float %5913, %6009
  %6012 = fsub fast float -0.000000e+00, %6011
  %6013 = fcmp ogt float %6007, -0.000000e+00
  %6014 = select i1 %6013, float %6012, float %6010
  %6015 = call float @dx.op.unary.f32(i32 6, float %6008)  ; FAbs(value)
  %6016 = fdiv fast float 1.000000e+00, %6015
  %6017 = fmul fast float %6014, %6016
  %6018 = call float @dx.op.binary.f32(i32 35, float %6017, float 0.000000e+00)  ; FMax(a,b)
  %6019 = fsub fast float -0.000000e+00, %5959
  %6020 = fsub fast float -0.000000e+00, %5960
  %6021 = fsub fast float -0.000000e+00, %5961
  %6022 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = fsub fast float -0.000000e+00, %6022
  %6024 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6025 = fadd fast float %6024, %5918
  %6026 = fadd fast float %5917, %6024
  %6027 = fsub fast float -0.000000e+00, %6026
  %6028 = fcmp ogt float %6022, -0.000000e+00
  %6029 = select i1 %6028, float %6027, float %6025
  %6030 = call float @dx.op.unary.f32(i32 6, float %6023)  ; FAbs(value)
  %6031 = fdiv fast float 1.000000e+00, %6030
  %6032 = fmul fast float %6029, %6031
  %6033 = call float @dx.op.binary.f32(i32 35, float %6032, float 0.000000e+00)  ; FMax(a,b)
  %6034 = call float @dx.op.binary.f32(i32 36, float %6018, float %6033)  ; FMin(a,b)
  %6035 = call float @dx.op.binary.f32(i32 36, float %6003, float %6034)  ; FMin(a,b)
  %6036 = fmul fast float %6035, %5827
  %6037 = fmul fast float %6035, %5828
  %6038 = fmul fast float %6035, %5829
  %6039 = fadd fast float %6036, %170
  %6040 = fadd fast float %6037, %171
  %6041 = fadd fast float %6038, %172
  %6042 = fsub fast float %6039, %5887
  %6043 = fsub fast float %6040, %5888
  %6044 = fsub fast float %6041, %5889
  br label %6052

; <label>:6045                                    ; preds = %5987
  %6046 = fmul fast float %5827, 8.096000e+03
  %6047 = fmul fast float %5828, 8.096000e+03
  %6048 = fmul fast float %5829, 8.096000e+03
  %6049 = fadd fast float %6046, %170
  %6050 = fadd fast float %6047, %171
  %6051 = fadd fast float %6048, %172
  br label %6052

; <label>:6052                                    ; preds = %6045, %5988
  %6053 = phi float [ %5827, %6045 ], [ %6042, %5988 ]
  %6054 = phi float [ %5828, %6045 ], [ %6043, %5988 ]
  %6055 = phi float [ %5829, %6045 ], [ %6044, %5988 ]
  %6056 = phi float [ %6049, %6045 ], [ %6039, %5988 ]
  %6057 = phi float [ %6050, %6045 ], [ %6040, %5988 ]
  %6058 = phi float [ %6051, %6045 ], [ %6041, %5988 ]
  %6059 = fcmp fast olt float %5906, 1.000000e+00
  br i1 %6059, label %6060, label %6091, !dx.controlflow.hints !100

; <label>:6060                                    ; preds = %6052
  %6061 = fmul fast float %6055, %5904
  %6062 = fmul fast float %6054, %5905
  %6063 = fsub fast float %6061, %6062
  %6064 = fmul fast float %6053, %5905
  %6065 = fmul fast float %6055, %5903
  %6066 = fsub fast float %6064, %6065
  %6067 = fmul fast float %6054, %5903
  %6068 = fmul fast float %6053, %5904
  %6069 = fsub fast float %6067, %6068
  %6070 = fmul fast float %6063, 2.000000e+00
  %6071 = fmul fast float %6066, 2.000000e+00
  %6072 = fmul fast float %6069, 2.000000e+00
  %6073 = fmul fast float %6070, %5906
  %6074 = fmul fast float %6071, %5906
  %6075 = fmul fast float %6072, %5906
  %6076 = fmul fast float %6072, %5904
  %6077 = fmul fast float %6071, %5905
  %6078 = fmul fast float %6070, %5905
  %6079 = fmul fast float %6072, %5903
  %6080 = fmul fast float %6071, %5903
  %6081 = fmul fast float %6070, %5904
  %6082 = fadd fast float %6076, %6053
  %6083 = fadd fast float %6082, %6073
  %6084 = fsub fast float %6083, %6077
  %6085 = fsub fast float %6054, %6079
  %6086 = fadd fast float %6085, %6074
  %6087 = fadd fast float %6086, %6078
  %6088 = fadd fast float %6075, %6055
  %6089 = fsub fast float %6088, %6081
  %6090 = fadd fast float %6089, %6080
  br label %6091

; <label>:6091                                    ; preds = %6060, %6052
  %6092 = phi float [ %6084, %6060 ], [ %6053, %6052 ]
  %6093 = phi float [ %6087, %6060 ], [ %6054, %6052 ]
  %6094 = phi float [ %6090, %6060 ], [ %6055, %6052 ]
  br i1 %5932, label %6126, label %6095

; <label>:6095                                    ; preds = %6091
  %6096 = fmul fast float %5420, 0x400187C840000000
  %6097 = fadd fast float %6096, 0xC00EFC2120000000
  %6098 = fmul fast float %6097, %5420
  %6099 = fadd fast float %6098, 0x3FE5D16340000000
  %6100 = fmul fast float %6099, %5420
  %6101 = fadd fast float %6100, 1.000000e+00
  %6102 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6103 = fsub fast float %6056, %170
  %6104 = fsub fast float %6057, %171
  %6105 = fsub fast float %6058, %172
  %6106 = fsub fast float %6056, %5887
  %6107 = fsub fast float %6057, %5888
  %6108 = fsub fast float %6058, %5889
  %6109 = call float @dx.op.dot3.f32(i32 55, float %6103, float %6104, float %6105, float %6103, float %6104, float %6105)  ; Dot3(ax,ay,az,bx,by,bz)
  %6110 = call float @dx.op.dot3.f32(i32 55, float %6106, float %6107, float %6108, float %6106, float %6107, float %6108)  ; Dot3(ax,ay,az,bx,by,bz)
  %6111 = fadd fast float %6110, 0x3EE4F8B580000000
  %6112 = fdiv fast float %6109, %6111
  %6113 = bitcast float %6112 to i32
  %6114 = ashr i32 %6113, 1
  %6115 = add nsw i32 %6114, 532487669
  %6116 = bitcast i32 %6115 to float
  %6117 = fmul fast float %6116, %6102
  %6118 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  %6119 = fmul fast float %6118, 0x4009981AE0000000
  %6120 = fsub fast float 0x40111BBD80000000, %6119
  %6121 = fmul fast float %6120, %6118
  %6122 = fadd fast float %6121, 0xC0009F6020000000
  %6123 = fmul fast float %6122, %6118
  %6124 = fadd fast float %6123, 1.000000e+00
  %6125 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  br label %6129

; <label>:6126                                    ; preds = %6091
  %6127 = icmp ne i32 %5933, -1
  %6128 = zext i1 %6127 to i32
  br label %6129

; <label>:6129                                    ; preds = %6126, %6095
  %6130 = phi float [ %5420, %6126 ], [ %6125, %6095 ]
  %6131 = phi i32 [ %6128, %6126 ], [ 0, %6095 ]
  %6132 = fmul float %6130, 5.000000e+00
  %6133 = fsub float 5.000000e+00, %6132
  %6134 = icmp ne i32 %6131, 0
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6137 = fadd fast float %6136, %6133
  %6138 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6137)  ; FMax(a,b)
  %6139 = call float @dx.op.unary.f32(i32 6, float %6092)  ; FAbs(value)
  %6140 = call float @dx.op.unary.f32(i32 6, float %6093)  ; FAbs(value)
  %6141 = fadd fast float %6140, %6139
  %6142 = call float @dx.op.unary.f32(i32 6, float %6094)  ; FAbs(value)
  %6143 = fadd fast float %6141, %6142
  %6144 = fcmp fast oeq float %6143, 0.000000e+00
  %6145 = fdiv fast float 1.000000e+00, %6143
  %6146 = select i1 %6144, float 1.000000e+00, float %6145
  %6147 = fmul fast float %6146, %6092
  %6148 = fmul fast float %6146, %6093
  %6149 = call float @dx.op.unary.f32(i32 6, float %6148)  ; FAbs(value)
  %6150 = call float @dx.op.unary.f32(i32 6, float %6147)  ; FAbs(value)
  %6151 = fsub fast float 1.000000e+00, %6149
  %6152 = fsub fast float 1.000000e+00, %6150
  %6153 = fcmp fast oge float %6147, 0.000000e+00
  %6154 = fcmp fast oge float %6148, 0.000000e+00
  %6155 = select i1 %6153, float 1.000000e+00, float -1.000000e+00
  %6156 = select i1 %6154, float 1.000000e+00, float -1.000000e+00
  %6157 = fcmp fast ole float %6094, 0.000000e+00
  %6158 = fmul fast float %6155, %6151
  %6159 = fmul fast float %6156, %6152
  %6160 = select i1 %6157, float %6158, float %6147
  %6161 = select i1 %6157, float %6159, float %6148
  %6162 = fmul fast float %6160, 5.000000e-01
  %6163 = fmul fast float %6161, 5.000000e-01
  %6164 = fadd fast float %6162, 5.000000e-01
  %6165 = fadd fast float %6163, 5.000000e-01
  %6166 = uitofp i32 %5930 to float
  %6167 = call float @dx.op.binary.f32(i32 36, float %6138, float 3.000000e+00)  ; FMin(a,b)
  %6168 = fadd fast float %6167, 2.000000e+00
  %6169 = call float @dx.op.unary.f32(i32 21, float %6168)  ; Exp(value)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6171 = fmul fast float %6170, %6169
  %6172 = fmul fast float %6171, 2.000000e+00
  %6173 = fsub fast float 1.000000e+00, %6172
  %6174 = fmul fast float %6164, %6173
  %6175 = fmul fast float %6165, %6173
  %6176 = fadd fast float %6174, %6171
  %6177 = fadd fast float %6175, %6171
  %6178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %52, float %6176, float %6177, float %6166, float undef, i32 0, i32 0, i32 undef, float %6138)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6179 = extractvalue %dx.types.ResRet.f32 %6178, 0
  %6180 = extractvalue %dx.types.ResRet.f32 %6178, 1
  %6181 = extractvalue %dx.types.ResRet.f32 %6178, 2
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 3
  %6184 = fmul fast float %6183, %5900
  %6185 = call float @dx.op.binary.f32(i32 36, float %5452, float %6184)  ; FMin(a,b)
  %6186 = select i1 %6134, float %6185, float %6184
  %6187 = fmul fast float %6179, %5979
  %6188 = fmul fast float %6187, %6186
  %6189 = fmul fast float %6180, %5979
  %6190 = fmul fast float %6189, %6186
  %6191 = fmul fast float %6181, %5979
  %6192 = fmul fast float %6191, %6186
  %6193 = fadd fast float %6188, %5875
  %6194 = fadd fast float %6190, %5876
  %6195 = fadd fast float %6192, %5877
  %6196 = fsub fast float %5878, %5979
  br label %5981

; <label>:6197                                    ; preds = %5981
  br label %6198

; <label>:6198                                    ; preds = %6197, %5844
  %6199 = phi float [ %5845, %5844 ], [ %5982, %6197 ]
  %6200 = phi float [ %5846, %5844 ], [ %5983, %6197 ]
  %6201 = phi float [ %5847, %5844 ], [ %5984, %6197 ]
  %6202 = phi float [ %5848, %5844 ], [ %5985, %6197 ]
  %6203 = add i32 %5849, 1
  %6204 = icmp ugt i32 %6203, %5841
  br i1 %6204, label %6205, label %5844, !llvm.loop !101

; <label>:6205                                    ; preds = %6198
  br label %6206

; <label>:6206                                    ; preds = %6205, %5826
  %6207 = phi float [ 0.000000e+00, %5826 ], [ %6199, %6205 ]
  %6208 = phi float [ 0.000000e+00, %5826 ], [ %6200, %6205 ]
  %6209 = phi float [ 0.000000e+00, %5826 ], [ %6201, %6205 ]
  %6210 = call float @dx.op.dot3.f32(i32 55, float %6207, float %6208, float %6209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6211 = select i1 %232, float 0.000000e+00, float %6207
  %6212 = select i1 %232, float %6210, float %6208
  %6213 = select i1 %232, float 0.000000e+00, float %6209
  %6214 = fcmp fast olt float %5752, 0.000000e+00
  %6215 = call float @dx.op.unary.f32(i32 6, float %5752)  ; FAbs(value)
  %6216 = fmul fast float %6215, %5692
  %6217 = fmul fast float %6215, %5693
  %6218 = fmul fast float %6215, %5694
  %6219 = select i1 %6214, float %5692, float %6216
  %6220 = select i1 %6214, float %5693, float %6217
  %6221 = select i1 %6214, float %5694, float %6218
  %6222 = fsub fast float 1.000000e+00, %6215
  %6223 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6224 = fmul fast float %6223, %6211
  %6225 = fmul fast float %6223, %6212
  %6226 = fmul fast float %6223, %6213
  %6227 = fadd fast float %6219, %6224
  %6228 = fadd fast float %6220, %6225
  %6229 = fadd fast float %6221, %6226
  br label %6230

; <label>:6230                                    ; preds = %6206, %5735
  %6231 = phi float [ %5692, %5735 ], [ %6227, %6206 ]
  %6232 = phi float [ %5693, %5735 ], [ %6228, %6206 ]
  %6233 = phi float [ %5694, %5735 ], [ %6229, %6206 ]
  %6234 = call float @dx.op.dot3.f32(i32 55, float %5411, float %5412, float %5413, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6235 = fcmp fast ogt float %6234, 0x3E7FF19E20000000
  %6236 = fdiv fast float 1.000000e+00, %6234
  %6237 = select i1 %6235, float %6236, float 0.000000e+00
  %6238 = fmul fast float %6237, %5411
  %6239 = fmul fast float %6237, %5412
  %6240 = fmul fast float %6237, %5413
  %6241 = fadd fast float %6238, -1.000000e+00
  %6242 = fadd fast float %6239, -1.000000e+00
  %6243 = fadd fast float %6240, -1.000000e+00
  %6244 = fmul fast float %6241, 5.000000e-01
  %6245 = fmul fast float %6242, 5.000000e-01
  %6246 = fmul fast float %6243, 5.000000e-01
  %6247 = fadd fast float %6244, 1.000000e+00
  %6248 = fadd fast float %6245, 1.000000e+00
  %6249 = fadd fast float %6246, 1.000000e+00
  %6250 = fmul fast float %5741, %4833
  %6251 = fmul fast float %5741, %4834
  %6252 = fmul fast float %5741, %4835
  %6253 = fadd fast float %6250, -1.000000e+00
  %6254 = fadd fast float %6251, -1.000000e+00
  %6255 = fadd fast float %6252, -1.000000e+00
  %6256 = fmul fast float %6253, %4739
  %6257 = fmul fast float %6254, %4739
  %6258 = fmul fast float %6255, %4739
  %6259 = fmul fast float %6231, %5736
  %6260 = fmul fast float %6232, %5737
  %6261 = fmul fast float %6233, %5738
  %6262 = fsub fast float 1.000000e+00, %5425
  %6263 = bitcast float %6262 to i32
  %6264 = sitofp i32 %6263 to float
  %6265 = fmul fast float %6264, 5.000000e+00
  %6266 = fadd fast float %6265, 0xC1EFBF8940000000
  %6267 = fptosi float %6266 to i32
  %6268 = bitcast i32 %6267 to float
  %6269 = fmul fast float %6268, %4743
  %6270 = fmul fast float %5684, %6269
  %6271 = fmul fast float %6270, %5741
  %6272 = fmul fast float %6271, %6247
  %6273 = fmul fast float %5685, %6269
  %6274 = fmul fast float %6273, %5741
  %6275 = fmul fast float %6274, %6248
  %6276 = fmul fast float %5686, %6269
  %6277 = fmul fast float %6276, %5741
  %6278 = fmul fast float %6277, %6249
  %6279 = fadd fast float %6259, %4729
  %6280 = fadd fast float %6279, %6272
  %6281 = fmul fast float %6280, %4739
  %6282 = fadd fast float %6260, %4730
  %6283 = fadd fast float %6282, %6275
  %6284 = fmul fast float %6283, %4739
  %6285 = fadd fast float %6261, %4731
  %6286 = fadd fast float %6285, %6278
  %6287 = fmul fast float %6286, %4739
  %6288 = fadd fast float %6258, 1.000000e+00
  %6289 = fadd fast float %6257, 1.000000e+00
  %6290 = fadd fast float %6256, 1.000000e+00
  %6291 = fmul fast float %5741, %5686
  %6292 = fmul fast float %5741, %5685
  %6293 = fmul fast float %5741, %5684
  %6294 = fmul fast float %6290, %5688
  %6295 = fmul fast float %6289, %5689
  %6296 = fmul fast float %6288, %5690
  %6297 = fadd fast float %6294, %6293
  %6298 = fmul fast float %6297, %4739
  %6299 = fadd fast float %6295, %6292
  %6300 = fmul fast float %6299, %4739
  %6301 = fadd fast float %6296, %6291
  %6302 = fmul fast float %6301, %4739
  %6303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6304 = extractvalue %dx.types.CBufRet.f32 %6303, 3
  %6305 = fcmp fast oeq float %6304, 0.000000e+00
  br i1 %6305, label %7901, label %6306

; <label>:6306                                    ; preds = %6230
  %6307 = extractvalue %dx.types.CBufRet.f32 %6303, 0
  %6308 = extractvalue %dx.types.CBufRet.f32 %6303, 1
  %6309 = extractvalue %dx.types.CBufRet.f32 %6303, 2
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.CBufRet.f32 %6310, 1
  %6313 = extractvalue %dx.types.CBufRet.f32 %6310, 2
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.CBufRet.f32 %6314, 1
  %6317 = call float @dx.op.dot3.f32(i32 55, float %6311, float %6312, float %6313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6318 = select i1 %232, float %6315, float %6311
  %6319 = select i1 %232, float %6317, float %6312
  %6320 = select i1 %232, float %6316, float %6313
  %6321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6322 = extractvalue %dx.types.CBufRet.f32 %6321, 2
  %6323 = fmul fast float %6322, %120
  %6324 = fmul fast float %6322, %122
  %6325 = fmul fast float %6322, %124
  %6326 = fadd fast float %6323, %170
  %6327 = fadd fast float %6324, %171
  %6328 = fadd fast float %6325, %172
  %6329 = fcmp fast olt float %6304, 0.000000e+00
  br i1 %6329, label %7425, label %6330

; <label>:6330                                    ; preds = %6306
  %6331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.CBufRet.f32 %6331, 1
  %6334 = extractvalue %dx.types.CBufRet.f32 %6331, 2
  %6335 = extractvalue %dx.types.CBufRet.f32 %6331, 3
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6339 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6340 = extractvalue %dx.types.CBufRet.f32 %6336, 3
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6344 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6345 = extractvalue %dx.types.CBufRet.f32 %6341, 3
  %6346 = fmul fast float %6332, %6326
  %6347 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6333, float %6346)  ; FMad(a,b,c)
  %6348 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6334, float %6347)  ; FMad(a,b,c)
  %6349 = fadd fast float %6348, %6335
  %6350 = fmul fast float %6337, %6326
  %6351 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6338, float %6350)  ; FMad(a,b,c)
  %6352 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6339, float %6351)  ; FMad(a,b,c)
  %6353 = fadd fast float %6352, %6340
  %6354 = fmul fast float %6342, %6326
  %6355 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6343, float %6354)  ; FMad(a,b,c)
  %6356 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6344, float %6355)  ; FMad(a,b,c)
  %6357 = fadd fast float %6356, %6345
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6360 = extractvalue %dx.types.CBufRet.f32 %6358, 1
  %6361 = extractvalue %dx.types.CBufRet.f32 %6358, 3
  %6362 = fmul fast float %6361, %6349
  %6363 = fmul fast float %6361, %6353
  %6364 = fadd fast float %6362, %6359
  %6365 = fadd fast float %6363, %6360
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.CBufRet.f32 %6366, 1
  %6369 = extractvalue %dx.types.CBufRet.f32 %6366, 3
  %6370 = fmul fast float %6369, %6349
  %6371 = fmul fast float %6369, %6353
  %6372 = fadd fast float %6370, %6367
  %6373 = fadd fast float %6371, %6368
  %6374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6375 = extractvalue %dx.types.CBufRet.f32 %6374, 1
  %6376 = fsub fast float %6375, %6357
  %6377 = extractvalue %dx.types.CBufRet.f32 %6374, 2
  %6378 = fmul fast float %6376, %6377
  %6379 = fsub fast float 1.000000e+00, %6378
  %6380 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6366, 2
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 2
  %6384 = fadd fast float %6383, %6381
  %6385 = fcmp fast ogt float %6384, 0.000000e+00
  br i1 %6385, label %6386, label %6410

; <label>:6386                                    ; preds = %6330
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6389 = extractvalue %dx.types.CBufRet.f32 %6387, 1
  %6390 = fsub fast float %6372, %6388
  %6391 = fsub fast float %6373, %6389
  %6392 = fcmp fast olt float %6390, 0.000000e+00
  %6393 = fcmp fast olt float %6391, 0.000000e+00
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6399 = select i1 %6392, float %6395, float %6397
  %6400 = select i1 %6393, float %6396, float %6398
  %6401 = fmul fast float %6399, %6390
  %6402 = fmul fast float %6400, %6391
  %6403 = call float @dx.op.unary.f32(i32 6, float %6401)  ; FAbs(value)
  %6404 = call float @dx.op.unary.f32(i32 6, float %6402)  ; FAbs(value)
  %6405 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  %6406 = call float @dx.op.binary.f32(i32 35, float %6403, float %6404)  ; FMax(a,b)
  %6407 = fsub fast float %6405, %6406
  %6408 = call float @dx.op.unary.f32(i32 7, float %6407)  ; Saturate(value)
  %6409 = fmul fast float %6408, %6380
  br label %6410

; <label>:6410                                    ; preds = %6386, %6330
  %6411 = phi float [ %6409, %6386 ], [ 0.000000e+00, %6330 ]
  %6412 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6413 = extractvalue %dx.types.CBufRet.f32 %6382, 1
  %6414 = fadd fast float %6413, %6412
  %6415 = fcmp fast ogt float %6414, 0.000000e+00
  %6416 = extractvalue %dx.types.CBufRet.f32 %6321, 0
  br i1 %6415, label %6417, label %6440

; <label>:6417                                    ; preds = %6410
  %6418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.CBufRet.f32 %6418, 1
  %6421 = fsub fast float %6364, %6419
  %6422 = fsub fast float %6365, %6420
  %6423 = fcmp fast olt float %6421, 0.000000e+00
  %6424 = fcmp fast olt float %6422, 0.000000e+00
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.CBufRet.f32 %6425, 2
  %6429 = extractvalue %dx.types.CBufRet.f32 %6425, 3
  %6430 = select i1 %6423, float %6426, float %6428
  %6431 = select i1 %6424, float %6427, float %6429
  %6432 = fmul fast float %6430, %6421
  %6433 = fmul fast float %6431, %6422
  %6434 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6435 = call float @dx.op.unary.f32(i32 6, float %6433)  ; FAbs(value)
  %6436 = call float @dx.op.binary.f32(i32 35, float %6434, float %6435)  ; FMax(a,b)
  %6437 = fsub fast float %6416, %6436
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = fmul fast float %6438, %6380
  br label %6440

; <label>:6440                                    ; preds = %6417, %6410
  %6441 = phi float [ %6439, %6417 ], [ 0.000000e+00, %6410 ]
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6444 = call float @dx.op.unary.f32(i32 7, float %6443)  ; Saturate(value)
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 0
  %6447 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6448 = fsub fast float %6349, %6446
  %6449 = fsub fast float %6353, %6447
  %6450 = fcmp fast olt float %6448, 0.000000e+00
  %6451 = fcmp fast olt float %6449, 0.000000e+00
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6456 = extractvalue %dx.types.CBufRet.f32 %6452, 3
  %6457 = select i1 %6450, float %6453, float %6455
  %6458 = select i1 %6451, float %6454, float %6456
  %6459 = fmul fast float %6457, %6448
  %6460 = fmul fast float %6458, %6449
  %6461 = call float @dx.op.unary.f32(i32 6, float %6459)  ; FAbs(value)
  %6462 = call float @dx.op.unary.f32(i32 6, float %6460)  ; FAbs(value)
  %6463 = call float @dx.op.binary.f32(i32 35, float %6461, float %6462)  ; FMax(a,b)
  %6464 = fsub fast float %6416, %6463
  %6465 = call float @dx.op.unary.f32(i32 7, float %6464)  ; Saturate(value)
  %6466 = call float @dx.op.binary.f32(i32 36, float %6465, float %6444)  ; FMin(a,b)
  %6467 = fmul fast float %6466, %6380
  %6468 = fsub fast float %6441, %6467
  %6469 = fsub fast float %6411, %6441
  %6470 = fsub fast float %6469, %6467
  %6471 = call float @dx.op.binary.f32(i32 35, float %6441, float %6411)  ; FMax(a,b)
  %6472 = call float @dx.op.binary.f32(i32 35, float %6467, float %6471)  ; FMax(a,b)
  %6473 = fcmp fast olt float %6472, 1.000000e+00
  br i1 %6473, label %6474, label %6872, !dx.controlflow.hints !103

; <label>:6474                                    ; preds = %6440
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 0
  %6477 = fcmp fast une float %6476, 0.000000e+00
  br i1 %6477, label %6478, label %6872, !dx.controlflow.hints !104

; <label>:6478                                    ; preds = %6474
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.CBufRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6483 = extractvalue %dx.types.CBufRet.f32 %6479, 3
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = extractvalue %dx.types.CBufRet.f32 %6484, 1
  %6487 = extractvalue %dx.types.CBufRet.f32 %6484, 2
  %6488 = extractvalue %dx.types.CBufRet.f32 %6484, 3
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6493 = extractvalue %dx.types.CBufRet.f32 %6489, 3
  %6494 = fmul fast float %6480, %6326
  %6495 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6481, float %6494)  ; FMad(a,b,c)
  %6496 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6482, float %6495)  ; FMad(a,b,c)
  %6497 = fadd fast float %6496, %6483
  %6498 = fmul fast float %6485, %6326
  %6499 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6486, float %6498)  ; FMad(a,b,c)
  %6500 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6487, float %6499)  ; FMad(a,b,c)
  %6501 = fadd fast float %6500, %6488
  %6502 = fmul fast float %6490, %6326
  %6503 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %6491, float %6502)  ; FMad(a,b,c)
  %6504 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %6492, float %6503)  ; FMad(a,b,c)
  %6505 = fadd fast float %6504, %6493
  %6506 = fcmp fast oge float %6497, 1.000000e+00
  %6507 = fcmp fast oge float %6501, 1.000000e+00
  %6508 = or i1 %6506, %6507
  %6509 = fcmp fast olt float %6497, 0.000000e+00
  %6510 = fcmp fast olt float %6501, 0.000000e+00
  %6511 = or i1 %6509, %6510
  %6512 = or i1 %6508, %6511
  br i1 %6512, label %6872, label %6513, !dx.controlflow.hints !105

; <label>:6513                                    ; preds = %6478
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6519 = extractvalue %dx.types.CBufRet.i32 %6518, 2
  %6520 = uitofp i32 %6519 to float
  %6521 = extractvalue %dx.types.CBufRet.i32 %6518, 3
  %6522 = uitofp i32 %6521 to float
  %6523 = extractvalue %dx.types.CBufRet.f32 %6514, 3
  %6524 = fmul fast float %6523, 2.000000e+00
  %6525 = fsub fast float %6497, %6515
  %6526 = fsub fast float %6501, %6516
  %6527 = fmul fast float %6524, %6525
  %6528 = fmul fast float %6524, %6526
  %6529 = fdiv fast float 1.000000e+00, %6309
  %6530 = fmul fast float %6528, %6529
  %6531 = call float @dx.op.unary.f32(i32 6, float %6530)  ; FAbs(value)
  %6532 = fmul fast float %6517, %6328
  %6533 = fmul fast float %6532, %6524
  %6534 = call float @dx.op.unary.f32(i32 6, float %6533)  ; FAbs(value)
  %6535 = call float @dx.op.unary.f32(i32 6, float %6527)  ; FAbs(value)
  %6536 = call float @dx.op.binary.f32(i32 35, float %6534, float %6531)  ; FMax(a,b)
  %6537 = call float @dx.op.binary.f32(i32 35, float %6535, float %6536)  ; FMax(a,b)
  %6538 = fmul fast float %6537, 2.000000e+00
  %6539 = call float @dx.op.unary.f32(i32 23, float %6538)  ; Log(value)
  %6540 = call float @dx.op.binary.f32(i32 35, float %6539, float %6520)  ; FMax(a,b)
  %6541 = call float @dx.op.unary.f32(i32 22, float %6540)  ; Frc(value)
  %6542 = fadd fast float %6541, 0xBFEA666660000000
  %6543 = fmul fast float %6542, 8.000000e+00
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = call float @dx.op.unary.f32(i32 27, float %6540)  ; Round_ni(value)
  %6546 = fadd fast float %6545, %6544
  %6547 = call float @dx.op.binary.f32(i32 36, float %6546, float %6522)  ; FMin(a,b)
  %6548 = call float @dx.op.unary.f32(i32 27, float %6547)  ; Round_ni(value)
  %6549 = fsub fast float -0.000000e+00, %6548
  %6550 = call float @dx.op.unary.f32(i32 21, float %6549)  ; Exp(value)
  %6551 = fmul fast float %6550, %6524
  %6552 = fmul fast float %6551, %6497
  %6553 = fmul fast float %6551, %6501
  %6554 = fmul fast float %6552, 2.500000e-01
  %6555 = fmul fast float %6553, 2.500000e-01
  %6556 = fadd fast float %6554, 5.000000e-01
  %6557 = fadd fast float %6555, 5.000000e-01
  %6558 = fsub fast float %6522, %6520
  %6559 = fptoui float %6558 to i32
  %6560 = add i32 %6559, 320
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %6560)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 0
  %6563 = extractvalue %dx.types.CBufRet.f32 %6561, 1
  %6564 = fcmp fast une float %6547, %6522
  %6565 = fsub fast float %6497, %6562
  %6566 = fsub fast float %6501, %6563
  %6567 = call float @dx.op.unary.f32(i32 6, float %6565)  ; FAbs(value)
  %6568 = call float @dx.op.unary.f32(i32 6, float %6566)  ; FAbs(value)
  %6569 = fmul fast float %6567, %6551
  %6570 = fmul fast float %6568, %6551
  %6571 = fcmp fast olt float %6569, 1.000000e+00
  %6572 = fcmp fast olt float %6570, 1.000000e+00
  %6573 = and i1 %6571, %6572
  %6574 = or i1 %6564, %6573
  br i1 %6574, label %6575, label %6872, !dx.controlflow.hints !106

; <label>:6575                                    ; preds = %6513
  %6576 = fmul fast float %6553, 5.000000e-01
  %6577 = fmul fast float %6552, 5.000000e-01
  %6578 = fadd fast float %6576, 5.000000e-01
  %6579 = fadd fast float %6577, 5.000000e-01
  %6580 = sitofp i32 %6519 to float
  %6581 = fsub fast float %6547, %6580
  %6582 = call float @dx.op.unary.f32(i32 27, float %6581)  ; Round_ni(value)
  %6583 = call float @dx.op.unary.f32(i32 22, float %6547)  ; Frc(value)
  %6584 = call float @dx.op.unary.f32(i32 22, float %6579)  ; Frc(value)
  %6585 = call float @dx.op.unary.f32(i32 22, float %6578)  ; Frc(value)
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6584, float %6585, float %6582, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = extractvalue %dx.types.ResRet.f32 %6586, 1
  %6589 = extractvalue %dx.types.ResRet.f32 %6586, 2
  %6590 = extractvalue %dx.types.ResRet.f32 %6586, 3
  %6591 = fcmp fast ogt float %6583, 0.000000e+00
  br i1 %6591, label %6592, label %6613, !dx.controlflow.hints !107

; <label>:6592                                    ; preds = %6575
  %6593 = fadd fast float %6582, 1.000000e+00
  %6594 = call float @dx.op.unary.f32(i32 22, float %6556)  ; Frc(value)
  %6595 = call float @dx.op.unary.f32(i32 22, float %6557)  ; Frc(value)
  %6596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %53, float %6594, float %6595, float %6593, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6597 = extractvalue %dx.types.ResRet.f32 %6596, 0
  %6598 = extractvalue %dx.types.ResRet.f32 %6596, 1
  %6599 = extractvalue %dx.types.ResRet.f32 %6596, 2
  %6600 = extractvalue %dx.types.ResRet.f32 %6596, 3
  %6601 = fsub fast float %6597, %6587
  %6602 = fsub fast float %6598, %6588
  %6603 = fsub fast float %6599, %6589
  %6604 = fsub fast float %6600, %6590
  %6605 = fmul fast float %6601, %6583
  %6606 = fmul fast float %6602, %6583
  %6607 = fmul fast float %6603, %6583
  %6608 = fmul fast float %6604, %6583
  %6609 = fadd fast float %6605, %6587
  %6610 = fadd fast float %6606, %6588
  %6611 = fadd fast float %6607, %6589
  %6612 = fadd fast float %6608, %6590
  br label %6613

; <label>:6613                                    ; preds = %6592, %6575
  %6614 = phi float [ %6609, %6592 ], [ %6587, %6575 ]
  %6615 = phi float [ %6610, %6592 ], [ %6588, %6575 ]
  %6616 = phi float [ %6611, %6592 ], [ %6589, %6575 ]
  %6617 = phi float [ %6612, %6592 ], [ %6590, %6575 ]
  %6618 = fadd fast float %6614, -5.000000e-01
  %6619 = fadd fast float %6616, -5.000000e-01
  %6620 = fmul fast float %6618, 0xBFD5555560000000
  %6621 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6619, float %6620)  ; FMad(a,b,c)
  %6622 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6615, float 0.000000e+00)  ; FMad(a,b,c)
  %6623 = fadd fast float %6622, %6617
  %6624 = fmul fast float %6618, -7.500000e-01
  %6625 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6619, float %6624)  ; FMad(a,b,c)
  %6626 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6615, float 0.000000e+00)  ; FMad(a,b,c)
  %6627 = fadd fast float %6626, %6617
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 0
  %6632 = extractvalue %dx.types.CBufRet.f32 %6630, 1
  %6633 = extractvalue %dx.types.CBufRet.f32 %6630, 2
  %6634 = extractvalue %dx.types.CBufRet.f32 %6630, 3
  %6635 = fsub fast float %6631, %6621
  %6636 = fsub fast float %6632, %6623
  %6637 = fsub fast float %6633, %6625
  %6638 = fsub fast float %6634, %6627
  %6639 = fmul fast float %6635, %6629
  %6640 = fmul fast float %6636, %6629
  %6641 = fmul fast float %6637, %6629
  %6642 = fmul fast float %6638, %6629
  %6643 = fadd fast float %6639, %6621
  %6644 = fadd fast float %6640, %6623
  %6645 = fadd fast float %6641, %6625
  %6646 = fadd fast float %6642, %6627
  %6647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6648 = extractvalue %dx.types.ResRet.i32 %6647, 0
  %6649 = and i32 %6648, 536870911
  %6650 = uitofp i32 %6649 to float
  %6651 = fmul fast float %6650, %6497
  %6652 = fmul fast float %6650, %6501
  %6653 = fptoui float %6651 to i32
  %6654 = fptoui float %6652 to i32
  %6655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6656 = extractvalue %dx.types.ResRet.i32 %6655, 0
  %6657 = and i32 %6656, 31
  %6658 = lshr i32 %6653, %6657
  %6659 = lshr i32 %6654, %6657
  %6660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6661 = extractvalue %dx.types.ResRet.i32 %6660, 0
  %6662 = and i32 %6661, 31
  %6663 = shl i32 1, %6662
  %6664 = call i32 @dx.op.binary.i32(i32 40, i32 %6663, i32 4)  ; UMin(a,b)
  %6665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6666 = extractvalue %dx.types.ResRet.i32 %6665, 0
  %6667 = extractvalue %dx.types.ResRet.i32 %6665, 1
  %6668 = icmp eq i32 %6664, 0
  br i1 %6668, label %6710, label %6669

; <label>:6669                                    ; preds = %6613
  br label %6670

; <label>:6670                                    ; preds = %6698, %6669
  %6671 = phi i32 [ %6701, %6698 ], [ 0, %6669 ]
  %6672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6673 = extractvalue %dx.types.ResRet.i32 %6672, 0
  %6674 = lshr i32 %6673, 16
  %6675 = and i32 %6674, 31
  %6676 = shl i32 %6659, %6675
  %6677 = add i32 %6676, %6658
  %6678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6679 = extractvalue %dx.types.ResRet.i32 %6678, 0
  %6680 = and i32 %6679, 31
  %6681 = shl i32 %6677, %6680
  %6682 = add i32 %6681, %6671
  %6683 = shl i32 %6682, 2
  %6684 = add i32 %6683, 32
  %6685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6684, i32 undef)  ; BufferLoad(srv,index,wot)
  %6686 = extractvalue %dx.types.ResRet.i32 %6685, 0
  %6687 = icmp slt i32 %6686, 0
  %6688 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6671
  %6689 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6671
  %6690 = bitcast float* %6688 to i32*
  %6691 = bitcast float* %6689 to i32*
  br i1 %6687, label %6692, label %6698

; <label>:6692                                    ; preds = %6670
  %6693 = and i32 %6686, 1073741823
  %6694 = add nuw nsw i32 %6693, 20
  %6695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6694, i32 undef)  ; BufferLoad(srv,index,wot)
  %6696 = extractvalue %dx.types.ResRet.i32 %6695, 0
  %6697 = extractvalue %dx.types.ResRet.i32 %6695, 1
  br label %6698

; <label>:6698                                    ; preds = %6692, %6670
  %6699 = phi i32 [ %6696, %6692 ], [ %6666, %6670 ]
  %6700 = phi i32 [ %6697, %6692 ], [ %6667, %6670 ]
  store i32 %6699, i32* %6690, align 4
  store i32 %6700, i32* %6691, align 4
  %6701 = add nuw i32 %6671, 1
  %6702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6703 = extractvalue %dx.types.CBufRet.i32 %6702, 2
  %6704 = icmp eq i32 %6703, 0
  %6705 = icmp ugt i32 %6686, -1073741825
  %6706 = and i1 %6705, %6704
  %6707 = icmp ult i32 %6701, %6664
  %6708 = and i1 %6706, %6707
  br i1 %6708, label %6670, label %6709

; <label>:6709                                    ; preds = %6698
  br label %6710

; <label>:6710                                    ; preds = %6709, %6613
  %6711 = phi i32 [ 0, %6613 ], [ %6701, %6709 ]
  %6712 = extractvalue %dx.types.CBufRet.f32 %6475, 2
  %6713 = fptoui float %6712 to i32
  %6714 = icmp eq i32 %6713, 0
  br i1 %6714, label %6766, label %6715

; <label>:6715                                    ; preds = %6710
  br label %6716

; <label>:6716                                    ; preds = %6761, %6715
  %6717 = phi i32 [ %6762, %6761 ], [ %6711, %6715 ]
  %6718 = phi i32 [ %6763, %6761 ], [ 0, %6715 ]
  %6719 = lshr i32 %6718, 2
  %6720 = and i32 %6718, 3
  %6721 = add nuw nsw i32 %6719, 83
  %6722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 %6721)  ; CBufferLoadLegacy(handle,regIndex)
  %6723 = extractvalue %dx.types.CBufRet.i32 %6722, 0
  %6724 = extractvalue %dx.types.CBufRet.i32 %6722, 1
  %6725 = extractvalue %dx.types.CBufRet.i32 %6722, 2
  %6726 = extractvalue %dx.types.CBufRet.i32 %6722, 3
  %6727 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 0
  store i32 %6723, i32* %6727, align 4
  %6728 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 1
  store i32 %6724, i32* %6728, align 4
  %6729 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 2
  store i32 %6725, i32* %6729, align 4
  %6730 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 3
  store i32 %6726, i32* %6730, align 4
  %6731 = getelementptr inbounds [4 x i32], [4 x i32]* %59, i32 0, i32 %6720
  %6732 = load i32, i32* %6731, align 4, !tbaa !108, !noalias !112
  %6733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6734 = extractvalue %dx.types.ResRet.i32 %6733, 0
  %6735 = lshr i32 %6734, 16
  %6736 = and i32 %6735, 31
  %6737 = shl i32 %6659, %6736
  %6738 = add i32 %6737, %6658
  %6739 = shl i32 %6738, 2
  %6740 = add i32 %6739, %6732
  %6741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6740, i32 undef)  ; BufferLoad(srv,index,wot)
  %6742 = extractvalue %dx.types.ResRet.i32 %6741, 0
  %6743 = icmp eq i32 %6742, 0
  br i1 %6743, label %6761, label %6744

; <label>:6744                                    ; preds = %6716
  %6745 = icmp slt i32 %6742, 0
  %6746 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6717
  %6747 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6717
  %6748 = bitcast float* %6746 to i32*
  %6749 = bitcast float* %6747 to i32*
  br i1 %6745, label %6750, label %6757

; <label>:6750                                    ; preds = %6744
  %6751 = and i32 %6742, 1073741823
  %6752 = add i32 %6732, 20
  %6753 = add i32 %6752, %6751
  %6754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6753, i32 undef)  ; BufferLoad(srv,index,wot)
  %6755 = extractvalue %dx.types.ResRet.i32 %6754, 0
  %6756 = extractvalue %dx.types.ResRet.i32 %6754, 1
  br label %6757

; <label>:6757                                    ; preds = %6750, %6744
  %6758 = phi i32 [ %6755, %6750 ], [ %6666, %6744 ]
  %6759 = phi i32 [ %6756, %6750 ], [ %6667, %6744 ]
  store i32 %6758, i32* %6748, align 4
  store i32 %6759, i32* %6749, align 4
  %6760 = add i32 %6717, 1
  br label %6761

; <label>:6761                                    ; preds = %6757, %6716
  %6762 = phi i32 [ %6717, %6716 ], [ %6760, %6757 ]
  %6763 = add nuw i32 %6718, 1
  %6764 = icmp eq i32 %6763, %6713
  br i1 %6764, label %6765, label %6716

; <label>:6765                                    ; preds = %6761
  br label %6766

; <label>:6766                                    ; preds = %6765, %6710
  %6767 = phi i32 [ %6711, %6710 ], [ %6762, %6765 ]
  %6768 = icmp eq i32 %6767, 1
  %6769 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  %6770 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 0
  br i1 %6768, label %6771, label %6774

; <label>:6771                                    ; preds = %6766
  %6772 = load float, float* %6769, align 4
  %6773 = load float, float* %6770, align 4
  br label %6801

; <label>:6774                                    ; preds = %6766
  %6775 = load float, float* %6769, align 4
  %6776 = load float, float* %6770, align 4
  %6777 = fdiv fast float 1.000000e+00, %6776
  %6778 = fsub fast float %6775, %6777
  %6779 = icmp ugt i32 %6767, 1
  br i1 %6779, label %6780, label %6796

; <label>:6780                                    ; preds = %6774
  br label %6781

; <label>:6781                                    ; preds = %6781, %6780
  %6782 = phi float [ %6791, %6781 ], [ %6778, %6780 ]
  %6783 = phi float [ %6792, %6781 ], [ %6775, %6780 ]
  %6784 = phi i32 [ %6793, %6781 ], [ 1, %6780 ]
  %6785 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6784
  %6786 = load float, float* %6785, align 4
  %6787 = getelementptr [12 x float], [12 x float]* %101, i32 0, i32 %6784
  %6788 = load float, float* %6787, align 4
  %6789 = fdiv fast float 1.000000e+00, %6788
  %6790 = fsub fast float %6786, %6789
  %6791 = call float @dx.op.binary.f32(i32 36, float %6782, float %6790)  ; FMin(a,b)
  %6792 = call float @dx.op.binary.f32(i32 35, float %6783, float %6786)  ; FMax(a,b)
  %6793 = add nuw i32 %6784, 1
  %6794 = icmp eq i32 %6793, %6767
  br i1 %6794, label %6795, label %6781

; <label>:6795                                    ; preds = %6781
  br label %6796

; <label>:6796                                    ; preds = %6795, %6774
  %6797 = phi float [ %6778, %6774 ], [ %6791, %6795 ]
  %6798 = phi float [ %6775, %6774 ], [ %6792, %6795 ]
  %6799 = fsub fast float %6798, %6797
  %6800 = fdiv fast float 1.000000e+00, %6799
  br label %6801

; <label>:6801                                    ; preds = %6796, %6771
  %6802 = phi float [ %6772, %6771 ], [ %6798, %6796 ]
  %6803 = phi float [ %6773, %6771 ], [ %6800, %6796 ]
  %6804 = fadd fast float %6505, %6802
  %6805 = fmul fast float %6804, %6803
  %6806 = call float @dx.op.unary.f32(i32 7, float %6805)  ; Saturate(value)
  %6807 = fmul fast float %6806, 2.000000e+00
  %6808 = fsub fast float 1.000000e+00, %6807
  %6809 = fmul fast float %6643, %6643
  %6810 = fsub fast float %6644, %6809
  %6811 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6810)  ; FMax(a,b)
  %6812 = fdiv fast float 1.000000e+00, %6811
  %6813 = fmul fast float %6644, %6643
  %6814 = fsub fast float %6645, %6813
  %6815 = fsub fast float %6808, %6643
  %6816 = fmul fast float %6808, %6808
  %6817 = fsub fast float %6816, %6644
  %6818 = fmul fast float %6812, %6814
  %6819 = fmul fast float %6818, %6815
  %6820 = fsub fast float %6817, %6819
  %6821 = fmul fast float %6644, %6644
  %6822 = fsub fast float %6646, %6821
  %6823 = fmul fast float %6814, %6814
  %6824 = fmul fast float %6823, %6812
  %6825 = fsub fast float %6822, %6824
  %6826 = fdiv fast float %6820, %6825
  %6827 = fmul fast float %6826, %6814
  %6828 = fsub fast float %6815, %6827
  %6829 = fmul fast float %6828, %6812
  %6830 = fmul fast float %6829, %6643
  %6831 = fsub fast float 1.000000e+00, %6830
  %6832 = fmul fast float %6826, %6644
  %6833 = fsub fast float %6831, %6832
  %6834 = fmul fast float %6829, %6829
  %6835 = fmul fast float %6826, 4.000000e+00
  %6836 = fmul fast float %6835, %6833
  %6837 = fsub fast float %6834, %6836
  %6838 = call float @dx.op.unary.f32(i32 24, float %6837)  ; Sqrt(value)
  %6839 = fcmp fast oge float %6829, 0.000000e+00
  %6840 = fsub fast float -0.000000e+00, %6838
  %6841 = select i1 %6839, float %6840, float %6838
  %6842 = fsub fast float %6841, %6829
  %6843 = fdiv fast float %6842, %6826
  %6844 = fdiv fast float %6833, %6842
  %6845 = fmul fast float %6843, 5.000000e-01
  %6846 = fmul fast float %6844, 2.000000e+00
  %6847 = select i1 %6839, float %6845, float %6846
  %6848 = select i1 %6839, float %6846, float %6845
  %6849 = call float @dx.op.binary.f32(i32 35, float %6847, float %6848)  ; FMax(a,b)
  %6850 = call float @dx.op.binary.f32(i32 36, float %6847, float %6848)  ; FMin(a,b)
  %6851 = fcmp fast ogt float %6808, %6849
  %6852 = fsub fast float %6808, %6850
  %6853 = fsub fast float %6808, %6849
  %6854 = fsub fast float %6849, %6850
  %6855 = select i1 %6851, float %6853, float %6854
  %6856 = fmul float %6852, %6855
  %6857 = select i1 %6851, float %6850, float %6808
  %6858 = fcmp fast ogt float %6808, %6850
  %6859 = fmul fast float %6857, %6849
  %6860 = fadd fast float %6857, %6849
  %6861 = fmul fast float %6860, %6643
  %6862 = fadd fast float %6859, %6644
  %6863 = fsub fast float %6862, %6861
  %6864 = fdiv fast float %6863, %6856
  %6865 = select i1 %6858, float %6864, float 0.000000e+00
  %6866 = fsub fast float 1.000000e+00, %6865
  %6867 = select i1 %6851, float %6866, float %6865
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6628, 3
  %6870 = fmul fast float %6869, %6868
  %6871 = fsub fast float 1.000000e+00, %6870
  br label %6872

; <label>:6872                                    ; preds = %6801, %6513, %6478, %6474, %6440
  %6873 = phi float [ 1.000000e+00, %6440 ], [ %6871, %6801 ], [ 1.000000e+00, %6478 ], [ 1.000000e+00, %6513 ], [ 1.000000e+00, %6474 ]
  %6874 = fcmp fast ogt float %6470, 0.000000e+00
  br i1 %6874, label %6875, label %7037, !dx.controlflow.hints !121

; <label>:6875                                    ; preds = %6872
  %6876 = fadd fast float %6383, %6357
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 2
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 3
  %6880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6881 = extractvalue %dx.types.CBufRet.f32 %6880, 2
  %6882 = call float @dx.op.binary.f32(i32 35, float %6876, float 0.000000e+00)  ; FMax(a,b)
  %6883 = fadd fast float %6882, 0x3F10000000000000
  %6884 = fcmp fast oeq float %6881, 0.000000e+00
  br i1 %6884, label %6885, label %6952

; <label>:6885                                    ; preds = %6875
  %6886 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6887 = extractvalue %dx.types.CBufRet.f32 %6877, 0
  %6888 = fmul fast float %6887, %6372
  %6889 = fmul fast float %6886, %6373
  %6890 = fadd fast float %6888, 5.000000e-01
  %6891 = call float @dx.op.unary.f32(i32 27, float %6890)  ; Round_ni(value)
  %6892 = fadd fast float %6889, 5.000000e-01
  %6893 = call float @dx.op.unary.f32(i32 27, float %6892)  ; Round_ni(value)
  %6894 = fsub fast float %6890, %6891
  %6895 = fsub fast float %6892, %6893
  %6896 = fadd fast float %6891, -5.000000e-01
  %6897 = fadd fast float %6893, -5.000000e-01
  %6898 = fmul fast float %6894, 2.000000e+00
  %6899 = fsub fast float 3.000000e+00, %6898
  %6900 = fadd fast float %6898, 1.000000e+00
  %6901 = fsub fast float 2.000000e+00, %6894
  %6902 = bitcast float %6899 to i32
  %6903 = sub nsw i32 2129859010, %6902
  %6904 = bitcast i32 %6903 to float
  %6905 = fmul fast float %6904, %6901
  %6906 = fadd fast float %6905, -1.000000e+00
  %6907 = bitcast float %6900 to i32
  %6908 = sub nsw i32 2129859010, %6907
  %6909 = bitcast i32 %6908 to float
  %6910 = fmul fast float %6909, %6894
  %6911 = fadd fast float %6910, 1.000000e+00
  %6912 = fmul fast float %6895, 2.000000e+00
  %6913 = fsub fast float 3.000000e+00, %6912
  %6914 = fadd fast float %6912, 1.000000e+00
  %6915 = fsub fast float 2.000000e+00, %6895
  %6916 = bitcast float %6913 to i32
  %6917 = sub nsw i32 2129859010, %6916
  %6918 = bitcast i32 %6917 to float
  %6919 = fmul fast float %6918, %6915
  %6920 = fadd fast float %6919, -1.000000e+00
  %6921 = bitcast float %6914 to i32
  %6922 = sub nsw i32 2129859010, %6921
  %6923 = bitcast i32 %6922 to float
  %6924 = fmul fast float %6923, %6895
  %6925 = fadd fast float %6924, 1.000000e+00
  %6926 = fadd fast float %6906, %6896
  %6927 = fmul fast float %6926, %6878
  %6928 = fadd fast float %6920, %6897
  %6929 = fmul fast float %6928, %6879
  %6930 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6927, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float %6883)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6931 = extractvalue %dx.types.ResRet.f32 %6930, 0
  %6932 = fmul fast float %6931, %6899
  %6933 = fadd fast float %6911, %6896
  %6934 = fmul fast float %6933, %6878
  %6935 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6934, float %6929, float undef, float undef, i32 0, i32 0, i32 undef, float %6883)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6936 = extractvalue %dx.types.ResRet.f32 %6935, 0
  %6937 = fmul fast float %6936, %6900
  %6938 = fadd fast float %6925, %6897
  %6939 = fmul fast float %6938, %6879
  %6940 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6927, float %6939, float undef, float undef, i32 0, i32 0, i32 undef, float %6883)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6941 = extractvalue %dx.types.ResRet.f32 %6940, 0
  %6942 = fmul fast float %6941, %6899
  %6943 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %56, float %6934, float %6939, float undef, float undef, i32 0, i32 0, i32 undef, float %6883)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6944 = extractvalue %dx.types.ResRet.f32 %6943, 0
  %6945 = fmul fast float %6944, %6900
  %6946 = fadd fast float %6945, %6942
  %6947 = fmul fast float %6946, %6914
  %6948 = fadd fast float %6937, %6932
  %6949 = fmul fast float %6948, %6913
  %6950 = fadd fast float %6949, %6947
  %6951 = fmul fast float %6950, 6.250000e-02
  br label %7037

; <label>:6952                                    ; preds = %6875
  %6953 = fmul fast float %243, 0x401921FB60000000
  %6954 = call float @dx.op.unary.f32(i32 13, float %6953)  ; Sin(value)
  %6955 = call float @dx.op.unary.f32(i32 12, float %6953)  ; Cos(value)
  %6956 = fsub fast float -0.000000e+00, %6954
  br label %6957

; <label>:6957                                    ; preds = %7006, %6952
  %6958 = phi float [ 0.000000e+00, %6952 ], [ %7001, %7006 ]
  %6959 = phi float [ 0.000000e+00, %6952 ], [ %7003, %7006 ]
  %6960 = phi i32 [ 0, %6952 ], [ %7007, %7006 ]
  %6961 = mul i32 %6960, 2
  %6962 = add i32 0, %6961
  %6963 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6962
  %6964 = load float, float* %6963, align 4
  %6965 = mul i32 %6960, 2
  %6966 = add i32 1, %6965
  %6967 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6966
  %6968 = load float, float* %6967, align 4
  %6969 = fmul fast float %6964, %6955
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6956, float %6969)  ; FMad(a,b,c)
  %6971 = fmul fast float %6964, %6954
  %6972 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6955, float %6971)  ; FMad(a,b,c)
  %6973 = fmul fast float %6970, %6881
  %6974 = fmul fast float %6972, %6881
  %6975 = fadd fast float %6973, %6372
  %6976 = fadd fast float %6974, %6373
  %6977 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %55, float %6975, float %6976, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6978 = extractvalue %dx.types.ResRet.f32 %6977, 0
  %6979 = extractvalue %dx.types.ResRet.f32 %6977, 1
  %6980 = extractvalue %dx.types.ResRet.f32 %6977, 2
  %6981 = extractvalue %dx.types.ResRet.f32 %6977, 3
  %6982 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %6978, float* %6982, align 4
  %6983 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %6979, float* %6983, align 4
  %6984 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %6980, float* %6984, align 4
  %6985 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %6981, float* %6985, align 4
  %6986 = fsub fast float %6978, %6883
  %6987 = fcmp fast olt float %6986, 0.000000e+00
  %6988 = select i1 %6987, float 0.000000e+00, float 1.000000e+00
  %6989 = fadd fast float %6988, %6958
  %6990 = fmul fast float %6988, %6986
  %6991 = fadd fast float %6990, %6959
  br label %6992

; <label>:6992                                    ; preds = %6992, %6957
  %6993 = phi i32 [ 1, %6957 ], [ %7004, %6992 ]
  %6994 = phi float [ %6991, %6957 ], [ %7003, %6992 ]
  %6995 = phi float [ %6989, %6957 ], [ %7001, %6992 ]
  %6996 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %6993
  %6997 = load float, float* %6996, align 4, !tbaa !122, !noalias !112
  %6998 = fsub fast float %6997, %6883
  %6999 = fcmp fast olt float %6998, 0.000000e+00
  %7000 = select i1 %6999, float 0.000000e+00, float 1.000000e+00
  %7001 = fadd fast float %7000, %6995
  %7002 = fmul fast float %7000, %6998
  %7003 = fadd fast float %7002, %6994
  %7004 = add nuw nsw i32 %6993, 1
  %7005 = icmp eq i32 %7004, 4
  br i1 %7005, label %7006, label %6992, !llvm.loop !124

; <label>:7006                                    ; preds = %6992
  %7007 = add nuw nsw i32 %6960, 1
  %7008 = icmp eq i32 %7007, 8
  br i1 %7008, label %7009, label %6957, !llvm.loop !125

; <label>:7009                                    ; preds = %7006
  %7010 = fdiv fast float 1.000000e+00, %7001
  %7011 = fmul fast float %7010, %7003
  %7012 = fdiv fast float 1.000000e+00, %6883
  %7013 = fmul fast float %7011, %7012
  %7014 = call float @dx.op.unary.f32(i32 7, float %7013)  ; Saturate(value)
  %7015 = call float @dx.op.binary.f32(i32 35, float %7014, float 0.000000e+00)  ; FMax(a,b)
  %7016 = fmul fast float %7001, 3.125000e-02
  %7017 = call float @dx.op.unary.f32(i32 7, float %7016)  ; Saturate(value)
  %7018 = fmul fast float %7017, 2.000000e+00
  %7019 = fadd fast float %7018, -1.000000e+00
  %7020 = fcmp fast ogt float %7019, 0.000000e+00
  %7021 = fcmp fast olt float %7019, 0.000000e+00
  %7022 = zext i1 %7020 to i32
  %7023 = zext i1 %7021 to i32
  %7024 = sub nsw i32 %7022, %7023
  %7025 = sitofp i32 %7024 to float
  %7026 = fmul fast float %7025, %7019
  %7027 = fsub fast float 1.000000e+00, %7026
  %7028 = fmul fast float %7027, %7027
  %7029 = fmul fast float %7028, %7027
  %7030 = fsub fast float %7027, %7029
  %7031 = fmul fast float %7030, %7015
  %7032 = fsub fast float 1.000000e+00, %7029
  %7033 = fsub fast float %7032, %7031
  %7034 = fmul fast float %7025, 5.000000e-01
  %7035 = fmul fast float %7034, %7033
  %7036 = fsub fast float 5.000000e-01, %7035
  br label %7037

; <label>:7037                                    ; preds = %7009, %6885, %6872
  %7038 = phi float [ 1.000000e+00, %6872 ], [ %6951, %6885 ], [ %7036, %7009 ]
  %7039 = fcmp fast ogt float %6468, 0.000000e+00
  br i1 %7039, label %7040, label %7204, !dx.controlflow.hints !126

; <label>:7040                                    ; preds = %7037
  %7041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7042 = extractvalue %dx.types.CBufRet.f32 %7041, 1
  %7043 = fadd fast float %7042, %6357
  %7044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7044, 2
  %7046 = extractvalue %dx.types.CBufRet.f32 %7044, 3
  %7047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7048 = extractvalue %dx.types.CBufRet.f32 %7047, 1
  %7049 = call float @dx.op.binary.f32(i32 35, float %7043, float 0.000000e+00)  ; FMax(a,b)
  %7050 = fadd fast float %7049, 0x3F10000000000000
  %7051 = fcmp fast oeq float %7048, 0.000000e+00
  br i1 %7051, label %7052, label %7119

; <label>:7052                                    ; preds = %7040
  %7053 = extractvalue %dx.types.CBufRet.f32 %7044, 1
  %7054 = extractvalue %dx.types.CBufRet.f32 %7044, 0
  %7055 = fmul fast float %7054, %6364
  %7056 = fmul fast float %7053, %6365
  %7057 = fadd fast float %7055, 5.000000e-01
  %7058 = call float @dx.op.unary.f32(i32 27, float %7057)  ; Round_ni(value)
  %7059 = fadd fast float %7056, 5.000000e-01
  %7060 = call float @dx.op.unary.f32(i32 27, float %7059)  ; Round_ni(value)
  %7061 = fsub fast float %7057, %7058
  %7062 = fsub fast float %7059, %7060
  %7063 = fadd fast float %7058, -5.000000e-01
  %7064 = fadd fast float %7060, -5.000000e-01
  %7065 = fmul fast float %7061, 2.000000e+00
  %7066 = fsub fast float 3.000000e+00, %7065
  %7067 = fadd fast float %7065, 1.000000e+00
  %7068 = fsub fast float 2.000000e+00, %7061
  %7069 = bitcast float %7066 to i32
  %7070 = sub nsw i32 2129859010, %7069
  %7071 = bitcast i32 %7070 to float
  %7072 = fmul fast float %7071, %7068
  %7073 = fadd fast float %7072, -1.000000e+00
  %7074 = bitcast float %7067 to i32
  %7075 = sub nsw i32 2129859010, %7074
  %7076 = bitcast i32 %7075 to float
  %7077 = fmul fast float %7076, %7061
  %7078 = fadd fast float %7077, 1.000000e+00
  %7079 = fmul fast float %7062, 2.000000e+00
  %7080 = fsub fast float 3.000000e+00, %7079
  %7081 = fadd fast float %7079, 1.000000e+00
  %7082 = fsub fast float 2.000000e+00, %7062
  %7083 = bitcast float %7080 to i32
  %7084 = sub nsw i32 2129859010, %7083
  %7085 = bitcast i32 %7084 to float
  %7086 = fmul fast float %7085, %7082
  %7087 = fadd fast float %7086, -1.000000e+00
  %7088 = bitcast float %7081 to i32
  %7089 = sub nsw i32 2129859010, %7088
  %7090 = bitcast i32 %7089 to float
  %7091 = fmul fast float %7090, %7062
  %7092 = fadd fast float %7091, 1.000000e+00
  %7093 = fadd fast float %7073, %7063
  %7094 = fmul fast float %7093, %7045
  %7095 = fadd fast float %7087, %7064
  %7096 = fmul fast float %7095, %7046
  %7097 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7094, float %7096, float undef, float undef, i32 0, i32 0, i32 undef, float %7050)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7098 = extractvalue %dx.types.ResRet.f32 %7097, 0
  %7099 = fmul fast float %7098, %7066
  %7100 = fadd fast float %7078, %7063
  %7101 = fmul fast float %7100, %7045
  %7102 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7101, float %7096, float undef, float undef, i32 0, i32 0, i32 undef, float %7050)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7103 = extractvalue %dx.types.ResRet.f32 %7102, 0
  %7104 = fmul fast float %7103, %7067
  %7105 = fadd fast float %7092, %7064
  %7106 = fmul fast float %7105, %7046
  %7107 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7094, float %7106, float undef, float undef, i32 0, i32 0, i32 undef, float %7050)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7108 = extractvalue %dx.types.ResRet.f32 %7107, 0
  %7109 = fmul fast float %7108, %7066
  %7110 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %56, float %7101, float %7106, float undef, float undef, i32 0, i32 0, i32 undef, float %7050)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7111 = extractvalue %dx.types.ResRet.f32 %7110, 0
  %7112 = fmul fast float %7111, %7067
  %7113 = fadd fast float %7112, %7109
  %7114 = fmul fast float %7113, %7081
  %7115 = fadd fast float %7104, %7099
  %7116 = fmul fast float %7115, %7080
  %7117 = fadd fast float %7116, %7114
  %7118 = fmul fast float %7117, 6.250000e-02
  br label %7204

; <label>:7119                                    ; preds = %7040
  %7120 = fmul fast float %243, 0x401921FB60000000
  %7121 = call float @dx.op.unary.f32(i32 13, float %7120)  ; Sin(value)
  %7122 = call float @dx.op.unary.f32(i32 12, float %7120)  ; Cos(value)
  %7123 = fsub fast float -0.000000e+00, %7121
  br label %7124

; <label>:7124                                    ; preds = %7173, %7119
  %7125 = phi float [ 0.000000e+00, %7119 ], [ %7168, %7173 ]
  %7126 = phi float [ 0.000000e+00, %7119 ], [ %7170, %7173 ]
  %7127 = phi i32 [ 0, %7119 ], [ %7174, %7173 ]
  %7128 = mul i32 %7127, 2
  %7129 = add i32 0, %7128
  %7130 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7129
  %7131 = load float, float* %7130, align 4
  %7132 = mul i32 %7127, 2
  %7133 = add i32 1, %7132
  %7134 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7133
  %7135 = load float, float* %7134, align 4
  %7136 = fmul fast float %7131, %7122
  %7137 = call float @dx.op.tertiary.f32(i32 46, float %7135, float %7123, float %7136)  ; FMad(a,b,c)
  %7138 = fmul fast float %7131, %7121
  %7139 = call float @dx.op.tertiary.f32(i32 46, float %7135, float %7122, float %7138)  ; FMad(a,b,c)
  %7140 = fmul fast float %7137, %7048
  %7141 = fmul fast float %7139, %7048
  %7142 = fadd fast float %7140, %6364
  %7143 = fadd fast float %7141, %6365
  %7144 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %55, float %7142, float %7143, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7145 = extractvalue %dx.types.ResRet.f32 %7144, 0
  %7146 = extractvalue %dx.types.ResRet.f32 %7144, 1
  %7147 = extractvalue %dx.types.ResRet.f32 %7144, 2
  %7148 = extractvalue %dx.types.ResRet.f32 %7144, 3
  %7149 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7145, float* %7149, align 4
  %7150 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7146, float* %7150, align 4
  %7151 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7147, float* %7151, align 4
  %7152 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7148, float* %7152, align 4
  %7153 = fsub fast float %7145, %7050
  %7154 = fcmp fast olt float %7153, 0.000000e+00
  %7155 = select i1 %7154, float 0.000000e+00, float 1.000000e+00
  %7156 = fadd fast float %7155, %7125
  %7157 = fmul fast float %7155, %7153
  %7158 = fadd fast float %7157, %7126
  br label %7159

; <label>:7159                                    ; preds = %7159, %7124
  %7160 = phi i32 [ 1, %7124 ], [ %7171, %7159 ]
  %7161 = phi float [ %7158, %7124 ], [ %7170, %7159 ]
  %7162 = phi float [ %7156, %7124 ], [ %7168, %7159 ]
  %7163 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7160
  %7164 = load float, float* %7163, align 4, !tbaa !122, !noalias !112
  %7165 = fsub fast float %7164, %7050
  %7166 = fcmp fast olt float %7165, 0.000000e+00
  %7167 = select i1 %7166, float 0.000000e+00, float 1.000000e+00
  %7168 = fadd fast float %7167, %7162
  %7169 = fmul fast float %7167, %7165
  %7170 = fadd fast float %7169, %7161
  %7171 = add nuw nsw i32 %7160, 1
  %7172 = icmp eq i32 %7171, 4
  br i1 %7172, label %7173, label %7159, !llvm.loop !124

; <label>:7173                                    ; preds = %7159
  %7174 = add nuw nsw i32 %7127, 1
  %7175 = icmp eq i32 %7174, 8
  br i1 %7175, label %7176, label %7124, !llvm.loop !125

; <label>:7176                                    ; preds = %7173
  %7177 = fdiv fast float 1.000000e+00, %7168
  %7178 = fmul fast float %7177, %7170
  %7179 = fdiv fast float 1.000000e+00, %7050
  %7180 = fmul fast float %7178, %7179
  %7181 = call float @dx.op.unary.f32(i32 7, float %7180)  ; Saturate(value)
  %7182 = call float @dx.op.binary.f32(i32 35, float %7181, float 0.000000e+00)  ; FMax(a,b)
  %7183 = fmul fast float %7168, 3.125000e-02
  %7184 = call float @dx.op.unary.f32(i32 7, float %7183)  ; Saturate(value)
  %7185 = fmul fast float %7184, 2.000000e+00
  %7186 = fadd fast float %7185, -1.000000e+00
  %7187 = fcmp fast ogt float %7186, 0.000000e+00
  %7188 = fcmp fast olt float %7186, 0.000000e+00
  %7189 = zext i1 %7187 to i32
  %7190 = zext i1 %7188 to i32
  %7191 = sub nsw i32 %7189, %7190
  %7192 = sitofp i32 %7191 to float
  %7193 = fmul fast float %7192, %7186
  %7194 = fsub fast float 1.000000e+00, %7193
  %7195 = fmul fast float %7194, %7194
  %7196 = fmul fast float %7195, %7194
  %7197 = fsub fast float %7194, %7196
  %7198 = fmul fast float %7197, %7182
  %7199 = fsub fast float 1.000000e+00, %7196
  %7200 = fsub fast float %7199, %7198
  %7201 = fmul fast float %7192, 5.000000e-01
  %7202 = fmul fast float %7201, %7200
  %7203 = fsub fast float 5.000000e-01, %7202
  br label %7204

; <label>:7204                                    ; preds = %7176, %7052, %7037
  %7205 = phi float [ 1.000000e+00, %7037 ], [ %7118, %7052 ], [ %7203, %7176 ]
  %7206 = fcmp fast ogt float %6467, 0.000000e+00
  br i1 %7206, label %7207, label %7371, !dx.controlflow.hints !127

; <label>:7207                                    ; preds = %7204
  %7208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7209 = extractvalue %dx.types.CBufRet.f32 %7208, 0
  %7210 = fadd fast float %7209, %6357
  %7211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7212 = extractvalue %dx.types.CBufRet.f32 %7211, 2
  %7213 = extractvalue %dx.types.CBufRet.f32 %7211, 3
  %7214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7215 = extractvalue %dx.types.CBufRet.f32 %7214, 0
  %7216 = call float @dx.op.binary.f32(i32 35, float %7210, float 0.000000e+00)  ; FMax(a,b)
  %7217 = fadd fast float %7216, 0x3F10000000000000
  %7218 = fcmp fast oeq float %7215, 0.000000e+00
  br i1 %7218, label %7219, label %7286

; <label>:7219                                    ; preds = %7207
  %7220 = extractvalue %dx.types.CBufRet.f32 %7211, 1
  %7221 = extractvalue %dx.types.CBufRet.f32 %7211, 0
  %7222 = fmul fast float %7221, %6349
  %7223 = fmul fast float %7220, %6353
  %7224 = fadd fast float %7222, 5.000000e-01
  %7225 = call float @dx.op.unary.f32(i32 27, float %7224)  ; Round_ni(value)
  %7226 = fadd fast float %7223, 5.000000e-01
  %7227 = call float @dx.op.unary.f32(i32 27, float %7226)  ; Round_ni(value)
  %7228 = fsub fast float %7224, %7225
  %7229 = fsub fast float %7226, %7227
  %7230 = fadd fast float %7225, -5.000000e-01
  %7231 = fadd fast float %7227, -5.000000e-01
  %7232 = fmul fast float %7228, 2.000000e+00
  %7233 = fsub fast float 3.000000e+00, %7232
  %7234 = fadd fast float %7232, 1.000000e+00
  %7235 = fsub fast float 2.000000e+00, %7228
  %7236 = bitcast float %7233 to i32
  %7237 = sub nsw i32 2129859010, %7236
  %7238 = bitcast i32 %7237 to float
  %7239 = fmul fast float %7238, %7235
  %7240 = fadd fast float %7239, -1.000000e+00
  %7241 = bitcast float %7234 to i32
  %7242 = sub nsw i32 2129859010, %7241
  %7243 = bitcast i32 %7242 to float
  %7244 = fmul fast float %7243, %7228
  %7245 = fadd fast float %7244, 1.000000e+00
  %7246 = fmul fast float %7229, 2.000000e+00
  %7247 = fsub fast float 3.000000e+00, %7246
  %7248 = fadd fast float %7246, 1.000000e+00
  %7249 = fsub fast float 2.000000e+00, %7229
  %7250 = bitcast float %7247 to i32
  %7251 = sub nsw i32 2129859010, %7250
  %7252 = bitcast i32 %7251 to float
  %7253 = fmul fast float %7252, %7249
  %7254 = fadd fast float %7253, -1.000000e+00
  %7255 = bitcast float %7248 to i32
  %7256 = sub nsw i32 2129859010, %7255
  %7257 = bitcast i32 %7256 to float
  %7258 = fmul fast float %7257, %7229
  %7259 = fadd fast float %7258, 1.000000e+00
  %7260 = fadd fast float %7240, %7230
  %7261 = fmul fast float %7260, %7212
  %7262 = fadd fast float %7254, %7231
  %7263 = fmul fast float %7262, %7213
  %7264 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7261, float %7263, float undef, float undef, i32 0, i32 0, i32 undef, float %7217)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7265 = extractvalue %dx.types.ResRet.f32 %7264, 0
  %7266 = fmul fast float %7265, %7233
  %7267 = fadd fast float %7245, %7230
  %7268 = fmul fast float %7267, %7212
  %7269 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7268, float %7263, float undef, float undef, i32 0, i32 0, i32 undef, float %7217)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = fmul fast float %7270, %7234
  %7272 = fadd fast float %7259, %7231
  %7273 = fmul fast float %7272, %7213
  %7274 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7261, float %7273, float undef, float undef, i32 0, i32 0, i32 undef, float %7217)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7275 = extractvalue %dx.types.ResRet.f32 %7274, 0
  %7276 = fmul fast float %7275, %7233
  %7277 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %56, float %7268, float %7273, float undef, float undef, i32 0, i32 0, i32 undef, float %7217)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7278 = extractvalue %dx.types.ResRet.f32 %7277, 0
  %7279 = fmul fast float %7278, %7234
  %7280 = fadd fast float %7279, %7276
  %7281 = fmul fast float %7280, %7248
  %7282 = fadd fast float %7271, %7266
  %7283 = fmul fast float %7282, %7247
  %7284 = fadd fast float %7283, %7281
  %7285 = fmul fast float %7284, 6.250000e-02
  br label %7371

; <label>:7286                                    ; preds = %7207
  %7287 = fmul fast float %243, 0x401921FB60000000
  %7288 = call float @dx.op.unary.f32(i32 13, float %7287)  ; Sin(value)
  %7289 = call float @dx.op.unary.f32(i32 12, float %7287)  ; Cos(value)
  %7290 = fsub fast float -0.000000e+00, %7288
  br label %7291

; <label>:7291                                    ; preds = %7340, %7286
  %7292 = phi float [ 0.000000e+00, %7286 ], [ %7335, %7340 ]
  %7293 = phi float [ 0.000000e+00, %7286 ], [ %7337, %7340 ]
  %7294 = phi i32 [ 0, %7286 ], [ %7341, %7340 ]
  %7295 = mul i32 %7294, 2
  %7296 = add i32 0, %7295
  %7297 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7296
  %7298 = load float, float* %7297, align 4
  %7299 = mul i32 %7294, 2
  %7300 = add i32 1, %7299
  %7301 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7300
  %7302 = load float, float* %7301, align 4
  %7303 = fmul fast float %7298, %7289
  %7304 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7290, float %7303)  ; FMad(a,b,c)
  %7305 = fmul fast float %7298, %7288
  %7306 = call float @dx.op.tertiary.f32(i32 46, float %7302, float %7289, float %7305)  ; FMad(a,b,c)
  %7307 = fmul fast float %7304, %7215
  %7308 = fmul fast float %7306, %7215
  %7309 = fadd fast float %7307, %6349
  %7310 = fadd fast float %7308, %6353
  %7311 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %55, float %7309, float %7310, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7312 = extractvalue %dx.types.ResRet.f32 %7311, 0
  %7313 = extractvalue %dx.types.ResRet.f32 %7311, 1
  %7314 = extractvalue %dx.types.ResRet.f32 %7311, 2
  %7315 = extractvalue %dx.types.ResRet.f32 %7311, 3
  %7316 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7312, float* %7316, align 4
  %7317 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7313, float* %7317, align 4
  %7318 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7314, float* %7318, align 4
  %7319 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7315, float* %7319, align 4
  %7320 = fsub fast float %7312, %7217
  %7321 = fcmp fast olt float %7320, 0.000000e+00
  %7322 = select i1 %7321, float 0.000000e+00, float 1.000000e+00
  %7323 = fadd fast float %7322, %7292
  %7324 = fmul fast float %7322, %7320
  %7325 = fadd fast float %7324, %7293
  br label %7326

; <label>:7326                                    ; preds = %7326, %7291
  %7327 = phi i32 [ 1, %7291 ], [ %7338, %7326 ]
  %7328 = phi float [ %7325, %7291 ], [ %7337, %7326 ]
  %7329 = phi float [ %7323, %7291 ], [ %7335, %7326 ]
  %7330 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7327
  %7331 = load float, float* %7330, align 4, !tbaa !122, !noalias !112
  %7332 = fsub fast float %7331, %7217
  %7333 = fcmp fast olt float %7332, 0.000000e+00
  %7334 = select i1 %7333, float 0.000000e+00, float 1.000000e+00
  %7335 = fadd fast float %7334, %7329
  %7336 = fmul fast float %7334, %7332
  %7337 = fadd fast float %7336, %7328
  %7338 = add nuw nsw i32 %7327, 1
  %7339 = icmp eq i32 %7338, 4
  br i1 %7339, label %7340, label %7326, !llvm.loop !124

; <label>:7340                                    ; preds = %7326
  %7341 = add nuw nsw i32 %7294, 1
  %7342 = icmp eq i32 %7341, 8
  br i1 %7342, label %7343, label %7291, !llvm.loop !125

; <label>:7343                                    ; preds = %7340
  %7344 = fdiv fast float 1.000000e+00, %7335
  %7345 = fmul fast float %7344, %7337
  %7346 = fdiv fast float 1.000000e+00, %7217
  %7347 = fmul fast float %7345, %7346
  %7348 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7349 = call float @dx.op.binary.f32(i32 35, float %7348, float 0.000000e+00)  ; FMax(a,b)
  %7350 = fmul fast float %7335, 3.125000e-02
  %7351 = call float @dx.op.unary.f32(i32 7, float %7350)  ; Saturate(value)
  %7352 = fmul fast float %7351, 2.000000e+00
  %7353 = fadd fast float %7352, -1.000000e+00
  %7354 = fcmp fast ogt float %7353, 0.000000e+00
  %7355 = fcmp fast olt float %7353, 0.000000e+00
  %7356 = zext i1 %7354 to i32
  %7357 = zext i1 %7355 to i32
  %7358 = sub nsw i32 %7356, %7357
  %7359 = sitofp i32 %7358 to float
  %7360 = fmul fast float %7359, %7353
  %7361 = fsub fast float 1.000000e+00, %7360
  %7362 = fmul fast float %7361, %7361
  %7363 = fmul fast float %7362, %7361
  %7364 = fsub fast float %7361, %7363
  %7365 = fmul fast float %7364, %7349
  %7366 = fsub fast float 1.000000e+00, %7363
  %7367 = fsub fast float %7366, %7365
  %7368 = fmul fast float %7359, 5.000000e-01
  %7369 = fmul fast float %7368, %7367
  %7370 = fsub fast float 5.000000e-01, %7369
  br label %7371

; <label>:7371                                    ; preds = %7343, %7219, %7204
  %7372 = phi float [ 1.000000e+00, %7204 ], [ %7285, %7219 ], [ %7370, %7343 ]
  %7373 = fsub fast float %7038, %6873
  %7374 = fmul fast float %7373, %6411
  %7375 = fadd fast float %7374, %6873
  %7376 = fsub fast float %7205, %7375
  %7377 = fmul fast float %7376, %6441
  %7378 = fadd fast float %7377, %7375
  %7379 = fsub fast float %7372, %7378
  %7380 = fmul fast float %7379, %6467
  %7381 = fadd fast float %7380, %7378
  %7382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7383 = extractvalue %dx.types.CBufRet.f32 %7382, 2
  %7384 = fcmp fast ogt float %7383, 0.000000e+00
  br i1 %7384, label %7385, label %7425, !dx.controlflow.hints !128

; <label>:7385                                    ; preds = %7371
  %7386 = fcmp fast ugt float %7383, 0.000000e+00
  br i1 %7386, label %7387, label %7422

; <label>:7387                                    ; preds = %7385
  %7388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7389 = extractvalue %dx.types.CBufRet.f32 %7388, 0
  %7390 = extractvalue %dx.types.CBufRet.f32 %7388, 1
  %7391 = extractvalue %dx.types.CBufRet.f32 %7388, 2
  %7392 = extractvalue %dx.types.CBufRet.f32 %7388, 3
  %7393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7394 = extractvalue %dx.types.CBufRet.f32 %7393, 0
  %7395 = extractvalue %dx.types.CBufRet.f32 %7393, 1
  %7396 = extractvalue %dx.types.CBufRet.f32 %7393, 2
  %7397 = extractvalue %dx.types.CBufRet.f32 %7393, 3
  %7398 = extractvalue %dx.types.CBufRet.f32 %7382, 0
  %7399 = extractvalue %dx.types.CBufRet.f32 %7382, 1
  %7400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7401 = extractvalue %dx.types.CBufRet.f32 %7400, 0
  %7402 = extractvalue %dx.types.CBufRet.f32 %7400, 1
  %7403 = extractvalue %dx.types.CBufRet.f32 %7400, 2
  %7404 = fadd fast float %7401, %6326
  %7405 = fadd fast float %7402, %6327
  %7406 = fadd fast float %7403, %6328
  %7407 = fmul fast float %7404, %7389
  %7408 = call float @dx.op.tertiary.f32(i32 46, float %7390, float %7405, float %7407)  ; FMad(a,b,c)
  %7409 = call float @dx.op.tertiary.f32(i32 46, float %7391, float %7406, float %7408)  ; FMad(a,b,c)
  %7410 = fadd fast float %7409, %7392
  %7411 = fmul fast float %7404, %7394
  %7412 = call float @dx.op.tertiary.f32(i32 46, float %7395, float %7405, float %7411)  ; FMad(a,b,c)
  %7413 = call float @dx.op.tertiary.f32(i32 46, float %7396, float %7406, float %7412)  ; FMad(a,b,c)
  %7414 = fadd fast float %7413, %7397
  %7415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %51, float %7410, float %7414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7416 = extractvalue %dx.types.ResRet.f32 %7415, 0
  %7417 = fmul fast float %7416, %7399
  %7418 = fadd fast float %7417, %7398
  %7419 = call float @dx.op.unary.f32(i32 7, float %7418)  ; Saturate(value)
  %7420 = fmul fast float %7419, %7383
  %7421 = fsub fast float 1.000000e+00, %7420
  br label %7422

; <label>:7422                                    ; preds = %7387, %7385
  %7423 = phi float [ %7421, %7387 ], [ 1.000000e+00, %7385 ]
  %7424 = fmul fast float %7423, %7381
  br label %7425

; <label>:7425                                    ; preds = %7422, %7371, %6306
  %7426 = phi float [ 1.000000e+00, %6306 ], [ %7424, %7422 ], [ %7381, %7371 ]
  %7427 = call float @dx.op.binary.f32(i32 36, float %7426, float %7426)  ; FMin(a,b)
  %7428 = call float @dx.op.binary.f32(i32 36, float %7426, float %7427)  ; FMin(a,b)
  %7429 = fcmp fast ogt float %7428, 0.000000e+00
  br i1 %7429, label %7430, label %7595, !dx.controlflow.hints !129

; <label>:7430                                    ; preds = %7425
  %7431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7432 = extractvalue %dx.types.CBufRet.f32 %7431, 0
  %7433 = extractvalue %dx.types.CBufRet.f32 %7431, 1
  %7434 = extractvalue %dx.types.CBufRet.f32 %7431, 2
  %7435 = extractvalue %dx.types.CBufRet.f32 %7431, 3
  %7436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7437 = extractvalue %dx.types.CBufRet.f32 %7436, 0
  %7438 = extractvalue %dx.types.CBufRet.f32 %7436, 1
  %7439 = extractvalue %dx.types.CBufRet.f32 %7436, 2
  %7440 = extractvalue %dx.types.CBufRet.f32 %7436, 3
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7442 = extractvalue %dx.types.CBufRet.f32 %7441, 0
  %7443 = extractvalue %dx.types.CBufRet.f32 %7441, 1
  %7444 = extractvalue %dx.types.CBufRet.f32 %7441, 2
  %7445 = extractvalue %dx.types.CBufRet.f32 %7441, 3
  %7446 = fmul fast float %7432, %6326
  %7447 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %7433, float %7446)  ; FMad(a,b,c)
  %7448 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %7434, float %7447)  ; FMad(a,b,c)
  %7449 = fadd fast float %7448, %7435
  %7450 = fmul fast float %7437, %6326
  %7451 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %7438, float %7450)  ; FMad(a,b,c)
  %7452 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %7439, float %7451)  ; FMad(a,b,c)
  %7453 = fadd fast float %7452, %7440
  %7454 = fmul fast float %7442, %6326
  %7455 = call float @dx.op.tertiary.f32(i32 46, float %6327, float %7443, float %7454)  ; FMad(a,b,c)
  %7456 = call float @dx.op.tertiary.f32(i32 46, float %6328, float %7444, float %7455)  ; FMad(a,b,c)
  %7457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.f32 %7457, 0
  %7459 = extractvalue %dx.types.CBufRet.f32 %7457, 1
  %7460 = extractvalue %dx.types.CBufRet.f32 %7457, 3
  %7461 = fmul fast float %7460, %7449
  %7462 = fmul fast float %7460, %7453
  %7463 = fadd fast float %7461, %7458
  %7464 = fadd fast float %7462, %7459
  %7465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7466 = extractvalue %dx.types.CBufRet.f32 %7465, 0
  %7467 = extractvalue %dx.types.CBufRet.f32 %7465, 1
  %7468 = fsub fast float %7463, %7466
  %7469 = fsub fast float %7464, %7467
  %7470 = fcmp fast olt float %7468, 0.000000e+00
  %7471 = fcmp fast olt float %7469, 0.000000e+00
  %7472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7473 = extractvalue %dx.types.CBufRet.f32 %7472, 0
  %7474 = extractvalue %dx.types.CBufRet.f32 %7472, 1
  %7475 = extractvalue %dx.types.CBufRet.f32 %7472, 2
  %7476 = extractvalue %dx.types.CBufRet.f32 %7472, 3
  %7477 = select i1 %7470, float %7473, float %7475
  %7478 = select i1 %7471, float %7474, float %7476
  %7479 = fmul fast float %7477, %7468
  %7480 = fmul fast float %7478, %7469
  %7481 = call float @dx.op.unary.f32(i32 6, float %7479)  ; FAbs(value)
  %7482 = call float @dx.op.unary.f32(i32 6, float %7480)  ; FAbs(value)
  %7483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7483, 0
  %7485 = call float @dx.op.binary.f32(i32 35, float %7481, float %7482)  ; FMax(a,b)
  %7486 = fsub fast float %7484, %7485
  %7487 = call float @dx.op.unary.f32(i32 7, float %7486)  ; Saturate(value)
  %7488 = fcmp fast ogt float %7487, 0.000000e+00
  br i1 %7488, label %7489, label %7530, !dx.controlflow.hints !130

; <label>:7489                                    ; preds = %7430
  %7490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %54, float %7463, float %7464, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7491 = extractvalue %dx.types.ResRet.f32 %7490, 1
  %7492 = fcmp fast ogt float %7491, 0.000000e+00
  br i1 %7492, label %7493, label %7525

; <label>:7493                                    ; preds = %7489
  %7494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %54, float %7463, float %7464, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7495 = extractvalue %dx.types.ResRet.f32 %7494, 0
  %7496 = extractvalue %dx.types.ResRet.f32 %7494, 1
  %7497 = extractvalue %dx.types.ResRet.f32 %7494, 2
  %7498 = extractvalue %dx.types.ResRet.f32 %7494, 3
  %7499 = fsub fast float 1.000000e+00, %7445
  %7500 = fsub fast float %7499, %7456
  %7501 = fmul fast float %7500, 0x400921FB60000000
  %7502 = fadd fast float %7501, 0x3FF921FB60000000
  %7503 = call float @dx.op.unary.f32(i32 13, float %7502)  ; Sin(value)
  %7504 = fadd fast float %7503, -1.000000e+00
  %7505 = fmul fast float %7504, 0x3FD45F3060000000
  %7506 = fmul fast float %7500, 0x401921FB60000000
  %7507 = fadd fast float %7506, 0x400921FB60000000
  %7508 = call float @dx.op.unary.f32(i32 13, float %7507)  ; Sin(value)
  %7509 = fadd fast float %7508, 0x3E7777A5C0000000
  %7510 = fmul fast float %7509, 0x3FC45F3060000000
  %7511 = fmul fast float %7500, 0x4022D97C80000000
  %7512 = fadd fast float %7511, 0x4012D97C80000000
  %7513 = call float @dx.op.unary.f32(i32 13, float %7512)  ; Sin(value)
  %7514 = fadd fast float %7513, 1.000000e+00
  %7515 = fmul fast float %7514, 0x3FBB2995E0000000
  %7516 = fmul fast float %7500, 0x402921FB60000000
  %7517 = fadd fast float %7516, 0x401921FB60000000
  %7518 = call float @dx.op.unary.f32(i32 13, float %7517)  ; Sin(value)
  %7519 = fadd fast float %7518, 0xBE8777A5C0000000
  %7520 = fmul fast float %7519, 0x3FB45F3060000000
  %7521 = call float @dx.op.dot4.f32(i32 56, float %7495, float %7496, float %7497, float %7498, float %7505, float %7510, float %7515, float %7520)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7522 = fmul fast float %7521, 0xBFF7154760000000
  %7523 = call float @dx.op.unary.f32(i32 21, float %7522)  ; Exp(value)
  %7524 = call float @dx.op.unary.f32(i32 7, float %7523)  ; Saturate(value)
  br label %7525

; <label>:7525                                    ; preds = %7493, %7489
  %7526 = phi float [ %7524, %7493 ], [ 1.000000e+00, %7489 ]
  %7527 = fadd fast float %7526, -1.000000e+00
  %7528 = fmul fast float %7527, %7487
  %7529 = fadd fast float %7528, 1.000000e+00
  br label %7530

; <label>:7530                                    ; preds = %7525, %7430
  %7531 = phi float [ %7529, %7525 ], [ 1.000000e+00, %7430 ]
  %7532 = fmul fast float %7531, %7426
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 0
  %7535 = extractvalue %dx.types.CBufRet.f32 %7533, 1
  %7536 = extractvalue %dx.types.CBufRet.f32 %7533, 2
  %7537 = fadd fast float %7534, %170
  %7538 = fadd fast float %7535, %171
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 1
  %7541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7542 = extractvalue %dx.types.CBufRet.f32 %7541, 0
  %7543 = extractvalue %dx.types.CBufRet.f32 %7541, 1
  %7544 = extractvalue %dx.types.CBufRet.f32 %7541, 2
  %7545 = fsub fast float -0.000000e+00, %7537
  %7546 = fsub fast float -0.000000e+00, %7538
  %7547 = fsub fast float %5422, %7536
  %7548 = fadd fast float %7547, %7540
  %7549 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7545, float %7546, float %7548)  ; Dot3(ax,ay,az,bx,by,bz)
  %7550 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7542, float %7543, float %7544)  ; Dot3(ax,ay,az,bx,by,bz)
  %7551 = fdiv fast float 1.000000e+00, %7550
  %7552 = fmul fast float %7551, %7549
  %7553 = fmul fast float %7542, %7552
  %7554 = fmul fast float %7543, %7552
  %7555 = fadd fast float %7553, %7537
  %7556 = fadd fast float %7554, %7538
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.CBufRet.f32 %7557, 1
  %7560 = fsub fast float %7555, %7558
  %7561 = fsub fast float %7556, %7559
  %7562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.f32 %7562, 2
  %7564 = extractvalue %dx.types.CBufRet.f32 %7562, 3
  %7565 = fmul fast float %7560, %7563
  %7566 = fmul fast float %7561, %7564
  %7567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.i32 %7567, 3
  %7569 = icmp eq i32 %7568, 0
  br i1 %7569, label %7575, label %7570

; <label>:7570                                    ; preds = %7530
  %7571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %53, float %7565, float %7566, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7572 = extractvalue %dx.types.ResRet.f32 %7571, 0
  %7573 = extractvalue %dx.types.ResRet.f32 %7571, 1
  %7574 = extractvalue %dx.types.ResRet.f32 %7571, 2
  br label %7580

; <label>:7575                                    ; preds = %7530
  %7576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %54, float %7565, float %7566, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7577 = extractvalue %dx.types.ResRet.f32 %7576, 0
  %7578 = extractvalue %dx.types.ResRet.f32 %7576, 1
  %7579 = extractvalue %dx.types.ResRet.f32 %7576, 2
  br label %7580

; <label>:7580                                    ; preds = %7575, %7570
  %7581 = phi float [ %7572, %7570 ], [ %7577, %7575 ]
  %7582 = phi float [ %7573, %7570 ], [ %7578, %7575 ]
  %7583 = phi float [ %7574, %7570 ], [ %7579, %7575 ]
  %7584 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7585 = fmul fast float %7584, %7581
  %7586 = extractvalue %dx.types.CBufRet.f32 %7539, 0
  %7587 = fsub fast float %7552, %7586
  %7588 = fsub fast float %7587, %7585
  %7589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7588)  ; FMax(a,b)
  %7590 = fmul fast float %7589, %7582
  %7591 = call float @dx.op.binary.f32(i32 36, float %7583, float %7590)  ; FMin(a,b)
  %7592 = fmul fast float %7591, 0xBFF7154760000000
  %7593 = call float @dx.op.unary.f32(i32 21, float %7592)  ; Exp(value)
  %7594 = fmul fast float %7532, %7593
  br label %7595

; <label>:7595                                    ; preds = %7580, %7425
  %7596 = phi float [ %7594, %7580 ], [ %7426, %7425 ]
  %7597 = call float @dx.op.binary.f32(i32 36, float %7596, float %7596)  ; FMin(a,b)
  %7598 = call float @dx.op.binary.f32(i32 36, float %7596, float %7597)  ; FMin(a,b)
  %7599 = fcmp fast ogt float %7598, 0.000000e+00
  br i1 %7599, label %7600, label %7901, !dx.controlflow.hints !131

; <label>:7600                                    ; preds = %7595
  %7601 = fmul fast float %7596, %6318
  %7602 = fmul fast float %7596, %6319
  %7603 = fmul fast float %7596, %6320
  %7604 = fsub fast float %172, %5210
  %7605 = fcmp fast ogt float %7604, 0.000000e+00
  %7606 = fmul fast float %6307, 5.120000e+02
  %7607 = fmul fast float %6308, 5.120000e+02
  %7608 = fmul fast float %6309, 5.120000e+02
  %7609 = fadd fast float %7608, %172
  %7610 = fsub fast float %5210, %7609
  %7611 = fmul fast float %7610, 2.000000e+00
  %7612 = fadd fast float %7611, %7609
  %7613 = select i1 %7605, float %7612, float %7609
  %7614 = fsub fast float %7613, %172
  %7615 = call float @dx.op.dot3.f32(i32 55, float %7606, float %7607, float %7614, float %7606, float %7607, float %7614)  ; Dot3(ax,ay,az,bx,by,bz)
  %7616 = call float @dx.op.unary.f32(i32 25, float %7615)  ; Rsqrt(value)
  %7617 = fmul fast float %7616, %7606
  %7618 = fmul fast float %7616, %7607
  %7619 = fmul fast float %7616, %7614
  %7620 = fsub fast float %5210, %172
  %7621 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7620)  ; Dot3(ax,ay,az,bx,by,bz)
  %7622 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7617, float %7618, float %7619)  ; Dot3(ax,ay,az,bx,by,bz)
  %7623 = fdiv fast float 1.000000e+00, %7622
  %7624 = fmul fast float %7623, %7621
  %7625 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7604, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7626 = fcmp fast ogt float %7625, 0.000000e+00
  %7627 = fcmp fast olt float %7625, 0.000000e+00
  %7628 = zext i1 %7626 to i32
  %7629 = zext i1 %7627 to i32
  %7630 = sub nsw i32 %7628, %7629
  %7631 = sitofp i32 %7630 to float
  %7632 = fsub fast float %7613, %5210
  %7633 = call float @dx.op.dot3.f32(i32 55, float %7606, float %7607, float %7632, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7634 = fcmp fast ogt float %7633, 0.000000e+00
  %7635 = fcmp fast olt float %7633, 0.000000e+00
  %7636 = zext i1 %7634 to i32
  %7637 = zext i1 %7635 to i32
  %7638 = sub nsw i32 %7636, %7637
  %7639 = sitofp i32 %7638 to float
  %7640 = fcmp fast une float %7631, %7639
  br i1 %7640, label %7641, label %7651

; <label>:7641                                    ; preds = %7600
  %7642 = fmul fast float %7624, %7619
  %7643 = fmul fast float %7624, %7618
  %7644 = fmul fast float %7624, %7617
  %7645 = fmul fast float %7644, %7644
  %7646 = fmul fast float %7643, %7643
  %7647 = fadd fast float %7645, %7646
  %7648 = fmul fast float %7642, %7642
  %7649 = fadd fast float %7647, %7648
  %7650 = call float @dx.op.unary.f32(i32 24, float %7649)  ; Sqrt(value)
  br label %7661

; <label>:7651                                    ; preds = %7600
  %7652 = icmp slt i32 %7630, 0
  br i1 %7652, label %7653, label %7661

; <label>:7653                                    ; preds = %7651
  %7654 = fsub fast float %172, %7613
  %7655 = fmul fast float %7606, %7606
  %7656 = fmul fast float %7607, %7607
  %7657 = fadd fast float %7655, %7656
  %7658 = fmul fast float %7654, %7654
  %7659 = fadd fast float %7657, %7658
  %7660 = call float @dx.op.unary.f32(i32 24, float %7659)  ; Sqrt(value)
  br label %7661

; <label>:7661                                    ; preds = %7653, %7651, %7641
  %7662 = phi float [ %7650, %7641 ], [ %7660, %7653 ], [ 0.000000e+00, %7651 ]
  %7663 = fsub fast float -0.000000e+00, %7662
  %7664 = select i1 %7605, float -0.000000e+00, float %7663
  %7665 = fmul fast float %5211, 0x3FF7154760000000
  %7666 = fmul fast float %7665, %7664
  %7667 = fmul fast float %5212, 0x3FF7154760000000
  %7668 = fmul fast float %7667, %7664
  %7669 = fmul fast float %5213, 0x3FF7154760000000
  %7670 = fmul fast float %7669, %7664
  %7671 = call float @dx.op.unary.f32(i32 21, float %7666)  ; Exp(value)
  %7672 = call float @dx.op.unary.f32(i32 21, float %7668)  ; Exp(value)
  %7673 = call float @dx.op.unary.f32(i32 21, float %7670)  ; Exp(value)
  %7674 = call float @dx.op.unary.f32(i32 7, float %7671)  ; Saturate(value)
  %7675 = call float @dx.op.unary.f32(i32 7, float %7672)  ; Saturate(value)
  %7676 = call float @dx.op.unary.f32(i32 7, float %7673)  ; Saturate(value)
  %7677 = fmul fast float %7601, %7674
  %7678 = fmul fast float %7602, %7675
  %7679 = fmul fast float %7603, %7676
  %7680 = fsub fast float %6307, %5410
  %7681 = fsub fast float %6308, %5409
  %7682 = fsub fast float %6309, %5408
  %7683 = call float @dx.op.dot3.f32(i32 55, float %7680, float %7681, float %7682, float %7680, float %7681, float %7682)  ; Dot3(ax,ay,az,bx,by,bz)
  %7684 = call float @dx.op.unary.f32(i32 25, float %7683)  ; Rsqrt(value)
  %7685 = fmul fast float %7684, %7680
  %7686 = fmul fast float %7684, %7681
  %7687 = fmul fast float %7684, %7682
  %7688 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %5417, float %5418, float %5419)  ; Dot3(ax,ay,az,bx,by,bz)
  %7689 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5406, float %5405, float %7685, float %7686, float %7687)  ; Dot3(ax,ay,az,bx,by,bz)
  %7690 = call float @dx.op.unary.f32(i32 7, float %7688)  ; Saturate(value)
  %7691 = fmul fast float %7690, %7690
  %7692 = fmul fast float %7691, %5450
  %7693 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7694 = fmul fast float %7693, %7690
  %7695 = call float @dx.op.dot3.f32(i32 55, float %5417, float %5418, float %5419, float %7685, float %7686, float %7687)  ; Dot3(ax,ay,az,bx,by,bz)
  %7696 = fmul fast float %7695, %7695
  %7697 = call float @dx.op.unary.f32(i32 6, float %7688)  ; FAbs(value)
  %7698 = fsub fast float 1.000000e+00, %5443
  %7699 = fmul fast float %5425, %5425
  %7700 = fmul fast float %7699, %7698
  %7701 = fadd fast float %7700, %5443
  %7702 = bitcast float %7701 to i32
  %7703 = ashr i32 %7702, 1
  %7704 = add nsw i32 %7703, 532487669
  %7705 = bitcast i32 %7704 to float
  %7706 = fadd fast float %7705, %5425
  %7707 = fmul fast float %5443, %7696
  %7708 = fsub fast float 1.000000e+00, %7696
  %7709 = fadd fast float %7708, %7707
  %7710 = fmul fast float %7697, %7697
  %7711 = fmul fast float %7710, %7698
  %7712 = fadd fast float %7711, %5443
  %7713 = bitcast float %7712 to i32
  %7714 = ashr i32 %7713, 1
  %7715 = add nsw i32 %7714, 532487669
  %7716 = bitcast i32 %7715 to float
  %7717 = fadd fast float %7716, %7697
  %7718 = fmul fast float %7709, %7709
  %7719 = fmul fast float %7718, %7706
  %7720 = fmul fast float %7719, %7717
  %7721 = fdiv fast float 0x3FF0A00000000000, %7720
  %7722 = fmul fast float %7721, %5443
  %7723 = call float @dx.op.unary.f32(i32 6, float %7689)  ; FAbs(value)
  %7724 = fsub fast float 1.000000e+00, %7723
  %7725 = bitcast float %7724 to i32
  %7726 = sitofp i32 %7725 to float
  %7727 = fmul fast float %7726, 5.000000e+00
  %7728 = fadd fast float %7727, 0xC1EFBF8940000000
  %7729 = fptosi float %7728 to i32
  %7730 = bitcast i32 %7729 to float
  %7731 = fsub fast float 1.000000e+00, %5414
  %7732 = fsub fast float 1.000000e+00, %5415
  %7733 = fsub fast float 1.000000e+00, %5423
  %7734 = fmul fast float %7730, %7731
  %7735 = fmul fast float %7730, %7732
  %7736 = fmul fast float %7730, %7733
  %7737 = fadd fast float %7734, %5414
  %7738 = fadd fast float %7735, %5415
  %7739 = fadd fast float %7736, %5423
  br i1 %5708, label %7740, label %7763

; <label>:7740                                    ; preds = %7661
  %7741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4742, float %7723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7742 = extractvalue %dx.types.ResRet.f32 %7741, 0
  %7743 = extractvalue %dx.types.ResRet.f32 %7741, 1
  %7744 = extractvalue %dx.types.ResRet.f32 %7741, 2
  %7745 = fadd fast float %7742, -5.000000e-01
  %7746 = fadd fast float %7743, -5.000000e-01
  %7747 = fadd fast float %7744, -5.000000e-01
  %7748 = fmul fast float %5414, 4.000000e+00
  %7749 = fmul fast float %7748, %7731
  %7750 = fmul fast float %7749, %7745
  %7751 = fmul fast float %5415, 4.000000e+00
  %7752 = fmul fast float %7751, %7732
  %7753 = fmul fast float %7752, %7746
  %7754 = fmul fast float %5423, 4.000000e+00
  %7755 = fmul fast float %7754, %7733
  %7756 = fmul fast float %7755, %7747
  %7757 = fadd fast float %7750, %7737
  %7758 = fadd fast float %7753, %7738
  %7759 = fadd fast float %7756, %7739
  %7760 = call float @dx.op.unary.f32(i32 7, float %7757)  ; Saturate(value)
  %7761 = call float @dx.op.unary.f32(i32 7, float %7758)  ; Saturate(value)
  %7762 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  br label %7763

; <label>:7763                                    ; preds = %7740, %7661
  %7764 = phi float [ %7760, %7740 ], [ %7737, %7661 ]
  %7765 = phi float [ %7761, %7740 ], [ %7738, %7661 ]
  %7766 = phi float [ %7762, %7740 ], [ %7739, %7661 ]
  %7767 = fmul fast float %7688, 9.843750e-01
  %7768 = fadd fast float %7767, 7.812500e-03
  %7769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7768, float %5698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7770 = extractvalue %dx.types.ResRet.f32 %7769, 2
  %7771 = extractvalue %dx.types.ResRet.f32 %7769, 3
  %7772 = fmul fast float %7770, %5414
  %7773 = fmul fast float %7770, %5415
  %7774 = fmul fast float %7770, %5423
  %7775 = fadd fast float %7772, %7771
  %7776 = fadd fast float %7773, %7771
  %7777 = fadd fast float %7774, %7771
  br i1 %5708, label %7778, label %7801

; <label>:7778                                    ; preds = %7763
  %7779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4742, float %7688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7780 = extractvalue %dx.types.ResRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.ResRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.ResRet.f32 %7779, 2
  %7783 = fadd fast float %7780, -5.000000e-01
  %7784 = fadd fast float %7781, -5.000000e-01
  %7785 = fadd fast float %7782, -5.000000e-01
  %7786 = fmul fast float %5414, 4.000000e+00
  %7787 = fmul fast float %7786, %7731
  %7788 = fmul fast float %7787, %7783
  %7789 = fmul fast float %5415, 4.000000e+00
  %7790 = fmul fast float %7789, %7732
  %7791 = fmul fast float %7790, %7784
  %7792 = fmul fast float %5423, 4.000000e+00
  %7793 = fmul fast float %7792, %7733
  %7794 = fmul fast float %7793, %7785
  %7795 = fadd fast float %7788, %7775
  %7796 = fadd fast float %7791, %7776
  %7797 = fadd fast float %7794, %7777
  %7798 = call float @dx.op.unary.f32(i32 7, float %7795)  ; Saturate(value)
  %7799 = call float @dx.op.unary.f32(i32 7, float %7796)  ; Saturate(value)
  %7800 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  br label %7801

; <label>:7801                                    ; preds = %7778, %7763
  %7802 = phi float [ %7798, %7778 ], [ %7775, %7763 ]
  %7803 = phi float [ %7799, %7778 ], [ %7776, %7763 ]
  %7804 = phi float [ %7800, %7778 ], [ %7777, %7763 ]
  %7805 = call float @dx.op.binary.f32(i32 35, float %7803, float %7804)  ; FMax(a,b)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7802, float %7805)  ; FMax(a,b)
  %7807 = fsub fast float 1.000000e+00, %7806
  %7808 = fsub fast float -0.000000e+00, %5417
  %7809 = fsub fast float -0.000000e+00, %5418
  %7810 = fsub fast float -0.000000e+00, %5419
  %7811 = call float @dx.op.dot3.f32(i32 55, float %6307, float %6308, float %6309, float %7808, float %7809, float %7810)  ; Dot3(ax,ay,az,bx,by,bz)
  %7812 = call float @dx.op.unary.f32(i32 7, float %7811)  ; Saturate(value)
  %7813 = fmul fast float %7812, 9.843750e-01
  %7814 = fadd fast float %7813, 7.812500e-03
  %7815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %7814, float %5698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7816 = extractvalue %dx.types.ResRet.f32 %7815, 2
  %7817 = extractvalue %dx.types.ResRet.f32 %7815, 3
  %7818 = fmul fast float %7816, %5414
  %7819 = fmul fast float %7816, %5415
  %7820 = fmul fast float %7816, %5423
  %7821 = fadd fast float %7818, %7817
  %7822 = fadd fast float %7819, %7817
  %7823 = fadd fast float %7820, %7817
  br i1 %5708, label %7824, label %7847

; <label>:7824                                    ; preds = %7801
  %7825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4742, float %7812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7826 = extractvalue %dx.types.ResRet.f32 %7825, 0
  %7827 = extractvalue %dx.types.ResRet.f32 %7825, 1
  %7828 = extractvalue %dx.types.ResRet.f32 %7825, 2
  %7829 = fadd fast float %7826, -5.000000e-01
  %7830 = fadd fast float %7827, -5.000000e-01
  %7831 = fadd fast float %7828, -5.000000e-01
  %7832 = fmul fast float %5414, 4.000000e+00
  %7833 = fmul fast float %7832, %7731
  %7834 = fmul fast float %7833, %7829
  %7835 = fmul fast float %5415, 4.000000e+00
  %7836 = fmul fast float %7835, %7732
  %7837 = fmul fast float %7836, %7830
  %7838 = fmul fast float %5423, 4.000000e+00
  %7839 = fmul fast float %7838, %7733
  %7840 = fmul fast float %7839, %7831
  %7841 = fadd fast float %7834, %7821
  %7842 = fadd fast float %7837, %7822
  %7843 = fadd fast float %7840, %7823
  %7844 = call float @dx.op.unary.f32(i32 7, float %7841)  ; Saturate(value)
  %7845 = call float @dx.op.unary.f32(i32 7, float %7842)  ; Saturate(value)
  %7846 = call float @dx.op.unary.f32(i32 7, float %7843)  ; Saturate(value)
  br label %7847

; <label>:7847                                    ; preds = %7824, %7801
  %7848 = phi float [ %7844, %7824 ], [ %7821, %7801 ]
  %7849 = phi float [ %7845, %7824 ], [ %7822, %7801 ]
  %7850 = phi float [ %7846, %7824 ], [ %7823, %7801 ]
  %7851 = call float @dx.op.binary.f32(i32 35, float %7849, float %7850)  ; FMax(a,b)
  %7852 = call float @dx.op.binary.f32(i32 35, float %7848, float %7851)  ; FMax(a,b)
  %7853 = fsub fast float 1.000000e+00, %7852
  %7854 = fmul fast float %7853, %7812
  %7855 = fmul fast float %7854, %4833
  %7856 = fmul fast float %7854, %4834
  %7857 = fmul fast float %7854, %4835
  %7858 = fmul fast float %7764, %7722
  %7859 = fmul fast float %7765, %7722
  %7860 = fmul fast float %7766, %7722
  %7861 = fsub fast float 1.000000e+00, %7689
  %7862 = bitcast float %7861 to i32
  %7863 = sitofp i32 %7862 to float
  %7864 = fmul fast float %7863, 5.000000e+00
  %7865 = fadd fast float %7864, 0xC1EFBF8940000000
  %7866 = fptosi float %7865 to i32
  %7867 = bitcast i32 %7866 to float
  %7868 = fmul fast float %7867, %4743
  %7869 = fmul fast float %7807, %7868
  %7870 = fmul fast float %7869, %6247
  %7871 = fmul fast float %7869, %6248
  %7872 = fmul fast float %7869, %6249
  %7873 = fmul fast float %7807, %7694
  %7874 = fadd fast float %7870, %7858
  %7875 = fadd fast float %7871, %7859
  %7876 = fadd fast float %7872, %7860
  %7877 = fadd fast float %7855, %7873
  %7878 = fadd fast float %7856, %7873
  %7879 = fadd fast float %7857, %7873
  %7880 = fmul fast float %7877, %7677
  %7881 = fmul fast float %7878, %7678
  %7882 = fmul fast float %7879, %7679
  %7883 = fmul fast float %7694, %7677
  %7884 = fmul fast float %7883, %7874
  %7885 = fmul fast float %7694, %7678
  %7886 = fmul fast float %7885, %7875
  %7887 = fmul fast float %7694, %7679
  %7888 = fmul fast float %7887, %7876
  %7889 = fadd fast float %7880, %6297
  %7890 = fmul fast float %7889, %4739
  %7891 = fadd fast float %7881, %6299
  %7892 = fmul fast float %7891, %4739
  %7893 = fadd fast float %7882, %6301
  %7894 = fmul fast float %7893, %4739
  %7895 = fadd fast float %7884, %6280
  %7896 = fmul fast float %7895, %4739
  %7897 = fadd fast float %7886, %6283
  %7898 = fmul fast float %7897, %4739
  %7899 = fadd fast float %7888, %6286
  %7900 = fmul fast float %7899, %4739
  br label %7901

; <label>:7901                                    ; preds = %7847, %7595, %6230
  %7902 = phi float [ %6281, %6230 ], [ %6281, %7595 ], [ %7896, %7847 ]
  %7903 = phi float [ %6284, %6230 ], [ %6284, %7595 ], [ %7898, %7847 ]
  %7904 = phi float [ %6287, %6230 ], [ %6287, %7595 ], [ %7900, %7847 ]
  %7905 = phi float [ %6298, %6230 ], [ %6298, %7595 ], [ %7890, %7847 ]
  %7906 = phi float [ %6300, %6230 ], [ %6300, %7595 ], [ %7892, %7847 ]
  %7907 = phi float [ %6302, %6230 ], [ %6302, %7595 ], [ %7894, %7847 ]
  %7908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7909 = extractvalue %dx.types.CBufRet.i32 %7908, 0
  %7910 = icmp eq i32 %7909, 0
  br i1 %7910, label %8628, label %7911

; <label>:7911                                    ; preds = %7901
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 2
  %7914 = extractvalue %dx.types.CBufRet.f32 %7912, 3
  %7915 = fmul fast float %7913, %111
  %7916 = fmul fast float %7914, %112
  %7917 = fptoui float %7915 to i32
  %7918 = fptoui float %7916 to i32
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.CBufRet.f32 %7919, 2
  %7922 = extractvalue %dx.types.CBufRet.f32 %7919, 3
  %7923 = fadd fast float %99, -4.000000e+00
  %7924 = call float @dx.op.binary.f32(i32 35, float %7923, float 0.000000e+00)  ; FMax(a,b)
  %7925 = fadd fast float %7924, %7920
  %7926 = fmul fast float %7925, %7921
  %7927 = call float @dx.op.unary.f32(i32 23, float %7926)  ; Log(value)
  %7928 = fmul fast float %7927, %7922
  %7929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.f32 %7929, 2
  %7931 = fmul fast float %7928, %7930
  %7932 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  %7933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.i32 %7933, 1
  %7935 = add i32 %7934, -1
  %7936 = uitofp i32 %7934 to float
  %7937 = fmul fast float %7936, %7932
  %7938 = fptoui float %7937 to i32
  %7939 = call i32 @dx.op.binary.i32(i32 40, i32 %7938, i32 %7935)  ; UMin(a,b)
  %7940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7941 = extractvalue %dx.types.CBufRet.i32 %7940, 2
  %7942 = extractvalue %dx.types.CBufRet.i32 %7940, 3
  %7943 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7918, i32 %7941, i32 %7917)  ; UMad(a,b,c)
  %7944 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7939, i32 %7942, i32 %7943)  ; UMad(a,b,c)
  %7945 = add nsw i32 %7909, -1
  %7946 = call i32 @dx.op.binary.i32(i32 37, i32 %7945, i32 0)  ; IMax(a,b)
  %7947 = call float @dx.op.binary.f32(i32 35, float %99, float 0.000000e+00)  ; FMax(a,b)
  %7948 = fptoui float %7947 to i32
  %7949 = lshr i32 %7948, 5
  %7950 = call i32 @dx.op.binary.i32(i32 40, i32 %7949, i32 8191)  ; UMin(a,b)
  %7951 = shl i32 %7950, 2
  %7952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7951, i32 undef)  ; BufferLoad(srv,index,wot)
  %7953 = extractvalue %dx.types.ResRet.i32 %7952, 0
  %7954 = lshr i32 %7953, 16
  %7955 = and i32 %7953, 65535
  %7956 = lshr i32 %7953, 21
  %7957 = lshr i32 %7955, 5
  %7958 = call i32 @dx.op.binary.i32(i32 40, i32 %7957, i32 %7946)  ; UMin(a,b)
  %7959 = icmp ugt i32 %7956, %7958
  br i1 %7959, label %8628, label %7960

; <label>:7960                                    ; preds = %7911
  br label %7961

; <label>:7961                                    ; preds = %8618, %7960
  %7962 = phi i32 [ %8625, %8618 ], [ %7956, %7960 ]
  %7963 = phi float [ %8619, %8618 ], [ %7902, %7960 ]
  %7964 = phi float [ %8620, %8618 ], [ %7903, %7960 ]
  %7965 = phi float [ %8621, %8618 ], [ %7904, %7960 ]
  %7966 = phi float [ %8622, %8618 ], [ %7905, %7960 ]
  %7967 = phi float [ %8623, %8618 ], [ %7906, %7960 ]
  %7968 = phi float [ %8624, %8618 ], [ %7907, %7960 ]
  %7969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.i32 %7969, 0
  %7971 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7944, i32 %7970, i32 %7962)  ; UMad(a,b,c)
  %7972 = shl i32 %7971, 2
  %7973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7972, i32 undef)  ; BufferLoad(srv,index,wot)
  %7974 = extractvalue %dx.types.ResRet.i32 %7973, 0
  %7975 = shl i32 %7962, 5
  %7976 = sub nsw i32 %7954, %7975
  %7977 = call i32 @dx.op.binary.i32(i32 37, i32 %7976, i32 0)  ; IMax(a,b)
  %7978 = call i32 @dx.op.binary.i32(i32 38, i32 %7977, i32 31)  ; IMin(a,b)
  %7979 = sub nsw i32 1, %7954
  %7980 = add nsw i32 %7979, %7955
  %7981 = call i32 @dx.op.binary.i32(i32 37, i32 %7980, i32 0)  ; IMax(a,b)
  %7982 = call i32 @dx.op.binary.i32(i32 38, i32 %7981, i32 32)  ; IMin(a,b)
  %7983 = and i32 %7982, 31
  %7984 = shl i32 -1, %7983
  %7985 = xor i32 %7984, -1
  %7986 = and i32 %7978, 31
  %7987 = shl i32 %7985, %7986
  %7988 = icmp eq i32 %7982, 32
  %7989 = select i1 %7988, i32 -1, i32 %7987
  %7990 = and i32 %7989, %7974
  %7991 = icmp eq i32 %7990, 0
  br i1 %7991, label %8618, label %7992

; <label>:7992                                    ; preds = %7961
  br label %7993

; <label>:7993                                    ; preds = %8127, %7992
  %7994 = phi i32 [ %8005, %8127 ], [ %7990, %7992 ]
  %7995 = phi float [ %8128, %8127 ], [ %7963, %7992 ]
  %7996 = phi float [ %8129, %8127 ], [ %7964, %7992 ]
  %7997 = phi float [ %8130, %8127 ], [ %7965, %7992 ]
  %7998 = phi float [ %8131, %8127 ], [ %7966, %7992 ]
  %7999 = phi float [ %8132, %8127 ], [ %7967, %7992 ]
  %8000 = phi float [ %8133, %8127 ], [ %7968, %7992 ]
  %8001 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7994)  ; FirstbitLo(value)
  %8002 = add i32 %8001, %7975
  %8003 = and i32 %8001, 31
  %8004 = shl i32 1, %8003
  %8005 = xor i32 %8004, %7994
  %8006 = mul i32 %8002, 112
  %8007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8006, i32 undef)  ; BufferLoad(srv,index,wot)
  %8008 = extractvalue %dx.types.ResRet.f32 %8007, 0
  %8009 = extractvalue %dx.types.ResRet.f32 %8007, 1
  %8010 = extractvalue %dx.types.ResRet.f32 %8007, 2
  %8011 = or i32 %8006, 12
  %8012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8011, i32 undef)  ; BufferLoad(srv,index,wot)
  %8013 = extractvalue %dx.types.ResRet.f32 %8012, 0
  %8014 = add i32 %8006, 16
  %8015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8014, i32 undef)  ; BufferLoad(srv,index,wot)
  %8016 = extractvalue %dx.types.ResRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.ResRet.f32 %8015, 1
  %8018 = extractvalue %dx.types.ResRet.f32 %8015, 2
  %8019 = add i32 %8006, 28
  %8020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8019, i32 undef)  ; BufferLoad(srv,index,wot)
  %8021 = extractvalue %dx.types.ResRet.i32 %8020, 0
  %8022 = add i32 %8006, 44
  %8023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8022, i32 undef)  ; BufferLoad(srv,index,wot)
  %8024 = extractvalue %dx.types.ResRet.f32 %8023, 0
  %8025 = add i32 %8006, 48
  %8026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8025, i32 undef)  ; BufferLoad(srv,index,wot)
  %8027 = extractvalue %dx.types.ResRet.f32 %8026, 0
  %8028 = extractvalue %dx.types.ResRet.f32 %8026, 1
  %8029 = extractvalue %dx.types.ResRet.f32 %8026, 2
  %8030 = extractvalue %dx.types.ResRet.f32 %8026, 3
  %8031 = add i32 %8006, 64
  %8032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8031, i32 undef)  ; BufferLoad(srv,index,wot)
  %8033 = extractvalue %dx.types.ResRet.f32 %8032, 0
  %8034 = extractvalue %dx.types.ResRet.f32 %8032, 1
  %8035 = extractvalue %dx.types.ResRet.f32 %8032, 2
  %8036 = extractvalue %dx.types.ResRet.f32 %8032, 3
  %8037 = add i32 %8006, 80
  %8038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %8037, i32 undef)  ; BufferLoad(srv,index,wot)
  %8039 = extractvalue %dx.types.ResRet.f32 %8038, 1
  %8040 = extractvalue %dx.types.ResRet.f32 %8038, 2
  %8041 = add i32 %8006, 92
  %8042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %8041, i32 undef)  ; BufferLoad(srv,index,wot)
  %8043 = extractvalue %dx.types.ResRet.i32 %8042, 0
  %8044 = call float @dx.op.dot3.f32(i32 55, float %8008, float %8009, float %8010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8045 = select i1 %232, float %8039, float %8008
  %8046 = select i1 %232, float %8044, float %8009
  %8047 = select i1 %232, float %8040, float %8010
  %8048 = and i32 %8043, 65535
  %8049 = uitofp i32 %8048 to float
  %8050 = lshr i32 %8043, 16
  %8051 = uitofp i32 %8050 to float
  %8052 = and i32 %8021, 65535
  %8053 = and i32 %8021, 50331648
  %8054 = icmp eq i32 %8053, 33554432
  %8055 = fsub fast float %8027, %170
  %8056 = fsub fast float %8028, %171
  %8057 = fsub fast float %8029, %172
  %8058 = call float @dx.op.dot3.f32(i32 55, float %8055, float %8056, float %8057, float %8055, float %8056, float %8057)  ; Dot3(ax,ay,az,bx,by,bz)
  %8059 = call float @dx.op.unary.f32(i32 24, float %8058)  ; Sqrt(value)
  %8060 = fdiv fast float 1.000000e+00, %8059
  %8061 = fmul fast float %8060, %8055
  %8062 = fmul fast float %8060, %8056
  %8063 = fmul fast float %8060, %8057
  %8064 = fadd fast float %8059, %8013
  %8065 = fdiv fast float 1.000000e+00, %8064
  %8066 = fmul float %8024, %8065
  %8067 = fmul float %8066, %8066
  %8068 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  br i1 %8054, label %8069, label %8090

; <label>:8069                                    ; preds = %7993
  %8070 = fmul fast float %8035, %8016
  %8071 = fmul fast float %8035, %8017
  %8072 = fmul fast float %8035, %8018
  %8073 = fadd fast float %8055, %8070
  %8074 = fadd fast float %8056, %8071
  %8075 = fadd fast float %8057, %8072
  %8076 = call float @dx.op.dot3.f32(i32 55, float %8073, float %8074, float %8075, float %8073, float %8074, float %8075)  ; Dot3(ax,ay,az,bx,by,bz)
  %8077 = call float @dx.op.unary.f32(i32 25, float %8076)  ; Rsqrt(value)
  %8078 = fmul fast float %8077, %8073
  %8079 = fmul fast float %8077, %8074
  %8080 = fmul fast float %8077, %8075
  %8081 = fsub fast float %170, %8027
  %8082 = fsub fast float %171, %8028
  %8083 = fsub fast float %172, %8029
  %8084 = fsub fast float -0.000000e+00, %8081
  %8085 = fsub fast float -0.000000e+00, %8082
  %8086 = fsub fast float -0.000000e+00, %8083
  %8087 = call float @dx.op.dot3.f32(i32 55, float %8084, float %8085, float %8086, float %8016, float %8017, float %8018)  ; Dot3(ax,ay,az,bx,by,bz)
  %8088 = fcmp fast ogt float %8087, 0.000000e+00
  %8089 = uitofp i1 %8088 to float
  br label %8090

; <label>:8090                                    ; preds = %8069, %7993
  %8091 = phi float [ %8089, %8069 ], [ 1.000000e+00, %7993 ]
  %8092 = phi float [ %8078, %8069 ], [ %8061, %7993 ]
  %8093 = phi float [ %8079, %8069 ], [ %8062, %7993 ]
  %8094 = phi float [ %8080, %8069 ], [ %8063, %7993 ]
  %8095 = call float @dx.op.dot3.f32(i32 55, float %8016, float %8017, float %8018, float %8092, float %8093, float %8094)  ; Dot3(ax,ay,az,bx,by,bz)
  %8096 = fmul fast float %8095, %8095
  %8097 = call float @dx.op.unary.f32(i32 7, float %8096)  ; Saturate(value)
  %8098 = fsub fast float 1.000000e+00, %8097
  %8099 = fmul fast float %8098, 5.000000e-01
  %8100 = fcmp fast ogt float %8095, 0.000000e+00
  %8101 = fsub fast float 1.000000e+00, %8099
  %8102 = select i1 %8100, float %8099, float %8101
  %8103 = fmul fast float %8102, %8051
  %8104 = fadd fast float %8103, %8049
  %8105 = fmul fast float %8104, 0x3EF0001000000000
  %8106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %54, float %8105, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8107 = extractvalue %dx.types.ResRet.f32 %8106, 0
  %8108 = fmul fast float %8095, %8033
  %8109 = fadd fast float %8108, %8034
  %8110 = call float @dx.op.unary.f32(i32 7, float %8109)  ; Saturate(value)
  %8111 = select i1 %8054, float 1.000000e+00, float %8110
  %8112 = select i1 %8054, float %8110, float 1.000000e+00
  %8113 = fmul fast float %8059, %8030
  %8114 = fsub fast float 1.000000e+00, %8113
  %8115 = fmul fast float %8114, %8036
  %8116 = call float @dx.op.unary.f32(i32 7, float %8115)  ; Saturate(value)
  %8117 = fmul fast float %8116, %8112
  %8118 = fmul fast float %8117, 2.000000e+00
  %8119 = fsub fast float 3.000000e+00, %8118
  %8120 = fmul fast float %8107, %8091
  %8121 = fmul fast float %8117, %8117
  %8122 = fmul fast float %8121, %8120
  %8123 = fmul fast float %8122, %8119
  %8124 = call float @dx.op.binary.f32(i32 36, float %8123, float %8123)  ; FMin(a,b)
  %8125 = call float @dx.op.binary.f32(i32 36, float %8123, float %8124)  ; FMin(a,b)
  %8126 = fcmp fast ogt float %8125, 0.000000e+00
  br i1 %8126, label %8135, label %8127, !dx.controlflow.hints !132

; <label>:8127                                    ; preds = %8566, %8281, %8090
  %8128 = phi float [ %7995, %8281 ], [ %7995, %8090 ], [ %8614, %8566 ]
  %8129 = phi float [ %7996, %8281 ], [ %7996, %8090 ], [ %8615, %8566 ]
  %8130 = phi float [ %7997, %8281 ], [ %7997, %8090 ], [ %8616, %8566 ]
  %8131 = phi float [ %7998, %8281 ], [ %7998, %8090 ], [ %8605, %8566 ]
  %8132 = phi float [ %7999, %8281 ], [ %7999, %8090 ], [ %8606, %8566 ]
  %8133 = phi float [ %8000, %8281 ], [ %8000, %8090 ], [ %8607, %8566 ]
  %8134 = icmp eq i32 %7994, %8004
  br i1 %8134, label %8617, label %7993

; <label>:8135                                    ; preds = %8090
  %8136 = icmp eq i32 %8052, 255
  br i1 %8136, label %8281, label %8137, !dx.controlflow.hints !133

; <label>:8137                                    ; preds = %8135
  %8138 = mul nuw nsw i32 %8052, 176
  %8139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8138, i32 undef)  ; BufferLoad(srv,index,wot)
  %8140 = extractvalue %dx.types.ResRet.f32 %8139, 0
  %8141 = extractvalue %dx.types.ResRet.f32 %8139, 1
  %8142 = extractvalue %dx.types.ResRet.f32 %8139, 2
  %8143 = extractvalue %dx.types.ResRet.f32 %8139, 3
  %8144 = add nuw nsw i32 %8138, 16
  %8145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8144, i32 undef)  ; BufferLoad(srv,index,wot)
  %8146 = extractvalue %dx.types.ResRet.f32 %8145, 0
  %8147 = extractvalue %dx.types.ResRet.f32 %8145, 1
  %8148 = add nuw nsw i32 %8138, 32
  %8149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8148, i32 undef)  ; BufferLoad(srv,index,wot)
  %8150 = extractvalue %dx.types.ResRet.f32 %8149, 0
  %8151 = extractvalue %dx.types.ResRet.f32 %8149, 1
  %8152 = extractvalue %dx.types.ResRet.f32 %8149, 2
  %8153 = add nuw nsw i32 %8138, 48
  %8154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8153, i32 undef)  ; BufferLoad(srv,index,wot)
  %8155 = extractvalue %dx.types.ResRet.f32 %8154, 0
  %8156 = extractvalue %dx.types.ResRet.f32 %8154, 1
  %8157 = extractvalue %dx.types.ResRet.f32 %8154, 2
  %8158 = extractvalue %dx.types.ResRet.f32 %8154, 3
  %8159 = add nuw nsw i32 %8138, 64
  %8160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8159, i32 undef)  ; BufferLoad(srv,index,wot)
  %8161 = extractvalue %dx.types.ResRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.ResRet.f32 %8160, 1
  %8163 = extractvalue %dx.types.ResRet.f32 %8160, 2
  %8164 = extractvalue %dx.types.ResRet.f32 %8160, 3
  %8165 = add nuw nsw i32 %8138, 80
  %8166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8165, i32 undef)  ; BufferLoad(srv,index,wot)
  %8167 = extractvalue %dx.types.ResRet.f32 %8166, 0
  %8168 = extractvalue %dx.types.ResRet.f32 %8166, 1
  %8169 = extractvalue %dx.types.ResRet.f32 %8166, 2
  %8170 = extractvalue %dx.types.ResRet.f32 %8166, 3
  %8171 = add nuw nsw i32 %8138, 96
  %8172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %8171, i32 undef)  ; BufferLoad(srv,index,wot)
  %8173 = extractvalue %dx.types.ResRet.f32 %8172, 0
  %8174 = extractvalue %dx.types.ResRet.f32 %8172, 1
  %8175 = extractvalue %dx.types.ResRet.f32 %8172, 2
  %8176 = extractvalue %dx.types.ResRet.f32 %8172, 3
  %8177 = bitcast float %8147 to i32
  %8178 = fmul fast float %8152, %120
  %8179 = fmul fast float %8152, %122
  %8180 = fmul fast float %8152, %124
  %8181 = fadd fast float %8178, %170
  %8182 = fadd fast float %8179, %171
  %8183 = fadd fast float %8180, %172
  %8184 = fmul fast float %8181, %8155
  %8185 = call float @dx.op.tertiary.f32(i32 46, float %8182, float %8161, float %8184)  ; FMad(a,b,c)
  %8186 = call float @dx.op.tertiary.f32(i32 46, float %8183, float %8167, float %8185)  ; FMad(a,b,c)
  %8187 = fadd fast float %8186, %8173
  %8188 = fmul fast float %8181, %8156
  %8189 = call float @dx.op.tertiary.f32(i32 46, float %8182, float %8162, float %8188)  ; FMad(a,b,c)
  %8190 = call float @dx.op.tertiary.f32(i32 46, float %8183, float %8168, float %8189)  ; FMad(a,b,c)
  %8191 = fadd fast float %8190, %8174
  %8192 = fmul fast float %8181, %8157
  %8193 = call float @dx.op.tertiary.f32(i32 46, float %8182, float %8163, float %8192)  ; FMad(a,b,c)
  %8194 = call float @dx.op.tertiary.f32(i32 46, float %8183, float %8169, float %8193)  ; FMad(a,b,c)
  %8195 = fadd fast float %8194, %8175
  %8196 = fmul fast float %8181, %8158
  %8197 = call float @dx.op.tertiary.f32(i32 46, float %8182, float %8164, float %8196)  ; FMad(a,b,c)
  %8198 = call float @dx.op.tertiary.f32(i32 46, float %8183, float %8170, float %8197)  ; FMad(a,b,c)
  %8199 = fadd fast float %8198, %8176
  %8200 = fdiv fast float %8187, %8199
  %8201 = fdiv fast float %8191, %8199
  %8202 = fdiv fast float %8195, %8199
  %8203 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8202)  ; FMax(a,b)
  %8204 = fmul fast float %243, 0x401921FB60000000
  %8205 = call float @dx.op.unary.f32(i32 13, float %8204)  ; Sin(value)
  %8206 = call float @dx.op.unary.f32(i32 12, float %8204)  ; Cos(value)
  %8207 = fmul fast float %8206, %8151
  %8208 = call float @dx.op.tertiary.f32(i32 46, float %8205, float %8151, float 0.000000e+00)  ; FMad(a,b,c)
  %8209 = fmul fast float %8151, %8205
  %8210 = fsub fast float -0.000000e+00, %8209
  %8211 = call float @dx.op.tertiary.f32(i32 46, float %8206, float %8151, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8212

; <label>:8212                                    ; preds = %8212, %8137
  %8213 = phi float [ 0.000000e+00, %8137 ], [ %8245, %8212 ]
  %8214 = phi float [ 0.000000e+00, %8137 ], [ %8247, %8212 ]
  %8215 = phi i32 [ 0, %8137 ], [ %8248, %8212 ]
  %8216 = mul i32 %8215, 2
  %8217 = add i32 0, %8216
  %8218 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8217
  %8219 = load float, float* %8218, align 4
  %8220 = mul i32 %8215, 2
  %8221 = add i32 1, %8220
  %8222 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8221
  %8223 = load float, float* %8222, align 4
  %8224 = fmul fast float %8207, %8219
  %8225 = call float @dx.op.tertiary.f32(i32 46, float %8223, float %8210, float %8224)  ; FMad(a,b,c)
  %8226 = fmul fast float %8219, %8208
  %8227 = call float @dx.op.tertiary.f32(i32 46, float %8223, float %8211, float %8226)  ; FMad(a,b,c)
  %8228 = fadd fast float %8225, %8200
  %8229 = fadd fast float %8227, %8201
  %8230 = fmul fast float %8228, %8146
  %8231 = fmul fast float %8229, %8146
  %8232 = call float @dx.op.binary.f32(i32 35, float %8230, float %8142)  ; FMax(a,b)
  %8233 = call float @dx.op.binary.f32(i32 35, float %8231, float %8142)  ; FMax(a,b)
  %8234 = call float @dx.op.binary.f32(i32 36, float %8232, float %8143)  ; FMin(a,b)
  %8235 = call float @dx.op.binary.f32(i32 36, float %8233, float %8143)  ; FMin(a,b)
  %8236 = fadd fast float %8234, %8140
  %8237 = fadd fast float %8235, %8141
  %8238 = uitofp i32 %8177 to float
  %8239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %55, float %8236, float %8237, float %8238, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8240 = extractvalue %dx.types.ResRet.f32 %8239, 0
  %8241 = fsub fast float %8240, %8203
  %8242 = fsub fast float %8241, %8150
  %8243 = fcmp fast ogt float %8242, 0.000000e+00
  %8244 = select i1 %8243, float 1.000000e+00, float 0.000000e+00
  %8245 = fadd fast float %8244, %8213
  %8246 = select i1 %8243, float %8242, float 0.000000e+00
  %8247 = fadd fast float %8246, %8214
  %8248 = add nuw nsw i32 %8215, 1
  %8249 = icmp eq i32 %8248, 8
  br i1 %8249, label %8250, label %8212

; <label>:8250                                    ; preds = %8212
  %8251 = fdiv fast float 1.000000e+00, %8245
  %8252 = fmul fast float %8251, %8247
  %8253 = fdiv fast float 1.000000e+00, %8203
  %8254 = fmul fast float %8252, %8253
  %8255 = call float @dx.op.unary.f32(i32 7, float %8254)  ; Saturate(value)
  %8256 = call float @dx.op.binary.f32(i32 35, float %8255, float 0.000000e+00)  ; FMax(a,b)
  %8257 = fmul fast float %8245, 1.250000e-01
  %8258 = call float @dx.op.unary.f32(i32 7, float %8257)  ; Saturate(value)
  %8259 = fmul fast float %8258, 2.000000e+00
  %8260 = fadd fast float %8259, -1.000000e+00
  %8261 = fcmp fast ogt float %8260, 0.000000e+00
  %8262 = fcmp fast olt float %8260, 0.000000e+00
  %8263 = zext i1 %8261 to i32
  %8264 = zext i1 %8262 to i32
  %8265 = sub nsw i32 %8263, %8264
  %8266 = sitofp i32 %8265 to float
  %8267 = fmul fast float %8266, %8260
  %8268 = fsub fast float 1.000000e+00, %8267
  %8269 = fmul fast float %8268, %8268
  %8270 = fmul fast float %8269, %8268
  %8271 = fsub fast float %8268, %8270
  %8272 = fmul fast float %8271, %8256
  %8273 = fsub fast float 1.000000e+00, %8270
  %8274 = fsub fast float %8273, %8272
  %8275 = fmul fast float %8266, 5.000000e-01
  %8276 = fmul fast float %8275, %8274
  %8277 = fsub fast float -5.000000e-01, %8276
  %8278 = fmul fast float %8277, %8111
  %8279 = fadd fast float %8278, 1.000000e+00
  %8280 = fmul fast float %8279, %8123
  br label %8281

; <label>:8281                                    ; preds = %8250, %8135
  %8282 = phi float [ %8280, %8250 ], [ %8123, %8135 ]
  %8283 = call float @dx.op.binary.f32(i32 36, float %8282, float %8282)  ; FMin(a,b)
  %8284 = call float @dx.op.binary.f32(i32 36, float %8282, float %8283)  ; FMin(a,b)
  %8285 = fcmp fast ogt float %8284, 0.000000e+00
  br i1 %8285, label %8286, label %8127, !dx.controlflow.hints !134

; <label>:8286                                    ; preds = %8281
  %8287 = fmul fast float %8282, %8045
  %8288 = fmul fast float %8282, %8046
  %8289 = fmul fast float %8282, %8047
  %8290 = fsub fast float %8029, %5210
  %8291 = fcmp fast ogt float %8290, 0.000000e+00
  %8292 = fsub fast float %172, %5210
  %8293 = fcmp fast ogt float %8292, 0.000000e+00
  %8294 = xor i1 %8293, %8291
  %8295 = fsub fast float %5210, %8029
  %8296 = fmul fast float %8295, 2.000000e+00
  %8297 = fadd fast float %8296, %8029
  %8298 = select i1 %8294, float %8029, float %8297
  %8299 = fsub fast float %8298, %172
  %8300 = call float @dx.op.dot3.f32(i32 55, float %8055, float %8056, float %8299, float %8055, float %8056, float %8299)  ; Dot3(ax,ay,az,bx,by,bz)
  %8301 = call float @dx.op.unary.f32(i32 25, float %8300)  ; Rsqrt(value)
  %8302 = fmul fast float %8301, %8055
  %8303 = fmul fast float %8301, %8056
  %8304 = fmul fast float %8301, %8299
  %8305 = fsub fast float %5210, %172
  %8306 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8305)  ; Dot3(ax,ay,az,bx,by,bz)
  %8307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8302, float %8303, float %8304)  ; Dot3(ax,ay,az,bx,by,bz)
  %8308 = fdiv fast float 1.000000e+00, %8307
  %8309 = fmul fast float %8308, %8306
  %8310 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %8292, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8311 = fcmp fast ogt float %8310, 0.000000e+00
  %8312 = fcmp fast olt float %8310, 0.000000e+00
  %8313 = zext i1 %8311 to i32
  %8314 = zext i1 %8312 to i32
  %8315 = sub nsw i32 %8313, %8314
  %8316 = sitofp i32 %8315 to float
  %8317 = fsub fast float %8298, %5210
  %8318 = call float @dx.op.dot3.f32(i32 55, float %8055, float %8056, float %8317, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %8319 = fcmp fast ogt float %8318, 0.000000e+00
  %8320 = fcmp fast olt float %8318, 0.000000e+00
  %8321 = zext i1 %8319 to i32
  %8322 = zext i1 %8320 to i32
  %8323 = sub nsw i32 %8321, %8322
  %8324 = sitofp i32 %8323 to float
  %8325 = fcmp fast une float %8316, %8324
  br i1 %8325, label %8326, label %8336

; <label>:8326                                    ; preds = %8286
  %8327 = fmul fast float %8309, %8304
  %8328 = fmul fast float %8309, %8303
  %8329 = fmul fast float %8309, %8302
  %8330 = fmul fast float %8329, %8329
  %8331 = fmul fast float %8328, %8328
  %8332 = fadd fast float %8330, %8331
  %8333 = fmul fast float %8327, %8327
  %8334 = fadd fast float %8332, %8333
  %8335 = call float @dx.op.unary.f32(i32 24, float %8334)  ; Sqrt(value)
  br label %8348

; <label>:8336                                    ; preds = %8286
  %8337 = icmp slt i32 %8315, 0
  br i1 %8337, label %8338, label %8348

; <label>:8338                                    ; preds = %8336
  %8339 = fsub fast float %170, %8027
  %8340 = fsub fast float %171, %8028
  %8341 = fsub fast float %172, %8298
  %8342 = fmul fast float %8339, %8339
  %8343 = fmul fast float %8340, %8340
  %8344 = fadd fast float %8342, %8343
  %8345 = fmul fast float %8341, %8341
  %8346 = fadd fast float %8344, %8345
  %8347 = call float @dx.op.unary.f32(i32 24, float %8346)  ; Sqrt(value)
  br label %8348

; <label>:8348                                    ; preds = %8338, %8336, %8326
  %8349 = phi float [ %8335, %8326 ], [ %8347, %8338 ], [ 0.000000e+00, %8336 ]
  %8350 = and i1 %8293, %8291
  %8351 = fsub fast float -0.000000e+00, %8349
  %8352 = select i1 %8350, float -0.000000e+00, float %8351
  %8353 = fmul fast float %5211, 0x3FF7154760000000
  %8354 = fmul fast float %8353, %8352
  %8355 = fmul fast float %5212, 0x3FF7154760000000
  %8356 = fmul fast float %8355, %8352
  %8357 = fmul fast float %5213, 0x3FF7154760000000
  %8358 = fmul fast float %8357, %8352
  %8359 = call float @dx.op.unary.f32(i32 21, float %8354)  ; Exp(value)
  %8360 = call float @dx.op.unary.f32(i32 21, float %8356)  ; Exp(value)
  %8361 = call float @dx.op.unary.f32(i32 21, float %8358)  ; Exp(value)
  %8362 = call float @dx.op.unary.f32(i32 7, float %8359)  ; Saturate(value)
  %8363 = call float @dx.op.unary.f32(i32 7, float %8360)  ; Saturate(value)
  %8364 = call float @dx.op.unary.f32(i32 7, float %8361)  ; Saturate(value)
  %8365 = fmul fast float %8287, %8362
  %8366 = fmul fast float %8288, %8363
  %8367 = fmul fast float %8289, %8364
  %8368 = fsub fast float %8061, %5410
  %8369 = fsub fast float %8062, %5409
  %8370 = fsub fast float %8063, %5408
  %8371 = call float @dx.op.dot3.f32(i32 55, float %8368, float %8369, float %8370, float %8368, float %8369, float %8370)  ; Dot3(ax,ay,az,bx,by,bz)
  %8372 = call float @dx.op.unary.f32(i32 25, float %8371)  ; Rsqrt(value)
  %8373 = fmul fast float %8372, %8368
  %8374 = fmul fast float %8372, %8369
  %8375 = fmul fast float %8372, %8370
  %8376 = call float @dx.op.dot3.f32(i32 55, float %8061, float %8062, float %8063, float %5417, float %5418, float %5419)  ; Dot3(ax,ay,az,bx,by,bz)
  %8377 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5406, float %5405, float %8373, float %8374, float %8375)  ; Dot3(ax,ay,az,bx,by,bz)
  %8378 = call float @dx.op.unary.f32(i32 7, float %8376)  ; Saturate(value)
  %8379 = fmul fast float %8378, %8068
  %8380 = fmul fast float %8378, %8378
  %8381 = fmul fast float %8380, %5450
  %8382 = call float @dx.op.unary.f32(i32 7, float %8381)  ; Saturate(value)
  %8383 = fmul fast float %8379, %8382
  %8384 = bitcast float %8058 to i32
  %8385 = ashr i32 %8384, 1
  %8386 = sub nsw i32 1597463007, %8385
  %8387 = bitcast i32 %8386 to float
  %8388 = fmul fast float %8387, %8055
  %8389 = fmul fast float %8387, %8056
  %8390 = fmul fast float %8387, %8057
  %8391 = fsub fast float %8388, %5410
  %8392 = fsub fast float %8389, %5409
  %8393 = fsub fast float %8390, %5408
  %8394 = call float @dx.op.dot3.f32(i32 55, float %8391, float %8392, float %8393, float %8391, float %8392, float %8393)  ; Dot3(ax,ay,az,bx,by,bz)
  %8395 = call float @dx.op.unary.f32(i32 25, float %8394)  ; Rsqrt(value)
  %8396 = fmul fast float %8391, %8395
  %8397 = fmul fast float %8392, %8395
  %8398 = fmul fast float %8393, %8395
  %8399 = call float @dx.op.dot3.f32(i32 55, float %5417, float %5418, float %5419, float %8396, float %8397, float %8398)  ; Dot3(ax,ay,az,bx,by,bz)
  %8400 = fmul fast float %8399, %8399
  %8401 = call float @dx.op.unary.f32(i32 6, float %8376)  ; FAbs(value)
  %8402 = fsub fast float 1.000000e+00, %5443
  %8403 = fmul fast float %5425, %5425
  %8404 = fmul fast float %8403, %8402
  %8405 = fadd fast float %8404, %5443
  %8406 = bitcast float %8405 to i32
  %8407 = ashr i32 %8406, 1
  %8408 = add nsw i32 %8407, 532487669
  %8409 = bitcast i32 %8408 to float
  %8410 = fadd fast float %8409, %5425
  %8411 = fmul fast float %5443, %8400
  %8412 = fsub fast float 1.000000e+00, %8400
  %8413 = fadd fast float %8412, %8411
  %8414 = fmul fast float %8401, %8401
  %8415 = fmul fast float %8414, %8402
  %8416 = fadd fast float %8415, %5443
  %8417 = bitcast float %8416 to i32
  %8418 = ashr i32 %8417, 1
  %8419 = add nsw i32 %8418, 532487669
  %8420 = bitcast i32 %8419 to float
  %8421 = fadd fast float %8420, %8401
  %8422 = fmul fast float %8413, %8413
  %8423 = fmul fast float %8422, %8410
  %8424 = fmul fast float %8423, %8421
  %8425 = fdiv fast float 1.000000e+00, %8424
  %8426 = bitcast float %5443 to i32
  %8427 = sitofp i32 %8426 to float
  %8428 = fmul fast float %8427, 0x3FE7F73180000000
  %8429 = fadd fast float %8428, 0x41AFE27C40000000
  %8430 = fptosi float %8429 to i32
  %8431 = bitcast i32 %8430 to float
  %8432 = fmul fast float %8024, 0x3FD80E9D60000000
  %8433 = fmul fast float %8432, %8387
  %8434 = fadd fast float %8431, %8433
  %8435 = bitcast float %8434 to i32
  %8436 = sub nsw i32 2129859010, %8435
  %8437 = bitcast i32 %8436 to float
  %8438 = fmul fast float %5443, %8425
  %8439 = fmul fast float %8438, %8431
  %8440 = fmul fast float %8439, %8437
  %8441 = call float @dx.op.unary.f32(i32 6, float %8377)  ; FAbs(value)
  %8442 = fsub fast float 1.000000e+00, %8441
  %8443 = bitcast float %8442 to i32
  %8444 = sitofp i32 %8443 to float
  %8445 = fmul fast float %8444, 5.000000e+00
  %8446 = fadd fast float %8445, 0xC1EFBF8940000000
  %8447 = fptosi float %8446 to i32
  %8448 = bitcast i32 %8447 to float
  %8449 = fsub fast float 1.000000e+00, %5414
  %8450 = fsub fast float 1.000000e+00, %5415
  %8451 = fsub fast float 1.000000e+00, %5423
  %8452 = fmul fast float %8448, %8449
  %8453 = fmul fast float %8448, %8450
  %8454 = fmul fast float %8448, %8451
  %8455 = fadd fast float %8452, %5414
  %8456 = fadd fast float %8453, %5415
  %8457 = fadd fast float %8454, %5423
  br i1 %5708, label %8458, label %8481

; <label>:8458                                    ; preds = %8348
  %8459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4742, float %8441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8460 = extractvalue %dx.types.ResRet.f32 %8459, 0
  %8461 = extractvalue %dx.types.ResRet.f32 %8459, 1
  %8462 = extractvalue %dx.types.ResRet.f32 %8459, 2
  %8463 = fadd fast float %8460, -5.000000e-01
  %8464 = fadd fast float %8461, -5.000000e-01
  %8465 = fadd fast float %8462, -5.000000e-01
  %8466 = fmul fast float %5414, 4.000000e+00
  %8467 = fmul fast float %8466, %8449
  %8468 = fmul fast float %8467, %8463
  %8469 = fmul fast float %5415, 4.000000e+00
  %8470 = fmul fast float %8469, %8450
  %8471 = fmul fast float %8470, %8464
  %8472 = fmul fast float %5423, 4.000000e+00
  %8473 = fmul fast float %8472, %8451
  %8474 = fmul fast float %8473, %8465
  %8475 = fadd fast float %8468, %8455
  %8476 = fadd fast float %8471, %8456
  %8477 = fadd fast float %8474, %8457
  %8478 = call float @dx.op.unary.f32(i32 7, float %8475)  ; Saturate(value)
  %8479 = call float @dx.op.unary.f32(i32 7, float %8476)  ; Saturate(value)
  %8480 = call float @dx.op.unary.f32(i32 7, float %8477)  ; Saturate(value)
  br label %8481

; <label>:8481                                    ; preds = %8458, %8348
  %8482 = phi float [ %8478, %8458 ], [ %8455, %8348 ]
  %8483 = phi float [ %8479, %8458 ], [ %8456, %8348 ]
  %8484 = phi float [ %8480, %8458 ], [ %8457, %8348 ]
  %8485 = fmul fast float %8376, 9.843750e-01
  %8486 = fadd fast float %8485, 7.812500e-03
  %8487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8486, float %5698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8488 = extractvalue %dx.types.ResRet.f32 %8487, 2
  %8489 = extractvalue %dx.types.ResRet.f32 %8487, 3
  %8490 = fmul fast float %8488, %5414
  %8491 = fmul fast float %8488, %5415
  %8492 = fmul fast float %8488, %5423
  %8493 = fadd fast float %8490, %8489
  %8494 = fadd fast float %8491, %8489
  %8495 = fadd fast float %8492, %8489
  br i1 %5708, label %8496, label %8519

; <label>:8496                                    ; preds = %8481
  %8497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4742, float %8376, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8498 = extractvalue %dx.types.ResRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.ResRet.f32 %8497, 1
  %8500 = extractvalue %dx.types.ResRet.f32 %8497, 2
  %8501 = fadd fast float %8498, -5.000000e-01
  %8502 = fadd fast float %8499, -5.000000e-01
  %8503 = fadd fast float %8500, -5.000000e-01
  %8504 = fmul fast float %5414, 4.000000e+00
  %8505 = fmul fast float %8504, %8449
  %8506 = fmul fast float %8505, %8501
  %8507 = fmul fast float %5415, 4.000000e+00
  %8508 = fmul fast float %8507, %8450
  %8509 = fmul fast float %8508, %8502
  %8510 = fmul fast float %5423, 4.000000e+00
  %8511 = fmul fast float %8510, %8451
  %8512 = fmul fast float %8511, %8503
  %8513 = fadd fast float %8506, %8493
  %8514 = fadd fast float %8509, %8494
  %8515 = fadd fast float %8512, %8495
  %8516 = call float @dx.op.unary.f32(i32 7, float %8513)  ; Saturate(value)
  %8517 = call float @dx.op.unary.f32(i32 7, float %8514)  ; Saturate(value)
  %8518 = call float @dx.op.unary.f32(i32 7, float %8515)  ; Saturate(value)
  br label %8519

; <label>:8519                                    ; preds = %8496, %8481
  %8520 = phi float [ %8516, %8496 ], [ %8493, %8481 ]
  %8521 = phi float [ %8517, %8496 ], [ %8494, %8481 ]
  %8522 = phi float [ %8518, %8496 ], [ %8495, %8481 ]
  %8523 = call float @dx.op.binary.f32(i32 35, float %8521, float %8522)  ; FMax(a,b)
  %8524 = call float @dx.op.binary.f32(i32 35, float %8520, float %8523)  ; FMax(a,b)
  %8525 = fsub fast float 1.000000e+00, %8524
  %8526 = fsub fast float -0.000000e+00, %5417
  %8527 = fsub fast float -0.000000e+00, %5418
  %8528 = fsub fast float -0.000000e+00, %5419
  %8529 = call float @dx.op.dot3.f32(i32 55, float %8061, float %8062, float %8063, float %8526, float %8527, float %8528)  ; Dot3(ax,ay,az,bx,by,bz)
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = fmul fast float %8530, %8068
  %8532 = fmul fast float %8530, 9.843750e-01
  %8533 = fadd fast float %8532, 7.812500e-03
  %8534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %49, %dx.types.Handle %54, float %8533, float %5698, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8535 = extractvalue %dx.types.ResRet.f32 %8534, 2
  %8536 = extractvalue %dx.types.ResRet.f32 %8534, 3
  %8537 = fmul fast float %8535, %5414
  %8538 = fmul fast float %8535, %5415
  %8539 = fmul fast float %8535, %5423
  %8540 = fadd fast float %8537, %8536
  %8541 = fadd fast float %8538, %8536
  %8542 = fadd fast float %8539, %8536
  br i1 %5708, label %8543, label %8566

; <label>:8543                                    ; preds = %8519
  %8544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %54, float %4742, float %8530, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8545 = extractvalue %dx.types.ResRet.f32 %8544, 0
  %8546 = extractvalue %dx.types.ResRet.f32 %8544, 1
  %8547 = extractvalue %dx.types.ResRet.f32 %8544, 2
  %8548 = fadd fast float %8545, -5.000000e-01
  %8549 = fadd fast float %8546, -5.000000e-01
  %8550 = fadd fast float %8547, -5.000000e-01
  %8551 = fmul fast float %5414, 4.000000e+00
  %8552 = fmul fast float %8551, %8449
  %8553 = fmul fast float %8552, %8548
  %8554 = fmul fast float %5415, 4.000000e+00
  %8555 = fmul fast float %8554, %8450
  %8556 = fmul fast float %8555, %8549
  %8557 = fmul fast float %5423, 4.000000e+00
  %8558 = fmul fast float %8557, %8451
  %8559 = fmul fast float %8558, %8550
  %8560 = fadd fast float %8553, %8540
  %8561 = fadd fast float %8556, %8541
  %8562 = fadd fast float %8559, %8542
  %8563 = call float @dx.op.unary.f32(i32 7, float %8560)  ; Saturate(value)
  %8564 = call float @dx.op.unary.f32(i32 7, float %8561)  ; Saturate(value)
  %8565 = call float @dx.op.unary.f32(i32 7, float %8562)  ; Saturate(value)
  br label %8566

; <label>:8566                                    ; preds = %8543, %8519
  %8567 = phi float [ %8563, %8543 ], [ %8540, %8519 ]
  %8568 = phi float [ %8564, %8543 ], [ %8541, %8519 ]
  %8569 = phi float [ %8565, %8543 ], [ %8542, %8519 ]
  %8570 = call float @dx.op.binary.f32(i32 35, float %8568, float %8569)  ; FMax(a,b)
  %8571 = call float @dx.op.binary.f32(i32 35, float %8567, float %8570)  ; FMax(a,b)
  %8572 = fsub fast float 1.000000e+00, %8571
  %8573 = fmul fast float %8531, %8572
  %8574 = fmul fast float %8573, %4833
  %8575 = fmul fast float %8573, %4834
  %8576 = fmul fast float %8573, %4835
  %8577 = fmul fast float %8482, %8440
  %8578 = fmul fast float %8483, %8440
  %8579 = fmul fast float %8484, %8440
  %8580 = fsub fast float 1.000000e+00, %8377
  %8581 = bitcast float %8580 to i32
  %8582 = sitofp i32 %8581 to float
  %8583 = fmul fast float %8582, 5.000000e+00
  %8584 = fadd fast float %8583, 0xC1EFBF8940000000
  %8585 = fptosi float %8584 to i32
  %8586 = bitcast i32 %8585 to float
  %8587 = fmul fast float %8586, %4743
  %8588 = fmul fast float %8525, %8587
  %8589 = fmul fast float %8588, %6247
  %8590 = fmul fast float %8588, %6248
  %8591 = fmul fast float %8588, %6249
  %8592 = fmul fast float %8525, %8383
  %8593 = fadd fast float %8589, %8577
  %8594 = fadd fast float %8590, %8578
  %8595 = fadd fast float %8591, %8579
  %8596 = fadd fast float %8574, %8592
  %8597 = fadd fast float %8575, %8592
  %8598 = fadd fast float %8576, %8592
  %8599 = fmul fast float %8365, %4739
  %8600 = fmul fast float %8599, %8596
  %8601 = fmul fast float %8366, %4739
  %8602 = fmul fast float %8601, %8597
  %8603 = fmul fast float %8367, %4739
  %8604 = fmul fast float %8603, %8598
  %8605 = fadd fast float %8600, %7998
  %8606 = fadd fast float %8602, %7999
  %8607 = fadd fast float %8604, %8000
  %8608 = fmul fast float %8599, %8383
  %8609 = fmul fast float %8608, %8593
  %8610 = fmul fast float %8601, %8383
  %8611 = fmul fast float %8610, %8594
  %8612 = fmul fast float %8603, %8383
  %8613 = fmul fast float %8612, %8595
  %8614 = fadd fast float %8609, %7995
  %8615 = fadd fast float %8611, %7996
  %8616 = fadd fast float %8613, %7997
  br label %8127

; <label>:8617                                    ; preds = %8127
  br label %8618

; <label>:8618                                    ; preds = %8617, %7961
  %8619 = phi float [ %7963, %7961 ], [ %8128, %8617 ]
  %8620 = phi float [ %7964, %7961 ], [ %8129, %8617 ]
  %8621 = phi float [ %7965, %7961 ], [ %8130, %8617 ]
  %8622 = phi float [ %7966, %7961 ], [ %8131, %8617 ]
  %8623 = phi float [ %7967, %7961 ], [ %8132, %8617 ]
  %8624 = phi float [ %7968, %7961 ], [ %8133, %8617 ]
  %8625 = add i32 %7962, 1
  %8626 = icmp ugt i32 %8625, %7958
  br i1 %8626, label %8627, label %7961

; <label>:8627                                    ; preds = %8618
  br label %8628

; <label>:8628                                    ; preds = %8627, %7911, %7901
  %8629 = phi float [ %7902, %7901 ], [ %7902, %7911 ], [ %8619, %8627 ]
  %8630 = phi float [ %7903, %7901 ], [ %7903, %7911 ], [ %8620, %8627 ]
  %8631 = phi float [ %7904, %7901 ], [ %7904, %7911 ], [ %8621, %8627 ]
  %8632 = phi float [ %7905, %7901 ], [ %7905, %7911 ], [ %8622, %8627 ]
  %8633 = phi float [ %7906, %7901 ], [ %7906, %7911 ], [ %8623, %8627 ]
  %8634 = phi float [ %7907, %7901 ], [ %7907, %7911 ], [ %8624, %8627 ]
  %8635 = fmul fast float %6256, %4739
  %8636 = fmul fast float %6257, %4739
  %8637 = fmul fast float %6258, %4739
  %8638 = fadd fast float %8635, 1.000000e+00
  %8639 = fadd fast float %8636, 1.000000e+00
  %8640 = fadd fast float %8637, 1.000000e+00
  %8641 = call float @dx.op.dot3.f32(i32 55, float %8638, float %8639, float %8640, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8642 = fsub fast float 1.000000e+00, %8641
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 0
  %8645 = fmul fast float %8644, %6262
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 3
  %8648 = fsub fast float 1.000000e+00, %4747
  %8649 = call float @dx.op.unary.f32(i32 7, float %8648)  ; Saturate(value)
  %8650 = fadd fast float %8634, %4745
  %8651 = fmul fast float %8650, %4747
  %8652 = fmul fast float %8649, %8647
  %8653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8654 = extractvalue %dx.types.CBufRet.f32 %8653, 3
  %8655 = fmul fast float %8632, %5411
  %8656 = fmul fast float %8633, %5412
  %8657 = fmul fast float %8634, %5413
  %8658 = fcmp fast ogt float %99, %192
  %8659 = and i1 %8658, %5216
  %8660 = or i1 %5222, %8659
  %8661 = icmp eq i32 %5215, 2
  %8662 = fcmp fast ole float %99, %192
  %8663 = and i1 %8662, %8661
  %8664 = or i1 %8663, %8660
  br i1 %8659, label %8665, label %8922

; <label>:8665                                    ; preds = %8628
  %8666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8667 = extractvalue %dx.types.CBufRet.f32 %8666, 2
  %8668 = extractvalue %dx.types.CBufRet.f32 %8666, 3
  %8669 = fmul fast float %8667, %111
  %8670 = fmul fast float %8668, %112
  %8671 = call float @dx.op.unary.f32(i32 7, float %8669)  ; Saturate(value)
  %8672 = call float @dx.op.unary.f32(i32 7, float %8670)  ; Saturate(value)
  %8673 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8671, float %8672, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8674 = extractvalue %dx.types.ResRet.f32 %8673, 0
  %8675 = extractvalue %dx.types.ResRet.f32 %8673, 1
  %8676 = extractvalue %dx.types.ResRet.f32 %8673, 2
  %8677 = extractvalue %dx.types.ResRet.f32 %8673, 3
  %8678 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %8671, float %8672, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8679 = extractvalue %dx.types.ResRet.f32 %8678, 0
  %8680 = extractvalue %dx.types.ResRet.f32 %8678, 1
  %8681 = extractvalue %dx.types.ResRet.f32 %8678, 2
  %8682 = extractvalue %dx.types.ResRet.f32 %8678, 3
  %8683 = call float @dx.op.binary.f32(i32 35, float %8675, float %8676)  ; FMax(a,b)
  %8684 = call float @dx.op.binary.f32(i32 35, float %8674, float %8683)  ; FMax(a,b)
  %8685 = call float @dx.op.binary.f32(i32 35, float %8684, float %8677)  ; FMax(a,b)
  %8686 = call float @dx.op.binary.f32(i32 36, float %8680, float %8681)  ; FMin(a,b)
  %8687 = call float @dx.op.binary.f32(i32 36, float %8679, float %8686)  ; FMin(a,b)
  %8688 = call float @dx.op.binary.f32(i32 36, float %8687, float %8682)  ; FMin(a,b)
  %8689 = fmul fast float %8685, 2.550000e+02
  %8690 = fadd fast float %8689, 0x3F70101020000000
  %8691 = fptoui float %8690 to i32
  %8692 = fmul fast float %8688, 2.550000e+02
  %8693 = fadd fast float %8692, 0x3F70101020000000
  %8694 = fptoui float %8693 to i32
  %8695 = icmp ult i32 %8691, %8694
  br i1 %8695, label %8696, label %8864

; <label>:8696                                    ; preds = %8665
  %8697 = fcmp fast ogt float %98, 9.843750e-01
  %8698 = fadd fast float %99, -4.000000e+00
  %8699 = select i1 %8697, float -4.000000e+00, float %8698
  %8700 = call float @dx.op.binary.f32(i32 35, float %8699, float 0.000000e+00)  ; FMax(a,b)
  %8701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8702 = extractvalue %dx.types.CBufRet.f32 %8701, 0
  %8703 = fadd fast float %8702, %8700
  %8704 = extractvalue %dx.types.CBufRet.f32 %8701, 2
  %8705 = fmul fast float %8703, %8704
  %8706 = call float @dx.op.unary.f32(i32 23, float %8705)  ; Log(value)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8701, 3
  %8708 = fmul fast float %8707, %8706
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 2
  %8711 = fmul fast float %8708, %8710
  %8712 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  %8713 = uitofp i32 %8691 to float
  %8714 = uitofp i32 %8694 to float
  %8715 = fadd fast float %8713, 5.000000e-01
  %8716 = fadd fast float %8714, 5.000000e-01
  %8717 = fmul fast float %8710, %8715
  %8718 = fmul fast float %8710, %8716
  %8719 = fadd fast float %8717, 0x3F0FFB4800000000
  %8720 = fadd fast float %8718, 0xBF0FFB4800000000
  %8721 = call float @dx.op.binary.f32(i32 35, float %8712, float %8719)  ; FMax(a,b)
  %8722 = call float @dx.op.binary.f32(i32 36, float %8721, float %8720)  ; FMin(a,b)
  %8723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8724 = extractvalue %dx.types.CBufRet.f32 %8723, 1
  %8725 = extractvalue %dx.types.CBufRet.f32 %8723, 2
  %8726 = extractvalue %dx.types.CBufRet.f32 %8723, 0
  %8727 = fmul fast float %8724, %8722
  %8728 = fadd fast float %8726, %8727
  %8729 = fadd fast float %8726, %8725
  %8730 = fsub fast float %8724, %8725
  %8731 = fadd fast float %8730, %8726
  %8732 = call float @dx.op.binary.f32(i32 35, float %8728, float %8729)  ; FMax(a,b)
  %8733 = call float @dx.op.binary.f32(i32 36, float %8732, float %8731)  ; FMin(a,b)
  %8734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %8671, float %8672, float %8733, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8735 = extractvalue %dx.types.ResRet.f32 %8734, 0
  %8736 = extractvalue %dx.types.ResRet.f32 %8734, 1
  %8737 = extractvalue %dx.types.ResRet.f32 %8734, 2
  %8738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.i32 %8738, 0
  %8740 = extractvalue %dx.types.CBufRet.i32 %8738, 1
  %8741 = uitofp i32 %8739 to float
  %8742 = uitofp i32 %8740 to float
  %8743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8743, 0
  %8745 = extractvalue %dx.types.CBufRet.f32 %8743, 1
  %8746 = fmul fast float %8741, %8671
  %8747 = fmul fast float %8742, %8672
  %8748 = fadd fast float %8746, -5.000000e-01
  %8749 = fadd fast float %8747, -5.000000e-01
  %8750 = call float @dx.op.unary.f32(i32 22, float %8748)  ; Frc(value)
  %8751 = call float @dx.op.unary.f32(i32 22, float %8749)  ; Frc(value)
  %8752 = fmul fast float %8750, %8750
  %8753 = fmul fast float %8752, %8750
  %8754 = fsub fast float 3.000000e+00, %8750
  %8755 = fmul fast float %8752, %8754
  %8756 = fmul fast float %8750, 3.000000e+00
  %8757 = fmul fast float %8753, 3.000000e+00
  %8758 = fmul fast float %8752, 6.000000e+00
  %8759 = fsub fast float %8757, %8758
  %8760 = fadd fast float %8759, 4.000000e+00
  %8761 = fmul fast float %8760, 0x3FC5555560000000
  %8762 = fmul fast float %8753, -3.000000e+00
  %8763 = fadd fast float %8752, %8750
  %8764 = fmul fast float %8763, 3.000000e+00
  %8765 = fadd fast float %8762, 1.000000e+00
  %8766 = fadd fast float %8765, %8764
  %8767 = fmul fast float %8753, 0x3FC5555560000000
  %8768 = fmul fast float %8751, %8751
  %8769 = fmul fast float %8768, %8751
  %8770 = fsub fast float 3.000000e+00, %8751
  %8771 = fmul fast float %8768, %8770
  %8772 = fmul fast float %8751, 3.000000e+00
  %8773 = fmul fast float %8769, 3.000000e+00
  %8774 = fmul fast float %8768, 6.000000e+00
  %8775 = fsub fast float %8773, %8774
  %8776 = fadd fast float %8775, 4.000000e+00
  %8777 = fmul fast float %8776, 0x3FC5555560000000
  %8778 = fmul fast float %8769, -3.000000e+00
  %8779 = fadd fast float %8768, %8751
  %8780 = fmul fast float %8779, 3.000000e+00
  %8781 = fadd fast float %8778, 1.000000e+00
  %8782 = fadd fast float %8781, %8780
  %8783 = fmul fast float %8769, 0x3FC5555560000000
  %8784 = fadd fast float %8750, 1.000000e+00
  %8785 = fsub fast float 1.000000e+00, %8756
  %8786 = fadd fast float %8785, %8755
  %8787 = fadd fast float %8786, %8760
  %8788 = fmul fast float %8787, 0x3FC5555560000000
  %8789 = fdiv fast float %8761, %8788
  %8790 = fsub fast float %8784, %8789
  %8791 = fsub fast float 1.000000e+00, %8750
  %8792 = fadd fast float %8766, %8753
  %8793 = fmul fast float %8792, 0x3FC5555560000000
  %8794 = fdiv fast float %8767, %8793
  %8795 = fadd fast float %8791, %8794
  %8796 = fadd fast float %8751, 1.000000e+00
  %8797 = fsub fast float 1.000000e+00, %8772
  %8798 = fadd fast float %8797, %8771
  %8799 = fadd fast float %8798, %8776
  %8800 = fmul fast float %8799, 0x3FC5555560000000
  %8801 = fdiv fast float %8777, %8800
  %8802 = fsub fast float %8796, %8801
  %8803 = fsub fast float 1.000000e+00, %8751
  %8804 = fadd fast float %8782, %8769
  %8805 = fmul fast float %8804, 0x3FC5555560000000
  %8806 = fdiv fast float %8783, %8805
  %8807 = fadd fast float %8806, %8803
  %8808 = fmul fast float %8790, %8744
  %8809 = fsub fast float %8671, %8808
  %8810 = fmul fast float %8795, %8744
  %8811 = fadd fast float %8810, %8671
  %8812 = fmul fast float %8807, %8745
  %8813 = fadd fast float %8812, %8672
  %8814 = fmul fast float %8802, %8745
  %8815 = fsub fast float %8672, %8814
  %8816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8809, float %8815, float %8733, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8817 = extractvalue %dx.types.ResRet.f32 %8816, 0
  %8818 = extractvalue %dx.types.ResRet.f32 %8816, 1
  %8819 = extractvalue %dx.types.ResRet.f32 %8816, 2
  %8820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8811, float %8815, float %8733, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8821 = extractvalue %dx.types.ResRet.f32 %8820, 0
  %8822 = extractvalue %dx.types.ResRet.f32 %8820, 1
  %8823 = extractvalue %dx.types.ResRet.f32 %8820, 2
  %8824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8809, float %8813, float %8733, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8825 = extractvalue %dx.types.ResRet.f32 %8824, 0
  %8826 = extractvalue %dx.types.ResRet.f32 %8824, 1
  %8827 = extractvalue %dx.types.ResRet.f32 %8824, 2
  %8828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %8811, float %8813, float %8733, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8829 = extractvalue %dx.types.ResRet.f32 %8828, 0
  %8830 = extractvalue %dx.types.ResRet.f32 %8828, 1
  %8831 = extractvalue %dx.types.ResRet.f32 %8828, 2
  %8832 = fsub fast float %8825, %8817
  %8833 = fsub fast float %8826, %8818
  %8834 = fsub fast float %8827, %8819
  %8835 = fmul fast float %8832, %8805
  %8836 = fmul fast float %8833, %8805
  %8837 = fmul fast float %8834, %8805
  %8838 = fadd fast float %8835, %8817
  %8839 = fadd fast float %8836, %8818
  %8840 = fadd fast float %8837, %8819
  %8841 = fsub fast float %8829, %8821
  %8842 = fsub fast float %8830, %8822
  %8843 = fsub fast float %8831, %8823
  %8844 = fmul fast float %8841, %8805
  %8845 = fmul fast float %8842, %8805
  %8846 = fmul fast float %8843, %8805
  %8847 = fsub fast float %8821, %8838
  %8848 = fadd fast float %8847, %8844
  %8849 = fsub fast float %8822, %8839
  %8850 = fadd fast float %8849, %8845
  %8851 = fsub fast float %8823, %8840
  %8852 = fadd fast float %8851, %8846
  %8853 = fmul fast float %8848, %8793
  %8854 = fmul fast float %8850, %8793
  %8855 = fmul fast float %8852, %8793
  %8856 = fadd fast float %8853, %8838
  %8857 = fadd fast float %8854, %8839
  %8858 = fadd fast float %8855, %8840
  %8859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8860 = extractvalue %dx.types.CBufRet.f32 %8859, 1
  %8861 = fmul fast float %8856, %8860
  %8862 = fmul fast float %8857, %8860
  %8863 = fmul fast float %8858, %8860
  br label %8864

; <label>:8864                                    ; preds = %8696, %8665
  %8865 = phi float [ %8735, %8696 ], [ 1.000000e+00, %8665 ]
  %8866 = phi float [ %8736, %8696 ], [ 1.000000e+00, %8665 ]
  %8867 = phi float [ %8737, %8696 ], [ 1.000000e+00, %8665 ]
  %8868 = phi float [ %8861, %8696 ], [ 0.000000e+00, %8665 ]
  %8869 = phi float [ %8862, %8696 ], [ 0.000000e+00, %8665 ]
  %8870 = phi float [ %8863, %8696 ], [ 0.000000e+00, %8665 ]
  %8871 = fmul fast float %8868, %8642
  %8872 = fmul fast float %8869, %8642
  %8873 = fmul fast float %8870, %8642
  %8874 = call float @dx.op.dot3.f32(i32 55, float %8865, float %8866, float %8867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8875 = call float @dx.op.dot3.f32(i32 55, float %8871, float %8872, float %8873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8876 = select i1 %232, float %8874, float %8865
  %8877 = select i1 %232, float %8874, float %8866
  %8878 = select i1 %232, float 1.000000e+00, float %8867
  %8879 = select i1 %232, float %8875, float %8871
  %8880 = select i1 %232, float 0.000000e+00, float %8872
  %8881 = select i1 %232, float 0.000000e+00, float %8873
  %8882 = fmul fast float %8876, %8655
  %8883 = fmul fast float %8877, %8656
  %8884 = fmul fast float %8878, %8657
  %8885 = fadd fast float %8882, %8879
  %8886 = fadd fast float %8883, %8880
  %8887 = fadd fast float %8881, %8884
  %8888 = fmul fast float %8876, %8629
  %8889 = fmul fast float %8877, %8630
  %8890 = fmul fast float %8878, %8631
  %8891 = fmul fast float %140, %8667
  %8892 = fmul fast float %142, %8668
  %8893 = fsub fast float 1.000000e+00, %8891
  %8894 = fsub fast float 1.000000e+00, %8892
  %8895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8896 = extractvalue %dx.types.CBufRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.CBufRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.CBufRet.f32 %8895, 2
  %8899 = fmul fast float %8893, %8896
  %8900 = fmul fast float %8893, %8897
  %8901 = fmul fast float %8893, %8898
  %8902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8903 = extractvalue %dx.types.CBufRet.f32 %8902, 0
  %8904 = extractvalue %dx.types.CBufRet.f32 %8902, 1
  %8905 = extractvalue %dx.types.CBufRet.f32 %8902, 2
  %8906 = fmul fast float %8894, %8903
  %8907 = fmul fast float %8894, %8904
  %8908 = fmul fast float %8894, %8905
  %8909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8910 = extractvalue %dx.types.CBufRet.f32 %8909, 0
  %8911 = extractvalue %dx.types.CBufRet.f32 %8909, 1
  %8912 = extractvalue %dx.types.CBufRet.f32 %8909, 2
  %8913 = fadd fast float %8906, %8910
  %8914 = fadd fast float %8913, %8899
  %8915 = fadd fast float %8907, %8911
  %8916 = fadd fast float %8915, %8900
  %8917 = fadd fast float %8908, %8912
  %8918 = fadd fast float %8917, %8901
  %8919 = fmul fast float %8914, %192
  %8920 = fmul fast float %8916, %192
  %8921 = fmul fast float %8918, %192
  br label %8922

; <label>:8922                                    ; preds = %8864, %8628
  %8923 = phi float [ %8919, %8864 ], [ %170, %8628 ]
  %8924 = phi float [ %8920, %8864 ], [ %171, %8628 ]
  %8925 = phi float [ %8921, %8864 ], [ %172, %8628 ]
  %8926 = phi float [ %192, %8864 ], [ %99, %8628 ]
  %8927 = phi float [ %8885, %8864 ], [ %8655, %8628 ]
  %8928 = phi float [ %8886, %8864 ], [ %8656, %8628 ]
  %8929 = phi float [ %8887, %8864 ], [ %8657, %8628 ]
  %8930 = phi float [ %8888, %8864 ], [ %8629, %8628 ]
  %8931 = phi float [ %8889, %8864 ], [ %8630, %8628 ]
  %8932 = phi float [ %8890, %8864 ], [ %8631, %8628 ]
  %8933 = phi float [ %8865, %8864 ], [ 1.000000e+00, %8628 ]
  br i1 %8664, label %10088, label %8934

; <label>:8934                                    ; preds = %8922
  %8935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8936 = extractvalue %dx.types.CBufRet.f32 %8935, 0
  %8937 = extractvalue %dx.types.CBufRet.f32 %8935, 1
  %8938 = extractvalue %dx.types.CBufRet.f32 %8935, 2
  %8939 = extractvalue %dx.types.CBufRet.f32 %8935, 3
  %8940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8941 = extractvalue %dx.types.CBufRet.f32 %8940, 0
  %8942 = extractvalue %dx.types.CBufRet.f32 %8940, 1
  %8943 = extractvalue %dx.types.CBufRet.f32 %8940, 2
  %8944 = extractvalue %dx.types.CBufRet.f32 %8940, 3
  %8945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8946 = extractvalue %dx.types.CBufRet.f32 %8945, 0
  %8947 = extractvalue %dx.types.CBufRet.f32 %8945, 1
  %8948 = extractvalue %dx.types.CBufRet.f32 %8945, 2
  %8949 = extractvalue %dx.types.CBufRet.f32 %8945, 3
  %8950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8951 = extractvalue %dx.types.CBufRet.f32 %8950, 0
  %8952 = extractvalue %dx.types.CBufRet.f32 %8950, 1
  %8953 = extractvalue %dx.types.CBufRet.f32 %8950, 2
  %8954 = extractvalue %dx.types.CBufRet.f32 %8950, 3
  %8955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.f32 %8955, 3
  %8957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8958 = extractvalue %dx.types.CBufRet.f32 %8957, 3
  %8959 = extractvalue %dx.types.CBufRet.f32 %8957, 0
  %8960 = extractvalue %dx.types.CBufRet.f32 %8957, 1
  %8961 = extractvalue %dx.types.CBufRet.f32 %8957, 2
  %8962 = fcmp fast olt float %8961, -5.000000e-01
  %8963 = call float @dx.op.dot3.f32(i32 55, float %8923, float %8924, float %8925, float %8923, float %8924, float %8925)  ; Dot3(ax,ay,az,bx,by,bz)
  %8964 = call float @dx.op.unary.f32(i32 25, float %8963)  ; Rsqrt(value)
  %8965 = fmul fast float %8964, %8963
  %8966 = fmul fast float %8964, %8923
  %8967 = fmul fast float %8964, %8924
  %8968 = fmul fast float %8964, %8925
  %8969 = fadd fast float %8965, %8939
  %8970 = call float @dx.op.dot3.f32(i32 55, float %8966, float %8967, float %8968, float %8936, float %8937, float %8938)  ; Dot3(ax,ay,az,bx,by,bz)
  %8971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.i32 %8971, 1
  %8973 = and i32 %8972, 1
  %8974 = icmp ne i32 %8973, 0
  %8975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8976 = extractvalue %dx.types.CBufRet.f32 %8975, 2
  %8977 = fcmp fast ogt float %8976, 0.000000e+00
  %8978 = and i1 %8974, %8977
  br i1 %8978, label %8979, label %9385, !dx.controlflow.hints !135

; <label>:8979                                    ; preds = %8934
  %8980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.f32 %8980, 3
  %8982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8983 = extractvalue %dx.types.CBufRet.f32 %8982, 2
  %8984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8985 = extractvalue %dx.types.CBufRet.f32 %8984, 2
  %8986 = fsub fast float %8983, %8985
  %8987 = and i32 %8972, 2
  %8988 = extractvalue %dx.types.CBufRet.i32 %8971, 0
  %8989 = call i32 @dx.op.binary.i32(i32 40, i32 %8988, i32 3)  ; UMin(a,b)
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 0
  %8992 = extractvalue %dx.types.CBufRet.f32 %8990, 1
  %8993 = extractvalue %dx.types.CBufRet.f32 %8984, 0
  %8994 = extractvalue %dx.types.CBufRet.f32 %8984, 1
  %8995 = fsub fast float %8991, %8993
  %8996 = fsub fast float %8992, %8994
  %8997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8997, 0
  %8999 = fcmp fast ogt float %8998, 0.000000e+00
  %9000 = fsub fast float -0.000000e+00, %8995
  %9001 = fsub fast float -0.000000e+00, %8996
  %9002 = call float @dx.op.dot2.f32(i32 54, float %8966, float %8967, float %8966, float %8967)  ; Dot2(ax,ay,bx,by)
  %9003 = call float @dx.op.dot2.f32(i32 54, float %8966, float %8967, float %9000, float %9001)  ; Dot2(ax,ay,bx,by)
  %9004 = fmul fast float %9003, 2.000000e+00
  %9005 = call float @dx.op.dot2.f32(i32 54, float %9000, float %9001, float %9000, float %9001)  ; Dot2(ax,ay,bx,by)
  %9006 = fmul fast float %8998, %8998
  %9007 = fsub fast float %9005, %9006
  %9008 = fmul fast float %9004, %9004
  %9009 = fmul fast float %9002, 4.000000e+00
  %9010 = fmul fast float %9009, %9007
  %9011 = fsub fast float %9008, %9010
  %9012 = fcmp fast ogt float %9011, 0.000000e+00
  br i1 %9012, label %9013, label %9028

; <label>:9013                                    ; preds = %8979
  %9014 = fcmp fast ogt float %9004, 0.000000e+00
  %9015 = call float @dx.op.unary.f32(i32 24, float %9011)  ; Sqrt(value)
  %9016 = fsub fast float -0.000000e+00, %9015
  %9017 = select i1 %9014, float %9015, float %9016
  %9018 = fadd fast float %9017, %9004
  %9019 = fmul float %9018, -5.000000e-01
  %9020 = fdiv fast float %9019, %9002
  %9021 = call float @dx.op.binary.f32(i32 35, float %9020, float 0.000000e+00)  ; FMax(a,b)
  %9022 = call float @dx.op.binary.f32(i32 36, float %8965, float %9021)  ; FMin(a,b)
  %9023 = fdiv fast float %9007, %9019
  %9024 = call float @dx.op.binary.f32(i32 35, float %9023, float 0.000000e+00)  ; FMax(a,b)
  %9025 = call float @dx.op.binary.f32(i32 36, float %8965, float %9024)  ; FMin(a,b)
  %9026 = call float @dx.op.binary.f32(i32 36, float %9022, float %9025)  ; FMin(a,b)
  %9027 = call float @dx.op.binary.f32(i32 35, float %9022, float %9025)  ; FMax(a,b)
  br label %9028

; <label>:9028                                    ; preds = %9013, %8979
  %9029 = phi float [ %9027, %9013 ], [ -1.000000e+00, %8979 ]
  %9030 = phi float [ %9026, %9013 ], [ -1.000000e+00, %8979 ]
  %9031 = phi i1 [ true, %9013 ], [ false, %8979 ]
  %9032 = and i1 %8999, %9031
  br i1 %9032, label %9033, label %9035

; <label>:9033                                    ; preds = %9028
  %9034 = fcmp fast oeq float %9030, %9029
  br i1 %9034, label %9338, label %9036

; <label>:9035                                    ; preds = %9028
  br i1 %8999, label %9338, label %9036

; <label>:9036                                    ; preds = %9035, %9033
  %9037 = phi float [ %8965, %9035 ], [ %9029, %9033 ]
  %9038 = phi float [ 0.000000e+00, %9035 ], [ %9030, %9033 ]
  %9039 = icmp ne i32 %8987, 0
  %9040 = fmul fast float %9037, %8968
  %9041 = fadd fast float %9040, %8981
  %9042 = fmul fast float %9041, %9037
  %9043 = select i1 %9039, float 0.000000e+00, float %9042
  %9044 = fcmp fast oeq float %8968, 0.000000e+00
  %9045 = fdiv fast float %8986, %8968
  %9046 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9045)  ; FMax(a,b)
  %9047 = select i1 %9044, float %9037, float %9046
  %9048 = call float @dx.op.binary.f32(i32 36, float %9037, float %9047)  ; FMin(a,b)
  %9049 = fcmp fast ogt float %8968, 0.000000e+00
  %9050 = fcmp fast olt float %8986, 0.000000e+00
  br i1 %9049, label %9051, label %9108

; <label>:9051                                    ; preds = %9036
  %9052 = icmp eq i32 %8987, 0
  br i1 %9050, label %9053, label %9097

; <label>:9053                                    ; preds = %9051
  %9054 = select i1 %9052, float %9037, float 0.000000e+00
  %9055 = fsub fast float -0.000000e+00, %9054
  %9056 = call float @dx.op.unary.f32(i32 6, float %9055)  ; FAbs(value)
  %9057 = fmul fast float %9054, %8968
  %9058 = fadd fast float %9057, %8981
  %9059 = fmul fast float %9056, %9058
  %9060 = fsub fast float %9043, %9059
  %9061 = fsub fast float %9037, %9056
  %9062 = select i1 %9052, float %9061, float 0.000000e+00
  %9063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9064 = extractvalue %dx.types.CBufRet.f32 %9063, 0
  %9065 = extractvalue %dx.types.CBufRet.f32 %9063, 1
  %9066 = extractvalue %dx.types.CBufRet.f32 %9063, 2
  %9067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9068 = extractvalue %dx.types.CBufRet.f32 %9067, 0
  %9069 = extractvalue %dx.types.CBufRet.f32 %9067, 1
  %9070 = extractvalue %dx.types.CBufRet.f32 %9067, 2
  %9071 = extractvalue %dx.types.CBufRet.f32 %9067, 3
  %9072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9073 = extractvalue %dx.types.CBufRet.f32 %9072, 3
  %9074 = call float @dx.op.binary.f32(i32 36, float %9060, float %9073)  ; FMin(a,b)
  %9075 = fmul fast float %9071, %9062
  %9076 = call float @dx.op.unary.f32(i32 7, float %9075)  ; Saturate(value)
  %9077 = fsub fast float %9068, %9064
  %9078 = fsub fast float %9069, %9065
  %9079 = fsub fast float %9070, %9066
  %9080 = fmul fast float %9076, %9077
  %9081 = fmul fast float %9076, %9078
  %9082 = fmul fast float %9076, %9079
  %9083 = fadd fast float %9080, %9064
  %9084 = fadd fast float %9081, %9065
  %9085 = fadd fast float %9082, %9066
  %9086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9087 = extractvalue %dx.types.CBufRet.f32 %9086, 0
  %9088 = extractvalue %dx.types.CBufRet.f32 %9086, 1
  %9089 = fadd fast float %9088, %9087
  %9090 = call float @dx.op.unary.f32(i32 7, float %9089)  ; Saturate(value)
  %9091 = extractvalue %dx.types.CBufRet.f32 %9086, 2
  %9092 = extractvalue %dx.types.CBufRet.f32 %9086, 3
  %9093 = fadd fast float %9092, %9091
  %9094 = call float @dx.op.unary.f32(i32 7, float %9093)  ; Saturate(value)
  %9095 = fmul fast float %9090, %9074
  %9096 = fmul fast float %9095, %9094
  br label %9338

; <label>:9097                                    ; preds = %9051
  br i1 %9052, label %9098, label %9119

; <label>:9098                                    ; preds = %9097
  %9099 = call float @dx.op.binary.f32(i32 36, float %9048, float %9038)  ; FMin(a,b)
  %9100 = fsub fast float %9048, %9099
  %9101 = fsub fast float %9100, %9037
  %9102 = call float @dx.op.unary.f32(i32 6, float %9101)  ; FAbs(value)
  %9103 = fadd fast float %9100, %9037
  %9104 = fmul fast float %9103, %8968
  %9105 = fadd fast float %9104, %8981
  %9106 = fmul fast float %9105, %9102
  %9107 = fsub fast float %9043, %9106
  br label %9119

; <label>:9108                                    ; preds = %9036
  br i1 %9050, label %9109, label %9119

; <label>:9109                                    ; preds = %9108
  %9110 = call float @dx.op.binary.f32(i32 35, float %9038, float %9048)  ; FMax(a,b)
  %9111 = icmp eq i32 %8987, 0
  %9112 = select i1 %9111, float %9048, float 0.000000e+00
  %9113 = fsub fast float -0.000000e+00, %9112
  %9114 = call float @dx.op.unary.f32(i32 6, float %9113)  ; FAbs(value)
  %9115 = fmul fast float %9112, %8968
  %9116 = fadd fast float %9115, %8981
  %9117 = fmul fast float %9114, %9116
  %9118 = fsub fast float %9043, %9117
  br label %9119

; <label>:9119                                    ; preds = %9109, %9108, %9098, %9097
  %9120 = phi float [ %9038, %9097 ], [ %9038, %9098 ], [ %9110, %9109 ], [ %9038, %9108 ]
  %9121 = phi float [ 0.000000e+00, %9097 ], [ %9102, %9098 ], [ %9114, %9109 ], [ 0.000000e+00, %9108 ]
  %9122 = phi float [ %9043, %9097 ], [ %9107, %9098 ], [ %9118, %9109 ], [ %9043, %9108 ]
  %9123 = phi float [ %9048, %9097 ], [ %9048, %9098 ], [ %9037, %9109 ], [ %9037, %9108 ]
  %9124 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9124, align 4, !tbaa !122, !noalias !136
  %9125 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9125, align 4, !tbaa !122, !noalias !136
  %9126 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9126, align 4, !tbaa !122, !noalias !136
  %9127 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9127, align 4, !tbaa !122, !noalias !136
  %9128 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9128, align 4, !tbaa !122, !noalias !136
  %9129 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9129, align 4, !tbaa !122, !noalias !136
  %9130 = icmp sgt i32 %8989, 0
  br i1 %9130, label %9131, label %9192

; <label>:9131                                    ; preds = %9119
  br label %9132

; <label>:9132                                    ; preds = %9181, %9131
  %9133 = phi i32 [ %9182, %9181 ], [ 0, %9131 ]
  %9134 = phi i32 [ %9183, %9181 ], [ 0, %9131 ]
  %9135 = add nuw i32 %9134, 171
  %9136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 %9135)  ; CBufferLoadLegacy(handle,regIndex)
  %9137 = extractvalue %dx.types.CBufRet.f32 %9136, 0
  %9138 = extractvalue %dx.types.CBufRet.f32 %9136, 1
  %9139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9140 = extractvalue %dx.types.CBufRet.f32 %9139, 0
  %9141 = extractvalue %dx.types.CBufRet.f32 %9139, 1
  %9142 = fsub fast float %9137, %9140
  %9143 = fsub fast float %9138, %9141
  %9144 = extractvalue %dx.types.CBufRet.f32 %9136, 2
  %9145 = fsub fast float -0.000000e+00, %9142
  %9146 = fsub fast float -0.000000e+00, %9143
  %9147 = call float @dx.op.dot2.f32(i32 54, float %8966, float %8967, float %9145, float %9146)  ; Dot2(ax,ay,bx,by)
  %9148 = fmul fast float %9147, 2.000000e+00
  %9149 = call float @dx.op.dot2.f32(i32 54, float %9145, float %9146, float %9145, float %9146)  ; Dot2(ax,ay,bx,by)
  %9150 = fmul fast float %9144, %9144
  %9151 = fsub fast float %9149, %9150
  %9152 = fmul fast float %9148, %9148
  %9153 = fmul fast float %9009, %9151
  %9154 = fsub fast float %9152, %9153
  %9155 = fcmp fast ogt float %9154, 0.000000e+00
  br i1 %9155, label %9156, label %9171

; <label>:9156                                    ; preds = %9132
  %9157 = fcmp fast ogt float %9148, 0.000000e+00
  %9158 = call float @dx.op.unary.f32(i32 24, float %9154)  ; Sqrt(value)
  %9159 = fsub fast float -0.000000e+00, %9158
  %9160 = select i1 %9157, float %9158, float %9159
  %9161 = fadd fast float %9160, %9148
  %9162 = fmul float %9161, -5.000000e-01
  %9163 = fdiv fast float %9162, %9002
  %9164 = call float @dx.op.binary.f32(i32 35, float %9163, float 0.000000e+00)  ; FMax(a,b)
  %9165 = call float @dx.op.binary.f32(i32 36, float %9037, float %9164)  ; FMin(a,b)
  %9166 = fdiv fast float %9151, %9162
  %9167 = call float @dx.op.binary.f32(i32 35, float %9166, float 0.000000e+00)  ; FMax(a,b)
  %9168 = call float @dx.op.binary.f32(i32 36, float %9037, float %9167)  ; FMin(a,b)
  %9169 = call float @dx.op.binary.f32(i32 36, float %9165, float %9168)  ; FMin(a,b)
  %9170 = call float @dx.op.binary.f32(i32 35, float %9165, float %9168)  ; FMax(a,b)
  br label %9171

; <label>:9171                                    ; preds = %9156, %9132
  %9172 = phi float [ %9170, %9156 ], [ -1.000000e+00, %9132 ]
  %9173 = phi float [ %9169, %9156 ], [ -1.000000e+00, %9132 ]
  %9174 = phi i1 [ true, %9156 ], [ false, %9132 ]
  br i1 %9174, label %9175, label %9181

; <label>:9175                                    ; preds = %9171
  %9176 = call float @dx.op.binary.f32(i32 35, float %9120, float %9173)  ; FMax(a,b)
  %9177 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9134
  store float %9176, float* %9177, align 4, !tbaa !122, !noalias !136
  %9178 = call float @dx.op.binary.f32(i32 35, float %9120, float %9172)  ; FMax(a,b)
  %9179 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9134
  store float %9178, float* %9179, align 4, !tbaa !122, !noalias !136
  %9180 = add nsw i32 %9133, 1
  br label %9181

; <label>:9181                                    ; preds = %9175, %9171
  %9182 = phi i32 [ %9180, %9175 ], [ %9133, %9171 ]
  %9183 = add nuw nsw i32 %9134, 1
  %9184 = icmp eq i32 %9183, %8989
  br i1 %9184, label %9185, label %9132

; <label>:9185                                    ; preds = %9181
  %9186 = load float, float* %9126, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9187 = load float, float* %9125, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  %9188 = load float, float* %9124, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  %9189 = load float, float* %9129, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9190 = load float, float* %9128, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  %9191 = load float, float* %9127, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  br label %9192

; <label>:9192                                    ; preds = %9185, %9119
  %9193 = phi float [ -1.000000e+00, %9119 ], [ %9191, %9185 ]
  %9194 = phi float [ -1.000000e+00, %9119 ], [ %9190, %9185 ]
  %9195 = phi float [ -1.000000e+00, %9119 ], [ %9189, %9185 ]
  %9196 = phi float [ -1.000000e+00, %9119 ], [ %9188, %9185 ]
  %9197 = phi float [ -1.000000e+00, %9119 ], [ %9187, %9185 ]
  %9198 = phi float [ -1.000000e+00, %9119 ], [ %9186, %9185 ]
  %9199 = phi i32 [ 0, %9119 ], [ %9182, %9185 ]
  %9200 = call float @dx.op.binary.f32(i32 36, float %9197, float %9198)  ; FMin(a,b)
  %9201 = call float @dx.op.binary.f32(i32 36, float %9196, float %9200)  ; FMin(a,b)
  %9202 = call float @dx.op.binary.f32(i32 35, float %9196, float %9197)  ; FMax(a,b)
  %9203 = call float @dx.op.binary.f32(i32 36, float %9202, float %9198)  ; FMin(a,b)
  %9204 = call float @dx.op.binary.f32(i32 36, float %9196, float %9197)  ; FMin(a,b)
  %9205 = call float @dx.op.binary.f32(i32 35, float %9204, float %9203)  ; FMax(a,b)
  %9206 = call float @dx.op.binary.f32(i32 35, float %9197, float %9198)  ; FMax(a,b)
  %9207 = call float @dx.op.binary.f32(i32 35, float %9196, float %9206)  ; FMax(a,b)
  store float %9201, float* %9124, align 4, !tbaa !122, !alias.scope !160, !noalias !161
  store float %9205, float* %9125, align 4, !tbaa !122, !alias.scope !158, !noalias !159
  store float %9207, float* %9126, align 4, !tbaa !122, !alias.scope !152, !noalias !155
  %9208 = call float @dx.op.binary.f32(i32 36, float %9194, float %9195)  ; FMin(a,b)
  %9209 = call float @dx.op.binary.f32(i32 36, float %9193, float %9208)  ; FMin(a,b)
  %9210 = call float @dx.op.binary.f32(i32 35, float %9193, float %9194)  ; FMax(a,b)
  %9211 = call float @dx.op.binary.f32(i32 36, float %9210, float %9195)  ; FMin(a,b)
  %9212 = call float @dx.op.binary.f32(i32 36, float %9193, float %9194)  ; FMin(a,b)
  %9213 = call float @dx.op.binary.f32(i32 35, float %9212, float %9211)  ; FMax(a,b)
  %9214 = call float @dx.op.binary.f32(i32 35, float %9194, float %9195)  ; FMax(a,b)
  %9215 = call float @dx.op.binary.f32(i32 35, float %9193, float %9214)  ; FMax(a,b)
  store float %9209, float* %9127, align 4, !tbaa !122, !alias.scope !170, !noalias !171
  store float %9213, float* %9128, align 4, !tbaa !122, !alias.scope !168, !noalias !169
  store float %9215, float* %9129, align 4, !tbaa !122, !alias.scope !162, !noalias !165
  %9216 = sub nsw i32 3, %9199
  %9217 = icmp sgt i32 %9216, 2
  br i1 %9217, label %9218, label %9256

; <label>:9218                                    ; preds = %9192
  %9219 = icmp eq i32 %8987, 0
  %9220 = fsub fast float %9037, %9121
  %9221 = select i1 %9219, float %9220, float %9121
  %9222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9223 = extractvalue %dx.types.CBufRet.f32 %9222, 0
  %9224 = extractvalue %dx.types.CBufRet.f32 %9222, 1
  %9225 = extractvalue %dx.types.CBufRet.f32 %9222, 2
  %9226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.f32 %9226, 0
  %9228 = extractvalue %dx.types.CBufRet.f32 %9226, 1
  %9229 = extractvalue %dx.types.CBufRet.f32 %9226, 2
  %9230 = extractvalue %dx.types.CBufRet.f32 %9226, 3
  %9231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9232 = extractvalue %dx.types.CBufRet.f32 %9231, 3
  %9233 = call float @dx.op.binary.f32(i32 36, float %9122, float %9232)  ; FMin(a,b)
  %9234 = fmul fast float %9230, %9221
  %9235 = call float @dx.op.unary.f32(i32 7, float %9234)  ; Saturate(value)
  %9236 = fsub fast float %9227, %9223
  %9237 = fsub fast float %9228, %9224
  %9238 = fsub fast float %9229, %9225
  %9239 = fmul fast float %9235, %9236
  %9240 = fmul fast float %9235, %9237
  %9241 = fmul fast float %9235, %9238
  %9242 = fadd fast float %9239, %9223
  %9243 = fadd fast float %9240, %9224
  %9244 = fadd fast float %9241, %9225
  %9245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9246 = extractvalue %dx.types.CBufRet.f32 %9245, 0
  %9247 = extractvalue %dx.types.CBufRet.f32 %9245, 1
  %9248 = fadd fast float %9247, %9246
  %9249 = call float @dx.op.unary.f32(i32 7, float %9248)  ; Saturate(value)
  %9250 = extractvalue %dx.types.CBufRet.f32 %9245, 2
  %9251 = extractvalue %dx.types.CBufRet.f32 %9245, 3
  %9252 = fadd fast float %9251, %9250
  %9253 = call float @dx.op.unary.f32(i32 7, float %9252)  ; Saturate(value)
  %9254 = fmul fast float %9249, %9233
  %9255 = fmul fast float %9254, %9253
  br label %9338

; <label>:9256                                    ; preds = %9192
  %9257 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9216
  %9258 = load float, float* %9257, align 4, !tbaa !122, !noalias !136
  %9259 = fcmp fast olt float %9258, %9123
  %9260 = icmp sgt i32 %9199, 0
  %9261 = and i1 %9260, %9259
  br i1 %9261, label %9262, label %9299

; <label>:9262                                    ; preds = %9256
  br label %9263

; <label>:9263                                    ; preds = %9292, %9262
  %9264 = phi float [ %9293, %9292 ], [ %9121, %9262 ]
  %9265 = phi float [ %9294, %9292 ], [ %9122, %9262 ]
  %9266 = phi float [ %9274, %9292 ], [ %9258, %9262 ]
  %9267 = phi i32 [ %9271, %9292 ], [ %9216, %9262 ]
  %9268 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9267
  %9269 = load float, float* %9268, align 4, !tbaa !122, !noalias !136
  %9270 = icmp slt i32 %9267, 2
  %9271 = add nsw i32 %9267, 1
  %9272 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9271
  %9273 = load float, float* %9272, align 4, !tbaa !122, !noalias !136
  %9274 = select i1 %9270, float %9273, float %9037
  %9275 = call float @dx.op.binary.f32(i32 36, float %9274, float %9269)  ; FMin(a,b)
  %9276 = call float @dx.op.binary.f32(i32 36, float %9123, float %9275)  ; FMin(a,b)
  %9277 = icmp eq i32 %8987, 0
  %9278 = fadd fast float %9276, %9266
  %9279 = fmul fast float %9278, %8968
  %9280 = fadd fast float %9279, %8981
  br i1 %9277, label %9286, label %9281

; <label>:9281                                    ; preds = %9263
  %9282 = fsub fast float %9276, %9266
  %9283 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9282)  ; FMax(a,b)
  %9284 = fmul fast float %9283, %9280
  %9285 = fadd fast float %9284, %9265
  br label %9292

; <label>:9286                                    ; preds = %9263
  %9287 = fsub fast float %9266, %9276
  %9288 = call float @dx.op.unary.f32(i32 6, float %9287)  ; FAbs(value)
  %9289 = fadd fast float %9288, %9264
  %9290 = fmul fast float %9288, %9280
  %9291 = fsub fast float %9265, %9290
  br label %9292

; <label>:9292                                    ; preds = %9286, %9281
  %9293 = phi float [ %9283, %9281 ], [ %9289, %9286 ]
  %9294 = phi float [ %9285, %9281 ], [ %9291, %9286 ]
  %9295 = fcmp fast olt float %9274, %9123
  %9296 = icmp slt i32 %9271, 3
  %9297 = and i1 %9296, %9295
  br i1 %9297, label %9263, label %9298

; <label>:9298                                    ; preds = %9292
  br label %9299

; <label>:9299                                    ; preds = %9298, %9256
  %9300 = phi float [ %9121, %9256 ], [ %9293, %9298 ]
  %9301 = phi float [ %9122, %9256 ], [ %9294, %9298 ]
  %9302 = fsub fast float %9037, %9300
  %9303 = select i1 %9039, float %9300, float %9302
  %9304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9305 = extractvalue %dx.types.CBufRet.f32 %9304, 0
  %9306 = extractvalue %dx.types.CBufRet.f32 %9304, 1
  %9307 = extractvalue %dx.types.CBufRet.f32 %9304, 2
  %9308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9309 = extractvalue %dx.types.CBufRet.f32 %9308, 0
  %9310 = extractvalue %dx.types.CBufRet.f32 %9308, 1
  %9311 = extractvalue %dx.types.CBufRet.f32 %9308, 2
  %9312 = extractvalue %dx.types.CBufRet.f32 %9308, 3
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 3
  %9315 = call float @dx.op.binary.f32(i32 36, float %9301, float %9314)  ; FMin(a,b)
  %9316 = fmul fast float %9312, %9303
  %9317 = call float @dx.op.unary.f32(i32 7, float %9316)  ; Saturate(value)
  %9318 = fsub fast float %9309, %9305
  %9319 = fsub fast float %9310, %9306
  %9320 = fsub fast float %9311, %9307
  %9321 = fmul fast float %9317, %9318
  %9322 = fmul fast float %9317, %9319
  %9323 = fmul fast float %9317, %9320
  %9324 = fadd fast float %9321, %9305
  %9325 = fadd fast float %9322, %9306
  %9326 = fadd fast float %9323, %9307
  %9327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9328 = extractvalue %dx.types.CBufRet.f32 %9327, 0
  %9329 = extractvalue %dx.types.CBufRet.f32 %9327, 1
  %9330 = fadd fast float %9329, %9328
  %9331 = call float @dx.op.unary.f32(i32 7, float %9330)  ; Saturate(value)
  %9332 = extractvalue %dx.types.CBufRet.f32 %9327, 2
  %9333 = extractvalue %dx.types.CBufRet.f32 %9327, 3
  %9334 = fadd fast float %9333, %9332
  %9335 = call float @dx.op.unary.f32(i32 7, float %9334)  ; Saturate(value)
  %9336 = fmul fast float %9331, %9315
  %9337 = fmul fast float %9336, %9335
  br label %9338

; <label>:9338                                    ; preds = %9299, %9218, %9053, %9035, %9033
  %9339 = phi float [ %9062, %9053 ], [ %9221, %9218 ], [ %9303, %9299 ], [ 0.000000e+00, %9033 ], [ 0.000000e+00, %9035 ]
  %9340 = phi float [ %9096, %9053 ], [ %9255, %9218 ], [ %9337, %9299 ], [ 0.000000e+00, %9033 ], [ 0.000000e+00, %9035 ]
  %9341 = phi float [ %9083, %9053 ], [ %9242, %9218 ], [ %9324, %9299 ], [ 0.000000e+00, %9033 ], [ 0.000000e+00, %9035 ]
  %9342 = phi float [ %9084, %9053 ], [ %9243, %9218 ], [ %9325, %9299 ], [ 0.000000e+00, %9033 ], [ 0.000000e+00, %9035 ]
  %9343 = phi float [ %9085, %9053 ], [ %9244, %9218 ], [ %9326, %9299 ], [ 0.000000e+00, %9033 ], [ 0.000000e+00, %9035 ]
  %9344 = fmul fast float %8976, %9340
  %9345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9346 = extractvalue %dx.types.CBufRet.f32 %9345, 2
  %9347 = fsub fast float %8983, %9346
  %9348 = fcmp fast olt float %9344, -2.000000e+01
  %9349 = call float @dx.op.unary.f32(i32 21, float %9344)  ; Exp(value)
  %9350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9351 = extractvalue %dx.types.CBufRet.f32 %9350, 2
  %9352 = extractvalue %dx.types.CBufRet.f32 %9350, 3
  %9353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9354 = extractvalue %dx.types.CBufRet.f32 %9353, 2
  %9355 = fmul fast float %9352, %9347
  %9356 = call float @dx.op.unary.f32(i32 7, float %9355)  ; Saturate(value)
  %9357 = fsub fast float 1.000000e+00, %9356
  %9358 = fmul fast float %8968, 5.000000e-01
  %9359 = fadd fast float %9358, 5.000000e-01
  %9360 = call float @dx.op.unary.f32(i32 7, float %9359)  ; Saturate(value)
  %9361 = fsub fast float 1.000000e+00, %9360
  %9362 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9357)  ; FMax(a,b)
  %9363 = fdiv fast float %9361, %9362
  %9364 = fsub fast float %9347, %8925
  %9365 = call float @dx.op.unary.f32(i32 6, float %9364)  ; FAbs(value)
  %9366 = fmul fast float %9365, %9351
  %9367 = call float @dx.op.unary.f32(i32 7, float %9363)  ; Saturate(value)
  %9368 = fsub fast float 1.000000e+00, %9366
  %9369 = fmul fast float %9368, %9367
  %9370 = fadd fast float %9369, %9366
  %9371 = fmul fast float %9354, %9347
  %9372 = call float @dx.op.unary.f32(i32 7, float %9371)  ; Saturate(value)
  %9373 = fsub fast float 1.000000e+00, %9370
  %9374 = fmul fast float %9373, %9372
  %9375 = fadd fast float %9374, %9370
  %9376 = call float @dx.op.unary.f32(i32 7, float %9375)  ; Saturate(value)
  %9377 = fadd fast float %9349, -1.000000e+00
  %9378 = select i1 %9348, float -1.000000e+00, float %9377
  %9379 = fmul fast float %9376, %9378
  %9380 = fadd fast float %9379, 1.000000e+00
  %9381 = fsub fast float -0.000000e+00, %9379
  %9382 = fmul fast float %9341, %9381
  %9383 = fmul fast float %9342, %9381
  %9384 = fmul fast float %9343, %9381
  br label %9385

; <label>:9385                                    ; preds = %9338, %8934
  %9386 = phi float [ %9339, %9338 ], [ 0.000000e+00, %8934 ]
  %9387 = phi float [ %9380, %9338 ], [ 1.000000e+00, %8934 ]
  %9388 = phi float [ %9382, %9338 ], [ 0.000000e+00, %8934 ]
  %9389 = phi float [ %9383, %9338 ], [ 0.000000e+00, %8934 ]
  %9390 = phi float [ %9384, %9338 ], [ 0.000000e+00, %8934 ]
  %9391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9392 = extractvalue %dx.types.CBufRet.f32 %9391, 1
  %9393 = fsub fast float 1.000000e+00, %9387
  %9394 = fmul fast float %9393, %8969
  %9395 = fmul fast float %9394, %9392
  %9396 = fsub fast float %8969, %9395
  br i1 %8962, label %9397, label %9426, !dx.controlflow.hints !172

; <label>:9397                                    ; preds = %9385
  %9398 = fmul fast float %8970, %8959
  %9399 = fadd fast float %9398, %8960
  %9400 = call float @dx.op.unary.f32(i32 7, float %9399)  ; Saturate(value)
  %9401 = fmul fast float %8941, %9396
  %9402 = fsub fast float -0.000000e+00, %9401
  %9403 = fmul fast float %8942, %9396
  %9404 = fsub fast float -0.000000e+00, %9403
  %9405 = call float @dx.op.unary.f32(i32 21, float %9402)  ; Exp(value)
  %9406 = call float @dx.op.unary.f32(i32 21, float %9404)  ; Exp(value)
  %9407 = call float @dx.op.binary.f32(i32 35, float %8949, float %9405)  ; FMax(a,b)
  %9408 = call float @dx.op.binary.f32(i32 35, float %8949, float %9406)  ; FMax(a,b)
  %9409 = fsub fast float %9408, %9407
  %9410 = fmul fast float %9409, %9400
  %9411 = fadd fast float %9410, %9407
  %9412 = call float @dx.op.unary.f32(i32 7, float %9411)  ; Saturate(value)
  %9413 = fsub fast float %8946, %8951
  %9414 = fsub fast float %8947, %8952
  %9415 = fsub fast float %8948, %8953
  %9416 = fmul fast float %9400, %9413
  %9417 = fmul fast float %9400, %9414
  %9418 = fmul fast float %9400, %9415
  %9419 = fadd fast float %9416, %8951
  %9420 = fadd fast float %9417, %8952
  %9421 = fadd fast float %9418, %8953
  %9422 = fsub fast float 1.000000e+00, %9412
  %9423 = fmul fast float %9422, %9419
  %9424 = fmul fast float %9422, %9420
  %9425 = fmul fast float %9422, %9421
  br label %9485

; <label>:9426                                    ; preds = %9385
  %9427 = fmul fast float %9396, %8958
  %9428 = call float @dx.op.unary.f32(i32 7, float %9427)  ; Saturate(value)
  %9429 = fsub fast float 2.000000e+00, %9428
  %9430 = fmul fast float %9428, 9.921875e-01
  %9431 = fmul fast float %9430, %9429
  %9432 = fadd fast float %9431, 3.906250e-03
  %9433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %54, float %9432, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9434 = extractvalue %dx.types.ResRet.f32 %9433, 0
  %9435 = fsub fast float %9428, %9434
  %9436 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9435)  ; FMax(a,b)
  %9437 = fmul fast float %8944, %8925
  %9438 = call float @dx.op.unary.f32(i32 6, float %9437)  ; FAbs(value)
  %9439 = fcmp fast ogt float %9438, 0x3EB0C6F7A0000000
  br i1 %9439, label %9440, label %9446, !dx.controlflow.hints !173

; <label>:9440                                    ; preds = %9426
  %9441 = fmul fast float %9437, 0xBFF7154760000000
  %9442 = call float @dx.op.unary.f32(i32 21, float %9441)  ; Exp(value)
  %9443 = fsub fast float 1.000000e+00, %9442
  %9444 = fdiv fast float %9443, %9437
  %9445 = fmul fast float %9444, %8954
  br label %9446

; <label>:9446                                    ; preds = %9440, %9426
  %9447 = phi float [ %9445, %9440 ], [ %8954, %9426 ]
  %9448 = fadd fast float %9447, %8956
  %9449 = fmul fast float %9448, %9436
  %9450 = fmul fast float %8941, %9449
  %9451 = fsub fast float -0.000000e+00, %9450
  %9452 = fmul fast float %8942, %9449
  %9453 = fsub fast float -0.000000e+00, %9452
  %9454 = fmul fast float %8943, %9449
  %9455 = fsub fast float -0.000000e+00, %9454
  %9456 = call float @dx.op.unary.f32(i32 21, float %9451)  ; Exp(value)
  %9457 = call float @dx.op.unary.f32(i32 21, float %9453)  ; Exp(value)
  %9458 = call float @dx.op.unary.f32(i32 21, float %9455)  ; Exp(value)
  %9459 = fmul fast float %8970, %8970
  %9460 = fadd fast float %9459, 1.000000e+00
  %9461 = fmul fast float %9460, 0x3FAE8EC8A0000000
  %9462 = fmul fast float %9461, %8951
  %9463 = fmul fast float %9461, %8952
  %9464 = fmul fast float %9461, %8953
  %9465 = fmul fast float %8970, %8949
  %9466 = fsub fast float 1.000000e+00, %9465
  %9467 = fmul fast float %8949, %8949
  %9468 = fsub fast float 1.000000e+00, %9467
  %9469 = fmul fast float %9468, 0x3FB45F3060000000
  %9470 = fmul fast float %9466, %9466
  %9471 = fdiv fast float 1.000000e+00, %9470
  %9472 = fmul fast float %9469, %9471
  %9473 = fmul fast float %9472, %8946
  %9474 = fmul fast float %9472, %8947
  %9475 = fmul fast float %9472, %8948
  %9476 = fadd fast float %9473, %9462
  %9477 = fadd fast float %9474, %9463
  %9478 = fadd fast float %9475, %9464
  %9479 = fsub fast float 1.000000e+00, %9456
  %9480 = fsub fast float 1.000000e+00, %9457
  %9481 = fsub fast float 1.000000e+00, %9458
  %9482 = fmul fast float %9476, %9479
  %9483 = fmul fast float %9477, %9480
  %9484 = fmul fast float %9478, %9481
  br label %9485

; <label>:9485                                    ; preds = %9446, %9397
  %9486 = phi float [ %9423, %9397 ], [ %9482, %9446 ]
  %9487 = phi float [ %9424, %9397 ], [ %9483, %9446 ]
  %9488 = phi float [ %9425, %9397 ], [ %9484, %9446 ]
  %9489 = phi float [ %9412, %9397 ], [ %9456, %9446 ]
  %9490 = phi float [ %9412, %9397 ], [ %9457, %9446 ]
  %9491 = phi float [ %9412, %9397 ], [ %9458, %9446 ]
  br i1 %8978, label %9492, label %9690, !dx.controlflow.hints !174

; <label>:9492                                    ; preds = %9485
  %9493 = extractvalue %dx.types.CBufRet.f32 %9391, 0
  %9494 = fmul fast float %9493, %9393
  %9495 = fsub fast float %9388, %9486
  %9496 = fsub fast float %9389, %9487
  %9497 = fsub fast float %9390, %9488
  %9498 = fmul fast float %9494, %9495
  %9499 = fmul fast float %9494, %9496
  %9500 = fmul fast float %9494, %9497
  %9501 = fadd fast float %9498, %9486
  %9502 = fadd fast float %9499, %9487
  %9503 = fadd fast float %9500, %9488
  %9504 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9489)  ; FMax(a,b)
  %9505 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9490)  ; FMax(a,b)
  %9506 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9491)  ; FMax(a,b)
  %9507 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9387)  ; FMax(a,b)
  %9508 = call float @dx.op.binary.f32(i32 35, float %9386, float %9396)  ; FMax(a,b)
  %9509 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9508)  ; FMax(a,b)
  %9510 = fdiv fast float %9386, %9509
  %9511 = call float @dx.op.unary.f32(i32 7, float %9510)  ; Saturate(value)
  %9512 = fdiv fast float %9396, %9509
  %9513 = call float @dx.op.unary.f32(i32 7, float %9512)  ; Saturate(value)
  %9514 = fcmp fast une float %9507, 1.000000e+00
  br i1 %9514, label %9515, label %9528, !dx.controlflow.hints !175

; <label>:9515                                    ; preds = %9492
  %9516 = call float @dx.op.unary.f32(i32 23, float %9507)  ; Log(value)
  %9517 = fmul fast float %9516, 0x3FE62E4300000000
  %9518 = fmul fast float %9388, %9517
  %9519 = fsub fast float -0.000000e+00, %9518
  %9520 = fmul fast float %9389, %9517
  %9521 = fsub fast float -0.000000e+00, %9520
  %9522 = fmul fast float %9390, %9517
  %9523 = fsub fast float -0.000000e+00, %9522
  %9524 = fsub fast float 1.000000e+00, %9507
  %9525 = fdiv fast float %9519, %9524
  %9526 = fdiv fast float %9521, %9524
  %9527 = fdiv fast float %9523, %9524
  br label %9528

; <label>:9528                                    ; preds = %9515, %9492
  %9529 = phi float [ %9525, %9515 ], [ %9388, %9492 ]
  %9530 = phi float [ %9526, %9515 ], [ %9389, %9492 ]
  %9531 = phi float [ %9527, %9515 ], [ %9390, %9492 ]
  %9532 = phi float [ %9517, %9515 ], [ 0.000000e+00, %9492 ]
  %9533 = fcmp fast une float %9504, 1.000000e+00
  br i1 %9533, label %9534, label %9541, !dx.controlflow.hints !176

; <label>:9534                                    ; preds = %9528
  %9535 = call float @dx.op.unary.f32(i32 23, float %9504)  ; Log(value)
  %9536 = fmul fast float %9535, 0x3FE62E4300000000
  %9537 = fmul fast float %9501, %9536
  %9538 = fsub fast float -0.000000e+00, %9537
  %9539 = fsub fast float 1.000000e+00, %9504
  %9540 = fdiv fast float %9538, %9539
  br label %9541

; <label>:9541                                    ; preds = %9534, %9528
  %9542 = phi float [ %9540, %9534 ], [ %9501, %9528 ]
  %9543 = phi float [ %9536, %9534 ], [ 0.000000e+00, %9528 ]
  %9544 = fcmp fast une float %9505, 1.000000e+00
  br i1 %9544, label %9545, label %9552, !dx.controlflow.hints !176

; <label>:9545                                    ; preds = %9541
  %9546 = call float @dx.op.unary.f32(i32 23, float %9505)  ; Log(value)
  %9547 = fmul fast float %9546, 0x3FE62E4300000000
  %9548 = fmul fast float %9502, %9547
  %9549 = fsub fast float -0.000000e+00, %9548
  %9550 = fsub fast float 1.000000e+00, %9505
  %9551 = fdiv fast float %9549, %9550
  br label %9552

; <label>:9552                                    ; preds = %9545, %9541
  %9553 = phi float [ %9551, %9545 ], [ %9502, %9541 ]
  %9554 = phi float [ %9547, %9545 ], [ 0.000000e+00, %9541 ]
  %9555 = fcmp fast une float %9506, 1.000000e+00
  br i1 %9555, label %9556, label %9563, !dx.controlflow.hints !176

; <label>:9556                                    ; preds = %9552
  %9557 = call float @dx.op.unary.f32(i32 23, float %9506)  ; Log(value)
  %9558 = fmul fast float %9557, 0x3FE62E4300000000
  %9559 = fmul fast float %9503, %9558
  %9560 = fsub fast float -0.000000e+00, %9559
  %9561 = fsub fast float 1.000000e+00, %9506
  %9562 = fdiv fast float %9560, %9561
  br label %9563

; <label>:9563                                    ; preds = %9556, %9552
  %9564 = phi float [ %9562, %9556 ], [ %9503, %9552 ]
  %9565 = phi float [ %9558, %9556 ], [ 0.000000e+00, %9552 ]
  %9566 = fmul fast float %9529, %9513
  %9567 = fmul fast float %9530, %9513
  %9568 = fmul fast float %9531, %9513
  %9569 = fmul fast float %9532, %9513
  %9570 = fmul fast float %9542, %9511
  %9571 = fmul fast float %9553, %9511
  %9572 = fmul fast float %9564, %9511
  %9573 = fmul fast float %9543, %9511
  %9574 = fmul fast float %9554, %9511
  %9575 = fmul fast float %9565, %9511
  %9576 = fadd fast float %9570, %9566
  %9577 = fadd fast float %9571, %9567
  %9578 = fadd fast float %9572, %9568
  %9579 = fadd fast float %9573, %9569
  %9580 = fadd fast float %9574, %9569
  %9581 = fadd fast float %9575, %9569
  %9582 = fcmp fast une float %9579, 0.000000e+00
  br i1 %9582, label %9583, label %9590, !dx.controlflow.hints !177

; <label>:9583                                    ; preds = %9563
  %9584 = fmul fast float %9579, 0x3FF7154760000000
  %9585 = call float @dx.op.unary.f32(i32 21, float %9584)  ; Exp(value)
  %9586 = fsub fast float 1.000000e+00, %9585
  %9587 = fmul fast float %9576, %9586
  %9588 = fsub fast float -0.000000e+00, %9587
  %9589 = fdiv fast float %9588, %9579
  br label %9590

; <label>:9590                                    ; preds = %9583, %9563
  %9591 = phi float [ %9585, %9583 ], [ 1.000000e+00, %9563 ]
  %9592 = phi float [ %9589, %9583 ], [ %9576, %9563 ]
  %9593 = fcmp fast une float %9580, 0.000000e+00
  br i1 %9593, label %9594, label %9601, !dx.controlflow.hints !177

; <label>:9594                                    ; preds = %9590
  %9595 = fmul fast float %9580, 0x3FF7154760000000
  %9596 = call float @dx.op.unary.f32(i32 21, float %9595)  ; Exp(value)
  %9597 = fsub fast float 1.000000e+00, %9596
  %9598 = fmul fast float %9577, %9597
  %9599 = fsub fast float -0.000000e+00, %9598
  %9600 = fdiv fast float %9599, %9580
  br label %9601

; <label>:9601                                    ; preds = %9594, %9590
  %9602 = phi float [ %9596, %9594 ], [ 1.000000e+00, %9590 ]
  %9603 = phi float [ %9600, %9594 ], [ %9577, %9590 ]
  %9604 = fcmp fast une float %9581, 0.000000e+00
  br i1 %9604, label %9605, label %9612, !dx.controlflow.hints !177

; <label>:9605                                    ; preds = %9601
  %9606 = fmul fast float %9581, 0x3FF7154760000000
  %9607 = call float @dx.op.unary.f32(i32 21, float %9606)  ; Exp(value)
  %9608 = fsub fast float 1.000000e+00, %9607
  %9609 = fmul fast float %9578, %9608
  %9610 = fsub fast float -0.000000e+00, %9609
  %9611 = fdiv fast float %9610, %9581
  br label %9612

; <label>:9612                                    ; preds = %9605, %9601
  %9613 = phi float [ %9607, %9605 ], [ 1.000000e+00, %9601 ]
  %9614 = phi float [ %9611, %9605 ], [ %9578, %9601 ]
  %9615 = fcmp fast ogt float %9511, %9513
  br i1 %9615, label %9616, label %9636

; <label>:9616                                    ; preds = %9612
  %9617 = fsub fast float 1.000000e+00, %9513
  %9618 = fmul fast float %9529, %9617
  %9619 = fmul fast float %9530, %9617
  %9620 = fmul fast float %9531, %9617
  %9621 = fmul fast float %9532, %9617
  %9622 = fcmp fast une float %9621, 0.000000e+00
  br i1 %9622, label %9623, label %9674, !dx.controlflow.hints !178

; <label>:9623                                    ; preds = %9616
  %9624 = fmul fast float %9621, 0x3FF7154760000000
  %9625 = call float @dx.op.unary.f32(i32 21, float %9624)  ; Exp(value)
  %9626 = fsub fast float 1.000000e+00, %9625
  %9627 = fmul fast float %9618, %9626
  %9628 = fsub fast float -0.000000e+00, %9627
  %9629 = fmul fast float %9619, %9626
  %9630 = fsub fast float -0.000000e+00, %9629
  %9631 = fmul fast float %9620, %9626
  %9632 = fsub fast float -0.000000e+00, %9631
  %9633 = fdiv fast float %9628, %9621
  %9634 = fdiv fast float %9630, %9621
  %9635 = fdiv fast float %9632, %9621
  br label %9674

; <label>:9636                                    ; preds = %9612
  %9637 = fsub fast float 1.000000e+00, %9511
  %9638 = fmul fast float %9542, %9637
  %9639 = fmul fast float %9553, %9637
  %9640 = fmul fast float %9564, %9637
  %9641 = fmul fast float %9543, %9637
  %9642 = fmul fast float %9554, %9637
  %9643 = fmul fast float %9565, %9637
  %9644 = fcmp fast une float %9641, 0.000000e+00
  br i1 %9644, label %9645, label %9652, !dx.controlflow.hints !177

; <label>:9645                                    ; preds = %9636
  %9646 = fmul fast float %9641, 0x3FF7154760000000
  %9647 = call float @dx.op.unary.f32(i32 21, float %9646)  ; Exp(value)
  %9648 = fsub fast float 1.000000e+00, %9647
  %9649 = fmul fast float %9638, %9648
  %9650 = fsub fast float -0.000000e+00, %9649
  %9651 = fdiv fast float %9650, %9641
  br label %9652

; <label>:9652                                    ; preds = %9645, %9636
  %9653 = phi float [ %9651, %9645 ], [ %9638, %9636 ]
  %9654 = phi float [ %9647, %9645 ], [ 1.000000e+00, %9636 ]
  %9655 = fcmp fast une float %9642, 0.000000e+00
  br i1 %9655, label %9656, label %9663, !dx.controlflow.hints !177

; <label>:9656                                    ; preds = %9652
  %9657 = fmul fast float %9642, 0x3FF7154760000000
  %9658 = call float @dx.op.unary.f32(i32 21, float %9657)  ; Exp(value)
  %9659 = fsub fast float 1.000000e+00, %9658
  %9660 = fmul fast float %9639, %9659
  %9661 = fsub fast float -0.000000e+00, %9660
  %9662 = fdiv fast float %9661, %9642
  br label %9663

; <label>:9663                                    ; preds = %9656, %9652
  %9664 = phi float [ %9662, %9656 ], [ %9639, %9652 ]
  %9665 = phi float [ %9658, %9656 ], [ 1.000000e+00, %9652 ]
  %9666 = fcmp fast une float %9643, 0.000000e+00
  br i1 %9666, label %9667, label %9674, !dx.controlflow.hints !177

; <label>:9667                                    ; preds = %9663
  %9668 = fmul fast float %9643, 0x3FF7154760000000
  %9669 = call float @dx.op.unary.f32(i32 21, float %9668)  ; Exp(value)
  %9670 = fsub fast float 1.000000e+00, %9669
  %9671 = fmul fast float %9640, %9670
  %9672 = fsub fast float -0.000000e+00, %9671
  %9673 = fdiv fast float %9672, %9643
  br label %9674

; <label>:9674                                    ; preds = %9667, %9663, %9623, %9616
  %9675 = phi float [ %9673, %9667 ], [ %9635, %9623 ], [ %9620, %9616 ], [ %9640, %9663 ]
  %9676 = phi float [ %9664, %9667 ], [ %9634, %9623 ], [ %9619, %9616 ], [ %9664, %9663 ]
  %9677 = phi float [ %9653, %9667 ], [ %9633, %9623 ], [ %9618, %9616 ], [ %9653, %9663 ]
  %9678 = phi float [ %9669, %9667 ], [ %9625, %9623 ], [ 1.000000e+00, %9616 ], [ 1.000000e+00, %9663 ]
  %9679 = phi float [ %9665, %9667 ], [ %9625, %9623 ], [ 1.000000e+00, %9616 ], [ %9665, %9663 ]
  %9680 = phi float [ %9654, %9667 ], [ %9625, %9623 ], [ 1.000000e+00, %9616 ], [ %9654, %9663 ]
  %9681 = fmul fast float %9680, %9592
  %9682 = fmul fast float %9679, %9603
  %9683 = fmul fast float %9678, %9614
  %9684 = fadd fast float %9681, %9677
  %9685 = fadd fast float %9682, %9676
  %9686 = fadd fast float %9683, %9675
  %9687 = fmul fast float %9680, %9591
  %9688 = fmul fast float %9679, %9602
  %9689 = fmul fast float %9678, %9613
  br label %9690

; <label>:9690                                    ; preds = %9674, %9485
  %9691 = phi float [ %9689, %9674 ], [ %9491, %9485 ]
  %9692 = phi float [ %9688, %9674 ], [ %9490, %9485 ]
  %9693 = phi float [ %9687, %9674 ], [ %9489, %9485 ]
  %9694 = phi float [ %9686, %9674 ], [ %9488, %9485 ]
  %9695 = phi float [ %9685, %9674 ], [ %9487, %9485 ]
  %9696 = phi float [ %9684, %9674 ], [ %9486, %9485 ]
  %9697 = fmul fast float %9696, %8642
  %9698 = fmul fast float %9695, %8642
  %9699 = fmul fast float %9694, %8642
  %9700 = fmul fast float %9693, %8933
  %9701 = call float @dx.op.dot3.f32(i32 55, float %9693, float %9692, float %9691, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9702 = call float @dx.op.dot3.f32(i32 55, float %9697, float %9698, float %9699, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9703 = select i1 %232, float %9701, float %9693
  %9704 = select i1 %232, float %9701, float %9692
  %9705 = select i1 %232, float 1.000000e+00, float %9691
  %9706 = select i1 %232, float %9702, float %9697
  %9707 = select i1 %232, float 0.000000e+00, float %9698
  %9708 = select i1 %232, float 0.000000e+00, float %9699
  %9709 = fmul fast float %9703, %8927
  %9710 = fmul fast float %9704, %8928
  %9711 = fmul fast float %9705, %8929
  %9712 = fadd fast float %9709, %9706
  %9713 = fadd fast float %9710, %9707
  %9714 = fadd fast float %9708, %9711
  %9715 = fmul fast float %9703, %8930
  %9716 = fmul fast float %9704, %8931
  %9717 = fmul fast float %9705, %8932
  %9718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9719 = extractvalue %dx.types.CBufRet.i32 %9718, 0
  %9720 = icmp eq i32 %9719, 0
  br i1 %9720, label %10088, label %9721, !dx.controlflow.hints !179

; <label>:9721                                    ; preds = %9690
  %9722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9723 = extractvalue %dx.types.CBufRet.f32 %9722, 2
  %9724 = extractvalue %dx.types.CBufRet.f32 %9722, 3
  %9725 = fmul fast float %9723, %111
  %9726 = fmul fast float %9724, %112
  %9727 = fmul fast float %9725, 2.000000e+00
  %9728 = fmul fast float %9726, 2.000000e+00
  %9729 = fsub fast float 1.000000e+00, %9727
  %9730 = fsub fast float 1.000000e+00, %9728
  %9731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9732 = extractvalue %dx.types.CBufRet.f32 %9731, 0
  %9733 = extractvalue %dx.types.CBufRet.f32 %9731, 1
  %9734 = extractvalue %dx.types.CBufRet.f32 %9731, 2
  %9735 = fmul fast float %9729, %9732
  %9736 = fmul fast float %9729, %9733
  %9737 = fmul fast float %9729, %9734
  %9738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9739 = extractvalue %dx.types.CBufRet.f32 %9738, 0
  %9740 = extractvalue %dx.types.CBufRet.f32 %9738, 1
  %9741 = extractvalue %dx.types.CBufRet.f32 %9738, 2
  %9742 = fmul fast float %9730, %9739
  %9743 = fmul fast float %9730, %9740
  %9744 = fmul fast float %9730, %9741
  %9745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9746 = extractvalue %dx.types.CBufRet.f32 %9745, 0
  %9747 = extractvalue %dx.types.CBufRet.f32 %9745, 1
  %9748 = extractvalue %dx.types.CBufRet.f32 %9745, 2
  %9749 = fadd fast float %9742, %9746
  %9750 = fadd fast float %9749, %9735
  %9751 = fadd fast float %9743, %9747
  %9752 = fadd fast float %9751, %9736
  %9753 = fadd fast float %9744, %9748
  %9754 = fadd fast float %9753, %9737
  %9755 = fmul fast float %9750, %8926
  %9756 = fmul fast float %9752, %8926
  %9757 = fmul fast float %9754, %8926
  %9758 = fmul fast float %9755, %9755
  %9759 = fmul fast float %9756, %9756
  %9760 = fadd fast float %9758, %9759
  %9761 = fmul fast float %9757, %9757
  %9762 = fadd fast float %9760, %9761
  %9763 = call float @dx.op.unary.f32(i32 24, float %9762)  ; Sqrt(value)
  %9764 = extractvalue %dx.types.CBufRet.f32 %8653, 0
  %9765 = fsub fast float %9763, %9764
  %9766 = extractvalue %dx.types.CBufRet.f32 %8653, 2
  %9767 = fmul fast float %9765, %9766
  %9768 = call float @dx.op.unary.f32(i32 7, float %9767)  ; Saturate(value)
  %9769 = fadd fast float %9768, -5.000000e-01
  %9770 = fmul fast float %9769, 2.000000e+00
  %9771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9772 = extractvalue %dx.types.CBufRet.f32 %9771, 2
  %9773 = call float @dx.op.binary.f32(i32 36, float %9772, float %9770)  ; FMin(a,b)
  %9774 = fsub fast float -0.000000e+00, %9772
  %9775 = fcmp fast ogt float %9773, %9774
  br i1 %9775, label %9776, label %10088, !dx.controlflow.hints !180

; <label>:9776                                    ; preds = %9721
  %9777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9778 = extractvalue %dx.types.CBufRet.f32 %9777, 3
  %9779 = fcmp fast ogt float %9778, 0.000000e+00
  br i1 %9779, label %9780, label %9855, !dx.controlflow.hints !181

; <label>:9780                                    ; preds = %9776
  %9781 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %9782 = extractvalue %dx.types.Dimensions %9781, 0
  %9783 = sitofp i32 %9782 to float
  %9784 = extractvalue %dx.types.Dimensions %9781, 1
  %9785 = sitofp i32 %9784 to float
  %9786 = fmul fast float %9725, %9783
  %9787 = fmul fast float %9726, %9785
  %9788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9789 = extractvalue %dx.types.CBufRet.f32 %9788, 1
  %9790 = fsub fast float -0.000000e+00, %9789
  %9791 = fptoui float %9790 to i32
  %9792 = fptoui float %9786 to i32
  %9793 = fptoui float %9787 to i32
  %9794 = and i32 %9791, 31
  %9795 = lshr i32 %9792, %9794
  %9796 = lshr i32 %9793, %9794
  %9797 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %9791, i32 %9795, i32 %9796, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9798 = extractvalue %dx.types.ResRet.f32 %9797, 0
  %9799 = fcmp fast olt float %9798, -1.000000e+00
  %9800 = fcmp fast ogt float %9798, -1.000000e+00
  %9801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9802 = extractvalue %dx.types.CBufRet.f32 %9801, 1
  %9803 = select i1 %9800, float %9802, float 1.000000e+00
  %9804 = fadd fast float %9798, 1.000000e+00
  %9805 = fmul fast float %9803, %9804
  %9806 = call float @dx.op.unary.f32(i32 6, float %9805)  ; FAbs(value)
  %9807 = extractvalue %dx.types.CBufRet.f32 %9801, 3
  %9808 = fcmp fast oge float %9806, %9807
  %9809 = select i1 %9808, float 0x4197782600000000, float %9806
  %9810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9811 = extractvalue %dx.types.CBufRet.f32 %9810, 0
  %9812 = extractvalue %dx.types.CBufRet.f32 %9810, 1
  %9813 = extractvalue %dx.types.CBufRet.f32 %9810, 2
  %9814 = select i1 %9799, float %9811, float %9732
  %9815 = select i1 %9799, float %9812, float %9733
  %9816 = select i1 %9799, float %9813, float %9734
  %9817 = fmul fast float %9814, %9729
  %9818 = fmul fast float %9815, %9729
  %9819 = fmul fast float %9816, %9729
  %9820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9821 = extractvalue %dx.types.CBufRet.f32 %9820, 0
  %9822 = extractvalue %dx.types.CBufRet.f32 %9820, 1
  %9823 = extractvalue %dx.types.CBufRet.f32 %9820, 2
  %9824 = select i1 %9799, float %9821, float %9739
  %9825 = select i1 %9799, float %9822, float %9740
  %9826 = select i1 %9799, float %9823, float %9741
  %9827 = fmul fast float %9824, %9730
  %9828 = fmul fast float %9825, %9730
  %9829 = fmul fast float %9826, %9730
  %9830 = fadd fast float %9827, %9817
  %9831 = fadd fast float %9828, %9818
  %9832 = fadd fast float %9829, %9819
  %9833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9834 = extractvalue %dx.types.CBufRet.f32 %9833, 0
  %9835 = extractvalue %dx.types.CBufRet.f32 %9833, 1
  %9836 = extractvalue %dx.types.CBufRet.f32 %9833, 2
  %9837 = select i1 %9799, float %9834, float %9746
  %9838 = select i1 %9799, float %9835, float %9747
  %9839 = select i1 %9799, float %9836, float %9748
  %9840 = fadd fast float %9830, %9837
  %9841 = fadd fast float %9831, %9838
  %9842 = fadd fast float %9832, %9839
  %9843 = fmul fast float %9840, %9809
  %9844 = fmul fast float %9841, %9809
  %9845 = fmul fast float %9842, %9809
  %9846 = fmul fast float %9843, %9843
  %9847 = fmul fast float %9844, %9844
  %9848 = fadd fast float %9846, %9847
  %9849 = fmul fast float %9845, %9845
  %9850 = fadd fast float %9848, %9849
  %9851 = call float @dx.op.unary.f32(i32 24, float %9850)  ; Sqrt(value)
  %9852 = fsub fast float %9851, %9764
  %9853 = fmul fast float %9852, %9766
  %9854 = call float @dx.op.unary.f32(i32 7, float %9853)  ; Saturate(value)
  br label %9855

; <label>:9855                                    ; preds = %9780, %9776
  %9856 = phi float [ %9854, %9780 ], [ 1.000000e+00, %9776 ]
  %9857 = fmul fast float %9773, 5.000000e-01
  %9858 = fadd fast float %9857, 5.000000e-01
  %9859 = call float @dx.op.unary.f32(i32 22, float %9858)  ; Frc(value)
  %9860 = call float @dx.op.unary.f32(i32 27, float %9859)  ; Round_ni(value)
  %9861 = call float @dx.op.unary.f32(i32 22, float %9859)  ; Frc(value)
  %9862 = fmul fast float %9861, 2.000000e+00
  %9863 = fadd fast float %9862, -1.000000e+00
  %9864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %54, float %9725, float %9726, float %9860, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9865 = extractvalue %dx.types.ResRet.f32 %9864, 0
  %9866 = extractvalue %dx.types.ResRet.f32 %9864, 1
  %9867 = extractvalue %dx.types.ResRet.f32 %9864, 2
  %9868 = extractvalue %dx.types.ResRet.f32 %9864, 3
  %9869 = fadd fast float %9865, -5.000000e-01
  %9870 = fadd fast float %9867, -5.000000e-01
  %9871 = fmul fast float %9869, 0xBFD5555560000000
  %9872 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9870, float %9871)  ; FMad(a,b,c)
  %9873 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9866, float 0.000000e+00)  ; FMad(a,b,c)
  %9874 = fadd fast float %9873, %9868
  %9875 = fmul fast float %9869, -7.500000e-01
  %9876 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9870, float %9875)  ; FMad(a,b,c)
  %9877 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9866, float 0.000000e+00)  ; FMad(a,b,c)
  %9878 = fadd fast float %9877, %9868
  %9879 = call float @dx.op.binary.f32(i32 35, float %9872, float -1.000000e+00)  ; FMax(a,b)
  %9880 = call float @dx.op.binary.f32(i32 35, float %9874, float -1.000000e+00)  ; FMax(a,b)
  %9881 = call float @dx.op.binary.f32(i32 35, float %9876, float -1.000000e+00)  ; FMax(a,b)
  %9882 = call float @dx.op.binary.f32(i32 35, float %9878, float -1.000000e+00)  ; FMax(a,b)
  %9883 = call float @dx.op.binary.f32(i32 36, float %9879, float 1.000000e+00)  ; FMin(a,b)
  %9884 = call float @dx.op.binary.f32(i32 36, float %9880, float 1.000000e+00)  ; FMin(a,b)
  %9885 = call float @dx.op.binary.f32(i32 36, float %9881, float 1.000000e+00)  ; FMin(a,b)
  %9886 = call float @dx.op.binary.f32(i32 36, float %9882, float 1.000000e+00)  ; FMin(a,b)
  %9887 = fcmp fast olt float %9883, 0x3FEFFF8020000000
  br i1 %9887, label %9888, label %10003, !dx.controlflow.hints !182

; <label>:9888                                    ; preds = %9855
  %9889 = extractvalue %dx.types.CBufRet.f32 %9771, 3
  %9890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9891 = extractvalue %dx.types.CBufRet.f32 %9890, 0
  %9892 = extractvalue %dx.types.CBufRet.f32 %9890, 1
  %9893 = extractvalue %dx.types.CBufRet.f32 %9890, 2
  %9894 = extractvalue %dx.types.CBufRet.f32 %9890, 3
  %9895 = fsub fast float %9891, %9883
  %9896 = fsub fast float %9892, %9884
  %9897 = fsub fast float %9893, %9885
  %9898 = fsub fast float %9894, %9886
  %9899 = fmul fast float %9895, %9889
  %9900 = fmul fast float %9896, %9889
  %9901 = fmul fast float %9897, %9889
  %9902 = fmul fast float %9898, %9889
  %9903 = fadd fast float %9899, %9883
  %9904 = fadd fast float %9900, %9884
  %9905 = fsub fast float -0.000000e+00, %9904
  %9906 = fadd fast float %9901, %9885
  %9907 = fadd fast float %9902, %9886
  %9908 = fmul fast float %9903, %9903
  %9909 = fsub fast float %9904, %9908
  %9910 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9909)  ; FMax(a,b)
  %9911 = fdiv fast float 1.000000e+00, %9910
  %9912 = fmul fast float %9904, %9903
  %9913 = fsub fast float %9906, %9912
  %9914 = fsub fast float %9863, %9903
  %9915 = fmul fast float %9863, %9863
  %9916 = fsub fast float %9915, %9904
  %9917 = fmul fast float %9914, %9911
  %9918 = fmul fast float %9917, %9913
  %9919 = fsub fast float %9916, %9918
  %9920 = fmul fast float %9904, %9904
  %9921 = fsub fast float %9907, %9920
  %9922 = fmul fast float %9913, %9913
  %9923 = fmul fast float %9922, %9911
  %9924 = fsub fast float %9921, %9923
  %9925 = fdiv fast float %9919, %9924
  %9926 = fmul fast float %9913, %9925
  %9927 = fsub fast float %9914, %9926
  %9928 = fmul fast float %9927, %9911
  %9929 = fmul fast float %9928, %9903
  %9930 = fsub fast float 1.000000e+00, %9929
  %9931 = fmul fast float %9904, %9925
  %9932 = fsub fast float %9930, %9931
  %9933 = fmul fast float %9928, %9928
  %9934 = fmul fast float %9925, 4.000000e+00
  %9935 = fmul fast float %9934, %9932
  %9936 = fsub fast float %9933, %9935
  %9937 = call float @dx.op.unary.f32(i32 24, float %9936)  ; Sqrt(value)
  %9938 = fcmp fast oge float %9928, 0.000000e+00
  %9939 = fsub fast float -0.000000e+00, %9937
  %9940 = select i1 %9938, float %9939, float %9937
  %9941 = fsub fast float %9940, %9928
  %9942 = fdiv fast float %9941, %9925
  %9943 = fdiv fast float %9932, %9941
  %9944 = fmul fast float %9942, 5.000000e-01
  %9945 = fmul fast float %9943, 2.000000e+00
  %9946 = select i1 %9938, float %9944, float %9945
  %9947 = select i1 %9938, float %9945, float %9944
  %9948 = call float @dx.op.binary.f32(i32 35, float %9946, float %9947)  ; FMax(a,b)
  %9949 = call float @dx.op.binary.f32(i32 36, float %9946, float %9947)  ; FMin(a,b)
  %9950 = fcmp fast ogt float %9863, %9949
  br i1 %9950, label %9951, label %9961

; <label>:9951                                    ; preds = %9888
  %9952 = fsub fast float %9863, %9949
  %9953 = fsub fast float %9948, %9949
  %9954 = fmul fast float %9952, %9953
  %9955 = fmul fast float %9948, %9863
  %9956 = fadd fast float %9948, %9863
  %9957 = fmul fast float %9956, %9903
  %9958 = fadd fast float %9955, %9904
  %9959 = fsub fast float %9958, %9957
  %9960 = fdiv fast float %9959, %9954
  br label %9961

; <label>:9961                                    ; preds = %9951, %9888
  %9962 = phi float [ %9960, %9951 ], [ 0.000000e+00, %9888 ]
  %9963 = fcmp fast ogt float %9863, %9948
  %9964 = fsub fast float %9863, %9948
  br i1 %9963, label %9965, label %9975

; <label>:9965                                    ; preds = %9961
  %9966 = fsub fast float %9948, %9949
  %9967 = fmul fast float %9966, %9964
  %9968 = fmul fast float %9949, %9863
  %9969 = fadd fast float %9949, %9863
  %9970 = fmul fast float %9969, %9903
  %9971 = fsub fast float %9905, %9968
  %9972 = fadd fast float %9971, %9970
  %9973 = fdiv fast float %9972, %9967
  %9974 = fadd fast float %9973, %9962
  br label %9975

; <label>:9975                                    ; preds = %9965, %9961
  %9976 = phi float [ %9974, %9965 ], [ %9962, %9961 ]
  %9977 = fsub fast float %9863, %9949
  %9978 = fmul fast float %9977, %9964
  %9979 = fmul fast float %9949, %9948
  %9980 = fadd fast float %9949, %9948
  %9981 = fmul fast float %9980, %9903
  %9982 = fadd fast float %9979, %9904
  %9983 = fsub fast float %9982, %9981
  %9984 = fdiv fast float %9983, %9978
  %9985 = call float @dx.op.unary.f32(i32 7, float %9976)  ; Saturate(value)
  %9986 = fcmp fast oeq float %8654, 0.000000e+00
  %9987 = extractvalue %dx.types.CBufRet.f32 %9771, 0
  %9988 = fcmp fast oeq float %9987, 0.000000e+00
  %9989 = or i1 %9986, %9988
  %9990 = fmul fast float %9987, 2.000000e+00
  %9991 = fadd fast float %9772, %9773
  %9992 = fdiv fast float %9991, %9990
  %9993 = call float @dx.op.unary.f32(i32 7, float %9992)  ; Saturate(value)
  %9994 = fmul fast float %9993, 2.000000e+00
  %9995 = fsub fast float 3.000000e+00, %9994
  %9996 = fmul fast float %9993, %9993
  %9997 = fmul fast float %9996, %9995
  %9998 = select i1 %9989, float 1.000000e+00, float %9997
  %9999 = fmul fast float %9984, %8654
  %10000 = fadd fast float %9985, %9999
  %10001 = call float @dx.op.unary.f32(i32 7, float %10000)  ; Saturate(value)
  %10002 = fmul fast float %9998, %10001
  br label %10003

; <label>:10003                                   ; preds = %9975, %9855
  %10004 = phi float [ %10002, %9975 ], [ 0.000000e+00, %9855 ]
  %10005 = fsub fast float 1.000000e+00, %10004
  %10006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %54, float %9725, float %9726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10007 = extractvalue %dx.types.ResRet.f32 %10006, 0
  %10008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10009 = extractvalue %dx.types.CBufRet.i32 %10008, 2
  %10010 = icmp eq i32 %10009, 0
  br i1 %10010, label %10016, label %10011

; <label>:10011                                   ; preds = %10003
  %10012 = call float @dx.op.unary.f32(i32 7, float %10004)  ; Saturate(value)
  %10013 = fadd fast float %10007, -1.000000e+00
  %10014 = fmul fast float %10012, %10013
  %10015 = fadd fast float %10014, 1.000000e+00
  br label %10016

; <label>:10016                                   ; preds = %10011, %10003
  %10017 = phi float [ %10015, %10011 ], [ %10005, %10003 ]
  br i1 %9779, label %10018, label %10036

; <label>:10018                                   ; preds = %10016
  %10019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10020 = extractvalue %dx.types.CBufRet.f32 %10019, 1
  %10021 = fsub fast float %9856, %10020
  %10022 = call float @dx.op.unary.f32(i32 7, float %10021)  ; Saturate(value)
  %10023 = fsub fast float %9856, %9778
  %10024 = call float @dx.op.unary.f32(i32 7, float %10023)  ; Saturate(value)
  %10025 = fsub fast float %10022, %10024
  %10026 = fsub fast float %9858, %10024
  %10027 = fdiv fast float %10026, %10025
  %10028 = call float @dx.op.unary.f32(i32 7, float %10027)  ; Saturate(value)
  %10029 = fmul fast float %10028, 2.000000e+00
  %10030 = fsub fast float 3.000000e+00, %10029
  %10031 = fsub fast float %10007, %10017
  %10032 = fmul fast float %10028, %10028
  %10033 = fmul fast float %10032, %10031
  %10034 = fmul fast float %10033, %10030
  %10035 = fadd fast float %10034, %10017
  br label %10036

; <label>:10036                                   ; preds = %10018, %10016
  %10037 = phi float [ %10035, %10018 ], [ %10017, %10016 ]
  %10038 = call float @dx.op.binary.f32(i32 35, float %10007, float %10037)  ; FMax(a,b)
  %10039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10040 = extractvalue %dx.types.CBufRet.i32 %10039, 2
  %10041 = and i32 %10040, 1
  %10042 = icmp eq i32 %10041, 0
  %10043 = fcmp fast une float %10038, 1.000000e+00
  %10044 = and i1 %10043, %10042
  br i1 %10044, label %10045, label %10064

; <label>:10045                                   ; preds = %10036
  %10046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %54, float %9725, float %9726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10047 = extractvalue %dx.types.ResRet.f32 %10046, 0
  %10048 = extractvalue %dx.types.ResRet.f32 %10046, 1
  %10049 = extractvalue %dx.types.ResRet.f32 %10046, 2
  %10050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10051 = extractvalue %dx.types.CBufRet.f32 %10050, 1
  %10052 = fmul fast float %10051, %10047
  %10053 = fmul fast float %10051, %10048
  %10054 = fmul fast float %10051, %10049
  %10055 = fcmp fast ogt float %10007, 0x3FEFFF2E40000000
  %10056 = fsub fast float 1.000000e+00, %10038
  %10057 = fsub fast float 1.000000e+00, %10007
  %10058 = fdiv fast float %10056, %10057
  %10059 = call float @dx.op.unary.f32(i32 7, float %10058)  ; Saturate(value)
  %10060 = select i1 %10055, float 0.000000e+00, float %10059
  %10061 = fmul fast float %10052, %10060
  %10062 = fmul fast float %10053, %10060
  %10063 = fmul fast float %10054, %10060
  br label %10064

; <label>:10064                                   ; preds = %10045, %10036
  %10065 = phi float [ 0.000000e+00, %10036 ], [ %10061, %10045 ]
  %10066 = phi float [ 0.000000e+00, %10036 ], [ %10062, %10045 ]
  %10067 = phi float [ 0.000000e+00, %10036 ], [ %10063, %10045 ]
  %10068 = fmul fast float %10065, %8642
  %10069 = fmul fast float %10066, %8642
  %10070 = fmul fast float %10067, %8642
  %10071 = fmul fast float %10038, %9700
  %10072 = call float @dx.op.dot3.f32(i32 55, float %10038, float %10038, float %10038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10073 = call float @dx.op.dot3.f32(i32 55, float %10068, float %10069, float %10070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10074 = select i1 %232, float %10072, float %10038
  %10075 = select i1 %232, float 1.000000e+00, float %10038
  %10076 = select i1 %232, float %10073, float %10068
  %10077 = select i1 %232, float 0.000000e+00, float %10069
  %10078 = select i1 %232, float 0.000000e+00, float %10070
  %10079 = fmul fast float %10074, %9712
  %10080 = fmul fast float %10074, %9713
  %10081 = fmul fast float %10075, %9714
  %10082 = fadd fast float %10079, %10076
  %10083 = fadd fast float %10080, %10077
  %10084 = fadd fast float %10078, %10081
  %10085 = fmul fast float %10074, %9715
  %10086 = fmul fast float %10074, %9716
  %10087 = fmul fast float %10075, %9717
  br label %10088

; <label>:10088                                   ; preds = %10064, %9721, %9690, %8922
  %10089 = phi float [ %8927, %8922 ], [ %9712, %9690 ], [ %10082, %10064 ], [ %9712, %9721 ]
  %10090 = phi float [ %8928, %8922 ], [ %9713, %9690 ], [ %10083, %10064 ], [ %9713, %9721 ]
  %10091 = phi float [ %8929, %8922 ], [ %9714, %9690 ], [ %10084, %10064 ], [ %9714, %9721 ]
  %10092 = phi float [ %8930, %8922 ], [ %9715, %9690 ], [ %10085, %10064 ], [ %9715, %9721 ]
  %10093 = phi float [ %8931, %8922 ], [ %9716, %9690 ], [ %10086, %10064 ], [ %9716, %9721 ]
  %10094 = phi float [ %8932, %8922 ], [ %9717, %9690 ], [ %10087, %10064 ], [ %9717, %9721 ]
  %10095 = phi float [ %8933, %8922 ], [ %9700, %9690 ], [ %10071, %10064 ], [ %9700, %9721 ]
  %10096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %57, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %10097 = extractvalue %dx.types.CBufRet.f32 %10096, 2
  %10098 = extractvalue %dx.types.CBufRet.f32 %10096, 3
  %10099 = fmul fast float %10097, %111
  %10100 = fmul fast float %10098, %112
  %10101 = call float @dx.op.unary.f32(i32 7, float %10099)  ; Saturate(value)
  %10102 = call float @dx.op.unary.f32(i32 7, float %10100)  ; Saturate(value)
  %10103 = select i1 %8664, i32 2, i32 0
  %10104 = or i32 %10103, 1
  %10105 = uitofp i32 %10104 to float
  %10106 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10101, float %10102, float %10105, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10107 = extractvalue %dx.types.ResRet.f32 %10106, 0
  %10108 = extractvalue %dx.types.ResRet.f32 %10106, 1
  %10109 = extractvalue %dx.types.ResRet.f32 %10106, 2
  %10110 = extractvalue %dx.types.ResRet.f32 %10106, 3
  %10111 = add nuw nsw i32 %10103, 2
  %10112 = uitofp i32 %10111 to float
  %10113 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %54, float %10101, float %10102, float %10112, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10114 = extractvalue %dx.types.ResRet.f32 %10113, 0
  %10115 = extractvalue %dx.types.ResRet.f32 %10113, 1
  %10116 = extractvalue %dx.types.ResRet.f32 %10113, 2
  %10117 = extractvalue %dx.types.ResRet.f32 %10113, 3
  %10118 = call float @dx.op.binary.f32(i32 35, float %10108, float %10109)  ; FMax(a,b)
  %10119 = call float @dx.op.binary.f32(i32 35, float %10107, float %10118)  ; FMax(a,b)
  %10120 = call float @dx.op.binary.f32(i32 35, float %10119, float %10110)  ; FMax(a,b)
  %10121 = call float @dx.op.binary.f32(i32 36, float %10115, float %10116)  ; FMin(a,b)
  %10122 = call float @dx.op.binary.f32(i32 36, float %10114, float %10121)  ; FMin(a,b)
  %10123 = call float @dx.op.binary.f32(i32 36, float %10122, float %10117)  ; FMin(a,b)
  %10124 = fmul fast float %10120, 2.550000e+02
  %10125 = fadd fast float %10124, 0x3F70101020000000
  %10126 = fptoui float %10125 to i32
  %10127 = fmul fast float %10123, 2.550000e+02
  %10128 = fadd fast float %10127, 0x3F70101020000000
  %10129 = fptoui float %10128 to i32
  %10130 = icmp ult i32 %10126, %10129
  br i1 %10130, label %10131, label %10300

; <label>:10131                                   ; preds = %10088
  %10132 = fcmp fast ogt float %98, 9.843750e-01
  %10133 = fadd fast float %8926, -4.000000e+00
  %10134 = select i1 %10132, float -4.000000e+00, float %10133
  %10135 = call float @dx.op.binary.f32(i32 35, float %10134, float 0.000000e+00)  ; FMax(a,b)
  %10136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10137 = extractvalue %dx.types.CBufRet.f32 %10136, 0
  %10138 = fadd fast float %10137, %10135
  %10139 = extractvalue %dx.types.CBufRet.f32 %10136, 2
  %10140 = fmul fast float %10138, %10139
  %10141 = call float @dx.op.unary.f32(i32 23, float %10140)  ; Log(value)
  %10142 = extractvalue %dx.types.CBufRet.f32 %10136, 3
  %10143 = fmul fast float %10142, %10141
  %10144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10145 = extractvalue %dx.types.CBufRet.f32 %10144, 2
  %10146 = fmul fast float %10143, %10145
  %10147 = call float @dx.op.unary.f32(i32 7, float %10146)  ; Saturate(value)
  %10148 = uitofp i32 %10126 to float
  %10149 = uitofp i32 %10129 to float
  %10150 = fadd fast float %10148, 5.000000e-01
  %10151 = fadd fast float %10149, 5.000000e-01
  %10152 = fmul fast float %10145, %10150
  %10153 = fmul fast float %10145, %10151
  %10154 = fadd fast float %10152, 0x3F0FFB4800000000
  %10155 = fadd fast float %10153, 0xBF0FFB4800000000
  %10156 = call float @dx.op.binary.f32(i32 35, float %10147, float %10154)  ; FMax(a,b)
  %10157 = call float @dx.op.binary.f32(i32 36, float %10156, float %10155)  ; FMin(a,b)
  %10158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10159 = extractvalue %dx.types.CBufRet.f32 %10158, 1
  %10160 = extractvalue %dx.types.CBufRet.f32 %10158, 2
  %10161 = extractvalue %dx.types.CBufRet.f32 %10158, 0
  %10162 = select i1 %8664, float %10161, float 0.000000e+00
  %10163 = fmul fast float %10159, %10157
  %10164 = fadd fast float %10162, %10163
  %10165 = fadd fast float %10162, %10160
  %10166 = fsub fast float %10159, %10160
  %10167 = fadd fast float %10166, %10162
  %10168 = call float @dx.op.binary.f32(i32 35, float %10164, float %10165)  ; FMax(a,b)
  %10169 = call float @dx.op.binary.f32(i32 36, float %10168, float %10167)  ; FMin(a,b)
  %10170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %52, float %10101, float %10102, float %10169, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10171 = extractvalue %dx.types.ResRet.f32 %10170, 0
  %10172 = extractvalue %dx.types.ResRet.f32 %10170, 1
  %10173 = extractvalue %dx.types.ResRet.f32 %10170, 2
  %10174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10175 = extractvalue %dx.types.CBufRet.i32 %10174, 0
  %10176 = extractvalue %dx.types.CBufRet.i32 %10174, 1
  %10177 = uitofp i32 %10175 to float
  %10178 = uitofp i32 %10176 to float
  %10179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10180 = extractvalue %dx.types.CBufRet.f32 %10179, 0
  %10181 = extractvalue %dx.types.CBufRet.f32 %10179, 1
  %10182 = fmul fast float %10177, %10101
  %10183 = fmul fast float %10178, %10102
  %10184 = fadd fast float %10182, -5.000000e-01
  %10185 = fadd fast float %10183, -5.000000e-01
  %10186 = call float @dx.op.unary.f32(i32 22, float %10184)  ; Frc(value)
  %10187 = call float @dx.op.unary.f32(i32 22, float %10185)  ; Frc(value)
  %10188 = fmul fast float %10186, %10186
  %10189 = fmul fast float %10188, %10186
  %10190 = fsub fast float 3.000000e+00, %10186
  %10191 = fmul fast float %10188, %10190
  %10192 = fmul fast float %10186, 3.000000e+00
  %10193 = fmul fast float %10189, 3.000000e+00
  %10194 = fmul fast float %10188, 6.000000e+00
  %10195 = fsub fast float %10193, %10194
  %10196 = fadd fast float %10195, 4.000000e+00
  %10197 = fmul fast float %10196, 0x3FC5555560000000
  %10198 = fmul fast float %10189, -3.000000e+00
  %10199 = fadd fast float %10188, %10186
  %10200 = fmul fast float %10199, 3.000000e+00
  %10201 = fadd fast float %10198, 1.000000e+00
  %10202 = fadd fast float %10201, %10200
  %10203 = fmul fast float %10189, 0x3FC5555560000000
  %10204 = fmul fast float %10187, %10187
  %10205 = fmul fast float %10204, %10187
  %10206 = fsub fast float 3.000000e+00, %10187
  %10207 = fmul fast float %10204, %10206
  %10208 = fmul fast float %10187, 3.000000e+00
  %10209 = fmul fast float %10205, 3.000000e+00
  %10210 = fmul fast float %10204, 6.000000e+00
  %10211 = fsub fast float %10209, %10210
  %10212 = fadd fast float %10211, 4.000000e+00
  %10213 = fmul fast float %10212, 0x3FC5555560000000
  %10214 = fmul fast float %10205, -3.000000e+00
  %10215 = fadd fast float %10204, %10187
  %10216 = fmul fast float %10215, 3.000000e+00
  %10217 = fadd fast float %10214, 1.000000e+00
  %10218 = fadd fast float %10217, %10216
  %10219 = fmul fast float %10205, 0x3FC5555560000000
  %10220 = fadd fast float %10186, 1.000000e+00
  %10221 = fsub fast float 1.000000e+00, %10192
  %10222 = fadd fast float %10221, %10191
  %10223 = fadd fast float %10222, %10196
  %10224 = fmul fast float %10223, 0x3FC5555560000000
  %10225 = fdiv fast float %10197, %10224
  %10226 = fsub fast float %10220, %10225
  %10227 = fsub fast float 1.000000e+00, %10186
  %10228 = fadd fast float %10202, %10189
  %10229 = fmul fast float %10228, 0x3FC5555560000000
  %10230 = fdiv fast float %10203, %10229
  %10231 = fadd fast float %10227, %10230
  %10232 = fadd fast float %10187, 1.000000e+00
  %10233 = fsub fast float 1.000000e+00, %10208
  %10234 = fadd fast float %10233, %10207
  %10235 = fadd fast float %10234, %10212
  %10236 = fmul fast float %10235, 0x3FC5555560000000
  %10237 = fdiv fast float %10213, %10236
  %10238 = fsub fast float %10232, %10237
  %10239 = fsub fast float 1.000000e+00, %10187
  %10240 = fadd fast float %10218, %10205
  %10241 = fmul fast float %10240, 0x3FC5555560000000
  %10242 = fdiv fast float %10219, %10241
  %10243 = fadd fast float %10242, %10239
  %10244 = fmul fast float %10226, %10180
  %10245 = fsub fast float %10101, %10244
  %10246 = fmul fast float %10231, %10180
  %10247 = fadd fast float %10246, %10101
  %10248 = fmul fast float %10243, %10181
  %10249 = fadd fast float %10248, %10102
  %10250 = fmul fast float %10238, %10181
  %10251 = fsub fast float %10102, %10250
  %10252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10245, float %10251, float %10169, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10253 = extractvalue %dx.types.ResRet.f32 %10252, 0
  %10254 = extractvalue %dx.types.ResRet.f32 %10252, 1
  %10255 = extractvalue %dx.types.ResRet.f32 %10252, 2
  %10256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10247, float %10251, float %10169, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10257 = extractvalue %dx.types.ResRet.f32 %10256, 0
  %10258 = extractvalue %dx.types.ResRet.f32 %10256, 1
  %10259 = extractvalue %dx.types.ResRet.f32 %10256, 2
  %10260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10245, float %10249, float %10169, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10261 = extractvalue %dx.types.ResRet.f32 %10260, 0
  %10262 = extractvalue %dx.types.ResRet.f32 %10260, 1
  %10263 = extractvalue %dx.types.ResRet.f32 %10260, 2
  %10264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %52, float %10247, float %10249, float %10169, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10265 = extractvalue %dx.types.ResRet.f32 %10264, 0
  %10266 = extractvalue %dx.types.ResRet.f32 %10264, 1
  %10267 = extractvalue %dx.types.ResRet.f32 %10264, 2
  %10268 = fsub fast float %10261, %10253
  %10269 = fsub fast float %10262, %10254
  %10270 = fsub fast float %10263, %10255
  %10271 = fmul fast float %10268, %10241
  %10272 = fmul fast float %10269, %10241
  %10273 = fmul fast float %10270, %10241
  %10274 = fadd fast float %10271, %10253
  %10275 = fadd fast float %10272, %10254
  %10276 = fadd fast float %10273, %10255
  %10277 = fsub fast float %10265, %10257
  %10278 = fsub fast float %10266, %10258
  %10279 = fsub fast float %10267, %10259
  %10280 = fmul fast float %10277, %10241
  %10281 = fmul fast float %10278, %10241
  %10282 = fmul fast float %10279, %10241
  %10283 = fsub fast float %10257, %10274
  %10284 = fadd fast float %10283, %10280
  %10285 = fsub fast float %10258, %10275
  %10286 = fadd fast float %10285, %10281
  %10287 = fsub fast float %10259, %10276
  %10288 = fadd fast float %10287, %10282
  %10289 = fmul fast float %10284, %10229
  %10290 = fmul fast float %10286, %10229
  %10291 = fmul fast float %10288, %10229
  %10292 = fadd fast float %10289, %10274
  %10293 = fadd fast float %10290, %10275
  %10294 = fadd fast float %10291, %10276
  %10295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10296 = extractvalue %dx.types.CBufRet.f32 %10295, 1
  %10297 = fmul fast float %10292, %10296
  %10298 = fmul fast float %10293, %10296
  %10299 = fmul fast float %10294, %10296
  br label %10300

; <label>:10300                                   ; preds = %10131, %10088
  %10301 = phi float [ %10171, %10131 ], [ 1.000000e+00, %10088 ]
  %10302 = phi float [ %10172, %10131 ], [ 1.000000e+00, %10088 ]
  %10303 = phi float [ %10173, %10131 ], [ 1.000000e+00, %10088 ]
  %10304 = phi float [ %10297, %10131 ], [ 0.000000e+00, %10088 ]
  %10305 = phi float [ %10298, %10131 ], [ 0.000000e+00, %10088 ]
  %10306 = phi float [ %10299, %10131 ], [ 0.000000e+00, %10088 ]
  %10307 = fmul fast float %10304, %8642
  %10308 = fmul fast float %10305, %8642
  %10309 = fmul fast float %10306, %8642
  %10310 = fmul fast float %10301, %10095
  %10311 = call float @dx.op.dot3.f32(i32 55, float %10301, float %10302, float %10303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10312 = call float @dx.op.dot3.f32(i32 55, float %10307, float %10308, float %10309, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10313 = select i1 %232, float %10311, float %10301
  %10314 = select i1 %232, float %10311, float %10302
  %10315 = select i1 %232, float 1.000000e+00, float %10303
  %10316 = select i1 %232, float %10312, float %10307
  %10317 = select i1 %232, float 0.000000e+00, float %10308
  %10318 = select i1 %232, float 0.000000e+00, float %10309
  %10319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %58, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10320 = extractvalue %dx.types.CBufRet.i32 %10319, 3
  %10321 = and i32 %10320, 3
  %10322 = icmp ne i32 %10321, 0
  %10323 = and i32 %10320, 4
  %10324 = icmp ne i32 %10323, 0
  %10325 = and i1 %10322, %10324
  %10326 = and i1 %232, %10325
  br i1 %10326, label %10327, label %10333

; <label>:10327                                   ; preds = %10300
  %10328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10329 = extractvalue %dx.types.CBufRet.f32 %10328, 1
  %10330 = fadd fast float %10310, -1.000000e+00
  %10331 = fmul fast float %10329, %10330
  %10332 = fadd fast float %10331, 1.000000e+00
  br label %10333

; <label>:10333                                   ; preds = %10327, %10300
  %10334 = phi float [ %10332, %10327 ], [ %10310, %10300 ]
  %10335 = fadd fast float %10092, %10089
  %10336 = fmul fast float %10313, %10335
  %10337 = fadd fast float %10336, %10316
  %10338 = fadd fast float %10093, %10090
  %10339 = fmul fast float %10314, %10338
  %10340 = fadd fast float %10339, %10317
  %10341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10342 = extractvalue %dx.types.CBufRet.f32 %10341, 0
  br i1 %232, label %10343, label %10367

; <label>:10343                                   ; preds = %10333
  %10344 = fadd fast float %10337, %10340
  %10345 = fmul fast float %10342, %10344
  %10346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10347 = extractvalue %dx.types.CBufRet.f32 %10346, 3
  %10348 = extractvalue %dx.types.CBufRet.f32 %8646, 1
  %10349 = fsub fast float %8651, %8645
  %10350 = fadd fast float %10349, %8652
  %10351 = fsub fast float %10350, %10348
  %10352 = extractvalue %dx.types.CBufRet.f32 %8646, 2
  %10353 = fmul fast float %10351, %10352
  %10354 = call float @dx.op.unary.f32(i32 7, float %10353)  ; Saturate(value)
  %10355 = fsub fast float %10354, %10347
  %10356 = fmul fast float %10355, %10334
  %10357 = fadd fast float %10356, %10347
  %10358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10359 = extractvalue %dx.types.CBufRet.f32 %10358, 0
  %10360 = fsub fast float %10357, %10359
  %10361 = fmul fast float %10360, 1.000000e+01
  %10362 = call float @dx.op.unary.f32(i32 7, float %10361)  ; Saturate(value)
  %10363 = fsub fast float %4746, %8642
  %10364 = fmul fast float %10362, %10363
  %10365 = fadd fast float %10364, %8642
  %10366 = fmul fast float %10365, %10357
  br label %10391

; <label>:10367                                   ; preds = %10333
  %10368 = fadd fast float %10094, %10091
  %10369 = fmul fast float %10315, %10368
  %10370 = fadd fast float %10369, %10318
  %10371 = fmul fast float %10342, %10337
  %10372 = fmul fast float %10342, %10340
  %10373 = fmul fast float %10342, %10370
  %10374 = call float @dx.op.binary.f32(i32 35, float %10372, float %10373)  ; FMax(a,b)
  %10375 = call float @dx.op.binary.f32(i32 35, float %10371, float %10374)  ; FMax(a,b)
  %10376 = call float @dx.op.binary.f32(i32 35, float %10375, float %8642)  ; FMax(a,b)
  %10377 = fcmp fast ugt float %10376, 0x3F10000000000000
  br i1 %10377, label %10379, label %10378

; <label>:10378                                   ; preds = %10367
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10379

; <label>:10379                                   ; preds = %10378, %10367
  %10380 = add i32 %62, 356
  %10381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %10380, i32 undef)  ; BufferLoad(srv,index,wot)
  %10382 = extractvalue %dx.types.ResRet.i32 %10381, 0
  %10383 = and i32 %10382, 32
  %10384 = icmp eq i32 %10383, 0
  br i1 %10384, label %10391, label %10385

; <label>:10385                                   ; preds = %10379
  %10386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %58, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10387 = extractvalue %dx.types.CBufRet.f32 %10386, 0
  %10388 = fmul fast float %10387, 0x3FE99999A0000000
  %10389 = fadd fast float %10387, %10371
  %10390 = fadd fast float %10388, %10373
  br label %10391

; <label>:10391                                   ; preds = %10385, %10379, %10343
  %10392 = phi float [ %10345, %10343 ], [ %10389, %10385 ], [ %10371, %10379 ]
  %10393 = phi float [ %10366, %10343 ], [ %10372, %10385 ], [ %10372, %10379 ]
  %10394 = phi float [ %10365, %10343 ], [ %10390, %10385 ], [ %10373, %10379 ]
  %10395 = phi float [ %10365, %10343 ], [ %8642, %10385 ], [ %8642, %10379 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10396 = call float @dx.op.binary.f32(i32 36, float %10392, float 3.225500e+04)  ; FMin(a,b)
  %10397 = call float @dx.op.binary.f32(i32 36, float %10393, float 3.225500e+04)  ; FMin(a,b)
  %10398 = call float @dx.op.binary.f32(i32 36, float %10394, float 3.225500e+04)  ; FMin(a,b)
  %10399 = call float @dx.op.binary.f32(i32 36, float %10395, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10396)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10397)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10398)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10399)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

