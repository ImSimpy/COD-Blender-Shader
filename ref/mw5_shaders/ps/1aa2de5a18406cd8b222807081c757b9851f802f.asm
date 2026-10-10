;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; SH_RED                   0   xyzw        4     NONE   float   xyzw
; SH_GREEN                 0   xyzw        5     NONE   float   xyzw
; SH_BLUE                  0   xyzw        6     NONE   float   xyzw
; SV_IsFrontFace           0   x           7    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: b8dc262b84484ee89e29bbba01b44a2c
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
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
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
;   [192 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T3             t0     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture    byte         r/o      T6     t16,space1     1
;                                   texture    byte         r/o      T7     t17,space1     1
;                                   texture    byte         r/o      T8      t3,space1     1
;                                   texture    byte         r/o      T9      t4,space1     1
;                                   texture    byte         r/o     T10      t5,space1     1
;                                   texture    byte         r/o     T11      t6,space1     1
;                                   texture     f32          2d     T12     t37,space2     1
;                                   texture     f32          2d     T13             t1     1
;                                   texture     f32          2d     T14     t58,space2     1
;                                   texture     f32          2d     T15     t59,space2     1
;                                   texture     f32          2d     T16     t60,space2     1
;                                   texture    byte         r/o     T17     t45,space1     1
;                                   texture    byte         r/o     T18     t46,space1     1
;                                   texture    byte         r/o     T19     t47,space1     1
;                                   texture    byte         r/o     T20     t48,space1     1
;                                   texture     f32          2d     T21     t57,space2     1
;                                   texture    byte         r/o     T22     t69,space1     1
;                                   texture     u32          2d     T23     t56,space2     1
;                                   texture     f32     2darray     T24     t35,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture     f32          3d     T26     t31,space2     1
;                                   texture    byte         r/o     T27     t10,space1     1
;                                   texture    byte         r/o     T28      t1,space1     1
;                                   texture     f32          1d     T29     t32,space2     1
;                                   texture     f32     2darray     T30      t8,space2     1
;                                   texture     f32          2d     T31      t2,space2     1
;                                   texture     f32          2d     T32      t3,space2     1
;                                   texture     f32          2d     T33      t4,space2     1
;                                   textureunorm_f32     2darray     T34     t80,space2     1
;                                   texture    byte         r/o     T35     t67,space1     1
;                                   texture     f32          2d     T36      t7,space2     1
;                                   texture     f32          2d     T37      t6,space2     1
;                                   texture     f32          2d     T38      t5,space2     1
;                                   texture     f32          2d     T39     t38,space2     1
;                                   texture    byte         r/o     T40     t12,space1     1
;                                   texture    byte         r/o     T41     t13,space1     1
;                                   texture     f32          1d     T42     t30,space2     1
;                                   texture     f32          3d     T43     t44,space2     1
;                                   texture     f32          3d     T44     t45,space2     1
;                                   texture     f32     2darray     T45     t47,space2     1
;                                   textureunorm_f32     2darray     T46     t85,space2     1
;                                   texture     f32          2d     T47     t83,space2     1
;                                   texture     f32          2d     T48     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 29, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 20, 24, 25, 26, 27, 28 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24, 25, 26, 27, 28 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = alloca [4 x i32], align 4
  %56 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = icmp ne i32 %56, 0
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = alloca [12 x float], align 4
  %84 = alloca [12 x float], align 4
  %85 = alloca [4 x float], align 4
  %86 = alloca [4 x float], align 4
  %87 = alloca [4 x float], align 4
  %88 = alloca [3 x float], align 4
  %89 = alloca [3 x float], align 4
  %90 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %91 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = fmul fast float %93, %79
  %95 = fmul fast float %93, %80
  %96 = select i1 %57, float 1.000000e+00, float -1.000000e+00
  %97 = fmul fast float %74, %96
  %98 = fmul fast float %75, %96
  %99 = fmul fast float %76, %96
  %100 = fmul fast float %75, %72
  %101 = fmul fast float %76, %71
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %76, %70
  %104 = fmul fast float %74, %72
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %74, %71
  %107 = fmul fast float %75, %70
  %108 = fsub fast float %106, %107
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, 2.000000e+00
  %113 = fmul fast float %112, %94
  %114 = fmul fast float %111, 2.000000e+00
  %115 = fmul fast float %114, %95
  %116 = fsub fast float 1.000000e+00, %113
  %117 = fsub fast float 1.000000e+00, %115
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %116, %119
  %123 = fmul fast float %116, %120
  %124 = fmul fast float %116, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fmul fast float %117, %126
  %130 = fmul fast float %117, %127
  %131 = fmul fast float %117, %128
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fadd fast float %129, %133
  %137 = fadd fast float %136, %122
  %138 = fadd fast float %130, %134
  %139 = fadd fast float %138, %123
  %140 = fadd fast float %131, %135
  %141 = fadd fast float %140, %124
  %142 = fmul fast float %137, %82
  %143 = fmul fast float %139, %82
  %144 = fmul fast float %141, %82
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = extractvalue %dx.types.ResRet.i32 %145, 1
  %148 = extractvalue %dx.types.ResRet.i32 %145, 2
  %149 = extractvalue %dx.types.ResRet.i32 %145, 3
  %150 = bitcast i32 %146 to float
  %151 = bitcast i32 %147 to float
  %152 = bitcast i32 %148 to float
  %153 = bitcast i32 %149 to float
  %154 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %155 = call float @dx.op.unary.f32(i32 25, float %154)  ; Rsqrt(value)
  %156 = fmul fast float %155, %97
  %157 = fmul fast float %155, %98
  %158 = fmul fast float %155, %99
  %159 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %160 = call float @dx.op.unary.f32(i32 25, float %159)  ; Rsqrt(value)
  %161 = fmul fast float %160, %142
  %162 = fmul fast float %160, %143
  %163 = fmul fast float %160, %144
  %164 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %165 = fmul fast float %164, %164
  %166 = fmul fast float %165, %152
  %167 = fadd fast float %166, %153
  %168 = call float @dx.op.unary.f32(i32 7, float %167)  ; Saturate(value)
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 3
  %171 = fmul fast float %170, %159
  %172 = fsub fast float %150, %171
  %173 = fmul fast float %172, %151
  %174 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %175 = fmul fast float %174, %168
  %176 = fmul fast float %94, 5.000000e-01
  %177 = fmul fast float %95, 5.000000e-01
  %178 = fptosi float %176 to i32
  %179 = fptosi float %177 to i32
  %180 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %178, i32 %179, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = lshr i32 %181, 18
  %183 = uitofp i32 %182 to float
  %184 = fmul fast float %183, 0x3F4C00EBA0000000
  %185 = call float @dx.op.unary.f32(i32 21, float %184)  ; Exp(value)
  %186 = fadd fast float %185, -1.000000e+00
  %187 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %188 = extractvalue %dx.types.Dimensions %187, 0
  %189 = sitofp i32 %188 to float
  %190 = extractvalue %dx.types.Dimensions %187, 1
  %191 = sitofp i32 %190 to float
  %192 = fcmp fast oge float %176, %189
  %193 = fcmp fast oge float %177, %191
  %194 = or i1 %192, %193
  %195 = select i1 %194, float 0x4197782600000000, float %186
  %196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.f32 %196, 2
  %198 = extractvalue %dx.types.CBufRet.f32 %196, 3
  %199 = fmul fast float %197, %94
  %200 = fmul fast float %198, %95
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = and i32 %202, 114688
  %204 = icmp ne i32 %203, 0
  %205 = select i1 %204, float %199, float 0.000000e+00
  %206 = select i1 %204, float %200, float 0.000000e+00
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %51, float %205, float %206, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fmul fast float %208, 2.550000e+02
  %210 = fptoui float %209 to i32
  %211 = select i1 %204, i32 %210, i32 0
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.i32 %213, 3
  %215 = and i32 %214, 3
  %216 = icmp ne i32 %215, 0
  %217 = and i32 %214, 4
  %218 = icmp ne i32 %217, 0
  %219 = and i1 %216, %218
  br i1 %219, label %220, label %231

; <label>:220                                     ; preds = %0
  %221 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %222 = fmul fast float %221, %95
  %223 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %224 = fmul fast float %223, %94
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %224, float %222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fsub fast float 1.000000e+00, %226
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 0
  %230 = fcmp fast olt float %227, %229
  br label %234

; <label>:231                                     ; preds = %0
  %232 = icmp eq i32 %217, 0
  %233 = and i1 %216, %232
  br label %234

; <label>:234                                     ; preds = %231, %220
  %235 = phi i1 [ %230, %220 ], [ %233, %231 ]
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %238 = fmul fast float %237, 0x3FE3C6EF40000000
  %239 = frem fast float %94, 2.560000e+02
  %240 = frem fast float %95, 2.560000e+02
  %241 = fptoui float %239 to i32
  %242 = fptoui float %240 to i32
  %243 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %241, i32 %242, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = extractvalue %dx.types.ResRet.f32 %243, 1
  %246 = extractvalue %dx.types.ResRet.f32 %243, 2
  %247 = fadd fast float %244, %238
  %248 = fadd fast float %245, %238
  %249 = fadd fast float %246, %238
  %250 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %251 = call float @dx.op.unary.f32(i32 22, float %248)  ; Frc(value)
  %252 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = shl i32 %254, 4
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %254, 7
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %254, 22
  %262 = shl nuw nsw i32 %261, 5
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %265, 8
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %265, 16
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = fmul fast float %286, 0x3F50624DE0000000
  %290 = fmul fast float %288, 0x3F50624DE0000000
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 2
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %302, label %295

; <label>:295                                     ; preds = %234
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = add i32 %297, 0
  %299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %299, %dx.types.Handle %91, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 3
  br label %302

; <label>:302                                     ; preds = %295, %234
  %303 = phi float [ 1.000000e+00, %234 ], [ %301, %295 ]
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = or i32 %307, %305
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %923, label %310

; <label>:310                                     ; preds = %302
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = lshr i32 %312, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = fmul fast float %314, 0x3F50624DE0000000
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = lshr i32 %317, 16
  %319 = and i32 %318, 255
  %320 = lshr i32 %317, 24
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = lshr i32 %328, 22
  %330 = shl nuw nsw i32 %329, 5
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = shl i32 %328, 4
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 7
  %336 = and i32 %335, 32752
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %340 = fmul fast float %339, 1.000000e+03
  %341 = fmul fast float %289, %340
  %342 = call float @dx.op.unary.f32(i32 22, float %341)  ; Frc(value)
  %343 = fadd fast float %342, %280
  %344 = fmul fast float %290, %340
  %345 = call float @dx.op.unary.f32(i32 22, float %344)  ; Frc(value)
  %346 = fadd fast float %345, %282
  %347 = fmul fast float %315, %340
  %348 = call float @dx.op.unary.f32(i32 22, float %347)  ; Frc(value)
  %349 = fmul fast float %348, 0x401921FB60000000
  %350 = fadd fast float %349, %331
  %351 = call float @dx.op.unary.f32(i32 13, float %350)  ; Sin(value)
  %352 = call float @dx.op.unary.f32(i32 12, float %350)  ; Cos(value)
  %353 = fsub fast float -0.000000e+00, %351
  %354 = fadd fast float %77, -5.000000e-01
  %355 = fadd fast float %78, -5.000000e-01
  %356 = fmul fast float %324, %354
  %357 = fmul fast float %326, %355
  %358 = fadd fast float %356, 5.000000e-01
  %359 = fadd fast float %357, 5.000000e-01
  %360 = fmul fast float %334, %358
  %361 = fmul fast float %337, %359
  %362 = fmul fast float %352, %360
  %363 = call float @dx.op.tertiary.f32(i32 46, float %353, float %361, float %362)  ; FMad(a,b,c)
  %364 = fmul fast float %351, %360
  %365 = call float @dx.op.tertiary.f32(i32 46, float %352, float %361, float %364)  ; FMad(a,b,c)
  %366 = fadd fast float %343, %363
  %367 = fadd fast float %346, %365
  %368 = icmp ugt i32 %319, 1
  %369 = icmp ugt i32 %317, 33554431
  %370 = or i1 %369, %368
  br i1 %370, label %371, label %395

; <label>:371                                     ; preds = %310
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = lshr i32 %373, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = fmul fast float %339, %375
  %377 = call float @dx.op.unary.f32(i32 22, float %376)  ; Frc(value)
  %378 = mul nuw nsw i32 %319, %320
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %377, %379
  %381 = call float @dx.op.unary.f32(i32 27, float %380)  ; Round_ni(value)
  %382 = fptoui float %381 to i32
  %383 = urem i32 %382, %319
  %384 = udiv i32 %382, %320
  %385 = call float @dx.op.unary.f32(i32 22, float %366)  ; Frc(value)
  %386 = call float @dx.op.unary.f32(i32 22, float %367)  ; Frc(value)
  %387 = uitofp i32 %383 to float
  %388 = uitofp i32 %384 to float
  %389 = fadd fast float %385, %387
  %390 = fadd fast float %386, %388
  %391 = uitofp i32 %319 to float
  %392 = uitofp i32 %320 to float
  %393 = fdiv fast float %389, %391
  %394 = fdiv fast float %390, %392
  br label %395

; <label>:395                                     ; preds = %371, %310
  %396 = phi float [ %393, %371 ], [ %366, %310 ]
  %397 = phi float [ %394, %371 ], [ %367, %310 ]
  %398 = and i32 %305, 256
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %444, label %400

; <label>:400                                     ; preds = %395
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 184, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = add i32 %402, 0
  %404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %404, %dx.types.Handle %91, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %406 = extractvalue %dx.types.ResRet.f32 %405, 0
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = shl i32 %408, 4
  %410 = and i32 %409, 32752
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = lshr i32 %408, 7
  %413 = and i32 %412, 32752
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = fsub fast float 1.000000e+00, %303
  %416 = call float @dx.op.binary.f32(i32 35, float %415, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %417 = bitcast float %303 to i32
  %418 = sitofp i32 %417 to float
  %419 = fadd fast float %418, 0xC1CFBF8940000000
  %420 = fmul fast float %414, %419
  %421 = fadd fast float %420, 0x41CFBF8940000000
  %422 = fptosi float %421 to i32
  %423 = bitcast i32 %422 to float
  %424 = bitcast float %416 to i32
  %425 = sitofp i32 %424 to float
  %426 = fadd fast float %425, 0xC1CFBF8940000000
  %427 = fmul fast float %426, %414
  %428 = fadd fast float %427, 0x41CFBF8940000000
  %429 = fptosi float %428 to i32
  %430 = bitcast i32 %429 to float
  %431 = fmul fast float %423, %411
  %432 = fmul fast float %430, %411
  %433 = fsub fast float %416, %431
  %434 = fadd fast float %432, %416
  %435 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %436 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %437 = fsub fast float %406, %435
  %438 = fsub fast float %436, %435
  %439 = bitcast float %438 to i32
  %440 = sub nsw i32 2129859010, %439
  %441 = bitcast i32 %440 to float
  %442 = fmul fast float %441, %437
  %443 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  br label %444

; <label>:444                                     ; preds = %400, %395
  %445 = phi float [ %443, %400 ], [ %303, %395 ]
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = and i32 %447, 128
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %465, label %450

; <label>:450                                     ; preds = %444
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = add i32 %452, 0
  %454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %455 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %454, %dx.types.Handle %91, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 524288
  %460 = icmp ne i32 %459, 0
  %461 = fcmp fast ogt float %456, 0x3FE0101020000000
  %462 = select i1 %461, float 1.000000e+00, float 0.000000e+00
  %463 = select i1 %460, float %462, float %456
  %464 = fmul fast float %463, %445
  br label %465

; <label>:465                                     ; preds = %450, %444
  %466 = phi float [ %464, %450 ], [ %445, %444 ]
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 16
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %664, label %471

; <label>:471                                     ; preds = %465
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = add i32 %475, 0
  %477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %476, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %478 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %477, %dx.types.Handle %90, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = and i32 %473, 255
  %484 = uitofp i32 %483 to float
  %485 = lshr i32 %473, 8
  %486 = and i32 %485, 255
  %487 = uitofp i32 %486 to float
  %488 = fmul fast float %482, %484
  %489 = fadd fast float %488, %487
  %490 = fmul fast float %489, 0x3F70101000000000
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 512
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %502, label %495

; <label>:495                                     ; preds = %471
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %497, 0
  %499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %499, %dx.types.Handle %91, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  br label %502

; <label>:502                                     ; preds = %495, %471
  %503 = phi float [ %501, %495 ], [ 1.000000e+00, %471 ]
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 33554432
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %611, label %508

; <label>:508                                     ; preds = %502
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 65535
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %510, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 65535
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = lshr i32 %520, 24
  %522 = uitofp i32 %521 to float
  %523 = fmul fast float %522, 0x3F70101020000000
  %524 = and i32 %520, 255
  %525 = uitofp i32 %524 to float
  %526 = fmul fast float %525, 0x3F70101020000000
  %527 = lshr i32 %520, 8
  %528 = and i32 %527, 255
  %529 = uitofp i32 %528 to float
  %530 = fmul fast float %529, 0x3F70101020000000
  %531 = lshr i32 %520, 16
  %532 = and i32 %531, 255
  %533 = uitofp i32 %532 to float
  %534 = fmul fast float %533, 0x3F70101020000000
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = lshr i32 %536, 24
  %538 = uitofp i32 %537 to float
  %539 = fmul fast float %538, 0x3F70101020000000
  %540 = and i32 %536, 255
  %541 = uitofp i32 %540 to float
  %542 = fmul fast float %541, 0x3F70101020000000
  %543 = lshr i32 %536, 8
  %544 = and i32 %543, 255
  %545 = uitofp i32 %544 to float
  %546 = fmul fast float %545, 0x3F70101020000000
  %547 = lshr i32 %536, 16
  %548 = and i32 %547, 255
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %549, 0x3F70101020000000
  %551 = bitcast float %479 to i32
  %552 = ashr i32 %551, 1
  %553 = sub nsw i32 1597463174, %552
  %554 = bitcast i32 %553 to float
  %555 = fmul fast float %479, 5.000000e-01
  %556 = fmul fast float %554, %554
  %557 = fmul fast float %556, %555
  %558 = fsub fast float 1.500000e+00, %557
  %559 = fmul fast float %554, %479
  %560 = fmul fast float %559, %558
  %561 = bitcast float %480 to i32
  %562 = ashr i32 %561, 1
  %563 = sub nsw i32 1597463174, %562
  %564 = bitcast i32 %563 to float
  %565 = fmul fast float %480, 5.000000e-01
  %566 = fmul fast float %564, %564
  %567 = fmul fast float %566, %565
  %568 = fsub fast float 1.500000e+00, %567
  %569 = fmul fast float %564, %480
  %570 = fmul fast float %569, %568
  %571 = bitcast float %481 to i32
  %572 = ashr i32 %571, 1
  %573 = sub nsw i32 1597463174, %572
  %574 = bitcast i32 %573 to float
  %575 = fmul fast float %481, 5.000000e-01
  %576 = fmul fast float %574, %574
  %577 = fmul fast float %576, %575
  %578 = fsub fast float 1.500000e+00, %577
  %579 = fmul fast float %574, %481
  %580 = fmul fast float %579, %578
  %581 = fsub fast float %560, %542
  %582 = fsub fast float %570, %546
  %583 = fsub fast float %580, %550
  %584 = fmul fast float %581, %512
  %585 = fmul fast float %582, %514
  %586 = fmul fast float %583, %518
  %587 = fadd fast float %584, %526
  %588 = fadd fast float %585, %530
  %589 = fadd fast float %586, %534
  %590 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  %591 = call float @dx.op.unary.f32(i32 7, float %588)  ; Saturate(value)
  %592 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  %593 = fmul fast float %590, %590
  %594 = fmul fast float %591, %591
  %595 = fmul fast float %592, %592
  %596 = fsub fast float %593, %479
  %597 = fsub fast float %594, %480
  %598 = fsub fast float %595, %481
  %599 = fmul fast float %596, %503
  %600 = fmul fast float %597, %503
  %601 = fmul fast float %598, %503
  %602 = fadd fast float %599, %479
  %603 = fadd fast float %600, %480
  %604 = fadd fast float %601, %481
  %605 = fadd fast float %523, %490
  %606 = fsub fast float %605, %539
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  %608 = fsub fast float %607, %490
  %609 = fmul fast float %608, %503
  %610 = fadd fast float %609, %490
  br label %664

; <label>:611                                     ; preds = %502
  %612 = and i32 %505, 134217728
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %648, label %614

; <label>:614                                     ; preds = %611
  %615 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %616 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %617 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %618 = fadd fast float %615, -5.000000e-01
  %619 = fadd fast float %616, -5.000000e-01
  %620 = fadd fast float %617, -5.000000e-01
  %621 = fmul fast float %618, %503
  %622 = fmul fast float %619, %503
  %623 = fmul fast float %620, %503
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fadd fast float %623, 5.000000e-01
  %627 = call float @dx.op.unary.f32(i32 24, float %479)  ; Sqrt(value)
  %628 = call float @dx.op.unary.f32(i32 24, float %480)  ; Sqrt(value)
  %629 = call float @dx.op.unary.f32(i32 24, float %481)  ; Sqrt(value)
  %630 = fmul fast float %624, 2.000000e+00
  %631 = fsub fast float 1.000000e+00, %630
  %632 = fmul fast float %631, %627
  %633 = fadd fast float %632, %630
  %634 = fmul fast float %633, %627
  %635 = fmul fast float %625, 2.000000e+00
  %636 = fsub fast float 1.000000e+00, %635
  %637 = fmul fast float %636, %628
  %638 = fadd fast float %637, %635
  %639 = fmul fast float %638, %628
  %640 = fmul fast float %626, 2.000000e+00
  %641 = fsub fast float 1.000000e+00, %640
  %642 = fmul fast float %641, %629
  %643 = fadd fast float %642, %640
  %644 = fmul fast float %643, %629
  %645 = fmul fast float %634, %634
  %646 = fmul fast float %639, %639
  %647 = fmul fast float %644, %644
  br label %664

; <label>:648                                     ; preds = %611
  %649 = fmul fast float %268, %268
  %650 = fmul fast float %272, %272
  %651 = fmul fast float %276, %276
  %652 = fadd fast float %649, -1.000000e+00
  %653 = fadd fast float %650, -1.000000e+00
  %654 = fadd fast float %651, -1.000000e+00
  %655 = fmul fast float %503, %652
  %656 = fmul fast float %503, %653
  %657 = fmul fast float %503, %654
  %658 = fadd fast float %655, 1.000000e+00
  %659 = fadd fast float %656, 1.000000e+00
  %660 = fadd fast float %657, 1.000000e+00
  %661 = fmul fast float %658, %479
  %662 = fmul fast float %659, %480
  %663 = fmul fast float %660, %481
  br label %664

; <label>:664                                     ; preds = %648, %614, %508, %465
  %665 = phi float [ %610, %508 ], [ %490, %614 ], [ %490, %648 ], [ 0x3FA23C0BE0000000, %465 ]
  %666 = phi float [ %602, %508 ], [ %645, %614 ], [ %661, %648 ], [ 1.000000e+00, %465 ]
  %667 = phi float [ %603, %508 ], [ %646, %614 ], [ %662, %648 ], [ 1.000000e+00, %465 ]
  %668 = phi float [ %604, %508 ], [ %647, %614 ], [ %663, %648 ], [ 1.000000e+00, %465 ]
  %669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %670 = extractvalue %dx.types.CBufRet.i32 %669, 1
  %671 = and i32 %670, 1
  %672 = icmp ne i32 %671, 0
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 32
  %676 = icmp ne i32 %675, 0
  %677 = and i1 %672, %676
  %678 = select i1 %677, float 1.000000e+00, float %666
  %679 = select i1 %677, float 0x3FD3333340000000, float %667
  %680 = select i1 %677, float 0x3FD3333340000000, float %668
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 32
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %754, label %685

; <label>:685                                     ; preds = %664
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %90, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = extractvalue %dx.types.ResRet.f32 %692, 1
  %695 = extractvalue %dx.types.ResRet.f32 %692, 2
  %696 = extractvalue %dx.types.ResRet.f32 %692, 3
  %697 = and i32 %687, 255
  %698 = uitofp i32 %697 to float
  %699 = lshr i32 %687, 8
  %700 = and i32 %699, 255
  %701 = uitofp i32 %700 to float
  %702 = lshr i32 %687, 16
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, 0x3F70101000000000
  %706 = fmul fast float %693, %698
  %707 = fadd fast float %706, %701
  %708 = fmul fast float %707, 0x3F70101000000000
  %709 = fadd fast float %694, -5.000000e-01
  %710 = fadd fast float %696, -5.000000e-01
  %711 = fmul fast float %709, %705
  %712 = fmul fast float %710, %705
  %713 = fadd fast float %711, 5.000000e-01
  %714 = fadd fast float %712, 5.000000e-01
  %715 = fmul fast float %713, 2.000000e+00
  %716 = fadd fast float %715, -1.000000e+00
  %717 = fmul fast float %714, 2.000000e+00
  %718 = fadd fast float %717, -1.000000e+00
  %719 = fadd fast float %716, %718
  %720 = fmul fast float %719, 5.000000e-01
  %721 = fsub fast float %716, %718
  %722 = fmul fast float %721, 5.000000e-01
  %723 = call float @dx.op.unary.f32(i32 6, float %720)  ; FAbs(value)
  %724 = fsub fast float 1.000000e+00, %723
  %725 = call float @dx.op.unary.f32(i32 6, float %722)  ; FAbs(value)
  %726 = fsub fast float %724, %725
  %727 = call float @dx.op.dot3.f32(i32 55, float %720, float %722, float %726, float %720, float %722, float %726)  ; Dot3(ax,ay,az,bx,by,bz)
  %728 = call float @dx.op.unary.f32(i32 25, float %727)  ; Rsqrt(value)
  %729 = fmul fast float %720, %728
  %730 = fmul fast float %722, %728
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 67108864
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %750, label %735

; <label>:735                                     ; preds = %685
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 65535
  %739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %738)  ; LegacyF16ToF32(value)
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 65535
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = lshr i32 %737, 16
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = fsub fast float %708, %745
  %747 = fmul fast float %746, %739
  %748 = fadd fast float %747, %743
  %749 = call float @dx.op.unary.f32(i32 7, float %748)  ; Saturate(value)
  br label %750

; <label>:750                                     ; preds = %735, %685
  %751 = phi float [ %749, %735 ], [ %708, %685 ]
  %752 = call float @dx.op.dot2.f32(i32 54, float %729, float %730, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %753 = call float @dx.op.dot2.f32(i32 54, float %729, float %730, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %754

; <label>:754                                     ; preds = %750, %664
  %755 = phi float [ %751, %750 ], [ 0x3FD6666660000000, %664 ]
  %756 = phi float [ %752, %750 ], [ 0.000000e+00, %664 ]
  %757 = phi float [ %753, %750 ], [ 0.000000e+00, %664 ]
  %758 = phi float [ %695, %750 ], [ 1.000000e+00, %664 ]
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = lshr i32 %760, 22
  %762 = shl nuw nsw i32 %761, 5
  %763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %762)  ; LegacyF16ToF32(value)
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = and i32 %765, 64
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %800, label %768

; <label>:768                                     ; preds = %754
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = add i32 %770, 0
  %772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 131072
  %776 = icmp eq i32 %775, 0
  %777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %772, %dx.types.Handle %90, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = fmul fast float %778, %257
  %782 = fmul fast float %779, %260
  %783 = fmul fast float %780, %263
  br i1 %776, label %790, label %784

; <label>:784                                     ; preds = %768
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = fmul fast float %786, %781
  %788 = fmul fast float %786, %782
  %789 = fmul fast float %786, %783
  br label %790

; <label>:790                                     ; preds = %784, %768
  %791 = phi float [ %787, %784 ], [ %781, %768 ]
  %792 = phi float [ %788, %784 ], [ %782, %768 ]
  %793 = phi float [ %789, %784 ], [ %783, %768 ]
  %794 = fmul fast float %791, %763
  %795 = select i1 %235, float %794, float %791
  %796 = call float @dx.op.dot3.f32(i32 55, float %795, float %792, float %793, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %797 = select i1 %235, float 0.000000e+00, float %791
  %798 = select i1 %235, float %796, float %792
  %799 = select i1 %235, float 0.000000e+00, float %793
  br label %800

; <label>:800                                     ; preds = %790, %754
  %801 = phi float [ %797, %790 ], [ 0.000000e+00, %754 ]
  %802 = phi float [ %798, %790 ], [ 0.000000e+00, %754 ]
  %803 = phi float [ %799, %790 ], [ 0.000000e+00, %754 ]
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 1024
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %836, label %808

; <label>:808                                     ; preds = %800
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 255
  %812 = uitofp i32 %811 to float
  %813 = fmul fast float %812, 0x3F70101020000000
  %814 = lshr i32 %810, 8
  %815 = and i32 %814, 255
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = lshr i32 %810, 16
  %819 = and i32 %818, 255
  %820 = uitofp i32 %819 to float
  %821 = fmul fast float %820, 0x3F70101020000000
  %822 = fmul fast float %813, %813
  %823 = fmul fast float %817, %817
  %824 = fmul fast float %821, %821
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 192, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = add i32 %826, 0
  %828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %828, %dx.types.Handle %91, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = fmul fast float %822, %830
  %834 = fmul fast float %823, %831
  %835 = fmul fast float %824, %832
  br label %836

; <label>:836                                     ; preds = %808, %800
  %837 = phi float [ %833, %808 ], [ 0.000000e+00, %800 ]
  %838 = phi float [ %834, %808 ], [ 0.000000e+00, %800 ]
  %839 = phi float [ %835, %808 ], [ 0.000000e+00, %800 ]
  %840 = fcmp fast ogt float %837, 0.000000e+00
  %841 = fcmp fast ogt float %838, 0.000000e+00
  %842 = fcmp fast ogt float %839, 0.000000e+00
  %843 = call float @dx.op.unary.f32(i32 23, float %837)  ; Log(value)
  %844 = call float @dx.op.unary.f32(i32 23, float %838)  ; Log(value)
  %845 = call float @dx.op.unary.f32(i32 23, float %839)  ; Log(value)
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = lshr i32 %847, 7
  %849 = and i32 %848, 32752
  %850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %849)  ; LegacyF16ToF32(value)
  %851 = fmul fast float %843, 0xBFE62E4300000000
  %852 = fmul fast float %851, %850
  %853 = fmul fast float %844, 0xBFE62E4300000000
  %854 = fmul fast float %853, %850
  %855 = fmul fast float %845, 0xBFE62E4300000000
  %856 = fmul fast float %855, %850
  %857 = select i1 %840, float %852, float 1.270000e+02
  %858 = select i1 %841, float %854, float 1.270000e+02
  %859 = select i1 %842, float %856, float 1.270000e+02
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 10240
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %906, label %864

; <label>:864                                     ; preds = %836
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = add i32 %866, 0
  %868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %867, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %868, %dx.types.Handle %91, float %396, float %397, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 1
  %871 = extractvalue %dx.types.ResRet.f32 %869, 3
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 1048576
  %875 = icmp ne i32 %874, 0
  %876 = and i32 %873, 8192
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %892, label %878

; <label>:878                                     ; preds = %864
  %879 = extractvalue %dx.types.ResRet.f32 %869, 2
  %880 = select i1 %875, float %879, float %870
  %881 = extractvalue %dx.types.ResRet.f32 %869, 0
  %882 = select i1 %875, float %881, float %870
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = lshr i32 %884, 16
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = fmul fast float %887, 0x3F80101020000000
  %889 = fmul fast float %888, %882
  %890 = fmul fast float %888, %870
  %891 = fmul fast float %888, %880
  br label %892

; <label>:892                                     ; preds = %878, %864
  %893 = phi float [ %889, %878 ], [ 0.000000e+00, %864 ]
  %894 = phi float [ %890, %878 ], [ 0.000000e+00, %864 ]
  %895 = phi float [ %891, %878 ], [ 0.000000e+00, %864 ]
  %896 = and i32 %873, 2048
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %906, label %898

; <label>:898                                     ; preds = %892
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = shl i32 %900, 4
  %902 = and i32 %901, 32752
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = fmul fast float %903, %871
  %905 = call float @dx.op.binary.f32(i32 35, float %904, float 0x3F70101020000000)  ; FMax(a,b)
  br label %906

; <label>:906                                     ; preds = %898, %892, %836
  %907 = phi float [ %893, %898 ], [ %893, %892 ], [ 0.000000e+00, %836 ]
  %908 = phi float [ %894, %898 ], [ %894, %892 ], [ 0.000000e+00, %836 ]
  %909 = phi float [ %895, %898 ], [ %895, %892 ], [ 0.000000e+00, %836 ]
  %910 = phi float [ %905, %898 ], [ 0x3F70101020000000, %892 ], [ 0x3F70101020000000, %836 ]
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 255
  %914 = uitofp i32 %913 to float
  %915 = lshr i32 %912, 8
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = fmul fast float %917, %918
  %920 = fadd fast float %919, %914
  %921 = fmul fast float %920, 0x3F70101020000000
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  br label %923

; <label>:923                                     ; preds = %906, %302
  %924 = phi float [ 0.000000e+00, %302 ], [ %756, %906 ]
  %925 = phi float [ 0.000000e+00, %302 ], [ %757, %906 ]
  %926 = phi float [ 0.000000e+00, %302 ], [ %857, %906 ]
  %927 = phi float [ 0.000000e+00, %302 ], [ %858, %906 ]
  %928 = phi float [ 0.000000e+00, %302 ], [ %859, %906 ]
  %929 = phi float [ 0.000000e+00, %302 ], [ %678, %906 ]
  %930 = phi float [ 0.000000e+00, %302 ], [ %679, %906 ]
  %931 = phi float [ 0.000000e+00, %302 ], [ %680, %906 ]
  %932 = phi float [ 0.000000e+00, %302 ], [ %801, %906 ]
  %933 = phi float [ 0.000000e+00, %302 ], [ %802, %906 ]
  %934 = phi float [ 0.000000e+00, %302 ], [ %803, %906 ]
  %935 = phi float [ 0.000000e+00, %302 ], [ %907, %906 ]
  %936 = phi float [ 0.000000e+00, %302 ], [ %908, %906 ]
  %937 = phi float [ 0.000000e+00, %302 ], [ %909, %906 ]
  %938 = phi float [ 0.000000e+00, %302 ], [ %665, %906 ]
  %939 = phi float [ 0.000000e+00, %302 ], [ %466, %906 ]
  %940 = phi float [ 0.000000e+00, %302 ], [ %755, %906 ]
  %941 = phi float [ 0.000000e+00, %302 ], [ %758, %906 ]
  %942 = phi float [ 0.000000e+00, %302 ], [ %910, %906 ]
  %943 = phi float [ 0.000000e+00, %302 ], [ %922, %906 ]
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %946 = call float @dx.op.dot2.f32(i32 54, float %924, float %925, float %924, float %925)  ; Dot2(ax,ay,bx,by)
  %947 = fmul fast float %946, 0x3FE3333340000000
  %948 = fsub fast float 1.000000e+00, %947
  %949 = call float @dx.op.dot3.f32(i32 55, float %924, float %925, float %948, float %924, float %925, float %948)  ; Dot3(ax,ay,az,bx,by,bz)
  %950 = call float @dx.op.unary.f32(i32 25, float %949)  ; Rsqrt(value)
  %951 = fmul fast float %950, %924
  %952 = fmul fast float %950, %925
  %953 = fmul fast float %948, %950
  %954 = fmul fast float %953, %97
  %955 = fmul fast float %953, %98
  %956 = fmul fast float %953, %99
  %957 = fmul fast float %951, %70
  %958 = fmul fast float %951, %71
  %959 = fmul fast float %951, %72
  %960 = fmul fast float %102, %73
  %961 = fmul fast float %960, %952
  %962 = fmul fast float %105, %73
  %963 = fmul fast float %962, %952
  %964 = fmul fast float %108, %73
  %965 = fmul fast float %964, %952
  %966 = fadd fast float %961, %957
  %967 = fmul fast float %966, %96
  %968 = fadd fast float %967, %954
  %969 = fadd fast float %963, %958
  %970 = fmul fast float %969, %96
  %971 = fadd fast float %970, %955
  %972 = fadd fast float %965, %959
  %973 = fmul fast float %972, %96
  %974 = fadd fast float %973, %956
  %975 = call float @dx.op.dot3.f32(i32 55, float %968, float %971, float %974, float %968, float %971, float %974)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = call float @dx.op.unary.f32(i32 25, float %975)  ; Rsqrt(value)
  %977 = fmul fast float %968, %976
  %978 = fmul fast float %971, %976
  %979 = fmul fast float %974, %976
  %980 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %981 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %982 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %983 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %984 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %985 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %986 = fadd fast float %980, %142
  %987 = fadd fast float %981, %143
  %988 = fadd fast float %982, %144
  %989 = fadd fast float %983, %142
  %990 = fadd fast float %984, %143
  %991 = fadd fast float %985, %144
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %999 = fmul fast float %993, %94
  %1000 = fmul fast float %999, %997
  %1001 = fmul fast float %994, %95
  %1002 = fmul fast float %1001, %998
  %1003 = fptoui float %1000 to i32
  %1004 = fptoui float %1002 to i32
  %1005 = fadd fast float %993, -1.000000e+00
  %1006 = fadd fast float %994, -1.000000e+00
  %1007 = fptoui float %1005 to i32
  %1008 = fptoui float %1006 to i32
  %1009 = call i32 @dx.op.binary.i32(i32 40, i32 %1003, i32 %1007)  ; UMin(a,b)
  %1010 = call i32 @dx.op.binary.i32(i32 40, i32 %1004, i32 %1008)  ; UMin(a,b)
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 3
  %1014 = fmul fast float %1012, %82
  %1015 = fsub fast float %1014, %1013
  %1016 = fadd fast float %995, -1.000000e+00
  %1017 = call float @dx.op.binary.f32(i32 36, float %1015, float %1016)  ; FMin(a,b)
  %1018 = fptoui float %1017 to i32
  %1019 = fptoui float %993 to i32
  %1020 = fptoui float %994 to i32
  %1021 = mul i32 %1018, %1020
  %1022 = add i32 %1021, %1010
  %1023 = mul i32 %1022, %1019
  %1024 = add i32 %1023, %1009
  %1025 = shl i32 %1024, 2
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = and i32 %1027, 1023
  %1029 = lshr i32 %1027, 10
  %1030 = icmp eq i32 %1028, 0
  br i1 %1030, label %1534, label %1031

; <label>:1031                                    ; preds = %923
  %1032 = and i32 %1027, 1023
  br label %1033

; <label>:1033                                    ; preds = %1165, %1031
  %1034 = phi float [ %1166, %1165 ], [ 0.000000e+00, %1031 ]
  %1035 = phi float [ %1167, %1165 ], [ %945, %1031 ]
  %1036 = phi float [ %1168, %1165 ], [ %943, %1031 ]
  %1037 = phi float [ %1169, %1165 ], [ %926, %1031 ]
  %1038 = phi float [ %1170, %1165 ], [ %927, %1031 ]
  %1039 = phi float [ %1171, %1165 ], [ %928, %1031 ]
  %1040 = phi float [ %1172, %1165 ], [ 0.000000e+00, %1031 ]
  %1041 = phi float [ %1173, %1165 ], [ 0.000000e+00, %1031 ]
  %1042 = phi float [ %1174, %1165 ], [ %935, %1031 ]
  %1043 = phi float [ %1175, %1165 ], [ %936, %1031 ]
  %1044 = phi float [ %1176, %1165 ], [ %937, %1031 ]
  %1045 = phi float [ %1177, %1165 ], [ %932, %1031 ]
  %1046 = phi float [ %1178, %1165 ], [ %933, %1031 ]
  %1047 = phi float [ %1179, %1165 ], [ %934, %1031 ]
  %1048 = phi float [ %1180, %1165 ], [ %977, %1031 ]
  %1049 = phi float [ %1181, %1165 ], [ %978, %1031 ]
  %1050 = phi float [ %1182, %1165 ], [ %979, %1031 ]
  %1051 = phi float [ %1183, %1165 ], [ %941, %1031 ]
  %1052 = phi float [ %1184, %1165 ], [ %940, %1031 ]
  %1053 = phi float [ %1185, %1165 ], [ 0.000000e+00, %1031 ]
  %1054 = phi float [ %1186, %1165 ], [ %938, %1031 ]
  %1055 = phi float [ %1187, %1165 ], [ %929, %1031 ]
  %1056 = phi float [ %1188, %1165 ], [ %930, %1031 ]
  %1057 = phi float [ %1189, %1165 ], [ %931, %1031 ]
  %1058 = phi i32 [ %1115, %1165 ], [ 0, %1031 ]
  %1059 = add nuw nsw i32 %1058, %1029
  %1060 = shl i32 %1059, 2
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = shl i32 %1062, 8
  %1064 = or i32 %1063, 48
  %1065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = extractvalue %dx.types.ResRet.f32 %1065, 3
  %1070 = or i32 %1063, 64
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.i32 %1071, 1
  %1074 = or i32 %1063, 80
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 3
  %1078 = or i32 %1063, 96
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = extractvalue %dx.types.ResRet.f32 %1079, 3
  %1084 = or i32 %1063, 112
  %1085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1087 = or i32 %1063, 128
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1093 = or i32 %1063, 144
  %1094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = extractvalue %dx.types.ResRet.f32 %1094, 1
  %1097 = extractvalue %dx.types.ResRet.f32 %1094, 2
  %1098 = extractvalue %dx.types.ResRet.f32 %1094, 3
  %1099 = or i32 %1063, 160
  %1100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.ResRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.ResRet.f32 %1100, 2
  %1104 = extractvalue %dx.types.ResRet.f32 %1100, 3
  %1105 = or i32 %1063, 192
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = or i32 %1063, 208
  %1109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.f32 %1109, 0
  %1111 = or i32 %1063, 248
  %1112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = add nuw nsw i32 %1058, 1
  %1116 = bitcast float %1069 to i32
  %1117 = and i32 %1116, 512
  %1118 = icmp eq i32 %1117, 0
  %1119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = extractvalue %dx.types.ResRet.f32 %1119, 3
  %1124 = call float @dx.op.dot4.f32(i32 56, float %1120, float %1121, float %1122, float %1123, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1125 = or i32 %1063, 16
  %1126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = extractvalue %dx.types.ResRet.f32 %1126, 3
  %1131 = call float @dx.op.dot4.f32(i32 56, float %1127, float %1128, float %1129, float %1130, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1132 = or i32 %1063, 32
  %1133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = extractvalue %dx.types.ResRet.f32 %1133, 3
  %1138 = call float @dx.op.dot4.f32(i32 56, float %1134, float %1135, float %1136, float %1137, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1139 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1140 = call float @dx.op.unary.f32(i32 6, float %1139)  ; FAbs(value)
  %1141 = call float @dx.op.unary.f32(i32 27, float %1131)  ; Round_ni(value)
  %1142 = call float @dx.op.unary.f32(i32 6, float %1141)  ; FAbs(value)
  %1143 = call float @dx.op.unary.f32(i32 6, float %1138)  ; FAbs(value)
  %1144 = call float @dx.op.unary.f32(i32 27, float %1143)  ; Round_ni(value)
  %1145 = fadd fast float %1142, %1140
  %1146 = fadd fast float %1145, %1144
  %1147 = fcmp fast oeq float %1146, 0.000000e+00
  %1148 = call float @dx.op.dot4.f32(i32 56, float %1120, float %1121, float %1122, float %1123, float %986, float %987, float %988, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1149 = call float @dx.op.dot4.f32(i32 56, float %1127, float %1128, float %1129, float %1130, float %986, float %987, float %988, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1150 = call float @dx.op.dot4.f32(i32 56, float %1120, float %1121, float %1122, float %1123, float %989, float %990, float %991, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1151 = call float @dx.op.dot4.f32(i32 56, float %1127, float %1128, float %1129, float %1130, float %989, float %990, float %991, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1152 = fsub fast float %1148, %1124
  %1153 = fsub fast float %1150, %1124
  %1154 = fsub fast float %1149, %1131
  %1155 = fsub fast float %1151, %1131
  %1156 = call float @dx.op.dot3.f32(i32 55, float %1066, float %1067, float %1068, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 2
  %1159 = fadd fast float %1158, %1156
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1157, 0
  %1162 = fcmp fast ogt float %1160, %1161
  %1163 = and i1 %1147, %1162
  %1164 = and i1 %1118, %1163
  br i1 %1164, label %1191, label %1165

; <label>:1165                                    ; preds = %1520, %1272, %1191, %1033
  %1166 = phi float [ %1034, %1191 ], [ %1275, %1272 ], [ %1275, %1520 ], [ %1034, %1033 ]
  %1167 = phi float [ %1035, %1191 ], [ %1035, %1272 ], [ %1496, %1520 ], [ %1035, %1033 ]
  %1168 = phi float [ %1036, %1191 ], [ %1036, %1272 ], [ %1494, %1520 ], [ %1036, %1033 ]
  %1169 = phi float [ %1037, %1191 ], [ %1037, %1272 ], [ %1472, %1520 ], [ %1037, %1033 ]
  %1170 = phi float [ %1038, %1191 ], [ %1038, %1272 ], [ %1473, %1520 ], [ %1038, %1033 ]
  %1171 = phi float [ %1039, %1191 ], [ %1039, %1272 ], [ %1474, %1520 ], [ %1039, %1033 ]
  %1172 = phi float [ %1040, %1191 ], [ %1040, %1272 ], [ %1399, %1520 ], [ %1040, %1033 ]
  %1173 = phi float [ %1041, %1191 ], [ %1041, %1272 ], [ %1397, %1520 ], [ %1041, %1033 ]
  %1174 = phi float [ %1042, %1191 ], [ %1042, %1272 ], [ %1442, %1520 ], [ %1042, %1033 ]
  %1175 = phi float [ %1043, %1191 ], [ %1043, %1272 ], [ %1443, %1520 ], [ %1043, %1033 ]
  %1176 = phi float [ %1044, %1191 ], [ %1044, %1272 ], [ %1444, %1520 ], [ %1044, %1033 ]
  %1177 = phi float [ %1045, %1191 ], [ %1045, %1272 ], [ %1530, %1520 ], [ %1045, %1033 ]
  %1178 = phi float [ %1046, %1191 ], [ %1046, %1272 ], [ %1531, %1520 ], [ %1046, %1033 ]
  %1179 = phi float [ %1047, %1191 ], [ %1047, %1272 ], [ %1532, %1520 ], [ %1047, %1033 ]
  %1180 = phi float [ %1048, %1191 ], [ %1048, %1272 ], [ %1378, %1520 ], [ %1048, %1033 ]
  %1181 = phi float [ %1049, %1191 ], [ %1049, %1272 ], [ %1379, %1520 ], [ %1049, %1033 ]
  %1182 = phi float [ %1050, %1191 ], [ %1050, %1272 ], [ %1380, %1520 ], [ %1050, %1033 ]
  %1183 = phi float [ %1051, %1191 ], [ %1051, %1272 ], [ %1452, %1520 ], [ %1051, %1033 ]
  %1184 = phi float [ %1052, %1191 ], [ %1052, %1272 ], [ %1449, %1520 ], [ %1052, %1033 ]
  %1185 = phi float [ %1053, %1191 ], [ %1053, %1272 ], [ %1446, %1520 ], [ %1053, %1033 ]
  %1186 = phi float [ %1054, %1191 ], [ %1054, %1272 ], [ %1395, %1520 ], [ %1054, %1033 ]
  %1187 = phi float [ %1055, %1191 ], [ %1055, %1272 ], [ %1390, %1520 ], [ %1055, %1033 ]
  %1188 = phi float [ %1056, %1191 ], [ %1056, %1272 ], [ %1391, %1520 ], [ %1056, %1033 ]
  %1189 = phi float [ %1057, %1191 ], [ %1057, %1272 ], [ %1392, %1520 ], [ %1057, %1033 ]
  %1190 = icmp eq i32 %1115, %1032
  br i1 %1190, label %1533, label %1033

; <label>:1191                                    ; preds = %1033
  %1192 = extractvalue %dx.types.ResRet.f32 %1085, 3
  %1193 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1194 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1197 = extractvalue %dx.types.ResRet.i32 %1071, 3
  %1198 = extractvalue %dx.types.ResRet.i32 %1071, 2
  %1199 = add i32 %1197, 0
  %1200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1199, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1202 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1200, %dx.types.Handle %1201, float %1124, float %1131, float undef, float undef, i32 0, i32 0, i32 undef, float %1152, float %1154, float undef, float %1153, float %1155, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  %1204 = fmul fast float %1203, %1196
  %1205 = fadd fast float %1204, %1195
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1207 = fmul fast float %1124, %1080
  %1208 = call float @dx.op.tertiary.f32(i32 46, float %1081, float %1131, float %1207)  ; FMad(a,b,c)
  %1209 = fadd fast float %1208, %1194
  %1210 = fmul fast float %1124, %1082
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1083, float %1131, float %1210)  ; FMad(a,b,c)
  %1212 = fadd fast float %1211, %1193
  %1213 = fmul fast float %1152, %1080
  %1214 = call float @dx.op.tertiary.f32(i32 46, float %1081, float %1154, float %1213)  ; FMad(a,b,c)
  %1215 = fmul fast float %1152, %1082
  %1216 = call float @dx.op.tertiary.f32(i32 46, float %1083, float %1154, float %1215)  ; FMad(a,b,c)
  %1217 = fmul fast float %1153, %1080
  %1218 = call float @dx.op.tertiary.f32(i32 46, float %1081, float %1155, float %1217)  ; FMad(a,b,c)
  %1219 = fmul fast float %1153, %1082
  %1220 = call float @dx.op.tertiary.f32(i32 46, float %1083, float %1155, float %1219)  ; FMad(a,b,c)
  %1221 = add i32 %1198, 0
  %1222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1221, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1223 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1222, %dx.types.Handle %1201, float %1209, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1214, float %1216, float undef, float %1218, float %1220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = and i32 %1116, 1024
  %1226 = icmp ne i32 %1225, 0
  %1227 = fcmp fast ogt float %1224, 0x3FE0101020000000
  %1228 = uitofp i1 %1227 to float
  %1229 = select i1 %1226, float %1228, float %1224
  %1230 = and i32 %1116, 8192
  %1231 = icmp ne i32 %1230, 0
  %1232 = select i1 %1231, float %1192, float 1.000000e+00
  %1233 = fmul fast float %1124, 2.000000e+00
  %1234 = fadd fast float %1233, -1.000000e+00
  %1235 = call float @dx.op.unary.f32(i32 6, float %1234)  ; FAbs(value)
  %1236 = fmul fast float %1235, %1113
  %1237 = fsub fast float %1236, %1113
  %1238 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1239 = fmul fast float %1131, 2.000000e+00
  %1240 = fadd fast float %1239, -1.000000e+00
  %1241 = call float @dx.op.unary.f32(i32 6, float %1240)  ; FAbs(value)
  %1242 = fmul fast float %1241, %1114
  %1243 = fsub fast float %1242, %1114
  %1244 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  %1245 = fmul fast float %1143, %1076
  %1246 = fsub fast float %1245, %1076
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fmul fast float %1206, %1232
  %1249 = fmul fast float %1248, %1203
  %1250 = fmul fast float %1249, %1238
  %1251 = fmul fast float %1250, %1229
  %1252 = fmul fast float %1251, %1244
  %1253 = fmul fast float %1252, %1247
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1257 = fsub fast float %1160, %1256
  %1258 = fmul fast float %1257, %1255
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = fmul fast float %1253, %1077
  %1261 = fadd fast float %1253, %1077
  %1262 = fmul fast float %1261, %1086
  %1263 = fsub fast float %1262, %1086
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  %1265 = and i32 %1116, 128
  %1266 = icmp ne i32 %1265, 0
  %1267 = select i1 %1266, float %1264, float %1260
  %1268 = fmul fast float %1267, %1259
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  %1271 = fcmp fast ugt float %1268, %1270
  br i1 %1271, label %1272, label %1165

; <label>:1272                                    ; preds = %1191
  %1273 = select i1 %1231, float %1268, float 0.000000e+00
  %1274 = fadd fast float %1273, %1034
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  br i1 %1231, label %1165, label %1276

; <label>:1276                                    ; preds = %1272
  %1277 = and i32 %1116, 4
  %1278 = and i32 %1116, 8
  %1279 = add i32 %1072, 0
  %1280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1279, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1282 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1280, %dx.types.Handle %1281, float %1209, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1214, float %1216, float undef, float %1218, float %1220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = extractvalue %dx.types.ResRet.f32 %1282, 3
  %1287 = bitcast float %1098 to i32
  %1288 = and i32 %1287, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = lshr i32 %1287, 8
  %1291 = and i32 %1290, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1286, %1289
  %1294 = fadd fast float %1293, %1292
  %1295 = fmul fast float %1294, 0x3F70101000000000
  %1296 = add i32 %1073, 0
  %1297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1298 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1297, %dx.types.Handle %1281, float %1209, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1214, float %1216, float undef, float %1218, float %1220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = extractvalue %dx.types.ResRet.f32 %1298, 3
  %1303 = bitcast float %1092 to i32
  %1304 = and i32 %1303, 255
  %1305 = uitofp i32 %1304 to float
  %1306 = lshr i32 %1303, 8
  %1307 = and i32 %1306, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = lshr i32 %1303, 16
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1311, 0x3F70101000000000
  %1313 = fmul fast float %1299, %1305
  %1314 = fadd fast float %1313, %1308
  %1315 = fmul fast float %1314, 0x3F70101000000000
  %1316 = fadd fast float %1300, -5.000000e-01
  %1317 = fadd fast float %1302, -5.000000e-01
  %1318 = fmul fast float %1316, %1312
  %1319 = fmul fast float %1317, %1312
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fadd fast float %1319, 5.000000e-01
  %1322 = fmul fast float %1283, %1101
  %1323 = fmul fast float %1284, %1102
  %1324 = fmul fast float %1285, %1103
  %1325 = fmul fast float %1320, 2.000000e+00
  %1326 = fadd fast float %1325, -1.000000e+00
  %1327 = fmul fast float %1321, 2.000000e+00
  %1328 = fadd fast float %1327, -1.000000e+00
  %1329 = fadd fast float %1326, %1328
  %1330 = fmul fast float %1329, 5.000000e-01
  %1331 = fsub fast float %1326, %1328
  %1332 = fmul fast float %1331, 5.000000e-01
  %1333 = call float @dx.op.unary.f32(i32 6, float %1330)  ; FAbs(value)
  %1334 = fsub fast float 1.000000e+00, %1333
  %1335 = call float @dx.op.unary.f32(i32 6, float %1332)  ; FAbs(value)
  %1336 = fsub fast float %1334, %1335
  %1337 = call float @dx.op.dot3.f32(i32 55, float %1330, float %1332, float %1336, float %1330, float %1332, float %1336)  ; Dot3(ax,ay,az,bx,by,bz)
  %1338 = call float @dx.op.unary.f32(i32 25, float %1337)  ; Rsqrt(value)
  %1339 = fmul fast float %1330, %1338
  %1340 = fmul fast float %1332, %1338
  %1341 = fmul fast float %1338, %1336
  %1342 = fmul fast float %1341, %1066
  %1343 = fmul fast float %1341, %1067
  %1344 = fmul fast float %1341, %1068
  %1345 = fmul fast float %1339, %1089
  %1346 = fmul fast float %1339, %1090
  %1347 = fmul fast float %1339, %1091
  %1348 = fadd fast float %1345, %1342
  %1349 = fadd fast float %1346, %1343
  %1350 = fadd fast float %1347, %1344
  %1351 = fmul fast float %1340, %1095
  %1352 = fmul fast float %1340, %1096
  %1353 = fmul fast float %1340, %1097
  %1354 = fadd fast float %1348, %1351
  %1355 = fadd fast float %1349, %1352
  %1356 = fadd fast float %1350, %1353
  %1357 = call float @dx.op.dot3.f32(i32 55, float %1354, float %1355, float %1356, float %1354, float %1355, float %1356)  ; Dot3(ax,ay,az,bx,by,bz)
  %1358 = call float @dx.op.unary.f32(i32 25, float %1357)  ; Rsqrt(value)
  %1359 = fmul fast float %1354, %1358
  %1360 = fmul fast float %1355, %1358
  %1361 = fmul fast float %1356, %1358
  %1362 = icmp ne i32 %1278, 0
  %1363 = select i1 %1362, float 1.000000e+00, float 0.000000e+00
  %1364 = fmul fast float %1268, %1363
  %1365 = and i32 %1116, 1
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1367, label %1371

; <label>:1367                                    ; preds = %1276
  %1368 = fsub fast float %1359, %1048
  %1369 = fsub fast float %1360, %1049
  %1370 = fsub fast float %1361, %1050
  br label %1371

; <label>:1371                                    ; preds = %1367, %1276
  %1372 = phi float [ %1368, %1367 ], [ %1359, %1276 ]
  %1373 = phi float [ %1369, %1367 ], [ %1360, %1276 ]
  %1374 = phi float [ %1370, %1367 ], [ %1361, %1276 ]
  %1375 = fmul float %1374, %1364
  %1376 = fmul float %1373, %1364
  %1377 = fmul float %1372, %1364
  %1378 = fadd fast float %1377, %1048
  %1379 = fadd fast float %1376, %1049
  %1380 = fadd fast float %1375, %1050
  %1381 = icmp ne i32 %1277, 0
  %1382 = select i1 %1381, float 1.000000e+00, float 0.000000e+00
  %1383 = fmul fast float %1268, %1382
  %1384 = fsub fast float %1322, %1055
  %1385 = fsub fast float %1323, %1056
  %1386 = fsub fast float %1324, %1057
  %1387 = fmul fast float %1384, %1383
  %1388 = fmul fast float %1385, %1383
  %1389 = fmul fast float %1386, %1383
  %1390 = fadd fast float %1387, %1055
  %1391 = fadd fast float %1388, %1056
  %1392 = fadd fast float %1389, %1057
  %1393 = fsub fast float %1295, %1054
  %1394 = fmul fast float %1393, %1383
  %1395 = fadd fast float %1394, %1054
  %1396 = fmul fast float %1383, %1041
  %1397 = fsub fast float %1041, %1396
  %1398 = fmul fast float %1383, %1040
  %1399 = fsub fast float %1040, %1398
  %1400 = bitcast float %1110 to i32
  %1401 = lshr i32 %1400, 16
  %1402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1401)  ; LegacyF16ToF32(value)
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 1
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1407, label %1432

; <label>:1407                                    ; preds = %1371
  %1408 = fadd fast float %1295, 0xBFB99999A0000000
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = fmul fast float %1409, 0x3FF1C71C80000000
  %1411 = fsub fast float 1.000000e+00, %1410
  %1412 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1413 = fmul fast float %1412, %1322
  %1414 = fmul fast float %1412, %1323
  %1415 = fmul fast float %1412, %1324
  %1416 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1417 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1418 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1419 = call float @dx.op.binary.f32(i32 35, float %1417, float %1418)  ; FMax(a,b)
  %1420 = call float @dx.op.binary.f32(i32 35, float %1416, float %1419)  ; FMax(a,b)
  %1421 = fcmp fast ogt float %1420, 0.000000e+00
  %1422 = bitcast float %1420 to i32
  %1423 = sub nsw i32 2129859010, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = select i1 %1421, float %1424, float 0.000000e+00
  %1426 = fmul fast float %1416, %1402
  %1427 = fmul fast float %1417, %1402
  %1428 = fmul fast float %1418, %1402
  %1429 = fmul fast float %1426, %1425
  %1430 = fmul fast float %1427, %1425
  %1431 = fmul fast float %1428, %1425
  br label %1432

; <label>:1432                                    ; preds = %1407, %1371
  %1433 = phi float [ %1402, %1371 ], [ %1429, %1407 ]
  %1434 = phi float [ %1402, %1371 ], [ %1430, %1407 ]
  %1435 = phi float [ %1402, %1371 ], [ %1431, %1407 ]
  %1436 = fsub fast float %1433, %1042
  %1437 = fsub fast float %1434, %1043
  %1438 = fsub fast float %1435, %1044
  %1439 = fmul fast float %1436, %1383
  %1440 = fmul fast float %1437, %1383
  %1441 = fmul fast float %1438, %1383
  %1442 = fadd fast float %1439, %1042
  %1443 = fadd fast float %1440, %1043
  %1444 = fadd fast float %1441, %1044
  %1445 = fadd fast float %1268, %1053
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = fsub fast float %1315, %1052
  %1448 = fmul fast float %1447, %1364
  %1449 = fadd fast float %1448, %1052
  %1450 = fsub fast float %1301, %1051
  %1451 = fmul fast float %1450, %1364
  %1452 = fadd fast float %1451, %1051
  br i1 %1366, label %1461, label %1453

; <label>:1453                                    ; preds = %1432
  %1454 = and i32 %1116, 32768
  %1455 = icmp eq i32 %1454, 0
  br i1 %1455, label %1471, label %1456

; <label>:1456                                    ; preds = %1453
  %1457 = fmul fast float %1364, 1.270000e+02
  %1458 = fadd fast float %1457, %1037
  %1459 = fadd fast float %1457, %1038
  %1460 = fadd fast float %1457, %1039
  br label %1471

; <label>:1461                                    ; preds = %1432
  %1462 = fsub fast float 1.270000e+02, %1037
  %1463 = fsub fast float 1.270000e+02, %1038
  %1464 = fsub fast float 1.270000e+02, %1039
  %1465 = fmul fast float %1364, %1462
  %1466 = fmul fast float %1364, %1463
  %1467 = fmul fast float %1364, %1464
  %1468 = fadd fast float %1465, %1037
  %1469 = fadd fast float %1466, %1038
  %1470 = fadd fast float %1467, %1039
  br label %1471

; <label>:1471                                    ; preds = %1461, %1456, %1453
  %1472 = phi float [ %1458, %1456 ], [ %1037, %1453 ], [ %1468, %1461 ]
  %1473 = phi float [ %1459, %1456 ], [ %1038, %1453 ], [ %1469, %1461 ]
  %1474 = phi float [ %1460, %1456 ], [ %1039, %1453 ], [ %1470, %1461 ]
  %1475 = call float @dx.op.dot3.f32(i32 55, float %1322, float %1323, float %1324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.CBufRet.f32 %1476, 1
  %1479 = fmul fast float %1478, %1475
  %1480 = fadd fast float %1479, %1477
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1482 = bitcast float %1104 to i32
  %1483 = and i32 %1482, 65535
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = lshr i32 %1482, 16
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = fcmp fast oge float %1484, 0.000000e+00
  %1488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.f32 %1488, 0
  %1490 = select i1 %1487, float %1484, float %1489
  %1491 = fadd fast float %1490, %1486
  %1492 = fsub fast float %1481, %1036
  %1493 = fmul fast float %1492, %1268
  %1494 = fadd fast float %1493, %1036
  %1495 = fmul fast float %1491, %1268
  %1496 = call float @dx.op.binary.f32(i32 35, float %1035, float %1495)  ; FMax(a,b)
  %1497 = and i32 %1116, 16
  %1498 = icmp eq i32 %1497, 0
  br i1 %1498, label %1520, label %1499

; <label>:1499                                    ; preds = %1471
  %1500 = add i32 %1107, 0
  %1501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1500, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1502 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1501, %dx.types.Handle %1281, float %1209, float %1212, float undef, float undef, i32 0, i32 0, i32 undef, float %1214, float %1216, float undef, float %1218, float %1220, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.ResRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.ResRet.f32 %1502, 2
  %1506 = and i32 %1400, 65535
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = fmul fast float %1503, %1101
  %1509 = fmul fast float %1504, %1102
  %1510 = fmul fast float %1505, %1103
  %1511 = and i32 %1116, 16384
  %1512 = icmp ne i32 %1511, 0
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = select i1 %1512, float %1514, float 1.000000e+00
  %1516 = fmul fast float %1515, %1507
  %1517 = fmul fast float %1508, %1516
  %1518 = fmul fast float %1509, %1516
  %1519 = fmul fast float %1510, %1516
  br label %1520

; <label>:1520                                    ; preds = %1499, %1471
  %1521 = phi float [ %1517, %1499 ], [ 0.000000e+00, %1471 ]
  %1522 = phi float [ %1518, %1499 ], [ 0.000000e+00, %1471 ]
  %1523 = phi float [ %1519, %1499 ], [ 0.000000e+00, %1471 ]
  %1524 = fsub fast float %1521, %1045
  %1525 = fsub fast float %1522, %1046
  %1526 = fsub fast float %1523, %1047
  %1527 = fmul fast float %1524, %1268
  %1528 = fmul fast float %1525, %1268
  %1529 = fmul fast float %1526, %1268
  %1530 = fadd fast float %1527, %1045
  %1531 = fadd fast float %1528, %1046
  %1532 = fadd fast float %1529, %1047
  br label %1165

; <label>:1533                                    ; preds = %1165
  br label %1534

; <label>:1534                                    ; preds = %1533, %923
  %1535 = phi float [ 0.000000e+00, %923 ], [ %1166, %1533 ]
  %1536 = phi float [ %945, %923 ], [ %1167, %1533 ]
  %1537 = phi float [ %943, %923 ], [ %1168, %1533 ]
  %1538 = phi float [ %926, %923 ], [ %1169, %1533 ]
  %1539 = phi float [ %927, %923 ], [ %1170, %1533 ]
  %1540 = phi float [ %928, %923 ], [ %1171, %1533 ]
  %1541 = phi float [ 0.000000e+00, %923 ], [ %1172, %1533 ]
  %1542 = phi float [ 0.000000e+00, %923 ], [ %1173, %1533 ]
  %1543 = phi float [ %935, %923 ], [ %1174, %1533 ]
  %1544 = phi float [ %936, %923 ], [ %1175, %1533 ]
  %1545 = phi float [ %937, %923 ], [ %1176, %1533 ]
  %1546 = phi float [ %932, %923 ], [ %1177, %1533 ]
  %1547 = phi float [ %933, %923 ], [ %1178, %1533 ]
  %1548 = phi float [ %934, %923 ], [ %1179, %1533 ]
  %1549 = phi float [ %977, %923 ], [ %1180, %1533 ]
  %1550 = phi float [ %978, %923 ], [ %1181, %1533 ]
  %1551 = phi float [ %979, %923 ], [ %1182, %1533 ]
  %1552 = phi float [ %941, %923 ], [ %1183, %1533 ]
  %1553 = phi float [ %940, %923 ], [ %1184, %1533 ]
  %1554 = phi float [ 0.000000e+00, %923 ], [ %1185, %1533 ]
  %1555 = phi float [ %938, %923 ], [ %1186, %1533 ]
  %1556 = phi float [ %929, %923 ], [ %1187, %1533 ]
  %1557 = phi float [ %930, %923 ], [ %1188, %1533 ]
  %1558 = phi float [ %931, %923 ], [ %1189, %1533 ]
  %1559 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1550, float %1551, float %1549, float %1550, float %1551)  ; Dot3(ax,ay,az,bx,by,bz)
  %1560 = call float @dx.op.unary.f32(i32 25, float %1559)  ; Rsqrt(value)
  %1561 = fmul fast float %1560, %1549
  %1562 = fmul fast float %1560, %1550
  %1563 = fmul fast float %1560, %1551
  %1564 = fadd fast float %1554, %939
  %1565 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1566 = call float @dx.op.dot3.f32(i32 55, float %1561, float %1562, float %1563, float %1561, float %1562, float %1563)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = call float @dx.op.unary.f32(i32 25, float %1566)  ; Rsqrt(value)
  %1568 = fmul fast float %1567, %1561
  %1569 = fmul fast float %1567, %1562
  %1570 = fmul fast float %1567, %1563
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = extractvalue %dx.types.ResRet.i32 %1571, 1
  %1574 = extractvalue %dx.types.ResRet.i32 %1571, 2
  %1575 = bitcast i32 %1572 to float
  %1576 = bitcast i32 %1573 to float
  %1577 = bitcast i32 %1574 to float
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = extractvalue %dx.types.ResRet.i32 %1578, 1
  %1581 = extractvalue %dx.types.ResRet.i32 %1578, 2
  %1582 = bitcast i32 %1579 to float
  %1583 = bitcast i32 %1580 to float
  %1584 = bitcast i32 %1581 to float
  %1585 = fsub fast float %1582, %1575
  %1586 = fsub fast float %1583, %1576
  %1587 = fsub fast float %1584, %1577
  %1588 = fmul fast float %1585, %175
  %1589 = fmul fast float %1586, %175
  %1590 = fmul fast float %1587, %175
  %1591 = fadd fast float %1588, %1575
  %1592 = fadd fast float %1589, %1576
  %1593 = fadd fast float %1590, %1577
  %1594 = fmul fast float %1591, %1556
  %1595 = fmul fast float %1592, %1557
  %1596 = fmul fast float %1593, %1558
  %1597 = fmul fast float %1565, %175
  %1598 = fadd fast float %1555, 0xBFB99999A0000000
  %1599 = call float @dx.op.unary.f32(i32 7, float %1598)  ; Saturate(value)
  %1600 = fmul fast float %1599, 0x3FF1C71C80000000
  %1601 = call float @dx.op.binary.f32(i32 36, float %1555, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1602 = fsub fast float 1.000000e+00, %1600
  %1603 = call float @dx.op.unary.f32(i32 7, float %1602)  ; Saturate(value)
  %1604 = fmul fast float %1594, %1603
  %1605 = fmul fast float %1595, %1603
  %1606 = fmul fast float %1596, %1603
  %1607 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1608 = call float @dx.op.unary.f32(i32 7, float %1605)  ; Saturate(value)
  %1609 = call float @dx.op.unary.f32(i32 7, float %1606)  ; Saturate(value)
  %1610 = fmul fast float %1594, %1600
  %1611 = fmul fast float %1595, %1600
  %1612 = fmul fast float %1596, %1600
  %1613 = fadd fast float %1610, %1601
  %1614 = fadd fast float %1611, %1601
  %1615 = fadd fast float %1612, %1601
  %1616 = call float @dx.op.unary.f32(i32 7, float %1613)  ; Saturate(value)
  %1617 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1618 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1619 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 1
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1638, label %1624

; <label>:1624                                    ; preds = %1534
  %1625 = call float @dx.op.binary.f32(i32 35, float %1608, float %1609)  ; FMax(a,b)
  %1626 = call float @dx.op.binary.f32(i32 35, float %1607, float %1625)  ; FMax(a,b)
  %1627 = fcmp fast ogt float %1626, 0.000000e+00
  %1628 = bitcast float %1626 to i32
  %1629 = sub nsw i32 2129859010, %1628
  %1630 = bitcast i32 %1629 to float
  %1631 = select i1 %1627, float %1630, float 0.000000e+00
  %1632 = fmul fast float %1607, %1543
  %1633 = fmul fast float %1608, %1544
  %1634 = fmul fast float %1609, %1545
  %1635 = fmul fast float %1632, %1631
  %1636 = fmul fast float %1633, %1631
  %1637 = fmul fast float %1634, %1631
  br label %1638

; <label>:1638                                    ; preds = %1624, %1534
  %1639 = phi float [ %1635, %1624 ], [ %1543, %1534 ]
  %1640 = phi float [ %1636, %1624 ], [ %1544, %1534 ]
  %1641 = phi float [ %1637, %1624 ], [ %1545, %1534 ]
  %1642 = call float @dx.op.binary.f32(i32 36, float %1538, float 1.270000e+02)  ; FMin(a,b)
  %1643 = call float @dx.op.binary.f32(i32 36, float %1539, float 1.270000e+02)  ; FMin(a,b)
  %1644 = call float @dx.op.binary.f32(i32 36, float %1540, float 1.270000e+02)  ; FMin(a,b)
  %1645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.i32 %1645, 3
  %1647 = and i32 %1646, 8
  %1648 = icmp ne i32 %1647, 0
  %1649 = call float @dx.op.binary.f32(i32 35, float %1607, float %1594)  ; FMax(a,b)
  %1650 = call float @dx.op.binary.f32(i32 35, float %1608, float %1594)  ; FMax(a,b)
  %1651 = call float @dx.op.binary.f32(i32 35, float %1609, float %1594)  ; FMax(a,b)
  %1652 = call float @dx.op.dot3.f32(i32 55, float %1607, float %1608, float %1609, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1653 = select i1 %235, float %1594, float %1607
  %1654 = select i1 %235, float %1652, float %1608
  %1655 = select i1 %235, float 1.000000e+00, float %1609
  %1656 = select i1 %1648, float %1649, float %1653
  %1657 = select i1 %1648, float %1650, float %1654
  %1658 = select i1 %1648, float %1651, float %1655
  %1659 = call float @dx.op.dot3.f32(i32 55, float %1639, float %1640, float %1641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1660 = select i1 %235, float %1659, float %1639
  %1661 = select i1 %235, float %1659, float %1640
  %1662 = select i1 %235, float %1659, float %1641
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.CBufRet.f32 %1663, 2
  %1667 = fadd fast float %1664, %142
  %1668 = fadd fast float %1665, %143
  %1669 = fadd fast float %1666, %144
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1673 = fsub fast float %1667, %1671
  %1674 = fsub fast float %1668, %1672
  %1675 = fmul fast float %1673, %1673
  %1676 = fmul fast float %1674, %1674
  %1677 = fadd fast float %1675, %1676
  %1678 = call float @dx.op.unary.f32(i32 24, float %1677)  ; Sqrt(value)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1670, 2
  %1680 = fcmp fast olt float %1678, %1679
  br i1 %1680, label %1681, label %1748

; <label>:1681                                    ; preds = %1638
  %1682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.f32 %1682, 0
  %1684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1685 = extractvalue %dx.types.CBufRet.f32 %1684, 0
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 0
  %1688 = extractvalue %dx.types.CBufRet.f32 %1682, 1
  %1689 = extractvalue %dx.types.CBufRet.f32 %1684, 1
  %1690 = extractvalue %dx.types.CBufRet.f32 %1686, 1
  %1691 = extractvalue %dx.types.CBufRet.f32 %1682, 3
  %1692 = extractvalue %dx.types.CBufRet.f32 %1684, 3
  %1693 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1694 = fadd fast float %1691, %1667
  %1695 = fadd fast float %1692, %1668
  %1696 = fadd fast float %1693, %1669
  %1697 = fmul fast float %1694, %1683
  %1698 = call float @dx.op.tertiary.f32(i32 46, float %1695, float %1685, float %1697)  ; FMad(a,b,c)
  %1699 = call float @dx.op.tertiary.f32(i32 46, float %1696, float %1687, float %1698)  ; FMad(a,b,c)
  %1700 = fmul fast float %1694, %1688
  %1701 = call float @dx.op.tertiary.f32(i32 46, float %1695, float %1689, float %1700)  ; FMad(a,b,c)
  %1702 = call float @dx.op.tertiary.f32(i32 46, float %1696, float %1690, float %1701)  ; FMad(a,b,c)
  %1703 = fsub fast float %1699, %1691
  %1704 = fsub fast float %1702, %1692
  %1705 = fsub fast float %1703, %1671
  %1706 = fadd fast float %1705, %1679
  %1707 = fsub fast float %1704, %1672
  %1708 = fadd fast float %1707, %1679
  %1709 = extractvalue %dx.types.CBufRet.f32 %1670, 3
  %1710 = fmul fast float %1706, %1709
  %1711 = fmul fast float %1708, %1709
  %1712 = call float @dx.op.unary.f32(i32 7, float %1710)  ; Saturate(value)
  %1713 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1714 = fsub fast float 1.000000e+00, %1712
  %1715 = fsub fast float 1.000000e+00, %1713
  %1716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %50, float %1714, float %1715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = fcmp fast ugt float %1717, 0.000000e+00
  br i1 %1718, label %1719, label %2022

; <label>:1719                                    ; preds = %1681
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 2
  %1722 = fmul fast float %1721, %1717
  %1723 = extractvalue %dx.types.CBufRet.f32 %1720, 3
  %1724 = fadd fast float %1723, %1722
  %1725 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1726 = fadd fast float %1724, %1693
  %1727 = fmul fast float %1699, %1687
  %1728 = call float @dx.op.tertiary.f32(i32 46, float %1702, float %1690, float %1727)  ; FMad(a,b,c)
  %1729 = call float @dx.op.tertiary.f32(i32 46, float %1726, float %1725, float %1728)  ; FMad(a,b,c)
  %1730 = fsub fast float %1729, %1693
  %1731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1732 = extractvalue %dx.types.CBufRet.f32 %1731, 2
  %1733 = fsub fast float %1730, %1732
  %1734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1714, float %1715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.ResRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.ResRet.f32 %1734, 2
  %1738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %1714, float %1715, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = extractvalue %dx.types.ResRet.f32 %1738, 1
  %1741 = extractvalue %dx.types.ResRet.f32 %1738, 2
  %1742 = fadd fast float %1739, %1735
  %1743 = fmul fast float %1742, 0x3F847AE140000000
  %1744 = fadd fast float %1740, %1736
  %1745 = fmul fast float %1744, 0x3F847AE140000000
  %1746 = fadd fast float %1741, %1737
  %1747 = fmul fast float %1746, 0x3F847AE140000000
  br label %2022

; <label>:1748                                    ; preds = %1638
  %1749 = and i32 %211, 1
  %1750 = icmp eq i32 %1749, 0
  br i1 %1750, label %2022, label %1751

; <label>:1751                                    ; preds = %1748
  %1752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1753 = extractvalue %dx.types.CBufRet.f32 %1752, 0
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 0
  %1756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.f32 %1756, 0
  %1758 = extractvalue %dx.types.CBufRet.f32 %1752, 1
  %1759 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1760 = extractvalue %dx.types.CBufRet.f32 %1756, 1
  %1761 = extractvalue %dx.types.CBufRet.f32 %1752, 3
  %1762 = extractvalue %dx.types.CBufRet.f32 %1754, 3
  %1763 = extractvalue %dx.types.CBufRet.f32 %1756, 3
  %1764 = fadd fast float %1761, %1667
  %1765 = fadd fast float %1762, %1668
  %1766 = fadd fast float %1763, %1669
  %1767 = fmul fast float %1764, %1753
  %1768 = call float @dx.op.tertiary.f32(i32 46, float %1765, float %1755, float %1767)  ; FMad(a,b,c)
  %1769 = call float @dx.op.tertiary.f32(i32 46, float %1766, float %1757, float %1768)  ; FMad(a,b,c)
  %1770 = fmul fast float %1764, %1758
  %1771 = call float @dx.op.tertiary.f32(i32 46, float %1765, float %1759, float %1770)  ; FMad(a,b,c)
  %1772 = call float @dx.op.tertiary.f32(i32 46, float %1766, float %1760, float %1771)  ; FMad(a,b,c)
  %1773 = fsub fast float %1769, %1761
  %1774 = fsub fast float %1772, %1762
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.CBufRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1779 = extractvalue %dx.types.CBufRet.f32 %1775, 3
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1782 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1783 = extractvalue %dx.types.CBufRet.i32 %1782, 0
  %1784 = extractvalue %dx.types.CBufRet.i32 %1782, 1
  %1785 = udiv i32 %1784, %1783
  %1786 = fsub fast float %1773, %1776
  %1787 = fsub fast float %1774, %1777
  %1788 = call float @dx.op.binary.f32(i32 35, float %1786, float 0.000000e+00)  ; FMax(a,b)
  %1789 = call float @dx.op.binary.f32(i32 35, float %1787, float 0.000000e+00)  ; FMax(a,b)
  %1790 = call float @dx.op.binary.f32(i32 36, float %1788, float %1778)  ; FMin(a,b)
  %1791 = call float @dx.op.binary.f32(i32 36, float %1789, float %1779)  ; FMin(a,b)
  %1792 = add i32 %1783, -1
  %1793 = add i32 %1785, -1
  %1794 = fmul fast float %1790, %1781
  %1795 = fmul fast float %1791, %1781
  %1796 = fptoui float %1794 to i32
  %1797 = fptoui float %1795 to i32
  %1798 = call i32 @dx.op.binary.i32(i32 40, i32 %1796, i32 %1792)  ; UMin(a,b)
  %1799 = call i32 @dx.op.binary.i32(i32 40, i32 %1797, i32 %1793)  ; UMin(a,b)
  %1800 = mul i32 %1799, %1783
  %1801 = add i32 %1800, %1798
  %1802 = shl i32 %1801, 2
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = icmp eq i32 %1804, -1
  br i1 %1805, label %2022, label %1806

; <label>:1806                                    ; preds = %1751
  %1807 = mul i32 %1804, 148
  %1808 = add i32 %1807, 4
  %1809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.f32 %1809, 0
  %1811 = add i32 %1807, 8
  %1812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.f32 %1812, 0
  %1814 = add i32 %1807, 36
  %1815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1817 = add i32 %1807, 60
  %1818 = add i32 %1807, 92
  %1819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.i32 %1819, 0
  %1821 = add i32 %1807, 116
  %1822 = fsub fast float %1773, %1810
  %1823 = fsub fast float %1774, %1813
  %1824 = fmul fast float %1781, %1822
  %1825 = fmul fast float %1781, %1823
  %1826 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  %1827 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1828 = fsub fast float 1.000000e+00, %1827
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 2
  %1831 = call float @dx.op.unary.f32(i32 83, float %1826)  ; DerivCoarseX(value)
  %1832 = call float @dx.op.unary.f32(i32 83, float %1828)  ; DerivCoarseX(value)
  %1833 = call float @dx.op.unary.f32(i32 84, float %1826)  ; DerivCoarseY(value)
  %1834 = call float @dx.op.unary.f32(i32 84, float %1828)  ; DerivCoarseY(value)
  %1835 = fmul fast float %1831, %1830
  %1836 = fmul fast float %1832, %1830
  %1837 = fmul fast float %1833, %1830
  %1838 = fmul fast float %1834, %1830
  %1839 = call float @dx.op.dot2.f32(i32 54, float %1837, float %1838, float %1837, float %1838)  ; Dot2(ax,ay,bx,by)
  %1840 = call float @dx.op.dot2.f32(i32 54, float %1835, float %1836, float %1835, float %1836)  ; Dot2(ax,ay,bx,by)
  %1841 = call float @dx.op.binary.f32(i32 35, float %1840, float %1839)  ; FMax(a,b)
  %1842 = call float @dx.op.unary.f32(i32 23, float %1841)  ; Log(value)
  %1843 = fmul fast float %1842, 5.000000e-01
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1846 = fadd fast float %1845, %1843
  %1847 = call float @dx.op.binary.f32(i32 35, float %1846, float 0.000000e+00)  ; FMax(a,b)
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1850 = fadd fast float %1849, %1847
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1853 = fadd fast float %1850, %1852
  %1854 = add i32 %1820, 0
  %1855 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1854, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1856 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1855, i32 0)  ; GetDimensions(handle,mipLevel)
  %1857 = extractvalue %dx.types.Dimensions %1856, 0
  %1858 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1857)  ; FirstbitLo(value)
  %1859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.i32 %1859, 1
  %1861 = sub nsw i32 %1860, %1858
  %1862 = sitofp i32 %1861 to float
  %1863 = fsub fast float %1853, %1862
  %1864 = call float @dx.op.binary.f32(i32 35, float %1863, float 0.000000e+00)  ; FMax(a,b)
  %1865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1855, %dx.types.Handle %48, float %1826, float %1828, float %1816, float undef, i32 0, i32 0, i32 undef, float %1864)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = fcmp ule float %1866, 0x3FE0101020000000
  %1868 = extractvalue %dx.types.CBufRet.i32 %1859, 0
  %1869 = and i32 %1868, 128
  %1870 = icmp ne i32 %1869, 0
  %1871 = and i1 %1867, %1870
  br i1 %1871, label %2022, label %1872

; <label>:1872                                    ; preds = %1806
  %1873 = add i32 %1807, 20
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = add i32 %1807, 24
  %1877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = add i32 %1807, 40
  %1880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 0
  %1882 = add i32 %1807, 96
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %1887 = fmul fast float %1886, %1826
  %1888 = fmul fast float %1886, %1828
  %1889 = extractvalue %dx.types.CBufRet.f32 %1885, 3
  %1890 = fadd fast float %1887, %1889
  %1891 = fadd fast float %1888, %1889
  %1892 = add i32 %1884, 0
  %1893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1892, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1894 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1893, i32 0)  ; GetDimensions(handle,mipLevel)
  %1895 = extractvalue %dx.types.Dimensions %1894, 0
  %1896 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1895)  ; FirstbitLo(value)
  %1897 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.i32 %1897, 1
  %1899 = sub nsw i32 %1898, %1896
  %1900 = sitofp i32 %1899 to float
  %1901 = fsub fast float %1850, %1900
  %1902 = call float @dx.op.binary.f32(i32 35, float %1901, float 0.000000e+00)  ; FMax(a,b)
  %1903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1893, %dx.types.Handle %48, float %1890, float %1891, float %1881, float undef, i32 0, i32 0, i32 undef, float %1902)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = fmul fast float %1904, %1875
  %1906 = fadd fast float %1905, %1878
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.CBufRet.f32 %1907, 1
  %1910 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 3
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 3
  %1915 = extractvalue %dx.types.CBufRet.f32 %1907, 3
  %1916 = fadd fast float %1912, %1773
  %1917 = fadd fast float %1914, %1774
  %1918 = fadd fast float %1906, %1915
  %1919 = fmul fast float %1916, %1908
  %1920 = call float @dx.op.tertiary.f32(i32 46, float %1917, float %1909, float %1919)  ; FMad(a,b,c)
  %1921 = call float @dx.op.tertiary.f32(i32 46, float %1918, float %1910, float %1920)  ; FMad(a,b,c)
  %1922 = fsub fast float %1921, %1915
  %1923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1923, 2
  %1925 = fsub fast float %1922, %1924
  %1926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.i32 %1926, 0
  %1928 = call i32 @dx.op.binary.i32(i32 40, i32 %1804, i32 %1927)  ; UMin(a,b)
  %1929 = mul i32 %1928, 36
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = add i32 %1929, 4
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 0
  %1935 = fmul fast float %1934, %1826
  %1936 = fmul fast float %1934, %1828
  %1937 = extractvalue %dx.types.CBufRet.f32 %1933, 1
  %1938 = fadd fast float %1935, %1937
  %1939 = fadd fast float %1936, %1937
  %1940 = icmp eq i32 %1931, 0
  br i1 %1940, label %2009, label %1941

; <label>:1941                                    ; preds = %1872
  br label %1942

; <label>:1942                                    ; preds = %1999, %1941
  %1943 = phi float [ %2000, %1999 ], [ 0.000000e+00, %1941 ]
  %1944 = phi float [ %2001, %1999 ], [ 0.000000e+00, %1941 ]
  %1945 = phi float [ %2002, %1999 ], [ 0.000000e+00, %1941 ]
  %1946 = phi float [ %2003, %1999 ], [ 0.000000e+00, %1941 ]
  %1947 = phi float [ %2004, %1999 ], [ 0.000000e+00, %1941 ]
  %1948 = phi float [ %2005, %1999 ], [ 0.000000e+00, %1941 ]
  %1949 = phi i32 [ %2006, %1999 ], [ 0, %1941 ]
  %1950 = shl i32 %1949, 2
  %1951 = add i32 %1817, %1950
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = add i32 %1821, %1950
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = add i32 %1956, 0
  %1958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1957, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1959 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1958, i32 0)  ; GetDimensions(handle,mipLevel)
  %1960 = extractvalue %dx.types.Dimensions %1959, 0
  %1961 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1960)  ; FirstbitLo(value)
  %1962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1963 = extractvalue %dx.types.CBufRet.i32 %1962, 1
  %1964 = sub nsw i32 %1963, %1961
  %1965 = sitofp i32 %1964 to float
  %1966 = fsub fast float %1850, %1965
  %1967 = call float @dx.op.binary.f32(i32 35, float %1966, float 0.000000e+00)  ; FMax(a,b)
  %1968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1958, %dx.types.Handle %48, float %1938, float %1939, float %1953, float undef, i32 0, i32 0, i32 undef, float %1967)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = fcmp fast ogt float %1969, 0.000000e+00
  br i1 %1970, label %1971, label %1999

; <label>:1971                                    ; preds = %1942
  %1972 = add i32 %1932, %1950
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = and i32 %1974, 32767
  %1976 = mul nuw nsw i32 %1975, 928
  %1977 = add nuw nsw i32 %1976, 48
  %1978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.ResRet.f32 %1978, 1
  %1981 = extractvalue %dx.types.ResRet.f32 %1978, 2
  %1982 = add nuw nsw i32 %1976, 60
  %1983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = fmul fast float %1979, %1969
  %1988 = fmul fast float %1980, %1969
  %1989 = fmul fast float %1981, %1969
  %1990 = fadd fast float %1987, %1943
  %1991 = fadd fast float %1988, %1944
  %1992 = fadd fast float %1989, %1945
  %1993 = fmul fast float %1984, %1969
  %1994 = fmul fast float %1985, %1969
  %1995 = fmul fast float %1986, %1969
  %1996 = fadd fast float %1993, %1946
  %1997 = fadd fast float %1994, %1947
  %1998 = fadd fast float %1995, %1948
  br label %1999

; <label>:1999                                    ; preds = %1971, %1942
  %2000 = phi float [ %1990, %1971 ], [ %1943, %1942 ]
  %2001 = phi float [ %1991, %1971 ], [ %1944, %1942 ]
  %2002 = phi float [ %1992, %1971 ], [ %1945, %1942 ]
  %2003 = phi float [ %1996, %1971 ], [ %1946, %1942 ]
  %2004 = phi float [ %1997, %1971 ], [ %1947, %1942 ]
  %2005 = phi float [ %1998, %1971 ], [ %1948, %1942 ]
  %2006 = add nuw i32 %1949, 1
  %2007 = icmp eq i32 %2006, %1931
  br i1 %2007, label %2008, label %1942

; <label>:2008                                    ; preds = %1999
  br label %2009

; <label>:2009                                    ; preds = %2008, %1872
  %2010 = phi float [ 0.000000e+00, %1872 ], [ %2000, %2008 ]
  %2011 = phi float [ 0.000000e+00, %1872 ], [ %2001, %2008 ]
  %2012 = phi float [ 0.000000e+00, %1872 ], [ %2002, %2008 ]
  %2013 = phi float [ 0.000000e+00, %1872 ], [ %2003, %2008 ]
  %2014 = phi float [ 0.000000e+00, %1872 ], [ %2004, %2008 ]
  %2015 = phi float [ 0.000000e+00, %1872 ], [ %2005, %2008 ]
  %2016 = fadd fast float %2013, %2010
  %2017 = fmul fast float %2016, 0x3F847AE140000000
  %2018 = fadd fast float %2014, %2011
  %2019 = fmul fast float %2018, 0x3F847AE140000000
  %2020 = fadd fast float %2015, %2012
  %2021 = fmul fast float %2020, 0x3F847AE140000000
  br label %2022

; <label>:2022                                    ; preds = %2009, %1806, %1751, %1748, %1719, %1681
  %2023 = phi float [ %1733, %1719 ], [ -1.310720e+05, %1681 ], [ %1925, %2009 ], [ -1.310720e+05, %1751 ], [ -1.310720e+05, %1806 ], [ -1.310720e+05, %1748 ]
  %2024 = phi float [ %1743, %1719 ], [ 0.000000e+00, %1681 ], [ %2017, %2009 ], [ 0.000000e+00, %1751 ], [ 0.000000e+00, %1806 ], [ 0.000000e+00, %1748 ]
  %2025 = phi float [ %1745, %1719 ], [ 0.000000e+00, %1681 ], [ %2019, %2009 ], [ 0.000000e+00, %1751 ], [ 0.000000e+00, %1806 ], [ 0.000000e+00, %1748 ]
  %2026 = phi float [ %1747, %1719 ], [ 0.000000e+00, %1681 ], [ %2021, %2009 ], [ 0.000000e+00, %1751 ], [ 0.000000e+00, %1806 ], [ 0.000000e+00, %1748 ]
  %2027 = phi i1 [ true, %1719 ], [ false, %1681 ], [ true, %2009 ], [ false, %1751 ], [ false, %1806 ], [ false, %1748 ]
  %2028 = and i32 %211, 3
  %2029 = icmp eq i32 %2028, 1
  %2030 = select i1 %2029, float 1.000000e+00, float 0.000000e+00
  %2031 = fsub fast float %2023, %144
  %2032 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2033 = select i1 %2027, float %2032, float 1.000000e+00
  %2034 = fmul fast float %2033, %2030
  %2035 = icmp eq i32 %2028, 3
  %2036 = select i1 %2035, float 1.000000e+00, float %2034
  %2037 = call float @dx.op.binary.f32(i32 35, float %1535, float %2036)  ; FMax(a,b)
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = fcmp fast une float %2038, 0.000000e+00
  br i1 %2039, label %2040, label %2205

; <label>:2040                                    ; preds = %2022
  %2041 = fsub fast float -0.000000e+00, %161
  %2042 = fsub fast float -0.000000e+00, %162
  %2043 = fsub fast float -0.000000e+00, %163
  %2044 = call float @dx.op.dot3.f32(i32 55, float %2041, float %2042, float %2043, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %2045 = fmul fast float %2038, 2.500000e+00
  %2046 = call float @dx.op.unary.f32(i32 7, float %2045)  ; Saturate(value)
  %2047 = fmul fast float %2038, 0x4013FFFFE0000000
  %2048 = fadd fast float %2047, 0xBFFFFFFFE0000000
  %2049 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2050 = fmul fast float %2038, 0x4004000020000000
  %2051 = fadd fast float %2050, 0xBFF8000040000000
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2053 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2054 = fmul fast float %1598, 1.000000e+01
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2056 = fmul fast float %2055, 2.000000e+00
  %2057 = fsub fast float 3.000000e+00, %2056
  %2058 = fmul fast float %2055, %2055
  %2059 = fmul fast float %2058, %2057
  %2060 = fsub fast float 1.000000e+00, %2059
  %2061 = fsub fast float 0x3FE3333340000000, %1619
  %2062 = fmul fast float %2061, 0x400AAAAAA0000000
  %2063 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2064 = fmul fast float %2060, %2063
  %2065 = fmul fast float %1656, 0x3FEA2B8620000000
  %2066 = fmul fast float %1657, 0x3FEA2B8620000000
  %2067 = fmul fast float %1658, 0x3FEA2B8620000000
  %2068 = fadd fast float %2065, 0x3FC81DFBA0000000
  %2069 = fmul fast float %2068, %1656
  %2070 = fadd fast float %2069, 0x3F910E6020000000
  %2071 = fadd fast float %2066, 0x3FC81DFBA0000000
  %2072 = fmul fast float %2071, %1657
  %2073 = fadd fast float %2072, 0x3F910E6020000000
  %2074 = fadd fast float %2067, 0x3FC81DFBA0000000
  %2075 = fmul fast float %2074, %1658
  %2076 = fadd fast float %2075, 0x3F910E6020000000
  %2077 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2078 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2079 = call float @dx.op.unary.f32(i32 7, float %2076)  ; Saturate(value)
  %2080 = fsub fast float %2077, %1656
  %2081 = fsub fast float %2078, %1657
  %2082 = fsub fast float %2079, %1658
  %2083 = fmul fast float %2080, %2053
  %2084 = fmul fast float %2083, %2064
  %2085 = fmul fast float %2081, %2053
  %2086 = fmul fast float %2085, %2064
  %2087 = fmul fast float %2082, %2053
  %2088 = fmul fast float %2087, %2064
  %2089 = fadd fast float %2084, %1656
  %2090 = fadd fast float %2086, %1657
  %2091 = fadd fast float %2088, %1658
  %2092 = fmul fast float %1552, %1552
  %2093 = fmul fast float %2092, %2092
  %2094 = fadd fast float %2049, 1.000000e+00
  %2095 = fsub fast float %2094, %2064
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2097 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2098 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  %2099 = fsub fast float 1.000000e+00, %2093
  %2100 = call float @dx.op.binary.f32(i32 36, float %2096, float %2099)  ; FMin(a,b)
  %2101 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2102 = call float @dx.op.binary.f32(i32 35, float %2100, float %2101)  ; FMax(a,b)
  %2103 = fadd fast float %2098, 0xBFE4CCCCC0000000
  %2104 = fmul fast float %2103, 0x4006DB6DA0000000
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  %2106 = fmul fast float %2105, 2.000000e+00
  %2107 = fsub fast float 3.000000e+00, %2106
  %2108 = bitcast float %1616 to i32
  %2109 = ashr i32 %2108, 1
  %2110 = add nsw i32 %2109, 532487669
  %2111 = bitcast i32 %2110 to float
  %2112 = fsub fast float 1.000000e+00, %2111
  %2113 = bitcast float %2112 to i32
  %2114 = sub nsw i32 2129859010, %2113
  %2115 = bitcast i32 %2114 to float
  %2116 = fmul fast float %2115, 2.000000e+00
  %2117 = bitcast float %1617 to i32
  %2118 = ashr i32 %2117, 1
  %2119 = add nsw i32 %2118, 532487669
  %2120 = bitcast i32 %2119 to float
  %2121 = fsub fast float 1.000000e+00, %2120
  %2122 = bitcast float %2121 to i32
  %2123 = sub nsw i32 2129859010, %2122
  %2124 = bitcast i32 %2123 to float
  %2125 = fmul fast float %2124, 2.000000e+00
  %2126 = bitcast float %1618 to i32
  %2127 = ashr i32 %2126, 1
  %2128 = add nsw i32 %2127, 532487669
  %2129 = bitcast i32 %2128 to float
  %2130 = fsub fast float 1.000000e+00, %2129
  %2131 = bitcast float %2130 to i32
  %2132 = sub nsw i32 2129859010, %2131
  %2133 = bitcast i32 %2132 to float
  %2134 = fmul fast float %2133, 2.000000e+00
  %2135 = fsub fast float 0x4002A9FBE0000000, %2116
  %2136 = fadd fast float %2116, 0x3FD54FDF00000000
  %2137 = bitcast float %2136 to i32
  %2138 = sub nsw i32 2129859010, %2137
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2139, %2135
  %2141 = fmul fast float %2140, %2140
  %2142 = fsub fast float 0x4002A9FBE0000000, %2125
  %2143 = fadd fast float %2125, 0x3FD54FDF00000000
  %2144 = bitcast float %2143 to i32
  %2145 = sub nsw i32 2129859010, %2144
  %2146 = bitcast i32 %2145 to float
  %2147 = fmul fast float %2146, %2142
  %2148 = fmul fast float %2147, %2147
  %2149 = fsub fast float 0x4002A9FBE0000000, %2134
  %2150 = fadd fast float %2134, 0x3FD54FDF00000000
  %2151 = bitcast float %2150 to i32
  %2152 = sub nsw i32 2129859010, %2151
  %2153 = bitcast i32 %2152 to float
  %2154 = fmul fast float %2153, %2149
  %2155 = fmul fast float %2154, %2154
  %2156 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2141)  ; FMax(a,b)
  %2157 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2148)  ; FMax(a,b)
  %2158 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2155)  ; FMax(a,b)
  %2159 = fsub fast float 1.000000e+00, %2044
  %2160 = fadd fast float %2159, %2060
  %2161 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2162 = fsub fast float 1.000000e+00, %2036
  %2163 = fmul fast float %2102, %2162
  %2164 = fmul fast float %2105, %2105
  %2165 = fmul fast float %2164, %2163
  %2166 = fmul fast float %2165, %2107
  %2167 = fmul fast float %2162, 0xBFE99999A0000000
  %2168 = fmul fast float %2167, %2053
  %2169 = fmul fast float %2168, %2064
  %2170 = fadd fast float %2169, 1.000000e+00
  %2171 = fadd fast float %1619, -1.000000e+00
  %2172 = fmul fast float %2170, %2171
  %2173 = fadd fast float %2172, 1.000000e+00
  %2174 = fsub fast float %2156, %1616
  %2175 = fsub fast float %2157, %1617
  %2176 = fsub fast float %2158, %1618
  %2177 = fmul fast float %2166, %2174
  %2178 = fmul fast float %2166, %2175
  %2179 = fmul fast float %2166, %2176
  %2180 = fadd fast float %2177, %1616
  %2181 = fadd fast float %2178, %1617
  %2182 = fadd fast float %2179, %1618
  %2183 = fsub fast float %97, %1568
  %2184 = fsub fast float %98, %1569
  %2185 = fsub fast float %99, %1570
  %2186 = fmul fast float %2166, %2183
  %2187 = fmul fast float %2166, %2184
  %2188 = fmul fast float %2166, %2185
  %2189 = fadd fast float %2186, %1568
  %2190 = fadd fast float %2187, %1569
  %2191 = fadd fast float %2188, %1570
  %2192 = fmul fast float %2166, %2161
  %2193 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2194 = fsub fast float 1.000000e+00, %2193
  %2195 = fmul fast float %2192, %2194
  %2196 = fadd fast float %2195, %2193
  %2197 = fsub fast float 1.000000e+00, %1552
  %2198 = fmul fast float %2166, %2197
  %2199 = fadd fast float %2198, %1552
  %2200 = call float @dx.op.dot3.f32(i32 55, float %2189, float %2190, float %2191, float %2189, float %2190, float %2191)  ; Dot3(ax,ay,az,bx,by,bz)
  %2201 = call float @dx.op.unary.f32(i32 25, float %2200)  ; Rsqrt(value)
  %2202 = fmul fast float %2189, %2201
  %2203 = fmul fast float %2190, %2201
  %2204 = fmul fast float %2191, %2201
  br label %2205

; <label>:2205                                    ; preds = %2040, %2022
  %2206 = phi float [ %2089, %2040 ], [ %1656, %2022 ]
  %2207 = phi float [ %2090, %2040 ], [ %1657, %2022 ]
  %2208 = phi float [ %2091, %2040 ], [ %1658, %2022 ]
  %2209 = phi float [ %2180, %2040 ], [ %1616, %2022 ]
  %2210 = phi float [ %2181, %2040 ], [ %1617, %2022 ]
  %2211 = phi float [ %2182, %2040 ], [ %1618, %2022 ]
  %2212 = phi float [ %2202, %2040 ], [ %1568, %2022 ]
  %2213 = phi float [ %2203, %2040 ], [ %1569, %2022 ]
  %2214 = phi float [ %2204, %2040 ], [ %1570, %2022 ]
  %2215 = phi float [ %2196, %2040 ], [ %1619, %2022 ]
  %2216 = phi float [ %2199, %2040 ], [ %1552, %2022 ]
  %2217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2218 = extractvalue %dx.types.CBufRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.CBufRet.f32 %2217, 1
  %2220 = fmul fast float %2218, 5.000000e-01
  %2221 = fmul fast float %2219, 5.000000e-01
  %2222 = extractvalue %dx.types.CBufRet.f32 %2217, 2
  %2223 = extractvalue %dx.types.CBufRet.f32 %2217, 3
  %2224 = fmul fast float %2222, 2.000000e+00
  %2225 = fmul fast float %2223, 2.000000e+00
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.CBufRet.f32 %2226, 1
  %2229 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.f32 %2230, 0
  %2232 = extractvalue %dx.types.CBufRet.f32 %2230, 1
  %2233 = extractvalue %dx.types.CBufRet.f32 %2230, 2
  %2234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.CBufRet.f32 %2234, 1
  %2237 = extractvalue %dx.types.CBufRet.f32 %2234, 2
  %2238 = fmul fast float %2227, %97
  %2239 = call float @dx.op.tertiary.f32(i32 46, float %98, float %2228, float %2238)  ; FMad(a,b,c)
  %2240 = call float @dx.op.tertiary.f32(i32 46, float %99, float %2229, float %2239)  ; FMad(a,b,c)
  %2241 = fmul fast float %2231, %97
  %2242 = call float @dx.op.tertiary.f32(i32 46, float %98, float %2232, float %2241)  ; FMad(a,b,c)
  %2243 = call float @dx.op.tertiary.f32(i32 46, float %99, float %2233, float %2242)  ; FMad(a,b,c)
  %2244 = fmul fast float %2235, %97
  %2245 = call float @dx.op.tertiary.f32(i32 46, float %98, float %2236, float %2244)  ; FMad(a,b,c)
  %2246 = call float @dx.op.tertiary.f32(i32 46, float %99, float %2237, float %2245)  ; FMad(a,b,c)
  %2247 = fmul fast float %251, 5.000000e+00
  %2248 = call float @dx.op.unary.f32(i32 22, float %2247)  ; Frc(value)
  %2249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2249, 2
  %2251 = extractvalue %dx.types.CBufRet.f32 %2249, 3
  %2252 = fmul fast float %2250, 5.120000e+02
  %2253 = fmul fast float %2251, 5.120000e+02
  %2254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %2255 = extractvalue %dx.types.CBufRet.f32 %2254, 0
  %2256 = extractvalue %dx.types.CBufRet.f32 %2254, 1
  %2257 = extractvalue %dx.types.CBufRet.f32 %2254, 2
  %2258 = extractvalue %dx.types.CBufRet.f32 %2254, 3
  %2259 = fmul fast float %2222, %94
  %2260 = fmul fast float %2223, %95
  %2261 = call float @dx.op.unary.f32(i32 6, float %82)  ; FAbs(value)
  %2262 = fmul fast float %2252, %2222
  %2263 = fmul fast float %2253, %2223
  %2264 = fmul fast float %2261, %2257
  %2265 = fmul fast float %2258, %2261
  %2266 = fsub fast float -0.000000e+00, %2265
  %2267 = fdiv fast float 3.000000e+00, %2264
  %2268 = fdiv fast float 3.000000e+00, %2266
  %2269 = call float @dx.op.binary.f32(i32 36, float %2262, float %2267)  ; FMin(a,b)
  %2270 = call float @dx.op.binary.f32(i32 36, float %2263, float %2268)  ; FMin(a,b)
  %2271 = fmul fast float %2259, %2255
  %2272 = fmul fast float %2260, %2256
  %2273 = fsub fast float %2271, %2257
  %2274 = fsub fast float %2272, %2258
  %2275 = fmul fast float %2273, %2261
  %2276 = fmul fast float %2274, %2261
  %2277 = fsub fast float -0.000000e+00, %2275
  %2278 = fsub fast float -0.000000e+00, %2276
  %2279 = fsub fast float -0.000000e+00, %2261
  %2280 = call float @dx.op.dot3.f32(i32 55, float %2277, float %2278, float %2279, float %2277, float %2278, float %2279)  ; Dot3(ax,ay,az,bx,by,bz)
  %2281 = call float @dx.op.unary.f32(i32 25, float %2280)  ; Rsqrt(value)
  %2282 = fmul fast float %2281, %2277
  %2283 = fmul fast float %2281, %2278
  %2284 = fmul fast float %2281, %2279
  %2285 = fmul fast float %2261, 0x3FEFEB8520000000
  %2286 = fmul fast float %2220, %2269
  %2287 = fmul fast float %2221, %2270
  %2288 = fmul fast float %2286, %2286
  %2289 = fmul fast float %2287, %2287
  %2290 = fadd fast float %2289, %2288
  %2291 = call float @dx.op.unary.f32(i32 24, float %2290)  ; Sqrt(value)
  %2292 = fmul fast float %2291, 3.125000e-02
  br label %2293

; <label>:2293                                    ; preds = %2480, %2205
  %2294 = phi i32 [ 0, %2205 ], [ %2583, %2480 ]
  %2295 = phi float [ 0.000000e+00, %2205 ], [ %2582, %2480 ]
  %2296 = sitofp i32 %2294 to float
  %2297 = fadd fast float %2296, %250
  %2298 = fmul fast float %2297, 0x3FF921FB60000000
  %2299 = call float @dx.op.unary.f32(i32 12, float %2298)  ; Cos(value)
  %2300 = call float @dx.op.unary.f32(i32 13, float %2298)  ; Sin(value)
  %2301 = fsub fast float -0.000000e+00, %2300
  %2302 = call float @dx.op.dot3.f32(i32 55, float %2282, float %2283, float %2284, float %2240, float %2243, float %2246)  ; Dot3(ax,ay,az,bx,by,bz)
  %2303 = call float @dx.op.unary.f32(i32 6, float %2302)  ; FAbs(value)
  %2304 = call float @dx.op.unary.f32(i32 6, float %2303)  ; FAbs(value)
  %2305 = fcmp fast ogt float %2304, 0x3EB0C6F7A0000000
  %2306 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2301, float 0.000000e+00, float %2240, float %2243, float %2246)  ; Dot3(ax,ay,az,bx,by,bz)
  %2307 = fsub fast float -0.000000e+00, %2306
  %2308 = fdiv fast float %2307, %2303
  %2309 = select i1 %2305, float %2308, float 0.000000e+00
  %2310 = fmul fast float %2309, %2309
  %2311 = fadd fast float %2310, 1.000000e+00
  %2312 = call float @dx.op.unary.f32(i32 25, float %2311)  ; Rsqrt(value)
  %2313 = fmul fast float %2309, %2312
  br label %2314

; <label>:2314                                    ; preds = %2314, %2293
  %2315 = phi float [ %2313, %2293 ], [ %2393, %2314 ]
  %2316 = phi float [ 6.000000e+00, %2293 ], [ %2381, %2314 ]
  %2317 = phi i32 [ 0, %2293 ], [ %2394, %2314 ]
  %2318 = sitofp i32 %2317 to float
  %2319 = fadd fast float %2318, %2248
  %2320 = fmul fast float %2319, 5.000000e-01
  %2321 = fmul fast float %2320, %2320
  %2322 = fmul fast float %2321, %2292
  %2323 = call float @dx.op.binary.f32(i32 36, float %2322, float 3.000000e+00)  ; FMin(a,b)
  %2324 = fadd fast float %2323, 1.000000e+00
  %2325 = fmul fast float %2321, %2269
  %2326 = fmul fast float %2321, %2270
  %2327 = fadd fast float %2325, %2224
  %2328 = fmul fast float %2327, %2299
  %2329 = fadd fast float %2328, %2259
  %2330 = fadd fast float %2326, %2225
  %2331 = fmul fast float %2330, %2300
  %2332 = fadd fast float %2331, %2260
  %2333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %51, float %2329, float %2332, float undef, float undef, i32 0, i32 0, i32 undef, float %2324)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2334 = extractvalue %dx.types.ResRet.f32 %2333, 0
  %2335 = fcmp fast ogt float %2334, -1.000000e+00
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 1
  %2338 = select i1 %2335, float %2337, float 1.000000e+00
  %2339 = fadd fast float %2334, 1.000000e+00
  %2340 = fmul fast float %2338, %2339
  %2341 = call float @dx.op.unary.f32(i32 6, float %2340)  ; FAbs(value)
  %2342 = call float @dx.op.unary.f32(i32 6, float %2341)  ; FAbs(value)
  %2343 = fmul fast float %2329, %2255
  %2344 = fmul fast float %2332, %2256
  %2345 = fsub fast float %2343, %2257
  %2346 = fsub fast float %2344, %2258
  %2347 = fmul fast float %2345, %2342
  %2348 = fmul fast float %2346, %2342
  %2349 = fsub fast float %2347, %2275
  %2350 = fsub fast float %2348, %2276
  %2351 = fsub fast float %2342, %2285
  %2352 = call float @dx.op.dot3.f32(i32 55, float %2349, float %2350, float %2351, float %2349, float %2350, float %2351)  ; Dot3(ax,ay,az,bx,by,bz)
  %2353 = call float @dx.op.dot3.f32(i32 55, float %2349, float %2350, float %2351, float %2240, float %2243, float %2246)  ; Dot3(ax,ay,az,bx,by,bz)
  %2354 = fsub fast float -0.000000e+00, %2353
  %2355 = call float @dx.op.dot3.f32(i32 55, float %2349, float %2350, float %2351, float %2282, float %2283, float %2284)  ; Dot3(ax,ay,az,bx,by,bz)
  %2356 = call float @dx.op.unary.f32(i32 25, float %2352)  ; Rsqrt(value)
  %2357 = fmul fast float %2356, %2355
  %2358 = bitcast float %2352 to i32
  %2359 = ashr i32 %2358, 1
  %2360 = add nsw i32 %2359, 532487669
  %2361 = bitcast i32 %2360 to float
  %2362 = fmul fast float %2361, 0x3FE5555640000000
  %2363 = fsub fast float 0x40000000C0000000, %2362
  %2364 = call float @dx.op.unary.f32(i32 7, float %2363)  ; Saturate(value)
  %2365 = fmul fast float %2361, 0x3FCC71C780000000
  %2366 = fsub fast float 0x3FF55555A0000000, %2365
  %2367 = call float @dx.op.unary.f32(i32 7, float %2366)  ; Saturate(value)
  %2368 = fmul fast float %2342, 0x3F947AE140000000
  %2369 = fadd fast float %2368, -1.000000e+00
  %2370 = call float @dx.op.unary.f32(i32 7, float %2369)  ; Saturate(value)
  %2371 = fsub fast float %2367, %2364
  %2372 = fmul fast float %2370, %2371
  %2373 = fadd fast float %2372, %2364
  %2374 = fmul fast float %2341, %82
  %2375 = fcmp fast ogt float %2374, 0.000000e+00
  %2376 = select i1 %2375, float %2373, float 0.000000e+00
  %2377 = fadd fast float %2357, 1.000000e+00
  %2378 = fmul fast float %2376, %2377
  %2379 = fadd fast float %2378, -1.000000e+00
  %2380 = fcmp fast ogt float %2379, %2315
  %2381 = select i1 %2380, float %2354, float %2316
  %2382 = fsub fast float %2354, %2381
  %2383 = fmul fast float %2382, 0x400AAAA4C0000000
  %2384 = fadd fast float %2383, 0xBFDFFFF900000000
  %2385 = call float @dx.op.unary.f32(i32 7, float %2384)  ; Saturate(value)
  %2386 = fmul fast float %2353, 0x401AAAB640000000
  %2387 = fadd fast float %2386, 0x3FF0000700000000
  %2388 = call float @dx.op.unary.f32(i32 7, float %2387)  ; Saturate(value)
  %2389 = fmul fast float %2385, 2.000000e+00
  %2390 = fmul fast float %2389, %2388
  %2391 = fsub fast float %2315, %2390
  %2392 = fcmp ole float %2379, %2391
  %2393 = select i1 %2392, float %2391, float %2379
  %2394 = add nuw nsw i32 %2317, 1
  %2395 = icmp eq i32 %2394, 2
  br i1 %2395, label %2396, label %2314

; <label>:2396                                    ; preds = %2314
  %2397 = fsub fast float -0.000000e+00, %2313
  br label %2398

; <label>:2398                                    ; preds = %2398, %2396
  %2399 = phi float [ %2397, %2396 ], [ %2477, %2398 ]
  %2400 = phi float [ 6.000000e+00, %2396 ], [ %2465, %2398 ]
  %2401 = phi i32 [ 0, %2396 ], [ %2478, %2398 ]
  %2402 = sitofp i32 %2401 to float
  %2403 = fadd fast float %2402, %2248
  %2404 = fmul fast float %2403, 5.000000e-01
  %2405 = fmul fast float %2404, %2404
  %2406 = fmul fast float %2405, %2292
  %2407 = call float @dx.op.binary.f32(i32 36, float %2406, float 3.000000e+00)  ; FMin(a,b)
  %2408 = fadd fast float %2407, 1.000000e+00
  %2409 = fmul fast float %2405, %2269
  %2410 = fmul fast float %2405, %2270
  %2411 = fadd fast float %2409, %2224
  %2412 = fmul fast float %2299, %2411
  %2413 = fsub fast float %2259, %2412
  %2414 = fadd fast float %2410, %2225
  %2415 = fmul fast float %2300, %2414
  %2416 = fsub fast float %2260, %2415
  %2417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %51, float %2413, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float %2408)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2418 = extractvalue %dx.types.ResRet.f32 %2417, 0
  %2419 = fcmp fast ogt float %2418, -1.000000e+00
  %2420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2420, 1
  %2422 = select i1 %2419, float %2421, float 1.000000e+00
  %2423 = fadd fast float %2418, 1.000000e+00
  %2424 = fmul fast float %2422, %2423
  %2425 = call float @dx.op.unary.f32(i32 6, float %2424)  ; FAbs(value)
  %2426 = call float @dx.op.unary.f32(i32 6, float %2425)  ; FAbs(value)
  %2427 = fmul fast float %2413, %2255
  %2428 = fmul fast float %2416, %2256
  %2429 = fsub fast float %2427, %2257
  %2430 = fsub fast float %2428, %2258
  %2431 = fmul fast float %2429, %2426
  %2432 = fmul fast float %2430, %2426
  %2433 = fsub fast float %2431, %2275
  %2434 = fsub fast float %2432, %2276
  %2435 = fsub fast float %2426, %2285
  %2436 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %2433, float %2434, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %2437 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %2240, float %2243, float %2246)  ; Dot3(ax,ay,az,bx,by,bz)
  %2438 = fsub fast float -0.000000e+00, %2437
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2433, float %2434, float %2435, float %2282, float %2283, float %2284)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = call float @dx.op.unary.f32(i32 25, float %2436)  ; Rsqrt(value)
  %2441 = fmul fast float %2440, %2439
  %2442 = bitcast float %2436 to i32
  %2443 = ashr i32 %2442, 1
  %2444 = add nsw i32 %2443, 532487669
  %2445 = bitcast i32 %2444 to float
  %2446 = fmul fast float %2445, 0x3FE5555640000000
  %2447 = fsub fast float 0x40000000C0000000, %2446
  %2448 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  %2449 = fmul fast float %2445, 0x3FCC71C780000000
  %2450 = fsub fast float 0x3FF55555A0000000, %2449
  %2451 = call float @dx.op.unary.f32(i32 7, float %2450)  ; Saturate(value)
  %2452 = fmul fast float %2426, 0x3F947AE140000000
  %2453 = fadd fast float %2452, -1.000000e+00
  %2454 = call float @dx.op.unary.f32(i32 7, float %2453)  ; Saturate(value)
  %2455 = fsub fast float %2451, %2448
  %2456 = fmul fast float %2454, %2455
  %2457 = fadd fast float %2456, %2448
  %2458 = fmul fast float %2425, %82
  %2459 = fcmp fast ogt float %2458, 0.000000e+00
  %2460 = select i1 %2459, float %2457, float 0.000000e+00
  %2461 = fadd fast float %2441, 1.000000e+00
  %2462 = fmul fast float %2460, %2461
  %2463 = fadd fast float %2462, -1.000000e+00
  %2464 = fcmp fast ogt float %2463, %2399
  %2465 = select i1 %2464, float %2438, float %2400
  %2466 = fsub fast float %2438, %2465
  %2467 = fmul fast float %2466, 0x400AAAA4C0000000
  %2468 = fadd fast float %2467, 0xBFDFFFF900000000
  %2469 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  %2470 = fmul fast float %2437, 0x401AAAB640000000
  %2471 = fadd fast float %2470, 0x3FF0000700000000
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  %2473 = fmul fast float %2469, 2.000000e+00
  %2474 = fmul fast float %2473, %2472
  %2475 = fsub fast float %2399, %2474
  %2476 = fcmp ole float %2463, %2475
  %2477 = select i1 %2476, float %2475, float %2463
  %2478 = add nuw nsw i32 %2401, 1
  %2479 = icmp eq i32 %2478, 2
  br i1 %2479, label %2480, label %2398

; <label>:2480                                    ; preds = %2398
  %2481 = fmul fast float %2284, %2301
  %2482 = fmul fast float %2284, %2299
  %2483 = fsub fast float -0.000000e+00, %2482
  %2484 = fmul fast float %2299, %2283
  %2485 = fmul fast float %2282, %2301
  %2486 = fsub fast float %2484, %2485
  %2487 = call float @dx.op.dot3.f32(i32 55, float %2240, float %2243, float %2246, float %2481, float %2483, float %2486)  ; Dot3(ax,ay,az,bx,by,bz)
  %2488 = fmul fast float %2487, %2481
  %2489 = fmul fast float %2487, %2483
  %2490 = fmul fast float %2487, %2486
  %2491 = fsub fast float %2240, %2488
  %2492 = fsub fast float %2243, %2489
  %2493 = fsub fast float %2246, %2490
  %2494 = fmul fast float %2491, %2491
  %2495 = fmul fast float %2492, %2492
  %2496 = fadd fast float %2494, %2495
  %2497 = fmul fast float %2493, %2493
  %2498 = fadd fast float %2496, %2497
  %2499 = call float @dx.op.unary.f32(i32 24, float %2498)  ; Sqrt(value)
  %2500 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2301, float 0.000000e+00, float %2491, float %2492, float %2493)  ; Dot3(ax,ay,az,bx,by,bz)
  %2501 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2301, float 0.000000e+00, float %2282, float %2283, float %2284)  ; Dot3(ax,ay,az,bx,by,bz)
  %2502 = fmul fast float %2501, %2282
  %2503 = fmul fast float %2501, %2283
  %2504 = fmul fast float %2501, %2284
  %2505 = call float @dx.op.dot3.f32(i32 55, float %2502, float %2503, float %2504, float %2491, float %2492, float %2493)  ; Dot3(ax,ay,az,bx,by,bz)
  %2506 = fcmp fast oge float %2500, %2505
  %2507 = fdiv fast float 1.000000e+00, %2499
  %2508 = call float @dx.op.dot3.f32(i32 55, float %2491, float %2492, float %2493, float %2282, float %2283, float %2284)  ; Dot3(ax,ay,az,bx,by,bz)
  %2509 = fmul fast float %2508, %2507
  %2510 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2511 = fmul fast float %2510, %2510
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = bitcast float %2512 to i32
  %2514 = ashr i32 %2513, 1
  %2515 = add nsw i32 %2514, 532487669
  %2516 = bitcast i32 %2515 to float
  %2517 = call float @dx.op.unary.f32(i32 6, float %2510)  ; FAbs(value)
  %2518 = fmul fast float %2517, 0x3FC40AE960000000
  %2519 = fsub fast float 0x3FF921FB60000000, %2518
  %2520 = fsub fast float 1.000000e+00, %2517
  %2521 = bitcast float %2520 to i32
  %2522 = ashr i32 %2521, 1
  %2523 = add nsw i32 %2522, 532487669
  %2524 = bitcast i32 %2523 to float
  %2525 = fmul fast float %2524, %2519
  %2526 = fcmp fast oge float %2510, 0.000000e+00
  %2527 = fsub fast float 0x400921FB60000000, %2525
  %2528 = select i1 %2526, float %2525, float %2527
  %2529 = fsub fast float -0.000000e+00, %2516
  %2530 = select i1 %2506, float %2529, float %2516
  %2531 = fsub fast float -0.000000e+00, %2528
  %2532 = select i1 %2506, float %2531, float %2528
  %2533 = call float @dx.op.unary.f32(i32 6, float %2393)  ; FAbs(value)
  %2534 = fmul fast float %2533, 0x3FC40AE960000000
  %2535 = fsub fast float 0x3FF921FB60000000, %2534
  %2536 = fsub fast float 1.000000e+00, %2533
  %2537 = bitcast float %2536 to i32
  %2538 = ashr i32 %2537, 1
  %2539 = add nsw i32 %2538, 532487669
  %2540 = bitcast i32 %2539 to float
  %2541 = fmul fast float %2540, %2535
  %2542 = fcmp fast oge float %2393, 0.000000e+00
  %2543 = fsub fast float 0x400921FB60000000, %2541
  %2544 = select i1 %2542, float %2541, float %2543
  %2545 = call float @dx.op.unary.f32(i32 6, float %2477)  ; FAbs(value)
  %2546 = fmul fast float %2545, 0x3FC40AE960000000
  %2547 = fsub fast float 0x3FF921FB60000000, %2546
  %2548 = fsub fast float 1.000000e+00, %2545
  %2549 = bitcast float %2548 to i32
  %2550 = ashr i32 %2549, 1
  %2551 = add nsw i32 %2550, 532487669
  %2552 = bitcast i32 %2551 to float
  %2553 = fmul fast float %2552, %2547
  %2554 = fcmp fast oge float %2477, 0.000000e+00
  %2555 = fsub fast float 0x400921FB60000000, %2553
  %2556 = select i1 %2554, float %2553, float %2555
  %2557 = fsub fast float -0.000000e+00, %2532
  %2558 = fsub fast float %2557, %2544
  %2559 = call float @dx.op.binary.f32(i32 35, float %2558, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2560 = call float @dx.op.binary.f32(i32 36, float %2559, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2561 = fadd fast float %2532, %2560
  %2562 = fsub fast float %2556, %2532
  %2563 = call float @dx.op.binary.f32(i32 35, float %2562, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2564 = call float @dx.op.binary.f32(i32 36, float %2563, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2565 = fadd fast float %2532, %2564
  %2566 = fmul fast float %2561, 2.000000e+00
  %2567 = fsub fast float %2566, %2532
  %2568 = call float @dx.op.unary.f32(i32 12, float %2567)  ; Cos(value)
  %2569 = fsub fast float -0.000000e+00, %2568
  %2570 = fmul fast float %2565, 2.000000e+00
  %2571 = fsub fast float %2570, %2532
  %2572 = call float @dx.op.unary.f32(i32 12, float %2571)  ; Cos(value)
  %2573 = fmul fast float %2510, 2.000000e+00
  %2574 = fadd fast float %2565, %2561
  %2575 = fmul fast float %2530, %2574
  %2576 = fmul fast float %2575, 2.000000e+00
  %2577 = fsub fast float %2569, %2572
  %2578 = fadd fast float %2577, %2573
  %2579 = fadd fast float %2578, %2576
  %2580 = fmul fast float %2499, 2.500000e-01
  %2581 = fmul fast float %2580, %2579
  %2582 = fadd fast float %2581, %2295
  %2583 = add nuw nsw i32 %2294, 1
  %2584 = icmp eq i32 %2583, 2
  br i1 %2584, label %2585, label %2293

; <label>:2585                                    ; preds = %2480
  %2586 = fmul fast float %2582, 5.000000e-01
  %2587 = fsub fast float -0.000000e+00, %144
  %2588 = call float @dx.op.unary.f32(i32 84, float %82)  ; DerivCoarseY(value)
  %2589 = call float @dx.op.unary.f32(i32 6, float %2588)  ; FAbs(value)
  %2590 = call float @dx.op.unary.f32(i32 83, float %82)  ; DerivCoarseX(value)
  %2591 = call float @dx.op.unary.f32(i32 6, float %2590)  ; FAbs(value)
  %2592 = call float @dx.op.binary.f32(i32 35, float %2591, float %2589)  ; FMax(a,b)
  %2593 = fcmp fast ogt float %81, 9.843750e-01
  %2594 = fsub fast float -0.000000e+00, %161
  %2595 = fsub fast float -0.000000e+00, %162
  %2596 = fsub fast float -0.000000e+00, %163
  %2597 = select i1 %235, float 0.000000e+00, float %2211
  %2598 = call float @dx.op.dot3.f32(i32 55, float %2212, float %2213, float %2214, float %2594, float %2595, float %2596)  ; Dot3(ax,ay,az,bx,by,bz)
  %2599 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2600 = call float @dx.op.dot3.f32(i32 55, float %161, float %162, float %163, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2601 = fmul fast float %2600, 2.000000e+00
  %2602 = fmul fast float %2601, %2212
  %2603 = fmul fast float %2601, %2213
  %2604 = fmul fast float %2601, %2214
  %2605 = fsub fast float %161, %2602
  %2606 = fsub fast float %162, %2603
  %2607 = fsub fast float %163, %2604
  %2608 = call float @dx.op.binary.f32(i32 36, float %2216, float %2586)  ; FMin(a,b)
  %2609 = fsub fast float 1.000000e+00, %2608
  %2610 = bitcast float %2609 to i32
  %2611 = ashr i32 %2610, 1
  %2612 = add nsw i32 %2611, 532487669
  %2613 = bitcast i32 %2612 to float
  %2614 = fsub fast float 1.000000e+00, %2215
  %2615 = call float @dx.op.binary.f32(i32 35, float %2614, float 0x3F847AE140000000)  ; FMax(a,b)
  %2616 = fmul fast float %2615, %2615
  %2617 = fmul fast float %2616, %2616
  %2618 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %2613, float %2617, float %2618, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  %2621 = fsub fast float 1.000000e+00, %2216
  %2622 = bitcast float %2621 to i32
  %2623 = sub nsw i32 2129859010, %2622
  %2624 = bitcast i32 %2623 to float
  %2625 = call float @dx.op.dot3.f32(i32 55, float %66, float %62, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2626 = fmul fast float %2625, 0x3FD20DD760000000
  %2627 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %2628 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %2629 = fcmp fast oeq float %2628, 0.000000e+00
  %2630 = fcmp fast oeq float %2627, 0.000000e+00
  %2631 = or i1 %2630, %2629
  br i1 %2631, label %2661, label %2632

; <label>:2632                                    ; preds = %2585
  %2633 = fsub fast float -0.000000e+00, %69
  %2634 = fsub fast float -0.000000e+00, %67
  %2635 = call float @dx.op.unary.f32(i32 24, float %2628)  ; Sqrt(value)
  %2636 = fdiv fast float %2635, %2627
  %2637 = fcmp fast ogt float %2636, 0x3FFB6F8900000000
  %2638 = select i1 %2637, float 0x3FFB6F8900000000, float %2636
  %2639 = fmul fast float %2638, 0x3FE8A23460000000
  %2640 = call float @dx.op.unary.f32(i32 7, float %2639)  ; Saturate(value)
  %2641 = call float @dx.op.binary.f32(i32 35, float %2638, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2642 = fmul fast float %2640, %2627
  %2643 = fmul fast float %2641, 0x3FF279A740000000
  %2644 = fadd fast float %2643, -1.000000e+00
  %2645 = call float @dx.op.dot3.f32(i32 55, float %2633, float %2634, float %68, float %2633, float %2634, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %2646 = call float @dx.op.unary.f32(i32 25, float %2645)  ; Rsqrt(value)
  %2647 = fmul fast float %2646, %2633
  %2648 = fmul fast float %2646, %2634
  %2649 = fmul fast float %2646, %68
  %2650 = fmul fast float %2644, %2644
  %2651 = fsub fast float 1.000000e+00, %2650
  %2652 = fmul fast float %2641, 0x40005F8BE0000000
  %2653 = fsub fast float 0x400C5BF8A0000000, %2652
  %2654 = fdiv fast float %2642, %2653
  %2655 = fmul fast float %2654, 0x3FEE31C3C0000000
  %2656 = fmul fast float %2655, %2651
  %2657 = fmul fast float %2641, 0x3FDACB7480000000
  %2658 = fadd fast float %2657, 0xBFD7347680000000
  %2659 = fmul fast float %2658, %2654
  %2660 = fmul fast float %2659, %2651
  br label %2661

; <label>:2661                                    ; preds = %2632, %2585
  %2662 = phi float [ %2647, %2632 ], [ 0.000000e+00, %2585 ]
  %2663 = phi float [ %2648, %2632 ], [ 0.000000e+00, %2585 ]
  %2664 = phi float [ %2649, %2632 ], [ 0.000000e+00, %2585 ]
  %2665 = phi float [ %2656, %2632 ], [ 0.000000e+00, %2585 ]
  %2666 = phi float [ %2660, %2632 ], [ 0.000000e+00, %2585 ]
  %2667 = call float @dx.op.dot3.f32(i32 55, float %2662, float %2663, float %2664, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2668 = fmul fast float %2667, 0x3FDF454380000000
  %2669 = fmul fast float %2667, %2667
  %2670 = fmul fast float %2669, 0x3FEE471020000000
  %2671 = fadd fast float %2670, 0xBFD42F6020000000
  %2672 = fmul fast float %2627, 0x3FD20DD760000000
  %2673 = fmul fast float %2671, %2666
  %2674 = fadd fast float %2673, %2672
  %2675 = fmul fast float %2668, %2665
  %2676 = fadd fast float %2674, %2675
  %2677 = fsub fast float %2674, %2675
  %2678 = call float @dx.op.dot3.f32(i32 55, float %2662, float %2663, float %2664, float %2605, float %2606, float %2607)  ; Dot3(ax,ay,az,bx,by,bz)
  %2679 = fmul fast float %2678, 0x3FDF454380000000
  %2680 = fmul fast float %2678, %2678
  %2681 = fmul fast float %2680, 0x3FEE471020000000
  %2682 = fadd fast float %2681, 0xBFD42F6020000000
  %2683 = call float @dx.op.dot3.f32(i32 55, float %2627, float %2665, float %2666, float 0x3FD20DD760000000, float %2679, float %2682)  ; Dot3(ax,ay,az,bx,by,bz)
  %2684 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %2685 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %2686 = fcmp fast oeq float %2685, 0.000000e+00
  %2687 = fcmp fast oeq float %2684, 0.000000e+00
  %2688 = or i1 %2687, %2686
  br i1 %2688, label %2718, label %2689

; <label>:2689                                    ; preds = %2661
  %2690 = fsub fast float -0.000000e+00, %65
  %2691 = fsub fast float -0.000000e+00, %63
  %2692 = call float @dx.op.unary.f32(i32 24, float %2685)  ; Sqrt(value)
  %2693 = fdiv fast float %2692, %2684
  %2694 = fcmp fast ogt float %2693, 0x3FFB6F8900000000
  %2695 = select i1 %2694, float 0x3FFB6F8900000000, float %2693
  %2696 = fmul fast float %2695, 0x3FE8A23460000000
  %2697 = call float @dx.op.unary.f32(i32 7, float %2696)  ; Saturate(value)
  %2698 = call float @dx.op.binary.f32(i32 35, float %2695, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2699 = fmul fast float %2697, %2684
  %2700 = fmul fast float %2698, 0x3FF279A740000000
  %2701 = fadd fast float %2700, -1.000000e+00
  %2702 = call float @dx.op.dot3.f32(i32 55, float %2690, float %2691, float %64, float %2690, float %2691, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %2703 = call float @dx.op.unary.f32(i32 25, float %2702)  ; Rsqrt(value)
  %2704 = fmul fast float %2703, %2690
  %2705 = fmul fast float %2703, %2691
  %2706 = fmul fast float %2703, %64
  %2707 = fmul fast float %2701, %2701
  %2708 = fsub fast float 1.000000e+00, %2707
  %2709 = fmul fast float %2698, 0x40005F8BE0000000
  %2710 = fsub fast float 0x400C5BF8A0000000, %2709
  %2711 = fdiv fast float %2699, %2710
  %2712 = fmul fast float %2711, 0x3FEE31C3C0000000
  %2713 = fmul fast float %2712, %2708
  %2714 = fmul fast float %2698, 0x3FDACB7480000000
  %2715 = fadd fast float %2714, 0xBFD7347680000000
  %2716 = fmul fast float %2715, %2711
  %2717 = fmul fast float %2716, %2708
  br label %2718

; <label>:2718                                    ; preds = %2689, %2661
  %2719 = phi float [ %2704, %2689 ], [ 0.000000e+00, %2661 ]
  %2720 = phi float [ %2705, %2689 ], [ 0.000000e+00, %2661 ]
  %2721 = phi float [ %2706, %2689 ], [ 0.000000e+00, %2661 ]
  %2722 = phi float [ %2713, %2689 ], [ 0.000000e+00, %2661 ]
  %2723 = phi float [ %2717, %2689 ], [ 0.000000e+00, %2661 ]
  %2724 = call float @dx.op.dot3.f32(i32 55, float %2719, float %2720, float %2721, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2725 = fmul fast float %2724, 0x3FDF454380000000
  %2726 = fmul fast float %2724, %2724
  %2727 = fmul fast float %2726, 0x3FEE471020000000
  %2728 = fadd fast float %2727, 0xBFD42F6020000000
  %2729 = fmul fast float %2684, 0x3FD20DD760000000
  %2730 = fmul fast float %2728, %2723
  %2731 = fadd fast float %2730, %2729
  %2732 = fmul fast float %2725, %2722
  %2733 = fadd fast float %2731, %2732
  %2734 = fsub fast float %2731, %2732
  %2735 = call float @dx.op.dot3.f32(i32 55, float %2719, float %2720, float %2721, float %2605, float %2606, float %2607)  ; Dot3(ax,ay,az,bx,by,bz)
  %2736 = fmul fast float %2735, 0x3FDF454380000000
  %2737 = fmul fast float %2735, %2735
  %2738 = fmul fast float %2737, 0x3FEE471020000000
  %2739 = fadd fast float %2738, 0xBFD42F6020000000
  %2740 = call float @dx.op.dot3.f32(i32 55, float %2684, float %2722, float %2723, float 0x3FD20DD760000000, float %2736, float %2739)  ; Dot3(ax,ay,az,bx,by,bz)
  %2741 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %2742 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %2743 = fcmp fast oeq float %2742, 0.000000e+00
  %2744 = fcmp fast oeq float %2741, 0.000000e+00
  %2745 = or i1 %2744, %2743
  br i1 %2745, label %2775, label %2746

; <label>:2746                                    ; preds = %2718
  %2747 = fsub fast float -0.000000e+00, %61
  %2748 = fsub fast float -0.000000e+00, %59
  %2749 = call float @dx.op.unary.f32(i32 24, float %2742)  ; Sqrt(value)
  %2750 = fdiv fast float %2749, %2741
  %2751 = fcmp fast ogt float %2750, 0x3FFB6F8900000000
  %2752 = select i1 %2751, float 0x3FFB6F8900000000, float %2750
  %2753 = fmul fast float %2752, 0x3FE8A23460000000
  %2754 = call float @dx.op.unary.f32(i32 7, float %2753)  ; Saturate(value)
  %2755 = call float @dx.op.binary.f32(i32 35, float %2752, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2756 = fmul fast float %2754, %2741
  %2757 = fmul fast float %2755, 0x3FF279A740000000
  %2758 = fadd fast float %2757, -1.000000e+00
  %2759 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2748, float %60, float %2747, float %2748, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %2760 = call float @dx.op.unary.f32(i32 25, float %2759)  ; Rsqrt(value)
  %2761 = fmul fast float %2760, %2747
  %2762 = fmul fast float %2760, %2748
  %2763 = fmul fast float %2760, %60
  %2764 = fmul fast float %2758, %2758
  %2765 = fsub fast float 1.000000e+00, %2764
  %2766 = fmul fast float %2755, 0x40005F8BE0000000
  %2767 = fsub fast float 0x400C5BF8A0000000, %2766
  %2768 = fdiv fast float %2756, %2767
  %2769 = fmul fast float %2768, 0x3FEE31C3C0000000
  %2770 = fmul fast float %2769, %2765
  %2771 = fmul fast float %2755, 0x3FDACB7480000000
  %2772 = fadd fast float %2771, 0xBFD7347680000000
  %2773 = fmul fast float %2772, %2768
  %2774 = fmul fast float %2773, %2765
  br label %2775

; <label>:2775                                    ; preds = %2746, %2718
  %2776 = phi float [ %2761, %2746 ], [ 0.000000e+00, %2718 ]
  %2777 = phi float [ %2762, %2746 ], [ 0.000000e+00, %2718 ]
  %2778 = phi float [ %2763, %2746 ], [ 0.000000e+00, %2718 ]
  %2779 = phi float [ %2770, %2746 ], [ 0.000000e+00, %2718 ]
  %2780 = phi float [ %2774, %2746 ], [ 0.000000e+00, %2718 ]
  %2781 = call float @dx.op.dot3.f32(i32 55, float %2776, float %2777, float %2778, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %2782 = fmul fast float %2781, 0x3FDF454380000000
  %2783 = fmul fast float %2781, %2781
  %2784 = fmul fast float %2783, 0x3FEE471020000000
  %2785 = fadd fast float %2784, 0xBFD42F6020000000
  %2786 = fmul fast float %2741, 0x3FD20DD760000000
  %2787 = fmul fast float %2785, %2780
  %2788 = fadd fast float %2787, %2786
  %2789 = fmul fast float %2782, %2779
  %2790 = fadd fast float %2788, %2789
  %2791 = fsub fast float %2788, %2789
  %2792 = call float @dx.op.dot3.f32(i32 55, float %2776, float %2777, float %2778, float %2605, float %2606, float %2607)  ; Dot3(ax,ay,az,bx,by,bz)
  %2793 = fmul fast float %2792, 0x3FDF454380000000
  %2794 = fmul fast float %2792, %2792
  %2795 = fmul fast float %2794, 0x3FEE471020000000
  %2796 = fadd fast float %2795, 0xBFD42F6020000000
  %2797 = call float @dx.op.dot3.f32(i32 55, float %2741, float %2779, float %2780, float 0x3FD20DD760000000, float %2793, float %2796)  ; Dot3(ax,ay,az,bx,by,bz)
  %2798 = call float @dx.op.binary.f32(i32 35, float %2676, float 0.000000e+00)  ; FMax(a,b)
  %2799 = call float @dx.op.binary.f32(i32 35, float %2733, float 0.000000e+00)  ; FMax(a,b)
  %2800 = call float @dx.op.binary.f32(i32 35, float %2790, float 0.000000e+00)  ; FMax(a,b)
  %2801 = call float @dx.op.binary.f32(i32 35, float %2677, float 0.000000e+00)  ; FMax(a,b)
  %2802 = call float @dx.op.binary.f32(i32 35, float %2734, float 0.000000e+00)  ; FMax(a,b)
  %2803 = call float @dx.op.binary.f32(i32 35, float %2791, float 0.000000e+00)  ; FMax(a,b)
  %2804 = call float @dx.op.binary.f32(i32 35, float %2683, float 0.000000e+00)  ; FMax(a,b)
  %2805 = call float @dx.op.binary.f32(i32 35, float %2740, float 0.000000e+00)  ; FMax(a,b)
  %2806 = call float @dx.op.binary.f32(i32 35, float %2797, float 0.000000e+00)  ; FMax(a,b)
  %2807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2808 = extractvalue %dx.types.CBufRet.f32 %2807, 0
  %2809 = call float @dx.op.binary.f32(i32 36, float %2206, float %2808)  ; FMin(a,b)
  %2810 = fmul fast float %2809, %2609
  %2811 = fsub fast float 1.000000e+00, %2810
  %2812 = bitcast float %2811 to i32
  %2813 = sub nsw i32 2129859010, %2812
  %2814 = bitcast i32 %2813 to float
  %2815 = call float @dx.op.binary.f32(i32 36, float %2207, float %2808)  ; FMin(a,b)
  %2816 = fmul fast float %2815, %2609
  %2817 = fsub fast float 1.000000e+00, %2816
  %2818 = bitcast float %2817 to i32
  %2819 = sub nsw i32 2129859010, %2818
  %2820 = bitcast i32 %2819 to float
  %2821 = call float @dx.op.binary.f32(i32 36, float %2208, float %2808)  ; FMin(a,b)
  %2822 = fmul fast float %2821, %2609
  %2823 = fsub fast float 1.000000e+00, %2822
  %2824 = bitcast float %2823 to i32
  %2825 = sub nsw i32 2129859010, %2824
  %2826 = bitcast i32 %2825 to float
  %2827 = fmul fast float %2798, %2608
  %2828 = fmul fast float %2827, %2814
  %2829 = fmul fast float %2799, %2608
  %2830 = fmul fast float %2829, %2820
  %2831 = fmul fast float %2800, %2608
  %2832 = fmul fast float %2831, %2826
  %2833 = call float @dx.op.binary.f32(i32 36, float %2209, float %2808)  ; FMin(a,b)
  %2834 = fmul fast float %2833, %2609
  %2835 = fsub fast float 1.000000e+00, %2834
  %2836 = bitcast float %2835 to i32
  %2837 = sub nsw i32 2129859010, %2836
  %2838 = bitcast i32 %2837 to float
  %2839 = call float @dx.op.binary.f32(i32 36, float %2210, float %2808)  ; FMin(a,b)
  %2840 = fmul fast float %2839, %2609
  %2841 = fsub fast float 1.000000e+00, %2840
  %2842 = bitcast float %2841 to i32
  %2843 = sub nsw i32 2129859010, %2842
  %2844 = bitcast i32 %2843 to float
  %2845 = call float @dx.op.binary.f32(i32 36, float %2597, float %2808)  ; FMin(a,b)
  %2846 = fmul fast float %2845, %2609
  %2847 = fsub fast float 1.000000e+00, %2846
  %2848 = bitcast float %2847 to i32
  %2849 = sub nsw i32 2129859010, %2848
  %2850 = bitcast i32 %2849 to float
  %2851 = fmul fast float %2804, %2608
  %2852 = fmul fast float %2851, %2838
  %2853 = fmul fast float %2805, %2608
  %2854 = fmul fast float %2853, %2844
  %2855 = fmul fast float %2806, %2608
  %2856 = fmul fast float %2855, %2850
  %2857 = call float @dx.op.dot3.f32(i32 55, float %2828, float %2830, float %2832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2858 = select i1 %235, float 0.000000e+00, float %2828
  %2859 = select i1 %235, float %2857, float %2830
  %2860 = select i1 %235, float 0.000000e+00, float %2832
  %2861 = call float @dx.op.dot3.f32(i32 55, float %2801, float %2802, float %2803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2862 = select i1 %235, float 0.000000e+00, float %2801
  %2863 = select i1 %235, float %2861, float %2802
  %2864 = select i1 %235, float 0.000000e+00, float %2803
  %2865 = call float @dx.op.dot3.f32(i32 55, float %2852, float %2854, float %2856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = select i1 %235, float 0.000000e+00, float %2852
  %2867 = select i1 %235, float %2865, float %2854
  %2868 = select i1 %235, float 0.000000e+00, float %2856
  %2869 = fmul fast float %942, %942
  %2870 = call float @dx.op.unary.f32(i32 7, float %2869)  ; Saturate(value)
  %2871 = fmul fast float %2599, 9.843750e-01
  %2872 = fmul fast float %2215, 9.843750e-01
  %2873 = fadd fast float %2871, 7.812500e-03
  %2874 = fadd fast float %2872, 7.812500e-03
  %2875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %2873, float %2874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.ResRet.f32 %2875, 1
  %2878 = extractvalue %dx.types.ResRet.f32 %2875, 2
  %2879 = extractvalue %dx.types.ResRet.f32 %2875, 3
  %2880 = fsub fast float 1.000000e+00, %2870
  %2881 = fsub fast float %2878, %2876
  %2882 = fsub fast float %2879, %2877
  %2883 = fmul fast float %2881, %2880
  %2884 = fmul fast float %2882, %2880
  %2885 = fadd fast float %2883, %2876
  %2886 = fadd fast float %2884, %2877
  %2887 = fmul fast float %2885, %2209
  %2888 = fmul fast float %2885, %2210
  %2889 = fmul fast float %2885, %2597
  %2890 = fadd fast float %2887, %2886
  %2891 = fadd fast float %2888, %2886
  %2892 = fadd fast float %2889, %2886
  %2893 = fcmp fast ogt float %1542, 0.000000e+00
  br i1 %2893, label %2894, label %2920

; <label>:2894                                    ; preds = %2775
  %2895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1542, float %2599, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2896 = extractvalue %dx.types.ResRet.f32 %2895, 0
  %2897 = extractvalue %dx.types.ResRet.f32 %2895, 1
  %2898 = extractvalue %dx.types.ResRet.f32 %2895, 2
  %2899 = fadd fast float %2896, -5.000000e-01
  %2900 = fadd fast float %2897, -5.000000e-01
  %2901 = fadd fast float %2898, -5.000000e-01
  %2902 = fsub fast float 1.000000e+00, %2209
  %2903 = fsub fast float 1.000000e+00, %2210
  %2904 = fsub fast float 1.000000e+00, %2597
  %2905 = fmul fast float %2209, 4.000000e+00
  %2906 = fmul fast float %2905, %2902
  %2907 = fmul fast float %2906, %2899
  %2908 = fmul fast float %2210, 4.000000e+00
  %2909 = fmul fast float %2908, %2903
  %2910 = fmul fast float %2909, %2900
  %2911 = fmul fast float %2597, 4.000000e+00
  %2912 = fmul fast float %2911, %2904
  %2913 = fmul fast float %2912, %2901
  %2914 = fadd fast float %2907, %2890
  %2915 = fadd fast float %2910, %2891
  %2916 = fadd fast float %2913, %2892
  %2917 = call float @dx.op.unary.f32(i32 7, float %2914)  ; Saturate(value)
  %2918 = call float @dx.op.unary.f32(i32 7, float %2915)  ; Saturate(value)
  %2919 = call float @dx.op.unary.f32(i32 7, float %2916)  ; Saturate(value)
  br label %2920

; <label>:2920                                    ; preds = %2894, %2775
  %2921 = phi float [ %2917, %2894 ], [ %2890, %2775 ]
  %2922 = phi float [ %2918, %2894 ], [ %2891, %2775 ]
  %2923 = phi float [ %2919, %2894 ], [ %2892, %2775 ]
  %2924 = call float @dx.op.binary.f32(i32 35, float %2922, float %2923)  ; FMax(a,b)
  %2925 = call float @dx.op.binary.f32(i32 35, float %2921, float %2924)  ; FMax(a,b)
  %2926 = fsub fast float 1.000000e+00, %2925
  %2927 = fmul fast float %2925, %2215
  %2928 = fadd fast float %2927, %2215
  %2929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2930 = extractvalue %dx.types.CBufRet.f32 %2929, 2
  %2931 = extractvalue %dx.types.CBufRet.f32 %2929, 3
  %2932 = fmul fast float %2928, %2930
  %2933 = fadd fast float %2932, %2931
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2935 = fsub fast float 1.000000e+00, %2620
  %2936 = fadd fast float %2935, %2934
  %2937 = call float @dx.op.unary.f32(i32 7, float %2936)  ; Saturate(value)
  %2938 = fcmp fast olt float %2937, 1.000000e+00
  br i1 %2938, label %2939, label %3415

; <label>:2939                                    ; preds = %2920
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 3
  %2943 = fmul fast float %2941, %94
  %2944 = fmul fast float %2942, %95
  %2945 = fptoui float %2943 to i32
  %2946 = fptoui float %2944 to i32
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.CBufRet.f32 %2947, 2
  %2950 = extractvalue %dx.types.CBufRet.f32 %2947, 3
  %2951 = fadd fast float %82, -4.000000e+00
  %2952 = call float @dx.op.binary.f32(i32 35, float %2951, float 0.000000e+00)  ; FMax(a,b)
  %2953 = fadd fast float %2952, %2948
  %2954 = fmul fast float %2953, %2949
  %2955 = call float @dx.op.unary.f32(i32 23, float %2954)  ; Log(value)
  %2956 = fmul fast float %2955, %2950
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 2
  %2959 = fmul fast float %2956, %2958
  %2960 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2961 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2962 = extractvalue %dx.types.CBufRet.i32 %2961, 1
  %2963 = add i32 %2962, -1
  %2964 = uitofp i32 %2962 to float
  %2965 = fmul fast float %2964, %2960
  %2966 = fptoui float %2965 to i32
  %2967 = call i32 @dx.op.binary.i32(i32 40, i32 %2966, i32 %2963)  ; UMin(a,b)
  %2968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.i32 %2968, 2
  %2970 = extractvalue %dx.types.CBufRet.i32 %2968, 3
  %2971 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2946, i32 %2969, i32 %2945)  ; UMad(a,b,c)
  %2972 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2967, i32 %2970, i32 %2971)  ; UMad(a,b,c)
  %2973 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %2974 = fptoui float %2973 to i32
  %2975 = lshr i32 %2974, 5
  %2976 = call i32 @dx.op.binary.i32(i32 40, i32 %2975, i32 8191)  ; UMin(a,b)
  %2977 = fsub fast float %2023, %144
  %2978 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  %2979 = fcmp fast ogt float %2978, 0.000000e+00
  %2980 = fcmp fast ogt float %2607, 0.000000e+00
  %2981 = and i1 %2980, %2979
  br i1 %2981, label %2982, label %3011

; <label>:2982                                    ; preds = %2939
  %2983 = call float @dx.op.dot3.f32(i32 55, float %2605, float %2606, float %2607, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2984 = call float @dx.op.binary.f32(i32 35, float %2983, float -1.000000e+00)  ; FMax(a,b)
  %2985 = call float @dx.op.binary.f32(i32 36, float %2984, float 1.000000e+00)  ; FMin(a,b)
  %2986 = fmul fast float %2985, %2985
  %2987 = fsub fast float 1.000000e+00, %2986
  %2988 = fmul fast float %2987, 0x3FFC6E2300000000
  %2989 = fsub fast float 1.000000e+00, %2988
  %2990 = fcmp fast ogt float %2989, 0.000000e+00
  %2991 = call float @dx.op.unary.f32(i32 24, float %2989)  ; Sqrt(value)
  %2992 = fsub fast float 1.000000e+00, %2991
  %2993 = call float @dx.op.unary.f32(i32 23, float %2992)  ; Log(value)
  %2994 = fmul fast float %2993, 5.000000e+00
  %2995 = call float @dx.op.unary.f32(i32 21, float %2994)  ; Exp(value)
  %2996 = fmul fast float %2995, 0x3FEF591A60000000
  %2997 = fadd fast float %2996, 0x3F94DCB540000000
  %2998 = select i1 %2990, float %2997, float 1.000000e+00
  %2999 = fcmp fast oge float %2998, 1.000000e+00
  %3000 = fmul fast float %2983, 2.000000e+00
  %3001 = fadd fast float %3000, %2607
  %3002 = select i1 %2999, float %3001, float %2607
  %3003 = fsub fast float %3002, %2607
  %3004 = fmul fast float %3003, %2978
  %3005 = fadd fast float %3004, %2607
  %3006 = call float @dx.op.dot3.f32(i32 55, float %2605, float %2606, float %3005, float %2605, float %2606, float %3005)  ; Dot3(ax,ay,az,bx,by,bz)
  %3007 = call float @dx.op.unary.f32(i32 25, float %3006)  ; Rsqrt(value)
  %3008 = fmul fast float %3007, %2605
  %3009 = fmul fast float %3007, %2606
  %3010 = fmul fast float %3005, %3007
  br label %3011

; <label>:3011                                    ; preds = %2982, %2939
  %3012 = phi float [ %3008, %2982 ], [ %2605, %2939 ]
  %3013 = phi float [ %3009, %2982 ], [ %2606, %2939 ]
  %3014 = phi float [ %3010, %2982 ], [ %2607, %2939 ]
  %3015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3016 = extractvalue %dx.types.CBufRet.i32 %3015, 2
  %3017 = add nsw i32 %3016, -1
  %3018 = call i32 @dx.op.binary.i32(i32 37, i32 %3017, i32 0)  ; IMax(a,b)
  %3019 = shl i32 %2976, 2
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3019, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = lshr i32 %3021, 16
  %3023 = and i32 %3021, 65535
  %3024 = lshr i32 %3021, 21
  %3025 = lshr i32 %3023, 5
  %3026 = call i32 @dx.op.binary.i32(i32 40, i32 %3025, i32 %3018)  ; UMin(a,b)
  %3027 = icmp ugt i32 %3024, %3026
  br i1 %3027, label %3391, label %3028

; <label>:3028                                    ; preds = %3011
  br label %3029

; <label>:3029                                    ; preds = %3383, %3028
  %3030 = phi float [ %3384, %3383 ], [ 0.000000e+00, %3028 ]
  %3031 = phi float [ %3385, %3383 ], [ 0.000000e+00, %3028 ]
  %3032 = phi float [ %3386, %3383 ], [ 0.000000e+00, %3028 ]
  %3033 = phi float [ %3387, %3383 ], [ 1.000000e+00, %3028 ]
  %3034 = phi i32 [ %3388, %3383 ], [ %3024, %3028 ]
  %3035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3036 = extractvalue %dx.types.CBufRet.i32 %3035, 2
  %3037 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2972, i32 %3036, i32 %3034)  ; UMad(a,b,c)
  %3038 = shl i32 %3037, 2
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = shl i32 %3034, 5
  %3042 = sub nsw i32 %3022, %3041
  %3043 = call i32 @dx.op.binary.i32(i32 37, i32 %3042, i32 0)  ; IMax(a,b)
  %3044 = call i32 @dx.op.binary.i32(i32 38, i32 %3043, i32 31)  ; IMin(a,b)
  %3045 = sub nsw i32 1, %3022
  %3046 = add nsw i32 %3045, %3023
  %3047 = call i32 @dx.op.binary.i32(i32 37, i32 %3046, i32 0)  ; IMax(a,b)
  %3048 = call i32 @dx.op.binary.i32(i32 38, i32 %3047, i32 32)  ; IMin(a,b)
  %3049 = and i32 %3048, 31
  %3050 = shl i32 -1, %3049
  %3051 = xor i32 %3050, -1
  %3052 = and i32 %3044, 31
  %3053 = shl i32 %3051, %3052
  %3054 = icmp eq i32 %3048, 32
  %3055 = select i1 %3054, i32 -1, i32 %3053
  %3056 = and i32 %3055, %3040
  %3057 = icmp eq i32 %3056, 0
  br i1 %3057, label %3383, label %3058

; <label>:3058                                    ; preds = %3029
  br label %3059

; <label>:3059                                    ; preds = %3166, %3058
  %3060 = phi float [ %3167, %3166 ], [ %3030, %3058 ]
  %3061 = phi float [ %3168, %3166 ], [ %3031, %3058 ]
  %3062 = phi float [ %3169, %3166 ], [ %3032, %3058 ]
  %3063 = phi float [ %3170, %3166 ], [ %3033, %3058 ]
  %3064 = phi i32 [ %3069, %3166 ], [ %3056, %3058 ]
  %3065 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3064)  ; FirstbitLo(value)
  %3066 = add i32 %3065, %3041
  %3067 = and i32 %3065, 31
  %3068 = shl i32 1, %3067
  %3069 = xor i32 %3068, %3064
  %3070 = mul i32 %3066, 72
  %3071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.f32 %3071, 0
  %3073 = extractvalue %dx.types.ResRet.f32 %3071, 1
  %3074 = extractvalue %dx.types.ResRet.f32 %3071, 2
  %3075 = add i32 %3070, 12
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = add i32 %3070, 16
  %3079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3078, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.f32 %3079, 0
  %3081 = extractvalue %dx.types.ResRet.f32 %3079, 1
  %3082 = extractvalue %dx.types.ResRet.f32 %3079, 2
  %3083 = add i32 %3070, 28
  %3084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.f32 %3084, 0
  %3086 = add i32 %3070, 32
  %3087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.f32 %3087, 0
  %3089 = extractvalue %dx.types.ResRet.f32 %3087, 1
  %3090 = extractvalue %dx.types.ResRet.f32 %3087, 2
  %3091 = extractvalue %dx.types.ResRet.f32 %3087, 3
  %3092 = add i32 %3070, 48
  %3093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.f32 %3093, 0
  %3095 = extractvalue %dx.types.ResRet.f32 %3093, 1
  %3096 = add i32 %3070, 56
  %3097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.f32 %3097, 0
  %3099 = extractvalue %dx.types.ResRet.f32 %3097, 1
  %3100 = add i32 %3070, 64
  %3101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3100, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.f32 %3101, 0
  %3103 = extractvalue %dx.types.ResRet.f32 %3101, 1
  %3104 = mul i32 %3066, 60
  %3105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.f32 %3105, 0
  %3107 = extractvalue %dx.types.ResRet.f32 %3105, 1
  %3108 = extractvalue %dx.types.ResRet.f32 %3105, 2
  %3109 = add i32 %3104, 12
  %3110 = add i32 %3104, 48
  %3111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 0
  %3113 = extractvalue %dx.types.ResRet.f32 %3111, 1
  %3114 = extractvalue %dx.types.ResRet.f32 %3111, 2
  %3115 = and i32 %3077, 32767
  %3116 = bitcast float %3072 to i32
  %3117 = icmp eq i32 %3116, -1
  %3118 = bitcast float %3073 to i32
  %3119 = and i32 %3077, 32768
  %3120 = icmp ne i32 %3119, 0
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 0
  %3123 = extractvalue %dx.types.CBufRet.f32 %3121, 1
  %3124 = extractvalue %dx.types.CBufRet.f32 %3121, 2
  %3125 = fsub fast float %3106, %3122
  %3126 = fsub fast float %3107, %3123
  %3127 = fsub fast float %3108, %3124
  %3128 = fsub fast float %142, %3125
  %3129 = fsub fast float %143, %3126
  %3130 = fsub fast float %144, %3127
  %3131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.ResRet.f32 %3131, 1
  %3134 = extractvalue %dx.types.ResRet.f32 %3131, 2
  %3135 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float %3132, float %3133, float %3134)  ; Dot3(ax,ay,az,bx,by,bz)
  %3136 = add i32 %3104, 24
  %3137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  %3139 = extractvalue %dx.types.ResRet.f32 %3137, 1
  %3140 = extractvalue %dx.types.ResRet.f32 %3137, 2
  %3141 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float %3138, float %3139, float %3140)  ; Dot3(ax,ay,az,bx,by,bz)
  %3142 = add i32 %3104, 36
  %3143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  %3145 = extractvalue %dx.types.ResRet.f32 %3143, 1
  %3146 = extractvalue %dx.types.ResRet.f32 %3143, 2
  %3147 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float %3144, float %3145, float %3146)  ; Dot3(ax,ay,az,bx,by,bz)
  %3148 = call float @dx.op.unary.f32(i32 6, float %3135)  ; FAbs(value)
  %3149 = call float @dx.op.unary.f32(i32 6, float %3141)  ; FAbs(value)
  %3150 = call float @dx.op.unary.f32(i32 6, float %3147)  ; FAbs(value)
  %3151 = fsub fast float %3112, %3148
  %3152 = fsub fast float %3113, %3149
  %3153 = fsub fast float %3114, %3150
  %3154 = fmul fast float %3151, %3080
  %3155 = fmul fast float %3152, %3081
  %3156 = fmul fast float %3153, %3082
  %3157 = call float @dx.op.binary.f32(i32 36, float %3155, float %3156)  ; FMin(a,b)
  %3158 = call float @dx.op.binary.f32(i32 36, float %3154, float %3157)  ; FMin(a,b)
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3160 = call float @dx.op.binary.f32(i32 36, float %3063, float %3159)  ; FMin(a,b)
  %3161 = uitofp i1 %3120 to float
  %3162 = fadd fast float %2978, 1.000000e+00
  %3163 = fsub fast float %3162, %3161
  %3164 = fmul fast float %3160, %3163
  %3165 = fcmp fast ogt float %3164, 0.000000e+00
  br i1 %3165, label %3172, label %3166

; <label>:3166                                    ; preds = %3314, %3059
  %3167 = phi float [ %3378, %3314 ], [ %3060, %3059 ]
  %3168 = phi float [ %3379, %3314 ], [ %3061, %3059 ]
  %3169 = phi float [ %3380, %3314 ], [ %3062, %3059 ]
  %3170 = phi float [ %3381, %3314 ], [ %3063, %3059 ]
  %3171 = icmp eq i32 %3064, %3068
  br i1 %3171, label %3382, label %3059

; <label>:3172                                    ; preds = %3059
  br i1 %3117, label %3230, label %3173

; <label>:3173                                    ; preds = %3172
  %3174 = fsub fast float -0.000000e+00, %3132
  %3175 = fsub fast float -0.000000e+00, %3133
  %3176 = fsub fast float -0.000000e+00, %3134
  %3177 = call float @dx.op.dot3.f32(i32 55, float %3012, float %3013, float %3014, float %3174, float %3175, float %3176)  ; Dot3(ax,ay,az,bx,by,bz)
  %3178 = fsub fast float -0.000000e+00, %3177
  %3179 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float %3174, float %3175, float %3176)  ; Dot3(ax,ay,az,bx,by,bz)
  %3180 = fadd fast float %3179, %3095
  %3181 = fadd fast float %3094, %3179
  %3182 = fsub fast float -0.000000e+00, %3181
  %3183 = fcmp ogt float %3177, -0.000000e+00
  %3184 = select i1 %3183, float %3182, float %3180
  %3185 = call float @dx.op.unary.f32(i32 6, float %3178)  ; FAbs(value)
  %3186 = fdiv fast float 1.000000e+00, %3185
  %3187 = fmul fast float %3184, %3186
  %3188 = call float @dx.op.binary.f32(i32 35, float %3187, float 0.000000e+00)  ; FMax(a,b)
  %3189 = fsub fast float -0.000000e+00, %3138
  %3190 = fsub fast float -0.000000e+00, %3139
  %3191 = fsub fast float -0.000000e+00, %3140
  %3192 = call float @dx.op.dot3.f32(i32 55, float %3012, float %3013, float %3014, float %3189, float %3190, float %3191)  ; Dot3(ax,ay,az,bx,by,bz)
  %3193 = fsub fast float -0.000000e+00, %3192
  %3194 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float %3189, float %3190, float %3191)  ; Dot3(ax,ay,az,bx,by,bz)
  %3195 = fadd fast float %3194, %3099
  %3196 = fadd fast float %3098, %3194
  %3197 = fsub fast float -0.000000e+00, %3196
  %3198 = fcmp ogt float %3192, -0.000000e+00
  %3199 = select i1 %3198, float %3197, float %3195
  %3200 = call float @dx.op.unary.f32(i32 6, float %3193)  ; FAbs(value)
  %3201 = fdiv fast float 1.000000e+00, %3200
  %3202 = fmul fast float %3199, %3201
  %3203 = call float @dx.op.binary.f32(i32 35, float %3202, float 0.000000e+00)  ; FMax(a,b)
  %3204 = fsub fast float -0.000000e+00, %3144
  %3205 = fsub fast float -0.000000e+00, %3145
  %3206 = fsub fast float -0.000000e+00, %3146
  %3207 = call float @dx.op.dot3.f32(i32 55, float %3012, float %3013, float %3014, float %3204, float %3205, float %3206)  ; Dot3(ax,ay,az,bx,by,bz)
  %3208 = fsub fast float -0.000000e+00, %3207
  %3209 = call float @dx.op.dot3.f32(i32 55, float %3128, float %3129, float %3130, float %3204, float %3205, float %3206)  ; Dot3(ax,ay,az,bx,by,bz)
  %3210 = fadd fast float %3209, %3103
  %3211 = fadd fast float %3102, %3209
  %3212 = fsub fast float -0.000000e+00, %3211
  %3213 = fcmp ogt float %3207, -0.000000e+00
  %3214 = select i1 %3213, float %3212, float %3210
  %3215 = call float @dx.op.unary.f32(i32 6, float %3208)  ; FAbs(value)
  %3216 = fdiv fast float 1.000000e+00, %3215
  %3217 = fmul fast float %3214, %3216
  %3218 = call float @dx.op.binary.f32(i32 35, float %3217, float 0.000000e+00)  ; FMax(a,b)
  %3219 = call float @dx.op.binary.f32(i32 36, float %3203, float %3218)  ; FMin(a,b)
  %3220 = call float @dx.op.binary.f32(i32 36, float %3188, float %3219)  ; FMin(a,b)
  %3221 = fmul fast float %3220, %3012
  %3222 = fmul fast float %3220, %3013
  %3223 = fmul fast float %3220, %3014
  %3224 = fadd fast float %3221, %142
  %3225 = fadd fast float %3222, %143
  %3226 = fadd fast float %3223, %144
  %3227 = fsub fast float %3224, %3072
  %3228 = fsub fast float %3225, %3073
  %3229 = fsub fast float %3226, %3074
  br label %3237

; <label>:3230                                    ; preds = %3172
  %3231 = fmul fast float %3012, 8.096000e+03
  %3232 = fmul fast float %3013, 8.096000e+03
  %3233 = fmul fast float %3014, 8.096000e+03
  %3234 = fadd fast float %3231, %142
  %3235 = fadd fast float %3232, %143
  %3236 = fadd fast float %3233, %144
  br label %3237

; <label>:3237                                    ; preds = %3230, %3173
  %3238 = phi float [ %3012, %3230 ], [ %3227, %3173 ]
  %3239 = phi float [ %3013, %3230 ], [ %3228, %3173 ]
  %3240 = phi float [ %3014, %3230 ], [ %3229, %3173 ]
  %3241 = phi float [ %3234, %3230 ], [ %3224, %3173 ]
  %3242 = phi float [ %3235, %3230 ], [ %3225, %3173 ]
  %3243 = phi float [ %3236, %3230 ], [ %3226, %3173 ]
  %3244 = fcmp fast olt float %3091, 1.000000e+00
  br i1 %3244, label %3245, label %3276, !dx.controlflow.hints !90

; <label>:3245                                    ; preds = %3237
  %3246 = fmul fast float %3240, %3089
  %3247 = fmul fast float %3239, %3090
  %3248 = fsub fast float %3246, %3247
  %3249 = fmul fast float %3238, %3090
  %3250 = fmul fast float %3240, %3088
  %3251 = fsub fast float %3249, %3250
  %3252 = fmul fast float %3239, %3088
  %3253 = fmul fast float %3238, %3089
  %3254 = fsub fast float %3252, %3253
  %3255 = fmul fast float %3248, 2.000000e+00
  %3256 = fmul fast float %3251, 2.000000e+00
  %3257 = fmul fast float %3254, 2.000000e+00
  %3258 = fmul fast float %3255, %3091
  %3259 = fmul fast float %3256, %3091
  %3260 = fmul fast float %3257, %3091
  %3261 = fmul fast float %3257, %3089
  %3262 = fmul fast float %3256, %3090
  %3263 = fmul fast float %3255, %3090
  %3264 = fmul fast float %3257, %3088
  %3265 = fmul fast float %3256, %3088
  %3266 = fmul fast float %3255, %3089
  %3267 = fadd fast float %3261, %3238
  %3268 = fadd fast float %3267, %3258
  %3269 = fsub fast float %3268, %3262
  %3270 = fsub fast float %3239, %3264
  %3271 = fadd fast float %3270, %3259
  %3272 = fadd fast float %3271, %3263
  %3273 = fadd fast float %3260, %3240
  %3274 = fsub fast float %3273, %3266
  %3275 = fadd fast float %3274, %3265
  br label %3276

; <label>:3276                                    ; preds = %3245, %3237
  %3277 = phi float [ %3269, %3245 ], [ %3238, %3237 ]
  %3278 = phi float [ %3272, %3245 ], [ %3239, %3237 ]
  %3279 = phi float [ %3275, %3245 ], [ %3240, %3237 ]
  br i1 %3117, label %3311, label %3280

; <label>:3280                                    ; preds = %3276
  %3281 = fmul fast float %2215, 0x400187C840000000
  %3282 = fadd fast float %3281, 0xC00EFC2120000000
  %3283 = fmul fast float %3282, %2215
  %3284 = fadd fast float %3283, 0x3FE5D16340000000
  %3285 = fmul fast float %3284, %2215
  %3286 = fadd fast float %3285, 1.000000e+00
  %3287 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  %3288 = fsub fast float %3241, %142
  %3289 = fsub fast float %3242, %143
  %3290 = fsub fast float %3243, %144
  %3291 = fsub fast float %3241, %3072
  %3292 = fsub fast float %3242, %3073
  %3293 = fsub fast float %3243, %3074
  %3294 = call float @dx.op.dot3.f32(i32 55, float %3288, float %3289, float %3290, float %3288, float %3289, float %3290)  ; Dot3(ax,ay,az,bx,by,bz)
  %3295 = call float @dx.op.dot3.f32(i32 55, float %3291, float %3292, float %3293, float %3291, float %3292, float %3293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3296 = fadd fast float %3295, 0x3EE4F8B580000000
  %3297 = fdiv fast float %3294, %3296
  %3298 = bitcast float %3297 to i32
  %3299 = ashr i32 %3298, 1
  %3300 = add nsw i32 %3299, 532487669
  %3301 = bitcast i32 %3300 to float
  %3302 = fmul fast float %3301, %3287
  %3303 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  %3304 = fmul fast float %3303, 0x4009981AE0000000
  %3305 = fsub fast float 0x40111BBD80000000, %3304
  %3306 = fmul fast float %3305, %3303
  %3307 = fadd fast float %3306, 0xC0009F6020000000
  %3308 = fmul fast float %3307, %3303
  %3309 = fadd fast float %3308, 1.000000e+00
  %3310 = call float @dx.op.unary.f32(i32 7, float %3309)  ; Saturate(value)
  br label %3314

; <label>:3311                                    ; preds = %3276
  %3312 = icmp ne i32 %3118, -1
  %3313 = zext i1 %3312 to i32
  br label %3314

; <label>:3314                                    ; preds = %3311, %3280
  %3315 = phi float [ %2215, %3311 ], [ %3310, %3280 ]
  %3316 = phi i32 [ %3313, %3311 ], [ 0, %3280 ]
  %3317 = fmul float %3315, 5.000000e+00
  %3318 = fsub float 5.000000e+00, %3317
  %3319 = icmp ne i32 %3316, 0
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 3
  %3322 = fadd fast float %3321, %3318
  %3323 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3322)  ; FMax(a,b)
  %3324 = call float @dx.op.unary.f32(i32 6, float %3277)  ; FAbs(value)
  %3325 = call float @dx.op.unary.f32(i32 6, float %3278)  ; FAbs(value)
  %3326 = fadd fast float %3325, %3324
  %3327 = call float @dx.op.unary.f32(i32 6, float %3279)  ; FAbs(value)
  %3328 = fadd fast float %3326, %3327
  %3329 = fcmp fast oeq float %3328, 0.000000e+00
  %3330 = fdiv fast float 1.000000e+00, %3328
  %3331 = select i1 %3329, float 1.000000e+00, float %3330
  %3332 = fmul fast float %3331, %3277
  %3333 = fmul fast float %3331, %3278
  %3334 = call float @dx.op.unary.f32(i32 6, float %3333)  ; FAbs(value)
  %3335 = call float @dx.op.unary.f32(i32 6, float %3332)  ; FAbs(value)
  %3336 = fsub fast float 1.000000e+00, %3334
  %3337 = fsub fast float 1.000000e+00, %3335
  %3338 = fcmp fast oge float %3332, 0.000000e+00
  %3339 = fcmp fast oge float %3333, 0.000000e+00
  %3340 = select i1 %3338, float 1.000000e+00, float -1.000000e+00
  %3341 = select i1 %3339, float 1.000000e+00, float -1.000000e+00
  %3342 = fcmp fast ole float %3279, 0.000000e+00
  %3343 = fmul fast float %3340, %3336
  %3344 = fmul fast float %3341, %3337
  %3345 = select i1 %3342, float %3343, float %3332
  %3346 = select i1 %3342, float %3344, float %3333
  %3347 = fmul fast float %3345, 5.000000e-01
  %3348 = fmul fast float %3346, 5.000000e-01
  %3349 = fadd fast float %3347, 5.000000e-01
  %3350 = fadd fast float %3348, 5.000000e-01
  %3351 = uitofp i32 %3115 to float
  %3352 = call float @dx.op.binary.f32(i32 36, float %3323, float 3.000000e+00)  ; FMin(a,b)
  %3353 = fadd fast float %3352, 2.000000e+00
  %3354 = call float @dx.op.unary.f32(i32 21, float %3353)  ; Exp(value)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3320, 1
  %3356 = fmul fast float %3355, %3354
  %3357 = fmul fast float %3356, 2.000000e+00
  %3358 = fsub fast float 1.000000e+00, %3357
  %3359 = fmul fast float %3349, %3358
  %3360 = fmul fast float %3350, %3358
  %3361 = fadd fast float %3359, %3356
  %3362 = fadd fast float %3360, %3356
  %3363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %48, float %3361, float %3362, float %3351, float undef, i32 0, i32 0, i32 undef, float %3323)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3364 = extractvalue %dx.types.ResRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.ResRet.f32 %3363, 1
  %3366 = extractvalue %dx.types.ResRet.f32 %3363, 2
  %3367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3368 = extractvalue %dx.types.CBufRet.f32 %3367, 3
  %3369 = fmul fast float %3368, %3085
  %3370 = call float @dx.op.binary.f32(i32 36, float %2626, float %3369)  ; FMin(a,b)
  %3371 = select i1 %3319, float %3370, float %3369
  %3372 = fmul fast float %3364, %3164
  %3373 = fmul fast float %3372, %3371
  %3374 = fmul fast float %3365, %3164
  %3375 = fmul fast float %3374, %3371
  %3376 = fmul fast float %3366, %3164
  %3377 = fmul fast float %3376, %3371
  %3378 = fadd fast float %3373, %3060
  %3379 = fadd fast float %3375, %3061
  %3380 = fadd fast float %3377, %3062
  %3381 = fsub fast float %3063, %3164
  br label %3166

; <label>:3382                                    ; preds = %3166
  br label %3383

; <label>:3383                                    ; preds = %3382, %3029
  %3384 = phi float [ %3030, %3029 ], [ %3167, %3382 ]
  %3385 = phi float [ %3031, %3029 ], [ %3168, %3382 ]
  %3386 = phi float [ %3032, %3029 ], [ %3169, %3382 ]
  %3387 = phi float [ %3033, %3029 ], [ %3170, %3382 ]
  %3388 = add i32 %3034, 1
  %3389 = icmp ugt i32 %3388, %3026
  br i1 %3389, label %3390, label %3029, !llvm.loop !91

; <label>:3390                                    ; preds = %3383
  br label %3391

; <label>:3391                                    ; preds = %3390, %3011
  %3392 = phi float [ 0.000000e+00, %3011 ], [ %3384, %3390 ]
  %3393 = phi float [ 0.000000e+00, %3011 ], [ %3385, %3390 ]
  %3394 = phi float [ 0.000000e+00, %3011 ], [ %3386, %3390 ]
  %3395 = call float @dx.op.dot3.f32(i32 55, float %3392, float %3393, float %3394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3396 = select i1 %235, float 0.000000e+00, float %3392
  %3397 = select i1 %235, float %3395, float %3393
  %3398 = select i1 %235, float 0.000000e+00, float %3394
  %3399 = fcmp fast olt float %2937, 0.000000e+00
  %3400 = call float @dx.op.unary.f32(i32 6, float %2937)  ; FAbs(value)
  %3401 = fmul fast float %3400, %2866
  %3402 = fmul fast float %3400, %2867
  %3403 = fmul fast float %3400, %2868
  %3404 = select i1 %3399, float %2866, float %3401
  %3405 = select i1 %3399, float %2867, float %3402
  %3406 = select i1 %3399, float %2868, float %3403
  %3407 = fsub fast float 1.000000e+00, %3400
  %3408 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3409 = fmul fast float %3408, %3396
  %3410 = fmul fast float %3408, %3397
  %3411 = fmul fast float %3408, %3398
  %3412 = fadd fast float %3404, %3409
  %3413 = fadd fast float %3405, %3410
  %3414 = fadd fast float %3406, %3411
  br label %3415

; <label>:3415                                    ; preds = %3391, %2920
  %3416 = phi float [ %2866, %2920 ], [ %3412, %3391 ]
  %3417 = phi float [ %2867, %2920 ], [ %3413, %3391 ]
  %3418 = phi float [ %2868, %2920 ], [ %3414, %3391 ]
  %3419 = call float @dx.op.dot3.f32(i32 55, float %2206, float %2207, float %2208, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3420 = fcmp fast ogt float %3419, 0x3E7FF19E20000000
  %3421 = fdiv fast float 1.000000e+00, %3419
  %3422 = select i1 %3420, float %3421, float 0.000000e+00
  %3423 = fmul fast float %3422, %2206
  %3424 = fmul fast float %3422, %2207
  %3425 = fmul fast float %3422, %2208
  %3426 = fadd fast float %3423, -1.000000e+00
  %3427 = fadd fast float %3424, -1.000000e+00
  %3428 = fadd fast float %3425, -1.000000e+00
  %3429 = fmul fast float %3426, 5.000000e-01
  %3430 = fmul fast float %3427, 5.000000e-01
  %3431 = fmul fast float %3428, 5.000000e-01
  %3432 = fadd fast float %3429, 1.000000e+00
  %3433 = fadd fast float %3430, 1.000000e+00
  %3434 = fadd fast float %3431, 1.000000e+00
  %3435 = call float @dx.op.binary.f32(i32 35, float %2599, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3436 = fdiv fast float %942, %3435
  %3437 = fcmp fast olt float %1642, 1.270000e+02
  %3438 = fcmp fast olt float %1643, 1.270000e+02
  %3439 = fcmp fast olt float %1644, 1.270000e+02
  %3440 = fmul fast float %1642, 0xBFF7154760000000
  %3441 = fmul fast float %3440, %3436
  %3442 = fmul fast float %1643, 0xBFF7154760000000
  %3443 = fmul fast float %3442, %3436
  %3444 = fmul fast float %1644, 0xBFF7154760000000
  %3445 = fmul fast float %3444, %3436
  %3446 = call float @dx.op.unary.f32(i32 21, float %3441)  ; Exp(value)
  %3447 = call float @dx.op.unary.f32(i32 21, float %3443)  ; Exp(value)
  %3448 = call float @dx.op.unary.f32(i32 21, float %3445)  ; Exp(value)
  %3449 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3450 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  %3451 = call float @dx.op.unary.f32(i32 7, float %3448)  ; Saturate(value)
  %3452 = select i1 %3437, float %3449, float 0.000000e+00
  %3453 = select i1 %3438, float %3450, float 0.000000e+00
  %3454 = select i1 %3439, float %3451, float 0.000000e+00
  %3455 = fmul fast float %3452, %2926
  %3456 = fmul fast float %3453, %2926
  %3457 = fmul fast float %3454, %2926
  %3458 = fadd fast float %3455, -1.000000e+00
  %3459 = fadd fast float %3456, -1.000000e+00
  %3460 = fadd fast float %3457, -1.000000e+00
  %3461 = fmul fast float %3458, %1597
  %3462 = fmul fast float %3459, %1597
  %3463 = fmul fast float %3460, %1597
  %3464 = fmul fast float %3416, %2921
  %3465 = fmul fast float %3417, %2922
  %3466 = fmul fast float %3418, %2923
  %3467 = fsub fast float 1.000000e+00, %2599
  %3468 = bitcast float %3467 to i32
  %3469 = sitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 5.000000e+00
  %3471 = fadd fast float %3470, 0xC1EFBF8940000000
  %3472 = fptosi float %3471 to i32
  %3473 = bitcast i32 %3472 to float
  %3474 = fmul fast float %3473, %1541
  %3475 = fmul fast float %2858, %3474
  %3476 = fmul fast float %3475, %2926
  %3477 = fmul fast float %3476, %3432
  %3478 = fmul fast float %2859, %3474
  %3479 = fmul fast float %3478, %2926
  %3480 = fmul fast float %3479, %3433
  %3481 = fmul fast float %2860, %3474
  %3482 = fmul fast float %3481, %2926
  %3483 = fmul fast float %3482, %3434
  %3484 = fadd fast float %3464, %1546
  %3485 = fadd fast float %3484, %3477
  %3486 = fmul fast float %3485, %1597
  %3487 = fadd fast float %3465, %1547
  %3488 = fadd fast float %3487, %3480
  %3489 = fmul fast float %3488, %1597
  %3490 = fadd fast float %3466, %1548
  %3491 = fadd fast float %3490, %3483
  %3492 = fmul fast float %3491, %1597
  %3493 = fmul fast float %2210, 0x4012D0A400000000
  %3494 = fadd fast float %3463, 1.000000e+00
  %3495 = fadd fast float %3462, 1.000000e+00
  %3496 = fadd fast float %3461, 1.000000e+00
  %3497 = fmul fast float %2926, %2860
  %3498 = fmul fast float %2926, %2859
  %3499 = fmul fast float %2926, %2858
  %3500 = fmul fast float %2614, %1597
  %3501 = fsub fast float 1.000000e+00, %3500
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3503 = fsub fast float 1.000000e+00, %3502
  %3504 = fadd fast float %3493, 0x3FDB6377A0000000
  %3505 = fmul fast float %3503, %3504
  %3506 = call float @dx.op.dot3.f32(i32 55, float %1660, float %1661, float %1662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3507 = fadd fast float %3505, %3506
  %3508 = call float @dx.op.unary.f32(i32 7, float %3507)  ; Saturate(value)
  %3509 = call float @dx.op.binary.f32(i32 35, float %3508, float 0x3F847AE140000000)  ; FMax(a,b)
  %3510 = fmul fast float %3509, %3509
  %3511 = fmul fast float %3510, %3510
  %3512 = fmul fast float %3511, 0xC00A935000000000
  %3513 = call float @dx.op.unary.f32(i32 21, float %3512)  ; Exp(value)
  %3514 = fsub fast float 1.000000e+00, %3513
  %3515 = fmul fast float %3496, %2862
  %3516 = fmul fast float %3515, %3514
  %3517 = fmul fast float %3495, %2863
  %3518 = fmul fast float %3517, %3514
  %3519 = fmul fast float %3494, %2864
  %3520 = fmul fast float %3519, %3514
  %3521 = fadd fast float %3516, %3499
  %3522 = fmul fast float %3521, %1597
  %3523 = fadd fast float %3518, %3498
  %3524 = fmul fast float %3523, %1597
  %3525 = fadd fast float %3520, %3497
  %3526 = fmul fast float %3525, %1597
  %3527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3528 = extractvalue %dx.types.CBufRet.f32 %3527, 3
  %3529 = fcmp fast oeq float %3528, 0.000000e+00
  br i1 %3529, label %5398, label %3530

; <label>:3530                                    ; preds = %3415
  %3531 = extractvalue %dx.types.CBufRet.f32 %3527, 0
  %3532 = extractvalue %dx.types.CBufRet.f32 %3527, 1
  %3533 = extractvalue %dx.types.CBufRet.f32 %3527, 2
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.CBufRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.CBufRet.f32 %3534, 2
  %3538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.CBufRet.f32 %3538, 1
  %3541 = call float @dx.op.dot3.f32(i32 55, float %3535, float %3536, float %3537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3542 = select i1 %235, float %3539, float %3535
  %3543 = select i1 %235, float %3541, float %3536
  %3544 = select i1 %235, float %3540, float %3537
  %3545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3546 = extractvalue %dx.types.CBufRet.f32 %3545, 2
  %3547 = fmul fast float %3546, %97
  %3548 = fmul fast float %3546, %98
  %3549 = fmul fast float %3546, %99
  %3550 = fadd fast float %3547, %142
  %3551 = fadd fast float %3548, %143
  %3552 = fadd fast float %3549, %144
  %3553 = fcmp fast olt float %3528, 0.000000e+00
  br i1 %3553, label %4649, label %3554

; <label>:3554                                    ; preds = %3530
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.CBufRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.CBufRet.f32 %3555, 2
  %3559 = extractvalue %dx.types.CBufRet.f32 %3555, 3
  %3560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3560, 0
  %3562 = extractvalue %dx.types.CBufRet.f32 %3560, 1
  %3563 = extractvalue %dx.types.CBufRet.f32 %3560, 2
  %3564 = extractvalue %dx.types.CBufRet.f32 %3560, 3
  %3565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3566 = extractvalue %dx.types.CBufRet.f32 %3565, 0
  %3567 = extractvalue %dx.types.CBufRet.f32 %3565, 1
  %3568 = extractvalue %dx.types.CBufRet.f32 %3565, 2
  %3569 = extractvalue %dx.types.CBufRet.f32 %3565, 3
  %3570 = fmul fast float %3556, %3550
  %3571 = call float @dx.op.tertiary.f32(i32 46, float %3551, float %3557, float %3570)  ; FMad(a,b,c)
  %3572 = call float @dx.op.tertiary.f32(i32 46, float %3552, float %3558, float %3571)  ; FMad(a,b,c)
  %3573 = fadd fast float %3572, %3559
  %3574 = fmul fast float %3561, %3550
  %3575 = call float @dx.op.tertiary.f32(i32 46, float %3551, float %3562, float %3574)  ; FMad(a,b,c)
  %3576 = call float @dx.op.tertiary.f32(i32 46, float %3552, float %3563, float %3575)  ; FMad(a,b,c)
  %3577 = fadd fast float %3576, %3564
  %3578 = fmul fast float %3566, %3550
  %3579 = call float @dx.op.tertiary.f32(i32 46, float %3551, float %3567, float %3578)  ; FMad(a,b,c)
  %3580 = call float @dx.op.tertiary.f32(i32 46, float %3552, float %3568, float %3579)  ; FMad(a,b,c)
  %3581 = fadd fast float %3580, %3569
  %3582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3583 = extractvalue %dx.types.CBufRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.CBufRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.CBufRet.f32 %3582, 3
  %3586 = fmul fast float %3585, %3573
  %3587 = fmul fast float %3585, %3577
  %3588 = fadd fast float %3586, %3583
  %3589 = fadd fast float %3587, %3584
  %3590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3591 = extractvalue %dx.types.CBufRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.CBufRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.CBufRet.f32 %3590, 3
  %3594 = fmul fast float %3593, %3573
  %3595 = fmul fast float %3593, %3577
  %3596 = fadd fast float %3594, %3591
  %3597 = fadd fast float %3595, %3592
  %3598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3599 = extractvalue %dx.types.CBufRet.f32 %3598, 1
  %3600 = fsub fast float %3599, %3581
  %3601 = extractvalue %dx.types.CBufRet.f32 %3598, 2
  %3602 = fmul fast float %3600, %3601
  %3603 = fsub fast float 1.000000e+00, %3602
  %3604 = call float @dx.op.unary.f32(i32 7, float %3603)  ; Saturate(value)
  %3605 = extractvalue %dx.types.CBufRet.f32 %3590, 2
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 2
  %3608 = fadd fast float %3607, %3605
  %3609 = fcmp fast ogt float %3608, 0.000000e+00
  br i1 %3609, label %3610, label %3634

; <label>:3610                                    ; preds = %3554
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.CBufRet.f32 %3611, 1
  %3614 = fsub fast float %3596, %3612
  %3615 = fsub fast float %3597, %3613
  %3616 = fcmp fast olt float %3614, 0.000000e+00
  %3617 = fcmp fast olt float %3615, 0.000000e+00
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.CBufRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.CBufRet.f32 %3618, 3
  %3623 = select i1 %3616, float %3619, float %3621
  %3624 = select i1 %3617, float %3620, float %3622
  %3625 = fmul fast float %3623, %3614
  %3626 = fmul fast float %3624, %3615
  %3627 = call float @dx.op.unary.f32(i32 6, float %3625)  ; FAbs(value)
  %3628 = call float @dx.op.unary.f32(i32 6, float %3626)  ; FAbs(value)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3545, 0
  %3630 = call float @dx.op.binary.f32(i32 35, float %3627, float %3628)  ; FMax(a,b)
  %3631 = fsub fast float %3629, %3630
  %3632 = call float @dx.op.unary.f32(i32 7, float %3631)  ; Saturate(value)
  %3633 = fmul fast float %3632, %3604
  br label %3634

; <label>:3634                                    ; preds = %3610, %3554
  %3635 = phi float [ %3633, %3610 ], [ 0.000000e+00, %3554 ]
  %3636 = extractvalue %dx.types.CBufRet.f32 %3582, 2
  %3637 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3638 = fadd fast float %3637, %3636
  %3639 = fcmp fast ogt float %3638, 0.000000e+00
  %3640 = extractvalue %dx.types.CBufRet.f32 %3545, 0
  br i1 %3639, label %3641, label %3664

; <label>:3641                                    ; preds = %3634
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.CBufRet.f32 %3642, 1
  %3645 = fsub fast float %3588, %3643
  %3646 = fsub fast float %3589, %3644
  %3647 = fcmp fast olt float %3645, 0.000000e+00
  %3648 = fcmp fast olt float %3646, 0.000000e+00
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.CBufRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.CBufRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.CBufRet.f32 %3649, 3
  %3654 = select i1 %3647, float %3650, float %3652
  %3655 = select i1 %3648, float %3651, float %3653
  %3656 = fmul fast float %3654, %3645
  %3657 = fmul fast float %3655, %3646
  %3658 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3659 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3660 = call float @dx.op.binary.f32(i32 35, float %3658, float %3659)  ; FMax(a,b)
  %3661 = fsub fast float %3640, %3660
  %3662 = call float @dx.op.unary.f32(i32 7, float %3661)  ; Saturate(value)
  %3663 = fmul fast float %3662, %3604
  br label %3664

; <label>:3664                                    ; preds = %3641, %3634
  %3665 = phi float [ %3663, %3641 ], [ 0.000000e+00, %3634 ]
  %3666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3666, 1
  %3668 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 1
  %3672 = fsub fast float %3573, %3670
  %3673 = fsub fast float %3577, %3671
  %3674 = fcmp fast olt float %3672, 0.000000e+00
  %3675 = fcmp fast olt float %3673, 0.000000e+00
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 0
  %3678 = extractvalue %dx.types.CBufRet.f32 %3676, 1
  %3679 = extractvalue %dx.types.CBufRet.f32 %3676, 2
  %3680 = extractvalue %dx.types.CBufRet.f32 %3676, 3
  %3681 = select i1 %3674, float %3677, float %3679
  %3682 = select i1 %3675, float %3678, float %3680
  %3683 = fmul fast float %3681, %3672
  %3684 = fmul fast float %3682, %3673
  %3685 = call float @dx.op.unary.f32(i32 6, float %3683)  ; FAbs(value)
  %3686 = call float @dx.op.unary.f32(i32 6, float %3684)  ; FAbs(value)
  %3687 = call float @dx.op.binary.f32(i32 35, float %3685, float %3686)  ; FMax(a,b)
  %3688 = fsub fast float %3640, %3687
  %3689 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3690 = call float @dx.op.binary.f32(i32 36, float %3689, float %3668)  ; FMin(a,b)
  %3691 = fmul fast float %3690, %3604
  %3692 = fsub fast float %3665, %3691
  %3693 = fsub fast float %3635, %3665
  %3694 = fsub fast float %3693, %3691
  %3695 = call float @dx.op.binary.f32(i32 35, float %3691, float %3665)  ; FMax(a,b)
  %3696 = call float @dx.op.binary.f32(i32 35, float %3695, float %3635)  ; FMax(a,b)
  %3697 = fcmp fast olt float %3696, 1.000000e+00
  br i1 %3697, label %3698, label %4096, !dx.controlflow.hints !93

; <label>:3698                                    ; preds = %3664
  %3699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3699, 0
  %3701 = fcmp fast une float %3700, 0.000000e+00
  br i1 %3701, label %3702, label %4096, !dx.controlflow.hints !94

; <label>:3702                                    ; preds = %3698
  %3703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3704 = extractvalue %dx.types.CBufRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.CBufRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.CBufRet.f32 %3703, 2
  %3707 = extractvalue %dx.types.CBufRet.f32 %3703, 3
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.CBufRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.CBufRet.f32 %3708, 3
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = extractvalue %dx.types.CBufRet.f32 %3713, 1
  %3716 = extractvalue %dx.types.CBufRet.f32 %3713, 2
  %3717 = extractvalue %dx.types.CBufRet.f32 %3713, 3
  %3718 = fmul fast float %3704, %3550
  %3719 = call float @dx.op.tertiary.f32(i32 46, float %3551, float %3705, float %3718)  ; FMad(a,b,c)
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3552, float %3706, float %3719)  ; FMad(a,b,c)
  %3721 = fadd fast float %3720, %3707
  %3722 = fmul fast float %3709, %3550
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3551, float %3710, float %3722)  ; FMad(a,b,c)
  %3724 = call float @dx.op.tertiary.f32(i32 46, float %3552, float %3711, float %3723)  ; FMad(a,b,c)
  %3725 = fadd fast float %3724, %3712
  %3726 = fmul fast float %3714, %3550
  %3727 = call float @dx.op.tertiary.f32(i32 46, float %3551, float %3715, float %3726)  ; FMad(a,b,c)
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3552, float %3716, float %3727)  ; FMad(a,b,c)
  %3729 = fadd fast float %3728, %3717
  %3730 = fcmp fast oge float %3721, 1.000000e+00
  %3731 = fcmp fast oge float %3725, 1.000000e+00
  %3732 = or i1 %3730, %3731
  %3733 = fcmp fast olt float %3721, 0.000000e+00
  %3734 = fcmp fast olt float %3725, 0.000000e+00
  %3735 = or i1 %3733, %3734
  %3736 = or i1 %3732, %3735
  br i1 %3736, label %4096, label %3737, !dx.controlflow.hints !95

; <label>:3737                                    ; preds = %3702
  %3738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.CBufRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.CBufRet.f32 %3738, 2
  %3742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.i32 %3742, 2
  %3744 = uitofp i32 %3743 to float
  %3745 = extractvalue %dx.types.CBufRet.i32 %3742, 3
  %3746 = uitofp i32 %3745 to float
  %3747 = extractvalue %dx.types.CBufRet.f32 %3738, 3
  %3748 = fmul fast float %3747, 2.000000e+00
  %3749 = fsub fast float %3721, %3739
  %3750 = fsub fast float %3725, %3740
  %3751 = fmul fast float %3748, %3749
  %3752 = fmul fast float %3748, %3750
  %3753 = fdiv fast float 1.000000e+00, %3533
  %3754 = fmul fast float %3752, %3753
  %3755 = call float @dx.op.unary.f32(i32 6, float %3754)  ; FAbs(value)
  %3756 = fmul fast float %3741, %3552
  %3757 = fmul fast float %3756, %3748
  %3758 = call float @dx.op.unary.f32(i32 6, float %3757)  ; FAbs(value)
  %3759 = call float @dx.op.unary.f32(i32 6, float %3751)  ; FAbs(value)
  %3760 = call float @dx.op.binary.f32(i32 35, float %3759, float %3758)  ; FMax(a,b)
  %3761 = call float @dx.op.binary.f32(i32 35, float %3760, float %3755)  ; FMax(a,b)
  %3762 = fmul fast float %3761, 2.000000e+00
  %3763 = call float @dx.op.unary.f32(i32 23, float %3762)  ; Log(value)
  %3764 = call float @dx.op.binary.f32(i32 35, float %3763, float %3744)  ; FMax(a,b)
  %3765 = call float @dx.op.unary.f32(i32 22, float %3764)  ; Frc(value)
  %3766 = fadd fast float %3765, 0xBFEA666660000000
  %3767 = fmul fast float %3766, 8.000000e+00
  %3768 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3769 = call float @dx.op.unary.f32(i32 27, float %3764)  ; Round_ni(value)
  %3770 = fadd fast float %3769, %3768
  %3771 = call float @dx.op.binary.f32(i32 36, float %3770, float %3746)  ; FMin(a,b)
  %3772 = call float @dx.op.unary.f32(i32 27, float %3771)  ; Round_ni(value)
  %3773 = fsub fast float -0.000000e+00, %3772
  %3774 = call float @dx.op.unary.f32(i32 21, float %3773)  ; Exp(value)
  %3775 = fmul fast float %3774, %3748
  %3776 = fmul fast float %3775, %3721
  %3777 = fmul fast float %3775, %3725
  %3778 = fmul fast float %3776, 2.500000e-01
  %3779 = fmul fast float %3777, 2.500000e-01
  %3780 = fadd fast float %3778, 5.000000e-01
  %3781 = fadd fast float %3779, 5.000000e-01
  %3782 = fsub fast float %3746, %3744
  %3783 = fptoui float %3782 to i32
  %3784 = add i32 %3783, 320
  %3785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %3784)  ; CBufferLoadLegacy(handle,regIndex)
  %3786 = extractvalue %dx.types.CBufRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.CBufRet.f32 %3785, 1
  %3788 = fcmp fast une float %3771, %3746
  %3789 = fsub fast float %3721, %3786
  %3790 = fsub fast float %3725, %3787
  %3791 = call float @dx.op.unary.f32(i32 6, float %3789)  ; FAbs(value)
  %3792 = call float @dx.op.unary.f32(i32 6, float %3790)  ; FAbs(value)
  %3793 = fmul fast float %3791, %3775
  %3794 = fmul fast float %3792, %3775
  %3795 = fcmp fast olt float %3793, 1.000000e+00
  %3796 = fcmp fast olt float %3794, 1.000000e+00
  %3797 = and i1 %3795, %3796
  %3798 = or i1 %3788, %3797
  br i1 %3798, label %3799, label %4096, !dx.controlflow.hints !96

; <label>:3799                                    ; preds = %3737
  %3800 = fmul fast float %3777, 5.000000e-01
  %3801 = fmul fast float %3776, 5.000000e-01
  %3802 = fadd fast float %3800, 5.000000e-01
  %3803 = fadd fast float %3801, 5.000000e-01
  %3804 = sitofp i32 %3743 to float
  %3805 = fsub fast float %3771, %3804
  %3806 = call float @dx.op.unary.f32(i32 27, float %3805)  ; Round_ni(value)
  %3807 = call float @dx.op.unary.f32(i32 22, float %3771)  ; Frc(value)
  %3808 = call float @dx.op.unary.f32(i32 22, float %3803)  ; Frc(value)
  %3809 = call float @dx.op.unary.f32(i32 22, float %3802)  ; Frc(value)
  %3810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3808, float %3809, float %3806, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3815 = fcmp fast ogt float %3807, 0.000000e+00
  br i1 %3815, label %3816, label %3837, !dx.controlflow.hints !97

; <label>:3816                                    ; preds = %3799
  %3817 = fadd fast float %3806, 1.000000e+00
  %3818 = call float @dx.op.unary.f32(i32 22, float %3780)  ; Frc(value)
  %3819 = call float @dx.op.unary.f32(i32 22, float %3781)  ; Frc(value)
  %3820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3818, float %3819, float %3817, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3821 = extractvalue %dx.types.ResRet.f32 %3820, 0
  %3822 = extractvalue %dx.types.ResRet.f32 %3820, 1
  %3823 = extractvalue %dx.types.ResRet.f32 %3820, 2
  %3824 = extractvalue %dx.types.ResRet.f32 %3820, 3
  %3825 = fsub fast float %3821, %3811
  %3826 = fsub fast float %3822, %3812
  %3827 = fsub fast float %3823, %3813
  %3828 = fsub fast float %3824, %3814
  %3829 = fmul fast float %3825, %3807
  %3830 = fmul fast float %3826, %3807
  %3831 = fmul fast float %3827, %3807
  %3832 = fmul fast float %3828, %3807
  %3833 = fadd fast float %3829, %3811
  %3834 = fadd fast float %3830, %3812
  %3835 = fadd fast float %3831, %3813
  %3836 = fadd fast float %3832, %3814
  br label %3837

; <label>:3837                                    ; preds = %3816, %3799
  %3838 = phi float [ %3833, %3816 ], [ %3811, %3799 ]
  %3839 = phi float [ %3834, %3816 ], [ %3812, %3799 ]
  %3840 = phi float [ %3835, %3816 ], [ %3813, %3799 ]
  %3841 = phi float [ %3836, %3816 ], [ %3814, %3799 ]
  %3842 = fadd fast float %3838, -5.000000e-01
  %3843 = fadd fast float %3840, -5.000000e-01
  %3844 = fmul fast float %3842, 0xBFD5555560000000
  %3845 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3843, float %3844)  ; FMad(a,b,c)
  %3846 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3839, float 0.000000e+00)  ; FMad(a,b,c)
  %3847 = fadd fast float %3846, %3841
  %3848 = fmul fast float %3842, -7.500000e-01
  %3849 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3843, float %3848)  ; FMad(a,b,c)
  %3850 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3839, float 0.000000e+00)  ; FMad(a,b,c)
  %3851 = fadd fast float %3850, %3841
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 0
  %3854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3855 = extractvalue %dx.types.CBufRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.CBufRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.CBufRet.f32 %3854, 2
  %3858 = extractvalue %dx.types.CBufRet.f32 %3854, 3
  %3859 = fsub fast float %3855, %3845
  %3860 = fsub fast float %3856, %3847
  %3861 = fsub fast float %3857, %3849
  %3862 = fsub fast float %3858, %3851
  %3863 = fmul fast float %3859, %3853
  %3864 = fmul fast float %3860, %3853
  %3865 = fmul fast float %3861, %3853
  %3866 = fmul fast float %3862, %3853
  %3867 = fadd fast float %3863, %3845
  %3868 = fadd fast float %3864, %3847
  %3869 = fadd fast float %3865, %3849
  %3870 = fadd fast float %3866, %3851
  %3871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.i32 %3871, 0
  %3873 = and i32 %3872, 536870911
  %3874 = uitofp i32 %3873 to float
  %3875 = fmul fast float %3874, %3721
  %3876 = fmul fast float %3874, %3725
  %3877 = fptoui float %3875 to i32
  %3878 = fptoui float %3876 to i32
  %3879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.i32 %3879, 0
  %3881 = and i32 %3880, 31
  %3882 = lshr i32 %3877, %3881
  %3883 = lshr i32 %3878, %3881
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = and i32 %3885, 31
  %3887 = shl i32 1, %3886
  %3888 = call i32 @dx.op.binary.i32(i32 40, i32 %3887, i32 4)  ; UMin(a,b)
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = extractvalue %dx.types.ResRet.i32 %3889, 1
  %3892 = icmp eq i32 %3888, 0
  br i1 %3892, label %3934, label %3893

; <label>:3893                                    ; preds = %3837
  br label %3894

; <label>:3894                                    ; preds = %3922, %3893
  %3895 = phi i32 [ %3925, %3922 ], [ 0, %3893 ]
  %3896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.i32 %3896, 0
  %3898 = lshr i32 %3897, 16
  %3899 = and i32 %3898, 31
  %3900 = shl i32 %3883, %3899
  %3901 = add i32 %3900, %3882
  %3902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.i32 %3902, 0
  %3904 = and i32 %3903, 31
  %3905 = shl i32 %3901, %3904
  %3906 = add i32 %3905, %3895
  %3907 = shl i32 %3906, 2
  %3908 = add i32 %3907, 32
  %3909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.i32 %3909, 0
  %3911 = icmp slt i32 %3910, 0
  %3912 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3895
  %3913 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3895
  %3914 = bitcast float* %3912 to i32*
  %3915 = bitcast float* %3913 to i32*
  br i1 %3911, label %3916, label %3922

; <label>:3916                                    ; preds = %3894
  %3917 = and i32 %3910, 1073741823
  %3918 = add nuw nsw i32 %3917, 20
  %3919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.i32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.i32 %3919, 1
  br label %3922

; <label>:3922                                    ; preds = %3916, %3894
  %3923 = phi i32 [ %3920, %3916 ], [ %3890, %3894 ]
  %3924 = phi i32 [ %3921, %3916 ], [ %3891, %3894 ]
  store i32 %3923, i32* %3914, align 4
  store i32 %3924, i32* %3915, align 4
  %3925 = add nuw i32 %3895, 1
  %3926 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.i32 %3926, 2
  %3928 = icmp eq i32 %3927, 0
  %3929 = icmp ugt i32 %3910, -1073741825
  %3930 = and i1 %3929, %3928
  %3931 = icmp ult i32 %3925, %3888
  %3932 = and i1 %3930, %3931
  br i1 %3932, label %3894, label %3933

; <label>:3933                                    ; preds = %3922
  br label %3934

; <label>:3934                                    ; preds = %3933, %3837
  %3935 = phi i32 [ 0, %3837 ], [ %3925, %3933 ]
  %3936 = extractvalue %dx.types.CBufRet.f32 %3699, 2
  %3937 = fptoui float %3936 to i32
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3990, label %3939

; <label>:3939                                    ; preds = %3934
  br label %3940

; <label>:3940                                    ; preds = %3985, %3939
  %3941 = phi i32 [ %3986, %3985 ], [ %3935, %3939 ]
  %3942 = phi i32 [ %3987, %3985 ], [ 0, %3939 ]
  %3943 = lshr i32 %3942, 2
  %3944 = and i32 %3942, 3
  %3945 = add nuw nsw i32 %3943, 83
  %3946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %3945)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.i32 %3946, 0
  %3948 = extractvalue %dx.types.CBufRet.i32 %3946, 1
  %3949 = extractvalue %dx.types.CBufRet.i32 %3946, 2
  %3950 = extractvalue %dx.types.CBufRet.i32 %3946, 3
  %3951 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %3947, i32* %3951, align 4
  %3952 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %3948, i32* %3952, align 4
  %3953 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %3949, i32* %3953, align 4
  %3954 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %3950, i32* %3954, align 4
  %3955 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %3944
  %3956 = load i32, i32* %3955, align 4, !tbaa !98, !noalias !102
  %3957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3958 = extractvalue %dx.types.ResRet.i32 %3957, 0
  %3959 = lshr i32 %3958, 16
  %3960 = and i32 %3959, 31
  %3961 = shl i32 %3883, %3960
  %3962 = add i32 %3961, %3882
  %3963 = shl i32 %3962, 2
  %3964 = add i32 %3963, %3956
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = icmp eq i32 %3966, 0
  br i1 %3967, label %3985, label %3968

; <label>:3968                                    ; preds = %3940
  %3969 = icmp slt i32 %3966, 0
  %3970 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3941
  %3971 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3941
  %3972 = bitcast float* %3970 to i32*
  %3973 = bitcast float* %3971 to i32*
  br i1 %3969, label %3974, label %3981

; <label>:3974                                    ; preds = %3968
  %3975 = and i32 %3966, 1073741823
  %3976 = add i32 %3956, 20
  %3977 = add i32 %3976, %3975
  %3978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.i32 %3978, 0
  %3980 = extractvalue %dx.types.ResRet.i32 %3978, 1
  br label %3981

; <label>:3981                                    ; preds = %3974, %3968
  %3982 = phi i32 [ %3979, %3974 ], [ %3890, %3968 ]
  %3983 = phi i32 [ %3980, %3974 ], [ %3891, %3968 ]
  store i32 %3982, i32* %3972, align 4
  store i32 %3983, i32* %3973, align 4
  %3984 = add i32 %3941, 1
  br label %3985

; <label>:3985                                    ; preds = %3981, %3940
  %3986 = phi i32 [ %3941, %3940 ], [ %3984, %3981 ]
  %3987 = add nuw i32 %3942, 1
  %3988 = icmp eq i32 %3987, %3937
  br i1 %3988, label %3989, label %3940

; <label>:3989                                    ; preds = %3985
  br label %3990

; <label>:3990                                    ; preds = %3989, %3934
  %3991 = phi i32 [ %3935, %3934 ], [ %3986, %3989 ]
  %3992 = icmp eq i32 %3991, 1
  %3993 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %3994 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %3992, label %3995, label %3998

; <label>:3995                                    ; preds = %3990
  %3996 = load float, float* %3993, align 4
  %3997 = load float, float* %3994, align 4
  br label %4025

; <label>:3998                                    ; preds = %3990
  %3999 = load float, float* %3993, align 4
  %4000 = load float, float* %3994, align 4
  %4001 = fdiv fast float 1.000000e+00, %4000
  %4002 = fsub fast float %3999, %4001
  %4003 = icmp ugt i32 %3991, 1
  br i1 %4003, label %4004, label %4020

; <label>:4004                                    ; preds = %3998
  br label %4005

; <label>:4005                                    ; preds = %4005, %4004
  %4006 = phi float [ %4015, %4005 ], [ %4002, %4004 ]
  %4007 = phi float [ %4016, %4005 ], [ %3999, %4004 ]
  %4008 = phi i32 [ %4017, %4005 ], [ 1, %4004 ]
  %4009 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %4008
  %4010 = load float, float* %4009, align 4
  %4011 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4008
  %4012 = load float, float* %4011, align 4
  %4013 = fdiv fast float 1.000000e+00, %4012
  %4014 = fsub fast float %4010, %4013
  %4015 = call float @dx.op.binary.f32(i32 36, float %4006, float %4014)  ; FMin(a,b)
  %4016 = call float @dx.op.binary.f32(i32 35, float %4007, float %4010)  ; FMax(a,b)
  %4017 = add nuw i32 %4008, 1
  %4018 = icmp eq i32 %4017, %3991
  br i1 %4018, label %4019, label %4005

; <label>:4019                                    ; preds = %4005
  br label %4020

; <label>:4020                                    ; preds = %4019, %3998
  %4021 = phi float [ %4002, %3998 ], [ %4015, %4019 ]
  %4022 = phi float [ %3999, %3998 ], [ %4016, %4019 ]
  %4023 = fsub fast float %4022, %4021
  %4024 = fdiv fast float 1.000000e+00, %4023
  br label %4025

; <label>:4025                                    ; preds = %4020, %3995
  %4026 = phi float [ %3996, %3995 ], [ %4022, %4020 ]
  %4027 = phi float [ %3997, %3995 ], [ %4024, %4020 ]
  %4028 = fadd fast float %3729, %4026
  %4029 = fmul fast float %4028, %4027
  %4030 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4031 = fmul fast float %4030, 2.000000e+00
  %4032 = fsub fast float 1.000000e+00, %4031
  %4033 = fmul fast float %3867, %3867
  %4034 = fsub fast float %3868, %4033
  %4035 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4034)  ; FMax(a,b)
  %4036 = fdiv fast float 1.000000e+00, %4035
  %4037 = fmul fast float %3868, %3867
  %4038 = fsub fast float %3869, %4037
  %4039 = fsub fast float %4032, %3867
  %4040 = fmul fast float %4032, %4032
  %4041 = fsub fast float %4040, %3868
  %4042 = fmul fast float %4036, %4038
  %4043 = fmul fast float %4042, %4039
  %4044 = fsub fast float %4041, %4043
  %4045 = fmul fast float %3868, %3868
  %4046 = fsub fast float %3870, %4045
  %4047 = fmul fast float %4038, %4038
  %4048 = fmul fast float %4047, %4036
  %4049 = fsub fast float %4046, %4048
  %4050 = fdiv fast float %4044, %4049
  %4051 = fmul fast float %4050, %4038
  %4052 = fsub fast float %4039, %4051
  %4053 = fmul fast float %4052, %4036
  %4054 = fmul fast float %4053, %3867
  %4055 = fsub fast float 1.000000e+00, %4054
  %4056 = fmul fast float %4050, %3868
  %4057 = fsub fast float %4055, %4056
  %4058 = fmul fast float %4053, %4053
  %4059 = fmul fast float %4050, 4.000000e+00
  %4060 = fmul fast float %4059, %4057
  %4061 = fsub fast float %4058, %4060
  %4062 = call float @dx.op.unary.f32(i32 24, float %4061)  ; Sqrt(value)
  %4063 = fcmp fast oge float %4053, 0.000000e+00
  %4064 = fsub fast float -0.000000e+00, %4062
  %4065 = select i1 %4063, float %4064, float %4062
  %4066 = fsub fast float %4065, %4053
  %4067 = fdiv fast float %4066, %4050
  %4068 = fdiv fast float %4057, %4066
  %4069 = fmul fast float %4067, 5.000000e-01
  %4070 = fmul fast float %4068, 2.000000e+00
  %4071 = select i1 %4063, float %4069, float %4070
  %4072 = select i1 %4063, float %4070, float %4069
  %4073 = call float @dx.op.binary.f32(i32 35, float %4071, float %4072)  ; FMax(a,b)
  %4074 = call float @dx.op.binary.f32(i32 36, float %4071, float %4072)  ; FMin(a,b)
  %4075 = fcmp fast ogt float %4032, %4073
  %4076 = fsub fast float %4032, %4074
  %4077 = fsub fast float %4032, %4073
  %4078 = fsub fast float %4073, %4074
  %4079 = select i1 %4075, float %4077, float %4078
  %4080 = fmul float %4076, %4079
  %4081 = select i1 %4075, float %4074, float %4032
  %4082 = fcmp fast ogt float %4032, %4074
  %4083 = fmul fast float %4081, %4073
  %4084 = fadd fast float %4081, %4073
  %4085 = fmul fast float %4084, %3867
  %4086 = fadd fast float %4083, %3868
  %4087 = fsub fast float %4086, %4085
  %4088 = fdiv fast float %4087, %4080
  %4089 = select i1 %4082, float %4088, float 0.000000e+00
  %4090 = fsub fast float 1.000000e+00, %4089
  %4091 = select i1 %4075, float %4090, float %4089
  %4092 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4093 = extractvalue %dx.types.CBufRet.f32 %3852, 3
  %4094 = fmul fast float %4093, %4092
  %4095 = fsub fast float 1.000000e+00, %4094
  br label %4096

; <label>:4096                                    ; preds = %4025, %3737, %3702, %3698, %3664
  %4097 = phi float [ 1.000000e+00, %3664 ], [ %4095, %4025 ], [ 1.000000e+00, %3702 ], [ 1.000000e+00, %3737 ], [ 1.000000e+00, %3698 ]
  %4098 = fcmp fast ogt float %3694, 0.000000e+00
  br i1 %4098, label %4099, label %4261, !dx.controlflow.hints !111

; <label>:4099                                    ; preds = %4096
  %4100 = fadd fast float %3607, %3581
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 2
  %4103 = extractvalue %dx.types.CBufRet.f32 %4101, 3
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 2
  %4106 = call float @dx.op.binary.f32(i32 35, float %4100, float 0.000000e+00)  ; FMax(a,b)
  %4107 = fadd fast float %4106, 0x3F10000000000000
  %4108 = fcmp fast oeq float %4105, 0.000000e+00
  br i1 %4108, label %4109, label %4176

; <label>:4109                                    ; preds = %4099
  %4110 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4111 = extractvalue %dx.types.CBufRet.f32 %4101, 0
  %4112 = fmul fast float %4111, %3596
  %4113 = fmul fast float %4110, %3597
  %4114 = fadd fast float %4112, 5.000000e-01
  %4115 = call float @dx.op.unary.f32(i32 27, float %4114)  ; Round_ni(value)
  %4116 = fadd fast float %4113, 5.000000e-01
  %4117 = call float @dx.op.unary.f32(i32 27, float %4116)  ; Round_ni(value)
  %4118 = fsub fast float %4114, %4115
  %4119 = fsub fast float %4116, %4117
  %4120 = fadd fast float %4115, -5.000000e-01
  %4121 = fadd fast float %4117, -5.000000e-01
  %4122 = fmul fast float %4118, 2.000000e+00
  %4123 = fsub fast float 3.000000e+00, %4122
  %4124 = fadd fast float %4122, 1.000000e+00
  %4125 = fsub fast float 2.000000e+00, %4118
  %4126 = bitcast float %4123 to i32
  %4127 = sub nsw i32 2129859010, %4126
  %4128 = bitcast i32 %4127 to float
  %4129 = fmul fast float %4128, %4125
  %4130 = fadd fast float %4129, -1.000000e+00
  %4131 = bitcast float %4124 to i32
  %4132 = sub nsw i32 2129859010, %4131
  %4133 = bitcast i32 %4132 to float
  %4134 = fmul fast float %4133, %4118
  %4135 = fadd fast float %4134, 1.000000e+00
  %4136 = fmul fast float %4119, 2.000000e+00
  %4137 = fsub fast float 3.000000e+00, %4136
  %4138 = fadd fast float %4136, 1.000000e+00
  %4139 = fsub fast float 2.000000e+00, %4119
  %4140 = bitcast float %4137 to i32
  %4141 = sub nsw i32 2129859010, %4140
  %4142 = bitcast i32 %4141 to float
  %4143 = fmul fast float %4142, %4139
  %4144 = fadd fast float %4143, -1.000000e+00
  %4145 = bitcast float %4138 to i32
  %4146 = sub nsw i32 2129859010, %4145
  %4147 = bitcast i32 %4146 to float
  %4148 = fmul fast float %4147, %4119
  %4149 = fadd fast float %4148, 1.000000e+00
  %4150 = fadd fast float %4130, %4120
  %4151 = fmul fast float %4150, %4102
  %4152 = fadd fast float %4144, %4121
  %4153 = fmul fast float %4152, %4103
  %4154 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %4151, float %4153, float undef, float undef, i32 0, i32 0, i32 undef, float %4107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4156 = fmul fast float %4155, %4123
  %4157 = fadd fast float %4135, %4120
  %4158 = fmul fast float %4157, %4102
  %4159 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %4158, float %4153, float undef, float undef, i32 0, i32 0, i32 undef, float %4107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4161 = fmul fast float %4160, %4124
  %4162 = fadd fast float %4149, %4121
  %4163 = fmul fast float %4162, %4103
  %4164 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %4151, float %4163, float undef, float undef, i32 0, i32 0, i32 undef, float %4107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4166 = fmul fast float %4165, %4123
  %4167 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %4158, float %4163, float undef, float undef, i32 0, i32 0, i32 undef, float %4107)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4168 = extractvalue %dx.types.ResRet.f32 %4167, 0
  %4169 = fmul fast float %4168, %4124
  %4170 = fadd fast float %4169, %4166
  %4171 = fmul fast float %4170, %4138
  %4172 = fadd fast float %4161, %4156
  %4173 = fmul fast float %4172, %4137
  %4174 = fadd fast float %4173, %4171
  %4175 = fmul fast float %4174, 6.250000e-02
  br label %4261

; <label>:4176                                    ; preds = %4099
  %4177 = fmul fast float %250, 0x401921FB60000000
  %4178 = call float @dx.op.unary.f32(i32 13, float %4177)  ; Sin(value)
  %4179 = call float @dx.op.unary.f32(i32 12, float %4177)  ; Cos(value)
  %4180 = fsub fast float -0.000000e+00, %4178
  br label %4181

; <label>:4181                                    ; preds = %4230, %4176
  %4182 = phi float [ 0.000000e+00, %4176 ], [ %4225, %4230 ]
  %4183 = phi float [ 0.000000e+00, %4176 ], [ %4227, %4230 ]
  %4184 = phi i32 [ 0, %4176 ], [ %4231, %4230 ]
  %4185 = mul i32 %4184, 2
  %4186 = add i32 0, %4185
  %4187 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4186
  %4188 = load float, float* %4187, align 4
  %4189 = mul i32 %4184, 2
  %4190 = add i32 1, %4189
  %4191 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4190
  %4192 = load float, float* %4191, align 4
  %4193 = fmul fast float %4188, %4179
  %4194 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %4180, float %4193)  ; FMad(a,b,c)
  %4195 = fmul fast float %4188, %4178
  %4196 = call float @dx.op.tertiary.f32(i32 46, float %4192, float %4179, float %4195)  ; FMad(a,b,c)
  %4197 = fmul fast float %4194, %4105
  %4198 = fmul fast float %4196, %4105
  %4199 = fadd fast float %4197, %3596
  %4200 = fadd fast float %4198, %3597
  %4201 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %51, float %4199, float %4200, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.ResRet.f32 %4201, 1
  %4204 = extractvalue %dx.types.ResRet.f32 %4201, 2
  %4205 = extractvalue %dx.types.ResRet.f32 %4201, 3
  %4206 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %4202, float* %4206, align 4
  %4207 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %4203, float* %4207, align 4
  %4208 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %4204, float* %4208, align 4
  %4209 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  store float %4205, float* %4209, align 4
  %4210 = fsub fast float %4202, %4107
  %4211 = fcmp fast olt float %4210, 0.000000e+00
  %4212 = select i1 %4211, float 0.000000e+00, float 1.000000e+00
  %4213 = fadd fast float %4212, %4182
  %4214 = fmul fast float %4212, %4210
  %4215 = fadd fast float %4214, %4183
  br label %4216

; <label>:4216                                    ; preds = %4216, %4181
  %4217 = phi i32 [ 1, %4181 ], [ %4228, %4216 ]
  %4218 = phi float [ %4215, %4181 ], [ %4227, %4216 ]
  %4219 = phi float [ %4213, %4181 ], [ %4225, %4216 ]
  %4220 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %4217
  %4221 = load float, float* %4220, align 4, !tbaa !112, !noalias !102
  %4222 = fsub fast float %4221, %4107
  %4223 = fcmp fast olt float %4222, 0.000000e+00
  %4224 = select i1 %4223, float 0.000000e+00, float 1.000000e+00
  %4225 = fadd fast float %4224, %4219
  %4226 = fmul fast float %4224, %4222
  %4227 = fadd fast float %4226, %4218
  %4228 = add nuw nsw i32 %4217, 1
  %4229 = icmp eq i32 %4228, 4
  br i1 %4229, label %4230, label %4216, !llvm.loop !114

; <label>:4230                                    ; preds = %4216
  %4231 = add nuw nsw i32 %4184, 1
  %4232 = icmp eq i32 %4231, 8
  br i1 %4232, label %4233, label %4181, !llvm.loop !115

; <label>:4233                                    ; preds = %4230
  %4234 = fdiv fast float 1.000000e+00, %4225
  %4235 = fmul fast float %4234, %4227
  %4236 = fdiv fast float 1.000000e+00, %4107
  %4237 = fmul fast float %4235, %4236
  %4238 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4239 = call float @dx.op.binary.f32(i32 35, float %4238, float 0.000000e+00)  ; FMax(a,b)
  %4240 = fmul fast float %4225, 3.125000e-02
  %4241 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4242 = fmul fast float %4241, 2.000000e+00
  %4243 = fadd fast float %4242, -1.000000e+00
  %4244 = fcmp fast ogt float %4243, 0.000000e+00
  %4245 = fcmp fast olt float %4243, 0.000000e+00
  %4246 = zext i1 %4244 to i32
  %4247 = zext i1 %4245 to i32
  %4248 = sub nsw i32 %4246, %4247
  %4249 = sitofp i32 %4248 to float
  %4250 = fmul fast float %4249, %4243
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = fmul fast float %4251, %4251
  %4253 = fmul fast float %4252, %4251
  %4254 = fsub fast float %4251, %4253
  %4255 = fmul fast float %4254, %4239
  %4256 = fsub fast float 1.000000e+00, %4253
  %4257 = fsub fast float %4256, %4255
  %4258 = fmul fast float %4249, 5.000000e-01
  %4259 = fmul fast float %4258, %4257
  %4260 = fsub fast float 5.000000e-01, %4259
  br label %4261

; <label>:4261                                    ; preds = %4233, %4109, %4096
  %4262 = phi float [ 1.000000e+00, %4096 ], [ %4175, %4109 ], [ %4260, %4233 ]
  %4263 = fcmp fast ogt float %3692, 0.000000e+00
  br i1 %4263, label %4264, label %4428, !dx.controlflow.hints !116

; <label>:4264                                    ; preds = %4261
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 1
  %4267 = fadd fast float %4266, %3581
  %4268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4268, 2
  %4270 = extractvalue %dx.types.CBufRet.f32 %4268, 3
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4273 = call float @dx.op.binary.f32(i32 35, float %4267, float 0.000000e+00)  ; FMax(a,b)
  %4274 = fadd fast float %4273, 0x3F10000000000000
  %4275 = fcmp fast oeq float %4272, 0.000000e+00
  br i1 %4275, label %4276, label %4343

; <label>:4276                                    ; preds = %4264
  %4277 = extractvalue %dx.types.CBufRet.f32 %4268, 1
  %4278 = extractvalue %dx.types.CBufRet.f32 %4268, 0
  %4279 = fmul fast float %4278, %3588
  %4280 = fmul fast float %4277, %3589
  %4281 = fadd fast float %4279, 5.000000e-01
  %4282 = call float @dx.op.unary.f32(i32 27, float %4281)  ; Round_ni(value)
  %4283 = fadd fast float %4280, 5.000000e-01
  %4284 = call float @dx.op.unary.f32(i32 27, float %4283)  ; Round_ni(value)
  %4285 = fsub fast float %4281, %4282
  %4286 = fsub fast float %4283, %4284
  %4287 = fadd fast float %4282, -5.000000e-01
  %4288 = fadd fast float %4284, -5.000000e-01
  %4289 = fmul fast float %4285, 2.000000e+00
  %4290 = fsub fast float 3.000000e+00, %4289
  %4291 = fadd fast float %4289, 1.000000e+00
  %4292 = fsub fast float 2.000000e+00, %4285
  %4293 = bitcast float %4290 to i32
  %4294 = sub nsw i32 2129859010, %4293
  %4295 = bitcast i32 %4294 to float
  %4296 = fmul fast float %4295, %4292
  %4297 = fadd fast float %4296, -1.000000e+00
  %4298 = bitcast float %4291 to i32
  %4299 = sub nsw i32 2129859010, %4298
  %4300 = bitcast i32 %4299 to float
  %4301 = fmul fast float %4300, %4285
  %4302 = fadd fast float %4301, 1.000000e+00
  %4303 = fmul fast float %4286, 2.000000e+00
  %4304 = fsub fast float 3.000000e+00, %4303
  %4305 = fadd fast float %4303, 1.000000e+00
  %4306 = fsub fast float 2.000000e+00, %4286
  %4307 = bitcast float %4304 to i32
  %4308 = sub nsw i32 2129859010, %4307
  %4309 = bitcast i32 %4308 to float
  %4310 = fmul fast float %4309, %4306
  %4311 = fadd fast float %4310, -1.000000e+00
  %4312 = bitcast float %4305 to i32
  %4313 = sub nsw i32 2129859010, %4312
  %4314 = bitcast i32 %4313 to float
  %4315 = fmul fast float %4314, %4286
  %4316 = fadd fast float %4315, 1.000000e+00
  %4317 = fadd fast float %4297, %4287
  %4318 = fmul fast float %4317, %4269
  %4319 = fadd fast float %4311, %4288
  %4320 = fmul fast float %4319, %4270
  %4321 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %4318, float %4320, float undef, float undef, i32 0, i32 0, i32 undef, float %4274)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = fmul fast float %4322, %4290
  %4324 = fadd fast float %4302, %4287
  %4325 = fmul fast float %4324, %4269
  %4326 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %4325, float %4320, float undef, float undef, i32 0, i32 0, i32 undef, float %4274)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4327 = extractvalue %dx.types.ResRet.f32 %4326, 0
  %4328 = fmul fast float %4327, %4291
  %4329 = fadd fast float %4316, %4288
  %4330 = fmul fast float %4329, %4270
  %4331 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %4318, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float %4274)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = fmul fast float %4332, %4290
  %4334 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %4325, float %4330, float undef, float undef, i32 0, i32 0, i32 undef, float %4274)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = fmul fast float %4335, %4291
  %4337 = fadd fast float %4336, %4333
  %4338 = fmul fast float %4337, %4305
  %4339 = fadd fast float %4328, %4323
  %4340 = fmul fast float %4339, %4304
  %4341 = fadd fast float %4340, %4338
  %4342 = fmul fast float %4341, 6.250000e-02
  br label %4428

; <label>:4343                                    ; preds = %4264
  %4344 = fmul fast float %250, 0x401921FB60000000
  %4345 = call float @dx.op.unary.f32(i32 13, float %4344)  ; Sin(value)
  %4346 = call float @dx.op.unary.f32(i32 12, float %4344)  ; Cos(value)
  %4347 = fsub fast float -0.000000e+00, %4345
  br label %4348

; <label>:4348                                    ; preds = %4397, %4343
  %4349 = phi float [ 0.000000e+00, %4343 ], [ %4392, %4397 ]
  %4350 = phi float [ 0.000000e+00, %4343 ], [ %4394, %4397 ]
  %4351 = phi i32 [ 0, %4343 ], [ %4398, %4397 ]
  %4352 = mul i32 %4351, 2
  %4353 = add i32 0, %4352
  %4354 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4353
  %4355 = load float, float* %4354, align 4
  %4356 = mul i32 %4351, 2
  %4357 = add i32 1, %4356
  %4358 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4357
  %4359 = load float, float* %4358, align 4
  %4360 = fmul fast float %4355, %4346
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4359, float %4347, float %4360)  ; FMad(a,b,c)
  %4362 = fmul fast float %4355, %4345
  %4363 = call float @dx.op.tertiary.f32(i32 46, float %4359, float %4346, float %4362)  ; FMad(a,b,c)
  %4364 = fmul fast float %4361, %4272
  %4365 = fmul fast float %4363, %4272
  %4366 = fadd fast float %4364, %3588
  %4367 = fadd fast float %4365, %3589
  %4368 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %51, float %4366, float %4367, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.ResRet.f32 %4368, 1
  %4371 = extractvalue %dx.types.ResRet.f32 %4368, 2
  %4372 = extractvalue %dx.types.ResRet.f32 %4368, 3
  %4373 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %4369, float* %4373, align 4
  %4374 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %4370, float* %4374, align 4
  %4375 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %4371, float* %4375, align 4
  %4376 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %4372, float* %4376, align 4
  %4377 = fsub fast float %4369, %4274
  %4378 = fcmp fast olt float %4377, 0.000000e+00
  %4379 = select i1 %4378, float 0.000000e+00, float 1.000000e+00
  %4380 = fadd fast float %4379, %4349
  %4381 = fmul fast float %4379, %4377
  %4382 = fadd fast float %4381, %4350
  br label %4383

; <label>:4383                                    ; preds = %4383, %4348
  %4384 = phi i32 [ 1, %4348 ], [ %4395, %4383 ]
  %4385 = phi float [ %4382, %4348 ], [ %4394, %4383 ]
  %4386 = phi float [ %4380, %4348 ], [ %4392, %4383 ]
  %4387 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %4384
  %4388 = load float, float* %4387, align 4, !tbaa !112, !noalias !102
  %4389 = fsub fast float %4388, %4274
  %4390 = fcmp fast olt float %4389, 0.000000e+00
  %4391 = select i1 %4390, float 0.000000e+00, float 1.000000e+00
  %4392 = fadd fast float %4391, %4386
  %4393 = fmul fast float %4391, %4389
  %4394 = fadd fast float %4393, %4385
  %4395 = add nuw nsw i32 %4384, 1
  %4396 = icmp eq i32 %4395, 4
  br i1 %4396, label %4397, label %4383, !llvm.loop !114

; <label>:4397                                    ; preds = %4383
  %4398 = add nuw nsw i32 %4351, 1
  %4399 = icmp eq i32 %4398, 8
  br i1 %4399, label %4400, label %4348, !llvm.loop !115

; <label>:4400                                    ; preds = %4397
  %4401 = fdiv fast float 1.000000e+00, %4392
  %4402 = fmul fast float %4401, %4394
  %4403 = fdiv fast float 1.000000e+00, %4274
  %4404 = fmul fast float %4402, %4403
  %4405 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4406 = call float @dx.op.binary.f32(i32 35, float %4405, float 0.000000e+00)  ; FMax(a,b)
  %4407 = fmul fast float %4392, 3.125000e-02
  %4408 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4409 = fmul fast float %4408, 2.000000e+00
  %4410 = fadd fast float %4409, -1.000000e+00
  %4411 = fcmp fast ogt float %4410, 0.000000e+00
  %4412 = fcmp fast olt float %4410, 0.000000e+00
  %4413 = zext i1 %4411 to i32
  %4414 = zext i1 %4412 to i32
  %4415 = sub nsw i32 %4413, %4414
  %4416 = sitofp i32 %4415 to float
  %4417 = fmul fast float %4416, %4410
  %4418 = fsub fast float 1.000000e+00, %4417
  %4419 = fmul fast float %4418, %4418
  %4420 = fmul fast float %4419, %4418
  %4421 = fsub fast float %4418, %4420
  %4422 = fmul fast float %4421, %4406
  %4423 = fsub fast float 1.000000e+00, %4420
  %4424 = fsub fast float %4423, %4422
  %4425 = fmul fast float %4416, 5.000000e-01
  %4426 = fmul fast float %4425, %4424
  %4427 = fsub fast float 5.000000e-01, %4426
  br label %4428

; <label>:4428                                    ; preds = %4400, %4276, %4261
  %4429 = phi float [ 1.000000e+00, %4261 ], [ %4342, %4276 ], [ %4427, %4400 ]
  %4430 = fcmp fast ogt float %3691, 0.000000e+00
  br i1 %4430, label %4431, label %4595, !dx.controlflow.hints !117

; <label>:4431                                    ; preds = %4428
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = fadd fast float %4433, %3581
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 2
  %4437 = extractvalue %dx.types.CBufRet.f32 %4435, 3
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = call float @dx.op.binary.f32(i32 35, float %4434, float 0.000000e+00)  ; FMax(a,b)
  %4441 = fadd fast float %4440, 0x3F10000000000000
  %4442 = fcmp fast oeq float %4439, 0.000000e+00
  br i1 %4442, label %4443, label %4510

; <label>:4443                                    ; preds = %4431
  %4444 = extractvalue %dx.types.CBufRet.f32 %4435, 1
  %4445 = extractvalue %dx.types.CBufRet.f32 %4435, 0
  %4446 = fmul fast float %4445, %3573
  %4447 = fmul fast float %4444, %3577
  %4448 = fadd fast float %4446, 5.000000e-01
  %4449 = call float @dx.op.unary.f32(i32 27, float %4448)  ; Round_ni(value)
  %4450 = fadd fast float %4447, 5.000000e-01
  %4451 = call float @dx.op.unary.f32(i32 27, float %4450)  ; Round_ni(value)
  %4452 = fsub fast float %4448, %4449
  %4453 = fsub fast float %4450, %4451
  %4454 = fadd fast float %4449, -5.000000e-01
  %4455 = fadd fast float %4451, -5.000000e-01
  %4456 = fmul fast float %4452, 2.000000e+00
  %4457 = fsub fast float 3.000000e+00, %4456
  %4458 = fadd fast float %4456, 1.000000e+00
  %4459 = fsub fast float 2.000000e+00, %4452
  %4460 = bitcast float %4457 to i32
  %4461 = sub nsw i32 2129859010, %4460
  %4462 = bitcast i32 %4461 to float
  %4463 = fmul fast float %4462, %4459
  %4464 = fadd fast float %4463, -1.000000e+00
  %4465 = bitcast float %4458 to i32
  %4466 = sub nsw i32 2129859010, %4465
  %4467 = bitcast i32 %4466 to float
  %4468 = fmul fast float %4467, %4452
  %4469 = fadd fast float %4468, 1.000000e+00
  %4470 = fmul fast float %4453, 2.000000e+00
  %4471 = fsub fast float 3.000000e+00, %4470
  %4472 = fadd fast float %4470, 1.000000e+00
  %4473 = fsub fast float 2.000000e+00, %4453
  %4474 = bitcast float %4471 to i32
  %4475 = sub nsw i32 2129859010, %4474
  %4476 = bitcast i32 %4475 to float
  %4477 = fmul fast float %4476, %4473
  %4478 = fadd fast float %4477, -1.000000e+00
  %4479 = bitcast float %4472 to i32
  %4480 = sub nsw i32 2129859010, %4479
  %4481 = bitcast i32 %4480 to float
  %4482 = fmul fast float %4481, %4453
  %4483 = fadd fast float %4482, 1.000000e+00
  %4484 = fadd fast float %4464, %4454
  %4485 = fmul fast float %4484, %4436
  %4486 = fadd fast float %4478, %4455
  %4487 = fmul fast float %4486, %4437
  %4488 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4485, float %4487, float undef, float undef, i32 0, i32 0, i32 undef, float %4441)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4489 = extractvalue %dx.types.ResRet.f32 %4488, 0
  %4490 = fmul fast float %4489, %4457
  %4491 = fadd fast float %4469, %4454
  %4492 = fmul fast float %4491, %4436
  %4493 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4492, float %4487, float undef, float undef, i32 0, i32 0, i32 undef, float %4441)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4494 = extractvalue %dx.types.ResRet.f32 %4493, 0
  %4495 = fmul fast float %4494, %4458
  %4496 = fadd fast float %4483, %4455
  %4497 = fmul fast float %4496, %4437
  %4498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4485, float %4497, float undef, float undef, i32 0, i32 0, i32 undef, float %4441)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = fmul fast float %4499, %4457
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4492, float %4497, float undef, float undef, i32 0, i32 0, i32 undef, float %4441)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = fmul fast float %4502, %4458
  %4504 = fadd fast float %4503, %4500
  %4505 = fmul fast float %4504, %4472
  %4506 = fadd fast float %4495, %4490
  %4507 = fmul fast float %4506, %4471
  %4508 = fadd fast float %4507, %4505
  %4509 = fmul fast float %4508, 6.250000e-02
  br label %4595

; <label>:4510                                    ; preds = %4431
  %4511 = fmul fast float %250, 0x401921FB60000000
  %4512 = call float @dx.op.unary.f32(i32 13, float %4511)  ; Sin(value)
  %4513 = call float @dx.op.unary.f32(i32 12, float %4511)  ; Cos(value)
  %4514 = fsub fast float -0.000000e+00, %4512
  br label %4515

; <label>:4515                                    ; preds = %4564, %4510
  %4516 = phi float [ 0.000000e+00, %4510 ], [ %4559, %4564 ]
  %4517 = phi float [ 0.000000e+00, %4510 ], [ %4561, %4564 ]
  %4518 = phi i32 [ 0, %4510 ], [ %4565, %4564 ]
  %4519 = mul i32 %4518, 2
  %4520 = add i32 0, %4519
  %4521 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4520
  %4522 = load float, float* %4521, align 4
  %4523 = mul i32 %4518, 2
  %4524 = add i32 1, %4523
  %4525 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4524
  %4526 = load float, float* %4525, align 4
  %4527 = fmul fast float %4522, %4513
  %4528 = call float @dx.op.tertiary.f32(i32 46, float %4526, float %4514, float %4527)  ; FMad(a,b,c)
  %4529 = fmul fast float %4522, %4512
  %4530 = call float @dx.op.tertiary.f32(i32 46, float %4526, float %4513, float %4529)  ; FMad(a,b,c)
  %4531 = fmul fast float %4528, %4439
  %4532 = fmul fast float %4530, %4439
  %4533 = fadd fast float %4531, %3573
  %4534 = fadd fast float %4532, %3577
  %4535 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %51, float %4533, float %4534, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.ResRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.ResRet.f32 %4535, 2
  %4539 = extractvalue %dx.types.ResRet.f32 %4535, 3
  %4540 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %4536, float* %4540, align 4
  %4541 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %4537, float* %4541, align 4
  %4542 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %4538, float* %4542, align 4
  %4543 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %4539, float* %4543, align 4
  %4544 = fsub fast float %4536, %4441
  %4545 = fcmp fast olt float %4544, 0.000000e+00
  %4546 = select i1 %4545, float 0.000000e+00, float 1.000000e+00
  %4547 = fadd fast float %4546, %4516
  %4548 = fmul fast float %4546, %4544
  %4549 = fadd fast float %4548, %4517
  br label %4550

; <label>:4550                                    ; preds = %4550, %4515
  %4551 = phi i32 [ 1, %4515 ], [ %4562, %4550 ]
  %4552 = phi float [ %4549, %4515 ], [ %4561, %4550 ]
  %4553 = phi float [ %4547, %4515 ], [ %4559, %4550 ]
  %4554 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %4551
  %4555 = load float, float* %4554, align 4, !tbaa !112, !noalias !102
  %4556 = fsub fast float %4555, %4441
  %4557 = fcmp fast olt float %4556, 0.000000e+00
  %4558 = select i1 %4557, float 0.000000e+00, float 1.000000e+00
  %4559 = fadd fast float %4558, %4553
  %4560 = fmul fast float %4558, %4556
  %4561 = fadd fast float %4560, %4552
  %4562 = add nuw nsw i32 %4551, 1
  %4563 = icmp eq i32 %4562, 4
  br i1 %4563, label %4564, label %4550, !llvm.loop !114

; <label>:4564                                    ; preds = %4550
  %4565 = add nuw nsw i32 %4518, 1
  %4566 = icmp eq i32 %4565, 8
  br i1 %4566, label %4567, label %4515, !llvm.loop !115

; <label>:4567                                    ; preds = %4564
  %4568 = fdiv fast float 1.000000e+00, %4559
  %4569 = fmul fast float %4568, %4561
  %4570 = fdiv fast float 1.000000e+00, %4441
  %4571 = fmul fast float %4569, %4570
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = call float @dx.op.binary.f32(i32 35, float %4572, float 0.000000e+00)  ; FMax(a,b)
  %4574 = fmul fast float %4559, 3.125000e-02
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = fmul fast float %4575, 2.000000e+00
  %4577 = fadd fast float %4576, -1.000000e+00
  %4578 = fcmp fast ogt float %4577, 0.000000e+00
  %4579 = fcmp fast olt float %4577, 0.000000e+00
  %4580 = zext i1 %4578 to i32
  %4581 = zext i1 %4579 to i32
  %4582 = sub nsw i32 %4580, %4581
  %4583 = sitofp i32 %4582 to float
  %4584 = fmul fast float %4583, %4577
  %4585 = fsub fast float 1.000000e+00, %4584
  %4586 = fmul fast float %4585, %4585
  %4587 = fmul fast float %4586, %4585
  %4588 = fsub fast float %4585, %4587
  %4589 = fmul fast float %4588, %4573
  %4590 = fsub fast float 1.000000e+00, %4587
  %4591 = fsub fast float %4590, %4589
  %4592 = fmul fast float %4583, 5.000000e-01
  %4593 = fmul fast float %4592, %4591
  %4594 = fsub fast float 5.000000e-01, %4593
  br label %4595

; <label>:4595                                    ; preds = %4567, %4443, %4428
  %4596 = phi float [ 1.000000e+00, %4428 ], [ %4509, %4443 ], [ %4594, %4567 ]
  %4597 = fsub fast float %4262, %4097
  %4598 = fmul fast float %4597, %3635
  %4599 = fadd fast float %4598, %4097
  %4600 = fsub fast float %4429, %4599
  %4601 = fmul fast float %4600, %3665
  %4602 = fadd fast float %4601, %4599
  %4603 = fsub fast float %4596, %4602
  %4604 = fmul fast float %4603, %3691
  %4605 = fadd fast float %4604, %4602
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 2
  %4608 = fcmp fast ogt float %4607, 0.000000e+00
  br i1 %4608, label %4609, label %4649, !dx.controlflow.hints !118

; <label>:4609                                    ; preds = %4595
  %4610 = fcmp fast ugt float %4607, 0.000000e+00
  br i1 %4610, label %4611, label %4646

; <label>:4611                                    ; preds = %4609
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.CBufRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.CBufRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.CBufRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.CBufRet.f32 %4617, 2
  %4621 = extractvalue %dx.types.CBufRet.f32 %4617, 3
  %4622 = extractvalue %dx.types.CBufRet.f32 %4606, 0
  %4623 = extractvalue %dx.types.CBufRet.f32 %4606, 1
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.CBufRet.f32 %4624, 1
  %4627 = extractvalue %dx.types.CBufRet.f32 %4624, 2
  %4628 = fadd fast float %4625, %3550
  %4629 = fadd fast float %4626, %3551
  %4630 = fadd fast float %4627, %3552
  %4631 = fmul fast float %4628, %4613
  %4632 = call float @dx.op.tertiary.f32(i32 46, float %4614, float %4629, float %4631)  ; FMad(a,b,c)
  %4633 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4630, float %4632)  ; FMad(a,b,c)
  %4634 = fadd fast float %4633, %4616
  %4635 = fmul fast float %4628, %4618
  %4636 = call float @dx.op.tertiary.f32(i32 46, float %4619, float %4629, float %4635)  ; FMad(a,b,c)
  %4637 = call float @dx.op.tertiary.f32(i32 46, float %4620, float %4630, float %4636)  ; FMad(a,b,c)
  %4638 = fadd fast float %4637, %4621
  %4639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %4634, float %4638, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = fmul fast float %4640, %4623
  %4642 = fadd fast float %4641, %4622
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = fmul fast float %4643, %4607
  %4645 = fsub fast float 1.000000e+00, %4644
  br label %4646

; <label>:4646                                    ; preds = %4611, %4609
  %4647 = phi float [ %4645, %4611 ], [ 1.000000e+00, %4609 ]
  %4648 = fmul fast float %4647, %4605
  br label %4649

; <label>:4649                                    ; preds = %4646, %4595, %3530
  %4650 = phi float [ 1.000000e+00, %3530 ], [ %4648, %4646 ], [ %4605, %4595 ]
  %4651 = call float @dx.op.binary.f32(i32 36, float %4650, float %4650)  ; FMin(a,b)
  %4652 = call float @dx.op.binary.f32(i32 36, float %4650, float %4651)  ; FMin(a,b)
  %4653 = fcmp fast ogt float %4652, 0.000000e+00
  br i1 %4653, label %4654, label %5010, !dx.controlflow.hints !119

; <label>:4654                                    ; preds = %4649
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 0
  %4657 = extractvalue %dx.types.CBufRet.f32 %4655, 1
  %4658 = extractvalue %dx.types.CBufRet.f32 %4655, 2
  %4659 = extractvalue %dx.types.CBufRet.f32 %4655, 3
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 0
  %4662 = extractvalue %dx.types.CBufRet.f32 %4660, 1
  %4663 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4664 = extractvalue %dx.types.CBufRet.f32 %4660, 3
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.CBufRet.f32 %4665, 1
  %4668 = extractvalue %dx.types.CBufRet.f32 %4665, 2
  %4669 = extractvalue %dx.types.CBufRet.f32 %4665, 3
  %4670 = fmul fast float %4656, %3550
  %4671 = call float @dx.op.tertiary.f32(i32 46, float %3551, float %4657, float %4670)  ; FMad(a,b,c)
  %4672 = call float @dx.op.tertiary.f32(i32 46, float %3552, float %4658, float %4671)  ; FMad(a,b,c)
  %4673 = fadd fast float %4672, %4659
  %4674 = fmul fast float %4661, %3550
  %4675 = call float @dx.op.tertiary.f32(i32 46, float %3551, float %4662, float %4674)  ; FMad(a,b,c)
  %4676 = call float @dx.op.tertiary.f32(i32 46, float %3552, float %4663, float %4675)  ; FMad(a,b,c)
  %4677 = fadd fast float %4676, %4664
  %4678 = fmul fast float %4666, %3550
  %4679 = call float @dx.op.tertiary.f32(i32 46, float %3551, float %4667, float %4678)  ; FMad(a,b,c)
  %4680 = call float @dx.op.tertiary.f32(i32 46, float %3552, float %4668, float %4679)  ; FMad(a,b,c)
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.CBufRet.f32 %4681, 1
  %4684 = extractvalue %dx.types.CBufRet.f32 %4681, 3
  %4685 = fmul fast float %4684, %4673
  %4686 = fmul fast float %4684, %4677
  %4687 = fadd fast float %4685, %4682
  %4688 = fadd fast float %4686, %4683
  %4689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4690 = extractvalue %dx.types.CBufRet.f32 %4689, 0
  %4691 = extractvalue %dx.types.CBufRet.f32 %4689, 1
  %4692 = fsub fast float %4687, %4690
  %4693 = fsub fast float %4688, %4691
  %4694 = fcmp fast olt float %4692, 0.000000e+00
  %4695 = fcmp fast olt float %4693, 0.000000e+00
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.CBufRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.CBufRet.f32 %4696, 2
  %4700 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4701 = select i1 %4694, float %4697, float %4699
  %4702 = select i1 %4695, float %4698, float %4700
  %4703 = fmul fast float %4701, %4692
  %4704 = fmul fast float %4702, %4693
  %4705 = call float @dx.op.unary.f32(i32 6, float %4703)  ; FAbs(value)
  %4706 = call float @dx.op.unary.f32(i32 6, float %4704)  ; FAbs(value)
  %4707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4708 = extractvalue %dx.types.CBufRet.f32 %4707, 0
  %4709 = call float @dx.op.binary.f32(i32 35, float %4705, float %4706)  ; FMax(a,b)
  %4710 = fsub fast float %4708, %4709
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fcmp fast ogt float %4711, 0.000000e+00
  br i1 %4712, label %4713, label %4754, !dx.controlflow.hints !120

; <label>:4713                                    ; preds = %4654
  %4714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %4687, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 1
  %4716 = fcmp fast ogt float %4715, 0.000000e+00
  br i1 %4716, label %4717, label %4749

; <label>:4717                                    ; preds = %4713
  %4718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %4687, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4719 = extractvalue %dx.types.ResRet.f32 %4718, 0
  %4720 = extractvalue %dx.types.ResRet.f32 %4718, 1
  %4721 = extractvalue %dx.types.ResRet.f32 %4718, 2
  %4722 = extractvalue %dx.types.ResRet.f32 %4718, 3
  %4723 = fsub fast float 1.000000e+00, %4669
  %4724 = fsub fast float %4723, %4680
  %4725 = fmul fast float %4724, 0x400921FB60000000
  %4726 = fadd fast float %4725, 0x3FF921FB60000000
  %4727 = call float @dx.op.unary.f32(i32 13, float %4726)  ; Sin(value)
  %4728 = fadd fast float %4727, -1.000000e+00
  %4729 = fmul fast float %4728, 0x3FD45F3060000000
  %4730 = fmul fast float %4724, 0x401921FB60000000
  %4731 = fadd fast float %4730, 0x400921FB60000000
  %4732 = call float @dx.op.unary.f32(i32 13, float %4731)  ; Sin(value)
  %4733 = fadd fast float %4732, 0x3E7777A5C0000000
  %4734 = fmul fast float %4733, 0x3FC45F3060000000
  %4735 = fmul fast float %4724, 0x4022D97C80000000
  %4736 = fadd fast float %4735, 0x4012D97C80000000
  %4737 = call float @dx.op.unary.f32(i32 13, float %4736)  ; Sin(value)
  %4738 = fadd fast float %4737, 1.000000e+00
  %4739 = fmul fast float %4738, 0x3FBB2995E0000000
  %4740 = fmul fast float %4724, 0x402921FB60000000
  %4741 = fadd fast float %4740, 0x401921FB60000000
  %4742 = call float @dx.op.unary.f32(i32 13, float %4741)  ; Sin(value)
  %4743 = fadd fast float %4742, 0xBE8777A5C0000000
  %4744 = fmul fast float %4743, 0x3FB45F3060000000
  %4745 = call float @dx.op.dot4.f32(i32 56, float %4719, float %4720, float %4721, float %4722, float %4729, float %4734, float %4739, float %4744)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4746 = fmul fast float %4745, 0xBFF7154760000000
  %4747 = call float @dx.op.unary.f32(i32 21, float %4746)  ; Exp(value)
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  br label %4749

; <label>:4749                                    ; preds = %4717, %4713
  %4750 = phi float [ %4748, %4717 ], [ 1.000000e+00, %4713 ]
  %4751 = fadd fast float %4750, -1.000000e+00
  %4752 = fmul fast float %4751, %4711
  %4753 = fadd fast float %4752, 1.000000e+00
  br label %4754

; <label>:4754                                    ; preds = %4749, %4654
  %4755 = phi float [ %4753, %4749 ], [ 1.000000e+00, %4654 ]
  %4756 = fmul fast float %4755, %4650
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.CBufRet.f32 %4757, 2
  %4761 = fadd fast float %4758, %142
  %4762 = fadd fast float %4759, %143
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 1
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 0
  %4767 = extractvalue %dx.types.CBufRet.f32 %4765, 1
  %4768 = extractvalue %dx.types.CBufRet.f32 %4765, 2
  %4769 = fsub fast float -0.000000e+00, %4761
  %4770 = fsub fast float -0.000000e+00, %4762
  %4771 = fsub fast float %2587, %4760
  %4772 = fadd fast float %4771, %4764
  %4773 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4769, float %4770, float %4772)  ; Dot3(ax,ay,az,bx,by,bz)
  %4774 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4766, float %4767, float %4768)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = fdiv fast float 1.000000e+00, %4774
  %4776 = fmul fast float %4775, %4773
  %4777 = fmul fast float %4766, %4776
  %4778 = fmul fast float %4767, %4776
  %4779 = fadd fast float %4777, %4761
  %4780 = fadd fast float %4778, %4762
  %4781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4781, 0
  %4783 = extractvalue %dx.types.CBufRet.f32 %4781, 1
  %4784 = fsub fast float %4779, %4782
  %4785 = fsub fast float %4780, %4783
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 2
  %4788 = extractvalue %dx.types.CBufRet.f32 %4786, 3
  %4789 = fmul fast float %4784, %4787
  %4790 = fmul fast float %4785, %4788
  %4791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.i32 %4791, 3
  %4793 = icmp eq i32 %4792, 0
  br i1 %4793, label %4799, label %4794

; <label>:4794                                    ; preds = %4754
  %4795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %4789, float %4790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = extractvalue %dx.types.ResRet.f32 %4795, 1
  %4798 = extractvalue %dx.types.ResRet.f32 %4795, 2
  br label %4804

; <label>:4799                                    ; preds = %4754
  %4800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %4789, float %4790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4801 = extractvalue %dx.types.ResRet.f32 %4800, 0
  %4802 = extractvalue %dx.types.ResRet.f32 %4800, 1
  %4803 = extractvalue %dx.types.ResRet.f32 %4800, 2
  br label %4804

; <label>:4804                                    ; preds = %4799, %4794
  %4805 = phi float [ %4796, %4794 ], [ %4801, %4799 ]
  %4806 = phi float [ %4797, %4794 ], [ %4802, %4799 ]
  %4807 = phi float [ %4798, %4794 ], [ %4803, %4799 ]
  %4808 = extractvalue %dx.types.CBufRet.f32 %4763, 2
  %4809 = fmul fast float %4808, %4805
  %4810 = extractvalue %dx.types.CBufRet.f32 %4763, 0
  %4811 = fsub fast float %4776, %4810
  %4812 = fsub fast float %4811, %4809
  %4813 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4812)  ; FMax(a,b)
  %4814 = fmul fast float %4813, %4806
  %4815 = call float @dx.op.binary.f32(i32 36, float %4807, float %4814)  ; FMin(a,b)
  %4816 = fmul fast float %4815, 0xBFF7154760000000
  %4817 = call float @dx.op.unary.f32(i32 21, float %4816)  ; Exp(value)
  %4818 = fmul fast float %4756, %4817
  %4819 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %3531, float %3532, float %3533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = fcmp fast ogt float %4819, 0.000000e+00
  br i1 %4820, label %4821, label %5010, !dx.controlflow.hints !121

; <label>:4821                                    ; preds = %4804
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.f32 %4824, 1
  %4826 = select i1 %2593, float %4823, float %4825
  %4827 = extractvalue %dx.types.CBufRet.f32 %4822, 2
  %4828 = extractvalue %dx.types.CBufRet.f32 %4824, 2
  %4829 = select i1 %2593, float %4827, float %4828
  %4830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.i32 %4830, 0
  %4832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.i32 %4832, 0
  %4834 = select i1 %2593, i32 %4831, i32 %4833
  %4835 = fcmp fast olt float %4826, 5.000000e-01
  %4836 = icmp eq i32 %4834, 0
  %4837 = or i1 %4835, %4836
  br i1 %4837, label %5007, label %4838

; <label>:4838                                    ; preds = %4821
  %4839 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.i32 %4839, 0
  %4841 = uitofp i32 %4840 to float
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.CBufRet.f32 %4842, 1
  %4845 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4846 = extractvalue %dx.types.CBufRet.f32 %4842, 3
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4851 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4856 = extractvalue %dx.types.CBufRet.f32 %4852, 3
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.CBufRet.f32 %4857, 1
  %4860 = extractvalue %dx.types.CBufRet.f32 %4857, 2
  %4861 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4862 = fdiv fast float 1.000000e+00, %82
  %4863 = fmul fast float %4860, %94
  %4864 = fmul fast float %4861, %95
  %4865 = fmul fast float %4826, %3531
  %4866 = fmul fast float %4826, %3532
  %4867 = fmul fast float %4826, %3533
  %4868 = fadd fast float %4865, %142
  %4869 = fadd fast float %4866, %143
  %4870 = fadd fast float %4867, %144
  %4871 = fmul fast float %4843, %4868
  %4872 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4844, float %4871)  ; FMad(a,b,c)
  %4873 = call float @dx.op.tertiary.f32(i32 46, float %4870, float %4845, float %4872)  ; FMad(a,b,c)
  %4874 = fadd fast float %4873, %4846
  %4875 = fmul fast float %4848, %4868
  %4876 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4849, float %4875)  ; FMad(a,b,c)
  %4877 = call float @dx.op.tertiary.f32(i32 46, float %4870, float %4850, float %4876)  ; FMad(a,b,c)
  %4878 = fadd fast float %4877, %4851
  %4879 = fmul fast float %4853, %4868
  %4880 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4854, float %4879)  ; FMad(a,b,c)
  %4881 = call float @dx.op.tertiary.f32(i32 46, float %4870, float %4855, float %4880)  ; FMad(a,b,c)
  %4882 = fadd fast float %4881, %4856
  %4883 = fdiv fast float 1.000000e+00, %4882
  %4884 = fmul fast float %4874, 5.000000e-01
  %4885 = fmul fast float %4878, -5.000000e-01
  %4886 = fmul fast float %4884, %4883
  %4887 = fmul fast float %4885, %4883
  %4888 = fsub fast float 5.000000e-01, %4863
  %4889 = fadd fast float %4888, %4886
  %4890 = fsub fast float 5.000000e-01, %4864
  %4891 = fadd fast float %4890, %4887
  %4892 = fsub fast float %4883, %4862
  %4893 = call float @dx.op.dot2.f32(i32 54, float %4889, float %4891, float %4889, float %4891)  ; Dot2(ax,ay,bx,by)
  %4894 = call float @dx.op.binary.f32(i32 35, float %4893, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %4895 = call float @dx.op.dot2.f32(i32 54, float %4858, float %4859, float %4858, float %4859)  ; Dot2(ax,ay,bx,by)
  %4896 = fmul fast float %4895, %4894
  %4897 = call float @dx.op.unary.f32(i32 25, float %4896)  ; Rsqrt(value)
  %4898 = fmul fast float %4897, %4889
  %4899 = fmul fast float %4897, %4891
  %4900 = fadd fast float %4898, %4863
  %4901 = fadd fast float %4899, %4864
  %4902 = fmul fast float %4889, %4858
  %4903 = fmul fast float %4891, %4859
  %4904 = fmul fast float %4902, %4902
  %4905 = fmul fast float %4903, %4903
  %4906 = fadd fast float %4904, %4905
  %4907 = call float @dx.op.unary.f32(i32 24, float %4906)  ; Sqrt(value)
  %4908 = fdiv fast float 1.000000e+00, %4907
  %4909 = fmul fast float %4907, 3.906250e-03
  %4910 = fmul fast float %2592, 0x3F70624DE0000000
  %4911 = fadd fast float %4910, 0x3F70624DE0000000
  %4912 = icmp sgt i32 %4834, -1
  br i1 %4912, label %4913, label %4972

; <label>:4913                                    ; preds = %4838
  br label %4914

; <label>:4914                                    ; preds = %4968, %4913
  %4915 = phi float [ %4946, %4968 ], [ %82, %4913 ]
  %4916 = phi float [ %4933, %4968 ], [ %82, %4913 ]
  %4917 = phi float [ %4916, %4968 ], [ %82, %4913 ]
  %4918 = phi i32 [ %4969, %4968 ], [ 0, %4913 ]
  %4919 = sitofp i32 %4918 to float
  %4920 = fadd fast float %252, 5.000000e-01
  %4921 = call float @dx.op.unary.f32(i32 22, float %4920)  ; Frc(value)
  %4922 = fadd fast float %4919, %4921
  %4923 = sitofp i32 %4834 to float
  %4924 = fdiv fast float %4922, %4923
  %4925 = fmul fast float %4924, %4924
  %4926 = call float @dx.op.binary.f32(i32 36, float %4925, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %4927 = fmul fast float %4926, %4889
  %4928 = fmul fast float %4926, %4891
  %4929 = fmul fast float %4926, %4892
  %4930 = fadd fast float %4927, %4900
  %4931 = fadd fast float %4928, %4901
  %4932 = fadd fast float %4929, %4862
  %4933 = fdiv fast float 1.000000e+00, %4932
  %4934 = icmp ne i32 %4840, 0
  %4935 = fmul fast float %4909, %4926
  %4936 = call float @dx.op.binary.f32(i32 36, float %4935, float %4841)  ; FMin(a,b)
  %4937 = select i1 %4934, float %4936, float 0.000000e+00
  %4938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %51, float %4930, float %4931, float undef, float undef, i32 0, i32 0, i32 undef, float %4937)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4939 = extractvalue %dx.types.ResRet.f32 %4938, 0
  %4940 = fcmp fast ogt float %4939, -1.000000e+00
  %4941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4942 = extractvalue %dx.types.CBufRet.f32 %4941, 1
  %4943 = select i1 %4940, float %4942, float 1.000000e+00
  %4944 = fadd fast float %4939, 1.000000e+00
  %4945 = fmul fast float %4943, %4944
  %4946 = call float @dx.op.unary.f32(i32 6, float %4945)  ; FAbs(value)
  %4947 = fmul fast float %4946, %4911
  %4948 = fsub fast float %4933, %4946
  %4949 = fsub fast float %4948, %4947
  %4950 = fcmp fast ogt float %4949, 0.000000e+00
  %4951 = fcmp fast ogt float %4829, 0.000000e+00
  br i1 %4951, label %4952, label %4955

; <label>:4952                                    ; preds = %4914
  %4953 = fsub fast float %4933, %4917
  %4954 = call float @dx.op.binary.f32(i32 35, float %4953, float %4829)  ; FMax(a,b)
  br label %4955

; <label>:4955                                    ; preds = %4952, %4914
  %4956 = phi float [ %4954, %4952 ], [ %4826, %4914 ]
  %4957 = fcmp fast olt float %4949, %4956
  %4958 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4960 = fcmp fast oeq float %4930, %4958
  %4961 = fcmp fast oeq float %4931, %4959
  %4962 = and i1 %4960, %4961
  %4963 = and i1 %4950, %4957
  %4964 = and i1 %4963, %4962
  %4965 = fcmp fast ogt float %4926, %4908
  %4966 = and i1 %4965, %4964
  %4967 = zext i1 %4966 to i32
  br i1 %4966, label %4971, label %4968

; <label>:4968                                    ; preds = %4955
  %4969 = add nuw nsw i32 %4918, 1
  %4970 = icmp slt i32 %4918, %4834
  br i1 %4970, label %4914, label %4971

; <label>:4971                                    ; preds = %4968, %4955
  br label %4972

; <label>:4972                                    ; preds = %4971, %4838
  %4973 = phi i32 [ 0, %4838 ], [ %4967, %4971 ]
  %4974 = phi float [ %82, %4838 ], [ %4946, %4971 ]
  %4975 = phi float [ %82, %4838 ], [ %4915, %4971 ]
  %4976 = phi float [ %82, %4838 ], [ %4933, %4971 ]
  %4977 = phi float [ %82, %4838 ], [ %4916, %4971 ]
  %4978 = fsub fast float %4977, %4975
  %4979 = fsub fast float %4976, %4974
  %4980 = fsub fast float %4978, %4979
  %4981 = fcmp fast une float %4980, 0.000000e+00
  %4982 = fmul fast float %4978, %4976
  %4983 = fmul fast float %4977, %4979
  %4984 = fsub fast float %4982, %4983
  %4985 = fdiv fast float 1.000000e+00, %4980
  %4986 = fmul fast float %4984, %4985
  %4987 = select i1 %4981, float %4986, float %4976
  %4988 = fdiv fast float 1.000000e+00, %4987
  %4989 = fsub fast float %4988, %4862
  %4990 = fdiv fast float %4989, %4892
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fmul fast float %4991, %4889
  %4993 = fmul fast float %4991, %4891
  %4994 = fadd fast float %4900, -5.000000e-01
  %4995 = fadd fast float %4994, %4992
  %4996 = fadd fast float %4901, -5.000000e-01
  %4997 = fadd fast float %4996, %4993
  %4998 = call float @dx.op.unary.f32(i32 6, float %4995)  ; FAbs(value)
  %4999 = call float @dx.op.unary.f32(i32 6, float %4997)  ; FAbs(value)
  %5000 = fadd fast float %4998, -5.000000e-01
  %5001 = fadd fast float %4999, -5.000000e-01
  %5002 = call float @dx.op.binary.f32(i32 35, float %5000, float %5001)  ; FMax(a,b)
  %5003 = fcmp fast olt float %5002, 0.000000e+00
  %5004 = icmp ne i32 %4973, 0
  %5005 = and i1 %5004, %5003
  %5006 = select i1 %5005, float 0.000000e+00, float 1.000000e+00
  br label %5007

; <label>:5007                                    ; preds = %4972, %4821
  %5008 = phi float [ %5006, %4972 ], [ 1.000000e+00, %4821 ]
  %5009 = fmul fast float %5008, %4818
  br label %5010

; <label>:5010                                    ; preds = %5007, %4804, %4649
  %5011 = phi float [ %5009, %5007 ], [ %4818, %4804 ], [ %4650, %4649 ]
  %5012 = call float @dx.op.binary.f32(i32 36, float %5011, float %5011)  ; FMin(a,b)
  %5013 = call float @dx.op.binary.f32(i32 36, float %5011, float %5012)  ; FMin(a,b)
  %5014 = fcmp fast ogt float %5013, 0.000000e+00
  br i1 %5014, label %5015, label %5398, !dx.controlflow.hints !122

; <label>:5015                                    ; preds = %5010
  %5016 = fmul fast float %5011, %3542
  %5017 = fmul fast float %5011, %3543
  %5018 = fmul fast float %5011, %3544
  %5019 = fsub fast float %144, %2023
  %5020 = fcmp fast ogt float %5019, 0.000000e+00
  %5021 = fmul fast float %3531, 5.120000e+02
  %5022 = fmul fast float %3532, 5.120000e+02
  %5023 = fmul fast float %3533, 5.120000e+02
  %5024 = fadd fast float %5023, %144
  %5025 = fsub fast float %2023, %5024
  %5026 = fmul fast float %5025, 2.000000e+00
  %5027 = fadd fast float %5026, %5024
  %5028 = select i1 %5020, float %5027, float %5024
  %5029 = fsub fast float %5028, %144
  %5030 = call float @dx.op.dot3.f32(i32 55, float %5021, float %5022, float %5029, float %5021, float %5022, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = call float @dx.op.unary.f32(i32 25, float %5030)  ; Rsqrt(value)
  %5032 = fmul fast float %5031, %5021
  %5033 = fmul fast float %5031, %5022
  %5034 = fmul fast float %5031, %5029
  %5035 = fsub fast float %2023, %144
  %5036 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5035)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = fdiv fast float 1.000000e+00, %5037
  %5039 = fmul fast float %5038, %5036
  %5040 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5019, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = fcmp fast ogt float %5040, 0.000000e+00
  %5042 = fcmp fast olt float %5040, 0.000000e+00
  %5043 = zext i1 %5041 to i32
  %5044 = zext i1 %5042 to i32
  %5045 = sub nsw i32 %5043, %5044
  %5046 = sitofp i32 %5045 to float
  %5047 = fsub fast float %5028, %2023
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5021, float %5022, float %5047, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = fcmp fast ogt float %5048, 0.000000e+00
  %5050 = fcmp fast olt float %5048, 0.000000e+00
  %5051 = zext i1 %5049 to i32
  %5052 = zext i1 %5050 to i32
  %5053 = sub nsw i32 %5051, %5052
  %5054 = sitofp i32 %5053 to float
  %5055 = fcmp fast une float %5046, %5054
  br i1 %5055, label %5056, label %5066

; <label>:5056                                    ; preds = %5015
  %5057 = fmul fast float %5039, %5034
  %5058 = fmul fast float %5039, %5033
  %5059 = fmul fast float %5039, %5032
  %5060 = fmul fast float %5059, %5059
  %5061 = fmul fast float %5058, %5058
  %5062 = fadd fast float %5060, %5061
  %5063 = fmul fast float %5057, %5057
  %5064 = fadd fast float %5062, %5063
  %5065 = call float @dx.op.unary.f32(i32 24, float %5064)  ; Sqrt(value)
  br label %5076

; <label>:5066                                    ; preds = %5015
  %5067 = icmp slt i32 %5045, 0
  br i1 %5067, label %5068, label %5076

; <label>:5068                                    ; preds = %5066
  %5069 = fsub fast float %144, %5028
  %5070 = fmul fast float %5021, %5021
  %5071 = fmul fast float %5022, %5022
  %5072 = fadd fast float %5070, %5071
  %5073 = fmul fast float %5069, %5069
  %5074 = fadd fast float %5072, %5073
  %5075 = call float @dx.op.unary.f32(i32 24, float %5074)  ; Sqrt(value)
  br label %5076

; <label>:5076                                    ; preds = %5068, %5066, %5056
  %5077 = phi float [ %5065, %5056 ], [ %5075, %5068 ], [ 0.000000e+00, %5066 ]
  %5078 = fsub fast float -0.000000e+00, %5077
  %5079 = select i1 %5020, float -0.000000e+00, float %5078
  %5080 = fmul fast float %2024, 0x3FF7154760000000
  %5081 = fmul fast float %5080, %5079
  %5082 = fmul fast float %2025, 0x3FF7154760000000
  %5083 = fmul fast float %5082, %5079
  %5084 = fmul fast float %2026, 0x3FF7154760000000
  %5085 = fmul fast float %5084, %5079
  %5086 = call float @dx.op.unary.f32(i32 21, float %5081)  ; Exp(value)
  %5087 = call float @dx.op.unary.f32(i32 21, float %5083)  ; Exp(value)
  %5088 = call float @dx.op.unary.f32(i32 21, float %5085)  ; Exp(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = fmul fast float %5016, %5089
  %5093 = fmul fast float %5017, %5090
  %5094 = fmul fast float %5018, %5091
  %5095 = fsub fast float %3531, %161
  %5096 = fsub fast float %3532, %162
  %5097 = fsub fast float %3533, %163
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = call float @dx.op.unary.f32(i32 25, float %5098)  ; Rsqrt(value)
  %5100 = fmul fast float %5099, %5095
  %5101 = fmul fast float %5099, %5096
  %5102 = fmul fast float %5099, %5097
  %5103 = call float @dx.op.dot3.f32(i32 55, float %3531, float %3532, float %3533, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = call float @dx.op.dot3.f32(i32 55, float %2594, float %2595, float %2596, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5106 = fmul fast float %5105, %5105
  %5107 = fmul fast float %5106, %2624
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = fmul fast float %5108, %5105
  %5110 = call float @dx.op.dot3.f32(i32 55, float %2212, float %2213, float %2214, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = fmul fast float %5110, %5110
  %5112 = call float @dx.op.unary.f32(i32 6, float %5103)  ; FAbs(value)
  %5113 = fsub fast float 1.000000e+00, %2617
  %5114 = fmul fast float %2599, %2599
  %5115 = fmul fast float %5114, %5113
  %5116 = fadd fast float %5115, %2617
  %5117 = bitcast float %5116 to i32
  %5118 = ashr i32 %5117, 1
  %5119 = add nsw i32 %5118, 532487669
  %5120 = bitcast i32 %5119 to float
  %5121 = fadd fast float %5120, %2599
  %5122 = fmul fast float %2617, %5111
  %5123 = fsub fast float 1.000000e+00, %5111
  %5124 = fadd fast float %5123, %5122
  %5125 = fmul fast float %5112, %5112
  %5126 = fmul fast float %5125, %5113
  %5127 = fadd fast float %5126, %2617
  %5128 = bitcast float %5127 to i32
  %5129 = ashr i32 %5128, 1
  %5130 = add nsw i32 %5129, 532487669
  %5131 = bitcast i32 %5130 to float
  %5132 = fadd fast float %5131, %5112
  %5133 = fmul fast float %5124, %5124
  %5134 = fmul fast float %5133, %5121
  %5135 = fmul fast float %5134, %5132
  %5136 = fdiv fast float 0x3FF0A00000000000, %5135
  %5137 = fmul fast float %5136, %2617
  %5138 = fmul fast float %2870, 0x3FF9999980000000
  %5139 = fsub fast float 5.000000e+00, %5138
  %5140 = call float @dx.op.unary.f32(i32 6, float %5104)  ; FAbs(value)
  %5141 = fsub fast float 1.000000e+00, %5140
  %5142 = fmul fast float %2870, 0x41D9660740000000
  %5143 = fadd fast float %5142, 0xC1EFBF8940000000
  %5144 = bitcast float %5141 to i32
  %5145 = sitofp i32 %5144 to float
  %5146 = fmul fast float %5145, %5139
  %5147 = fadd fast float %5143, %5146
  %5148 = fptosi float %5147 to i32
  %5149 = bitcast i32 %5148 to float
  %5150 = fsub fast float 1.000000e+00, %2209
  %5151 = fsub fast float 1.000000e+00, %2210
  %5152 = fsub fast float 1.000000e+00, %2597
  %5153 = fmul fast float %5149, %5150
  %5154 = fmul fast float %5149, %5151
  %5155 = fmul fast float %5149, %5152
  %5156 = fadd fast float %5153, %2209
  %5157 = fadd fast float %5154, %2210
  %5158 = fadd fast float %5155, %2597
  br i1 %2893, label %5159, label %5182

; <label>:5159                                    ; preds = %5076
  %5160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1542, float %5140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.ResRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.ResRet.f32 %5160, 2
  %5164 = fadd fast float %5161, -5.000000e-01
  %5165 = fadd fast float %5162, -5.000000e-01
  %5166 = fadd fast float %5163, -5.000000e-01
  %5167 = fmul fast float %2209, 4.000000e+00
  %5168 = fmul fast float %5167, %5150
  %5169 = fmul fast float %5168, %5164
  %5170 = fmul fast float %2210, 4.000000e+00
  %5171 = fmul fast float %5170, %5151
  %5172 = fmul fast float %5171, %5165
  %5173 = fmul fast float %2597, 4.000000e+00
  %5174 = fmul fast float %5173, %5152
  %5175 = fmul fast float %5174, %5166
  %5176 = fadd fast float %5169, %5156
  %5177 = fadd fast float %5172, %5157
  %5178 = fadd fast float %5175, %5158
  %5179 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5180 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5181 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  br label %5182

; <label>:5182                                    ; preds = %5159, %5076
  %5183 = phi float [ %5179, %5159 ], [ %5156, %5076 ]
  %5184 = phi float [ %5180, %5159 ], [ %5157, %5076 ]
  %5185 = phi float [ %5181, %5159 ], [ %5158, %5076 ]
  %5186 = fmul fast float %5103, 9.843750e-01
  %5187 = fadd fast float %5186, 7.812500e-03
  %5188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5187, float %2874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5189 = extractvalue %dx.types.ResRet.f32 %5188, 0
  %5190 = extractvalue %dx.types.ResRet.f32 %5188, 1
  %5191 = extractvalue %dx.types.ResRet.f32 %5188, 2
  %5192 = extractvalue %dx.types.ResRet.f32 %5188, 3
  %5193 = fsub fast float %5191, %5189
  %5194 = fsub fast float %5192, %5190
  %5195 = fmul fast float %5193, %2880
  %5196 = fmul fast float %5194, %2880
  %5197 = fadd fast float %5195, %5189
  %5198 = fadd fast float %5196, %5190
  %5199 = fmul fast float %5197, %2209
  %5200 = fmul fast float %5197, %2210
  %5201 = fmul fast float %5197, %2597
  %5202 = fadd fast float %5199, %5198
  %5203 = fadd fast float %5200, %5198
  %5204 = fadd fast float %5201, %5198
  br i1 %2893, label %5205, label %5228

; <label>:5205                                    ; preds = %5182
  %5206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1542, float %5103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5207 = extractvalue %dx.types.ResRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.ResRet.f32 %5206, 1
  %5209 = extractvalue %dx.types.ResRet.f32 %5206, 2
  %5210 = fadd fast float %5207, -5.000000e-01
  %5211 = fadd fast float %5208, -5.000000e-01
  %5212 = fadd fast float %5209, -5.000000e-01
  %5213 = fmul fast float %2209, 4.000000e+00
  %5214 = fmul fast float %5213, %5150
  %5215 = fmul fast float %5214, %5210
  %5216 = fmul fast float %2210, 4.000000e+00
  %5217 = fmul fast float %5216, %5151
  %5218 = fmul fast float %5217, %5211
  %5219 = fmul fast float %2597, 4.000000e+00
  %5220 = fmul fast float %5219, %5152
  %5221 = fmul fast float %5220, %5212
  %5222 = fadd fast float %5215, %5202
  %5223 = fadd fast float %5218, %5203
  %5224 = fadd fast float %5221, %5204
  %5225 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5226 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5227 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  br label %5228

; <label>:5228                                    ; preds = %5205, %5182
  %5229 = phi float [ %5225, %5205 ], [ %5202, %5182 ]
  %5230 = phi float [ %5226, %5205 ], [ %5203, %5182 ]
  %5231 = phi float [ %5227, %5205 ], [ %5204, %5182 ]
  %5232 = call float @dx.op.binary.f32(i32 35, float %5230, float %5231)  ; FMax(a,b)
  %5233 = call float @dx.op.binary.f32(i32 35, float %5229, float %5232)  ; FMax(a,b)
  %5234 = fsub fast float 1.000000e+00, %5233
  %5235 = call float @dx.op.binary.f32(i32 35, float %5112, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5236 = fdiv fast float %942, %5235
  %5237 = fmul fast float %3440, %5236
  %5238 = fmul fast float %3442, %5236
  %5239 = fmul fast float %3444, %5236
  %5240 = call float @dx.op.unary.f32(i32 21, float %5237)  ; Exp(value)
  %5241 = call float @dx.op.unary.f32(i32 21, float %5238)  ; Exp(value)
  %5242 = call float @dx.op.unary.f32(i32 21, float %5239)  ; Exp(value)
  %5243 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5244 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5245 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5246 = select i1 %3437, float %5243, float 0.000000e+00
  %5247 = select i1 %3438, float %5244, float 0.000000e+00
  %5248 = select i1 %3439, float %5245, float 0.000000e+00
  %5249 = fsub fast float -0.000000e+00, %2212
  %5250 = fsub fast float -0.000000e+00, %2213
  %5251 = fsub fast float -0.000000e+00, %2214
  %5252 = call float @dx.op.dot3.f32(i32 55, float %3531, float %3532, float %3533, float %5249, float %5250, float %5251)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fmul fast float %5253, 9.843750e-01
  %5255 = fadd fast float %5254, 7.812500e-03
  %5256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5255, float %2874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5257 = extractvalue %dx.types.ResRet.f32 %5256, 0
  %5258 = extractvalue %dx.types.ResRet.f32 %5256, 1
  %5259 = extractvalue %dx.types.ResRet.f32 %5256, 2
  %5260 = extractvalue %dx.types.ResRet.f32 %5256, 3
  %5261 = fsub fast float %5259, %5257
  %5262 = fsub fast float %5260, %5258
  %5263 = fmul fast float %5261, %2880
  %5264 = fmul fast float %5262, %2880
  %5265 = fadd fast float %5263, %5257
  %5266 = fadd fast float %5264, %5258
  %5267 = fmul fast float %5265, %2209
  %5268 = fmul fast float %5265, %2210
  %5269 = fmul fast float %5265, %2597
  %5270 = fadd fast float %5267, %5266
  %5271 = fadd fast float %5268, %5266
  %5272 = fadd fast float %5269, %5266
  br i1 %2893, label %5273, label %5296

; <label>:5273                                    ; preds = %5228
  %5274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1542, float %5253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.ResRet.f32 %5274, 2
  %5278 = fadd fast float %5275, -5.000000e-01
  %5279 = fadd fast float %5276, -5.000000e-01
  %5280 = fadd fast float %5277, -5.000000e-01
  %5281 = fmul fast float %2209, 4.000000e+00
  %5282 = fmul fast float %5281, %5150
  %5283 = fmul fast float %5282, %5278
  %5284 = fmul fast float %2210, 4.000000e+00
  %5285 = fmul fast float %5284, %5151
  %5286 = fmul fast float %5285, %5279
  %5287 = fmul fast float %2597, 4.000000e+00
  %5288 = fmul fast float %5287, %5152
  %5289 = fmul fast float %5288, %5280
  %5290 = fadd fast float %5283, %5270
  %5291 = fadd fast float %5286, %5271
  %5292 = fadd fast float %5289, %5272
  %5293 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5295 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  br label %5296

; <label>:5296                                    ; preds = %5273, %5228
  %5297 = phi float [ %5293, %5273 ], [ %5270, %5228 ]
  %5298 = phi float [ %5294, %5273 ], [ %5271, %5228 ]
  %5299 = phi float [ %5295, %5273 ], [ %5272, %5228 ]
  %5300 = call float @dx.op.binary.f32(i32 35, float %5298, float %5299)  ; FMax(a,b)
  %5301 = call float @dx.op.binary.f32(i32 35, float %5297, float %5300)  ; FMax(a,b)
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = fmul fast float %2614, %3504
  %5304 = fadd fast float %3506, %5303
  %5305 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5306 = fsub fast float %3531, %2605
  %5307 = fsub fast float %3532, %2606
  %5308 = fsub fast float %3533, %2607
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5306, float %5307, float %5308, float %5306, float %5307, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.unary.f32(i32 25, float %5309)  ; Rsqrt(value)
  %5311 = fmul fast float %5310, %5306
  %5312 = fmul fast float %5310, %5307
  %5313 = fmul fast float %5310, %5308
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5249, float %5250, float %5251, float %5311, float %5312, float %5313)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = fmul fast float %5314, %5314
  %5316 = call float @dx.op.unary.f32(i32 6, float %5253)  ; FAbs(value)
  %5317 = call float @dx.op.binary.f32(i32 35, float %5305, float 0x3F847AE140000000)  ; FMax(a,b)
  %5318 = fmul fast float %5317, %5317
  %5319 = fmul fast float %5318, %5318
  %5320 = fsub fast float 1.000000e+00, %5319
  %5321 = fmul fast float %5114, %5320
  %5322 = fadd fast float %5321, %5319
  %5323 = bitcast float %5322 to i32
  %5324 = ashr i32 %5323, 1
  %5325 = add nsw i32 %5324, 532487669
  %5326 = bitcast i32 %5325 to float
  %5327 = fadd fast float %5326, %2599
  %5328 = fmul fast float %5319, %5315
  %5329 = fsub fast float 1.000000e+00, %5315
  %5330 = fadd fast float %5329, %5328
  %5331 = fmul fast float %5316, %5316
  %5332 = fmul fast float %5331, %5320
  %5333 = fadd fast float %5332, %5319
  %5334 = bitcast float %5333 to i32
  %5335 = ashr i32 %5334, 1
  %5336 = add nsw i32 %5335, 532487669
  %5337 = bitcast i32 %5336 to float
  %5338 = fadd fast float %5337, %5316
  %5339 = fmul fast float %5330, %5330
  %5340 = fmul fast float %5339, %5327
  %5341 = fmul fast float %5340, %5338
  %5342 = fdiv fast float 0x3FF0A00000000000, %5341
  %5343 = fmul fast float %5342, %5319
  %5344 = fmul fast float %5253, %5246
  %5345 = fmul fast float %5253, %5247
  %5346 = fmul fast float %5253, %5248
  %5347 = fmul fast float %5344, %5302
  %5348 = fmul fast float %5347, %5343
  %5349 = fmul fast float %5345, %5302
  %5350 = fmul fast float %5349, %5343
  %5351 = fmul fast float %5346, %5302
  %5352 = fmul fast float %5351, %5343
  %5353 = fmul fast float %5183, %5137
  %5354 = fmul fast float %5184, %5137
  %5355 = fmul fast float %5185, %5137
  %5356 = fsub fast float 1.000000e+00, %5104
  %5357 = bitcast float %5356 to i32
  %5358 = sitofp i32 %5357 to float
  %5359 = fmul fast float %5358, 5.000000e+00
  %5360 = fadd fast float %5359, 0xC1EFBF8940000000
  %5361 = fptosi float %5360 to i32
  %5362 = bitcast i32 %5361 to float
  %5363 = fmul fast float %5362, %1541
  %5364 = fmul fast float %5234, %5363
  %5365 = fmul fast float %5364, %3432
  %5366 = fmul fast float %5364, %3433
  %5367 = fmul fast float %5364, %3434
  %5368 = fadd fast float %5365, %5353
  %5369 = fadd fast float %5366, %5354
  %5370 = fadd fast float %5367, %5355
  %5371 = fmul fast float %5368, %5109
  %5372 = fmul fast float %5369, %5109
  %5373 = fmul fast float %5370, %5109
  %5374 = fmul fast float %5109, %5092
  %5375 = fmul fast float %5374, %5234
  %5376 = fmul fast float %5109, %5093
  %5377 = fmul fast float %5376, %5234
  %5378 = fmul fast float %5109, %5094
  %5379 = fmul fast float %5378, %5234
  %5380 = fadd fast float %5371, %5348
  %5381 = fadd fast float %5372, %5350
  %5382 = fadd fast float %5373, %5352
  %5383 = fmul fast float %5380, %5092
  %5384 = fmul fast float %5381, %5093
  %5385 = fmul fast float %5382, %5094
  %5386 = fadd fast float %5375, %3521
  %5387 = fmul fast float %5386, %1597
  %5388 = fadd fast float %5377, %3523
  %5389 = fmul fast float %5388, %1597
  %5390 = fadd fast float %5379, %3525
  %5391 = fmul fast float %5390, %1597
  %5392 = fadd fast float %5383, %3485
  %5393 = fmul fast float %5392, %1597
  %5394 = fadd fast float %5384, %3488
  %5395 = fmul fast float %5394, %1597
  %5396 = fadd fast float %5385, %3491
  %5397 = fmul fast float %5396, %1597
  br label %5398

; <label>:5398                                    ; preds = %5296, %5010, %3415
  %5399 = phi float [ %3486, %3415 ], [ %3486, %5010 ], [ %5393, %5296 ]
  %5400 = phi float [ %3489, %3415 ], [ %3489, %5010 ], [ %5395, %5296 ]
  %5401 = phi float [ %3492, %3415 ], [ %3492, %5010 ], [ %5397, %5296 ]
  %5402 = phi float [ %3522, %3415 ], [ %3522, %5010 ], [ %5387, %5296 ]
  %5403 = phi float [ %3524, %3415 ], [ %3524, %5010 ], [ %5389, %5296 ]
  %5404 = phi float [ %3526, %3415 ], [ %3526, %5010 ], [ %5391, %5296 ]
  %5405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.i32 %5405, 0
  %5407 = icmp eq i32 %5406, 0
  br i1 %5407, label %6471, label %5408

; <label>:5408                                    ; preds = %5398
  %5409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.f32 %5409, 2
  %5411 = extractvalue %dx.types.CBufRet.f32 %5409, 3
  %5412 = fmul fast float %5410, %94
  %5413 = fmul fast float %5411, %95
  %5414 = fptoui float %5412 to i32
  %5415 = fptoui float %5413 to i32
  %5416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.CBufRet.f32 %5416, 2
  %5419 = extractvalue %dx.types.CBufRet.f32 %5416, 3
  %5420 = fadd fast float %82, -4.000000e+00
  %5421 = call float @dx.op.binary.f32(i32 35, float %5420, float 0.000000e+00)  ; FMax(a,b)
  %5422 = fadd fast float %5421, %5417
  %5423 = fmul fast float %5422, %5418
  %5424 = call float @dx.op.unary.f32(i32 23, float %5423)  ; Log(value)
  %5425 = fmul fast float %5424, %5419
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 2
  %5428 = fmul fast float %5425, %5427
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.i32 %5430, 1
  %5432 = add i32 %5431, -1
  %5433 = uitofp i32 %5431 to float
  %5434 = fmul fast float %5433, %5429
  %5435 = fptoui float %5434 to i32
  %5436 = call i32 @dx.op.binary.i32(i32 40, i32 %5435, i32 %5432)  ; UMin(a,b)
  %5437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.i32 %5437, 2
  %5439 = extractvalue %dx.types.CBufRet.i32 %5437, 3
  %5440 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5415, i32 %5438, i32 %5414)  ; UMad(a,b,c)
  %5441 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5436, i32 %5439, i32 %5440)  ; UMad(a,b,c)
  %5442 = add nsw i32 %5406, -1
  %5443 = call i32 @dx.op.binary.i32(i32 37, i32 %5442, i32 0)  ; IMax(a,b)
  %5444 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %5445 = fptoui float %5444 to i32
  %5446 = lshr i32 %5445, 5
  %5447 = call i32 @dx.op.binary.i32(i32 40, i32 %5446, i32 8191)  ; UMin(a,b)
  %5448 = shl i32 %5447, 2
  %5449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.i32 %5449, 0
  %5451 = lshr i32 %5450, 16
  %5452 = and i32 %5450, 65535
  %5453 = lshr i32 %5450, 21
  %5454 = lshr i32 %5452, 5
  %5455 = call i32 @dx.op.binary.i32(i32 40, i32 %5454, i32 %5443)  ; UMin(a,b)
  %5456 = icmp ugt i32 %5453, %5455
  br i1 %5456, label %6471, label %5457

; <label>:5457                                    ; preds = %5408
  br label %5458

; <label>:5458                                    ; preds = %6461, %5457
  %5459 = phi i32 [ %6468, %6461 ], [ %5453, %5457 ]
  %5460 = phi float [ %6462, %6461 ], [ %5399, %5457 ]
  %5461 = phi float [ %6463, %6461 ], [ %5400, %5457 ]
  %5462 = phi float [ %6464, %6461 ], [ %5401, %5457 ]
  %5463 = phi float [ %6465, %6461 ], [ %5402, %5457 ]
  %5464 = phi float [ %6466, %6461 ], [ %5403, %5457 ]
  %5465 = phi float [ %6467, %6461 ], [ %5404, %5457 ]
  %5466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.i32 %5466, 0
  %5468 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5441, i32 %5467, i32 %5459)  ; UMad(a,b,c)
  %5469 = shl i32 %5468, 2
  %5470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5469, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.i32 %5470, 0
  %5472 = shl i32 %5459, 5
  %5473 = sub nsw i32 %5451, %5472
  %5474 = call i32 @dx.op.binary.i32(i32 37, i32 %5473, i32 0)  ; IMax(a,b)
  %5475 = call i32 @dx.op.binary.i32(i32 38, i32 %5474, i32 31)  ; IMin(a,b)
  %5476 = sub nsw i32 1, %5451
  %5477 = add nsw i32 %5476, %5452
  %5478 = call i32 @dx.op.binary.i32(i32 37, i32 %5477, i32 0)  ; IMax(a,b)
  %5479 = call i32 @dx.op.binary.i32(i32 38, i32 %5478, i32 32)  ; IMin(a,b)
  %5480 = and i32 %5479, 31
  %5481 = shl i32 -1, %5480
  %5482 = xor i32 %5481, -1
  %5483 = and i32 %5475, 31
  %5484 = shl i32 %5482, %5483
  %5485 = icmp eq i32 %5479, 32
  %5486 = select i1 %5485, i32 -1, i32 %5484
  %5487 = and i32 %5486, %5471
  %5488 = icmp eq i32 %5487, 0
  br i1 %5488, label %6461, label %5489

; <label>:5489                                    ; preds = %5458
  br label %5490

; <label>:5490                                    ; preds = %5625, %5489
  %5491 = phi i32 [ %5502, %5625 ], [ %5487, %5489 ]
  %5492 = phi float [ %5626, %5625 ], [ %5460, %5489 ]
  %5493 = phi float [ %5627, %5625 ], [ %5461, %5489 ]
  %5494 = phi float [ %5628, %5625 ], [ %5462, %5489 ]
  %5495 = phi float [ %5629, %5625 ], [ %5463, %5489 ]
  %5496 = phi float [ %5630, %5625 ], [ %5464, %5489 ]
  %5497 = phi float [ %5631, %5625 ], [ %5465, %5489 ]
  %5498 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5491)  ; FirstbitLo(value)
  %5499 = add i32 %5498, %5472
  %5500 = and i32 %5498, 31
  %5501 = shl i32 1, %5500
  %5502 = xor i32 %5501, %5491
  %5503 = mul i32 %5499, 112
  %5504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5503, i32 undef)  ; BufferLoad(srv,index,wot)
  %5505 = extractvalue %dx.types.ResRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.ResRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.ResRet.f32 %5504, 2
  %5508 = or i32 %5503, 12
  %5509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5508, i32 undef)  ; BufferLoad(srv,index,wot)
  %5510 = extractvalue %dx.types.ResRet.f32 %5509, 0
  %5511 = add i32 %5503, 16
  %5512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5511, i32 undef)  ; BufferLoad(srv,index,wot)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.ResRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.ResRet.f32 %5512, 2
  %5516 = add i32 %5503, 28
  %5517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5516, i32 undef)  ; BufferLoad(srv,index,wot)
  %5518 = extractvalue %dx.types.ResRet.i32 %5517, 0
  %5519 = add i32 %5503, 44
  %5520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5519, i32 undef)  ; BufferLoad(srv,index,wot)
  %5521 = extractvalue %dx.types.ResRet.f32 %5520, 0
  %5522 = add i32 %5503, 48
  %5523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5522, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5527 = extractvalue %dx.types.ResRet.f32 %5523, 3
  %5528 = add i32 %5503, 64
  %5529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5528, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.f32 %5529, 0
  %5531 = extractvalue %dx.types.ResRet.f32 %5529, 1
  %5532 = extractvalue %dx.types.ResRet.f32 %5529, 2
  %5533 = extractvalue %dx.types.ResRet.f32 %5529, 3
  %5534 = add i32 %5503, 80
  %5535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5534, i32 undef)  ; BufferLoad(srv,index,wot)
  %5536 = extractvalue %dx.types.ResRet.f32 %5535, 1
  %5537 = extractvalue %dx.types.ResRet.f32 %5535, 2
  %5538 = add i32 %5503, 92
  %5539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5538, i32 undef)  ; BufferLoad(srv,index,wot)
  %5540 = extractvalue %dx.types.ResRet.i32 %5539, 0
  %5541 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5506, float %5507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = select i1 %235, float %5536, float %5505
  %5543 = select i1 %235, float %5541, float %5506
  %5544 = select i1 %235, float %5537, float %5507
  %5545 = and i32 %5540, 65535
  %5546 = uitofp i32 %5545 to float
  %5547 = lshr i32 %5540, 16
  %5548 = uitofp i32 %5547 to float
  %5549 = and i32 %5518, 65535
  %5550 = and i32 %5518, 50331648
  %5551 = icmp slt i32 %5518, 0
  %5552 = icmp eq i32 %5550, 33554432
  %5553 = fsub fast float %5524, %142
  %5554 = fsub fast float %5525, %143
  %5555 = fsub fast float %5526, %144
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %5555, float %5553, float %5554, float %5555)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = call float @dx.op.unary.f32(i32 24, float %5556)  ; Sqrt(value)
  %5558 = fdiv fast float 1.000000e+00, %5557
  %5559 = fmul fast float %5558, %5553
  %5560 = fmul fast float %5558, %5554
  %5561 = fmul fast float %5558, %5555
  %5562 = fadd fast float %5557, %5510
  %5563 = fdiv fast float 1.000000e+00, %5562
  %5564 = fmul float %5521, %5563
  %5565 = fmul float %5564, %5564
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  br i1 %5552, label %5567, label %5588

; <label>:5567                                    ; preds = %5490
  %5568 = fmul fast float %5532, %5513
  %5569 = fmul fast float %5532, %5514
  %5570 = fmul fast float %5532, %5515
  %5571 = fadd fast float %5553, %5568
  %5572 = fadd fast float %5554, %5569
  %5573 = fadd fast float %5555, %5570
  %5574 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5572, float %5573, float %5571, float %5572, float %5573)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = call float @dx.op.unary.f32(i32 25, float %5574)  ; Rsqrt(value)
  %5576 = fmul fast float %5575, %5571
  %5577 = fmul fast float %5575, %5572
  %5578 = fmul fast float %5575, %5573
  %5579 = fsub fast float %142, %5524
  %5580 = fsub fast float %143, %5525
  %5581 = fsub fast float %144, %5526
  %5582 = fsub fast float -0.000000e+00, %5579
  %5583 = fsub fast float -0.000000e+00, %5580
  %5584 = fsub fast float -0.000000e+00, %5581
  %5585 = call float @dx.op.dot3.f32(i32 55, float %5582, float %5583, float %5584, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = fcmp fast ogt float %5585, 0.000000e+00
  %5587 = uitofp i1 %5586 to float
  br label %5588

; <label>:5588                                    ; preds = %5567, %5490
  %5589 = phi float [ %5587, %5567 ], [ 1.000000e+00, %5490 ]
  %5590 = phi float [ %5576, %5567 ], [ %5559, %5490 ]
  %5591 = phi float [ %5577, %5567 ], [ %5560, %5490 ]
  %5592 = phi float [ %5578, %5567 ], [ %5561, %5490 ]
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5513, float %5514, float %5515, float %5590, float %5591, float %5592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = fmul fast float %5593, %5593
  %5595 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = fmul fast float %5596, 5.000000e-01
  %5598 = fcmp fast ogt float %5593, 0.000000e+00
  %5599 = fsub fast float 1.000000e+00, %5597
  %5600 = select i1 %5598, float %5597, float %5599
  %5601 = fmul fast float %5600, %5548
  %5602 = fadd fast float %5601, %5546
  %5603 = fmul fast float %5602, 0x3EF0001000000000
  %5604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %5603, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5605 = extractvalue %dx.types.ResRet.f32 %5604, 0
  %5606 = fmul fast float %5593, %5530
  %5607 = fadd fast float %5606, %5531
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5609 = select i1 %5552, float 1.000000e+00, float %5608
  %5610 = select i1 %5552, float %5608, float 1.000000e+00
  %5611 = fmul fast float %5557, %5527
  %5612 = fsub fast float 1.000000e+00, %5611
  %5613 = fmul fast float %5612, %5533
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = fmul fast float %5614, %5610
  %5616 = fmul fast float %5615, 2.000000e+00
  %5617 = fsub fast float 3.000000e+00, %5616
  %5618 = fmul fast float %5605, %5589
  %5619 = fmul fast float %5615, %5615
  %5620 = fmul fast float %5619, %5618
  %5621 = fmul fast float %5620, %5617
  %5622 = call float @dx.op.binary.f32(i32 36, float %5621, float %5621)  ; FMin(a,b)
  %5623 = call float @dx.op.binary.f32(i32 36, float %5621, float %5622)  ; FMin(a,b)
  %5624 = fcmp fast ogt float %5623, 0.000000e+00
  br i1 %5624, label %5633, label %5625, !dx.controlflow.hints !123

; <label>:5625                                    ; preds = %6414, %6023, %5588
  %5626 = phi float [ %5492, %6023 ], [ %5492, %5588 ], [ %6457, %6414 ]
  %5627 = phi float [ %5493, %6023 ], [ %5493, %5588 ], [ %6458, %6414 ]
  %5628 = phi float [ %5494, %6023 ], [ %5494, %5588 ], [ %6459, %6414 ]
  %5629 = phi float [ %5495, %6023 ], [ %5495, %5588 ], [ %6451, %6414 ]
  %5630 = phi float [ %5496, %6023 ], [ %5496, %5588 ], [ %6452, %6414 ]
  %5631 = phi float [ %5497, %6023 ], [ %5497, %5588 ], [ %6453, %6414 ]
  %5632 = icmp eq i32 %5491, %5501
  br i1 %5632, label %6460, label %5490

; <label>:5633                                    ; preds = %5588
  %5634 = icmp eq i32 %5549, 255
  br i1 %5634, label %5779, label %5635, !dx.controlflow.hints !124

; <label>:5635                                    ; preds = %5633
  %5636 = mul nuw nsw i32 %5549, 176
  %5637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5636, i32 undef)  ; BufferLoad(srv,index,wot)
  %5638 = extractvalue %dx.types.ResRet.f32 %5637, 0
  %5639 = extractvalue %dx.types.ResRet.f32 %5637, 1
  %5640 = extractvalue %dx.types.ResRet.f32 %5637, 2
  %5641 = extractvalue %dx.types.ResRet.f32 %5637, 3
  %5642 = add nuw nsw i32 %5636, 16
  %5643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5642, i32 undef)  ; BufferLoad(srv,index,wot)
  %5644 = extractvalue %dx.types.ResRet.f32 %5643, 0
  %5645 = extractvalue %dx.types.ResRet.f32 %5643, 1
  %5646 = add nuw nsw i32 %5636, 32
  %5647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5646, i32 undef)  ; BufferLoad(srv,index,wot)
  %5648 = extractvalue %dx.types.ResRet.f32 %5647, 0
  %5649 = extractvalue %dx.types.ResRet.f32 %5647, 1
  %5650 = extractvalue %dx.types.ResRet.f32 %5647, 2
  %5651 = add nuw nsw i32 %5636, 48
  %5652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5651, i32 undef)  ; BufferLoad(srv,index,wot)
  %5653 = extractvalue %dx.types.ResRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.ResRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.ResRet.f32 %5652, 2
  %5656 = extractvalue %dx.types.ResRet.f32 %5652, 3
  %5657 = add nuw nsw i32 %5636, 64
  %5658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5657, i32 undef)  ; BufferLoad(srv,index,wot)
  %5659 = extractvalue %dx.types.ResRet.f32 %5658, 0
  %5660 = extractvalue %dx.types.ResRet.f32 %5658, 1
  %5661 = extractvalue %dx.types.ResRet.f32 %5658, 2
  %5662 = extractvalue %dx.types.ResRet.f32 %5658, 3
  %5663 = add nuw nsw i32 %5636, 80
  %5664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5663, i32 undef)  ; BufferLoad(srv,index,wot)
  %5665 = extractvalue %dx.types.ResRet.f32 %5664, 0
  %5666 = extractvalue %dx.types.ResRet.f32 %5664, 1
  %5667 = extractvalue %dx.types.ResRet.f32 %5664, 2
  %5668 = extractvalue %dx.types.ResRet.f32 %5664, 3
  %5669 = add nuw nsw i32 %5636, 96
  %5670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5669, i32 undef)  ; BufferLoad(srv,index,wot)
  %5671 = extractvalue %dx.types.ResRet.f32 %5670, 0
  %5672 = extractvalue %dx.types.ResRet.f32 %5670, 1
  %5673 = extractvalue %dx.types.ResRet.f32 %5670, 2
  %5674 = extractvalue %dx.types.ResRet.f32 %5670, 3
  %5675 = bitcast float %5645 to i32
  %5676 = fmul fast float %5650, %97
  %5677 = fmul fast float %5650, %98
  %5678 = fmul fast float %5650, %99
  %5679 = fadd fast float %5676, %142
  %5680 = fadd fast float %5677, %143
  %5681 = fadd fast float %5678, %144
  %5682 = fmul fast float %5679, %5653
  %5683 = call float @dx.op.tertiary.f32(i32 46, float %5680, float %5659, float %5682)  ; FMad(a,b,c)
  %5684 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5665, float %5683)  ; FMad(a,b,c)
  %5685 = fadd fast float %5684, %5671
  %5686 = fmul fast float %5679, %5654
  %5687 = call float @dx.op.tertiary.f32(i32 46, float %5680, float %5660, float %5686)  ; FMad(a,b,c)
  %5688 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5666, float %5687)  ; FMad(a,b,c)
  %5689 = fadd fast float %5688, %5672
  %5690 = fmul fast float %5679, %5655
  %5691 = call float @dx.op.tertiary.f32(i32 46, float %5680, float %5661, float %5690)  ; FMad(a,b,c)
  %5692 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5667, float %5691)  ; FMad(a,b,c)
  %5693 = fadd fast float %5692, %5673
  %5694 = fmul fast float %5679, %5656
  %5695 = call float @dx.op.tertiary.f32(i32 46, float %5680, float %5662, float %5694)  ; FMad(a,b,c)
  %5696 = call float @dx.op.tertiary.f32(i32 46, float %5681, float %5668, float %5695)  ; FMad(a,b,c)
  %5697 = fadd fast float %5696, %5674
  %5698 = fdiv fast float %5685, %5697
  %5699 = fdiv fast float %5689, %5697
  %5700 = fdiv fast float %5693, %5697
  %5701 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5700)  ; FMax(a,b)
  %5702 = fmul fast float %250, 0x401921FB60000000
  %5703 = call float @dx.op.unary.f32(i32 13, float %5702)  ; Sin(value)
  %5704 = call float @dx.op.unary.f32(i32 12, float %5702)  ; Cos(value)
  %5705 = fmul fast float %5704, %5649
  %5706 = call float @dx.op.tertiary.f32(i32 46, float %5703, float %5649, float 0.000000e+00)  ; FMad(a,b,c)
  %5707 = fmul fast float %5649, %5703
  %5708 = fsub fast float -0.000000e+00, %5707
  %5709 = call float @dx.op.tertiary.f32(i32 46, float %5704, float %5649, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5710

; <label>:5710                                    ; preds = %5710, %5635
  %5711 = phi float [ 0.000000e+00, %5635 ], [ %5743, %5710 ]
  %5712 = phi float [ 0.000000e+00, %5635 ], [ %5745, %5710 ]
  %5713 = phi i32 [ 0, %5635 ], [ %5746, %5710 ]
  %5714 = mul i32 %5713, 2
  %5715 = add i32 0, %5714
  %5716 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5715
  %5717 = load float, float* %5716, align 4
  %5718 = mul i32 %5713, 2
  %5719 = add i32 1, %5718
  %5720 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5719
  %5721 = load float, float* %5720, align 4
  %5722 = fmul fast float %5705, %5717
  %5723 = call float @dx.op.tertiary.f32(i32 46, float %5721, float %5708, float %5722)  ; FMad(a,b,c)
  %5724 = fmul fast float %5717, %5706
  %5725 = call float @dx.op.tertiary.f32(i32 46, float %5721, float %5709, float %5724)  ; FMad(a,b,c)
  %5726 = fadd fast float %5723, %5698
  %5727 = fadd fast float %5725, %5699
  %5728 = fmul fast float %5726, %5644
  %5729 = fmul fast float %5727, %5644
  %5730 = call float @dx.op.binary.f32(i32 35, float %5728, float %5640)  ; FMax(a,b)
  %5731 = call float @dx.op.binary.f32(i32 35, float %5729, float %5640)  ; FMax(a,b)
  %5732 = call float @dx.op.binary.f32(i32 36, float %5730, float %5641)  ; FMin(a,b)
  %5733 = call float @dx.op.binary.f32(i32 36, float %5731, float %5641)  ; FMin(a,b)
  %5734 = fadd fast float %5732, %5638
  %5735 = fadd fast float %5733, %5639
  %5736 = uitofp i32 %5675 to float
  %5737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %51, float %5734, float %5735, float %5736, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5738 = extractvalue %dx.types.ResRet.f32 %5737, 0
  %5739 = fsub fast float %5738, %5701
  %5740 = fsub fast float %5739, %5648
  %5741 = fcmp fast ogt float %5740, 0.000000e+00
  %5742 = select i1 %5741, float 1.000000e+00, float 0.000000e+00
  %5743 = fadd fast float %5742, %5711
  %5744 = select i1 %5741, float %5740, float 0.000000e+00
  %5745 = fadd fast float %5744, %5712
  %5746 = add nuw nsw i32 %5713, 1
  %5747 = icmp eq i32 %5746, 8
  br i1 %5747, label %5748, label %5710

; <label>:5748                                    ; preds = %5710
  %5749 = fdiv fast float 1.000000e+00, %5743
  %5750 = fmul fast float %5749, %5745
  %5751 = fdiv fast float 1.000000e+00, %5701
  %5752 = fmul fast float %5750, %5751
  %5753 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5754 = call float @dx.op.binary.f32(i32 35, float %5753, float 0.000000e+00)  ; FMax(a,b)
  %5755 = fmul fast float %5743, 1.250000e-01
  %5756 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5757 = fmul fast float %5756, 2.000000e+00
  %5758 = fadd fast float %5757, -1.000000e+00
  %5759 = fcmp fast ogt float %5758, 0.000000e+00
  %5760 = fcmp fast olt float %5758, 0.000000e+00
  %5761 = zext i1 %5759 to i32
  %5762 = zext i1 %5760 to i32
  %5763 = sub nsw i32 %5761, %5762
  %5764 = sitofp i32 %5763 to float
  %5765 = fmul fast float %5764, %5758
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fmul fast float %5766, %5766
  %5768 = fmul fast float %5767, %5766
  %5769 = fsub fast float %5766, %5768
  %5770 = fmul fast float %5769, %5754
  %5771 = fsub fast float 1.000000e+00, %5768
  %5772 = fsub fast float %5771, %5770
  %5773 = fmul fast float %5764, 5.000000e-01
  %5774 = fmul fast float %5773, %5772
  %5775 = fsub fast float -5.000000e-01, %5774
  %5776 = fmul fast float %5775, %5609
  %5777 = fadd fast float %5776, 1.000000e+00
  %5778 = fmul fast float %5777, %5621
  br label %5779

; <label>:5779                                    ; preds = %5748, %5633
  %5780 = phi float [ %5778, %5748 ], [ %5621, %5633 ]
  %5781 = call float @dx.op.binary.f32(i32 36, float %5780, float %5780)  ; FMin(a,b)
  %5782 = call float @dx.op.binary.f32(i32 36, float %5780, float %5781)  ; FMin(a,b)
  %5783 = fcmp fast ogt float %5782, 0.000000e+00
  %5784 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %5559, float %5560, float %5561)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = fcmp fast ogt float %5784, 0.000000e+00
  %5786 = and i1 %5783, %5785
  br i1 %5786, label %5787, label %6023, !dx.controlflow.hints !125

; <label>:5787                                    ; preds = %5779
  %5788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.f32 %5788, 1
  %5790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %5791 = extractvalue %dx.types.CBufRet.f32 %5790, 1
  %5792 = select i1 %2593, float %5789, float %5791
  %5793 = extractvalue %dx.types.CBufRet.f32 %5788, 2
  %5794 = extractvalue %dx.types.CBufRet.f32 %5790, 2
  %5795 = select i1 %2593, float %5793, float %5794
  %5796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.i32 %5796, 0
  %5798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.i32 %5798, 0
  %5800 = select i1 %2593, i32 %5797, i32 %5799
  %5801 = fcmp fast olt float %5792, 5.000000e-01
  %5802 = icmp eq i32 %5800, 0
  %5803 = or i1 %5801, %5802
  br i1 %5803, label %6018, label %5804

; <label>:5804                                    ; preds = %5787
  %5805 = fmul fast float %5553, %5553
  %5806 = fmul fast float %5554, %5554
  %5807 = fadd fast float %5805, %5806
  %5808 = fmul fast float %5555, %5555
  %5809 = fadd fast float %5807, %5808
  %5810 = call float @dx.op.unary.f32(i32 24, float %5809)  ; Sqrt(value)
  %5811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %5812 = extractvalue %dx.types.CBufRet.i32 %5811, 0
  %5813 = uitofp i32 %5812 to float
  %5814 = fmul fast float %5792, %5521
  %5815 = fdiv fast float %5814, %5810
  %5816 = call float @dx.op.binary.f32(i32 36, float %5815, float 1.000000e+01)  ; FMin(a,b)
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5821 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.CBufRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.CBufRet.f32 %5822, 2
  %5826 = extractvalue %dx.types.CBufRet.f32 %5822, 3
  %5827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.f32 %5827, 0
  %5829 = extractvalue %dx.types.CBufRet.f32 %5827, 1
  %5830 = extractvalue %dx.types.CBufRet.f32 %5827, 2
  %5831 = extractvalue %dx.types.CBufRet.f32 %5827, 3
  %5832 = fmul fast float %252, 0x401061CAC0000000
  %5833 = fmul fast float %252, 0x4023E1D7E0000000
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 0
  %5836 = extractvalue %dx.types.CBufRet.f32 %5834, 1
  %5837 = extractvalue %dx.types.CBufRet.f32 %5834, 2
  %5838 = extractvalue %dx.types.CBufRet.f32 %5834, 3
  %5839 = fsub fast float -0.000000e+00, %5559
  %5840 = fmul fast float %5561, %5839
  %5841 = fmul fast float %5559, %5839
  %5842 = fmul fast float %5560, %5560
  %5843 = fsub fast float %5841, %5842
  %5844 = fdiv fast float 1.000000e+00, %82
  %5845 = fmul fast float %5837, %94
  %5846 = fmul fast float %5838, %95
  %5847 = fmul fast float %5792, %5559
  %5848 = fmul fast float %5792, %5561
  %5849 = fadd fast float %5847, %142
  %5850 = fadd fast float %5848, %144
  %5851 = fadd fast float %5833, 5.000000e-01
  %5852 = call float @dx.op.unary.f32(i32 22, float %5851)  ; Frc(value)
  %5853 = bitcast float %5852 to i32
  %5854 = ashr i32 %5853, 1
  %5855 = add nsw i32 %5854, 532487669
  %5856 = bitcast i32 %5855 to float
  %5857 = fmul fast float %5856, %5816
  %5858 = fadd fast float %5832, 5.000000e-01
  %5859 = call float @dx.op.unary.f32(i32 22, float %5858)  ; Frc(value)
  %5860 = fmul fast float %5859, 0x401921FB60000000
  %5861 = call float @dx.op.unary.f32(i32 12, float %5860)  ; Cos(value)
  %5862 = fmul fast float %5861, %5861
  %5863 = fsub fast float 1.000000e+00, %5862
  %5864 = bitcast float %5863 to i32
  %5865 = ashr i32 %5864, 1
  %5866 = add nsw i32 %5865, 532487669
  %5867 = bitcast i32 %5866 to float
  %5868 = fmul fast float %5857, %5861
  %5869 = fmul fast float %5868, %5560
  %5870 = fmul fast float %5868, %5839
  %5871 = fadd fast float %5849, %5869
  %5872 = fmul fast float %5867, %5857
  %5873 = fmul fast float %5840, %5872
  %5874 = fmul fast float %5872, %5561
  %5875 = fmul fast float %5872, %5843
  %5876 = fsub fast float %5871, %5873
  %5877 = fadd fast float %5874, %5792
  %5878 = fmul fast float %5877, %5560
  %5879 = fadd fast float %5870, %143
  %5880 = fadd fast float %5879, %5878
  %5881 = fadd fast float %5850, %5875
  %5882 = fmul fast float %5876, %5818
  %5883 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5819, float %5882)  ; FMad(a,b,c)
  %5884 = call float @dx.op.tertiary.f32(i32 46, float %5881, float %5820, float %5883)  ; FMad(a,b,c)
  %5885 = fadd fast float %5884, %5821
  %5886 = fmul fast float %5876, %5823
  %5887 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5824, float %5886)  ; FMad(a,b,c)
  %5888 = call float @dx.op.tertiary.f32(i32 46, float %5881, float %5825, float %5887)  ; FMad(a,b,c)
  %5889 = fadd fast float %5888, %5826
  %5890 = fmul fast float %5876, %5828
  %5891 = call float @dx.op.tertiary.f32(i32 46, float %5880, float %5829, float %5890)  ; FMad(a,b,c)
  %5892 = call float @dx.op.tertiary.f32(i32 46, float %5881, float %5830, float %5891)  ; FMad(a,b,c)
  %5893 = fadd fast float %5892, %5831
  %5894 = fdiv fast float 1.000000e+00, %5893
  %5895 = fmul fast float %5885, 5.000000e-01
  %5896 = fmul fast float %5889, -5.000000e-01
  %5897 = fmul fast float %5895, %5894
  %5898 = fmul fast float %5896, %5894
  %5899 = fsub fast float 5.000000e-01, %5845
  %5900 = fadd fast float %5899, %5897
  %5901 = fsub fast float 5.000000e-01, %5846
  %5902 = fadd fast float %5901, %5898
  %5903 = fsub fast float %5894, %5844
  %5904 = call float @dx.op.dot2.f32(i32 54, float %5900, float %5902, float %5900, float %5902)  ; Dot2(ax,ay,bx,by)
  %5905 = call float @dx.op.binary.f32(i32 35, float %5904, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %5906 = call float @dx.op.dot2.f32(i32 54, float %5835, float %5836, float %5835, float %5836)  ; Dot2(ax,ay,bx,by)
  %5907 = fmul fast float %5906, %5905
  %5908 = call float @dx.op.unary.f32(i32 25, float %5907)  ; Rsqrt(value)
  %5909 = fmul fast float %5908, %5900
  %5910 = fmul fast float %5908, %5902
  %5911 = fadd fast float %5909, %5845
  %5912 = fadd fast float %5910, %5846
  %5913 = fmul fast float %5900, %5835
  %5914 = fmul fast float %5902, %5836
  %5915 = fmul fast float %5913, %5913
  %5916 = fmul fast float %5914, %5914
  %5917 = fadd fast float %5915, %5916
  %5918 = call float @dx.op.unary.f32(i32 24, float %5917)  ; Sqrt(value)
  %5919 = fdiv fast float 1.000000e+00, %5918
  %5920 = fmul fast float %5918, 3.906250e-03
  %5921 = fmul fast float %2592, 0x3F70624DE0000000
  %5922 = fadd fast float %5921, 0x3F70624DE0000000
  %5923 = icmp sgt i32 %5800, -1
  br i1 %5923, label %5924, label %5983

; <label>:5924                                    ; preds = %5804
  br label %5925

; <label>:5925                                    ; preds = %5979, %5924
  %5926 = phi float [ %5957, %5979 ], [ %82, %5924 ]
  %5927 = phi float [ %5944, %5979 ], [ %82, %5924 ]
  %5928 = phi float [ %5927, %5979 ], [ %82, %5924 ]
  %5929 = phi i32 [ %5980, %5979 ], [ 0, %5924 ]
  %5930 = sitofp i32 %5929 to float
  %5931 = fadd fast float %252, 5.000000e-01
  %5932 = call float @dx.op.unary.f32(i32 22, float %5931)  ; Frc(value)
  %5933 = fadd fast float %5930, %5932
  %5934 = sitofp i32 %5800 to float
  %5935 = fdiv fast float %5933, %5934
  %5936 = fmul fast float %5935, %5935
  %5937 = call float @dx.op.binary.f32(i32 36, float %5936, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %5938 = fmul fast float %5937, %5900
  %5939 = fmul fast float %5937, %5902
  %5940 = fmul fast float %5937, %5903
  %5941 = fadd fast float %5938, %5911
  %5942 = fadd fast float %5939, %5912
  %5943 = fadd fast float %5940, %5844
  %5944 = fdiv fast float 1.000000e+00, %5943
  %5945 = icmp ne i32 %5812, 0
  %5946 = fmul fast float %5920, %5937
  %5947 = call float @dx.op.binary.f32(i32 36, float %5946, float %5813)  ; FMin(a,b)
  %5948 = select i1 %5945, float %5947, float 0.000000e+00
  %5949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %51, float %5941, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float %5948)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5950 = extractvalue %dx.types.ResRet.f32 %5949, 0
  %5951 = fcmp fast ogt float %5950, -1.000000e+00
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 1
  %5954 = select i1 %5951, float %5953, float 1.000000e+00
  %5955 = fadd fast float %5950, 1.000000e+00
  %5956 = fmul fast float %5954, %5955
  %5957 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %5958 = fmul fast float %5957, %5922
  %5959 = fsub fast float %5944, %5957
  %5960 = fsub fast float %5959, %5958
  %5961 = fcmp fast ogt float %5960, 0.000000e+00
  %5962 = fcmp fast ogt float %5795, 0.000000e+00
  br i1 %5962, label %5963, label %5966

; <label>:5963                                    ; preds = %5925
  %5964 = fsub fast float %5944, %5928
  %5965 = call float @dx.op.binary.f32(i32 35, float %5964, float %5795)  ; FMax(a,b)
  br label %5966

; <label>:5966                                    ; preds = %5963, %5925
  %5967 = phi float [ %5965, %5963 ], [ %5792, %5925 ]
  %5968 = fcmp fast olt float %5960, %5967
  %5969 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5970 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5971 = fcmp fast oeq float %5941, %5969
  %5972 = fcmp fast oeq float %5942, %5970
  %5973 = and i1 %5971, %5972
  %5974 = and i1 %5961, %5968
  %5975 = and i1 %5974, %5973
  %5976 = fcmp fast ogt float %5937, %5919
  %5977 = and i1 %5976, %5975
  %5978 = zext i1 %5977 to i32
  br i1 %5977, label %5982, label %5979

; <label>:5979                                    ; preds = %5966
  %5980 = add nuw nsw i32 %5929, 1
  %5981 = icmp slt i32 %5929, %5800
  br i1 %5981, label %5925, label %5982

; <label>:5982                                    ; preds = %5979, %5966
  br label %5983

; <label>:5983                                    ; preds = %5982, %5804
  %5984 = phi i32 [ 0, %5804 ], [ %5978, %5982 ]
  %5985 = phi float [ %82, %5804 ], [ %5957, %5982 ]
  %5986 = phi float [ %82, %5804 ], [ %5926, %5982 ]
  %5987 = phi float [ %82, %5804 ], [ %5944, %5982 ]
  %5988 = phi float [ %82, %5804 ], [ %5927, %5982 ]
  %5989 = fsub fast float %5988, %5986
  %5990 = fsub fast float %5987, %5985
  %5991 = fsub fast float %5989, %5990
  %5992 = fcmp fast une float %5991, 0.000000e+00
  %5993 = fmul fast float %5989, %5987
  %5994 = fmul fast float %5988, %5990
  %5995 = fsub fast float %5993, %5994
  %5996 = fdiv fast float 1.000000e+00, %5991
  %5997 = fmul fast float %5995, %5996
  %5998 = select i1 %5992, float %5997, float %5987
  %5999 = fdiv fast float 1.000000e+00, %5998
  %6000 = fsub fast float %5999, %5844
  %6001 = fdiv fast float %6000, %5903
  %6002 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6003 = fmul fast float %6002, %5900
  %6004 = fmul fast float %6002, %5902
  %6005 = fadd fast float %6003, %5911
  %6006 = fadd fast float %6004, %5912
  %6007 = fadd fast float %6005, -5.000000e-01
  %6008 = fadd fast float %6006, -5.000000e-01
  %6009 = call float @dx.op.unary.f32(i32 6, float %6007)  ; FAbs(value)
  %6010 = call float @dx.op.unary.f32(i32 6, float %6008)  ; FAbs(value)
  %6011 = fadd fast float %6009, -5.000000e-01
  %6012 = fadd fast float %6010, -5.000000e-01
  %6013 = call float @dx.op.binary.f32(i32 35, float %6011, float %6012)  ; FMax(a,b)
  %6014 = fcmp fast olt float %6013, 0.000000e+00
  %6015 = icmp ne i32 %5984, 0
  %6016 = and i1 %6015, %6014
  %6017 = select i1 %6016, float 0.000000e+00, float 1.000000e+00
  br label %6018

; <label>:6018                                    ; preds = %5983, %5787
  %6019 = phi float [ %6017, %5983 ], [ 1.000000e+00, %5787 ]
  %6020 = fmul fast float %6019, %5780
  %6021 = fmul fast float %6019, %5780
  %6022 = fmul fast float %6019, %5780
  br label %6023

; <label>:6023                                    ; preds = %6018, %5779
  %6024 = phi float [ %6020, %6018 ], [ %5780, %5779 ]
  %6025 = phi float [ %6021, %6018 ], [ %5780, %5779 ]
  %6026 = phi float [ %6022, %6018 ], [ %5780, %5779 ]
  %6027 = call float @dx.op.binary.f32(i32 36, float %6025, float %6026)  ; FMin(a,b)
  %6028 = call float @dx.op.binary.f32(i32 36, float %6024, float %6027)  ; FMin(a,b)
  %6029 = fcmp fast ogt float %6028, 0.000000e+00
  br i1 %6029, label %6030, label %5625, !dx.controlflow.hints !126

; <label>:6030                                    ; preds = %6023
  %6031 = fmul fast float %6024, %5542
  %6032 = fmul fast float %6024, %5543
  %6033 = fmul fast float %6024, %5544
  %6034 = fsub fast float %5526, %2023
  %6035 = fcmp fast ogt float %6034, 0.000000e+00
  %6036 = fsub fast float %144, %2023
  %6037 = fcmp fast ogt float %6036, 0.000000e+00
  %6038 = xor i1 %6037, %6035
  %6039 = fsub fast float %2023, %5526
  %6040 = fmul fast float %6039, 2.000000e+00
  %6041 = fadd fast float %6040, %5526
  %6042 = select i1 %6038, float %5526, float %6041
  %6043 = fsub fast float %6042, %144
  %6044 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %6043, float %5553, float %5554, float %6043)  ; Dot3(ax,ay,az,bx,by,bz)
  %6045 = call float @dx.op.unary.f32(i32 25, float %6044)  ; Rsqrt(value)
  %6046 = fmul fast float %6045, %5553
  %6047 = fmul fast float %6045, %5554
  %6048 = fmul fast float %6045, %6043
  %6049 = fsub fast float %2023, %144
  %6050 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6049)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6046, float %6047, float %6048)  ; Dot3(ax,ay,az,bx,by,bz)
  %6052 = fdiv fast float 1.000000e+00, %6051
  %6053 = fmul fast float %6052, %6050
  %6054 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6036, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6055 = fcmp fast ogt float %6054, 0.000000e+00
  %6056 = fcmp fast olt float %6054, 0.000000e+00
  %6057 = zext i1 %6055 to i32
  %6058 = zext i1 %6056 to i32
  %6059 = sub nsw i32 %6057, %6058
  %6060 = sitofp i32 %6059 to float
  %6061 = fsub fast float %6042, %2023
  %6062 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5554, float %6061, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = fcmp fast ogt float %6062, 0.000000e+00
  %6064 = fcmp fast olt float %6062, 0.000000e+00
  %6065 = zext i1 %6063 to i32
  %6066 = zext i1 %6064 to i32
  %6067 = sub nsw i32 %6065, %6066
  %6068 = sitofp i32 %6067 to float
  %6069 = fcmp fast une float %6060, %6068
  br i1 %6069, label %6070, label %6080

; <label>:6070                                    ; preds = %6030
  %6071 = fmul fast float %6053, %6048
  %6072 = fmul fast float %6053, %6047
  %6073 = fmul fast float %6053, %6046
  %6074 = fmul fast float %6073, %6073
  %6075 = fmul fast float %6072, %6072
  %6076 = fadd fast float %6074, %6075
  %6077 = fmul fast float %6071, %6071
  %6078 = fadd fast float %6076, %6077
  %6079 = call float @dx.op.unary.f32(i32 24, float %6078)  ; Sqrt(value)
  br label %6092

; <label>:6080                                    ; preds = %6030
  %6081 = icmp slt i32 %6059, 0
  br i1 %6081, label %6082, label %6092

; <label>:6082                                    ; preds = %6080
  %6083 = fsub fast float %142, %5524
  %6084 = fsub fast float %143, %5525
  %6085 = fsub fast float %144, %6042
  %6086 = fmul fast float %6083, %6083
  %6087 = fmul fast float %6084, %6084
  %6088 = fadd fast float %6086, %6087
  %6089 = fmul fast float %6085, %6085
  %6090 = fadd fast float %6088, %6089
  %6091 = call float @dx.op.unary.f32(i32 24, float %6090)  ; Sqrt(value)
  br label %6092

; <label>:6092                                    ; preds = %6082, %6080, %6070
  %6093 = phi float [ %6079, %6070 ], [ %6091, %6082 ], [ 0.000000e+00, %6080 ]
  %6094 = and i1 %6037, %6035
  %6095 = fsub fast float -0.000000e+00, %6093
  %6096 = select i1 %6094, float -0.000000e+00, float %6095
  %6097 = fmul fast float %2024, 0x3FF7154760000000
  %6098 = fmul fast float %6097, %6096
  %6099 = fmul fast float %2025, 0x3FF7154760000000
  %6100 = fmul fast float %6099, %6096
  %6101 = fmul fast float %2026, 0x3FF7154760000000
  %6102 = fmul fast float %6101, %6096
  %6103 = call float @dx.op.unary.f32(i32 21, float %6098)  ; Exp(value)
  %6104 = call float @dx.op.unary.f32(i32 21, float %6100)  ; Exp(value)
  %6105 = call float @dx.op.unary.f32(i32 21, float %6102)  ; Exp(value)
  %6106 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6108 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6109 = fmul fast float %6031, %6106
  %6110 = fmul fast float %6032, %6107
  %6111 = fmul fast float %6033, %6108
  %6112 = fsub fast float %5559, %161
  %6113 = fsub fast float %5560, %162
  %6114 = fsub fast float %5561, %163
  %6115 = call float @dx.op.dot3.f32(i32 55, float %6112, float %6113, float %6114, float %6112, float %6113, float %6114)  ; Dot3(ax,ay,az,bx,by,bz)
  %6116 = call float @dx.op.unary.f32(i32 25, float %6115)  ; Rsqrt(value)
  %6117 = fmul fast float %6116, %6112
  %6118 = fmul fast float %6116, %6113
  %6119 = fmul fast float %6116, %6114
  %6120 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %5561, float %2212, float %2213, float %2214)  ; Dot3(ax,ay,az,bx,by,bz)
  %6121 = call float @dx.op.dot3.f32(i32 55, float %2594, float %2595, float %2596, float %6117, float %6118, float %6119)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6123 = fmul fast float %6122, %5566
  %6124 = fmul fast float %6122, %6122
  %6125 = fmul fast float %6124, %2624
  %6126 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6127 = fmul fast float %6123, %6126
  %6128 = bitcast float %5556 to i32
  %6129 = ashr i32 %6128, 1
  %6130 = sub nsw i32 1597463007, %6129
  %6131 = bitcast i32 %6130 to float
  %6132 = fmul fast float %6131, %5553
  %6133 = fmul fast float %6131, %5554
  %6134 = fmul fast float %6131, %5555
  %6135 = fsub fast float %6132, %161
  %6136 = fsub fast float %6133, %162
  %6137 = fsub fast float %6134, %163
  %6138 = call float @dx.op.dot3.f32(i32 55, float %6135, float %6136, float %6137, float %6135, float %6136, float %6137)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = call float @dx.op.unary.f32(i32 25, float %6138)  ; Rsqrt(value)
  %6140 = fmul fast float %6135, %6139
  %6141 = fmul fast float %6136, %6139
  %6142 = fmul fast float %6137, %6139
  %6143 = call float @dx.op.dot3.f32(i32 55, float %2212, float %2213, float %2214, float %6140, float %6141, float %6142)  ; Dot3(ax,ay,az,bx,by,bz)
  %6144 = fmul fast float %6143, %6143
  %6145 = call float @dx.op.unary.f32(i32 6, float %6120)  ; FAbs(value)
  %6146 = fsub fast float 1.000000e+00, %2617
  %6147 = fmul fast float %2599, %2599
  %6148 = fmul fast float %6147, %6146
  %6149 = fadd fast float %6148, %2617
  %6150 = bitcast float %6149 to i32
  %6151 = ashr i32 %6150, 1
  %6152 = add nsw i32 %6151, 532487669
  %6153 = bitcast i32 %6152 to float
  %6154 = fadd fast float %6153, %2599
  %6155 = fmul fast float %2617, %6144
  %6156 = fsub fast float 1.000000e+00, %6144
  %6157 = fadd fast float %6156, %6155
  %6158 = fmul fast float %6145, %6145
  %6159 = fmul fast float %6158, %6146
  %6160 = fadd fast float %6159, %2617
  %6161 = bitcast float %6160 to i32
  %6162 = ashr i32 %6161, 1
  %6163 = add nsw i32 %6162, 532487669
  %6164 = bitcast i32 %6163 to float
  %6165 = fadd fast float %6164, %6145
  %6166 = fmul fast float %6157, %6157
  %6167 = fmul fast float %6166, %6154
  %6168 = fmul fast float %6167, %6165
  %6169 = fdiv fast float 1.000000e+00, %6168
  %6170 = bitcast float %2617 to i32
  %6171 = sitofp i32 %6170 to float
  %6172 = fmul fast float %6171, 0x3FE7F73180000000
  %6173 = fadd fast float %6172, 0x41AFE27C40000000
  %6174 = fptosi float %6173 to i32
  %6175 = bitcast i32 %6174 to float
  %6176 = fmul fast float %5521, 0x3FD80E9D60000000
  %6177 = fmul fast float %6176, %6131
  %6178 = fadd fast float %6175, %6177
  %6179 = bitcast float %6178 to i32
  %6180 = sub nsw i32 2129859010, %6179
  %6181 = bitcast i32 %6180 to float
  %6182 = fmul fast float %2617, %6169
  %6183 = fmul fast float %6182, %6175
  %6184 = fmul fast float %6183, %6181
  %6185 = fmul fast float %2870, 0x3FF9999980000000
  %6186 = fsub fast float 5.000000e+00, %6185
  %6187 = call float @dx.op.unary.f32(i32 6, float %6121)  ; FAbs(value)
  %6188 = fsub fast float 1.000000e+00, %6187
  %6189 = fmul fast float %2870, 0x41D9660740000000
  %6190 = fadd fast float %6189, 0xC1EFBF8940000000
  %6191 = bitcast float %6188 to i32
  %6192 = sitofp i32 %6191 to float
  %6193 = fmul fast float %6192, %6186
  %6194 = fadd fast float %6190, %6193
  %6195 = fptosi float %6194 to i32
  %6196 = bitcast i32 %6195 to float
  %6197 = fsub fast float 1.000000e+00, %2209
  %6198 = fsub fast float 1.000000e+00, %2210
  %6199 = fsub fast float 1.000000e+00, %2597
  %6200 = fmul fast float %6196, %6197
  %6201 = fmul fast float %6196, %6198
  %6202 = fmul fast float %6196, %6199
  %6203 = fadd fast float %6200, %2209
  %6204 = fadd fast float %6201, %2210
  %6205 = fadd fast float %6202, %2597
  br i1 %2893, label %6206, label %6229

; <label>:6206                                    ; preds = %6092
  %6207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1542, float %6187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6208 = extractvalue %dx.types.ResRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.ResRet.f32 %6207, 1
  %6210 = extractvalue %dx.types.ResRet.f32 %6207, 2
  %6211 = fadd fast float %6208, -5.000000e-01
  %6212 = fadd fast float %6209, -5.000000e-01
  %6213 = fadd fast float %6210, -5.000000e-01
  %6214 = fmul fast float %2209, 4.000000e+00
  %6215 = fmul fast float %6214, %6197
  %6216 = fmul fast float %6215, %6211
  %6217 = fmul fast float %2210, 4.000000e+00
  %6218 = fmul fast float %6217, %6198
  %6219 = fmul fast float %6218, %6212
  %6220 = fmul fast float %2597, 4.000000e+00
  %6221 = fmul fast float %6220, %6199
  %6222 = fmul fast float %6221, %6213
  %6223 = fadd fast float %6216, %6203
  %6224 = fadd fast float %6219, %6204
  %6225 = fadd fast float %6222, %6205
  %6226 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6227 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  %6228 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  br label %6229

; <label>:6229                                    ; preds = %6206, %6092
  %6230 = phi float [ %6226, %6206 ], [ %6203, %6092 ]
  %6231 = phi float [ %6227, %6206 ], [ %6204, %6092 ]
  %6232 = phi float [ %6228, %6206 ], [ %6205, %6092 ]
  %6233 = fmul fast float %6120, 9.843750e-01
  %6234 = fadd fast float %6233, 7.812500e-03
  %6235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %6234, float %2874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6236 = extractvalue %dx.types.ResRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.ResRet.f32 %6235, 1
  %6238 = extractvalue %dx.types.ResRet.f32 %6235, 2
  %6239 = extractvalue %dx.types.ResRet.f32 %6235, 3
  %6240 = fsub fast float %6238, %6236
  %6241 = fsub fast float %6239, %6237
  %6242 = fmul fast float %6240, %2880
  %6243 = fmul fast float %6241, %2880
  %6244 = fadd fast float %6242, %6236
  %6245 = fadd fast float %6243, %6237
  %6246 = fmul fast float %6244, %2209
  %6247 = fmul fast float %6244, %2210
  %6248 = fmul fast float %6244, %2597
  %6249 = fadd fast float %6246, %6245
  %6250 = fadd fast float %6247, %6245
  %6251 = fadd fast float %6248, %6245
  br i1 %2893, label %6252, label %6275

; <label>:6252                                    ; preds = %6229
  %6253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1542, float %6120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6254 = extractvalue %dx.types.ResRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.ResRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.ResRet.f32 %6253, 2
  %6257 = fadd fast float %6254, -5.000000e-01
  %6258 = fadd fast float %6255, -5.000000e-01
  %6259 = fadd fast float %6256, -5.000000e-01
  %6260 = fmul fast float %2209, 4.000000e+00
  %6261 = fmul fast float %6260, %6197
  %6262 = fmul fast float %6261, %6257
  %6263 = fmul fast float %2210, 4.000000e+00
  %6264 = fmul fast float %6263, %6198
  %6265 = fmul fast float %6264, %6258
  %6266 = fmul fast float %2597, 4.000000e+00
  %6267 = fmul fast float %6266, %6199
  %6268 = fmul fast float %6267, %6259
  %6269 = fadd fast float %6262, %6249
  %6270 = fadd fast float %6265, %6250
  %6271 = fadd fast float %6268, %6251
  %6272 = call float @dx.op.unary.f32(i32 7, float %6269)  ; Saturate(value)
  %6273 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6274 = call float @dx.op.unary.f32(i32 7, float %6271)  ; Saturate(value)
  br label %6275

; <label>:6275                                    ; preds = %6252, %6229
  %6276 = phi float [ %6272, %6252 ], [ %6249, %6229 ]
  %6277 = phi float [ %6273, %6252 ], [ %6250, %6229 ]
  %6278 = phi float [ %6274, %6252 ], [ %6251, %6229 ]
  %6279 = call float @dx.op.binary.f32(i32 35, float %6277, float %6278)  ; FMax(a,b)
  %6280 = call float @dx.op.binary.f32(i32 35, float %6276, float %6279)  ; FMax(a,b)
  %6281 = fsub fast float 1.000000e+00, %6280
  %6282 = call float @dx.op.binary.f32(i32 35, float %6145, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6283 = fdiv fast float %942, %6282
  %6284 = fmul fast float %3440, %6283
  %6285 = fmul fast float %3442, %6283
  %6286 = fmul fast float %3444, %6283
  %6287 = call float @dx.op.unary.f32(i32 21, float %6284)  ; Exp(value)
  %6288 = call float @dx.op.unary.f32(i32 21, float %6285)  ; Exp(value)
  %6289 = call float @dx.op.unary.f32(i32 21, float %6286)  ; Exp(value)
  %6290 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  %6291 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  %6292 = call float @dx.op.unary.f32(i32 7, float %6289)  ; Saturate(value)
  %6293 = select i1 %3437, float %6290, float 0.000000e+00
  %6294 = select i1 %3438, float %6291, float 0.000000e+00
  %6295 = select i1 %3439, float %6292, float 0.000000e+00
  %6296 = fsub fast float -0.000000e+00, %2212
  %6297 = fsub fast float -0.000000e+00, %2213
  %6298 = fsub fast float -0.000000e+00, %2214
  %6299 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %5561, float %6296, float %6297, float %6298)  ; Dot3(ax,ay,az,bx,by,bz)
  %6300 = call float @dx.op.unary.f32(i32 7, float %6299)  ; Saturate(value)
  %6301 = fmul fast float %6300, %5566
  %6302 = fmul fast float %6300, 9.843750e-01
  %6303 = fadd fast float %6302, 7.812500e-03
  %6304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %6303, float %2874, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6305 = extractvalue %dx.types.ResRet.f32 %6304, 0
  %6306 = extractvalue %dx.types.ResRet.f32 %6304, 1
  %6307 = extractvalue %dx.types.ResRet.f32 %6304, 2
  %6308 = extractvalue %dx.types.ResRet.f32 %6304, 3
  %6309 = fsub fast float %6307, %6305
  %6310 = fsub fast float %6308, %6306
  %6311 = fmul fast float %6309, %2880
  %6312 = fmul fast float %6310, %2880
  %6313 = fadd fast float %6311, %6305
  %6314 = fadd fast float %6312, %6306
  %6315 = fmul fast float %6313, %2209
  %6316 = fmul fast float %6313, %2210
  %6317 = fmul fast float %6313, %2597
  %6318 = fadd fast float %6315, %6314
  %6319 = fadd fast float %6316, %6314
  %6320 = fadd fast float %6317, %6314
  br i1 %2893, label %6321, label %6344

; <label>:6321                                    ; preds = %6275
  %6322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1542, float %6300, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6323 = extractvalue %dx.types.ResRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.ResRet.f32 %6322, 1
  %6325 = extractvalue %dx.types.ResRet.f32 %6322, 2
  %6326 = fadd fast float %6323, -5.000000e-01
  %6327 = fadd fast float %6324, -5.000000e-01
  %6328 = fadd fast float %6325, -5.000000e-01
  %6329 = fmul fast float %2209, 4.000000e+00
  %6330 = fmul fast float %6329, %6197
  %6331 = fmul fast float %6330, %6326
  %6332 = fmul fast float %2210, 4.000000e+00
  %6333 = fmul fast float %6332, %6198
  %6334 = fmul fast float %6333, %6327
  %6335 = fmul fast float %2597, 4.000000e+00
  %6336 = fmul fast float %6335, %6199
  %6337 = fmul fast float %6336, %6328
  %6338 = fadd fast float %6331, %6318
  %6339 = fadd fast float %6334, %6319
  %6340 = fadd fast float %6337, %6320
  %6341 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6342 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6343 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  br label %6344

; <label>:6344                                    ; preds = %6321, %6275
  %6345 = phi float [ %6341, %6321 ], [ %6318, %6275 ]
  %6346 = phi float [ %6342, %6321 ], [ %6319, %6275 ]
  %6347 = phi float [ %6343, %6321 ], [ %6320, %6275 ]
  %6348 = call float @dx.op.binary.f32(i32 35, float %6346, float %6347)  ; FMax(a,b)
  %6349 = call float @dx.op.binary.f32(i32 35, float %6345, float %6348)  ; FMax(a,b)
  %6350 = fsub fast float 1.000000e+00, %6349
  %6351 = fmul fast float %2614, %3504
  %6352 = fadd fast float %3506, %6351
  %6353 = call float @dx.op.unary.f32(i32 7, float %6352)  ; Saturate(value)
  %6354 = fsub fast float %6132, %2605
  %6355 = fsub fast float %6133, %2606
  %6356 = fsub fast float %6134, %2607
  %6357 = call float @dx.op.dot3.f32(i32 55, float %6354, float %6355, float %6356, float %6354, float %6355, float %6356)  ; Dot3(ax,ay,az,bx,by,bz)
  %6358 = call float @dx.op.unary.f32(i32 25, float %6357)  ; Rsqrt(value)
  %6359 = fmul fast float %6354, %6358
  %6360 = fmul fast float %6355, %6358
  %6361 = fmul fast float %6356, %6358
  %6362 = call float @dx.op.dot3.f32(i32 55, float %6296, float %6297, float %6298, float %6359, float %6360, float %6361)  ; Dot3(ax,ay,az,bx,by,bz)
  %6363 = fmul fast float %6362, %6362
  %6364 = call float @dx.op.unary.f32(i32 6, float %6300)  ; FAbs(value)
  %6365 = call float @dx.op.binary.f32(i32 35, float %6353, float 0x3F847AE140000000)  ; FMax(a,b)
  %6366 = fmul fast float %6365, %6365
  %6367 = fmul fast float %6366, %6366
  %6368 = fsub fast float 1.000000e+00, %6367
  %6369 = fmul fast float %6147, %6368
  %6370 = fadd fast float %6369, %6367
  %6371 = bitcast float %6370 to i32
  %6372 = ashr i32 %6371, 1
  %6373 = add nsw i32 %6372, 532487669
  %6374 = bitcast i32 %6373 to float
  %6375 = fadd fast float %6374, %2599
  %6376 = fmul fast float %6367, %6363
  %6377 = fsub fast float 1.000000e+00, %6363
  %6378 = fadd fast float %6377, %6376
  %6379 = fmul fast float %6364, %6364
  %6380 = fmul fast float %6379, %6368
  %6381 = fadd fast float %6380, %6367
  %6382 = bitcast float %6381 to i32
  %6383 = ashr i32 %6382, 1
  %6384 = add nsw i32 %6383, 532487669
  %6385 = bitcast i32 %6384 to float
  %6386 = fadd fast float %6385, %6364
  %6387 = fmul fast float %6378, %6378
  %6388 = fmul fast float %6387, %6375
  %6389 = fmul fast float %6388, %6386
  %6390 = fdiv fast float 1.000000e+00, %6389
  %6391 = bitcast float %6367 to i32
  %6392 = sitofp i32 %6391 to float
  %6393 = fmul fast float %6392, 0x3FE7F73180000000
  %6394 = fadd fast float %6393, 0x41AFE27C40000000
  %6395 = fptosi float %6394 to i32
  %6396 = bitcast i32 %6395 to float
  %6397 = fadd fast float %6396, %6177
  %6398 = bitcast float %6397 to i32
  %6399 = sub nsw i32 2129859010, %6398
  %6400 = bitcast i32 %6399 to float
  %6401 = fmul fast float %6367, %6390
  %6402 = fmul fast float %6401, %6396
  %6403 = fmul fast float %6402, %6400
  br i1 %5551, label %6404, label %6414

; <label>:6404                                    ; preds = %6344
  %6405 = fmul fast float %6301, %6293
  %6406 = fmul fast float %6301, %6294
  %6407 = fmul fast float %6301, %6295
  %6408 = fmul fast float %6405, %6350
  %6409 = fmul fast float %6408, %6403
  %6410 = fmul fast float %6406, %6350
  %6411 = fmul fast float %6410, %6403
  %6412 = fmul fast float %6407, %6350
  %6413 = fmul fast float %6412, %6403
  br label %6414

; <label>:6414                                    ; preds = %6404, %6344
  %6415 = phi float [ %6409, %6404 ], [ 0.000000e+00, %6344 ]
  %6416 = phi float [ %6411, %6404 ], [ 0.000000e+00, %6344 ]
  %6417 = phi float [ %6413, %6404 ], [ 0.000000e+00, %6344 ]
  %6418 = fmul fast float %6230, %6184
  %6419 = fmul fast float %6231, %6184
  %6420 = fmul fast float %6232, %6184
  %6421 = fsub fast float 1.000000e+00, %6121
  %6422 = bitcast float %6421 to i32
  %6423 = sitofp i32 %6422 to float
  %6424 = fmul fast float %6423, 5.000000e+00
  %6425 = fadd fast float %6424, 0xC1EFBF8940000000
  %6426 = fptosi float %6425 to i32
  %6427 = bitcast i32 %6426 to float
  %6428 = fmul fast float %6427, %1541
  %6429 = fmul fast float %6281, %6428
  %6430 = fmul fast float %6429, %3432
  %6431 = fmul fast float %6429, %3433
  %6432 = fmul fast float %6429, %3434
  %6433 = fadd fast float %6430, %6418
  %6434 = fadd fast float %6431, %6419
  %6435 = fadd fast float %6432, %6420
  %6436 = fmul fast float %6433, %6127
  %6437 = fmul fast float %6434, %6127
  %6438 = fmul fast float %6435, %6127
  %6439 = fadd fast float %6436, %6415
  %6440 = fadd fast float %6437, %6416
  %6441 = fadd fast float %6438, %6417
  %6442 = fmul fast float %6109, %1597
  %6443 = fmul fast float %6442, %6127
  %6444 = fmul fast float %6443, %6281
  %6445 = fmul fast float %6110, %1597
  %6446 = fmul fast float %6445, %6127
  %6447 = fmul fast float %6446, %6281
  %6448 = fmul fast float %6111, %1597
  %6449 = fmul fast float %6448, %6127
  %6450 = fmul fast float %6449, %6281
  %6451 = fadd fast float %6444, %5495
  %6452 = fadd fast float %6447, %5496
  %6453 = fadd fast float %6450, %5497
  %6454 = fmul fast float %6442, %6439
  %6455 = fmul fast float %6445, %6440
  %6456 = fmul fast float %6448, %6441
  %6457 = fadd fast float %6454, %5492
  %6458 = fadd fast float %6455, %5493
  %6459 = fadd fast float %6456, %5494
  br label %5625

; <label>:6460                                    ; preds = %5625
  br label %6461

; <label>:6461                                    ; preds = %6460, %5458
  %6462 = phi float [ %5460, %5458 ], [ %5626, %6460 ]
  %6463 = phi float [ %5461, %5458 ], [ %5627, %6460 ]
  %6464 = phi float [ %5462, %5458 ], [ %5628, %6460 ]
  %6465 = phi float [ %5463, %5458 ], [ %5629, %6460 ]
  %6466 = phi float [ %5464, %5458 ], [ %5630, %6460 ]
  %6467 = phi float [ %5465, %5458 ], [ %5631, %6460 ]
  %6468 = add i32 %5459, 1
  %6469 = icmp ugt i32 %6468, %5455
  br i1 %6469, label %6470, label %5458

; <label>:6470                                    ; preds = %6461
  br label %6471

; <label>:6471                                    ; preds = %6470, %5408, %5398
  %6472 = phi float [ %5399, %5398 ], [ %5399, %5408 ], [ %6462, %6470 ]
  %6473 = phi float [ %5400, %5398 ], [ %5400, %5408 ], [ %6463, %6470 ]
  %6474 = phi float [ %5401, %5398 ], [ %5401, %5408 ], [ %6464, %6470 ]
  %6475 = phi float [ %5402, %5398 ], [ %5402, %5408 ], [ %6465, %6470 ]
  %6476 = phi float [ %5403, %5398 ], [ %5403, %5408 ], [ %6466, %6470 ]
  %6477 = phi float [ %5404, %5398 ], [ %5404, %5408 ], [ %6467, %6470 ]
  %6478 = fmul fast float %3461, %1597
  %6479 = fmul fast float %3462, %1597
  %6480 = fmul fast float %3463, %1597
  %6481 = fadd fast float %6478, 1.000000e+00
  %6482 = fadd fast float %6479, 1.000000e+00
  %6483 = fadd fast float %6480, 1.000000e+00
  %6484 = call float @dx.op.dot3.f32(i32 55, float %6481, float %6482, float %6483, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6485 = fsub fast float 1.000000e+00, %6484
  %6486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6486, 0
  %6488 = fmul fast float %6487, %3467
  %6489 = fsub fast float 1.000000e+00, %2586
  %6490 = extractvalue %dx.types.CBufRet.f32 %6486, 2
  %6491 = fmul fast float %6490, %6489
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 3
  %6494 = fsub fast float 1.000000e+00, %1537
  %6495 = call float @dx.op.unary.f32(i32 7, float %6494)  ; Saturate(value)
  %6496 = fadd fast float %6477, %1536
  %6497 = fmul fast float %6496, %1537
  %6498 = fmul fast float %6495, %6493
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 3
  %6501 = fmul fast float %6475, %2206
  %6502 = fmul fast float %6476, %2207
  %6503 = fmul fast float %6477, %2208
  %6504 = fcmp fast ogt float %82, %195
  %6505 = and i1 %6504, %2029
  %6506 = or i1 %2035, %6505
  %6507 = icmp eq i32 %2028, 2
  %6508 = fcmp fast ole float %82, %195
  %6509 = and i1 %6508, %6507
  %6510 = or i1 %6509, %6506
  br i1 %6505, label %6511, label %6769

; <label>:6511                                    ; preds = %6471
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 3
  %6515 = fmul fast float %6513, %94
  %6516 = fmul fast float %6514, %95
  %6517 = call float @dx.op.unary.f32(i32 7, float %6515)  ; Saturate(value)
  %6518 = call float @dx.op.unary.f32(i32 7, float %6516)  ; Saturate(value)
  %6519 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %6517, float %6518, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6520 = extractvalue %dx.types.ResRet.f32 %6519, 0
  %6521 = extractvalue %dx.types.ResRet.f32 %6519, 1
  %6522 = extractvalue %dx.types.ResRet.f32 %6519, 2
  %6523 = extractvalue %dx.types.ResRet.f32 %6519, 3
  %6524 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %6517, float %6518, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6525 = extractvalue %dx.types.ResRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.ResRet.f32 %6524, 1
  %6527 = extractvalue %dx.types.ResRet.f32 %6524, 2
  %6528 = extractvalue %dx.types.ResRet.f32 %6524, 3
  %6529 = call float @dx.op.binary.f32(i32 35, float %6521, float %6522)  ; FMax(a,b)
  %6530 = call float @dx.op.binary.f32(i32 35, float %6520, float %6529)  ; FMax(a,b)
  %6531 = call float @dx.op.binary.f32(i32 35, float %6530, float %6523)  ; FMax(a,b)
  %6532 = call float @dx.op.binary.f32(i32 36, float %6526, float %6527)  ; FMin(a,b)
  %6533 = call float @dx.op.binary.f32(i32 36, float %6525, float %6532)  ; FMin(a,b)
  %6534 = call float @dx.op.binary.f32(i32 36, float %6533, float %6528)  ; FMin(a,b)
  %6535 = fmul fast float %6531, 2.550000e+02
  %6536 = fadd fast float %6535, 0x3F70101020000000
  %6537 = fptoui float %6536 to i32
  %6538 = fmul fast float %6534, 2.550000e+02
  %6539 = fadd fast float %6538, 0x3F70101020000000
  %6540 = fptoui float %6539 to i32
  %6541 = icmp ult i32 %6537, %6540
  br i1 %6541, label %6542, label %6709

; <label>:6542                                    ; preds = %6511
  %6543 = fadd fast float %82, -4.000000e+00
  %6544 = select i1 %2593, float -4.000000e+00, float %6543
  %6545 = call float @dx.op.binary.f32(i32 35, float %6544, float 0.000000e+00)  ; FMax(a,b)
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 0
  %6548 = fadd fast float %6547, %6545
  %6549 = extractvalue %dx.types.CBufRet.f32 %6546, 2
  %6550 = fmul fast float %6548, %6549
  %6551 = call float @dx.op.unary.f32(i32 23, float %6550)  ; Log(value)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6546, 3
  %6553 = fmul fast float %6552, %6551
  %6554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6555 = extractvalue %dx.types.CBufRet.f32 %6554, 2
  %6556 = fmul fast float %6553, %6555
  %6557 = call float @dx.op.unary.f32(i32 7, float %6556)  ; Saturate(value)
  %6558 = uitofp i32 %6537 to float
  %6559 = uitofp i32 %6540 to float
  %6560 = fadd fast float %6558, 5.000000e-01
  %6561 = fadd fast float %6559, 5.000000e-01
  %6562 = fmul fast float %6555, %6560
  %6563 = fmul fast float %6555, %6561
  %6564 = fadd fast float %6562, 0x3F0FFB4800000000
  %6565 = fadd fast float %6563, 0xBF0FFB4800000000
  %6566 = call float @dx.op.binary.f32(i32 35, float %6557, float %6564)  ; FMax(a,b)
  %6567 = call float @dx.op.binary.f32(i32 36, float %6566, float %6565)  ; FMin(a,b)
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6570 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6571 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6572 = fmul fast float %6569, %6567
  %6573 = fadd fast float %6571, %6572
  %6574 = fadd fast float %6571, %6570
  %6575 = fsub fast float %6569, %6570
  %6576 = fadd fast float %6575, %6571
  %6577 = call float @dx.op.binary.f32(i32 35, float %6573, float %6574)  ; FMax(a,b)
  %6578 = call float @dx.op.binary.f32(i32 36, float %6577, float %6576)  ; FMin(a,b)
  %6579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %6517, float %6518, float %6578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6580 = extractvalue %dx.types.ResRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.ResRet.f32 %6579, 1
  %6582 = extractvalue %dx.types.ResRet.f32 %6579, 2
  %6583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6584 = extractvalue %dx.types.CBufRet.i32 %6583, 0
  %6585 = extractvalue %dx.types.CBufRet.i32 %6583, 1
  %6586 = uitofp i32 %6584 to float
  %6587 = uitofp i32 %6585 to float
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6591 = fmul fast float %6586, %6517
  %6592 = fmul fast float %6587, %6518
  %6593 = fadd fast float %6591, -5.000000e-01
  %6594 = fadd fast float %6592, -5.000000e-01
  %6595 = call float @dx.op.unary.f32(i32 22, float %6593)  ; Frc(value)
  %6596 = call float @dx.op.unary.f32(i32 22, float %6594)  ; Frc(value)
  %6597 = fmul fast float %6595, %6595
  %6598 = fmul fast float %6597, %6595
  %6599 = fsub fast float 3.000000e+00, %6595
  %6600 = fmul fast float %6597, %6599
  %6601 = fmul fast float %6595, 3.000000e+00
  %6602 = fmul fast float %6598, 3.000000e+00
  %6603 = fmul fast float %6597, 6.000000e+00
  %6604 = fsub fast float %6602, %6603
  %6605 = fadd fast float %6604, 4.000000e+00
  %6606 = fmul fast float %6605, 0x3FC5555560000000
  %6607 = fmul fast float %6598, -3.000000e+00
  %6608 = fadd fast float %6597, %6595
  %6609 = fmul fast float %6608, 3.000000e+00
  %6610 = fadd fast float %6607, 1.000000e+00
  %6611 = fadd fast float %6610, %6609
  %6612 = fmul fast float %6598, 0x3FC5555560000000
  %6613 = fmul fast float %6596, %6596
  %6614 = fmul fast float %6613, %6596
  %6615 = fsub fast float 3.000000e+00, %6596
  %6616 = fmul fast float %6613, %6615
  %6617 = fmul fast float %6596, 3.000000e+00
  %6618 = fmul fast float %6614, 3.000000e+00
  %6619 = fmul fast float %6613, 6.000000e+00
  %6620 = fsub fast float %6618, %6619
  %6621 = fadd fast float %6620, 4.000000e+00
  %6622 = fmul fast float %6621, 0x3FC5555560000000
  %6623 = fmul fast float %6614, -3.000000e+00
  %6624 = fadd fast float %6613, %6596
  %6625 = fmul fast float %6624, 3.000000e+00
  %6626 = fadd fast float %6623, 1.000000e+00
  %6627 = fadd fast float %6626, %6625
  %6628 = fmul fast float %6614, 0x3FC5555560000000
  %6629 = fadd fast float %6595, 1.000000e+00
  %6630 = fsub fast float 1.000000e+00, %6601
  %6631 = fadd fast float %6630, %6600
  %6632 = fadd fast float %6631, %6605
  %6633 = fmul fast float %6632, 0x3FC5555560000000
  %6634 = fdiv fast float %6606, %6633
  %6635 = fsub fast float %6629, %6634
  %6636 = fsub fast float 1.000000e+00, %6595
  %6637 = fadd fast float %6611, %6598
  %6638 = fmul fast float %6637, 0x3FC5555560000000
  %6639 = fdiv fast float %6612, %6638
  %6640 = fadd fast float %6636, %6639
  %6641 = fadd fast float %6596, 1.000000e+00
  %6642 = fsub fast float 1.000000e+00, %6617
  %6643 = fadd fast float %6642, %6616
  %6644 = fadd fast float %6643, %6621
  %6645 = fmul fast float %6644, 0x3FC5555560000000
  %6646 = fdiv fast float %6622, %6645
  %6647 = fsub fast float %6641, %6646
  %6648 = fsub fast float 1.000000e+00, %6596
  %6649 = fadd fast float %6627, %6614
  %6650 = fmul fast float %6649, 0x3FC5555560000000
  %6651 = fdiv fast float %6628, %6650
  %6652 = fadd fast float %6651, %6648
  %6653 = fmul fast float %6635, %6589
  %6654 = fsub fast float %6517, %6653
  %6655 = fmul fast float %6640, %6589
  %6656 = fadd fast float %6655, %6517
  %6657 = fmul fast float %6652, %6590
  %6658 = fadd fast float %6657, %6518
  %6659 = fmul fast float %6647, %6590
  %6660 = fsub fast float %6518, %6659
  %6661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6654, float %6660, float %6578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.ResRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.ResRet.f32 %6661, 2
  %6665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6656, float %6660, float %6578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6666 = extractvalue %dx.types.ResRet.f32 %6665, 0
  %6667 = extractvalue %dx.types.ResRet.f32 %6665, 1
  %6668 = extractvalue %dx.types.ResRet.f32 %6665, 2
  %6669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6654, float %6658, float %6578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = extractvalue %dx.types.ResRet.f32 %6669, 1
  %6672 = extractvalue %dx.types.ResRet.f32 %6669, 2
  %6673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6656, float %6658, float %6578, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6674 = extractvalue %dx.types.ResRet.f32 %6673, 0
  %6675 = extractvalue %dx.types.ResRet.f32 %6673, 1
  %6676 = extractvalue %dx.types.ResRet.f32 %6673, 2
  %6677 = fsub fast float %6670, %6662
  %6678 = fsub fast float %6671, %6663
  %6679 = fsub fast float %6672, %6664
  %6680 = fmul fast float %6677, %6650
  %6681 = fmul fast float %6678, %6650
  %6682 = fmul fast float %6679, %6650
  %6683 = fadd fast float %6680, %6662
  %6684 = fadd fast float %6681, %6663
  %6685 = fadd fast float %6682, %6664
  %6686 = fsub fast float %6674, %6666
  %6687 = fsub fast float %6675, %6667
  %6688 = fsub fast float %6676, %6668
  %6689 = fmul fast float %6686, %6650
  %6690 = fmul fast float %6687, %6650
  %6691 = fmul fast float %6688, %6650
  %6692 = fsub fast float %6666, %6683
  %6693 = fadd fast float %6692, %6689
  %6694 = fsub fast float %6667, %6684
  %6695 = fadd fast float %6694, %6690
  %6696 = fsub fast float %6668, %6685
  %6697 = fadd fast float %6696, %6691
  %6698 = fmul fast float %6693, %6638
  %6699 = fmul fast float %6695, %6638
  %6700 = fmul fast float %6697, %6638
  %6701 = fadd fast float %6698, %6683
  %6702 = fadd fast float %6699, %6684
  %6703 = fadd fast float %6700, %6685
  %6704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6705 = extractvalue %dx.types.CBufRet.f32 %6704, 1
  %6706 = fmul fast float %6701, %6705
  %6707 = fmul fast float %6702, %6705
  %6708 = fmul fast float %6703, %6705
  br label %6709

; <label>:6709                                    ; preds = %6542, %6511
  %6710 = phi float [ %6580, %6542 ], [ 1.000000e+00, %6511 ]
  %6711 = phi float [ %6581, %6542 ], [ 1.000000e+00, %6511 ]
  %6712 = phi float [ %6582, %6542 ], [ 1.000000e+00, %6511 ]
  %6713 = phi float [ %6706, %6542 ], [ 0.000000e+00, %6511 ]
  %6714 = phi float [ %6707, %6542 ], [ 0.000000e+00, %6511 ]
  %6715 = phi float [ %6708, %6542 ], [ 0.000000e+00, %6511 ]
  %6716 = fmul fast float %6713, %6485
  %6717 = fmul fast float %6714, %6485
  %6718 = fmul fast float %6715, %6485
  %6719 = call float @dx.op.dot3.f32(i32 55, float %6710, float %6711, float %6712, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6720 = call float @dx.op.dot3.f32(i32 55, float %6716, float %6717, float %6718, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6721 = select i1 %235, float %6719, float %6710
  %6722 = select i1 %235, float %6719, float %6711
  %6723 = select i1 %235, float 1.000000e+00, float %6712
  %6724 = select i1 %235, float %6720, float %6716
  %6725 = select i1 %235, float 0.000000e+00, float %6717
  %6726 = select i1 %235, float 0.000000e+00, float %6718
  %6727 = fmul fast float %6721, %6501
  %6728 = fmul fast float %6722, %6502
  %6729 = fmul fast float %6723, %6503
  %6730 = fadd fast float %6727, %6724
  %6731 = fadd fast float %6728, %6725
  %6732 = fadd fast float %6726, %6729
  %6733 = fmul fast float %6721, %6472
  %6734 = fmul fast float %6722, %6473
  %6735 = fmul fast float %6723, %6474
  %6736 = fmul fast float %94, 2.000000e+00
  %6737 = fmul fast float %6736, %6513
  %6738 = fmul fast float %95, 2.000000e+00
  %6739 = fmul fast float %6738, %6514
  %6740 = fsub fast float 1.000000e+00, %6737
  %6741 = fsub fast float 1.000000e+00, %6739
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 0
  %6744 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6745 = extractvalue %dx.types.CBufRet.f32 %6742, 2
  %6746 = fmul fast float %6740, %6743
  %6747 = fmul fast float %6740, %6744
  %6748 = fmul fast float %6740, %6745
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 1
  %6752 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6753 = fmul fast float %6741, %6750
  %6754 = fmul fast float %6741, %6751
  %6755 = fmul fast float %6741, %6752
  %6756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6757 = extractvalue %dx.types.CBufRet.f32 %6756, 0
  %6758 = extractvalue %dx.types.CBufRet.f32 %6756, 1
  %6759 = extractvalue %dx.types.CBufRet.f32 %6756, 2
  %6760 = fadd fast float %6753, %6757
  %6761 = fadd fast float %6760, %6746
  %6762 = fadd fast float %6754, %6758
  %6763 = fadd fast float %6762, %6747
  %6764 = fadd fast float %6755, %6759
  %6765 = fadd fast float %6764, %6748
  %6766 = fmul fast float %6761, %195
  %6767 = fmul fast float %6763, %195
  %6768 = fmul fast float %6765, %195
  br label %6769

; <label>:6769                                    ; preds = %6709, %6471
  %6770 = phi float [ %6766, %6709 ], [ %142, %6471 ]
  %6771 = phi float [ %6767, %6709 ], [ %143, %6471 ]
  %6772 = phi float [ %6768, %6709 ], [ %144, %6471 ]
  %6773 = phi float [ %195, %6709 ], [ %82, %6471 ]
  %6774 = phi float [ %6730, %6709 ], [ %6501, %6471 ]
  %6775 = phi float [ %6731, %6709 ], [ %6502, %6471 ]
  %6776 = phi float [ %6732, %6709 ], [ %6503, %6471 ]
  %6777 = phi float [ %6733, %6709 ], [ %6472, %6471 ]
  %6778 = phi float [ %6734, %6709 ], [ %6473, %6471 ]
  %6779 = phi float [ %6735, %6709 ], [ %6474, %6471 ]
  %6780 = phi float [ %6710, %6709 ], [ 1.000000e+00, %6471 ]
  br i1 %6510, label %7931, label %6781

; <label>:6781                                    ; preds = %6769
  %6782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6783 = extractvalue %dx.types.CBufRet.f32 %6782, 0
  %6784 = extractvalue %dx.types.CBufRet.f32 %6782, 1
  %6785 = extractvalue %dx.types.CBufRet.f32 %6782, 2
  %6786 = extractvalue %dx.types.CBufRet.f32 %6782, 3
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6789 = extractvalue %dx.types.CBufRet.f32 %6787, 1
  %6790 = extractvalue %dx.types.CBufRet.f32 %6787, 2
  %6791 = extractvalue %dx.types.CBufRet.f32 %6787, 3
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = extractvalue %dx.types.CBufRet.f32 %6792, 1
  %6795 = extractvalue %dx.types.CBufRet.f32 %6792, 2
  %6796 = extractvalue %dx.types.CBufRet.f32 %6792, 3
  %6797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.f32 %6797, 0
  %6799 = extractvalue %dx.types.CBufRet.f32 %6797, 1
  %6800 = extractvalue %dx.types.CBufRet.f32 %6797, 2
  %6801 = extractvalue %dx.types.CBufRet.f32 %6797, 3
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 3
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 3
  %6806 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %6807 = extractvalue %dx.types.CBufRet.f32 %6804, 1
  %6808 = extractvalue %dx.types.CBufRet.f32 %6804, 2
  %6809 = fcmp fast olt float %6808, -5.000000e-01
  %6810 = call float @dx.op.dot3.f32(i32 55, float %6770, float %6771, float %6772, float %6770, float %6771, float %6772)  ; Dot3(ax,ay,az,bx,by,bz)
  %6811 = call float @dx.op.unary.f32(i32 25, float %6810)  ; Rsqrt(value)
  %6812 = fmul fast float %6811, %6810
  %6813 = fmul fast float %6811, %6770
  %6814 = fmul fast float %6811, %6771
  %6815 = fmul fast float %6811, %6772
  %6816 = fadd fast float %6812, %6786
  %6817 = call float @dx.op.dot3.f32(i32 55, float %6813, float %6814, float %6815, float %6783, float %6784, float %6785)  ; Dot3(ax,ay,az,bx,by,bz)
  %6818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.i32 %6818, 1
  %6820 = and i32 %6819, 1
  %6821 = icmp ne i32 %6820, 0
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 2
  %6824 = fcmp fast ogt float %6823, 0.000000e+00
  %6825 = and i1 %6821, %6824
  br i1 %6825, label %6826, label %7228, !dx.controlflow.hints !127

; <label>:6826                                    ; preds = %6781
  %6827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6828 = extractvalue %dx.types.CBufRet.f32 %6827, 3
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 2
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6833 = fsub fast float %6830, %6832
  %6834 = and i32 %6819, 2
  %6835 = extractvalue %dx.types.CBufRet.i32 %6818, 0
  %6836 = call i32 @dx.op.binary.i32(i32 40, i32 %6835, i32 3)  ; UMin(a,b)
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6840 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6841 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6842 = fsub fast float %6838, %6840
  %6843 = fsub fast float %6839, %6841
  %6844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6845 = extractvalue %dx.types.CBufRet.f32 %6844, 0
  %6846 = fcmp fast ogt float %6845, 0.000000e+00
  %6847 = fsub fast float -0.000000e+00, %6842
  %6848 = fsub fast float -0.000000e+00, %6843
  %6849 = call float @dx.op.dot2.f32(i32 54, float %6813, float %6814, float %6813, float %6814)  ; Dot2(ax,ay,bx,by)
  %6850 = call float @dx.op.dot2.f32(i32 54, float %6813, float %6814, float %6847, float %6848)  ; Dot2(ax,ay,bx,by)
  %6851 = fmul fast float %6850, 2.000000e+00
  %6852 = call float @dx.op.dot2.f32(i32 54, float %6847, float %6848, float %6847, float %6848)  ; Dot2(ax,ay,bx,by)
  %6853 = fmul fast float %6845, %6845
  %6854 = fsub fast float %6852, %6853
  %6855 = fmul fast float %6851, %6851
  %6856 = fmul fast float %6849, 4.000000e+00
  %6857 = fmul fast float %6856, %6854
  %6858 = fsub fast float %6855, %6857
  %6859 = fcmp fast ogt float %6858, 0.000000e+00
  br i1 %6859, label %6860, label %6875

; <label>:6860                                    ; preds = %6826
  %6861 = fcmp fast ogt float %6851, 0.000000e+00
  %6862 = call float @dx.op.unary.f32(i32 24, float %6858)  ; Sqrt(value)
  %6863 = fsub fast float -0.000000e+00, %6862
  %6864 = select i1 %6861, float %6862, float %6863
  %6865 = fadd fast float %6864, %6851
  %6866 = fmul float %6865, -5.000000e-01
  %6867 = fdiv fast float %6866, %6849
  %6868 = call float @dx.op.binary.f32(i32 35, float %6867, float 0.000000e+00)  ; FMax(a,b)
  %6869 = call float @dx.op.binary.f32(i32 36, float %6812, float %6868)  ; FMin(a,b)
  %6870 = fdiv fast float %6854, %6866
  %6871 = call float @dx.op.binary.f32(i32 35, float %6870, float 0.000000e+00)  ; FMax(a,b)
  %6872 = call float @dx.op.binary.f32(i32 36, float %6812, float %6871)  ; FMin(a,b)
  %6873 = call float @dx.op.binary.f32(i32 36, float %6869, float %6872)  ; FMin(a,b)
  %6874 = call float @dx.op.binary.f32(i32 35, float %6869, float %6872)  ; FMax(a,b)
  br label %6875

; <label>:6875                                    ; preds = %6860, %6826
  %6876 = phi float [ %6874, %6860 ], [ -1.000000e+00, %6826 ]
  %6877 = phi float [ %6873, %6860 ], [ -1.000000e+00, %6826 ]
  %6878 = phi i1 [ true, %6860 ], [ false, %6826 ]
  %6879 = and i1 %6846, %6878
  br i1 %6879, label %6880, label %6882

; <label>:6880                                    ; preds = %6875
  %6881 = fcmp fast oeq float %6877, %6876
  br i1 %6881, label %7181, label %6883

; <label>:6882                                    ; preds = %6875
  br i1 %6846, label %7181, label %6883

; <label>:6883                                    ; preds = %6882, %6880
  %6884 = phi float [ %6812, %6882 ], [ %6876, %6880 ]
  %6885 = phi float [ 0.000000e+00, %6882 ], [ %6877, %6880 ]
  %6886 = icmp ne i32 %6834, 0
  %6887 = fmul fast float %6884, %6815
  %6888 = fadd fast float %6887, %6828
  %6889 = fmul fast float %6888, %6884
  %6890 = select i1 %6886, float 0.000000e+00, float %6889
  %6891 = fcmp fast oeq float %6815, 0.000000e+00
  %6892 = fdiv fast float %6833, %6815
  %6893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6892)  ; FMax(a,b)
  %6894 = select i1 %6891, float %6884, float %6893
  %6895 = call float @dx.op.binary.f32(i32 36, float %6884, float %6894)  ; FMin(a,b)
  %6896 = fcmp fast ogt float %6815, 0.000000e+00
  %6897 = fcmp fast olt float %6833, 0.000000e+00
  br i1 %6896, label %6898, label %6955

; <label>:6898                                    ; preds = %6883
  %6899 = icmp eq i32 %6834, 0
  br i1 %6897, label %6900, label %6944

; <label>:6900                                    ; preds = %6898
  %6901 = select i1 %6899, float %6884, float 0.000000e+00
  %6902 = fsub fast float -0.000000e+00, %6901
  %6903 = call float @dx.op.unary.f32(i32 6, float %6902)  ; FAbs(value)
  %6904 = fmul fast float %6901, %6815
  %6905 = fadd fast float %6904, %6828
  %6906 = fmul fast float %6903, %6905
  %6907 = fsub fast float %6890, %6906
  %6908 = fsub fast float %6884, %6903
  %6909 = select i1 %6899, float %6908, float 0.000000e+00
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 0
  %6912 = extractvalue %dx.types.CBufRet.f32 %6910, 1
  %6913 = extractvalue %dx.types.CBufRet.f32 %6910, 2
  %6914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6914, 0
  %6916 = extractvalue %dx.types.CBufRet.f32 %6914, 1
  %6917 = extractvalue %dx.types.CBufRet.f32 %6914, 2
  %6918 = extractvalue %dx.types.CBufRet.f32 %6914, 3
  %6919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6920 = extractvalue %dx.types.CBufRet.f32 %6919, 3
  %6921 = call float @dx.op.binary.f32(i32 36, float %6907, float %6920)  ; FMin(a,b)
  %6922 = fmul fast float %6918, %6909
  %6923 = call float @dx.op.unary.f32(i32 7, float %6922)  ; Saturate(value)
  %6924 = fsub fast float %6915, %6911
  %6925 = fsub fast float %6916, %6912
  %6926 = fsub fast float %6917, %6913
  %6927 = fmul fast float %6923, %6924
  %6928 = fmul fast float %6923, %6925
  %6929 = fmul fast float %6923, %6926
  %6930 = fadd fast float %6927, %6911
  %6931 = fadd fast float %6928, %6912
  %6932 = fadd fast float %6929, %6913
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6935 = extractvalue %dx.types.CBufRet.f32 %6933, 1
  %6936 = fadd fast float %6935, %6934
  %6937 = call float @dx.op.unary.f32(i32 7, float %6936)  ; Saturate(value)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6933, 2
  %6939 = extractvalue %dx.types.CBufRet.f32 %6933, 3
  %6940 = fadd fast float %6939, %6938
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  %6942 = fmul fast float %6937, %6921
  %6943 = fmul fast float %6942, %6941
  br label %7181

; <label>:6944                                    ; preds = %6898
  br i1 %6899, label %6945, label %6966

; <label>:6945                                    ; preds = %6944
  %6946 = call float @dx.op.binary.f32(i32 36, float %6895, float %6885)  ; FMin(a,b)
  %6947 = fsub fast float %6895, %6946
  %6948 = fsub fast float %6947, %6884
  %6949 = call float @dx.op.unary.f32(i32 6, float %6948)  ; FAbs(value)
  %6950 = fadd fast float %6947, %6884
  %6951 = fmul fast float %6950, %6815
  %6952 = fadd fast float %6951, %6828
  %6953 = fmul fast float %6952, %6949
  %6954 = fsub fast float %6890, %6953
  br label %6966

; <label>:6955                                    ; preds = %6883
  br i1 %6897, label %6956, label %6966

; <label>:6956                                    ; preds = %6955
  %6957 = call float @dx.op.binary.f32(i32 35, float %6885, float %6895)  ; FMax(a,b)
  %6958 = icmp eq i32 %6834, 0
  %6959 = select i1 %6958, float %6895, float 0.000000e+00
  %6960 = fsub fast float -0.000000e+00, %6959
  %6961 = call float @dx.op.unary.f32(i32 6, float %6960)  ; FAbs(value)
  %6962 = fmul fast float %6959, %6815
  %6963 = fadd fast float %6962, %6828
  %6964 = fmul fast float %6961, %6963
  %6965 = fsub fast float %6890, %6964
  br label %6966

; <label>:6966                                    ; preds = %6956, %6955, %6945, %6944
  %6967 = phi float [ %6885, %6944 ], [ %6885, %6945 ], [ %6957, %6956 ], [ %6885, %6955 ]
  %6968 = phi float [ 0.000000e+00, %6944 ], [ %6949, %6945 ], [ %6961, %6956 ], [ 0.000000e+00, %6955 ]
  %6969 = phi float [ %6890, %6944 ], [ %6954, %6945 ], [ %6965, %6956 ], [ %6890, %6955 ]
  %6970 = phi float [ %6895, %6944 ], [ %6895, %6945 ], [ %6884, %6956 ], [ %6884, %6955 ]
  %6971 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 0
  store float -1.000000e+00, float* %6971, align 4, !tbaa !112, !noalias !128
  %6972 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 1
  store float -1.000000e+00, float* %6972, align 4, !tbaa !112, !noalias !128
  %6973 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 2
  store float -1.000000e+00, float* %6973, align 4, !tbaa !112, !noalias !128
  %6974 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %6974, align 4, !tbaa !112, !noalias !128
  %6975 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %6975, align 4, !tbaa !112, !noalias !128
  %6976 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %6976, align 4, !tbaa !112, !noalias !128
  %6977 = icmp sgt i32 %6836, 0
  br i1 %6977, label %6978, label %7039

; <label>:6978                                    ; preds = %6966
  br label %6979

; <label>:6979                                    ; preds = %7028, %6978
  %6980 = phi i32 [ %7029, %7028 ], [ 0, %6978 ]
  %6981 = phi i32 [ %7030, %7028 ], [ 0, %6978 ]
  %6982 = add nuw i32 %6981, 171
  %6983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6982)  ; CBufferLoadLegacy(handle,regIndex)
  %6984 = extractvalue %dx.types.CBufRet.f32 %6983, 0
  %6985 = extractvalue %dx.types.CBufRet.f32 %6983, 1
  %6986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6987 = extractvalue %dx.types.CBufRet.f32 %6986, 0
  %6988 = extractvalue %dx.types.CBufRet.f32 %6986, 1
  %6989 = fsub fast float %6984, %6987
  %6990 = fsub fast float %6985, %6988
  %6991 = extractvalue %dx.types.CBufRet.f32 %6983, 2
  %6992 = fsub fast float -0.000000e+00, %6989
  %6993 = fsub fast float -0.000000e+00, %6990
  %6994 = call float @dx.op.dot2.f32(i32 54, float %6813, float %6814, float %6992, float %6993)  ; Dot2(ax,ay,bx,by)
  %6995 = fmul fast float %6994, 2.000000e+00
  %6996 = call float @dx.op.dot2.f32(i32 54, float %6992, float %6993, float %6992, float %6993)  ; Dot2(ax,ay,bx,by)
  %6997 = fmul fast float %6991, %6991
  %6998 = fsub fast float %6996, %6997
  %6999 = fmul fast float %6995, %6995
  %7000 = fmul fast float %6856, %6998
  %7001 = fsub fast float %6999, %7000
  %7002 = fcmp fast ogt float %7001, 0.000000e+00
  br i1 %7002, label %7003, label %7018

; <label>:7003                                    ; preds = %6979
  %7004 = fcmp fast ogt float %6995, 0.000000e+00
  %7005 = call float @dx.op.unary.f32(i32 24, float %7001)  ; Sqrt(value)
  %7006 = fsub fast float -0.000000e+00, %7005
  %7007 = select i1 %7004, float %7005, float %7006
  %7008 = fadd fast float %7007, %6995
  %7009 = fmul float %7008, -5.000000e-01
  %7010 = fdiv fast float %7009, %6849
  %7011 = call float @dx.op.binary.f32(i32 35, float %7010, float 0.000000e+00)  ; FMax(a,b)
  %7012 = call float @dx.op.binary.f32(i32 36, float %6884, float %7011)  ; FMin(a,b)
  %7013 = fdiv fast float %6998, %7009
  %7014 = call float @dx.op.binary.f32(i32 35, float %7013, float 0.000000e+00)  ; FMax(a,b)
  %7015 = call float @dx.op.binary.f32(i32 36, float %6884, float %7014)  ; FMin(a,b)
  %7016 = call float @dx.op.binary.f32(i32 36, float %7012, float %7015)  ; FMin(a,b)
  %7017 = call float @dx.op.binary.f32(i32 35, float %7012, float %7015)  ; FMax(a,b)
  br label %7018

; <label>:7018                                    ; preds = %7003, %6979
  %7019 = phi float [ %7017, %7003 ], [ -1.000000e+00, %6979 ]
  %7020 = phi float [ %7016, %7003 ], [ -1.000000e+00, %6979 ]
  %7021 = phi i1 [ true, %7003 ], [ false, %6979 ]
  br i1 %7021, label %7022, label %7028

; <label>:7022                                    ; preds = %7018
  %7023 = call float @dx.op.binary.f32(i32 35, float %6967, float %7020)  ; FMax(a,b)
  %7024 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6981
  store float %7023, float* %7024, align 4, !tbaa !112, !noalias !128
  %7025 = call float @dx.op.binary.f32(i32 35, float %6967, float %7019)  ; FMax(a,b)
  %7026 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6981
  store float %7025, float* %7026, align 4, !tbaa !112, !noalias !128
  %7027 = add nsw i32 %6980, 1
  br label %7028

; <label>:7028                                    ; preds = %7022, %7018
  %7029 = phi i32 [ %7027, %7022 ], [ %6980, %7018 ]
  %7030 = add nuw nsw i32 %6981, 1
  %7031 = icmp eq i32 %7030, %6836
  br i1 %7031, label %7032, label %6979

; <label>:7032                                    ; preds = %7028
  %7033 = load float, float* %6973, align 4, !tbaa !112, !alias.scope !144, !noalias !147
  %7034 = load float, float* %6972, align 4, !tbaa !112, !alias.scope !150, !noalias !151
  %7035 = load float, float* %6971, align 4, !tbaa !112, !alias.scope !152, !noalias !153
  %7036 = load float, float* %6976, align 4, !tbaa !112, !alias.scope !154, !noalias !157
  %7037 = load float, float* %6975, align 4, !tbaa !112, !alias.scope !160, !noalias !161
  %7038 = load float, float* %6974, align 4, !tbaa !112, !alias.scope !162, !noalias !163
  br label %7039

; <label>:7039                                    ; preds = %7032, %6966
  %7040 = phi float [ -1.000000e+00, %6966 ], [ %7038, %7032 ]
  %7041 = phi float [ -1.000000e+00, %6966 ], [ %7037, %7032 ]
  %7042 = phi float [ -1.000000e+00, %6966 ], [ %7036, %7032 ]
  %7043 = phi float [ -1.000000e+00, %6966 ], [ %7035, %7032 ]
  %7044 = phi float [ -1.000000e+00, %6966 ], [ %7034, %7032 ]
  %7045 = phi float [ -1.000000e+00, %6966 ], [ %7033, %7032 ]
  %7046 = phi i32 [ 0, %6966 ], [ %7029, %7032 ]
  %7047 = call float @dx.op.binary.f32(i32 36, float %7043, float %7044)  ; FMin(a,b)
  %7048 = call float @dx.op.binary.f32(i32 36, float %7047, float %7045)  ; FMin(a,b)
  %7049 = call float @dx.op.binary.f32(i32 35, float %7043, float %7044)  ; FMax(a,b)
  %7050 = call float @dx.op.binary.f32(i32 36, float %7049, float %7045)  ; FMin(a,b)
  %7051 = call float @dx.op.binary.f32(i32 35, float %7047, float %7050)  ; FMax(a,b)
  %7052 = call float @dx.op.binary.f32(i32 35, float %7049, float %7045)  ; FMax(a,b)
  store float %7048, float* %6971, align 4, !tbaa !112, !alias.scope !152, !noalias !153
  store float %7051, float* %6972, align 4, !tbaa !112, !alias.scope !150, !noalias !151
  store float %7052, float* %6973, align 4, !tbaa !112, !alias.scope !144, !noalias !147
  %7053 = call float @dx.op.binary.f32(i32 36, float %7040, float %7041)  ; FMin(a,b)
  %7054 = call float @dx.op.binary.f32(i32 36, float %7053, float %7042)  ; FMin(a,b)
  %7055 = call float @dx.op.binary.f32(i32 35, float %7040, float %7041)  ; FMax(a,b)
  %7056 = call float @dx.op.binary.f32(i32 36, float %7055, float %7042)  ; FMin(a,b)
  %7057 = call float @dx.op.binary.f32(i32 35, float %7053, float %7056)  ; FMax(a,b)
  %7058 = call float @dx.op.binary.f32(i32 35, float %7055, float %7042)  ; FMax(a,b)
  store float %7054, float* %6974, align 4, !tbaa !112, !alias.scope !162, !noalias !163
  store float %7057, float* %6975, align 4, !tbaa !112, !alias.scope !160, !noalias !161
  store float %7058, float* %6976, align 4, !tbaa !112, !alias.scope !154, !noalias !157
  %7059 = sub nsw i32 3, %7046
  %7060 = icmp sgt i32 %7059, 2
  br i1 %7060, label %7061, label %7099

; <label>:7061                                    ; preds = %7039
  %7062 = icmp eq i32 %6834, 0
  %7063 = fsub fast float %6884, %6968
  %7064 = select i1 %7062, float %7063, float %6968
  %7065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7066 = extractvalue %dx.types.CBufRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.CBufRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.CBufRet.f32 %7065, 2
  %7069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7070 = extractvalue %dx.types.CBufRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.CBufRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.CBufRet.f32 %7069, 2
  %7073 = extractvalue %dx.types.CBufRet.f32 %7069, 3
  %7074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7075 = extractvalue %dx.types.CBufRet.f32 %7074, 3
  %7076 = call float @dx.op.binary.f32(i32 36, float %6969, float %7075)  ; FMin(a,b)
  %7077 = fmul fast float %7073, %7064
  %7078 = call float @dx.op.unary.f32(i32 7, float %7077)  ; Saturate(value)
  %7079 = fsub fast float %7070, %7066
  %7080 = fsub fast float %7071, %7067
  %7081 = fsub fast float %7072, %7068
  %7082 = fmul fast float %7078, %7079
  %7083 = fmul fast float %7078, %7080
  %7084 = fmul fast float %7078, %7081
  %7085 = fadd fast float %7082, %7066
  %7086 = fadd fast float %7083, %7067
  %7087 = fadd fast float %7084, %7068
  %7088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7089 = extractvalue %dx.types.CBufRet.f32 %7088, 0
  %7090 = extractvalue %dx.types.CBufRet.f32 %7088, 1
  %7091 = fadd fast float %7090, %7089
  %7092 = call float @dx.op.unary.f32(i32 7, float %7091)  ; Saturate(value)
  %7093 = extractvalue %dx.types.CBufRet.f32 %7088, 2
  %7094 = extractvalue %dx.types.CBufRet.f32 %7088, 3
  %7095 = fadd fast float %7094, %7093
  %7096 = call float @dx.op.unary.f32(i32 7, float %7095)  ; Saturate(value)
  %7097 = fmul fast float %7092, %7076
  %7098 = fmul fast float %7097, %7096
  br label %7181

; <label>:7099                                    ; preds = %7039
  %7100 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %7059
  %7101 = load float, float* %7100, align 4, !tbaa !112, !noalias !128
  %7102 = fcmp fast olt float %7101, %6970
  %7103 = icmp sgt i32 %7046, 0
  %7104 = and i1 %7103, %7102
  br i1 %7104, label %7105, label %7142

; <label>:7105                                    ; preds = %7099
  br label %7106

; <label>:7106                                    ; preds = %7135, %7105
  %7107 = phi float [ %7136, %7135 ], [ %6968, %7105 ]
  %7108 = phi float [ %7137, %7135 ], [ %6969, %7105 ]
  %7109 = phi float [ %7117, %7135 ], [ %7101, %7105 ]
  %7110 = phi i32 [ %7114, %7135 ], [ %7059, %7105 ]
  %7111 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7110
  %7112 = load float, float* %7111, align 4, !tbaa !112, !noalias !128
  %7113 = icmp slt i32 %7110, 2
  %7114 = add nsw i32 %7110, 1
  %7115 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %7114
  %7116 = load float, float* %7115, align 4, !tbaa !112, !noalias !128
  %7117 = select i1 %7113, float %7116, float %6884
  %7118 = call float @dx.op.binary.f32(i32 36, float %7117, float %7112)  ; FMin(a,b)
  %7119 = call float @dx.op.binary.f32(i32 36, float %6970, float %7118)  ; FMin(a,b)
  %7120 = icmp eq i32 %6834, 0
  %7121 = fadd fast float %7119, %7109
  %7122 = fmul fast float %7121, %6815
  %7123 = fadd fast float %7122, %6828
  br i1 %7120, label %7129, label %7124

; <label>:7124                                    ; preds = %7106
  %7125 = fsub fast float %7119, %7109
  %7126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7125)  ; FMax(a,b)
  %7127 = fmul fast float %7126, %7123
  %7128 = fadd fast float %7127, %7108
  br label %7135

; <label>:7129                                    ; preds = %7106
  %7130 = fsub fast float %7109, %7119
  %7131 = call float @dx.op.unary.f32(i32 6, float %7130)  ; FAbs(value)
  %7132 = fadd fast float %7131, %7107
  %7133 = fmul fast float %7131, %7123
  %7134 = fsub fast float %7108, %7133
  br label %7135

; <label>:7135                                    ; preds = %7129, %7124
  %7136 = phi float [ %7126, %7124 ], [ %7132, %7129 ]
  %7137 = phi float [ %7128, %7124 ], [ %7134, %7129 ]
  %7138 = fcmp fast olt float %7117, %6970
  %7139 = icmp slt i32 %7114, 3
  %7140 = and i1 %7139, %7138
  br i1 %7140, label %7106, label %7141

; <label>:7141                                    ; preds = %7135
  br label %7142

; <label>:7142                                    ; preds = %7141, %7099
  %7143 = phi float [ %6968, %7099 ], [ %7136, %7141 ]
  %7144 = phi float [ %6969, %7099 ], [ %7137, %7141 ]
  %7145 = fsub fast float %6884, %7143
  %7146 = select i1 %6886, float %7143, float %7145
  %7147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7148 = extractvalue %dx.types.CBufRet.f32 %7147, 0
  %7149 = extractvalue %dx.types.CBufRet.f32 %7147, 1
  %7150 = extractvalue %dx.types.CBufRet.f32 %7147, 2
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7153 = extractvalue %dx.types.CBufRet.f32 %7151, 1
  %7154 = extractvalue %dx.types.CBufRet.f32 %7151, 2
  %7155 = extractvalue %dx.types.CBufRet.f32 %7151, 3
  %7156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.f32 %7156, 3
  %7158 = call float @dx.op.binary.f32(i32 36, float %7144, float %7157)  ; FMin(a,b)
  %7159 = fmul fast float %7155, %7146
  %7160 = call float @dx.op.unary.f32(i32 7, float %7159)  ; Saturate(value)
  %7161 = fsub fast float %7152, %7148
  %7162 = fsub fast float %7153, %7149
  %7163 = fsub fast float %7154, %7150
  %7164 = fmul fast float %7160, %7161
  %7165 = fmul fast float %7160, %7162
  %7166 = fmul fast float %7160, %7163
  %7167 = fadd fast float %7164, %7148
  %7168 = fadd fast float %7165, %7149
  %7169 = fadd fast float %7166, %7150
  %7170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.CBufRet.f32 %7170, 1
  %7173 = fadd fast float %7172, %7171
  %7174 = call float @dx.op.unary.f32(i32 7, float %7173)  ; Saturate(value)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7170, 2
  %7176 = extractvalue %dx.types.CBufRet.f32 %7170, 3
  %7177 = fadd fast float %7176, %7175
  %7178 = call float @dx.op.unary.f32(i32 7, float %7177)  ; Saturate(value)
  %7179 = fmul fast float %7174, %7158
  %7180 = fmul fast float %7179, %7178
  br label %7181

; <label>:7181                                    ; preds = %7142, %7061, %6900, %6882, %6880
  %7182 = phi float [ %6909, %6900 ], [ %7064, %7061 ], [ %7146, %7142 ], [ 0.000000e+00, %6880 ], [ 0.000000e+00, %6882 ]
  %7183 = phi float [ %6943, %6900 ], [ %7098, %7061 ], [ %7180, %7142 ], [ 0.000000e+00, %6880 ], [ 0.000000e+00, %6882 ]
  %7184 = phi float [ %6930, %6900 ], [ %7085, %7061 ], [ %7167, %7142 ], [ 0.000000e+00, %6880 ], [ 0.000000e+00, %6882 ]
  %7185 = phi float [ %6931, %6900 ], [ %7086, %7061 ], [ %7168, %7142 ], [ 0.000000e+00, %6880 ], [ 0.000000e+00, %6882 ]
  %7186 = phi float [ %6932, %6900 ], [ %7087, %7061 ], [ %7169, %7142 ], [ 0.000000e+00, %6880 ], [ 0.000000e+00, %6882 ]
  %7187 = fmul fast float %6823, %7183
  %7188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7189 = extractvalue %dx.types.CBufRet.f32 %7188, 2
  %7190 = fsub fast float %6830, %7189
  %7191 = fcmp fast olt float %7187, -2.000000e+01
  %7192 = call float @dx.op.unary.f32(i32 21, float %7187)  ; Exp(value)
  %7193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7194 = extractvalue %dx.types.CBufRet.f32 %7193, 2
  %7195 = extractvalue %dx.types.CBufRet.f32 %7193, 3
  %7196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7197 = extractvalue %dx.types.CBufRet.f32 %7196, 2
  %7198 = fmul fast float %7195, %7190
  %7199 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7200 = fsub fast float 1.000000e+00, %7199
  %7201 = fmul fast float %6815, 5.000000e-01
  %7202 = fadd fast float %7201, 5.000000e-01
  %7203 = call float @dx.op.unary.f32(i32 7, float %7202)  ; Saturate(value)
  %7204 = fsub fast float 1.000000e+00, %7203
  %7205 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7200)  ; FMax(a,b)
  %7206 = fdiv fast float %7204, %7205
  %7207 = fsub fast float %7190, %6772
  %7208 = call float @dx.op.unary.f32(i32 6, float %7207)  ; FAbs(value)
  %7209 = fmul fast float %7208, %7194
  %7210 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  %7211 = fsub fast float 1.000000e+00, %7209
  %7212 = fmul fast float %7211, %7210
  %7213 = fadd fast float %7212, %7209
  %7214 = fmul fast float %7197, %7190
  %7215 = call float @dx.op.unary.f32(i32 7, float %7214)  ; Saturate(value)
  %7216 = fsub fast float 1.000000e+00, %7213
  %7217 = fmul fast float %7216, %7215
  %7218 = fadd fast float %7217, %7213
  %7219 = call float @dx.op.unary.f32(i32 7, float %7218)  ; Saturate(value)
  %7220 = fadd fast float %7192, -1.000000e+00
  %7221 = select i1 %7191, float -1.000000e+00, float %7220
  %7222 = fmul fast float %7219, %7221
  %7223 = fadd fast float %7222, 1.000000e+00
  %7224 = fsub fast float -0.000000e+00, %7222
  %7225 = fmul fast float %7184, %7224
  %7226 = fmul fast float %7185, %7224
  %7227 = fmul fast float %7186, %7224
  br label %7228

; <label>:7228                                    ; preds = %7181, %6781
  %7229 = phi float [ %7182, %7181 ], [ 0.000000e+00, %6781 ]
  %7230 = phi float [ %7223, %7181 ], [ 1.000000e+00, %6781 ]
  %7231 = phi float [ %7225, %7181 ], [ 0.000000e+00, %6781 ]
  %7232 = phi float [ %7226, %7181 ], [ 0.000000e+00, %6781 ]
  %7233 = phi float [ %7227, %7181 ], [ 0.000000e+00, %6781 ]
  %7234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7234, 1
  %7236 = fsub fast float 1.000000e+00, %7230
  %7237 = fmul fast float %7236, %6816
  %7238 = fmul fast float %7237, %7235
  %7239 = fsub fast float %6816, %7238
  br i1 %6809, label %7240, label %7269, !dx.controlflow.hints !164

; <label>:7240                                    ; preds = %7228
  %7241 = fmul fast float %6817, %6806
  %7242 = fadd fast float %7241, %6807
  %7243 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  %7244 = fmul fast float %6788, %7239
  %7245 = fsub fast float -0.000000e+00, %7244
  %7246 = fmul fast float %6789, %7239
  %7247 = fsub fast float -0.000000e+00, %7246
  %7248 = call float @dx.op.unary.f32(i32 21, float %7245)  ; Exp(value)
  %7249 = call float @dx.op.unary.f32(i32 21, float %7247)  ; Exp(value)
  %7250 = call float @dx.op.binary.f32(i32 35, float %6796, float %7248)  ; FMax(a,b)
  %7251 = call float @dx.op.binary.f32(i32 35, float %6796, float %7249)  ; FMax(a,b)
  %7252 = fsub fast float %7251, %7250
  %7253 = fmul fast float %7252, %7243
  %7254 = fadd fast float %7253, %7250
  %7255 = call float @dx.op.unary.f32(i32 7, float %7254)  ; Saturate(value)
  %7256 = fsub fast float %6793, %6798
  %7257 = fsub fast float %6794, %6799
  %7258 = fsub fast float %6795, %6800
  %7259 = fmul fast float %7243, %7256
  %7260 = fmul fast float %7243, %7257
  %7261 = fmul fast float %7243, %7258
  %7262 = fadd fast float %7259, %6798
  %7263 = fadd fast float %7260, %6799
  %7264 = fadd fast float %7261, %6800
  %7265 = fsub fast float 1.000000e+00, %7255
  %7266 = fmul fast float %7265, %7262
  %7267 = fmul fast float %7265, %7263
  %7268 = fmul fast float %7265, %7264
  br label %7328

; <label>:7269                                    ; preds = %7228
  %7270 = fmul fast float %7239, %6805
  %7271 = call float @dx.op.unary.f32(i32 7, float %7270)  ; Saturate(value)
  %7272 = fsub fast float 2.000000e+00, %7271
  %7273 = fmul fast float %7271, 9.921875e-01
  %7274 = fmul fast float %7273, %7272
  %7275 = fadd fast float %7274, 3.906250e-03
  %7276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %7275, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7277 = extractvalue %dx.types.ResRet.f32 %7276, 0
  %7278 = fsub fast float %7271, %7277
  %7279 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7278)  ; FMax(a,b)
  %7280 = fmul fast float %6791, %6772
  %7281 = call float @dx.op.unary.f32(i32 6, float %7280)  ; FAbs(value)
  %7282 = fcmp fast ogt float %7281, 0x3EB0C6F7A0000000
  br i1 %7282, label %7283, label %7289, !dx.controlflow.hints !165

; <label>:7283                                    ; preds = %7269
  %7284 = fmul fast float %7280, 0xBFF7154760000000
  %7285 = call float @dx.op.unary.f32(i32 21, float %7284)  ; Exp(value)
  %7286 = fsub fast float 1.000000e+00, %7285
  %7287 = fdiv fast float %7286, %7280
  %7288 = fmul fast float %7287, %6801
  br label %7289

; <label>:7289                                    ; preds = %7283, %7269
  %7290 = phi float [ %7288, %7283 ], [ %6801, %7269 ]
  %7291 = fadd fast float %7290, %6803
  %7292 = fmul fast float %7291, %7279
  %7293 = fmul fast float %6788, %7292
  %7294 = fsub fast float -0.000000e+00, %7293
  %7295 = fmul fast float %6789, %7292
  %7296 = fsub fast float -0.000000e+00, %7295
  %7297 = fmul fast float %6790, %7292
  %7298 = fsub fast float -0.000000e+00, %7297
  %7299 = call float @dx.op.unary.f32(i32 21, float %7294)  ; Exp(value)
  %7300 = call float @dx.op.unary.f32(i32 21, float %7296)  ; Exp(value)
  %7301 = call float @dx.op.unary.f32(i32 21, float %7298)  ; Exp(value)
  %7302 = fmul fast float %6817, %6817
  %7303 = fadd fast float %7302, 1.000000e+00
  %7304 = fmul fast float %7303, 0x3FAE8EC8A0000000
  %7305 = fmul fast float %7304, %6798
  %7306 = fmul fast float %7304, %6799
  %7307 = fmul fast float %7304, %6800
  %7308 = fmul fast float %6817, %6796
  %7309 = fsub fast float 1.000000e+00, %7308
  %7310 = fmul fast float %6796, %6796
  %7311 = fsub fast float 1.000000e+00, %7310
  %7312 = fmul fast float %7311, 0x3FB45F3060000000
  %7313 = fmul fast float %7309, %7309
  %7314 = fdiv fast float 1.000000e+00, %7313
  %7315 = fmul fast float %7312, %7314
  %7316 = fmul fast float %7315, %6793
  %7317 = fmul fast float %7315, %6794
  %7318 = fmul fast float %7315, %6795
  %7319 = fadd fast float %7316, %7305
  %7320 = fadd fast float %7317, %7306
  %7321 = fadd fast float %7318, %7307
  %7322 = fsub fast float 1.000000e+00, %7299
  %7323 = fsub fast float 1.000000e+00, %7300
  %7324 = fsub fast float 1.000000e+00, %7301
  %7325 = fmul fast float %7319, %7322
  %7326 = fmul fast float %7320, %7323
  %7327 = fmul fast float %7321, %7324
  br label %7328

; <label>:7328                                    ; preds = %7289, %7240
  %7329 = phi float [ %7266, %7240 ], [ %7325, %7289 ]
  %7330 = phi float [ %7267, %7240 ], [ %7326, %7289 ]
  %7331 = phi float [ %7268, %7240 ], [ %7327, %7289 ]
  %7332 = phi float [ %7255, %7240 ], [ %7299, %7289 ]
  %7333 = phi float [ %7255, %7240 ], [ %7300, %7289 ]
  %7334 = phi float [ %7255, %7240 ], [ %7301, %7289 ]
  br i1 %6825, label %7335, label %7533, !dx.controlflow.hints !166

; <label>:7335                                    ; preds = %7328
  %7336 = extractvalue %dx.types.CBufRet.f32 %7234, 0
  %7337 = fmul fast float %7336, %7236
  %7338 = fsub fast float %7231, %7329
  %7339 = fsub fast float %7232, %7330
  %7340 = fsub fast float %7233, %7331
  %7341 = fmul fast float %7337, %7338
  %7342 = fmul fast float %7337, %7339
  %7343 = fmul fast float %7337, %7340
  %7344 = fadd fast float %7341, %7329
  %7345 = fadd fast float %7342, %7330
  %7346 = fadd fast float %7343, %7331
  %7347 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7332)  ; FMax(a,b)
  %7348 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7333)  ; FMax(a,b)
  %7349 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7334)  ; FMax(a,b)
  %7350 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7230)  ; FMax(a,b)
  %7351 = call float @dx.op.binary.f32(i32 35, float %7229, float %7239)  ; FMax(a,b)
  %7352 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7351)  ; FMax(a,b)
  %7353 = fdiv fast float %7229, %7352
  %7354 = call float @dx.op.unary.f32(i32 7, float %7353)  ; Saturate(value)
  %7355 = fdiv fast float %7239, %7352
  %7356 = call float @dx.op.unary.f32(i32 7, float %7355)  ; Saturate(value)
  %7357 = fcmp fast une float %7350, 1.000000e+00
  br i1 %7357, label %7358, label %7371, !dx.controlflow.hints !167

; <label>:7358                                    ; preds = %7335
  %7359 = call float @dx.op.unary.f32(i32 23, float %7350)  ; Log(value)
  %7360 = fmul fast float %7359, 0x3FE62E4300000000
  %7361 = fmul fast float %7231, %7360
  %7362 = fsub fast float -0.000000e+00, %7361
  %7363 = fmul fast float %7232, %7360
  %7364 = fsub fast float -0.000000e+00, %7363
  %7365 = fmul fast float %7233, %7360
  %7366 = fsub fast float -0.000000e+00, %7365
  %7367 = fsub fast float 1.000000e+00, %7350
  %7368 = fdiv fast float %7362, %7367
  %7369 = fdiv fast float %7364, %7367
  %7370 = fdiv fast float %7366, %7367
  br label %7371

; <label>:7371                                    ; preds = %7358, %7335
  %7372 = phi float [ %7368, %7358 ], [ %7231, %7335 ]
  %7373 = phi float [ %7369, %7358 ], [ %7232, %7335 ]
  %7374 = phi float [ %7370, %7358 ], [ %7233, %7335 ]
  %7375 = phi float [ %7360, %7358 ], [ 0.000000e+00, %7335 ]
  %7376 = fcmp fast une float %7347, 1.000000e+00
  br i1 %7376, label %7377, label %7384, !dx.controlflow.hints !168

; <label>:7377                                    ; preds = %7371
  %7378 = call float @dx.op.unary.f32(i32 23, float %7347)  ; Log(value)
  %7379 = fmul fast float %7378, 0x3FE62E4300000000
  %7380 = fmul fast float %7344, %7379
  %7381 = fsub fast float -0.000000e+00, %7380
  %7382 = fsub fast float 1.000000e+00, %7347
  %7383 = fdiv fast float %7381, %7382
  br label %7384

; <label>:7384                                    ; preds = %7377, %7371
  %7385 = phi float [ %7383, %7377 ], [ %7344, %7371 ]
  %7386 = phi float [ %7379, %7377 ], [ 0.000000e+00, %7371 ]
  %7387 = fcmp fast une float %7348, 1.000000e+00
  br i1 %7387, label %7388, label %7395, !dx.controlflow.hints !168

; <label>:7388                                    ; preds = %7384
  %7389 = call float @dx.op.unary.f32(i32 23, float %7348)  ; Log(value)
  %7390 = fmul fast float %7389, 0x3FE62E4300000000
  %7391 = fmul fast float %7345, %7390
  %7392 = fsub fast float -0.000000e+00, %7391
  %7393 = fsub fast float 1.000000e+00, %7348
  %7394 = fdiv fast float %7392, %7393
  br label %7395

; <label>:7395                                    ; preds = %7388, %7384
  %7396 = phi float [ %7394, %7388 ], [ %7345, %7384 ]
  %7397 = phi float [ %7390, %7388 ], [ 0.000000e+00, %7384 ]
  %7398 = fcmp fast une float %7349, 1.000000e+00
  br i1 %7398, label %7399, label %7406, !dx.controlflow.hints !168

; <label>:7399                                    ; preds = %7395
  %7400 = call float @dx.op.unary.f32(i32 23, float %7349)  ; Log(value)
  %7401 = fmul fast float %7400, 0x3FE62E4300000000
  %7402 = fmul fast float %7346, %7401
  %7403 = fsub fast float -0.000000e+00, %7402
  %7404 = fsub fast float 1.000000e+00, %7349
  %7405 = fdiv fast float %7403, %7404
  br label %7406

; <label>:7406                                    ; preds = %7399, %7395
  %7407 = phi float [ %7405, %7399 ], [ %7346, %7395 ]
  %7408 = phi float [ %7401, %7399 ], [ 0.000000e+00, %7395 ]
  %7409 = fmul fast float %7372, %7356
  %7410 = fmul fast float %7373, %7356
  %7411 = fmul fast float %7374, %7356
  %7412 = fmul fast float %7375, %7356
  %7413 = fmul fast float %7385, %7354
  %7414 = fmul fast float %7396, %7354
  %7415 = fmul fast float %7407, %7354
  %7416 = fmul fast float %7386, %7354
  %7417 = fmul fast float %7397, %7354
  %7418 = fmul fast float %7408, %7354
  %7419 = fadd fast float %7413, %7409
  %7420 = fadd fast float %7414, %7410
  %7421 = fadd fast float %7415, %7411
  %7422 = fadd fast float %7416, %7412
  %7423 = fadd fast float %7417, %7412
  %7424 = fadd fast float %7418, %7412
  %7425 = fcmp fast une float %7422, 0.000000e+00
  br i1 %7425, label %7426, label %7433, !dx.controlflow.hints !169

; <label>:7426                                    ; preds = %7406
  %7427 = fmul fast float %7422, 0x3FF7154760000000
  %7428 = call float @dx.op.unary.f32(i32 21, float %7427)  ; Exp(value)
  %7429 = fsub fast float 1.000000e+00, %7428
  %7430 = fmul fast float %7419, %7429
  %7431 = fsub fast float -0.000000e+00, %7430
  %7432 = fdiv fast float %7431, %7422
  br label %7433

; <label>:7433                                    ; preds = %7426, %7406
  %7434 = phi float [ %7428, %7426 ], [ 1.000000e+00, %7406 ]
  %7435 = phi float [ %7432, %7426 ], [ %7419, %7406 ]
  %7436 = fcmp fast une float %7423, 0.000000e+00
  br i1 %7436, label %7437, label %7444, !dx.controlflow.hints !169

; <label>:7437                                    ; preds = %7433
  %7438 = fmul fast float %7423, 0x3FF7154760000000
  %7439 = call float @dx.op.unary.f32(i32 21, float %7438)  ; Exp(value)
  %7440 = fsub fast float 1.000000e+00, %7439
  %7441 = fmul fast float %7420, %7440
  %7442 = fsub fast float -0.000000e+00, %7441
  %7443 = fdiv fast float %7442, %7423
  br label %7444

; <label>:7444                                    ; preds = %7437, %7433
  %7445 = phi float [ %7439, %7437 ], [ 1.000000e+00, %7433 ]
  %7446 = phi float [ %7443, %7437 ], [ %7420, %7433 ]
  %7447 = fcmp fast une float %7424, 0.000000e+00
  br i1 %7447, label %7448, label %7455, !dx.controlflow.hints !169

; <label>:7448                                    ; preds = %7444
  %7449 = fmul fast float %7424, 0x3FF7154760000000
  %7450 = call float @dx.op.unary.f32(i32 21, float %7449)  ; Exp(value)
  %7451 = fsub fast float 1.000000e+00, %7450
  %7452 = fmul fast float %7421, %7451
  %7453 = fsub fast float -0.000000e+00, %7452
  %7454 = fdiv fast float %7453, %7424
  br label %7455

; <label>:7455                                    ; preds = %7448, %7444
  %7456 = phi float [ %7450, %7448 ], [ 1.000000e+00, %7444 ]
  %7457 = phi float [ %7454, %7448 ], [ %7421, %7444 ]
  %7458 = fcmp fast ogt float %7354, %7356
  br i1 %7458, label %7459, label %7479

; <label>:7459                                    ; preds = %7455
  %7460 = fsub fast float 1.000000e+00, %7356
  %7461 = fmul fast float %7372, %7460
  %7462 = fmul fast float %7373, %7460
  %7463 = fmul fast float %7374, %7460
  %7464 = fmul fast float %7375, %7460
  %7465 = fcmp fast une float %7464, 0.000000e+00
  br i1 %7465, label %7466, label %7517, !dx.controlflow.hints !170

; <label>:7466                                    ; preds = %7459
  %7467 = fmul fast float %7464, 0x3FF7154760000000
  %7468 = call float @dx.op.unary.f32(i32 21, float %7467)  ; Exp(value)
  %7469 = fsub fast float 1.000000e+00, %7468
  %7470 = fmul fast float %7461, %7469
  %7471 = fsub fast float -0.000000e+00, %7470
  %7472 = fmul fast float %7462, %7469
  %7473 = fsub fast float -0.000000e+00, %7472
  %7474 = fmul fast float %7463, %7469
  %7475 = fsub fast float -0.000000e+00, %7474
  %7476 = fdiv fast float %7471, %7464
  %7477 = fdiv fast float %7473, %7464
  %7478 = fdiv fast float %7475, %7464
  br label %7517

; <label>:7479                                    ; preds = %7455
  %7480 = fsub fast float 1.000000e+00, %7354
  %7481 = fmul fast float %7385, %7480
  %7482 = fmul fast float %7396, %7480
  %7483 = fmul fast float %7407, %7480
  %7484 = fmul fast float %7386, %7480
  %7485 = fmul fast float %7397, %7480
  %7486 = fmul fast float %7408, %7480
  %7487 = fcmp fast une float %7484, 0.000000e+00
  br i1 %7487, label %7488, label %7495, !dx.controlflow.hints !169

; <label>:7488                                    ; preds = %7479
  %7489 = fmul fast float %7484, 0x3FF7154760000000
  %7490 = call float @dx.op.unary.f32(i32 21, float %7489)  ; Exp(value)
  %7491 = fsub fast float 1.000000e+00, %7490
  %7492 = fmul fast float %7481, %7491
  %7493 = fsub fast float -0.000000e+00, %7492
  %7494 = fdiv fast float %7493, %7484
  br label %7495

; <label>:7495                                    ; preds = %7488, %7479
  %7496 = phi float [ %7494, %7488 ], [ %7481, %7479 ]
  %7497 = phi float [ %7490, %7488 ], [ 1.000000e+00, %7479 ]
  %7498 = fcmp fast une float %7485, 0.000000e+00
  br i1 %7498, label %7499, label %7506, !dx.controlflow.hints !169

; <label>:7499                                    ; preds = %7495
  %7500 = fmul fast float %7485, 0x3FF7154760000000
  %7501 = call float @dx.op.unary.f32(i32 21, float %7500)  ; Exp(value)
  %7502 = fsub fast float 1.000000e+00, %7501
  %7503 = fmul fast float %7482, %7502
  %7504 = fsub fast float -0.000000e+00, %7503
  %7505 = fdiv fast float %7504, %7485
  br label %7506

; <label>:7506                                    ; preds = %7499, %7495
  %7507 = phi float [ %7505, %7499 ], [ %7482, %7495 ]
  %7508 = phi float [ %7501, %7499 ], [ 1.000000e+00, %7495 ]
  %7509 = fcmp fast une float %7486, 0.000000e+00
  br i1 %7509, label %7510, label %7517, !dx.controlflow.hints !169

; <label>:7510                                    ; preds = %7506
  %7511 = fmul fast float %7486, 0x3FF7154760000000
  %7512 = call float @dx.op.unary.f32(i32 21, float %7511)  ; Exp(value)
  %7513 = fsub fast float 1.000000e+00, %7512
  %7514 = fmul fast float %7483, %7513
  %7515 = fsub fast float -0.000000e+00, %7514
  %7516 = fdiv fast float %7515, %7486
  br label %7517

; <label>:7517                                    ; preds = %7510, %7506, %7466, %7459
  %7518 = phi float [ %7516, %7510 ], [ %7478, %7466 ], [ %7463, %7459 ], [ %7483, %7506 ]
  %7519 = phi float [ %7507, %7510 ], [ %7477, %7466 ], [ %7462, %7459 ], [ %7507, %7506 ]
  %7520 = phi float [ %7496, %7510 ], [ %7476, %7466 ], [ %7461, %7459 ], [ %7496, %7506 ]
  %7521 = phi float [ %7512, %7510 ], [ %7468, %7466 ], [ 1.000000e+00, %7459 ], [ 1.000000e+00, %7506 ]
  %7522 = phi float [ %7508, %7510 ], [ %7468, %7466 ], [ 1.000000e+00, %7459 ], [ %7508, %7506 ]
  %7523 = phi float [ %7497, %7510 ], [ %7468, %7466 ], [ 1.000000e+00, %7459 ], [ %7497, %7506 ]
  %7524 = fmul fast float %7523, %7435
  %7525 = fmul fast float %7522, %7446
  %7526 = fmul fast float %7521, %7457
  %7527 = fadd fast float %7524, %7520
  %7528 = fadd fast float %7525, %7519
  %7529 = fadd fast float %7526, %7518
  %7530 = fmul fast float %7523, %7434
  %7531 = fmul fast float %7522, %7445
  %7532 = fmul fast float %7521, %7456
  br label %7533

; <label>:7533                                    ; preds = %7517, %7328
  %7534 = phi float [ %7532, %7517 ], [ %7334, %7328 ]
  %7535 = phi float [ %7531, %7517 ], [ %7333, %7328 ]
  %7536 = phi float [ %7530, %7517 ], [ %7332, %7328 ]
  %7537 = phi float [ %7529, %7517 ], [ %7331, %7328 ]
  %7538 = phi float [ %7528, %7517 ], [ %7330, %7328 ]
  %7539 = phi float [ %7527, %7517 ], [ %7329, %7328 ]
  %7540 = fmul fast float %7539, %6485
  %7541 = fmul fast float %7538, %6485
  %7542 = fmul fast float %7537, %6485
  %7543 = fmul fast float %7536, %6780
  %7544 = call float @dx.op.dot3.f32(i32 55, float %7536, float %7535, float %7534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7545 = call float @dx.op.dot3.f32(i32 55, float %7540, float %7541, float %7542, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7546 = select i1 %235, float %7544, float %7536
  %7547 = select i1 %235, float %7544, float %7535
  %7548 = select i1 %235, float 1.000000e+00, float %7534
  %7549 = select i1 %235, float %7545, float %7540
  %7550 = select i1 %235, float 0.000000e+00, float %7541
  %7551 = select i1 %235, float 0.000000e+00, float %7542
  %7552 = fmul fast float %7546, %6774
  %7553 = fmul fast float %7547, %6775
  %7554 = fmul fast float %7548, %6776
  %7555 = fadd fast float %7552, %7549
  %7556 = fadd fast float %7553, %7550
  %7557 = fadd fast float %7551, %7554
  %7558 = fmul fast float %7546, %6777
  %7559 = fmul fast float %7547, %6778
  %7560 = fmul fast float %7548, %6779
  %7561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7562 = extractvalue %dx.types.CBufRet.i32 %7561, 0
  %7563 = icmp eq i32 %7562, 0
  br i1 %7563, label %7931, label %7564, !dx.controlflow.hints !171

; <label>:7564                                    ; preds = %7533
  %7565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %7566 = extractvalue %dx.types.CBufRet.f32 %7565, 2
  %7567 = extractvalue %dx.types.CBufRet.f32 %7565, 3
  %7568 = fmul fast float %7566, %94
  %7569 = fmul fast float %7567, %95
  %7570 = fmul fast float %7568, 2.000000e+00
  %7571 = fmul fast float %7569, 2.000000e+00
  %7572 = fsub fast float 1.000000e+00, %7570
  %7573 = fsub fast float 1.000000e+00, %7571
  %7574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7575 = extractvalue %dx.types.CBufRet.f32 %7574, 0
  %7576 = extractvalue %dx.types.CBufRet.f32 %7574, 1
  %7577 = extractvalue %dx.types.CBufRet.f32 %7574, 2
  %7578 = fmul fast float %7572, %7575
  %7579 = fmul fast float %7572, %7576
  %7580 = fmul fast float %7572, %7577
  %7581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.f32 %7581, 0
  %7583 = extractvalue %dx.types.CBufRet.f32 %7581, 1
  %7584 = extractvalue %dx.types.CBufRet.f32 %7581, 2
  %7585 = fmul fast float %7573, %7582
  %7586 = fmul fast float %7573, %7583
  %7587 = fmul fast float %7573, %7584
  %7588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7589 = extractvalue %dx.types.CBufRet.f32 %7588, 0
  %7590 = extractvalue %dx.types.CBufRet.f32 %7588, 1
  %7591 = extractvalue %dx.types.CBufRet.f32 %7588, 2
  %7592 = fadd fast float %7585, %7589
  %7593 = fadd fast float %7592, %7578
  %7594 = fadd fast float %7586, %7590
  %7595 = fadd fast float %7594, %7579
  %7596 = fadd fast float %7587, %7591
  %7597 = fadd fast float %7596, %7580
  %7598 = fmul fast float %7593, %6773
  %7599 = fmul fast float %7595, %6773
  %7600 = fmul fast float %7597, %6773
  %7601 = fmul fast float %7598, %7598
  %7602 = fmul fast float %7599, %7599
  %7603 = fadd fast float %7601, %7602
  %7604 = fmul fast float %7600, %7600
  %7605 = fadd fast float %7603, %7604
  %7606 = call float @dx.op.unary.f32(i32 24, float %7605)  ; Sqrt(value)
  %7607 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %7608 = fsub fast float %7606, %7607
  %7609 = extractvalue %dx.types.CBufRet.f32 %6499, 2
  %7610 = fmul fast float %7608, %7609
  %7611 = call float @dx.op.unary.f32(i32 7, float %7610)  ; Saturate(value)
  %7612 = fadd fast float %7611, -5.000000e-01
  %7613 = fmul fast float %7612, 2.000000e+00
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 2
  %7616 = call float @dx.op.binary.f32(i32 36, float %7615, float %7613)  ; FMin(a,b)
  %7617 = fsub fast float -0.000000e+00, %7615
  %7618 = fcmp fast ogt float %7616, %7617
  br i1 %7618, label %7619, label %7931, !dx.controlflow.hints !172

; <label>:7619                                    ; preds = %7564
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 3
  %7622 = fcmp fast ogt float %7621, 0.000000e+00
  br i1 %7622, label %7623, label %7698, !dx.controlflow.hints !173

; <label>:7623                                    ; preds = %7619
  %7624 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7625 = extractvalue %dx.types.Dimensions %7624, 0
  %7626 = sitofp i32 %7625 to float
  %7627 = extractvalue %dx.types.Dimensions %7624, 1
  %7628 = sitofp i32 %7627 to float
  %7629 = fmul fast float %7568, %7626
  %7630 = fmul fast float %7569, %7628
  %7631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7632 = extractvalue %dx.types.CBufRet.f32 %7631, 1
  %7633 = fsub fast float -0.000000e+00, %7632
  %7634 = fptoui float %7633 to i32
  %7635 = fptoui float %7629 to i32
  %7636 = fptoui float %7630 to i32
  %7637 = and i32 %7634, 31
  %7638 = lshr i32 %7635, %7637
  %7639 = lshr i32 %7636, %7637
  %7640 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7634, i32 %7638, i32 %7639, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7641 = extractvalue %dx.types.ResRet.f32 %7640, 0
  %7642 = fcmp fast olt float %7641, -1.000000e+00
  %7643 = fcmp fast ogt float %7641, -1.000000e+00
  %7644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7645 = extractvalue %dx.types.CBufRet.f32 %7644, 1
  %7646 = select i1 %7643, float %7645, float 1.000000e+00
  %7647 = fadd fast float %7641, 1.000000e+00
  %7648 = fmul fast float %7646, %7647
  %7649 = call float @dx.op.unary.f32(i32 6, float %7648)  ; FAbs(value)
  %7650 = extractvalue %dx.types.CBufRet.f32 %7644, 3
  %7651 = fcmp fast oge float %7649, %7650
  %7652 = select i1 %7651, float 0x4197782600000000, float %7649
  %7653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7654 = extractvalue %dx.types.CBufRet.f32 %7653, 0
  %7655 = extractvalue %dx.types.CBufRet.f32 %7653, 1
  %7656 = extractvalue %dx.types.CBufRet.f32 %7653, 2
  %7657 = select i1 %7642, float %7654, float %7575
  %7658 = select i1 %7642, float %7655, float %7576
  %7659 = select i1 %7642, float %7656, float %7577
  %7660 = fmul fast float %7657, %7572
  %7661 = fmul fast float %7658, %7572
  %7662 = fmul fast float %7659, %7572
  %7663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7664 = extractvalue %dx.types.CBufRet.f32 %7663, 0
  %7665 = extractvalue %dx.types.CBufRet.f32 %7663, 1
  %7666 = extractvalue %dx.types.CBufRet.f32 %7663, 2
  %7667 = select i1 %7642, float %7664, float %7582
  %7668 = select i1 %7642, float %7665, float %7583
  %7669 = select i1 %7642, float %7666, float %7584
  %7670 = fmul fast float %7667, %7573
  %7671 = fmul fast float %7668, %7573
  %7672 = fmul fast float %7669, %7573
  %7673 = fadd fast float %7670, %7660
  %7674 = fadd fast float %7671, %7661
  %7675 = fadd fast float %7672, %7662
  %7676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7677 = extractvalue %dx.types.CBufRet.f32 %7676, 0
  %7678 = extractvalue %dx.types.CBufRet.f32 %7676, 1
  %7679 = extractvalue %dx.types.CBufRet.f32 %7676, 2
  %7680 = select i1 %7642, float %7677, float %7589
  %7681 = select i1 %7642, float %7678, float %7590
  %7682 = select i1 %7642, float %7679, float %7591
  %7683 = fadd fast float %7673, %7680
  %7684 = fadd fast float %7674, %7681
  %7685 = fadd fast float %7675, %7682
  %7686 = fmul fast float %7683, %7652
  %7687 = fmul fast float %7684, %7652
  %7688 = fmul fast float %7685, %7652
  %7689 = fmul fast float %7686, %7686
  %7690 = fmul fast float %7687, %7687
  %7691 = fadd fast float %7689, %7690
  %7692 = fmul fast float %7688, %7688
  %7693 = fadd fast float %7691, %7692
  %7694 = call float @dx.op.unary.f32(i32 24, float %7693)  ; Sqrt(value)
  %7695 = fsub fast float %7694, %7607
  %7696 = fmul fast float %7695, %7609
  %7697 = call float @dx.op.unary.f32(i32 7, float %7696)  ; Saturate(value)
  br label %7698

; <label>:7698                                    ; preds = %7623, %7619
  %7699 = phi float [ %7697, %7623 ], [ 1.000000e+00, %7619 ]
  %7700 = fmul fast float %7616, 5.000000e-01
  %7701 = fadd fast float %7700, 5.000000e-01
  %7702 = call float @dx.op.unary.f32(i32 22, float %7701)  ; Frc(value)
  %7703 = call float @dx.op.unary.f32(i32 27, float %7702)  ; Round_ni(value)
  %7704 = call float @dx.op.unary.f32(i32 22, float %7702)  ; Frc(value)
  %7705 = fmul fast float %7704, 2.000000e+00
  %7706 = fadd fast float %7705, -1.000000e+00
  %7707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %7568, float %7569, float %7703, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7708 = extractvalue %dx.types.ResRet.f32 %7707, 0
  %7709 = extractvalue %dx.types.ResRet.f32 %7707, 1
  %7710 = extractvalue %dx.types.ResRet.f32 %7707, 2
  %7711 = extractvalue %dx.types.ResRet.f32 %7707, 3
  %7712 = fadd fast float %7708, -5.000000e-01
  %7713 = fadd fast float %7710, -5.000000e-01
  %7714 = fmul fast float %7712, 0xBFD5555560000000
  %7715 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7713, float %7714)  ; FMad(a,b,c)
  %7716 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7709, float 0.000000e+00)  ; FMad(a,b,c)
  %7717 = fadd fast float %7716, %7711
  %7718 = fmul fast float %7712, -7.500000e-01
  %7719 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7713, float %7718)  ; FMad(a,b,c)
  %7720 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7709, float 0.000000e+00)  ; FMad(a,b,c)
  %7721 = fadd fast float %7720, %7711
  %7722 = call float @dx.op.binary.f32(i32 35, float %7715, float -1.000000e+00)  ; FMax(a,b)
  %7723 = call float @dx.op.binary.f32(i32 35, float %7717, float -1.000000e+00)  ; FMax(a,b)
  %7724 = call float @dx.op.binary.f32(i32 35, float %7719, float -1.000000e+00)  ; FMax(a,b)
  %7725 = call float @dx.op.binary.f32(i32 35, float %7721, float -1.000000e+00)  ; FMax(a,b)
  %7726 = call float @dx.op.binary.f32(i32 36, float %7722, float 1.000000e+00)  ; FMin(a,b)
  %7727 = call float @dx.op.binary.f32(i32 36, float %7723, float 1.000000e+00)  ; FMin(a,b)
  %7728 = call float @dx.op.binary.f32(i32 36, float %7724, float 1.000000e+00)  ; FMin(a,b)
  %7729 = call float @dx.op.binary.f32(i32 36, float %7725, float 1.000000e+00)  ; FMin(a,b)
  %7730 = fcmp fast olt float %7726, 0x3FEFFF8020000000
  br i1 %7730, label %7731, label %7846, !dx.controlflow.hints !174

; <label>:7731                                    ; preds = %7698
  %7732 = extractvalue %dx.types.CBufRet.f32 %7614, 3
  %7733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7734 = extractvalue %dx.types.CBufRet.f32 %7733, 0
  %7735 = extractvalue %dx.types.CBufRet.f32 %7733, 1
  %7736 = extractvalue %dx.types.CBufRet.f32 %7733, 2
  %7737 = extractvalue %dx.types.CBufRet.f32 %7733, 3
  %7738 = fsub fast float %7734, %7726
  %7739 = fsub fast float %7735, %7727
  %7740 = fsub fast float %7736, %7728
  %7741 = fsub fast float %7737, %7729
  %7742 = fmul fast float %7738, %7732
  %7743 = fmul fast float %7739, %7732
  %7744 = fmul fast float %7740, %7732
  %7745 = fmul fast float %7741, %7732
  %7746 = fadd fast float %7742, %7726
  %7747 = fadd fast float %7743, %7727
  %7748 = fsub fast float -0.000000e+00, %7747
  %7749 = fadd fast float %7744, %7728
  %7750 = fadd fast float %7745, %7729
  %7751 = fmul fast float %7746, %7746
  %7752 = fsub fast float %7747, %7751
  %7753 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7752)  ; FMax(a,b)
  %7754 = fdiv fast float 1.000000e+00, %7753
  %7755 = fmul fast float %7747, %7746
  %7756 = fsub fast float %7749, %7755
  %7757 = fsub fast float %7706, %7746
  %7758 = fmul fast float %7706, %7706
  %7759 = fsub fast float %7758, %7747
  %7760 = fmul fast float %7757, %7754
  %7761 = fmul fast float %7760, %7756
  %7762 = fsub fast float %7759, %7761
  %7763 = fmul fast float %7747, %7747
  %7764 = fsub fast float %7750, %7763
  %7765 = fmul fast float %7756, %7756
  %7766 = fmul fast float %7765, %7754
  %7767 = fsub fast float %7764, %7766
  %7768 = fdiv fast float %7762, %7767
  %7769 = fmul fast float %7756, %7768
  %7770 = fsub fast float %7757, %7769
  %7771 = fmul fast float %7770, %7754
  %7772 = fmul fast float %7771, %7746
  %7773 = fsub fast float 1.000000e+00, %7772
  %7774 = fmul fast float %7747, %7768
  %7775 = fsub fast float %7773, %7774
  %7776 = fmul fast float %7771, %7771
  %7777 = fmul fast float %7768, 4.000000e+00
  %7778 = fmul fast float %7777, %7775
  %7779 = fsub fast float %7776, %7778
  %7780 = call float @dx.op.unary.f32(i32 24, float %7779)  ; Sqrt(value)
  %7781 = fcmp fast oge float %7771, 0.000000e+00
  %7782 = fsub fast float -0.000000e+00, %7780
  %7783 = select i1 %7781, float %7782, float %7780
  %7784 = fsub fast float %7783, %7771
  %7785 = fdiv fast float %7784, %7768
  %7786 = fdiv fast float %7775, %7784
  %7787 = fmul fast float %7785, 5.000000e-01
  %7788 = fmul fast float %7786, 2.000000e+00
  %7789 = select i1 %7781, float %7787, float %7788
  %7790 = select i1 %7781, float %7788, float %7787
  %7791 = call float @dx.op.binary.f32(i32 35, float %7789, float %7790)  ; FMax(a,b)
  %7792 = call float @dx.op.binary.f32(i32 36, float %7789, float %7790)  ; FMin(a,b)
  %7793 = fcmp fast ogt float %7706, %7792
  br i1 %7793, label %7794, label %7804

; <label>:7794                                    ; preds = %7731
  %7795 = fsub fast float %7706, %7792
  %7796 = fsub fast float %7791, %7792
  %7797 = fmul fast float %7795, %7796
  %7798 = fmul fast float %7791, %7706
  %7799 = fadd fast float %7791, %7706
  %7800 = fmul fast float %7799, %7746
  %7801 = fadd fast float %7798, %7747
  %7802 = fsub fast float %7801, %7800
  %7803 = fdiv fast float %7802, %7797
  br label %7804

; <label>:7804                                    ; preds = %7794, %7731
  %7805 = phi float [ %7803, %7794 ], [ 0.000000e+00, %7731 ]
  %7806 = fcmp fast ogt float %7706, %7791
  %7807 = fsub fast float %7706, %7791
  br i1 %7806, label %7808, label %7818

; <label>:7808                                    ; preds = %7804
  %7809 = fsub fast float %7791, %7792
  %7810 = fmul fast float %7809, %7807
  %7811 = fmul fast float %7792, %7706
  %7812 = fadd fast float %7792, %7706
  %7813 = fmul fast float %7812, %7746
  %7814 = fsub fast float %7748, %7811
  %7815 = fadd fast float %7814, %7813
  %7816 = fdiv fast float %7815, %7810
  %7817 = fadd fast float %7816, %7805
  br label %7818

; <label>:7818                                    ; preds = %7808, %7804
  %7819 = phi float [ %7817, %7808 ], [ %7805, %7804 ]
  %7820 = fsub fast float %7706, %7792
  %7821 = fmul fast float %7820, %7807
  %7822 = fmul fast float %7792, %7791
  %7823 = fadd fast float %7792, %7791
  %7824 = fmul fast float %7823, %7746
  %7825 = fadd fast float %7822, %7747
  %7826 = fsub fast float %7825, %7824
  %7827 = fdiv fast float %7826, %7821
  %7828 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7829 = fcmp fast oeq float %6500, 0.000000e+00
  %7830 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7831 = fcmp fast oeq float %7830, 0.000000e+00
  %7832 = or i1 %7829, %7831
  %7833 = fmul fast float %7830, 2.000000e+00
  %7834 = fadd fast float %7615, %7616
  %7835 = fdiv fast float %7834, %7833
  %7836 = call float @dx.op.unary.f32(i32 7, float %7835)  ; Saturate(value)
  %7837 = fmul fast float %7836, 2.000000e+00
  %7838 = fsub fast float 3.000000e+00, %7837
  %7839 = fmul fast float %7836, %7836
  %7840 = fmul fast float %7839, %7838
  %7841 = select i1 %7832, float 1.000000e+00, float %7840
  %7842 = fmul fast float %7827, %6500
  %7843 = fadd fast float %7828, %7842
  %7844 = call float @dx.op.unary.f32(i32 7, float %7843)  ; Saturate(value)
  %7845 = fmul fast float %7841, %7844
  br label %7846

; <label>:7846                                    ; preds = %7818, %7698
  %7847 = phi float [ %7845, %7818 ], [ 0.000000e+00, %7698 ]
  %7848 = fsub fast float 1.000000e+00, %7847
  %7849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %7568, float %7569, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7850 = extractvalue %dx.types.ResRet.f32 %7849, 0
  %7851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7852 = extractvalue %dx.types.CBufRet.i32 %7851, 2
  %7853 = icmp eq i32 %7852, 0
  br i1 %7853, label %7859, label %7854

; <label>:7854                                    ; preds = %7846
  %7855 = call float @dx.op.unary.f32(i32 7, float %7847)  ; Saturate(value)
  %7856 = fadd fast float %7850, -1.000000e+00
  %7857 = fmul fast float %7855, %7856
  %7858 = fadd fast float %7857, 1.000000e+00
  br label %7859

; <label>:7859                                    ; preds = %7854, %7846
  %7860 = phi float [ %7858, %7854 ], [ %7848, %7846 ]
  br i1 %7622, label %7861, label %7879

; <label>:7861                                    ; preds = %7859
  %7862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7863 = extractvalue %dx.types.CBufRet.f32 %7862, 1
  %7864 = fsub fast float %7699, %7863
  %7865 = call float @dx.op.unary.f32(i32 7, float %7864)  ; Saturate(value)
  %7866 = fsub fast float %7699, %7621
  %7867 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7868 = fsub fast float %7865, %7867
  %7869 = fsub fast float %7701, %7867
  %7870 = fdiv fast float %7869, %7868
  %7871 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7872 = fmul fast float %7871, 2.000000e+00
  %7873 = fsub fast float 3.000000e+00, %7872
  %7874 = fsub fast float %7850, %7860
  %7875 = fmul fast float %7871, %7871
  %7876 = fmul fast float %7875, %7874
  %7877 = fmul fast float %7876, %7873
  %7878 = fadd fast float %7877, %7860
  br label %7879

; <label>:7879                                    ; preds = %7861, %7859
  %7880 = phi float [ %7878, %7861 ], [ %7860, %7859 ]
  %7881 = call float @dx.op.binary.f32(i32 35, float %7850, float %7880)  ; FMax(a,b)
  %7882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7883 = extractvalue %dx.types.CBufRet.i32 %7882, 2
  %7884 = and i32 %7883, 1
  %7885 = icmp eq i32 %7884, 0
  %7886 = fcmp fast une float %7881, 1.000000e+00
  %7887 = and i1 %7886, %7885
  br i1 %7887, label %7888, label %7907

; <label>:7888                                    ; preds = %7879
  %7889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %7568, float %7569, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7890 = extractvalue %dx.types.ResRet.f32 %7889, 0
  %7891 = extractvalue %dx.types.ResRet.f32 %7889, 1
  %7892 = extractvalue %dx.types.ResRet.f32 %7889, 2
  %7893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.f32 %7893, 1
  %7895 = fmul fast float %7894, %7890
  %7896 = fmul fast float %7894, %7891
  %7897 = fmul fast float %7894, %7892
  %7898 = fcmp fast ogt float %7850, 0x3FEFFF2E40000000
  %7899 = fsub fast float 1.000000e+00, %7881
  %7900 = fsub fast float 1.000000e+00, %7850
  %7901 = fdiv fast float %7899, %7900
  %7902 = call float @dx.op.unary.f32(i32 7, float %7901)  ; Saturate(value)
  %7903 = select i1 %7898, float 0.000000e+00, float %7902
  %7904 = fmul fast float %7895, %7903
  %7905 = fmul fast float %7896, %7903
  %7906 = fmul fast float %7897, %7903
  br label %7907

; <label>:7907                                    ; preds = %7888, %7879
  %7908 = phi float [ 0.000000e+00, %7879 ], [ %7904, %7888 ]
  %7909 = phi float [ 0.000000e+00, %7879 ], [ %7905, %7888 ]
  %7910 = phi float [ 0.000000e+00, %7879 ], [ %7906, %7888 ]
  %7911 = fmul fast float %7908, %6485
  %7912 = fmul fast float %7909, %6485
  %7913 = fmul fast float %7910, %6485
  %7914 = fmul fast float %7881, %7543
  %7915 = call float @dx.op.dot3.f32(i32 55, float %7881, float %7881, float %7881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7916 = call float @dx.op.dot3.f32(i32 55, float %7911, float %7912, float %7913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7917 = select i1 %235, float %7915, float %7881
  %7918 = select i1 %235, float 1.000000e+00, float %7881
  %7919 = select i1 %235, float %7916, float %7911
  %7920 = select i1 %235, float 0.000000e+00, float %7912
  %7921 = select i1 %235, float 0.000000e+00, float %7913
  %7922 = fmul fast float %7917, %7555
  %7923 = fmul fast float %7917, %7556
  %7924 = fmul fast float %7918, %7557
  %7925 = fadd fast float %7922, %7919
  %7926 = fadd fast float %7923, %7920
  %7927 = fadd fast float %7921, %7924
  %7928 = fmul fast float %7917, %7558
  %7929 = fmul fast float %7917, %7559
  %7930 = fmul fast float %7918, %7560
  br label %7931

; <label>:7931                                    ; preds = %7907, %7564, %7533, %6769
  %7932 = phi float [ %6774, %6769 ], [ %7555, %7533 ], [ %7925, %7907 ], [ %7555, %7564 ]
  %7933 = phi float [ %6775, %6769 ], [ %7556, %7533 ], [ %7926, %7907 ], [ %7556, %7564 ]
  %7934 = phi float [ %6776, %6769 ], [ %7557, %7533 ], [ %7927, %7907 ], [ %7557, %7564 ]
  %7935 = phi float [ %6777, %6769 ], [ %7558, %7533 ], [ %7928, %7907 ], [ %7558, %7564 ]
  %7936 = phi float [ %6778, %6769 ], [ %7559, %7533 ], [ %7929, %7907 ], [ %7559, %7564 ]
  %7937 = phi float [ %6779, %6769 ], [ %7560, %7533 ], [ %7930, %7907 ], [ %7560, %7564 ]
  %7938 = phi float [ %6780, %6769 ], [ %7543, %7533 ], [ %7914, %7907 ], [ %7543, %7564 ]
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 2
  %7941 = extractvalue %dx.types.CBufRet.f32 %7939, 3
  %7942 = fmul fast float %7940, %94
  %7943 = fmul fast float %7941, %95
  %7944 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7945 = call float @dx.op.unary.f32(i32 7, float %7943)  ; Saturate(value)
  %7946 = select i1 %6510, i32 2, i32 0
  %7947 = or i32 %7946, 1
  %7948 = uitofp i32 %7947 to float
  %7949 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7944, float %7945, float %7948, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7950 = extractvalue %dx.types.ResRet.f32 %7949, 0
  %7951 = extractvalue %dx.types.ResRet.f32 %7949, 1
  %7952 = extractvalue %dx.types.ResRet.f32 %7949, 2
  %7953 = extractvalue %dx.types.ResRet.f32 %7949, 3
  %7954 = add nuw nsw i32 %7946, 2
  %7955 = uitofp i32 %7954 to float
  %7956 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7944, float %7945, float %7955, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7957 = extractvalue %dx.types.ResRet.f32 %7956, 0
  %7958 = extractvalue %dx.types.ResRet.f32 %7956, 1
  %7959 = extractvalue %dx.types.ResRet.f32 %7956, 2
  %7960 = extractvalue %dx.types.ResRet.f32 %7956, 3
  %7961 = call float @dx.op.binary.f32(i32 35, float %7951, float %7952)  ; FMax(a,b)
  %7962 = call float @dx.op.binary.f32(i32 35, float %7950, float %7961)  ; FMax(a,b)
  %7963 = call float @dx.op.binary.f32(i32 35, float %7962, float %7953)  ; FMax(a,b)
  %7964 = call float @dx.op.binary.f32(i32 36, float %7958, float %7959)  ; FMin(a,b)
  %7965 = call float @dx.op.binary.f32(i32 36, float %7957, float %7964)  ; FMin(a,b)
  %7966 = call float @dx.op.binary.f32(i32 36, float %7965, float %7960)  ; FMin(a,b)
  %7967 = fmul fast float %7963, 2.550000e+02
  %7968 = fadd fast float %7967, 0x3F70101020000000
  %7969 = fptoui float %7968 to i32
  %7970 = fmul fast float %7966, 2.550000e+02
  %7971 = fadd fast float %7970, 0x3F70101020000000
  %7972 = fptoui float %7971 to i32
  %7973 = icmp ult i32 %7969, %7972
  br i1 %7973, label %7974, label %8142

; <label>:7974                                    ; preds = %7931
  %7975 = fadd fast float %6773, -4.000000e+00
  %7976 = select i1 %2593, float -4.000000e+00, float %7975
  %7977 = call float @dx.op.binary.f32(i32 35, float %7976, float 0.000000e+00)  ; FMax(a,b)
  %7978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7979 = extractvalue %dx.types.CBufRet.f32 %7978, 0
  %7980 = fadd fast float %7979, %7977
  %7981 = extractvalue %dx.types.CBufRet.f32 %7978, 2
  %7982 = fmul fast float %7980, %7981
  %7983 = call float @dx.op.unary.f32(i32 23, float %7982)  ; Log(value)
  %7984 = extractvalue %dx.types.CBufRet.f32 %7978, 3
  %7985 = fmul fast float %7984, %7983
  %7986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.f32 %7986, 2
  %7988 = fmul fast float %7985, %7987
  %7989 = call float @dx.op.unary.f32(i32 7, float %7988)  ; Saturate(value)
  %7990 = uitofp i32 %7969 to float
  %7991 = uitofp i32 %7972 to float
  %7992 = fadd fast float %7990, 5.000000e-01
  %7993 = fadd fast float %7991, 5.000000e-01
  %7994 = fmul fast float %7987, %7992
  %7995 = fmul fast float %7987, %7993
  %7996 = fadd fast float %7994, 0x3F0FFB4800000000
  %7997 = fadd fast float %7995, 0xBF0FFB4800000000
  %7998 = call float @dx.op.binary.f32(i32 35, float %7989, float %7996)  ; FMax(a,b)
  %7999 = call float @dx.op.binary.f32(i32 36, float %7998, float %7997)  ; FMin(a,b)
  %8000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8001 = extractvalue %dx.types.CBufRet.f32 %8000, 1
  %8002 = extractvalue %dx.types.CBufRet.f32 %8000, 2
  %8003 = extractvalue %dx.types.CBufRet.f32 %8000, 0
  %8004 = select i1 %6510, float %8003, float 0.000000e+00
  %8005 = fmul fast float %8001, %7999
  %8006 = fadd fast float %8004, %8005
  %8007 = fadd fast float %8004, %8002
  %8008 = fsub fast float %8001, %8002
  %8009 = fadd fast float %8008, %8004
  %8010 = call float @dx.op.binary.f32(i32 35, float %8006, float %8007)  ; FMax(a,b)
  %8011 = call float @dx.op.binary.f32(i32 36, float %8010, float %8009)  ; FMin(a,b)
  %8012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7944, float %7945, float %8011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8013 = extractvalue %dx.types.ResRet.f32 %8012, 0
  %8014 = extractvalue %dx.types.ResRet.f32 %8012, 1
  %8015 = extractvalue %dx.types.ResRet.f32 %8012, 2
  %8016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8017 = extractvalue %dx.types.CBufRet.i32 %8016, 0
  %8018 = extractvalue %dx.types.CBufRet.i32 %8016, 1
  %8019 = uitofp i32 %8017 to float
  %8020 = uitofp i32 %8018 to float
  %8021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8022 = extractvalue %dx.types.CBufRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.CBufRet.f32 %8021, 1
  %8024 = fmul fast float %8019, %7944
  %8025 = fmul fast float %8020, %7945
  %8026 = fadd fast float %8024, -5.000000e-01
  %8027 = fadd fast float %8025, -5.000000e-01
  %8028 = call float @dx.op.unary.f32(i32 22, float %8026)  ; Frc(value)
  %8029 = call float @dx.op.unary.f32(i32 22, float %8027)  ; Frc(value)
  %8030 = fmul fast float %8028, %8028
  %8031 = fmul fast float %8030, %8028
  %8032 = fsub fast float 3.000000e+00, %8028
  %8033 = fmul fast float %8030, %8032
  %8034 = fmul fast float %8028, 3.000000e+00
  %8035 = fmul fast float %8031, 3.000000e+00
  %8036 = fmul fast float %8030, 6.000000e+00
  %8037 = fsub fast float %8035, %8036
  %8038 = fadd fast float %8037, 4.000000e+00
  %8039 = fmul fast float %8038, 0x3FC5555560000000
  %8040 = fmul fast float %8031, -3.000000e+00
  %8041 = fadd fast float %8030, %8028
  %8042 = fmul fast float %8041, 3.000000e+00
  %8043 = fadd fast float %8040, 1.000000e+00
  %8044 = fadd fast float %8043, %8042
  %8045 = fmul fast float %8031, 0x3FC5555560000000
  %8046 = fmul fast float %8029, %8029
  %8047 = fmul fast float %8046, %8029
  %8048 = fsub fast float 3.000000e+00, %8029
  %8049 = fmul fast float %8046, %8048
  %8050 = fmul fast float %8029, 3.000000e+00
  %8051 = fmul fast float %8047, 3.000000e+00
  %8052 = fmul fast float %8046, 6.000000e+00
  %8053 = fsub fast float %8051, %8052
  %8054 = fadd fast float %8053, 4.000000e+00
  %8055 = fmul fast float %8054, 0x3FC5555560000000
  %8056 = fmul fast float %8047, -3.000000e+00
  %8057 = fadd fast float %8046, %8029
  %8058 = fmul fast float %8057, 3.000000e+00
  %8059 = fadd fast float %8056, 1.000000e+00
  %8060 = fadd fast float %8059, %8058
  %8061 = fmul fast float %8047, 0x3FC5555560000000
  %8062 = fadd fast float %8028, 1.000000e+00
  %8063 = fsub fast float 1.000000e+00, %8034
  %8064 = fadd fast float %8063, %8033
  %8065 = fadd fast float %8064, %8038
  %8066 = fmul fast float %8065, 0x3FC5555560000000
  %8067 = fdiv fast float %8039, %8066
  %8068 = fsub fast float %8062, %8067
  %8069 = fsub fast float 1.000000e+00, %8028
  %8070 = fadd fast float %8044, %8031
  %8071 = fmul fast float %8070, 0x3FC5555560000000
  %8072 = fdiv fast float %8045, %8071
  %8073 = fadd fast float %8069, %8072
  %8074 = fadd fast float %8029, 1.000000e+00
  %8075 = fsub fast float 1.000000e+00, %8050
  %8076 = fadd fast float %8075, %8049
  %8077 = fadd fast float %8076, %8054
  %8078 = fmul fast float %8077, 0x3FC5555560000000
  %8079 = fdiv fast float %8055, %8078
  %8080 = fsub fast float %8074, %8079
  %8081 = fsub fast float 1.000000e+00, %8029
  %8082 = fadd fast float %8060, %8047
  %8083 = fmul fast float %8082, 0x3FC5555560000000
  %8084 = fdiv fast float %8061, %8083
  %8085 = fadd fast float %8084, %8081
  %8086 = fmul fast float %8068, %8022
  %8087 = fsub fast float %7944, %8086
  %8088 = fmul fast float %8073, %8022
  %8089 = fadd fast float %8088, %7944
  %8090 = fmul fast float %8085, %8023
  %8091 = fadd fast float %8090, %7945
  %8092 = fmul fast float %8080, %8023
  %8093 = fsub fast float %7945, %8092
  %8094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8087, float %8093, float %8011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8095 = extractvalue %dx.types.ResRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.ResRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.ResRet.f32 %8094, 2
  %8098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8089, float %8093, float %8011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8099 = extractvalue %dx.types.ResRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.ResRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.ResRet.f32 %8098, 2
  %8102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8087, float %8091, float %8011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8103 = extractvalue %dx.types.ResRet.f32 %8102, 0
  %8104 = extractvalue %dx.types.ResRet.f32 %8102, 1
  %8105 = extractvalue %dx.types.ResRet.f32 %8102, 2
  %8106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8089, float %8091, float %8011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8107 = extractvalue %dx.types.ResRet.f32 %8106, 0
  %8108 = extractvalue %dx.types.ResRet.f32 %8106, 1
  %8109 = extractvalue %dx.types.ResRet.f32 %8106, 2
  %8110 = fsub fast float %8103, %8095
  %8111 = fsub fast float %8104, %8096
  %8112 = fsub fast float %8105, %8097
  %8113 = fmul fast float %8110, %8083
  %8114 = fmul fast float %8111, %8083
  %8115 = fmul fast float %8112, %8083
  %8116 = fadd fast float %8113, %8095
  %8117 = fadd fast float %8114, %8096
  %8118 = fadd fast float %8115, %8097
  %8119 = fsub fast float %8107, %8099
  %8120 = fsub fast float %8108, %8100
  %8121 = fsub fast float %8109, %8101
  %8122 = fmul fast float %8119, %8083
  %8123 = fmul fast float %8120, %8083
  %8124 = fmul fast float %8121, %8083
  %8125 = fsub fast float %8099, %8116
  %8126 = fadd fast float %8125, %8122
  %8127 = fsub fast float %8100, %8117
  %8128 = fadd fast float %8127, %8123
  %8129 = fsub fast float %8101, %8118
  %8130 = fadd fast float %8129, %8124
  %8131 = fmul fast float %8126, %8071
  %8132 = fmul fast float %8128, %8071
  %8133 = fmul fast float %8130, %8071
  %8134 = fadd fast float %8131, %8116
  %8135 = fadd fast float %8132, %8117
  %8136 = fadd fast float %8133, %8118
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 1
  %8139 = fmul fast float %8134, %8138
  %8140 = fmul fast float %8135, %8138
  %8141 = fmul fast float %8136, %8138
  br label %8142

; <label>:8142                                    ; preds = %7974, %7931
  %8143 = phi float [ %8013, %7974 ], [ 1.000000e+00, %7931 ]
  %8144 = phi float [ %8014, %7974 ], [ 1.000000e+00, %7931 ]
  %8145 = phi float [ %8015, %7974 ], [ 1.000000e+00, %7931 ]
  %8146 = phi float [ %8139, %7974 ], [ 0.000000e+00, %7931 ]
  %8147 = phi float [ %8140, %7974 ], [ 0.000000e+00, %7931 ]
  %8148 = phi float [ %8141, %7974 ], [ 0.000000e+00, %7931 ]
  %8149 = fmul fast float %8146, %6485
  %8150 = fmul fast float %8147, %6485
  %8151 = fmul fast float %8148, %6485
  %8152 = fmul fast float %8143, %7938
  %8153 = call float @dx.op.dot3.f32(i32 55, float %8143, float %8144, float %8145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8154 = call float @dx.op.dot3.f32(i32 55, float %8149, float %8150, float %8151, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8155 = select i1 %235, float %8153, float %8143
  %8156 = select i1 %235, float %8153, float %8144
  %8157 = select i1 %235, float 1.000000e+00, float %8145
  %8158 = select i1 %235, float %8154, float %8149
  %8159 = select i1 %235, float 0.000000e+00, float %8150
  %8160 = select i1 %235, float 0.000000e+00, float %8151
  %8161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.i32 %8161, 3
  %8163 = and i32 %8162, 3
  %8164 = icmp ne i32 %8163, 0
  %8165 = and i32 %8162, 4
  %8166 = icmp ne i32 %8165, 0
  %8167 = and i1 %8164, %8166
  %8168 = and i1 %235, %8167
  br i1 %8168, label %8169, label %8175

; <label>:8169                                    ; preds = %8142
  %8170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8171 = extractvalue %dx.types.CBufRet.f32 %8170, 1
  %8172 = fadd fast float %8152, -1.000000e+00
  %8173 = fmul fast float %8171, %8172
  %8174 = fadd fast float %8173, 1.000000e+00
  br label %8175

; <label>:8175                                    ; preds = %8169, %8142
  %8176 = phi float [ %8174, %8169 ], [ %8152, %8142 ]
  %8177 = fadd fast float %7935, %7932
  %8178 = fmul fast float %8155, %8177
  %8179 = fadd fast float %8178, %8158
  %8180 = fadd fast float %7936, %7933
  %8181 = fmul fast float %8156, %8180
  %8182 = fadd fast float %8181, %8159
  %8183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8184 = extractvalue %dx.types.CBufRet.f32 %8183, 0
  br i1 %235, label %8185, label %8209

; <label>:8185                                    ; preds = %8175
  %8186 = fadd fast float %8179, %8182
  %8187 = fmul fast float %8184, %8186
  %8188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8189 = extractvalue %dx.types.CBufRet.f32 %8188, 3
  %8190 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %8191 = fsub fast float %6497, %6488
  %8192 = fsub fast float %8191, %6491
  %8193 = fadd fast float %8192, %6498
  %8194 = fsub fast float %8193, %8190
  %8195 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %8196 = fmul fast float %8194, %8195
  %8197 = call float @dx.op.unary.f32(i32 7, float %8196)  ; Saturate(value)
  %8198 = fsub fast float %8197, %8189
  %8199 = fmul fast float %8198, %8176
  %8200 = fadd fast float %8199, %8189
  %8201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8202 = extractvalue %dx.types.CBufRet.f32 %8201, 0
  %8203 = fsub fast float %8200, %8202
  %8204 = fmul fast float %8203, 1.000000e+01
  %8205 = call float @dx.op.unary.f32(i32 7, float %8204)  ; Saturate(value)
  %8206 = fmul fast float %8205, %6484
  %8207 = fadd fast float %8206, %6485
  %8208 = fmul fast float %8207, %8200
  br label %8232

; <label>:8209                                    ; preds = %8175
  %8210 = fadd fast float %7937, %7934
  %8211 = fmul fast float %8157, %8210
  %8212 = fadd fast float %8211, %8160
  %8213 = fmul fast float %8184, %8179
  %8214 = fmul fast float %8184, %8182
  %8215 = fmul fast float %8184, %8212
  %8216 = call float @dx.op.binary.f32(i32 35, float %8213, float %8214)  ; FMax(a,b)
  %8217 = call float @dx.op.binary.f32(i32 35, float %8216, float %8215)  ; FMax(a,b)
  %8218 = call float @dx.op.binary.f32(i32 35, float %8217, float %6485)  ; FMax(a,b)
  %8219 = fcmp fast ugt float %8218, 0x3F10000000000000
  br i1 %8219, label %8221, label %8220

; <label>:8220                                    ; preds = %8209
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8221

; <label>:8221                                    ; preds = %8220, %8209
  %8222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %8223 = extractvalue %dx.types.ResRet.i32 %8222, 0
  %8224 = and i32 %8223, 32
  %8225 = icmp eq i32 %8224, 0
  br i1 %8225, label %8232, label %8226

; <label>:8226                                    ; preds = %8221
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 0
  %8229 = fmul fast float %8228, 0x3FE99999A0000000
  %8230 = fadd fast float %8228, %8213
  %8231 = fadd fast float %8229, %8215
  br label %8232

; <label>:8232                                    ; preds = %8226, %8221, %8185
  %8233 = phi float [ %8187, %8185 ], [ %8230, %8226 ], [ %8213, %8221 ]
  %8234 = phi float [ %8208, %8185 ], [ %8214, %8226 ], [ %8214, %8221 ]
  %8235 = phi float [ %8207, %8185 ], [ %8231, %8226 ], [ %8215, %8221 ]
  %8236 = phi float [ %8207, %8185 ], [ %6485, %8226 ], [ %6485, %8221 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8237 = call float @dx.op.binary.f32(i32 36, float %8233, float 3.225500e+04)  ; FMin(a,b)
  %8238 = call float @dx.op.binary.f32(i32 36, float %8234, float 3.225500e+04)  ; FMin(a,b)
  %8239 = call float @dx.op.binary.f32(i32 36, float %8235, float 3.225500e+04)  ; FMin(a,b)
  %8240 = call float @dx.op.binary.f32(i32 36, float %8236, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8237)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8238)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8239)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!69}
!dx.entryPoints = !{!70}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !58, !61}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!29 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!30 = !{i32 23, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !31}
!31 = !{i32 0, i32 5}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !43}
!43 = !{i32 0, i32 14}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!46 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!52 = !{i32 43, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !43}
!56 = !{i32 47, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!58 = !{!59, !60}
!59 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!60 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!61 = !{!62, !63, !64, !65, !66, !67, !68}
!62 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!63 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!64 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!65 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!66 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!67 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!68 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!69 = !{[31 x i32] [i32 29, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15]}
!70 = !{void ()* @ps_main, !"ps_main", !71, !4, !89}
!71 = !{!72, !87, null}
!72 = !{!73, !76, !78, !80, !81, !82, !83, !84, !86}
!73 = !{i32 0, !"SV_Position", i8 9, i8 3, !74, i8 4, i32 1, i8 4, i32 0, i8 0, !75}
!74 = !{i32 0}
!75 = !{i32 3, i32 15}
!76 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !74, i8 2, i32 1, i8 2, i32 1, i8 0, !77}
!77 = !{i32 3, i32 3}
!78 = !{i32 2, !"NORMAL", i8 9, i8 0, !74, i8 2, i32 1, i8 3, i32 2, i8 0, !79}
!79 = !{i32 3, i32 7}
!80 = !{i32 3, !"TANGENT", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 3, i8 0, !75}
!81 = !{i32 4, !"SH_RED", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 4, i8 0, !75}
!82 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 5, i8 0, !75}
!83 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !74, i8 2, i32 1, i8 4, i32 6, i8 0, !75}
!84 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !74, i8 1, i32 1, i8 1, i32 7, i8 0, !85}
!85 = !{i32 3, i32 1}
!86 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !74, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!87 = !{!88}
!88 = !{i32 0, !"SV_Target", i8 9, i8 16, !74, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!89 = !{i32 0, i64 16}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"int", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !109}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = !{!113, !113, i64 0}
!113 = !{!"float", !100, i64 0}
!114 = distinct !{!114, !92}
!115 = distinct !{!115, !92}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = !{!129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!129 = distinct !{!129, !130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!130 = distinct !{!130, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!131 = distinct !{!131, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!132 = distinct !{!132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!133 = distinct !{!133, !132, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!139 = distinct !{!139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!140 = distinct !{!140, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!141 = distinct !{!141, !139, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!142 = distinct !{!142, !143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!143 = distinct !{!143, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"\01?sort@@YAXAIAM00@Z: %c"}
!146 = distinct !{!146, !"\01?sort@@YAXAIAM00@Z"}
!147 = !{!148, !149, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!148 = distinct !{!148, !146, !"\01?sort@@YAXAIAM00@Z: %a"}
!149 = distinct !{!149, !146, !"\01?sort@@YAXAIAM00@Z: %b"}
!150 = !{!149}
!151 = !{!148, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!152 = !{!148}
!153 = !{!149, !145, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!154 = !{!155}
!155 = distinct !{!155, !156, !"\01?sort@@YAXAIAM00@Z: %c"}
!156 = distinct !{!156, !"\01?sort@@YAXAIAM00@Z"}
!157 = !{!158, !159, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!158 = distinct !{!158, !156, !"\01?sort@@YAXAIAM00@Z: %a"}
!159 = distinct !{!159, !156, !"\01?sort@@YAXAIAM00@Z: %b"}
!160 = !{!159}
!161 = !{!158, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!162 = !{!158}
!163 = !{!159, !155, !129, !131, !133, !134, !136, !137, !138, !140, !141, !142}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 2}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}

