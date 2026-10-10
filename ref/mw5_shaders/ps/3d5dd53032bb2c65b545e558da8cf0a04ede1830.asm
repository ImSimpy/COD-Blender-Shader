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
; shader hash: 00550a3300fb340bd5c753b85414e283
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
  %145 = fmul fast float %94, 5.000000e-01
  %146 = fmul fast float %95, 5.000000e-01
  %147 = fptosi float %145 to i32
  %148 = fptosi float %146 to i32
  %149 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %147, i32 %148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = lshr i32 %150, 18
  %152 = uitofp i32 %151 to float
  %153 = fmul fast float %152, 0x3F4C00EBA0000000
  %154 = call float @dx.op.unary.f32(i32 21, float %153)  ; Exp(value)
  %155 = fadd fast float %154, -1.000000e+00
  %156 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %157 = extractvalue %dx.types.Dimensions %156, 0
  %158 = sitofp i32 %157 to float
  %159 = extractvalue %dx.types.Dimensions %156, 1
  %160 = sitofp i32 %159 to float
  %161 = fcmp fast oge float %145, %158
  %162 = fcmp fast oge float %146, %160
  %163 = or i1 %161, %162
  %164 = select i1 %163, float 0x4197782600000000, float %155
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %168 = fmul fast float %166, %94
  %169 = fmul fast float %167, %95
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = and i32 %171, 114688
  %173 = icmp ne i32 %172, 0
  %174 = select i1 %173, float %168, float 0.000000e+00
  %175 = select i1 %173, float %169, float 0.000000e+00
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %51, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fmul fast float %177, 2.550000e+02
  %179 = fptoui float %178 to i32
  %180 = select i1 %173, i32 %179, i32 0
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 3
  %184 = and i32 %183, 3
  %185 = icmp ne i32 %184, 0
  %186 = and i32 %183, 4
  %187 = icmp ne i32 %186, 0
  %188 = and i1 %185, %187
  br i1 %188, label %189, label %200

; <label>:189                                     ; preds = %0
  %190 = extractvalue %dx.types.CBufRet.f32 %181, 3
  %191 = fmul fast float %190, %95
  %192 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %193 = fmul fast float %192, %94
  %194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %50, float %193, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = fsub fast float 1.000000e+00, %195
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 0
  %199 = fcmp fast olt float %196, %198
  br label %203

; <label>:200                                     ; preds = %0
  %201 = icmp eq i32 %186, 0
  %202 = and i1 %185, %201
  br label %203

; <label>:203                                     ; preds = %200, %189
  %204 = phi i1 [ %199, %189 ], [ %202, %200 ]
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 2
  %207 = fmul fast float %206, 0x3FE3C6EF40000000
  %208 = frem fast float %94, 2.560000e+02
  %209 = frem fast float %95, 2.560000e+02
  %210 = fptoui float %208 to i32
  %211 = fptoui float %209 to i32
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 1
  %215 = extractvalue %dx.types.ResRet.f32 %212, 2
  %216 = fadd fast float %213, %207
  %217 = fadd fast float %214, %207
  %218 = fadd fast float %215, %207
  %219 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %220 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %221 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = shl i32 %223, 4
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %223, 7
  %228 = and i32 %227, 32752
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = lshr i32 %223, 22
  %231 = shl nuw nsw i32 %230, 5
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = lshr i32 %234, 8
  %239 = and i32 %238, 255
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F70101020000000
  %242 = lshr i32 %234, 16
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, 0x3F70101020000000
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = fmul fast float %255, 0x3F50624DE0000000
  %259 = fmul fast float %257, 0x3F50624DE0000000
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 2
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %271, label %264

; <label>:264                                     ; preds = %203
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = add i32 %266, 0
  %268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %268, %dx.types.Handle %91, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 3
  br label %271

; <label>:271                                     ; preds = %264, %203
  %272 = phi float [ 1.000000e+00, %203 ], [ %270, %264 ]
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = or i32 %276, %274
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %892, label %279

; <label>:279                                     ; preds = %271
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = lshr i32 %281, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = fmul fast float %283, 0x3F50624DE0000000
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = lshr i32 %286, 16
  %288 = and i32 %287, 255
  %289 = lshr i32 %286, 24
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = and i32 %291, 65535
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %291, 16
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = lshr i32 %297, 22
  %299 = shl nuw nsw i32 %298, 5
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = shl i32 %297, 4
  %302 = and i32 %301, 32752
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = lshr i32 %297, 7
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 3
  %309 = fmul fast float %308, 1.000000e+03
  %310 = fmul fast float %258, %309
  %311 = call float @dx.op.unary.f32(i32 22, float %310)  ; Frc(value)
  %312 = fadd fast float %311, %249
  %313 = fmul fast float %259, %309
  %314 = call float @dx.op.unary.f32(i32 22, float %313)  ; Frc(value)
  %315 = fadd fast float %314, %251
  %316 = fmul fast float %284, %309
  %317 = call float @dx.op.unary.f32(i32 22, float %316)  ; Frc(value)
  %318 = fmul fast float %317, 0x401921FB60000000
  %319 = fadd fast float %318, %300
  %320 = call float @dx.op.unary.f32(i32 13, float %319)  ; Sin(value)
  %321 = call float @dx.op.unary.f32(i32 12, float %319)  ; Cos(value)
  %322 = fsub fast float -0.000000e+00, %320
  %323 = fadd fast float %77, -5.000000e-01
  %324 = fadd fast float %78, -5.000000e-01
  %325 = fmul fast float %293, %323
  %326 = fmul fast float %295, %324
  %327 = fadd fast float %325, 5.000000e-01
  %328 = fadd fast float %326, 5.000000e-01
  %329 = fmul fast float %303, %327
  %330 = fmul fast float %306, %328
  %331 = fmul fast float %321, %329
  %332 = call float @dx.op.tertiary.f32(i32 46, float %322, float %330, float %331)  ; FMad(a,b,c)
  %333 = fmul fast float %320, %329
  %334 = call float @dx.op.tertiary.f32(i32 46, float %321, float %330, float %333)  ; FMad(a,b,c)
  %335 = fadd fast float %312, %332
  %336 = fadd fast float %315, %334
  %337 = icmp ugt i32 %288, 1
  %338 = icmp ugt i32 %286, 33554431
  %339 = or i1 %338, %337
  br i1 %339, label %340, label %364

; <label>:340                                     ; preds = %279
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = lshr i32 %342, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = fmul fast float %308, %344
  %346 = call float @dx.op.unary.f32(i32 22, float %345)  ; Frc(value)
  %347 = mul nuw nsw i32 %288, %289
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %346, %348
  %350 = call float @dx.op.unary.f32(i32 27, float %349)  ; Round_ni(value)
  %351 = fptoui float %350 to i32
  %352 = urem i32 %351, %288
  %353 = udiv i32 %351, %289
  %354 = call float @dx.op.unary.f32(i32 22, float %335)  ; Frc(value)
  %355 = call float @dx.op.unary.f32(i32 22, float %336)  ; Frc(value)
  %356 = uitofp i32 %352 to float
  %357 = uitofp i32 %353 to float
  %358 = fadd fast float %354, %356
  %359 = fadd fast float %355, %357
  %360 = uitofp i32 %288 to float
  %361 = uitofp i32 %289 to float
  %362 = fdiv fast float %358, %360
  %363 = fdiv fast float %359, %361
  br label %364

; <label>:364                                     ; preds = %340, %279
  %365 = phi float [ %362, %340 ], [ %335, %279 ]
  %366 = phi float [ %363, %340 ], [ %336, %279 ]
  %367 = and i32 %274, 256
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %413, label %369

; <label>:369                                     ; preds = %364
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = add i32 %371, 0
  %373 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %372, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %374 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %373, %dx.types.Handle %91, float %365, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %375 = extractvalue %dx.types.ResRet.f32 %374, 0
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = shl i32 %377, 4
  %379 = and i32 %378, 32752
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %377, 7
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = fsub fast float 1.000000e+00, %272
  %385 = call float @dx.op.binary.f32(i32 35, float %384, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %386 = bitcast float %272 to i32
  %387 = sitofp i32 %386 to float
  %388 = fadd fast float %387, 0xC1CFBF8940000000
  %389 = fmul fast float %383, %388
  %390 = fadd fast float %389, 0x41CFBF8940000000
  %391 = fptosi float %390 to i32
  %392 = bitcast i32 %391 to float
  %393 = bitcast float %385 to i32
  %394 = sitofp i32 %393 to float
  %395 = fadd fast float %394, 0xC1CFBF8940000000
  %396 = fmul fast float %395, %383
  %397 = fadd fast float %396, 0x41CFBF8940000000
  %398 = fptosi float %397 to i32
  %399 = bitcast i32 %398 to float
  %400 = fmul fast float %392, %380
  %401 = fmul fast float %399, %380
  %402 = fsub fast float %385, %400
  %403 = fadd fast float %401, %385
  %404 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %405 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  %406 = fsub fast float %375, %404
  %407 = fsub fast float %405, %404
  %408 = bitcast float %407 to i32
  %409 = sub nsw i32 2129859010, %408
  %410 = bitcast i32 %409 to float
  %411 = fmul fast float %410, %406
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  br label %413

; <label>:413                                     ; preds = %369, %364
  %414 = phi float [ %412, %369 ], [ %272, %364 ]
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 128
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %434, label %419

; <label>:419                                     ; preds = %413
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = add i32 %421, 0
  %423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %423, %dx.types.Handle %91, float %365, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 524288
  %429 = icmp ne i32 %428, 0
  %430 = fcmp fast ogt float %425, 0x3FE0101020000000
  %431 = select i1 %430, float 1.000000e+00, float 0.000000e+00
  %432 = select i1 %429, float %431, float %425
  %433 = fmul fast float %432, %414
  br label %434

; <label>:434                                     ; preds = %419, %413
  %435 = phi float [ %433, %419 ], [ %414, %413 ]
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 16
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %633, label %440

; <label>:440                                     ; preds = %434
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = add i32 %444, 0
  %446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %446, %dx.types.Handle %90, float %365, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = extractvalue %dx.types.ResRet.f32 %447, 3
  %452 = and i32 %442, 255
  %453 = uitofp i32 %452 to float
  %454 = lshr i32 %442, 8
  %455 = and i32 %454, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %451, %453
  %458 = fadd fast float %457, %456
  %459 = fmul fast float %458, 0x3F70101000000000
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 512
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %471, label %464

; <label>:464                                     ; preds = %440
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = add i32 %466, 0
  %468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %468, %dx.types.Handle %91, float %365, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  br label %471

; <label>:471                                     ; preds = %464, %440
  %472 = phi float [ %470, %464 ], [ 1.000000e+00, %440 ]
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 33554432
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %580, label %477

; <label>:477                                     ; preds = %471
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 65535
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %479, 16
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %485, 65535
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = lshr i32 %489, 24
  %491 = uitofp i32 %490 to float
  %492 = fmul fast float %491, 0x3F70101020000000
  %493 = and i32 %489, 255
  %494 = uitofp i32 %493 to float
  %495 = fmul fast float %494, 0x3F70101020000000
  %496 = lshr i32 %489, 8
  %497 = and i32 %496, 255
  %498 = uitofp i32 %497 to float
  %499 = fmul fast float %498, 0x3F70101020000000
  %500 = lshr i32 %489, 16
  %501 = and i32 %500, 255
  %502 = uitofp i32 %501 to float
  %503 = fmul fast float %502, 0x3F70101020000000
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = lshr i32 %505, 24
  %507 = uitofp i32 %506 to float
  %508 = fmul fast float %507, 0x3F70101020000000
  %509 = and i32 %505, 255
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %510, 0x3F70101020000000
  %512 = lshr i32 %505, 8
  %513 = and i32 %512, 255
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %514, 0x3F70101020000000
  %516 = lshr i32 %505, 16
  %517 = and i32 %516, 255
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %518, 0x3F70101020000000
  %520 = bitcast float %448 to i32
  %521 = ashr i32 %520, 1
  %522 = sub nsw i32 1597463174, %521
  %523 = bitcast i32 %522 to float
  %524 = fmul fast float %448, 5.000000e-01
  %525 = fmul fast float %523, %523
  %526 = fmul fast float %525, %524
  %527 = fsub fast float 1.500000e+00, %526
  %528 = fmul fast float %523, %448
  %529 = fmul fast float %528, %527
  %530 = bitcast float %449 to i32
  %531 = ashr i32 %530, 1
  %532 = sub nsw i32 1597463174, %531
  %533 = bitcast i32 %532 to float
  %534 = fmul fast float %449, 5.000000e-01
  %535 = fmul fast float %533, %533
  %536 = fmul fast float %535, %534
  %537 = fsub fast float 1.500000e+00, %536
  %538 = fmul fast float %533, %449
  %539 = fmul fast float %538, %537
  %540 = bitcast float %450 to i32
  %541 = ashr i32 %540, 1
  %542 = sub nsw i32 1597463174, %541
  %543 = bitcast i32 %542 to float
  %544 = fmul fast float %450, 5.000000e-01
  %545 = fmul fast float %543, %543
  %546 = fmul fast float %545, %544
  %547 = fsub fast float 1.500000e+00, %546
  %548 = fmul fast float %543, %450
  %549 = fmul fast float %548, %547
  %550 = fsub fast float %529, %511
  %551 = fsub fast float %539, %515
  %552 = fsub fast float %549, %519
  %553 = fmul fast float %550, %481
  %554 = fmul fast float %551, %483
  %555 = fmul fast float %552, %487
  %556 = fadd fast float %553, %495
  %557 = fadd fast float %554, %499
  %558 = fadd fast float %555, %503
  %559 = call float @dx.op.unary.f32(i32 7, float %556)  ; Saturate(value)
  %560 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %561 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %562 = fmul fast float %559, %559
  %563 = fmul fast float %560, %560
  %564 = fmul fast float %561, %561
  %565 = fsub fast float %562, %448
  %566 = fsub fast float %563, %449
  %567 = fsub fast float %564, %450
  %568 = fmul fast float %565, %472
  %569 = fmul fast float %566, %472
  %570 = fmul fast float %567, %472
  %571 = fadd fast float %568, %448
  %572 = fadd fast float %569, %449
  %573 = fadd fast float %570, %450
  %574 = fadd fast float %492, %459
  %575 = fsub fast float %574, %508
  %576 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  %577 = fsub fast float %576, %459
  %578 = fmul fast float %577, %472
  %579 = fadd fast float %578, %459
  br label %633

; <label>:580                                     ; preds = %471
  %581 = and i32 %474, 134217728
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %617, label %583

; <label>:583                                     ; preds = %580
  %584 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %585 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %586 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %587 = fadd fast float %584, -5.000000e-01
  %588 = fadd fast float %585, -5.000000e-01
  %589 = fadd fast float %586, -5.000000e-01
  %590 = fmul fast float %587, %472
  %591 = fmul fast float %588, %472
  %592 = fmul fast float %589, %472
  %593 = fadd fast float %590, 5.000000e-01
  %594 = fadd fast float %591, 5.000000e-01
  %595 = fadd fast float %592, 5.000000e-01
  %596 = call float @dx.op.unary.f32(i32 24, float %448)  ; Sqrt(value)
  %597 = call float @dx.op.unary.f32(i32 24, float %449)  ; Sqrt(value)
  %598 = call float @dx.op.unary.f32(i32 24, float %450)  ; Sqrt(value)
  %599 = fmul fast float %593, 2.000000e+00
  %600 = fsub fast float 1.000000e+00, %599
  %601 = fmul fast float %600, %596
  %602 = fadd fast float %601, %599
  %603 = fmul fast float %602, %596
  %604 = fmul fast float %594, 2.000000e+00
  %605 = fsub fast float 1.000000e+00, %604
  %606 = fmul fast float %605, %597
  %607 = fadd fast float %606, %604
  %608 = fmul fast float %607, %597
  %609 = fmul fast float %595, 2.000000e+00
  %610 = fsub fast float 1.000000e+00, %609
  %611 = fmul fast float %610, %598
  %612 = fadd fast float %611, %609
  %613 = fmul fast float %612, %598
  %614 = fmul fast float %603, %603
  %615 = fmul fast float %608, %608
  %616 = fmul fast float %613, %613
  br label %633

; <label>:617                                     ; preds = %580
  %618 = fmul fast float %237, %237
  %619 = fmul fast float %241, %241
  %620 = fmul fast float %245, %245
  %621 = fadd fast float %618, -1.000000e+00
  %622 = fadd fast float %619, -1.000000e+00
  %623 = fadd fast float %620, -1.000000e+00
  %624 = fmul fast float %472, %621
  %625 = fmul fast float %472, %622
  %626 = fmul fast float %472, %623
  %627 = fadd fast float %624, 1.000000e+00
  %628 = fadd fast float %625, 1.000000e+00
  %629 = fadd fast float %626, 1.000000e+00
  %630 = fmul fast float %627, %448
  %631 = fmul fast float %628, %449
  %632 = fmul fast float %629, %450
  br label %633

; <label>:633                                     ; preds = %617, %583, %477, %434
  %634 = phi float [ %579, %477 ], [ %459, %583 ], [ %459, %617 ], [ 0x3FA23C0BE0000000, %434 ]
  %635 = phi float [ %571, %477 ], [ %614, %583 ], [ %630, %617 ], [ 1.000000e+00, %434 ]
  %636 = phi float [ %572, %477 ], [ %615, %583 ], [ %631, %617 ], [ 1.000000e+00, %434 ]
  %637 = phi float [ %573, %477 ], [ %616, %583 ], [ %632, %617 ], [ 1.000000e+00, %434 ]
  %638 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.i32 %638, 1
  %640 = and i32 %639, 1
  %641 = icmp ne i32 %640, 0
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 32
  %645 = icmp ne i32 %644, 0
  %646 = and i1 %641, %645
  %647 = select i1 %646, float 1.000000e+00, float %635
  %648 = select i1 %646, float 0x3FD3333340000000, float %636
  %649 = select i1 %646, float 0x3FD3333340000000, float %637
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = and i32 %651, 32
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %723, label %654

; <label>:654                                     ; preds = %633
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = add i32 %658, 0
  %660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %660, %dx.types.Handle %90, float %365, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = extractvalue %dx.types.ResRet.f32 %661, 3
  %666 = and i32 %656, 255
  %667 = uitofp i32 %666 to float
  %668 = lshr i32 %656, 8
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = lshr i32 %656, 16
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F70101000000000
  %675 = fmul fast float %662, %667
  %676 = fadd fast float %675, %670
  %677 = fmul fast float %676, 0x3F70101000000000
  %678 = fadd fast float %663, -5.000000e-01
  %679 = fadd fast float %665, -5.000000e-01
  %680 = fmul fast float %678, %674
  %681 = fmul fast float %679, %674
  %682 = fadd fast float %680, 5.000000e-01
  %683 = fadd fast float %681, 5.000000e-01
  %684 = fmul fast float %682, 2.000000e+00
  %685 = fadd fast float %684, -1.000000e+00
  %686 = fmul fast float %683, 2.000000e+00
  %687 = fadd fast float %686, -1.000000e+00
  %688 = fadd fast float %685, %687
  %689 = fmul fast float %688, 5.000000e-01
  %690 = fsub fast float %685, %687
  %691 = fmul fast float %690, 5.000000e-01
  %692 = call float @dx.op.unary.f32(i32 6, float %689)  ; FAbs(value)
  %693 = fsub fast float 1.000000e+00, %692
  %694 = call float @dx.op.unary.f32(i32 6, float %691)  ; FAbs(value)
  %695 = fsub fast float %693, %694
  %696 = call float @dx.op.dot3.f32(i32 55, float %689, float %691, float %695, float %689, float %691, float %695)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call float @dx.op.unary.f32(i32 25, float %696)  ; Rsqrt(value)
  %698 = fmul fast float %689, %697
  %699 = fmul fast float %691, %697
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 67108864
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %719, label %704

; <label>:704                                     ; preds = %654
  %705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.i32 %705, 0
  %707 = and i32 %706, 65535
  %708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %707)  ; LegacyF16ToF32(value)
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 65535
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = lshr i32 %706, 16
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = fsub fast float %677, %714
  %716 = fmul fast float %715, %708
  %717 = fadd fast float %716, %712
  %718 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  br label %719

; <label>:719                                     ; preds = %704, %654
  %720 = phi float [ %718, %704 ], [ %677, %654 ]
  %721 = call float @dx.op.dot2.f32(i32 54, float %698, float %699, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %722 = call float @dx.op.dot2.f32(i32 54, float %698, float %699, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %723

; <label>:723                                     ; preds = %719, %633
  %724 = phi float [ %720, %719 ], [ 0x3FD6666660000000, %633 ]
  %725 = phi float [ %721, %719 ], [ 0.000000e+00, %633 ]
  %726 = phi float [ %722, %719 ], [ 0.000000e+00, %633 ]
  %727 = phi float [ %664, %719 ], [ 1.000000e+00, %633 ]
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = lshr i32 %729, 22
  %731 = shl nuw nsw i32 %730, 5
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 64
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %769, label %737

; <label>:737                                     ; preds = %723
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = add i32 %739, 0
  %741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 131072
  %745 = icmp eq i32 %744, 0
  %746 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %741, %dx.types.Handle %90, float %365, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = fmul fast float %747, %226
  %751 = fmul fast float %748, %229
  %752 = fmul fast float %749, %232
  br i1 %745, label %759, label %753

; <label>:753                                     ; preds = %737
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %756 = fmul fast float %755, %750
  %757 = fmul fast float %755, %751
  %758 = fmul fast float %755, %752
  br label %759

; <label>:759                                     ; preds = %753, %737
  %760 = phi float [ %756, %753 ], [ %750, %737 ]
  %761 = phi float [ %757, %753 ], [ %751, %737 ]
  %762 = phi float [ %758, %753 ], [ %752, %737 ]
  %763 = fmul fast float %760, %732
  %764 = select i1 %204, float %763, float %760
  %765 = call float @dx.op.dot3.f32(i32 55, float %764, float %761, float %762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = select i1 %204, float 0.000000e+00, float %760
  %767 = select i1 %204, float %765, float %761
  %768 = select i1 %204, float 0.000000e+00, float %762
  br label %769

; <label>:769                                     ; preds = %759, %723
  %770 = phi float [ %766, %759 ], [ 0.000000e+00, %723 ]
  %771 = phi float [ %767, %759 ], [ 0.000000e+00, %723 ]
  %772 = phi float [ %768, %759 ], [ 0.000000e+00, %723 ]
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 1024
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %805, label %777

; <label>:777                                     ; preds = %769
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 255
  %781 = uitofp i32 %780 to float
  %782 = fmul fast float %781, 0x3F70101020000000
  %783 = lshr i32 %779, 8
  %784 = and i32 %783, 255
  %785 = uitofp i32 %784 to float
  %786 = fmul fast float %785, 0x3F70101020000000
  %787 = lshr i32 %779, 16
  %788 = and i32 %787, 255
  %789 = uitofp i32 %788 to float
  %790 = fmul fast float %789, 0x3F70101020000000
  %791 = fmul fast float %782, %782
  %792 = fmul fast float %786, %786
  %793 = fmul fast float %790, %790
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = add i32 %795, 0
  %797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %796, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %798 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %797, %dx.types.Handle %91, float %365, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = fmul fast float %791, %799
  %803 = fmul fast float %792, %800
  %804 = fmul fast float %793, %801
  br label %805

; <label>:805                                     ; preds = %777, %769
  %806 = phi float [ %802, %777 ], [ 0.000000e+00, %769 ]
  %807 = phi float [ %803, %777 ], [ 0.000000e+00, %769 ]
  %808 = phi float [ %804, %777 ], [ 0.000000e+00, %769 ]
  %809 = fcmp fast ogt float %806, 0.000000e+00
  %810 = fcmp fast ogt float %807, 0.000000e+00
  %811 = fcmp fast ogt float %808, 0.000000e+00
  %812 = call float @dx.op.unary.f32(i32 23, float %806)  ; Log(value)
  %813 = call float @dx.op.unary.f32(i32 23, float %807)  ; Log(value)
  %814 = call float @dx.op.unary.f32(i32 23, float %808)  ; Log(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = lshr i32 %816, 7
  %818 = and i32 %817, 32752
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = fmul fast float %812, 0xBFE62E4300000000
  %821 = fmul fast float %820, %819
  %822 = fmul fast float %813, 0xBFE62E4300000000
  %823 = fmul fast float %822, %819
  %824 = fmul fast float %814, 0xBFE62E4300000000
  %825 = fmul fast float %824, %819
  %826 = select i1 %809, float %821, float 1.270000e+02
  %827 = select i1 %810, float %823, float 1.270000e+02
  %828 = select i1 %811, float %825, float 1.270000e+02
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 10240
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %875, label %833

; <label>:833                                     ; preds = %805
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = add i32 %835, 0
  %837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %838 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %837, %dx.types.Handle %91, float %365, float %366, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 1
  %840 = extractvalue %dx.types.ResRet.f32 %838, 3
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 1048576
  %844 = icmp ne i32 %843, 0
  %845 = and i32 %842, 8192
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %861, label %847

; <label>:847                                     ; preds = %833
  %848 = extractvalue %dx.types.ResRet.f32 %838, 2
  %849 = select i1 %844, float %848, float %839
  %850 = extractvalue %dx.types.ResRet.f32 %838, 0
  %851 = select i1 %844, float %850, float %839
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = lshr i32 %853, 16
  %855 = and i32 %854, 255
  %856 = uitofp i32 %855 to float
  %857 = fmul fast float %856, 0x3F80101020000000
  %858 = fmul fast float %857, %851
  %859 = fmul fast float %857, %839
  %860 = fmul fast float %857, %849
  br label %861

; <label>:861                                     ; preds = %847, %833
  %862 = phi float [ %858, %847 ], [ 0.000000e+00, %833 ]
  %863 = phi float [ %859, %847 ], [ 0.000000e+00, %833 ]
  %864 = phi float [ %860, %847 ], [ 0.000000e+00, %833 ]
  %865 = and i32 %842, 2048
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %875, label %867

; <label>:867                                     ; preds = %861
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = shl i32 %869, 4
  %871 = and i32 %870, 32752
  %872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %871)  ; LegacyF16ToF32(value)
  %873 = fmul fast float %872, %840
  %874 = call float @dx.op.binary.f32(i32 35, float %873, float 0x3F70101020000000)  ; FMax(a,b)
  br label %875

; <label>:875                                     ; preds = %867, %861, %805
  %876 = phi float [ %862, %867 ], [ %862, %861 ], [ 0.000000e+00, %805 ]
  %877 = phi float [ %863, %867 ], [ %863, %861 ], [ 0.000000e+00, %805 ]
  %878 = phi float [ %864, %867 ], [ %864, %861 ], [ 0.000000e+00, %805 ]
  %879 = phi float [ %874, %867 ], [ 0x3F70101020000000, %861 ], [ 0x3F70101020000000, %805 ]
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 255
  %883 = uitofp i32 %882 to float
  %884 = lshr i32 %881, 8
  %885 = and i32 %884, 255
  %886 = uitofp i32 %885 to float
  %887 = call float @dx.op.dot3.f32(i32 55, float %647, float %648, float %649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = fmul fast float %886, %887
  %889 = fadd fast float %888, %883
  %890 = fmul fast float %889, 0x3F70101020000000
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  br label %892

; <label>:892                                     ; preds = %875, %271
  %893 = phi float [ 0.000000e+00, %271 ], [ %725, %875 ]
  %894 = phi float [ 0.000000e+00, %271 ], [ %726, %875 ]
  %895 = phi float [ 0.000000e+00, %271 ], [ %826, %875 ]
  %896 = phi float [ 0.000000e+00, %271 ], [ %827, %875 ]
  %897 = phi float [ 0.000000e+00, %271 ], [ %828, %875 ]
  %898 = phi float [ 0.000000e+00, %271 ], [ %647, %875 ]
  %899 = phi float [ 0.000000e+00, %271 ], [ %648, %875 ]
  %900 = phi float [ 0.000000e+00, %271 ], [ %649, %875 ]
  %901 = phi float [ 0.000000e+00, %271 ], [ %770, %875 ]
  %902 = phi float [ 0.000000e+00, %271 ], [ %771, %875 ]
  %903 = phi float [ 0.000000e+00, %271 ], [ %772, %875 ]
  %904 = phi float [ 0.000000e+00, %271 ], [ %876, %875 ]
  %905 = phi float [ 0.000000e+00, %271 ], [ %877, %875 ]
  %906 = phi float [ 0.000000e+00, %271 ], [ %878, %875 ]
  %907 = phi float [ 0.000000e+00, %271 ], [ %634, %875 ]
  %908 = phi float [ 0.000000e+00, %271 ], [ %435, %875 ]
  %909 = phi float [ 0.000000e+00, %271 ], [ %724, %875 ]
  %910 = phi float [ 0.000000e+00, %271 ], [ %727, %875 ]
  %911 = phi float [ 0.000000e+00, %271 ], [ %879, %875 ]
  %912 = phi float [ 0.000000e+00, %271 ], [ %891, %875 ]
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = call float @dx.op.dot2.f32(i32 54, float %893, float %894, float %893, float %894)  ; Dot2(ax,ay,bx,by)
  %916 = fmul fast float %915, 0x3FE3333340000000
  %917 = fsub fast float 1.000000e+00, %916
  %918 = call float @dx.op.dot3.f32(i32 55, float %893, float %894, float %917, float %893, float %894, float %917)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = call float @dx.op.unary.f32(i32 25, float %918)  ; Rsqrt(value)
  %920 = fmul fast float %919, %893
  %921 = fmul fast float %919, %894
  %922 = fmul fast float %917, %919
  %923 = fmul fast float %922, %97
  %924 = fmul fast float %922, %98
  %925 = fmul fast float %922, %99
  %926 = fmul fast float %920, %70
  %927 = fmul fast float %920, %71
  %928 = fmul fast float %920, %72
  %929 = fmul fast float %102, %73
  %930 = fmul fast float %929, %921
  %931 = fmul fast float %105, %73
  %932 = fmul fast float %931, %921
  %933 = fmul fast float %108, %73
  %934 = fmul fast float %933, %921
  %935 = fadd fast float %930, %926
  %936 = fmul fast float %935, %96
  %937 = fadd fast float %936, %923
  %938 = fadd fast float %932, %927
  %939 = fmul fast float %938, %96
  %940 = fadd fast float %939, %924
  %941 = fadd fast float %934, %928
  %942 = fmul fast float %941, %96
  %943 = fadd fast float %942, %925
  %944 = call float @dx.op.dot3.f32(i32 55, float %937, float %940, float %943, float %937, float %940, float %943)  ; Dot3(ax,ay,az,bx,by,bz)
  %945 = call float @dx.op.unary.f32(i32 25, float %944)  ; Rsqrt(value)
  %946 = fmul fast float %937, %945
  %947 = fmul fast float %940, %945
  %948 = fmul fast float %943, %945
  %949 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %950 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %951 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %952 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %953 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %954 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %955 = fadd fast float %949, %142
  %956 = fadd fast float %950, %143
  %957 = fadd fast float %951, %144
  %958 = fadd fast float %952, %142
  %959 = fadd fast float %953, %143
  %960 = fadd fast float %954, %144
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %968 = fmul fast float %962, %94
  %969 = fmul fast float %968, %966
  %970 = fmul fast float %963, %95
  %971 = fmul fast float %970, %967
  %972 = fptoui float %969 to i32
  %973 = fptoui float %971 to i32
  %974 = fadd fast float %962, -1.000000e+00
  %975 = fadd fast float %963, -1.000000e+00
  %976 = fptoui float %974 to i32
  %977 = fptoui float %975 to i32
  %978 = call i32 @dx.op.binary.i32(i32 40, i32 %972, i32 %976)  ; UMin(a,b)
  %979 = call i32 @dx.op.binary.i32(i32 40, i32 %973, i32 %977)  ; UMin(a,b)
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 2
  %982 = extractvalue %dx.types.CBufRet.f32 %980, 3
  %983 = fmul fast float %981, %82
  %984 = fsub fast float %983, %982
  %985 = fadd fast float %964, -1.000000e+00
  %986 = call float @dx.op.binary.f32(i32 36, float %984, float %985)  ; FMin(a,b)
  %987 = fptoui float %986 to i32
  %988 = fptoui float %962 to i32
  %989 = fptoui float %963 to i32
  %990 = mul i32 %987, %989
  %991 = add i32 %990, %979
  %992 = mul i32 %991, %988
  %993 = add i32 %992, %978
  %994 = shl i32 %993, 2
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %996, 1023
  %998 = lshr i32 %996, 10
  %999 = icmp eq i32 %997, 0
  br i1 %999, label %1503, label %1000

; <label>:1000                                    ; preds = %892
  %1001 = and i32 %996, 1023
  br label %1002

; <label>:1002                                    ; preds = %1134, %1000
  %1003 = phi float [ %1135, %1134 ], [ 0.000000e+00, %1000 ]
  %1004 = phi float [ %1136, %1134 ], [ %914, %1000 ]
  %1005 = phi float [ %1137, %1134 ], [ %912, %1000 ]
  %1006 = phi float [ %1138, %1134 ], [ %895, %1000 ]
  %1007 = phi float [ %1139, %1134 ], [ %896, %1000 ]
  %1008 = phi float [ %1140, %1134 ], [ %897, %1000 ]
  %1009 = phi float [ %1141, %1134 ], [ 0.000000e+00, %1000 ]
  %1010 = phi float [ %1142, %1134 ], [ 0.000000e+00, %1000 ]
  %1011 = phi float [ %1143, %1134 ], [ %904, %1000 ]
  %1012 = phi float [ %1144, %1134 ], [ %905, %1000 ]
  %1013 = phi float [ %1145, %1134 ], [ %906, %1000 ]
  %1014 = phi float [ %1146, %1134 ], [ %901, %1000 ]
  %1015 = phi float [ %1147, %1134 ], [ %902, %1000 ]
  %1016 = phi float [ %1148, %1134 ], [ %903, %1000 ]
  %1017 = phi float [ %1149, %1134 ], [ %946, %1000 ]
  %1018 = phi float [ %1150, %1134 ], [ %947, %1000 ]
  %1019 = phi float [ %1151, %1134 ], [ %948, %1000 ]
  %1020 = phi float [ %1152, %1134 ], [ %910, %1000 ]
  %1021 = phi float [ %1153, %1134 ], [ %909, %1000 ]
  %1022 = phi float [ %1154, %1134 ], [ 0.000000e+00, %1000 ]
  %1023 = phi float [ %1155, %1134 ], [ %907, %1000 ]
  %1024 = phi float [ %1156, %1134 ], [ %898, %1000 ]
  %1025 = phi float [ %1157, %1134 ], [ %899, %1000 ]
  %1026 = phi float [ %1158, %1134 ], [ %900, %1000 ]
  %1027 = phi i32 [ %1084, %1134 ], [ 0, %1000 ]
  %1028 = add nuw nsw i32 %1027, %998
  %1029 = shl i32 %1028, 2
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = shl i32 %1031, 8
  %1033 = or i32 %1032, 48
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.ResRet.f32 %1034, 3
  %1039 = or i32 %1032, 64
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.i32 %1040, 1
  %1043 = or i32 %1032, 80
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 3
  %1047 = or i32 %1032, 96
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = extractvalue %dx.types.ResRet.f32 %1048, 3
  %1053 = or i32 %1032, 112
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1056 = or i32 %1032, 128
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = extractvalue %dx.types.ResRet.f32 %1057, 3
  %1062 = or i32 %1032, 144
  %1063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1067 = extractvalue %dx.types.ResRet.f32 %1063, 3
  %1068 = or i32 %1032, 160
  %1069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = extractvalue %dx.types.ResRet.f32 %1069, 3
  %1074 = or i32 %1032, 192
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = or i32 %1032, 208
  %1078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = or i32 %1032, 248
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = add nuw nsw i32 %1027, 1
  %1085 = bitcast float %1038 to i32
  %1086 = and i32 %1085, 512
  %1087 = icmp eq i32 %1086, 0
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1093 = call float @dx.op.dot4.f32(i32 56, float %1089, float %1090, float %1091, float %1092, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1094 = or i32 %1032, 16
  %1095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.ResRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.ResRet.f32 %1095, 2
  %1099 = extractvalue %dx.types.ResRet.f32 %1095, 3
  %1100 = call float @dx.op.dot4.f32(i32 56, float %1096, float %1097, float %1098, float %1099, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1101 = or i32 %1032, 32
  %1102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %43, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = extractvalue %dx.types.ResRet.f32 %1102, 1
  %1105 = extractvalue %dx.types.ResRet.f32 %1102, 2
  %1106 = extractvalue %dx.types.ResRet.f32 %1102, 3
  %1107 = call float @dx.op.dot4.f32(i32 56, float %1103, float %1104, float %1105, float %1106, float %142, float %143, float %144, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1108 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1109 = call float @dx.op.unary.f32(i32 6, float %1108)  ; FAbs(value)
  %1110 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1111 = call float @dx.op.unary.f32(i32 6, float %1110)  ; FAbs(value)
  %1112 = call float @dx.op.unary.f32(i32 6, float %1107)  ; FAbs(value)
  %1113 = call float @dx.op.unary.f32(i32 27, float %1112)  ; Round_ni(value)
  %1114 = fadd fast float %1111, %1109
  %1115 = fadd fast float %1114, %1113
  %1116 = fcmp fast oeq float %1115, 0.000000e+00
  %1117 = call float @dx.op.dot4.f32(i32 56, float %1089, float %1090, float %1091, float %1092, float %955, float %956, float %957, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1118 = call float @dx.op.dot4.f32(i32 56, float %1096, float %1097, float %1098, float %1099, float %955, float %956, float %957, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1119 = call float @dx.op.dot4.f32(i32 56, float %1089, float %1090, float %1091, float %1092, float %958, float %959, float %960, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1120 = call float @dx.op.dot4.f32(i32 56, float %1096, float %1097, float %1098, float %1099, float %958, float %959, float %960, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1121 = fsub fast float %1117, %1093
  %1122 = fsub fast float %1119, %1093
  %1123 = fsub fast float %1118, %1100
  %1124 = fsub fast float %1120, %1100
  %1125 = call float @dx.op.dot3.f32(i32 55, float %1035, float %1036, float %1037, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 2
  %1128 = fadd fast float %1127, %1125
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1131 = fcmp fast ogt float %1129, %1130
  %1132 = and i1 %1116, %1131
  %1133 = and i1 %1087, %1132
  br i1 %1133, label %1160, label %1134

; <label>:1134                                    ; preds = %1489, %1241, %1160, %1002
  %1135 = phi float [ %1003, %1160 ], [ %1244, %1241 ], [ %1244, %1489 ], [ %1003, %1002 ]
  %1136 = phi float [ %1004, %1160 ], [ %1004, %1241 ], [ %1465, %1489 ], [ %1004, %1002 ]
  %1137 = phi float [ %1005, %1160 ], [ %1005, %1241 ], [ %1463, %1489 ], [ %1005, %1002 ]
  %1138 = phi float [ %1006, %1160 ], [ %1006, %1241 ], [ %1441, %1489 ], [ %1006, %1002 ]
  %1139 = phi float [ %1007, %1160 ], [ %1007, %1241 ], [ %1442, %1489 ], [ %1007, %1002 ]
  %1140 = phi float [ %1008, %1160 ], [ %1008, %1241 ], [ %1443, %1489 ], [ %1008, %1002 ]
  %1141 = phi float [ %1009, %1160 ], [ %1009, %1241 ], [ %1368, %1489 ], [ %1009, %1002 ]
  %1142 = phi float [ %1010, %1160 ], [ %1010, %1241 ], [ %1366, %1489 ], [ %1010, %1002 ]
  %1143 = phi float [ %1011, %1160 ], [ %1011, %1241 ], [ %1411, %1489 ], [ %1011, %1002 ]
  %1144 = phi float [ %1012, %1160 ], [ %1012, %1241 ], [ %1412, %1489 ], [ %1012, %1002 ]
  %1145 = phi float [ %1013, %1160 ], [ %1013, %1241 ], [ %1413, %1489 ], [ %1013, %1002 ]
  %1146 = phi float [ %1014, %1160 ], [ %1014, %1241 ], [ %1499, %1489 ], [ %1014, %1002 ]
  %1147 = phi float [ %1015, %1160 ], [ %1015, %1241 ], [ %1500, %1489 ], [ %1015, %1002 ]
  %1148 = phi float [ %1016, %1160 ], [ %1016, %1241 ], [ %1501, %1489 ], [ %1016, %1002 ]
  %1149 = phi float [ %1017, %1160 ], [ %1017, %1241 ], [ %1347, %1489 ], [ %1017, %1002 ]
  %1150 = phi float [ %1018, %1160 ], [ %1018, %1241 ], [ %1348, %1489 ], [ %1018, %1002 ]
  %1151 = phi float [ %1019, %1160 ], [ %1019, %1241 ], [ %1349, %1489 ], [ %1019, %1002 ]
  %1152 = phi float [ %1020, %1160 ], [ %1020, %1241 ], [ %1421, %1489 ], [ %1020, %1002 ]
  %1153 = phi float [ %1021, %1160 ], [ %1021, %1241 ], [ %1418, %1489 ], [ %1021, %1002 ]
  %1154 = phi float [ %1022, %1160 ], [ %1022, %1241 ], [ %1415, %1489 ], [ %1022, %1002 ]
  %1155 = phi float [ %1023, %1160 ], [ %1023, %1241 ], [ %1364, %1489 ], [ %1023, %1002 ]
  %1156 = phi float [ %1024, %1160 ], [ %1024, %1241 ], [ %1359, %1489 ], [ %1024, %1002 ]
  %1157 = phi float [ %1025, %1160 ], [ %1025, %1241 ], [ %1360, %1489 ], [ %1025, %1002 ]
  %1158 = phi float [ %1026, %1160 ], [ %1026, %1241 ], [ %1361, %1489 ], [ %1026, %1002 ]
  %1159 = icmp eq i32 %1084, %1001
  br i1 %1159, label %1502, label %1002

; <label>:1160                                    ; preds = %1002
  %1161 = extractvalue %dx.types.ResRet.f32 %1054, 3
  %1162 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1165 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1166 = extractvalue %dx.types.ResRet.i32 %1040, 3
  %1167 = extractvalue %dx.types.ResRet.i32 %1040, 2
  %1168 = add i32 %1166, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1168, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1169, %dx.types.Handle %1170, float %1093, float %1100, float undef, float undef, i32 0, i32 0, i32 undef, float %1121, float %1123, float undef, float %1122, float %1124, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = fmul fast float %1172, %1165
  %1174 = fadd fast float %1173, %1164
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1176 = fmul fast float %1093, %1049
  %1177 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %1100, float %1176)  ; FMad(a,b,c)
  %1178 = fadd fast float %1177, %1163
  %1179 = fmul fast float %1093, %1051
  %1180 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1100, float %1179)  ; FMad(a,b,c)
  %1181 = fadd fast float %1180, %1162
  %1182 = fmul fast float %1121, %1049
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %1123, float %1182)  ; FMad(a,b,c)
  %1184 = fmul fast float %1121, %1051
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1123, float %1184)  ; FMad(a,b,c)
  %1186 = fmul fast float %1122, %1049
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %1124, float %1186)  ; FMad(a,b,c)
  %1188 = fmul fast float %1122, %1051
  %1189 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1124, float %1188)  ; FMad(a,b,c)
  %1190 = add i32 %1167, 0
  %1191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1190, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1192 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1191, %dx.types.Handle %1170, float %1178, float %1181, float undef, float undef, i32 0, i32 0, i32 undef, float %1183, float %1185, float undef, float %1187, float %1189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = and i32 %1085, 1024
  %1195 = icmp ne i32 %1194, 0
  %1196 = fcmp fast ogt float %1193, 0x3FE0101020000000
  %1197 = uitofp i1 %1196 to float
  %1198 = select i1 %1195, float %1197, float %1193
  %1199 = and i32 %1085, 8192
  %1200 = icmp ne i32 %1199, 0
  %1201 = select i1 %1200, float %1161, float 1.000000e+00
  %1202 = fmul fast float %1093, 2.000000e+00
  %1203 = fadd fast float %1202, -1.000000e+00
  %1204 = call float @dx.op.unary.f32(i32 6, float %1203)  ; FAbs(value)
  %1205 = fmul fast float %1204, %1082
  %1206 = fsub fast float %1205, %1082
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1208 = fmul fast float %1100, 2.000000e+00
  %1209 = fadd fast float %1208, -1.000000e+00
  %1210 = call float @dx.op.unary.f32(i32 6, float %1209)  ; FAbs(value)
  %1211 = fmul fast float %1210, %1083
  %1212 = fsub fast float %1211, %1083
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = fmul fast float %1112, %1045
  %1215 = fsub fast float %1214, %1045
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fmul fast float %1175, %1201
  %1218 = fmul fast float %1217, %1172
  %1219 = fmul fast float %1218, %1207
  %1220 = fmul fast float %1219, %1198
  %1221 = fmul fast float %1220, %1213
  %1222 = fmul fast float %1221, %1216
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1225 = extractvalue %dx.types.CBufRet.f32 %1223, 0
  %1226 = fsub fast float %1129, %1225
  %1227 = fmul fast float %1226, %1224
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = fmul fast float %1222, %1046
  %1230 = fadd fast float %1222, %1046
  %1231 = fmul fast float %1230, %1055
  %1232 = fsub fast float %1231, %1055
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = and i32 %1085, 128
  %1235 = icmp ne i32 %1234, 0
  %1236 = select i1 %1235, float %1233, float %1229
  %1237 = fmul fast float %1236, %1228
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 0
  %1240 = fcmp fast ugt float %1237, %1239
  br i1 %1240, label %1241, label %1134

; <label>:1241                                    ; preds = %1160
  %1242 = select i1 %1200, float %1237, float 0.000000e+00
  %1243 = fadd fast float %1242, %1003
  %1244 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  br i1 %1200, label %1134, label %1245

; <label>:1245                                    ; preds = %1241
  %1246 = and i32 %1085, 4
  %1247 = and i32 %1085, 8
  %1248 = add i32 %1041, 0
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1251 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1249, %dx.types.Handle %1250, float %1178, float %1181, float undef, float undef, i32 0, i32 0, i32 undef, float %1183, float %1185, float undef, float %1187, float %1189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1255 = extractvalue %dx.types.ResRet.f32 %1251, 3
  %1256 = bitcast float %1067 to i32
  %1257 = and i32 %1256, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = lshr i32 %1256, 8
  %1260 = and i32 %1259, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1255, %1258
  %1263 = fadd fast float %1262, %1261
  %1264 = fmul fast float %1263, 0x3F70101000000000
  %1265 = add i32 %1042, 0
  %1266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1265, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1267 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1266, %dx.types.Handle %1250, float %1178, float %1181, float undef, float undef, i32 0, i32 0, i32 undef, float %1183, float %1185, float undef, float %1187, float %1189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.ResRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.ResRet.f32 %1267, 2
  %1271 = extractvalue %dx.types.ResRet.f32 %1267, 3
  %1272 = bitcast float %1061 to i32
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = lshr i32 %1272, 8
  %1276 = and i32 %1275, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = lshr i32 %1272, 16
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1280, 0x3F70101000000000
  %1282 = fmul fast float %1268, %1274
  %1283 = fadd fast float %1282, %1277
  %1284 = fmul fast float %1283, 0x3F70101000000000
  %1285 = fadd fast float %1269, -5.000000e-01
  %1286 = fadd fast float %1271, -5.000000e-01
  %1287 = fmul fast float %1285, %1281
  %1288 = fmul fast float %1286, %1281
  %1289 = fadd fast float %1287, 5.000000e-01
  %1290 = fadd fast float %1288, 5.000000e-01
  %1291 = fmul fast float %1252, %1070
  %1292 = fmul fast float %1253, %1071
  %1293 = fmul fast float %1254, %1072
  %1294 = fmul fast float %1289, 2.000000e+00
  %1295 = fadd fast float %1294, -1.000000e+00
  %1296 = fmul fast float %1290, 2.000000e+00
  %1297 = fadd fast float %1296, -1.000000e+00
  %1298 = fadd fast float %1295, %1297
  %1299 = fmul fast float %1298, 5.000000e-01
  %1300 = fsub fast float %1295, %1297
  %1301 = fmul fast float %1300, 5.000000e-01
  %1302 = call float @dx.op.unary.f32(i32 6, float %1299)  ; FAbs(value)
  %1303 = fsub fast float 1.000000e+00, %1302
  %1304 = call float @dx.op.unary.f32(i32 6, float %1301)  ; FAbs(value)
  %1305 = fsub fast float %1303, %1304
  %1306 = call float @dx.op.dot3.f32(i32 55, float %1299, float %1301, float %1305, float %1299, float %1301, float %1305)  ; Dot3(ax,ay,az,bx,by,bz)
  %1307 = call float @dx.op.unary.f32(i32 25, float %1306)  ; Rsqrt(value)
  %1308 = fmul fast float %1299, %1307
  %1309 = fmul fast float %1301, %1307
  %1310 = fmul fast float %1307, %1305
  %1311 = fmul fast float %1310, %1035
  %1312 = fmul fast float %1310, %1036
  %1313 = fmul fast float %1310, %1037
  %1314 = fmul fast float %1308, %1058
  %1315 = fmul fast float %1308, %1059
  %1316 = fmul fast float %1308, %1060
  %1317 = fadd fast float %1314, %1311
  %1318 = fadd fast float %1315, %1312
  %1319 = fadd fast float %1316, %1313
  %1320 = fmul fast float %1309, %1064
  %1321 = fmul fast float %1309, %1065
  %1322 = fmul fast float %1309, %1066
  %1323 = fadd fast float %1317, %1320
  %1324 = fadd fast float %1318, %1321
  %1325 = fadd fast float %1319, %1322
  %1326 = call float @dx.op.dot3.f32(i32 55, float %1323, float %1324, float %1325, float %1323, float %1324, float %1325)  ; Dot3(ax,ay,az,bx,by,bz)
  %1327 = call float @dx.op.unary.f32(i32 25, float %1326)  ; Rsqrt(value)
  %1328 = fmul fast float %1323, %1327
  %1329 = fmul fast float %1324, %1327
  %1330 = fmul fast float %1325, %1327
  %1331 = icmp ne i32 %1247, 0
  %1332 = select i1 %1331, float 1.000000e+00, float 0.000000e+00
  %1333 = fmul fast float %1237, %1332
  %1334 = and i32 %1085, 1
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1336, label %1340

; <label>:1336                                    ; preds = %1245
  %1337 = fsub fast float %1328, %1017
  %1338 = fsub fast float %1329, %1018
  %1339 = fsub fast float %1330, %1019
  br label %1340

; <label>:1340                                    ; preds = %1336, %1245
  %1341 = phi float [ %1337, %1336 ], [ %1328, %1245 ]
  %1342 = phi float [ %1338, %1336 ], [ %1329, %1245 ]
  %1343 = phi float [ %1339, %1336 ], [ %1330, %1245 ]
  %1344 = fmul float %1343, %1333
  %1345 = fmul float %1342, %1333
  %1346 = fmul float %1341, %1333
  %1347 = fadd fast float %1346, %1017
  %1348 = fadd fast float %1345, %1018
  %1349 = fadd fast float %1344, %1019
  %1350 = icmp ne i32 %1246, 0
  %1351 = select i1 %1350, float 1.000000e+00, float 0.000000e+00
  %1352 = fmul fast float %1237, %1351
  %1353 = fsub fast float %1291, %1024
  %1354 = fsub fast float %1292, %1025
  %1355 = fsub fast float %1293, %1026
  %1356 = fmul fast float %1353, %1352
  %1357 = fmul fast float %1354, %1352
  %1358 = fmul fast float %1355, %1352
  %1359 = fadd fast float %1356, %1024
  %1360 = fadd fast float %1357, %1025
  %1361 = fadd fast float %1358, %1026
  %1362 = fsub fast float %1264, %1023
  %1363 = fmul fast float %1362, %1352
  %1364 = fadd fast float %1363, %1023
  %1365 = fmul fast float %1352, %1010
  %1366 = fsub fast float %1010, %1365
  %1367 = fmul fast float %1352, %1009
  %1368 = fsub fast float %1009, %1367
  %1369 = bitcast float %1079 to i32
  %1370 = lshr i32 %1369, 16
  %1371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1370)  ; LegacyF16ToF32(value)
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = and i32 %1373, 1
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1376, label %1401

; <label>:1376                                    ; preds = %1340
  %1377 = fadd fast float %1264, 0xBFB99999A0000000
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = fmul fast float %1378, 0x3FF1C71C80000000
  %1380 = fsub fast float 1.000000e+00, %1379
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fmul fast float %1381, %1291
  %1383 = fmul fast float %1381, %1292
  %1384 = fmul fast float %1381, %1293
  %1385 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1386 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1387 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1388 = call float @dx.op.binary.f32(i32 35, float %1386, float %1387)  ; FMax(a,b)
  %1389 = call float @dx.op.binary.f32(i32 35, float %1385, float %1388)  ; FMax(a,b)
  %1390 = fcmp fast ogt float %1389, 0.000000e+00
  %1391 = bitcast float %1389 to i32
  %1392 = sub nsw i32 2129859010, %1391
  %1393 = bitcast i32 %1392 to float
  %1394 = select i1 %1390, float %1393, float 0.000000e+00
  %1395 = fmul fast float %1385, %1371
  %1396 = fmul fast float %1386, %1371
  %1397 = fmul fast float %1387, %1371
  %1398 = fmul fast float %1395, %1394
  %1399 = fmul fast float %1396, %1394
  %1400 = fmul fast float %1397, %1394
  br label %1401

; <label>:1401                                    ; preds = %1376, %1340
  %1402 = phi float [ %1371, %1340 ], [ %1398, %1376 ]
  %1403 = phi float [ %1371, %1340 ], [ %1399, %1376 ]
  %1404 = phi float [ %1371, %1340 ], [ %1400, %1376 ]
  %1405 = fsub fast float %1402, %1011
  %1406 = fsub fast float %1403, %1012
  %1407 = fsub fast float %1404, %1013
  %1408 = fmul fast float %1405, %1352
  %1409 = fmul fast float %1406, %1352
  %1410 = fmul fast float %1407, %1352
  %1411 = fadd fast float %1408, %1011
  %1412 = fadd fast float %1409, %1012
  %1413 = fadd fast float %1410, %1013
  %1414 = fadd fast float %1237, %1022
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = fsub fast float %1284, %1021
  %1417 = fmul fast float %1416, %1333
  %1418 = fadd fast float %1417, %1021
  %1419 = fsub fast float %1270, %1020
  %1420 = fmul fast float %1419, %1333
  %1421 = fadd fast float %1420, %1020
  br i1 %1335, label %1430, label %1422

; <label>:1422                                    ; preds = %1401
  %1423 = and i32 %1085, 32768
  %1424 = icmp eq i32 %1423, 0
  br i1 %1424, label %1440, label %1425

; <label>:1425                                    ; preds = %1422
  %1426 = fmul fast float %1333, 1.270000e+02
  %1427 = fadd fast float %1426, %1006
  %1428 = fadd fast float %1426, %1007
  %1429 = fadd fast float %1426, %1008
  br label %1440

; <label>:1430                                    ; preds = %1401
  %1431 = fsub fast float 1.270000e+02, %1006
  %1432 = fsub fast float 1.270000e+02, %1007
  %1433 = fsub fast float 1.270000e+02, %1008
  %1434 = fmul fast float %1333, %1431
  %1435 = fmul fast float %1333, %1432
  %1436 = fmul fast float %1333, %1433
  %1437 = fadd fast float %1434, %1006
  %1438 = fadd fast float %1435, %1007
  %1439 = fadd fast float %1436, %1008
  br label %1440

; <label>:1440                                    ; preds = %1430, %1425, %1422
  %1441 = phi float [ %1427, %1425 ], [ %1006, %1422 ], [ %1437, %1430 ]
  %1442 = phi float [ %1428, %1425 ], [ %1007, %1422 ], [ %1438, %1430 ]
  %1443 = phi float [ %1429, %1425 ], [ %1008, %1422 ], [ %1439, %1430 ]
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1291, float %1292, float %1293, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.CBufRet.f32 %1445, 1
  %1448 = fmul fast float %1447, %1444
  %1449 = fadd fast float %1448, %1446
  %1450 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1451 = bitcast float %1073 to i32
  %1452 = and i32 %1451, 65535
  %1453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1452)  ; LegacyF16ToF32(value)
  %1454 = lshr i32 %1451, 16
  %1455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1454)  ; LegacyF16ToF32(value)
  %1456 = fcmp fast oge float %1453, 0.000000e+00
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 0
  %1459 = select i1 %1456, float %1453, float %1458
  %1460 = fadd fast float %1459, %1455
  %1461 = fsub fast float %1450, %1005
  %1462 = fmul fast float %1461, %1237
  %1463 = fadd fast float %1462, %1005
  %1464 = fmul fast float %1460, %1237
  %1465 = call float @dx.op.binary.f32(i32 35, float %1004, float %1464)  ; FMax(a,b)
  %1466 = and i32 %1085, 16
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1489, label %1468

; <label>:1468                                    ; preds = %1440
  %1469 = add i32 %1076, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1469, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1470, %dx.types.Handle %1250, float %1178, float %1181, float undef, float undef, i32 0, i32 0, i32 undef, float %1183, float %1185, float undef, float %1187, float %1189, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.ResRet.f32 %1471, 2
  %1475 = and i32 %1369, 65535
  %1476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1475)  ; LegacyF16ToF32(value)
  %1477 = fmul fast float %1472, %1070
  %1478 = fmul fast float %1473, %1071
  %1479 = fmul fast float %1474, %1072
  %1480 = and i32 %1085, 16384
  %1481 = icmp ne i32 %1480, 0
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1484 = select i1 %1481, float %1483, float 1.000000e+00
  %1485 = fmul fast float %1484, %1476
  %1486 = fmul fast float %1477, %1485
  %1487 = fmul fast float %1478, %1485
  %1488 = fmul fast float %1479, %1485
  br label %1489

; <label>:1489                                    ; preds = %1468, %1440
  %1490 = phi float [ %1486, %1468 ], [ 0.000000e+00, %1440 ]
  %1491 = phi float [ %1487, %1468 ], [ 0.000000e+00, %1440 ]
  %1492 = phi float [ %1488, %1468 ], [ 0.000000e+00, %1440 ]
  %1493 = fsub fast float %1490, %1014
  %1494 = fsub fast float %1491, %1015
  %1495 = fsub fast float %1492, %1016
  %1496 = fmul fast float %1493, %1237
  %1497 = fmul fast float %1494, %1237
  %1498 = fmul fast float %1495, %1237
  %1499 = fadd fast float %1496, %1014
  %1500 = fadd fast float %1497, %1015
  %1501 = fadd fast float %1498, %1016
  br label %1134

; <label>:1502                                    ; preds = %1134
  br label %1503

; <label>:1503                                    ; preds = %1502, %892
  %1504 = phi float [ 0.000000e+00, %892 ], [ %1135, %1502 ]
  %1505 = phi float [ %914, %892 ], [ %1136, %1502 ]
  %1506 = phi float [ %912, %892 ], [ %1137, %1502 ]
  %1507 = phi float [ %895, %892 ], [ %1138, %1502 ]
  %1508 = phi float [ %896, %892 ], [ %1139, %1502 ]
  %1509 = phi float [ %897, %892 ], [ %1140, %1502 ]
  %1510 = phi float [ 0.000000e+00, %892 ], [ %1141, %1502 ]
  %1511 = phi float [ 0.000000e+00, %892 ], [ %1142, %1502 ]
  %1512 = phi float [ %904, %892 ], [ %1143, %1502 ]
  %1513 = phi float [ %905, %892 ], [ %1144, %1502 ]
  %1514 = phi float [ %906, %892 ], [ %1145, %1502 ]
  %1515 = phi float [ %901, %892 ], [ %1146, %1502 ]
  %1516 = phi float [ %902, %892 ], [ %1147, %1502 ]
  %1517 = phi float [ %903, %892 ], [ %1148, %1502 ]
  %1518 = phi float [ %946, %892 ], [ %1149, %1502 ]
  %1519 = phi float [ %947, %892 ], [ %1150, %1502 ]
  %1520 = phi float [ %948, %892 ], [ %1151, %1502 ]
  %1521 = phi float [ %910, %892 ], [ %1152, %1502 ]
  %1522 = phi float [ %909, %892 ], [ %1153, %1502 ]
  %1523 = phi float [ 0.000000e+00, %892 ], [ %1154, %1502 ]
  %1524 = phi float [ %907, %892 ], [ %1155, %1502 ]
  %1525 = phi float [ %898, %892 ], [ %1156, %1502 ]
  %1526 = phi float [ %899, %892 ], [ %1157, %1502 ]
  %1527 = phi float [ %900, %892 ], [ %1158, %1502 ]
  %1528 = call float @dx.op.dot3.f32(i32 55, float %1518, float %1519, float %1520, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1529 = call float @dx.op.unary.f32(i32 25, float %1528)  ; Rsqrt(value)
  %1530 = fmul fast float %1529, %1518
  %1531 = fmul fast float %1529, %1519
  %1532 = fmul fast float %1529, %1520
  %1533 = fadd fast float %1523, %908
  %1534 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1535 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1531, float %1532, float %1530, float %1531, float %1532)  ; Dot3(ax,ay,az,bx,by,bz)
  %1536 = call float @dx.op.unary.f32(i32 25, float %1535)  ; Rsqrt(value)
  %1537 = fmul fast float %1536, %1530
  %1538 = fmul fast float %1536, %1531
  %1539 = fmul fast float %1536, %1532
  %1540 = fadd fast float %1524, 0xBFB99999A0000000
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1542 = fmul fast float %1541, 0x3FF1C71C80000000
  %1543 = call float @dx.op.binary.f32(i32 36, float %1524, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1544 = fsub fast float 1.000000e+00, %1542
  %1545 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1546 = fmul fast float %1545, %1525
  %1547 = fmul fast float %1545, %1526
  %1548 = fmul fast float %1545, %1527
  %1549 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1550 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  %1551 = call float @dx.op.unary.f32(i32 7, float %1548)  ; Saturate(value)
  %1552 = fmul fast float %1542, %1525
  %1553 = fmul fast float %1542, %1526
  %1554 = fmul fast float %1542, %1527
  %1555 = fadd fast float %1552, %1543
  %1556 = fadd fast float %1553, %1543
  %1557 = fadd fast float %1554, %1543
  %1558 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1559 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1560 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1561 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 1
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1580, label %1566

; <label>:1566                                    ; preds = %1503
  %1567 = call float @dx.op.binary.f32(i32 35, float %1550, float %1551)  ; FMax(a,b)
  %1568 = call float @dx.op.binary.f32(i32 35, float %1549, float %1567)  ; FMax(a,b)
  %1569 = fcmp fast ogt float %1568, 0.000000e+00
  %1570 = bitcast float %1568 to i32
  %1571 = sub nsw i32 2129859010, %1570
  %1572 = bitcast i32 %1571 to float
  %1573 = select i1 %1569, float %1572, float 0.000000e+00
  %1574 = fmul fast float %1549, %1512
  %1575 = fmul fast float %1550, %1513
  %1576 = fmul fast float %1551, %1514
  %1577 = fmul fast float %1574, %1573
  %1578 = fmul fast float %1575, %1573
  %1579 = fmul fast float %1576, %1573
  br label %1580

; <label>:1580                                    ; preds = %1566, %1503
  %1581 = phi float [ %1577, %1566 ], [ %1512, %1503 ]
  %1582 = phi float [ %1578, %1566 ], [ %1513, %1503 ]
  %1583 = phi float [ %1579, %1566 ], [ %1514, %1503 ]
  %1584 = call float @dx.op.binary.f32(i32 36, float %1507, float 1.270000e+02)  ; FMin(a,b)
  %1585 = call float @dx.op.binary.f32(i32 36, float %1508, float 1.270000e+02)  ; FMin(a,b)
  %1586 = call float @dx.op.binary.f32(i32 36, float %1509, float 1.270000e+02)  ; FMin(a,b)
  %1587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.i32 %1587, 3
  %1589 = and i32 %1588, 8
  %1590 = icmp ne i32 %1589, 0
  %1591 = call float @dx.op.binary.f32(i32 35, float %1549, float %1525)  ; FMax(a,b)
  %1592 = call float @dx.op.binary.f32(i32 35, float %1550, float %1525)  ; FMax(a,b)
  %1593 = call float @dx.op.binary.f32(i32 35, float %1551, float %1525)  ; FMax(a,b)
  %1594 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1550, float %1551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1595 = select i1 %204, float %1525, float %1549
  %1596 = select i1 %204, float %1594, float %1550
  %1597 = select i1 %204, float 1.000000e+00, float %1551
  %1598 = select i1 %1590, float %1591, float %1595
  %1599 = select i1 %1590, float %1592, float %1596
  %1600 = select i1 %1590, float %1593, float %1597
  %1601 = call float @dx.op.dot3.f32(i32 55, float %1581, float %1582, float %1583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1602 = select i1 %204, float %1601, float %1581
  %1603 = select i1 %204, float %1601, float %1582
  %1604 = select i1 %204, float %1601, float %1583
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.CBufRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.CBufRet.f32 %1605, 2
  %1609 = fadd fast float %1606, %142
  %1610 = fadd fast float %1607, %143
  %1611 = fadd fast float %1608, %144
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1615 = fsub fast float %1609, %1613
  %1616 = fsub fast float %1610, %1614
  %1617 = fmul fast float %1615, %1615
  %1618 = fmul fast float %1616, %1616
  %1619 = fadd fast float %1617, %1618
  %1620 = call float @dx.op.unary.f32(i32 24, float %1619)  ; Sqrt(value)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1622 = fcmp fast olt float %1620, %1621
  br i1 %1622, label %1623, label %1690

; <label>:1623                                    ; preds = %1580
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1629 = extractvalue %dx.types.CBufRet.f32 %1628, 0
  %1630 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1631 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1632 = extractvalue %dx.types.CBufRet.f32 %1628, 1
  %1633 = extractvalue %dx.types.CBufRet.f32 %1624, 3
  %1634 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1635 = extractvalue %dx.types.CBufRet.f32 %1628, 3
  %1636 = fadd fast float %1633, %1609
  %1637 = fadd fast float %1634, %1610
  %1638 = fadd fast float %1635, %1611
  %1639 = fmul fast float %1636, %1625
  %1640 = call float @dx.op.tertiary.f32(i32 46, float %1637, float %1627, float %1639)  ; FMad(a,b,c)
  %1641 = call float @dx.op.tertiary.f32(i32 46, float %1638, float %1629, float %1640)  ; FMad(a,b,c)
  %1642 = fmul fast float %1636, %1630
  %1643 = call float @dx.op.tertiary.f32(i32 46, float %1637, float %1631, float %1642)  ; FMad(a,b,c)
  %1644 = call float @dx.op.tertiary.f32(i32 46, float %1638, float %1632, float %1643)  ; FMad(a,b,c)
  %1645 = fsub fast float %1641, %1633
  %1646 = fsub fast float %1644, %1634
  %1647 = fsub fast float %1645, %1613
  %1648 = fadd fast float %1647, %1621
  %1649 = fsub fast float %1646, %1614
  %1650 = fadd fast float %1649, %1621
  %1651 = extractvalue %dx.types.CBufRet.f32 %1612, 3
  %1652 = fmul fast float %1648, %1651
  %1653 = fmul fast float %1650, %1651
  %1654 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1655 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1656 = fsub fast float 1.000000e+00, %1654
  %1657 = fsub fast float 1.000000e+00, %1655
  %1658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %50, float %1656, float %1657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1659 = extractvalue %dx.types.ResRet.f32 %1658, 0
  %1660 = fcmp fast ugt float %1659, 0.000000e+00
  br i1 %1660, label %1661, label %1964

; <label>:1661                                    ; preds = %1623
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 2
  %1664 = fmul fast float %1663, %1659
  %1665 = extractvalue %dx.types.CBufRet.f32 %1662, 3
  %1666 = fadd fast float %1665, %1664
  %1667 = extractvalue %dx.types.CBufRet.f32 %1628, 2
  %1668 = fadd fast float %1666, %1635
  %1669 = fmul fast float %1641, %1629
  %1670 = call float @dx.op.tertiary.f32(i32 46, float %1644, float %1632, float %1669)  ; FMad(a,b,c)
  %1671 = call float @dx.op.tertiary.f32(i32 46, float %1668, float %1667, float %1670)  ; FMad(a,b,c)
  %1672 = fsub fast float %1671, %1635
  %1673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1674 = extractvalue %dx.types.CBufRet.f32 %1673, 2
  %1675 = fsub fast float %1672, %1674
  %1676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %50, float %1656, float %1657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %50, float %1656, float %1657, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1681 = extractvalue %dx.types.ResRet.f32 %1680, 0
  %1682 = extractvalue %dx.types.ResRet.f32 %1680, 1
  %1683 = extractvalue %dx.types.ResRet.f32 %1680, 2
  %1684 = fadd fast float %1681, %1677
  %1685 = fmul fast float %1684, 0x3F847AE140000000
  %1686 = fadd fast float %1682, %1678
  %1687 = fmul fast float %1686, 0x3F847AE140000000
  %1688 = fadd fast float %1683, %1679
  %1689 = fmul fast float %1688, 0x3F847AE140000000
  br label %1964

; <label>:1690                                    ; preds = %1580
  %1691 = and i32 %180, 1
  %1692 = icmp eq i32 %1691, 0
  br i1 %1692, label %1964, label %1693

; <label>:1693                                    ; preds = %1690
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 0
  %1700 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1701 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1702 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %1703 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1704 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1705 = extractvalue %dx.types.CBufRet.f32 %1698, 3
  %1706 = fadd fast float %1703, %1609
  %1707 = fadd fast float %1704, %1610
  %1708 = fadd fast float %1705, %1611
  %1709 = fmul fast float %1706, %1695
  %1710 = call float @dx.op.tertiary.f32(i32 46, float %1707, float %1697, float %1709)  ; FMad(a,b,c)
  %1711 = call float @dx.op.tertiary.f32(i32 46, float %1708, float %1699, float %1710)  ; FMad(a,b,c)
  %1712 = fmul fast float %1706, %1700
  %1713 = call float @dx.op.tertiary.f32(i32 46, float %1707, float %1701, float %1712)  ; FMad(a,b,c)
  %1714 = call float @dx.op.tertiary.f32(i32 46, float %1708, float %1702, float %1713)  ; FMad(a,b,c)
  %1715 = fsub fast float %1711, %1703
  %1716 = fsub fast float %1714, %1704
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.CBufRet.f32 %1717, 2
  %1721 = extractvalue %dx.types.CBufRet.f32 %1717, 3
  %1722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.f32 %1722, 3
  %1724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1725 = extractvalue %dx.types.CBufRet.i32 %1724, 0
  %1726 = extractvalue %dx.types.CBufRet.i32 %1724, 1
  %1727 = udiv i32 %1726, %1725
  %1728 = fsub fast float %1715, %1718
  %1729 = fsub fast float %1716, %1719
  %1730 = call float @dx.op.binary.f32(i32 35, float %1728, float 0.000000e+00)  ; FMax(a,b)
  %1731 = call float @dx.op.binary.f32(i32 35, float %1729, float 0.000000e+00)  ; FMax(a,b)
  %1732 = call float @dx.op.binary.f32(i32 36, float %1730, float %1720)  ; FMin(a,b)
  %1733 = call float @dx.op.binary.f32(i32 36, float %1731, float %1721)  ; FMin(a,b)
  %1734 = add i32 %1725, -1
  %1735 = add i32 %1727, -1
  %1736 = fmul fast float %1732, %1723
  %1737 = fmul fast float %1733, %1723
  %1738 = fptoui float %1736 to i32
  %1739 = fptoui float %1737 to i32
  %1740 = call i32 @dx.op.binary.i32(i32 40, i32 %1738, i32 %1734)  ; UMin(a,b)
  %1741 = call i32 @dx.op.binary.i32(i32 40, i32 %1739, i32 %1735)  ; UMin(a,b)
  %1742 = mul i32 %1741, %1725
  %1743 = add i32 %1742, %1740
  %1744 = shl i32 %1743, 2
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = icmp eq i32 %1746, -1
  br i1 %1747, label %1964, label %1748

; <label>:1748                                    ; preds = %1693
  %1749 = mul i32 %1746, 148
  %1750 = add i32 %1749, 4
  %1751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = add i32 %1749, 8
  %1754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1753, i32 undef)  ; BufferLoad(srv,index,wot)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1756 = add i32 %1749, 36
  %1757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1756, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  %1759 = add i32 %1749, 60
  %1760 = add i32 %1749, 92
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = add i32 %1749, 116
  %1764 = fsub fast float %1715, %1752
  %1765 = fsub fast float %1716, %1755
  %1766 = fmul fast float %1723, %1764
  %1767 = fmul fast float %1723, %1765
  %1768 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1769 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  %1770 = fsub fast float 1.000000e+00, %1769
  %1771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1771, 2
  %1773 = call float @dx.op.unary.f32(i32 83, float %1768)  ; DerivCoarseX(value)
  %1774 = call float @dx.op.unary.f32(i32 83, float %1770)  ; DerivCoarseX(value)
  %1775 = call float @dx.op.unary.f32(i32 84, float %1768)  ; DerivCoarseY(value)
  %1776 = call float @dx.op.unary.f32(i32 84, float %1770)  ; DerivCoarseY(value)
  %1777 = fmul fast float %1773, %1772
  %1778 = fmul fast float %1774, %1772
  %1779 = fmul fast float %1775, %1772
  %1780 = fmul fast float %1776, %1772
  %1781 = call float @dx.op.dot2.f32(i32 54, float %1779, float %1780, float %1779, float %1780)  ; Dot2(ax,ay,bx,by)
  %1782 = call float @dx.op.dot2.f32(i32 54, float %1777, float %1778, float %1777, float %1778)  ; Dot2(ax,ay,bx,by)
  %1783 = call float @dx.op.binary.f32(i32 35, float %1782, float %1781)  ; FMax(a,b)
  %1784 = call float @dx.op.unary.f32(i32 23, float %1783)  ; Log(value)
  %1785 = fmul fast float %1784, 5.000000e-01
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1788 = fadd fast float %1787, %1785
  %1789 = call float @dx.op.binary.f32(i32 35, float %1788, float 0.000000e+00)  ; FMax(a,b)
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1792 = fadd fast float %1791, %1789
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 3
  %1795 = fadd fast float %1792, %1794
  %1796 = add i32 %1762, 0
  %1797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1796, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1798 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1797, i32 0)  ; GetDimensions(handle,mipLevel)
  %1799 = extractvalue %dx.types.Dimensions %1798, 0
  %1800 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1799)  ; FirstbitLo(value)
  %1801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.i32 %1801, 1
  %1803 = sub nsw i32 %1802, %1800
  %1804 = sitofp i32 %1803 to float
  %1805 = fsub fast float %1795, %1804
  %1806 = call float @dx.op.binary.f32(i32 35, float %1805, float 0.000000e+00)  ; FMax(a,b)
  %1807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1797, %dx.types.Handle %48, float %1768, float %1770, float %1758, float undef, i32 0, i32 0, i32 undef, float %1806)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = fcmp ule float %1808, 0x3FE0101020000000
  %1810 = extractvalue %dx.types.CBufRet.i32 %1801, 0
  %1811 = and i32 %1810, 128
  %1812 = icmp ne i32 %1811, 0
  %1813 = and i1 %1809, %1812
  br i1 %1813, label %1964, label %1814

; <label>:1814                                    ; preds = %1748
  %1815 = add i32 %1749, 20
  %1816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.f32 %1816, 0
  %1818 = add i32 %1749, 24
  %1819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1818, i32 undef)  ; BufferLoad(srv,index,wot)
  %1820 = extractvalue %dx.types.ResRet.f32 %1819, 0
  %1821 = add i32 %1749, 40
  %1822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.f32 %1822, 0
  %1824 = add i32 %1749, 96
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 2
  %1829 = fmul fast float %1828, %1768
  %1830 = fmul fast float %1828, %1770
  %1831 = extractvalue %dx.types.CBufRet.f32 %1827, 3
  %1832 = fadd fast float %1829, %1831
  %1833 = fadd fast float %1830, %1831
  %1834 = add i32 %1826, 0
  %1835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1834, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1836 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1835, i32 0)  ; GetDimensions(handle,mipLevel)
  %1837 = extractvalue %dx.types.Dimensions %1836, 0
  %1838 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1837)  ; FirstbitLo(value)
  %1839 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1840 = extractvalue %dx.types.CBufRet.i32 %1839, 1
  %1841 = sub nsw i32 %1840, %1838
  %1842 = sitofp i32 %1841 to float
  %1843 = fsub fast float %1792, %1842
  %1844 = call float @dx.op.binary.f32(i32 35, float %1843, float 0.000000e+00)  ; FMax(a,b)
  %1845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1835, %dx.types.Handle %48, float %1832, float %1833, float %1823, float undef, i32 0, i32 0, i32 undef, float %1844)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1846 = extractvalue %dx.types.ResRet.f32 %1845, 0
  %1847 = fmul fast float %1846, %1817
  %1848 = fadd fast float %1847, %1820
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.CBufRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.CBufRet.f32 %1849, 2
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 3
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 3
  %1857 = extractvalue %dx.types.CBufRet.f32 %1849, 3
  %1858 = fadd fast float %1854, %1715
  %1859 = fadd fast float %1856, %1716
  %1860 = fadd fast float %1848, %1857
  %1861 = fmul fast float %1858, %1850
  %1862 = call float @dx.op.tertiary.f32(i32 46, float %1859, float %1851, float %1861)  ; FMad(a,b,c)
  %1863 = call float @dx.op.tertiary.f32(i32 46, float %1860, float %1852, float %1862)  ; FMad(a,b,c)
  %1864 = fsub fast float %1863, %1857
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %1867 = fsub fast float %1864, %1866
  %1868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1869 = extractvalue %dx.types.CBufRet.i32 %1868, 0
  %1870 = call i32 @dx.op.binary.i32(i32 40, i32 %1746, i32 %1869)  ; UMin(a,b)
  %1871 = mul i32 %1870, 36
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = add i32 %1871, 4
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = fmul fast float %1876, %1768
  %1878 = fmul fast float %1876, %1770
  %1879 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1880 = fadd fast float %1877, %1879
  %1881 = fadd fast float %1878, %1879
  %1882 = icmp eq i32 %1873, 0
  br i1 %1882, label %1951, label %1883

; <label>:1883                                    ; preds = %1814
  br label %1884

; <label>:1884                                    ; preds = %1941, %1883
  %1885 = phi float [ %1942, %1941 ], [ 0.000000e+00, %1883 ]
  %1886 = phi float [ %1943, %1941 ], [ 0.000000e+00, %1883 ]
  %1887 = phi float [ %1944, %1941 ], [ 0.000000e+00, %1883 ]
  %1888 = phi float [ %1945, %1941 ], [ 0.000000e+00, %1883 ]
  %1889 = phi float [ %1946, %1941 ], [ 0.000000e+00, %1883 ]
  %1890 = phi float [ %1947, %1941 ], [ 0.000000e+00, %1883 ]
  %1891 = phi i32 [ %1948, %1941 ], [ 0, %1883 ]
  %1892 = shl i32 %1891, 2
  %1893 = add i32 %1759, %1892
  %1894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = add i32 %1763, %1892
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = add i32 %1898, 0
  %1900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1899, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1901 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1900, i32 0)  ; GetDimensions(handle,mipLevel)
  %1902 = extractvalue %dx.types.Dimensions %1901, 0
  %1903 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1902)  ; FirstbitLo(value)
  %1904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.i32 %1904, 1
  %1906 = sub nsw i32 %1905, %1903
  %1907 = sitofp i32 %1906 to float
  %1908 = fsub fast float %1792, %1907
  %1909 = call float @dx.op.binary.f32(i32 35, float %1908, float 0.000000e+00)  ; FMax(a,b)
  %1910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1900, %dx.types.Handle %48, float %1880, float %1881, float %1895, float undef, i32 0, i32 0, i32 undef, float %1909)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = fcmp fast ogt float %1911, 0.000000e+00
  br i1 %1912, label %1913, label %1941

; <label>:1913                                    ; preds = %1884
  %1914 = add i32 %1874, %1892
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = and i32 %1916, 32767
  %1918 = mul nuw nsw i32 %1917, 928
  %1919 = add nuw nsw i32 %1918, 48
  %1920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.ResRet.f32 %1920, 1
  %1923 = extractvalue %dx.types.ResRet.f32 %1920, 2
  %1924 = add nuw nsw i32 %1918, 60
  %1925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.ResRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.ResRet.f32 %1925, 2
  %1929 = fmul fast float %1921, %1911
  %1930 = fmul fast float %1922, %1911
  %1931 = fmul fast float %1923, %1911
  %1932 = fadd fast float %1929, %1885
  %1933 = fadd fast float %1930, %1886
  %1934 = fadd fast float %1931, %1887
  %1935 = fmul fast float %1926, %1911
  %1936 = fmul fast float %1927, %1911
  %1937 = fmul fast float %1928, %1911
  %1938 = fadd fast float %1935, %1888
  %1939 = fadd fast float %1936, %1889
  %1940 = fadd fast float %1937, %1890
  br label %1941

; <label>:1941                                    ; preds = %1913, %1884
  %1942 = phi float [ %1932, %1913 ], [ %1885, %1884 ]
  %1943 = phi float [ %1933, %1913 ], [ %1886, %1884 ]
  %1944 = phi float [ %1934, %1913 ], [ %1887, %1884 ]
  %1945 = phi float [ %1938, %1913 ], [ %1888, %1884 ]
  %1946 = phi float [ %1939, %1913 ], [ %1889, %1884 ]
  %1947 = phi float [ %1940, %1913 ], [ %1890, %1884 ]
  %1948 = add nuw i32 %1891, 1
  %1949 = icmp eq i32 %1948, %1873
  br i1 %1949, label %1950, label %1884

; <label>:1950                                    ; preds = %1941
  br label %1951

; <label>:1951                                    ; preds = %1950, %1814
  %1952 = phi float [ 0.000000e+00, %1814 ], [ %1942, %1950 ]
  %1953 = phi float [ 0.000000e+00, %1814 ], [ %1943, %1950 ]
  %1954 = phi float [ 0.000000e+00, %1814 ], [ %1944, %1950 ]
  %1955 = phi float [ 0.000000e+00, %1814 ], [ %1945, %1950 ]
  %1956 = phi float [ 0.000000e+00, %1814 ], [ %1946, %1950 ]
  %1957 = phi float [ 0.000000e+00, %1814 ], [ %1947, %1950 ]
  %1958 = fadd fast float %1955, %1952
  %1959 = fmul fast float %1958, 0x3F847AE140000000
  %1960 = fadd fast float %1956, %1953
  %1961 = fmul fast float %1960, 0x3F847AE140000000
  %1962 = fadd fast float %1957, %1954
  %1963 = fmul fast float %1962, 0x3F847AE140000000
  br label %1964

; <label>:1964                                    ; preds = %1951, %1748, %1693, %1690, %1661, %1623
  %1965 = phi float [ %1675, %1661 ], [ -1.310720e+05, %1623 ], [ %1867, %1951 ], [ -1.310720e+05, %1693 ], [ -1.310720e+05, %1748 ], [ -1.310720e+05, %1690 ]
  %1966 = phi float [ %1685, %1661 ], [ 0.000000e+00, %1623 ], [ %1959, %1951 ], [ 0.000000e+00, %1693 ], [ 0.000000e+00, %1748 ], [ 0.000000e+00, %1690 ]
  %1967 = phi float [ %1687, %1661 ], [ 0.000000e+00, %1623 ], [ %1961, %1951 ], [ 0.000000e+00, %1693 ], [ 0.000000e+00, %1748 ], [ 0.000000e+00, %1690 ]
  %1968 = phi float [ %1689, %1661 ], [ 0.000000e+00, %1623 ], [ %1963, %1951 ], [ 0.000000e+00, %1693 ], [ 0.000000e+00, %1748 ], [ 0.000000e+00, %1690 ]
  %1969 = phi i1 [ true, %1661 ], [ false, %1623 ], [ true, %1951 ], [ false, %1693 ], [ false, %1748 ], [ false, %1690 ]
  %1970 = and i32 %180, 3
  %1971 = icmp eq i32 %1970, 1
  %1972 = select i1 %1971, float 1.000000e+00, float 0.000000e+00
  %1973 = fsub fast float %1965, %144
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1975 = select i1 %1969, float %1974, float 1.000000e+00
  %1976 = fmul fast float %1975, %1972
  %1977 = icmp eq i32 %1970, 3
  %1978 = select i1 %1977, float 1.000000e+00, float %1976
  %1979 = call float @dx.op.binary.f32(i32 35, float %1504, float %1978)  ; FMax(a,b)
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = fcmp fast une float %1980, 0.000000e+00
  br i1 %1981, label %1982, label %2152

; <label>:1982                                    ; preds = %1964
  %1983 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %1984 = call float @dx.op.unary.f32(i32 25, float %1983)  ; Rsqrt(value)
  %1985 = fmul fast float %142, %1984
  %1986 = fsub fast float -0.000000e+00, %1985
  %1987 = fmul fast float %143, %1984
  %1988 = fsub fast float -0.000000e+00, %1987
  %1989 = fmul fast float %144, %1984
  %1990 = fsub fast float -0.000000e+00, %1989
  %1991 = call float @dx.op.dot3.f32(i32 55, float %1986, float %1988, float %1990, float %97, float %98, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %1992 = fmul fast float %1980, 2.500000e+00
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = fmul fast float %1980, 0x4013FFFFE0000000
  %1995 = fadd fast float %1994, 0xBFFFFFFFE0000000
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = fmul fast float %1980, 0x4004000020000000
  %1998 = fadd fast float %1997, 0xBFF8000040000000
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2000 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %2001 = fmul fast float %1540, 1.000000e+01
  %2002 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  %2003 = fmul fast float %2002, 2.000000e+00
  %2004 = fsub fast float 3.000000e+00, %2003
  %2005 = fmul fast float %2002, %2002
  %2006 = fmul fast float %2005, %2004
  %2007 = fsub fast float 1.000000e+00, %2006
  %2008 = fsub fast float 0x3FE3333340000000, %1561
  %2009 = fmul fast float %2008, 0x400AAAAAA0000000
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2011 = fmul fast float %2007, %2010
  %2012 = fmul fast float %1598, 0x3FEA2B8620000000
  %2013 = fmul fast float %1599, 0x3FEA2B8620000000
  %2014 = fmul fast float %1600, 0x3FEA2B8620000000
  %2015 = fadd fast float %2012, 0x3FC81DFBA0000000
  %2016 = fmul fast float %2015, %1598
  %2017 = fadd fast float %2016, 0x3F910E6020000000
  %2018 = fadd fast float %2013, 0x3FC81DFBA0000000
  %2019 = fmul fast float %2018, %1599
  %2020 = fadd fast float %2019, 0x3F910E6020000000
  %2021 = fadd fast float %2014, 0x3FC81DFBA0000000
  %2022 = fmul fast float %2021, %1600
  %2023 = fadd fast float %2022, 0x3F910E6020000000
  %2024 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  %2025 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  %2026 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2027 = fsub fast float %2024, %1598
  %2028 = fsub fast float %2025, %1599
  %2029 = fsub fast float %2026, %1600
  %2030 = fmul fast float %2027, %2000
  %2031 = fmul fast float %2030, %2011
  %2032 = fmul fast float %2028, %2000
  %2033 = fmul fast float %2032, %2011
  %2034 = fmul fast float %2029, %2000
  %2035 = fmul fast float %2034, %2011
  %2036 = fadd fast float %2031, %1598
  %2037 = fadd fast float %2033, %1599
  %2038 = fadd fast float %2035, %1600
  %2039 = fmul fast float %1521, %1521
  %2040 = fmul fast float %2039, %2039
  %2041 = fadd fast float %1996, 1.000000e+00
  %2042 = fsub fast float %2041, %2011
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2045 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2046 = fsub fast float 1.000000e+00, %2040
  %2047 = call float @dx.op.binary.f32(i32 36, float %2043, float %2046)  ; FMin(a,b)
  %2048 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2049 = call float @dx.op.binary.f32(i32 35, float %2047, float %2048)  ; FMax(a,b)
  %2050 = fadd fast float %2045, 0xBFE4CCCCC0000000
  %2051 = fmul fast float %2050, 0x4006DB6DA0000000
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2053 = fmul fast float %2052, 2.000000e+00
  %2054 = fsub fast float 3.000000e+00, %2053
  %2055 = bitcast float %1558 to i32
  %2056 = ashr i32 %2055, 1
  %2057 = add nsw i32 %2056, 532487669
  %2058 = bitcast i32 %2057 to float
  %2059 = fsub fast float 1.000000e+00, %2058
  %2060 = bitcast float %2059 to i32
  %2061 = sub nsw i32 2129859010, %2060
  %2062 = bitcast i32 %2061 to float
  %2063 = fmul fast float %2062, 2.000000e+00
  %2064 = bitcast float %1559 to i32
  %2065 = ashr i32 %2064, 1
  %2066 = add nsw i32 %2065, 532487669
  %2067 = bitcast i32 %2066 to float
  %2068 = fsub fast float 1.000000e+00, %2067
  %2069 = bitcast float %2068 to i32
  %2070 = sub nsw i32 2129859010, %2069
  %2071 = bitcast i32 %2070 to float
  %2072 = fmul fast float %2071, 2.000000e+00
  %2073 = bitcast float %1560 to i32
  %2074 = ashr i32 %2073, 1
  %2075 = add nsw i32 %2074, 532487669
  %2076 = bitcast i32 %2075 to float
  %2077 = fsub fast float 1.000000e+00, %2076
  %2078 = bitcast float %2077 to i32
  %2079 = sub nsw i32 2129859010, %2078
  %2080 = bitcast i32 %2079 to float
  %2081 = fmul fast float %2080, 2.000000e+00
  %2082 = fsub fast float 0x4002A9FBE0000000, %2063
  %2083 = fadd fast float %2063, 0x3FD54FDF00000000
  %2084 = bitcast float %2083 to i32
  %2085 = sub nsw i32 2129859010, %2084
  %2086 = bitcast i32 %2085 to float
  %2087 = fmul fast float %2086, %2082
  %2088 = fmul fast float %2087, %2087
  %2089 = fsub fast float 0x4002A9FBE0000000, %2072
  %2090 = fadd fast float %2072, 0x3FD54FDF00000000
  %2091 = bitcast float %2090 to i32
  %2092 = sub nsw i32 2129859010, %2091
  %2093 = bitcast i32 %2092 to float
  %2094 = fmul fast float %2093, %2089
  %2095 = fmul fast float %2094, %2094
  %2096 = fsub fast float 0x4002A9FBE0000000, %2081
  %2097 = fadd fast float %2081, 0x3FD54FDF00000000
  %2098 = bitcast float %2097 to i32
  %2099 = sub nsw i32 2129859010, %2098
  %2100 = bitcast i32 %2099 to float
  %2101 = fmul fast float %2100, %2096
  %2102 = fmul fast float %2101, %2101
  %2103 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2088)  ; FMax(a,b)
  %2104 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2095)  ; FMax(a,b)
  %2105 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2102)  ; FMax(a,b)
  %2106 = fsub fast float 1.000000e+00, %1991
  %2107 = fadd fast float %2106, %2007
  %2108 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  %2109 = fsub fast float 1.000000e+00, %1978
  %2110 = fmul fast float %2049, %2109
  %2111 = fmul fast float %2052, %2052
  %2112 = fmul fast float %2111, %2110
  %2113 = fmul fast float %2112, %2054
  %2114 = fmul fast float %2109, 0xBFE99999A0000000
  %2115 = fmul fast float %2114, %2000
  %2116 = fmul fast float %2115, %2011
  %2117 = fadd fast float %2116, 1.000000e+00
  %2118 = fadd fast float %1561, -1.000000e+00
  %2119 = fmul fast float %2117, %2118
  %2120 = fadd fast float %2119, 1.000000e+00
  %2121 = fsub fast float %2103, %1558
  %2122 = fsub fast float %2104, %1559
  %2123 = fsub fast float %2105, %1560
  %2124 = fmul fast float %2113, %2121
  %2125 = fmul fast float %2113, %2122
  %2126 = fmul fast float %2113, %2123
  %2127 = fadd fast float %2124, %1558
  %2128 = fadd fast float %2125, %1559
  %2129 = fadd fast float %2126, %1560
  %2130 = fsub fast float %97, %1537
  %2131 = fsub fast float %98, %1538
  %2132 = fsub fast float %99, %1539
  %2133 = fmul fast float %2113, %2130
  %2134 = fmul fast float %2113, %2131
  %2135 = fmul fast float %2113, %2132
  %2136 = fadd fast float %2133, %1537
  %2137 = fadd fast float %2134, %1538
  %2138 = fadd fast float %2135, %1539
  %2139 = fmul fast float %2113, %2108
  %2140 = call float @dx.op.unary.f32(i32 7, float %2120)  ; Saturate(value)
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2139, %2141
  %2143 = fadd fast float %2142, %2140
  %2144 = fsub fast float 1.000000e+00, %1521
  %2145 = fmul fast float %2113, %2144
  %2146 = fadd fast float %2145, %1521
  %2147 = call float @dx.op.dot3.f32(i32 55, float %2136, float %2137, float %2138, float %2136, float %2137, float %2138)  ; Dot3(ax,ay,az,bx,by,bz)
  %2148 = call float @dx.op.unary.f32(i32 25, float %2147)  ; Rsqrt(value)
  %2149 = fmul fast float %2136, %2148
  %2150 = fmul fast float %2137, %2148
  %2151 = fmul fast float %2138, %2148
  br label %2152

; <label>:2152                                    ; preds = %1982, %1964
  %2153 = phi float [ %2127, %1982 ], [ %1558, %1964 ]
  %2154 = phi float [ %2128, %1982 ], [ %1559, %1964 ]
  %2155 = phi float [ %2129, %1982 ], [ %1560, %1964 ]
  %2156 = phi float [ %2149, %1982 ], [ %1537, %1964 ]
  %2157 = phi float [ %2150, %1982 ], [ %1538, %1964 ]
  %2158 = phi float [ %2151, %1982 ], [ %1539, %1964 ]
  %2159 = phi float [ %2036, %1982 ], [ %1598, %1964 ]
  %2160 = phi float [ %2037, %1982 ], [ %1599, %1964 ]
  %2161 = phi float [ %2038, %1982 ], [ %1600, %1964 ]
  %2162 = phi float [ %2143, %1982 ], [ %1561, %1964 ]
  %2163 = phi float [ %2146, %1982 ], [ %1521, %1964 ]
  %2164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %2165 = extractvalue %dx.types.CBufRet.f32 %2164, 0
  %2166 = extractvalue %dx.types.CBufRet.f32 %2164, 1
  %2167 = fmul fast float %2165, 5.000000e-01
  %2168 = fmul fast float %2166, 5.000000e-01
  %2169 = extractvalue %dx.types.CBufRet.f32 %2164, 2
  %2170 = extractvalue %dx.types.CBufRet.f32 %2164, 3
  %2171 = fmul fast float %2169, 2.000000e+00
  %2172 = fmul fast float %2170, 2.000000e+00
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.CBufRet.f32 %2173, 1
  %2176 = extractvalue %dx.types.CBufRet.f32 %2173, 2
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.CBufRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.CBufRet.f32 %2177, 2
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = extractvalue %dx.types.CBufRet.f32 %2181, 1
  %2184 = extractvalue %dx.types.CBufRet.f32 %2181, 2
  %2185 = fmul fast float %2174, %97
  %2186 = call float @dx.op.tertiary.f32(i32 46, float %98, float %2175, float %2185)  ; FMad(a,b,c)
  %2187 = call float @dx.op.tertiary.f32(i32 46, float %99, float %2176, float %2186)  ; FMad(a,b,c)
  %2188 = fmul fast float %2178, %97
  %2189 = call float @dx.op.tertiary.f32(i32 46, float %98, float %2179, float %2188)  ; FMad(a,b,c)
  %2190 = call float @dx.op.tertiary.f32(i32 46, float %99, float %2180, float %2189)  ; FMad(a,b,c)
  %2191 = fmul fast float %2182, %97
  %2192 = call float @dx.op.tertiary.f32(i32 46, float %98, float %2183, float %2191)  ; FMad(a,b,c)
  %2193 = call float @dx.op.tertiary.f32(i32 46, float %99, float %2184, float %2192)  ; FMad(a,b,c)
  %2194 = fmul fast float %220, 5.000000e+00
  %2195 = call float @dx.op.unary.f32(i32 22, float %2194)  ; Frc(value)
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 2
  %2198 = extractvalue %dx.types.CBufRet.f32 %2196, 3
  %2199 = fmul fast float %2197, 5.120000e+02
  %2200 = fmul fast float %2198, 5.120000e+02
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.CBufRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.CBufRet.f32 %2201, 2
  %2205 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2206 = fmul fast float %2169, %94
  %2207 = fmul fast float %2170, %95
  %2208 = call float @dx.op.unary.f32(i32 6, float %82)  ; FAbs(value)
  %2209 = fmul fast float %2199, %2169
  %2210 = fmul fast float %2200, %2170
  %2211 = fmul fast float %2208, %2204
  %2212 = fmul fast float %2205, %2208
  %2213 = fsub fast float -0.000000e+00, %2212
  %2214 = fdiv fast float 3.000000e+00, %2211
  %2215 = fdiv fast float 3.000000e+00, %2213
  %2216 = call float @dx.op.binary.f32(i32 36, float %2209, float %2214)  ; FMin(a,b)
  %2217 = call float @dx.op.binary.f32(i32 36, float %2210, float %2215)  ; FMin(a,b)
  %2218 = fmul fast float %2206, %2202
  %2219 = fmul fast float %2207, %2203
  %2220 = fsub fast float %2218, %2204
  %2221 = fsub fast float %2219, %2205
  %2222 = fmul fast float %2220, %2208
  %2223 = fmul fast float %2221, %2208
  %2224 = fsub fast float -0.000000e+00, %2222
  %2225 = fsub fast float -0.000000e+00, %2223
  %2226 = fsub fast float -0.000000e+00, %2208
  %2227 = call float @dx.op.dot3.f32(i32 55, float %2224, float %2225, float %2226, float %2224, float %2225, float %2226)  ; Dot3(ax,ay,az,bx,by,bz)
  %2228 = call float @dx.op.unary.f32(i32 25, float %2227)  ; Rsqrt(value)
  %2229 = fmul fast float %2228, %2224
  %2230 = fmul fast float %2228, %2225
  %2231 = fmul fast float %2228, %2226
  %2232 = fmul fast float %2208, 0x3FEFEB8520000000
  %2233 = fmul fast float %2167, %2216
  %2234 = fmul fast float %2168, %2217
  %2235 = fmul fast float %2233, %2233
  %2236 = fmul fast float %2234, %2234
  %2237 = fadd fast float %2236, %2235
  %2238 = call float @dx.op.unary.f32(i32 24, float %2237)  ; Sqrt(value)
  %2239 = fmul fast float %2238, 3.125000e-02
  br label %2240

; <label>:2240                                    ; preds = %2427, %2152
  %2241 = phi i32 [ 0, %2152 ], [ %2530, %2427 ]
  %2242 = phi float [ 0.000000e+00, %2152 ], [ %2529, %2427 ]
  %2243 = sitofp i32 %2241 to float
  %2244 = fadd fast float %2243, %219
  %2245 = fmul fast float %2244, 0x3FF921FB60000000
  %2246 = call float @dx.op.unary.f32(i32 12, float %2245)  ; Cos(value)
  %2247 = call float @dx.op.unary.f32(i32 13, float %2245)  ; Sin(value)
  %2248 = fsub fast float -0.000000e+00, %2247
  %2249 = call float @dx.op.dot3.f32(i32 55, float %2229, float %2230, float %2231, float %2187, float %2190, float %2193)  ; Dot3(ax,ay,az,bx,by,bz)
  %2250 = call float @dx.op.unary.f32(i32 6, float %2249)  ; FAbs(value)
  %2251 = call float @dx.op.unary.f32(i32 6, float %2250)  ; FAbs(value)
  %2252 = fcmp fast ogt float %2251, 0x3EB0C6F7A0000000
  %2253 = call float @dx.op.dot3.f32(i32 55, float %2246, float %2248, float 0.000000e+00, float %2187, float %2190, float %2193)  ; Dot3(ax,ay,az,bx,by,bz)
  %2254 = fsub fast float -0.000000e+00, %2253
  %2255 = fdiv fast float %2254, %2250
  %2256 = select i1 %2252, float %2255, float 0.000000e+00
  %2257 = fmul fast float %2256, %2256
  %2258 = fadd fast float %2257, 1.000000e+00
  %2259 = call float @dx.op.unary.f32(i32 25, float %2258)  ; Rsqrt(value)
  %2260 = fmul fast float %2256, %2259
  br label %2261

; <label>:2261                                    ; preds = %2261, %2240
  %2262 = phi float [ %2260, %2240 ], [ %2340, %2261 ]
  %2263 = phi float [ 6.000000e+00, %2240 ], [ %2328, %2261 ]
  %2264 = phi i32 [ 0, %2240 ], [ %2341, %2261 ]
  %2265 = sitofp i32 %2264 to float
  %2266 = fadd fast float %2265, %2195
  %2267 = fmul fast float %2266, 5.000000e-01
  %2268 = fmul fast float %2267, %2267
  %2269 = fmul fast float %2268, %2239
  %2270 = call float @dx.op.binary.f32(i32 36, float %2269, float 3.000000e+00)  ; FMin(a,b)
  %2271 = fadd fast float %2270, 1.000000e+00
  %2272 = fmul fast float %2268, %2216
  %2273 = fmul fast float %2268, %2217
  %2274 = fadd fast float %2272, %2171
  %2275 = fmul fast float %2274, %2246
  %2276 = fadd fast float %2275, %2206
  %2277 = fadd fast float %2273, %2172
  %2278 = fmul fast float %2277, %2247
  %2279 = fadd fast float %2278, %2207
  %2280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %51, float %2276, float %2279, float undef, float undef, i32 0, i32 0, i32 undef, float %2271)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2281 = extractvalue %dx.types.ResRet.f32 %2280, 0
  %2282 = fcmp fast ogt float %2281, -1.000000e+00
  %2283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2284 = extractvalue %dx.types.CBufRet.f32 %2283, 1
  %2285 = select i1 %2282, float %2284, float 1.000000e+00
  %2286 = fadd fast float %2281, 1.000000e+00
  %2287 = fmul fast float %2285, %2286
  %2288 = call float @dx.op.unary.f32(i32 6, float %2287)  ; FAbs(value)
  %2289 = call float @dx.op.unary.f32(i32 6, float %2288)  ; FAbs(value)
  %2290 = fmul fast float %2276, %2202
  %2291 = fmul fast float %2279, %2203
  %2292 = fsub fast float %2290, %2204
  %2293 = fsub fast float %2291, %2205
  %2294 = fmul fast float %2292, %2289
  %2295 = fmul fast float %2293, %2289
  %2296 = fsub fast float %2294, %2222
  %2297 = fsub fast float %2295, %2223
  %2298 = fsub fast float %2289, %2232
  %2299 = call float @dx.op.dot3.f32(i32 55, float %2296, float %2297, float %2298, float %2296, float %2297, float %2298)  ; Dot3(ax,ay,az,bx,by,bz)
  %2300 = call float @dx.op.dot3.f32(i32 55, float %2296, float %2297, float %2298, float %2187, float %2190, float %2193)  ; Dot3(ax,ay,az,bx,by,bz)
  %2301 = fsub fast float -0.000000e+00, %2300
  %2302 = call float @dx.op.dot3.f32(i32 55, float %2296, float %2297, float %2298, float %2229, float %2230, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2303 = call float @dx.op.unary.f32(i32 25, float %2299)  ; Rsqrt(value)
  %2304 = fmul fast float %2303, %2302
  %2305 = bitcast float %2299 to i32
  %2306 = ashr i32 %2305, 1
  %2307 = add nsw i32 %2306, 532487669
  %2308 = bitcast i32 %2307 to float
  %2309 = fmul fast float %2308, 0x3FE5555640000000
  %2310 = fsub fast float 0x40000000C0000000, %2309
  %2311 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2312 = fmul fast float %2308, 0x3FCC71C780000000
  %2313 = fsub fast float 0x3FF55555A0000000, %2312
  %2314 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2315 = fmul fast float %2289, 0x3F947AE140000000
  %2316 = fadd fast float %2315, -1.000000e+00
  %2317 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  %2318 = fsub fast float %2314, %2311
  %2319 = fmul fast float %2317, %2318
  %2320 = fadd fast float %2319, %2311
  %2321 = fmul fast float %2288, %82
  %2322 = fcmp fast ogt float %2321, 0.000000e+00
  %2323 = select i1 %2322, float %2320, float 0.000000e+00
  %2324 = fadd fast float %2304, 1.000000e+00
  %2325 = fmul fast float %2323, %2324
  %2326 = fadd fast float %2325, -1.000000e+00
  %2327 = fcmp fast ogt float %2326, %2262
  %2328 = select i1 %2327, float %2301, float %2263
  %2329 = fsub fast float %2301, %2328
  %2330 = fmul fast float %2329, 0x400AAAA4C0000000
  %2331 = fadd fast float %2330, 0xBFDFFFF900000000
  %2332 = call float @dx.op.unary.f32(i32 7, float %2331)  ; Saturate(value)
  %2333 = fmul fast float %2300, 0x401AAAB640000000
  %2334 = fadd fast float %2333, 0x3FF0000700000000
  %2335 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2336 = fmul fast float %2332, 2.000000e+00
  %2337 = fmul fast float %2336, %2335
  %2338 = fsub fast float %2262, %2337
  %2339 = fcmp ole float %2326, %2338
  %2340 = select i1 %2339, float %2338, float %2326
  %2341 = add nuw nsw i32 %2264, 1
  %2342 = icmp eq i32 %2341, 2
  br i1 %2342, label %2343, label %2261

; <label>:2343                                    ; preds = %2261
  %2344 = fsub fast float -0.000000e+00, %2260
  br label %2345

; <label>:2345                                    ; preds = %2345, %2343
  %2346 = phi float [ %2344, %2343 ], [ %2424, %2345 ]
  %2347 = phi float [ 6.000000e+00, %2343 ], [ %2412, %2345 ]
  %2348 = phi i32 [ 0, %2343 ], [ %2425, %2345 ]
  %2349 = sitofp i32 %2348 to float
  %2350 = fadd fast float %2349, %2195
  %2351 = fmul fast float %2350, 5.000000e-01
  %2352 = fmul fast float %2351, %2351
  %2353 = fmul fast float %2352, %2239
  %2354 = call float @dx.op.binary.f32(i32 36, float %2353, float 3.000000e+00)  ; FMin(a,b)
  %2355 = fadd fast float %2354, 1.000000e+00
  %2356 = fmul fast float %2352, %2216
  %2357 = fmul fast float %2352, %2217
  %2358 = fadd fast float %2356, %2171
  %2359 = fmul fast float %2246, %2358
  %2360 = fsub fast float %2206, %2359
  %2361 = fadd fast float %2357, %2172
  %2362 = fmul fast float %2247, %2361
  %2363 = fsub fast float %2207, %2362
  %2364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %51, float %2360, float %2363, float undef, float undef, i32 0, i32 0, i32 undef, float %2355)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  %2366 = fcmp fast ogt float %2365, -1.000000e+00
  %2367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2368 = extractvalue %dx.types.CBufRet.f32 %2367, 1
  %2369 = select i1 %2366, float %2368, float 1.000000e+00
  %2370 = fadd fast float %2365, 1.000000e+00
  %2371 = fmul fast float %2369, %2370
  %2372 = call float @dx.op.unary.f32(i32 6, float %2371)  ; FAbs(value)
  %2373 = call float @dx.op.unary.f32(i32 6, float %2372)  ; FAbs(value)
  %2374 = fmul fast float %2360, %2202
  %2375 = fmul fast float %2363, %2203
  %2376 = fsub fast float %2374, %2204
  %2377 = fsub fast float %2375, %2205
  %2378 = fmul fast float %2376, %2373
  %2379 = fmul fast float %2377, %2373
  %2380 = fsub fast float %2378, %2222
  %2381 = fsub fast float %2379, %2223
  %2382 = fsub fast float %2373, %2232
  %2383 = call float @dx.op.dot3.f32(i32 55, float %2380, float %2381, float %2382, float %2380, float %2381, float %2382)  ; Dot3(ax,ay,az,bx,by,bz)
  %2384 = call float @dx.op.dot3.f32(i32 55, float %2380, float %2381, float %2382, float %2187, float %2190, float %2193)  ; Dot3(ax,ay,az,bx,by,bz)
  %2385 = fsub fast float -0.000000e+00, %2384
  %2386 = call float @dx.op.dot3.f32(i32 55, float %2380, float %2381, float %2382, float %2229, float %2230, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2387 = call float @dx.op.unary.f32(i32 25, float %2383)  ; Rsqrt(value)
  %2388 = fmul fast float %2387, %2386
  %2389 = bitcast float %2383 to i32
  %2390 = ashr i32 %2389, 1
  %2391 = add nsw i32 %2390, 532487669
  %2392 = bitcast i32 %2391 to float
  %2393 = fmul fast float %2392, 0x3FE5555640000000
  %2394 = fsub fast float 0x40000000C0000000, %2393
  %2395 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  %2396 = fmul fast float %2392, 0x3FCC71C780000000
  %2397 = fsub fast float 0x3FF55555A0000000, %2396
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2399 = fmul fast float %2373, 0x3F947AE140000000
  %2400 = fadd fast float %2399, -1.000000e+00
  %2401 = call float @dx.op.unary.f32(i32 7, float %2400)  ; Saturate(value)
  %2402 = fsub fast float %2398, %2395
  %2403 = fmul fast float %2401, %2402
  %2404 = fadd fast float %2403, %2395
  %2405 = fmul fast float %2372, %82
  %2406 = fcmp fast ogt float %2405, 0.000000e+00
  %2407 = select i1 %2406, float %2404, float 0.000000e+00
  %2408 = fadd fast float %2388, 1.000000e+00
  %2409 = fmul fast float %2407, %2408
  %2410 = fadd fast float %2409, -1.000000e+00
  %2411 = fcmp fast ogt float %2410, %2346
  %2412 = select i1 %2411, float %2385, float %2347
  %2413 = fsub fast float %2385, %2412
  %2414 = fmul fast float %2413, 0x400AAAA4C0000000
  %2415 = fadd fast float %2414, 0xBFDFFFF900000000
  %2416 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2417 = fmul fast float %2384, 0x401AAAB640000000
  %2418 = fadd fast float %2417, 0x3FF0000700000000
  %2419 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2420 = fmul fast float %2416, 2.000000e+00
  %2421 = fmul fast float %2420, %2419
  %2422 = fsub fast float %2346, %2421
  %2423 = fcmp ole float %2410, %2422
  %2424 = select i1 %2423, float %2422, float %2410
  %2425 = add nuw nsw i32 %2348, 1
  %2426 = icmp eq i32 %2425, 2
  br i1 %2426, label %2427, label %2345

; <label>:2427                                    ; preds = %2345
  %2428 = fmul fast float %2231, %2248
  %2429 = fmul fast float %2231, %2246
  %2430 = fsub fast float -0.000000e+00, %2429
  %2431 = fmul fast float %2246, %2230
  %2432 = fmul fast float %2229, %2248
  %2433 = fsub fast float %2431, %2432
  %2434 = call float @dx.op.dot3.f32(i32 55, float %2187, float %2190, float %2193, float %2428, float %2430, float %2433)  ; Dot3(ax,ay,az,bx,by,bz)
  %2435 = fmul fast float %2434, %2428
  %2436 = fmul fast float %2434, %2430
  %2437 = fmul fast float %2434, %2433
  %2438 = fsub fast float %2187, %2435
  %2439 = fsub fast float %2190, %2436
  %2440 = fsub fast float %2193, %2437
  %2441 = fmul fast float %2438, %2438
  %2442 = fmul fast float %2439, %2439
  %2443 = fadd fast float %2441, %2442
  %2444 = fmul fast float %2440, %2440
  %2445 = fadd fast float %2443, %2444
  %2446 = call float @dx.op.unary.f32(i32 24, float %2445)  ; Sqrt(value)
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2246, float %2248, float 0.000000e+00, float %2438, float %2439, float %2440)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = call float @dx.op.dot3.f32(i32 55, float %2246, float %2248, float 0.000000e+00, float %2229, float %2230, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = fmul fast float %2448, %2229
  %2450 = fmul fast float %2448, %2230
  %2451 = fmul fast float %2448, %2231
  %2452 = call float @dx.op.dot3.f32(i32 55, float %2449, float %2450, float %2451, float %2438, float %2439, float %2440)  ; Dot3(ax,ay,az,bx,by,bz)
  %2453 = fcmp fast oge float %2447, %2452
  %2454 = fdiv fast float 1.000000e+00, %2446
  %2455 = call float @dx.op.dot3.f32(i32 55, float %2438, float %2439, float %2440, float %2229, float %2230, float %2231)  ; Dot3(ax,ay,az,bx,by,bz)
  %2456 = fmul fast float %2455, %2454
  %2457 = call float @dx.op.unary.f32(i32 7, float %2456)  ; Saturate(value)
  %2458 = fmul fast float %2457, %2457
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = bitcast float %2459 to i32
  %2461 = ashr i32 %2460, 1
  %2462 = add nsw i32 %2461, 532487669
  %2463 = bitcast i32 %2462 to float
  %2464 = call float @dx.op.unary.f32(i32 6, float %2457)  ; FAbs(value)
  %2465 = fmul fast float %2464, 0x3FC40AE960000000
  %2466 = fsub fast float 0x3FF921FB60000000, %2465
  %2467 = fsub fast float 1.000000e+00, %2464
  %2468 = bitcast float %2467 to i32
  %2469 = ashr i32 %2468, 1
  %2470 = add nsw i32 %2469, 532487669
  %2471 = bitcast i32 %2470 to float
  %2472 = fmul fast float %2471, %2466
  %2473 = fcmp fast oge float %2457, 0.000000e+00
  %2474 = fsub fast float 0x400921FB60000000, %2472
  %2475 = select i1 %2473, float %2472, float %2474
  %2476 = fsub fast float -0.000000e+00, %2463
  %2477 = select i1 %2453, float %2476, float %2463
  %2478 = fsub fast float -0.000000e+00, %2475
  %2479 = select i1 %2453, float %2478, float %2475
  %2480 = call float @dx.op.unary.f32(i32 6, float %2340)  ; FAbs(value)
  %2481 = fmul fast float %2480, 0x3FC40AE960000000
  %2482 = fsub fast float 0x3FF921FB60000000, %2481
  %2483 = fsub fast float 1.000000e+00, %2480
  %2484 = bitcast float %2483 to i32
  %2485 = ashr i32 %2484, 1
  %2486 = add nsw i32 %2485, 532487669
  %2487 = bitcast i32 %2486 to float
  %2488 = fmul fast float %2487, %2482
  %2489 = fcmp fast oge float %2340, 0.000000e+00
  %2490 = fsub fast float 0x400921FB60000000, %2488
  %2491 = select i1 %2489, float %2488, float %2490
  %2492 = call float @dx.op.unary.f32(i32 6, float %2424)  ; FAbs(value)
  %2493 = fmul fast float %2492, 0x3FC40AE960000000
  %2494 = fsub fast float 0x3FF921FB60000000, %2493
  %2495 = fsub fast float 1.000000e+00, %2492
  %2496 = bitcast float %2495 to i32
  %2497 = ashr i32 %2496, 1
  %2498 = add nsw i32 %2497, 532487669
  %2499 = bitcast i32 %2498 to float
  %2500 = fmul fast float %2499, %2494
  %2501 = fcmp fast oge float %2424, 0.000000e+00
  %2502 = fsub fast float 0x400921FB60000000, %2500
  %2503 = select i1 %2501, float %2500, float %2502
  %2504 = fsub fast float -0.000000e+00, %2479
  %2505 = fsub fast float %2504, %2491
  %2506 = call float @dx.op.binary.f32(i32 35, float %2505, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2507 = call float @dx.op.binary.f32(i32 36, float %2506, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2508 = fadd fast float %2479, %2507
  %2509 = fsub fast float %2503, %2479
  %2510 = call float @dx.op.binary.f32(i32 35, float %2509, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2511 = call float @dx.op.binary.f32(i32 36, float %2510, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2512 = fadd fast float %2479, %2511
  %2513 = fmul fast float %2508, 2.000000e+00
  %2514 = fsub fast float %2513, %2479
  %2515 = call float @dx.op.unary.f32(i32 12, float %2514)  ; Cos(value)
  %2516 = fsub fast float -0.000000e+00, %2515
  %2517 = fmul fast float %2512, 2.000000e+00
  %2518 = fsub fast float %2517, %2479
  %2519 = call float @dx.op.unary.f32(i32 12, float %2518)  ; Cos(value)
  %2520 = fmul fast float %2457, 2.000000e+00
  %2521 = fadd fast float %2512, %2508
  %2522 = fmul fast float %2477, %2521
  %2523 = fmul fast float %2522, 2.000000e+00
  %2524 = fsub fast float %2516, %2519
  %2525 = fadd fast float %2524, %2520
  %2526 = fadd fast float %2525, %2523
  %2527 = fmul fast float %2446, 2.500000e-01
  %2528 = fmul fast float %2527, %2526
  %2529 = fadd fast float %2528, %2242
  %2530 = add nuw nsw i32 %2241, 1
  %2531 = icmp eq i32 %2530, 2
  br i1 %2531, label %2532, label %2240

; <label>:2532                                    ; preds = %2427
  %2533 = fmul fast float %2529, 5.000000e-01
  %2534 = fsub fast float -0.000000e+00, %144
  %2535 = call float @dx.op.unary.f32(i32 84, float %82)  ; DerivCoarseY(value)
  %2536 = call float @dx.op.unary.f32(i32 6, float %2535)  ; FAbs(value)
  %2537 = call float @dx.op.unary.f32(i32 83, float %82)  ; DerivCoarseX(value)
  %2538 = call float @dx.op.unary.f32(i32 6, float %2537)  ; FAbs(value)
  %2539 = call float @dx.op.binary.f32(i32 35, float %2538, float %2536)  ; FMax(a,b)
  %2540 = fcmp fast ogt float %81, 9.843750e-01
  %2541 = call float @dx.op.dot3.f32(i32 55, float %142, float %143, float %144, float %142, float %143, float %144)  ; Dot3(ax,ay,az,bx,by,bz)
  %2542 = call float @dx.op.unary.f32(i32 25, float %2541)  ; Rsqrt(value)
  %2543 = fmul fast float %2542, %142
  %2544 = fmul fast float %2542, %143
  %2545 = fmul fast float %2542, %144
  %2546 = fsub fast float -0.000000e+00, %2543
  %2547 = fsub fast float -0.000000e+00, %2544
  %2548 = fsub fast float -0.000000e+00, %2545
  %2549 = select i1 %204, float 0.000000e+00, float %2155
  %2550 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2157, float %2158, float %2546, float %2547, float %2548)  ; Dot3(ax,ay,az,bx,by,bz)
  %2551 = call float @dx.op.unary.f32(i32 7, float %2550)  ; Saturate(value)
  %2552 = call float @dx.op.dot3.f32(i32 55, float %2543, float %2544, float %2545, float %2156, float %2157, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2553 = fmul fast float %2552, 2.000000e+00
  %2554 = fmul fast float %2553, %2156
  %2555 = fmul fast float %2553, %2157
  %2556 = fmul fast float %2553, %2158
  %2557 = fsub fast float %2543, %2554
  %2558 = fsub fast float %2544, %2555
  %2559 = fsub fast float %2545, %2556
  %2560 = call float @dx.op.binary.f32(i32 36, float %2163, float %2533)  ; FMin(a,b)
  %2561 = fsub fast float 1.000000e+00, %2560
  %2562 = bitcast float %2561 to i32
  %2563 = ashr i32 %2562, 1
  %2564 = add nsw i32 %2563, 532487669
  %2565 = bitcast i32 %2564 to float
  %2566 = fsub fast float 1.000000e+00, %2162
  %2567 = call float @dx.op.binary.f32(i32 35, float %2566, float 0x3F847AE140000000)  ; FMax(a,b)
  %2568 = fmul fast float %2567, %2567
  %2569 = fmul fast float %2568, %2568
  %2570 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  %2571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %50, float %2565, float %2569, float %2570, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  %2573 = fsub fast float 1.000000e+00, %2163
  %2574 = bitcast float %2573 to i32
  %2575 = sub nsw i32 2129859010, %2574
  %2576 = bitcast i32 %2575 to float
  %2577 = call float @dx.op.dot3.f32(i32 55, float %66, float %62, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2578 = fmul fast float %2577, 0x3FD20DD760000000
  %2579 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %2580 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %2581 = fcmp fast oeq float %2580, 0.000000e+00
  %2582 = fcmp fast oeq float %2579, 0.000000e+00
  %2583 = or i1 %2582, %2581
  br i1 %2583, label %2613, label %2584

; <label>:2584                                    ; preds = %2532
  %2585 = fsub fast float -0.000000e+00, %69
  %2586 = fsub fast float -0.000000e+00, %67
  %2587 = call float @dx.op.unary.f32(i32 24, float %2580)  ; Sqrt(value)
  %2588 = fdiv fast float %2587, %2579
  %2589 = fcmp fast ogt float %2588, 0x3FFB6F8900000000
  %2590 = select i1 %2589, float 0x3FFB6F8900000000, float %2588
  %2591 = fmul fast float %2590, 0x3FE8A23460000000
  %2592 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2593 = call float @dx.op.binary.f32(i32 35, float %2590, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2594 = fmul fast float %2592, %2579
  %2595 = fmul fast float %2593, 0x3FF279A740000000
  %2596 = fadd fast float %2595, -1.000000e+00
  %2597 = call float @dx.op.dot3.f32(i32 55, float %2585, float %2586, float %68, float %2585, float %2586, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %2598 = call float @dx.op.unary.f32(i32 25, float %2597)  ; Rsqrt(value)
  %2599 = fmul fast float %2598, %2585
  %2600 = fmul fast float %2598, %2586
  %2601 = fmul fast float %2598, %68
  %2602 = fmul fast float %2596, %2596
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2593, 0x40005F8BE0000000
  %2605 = fsub fast float 0x400C5BF8A0000000, %2604
  %2606 = fdiv fast float %2594, %2605
  %2607 = fmul fast float %2606, 0x3FEE31C3C0000000
  %2608 = fmul fast float %2607, %2603
  %2609 = fmul fast float %2593, 0x3FDACB7480000000
  %2610 = fadd fast float %2609, 0xBFD7347680000000
  %2611 = fmul fast float %2610, %2606
  %2612 = fmul fast float %2611, %2603
  br label %2613

; <label>:2613                                    ; preds = %2584, %2532
  %2614 = phi float [ %2599, %2584 ], [ 0.000000e+00, %2532 ]
  %2615 = phi float [ %2600, %2584 ], [ 0.000000e+00, %2532 ]
  %2616 = phi float [ %2601, %2584 ], [ 0.000000e+00, %2532 ]
  %2617 = phi float [ %2608, %2584 ], [ 0.000000e+00, %2532 ]
  %2618 = phi float [ %2612, %2584 ], [ 0.000000e+00, %2532 ]
  %2619 = call float @dx.op.dot3.f32(i32 55, float %2614, float %2615, float %2616, float %2156, float %2157, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2620 = fmul fast float %2619, 0x3FDF454380000000
  %2621 = fmul fast float %2619, %2619
  %2622 = fmul fast float %2621, 0x3FEE471020000000
  %2623 = fadd fast float %2622, 0xBFD42F6020000000
  %2624 = fmul fast float %2579, 0x3FD20DD760000000
  %2625 = fmul fast float %2623, %2618
  %2626 = fadd fast float %2625, %2624
  %2627 = fmul fast float %2620, %2617
  %2628 = fadd fast float %2626, %2627
  %2629 = fsub fast float %2626, %2627
  %2630 = call float @dx.op.dot3.f32(i32 55, float %2614, float %2615, float %2616, float %2557, float %2558, float %2559)  ; Dot3(ax,ay,az,bx,by,bz)
  %2631 = fmul fast float %2630, 0x3FDF454380000000
  %2632 = fmul fast float %2630, %2630
  %2633 = fmul fast float %2632, 0x3FEE471020000000
  %2634 = fadd fast float %2633, 0xBFD42F6020000000
  %2635 = call float @dx.op.dot3.f32(i32 55, float %2579, float %2617, float %2618, float 0x3FD20DD760000000, float %2631, float %2634)  ; Dot3(ax,ay,az,bx,by,bz)
  %2636 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %2637 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %2638 = fcmp fast oeq float %2637, 0.000000e+00
  %2639 = fcmp fast oeq float %2636, 0.000000e+00
  %2640 = or i1 %2639, %2638
  br i1 %2640, label %2670, label %2641

; <label>:2641                                    ; preds = %2613
  %2642 = fsub fast float -0.000000e+00, %65
  %2643 = fsub fast float -0.000000e+00, %63
  %2644 = call float @dx.op.unary.f32(i32 24, float %2637)  ; Sqrt(value)
  %2645 = fdiv fast float %2644, %2636
  %2646 = fcmp fast ogt float %2645, 0x3FFB6F8900000000
  %2647 = select i1 %2646, float 0x3FFB6F8900000000, float %2645
  %2648 = fmul fast float %2647, 0x3FE8A23460000000
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2650 = call float @dx.op.binary.f32(i32 35, float %2647, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2651 = fmul fast float %2649, %2636
  %2652 = fmul fast float %2650, 0x3FF279A740000000
  %2653 = fadd fast float %2652, -1.000000e+00
  %2654 = call float @dx.op.dot3.f32(i32 55, float %2642, float %2643, float %64, float %2642, float %2643, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %2655 = call float @dx.op.unary.f32(i32 25, float %2654)  ; Rsqrt(value)
  %2656 = fmul fast float %2655, %2642
  %2657 = fmul fast float %2655, %2643
  %2658 = fmul fast float %2655, %64
  %2659 = fmul fast float %2653, %2653
  %2660 = fsub fast float 1.000000e+00, %2659
  %2661 = fmul fast float %2650, 0x40005F8BE0000000
  %2662 = fsub fast float 0x400C5BF8A0000000, %2661
  %2663 = fdiv fast float %2651, %2662
  %2664 = fmul fast float %2663, 0x3FEE31C3C0000000
  %2665 = fmul fast float %2664, %2660
  %2666 = fmul fast float %2650, 0x3FDACB7480000000
  %2667 = fadd fast float %2666, 0xBFD7347680000000
  %2668 = fmul fast float %2667, %2663
  %2669 = fmul fast float %2668, %2660
  br label %2670

; <label>:2670                                    ; preds = %2641, %2613
  %2671 = phi float [ %2656, %2641 ], [ 0.000000e+00, %2613 ]
  %2672 = phi float [ %2657, %2641 ], [ 0.000000e+00, %2613 ]
  %2673 = phi float [ %2658, %2641 ], [ 0.000000e+00, %2613 ]
  %2674 = phi float [ %2665, %2641 ], [ 0.000000e+00, %2613 ]
  %2675 = phi float [ %2669, %2641 ], [ 0.000000e+00, %2613 ]
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2671, float %2672, float %2673, float %2156, float %2157, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = fmul fast float %2676, 0x3FDF454380000000
  %2678 = fmul fast float %2676, %2676
  %2679 = fmul fast float %2678, 0x3FEE471020000000
  %2680 = fadd fast float %2679, 0xBFD42F6020000000
  %2681 = fmul fast float %2636, 0x3FD20DD760000000
  %2682 = fmul fast float %2680, %2675
  %2683 = fadd fast float %2682, %2681
  %2684 = fmul fast float %2677, %2674
  %2685 = fadd fast float %2683, %2684
  %2686 = fsub fast float %2683, %2684
  %2687 = call float @dx.op.dot3.f32(i32 55, float %2671, float %2672, float %2673, float %2557, float %2558, float %2559)  ; Dot3(ax,ay,az,bx,by,bz)
  %2688 = fmul fast float %2687, 0x3FDF454380000000
  %2689 = fmul fast float %2687, %2687
  %2690 = fmul fast float %2689, 0x3FEE471020000000
  %2691 = fadd fast float %2690, 0xBFD42F6020000000
  %2692 = call float @dx.op.dot3.f32(i32 55, float %2636, float %2674, float %2675, float 0x3FD20DD760000000, float %2688, float %2691)  ; Dot3(ax,ay,az,bx,by,bz)
  %2693 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %2694 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %2695 = fcmp fast oeq float %2694, 0.000000e+00
  %2696 = fcmp fast oeq float %2693, 0.000000e+00
  %2697 = or i1 %2696, %2695
  br i1 %2697, label %2727, label %2698

; <label>:2698                                    ; preds = %2670
  %2699 = fsub fast float -0.000000e+00, %61
  %2700 = fsub fast float -0.000000e+00, %59
  %2701 = call float @dx.op.unary.f32(i32 24, float %2694)  ; Sqrt(value)
  %2702 = fdiv fast float %2701, %2693
  %2703 = fcmp fast ogt float %2702, 0x3FFB6F8900000000
  %2704 = select i1 %2703, float 0x3FFB6F8900000000, float %2702
  %2705 = fmul fast float %2704, 0x3FE8A23460000000
  %2706 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2707 = call float @dx.op.binary.f32(i32 35, float %2704, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2708 = fmul fast float %2706, %2693
  %2709 = fmul fast float %2707, 0x3FF279A740000000
  %2710 = fadd fast float %2709, -1.000000e+00
  %2711 = call float @dx.op.dot3.f32(i32 55, float %2699, float %2700, float %60, float %2699, float %2700, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %2712 = call float @dx.op.unary.f32(i32 25, float %2711)  ; Rsqrt(value)
  %2713 = fmul fast float %2712, %2699
  %2714 = fmul fast float %2712, %2700
  %2715 = fmul fast float %2712, %60
  %2716 = fmul fast float %2710, %2710
  %2717 = fsub fast float 1.000000e+00, %2716
  %2718 = fmul fast float %2707, 0x40005F8BE0000000
  %2719 = fsub fast float 0x400C5BF8A0000000, %2718
  %2720 = fdiv fast float %2708, %2719
  %2721 = fmul fast float %2720, 0x3FEE31C3C0000000
  %2722 = fmul fast float %2721, %2717
  %2723 = fmul fast float %2707, 0x3FDACB7480000000
  %2724 = fadd fast float %2723, 0xBFD7347680000000
  %2725 = fmul fast float %2724, %2720
  %2726 = fmul fast float %2725, %2717
  br label %2727

; <label>:2727                                    ; preds = %2698, %2670
  %2728 = phi float [ %2713, %2698 ], [ 0.000000e+00, %2670 ]
  %2729 = phi float [ %2714, %2698 ], [ 0.000000e+00, %2670 ]
  %2730 = phi float [ %2715, %2698 ], [ 0.000000e+00, %2670 ]
  %2731 = phi float [ %2722, %2698 ], [ 0.000000e+00, %2670 ]
  %2732 = phi float [ %2726, %2698 ], [ 0.000000e+00, %2670 ]
  %2733 = call float @dx.op.dot3.f32(i32 55, float %2728, float %2729, float %2730, float %2156, float %2157, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %2734 = fmul fast float %2733, 0x3FDF454380000000
  %2735 = fmul fast float %2733, %2733
  %2736 = fmul fast float %2735, 0x3FEE471020000000
  %2737 = fadd fast float %2736, 0xBFD42F6020000000
  %2738 = fmul fast float %2693, 0x3FD20DD760000000
  %2739 = fmul fast float %2737, %2732
  %2740 = fadd fast float %2739, %2738
  %2741 = fmul fast float %2734, %2731
  %2742 = fadd fast float %2740, %2741
  %2743 = fsub fast float %2740, %2741
  %2744 = call float @dx.op.dot3.f32(i32 55, float %2728, float %2729, float %2730, float %2557, float %2558, float %2559)  ; Dot3(ax,ay,az,bx,by,bz)
  %2745 = fmul fast float %2744, 0x3FDF454380000000
  %2746 = fmul fast float %2744, %2744
  %2747 = fmul fast float %2746, 0x3FEE471020000000
  %2748 = fadd fast float %2747, 0xBFD42F6020000000
  %2749 = call float @dx.op.dot3.f32(i32 55, float %2693, float %2731, float %2732, float 0x3FD20DD760000000, float %2745, float %2748)  ; Dot3(ax,ay,az,bx,by,bz)
  %2750 = call float @dx.op.binary.f32(i32 35, float %2628, float 0.000000e+00)  ; FMax(a,b)
  %2751 = call float @dx.op.binary.f32(i32 35, float %2685, float 0.000000e+00)  ; FMax(a,b)
  %2752 = call float @dx.op.binary.f32(i32 35, float %2742, float 0.000000e+00)  ; FMax(a,b)
  %2753 = call float @dx.op.binary.f32(i32 35, float %2629, float 0.000000e+00)  ; FMax(a,b)
  %2754 = call float @dx.op.binary.f32(i32 35, float %2686, float 0.000000e+00)  ; FMax(a,b)
  %2755 = call float @dx.op.binary.f32(i32 35, float %2743, float 0.000000e+00)  ; FMax(a,b)
  %2756 = call float @dx.op.binary.f32(i32 35, float %2635, float 0.000000e+00)  ; FMax(a,b)
  %2757 = call float @dx.op.binary.f32(i32 35, float %2692, float 0.000000e+00)  ; FMax(a,b)
  %2758 = call float @dx.op.binary.f32(i32 35, float %2749, float 0.000000e+00)  ; FMax(a,b)
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 0
  %2761 = call float @dx.op.binary.f32(i32 36, float %2159, float %2760)  ; FMin(a,b)
  %2762 = fmul fast float %2761, %2561
  %2763 = fsub fast float 1.000000e+00, %2762
  %2764 = bitcast float %2763 to i32
  %2765 = sub nsw i32 2129859010, %2764
  %2766 = bitcast i32 %2765 to float
  %2767 = call float @dx.op.binary.f32(i32 36, float %2160, float %2760)  ; FMin(a,b)
  %2768 = fmul fast float %2767, %2561
  %2769 = fsub fast float 1.000000e+00, %2768
  %2770 = bitcast float %2769 to i32
  %2771 = sub nsw i32 2129859010, %2770
  %2772 = bitcast i32 %2771 to float
  %2773 = call float @dx.op.binary.f32(i32 36, float %2161, float %2760)  ; FMin(a,b)
  %2774 = fmul fast float %2773, %2561
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = bitcast float %2775 to i32
  %2777 = sub nsw i32 2129859010, %2776
  %2778 = bitcast i32 %2777 to float
  %2779 = fmul fast float %2750, %2560
  %2780 = fmul fast float %2779, %2766
  %2781 = fmul fast float %2751, %2560
  %2782 = fmul fast float %2781, %2772
  %2783 = fmul fast float %2752, %2560
  %2784 = fmul fast float %2783, %2778
  %2785 = call float @dx.op.binary.f32(i32 36, float %2153, float %2760)  ; FMin(a,b)
  %2786 = fmul fast float %2785, %2561
  %2787 = fsub fast float 1.000000e+00, %2786
  %2788 = bitcast float %2787 to i32
  %2789 = sub nsw i32 2129859010, %2788
  %2790 = bitcast i32 %2789 to float
  %2791 = call float @dx.op.binary.f32(i32 36, float %2154, float %2760)  ; FMin(a,b)
  %2792 = fmul fast float %2791, %2561
  %2793 = fsub fast float 1.000000e+00, %2792
  %2794 = bitcast float %2793 to i32
  %2795 = sub nsw i32 2129859010, %2794
  %2796 = bitcast i32 %2795 to float
  %2797 = call float @dx.op.binary.f32(i32 36, float %2549, float %2760)  ; FMin(a,b)
  %2798 = fmul fast float %2797, %2561
  %2799 = fsub fast float 1.000000e+00, %2798
  %2800 = bitcast float %2799 to i32
  %2801 = sub nsw i32 2129859010, %2800
  %2802 = bitcast i32 %2801 to float
  %2803 = fmul fast float %2756, %2560
  %2804 = fmul fast float %2803, %2790
  %2805 = fmul fast float %2757, %2560
  %2806 = fmul fast float %2805, %2796
  %2807 = fmul fast float %2758, %2560
  %2808 = fmul fast float %2807, %2802
  %2809 = call float @dx.op.dot3.f32(i32 55, float %2780, float %2782, float %2784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2810 = select i1 %204, float 0.000000e+00, float %2780
  %2811 = select i1 %204, float %2809, float %2782
  %2812 = select i1 %204, float 0.000000e+00, float %2784
  %2813 = call float @dx.op.dot3.f32(i32 55, float %2753, float %2754, float %2755, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2814 = select i1 %204, float 0.000000e+00, float %2753
  %2815 = select i1 %204, float %2813, float %2754
  %2816 = select i1 %204, float 0.000000e+00, float %2755
  %2817 = call float @dx.op.dot3.f32(i32 55, float %2804, float %2806, float %2808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2818 = select i1 %204, float 0.000000e+00, float %2804
  %2819 = select i1 %204, float %2817, float %2806
  %2820 = select i1 %204, float 0.000000e+00, float %2808
  %2821 = fmul fast float %911, %911
  %2822 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2823 = fmul fast float %2551, 9.843750e-01
  %2824 = fmul fast float %2162, 9.843750e-01
  %2825 = fadd fast float %2823, 7.812500e-03
  %2826 = fadd fast float %2824, 7.812500e-03
  %2827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %2825, float %2826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2828 = extractvalue %dx.types.ResRet.f32 %2827, 0
  %2829 = extractvalue %dx.types.ResRet.f32 %2827, 1
  %2830 = extractvalue %dx.types.ResRet.f32 %2827, 2
  %2831 = extractvalue %dx.types.ResRet.f32 %2827, 3
  %2832 = fsub fast float 1.000000e+00, %2822
  %2833 = fsub fast float %2830, %2828
  %2834 = fsub fast float %2831, %2829
  %2835 = fmul fast float %2833, %2832
  %2836 = fmul fast float %2834, %2832
  %2837 = fadd fast float %2835, %2828
  %2838 = fadd fast float %2836, %2829
  %2839 = fmul fast float %2837, %2153
  %2840 = fmul fast float %2837, %2154
  %2841 = fmul fast float %2837, %2549
  %2842 = fadd fast float %2839, %2838
  %2843 = fadd fast float %2840, %2838
  %2844 = fadd fast float %2841, %2838
  %2845 = fcmp fast ogt float %1511, 0.000000e+00
  br i1 %2845, label %2846, label %2872

; <label>:2846                                    ; preds = %2727
  %2847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1511, float %2551, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2848 = extractvalue %dx.types.ResRet.f32 %2847, 0
  %2849 = extractvalue %dx.types.ResRet.f32 %2847, 1
  %2850 = extractvalue %dx.types.ResRet.f32 %2847, 2
  %2851 = fadd fast float %2848, -5.000000e-01
  %2852 = fadd fast float %2849, -5.000000e-01
  %2853 = fadd fast float %2850, -5.000000e-01
  %2854 = fsub fast float 1.000000e+00, %2153
  %2855 = fsub fast float 1.000000e+00, %2154
  %2856 = fsub fast float 1.000000e+00, %2549
  %2857 = fmul fast float %2153, 4.000000e+00
  %2858 = fmul fast float %2857, %2854
  %2859 = fmul fast float %2858, %2851
  %2860 = fmul fast float %2154, 4.000000e+00
  %2861 = fmul fast float %2860, %2855
  %2862 = fmul fast float %2861, %2852
  %2863 = fmul fast float %2549, 4.000000e+00
  %2864 = fmul fast float %2863, %2856
  %2865 = fmul fast float %2864, %2853
  %2866 = fadd fast float %2859, %2842
  %2867 = fadd fast float %2862, %2843
  %2868 = fadd fast float %2865, %2844
  %2869 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2870 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2871 = call float @dx.op.unary.f32(i32 7, float %2868)  ; Saturate(value)
  br label %2872

; <label>:2872                                    ; preds = %2846, %2727
  %2873 = phi float [ %2869, %2846 ], [ %2842, %2727 ]
  %2874 = phi float [ %2870, %2846 ], [ %2843, %2727 ]
  %2875 = phi float [ %2871, %2846 ], [ %2844, %2727 ]
  %2876 = call float @dx.op.binary.f32(i32 35, float %2874, float %2875)  ; FMax(a,b)
  %2877 = call float @dx.op.binary.f32(i32 35, float %2873, float %2876)  ; FMax(a,b)
  %2878 = fsub fast float 1.000000e+00, %2877
  %2879 = fmul fast float %2877, %2162
  %2880 = fadd fast float %2879, %2162
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 2
  %2883 = extractvalue %dx.types.CBufRet.f32 %2881, 3
  %2884 = fmul fast float %2880, %2882
  %2885 = fadd fast float %2884, %2883
  %2886 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  %2887 = fsub fast float 1.000000e+00, %2572
  %2888 = fadd fast float %2887, %2886
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2890 = fcmp fast olt float %2889, 1.000000e+00
  br i1 %2890, label %2891, label %3367

; <label>:2891                                    ; preds = %2872
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 2
  %2894 = extractvalue %dx.types.CBufRet.f32 %2892, 3
  %2895 = fmul fast float %2893, %94
  %2896 = fmul fast float %2894, %95
  %2897 = fptoui float %2895 to i32
  %2898 = fptoui float %2896 to i32
  %2899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2900 = extractvalue %dx.types.CBufRet.f32 %2899, 0
  %2901 = extractvalue %dx.types.CBufRet.f32 %2899, 2
  %2902 = extractvalue %dx.types.CBufRet.f32 %2899, 3
  %2903 = fadd fast float %82, -4.000000e+00
  %2904 = call float @dx.op.binary.f32(i32 35, float %2903, float 0.000000e+00)  ; FMax(a,b)
  %2905 = fadd fast float %2904, %2900
  %2906 = fmul fast float %2905, %2901
  %2907 = call float @dx.op.unary.f32(i32 23, float %2906)  ; Log(value)
  %2908 = fmul fast float %2907, %2902
  %2909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2910 = extractvalue %dx.types.CBufRet.f32 %2909, 2
  %2911 = fmul fast float %2908, %2910
  %2912 = call float @dx.op.unary.f32(i32 7, float %2911)  ; Saturate(value)
  %2913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2914 = extractvalue %dx.types.CBufRet.i32 %2913, 1
  %2915 = add i32 %2914, -1
  %2916 = uitofp i32 %2914 to float
  %2917 = fmul fast float %2916, %2912
  %2918 = fptoui float %2917 to i32
  %2919 = call i32 @dx.op.binary.i32(i32 40, i32 %2918, i32 %2915)  ; UMin(a,b)
  %2920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.i32 %2920, 2
  %2922 = extractvalue %dx.types.CBufRet.i32 %2920, 3
  %2923 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2898, i32 %2921, i32 %2897)  ; UMad(a,b,c)
  %2924 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2919, i32 %2922, i32 %2923)  ; UMad(a,b,c)
  %2925 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %2926 = fptoui float %2925 to i32
  %2927 = lshr i32 %2926, 5
  %2928 = call i32 @dx.op.binary.i32(i32 40, i32 %2927, i32 8191)  ; UMin(a,b)
  %2929 = fsub fast float %1965, %144
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2931 = fcmp fast ogt float %2930, 0.000000e+00
  %2932 = fcmp fast ogt float %2559, 0.000000e+00
  %2933 = and i1 %2932, %2931
  br i1 %2933, label %2934, label %2963

; <label>:2934                                    ; preds = %2891
  %2935 = call float @dx.op.dot3.f32(i32 55, float %2557, float %2558, float %2559, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2936 = call float @dx.op.binary.f32(i32 35, float %2935, float -1.000000e+00)  ; FMax(a,b)
  %2937 = call float @dx.op.binary.f32(i32 36, float %2936, float 1.000000e+00)  ; FMin(a,b)
  %2938 = fmul fast float %2937, %2937
  %2939 = fsub fast float 1.000000e+00, %2938
  %2940 = fmul fast float %2939, 0x3FFC6E2300000000
  %2941 = fsub fast float 1.000000e+00, %2940
  %2942 = fcmp fast ogt float %2941, 0.000000e+00
  %2943 = call float @dx.op.unary.f32(i32 24, float %2941)  ; Sqrt(value)
  %2944 = fsub fast float 1.000000e+00, %2943
  %2945 = call float @dx.op.unary.f32(i32 23, float %2944)  ; Log(value)
  %2946 = fmul fast float %2945, 5.000000e+00
  %2947 = call float @dx.op.unary.f32(i32 21, float %2946)  ; Exp(value)
  %2948 = fmul fast float %2947, 0x3FEF591A60000000
  %2949 = fadd fast float %2948, 0x3F94DCB540000000
  %2950 = select i1 %2942, float %2949, float 1.000000e+00
  %2951 = fcmp fast oge float %2950, 1.000000e+00
  %2952 = fmul fast float %2935, 2.000000e+00
  %2953 = fadd fast float %2952, %2559
  %2954 = select i1 %2951, float %2953, float %2559
  %2955 = fsub fast float %2954, %2559
  %2956 = fmul fast float %2955, %2930
  %2957 = fadd fast float %2956, %2559
  %2958 = call float @dx.op.dot3.f32(i32 55, float %2557, float %2558, float %2957, float %2557, float %2558, float %2957)  ; Dot3(ax,ay,az,bx,by,bz)
  %2959 = call float @dx.op.unary.f32(i32 25, float %2958)  ; Rsqrt(value)
  %2960 = fmul fast float %2959, %2557
  %2961 = fmul fast float %2959, %2558
  %2962 = fmul fast float %2957, %2959
  br label %2963

; <label>:2963                                    ; preds = %2934, %2891
  %2964 = phi float [ %2960, %2934 ], [ %2557, %2891 ]
  %2965 = phi float [ %2961, %2934 ], [ %2558, %2891 ]
  %2966 = phi float [ %2962, %2934 ], [ %2559, %2891 ]
  %2967 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2968 = extractvalue %dx.types.CBufRet.i32 %2967, 2
  %2969 = add nsw i32 %2968, -1
  %2970 = call i32 @dx.op.binary.i32(i32 37, i32 %2969, i32 0)  ; IMax(a,b)
  %2971 = shl i32 %2928, 2
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = lshr i32 %2973, 16
  %2975 = and i32 %2973, 65535
  %2976 = lshr i32 %2973, 21
  %2977 = lshr i32 %2975, 5
  %2978 = call i32 @dx.op.binary.i32(i32 40, i32 %2977, i32 %2970)  ; UMin(a,b)
  %2979 = icmp ugt i32 %2976, %2978
  br i1 %2979, label %3343, label %2980

; <label>:2980                                    ; preds = %2963
  br label %2981

; <label>:2981                                    ; preds = %3335, %2980
  %2982 = phi float [ %3336, %3335 ], [ 0.000000e+00, %2980 ]
  %2983 = phi float [ %3337, %3335 ], [ 0.000000e+00, %2980 ]
  %2984 = phi float [ %3338, %3335 ], [ 0.000000e+00, %2980 ]
  %2985 = phi float [ %3339, %3335 ], [ 1.000000e+00, %2980 ]
  %2986 = phi i32 [ %3340, %3335 ], [ %2976, %2980 ]
  %2987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2988 = extractvalue %dx.types.CBufRet.i32 %2987, 2
  %2989 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2924, i32 %2988, i32 %2986)  ; UMad(a,b,c)
  %2990 = shl i32 %2989, 2
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = shl i32 %2986, 5
  %2994 = sub nsw i32 %2974, %2993
  %2995 = call i32 @dx.op.binary.i32(i32 37, i32 %2994, i32 0)  ; IMax(a,b)
  %2996 = call i32 @dx.op.binary.i32(i32 38, i32 %2995, i32 31)  ; IMin(a,b)
  %2997 = sub nsw i32 1, %2974
  %2998 = add nsw i32 %2997, %2975
  %2999 = call i32 @dx.op.binary.i32(i32 37, i32 %2998, i32 0)  ; IMax(a,b)
  %3000 = call i32 @dx.op.binary.i32(i32 38, i32 %2999, i32 32)  ; IMin(a,b)
  %3001 = and i32 %3000, 31
  %3002 = shl i32 -1, %3001
  %3003 = xor i32 %3002, -1
  %3004 = and i32 %2996, 31
  %3005 = shl i32 %3003, %3004
  %3006 = icmp eq i32 %3000, 32
  %3007 = select i1 %3006, i32 -1, i32 %3005
  %3008 = and i32 %3007, %2992
  %3009 = icmp eq i32 %3008, 0
  br i1 %3009, label %3335, label %3010

; <label>:3010                                    ; preds = %2981
  br label %3011

; <label>:3011                                    ; preds = %3118, %3010
  %3012 = phi float [ %3119, %3118 ], [ %2982, %3010 ]
  %3013 = phi float [ %3120, %3118 ], [ %2983, %3010 ]
  %3014 = phi float [ %3121, %3118 ], [ %2984, %3010 ]
  %3015 = phi float [ %3122, %3118 ], [ %2985, %3010 ]
  %3016 = phi i32 [ %3021, %3118 ], [ %3008, %3010 ]
  %3017 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3016)  ; FirstbitLo(value)
  %3018 = add i32 %3017, %2993
  %3019 = and i32 %3017, 31
  %3020 = shl i32 1, %3019
  %3021 = xor i32 %3020, %3016
  %3022 = mul i32 %3018, 72
  %3023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3022, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3025 = extractvalue %dx.types.ResRet.f32 %3023, 1
  %3026 = extractvalue %dx.types.ResRet.f32 %3023, 2
  %3027 = add i32 %3022, 12
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3027, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = add i32 %3022, 16
  %3031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.f32 %3031, 0
  %3033 = extractvalue %dx.types.ResRet.f32 %3031, 1
  %3034 = extractvalue %dx.types.ResRet.f32 %3031, 2
  %3035 = add i32 %3022, 28
  %3036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = add i32 %3022, 32
  %3039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.f32 %3039, 0
  %3041 = extractvalue %dx.types.ResRet.f32 %3039, 1
  %3042 = extractvalue %dx.types.ResRet.f32 %3039, 2
  %3043 = extractvalue %dx.types.ResRet.f32 %3039, 3
  %3044 = add i32 %3022, 48
  %3045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.f32 %3045, 0
  %3047 = extractvalue %dx.types.ResRet.f32 %3045, 1
  %3048 = add i32 %3022, 56
  %3049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3048, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.f32 %3049, 1
  %3052 = add i32 %3022, 64
  %3053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.f32 %3053, 0
  %3055 = extractvalue %dx.types.ResRet.f32 %3053, 1
  %3056 = mul i32 %3018, 60
  %3057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = extractvalue %dx.types.ResRet.f32 %3057, 1
  %3060 = extractvalue %dx.types.ResRet.f32 %3057, 2
  %3061 = add i32 %3056, 12
  %3062 = add i32 %3056, 48
  %3063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  %3065 = extractvalue %dx.types.ResRet.f32 %3063, 1
  %3066 = extractvalue %dx.types.ResRet.f32 %3063, 2
  %3067 = and i32 %3029, 32767
  %3068 = bitcast float %3024 to i32
  %3069 = icmp eq i32 %3068, -1
  %3070 = bitcast float %3025 to i32
  %3071 = and i32 %3029, 32768
  %3072 = icmp ne i32 %3071, 0
  %3073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3074 = extractvalue %dx.types.CBufRet.f32 %3073, 0
  %3075 = extractvalue %dx.types.CBufRet.f32 %3073, 1
  %3076 = extractvalue %dx.types.CBufRet.f32 %3073, 2
  %3077 = fsub fast float %3058, %3074
  %3078 = fsub fast float %3059, %3075
  %3079 = fsub fast float %3060, %3076
  %3080 = fsub fast float %142, %3077
  %3081 = fsub fast float %143, %3078
  %3082 = fsub fast float %144, %3079
  %3083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.f32 %3083, 0
  %3085 = extractvalue %dx.types.ResRet.f32 %3083, 1
  %3086 = extractvalue %dx.types.ResRet.f32 %3083, 2
  %3087 = call float @dx.op.dot3.f32(i32 55, float %3080, float %3081, float %3082, float %3084, float %3085, float %3086)  ; Dot3(ax,ay,az,bx,by,bz)
  %3088 = add i32 %3056, 24
  %3089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = extractvalue %dx.types.ResRet.f32 %3089, 1
  %3092 = extractvalue %dx.types.ResRet.f32 %3089, 2
  %3093 = call float @dx.op.dot3.f32(i32 55, float %3080, float %3081, float %3082, float %3090, float %3091, float %3092)  ; Dot3(ax,ay,az,bx,by,bz)
  %3094 = add i32 %3056, 36
  %3095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.f32 %3095, 0
  %3097 = extractvalue %dx.types.ResRet.f32 %3095, 1
  %3098 = extractvalue %dx.types.ResRet.f32 %3095, 2
  %3099 = call float @dx.op.dot3.f32(i32 55, float %3080, float %3081, float %3082, float %3096, float %3097, float %3098)  ; Dot3(ax,ay,az,bx,by,bz)
  %3100 = call float @dx.op.unary.f32(i32 6, float %3087)  ; FAbs(value)
  %3101 = call float @dx.op.unary.f32(i32 6, float %3093)  ; FAbs(value)
  %3102 = call float @dx.op.unary.f32(i32 6, float %3099)  ; FAbs(value)
  %3103 = fsub fast float %3064, %3100
  %3104 = fsub fast float %3065, %3101
  %3105 = fsub fast float %3066, %3102
  %3106 = fmul fast float %3103, %3032
  %3107 = fmul fast float %3104, %3033
  %3108 = fmul fast float %3105, %3034
  %3109 = call float @dx.op.binary.f32(i32 36, float %3107, float %3108)  ; FMin(a,b)
  %3110 = call float @dx.op.binary.f32(i32 36, float %3106, float %3109)  ; FMin(a,b)
  %3111 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3112 = call float @dx.op.binary.f32(i32 36, float %3015, float %3111)  ; FMin(a,b)
  %3113 = uitofp i1 %3072 to float
  %3114 = fadd fast float %2930, 1.000000e+00
  %3115 = fsub fast float %3114, %3113
  %3116 = fmul fast float %3112, %3115
  %3117 = fcmp fast ogt float %3116, 0.000000e+00
  br i1 %3117, label %3124, label %3118

; <label>:3118                                    ; preds = %3266, %3011
  %3119 = phi float [ %3330, %3266 ], [ %3012, %3011 ]
  %3120 = phi float [ %3331, %3266 ], [ %3013, %3011 ]
  %3121 = phi float [ %3332, %3266 ], [ %3014, %3011 ]
  %3122 = phi float [ %3333, %3266 ], [ %3015, %3011 ]
  %3123 = icmp eq i32 %3016, %3020
  br i1 %3123, label %3334, label %3011

; <label>:3124                                    ; preds = %3011
  br i1 %3069, label %3182, label %3125

; <label>:3125                                    ; preds = %3124
  %3126 = fsub fast float -0.000000e+00, %3084
  %3127 = fsub fast float -0.000000e+00, %3085
  %3128 = fsub fast float -0.000000e+00, %3086
  %3129 = call float @dx.op.dot3.f32(i32 55, float %2964, float %2965, float %2966, float %3126, float %3127, float %3128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3130 = fsub fast float -0.000000e+00, %3129
  %3131 = call float @dx.op.dot3.f32(i32 55, float %3080, float %3081, float %3082, float %3126, float %3127, float %3128)  ; Dot3(ax,ay,az,bx,by,bz)
  %3132 = fadd fast float %3131, %3047
  %3133 = fadd fast float %3046, %3131
  %3134 = fsub fast float -0.000000e+00, %3133
  %3135 = fcmp ogt float %3129, -0.000000e+00
  %3136 = select i1 %3135, float %3134, float %3132
  %3137 = call float @dx.op.unary.f32(i32 6, float %3130)  ; FAbs(value)
  %3138 = fdiv fast float 1.000000e+00, %3137
  %3139 = fmul fast float %3136, %3138
  %3140 = call float @dx.op.binary.f32(i32 35, float %3139, float 0.000000e+00)  ; FMax(a,b)
  %3141 = fsub fast float -0.000000e+00, %3090
  %3142 = fsub fast float -0.000000e+00, %3091
  %3143 = fsub fast float -0.000000e+00, %3092
  %3144 = call float @dx.op.dot3.f32(i32 55, float %2964, float %2965, float %2966, float %3141, float %3142, float %3143)  ; Dot3(ax,ay,az,bx,by,bz)
  %3145 = fsub fast float -0.000000e+00, %3144
  %3146 = call float @dx.op.dot3.f32(i32 55, float %3080, float %3081, float %3082, float %3141, float %3142, float %3143)  ; Dot3(ax,ay,az,bx,by,bz)
  %3147 = fadd fast float %3146, %3051
  %3148 = fadd fast float %3050, %3146
  %3149 = fsub fast float -0.000000e+00, %3148
  %3150 = fcmp ogt float %3144, -0.000000e+00
  %3151 = select i1 %3150, float %3149, float %3147
  %3152 = call float @dx.op.unary.f32(i32 6, float %3145)  ; FAbs(value)
  %3153 = fdiv fast float 1.000000e+00, %3152
  %3154 = fmul fast float %3151, %3153
  %3155 = call float @dx.op.binary.f32(i32 35, float %3154, float 0.000000e+00)  ; FMax(a,b)
  %3156 = fsub fast float -0.000000e+00, %3096
  %3157 = fsub fast float -0.000000e+00, %3097
  %3158 = fsub fast float -0.000000e+00, %3098
  %3159 = call float @dx.op.dot3.f32(i32 55, float %2964, float %2965, float %2966, float %3156, float %3157, float %3158)  ; Dot3(ax,ay,az,bx,by,bz)
  %3160 = fsub fast float -0.000000e+00, %3159
  %3161 = call float @dx.op.dot3.f32(i32 55, float %3080, float %3081, float %3082, float %3156, float %3157, float %3158)  ; Dot3(ax,ay,az,bx,by,bz)
  %3162 = fadd fast float %3161, %3055
  %3163 = fadd fast float %3054, %3161
  %3164 = fsub fast float -0.000000e+00, %3163
  %3165 = fcmp ogt float %3159, -0.000000e+00
  %3166 = select i1 %3165, float %3164, float %3162
  %3167 = call float @dx.op.unary.f32(i32 6, float %3160)  ; FAbs(value)
  %3168 = fdiv fast float 1.000000e+00, %3167
  %3169 = fmul fast float %3166, %3168
  %3170 = call float @dx.op.binary.f32(i32 35, float %3169, float 0.000000e+00)  ; FMax(a,b)
  %3171 = call float @dx.op.binary.f32(i32 36, float %3155, float %3170)  ; FMin(a,b)
  %3172 = call float @dx.op.binary.f32(i32 36, float %3140, float %3171)  ; FMin(a,b)
  %3173 = fmul fast float %3172, %2964
  %3174 = fmul fast float %3172, %2965
  %3175 = fmul fast float %3172, %2966
  %3176 = fadd fast float %3173, %142
  %3177 = fadd fast float %3174, %143
  %3178 = fadd fast float %3175, %144
  %3179 = fsub fast float %3176, %3024
  %3180 = fsub fast float %3177, %3025
  %3181 = fsub fast float %3178, %3026
  br label %3189

; <label>:3182                                    ; preds = %3124
  %3183 = fmul fast float %2964, 8.096000e+03
  %3184 = fmul fast float %2965, 8.096000e+03
  %3185 = fmul fast float %2966, 8.096000e+03
  %3186 = fadd fast float %3183, %142
  %3187 = fadd fast float %3184, %143
  %3188 = fadd fast float %3185, %144
  br label %3189

; <label>:3189                                    ; preds = %3182, %3125
  %3190 = phi float [ %2964, %3182 ], [ %3179, %3125 ]
  %3191 = phi float [ %2965, %3182 ], [ %3180, %3125 ]
  %3192 = phi float [ %2966, %3182 ], [ %3181, %3125 ]
  %3193 = phi float [ %3186, %3182 ], [ %3176, %3125 ]
  %3194 = phi float [ %3187, %3182 ], [ %3177, %3125 ]
  %3195 = phi float [ %3188, %3182 ], [ %3178, %3125 ]
  %3196 = fcmp fast olt float %3043, 1.000000e+00
  br i1 %3196, label %3197, label %3228, !dx.controlflow.hints !90

; <label>:3197                                    ; preds = %3189
  %3198 = fmul fast float %3192, %3041
  %3199 = fmul fast float %3191, %3042
  %3200 = fsub fast float %3198, %3199
  %3201 = fmul fast float %3190, %3042
  %3202 = fmul fast float %3192, %3040
  %3203 = fsub fast float %3201, %3202
  %3204 = fmul fast float %3191, %3040
  %3205 = fmul fast float %3190, %3041
  %3206 = fsub fast float %3204, %3205
  %3207 = fmul fast float %3200, 2.000000e+00
  %3208 = fmul fast float %3203, 2.000000e+00
  %3209 = fmul fast float %3206, 2.000000e+00
  %3210 = fmul fast float %3207, %3043
  %3211 = fmul fast float %3208, %3043
  %3212 = fmul fast float %3209, %3043
  %3213 = fmul fast float %3209, %3041
  %3214 = fmul fast float %3208, %3042
  %3215 = fmul fast float %3207, %3042
  %3216 = fmul fast float %3209, %3040
  %3217 = fmul fast float %3208, %3040
  %3218 = fmul fast float %3207, %3041
  %3219 = fadd fast float %3213, %3190
  %3220 = fadd fast float %3219, %3210
  %3221 = fsub fast float %3220, %3214
  %3222 = fsub fast float %3191, %3216
  %3223 = fadd fast float %3222, %3211
  %3224 = fadd fast float %3223, %3215
  %3225 = fadd fast float %3212, %3192
  %3226 = fsub fast float %3225, %3218
  %3227 = fadd fast float %3226, %3217
  br label %3228

; <label>:3228                                    ; preds = %3197, %3189
  %3229 = phi float [ %3221, %3197 ], [ %3190, %3189 ]
  %3230 = phi float [ %3224, %3197 ], [ %3191, %3189 ]
  %3231 = phi float [ %3227, %3197 ], [ %3192, %3189 ]
  br i1 %3069, label %3263, label %3232

; <label>:3232                                    ; preds = %3228
  %3233 = fmul fast float %2162, 0x400187C840000000
  %3234 = fadd fast float %3233, 0xC00EFC2120000000
  %3235 = fmul fast float %3234, %2162
  %3236 = fadd fast float %3235, 0x3FE5D16340000000
  %3237 = fmul fast float %3236, %2162
  %3238 = fadd fast float %3237, 1.000000e+00
  %3239 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3240 = fsub fast float %3193, %142
  %3241 = fsub fast float %3194, %143
  %3242 = fsub fast float %3195, %144
  %3243 = fsub fast float %3193, %3024
  %3244 = fsub fast float %3194, %3025
  %3245 = fsub fast float %3195, %3026
  %3246 = call float @dx.op.dot3.f32(i32 55, float %3240, float %3241, float %3242, float %3240, float %3241, float %3242)  ; Dot3(ax,ay,az,bx,by,bz)
  %3247 = call float @dx.op.dot3.f32(i32 55, float %3243, float %3244, float %3245, float %3243, float %3244, float %3245)  ; Dot3(ax,ay,az,bx,by,bz)
  %3248 = fadd fast float %3247, 0x3EE4F8B580000000
  %3249 = fdiv fast float %3246, %3248
  %3250 = bitcast float %3249 to i32
  %3251 = ashr i32 %3250, 1
  %3252 = add nsw i32 %3251, 532487669
  %3253 = bitcast i32 %3252 to float
  %3254 = fmul fast float %3253, %3239
  %3255 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  %3256 = fmul fast float %3255, 0x4009981AE0000000
  %3257 = fsub fast float 0x40111BBD80000000, %3256
  %3258 = fmul fast float %3257, %3255
  %3259 = fadd fast float %3258, 0xC0009F6020000000
  %3260 = fmul fast float %3259, %3255
  %3261 = fadd fast float %3260, 1.000000e+00
  %3262 = call float @dx.op.unary.f32(i32 7, float %3261)  ; Saturate(value)
  br label %3266

; <label>:3263                                    ; preds = %3228
  %3264 = icmp ne i32 %3070, -1
  %3265 = zext i1 %3264 to i32
  br label %3266

; <label>:3266                                    ; preds = %3263, %3232
  %3267 = phi float [ %2162, %3263 ], [ %3262, %3232 ]
  %3268 = phi i32 [ %3265, %3263 ], [ 0, %3232 ]
  %3269 = fmul float %3267, 5.000000e+00
  %3270 = fsub float 5.000000e+00, %3269
  %3271 = icmp ne i32 %3268, 0
  %3272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3273 = extractvalue %dx.types.CBufRet.f32 %3272, 3
  %3274 = fadd fast float %3273, %3270
  %3275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3274)  ; FMax(a,b)
  %3276 = call float @dx.op.unary.f32(i32 6, float %3229)  ; FAbs(value)
  %3277 = call float @dx.op.unary.f32(i32 6, float %3230)  ; FAbs(value)
  %3278 = fadd fast float %3277, %3276
  %3279 = call float @dx.op.unary.f32(i32 6, float %3231)  ; FAbs(value)
  %3280 = fadd fast float %3278, %3279
  %3281 = fcmp fast oeq float %3280, 0.000000e+00
  %3282 = fdiv fast float 1.000000e+00, %3280
  %3283 = select i1 %3281, float 1.000000e+00, float %3282
  %3284 = fmul fast float %3283, %3229
  %3285 = fmul fast float %3283, %3230
  %3286 = call float @dx.op.unary.f32(i32 6, float %3285)  ; FAbs(value)
  %3287 = call float @dx.op.unary.f32(i32 6, float %3284)  ; FAbs(value)
  %3288 = fsub fast float 1.000000e+00, %3286
  %3289 = fsub fast float 1.000000e+00, %3287
  %3290 = fcmp fast oge float %3284, 0.000000e+00
  %3291 = fcmp fast oge float %3285, 0.000000e+00
  %3292 = select i1 %3290, float 1.000000e+00, float -1.000000e+00
  %3293 = select i1 %3291, float 1.000000e+00, float -1.000000e+00
  %3294 = fcmp fast ole float %3231, 0.000000e+00
  %3295 = fmul fast float %3292, %3288
  %3296 = fmul fast float %3293, %3289
  %3297 = select i1 %3294, float %3295, float %3284
  %3298 = select i1 %3294, float %3296, float %3285
  %3299 = fmul fast float %3297, 5.000000e-01
  %3300 = fmul fast float %3298, 5.000000e-01
  %3301 = fadd fast float %3299, 5.000000e-01
  %3302 = fadd fast float %3300, 5.000000e-01
  %3303 = uitofp i32 %3067 to float
  %3304 = call float @dx.op.binary.f32(i32 36, float %3275, float 3.000000e+00)  ; FMin(a,b)
  %3305 = fadd fast float %3304, 2.000000e+00
  %3306 = call float @dx.op.unary.f32(i32 21, float %3305)  ; Exp(value)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3272, 1
  %3308 = fmul fast float %3307, %3306
  %3309 = fmul fast float %3308, 2.000000e+00
  %3310 = fsub fast float 1.000000e+00, %3309
  %3311 = fmul fast float %3301, %3310
  %3312 = fmul fast float %3302, %3310
  %3313 = fadd fast float %3311, %3308
  %3314 = fadd fast float %3312, %3308
  %3315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %48, float %3313, float %3314, float %3303, float undef, i32 0, i32 0, i32 undef, float %3275)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3316 = extractvalue %dx.types.ResRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.ResRet.f32 %3315, 1
  %3318 = extractvalue %dx.types.ResRet.f32 %3315, 2
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 3
  %3321 = fmul fast float %3320, %3037
  %3322 = call float @dx.op.binary.f32(i32 36, float %2578, float %3321)  ; FMin(a,b)
  %3323 = select i1 %3271, float %3322, float %3321
  %3324 = fmul fast float %3316, %3116
  %3325 = fmul fast float %3324, %3323
  %3326 = fmul fast float %3317, %3116
  %3327 = fmul fast float %3326, %3323
  %3328 = fmul fast float %3318, %3116
  %3329 = fmul fast float %3328, %3323
  %3330 = fadd fast float %3325, %3012
  %3331 = fadd fast float %3327, %3013
  %3332 = fadd fast float %3329, %3014
  %3333 = fsub fast float %3015, %3116
  br label %3118

; <label>:3334                                    ; preds = %3118
  br label %3335

; <label>:3335                                    ; preds = %3334, %2981
  %3336 = phi float [ %2982, %2981 ], [ %3119, %3334 ]
  %3337 = phi float [ %2983, %2981 ], [ %3120, %3334 ]
  %3338 = phi float [ %2984, %2981 ], [ %3121, %3334 ]
  %3339 = phi float [ %2985, %2981 ], [ %3122, %3334 ]
  %3340 = add i32 %2986, 1
  %3341 = icmp ugt i32 %3340, %2978
  br i1 %3341, label %3342, label %2981, !llvm.loop !91

; <label>:3342                                    ; preds = %3335
  br label %3343

; <label>:3343                                    ; preds = %3342, %2963
  %3344 = phi float [ 0.000000e+00, %2963 ], [ %3336, %3342 ]
  %3345 = phi float [ 0.000000e+00, %2963 ], [ %3337, %3342 ]
  %3346 = phi float [ 0.000000e+00, %2963 ], [ %3338, %3342 ]
  %3347 = call float @dx.op.dot3.f32(i32 55, float %3344, float %3345, float %3346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3348 = select i1 %204, float 0.000000e+00, float %3344
  %3349 = select i1 %204, float %3347, float %3345
  %3350 = select i1 %204, float 0.000000e+00, float %3346
  %3351 = fcmp fast olt float %2889, 0.000000e+00
  %3352 = call float @dx.op.unary.f32(i32 6, float %2889)  ; FAbs(value)
  %3353 = fmul fast float %3352, %2818
  %3354 = fmul fast float %3352, %2819
  %3355 = fmul fast float %3352, %2820
  %3356 = select i1 %3351, float %2818, float %3353
  %3357 = select i1 %3351, float %2819, float %3354
  %3358 = select i1 %3351, float %2820, float %3355
  %3359 = fsub fast float 1.000000e+00, %3352
  %3360 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3361 = fmul fast float %3360, %3348
  %3362 = fmul fast float %3360, %3349
  %3363 = fmul fast float %3360, %3350
  %3364 = fadd fast float %3356, %3361
  %3365 = fadd fast float %3357, %3362
  %3366 = fadd fast float %3358, %3363
  br label %3367

; <label>:3367                                    ; preds = %3343, %2872
  %3368 = phi float [ %2818, %2872 ], [ %3364, %3343 ]
  %3369 = phi float [ %2819, %2872 ], [ %3365, %3343 ]
  %3370 = phi float [ %2820, %2872 ], [ %3366, %3343 ]
  %3371 = call float @dx.op.dot3.f32(i32 55, float %2159, float %2160, float %2161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3372 = fcmp fast ogt float %3371, 0x3E7FF19E20000000
  %3373 = fdiv fast float 1.000000e+00, %3371
  %3374 = select i1 %3372, float %3373, float 0.000000e+00
  %3375 = fmul fast float %3374, %2159
  %3376 = fmul fast float %3374, %2160
  %3377 = fmul fast float %3374, %2161
  %3378 = fadd fast float %3375, -1.000000e+00
  %3379 = fadd fast float %3376, -1.000000e+00
  %3380 = fadd fast float %3377, -1.000000e+00
  %3381 = fmul fast float %3378, 5.000000e-01
  %3382 = fmul fast float %3379, 5.000000e-01
  %3383 = fmul fast float %3380, 5.000000e-01
  %3384 = fadd fast float %3381, 1.000000e+00
  %3385 = fadd fast float %3382, 1.000000e+00
  %3386 = fadd fast float %3383, 1.000000e+00
  %3387 = call float @dx.op.binary.f32(i32 35, float %2551, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3388 = fdiv fast float %911, %3387
  %3389 = fcmp fast olt float %1584, 1.270000e+02
  %3390 = fcmp fast olt float %1585, 1.270000e+02
  %3391 = fcmp fast olt float %1586, 1.270000e+02
  %3392 = fmul fast float %1584, 0xBFF7154760000000
  %3393 = fmul fast float %3392, %3388
  %3394 = fmul fast float %1585, 0xBFF7154760000000
  %3395 = fmul fast float %3394, %3388
  %3396 = fmul fast float %1586, 0xBFF7154760000000
  %3397 = fmul fast float %3396, %3388
  %3398 = call float @dx.op.unary.f32(i32 21, float %3393)  ; Exp(value)
  %3399 = call float @dx.op.unary.f32(i32 21, float %3395)  ; Exp(value)
  %3400 = call float @dx.op.unary.f32(i32 21, float %3397)  ; Exp(value)
  %3401 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3402 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3403 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3404 = select i1 %3389, float %3401, float 0.000000e+00
  %3405 = select i1 %3390, float %3402, float 0.000000e+00
  %3406 = select i1 %3391, float %3403, float 0.000000e+00
  %3407 = fmul fast float %3404, %2878
  %3408 = fmul fast float %3405, %2878
  %3409 = fmul fast float %3406, %2878
  %3410 = fadd fast float %3407, -1.000000e+00
  %3411 = fadd fast float %3408, -1.000000e+00
  %3412 = fadd fast float %3409, -1.000000e+00
  %3413 = fmul fast float %3410, %1534
  %3414 = fmul fast float %3411, %1534
  %3415 = fmul fast float %3412, %1534
  %3416 = fmul fast float %3368, %2873
  %3417 = fmul fast float %3369, %2874
  %3418 = fmul fast float %3370, %2875
  %3419 = fsub fast float 1.000000e+00, %2551
  %3420 = bitcast float %3419 to i32
  %3421 = sitofp i32 %3420 to float
  %3422 = fmul fast float %3421, 5.000000e+00
  %3423 = fadd fast float %3422, 0xC1EFBF8940000000
  %3424 = fptosi float %3423 to i32
  %3425 = bitcast i32 %3424 to float
  %3426 = fmul fast float %3425, %1510
  %3427 = fmul fast float %2810, %3426
  %3428 = fmul fast float %3427, %2878
  %3429 = fmul fast float %3428, %3384
  %3430 = fmul fast float %2811, %3426
  %3431 = fmul fast float %3430, %2878
  %3432 = fmul fast float %3431, %3385
  %3433 = fmul fast float %2812, %3426
  %3434 = fmul fast float %3433, %2878
  %3435 = fmul fast float %3434, %3386
  %3436 = fadd fast float %3416, %1515
  %3437 = fadd fast float %3436, %3429
  %3438 = fmul fast float %3437, %1534
  %3439 = fadd fast float %3417, %1516
  %3440 = fadd fast float %3439, %3432
  %3441 = fmul fast float %3440, %1534
  %3442 = fadd fast float %3418, %1517
  %3443 = fadd fast float %3442, %3435
  %3444 = fmul fast float %3443, %1534
  %3445 = fmul fast float %2154, 0x4012D0A400000000
  %3446 = fadd fast float %3415, 1.000000e+00
  %3447 = fadd fast float %3414, 1.000000e+00
  %3448 = fadd fast float %3413, 1.000000e+00
  %3449 = fmul fast float %2878, %2812
  %3450 = fmul fast float %2878, %2811
  %3451 = fmul fast float %2878, %2810
  %3452 = fmul fast float %2566, %1534
  %3453 = fsub fast float 1.000000e+00, %3452
  %3454 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3455 = fsub fast float 1.000000e+00, %3454
  %3456 = fadd fast float %3445, 0x3FDB6377A0000000
  %3457 = fmul fast float %3455, %3456
  %3458 = call float @dx.op.dot3.f32(i32 55, float %1602, float %1603, float %1604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3459 = fadd fast float %3457, %3458
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = call float @dx.op.binary.f32(i32 35, float %3460, float 0x3F847AE140000000)  ; FMax(a,b)
  %3462 = fmul fast float %3461, %3461
  %3463 = fmul fast float %3462, %3462
  %3464 = fmul fast float %3463, 0xC00A935000000000
  %3465 = call float @dx.op.unary.f32(i32 21, float %3464)  ; Exp(value)
  %3466 = fsub fast float 1.000000e+00, %3465
  %3467 = fmul fast float %3448, %2814
  %3468 = fmul fast float %3467, %3466
  %3469 = fmul fast float %3447, %2815
  %3470 = fmul fast float %3469, %3466
  %3471 = fmul fast float %3446, %2816
  %3472 = fmul fast float %3471, %3466
  %3473 = fadd fast float %3468, %3451
  %3474 = fmul fast float %3473, %1534
  %3475 = fadd fast float %3470, %3450
  %3476 = fmul fast float %3475, %1534
  %3477 = fadd fast float %3472, %3449
  %3478 = fmul fast float %3477, %1534
  %3479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.f32 %3479, 3
  %3481 = fcmp fast oeq float %3480, 0.000000e+00
  br i1 %3481, label %5350, label %3482

; <label>:3482                                    ; preds = %3367
  %3483 = extractvalue %dx.types.CBufRet.f32 %3479, 0
  %3484 = extractvalue %dx.types.CBufRet.f32 %3479, 1
  %3485 = extractvalue %dx.types.CBufRet.f32 %3479, 2
  %3486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.CBufRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.CBufRet.f32 %3486, 2
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3492 = extractvalue %dx.types.CBufRet.f32 %3490, 1
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3488, float %3489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = select i1 %204, float %3491, float %3487
  %3495 = select i1 %204, float %3493, float %3488
  %3496 = select i1 %204, float %3492, float %3489
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 2
  %3499 = fmul fast float %3498, %97
  %3500 = fmul fast float %3498, %98
  %3501 = fmul fast float %3498, %99
  %3502 = fadd fast float %3499, %142
  %3503 = fadd fast float %3500, %143
  %3504 = fadd fast float %3501, %144
  %3505 = fcmp fast olt float %3480, 0.000000e+00
  br i1 %3505, label %4601, label %3506

; <label>:3506                                    ; preds = %3482
  %3507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3508 = extractvalue %dx.types.CBufRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.CBufRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.CBufRet.f32 %3507, 2
  %3511 = extractvalue %dx.types.CBufRet.f32 %3507, 3
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.CBufRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.CBufRet.f32 %3512, 2
  %3516 = extractvalue %dx.types.CBufRet.f32 %3512, 3
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.CBufRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.CBufRet.f32 %3517, 2
  %3521 = extractvalue %dx.types.CBufRet.f32 %3517, 3
  %3522 = fmul fast float %3508, %3502
  %3523 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3509, float %3522)  ; FMad(a,b,c)
  %3524 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3510, float %3523)  ; FMad(a,b,c)
  %3525 = fadd fast float %3524, %3511
  %3526 = fmul fast float %3513, %3502
  %3527 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3514, float %3526)  ; FMad(a,b,c)
  %3528 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3515, float %3527)  ; FMad(a,b,c)
  %3529 = fadd fast float %3528, %3516
  %3530 = fmul fast float %3518, %3502
  %3531 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3519, float %3530)  ; FMad(a,b,c)
  %3532 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3520, float %3531)  ; FMad(a,b,c)
  %3533 = fadd fast float %3532, %3521
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.CBufRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3538 = fmul fast float %3537, %3525
  %3539 = fmul fast float %3537, %3529
  %3540 = fadd fast float %3538, %3535
  %3541 = fadd fast float %3539, %3536
  %3542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3543 = extractvalue %dx.types.CBufRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.CBufRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.CBufRet.f32 %3542, 3
  %3546 = fmul fast float %3545, %3525
  %3547 = fmul fast float %3545, %3529
  %3548 = fadd fast float %3546, %3543
  %3549 = fadd fast float %3547, %3544
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 1
  %3552 = fsub fast float %3551, %3533
  %3553 = extractvalue %dx.types.CBufRet.f32 %3550, 2
  %3554 = fmul fast float %3552, %3553
  %3555 = fsub fast float 1.000000e+00, %3554
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3542, 2
  %3558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.f32 %3558, 2
  %3560 = fadd fast float %3559, %3557
  %3561 = fcmp fast ogt float %3560, 0.000000e+00
  br i1 %3561, label %3562, label %3586

; <label>:3562                                    ; preds = %3506
  %3563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3564 = extractvalue %dx.types.CBufRet.f32 %3563, 0
  %3565 = extractvalue %dx.types.CBufRet.f32 %3563, 1
  %3566 = fsub fast float %3548, %3564
  %3567 = fsub fast float %3549, %3565
  %3568 = fcmp fast olt float %3566, 0.000000e+00
  %3569 = fcmp fast olt float %3567, 0.000000e+00
  %3570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3571 = extractvalue %dx.types.CBufRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.CBufRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.CBufRet.f32 %3570, 2
  %3574 = extractvalue %dx.types.CBufRet.f32 %3570, 3
  %3575 = select i1 %3568, float %3571, float %3573
  %3576 = select i1 %3569, float %3572, float %3574
  %3577 = fmul fast float %3575, %3566
  %3578 = fmul fast float %3576, %3567
  %3579 = call float @dx.op.unary.f32(i32 6, float %3577)  ; FAbs(value)
  %3580 = call float @dx.op.unary.f32(i32 6, float %3578)  ; FAbs(value)
  %3581 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  %3582 = call float @dx.op.binary.f32(i32 35, float %3579, float %3580)  ; FMax(a,b)
  %3583 = fsub fast float %3581, %3582
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = fmul fast float %3584, %3556
  br label %3586

; <label>:3586                                    ; preds = %3562, %3506
  %3587 = phi float [ %3585, %3562 ], [ 0.000000e+00, %3506 ]
  %3588 = extractvalue %dx.types.CBufRet.f32 %3534, 2
  %3589 = extractvalue %dx.types.CBufRet.f32 %3558, 1
  %3590 = fadd fast float %3589, %3588
  %3591 = fcmp fast ogt float %3590, 0.000000e+00
  %3592 = extractvalue %dx.types.CBufRet.f32 %3497, 0
  br i1 %3591, label %3593, label %3616

; <label>:3593                                    ; preds = %3586
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.CBufRet.f32 %3594, 1
  %3597 = fsub fast float %3540, %3595
  %3598 = fsub fast float %3541, %3596
  %3599 = fcmp fast olt float %3597, 0.000000e+00
  %3600 = fcmp fast olt float %3598, 0.000000e+00
  %3601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3602 = extractvalue %dx.types.CBufRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.CBufRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.CBufRet.f32 %3601, 2
  %3605 = extractvalue %dx.types.CBufRet.f32 %3601, 3
  %3606 = select i1 %3599, float %3602, float %3604
  %3607 = select i1 %3600, float %3603, float %3605
  %3608 = fmul fast float %3606, %3597
  %3609 = fmul fast float %3607, %3598
  %3610 = call float @dx.op.unary.f32(i32 6, float %3608)  ; FAbs(value)
  %3611 = call float @dx.op.unary.f32(i32 6, float %3609)  ; FAbs(value)
  %3612 = call float @dx.op.binary.f32(i32 35, float %3610, float %3611)  ; FMax(a,b)
  %3613 = fsub fast float %3592, %3612
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  %3615 = fmul fast float %3614, %3556
  br label %3616

; <label>:3616                                    ; preds = %3593, %3586
  %3617 = phi float [ %3615, %3593 ], [ 0.000000e+00, %3586 ]
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3624 = fsub fast float %3525, %3622
  %3625 = fsub fast float %3529, %3623
  %3626 = fcmp fast olt float %3624, 0.000000e+00
  %3627 = fcmp fast olt float %3625, 0.000000e+00
  %3628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3629 = extractvalue %dx.types.CBufRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.CBufRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.CBufRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.CBufRet.f32 %3628, 3
  %3633 = select i1 %3626, float %3629, float %3631
  %3634 = select i1 %3627, float %3630, float %3632
  %3635 = fmul fast float %3633, %3624
  %3636 = fmul fast float %3634, %3625
  %3637 = call float @dx.op.unary.f32(i32 6, float %3635)  ; FAbs(value)
  %3638 = call float @dx.op.unary.f32(i32 6, float %3636)  ; FAbs(value)
  %3639 = call float @dx.op.binary.f32(i32 35, float %3637, float %3638)  ; FMax(a,b)
  %3640 = fsub fast float %3592, %3639
  %3641 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3642 = call float @dx.op.binary.f32(i32 36, float %3641, float %3620)  ; FMin(a,b)
  %3643 = fmul fast float %3642, %3556
  %3644 = fsub fast float %3617, %3643
  %3645 = fsub fast float %3587, %3617
  %3646 = fsub fast float %3645, %3643
  %3647 = call float @dx.op.binary.f32(i32 35, float %3643, float %3617)  ; FMax(a,b)
  %3648 = call float @dx.op.binary.f32(i32 35, float %3647, float %3587)  ; FMax(a,b)
  %3649 = fcmp fast olt float %3648, 1.000000e+00
  br i1 %3649, label %3650, label %4048, !dx.controlflow.hints !93

; <label>:3650                                    ; preds = %3616
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3653 = fcmp fast une float %3652, 0.000000e+00
  br i1 %3653, label %3654, label %4048, !dx.controlflow.hints !94

; <label>:3654                                    ; preds = %3650
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.CBufRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.CBufRet.f32 %3655, 2
  %3659 = extractvalue %dx.types.CBufRet.f32 %3655, 3
  %3660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3661 = extractvalue %dx.types.CBufRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.CBufRet.f32 %3660, 1
  %3663 = extractvalue %dx.types.CBufRet.f32 %3660, 2
  %3664 = extractvalue %dx.types.CBufRet.f32 %3660, 3
  %3665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3666 = extractvalue %dx.types.CBufRet.f32 %3665, 0
  %3667 = extractvalue %dx.types.CBufRet.f32 %3665, 1
  %3668 = extractvalue %dx.types.CBufRet.f32 %3665, 2
  %3669 = extractvalue %dx.types.CBufRet.f32 %3665, 3
  %3670 = fmul fast float %3656, %3502
  %3671 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3657, float %3670)  ; FMad(a,b,c)
  %3672 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3658, float %3671)  ; FMad(a,b,c)
  %3673 = fadd fast float %3672, %3659
  %3674 = fmul fast float %3661, %3502
  %3675 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3662, float %3674)  ; FMad(a,b,c)
  %3676 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3663, float %3675)  ; FMad(a,b,c)
  %3677 = fadd fast float %3676, %3664
  %3678 = fmul fast float %3666, %3502
  %3679 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3667, float %3678)  ; FMad(a,b,c)
  %3680 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %3668, float %3679)  ; FMad(a,b,c)
  %3681 = fadd fast float %3680, %3669
  %3682 = fcmp fast oge float %3673, 1.000000e+00
  %3683 = fcmp fast oge float %3677, 1.000000e+00
  %3684 = or i1 %3682, %3683
  %3685 = fcmp fast olt float %3673, 0.000000e+00
  %3686 = fcmp fast olt float %3677, 0.000000e+00
  %3687 = or i1 %3685, %3686
  %3688 = or i1 %3684, %3687
  br i1 %3688, label %4048, label %3689, !dx.controlflow.hints !95

; <label>:3689                                    ; preds = %3654
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.CBufRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.CBufRet.f32 %3690, 2
  %3694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.i32 %3694, 2
  %3696 = uitofp i32 %3695 to float
  %3697 = extractvalue %dx.types.CBufRet.i32 %3694, 3
  %3698 = uitofp i32 %3697 to float
  %3699 = extractvalue %dx.types.CBufRet.f32 %3690, 3
  %3700 = fmul fast float %3699, 2.000000e+00
  %3701 = fsub fast float %3673, %3691
  %3702 = fsub fast float %3677, %3692
  %3703 = fmul fast float %3700, %3701
  %3704 = fmul fast float %3700, %3702
  %3705 = fdiv fast float 1.000000e+00, %3485
  %3706 = fmul fast float %3704, %3705
  %3707 = call float @dx.op.unary.f32(i32 6, float %3706)  ; FAbs(value)
  %3708 = fmul fast float %3693, %3504
  %3709 = fmul fast float %3708, %3700
  %3710 = call float @dx.op.unary.f32(i32 6, float %3709)  ; FAbs(value)
  %3711 = call float @dx.op.unary.f32(i32 6, float %3703)  ; FAbs(value)
  %3712 = call float @dx.op.binary.f32(i32 35, float %3711, float %3710)  ; FMax(a,b)
  %3713 = call float @dx.op.binary.f32(i32 35, float %3712, float %3707)  ; FMax(a,b)
  %3714 = fmul fast float %3713, 2.000000e+00
  %3715 = call float @dx.op.unary.f32(i32 23, float %3714)  ; Log(value)
  %3716 = call float @dx.op.binary.f32(i32 35, float %3715, float %3696)  ; FMax(a,b)
  %3717 = call float @dx.op.unary.f32(i32 22, float %3716)  ; Frc(value)
  %3718 = fadd fast float %3717, 0xBFEA666660000000
  %3719 = fmul fast float %3718, 8.000000e+00
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 27, float %3716)  ; Round_ni(value)
  %3722 = fadd fast float %3721, %3720
  %3723 = call float @dx.op.binary.f32(i32 36, float %3722, float %3698)  ; FMin(a,b)
  %3724 = call float @dx.op.unary.f32(i32 27, float %3723)  ; Round_ni(value)
  %3725 = fsub fast float -0.000000e+00, %3724
  %3726 = call float @dx.op.unary.f32(i32 21, float %3725)  ; Exp(value)
  %3727 = fmul fast float %3726, %3700
  %3728 = fmul fast float %3727, %3673
  %3729 = fmul fast float %3727, %3677
  %3730 = fmul fast float %3728, 2.500000e-01
  %3731 = fmul fast float %3729, 2.500000e-01
  %3732 = fadd fast float %3730, 5.000000e-01
  %3733 = fadd fast float %3731, 5.000000e-01
  %3734 = fsub fast float %3698, %3696
  %3735 = fptoui float %3734 to i32
  %3736 = add i32 %3735, 320
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %3736)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.CBufRet.f32 %3737, 1
  %3740 = fcmp fast une float %3723, %3698
  %3741 = fsub fast float %3673, %3738
  %3742 = fsub fast float %3677, %3739
  %3743 = call float @dx.op.unary.f32(i32 6, float %3741)  ; FAbs(value)
  %3744 = call float @dx.op.unary.f32(i32 6, float %3742)  ; FAbs(value)
  %3745 = fmul fast float %3743, %3727
  %3746 = fmul fast float %3744, %3727
  %3747 = fcmp fast olt float %3745, 1.000000e+00
  %3748 = fcmp fast olt float %3746, 1.000000e+00
  %3749 = and i1 %3747, %3748
  %3750 = or i1 %3740, %3749
  br i1 %3750, label %3751, label %4048, !dx.controlflow.hints !96

; <label>:3751                                    ; preds = %3689
  %3752 = fmul fast float %3729, 5.000000e-01
  %3753 = fmul fast float %3728, 5.000000e-01
  %3754 = fadd fast float %3752, 5.000000e-01
  %3755 = fadd fast float %3753, 5.000000e-01
  %3756 = sitofp i32 %3695 to float
  %3757 = fsub fast float %3723, %3756
  %3758 = call float @dx.op.unary.f32(i32 27, float %3757)  ; Round_ni(value)
  %3759 = call float @dx.op.unary.f32(i32 22, float %3723)  ; Frc(value)
  %3760 = call float @dx.op.unary.f32(i32 22, float %3755)  ; Frc(value)
  %3761 = call float @dx.op.unary.f32(i32 22, float %3754)  ; Frc(value)
  %3762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3760, float %3761, float %3758, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3763 = extractvalue %dx.types.ResRet.f32 %3762, 0
  %3764 = extractvalue %dx.types.ResRet.f32 %3762, 1
  %3765 = extractvalue %dx.types.ResRet.f32 %3762, 2
  %3766 = extractvalue %dx.types.ResRet.f32 %3762, 3
  %3767 = fcmp fast ogt float %3759, 0.000000e+00
  br i1 %3767, label %3768, label %3789, !dx.controlflow.hints !97

; <label>:3768                                    ; preds = %3751
  %3769 = fadd fast float %3758, 1.000000e+00
  %3770 = call float @dx.op.unary.f32(i32 22, float %3732)  ; Frc(value)
  %3771 = call float @dx.op.unary.f32(i32 22, float %3733)  ; Frc(value)
  %3772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %49, float %3770, float %3771, float %3769, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3773 = extractvalue %dx.types.ResRet.f32 %3772, 0
  %3774 = extractvalue %dx.types.ResRet.f32 %3772, 1
  %3775 = extractvalue %dx.types.ResRet.f32 %3772, 2
  %3776 = extractvalue %dx.types.ResRet.f32 %3772, 3
  %3777 = fsub fast float %3773, %3763
  %3778 = fsub fast float %3774, %3764
  %3779 = fsub fast float %3775, %3765
  %3780 = fsub fast float %3776, %3766
  %3781 = fmul fast float %3777, %3759
  %3782 = fmul fast float %3778, %3759
  %3783 = fmul fast float %3779, %3759
  %3784 = fmul fast float %3780, %3759
  %3785 = fadd fast float %3781, %3763
  %3786 = fadd fast float %3782, %3764
  %3787 = fadd fast float %3783, %3765
  %3788 = fadd fast float %3784, %3766
  br label %3789

; <label>:3789                                    ; preds = %3768, %3751
  %3790 = phi float [ %3785, %3768 ], [ %3763, %3751 ]
  %3791 = phi float [ %3786, %3768 ], [ %3764, %3751 ]
  %3792 = phi float [ %3787, %3768 ], [ %3765, %3751 ]
  %3793 = phi float [ %3788, %3768 ], [ %3766, %3751 ]
  %3794 = fadd fast float %3790, -5.000000e-01
  %3795 = fadd fast float %3792, -5.000000e-01
  %3796 = fmul fast float %3794, 0xBFD5555560000000
  %3797 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3795, float %3796)  ; FMad(a,b,c)
  %3798 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3791, float 0.000000e+00)  ; FMad(a,b,c)
  %3799 = fadd fast float %3798, %3793
  %3800 = fmul fast float %3794, -7.500000e-01
  %3801 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3795, float %3800)  ; FMad(a,b,c)
  %3802 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3791, float 0.000000e+00)  ; FMad(a,b,c)
  %3803 = fadd fast float %3802, %3793
  %3804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3804, 0
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3808 = extractvalue %dx.types.CBufRet.f32 %3806, 1
  %3809 = extractvalue %dx.types.CBufRet.f32 %3806, 2
  %3810 = extractvalue %dx.types.CBufRet.f32 %3806, 3
  %3811 = fsub fast float %3807, %3797
  %3812 = fsub fast float %3808, %3799
  %3813 = fsub fast float %3809, %3801
  %3814 = fsub fast float %3810, %3803
  %3815 = fmul fast float %3811, %3805
  %3816 = fmul fast float %3812, %3805
  %3817 = fmul fast float %3813, %3805
  %3818 = fmul fast float %3814, %3805
  %3819 = fadd fast float %3815, %3797
  %3820 = fadd fast float %3816, %3799
  %3821 = fadd fast float %3817, %3801
  %3822 = fadd fast float %3818, %3803
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = and i32 %3824, 536870911
  %3826 = uitofp i32 %3825 to float
  %3827 = fmul fast float %3826, %3673
  %3828 = fmul fast float %3826, %3677
  %3829 = fptoui float %3827 to i32
  %3830 = fptoui float %3828 to i32
  %3831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.i32 %3831, 0
  %3833 = and i32 %3832, 31
  %3834 = lshr i32 %3829, %3833
  %3835 = lshr i32 %3830, %3833
  %3836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.i32 %3836, 0
  %3838 = and i32 %3837, 31
  %3839 = shl i32 1, %3838
  %3840 = call i32 @dx.op.binary.i32(i32 40, i32 %3839, i32 4)  ; UMin(a,b)
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.i32 %3841, 1
  %3844 = icmp eq i32 %3840, 0
  br i1 %3844, label %3886, label %3845

; <label>:3845                                    ; preds = %3789
  br label %3846

; <label>:3846                                    ; preds = %3874, %3845
  %3847 = phi i32 [ %3877, %3874 ], [ 0, %3845 ]
  %3848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.i32 %3848, 0
  %3850 = lshr i32 %3849, 16
  %3851 = and i32 %3850, 31
  %3852 = shl i32 %3835, %3851
  %3853 = add i32 %3852, %3834
  %3854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.i32 %3854, 0
  %3856 = and i32 %3855, 31
  %3857 = shl i32 %3853, %3856
  %3858 = add i32 %3857, %3847
  %3859 = shl i32 %3858, 2
  %3860 = add i32 %3859, 32
  %3861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.i32 %3861, 0
  %3863 = icmp slt i32 %3862, 0
  %3864 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3847
  %3865 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3847
  %3866 = bitcast float* %3864 to i32*
  %3867 = bitcast float* %3865 to i32*
  br i1 %3863, label %3868, label %3874

; <label>:3868                                    ; preds = %3846
  %3869 = and i32 %3862, 1073741823
  %3870 = add nuw nsw i32 %3869, 20
  %3871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3870, i32 undef)  ; BufferLoad(srv,index,wot)
  %3872 = extractvalue %dx.types.ResRet.i32 %3871, 0
  %3873 = extractvalue %dx.types.ResRet.i32 %3871, 1
  br label %3874

; <label>:3874                                    ; preds = %3868, %3846
  %3875 = phi i32 [ %3872, %3868 ], [ %3842, %3846 ]
  %3876 = phi i32 [ %3873, %3868 ], [ %3843, %3846 ]
  store i32 %3875, i32* %3866, align 4
  store i32 %3876, i32* %3867, align 4
  %3877 = add nuw i32 %3847, 1
  %3878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3879 = extractvalue %dx.types.CBufRet.i32 %3878, 2
  %3880 = icmp eq i32 %3879, 0
  %3881 = icmp ugt i32 %3862, -1073741825
  %3882 = and i1 %3881, %3880
  %3883 = icmp ult i32 %3877, %3840
  %3884 = and i1 %3882, %3883
  br i1 %3884, label %3846, label %3885

; <label>:3885                                    ; preds = %3874
  br label %3886

; <label>:3886                                    ; preds = %3885, %3789
  %3887 = phi i32 [ 0, %3789 ], [ %3877, %3885 ]
  %3888 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %3889 = fptoui float %3888 to i32
  %3890 = icmp eq i32 %3889, 0
  br i1 %3890, label %3942, label %3891

; <label>:3891                                    ; preds = %3886
  br label %3892

; <label>:3892                                    ; preds = %3937, %3891
  %3893 = phi i32 [ %3938, %3937 ], [ %3887, %3891 ]
  %3894 = phi i32 [ %3939, %3937 ], [ 0, %3891 ]
  %3895 = lshr i32 %3894, 2
  %3896 = and i32 %3894, 3
  %3897 = add nuw nsw i32 %3895, 83
  %3898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 %3897)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.i32 %3898, 0
  %3900 = extractvalue %dx.types.CBufRet.i32 %3898, 1
  %3901 = extractvalue %dx.types.CBufRet.i32 %3898, 2
  %3902 = extractvalue %dx.types.CBufRet.i32 %3898, 3
  %3903 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 0
  store i32 %3899, i32* %3903, align 4
  %3904 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 1
  store i32 %3900, i32* %3904, align 4
  %3905 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 2
  store i32 %3901, i32* %3905, align 4
  %3906 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 3
  store i32 %3902, i32* %3906, align 4
  %3907 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i32 0, i32 %3896
  %3908 = load i32, i32* %3907, align 4, !tbaa !98, !noalias !102
  %3909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.i32 %3909, 0
  %3911 = lshr i32 %3910, 16
  %3912 = and i32 %3911, 31
  %3913 = shl i32 %3835, %3912
  %3914 = add i32 %3913, %3834
  %3915 = shl i32 %3914, 2
  %3916 = add i32 %3915, %3908
  %3917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3919 = icmp eq i32 %3918, 0
  br i1 %3919, label %3937, label %3920

; <label>:3920                                    ; preds = %3892
  %3921 = icmp slt i32 %3918, 0
  %3922 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3893
  %3923 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3893
  %3924 = bitcast float* %3922 to i32*
  %3925 = bitcast float* %3923 to i32*
  br i1 %3921, label %3926, label %3933

; <label>:3926                                    ; preds = %3920
  %3927 = and i32 %3918, 1073741823
  %3928 = add i32 %3908, 20
  %3929 = add i32 %3928, %3927
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = extractvalue %dx.types.ResRet.i32 %3930, 1
  br label %3933

; <label>:3933                                    ; preds = %3926, %3920
  %3934 = phi i32 [ %3931, %3926 ], [ %3842, %3920 ]
  %3935 = phi i32 [ %3932, %3926 ], [ %3843, %3920 ]
  store i32 %3934, i32* %3924, align 4
  store i32 %3935, i32* %3925, align 4
  %3936 = add i32 %3893, 1
  br label %3937

; <label>:3937                                    ; preds = %3933, %3892
  %3938 = phi i32 [ %3893, %3892 ], [ %3936, %3933 ]
  %3939 = add nuw i32 %3894, 1
  %3940 = icmp eq i32 %3939, %3889
  br i1 %3940, label %3941, label %3892

; <label>:3941                                    ; preds = %3937
  br label %3942

; <label>:3942                                    ; preds = %3941, %3886
  %3943 = phi i32 [ %3887, %3886 ], [ %3938, %3941 ]
  %3944 = icmp eq i32 %3943, 1
  %3945 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %3946 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %3944, label %3947, label %3950

; <label>:3947                                    ; preds = %3942
  %3948 = load float, float* %3945, align 4
  %3949 = load float, float* %3946, align 4
  br label %3977

; <label>:3950                                    ; preds = %3942
  %3951 = load float, float* %3945, align 4
  %3952 = load float, float* %3946, align 4
  %3953 = fdiv fast float 1.000000e+00, %3952
  %3954 = fsub fast float %3951, %3953
  %3955 = icmp ugt i32 %3943, 1
  br i1 %3955, label %3956, label %3972

; <label>:3956                                    ; preds = %3950
  br label %3957

; <label>:3957                                    ; preds = %3957, %3956
  %3958 = phi float [ %3967, %3957 ], [ %3954, %3956 ]
  %3959 = phi float [ %3968, %3957 ], [ %3951, %3956 ]
  %3960 = phi i32 [ %3969, %3957 ], [ 1, %3956 ]
  %3961 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %3960
  %3962 = load float, float* %3961, align 4
  %3963 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3960
  %3964 = load float, float* %3963, align 4
  %3965 = fdiv fast float 1.000000e+00, %3964
  %3966 = fsub fast float %3962, %3965
  %3967 = call float @dx.op.binary.f32(i32 36, float %3958, float %3966)  ; FMin(a,b)
  %3968 = call float @dx.op.binary.f32(i32 35, float %3959, float %3962)  ; FMax(a,b)
  %3969 = add nuw i32 %3960, 1
  %3970 = icmp eq i32 %3969, %3943
  br i1 %3970, label %3971, label %3957

; <label>:3971                                    ; preds = %3957
  br label %3972

; <label>:3972                                    ; preds = %3971, %3950
  %3973 = phi float [ %3954, %3950 ], [ %3967, %3971 ]
  %3974 = phi float [ %3951, %3950 ], [ %3968, %3971 ]
  %3975 = fsub fast float %3974, %3973
  %3976 = fdiv fast float 1.000000e+00, %3975
  br label %3977

; <label>:3977                                    ; preds = %3972, %3947
  %3978 = phi float [ %3948, %3947 ], [ %3974, %3972 ]
  %3979 = phi float [ %3949, %3947 ], [ %3976, %3972 ]
  %3980 = fadd fast float %3681, %3978
  %3981 = fmul fast float %3980, %3979
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = fmul fast float %3982, 2.000000e+00
  %3984 = fsub fast float 1.000000e+00, %3983
  %3985 = fmul fast float %3819, %3819
  %3986 = fsub fast float %3820, %3985
  %3987 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3986)  ; FMax(a,b)
  %3988 = fdiv fast float 1.000000e+00, %3987
  %3989 = fmul fast float %3820, %3819
  %3990 = fsub fast float %3821, %3989
  %3991 = fsub fast float %3984, %3819
  %3992 = fmul fast float %3984, %3984
  %3993 = fsub fast float %3992, %3820
  %3994 = fmul fast float %3988, %3990
  %3995 = fmul fast float %3994, %3991
  %3996 = fsub fast float %3993, %3995
  %3997 = fmul fast float %3820, %3820
  %3998 = fsub fast float %3822, %3997
  %3999 = fmul fast float %3990, %3990
  %4000 = fmul fast float %3999, %3988
  %4001 = fsub fast float %3998, %4000
  %4002 = fdiv fast float %3996, %4001
  %4003 = fmul fast float %4002, %3990
  %4004 = fsub fast float %3991, %4003
  %4005 = fmul fast float %4004, %3988
  %4006 = fmul fast float %4005, %3819
  %4007 = fsub fast float 1.000000e+00, %4006
  %4008 = fmul fast float %4002, %3820
  %4009 = fsub fast float %4007, %4008
  %4010 = fmul fast float %4005, %4005
  %4011 = fmul fast float %4002, 4.000000e+00
  %4012 = fmul fast float %4011, %4009
  %4013 = fsub fast float %4010, %4012
  %4014 = call float @dx.op.unary.f32(i32 24, float %4013)  ; Sqrt(value)
  %4015 = fcmp fast oge float %4005, 0.000000e+00
  %4016 = fsub fast float -0.000000e+00, %4014
  %4017 = select i1 %4015, float %4016, float %4014
  %4018 = fsub fast float %4017, %4005
  %4019 = fdiv fast float %4018, %4002
  %4020 = fdiv fast float %4009, %4018
  %4021 = fmul fast float %4019, 5.000000e-01
  %4022 = fmul fast float %4020, 2.000000e+00
  %4023 = select i1 %4015, float %4021, float %4022
  %4024 = select i1 %4015, float %4022, float %4021
  %4025 = call float @dx.op.binary.f32(i32 35, float %4023, float %4024)  ; FMax(a,b)
  %4026 = call float @dx.op.binary.f32(i32 36, float %4023, float %4024)  ; FMin(a,b)
  %4027 = fcmp fast ogt float %3984, %4025
  %4028 = fsub fast float %3984, %4026
  %4029 = fsub fast float %3984, %4025
  %4030 = fsub fast float %4025, %4026
  %4031 = select i1 %4027, float %4029, float %4030
  %4032 = fmul float %4028, %4031
  %4033 = select i1 %4027, float %4026, float %3984
  %4034 = fcmp fast ogt float %3984, %4026
  %4035 = fmul fast float %4033, %4025
  %4036 = fadd fast float %4033, %4025
  %4037 = fmul fast float %4036, %3819
  %4038 = fadd fast float %4035, %3820
  %4039 = fsub fast float %4038, %4037
  %4040 = fdiv fast float %4039, %4032
  %4041 = select i1 %4034, float %4040, float 0.000000e+00
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = select i1 %4027, float %4042, float %4041
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4045 = extractvalue %dx.types.CBufRet.f32 %3804, 3
  %4046 = fmul fast float %4045, %4044
  %4047 = fsub fast float 1.000000e+00, %4046
  br label %4048

; <label>:4048                                    ; preds = %3977, %3689, %3654, %3650, %3616
  %4049 = phi float [ 1.000000e+00, %3616 ], [ %4047, %3977 ], [ 1.000000e+00, %3654 ], [ 1.000000e+00, %3689 ], [ 1.000000e+00, %3650 ]
  %4050 = fcmp fast ogt float %3646, 0.000000e+00
  br i1 %4050, label %4051, label %4213, !dx.controlflow.hints !111

; <label>:4051                                    ; preds = %4048
  %4052 = fadd fast float %3559, %3533
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 2
  %4055 = extractvalue %dx.types.CBufRet.f32 %4053, 3
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 2
  %4058 = call float @dx.op.binary.f32(i32 35, float %4052, float 0.000000e+00)  ; FMax(a,b)
  %4059 = fadd fast float %4058, 0x3F10000000000000
  %4060 = fcmp fast oeq float %4057, 0.000000e+00
  br i1 %4060, label %4061, label %4128

; <label>:4061                                    ; preds = %4051
  %4062 = extractvalue %dx.types.CBufRet.f32 %4053, 1
  %4063 = extractvalue %dx.types.CBufRet.f32 %4053, 0
  %4064 = fmul fast float %4063, %3548
  %4065 = fmul fast float %4062, %3549
  %4066 = fadd fast float %4064, 5.000000e-01
  %4067 = call float @dx.op.unary.f32(i32 27, float %4066)  ; Round_ni(value)
  %4068 = fadd fast float %4065, 5.000000e-01
  %4069 = call float @dx.op.unary.f32(i32 27, float %4068)  ; Round_ni(value)
  %4070 = fsub fast float %4066, %4067
  %4071 = fsub fast float %4068, %4069
  %4072 = fadd fast float %4067, -5.000000e-01
  %4073 = fadd fast float %4069, -5.000000e-01
  %4074 = fmul fast float %4070, 2.000000e+00
  %4075 = fsub fast float 3.000000e+00, %4074
  %4076 = fadd fast float %4074, 1.000000e+00
  %4077 = fsub fast float 2.000000e+00, %4070
  %4078 = bitcast float %4075 to i32
  %4079 = sub nsw i32 2129859010, %4078
  %4080 = bitcast i32 %4079 to float
  %4081 = fmul fast float %4080, %4077
  %4082 = fadd fast float %4081, -1.000000e+00
  %4083 = bitcast float %4076 to i32
  %4084 = sub nsw i32 2129859010, %4083
  %4085 = bitcast i32 %4084 to float
  %4086 = fmul fast float %4085, %4070
  %4087 = fadd fast float %4086, 1.000000e+00
  %4088 = fmul fast float %4071, 2.000000e+00
  %4089 = fsub fast float 3.000000e+00, %4088
  %4090 = fadd fast float %4088, 1.000000e+00
  %4091 = fsub fast float 2.000000e+00, %4071
  %4092 = bitcast float %4089 to i32
  %4093 = sub nsw i32 2129859010, %4092
  %4094 = bitcast i32 %4093 to float
  %4095 = fmul fast float %4094, %4091
  %4096 = fadd fast float %4095, -1.000000e+00
  %4097 = bitcast float %4090 to i32
  %4098 = sub nsw i32 2129859010, %4097
  %4099 = bitcast i32 %4098 to float
  %4100 = fmul fast float %4099, %4071
  %4101 = fadd fast float %4100, 1.000000e+00
  %4102 = fadd fast float %4082, %4072
  %4103 = fmul fast float %4102, %4054
  %4104 = fadd fast float %4096, %4073
  %4105 = fmul fast float %4104, %4055
  %4106 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %4103, float %4105, float undef, float undef, i32 0, i32 0, i32 undef, float %4059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = fmul fast float %4107, %4075
  %4109 = fadd fast float %4087, %4072
  %4110 = fmul fast float %4109, %4054
  %4111 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %4110, float %4105, float undef, float undef, i32 0, i32 0, i32 undef, float %4059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4113 = fmul fast float %4112, %4076
  %4114 = fadd fast float %4101, %4073
  %4115 = fmul fast float %4114, %4055
  %4116 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %4103, float %4115, float undef, float undef, i32 0, i32 0, i32 undef, float %4059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = fmul fast float %4117, %4075
  %4119 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %52, float %4110, float %4115, float undef, float undef, i32 0, i32 0, i32 undef, float %4059)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = fmul fast float %4120, %4076
  %4122 = fadd fast float %4121, %4118
  %4123 = fmul fast float %4122, %4090
  %4124 = fadd fast float %4113, %4108
  %4125 = fmul fast float %4124, %4089
  %4126 = fadd fast float %4125, %4123
  %4127 = fmul fast float %4126, 6.250000e-02
  br label %4213

; <label>:4128                                    ; preds = %4051
  %4129 = fmul fast float %219, 0x401921FB60000000
  %4130 = call float @dx.op.unary.f32(i32 13, float %4129)  ; Sin(value)
  %4131 = call float @dx.op.unary.f32(i32 12, float %4129)  ; Cos(value)
  %4132 = fsub fast float -0.000000e+00, %4130
  br label %4133

; <label>:4133                                    ; preds = %4182, %4128
  %4134 = phi float [ 0.000000e+00, %4128 ], [ %4177, %4182 ]
  %4135 = phi float [ 0.000000e+00, %4128 ], [ %4179, %4182 ]
  %4136 = phi i32 [ 0, %4128 ], [ %4183, %4182 ]
  %4137 = mul i32 %4136, 2
  %4138 = add i32 0, %4137
  %4139 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4138
  %4140 = load float, float* %4139, align 4
  %4141 = mul i32 %4136, 2
  %4142 = add i32 1, %4141
  %4143 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4142
  %4144 = load float, float* %4143, align 4
  %4145 = fmul fast float %4140, %4131
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4144, float %4132, float %4145)  ; FMad(a,b,c)
  %4147 = fmul fast float %4140, %4130
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %4144, float %4131, float %4147)  ; FMad(a,b,c)
  %4149 = fmul fast float %4146, %4057
  %4150 = fmul fast float %4148, %4057
  %4151 = fadd fast float %4149, %3548
  %4152 = fadd fast float %4150, %3549
  %4153 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %51, float %4151, float %4152, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %4154, float* %4158, align 4
  %4159 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %4155, float* %4159, align 4
  %4160 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %4156, float* %4160, align 4
  %4161 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  store float %4157, float* %4161, align 4
  %4162 = fsub fast float %4154, %4059
  %4163 = fcmp fast olt float %4162, 0.000000e+00
  %4164 = select i1 %4163, float 0.000000e+00, float 1.000000e+00
  %4165 = fadd fast float %4164, %4134
  %4166 = fmul fast float %4164, %4162
  %4167 = fadd fast float %4166, %4135
  br label %4168

; <label>:4168                                    ; preds = %4168, %4133
  %4169 = phi i32 [ 1, %4133 ], [ %4180, %4168 ]
  %4170 = phi float [ %4167, %4133 ], [ %4179, %4168 ]
  %4171 = phi float [ %4165, %4133 ], [ %4177, %4168 ]
  %4172 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %4169
  %4173 = load float, float* %4172, align 4, !tbaa !112, !noalias !102
  %4174 = fsub fast float %4173, %4059
  %4175 = fcmp fast olt float %4174, 0.000000e+00
  %4176 = select i1 %4175, float 0.000000e+00, float 1.000000e+00
  %4177 = fadd fast float %4176, %4171
  %4178 = fmul fast float %4176, %4174
  %4179 = fadd fast float %4178, %4170
  %4180 = add nuw nsw i32 %4169, 1
  %4181 = icmp eq i32 %4180, 4
  br i1 %4181, label %4182, label %4168, !llvm.loop !114

; <label>:4182                                    ; preds = %4168
  %4183 = add nuw nsw i32 %4136, 1
  %4184 = icmp eq i32 %4183, 8
  br i1 %4184, label %4185, label %4133, !llvm.loop !115

; <label>:4185                                    ; preds = %4182
  %4186 = fdiv fast float 1.000000e+00, %4177
  %4187 = fmul fast float %4186, %4179
  %4188 = fdiv fast float 1.000000e+00, %4059
  %4189 = fmul fast float %4187, %4188
  %4190 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4191 = call float @dx.op.binary.f32(i32 35, float %4190, float 0.000000e+00)  ; FMax(a,b)
  %4192 = fmul fast float %4177, 3.125000e-02
  %4193 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4194 = fmul fast float %4193, 2.000000e+00
  %4195 = fadd fast float %4194, -1.000000e+00
  %4196 = fcmp fast ogt float %4195, 0.000000e+00
  %4197 = fcmp fast olt float %4195, 0.000000e+00
  %4198 = zext i1 %4196 to i32
  %4199 = zext i1 %4197 to i32
  %4200 = sub nsw i32 %4198, %4199
  %4201 = sitofp i32 %4200 to float
  %4202 = fmul fast float %4201, %4195
  %4203 = fsub fast float 1.000000e+00, %4202
  %4204 = fmul fast float %4203, %4203
  %4205 = fmul fast float %4204, %4203
  %4206 = fsub fast float %4203, %4205
  %4207 = fmul fast float %4206, %4191
  %4208 = fsub fast float 1.000000e+00, %4205
  %4209 = fsub fast float %4208, %4207
  %4210 = fmul fast float %4201, 5.000000e-01
  %4211 = fmul fast float %4210, %4209
  %4212 = fsub fast float 5.000000e-01, %4211
  br label %4213

; <label>:4213                                    ; preds = %4185, %4061, %4048
  %4214 = phi float [ 1.000000e+00, %4048 ], [ %4127, %4061 ], [ %4212, %4185 ]
  %4215 = fcmp fast ogt float %3644, 0.000000e+00
  br i1 %4215, label %4216, label %4380, !dx.controlflow.hints !116

; <label>:4216                                    ; preds = %4213
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 1
  %4219 = fadd fast float %4218, %3533
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 2
  %4222 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 1
  %4225 = call float @dx.op.binary.f32(i32 35, float %4219, float 0.000000e+00)  ; FMax(a,b)
  %4226 = fadd fast float %4225, 0x3F10000000000000
  %4227 = fcmp fast oeq float %4224, 0.000000e+00
  br i1 %4227, label %4228, label %4295

; <label>:4228                                    ; preds = %4216
  %4229 = extractvalue %dx.types.CBufRet.f32 %4220, 1
  %4230 = extractvalue %dx.types.CBufRet.f32 %4220, 0
  %4231 = fmul fast float %4230, %3540
  %4232 = fmul fast float %4229, %3541
  %4233 = fadd fast float %4231, 5.000000e-01
  %4234 = call float @dx.op.unary.f32(i32 27, float %4233)  ; Round_ni(value)
  %4235 = fadd fast float %4232, 5.000000e-01
  %4236 = call float @dx.op.unary.f32(i32 27, float %4235)  ; Round_ni(value)
  %4237 = fsub fast float %4233, %4234
  %4238 = fsub fast float %4235, %4236
  %4239 = fadd fast float %4234, -5.000000e-01
  %4240 = fadd fast float %4236, -5.000000e-01
  %4241 = fmul fast float %4237, 2.000000e+00
  %4242 = fsub fast float 3.000000e+00, %4241
  %4243 = fadd fast float %4241, 1.000000e+00
  %4244 = fsub fast float 2.000000e+00, %4237
  %4245 = bitcast float %4242 to i32
  %4246 = sub nsw i32 2129859010, %4245
  %4247 = bitcast i32 %4246 to float
  %4248 = fmul fast float %4247, %4244
  %4249 = fadd fast float %4248, -1.000000e+00
  %4250 = bitcast float %4243 to i32
  %4251 = sub nsw i32 2129859010, %4250
  %4252 = bitcast i32 %4251 to float
  %4253 = fmul fast float %4252, %4237
  %4254 = fadd fast float %4253, 1.000000e+00
  %4255 = fmul fast float %4238, 2.000000e+00
  %4256 = fsub fast float 3.000000e+00, %4255
  %4257 = fadd fast float %4255, 1.000000e+00
  %4258 = fsub fast float 2.000000e+00, %4238
  %4259 = bitcast float %4256 to i32
  %4260 = sub nsw i32 2129859010, %4259
  %4261 = bitcast i32 %4260 to float
  %4262 = fmul fast float %4261, %4258
  %4263 = fadd fast float %4262, -1.000000e+00
  %4264 = bitcast float %4257 to i32
  %4265 = sub nsw i32 2129859010, %4264
  %4266 = bitcast i32 %4265 to float
  %4267 = fmul fast float %4266, %4238
  %4268 = fadd fast float %4267, 1.000000e+00
  %4269 = fadd fast float %4249, %4239
  %4270 = fmul fast float %4269, %4221
  %4271 = fadd fast float %4263, %4240
  %4272 = fmul fast float %4271, %4222
  %4273 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %4270, float %4272, float undef, float undef, i32 0, i32 0, i32 undef, float %4226)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = fmul fast float %4274, %4242
  %4276 = fadd fast float %4254, %4239
  %4277 = fmul fast float %4276, %4221
  %4278 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %4277, float %4272, float undef, float undef, i32 0, i32 0, i32 undef, float %4226)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = fmul fast float %4279, %4243
  %4281 = fadd fast float %4268, %4240
  %4282 = fmul fast float %4281, %4222
  %4283 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %4270, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4226)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = fmul fast float %4284, %4242
  %4286 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %52, float %4277, float %4282, float undef, float undef, i32 0, i32 0, i32 undef, float %4226)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = fmul fast float %4287, %4243
  %4289 = fadd fast float %4288, %4285
  %4290 = fmul fast float %4289, %4257
  %4291 = fadd fast float %4280, %4275
  %4292 = fmul fast float %4291, %4256
  %4293 = fadd fast float %4292, %4290
  %4294 = fmul fast float %4293, 6.250000e-02
  br label %4380

; <label>:4295                                    ; preds = %4216
  %4296 = fmul fast float %219, 0x401921FB60000000
  %4297 = call float @dx.op.unary.f32(i32 13, float %4296)  ; Sin(value)
  %4298 = call float @dx.op.unary.f32(i32 12, float %4296)  ; Cos(value)
  %4299 = fsub fast float -0.000000e+00, %4297
  br label %4300

; <label>:4300                                    ; preds = %4349, %4295
  %4301 = phi float [ 0.000000e+00, %4295 ], [ %4344, %4349 ]
  %4302 = phi float [ 0.000000e+00, %4295 ], [ %4346, %4349 ]
  %4303 = phi i32 [ 0, %4295 ], [ %4350, %4349 ]
  %4304 = mul i32 %4303, 2
  %4305 = add i32 0, %4304
  %4306 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4305
  %4307 = load float, float* %4306, align 4
  %4308 = mul i32 %4303, 2
  %4309 = add i32 1, %4308
  %4310 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4309
  %4311 = load float, float* %4310, align 4
  %4312 = fmul fast float %4307, %4298
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4311, float %4299, float %4312)  ; FMad(a,b,c)
  %4314 = fmul fast float %4307, %4297
  %4315 = call float @dx.op.tertiary.f32(i32 46, float %4311, float %4298, float %4314)  ; FMad(a,b,c)
  %4316 = fmul fast float %4313, %4224
  %4317 = fmul fast float %4315, %4224
  %4318 = fadd fast float %4316, %3540
  %4319 = fadd fast float %4317, %3541
  %4320 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %51, float %4318, float %4319, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4321 = extractvalue %dx.types.ResRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.ResRet.f32 %4320, 1
  %4323 = extractvalue %dx.types.ResRet.f32 %4320, 2
  %4324 = extractvalue %dx.types.ResRet.f32 %4320, 3
  %4325 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %4321, float* %4325, align 4
  %4326 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %4322, float* %4326, align 4
  %4327 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %4323, float* %4327, align 4
  %4328 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %4324, float* %4328, align 4
  %4329 = fsub fast float %4321, %4226
  %4330 = fcmp fast olt float %4329, 0.000000e+00
  %4331 = select i1 %4330, float 0.000000e+00, float 1.000000e+00
  %4332 = fadd fast float %4331, %4301
  %4333 = fmul fast float %4331, %4329
  %4334 = fadd fast float %4333, %4302
  br label %4335

; <label>:4335                                    ; preds = %4335, %4300
  %4336 = phi i32 [ 1, %4300 ], [ %4347, %4335 ]
  %4337 = phi float [ %4334, %4300 ], [ %4346, %4335 ]
  %4338 = phi float [ %4332, %4300 ], [ %4344, %4335 ]
  %4339 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %4336
  %4340 = load float, float* %4339, align 4, !tbaa !112, !noalias !102
  %4341 = fsub fast float %4340, %4226
  %4342 = fcmp fast olt float %4341, 0.000000e+00
  %4343 = select i1 %4342, float 0.000000e+00, float 1.000000e+00
  %4344 = fadd fast float %4343, %4338
  %4345 = fmul fast float %4343, %4341
  %4346 = fadd fast float %4345, %4337
  %4347 = add nuw nsw i32 %4336, 1
  %4348 = icmp eq i32 %4347, 4
  br i1 %4348, label %4349, label %4335, !llvm.loop !114

; <label>:4349                                    ; preds = %4335
  %4350 = add nuw nsw i32 %4303, 1
  %4351 = icmp eq i32 %4350, 8
  br i1 %4351, label %4352, label %4300, !llvm.loop !115

; <label>:4352                                    ; preds = %4349
  %4353 = fdiv fast float 1.000000e+00, %4344
  %4354 = fmul fast float %4353, %4346
  %4355 = fdiv fast float 1.000000e+00, %4226
  %4356 = fmul fast float %4354, %4355
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = call float @dx.op.binary.f32(i32 35, float %4357, float 0.000000e+00)  ; FMax(a,b)
  %4359 = fmul fast float %4344, 3.125000e-02
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fmul fast float %4360, 2.000000e+00
  %4362 = fadd fast float %4361, -1.000000e+00
  %4363 = fcmp fast ogt float %4362, 0.000000e+00
  %4364 = fcmp fast olt float %4362, 0.000000e+00
  %4365 = zext i1 %4363 to i32
  %4366 = zext i1 %4364 to i32
  %4367 = sub nsw i32 %4365, %4366
  %4368 = sitofp i32 %4367 to float
  %4369 = fmul fast float %4368, %4362
  %4370 = fsub fast float 1.000000e+00, %4369
  %4371 = fmul fast float %4370, %4370
  %4372 = fmul fast float %4371, %4370
  %4373 = fsub fast float %4370, %4372
  %4374 = fmul fast float %4373, %4358
  %4375 = fsub fast float 1.000000e+00, %4372
  %4376 = fsub fast float %4375, %4374
  %4377 = fmul fast float %4368, 5.000000e-01
  %4378 = fmul fast float %4377, %4376
  %4379 = fsub fast float 5.000000e-01, %4378
  br label %4380

; <label>:4380                                    ; preds = %4352, %4228, %4213
  %4381 = phi float [ 1.000000e+00, %4213 ], [ %4294, %4228 ], [ %4379, %4352 ]
  %4382 = fcmp fast ogt float %3643, 0.000000e+00
  br i1 %4382, label %4383, label %4547, !dx.controlflow.hints !117

; <label>:4383                                    ; preds = %4380
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = fadd fast float %4385, %3533
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 2
  %4389 = extractvalue %dx.types.CBufRet.f32 %4387, 3
  %4390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4391 = extractvalue %dx.types.CBufRet.f32 %4390, 0
  %4392 = call float @dx.op.binary.f32(i32 35, float %4386, float 0.000000e+00)  ; FMax(a,b)
  %4393 = fadd fast float %4392, 0x3F10000000000000
  %4394 = fcmp fast oeq float %4391, 0.000000e+00
  br i1 %4394, label %4395, label %4462

; <label>:4395                                    ; preds = %4383
  %4396 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4397 = extractvalue %dx.types.CBufRet.f32 %4387, 0
  %4398 = fmul fast float %4397, %3525
  %4399 = fmul fast float %4396, %3529
  %4400 = fadd fast float %4398, 5.000000e-01
  %4401 = call float @dx.op.unary.f32(i32 27, float %4400)  ; Round_ni(value)
  %4402 = fadd fast float %4399, 5.000000e-01
  %4403 = call float @dx.op.unary.f32(i32 27, float %4402)  ; Round_ni(value)
  %4404 = fsub fast float %4400, %4401
  %4405 = fsub fast float %4402, %4403
  %4406 = fadd fast float %4401, -5.000000e-01
  %4407 = fadd fast float %4403, -5.000000e-01
  %4408 = fmul fast float %4404, 2.000000e+00
  %4409 = fsub fast float 3.000000e+00, %4408
  %4410 = fadd fast float %4408, 1.000000e+00
  %4411 = fsub fast float 2.000000e+00, %4404
  %4412 = bitcast float %4409 to i32
  %4413 = sub nsw i32 2129859010, %4412
  %4414 = bitcast i32 %4413 to float
  %4415 = fmul fast float %4414, %4411
  %4416 = fadd fast float %4415, -1.000000e+00
  %4417 = bitcast float %4410 to i32
  %4418 = sub nsw i32 2129859010, %4417
  %4419 = bitcast i32 %4418 to float
  %4420 = fmul fast float %4419, %4404
  %4421 = fadd fast float %4420, 1.000000e+00
  %4422 = fmul fast float %4405, 2.000000e+00
  %4423 = fsub fast float 3.000000e+00, %4422
  %4424 = fadd fast float %4422, 1.000000e+00
  %4425 = fsub fast float 2.000000e+00, %4405
  %4426 = bitcast float %4423 to i32
  %4427 = sub nsw i32 2129859010, %4426
  %4428 = bitcast i32 %4427 to float
  %4429 = fmul fast float %4428, %4425
  %4430 = fadd fast float %4429, -1.000000e+00
  %4431 = bitcast float %4424 to i32
  %4432 = sub nsw i32 2129859010, %4431
  %4433 = bitcast i32 %4432 to float
  %4434 = fmul fast float %4433, %4405
  %4435 = fadd fast float %4434, 1.000000e+00
  %4436 = fadd fast float %4416, %4406
  %4437 = fmul fast float %4436, %4388
  %4438 = fadd fast float %4430, %4407
  %4439 = fmul fast float %4438, %4389
  %4440 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4437, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4393)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = fmul fast float %4441, %4409
  %4443 = fadd fast float %4421, %4406
  %4444 = fmul fast float %4443, %4388
  %4445 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4444, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4393)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4446 = extractvalue %dx.types.ResRet.f32 %4445, 0
  %4447 = fmul fast float %4446, %4410
  %4448 = fadd fast float %4435, %4407
  %4449 = fmul fast float %4448, %4389
  %4450 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4437, float %4449, float undef, float undef, i32 0, i32 0, i32 undef, float %4393)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = fmul fast float %4451, %4409
  %4453 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %52, float %4444, float %4449, float undef, float undef, i32 0, i32 0, i32 undef, float %4393)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = fmul fast float %4454, %4410
  %4456 = fadd fast float %4455, %4452
  %4457 = fmul fast float %4456, %4424
  %4458 = fadd fast float %4447, %4442
  %4459 = fmul fast float %4458, %4423
  %4460 = fadd fast float %4459, %4457
  %4461 = fmul fast float %4460, 6.250000e-02
  br label %4547

; <label>:4462                                    ; preds = %4383
  %4463 = fmul fast float %219, 0x401921FB60000000
  %4464 = call float @dx.op.unary.f32(i32 13, float %4463)  ; Sin(value)
  %4465 = call float @dx.op.unary.f32(i32 12, float %4463)  ; Cos(value)
  %4466 = fsub fast float -0.000000e+00, %4464
  br label %4467

; <label>:4467                                    ; preds = %4516, %4462
  %4468 = phi float [ 0.000000e+00, %4462 ], [ %4511, %4516 ]
  %4469 = phi float [ 0.000000e+00, %4462 ], [ %4513, %4516 ]
  %4470 = phi i32 [ 0, %4462 ], [ %4517, %4516 ]
  %4471 = mul i32 %4470, 2
  %4472 = add i32 0, %4471
  %4473 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4472
  %4474 = load float, float* %4473, align 4
  %4475 = mul i32 %4470, 2
  %4476 = add i32 1, %4475
  %4477 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4476
  %4478 = load float, float* %4477, align 4
  %4479 = fmul fast float %4474, %4465
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4478, float %4466, float %4479)  ; FMad(a,b,c)
  %4481 = fmul fast float %4474, %4464
  %4482 = call float @dx.op.tertiary.f32(i32 46, float %4478, float %4465, float %4481)  ; FMad(a,b,c)
  %4483 = fmul fast float %4480, %4391
  %4484 = fmul fast float %4482, %4391
  %4485 = fadd fast float %4483, %3525
  %4486 = fadd fast float %4484, %3529
  %4487 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %51, float %4485, float %4486, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4488 = extractvalue %dx.types.ResRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.ResRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.ResRet.f32 %4487, 2
  %4491 = extractvalue %dx.types.ResRet.f32 %4487, 3
  %4492 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %4488, float* %4492, align 4
  %4493 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %4489, float* %4493, align 4
  %4494 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %4490, float* %4494, align 4
  %4495 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %4491, float* %4495, align 4
  %4496 = fsub fast float %4488, %4393
  %4497 = fcmp fast olt float %4496, 0.000000e+00
  %4498 = select i1 %4497, float 0.000000e+00, float 1.000000e+00
  %4499 = fadd fast float %4498, %4468
  %4500 = fmul fast float %4498, %4496
  %4501 = fadd fast float %4500, %4469
  br label %4502

; <label>:4502                                    ; preds = %4502, %4467
  %4503 = phi i32 [ 1, %4467 ], [ %4514, %4502 ]
  %4504 = phi float [ %4501, %4467 ], [ %4513, %4502 ]
  %4505 = phi float [ %4499, %4467 ], [ %4511, %4502 ]
  %4506 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %4503
  %4507 = load float, float* %4506, align 4, !tbaa !112, !noalias !102
  %4508 = fsub fast float %4507, %4393
  %4509 = fcmp fast olt float %4508, 0.000000e+00
  %4510 = select i1 %4509, float 0.000000e+00, float 1.000000e+00
  %4511 = fadd fast float %4510, %4505
  %4512 = fmul fast float %4510, %4508
  %4513 = fadd fast float %4512, %4504
  %4514 = add nuw nsw i32 %4503, 1
  %4515 = icmp eq i32 %4514, 4
  br i1 %4515, label %4516, label %4502, !llvm.loop !114

; <label>:4516                                    ; preds = %4502
  %4517 = add nuw nsw i32 %4470, 1
  %4518 = icmp eq i32 %4517, 8
  br i1 %4518, label %4519, label %4467, !llvm.loop !115

; <label>:4519                                    ; preds = %4516
  %4520 = fdiv fast float 1.000000e+00, %4511
  %4521 = fmul fast float %4520, %4513
  %4522 = fdiv fast float 1.000000e+00, %4393
  %4523 = fmul fast float %4521, %4522
  %4524 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4525 = call float @dx.op.binary.f32(i32 35, float %4524, float 0.000000e+00)  ; FMax(a,b)
  %4526 = fmul fast float %4511, 3.125000e-02
  %4527 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4528 = fmul fast float %4527, 2.000000e+00
  %4529 = fadd fast float %4528, -1.000000e+00
  %4530 = fcmp fast ogt float %4529, 0.000000e+00
  %4531 = fcmp fast olt float %4529, 0.000000e+00
  %4532 = zext i1 %4530 to i32
  %4533 = zext i1 %4531 to i32
  %4534 = sub nsw i32 %4532, %4533
  %4535 = sitofp i32 %4534 to float
  %4536 = fmul fast float %4535, %4529
  %4537 = fsub fast float 1.000000e+00, %4536
  %4538 = fmul fast float %4537, %4537
  %4539 = fmul fast float %4538, %4537
  %4540 = fsub fast float %4537, %4539
  %4541 = fmul fast float %4540, %4525
  %4542 = fsub fast float 1.000000e+00, %4539
  %4543 = fsub fast float %4542, %4541
  %4544 = fmul fast float %4535, 5.000000e-01
  %4545 = fmul fast float %4544, %4543
  %4546 = fsub fast float 5.000000e-01, %4545
  br label %4547

; <label>:4547                                    ; preds = %4519, %4395, %4380
  %4548 = phi float [ 1.000000e+00, %4380 ], [ %4461, %4395 ], [ %4546, %4519 ]
  %4549 = fsub fast float %4214, %4049
  %4550 = fmul fast float %4549, %3587
  %4551 = fadd fast float %4550, %4049
  %4552 = fsub fast float %4381, %4551
  %4553 = fmul fast float %4552, %3617
  %4554 = fadd fast float %4553, %4551
  %4555 = fsub fast float %4548, %4554
  %4556 = fmul fast float %4555, %3643
  %4557 = fadd fast float %4556, %4554
  %4558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.f32 %4558, 2
  %4560 = fcmp fast ogt float %4559, 0.000000e+00
  br i1 %4560, label %4561, label %4601, !dx.controlflow.hints !118

; <label>:4561                                    ; preds = %4547
  %4562 = fcmp fast ugt float %4559, 0.000000e+00
  br i1 %4562, label %4563, label %4598

; <label>:4563                                    ; preds = %4561
  %4564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.CBufRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.CBufRet.f32 %4564, 2
  %4568 = extractvalue %dx.types.CBufRet.f32 %4564, 3
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.CBufRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.CBufRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.CBufRet.f32 %4569, 3
  %4574 = extractvalue %dx.types.CBufRet.f32 %4558, 0
  %4575 = extractvalue %dx.types.CBufRet.f32 %4558, 1
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.CBufRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.CBufRet.f32 %4576, 2
  %4580 = fadd fast float %4577, %3502
  %4581 = fadd fast float %4578, %3503
  %4582 = fadd fast float %4579, %3504
  %4583 = fmul fast float %4580, %4565
  %4584 = call float @dx.op.tertiary.f32(i32 46, float %4566, float %4581, float %4583)  ; FMad(a,b,c)
  %4585 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4582, float %4584)  ; FMad(a,b,c)
  %4586 = fadd fast float %4585, %4568
  %4587 = fmul fast float %4580, %4570
  %4588 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4581, float %4587)  ; FMad(a,b,c)
  %4589 = call float @dx.op.tertiary.f32(i32 46, float %4572, float %4582, float %4588)  ; FMad(a,b,c)
  %4590 = fadd fast float %4589, %4573
  %4591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %47, float %4586, float %4590, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = fmul fast float %4592, %4575
  %4594 = fadd fast float %4593, %4574
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fmul fast float %4595, %4559
  %4597 = fsub fast float 1.000000e+00, %4596
  br label %4598

; <label>:4598                                    ; preds = %4563, %4561
  %4599 = phi float [ %4597, %4563 ], [ 1.000000e+00, %4561 ]
  %4600 = fmul fast float %4599, %4557
  br label %4601

; <label>:4601                                    ; preds = %4598, %4547, %3482
  %4602 = phi float [ 1.000000e+00, %3482 ], [ %4600, %4598 ], [ %4557, %4547 ]
  %4603 = call float @dx.op.binary.f32(i32 36, float %4602, float %4602)  ; FMin(a,b)
  %4604 = call float @dx.op.binary.f32(i32 36, float %4602, float %4603)  ; FMin(a,b)
  %4605 = fcmp fast ogt float %4604, 0.000000e+00
  br i1 %4605, label %4606, label %4962, !dx.controlflow.hints !119

; <label>:4606                                    ; preds = %4601
  %4607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.f32 %4607, 0
  %4609 = extractvalue %dx.types.CBufRet.f32 %4607, 1
  %4610 = extractvalue %dx.types.CBufRet.f32 %4607, 2
  %4611 = extractvalue %dx.types.CBufRet.f32 %4607, 3
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.CBufRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.CBufRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.CBufRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.CBufRet.f32 %4617, 2
  %4621 = extractvalue %dx.types.CBufRet.f32 %4617, 3
  %4622 = fmul fast float %4608, %3502
  %4623 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %4609, float %4622)  ; FMad(a,b,c)
  %4624 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %4610, float %4623)  ; FMad(a,b,c)
  %4625 = fadd fast float %4624, %4611
  %4626 = fmul fast float %4613, %3502
  %4627 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %4614, float %4626)  ; FMad(a,b,c)
  %4628 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %4615, float %4627)  ; FMad(a,b,c)
  %4629 = fadd fast float %4628, %4616
  %4630 = fmul fast float %4618, %3502
  %4631 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %4619, float %4630)  ; FMad(a,b,c)
  %4632 = call float @dx.op.tertiary.f32(i32 46, float %3504, float %4620, float %4631)  ; FMad(a,b,c)
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 0
  %4635 = extractvalue %dx.types.CBufRet.f32 %4633, 1
  %4636 = extractvalue %dx.types.CBufRet.f32 %4633, 3
  %4637 = fmul fast float %4636, %4625
  %4638 = fmul fast float %4636, %4629
  %4639 = fadd fast float %4637, %4634
  %4640 = fadd fast float %4638, %4635
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4643 = extractvalue %dx.types.CBufRet.f32 %4641, 1
  %4644 = fsub fast float %4639, %4642
  %4645 = fsub fast float %4640, %4643
  %4646 = fcmp fast olt float %4644, 0.000000e+00
  %4647 = fcmp fast olt float %4645, 0.000000e+00
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4651 = extractvalue %dx.types.CBufRet.f32 %4648, 2
  %4652 = extractvalue %dx.types.CBufRet.f32 %4648, 3
  %4653 = select i1 %4646, float %4649, float %4651
  %4654 = select i1 %4647, float %4650, float %4652
  %4655 = fmul fast float %4653, %4644
  %4656 = fmul fast float %4654, %4645
  %4657 = call float @dx.op.unary.f32(i32 6, float %4655)  ; FAbs(value)
  %4658 = call float @dx.op.unary.f32(i32 6, float %4656)  ; FAbs(value)
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 0
  %4661 = call float @dx.op.binary.f32(i32 35, float %4657, float %4658)  ; FMax(a,b)
  %4662 = fsub fast float %4660, %4661
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = fcmp fast ogt float %4663, 0.000000e+00
  br i1 %4664, label %4665, label %4706, !dx.controlflow.hints !120

; <label>:4665                                    ; preds = %4606
  %4666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %50, float %4639, float %4640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4667 = extractvalue %dx.types.ResRet.f32 %4666, 1
  %4668 = fcmp fast ogt float %4667, 0.000000e+00
  br i1 %4668, label %4669, label %4701

; <label>:4669                                    ; preds = %4665
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %50, float %4639, float %4640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4674 = extractvalue %dx.types.ResRet.f32 %4670, 3
  %4675 = fsub fast float 1.000000e+00, %4621
  %4676 = fsub fast float %4675, %4632
  %4677 = fmul fast float %4676, 0x400921FB60000000
  %4678 = fadd fast float %4677, 0x3FF921FB60000000
  %4679 = call float @dx.op.unary.f32(i32 13, float %4678)  ; Sin(value)
  %4680 = fadd fast float %4679, -1.000000e+00
  %4681 = fmul fast float %4680, 0x3FD45F3060000000
  %4682 = fmul fast float %4676, 0x401921FB60000000
  %4683 = fadd fast float %4682, 0x400921FB60000000
  %4684 = call float @dx.op.unary.f32(i32 13, float %4683)  ; Sin(value)
  %4685 = fadd fast float %4684, 0x3E7777A5C0000000
  %4686 = fmul fast float %4685, 0x3FC45F3060000000
  %4687 = fmul fast float %4676, 0x4022D97C80000000
  %4688 = fadd fast float %4687, 0x4012D97C80000000
  %4689 = call float @dx.op.unary.f32(i32 13, float %4688)  ; Sin(value)
  %4690 = fadd fast float %4689, 1.000000e+00
  %4691 = fmul fast float %4690, 0x3FBB2995E0000000
  %4692 = fmul fast float %4676, 0x402921FB60000000
  %4693 = fadd fast float %4692, 0x401921FB60000000
  %4694 = call float @dx.op.unary.f32(i32 13, float %4693)  ; Sin(value)
  %4695 = fadd fast float %4694, 0xBE8777A5C0000000
  %4696 = fmul fast float %4695, 0x3FB45F3060000000
  %4697 = call float @dx.op.dot4.f32(i32 56, float %4671, float %4672, float %4673, float %4674, float %4681, float %4686, float %4691, float %4696)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4698 = fmul fast float %4697, 0xBFF7154760000000
  %4699 = call float @dx.op.unary.f32(i32 21, float %4698)  ; Exp(value)
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  br label %4701

; <label>:4701                                    ; preds = %4669, %4665
  %4702 = phi float [ %4700, %4669 ], [ 1.000000e+00, %4665 ]
  %4703 = fadd fast float %4702, -1.000000e+00
  %4704 = fmul fast float %4703, %4663
  %4705 = fadd fast float %4704, 1.000000e+00
  br label %4706

; <label>:4706                                    ; preds = %4701, %4606
  %4707 = phi float [ %4705, %4701 ], [ 1.000000e+00, %4606 ]
  %4708 = fmul fast float %4707, %4602
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 0
  %4711 = extractvalue %dx.types.CBufRet.f32 %4709, 1
  %4712 = extractvalue %dx.types.CBufRet.f32 %4709, 2
  %4713 = fadd fast float %4710, %142
  %4714 = fadd fast float %4711, %143
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 1
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 0
  %4719 = extractvalue %dx.types.CBufRet.f32 %4717, 1
  %4720 = extractvalue %dx.types.CBufRet.f32 %4717, 2
  %4721 = fsub fast float -0.000000e+00, %4713
  %4722 = fsub fast float -0.000000e+00, %4714
  %4723 = fsub fast float %2534, %4712
  %4724 = fadd fast float %4723, %4716
  %4725 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4721, float %4722, float %4724)  ; Dot3(ax,ay,az,bx,by,bz)
  %4726 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4718, float %4719, float %4720)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = fdiv fast float 1.000000e+00, %4726
  %4728 = fmul fast float %4727, %4725
  %4729 = fmul fast float %4718, %4728
  %4730 = fmul fast float %4719, %4728
  %4731 = fadd fast float %4729, %4713
  %4732 = fadd fast float %4730, %4714
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4736 = fsub fast float %4731, %4734
  %4737 = fsub fast float %4732, %4735
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 2
  %4740 = extractvalue %dx.types.CBufRet.f32 %4738, 3
  %4741 = fmul fast float %4736, %4739
  %4742 = fmul fast float %4737, %4740
  %4743 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.i32 %4743, 3
  %4745 = icmp eq i32 %4744, 0
  br i1 %4745, label %4751, label %4746

; <label>:4746                                    ; preds = %4706
  %4747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %49, float %4741, float %4742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4748 = extractvalue %dx.types.ResRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.ResRet.f32 %4747, 1
  %4750 = extractvalue %dx.types.ResRet.f32 %4747, 2
  br label %4756

; <label>:4751                                    ; preds = %4706
  %4752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %4741, float %4742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4753 = extractvalue %dx.types.ResRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.ResRet.f32 %4752, 1
  %4755 = extractvalue %dx.types.ResRet.f32 %4752, 2
  br label %4756

; <label>:4756                                    ; preds = %4751, %4746
  %4757 = phi float [ %4748, %4746 ], [ %4753, %4751 ]
  %4758 = phi float [ %4749, %4746 ], [ %4754, %4751 ]
  %4759 = phi float [ %4750, %4746 ], [ %4755, %4751 ]
  %4760 = extractvalue %dx.types.CBufRet.f32 %4715, 2
  %4761 = fmul fast float %4760, %4757
  %4762 = extractvalue %dx.types.CBufRet.f32 %4715, 0
  %4763 = fsub fast float %4728, %4762
  %4764 = fsub fast float %4763, %4761
  %4765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4764)  ; FMax(a,b)
  %4766 = fmul fast float %4765, %4758
  %4767 = call float @dx.op.binary.f32(i32 36, float %4759, float %4766)  ; FMin(a,b)
  %4768 = fmul fast float %4767, 0xBFF7154760000000
  %4769 = call float @dx.op.unary.f32(i32 21, float %4768)  ; Exp(value)
  %4770 = fmul fast float %4708, %4769
  %4771 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %3483, float %3484, float %3485)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = fcmp fast ogt float %4771, 0.000000e+00
  br i1 %4772, label %4773, label %4962, !dx.controlflow.hints !121

; <label>:4773                                    ; preds = %4756
  %4774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4774, 1
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4778 = select i1 %2540, float %4775, float %4777
  %4779 = extractvalue %dx.types.CBufRet.f32 %4774, 2
  %4780 = extractvalue %dx.types.CBufRet.f32 %4776, 2
  %4781 = select i1 %2540, float %4779, float %4780
  %4782 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 216)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.i32 %4782, 0
  %4784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 217)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.i32 %4784, 0
  %4786 = select i1 %2540, i32 %4783, i32 %4785
  %4787 = fcmp fast olt float %4778, 5.000000e-01
  %4788 = icmp eq i32 %4786, 0
  %4789 = or i1 %4787, %4788
  br i1 %4789, label %4959, label %4790

; <label>:4790                                    ; preds = %4773
  %4791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.i32 %4791, 0
  %4793 = uitofp i32 %4792 to float
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4797 = extractvalue %dx.types.CBufRet.f32 %4794, 2
  %4798 = extractvalue %dx.types.CBufRet.f32 %4794, 3
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 0
  %4801 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4802 = extractvalue %dx.types.CBufRet.f32 %4799, 2
  %4803 = extractvalue %dx.types.CBufRet.f32 %4799, 3
  %4804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.f32 %4804, 0
  %4806 = extractvalue %dx.types.CBufRet.f32 %4804, 1
  %4807 = extractvalue %dx.types.CBufRet.f32 %4804, 2
  %4808 = extractvalue %dx.types.CBufRet.f32 %4804, 3
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.CBufRet.f32 %4809, 1
  %4812 = extractvalue %dx.types.CBufRet.f32 %4809, 2
  %4813 = extractvalue %dx.types.CBufRet.f32 %4809, 3
  %4814 = fdiv fast float 1.000000e+00, %82
  %4815 = fmul fast float %4812, %94
  %4816 = fmul fast float %4813, %95
  %4817 = fmul fast float %4778, %3483
  %4818 = fmul fast float %4778, %3484
  %4819 = fmul fast float %4778, %3485
  %4820 = fadd fast float %4817, %142
  %4821 = fadd fast float %4818, %143
  %4822 = fadd fast float %4819, %144
  %4823 = fmul fast float %4795, %4820
  %4824 = call float @dx.op.tertiary.f32(i32 46, float %4821, float %4796, float %4823)  ; FMad(a,b,c)
  %4825 = call float @dx.op.tertiary.f32(i32 46, float %4822, float %4797, float %4824)  ; FMad(a,b,c)
  %4826 = fadd fast float %4825, %4798
  %4827 = fmul fast float %4800, %4820
  %4828 = call float @dx.op.tertiary.f32(i32 46, float %4821, float %4801, float %4827)  ; FMad(a,b,c)
  %4829 = call float @dx.op.tertiary.f32(i32 46, float %4822, float %4802, float %4828)  ; FMad(a,b,c)
  %4830 = fadd fast float %4829, %4803
  %4831 = fmul fast float %4805, %4820
  %4832 = call float @dx.op.tertiary.f32(i32 46, float %4821, float %4806, float %4831)  ; FMad(a,b,c)
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %4822, float %4807, float %4832)  ; FMad(a,b,c)
  %4834 = fadd fast float %4833, %4808
  %4835 = fdiv fast float 1.000000e+00, %4834
  %4836 = fmul fast float %4826, 5.000000e-01
  %4837 = fmul fast float %4830, -5.000000e-01
  %4838 = fmul fast float %4836, %4835
  %4839 = fmul fast float %4837, %4835
  %4840 = fsub fast float 5.000000e-01, %4815
  %4841 = fadd fast float %4840, %4838
  %4842 = fsub fast float 5.000000e-01, %4816
  %4843 = fadd fast float %4842, %4839
  %4844 = fsub fast float %4835, %4814
  %4845 = call float @dx.op.dot2.f32(i32 54, float %4841, float %4843, float %4841, float %4843)  ; Dot2(ax,ay,bx,by)
  %4846 = call float @dx.op.binary.f32(i32 35, float %4845, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %4847 = call float @dx.op.dot2.f32(i32 54, float %4810, float %4811, float %4810, float %4811)  ; Dot2(ax,ay,bx,by)
  %4848 = fmul fast float %4847, %4846
  %4849 = call float @dx.op.unary.f32(i32 25, float %4848)  ; Rsqrt(value)
  %4850 = fmul fast float %4849, %4841
  %4851 = fmul fast float %4849, %4843
  %4852 = fadd fast float %4850, %4815
  %4853 = fadd fast float %4851, %4816
  %4854 = fmul fast float %4841, %4810
  %4855 = fmul fast float %4843, %4811
  %4856 = fmul fast float %4854, %4854
  %4857 = fmul fast float %4855, %4855
  %4858 = fadd fast float %4856, %4857
  %4859 = call float @dx.op.unary.f32(i32 24, float %4858)  ; Sqrt(value)
  %4860 = fdiv fast float 1.000000e+00, %4859
  %4861 = fmul fast float %4859, 3.906250e-03
  %4862 = fmul fast float %2539, 0x3F70624DE0000000
  %4863 = fadd fast float %4862, 0x3F70624DE0000000
  %4864 = icmp sgt i32 %4786, -1
  br i1 %4864, label %4865, label %4924

; <label>:4865                                    ; preds = %4790
  br label %4866

; <label>:4866                                    ; preds = %4920, %4865
  %4867 = phi float [ %4898, %4920 ], [ %82, %4865 ]
  %4868 = phi float [ %4885, %4920 ], [ %82, %4865 ]
  %4869 = phi float [ %4868, %4920 ], [ %82, %4865 ]
  %4870 = phi i32 [ %4921, %4920 ], [ 0, %4865 ]
  %4871 = sitofp i32 %4870 to float
  %4872 = fadd fast float %221, 5.000000e-01
  %4873 = call float @dx.op.unary.f32(i32 22, float %4872)  ; Frc(value)
  %4874 = fadd fast float %4871, %4873
  %4875 = sitofp i32 %4786 to float
  %4876 = fdiv fast float %4874, %4875
  %4877 = fmul fast float %4876, %4876
  %4878 = call float @dx.op.binary.f32(i32 36, float %4877, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %4879 = fmul fast float %4878, %4841
  %4880 = fmul fast float %4878, %4843
  %4881 = fmul fast float %4878, %4844
  %4882 = fadd fast float %4879, %4852
  %4883 = fadd fast float %4880, %4853
  %4884 = fadd fast float %4881, %4814
  %4885 = fdiv fast float 1.000000e+00, %4884
  %4886 = icmp ne i32 %4792, 0
  %4887 = fmul fast float %4861, %4878
  %4888 = call float @dx.op.binary.f32(i32 36, float %4887, float %4793)  ; FMin(a,b)
  %4889 = select i1 %4886, float %4888, float 0.000000e+00
  %4890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %51, float %4882, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float %4889)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4891 = extractvalue %dx.types.ResRet.f32 %4890, 0
  %4892 = fcmp fast ogt float %4891, -1.000000e+00
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4895 = select i1 %4892, float %4894, float 1.000000e+00
  %4896 = fadd fast float %4891, 1.000000e+00
  %4897 = fmul fast float %4895, %4896
  %4898 = call float @dx.op.unary.f32(i32 6, float %4897)  ; FAbs(value)
  %4899 = fmul fast float %4898, %4863
  %4900 = fsub fast float %4885, %4898
  %4901 = fsub fast float %4900, %4899
  %4902 = fcmp fast ogt float %4901, 0.000000e+00
  %4903 = fcmp fast ogt float %4781, 0.000000e+00
  br i1 %4903, label %4904, label %4907

; <label>:4904                                    ; preds = %4866
  %4905 = fsub fast float %4885, %4869
  %4906 = call float @dx.op.binary.f32(i32 35, float %4905, float %4781)  ; FMax(a,b)
  br label %4907

; <label>:4907                                    ; preds = %4904, %4866
  %4908 = phi float [ %4906, %4904 ], [ %4778, %4866 ]
  %4909 = fcmp fast olt float %4901, %4908
  %4910 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4912 = fcmp fast oeq float %4882, %4910
  %4913 = fcmp fast oeq float %4883, %4911
  %4914 = and i1 %4912, %4913
  %4915 = and i1 %4902, %4909
  %4916 = and i1 %4915, %4914
  %4917 = fcmp fast ogt float %4878, %4860
  %4918 = and i1 %4917, %4916
  %4919 = zext i1 %4918 to i32
  br i1 %4918, label %4923, label %4920

; <label>:4920                                    ; preds = %4907
  %4921 = add nuw nsw i32 %4870, 1
  %4922 = icmp slt i32 %4870, %4786
  br i1 %4922, label %4866, label %4923

; <label>:4923                                    ; preds = %4920, %4907
  br label %4924

; <label>:4924                                    ; preds = %4923, %4790
  %4925 = phi i32 [ 0, %4790 ], [ %4919, %4923 ]
  %4926 = phi float [ %82, %4790 ], [ %4898, %4923 ]
  %4927 = phi float [ %82, %4790 ], [ %4867, %4923 ]
  %4928 = phi float [ %82, %4790 ], [ %4885, %4923 ]
  %4929 = phi float [ %82, %4790 ], [ %4868, %4923 ]
  %4930 = fsub fast float %4929, %4927
  %4931 = fsub fast float %4928, %4926
  %4932 = fsub fast float %4930, %4931
  %4933 = fcmp fast une float %4932, 0.000000e+00
  %4934 = fmul fast float %4930, %4928
  %4935 = fmul fast float %4929, %4931
  %4936 = fsub fast float %4934, %4935
  %4937 = fdiv fast float 1.000000e+00, %4932
  %4938 = fmul fast float %4936, %4937
  %4939 = select i1 %4933, float %4938, float %4928
  %4940 = fdiv fast float 1.000000e+00, %4939
  %4941 = fsub fast float %4940, %4814
  %4942 = fdiv fast float %4941, %4844
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %4943, %4841
  %4945 = fmul fast float %4943, %4843
  %4946 = fadd fast float %4852, -5.000000e-01
  %4947 = fadd fast float %4946, %4944
  %4948 = fadd fast float %4853, -5.000000e-01
  %4949 = fadd fast float %4948, %4945
  %4950 = call float @dx.op.unary.f32(i32 6, float %4947)  ; FAbs(value)
  %4951 = call float @dx.op.unary.f32(i32 6, float %4949)  ; FAbs(value)
  %4952 = fadd fast float %4950, -5.000000e-01
  %4953 = fadd fast float %4951, -5.000000e-01
  %4954 = call float @dx.op.binary.f32(i32 35, float %4952, float %4953)  ; FMax(a,b)
  %4955 = fcmp fast olt float %4954, 0.000000e+00
  %4956 = icmp ne i32 %4925, 0
  %4957 = and i1 %4956, %4955
  %4958 = select i1 %4957, float 0.000000e+00, float 1.000000e+00
  br label %4959

; <label>:4959                                    ; preds = %4924, %4773
  %4960 = phi float [ %4958, %4924 ], [ 1.000000e+00, %4773 ]
  %4961 = fmul fast float %4960, %4770
  br label %4962

; <label>:4962                                    ; preds = %4959, %4756, %4601
  %4963 = phi float [ %4961, %4959 ], [ %4770, %4756 ], [ %4602, %4601 ]
  %4964 = call float @dx.op.binary.f32(i32 36, float %4963, float %4963)  ; FMin(a,b)
  %4965 = call float @dx.op.binary.f32(i32 36, float %4963, float %4964)  ; FMin(a,b)
  %4966 = fcmp fast ogt float %4965, 0.000000e+00
  br i1 %4966, label %4967, label %5350, !dx.controlflow.hints !122

; <label>:4967                                    ; preds = %4962
  %4968 = fmul fast float %4963, %3494
  %4969 = fmul fast float %4963, %3495
  %4970 = fmul fast float %4963, %3496
  %4971 = fsub fast float %144, %1965
  %4972 = fcmp fast ogt float %4971, 0.000000e+00
  %4973 = fmul fast float %3483, 5.120000e+02
  %4974 = fmul fast float %3484, 5.120000e+02
  %4975 = fmul fast float %3485, 5.120000e+02
  %4976 = fadd fast float %4975, %144
  %4977 = fsub fast float %1965, %4976
  %4978 = fmul fast float %4977, 2.000000e+00
  %4979 = fadd fast float %4978, %4976
  %4980 = select i1 %4972, float %4979, float %4976
  %4981 = fsub fast float %4980, %144
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4973, float %4974, float %4981, float %4973, float %4974, float %4981)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = call float @dx.op.unary.f32(i32 25, float %4982)  ; Rsqrt(value)
  %4984 = fmul fast float %4983, %4973
  %4985 = fmul fast float %4983, %4974
  %4986 = fmul fast float %4983, %4981
  %4987 = fsub fast float %1965, %144
  %4988 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4987)  ; Dot3(ax,ay,az,bx,by,bz)
  %4989 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4984, float %4985, float %4986)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = fdiv fast float 1.000000e+00, %4989
  %4991 = fmul fast float %4990, %4988
  %4992 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4971, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4993 = fcmp fast ogt float %4992, 0.000000e+00
  %4994 = fcmp fast olt float %4992, 0.000000e+00
  %4995 = zext i1 %4993 to i32
  %4996 = zext i1 %4994 to i32
  %4997 = sub nsw i32 %4995, %4996
  %4998 = sitofp i32 %4997 to float
  %4999 = fsub fast float %4980, %1965
  %5000 = call float @dx.op.dot3.f32(i32 55, float %4973, float %4974, float %4999, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5001 = fcmp fast ogt float %5000, 0.000000e+00
  %5002 = fcmp fast olt float %5000, 0.000000e+00
  %5003 = zext i1 %5001 to i32
  %5004 = zext i1 %5002 to i32
  %5005 = sub nsw i32 %5003, %5004
  %5006 = sitofp i32 %5005 to float
  %5007 = fcmp fast une float %4998, %5006
  br i1 %5007, label %5008, label %5018

; <label>:5008                                    ; preds = %4967
  %5009 = fmul fast float %4991, %4986
  %5010 = fmul fast float %4991, %4985
  %5011 = fmul fast float %4991, %4984
  %5012 = fmul fast float %5011, %5011
  %5013 = fmul fast float %5010, %5010
  %5014 = fadd fast float %5012, %5013
  %5015 = fmul fast float %5009, %5009
  %5016 = fadd fast float %5014, %5015
  %5017 = call float @dx.op.unary.f32(i32 24, float %5016)  ; Sqrt(value)
  br label %5028

; <label>:5018                                    ; preds = %4967
  %5019 = icmp slt i32 %4997, 0
  br i1 %5019, label %5020, label %5028

; <label>:5020                                    ; preds = %5018
  %5021 = fsub fast float %144, %4980
  %5022 = fmul fast float %4973, %4973
  %5023 = fmul fast float %4974, %4974
  %5024 = fadd fast float %5022, %5023
  %5025 = fmul fast float %5021, %5021
  %5026 = fadd fast float %5024, %5025
  %5027 = call float @dx.op.unary.f32(i32 24, float %5026)  ; Sqrt(value)
  br label %5028

; <label>:5028                                    ; preds = %5020, %5018, %5008
  %5029 = phi float [ %5017, %5008 ], [ %5027, %5020 ], [ 0.000000e+00, %5018 ]
  %5030 = fsub fast float -0.000000e+00, %5029
  %5031 = select i1 %4972, float -0.000000e+00, float %5030
  %5032 = fmul fast float %1966, 0x3FF7154760000000
  %5033 = fmul fast float %5032, %5031
  %5034 = fmul fast float %1967, 0x3FF7154760000000
  %5035 = fmul fast float %5034, %5031
  %5036 = fmul fast float %1968, 0x3FF7154760000000
  %5037 = fmul fast float %5036, %5031
  %5038 = call float @dx.op.unary.f32(i32 21, float %5033)  ; Exp(value)
  %5039 = call float @dx.op.unary.f32(i32 21, float %5035)  ; Exp(value)
  %5040 = call float @dx.op.unary.f32(i32 21, float %5037)  ; Exp(value)
  %5041 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5042 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5043 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5044 = fmul fast float %4968, %5041
  %5045 = fmul fast float %4969, %5042
  %5046 = fmul fast float %4970, %5043
  %5047 = fsub fast float %3483, %2543
  %5048 = fsub fast float %3484, %2544
  %5049 = fsub fast float %3485, %2545
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.unary.f32(i32 25, float %5050)  ; Rsqrt(value)
  %5052 = fmul fast float %5051, %5047
  %5053 = fmul fast float %5051, %5048
  %5054 = fmul fast float %5051, %5049
  %5055 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %2156, float %2157, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %5056 = call float @dx.op.dot3.f32(i32 55, float %2546, float %2547, float %2548, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = call float @dx.op.unary.f32(i32 7, float %5055)  ; Saturate(value)
  %5058 = fmul fast float %5057, %5057
  %5059 = fmul fast float %5058, %2576
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = fmul fast float %5060, %5057
  %5062 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2157, float %2158, float %5052, float %5053, float %5054)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = fmul fast float %5062, %5062
  %5064 = call float @dx.op.unary.f32(i32 6, float %5055)  ; FAbs(value)
  %5065 = fsub fast float 1.000000e+00, %2569
  %5066 = fmul fast float %2551, %2551
  %5067 = fmul fast float %5066, %5065
  %5068 = fadd fast float %5067, %2569
  %5069 = bitcast float %5068 to i32
  %5070 = ashr i32 %5069, 1
  %5071 = add nsw i32 %5070, 532487669
  %5072 = bitcast i32 %5071 to float
  %5073 = fadd fast float %5072, %2551
  %5074 = fmul fast float %2569, %5063
  %5075 = fsub fast float 1.000000e+00, %5063
  %5076 = fadd fast float %5075, %5074
  %5077 = fmul fast float %5064, %5064
  %5078 = fmul fast float %5077, %5065
  %5079 = fadd fast float %5078, %2569
  %5080 = bitcast float %5079 to i32
  %5081 = ashr i32 %5080, 1
  %5082 = add nsw i32 %5081, 532487669
  %5083 = bitcast i32 %5082 to float
  %5084 = fadd fast float %5083, %5064
  %5085 = fmul fast float %5076, %5076
  %5086 = fmul fast float %5085, %5073
  %5087 = fmul fast float %5086, %5084
  %5088 = fdiv fast float 0x3FF0A00000000000, %5087
  %5089 = fmul fast float %5088, %2569
  %5090 = fmul fast float %2822, 0x3FF9999980000000
  %5091 = fsub fast float 5.000000e+00, %5090
  %5092 = call float @dx.op.unary.f32(i32 6, float %5056)  ; FAbs(value)
  %5093 = fsub fast float 1.000000e+00, %5092
  %5094 = fmul fast float %2822, 0x41D9660740000000
  %5095 = fadd fast float %5094, 0xC1EFBF8940000000
  %5096 = bitcast float %5093 to i32
  %5097 = sitofp i32 %5096 to float
  %5098 = fmul fast float %5097, %5091
  %5099 = fadd fast float %5095, %5098
  %5100 = fptosi float %5099 to i32
  %5101 = bitcast i32 %5100 to float
  %5102 = fsub fast float 1.000000e+00, %2153
  %5103 = fsub fast float 1.000000e+00, %2154
  %5104 = fsub fast float 1.000000e+00, %2549
  %5105 = fmul fast float %5101, %5102
  %5106 = fmul fast float %5101, %5103
  %5107 = fmul fast float %5101, %5104
  %5108 = fadd fast float %5105, %2153
  %5109 = fadd fast float %5106, %2154
  %5110 = fadd fast float %5107, %2549
  br i1 %2845, label %5111, label %5134

; <label>:5111                                    ; preds = %5028
  %5112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1511, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5113 = extractvalue %dx.types.ResRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.ResRet.f32 %5112, 1
  %5115 = extractvalue %dx.types.ResRet.f32 %5112, 2
  %5116 = fadd fast float %5113, -5.000000e-01
  %5117 = fadd fast float %5114, -5.000000e-01
  %5118 = fadd fast float %5115, -5.000000e-01
  %5119 = fmul fast float %2153, 4.000000e+00
  %5120 = fmul fast float %5119, %5102
  %5121 = fmul fast float %5120, %5116
  %5122 = fmul fast float %2154, 4.000000e+00
  %5123 = fmul fast float %5122, %5103
  %5124 = fmul fast float %5123, %5117
  %5125 = fmul fast float %2549, 4.000000e+00
  %5126 = fmul fast float %5125, %5104
  %5127 = fmul fast float %5126, %5118
  %5128 = fadd fast float %5121, %5108
  %5129 = fadd fast float %5124, %5109
  %5130 = fadd fast float %5127, %5110
  %5131 = call float @dx.op.unary.f32(i32 7, float %5128)  ; Saturate(value)
  %5132 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  br label %5134

; <label>:5134                                    ; preds = %5111, %5028
  %5135 = phi float [ %5131, %5111 ], [ %5108, %5028 ]
  %5136 = phi float [ %5132, %5111 ], [ %5109, %5028 ]
  %5137 = phi float [ %5133, %5111 ], [ %5110, %5028 ]
  %5138 = fmul fast float %5055, 9.843750e-01
  %5139 = fadd fast float %5138, 7.812500e-03
  %5140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5139, float %2826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5141 = extractvalue %dx.types.ResRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.ResRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.ResRet.f32 %5140, 2
  %5144 = extractvalue %dx.types.ResRet.f32 %5140, 3
  %5145 = fsub fast float %5143, %5141
  %5146 = fsub fast float %5144, %5142
  %5147 = fmul fast float %5145, %2832
  %5148 = fmul fast float %5146, %2832
  %5149 = fadd fast float %5147, %5141
  %5150 = fadd fast float %5148, %5142
  %5151 = fmul fast float %5149, %2153
  %5152 = fmul fast float %5149, %2154
  %5153 = fmul fast float %5149, %2549
  %5154 = fadd fast float %5151, %5150
  %5155 = fadd fast float %5152, %5150
  %5156 = fadd fast float %5153, %5150
  br i1 %2845, label %5157, label %5180

; <label>:5157                                    ; preds = %5134
  %5158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1511, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.ResRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.ResRet.f32 %5158, 2
  %5162 = fadd fast float %5159, -5.000000e-01
  %5163 = fadd fast float %5160, -5.000000e-01
  %5164 = fadd fast float %5161, -5.000000e-01
  %5165 = fmul fast float %2153, 4.000000e+00
  %5166 = fmul fast float %5165, %5102
  %5167 = fmul fast float %5166, %5162
  %5168 = fmul fast float %2154, 4.000000e+00
  %5169 = fmul fast float %5168, %5103
  %5170 = fmul fast float %5169, %5163
  %5171 = fmul fast float %2549, 4.000000e+00
  %5172 = fmul fast float %5171, %5104
  %5173 = fmul fast float %5172, %5164
  %5174 = fadd fast float %5167, %5154
  %5175 = fadd fast float %5170, %5155
  %5176 = fadd fast float %5173, %5156
  %5177 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5178 = call float @dx.op.unary.f32(i32 7, float %5175)  ; Saturate(value)
  %5179 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  br label %5180

; <label>:5180                                    ; preds = %5157, %5134
  %5181 = phi float [ %5177, %5157 ], [ %5154, %5134 ]
  %5182 = phi float [ %5178, %5157 ], [ %5155, %5134 ]
  %5183 = phi float [ %5179, %5157 ], [ %5156, %5134 ]
  %5184 = call float @dx.op.binary.f32(i32 35, float %5182, float %5183)  ; FMax(a,b)
  %5185 = call float @dx.op.binary.f32(i32 35, float %5181, float %5184)  ; FMax(a,b)
  %5186 = fsub fast float 1.000000e+00, %5185
  %5187 = call float @dx.op.binary.f32(i32 35, float %5064, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5188 = fdiv fast float %911, %5187
  %5189 = fmul fast float %3392, %5188
  %5190 = fmul fast float %3394, %5188
  %5191 = fmul fast float %3396, %5188
  %5192 = call float @dx.op.unary.f32(i32 21, float %5189)  ; Exp(value)
  %5193 = call float @dx.op.unary.f32(i32 21, float %5190)  ; Exp(value)
  %5194 = call float @dx.op.unary.f32(i32 21, float %5191)  ; Exp(value)
  %5195 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5196 = call float @dx.op.unary.f32(i32 7, float %5193)  ; Saturate(value)
  %5197 = call float @dx.op.unary.f32(i32 7, float %5194)  ; Saturate(value)
  %5198 = select i1 %3389, float %5195, float 0.000000e+00
  %5199 = select i1 %3390, float %5196, float 0.000000e+00
  %5200 = select i1 %3391, float %5197, float 0.000000e+00
  %5201 = fsub fast float -0.000000e+00, %2156
  %5202 = fsub fast float -0.000000e+00, %2157
  %5203 = fsub fast float -0.000000e+00, %2158
  %5204 = call float @dx.op.dot3.f32(i32 55, float %3483, float %3484, float %3485, float %5201, float %5202, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5206 = fmul fast float %5205, 9.843750e-01
  %5207 = fadd fast float %5206, 7.812500e-03
  %5208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %5207, float %2826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5212 = extractvalue %dx.types.ResRet.f32 %5208, 3
  %5213 = fsub fast float %5211, %5209
  %5214 = fsub fast float %5212, %5210
  %5215 = fmul fast float %5213, %2832
  %5216 = fmul fast float %5214, %2832
  %5217 = fadd fast float %5215, %5209
  %5218 = fadd fast float %5216, %5210
  %5219 = fmul fast float %5217, %2153
  %5220 = fmul fast float %5217, %2154
  %5221 = fmul fast float %5217, %2549
  %5222 = fadd fast float %5219, %5218
  %5223 = fadd fast float %5220, %5218
  %5224 = fadd fast float %5221, %5218
  br i1 %2845, label %5225, label %5248

; <label>:5225                                    ; preds = %5180
  %5226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1511, float %5205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.ResRet.f32 %5226, 1
  %5229 = extractvalue %dx.types.ResRet.f32 %5226, 2
  %5230 = fadd fast float %5227, -5.000000e-01
  %5231 = fadd fast float %5228, -5.000000e-01
  %5232 = fadd fast float %5229, -5.000000e-01
  %5233 = fmul fast float %2153, 4.000000e+00
  %5234 = fmul fast float %5233, %5102
  %5235 = fmul fast float %5234, %5230
  %5236 = fmul fast float %2154, 4.000000e+00
  %5237 = fmul fast float %5236, %5103
  %5238 = fmul fast float %5237, %5231
  %5239 = fmul fast float %2549, 4.000000e+00
  %5240 = fmul fast float %5239, %5104
  %5241 = fmul fast float %5240, %5232
  %5242 = fadd fast float %5235, %5222
  %5243 = fadd fast float %5238, %5223
  %5244 = fadd fast float %5241, %5224
  %5245 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5246 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5247 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  br label %5248

; <label>:5248                                    ; preds = %5225, %5180
  %5249 = phi float [ %5245, %5225 ], [ %5222, %5180 ]
  %5250 = phi float [ %5246, %5225 ], [ %5223, %5180 ]
  %5251 = phi float [ %5247, %5225 ], [ %5224, %5180 ]
  %5252 = call float @dx.op.binary.f32(i32 35, float %5250, float %5251)  ; FMax(a,b)
  %5253 = call float @dx.op.binary.f32(i32 35, float %5249, float %5252)  ; FMax(a,b)
  %5254 = fsub fast float 1.000000e+00, %5253
  %5255 = fmul fast float %2566, %3456
  %5256 = fadd fast float %3458, %5255
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = fsub fast float %3483, %2557
  %5259 = fsub fast float %3484, %2558
  %5260 = fsub fast float %3485, %2559
  %5261 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5259, float %5260, float %5258, float %5259, float %5260)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = call float @dx.op.unary.f32(i32 25, float %5261)  ; Rsqrt(value)
  %5263 = fmul fast float %5262, %5258
  %5264 = fmul fast float %5262, %5259
  %5265 = fmul fast float %5262, %5260
  %5266 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5202, float %5203, float %5263, float %5264, float %5265)  ; Dot3(ax,ay,az,bx,by,bz)
  %5267 = fmul fast float %5266, %5266
  %5268 = call float @dx.op.unary.f32(i32 6, float %5205)  ; FAbs(value)
  %5269 = call float @dx.op.binary.f32(i32 35, float %5257, float 0x3F847AE140000000)  ; FMax(a,b)
  %5270 = fmul fast float %5269, %5269
  %5271 = fmul fast float %5270, %5270
  %5272 = fsub fast float 1.000000e+00, %5271
  %5273 = fmul fast float %5066, %5272
  %5274 = fadd fast float %5273, %5271
  %5275 = bitcast float %5274 to i32
  %5276 = ashr i32 %5275, 1
  %5277 = add nsw i32 %5276, 532487669
  %5278 = bitcast i32 %5277 to float
  %5279 = fadd fast float %5278, %2551
  %5280 = fmul fast float %5271, %5267
  %5281 = fsub fast float 1.000000e+00, %5267
  %5282 = fadd fast float %5281, %5280
  %5283 = fmul fast float %5268, %5268
  %5284 = fmul fast float %5283, %5272
  %5285 = fadd fast float %5284, %5271
  %5286 = bitcast float %5285 to i32
  %5287 = ashr i32 %5286, 1
  %5288 = add nsw i32 %5287, 532487669
  %5289 = bitcast i32 %5288 to float
  %5290 = fadd fast float %5289, %5268
  %5291 = fmul fast float %5282, %5282
  %5292 = fmul fast float %5291, %5279
  %5293 = fmul fast float %5292, %5290
  %5294 = fdiv fast float 0x3FF0A00000000000, %5293
  %5295 = fmul fast float %5294, %5271
  %5296 = fmul fast float %5205, %5198
  %5297 = fmul fast float %5205, %5199
  %5298 = fmul fast float %5205, %5200
  %5299 = fmul fast float %5296, %5254
  %5300 = fmul fast float %5299, %5295
  %5301 = fmul fast float %5297, %5254
  %5302 = fmul fast float %5301, %5295
  %5303 = fmul fast float %5298, %5254
  %5304 = fmul fast float %5303, %5295
  %5305 = fmul fast float %5135, %5089
  %5306 = fmul fast float %5136, %5089
  %5307 = fmul fast float %5137, %5089
  %5308 = fsub fast float 1.000000e+00, %5056
  %5309 = bitcast float %5308 to i32
  %5310 = sitofp i32 %5309 to float
  %5311 = fmul fast float %5310, 5.000000e+00
  %5312 = fadd fast float %5311, 0xC1EFBF8940000000
  %5313 = fptosi float %5312 to i32
  %5314 = bitcast i32 %5313 to float
  %5315 = fmul fast float %5314, %1510
  %5316 = fmul fast float %5186, %5315
  %5317 = fmul fast float %5316, %3384
  %5318 = fmul fast float %5316, %3385
  %5319 = fmul fast float %5316, %3386
  %5320 = fadd fast float %5317, %5305
  %5321 = fadd fast float %5318, %5306
  %5322 = fadd fast float %5319, %5307
  %5323 = fmul fast float %5320, %5061
  %5324 = fmul fast float %5321, %5061
  %5325 = fmul fast float %5322, %5061
  %5326 = fmul fast float %5061, %5044
  %5327 = fmul fast float %5326, %5186
  %5328 = fmul fast float %5061, %5045
  %5329 = fmul fast float %5328, %5186
  %5330 = fmul fast float %5061, %5046
  %5331 = fmul fast float %5330, %5186
  %5332 = fadd fast float %5323, %5300
  %5333 = fadd fast float %5324, %5302
  %5334 = fadd fast float %5325, %5304
  %5335 = fmul fast float %5332, %5044
  %5336 = fmul fast float %5333, %5045
  %5337 = fmul fast float %5334, %5046
  %5338 = fadd fast float %5327, %3473
  %5339 = fmul fast float %5338, %1534
  %5340 = fadd fast float %5329, %3475
  %5341 = fmul fast float %5340, %1534
  %5342 = fadd fast float %5331, %3477
  %5343 = fmul fast float %5342, %1534
  %5344 = fadd fast float %5335, %3437
  %5345 = fmul fast float %5344, %1534
  %5346 = fadd fast float %5336, %3440
  %5347 = fmul fast float %5346, %1534
  %5348 = fadd fast float %5337, %3443
  %5349 = fmul fast float %5348, %1534
  br label %5350

; <label>:5350                                    ; preds = %5248, %4962, %3367
  %5351 = phi float [ %3438, %3367 ], [ %3438, %4962 ], [ %5345, %5248 ]
  %5352 = phi float [ %3441, %3367 ], [ %3441, %4962 ], [ %5347, %5248 ]
  %5353 = phi float [ %3444, %3367 ], [ %3444, %4962 ], [ %5349, %5248 ]
  %5354 = phi float [ %3474, %3367 ], [ %3474, %4962 ], [ %5339, %5248 ]
  %5355 = phi float [ %3476, %3367 ], [ %3476, %4962 ], [ %5341, %5248 ]
  %5356 = phi float [ %3478, %3367 ], [ %3478, %4962 ], [ %5343, %5248 ]
  %5357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.i32 %5357, 0
  %5359 = icmp eq i32 %5358, 0
  br i1 %5359, label %6423, label %5360

; <label>:5360                                    ; preds = %5350
  %5361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5362 = extractvalue %dx.types.CBufRet.f32 %5361, 2
  %5363 = extractvalue %dx.types.CBufRet.f32 %5361, 3
  %5364 = fmul fast float %5362, %94
  %5365 = fmul fast float %5363, %95
  %5366 = fptoui float %5364 to i32
  %5367 = fptoui float %5365 to i32
  %5368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.f32 %5368, 0
  %5370 = extractvalue %dx.types.CBufRet.f32 %5368, 2
  %5371 = extractvalue %dx.types.CBufRet.f32 %5368, 3
  %5372 = fadd fast float %82, -4.000000e+00
  %5373 = call float @dx.op.binary.f32(i32 35, float %5372, float 0.000000e+00)  ; FMax(a,b)
  %5374 = fadd fast float %5373, %5369
  %5375 = fmul fast float %5374, %5370
  %5376 = call float @dx.op.unary.f32(i32 23, float %5375)  ; Log(value)
  %5377 = fmul fast float %5376, %5371
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5380 = fmul fast float %5377, %5379
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.i32 %5382, 1
  %5384 = add i32 %5383, -1
  %5385 = uitofp i32 %5383 to float
  %5386 = fmul fast float %5385, %5381
  %5387 = fptoui float %5386 to i32
  %5388 = call i32 @dx.op.binary.i32(i32 40, i32 %5387, i32 %5384)  ; UMin(a,b)
  %5389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.i32 %5389, 2
  %5391 = extractvalue %dx.types.CBufRet.i32 %5389, 3
  %5392 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5367, i32 %5390, i32 %5366)  ; UMad(a,b,c)
  %5393 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5388, i32 %5391, i32 %5392)  ; UMad(a,b,c)
  %5394 = add nsw i32 %5358, -1
  %5395 = call i32 @dx.op.binary.i32(i32 37, i32 %5394, i32 0)  ; IMax(a,b)
  %5396 = call float @dx.op.binary.f32(i32 35, float %82, float 0.000000e+00)  ; FMax(a,b)
  %5397 = fptoui float %5396 to i32
  %5398 = lshr i32 %5397, 5
  %5399 = call i32 @dx.op.binary.i32(i32 40, i32 %5398, i32 8191)  ; UMin(a,b)
  %5400 = shl i32 %5399, 2
  %5401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5402 = extractvalue %dx.types.ResRet.i32 %5401, 0
  %5403 = lshr i32 %5402, 16
  %5404 = and i32 %5402, 65535
  %5405 = lshr i32 %5402, 21
  %5406 = lshr i32 %5404, 5
  %5407 = call i32 @dx.op.binary.i32(i32 40, i32 %5406, i32 %5395)  ; UMin(a,b)
  %5408 = icmp ugt i32 %5405, %5407
  br i1 %5408, label %6423, label %5409

; <label>:5409                                    ; preds = %5360
  br label %5410

; <label>:5410                                    ; preds = %6413, %5409
  %5411 = phi i32 [ %6420, %6413 ], [ %5405, %5409 ]
  %5412 = phi float [ %6414, %6413 ], [ %5351, %5409 ]
  %5413 = phi float [ %6415, %6413 ], [ %5352, %5409 ]
  %5414 = phi float [ %6416, %6413 ], [ %5353, %5409 ]
  %5415 = phi float [ %6417, %6413 ], [ %5354, %5409 ]
  %5416 = phi float [ %6418, %6413 ], [ %5355, %5409 ]
  %5417 = phi float [ %6419, %6413 ], [ %5356, %5409 ]
  %5418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.i32 %5418, 0
  %5420 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5393, i32 %5419, i32 %5411)  ; UMad(a,b,c)
  %5421 = shl i32 %5420, 2
  %5422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5421, i32 undef)  ; BufferLoad(srv,index,wot)
  %5423 = extractvalue %dx.types.ResRet.i32 %5422, 0
  %5424 = shl i32 %5411, 5
  %5425 = sub nsw i32 %5403, %5424
  %5426 = call i32 @dx.op.binary.i32(i32 37, i32 %5425, i32 0)  ; IMax(a,b)
  %5427 = call i32 @dx.op.binary.i32(i32 38, i32 %5426, i32 31)  ; IMin(a,b)
  %5428 = sub nsw i32 1, %5403
  %5429 = add nsw i32 %5428, %5404
  %5430 = call i32 @dx.op.binary.i32(i32 37, i32 %5429, i32 0)  ; IMax(a,b)
  %5431 = call i32 @dx.op.binary.i32(i32 38, i32 %5430, i32 32)  ; IMin(a,b)
  %5432 = and i32 %5431, 31
  %5433 = shl i32 -1, %5432
  %5434 = xor i32 %5433, -1
  %5435 = and i32 %5427, 31
  %5436 = shl i32 %5434, %5435
  %5437 = icmp eq i32 %5431, 32
  %5438 = select i1 %5437, i32 -1, i32 %5436
  %5439 = and i32 %5438, %5423
  %5440 = icmp eq i32 %5439, 0
  br i1 %5440, label %6413, label %5441

; <label>:5441                                    ; preds = %5410
  br label %5442

; <label>:5442                                    ; preds = %5577, %5441
  %5443 = phi i32 [ %5454, %5577 ], [ %5439, %5441 ]
  %5444 = phi float [ %5578, %5577 ], [ %5412, %5441 ]
  %5445 = phi float [ %5579, %5577 ], [ %5413, %5441 ]
  %5446 = phi float [ %5580, %5577 ], [ %5414, %5441 ]
  %5447 = phi float [ %5581, %5577 ], [ %5415, %5441 ]
  %5448 = phi float [ %5582, %5577 ], [ %5416, %5441 ]
  %5449 = phi float [ %5583, %5577 ], [ %5417, %5441 ]
  %5450 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5443)  ; FirstbitLo(value)
  %5451 = add i32 %5450, %5424
  %5452 = and i32 %5450, 31
  %5453 = shl i32 1, %5452
  %5454 = xor i32 %5453, %5443
  %5455 = mul i32 %5451, 112
  %5456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5455, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.ResRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.ResRet.f32 %5456, 2
  %5460 = or i32 %5455, 12
  %5461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5460, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 0
  %5463 = add i32 %5455, 16
  %5464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5463, i32 undef)  ; BufferLoad(srv,index,wot)
  %5465 = extractvalue %dx.types.ResRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.ResRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.ResRet.f32 %5464, 2
  %5468 = add i32 %5455, 28
  %5469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5468, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.i32 %5469, 0
  %5471 = add i32 %5455, 44
  %5472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5471, i32 undef)  ; BufferLoad(srv,index,wot)
  %5473 = extractvalue %dx.types.ResRet.f32 %5472, 0
  %5474 = add i32 %5455, 48
  %5475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5474, i32 undef)  ; BufferLoad(srv,index,wot)
  %5476 = extractvalue %dx.types.ResRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.ResRet.f32 %5475, 1
  %5478 = extractvalue %dx.types.ResRet.f32 %5475, 2
  %5479 = extractvalue %dx.types.ResRet.f32 %5475, 3
  %5480 = add i32 %5455, 64
  %5481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5480, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5485 = extractvalue %dx.types.ResRet.f32 %5481, 3
  %5486 = add i32 %5455, 80
  %5487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5486, i32 undef)  ; BufferLoad(srv,index,wot)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5490 = add i32 %5455, 92
  %5491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5490, i32 undef)  ; BufferLoad(srv,index,wot)
  %5492 = extractvalue %dx.types.ResRet.i32 %5491, 0
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5457, float %5458, float %5459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = select i1 %204, float %5488, float %5457
  %5495 = select i1 %204, float %5493, float %5458
  %5496 = select i1 %204, float %5489, float %5459
  %5497 = and i32 %5492, 65535
  %5498 = uitofp i32 %5497 to float
  %5499 = lshr i32 %5492, 16
  %5500 = uitofp i32 %5499 to float
  %5501 = and i32 %5470, 65535
  %5502 = and i32 %5470, 50331648
  %5503 = icmp slt i32 %5470, 0
  %5504 = icmp eq i32 %5502, 33554432
  %5505 = fsub fast float %5476, %142
  %5506 = fsub fast float %5477, %143
  %5507 = fsub fast float %5478, %144
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5506, float %5507, float %5505, float %5506, float %5507)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = call float @dx.op.unary.f32(i32 24, float %5508)  ; Sqrt(value)
  %5510 = fdiv fast float 1.000000e+00, %5509
  %5511 = fmul fast float %5510, %5505
  %5512 = fmul fast float %5510, %5506
  %5513 = fmul fast float %5510, %5507
  %5514 = fadd fast float %5509, %5462
  %5515 = fdiv fast float 1.000000e+00, %5514
  %5516 = fmul float %5473, %5515
  %5517 = fmul float %5516, %5516
  %5518 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  br i1 %5504, label %5519, label %5540

; <label>:5519                                    ; preds = %5442
  %5520 = fmul fast float %5484, %5465
  %5521 = fmul fast float %5484, %5466
  %5522 = fmul fast float %5484, %5467
  %5523 = fadd fast float %5505, %5520
  %5524 = fadd fast float %5506, %5521
  %5525 = fadd fast float %5507, %5522
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5523, float %5524, float %5525, float %5523, float %5524, float %5525)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = call float @dx.op.unary.f32(i32 25, float %5526)  ; Rsqrt(value)
  %5528 = fmul fast float %5527, %5523
  %5529 = fmul fast float %5527, %5524
  %5530 = fmul fast float %5527, %5525
  %5531 = fsub fast float %142, %5476
  %5532 = fsub fast float %143, %5477
  %5533 = fsub fast float %144, %5478
  %5534 = fsub fast float -0.000000e+00, %5531
  %5535 = fsub fast float -0.000000e+00, %5532
  %5536 = fsub fast float -0.000000e+00, %5533
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5535, float %5536, float %5465, float %5466, float %5467)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = fcmp fast ogt float %5537, 0.000000e+00
  %5539 = uitofp i1 %5538 to float
  br label %5540

; <label>:5540                                    ; preds = %5519, %5442
  %5541 = phi float [ %5539, %5519 ], [ 1.000000e+00, %5442 ]
  %5542 = phi float [ %5528, %5519 ], [ %5511, %5442 ]
  %5543 = phi float [ %5529, %5519 ], [ %5512, %5442 ]
  %5544 = phi float [ %5530, %5519 ], [ %5513, %5442 ]
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %5467, float %5542, float %5543, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = fmul fast float %5545, %5545
  %5547 = call float @dx.op.unary.f32(i32 7, float %5546)  ; Saturate(value)
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = fmul fast float %5548, 5.000000e-01
  %5550 = fcmp fast ogt float %5545, 0.000000e+00
  %5551 = fsub fast float 1.000000e+00, %5549
  %5552 = select i1 %5550, float %5549, float %5551
  %5553 = fmul fast float %5552, %5500
  %5554 = fadd fast float %5553, %5498
  %5555 = fmul fast float %5554, 0x3EF0001000000000
  %5556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %50, float %5555, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5557 = extractvalue %dx.types.ResRet.f32 %5556, 0
  %5558 = fmul fast float %5545, %5482
  %5559 = fadd fast float %5558, %5483
  %5560 = call float @dx.op.unary.f32(i32 7, float %5559)  ; Saturate(value)
  %5561 = select i1 %5504, float 1.000000e+00, float %5560
  %5562 = select i1 %5504, float %5560, float 1.000000e+00
  %5563 = fmul fast float %5509, %5479
  %5564 = fsub fast float 1.000000e+00, %5563
  %5565 = fmul fast float %5564, %5485
  %5566 = call float @dx.op.unary.f32(i32 7, float %5565)  ; Saturate(value)
  %5567 = fmul fast float %5566, %5562
  %5568 = fmul fast float %5567, 2.000000e+00
  %5569 = fsub fast float 3.000000e+00, %5568
  %5570 = fmul fast float %5557, %5541
  %5571 = fmul fast float %5567, %5567
  %5572 = fmul fast float %5571, %5570
  %5573 = fmul fast float %5572, %5569
  %5574 = call float @dx.op.binary.f32(i32 36, float %5573, float %5573)  ; FMin(a,b)
  %5575 = call float @dx.op.binary.f32(i32 36, float %5573, float %5574)  ; FMin(a,b)
  %5576 = fcmp fast ogt float %5575, 0.000000e+00
  br i1 %5576, label %5585, label %5577, !dx.controlflow.hints !123

; <label>:5577                                    ; preds = %6366, %5975, %5540
  %5578 = phi float [ %5444, %5975 ], [ %5444, %5540 ], [ %6409, %6366 ]
  %5579 = phi float [ %5445, %5975 ], [ %5445, %5540 ], [ %6410, %6366 ]
  %5580 = phi float [ %5446, %5975 ], [ %5446, %5540 ], [ %6411, %6366 ]
  %5581 = phi float [ %5447, %5975 ], [ %5447, %5540 ], [ %6403, %6366 ]
  %5582 = phi float [ %5448, %5975 ], [ %5448, %5540 ], [ %6404, %6366 ]
  %5583 = phi float [ %5449, %5975 ], [ %5449, %5540 ], [ %6405, %6366 ]
  %5584 = icmp eq i32 %5443, %5453
  br i1 %5584, label %6412, label %5442

; <label>:5585                                    ; preds = %5540
  %5586 = icmp eq i32 %5501, 255
  br i1 %5586, label %5731, label %5587, !dx.controlflow.hints !124

; <label>:5587                                    ; preds = %5585
  %5588 = mul nuw nsw i32 %5501, 176
  %5589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5588, i32 undef)  ; BufferLoad(srv,index,wot)
  %5590 = extractvalue %dx.types.ResRet.f32 %5589, 0
  %5591 = extractvalue %dx.types.ResRet.f32 %5589, 1
  %5592 = extractvalue %dx.types.ResRet.f32 %5589, 2
  %5593 = extractvalue %dx.types.ResRet.f32 %5589, 3
  %5594 = add nuw nsw i32 %5588, 16
  %5595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5594, i32 undef)  ; BufferLoad(srv,index,wot)
  %5596 = extractvalue %dx.types.ResRet.f32 %5595, 0
  %5597 = extractvalue %dx.types.ResRet.f32 %5595, 1
  %5598 = add nuw nsw i32 %5588, 32
  %5599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5598, i32 undef)  ; BufferLoad(srv,index,wot)
  %5600 = extractvalue %dx.types.ResRet.f32 %5599, 0
  %5601 = extractvalue %dx.types.ResRet.f32 %5599, 1
  %5602 = extractvalue %dx.types.ResRet.f32 %5599, 2
  %5603 = add nuw nsw i32 %5588, 48
  %5604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5603, i32 undef)  ; BufferLoad(srv,index,wot)
  %5605 = extractvalue %dx.types.ResRet.f32 %5604, 0
  %5606 = extractvalue %dx.types.ResRet.f32 %5604, 1
  %5607 = extractvalue %dx.types.ResRet.f32 %5604, 2
  %5608 = extractvalue %dx.types.ResRet.f32 %5604, 3
  %5609 = add nuw nsw i32 %5588, 64
  %5610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5609, i32 undef)  ; BufferLoad(srv,index,wot)
  %5611 = extractvalue %dx.types.ResRet.f32 %5610, 0
  %5612 = extractvalue %dx.types.ResRet.f32 %5610, 1
  %5613 = extractvalue %dx.types.ResRet.f32 %5610, 2
  %5614 = extractvalue %dx.types.ResRet.f32 %5610, 3
  %5615 = add nuw nsw i32 %5588, 80
  %5616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5615, i32 undef)  ; BufferLoad(srv,index,wot)
  %5617 = extractvalue %dx.types.ResRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.ResRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.ResRet.f32 %5616, 2
  %5620 = extractvalue %dx.types.ResRet.f32 %5616, 3
  %5621 = add nuw nsw i32 %5588, 96
  %5622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5621, i32 undef)  ; BufferLoad(srv,index,wot)
  %5623 = extractvalue %dx.types.ResRet.f32 %5622, 0
  %5624 = extractvalue %dx.types.ResRet.f32 %5622, 1
  %5625 = extractvalue %dx.types.ResRet.f32 %5622, 2
  %5626 = extractvalue %dx.types.ResRet.f32 %5622, 3
  %5627 = bitcast float %5597 to i32
  %5628 = fmul fast float %5602, %97
  %5629 = fmul fast float %5602, %98
  %5630 = fmul fast float %5602, %99
  %5631 = fadd fast float %5628, %142
  %5632 = fadd fast float %5629, %143
  %5633 = fadd fast float %5630, %144
  %5634 = fmul fast float %5631, %5605
  %5635 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5611, float %5634)  ; FMad(a,b,c)
  %5636 = call float @dx.op.tertiary.f32(i32 46, float %5633, float %5617, float %5635)  ; FMad(a,b,c)
  %5637 = fadd fast float %5636, %5623
  %5638 = fmul fast float %5631, %5606
  %5639 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5612, float %5638)  ; FMad(a,b,c)
  %5640 = call float @dx.op.tertiary.f32(i32 46, float %5633, float %5618, float %5639)  ; FMad(a,b,c)
  %5641 = fadd fast float %5640, %5624
  %5642 = fmul fast float %5631, %5607
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5613, float %5642)  ; FMad(a,b,c)
  %5644 = call float @dx.op.tertiary.f32(i32 46, float %5633, float %5619, float %5643)  ; FMad(a,b,c)
  %5645 = fadd fast float %5644, %5625
  %5646 = fmul fast float %5631, %5608
  %5647 = call float @dx.op.tertiary.f32(i32 46, float %5632, float %5614, float %5646)  ; FMad(a,b,c)
  %5648 = call float @dx.op.tertiary.f32(i32 46, float %5633, float %5620, float %5647)  ; FMad(a,b,c)
  %5649 = fadd fast float %5648, %5626
  %5650 = fdiv fast float %5637, %5649
  %5651 = fdiv fast float %5641, %5649
  %5652 = fdiv fast float %5645, %5649
  %5653 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5652)  ; FMax(a,b)
  %5654 = fmul fast float %219, 0x401921FB60000000
  %5655 = call float @dx.op.unary.f32(i32 13, float %5654)  ; Sin(value)
  %5656 = call float @dx.op.unary.f32(i32 12, float %5654)  ; Cos(value)
  %5657 = fmul fast float %5656, %5601
  %5658 = call float @dx.op.tertiary.f32(i32 46, float %5655, float %5601, float 0.000000e+00)  ; FMad(a,b,c)
  %5659 = fmul fast float %5601, %5655
  %5660 = fsub fast float -0.000000e+00, %5659
  %5661 = call float @dx.op.tertiary.f32(i32 46, float %5656, float %5601, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5662

; <label>:5662                                    ; preds = %5662, %5587
  %5663 = phi float [ 0.000000e+00, %5587 ], [ %5695, %5662 ]
  %5664 = phi float [ 0.000000e+00, %5587 ], [ %5697, %5662 ]
  %5665 = phi i32 [ 0, %5587 ], [ %5698, %5662 ]
  %5666 = mul i32 %5665, 2
  %5667 = add i32 0, %5666
  %5668 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5667
  %5669 = load float, float* %5668, align 4
  %5670 = mul i32 %5665, 2
  %5671 = add i32 1, %5670
  %5672 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5671
  %5673 = load float, float* %5672, align 4
  %5674 = fmul fast float %5657, %5669
  %5675 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %5660, float %5674)  ; FMad(a,b,c)
  %5676 = fmul fast float %5669, %5658
  %5677 = call float @dx.op.tertiary.f32(i32 46, float %5673, float %5661, float %5676)  ; FMad(a,b,c)
  %5678 = fadd fast float %5675, %5650
  %5679 = fadd fast float %5677, %5651
  %5680 = fmul fast float %5678, %5596
  %5681 = fmul fast float %5679, %5596
  %5682 = call float @dx.op.binary.f32(i32 35, float %5680, float %5592)  ; FMax(a,b)
  %5683 = call float @dx.op.binary.f32(i32 35, float %5681, float %5592)  ; FMax(a,b)
  %5684 = call float @dx.op.binary.f32(i32 36, float %5682, float %5593)  ; FMin(a,b)
  %5685 = call float @dx.op.binary.f32(i32 36, float %5683, float %5593)  ; FMin(a,b)
  %5686 = fadd fast float %5684, %5590
  %5687 = fadd fast float %5685, %5591
  %5688 = uitofp i32 %5627 to float
  %5689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %51, float %5686, float %5687, float %5688, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5690 = extractvalue %dx.types.ResRet.f32 %5689, 0
  %5691 = fsub fast float %5690, %5653
  %5692 = fsub fast float %5691, %5600
  %5693 = fcmp fast ogt float %5692, 0.000000e+00
  %5694 = select i1 %5693, float 1.000000e+00, float 0.000000e+00
  %5695 = fadd fast float %5694, %5663
  %5696 = select i1 %5693, float %5692, float 0.000000e+00
  %5697 = fadd fast float %5696, %5664
  %5698 = add nuw nsw i32 %5665, 1
  %5699 = icmp eq i32 %5698, 8
  br i1 %5699, label %5700, label %5662

; <label>:5700                                    ; preds = %5662
  %5701 = fdiv fast float 1.000000e+00, %5695
  %5702 = fmul fast float %5701, %5697
  %5703 = fdiv fast float 1.000000e+00, %5653
  %5704 = fmul fast float %5702, %5703
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = call float @dx.op.binary.f32(i32 35, float %5705, float 0.000000e+00)  ; FMax(a,b)
  %5707 = fmul fast float %5695, 1.250000e-01
  %5708 = call float @dx.op.unary.f32(i32 7, float %5707)  ; Saturate(value)
  %5709 = fmul fast float %5708, 2.000000e+00
  %5710 = fadd fast float %5709, -1.000000e+00
  %5711 = fcmp fast ogt float %5710, 0.000000e+00
  %5712 = fcmp fast olt float %5710, 0.000000e+00
  %5713 = zext i1 %5711 to i32
  %5714 = zext i1 %5712 to i32
  %5715 = sub nsw i32 %5713, %5714
  %5716 = sitofp i32 %5715 to float
  %5717 = fmul fast float %5716, %5710
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = fmul fast float %5718, %5718
  %5720 = fmul fast float %5719, %5718
  %5721 = fsub fast float %5718, %5720
  %5722 = fmul fast float %5721, %5706
  %5723 = fsub fast float 1.000000e+00, %5720
  %5724 = fsub fast float %5723, %5722
  %5725 = fmul fast float %5716, 5.000000e-01
  %5726 = fmul fast float %5725, %5724
  %5727 = fsub fast float -5.000000e-01, %5726
  %5728 = fmul fast float %5727, %5561
  %5729 = fadd fast float %5728, 1.000000e+00
  %5730 = fmul fast float %5729, %5573
  br label %5731

; <label>:5731                                    ; preds = %5700, %5585
  %5732 = phi float [ %5730, %5700 ], [ %5573, %5585 ]
  %5733 = call float @dx.op.binary.f32(i32 36, float %5732, float %5732)  ; FMin(a,b)
  %5734 = call float @dx.op.binary.f32(i32 36, float %5732, float %5733)  ; FMin(a,b)
  %5735 = fcmp fast ogt float %5734, 0.000000e+00
  %5736 = call float @dx.op.dot3.f32(i32 55, float %97, float %98, float %99, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = fcmp fast ogt float %5736, 0.000000e+00
  %5738 = and i1 %5735, %5737
  br i1 %5738, label %5739, label %5975, !dx.controlflow.hints !125

; <label>:5739                                    ; preds = %5731
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 1
  %5744 = select i1 %2540, float %5741, float %5743
  %5745 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5746 = extractvalue %dx.types.CBufRet.f32 %5742, 2
  %5747 = select i1 %2540, float %5745, float %5746
  %5748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 214)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.i32 %5748, 0
  %5750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 215)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.i32 %5750, 0
  %5752 = select i1 %2540, i32 %5749, i32 %5751
  %5753 = fcmp fast olt float %5744, 5.000000e-01
  %5754 = icmp eq i32 %5752, 0
  %5755 = or i1 %5753, %5754
  br i1 %5755, label %5970, label %5756

; <label>:5756                                    ; preds = %5739
  %5757 = fmul fast float %5505, %5505
  %5758 = fmul fast float %5506, %5506
  %5759 = fadd fast float %5757, %5758
  %5760 = fmul fast float %5507, %5507
  %5761 = fadd fast float %5759, %5760
  %5762 = call float @dx.op.unary.f32(i32 24, float %5761)  ; Sqrt(value)
  %5763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.i32 %5763, 0
  %5765 = uitofp i32 %5764 to float
  %5766 = fmul fast float %5744, %5473
  %5767 = fdiv fast float %5766, %5762
  %5768 = call float @dx.op.binary.f32(i32 36, float %5767, float 1.000000e+01)  ; FMin(a,b)
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.CBufRet.f32 %5769, 2
  %5773 = extractvalue %dx.types.CBufRet.f32 %5769, 3
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5778 = extractvalue %dx.types.CBufRet.f32 %5774, 3
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = extractvalue %dx.types.CBufRet.f32 %5779, 3
  %5784 = fmul fast float %221, 0x401061CAC0000000
  %5785 = fmul fast float %221, 0x4023E1D7E0000000
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5786, 2
  %5790 = extractvalue %dx.types.CBufRet.f32 %5786, 3
  %5791 = fsub fast float -0.000000e+00, %5511
  %5792 = fmul fast float %5513, %5791
  %5793 = fmul fast float %5511, %5791
  %5794 = fmul fast float %5512, %5512
  %5795 = fsub fast float %5793, %5794
  %5796 = fdiv fast float 1.000000e+00, %82
  %5797 = fmul fast float %5789, %94
  %5798 = fmul fast float %5790, %95
  %5799 = fmul fast float %5744, %5511
  %5800 = fmul fast float %5744, %5513
  %5801 = fadd fast float %5799, %142
  %5802 = fadd fast float %5800, %144
  %5803 = fadd fast float %5785, 5.000000e-01
  %5804 = call float @dx.op.unary.f32(i32 22, float %5803)  ; Frc(value)
  %5805 = bitcast float %5804 to i32
  %5806 = ashr i32 %5805, 1
  %5807 = add nsw i32 %5806, 532487669
  %5808 = bitcast i32 %5807 to float
  %5809 = fmul fast float %5808, %5768
  %5810 = fadd fast float %5784, 5.000000e-01
  %5811 = call float @dx.op.unary.f32(i32 22, float %5810)  ; Frc(value)
  %5812 = fmul fast float %5811, 0x401921FB60000000
  %5813 = call float @dx.op.unary.f32(i32 12, float %5812)  ; Cos(value)
  %5814 = fmul fast float %5813, %5813
  %5815 = fsub fast float 1.000000e+00, %5814
  %5816 = bitcast float %5815 to i32
  %5817 = ashr i32 %5816, 1
  %5818 = add nsw i32 %5817, 532487669
  %5819 = bitcast i32 %5818 to float
  %5820 = fmul fast float %5809, %5813
  %5821 = fmul fast float %5820, %5512
  %5822 = fmul fast float %5820, %5791
  %5823 = fadd fast float %5801, %5821
  %5824 = fmul fast float %5819, %5809
  %5825 = fmul fast float %5792, %5824
  %5826 = fmul fast float %5824, %5513
  %5827 = fmul fast float %5824, %5795
  %5828 = fsub fast float %5823, %5825
  %5829 = fadd fast float %5826, %5744
  %5830 = fmul fast float %5829, %5512
  %5831 = fadd fast float %5822, %143
  %5832 = fadd fast float %5831, %5830
  %5833 = fadd fast float %5802, %5827
  %5834 = fmul fast float %5828, %5770
  %5835 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5771, float %5834)  ; FMad(a,b,c)
  %5836 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5772, float %5835)  ; FMad(a,b,c)
  %5837 = fadd fast float %5836, %5773
  %5838 = fmul fast float %5828, %5775
  %5839 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5776, float %5838)  ; FMad(a,b,c)
  %5840 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5777, float %5839)  ; FMad(a,b,c)
  %5841 = fadd fast float %5840, %5778
  %5842 = fmul fast float %5828, %5780
  %5843 = call float @dx.op.tertiary.f32(i32 46, float %5832, float %5781, float %5842)  ; FMad(a,b,c)
  %5844 = call float @dx.op.tertiary.f32(i32 46, float %5833, float %5782, float %5843)  ; FMad(a,b,c)
  %5845 = fadd fast float %5844, %5783
  %5846 = fdiv fast float 1.000000e+00, %5845
  %5847 = fmul fast float %5837, 5.000000e-01
  %5848 = fmul fast float %5841, -5.000000e-01
  %5849 = fmul fast float %5847, %5846
  %5850 = fmul fast float %5848, %5846
  %5851 = fsub fast float 5.000000e-01, %5797
  %5852 = fadd fast float %5851, %5849
  %5853 = fsub fast float 5.000000e-01, %5798
  %5854 = fadd fast float %5853, %5850
  %5855 = fsub fast float %5846, %5796
  %5856 = call float @dx.op.dot2.f32(i32 54, float %5852, float %5854, float %5852, float %5854)  ; Dot2(ax,ay,bx,by)
  %5857 = call float @dx.op.binary.f32(i32 35, float %5856, float 0x3EB0C6F7A0000000)  ; FMax(a,b)
  %5858 = call float @dx.op.dot2.f32(i32 54, float %5787, float %5788, float %5787, float %5788)  ; Dot2(ax,ay,bx,by)
  %5859 = fmul fast float %5858, %5857
  %5860 = call float @dx.op.unary.f32(i32 25, float %5859)  ; Rsqrt(value)
  %5861 = fmul fast float %5860, %5852
  %5862 = fmul fast float %5860, %5854
  %5863 = fadd fast float %5861, %5797
  %5864 = fadd fast float %5862, %5798
  %5865 = fmul fast float %5852, %5787
  %5866 = fmul fast float %5854, %5788
  %5867 = fmul fast float %5865, %5865
  %5868 = fmul fast float %5866, %5866
  %5869 = fadd fast float %5867, %5868
  %5870 = call float @dx.op.unary.f32(i32 24, float %5869)  ; Sqrt(value)
  %5871 = fdiv fast float 1.000000e+00, %5870
  %5872 = fmul fast float %5870, 3.906250e-03
  %5873 = fmul fast float %2539, 0x3F70624DE0000000
  %5874 = fadd fast float %5873, 0x3F70624DE0000000
  %5875 = icmp sgt i32 %5752, -1
  br i1 %5875, label %5876, label %5935

; <label>:5876                                    ; preds = %5756
  br label %5877

; <label>:5877                                    ; preds = %5931, %5876
  %5878 = phi float [ %5909, %5931 ], [ %82, %5876 ]
  %5879 = phi float [ %5896, %5931 ], [ %82, %5876 ]
  %5880 = phi float [ %5879, %5931 ], [ %82, %5876 ]
  %5881 = phi i32 [ %5932, %5931 ], [ 0, %5876 ]
  %5882 = sitofp i32 %5881 to float
  %5883 = fadd fast float %221, 5.000000e-01
  %5884 = call float @dx.op.unary.f32(i32 22, float %5883)  ; Frc(value)
  %5885 = fadd fast float %5882, %5884
  %5886 = sitofp i32 %5752 to float
  %5887 = fdiv fast float %5885, %5886
  %5888 = fmul fast float %5887, %5887
  %5889 = call float @dx.op.binary.f32(i32 36, float %5888, float 0x3FEFFF8020000000)  ; FMin(a,b)
  %5890 = fmul fast float %5889, %5852
  %5891 = fmul fast float %5889, %5854
  %5892 = fmul fast float %5889, %5855
  %5893 = fadd fast float %5890, %5863
  %5894 = fadd fast float %5891, %5864
  %5895 = fadd fast float %5892, %5796
  %5896 = fdiv fast float 1.000000e+00, %5895
  %5897 = icmp ne i32 %5764, 0
  %5898 = fmul fast float %5872, %5889
  %5899 = call float @dx.op.binary.f32(i32 36, float %5898, float %5765)  ; FMin(a,b)
  %5900 = select i1 %5897, float %5899, float 0.000000e+00
  %5901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %51, float %5893, float %5894, float undef, float undef, i32 0, i32 0, i32 undef, float %5900)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5902 = extractvalue %dx.types.ResRet.f32 %5901, 0
  %5903 = fcmp fast ogt float %5902, -1.000000e+00
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 1
  %5906 = select i1 %5903, float %5905, float 1.000000e+00
  %5907 = fadd fast float %5902, 1.000000e+00
  %5908 = fmul fast float %5906, %5907
  %5909 = call float @dx.op.unary.f32(i32 6, float %5908)  ; FAbs(value)
  %5910 = fmul fast float %5909, %5874
  %5911 = fsub fast float %5896, %5909
  %5912 = fsub fast float %5911, %5910
  %5913 = fcmp fast ogt float %5912, 0.000000e+00
  %5914 = fcmp fast ogt float %5747, 0.000000e+00
  br i1 %5914, label %5915, label %5918

; <label>:5915                                    ; preds = %5877
  %5916 = fsub fast float %5896, %5880
  %5917 = call float @dx.op.binary.f32(i32 35, float %5916, float %5747)  ; FMax(a,b)
  br label %5918

; <label>:5918                                    ; preds = %5915, %5877
  %5919 = phi float [ %5917, %5915 ], [ %5744, %5877 ]
  %5920 = fcmp fast olt float %5912, %5919
  %5921 = call float @dx.op.unary.f32(i32 7, float %5893)  ; Saturate(value)
  %5922 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5923 = fcmp fast oeq float %5893, %5921
  %5924 = fcmp fast oeq float %5894, %5922
  %5925 = and i1 %5923, %5924
  %5926 = and i1 %5913, %5920
  %5927 = and i1 %5926, %5925
  %5928 = fcmp fast ogt float %5889, %5871
  %5929 = and i1 %5928, %5927
  %5930 = zext i1 %5929 to i32
  br i1 %5929, label %5934, label %5931

; <label>:5931                                    ; preds = %5918
  %5932 = add nuw nsw i32 %5881, 1
  %5933 = icmp slt i32 %5881, %5752
  br i1 %5933, label %5877, label %5934

; <label>:5934                                    ; preds = %5931, %5918
  br label %5935

; <label>:5935                                    ; preds = %5934, %5756
  %5936 = phi i32 [ 0, %5756 ], [ %5930, %5934 ]
  %5937 = phi float [ %82, %5756 ], [ %5909, %5934 ]
  %5938 = phi float [ %82, %5756 ], [ %5878, %5934 ]
  %5939 = phi float [ %82, %5756 ], [ %5896, %5934 ]
  %5940 = phi float [ %82, %5756 ], [ %5879, %5934 ]
  %5941 = fsub fast float %5940, %5938
  %5942 = fsub fast float %5939, %5937
  %5943 = fsub fast float %5941, %5942
  %5944 = fcmp fast une float %5943, 0.000000e+00
  %5945 = fmul fast float %5941, %5939
  %5946 = fmul fast float %5940, %5942
  %5947 = fsub fast float %5945, %5946
  %5948 = fdiv fast float 1.000000e+00, %5943
  %5949 = fmul fast float %5947, %5948
  %5950 = select i1 %5944, float %5949, float %5939
  %5951 = fdiv fast float 1.000000e+00, %5950
  %5952 = fsub fast float %5951, %5796
  %5953 = fdiv fast float %5952, %5855
  %5954 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5955 = fmul fast float %5954, %5852
  %5956 = fmul fast float %5954, %5854
  %5957 = fadd fast float %5955, %5863
  %5958 = fadd fast float %5956, %5864
  %5959 = fadd fast float %5957, -5.000000e-01
  %5960 = fadd fast float %5958, -5.000000e-01
  %5961 = call float @dx.op.unary.f32(i32 6, float %5959)  ; FAbs(value)
  %5962 = call float @dx.op.unary.f32(i32 6, float %5960)  ; FAbs(value)
  %5963 = fadd fast float %5961, -5.000000e-01
  %5964 = fadd fast float %5962, -5.000000e-01
  %5965 = call float @dx.op.binary.f32(i32 35, float %5963, float %5964)  ; FMax(a,b)
  %5966 = fcmp fast olt float %5965, 0.000000e+00
  %5967 = icmp ne i32 %5936, 0
  %5968 = and i1 %5967, %5966
  %5969 = select i1 %5968, float 0.000000e+00, float 1.000000e+00
  br label %5970

; <label>:5970                                    ; preds = %5935, %5739
  %5971 = phi float [ %5969, %5935 ], [ 1.000000e+00, %5739 ]
  %5972 = fmul fast float %5971, %5732
  %5973 = fmul fast float %5971, %5732
  %5974 = fmul fast float %5971, %5732
  br label %5975

; <label>:5975                                    ; preds = %5970, %5731
  %5976 = phi float [ %5972, %5970 ], [ %5732, %5731 ]
  %5977 = phi float [ %5973, %5970 ], [ %5732, %5731 ]
  %5978 = phi float [ %5974, %5970 ], [ %5732, %5731 ]
  %5979 = call float @dx.op.binary.f32(i32 36, float %5977, float %5978)  ; FMin(a,b)
  %5980 = call float @dx.op.binary.f32(i32 36, float %5976, float %5979)  ; FMin(a,b)
  %5981 = fcmp fast ogt float %5980, 0.000000e+00
  br i1 %5981, label %5982, label %5577, !dx.controlflow.hints !126

; <label>:5982                                    ; preds = %5975
  %5983 = fmul fast float %5976, %5494
  %5984 = fmul fast float %5976, %5495
  %5985 = fmul fast float %5976, %5496
  %5986 = fsub fast float %5478, %1965
  %5987 = fcmp fast ogt float %5986, 0.000000e+00
  %5988 = fsub fast float %144, %1965
  %5989 = fcmp fast ogt float %5988, 0.000000e+00
  %5990 = xor i1 %5989, %5987
  %5991 = fsub fast float %1965, %5478
  %5992 = fmul fast float %5991, 2.000000e+00
  %5993 = fadd fast float %5992, %5478
  %5994 = select i1 %5990, float %5478, float %5993
  %5995 = fsub fast float %5994, %144
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5506, float %5995, float %5505, float %5506, float %5995)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = call float @dx.op.unary.f32(i32 25, float %5996)  ; Rsqrt(value)
  %5998 = fmul fast float %5997, %5505
  %5999 = fmul fast float %5997, %5506
  %6000 = fmul fast float %5997, %5995
  %6001 = fsub fast float %1965, %144
  %6002 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5998, float %5999, float %6000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = fdiv fast float 1.000000e+00, %6003
  %6005 = fmul fast float %6004, %6002
  %6006 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5988, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6007 = fcmp fast ogt float %6006, 0.000000e+00
  %6008 = fcmp fast olt float %6006, 0.000000e+00
  %6009 = zext i1 %6007 to i32
  %6010 = zext i1 %6008 to i32
  %6011 = sub nsw i32 %6009, %6010
  %6012 = sitofp i32 %6011 to float
  %6013 = fsub fast float %5994, %1965
  %6014 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5506, float %6013, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  %6016 = fcmp fast olt float %6014, 0.000000e+00
  %6017 = zext i1 %6015 to i32
  %6018 = zext i1 %6016 to i32
  %6019 = sub nsw i32 %6017, %6018
  %6020 = sitofp i32 %6019 to float
  %6021 = fcmp fast une float %6012, %6020
  br i1 %6021, label %6022, label %6032

; <label>:6022                                    ; preds = %5982
  %6023 = fmul fast float %6005, %6000
  %6024 = fmul fast float %6005, %5999
  %6025 = fmul fast float %6005, %5998
  %6026 = fmul fast float %6025, %6025
  %6027 = fmul fast float %6024, %6024
  %6028 = fadd fast float %6026, %6027
  %6029 = fmul fast float %6023, %6023
  %6030 = fadd fast float %6028, %6029
  %6031 = call float @dx.op.unary.f32(i32 24, float %6030)  ; Sqrt(value)
  br label %6044

; <label>:6032                                    ; preds = %5982
  %6033 = icmp slt i32 %6011, 0
  br i1 %6033, label %6034, label %6044

; <label>:6034                                    ; preds = %6032
  %6035 = fsub fast float %142, %5476
  %6036 = fsub fast float %143, %5477
  %6037 = fsub fast float %144, %5994
  %6038 = fmul fast float %6035, %6035
  %6039 = fmul fast float %6036, %6036
  %6040 = fadd fast float %6038, %6039
  %6041 = fmul fast float %6037, %6037
  %6042 = fadd fast float %6040, %6041
  %6043 = call float @dx.op.unary.f32(i32 24, float %6042)  ; Sqrt(value)
  br label %6044

; <label>:6044                                    ; preds = %6034, %6032, %6022
  %6045 = phi float [ %6031, %6022 ], [ %6043, %6034 ], [ 0.000000e+00, %6032 ]
  %6046 = and i1 %5989, %5987
  %6047 = fsub fast float -0.000000e+00, %6045
  %6048 = select i1 %6046, float -0.000000e+00, float %6047
  %6049 = fmul fast float %1966, 0x3FF7154760000000
  %6050 = fmul fast float %6049, %6048
  %6051 = fmul fast float %1967, 0x3FF7154760000000
  %6052 = fmul fast float %6051, %6048
  %6053 = fmul fast float %1968, 0x3FF7154760000000
  %6054 = fmul fast float %6053, %6048
  %6055 = call float @dx.op.unary.f32(i32 21, float %6050)  ; Exp(value)
  %6056 = call float @dx.op.unary.f32(i32 21, float %6052)  ; Exp(value)
  %6057 = call float @dx.op.unary.f32(i32 21, float %6054)  ; Exp(value)
  %6058 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  %6059 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6060 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6061 = fmul fast float %5983, %6058
  %6062 = fmul fast float %5984, %6059
  %6063 = fmul fast float %5985, %6060
  %6064 = fsub fast float %5511, %2543
  %6065 = fsub fast float %5512, %2544
  %6066 = fsub fast float %5513, %2545
  %6067 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6066, float %6064, float %6065, float %6066)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = call float @dx.op.unary.f32(i32 25, float %6067)  ; Rsqrt(value)
  %6069 = fmul fast float %6068, %6064
  %6070 = fmul fast float %6068, %6065
  %6071 = fmul fast float %6068, %6066
  %6072 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %2156, float %2157, float %2158)  ; Dot3(ax,ay,az,bx,by,bz)
  %6073 = call float @dx.op.dot3.f32(i32 55, float %2546, float %2547, float %2548, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6075 = fmul fast float %6074, %5518
  %6076 = fmul fast float %6074, %6074
  %6077 = fmul fast float %6076, %2576
  %6078 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6079 = fmul fast float %6075, %6078
  %6080 = bitcast float %5508 to i32
  %6081 = ashr i32 %6080, 1
  %6082 = sub nsw i32 1597463007, %6081
  %6083 = bitcast i32 %6082 to float
  %6084 = fmul fast float %6083, %5505
  %6085 = fmul fast float %6083, %5506
  %6086 = fmul fast float %6083, %5507
  %6087 = fsub fast float %6084, %2543
  %6088 = fsub fast float %6085, %2544
  %6089 = fsub fast float %6086, %2545
  %6090 = call float @dx.op.dot3.f32(i32 55, float %6087, float %6088, float %6089, float %6087, float %6088, float %6089)  ; Dot3(ax,ay,az,bx,by,bz)
  %6091 = call float @dx.op.unary.f32(i32 25, float %6090)  ; Rsqrt(value)
  %6092 = fmul fast float %6087, %6091
  %6093 = fmul fast float %6088, %6091
  %6094 = fmul fast float %6089, %6091
  %6095 = call float @dx.op.dot3.f32(i32 55, float %2156, float %2157, float %2158, float %6092, float %6093, float %6094)  ; Dot3(ax,ay,az,bx,by,bz)
  %6096 = fmul fast float %6095, %6095
  %6097 = call float @dx.op.unary.f32(i32 6, float %6072)  ; FAbs(value)
  %6098 = fsub fast float 1.000000e+00, %2569
  %6099 = fmul fast float %2551, %2551
  %6100 = fmul fast float %6099, %6098
  %6101 = fadd fast float %6100, %2569
  %6102 = bitcast float %6101 to i32
  %6103 = ashr i32 %6102, 1
  %6104 = add nsw i32 %6103, 532487669
  %6105 = bitcast i32 %6104 to float
  %6106 = fadd fast float %6105, %2551
  %6107 = fmul fast float %2569, %6096
  %6108 = fsub fast float 1.000000e+00, %6096
  %6109 = fadd fast float %6108, %6107
  %6110 = fmul fast float %6097, %6097
  %6111 = fmul fast float %6110, %6098
  %6112 = fadd fast float %6111, %2569
  %6113 = bitcast float %6112 to i32
  %6114 = ashr i32 %6113, 1
  %6115 = add nsw i32 %6114, 532487669
  %6116 = bitcast i32 %6115 to float
  %6117 = fadd fast float %6116, %6097
  %6118 = fmul fast float %6109, %6109
  %6119 = fmul fast float %6118, %6106
  %6120 = fmul fast float %6119, %6117
  %6121 = fdiv fast float 1.000000e+00, %6120
  %6122 = bitcast float %2569 to i32
  %6123 = sitofp i32 %6122 to float
  %6124 = fmul fast float %6123, 0x3FE7F73180000000
  %6125 = fadd fast float %6124, 0x41AFE27C40000000
  %6126 = fptosi float %6125 to i32
  %6127 = bitcast i32 %6126 to float
  %6128 = fmul fast float %5473, 0x3FD80E9D60000000
  %6129 = fmul fast float %6128, %6083
  %6130 = fadd fast float %6127, %6129
  %6131 = bitcast float %6130 to i32
  %6132 = sub nsw i32 2129859010, %6131
  %6133 = bitcast i32 %6132 to float
  %6134 = fmul fast float %2569, %6121
  %6135 = fmul fast float %6134, %6127
  %6136 = fmul fast float %6135, %6133
  %6137 = fmul fast float %2822, 0x3FF9999980000000
  %6138 = fsub fast float 5.000000e+00, %6137
  %6139 = call float @dx.op.unary.f32(i32 6, float %6073)  ; FAbs(value)
  %6140 = fsub fast float 1.000000e+00, %6139
  %6141 = fmul fast float %2822, 0x41D9660740000000
  %6142 = fadd fast float %6141, 0xC1EFBF8940000000
  %6143 = bitcast float %6140 to i32
  %6144 = sitofp i32 %6143 to float
  %6145 = fmul fast float %6144, %6138
  %6146 = fadd fast float %6142, %6145
  %6147 = fptosi float %6146 to i32
  %6148 = bitcast i32 %6147 to float
  %6149 = fsub fast float 1.000000e+00, %2153
  %6150 = fsub fast float 1.000000e+00, %2154
  %6151 = fsub fast float 1.000000e+00, %2549
  %6152 = fmul fast float %6148, %6149
  %6153 = fmul fast float %6148, %6150
  %6154 = fmul fast float %6148, %6151
  %6155 = fadd fast float %6152, %2153
  %6156 = fadd fast float %6153, %2154
  %6157 = fadd fast float %6154, %2549
  br i1 %2845, label %6158, label %6181

; <label>:6158                                    ; preds = %6044
  %6159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1511, float %6139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6160 = extractvalue %dx.types.ResRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.ResRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.ResRet.f32 %6159, 2
  %6163 = fadd fast float %6160, -5.000000e-01
  %6164 = fadd fast float %6161, -5.000000e-01
  %6165 = fadd fast float %6162, -5.000000e-01
  %6166 = fmul fast float %2153, 4.000000e+00
  %6167 = fmul fast float %6166, %6149
  %6168 = fmul fast float %6167, %6163
  %6169 = fmul fast float %2154, 4.000000e+00
  %6170 = fmul fast float %6169, %6150
  %6171 = fmul fast float %6170, %6164
  %6172 = fmul fast float %2549, 4.000000e+00
  %6173 = fmul fast float %6172, %6151
  %6174 = fmul fast float %6173, %6165
  %6175 = fadd fast float %6168, %6155
  %6176 = fadd fast float %6171, %6156
  %6177 = fadd fast float %6174, %6157
  %6178 = call float @dx.op.unary.f32(i32 7, float %6175)  ; Saturate(value)
  %6179 = call float @dx.op.unary.f32(i32 7, float %6176)  ; Saturate(value)
  %6180 = call float @dx.op.unary.f32(i32 7, float %6177)  ; Saturate(value)
  br label %6181

; <label>:6181                                    ; preds = %6158, %6044
  %6182 = phi float [ %6178, %6158 ], [ %6155, %6044 ]
  %6183 = phi float [ %6179, %6158 ], [ %6156, %6044 ]
  %6184 = phi float [ %6180, %6158 ], [ %6157, %6044 ]
  %6185 = fmul fast float %6072, 9.843750e-01
  %6186 = fadd fast float %6185, 7.812500e-03
  %6187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %6186, float %2826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6188 = extractvalue %dx.types.ResRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.ResRet.f32 %6187, 1
  %6190 = extractvalue %dx.types.ResRet.f32 %6187, 2
  %6191 = extractvalue %dx.types.ResRet.f32 %6187, 3
  %6192 = fsub fast float %6190, %6188
  %6193 = fsub fast float %6191, %6189
  %6194 = fmul fast float %6192, %2832
  %6195 = fmul fast float %6193, %2832
  %6196 = fadd fast float %6194, %6188
  %6197 = fadd fast float %6195, %6189
  %6198 = fmul fast float %6196, %2153
  %6199 = fmul fast float %6196, %2154
  %6200 = fmul fast float %6196, %2549
  %6201 = fadd fast float %6198, %6197
  %6202 = fadd fast float %6199, %6197
  %6203 = fadd fast float %6200, %6197
  br i1 %2845, label %6204, label %6227

; <label>:6204                                    ; preds = %6181
  %6205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1511, float %6072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6206 = extractvalue %dx.types.ResRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.ResRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.ResRet.f32 %6205, 2
  %6209 = fadd fast float %6206, -5.000000e-01
  %6210 = fadd fast float %6207, -5.000000e-01
  %6211 = fadd fast float %6208, -5.000000e-01
  %6212 = fmul fast float %2153, 4.000000e+00
  %6213 = fmul fast float %6212, %6149
  %6214 = fmul fast float %6213, %6209
  %6215 = fmul fast float %2154, 4.000000e+00
  %6216 = fmul fast float %6215, %6150
  %6217 = fmul fast float %6216, %6210
  %6218 = fmul fast float %2549, 4.000000e+00
  %6219 = fmul fast float %6218, %6151
  %6220 = fmul fast float %6219, %6211
  %6221 = fadd fast float %6214, %6201
  %6222 = fadd fast float %6217, %6202
  %6223 = fadd fast float %6220, %6203
  %6224 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6225 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6226 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  br label %6227

; <label>:6227                                    ; preds = %6204, %6181
  %6228 = phi float [ %6224, %6204 ], [ %6201, %6181 ]
  %6229 = phi float [ %6225, %6204 ], [ %6202, %6181 ]
  %6230 = phi float [ %6226, %6204 ], [ %6203, %6181 ]
  %6231 = call float @dx.op.binary.f32(i32 35, float %6229, float %6230)  ; FMax(a,b)
  %6232 = call float @dx.op.binary.f32(i32 35, float %6228, float %6231)  ; FMax(a,b)
  %6233 = fsub fast float 1.000000e+00, %6232
  %6234 = call float @dx.op.binary.f32(i32 35, float %6097, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6235 = fdiv fast float %911, %6234
  %6236 = fmul fast float %3392, %6235
  %6237 = fmul fast float %3394, %6235
  %6238 = fmul fast float %3396, %6235
  %6239 = call float @dx.op.unary.f32(i32 21, float %6236)  ; Exp(value)
  %6240 = call float @dx.op.unary.f32(i32 21, float %6237)  ; Exp(value)
  %6241 = call float @dx.op.unary.f32(i32 21, float %6238)  ; Exp(value)
  %6242 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6243 = call float @dx.op.unary.f32(i32 7, float %6240)  ; Saturate(value)
  %6244 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6245 = select i1 %3389, float %6242, float 0.000000e+00
  %6246 = select i1 %3390, float %6243, float 0.000000e+00
  %6247 = select i1 %3391, float %6244, float 0.000000e+00
  %6248 = fsub fast float -0.000000e+00, %2156
  %6249 = fsub fast float -0.000000e+00, %2157
  %6250 = fsub fast float -0.000000e+00, %2158
  %6251 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %6248, float %6249, float %6250)  ; Dot3(ax,ay,az,bx,by,bz)
  %6252 = call float @dx.op.unary.f32(i32 7, float %6251)  ; Saturate(value)
  %6253 = fmul fast float %6252, %5518
  %6254 = fmul fast float %6252, 9.843750e-01
  %6255 = fadd fast float %6254, 7.812500e-03
  %6256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %50, float %6255, float %2826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6257 = extractvalue %dx.types.ResRet.f32 %6256, 0
  %6258 = extractvalue %dx.types.ResRet.f32 %6256, 1
  %6259 = extractvalue %dx.types.ResRet.f32 %6256, 2
  %6260 = extractvalue %dx.types.ResRet.f32 %6256, 3
  %6261 = fsub fast float %6259, %6257
  %6262 = fsub fast float %6260, %6258
  %6263 = fmul fast float %6261, %2832
  %6264 = fmul fast float %6262, %2832
  %6265 = fadd fast float %6263, %6257
  %6266 = fadd fast float %6264, %6258
  %6267 = fmul fast float %6265, %2153
  %6268 = fmul fast float %6265, %2154
  %6269 = fmul fast float %6265, %2549
  %6270 = fadd fast float %6267, %6266
  %6271 = fadd fast float %6268, %6266
  %6272 = fadd fast float %6269, %6266
  br i1 %2845, label %6273, label %6296

; <label>:6273                                    ; preds = %6227
  %6274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %50, float %1511, float %6252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6275 = extractvalue %dx.types.ResRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.ResRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.ResRet.f32 %6274, 2
  %6278 = fadd fast float %6275, -5.000000e-01
  %6279 = fadd fast float %6276, -5.000000e-01
  %6280 = fadd fast float %6277, -5.000000e-01
  %6281 = fmul fast float %2153, 4.000000e+00
  %6282 = fmul fast float %6281, %6149
  %6283 = fmul fast float %6282, %6278
  %6284 = fmul fast float %2154, 4.000000e+00
  %6285 = fmul fast float %6284, %6150
  %6286 = fmul fast float %6285, %6279
  %6287 = fmul fast float %2549, 4.000000e+00
  %6288 = fmul fast float %6287, %6151
  %6289 = fmul fast float %6288, %6280
  %6290 = fadd fast float %6283, %6270
  %6291 = fadd fast float %6286, %6271
  %6292 = fadd fast float %6289, %6272
  %6293 = call float @dx.op.unary.f32(i32 7, float %6290)  ; Saturate(value)
  %6294 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  %6295 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  br label %6296

; <label>:6296                                    ; preds = %6273, %6227
  %6297 = phi float [ %6293, %6273 ], [ %6270, %6227 ]
  %6298 = phi float [ %6294, %6273 ], [ %6271, %6227 ]
  %6299 = phi float [ %6295, %6273 ], [ %6272, %6227 ]
  %6300 = call float @dx.op.binary.f32(i32 35, float %6298, float %6299)  ; FMax(a,b)
  %6301 = call float @dx.op.binary.f32(i32 35, float %6297, float %6300)  ; FMax(a,b)
  %6302 = fsub fast float 1.000000e+00, %6301
  %6303 = fmul fast float %2566, %3456
  %6304 = fadd fast float %3458, %6303
  %6305 = call float @dx.op.unary.f32(i32 7, float %6304)  ; Saturate(value)
  %6306 = fsub fast float %6084, %2557
  %6307 = fsub fast float %6085, %2558
  %6308 = fsub fast float %6086, %2559
  %6309 = call float @dx.op.dot3.f32(i32 55, float %6306, float %6307, float %6308, float %6306, float %6307, float %6308)  ; Dot3(ax,ay,az,bx,by,bz)
  %6310 = call float @dx.op.unary.f32(i32 25, float %6309)  ; Rsqrt(value)
  %6311 = fmul fast float %6306, %6310
  %6312 = fmul fast float %6307, %6310
  %6313 = fmul fast float %6308, %6310
  %6314 = call float @dx.op.dot3.f32(i32 55, float %6248, float %6249, float %6250, float %6311, float %6312, float %6313)  ; Dot3(ax,ay,az,bx,by,bz)
  %6315 = fmul fast float %6314, %6314
  %6316 = call float @dx.op.unary.f32(i32 6, float %6252)  ; FAbs(value)
  %6317 = call float @dx.op.binary.f32(i32 35, float %6305, float 0x3F847AE140000000)  ; FMax(a,b)
  %6318 = fmul fast float %6317, %6317
  %6319 = fmul fast float %6318, %6318
  %6320 = fsub fast float 1.000000e+00, %6319
  %6321 = fmul fast float %6099, %6320
  %6322 = fadd fast float %6321, %6319
  %6323 = bitcast float %6322 to i32
  %6324 = ashr i32 %6323, 1
  %6325 = add nsw i32 %6324, 532487669
  %6326 = bitcast i32 %6325 to float
  %6327 = fadd fast float %6326, %2551
  %6328 = fmul fast float %6319, %6315
  %6329 = fsub fast float 1.000000e+00, %6315
  %6330 = fadd fast float %6329, %6328
  %6331 = fmul fast float %6316, %6316
  %6332 = fmul fast float %6331, %6320
  %6333 = fadd fast float %6332, %6319
  %6334 = bitcast float %6333 to i32
  %6335 = ashr i32 %6334, 1
  %6336 = add nsw i32 %6335, 532487669
  %6337 = bitcast i32 %6336 to float
  %6338 = fadd fast float %6337, %6316
  %6339 = fmul fast float %6330, %6330
  %6340 = fmul fast float %6339, %6327
  %6341 = fmul fast float %6340, %6338
  %6342 = fdiv fast float 1.000000e+00, %6341
  %6343 = bitcast float %6319 to i32
  %6344 = sitofp i32 %6343 to float
  %6345 = fmul fast float %6344, 0x3FE7F73180000000
  %6346 = fadd fast float %6345, 0x41AFE27C40000000
  %6347 = fptosi float %6346 to i32
  %6348 = bitcast i32 %6347 to float
  %6349 = fadd fast float %6348, %6129
  %6350 = bitcast float %6349 to i32
  %6351 = sub nsw i32 2129859010, %6350
  %6352 = bitcast i32 %6351 to float
  %6353 = fmul fast float %6319, %6342
  %6354 = fmul fast float %6353, %6348
  %6355 = fmul fast float %6354, %6352
  br i1 %5503, label %6356, label %6366

; <label>:6356                                    ; preds = %6296
  %6357 = fmul fast float %6253, %6245
  %6358 = fmul fast float %6253, %6246
  %6359 = fmul fast float %6253, %6247
  %6360 = fmul fast float %6357, %6302
  %6361 = fmul fast float %6360, %6355
  %6362 = fmul fast float %6358, %6302
  %6363 = fmul fast float %6362, %6355
  %6364 = fmul fast float %6359, %6302
  %6365 = fmul fast float %6364, %6355
  br label %6366

; <label>:6366                                    ; preds = %6356, %6296
  %6367 = phi float [ %6361, %6356 ], [ 0.000000e+00, %6296 ]
  %6368 = phi float [ %6363, %6356 ], [ 0.000000e+00, %6296 ]
  %6369 = phi float [ %6365, %6356 ], [ 0.000000e+00, %6296 ]
  %6370 = fmul fast float %6182, %6136
  %6371 = fmul fast float %6183, %6136
  %6372 = fmul fast float %6184, %6136
  %6373 = fsub fast float 1.000000e+00, %6073
  %6374 = bitcast float %6373 to i32
  %6375 = sitofp i32 %6374 to float
  %6376 = fmul fast float %6375, 5.000000e+00
  %6377 = fadd fast float %6376, 0xC1EFBF8940000000
  %6378 = fptosi float %6377 to i32
  %6379 = bitcast i32 %6378 to float
  %6380 = fmul fast float %6379, %1510
  %6381 = fmul fast float %6233, %6380
  %6382 = fmul fast float %6381, %3384
  %6383 = fmul fast float %6381, %3385
  %6384 = fmul fast float %6381, %3386
  %6385 = fadd fast float %6382, %6370
  %6386 = fadd fast float %6383, %6371
  %6387 = fadd fast float %6384, %6372
  %6388 = fmul fast float %6385, %6079
  %6389 = fmul fast float %6386, %6079
  %6390 = fmul fast float %6387, %6079
  %6391 = fadd fast float %6388, %6367
  %6392 = fadd fast float %6389, %6368
  %6393 = fadd fast float %6390, %6369
  %6394 = fmul fast float %6061, %1534
  %6395 = fmul fast float %6394, %6079
  %6396 = fmul fast float %6395, %6233
  %6397 = fmul fast float %6062, %1534
  %6398 = fmul fast float %6397, %6079
  %6399 = fmul fast float %6398, %6233
  %6400 = fmul fast float %6063, %1534
  %6401 = fmul fast float %6400, %6079
  %6402 = fmul fast float %6401, %6233
  %6403 = fadd fast float %6396, %5447
  %6404 = fadd fast float %6399, %5448
  %6405 = fadd fast float %6402, %5449
  %6406 = fmul fast float %6394, %6391
  %6407 = fmul fast float %6397, %6392
  %6408 = fmul fast float %6400, %6393
  %6409 = fadd fast float %6406, %5444
  %6410 = fadd fast float %6407, %5445
  %6411 = fadd fast float %6408, %5446
  br label %5577

; <label>:6412                                    ; preds = %5577
  br label %6413

; <label>:6413                                    ; preds = %6412, %5410
  %6414 = phi float [ %5412, %5410 ], [ %5578, %6412 ]
  %6415 = phi float [ %5413, %5410 ], [ %5579, %6412 ]
  %6416 = phi float [ %5414, %5410 ], [ %5580, %6412 ]
  %6417 = phi float [ %5415, %5410 ], [ %5581, %6412 ]
  %6418 = phi float [ %5416, %5410 ], [ %5582, %6412 ]
  %6419 = phi float [ %5417, %5410 ], [ %5583, %6412 ]
  %6420 = add i32 %5411, 1
  %6421 = icmp ugt i32 %6420, %5407
  br i1 %6421, label %6422, label %5410

; <label>:6422                                    ; preds = %6413
  br label %6423

; <label>:6423                                    ; preds = %6422, %5360, %5350
  %6424 = phi float [ %5351, %5350 ], [ %5351, %5360 ], [ %6414, %6422 ]
  %6425 = phi float [ %5352, %5350 ], [ %5352, %5360 ], [ %6415, %6422 ]
  %6426 = phi float [ %5353, %5350 ], [ %5353, %5360 ], [ %6416, %6422 ]
  %6427 = phi float [ %5354, %5350 ], [ %5354, %5360 ], [ %6417, %6422 ]
  %6428 = phi float [ %5355, %5350 ], [ %5355, %5360 ], [ %6418, %6422 ]
  %6429 = phi float [ %5356, %5350 ], [ %5356, %5360 ], [ %6419, %6422 ]
  %6430 = fmul fast float %3413, %1534
  %6431 = fmul fast float %3414, %1534
  %6432 = fmul fast float %3415, %1534
  %6433 = fadd fast float %6430, 1.000000e+00
  %6434 = fadd fast float %6431, 1.000000e+00
  %6435 = fadd fast float %6432, 1.000000e+00
  %6436 = call float @dx.op.dot3.f32(i32 55, float %6433, float %6434, float %6435, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6437 = fsub fast float 1.000000e+00, %6436
  %6438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6439 = extractvalue %dx.types.CBufRet.f32 %6438, 0
  %6440 = fmul fast float %6439, %3419
  %6441 = fsub fast float 1.000000e+00, %2533
  %6442 = extractvalue %dx.types.CBufRet.f32 %6438, 2
  %6443 = fmul fast float %6442, %6441
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 3
  %6446 = fsub fast float 1.000000e+00, %1506
  %6447 = call float @dx.op.unary.f32(i32 7, float %6446)  ; Saturate(value)
  %6448 = fadd fast float %6429, %1505
  %6449 = fmul fast float %6448, %1506
  %6450 = fmul fast float %6447, %6445
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6453 = fmul fast float %6427, %2159
  %6454 = fmul fast float %6428, %2160
  %6455 = fmul fast float %6429, %2161
  %6456 = fcmp fast ogt float %82, %164
  %6457 = and i1 %6456, %1971
  %6458 = or i1 %1977, %6457
  %6459 = icmp eq i32 %1970, 2
  %6460 = fcmp fast ole float %82, %164
  %6461 = and i1 %6460, %6459
  %6462 = or i1 %6461, %6458
  br i1 %6457, label %6463, label %6721

; <label>:6463                                    ; preds = %6423
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 2
  %6466 = extractvalue %dx.types.CBufRet.f32 %6464, 3
  %6467 = fmul fast float %6465, %94
  %6468 = fmul fast float %6466, %95
  %6469 = call float @dx.op.unary.f32(i32 7, float %6467)  ; Saturate(value)
  %6470 = call float @dx.op.unary.f32(i32 7, float %6468)  ; Saturate(value)
  %6471 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %6469, float %6470, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6472 = extractvalue %dx.types.ResRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.ResRet.f32 %6471, 1
  %6474 = extractvalue %dx.types.ResRet.f32 %6471, 2
  %6475 = extractvalue %dx.types.ResRet.f32 %6471, 3
  %6476 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %6469, float %6470, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6477 = extractvalue %dx.types.ResRet.f32 %6476, 0
  %6478 = extractvalue %dx.types.ResRet.f32 %6476, 1
  %6479 = extractvalue %dx.types.ResRet.f32 %6476, 2
  %6480 = extractvalue %dx.types.ResRet.f32 %6476, 3
  %6481 = call float @dx.op.binary.f32(i32 35, float %6473, float %6474)  ; FMax(a,b)
  %6482 = call float @dx.op.binary.f32(i32 35, float %6472, float %6481)  ; FMax(a,b)
  %6483 = call float @dx.op.binary.f32(i32 35, float %6482, float %6475)  ; FMax(a,b)
  %6484 = call float @dx.op.binary.f32(i32 36, float %6478, float %6479)  ; FMin(a,b)
  %6485 = call float @dx.op.binary.f32(i32 36, float %6477, float %6484)  ; FMin(a,b)
  %6486 = call float @dx.op.binary.f32(i32 36, float %6485, float %6480)  ; FMin(a,b)
  %6487 = fmul fast float %6483, 2.550000e+02
  %6488 = fadd fast float %6487, 0x3F70101020000000
  %6489 = fptoui float %6488 to i32
  %6490 = fmul fast float %6486, 2.550000e+02
  %6491 = fadd fast float %6490, 0x3F70101020000000
  %6492 = fptoui float %6491 to i32
  %6493 = icmp ult i32 %6489, %6492
  br i1 %6493, label %6494, label %6661

; <label>:6494                                    ; preds = %6463
  %6495 = fadd fast float %82, -4.000000e+00
  %6496 = select i1 %2540, float -4.000000e+00, float %6495
  %6497 = call float @dx.op.binary.f32(i32 35, float %6496, float 0.000000e+00)  ; FMax(a,b)
  %6498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6499 = extractvalue %dx.types.CBufRet.f32 %6498, 0
  %6500 = fadd fast float %6499, %6497
  %6501 = extractvalue %dx.types.CBufRet.f32 %6498, 2
  %6502 = fmul fast float %6500, %6501
  %6503 = call float @dx.op.unary.f32(i32 23, float %6502)  ; Log(value)
  %6504 = extractvalue %dx.types.CBufRet.f32 %6498, 3
  %6505 = fmul fast float %6504, %6503
  %6506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6507 = extractvalue %dx.types.CBufRet.f32 %6506, 2
  %6508 = fmul fast float %6505, %6507
  %6509 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6510 = uitofp i32 %6489 to float
  %6511 = uitofp i32 %6492 to float
  %6512 = fadd fast float %6510, 5.000000e-01
  %6513 = fadd fast float %6511, 5.000000e-01
  %6514 = fmul fast float %6507, %6512
  %6515 = fmul fast float %6507, %6513
  %6516 = fadd fast float %6514, 0x3F0FFB4800000000
  %6517 = fadd fast float %6515, 0xBF0FFB4800000000
  %6518 = call float @dx.op.binary.f32(i32 35, float %6509, float %6516)  ; FMax(a,b)
  %6519 = call float @dx.op.binary.f32(i32 36, float %6518, float %6517)  ; FMin(a,b)
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6522 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6524 = fmul fast float %6521, %6519
  %6525 = fadd fast float %6523, %6524
  %6526 = fadd fast float %6523, %6522
  %6527 = fsub fast float %6521, %6522
  %6528 = fadd fast float %6527, %6523
  %6529 = call float @dx.op.binary.f32(i32 35, float %6525, float %6526)  ; FMax(a,b)
  %6530 = call float @dx.op.binary.f32(i32 36, float %6529, float %6528)  ; FMin(a,b)
  %6531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %6469, float %6470, float %6530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6532 = extractvalue %dx.types.ResRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.ResRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.ResRet.f32 %6531, 2
  %6535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.i32 %6535, 0
  %6537 = extractvalue %dx.types.CBufRet.i32 %6535, 1
  %6538 = uitofp i32 %6536 to float
  %6539 = uitofp i32 %6537 to float
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6543 = fmul fast float %6538, %6469
  %6544 = fmul fast float %6539, %6470
  %6545 = fadd fast float %6543, -5.000000e-01
  %6546 = fadd fast float %6544, -5.000000e-01
  %6547 = call float @dx.op.unary.f32(i32 22, float %6545)  ; Frc(value)
  %6548 = call float @dx.op.unary.f32(i32 22, float %6546)  ; Frc(value)
  %6549 = fmul fast float %6547, %6547
  %6550 = fmul fast float %6549, %6547
  %6551 = fsub fast float 3.000000e+00, %6547
  %6552 = fmul fast float %6549, %6551
  %6553 = fmul fast float %6547, 3.000000e+00
  %6554 = fmul fast float %6550, 3.000000e+00
  %6555 = fmul fast float %6549, 6.000000e+00
  %6556 = fsub fast float %6554, %6555
  %6557 = fadd fast float %6556, 4.000000e+00
  %6558 = fmul fast float %6557, 0x3FC5555560000000
  %6559 = fmul fast float %6550, -3.000000e+00
  %6560 = fadd fast float %6549, %6547
  %6561 = fmul fast float %6560, 3.000000e+00
  %6562 = fadd fast float %6559, 1.000000e+00
  %6563 = fadd fast float %6562, %6561
  %6564 = fmul fast float %6550, 0x3FC5555560000000
  %6565 = fmul fast float %6548, %6548
  %6566 = fmul fast float %6565, %6548
  %6567 = fsub fast float 3.000000e+00, %6548
  %6568 = fmul fast float %6565, %6567
  %6569 = fmul fast float %6548, 3.000000e+00
  %6570 = fmul fast float %6566, 3.000000e+00
  %6571 = fmul fast float %6565, 6.000000e+00
  %6572 = fsub fast float %6570, %6571
  %6573 = fadd fast float %6572, 4.000000e+00
  %6574 = fmul fast float %6573, 0x3FC5555560000000
  %6575 = fmul fast float %6566, -3.000000e+00
  %6576 = fadd fast float %6565, %6548
  %6577 = fmul fast float %6576, 3.000000e+00
  %6578 = fadd fast float %6575, 1.000000e+00
  %6579 = fadd fast float %6578, %6577
  %6580 = fmul fast float %6566, 0x3FC5555560000000
  %6581 = fadd fast float %6547, 1.000000e+00
  %6582 = fsub fast float 1.000000e+00, %6553
  %6583 = fadd fast float %6582, %6552
  %6584 = fadd fast float %6583, %6557
  %6585 = fmul fast float %6584, 0x3FC5555560000000
  %6586 = fdiv fast float %6558, %6585
  %6587 = fsub fast float %6581, %6586
  %6588 = fsub fast float 1.000000e+00, %6547
  %6589 = fadd fast float %6563, %6550
  %6590 = fmul fast float %6589, 0x3FC5555560000000
  %6591 = fdiv fast float %6564, %6590
  %6592 = fadd fast float %6588, %6591
  %6593 = fadd fast float %6548, 1.000000e+00
  %6594 = fsub fast float 1.000000e+00, %6569
  %6595 = fadd fast float %6594, %6568
  %6596 = fadd fast float %6595, %6573
  %6597 = fmul fast float %6596, 0x3FC5555560000000
  %6598 = fdiv fast float %6574, %6597
  %6599 = fsub fast float %6593, %6598
  %6600 = fsub fast float 1.000000e+00, %6548
  %6601 = fadd fast float %6579, %6566
  %6602 = fmul fast float %6601, 0x3FC5555560000000
  %6603 = fdiv fast float %6580, %6602
  %6604 = fadd fast float %6603, %6600
  %6605 = fmul fast float %6587, %6541
  %6606 = fsub fast float %6469, %6605
  %6607 = fmul fast float %6592, %6541
  %6608 = fadd fast float %6607, %6469
  %6609 = fmul fast float %6604, %6542
  %6610 = fadd fast float %6609, %6470
  %6611 = fmul fast float %6599, %6542
  %6612 = fsub fast float %6470, %6611
  %6613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6606, float %6612, float %6530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6614 = extractvalue %dx.types.ResRet.f32 %6613, 0
  %6615 = extractvalue %dx.types.ResRet.f32 %6613, 1
  %6616 = extractvalue %dx.types.ResRet.f32 %6613, 2
  %6617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6608, float %6612, float %6530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6618 = extractvalue %dx.types.ResRet.f32 %6617, 0
  %6619 = extractvalue %dx.types.ResRet.f32 %6617, 1
  %6620 = extractvalue %dx.types.ResRet.f32 %6617, 2
  %6621 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6606, float %6610, float %6530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6622 = extractvalue %dx.types.ResRet.f32 %6621, 0
  %6623 = extractvalue %dx.types.ResRet.f32 %6621, 1
  %6624 = extractvalue %dx.types.ResRet.f32 %6621, 2
  %6625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %6608, float %6610, float %6530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6626 = extractvalue %dx.types.ResRet.f32 %6625, 0
  %6627 = extractvalue %dx.types.ResRet.f32 %6625, 1
  %6628 = extractvalue %dx.types.ResRet.f32 %6625, 2
  %6629 = fsub fast float %6622, %6614
  %6630 = fsub fast float %6623, %6615
  %6631 = fsub fast float %6624, %6616
  %6632 = fmul fast float %6629, %6602
  %6633 = fmul fast float %6630, %6602
  %6634 = fmul fast float %6631, %6602
  %6635 = fadd fast float %6632, %6614
  %6636 = fadd fast float %6633, %6615
  %6637 = fadd fast float %6634, %6616
  %6638 = fsub fast float %6626, %6618
  %6639 = fsub fast float %6627, %6619
  %6640 = fsub fast float %6628, %6620
  %6641 = fmul fast float %6638, %6602
  %6642 = fmul fast float %6639, %6602
  %6643 = fmul fast float %6640, %6602
  %6644 = fsub fast float %6618, %6635
  %6645 = fadd fast float %6644, %6641
  %6646 = fsub fast float %6619, %6636
  %6647 = fadd fast float %6646, %6642
  %6648 = fsub fast float %6620, %6637
  %6649 = fadd fast float %6648, %6643
  %6650 = fmul fast float %6645, %6590
  %6651 = fmul fast float %6647, %6590
  %6652 = fmul fast float %6649, %6590
  %6653 = fadd fast float %6650, %6635
  %6654 = fadd fast float %6651, %6636
  %6655 = fadd fast float %6652, %6637
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 1
  %6658 = fmul fast float %6653, %6657
  %6659 = fmul fast float %6654, %6657
  %6660 = fmul fast float %6655, %6657
  br label %6661

; <label>:6661                                    ; preds = %6494, %6463
  %6662 = phi float [ %6532, %6494 ], [ 1.000000e+00, %6463 ]
  %6663 = phi float [ %6533, %6494 ], [ 1.000000e+00, %6463 ]
  %6664 = phi float [ %6534, %6494 ], [ 1.000000e+00, %6463 ]
  %6665 = phi float [ %6658, %6494 ], [ 0.000000e+00, %6463 ]
  %6666 = phi float [ %6659, %6494 ], [ 0.000000e+00, %6463 ]
  %6667 = phi float [ %6660, %6494 ], [ 0.000000e+00, %6463 ]
  %6668 = fmul fast float %6665, %6437
  %6669 = fmul fast float %6666, %6437
  %6670 = fmul fast float %6667, %6437
  %6671 = call float @dx.op.dot3.f32(i32 55, float %6662, float %6663, float %6664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6672 = call float @dx.op.dot3.f32(i32 55, float %6668, float %6669, float %6670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6673 = select i1 %204, float %6671, float %6662
  %6674 = select i1 %204, float %6671, float %6663
  %6675 = select i1 %204, float 1.000000e+00, float %6664
  %6676 = select i1 %204, float %6672, float %6668
  %6677 = select i1 %204, float 0.000000e+00, float %6669
  %6678 = select i1 %204, float 0.000000e+00, float %6670
  %6679 = fmul fast float %6673, %6453
  %6680 = fmul fast float %6674, %6454
  %6681 = fmul fast float %6675, %6455
  %6682 = fadd fast float %6679, %6676
  %6683 = fadd fast float %6680, %6677
  %6684 = fadd fast float %6678, %6681
  %6685 = fmul fast float %6673, %6424
  %6686 = fmul fast float %6674, %6425
  %6687 = fmul fast float %6675, %6426
  %6688 = fmul fast float %94, 2.000000e+00
  %6689 = fmul fast float %6688, %6465
  %6690 = fmul fast float %95, 2.000000e+00
  %6691 = fmul fast float %6690, %6466
  %6692 = fsub fast float 1.000000e+00, %6689
  %6693 = fsub fast float 1.000000e+00, %6691
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6696 = extractvalue %dx.types.CBufRet.f32 %6694, 1
  %6697 = extractvalue %dx.types.CBufRet.f32 %6694, 2
  %6698 = fmul fast float %6692, %6695
  %6699 = fmul fast float %6692, %6696
  %6700 = fmul fast float %6692, %6697
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 0
  %6703 = extractvalue %dx.types.CBufRet.f32 %6701, 1
  %6704 = extractvalue %dx.types.CBufRet.f32 %6701, 2
  %6705 = fmul fast float %6693, %6702
  %6706 = fmul fast float %6693, %6703
  %6707 = fmul fast float %6693, %6704
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 0
  %6710 = extractvalue %dx.types.CBufRet.f32 %6708, 1
  %6711 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6712 = fadd fast float %6705, %6709
  %6713 = fadd fast float %6712, %6698
  %6714 = fadd fast float %6706, %6710
  %6715 = fadd fast float %6714, %6699
  %6716 = fadd fast float %6707, %6711
  %6717 = fadd fast float %6716, %6700
  %6718 = fmul fast float %6713, %164
  %6719 = fmul fast float %6715, %164
  %6720 = fmul fast float %6717, %164
  br label %6721

; <label>:6721                                    ; preds = %6661, %6423
  %6722 = phi float [ %6718, %6661 ], [ %142, %6423 ]
  %6723 = phi float [ %6719, %6661 ], [ %143, %6423 ]
  %6724 = phi float [ %6720, %6661 ], [ %144, %6423 ]
  %6725 = phi float [ %164, %6661 ], [ %82, %6423 ]
  %6726 = phi float [ %6682, %6661 ], [ %6453, %6423 ]
  %6727 = phi float [ %6683, %6661 ], [ %6454, %6423 ]
  %6728 = phi float [ %6684, %6661 ], [ %6455, %6423 ]
  %6729 = phi float [ %6685, %6661 ], [ %6424, %6423 ]
  %6730 = phi float [ %6686, %6661 ], [ %6425, %6423 ]
  %6731 = phi float [ %6687, %6661 ], [ %6426, %6423 ]
  %6732 = phi float [ %6662, %6661 ], [ 1.000000e+00, %6423 ]
  br i1 %6462, label %7883, label %6733

; <label>:6733                                    ; preds = %6721
  %6734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6735 = extractvalue %dx.types.CBufRet.f32 %6734, 0
  %6736 = extractvalue %dx.types.CBufRet.f32 %6734, 1
  %6737 = extractvalue %dx.types.CBufRet.f32 %6734, 2
  %6738 = extractvalue %dx.types.CBufRet.f32 %6734, 3
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 0
  %6741 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %6742 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %6743 = extractvalue %dx.types.CBufRet.f32 %6739, 3
  %6744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6745 = extractvalue %dx.types.CBufRet.f32 %6744, 0
  %6746 = extractvalue %dx.types.CBufRet.f32 %6744, 1
  %6747 = extractvalue %dx.types.CBufRet.f32 %6744, 2
  %6748 = extractvalue %dx.types.CBufRet.f32 %6744, 3
  %6749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.f32 %6749, 0
  %6751 = extractvalue %dx.types.CBufRet.f32 %6749, 1
  %6752 = extractvalue %dx.types.CBufRet.f32 %6749, 2
  %6753 = extractvalue %dx.types.CBufRet.f32 %6749, 3
  %6754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6755 = extractvalue %dx.types.CBufRet.f32 %6754, 3
  %6756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6757 = extractvalue %dx.types.CBufRet.f32 %6756, 3
  %6758 = extractvalue %dx.types.CBufRet.f32 %6756, 0
  %6759 = extractvalue %dx.types.CBufRet.f32 %6756, 1
  %6760 = extractvalue %dx.types.CBufRet.f32 %6756, 2
  %6761 = fcmp fast olt float %6760, -5.000000e-01
  %6762 = call float @dx.op.dot3.f32(i32 55, float %6722, float %6723, float %6724, float %6722, float %6723, float %6724)  ; Dot3(ax,ay,az,bx,by,bz)
  %6763 = call float @dx.op.unary.f32(i32 25, float %6762)  ; Rsqrt(value)
  %6764 = fmul fast float %6763, %6762
  %6765 = fmul fast float %6763, %6722
  %6766 = fmul fast float %6763, %6723
  %6767 = fmul fast float %6763, %6724
  %6768 = fadd fast float %6764, %6738
  %6769 = call float @dx.op.dot3.f32(i32 55, float %6765, float %6766, float %6767, float %6735, float %6736, float %6737)  ; Dot3(ax,ay,az,bx,by,bz)
  %6770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.i32 %6770, 1
  %6772 = and i32 %6771, 1
  %6773 = icmp ne i32 %6772, 0
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6776 = fcmp fast ogt float %6775, 0.000000e+00
  %6777 = and i1 %6773, %6776
  br i1 %6777, label %6778, label %7180, !dx.controlflow.hints !127

; <label>:6778                                    ; preds = %6733
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 3
  %6781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6782 = extractvalue %dx.types.CBufRet.f32 %6781, 2
  %6783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6784 = extractvalue %dx.types.CBufRet.f32 %6783, 2
  %6785 = fsub fast float %6782, %6784
  %6786 = and i32 %6771, 2
  %6787 = extractvalue %dx.types.CBufRet.i32 %6770, 0
  %6788 = call i32 @dx.op.binary.i32(i32 40, i32 %6787, i32 3)  ; UMin(a,b)
  %6789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6790 = extractvalue %dx.types.CBufRet.f32 %6789, 0
  %6791 = extractvalue %dx.types.CBufRet.f32 %6789, 1
  %6792 = extractvalue %dx.types.CBufRet.f32 %6783, 0
  %6793 = extractvalue %dx.types.CBufRet.f32 %6783, 1
  %6794 = fsub fast float %6790, %6792
  %6795 = fsub fast float %6791, %6793
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6798 = fcmp fast ogt float %6797, 0.000000e+00
  %6799 = fsub fast float -0.000000e+00, %6794
  %6800 = fsub fast float -0.000000e+00, %6795
  %6801 = call float @dx.op.dot2.f32(i32 54, float %6765, float %6766, float %6765, float %6766)  ; Dot2(ax,ay,bx,by)
  %6802 = call float @dx.op.dot2.f32(i32 54, float %6765, float %6766, float %6799, float %6800)  ; Dot2(ax,ay,bx,by)
  %6803 = fmul fast float %6802, 2.000000e+00
  %6804 = call float @dx.op.dot2.f32(i32 54, float %6799, float %6800, float %6799, float %6800)  ; Dot2(ax,ay,bx,by)
  %6805 = fmul fast float %6797, %6797
  %6806 = fsub fast float %6804, %6805
  %6807 = fmul fast float %6803, %6803
  %6808 = fmul fast float %6801, 4.000000e+00
  %6809 = fmul fast float %6808, %6806
  %6810 = fsub fast float %6807, %6809
  %6811 = fcmp fast ogt float %6810, 0.000000e+00
  br i1 %6811, label %6812, label %6827

; <label>:6812                                    ; preds = %6778
  %6813 = fcmp fast ogt float %6803, 0.000000e+00
  %6814 = call float @dx.op.unary.f32(i32 24, float %6810)  ; Sqrt(value)
  %6815 = fsub fast float -0.000000e+00, %6814
  %6816 = select i1 %6813, float %6814, float %6815
  %6817 = fadd fast float %6816, %6803
  %6818 = fmul float %6817, -5.000000e-01
  %6819 = fdiv fast float %6818, %6801
  %6820 = call float @dx.op.binary.f32(i32 35, float %6819, float 0.000000e+00)  ; FMax(a,b)
  %6821 = call float @dx.op.binary.f32(i32 36, float %6764, float %6820)  ; FMin(a,b)
  %6822 = fdiv fast float %6806, %6818
  %6823 = call float @dx.op.binary.f32(i32 35, float %6822, float 0.000000e+00)  ; FMax(a,b)
  %6824 = call float @dx.op.binary.f32(i32 36, float %6764, float %6823)  ; FMin(a,b)
  %6825 = call float @dx.op.binary.f32(i32 36, float %6821, float %6824)  ; FMin(a,b)
  %6826 = call float @dx.op.binary.f32(i32 35, float %6821, float %6824)  ; FMax(a,b)
  br label %6827

; <label>:6827                                    ; preds = %6812, %6778
  %6828 = phi float [ %6826, %6812 ], [ -1.000000e+00, %6778 ]
  %6829 = phi float [ %6825, %6812 ], [ -1.000000e+00, %6778 ]
  %6830 = phi i1 [ true, %6812 ], [ false, %6778 ]
  %6831 = and i1 %6798, %6830
  br i1 %6831, label %6832, label %6834

; <label>:6832                                    ; preds = %6827
  %6833 = fcmp fast oeq float %6829, %6828
  br i1 %6833, label %7133, label %6835

; <label>:6834                                    ; preds = %6827
  br i1 %6798, label %7133, label %6835

; <label>:6835                                    ; preds = %6834, %6832
  %6836 = phi float [ %6764, %6834 ], [ %6828, %6832 ]
  %6837 = phi float [ 0.000000e+00, %6834 ], [ %6829, %6832 ]
  %6838 = icmp ne i32 %6786, 0
  %6839 = fmul fast float %6836, %6767
  %6840 = fadd fast float %6839, %6780
  %6841 = fmul fast float %6840, %6836
  %6842 = select i1 %6838, float 0.000000e+00, float %6841
  %6843 = fcmp fast oeq float %6767, 0.000000e+00
  %6844 = fdiv fast float %6785, %6767
  %6845 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6844)  ; FMax(a,b)
  %6846 = select i1 %6843, float %6836, float %6845
  %6847 = call float @dx.op.binary.f32(i32 36, float %6836, float %6846)  ; FMin(a,b)
  %6848 = fcmp fast ogt float %6767, 0.000000e+00
  %6849 = fcmp fast olt float %6785, 0.000000e+00
  br i1 %6848, label %6850, label %6907

; <label>:6850                                    ; preds = %6835
  %6851 = icmp eq i32 %6786, 0
  br i1 %6849, label %6852, label %6896

; <label>:6852                                    ; preds = %6850
  %6853 = select i1 %6851, float %6836, float 0.000000e+00
  %6854 = fsub fast float -0.000000e+00, %6853
  %6855 = call float @dx.op.unary.f32(i32 6, float %6854)  ; FAbs(value)
  %6856 = fmul fast float %6853, %6767
  %6857 = fadd fast float %6856, %6780
  %6858 = fmul fast float %6855, %6857
  %6859 = fsub fast float %6842, %6858
  %6860 = fsub fast float %6836, %6855
  %6861 = select i1 %6851, float %6860, float 0.000000e+00
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.CBufRet.f32 %6862, 2
  %6866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6867 = extractvalue %dx.types.CBufRet.f32 %6866, 0
  %6868 = extractvalue %dx.types.CBufRet.f32 %6866, 1
  %6869 = extractvalue %dx.types.CBufRet.f32 %6866, 2
  %6870 = extractvalue %dx.types.CBufRet.f32 %6866, 3
  %6871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6872 = extractvalue %dx.types.CBufRet.f32 %6871, 3
  %6873 = call float @dx.op.binary.f32(i32 36, float %6859, float %6872)  ; FMin(a,b)
  %6874 = fmul fast float %6870, %6861
  %6875 = call float @dx.op.unary.f32(i32 7, float %6874)  ; Saturate(value)
  %6876 = fsub fast float %6867, %6863
  %6877 = fsub fast float %6868, %6864
  %6878 = fsub fast float %6869, %6865
  %6879 = fmul fast float %6875, %6876
  %6880 = fmul fast float %6875, %6877
  %6881 = fmul fast float %6875, %6878
  %6882 = fadd fast float %6879, %6863
  %6883 = fadd fast float %6880, %6864
  %6884 = fadd fast float %6881, %6865
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = fadd fast float %6887, %6886
  %6889 = call float @dx.op.unary.f32(i32 7, float %6888)  ; Saturate(value)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6891 = extractvalue %dx.types.CBufRet.f32 %6885, 3
  %6892 = fadd fast float %6891, %6890
  %6893 = call float @dx.op.unary.f32(i32 7, float %6892)  ; Saturate(value)
  %6894 = fmul fast float %6889, %6873
  %6895 = fmul fast float %6894, %6893
  br label %7133

; <label>:6896                                    ; preds = %6850
  br i1 %6851, label %6897, label %6918

; <label>:6897                                    ; preds = %6896
  %6898 = call float @dx.op.binary.f32(i32 36, float %6847, float %6837)  ; FMin(a,b)
  %6899 = fsub fast float %6847, %6898
  %6900 = fsub fast float %6899, %6836
  %6901 = call float @dx.op.unary.f32(i32 6, float %6900)  ; FAbs(value)
  %6902 = fadd fast float %6899, %6836
  %6903 = fmul fast float %6902, %6767
  %6904 = fadd fast float %6903, %6780
  %6905 = fmul fast float %6904, %6901
  %6906 = fsub fast float %6842, %6905
  br label %6918

; <label>:6907                                    ; preds = %6835
  br i1 %6849, label %6908, label %6918

; <label>:6908                                    ; preds = %6907
  %6909 = call float @dx.op.binary.f32(i32 35, float %6837, float %6847)  ; FMax(a,b)
  %6910 = icmp eq i32 %6786, 0
  %6911 = select i1 %6910, float %6847, float 0.000000e+00
  %6912 = fsub fast float -0.000000e+00, %6911
  %6913 = call float @dx.op.unary.f32(i32 6, float %6912)  ; FAbs(value)
  %6914 = fmul fast float %6911, %6767
  %6915 = fadd fast float %6914, %6780
  %6916 = fmul fast float %6913, %6915
  %6917 = fsub fast float %6842, %6916
  br label %6918

; <label>:6918                                    ; preds = %6908, %6907, %6897, %6896
  %6919 = phi float [ %6837, %6896 ], [ %6837, %6897 ], [ %6909, %6908 ], [ %6837, %6907 ]
  %6920 = phi float [ 0.000000e+00, %6896 ], [ %6901, %6897 ], [ %6913, %6908 ], [ 0.000000e+00, %6907 ]
  %6921 = phi float [ %6842, %6896 ], [ %6906, %6897 ], [ %6917, %6908 ], [ %6842, %6907 ]
  %6922 = phi float [ %6847, %6896 ], [ %6847, %6897 ], [ %6836, %6908 ], [ %6836, %6907 ]
  %6923 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 0
  store float -1.000000e+00, float* %6923, align 4, !tbaa !112, !noalias !128
  %6924 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 1
  store float -1.000000e+00, float* %6924, align 4, !tbaa !112, !noalias !128
  %6925 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 2
  store float -1.000000e+00, float* %6925, align 4, !tbaa !112, !noalias !128
  %6926 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %6926, align 4, !tbaa !112, !noalias !128
  %6927 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %6927, align 4, !tbaa !112, !noalias !128
  %6928 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %6928, align 4, !tbaa !112, !noalias !128
  %6929 = icmp sgt i32 %6788, 0
  br i1 %6929, label %6930, label %6991

; <label>:6930                                    ; preds = %6918
  br label %6931

; <label>:6931                                    ; preds = %6980, %6930
  %6932 = phi i32 [ %6981, %6980 ], [ 0, %6930 ]
  %6933 = phi i32 [ %6982, %6980 ], [ 0, %6930 ]
  %6934 = add nuw i32 %6933, 171
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 %6934)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.CBufRet.f32 %6935, 1
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 1
  %6941 = fsub fast float %6936, %6939
  %6942 = fsub fast float %6937, %6940
  %6943 = extractvalue %dx.types.CBufRet.f32 %6935, 2
  %6944 = fsub fast float -0.000000e+00, %6941
  %6945 = fsub fast float -0.000000e+00, %6942
  %6946 = call float @dx.op.dot2.f32(i32 54, float %6765, float %6766, float %6944, float %6945)  ; Dot2(ax,ay,bx,by)
  %6947 = fmul fast float %6946, 2.000000e+00
  %6948 = call float @dx.op.dot2.f32(i32 54, float %6944, float %6945, float %6944, float %6945)  ; Dot2(ax,ay,bx,by)
  %6949 = fmul fast float %6943, %6943
  %6950 = fsub fast float %6948, %6949
  %6951 = fmul fast float %6947, %6947
  %6952 = fmul fast float %6808, %6950
  %6953 = fsub fast float %6951, %6952
  %6954 = fcmp fast ogt float %6953, 0.000000e+00
  br i1 %6954, label %6955, label %6970

; <label>:6955                                    ; preds = %6931
  %6956 = fcmp fast ogt float %6947, 0.000000e+00
  %6957 = call float @dx.op.unary.f32(i32 24, float %6953)  ; Sqrt(value)
  %6958 = fsub fast float -0.000000e+00, %6957
  %6959 = select i1 %6956, float %6957, float %6958
  %6960 = fadd fast float %6959, %6947
  %6961 = fmul float %6960, -5.000000e-01
  %6962 = fdiv fast float %6961, %6801
  %6963 = call float @dx.op.binary.f32(i32 35, float %6962, float 0.000000e+00)  ; FMax(a,b)
  %6964 = call float @dx.op.binary.f32(i32 36, float %6836, float %6963)  ; FMin(a,b)
  %6965 = fdiv fast float %6950, %6961
  %6966 = call float @dx.op.binary.f32(i32 35, float %6965, float 0.000000e+00)  ; FMax(a,b)
  %6967 = call float @dx.op.binary.f32(i32 36, float %6836, float %6966)  ; FMin(a,b)
  %6968 = call float @dx.op.binary.f32(i32 36, float %6964, float %6967)  ; FMin(a,b)
  %6969 = call float @dx.op.binary.f32(i32 35, float %6964, float %6967)  ; FMax(a,b)
  br label %6970

; <label>:6970                                    ; preds = %6955, %6931
  %6971 = phi float [ %6969, %6955 ], [ -1.000000e+00, %6931 ]
  %6972 = phi float [ %6968, %6955 ], [ -1.000000e+00, %6931 ]
  %6973 = phi i1 [ true, %6955 ], [ false, %6931 ]
  br i1 %6973, label %6974, label %6980

; <label>:6974                                    ; preds = %6970
  %6975 = call float @dx.op.binary.f32(i32 35, float %6919, float %6972)  ; FMax(a,b)
  %6976 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %6933
  store float %6975, float* %6976, align 4, !tbaa !112, !noalias !128
  %6977 = call float @dx.op.binary.f32(i32 35, float %6919, float %6971)  ; FMax(a,b)
  %6978 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6933
  store float %6977, float* %6978, align 4, !tbaa !112, !noalias !128
  %6979 = add nsw i32 %6932, 1
  br label %6980

; <label>:6980                                    ; preds = %6974, %6970
  %6981 = phi i32 [ %6979, %6974 ], [ %6932, %6970 ]
  %6982 = add nuw nsw i32 %6933, 1
  %6983 = icmp eq i32 %6982, %6788
  br i1 %6983, label %6984, label %6931

; <label>:6984                                    ; preds = %6980
  %6985 = load float, float* %6925, align 4, !tbaa !112, !alias.scope !144, !noalias !147
  %6986 = load float, float* %6924, align 4, !tbaa !112, !alias.scope !150, !noalias !151
  %6987 = load float, float* %6923, align 4, !tbaa !112, !alias.scope !152, !noalias !153
  %6988 = load float, float* %6928, align 4, !tbaa !112, !alias.scope !154, !noalias !157
  %6989 = load float, float* %6927, align 4, !tbaa !112, !alias.scope !160, !noalias !161
  %6990 = load float, float* %6926, align 4, !tbaa !112, !alias.scope !162, !noalias !163
  br label %6991

; <label>:6991                                    ; preds = %6984, %6918
  %6992 = phi float [ -1.000000e+00, %6918 ], [ %6990, %6984 ]
  %6993 = phi float [ -1.000000e+00, %6918 ], [ %6989, %6984 ]
  %6994 = phi float [ -1.000000e+00, %6918 ], [ %6988, %6984 ]
  %6995 = phi float [ -1.000000e+00, %6918 ], [ %6987, %6984 ]
  %6996 = phi float [ -1.000000e+00, %6918 ], [ %6986, %6984 ]
  %6997 = phi float [ -1.000000e+00, %6918 ], [ %6985, %6984 ]
  %6998 = phi i32 [ 0, %6918 ], [ %6981, %6984 ]
  %6999 = call float @dx.op.binary.f32(i32 36, float %6995, float %6996)  ; FMin(a,b)
  %7000 = call float @dx.op.binary.f32(i32 36, float %6999, float %6997)  ; FMin(a,b)
  %7001 = call float @dx.op.binary.f32(i32 35, float %6995, float %6996)  ; FMax(a,b)
  %7002 = call float @dx.op.binary.f32(i32 36, float %7001, float %6997)  ; FMin(a,b)
  %7003 = call float @dx.op.binary.f32(i32 35, float %6999, float %7002)  ; FMax(a,b)
  %7004 = call float @dx.op.binary.f32(i32 35, float %7001, float %6997)  ; FMax(a,b)
  store float %7000, float* %6923, align 4, !tbaa !112, !alias.scope !152, !noalias !153
  store float %7003, float* %6924, align 4, !tbaa !112, !alias.scope !150, !noalias !151
  store float %7004, float* %6925, align 4, !tbaa !112, !alias.scope !144, !noalias !147
  %7005 = call float @dx.op.binary.f32(i32 36, float %6992, float %6993)  ; FMin(a,b)
  %7006 = call float @dx.op.binary.f32(i32 36, float %7005, float %6994)  ; FMin(a,b)
  %7007 = call float @dx.op.binary.f32(i32 35, float %6992, float %6993)  ; FMax(a,b)
  %7008 = call float @dx.op.binary.f32(i32 36, float %7007, float %6994)  ; FMin(a,b)
  %7009 = call float @dx.op.binary.f32(i32 35, float %7005, float %7008)  ; FMax(a,b)
  %7010 = call float @dx.op.binary.f32(i32 35, float %7007, float %6994)  ; FMax(a,b)
  store float %7006, float* %6926, align 4, !tbaa !112, !alias.scope !162, !noalias !163
  store float %7009, float* %6927, align 4, !tbaa !112, !alias.scope !160, !noalias !161
  store float %7010, float* %6928, align 4, !tbaa !112, !alias.scope !154, !noalias !157
  %7011 = sub nsw i32 3, %6998
  %7012 = icmp sgt i32 %7011, 2
  br i1 %7012, label %7013, label %7051

; <label>:7013                                    ; preds = %6991
  %7014 = icmp eq i32 %6786, 0
  %7015 = fsub fast float %6836, %6920
  %7016 = select i1 %7014, float %7015, float %6920
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 0
  %7019 = extractvalue %dx.types.CBufRet.f32 %7017, 1
  %7020 = extractvalue %dx.types.CBufRet.f32 %7017, 2
  %7021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7022 = extractvalue %dx.types.CBufRet.f32 %7021, 0
  %7023 = extractvalue %dx.types.CBufRet.f32 %7021, 1
  %7024 = extractvalue %dx.types.CBufRet.f32 %7021, 2
  %7025 = extractvalue %dx.types.CBufRet.f32 %7021, 3
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 3
  %7028 = call float @dx.op.binary.f32(i32 36, float %6921, float %7027)  ; FMin(a,b)
  %7029 = fmul fast float %7025, %7016
  %7030 = call float @dx.op.unary.f32(i32 7, float %7029)  ; Saturate(value)
  %7031 = fsub fast float %7022, %7018
  %7032 = fsub fast float %7023, %7019
  %7033 = fsub fast float %7024, %7020
  %7034 = fmul fast float %7030, %7031
  %7035 = fmul fast float %7030, %7032
  %7036 = fmul fast float %7030, %7033
  %7037 = fadd fast float %7034, %7018
  %7038 = fadd fast float %7035, %7019
  %7039 = fadd fast float %7036, %7020
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7043 = fadd fast float %7042, %7041
  %7044 = call float @dx.op.unary.f32(i32 7, float %7043)  ; Saturate(value)
  %7045 = extractvalue %dx.types.CBufRet.f32 %7040, 2
  %7046 = extractvalue %dx.types.CBufRet.f32 %7040, 3
  %7047 = fadd fast float %7046, %7045
  %7048 = call float @dx.op.unary.f32(i32 7, float %7047)  ; Saturate(value)
  %7049 = fmul fast float %7044, %7028
  %7050 = fmul fast float %7049, %7048
  br label %7133

; <label>:7051                                    ; preds = %6991
  %7052 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %7011
  %7053 = load float, float* %7052, align 4, !tbaa !112, !noalias !128
  %7054 = fcmp fast olt float %7053, %6922
  %7055 = icmp sgt i32 %6998, 0
  %7056 = and i1 %7055, %7054
  br i1 %7056, label %7057, label %7094

; <label>:7057                                    ; preds = %7051
  br label %7058

; <label>:7058                                    ; preds = %7087, %7057
  %7059 = phi float [ %7088, %7087 ], [ %6920, %7057 ]
  %7060 = phi float [ %7089, %7087 ], [ %6921, %7057 ]
  %7061 = phi float [ %7069, %7087 ], [ %7053, %7057 ]
  %7062 = phi i32 [ %7066, %7087 ], [ %7011, %7057 ]
  %7063 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %7062
  %7064 = load float, float* %7063, align 4, !tbaa !112, !noalias !128
  %7065 = icmp slt i32 %7062, 2
  %7066 = add nsw i32 %7062, 1
  %7067 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %7066
  %7068 = load float, float* %7067, align 4, !tbaa !112, !noalias !128
  %7069 = select i1 %7065, float %7068, float %6836
  %7070 = call float @dx.op.binary.f32(i32 36, float %7069, float %7064)  ; FMin(a,b)
  %7071 = call float @dx.op.binary.f32(i32 36, float %6922, float %7070)  ; FMin(a,b)
  %7072 = icmp eq i32 %6786, 0
  %7073 = fadd fast float %7071, %7061
  %7074 = fmul fast float %7073, %6767
  %7075 = fadd fast float %7074, %6780
  br i1 %7072, label %7081, label %7076

; <label>:7076                                    ; preds = %7058
  %7077 = fsub fast float %7071, %7061
  %7078 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7077)  ; FMax(a,b)
  %7079 = fmul fast float %7078, %7075
  %7080 = fadd fast float %7079, %7060
  br label %7087

; <label>:7081                                    ; preds = %7058
  %7082 = fsub fast float %7061, %7071
  %7083 = call float @dx.op.unary.f32(i32 6, float %7082)  ; FAbs(value)
  %7084 = fadd fast float %7083, %7059
  %7085 = fmul fast float %7083, %7075
  %7086 = fsub fast float %7060, %7085
  br label %7087

; <label>:7087                                    ; preds = %7081, %7076
  %7088 = phi float [ %7078, %7076 ], [ %7084, %7081 ]
  %7089 = phi float [ %7080, %7076 ], [ %7086, %7081 ]
  %7090 = fcmp fast olt float %7069, %6922
  %7091 = icmp slt i32 %7066, 3
  %7092 = and i1 %7091, %7090
  br i1 %7092, label %7058, label %7093

; <label>:7093                                    ; preds = %7087
  br label %7094

; <label>:7094                                    ; preds = %7093, %7051
  %7095 = phi float [ %6920, %7051 ], [ %7088, %7093 ]
  %7096 = phi float [ %6921, %7051 ], [ %7089, %7093 ]
  %7097 = fsub fast float %6836, %7095
  %7098 = select i1 %6838, float %7095, float %7097
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 0
  %7101 = extractvalue %dx.types.CBufRet.f32 %7099, 1
  %7102 = extractvalue %dx.types.CBufRet.f32 %7099, 2
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7107 = extractvalue %dx.types.CBufRet.f32 %7103, 3
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 3
  %7110 = call float @dx.op.binary.f32(i32 36, float %7096, float %7109)  ; FMin(a,b)
  %7111 = fmul fast float %7107, %7098
  %7112 = call float @dx.op.unary.f32(i32 7, float %7111)  ; Saturate(value)
  %7113 = fsub fast float %7104, %7100
  %7114 = fsub fast float %7105, %7101
  %7115 = fsub fast float %7106, %7102
  %7116 = fmul fast float %7112, %7113
  %7117 = fmul fast float %7112, %7114
  %7118 = fmul fast float %7112, %7115
  %7119 = fadd fast float %7116, %7100
  %7120 = fadd fast float %7117, %7101
  %7121 = fadd fast float %7118, %7102
  %7122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7123 = extractvalue %dx.types.CBufRet.f32 %7122, 0
  %7124 = extractvalue %dx.types.CBufRet.f32 %7122, 1
  %7125 = fadd fast float %7124, %7123
  %7126 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  %7127 = extractvalue %dx.types.CBufRet.f32 %7122, 2
  %7128 = extractvalue %dx.types.CBufRet.f32 %7122, 3
  %7129 = fadd fast float %7128, %7127
  %7130 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7131 = fmul fast float %7126, %7110
  %7132 = fmul fast float %7131, %7130
  br label %7133

; <label>:7133                                    ; preds = %7094, %7013, %6852, %6834, %6832
  %7134 = phi float [ %6861, %6852 ], [ %7016, %7013 ], [ %7098, %7094 ], [ 0.000000e+00, %6832 ], [ 0.000000e+00, %6834 ]
  %7135 = phi float [ %6895, %6852 ], [ %7050, %7013 ], [ %7132, %7094 ], [ 0.000000e+00, %6832 ], [ 0.000000e+00, %6834 ]
  %7136 = phi float [ %6882, %6852 ], [ %7037, %7013 ], [ %7119, %7094 ], [ 0.000000e+00, %6832 ], [ 0.000000e+00, %6834 ]
  %7137 = phi float [ %6883, %6852 ], [ %7038, %7013 ], [ %7120, %7094 ], [ 0.000000e+00, %6832 ], [ 0.000000e+00, %6834 ]
  %7138 = phi float [ %6884, %6852 ], [ %7039, %7013 ], [ %7121, %7094 ], [ 0.000000e+00, %6832 ], [ 0.000000e+00, %6834 ]
  %7139 = fmul fast float %6775, %7135
  %7140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.f32 %7140, 2
  %7142 = fsub fast float %6782, %7141
  %7143 = fcmp fast olt float %7139, -2.000000e+01
  %7144 = call float @dx.op.unary.f32(i32 21, float %7139)  ; Exp(value)
  %7145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.f32 %7145, 2
  %7147 = extractvalue %dx.types.CBufRet.f32 %7145, 3
  %7148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7149 = extractvalue %dx.types.CBufRet.f32 %7148, 2
  %7150 = fmul fast float %7147, %7142
  %7151 = call float @dx.op.unary.f32(i32 7, float %7150)  ; Saturate(value)
  %7152 = fsub fast float 1.000000e+00, %7151
  %7153 = fmul fast float %6767, 5.000000e-01
  %7154 = fadd fast float %7153, 5.000000e-01
  %7155 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  %7156 = fsub fast float 1.000000e+00, %7155
  %7157 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7152)  ; FMax(a,b)
  %7158 = fdiv fast float %7156, %7157
  %7159 = fsub fast float %7142, %6724
  %7160 = call float @dx.op.unary.f32(i32 6, float %7159)  ; FAbs(value)
  %7161 = fmul fast float %7160, %7146
  %7162 = call float @dx.op.unary.f32(i32 7, float %7158)  ; Saturate(value)
  %7163 = fsub fast float 1.000000e+00, %7161
  %7164 = fmul fast float %7163, %7162
  %7165 = fadd fast float %7164, %7161
  %7166 = fmul fast float %7149, %7142
  %7167 = call float @dx.op.unary.f32(i32 7, float %7166)  ; Saturate(value)
  %7168 = fsub fast float 1.000000e+00, %7165
  %7169 = fmul fast float %7168, %7167
  %7170 = fadd fast float %7169, %7165
  %7171 = call float @dx.op.unary.f32(i32 7, float %7170)  ; Saturate(value)
  %7172 = fadd fast float %7144, -1.000000e+00
  %7173 = select i1 %7143, float -1.000000e+00, float %7172
  %7174 = fmul fast float %7171, %7173
  %7175 = fadd fast float %7174, 1.000000e+00
  %7176 = fsub fast float -0.000000e+00, %7174
  %7177 = fmul fast float %7136, %7176
  %7178 = fmul fast float %7137, %7176
  %7179 = fmul fast float %7138, %7176
  br label %7180

; <label>:7180                                    ; preds = %7133, %6733
  %7181 = phi float [ %7134, %7133 ], [ 0.000000e+00, %6733 ]
  %7182 = phi float [ %7175, %7133 ], [ 1.000000e+00, %6733 ]
  %7183 = phi float [ %7177, %7133 ], [ 0.000000e+00, %6733 ]
  %7184 = phi float [ %7178, %7133 ], [ 0.000000e+00, %6733 ]
  %7185 = phi float [ %7179, %7133 ], [ 0.000000e+00, %6733 ]
  %7186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.f32 %7186, 1
  %7188 = fsub fast float 1.000000e+00, %7182
  %7189 = fmul fast float %7188, %6768
  %7190 = fmul fast float %7189, %7187
  %7191 = fsub fast float %6768, %7190
  br i1 %6761, label %7192, label %7221, !dx.controlflow.hints !164

; <label>:7192                                    ; preds = %7180
  %7193 = fmul fast float %6769, %6758
  %7194 = fadd fast float %7193, %6759
  %7195 = call float @dx.op.unary.f32(i32 7, float %7194)  ; Saturate(value)
  %7196 = fmul fast float %6740, %7191
  %7197 = fsub fast float -0.000000e+00, %7196
  %7198 = fmul fast float %6741, %7191
  %7199 = fsub fast float -0.000000e+00, %7198
  %7200 = call float @dx.op.unary.f32(i32 21, float %7197)  ; Exp(value)
  %7201 = call float @dx.op.unary.f32(i32 21, float %7199)  ; Exp(value)
  %7202 = call float @dx.op.binary.f32(i32 35, float %6748, float %7200)  ; FMax(a,b)
  %7203 = call float @dx.op.binary.f32(i32 35, float %6748, float %7201)  ; FMax(a,b)
  %7204 = fsub fast float %7203, %7202
  %7205 = fmul fast float %7204, %7195
  %7206 = fadd fast float %7205, %7202
  %7207 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  %7208 = fsub fast float %6745, %6750
  %7209 = fsub fast float %6746, %6751
  %7210 = fsub fast float %6747, %6752
  %7211 = fmul fast float %7195, %7208
  %7212 = fmul fast float %7195, %7209
  %7213 = fmul fast float %7195, %7210
  %7214 = fadd fast float %7211, %6750
  %7215 = fadd fast float %7212, %6751
  %7216 = fadd fast float %7213, %6752
  %7217 = fsub fast float 1.000000e+00, %7207
  %7218 = fmul fast float %7217, %7214
  %7219 = fmul fast float %7217, %7215
  %7220 = fmul fast float %7217, %7216
  br label %7280

; <label>:7221                                    ; preds = %7180
  %7222 = fmul fast float %7191, %6757
  %7223 = call float @dx.op.unary.f32(i32 7, float %7222)  ; Saturate(value)
  %7224 = fsub fast float 2.000000e+00, %7223
  %7225 = fmul fast float %7223, 9.921875e-01
  %7226 = fmul fast float %7225, %7224
  %7227 = fadd fast float %7226, 3.906250e-03
  %7228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %50, float %7227, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7229 = extractvalue %dx.types.ResRet.f32 %7228, 0
  %7230 = fsub fast float %7223, %7229
  %7231 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7230)  ; FMax(a,b)
  %7232 = fmul fast float %6743, %6724
  %7233 = call float @dx.op.unary.f32(i32 6, float %7232)  ; FAbs(value)
  %7234 = fcmp fast ogt float %7233, 0x3EB0C6F7A0000000
  br i1 %7234, label %7235, label %7241, !dx.controlflow.hints !165

; <label>:7235                                    ; preds = %7221
  %7236 = fmul fast float %7232, 0xBFF7154760000000
  %7237 = call float @dx.op.unary.f32(i32 21, float %7236)  ; Exp(value)
  %7238 = fsub fast float 1.000000e+00, %7237
  %7239 = fdiv fast float %7238, %7232
  %7240 = fmul fast float %7239, %6753
  br label %7241

; <label>:7241                                    ; preds = %7235, %7221
  %7242 = phi float [ %7240, %7235 ], [ %6753, %7221 ]
  %7243 = fadd fast float %7242, %6755
  %7244 = fmul fast float %7243, %7231
  %7245 = fmul fast float %6740, %7244
  %7246 = fsub fast float -0.000000e+00, %7245
  %7247 = fmul fast float %6741, %7244
  %7248 = fsub fast float -0.000000e+00, %7247
  %7249 = fmul fast float %6742, %7244
  %7250 = fsub fast float -0.000000e+00, %7249
  %7251 = call float @dx.op.unary.f32(i32 21, float %7246)  ; Exp(value)
  %7252 = call float @dx.op.unary.f32(i32 21, float %7248)  ; Exp(value)
  %7253 = call float @dx.op.unary.f32(i32 21, float %7250)  ; Exp(value)
  %7254 = fmul fast float %6769, %6769
  %7255 = fadd fast float %7254, 1.000000e+00
  %7256 = fmul fast float %7255, 0x3FAE8EC8A0000000
  %7257 = fmul fast float %7256, %6750
  %7258 = fmul fast float %7256, %6751
  %7259 = fmul fast float %7256, %6752
  %7260 = fmul fast float %6769, %6748
  %7261 = fsub fast float 1.000000e+00, %7260
  %7262 = fmul fast float %6748, %6748
  %7263 = fsub fast float 1.000000e+00, %7262
  %7264 = fmul fast float %7263, 0x3FB45F3060000000
  %7265 = fmul fast float %7261, %7261
  %7266 = fdiv fast float 1.000000e+00, %7265
  %7267 = fmul fast float %7264, %7266
  %7268 = fmul fast float %7267, %6745
  %7269 = fmul fast float %7267, %6746
  %7270 = fmul fast float %7267, %6747
  %7271 = fadd fast float %7268, %7257
  %7272 = fadd fast float %7269, %7258
  %7273 = fadd fast float %7270, %7259
  %7274 = fsub fast float 1.000000e+00, %7251
  %7275 = fsub fast float 1.000000e+00, %7252
  %7276 = fsub fast float 1.000000e+00, %7253
  %7277 = fmul fast float %7271, %7274
  %7278 = fmul fast float %7272, %7275
  %7279 = fmul fast float %7273, %7276
  br label %7280

; <label>:7280                                    ; preds = %7241, %7192
  %7281 = phi float [ %7218, %7192 ], [ %7277, %7241 ]
  %7282 = phi float [ %7219, %7192 ], [ %7278, %7241 ]
  %7283 = phi float [ %7220, %7192 ], [ %7279, %7241 ]
  %7284 = phi float [ %7207, %7192 ], [ %7251, %7241 ]
  %7285 = phi float [ %7207, %7192 ], [ %7252, %7241 ]
  %7286 = phi float [ %7207, %7192 ], [ %7253, %7241 ]
  br i1 %6777, label %7287, label %7485, !dx.controlflow.hints !166

; <label>:7287                                    ; preds = %7280
  %7288 = extractvalue %dx.types.CBufRet.f32 %7186, 0
  %7289 = fmul fast float %7288, %7188
  %7290 = fsub fast float %7183, %7281
  %7291 = fsub fast float %7184, %7282
  %7292 = fsub fast float %7185, %7283
  %7293 = fmul fast float %7289, %7290
  %7294 = fmul fast float %7289, %7291
  %7295 = fmul fast float %7289, %7292
  %7296 = fadd fast float %7293, %7281
  %7297 = fadd fast float %7294, %7282
  %7298 = fadd fast float %7295, %7283
  %7299 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7284)  ; FMax(a,b)
  %7300 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7285)  ; FMax(a,b)
  %7301 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7286)  ; FMax(a,b)
  %7302 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7182)  ; FMax(a,b)
  %7303 = call float @dx.op.binary.f32(i32 35, float %7181, float %7191)  ; FMax(a,b)
  %7304 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7303)  ; FMax(a,b)
  %7305 = fdiv fast float %7181, %7304
  %7306 = call float @dx.op.unary.f32(i32 7, float %7305)  ; Saturate(value)
  %7307 = fdiv fast float %7191, %7304
  %7308 = call float @dx.op.unary.f32(i32 7, float %7307)  ; Saturate(value)
  %7309 = fcmp fast une float %7302, 1.000000e+00
  br i1 %7309, label %7310, label %7323, !dx.controlflow.hints !167

; <label>:7310                                    ; preds = %7287
  %7311 = call float @dx.op.unary.f32(i32 23, float %7302)  ; Log(value)
  %7312 = fmul fast float %7311, 0x3FE62E4300000000
  %7313 = fmul fast float %7183, %7312
  %7314 = fsub fast float -0.000000e+00, %7313
  %7315 = fmul fast float %7184, %7312
  %7316 = fsub fast float -0.000000e+00, %7315
  %7317 = fmul fast float %7185, %7312
  %7318 = fsub fast float -0.000000e+00, %7317
  %7319 = fsub fast float 1.000000e+00, %7302
  %7320 = fdiv fast float %7314, %7319
  %7321 = fdiv fast float %7316, %7319
  %7322 = fdiv fast float %7318, %7319
  br label %7323

; <label>:7323                                    ; preds = %7310, %7287
  %7324 = phi float [ %7320, %7310 ], [ %7183, %7287 ]
  %7325 = phi float [ %7321, %7310 ], [ %7184, %7287 ]
  %7326 = phi float [ %7322, %7310 ], [ %7185, %7287 ]
  %7327 = phi float [ %7312, %7310 ], [ 0.000000e+00, %7287 ]
  %7328 = fcmp fast une float %7299, 1.000000e+00
  br i1 %7328, label %7329, label %7336, !dx.controlflow.hints !168

; <label>:7329                                    ; preds = %7323
  %7330 = call float @dx.op.unary.f32(i32 23, float %7299)  ; Log(value)
  %7331 = fmul fast float %7330, 0x3FE62E4300000000
  %7332 = fmul fast float %7296, %7331
  %7333 = fsub fast float -0.000000e+00, %7332
  %7334 = fsub fast float 1.000000e+00, %7299
  %7335 = fdiv fast float %7333, %7334
  br label %7336

; <label>:7336                                    ; preds = %7329, %7323
  %7337 = phi float [ %7335, %7329 ], [ %7296, %7323 ]
  %7338 = phi float [ %7331, %7329 ], [ 0.000000e+00, %7323 ]
  %7339 = fcmp fast une float %7300, 1.000000e+00
  br i1 %7339, label %7340, label %7347, !dx.controlflow.hints !168

; <label>:7340                                    ; preds = %7336
  %7341 = call float @dx.op.unary.f32(i32 23, float %7300)  ; Log(value)
  %7342 = fmul fast float %7341, 0x3FE62E4300000000
  %7343 = fmul fast float %7297, %7342
  %7344 = fsub fast float -0.000000e+00, %7343
  %7345 = fsub fast float 1.000000e+00, %7300
  %7346 = fdiv fast float %7344, %7345
  br label %7347

; <label>:7347                                    ; preds = %7340, %7336
  %7348 = phi float [ %7346, %7340 ], [ %7297, %7336 ]
  %7349 = phi float [ %7342, %7340 ], [ 0.000000e+00, %7336 ]
  %7350 = fcmp fast une float %7301, 1.000000e+00
  br i1 %7350, label %7351, label %7358, !dx.controlflow.hints !168

; <label>:7351                                    ; preds = %7347
  %7352 = call float @dx.op.unary.f32(i32 23, float %7301)  ; Log(value)
  %7353 = fmul fast float %7352, 0x3FE62E4300000000
  %7354 = fmul fast float %7298, %7353
  %7355 = fsub fast float -0.000000e+00, %7354
  %7356 = fsub fast float 1.000000e+00, %7301
  %7357 = fdiv fast float %7355, %7356
  br label %7358

; <label>:7358                                    ; preds = %7351, %7347
  %7359 = phi float [ %7357, %7351 ], [ %7298, %7347 ]
  %7360 = phi float [ %7353, %7351 ], [ 0.000000e+00, %7347 ]
  %7361 = fmul fast float %7324, %7308
  %7362 = fmul fast float %7325, %7308
  %7363 = fmul fast float %7326, %7308
  %7364 = fmul fast float %7327, %7308
  %7365 = fmul fast float %7337, %7306
  %7366 = fmul fast float %7348, %7306
  %7367 = fmul fast float %7359, %7306
  %7368 = fmul fast float %7338, %7306
  %7369 = fmul fast float %7349, %7306
  %7370 = fmul fast float %7360, %7306
  %7371 = fadd fast float %7365, %7361
  %7372 = fadd fast float %7366, %7362
  %7373 = fadd fast float %7367, %7363
  %7374 = fadd fast float %7368, %7364
  %7375 = fadd fast float %7369, %7364
  %7376 = fadd fast float %7370, %7364
  %7377 = fcmp fast une float %7374, 0.000000e+00
  br i1 %7377, label %7378, label %7385, !dx.controlflow.hints !169

; <label>:7378                                    ; preds = %7358
  %7379 = fmul fast float %7374, 0x3FF7154760000000
  %7380 = call float @dx.op.unary.f32(i32 21, float %7379)  ; Exp(value)
  %7381 = fsub fast float 1.000000e+00, %7380
  %7382 = fmul fast float %7371, %7381
  %7383 = fsub fast float -0.000000e+00, %7382
  %7384 = fdiv fast float %7383, %7374
  br label %7385

; <label>:7385                                    ; preds = %7378, %7358
  %7386 = phi float [ %7380, %7378 ], [ 1.000000e+00, %7358 ]
  %7387 = phi float [ %7384, %7378 ], [ %7371, %7358 ]
  %7388 = fcmp fast une float %7375, 0.000000e+00
  br i1 %7388, label %7389, label %7396, !dx.controlflow.hints !169

; <label>:7389                                    ; preds = %7385
  %7390 = fmul fast float %7375, 0x3FF7154760000000
  %7391 = call float @dx.op.unary.f32(i32 21, float %7390)  ; Exp(value)
  %7392 = fsub fast float 1.000000e+00, %7391
  %7393 = fmul fast float %7372, %7392
  %7394 = fsub fast float -0.000000e+00, %7393
  %7395 = fdiv fast float %7394, %7375
  br label %7396

; <label>:7396                                    ; preds = %7389, %7385
  %7397 = phi float [ %7391, %7389 ], [ 1.000000e+00, %7385 ]
  %7398 = phi float [ %7395, %7389 ], [ %7372, %7385 ]
  %7399 = fcmp fast une float %7376, 0.000000e+00
  br i1 %7399, label %7400, label %7407, !dx.controlflow.hints !169

; <label>:7400                                    ; preds = %7396
  %7401 = fmul fast float %7376, 0x3FF7154760000000
  %7402 = call float @dx.op.unary.f32(i32 21, float %7401)  ; Exp(value)
  %7403 = fsub fast float 1.000000e+00, %7402
  %7404 = fmul fast float %7373, %7403
  %7405 = fsub fast float -0.000000e+00, %7404
  %7406 = fdiv fast float %7405, %7376
  br label %7407

; <label>:7407                                    ; preds = %7400, %7396
  %7408 = phi float [ %7402, %7400 ], [ 1.000000e+00, %7396 ]
  %7409 = phi float [ %7406, %7400 ], [ %7373, %7396 ]
  %7410 = fcmp fast ogt float %7306, %7308
  br i1 %7410, label %7411, label %7431

; <label>:7411                                    ; preds = %7407
  %7412 = fsub fast float 1.000000e+00, %7308
  %7413 = fmul fast float %7324, %7412
  %7414 = fmul fast float %7325, %7412
  %7415 = fmul fast float %7326, %7412
  %7416 = fmul fast float %7327, %7412
  %7417 = fcmp fast une float %7416, 0.000000e+00
  br i1 %7417, label %7418, label %7469, !dx.controlflow.hints !170

; <label>:7418                                    ; preds = %7411
  %7419 = fmul fast float %7416, 0x3FF7154760000000
  %7420 = call float @dx.op.unary.f32(i32 21, float %7419)  ; Exp(value)
  %7421 = fsub fast float 1.000000e+00, %7420
  %7422 = fmul fast float %7413, %7421
  %7423 = fsub fast float -0.000000e+00, %7422
  %7424 = fmul fast float %7414, %7421
  %7425 = fsub fast float -0.000000e+00, %7424
  %7426 = fmul fast float %7415, %7421
  %7427 = fsub fast float -0.000000e+00, %7426
  %7428 = fdiv fast float %7423, %7416
  %7429 = fdiv fast float %7425, %7416
  %7430 = fdiv fast float %7427, %7416
  br label %7469

; <label>:7431                                    ; preds = %7407
  %7432 = fsub fast float 1.000000e+00, %7306
  %7433 = fmul fast float %7337, %7432
  %7434 = fmul fast float %7348, %7432
  %7435 = fmul fast float %7359, %7432
  %7436 = fmul fast float %7338, %7432
  %7437 = fmul fast float %7349, %7432
  %7438 = fmul fast float %7360, %7432
  %7439 = fcmp fast une float %7436, 0.000000e+00
  br i1 %7439, label %7440, label %7447, !dx.controlflow.hints !169

; <label>:7440                                    ; preds = %7431
  %7441 = fmul fast float %7436, 0x3FF7154760000000
  %7442 = call float @dx.op.unary.f32(i32 21, float %7441)  ; Exp(value)
  %7443 = fsub fast float 1.000000e+00, %7442
  %7444 = fmul fast float %7433, %7443
  %7445 = fsub fast float -0.000000e+00, %7444
  %7446 = fdiv fast float %7445, %7436
  br label %7447

; <label>:7447                                    ; preds = %7440, %7431
  %7448 = phi float [ %7446, %7440 ], [ %7433, %7431 ]
  %7449 = phi float [ %7442, %7440 ], [ 1.000000e+00, %7431 ]
  %7450 = fcmp fast une float %7437, 0.000000e+00
  br i1 %7450, label %7451, label %7458, !dx.controlflow.hints !169

; <label>:7451                                    ; preds = %7447
  %7452 = fmul fast float %7437, 0x3FF7154760000000
  %7453 = call float @dx.op.unary.f32(i32 21, float %7452)  ; Exp(value)
  %7454 = fsub fast float 1.000000e+00, %7453
  %7455 = fmul fast float %7434, %7454
  %7456 = fsub fast float -0.000000e+00, %7455
  %7457 = fdiv fast float %7456, %7437
  br label %7458

; <label>:7458                                    ; preds = %7451, %7447
  %7459 = phi float [ %7457, %7451 ], [ %7434, %7447 ]
  %7460 = phi float [ %7453, %7451 ], [ 1.000000e+00, %7447 ]
  %7461 = fcmp fast une float %7438, 0.000000e+00
  br i1 %7461, label %7462, label %7469, !dx.controlflow.hints !169

; <label>:7462                                    ; preds = %7458
  %7463 = fmul fast float %7438, 0x3FF7154760000000
  %7464 = call float @dx.op.unary.f32(i32 21, float %7463)  ; Exp(value)
  %7465 = fsub fast float 1.000000e+00, %7464
  %7466 = fmul fast float %7435, %7465
  %7467 = fsub fast float -0.000000e+00, %7466
  %7468 = fdiv fast float %7467, %7438
  br label %7469

; <label>:7469                                    ; preds = %7462, %7458, %7418, %7411
  %7470 = phi float [ %7468, %7462 ], [ %7430, %7418 ], [ %7415, %7411 ], [ %7435, %7458 ]
  %7471 = phi float [ %7459, %7462 ], [ %7429, %7418 ], [ %7414, %7411 ], [ %7459, %7458 ]
  %7472 = phi float [ %7448, %7462 ], [ %7428, %7418 ], [ %7413, %7411 ], [ %7448, %7458 ]
  %7473 = phi float [ %7464, %7462 ], [ %7420, %7418 ], [ 1.000000e+00, %7411 ], [ 1.000000e+00, %7458 ]
  %7474 = phi float [ %7460, %7462 ], [ %7420, %7418 ], [ 1.000000e+00, %7411 ], [ %7460, %7458 ]
  %7475 = phi float [ %7449, %7462 ], [ %7420, %7418 ], [ 1.000000e+00, %7411 ], [ %7449, %7458 ]
  %7476 = fmul fast float %7475, %7387
  %7477 = fmul fast float %7474, %7398
  %7478 = fmul fast float %7473, %7409
  %7479 = fadd fast float %7476, %7472
  %7480 = fadd fast float %7477, %7471
  %7481 = fadd fast float %7478, %7470
  %7482 = fmul fast float %7475, %7386
  %7483 = fmul fast float %7474, %7397
  %7484 = fmul fast float %7473, %7408
  br label %7485

; <label>:7485                                    ; preds = %7469, %7280
  %7486 = phi float [ %7484, %7469 ], [ %7286, %7280 ]
  %7487 = phi float [ %7483, %7469 ], [ %7285, %7280 ]
  %7488 = phi float [ %7482, %7469 ], [ %7284, %7280 ]
  %7489 = phi float [ %7481, %7469 ], [ %7283, %7280 ]
  %7490 = phi float [ %7480, %7469 ], [ %7282, %7280 ]
  %7491 = phi float [ %7479, %7469 ], [ %7281, %7280 ]
  %7492 = fmul fast float %7491, %6437
  %7493 = fmul fast float %7490, %6437
  %7494 = fmul fast float %7489, %6437
  %7495 = fmul fast float %7488, %6732
  %7496 = call float @dx.op.dot3.f32(i32 55, float %7488, float %7487, float %7486, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7497 = call float @dx.op.dot3.f32(i32 55, float %7492, float %7493, float %7494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7498 = select i1 %204, float %7496, float %7488
  %7499 = select i1 %204, float %7496, float %7487
  %7500 = select i1 %204, float 1.000000e+00, float %7486
  %7501 = select i1 %204, float %7497, float %7492
  %7502 = select i1 %204, float 0.000000e+00, float %7493
  %7503 = select i1 %204, float 0.000000e+00, float %7494
  %7504 = fmul fast float %7498, %6726
  %7505 = fmul fast float %7499, %6727
  %7506 = fmul fast float %7500, %6728
  %7507 = fadd fast float %7504, %7501
  %7508 = fadd fast float %7505, %7502
  %7509 = fadd fast float %7503, %7506
  %7510 = fmul fast float %7498, %6729
  %7511 = fmul fast float %7499, %6730
  %7512 = fmul fast float %7500, %6731
  %7513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7514 = extractvalue %dx.types.CBufRet.i32 %7513, 0
  %7515 = icmp eq i32 %7514, 0
  br i1 %7515, label %7883, label %7516, !dx.controlflow.hints !171

; <label>:7516                                    ; preds = %7485
  %7517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.f32 %7517, 2
  %7519 = extractvalue %dx.types.CBufRet.f32 %7517, 3
  %7520 = fmul fast float %7518, %94
  %7521 = fmul fast float %7519, %95
  %7522 = fmul fast float %7520, 2.000000e+00
  %7523 = fmul fast float %7521, 2.000000e+00
  %7524 = fsub fast float 1.000000e+00, %7522
  %7525 = fsub fast float 1.000000e+00, %7523
  %7526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.f32 %7526, 0
  %7528 = extractvalue %dx.types.CBufRet.f32 %7526, 1
  %7529 = extractvalue %dx.types.CBufRet.f32 %7526, 2
  %7530 = fmul fast float %7524, %7527
  %7531 = fmul fast float %7524, %7528
  %7532 = fmul fast float %7524, %7529
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 0
  %7535 = extractvalue %dx.types.CBufRet.f32 %7533, 1
  %7536 = extractvalue %dx.types.CBufRet.f32 %7533, 2
  %7537 = fmul fast float %7525, %7534
  %7538 = fmul fast float %7525, %7535
  %7539 = fmul fast float %7525, %7536
  %7540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7541 = extractvalue %dx.types.CBufRet.f32 %7540, 0
  %7542 = extractvalue %dx.types.CBufRet.f32 %7540, 1
  %7543 = extractvalue %dx.types.CBufRet.f32 %7540, 2
  %7544 = fadd fast float %7537, %7541
  %7545 = fadd fast float %7544, %7530
  %7546 = fadd fast float %7538, %7542
  %7547 = fadd fast float %7546, %7531
  %7548 = fadd fast float %7539, %7543
  %7549 = fadd fast float %7548, %7532
  %7550 = fmul fast float %7545, %6725
  %7551 = fmul fast float %7547, %6725
  %7552 = fmul fast float %7549, %6725
  %7553 = fmul fast float %7550, %7550
  %7554 = fmul fast float %7551, %7551
  %7555 = fadd fast float %7553, %7554
  %7556 = fmul fast float %7552, %7552
  %7557 = fadd fast float %7555, %7556
  %7558 = call float @dx.op.unary.f32(i32 24, float %7557)  ; Sqrt(value)
  %7559 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %7560 = fsub fast float %7558, %7559
  %7561 = extractvalue %dx.types.CBufRet.f32 %6451, 2
  %7562 = fmul fast float %7560, %7561
  %7563 = call float @dx.op.unary.f32(i32 7, float %7562)  ; Saturate(value)
  %7564 = fadd fast float %7563, -5.000000e-01
  %7565 = fmul fast float %7564, 2.000000e+00
  %7566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.f32 %7566, 2
  %7568 = call float @dx.op.binary.f32(i32 36, float %7567, float %7565)  ; FMin(a,b)
  %7569 = fsub fast float -0.000000e+00, %7567
  %7570 = fcmp fast ogt float %7568, %7569
  br i1 %7570, label %7571, label %7883, !dx.controlflow.hints !172

; <label>:7571                                    ; preds = %7516
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 3
  %7574 = fcmp fast ogt float %7573, 0.000000e+00
  br i1 %7574, label %7575, label %7650, !dx.controlflow.hints !173

; <label>:7575                                    ; preds = %7571
  %7576 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7577 = extractvalue %dx.types.Dimensions %7576, 0
  %7578 = sitofp i32 %7577 to float
  %7579 = extractvalue %dx.types.Dimensions %7576, 1
  %7580 = sitofp i32 %7579 to float
  %7581 = fmul fast float %7520, %7578
  %7582 = fmul fast float %7521, %7580
  %7583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.f32 %7583, 1
  %7585 = fsub fast float -0.000000e+00, %7584
  %7586 = fptoui float %7585 to i32
  %7587 = fptoui float %7581 to i32
  %7588 = fptoui float %7582 to i32
  %7589 = and i32 %7586, 31
  %7590 = lshr i32 %7587, %7589
  %7591 = lshr i32 %7588, %7589
  %7592 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 %7586, i32 %7590, i32 %7591, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7593 = extractvalue %dx.types.ResRet.f32 %7592, 0
  %7594 = fcmp fast olt float %7593, -1.000000e+00
  %7595 = fcmp fast ogt float %7593, -1.000000e+00
  %7596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7596, 1
  %7598 = select i1 %7595, float %7597, float 1.000000e+00
  %7599 = fadd fast float %7593, 1.000000e+00
  %7600 = fmul fast float %7598, %7599
  %7601 = call float @dx.op.unary.f32(i32 6, float %7600)  ; FAbs(value)
  %7602 = extractvalue %dx.types.CBufRet.f32 %7596, 3
  %7603 = fcmp fast oge float %7601, %7602
  %7604 = select i1 %7603, float 0x4197782600000000, float %7601
  %7605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7606 = extractvalue %dx.types.CBufRet.f32 %7605, 0
  %7607 = extractvalue %dx.types.CBufRet.f32 %7605, 1
  %7608 = extractvalue %dx.types.CBufRet.f32 %7605, 2
  %7609 = select i1 %7594, float %7606, float %7527
  %7610 = select i1 %7594, float %7607, float %7528
  %7611 = select i1 %7594, float %7608, float %7529
  %7612 = fmul fast float %7609, %7524
  %7613 = fmul fast float %7610, %7524
  %7614 = fmul fast float %7611, %7524
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7619 = select i1 %7594, float %7616, float %7534
  %7620 = select i1 %7594, float %7617, float %7535
  %7621 = select i1 %7594, float %7618, float %7536
  %7622 = fmul fast float %7619, %7525
  %7623 = fmul fast float %7620, %7525
  %7624 = fmul fast float %7621, %7525
  %7625 = fadd fast float %7622, %7612
  %7626 = fadd fast float %7623, %7613
  %7627 = fadd fast float %7624, %7614
  %7628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7629 = extractvalue %dx.types.CBufRet.f32 %7628, 0
  %7630 = extractvalue %dx.types.CBufRet.f32 %7628, 1
  %7631 = extractvalue %dx.types.CBufRet.f32 %7628, 2
  %7632 = select i1 %7594, float %7629, float %7541
  %7633 = select i1 %7594, float %7630, float %7542
  %7634 = select i1 %7594, float %7631, float %7543
  %7635 = fadd fast float %7625, %7632
  %7636 = fadd fast float %7626, %7633
  %7637 = fadd fast float %7627, %7634
  %7638 = fmul fast float %7635, %7604
  %7639 = fmul fast float %7636, %7604
  %7640 = fmul fast float %7637, %7604
  %7641 = fmul fast float %7638, %7638
  %7642 = fmul fast float %7639, %7639
  %7643 = fadd fast float %7641, %7642
  %7644 = fmul fast float %7640, %7640
  %7645 = fadd fast float %7643, %7644
  %7646 = call float @dx.op.unary.f32(i32 24, float %7645)  ; Sqrt(value)
  %7647 = fsub fast float %7646, %7559
  %7648 = fmul fast float %7647, %7561
  %7649 = call float @dx.op.unary.f32(i32 7, float %7648)  ; Saturate(value)
  br label %7650

; <label>:7650                                    ; preds = %7575, %7571
  %7651 = phi float [ %7649, %7575 ], [ 1.000000e+00, %7571 ]
  %7652 = fmul fast float %7568, 5.000000e-01
  %7653 = fadd fast float %7652, 5.000000e-01
  %7654 = call float @dx.op.unary.f32(i32 22, float %7653)  ; Frc(value)
  %7655 = call float @dx.op.unary.f32(i32 27, float %7654)  ; Round_ni(value)
  %7656 = call float @dx.op.unary.f32(i32 22, float %7654)  ; Frc(value)
  %7657 = fmul fast float %7656, 2.000000e+00
  %7658 = fadd fast float %7657, -1.000000e+00
  %7659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %50, float %7520, float %7521, float %7655, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7660 = extractvalue %dx.types.ResRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.ResRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.ResRet.f32 %7659, 2
  %7663 = extractvalue %dx.types.ResRet.f32 %7659, 3
  %7664 = fadd fast float %7660, -5.000000e-01
  %7665 = fadd fast float %7662, -5.000000e-01
  %7666 = fmul fast float %7664, 0xBFD5555560000000
  %7667 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7665, float %7666)  ; FMad(a,b,c)
  %7668 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7661, float 0.000000e+00)  ; FMad(a,b,c)
  %7669 = fadd fast float %7668, %7663
  %7670 = fmul fast float %7664, -7.500000e-01
  %7671 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7665, float %7670)  ; FMad(a,b,c)
  %7672 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7661, float 0.000000e+00)  ; FMad(a,b,c)
  %7673 = fadd fast float %7672, %7663
  %7674 = call float @dx.op.binary.f32(i32 35, float %7667, float -1.000000e+00)  ; FMax(a,b)
  %7675 = call float @dx.op.binary.f32(i32 35, float %7669, float -1.000000e+00)  ; FMax(a,b)
  %7676 = call float @dx.op.binary.f32(i32 35, float %7671, float -1.000000e+00)  ; FMax(a,b)
  %7677 = call float @dx.op.binary.f32(i32 35, float %7673, float -1.000000e+00)  ; FMax(a,b)
  %7678 = call float @dx.op.binary.f32(i32 36, float %7674, float 1.000000e+00)  ; FMin(a,b)
  %7679 = call float @dx.op.binary.f32(i32 36, float %7675, float 1.000000e+00)  ; FMin(a,b)
  %7680 = call float @dx.op.binary.f32(i32 36, float %7676, float 1.000000e+00)  ; FMin(a,b)
  %7681 = call float @dx.op.binary.f32(i32 36, float %7677, float 1.000000e+00)  ; FMin(a,b)
  %7682 = fcmp fast olt float %7678, 0x3FEFFF8020000000
  br i1 %7682, label %7683, label %7798, !dx.controlflow.hints !174

; <label>:7683                                    ; preds = %7650
  %7684 = extractvalue %dx.types.CBufRet.f32 %7566, 3
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7689 = extractvalue %dx.types.CBufRet.f32 %7685, 3
  %7690 = fsub fast float %7686, %7678
  %7691 = fsub fast float %7687, %7679
  %7692 = fsub fast float %7688, %7680
  %7693 = fsub fast float %7689, %7681
  %7694 = fmul fast float %7690, %7684
  %7695 = fmul fast float %7691, %7684
  %7696 = fmul fast float %7692, %7684
  %7697 = fmul fast float %7693, %7684
  %7698 = fadd fast float %7694, %7678
  %7699 = fadd fast float %7695, %7679
  %7700 = fsub fast float -0.000000e+00, %7699
  %7701 = fadd fast float %7696, %7680
  %7702 = fadd fast float %7697, %7681
  %7703 = fmul fast float %7698, %7698
  %7704 = fsub fast float %7699, %7703
  %7705 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7704)  ; FMax(a,b)
  %7706 = fdiv fast float 1.000000e+00, %7705
  %7707 = fmul fast float %7699, %7698
  %7708 = fsub fast float %7701, %7707
  %7709 = fsub fast float %7658, %7698
  %7710 = fmul fast float %7658, %7658
  %7711 = fsub fast float %7710, %7699
  %7712 = fmul fast float %7709, %7706
  %7713 = fmul fast float %7712, %7708
  %7714 = fsub fast float %7711, %7713
  %7715 = fmul fast float %7699, %7699
  %7716 = fsub fast float %7702, %7715
  %7717 = fmul fast float %7708, %7708
  %7718 = fmul fast float %7717, %7706
  %7719 = fsub fast float %7716, %7718
  %7720 = fdiv fast float %7714, %7719
  %7721 = fmul fast float %7708, %7720
  %7722 = fsub fast float %7709, %7721
  %7723 = fmul fast float %7722, %7706
  %7724 = fmul fast float %7723, %7698
  %7725 = fsub fast float 1.000000e+00, %7724
  %7726 = fmul fast float %7699, %7720
  %7727 = fsub fast float %7725, %7726
  %7728 = fmul fast float %7723, %7723
  %7729 = fmul fast float %7720, 4.000000e+00
  %7730 = fmul fast float %7729, %7727
  %7731 = fsub fast float %7728, %7730
  %7732 = call float @dx.op.unary.f32(i32 24, float %7731)  ; Sqrt(value)
  %7733 = fcmp fast oge float %7723, 0.000000e+00
  %7734 = fsub fast float -0.000000e+00, %7732
  %7735 = select i1 %7733, float %7734, float %7732
  %7736 = fsub fast float %7735, %7723
  %7737 = fdiv fast float %7736, %7720
  %7738 = fdiv fast float %7727, %7736
  %7739 = fmul fast float %7737, 5.000000e-01
  %7740 = fmul fast float %7738, 2.000000e+00
  %7741 = select i1 %7733, float %7739, float %7740
  %7742 = select i1 %7733, float %7740, float %7739
  %7743 = call float @dx.op.binary.f32(i32 35, float %7741, float %7742)  ; FMax(a,b)
  %7744 = call float @dx.op.binary.f32(i32 36, float %7741, float %7742)  ; FMin(a,b)
  %7745 = fcmp fast ogt float %7658, %7744
  br i1 %7745, label %7746, label %7756

; <label>:7746                                    ; preds = %7683
  %7747 = fsub fast float %7658, %7744
  %7748 = fsub fast float %7743, %7744
  %7749 = fmul fast float %7747, %7748
  %7750 = fmul fast float %7743, %7658
  %7751 = fadd fast float %7743, %7658
  %7752 = fmul fast float %7751, %7698
  %7753 = fadd fast float %7750, %7699
  %7754 = fsub fast float %7753, %7752
  %7755 = fdiv fast float %7754, %7749
  br label %7756

; <label>:7756                                    ; preds = %7746, %7683
  %7757 = phi float [ %7755, %7746 ], [ 0.000000e+00, %7683 ]
  %7758 = fcmp fast ogt float %7658, %7743
  %7759 = fsub fast float %7658, %7743
  br i1 %7758, label %7760, label %7770

; <label>:7760                                    ; preds = %7756
  %7761 = fsub fast float %7743, %7744
  %7762 = fmul fast float %7761, %7759
  %7763 = fmul fast float %7744, %7658
  %7764 = fadd fast float %7744, %7658
  %7765 = fmul fast float %7764, %7698
  %7766 = fsub fast float %7700, %7763
  %7767 = fadd fast float %7766, %7765
  %7768 = fdiv fast float %7767, %7762
  %7769 = fadd fast float %7768, %7757
  br label %7770

; <label>:7770                                    ; preds = %7760, %7756
  %7771 = phi float [ %7769, %7760 ], [ %7757, %7756 ]
  %7772 = fsub fast float %7658, %7744
  %7773 = fmul fast float %7772, %7759
  %7774 = fmul fast float %7744, %7743
  %7775 = fadd fast float %7744, %7743
  %7776 = fmul fast float %7775, %7698
  %7777 = fadd fast float %7774, %7699
  %7778 = fsub fast float %7777, %7776
  %7779 = fdiv fast float %7778, %7773
  %7780 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  %7781 = fcmp fast oeq float %6452, 0.000000e+00
  %7782 = extractvalue %dx.types.CBufRet.f32 %7566, 0
  %7783 = fcmp fast oeq float %7782, 0.000000e+00
  %7784 = or i1 %7781, %7783
  %7785 = fmul fast float %7782, 2.000000e+00
  %7786 = fadd fast float %7567, %7568
  %7787 = fdiv fast float %7786, %7785
  %7788 = call float @dx.op.unary.f32(i32 7, float %7787)  ; Saturate(value)
  %7789 = fmul fast float %7788, 2.000000e+00
  %7790 = fsub fast float 3.000000e+00, %7789
  %7791 = fmul fast float %7788, %7788
  %7792 = fmul fast float %7791, %7790
  %7793 = select i1 %7784, float 1.000000e+00, float %7792
  %7794 = fmul fast float %7779, %6452
  %7795 = fadd fast float %7780, %7794
  %7796 = call float @dx.op.unary.f32(i32 7, float %7795)  ; Saturate(value)
  %7797 = fmul fast float %7793, %7796
  br label %7798

; <label>:7798                                    ; preds = %7770, %7650
  %7799 = phi float [ %7797, %7770 ], [ 0.000000e+00, %7650 ]
  %7800 = fsub fast float 1.000000e+00, %7799
  %7801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %50, float %7520, float %7521, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7802 = extractvalue %dx.types.ResRet.f32 %7801, 0
  %7803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7804 = extractvalue %dx.types.CBufRet.i32 %7803, 2
  %7805 = icmp eq i32 %7804, 0
  br i1 %7805, label %7811, label %7806

; <label>:7806                                    ; preds = %7798
  %7807 = call float @dx.op.unary.f32(i32 7, float %7799)  ; Saturate(value)
  %7808 = fadd fast float %7802, -1.000000e+00
  %7809 = fmul fast float %7807, %7808
  %7810 = fadd fast float %7809, 1.000000e+00
  br label %7811

; <label>:7811                                    ; preds = %7806, %7798
  %7812 = phi float [ %7810, %7806 ], [ %7800, %7798 ]
  br i1 %7574, label %7813, label %7831

; <label>:7813                                    ; preds = %7811
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7816 = fsub fast float %7651, %7815
  %7817 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7818 = fsub fast float %7651, %7573
  %7819 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  %7820 = fsub fast float %7817, %7819
  %7821 = fsub fast float %7653, %7819
  %7822 = fdiv fast float %7821, %7820
  %7823 = call float @dx.op.unary.f32(i32 7, float %7822)  ; Saturate(value)
  %7824 = fmul fast float %7823, 2.000000e+00
  %7825 = fsub fast float 3.000000e+00, %7824
  %7826 = fsub fast float %7802, %7812
  %7827 = fmul fast float %7823, %7823
  %7828 = fmul fast float %7827, %7826
  %7829 = fmul fast float %7828, %7825
  %7830 = fadd fast float %7829, %7812
  br label %7831

; <label>:7831                                    ; preds = %7813, %7811
  %7832 = phi float [ %7830, %7813 ], [ %7812, %7811 ]
  %7833 = call float @dx.op.binary.f32(i32 35, float %7802, float %7832)  ; FMax(a,b)
  %7834 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.i32 %7834, 2
  %7836 = and i32 %7835, 1
  %7837 = icmp eq i32 %7836, 0
  %7838 = fcmp fast une float %7833, 1.000000e+00
  %7839 = and i1 %7838, %7837
  br i1 %7839, label %7840, label %7859

; <label>:7840                                    ; preds = %7831
  %7841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %50, float %7520, float %7521, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7842 = extractvalue %dx.types.ResRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.ResRet.f32 %7841, 1
  %7844 = extractvalue %dx.types.ResRet.f32 %7841, 2
  %7845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7846 = extractvalue %dx.types.CBufRet.f32 %7845, 1
  %7847 = fmul fast float %7846, %7842
  %7848 = fmul fast float %7846, %7843
  %7849 = fmul fast float %7846, %7844
  %7850 = fcmp fast ogt float %7802, 0x3FEFFF2E40000000
  %7851 = fsub fast float 1.000000e+00, %7833
  %7852 = fsub fast float 1.000000e+00, %7802
  %7853 = fdiv fast float %7851, %7852
  %7854 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7855 = select i1 %7850, float 0.000000e+00, float %7854
  %7856 = fmul fast float %7847, %7855
  %7857 = fmul fast float %7848, %7855
  %7858 = fmul fast float %7849, %7855
  br label %7859

; <label>:7859                                    ; preds = %7840, %7831
  %7860 = phi float [ 0.000000e+00, %7831 ], [ %7856, %7840 ]
  %7861 = phi float [ 0.000000e+00, %7831 ], [ %7857, %7840 ]
  %7862 = phi float [ 0.000000e+00, %7831 ], [ %7858, %7840 ]
  %7863 = fmul fast float %7860, %6437
  %7864 = fmul fast float %7861, %6437
  %7865 = fmul fast float %7862, %6437
  %7866 = fmul fast float %7833, %7495
  %7867 = call float @dx.op.dot3.f32(i32 55, float %7833, float %7833, float %7833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7868 = call float @dx.op.dot3.f32(i32 55, float %7863, float %7864, float %7865, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7869 = select i1 %204, float %7867, float %7833
  %7870 = select i1 %204, float 1.000000e+00, float %7833
  %7871 = select i1 %204, float %7868, float %7863
  %7872 = select i1 %204, float 0.000000e+00, float %7864
  %7873 = select i1 %204, float 0.000000e+00, float %7865
  %7874 = fmul fast float %7869, %7507
  %7875 = fmul fast float %7869, %7508
  %7876 = fmul fast float %7870, %7509
  %7877 = fadd fast float %7874, %7871
  %7878 = fadd fast float %7875, %7872
  %7879 = fadd fast float %7873, %7876
  %7880 = fmul fast float %7869, %7510
  %7881 = fmul fast float %7869, %7511
  %7882 = fmul fast float %7870, %7512
  br label %7883

; <label>:7883                                    ; preds = %7859, %7516, %7485, %6721
  %7884 = phi float [ %6726, %6721 ], [ %7507, %7485 ], [ %7877, %7859 ], [ %7507, %7516 ]
  %7885 = phi float [ %6727, %6721 ], [ %7508, %7485 ], [ %7878, %7859 ], [ %7508, %7516 ]
  %7886 = phi float [ %6728, %6721 ], [ %7509, %7485 ], [ %7879, %7859 ], [ %7509, %7516 ]
  %7887 = phi float [ %6729, %6721 ], [ %7510, %7485 ], [ %7880, %7859 ], [ %7510, %7516 ]
  %7888 = phi float [ %6730, %6721 ], [ %7511, %7485 ], [ %7881, %7859 ], [ %7511, %7516 ]
  %7889 = phi float [ %6731, %6721 ], [ %7512, %7485 ], [ %7882, %7859 ], [ %7512, %7516 ]
  %7890 = phi float [ %6732, %6721 ], [ %7495, %7485 ], [ %7866, %7859 ], [ %7495, %7516 ]
  %7891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %53, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %7892 = extractvalue %dx.types.CBufRet.f32 %7891, 2
  %7893 = extractvalue %dx.types.CBufRet.f32 %7891, 3
  %7894 = fmul fast float %7892, %94
  %7895 = fmul fast float %7893, %95
  %7896 = call float @dx.op.unary.f32(i32 7, float %7894)  ; Saturate(value)
  %7897 = call float @dx.op.unary.f32(i32 7, float %7895)  ; Saturate(value)
  %7898 = select i1 %6462, i32 2, i32 0
  %7899 = or i32 %7898, 1
  %7900 = uitofp i32 %7899 to float
  %7901 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7896, float %7897, float %7900, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.ResRet.f32 %7901, 1
  %7904 = extractvalue %dx.types.ResRet.f32 %7901, 2
  %7905 = extractvalue %dx.types.ResRet.f32 %7901, 3
  %7906 = add nuw nsw i32 %7898, 2
  %7907 = uitofp i32 %7906 to float
  %7908 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %50, float %7896, float %7897, float %7907, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7909 = extractvalue %dx.types.ResRet.f32 %7908, 0
  %7910 = extractvalue %dx.types.ResRet.f32 %7908, 1
  %7911 = extractvalue %dx.types.ResRet.f32 %7908, 2
  %7912 = extractvalue %dx.types.ResRet.f32 %7908, 3
  %7913 = call float @dx.op.binary.f32(i32 35, float %7903, float %7904)  ; FMax(a,b)
  %7914 = call float @dx.op.binary.f32(i32 35, float %7902, float %7913)  ; FMax(a,b)
  %7915 = call float @dx.op.binary.f32(i32 35, float %7914, float %7905)  ; FMax(a,b)
  %7916 = call float @dx.op.binary.f32(i32 36, float %7910, float %7911)  ; FMin(a,b)
  %7917 = call float @dx.op.binary.f32(i32 36, float %7909, float %7916)  ; FMin(a,b)
  %7918 = call float @dx.op.binary.f32(i32 36, float %7917, float %7912)  ; FMin(a,b)
  %7919 = fmul fast float %7915, 2.550000e+02
  %7920 = fadd fast float %7919, 0x3F70101020000000
  %7921 = fptoui float %7920 to i32
  %7922 = fmul fast float %7918, 2.550000e+02
  %7923 = fadd fast float %7922, 0x3F70101020000000
  %7924 = fptoui float %7923 to i32
  %7925 = icmp ult i32 %7921, %7924
  br i1 %7925, label %7926, label %8094

; <label>:7926                                    ; preds = %7883
  %7927 = fadd fast float %6725, -4.000000e+00
  %7928 = select i1 %2540, float -4.000000e+00, float %7927
  %7929 = call float @dx.op.binary.f32(i32 35, float %7928, float 0.000000e+00)  ; FMax(a,b)
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 0
  %7932 = fadd fast float %7931, %7929
  %7933 = extractvalue %dx.types.CBufRet.f32 %7930, 2
  %7934 = fmul fast float %7932, %7933
  %7935 = call float @dx.op.unary.f32(i32 23, float %7934)  ; Log(value)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7930, 3
  %7937 = fmul fast float %7936, %7935
  %7938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7939 = extractvalue %dx.types.CBufRet.f32 %7938, 2
  %7940 = fmul fast float %7937, %7939
  %7941 = call float @dx.op.unary.f32(i32 7, float %7940)  ; Saturate(value)
  %7942 = uitofp i32 %7921 to float
  %7943 = uitofp i32 %7924 to float
  %7944 = fadd fast float %7942, 5.000000e-01
  %7945 = fadd fast float %7943, 5.000000e-01
  %7946 = fmul fast float %7939, %7944
  %7947 = fmul fast float %7939, %7945
  %7948 = fadd fast float %7946, 0x3F0FFB4800000000
  %7949 = fadd fast float %7947, 0xBF0FFB4800000000
  %7950 = call float @dx.op.binary.f32(i32 35, float %7941, float %7948)  ; FMax(a,b)
  %7951 = call float @dx.op.binary.f32(i32 36, float %7950, float %7949)  ; FMin(a,b)
  %7952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7953 = extractvalue %dx.types.CBufRet.f32 %7952, 1
  %7954 = extractvalue %dx.types.CBufRet.f32 %7952, 2
  %7955 = extractvalue %dx.types.CBufRet.f32 %7952, 0
  %7956 = select i1 %6462, float %7955, float 0.000000e+00
  %7957 = fmul fast float %7953, %7951
  %7958 = fadd fast float %7956, %7957
  %7959 = fadd fast float %7956, %7954
  %7960 = fsub fast float %7953, %7954
  %7961 = fadd fast float %7960, %7956
  %7962 = call float @dx.op.binary.f32(i32 35, float %7958, float %7959)  ; FMax(a,b)
  %7963 = call float @dx.op.binary.f32(i32 36, float %7962, float %7961)  ; FMin(a,b)
  %7964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %48, float %7896, float %7897, float %7963, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7965 = extractvalue %dx.types.ResRet.f32 %7964, 0
  %7966 = extractvalue %dx.types.ResRet.f32 %7964, 1
  %7967 = extractvalue %dx.types.ResRet.f32 %7964, 2
  %7968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7969 = extractvalue %dx.types.CBufRet.i32 %7968, 0
  %7970 = extractvalue %dx.types.CBufRet.i32 %7968, 1
  %7971 = uitofp i32 %7969 to float
  %7972 = uitofp i32 %7970 to float
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %7975 = extractvalue %dx.types.CBufRet.f32 %7973, 1
  %7976 = fmul fast float %7971, %7896
  %7977 = fmul fast float %7972, %7897
  %7978 = fadd fast float %7976, -5.000000e-01
  %7979 = fadd fast float %7977, -5.000000e-01
  %7980 = call float @dx.op.unary.f32(i32 22, float %7978)  ; Frc(value)
  %7981 = call float @dx.op.unary.f32(i32 22, float %7979)  ; Frc(value)
  %7982 = fmul fast float %7980, %7980
  %7983 = fmul fast float %7982, %7980
  %7984 = fsub fast float 3.000000e+00, %7980
  %7985 = fmul fast float %7982, %7984
  %7986 = fmul fast float %7980, 3.000000e+00
  %7987 = fmul fast float %7983, 3.000000e+00
  %7988 = fmul fast float %7982, 6.000000e+00
  %7989 = fsub fast float %7987, %7988
  %7990 = fadd fast float %7989, 4.000000e+00
  %7991 = fmul fast float %7990, 0x3FC5555560000000
  %7992 = fmul fast float %7983, -3.000000e+00
  %7993 = fadd fast float %7982, %7980
  %7994 = fmul fast float %7993, 3.000000e+00
  %7995 = fadd fast float %7992, 1.000000e+00
  %7996 = fadd fast float %7995, %7994
  %7997 = fmul fast float %7983, 0x3FC5555560000000
  %7998 = fmul fast float %7981, %7981
  %7999 = fmul fast float %7998, %7981
  %8000 = fsub fast float 3.000000e+00, %7981
  %8001 = fmul fast float %7998, %8000
  %8002 = fmul fast float %7981, 3.000000e+00
  %8003 = fmul fast float %7999, 3.000000e+00
  %8004 = fmul fast float %7998, 6.000000e+00
  %8005 = fsub fast float %8003, %8004
  %8006 = fadd fast float %8005, 4.000000e+00
  %8007 = fmul fast float %8006, 0x3FC5555560000000
  %8008 = fmul fast float %7999, -3.000000e+00
  %8009 = fadd fast float %7998, %7981
  %8010 = fmul fast float %8009, 3.000000e+00
  %8011 = fadd fast float %8008, 1.000000e+00
  %8012 = fadd fast float %8011, %8010
  %8013 = fmul fast float %7999, 0x3FC5555560000000
  %8014 = fadd fast float %7980, 1.000000e+00
  %8015 = fsub fast float 1.000000e+00, %7986
  %8016 = fadd fast float %8015, %7985
  %8017 = fadd fast float %8016, %7990
  %8018 = fmul fast float %8017, 0x3FC5555560000000
  %8019 = fdiv fast float %7991, %8018
  %8020 = fsub fast float %8014, %8019
  %8021 = fsub fast float 1.000000e+00, %7980
  %8022 = fadd fast float %7996, %7983
  %8023 = fmul fast float %8022, 0x3FC5555560000000
  %8024 = fdiv fast float %7997, %8023
  %8025 = fadd fast float %8021, %8024
  %8026 = fadd fast float %7981, 1.000000e+00
  %8027 = fsub fast float 1.000000e+00, %8002
  %8028 = fadd fast float %8027, %8001
  %8029 = fadd fast float %8028, %8006
  %8030 = fmul fast float %8029, 0x3FC5555560000000
  %8031 = fdiv fast float %8007, %8030
  %8032 = fsub fast float %8026, %8031
  %8033 = fsub fast float 1.000000e+00, %7981
  %8034 = fadd fast float %8012, %7999
  %8035 = fmul fast float %8034, 0x3FC5555560000000
  %8036 = fdiv fast float %8013, %8035
  %8037 = fadd fast float %8036, %8033
  %8038 = fmul fast float %8020, %7974
  %8039 = fsub fast float %7896, %8038
  %8040 = fmul fast float %8025, %7974
  %8041 = fadd fast float %8040, %7896
  %8042 = fmul fast float %8037, %7975
  %8043 = fadd fast float %8042, %7897
  %8044 = fmul fast float %8032, %7975
  %8045 = fsub fast float %7897, %8044
  %8046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8039, float %8045, float %7963, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8047 = extractvalue %dx.types.ResRet.f32 %8046, 0
  %8048 = extractvalue %dx.types.ResRet.f32 %8046, 1
  %8049 = extractvalue %dx.types.ResRet.f32 %8046, 2
  %8050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8041, float %8045, float %7963, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8051 = extractvalue %dx.types.ResRet.f32 %8050, 0
  %8052 = extractvalue %dx.types.ResRet.f32 %8050, 1
  %8053 = extractvalue %dx.types.ResRet.f32 %8050, 2
  %8054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8039, float %8043, float %7963, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8055 = extractvalue %dx.types.ResRet.f32 %8054, 0
  %8056 = extractvalue %dx.types.ResRet.f32 %8054, 1
  %8057 = extractvalue %dx.types.ResRet.f32 %8054, 2
  %8058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %48, float %8041, float %8043, float %7963, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8059 = extractvalue %dx.types.ResRet.f32 %8058, 0
  %8060 = extractvalue %dx.types.ResRet.f32 %8058, 1
  %8061 = extractvalue %dx.types.ResRet.f32 %8058, 2
  %8062 = fsub fast float %8055, %8047
  %8063 = fsub fast float %8056, %8048
  %8064 = fsub fast float %8057, %8049
  %8065 = fmul fast float %8062, %8035
  %8066 = fmul fast float %8063, %8035
  %8067 = fmul fast float %8064, %8035
  %8068 = fadd fast float %8065, %8047
  %8069 = fadd fast float %8066, %8048
  %8070 = fadd fast float %8067, %8049
  %8071 = fsub fast float %8059, %8051
  %8072 = fsub fast float %8060, %8052
  %8073 = fsub fast float %8061, %8053
  %8074 = fmul fast float %8071, %8035
  %8075 = fmul fast float %8072, %8035
  %8076 = fmul fast float %8073, %8035
  %8077 = fsub fast float %8051, %8068
  %8078 = fadd fast float %8077, %8074
  %8079 = fsub fast float %8052, %8069
  %8080 = fadd fast float %8079, %8075
  %8081 = fsub fast float %8053, %8070
  %8082 = fadd fast float %8081, %8076
  %8083 = fmul fast float %8078, %8023
  %8084 = fmul fast float %8080, %8023
  %8085 = fmul fast float %8082, %8023
  %8086 = fadd fast float %8083, %8068
  %8087 = fadd fast float %8084, %8069
  %8088 = fadd fast float %8085, %8070
  %8089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8090 = extractvalue %dx.types.CBufRet.f32 %8089, 1
  %8091 = fmul fast float %8086, %8090
  %8092 = fmul fast float %8087, %8090
  %8093 = fmul fast float %8088, %8090
  br label %8094

; <label>:8094                                    ; preds = %7926, %7883
  %8095 = phi float [ %7965, %7926 ], [ 1.000000e+00, %7883 ]
  %8096 = phi float [ %7966, %7926 ], [ 1.000000e+00, %7883 ]
  %8097 = phi float [ %7967, %7926 ], [ 1.000000e+00, %7883 ]
  %8098 = phi float [ %8091, %7926 ], [ 0.000000e+00, %7883 ]
  %8099 = phi float [ %8092, %7926 ], [ 0.000000e+00, %7883 ]
  %8100 = phi float [ %8093, %7926 ], [ 0.000000e+00, %7883 ]
  %8101 = fmul fast float %8098, %6437
  %8102 = fmul fast float %8099, %6437
  %8103 = fmul fast float %8100, %6437
  %8104 = fmul fast float %8095, %7890
  %8105 = call float @dx.op.dot3.f32(i32 55, float %8095, float %8096, float %8097, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8106 = call float @dx.op.dot3.f32(i32 55, float %8101, float %8102, float %8103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8107 = select i1 %204, float %8105, float %8095
  %8108 = select i1 %204, float %8105, float %8096
  %8109 = select i1 %204, float 1.000000e+00, float %8097
  %8110 = select i1 %204, float %8106, float %8101
  %8111 = select i1 %204, float 0.000000e+00, float %8102
  %8112 = select i1 %204, float 0.000000e+00, float %8103
  %8113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.i32 %8113, 3
  %8115 = and i32 %8114, 3
  %8116 = icmp ne i32 %8115, 0
  %8117 = and i32 %8114, 4
  %8118 = icmp ne i32 %8117, 0
  %8119 = and i1 %8116, %8118
  %8120 = and i1 %204, %8119
  br i1 %8120, label %8121, label %8127

; <label>:8121                                    ; preds = %8094
  %8122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8123 = extractvalue %dx.types.CBufRet.f32 %8122, 1
  %8124 = fadd fast float %8104, -1.000000e+00
  %8125 = fmul fast float %8123, %8124
  %8126 = fadd fast float %8125, 1.000000e+00
  br label %8127

; <label>:8127                                    ; preds = %8121, %8094
  %8128 = phi float [ %8126, %8121 ], [ %8104, %8094 ]
  %8129 = fadd fast float %7887, %7884
  %8130 = fmul fast float %8107, %8129
  %8131 = fadd fast float %8130, %8110
  %8132 = fadd fast float %7888, %7885
  %8133 = fmul fast float %8108, %8132
  %8134 = fadd fast float %8133, %8111
  %8135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8136 = extractvalue %dx.types.CBufRet.f32 %8135, 0
  br i1 %204, label %8137, label %8161

; <label>:8137                                    ; preds = %8127
  %8138 = fadd fast float %8131, %8134
  %8139 = fmul fast float %8136, %8138
  %8140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8141 = extractvalue %dx.types.CBufRet.f32 %8140, 3
  %8142 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %8143 = fsub fast float %6449, %6440
  %8144 = fsub fast float %8143, %6443
  %8145 = fadd fast float %8144, %6450
  %8146 = fsub fast float %8145, %8142
  %8147 = extractvalue %dx.types.CBufRet.f32 %6444, 2
  %8148 = fmul fast float %8146, %8147
  %8149 = call float @dx.op.unary.f32(i32 7, float %8148)  ; Saturate(value)
  %8150 = fsub fast float %8149, %8141
  %8151 = fmul fast float %8150, %8128
  %8152 = fadd fast float %8151, %8141
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %8155 = fsub fast float %8152, %8154
  %8156 = fmul fast float %8155, 1.000000e+01
  %8157 = call float @dx.op.unary.f32(i32 7, float %8156)  ; Saturate(value)
  %8158 = fmul fast float %8157, %6436
  %8159 = fadd fast float %8158, %6437
  %8160 = fmul fast float %8159, %8152
  br label %8184

; <label>:8161                                    ; preds = %8127
  %8162 = fadd fast float %7889, %7886
  %8163 = fmul fast float %8109, %8162
  %8164 = fadd fast float %8163, %8112
  %8165 = fmul fast float %8136, %8131
  %8166 = fmul fast float %8136, %8134
  %8167 = fmul fast float %8136, %8164
  %8168 = call float @dx.op.binary.f32(i32 35, float %8165, float %8166)  ; FMax(a,b)
  %8169 = call float @dx.op.binary.f32(i32 35, float %8168, float %8167)  ; FMax(a,b)
  %8170 = call float @dx.op.binary.f32(i32 35, float %8169, float %6437)  ; FMax(a,b)
  %8171 = fcmp fast ugt float %8170, 0x3F10000000000000
  br i1 %8171, label %8173, label %8172

; <label>:8172                                    ; preds = %8161
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8173

; <label>:8173                                    ; preds = %8172, %8161
  %8174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %8175 = extractvalue %dx.types.ResRet.i32 %8174, 0
  %8176 = and i32 %8175, 32
  %8177 = icmp eq i32 %8176, 0
  br i1 %8177, label %8184, label %8178

; <label>:8178                                    ; preds = %8173
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 0
  %8181 = fmul fast float %8180, 0x3FE99999A0000000
  %8182 = fadd fast float %8180, %8165
  %8183 = fadd fast float %8181, %8167
  br label %8184

; <label>:8184                                    ; preds = %8178, %8173, %8137
  %8185 = phi float [ %8139, %8137 ], [ %8182, %8178 ], [ %8165, %8173 ]
  %8186 = phi float [ %8160, %8137 ], [ %8166, %8178 ], [ %8166, %8173 ]
  %8187 = phi float [ %8159, %8137 ], [ %8183, %8178 ], [ %8167, %8173 ]
  %8188 = phi float [ %8159, %8137 ], [ %6437, %8178 ], [ %6437, %8173 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8189 = call float @dx.op.binary.f32(i32 36, float %8185, float 3.225500e+04)  ; FMin(a,b)
  %8190 = call float @dx.op.binary.f32(i32 36, float %8186, float 3.225500e+04)  ; FMin(a,b)
  %8191 = call float @dx.op.binary.f32(i32 36, float %8187, float 3.225500e+04)  ; FMin(a,b)
  %8192 = call float @dx.op.binary.f32(i32 36, float %8188, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8189)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8190)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8191)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8192)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

