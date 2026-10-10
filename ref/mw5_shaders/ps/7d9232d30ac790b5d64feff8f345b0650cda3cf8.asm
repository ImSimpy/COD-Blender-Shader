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
; shader hash: adcd47d9985d82a5604c25f585d55187
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
;   [208 x i8] (type annotation not present)
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
;                                   texture     f32          2d     T14             t2     1
;                                   texture     f32          2d     T15     t58,space2     1
;                                   texture     f32          2d     T16     t59,space2     1
;                                   texture     f32          2d     T17     t60,space2     1
;                                   texture    byte         r/o     T18     t45,space1     1
;                                   texture    byte         r/o     T19     t46,space1     1
;                                   texture    byte         r/o     T20     t47,space1     1
;                                   texture    byte         r/o     T21     t48,space1     1
;                                   texture     f32          2d     T22     t57,space2     1
;                                   texture    byte         r/o     T23     t69,space1     1
;                                   texture     u32          2d     T24     t56,space2     1
;                                   texture     f32     2darray     T25     t35,space2     1
;                                   texture     f32          2d     T26     t34,space2     1
;                                   texture     f32          3d     T27     t31,space2     1
;                                   texture    byte         r/o     T28     t10,space1     1
;                                   texture    byte         r/o     T29      t1,space1     1
;                                   texture     f32          1d     T30     t32,space2     1
;                                   texture     f32     2darray     T31      t8,space2     1
;                                   texture     f32          2d     T32      t2,space2     1
;                                   texture     f32          2d     T33      t3,space2     1
;                                   texture     f32          2d     T34      t4,space2     1
;                                   textureunorm_f32     2darray     T35     t80,space2     1
;                                   texture    byte         r/o     T36     t67,space1     1
;                                   texture     f32          2d     T37      t7,space2     1
;                                   texture     f32          2d     T38      t6,space2     1
;                                   texture     f32          2d     T39      t5,space2     1
;                                   texture     f32          2d     T40     t38,space2     1
;                                   texture    byte         r/o     T41     t12,space1     1
;                                   texture    byte         r/o     T42     t13,space1     1
;                                   texture     f32          1d     T43     t30,space2     1
;                                   texture     f32          3d     T44     t44,space2     1
;                                   texture     f32          3d     T45     t45,space2     1
;                                   texture     f32     2darray     T46     t47,space2     1
;                                   textureunorm_f32     2darray     T47     t85,space2     1
;                                   texture     f32          2d     T48     t83,space2     1
;                                   texture     f32          2d     T49     t86,space2     1
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = alloca [4 x i32], align 4
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = icmp ne i32 %57, 0
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = alloca [12 x float], align 4
  %85 = alloca [12 x float], align 4
  %86 = alloca [4 x float], align 4
  %87 = alloca [4 x float], align 4
  %88 = alloca [4 x float], align 4
  %89 = alloca [3 x float], align 4
  %90 = alloca [3 x float], align 4
  %91 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %92 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = fmul fast float %94, %80
  %96 = fmul fast float %94, %81
  %97 = select i1 %58, float 1.000000e+00, float -1.000000e+00
  %98 = fmul fast float %75, %97
  %99 = fmul fast float %76, %97
  %100 = fmul fast float %77, %97
  %101 = fmul fast float %76, %73
  %102 = fmul fast float %77, %72
  %103 = fsub fast float %101, %102
  %104 = fmul fast float %77, %71
  %105 = fmul fast float %75, %73
  %106 = fsub fast float %104, %105
  %107 = fmul fast float %75, %72
  %108 = fmul fast float %76, %71
  %109 = fsub fast float %107, %108
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %111, 2.000000e+00
  %114 = fmul fast float %113, %95
  %115 = fmul fast float %112, 2.000000e+00
  %116 = fmul fast float %115, %96
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %137, %123
  %139 = fadd fast float %131, %135
  %140 = fadd fast float %139, %124
  %141 = fadd fast float %132, %136
  %142 = fadd fast float %141, %125
  %143 = fmul fast float %138, %83
  %144 = fmul fast float %140, %83
  %145 = fmul fast float %142, %83
  %146 = fmul fast float %95, 5.000000e-01
  %147 = fmul fast float %96, 5.000000e-01
  %148 = fptosi float %146 to i32
  %149 = fptosi float %147 to i32
  %150 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %148, i32 %149, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = lshr i32 %151, 18
  %153 = uitofp i32 %152 to float
  %154 = fmul fast float %153, 0x3F4C00EBA0000000
  %155 = call float @dx.op.unary.f32(i32 21, float %154)  ; Exp(value)
  %156 = fadd fast float %155, -1.000000e+00
  %157 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %158 = extractvalue %dx.types.Dimensions %157, 0
  %159 = sitofp i32 %158 to float
  %160 = extractvalue %dx.types.Dimensions %157, 1
  %161 = sitofp i32 %160 to float
  %162 = fcmp fast oge float %146, %159
  %163 = fcmp fast oge float %147, %161
  %164 = or i1 %162, %163
  %165 = select i1 %164, float 0x4197782600000000, float %156
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %169 = fmul fast float %167, %95
  %170 = fmul fast float %168, %96
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = and i32 %172, 114688
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %174, float %169, float 0.000000e+00
  %176 = select i1 %174, float %170, float 0.000000e+00
  %177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = fmul fast float %178, 2.550000e+02
  %180 = fptoui float %179 to i32
  %181 = select i1 %174, i32 %180, i32 0
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.i32 %183, 3
  %185 = and i32 %184, 3
  %186 = icmp ne i32 %185, 0
  %187 = and i32 %184, 4
  %188 = icmp ne i32 %187, 0
  %189 = and i1 %186, %188
  br i1 %189, label %190, label %201

; <label>:190                                     ; preds = %0
  %191 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %192 = fmul fast float %191, %96
  %193 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %194 = fmul fast float %193, %95
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %51, float %194, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = fsub fast float 1.000000e+00, %196
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 0
  %200 = fcmp fast olt float %197, %199
  br label %204

; <label>:201                                     ; preds = %0
  %202 = icmp eq i32 %187, 0
  %203 = and i1 %186, %202
  br label %204

; <label>:204                                     ; preds = %201, %190
  %205 = phi i1 [ %200, %190 ], [ %203, %201 ]
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 2
  %208 = fmul fast float %207, 0x3FE3C6EF40000000
  %209 = frem fast float %95, 2.560000e+02
  %210 = frem fast float %96, 2.560000e+02
  %211 = fptoui float %209 to i32
  %212 = fptoui float %210 to i32
  %213 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = extractvalue %dx.types.ResRet.f32 %213, 1
  %216 = fadd fast float %214, %208
  %217 = fadd fast float %215, %208
  %218 = call float @dx.op.unary.f32(i32 22, float %216)  ; Frc(value)
  %219 = call float @dx.op.unary.f32(i32 22, float %217)  ; Frc(value)
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = shl i32 %221, 4
  %223 = and i32 %222, 32752
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = lshr i32 %221, 7
  %226 = and i32 %225, 32752
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %221, 22
  %229 = shl nuw nsw i32 %228, 5
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %232, 8
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %232, 16
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = fmul fast float %253, 0x3F50624DE0000000
  %257 = fmul fast float %255, 0x3F50624DE0000000
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 2
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %269, label %262

; <label>:262                                     ; preds = %204
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = add i32 %264, 0
  %266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %266, %dx.types.Handle %92, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 3
  br label %269

; <label>:269                                     ; preds = %262, %204
  %270 = phi float [ 1.000000e+00, %204 ], [ %268, %262 ]
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = or i32 %274, %272
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %890, label %277

; <label>:277                                     ; preds = %269
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = lshr i32 %279, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = fmul fast float %281, 0x3F50624DE0000000
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = lshr i32 %284, 16
  %286 = and i32 %285, 255
  %287 = lshr i32 %284, 24
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %289, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = lshr i32 %295, 22
  %297 = shl nuw nsw i32 %296, 5
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = shl i32 %295, 4
  %300 = and i32 %299, 32752
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %295, 7
  %303 = and i32 %302, 32752
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 3
  %307 = fmul fast float %306, 1.000000e+03
  %308 = fmul fast float %256, %307
  %309 = call float @dx.op.unary.f32(i32 22, float %308)  ; Frc(value)
  %310 = fadd fast float %309, %247
  %311 = fmul fast float %257, %307
  %312 = call float @dx.op.unary.f32(i32 22, float %311)  ; Frc(value)
  %313 = fadd fast float %312, %249
  %314 = fmul fast float %282, %307
  %315 = call float @dx.op.unary.f32(i32 22, float %314)  ; Frc(value)
  %316 = fmul fast float %315, 0x401921FB60000000
  %317 = fadd fast float %316, %298
  %318 = call float @dx.op.unary.f32(i32 13, float %317)  ; Sin(value)
  %319 = call float @dx.op.unary.f32(i32 12, float %317)  ; Cos(value)
  %320 = fsub fast float -0.000000e+00, %318
  %321 = fadd fast float %78, -5.000000e-01
  %322 = fadd fast float %79, -5.000000e-01
  %323 = fmul fast float %291, %321
  %324 = fmul fast float %293, %322
  %325 = fadd fast float %323, 5.000000e-01
  %326 = fadd fast float %324, 5.000000e-01
  %327 = fmul fast float %301, %325
  %328 = fmul fast float %304, %326
  %329 = fmul fast float %319, %327
  %330 = call float @dx.op.tertiary.f32(i32 46, float %320, float %328, float %329)  ; FMad(a,b,c)
  %331 = fmul fast float %318, %327
  %332 = call float @dx.op.tertiary.f32(i32 46, float %319, float %328, float %331)  ; FMad(a,b,c)
  %333 = fadd fast float %310, %330
  %334 = fadd fast float %313, %332
  %335 = icmp ugt i32 %286, 1
  %336 = icmp ugt i32 %284, 33554431
  %337 = or i1 %336, %335
  br i1 %337, label %338, label %362

; <label>:338                                     ; preds = %277
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = lshr i32 %340, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %306, %342
  %344 = call float @dx.op.unary.f32(i32 22, float %343)  ; Frc(value)
  %345 = mul nuw nsw i32 %286, %287
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %344, %346
  %348 = call float @dx.op.unary.f32(i32 27, float %347)  ; Round_ni(value)
  %349 = fptoui float %348 to i32
  %350 = urem i32 %349, %286
  %351 = udiv i32 %349, %287
  %352 = call float @dx.op.unary.f32(i32 22, float %333)  ; Frc(value)
  %353 = call float @dx.op.unary.f32(i32 22, float %334)  ; Frc(value)
  %354 = uitofp i32 %350 to float
  %355 = uitofp i32 %351 to float
  %356 = fadd fast float %352, %354
  %357 = fadd fast float %353, %355
  %358 = uitofp i32 %286 to float
  %359 = uitofp i32 %287 to float
  %360 = fdiv fast float %356, %358
  %361 = fdiv fast float %357, %359
  br label %362

; <label>:362                                     ; preds = %338, %277
  %363 = phi float [ %360, %338 ], [ %333, %277 ]
  %364 = phi float [ %361, %338 ], [ %334, %277 ]
  %365 = and i32 %272, 256
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %411, label %367

; <label>:367                                     ; preds = %362
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = add i32 %369, 0
  %371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %371, %dx.types.Handle %92, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = shl i32 %375, 4
  %377 = and i32 %376, 32752
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %375, 7
  %380 = and i32 %379, 32752
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = fsub fast float 1.000000e+00, %270
  %383 = call float @dx.op.binary.f32(i32 35, float %382, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %384 = bitcast float %270 to i32
  %385 = sitofp i32 %384 to float
  %386 = fadd fast float %385, 0xC1CFBF8940000000
  %387 = fmul fast float %381, %386
  %388 = fadd fast float %387, 0x41CFBF8940000000
  %389 = fptosi float %388 to i32
  %390 = bitcast i32 %389 to float
  %391 = bitcast float %383 to i32
  %392 = sitofp i32 %391 to float
  %393 = fadd fast float %392, 0xC1CFBF8940000000
  %394 = fmul fast float %393, %381
  %395 = fadd fast float %394, 0x41CFBF8940000000
  %396 = fptosi float %395 to i32
  %397 = bitcast i32 %396 to float
  %398 = fmul fast float %390, %378
  %399 = fmul fast float %397, %378
  %400 = fsub fast float %383, %398
  %401 = fadd fast float %399, %383
  %402 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %403 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %404 = fsub fast float %373, %402
  %405 = fsub fast float %403, %402
  %406 = bitcast float %405 to i32
  %407 = sub nsw i32 2129859010, %406
  %408 = bitcast i32 %407 to float
  %409 = fmul fast float %408, %404
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  br label %411

; <label>:411                                     ; preds = %367, %362
  %412 = phi float [ %410, %367 ], [ %270, %362 ]
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 128
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %432, label %417

; <label>:417                                     ; preds = %411
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = add i32 %419, 0
  %421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %421, %dx.types.Handle %92, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %423 = extractvalue %dx.types.ResRet.f32 %422, 0
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 524288
  %427 = icmp ne i32 %426, 0
  %428 = fcmp fast ogt float %423, 0x3FE0101020000000
  %429 = select i1 %428, float 1.000000e+00, float 0.000000e+00
  %430 = select i1 %427, float %429, float %423
  %431 = fmul fast float %430, %412
  br label %432

; <label>:432                                     ; preds = %417, %411
  %433 = phi float [ %431, %417 ], [ %412, %411 ]
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 16
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %631, label %438

; <label>:438                                     ; preds = %432
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = add i32 %442, 0
  %444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %444, %dx.types.Handle %91, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = extractvalue %dx.types.ResRet.f32 %445, 3
  %450 = and i32 %440, 255
  %451 = uitofp i32 %450 to float
  %452 = lshr i32 %440, 8
  %453 = and i32 %452, 255
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %449, %451
  %456 = fadd fast float %455, %454
  %457 = fmul fast float %456, 0x3F70101000000000
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 512
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %469, label %462

; <label>:462                                     ; preds = %438
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = add i32 %464, 0
  %466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %465, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %466, %dx.types.Handle %92, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 0
  br label %469

; <label>:469                                     ; preds = %462, %438
  %470 = phi float [ %468, %462 ], [ 1.000000e+00, %438 ]
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 33554432
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %578, label %475

; <label>:475                                     ; preds = %469
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 65535
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = lshr i32 %477, 16
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 65535
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = lshr i32 %487, 24
  %489 = uitofp i32 %488 to float
  %490 = fmul fast float %489, 0x3F70101020000000
  %491 = and i32 %487, 255
  %492 = uitofp i32 %491 to float
  %493 = fmul fast float %492, 0x3F70101020000000
  %494 = lshr i32 %487, 8
  %495 = and i32 %494, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %496, 0x3F70101020000000
  %498 = lshr i32 %487, 16
  %499 = and i32 %498, 255
  %500 = uitofp i32 %499 to float
  %501 = fmul fast float %500, 0x3F70101020000000
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = lshr i32 %503, 24
  %505 = uitofp i32 %504 to float
  %506 = fmul fast float %505, 0x3F70101020000000
  %507 = and i32 %503, 255
  %508 = uitofp i32 %507 to float
  %509 = fmul fast float %508, 0x3F70101020000000
  %510 = lshr i32 %503, 8
  %511 = and i32 %510, 255
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %512, 0x3F70101020000000
  %514 = lshr i32 %503, 16
  %515 = and i32 %514, 255
  %516 = uitofp i32 %515 to float
  %517 = fmul fast float %516, 0x3F70101020000000
  %518 = bitcast float %446 to i32
  %519 = ashr i32 %518, 1
  %520 = sub nsw i32 1597463174, %519
  %521 = bitcast i32 %520 to float
  %522 = fmul fast float %446, 5.000000e-01
  %523 = fmul fast float %521, %521
  %524 = fmul fast float %523, %522
  %525 = fsub fast float 1.500000e+00, %524
  %526 = fmul fast float %521, %446
  %527 = fmul fast float %526, %525
  %528 = bitcast float %447 to i32
  %529 = ashr i32 %528, 1
  %530 = sub nsw i32 1597463174, %529
  %531 = bitcast i32 %530 to float
  %532 = fmul fast float %447, 5.000000e-01
  %533 = fmul fast float %531, %531
  %534 = fmul fast float %533, %532
  %535 = fsub fast float 1.500000e+00, %534
  %536 = fmul fast float %531, %447
  %537 = fmul fast float %536, %535
  %538 = bitcast float %448 to i32
  %539 = ashr i32 %538, 1
  %540 = sub nsw i32 1597463174, %539
  %541 = bitcast i32 %540 to float
  %542 = fmul fast float %448, 5.000000e-01
  %543 = fmul fast float %541, %541
  %544 = fmul fast float %543, %542
  %545 = fsub fast float 1.500000e+00, %544
  %546 = fmul fast float %541, %448
  %547 = fmul fast float %546, %545
  %548 = fsub fast float %527, %509
  %549 = fsub fast float %537, %513
  %550 = fsub fast float %547, %517
  %551 = fmul fast float %548, %479
  %552 = fmul fast float %549, %481
  %553 = fmul fast float %550, %485
  %554 = fadd fast float %551, %493
  %555 = fadd fast float %552, %497
  %556 = fadd fast float %553, %501
  %557 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %558 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  %559 = call float @dx.op.unary.f32(i32 7, float %556)  ; Saturate(value)
  %560 = fmul fast float %557, %557
  %561 = fmul fast float %558, %558
  %562 = fmul fast float %559, %559
  %563 = fsub fast float %560, %446
  %564 = fsub fast float %561, %447
  %565 = fsub fast float %562, %448
  %566 = fmul fast float %563, %470
  %567 = fmul fast float %564, %470
  %568 = fmul fast float %565, %470
  %569 = fadd fast float %566, %446
  %570 = fadd fast float %567, %447
  %571 = fadd fast float %568, %448
  %572 = fadd fast float %490, %457
  %573 = fsub fast float %572, %506
  %574 = call float @dx.op.unary.f32(i32 7, float %573)  ; Saturate(value)
  %575 = fsub fast float %574, %457
  %576 = fmul fast float %575, %470
  %577 = fadd fast float %576, %457
  br label %631

; <label>:578                                     ; preds = %469
  %579 = and i32 %472, 134217728
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %615, label %581

; <label>:581                                     ; preds = %578
  %582 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %583 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %584 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %585 = fadd fast float %582, -5.000000e-01
  %586 = fadd fast float %583, -5.000000e-01
  %587 = fadd fast float %584, -5.000000e-01
  %588 = fmul fast float %585, %470
  %589 = fmul fast float %586, %470
  %590 = fmul fast float %587, %470
  %591 = fadd fast float %588, 5.000000e-01
  %592 = fadd fast float %589, 5.000000e-01
  %593 = fadd fast float %590, 5.000000e-01
  %594 = call float @dx.op.unary.f32(i32 24, float %446)  ; Sqrt(value)
  %595 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %596 = call float @dx.op.unary.f32(i32 24, float %448)  ; Sqrt(value)
  %597 = fmul fast float %591, 2.000000e+00
  %598 = fsub fast float 1.000000e+00, %597
  %599 = fmul fast float %598, %594
  %600 = fadd fast float %599, %597
  %601 = fmul fast float %600, %594
  %602 = fmul fast float %592, 2.000000e+00
  %603 = fsub fast float 1.000000e+00, %602
  %604 = fmul fast float %603, %595
  %605 = fadd fast float %604, %602
  %606 = fmul fast float %605, %595
  %607 = fmul fast float %593, 2.000000e+00
  %608 = fsub fast float 1.000000e+00, %607
  %609 = fmul fast float %608, %596
  %610 = fadd fast float %609, %607
  %611 = fmul fast float %610, %596
  %612 = fmul fast float %601, %601
  %613 = fmul fast float %606, %606
  %614 = fmul fast float %611, %611
  br label %631

; <label>:615                                     ; preds = %578
  %616 = fmul fast float %235, %235
  %617 = fmul fast float %239, %239
  %618 = fmul fast float %243, %243
  %619 = fadd fast float %616, -1.000000e+00
  %620 = fadd fast float %617, -1.000000e+00
  %621 = fadd fast float %618, -1.000000e+00
  %622 = fmul fast float %470, %619
  %623 = fmul fast float %470, %620
  %624 = fmul fast float %470, %621
  %625 = fadd fast float %622, 1.000000e+00
  %626 = fadd fast float %623, 1.000000e+00
  %627 = fadd fast float %624, 1.000000e+00
  %628 = fmul fast float %625, %446
  %629 = fmul fast float %626, %447
  %630 = fmul fast float %627, %448
  br label %631

; <label>:631                                     ; preds = %615, %581, %475, %432
  %632 = phi float [ %577, %475 ], [ %457, %581 ], [ %457, %615 ], [ 0x3FA23C0BE0000000, %432 ]
  %633 = phi float [ %569, %475 ], [ %612, %581 ], [ %628, %615 ], [ 1.000000e+00, %432 ]
  %634 = phi float [ %570, %475 ], [ %613, %581 ], [ %629, %615 ], [ 1.000000e+00, %432 ]
  %635 = phi float [ %571, %475 ], [ %614, %581 ], [ %630, %615 ], [ 1.000000e+00, %432 ]
  %636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.i32 %636, 1
  %638 = and i32 %637, 1
  %639 = icmp ne i32 %638, 0
  %640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.i32 %640, 0
  %642 = and i32 %641, 32
  %643 = icmp ne i32 %642, 0
  %644 = and i1 %639, %643
  %645 = select i1 %644, float 1.000000e+00, float %633
  %646 = select i1 %644, float 0x3FD3333340000000, float %634
  %647 = select i1 %644, float 0x3FD3333340000000, float %635
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 32
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %721, label %652

; <label>:652                                     ; preds = %631
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = add i32 %656, 0
  %658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %658, %dx.types.Handle %91, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = extractvalue %dx.types.ResRet.f32 %659, 1
  %662 = extractvalue %dx.types.ResRet.f32 %659, 2
  %663 = extractvalue %dx.types.ResRet.f32 %659, 3
  %664 = and i32 %654, 255
  %665 = uitofp i32 %664 to float
  %666 = lshr i32 %654, 8
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = lshr i32 %654, 16
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101000000000
  %673 = fmul fast float %660, %665
  %674 = fadd fast float %673, %668
  %675 = fmul fast float %674, 0x3F70101000000000
  %676 = fadd fast float %661, -5.000000e-01
  %677 = fadd fast float %663, -5.000000e-01
  %678 = fmul fast float %676, %672
  %679 = fmul fast float %677, %672
  %680 = fadd fast float %678, 5.000000e-01
  %681 = fadd fast float %679, 5.000000e-01
  %682 = fmul fast float %680, 2.000000e+00
  %683 = fadd fast float %682, -1.000000e+00
  %684 = fmul fast float %681, 2.000000e+00
  %685 = fadd fast float %684, -1.000000e+00
  %686 = fadd fast float %683, %685
  %687 = fmul fast float %686, 5.000000e-01
  %688 = fsub fast float %683, %685
  %689 = fmul fast float %688, 5.000000e-01
  %690 = call float @dx.op.unary.f32(i32 6, float %687)  ; FAbs(value)
  %691 = fsub fast float 1.000000e+00, %690
  %692 = call float @dx.op.unary.f32(i32 6, float %689)  ; FAbs(value)
  %693 = fsub fast float %691, %692
  %694 = call float @dx.op.dot3.f32(i32 55, float %687, float %689, float %693, float %687, float %689, float %693)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.unary.f32(i32 25, float %694)  ; Rsqrt(value)
  %696 = fmul fast float %687, %695
  %697 = fmul fast float %689, %695
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 67108864
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %717, label %702

; <label>:702                                     ; preds = %652
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 65535
  %706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %705)  ; LegacyF16ToF32(value)
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = and i32 %708, 65535
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = lshr i32 %704, 16
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = fsub fast float %675, %712
  %714 = fmul fast float %713, %706
  %715 = fadd fast float %714, %710
  %716 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  br label %717

; <label>:717                                     ; preds = %702, %652
  %718 = phi float [ %716, %702 ], [ %675, %652 ]
  %719 = call float @dx.op.dot2.f32(i32 54, float %696, float %697, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %720 = call float @dx.op.dot2.f32(i32 54, float %696, float %697, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %721

; <label>:721                                     ; preds = %717, %631
  %722 = phi float [ %718, %717 ], [ 0x3FD6666660000000, %631 ]
  %723 = phi float [ %719, %717 ], [ 0.000000e+00, %631 ]
  %724 = phi float [ %720, %717 ], [ 0.000000e+00, %631 ]
  %725 = phi float [ %662, %717 ], [ 1.000000e+00, %631 ]
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 22
  %729 = shl nuw nsw i32 %728, 5
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 64
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %767, label %735

; <label>:735                                     ; preds = %721
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %737, 0
  %739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 131072
  %743 = icmp eq i32 %742, 0
  %744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %739, %dx.types.Handle %91, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = extractvalue %dx.types.ResRet.f32 %744, 1
  %747 = extractvalue %dx.types.ResRet.f32 %744, 2
  %748 = fmul fast float %745, %224
  %749 = fmul fast float %746, %227
  %750 = fmul fast float %747, %230
  br i1 %743, label %757, label %751

; <label>:751                                     ; preds = %735
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = fmul fast float %753, %748
  %755 = fmul fast float %753, %749
  %756 = fmul fast float %753, %750
  br label %757

; <label>:757                                     ; preds = %751, %735
  %758 = phi float [ %754, %751 ], [ %748, %735 ]
  %759 = phi float [ %755, %751 ], [ %749, %735 ]
  %760 = phi float [ %756, %751 ], [ %750, %735 ]
  %761 = fmul fast float %758, %730
  %762 = select i1 %205, float %761, float %758
  %763 = call float @dx.op.dot3.f32(i32 55, float %762, float %759, float %760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = select i1 %205, float 0.000000e+00, float %758
  %765 = select i1 %205, float %763, float %759
  %766 = select i1 %205, float 0.000000e+00, float %760
  br label %767

; <label>:767                                     ; preds = %757, %721
  %768 = phi float [ %764, %757 ], [ 0.000000e+00, %721 ]
  %769 = phi float [ %765, %757 ], [ 0.000000e+00, %721 ]
  %770 = phi float [ %766, %757 ], [ 0.000000e+00, %721 ]
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 1024
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %803, label %775

; <label>:775                                     ; preds = %767
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101020000000
  %781 = lshr i32 %777, 8
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101020000000
  %785 = lshr i32 %777, 16
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = fmul fast float %787, 0x3F70101020000000
  %789 = fmul fast float %780, %780
  %790 = fmul fast float %784, %784
  %791 = fmul fast float %788, %788
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = add i32 %793, 0
  %795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %795, %dx.types.Handle %92, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = fmul fast float %789, %797
  %801 = fmul fast float %790, %798
  %802 = fmul fast float %791, %799
  br label %803

; <label>:803                                     ; preds = %775, %767
  %804 = phi float [ %800, %775 ], [ 0.000000e+00, %767 ]
  %805 = phi float [ %801, %775 ], [ 0.000000e+00, %767 ]
  %806 = phi float [ %802, %775 ], [ 0.000000e+00, %767 ]
  %807 = fcmp fast ogt float %804, 0.000000e+00
  %808 = fcmp fast ogt float %805, 0.000000e+00
  %809 = fcmp fast ogt float %806, 0.000000e+00
  %810 = call float @dx.op.unary.f32(i32 23, float %804)  ; Log(value)
  %811 = call float @dx.op.unary.f32(i32 23, float %805)  ; Log(value)
  %812 = call float @dx.op.unary.f32(i32 23, float %806)  ; Log(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = lshr i32 %814, 7
  %816 = and i32 %815, 32752
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = fmul fast float %810, 0xBFE62E4300000000
  %819 = fmul fast float %818, %817
  %820 = fmul fast float %811, 0xBFE62E4300000000
  %821 = fmul fast float %820, %817
  %822 = fmul fast float %812, 0xBFE62E4300000000
  %823 = fmul fast float %822, %817
  %824 = select i1 %807, float %819, float 1.270000e+02
  %825 = select i1 %808, float %821, float 1.270000e+02
  %826 = select i1 %809, float %823, float 1.270000e+02
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 10240
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %873, label %831

; <label>:831                                     ; preds = %803
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = add i32 %833, 0
  %835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %835, %dx.types.Handle %92, float %363, float %364, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 1
  %838 = extractvalue %dx.types.ResRet.f32 %836, 3
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 1048576
  %842 = icmp ne i32 %841, 0
  %843 = and i32 %840, 8192
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %859, label %845

; <label>:845                                     ; preds = %831
  %846 = extractvalue %dx.types.ResRet.f32 %836, 2
  %847 = select i1 %842, float %846, float %837
  %848 = extractvalue %dx.types.ResRet.f32 %836, 0
  %849 = select i1 %842, float %848, float %837
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = lshr i32 %851, 16
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F80101020000000
  %856 = fmul fast float %855, %849
  %857 = fmul fast float %855, %837
  %858 = fmul fast float %855, %847
  br label %859

; <label>:859                                     ; preds = %845, %831
  %860 = phi float [ %856, %845 ], [ 0.000000e+00, %831 ]
  %861 = phi float [ %857, %845 ], [ 0.000000e+00, %831 ]
  %862 = phi float [ %858, %845 ], [ 0.000000e+00, %831 ]
  %863 = and i32 %840, 2048
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %873, label %865

; <label>:865                                     ; preds = %859
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = shl i32 %867, 4
  %869 = and i32 %868, 32752
  %870 = call float @dx.op.legacyF16ToF32(i32 131, i32 %869)  ; LegacyF16ToF32(value)
  %871 = fmul fast float %870, %838
  %872 = call float @dx.op.binary.f32(i32 35, float %871, float 0x3F70101020000000)  ; FMax(a,b)
  br label %873

; <label>:873                                     ; preds = %865, %859, %803
  %874 = phi float [ %860, %865 ], [ %860, %859 ], [ 0.000000e+00, %803 ]
  %875 = phi float [ %861, %865 ], [ %861, %859 ], [ 0.000000e+00, %803 ]
  %876 = phi float [ %862, %865 ], [ %862, %859 ], [ 0.000000e+00, %803 ]
  %877 = phi float [ %872, %865 ], [ 0x3F70101020000000, %859 ], [ 0x3F70101020000000, %803 ]
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = lshr i32 %879, 8
  %883 = and i32 %882, 255
  %884 = uitofp i32 %883 to float
  %885 = call float @dx.op.dot3.f32(i32 55, float %645, float %646, float %647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %886 = fmul fast float %884, %885
  %887 = fadd fast float %886, %881
  %888 = fmul fast float %887, 0x3F70101020000000
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  br label %890

; <label>:890                                     ; preds = %873, %269
  %891 = phi float [ 0.000000e+00, %269 ], [ %723, %873 ]
  %892 = phi float [ 0.000000e+00, %269 ], [ %724, %873 ]
  %893 = phi float [ 0.000000e+00, %269 ], [ %645, %873 ]
  %894 = phi float [ 0.000000e+00, %269 ], [ %646, %873 ]
  %895 = phi float [ 0.000000e+00, %269 ], [ %647, %873 ]
  %896 = phi float [ 0.000000e+00, %269 ], [ %768, %873 ]
  %897 = phi float [ 0.000000e+00, %269 ], [ %769, %873 ]
  %898 = phi float [ 0.000000e+00, %269 ], [ %770, %873 ]
  %899 = phi float [ 0.000000e+00, %269 ], [ %874, %873 ]
  %900 = phi float [ 0.000000e+00, %269 ], [ %875, %873 ]
  %901 = phi float [ 0.000000e+00, %269 ], [ %876, %873 ]
  %902 = phi float [ 0.000000e+00, %269 ], [ %824, %873 ]
  %903 = phi float [ 0.000000e+00, %269 ], [ %825, %873 ]
  %904 = phi float [ 0.000000e+00, %269 ], [ %826, %873 ]
  %905 = phi float [ 0.000000e+00, %269 ], [ %632, %873 ]
  %906 = phi float [ 0.000000e+00, %269 ], [ %433, %873 ]
  %907 = phi float [ 0.000000e+00, %269 ], [ %722, %873 ]
  %908 = phi float [ 0.000000e+00, %269 ], [ %725, %873 ]
  %909 = phi float [ 0.000000e+00, %269 ], [ %877, %873 ]
  %910 = phi float [ 0.000000e+00, %269 ], [ %889, %873 ]
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = call float @dx.op.dot2.f32(i32 54, float %891, float %892, float %891, float %892)  ; Dot2(ax,ay,bx,by)
  %914 = fmul fast float %913, 0x3FE3333340000000
  %915 = fsub fast float 1.000000e+00, %914
  %916 = call float @dx.op.dot3.f32(i32 55, float %891, float %892, float %915, float %891, float %892, float %915)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = call float @dx.op.unary.f32(i32 25, float %916)  ; Rsqrt(value)
  %918 = fmul fast float %917, %891
  %919 = fmul fast float %917, %892
  %920 = fmul fast float %915, %917
  %921 = fmul fast float %920, %98
  %922 = fmul fast float %920, %99
  %923 = fmul fast float %920, %100
  %924 = fmul fast float %918, %71
  %925 = fmul fast float %918, %72
  %926 = fmul fast float %918, %73
  %927 = fmul fast float %103, %74
  %928 = fmul fast float %927, %919
  %929 = fmul fast float %106, %74
  %930 = fmul fast float %929, %919
  %931 = fmul fast float %109, %74
  %932 = fmul fast float %931, %919
  %933 = fadd fast float %928, %924
  %934 = fmul fast float %933, %97
  %935 = fadd fast float %934, %921
  %936 = fadd fast float %930, %925
  %937 = fmul fast float %936, %97
  %938 = fadd fast float %937, %922
  %939 = fadd fast float %932, %926
  %940 = fmul fast float %939, %97
  %941 = fadd fast float %940, %923
  %942 = call float @dx.op.dot3.f32(i32 55, float %935, float %938, float %941, float %935, float %938, float %941)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = call float @dx.op.unary.f32(i32 25, float %942)  ; Rsqrt(value)
  %944 = fmul fast float %935, %943
  %945 = fmul fast float %938, %943
  %946 = fmul fast float %941, %943
  %947 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %948 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %949 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %950 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %951 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %952 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %953 = fadd fast float %947, %143
  %954 = fadd fast float %948, %144
  %955 = fadd fast float %949, %145
  %956 = fadd fast float %950, %143
  %957 = fadd fast float %951, %144
  %958 = fadd fast float %952, %145
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 2
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 3
  %966 = fmul fast float %960, %95
  %967 = fmul fast float %966, %964
  %968 = fmul fast float %961, %96
  %969 = fmul fast float %968, %965
  %970 = fptoui float %967 to i32
  %971 = fptoui float %969 to i32
  %972 = fadd fast float %960, -1.000000e+00
  %973 = fadd fast float %961, -1.000000e+00
  %974 = fptoui float %972 to i32
  %975 = fptoui float %973 to i32
  %976 = call i32 @dx.op.binary.i32(i32 40, i32 %970, i32 %974)  ; UMin(a,b)
  %977 = call i32 @dx.op.binary.i32(i32 40, i32 %971, i32 %975)  ; UMin(a,b)
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %981 = fmul fast float %979, %83
  %982 = fsub fast float %981, %980
  %983 = fadd fast float %962, -1.000000e+00
  %984 = call float @dx.op.binary.f32(i32 36, float %982, float %983)  ; FMin(a,b)
  %985 = fptoui float %984 to i32
  %986 = fptoui float %960 to i32
  %987 = fptoui float %961 to i32
  %988 = mul i32 %985, %987
  %989 = add i32 %988, %977
  %990 = mul i32 %989, %986
  %991 = add i32 %990, %976
  %992 = shl i32 %991, 2
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = and i32 %994, 1023
  %996 = lshr i32 %994, 10
  %997 = icmp eq i32 %995, 0
  br i1 %997, label %1501, label %998

; <label>:998                                     ; preds = %890
  %999 = and i32 %994, 1023
  br label %1000

; <label>:1000                                    ; preds = %1132, %998
  %1001 = phi float [ %1133, %1132 ], [ 0.000000e+00, %998 ]
  %1002 = phi float [ %1134, %1132 ], [ %912, %998 ]
  %1003 = phi float [ %1135, %1132 ], [ %910, %998 ]
  %1004 = phi float [ %1136, %1132 ], [ %902, %998 ]
  %1005 = phi float [ %1137, %1132 ], [ %903, %998 ]
  %1006 = phi float [ %1138, %1132 ], [ %904, %998 ]
  %1007 = phi float [ %1139, %1132 ], [ 0.000000e+00, %998 ]
  %1008 = phi float [ %1140, %1132 ], [ 0.000000e+00, %998 ]
  %1009 = phi float [ %1141, %1132 ], [ %899, %998 ]
  %1010 = phi float [ %1142, %1132 ], [ %900, %998 ]
  %1011 = phi float [ %1143, %1132 ], [ %901, %998 ]
  %1012 = phi float [ %1144, %1132 ], [ %896, %998 ]
  %1013 = phi float [ %1145, %1132 ], [ %897, %998 ]
  %1014 = phi float [ %1146, %1132 ], [ %898, %998 ]
  %1015 = phi float [ %1147, %1132 ], [ %944, %998 ]
  %1016 = phi float [ %1148, %1132 ], [ %945, %998 ]
  %1017 = phi float [ %1149, %1132 ], [ %946, %998 ]
  %1018 = phi float [ %1150, %1132 ], [ %908, %998 ]
  %1019 = phi float [ %1151, %1132 ], [ %907, %998 ]
  %1020 = phi float [ %1152, %1132 ], [ 0.000000e+00, %998 ]
  %1021 = phi float [ %1153, %1132 ], [ %905, %998 ]
  %1022 = phi float [ %1154, %1132 ], [ %893, %998 ]
  %1023 = phi float [ %1155, %1132 ], [ %894, %998 ]
  %1024 = phi float [ %1156, %1132 ], [ %895, %998 ]
  %1025 = phi i32 [ %1082, %1132 ], [ 0, %998 ]
  %1026 = add nuw nsw i32 %1025, %996
  %1027 = shl i32 %1026, 2
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = shl i32 %1029, 8
  %1031 = or i32 %1030, 48
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.ResRet.f32 %1032, 3
  %1037 = or i32 %1030, 64
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = extractvalue %dx.types.ResRet.i32 %1038, 1
  %1041 = or i32 %1030, 80
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1045 = or i32 %1030, 96
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = extractvalue %dx.types.ResRet.f32 %1046, 3
  %1051 = or i32 %1030, 112
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1054 = or i32 %1030, 128
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = extractvalue %dx.types.ResRet.f32 %1055, 3
  %1060 = or i32 %1030, 144
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = extractvalue %dx.types.ResRet.f32 %1061, 3
  %1066 = or i32 %1030, 160
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.ResRet.f32 %1067, 2
  %1071 = extractvalue %dx.types.ResRet.f32 %1067, 3
  %1072 = or i32 %1030, 192
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = or i32 %1030, 208
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = or i32 %1030, 248
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = add nuw nsw i32 %1025, 1
  %1083 = bitcast float %1036 to i32
  %1084 = and i32 %1083, 512
  %1085 = icmp eq i32 %1084, 0
  %1086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = extractvalue %dx.types.ResRet.f32 %1086, 3
  %1091 = call float @dx.op.dot4.f32(i32 56, float %1087, float %1088, float %1089, float %1090, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1092 = or i32 %1030, 16
  %1093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = extractvalue %dx.types.ResRet.f32 %1093, 3
  %1098 = call float @dx.op.dot4.f32(i32 56, float %1094, float %1095, float %1096, float %1097, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1099 = or i32 %1030, 32
  %1100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.ResRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.ResRet.f32 %1100, 2
  %1104 = extractvalue %dx.types.ResRet.f32 %1100, 3
  %1105 = call float @dx.op.dot4.f32(i32 56, float %1101, float %1102, float %1103, float %1104, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1106 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1107 = call float @dx.op.unary.f32(i32 6, float %1106)  ; FAbs(value)
  %1108 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1109 = call float @dx.op.unary.f32(i32 6, float %1108)  ; FAbs(value)
  %1110 = call float @dx.op.unary.f32(i32 6, float %1105)  ; FAbs(value)
  %1111 = call float @dx.op.unary.f32(i32 27, float %1110)  ; Round_ni(value)
  %1112 = fadd fast float %1109, %1107
  %1113 = fadd fast float %1112, %1111
  %1114 = fcmp fast oeq float %1113, 0.000000e+00
  %1115 = call float @dx.op.dot4.f32(i32 56, float %1087, float %1088, float %1089, float %1090, float %953, float %954, float %955, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1116 = call float @dx.op.dot4.f32(i32 56, float %1094, float %1095, float %1096, float %1097, float %953, float %954, float %955, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1117 = call float @dx.op.dot4.f32(i32 56, float %1087, float %1088, float %1089, float %1090, float %956, float %957, float %958, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1118 = call float @dx.op.dot4.f32(i32 56, float %1094, float %1095, float %1096, float %1097, float %956, float %957, float %958, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1119 = fsub fast float %1115, %1091
  %1120 = fsub fast float %1117, %1091
  %1121 = fsub fast float %1116, %1098
  %1122 = fsub fast float %1118, %1098
  %1123 = call float @dx.op.dot3.f32(i32 55, float %1033, float %1034, float %1035, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1126 = fadd fast float %1125, %1123
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1129 = fcmp fast ogt float %1127, %1128
  %1130 = and i1 %1114, %1129
  %1131 = and i1 %1085, %1130
  br i1 %1131, label %1158, label %1132

; <label>:1132                                    ; preds = %1487, %1239, %1158, %1000
  %1133 = phi float [ %1001, %1158 ], [ %1242, %1239 ], [ %1242, %1487 ], [ %1001, %1000 ]
  %1134 = phi float [ %1002, %1158 ], [ %1002, %1239 ], [ %1463, %1487 ], [ %1002, %1000 ]
  %1135 = phi float [ %1003, %1158 ], [ %1003, %1239 ], [ %1461, %1487 ], [ %1003, %1000 ]
  %1136 = phi float [ %1004, %1158 ], [ %1004, %1239 ], [ %1439, %1487 ], [ %1004, %1000 ]
  %1137 = phi float [ %1005, %1158 ], [ %1005, %1239 ], [ %1440, %1487 ], [ %1005, %1000 ]
  %1138 = phi float [ %1006, %1158 ], [ %1006, %1239 ], [ %1441, %1487 ], [ %1006, %1000 ]
  %1139 = phi float [ %1007, %1158 ], [ %1007, %1239 ], [ %1366, %1487 ], [ %1007, %1000 ]
  %1140 = phi float [ %1008, %1158 ], [ %1008, %1239 ], [ %1364, %1487 ], [ %1008, %1000 ]
  %1141 = phi float [ %1009, %1158 ], [ %1009, %1239 ], [ %1409, %1487 ], [ %1009, %1000 ]
  %1142 = phi float [ %1010, %1158 ], [ %1010, %1239 ], [ %1410, %1487 ], [ %1010, %1000 ]
  %1143 = phi float [ %1011, %1158 ], [ %1011, %1239 ], [ %1411, %1487 ], [ %1011, %1000 ]
  %1144 = phi float [ %1012, %1158 ], [ %1012, %1239 ], [ %1497, %1487 ], [ %1012, %1000 ]
  %1145 = phi float [ %1013, %1158 ], [ %1013, %1239 ], [ %1498, %1487 ], [ %1013, %1000 ]
  %1146 = phi float [ %1014, %1158 ], [ %1014, %1239 ], [ %1499, %1487 ], [ %1014, %1000 ]
  %1147 = phi float [ %1015, %1158 ], [ %1015, %1239 ], [ %1345, %1487 ], [ %1015, %1000 ]
  %1148 = phi float [ %1016, %1158 ], [ %1016, %1239 ], [ %1346, %1487 ], [ %1016, %1000 ]
  %1149 = phi float [ %1017, %1158 ], [ %1017, %1239 ], [ %1347, %1487 ], [ %1017, %1000 ]
  %1150 = phi float [ %1018, %1158 ], [ %1018, %1239 ], [ %1419, %1487 ], [ %1018, %1000 ]
  %1151 = phi float [ %1019, %1158 ], [ %1019, %1239 ], [ %1416, %1487 ], [ %1019, %1000 ]
  %1152 = phi float [ %1020, %1158 ], [ %1020, %1239 ], [ %1413, %1487 ], [ %1020, %1000 ]
  %1153 = phi float [ %1021, %1158 ], [ %1021, %1239 ], [ %1362, %1487 ], [ %1021, %1000 ]
  %1154 = phi float [ %1022, %1158 ], [ %1022, %1239 ], [ %1357, %1487 ], [ %1022, %1000 ]
  %1155 = phi float [ %1023, %1158 ], [ %1023, %1239 ], [ %1358, %1487 ], [ %1023, %1000 ]
  %1156 = phi float [ %1024, %1158 ], [ %1024, %1239 ], [ %1359, %1487 ], [ %1024, %1000 ]
  %1157 = icmp eq i32 %1082, %999
  br i1 %1157, label %1500, label %1000

; <label>:1158                                    ; preds = %1000
  %1159 = extractvalue %dx.types.ResRet.f32 %1052, 3
  %1160 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1164 = extractvalue %dx.types.ResRet.i32 %1038, 3
  %1165 = extractvalue %dx.types.ResRet.i32 %1038, 2
  %1166 = add i32 %1164, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1166, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1169 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1167, %dx.types.Handle %1168, float %1091, float %1098, float undef, float undef, i32 0, i32 0, i32 undef, float %1119, float %1121, float undef, float %1120, float %1122, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = fmul fast float %1170, %1163
  %1172 = fadd fast float %1171, %1162
  %1173 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1174 = fmul fast float %1091, %1047
  %1175 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %1098, float %1174)  ; FMad(a,b,c)
  %1176 = fadd fast float %1175, %1161
  %1177 = fmul fast float %1091, %1049
  %1178 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %1098, float %1177)  ; FMad(a,b,c)
  %1179 = fadd fast float %1178, %1160
  %1180 = fmul fast float %1119, %1047
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %1121, float %1180)  ; FMad(a,b,c)
  %1182 = fmul fast float %1119, %1049
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %1121, float %1182)  ; FMad(a,b,c)
  %1184 = fmul fast float %1120, %1047
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %1122, float %1184)  ; FMad(a,b,c)
  %1186 = fmul fast float %1120, %1049
  %1187 = call float @dx.op.tertiary.f32(i32 46, float %1050, float %1122, float %1186)  ; FMad(a,b,c)
  %1188 = add i32 %1165, 0
  %1189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1188, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1190 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1189, %dx.types.Handle %1168, float %1176, float %1179, float undef, float undef, i32 0, i32 0, i32 undef, float %1181, float %1183, float undef, float %1185, float %1187, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = and i32 %1083, 1024
  %1193 = icmp ne i32 %1192, 0
  %1194 = fcmp fast ogt float %1191, 0x3FE0101020000000
  %1195 = uitofp i1 %1194 to float
  %1196 = select i1 %1193, float %1195, float %1191
  %1197 = and i32 %1083, 8192
  %1198 = icmp ne i32 %1197, 0
  %1199 = select i1 %1198, float %1159, float 1.000000e+00
  %1200 = fmul fast float %1091, 2.000000e+00
  %1201 = fadd fast float %1200, -1.000000e+00
  %1202 = call float @dx.op.unary.f32(i32 6, float %1201)  ; FAbs(value)
  %1203 = fmul fast float %1202, %1080
  %1204 = fsub fast float %1203, %1080
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fmul fast float %1098, 2.000000e+00
  %1207 = fadd fast float %1206, -1.000000e+00
  %1208 = call float @dx.op.unary.f32(i32 6, float %1207)  ; FAbs(value)
  %1209 = fmul fast float %1208, %1081
  %1210 = fsub fast float %1209, %1081
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = fmul fast float %1110, %1043
  %1213 = fsub fast float %1212, %1043
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1215 = fmul fast float %1173, %1199
  %1216 = fmul fast float %1215, %1170
  %1217 = fmul fast float %1216, %1205
  %1218 = fmul fast float %1217, %1196
  %1219 = fmul fast float %1218, %1211
  %1220 = fmul fast float %1219, %1214
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1224 = fsub fast float %1127, %1223
  %1225 = fmul fast float %1224, %1222
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fmul fast float %1220, %1044
  %1228 = fadd fast float %1220, %1044
  %1229 = fmul fast float %1228, %1053
  %1230 = fsub fast float %1229, %1053
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1232 = and i32 %1083, 128
  %1233 = icmp ne i32 %1232, 0
  %1234 = select i1 %1233, float %1231, float %1227
  %1235 = fmul fast float %1234, %1226
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = fcmp fast ugt float %1235, %1237
  br i1 %1238, label %1239, label %1132

; <label>:1239                                    ; preds = %1158
  %1240 = select i1 %1198, float %1235, float 0.000000e+00
  %1241 = fadd fast float %1240, %1001
  %1242 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  br i1 %1198, label %1132, label %1243

; <label>:1243                                    ; preds = %1239
  %1244 = and i32 %1083, 4
  %1245 = and i32 %1083, 8
  %1246 = add i32 %1039, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1246, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1247, %dx.types.Handle %1248, float %1176, float %1179, float undef, float undef, i32 0, i32 0, i32 undef, float %1181, float %1183, float undef, float %1185, float %1187, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = bitcast float %1065 to i32
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = lshr i32 %1254, 8
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1253, %1256
  %1261 = fadd fast float %1260, %1259
  %1262 = fmul fast float %1261, 0x3F70101000000000
  %1263 = add i32 %1040, 0
  %1264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1263, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1265 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1264, %dx.types.Handle %1248, float %1176, float %1179, float undef, float undef, i32 0, i32 0, i32 undef, float %1181, float %1183, float undef, float %1185, float %1187, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1266 = extractvalue %dx.types.ResRet.f32 %1265, 0
  %1267 = extractvalue %dx.types.ResRet.f32 %1265, 1
  %1268 = extractvalue %dx.types.ResRet.f32 %1265, 2
  %1269 = extractvalue %dx.types.ResRet.f32 %1265, 3
  %1270 = bitcast float %1059 to i32
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = lshr i32 %1270, 8
  %1274 = and i32 %1273, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = lshr i32 %1270, 16
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1278, 0x3F70101000000000
  %1280 = fmul fast float %1266, %1272
  %1281 = fadd fast float %1280, %1275
  %1282 = fmul fast float %1281, 0x3F70101000000000
  %1283 = fadd fast float %1267, -5.000000e-01
  %1284 = fadd fast float %1269, -5.000000e-01
  %1285 = fmul fast float %1283, %1279
  %1286 = fmul fast float %1284, %1279
  %1287 = fadd fast float %1285, 5.000000e-01
  %1288 = fadd fast float %1286, 5.000000e-01
  %1289 = fmul fast float %1250, %1068
  %1290 = fmul fast float %1251, %1069
  %1291 = fmul fast float %1252, %1070
  %1292 = fmul fast float %1287, 2.000000e+00
  %1293 = fadd fast float %1292, -1.000000e+00
  %1294 = fmul fast float %1288, 2.000000e+00
  %1295 = fadd fast float %1294, -1.000000e+00
  %1296 = fadd fast float %1293, %1295
  %1297 = fmul fast float %1296, 5.000000e-01
  %1298 = fsub fast float %1293, %1295
  %1299 = fmul fast float %1298, 5.000000e-01
  %1300 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1301 = fsub fast float 1.000000e+00, %1300
  %1302 = call float @dx.op.unary.f32(i32 6, float %1299)  ; FAbs(value)
  %1303 = fsub fast float %1301, %1302
  %1304 = call float @dx.op.dot3.f32(i32 55, float %1297, float %1299, float %1303, float %1297, float %1299, float %1303)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = call float @dx.op.unary.f32(i32 25, float %1304)  ; Rsqrt(value)
  %1306 = fmul fast float %1297, %1305
  %1307 = fmul fast float %1299, %1305
  %1308 = fmul fast float %1305, %1303
  %1309 = fmul fast float %1308, %1033
  %1310 = fmul fast float %1308, %1034
  %1311 = fmul fast float %1308, %1035
  %1312 = fmul fast float %1306, %1056
  %1313 = fmul fast float %1306, %1057
  %1314 = fmul fast float %1306, %1058
  %1315 = fadd fast float %1312, %1309
  %1316 = fadd fast float %1313, %1310
  %1317 = fadd fast float %1314, %1311
  %1318 = fmul fast float %1307, %1062
  %1319 = fmul fast float %1307, %1063
  %1320 = fmul fast float %1307, %1064
  %1321 = fadd fast float %1315, %1318
  %1322 = fadd fast float %1316, %1319
  %1323 = fadd fast float %1317, %1320
  %1324 = call float @dx.op.dot3.f32(i32 55, float %1321, float %1322, float %1323, float %1321, float %1322, float %1323)  ; Dot3(ax,ay,az,bx,by,bz)
  %1325 = call float @dx.op.unary.f32(i32 25, float %1324)  ; Rsqrt(value)
  %1326 = fmul fast float %1321, %1325
  %1327 = fmul fast float %1322, %1325
  %1328 = fmul fast float %1323, %1325
  %1329 = icmp ne i32 %1245, 0
  %1330 = select i1 %1329, float 1.000000e+00, float 0.000000e+00
  %1331 = fmul fast float %1235, %1330
  %1332 = and i32 %1083, 1
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1334, label %1338

; <label>:1334                                    ; preds = %1243
  %1335 = fsub fast float %1326, %1015
  %1336 = fsub fast float %1327, %1016
  %1337 = fsub fast float %1328, %1017
  br label %1338

; <label>:1338                                    ; preds = %1334, %1243
  %1339 = phi float [ %1335, %1334 ], [ %1326, %1243 ]
  %1340 = phi float [ %1336, %1334 ], [ %1327, %1243 ]
  %1341 = phi float [ %1337, %1334 ], [ %1328, %1243 ]
  %1342 = fmul float %1341, %1331
  %1343 = fmul float %1340, %1331
  %1344 = fmul float %1339, %1331
  %1345 = fadd fast float %1344, %1015
  %1346 = fadd fast float %1343, %1016
  %1347 = fadd fast float %1342, %1017
  %1348 = icmp ne i32 %1244, 0
  %1349 = select i1 %1348, float 1.000000e+00, float 0.000000e+00
  %1350 = fmul fast float %1235, %1349
  %1351 = fsub fast float %1289, %1022
  %1352 = fsub fast float %1290, %1023
  %1353 = fsub fast float %1291, %1024
  %1354 = fmul fast float %1351, %1350
  %1355 = fmul fast float %1352, %1350
  %1356 = fmul fast float %1353, %1350
  %1357 = fadd fast float %1354, %1022
  %1358 = fadd fast float %1355, %1023
  %1359 = fadd fast float %1356, %1024
  %1360 = fsub fast float %1262, %1021
  %1361 = fmul fast float %1360, %1350
  %1362 = fadd fast float %1361, %1021
  %1363 = fmul fast float %1350, %1008
  %1364 = fsub fast float %1008, %1363
  %1365 = fmul fast float %1350, %1007
  %1366 = fsub fast float %1007, %1365
  %1367 = bitcast float %1077 to i32
  %1368 = lshr i32 %1367, 16
  %1369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1368)  ; LegacyF16ToF32(value)
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1371, 1
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %1374, label %1399

; <label>:1374                                    ; preds = %1338
  %1375 = fadd fast float %1262, 0xBFB99999A0000000
  %1376 = call float @dx.op.unary.f32(i32 7, float %1375)  ; Saturate(value)
  %1377 = fmul fast float %1376, 0x3FF1C71C80000000
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fmul fast float %1379, %1289
  %1381 = fmul fast float %1379, %1290
  %1382 = fmul fast float %1379, %1291
  %1383 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1384 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1385 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1386 = call float @dx.op.binary.f32(i32 35, float %1384, float %1385)  ; FMax(a,b)
  %1387 = call float @dx.op.binary.f32(i32 35, float %1383, float %1386)  ; FMax(a,b)
  %1388 = fcmp fast ogt float %1387, 0.000000e+00
  %1389 = bitcast float %1387 to i32
  %1390 = sub nsw i32 2129859010, %1389
  %1391 = bitcast i32 %1390 to float
  %1392 = select i1 %1388, float %1391, float 0.000000e+00
  %1393 = fmul fast float %1383, %1369
  %1394 = fmul fast float %1384, %1369
  %1395 = fmul fast float %1385, %1369
  %1396 = fmul fast float %1393, %1392
  %1397 = fmul fast float %1394, %1392
  %1398 = fmul fast float %1395, %1392
  br label %1399

; <label>:1399                                    ; preds = %1374, %1338
  %1400 = phi float [ %1369, %1338 ], [ %1396, %1374 ]
  %1401 = phi float [ %1369, %1338 ], [ %1397, %1374 ]
  %1402 = phi float [ %1369, %1338 ], [ %1398, %1374 ]
  %1403 = fsub fast float %1400, %1009
  %1404 = fsub fast float %1401, %1010
  %1405 = fsub fast float %1402, %1011
  %1406 = fmul fast float %1403, %1350
  %1407 = fmul fast float %1404, %1350
  %1408 = fmul fast float %1405, %1350
  %1409 = fadd fast float %1406, %1009
  %1410 = fadd fast float %1407, %1010
  %1411 = fadd fast float %1408, %1011
  %1412 = fadd fast float %1235, %1020
  %1413 = call float @dx.op.unary.f32(i32 7, float %1412)  ; Saturate(value)
  %1414 = fsub fast float %1282, %1019
  %1415 = fmul fast float %1414, %1331
  %1416 = fadd fast float %1415, %1019
  %1417 = fsub fast float %1268, %1018
  %1418 = fmul fast float %1417, %1331
  %1419 = fadd fast float %1418, %1018
  br i1 %1333, label %1428, label %1420

; <label>:1420                                    ; preds = %1399
  %1421 = and i32 %1083, 32768
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1438, label %1423

; <label>:1423                                    ; preds = %1420
  %1424 = fmul fast float %1331, 1.270000e+02
  %1425 = fadd fast float %1424, %1004
  %1426 = fadd fast float %1424, %1005
  %1427 = fadd fast float %1424, %1006
  br label %1438

; <label>:1428                                    ; preds = %1399
  %1429 = fsub fast float 1.270000e+02, %1004
  %1430 = fsub fast float 1.270000e+02, %1005
  %1431 = fsub fast float 1.270000e+02, %1006
  %1432 = fmul fast float %1331, %1429
  %1433 = fmul fast float %1331, %1430
  %1434 = fmul fast float %1331, %1431
  %1435 = fadd fast float %1432, %1004
  %1436 = fadd fast float %1433, %1005
  %1437 = fadd fast float %1434, %1006
  br label %1438

; <label>:1438                                    ; preds = %1428, %1423, %1420
  %1439 = phi float [ %1425, %1423 ], [ %1004, %1420 ], [ %1435, %1428 ]
  %1440 = phi float [ %1426, %1423 ], [ %1005, %1420 ], [ %1436, %1428 ]
  %1441 = phi float [ %1427, %1423 ], [ %1006, %1420 ], [ %1437, %1428 ]
  %1442 = call float @dx.op.dot3.f32(i32 55, float %1289, float %1290, float %1291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.CBufRet.f32 %1443, 1
  %1446 = fmul fast float %1445, %1442
  %1447 = fadd fast float %1446, %1444
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = bitcast float %1071 to i32
  %1450 = and i32 %1449, 65535
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = lshr i32 %1449, 16
  %1453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1452)  ; LegacyF16ToF32(value)
  %1454 = fcmp fast oge float %1451, 0.000000e+00
  %1455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1456 = extractvalue %dx.types.CBufRet.f32 %1455, 0
  %1457 = select i1 %1454, float %1451, float %1456
  %1458 = fadd fast float %1457, %1453
  %1459 = fsub fast float %1448, %1003
  %1460 = fmul fast float %1459, %1235
  %1461 = fadd fast float %1460, %1003
  %1462 = fmul fast float %1458, %1235
  %1463 = call float @dx.op.binary.f32(i32 35, float %1002, float %1462)  ; FMax(a,b)
  %1464 = and i32 %1083, 16
  %1465 = icmp eq i32 %1464, 0
  br i1 %1465, label %1487, label %1466

; <label>:1466                                    ; preds = %1438
  %1467 = add i32 %1074, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1467, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1468, %dx.types.Handle %1248, float %1176, float %1179, float undef, float undef, i32 0, i32 0, i32 undef, float %1181, float %1183, float undef, float %1185, float %1187, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = and i32 %1367, 65535
  %1474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1473)  ; LegacyF16ToF32(value)
  %1475 = fmul fast float %1470, %1068
  %1476 = fmul fast float %1471, %1069
  %1477 = fmul fast float %1472, %1070
  %1478 = and i32 %1083, 16384
  %1479 = icmp ne i32 %1478, 0
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  %1482 = select i1 %1479, float %1481, float 1.000000e+00
  %1483 = fmul fast float %1482, %1474
  %1484 = fmul fast float %1475, %1483
  %1485 = fmul fast float %1476, %1483
  %1486 = fmul fast float %1477, %1483
  br label %1487

; <label>:1487                                    ; preds = %1466, %1438
  %1488 = phi float [ %1484, %1466 ], [ 0.000000e+00, %1438 ]
  %1489 = phi float [ %1485, %1466 ], [ 0.000000e+00, %1438 ]
  %1490 = phi float [ %1486, %1466 ], [ 0.000000e+00, %1438 ]
  %1491 = fsub fast float %1488, %1012
  %1492 = fsub fast float %1489, %1013
  %1493 = fsub fast float %1490, %1014
  %1494 = fmul fast float %1491, %1235
  %1495 = fmul fast float %1492, %1235
  %1496 = fmul fast float %1493, %1235
  %1497 = fadd fast float %1494, %1012
  %1498 = fadd fast float %1495, %1013
  %1499 = fadd fast float %1496, %1014
  br label %1132

; <label>:1500                                    ; preds = %1132
  br label %1501

; <label>:1501                                    ; preds = %1500, %890
  %1502 = phi float [ 0.000000e+00, %890 ], [ %1133, %1500 ]
  %1503 = phi float [ %912, %890 ], [ %1134, %1500 ]
  %1504 = phi float [ %910, %890 ], [ %1135, %1500 ]
  %1505 = phi float [ %902, %890 ], [ %1136, %1500 ]
  %1506 = phi float [ %903, %890 ], [ %1137, %1500 ]
  %1507 = phi float [ %904, %890 ], [ %1138, %1500 ]
  %1508 = phi float [ 0.000000e+00, %890 ], [ %1139, %1500 ]
  %1509 = phi float [ 0.000000e+00, %890 ], [ %1140, %1500 ]
  %1510 = phi float [ %899, %890 ], [ %1141, %1500 ]
  %1511 = phi float [ %900, %890 ], [ %1142, %1500 ]
  %1512 = phi float [ %901, %890 ], [ %1143, %1500 ]
  %1513 = phi float [ %896, %890 ], [ %1144, %1500 ]
  %1514 = phi float [ %897, %890 ], [ %1145, %1500 ]
  %1515 = phi float [ %898, %890 ], [ %1146, %1500 ]
  %1516 = phi float [ %944, %890 ], [ %1147, %1500 ]
  %1517 = phi float [ %945, %890 ], [ %1148, %1500 ]
  %1518 = phi float [ %946, %890 ], [ %1149, %1500 ]
  %1519 = phi float [ %908, %890 ], [ %1150, %1500 ]
  %1520 = phi float [ %907, %890 ], [ %1151, %1500 ]
  %1521 = phi float [ 0.000000e+00, %890 ], [ %1152, %1500 ]
  %1522 = phi float [ %905, %890 ], [ %1153, %1500 ]
  %1523 = phi float [ %893, %890 ], [ %1154, %1500 ]
  %1524 = phi float [ %894, %890 ], [ %1155, %1500 ]
  %1525 = phi float [ %895, %890 ], [ %1156, %1500 ]
  %1526 = call float @dx.op.dot3.f32(i32 55, float %1516, float %1517, float %1518, float %1516, float %1517, float %1518)  ; Dot3(ax,ay,az,bx,by,bz)
  %1527 = call float @dx.op.unary.f32(i32 25, float %1526)  ; Rsqrt(value)
  %1528 = fmul fast float %1527, %1516
  %1529 = fmul fast float %1527, %1517
  %1530 = fmul fast float %1527, %1518
  %1531 = fadd fast float %1521, %906
  %1532 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1528, float %1529, float %1530, float %1528, float %1529, float %1530)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = call float @dx.op.unary.f32(i32 25, float %1533)  ; Rsqrt(value)
  %1535 = fmul fast float %1534, %1528
  %1536 = fmul fast float %1534, %1529
  %1537 = fmul fast float %1534, %1530
  %1538 = fadd fast float %1522, 0xBFB99999A0000000
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1540 = fmul fast float %1539, 0x3FF1C71C80000000
  %1541 = call float @dx.op.binary.f32(i32 36, float %1522, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1542 = fsub fast float 1.000000e+00, %1540
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1544 = fmul fast float %1543, %1523
  %1545 = fmul fast float %1543, %1524
  %1546 = fmul fast float %1543, %1525
  %1547 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1548 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1549 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1550 = fmul fast float %1540, %1523
  %1551 = fmul fast float %1540, %1524
  %1552 = fmul fast float %1540, %1525
  %1553 = fadd fast float %1550, %1541
  %1554 = fadd fast float %1551, %1541
  %1555 = fadd fast float %1552, %1541
  %1556 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1557 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1558 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1559 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 1
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1578, label %1564

; <label>:1564                                    ; preds = %1501
  %1565 = call float @dx.op.binary.f32(i32 35, float %1548, float %1549)  ; FMax(a,b)
  %1566 = call float @dx.op.binary.f32(i32 35, float %1547, float %1565)  ; FMax(a,b)
  %1567 = fcmp fast ogt float %1566, 0.000000e+00
  %1568 = bitcast float %1566 to i32
  %1569 = sub nsw i32 2129859010, %1568
  %1570 = bitcast i32 %1569 to float
  %1571 = select i1 %1567, float %1570, float 0.000000e+00
  %1572 = fmul fast float %1547, %1510
  %1573 = fmul fast float %1548, %1511
  %1574 = fmul fast float %1549, %1512
  %1575 = fmul fast float %1572, %1571
  %1576 = fmul fast float %1573, %1571
  %1577 = fmul fast float %1574, %1571
  br label %1578

; <label>:1578                                    ; preds = %1564, %1501
  %1579 = phi float [ %1575, %1564 ], [ %1510, %1501 ]
  %1580 = phi float [ %1576, %1564 ], [ %1511, %1501 ]
  %1581 = phi float [ %1577, %1564 ], [ %1512, %1501 ]
  %1582 = call float @dx.op.binary.f32(i32 36, float %1505, float 1.270000e+02)  ; FMin(a,b)
  %1583 = call float @dx.op.binary.f32(i32 36, float %1506, float 1.270000e+02)  ; FMin(a,b)
  %1584 = call float @dx.op.binary.f32(i32 36, float %1507, float 1.270000e+02)  ; FMin(a,b)
  %1585 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.i32 %1585, 3
  %1587 = and i32 %1586, 8
  %1588 = icmp ne i32 %1587, 0
  %1589 = call float @dx.op.binary.f32(i32 35, float %1547, float %1523)  ; FMax(a,b)
  %1590 = call float @dx.op.binary.f32(i32 35, float %1548, float %1523)  ; FMax(a,b)
  %1591 = call float @dx.op.binary.f32(i32 35, float %1549, float %1523)  ; FMax(a,b)
  %1592 = call float @dx.op.dot3.f32(i32 55, float %1547, float %1548, float %1549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1593 = select i1 %205, float %1523, float %1547
  %1594 = select i1 %205, float %1592, float %1548
  %1595 = select i1 %205, float 1.000000e+00, float %1549
  %1596 = select i1 %1588, float %1589, float %1593
  %1597 = select i1 %1588, float %1590, float %1594
  %1598 = select i1 %1588, float %1591, float %1595
  %1599 = call float @dx.op.dot3.f32(i32 55, float %1579, float %1580, float %1581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1600 = select i1 %205, float %1599, float %1579
  %1601 = select i1 %205, float %1599, float %1580
  %1602 = select i1 %205, float %1599, float %1581
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1606 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1607 = fadd fast float %1604, %143
  %1608 = fadd fast float %1605, %144
  %1609 = fadd fast float %1606, %145
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 1
  %1613 = fsub fast float %1607, %1611
  %1614 = fsub fast float %1608, %1612
  %1615 = fmul fast float %1613, %1613
  %1616 = fmul fast float %1614, %1614
  %1617 = fadd fast float %1615, %1616
  %1618 = call float @dx.op.unary.f32(i32 24, float %1617)  ; Sqrt(value)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1620 = fcmp fast olt float %1618, %1619
  br i1 %1620, label %1621, label %1688

; <label>:1621                                    ; preds = %1578
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1629 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1626, 1
  %1631 = extractvalue %dx.types.CBufRet.f32 %1622, 3
  %1632 = extractvalue %dx.types.CBufRet.f32 %1624, 3
  %1633 = extractvalue %dx.types.CBufRet.f32 %1626, 3
  %1634 = fadd fast float %1631, %1607
  %1635 = fadd fast float %1632, %1608
  %1636 = fadd fast float %1633, %1609
  %1637 = fmul fast float %1634, %1623
  %1638 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1625, float %1637)  ; FMad(a,b,c)
  %1639 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1627, float %1638)  ; FMad(a,b,c)
  %1640 = fmul fast float %1634, %1628
  %1641 = call float @dx.op.tertiary.f32(i32 46, float %1635, float %1629, float %1640)  ; FMad(a,b,c)
  %1642 = call float @dx.op.tertiary.f32(i32 46, float %1636, float %1630, float %1641)  ; FMad(a,b,c)
  %1643 = fsub fast float %1639, %1631
  %1644 = fsub fast float %1642, %1632
  %1645 = fsub fast float %1643, %1611
  %1646 = fadd fast float %1645, %1619
  %1647 = fsub fast float %1644, %1612
  %1648 = fadd fast float %1647, %1619
  %1649 = extractvalue %dx.types.CBufRet.f32 %1610, 3
  %1650 = fmul fast float %1646, %1649
  %1651 = fmul fast float %1648, %1649
  %1652 = call float @dx.op.unary.f32(i32 7, float %1650)  ; Saturate(value)
  %1653 = call float @dx.op.unary.f32(i32 7, float %1651)  ; Saturate(value)
  %1654 = fsub fast float 1.000000e+00, %1652
  %1655 = fsub fast float 1.000000e+00, %1653
  %1656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %1654, float %1655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 0
  %1658 = fcmp fast ugt float %1657, 0.000000e+00
  br i1 %1658, label %1659, label %1962

; <label>:1659                                    ; preds = %1621
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1662 = fmul fast float %1661, %1657
  %1663 = extractvalue %dx.types.CBufRet.f32 %1660, 3
  %1664 = fadd fast float %1663, %1662
  %1665 = extractvalue %dx.types.CBufRet.f32 %1626, 2
  %1666 = fadd fast float %1664, %1633
  %1667 = fmul fast float %1639, %1627
  %1668 = call float @dx.op.tertiary.f32(i32 46, float %1642, float %1630, float %1667)  ; FMad(a,b,c)
  %1669 = call float @dx.op.tertiary.f32(i32 46, float %1666, float %1665, float %1668)  ; FMad(a,b,c)
  %1670 = fsub fast float %1669, %1633
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 2
  %1673 = fsub fast float %1670, %1672
  %1674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %51, float %1654, float %1655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1675 = extractvalue %dx.types.ResRet.f32 %1674, 0
  %1676 = extractvalue %dx.types.ResRet.f32 %1674, 1
  %1677 = extractvalue %dx.types.ResRet.f32 %1674, 2
  %1678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %51, float %1654, float %1655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = fadd fast float %1679, %1675
  %1683 = fmul fast float %1682, 0x3F847AE140000000
  %1684 = fadd fast float %1680, %1676
  %1685 = fmul fast float %1684, 0x3F847AE140000000
  %1686 = fadd fast float %1681, %1677
  %1687 = fmul fast float %1686, 0x3F847AE140000000
  br label %1962

; <label>:1688                                    ; preds = %1578
  %1689 = and i32 %181, 1
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1962, label %1691

; <label>:1691                                    ; preds = %1688
  %1692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.f32 %1692, 0
  %1694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1695 = extractvalue %dx.types.CBufRet.f32 %1694, 0
  %1696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.f32 %1696, 0
  %1698 = extractvalue %dx.types.CBufRet.f32 %1692, 1
  %1699 = extractvalue %dx.types.CBufRet.f32 %1694, 1
  %1700 = extractvalue %dx.types.CBufRet.f32 %1696, 1
  %1701 = extractvalue %dx.types.CBufRet.f32 %1692, 3
  %1702 = extractvalue %dx.types.CBufRet.f32 %1694, 3
  %1703 = extractvalue %dx.types.CBufRet.f32 %1696, 3
  %1704 = fadd fast float %1701, %1607
  %1705 = fadd fast float %1702, %1608
  %1706 = fadd fast float %1703, %1609
  %1707 = fmul fast float %1704, %1693
  %1708 = call float @dx.op.tertiary.f32(i32 46, float %1705, float %1695, float %1707)  ; FMad(a,b,c)
  %1709 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1697, float %1708)  ; FMad(a,b,c)
  %1710 = fmul fast float %1704, %1698
  %1711 = call float @dx.op.tertiary.f32(i32 46, float %1705, float %1699, float %1710)  ; FMad(a,b,c)
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %1706, float %1700, float %1711)  ; FMad(a,b,c)
  %1713 = fsub fast float %1709, %1701
  %1714 = fsub fast float %1712, %1702
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1719 = extractvalue %dx.types.CBufRet.f32 %1715, 3
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 3
  %1722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.i32 %1722, 0
  %1724 = extractvalue %dx.types.CBufRet.i32 %1722, 1
  %1725 = udiv i32 %1724, %1723
  %1726 = fsub fast float %1713, %1716
  %1727 = fsub fast float %1714, %1717
  %1728 = call float @dx.op.binary.f32(i32 35, float %1726, float 0.000000e+00)  ; FMax(a,b)
  %1729 = call float @dx.op.binary.f32(i32 35, float %1727, float 0.000000e+00)  ; FMax(a,b)
  %1730 = call float @dx.op.binary.f32(i32 36, float %1728, float %1718)  ; FMin(a,b)
  %1731 = call float @dx.op.binary.f32(i32 36, float %1729, float %1719)  ; FMin(a,b)
  %1732 = add i32 %1723, -1
  %1733 = add i32 %1725, -1
  %1734 = fmul fast float %1730, %1721
  %1735 = fmul fast float %1731, %1721
  %1736 = fptoui float %1734 to i32
  %1737 = fptoui float %1735 to i32
  %1738 = call i32 @dx.op.binary.i32(i32 40, i32 %1736, i32 %1732)  ; UMin(a,b)
  %1739 = call i32 @dx.op.binary.i32(i32 40, i32 %1737, i32 %1733)  ; UMin(a,b)
  %1740 = mul i32 %1739, %1723
  %1741 = add i32 %1740, %1738
  %1742 = shl i32 %1741, 2
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = icmp eq i32 %1744, -1
  br i1 %1745, label %1962, label %1746

; <label>:1746                                    ; preds = %1691
  %1747 = mul i32 %1744, 148
  %1748 = add i32 %1747, 4
  %1749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.f32 %1749, 0
  %1751 = add i32 %1747, 8
  %1752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.f32 %1752, 0
  %1754 = add i32 %1747, 36
  %1755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = add i32 %1747, 60
  %1758 = add i32 %1747, 92
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = add i32 %1747, 116
  %1762 = fsub fast float %1713, %1750
  %1763 = fsub fast float %1714, %1753
  %1764 = fmul fast float %1721, %1762
  %1765 = fmul fast float %1721, %1763
  %1766 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1767 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1771 = call float @dx.op.unary.f32(i32 83, float %1766)  ; DerivCoarseX(value)
  %1772 = call float @dx.op.unary.f32(i32 83, float %1768)  ; DerivCoarseX(value)
  %1773 = call float @dx.op.unary.f32(i32 84, float %1766)  ; DerivCoarseY(value)
  %1774 = call float @dx.op.unary.f32(i32 84, float %1768)  ; DerivCoarseY(value)
  %1775 = fmul fast float %1771, %1770
  %1776 = fmul fast float %1772, %1770
  %1777 = fmul fast float %1773, %1770
  %1778 = fmul fast float %1774, %1770
  %1779 = call float @dx.op.dot2.f32(i32 54, float %1777, float %1778, float %1777, float %1778)  ; Dot2(ax,ay,bx,by)
  %1780 = call float @dx.op.dot2.f32(i32 54, float %1775, float %1776, float %1775, float %1776)  ; Dot2(ax,ay,bx,by)
  %1781 = call float @dx.op.binary.f32(i32 35, float %1780, float %1779)  ; FMax(a,b)
  %1782 = call float @dx.op.unary.f32(i32 23, float %1781)  ; Log(value)
  %1783 = fmul fast float %1782, 5.000000e-01
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 1
  %1786 = fadd fast float %1785, %1783
  %1787 = call float @dx.op.binary.f32(i32 35, float %1786, float 0.000000e+00)  ; FMax(a,b)
  %1788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1788, 3
  %1790 = fadd fast float %1789, %1787
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 3
  %1793 = fadd fast float %1790, %1792
  %1794 = add i32 %1760, 0
  %1795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1794, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1796 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1795, i32 0)  ; GetDimensions(handle,mipLevel)
  %1797 = extractvalue %dx.types.Dimensions %1796, 0
  %1798 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1797)  ; FirstbitLo(value)
  %1799 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.i32 %1799, 1
  %1801 = sub nsw i32 %1800, %1798
  %1802 = sitofp i32 %1801 to float
  %1803 = fsub fast float %1793, %1802
  %1804 = call float @dx.op.binary.f32(i32 35, float %1803, float 0.000000e+00)  ; FMax(a,b)
  %1805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1795, %dx.types.Handle %49, float %1766, float %1768, float %1756, float undef, i32 0, i32 0, i32 undef, float %1804)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = fcmp ule float %1806, 0x3FE0101020000000
  %1808 = extractvalue %dx.types.CBufRet.i32 %1799, 0
  %1809 = and i32 %1808, 128
  %1810 = icmp ne i32 %1809, 0
  %1811 = and i1 %1807, %1810
  br i1 %1811, label %1962, label %1812

; <label>:1812                                    ; preds = %1746
  %1813 = add i32 %1747, 20
  %1814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1816 = add i32 %1747, 24
  %1817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = add i32 %1747, 40
  %1820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.f32 %1820, 0
  %1822 = add i32 %1747, 96
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1827 = fmul fast float %1826, %1766
  %1828 = fmul fast float %1826, %1768
  %1829 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1830 = fadd fast float %1827, %1829
  %1831 = fadd fast float %1828, %1829
  %1832 = add i32 %1824, 0
  %1833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1832, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1834 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1833, i32 0)  ; GetDimensions(handle,mipLevel)
  %1835 = extractvalue %dx.types.Dimensions %1834, 0
  %1836 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1835)  ; FirstbitLo(value)
  %1837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.i32 %1837, 1
  %1839 = sub nsw i32 %1838, %1836
  %1840 = sitofp i32 %1839 to float
  %1841 = fsub fast float %1790, %1840
  %1842 = call float @dx.op.binary.f32(i32 35, float %1841, float 0.000000e+00)  ; FMax(a,b)
  %1843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1833, %dx.types.Handle %49, float %1830, float %1831, float %1821, float undef, i32 0, i32 0, i32 undef, float %1842)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = fmul fast float %1844, %1815
  %1846 = fadd fast float %1845, %1818
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.CBufRet.f32 %1847, 1
  %1850 = extractvalue %dx.types.CBufRet.f32 %1847, 2
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 3
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 3
  %1855 = extractvalue %dx.types.CBufRet.f32 %1847, 3
  %1856 = fadd fast float %1852, %1713
  %1857 = fadd fast float %1854, %1714
  %1858 = fadd fast float %1846, %1855
  %1859 = fmul fast float %1856, %1848
  %1860 = call float @dx.op.tertiary.f32(i32 46, float %1857, float %1849, float %1859)  ; FMad(a,b,c)
  %1861 = call float @dx.op.tertiary.f32(i32 46, float %1858, float %1850, float %1860)  ; FMad(a,b,c)
  %1862 = fsub fast float %1861, %1855
  %1863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.f32 %1863, 2
  %1865 = fsub fast float %1862, %1864
  %1866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.i32 %1866, 0
  %1868 = call i32 @dx.op.binary.i32(i32 40, i32 %1744, i32 %1867)  ; UMin(a,b)
  %1869 = mul i32 %1868, 36
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = add i32 %1869, 4
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = fmul fast float %1874, %1766
  %1876 = fmul fast float %1874, %1768
  %1877 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1878 = fadd fast float %1875, %1877
  %1879 = fadd fast float %1876, %1877
  %1880 = icmp eq i32 %1871, 0
  br i1 %1880, label %1949, label %1881

; <label>:1881                                    ; preds = %1812
  br label %1882

; <label>:1882                                    ; preds = %1939, %1881
  %1883 = phi float [ %1940, %1939 ], [ 0.000000e+00, %1881 ]
  %1884 = phi float [ %1941, %1939 ], [ 0.000000e+00, %1881 ]
  %1885 = phi float [ %1942, %1939 ], [ 0.000000e+00, %1881 ]
  %1886 = phi float [ %1943, %1939 ], [ 0.000000e+00, %1881 ]
  %1887 = phi float [ %1944, %1939 ], [ 0.000000e+00, %1881 ]
  %1888 = phi float [ %1945, %1939 ], [ 0.000000e+00, %1881 ]
  %1889 = phi i32 [ %1946, %1939 ], [ 0, %1881 ]
  %1890 = shl i32 %1889, 2
  %1891 = add i32 %1757, %1890
  %1892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.f32 %1892, 0
  %1894 = add i32 %1761, %1890
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = add i32 %1896, 0
  %1898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1897, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1899 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1898, i32 0)  ; GetDimensions(handle,mipLevel)
  %1900 = extractvalue %dx.types.Dimensions %1899, 0
  %1901 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1900)  ; FirstbitLo(value)
  %1902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1903 = extractvalue %dx.types.CBufRet.i32 %1902, 1
  %1904 = sub nsw i32 %1903, %1901
  %1905 = sitofp i32 %1904 to float
  %1906 = fsub fast float %1790, %1905
  %1907 = call float @dx.op.binary.f32(i32 35, float %1906, float 0.000000e+00)  ; FMax(a,b)
  %1908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1898, %dx.types.Handle %49, float %1878, float %1879, float %1893, float undef, i32 0, i32 0, i32 undef, float %1907)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = fcmp fast ogt float %1909, 0.000000e+00
  br i1 %1910, label %1911, label %1939

; <label>:1911                                    ; preds = %1882
  %1912 = add i32 %1872, %1890
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 32767
  %1916 = mul nuw nsw i32 %1915, 928
  %1917 = add nuw nsw i32 %1916, 48
  %1918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.ResRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.ResRet.f32 %1918, 2
  %1922 = add nuw nsw i32 %1916, 60
  %1923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.ResRet.f32 %1923, 1
  %1926 = extractvalue %dx.types.ResRet.f32 %1923, 2
  %1927 = fmul fast float %1919, %1909
  %1928 = fmul fast float %1920, %1909
  %1929 = fmul fast float %1921, %1909
  %1930 = fadd fast float %1927, %1883
  %1931 = fadd fast float %1928, %1884
  %1932 = fadd fast float %1929, %1885
  %1933 = fmul fast float %1924, %1909
  %1934 = fmul fast float %1925, %1909
  %1935 = fmul fast float %1926, %1909
  %1936 = fadd fast float %1933, %1886
  %1937 = fadd fast float %1934, %1887
  %1938 = fadd fast float %1935, %1888
  br label %1939

; <label>:1939                                    ; preds = %1911, %1882
  %1940 = phi float [ %1930, %1911 ], [ %1883, %1882 ]
  %1941 = phi float [ %1931, %1911 ], [ %1884, %1882 ]
  %1942 = phi float [ %1932, %1911 ], [ %1885, %1882 ]
  %1943 = phi float [ %1936, %1911 ], [ %1886, %1882 ]
  %1944 = phi float [ %1937, %1911 ], [ %1887, %1882 ]
  %1945 = phi float [ %1938, %1911 ], [ %1888, %1882 ]
  %1946 = add nuw i32 %1889, 1
  %1947 = icmp eq i32 %1946, %1871
  br i1 %1947, label %1948, label %1882

; <label>:1948                                    ; preds = %1939
  br label %1949

; <label>:1949                                    ; preds = %1948, %1812
  %1950 = phi float [ 0.000000e+00, %1812 ], [ %1940, %1948 ]
  %1951 = phi float [ 0.000000e+00, %1812 ], [ %1941, %1948 ]
  %1952 = phi float [ 0.000000e+00, %1812 ], [ %1942, %1948 ]
  %1953 = phi float [ 0.000000e+00, %1812 ], [ %1943, %1948 ]
  %1954 = phi float [ 0.000000e+00, %1812 ], [ %1944, %1948 ]
  %1955 = phi float [ 0.000000e+00, %1812 ], [ %1945, %1948 ]
  %1956 = fadd fast float %1953, %1950
  %1957 = fmul fast float %1956, 0x3F847AE140000000
  %1958 = fadd fast float %1954, %1951
  %1959 = fmul fast float %1958, 0x3F847AE140000000
  %1960 = fadd fast float %1955, %1952
  %1961 = fmul fast float %1960, 0x3F847AE140000000
  br label %1962

; <label>:1962                                    ; preds = %1949, %1746, %1691, %1688, %1659, %1621
  %1963 = phi float [ %1673, %1659 ], [ -1.310720e+05, %1621 ], [ %1865, %1949 ], [ -1.310720e+05, %1691 ], [ -1.310720e+05, %1746 ], [ -1.310720e+05, %1688 ]
  %1964 = phi float [ %1683, %1659 ], [ 0.000000e+00, %1621 ], [ %1957, %1949 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1746 ], [ 0.000000e+00, %1688 ]
  %1965 = phi float [ %1685, %1659 ], [ 0.000000e+00, %1621 ], [ %1959, %1949 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1746 ], [ 0.000000e+00, %1688 ]
  %1966 = phi float [ %1687, %1659 ], [ 0.000000e+00, %1621 ], [ %1961, %1949 ], [ 0.000000e+00, %1691 ], [ 0.000000e+00, %1746 ], [ 0.000000e+00, %1688 ]
  %1967 = phi i1 [ true, %1659 ], [ false, %1621 ], [ true, %1949 ], [ false, %1691 ], [ false, %1746 ], [ false, %1688 ]
  %1968 = and i32 %181, 3
  %1969 = icmp eq i32 %1968, 1
  %1970 = select i1 %1969, float 1.000000e+00, float 0.000000e+00
  %1971 = fsub fast float %1963, %145
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = select i1 %1967, float %1972, float 1.000000e+00
  %1974 = fmul fast float %1973, %1970
  %1975 = icmp eq i32 %1968, 3
  %1976 = select i1 %1975, float 1.000000e+00, float %1974
  %1977 = call float @dx.op.binary.f32(i32 35, float %1502, float %1976)  ; FMax(a,b)
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = fcmp fast une float %1978, 0.000000e+00
  br i1 %1979, label %1980, label %2150

; <label>:1980                                    ; preds = %1962
  %1981 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = call float @dx.op.unary.f32(i32 25, float %1981)  ; Rsqrt(value)
  %1983 = fmul fast float %143, %1982
  %1984 = fsub fast float -0.000000e+00, %1983
  %1985 = fmul fast float %144, %1982
  %1986 = fsub fast float -0.000000e+00, %1985
  %1987 = fmul fast float %145, %1982
  %1988 = fsub fast float -0.000000e+00, %1987
  %1989 = call float @dx.op.dot3.f32(i32 55, float %1984, float %1986, float %1988, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1990 = fmul fast float %1978, 2.500000e+00
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fmul fast float %1978, 0x4013FFFFE0000000
  %1993 = fadd fast float %1992, 0xBFFFFFFFE0000000
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fmul fast float %1978, 0x4004000020000000
  %1996 = fadd fast float %1995, 0xBFF8000040000000
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1999 = fmul fast float %1538, 1.000000e+01
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2001 = fmul fast float %2000, 2.000000e+00
  %2002 = fsub fast float 3.000000e+00, %2001
  %2003 = fmul fast float %2000, %2000
  %2004 = fmul fast float %2003, %2002
  %2005 = fsub fast float 1.000000e+00, %2004
  %2006 = fsub fast float 0x3FE3333340000000, %1559
  %2007 = fmul fast float %2006, 0x400AAAAAA0000000
  %2008 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  %2009 = fmul fast float %2005, %2008
  %2010 = fmul fast float %1596, 0x3FEA2B8620000000
  %2011 = fmul fast float %1597, 0x3FEA2B8620000000
  %2012 = fmul fast float %1598, 0x3FEA2B8620000000
  %2013 = fadd fast float %2010, 0x3FC81DFBA0000000
  %2014 = fmul fast float %2013, %1596
  %2015 = fadd fast float %2014, 0x3F910E6020000000
  %2016 = fadd fast float %2011, 0x3FC81DFBA0000000
  %2017 = fmul fast float %2016, %1597
  %2018 = fadd fast float %2017, 0x3F910E6020000000
  %2019 = fadd fast float %2012, 0x3FC81DFBA0000000
  %2020 = fmul fast float %2019, %1598
  %2021 = fadd fast float %2020, 0x3F910E6020000000
  %2022 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2023 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  %2024 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2025 = fsub fast float %2022, %1596
  %2026 = fsub fast float %2023, %1597
  %2027 = fsub fast float %2024, %1598
  %2028 = fmul fast float %2025, %1998
  %2029 = fmul fast float %2028, %2009
  %2030 = fmul fast float %2026, %1998
  %2031 = fmul fast float %2030, %2009
  %2032 = fmul fast float %2027, %1998
  %2033 = fmul fast float %2032, %2009
  %2034 = fadd fast float %2029, %1596
  %2035 = fadd fast float %2031, %1597
  %2036 = fadd fast float %2033, %1598
  %2037 = fmul fast float %1519, %1519
  %2038 = fmul fast float %2037, %2037
  %2039 = fadd fast float %1994, 1.000000e+00
  %2040 = fsub fast float %2039, %2009
  %2041 = call float @dx.op.unary.f32(i32 7, float %2040)  ; Saturate(value)
  %2042 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2043 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2044 = fsub fast float 1.000000e+00, %2038
  %2045 = call float @dx.op.binary.f32(i32 36, float %2041, float %2044)  ; FMin(a,b)
  %2046 = call float @dx.op.unary.f32(i32 7, float %1997)  ; Saturate(value)
  %2047 = call float @dx.op.binary.f32(i32 35, float %2045, float %2046)  ; FMax(a,b)
  %2048 = fadd fast float %2043, 0xBFE4CCCCC0000000
  %2049 = fmul fast float %2048, 0x4006DB6DA0000000
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = fmul fast float %2050, 2.000000e+00
  %2052 = fsub fast float 3.000000e+00, %2051
  %2053 = bitcast float %1556 to i32
  %2054 = ashr i32 %2053, 1
  %2055 = add nsw i32 %2054, 532487669
  %2056 = bitcast i32 %2055 to float
  %2057 = fsub fast float 1.000000e+00, %2056
  %2058 = bitcast float %2057 to i32
  %2059 = sub nsw i32 2129859010, %2058
  %2060 = bitcast i32 %2059 to float
  %2061 = fmul fast float %2060, 2.000000e+00
  %2062 = bitcast float %1557 to i32
  %2063 = ashr i32 %2062, 1
  %2064 = add nsw i32 %2063, 532487669
  %2065 = bitcast i32 %2064 to float
  %2066 = fsub fast float 1.000000e+00, %2065
  %2067 = bitcast float %2066 to i32
  %2068 = sub nsw i32 2129859010, %2067
  %2069 = bitcast i32 %2068 to float
  %2070 = fmul fast float %2069, 2.000000e+00
  %2071 = bitcast float %1558 to i32
  %2072 = ashr i32 %2071, 1
  %2073 = add nsw i32 %2072, 532487669
  %2074 = bitcast i32 %2073 to float
  %2075 = fsub fast float 1.000000e+00, %2074
  %2076 = bitcast float %2075 to i32
  %2077 = sub nsw i32 2129859010, %2076
  %2078 = bitcast i32 %2077 to float
  %2079 = fmul fast float %2078, 2.000000e+00
  %2080 = fsub fast float 0x4002A9FBE0000000, %2061
  %2081 = fadd fast float %2061, 0x3FD54FDF00000000
  %2082 = bitcast float %2081 to i32
  %2083 = sub nsw i32 2129859010, %2082
  %2084 = bitcast i32 %2083 to float
  %2085 = fmul fast float %2084, %2080
  %2086 = fmul fast float %2085, %2085
  %2087 = fsub fast float 0x4002A9FBE0000000, %2070
  %2088 = fadd fast float %2070, 0x3FD54FDF00000000
  %2089 = bitcast float %2088 to i32
  %2090 = sub nsw i32 2129859010, %2089
  %2091 = bitcast i32 %2090 to float
  %2092 = fmul fast float %2091, %2087
  %2093 = fmul fast float %2092, %2092
  %2094 = fsub fast float 0x4002A9FBE0000000, %2079
  %2095 = fadd fast float %2079, 0x3FD54FDF00000000
  %2096 = bitcast float %2095 to i32
  %2097 = sub nsw i32 2129859010, %2096
  %2098 = bitcast i32 %2097 to float
  %2099 = fmul fast float %2098, %2094
  %2100 = fmul fast float %2099, %2099
  %2101 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2086)  ; FMax(a,b)
  %2102 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2093)  ; FMax(a,b)
  %2103 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2100)  ; FMax(a,b)
  %2104 = fsub fast float 1.000000e+00, %1989
  %2105 = fadd fast float %2104, %2005
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  %2107 = fsub fast float 1.000000e+00, %1976
  %2108 = fmul fast float %2047, %2107
  %2109 = fmul fast float %2050, %2050
  %2110 = fmul fast float %2109, %2108
  %2111 = fmul fast float %2110, %2052
  %2112 = fmul fast float %2107, 0xBFE99999A0000000
  %2113 = fmul fast float %2112, %1998
  %2114 = fmul fast float %2113, %2009
  %2115 = fadd fast float %2114, 1.000000e+00
  %2116 = fadd fast float %1559, -1.000000e+00
  %2117 = fmul fast float %2115, %2116
  %2118 = fadd fast float %2117, 1.000000e+00
  %2119 = fsub fast float %2101, %1556
  %2120 = fsub fast float %2102, %1557
  %2121 = fsub fast float %2103, %1558
  %2122 = fmul fast float %2111, %2119
  %2123 = fmul fast float %2111, %2120
  %2124 = fmul fast float %2111, %2121
  %2125 = fadd fast float %2122, %1556
  %2126 = fadd fast float %2123, %1557
  %2127 = fadd fast float %2124, %1558
  %2128 = fsub fast float %98, %1535
  %2129 = fsub fast float %99, %1536
  %2130 = fsub fast float %100, %1537
  %2131 = fmul fast float %2111, %2128
  %2132 = fmul fast float %2111, %2129
  %2133 = fmul fast float %2111, %2130
  %2134 = fadd fast float %2131, %1535
  %2135 = fadd fast float %2132, %1536
  %2136 = fadd fast float %2133, %1537
  %2137 = fmul fast float %2111, %2106
  %2138 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  %2139 = fsub fast float 1.000000e+00, %2138
  %2140 = fmul fast float %2137, %2139
  %2141 = fadd fast float %2140, %2138
  %2142 = fsub fast float 1.000000e+00, %1519
  %2143 = fmul fast float %2111, %2142
  %2144 = fadd fast float %2143, %1519
  %2145 = call float @dx.op.dot3.f32(i32 55, float %2134, float %2135, float %2136, float %2134, float %2135, float %2136)  ; Dot3(ax,ay,az,bx,by,bz)
  %2146 = call float @dx.op.unary.f32(i32 25, float %2145)  ; Rsqrt(value)
  %2147 = fmul fast float %2134, %2146
  %2148 = fmul fast float %2135, %2146
  %2149 = fmul fast float %2136, %2146
  br label %2150

; <label>:2150                                    ; preds = %1980, %1962
  %2151 = phi float [ %2125, %1980 ], [ %1556, %1962 ]
  %2152 = phi float [ %2126, %1980 ], [ %1557, %1962 ]
  %2153 = phi float [ %2127, %1980 ], [ %1558, %1962 ]
  %2154 = phi float [ %2034, %1980 ], [ %1596, %1962 ]
  %2155 = phi float [ %2035, %1980 ], [ %1597, %1962 ]
  %2156 = phi float [ %2036, %1980 ], [ %1598, %1962 ]
  %2157 = phi float [ %2147, %1980 ], [ %1535, %1962 ]
  %2158 = phi float [ %2148, %1980 ], [ %1536, %1962 ]
  %2159 = phi float [ %2149, %1980 ], [ %1537, %1962 ]
  %2160 = phi float [ %2141, %1980 ], [ %1559, %1962 ]
  %2161 = phi float [ %2144, %1980 ], [ %1519, %1962 ]
  %2162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2163 = extractvalue %dx.types.CBufRet.f32 %2162, 0
  %2164 = extractvalue %dx.types.CBufRet.f32 %2162, 1
  %2165 = fmul fast float %2163, 5.000000e-01
  %2166 = fmul fast float %2164, 5.000000e-01
  %2167 = extractvalue %dx.types.CBufRet.f32 %2162, 2
  %2168 = extractvalue %dx.types.CBufRet.f32 %2162, 3
  %2169 = fmul fast float %2167, 2.000000e+00
  %2170 = fmul fast float %2168, 2.000000e+00
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 0
  %2173 = extractvalue %dx.types.CBufRet.f32 %2171, 1
  %2174 = extractvalue %dx.types.CBufRet.f32 %2171, 2
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 0
  %2177 = extractvalue %dx.types.CBufRet.f32 %2175, 1
  %2178 = extractvalue %dx.types.CBufRet.f32 %2175, 2
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 0
  %2181 = extractvalue %dx.types.CBufRet.f32 %2179, 1
  %2182 = extractvalue %dx.types.CBufRet.f32 %2179, 2
  %2183 = fmul fast float %2172, %98
  %2184 = call float @dx.op.tertiary.f32(i32 46, float %99, float %2173, float %2183)  ; FMad(a,b,c)
  %2185 = call float @dx.op.tertiary.f32(i32 46, float %100, float %2174, float %2184)  ; FMad(a,b,c)
  %2186 = fmul fast float %2176, %98
  %2187 = call float @dx.op.tertiary.f32(i32 46, float %99, float %2177, float %2186)  ; FMad(a,b,c)
  %2188 = call float @dx.op.tertiary.f32(i32 46, float %100, float %2178, float %2187)  ; FMad(a,b,c)
  %2189 = fmul fast float %2180, %98
  %2190 = call float @dx.op.tertiary.f32(i32 46, float %99, float %2181, float %2189)  ; FMad(a,b,c)
  %2191 = call float @dx.op.tertiary.f32(i32 46, float %100, float %2182, float %2190)  ; FMad(a,b,c)
  %2192 = fmul fast float %219, 5.000000e+00
  %2193 = call float @dx.op.unary.f32(i32 22, float %2192)  ; Frc(value)
  %2194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %2195 = extractvalue %dx.types.CBufRet.f32 %2194, 2
  %2196 = extractvalue %dx.types.CBufRet.f32 %2194, 3
  %2197 = fmul fast float %2195, 5.120000e+02
  %2198 = fmul fast float %2196, 5.120000e+02
  %2199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %2200 = extractvalue %dx.types.CBufRet.f32 %2199, 0
  %2201 = extractvalue %dx.types.CBufRet.f32 %2199, 1
  %2202 = extractvalue %dx.types.CBufRet.f32 %2199, 2
  %2203 = extractvalue %dx.types.CBufRet.f32 %2199, 3
  %2204 = fmul fast float %2167, %95
  %2205 = fmul fast float %2168, %96
  %2206 = call float @dx.op.unary.f32(i32 6, float %83)  ; FAbs(value)
  %2207 = fmul fast float %2197, %2167
  %2208 = fmul fast float %2198, %2168
  %2209 = fmul fast float %2206, %2202
  %2210 = fmul fast float %2203, %2206
  %2211 = fsub fast float -0.000000e+00, %2210
  %2212 = fdiv fast float 3.000000e+00, %2209
  %2213 = fdiv fast float 3.000000e+00, %2211
  %2214 = call float @dx.op.binary.f32(i32 36, float %2207, float %2212)  ; FMin(a,b)
  %2215 = call float @dx.op.binary.f32(i32 36, float %2208, float %2213)  ; FMin(a,b)
  %2216 = fmul fast float %2204, %2200
  %2217 = fmul fast float %2205, %2201
  %2218 = fsub fast float %2216, %2202
  %2219 = fsub fast float %2217, %2203
  %2220 = fmul fast float %2218, %2206
  %2221 = fmul fast float %2219, %2206
  %2222 = fsub fast float -0.000000e+00, %2220
  %2223 = fsub fast float -0.000000e+00, %2221
  %2224 = fsub fast float -0.000000e+00, %2206
  %2225 = call float @dx.op.dot3.f32(i32 55, float %2222, float %2223, float %2224, float %2222, float %2223, float %2224)  ; Dot3(ax,ay,az,bx,by,bz)
  %2226 = call float @dx.op.unary.f32(i32 25, float %2225)  ; Rsqrt(value)
  %2227 = fmul fast float %2226, %2222
  %2228 = fmul fast float %2226, %2223
  %2229 = fmul fast float %2226, %2224
  %2230 = fmul fast float %2206, 0x3FEFEB8520000000
  %2231 = fmul fast float %2165, %2214
  %2232 = fmul fast float %2166, %2215
  %2233 = fmul fast float %2231, %2231
  %2234 = fmul fast float %2232, %2232
  %2235 = fadd fast float %2234, %2233
  %2236 = call float @dx.op.unary.f32(i32 24, float %2235)  ; Sqrt(value)
  %2237 = fmul fast float %2236, 3.125000e-02
  br label %2238

; <label>:2238                                    ; preds = %2425, %2150
  %2239 = phi i32 [ 0, %2150 ], [ %2528, %2425 ]
  %2240 = phi float [ 0.000000e+00, %2150 ], [ %2527, %2425 ]
  %2241 = sitofp i32 %2239 to float
  %2242 = fadd fast float %2241, %218
  %2243 = fmul fast float %2242, 0x3FF921FB60000000
  %2244 = call float @dx.op.unary.f32(i32 12, float %2243)  ; Cos(value)
  %2245 = call float @dx.op.unary.f32(i32 13, float %2243)  ; Sin(value)
  %2246 = fsub fast float -0.000000e+00, %2245
  %2247 = call float @dx.op.dot3.f32(i32 55, float %2227, float %2228, float %2229, float %2185, float %2188, float %2191)  ; Dot3(ax,ay,az,bx,by,bz)
  %2248 = call float @dx.op.unary.f32(i32 6, float %2247)  ; FAbs(value)
  %2249 = call float @dx.op.unary.f32(i32 6, float %2248)  ; FAbs(value)
  %2250 = fcmp fast ogt float %2249, 0x3EB0C6F7A0000000
  %2251 = call float @dx.op.dot3.f32(i32 55, float %2244, float %2246, float 0.000000e+00, float %2185, float %2188, float %2191)  ; Dot3(ax,ay,az,bx,by,bz)
  %2252 = fsub fast float -0.000000e+00, %2251
  %2253 = fdiv fast float %2252, %2248
  %2254 = select i1 %2250, float %2253, float 0.000000e+00
  %2255 = fmul fast float %2254, %2254
  %2256 = fadd fast float %2255, 1.000000e+00
  %2257 = call float @dx.op.unary.f32(i32 25, float %2256)  ; Rsqrt(value)
  %2258 = fmul fast float %2254, %2257
  br label %2259

; <label>:2259                                    ; preds = %2259, %2238
  %2260 = phi float [ %2258, %2238 ], [ %2338, %2259 ]
  %2261 = phi float [ 6.000000e+00, %2238 ], [ %2326, %2259 ]
  %2262 = phi i32 [ 0, %2238 ], [ %2339, %2259 ]
  %2263 = sitofp i32 %2262 to float
  %2264 = fadd fast float %2263, %2193
  %2265 = fmul fast float %2264, 5.000000e-01
  %2266 = fmul fast float %2265, %2265
  %2267 = fmul fast float %2266, %2237
  %2268 = call float @dx.op.binary.f32(i32 36, float %2267, float 3.000000e+00)  ; FMin(a,b)
  %2269 = fadd fast float %2268, 1.000000e+00
  %2270 = fmul fast float %2266, %2214
  %2271 = fmul fast float %2266, %2215
  %2272 = fadd fast float %2270, %2169
  %2273 = fmul fast float %2272, %2244
  %2274 = fadd fast float %2273, %2204
  %2275 = fadd fast float %2271, %2170
  %2276 = fmul fast float %2275, %2245
  %2277 = fadd fast float %2276, %2205
  %2278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %52, float %2274, float %2277, float undef, float undef, i32 0, i32 0, i32 undef, float %2269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = fcmp fast ogt float %2279, -1.000000e+00
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2283 = select i1 %2280, float %2282, float 1.000000e+00
  %2284 = fadd fast float %2279, 1.000000e+00
  %2285 = fmul fast float %2283, %2284
  %2286 = call float @dx.op.unary.f32(i32 6, float %2285)  ; FAbs(value)
  %2287 = call float @dx.op.unary.f32(i32 6, float %2286)  ; FAbs(value)
  %2288 = fmul fast float %2274, %2200
  %2289 = fmul fast float %2277, %2201
  %2290 = fsub fast float %2288, %2202
  %2291 = fsub fast float %2289, %2203
  %2292 = fmul fast float %2290, %2287
  %2293 = fmul fast float %2291, %2287
  %2294 = fsub fast float %2292, %2220
  %2295 = fsub fast float %2293, %2221
  %2296 = fsub fast float %2287, %2230
  %2297 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2294, float %2295, float %2296)  ; Dot3(ax,ay,az,bx,by,bz)
  %2298 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2185, float %2188, float %2191)  ; Dot3(ax,ay,az,bx,by,bz)
  %2299 = fsub fast float -0.000000e+00, %2298
  %2300 = call float @dx.op.dot3.f32(i32 55, float %2294, float %2295, float %2296, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2301 = call float @dx.op.unary.f32(i32 25, float %2297)  ; Rsqrt(value)
  %2302 = fmul fast float %2301, %2300
  %2303 = bitcast float %2297 to i32
  %2304 = ashr i32 %2303, 1
  %2305 = add nsw i32 %2304, 532487669
  %2306 = bitcast i32 %2305 to float
  %2307 = fmul fast float %2306, 0x3FE5555640000000
  %2308 = fsub fast float 0x40000000C0000000, %2307
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2310 = fmul fast float %2306, 0x3FCC71C780000000
  %2311 = fsub fast float 0x3FF55555A0000000, %2310
  %2312 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2313 = fmul fast float %2287, 0x3F947AE140000000
  %2314 = fadd fast float %2313, -1.000000e+00
  %2315 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2316 = fsub fast float %2312, %2309
  %2317 = fmul fast float %2315, %2316
  %2318 = fadd fast float %2317, %2309
  %2319 = fmul fast float %2286, %83
  %2320 = fcmp fast ogt float %2319, 0.000000e+00
  %2321 = select i1 %2320, float %2318, float 0.000000e+00
  %2322 = fadd fast float %2302, 1.000000e+00
  %2323 = fmul fast float %2321, %2322
  %2324 = fadd fast float %2323, -1.000000e+00
  %2325 = fcmp fast ogt float %2324, %2260
  %2326 = select i1 %2325, float %2299, float %2261
  %2327 = fsub fast float %2299, %2326
  %2328 = fmul fast float %2327, 0x400AAAA4C0000000
  %2329 = fadd fast float %2328, 0xBFDFFFF900000000
  %2330 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  %2331 = fmul fast float %2298, 0x401AAAB640000000
  %2332 = fadd fast float %2331, 0x3FF0000700000000
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  %2334 = fmul fast float %2330, 2.000000e+00
  %2335 = fmul fast float %2334, %2333
  %2336 = fsub fast float %2260, %2335
  %2337 = fcmp ole float %2324, %2336
  %2338 = select i1 %2337, float %2336, float %2324
  %2339 = add nuw nsw i32 %2262, 1
  %2340 = icmp eq i32 %2339, 2
  br i1 %2340, label %2341, label %2259

; <label>:2341                                    ; preds = %2259
  %2342 = fsub fast float -0.000000e+00, %2258
  br label %2343

; <label>:2343                                    ; preds = %2343, %2341
  %2344 = phi float [ %2342, %2341 ], [ %2422, %2343 ]
  %2345 = phi float [ 6.000000e+00, %2341 ], [ %2410, %2343 ]
  %2346 = phi i32 [ 0, %2341 ], [ %2423, %2343 ]
  %2347 = sitofp i32 %2346 to float
  %2348 = fadd fast float %2347, %2193
  %2349 = fmul fast float %2348, 5.000000e-01
  %2350 = fmul fast float %2349, %2349
  %2351 = fmul fast float %2350, %2237
  %2352 = call float @dx.op.binary.f32(i32 36, float %2351, float 3.000000e+00)  ; FMin(a,b)
  %2353 = fadd fast float %2352, 1.000000e+00
  %2354 = fmul fast float %2350, %2214
  %2355 = fmul fast float %2350, %2215
  %2356 = fadd fast float %2354, %2169
  %2357 = fmul fast float %2244, %2356
  %2358 = fsub fast float %2204, %2357
  %2359 = fadd fast float %2355, %2170
  %2360 = fmul fast float %2245, %2359
  %2361 = fsub fast float %2205, %2360
  %2362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %52, float %2358, float %2361, float undef, float undef, i32 0, i32 0, i32 undef, float %2353)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2363 = extractvalue %dx.types.ResRet.f32 %2362, 0
  %2364 = fcmp fast ogt float %2363, -1.000000e+00
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 1
  %2367 = select i1 %2364, float %2366, float 1.000000e+00
  %2368 = fadd fast float %2363, 1.000000e+00
  %2369 = fmul fast float %2367, %2368
  %2370 = call float @dx.op.unary.f32(i32 6, float %2369)  ; FAbs(value)
  %2371 = call float @dx.op.unary.f32(i32 6, float %2370)  ; FAbs(value)
  %2372 = fmul fast float %2358, %2200
  %2373 = fmul fast float %2361, %2201
  %2374 = fsub fast float %2372, %2202
  %2375 = fsub fast float %2373, %2203
  %2376 = fmul fast float %2374, %2371
  %2377 = fmul fast float %2375, %2371
  %2378 = fsub fast float %2376, %2220
  %2379 = fsub fast float %2377, %2221
  %2380 = fsub fast float %2371, %2230
  %2381 = call float @dx.op.dot3.f32(i32 55, float %2378, float %2379, float %2380, float %2378, float %2379, float %2380)  ; Dot3(ax,ay,az,bx,by,bz)
  %2382 = call float @dx.op.dot3.f32(i32 55, float %2378, float %2379, float %2380, float %2185, float %2188, float %2191)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = fsub fast float -0.000000e+00, %2382
  %2384 = call float @dx.op.dot3.f32(i32 55, float %2378, float %2379, float %2380, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2385 = call float @dx.op.unary.f32(i32 25, float %2381)  ; Rsqrt(value)
  %2386 = fmul fast float %2385, %2384
  %2387 = bitcast float %2381 to i32
  %2388 = ashr i32 %2387, 1
  %2389 = add nsw i32 %2388, 532487669
  %2390 = bitcast i32 %2389 to float
  %2391 = fmul fast float %2390, 0x3FE5555640000000
  %2392 = fsub fast float 0x40000000C0000000, %2391
  %2393 = call float @dx.op.unary.f32(i32 7, float %2392)  ; Saturate(value)
  %2394 = fmul fast float %2390, 0x3FCC71C780000000
  %2395 = fsub fast float 0x3FF55555A0000000, %2394
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = fmul fast float %2371, 0x3F947AE140000000
  %2398 = fadd fast float %2397, -1.000000e+00
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2400 = fsub fast float %2396, %2393
  %2401 = fmul fast float %2399, %2400
  %2402 = fadd fast float %2401, %2393
  %2403 = fmul fast float %2370, %83
  %2404 = fcmp fast ogt float %2403, 0.000000e+00
  %2405 = select i1 %2404, float %2402, float 0.000000e+00
  %2406 = fadd fast float %2386, 1.000000e+00
  %2407 = fmul fast float %2405, %2406
  %2408 = fadd fast float %2407, -1.000000e+00
  %2409 = fcmp fast ogt float %2408, %2344
  %2410 = select i1 %2409, float %2383, float %2345
  %2411 = fsub fast float %2383, %2410
  %2412 = fmul fast float %2411, 0x400AAAA4C0000000
  %2413 = fadd fast float %2412, 0xBFDFFFF900000000
  %2414 = call float @dx.op.unary.f32(i32 7, float %2413)  ; Saturate(value)
  %2415 = fmul fast float %2382, 0x401AAAB640000000
  %2416 = fadd fast float %2415, 0x3FF0000700000000
  %2417 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2418 = fmul fast float %2414, 2.000000e+00
  %2419 = fmul fast float %2418, %2417
  %2420 = fsub fast float %2344, %2419
  %2421 = fcmp ole float %2408, %2420
  %2422 = select i1 %2421, float %2420, float %2408
  %2423 = add nuw nsw i32 %2346, 1
  %2424 = icmp eq i32 %2423, 2
  br i1 %2424, label %2425, label %2343

; <label>:2425                                    ; preds = %2343
  %2426 = fmul fast float %2229, %2246
  %2427 = fmul fast float %2229, %2244
  %2428 = fsub fast float -0.000000e+00, %2427
  %2429 = fmul fast float %2244, %2228
  %2430 = fmul fast float %2227, %2246
  %2431 = fsub fast float %2429, %2430
  %2432 = call float @dx.op.dot3.f32(i32 55, float %2185, float %2188, float %2191, float %2426, float %2428, float %2431)  ; Dot3(ax,ay,az,bx,by,bz)
  %2433 = fmul fast float %2432, %2426
  %2434 = fmul fast float %2432, %2428
  %2435 = fmul fast float %2432, %2431
  %2436 = fsub fast float %2185, %2433
  %2437 = fsub fast float %2188, %2434
  %2438 = fsub fast float %2191, %2435
  %2439 = fmul fast float %2436, %2436
  %2440 = fmul fast float %2437, %2437
  %2441 = fadd fast float %2439, %2440
  %2442 = fmul fast float %2438, %2438
  %2443 = fadd fast float %2441, %2442
  %2444 = call float @dx.op.unary.f32(i32 24, float %2443)  ; Sqrt(value)
  %2445 = call float @dx.op.dot3.f32(i32 55, float %2244, float %2246, float 0.000000e+00, float %2436, float %2437, float %2438)  ; Dot3(ax,ay,az,bx,by,bz)
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2244, float %2246, float 0.000000e+00, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = fmul fast float %2446, %2227
  %2448 = fmul fast float %2446, %2228
  %2449 = fmul fast float %2446, %2229
  %2450 = call float @dx.op.dot3.f32(i32 55, float %2447, float %2448, float %2449, float %2436, float %2437, float %2438)  ; Dot3(ax,ay,az,bx,by,bz)
  %2451 = fcmp fast oge float %2445, %2450
  %2452 = fdiv fast float 1.000000e+00, %2444
  %2453 = call float @dx.op.dot3.f32(i32 55, float %2436, float %2437, float %2438, float %2227, float %2228, float %2229)  ; Dot3(ax,ay,az,bx,by,bz)
  %2454 = fmul fast float %2453, %2452
  %2455 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2456 = fmul fast float %2455, %2455
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = bitcast float %2457 to i32
  %2459 = ashr i32 %2458, 1
  %2460 = add nsw i32 %2459, 532487669
  %2461 = bitcast i32 %2460 to float
  %2462 = call float @dx.op.unary.f32(i32 6, float %2455)  ; FAbs(value)
  %2463 = fmul fast float %2462, 0x3FC40AE960000000
  %2464 = fsub fast float 0x3FF921FB60000000, %2463
  %2465 = fsub fast float 1.000000e+00, %2462
  %2466 = bitcast float %2465 to i32
  %2467 = ashr i32 %2466, 1
  %2468 = add nsw i32 %2467, 532487669
  %2469 = bitcast i32 %2468 to float
  %2470 = fmul fast float %2469, %2464
  %2471 = fcmp fast oge float %2455, 0.000000e+00
  %2472 = fsub fast float 0x400921FB60000000, %2470
  %2473 = select i1 %2471, float %2470, float %2472
  %2474 = fsub fast float -0.000000e+00, %2461
  %2475 = select i1 %2451, float %2474, float %2461
  %2476 = fsub fast float -0.000000e+00, %2473
  %2477 = select i1 %2451, float %2476, float %2473
  %2478 = call float @dx.op.unary.f32(i32 6, float %2338)  ; FAbs(value)
  %2479 = fmul fast float %2478, 0x3FC40AE960000000
  %2480 = fsub fast float 0x3FF921FB60000000, %2479
  %2481 = fsub fast float 1.000000e+00, %2478
  %2482 = bitcast float %2481 to i32
  %2483 = ashr i32 %2482, 1
  %2484 = add nsw i32 %2483, 532487669
  %2485 = bitcast i32 %2484 to float
  %2486 = fmul fast float %2485, %2480
  %2487 = fcmp fast oge float %2338, 0.000000e+00
  %2488 = fsub fast float 0x400921FB60000000, %2486
  %2489 = select i1 %2487, float %2486, float %2488
  %2490 = call float @dx.op.unary.f32(i32 6, float %2422)  ; FAbs(value)
  %2491 = fmul fast float %2490, 0x3FC40AE960000000
  %2492 = fsub fast float 0x3FF921FB60000000, %2491
  %2493 = fsub fast float 1.000000e+00, %2490
  %2494 = bitcast float %2493 to i32
  %2495 = ashr i32 %2494, 1
  %2496 = add nsw i32 %2495, 532487669
  %2497 = bitcast i32 %2496 to float
  %2498 = fmul fast float %2497, %2492
  %2499 = fcmp fast oge float %2422, 0.000000e+00
  %2500 = fsub fast float 0x400921FB60000000, %2498
  %2501 = select i1 %2499, float %2498, float %2500
  %2502 = fsub fast float -0.000000e+00, %2477
  %2503 = fsub fast float %2502, %2489
  %2504 = call float @dx.op.binary.f32(i32 35, float %2503, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2505 = call float @dx.op.binary.f32(i32 36, float %2504, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2506 = fadd fast float %2477, %2505
  %2507 = fsub fast float %2501, %2477
  %2508 = call float @dx.op.binary.f32(i32 35, float %2507, float 0xBFF921FB60000000)  ; FMax(a,b)
  %2509 = call float @dx.op.binary.f32(i32 36, float %2508, float 0x3FF921FB60000000)  ; FMin(a,b)
  %2510 = fadd fast float %2477, %2509
  %2511 = fmul fast float %2506, 2.000000e+00
  %2512 = fsub fast float %2511, %2477
  %2513 = call float @dx.op.unary.f32(i32 12, float %2512)  ; Cos(value)
  %2514 = fsub fast float -0.000000e+00, %2513
  %2515 = fmul fast float %2510, 2.000000e+00
  %2516 = fsub fast float %2515, %2477
  %2517 = call float @dx.op.unary.f32(i32 12, float %2516)  ; Cos(value)
  %2518 = fmul fast float %2455, 2.000000e+00
  %2519 = fadd fast float %2510, %2506
  %2520 = fmul fast float %2475, %2519
  %2521 = fmul fast float %2520, 2.000000e+00
  %2522 = fsub fast float %2514, %2517
  %2523 = fadd fast float %2522, %2518
  %2524 = fadd fast float %2523, %2521
  %2525 = fmul fast float %2444, 2.500000e-01
  %2526 = fmul fast float %2525, %2524
  %2527 = fadd fast float %2526, %2240
  %2528 = add nuw nsw i32 %2239, 1
  %2529 = icmp eq i32 %2528, 2
  br i1 %2529, label %2530, label %2238

; <label>:2530                                    ; preds = %2425
  %2531 = fmul fast float %2527, 5.000000e-01
  %2532 = fsub fast float -0.000000e+00, %145
  %2533 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %2534 = call float @dx.op.unary.f32(i32 25, float %2533)  ; Rsqrt(value)
  %2535 = fmul fast float %2534, %143
  %2536 = fmul fast float %2534, %144
  %2537 = fmul fast float %2534, %145
  %2538 = fsub fast float -0.000000e+00, %2535
  %2539 = fsub fast float -0.000000e+00, %2536
  %2540 = fsub fast float -0.000000e+00, %2537
  %2541 = select i1 %205, float 0.000000e+00, float %2153
  %2542 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2158, float %2159, float %2538, float %2539, float %2540)  ; Dot3(ax,ay,az,bx,by,bz)
  %2543 = call float @dx.op.unary.f32(i32 7, float %2542)  ; Saturate(value)
  %2544 = call float @dx.op.dot3.f32(i32 55, float %2535, float %2536, float %2537, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2545 = fmul fast float %2544, 2.000000e+00
  %2546 = fmul fast float %2545, %2157
  %2547 = fmul fast float %2545, %2158
  %2548 = fmul fast float %2545, %2159
  %2549 = fsub fast float %2535, %2546
  %2550 = fsub fast float %2536, %2547
  %2551 = fsub fast float %2537, %2548
  %2552 = call float @dx.op.binary.f32(i32 36, float %2161, float %2531)  ; FMin(a,b)
  %2553 = fsub fast float 1.000000e+00, %2552
  %2554 = bitcast float %2553 to i32
  %2555 = ashr i32 %2554, 1
  %2556 = add nsw i32 %2555, 532487669
  %2557 = bitcast i32 %2556 to float
  %2558 = fsub fast float 1.000000e+00, %2160
  %2559 = call float @dx.op.binary.f32(i32 35, float %2558, float 0x3F847AE140000000)  ; FMax(a,b)
  %2560 = fmul fast float %2559, %2559
  %2561 = fmul fast float %2560, %2560
  %2562 = call float @dx.op.unary.f32(i32 7, float %2543)  ; Saturate(value)
  %2563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %51, float %2557, float %2561, float %2562, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2564 = extractvalue %dx.types.ResRet.f32 %2563, 0
  %2565 = fsub fast float 1.000000e+00, %2161
  %2566 = bitcast float %2565 to i32
  %2567 = sub nsw i32 2129859010, %2566
  %2568 = bitcast i32 %2567 to float
  %2569 = call float @dx.op.dot3.f32(i32 55, float %67, float %63, float %59, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2570 = fmul fast float %2569, 0x3FD20DD760000000
  %2571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %2572 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %2573 = fcmp fast oeq float %2572, 0.000000e+00
  %2574 = fcmp fast oeq float %2571, 0.000000e+00
  %2575 = or i1 %2574, %2573
  br i1 %2575, label %2605, label %2576

; <label>:2576                                    ; preds = %2530
  %2577 = fsub fast float -0.000000e+00, %70
  %2578 = fsub fast float -0.000000e+00, %68
  %2579 = call float @dx.op.unary.f32(i32 24, float %2572)  ; Sqrt(value)
  %2580 = fdiv fast float %2579, %2571
  %2581 = fcmp fast ogt float %2580, 0x3FFB6F8900000000
  %2582 = select i1 %2581, float 0x3FFB6F8900000000, float %2580
  %2583 = fmul fast float %2582, 0x3FE8A23460000000
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2585 = call float @dx.op.binary.f32(i32 35, float %2582, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2586 = fmul fast float %2584, %2571
  %2587 = fmul fast float %2585, 0x3FF279A740000000
  %2588 = fadd fast float %2587, -1.000000e+00
  %2589 = call float @dx.op.dot3.f32(i32 55, float %2577, float %2578, float %69, float %2577, float %2578, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %2590 = call float @dx.op.unary.f32(i32 25, float %2589)  ; Rsqrt(value)
  %2591 = fmul fast float %2590, %2577
  %2592 = fmul fast float %2590, %2578
  %2593 = fmul fast float %2590, %69
  %2594 = fmul fast float %2588, %2588
  %2595 = fsub fast float 1.000000e+00, %2594
  %2596 = fmul fast float %2585, 0x40005F8BE0000000
  %2597 = fsub fast float 0x400C5BF8A0000000, %2596
  %2598 = fdiv fast float %2586, %2597
  %2599 = fmul fast float %2598, 0x3FEE31C3C0000000
  %2600 = fmul fast float %2599, %2595
  %2601 = fmul fast float %2585, 0x3FDACB7480000000
  %2602 = fadd fast float %2601, 0xBFD7347680000000
  %2603 = fmul fast float %2602, %2598
  %2604 = fmul fast float %2603, %2595
  br label %2605

; <label>:2605                                    ; preds = %2576, %2530
  %2606 = phi float [ %2591, %2576 ], [ 0.000000e+00, %2530 ]
  %2607 = phi float [ %2592, %2576 ], [ 0.000000e+00, %2530 ]
  %2608 = phi float [ %2593, %2576 ], [ 0.000000e+00, %2530 ]
  %2609 = phi float [ %2600, %2576 ], [ 0.000000e+00, %2530 ]
  %2610 = phi float [ %2604, %2576 ], [ 0.000000e+00, %2530 ]
  %2611 = call float @dx.op.dot3.f32(i32 55, float %2606, float %2607, float %2608, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2612 = fmul fast float %2611, 0x3FDF454380000000
  %2613 = fmul fast float %2611, %2611
  %2614 = fmul fast float %2613, 0x3FEE471020000000
  %2615 = fadd fast float %2614, 0xBFD42F6020000000
  %2616 = fmul fast float %2571, 0x3FD20DD760000000
  %2617 = fmul fast float %2615, %2610
  %2618 = fadd fast float %2617, %2616
  %2619 = fmul fast float %2612, %2609
  %2620 = fadd fast float %2618, %2619
  %2621 = fsub fast float %2618, %2619
  %2622 = call float @dx.op.dot3.f32(i32 55, float %2606, float %2607, float %2608, float %2549, float %2550, float %2551)  ; Dot3(ax,ay,az,bx,by,bz)
  %2623 = fmul fast float %2622, 0x3FDF454380000000
  %2624 = fmul fast float %2622, %2622
  %2625 = fmul fast float %2624, 0x3FEE471020000000
  %2626 = fadd fast float %2625, 0xBFD42F6020000000
  %2627 = call float @dx.op.dot3.f32(i32 55, float %2571, float %2609, float %2610, float 0x3FD20DD760000000, float %2623, float %2626)  ; Dot3(ax,ay,az,bx,by,bz)
  %2628 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %2629 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %2630 = fcmp fast oeq float %2629, 0.000000e+00
  %2631 = fcmp fast oeq float %2628, 0.000000e+00
  %2632 = or i1 %2631, %2630
  br i1 %2632, label %2662, label %2633

; <label>:2633                                    ; preds = %2605
  %2634 = fsub fast float -0.000000e+00, %66
  %2635 = fsub fast float -0.000000e+00, %64
  %2636 = call float @dx.op.unary.f32(i32 24, float %2629)  ; Sqrt(value)
  %2637 = fdiv fast float %2636, %2628
  %2638 = fcmp fast ogt float %2637, 0x3FFB6F8900000000
  %2639 = select i1 %2638, float 0x3FFB6F8900000000, float %2637
  %2640 = fmul fast float %2639, 0x3FE8A23460000000
  %2641 = call float @dx.op.unary.f32(i32 7, float %2640)  ; Saturate(value)
  %2642 = call float @dx.op.binary.f32(i32 35, float %2639, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2643 = fmul fast float %2641, %2628
  %2644 = fmul fast float %2642, 0x3FF279A740000000
  %2645 = fadd fast float %2644, -1.000000e+00
  %2646 = call float @dx.op.dot3.f32(i32 55, float %2634, float %2635, float %65, float %2634, float %2635, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %2647 = call float @dx.op.unary.f32(i32 25, float %2646)  ; Rsqrt(value)
  %2648 = fmul fast float %2647, %2634
  %2649 = fmul fast float %2647, %2635
  %2650 = fmul fast float %2647, %65
  %2651 = fmul fast float %2645, %2645
  %2652 = fsub fast float 1.000000e+00, %2651
  %2653 = fmul fast float %2642, 0x40005F8BE0000000
  %2654 = fsub fast float 0x400C5BF8A0000000, %2653
  %2655 = fdiv fast float %2643, %2654
  %2656 = fmul fast float %2655, 0x3FEE31C3C0000000
  %2657 = fmul fast float %2656, %2652
  %2658 = fmul fast float %2642, 0x3FDACB7480000000
  %2659 = fadd fast float %2658, 0xBFD7347680000000
  %2660 = fmul fast float %2659, %2655
  %2661 = fmul fast float %2660, %2652
  br label %2662

; <label>:2662                                    ; preds = %2633, %2605
  %2663 = phi float [ %2648, %2633 ], [ 0.000000e+00, %2605 ]
  %2664 = phi float [ %2649, %2633 ], [ 0.000000e+00, %2605 ]
  %2665 = phi float [ %2650, %2633 ], [ 0.000000e+00, %2605 ]
  %2666 = phi float [ %2657, %2633 ], [ 0.000000e+00, %2605 ]
  %2667 = phi float [ %2661, %2633 ], [ 0.000000e+00, %2605 ]
  %2668 = call float @dx.op.dot3.f32(i32 55, float %2663, float %2664, float %2665, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2669 = fmul fast float %2668, 0x3FDF454380000000
  %2670 = fmul fast float %2668, %2668
  %2671 = fmul fast float %2670, 0x3FEE471020000000
  %2672 = fadd fast float %2671, 0xBFD42F6020000000
  %2673 = fmul fast float %2628, 0x3FD20DD760000000
  %2674 = fmul fast float %2672, %2667
  %2675 = fadd fast float %2674, %2673
  %2676 = fmul fast float %2669, %2666
  %2677 = fadd fast float %2675, %2676
  %2678 = fsub fast float %2675, %2676
  %2679 = call float @dx.op.dot3.f32(i32 55, float %2663, float %2664, float %2665, float %2549, float %2550, float %2551)  ; Dot3(ax,ay,az,bx,by,bz)
  %2680 = fmul fast float %2679, 0x3FDF454380000000
  %2681 = fmul fast float %2679, %2679
  %2682 = fmul fast float %2681, 0x3FEE471020000000
  %2683 = fadd fast float %2682, 0xBFD42F6020000000
  %2684 = call float @dx.op.dot3.f32(i32 55, float %2628, float %2666, float %2667, float 0x3FD20DD760000000, float %2680, float %2683)  ; Dot3(ax,ay,az,bx,by,bz)
  %2685 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %2686 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %2687 = fcmp fast oeq float %2686, 0.000000e+00
  %2688 = fcmp fast oeq float %2685, 0.000000e+00
  %2689 = or i1 %2688, %2687
  br i1 %2689, label %2719, label %2690

; <label>:2690                                    ; preds = %2662
  %2691 = fsub fast float -0.000000e+00, %62
  %2692 = fsub fast float -0.000000e+00, %60
  %2693 = call float @dx.op.unary.f32(i32 24, float %2686)  ; Sqrt(value)
  %2694 = fdiv fast float %2693, %2685
  %2695 = fcmp fast ogt float %2694, 0x3FFB6F8900000000
  %2696 = select i1 %2695, float 0x3FFB6F8900000000, float %2694
  %2697 = fmul fast float %2696, 0x3FE8A23460000000
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2699 = call float @dx.op.binary.f32(i32 35, float %2696, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2700 = fmul fast float %2698, %2685
  %2701 = fmul fast float %2699, 0x3FF279A740000000
  %2702 = fadd fast float %2701, -1.000000e+00
  %2703 = call float @dx.op.dot3.f32(i32 55, float %2691, float %2692, float %61, float %2691, float %2692, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %2704 = call float @dx.op.unary.f32(i32 25, float %2703)  ; Rsqrt(value)
  %2705 = fmul fast float %2704, %2691
  %2706 = fmul fast float %2704, %2692
  %2707 = fmul fast float %2704, %61
  %2708 = fmul fast float %2702, %2702
  %2709 = fsub fast float 1.000000e+00, %2708
  %2710 = fmul fast float %2699, 0x40005F8BE0000000
  %2711 = fsub fast float 0x400C5BF8A0000000, %2710
  %2712 = fdiv fast float %2700, %2711
  %2713 = fmul fast float %2712, 0x3FEE31C3C0000000
  %2714 = fmul fast float %2713, %2709
  %2715 = fmul fast float %2699, 0x3FDACB7480000000
  %2716 = fadd fast float %2715, 0xBFD7347680000000
  %2717 = fmul fast float %2716, %2712
  %2718 = fmul fast float %2717, %2709
  br label %2719

; <label>:2719                                    ; preds = %2690, %2662
  %2720 = phi float [ %2705, %2690 ], [ 0.000000e+00, %2662 ]
  %2721 = phi float [ %2706, %2690 ], [ 0.000000e+00, %2662 ]
  %2722 = phi float [ %2707, %2690 ], [ 0.000000e+00, %2662 ]
  %2723 = phi float [ %2714, %2690 ], [ 0.000000e+00, %2662 ]
  %2724 = phi float [ %2718, %2690 ], [ 0.000000e+00, %2662 ]
  %2725 = call float @dx.op.dot3.f32(i32 55, float %2720, float %2721, float %2722, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %2726 = fmul fast float %2725, 0x3FDF454380000000
  %2727 = fmul fast float %2725, %2725
  %2728 = fmul fast float %2727, 0x3FEE471020000000
  %2729 = fadd fast float %2728, 0xBFD42F6020000000
  %2730 = fmul fast float %2685, 0x3FD20DD760000000
  %2731 = fmul fast float %2729, %2724
  %2732 = fadd fast float %2731, %2730
  %2733 = fmul fast float %2726, %2723
  %2734 = fadd fast float %2732, %2733
  %2735 = fsub fast float %2732, %2733
  %2736 = call float @dx.op.dot3.f32(i32 55, float %2720, float %2721, float %2722, float %2549, float %2550, float %2551)  ; Dot3(ax,ay,az,bx,by,bz)
  %2737 = fmul fast float %2736, 0x3FDF454380000000
  %2738 = fmul fast float %2736, %2736
  %2739 = fmul fast float %2738, 0x3FEE471020000000
  %2740 = fadd fast float %2739, 0xBFD42F6020000000
  %2741 = call float @dx.op.dot3.f32(i32 55, float %2685, float %2723, float %2724, float 0x3FD20DD760000000, float %2737, float %2740)  ; Dot3(ax,ay,az,bx,by,bz)
  %2742 = call float @dx.op.binary.f32(i32 35, float %2620, float 0.000000e+00)  ; FMax(a,b)
  %2743 = call float @dx.op.binary.f32(i32 35, float %2677, float 0.000000e+00)  ; FMax(a,b)
  %2744 = call float @dx.op.binary.f32(i32 35, float %2734, float 0.000000e+00)  ; FMax(a,b)
  %2745 = call float @dx.op.binary.f32(i32 35, float %2621, float 0.000000e+00)  ; FMax(a,b)
  %2746 = call float @dx.op.binary.f32(i32 35, float %2678, float 0.000000e+00)  ; FMax(a,b)
  %2747 = call float @dx.op.binary.f32(i32 35, float %2735, float 0.000000e+00)  ; FMax(a,b)
  %2748 = call float @dx.op.binary.f32(i32 35, float %2627, float 0.000000e+00)  ; FMax(a,b)
  %2749 = call float @dx.op.binary.f32(i32 35, float %2684, float 0.000000e+00)  ; FMax(a,b)
  %2750 = call float @dx.op.binary.f32(i32 35, float %2741, float 0.000000e+00)  ; FMax(a,b)
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2753 = call float @dx.op.binary.f32(i32 36, float %2154, float %2752)  ; FMin(a,b)
  %2754 = fmul fast float %2753, %2553
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = bitcast float %2755 to i32
  %2757 = sub nsw i32 2129859010, %2756
  %2758 = bitcast i32 %2757 to float
  %2759 = call float @dx.op.binary.f32(i32 36, float %2155, float %2752)  ; FMin(a,b)
  %2760 = fmul fast float %2759, %2553
  %2761 = fsub fast float 1.000000e+00, %2760
  %2762 = bitcast float %2761 to i32
  %2763 = sub nsw i32 2129859010, %2762
  %2764 = bitcast i32 %2763 to float
  %2765 = call float @dx.op.binary.f32(i32 36, float %2156, float %2752)  ; FMin(a,b)
  %2766 = fmul fast float %2765, %2553
  %2767 = fsub fast float 1.000000e+00, %2766
  %2768 = bitcast float %2767 to i32
  %2769 = sub nsw i32 2129859010, %2768
  %2770 = bitcast i32 %2769 to float
  %2771 = fmul fast float %2742, %2552
  %2772 = fmul fast float %2771, %2758
  %2773 = fmul fast float %2743, %2552
  %2774 = fmul fast float %2773, %2764
  %2775 = fmul fast float %2744, %2552
  %2776 = fmul fast float %2775, %2770
  %2777 = call float @dx.op.binary.f32(i32 36, float %2151, float %2752)  ; FMin(a,b)
  %2778 = fmul fast float %2777, %2553
  %2779 = fsub fast float 1.000000e+00, %2778
  %2780 = bitcast float %2779 to i32
  %2781 = sub nsw i32 2129859010, %2780
  %2782 = bitcast i32 %2781 to float
  %2783 = call float @dx.op.binary.f32(i32 36, float %2152, float %2752)  ; FMin(a,b)
  %2784 = fmul fast float %2783, %2553
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = bitcast float %2785 to i32
  %2787 = sub nsw i32 2129859010, %2786
  %2788 = bitcast i32 %2787 to float
  %2789 = call float @dx.op.binary.f32(i32 36, float %2541, float %2752)  ; FMin(a,b)
  %2790 = fmul fast float %2789, %2553
  %2791 = fsub fast float 1.000000e+00, %2790
  %2792 = bitcast float %2791 to i32
  %2793 = sub nsw i32 2129859010, %2792
  %2794 = bitcast i32 %2793 to float
  %2795 = fmul fast float %2748, %2552
  %2796 = fmul fast float %2795, %2782
  %2797 = fmul fast float %2749, %2552
  %2798 = fmul fast float %2797, %2788
  %2799 = fmul fast float %2750, %2552
  %2800 = fmul fast float %2799, %2794
  %2801 = call float @dx.op.dot3.f32(i32 55, float %2772, float %2774, float %2776, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2802 = select i1 %205, float 0.000000e+00, float %2772
  %2803 = select i1 %205, float %2801, float %2774
  %2804 = select i1 %205, float 0.000000e+00, float %2776
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2745, float %2746, float %2747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = select i1 %205, float 0.000000e+00, float %2745
  %2807 = select i1 %205, float %2805, float %2746
  %2808 = select i1 %205, float 0.000000e+00, float %2747
  %2809 = call float @dx.op.dot3.f32(i32 55, float %2796, float %2798, float %2800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2810 = select i1 %205, float 0.000000e+00, float %2796
  %2811 = select i1 %205, float %2809, float %2798
  %2812 = select i1 %205, float 0.000000e+00, float %2800
  %2813 = fmul fast float %909, %909
  %2814 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  %2815 = fmul fast float %2543, 9.843750e-01
  %2816 = fmul fast float %2160, 9.843750e-01
  %2817 = fadd fast float %2815, 7.812500e-03
  %2818 = fadd fast float %2816, 7.812500e-03
  %2819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %2817, float %2818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2820 = extractvalue %dx.types.ResRet.f32 %2819, 0
  %2821 = extractvalue %dx.types.ResRet.f32 %2819, 1
  %2822 = extractvalue %dx.types.ResRet.f32 %2819, 2
  %2823 = extractvalue %dx.types.ResRet.f32 %2819, 3
  %2824 = fsub fast float 1.000000e+00, %2814
  %2825 = fsub fast float %2822, %2820
  %2826 = fsub fast float %2823, %2821
  %2827 = fmul fast float %2825, %2824
  %2828 = fmul fast float %2826, %2824
  %2829 = fadd fast float %2827, %2820
  %2830 = fadd fast float %2828, %2821
  %2831 = fmul fast float %2829, %2151
  %2832 = fmul fast float %2829, %2152
  %2833 = fmul fast float %2829, %2541
  %2834 = fadd fast float %2831, %2830
  %2835 = fadd fast float %2832, %2830
  %2836 = fadd fast float %2833, %2830
  %2837 = fcmp fast ogt float %1509, 0.000000e+00
  br i1 %2837, label %2838, label %2864

; <label>:2838                                    ; preds = %2719
  %2839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1509, float %2543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.ResRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.ResRet.f32 %2839, 2
  %2843 = fadd fast float %2840, -5.000000e-01
  %2844 = fadd fast float %2841, -5.000000e-01
  %2845 = fadd fast float %2842, -5.000000e-01
  %2846 = fsub fast float 1.000000e+00, %2151
  %2847 = fsub fast float 1.000000e+00, %2152
  %2848 = fsub fast float 1.000000e+00, %2541
  %2849 = fmul fast float %2151, 4.000000e+00
  %2850 = fmul fast float %2849, %2846
  %2851 = fmul fast float %2850, %2843
  %2852 = fmul fast float %2152, 4.000000e+00
  %2853 = fmul fast float %2852, %2847
  %2854 = fmul fast float %2853, %2844
  %2855 = fmul fast float %2541, 4.000000e+00
  %2856 = fmul fast float %2855, %2848
  %2857 = fmul fast float %2856, %2845
  %2858 = fadd fast float %2851, %2834
  %2859 = fadd fast float %2854, %2835
  %2860 = fadd fast float %2857, %2836
  %2861 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2862 = call float @dx.op.unary.f32(i32 7, float %2859)  ; Saturate(value)
  %2863 = call float @dx.op.unary.f32(i32 7, float %2860)  ; Saturate(value)
  br label %2864

; <label>:2864                                    ; preds = %2838, %2719
  %2865 = phi float [ %2861, %2838 ], [ %2834, %2719 ]
  %2866 = phi float [ %2862, %2838 ], [ %2835, %2719 ]
  %2867 = phi float [ %2863, %2838 ], [ %2836, %2719 ]
  %2868 = call float @dx.op.binary.f32(i32 35, float %2866, float %2867)  ; FMax(a,b)
  %2869 = call float @dx.op.binary.f32(i32 35, float %2865, float %2868)  ; FMax(a,b)
  %2870 = fsub fast float 1.000000e+00, %2869
  %2871 = fmul fast float %2869, %2160
  %2872 = fadd fast float %2871, %2160
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 2
  %2875 = extractvalue %dx.types.CBufRet.f32 %2873, 3
  %2876 = fmul fast float %2872, %2874
  %2877 = fadd fast float %2876, %2875
  %2878 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  %2879 = fsub fast float 1.000000e+00, %2564
  %2880 = fadd fast float %2879, %2878
  %2881 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2882 = fcmp fast olt float %2881, 1.000000e+00
  br i1 %2882, label %2883, label %3465

; <label>:2883                                    ; preds = %2864
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 2
  %2886 = extractvalue %dx.types.CBufRet.f32 %2884, 3
  %2887 = fmul fast float %2885, %95
  %2888 = fmul fast float %2886, %96
  %2889 = fptoui float %2887 to i32
  %2890 = fptoui float %2888 to i32
  %2891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2892 = extractvalue %dx.types.CBufRet.f32 %2891, 0
  %2893 = extractvalue %dx.types.CBufRet.f32 %2891, 2
  %2894 = extractvalue %dx.types.CBufRet.f32 %2891, 3
  %2895 = fadd fast float %83, -4.000000e+00
  %2896 = call float @dx.op.binary.f32(i32 35, float %2895, float 0.000000e+00)  ; FMax(a,b)
  %2897 = fadd fast float %2896, %2892
  %2898 = fmul fast float %2897, %2893
  %2899 = call float @dx.op.unary.f32(i32 23, float %2898)  ; Log(value)
  %2900 = fmul fast float %2899, %2894
  %2901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2902 = extractvalue %dx.types.CBufRet.f32 %2901, 2
  %2903 = fmul fast float %2900, %2902
  %2904 = call float @dx.op.unary.f32(i32 7, float %2903)  ; Saturate(value)
  %2905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.i32 %2905, 1
  %2907 = add i32 %2906, -1
  %2908 = uitofp i32 %2906 to float
  %2909 = fmul fast float %2908, %2904
  %2910 = fptoui float %2909 to i32
  %2911 = call i32 @dx.op.binary.i32(i32 40, i32 %2910, i32 %2907)  ; UMin(a,b)
  %2912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2913 = extractvalue %dx.types.CBufRet.i32 %2912, 2
  %2914 = extractvalue %dx.types.CBufRet.i32 %2912, 3
  %2915 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2890, i32 %2913, i32 %2889)  ; UMad(a,b,c)
  %2916 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2911, i32 %2914, i32 %2915)  ; UMad(a,b,c)
  %2917 = call float @dx.op.binary.f32(i32 35, float %83, float 0.000000e+00)  ; FMax(a,b)
  %2918 = fptoui float %2917 to i32
  %2919 = lshr i32 %2918, 5
  %2920 = call i32 @dx.op.binary.i32(i32 40, i32 %2919, i32 8191)  ; UMin(a,b)
  %2921 = fsub fast float %1963, %145
  %2922 = call float @dx.op.unary.f32(i32 7, float %2921)  ; Saturate(value)
  %2923 = fcmp fast ogt float %2922, 0.000000e+00
  %2924 = fcmp fast ogt float %2551, 0.000000e+00
  %2925 = and i1 %2924, %2923
  br i1 %2925, label %2926, label %2955

; <label>:2926                                    ; preds = %2883
  %2927 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2550, float %2551, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2928 = call float @dx.op.binary.f32(i32 35, float %2927, float -1.000000e+00)  ; FMax(a,b)
  %2929 = call float @dx.op.binary.f32(i32 36, float %2928, float 1.000000e+00)  ; FMin(a,b)
  %2930 = fmul fast float %2929, %2929
  %2931 = fsub fast float 1.000000e+00, %2930
  %2932 = fmul fast float %2931, 0x3FFC6E2300000000
  %2933 = fsub fast float 1.000000e+00, %2932
  %2934 = fcmp fast ogt float %2933, 0.000000e+00
  %2935 = call float @dx.op.unary.f32(i32 24, float %2933)  ; Sqrt(value)
  %2936 = fsub fast float 1.000000e+00, %2935
  %2937 = call float @dx.op.unary.f32(i32 23, float %2936)  ; Log(value)
  %2938 = fmul fast float %2937, 5.000000e+00
  %2939 = call float @dx.op.unary.f32(i32 21, float %2938)  ; Exp(value)
  %2940 = fmul fast float %2939, 0x3FEF591A60000000
  %2941 = fadd fast float %2940, 0x3F94DCB540000000
  %2942 = select i1 %2934, float %2941, float 1.000000e+00
  %2943 = fcmp fast oge float %2942, 1.000000e+00
  %2944 = fmul fast float %2927, 2.000000e+00
  %2945 = fadd fast float %2944, %2551
  %2946 = select i1 %2943, float %2945, float %2551
  %2947 = fsub fast float %2946, %2551
  %2948 = fmul fast float %2947, %2922
  %2949 = fadd fast float %2948, %2551
  %2950 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2550, float %2949, float %2549, float %2550, float %2949)  ; Dot3(ax,ay,az,bx,by,bz)
  %2951 = call float @dx.op.unary.f32(i32 25, float %2950)  ; Rsqrt(value)
  %2952 = fmul fast float %2951, %2549
  %2953 = fmul fast float %2951, %2550
  %2954 = fmul fast float %2949, %2951
  br label %2955

; <label>:2955                                    ; preds = %2926, %2883
  %2956 = phi float [ %2952, %2926 ], [ %2549, %2883 ]
  %2957 = phi float [ %2953, %2926 ], [ %2550, %2883 ]
  %2958 = phi float [ %2954, %2926 ], [ %2551, %2883 ]
  %2959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.i32 %2959, 2
  %2961 = add nsw i32 %2960, -1
  %2962 = call i32 @dx.op.binary.i32(i32 37, i32 %2961, i32 0)  ; IMax(a,b)
  %2963 = shl i32 %2920, 2
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = lshr i32 %2965, 16
  %2967 = and i32 %2965, 65535
  %2968 = lshr i32 %2965, 21
  %2969 = lshr i32 %2967, 5
  %2970 = call i32 @dx.op.binary.i32(i32 40, i32 %2969, i32 %2962)  ; UMin(a,b)
  %2971 = icmp ugt i32 %2968, %2970
  br i1 %2971, label %3353, label %2972

; <label>:2972                                    ; preds = %2955
  br label %2973

; <label>:2973                                    ; preds = %3342, %2972
  %2974 = phi float [ %3343, %3342 ], [ 0.000000e+00, %2972 ]
  %2975 = phi float [ %3344, %3342 ], [ 0.000000e+00, %2972 ]
  %2976 = phi float [ %3345, %3342 ], [ 0.000000e+00, %2972 ]
  %2977 = phi float [ %3346, %3342 ], [ 1.000000e+00, %2972 ]
  %2978 = phi i32 [ %3350, %3342 ], [ %2968, %2972 ]
  %2979 = phi float [ %3347, %3342 ], [ 0.000000e+00, %2972 ]
  %2980 = phi float [ %3348, %3342 ], [ 0.000000e+00, %2972 ]
  %2981 = phi float [ %3349, %3342 ], [ 0.000000e+00, %2972 ]
  %2982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2983 = extractvalue %dx.types.CBufRet.i32 %2982, 2
  %2984 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2916, i32 %2983, i32 %2978)  ; UMad(a,b,c)
  %2985 = shl i32 %2984, 2
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = shl i32 %2978, 5
  %2989 = sub nsw i32 %2966, %2988
  %2990 = call i32 @dx.op.binary.i32(i32 37, i32 %2989, i32 0)  ; IMax(a,b)
  %2991 = call i32 @dx.op.binary.i32(i32 38, i32 %2990, i32 31)  ; IMin(a,b)
  %2992 = sub nsw i32 1, %2966
  %2993 = add nsw i32 %2992, %2967
  %2994 = call i32 @dx.op.binary.i32(i32 37, i32 %2993, i32 0)  ; IMax(a,b)
  %2995 = call i32 @dx.op.binary.i32(i32 38, i32 %2994, i32 32)  ; IMin(a,b)
  %2996 = and i32 %2995, 31
  %2997 = shl i32 -1, %2996
  %2998 = xor i32 %2997, -1
  %2999 = and i32 %2991, 31
  %3000 = shl i32 %2998, %2999
  %3001 = icmp eq i32 %2995, 32
  %3002 = select i1 %3001, i32 -1, i32 %3000
  %3003 = and i32 %3002, %2987
  %3004 = icmp eq i32 %3003, 0
  br i1 %3004, label %3342, label %3005

; <label>:3005                                    ; preds = %2973
  br label %3006

; <label>:3006                                    ; preds = %3116, %3005
  %3007 = phi float [ %3117, %3116 ], [ %2974, %3005 ]
  %3008 = phi float [ %3118, %3116 ], [ %2975, %3005 ]
  %3009 = phi float [ %3119, %3116 ], [ %2976, %3005 ]
  %3010 = phi float [ %3120, %3116 ], [ %2977, %3005 ]
  %3011 = phi i32 [ %3019, %3116 ], [ %3003, %3005 ]
  %3012 = phi float [ %3121, %3116 ], [ %2979, %3005 ]
  %3013 = phi float [ %3122, %3116 ], [ %2980, %3005 ]
  %3014 = phi float [ %3123, %3116 ], [ %2981, %3005 ]
  %3015 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3011)  ; FirstbitLo(value)
  %3016 = add i32 %3015, %2988
  %3017 = and i32 %3015, 31
  %3018 = shl i32 1, %3017
  %3019 = xor i32 %3018, %3011
  %3020 = mul i32 %3016, 72
  %3021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.f32 %3021, 0
  %3023 = extractvalue %dx.types.ResRet.f32 %3021, 1
  %3024 = extractvalue %dx.types.ResRet.f32 %3021, 2
  %3025 = add i32 %3020, 12
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = add i32 %3020, 16
  %3029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 0
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 1
  %3032 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3033 = add i32 %3020, 28
  %3034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.f32 %3034, 0
  %3036 = add i32 %3020, 32
  %3037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.f32 %3037, 0
  %3039 = extractvalue %dx.types.ResRet.f32 %3037, 1
  %3040 = extractvalue %dx.types.ResRet.f32 %3037, 2
  %3041 = extractvalue %dx.types.ResRet.f32 %3037, 3
  %3042 = add i32 %3020, 48
  %3043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3042, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.f32 %3043, 0
  %3045 = extractvalue %dx.types.ResRet.f32 %3043, 1
  %3046 = add i32 %3020, 56
  %3047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = extractvalue %dx.types.ResRet.f32 %3047, 1
  %3050 = add i32 %3020, 64
  %3051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  %3053 = extractvalue %dx.types.ResRet.f32 %3051, 1
  %3054 = mul i32 %3016, 60
  %3055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.f32 %3055, 0
  %3057 = extractvalue %dx.types.ResRet.f32 %3055, 1
  %3058 = extractvalue %dx.types.ResRet.f32 %3055, 2
  %3059 = add i32 %3054, 12
  %3060 = add i32 %3054, 48
  %3061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  %3063 = extractvalue %dx.types.ResRet.f32 %3061, 1
  %3064 = extractvalue %dx.types.ResRet.f32 %3061, 2
  %3065 = and i32 %3027, 32767
  %3066 = bitcast float %3022 to i32
  %3067 = icmp eq i32 %3066, -1
  %3068 = bitcast float %3023 to i32
  %3069 = and i32 %3027, 32768
  %3070 = icmp ne i32 %3069, 0
  %3071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.f32 %3071, 0
  %3073 = extractvalue %dx.types.CBufRet.f32 %3071, 1
  %3074 = extractvalue %dx.types.CBufRet.f32 %3071, 2
  %3075 = fsub fast float %3056, %3072
  %3076 = fsub fast float %3057, %3073
  %3077 = fsub fast float %3058, %3074
  %3078 = fsub fast float %143, %3075
  %3079 = fsub fast float %144, %3076
  %3080 = fsub fast float %145, %3077
  %3081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.f32 %3081, 0
  %3083 = extractvalue %dx.types.ResRet.f32 %3081, 1
  %3084 = extractvalue %dx.types.ResRet.f32 %3081, 2
  %3085 = call float @dx.op.dot3.f32(i32 55, float %3078, float %3079, float %3080, float %3082, float %3083, float %3084)  ; Dot3(ax,ay,az,bx,by,bz)
  %3086 = add i32 %3054, 24
  %3087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.f32 %3087, 0
  %3089 = extractvalue %dx.types.ResRet.f32 %3087, 1
  %3090 = extractvalue %dx.types.ResRet.f32 %3087, 2
  %3091 = call float @dx.op.dot3.f32(i32 55, float %3078, float %3079, float %3080, float %3088, float %3089, float %3090)  ; Dot3(ax,ay,az,bx,by,bz)
  %3092 = add i32 %3054, 36
  %3093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.f32 %3093, 0
  %3095 = extractvalue %dx.types.ResRet.f32 %3093, 1
  %3096 = extractvalue %dx.types.ResRet.f32 %3093, 2
  %3097 = call float @dx.op.dot3.f32(i32 55, float %3078, float %3079, float %3080, float %3094, float %3095, float %3096)  ; Dot3(ax,ay,az,bx,by,bz)
  %3098 = call float @dx.op.unary.f32(i32 6, float %3085)  ; FAbs(value)
  %3099 = call float @dx.op.unary.f32(i32 6, float %3091)  ; FAbs(value)
  %3100 = call float @dx.op.unary.f32(i32 6, float %3097)  ; FAbs(value)
  %3101 = fsub fast float %3062, %3098
  %3102 = fsub fast float %3063, %3099
  %3103 = fsub fast float %3064, %3100
  %3104 = fmul fast float %3101, %3030
  %3105 = fmul fast float %3102, %3031
  %3106 = fmul fast float %3103, %3032
  %3107 = call float @dx.op.binary.f32(i32 36, float %3105, float %3106)  ; FMin(a,b)
  %3108 = call float @dx.op.binary.f32(i32 36, float %3104, float %3107)  ; FMin(a,b)
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3110 = call float @dx.op.binary.f32(i32 36, float %3010, float %3109)  ; FMin(a,b)
  %3111 = uitofp i1 %3070 to float
  %3112 = fadd fast float %2922, 1.000000e+00
  %3113 = fsub fast float %3112, %3111
  %3114 = fmul fast float %3110, %3113
  %3115 = fcmp fast ogt float %3114, 0.000000e+00
  br i1 %3115, label %3125, label %3116

; <label>:3116                                    ; preds = %3267, %3006
  %3117 = phi float [ %3331, %3267 ], [ %3007, %3006 ]
  %3118 = phi float [ %3332, %3267 ], [ %3008, %3006 ]
  %3119 = phi float [ %3333, %3267 ], [ %3009, %3006 ]
  %3120 = phi float [ %3340, %3267 ], [ %3010, %3006 ]
  %3121 = phi float [ %3337, %3267 ], [ %3012, %3006 ]
  %3122 = phi float [ %3338, %3267 ], [ %3013, %3006 ]
  %3123 = phi float [ %3339, %3267 ], [ %3014, %3006 ]
  %3124 = icmp eq i32 %3011, %3018
  br i1 %3124, label %3341, label %3006

; <label>:3125                                    ; preds = %3006
  br i1 %3067, label %3183, label %3126

; <label>:3126                                    ; preds = %3125
  %3127 = fsub fast float -0.000000e+00, %3082
  %3128 = fsub fast float -0.000000e+00, %3083
  %3129 = fsub fast float -0.000000e+00, %3084
  %3130 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2957, float %2958, float %3127, float %3128, float %3129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3131 = fsub fast float -0.000000e+00, %3130
  %3132 = call float @dx.op.dot3.f32(i32 55, float %3078, float %3079, float %3080, float %3127, float %3128, float %3129)  ; Dot3(ax,ay,az,bx,by,bz)
  %3133 = fadd fast float %3132, %3045
  %3134 = fadd fast float %3044, %3132
  %3135 = fsub fast float -0.000000e+00, %3134
  %3136 = fcmp ogt float %3130, -0.000000e+00
  %3137 = select i1 %3136, float %3135, float %3133
  %3138 = call float @dx.op.unary.f32(i32 6, float %3131)  ; FAbs(value)
  %3139 = fdiv fast float 1.000000e+00, %3138
  %3140 = fmul fast float %3137, %3139
  %3141 = call float @dx.op.binary.f32(i32 35, float %3140, float 0.000000e+00)  ; FMax(a,b)
  %3142 = fsub fast float -0.000000e+00, %3088
  %3143 = fsub fast float -0.000000e+00, %3089
  %3144 = fsub fast float -0.000000e+00, %3090
  %3145 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2957, float %2958, float %3142, float %3143, float %3144)  ; Dot3(ax,ay,az,bx,by,bz)
  %3146 = fsub fast float -0.000000e+00, %3145
  %3147 = call float @dx.op.dot3.f32(i32 55, float %3078, float %3079, float %3080, float %3142, float %3143, float %3144)  ; Dot3(ax,ay,az,bx,by,bz)
  %3148 = fadd fast float %3147, %3049
  %3149 = fadd fast float %3048, %3147
  %3150 = fsub fast float -0.000000e+00, %3149
  %3151 = fcmp ogt float %3145, -0.000000e+00
  %3152 = select i1 %3151, float %3150, float %3148
  %3153 = call float @dx.op.unary.f32(i32 6, float %3146)  ; FAbs(value)
  %3154 = fdiv fast float 1.000000e+00, %3153
  %3155 = fmul fast float %3152, %3154
  %3156 = call float @dx.op.binary.f32(i32 35, float %3155, float 0.000000e+00)  ; FMax(a,b)
  %3157 = fsub fast float -0.000000e+00, %3094
  %3158 = fsub fast float -0.000000e+00, %3095
  %3159 = fsub fast float -0.000000e+00, %3096
  %3160 = call float @dx.op.dot3.f32(i32 55, float %2956, float %2957, float %2958, float %3157, float %3158, float %3159)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = fsub fast float -0.000000e+00, %3160
  %3162 = call float @dx.op.dot3.f32(i32 55, float %3078, float %3079, float %3080, float %3157, float %3158, float %3159)  ; Dot3(ax,ay,az,bx,by,bz)
  %3163 = fadd fast float %3162, %3053
  %3164 = fadd fast float %3052, %3162
  %3165 = fsub fast float -0.000000e+00, %3164
  %3166 = fcmp ogt float %3160, -0.000000e+00
  %3167 = select i1 %3166, float %3165, float %3163
  %3168 = call float @dx.op.unary.f32(i32 6, float %3161)  ; FAbs(value)
  %3169 = fdiv fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3167, %3169
  %3171 = call float @dx.op.binary.f32(i32 35, float %3170, float 0.000000e+00)  ; FMax(a,b)
  %3172 = call float @dx.op.binary.f32(i32 36, float %3156, float %3171)  ; FMin(a,b)
  %3173 = call float @dx.op.binary.f32(i32 36, float %3141, float %3172)  ; FMin(a,b)
  %3174 = fmul fast float %3173, %2956
  %3175 = fmul fast float %3173, %2957
  %3176 = fmul fast float %3173, %2958
  %3177 = fadd fast float %3174, %143
  %3178 = fadd fast float %3175, %144
  %3179 = fadd fast float %3176, %145
  %3180 = fsub fast float %3177, %3022
  %3181 = fsub fast float %3178, %3023
  %3182 = fsub fast float %3179, %3024
  br label %3190

; <label>:3183                                    ; preds = %3125
  %3184 = fmul fast float %2956, 8.096000e+03
  %3185 = fmul fast float %2957, 8.096000e+03
  %3186 = fmul fast float %2958, 8.096000e+03
  %3187 = fadd fast float %3184, %143
  %3188 = fadd fast float %3185, %144
  %3189 = fadd fast float %3186, %145
  br label %3190

; <label>:3190                                    ; preds = %3183, %3126
  %3191 = phi float [ %2956, %3183 ], [ %3180, %3126 ]
  %3192 = phi float [ %2957, %3183 ], [ %3181, %3126 ]
  %3193 = phi float [ %2958, %3183 ], [ %3182, %3126 ]
  %3194 = phi float [ %3187, %3183 ], [ %3177, %3126 ]
  %3195 = phi float [ %3188, %3183 ], [ %3178, %3126 ]
  %3196 = phi float [ %3189, %3183 ], [ %3179, %3126 ]
  %3197 = fcmp fast olt float %3041, 1.000000e+00
  br i1 %3197, label %3198, label %3229, !dx.controlflow.hints !91

; <label>:3198                                    ; preds = %3190
  %3199 = fmul fast float %3193, %3039
  %3200 = fmul fast float %3192, %3040
  %3201 = fsub fast float %3199, %3200
  %3202 = fmul fast float %3191, %3040
  %3203 = fmul fast float %3193, %3038
  %3204 = fsub fast float %3202, %3203
  %3205 = fmul fast float %3192, %3038
  %3206 = fmul fast float %3191, %3039
  %3207 = fsub fast float %3205, %3206
  %3208 = fmul fast float %3201, 2.000000e+00
  %3209 = fmul fast float %3204, 2.000000e+00
  %3210 = fmul fast float %3207, 2.000000e+00
  %3211 = fmul fast float %3208, %3041
  %3212 = fmul fast float %3209, %3041
  %3213 = fmul fast float %3210, %3041
  %3214 = fmul fast float %3210, %3039
  %3215 = fmul fast float %3209, %3040
  %3216 = fmul fast float %3208, %3040
  %3217 = fmul fast float %3210, %3038
  %3218 = fmul fast float %3209, %3038
  %3219 = fmul fast float %3208, %3039
  %3220 = fadd fast float %3214, %3191
  %3221 = fadd fast float %3220, %3211
  %3222 = fsub fast float %3221, %3215
  %3223 = fsub fast float %3192, %3217
  %3224 = fadd fast float %3223, %3212
  %3225 = fadd fast float %3224, %3216
  %3226 = fadd fast float %3213, %3193
  %3227 = fsub fast float %3226, %3219
  %3228 = fadd fast float %3227, %3218
  br label %3229

; <label>:3229                                    ; preds = %3198, %3190
  %3230 = phi float [ %3222, %3198 ], [ %3191, %3190 ]
  %3231 = phi float [ %3225, %3198 ], [ %3192, %3190 ]
  %3232 = phi float [ %3228, %3198 ], [ %3193, %3190 ]
  br i1 %3067, label %3264, label %3233

; <label>:3233                                    ; preds = %3229
  %3234 = fmul fast float %2160, 0x400187C840000000
  %3235 = fadd fast float %3234, 0xC00EFC2120000000
  %3236 = fmul fast float %3235, %2160
  %3237 = fadd fast float %3236, 0x3FE5D16340000000
  %3238 = fmul fast float %3237, %2160
  %3239 = fadd fast float %3238, 1.000000e+00
  %3240 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3241 = fsub fast float %3194, %143
  %3242 = fsub fast float %3195, %144
  %3243 = fsub fast float %3196, %145
  %3244 = fsub fast float %3194, %3022
  %3245 = fsub fast float %3195, %3023
  %3246 = fsub fast float %3196, %3024
  %3247 = call float @dx.op.dot3.f32(i32 55, float %3241, float %3242, float %3243, float %3241, float %3242, float %3243)  ; Dot3(ax,ay,az,bx,by,bz)
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3244, float %3245, float %3246, float %3244, float %3245, float %3246)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = fadd fast float %3248, 0x3EE4F8B580000000
  %3250 = fdiv fast float %3247, %3249
  %3251 = bitcast float %3250 to i32
  %3252 = ashr i32 %3251, 1
  %3253 = add nsw i32 %3252, 532487669
  %3254 = bitcast i32 %3253 to float
  %3255 = fmul fast float %3254, %3240
  %3256 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3257 = fmul fast float %3256, 0x4009981AE0000000
  %3258 = fsub fast float 0x40111BBD80000000, %3257
  %3259 = fmul fast float %3258, %3256
  %3260 = fadd fast float %3259, 0xC0009F6020000000
  %3261 = fmul fast float %3260, %3256
  %3262 = fadd fast float %3261, 1.000000e+00
  %3263 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  br label %3267

; <label>:3264                                    ; preds = %3229
  %3265 = icmp ne i32 %3068, -1
  %3266 = zext i1 %3265 to i32
  br label %3267

; <label>:3267                                    ; preds = %3264, %3233
  %3268 = phi float [ %2160, %3264 ], [ %3263, %3233 ]
  %3269 = phi i32 [ %3266, %3264 ], [ 0, %3233 ]
  %3270 = fmul float %3268, 5.000000e+00
  %3271 = fsub float 5.000000e+00, %3270
  %3272 = icmp ne i32 %3269, 0
  %3273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3274 = extractvalue %dx.types.CBufRet.f32 %3273, 3
  %3275 = fadd fast float %3274, %3271
  %3276 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3275)  ; FMax(a,b)
  %3277 = call float @dx.op.unary.f32(i32 6, float %3230)  ; FAbs(value)
  %3278 = call float @dx.op.unary.f32(i32 6, float %3231)  ; FAbs(value)
  %3279 = fadd fast float %3278, %3277
  %3280 = call float @dx.op.unary.f32(i32 6, float %3232)  ; FAbs(value)
  %3281 = fadd fast float %3279, %3280
  %3282 = fcmp fast oeq float %3281, 0.000000e+00
  %3283 = fdiv fast float 1.000000e+00, %3281
  %3284 = select i1 %3282, float 1.000000e+00, float %3283
  %3285 = fmul fast float %3284, %3230
  %3286 = fmul fast float %3284, %3231
  %3287 = call float @dx.op.unary.f32(i32 6, float %3286)  ; FAbs(value)
  %3288 = call float @dx.op.unary.f32(i32 6, float %3285)  ; FAbs(value)
  %3289 = fsub fast float 1.000000e+00, %3287
  %3290 = fsub fast float 1.000000e+00, %3288
  %3291 = fcmp fast oge float %3285, 0.000000e+00
  %3292 = fcmp fast oge float %3286, 0.000000e+00
  %3293 = select i1 %3291, float 1.000000e+00, float -1.000000e+00
  %3294 = select i1 %3292, float 1.000000e+00, float -1.000000e+00
  %3295 = fcmp fast ole float %3232, 0.000000e+00
  %3296 = fmul fast float %3293, %3289
  %3297 = fmul fast float %3294, %3290
  %3298 = select i1 %3295, float %3296, float %3285
  %3299 = select i1 %3295, float %3297, float %3286
  %3300 = fmul fast float %3298, 5.000000e-01
  %3301 = fmul fast float %3299, 5.000000e-01
  %3302 = fadd fast float %3300, 5.000000e-01
  %3303 = fadd fast float %3301, 5.000000e-01
  %3304 = uitofp i32 %3065 to float
  %3305 = call float @dx.op.binary.f32(i32 36, float %3276, float 3.000000e+00)  ; FMin(a,b)
  %3306 = fadd fast float %3305, 2.000000e+00
  %3307 = call float @dx.op.unary.f32(i32 21, float %3306)  ; Exp(value)
  %3308 = extractvalue %dx.types.CBufRet.f32 %3273, 1
  %3309 = fmul fast float %3308, %3307
  %3310 = fmul fast float %3309, 2.000000e+00
  %3311 = fsub fast float 1.000000e+00, %3310
  %3312 = fmul fast float %3302, %3311
  %3313 = fmul fast float %3303, %3311
  %3314 = fadd fast float %3312, %3309
  %3315 = fadd fast float %3313, %3309
  %3316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %3314, float %3315, float %3304, float undef, i32 0, i32 0, i32 undef, float %3276)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 3
  %3322 = fmul fast float %3321, %3035
  %3323 = call float @dx.op.binary.f32(i32 36, float %2570, float %3322)  ; FMin(a,b)
  %3324 = select i1 %3272, float %3323, float %3322
  %3325 = fmul fast float %3317, %3114
  %3326 = fmul fast float %3325, %3324
  %3327 = fmul fast float %3318, %3114
  %3328 = fmul fast float %3327, %3324
  %3329 = fmul fast float %3319, %3114
  %3330 = fmul fast float %3329, %3324
  %3331 = fadd fast float %3326, %3007
  %3332 = fadd fast float %3328, %3008
  %3333 = fadd fast float %3330, %3009
  %3334 = fmul fast float %3194, %3114
  %3335 = fmul fast float %3195, %3114
  %3336 = fmul fast float %3196, %3114
  %3337 = fadd fast float %3334, %3012
  %3338 = fadd fast float %3335, %3013
  %3339 = fadd fast float %3336, %3014
  %3340 = fsub fast float %3010, %3114
  br label %3116

; <label>:3341                                    ; preds = %3116
  br label %3342

; <label>:3342                                    ; preds = %3341, %2973
  %3343 = phi float [ %2974, %2973 ], [ %3117, %3341 ]
  %3344 = phi float [ %2975, %2973 ], [ %3118, %3341 ]
  %3345 = phi float [ %2976, %2973 ], [ %3119, %3341 ]
  %3346 = phi float [ %2977, %2973 ], [ %3120, %3341 ]
  %3347 = phi float [ %2979, %2973 ], [ %3121, %3341 ]
  %3348 = phi float [ %2980, %2973 ], [ %3122, %3341 ]
  %3349 = phi float [ %2981, %2973 ], [ %3123, %3341 ]
  %3350 = add i32 %2978, 1
  %3351 = icmp ugt i32 %3350, %2970
  br i1 %3351, label %3352, label %2973, !llvm.loop !92

; <label>:3352                                    ; preds = %3342
  br label %3353

; <label>:3353                                    ; preds = %3352, %2955
  %3354 = phi float [ 0.000000e+00, %2955 ], [ %3343, %3352 ]
  %3355 = phi float [ 0.000000e+00, %2955 ], [ %3344, %3352 ]
  %3356 = phi float [ 0.000000e+00, %2955 ], [ %3345, %3352 ]
  %3357 = phi float [ 0.000000e+00, %2955 ], [ %3347, %3352 ]
  %3358 = phi float [ 0.000000e+00, %2955 ], [ %3348, %3352 ]
  %3359 = phi float [ 0.000000e+00, %2955 ], [ %3349, %3352 ]
  %3360 = call float @dx.op.dot3.f32(i32 55, float %3354, float %3355, float %3356, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3361 = select i1 %205, float 0.000000e+00, float %3354
  %3362 = select i1 %205, float %3360, float %3355
  %3363 = select i1 %205, float 0.000000e+00, float %3356
  %3364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3365 = extractvalue %dx.types.CBufRet.f32 %3364, 0
  %3366 = extractvalue %dx.types.CBufRet.f32 %3364, 1
  %3367 = extractvalue %dx.types.CBufRet.f32 %3364, 2
  %3368 = extractvalue %dx.types.CBufRet.f32 %3364, 3
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.CBufRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.CBufRet.f32 %3369, 2
  %3373 = extractvalue %dx.types.CBufRet.f32 %3369, 3
  %3374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3375 = extractvalue %dx.types.CBufRet.f32 %3374, 0
  %3376 = extractvalue %dx.types.CBufRet.f32 %3374, 1
  %3377 = extractvalue %dx.types.CBufRet.f32 %3374, 2
  %3378 = extractvalue %dx.types.CBufRet.f32 %3374, 3
  %3379 = call float @dx.op.dot3.f32(i32 55, float %3375, float %3376, float %3377, float %2549, float %2550, float %2551)  ; Dot3(ax,ay,az,bx,by,bz)
  %3380 = call float @dx.op.dot3.f32(i32 55, float %3357, float %3358, float %3359, float %3375, float %3376, float %3377)  ; Dot3(ax,ay,az,bx,by,bz)
  %3381 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %3375, float %3376, float %3377)  ; Dot3(ax,ay,az,bx,by,bz)
  %3382 = fadd fast float %2160, -1.000000e+00
  %3383 = fsub fast float %3380, %3381
  %3384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3385 = extractvalue %dx.types.CBufRet.f32 %3384, 2
  %3386 = fmul fast float %3385, %3380
  %3387 = fdiv fast float 1.600000e+02, %3386
  %3388 = fmul fast float %3382, %3382
  %3389 = fmul fast float %3388, 0xBFB5B17960000000
  %3390 = fmul fast float %3389, %3383
  %3391 = fmul fast float %3390, %3387
  %3392 = call float @dx.op.unary.f32(i32 21, float %3391)  ; Exp(value)
  %3393 = fmul fast float %3392, 0x3FF04B2960000000
  %3394 = fsub fast float 0x3FF04B2960000000, %3393
  %3395 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3396 = fmul fast float %3395, 4.000000e+00
  %3397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3398 = extractvalue %dx.types.CBufRet.f32 %3397, 0
  %3399 = extractvalue %dx.types.CBufRet.f32 %3397, 1
  %3400 = extractvalue %dx.types.CBufRet.f32 %3397, 2
  %3401 = fadd fast float %3398, %3357
  %3402 = fadd fast float %3399, %3358
  %3403 = fadd fast float %3400, %3359
  %3404 = fmul fast float %3401, %3365
  %3405 = call float @dx.op.tertiary.f32(i32 46, float %3402, float %3366, float %3404)  ; FMad(a,b,c)
  %3406 = call float @dx.op.tertiary.f32(i32 46, float %3403, float %3367, float %3405)  ; FMad(a,b,c)
  %3407 = fadd fast float %3406, %3368
  %3408 = fmul fast float %3401, %3370
  %3409 = call float @dx.op.tertiary.f32(i32 46, float %3402, float %3371, float %3408)  ; FMad(a,b,c)
  %3410 = call float @dx.op.tertiary.f32(i32 46, float %3403, float %3372, float %3409)  ; FMad(a,b,c)
  %3411 = fadd fast float %3410, %3373
  %3412 = fmul fast float %3401, %3375
  %3413 = call float @dx.op.tertiary.f32(i32 46, float %3402, float %3376, float %3412)  ; FMad(a,b,c)
  %3414 = call float @dx.op.tertiary.f32(i32 46, float %3403, float %3377, float %3413)  ; FMad(a,b,c)
  %3415 = fadd fast float %3414, %3378
  %3416 = fdiv fast float %3407, %3415
  %3417 = fdiv fast float %3411, %3415
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 0
  %3420 = extractvalue %dx.types.CBufRet.f32 %3418, 1
  %3421 = fmul fast float %3419, %3416
  %3422 = fmul fast float %3420, %3417
  %3423 = extractvalue %dx.types.CBufRet.f32 %3418, 2
  %3424 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3425 = fadd fast float %3421, %3423
  %3426 = fadd fast float %3422, %3424
  %3427 = fmul fast float %3379, 8.000000e+00
  %3428 = call float @dx.op.unary.f32(i32 7, float %3427)  ; Saturate(value)
  %3429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3430 = extractvalue %dx.types.CBufRet.f32 %3429, 0
  %3431 = fmul fast float %3425, 2.000000e+00
  %3432 = fmul fast float %3426, 2.000000e+00
  %3433 = fadd fast float %3431, -1.000000e+00
  %3434 = fadd fast float %3432, -1.000000e+00
  %3435 = fmul fast float %3433, %3433
  %3436 = fsub fast float 1.000000e+00, %3435
  %3437 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  %3438 = fmul fast float %3434, %3434
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3441 = fmul fast float %3430, %3437
  %3442 = fmul fast float %3441, %3440
  %3443 = call float @dx.op.unary.f32(i32 7, float %3442)  ; Saturate(value)
  %3444 = fmul fast float %3443, %3428
  %3445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %49, float %3425, float %3426, float undef, float undef, i32 0, i32 0, i32 undef, float %3396)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3446 = extractvalue %dx.types.ResRet.f32 %3445, 0
  %3447 = extractvalue %dx.types.ResRet.f32 %3445, 1
  %3448 = extractvalue %dx.types.ResRet.f32 %3445, 2
  %3449 = select i1 %205, float 0.000000e+00, float %3447
  %3450 = select i1 %205, float 0.000000e+00, float %3448
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 2
  %3453 = fmul fast float %3452, %3446
  %3454 = fmul fast float %3449, %3452
  %3455 = fmul fast float %3450, %3452
  %3456 = fsub fast float %3453, %3361
  %3457 = fsub fast float %3454, %3362
  %3458 = fsub fast float %3455, %3363
  %3459 = fmul fast float %3456, %3444
  %3460 = fmul fast float %3457, %3444
  %3461 = fmul fast float %3458, %3444
  %3462 = fadd fast float %3459, %3361
  %3463 = fadd fast float %3460, %3362
  %3464 = fadd fast float %3461, %3363
  br label %3465

; <label>:3465                                    ; preds = %3353, %2864
  %3466 = phi float [ %2810, %2864 ], [ %3462, %3353 ]
  %3467 = phi float [ %2811, %2864 ], [ %3463, %3353 ]
  %3468 = phi float [ %2812, %2864 ], [ %3464, %3353 ]
  %3469 = call float @dx.op.dot3.f32(i32 55, float %2154, float %2155, float %2156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3470 = fcmp fast ogt float %3469, 0x3E7FF19E20000000
  %3471 = fdiv fast float 1.000000e+00, %3469
  %3472 = select i1 %3470, float %3471, float 0.000000e+00
  %3473 = fmul fast float %3472, %2154
  %3474 = fmul fast float %3472, %2155
  %3475 = fmul fast float %3472, %2156
  %3476 = fadd fast float %3473, -1.000000e+00
  %3477 = fadd fast float %3474, -1.000000e+00
  %3478 = fadd fast float %3475, -1.000000e+00
  %3479 = fmul fast float %3476, 5.000000e-01
  %3480 = fmul fast float %3477, 5.000000e-01
  %3481 = fmul fast float %3478, 5.000000e-01
  %3482 = fadd fast float %3479, 1.000000e+00
  %3483 = fadd fast float %3480, 1.000000e+00
  %3484 = fadd fast float %3481, 1.000000e+00
  %3485 = call float @dx.op.binary.f32(i32 35, float %2543, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3486 = fdiv fast float %909, %3485
  %3487 = fcmp fast olt float %1582, 1.270000e+02
  %3488 = fcmp fast olt float %1583, 1.270000e+02
  %3489 = fcmp fast olt float %1584, 1.270000e+02
  %3490 = fmul fast float %1582, 0xBFF7154760000000
  %3491 = fmul fast float %3490, %3486
  %3492 = fmul fast float %1583, 0xBFF7154760000000
  %3493 = fmul fast float %3492, %3486
  %3494 = fmul fast float %1584, 0xBFF7154760000000
  %3495 = fmul fast float %3494, %3486
  %3496 = call float @dx.op.unary.f32(i32 21, float %3491)  ; Exp(value)
  %3497 = call float @dx.op.unary.f32(i32 21, float %3493)  ; Exp(value)
  %3498 = call float @dx.op.unary.f32(i32 21, float %3495)  ; Exp(value)
  %3499 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3500 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3501 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3502 = select i1 %3487, float %3499, float 0.000000e+00
  %3503 = select i1 %3488, float %3500, float 0.000000e+00
  %3504 = select i1 %3489, float %3501, float 0.000000e+00
  %3505 = fmul fast float %3502, %2870
  %3506 = fmul fast float %3503, %2870
  %3507 = fmul fast float %3504, %2870
  %3508 = fadd fast float %3505, -1.000000e+00
  %3509 = fadd fast float %3506, -1.000000e+00
  %3510 = fadd fast float %3507, -1.000000e+00
  %3511 = fmul fast float %3508, %1532
  %3512 = fmul fast float %3509, %1532
  %3513 = fmul fast float %3510, %1532
  %3514 = fmul fast float %3466, %2865
  %3515 = fmul fast float %3467, %2866
  %3516 = fmul fast float %3468, %2867
  %3517 = fsub fast float 1.000000e+00, %2543
  %3518 = bitcast float %3517 to i32
  %3519 = sitofp i32 %3518 to float
  %3520 = fmul fast float %3519, 5.000000e+00
  %3521 = fadd fast float %3520, 0xC1EFBF8940000000
  %3522 = fptosi float %3521 to i32
  %3523 = bitcast i32 %3522 to float
  %3524 = fmul fast float %3523, %1508
  %3525 = fmul fast float %2802, %3524
  %3526 = fmul fast float %3525, %2870
  %3527 = fmul fast float %3526, %3482
  %3528 = fmul fast float %2803, %3524
  %3529 = fmul fast float %3528, %2870
  %3530 = fmul fast float %3529, %3483
  %3531 = fmul fast float %2804, %3524
  %3532 = fmul fast float %3531, %2870
  %3533 = fmul fast float %3532, %3484
  %3534 = fadd fast float %3514, %1513
  %3535 = fadd fast float %3534, %3527
  %3536 = fmul fast float %3535, %1532
  %3537 = fadd fast float %3515, %1514
  %3538 = fadd fast float %3537, %3530
  %3539 = fmul fast float %3538, %1532
  %3540 = fadd fast float %3516, %1515
  %3541 = fadd fast float %3540, %3533
  %3542 = fmul fast float %3541, %1532
  %3543 = fmul fast float %2152, 0x4012D0A400000000
  %3544 = fadd fast float %3513, 1.000000e+00
  %3545 = fadd fast float %3512, 1.000000e+00
  %3546 = fadd fast float %3511, 1.000000e+00
  %3547 = fmul fast float %2870, %2804
  %3548 = fmul fast float %2870, %2803
  %3549 = fmul fast float %2870, %2802
  %3550 = fmul fast float %2558, %1532
  %3551 = fsub fast float 1.000000e+00, %3550
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = fsub fast float 1.000000e+00, %3552
  %3554 = fadd fast float %3543, 0x3FDB6377A0000000
  %3555 = fmul fast float %3553, %3554
  %3556 = call float @dx.op.dot3.f32(i32 55, float %1600, float %1601, float %1602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3557 = fadd fast float %3555, %3556
  %3558 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3559 = call float @dx.op.binary.f32(i32 35, float %3558, float 0x3F847AE140000000)  ; FMax(a,b)
  %3560 = fmul fast float %3559, %3559
  %3561 = fmul fast float %3560, %3560
  %3562 = fmul fast float %3561, 0xC00A935000000000
  %3563 = call float @dx.op.unary.f32(i32 21, float %3562)  ; Exp(value)
  %3564 = fsub fast float 1.000000e+00, %3563
  %3565 = fmul fast float %3546, %2806
  %3566 = fmul fast float %3565, %3564
  %3567 = fmul fast float %3545, %2807
  %3568 = fmul fast float %3567, %3564
  %3569 = fmul fast float %3544, %2808
  %3570 = fmul fast float %3569, %3564
  %3571 = fadd fast float %3566, %3549
  %3572 = fmul fast float %3571, %1532
  %3573 = fadd fast float %3568, %3548
  %3574 = fmul fast float %3573, %1532
  %3575 = fadd fast float %3570, %3547
  %3576 = fmul fast float %3575, %1532
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 3
  %3579 = fcmp fast oeq float %3578, 0.000000e+00
  br i1 %3579, label %5257, label %3580

; <label>:3580                                    ; preds = %3465
  %3581 = extractvalue %dx.types.CBufRet.f32 %3577, 0
  %3582 = extractvalue %dx.types.CBufRet.f32 %3577, 1
  %3583 = extractvalue %dx.types.CBufRet.f32 %3577, 2
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 0
  %3586 = extractvalue %dx.types.CBufRet.f32 %3584, 1
  %3587 = extractvalue %dx.types.CBufRet.f32 %3584, 2
  %3588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3589 = extractvalue %dx.types.CBufRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.CBufRet.f32 %3588, 1
  %3591 = call float @dx.op.dot3.f32(i32 55, float %3585, float %3586, float %3587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3592 = select i1 %205, float %3589, float %3585
  %3593 = select i1 %205, float %3591, float %3586
  %3594 = select i1 %205, float %3590, float %3587
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 2
  %3597 = fmul fast float %3596, %98
  %3598 = fmul fast float %3596, %99
  %3599 = fmul fast float %3596, %100
  %3600 = fadd fast float %3597, %143
  %3601 = fadd fast float %3598, %144
  %3602 = fadd fast float %3599, %145
  %3603 = fcmp fast olt float %3578, 0.000000e+00
  br i1 %3603, label %4699, label %3604

; <label>:3604                                    ; preds = %3580
  %3605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3606 = extractvalue %dx.types.CBufRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.CBufRet.f32 %3605, 1
  %3608 = extractvalue %dx.types.CBufRet.f32 %3605, 2
  %3609 = extractvalue %dx.types.CBufRet.f32 %3605, 3
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.CBufRet.f32 %3610, 1
  %3613 = extractvalue %dx.types.CBufRet.f32 %3610, 2
  %3614 = extractvalue %dx.types.CBufRet.f32 %3610, 3
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.CBufRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.CBufRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.CBufRet.f32 %3615, 3
  %3620 = fmul fast float %3606, %3600
  %3621 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3607, float %3620)  ; FMad(a,b,c)
  %3622 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3608, float %3621)  ; FMad(a,b,c)
  %3623 = fadd fast float %3622, %3609
  %3624 = fmul fast float %3611, %3600
  %3625 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3612, float %3624)  ; FMad(a,b,c)
  %3626 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3613, float %3625)  ; FMad(a,b,c)
  %3627 = fadd fast float %3626, %3614
  %3628 = fmul fast float %3616, %3600
  %3629 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3617, float %3628)  ; FMad(a,b,c)
  %3630 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3618, float %3629)  ; FMad(a,b,c)
  %3631 = fadd fast float %3630, %3619
  %3632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3633 = extractvalue %dx.types.CBufRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.CBufRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.CBufRet.f32 %3632, 3
  %3636 = fmul fast float %3635, %3623
  %3637 = fmul fast float %3635, %3627
  %3638 = fadd fast float %3636, %3633
  %3639 = fadd fast float %3637, %3634
  %3640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3641 = extractvalue %dx.types.CBufRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.CBufRet.f32 %3640, 1
  %3643 = extractvalue %dx.types.CBufRet.f32 %3640, 3
  %3644 = fmul fast float %3643, %3623
  %3645 = fmul fast float %3643, %3627
  %3646 = fadd fast float %3644, %3641
  %3647 = fadd fast float %3645, %3642
  %3648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3649 = extractvalue %dx.types.CBufRet.f32 %3648, 1
  %3650 = fsub fast float %3649, %3631
  %3651 = extractvalue %dx.types.CBufRet.f32 %3648, 2
  %3652 = fmul fast float %3650, %3651
  %3653 = fsub fast float 1.000000e+00, %3652
  %3654 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3640, 2
  %3656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3657 = extractvalue %dx.types.CBufRet.f32 %3656, 2
  %3658 = fadd fast float %3657, %3655
  %3659 = fcmp fast ogt float %3658, 0.000000e+00
  br i1 %3659, label %3660, label %3684

; <label>:3660                                    ; preds = %3604
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.CBufRet.f32 %3661, 1
  %3664 = fsub fast float %3646, %3662
  %3665 = fsub fast float %3647, %3663
  %3666 = fcmp fast olt float %3664, 0.000000e+00
  %3667 = fcmp fast olt float %3665, 0.000000e+00
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.CBufRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.CBufRet.f32 %3668, 2
  %3672 = extractvalue %dx.types.CBufRet.f32 %3668, 3
  %3673 = select i1 %3666, float %3669, float %3671
  %3674 = select i1 %3667, float %3670, float %3672
  %3675 = fmul fast float %3673, %3664
  %3676 = fmul fast float %3674, %3665
  %3677 = call float @dx.op.unary.f32(i32 6, float %3675)  ; FAbs(value)
  %3678 = call float @dx.op.unary.f32(i32 6, float %3676)  ; FAbs(value)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3680 = call float @dx.op.binary.f32(i32 35, float %3677, float %3678)  ; FMax(a,b)
  %3681 = fsub fast float %3679, %3680
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = fmul fast float %3682, %3654
  br label %3684

; <label>:3684                                    ; preds = %3660, %3604
  %3685 = phi float [ %3683, %3660 ], [ 0.000000e+00, %3604 ]
  %3686 = extractvalue %dx.types.CBufRet.f32 %3632, 2
  %3687 = extractvalue %dx.types.CBufRet.f32 %3656, 1
  %3688 = fadd fast float %3687, %3686
  %3689 = fcmp fast ogt float %3688, 0.000000e+00
  %3690 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  br i1 %3689, label %3691, label %3714

; <label>:3691                                    ; preds = %3684
  %3692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3693 = extractvalue %dx.types.CBufRet.f32 %3692, 0
  %3694 = extractvalue %dx.types.CBufRet.f32 %3692, 1
  %3695 = fsub fast float %3638, %3693
  %3696 = fsub fast float %3639, %3694
  %3697 = fcmp fast olt float %3695, 0.000000e+00
  %3698 = fcmp fast olt float %3696, 0.000000e+00
  %3699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3699, 0
  %3701 = extractvalue %dx.types.CBufRet.f32 %3699, 1
  %3702 = extractvalue %dx.types.CBufRet.f32 %3699, 2
  %3703 = extractvalue %dx.types.CBufRet.f32 %3699, 3
  %3704 = select i1 %3697, float %3700, float %3702
  %3705 = select i1 %3698, float %3701, float %3703
  %3706 = fmul fast float %3704, %3695
  %3707 = fmul fast float %3705, %3696
  %3708 = call float @dx.op.unary.f32(i32 6, float %3706)  ; FAbs(value)
  %3709 = call float @dx.op.unary.f32(i32 6, float %3707)  ; FAbs(value)
  %3710 = call float @dx.op.binary.f32(i32 35, float %3708, float %3709)  ; FMax(a,b)
  %3711 = fsub fast float %3690, %3710
  %3712 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3713 = fmul fast float %3712, %3654
  br label %3714

; <label>:3714                                    ; preds = %3691, %3684
  %3715 = phi float [ %3713, %3691 ], [ 0.000000e+00, %3684 ]
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 1
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.f32 %3719, 0
  %3721 = extractvalue %dx.types.CBufRet.f32 %3719, 1
  %3722 = fsub fast float %3623, %3720
  %3723 = fsub fast float %3627, %3721
  %3724 = fcmp fast olt float %3722, 0.000000e+00
  %3725 = fcmp fast olt float %3723, 0.000000e+00
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.CBufRet.f32 %3726, 1
  %3729 = extractvalue %dx.types.CBufRet.f32 %3726, 2
  %3730 = extractvalue %dx.types.CBufRet.f32 %3726, 3
  %3731 = select i1 %3724, float %3727, float %3729
  %3732 = select i1 %3725, float %3728, float %3730
  %3733 = fmul fast float %3731, %3722
  %3734 = fmul fast float %3732, %3723
  %3735 = call float @dx.op.unary.f32(i32 6, float %3733)  ; FAbs(value)
  %3736 = call float @dx.op.unary.f32(i32 6, float %3734)  ; FAbs(value)
  %3737 = call float @dx.op.binary.f32(i32 35, float %3735, float %3736)  ; FMax(a,b)
  %3738 = fsub fast float %3690, %3737
  %3739 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3740 = call float @dx.op.binary.f32(i32 36, float %3739, float %3718)  ; FMin(a,b)
  %3741 = fmul fast float %3740, %3654
  %3742 = fsub fast float %3715, %3741
  %3743 = fsub fast float %3685, %3715
  %3744 = fsub fast float %3743, %3741
  %3745 = call float @dx.op.binary.f32(i32 35, float %3741, float %3715)  ; FMax(a,b)
  %3746 = call float @dx.op.binary.f32(i32 35, float %3745, float %3685)  ; FMax(a,b)
  %3747 = fcmp fast olt float %3746, 1.000000e+00
  br i1 %3747, label %3748, label %4146, !dx.controlflow.hints !94

; <label>:3748                                    ; preds = %3714
  %3749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3750 = extractvalue %dx.types.CBufRet.f32 %3749, 0
  %3751 = fcmp fast une float %3750, 0.000000e+00
  br i1 %3751, label %3752, label %4146, !dx.controlflow.hints !95

; <label>:3752                                    ; preds = %3748
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.CBufRet.f32 %3753, 1
  %3756 = extractvalue %dx.types.CBufRet.f32 %3753, 2
  %3757 = extractvalue %dx.types.CBufRet.f32 %3753, 3
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.CBufRet.f32 %3758, 3
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3767 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3768 = fmul fast float %3754, %3600
  %3769 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3755, float %3768)  ; FMad(a,b,c)
  %3770 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3756, float %3769)  ; FMad(a,b,c)
  %3771 = fadd fast float %3770, %3757
  %3772 = fmul fast float %3759, %3600
  %3773 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3760, float %3772)  ; FMad(a,b,c)
  %3774 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3761, float %3773)  ; FMad(a,b,c)
  %3775 = fadd fast float %3774, %3762
  %3776 = fmul fast float %3764, %3600
  %3777 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3765, float %3776)  ; FMad(a,b,c)
  %3778 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3766, float %3777)  ; FMad(a,b,c)
  %3779 = fadd fast float %3778, %3767
  %3780 = fcmp fast oge float %3771, 1.000000e+00
  %3781 = fcmp fast oge float %3775, 1.000000e+00
  %3782 = or i1 %3780, %3781
  %3783 = fcmp fast olt float %3771, 0.000000e+00
  %3784 = fcmp fast olt float %3775, 0.000000e+00
  %3785 = or i1 %3783, %3784
  %3786 = or i1 %3782, %3785
  br i1 %3786, label %4146, label %3787, !dx.controlflow.hints !96

; <label>:3787                                    ; preds = %3752
  %3788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.f32 %3788, 0
  %3790 = extractvalue %dx.types.CBufRet.f32 %3788, 1
  %3791 = extractvalue %dx.types.CBufRet.f32 %3788, 2
  %3792 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.i32 %3792, 2
  %3794 = uitofp i32 %3793 to float
  %3795 = extractvalue %dx.types.CBufRet.i32 %3792, 3
  %3796 = uitofp i32 %3795 to float
  %3797 = extractvalue %dx.types.CBufRet.f32 %3788, 3
  %3798 = fmul fast float %3797, 2.000000e+00
  %3799 = fsub fast float %3771, %3789
  %3800 = fsub fast float %3775, %3790
  %3801 = fmul fast float %3798, %3799
  %3802 = fmul fast float %3798, %3800
  %3803 = fdiv fast float 1.000000e+00, %3583
  %3804 = fmul fast float %3802, %3803
  %3805 = call float @dx.op.unary.f32(i32 6, float %3804)  ; FAbs(value)
  %3806 = fmul fast float %3791, %3602
  %3807 = fmul fast float %3806, %3798
  %3808 = call float @dx.op.unary.f32(i32 6, float %3807)  ; FAbs(value)
  %3809 = call float @dx.op.unary.f32(i32 6, float %3801)  ; FAbs(value)
  %3810 = call float @dx.op.binary.f32(i32 35, float %3809, float %3808)  ; FMax(a,b)
  %3811 = call float @dx.op.binary.f32(i32 35, float %3810, float %3805)  ; FMax(a,b)
  %3812 = fmul fast float %3811, 2.000000e+00
  %3813 = call float @dx.op.unary.f32(i32 23, float %3812)  ; Log(value)
  %3814 = call float @dx.op.binary.f32(i32 35, float %3813, float %3794)  ; FMax(a,b)
  %3815 = call float @dx.op.unary.f32(i32 22, float %3814)  ; Frc(value)
  %3816 = fadd fast float %3815, 0xBFEA666660000000
  %3817 = fmul fast float %3816, 8.000000e+00
  %3818 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3819 = call float @dx.op.unary.f32(i32 27, float %3814)  ; Round_ni(value)
  %3820 = fadd fast float %3819, %3818
  %3821 = call float @dx.op.binary.f32(i32 36, float %3820, float %3796)  ; FMin(a,b)
  %3822 = call float @dx.op.unary.f32(i32 27, float %3821)  ; Round_ni(value)
  %3823 = fsub fast float -0.000000e+00, %3822
  %3824 = call float @dx.op.unary.f32(i32 21, float %3823)  ; Exp(value)
  %3825 = fmul fast float %3824, %3798
  %3826 = fmul fast float %3825, %3771
  %3827 = fmul fast float %3825, %3775
  %3828 = fmul fast float %3826, 2.500000e-01
  %3829 = fmul fast float %3827, 2.500000e-01
  %3830 = fadd fast float %3828, 5.000000e-01
  %3831 = fadd fast float %3829, 5.000000e-01
  %3832 = fsub fast float %3796, %3794
  %3833 = fptoui float %3832 to i32
  %3834 = add i32 %3833, 320
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %3834)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 0
  %3837 = extractvalue %dx.types.CBufRet.f32 %3835, 1
  %3838 = fcmp fast une float %3821, %3796
  %3839 = fsub fast float %3771, %3836
  %3840 = fsub fast float %3775, %3837
  %3841 = call float @dx.op.unary.f32(i32 6, float %3839)  ; FAbs(value)
  %3842 = call float @dx.op.unary.f32(i32 6, float %3840)  ; FAbs(value)
  %3843 = fmul fast float %3841, %3825
  %3844 = fmul fast float %3842, %3825
  %3845 = fcmp fast olt float %3843, 1.000000e+00
  %3846 = fcmp fast olt float %3844, 1.000000e+00
  %3847 = and i1 %3845, %3846
  %3848 = or i1 %3838, %3847
  br i1 %3848, label %3849, label %4146, !dx.controlflow.hints !97

; <label>:3849                                    ; preds = %3787
  %3850 = fmul fast float %3827, 5.000000e-01
  %3851 = fmul fast float %3826, 5.000000e-01
  %3852 = fadd fast float %3850, 5.000000e-01
  %3853 = fadd fast float %3851, 5.000000e-01
  %3854 = sitofp i32 %3793 to float
  %3855 = fsub fast float %3821, %3854
  %3856 = call float @dx.op.unary.f32(i32 27, float %3855)  ; Round_ni(value)
  %3857 = call float @dx.op.unary.f32(i32 22, float %3821)  ; Frc(value)
  %3858 = call float @dx.op.unary.f32(i32 22, float %3853)  ; Frc(value)
  %3859 = call float @dx.op.unary.f32(i32 22, float %3852)  ; Frc(value)
  %3860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %3858, float %3859, float %3856, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3863 = extractvalue %dx.types.ResRet.f32 %3860, 2
  %3864 = extractvalue %dx.types.ResRet.f32 %3860, 3
  %3865 = fcmp fast ogt float %3857, 0.000000e+00
  br i1 %3865, label %3866, label %3887, !dx.controlflow.hints !98

; <label>:3866                                    ; preds = %3849
  %3867 = fadd fast float %3856, 1.000000e+00
  %3868 = call float @dx.op.unary.f32(i32 22, float %3830)  ; Frc(value)
  %3869 = call float @dx.op.unary.f32(i32 22, float %3831)  ; Frc(value)
  %3870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %3868, float %3869, float %3867, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3871 = extractvalue %dx.types.ResRet.f32 %3870, 0
  %3872 = extractvalue %dx.types.ResRet.f32 %3870, 1
  %3873 = extractvalue %dx.types.ResRet.f32 %3870, 2
  %3874 = extractvalue %dx.types.ResRet.f32 %3870, 3
  %3875 = fsub fast float %3871, %3861
  %3876 = fsub fast float %3872, %3862
  %3877 = fsub fast float %3873, %3863
  %3878 = fsub fast float %3874, %3864
  %3879 = fmul fast float %3875, %3857
  %3880 = fmul fast float %3876, %3857
  %3881 = fmul fast float %3877, %3857
  %3882 = fmul fast float %3878, %3857
  %3883 = fadd fast float %3879, %3861
  %3884 = fadd fast float %3880, %3862
  %3885 = fadd fast float %3881, %3863
  %3886 = fadd fast float %3882, %3864
  br label %3887

; <label>:3887                                    ; preds = %3866, %3849
  %3888 = phi float [ %3883, %3866 ], [ %3861, %3849 ]
  %3889 = phi float [ %3884, %3866 ], [ %3862, %3849 ]
  %3890 = phi float [ %3885, %3866 ], [ %3863, %3849 ]
  %3891 = phi float [ %3886, %3866 ], [ %3864, %3849 ]
  %3892 = fadd fast float %3888, -5.000000e-01
  %3893 = fadd fast float %3890, -5.000000e-01
  %3894 = fmul fast float %3892, 0xBFD5555560000000
  %3895 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3893, float %3894)  ; FMad(a,b,c)
  %3896 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3889, float 0.000000e+00)  ; FMad(a,b,c)
  %3897 = fadd fast float %3896, %3891
  %3898 = fmul fast float %3892, -7.500000e-01
  %3899 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3893, float %3898)  ; FMad(a,b,c)
  %3900 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3889, float 0.000000e+00)  ; FMad(a,b,c)
  %3901 = fadd fast float %3900, %3891
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.CBufRet.f32 %3904, 1
  %3907 = extractvalue %dx.types.CBufRet.f32 %3904, 2
  %3908 = extractvalue %dx.types.CBufRet.f32 %3904, 3
  %3909 = fsub fast float %3905, %3895
  %3910 = fsub fast float %3906, %3897
  %3911 = fsub fast float %3907, %3899
  %3912 = fsub fast float %3908, %3901
  %3913 = fmul fast float %3909, %3903
  %3914 = fmul fast float %3910, %3903
  %3915 = fmul fast float %3911, %3903
  %3916 = fmul fast float %3912, %3903
  %3917 = fadd fast float %3913, %3895
  %3918 = fadd fast float %3914, %3897
  %3919 = fadd fast float %3915, %3899
  %3920 = fadd fast float %3916, %3901
  %3921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.i32 %3921, 0
  %3923 = and i32 %3922, 536870911
  %3924 = uitofp i32 %3923 to float
  %3925 = fmul fast float %3924, %3771
  %3926 = fmul fast float %3924, %3775
  %3927 = fptoui float %3925 to i32
  %3928 = fptoui float %3926 to i32
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = and i32 %3930, 31
  %3932 = lshr i32 %3927, %3931
  %3933 = lshr i32 %3928, %3931
  %3934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.i32 %3934, 0
  %3936 = and i32 %3935, 31
  %3937 = shl i32 1, %3936
  %3938 = call i32 @dx.op.binary.i32(i32 40, i32 %3937, i32 4)  ; UMin(a,b)
  %3939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.i32 %3939, 0
  %3941 = extractvalue %dx.types.ResRet.i32 %3939, 1
  %3942 = icmp eq i32 %3938, 0
  br i1 %3942, label %3984, label %3943

; <label>:3943                                    ; preds = %3887
  br label %3944

; <label>:3944                                    ; preds = %3972, %3943
  %3945 = phi i32 [ %3975, %3972 ], [ 0, %3943 ]
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = lshr i32 %3947, 16
  %3949 = and i32 %3948, 31
  %3950 = shl i32 %3933, %3949
  %3951 = add i32 %3950, %3932
  %3952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3953 = extractvalue %dx.types.ResRet.i32 %3952, 0
  %3954 = and i32 %3953, 31
  %3955 = shl i32 %3951, %3954
  %3956 = add i32 %3955, %3945
  %3957 = shl i32 %3956, 2
  %3958 = add i32 %3957, 32
  %3959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3958, i32 undef)  ; BufferLoad(srv,index,wot)
  %3960 = extractvalue %dx.types.ResRet.i32 %3959, 0
  %3961 = icmp slt i32 %3960, 0
  %3962 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3945
  %3963 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %3945
  %3964 = bitcast float* %3962 to i32*
  %3965 = bitcast float* %3963 to i32*
  br i1 %3961, label %3966, label %3972

; <label>:3966                                    ; preds = %3944
  %3967 = and i32 %3960, 1073741823
  %3968 = add nuw nsw i32 %3967, 20
  %3969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.i32 %3969, 0
  %3971 = extractvalue %dx.types.ResRet.i32 %3969, 1
  br label %3972

; <label>:3972                                    ; preds = %3966, %3944
  %3973 = phi i32 [ %3970, %3966 ], [ %3940, %3944 ]
  %3974 = phi i32 [ %3971, %3966 ], [ %3941, %3944 ]
  store i32 %3973, i32* %3964, align 4
  store i32 %3974, i32* %3965, align 4
  %3975 = add nuw i32 %3945, 1
  %3976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.i32 %3976, 2
  %3978 = icmp eq i32 %3977, 0
  %3979 = icmp ugt i32 %3960, -1073741825
  %3980 = and i1 %3979, %3978
  %3981 = icmp ult i32 %3975, %3938
  %3982 = and i1 %3980, %3981
  br i1 %3982, label %3944, label %3983

; <label>:3983                                    ; preds = %3972
  br label %3984

; <label>:3984                                    ; preds = %3983, %3887
  %3985 = phi i32 [ 0, %3887 ], [ %3975, %3983 ]
  %3986 = extractvalue %dx.types.CBufRet.f32 %3749, 2
  %3987 = fptoui float %3986 to i32
  %3988 = icmp eq i32 %3987, 0
  br i1 %3988, label %4040, label %3989

; <label>:3989                                    ; preds = %3984
  br label %3990

; <label>:3990                                    ; preds = %4035, %3989
  %3991 = phi i32 [ %4036, %4035 ], [ %3985, %3989 ]
  %3992 = phi i32 [ %4037, %4035 ], [ 0, %3989 ]
  %3993 = lshr i32 %3992, 2
  %3994 = and i32 %3992, 3
  %3995 = add nuw nsw i32 %3993, 83
  %3996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 %3995)  ; CBufferLoadLegacy(handle,regIndex)
  %3997 = extractvalue %dx.types.CBufRet.i32 %3996, 0
  %3998 = extractvalue %dx.types.CBufRet.i32 %3996, 1
  %3999 = extractvalue %dx.types.CBufRet.i32 %3996, 2
  %4000 = extractvalue %dx.types.CBufRet.i32 %3996, 3
  %4001 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %3997, i32* %4001, align 4
  %4002 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %3998, i32* %4002, align 4
  %4003 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %3999, i32* %4003, align 4
  %4004 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %4000, i32* %4004, align 4
  %4005 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %3994
  %4006 = load i32, i32* %4005, align 4, !tbaa !99, !noalias !103
  %4007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.i32 %4007, 0
  %4009 = lshr i32 %4008, 16
  %4010 = and i32 %4009, 31
  %4011 = shl i32 %3933, %4010
  %4012 = add i32 %4011, %3932
  %4013 = shl i32 %4012, 2
  %4014 = add i32 %4013, %4006
  %4015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4014, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.i32 %4015, 0
  %4017 = icmp eq i32 %4016, 0
  br i1 %4017, label %4035, label %4018

; <label>:4018                                    ; preds = %3990
  %4019 = icmp slt i32 %4016, 0
  %4020 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3991
  %4021 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %3991
  %4022 = bitcast float* %4020 to i32*
  %4023 = bitcast float* %4021 to i32*
  br i1 %4019, label %4024, label %4031

; <label>:4024                                    ; preds = %4018
  %4025 = and i32 %4016, 1073741823
  %4026 = add i32 %4006, 20
  %4027 = add i32 %4026, %4025
  %4028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.i32 %4028, 0
  %4030 = extractvalue %dx.types.ResRet.i32 %4028, 1
  br label %4031

; <label>:4031                                    ; preds = %4024, %4018
  %4032 = phi i32 [ %4029, %4024 ], [ %3940, %4018 ]
  %4033 = phi i32 [ %4030, %4024 ], [ %3941, %4018 ]
  store i32 %4032, i32* %4022, align 4
  store i32 %4033, i32* %4023, align 4
  %4034 = add i32 %3991, 1
  br label %4035

; <label>:4035                                    ; preds = %4031, %3990
  %4036 = phi i32 [ %3991, %3990 ], [ %4034, %4031 ]
  %4037 = add nuw i32 %3992, 1
  %4038 = icmp eq i32 %4037, %3987
  br i1 %4038, label %4039, label %3990

; <label>:4039                                    ; preds = %4035
  br label %4040

; <label>:4040                                    ; preds = %4039, %3984
  %4041 = phi i32 [ %3985, %3984 ], [ %4036, %4039 ]
  %4042 = icmp eq i32 %4041, 1
  %4043 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  %4044 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 0
  br i1 %4042, label %4045, label %4048

; <label>:4045                                    ; preds = %4040
  %4046 = load float, float* %4043, align 4
  %4047 = load float, float* %4044, align 4
  br label %4075

; <label>:4048                                    ; preds = %4040
  %4049 = load float, float* %4043, align 4
  %4050 = load float, float* %4044, align 4
  %4051 = fdiv fast float 1.000000e+00, %4050
  %4052 = fsub fast float %4049, %4051
  %4053 = icmp ugt i32 %4041, 1
  br i1 %4053, label %4054, label %4070

; <label>:4054                                    ; preds = %4048
  br label %4055

; <label>:4055                                    ; preds = %4055, %4054
  %4056 = phi float [ %4065, %4055 ], [ %4052, %4054 ]
  %4057 = phi float [ %4066, %4055 ], [ %4049, %4054 ]
  %4058 = phi i32 [ %4067, %4055 ], [ 1, %4054 ]
  %4059 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %4058
  %4060 = load float, float* %4059, align 4
  %4061 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %4058
  %4062 = load float, float* %4061, align 4
  %4063 = fdiv fast float 1.000000e+00, %4062
  %4064 = fsub fast float %4060, %4063
  %4065 = call float @dx.op.binary.f32(i32 36, float %4056, float %4064)  ; FMin(a,b)
  %4066 = call float @dx.op.binary.f32(i32 35, float %4057, float %4060)  ; FMax(a,b)
  %4067 = add nuw i32 %4058, 1
  %4068 = icmp eq i32 %4067, %4041
  br i1 %4068, label %4069, label %4055

; <label>:4069                                    ; preds = %4055
  br label %4070

; <label>:4070                                    ; preds = %4069, %4048
  %4071 = phi float [ %4052, %4048 ], [ %4065, %4069 ]
  %4072 = phi float [ %4049, %4048 ], [ %4066, %4069 ]
  %4073 = fsub fast float %4072, %4071
  %4074 = fdiv fast float 1.000000e+00, %4073
  br label %4075

; <label>:4075                                    ; preds = %4070, %4045
  %4076 = phi float [ %4046, %4045 ], [ %4072, %4070 ]
  %4077 = phi float [ %4047, %4045 ], [ %4074, %4070 ]
  %4078 = fadd fast float %3779, %4076
  %4079 = fmul fast float %4078, %4077
  %4080 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4081 = fmul fast float %4080, 2.000000e+00
  %4082 = fsub fast float 1.000000e+00, %4081
  %4083 = fmul fast float %3917, %3917
  %4084 = fsub fast float %3918, %4083
  %4085 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %4084)  ; FMax(a,b)
  %4086 = fdiv fast float 1.000000e+00, %4085
  %4087 = fmul fast float %3918, %3917
  %4088 = fsub fast float %3919, %4087
  %4089 = fsub fast float %4082, %3917
  %4090 = fmul fast float %4082, %4082
  %4091 = fsub fast float %4090, %3918
  %4092 = fmul fast float %4086, %4088
  %4093 = fmul fast float %4092, %4089
  %4094 = fsub fast float %4091, %4093
  %4095 = fmul fast float %3918, %3918
  %4096 = fsub fast float %3920, %4095
  %4097 = fmul fast float %4088, %4088
  %4098 = fmul fast float %4097, %4086
  %4099 = fsub fast float %4096, %4098
  %4100 = fdiv fast float %4094, %4099
  %4101 = fmul fast float %4100, %4088
  %4102 = fsub fast float %4089, %4101
  %4103 = fmul fast float %4102, %4086
  %4104 = fmul fast float %4103, %3917
  %4105 = fsub fast float 1.000000e+00, %4104
  %4106 = fmul fast float %4100, %3918
  %4107 = fsub fast float %4105, %4106
  %4108 = fmul fast float %4103, %4103
  %4109 = fmul fast float %4100, 4.000000e+00
  %4110 = fmul fast float %4109, %4107
  %4111 = fsub fast float %4108, %4110
  %4112 = call float @dx.op.unary.f32(i32 24, float %4111)  ; Sqrt(value)
  %4113 = fcmp fast oge float %4103, 0.000000e+00
  %4114 = fsub fast float -0.000000e+00, %4112
  %4115 = select i1 %4113, float %4114, float %4112
  %4116 = fsub fast float %4115, %4103
  %4117 = fdiv fast float %4116, %4100
  %4118 = fdiv fast float %4107, %4116
  %4119 = fmul fast float %4117, 5.000000e-01
  %4120 = fmul fast float %4118, 2.000000e+00
  %4121 = select i1 %4113, float %4119, float %4120
  %4122 = select i1 %4113, float %4120, float %4119
  %4123 = call float @dx.op.binary.f32(i32 35, float %4121, float %4122)  ; FMax(a,b)
  %4124 = call float @dx.op.binary.f32(i32 36, float %4121, float %4122)  ; FMin(a,b)
  %4125 = fcmp fast ogt float %4082, %4123
  %4126 = fsub fast float %4082, %4124
  %4127 = fsub fast float %4082, %4123
  %4128 = fsub fast float %4123, %4124
  %4129 = select i1 %4125, float %4127, float %4128
  %4130 = fmul float %4126, %4129
  %4131 = select i1 %4125, float %4124, float %4082
  %4132 = fcmp fast ogt float %4082, %4124
  %4133 = fmul fast float %4131, %4123
  %4134 = fadd fast float %4131, %4123
  %4135 = fmul fast float %4134, %3917
  %4136 = fadd fast float %4133, %3918
  %4137 = fsub fast float %4136, %4135
  %4138 = fdiv fast float %4137, %4130
  %4139 = select i1 %4132, float %4138, float 0.000000e+00
  %4140 = fsub fast float 1.000000e+00, %4139
  %4141 = select i1 %4125, float %4140, float %4139
  %4142 = call float @dx.op.unary.f32(i32 7, float %4141)  ; Saturate(value)
  %4143 = extractvalue %dx.types.CBufRet.f32 %3902, 3
  %4144 = fmul fast float %4143, %4142
  %4145 = fsub fast float 1.000000e+00, %4144
  br label %4146

; <label>:4146                                    ; preds = %4075, %3787, %3752, %3748, %3714
  %4147 = phi float [ 1.000000e+00, %3714 ], [ %4145, %4075 ], [ 1.000000e+00, %3752 ], [ 1.000000e+00, %3787 ], [ 1.000000e+00, %3748 ]
  %4148 = fcmp fast ogt float %3744, 0.000000e+00
  br i1 %4148, label %4149, label %4311, !dx.controlflow.hints !112

; <label>:4149                                    ; preds = %4146
  %4150 = fadd fast float %3657, %3631
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4153 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4156 = call float @dx.op.binary.f32(i32 35, float %4150, float 0.000000e+00)  ; FMax(a,b)
  %4157 = fadd fast float %4156, 0x3F10000000000000
  %4158 = fcmp fast oeq float %4155, 0.000000e+00
  br i1 %4158, label %4159, label %4226

; <label>:4159                                    ; preds = %4149
  %4160 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4161 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4162 = fmul fast float %4161, %3646
  %4163 = fmul fast float %4160, %3647
  %4164 = fadd fast float %4162, 5.000000e-01
  %4165 = call float @dx.op.unary.f32(i32 27, float %4164)  ; Round_ni(value)
  %4166 = fadd fast float %4163, 5.000000e-01
  %4167 = call float @dx.op.unary.f32(i32 27, float %4166)  ; Round_ni(value)
  %4168 = fsub fast float %4164, %4165
  %4169 = fsub fast float %4166, %4167
  %4170 = fadd fast float %4165, -5.000000e-01
  %4171 = fadd fast float %4167, -5.000000e-01
  %4172 = fmul fast float %4168, 2.000000e+00
  %4173 = fsub fast float 3.000000e+00, %4172
  %4174 = fadd fast float %4172, 1.000000e+00
  %4175 = fsub fast float 2.000000e+00, %4168
  %4176 = bitcast float %4173 to i32
  %4177 = sub nsw i32 2129859010, %4176
  %4178 = bitcast i32 %4177 to float
  %4179 = fmul fast float %4178, %4175
  %4180 = fadd fast float %4179, -1.000000e+00
  %4181 = bitcast float %4174 to i32
  %4182 = sub nsw i32 2129859010, %4181
  %4183 = bitcast i32 %4182 to float
  %4184 = fmul fast float %4183, %4168
  %4185 = fadd fast float %4184, 1.000000e+00
  %4186 = fmul fast float %4169, 2.000000e+00
  %4187 = fsub fast float 3.000000e+00, %4186
  %4188 = fadd fast float %4186, 1.000000e+00
  %4189 = fsub fast float 2.000000e+00, %4169
  %4190 = bitcast float %4187 to i32
  %4191 = sub nsw i32 2129859010, %4190
  %4192 = bitcast i32 %4191 to float
  %4193 = fmul fast float %4192, %4189
  %4194 = fadd fast float %4193, -1.000000e+00
  %4195 = bitcast float %4188 to i32
  %4196 = sub nsw i32 2129859010, %4195
  %4197 = bitcast i32 %4196 to float
  %4198 = fmul fast float %4197, %4169
  %4199 = fadd fast float %4198, 1.000000e+00
  %4200 = fadd fast float %4180, %4170
  %4201 = fmul fast float %4200, %4152
  %4202 = fadd fast float %4194, %4171
  %4203 = fmul fast float %4202, %4153
  %4204 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %4201, float %4203, float undef, float undef, i32 0, i32 0, i32 undef, float %4157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = fmul fast float %4205, %4173
  %4207 = fadd fast float %4185, %4170
  %4208 = fmul fast float %4207, %4152
  %4209 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %4208, float %4203, float undef, float undef, i32 0, i32 0, i32 undef, float %4157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = fmul fast float %4210, %4174
  %4212 = fadd fast float %4199, %4171
  %4213 = fmul fast float %4212, %4153
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %4201, float %4213, float undef, float undef, i32 0, i32 0, i32 undef, float %4157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = fmul fast float %4215, %4173
  %4217 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %4208, float %4213, float undef, float undef, i32 0, i32 0, i32 undef, float %4157)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = fmul fast float %4218, %4174
  %4220 = fadd fast float %4219, %4216
  %4221 = fmul fast float %4220, %4188
  %4222 = fadd fast float %4211, %4206
  %4223 = fmul fast float %4222, %4187
  %4224 = fadd fast float %4223, %4221
  %4225 = fmul fast float %4224, 6.250000e-02
  br label %4311

; <label>:4226                                    ; preds = %4149
  %4227 = fmul fast float %218, 0x401921FB60000000
  %4228 = call float @dx.op.unary.f32(i32 13, float %4227)  ; Sin(value)
  %4229 = call float @dx.op.unary.f32(i32 12, float %4227)  ; Cos(value)
  %4230 = fsub fast float -0.000000e+00, %4228
  br label %4231

; <label>:4231                                    ; preds = %4280, %4226
  %4232 = phi float [ 0.000000e+00, %4226 ], [ %4275, %4280 ]
  %4233 = phi float [ 0.000000e+00, %4226 ], [ %4277, %4280 ]
  %4234 = phi i32 [ 0, %4226 ], [ %4281, %4280 ]
  %4235 = mul i32 %4234, 2
  %4236 = add i32 0, %4235
  %4237 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4236
  %4238 = load float, float* %4237, align 4
  %4239 = mul i32 %4234, 2
  %4240 = add i32 1, %4239
  %4241 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4240
  %4242 = load float, float* %4241, align 4
  %4243 = fmul fast float %4238, %4229
  %4244 = call float @dx.op.tertiary.f32(i32 46, float %4242, float %4230, float %4243)  ; FMad(a,b,c)
  %4245 = fmul fast float %4238, %4228
  %4246 = call float @dx.op.tertiary.f32(i32 46, float %4242, float %4229, float %4245)  ; FMad(a,b,c)
  %4247 = fmul fast float %4244, %4155
  %4248 = fmul fast float %4246, %4155
  %4249 = fadd fast float %4247, %3646
  %4250 = fadd fast float %4248, %3647
  %4251 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %52, float %4249, float %4250, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.ResRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.ResRet.f32 %4251, 2
  %4255 = extractvalue %dx.types.ResRet.f32 %4251, 3
  %4256 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %4252, float* %4256, align 4
  %4257 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %4253, float* %4257, align 4
  %4258 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %4254, float* %4258, align 4
  %4259 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %4255, float* %4259, align 4
  %4260 = fsub fast float %4252, %4157
  %4261 = fcmp fast olt float %4260, 0.000000e+00
  %4262 = select i1 %4261, float 0.000000e+00, float 1.000000e+00
  %4263 = fadd fast float %4262, %4232
  %4264 = fmul fast float %4262, %4260
  %4265 = fadd fast float %4264, %4233
  br label %4266

; <label>:4266                                    ; preds = %4266, %4231
  %4267 = phi i32 [ 1, %4231 ], [ %4278, %4266 ]
  %4268 = phi float [ %4265, %4231 ], [ %4277, %4266 ]
  %4269 = phi float [ %4263, %4231 ], [ %4275, %4266 ]
  %4270 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %4267
  %4271 = load float, float* %4270, align 4, !tbaa !113, !noalias !103
  %4272 = fsub fast float %4271, %4157
  %4273 = fcmp fast olt float %4272, 0.000000e+00
  %4274 = select i1 %4273, float 0.000000e+00, float 1.000000e+00
  %4275 = fadd fast float %4274, %4269
  %4276 = fmul fast float %4274, %4272
  %4277 = fadd fast float %4276, %4268
  %4278 = add nuw nsw i32 %4267, 1
  %4279 = icmp eq i32 %4278, 4
  br i1 %4279, label %4280, label %4266, !llvm.loop !115

; <label>:4280                                    ; preds = %4266
  %4281 = add nuw nsw i32 %4234, 1
  %4282 = icmp eq i32 %4281, 8
  br i1 %4282, label %4283, label %4231, !llvm.loop !116

; <label>:4283                                    ; preds = %4280
  %4284 = fdiv fast float 1.000000e+00, %4275
  %4285 = fmul fast float %4284, %4277
  %4286 = fdiv fast float 1.000000e+00, %4157
  %4287 = fmul fast float %4285, %4286
  %4288 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4289 = call float @dx.op.binary.f32(i32 35, float %4288, float 0.000000e+00)  ; FMax(a,b)
  %4290 = fmul fast float %4275, 3.125000e-02
  %4291 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4292 = fmul fast float %4291, 2.000000e+00
  %4293 = fadd fast float %4292, -1.000000e+00
  %4294 = fcmp fast ogt float %4293, 0.000000e+00
  %4295 = fcmp fast olt float %4293, 0.000000e+00
  %4296 = zext i1 %4294 to i32
  %4297 = zext i1 %4295 to i32
  %4298 = sub nsw i32 %4296, %4297
  %4299 = sitofp i32 %4298 to float
  %4300 = fmul fast float %4299, %4293
  %4301 = fsub fast float 1.000000e+00, %4300
  %4302 = fmul fast float %4301, %4301
  %4303 = fmul fast float %4302, %4301
  %4304 = fsub fast float %4301, %4303
  %4305 = fmul fast float %4304, %4289
  %4306 = fsub fast float 1.000000e+00, %4303
  %4307 = fsub fast float %4306, %4305
  %4308 = fmul fast float %4299, 5.000000e-01
  %4309 = fmul fast float %4308, %4307
  %4310 = fsub fast float 5.000000e-01, %4309
  br label %4311

; <label>:4311                                    ; preds = %4283, %4159, %4146
  %4312 = phi float [ 1.000000e+00, %4146 ], [ %4225, %4159 ], [ %4310, %4283 ]
  %4313 = fcmp fast ogt float %3742, 0.000000e+00
  br i1 %4313, label %4314, label %4478, !dx.controlflow.hints !117

; <label>:4314                                    ; preds = %4311
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4317 = fadd fast float %4316, %3631
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 2
  %4320 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 1
  %4323 = call float @dx.op.binary.f32(i32 35, float %4317, float 0.000000e+00)  ; FMax(a,b)
  %4324 = fadd fast float %4323, 0x3F10000000000000
  %4325 = fcmp fast oeq float %4322, 0.000000e+00
  br i1 %4325, label %4326, label %4393

; <label>:4326                                    ; preds = %4314
  %4327 = extractvalue %dx.types.CBufRet.f32 %4318, 1
  %4328 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4329 = fmul fast float %4328, %3638
  %4330 = fmul fast float %4327, %3639
  %4331 = fadd fast float %4329, 5.000000e-01
  %4332 = call float @dx.op.unary.f32(i32 27, float %4331)  ; Round_ni(value)
  %4333 = fadd fast float %4330, 5.000000e-01
  %4334 = call float @dx.op.unary.f32(i32 27, float %4333)  ; Round_ni(value)
  %4335 = fsub fast float %4331, %4332
  %4336 = fsub fast float %4333, %4334
  %4337 = fadd fast float %4332, -5.000000e-01
  %4338 = fadd fast float %4334, -5.000000e-01
  %4339 = fmul fast float %4335, 2.000000e+00
  %4340 = fsub fast float 3.000000e+00, %4339
  %4341 = fadd fast float %4339, 1.000000e+00
  %4342 = fsub fast float 2.000000e+00, %4335
  %4343 = bitcast float %4340 to i32
  %4344 = sub nsw i32 2129859010, %4343
  %4345 = bitcast i32 %4344 to float
  %4346 = fmul fast float %4345, %4342
  %4347 = fadd fast float %4346, -1.000000e+00
  %4348 = bitcast float %4341 to i32
  %4349 = sub nsw i32 2129859010, %4348
  %4350 = bitcast i32 %4349 to float
  %4351 = fmul fast float %4350, %4335
  %4352 = fadd fast float %4351, 1.000000e+00
  %4353 = fmul fast float %4336, 2.000000e+00
  %4354 = fsub fast float 3.000000e+00, %4353
  %4355 = fadd fast float %4353, 1.000000e+00
  %4356 = fsub fast float 2.000000e+00, %4336
  %4357 = bitcast float %4354 to i32
  %4358 = sub nsw i32 2129859010, %4357
  %4359 = bitcast i32 %4358 to float
  %4360 = fmul fast float %4359, %4356
  %4361 = fadd fast float %4360, -1.000000e+00
  %4362 = bitcast float %4355 to i32
  %4363 = sub nsw i32 2129859010, %4362
  %4364 = bitcast i32 %4363 to float
  %4365 = fmul fast float %4364, %4336
  %4366 = fadd fast float %4365, 1.000000e+00
  %4367 = fadd fast float %4347, %4337
  %4368 = fmul fast float %4367, %4319
  %4369 = fadd fast float %4361, %4338
  %4370 = fmul fast float %4369, %4320
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %4368, float %4370, float undef, float undef, i32 0, i32 0, i32 undef, float %4324)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = fmul fast float %4372, %4340
  %4374 = fadd fast float %4352, %4337
  %4375 = fmul fast float %4374, %4319
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %4375, float %4370, float undef, float undef, i32 0, i32 0, i32 undef, float %4324)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = fmul fast float %4377, %4341
  %4379 = fadd fast float %4366, %4338
  %4380 = fmul fast float %4379, %4320
  %4381 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %4368, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float %4324)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = fmul fast float %4382, %4340
  %4384 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %4375, float %4380, float undef, float undef, i32 0, i32 0, i32 undef, float %4324)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4386 = fmul fast float %4385, %4341
  %4387 = fadd fast float %4386, %4383
  %4388 = fmul fast float %4387, %4355
  %4389 = fadd fast float %4378, %4373
  %4390 = fmul fast float %4389, %4354
  %4391 = fadd fast float %4390, %4388
  %4392 = fmul fast float %4391, 6.250000e-02
  br label %4478

; <label>:4393                                    ; preds = %4314
  %4394 = fmul fast float %218, 0x401921FB60000000
  %4395 = call float @dx.op.unary.f32(i32 13, float %4394)  ; Sin(value)
  %4396 = call float @dx.op.unary.f32(i32 12, float %4394)  ; Cos(value)
  %4397 = fsub fast float -0.000000e+00, %4395
  br label %4398

; <label>:4398                                    ; preds = %4447, %4393
  %4399 = phi float [ 0.000000e+00, %4393 ], [ %4442, %4447 ]
  %4400 = phi float [ 0.000000e+00, %4393 ], [ %4444, %4447 ]
  %4401 = phi i32 [ 0, %4393 ], [ %4448, %4447 ]
  %4402 = mul i32 %4401, 2
  %4403 = add i32 0, %4402
  %4404 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4403
  %4405 = load float, float* %4404, align 4
  %4406 = mul i32 %4401, 2
  %4407 = add i32 1, %4406
  %4408 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4407
  %4409 = load float, float* %4408, align 4
  %4410 = fmul fast float %4405, %4396
  %4411 = call float @dx.op.tertiary.f32(i32 46, float %4409, float %4397, float %4410)  ; FMad(a,b,c)
  %4412 = fmul fast float %4405, %4395
  %4413 = call float @dx.op.tertiary.f32(i32 46, float %4409, float %4396, float %4412)  ; FMad(a,b,c)
  %4414 = fmul fast float %4411, %4322
  %4415 = fmul fast float %4413, %4322
  %4416 = fadd fast float %4414, %3638
  %4417 = fadd fast float %4415, %3639
  %4418 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %52, float %4416, float %4417, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = extractvalue %dx.types.ResRet.f32 %4418, 3
  %4423 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %4419, float* %4423, align 4
  %4424 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %4420, float* %4424, align 4
  %4425 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %4421, float* %4425, align 4
  %4426 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  store float %4422, float* %4426, align 4
  %4427 = fsub fast float %4419, %4324
  %4428 = fcmp fast olt float %4427, 0.000000e+00
  %4429 = select i1 %4428, float 0.000000e+00, float 1.000000e+00
  %4430 = fadd fast float %4429, %4399
  %4431 = fmul fast float %4429, %4427
  %4432 = fadd fast float %4431, %4400
  br label %4433

; <label>:4433                                    ; preds = %4433, %4398
  %4434 = phi i32 [ 1, %4398 ], [ %4445, %4433 ]
  %4435 = phi float [ %4432, %4398 ], [ %4444, %4433 ]
  %4436 = phi float [ %4430, %4398 ], [ %4442, %4433 ]
  %4437 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %4434
  %4438 = load float, float* %4437, align 4, !tbaa !113, !noalias !103
  %4439 = fsub fast float %4438, %4324
  %4440 = fcmp fast olt float %4439, 0.000000e+00
  %4441 = select i1 %4440, float 0.000000e+00, float 1.000000e+00
  %4442 = fadd fast float %4441, %4436
  %4443 = fmul fast float %4441, %4439
  %4444 = fadd fast float %4443, %4435
  %4445 = add nuw nsw i32 %4434, 1
  %4446 = icmp eq i32 %4445, 4
  br i1 %4446, label %4447, label %4433, !llvm.loop !115

; <label>:4447                                    ; preds = %4433
  %4448 = add nuw nsw i32 %4401, 1
  %4449 = icmp eq i32 %4448, 8
  br i1 %4449, label %4450, label %4398, !llvm.loop !116

; <label>:4450                                    ; preds = %4447
  %4451 = fdiv fast float 1.000000e+00, %4442
  %4452 = fmul fast float %4451, %4444
  %4453 = fdiv fast float 1.000000e+00, %4324
  %4454 = fmul fast float %4452, %4453
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = call float @dx.op.binary.f32(i32 35, float %4455, float 0.000000e+00)  ; FMax(a,b)
  %4457 = fmul fast float %4442, 3.125000e-02
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fmul fast float %4458, 2.000000e+00
  %4460 = fadd fast float %4459, -1.000000e+00
  %4461 = fcmp fast ogt float %4460, 0.000000e+00
  %4462 = fcmp fast olt float %4460, 0.000000e+00
  %4463 = zext i1 %4461 to i32
  %4464 = zext i1 %4462 to i32
  %4465 = sub nsw i32 %4463, %4464
  %4466 = sitofp i32 %4465 to float
  %4467 = fmul fast float %4466, %4460
  %4468 = fsub fast float 1.000000e+00, %4467
  %4469 = fmul fast float %4468, %4468
  %4470 = fmul fast float %4469, %4468
  %4471 = fsub fast float %4468, %4470
  %4472 = fmul fast float %4471, %4456
  %4473 = fsub fast float 1.000000e+00, %4470
  %4474 = fsub fast float %4473, %4472
  %4475 = fmul fast float %4466, 5.000000e-01
  %4476 = fmul fast float %4475, %4474
  %4477 = fsub fast float 5.000000e-01, %4476
  br label %4478

; <label>:4478                                    ; preds = %4450, %4326, %4311
  %4479 = phi float [ 1.000000e+00, %4311 ], [ %4392, %4326 ], [ %4477, %4450 ]
  %4480 = fcmp fast ogt float %3741, 0.000000e+00
  br i1 %4480, label %4481, label %4645, !dx.controlflow.hints !118

; <label>:4481                                    ; preds = %4478
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 0
  %4484 = fadd fast float %4483, %3631
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 2
  %4487 = extractvalue %dx.types.CBufRet.f32 %4485, 3
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 0
  %4490 = call float @dx.op.binary.f32(i32 35, float %4484, float 0.000000e+00)  ; FMax(a,b)
  %4491 = fadd fast float %4490, 0x3F10000000000000
  %4492 = fcmp fast oeq float %4489, 0.000000e+00
  br i1 %4492, label %4493, label %4560

; <label>:4493                                    ; preds = %4481
  %4494 = extractvalue %dx.types.CBufRet.f32 %4485, 1
  %4495 = extractvalue %dx.types.CBufRet.f32 %4485, 0
  %4496 = fmul fast float %4495, %3623
  %4497 = fmul fast float %4494, %3627
  %4498 = fadd fast float %4496, 5.000000e-01
  %4499 = call float @dx.op.unary.f32(i32 27, float %4498)  ; Round_ni(value)
  %4500 = fadd fast float %4497, 5.000000e-01
  %4501 = call float @dx.op.unary.f32(i32 27, float %4500)  ; Round_ni(value)
  %4502 = fsub fast float %4498, %4499
  %4503 = fsub fast float %4500, %4501
  %4504 = fadd fast float %4499, -5.000000e-01
  %4505 = fadd fast float %4501, -5.000000e-01
  %4506 = fmul fast float %4502, 2.000000e+00
  %4507 = fsub fast float 3.000000e+00, %4506
  %4508 = fadd fast float %4506, 1.000000e+00
  %4509 = fsub fast float 2.000000e+00, %4502
  %4510 = bitcast float %4507 to i32
  %4511 = sub nsw i32 2129859010, %4510
  %4512 = bitcast i32 %4511 to float
  %4513 = fmul fast float %4512, %4509
  %4514 = fadd fast float %4513, -1.000000e+00
  %4515 = bitcast float %4508 to i32
  %4516 = sub nsw i32 2129859010, %4515
  %4517 = bitcast i32 %4516 to float
  %4518 = fmul fast float %4517, %4502
  %4519 = fadd fast float %4518, 1.000000e+00
  %4520 = fmul fast float %4503, 2.000000e+00
  %4521 = fsub fast float 3.000000e+00, %4520
  %4522 = fadd fast float %4520, 1.000000e+00
  %4523 = fsub fast float 2.000000e+00, %4503
  %4524 = bitcast float %4521 to i32
  %4525 = sub nsw i32 2129859010, %4524
  %4526 = bitcast i32 %4525 to float
  %4527 = fmul fast float %4526, %4523
  %4528 = fadd fast float %4527, -1.000000e+00
  %4529 = bitcast float %4522 to i32
  %4530 = sub nsw i32 2129859010, %4529
  %4531 = bitcast i32 %4530 to float
  %4532 = fmul fast float %4531, %4503
  %4533 = fadd fast float %4532, 1.000000e+00
  %4534 = fadd fast float %4514, %4504
  %4535 = fmul fast float %4534, %4486
  %4536 = fadd fast float %4528, %4505
  %4537 = fmul fast float %4536, %4487
  %4538 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %4535, float %4537, float undef, float undef, i32 0, i32 0, i32 undef, float %4491)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4539 = extractvalue %dx.types.ResRet.f32 %4538, 0
  %4540 = fmul fast float %4539, %4507
  %4541 = fadd fast float %4519, %4504
  %4542 = fmul fast float %4541, %4486
  %4543 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %4542, float %4537, float undef, float undef, i32 0, i32 0, i32 undef, float %4491)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = fmul fast float %4544, %4508
  %4546 = fadd fast float %4533, %4505
  %4547 = fmul fast float %4546, %4487
  %4548 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %4535, float %4547, float undef, float undef, i32 0, i32 0, i32 undef, float %4491)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = fmul fast float %4549, %4507
  %4551 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %4542, float %4547, float undef, float undef, i32 0, i32 0, i32 undef, float %4491)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = fmul fast float %4552, %4508
  %4554 = fadd fast float %4553, %4550
  %4555 = fmul fast float %4554, %4522
  %4556 = fadd fast float %4545, %4540
  %4557 = fmul fast float %4556, %4521
  %4558 = fadd fast float %4557, %4555
  %4559 = fmul fast float %4558, 6.250000e-02
  br label %4645

; <label>:4560                                    ; preds = %4481
  %4561 = fmul fast float %218, 0x401921FB60000000
  %4562 = call float @dx.op.unary.f32(i32 13, float %4561)  ; Sin(value)
  %4563 = call float @dx.op.unary.f32(i32 12, float %4561)  ; Cos(value)
  %4564 = fsub fast float -0.000000e+00, %4562
  br label %4565

; <label>:4565                                    ; preds = %4614, %4560
  %4566 = phi float [ 0.000000e+00, %4560 ], [ %4609, %4614 ]
  %4567 = phi float [ 0.000000e+00, %4560 ], [ %4611, %4614 ]
  %4568 = phi i32 [ 0, %4560 ], [ %4615, %4614 ]
  %4569 = mul i32 %4568, 2
  %4570 = add i32 0, %4569
  %4571 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4570
  %4572 = load float, float* %4571, align 4
  %4573 = mul i32 %4568, 2
  %4574 = add i32 1, %4573
  %4575 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4574
  %4576 = load float, float* %4575, align 4
  %4577 = fmul fast float %4572, %4563
  %4578 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4564, float %4577)  ; FMad(a,b,c)
  %4579 = fmul fast float %4572, %4562
  %4580 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4563, float %4579)  ; FMad(a,b,c)
  %4581 = fmul fast float %4578, %4489
  %4582 = fmul fast float %4580, %4489
  %4583 = fadd fast float %4581, %3623
  %4584 = fadd fast float %4582, %3627
  %4585 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %52, float %4583, float %4584, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4586 = extractvalue %dx.types.ResRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.ResRet.f32 %4585, 1
  %4588 = extractvalue %dx.types.ResRet.f32 %4585, 2
  %4589 = extractvalue %dx.types.ResRet.f32 %4585, 3
  %4590 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %4586, float* %4590, align 4
  %4591 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %4587, float* %4591, align 4
  %4592 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %4588, float* %4592, align 4
  %4593 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %4589, float* %4593, align 4
  %4594 = fsub fast float %4586, %4491
  %4595 = fcmp fast olt float %4594, 0.000000e+00
  %4596 = select i1 %4595, float 0.000000e+00, float 1.000000e+00
  %4597 = fadd fast float %4596, %4566
  %4598 = fmul fast float %4596, %4594
  %4599 = fadd fast float %4598, %4567
  br label %4600

; <label>:4600                                    ; preds = %4600, %4565
  %4601 = phi i32 [ 1, %4565 ], [ %4612, %4600 ]
  %4602 = phi float [ %4599, %4565 ], [ %4611, %4600 ]
  %4603 = phi float [ %4597, %4565 ], [ %4609, %4600 ]
  %4604 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %4601
  %4605 = load float, float* %4604, align 4, !tbaa !113, !noalias !103
  %4606 = fsub fast float %4605, %4491
  %4607 = fcmp fast olt float %4606, 0.000000e+00
  %4608 = select i1 %4607, float 0.000000e+00, float 1.000000e+00
  %4609 = fadd fast float %4608, %4603
  %4610 = fmul fast float %4608, %4606
  %4611 = fadd fast float %4610, %4602
  %4612 = add nuw nsw i32 %4601, 1
  %4613 = icmp eq i32 %4612, 4
  br i1 %4613, label %4614, label %4600, !llvm.loop !115

; <label>:4614                                    ; preds = %4600
  %4615 = add nuw nsw i32 %4568, 1
  %4616 = icmp eq i32 %4615, 8
  br i1 %4616, label %4617, label %4565, !llvm.loop !116

; <label>:4617                                    ; preds = %4614
  %4618 = fdiv fast float 1.000000e+00, %4609
  %4619 = fmul fast float %4618, %4611
  %4620 = fdiv fast float 1.000000e+00, %4491
  %4621 = fmul fast float %4619, %4620
  %4622 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4623 = call float @dx.op.binary.f32(i32 35, float %4622, float 0.000000e+00)  ; FMax(a,b)
  %4624 = fmul fast float %4609, 3.125000e-02
  %4625 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4626 = fmul fast float %4625, 2.000000e+00
  %4627 = fadd fast float %4626, -1.000000e+00
  %4628 = fcmp fast ogt float %4627, 0.000000e+00
  %4629 = fcmp fast olt float %4627, 0.000000e+00
  %4630 = zext i1 %4628 to i32
  %4631 = zext i1 %4629 to i32
  %4632 = sub nsw i32 %4630, %4631
  %4633 = sitofp i32 %4632 to float
  %4634 = fmul fast float %4633, %4627
  %4635 = fsub fast float 1.000000e+00, %4634
  %4636 = fmul fast float %4635, %4635
  %4637 = fmul fast float %4636, %4635
  %4638 = fsub fast float %4635, %4637
  %4639 = fmul fast float %4638, %4623
  %4640 = fsub fast float 1.000000e+00, %4637
  %4641 = fsub fast float %4640, %4639
  %4642 = fmul fast float %4633, 5.000000e-01
  %4643 = fmul fast float %4642, %4641
  %4644 = fsub fast float 5.000000e-01, %4643
  br label %4645

; <label>:4645                                    ; preds = %4617, %4493, %4478
  %4646 = phi float [ 1.000000e+00, %4478 ], [ %4559, %4493 ], [ %4644, %4617 ]
  %4647 = fsub fast float %4312, %4147
  %4648 = fmul fast float %4647, %3685
  %4649 = fadd fast float %4648, %4147
  %4650 = fsub fast float %4479, %4649
  %4651 = fmul fast float %4650, %3715
  %4652 = fadd fast float %4651, %4649
  %4653 = fsub fast float %4646, %4652
  %4654 = fmul fast float %4653, %3741
  %4655 = fadd fast float %4654, %4652
  %4656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4657 = extractvalue %dx.types.CBufRet.f32 %4656, 2
  %4658 = fcmp fast ogt float %4657, 0.000000e+00
  br i1 %4658, label %4659, label %4699, !dx.controlflow.hints !119

; <label>:4659                                    ; preds = %4645
  %4660 = fcmp fast ugt float %4657, 0.000000e+00
  br i1 %4660, label %4661, label %4696

; <label>:4661                                    ; preds = %4659
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.CBufRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.CBufRet.f32 %4662, 2
  %4666 = extractvalue %dx.types.CBufRet.f32 %4662, 3
  %4667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4668 = extractvalue %dx.types.CBufRet.f32 %4667, 0
  %4669 = extractvalue %dx.types.CBufRet.f32 %4667, 1
  %4670 = extractvalue %dx.types.CBufRet.f32 %4667, 2
  %4671 = extractvalue %dx.types.CBufRet.f32 %4667, 3
  %4672 = extractvalue %dx.types.CBufRet.f32 %4656, 0
  %4673 = extractvalue %dx.types.CBufRet.f32 %4656, 1
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.CBufRet.f32 %4674, 1
  %4677 = extractvalue %dx.types.CBufRet.f32 %4674, 2
  %4678 = fadd fast float %4675, %3600
  %4679 = fadd fast float %4676, %3601
  %4680 = fadd fast float %4677, %3602
  %4681 = fmul fast float %4678, %4663
  %4682 = call float @dx.op.tertiary.f32(i32 46, float %4664, float %4679, float %4681)  ; FMad(a,b,c)
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4665, float %4680, float %4682)  ; FMad(a,b,c)
  %4684 = fadd fast float %4683, %4666
  %4685 = fmul fast float %4678, %4668
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4669, float %4679, float %4685)  ; FMad(a,b,c)
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4670, float %4680, float %4686)  ; FMad(a,b,c)
  %4688 = fadd fast float %4687, %4671
  %4689 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %48, float %4684, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4690 = extractvalue %dx.types.ResRet.f32 %4689, 0
  %4691 = fmul fast float %4690, %4673
  %4692 = fadd fast float %4691, %4672
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4693, %4657
  %4695 = fsub fast float 1.000000e+00, %4694
  br label %4696

; <label>:4696                                    ; preds = %4661, %4659
  %4697 = phi float [ %4695, %4661 ], [ 1.000000e+00, %4659 ]
  %4698 = fmul fast float %4697, %4655
  br label %4699

; <label>:4699                                    ; preds = %4696, %4645, %3580
  %4700 = phi float [ 1.000000e+00, %3580 ], [ %4698, %4696 ], [ %4655, %4645 ]
  %4701 = call float @dx.op.binary.f32(i32 36, float %4700, float %4700)  ; FMin(a,b)
  %4702 = call float @dx.op.binary.f32(i32 36, float %4700, float %4701)  ; FMin(a,b)
  %4703 = fcmp fast ogt float %4702, 0.000000e+00
  br i1 %4703, label %4704, label %4869, !dx.controlflow.hints !120

; <label>:4704                                    ; preds = %4699
  %4705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4706 = extractvalue %dx.types.CBufRet.f32 %4705, 0
  %4707 = extractvalue %dx.types.CBufRet.f32 %4705, 1
  %4708 = extractvalue %dx.types.CBufRet.f32 %4705, 2
  %4709 = extractvalue %dx.types.CBufRet.f32 %4705, 3
  %4710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4711 = extractvalue %dx.types.CBufRet.f32 %4710, 0
  %4712 = extractvalue %dx.types.CBufRet.f32 %4710, 1
  %4713 = extractvalue %dx.types.CBufRet.f32 %4710, 2
  %4714 = extractvalue %dx.types.CBufRet.f32 %4710, 3
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 0
  %4717 = extractvalue %dx.types.CBufRet.f32 %4715, 1
  %4718 = extractvalue %dx.types.CBufRet.f32 %4715, 2
  %4719 = extractvalue %dx.types.CBufRet.f32 %4715, 3
  %4720 = fmul fast float %4706, %3600
  %4721 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %4707, float %4720)  ; FMad(a,b,c)
  %4722 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %4708, float %4721)  ; FMad(a,b,c)
  %4723 = fadd fast float %4722, %4709
  %4724 = fmul fast float %4711, %3600
  %4725 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %4712, float %4724)  ; FMad(a,b,c)
  %4726 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %4713, float %4725)  ; FMad(a,b,c)
  %4727 = fadd fast float %4726, %4714
  %4728 = fmul fast float %4716, %3600
  %4729 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %4717, float %4728)  ; FMad(a,b,c)
  %4730 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %4718, float %4729)  ; FMad(a,b,c)
  %4731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.f32 %4731, 0
  %4733 = extractvalue %dx.types.CBufRet.f32 %4731, 1
  %4734 = extractvalue %dx.types.CBufRet.f32 %4731, 3
  %4735 = fmul fast float %4734, %4723
  %4736 = fmul fast float %4734, %4727
  %4737 = fadd fast float %4735, %4732
  %4738 = fadd fast float %4736, %4733
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4741 = extractvalue %dx.types.CBufRet.f32 %4739, 1
  %4742 = fsub fast float %4737, %4740
  %4743 = fsub fast float %4738, %4741
  %4744 = fcmp fast olt float %4742, 0.000000e+00
  %4745 = fcmp fast olt float %4743, 0.000000e+00
  %4746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4747 = extractvalue %dx.types.CBufRet.f32 %4746, 0
  %4748 = extractvalue %dx.types.CBufRet.f32 %4746, 1
  %4749 = extractvalue %dx.types.CBufRet.f32 %4746, 2
  %4750 = extractvalue %dx.types.CBufRet.f32 %4746, 3
  %4751 = select i1 %4744, float %4747, float %4749
  %4752 = select i1 %4745, float %4748, float %4750
  %4753 = fmul fast float %4751, %4742
  %4754 = fmul fast float %4752, %4743
  %4755 = call float @dx.op.unary.f32(i32 6, float %4753)  ; FAbs(value)
  %4756 = call float @dx.op.unary.f32(i32 6, float %4754)  ; FAbs(value)
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = call float @dx.op.binary.f32(i32 35, float %4755, float %4756)  ; FMax(a,b)
  %4760 = fsub fast float %4758, %4759
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fcmp fast ogt float %4761, 0.000000e+00
  br i1 %4762, label %4763, label %4804, !dx.controlflow.hints !121

; <label>:4763                                    ; preds = %4704
  %4764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %51, float %4737, float %4738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 1
  %4766 = fcmp fast ogt float %4765, 0.000000e+00
  br i1 %4766, label %4767, label %4799

; <label>:4767                                    ; preds = %4763
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %4737, float %4738, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = extractvalue %dx.types.ResRet.f32 %4768, 3
  %4773 = fsub fast float 1.000000e+00, %4719
  %4774 = fsub fast float %4773, %4730
  %4775 = fmul fast float %4774, 0x400921FB60000000
  %4776 = fadd fast float %4775, 0x3FF921FB60000000
  %4777 = call float @dx.op.unary.f32(i32 13, float %4776)  ; Sin(value)
  %4778 = fadd fast float %4777, -1.000000e+00
  %4779 = fmul fast float %4778, 0x3FD45F3060000000
  %4780 = fmul fast float %4774, 0x401921FB60000000
  %4781 = fadd fast float %4780, 0x400921FB60000000
  %4782 = call float @dx.op.unary.f32(i32 13, float %4781)  ; Sin(value)
  %4783 = fadd fast float %4782, 0x3E7777A5C0000000
  %4784 = fmul fast float %4783, 0x3FC45F3060000000
  %4785 = fmul fast float %4774, 0x4022D97C80000000
  %4786 = fadd fast float %4785, 0x4012D97C80000000
  %4787 = call float @dx.op.unary.f32(i32 13, float %4786)  ; Sin(value)
  %4788 = fadd fast float %4787, 1.000000e+00
  %4789 = fmul fast float %4788, 0x3FBB2995E0000000
  %4790 = fmul fast float %4774, 0x402921FB60000000
  %4791 = fadd fast float %4790, 0x401921FB60000000
  %4792 = call float @dx.op.unary.f32(i32 13, float %4791)  ; Sin(value)
  %4793 = fadd fast float %4792, 0xBE8777A5C0000000
  %4794 = fmul fast float %4793, 0x3FB45F3060000000
  %4795 = call float @dx.op.dot4.f32(i32 56, float %4769, float %4770, float %4771, float %4772, float %4779, float %4784, float %4789, float %4794)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4796 = fmul fast float %4795, 0xBFF7154760000000
  %4797 = call float @dx.op.unary.f32(i32 21, float %4796)  ; Exp(value)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  br label %4799

; <label>:4799                                    ; preds = %4767, %4763
  %4800 = phi float [ %4798, %4767 ], [ 1.000000e+00, %4763 ]
  %4801 = fadd fast float %4800, -1.000000e+00
  %4802 = fmul fast float %4801, %4761
  %4803 = fadd fast float %4802, 1.000000e+00
  br label %4804

; <label>:4804                                    ; preds = %4799, %4704
  %4805 = phi float [ %4803, %4799 ], [ 1.000000e+00, %4704 ]
  %4806 = fmul fast float %4805, %4700
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.CBufRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.CBufRet.f32 %4807, 2
  %4811 = fadd fast float %4808, %143
  %4812 = fadd fast float %4809, %144
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 1
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.CBufRet.f32 %4815, 2
  %4819 = fsub fast float -0.000000e+00, %4811
  %4820 = fsub fast float -0.000000e+00, %4812
  %4821 = fsub fast float %2532, %4810
  %4822 = fadd fast float %4821, %4814
  %4823 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4819, float %4820, float %4822)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = fdiv fast float 1.000000e+00, %4824
  %4826 = fmul fast float %4825, %4823
  %4827 = fmul fast float %4816, %4826
  %4828 = fmul fast float %4817, %4826
  %4829 = fadd fast float %4827, %4811
  %4830 = fadd fast float %4828, %4812
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.CBufRet.f32 %4831, 1
  %4834 = fsub fast float %4829, %4832
  %4835 = fsub fast float %4830, %4833
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 2
  %4838 = extractvalue %dx.types.CBufRet.f32 %4836, 3
  %4839 = fmul fast float %4834, %4837
  %4840 = fmul fast float %4835, %4838
  %4841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.i32 %4841, 3
  %4843 = icmp eq i32 %4842, 0
  br i1 %4843, label %4849, label %4844

; <label>:4844                                    ; preds = %4804
  %4845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %4839, float %4840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4846 = extractvalue %dx.types.ResRet.f32 %4845, 0
  %4847 = extractvalue %dx.types.ResRet.f32 %4845, 1
  %4848 = extractvalue %dx.types.ResRet.f32 %4845, 2
  br label %4854

; <label>:4849                                    ; preds = %4804
  %4850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %4839, float %4840, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4851 = extractvalue %dx.types.ResRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.ResRet.f32 %4850, 1
  %4853 = extractvalue %dx.types.ResRet.f32 %4850, 2
  br label %4854

; <label>:4854                                    ; preds = %4849, %4844
  %4855 = phi float [ %4846, %4844 ], [ %4851, %4849 ]
  %4856 = phi float [ %4847, %4844 ], [ %4852, %4849 ]
  %4857 = phi float [ %4848, %4844 ], [ %4853, %4849 ]
  %4858 = extractvalue %dx.types.CBufRet.f32 %4813, 2
  %4859 = fmul fast float %4858, %4855
  %4860 = extractvalue %dx.types.CBufRet.f32 %4813, 0
  %4861 = fsub fast float %4826, %4860
  %4862 = fsub fast float %4861, %4859
  %4863 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4862)  ; FMax(a,b)
  %4864 = fmul fast float %4863, %4856
  %4865 = call float @dx.op.binary.f32(i32 36, float %4857, float %4864)  ; FMin(a,b)
  %4866 = fmul fast float %4865, 0xBFF7154760000000
  %4867 = call float @dx.op.unary.f32(i32 21, float %4866)  ; Exp(value)
  %4868 = fmul fast float %4806, %4867
  br label %4869

; <label>:4869                                    ; preds = %4854, %4699
  %4870 = phi float [ %4868, %4854 ], [ %4700, %4699 ]
  %4871 = call float @dx.op.binary.f32(i32 36, float %4870, float %4870)  ; FMin(a,b)
  %4872 = call float @dx.op.binary.f32(i32 36, float %4870, float %4871)  ; FMin(a,b)
  %4873 = fcmp fast ogt float %4872, 0.000000e+00
  br i1 %4873, label %4874, label %5257, !dx.controlflow.hints !122

; <label>:4874                                    ; preds = %4869
  %4875 = fmul fast float %4870, %3592
  %4876 = fmul fast float %4870, %3593
  %4877 = fmul fast float %4870, %3594
  %4878 = fsub fast float %145, %1963
  %4879 = fcmp fast ogt float %4878, 0.000000e+00
  %4880 = fmul fast float %3581, 5.120000e+02
  %4881 = fmul fast float %3582, 5.120000e+02
  %4882 = fmul fast float %3583, 5.120000e+02
  %4883 = fadd fast float %4882, %145
  %4884 = fsub fast float %1963, %4883
  %4885 = fmul fast float %4884, 2.000000e+00
  %4886 = fadd fast float %4885, %4883
  %4887 = select i1 %4879, float %4886, float %4883
  %4888 = fsub fast float %4887, %145
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4880, float %4881, float %4888, float %4880, float %4881, float %4888)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = call float @dx.op.unary.f32(i32 25, float %4889)  ; Rsqrt(value)
  %4891 = fmul fast float %4890, %4880
  %4892 = fmul fast float %4890, %4881
  %4893 = fmul fast float %4890, %4888
  %4894 = fsub fast float %1963, %145
  %4895 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4894)  ; Dot3(ax,ay,az,bx,by,bz)
  %4896 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4891, float %4892, float %4893)  ; Dot3(ax,ay,az,bx,by,bz)
  %4897 = fdiv fast float 1.000000e+00, %4896
  %4898 = fmul fast float %4897, %4895
  %4899 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4878, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = fcmp fast ogt float %4899, 0.000000e+00
  %4901 = fcmp fast olt float %4899, 0.000000e+00
  %4902 = zext i1 %4900 to i32
  %4903 = zext i1 %4901 to i32
  %4904 = sub nsw i32 %4902, %4903
  %4905 = sitofp i32 %4904 to float
  %4906 = fsub fast float %4887, %1963
  %4907 = call float @dx.op.dot3.f32(i32 55, float %4880, float %4881, float %4906, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = fcmp fast ogt float %4907, 0.000000e+00
  %4909 = fcmp fast olt float %4907, 0.000000e+00
  %4910 = zext i1 %4908 to i32
  %4911 = zext i1 %4909 to i32
  %4912 = sub nsw i32 %4910, %4911
  %4913 = sitofp i32 %4912 to float
  %4914 = fcmp fast une float %4905, %4913
  br i1 %4914, label %4915, label %4925

; <label>:4915                                    ; preds = %4874
  %4916 = fmul fast float %4898, %4893
  %4917 = fmul fast float %4898, %4892
  %4918 = fmul fast float %4898, %4891
  %4919 = fmul fast float %4918, %4918
  %4920 = fmul fast float %4917, %4917
  %4921 = fadd fast float %4919, %4920
  %4922 = fmul fast float %4916, %4916
  %4923 = fadd fast float %4921, %4922
  %4924 = call float @dx.op.unary.f32(i32 24, float %4923)  ; Sqrt(value)
  br label %4935

; <label>:4925                                    ; preds = %4874
  %4926 = icmp slt i32 %4904, 0
  br i1 %4926, label %4927, label %4935

; <label>:4927                                    ; preds = %4925
  %4928 = fsub fast float %145, %4887
  %4929 = fmul fast float %4880, %4880
  %4930 = fmul fast float %4881, %4881
  %4931 = fadd fast float %4929, %4930
  %4932 = fmul fast float %4928, %4928
  %4933 = fadd fast float %4931, %4932
  %4934 = call float @dx.op.unary.f32(i32 24, float %4933)  ; Sqrt(value)
  br label %4935

; <label>:4935                                    ; preds = %4927, %4925, %4915
  %4936 = phi float [ %4924, %4915 ], [ %4934, %4927 ], [ 0.000000e+00, %4925 ]
  %4937 = fsub fast float -0.000000e+00, %4936
  %4938 = select i1 %4879, float -0.000000e+00, float %4937
  %4939 = fmul fast float %1964, 0x3FF7154760000000
  %4940 = fmul fast float %4939, %4938
  %4941 = fmul fast float %1965, 0x3FF7154760000000
  %4942 = fmul fast float %4941, %4938
  %4943 = fmul fast float %1966, 0x3FF7154760000000
  %4944 = fmul fast float %4943, %4938
  %4945 = call float @dx.op.unary.f32(i32 21, float %4940)  ; Exp(value)
  %4946 = call float @dx.op.unary.f32(i32 21, float %4942)  ; Exp(value)
  %4947 = call float @dx.op.unary.f32(i32 21, float %4944)  ; Exp(value)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4949 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4951 = fmul fast float %4875, %4948
  %4952 = fmul fast float %4876, %4949
  %4953 = fmul fast float %4877, %4950
  %4954 = fsub fast float %3581, %2535
  %4955 = fsub fast float %3582, %2536
  %4956 = fsub fast float %3583, %2537
  %4957 = call float @dx.op.dot3.f32(i32 55, float %4954, float %4955, float %4956, float %4954, float %4955, float %4956)  ; Dot3(ax,ay,az,bx,by,bz)
  %4958 = call float @dx.op.unary.f32(i32 25, float %4957)  ; Rsqrt(value)
  %4959 = fmul fast float %4958, %4954
  %4960 = fmul fast float %4958, %4955
  %4961 = fmul fast float %4958, %4956
  %4962 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3583, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = call float @dx.op.dot3.f32(i32 55, float %2538, float %2539, float %2540, float %4959, float %4960, float %4961)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4965 = fmul fast float %4964, %4964
  %4966 = fmul fast float %4965, %2568
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = fmul fast float %4967, %4964
  %4969 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2158, float %2159, float %4959, float %4960, float %4961)  ; Dot3(ax,ay,az,bx,by,bz)
  %4970 = fmul fast float %4969, %4969
  %4971 = call float @dx.op.unary.f32(i32 6, float %4962)  ; FAbs(value)
  %4972 = fsub fast float 1.000000e+00, %2561
  %4973 = fmul fast float %2543, %2543
  %4974 = fmul fast float %4973, %4972
  %4975 = fadd fast float %4974, %2561
  %4976 = bitcast float %4975 to i32
  %4977 = ashr i32 %4976, 1
  %4978 = add nsw i32 %4977, 532487669
  %4979 = bitcast i32 %4978 to float
  %4980 = fadd fast float %4979, %2543
  %4981 = fmul fast float %2561, %4970
  %4982 = fsub fast float 1.000000e+00, %4970
  %4983 = fadd fast float %4982, %4981
  %4984 = fmul fast float %4971, %4971
  %4985 = fmul fast float %4984, %4972
  %4986 = fadd fast float %4985, %2561
  %4987 = bitcast float %4986 to i32
  %4988 = ashr i32 %4987, 1
  %4989 = add nsw i32 %4988, 532487669
  %4990 = bitcast i32 %4989 to float
  %4991 = fadd fast float %4990, %4971
  %4992 = fmul fast float %4983, %4983
  %4993 = fmul fast float %4992, %4980
  %4994 = fmul fast float %4993, %4991
  %4995 = fdiv fast float 0x3FF0A00000000000, %4994
  %4996 = fmul fast float %4995, %2561
  %4997 = fmul fast float %2814, 0x3FF9999980000000
  %4998 = fsub fast float 5.000000e+00, %4997
  %4999 = call float @dx.op.unary.f32(i32 6, float %4963)  ; FAbs(value)
  %5000 = fsub fast float 1.000000e+00, %4999
  %5001 = fmul fast float %2814, 0x41D9660740000000
  %5002 = fadd fast float %5001, 0xC1EFBF8940000000
  %5003 = bitcast float %5000 to i32
  %5004 = sitofp i32 %5003 to float
  %5005 = fmul fast float %5004, %4998
  %5006 = fadd fast float %5002, %5005
  %5007 = fptosi float %5006 to i32
  %5008 = bitcast i32 %5007 to float
  %5009 = fsub fast float 1.000000e+00, %2151
  %5010 = fsub fast float 1.000000e+00, %2152
  %5011 = fsub fast float 1.000000e+00, %2541
  %5012 = fmul fast float %5008, %5009
  %5013 = fmul fast float %5008, %5010
  %5014 = fmul fast float %5008, %5011
  %5015 = fadd fast float %5012, %2151
  %5016 = fadd fast float %5013, %2152
  %5017 = fadd fast float %5014, %2541
  br i1 %2837, label %5018, label %5041

; <label>:5018                                    ; preds = %4935
  %5019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1509, float %4999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5020 = extractvalue %dx.types.ResRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.ResRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.ResRet.f32 %5019, 2
  %5023 = fadd fast float %5020, -5.000000e-01
  %5024 = fadd fast float %5021, -5.000000e-01
  %5025 = fadd fast float %5022, -5.000000e-01
  %5026 = fmul fast float %2151, 4.000000e+00
  %5027 = fmul fast float %5026, %5009
  %5028 = fmul fast float %5027, %5023
  %5029 = fmul fast float %2152, 4.000000e+00
  %5030 = fmul fast float %5029, %5010
  %5031 = fmul fast float %5030, %5024
  %5032 = fmul fast float %2541, 4.000000e+00
  %5033 = fmul fast float %5032, %5011
  %5034 = fmul fast float %5033, %5025
  %5035 = fadd fast float %5028, %5015
  %5036 = fadd fast float %5031, %5016
  %5037 = fadd fast float %5034, %5017
  %5038 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5039 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5040 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  br label %5041

; <label>:5041                                    ; preds = %5018, %4935
  %5042 = phi float [ %5038, %5018 ], [ %5015, %4935 ]
  %5043 = phi float [ %5039, %5018 ], [ %5016, %4935 ]
  %5044 = phi float [ %5040, %5018 ], [ %5017, %4935 ]
  %5045 = fmul fast float %4962, 9.843750e-01
  %5046 = fadd fast float %5045, 7.812500e-03
  %5047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %5046, float %2818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.ResRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.ResRet.f32 %5047, 2
  %5051 = extractvalue %dx.types.ResRet.f32 %5047, 3
  %5052 = fsub fast float %5050, %5048
  %5053 = fsub fast float %5051, %5049
  %5054 = fmul fast float %5052, %2824
  %5055 = fmul fast float %5053, %2824
  %5056 = fadd fast float %5054, %5048
  %5057 = fadd fast float %5055, %5049
  %5058 = fmul fast float %5056, %2151
  %5059 = fmul fast float %5056, %2152
  %5060 = fmul fast float %5056, %2541
  %5061 = fadd fast float %5058, %5057
  %5062 = fadd fast float %5059, %5057
  %5063 = fadd fast float %5060, %5057
  br i1 %2837, label %5064, label %5087

; <label>:5064                                    ; preds = %5041
  %5065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1509, float %4962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5066 = extractvalue %dx.types.ResRet.f32 %5065, 0
  %5067 = extractvalue %dx.types.ResRet.f32 %5065, 1
  %5068 = extractvalue %dx.types.ResRet.f32 %5065, 2
  %5069 = fadd fast float %5066, -5.000000e-01
  %5070 = fadd fast float %5067, -5.000000e-01
  %5071 = fadd fast float %5068, -5.000000e-01
  %5072 = fmul fast float %2151, 4.000000e+00
  %5073 = fmul fast float %5072, %5009
  %5074 = fmul fast float %5073, %5069
  %5075 = fmul fast float %2152, 4.000000e+00
  %5076 = fmul fast float %5075, %5010
  %5077 = fmul fast float %5076, %5070
  %5078 = fmul fast float %2541, 4.000000e+00
  %5079 = fmul fast float %5078, %5011
  %5080 = fmul fast float %5079, %5071
  %5081 = fadd fast float %5074, %5061
  %5082 = fadd fast float %5077, %5062
  %5083 = fadd fast float %5080, %5063
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  br label %5087

; <label>:5087                                    ; preds = %5064, %5041
  %5088 = phi float [ %5084, %5064 ], [ %5061, %5041 ]
  %5089 = phi float [ %5085, %5064 ], [ %5062, %5041 ]
  %5090 = phi float [ %5086, %5064 ], [ %5063, %5041 ]
  %5091 = call float @dx.op.binary.f32(i32 35, float %5089, float %5090)  ; FMax(a,b)
  %5092 = call float @dx.op.binary.f32(i32 35, float %5088, float %5091)  ; FMax(a,b)
  %5093 = fsub fast float 1.000000e+00, %5092
  %5094 = call float @dx.op.binary.f32(i32 35, float %4971, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5095 = fdiv fast float %909, %5094
  %5096 = fmul fast float %3490, %5095
  %5097 = fmul fast float %3492, %5095
  %5098 = fmul fast float %3494, %5095
  %5099 = call float @dx.op.unary.f32(i32 21, float %5096)  ; Exp(value)
  %5100 = call float @dx.op.unary.f32(i32 21, float %5097)  ; Exp(value)
  %5101 = call float @dx.op.unary.f32(i32 21, float %5098)  ; Exp(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5100)  ; Saturate(value)
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = select i1 %3487, float %5102, float 0.000000e+00
  %5106 = select i1 %3488, float %5103, float 0.000000e+00
  %5107 = select i1 %3489, float %5104, float 0.000000e+00
  %5108 = fsub fast float -0.000000e+00, %2157
  %5109 = fsub fast float -0.000000e+00, %2158
  %5110 = fsub fast float -0.000000e+00, %2159
  %5111 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3583, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5112 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5113 = fmul fast float %5112, 9.843750e-01
  %5114 = fadd fast float %5113, 7.812500e-03
  %5115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %5114, float %2818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5116 = extractvalue %dx.types.ResRet.f32 %5115, 0
  %5117 = extractvalue %dx.types.ResRet.f32 %5115, 1
  %5118 = extractvalue %dx.types.ResRet.f32 %5115, 2
  %5119 = extractvalue %dx.types.ResRet.f32 %5115, 3
  %5120 = fsub fast float %5118, %5116
  %5121 = fsub fast float %5119, %5117
  %5122 = fmul fast float %5120, %2824
  %5123 = fmul fast float %5121, %2824
  %5124 = fadd fast float %5122, %5116
  %5125 = fadd fast float %5123, %5117
  %5126 = fmul fast float %5124, %2151
  %5127 = fmul fast float %5124, %2152
  %5128 = fmul fast float %5124, %2541
  %5129 = fadd fast float %5126, %5125
  %5130 = fadd fast float %5127, %5125
  %5131 = fadd fast float %5128, %5125
  br i1 %2837, label %5132, label %5155

; <label>:5132                                    ; preds = %5087
  %5133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1509, float %5112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5134 = extractvalue %dx.types.ResRet.f32 %5133, 0
  %5135 = extractvalue %dx.types.ResRet.f32 %5133, 1
  %5136 = extractvalue %dx.types.ResRet.f32 %5133, 2
  %5137 = fadd fast float %5134, -5.000000e-01
  %5138 = fadd fast float %5135, -5.000000e-01
  %5139 = fadd fast float %5136, -5.000000e-01
  %5140 = fmul fast float %2151, 4.000000e+00
  %5141 = fmul fast float %5140, %5009
  %5142 = fmul fast float %5141, %5137
  %5143 = fmul fast float %2152, 4.000000e+00
  %5144 = fmul fast float %5143, %5010
  %5145 = fmul fast float %5144, %5138
  %5146 = fmul fast float %2541, 4.000000e+00
  %5147 = fmul fast float %5146, %5011
  %5148 = fmul fast float %5147, %5139
  %5149 = fadd fast float %5142, %5129
  %5150 = fadd fast float %5145, %5130
  %5151 = fadd fast float %5148, %5131
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5154 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  br label %5155

; <label>:5155                                    ; preds = %5132, %5087
  %5156 = phi float [ %5152, %5132 ], [ %5129, %5087 ]
  %5157 = phi float [ %5153, %5132 ], [ %5130, %5087 ]
  %5158 = phi float [ %5154, %5132 ], [ %5131, %5087 ]
  %5159 = call float @dx.op.binary.f32(i32 35, float %5157, float %5158)  ; FMax(a,b)
  %5160 = call float @dx.op.binary.f32(i32 35, float %5156, float %5159)  ; FMax(a,b)
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = fmul fast float %2558, %3554
  %5163 = fadd fast float %3556, %5162
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fsub fast float %3581, %2549
  %5166 = fsub fast float %3582, %2550
  %5167 = fsub fast float %3583, %2551
  %5168 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5166, float %5167, float %5165, float %5166, float %5167)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = call float @dx.op.unary.f32(i32 25, float %5168)  ; Rsqrt(value)
  %5170 = fmul fast float %5169, %5165
  %5171 = fmul fast float %5169, %5166
  %5172 = fmul fast float %5169, %5167
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = fmul fast float %5173, %5173
  %5175 = call float @dx.op.unary.f32(i32 6, float %5112)  ; FAbs(value)
  %5176 = call float @dx.op.binary.f32(i32 35, float %5164, float 0x3F847AE140000000)  ; FMax(a,b)
  %5177 = fmul fast float %5176, %5176
  %5178 = fmul fast float %5177, %5177
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = fmul fast float %4973, %5179
  %5181 = fadd fast float %5180, %5178
  %5182 = bitcast float %5181 to i32
  %5183 = ashr i32 %5182, 1
  %5184 = add nsw i32 %5183, 532487669
  %5185 = bitcast i32 %5184 to float
  %5186 = fadd fast float %5185, %2543
  %5187 = fmul fast float %5178, %5174
  %5188 = fsub fast float 1.000000e+00, %5174
  %5189 = fadd fast float %5188, %5187
  %5190 = fmul fast float %5175, %5175
  %5191 = fmul fast float %5190, %5179
  %5192 = fadd fast float %5191, %5178
  %5193 = bitcast float %5192 to i32
  %5194 = ashr i32 %5193, 1
  %5195 = add nsw i32 %5194, 532487669
  %5196 = bitcast i32 %5195 to float
  %5197 = fadd fast float %5196, %5175
  %5198 = fmul fast float %5189, %5189
  %5199 = fmul fast float %5198, %5186
  %5200 = fmul fast float %5199, %5197
  %5201 = fdiv fast float 0x3FF0A00000000000, %5200
  %5202 = fmul fast float %5201, %5178
  %5203 = fmul fast float %5112, %5105
  %5204 = fmul fast float %5112, %5106
  %5205 = fmul fast float %5112, %5107
  %5206 = fmul fast float %5203, %5161
  %5207 = fmul fast float %5206, %5202
  %5208 = fmul fast float %5204, %5161
  %5209 = fmul fast float %5208, %5202
  %5210 = fmul fast float %5205, %5161
  %5211 = fmul fast float %5210, %5202
  %5212 = fmul fast float %5042, %4996
  %5213 = fmul fast float %5043, %4996
  %5214 = fmul fast float %5044, %4996
  %5215 = fsub fast float 1.000000e+00, %4963
  %5216 = bitcast float %5215 to i32
  %5217 = sitofp i32 %5216 to float
  %5218 = fmul fast float %5217, 5.000000e+00
  %5219 = fadd fast float %5218, 0xC1EFBF8940000000
  %5220 = fptosi float %5219 to i32
  %5221 = bitcast i32 %5220 to float
  %5222 = fmul fast float %5221, %1508
  %5223 = fmul fast float %5093, %5222
  %5224 = fmul fast float %5223, %3482
  %5225 = fmul fast float %5223, %3483
  %5226 = fmul fast float %5223, %3484
  %5227 = fadd fast float %5224, %5212
  %5228 = fadd fast float %5225, %5213
  %5229 = fadd fast float %5226, %5214
  %5230 = fmul fast float %5227, %4968
  %5231 = fmul fast float %5228, %4968
  %5232 = fmul fast float %5229, %4968
  %5233 = fmul fast float %4968, %4951
  %5234 = fmul fast float %5233, %5093
  %5235 = fmul fast float %4968, %4952
  %5236 = fmul fast float %5235, %5093
  %5237 = fmul fast float %4968, %4953
  %5238 = fmul fast float %5237, %5093
  %5239 = fadd fast float %5230, %5207
  %5240 = fadd fast float %5231, %5209
  %5241 = fadd fast float %5232, %5211
  %5242 = fmul fast float %5239, %4951
  %5243 = fmul fast float %5240, %4952
  %5244 = fmul fast float %5241, %4953
  %5245 = fadd fast float %5234, %3571
  %5246 = fmul fast float %5245, %1532
  %5247 = fadd fast float %5236, %3573
  %5248 = fmul fast float %5247, %1532
  %5249 = fadd fast float %5238, %3575
  %5250 = fmul fast float %5249, %1532
  %5251 = fadd fast float %5242, %3535
  %5252 = fmul fast float %5251, %1532
  %5253 = fadd fast float %5243, %3538
  %5254 = fmul fast float %5253, %1532
  %5255 = fadd fast float %5244, %3541
  %5256 = fmul fast float %5255, %1532
  br label %5257

; <label>:5257                                    ; preds = %5155, %4869, %3465
  %5258 = phi float [ %3536, %3465 ], [ %3536, %4869 ], [ %5252, %5155 ]
  %5259 = phi float [ %3539, %3465 ], [ %3539, %4869 ], [ %5254, %5155 ]
  %5260 = phi float [ %3542, %3465 ], [ %3542, %4869 ], [ %5256, %5155 ]
  %5261 = phi float [ %3572, %3465 ], [ %3572, %4869 ], [ %5246, %5155 ]
  %5262 = phi float [ %3574, %3465 ], [ %3574, %4869 ], [ %5248, %5155 ]
  %5263 = phi float [ %3576, %3465 ], [ %3576, %4869 ], [ %5250, %5155 ]
  %5264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.i32 %5264, 0
  %5266 = icmp eq i32 %5265, 0
  br i1 %5266, label %6084, label %5267

; <label>:5267                                    ; preds = %5257
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 2
  %5270 = extractvalue %dx.types.CBufRet.f32 %5268, 3
  %5271 = fmul fast float %5269, %95
  %5272 = fmul fast float %5270, %96
  %5273 = fptoui float %5271 to i32
  %5274 = fptoui float %5272 to i32
  %5275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5276 = extractvalue %dx.types.CBufRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.CBufRet.f32 %5275, 2
  %5278 = extractvalue %dx.types.CBufRet.f32 %5275, 3
  %5279 = fadd fast float %83, -4.000000e+00
  %5280 = call float @dx.op.binary.f32(i32 35, float %5279, float 0.000000e+00)  ; FMax(a,b)
  %5281 = fadd fast float %5280, %5276
  %5282 = fmul fast float %5281, %5277
  %5283 = call float @dx.op.unary.f32(i32 23, float %5282)  ; Log(value)
  %5284 = fmul fast float %5283, %5278
  %5285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5286 = extractvalue %dx.types.CBufRet.f32 %5285, 2
  %5287 = fmul fast float %5284, %5286
  %5288 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.i32 %5289, 1
  %5291 = add i32 %5290, -1
  %5292 = uitofp i32 %5290 to float
  %5293 = fmul fast float %5292, %5288
  %5294 = fptoui float %5293 to i32
  %5295 = call i32 @dx.op.binary.i32(i32 40, i32 %5294, i32 %5291)  ; UMin(a,b)
  %5296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.i32 %5296, 2
  %5298 = extractvalue %dx.types.CBufRet.i32 %5296, 3
  %5299 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5274, i32 %5297, i32 %5273)  ; UMad(a,b,c)
  %5300 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5295, i32 %5298, i32 %5299)  ; UMad(a,b,c)
  %5301 = add nsw i32 %5265, -1
  %5302 = call i32 @dx.op.binary.i32(i32 37, i32 %5301, i32 0)  ; IMax(a,b)
  %5303 = call float @dx.op.binary.f32(i32 35, float %83, float 0.000000e+00)  ; FMax(a,b)
  %5304 = fptoui float %5303 to i32
  %5305 = lshr i32 %5304, 5
  %5306 = call i32 @dx.op.binary.i32(i32 40, i32 %5305, i32 8191)  ; UMin(a,b)
  %5307 = shl i32 %5306, 2
  %5308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5307, i32 undef)  ; BufferLoad(srv,index,wot)
  %5309 = extractvalue %dx.types.ResRet.i32 %5308, 0
  %5310 = lshr i32 %5309, 16
  %5311 = and i32 %5309, 65535
  %5312 = lshr i32 %5309, 21
  %5313 = lshr i32 %5311, 5
  %5314 = call i32 @dx.op.binary.i32(i32 40, i32 %5313, i32 %5302)  ; UMin(a,b)
  %5315 = icmp ugt i32 %5312, %5314
  br i1 %5315, label %6084, label %5316

; <label>:5316                                    ; preds = %5267
  br label %5317

; <label>:5317                                    ; preds = %6074, %5316
  %5318 = phi i32 [ %6081, %6074 ], [ %5312, %5316 ]
  %5319 = phi float [ %6075, %6074 ], [ %5258, %5316 ]
  %5320 = phi float [ %6076, %6074 ], [ %5259, %5316 ]
  %5321 = phi float [ %6077, %6074 ], [ %5260, %5316 ]
  %5322 = phi float [ %6078, %6074 ], [ %5261, %5316 ]
  %5323 = phi float [ %6079, %6074 ], [ %5262, %5316 ]
  %5324 = phi float [ %6080, %6074 ], [ %5263, %5316 ]
  %5325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.i32 %5325, 0
  %5327 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5300, i32 %5326, i32 %5318)  ; UMad(a,b,c)
  %5328 = shl i32 %5327, 2
  %5329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5328, i32 undef)  ; BufferLoad(srv,index,wot)
  %5330 = extractvalue %dx.types.ResRet.i32 %5329, 0
  %5331 = shl i32 %5318, 5
  %5332 = sub nsw i32 %5310, %5331
  %5333 = call i32 @dx.op.binary.i32(i32 37, i32 %5332, i32 0)  ; IMax(a,b)
  %5334 = call i32 @dx.op.binary.i32(i32 38, i32 %5333, i32 31)  ; IMin(a,b)
  %5335 = sub nsw i32 1, %5310
  %5336 = add nsw i32 %5335, %5311
  %5337 = call i32 @dx.op.binary.i32(i32 37, i32 %5336, i32 0)  ; IMax(a,b)
  %5338 = call i32 @dx.op.binary.i32(i32 38, i32 %5337, i32 32)  ; IMin(a,b)
  %5339 = and i32 %5338, 31
  %5340 = shl i32 -1, %5339
  %5341 = xor i32 %5340, -1
  %5342 = and i32 %5334, 31
  %5343 = shl i32 %5341, %5342
  %5344 = icmp eq i32 %5338, 32
  %5345 = select i1 %5344, i32 -1, i32 %5343
  %5346 = and i32 %5345, %5330
  %5347 = icmp eq i32 %5346, 0
  br i1 %5347, label %6074, label %5348

; <label>:5348                                    ; preds = %5317
  br label %5349

; <label>:5349                                    ; preds = %5484, %5348
  %5350 = phi i32 [ %5361, %5484 ], [ %5346, %5348 ]
  %5351 = phi float [ %5485, %5484 ], [ %5319, %5348 ]
  %5352 = phi float [ %5486, %5484 ], [ %5320, %5348 ]
  %5353 = phi float [ %5487, %5484 ], [ %5321, %5348 ]
  %5354 = phi float [ %5488, %5484 ], [ %5322, %5348 ]
  %5355 = phi float [ %5489, %5484 ], [ %5323, %5348 ]
  %5356 = phi float [ %5490, %5484 ], [ %5324, %5348 ]
  %5357 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5350)  ; FirstbitLo(value)
  %5358 = add i32 %5357, %5331
  %5359 = and i32 %5357, 31
  %5360 = shl i32 1, %5359
  %5361 = xor i32 %5360, %5350
  %5362 = mul i32 %5358, 112
  %5363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5362, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = extractvalue %dx.types.ResRet.f32 %5363, 1
  %5366 = extractvalue %dx.types.ResRet.f32 %5363, 2
  %5367 = or i32 %5362, 12
  %5368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5367, i32 undef)  ; BufferLoad(srv,index,wot)
  %5369 = extractvalue %dx.types.ResRet.f32 %5368, 0
  %5370 = add i32 %5362, 16
  %5371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.ResRet.f32 %5371, 1
  %5374 = extractvalue %dx.types.ResRet.f32 %5371, 2
  %5375 = add i32 %5362, 28
  %5376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5375, i32 undef)  ; BufferLoad(srv,index,wot)
  %5377 = extractvalue %dx.types.ResRet.i32 %5376, 0
  %5378 = add i32 %5362, 44
  %5379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5378, i32 undef)  ; BufferLoad(srv,index,wot)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = add i32 %5362, 48
  %5382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5381, i32 undef)  ; BufferLoad(srv,index,wot)
  %5383 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5384 = extractvalue %dx.types.ResRet.f32 %5382, 1
  %5385 = extractvalue %dx.types.ResRet.f32 %5382, 2
  %5386 = extractvalue %dx.types.ResRet.f32 %5382, 3
  %5387 = add i32 %5362, 64
  %5388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5387, i32 undef)  ; BufferLoad(srv,index,wot)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.ResRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.ResRet.f32 %5388, 2
  %5392 = extractvalue %dx.types.ResRet.f32 %5388, 3
  %5393 = add i32 %5362, 80
  %5394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5395 = extractvalue %dx.types.ResRet.f32 %5394, 1
  %5396 = extractvalue %dx.types.ResRet.f32 %5394, 2
  %5397 = add i32 %5362, 92
  %5398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5399 = extractvalue %dx.types.ResRet.i32 %5398, 0
  %5400 = call float @dx.op.dot3.f32(i32 55, float %5364, float %5365, float %5366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = select i1 %205, float %5395, float %5364
  %5402 = select i1 %205, float %5400, float %5365
  %5403 = select i1 %205, float %5396, float %5366
  %5404 = and i32 %5399, 65535
  %5405 = uitofp i32 %5404 to float
  %5406 = lshr i32 %5399, 16
  %5407 = uitofp i32 %5406 to float
  %5408 = and i32 %5377, 65535
  %5409 = and i32 %5377, 50331648
  %5410 = icmp slt i32 %5377, 0
  %5411 = icmp eq i32 %5409, 33554432
  %5412 = fsub fast float %5383, %143
  %5413 = fsub fast float %5384, %144
  %5414 = fsub fast float %5385, %145
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %5414, float %5412, float %5413, float %5414)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = call float @dx.op.unary.f32(i32 24, float %5415)  ; Sqrt(value)
  %5417 = fdiv fast float 1.000000e+00, %5416
  %5418 = fmul fast float %5417, %5412
  %5419 = fmul fast float %5417, %5413
  %5420 = fmul fast float %5417, %5414
  %5421 = fadd fast float %5416, %5369
  %5422 = fdiv fast float 1.000000e+00, %5421
  %5423 = fmul float %5380, %5422
  %5424 = fmul float %5423, %5423
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  br i1 %5411, label %5426, label %5447

; <label>:5426                                    ; preds = %5349
  %5427 = fmul fast float %5391, %5372
  %5428 = fmul fast float %5391, %5373
  %5429 = fmul fast float %5391, %5374
  %5430 = fadd fast float %5412, %5427
  %5431 = fadd fast float %5413, %5428
  %5432 = fadd fast float %5414, %5429
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5430, float %5431, float %5432, float %5430, float %5431, float %5432)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = call float @dx.op.unary.f32(i32 25, float %5433)  ; Rsqrt(value)
  %5435 = fmul fast float %5434, %5430
  %5436 = fmul fast float %5434, %5431
  %5437 = fmul fast float %5434, %5432
  %5438 = fsub fast float %143, %5383
  %5439 = fsub fast float %144, %5384
  %5440 = fsub fast float %145, %5385
  %5441 = fsub fast float -0.000000e+00, %5438
  %5442 = fsub fast float -0.000000e+00, %5439
  %5443 = fsub fast float -0.000000e+00, %5440
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float %5372, float %5373, float %5374)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = fcmp fast ogt float %5444, 0.000000e+00
  %5446 = uitofp i1 %5445 to float
  br label %5447

; <label>:5447                                    ; preds = %5426, %5349
  %5448 = phi float [ %5446, %5426 ], [ 1.000000e+00, %5349 ]
  %5449 = phi float [ %5435, %5426 ], [ %5418, %5349 ]
  %5450 = phi float [ %5436, %5426 ], [ %5419, %5349 ]
  %5451 = phi float [ %5437, %5426 ], [ %5420, %5349 ]
  %5452 = call float @dx.op.dot3.f32(i32 55, float %5372, float %5373, float %5374, float %5449, float %5450, float %5451)  ; Dot3(ax,ay,az,bx,by,bz)
  %5453 = fmul fast float %5452, %5452
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5455 = fsub fast float 1.000000e+00, %5454
  %5456 = fmul fast float %5455, 5.000000e-01
  %5457 = fcmp fast ogt float %5452, 0.000000e+00
  %5458 = fsub fast float 1.000000e+00, %5456
  %5459 = select i1 %5457, float %5456, float %5458
  %5460 = fmul fast float %5459, %5407
  %5461 = fadd fast float %5460, %5405
  %5462 = fmul fast float %5461, 0x3EF0001000000000
  %5463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %51, float %5462, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 0
  %5465 = fmul fast float %5452, %5389
  %5466 = fadd fast float %5465, %5390
  %5467 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5468 = select i1 %5411, float 1.000000e+00, float %5467
  %5469 = select i1 %5411, float %5467, float 1.000000e+00
  %5470 = fmul fast float %5416, %5386
  %5471 = fsub fast float 1.000000e+00, %5470
  %5472 = fmul fast float %5471, %5392
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = fmul fast float %5473, %5469
  %5475 = fmul fast float %5474, 2.000000e+00
  %5476 = fsub fast float 3.000000e+00, %5475
  %5477 = fmul fast float %5464, %5448
  %5478 = fmul fast float %5474, %5474
  %5479 = fmul fast float %5478, %5477
  %5480 = fmul fast float %5479, %5476
  %5481 = call float @dx.op.binary.f32(i32 36, float %5480, float %5480)  ; FMin(a,b)
  %5482 = call float @dx.op.binary.f32(i32 36, float %5480, float %5481)  ; FMin(a,b)
  %5483 = fcmp fast ogt float %5482, 0.000000e+00
  br i1 %5483, label %5492, label %5484, !dx.controlflow.hints !123

; <label>:5484                                    ; preds = %6027, %5638, %5447
  %5485 = phi float [ %5351, %5638 ], [ %5351, %5447 ], [ %6070, %6027 ]
  %5486 = phi float [ %5352, %5638 ], [ %5352, %5447 ], [ %6071, %6027 ]
  %5487 = phi float [ %5353, %5638 ], [ %5353, %5447 ], [ %6072, %6027 ]
  %5488 = phi float [ %5354, %5638 ], [ %5354, %5447 ], [ %6064, %6027 ]
  %5489 = phi float [ %5355, %5638 ], [ %5355, %5447 ], [ %6065, %6027 ]
  %5490 = phi float [ %5356, %5638 ], [ %5356, %5447 ], [ %6066, %6027 ]
  %5491 = icmp eq i32 %5350, %5360
  br i1 %5491, label %6073, label %5349

; <label>:5492                                    ; preds = %5447
  %5493 = icmp eq i32 %5408, 255
  br i1 %5493, label %5638, label %5494, !dx.controlflow.hints !124

; <label>:5494                                    ; preds = %5492
  %5495 = mul nuw nsw i32 %5408, 176
  %5496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5495, i32 undef)  ; BufferLoad(srv,index,wot)
  %5497 = extractvalue %dx.types.ResRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.ResRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.ResRet.f32 %5496, 2
  %5500 = extractvalue %dx.types.ResRet.f32 %5496, 3
  %5501 = add nuw nsw i32 %5495, 16
  %5502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5501, i32 undef)  ; BufferLoad(srv,index,wot)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.ResRet.f32 %5502, 1
  %5505 = add nuw nsw i32 %5495, 32
  %5506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5505, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.f32 %5506, 0
  %5508 = extractvalue %dx.types.ResRet.f32 %5506, 1
  %5509 = extractvalue %dx.types.ResRet.f32 %5506, 2
  %5510 = add nuw nsw i32 %5495, 48
  %5511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5510, i32 undef)  ; BufferLoad(srv,index,wot)
  %5512 = extractvalue %dx.types.ResRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.ResRet.f32 %5511, 1
  %5514 = extractvalue %dx.types.ResRet.f32 %5511, 2
  %5515 = extractvalue %dx.types.ResRet.f32 %5511, 3
  %5516 = add nuw nsw i32 %5495, 64
  %5517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5516, i32 undef)  ; BufferLoad(srv,index,wot)
  %5518 = extractvalue %dx.types.ResRet.f32 %5517, 0
  %5519 = extractvalue %dx.types.ResRet.f32 %5517, 1
  %5520 = extractvalue %dx.types.ResRet.f32 %5517, 2
  %5521 = extractvalue %dx.types.ResRet.f32 %5517, 3
  %5522 = add nuw nsw i32 %5495, 80
  %5523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5522, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5527 = extractvalue %dx.types.ResRet.f32 %5523, 3
  %5528 = add nuw nsw i32 %5495, 96
  %5529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5528, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.f32 %5529, 0
  %5531 = extractvalue %dx.types.ResRet.f32 %5529, 1
  %5532 = extractvalue %dx.types.ResRet.f32 %5529, 2
  %5533 = extractvalue %dx.types.ResRet.f32 %5529, 3
  %5534 = bitcast float %5504 to i32
  %5535 = fmul fast float %5509, %98
  %5536 = fmul fast float %5509, %99
  %5537 = fmul fast float %5509, %100
  %5538 = fadd fast float %5535, %143
  %5539 = fadd fast float %5536, %144
  %5540 = fadd fast float %5537, %145
  %5541 = fmul fast float %5538, %5512
  %5542 = call float @dx.op.tertiary.f32(i32 46, float %5539, float %5518, float %5541)  ; FMad(a,b,c)
  %5543 = call float @dx.op.tertiary.f32(i32 46, float %5540, float %5524, float %5542)  ; FMad(a,b,c)
  %5544 = fadd fast float %5543, %5530
  %5545 = fmul fast float %5538, %5513
  %5546 = call float @dx.op.tertiary.f32(i32 46, float %5539, float %5519, float %5545)  ; FMad(a,b,c)
  %5547 = call float @dx.op.tertiary.f32(i32 46, float %5540, float %5525, float %5546)  ; FMad(a,b,c)
  %5548 = fadd fast float %5547, %5531
  %5549 = fmul fast float %5538, %5514
  %5550 = call float @dx.op.tertiary.f32(i32 46, float %5539, float %5520, float %5549)  ; FMad(a,b,c)
  %5551 = call float @dx.op.tertiary.f32(i32 46, float %5540, float %5526, float %5550)  ; FMad(a,b,c)
  %5552 = fadd fast float %5551, %5532
  %5553 = fmul fast float %5538, %5515
  %5554 = call float @dx.op.tertiary.f32(i32 46, float %5539, float %5521, float %5553)  ; FMad(a,b,c)
  %5555 = call float @dx.op.tertiary.f32(i32 46, float %5540, float %5527, float %5554)  ; FMad(a,b,c)
  %5556 = fadd fast float %5555, %5533
  %5557 = fdiv fast float %5544, %5556
  %5558 = fdiv fast float %5548, %5556
  %5559 = fdiv fast float %5552, %5556
  %5560 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5559)  ; FMax(a,b)
  %5561 = fmul fast float %218, 0x401921FB60000000
  %5562 = call float @dx.op.unary.f32(i32 13, float %5561)  ; Sin(value)
  %5563 = call float @dx.op.unary.f32(i32 12, float %5561)  ; Cos(value)
  %5564 = fmul fast float %5563, %5508
  %5565 = call float @dx.op.tertiary.f32(i32 46, float %5562, float %5508, float 0.000000e+00)  ; FMad(a,b,c)
  %5566 = fmul fast float %5508, %5562
  %5567 = fsub fast float -0.000000e+00, %5566
  %5568 = call float @dx.op.tertiary.f32(i32 46, float %5563, float %5508, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5569

; <label>:5569                                    ; preds = %5569, %5494
  %5570 = phi float [ 0.000000e+00, %5494 ], [ %5602, %5569 ]
  %5571 = phi float [ 0.000000e+00, %5494 ], [ %5604, %5569 ]
  %5572 = phi i32 [ 0, %5494 ], [ %5605, %5569 ]
  %5573 = mul i32 %5572, 2
  %5574 = add i32 0, %5573
  %5575 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5574
  %5576 = load float, float* %5575, align 4
  %5577 = mul i32 %5572, 2
  %5578 = add i32 1, %5577
  %5579 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5578
  %5580 = load float, float* %5579, align 4
  %5581 = fmul fast float %5564, %5576
  %5582 = call float @dx.op.tertiary.f32(i32 46, float %5580, float %5567, float %5581)  ; FMad(a,b,c)
  %5583 = fmul fast float %5576, %5565
  %5584 = call float @dx.op.tertiary.f32(i32 46, float %5580, float %5568, float %5583)  ; FMad(a,b,c)
  %5585 = fadd fast float %5582, %5557
  %5586 = fadd fast float %5584, %5558
  %5587 = fmul fast float %5585, %5503
  %5588 = fmul fast float %5586, %5503
  %5589 = call float @dx.op.binary.f32(i32 35, float %5587, float %5499)  ; FMax(a,b)
  %5590 = call float @dx.op.binary.f32(i32 35, float %5588, float %5499)  ; FMax(a,b)
  %5591 = call float @dx.op.binary.f32(i32 36, float %5589, float %5500)  ; FMin(a,b)
  %5592 = call float @dx.op.binary.f32(i32 36, float %5590, float %5500)  ; FMin(a,b)
  %5593 = fadd fast float %5591, %5497
  %5594 = fadd fast float %5592, %5498
  %5595 = uitofp i32 %5534 to float
  %5596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %52, float %5593, float %5594, float %5595, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = fsub fast float %5597, %5560
  %5599 = fsub fast float %5598, %5507
  %5600 = fcmp fast ogt float %5599, 0.000000e+00
  %5601 = select i1 %5600, float 1.000000e+00, float 0.000000e+00
  %5602 = fadd fast float %5601, %5570
  %5603 = select i1 %5600, float %5599, float 0.000000e+00
  %5604 = fadd fast float %5603, %5571
  %5605 = add nuw nsw i32 %5572, 1
  %5606 = icmp eq i32 %5605, 8
  br i1 %5606, label %5607, label %5569

; <label>:5607                                    ; preds = %5569
  %5608 = fdiv fast float 1.000000e+00, %5602
  %5609 = fmul fast float %5608, %5604
  %5610 = fdiv fast float 1.000000e+00, %5560
  %5611 = fmul fast float %5609, %5610
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = call float @dx.op.binary.f32(i32 35, float %5612, float 0.000000e+00)  ; FMax(a,b)
  %5614 = fmul fast float %5602, 1.250000e-01
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = fmul fast float %5615, 2.000000e+00
  %5617 = fadd fast float %5616, -1.000000e+00
  %5618 = fcmp fast ogt float %5617, 0.000000e+00
  %5619 = fcmp fast olt float %5617, 0.000000e+00
  %5620 = zext i1 %5618 to i32
  %5621 = zext i1 %5619 to i32
  %5622 = sub nsw i32 %5620, %5621
  %5623 = sitofp i32 %5622 to float
  %5624 = fmul fast float %5623, %5617
  %5625 = fsub fast float 1.000000e+00, %5624
  %5626 = fmul fast float %5625, %5625
  %5627 = fmul fast float %5626, %5625
  %5628 = fsub fast float %5625, %5627
  %5629 = fmul fast float %5628, %5613
  %5630 = fsub fast float 1.000000e+00, %5627
  %5631 = fsub fast float %5630, %5629
  %5632 = fmul fast float %5623, 5.000000e-01
  %5633 = fmul fast float %5632, %5631
  %5634 = fsub fast float -5.000000e-01, %5633
  %5635 = fmul fast float %5634, %5468
  %5636 = fadd fast float %5635, 1.000000e+00
  %5637 = fmul fast float %5636, %5480
  br label %5638

; <label>:5638                                    ; preds = %5607, %5492
  %5639 = phi float [ %5637, %5607 ], [ %5480, %5492 ]
  %5640 = call float @dx.op.binary.f32(i32 36, float %5639, float %5639)  ; FMin(a,b)
  %5641 = call float @dx.op.binary.f32(i32 36, float %5639, float %5640)  ; FMin(a,b)
  %5642 = fcmp fast ogt float %5641, 0.000000e+00
  br i1 %5642, label %5643, label %5484, !dx.controlflow.hints !125

; <label>:5643                                    ; preds = %5638
  %5644 = fmul fast float %5639, %5401
  %5645 = fmul fast float %5639, %5402
  %5646 = fmul fast float %5639, %5403
  %5647 = fsub fast float %5385, %1963
  %5648 = fcmp fast ogt float %5647, 0.000000e+00
  %5649 = fsub fast float %145, %1963
  %5650 = fcmp fast ogt float %5649, 0.000000e+00
  %5651 = xor i1 %5650, %5648
  %5652 = fsub fast float %1963, %5385
  %5653 = fmul fast float %5652, 2.000000e+00
  %5654 = fadd fast float %5653, %5385
  %5655 = select i1 %5651, float %5385, float %5654
  %5656 = fsub fast float %5655, %145
  %5657 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %5656, float %5412, float %5413, float %5656)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = call float @dx.op.unary.f32(i32 25, float %5657)  ; Rsqrt(value)
  %5659 = fmul fast float %5658, %5412
  %5660 = fmul fast float %5658, %5413
  %5661 = fmul fast float %5658, %5656
  %5662 = fsub fast float %1963, %145
  %5663 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5662)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = fdiv fast float 1.000000e+00, %5664
  %5666 = fmul fast float %5665, %5663
  %5667 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5649, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5668 = fcmp fast ogt float %5667, 0.000000e+00
  %5669 = fcmp fast olt float %5667, 0.000000e+00
  %5670 = zext i1 %5668 to i32
  %5671 = zext i1 %5669 to i32
  %5672 = sub nsw i32 %5670, %5671
  %5673 = sitofp i32 %5672 to float
  %5674 = fsub fast float %5655, %1963
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %5674, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fcmp fast ogt float %5675, 0.000000e+00
  %5677 = fcmp fast olt float %5675, 0.000000e+00
  %5678 = zext i1 %5676 to i32
  %5679 = zext i1 %5677 to i32
  %5680 = sub nsw i32 %5678, %5679
  %5681 = sitofp i32 %5680 to float
  %5682 = fcmp fast une float %5673, %5681
  br i1 %5682, label %5683, label %5693

; <label>:5683                                    ; preds = %5643
  %5684 = fmul fast float %5666, %5661
  %5685 = fmul fast float %5666, %5660
  %5686 = fmul fast float %5666, %5659
  %5687 = fmul fast float %5686, %5686
  %5688 = fmul fast float %5685, %5685
  %5689 = fadd fast float %5687, %5688
  %5690 = fmul fast float %5684, %5684
  %5691 = fadd fast float %5689, %5690
  %5692 = call float @dx.op.unary.f32(i32 24, float %5691)  ; Sqrt(value)
  br label %5705

; <label>:5693                                    ; preds = %5643
  %5694 = icmp slt i32 %5672, 0
  br i1 %5694, label %5695, label %5705

; <label>:5695                                    ; preds = %5693
  %5696 = fsub fast float %143, %5383
  %5697 = fsub fast float %144, %5384
  %5698 = fsub fast float %145, %5655
  %5699 = fmul fast float %5696, %5696
  %5700 = fmul fast float %5697, %5697
  %5701 = fadd fast float %5699, %5700
  %5702 = fmul fast float %5698, %5698
  %5703 = fadd fast float %5701, %5702
  %5704 = call float @dx.op.unary.f32(i32 24, float %5703)  ; Sqrt(value)
  br label %5705

; <label>:5705                                    ; preds = %5695, %5693, %5683
  %5706 = phi float [ %5692, %5683 ], [ %5704, %5695 ], [ 0.000000e+00, %5693 ]
  %5707 = and i1 %5650, %5648
  %5708 = fsub fast float -0.000000e+00, %5706
  %5709 = select i1 %5707, float -0.000000e+00, float %5708
  %5710 = fmul fast float %1964, 0x3FF7154760000000
  %5711 = fmul fast float %5710, %5709
  %5712 = fmul fast float %1965, 0x3FF7154760000000
  %5713 = fmul fast float %5712, %5709
  %5714 = fmul fast float %1966, 0x3FF7154760000000
  %5715 = fmul fast float %5714, %5709
  %5716 = call float @dx.op.unary.f32(i32 21, float %5711)  ; Exp(value)
  %5717 = call float @dx.op.unary.f32(i32 21, float %5713)  ; Exp(value)
  %5718 = call float @dx.op.unary.f32(i32 21, float %5715)  ; Exp(value)
  %5719 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5720 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5721 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5722 = fmul fast float %5644, %5719
  %5723 = fmul fast float %5645, %5720
  %5724 = fmul fast float %5646, %5721
  %5725 = fsub fast float %5418, %2535
  %5726 = fsub fast float %5419, %2536
  %5727 = fsub fast float %5420, %2537
  %5728 = call float @dx.op.dot3.f32(i32 55, float %5725, float %5726, float %5727, float %5725, float %5726, float %5727)  ; Dot3(ax,ay,az,bx,by,bz)
  %5729 = call float @dx.op.unary.f32(i32 25, float %5728)  ; Rsqrt(value)
  %5730 = fmul fast float %5729, %5725
  %5731 = fmul fast float %5729, %5726
  %5732 = fmul fast float %5729, %5727
  %5733 = call float @dx.op.dot3.f32(i32 55, float %5418, float %5419, float %5420, float %2157, float %2158, float %2159)  ; Dot3(ax,ay,az,bx,by,bz)
  %5734 = call float @dx.op.dot3.f32(i32 55, float %2538, float %2539, float %2540, float %5730, float %5731, float %5732)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  %5736 = fmul fast float %5735, %5425
  %5737 = fmul fast float %5735, %5735
  %5738 = fmul fast float %5737, %2568
  %5739 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5740 = fmul fast float %5736, %5739
  %5741 = bitcast float %5415 to i32
  %5742 = ashr i32 %5741, 1
  %5743 = sub nsw i32 1597463007, %5742
  %5744 = bitcast i32 %5743 to float
  %5745 = fmul fast float %5744, %5412
  %5746 = fmul fast float %5744, %5413
  %5747 = fmul fast float %5744, %5414
  %5748 = fsub fast float %5745, %2535
  %5749 = fsub fast float %5746, %2536
  %5750 = fsub fast float %5747, %2537
  %5751 = call float @dx.op.dot3.f32(i32 55, float %5748, float %5749, float %5750, float %5748, float %5749, float %5750)  ; Dot3(ax,ay,az,bx,by,bz)
  %5752 = call float @dx.op.unary.f32(i32 25, float %5751)  ; Rsqrt(value)
  %5753 = fmul fast float %5748, %5752
  %5754 = fmul fast float %5749, %5752
  %5755 = fmul fast float %5750, %5752
  %5756 = call float @dx.op.dot3.f32(i32 55, float %2157, float %2158, float %2159, float %5753, float %5754, float %5755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = fmul fast float %5756, %5756
  %5758 = call float @dx.op.unary.f32(i32 6, float %5733)  ; FAbs(value)
  %5759 = fsub fast float 1.000000e+00, %2561
  %5760 = fmul fast float %2543, %2543
  %5761 = fmul fast float %5760, %5759
  %5762 = fadd fast float %5761, %2561
  %5763 = bitcast float %5762 to i32
  %5764 = ashr i32 %5763, 1
  %5765 = add nsw i32 %5764, 532487669
  %5766 = bitcast i32 %5765 to float
  %5767 = fadd fast float %5766, %2543
  %5768 = fmul fast float %2561, %5757
  %5769 = fsub fast float 1.000000e+00, %5757
  %5770 = fadd fast float %5769, %5768
  %5771 = fmul fast float %5758, %5758
  %5772 = fmul fast float %5771, %5759
  %5773 = fadd fast float %5772, %2561
  %5774 = bitcast float %5773 to i32
  %5775 = ashr i32 %5774, 1
  %5776 = add nsw i32 %5775, 532487669
  %5777 = bitcast i32 %5776 to float
  %5778 = fadd fast float %5777, %5758
  %5779 = fmul fast float %5770, %5770
  %5780 = fmul fast float %5779, %5767
  %5781 = fmul fast float %5780, %5778
  %5782 = fdiv fast float 1.000000e+00, %5781
  %5783 = bitcast float %2561 to i32
  %5784 = sitofp i32 %5783 to float
  %5785 = fmul fast float %5784, 0x3FE7F73180000000
  %5786 = fadd fast float %5785, 0x41AFE27C40000000
  %5787 = fptosi float %5786 to i32
  %5788 = bitcast i32 %5787 to float
  %5789 = fmul fast float %5380, 0x3FD80E9D60000000
  %5790 = fmul fast float %5789, %5744
  %5791 = fadd fast float %5788, %5790
  %5792 = bitcast float %5791 to i32
  %5793 = sub nsw i32 2129859010, %5792
  %5794 = bitcast i32 %5793 to float
  %5795 = fmul fast float %2561, %5782
  %5796 = fmul fast float %5795, %5788
  %5797 = fmul fast float %5796, %5794
  %5798 = fmul fast float %2814, 0x3FF9999980000000
  %5799 = fsub fast float 5.000000e+00, %5798
  %5800 = call float @dx.op.unary.f32(i32 6, float %5734)  ; FAbs(value)
  %5801 = fsub fast float 1.000000e+00, %5800
  %5802 = fmul fast float %2814, 0x41D9660740000000
  %5803 = fadd fast float %5802, 0xC1EFBF8940000000
  %5804 = bitcast float %5801 to i32
  %5805 = sitofp i32 %5804 to float
  %5806 = fmul fast float %5805, %5799
  %5807 = fadd fast float %5803, %5806
  %5808 = fptosi float %5807 to i32
  %5809 = bitcast i32 %5808 to float
  %5810 = fsub fast float 1.000000e+00, %2151
  %5811 = fsub fast float 1.000000e+00, %2152
  %5812 = fsub fast float 1.000000e+00, %2541
  %5813 = fmul fast float %5809, %5810
  %5814 = fmul fast float %5809, %5811
  %5815 = fmul fast float %5809, %5812
  %5816 = fadd fast float %5813, %2151
  %5817 = fadd fast float %5814, %2152
  %5818 = fadd fast float %5815, %2541
  br i1 %2837, label %5819, label %5842

; <label>:5819                                    ; preds = %5705
  %5820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1509, float %5800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.ResRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.ResRet.f32 %5820, 2
  %5824 = fadd fast float %5821, -5.000000e-01
  %5825 = fadd fast float %5822, -5.000000e-01
  %5826 = fadd fast float %5823, -5.000000e-01
  %5827 = fmul fast float %2151, 4.000000e+00
  %5828 = fmul fast float %5827, %5810
  %5829 = fmul fast float %5828, %5824
  %5830 = fmul fast float %2152, 4.000000e+00
  %5831 = fmul fast float %5830, %5811
  %5832 = fmul fast float %5831, %5825
  %5833 = fmul fast float %2541, 4.000000e+00
  %5834 = fmul fast float %5833, %5812
  %5835 = fmul fast float %5834, %5826
  %5836 = fadd fast float %5829, %5816
  %5837 = fadd fast float %5832, %5817
  %5838 = fadd fast float %5835, %5818
  %5839 = call float @dx.op.unary.f32(i32 7, float %5836)  ; Saturate(value)
  %5840 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5841 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  br label %5842

; <label>:5842                                    ; preds = %5819, %5705
  %5843 = phi float [ %5839, %5819 ], [ %5816, %5705 ]
  %5844 = phi float [ %5840, %5819 ], [ %5817, %5705 ]
  %5845 = phi float [ %5841, %5819 ], [ %5818, %5705 ]
  %5846 = fmul fast float %5733, 9.843750e-01
  %5847 = fadd fast float %5846, 7.812500e-03
  %5848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %5847, float %2818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5849 = extractvalue %dx.types.ResRet.f32 %5848, 0
  %5850 = extractvalue %dx.types.ResRet.f32 %5848, 1
  %5851 = extractvalue %dx.types.ResRet.f32 %5848, 2
  %5852 = extractvalue %dx.types.ResRet.f32 %5848, 3
  %5853 = fsub fast float %5851, %5849
  %5854 = fsub fast float %5852, %5850
  %5855 = fmul fast float %5853, %2824
  %5856 = fmul fast float %5854, %2824
  %5857 = fadd fast float %5855, %5849
  %5858 = fadd fast float %5856, %5850
  %5859 = fmul fast float %5857, %2151
  %5860 = fmul fast float %5857, %2152
  %5861 = fmul fast float %5857, %2541
  %5862 = fadd fast float %5859, %5858
  %5863 = fadd fast float %5860, %5858
  %5864 = fadd fast float %5861, %5858
  br i1 %2837, label %5865, label %5888

; <label>:5865                                    ; preds = %5842
  %5866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1509, float %5733, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5867 = extractvalue %dx.types.ResRet.f32 %5866, 0
  %5868 = extractvalue %dx.types.ResRet.f32 %5866, 1
  %5869 = extractvalue %dx.types.ResRet.f32 %5866, 2
  %5870 = fadd fast float %5867, -5.000000e-01
  %5871 = fadd fast float %5868, -5.000000e-01
  %5872 = fadd fast float %5869, -5.000000e-01
  %5873 = fmul fast float %2151, 4.000000e+00
  %5874 = fmul fast float %5873, %5810
  %5875 = fmul fast float %5874, %5870
  %5876 = fmul fast float %2152, 4.000000e+00
  %5877 = fmul fast float %5876, %5811
  %5878 = fmul fast float %5877, %5871
  %5879 = fmul fast float %2541, 4.000000e+00
  %5880 = fmul fast float %5879, %5812
  %5881 = fmul fast float %5880, %5872
  %5882 = fadd fast float %5875, %5862
  %5883 = fadd fast float %5878, %5863
  %5884 = fadd fast float %5881, %5864
  %5885 = call float @dx.op.unary.f32(i32 7, float %5882)  ; Saturate(value)
  %5886 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5887 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  br label %5888

; <label>:5888                                    ; preds = %5865, %5842
  %5889 = phi float [ %5885, %5865 ], [ %5862, %5842 ]
  %5890 = phi float [ %5886, %5865 ], [ %5863, %5842 ]
  %5891 = phi float [ %5887, %5865 ], [ %5864, %5842 ]
  %5892 = call float @dx.op.binary.f32(i32 35, float %5890, float %5891)  ; FMax(a,b)
  %5893 = call float @dx.op.binary.f32(i32 35, float %5889, float %5892)  ; FMax(a,b)
  %5894 = fsub fast float 1.000000e+00, %5893
  %5895 = call float @dx.op.binary.f32(i32 35, float %5758, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5896 = fdiv fast float %909, %5895
  %5897 = fmul fast float %3490, %5896
  %5898 = fmul fast float %3492, %5896
  %5899 = fmul fast float %3494, %5896
  %5900 = call float @dx.op.unary.f32(i32 21, float %5897)  ; Exp(value)
  %5901 = call float @dx.op.unary.f32(i32 21, float %5898)  ; Exp(value)
  %5902 = call float @dx.op.unary.f32(i32 21, float %5899)  ; Exp(value)
  %5903 = call float @dx.op.unary.f32(i32 7, float %5900)  ; Saturate(value)
  %5904 = call float @dx.op.unary.f32(i32 7, float %5901)  ; Saturate(value)
  %5905 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5906 = select i1 %3487, float %5903, float 0.000000e+00
  %5907 = select i1 %3488, float %5904, float 0.000000e+00
  %5908 = select i1 %3489, float %5905, float 0.000000e+00
  %5909 = fsub fast float -0.000000e+00, %2157
  %5910 = fsub fast float -0.000000e+00, %2158
  %5911 = fsub fast float -0.000000e+00, %2159
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5418, float %5419, float %5420, float %5909, float %5910, float %5911)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5914 = fmul fast float %5913, %5425
  %5915 = fmul fast float %5913, 9.843750e-01
  %5916 = fadd fast float %5915, 7.812500e-03
  %5917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %5916, float %2818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5918 = extractvalue %dx.types.ResRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.ResRet.f32 %5917, 1
  %5920 = extractvalue %dx.types.ResRet.f32 %5917, 2
  %5921 = extractvalue %dx.types.ResRet.f32 %5917, 3
  %5922 = fsub fast float %5920, %5918
  %5923 = fsub fast float %5921, %5919
  %5924 = fmul fast float %5922, %2824
  %5925 = fmul fast float %5923, %2824
  %5926 = fadd fast float %5924, %5918
  %5927 = fadd fast float %5925, %5919
  %5928 = fmul fast float %5926, %2151
  %5929 = fmul fast float %5926, %2152
  %5930 = fmul fast float %5926, %2541
  %5931 = fadd fast float %5928, %5927
  %5932 = fadd fast float %5929, %5927
  %5933 = fadd fast float %5930, %5927
  br i1 %2837, label %5934, label %5957

; <label>:5934                                    ; preds = %5888
  %5935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1509, float %5913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5936 = extractvalue %dx.types.ResRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.ResRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.ResRet.f32 %5935, 2
  %5939 = fadd fast float %5936, -5.000000e-01
  %5940 = fadd fast float %5937, -5.000000e-01
  %5941 = fadd fast float %5938, -5.000000e-01
  %5942 = fmul fast float %2151, 4.000000e+00
  %5943 = fmul fast float %5942, %5810
  %5944 = fmul fast float %5943, %5939
  %5945 = fmul fast float %2152, 4.000000e+00
  %5946 = fmul fast float %5945, %5811
  %5947 = fmul fast float %5946, %5940
  %5948 = fmul fast float %2541, 4.000000e+00
  %5949 = fmul fast float %5948, %5812
  %5950 = fmul fast float %5949, %5941
  %5951 = fadd fast float %5944, %5931
  %5952 = fadd fast float %5947, %5932
  %5953 = fadd fast float %5950, %5933
  %5954 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  %5955 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5956 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  br label %5957

; <label>:5957                                    ; preds = %5934, %5888
  %5958 = phi float [ %5954, %5934 ], [ %5931, %5888 ]
  %5959 = phi float [ %5955, %5934 ], [ %5932, %5888 ]
  %5960 = phi float [ %5956, %5934 ], [ %5933, %5888 ]
  %5961 = call float @dx.op.binary.f32(i32 35, float %5959, float %5960)  ; FMax(a,b)
  %5962 = call float @dx.op.binary.f32(i32 35, float %5958, float %5961)  ; FMax(a,b)
  %5963 = fsub fast float 1.000000e+00, %5962
  %5964 = fmul fast float %2558, %3554
  %5965 = fadd fast float %3556, %5964
  %5966 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  %5967 = fsub fast float %5745, %2549
  %5968 = fsub fast float %5746, %2550
  %5969 = fsub fast float %5747, %2551
  %5970 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %5969, float %5967, float %5968, float %5969)  ; Dot3(ax,ay,az,bx,by,bz)
  %5971 = call float @dx.op.unary.f32(i32 25, float %5970)  ; Rsqrt(value)
  %5972 = fmul fast float %5967, %5971
  %5973 = fmul fast float %5968, %5971
  %5974 = fmul fast float %5969, %5971
  %5975 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %5911, float %5972, float %5973, float %5974)  ; Dot3(ax,ay,az,bx,by,bz)
  %5976 = fmul fast float %5975, %5975
  %5977 = call float @dx.op.unary.f32(i32 6, float %5913)  ; FAbs(value)
  %5978 = call float @dx.op.binary.f32(i32 35, float %5966, float 0x3F847AE140000000)  ; FMax(a,b)
  %5979 = fmul fast float %5978, %5978
  %5980 = fmul fast float %5979, %5979
  %5981 = fsub fast float 1.000000e+00, %5980
  %5982 = fmul fast float %5760, %5981
  %5983 = fadd fast float %5982, %5980
  %5984 = bitcast float %5983 to i32
  %5985 = ashr i32 %5984, 1
  %5986 = add nsw i32 %5985, 532487669
  %5987 = bitcast i32 %5986 to float
  %5988 = fadd fast float %5987, %2543
  %5989 = fmul fast float %5980, %5976
  %5990 = fsub fast float 1.000000e+00, %5976
  %5991 = fadd fast float %5990, %5989
  %5992 = fmul fast float %5977, %5977
  %5993 = fmul fast float %5992, %5981
  %5994 = fadd fast float %5993, %5980
  %5995 = bitcast float %5994 to i32
  %5996 = ashr i32 %5995, 1
  %5997 = add nsw i32 %5996, 532487669
  %5998 = bitcast i32 %5997 to float
  %5999 = fadd fast float %5998, %5977
  %6000 = fmul fast float %5991, %5991
  %6001 = fmul fast float %6000, %5988
  %6002 = fmul fast float %6001, %5999
  %6003 = fdiv fast float 1.000000e+00, %6002
  %6004 = bitcast float %5980 to i32
  %6005 = sitofp i32 %6004 to float
  %6006 = fmul fast float %6005, 0x3FE7F73180000000
  %6007 = fadd fast float %6006, 0x41AFE27C40000000
  %6008 = fptosi float %6007 to i32
  %6009 = bitcast i32 %6008 to float
  %6010 = fadd fast float %6009, %5790
  %6011 = bitcast float %6010 to i32
  %6012 = sub nsw i32 2129859010, %6011
  %6013 = bitcast i32 %6012 to float
  %6014 = fmul fast float %5980, %6003
  %6015 = fmul fast float %6014, %6009
  %6016 = fmul fast float %6015, %6013
  br i1 %5410, label %6017, label %6027

; <label>:6017                                    ; preds = %5957
  %6018 = fmul fast float %5914, %5906
  %6019 = fmul fast float %5914, %5907
  %6020 = fmul fast float %5914, %5908
  %6021 = fmul fast float %6018, %5963
  %6022 = fmul fast float %6021, %6016
  %6023 = fmul fast float %6019, %5963
  %6024 = fmul fast float %6023, %6016
  %6025 = fmul fast float %6020, %5963
  %6026 = fmul fast float %6025, %6016
  br label %6027

; <label>:6027                                    ; preds = %6017, %5957
  %6028 = phi float [ %6022, %6017 ], [ 0.000000e+00, %5957 ]
  %6029 = phi float [ %6024, %6017 ], [ 0.000000e+00, %5957 ]
  %6030 = phi float [ %6026, %6017 ], [ 0.000000e+00, %5957 ]
  %6031 = fmul fast float %5843, %5797
  %6032 = fmul fast float %5844, %5797
  %6033 = fmul fast float %5845, %5797
  %6034 = fsub fast float 1.000000e+00, %5734
  %6035 = bitcast float %6034 to i32
  %6036 = sitofp i32 %6035 to float
  %6037 = fmul fast float %6036, 5.000000e+00
  %6038 = fadd fast float %6037, 0xC1EFBF8940000000
  %6039 = fptosi float %6038 to i32
  %6040 = bitcast i32 %6039 to float
  %6041 = fmul fast float %6040, %1508
  %6042 = fmul fast float %5894, %6041
  %6043 = fmul fast float %6042, %3482
  %6044 = fmul fast float %6042, %3483
  %6045 = fmul fast float %6042, %3484
  %6046 = fadd fast float %6043, %6031
  %6047 = fadd fast float %6044, %6032
  %6048 = fadd fast float %6045, %6033
  %6049 = fmul fast float %6046, %5740
  %6050 = fmul fast float %6047, %5740
  %6051 = fmul fast float %6048, %5740
  %6052 = fadd fast float %6049, %6028
  %6053 = fadd fast float %6050, %6029
  %6054 = fadd fast float %6051, %6030
  %6055 = fmul fast float %5722, %1532
  %6056 = fmul fast float %6055, %5740
  %6057 = fmul fast float %6056, %5894
  %6058 = fmul fast float %5723, %1532
  %6059 = fmul fast float %6058, %5740
  %6060 = fmul fast float %6059, %5894
  %6061 = fmul fast float %5724, %1532
  %6062 = fmul fast float %6061, %5740
  %6063 = fmul fast float %6062, %5894
  %6064 = fadd fast float %6057, %5354
  %6065 = fadd fast float %6060, %5355
  %6066 = fadd fast float %6063, %5356
  %6067 = fmul fast float %6055, %6052
  %6068 = fmul fast float %6058, %6053
  %6069 = fmul fast float %6061, %6054
  %6070 = fadd fast float %6067, %5351
  %6071 = fadd fast float %6068, %5352
  %6072 = fadd fast float %6069, %5353
  br label %5484

; <label>:6073                                    ; preds = %5484
  br label %6074

; <label>:6074                                    ; preds = %6073, %5317
  %6075 = phi float [ %5319, %5317 ], [ %5485, %6073 ]
  %6076 = phi float [ %5320, %5317 ], [ %5486, %6073 ]
  %6077 = phi float [ %5321, %5317 ], [ %5487, %6073 ]
  %6078 = phi float [ %5322, %5317 ], [ %5488, %6073 ]
  %6079 = phi float [ %5323, %5317 ], [ %5489, %6073 ]
  %6080 = phi float [ %5324, %5317 ], [ %5490, %6073 ]
  %6081 = add i32 %5318, 1
  %6082 = icmp ugt i32 %6081, %5314
  br i1 %6082, label %6083, label %5317

; <label>:6083                                    ; preds = %6074
  br label %6084

; <label>:6084                                    ; preds = %6083, %5267, %5257
  %6085 = phi float [ %5258, %5257 ], [ %5258, %5267 ], [ %6075, %6083 ]
  %6086 = phi float [ %5259, %5257 ], [ %5259, %5267 ], [ %6076, %6083 ]
  %6087 = phi float [ %5260, %5257 ], [ %5260, %5267 ], [ %6077, %6083 ]
  %6088 = phi float [ %5261, %5257 ], [ %5261, %5267 ], [ %6078, %6083 ]
  %6089 = phi float [ %5262, %5257 ], [ %5262, %5267 ], [ %6079, %6083 ]
  %6090 = phi float [ %5263, %5257 ], [ %5263, %5267 ], [ %6080, %6083 ]
  %6091 = fmul fast float %3511, %1532
  %6092 = fmul fast float %3512, %1532
  %6093 = fmul fast float %3513, %1532
  %6094 = fadd fast float %6091, 1.000000e+00
  %6095 = fadd fast float %6092, 1.000000e+00
  %6096 = fadd fast float %6093, 1.000000e+00
  %6097 = call float @dx.op.dot3.f32(i32 55, float %6094, float %6095, float %6096, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6098 = fsub fast float 1.000000e+00, %6097
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = fmul fast float %6100, %3517
  %6102 = fsub fast float 1.000000e+00, %2531
  %6103 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6104 = fmul fast float %6103, %6102
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 3
  %6107 = fsub fast float 1.000000e+00, %1504
  %6108 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6109 = fadd fast float %6090, %1503
  %6110 = fmul fast float %6109, %1504
  %6111 = fmul fast float %6108, %6106
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6114 = fmul fast float %6088, %2154
  %6115 = fmul fast float %6089, %2155
  %6116 = fmul fast float %6090, %2156
  %6117 = fcmp fast ogt float %83, %165
  %6118 = and i1 %6117, %1969
  %6119 = or i1 %1975, %6118
  %6120 = icmp eq i32 %1968, 2
  %6121 = fcmp fast ole float %83, %165
  %6122 = and i1 %6121, %6120
  %6123 = or i1 %6122, %6119
  br i1 %6118, label %6124, label %6383

; <label>:6124                                    ; preds = %6084
  %6125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.f32 %6125, 2
  %6127 = extractvalue %dx.types.CBufRet.f32 %6125, 3
  %6128 = fmul fast float %6126, %95
  %6129 = fmul fast float %6127, %96
  %6130 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  %6131 = call float @dx.op.unary.f32(i32 7, float %6129)  ; Saturate(value)
  %6132 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %6130, float %6131, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6133 = extractvalue %dx.types.ResRet.f32 %6132, 0
  %6134 = extractvalue %dx.types.ResRet.f32 %6132, 1
  %6135 = extractvalue %dx.types.ResRet.f32 %6132, 2
  %6136 = extractvalue %dx.types.ResRet.f32 %6132, 3
  %6137 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %6130, float %6131, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6138 = extractvalue %dx.types.ResRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.ResRet.f32 %6137, 1
  %6140 = extractvalue %dx.types.ResRet.f32 %6137, 2
  %6141 = extractvalue %dx.types.ResRet.f32 %6137, 3
  %6142 = call float @dx.op.binary.f32(i32 35, float %6134, float %6135)  ; FMax(a,b)
  %6143 = call float @dx.op.binary.f32(i32 35, float %6133, float %6142)  ; FMax(a,b)
  %6144 = call float @dx.op.binary.f32(i32 35, float %6143, float %6136)  ; FMax(a,b)
  %6145 = call float @dx.op.binary.f32(i32 36, float %6139, float %6140)  ; FMin(a,b)
  %6146 = call float @dx.op.binary.f32(i32 36, float %6138, float %6145)  ; FMin(a,b)
  %6147 = call float @dx.op.binary.f32(i32 36, float %6146, float %6141)  ; FMin(a,b)
  %6148 = fmul fast float %6144, 2.550000e+02
  %6149 = fadd fast float %6148, 0x3F70101020000000
  %6150 = fptoui float %6149 to i32
  %6151 = fmul fast float %6147, 2.550000e+02
  %6152 = fadd fast float %6151, 0x3F70101020000000
  %6153 = fptoui float %6152 to i32
  %6154 = icmp ult i32 %6150, %6153
  br i1 %6154, label %6155, label %6323

; <label>:6155                                    ; preds = %6124
  %6156 = fcmp fast ogt float %82, 9.843750e-01
  %6157 = fadd fast float %83, -4.000000e+00
  %6158 = select i1 %6156, float -4.000000e+00, float %6157
  %6159 = call float @dx.op.binary.f32(i32 35, float %6158, float 0.000000e+00)  ; FMax(a,b)
  %6160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6161 = extractvalue %dx.types.CBufRet.f32 %6160, 0
  %6162 = fadd fast float %6161, %6159
  %6163 = extractvalue %dx.types.CBufRet.f32 %6160, 2
  %6164 = fmul fast float %6162, %6163
  %6165 = call float @dx.op.unary.f32(i32 23, float %6164)  ; Log(value)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6160, 3
  %6167 = fmul fast float %6166, %6165
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 2
  %6170 = fmul fast float %6167, %6169
  %6171 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6172 = uitofp i32 %6150 to float
  %6173 = uitofp i32 %6153 to float
  %6174 = fadd fast float %6172, 5.000000e-01
  %6175 = fadd fast float %6173, 5.000000e-01
  %6176 = fmul fast float %6169, %6174
  %6177 = fmul fast float %6169, %6175
  %6178 = fadd fast float %6176, 0x3F0FFB4800000000
  %6179 = fadd fast float %6177, 0xBF0FFB4800000000
  %6180 = call float @dx.op.binary.f32(i32 35, float %6171, float %6178)  ; FMax(a,b)
  %6181 = call float @dx.op.binary.f32(i32 36, float %6180, float %6179)  ; FMin(a,b)
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 1
  %6184 = extractvalue %dx.types.CBufRet.f32 %6182, 2
  %6185 = extractvalue %dx.types.CBufRet.f32 %6182, 0
  %6186 = fmul fast float %6183, %6181
  %6187 = fadd fast float %6185, %6186
  %6188 = fadd fast float %6185, %6184
  %6189 = fsub fast float %6183, %6184
  %6190 = fadd fast float %6189, %6185
  %6191 = call float @dx.op.binary.f32(i32 35, float %6187, float %6188)  ; FMax(a,b)
  %6192 = call float @dx.op.binary.f32(i32 36, float %6191, float %6190)  ; FMin(a,b)
  %6193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %6130, float %6131, float %6192, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6194 = extractvalue %dx.types.ResRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.ResRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.ResRet.f32 %6193, 2
  %6197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6198 = extractvalue %dx.types.CBufRet.i32 %6197, 0
  %6199 = extractvalue %dx.types.CBufRet.i32 %6197, 1
  %6200 = uitofp i32 %6198 to float
  %6201 = uitofp i32 %6199 to float
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 0
  %6204 = extractvalue %dx.types.CBufRet.f32 %6202, 1
  %6205 = fmul fast float %6200, %6130
  %6206 = fmul fast float %6201, %6131
  %6207 = fadd fast float %6205, -5.000000e-01
  %6208 = fadd fast float %6206, -5.000000e-01
  %6209 = call float @dx.op.unary.f32(i32 22, float %6207)  ; Frc(value)
  %6210 = call float @dx.op.unary.f32(i32 22, float %6208)  ; Frc(value)
  %6211 = fmul fast float %6209, %6209
  %6212 = fmul fast float %6211, %6209
  %6213 = fsub fast float 3.000000e+00, %6209
  %6214 = fmul fast float %6211, %6213
  %6215 = fmul fast float %6209, 3.000000e+00
  %6216 = fmul fast float %6212, 3.000000e+00
  %6217 = fmul fast float %6211, 6.000000e+00
  %6218 = fsub fast float %6216, %6217
  %6219 = fadd fast float %6218, 4.000000e+00
  %6220 = fmul fast float %6219, 0x3FC5555560000000
  %6221 = fmul fast float %6212, -3.000000e+00
  %6222 = fadd fast float %6211, %6209
  %6223 = fmul fast float %6222, 3.000000e+00
  %6224 = fadd fast float %6221, 1.000000e+00
  %6225 = fadd fast float %6224, %6223
  %6226 = fmul fast float %6212, 0x3FC5555560000000
  %6227 = fmul fast float %6210, %6210
  %6228 = fmul fast float %6227, %6210
  %6229 = fsub fast float 3.000000e+00, %6210
  %6230 = fmul fast float %6227, %6229
  %6231 = fmul fast float %6210, 3.000000e+00
  %6232 = fmul fast float %6228, 3.000000e+00
  %6233 = fmul fast float %6227, 6.000000e+00
  %6234 = fsub fast float %6232, %6233
  %6235 = fadd fast float %6234, 4.000000e+00
  %6236 = fmul fast float %6235, 0x3FC5555560000000
  %6237 = fmul fast float %6228, -3.000000e+00
  %6238 = fadd fast float %6227, %6210
  %6239 = fmul fast float %6238, 3.000000e+00
  %6240 = fadd fast float %6237, 1.000000e+00
  %6241 = fadd fast float %6240, %6239
  %6242 = fmul fast float %6228, 0x3FC5555560000000
  %6243 = fadd fast float %6209, 1.000000e+00
  %6244 = fsub fast float 1.000000e+00, %6215
  %6245 = fadd fast float %6244, %6214
  %6246 = fadd fast float %6245, %6219
  %6247 = fmul fast float %6246, 0x3FC5555560000000
  %6248 = fdiv fast float %6220, %6247
  %6249 = fsub fast float %6243, %6248
  %6250 = fsub fast float 1.000000e+00, %6209
  %6251 = fadd fast float %6225, %6212
  %6252 = fmul fast float %6251, 0x3FC5555560000000
  %6253 = fdiv fast float %6226, %6252
  %6254 = fadd fast float %6250, %6253
  %6255 = fadd fast float %6210, 1.000000e+00
  %6256 = fsub fast float 1.000000e+00, %6231
  %6257 = fadd fast float %6256, %6230
  %6258 = fadd fast float %6257, %6235
  %6259 = fmul fast float %6258, 0x3FC5555560000000
  %6260 = fdiv fast float %6236, %6259
  %6261 = fsub fast float %6255, %6260
  %6262 = fsub fast float 1.000000e+00, %6210
  %6263 = fadd fast float %6241, %6228
  %6264 = fmul fast float %6263, 0x3FC5555560000000
  %6265 = fdiv fast float %6242, %6264
  %6266 = fadd fast float %6265, %6262
  %6267 = fmul fast float %6249, %6203
  %6268 = fsub fast float %6130, %6267
  %6269 = fmul fast float %6254, %6203
  %6270 = fadd fast float %6269, %6130
  %6271 = fmul fast float %6266, %6204
  %6272 = fadd fast float %6271, %6131
  %6273 = fmul fast float %6261, %6204
  %6274 = fsub fast float %6131, %6273
  %6275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %6268, float %6274, float %6192, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6276 = extractvalue %dx.types.ResRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.ResRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.ResRet.f32 %6275, 2
  %6279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %6270, float %6274, float %6192, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6280 = extractvalue %dx.types.ResRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.ResRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.ResRet.f32 %6279, 2
  %6283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %6268, float %6272, float %6192, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6284 = extractvalue %dx.types.ResRet.f32 %6283, 0
  %6285 = extractvalue %dx.types.ResRet.f32 %6283, 1
  %6286 = extractvalue %dx.types.ResRet.f32 %6283, 2
  %6287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %6270, float %6272, float %6192, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6288 = extractvalue %dx.types.ResRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.ResRet.f32 %6287, 1
  %6290 = extractvalue %dx.types.ResRet.f32 %6287, 2
  %6291 = fsub fast float %6284, %6276
  %6292 = fsub fast float %6285, %6277
  %6293 = fsub fast float %6286, %6278
  %6294 = fmul fast float %6291, %6264
  %6295 = fmul fast float %6292, %6264
  %6296 = fmul fast float %6293, %6264
  %6297 = fadd fast float %6294, %6276
  %6298 = fadd fast float %6295, %6277
  %6299 = fadd fast float %6296, %6278
  %6300 = fsub fast float %6288, %6280
  %6301 = fsub fast float %6289, %6281
  %6302 = fsub fast float %6290, %6282
  %6303 = fmul fast float %6300, %6264
  %6304 = fmul fast float %6301, %6264
  %6305 = fmul fast float %6302, %6264
  %6306 = fsub fast float %6280, %6297
  %6307 = fadd fast float %6306, %6303
  %6308 = fsub fast float %6281, %6298
  %6309 = fadd fast float %6308, %6304
  %6310 = fsub fast float %6282, %6299
  %6311 = fadd fast float %6310, %6305
  %6312 = fmul fast float %6307, %6252
  %6313 = fmul fast float %6309, %6252
  %6314 = fmul fast float %6311, %6252
  %6315 = fadd fast float %6312, %6297
  %6316 = fadd fast float %6313, %6298
  %6317 = fadd fast float %6314, %6299
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6320 = fmul fast float %6315, %6319
  %6321 = fmul fast float %6316, %6319
  %6322 = fmul fast float %6317, %6319
  br label %6323

; <label>:6323                                    ; preds = %6155, %6124
  %6324 = phi float [ %6194, %6155 ], [ 1.000000e+00, %6124 ]
  %6325 = phi float [ %6195, %6155 ], [ 1.000000e+00, %6124 ]
  %6326 = phi float [ %6196, %6155 ], [ 1.000000e+00, %6124 ]
  %6327 = phi float [ %6320, %6155 ], [ 0.000000e+00, %6124 ]
  %6328 = phi float [ %6321, %6155 ], [ 0.000000e+00, %6124 ]
  %6329 = phi float [ %6322, %6155 ], [ 0.000000e+00, %6124 ]
  %6330 = fmul fast float %6327, %6098
  %6331 = fmul fast float %6328, %6098
  %6332 = fmul fast float %6329, %6098
  %6333 = call float @dx.op.dot3.f32(i32 55, float %6324, float %6325, float %6326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6334 = call float @dx.op.dot3.f32(i32 55, float %6330, float %6331, float %6332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = select i1 %205, float %6333, float %6324
  %6336 = select i1 %205, float %6333, float %6325
  %6337 = select i1 %205, float 1.000000e+00, float %6326
  %6338 = select i1 %205, float %6334, float %6330
  %6339 = select i1 %205, float 0.000000e+00, float %6331
  %6340 = select i1 %205, float 0.000000e+00, float %6332
  %6341 = fmul fast float %6335, %6114
  %6342 = fmul fast float %6336, %6115
  %6343 = fmul fast float %6337, %6116
  %6344 = fadd fast float %6341, %6338
  %6345 = fadd fast float %6342, %6339
  %6346 = fadd fast float %6340, %6343
  %6347 = fmul fast float %6335, %6085
  %6348 = fmul fast float %6336, %6086
  %6349 = fmul fast float %6337, %6087
  %6350 = fmul fast float %95, 2.000000e+00
  %6351 = fmul fast float %6350, %6126
  %6352 = fmul fast float %96, 2.000000e+00
  %6353 = fmul fast float %6352, %6127
  %6354 = fsub fast float 1.000000e+00, %6351
  %6355 = fsub fast float 1.000000e+00, %6353
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = extractvalue %dx.types.CBufRet.f32 %6356, 1
  %6359 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6360 = fmul fast float %6354, %6357
  %6361 = fmul fast float %6354, %6358
  %6362 = fmul fast float %6354, %6359
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6367 = fmul fast float %6355, %6364
  %6368 = fmul fast float %6355, %6365
  %6369 = fmul fast float %6355, %6366
  %6370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.f32 %6370, 0
  %6372 = extractvalue %dx.types.CBufRet.f32 %6370, 1
  %6373 = extractvalue %dx.types.CBufRet.f32 %6370, 2
  %6374 = fadd fast float %6367, %6371
  %6375 = fadd fast float %6374, %6360
  %6376 = fadd fast float %6368, %6372
  %6377 = fadd fast float %6376, %6361
  %6378 = fadd fast float %6369, %6373
  %6379 = fadd fast float %6378, %6362
  %6380 = fmul fast float %6375, %165
  %6381 = fmul fast float %6377, %165
  %6382 = fmul fast float %6379, %165
  br label %6383

; <label>:6383                                    ; preds = %6323, %6084
  %6384 = phi float [ %6380, %6323 ], [ %143, %6084 ]
  %6385 = phi float [ %6381, %6323 ], [ %144, %6084 ]
  %6386 = phi float [ %6382, %6323 ], [ %145, %6084 ]
  %6387 = phi float [ %165, %6323 ], [ %83, %6084 ]
  %6388 = phi float [ %6344, %6323 ], [ %6114, %6084 ]
  %6389 = phi float [ %6345, %6323 ], [ %6115, %6084 ]
  %6390 = phi float [ %6346, %6323 ], [ %6116, %6084 ]
  %6391 = phi float [ %6347, %6323 ], [ %6085, %6084 ]
  %6392 = phi float [ %6348, %6323 ], [ %6086, %6084 ]
  %6393 = phi float [ %6349, %6323 ], [ %6087, %6084 ]
  %6394 = phi float [ %6324, %6323 ], [ 1.000000e+00, %6084 ]
  br i1 %6123, label %7545, label %6395

; <label>:6395                                    ; preds = %6383
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %6399 = extractvalue %dx.types.CBufRet.f32 %6396, 2
  %6400 = extractvalue %dx.types.CBufRet.f32 %6396, 3
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.CBufRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.CBufRet.f32 %6401, 2
  %6405 = extractvalue %dx.types.CBufRet.f32 %6401, 3
  %6406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6406, 0
  %6408 = extractvalue %dx.types.CBufRet.f32 %6406, 1
  %6409 = extractvalue %dx.types.CBufRet.f32 %6406, 2
  %6410 = extractvalue %dx.types.CBufRet.f32 %6406, 3
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.CBufRet.f32 %6411, 2
  %6415 = extractvalue %dx.types.CBufRet.f32 %6411, 3
  %6416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.f32 %6416, 3
  %6418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6418, 3
  %6420 = extractvalue %dx.types.CBufRet.f32 %6418, 0
  %6421 = extractvalue %dx.types.CBufRet.f32 %6418, 1
  %6422 = extractvalue %dx.types.CBufRet.f32 %6418, 2
  %6423 = fcmp fast olt float %6422, -5.000000e-01
  %6424 = call float @dx.op.dot3.f32(i32 55, float %6384, float %6385, float %6386, float %6384, float %6385, float %6386)  ; Dot3(ax,ay,az,bx,by,bz)
  %6425 = call float @dx.op.unary.f32(i32 25, float %6424)  ; Rsqrt(value)
  %6426 = fmul fast float %6425, %6424
  %6427 = fmul fast float %6425, %6384
  %6428 = fmul fast float %6425, %6385
  %6429 = fmul fast float %6425, %6386
  %6430 = fadd fast float %6426, %6400
  %6431 = call float @dx.op.dot3.f32(i32 55, float %6427, float %6428, float %6429, float %6397, float %6398, float %6399)  ; Dot3(ax,ay,az,bx,by,bz)
  %6432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.i32 %6432, 1
  %6434 = and i32 %6433, 1
  %6435 = icmp ne i32 %6434, 0
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6438 = fcmp fast ogt float %6437, 0.000000e+00
  %6439 = and i1 %6435, %6438
  br i1 %6439, label %6440, label %6842, !dx.controlflow.hints !126

; <label>:6440                                    ; preds = %6395
  %6441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6441, 3
  %6443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6444 = extractvalue %dx.types.CBufRet.f32 %6443, 2
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 2
  %6447 = fsub fast float %6444, %6446
  %6448 = and i32 %6433, 2
  %6449 = extractvalue %dx.types.CBufRet.i32 %6432, 0
  %6450 = call i32 @dx.op.binary.i32(i32 40, i32 %6449, i32 3)  ; UMin(a,b)
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.CBufRet.f32 %6445, 0
  %6455 = extractvalue %dx.types.CBufRet.f32 %6445, 1
  %6456 = fsub fast float %6452, %6454
  %6457 = fsub fast float %6453, %6455
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 0
  %6460 = fcmp fast ogt float %6459, 0.000000e+00
  %6461 = fsub fast float -0.000000e+00, %6456
  %6462 = fsub fast float -0.000000e+00, %6457
  %6463 = call float @dx.op.dot2.f32(i32 54, float %6427, float %6428, float %6427, float %6428)  ; Dot2(ax,ay,bx,by)
  %6464 = call float @dx.op.dot2.f32(i32 54, float %6427, float %6428, float %6461, float %6462)  ; Dot2(ax,ay,bx,by)
  %6465 = fmul fast float %6464, 2.000000e+00
  %6466 = call float @dx.op.dot2.f32(i32 54, float %6461, float %6462, float %6461, float %6462)  ; Dot2(ax,ay,bx,by)
  %6467 = fmul fast float %6459, %6459
  %6468 = fsub fast float %6466, %6467
  %6469 = fmul fast float %6465, %6465
  %6470 = fmul fast float %6463, 4.000000e+00
  %6471 = fmul fast float %6470, %6468
  %6472 = fsub fast float %6469, %6471
  %6473 = fcmp fast ogt float %6472, 0.000000e+00
  br i1 %6473, label %6474, label %6489

; <label>:6474                                    ; preds = %6440
  %6475 = fcmp fast ogt float %6465, 0.000000e+00
  %6476 = call float @dx.op.unary.f32(i32 24, float %6472)  ; Sqrt(value)
  %6477 = fsub fast float -0.000000e+00, %6476
  %6478 = select i1 %6475, float %6476, float %6477
  %6479 = fadd fast float %6478, %6465
  %6480 = fmul float %6479, -5.000000e-01
  %6481 = fdiv fast float %6480, %6463
  %6482 = call float @dx.op.binary.f32(i32 35, float %6481, float 0.000000e+00)  ; FMax(a,b)
  %6483 = call float @dx.op.binary.f32(i32 36, float %6426, float %6482)  ; FMin(a,b)
  %6484 = fdiv fast float %6468, %6480
  %6485 = call float @dx.op.binary.f32(i32 35, float %6484, float 0.000000e+00)  ; FMax(a,b)
  %6486 = call float @dx.op.binary.f32(i32 36, float %6426, float %6485)  ; FMin(a,b)
  %6487 = call float @dx.op.binary.f32(i32 36, float %6483, float %6486)  ; FMin(a,b)
  %6488 = call float @dx.op.binary.f32(i32 35, float %6483, float %6486)  ; FMax(a,b)
  br label %6489

; <label>:6489                                    ; preds = %6474, %6440
  %6490 = phi float [ %6488, %6474 ], [ -1.000000e+00, %6440 ]
  %6491 = phi float [ %6487, %6474 ], [ -1.000000e+00, %6440 ]
  %6492 = phi i1 [ true, %6474 ], [ false, %6440 ]
  %6493 = and i1 %6460, %6492
  br i1 %6493, label %6494, label %6496

; <label>:6494                                    ; preds = %6489
  %6495 = fcmp fast oeq float %6491, %6490
  br i1 %6495, label %6795, label %6497

; <label>:6496                                    ; preds = %6489
  br i1 %6460, label %6795, label %6497

; <label>:6497                                    ; preds = %6496, %6494
  %6498 = phi float [ %6426, %6496 ], [ %6490, %6494 ]
  %6499 = phi float [ 0.000000e+00, %6496 ], [ %6491, %6494 ]
  %6500 = icmp ne i32 %6448, 0
  %6501 = fmul fast float %6498, %6429
  %6502 = fadd fast float %6501, %6442
  %6503 = fmul fast float %6502, %6498
  %6504 = select i1 %6500, float 0.000000e+00, float %6503
  %6505 = fcmp fast oeq float %6429, 0.000000e+00
  %6506 = fdiv fast float %6447, %6429
  %6507 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6506)  ; FMax(a,b)
  %6508 = select i1 %6505, float %6498, float %6507
  %6509 = call float @dx.op.binary.f32(i32 36, float %6498, float %6508)  ; FMin(a,b)
  %6510 = fcmp fast ogt float %6429, 0.000000e+00
  %6511 = fcmp fast olt float %6447, 0.000000e+00
  br i1 %6510, label %6512, label %6569

; <label>:6512                                    ; preds = %6497
  %6513 = icmp eq i32 %6448, 0
  br i1 %6511, label %6514, label %6558

; <label>:6514                                    ; preds = %6512
  %6515 = select i1 %6513, float %6498, float 0.000000e+00
  %6516 = fsub fast float -0.000000e+00, %6515
  %6517 = call float @dx.op.unary.f32(i32 6, float %6516)  ; FAbs(value)
  %6518 = fmul fast float %6515, %6429
  %6519 = fadd fast float %6518, %6442
  %6520 = fmul fast float %6517, %6519
  %6521 = fsub fast float %6504, %6520
  %6522 = fsub fast float %6498, %6517
  %6523 = select i1 %6513, float %6522, float 0.000000e+00
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6527 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6530 = extractvalue %dx.types.CBufRet.f32 %6528, 1
  %6531 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %6532 = extractvalue %dx.types.CBufRet.f32 %6528, 3
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 3
  %6535 = call float @dx.op.binary.f32(i32 36, float %6521, float %6534)  ; FMin(a,b)
  %6536 = fmul fast float %6532, %6523
  %6537 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  %6538 = fsub fast float %6529, %6525
  %6539 = fsub fast float %6530, %6526
  %6540 = fsub fast float %6531, %6527
  %6541 = fmul fast float %6537, %6538
  %6542 = fmul fast float %6537, %6539
  %6543 = fmul fast float %6537, %6540
  %6544 = fadd fast float %6541, %6525
  %6545 = fadd fast float %6542, %6526
  %6546 = fadd fast float %6543, %6527
  %6547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6548 = extractvalue %dx.types.CBufRet.f32 %6547, 0
  %6549 = extractvalue %dx.types.CBufRet.f32 %6547, 1
  %6550 = fadd fast float %6549, %6548
  %6551 = call float @dx.op.unary.f32(i32 7, float %6550)  ; Saturate(value)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6547, 2
  %6553 = extractvalue %dx.types.CBufRet.f32 %6547, 3
  %6554 = fadd fast float %6553, %6552
  %6555 = call float @dx.op.unary.f32(i32 7, float %6554)  ; Saturate(value)
  %6556 = fmul fast float %6551, %6535
  %6557 = fmul fast float %6556, %6555
  br label %6795

; <label>:6558                                    ; preds = %6512
  br i1 %6513, label %6559, label %6580

; <label>:6559                                    ; preds = %6558
  %6560 = call float @dx.op.binary.f32(i32 36, float %6509, float %6499)  ; FMin(a,b)
  %6561 = fsub fast float %6509, %6560
  %6562 = fsub fast float %6561, %6498
  %6563 = call float @dx.op.unary.f32(i32 6, float %6562)  ; FAbs(value)
  %6564 = fadd fast float %6561, %6498
  %6565 = fmul fast float %6564, %6429
  %6566 = fadd fast float %6565, %6442
  %6567 = fmul fast float %6566, %6563
  %6568 = fsub fast float %6504, %6567
  br label %6580

; <label>:6569                                    ; preds = %6497
  br i1 %6511, label %6570, label %6580

; <label>:6570                                    ; preds = %6569
  %6571 = call float @dx.op.binary.f32(i32 35, float %6499, float %6509)  ; FMax(a,b)
  %6572 = icmp eq i32 %6448, 0
  %6573 = select i1 %6572, float %6509, float 0.000000e+00
  %6574 = fsub fast float -0.000000e+00, %6573
  %6575 = call float @dx.op.unary.f32(i32 6, float %6574)  ; FAbs(value)
  %6576 = fmul fast float %6573, %6429
  %6577 = fadd fast float %6576, %6442
  %6578 = fmul fast float %6575, %6577
  %6579 = fsub fast float %6504, %6578
  br label %6580

; <label>:6580                                    ; preds = %6570, %6569, %6559, %6558
  %6581 = phi float [ %6499, %6558 ], [ %6499, %6559 ], [ %6571, %6570 ], [ %6499, %6569 ]
  %6582 = phi float [ 0.000000e+00, %6558 ], [ %6563, %6559 ], [ %6575, %6570 ], [ 0.000000e+00, %6569 ]
  %6583 = phi float [ %6504, %6558 ], [ %6568, %6559 ], [ %6579, %6570 ], [ %6504, %6569 ]
  %6584 = phi float [ %6509, %6558 ], [ %6509, %6559 ], [ %6498, %6570 ], [ %6498, %6569 ]
  %6585 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %6585, align 4, !tbaa !113, !noalias !127
  %6586 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %6586, align 4, !tbaa !113, !noalias !127
  %6587 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %6587, align 4, !tbaa !113, !noalias !127
  %6588 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %6588, align 4, !tbaa !113, !noalias !127
  %6589 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %6589, align 4, !tbaa !113, !noalias !127
  %6590 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %6590, align 4, !tbaa !113, !noalias !127
  %6591 = icmp sgt i32 %6450, 0
  br i1 %6591, label %6592, label %6653

; <label>:6592                                    ; preds = %6580
  br label %6593

; <label>:6593                                    ; preds = %6642, %6592
  %6594 = phi i32 [ %6643, %6642 ], [ 0, %6592 ]
  %6595 = phi i32 [ %6644, %6642 ], [ 0, %6592 ]
  %6596 = add nuw i32 %6595, 171
  %6597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %6596)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.CBufRet.f32 %6597, 1
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6603 = fsub fast float %6598, %6601
  %6604 = fsub fast float %6599, %6602
  %6605 = extractvalue %dx.types.CBufRet.f32 %6597, 2
  %6606 = fsub fast float -0.000000e+00, %6603
  %6607 = fsub fast float -0.000000e+00, %6604
  %6608 = call float @dx.op.dot2.f32(i32 54, float %6427, float %6428, float %6606, float %6607)  ; Dot2(ax,ay,bx,by)
  %6609 = fmul fast float %6608, 2.000000e+00
  %6610 = call float @dx.op.dot2.f32(i32 54, float %6606, float %6607, float %6606, float %6607)  ; Dot2(ax,ay,bx,by)
  %6611 = fmul fast float %6605, %6605
  %6612 = fsub fast float %6610, %6611
  %6613 = fmul fast float %6609, %6609
  %6614 = fmul fast float %6470, %6612
  %6615 = fsub fast float %6613, %6614
  %6616 = fcmp fast ogt float %6615, 0.000000e+00
  br i1 %6616, label %6617, label %6632

; <label>:6617                                    ; preds = %6593
  %6618 = fcmp fast ogt float %6609, 0.000000e+00
  %6619 = call float @dx.op.unary.f32(i32 24, float %6615)  ; Sqrt(value)
  %6620 = fsub fast float -0.000000e+00, %6619
  %6621 = select i1 %6618, float %6619, float %6620
  %6622 = fadd fast float %6621, %6609
  %6623 = fmul float %6622, -5.000000e-01
  %6624 = fdiv fast float %6623, %6463
  %6625 = call float @dx.op.binary.f32(i32 35, float %6624, float 0.000000e+00)  ; FMax(a,b)
  %6626 = call float @dx.op.binary.f32(i32 36, float %6498, float %6625)  ; FMin(a,b)
  %6627 = fdiv fast float %6612, %6623
  %6628 = call float @dx.op.binary.f32(i32 35, float %6627, float 0.000000e+00)  ; FMax(a,b)
  %6629 = call float @dx.op.binary.f32(i32 36, float %6498, float %6628)  ; FMin(a,b)
  %6630 = call float @dx.op.binary.f32(i32 36, float %6626, float %6629)  ; FMin(a,b)
  %6631 = call float @dx.op.binary.f32(i32 35, float %6626, float %6629)  ; FMax(a,b)
  br label %6632

; <label>:6632                                    ; preds = %6617, %6593
  %6633 = phi float [ %6631, %6617 ], [ -1.000000e+00, %6593 ]
  %6634 = phi float [ %6630, %6617 ], [ -1.000000e+00, %6593 ]
  %6635 = phi i1 [ true, %6617 ], [ false, %6593 ]
  br i1 %6635, label %6636, label %6642

; <label>:6636                                    ; preds = %6632
  %6637 = call float @dx.op.binary.f32(i32 35, float %6581, float %6634)  ; FMax(a,b)
  %6638 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6595
  store float %6637, float* %6638, align 4, !tbaa !113, !noalias !127
  %6639 = call float @dx.op.binary.f32(i32 35, float %6581, float %6633)  ; FMax(a,b)
  %6640 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %6595
  store float %6639, float* %6640, align 4, !tbaa !113, !noalias !127
  %6641 = add nsw i32 %6594, 1
  br label %6642

; <label>:6642                                    ; preds = %6636, %6632
  %6643 = phi i32 [ %6641, %6636 ], [ %6594, %6632 ]
  %6644 = add nuw nsw i32 %6595, 1
  %6645 = icmp eq i32 %6644, %6450
  br i1 %6645, label %6646, label %6593

; <label>:6646                                    ; preds = %6642
  %6647 = load float, float* %6587, align 4, !tbaa !113, !alias.scope !143, !noalias !146
  %6648 = load float, float* %6586, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  %6649 = load float, float* %6585, align 4, !tbaa !113, !alias.scope !151, !noalias !152
  %6650 = load float, float* %6590, align 4, !tbaa !113, !alias.scope !153, !noalias !156
  %6651 = load float, float* %6589, align 4, !tbaa !113, !alias.scope !159, !noalias !160
  %6652 = load float, float* %6588, align 4, !tbaa !113, !alias.scope !161, !noalias !162
  br label %6653

; <label>:6653                                    ; preds = %6646, %6580
  %6654 = phi float [ -1.000000e+00, %6580 ], [ %6652, %6646 ]
  %6655 = phi float [ -1.000000e+00, %6580 ], [ %6651, %6646 ]
  %6656 = phi float [ -1.000000e+00, %6580 ], [ %6650, %6646 ]
  %6657 = phi float [ -1.000000e+00, %6580 ], [ %6649, %6646 ]
  %6658 = phi float [ -1.000000e+00, %6580 ], [ %6648, %6646 ]
  %6659 = phi float [ -1.000000e+00, %6580 ], [ %6647, %6646 ]
  %6660 = phi i32 [ 0, %6580 ], [ %6643, %6646 ]
  %6661 = call float @dx.op.binary.f32(i32 36, float %6657, float %6658)  ; FMin(a,b)
  %6662 = call float @dx.op.binary.f32(i32 36, float %6661, float %6659)  ; FMin(a,b)
  %6663 = call float @dx.op.binary.f32(i32 35, float %6657, float %6658)  ; FMax(a,b)
  %6664 = call float @dx.op.binary.f32(i32 36, float %6663, float %6659)  ; FMin(a,b)
  %6665 = call float @dx.op.binary.f32(i32 35, float %6661, float %6664)  ; FMax(a,b)
  %6666 = call float @dx.op.binary.f32(i32 35, float %6663, float %6659)  ; FMax(a,b)
  store float %6662, float* %6585, align 4, !tbaa !113, !alias.scope !151, !noalias !152
  store float %6665, float* %6586, align 4, !tbaa !113, !alias.scope !149, !noalias !150
  store float %6666, float* %6587, align 4, !tbaa !113, !alias.scope !143, !noalias !146
  %6667 = call float @dx.op.binary.f32(i32 36, float %6654, float %6655)  ; FMin(a,b)
  %6668 = call float @dx.op.binary.f32(i32 36, float %6667, float %6656)  ; FMin(a,b)
  %6669 = call float @dx.op.binary.f32(i32 35, float %6654, float %6655)  ; FMax(a,b)
  %6670 = call float @dx.op.binary.f32(i32 36, float %6669, float %6656)  ; FMin(a,b)
  %6671 = call float @dx.op.binary.f32(i32 35, float %6667, float %6670)  ; FMax(a,b)
  %6672 = call float @dx.op.binary.f32(i32 35, float %6669, float %6656)  ; FMax(a,b)
  store float %6668, float* %6588, align 4, !tbaa !113, !alias.scope !161, !noalias !162
  store float %6671, float* %6589, align 4, !tbaa !113, !alias.scope !159, !noalias !160
  store float %6672, float* %6590, align 4, !tbaa !113, !alias.scope !153, !noalias !156
  %6673 = sub nsw i32 3, %6660
  %6674 = icmp sgt i32 %6673, 2
  br i1 %6674, label %6675, label %6713

; <label>:6675                                    ; preds = %6653
  %6676 = icmp eq i32 %6448, 0
  %6677 = fsub fast float %6498, %6582
  %6678 = select i1 %6676, float %6677, float %6582
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.CBufRet.f32 %6679, 1
  %6682 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6684 = extractvalue %dx.types.CBufRet.f32 %6683, 0
  %6685 = extractvalue %dx.types.CBufRet.f32 %6683, 1
  %6686 = extractvalue %dx.types.CBufRet.f32 %6683, 2
  %6687 = extractvalue %dx.types.CBufRet.f32 %6683, 3
  %6688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6689 = extractvalue %dx.types.CBufRet.f32 %6688, 3
  %6690 = call float @dx.op.binary.f32(i32 36, float %6583, float %6689)  ; FMin(a,b)
  %6691 = fmul fast float %6687, %6678
  %6692 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6693 = fsub fast float %6684, %6680
  %6694 = fsub fast float %6685, %6681
  %6695 = fsub fast float %6686, %6682
  %6696 = fmul fast float %6692, %6693
  %6697 = fmul fast float %6692, %6694
  %6698 = fmul fast float %6692, %6695
  %6699 = fadd fast float %6696, %6680
  %6700 = fadd fast float %6697, %6681
  %6701 = fadd fast float %6698, %6682
  %6702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6703 = extractvalue %dx.types.CBufRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.CBufRet.f32 %6702, 1
  %6705 = fadd fast float %6704, %6703
  %6706 = call float @dx.op.unary.f32(i32 7, float %6705)  ; Saturate(value)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6702, 2
  %6708 = extractvalue %dx.types.CBufRet.f32 %6702, 3
  %6709 = fadd fast float %6708, %6707
  %6710 = call float @dx.op.unary.f32(i32 7, float %6709)  ; Saturate(value)
  %6711 = fmul fast float %6706, %6690
  %6712 = fmul fast float %6711, %6710
  br label %6795

; <label>:6713                                    ; preds = %6653
  %6714 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6673
  %6715 = load float, float* %6714, align 4, !tbaa !113, !noalias !127
  %6716 = fcmp fast olt float %6715, %6584
  %6717 = icmp sgt i32 %6660, 0
  %6718 = and i1 %6717, %6716
  br i1 %6718, label %6719, label %6756

; <label>:6719                                    ; preds = %6713
  br label %6720

; <label>:6720                                    ; preds = %6749, %6719
  %6721 = phi float [ %6750, %6749 ], [ %6582, %6719 ]
  %6722 = phi float [ %6751, %6749 ], [ %6583, %6719 ]
  %6723 = phi float [ %6731, %6749 ], [ %6715, %6719 ]
  %6724 = phi i32 [ %6728, %6749 ], [ %6673, %6719 ]
  %6725 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %6724
  %6726 = load float, float* %6725, align 4, !tbaa !113, !noalias !127
  %6727 = icmp slt i32 %6724, 2
  %6728 = add nsw i32 %6724, 1
  %6729 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6728
  %6730 = load float, float* %6729, align 4, !tbaa !113, !noalias !127
  %6731 = select i1 %6727, float %6730, float %6498
  %6732 = call float @dx.op.binary.f32(i32 36, float %6731, float %6726)  ; FMin(a,b)
  %6733 = call float @dx.op.binary.f32(i32 36, float %6584, float %6732)  ; FMin(a,b)
  %6734 = icmp eq i32 %6448, 0
  %6735 = fadd fast float %6733, %6723
  %6736 = fmul fast float %6735, %6429
  %6737 = fadd fast float %6736, %6442
  br i1 %6734, label %6743, label %6738

; <label>:6738                                    ; preds = %6720
  %6739 = fsub fast float %6733, %6723
  %6740 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6739)  ; FMax(a,b)
  %6741 = fmul fast float %6740, %6737
  %6742 = fadd fast float %6741, %6722
  br label %6749

; <label>:6743                                    ; preds = %6720
  %6744 = fsub fast float %6723, %6733
  %6745 = call float @dx.op.unary.f32(i32 6, float %6744)  ; FAbs(value)
  %6746 = fadd fast float %6745, %6721
  %6747 = fmul fast float %6745, %6737
  %6748 = fsub fast float %6722, %6747
  br label %6749

; <label>:6749                                    ; preds = %6743, %6738
  %6750 = phi float [ %6740, %6738 ], [ %6746, %6743 ]
  %6751 = phi float [ %6742, %6738 ], [ %6748, %6743 ]
  %6752 = fcmp fast olt float %6731, %6584
  %6753 = icmp slt i32 %6728, 3
  %6754 = and i1 %6753, %6752
  br i1 %6754, label %6720, label %6755

; <label>:6755                                    ; preds = %6749
  br label %6756

; <label>:6756                                    ; preds = %6755, %6713
  %6757 = phi float [ %6582, %6713 ], [ %6750, %6755 ]
  %6758 = phi float [ %6583, %6713 ], [ %6751, %6755 ]
  %6759 = fsub fast float %6498, %6757
  %6760 = select i1 %6500, float %6757, float %6759
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.CBufRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.CBufRet.f32 %6761, 2
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6768 = extractvalue %dx.types.CBufRet.f32 %6765, 2
  %6769 = extractvalue %dx.types.CBufRet.f32 %6765, 3
  %6770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6770, 3
  %6772 = call float @dx.op.binary.f32(i32 36, float %6758, float %6771)  ; FMin(a,b)
  %6773 = fmul fast float %6769, %6760
  %6774 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6775 = fsub fast float %6766, %6762
  %6776 = fsub fast float %6767, %6763
  %6777 = fsub fast float %6768, %6764
  %6778 = fmul fast float %6774, %6775
  %6779 = fmul fast float %6774, %6776
  %6780 = fmul fast float %6774, %6777
  %6781 = fadd fast float %6778, %6762
  %6782 = fadd fast float %6779, %6763
  %6783 = fadd fast float %6780, %6764
  %6784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6784, 0
  %6786 = extractvalue %dx.types.CBufRet.f32 %6784, 1
  %6787 = fadd fast float %6786, %6785
  %6788 = call float @dx.op.unary.f32(i32 7, float %6787)  ; Saturate(value)
  %6789 = extractvalue %dx.types.CBufRet.f32 %6784, 2
  %6790 = extractvalue %dx.types.CBufRet.f32 %6784, 3
  %6791 = fadd fast float %6790, %6789
  %6792 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  %6793 = fmul fast float %6788, %6772
  %6794 = fmul fast float %6793, %6792
  br label %6795

; <label>:6795                                    ; preds = %6756, %6675, %6514, %6496, %6494
  %6796 = phi float [ %6523, %6514 ], [ %6678, %6675 ], [ %6760, %6756 ], [ 0.000000e+00, %6494 ], [ 0.000000e+00, %6496 ]
  %6797 = phi float [ %6557, %6514 ], [ %6712, %6675 ], [ %6794, %6756 ], [ 0.000000e+00, %6494 ], [ 0.000000e+00, %6496 ]
  %6798 = phi float [ %6544, %6514 ], [ %6699, %6675 ], [ %6781, %6756 ], [ 0.000000e+00, %6494 ], [ 0.000000e+00, %6496 ]
  %6799 = phi float [ %6545, %6514 ], [ %6700, %6675 ], [ %6782, %6756 ], [ 0.000000e+00, %6494 ], [ 0.000000e+00, %6496 ]
  %6800 = phi float [ %6546, %6514 ], [ %6701, %6675 ], [ %6783, %6756 ], [ 0.000000e+00, %6494 ], [ 0.000000e+00, %6496 ]
  %6801 = fmul fast float %6437, %6797
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6804 = fsub fast float %6444, %6803
  %6805 = fcmp fast olt float %6801, -2.000000e+01
  %6806 = call float @dx.op.unary.f32(i32 21, float %6801)  ; Exp(value)
  %6807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.f32 %6807, 2
  %6809 = extractvalue %dx.types.CBufRet.f32 %6807, 3
  %6810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6811 = extractvalue %dx.types.CBufRet.f32 %6810, 2
  %6812 = fmul fast float %6809, %6804
  %6813 = call float @dx.op.unary.f32(i32 7, float %6812)  ; Saturate(value)
  %6814 = fsub fast float 1.000000e+00, %6813
  %6815 = fmul fast float %6429, 5.000000e-01
  %6816 = fadd fast float %6815, 5.000000e-01
  %6817 = call float @dx.op.unary.f32(i32 7, float %6816)  ; Saturate(value)
  %6818 = fsub fast float 1.000000e+00, %6817
  %6819 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6814)  ; FMax(a,b)
  %6820 = fdiv fast float %6818, %6819
  %6821 = fsub fast float %6804, %6386
  %6822 = call float @dx.op.unary.f32(i32 6, float %6821)  ; FAbs(value)
  %6823 = fmul fast float %6822, %6808
  %6824 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6825 = fsub fast float 1.000000e+00, %6823
  %6826 = fmul fast float %6825, %6824
  %6827 = fadd fast float %6826, %6823
  %6828 = fmul fast float %6811, %6804
  %6829 = call float @dx.op.unary.f32(i32 7, float %6828)  ; Saturate(value)
  %6830 = fsub fast float 1.000000e+00, %6827
  %6831 = fmul fast float %6830, %6829
  %6832 = fadd fast float %6831, %6827
  %6833 = call float @dx.op.unary.f32(i32 7, float %6832)  ; Saturate(value)
  %6834 = fadd fast float %6806, -1.000000e+00
  %6835 = select i1 %6805, float -1.000000e+00, float %6834
  %6836 = fmul fast float %6833, %6835
  %6837 = fadd fast float %6836, 1.000000e+00
  %6838 = fsub fast float -0.000000e+00, %6836
  %6839 = fmul fast float %6798, %6838
  %6840 = fmul fast float %6799, %6838
  %6841 = fmul fast float %6800, %6838
  br label %6842

; <label>:6842                                    ; preds = %6795, %6395
  %6843 = phi float [ %6796, %6795 ], [ 0.000000e+00, %6395 ]
  %6844 = phi float [ %6837, %6795 ], [ 1.000000e+00, %6395 ]
  %6845 = phi float [ %6839, %6795 ], [ 0.000000e+00, %6395 ]
  %6846 = phi float [ %6840, %6795 ], [ 0.000000e+00, %6395 ]
  %6847 = phi float [ %6841, %6795 ], [ 0.000000e+00, %6395 ]
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6850 = fsub fast float 1.000000e+00, %6844
  %6851 = fmul fast float %6850, %6430
  %6852 = fmul fast float %6851, %6849
  %6853 = fsub fast float %6430, %6852
  br i1 %6423, label %6854, label %6883, !dx.controlflow.hints !163

; <label>:6854                                    ; preds = %6842
  %6855 = fmul fast float %6431, %6420
  %6856 = fadd fast float %6855, %6421
  %6857 = call float @dx.op.unary.f32(i32 7, float %6856)  ; Saturate(value)
  %6858 = fmul fast float %6402, %6853
  %6859 = fsub fast float -0.000000e+00, %6858
  %6860 = fmul fast float %6403, %6853
  %6861 = fsub fast float -0.000000e+00, %6860
  %6862 = call float @dx.op.unary.f32(i32 21, float %6859)  ; Exp(value)
  %6863 = call float @dx.op.unary.f32(i32 21, float %6861)  ; Exp(value)
  %6864 = call float @dx.op.binary.f32(i32 35, float %6410, float %6862)  ; FMax(a,b)
  %6865 = call float @dx.op.binary.f32(i32 35, float %6410, float %6863)  ; FMax(a,b)
  %6866 = fsub fast float %6865, %6864
  %6867 = fmul fast float %6866, %6857
  %6868 = fadd fast float %6867, %6864
  %6869 = call float @dx.op.unary.f32(i32 7, float %6868)  ; Saturate(value)
  %6870 = fsub fast float %6407, %6412
  %6871 = fsub fast float %6408, %6413
  %6872 = fsub fast float %6409, %6414
  %6873 = fmul fast float %6857, %6870
  %6874 = fmul fast float %6857, %6871
  %6875 = fmul fast float %6857, %6872
  %6876 = fadd fast float %6873, %6412
  %6877 = fadd fast float %6874, %6413
  %6878 = fadd fast float %6875, %6414
  %6879 = fsub fast float 1.000000e+00, %6869
  %6880 = fmul fast float %6879, %6876
  %6881 = fmul fast float %6879, %6877
  %6882 = fmul fast float %6879, %6878
  br label %6942

; <label>:6883                                    ; preds = %6842
  %6884 = fmul fast float %6853, %6419
  %6885 = call float @dx.op.unary.f32(i32 7, float %6884)  ; Saturate(value)
  %6886 = fsub fast float 2.000000e+00, %6885
  %6887 = fmul fast float %6885, 9.921875e-01
  %6888 = fmul fast float %6887, %6886
  %6889 = fadd fast float %6888, 3.906250e-03
  %6890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %51, float %6889, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6891 = extractvalue %dx.types.ResRet.f32 %6890, 0
  %6892 = fsub fast float %6885, %6891
  %6893 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6892)  ; FMax(a,b)
  %6894 = fmul fast float %6405, %6386
  %6895 = call float @dx.op.unary.f32(i32 6, float %6894)  ; FAbs(value)
  %6896 = fcmp fast ogt float %6895, 0x3EB0C6F7A0000000
  br i1 %6896, label %6897, label %6903, !dx.controlflow.hints !164

; <label>:6897                                    ; preds = %6883
  %6898 = fmul fast float %6894, 0xBFF7154760000000
  %6899 = call float @dx.op.unary.f32(i32 21, float %6898)  ; Exp(value)
  %6900 = fsub fast float 1.000000e+00, %6899
  %6901 = fdiv fast float %6900, %6894
  %6902 = fmul fast float %6901, %6415
  br label %6903

; <label>:6903                                    ; preds = %6897, %6883
  %6904 = phi float [ %6902, %6897 ], [ %6415, %6883 ]
  %6905 = fadd fast float %6904, %6417
  %6906 = fmul fast float %6905, %6893
  %6907 = fmul fast float %6402, %6906
  %6908 = fsub fast float -0.000000e+00, %6907
  %6909 = fmul fast float %6403, %6906
  %6910 = fsub fast float -0.000000e+00, %6909
  %6911 = fmul fast float %6404, %6906
  %6912 = fsub fast float -0.000000e+00, %6911
  %6913 = call float @dx.op.unary.f32(i32 21, float %6908)  ; Exp(value)
  %6914 = call float @dx.op.unary.f32(i32 21, float %6910)  ; Exp(value)
  %6915 = call float @dx.op.unary.f32(i32 21, float %6912)  ; Exp(value)
  %6916 = fmul fast float %6431, %6431
  %6917 = fadd fast float %6916, 1.000000e+00
  %6918 = fmul fast float %6917, 0x3FAE8EC8A0000000
  %6919 = fmul fast float %6918, %6412
  %6920 = fmul fast float %6918, %6413
  %6921 = fmul fast float %6918, %6414
  %6922 = fmul fast float %6431, %6410
  %6923 = fsub fast float 1.000000e+00, %6922
  %6924 = fmul fast float %6410, %6410
  %6925 = fsub fast float 1.000000e+00, %6924
  %6926 = fmul fast float %6925, 0x3FB45F3060000000
  %6927 = fmul fast float %6923, %6923
  %6928 = fdiv fast float 1.000000e+00, %6927
  %6929 = fmul fast float %6926, %6928
  %6930 = fmul fast float %6929, %6407
  %6931 = fmul fast float %6929, %6408
  %6932 = fmul fast float %6929, %6409
  %6933 = fadd fast float %6930, %6919
  %6934 = fadd fast float %6931, %6920
  %6935 = fadd fast float %6932, %6921
  %6936 = fsub fast float 1.000000e+00, %6913
  %6937 = fsub fast float 1.000000e+00, %6914
  %6938 = fsub fast float 1.000000e+00, %6915
  %6939 = fmul fast float %6933, %6936
  %6940 = fmul fast float %6934, %6937
  %6941 = fmul fast float %6935, %6938
  br label %6942

; <label>:6942                                    ; preds = %6903, %6854
  %6943 = phi float [ %6880, %6854 ], [ %6939, %6903 ]
  %6944 = phi float [ %6881, %6854 ], [ %6940, %6903 ]
  %6945 = phi float [ %6882, %6854 ], [ %6941, %6903 ]
  %6946 = phi float [ %6869, %6854 ], [ %6913, %6903 ]
  %6947 = phi float [ %6869, %6854 ], [ %6914, %6903 ]
  %6948 = phi float [ %6869, %6854 ], [ %6915, %6903 ]
  br i1 %6439, label %6949, label %7147, !dx.controlflow.hints !165

; <label>:6949                                    ; preds = %6942
  %6950 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6951 = fmul fast float %6950, %6850
  %6952 = fsub fast float %6845, %6943
  %6953 = fsub fast float %6846, %6944
  %6954 = fsub fast float %6847, %6945
  %6955 = fmul fast float %6951, %6952
  %6956 = fmul fast float %6951, %6953
  %6957 = fmul fast float %6951, %6954
  %6958 = fadd fast float %6955, %6943
  %6959 = fadd fast float %6956, %6944
  %6960 = fadd fast float %6957, %6945
  %6961 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6946)  ; FMax(a,b)
  %6962 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6947)  ; FMax(a,b)
  %6963 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6948)  ; FMax(a,b)
  %6964 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6844)  ; FMax(a,b)
  %6965 = call float @dx.op.binary.f32(i32 35, float %6843, float %6853)  ; FMax(a,b)
  %6966 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6965)  ; FMax(a,b)
  %6967 = fdiv fast float %6843, %6966
  %6968 = call float @dx.op.unary.f32(i32 7, float %6967)  ; Saturate(value)
  %6969 = fdiv fast float %6853, %6966
  %6970 = call float @dx.op.unary.f32(i32 7, float %6969)  ; Saturate(value)
  %6971 = fcmp fast une float %6964, 1.000000e+00
  br i1 %6971, label %6972, label %6985, !dx.controlflow.hints !166

; <label>:6972                                    ; preds = %6949
  %6973 = call float @dx.op.unary.f32(i32 23, float %6964)  ; Log(value)
  %6974 = fmul fast float %6973, 0x3FE62E4300000000
  %6975 = fmul fast float %6845, %6974
  %6976 = fsub fast float -0.000000e+00, %6975
  %6977 = fmul fast float %6846, %6974
  %6978 = fsub fast float -0.000000e+00, %6977
  %6979 = fmul fast float %6847, %6974
  %6980 = fsub fast float -0.000000e+00, %6979
  %6981 = fsub fast float 1.000000e+00, %6964
  %6982 = fdiv fast float %6976, %6981
  %6983 = fdiv fast float %6978, %6981
  %6984 = fdiv fast float %6980, %6981
  br label %6985

; <label>:6985                                    ; preds = %6972, %6949
  %6986 = phi float [ %6982, %6972 ], [ %6845, %6949 ]
  %6987 = phi float [ %6983, %6972 ], [ %6846, %6949 ]
  %6988 = phi float [ %6984, %6972 ], [ %6847, %6949 ]
  %6989 = phi float [ %6974, %6972 ], [ 0.000000e+00, %6949 ]
  %6990 = fcmp fast une float %6961, 1.000000e+00
  br i1 %6990, label %6991, label %6998, !dx.controlflow.hints !167

; <label>:6991                                    ; preds = %6985
  %6992 = call float @dx.op.unary.f32(i32 23, float %6961)  ; Log(value)
  %6993 = fmul fast float %6992, 0x3FE62E4300000000
  %6994 = fmul fast float %6958, %6993
  %6995 = fsub fast float -0.000000e+00, %6994
  %6996 = fsub fast float 1.000000e+00, %6961
  %6997 = fdiv fast float %6995, %6996
  br label %6998

; <label>:6998                                    ; preds = %6991, %6985
  %6999 = phi float [ %6997, %6991 ], [ %6958, %6985 ]
  %7000 = phi float [ %6993, %6991 ], [ 0.000000e+00, %6985 ]
  %7001 = fcmp fast une float %6962, 1.000000e+00
  br i1 %7001, label %7002, label %7009, !dx.controlflow.hints !167

; <label>:7002                                    ; preds = %6998
  %7003 = call float @dx.op.unary.f32(i32 23, float %6962)  ; Log(value)
  %7004 = fmul fast float %7003, 0x3FE62E4300000000
  %7005 = fmul fast float %6959, %7004
  %7006 = fsub fast float -0.000000e+00, %7005
  %7007 = fsub fast float 1.000000e+00, %6962
  %7008 = fdiv fast float %7006, %7007
  br label %7009

; <label>:7009                                    ; preds = %7002, %6998
  %7010 = phi float [ %7008, %7002 ], [ %6959, %6998 ]
  %7011 = phi float [ %7004, %7002 ], [ 0.000000e+00, %6998 ]
  %7012 = fcmp fast une float %6963, 1.000000e+00
  br i1 %7012, label %7013, label %7020, !dx.controlflow.hints !167

; <label>:7013                                    ; preds = %7009
  %7014 = call float @dx.op.unary.f32(i32 23, float %6963)  ; Log(value)
  %7015 = fmul fast float %7014, 0x3FE62E4300000000
  %7016 = fmul fast float %6960, %7015
  %7017 = fsub fast float -0.000000e+00, %7016
  %7018 = fsub fast float 1.000000e+00, %6963
  %7019 = fdiv fast float %7017, %7018
  br label %7020

; <label>:7020                                    ; preds = %7013, %7009
  %7021 = phi float [ %7019, %7013 ], [ %6960, %7009 ]
  %7022 = phi float [ %7015, %7013 ], [ 0.000000e+00, %7009 ]
  %7023 = fmul fast float %6986, %6970
  %7024 = fmul fast float %6987, %6970
  %7025 = fmul fast float %6988, %6970
  %7026 = fmul fast float %6989, %6970
  %7027 = fmul fast float %6999, %6968
  %7028 = fmul fast float %7010, %6968
  %7029 = fmul fast float %7021, %6968
  %7030 = fmul fast float %7000, %6968
  %7031 = fmul fast float %7011, %6968
  %7032 = fmul fast float %7022, %6968
  %7033 = fadd fast float %7027, %7023
  %7034 = fadd fast float %7028, %7024
  %7035 = fadd fast float %7029, %7025
  %7036 = fadd fast float %7030, %7026
  %7037 = fadd fast float %7031, %7026
  %7038 = fadd fast float %7032, %7026
  %7039 = fcmp fast une float %7036, 0.000000e+00
  br i1 %7039, label %7040, label %7047, !dx.controlflow.hints !168

; <label>:7040                                    ; preds = %7020
  %7041 = fmul fast float %7036, 0x3FF7154760000000
  %7042 = call float @dx.op.unary.f32(i32 21, float %7041)  ; Exp(value)
  %7043 = fsub fast float 1.000000e+00, %7042
  %7044 = fmul fast float %7033, %7043
  %7045 = fsub fast float -0.000000e+00, %7044
  %7046 = fdiv fast float %7045, %7036
  br label %7047

; <label>:7047                                    ; preds = %7040, %7020
  %7048 = phi float [ %7042, %7040 ], [ 1.000000e+00, %7020 ]
  %7049 = phi float [ %7046, %7040 ], [ %7033, %7020 ]
  %7050 = fcmp fast une float %7037, 0.000000e+00
  br i1 %7050, label %7051, label %7058, !dx.controlflow.hints !168

; <label>:7051                                    ; preds = %7047
  %7052 = fmul fast float %7037, 0x3FF7154760000000
  %7053 = call float @dx.op.unary.f32(i32 21, float %7052)  ; Exp(value)
  %7054 = fsub fast float 1.000000e+00, %7053
  %7055 = fmul fast float %7034, %7054
  %7056 = fsub fast float -0.000000e+00, %7055
  %7057 = fdiv fast float %7056, %7037
  br label %7058

; <label>:7058                                    ; preds = %7051, %7047
  %7059 = phi float [ %7053, %7051 ], [ 1.000000e+00, %7047 ]
  %7060 = phi float [ %7057, %7051 ], [ %7034, %7047 ]
  %7061 = fcmp fast une float %7038, 0.000000e+00
  br i1 %7061, label %7062, label %7069, !dx.controlflow.hints !168

; <label>:7062                                    ; preds = %7058
  %7063 = fmul fast float %7038, 0x3FF7154760000000
  %7064 = call float @dx.op.unary.f32(i32 21, float %7063)  ; Exp(value)
  %7065 = fsub fast float 1.000000e+00, %7064
  %7066 = fmul fast float %7035, %7065
  %7067 = fsub fast float -0.000000e+00, %7066
  %7068 = fdiv fast float %7067, %7038
  br label %7069

; <label>:7069                                    ; preds = %7062, %7058
  %7070 = phi float [ %7064, %7062 ], [ 1.000000e+00, %7058 ]
  %7071 = phi float [ %7068, %7062 ], [ %7035, %7058 ]
  %7072 = fcmp fast ogt float %6968, %6970
  br i1 %7072, label %7073, label %7093

; <label>:7073                                    ; preds = %7069
  %7074 = fsub fast float 1.000000e+00, %6970
  %7075 = fmul fast float %6986, %7074
  %7076 = fmul fast float %6987, %7074
  %7077 = fmul fast float %6988, %7074
  %7078 = fmul fast float %6989, %7074
  %7079 = fcmp fast une float %7078, 0.000000e+00
  br i1 %7079, label %7080, label %7131, !dx.controlflow.hints !169

; <label>:7080                                    ; preds = %7073
  %7081 = fmul fast float %7078, 0x3FF7154760000000
  %7082 = call float @dx.op.unary.f32(i32 21, float %7081)  ; Exp(value)
  %7083 = fsub fast float 1.000000e+00, %7082
  %7084 = fmul fast float %7075, %7083
  %7085 = fsub fast float -0.000000e+00, %7084
  %7086 = fmul fast float %7076, %7083
  %7087 = fsub fast float -0.000000e+00, %7086
  %7088 = fmul fast float %7077, %7083
  %7089 = fsub fast float -0.000000e+00, %7088
  %7090 = fdiv fast float %7085, %7078
  %7091 = fdiv fast float %7087, %7078
  %7092 = fdiv fast float %7089, %7078
  br label %7131

; <label>:7093                                    ; preds = %7069
  %7094 = fsub fast float 1.000000e+00, %6968
  %7095 = fmul fast float %6999, %7094
  %7096 = fmul fast float %7010, %7094
  %7097 = fmul fast float %7021, %7094
  %7098 = fmul fast float %7000, %7094
  %7099 = fmul fast float %7011, %7094
  %7100 = fmul fast float %7022, %7094
  %7101 = fcmp fast une float %7098, 0.000000e+00
  br i1 %7101, label %7102, label %7109, !dx.controlflow.hints !168

; <label>:7102                                    ; preds = %7093
  %7103 = fmul fast float %7098, 0x3FF7154760000000
  %7104 = call float @dx.op.unary.f32(i32 21, float %7103)  ; Exp(value)
  %7105 = fsub fast float 1.000000e+00, %7104
  %7106 = fmul fast float %7095, %7105
  %7107 = fsub fast float -0.000000e+00, %7106
  %7108 = fdiv fast float %7107, %7098
  br label %7109

; <label>:7109                                    ; preds = %7102, %7093
  %7110 = phi float [ %7108, %7102 ], [ %7095, %7093 ]
  %7111 = phi float [ %7104, %7102 ], [ 1.000000e+00, %7093 ]
  %7112 = fcmp fast une float %7099, 0.000000e+00
  br i1 %7112, label %7113, label %7120, !dx.controlflow.hints !168

; <label>:7113                                    ; preds = %7109
  %7114 = fmul fast float %7099, 0x3FF7154760000000
  %7115 = call float @dx.op.unary.f32(i32 21, float %7114)  ; Exp(value)
  %7116 = fsub fast float 1.000000e+00, %7115
  %7117 = fmul fast float %7096, %7116
  %7118 = fsub fast float -0.000000e+00, %7117
  %7119 = fdiv fast float %7118, %7099
  br label %7120

; <label>:7120                                    ; preds = %7113, %7109
  %7121 = phi float [ %7119, %7113 ], [ %7096, %7109 ]
  %7122 = phi float [ %7115, %7113 ], [ 1.000000e+00, %7109 ]
  %7123 = fcmp fast une float %7100, 0.000000e+00
  br i1 %7123, label %7124, label %7131, !dx.controlflow.hints !168

; <label>:7124                                    ; preds = %7120
  %7125 = fmul fast float %7100, 0x3FF7154760000000
  %7126 = call float @dx.op.unary.f32(i32 21, float %7125)  ; Exp(value)
  %7127 = fsub fast float 1.000000e+00, %7126
  %7128 = fmul fast float %7097, %7127
  %7129 = fsub fast float -0.000000e+00, %7128
  %7130 = fdiv fast float %7129, %7100
  br label %7131

; <label>:7131                                    ; preds = %7124, %7120, %7080, %7073
  %7132 = phi float [ %7130, %7124 ], [ %7092, %7080 ], [ %7077, %7073 ], [ %7097, %7120 ]
  %7133 = phi float [ %7121, %7124 ], [ %7091, %7080 ], [ %7076, %7073 ], [ %7121, %7120 ]
  %7134 = phi float [ %7110, %7124 ], [ %7090, %7080 ], [ %7075, %7073 ], [ %7110, %7120 ]
  %7135 = phi float [ %7126, %7124 ], [ %7082, %7080 ], [ 1.000000e+00, %7073 ], [ 1.000000e+00, %7120 ]
  %7136 = phi float [ %7122, %7124 ], [ %7082, %7080 ], [ 1.000000e+00, %7073 ], [ %7122, %7120 ]
  %7137 = phi float [ %7111, %7124 ], [ %7082, %7080 ], [ 1.000000e+00, %7073 ], [ %7111, %7120 ]
  %7138 = fmul fast float %7137, %7049
  %7139 = fmul fast float %7136, %7060
  %7140 = fmul fast float %7135, %7071
  %7141 = fadd fast float %7138, %7134
  %7142 = fadd fast float %7139, %7133
  %7143 = fadd fast float %7140, %7132
  %7144 = fmul fast float %7137, %7048
  %7145 = fmul fast float %7136, %7059
  %7146 = fmul fast float %7135, %7070
  br label %7147

; <label>:7147                                    ; preds = %7131, %6942
  %7148 = phi float [ %7146, %7131 ], [ %6948, %6942 ]
  %7149 = phi float [ %7145, %7131 ], [ %6947, %6942 ]
  %7150 = phi float [ %7144, %7131 ], [ %6946, %6942 ]
  %7151 = phi float [ %7143, %7131 ], [ %6945, %6942 ]
  %7152 = phi float [ %7142, %7131 ], [ %6944, %6942 ]
  %7153 = phi float [ %7141, %7131 ], [ %6943, %6942 ]
  %7154 = fmul fast float %7153, %6098
  %7155 = fmul fast float %7152, %6098
  %7156 = fmul fast float %7151, %6098
  %7157 = fmul fast float %7150, %6394
  %7158 = call float @dx.op.dot3.f32(i32 55, float %7150, float %7149, float %7148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7159 = call float @dx.op.dot3.f32(i32 55, float %7154, float %7155, float %7156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7160 = select i1 %205, float %7158, float %7150
  %7161 = select i1 %205, float %7158, float %7149
  %7162 = select i1 %205, float 1.000000e+00, float %7148
  %7163 = select i1 %205, float %7159, float %7154
  %7164 = select i1 %205, float 0.000000e+00, float %7155
  %7165 = select i1 %205, float 0.000000e+00, float %7156
  %7166 = fmul fast float %7160, %6388
  %7167 = fmul fast float %7161, %6389
  %7168 = fmul fast float %7162, %6390
  %7169 = fadd fast float %7166, %7163
  %7170 = fadd fast float %7167, %7164
  %7171 = fadd fast float %7165, %7168
  %7172 = fmul fast float %7160, %6391
  %7173 = fmul fast float %7161, %6392
  %7174 = fmul fast float %7162, %6393
  %7175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7176 = extractvalue %dx.types.CBufRet.i32 %7175, 0
  %7177 = icmp eq i32 %7176, 0
  br i1 %7177, label %7545, label %7178, !dx.controlflow.hints !170

; <label>:7178                                    ; preds = %7147
  %7179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7180 = extractvalue %dx.types.CBufRet.f32 %7179, 2
  %7181 = extractvalue %dx.types.CBufRet.f32 %7179, 3
  %7182 = fmul fast float %7180, %95
  %7183 = fmul fast float %7181, %96
  %7184 = fmul fast float %7182, 2.000000e+00
  %7185 = fmul fast float %7183, 2.000000e+00
  %7186 = fsub fast float 1.000000e+00, %7184
  %7187 = fsub fast float 1.000000e+00, %7185
  %7188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7189 = extractvalue %dx.types.CBufRet.f32 %7188, 0
  %7190 = extractvalue %dx.types.CBufRet.f32 %7188, 1
  %7191 = extractvalue %dx.types.CBufRet.f32 %7188, 2
  %7192 = fmul fast float %7186, %7189
  %7193 = fmul fast float %7186, %7190
  %7194 = fmul fast float %7186, %7191
  %7195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7196 = extractvalue %dx.types.CBufRet.f32 %7195, 0
  %7197 = extractvalue %dx.types.CBufRet.f32 %7195, 1
  %7198 = extractvalue %dx.types.CBufRet.f32 %7195, 2
  %7199 = fmul fast float %7187, %7196
  %7200 = fmul fast float %7187, %7197
  %7201 = fmul fast float %7187, %7198
  %7202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7203 = extractvalue %dx.types.CBufRet.f32 %7202, 0
  %7204 = extractvalue %dx.types.CBufRet.f32 %7202, 1
  %7205 = extractvalue %dx.types.CBufRet.f32 %7202, 2
  %7206 = fadd fast float %7199, %7203
  %7207 = fadd fast float %7206, %7192
  %7208 = fadd fast float %7200, %7204
  %7209 = fadd fast float %7208, %7193
  %7210 = fadd fast float %7201, %7205
  %7211 = fadd fast float %7210, %7194
  %7212 = fmul fast float %7207, %6387
  %7213 = fmul fast float %7209, %6387
  %7214 = fmul fast float %7211, %6387
  %7215 = fmul fast float %7212, %7212
  %7216 = fmul fast float %7213, %7213
  %7217 = fadd fast float %7215, %7216
  %7218 = fmul fast float %7214, %7214
  %7219 = fadd fast float %7217, %7218
  %7220 = call float @dx.op.unary.f32(i32 24, float %7219)  ; Sqrt(value)
  %7221 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %7222 = fsub fast float %7220, %7221
  %7223 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %7224 = fmul fast float %7222, %7223
  %7225 = call float @dx.op.unary.f32(i32 7, float %7224)  ; Saturate(value)
  %7226 = fadd fast float %7225, -5.000000e-01
  %7227 = fmul fast float %7226, 2.000000e+00
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 2
  %7230 = call float @dx.op.binary.f32(i32 36, float %7229, float %7227)  ; FMin(a,b)
  %7231 = fsub fast float -0.000000e+00, %7229
  %7232 = fcmp fast ogt float %7230, %7231
  br i1 %7232, label %7233, label %7545, !dx.controlflow.hints !171

; <label>:7233                                    ; preds = %7178
  %7234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7234, 3
  %7236 = fcmp fast ogt float %7235, 0.000000e+00
  br i1 %7236, label %7237, label %7312, !dx.controlflow.hints !172

; <label>:7237                                    ; preds = %7233
  %7238 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %7239 = extractvalue %dx.types.Dimensions %7238, 0
  %7240 = sitofp i32 %7239 to float
  %7241 = extractvalue %dx.types.Dimensions %7238, 1
  %7242 = sitofp i32 %7241 to float
  %7243 = fmul fast float %7182, %7240
  %7244 = fmul fast float %7183, %7242
  %7245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7245, 1
  %7247 = fsub fast float -0.000000e+00, %7246
  %7248 = fptoui float %7247 to i32
  %7249 = fptoui float %7243 to i32
  %7250 = fptoui float %7244 to i32
  %7251 = and i32 %7248, 31
  %7252 = lshr i32 %7249, %7251
  %7253 = lshr i32 %7250, %7251
  %7254 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %7248, i32 %7252, i32 %7253, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7255 = extractvalue %dx.types.ResRet.f32 %7254, 0
  %7256 = fcmp fast olt float %7255, -1.000000e+00
  %7257 = fcmp fast ogt float %7255, -1.000000e+00
  %7258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7259 = extractvalue %dx.types.CBufRet.f32 %7258, 1
  %7260 = select i1 %7257, float %7259, float 1.000000e+00
  %7261 = fadd fast float %7255, 1.000000e+00
  %7262 = fmul fast float %7260, %7261
  %7263 = call float @dx.op.unary.f32(i32 6, float %7262)  ; FAbs(value)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7258, 3
  %7265 = fcmp fast oge float %7263, %7264
  %7266 = select i1 %7265, float 0x4197782600000000, float %7263
  %7267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7268 = extractvalue %dx.types.CBufRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.CBufRet.f32 %7267, 1
  %7270 = extractvalue %dx.types.CBufRet.f32 %7267, 2
  %7271 = select i1 %7256, float %7268, float %7189
  %7272 = select i1 %7256, float %7269, float %7190
  %7273 = select i1 %7256, float %7270, float %7191
  %7274 = fmul fast float %7271, %7186
  %7275 = fmul fast float %7272, %7186
  %7276 = fmul fast float %7273, %7186
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 0
  %7279 = extractvalue %dx.types.CBufRet.f32 %7277, 1
  %7280 = extractvalue %dx.types.CBufRet.f32 %7277, 2
  %7281 = select i1 %7256, float %7278, float %7196
  %7282 = select i1 %7256, float %7279, float %7197
  %7283 = select i1 %7256, float %7280, float %7198
  %7284 = fmul fast float %7281, %7187
  %7285 = fmul fast float %7282, %7187
  %7286 = fmul fast float %7283, %7187
  %7287 = fadd fast float %7284, %7274
  %7288 = fadd fast float %7285, %7275
  %7289 = fadd fast float %7286, %7276
  %7290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7291 = extractvalue %dx.types.CBufRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.CBufRet.f32 %7290, 1
  %7293 = extractvalue %dx.types.CBufRet.f32 %7290, 2
  %7294 = select i1 %7256, float %7291, float %7203
  %7295 = select i1 %7256, float %7292, float %7204
  %7296 = select i1 %7256, float %7293, float %7205
  %7297 = fadd fast float %7287, %7294
  %7298 = fadd fast float %7288, %7295
  %7299 = fadd fast float %7289, %7296
  %7300 = fmul fast float %7297, %7266
  %7301 = fmul fast float %7298, %7266
  %7302 = fmul fast float %7299, %7266
  %7303 = fmul fast float %7300, %7300
  %7304 = fmul fast float %7301, %7301
  %7305 = fadd fast float %7303, %7304
  %7306 = fmul fast float %7302, %7302
  %7307 = fadd fast float %7305, %7306
  %7308 = call float @dx.op.unary.f32(i32 24, float %7307)  ; Sqrt(value)
  %7309 = fsub fast float %7308, %7221
  %7310 = fmul fast float %7309, %7223
  %7311 = call float @dx.op.unary.f32(i32 7, float %7310)  ; Saturate(value)
  br label %7312

; <label>:7312                                    ; preds = %7237, %7233
  %7313 = phi float [ %7311, %7237 ], [ 1.000000e+00, %7233 ]
  %7314 = fmul fast float %7230, 5.000000e-01
  %7315 = fadd fast float %7314, 5.000000e-01
  %7316 = call float @dx.op.unary.f32(i32 22, float %7315)  ; Frc(value)
  %7317 = call float @dx.op.unary.f32(i32 27, float %7316)  ; Round_ni(value)
  %7318 = call float @dx.op.unary.f32(i32 22, float %7316)  ; Frc(value)
  %7319 = fmul fast float %7318, 2.000000e+00
  %7320 = fadd fast float %7319, -1.000000e+00
  %7321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %51, float %7182, float %7183, float %7317, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7322 = extractvalue %dx.types.ResRet.f32 %7321, 0
  %7323 = extractvalue %dx.types.ResRet.f32 %7321, 1
  %7324 = extractvalue %dx.types.ResRet.f32 %7321, 2
  %7325 = extractvalue %dx.types.ResRet.f32 %7321, 3
  %7326 = fadd fast float %7322, -5.000000e-01
  %7327 = fadd fast float %7324, -5.000000e-01
  %7328 = fmul fast float %7326, 0xBFD5555560000000
  %7329 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7327, float %7328)  ; FMad(a,b,c)
  %7330 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7323, float 0.000000e+00)  ; FMad(a,b,c)
  %7331 = fadd fast float %7330, %7325
  %7332 = fmul fast float %7326, -7.500000e-01
  %7333 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7327, float %7332)  ; FMad(a,b,c)
  %7334 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7323, float 0.000000e+00)  ; FMad(a,b,c)
  %7335 = fadd fast float %7334, %7325
  %7336 = call float @dx.op.binary.f32(i32 35, float %7329, float -1.000000e+00)  ; FMax(a,b)
  %7337 = call float @dx.op.binary.f32(i32 35, float %7331, float -1.000000e+00)  ; FMax(a,b)
  %7338 = call float @dx.op.binary.f32(i32 35, float %7333, float -1.000000e+00)  ; FMax(a,b)
  %7339 = call float @dx.op.binary.f32(i32 35, float %7335, float -1.000000e+00)  ; FMax(a,b)
  %7340 = call float @dx.op.binary.f32(i32 36, float %7336, float 1.000000e+00)  ; FMin(a,b)
  %7341 = call float @dx.op.binary.f32(i32 36, float %7337, float 1.000000e+00)  ; FMin(a,b)
  %7342 = call float @dx.op.binary.f32(i32 36, float %7338, float 1.000000e+00)  ; FMin(a,b)
  %7343 = call float @dx.op.binary.f32(i32 36, float %7339, float 1.000000e+00)  ; FMin(a,b)
  %7344 = fcmp fast olt float %7340, 0x3FEFFF8020000000
  br i1 %7344, label %7345, label %7460, !dx.controlflow.hints !173

; <label>:7345                                    ; preds = %7312
  %7346 = extractvalue %dx.types.CBufRet.f32 %7228, 3
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 0
  %7349 = extractvalue %dx.types.CBufRet.f32 %7347, 1
  %7350 = extractvalue %dx.types.CBufRet.f32 %7347, 2
  %7351 = extractvalue %dx.types.CBufRet.f32 %7347, 3
  %7352 = fsub fast float %7348, %7340
  %7353 = fsub fast float %7349, %7341
  %7354 = fsub fast float %7350, %7342
  %7355 = fsub fast float %7351, %7343
  %7356 = fmul fast float %7352, %7346
  %7357 = fmul fast float %7353, %7346
  %7358 = fmul fast float %7354, %7346
  %7359 = fmul fast float %7355, %7346
  %7360 = fadd fast float %7356, %7340
  %7361 = fadd fast float %7357, %7341
  %7362 = fsub fast float -0.000000e+00, %7361
  %7363 = fadd fast float %7358, %7342
  %7364 = fadd fast float %7359, %7343
  %7365 = fmul fast float %7360, %7360
  %7366 = fsub fast float %7361, %7365
  %7367 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7366)  ; FMax(a,b)
  %7368 = fdiv fast float 1.000000e+00, %7367
  %7369 = fmul fast float %7361, %7360
  %7370 = fsub fast float %7363, %7369
  %7371 = fsub fast float %7320, %7360
  %7372 = fmul fast float %7320, %7320
  %7373 = fsub fast float %7372, %7361
  %7374 = fmul fast float %7371, %7368
  %7375 = fmul fast float %7374, %7370
  %7376 = fsub fast float %7373, %7375
  %7377 = fmul fast float %7361, %7361
  %7378 = fsub fast float %7364, %7377
  %7379 = fmul fast float %7370, %7370
  %7380 = fmul fast float %7379, %7368
  %7381 = fsub fast float %7378, %7380
  %7382 = fdiv fast float %7376, %7381
  %7383 = fmul fast float %7370, %7382
  %7384 = fsub fast float %7371, %7383
  %7385 = fmul fast float %7384, %7368
  %7386 = fmul fast float %7385, %7360
  %7387 = fsub fast float 1.000000e+00, %7386
  %7388 = fmul fast float %7361, %7382
  %7389 = fsub fast float %7387, %7388
  %7390 = fmul fast float %7385, %7385
  %7391 = fmul fast float %7382, 4.000000e+00
  %7392 = fmul fast float %7391, %7389
  %7393 = fsub fast float %7390, %7392
  %7394 = call float @dx.op.unary.f32(i32 24, float %7393)  ; Sqrt(value)
  %7395 = fcmp fast oge float %7385, 0.000000e+00
  %7396 = fsub fast float -0.000000e+00, %7394
  %7397 = select i1 %7395, float %7396, float %7394
  %7398 = fsub fast float %7397, %7385
  %7399 = fdiv fast float %7398, %7382
  %7400 = fdiv fast float %7389, %7398
  %7401 = fmul fast float %7399, 5.000000e-01
  %7402 = fmul fast float %7400, 2.000000e+00
  %7403 = select i1 %7395, float %7401, float %7402
  %7404 = select i1 %7395, float %7402, float %7401
  %7405 = call float @dx.op.binary.f32(i32 35, float %7403, float %7404)  ; FMax(a,b)
  %7406 = call float @dx.op.binary.f32(i32 36, float %7403, float %7404)  ; FMin(a,b)
  %7407 = fcmp fast ogt float %7320, %7406
  br i1 %7407, label %7408, label %7418

; <label>:7408                                    ; preds = %7345
  %7409 = fsub fast float %7320, %7406
  %7410 = fsub fast float %7405, %7406
  %7411 = fmul fast float %7409, %7410
  %7412 = fmul fast float %7405, %7320
  %7413 = fadd fast float %7405, %7320
  %7414 = fmul fast float %7413, %7360
  %7415 = fadd fast float %7412, %7361
  %7416 = fsub fast float %7415, %7414
  %7417 = fdiv fast float %7416, %7411
  br label %7418

; <label>:7418                                    ; preds = %7408, %7345
  %7419 = phi float [ %7417, %7408 ], [ 0.000000e+00, %7345 ]
  %7420 = fcmp fast ogt float %7320, %7405
  %7421 = fsub fast float %7320, %7405
  br i1 %7420, label %7422, label %7432

; <label>:7422                                    ; preds = %7418
  %7423 = fsub fast float %7405, %7406
  %7424 = fmul fast float %7423, %7421
  %7425 = fmul fast float %7406, %7320
  %7426 = fadd fast float %7406, %7320
  %7427 = fmul fast float %7426, %7360
  %7428 = fsub fast float %7362, %7425
  %7429 = fadd fast float %7428, %7427
  %7430 = fdiv fast float %7429, %7424
  %7431 = fadd fast float %7430, %7419
  br label %7432

; <label>:7432                                    ; preds = %7422, %7418
  %7433 = phi float [ %7431, %7422 ], [ %7419, %7418 ]
  %7434 = fsub fast float %7320, %7406
  %7435 = fmul fast float %7434, %7421
  %7436 = fmul fast float %7406, %7405
  %7437 = fadd fast float %7406, %7405
  %7438 = fmul fast float %7437, %7360
  %7439 = fadd fast float %7436, %7361
  %7440 = fsub fast float %7439, %7438
  %7441 = fdiv fast float %7440, %7435
  %7442 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7443 = fcmp fast oeq float %6113, 0.000000e+00
  %7444 = extractvalue %dx.types.CBufRet.f32 %7228, 0
  %7445 = fcmp fast oeq float %7444, 0.000000e+00
  %7446 = or i1 %7443, %7445
  %7447 = fmul fast float %7444, 2.000000e+00
  %7448 = fadd fast float %7229, %7230
  %7449 = fdiv fast float %7448, %7447
  %7450 = call float @dx.op.unary.f32(i32 7, float %7449)  ; Saturate(value)
  %7451 = fmul fast float %7450, 2.000000e+00
  %7452 = fsub fast float 3.000000e+00, %7451
  %7453 = fmul fast float %7450, %7450
  %7454 = fmul fast float %7453, %7452
  %7455 = select i1 %7446, float 1.000000e+00, float %7454
  %7456 = fmul fast float %7441, %6113
  %7457 = fadd fast float %7442, %7456
  %7458 = call float @dx.op.unary.f32(i32 7, float %7457)  ; Saturate(value)
  %7459 = fmul fast float %7455, %7458
  br label %7460

; <label>:7460                                    ; preds = %7432, %7312
  %7461 = phi float [ %7459, %7432 ], [ 0.000000e+00, %7312 ]
  %7462 = fsub fast float 1.000000e+00, %7461
  %7463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %51, float %7182, float %7183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7464 = extractvalue %dx.types.ResRet.f32 %7463, 0
  %7465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7466 = extractvalue %dx.types.CBufRet.i32 %7465, 2
  %7467 = icmp eq i32 %7466, 0
  br i1 %7467, label %7473, label %7468

; <label>:7468                                    ; preds = %7460
  %7469 = call float @dx.op.unary.f32(i32 7, float %7461)  ; Saturate(value)
  %7470 = fadd fast float %7464, -1.000000e+00
  %7471 = fmul fast float %7469, %7470
  %7472 = fadd fast float %7471, 1.000000e+00
  br label %7473

; <label>:7473                                    ; preds = %7468, %7460
  %7474 = phi float [ %7472, %7468 ], [ %7462, %7460 ]
  br i1 %7236, label %7475, label %7493

; <label>:7475                                    ; preds = %7473
  %7476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7477 = extractvalue %dx.types.CBufRet.f32 %7476, 1
  %7478 = fsub fast float %7313, %7477
  %7479 = call float @dx.op.unary.f32(i32 7, float %7478)  ; Saturate(value)
  %7480 = fsub fast float %7313, %7235
  %7481 = call float @dx.op.unary.f32(i32 7, float %7480)  ; Saturate(value)
  %7482 = fsub fast float %7479, %7481
  %7483 = fsub fast float %7315, %7481
  %7484 = fdiv fast float %7483, %7482
  %7485 = call float @dx.op.unary.f32(i32 7, float %7484)  ; Saturate(value)
  %7486 = fmul fast float %7485, 2.000000e+00
  %7487 = fsub fast float 3.000000e+00, %7486
  %7488 = fsub fast float %7464, %7474
  %7489 = fmul fast float %7485, %7485
  %7490 = fmul fast float %7489, %7488
  %7491 = fmul fast float %7490, %7487
  %7492 = fadd fast float %7491, %7474
  br label %7493

; <label>:7493                                    ; preds = %7475, %7473
  %7494 = phi float [ %7492, %7475 ], [ %7474, %7473 ]
  %7495 = call float @dx.op.binary.f32(i32 35, float %7464, float %7494)  ; FMax(a,b)
  %7496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.i32 %7496, 2
  %7498 = and i32 %7497, 1
  %7499 = icmp eq i32 %7498, 0
  %7500 = fcmp fast une float %7495, 1.000000e+00
  %7501 = and i1 %7500, %7499
  br i1 %7501, label %7502, label %7521

; <label>:7502                                    ; preds = %7493
  %7503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %51, float %7182, float %7183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7504 = extractvalue %dx.types.ResRet.f32 %7503, 0
  %7505 = extractvalue %dx.types.ResRet.f32 %7503, 1
  %7506 = extractvalue %dx.types.ResRet.f32 %7503, 2
  %7507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.f32 %7507, 1
  %7509 = fmul fast float %7508, %7504
  %7510 = fmul fast float %7508, %7505
  %7511 = fmul fast float %7508, %7506
  %7512 = fcmp fast ogt float %7464, 0x3FEFFF2E40000000
  %7513 = fsub fast float 1.000000e+00, %7495
  %7514 = fsub fast float 1.000000e+00, %7464
  %7515 = fdiv fast float %7513, %7514
  %7516 = call float @dx.op.unary.f32(i32 7, float %7515)  ; Saturate(value)
  %7517 = select i1 %7512, float 0.000000e+00, float %7516
  %7518 = fmul fast float %7509, %7517
  %7519 = fmul fast float %7510, %7517
  %7520 = fmul fast float %7511, %7517
  br label %7521

; <label>:7521                                    ; preds = %7502, %7493
  %7522 = phi float [ 0.000000e+00, %7493 ], [ %7518, %7502 ]
  %7523 = phi float [ 0.000000e+00, %7493 ], [ %7519, %7502 ]
  %7524 = phi float [ 0.000000e+00, %7493 ], [ %7520, %7502 ]
  %7525 = fmul fast float %7522, %6098
  %7526 = fmul fast float %7523, %6098
  %7527 = fmul fast float %7524, %6098
  %7528 = fmul fast float %7495, %7157
  %7529 = call float @dx.op.dot3.f32(i32 55, float %7495, float %7495, float %7495, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7530 = call float @dx.op.dot3.f32(i32 55, float %7525, float %7526, float %7527, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7531 = select i1 %205, float %7529, float %7495
  %7532 = select i1 %205, float 1.000000e+00, float %7495
  %7533 = select i1 %205, float %7530, float %7525
  %7534 = select i1 %205, float 0.000000e+00, float %7526
  %7535 = select i1 %205, float 0.000000e+00, float %7527
  %7536 = fmul fast float %7531, %7169
  %7537 = fmul fast float %7531, %7170
  %7538 = fmul fast float %7532, %7171
  %7539 = fadd fast float %7536, %7533
  %7540 = fadd fast float %7537, %7534
  %7541 = fadd fast float %7535, %7538
  %7542 = fmul fast float %7531, %7172
  %7543 = fmul fast float %7531, %7173
  %7544 = fmul fast float %7532, %7174
  br label %7545

; <label>:7545                                    ; preds = %7521, %7178, %7147, %6383
  %7546 = phi float [ %6388, %6383 ], [ %7169, %7147 ], [ %7539, %7521 ], [ %7169, %7178 ]
  %7547 = phi float [ %6389, %6383 ], [ %7170, %7147 ], [ %7540, %7521 ], [ %7170, %7178 ]
  %7548 = phi float [ %6390, %6383 ], [ %7171, %7147 ], [ %7541, %7521 ], [ %7171, %7178 ]
  %7549 = phi float [ %6391, %6383 ], [ %7172, %7147 ], [ %7542, %7521 ], [ %7172, %7178 ]
  %7550 = phi float [ %6392, %6383 ], [ %7173, %7147 ], [ %7543, %7521 ], [ %7173, %7178 ]
  %7551 = phi float [ %6393, %6383 ], [ %7174, %7147 ], [ %7544, %7521 ], [ %7174, %7178 ]
  %7552 = phi float [ %6394, %6383 ], [ %7157, %7147 ], [ %7528, %7521 ], [ %7157, %7178 ]
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 2
  %7555 = extractvalue %dx.types.CBufRet.f32 %7553, 3
  %7556 = fmul fast float %7554, %95
  %7557 = fmul fast float %7555, %96
  %7558 = call float @dx.op.unary.f32(i32 7, float %7556)  ; Saturate(value)
  %7559 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7560 = select i1 %6123, i32 2, i32 0
  %7561 = or i32 %7560, 1
  %7562 = uitofp i32 %7561 to float
  %7563 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %7558, float %7559, float %7562, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7564 = extractvalue %dx.types.ResRet.f32 %7563, 0
  %7565 = extractvalue %dx.types.ResRet.f32 %7563, 1
  %7566 = extractvalue %dx.types.ResRet.f32 %7563, 2
  %7567 = extractvalue %dx.types.ResRet.f32 %7563, 3
  %7568 = add nuw nsw i32 %7560, 2
  %7569 = uitofp i32 %7568 to float
  %7570 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %7558, float %7559, float %7569, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7571 = extractvalue %dx.types.ResRet.f32 %7570, 0
  %7572 = extractvalue %dx.types.ResRet.f32 %7570, 1
  %7573 = extractvalue %dx.types.ResRet.f32 %7570, 2
  %7574 = extractvalue %dx.types.ResRet.f32 %7570, 3
  %7575 = call float @dx.op.binary.f32(i32 35, float %7565, float %7566)  ; FMax(a,b)
  %7576 = call float @dx.op.binary.f32(i32 35, float %7564, float %7575)  ; FMax(a,b)
  %7577 = call float @dx.op.binary.f32(i32 35, float %7576, float %7567)  ; FMax(a,b)
  %7578 = call float @dx.op.binary.f32(i32 36, float %7572, float %7573)  ; FMin(a,b)
  %7579 = call float @dx.op.binary.f32(i32 36, float %7571, float %7578)  ; FMin(a,b)
  %7580 = call float @dx.op.binary.f32(i32 36, float %7579, float %7574)  ; FMin(a,b)
  %7581 = fmul fast float %7577, 2.550000e+02
  %7582 = fadd fast float %7581, 0x3F70101020000000
  %7583 = fptoui float %7582 to i32
  %7584 = fmul fast float %7580, 2.550000e+02
  %7585 = fadd fast float %7584, 0x3F70101020000000
  %7586 = fptoui float %7585 to i32
  %7587 = icmp ult i32 %7583, %7586
  br i1 %7587, label %7588, label %7757

; <label>:7588                                    ; preds = %7545
  %7589 = fcmp fast ogt float %82, 9.843750e-01
  %7590 = fadd fast float %6387, -4.000000e+00
  %7591 = select i1 %7589, float -4.000000e+00, float %7590
  %7592 = call float @dx.op.binary.f32(i32 35, float %7591, float 0.000000e+00)  ; FMax(a,b)
  %7593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7594 = extractvalue %dx.types.CBufRet.f32 %7593, 0
  %7595 = fadd fast float %7594, %7592
  %7596 = extractvalue %dx.types.CBufRet.f32 %7593, 2
  %7597 = fmul fast float %7595, %7596
  %7598 = call float @dx.op.unary.f32(i32 23, float %7597)  ; Log(value)
  %7599 = extractvalue %dx.types.CBufRet.f32 %7593, 3
  %7600 = fmul fast float %7599, %7598
  %7601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7602 = extractvalue %dx.types.CBufRet.f32 %7601, 2
  %7603 = fmul fast float %7600, %7602
  %7604 = call float @dx.op.unary.f32(i32 7, float %7603)  ; Saturate(value)
  %7605 = uitofp i32 %7583 to float
  %7606 = uitofp i32 %7586 to float
  %7607 = fadd fast float %7605, 5.000000e-01
  %7608 = fadd fast float %7606, 5.000000e-01
  %7609 = fmul fast float %7602, %7607
  %7610 = fmul fast float %7602, %7608
  %7611 = fadd fast float %7609, 0x3F0FFB4800000000
  %7612 = fadd fast float %7610, 0xBF0FFB4800000000
  %7613 = call float @dx.op.binary.f32(i32 35, float %7604, float %7611)  ; FMax(a,b)
  %7614 = call float @dx.op.binary.f32(i32 36, float %7613, float %7612)  ; FMin(a,b)
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 1
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7618 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7619 = select i1 %6123, float %7618, float 0.000000e+00
  %7620 = fmul fast float %7616, %7614
  %7621 = fadd fast float %7619, %7620
  %7622 = fadd fast float %7619, %7617
  %7623 = fsub fast float %7616, %7617
  %7624 = fadd fast float %7623, %7619
  %7625 = call float @dx.op.binary.f32(i32 35, float %7621, float %7622)  ; FMax(a,b)
  %7626 = call float @dx.op.binary.f32(i32 36, float %7625, float %7624)  ; FMin(a,b)
  %7627 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %7558, float %7559, float %7626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7628 = extractvalue %dx.types.ResRet.f32 %7627, 0
  %7629 = extractvalue %dx.types.ResRet.f32 %7627, 1
  %7630 = extractvalue %dx.types.ResRet.f32 %7627, 2
  %7631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7632 = extractvalue %dx.types.CBufRet.i32 %7631, 0
  %7633 = extractvalue %dx.types.CBufRet.i32 %7631, 1
  %7634 = uitofp i32 %7632 to float
  %7635 = uitofp i32 %7633 to float
  %7636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7637 = extractvalue %dx.types.CBufRet.f32 %7636, 0
  %7638 = extractvalue %dx.types.CBufRet.f32 %7636, 1
  %7639 = fmul fast float %7634, %7558
  %7640 = fmul fast float %7635, %7559
  %7641 = fadd fast float %7639, -5.000000e-01
  %7642 = fadd fast float %7640, -5.000000e-01
  %7643 = call float @dx.op.unary.f32(i32 22, float %7641)  ; Frc(value)
  %7644 = call float @dx.op.unary.f32(i32 22, float %7642)  ; Frc(value)
  %7645 = fmul fast float %7643, %7643
  %7646 = fmul fast float %7645, %7643
  %7647 = fsub fast float 3.000000e+00, %7643
  %7648 = fmul fast float %7645, %7647
  %7649 = fmul fast float %7643, 3.000000e+00
  %7650 = fmul fast float %7646, 3.000000e+00
  %7651 = fmul fast float %7645, 6.000000e+00
  %7652 = fsub fast float %7650, %7651
  %7653 = fadd fast float %7652, 4.000000e+00
  %7654 = fmul fast float %7653, 0x3FC5555560000000
  %7655 = fmul fast float %7646, -3.000000e+00
  %7656 = fadd fast float %7645, %7643
  %7657 = fmul fast float %7656, 3.000000e+00
  %7658 = fadd fast float %7655, 1.000000e+00
  %7659 = fadd fast float %7658, %7657
  %7660 = fmul fast float %7646, 0x3FC5555560000000
  %7661 = fmul fast float %7644, %7644
  %7662 = fmul fast float %7661, %7644
  %7663 = fsub fast float 3.000000e+00, %7644
  %7664 = fmul fast float %7661, %7663
  %7665 = fmul fast float %7644, 3.000000e+00
  %7666 = fmul fast float %7662, 3.000000e+00
  %7667 = fmul fast float %7661, 6.000000e+00
  %7668 = fsub fast float %7666, %7667
  %7669 = fadd fast float %7668, 4.000000e+00
  %7670 = fmul fast float %7669, 0x3FC5555560000000
  %7671 = fmul fast float %7662, -3.000000e+00
  %7672 = fadd fast float %7661, %7644
  %7673 = fmul fast float %7672, 3.000000e+00
  %7674 = fadd fast float %7671, 1.000000e+00
  %7675 = fadd fast float %7674, %7673
  %7676 = fmul fast float %7662, 0x3FC5555560000000
  %7677 = fadd fast float %7643, 1.000000e+00
  %7678 = fsub fast float 1.000000e+00, %7649
  %7679 = fadd fast float %7678, %7648
  %7680 = fadd fast float %7679, %7653
  %7681 = fmul fast float %7680, 0x3FC5555560000000
  %7682 = fdiv fast float %7654, %7681
  %7683 = fsub fast float %7677, %7682
  %7684 = fsub fast float 1.000000e+00, %7643
  %7685 = fadd fast float %7659, %7646
  %7686 = fmul fast float %7685, 0x3FC5555560000000
  %7687 = fdiv fast float %7660, %7686
  %7688 = fadd fast float %7684, %7687
  %7689 = fadd fast float %7644, 1.000000e+00
  %7690 = fsub fast float 1.000000e+00, %7665
  %7691 = fadd fast float %7690, %7664
  %7692 = fadd fast float %7691, %7669
  %7693 = fmul fast float %7692, 0x3FC5555560000000
  %7694 = fdiv fast float %7670, %7693
  %7695 = fsub fast float %7689, %7694
  %7696 = fsub fast float 1.000000e+00, %7644
  %7697 = fadd fast float %7675, %7662
  %7698 = fmul fast float %7697, 0x3FC5555560000000
  %7699 = fdiv fast float %7676, %7698
  %7700 = fadd fast float %7699, %7696
  %7701 = fmul fast float %7683, %7637
  %7702 = fsub fast float %7558, %7701
  %7703 = fmul fast float %7688, %7637
  %7704 = fadd fast float %7703, %7558
  %7705 = fmul fast float %7700, %7638
  %7706 = fadd fast float %7705, %7559
  %7707 = fmul fast float %7695, %7638
  %7708 = fsub fast float %7559, %7707
  %7709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7702, float %7708, float %7626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7710 = extractvalue %dx.types.ResRet.f32 %7709, 0
  %7711 = extractvalue %dx.types.ResRet.f32 %7709, 1
  %7712 = extractvalue %dx.types.ResRet.f32 %7709, 2
  %7713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7704, float %7708, float %7626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7714 = extractvalue %dx.types.ResRet.f32 %7713, 0
  %7715 = extractvalue %dx.types.ResRet.f32 %7713, 1
  %7716 = extractvalue %dx.types.ResRet.f32 %7713, 2
  %7717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7702, float %7706, float %7626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7718 = extractvalue %dx.types.ResRet.f32 %7717, 0
  %7719 = extractvalue %dx.types.ResRet.f32 %7717, 1
  %7720 = extractvalue %dx.types.ResRet.f32 %7717, 2
  %7721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7704, float %7706, float %7626, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7722 = extractvalue %dx.types.ResRet.f32 %7721, 0
  %7723 = extractvalue %dx.types.ResRet.f32 %7721, 1
  %7724 = extractvalue %dx.types.ResRet.f32 %7721, 2
  %7725 = fsub fast float %7718, %7710
  %7726 = fsub fast float %7719, %7711
  %7727 = fsub fast float %7720, %7712
  %7728 = fmul fast float %7725, %7698
  %7729 = fmul fast float %7726, %7698
  %7730 = fmul fast float %7727, %7698
  %7731 = fadd fast float %7728, %7710
  %7732 = fadd fast float %7729, %7711
  %7733 = fadd fast float %7730, %7712
  %7734 = fsub fast float %7722, %7714
  %7735 = fsub fast float %7723, %7715
  %7736 = fsub fast float %7724, %7716
  %7737 = fmul fast float %7734, %7698
  %7738 = fmul fast float %7735, %7698
  %7739 = fmul fast float %7736, %7698
  %7740 = fsub fast float %7714, %7731
  %7741 = fadd fast float %7740, %7737
  %7742 = fsub fast float %7715, %7732
  %7743 = fadd fast float %7742, %7738
  %7744 = fsub fast float %7716, %7733
  %7745 = fadd fast float %7744, %7739
  %7746 = fmul fast float %7741, %7686
  %7747 = fmul fast float %7743, %7686
  %7748 = fmul fast float %7745, %7686
  %7749 = fadd fast float %7746, %7731
  %7750 = fadd fast float %7747, %7732
  %7751 = fadd fast float %7748, %7733
  %7752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7753 = extractvalue %dx.types.CBufRet.f32 %7752, 1
  %7754 = fmul fast float %7749, %7753
  %7755 = fmul fast float %7750, %7753
  %7756 = fmul fast float %7751, %7753
  br label %7757

; <label>:7757                                    ; preds = %7588, %7545
  %7758 = phi float [ %7628, %7588 ], [ 1.000000e+00, %7545 ]
  %7759 = phi float [ %7629, %7588 ], [ 1.000000e+00, %7545 ]
  %7760 = phi float [ %7630, %7588 ], [ 1.000000e+00, %7545 ]
  %7761 = phi float [ %7754, %7588 ], [ 0.000000e+00, %7545 ]
  %7762 = phi float [ %7755, %7588 ], [ 0.000000e+00, %7545 ]
  %7763 = phi float [ %7756, %7588 ], [ 0.000000e+00, %7545 ]
  %7764 = fmul fast float %7761, %6098
  %7765 = fmul fast float %7762, %6098
  %7766 = fmul fast float %7763, %6098
  %7767 = fmul fast float %7758, %7552
  %7768 = call float @dx.op.dot3.f32(i32 55, float %7758, float %7759, float %7760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7769 = call float @dx.op.dot3.f32(i32 55, float %7764, float %7765, float %7766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7770 = select i1 %205, float %7768, float %7758
  %7771 = select i1 %205, float %7768, float %7759
  %7772 = select i1 %205, float 1.000000e+00, float %7760
  %7773 = select i1 %205, float %7769, float %7764
  %7774 = select i1 %205, float 0.000000e+00, float %7765
  %7775 = select i1 %205, float 0.000000e+00, float %7766
  %7776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7777 = extractvalue %dx.types.CBufRet.i32 %7776, 3
  %7778 = and i32 %7777, 3
  %7779 = icmp ne i32 %7778, 0
  %7780 = and i32 %7777, 4
  %7781 = icmp ne i32 %7780, 0
  %7782 = and i1 %7779, %7781
  %7783 = and i1 %205, %7782
  br i1 %7783, label %7784, label %7790

; <label>:7784                                    ; preds = %7757
  %7785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7786 = extractvalue %dx.types.CBufRet.f32 %7785, 1
  %7787 = fadd fast float %7767, -1.000000e+00
  %7788 = fmul fast float %7786, %7787
  %7789 = fadd fast float %7788, 1.000000e+00
  br label %7790

; <label>:7790                                    ; preds = %7784, %7757
  %7791 = phi float [ %7789, %7784 ], [ %7767, %7757 ]
  %7792 = fadd fast float %7549, %7546
  %7793 = fmul fast float %7770, %7792
  %7794 = fadd fast float %7793, %7773
  %7795 = fadd fast float %7550, %7547
  %7796 = fmul fast float %7771, %7795
  %7797 = fadd fast float %7796, %7774
  %7798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7799 = extractvalue %dx.types.CBufRet.f32 %7798, 0
  br i1 %205, label %7800, label %7824

; <label>:7800                                    ; preds = %7790
  %7801 = fadd fast float %7794, %7797
  %7802 = fmul fast float %7799, %7801
  %7803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7804 = extractvalue %dx.types.CBufRet.f32 %7803, 3
  %7805 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %7806 = fsub fast float %6110, %6101
  %7807 = fsub fast float %7806, %6104
  %7808 = fadd fast float %7807, %6111
  %7809 = fsub fast float %7808, %7805
  %7810 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %7811 = fmul fast float %7809, %7810
  %7812 = call float @dx.op.unary.f32(i32 7, float %7811)  ; Saturate(value)
  %7813 = fsub fast float %7812, %7804
  %7814 = fmul fast float %7813, %7791
  %7815 = fadd fast float %7814, %7804
  %7816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7817 = extractvalue %dx.types.CBufRet.f32 %7816, 0
  %7818 = fsub fast float %7815, %7817
  %7819 = fmul fast float %7818, 1.000000e+01
  %7820 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7821 = fmul fast float %7820, %6097
  %7822 = fadd fast float %7821, %6098
  %7823 = fmul fast float %7822, %7815
  br label %7847

; <label>:7824                                    ; preds = %7790
  %7825 = fadd fast float %7551, %7548
  %7826 = fmul fast float %7772, %7825
  %7827 = fadd fast float %7826, %7775
  %7828 = fmul fast float %7799, %7794
  %7829 = fmul fast float %7799, %7797
  %7830 = fmul fast float %7799, %7827
  %7831 = call float @dx.op.binary.f32(i32 35, float %7828, float %7829)  ; FMax(a,b)
  %7832 = call float @dx.op.binary.f32(i32 35, float %7831, float %7830)  ; FMax(a,b)
  %7833 = call float @dx.op.binary.f32(i32 35, float %7832, float %6098)  ; FMax(a,b)
  %7834 = fcmp fast ugt float %7833, 0x3F10000000000000
  br i1 %7834, label %7836, label %7835

; <label>:7835                                    ; preds = %7824
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7836

; <label>:7836                                    ; preds = %7835, %7824
  %7837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7838 = extractvalue %dx.types.ResRet.i32 %7837, 0
  %7839 = and i32 %7838, 32
  %7840 = icmp eq i32 %7839, 0
  br i1 %7840, label %7847, label %7841

; <label>:7841                                    ; preds = %7836
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7844 = fmul fast float %7843, 0x3FE99999A0000000
  %7845 = fadd fast float %7843, %7828
  %7846 = fadd fast float %7844, %7830
  br label %7847

; <label>:7847                                    ; preds = %7841, %7836, %7800
  %7848 = phi float [ %7802, %7800 ], [ %7845, %7841 ], [ %7828, %7836 ]
  %7849 = phi float [ %7823, %7800 ], [ %7829, %7841 ], [ %7829, %7836 ]
  %7850 = phi float [ %7822, %7800 ], [ %7846, %7841 ], [ %7830, %7836 ]
  %7851 = phi float [ %7822, %7800 ], [ %6098, %7841 ], [ %6098, %7836 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7852 = call float @dx.op.binary.f32(i32 36, float %7848, float 3.225500e+04)  ; FMin(a,b)
  %7853 = call float @dx.op.binary.f32(i32 36, float %7849, float 3.225500e+04)  ; FMin(a,b)
  %7854 = call float @dx.op.binary.f32(i32 36, float %7850, float 3.225500e+04)  ; FMin(a,b)
  %7855 = call float @dx.op.binary.f32(i32 36, float %7851, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7852)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7853)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7854)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %7855)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!70}
!dx.entryPoints = !{!71}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !59, !62}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
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
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!27 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!30 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!31 = !{i32 24, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !32}
!32 = !{i32 0, i32 5}
!33 = !{i32 25, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!39 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !44}
!44 = !{i32 0, i32 14}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!47 = !{i32 38, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!51 = !{i32 42, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!52 = !{i32 43, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!53 = !{i32 44, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!54 = !{i32 45, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!56 = !{i32 47, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !44}
!57 = !{i32 48, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!59 = !{!60, !61}
!60 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!61 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!62 = !{!63, !64, !65, !66, !67, !68, !69}
!63 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!64 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!65 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!66 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!67 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!68 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!69 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!70 = !{[31 x i32] [i32 29, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !90}
!72 = !{!73, !88, null}
!73 = !{!74, !77, !79, !81, !82, !83, !84, !85, !87}
!74 = !{i32 0, !"SV_Position", i8 9, i8 3, !75, i8 4, i32 1, i8 4, i32 0, i8 0, !76}
!75 = !{i32 0}
!76 = !{i32 3, i32 15}
!77 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !75, i8 2, i32 1, i8 2, i32 1, i8 0, !78}
!78 = !{i32 3, i32 3}
!79 = !{i32 2, !"NORMAL", i8 9, i8 0, !75, i8 2, i32 1, i8 3, i32 2, i8 0, !80}
!80 = !{i32 3, i32 7}
!81 = !{i32 3, !"TANGENT", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 3, i8 0, !76}
!82 = !{i32 4, !"SH_RED", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 4, i8 0, !76}
!83 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 5, i8 0, !76}
!84 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !75, i8 2, i32 1, i8 4, i32 6, i8 0, !76}
!85 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !75, i8 1, i32 1, i8 1, i32 7, i8 0, !86}
!86 = !{i32 3, i32 1}
!87 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !75, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!90 = !{i32 0, i64 16}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = !{!100, !100, i64 0}
!100 = !{!"int", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!104, !106, !108, !110}
!104 = distinct !{!104, !105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!105 = distinct !{!105, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!109 = distinct !{!109, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = !{!114, !114, i64 0}
!114 = !{!"float", !101, i64 0}
!115 = distinct !{!115, !93}
!116 = distinct !{!116, !93}
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
!127 = !{!128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!128 = distinct !{!128, !129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!129 = distinct !{!129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!130 = distinct !{!130, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!131 = distinct !{!131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!132 = distinct !{!132, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!142 = distinct !{!142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!151 = !{!147}
!152 = !{!148, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!161 = !{!157}
!162 = !{!158, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}

