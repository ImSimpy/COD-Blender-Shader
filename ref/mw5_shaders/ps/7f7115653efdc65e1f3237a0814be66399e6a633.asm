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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 4828bb8429fbf312cb9c64603d405a01
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
; SV_Target                1                              
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
;   [144 x i8] (type annotation not present)
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
; Number of inputs: 29, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 20, 24, 25, 26, 27, 28 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 28 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 28 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 28 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = fmul fast float %94, %80
  %96 = fmul fast float %94, %81
  %97 = select i1 %58, float 1.000000e+00, float -1.000000e+00
  %98 = fmul fast float %75, %97
  %99 = fmul fast float %76, %97
  %100 = fmul fast float %77, %97
  %101 = fmul fast float %71, %97
  %102 = fmul fast float %72, %97
  %103 = fmul fast float %73, %97
  %104 = fmul fast float %76, %73
  %105 = fmul fast float %77, %72
  %106 = fsub fast float %104, %105
  %107 = fmul fast float %77, %71
  %108 = fmul fast float %75, %73
  %109 = fsub fast float %107, %108
  %110 = fmul fast float %75, %72
  %111 = fmul fast float %76, %71
  %112 = fsub fast float %110, %111
  %113 = fmul fast float %74, %97
  %114 = fmul fast float %113, %106
  %115 = fmul fast float %113, %109
  %116 = fmul fast float %113, %112
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 3
  %120 = fmul fast float %118, 2.000000e+00
  %121 = fmul fast float %120, %95
  %122 = fmul fast float %119, 2.000000e+00
  %123 = fmul fast float %122, %96
  %124 = fsub fast float 1.000000e+00, %121
  %125 = fsub fast float 1.000000e+00, %123
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %124, %127
  %131 = fmul fast float %124, %128
  %132 = fmul fast float %124, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fmul fast float %125, %134
  %138 = fmul fast float %125, %135
  %139 = fmul fast float %125, %136
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %143 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %144 = fadd fast float %137, %141
  %145 = fadd fast float %144, %130
  %146 = fadd fast float %138, %142
  %147 = fadd fast float %146, %131
  %148 = fadd fast float %139, %143
  %149 = fadd fast float %148, %132
  %150 = fmul fast float %145, %83
  %151 = fmul fast float %147, %83
  %152 = fmul fast float %149, %83
  %153 = fmul fast float %95, 5.000000e-01
  %154 = fmul fast float %96, 5.000000e-01
  %155 = fptosi float %153 to i32
  %156 = fptosi float %154 to i32
  %157 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %155, i32 %156, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %158 = extractvalue %dx.types.ResRet.i32 %157, 0
  %159 = lshr i32 %158, 18
  %160 = uitofp i32 %159 to float
  %161 = fmul fast float %160, 0x3F4C00EBA0000000
  %162 = call float @dx.op.unary.f32(i32 21, float %161)  ; Exp(value)
  %163 = fadd fast float %162, -1.000000e+00
  %164 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %26, i32 0)  ; GetDimensions(handle,mipLevel)
  %165 = extractvalue %dx.types.Dimensions %164, 0
  %166 = sitofp i32 %165 to float
  %167 = extractvalue %dx.types.Dimensions %164, 1
  %168 = sitofp i32 %167 to float
  %169 = fcmp fast oge float %153, %166
  %170 = fcmp fast oge float %154, %168
  %171 = or i1 %169, %170
  %172 = select i1 %171, float 0x4197782600000000, float %163
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 2
  %175 = extractvalue %dx.types.CBufRet.f32 %173, 3
  %176 = fmul fast float %174, %95
  %177 = fmul fast float %175, %96
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = and i32 %179, 114688
  %181 = icmp ne i32 %180, 0
  %182 = select i1 %181, float %176, float 0.000000e+00
  %183 = select i1 %181, float %177, float 0.000000e+00
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %52, float %182, float %183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = fmul fast float %185, 2.550000e+02
  %187 = fptoui float %186 to i32
  %188 = select i1 %181, i32 %187, i32 0
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %191 = extractvalue %dx.types.CBufRet.i32 %190, 3
  %192 = and i32 %191, 3
  %193 = icmp ne i32 %192, 0
  %194 = and i32 %191, 4
  %195 = icmp ne i32 %194, 0
  %196 = and i1 %193, %195
  br i1 %196, label %197, label %208

; <label>:197                                     ; preds = %0
  %198 = extractvalue %dx.types.CBufRet.f32 %189, 3
  %199 = fmul fast float %198, %96
  %200 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %201 = fmul fast float %200, %95
  %202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %51, float %201, float %199, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = fsub fast float 1.000000e+00, %203
  %205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %206 = extractvalue %dx.types.CBufRet.f32 %205, 0
  %207 = fcmp fast olt float %204, %206
  br label %211

; <label>:208                                     ; preds = %0
  %209 = icmp eq i32 %194, 0
  %210 = and i1 %193, %209
  br label %211

; <label>:211                                     ; preds = %208, %197
  %212 = phi i1 [ %207, %197 ], [ %210, %208 ]
  %213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %214 = extractvalue %dx.types.CBufRet.f32 %213, 2
  %215 = fmul fast float %214, 0x3FE3C6EF40000000
  %216 = frem fast float %95, 2.560000e+02
  %217 = frem fast float %96, 2.560000e+02
  %218 = fptoui float %216 to i32
  %219 = fptoui float %217 to i32
  %220 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %38, i32 0, i32 %218, i32 %219, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fadd fast float %221, %215
  %223 = call float @dx.op.unary.f32(i32 22, float %222)  ; Frc(value)
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = shl i32 %225, 4
  %227 = and i32 %226, 32752
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %225, 7
  %230 = and i32 %229, 32752
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %225, 22
  %233 = shl nuw nsw i32 %232, 5
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %236, 8
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = lshr i32 %236, 16
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = and i32 %249, 65535
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %249, 16
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = fmul fast float %257, 0x3F50624DE0000000
  %261 = fmul fast float %259, 0x3F50624DE0000000
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 2
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %273, label %266

; <label>:266                                     ; preds = %211
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = add i32 %268, 0
  %270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %270, %dx.types.Handle %92, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 3
  br label %273

; <label>:273                                     ; preds = %266, %211
  %274 = phi float [ 1.000000e+00, %211 ], [ %272, %266 ]
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = or i32 %278, %276
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %894, label %281

; <label>:281                                     ; preds = %273
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = lshr i32 %283, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = fmul fast float %285, 0x3F50624DE0000000
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = lshr i32 %288, 16
  %290 = and i32 %289, 255
  %291 = lshr i32 %288, 24
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = lshr i32 %299, 22
  %301 = shl nuw nsw i32 %300, 5
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = shl i32 %299, 4
  %304 = and i32 %303, 32752
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %299, 7
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 3
  %311 = fmul fast float %310, 1.000000e+03
  %312 = fmul fast float %260, %311
  %313 = call float @dx.op.unary.f32(i32 22, float %312)  ; Frc(value)
  %314 = fadd fast float %313, %251
  %315 = fmul fast float %261, %311
  %316 = call float @dx.op.unary.f32(i32 22, float %315)  ; Frc(value)
  %317 = fadd fast float %316, %253
  %318 = fmul fast float %286, %311
  %319 = call float @dx.op.unary.f32(i32 22, float %318)  ; Frc(value)
  %320 = fmul fast float %319, 0x401921FB60000000
  %321 = fadd fast float %320, %302
  %322 = call float @dx.op.unary.f32(i32 13, float %321)  ; Sin(value)
  %323 = call float @dx.op.unary.f32(i32 12, float %321)  ; Cos(value)
  %324 = fsub fast float -0.000000e+00, %322
  %325 = fadd fast float %78, -5.000000e-01
  %326 = fadd fast float %79, -5.000000e-01
  %327 = fmul fast float %295, %325
  %328 = fmul fast float %297, %326
  %329 = fadd fast float %327, 5.000000e-01
  %330 = fadd fast float %328, 5.000000e-01
  %331 = fmul fast float %305, %329
  %332 = fmul fast float %308, %330
  %333 = fmul fast float %323, %331
  %334 = call float @dx.op.tertiary.f32(i32 46, float %324, float %332, float %333)  ; FMad(a,b,c)
  %335 = fmul fast float %322, %331
  %336 = call float @dx.op.tertiary.f32(i32 46, float %323, float %332, float %335)  ; FMad(a,b,c)
  %337 = fadd fast float %314, %334
  %338 = fadd fast float %317, %336
  %339 = icmp ugt i32 %290, 1
  %340 = icmp ugt i32 %288, 33554431
  %341 = or i1 %340, %339
  br i1 %341, label %342, label %366

; <label>:342                                     ; preds = %281
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = lshr i32 %344, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = fmul fast float %310, %346
  %348 = call float @dx.op.unary.f32(i32 22, float %347)  ; Frc(value)
  %349 = mul nuw nsw i32 %290, %291
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %348, %350
  %352 = call float @dx.op.unary.f32(i32 27, float %351)  ; Round_ni(value)
  %353 = fptoui float %352 to i32
  %354 = urem i32 %353, %290
  %355 = udiv i32 %353, %291
  %356 = call float @dx.op.unary.f32(i32 22, float %337)  ; Frc(value)
  %357 = call float @dx.op.unary.f32(i32 22, float %338)  ; Frc(value)
  %358 = uitofp i32 %354 to float
  %359 = uitofp i32 %355 to float
  %360 = fadd fast float %356, %358
  %361 = fadd fast float %357, %359
  %362 = uitofp i32 %290 to float
  %363 = uitofp i32 %291 to float
  %364 = fdiv fast float %360, %362
  %365 = fdiv fast float %361, %363
  br label %366

; <label>:366                                     ; preds = %342, %281
  %367 = phi float [ %364, %342 ], [ %337, %281 ]
  %368 = phi float [ %365, %342 ], [ %338, %281 ]
  %369 = and i32 %276, 256
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %415, label %371

; <label>:371                                     ; preds = %366
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = add i32 %373, 0
  %375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %376 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %375, %dx.types.Handle %92, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %377 = extractvalue %dx.types.ResRet.f32 %376, 0
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = shl i32 %379, 4
  %381 = and i32 %380, 32752
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %379, 7
  %384 = and i32 %383, 32752
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fsub fast float 1.000000e+00, %274
  %387 = call float @dx.op.binary.f32(i32 35, float %386, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %388 = bitcast float %274 to i32
  %389 = sitofp i32 %388 to float
  %390 = fadd fast float %389, 0xC1CFBF8940000000
  %391 = fmul fast float %385, %390
  %392 = fadd fast float %391, 0x41CFBF8940000000
  %393 = fptosi float %392 to i32
  %394 = bitcast i32 %393 to float
  %395 = bitcast float %387 to i32
  %396 = sitofp i32 %395 to float
  %397 = fadd fast float %396, 0xC1CFBF8940000000
  %398 = fmul fast float %397, %385
  %399 = fadd fast float %398, 0x41CFBF8940000000
  %400 = fptosi float %399 to i32
  %401 = bitcast i32 %400 to float
  %402 = fmul fast float %394, %382
  %403 = fmul fast float %401, %382
  %404 = fsub fast float %387, %402
  %405 = fadd fast float %403, %387
  %406 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %407 = call float @dx.op.unary.f32(i32 7, float %405)  ; Saturate(value)
  %408 = fsub fast float %377, %406
  %409 = fsub fast float %407, %406
  %410 = bitcast float %409 to i32
  %411 = sub nsw i32 2129859010, %410
  %412 = bitcast i32 %411 to float
  %413 = fmul fast float %412, %408
  %414 = call float @dx.op.unary.f32(i32 7, float %413)  ; Saturate(value)
  br label %415

; <label>:415                                     ; preds = %371, %366
  %416 = phi float [ %414, %371 ], [ %274, %366 ]
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 128
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %436, label %421

; <label>:421                                     ; preds = %415
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = add i32 %423, 0
  %425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %426 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %425, %dx.types.Handle %92, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %427 = extractvalue %dx.types.ResRet.f32 %426, 0
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 524288
  %431 = icmp ne i32 %430, 0
  %432 = fcmp fast ogt float %427, 0x3FE0101020000000
  %433 = select i1 %432, float 1.000000e+00, float 0.000000e+00
  %434 = select i1 %431, float %433, float %427
  %435 = fmul fast float %434, %416
  br label %436

; <label>:436                                     ; preds = %421, %415
  %437 = phi float [ %435, %421 ], [ %416, %415 ]
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 16
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %635, label %442

; <label>:442                                     ; preds = %436
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = add i32 %446, 0
  %448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %448, %dx.types.Handle %91, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = and i32 %444, 255
  %455 = uitofp i32 %454 to float
  %456 = lshr i32 %444, 8
  %457 = and i32 %456, 255
  %458 = uitofp i32 %457 to float
  %459 = fmul fast float %453, %455
  %460 = fadd fast float %459, %458
  %461 = fmul fast float %460, 0x3F70101000000000
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 512
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %473, label %466

; <label>:466                                     ; preds = %442
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = add i32 %468, 0
  %470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %470, %dx.types.Handle %92, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  br label %473

; <label>:473                                     ; preds = %466, %442
  %474 = phi float [ %472, %466 ], [ 1.000000e+00, %442 ]
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 33554432
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %582, label %479

; <label>:479                                     ; preds = %473
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 65535
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = lshr i32 %481, 16
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 65535
  %489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %488)  ; LegacyF16ToF32(value)
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = lshr i32 %491, 24
  %493 = uitofp i32 %492 to float
  %494 = fmul fast float %493, 0x3F70101020000000
  %495 = and i32 %491, 255
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %496, 0x3F70101020000000
  %498 = lshr i32 %491, 8
  %499 = and i32 %498, 255
  %500 = uitofp i32 %499 to float
  %501 = fmul fast float %500, 0x3F70101020000000
  %502 = lshr i32 %491, 16
  %503 = and i32 %502, 255
  %504 = uitofp i32 %503 to float
  %505 = fmul fast float %504, 0x3F70101020000000
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = lshr i32 %507, 24
  %509 = uitofp i32 %508 to float
  %510 = fmul fast float %509, 0x3F70101020000000
  %511 = and i32 %507, 255
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %512, 0x3F70101020000000
  %514 = lshr i32 %507, 8
  %515 = and i32 %514, 255
  %516 = uitofp i32 %515 to float
  %517 = fmul fast float %516, 0x3F70101020000000
  %518 = lshr i32 %507, 16
  %519 = and i32 %518, 255
  %520 = uitofp i32 %519 to float
  %521 = fmul fast float %520, 0x3F70101020000000
  %522 = bitcast float %450 to i32
  %523 = ashr i32 %522, 1
  %524 = sub nsw i32 1597463174, %523
  %525 = bitcast i32 %524 to float
  %526 = fmul fast float %450, 5.000000e-01
  %527 = fmul fast float %525, %525
  %528 = fmul fast float %527, %526
  %529 = fsub fast float 1.500000e+00, %528
  %530 = fmul fast float %525, %450
  %531 = fmul fast float %530, %529
  %532 = bitcast float %451 to i32
  %533 = ashr i32 %532, 1
  %534 = sub nsw i32 1597463174, %533
  %535 = bitcast i32 %534 to float
  %536 = fmul fast float %451, 5.000000e-01
  %537 = fmul fast float %535, %535
  %538 = fmul fast float %537, %536
  %539 = fsub fast float 1.500000e+00, %538
  %540 = fmul fast float %535, %451
  %541 = fmul fast float %540, %539
  %542 = bitcast float %452 to i32
  %543 = ashr i32 %542, 1
  %544 = sub nsw i32 1597463174, %543
  %545 = bitcast i32 %544 to float
  %546 = fmul fast float %452, 5.000000e-01
  %547 = fmul fast float %545, %545
  %548 = fmul fast float %547, %546
  %549 = fsub fast float 1.500000e+00, %548
  %550 = fmul fast float %545, %452
  %551 = fmul fast float %550, %549
  %552 = fsub fast float %531, %513
  %553 = fsub fast float %541, %517
  %554 = fsub fast float %551, %521
  %555 = fmul fast float %552, %483
  %556 = fmul fast float %553, %485
  %557 = fmul fast float %554, %489
  %558 = fadd fast float %555, %497
  %559 = fadd fast float %556, %501
  %560 = fadd fast float %557, %505
  %561 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %562 = call float @dx.op.unary.f32(i32 7, float %559)  ; Saturate(value)
  %563 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %564 = fmul fast float %561, %561
  %565 = fmul fast float %562, %562
  %566 = fmul fast float %563, %563
  %567 = fsub fast float %564, %450
  %568 = fsub fast float %565, %451
  %569 = fsub fast float %566, %452
  %570 = fmul fast float %567, %474
  %571 = fmul fast float %568, %474
  %572 = fmul fast float %569, %474
  %573 = fadd fast float %570, %450
  %574 = fadd fast float %571, %451
  %575 = fadd fast float %572, %452
  %576 = fadd fast float %494, %461
  %577 = fsub fast float %576, %510
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %579 = fsub fast float %578, %461
  %580 = fmul fast float %579, %474
  %581 = fadd fast float %580, %461
  br label %635

; <label>:582                                     ; preds = %473
  %583 = and i32 %476, 134217728
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %619, label %585

; <label>:585                                     ; preds = %582
  %586 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %587 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %588 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %589 = fadd fast float %586, -5.000000e-01
  %590 = fadd fast float %587, -5.000000e-01
  %591 = fadd fast float %588, -5.000000e-01
  %592 = fmul fast float %589, %474
  %593 = fmul fast float %590, %474
  %594 = fmul fast float %591, %474
  %595 = fadd fast float %592, 5.000000e-01
  %596 = fadd fast float %593, 5.000000e-01
  %597 = fadd fast float %594, 5.000000e-01
  %598 = call float @dx.op.unary.f32(i32 24, float %450)  ; Sqrt(value)
  %599 = call float @dx.op.unary.f32(i32 24, float %451)  ; Sqrt(value)
  %600 = call float @dx.op.unary.f32(i32 24, float %452)  ; Sqrt(value)
  %601 = fmul fast float %595, 2.000000e+00
  %602 = fsub fast float 1.000000e+00, %601
  %603 = fmul fast float %602, %598
  %604 = fadd fast float %603, %601
  %605 = fmul fast float %604, %598
  %606 = fmul fast float %596, 2.000000e+00
  %607 = fsub fast float 1.000000e+00, %606
  %608 = fmul fast float %607, %599
  %609 = fadd fast float %608, %606
  %610 = fmul fast float %609, %599
  %611 = fmul fast float %597, 2.000000e+00
  %612 = fsub fast float 1.000000e+00, %611
  %613 = fmul fast float %612, %600
  %614 = fadd fast float %613, %611
  %615 = fmul fast float %614, %600
  %616 = fmul fast float %605, %605
  %617 = fmul fast float %610, %610
  %618 = fmul fast float %615, %615
  br label %635

; <label>:619                                     ; preds = %582
  %620 = fmul fast float %239, %239
  %621 = fmul fast float %243, %243
  %622 = fmul fast float %247, %247
  %623 = fadd fast float %620, -1.000000e+00
  %624 = fadd fast float %621, -1.000000e+00
  %625 = fadd fast float %622, -1.000000e+00
  %626 = fmul fast float %474, %623
  %627 = fmul fast float %474, %624
  %628 = fmul fast float %474, %625
  %629 = fadd fast float %626, 1.000000e+00
  %630 = fadd fast float %627, 1.000000e+00
  %631 = fadd fast float %628, 1.000000e+00
  %632 = fmul fast float %629, %450
  %633 = fmul fast float %630, %451
  %634 = fmul fast float %631, %452
  br label %635

; <label>:635                                     ; preds = %619, %585, %479, %436
  %636 = phi float [ %581, %479 ], [ %461, %585 ], [ %461, %619 ], [ 0x3FA23C0BE0000000, %436 ]
  %637 = phi float [ %573, %479 ], [ %616, %585 ], [ %632, %619 ], [ 1.000000e+00, %436 ]
  %638 = phi float [ %574, %479 ], [ %617, %585 ], [ %633, %619 ], [ 1.000000e+00, %436 ]
  %639 = phi float [ %575, %479 ], [ %618, %585 ], [ %634, %619 ], [ 1.000000e+00, %436 ]
  %640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.i32 %640, 1
  %642 = and i32 %641, 1
  %643 = icmp ne i32 %642, 0
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = and i32 %645, 32
  %647 = icmp ne i32 %646, 0
  %648 = and i1 %643, %647
  %649 = select i1 %648, float 1.000000e+00, float %637
  %650 = select i1 %648, float 0x3FD3333340000000, float %638
  %651 = select i1 %648, float 0x3FD3333340000000, float %639
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 32
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %725, label %656

; <label>:656                                     ; preds = %635
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add i32 %660, 0
  %662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %662, %dx.types.Handle %91, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 2
  %667 = extractvalue %dx.types.ResRet.f32 %663, 3
  %668 = and i32 %658, 255
  %669 = uitofp i32 %668 to float
  %670 = lshr i32 %658, 8
  %671 = and i32 %670, 255
  %672 = uitofp i32 %671 to float
  %673 = lshr i32 %658, 16
  %674 = and i32 %673, 255
  %675 = uitofp i32 %674 to float
  %676 = fmul fast float %675, 0x3F70101000000000
  %677 = fmul fast float %664, %669
  %678 = fadd fast float %677, %672
  %679 = fmul fast float %678, 0x3F70101000000000
  %680 = fadd fast float %665, -5.000000e-01
  %681 = fadd fast float %667, -5.000000e-01
  %682 = fmul fast float %680, %676
  %683 = fmul fast float %681, %676
  %684 = fadd fast float %682, 5.000000e-01
  %685 = fadd fast float %683, 5.000000e-01
  %686 = fmul fast float %684, 2.000000e+00
  %687 = fadd fast float %686, -1.000000e+00
  %688 = fmul fast float %685, 2.000000e+00
  %689 = fadd fast float %688, -1.000000e+00
  %690 = fadd fast float %687, %689
  %691 = fmul fast float %690, 5.000000e-01
  %692 = fsub fast float %687, %689
  %693 = fmul fast float %692, 5.000000e-01
  %694 = call float @dx.op.unary.f32(i32 6, float %691)  ; FAbs(value)
  %695 = fsub fast float 1.000000e+00, %694
  %696 = call float @dx.op.unary.f32(i32 6, float %693)  ; FAbs(value)
  %697 = fsub fast float %695, %696
  %698 = call float @dx.op.dot3.f32(i32 55, float %691, float %693, float %697, float %691, float %693, float %697)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = call float @dx.op.unary.f32(i32 25, float %698)  ; Rsqrt(value)
  %700 = fmul fast float %691, %699
  %701 = fmul fast float %693, %699
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 67108864
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %721, label %706

; <label>:706                                     ; preds = %656
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = and i32 %708, 65535
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 65535
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = lshr i32 %708, 16
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = fsub fast float %679, %716
  %718 = fmul fast float %717, %710
  %719 = fadd fast float %718, %714
  %720 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  br label %721

; <label>:721                                     ; preds = %706, %656
  %722 = phi float [ %720, %706 ], [ %679, %656 ]
  %723 = call float @dx.op.dot2.f32(i32 54, float %700, float %701, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %724 = call float @dx.op.dot2.f32(i32 54, float %700, float %701, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %725

; <label>:725                                     ; preds = %721, %635
  %726 = phi float [ %722, %721 ], [ 0x3FD6666660000000, %635 ]
  %727 = phi float [ %723, %721 ], [ 0.000000e+00, %635 ]
  %728 = phi float [ %724, %721 ], [ 0.000000e+00, %635 ]
  %729 = phi float [ %666, %721 ], [ 1.000000e+00, %635 ]
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 22
  %733 = shl nuw nsw i32 %732, 5
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = and i32 %736, 64
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %771, label %739

; <label>:739                                     ; preds = %725
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = add i32 %741, 0
  %743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = and i32 %745, 131072
  %747 = icmp eq i32 %746, 0
  %748 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %743, %dx.types.Handle %91, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = extractvalue %dx.types.ResRet.f32 %748, 1
  %751 = extractvalue %dx.types.ResRet.f32 %748, 2
  %752 = fmul fast float %749, %228
  %753 = fmul fast float %750, %231
  %754 = fmul fast float %751, %234
  br i1 %747, label %761, label %755

; <label>:755                                     ; preds = %739
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 0
  %758 = fmul fast float %757, %752
  %759 = fmul fast float %757, %753
  %760 = fmul fast float %757, %754
  br label %761

; <label>:761                                     ; preds = %755, %739
  %762 = phi float [ %758, %755 ], [ %752, %739 ]
  %763 = phi float [ %759, %755 ], [ %753, %739 ]
  %764 = phi float [ %760, %755 ], [ %754, %739 ]
  %765 = fmul fast float %762, %734
  %766 = select i1 %212, float %765, float %762
  %767 = call float @dx.op.dot3.f32(i32 55, float %766, float %763, float %764, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %768 = select i1 %212, float 0.000000e+00, float %762
  %769 = select i1 %212, float %767, float %763
  %770 = select i1 %212, float 0.000000e+00, float %764
  br label %771

; <label>:771                                     ; preds = %761, %725
  %772 = phi float [ %768, %761 ], [ 0.000000e+00, %725 ]
  %773 = phi float [ %769, %761 ], [ 0.000000e+00, %725 ]
  %774 = phi float [ %770, %761 ], [ 0.000000e+00, %725 ]
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 1024
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %807, label %779

; <label>:779                                     ; preds = %771
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101020000000
  %785 = lshr i32 %781, 8
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = fmul fast float %787, 0x3F70101020000000
  %789 = lshr i32 %781, 16
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %791, 0x3F70101020000000
  %793 = fmul fast float %784, %784
  %794 = fmul fast float %788, %788
  %795 = fmul fast float %792, %792
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = add i32 %797, 0
  %799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %798, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %800 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %799, %dx.types.Handle %92, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = fmul fast float %793, %801
  %805 = fmul fast float %794, %802
  %806 = fmul fast float %795, %803
  br label %807

; <label>:807                                     ; preds = %779, %771
  %808 = phi float [ %804, %779 ], [ 0.000000e+00, %771 ]
  %809 = phi float [ %805, %779 ], [ 0.000000e+00, %771 ]
  %810 = phi float [ %806, %779 ], [ 0.000000e+00, %771 ]
  %811 = fcmp fast ogt float %808, 0.000000e+00
  %812 = fcmp fast ogt float %809, 0.000000e+00
  %813 = fcmp fast ogt float %810, 0.000000e+00
  %814 = call float @dx.op.unary.f32(i32 23, float %808)  ; Log(value)
  %815 = call float @dx.op.unary.f32(i32 23, float %809)  ; Log(value)
  %816 = call float @dx.op.unary.f32(i32 23, float %810)  ; Log(value)
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = lshr i32 %818, 7
  %820 = and i32 %819, 32752
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = fmul fast float %814, 0xBFE62E4300000000
  %823 = fmul fast float %822, %821
  %824 = fmul fast float %815, 0xBFE62E4300000000
  %825 = fmul fast float %824, %821
  %826 = fmul fast float %816, 0xBFE62E4300000000
  %827 = fmul fast float %826, %821
  %828 = select i1 %811, float %823, float 1.270000e+02
  %829 = select i1 %812, float %825, float 1.270000e+02
  %830 = select i1 %813, float %827, float 1.270000e+02
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = and i32 %832, 10240
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %877, label %835

; <label>:835                                     ; preds = %807
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = add i32 %837, 0
  %839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %839, %dx.types.Handle %92, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 1
  %842 = extractvalue %dx.types.ResRet.f32 %840, 3
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = and i32 %844, 1048576
  %846 = icmp ne i32 %845, 0
  %847 = and i32 %844, 8192
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %863, label %849

; <label>:849                                     ; preds = %835
  %850 = extractvalue %dx.types.ResRet.f32 %840, 2
  %851 = select i1 %846, float %850, float %841
  %852 = extractvalue %dx.types.ResRet.f32 %840, 0
  %853 = select i1 %846, float %852, float %841
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = lshr i32 %855, 16
  %857 = and i32 %856, 255
  %858 = uitofp i32 %857 to float
  %859 = fmul fast float %858, 0x3F80101020000000
  %860 = fmul fast float %859, %853
  %861 = fmul fast float %859, %841
  %862 = fmul fast float %859, %851
  br label %863

; <label>:863                                     ; preds = %849, %835
  %864 = phi float [ %860, %849 ], [ 0.000000e+00, %835 ]
  %865 = phi float [ %861, %849 ], [ 0.000000e+00, %835 ]
  %866 = phi float [ %862, %849 ], [ 0.000000e+00, %835 ]
  %867 = and i32 %844, 2048
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %877, label %869

; <label>:869                                     ; preds = %863
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = shl i32 %871, 4
  %873 = and i32 %872, 32752
  %874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %873)  ; LegacyF16ToF32(value)
  %875 = fmul fast float %874, %842
  %876 = call float @dx.op.binary.f32(i32 35, float %875, float 0x3F70101020000000)  ; FMax(a,b)
  br label %877

; <label>:877                                     ; preds = %869, %863, %807
  %878 = phi float [ %864, %869 ], [ %864, %863 ], [ 0.000000e+00, %807 ]
  %879 = phi float [ %865, %869 ], [ %865, %863 ], [ 0.000000e+00, %807 ]
  %880 = phi float [ %866, %869 ], [ %866, %863 ], [ 0.000000e+00, %807 ]
  %881 = phi float [ %876, %869 ], [ 0x3F70101020000000, %863 ], [ 0x3F70101020000000, %807 ]
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 255
  %885 = uitofp i32 %884 to float
  %886 = lshr i32 %883, 8
  %887 = and i32 %886, 255
  %888 = uitofp i32 %887 to float
  %889 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = fmul fast float %888, %889
  %891 = fadd fast float %890, %885
  %892 = fmul fast float %891, 0x3F70101020000000
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  br label %894

; <label>:894                                     ; preds = %877, %273
  %895 = phi float [ 0.000000e+00, %273 ], [ %727, %877 ]
  %896 = phi float [ 0.000000e+00, %273 ], [ %728, %877 ]
  %897 = phi float [ 0.000000e+00, %273 ], [ %649, %877 ]
  %898 = phi float [ 0.000000e+00, %273 ], [ %650, %877 ]
  %899 = phi float [ 0.000000e+00, %273 ], [ %651, %877 ]
  %900 = phi float [ 0.000000e+00, %273 ], [ %772, %877 ]
  %901 = phi float [ 0.000000e+00, %273 ], [ %773, %877 ]
  %902 = phi float [ 0.000000e+00, %273 ], [ %774, %877 ]
  %903 = phi float [ 0.000000e+00, %273 ], [ %878, %877 ]
  %904 = phi float [ 0.000000e+00, %273 ], [ %879, %877 ]
  %905 = phi float [ 0.000000e+00, %273 ], [ %880, %877 ]
  %906 = phi float [ 0.000000e+00, %273 ], [ %828, %877 ]
  %907 = phi float [ 0.000000e+00, %273 ], [ %829, %877 ]
  %908 = phi float [ 0.000000e+00, %273 ], [ %830, %877 ]
  %909 = phi float [ 0.000000e+00, %273 ], [ %636, %877 ]
  %910 = phi float [ 0.000000e+00, %273 ], [ %437, %877 ]
  %911 = phi float [ 0.000000e+00, %273 ], [ %726, %877 ]
  %912 = phi float [ 0.000000e+00, %273 ], [ %729, %877 ]
  %913 = phi float [ 0.000000e+00, %273 ], [ %881, %877 ]
  %914 = phi float [ 0.000000e+00, %273 ], [ %893, %877 ]
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 0
  %917 = call float @dx.op.dot2.f32(i32 54, float %895, float %896, float %895, float %896)  ; Dot2(ax,ay,bx,by)
  %918 = fmul fast float %917, 0x3FE3333340000000
  %919 = fsub fast float 1.000000e+00, %918
  %920 = call float @dx.op.dot3.f32(i32 55, float %895, float %896, float %919, float %895, float %896, float %919)  ; Dot3(ax,ay,az,bx,by,bz)
  %921 = call float @dx.op.unary.f32(i32 25, float %920)  ; Rsqrt(value)
  %922 = fmul fast float %921, %895
  %923 = fmul fast float %921, %896
  %924 = fmul fast float %919, %921
  %925 = fmul fast float %924, %98
  %926 = fmul fast float %924, %99
  %927 = fmul fast float %924, %100
  %928 = fmul fast float %922, %101
  %929 = fmul fast float %922, %102
  %930 = fmul fast float %922, %103
  %931 = fadd fast float %925, %928
  %932 = fadd fast float %926, %929
  %933 = fadd fast float %927, %930
  %934 = fmul fast float %923, %114
  %935 = fmul fast float %923, %115
  %936 = fmul fast float %923, %116
  %937 = fadd fast float %931, %934
  %938 = fadd fast float %932, %935
  %939 = fadd fast float %933, %936
  %940 = call float @dx.op.dot3.f32(i32 55, float %937, float %938, float %939, float %937, float %938, float %939)  ; Dot3(ax,ay,az,bx,by,bz)
  %941 = call float @dx.op.unary.f32(i32 25, float %940)  ; Rsqrt(value)
  %942 = fmul fast float %937, %941
  %943 = fmul fast float %938, %941
  %944 = fmul fast float %939, %941
  %945 = call float @dx.op.unary.f32(i32 83, float %150)  ; DerivCoarseX(value)
  %946 = call float @dx.op.unary.f32(i32 83, float %151)  ; DerivCoarseX(value)
  %947 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %948 = call float @dx.op.unary.f32(i32 84, float %150)  ; DerivCoarseY(value)
  %949 = call float @dx.op.unary.f32(i32 84, float %151)  ; DerivCoarseY(value)
  %950 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %951 = fadd fast float %945, %150
  %952 = fadd fast float %946, %151
  %953 = fadd fast float %947, %152
  %954 = fadd fast float %948, %150
  %955 = fadd fast float %949, %151
  %956 = fadd fast float %950, %152
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %964 = fmul fast float %958, %95
  %965 = fmul fast float %964, %962
  %966 = fmul fast float %959, %96
  %967 = fmul fast float %966, %963
  %968 = fptoui float %965 to i32
  %969 = fptoui float %967 to i32
  %970 = fadd fast float %958, -1.000000e+00
  %971 = fadd fast float %959, -1.000000e+00
  %972 = fptoui float %970 to i32
  %973 = fptoui float %971 to i32
  %974 = call i32 @dx.op.binary.i32(i32 40, i32 %968, i32 %972)  ; UMin(a,b)
  %975 = call i32 @dx.op.binary.i32(i32 40, i32 %969, i32 %973)  ; UMin(a,b)
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %978 = extractvalue %dx.types.CBufRet.f32 %976, 3
  %979 = fmul fast float %977, %83
  %980 = fsub fast float %979, %978
  %981 = fadd fast float %960, -1.000000e+00
  %982 = call float @dx.op.binary.f32(i32 36, float %980, float %981)  ; FMin(a,b)
  %983 = fptoui float %982 to i32
  %984 = fptoui float %958 to i32
  %985 = fptoui float %959 to i32
  %986 = mul i32 %983, %985
  %987 = add i32 %986, %975
  %988 = mul i32 %987, %984
  %989 = add i32 %988, %974
  %990 = shl i32 %989, 2
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = and i32 %992, 1023
  %994 = lshr i32 %992, 10
  %995 = icmp eq i32 %993, 0
  br i1 %995, label %1499, label %996

; <label>:996                                     ; preds = %894
  %997 = and i32 %992, 1023
  br label %998

; <label>:998                                     ; preds = %1130, %996
  %999 = phi i32 [ %1080, %1130 ], [ 0, %996 ]
  %1000 = phi float [ %1131, %1130 ], [ 0.000000e+00, %996 ]
  %1001 = phi float [ %1132, %1130 ], [ %916, %996 ]
  %1002 = phi float [ %1133, %1130 ], [ %914, %996 ]
  %1003 = phi float [ %1134, %1130 ], [ %906, %996 ]
  %1004 = phi float [ %1135, %1130 ], [ %907, %996 ]
  %1005 = phi float [ %1136, %1130 ], [ %908, %996 ]
  %1006 = phi float [ %1137, %1130 ], [ 0.000000e+00, %996 ]
  %1007 = phi float [ %1138, %1130 ], [ 0.000000e+00, %996 ]
  %1008 = phi float [ %1139, %1130 ], [ %903, %996 ]
  %1009 = phi float [ %1140, %1130 ], [ %904, %996 ]
  %1010 = phi float [ %1141, %1130 ], [ %905, %996 ]
  %1011 = phi float [ %1142, %1130 ], [ %900, %996 ]
  %1012 = phi float [ %1143, %1130 ], [ %901, %996 ]
  %1013 = phi float [ %1144, %1130 ], [ %902, %996 ]
  %1014 = phi float [ %1145, %1130 ], [ %942, %996 ]
  %1015 = phi float [ %1146, %1130 ], [ %943, %996 ]
  %1016 = phi float [ %1147, %1130 ], [ %944, %996 ]
  %1017 = phi float [ %1148, %1130 ], [ %912, %996 ]
  %1018 = phi float [ %1149, %1130 ], [ %911, %996 ]
  %1019 = phi float [ %1150, %1130 ], [ 0.000000e+00, %996 ]
  %1020 = phi float [ %1151, %1130 ], [ %909, %996 ]
  %1021 = phi float [ %1152, %1130 ], [ %897, %996 ]
  %1022 = phi float [ %1153, %1130 ], [ %898, %996 ]
  %1023 = phi float [ %1154, %1130 ], [ %899, %996 ]
  %1024 = add nuw nsw i32 %999, %994
  %1025 = shl i32 %1024, 2
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %43, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = shl i32 %1027, 8
  %1029 = or i32 %1028, 48
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1035 = or i32 %1028, 64
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = extractvalue %dx.types.ResRet.i32 %1036, 1
  %1039 = or i32 %1028, 80
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 3
  %1043 = or i32 %1028, 96
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = extractvalue %dx.types.ResRet.f32 %1044, 3
  %1049 = or i32 %1028, 112
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1052 = or i32 %1028, 128
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = extractvalue %dx.types.ResRet.f32 %1053, 3
  %1058 = or i32 %1028, 144
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.ResRet.f32 %1059, 3
  %1064 = or i32 %1028, 160
  %1065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = extractvalue %dx.types.ResRet.f32 %1065, 3
  %1070 = or i32 %1028, 192
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %44, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = or i32 %1028, 208
  %1074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = or i32 %1028, 248
  %1077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = add nuw nsw i32 %999, 1
  %1081 = bitcast float %1034 to i32
  %1082 = and i32 %1081, 512
  %1083 = icmp eq i32 %1082, 0
  %1084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = extractvalue %dx.types.ResRet.f32 %1084, 3
  %1089 = call float @dx.op.dot4.f32(i32 56, float %1085, float %1086, float %1087, float %1088, float %150, float %151, float %152, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1090 = or i32 %1028, 16
  %1091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = extractvalue %dx.types.ResRet.f32 %1091, 3
  %1096 = call float @dx.op.dot4.f32(i32 56, float %1092, float %1093, float %1094, float %1095, float %150, float %151, float %152, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1097 = or i32 %1028, 32
  %1098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %44, i32 %1097, i32 undef)  ; BufferLoad(srv,index,wot)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.ResRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.ResRet.f32 %1098, 2
  %1102 = extractvalue %dx.types.ResRet.f32 %1098, 3
  %1103 = call float @dx.op.dot4.f32(i32 56, float %1099, float %1100, float %1101, float %1102, float %150, float %151, float %152, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1104 = call float @dx.op.unary.f32(i32 27, float %1089)  ; Round_ni(value)
  %1105 = call float @dx.op.unary.f32(i32 6, float %1104)  ; FAbs(value)
  %1106 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1107 = call float @dx.op.unary.f32(i32 6, float %1106)  ; FAbs(value)
  %1108 = call float @dx.op.unary.f32(i32 6, float %1103)  ; FAbs(value)
  %1109 = call float @dx.op.unary.f32(i32 27, float %1108)  ; Round_ni(value)
  %1110 = fadd fast float %1107, %1105
  %1111 = fadd fast float %1110, %1109
  %1112 = fcmp fast oeq float %1111, 0.000000e+00
  %1113 = call float @dx.op.dot4.f32(i32 56, float %1085, float %1086, float %1087, float %1088, float %951, float %952, float %953, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1114 = call float @dx.op.dot4.f32(i32 56, float %1092, float %1093, float %1094, float %1095, float %951, float %952, float %953, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1115 = call float @dx.op.dot4.f32(i32 56, float %1085, float %1086, float %1087, float %1088, float %954, float %955, float %956, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1116 = call float @dx.op.dot4.f32(i32 56, float %1092, float %1093, float %1094, float %1095, float %954, float %955, float %956, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1117 = fsub fast float %1113, %1089
  %1118 = fsub fast float %1115, %1089
  %1119 = fsub fast float %1114, %1096
  %1120 = fsub fast float %1116, %1096
  %1121 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1032, float %1033, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 2
  %1124 = fadd fast float %1123, %1121
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1127 = fcmp fast ogt float %1125, %1126
  %1128 = and i1 %1112, %1127
  %1129 = and i1 %1083, %1128
  br i1 %1129, label %1156, label %1130

; <label>:1130                                    ; preds = %1485, %1237, %1156, %998
  %1131 = phi float [ %1000, %1156 ], [ %1240, %1237 ], [ %1240, %1485 ], [ %1000, %998 ]
  %1132 = phi float [ %1001, %1156 ], [ %1001, %1237 ], [ %1461, %1485 ], [ %1001, %998 ]
  %1133 = phi float [ %1002, %1156 ], [ %1002, %1237 ], [ %1459, %1485 ], [ %1002, %998 ]
  %1134 = phi float [ %1003, %1156 ], [ %1003, %1237 ], [ %1437, %1485 ], [ %1003, %998 ]
  %1135 = phi float [ %1004, %1156 ], [ %1004, %1237 ], [ %1438, %1485 ], [ %1004, %998 ]
  %1136 = phi float [ %1005, %1156 ], [ %1005, %1237 ], [ %1439, %1485 ], [ %1005, %998 ]
  %1137 = phi float [ %1006, %1156 ], [ %1006, %1237 ], [ %1364, %1485 ], [ %1006, %998 ]
  %1138 = phi float [ %1007, %1156 ], [ %1007, %1237 ], [ %1362, %1485 ], [ %1007, %998 ]
  %1139 = phi float [ %1008, %1156 ], [ %1008, %1237 ], [ %1407, %1485 ], [ %1008, %998 ]
  %1140 = phi float [ %1009, %1156 ], [ %1009, %1237 ], [ %1408, %1485 ], [ %1009, %998 ]
  %1141 = phi float [ %1010, %1156 ], [ %1010, %1237 ], [ %1409, %1485 ], [ %1010, %998 ]
  %1142 = phi float [ %1011, %1156 ], [ %1011, %1237 ], [ %1495, %1485 ], [ %1011, %998 ]
  %1143 = phi float [ %1012, %1156 ], [ %1012, %1237 ], [ %1496, %1485 ], [ %1012, %998 ]
  %1144 = phi float [ %1013, %1156 ], [ %1013, %1237 ], [ %1497, %1485 ], [ %1013, %998 ]
  %1145 = phi float [ %1014, %1156 ], [ %1014, %1237 ], [ %1343, %1485 ], [ %1014, %998 ]
  %1146 = phi float [ %1015, %1156 ], [ %1015, %1237 ], [ %1344, %1485 ], [ %1015, %998 ]
  %1147 = phi float [ %1016, %1156 ], [ %1016, %1237 ], [ %1345, %1485 ], [ %1016, %998 ]
  %1148 = phi float [ %1017, %1156 ], [ %1017, %1237 ], [ %1417, %1485 ], [ %1017, %998 ]
  %1149 = phi float [ %1018, %1156 ], [ %1018, %1237 ], [ %1414, %1485 ], [ %1018, %998 ]
  %1150 = phi float [ %1019, %1156 ], [ %1019, %1237 ], [ %1411, %1485 ], [ %1019, %998 ]
  %1151 = phi float [ %1020, %1156 ], [ %1020, %1237 ], [ %1360, %1485 ], [ %1020, %998 ]
  %1152 = phi float [ %1021, %1156 ], [ %1021, %1237 ], [ %1355, %1485 ], [ %1021, %998 ]
  %1153 = phi float [ %1022, %1156 ], [ %1022, %1237 ], [ %1356, %1485 ], [ %1022, %998 ]
  %1154 = phi float [ %1023, %1156 ], [ %1023, %1237 ], [ %1357, %1485 ], [ %1023, %998 ]
  %1155 = icmp eq i32 %1080, %997
  br i1 %1155, label %1498, label %998

; <label>:1156                                    ; preds = %998
  %1157 = extractvalue %dx.types.ResRet.f32 %1050, 3
  %1158 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1159 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1162 = extractvalue %dx.types.ResRet.i32 %1036, 3
  %1163 = extractvalue %dx.types.ResRet.i32 %1036, 2
  %1164 = add i32 %1162, 0
  %1165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1164, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1167 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1165, %dx.types.Handle %1166, float %1089, float %1096, float undef, float undef, i32 0, i32 0, i32 undef, float %1117, float %1119, float undef, float %1118, float %1120, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = fmul fast float %1168, %1161
  %1170 = fadd fast float %1169, %1160
  %1171 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1172 = fmul fast float %1089, %1045
  %1173 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %1096, float %1172)  ; FMad(a,b,c)
  %1174 = fadd fast float %1173, %1159
  %1175 = fmul fast float %1089, %1047
  %1176 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %1096, float %1175)  ; FMad(a,b,c)
  %1177 = fadd fast float %1176, %1158
  %1178 = fmul fast float %1117, %1045
  %1179 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %1119, float %1178)  ; FMad(a,b,c)
  %1180 = fmul fast float %1117, %1047
  %1181 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %1119, float %1180)  ; FMad(a,b,c)
  %1182 = fmul fast float %1118, %1045
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %1120, float %1182)  ; FMad(a,b,c)
  %1184 = fmul fast float %1118, %1047
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %1048, float %1120, float %1184)  ; FMad(a,b,c)
  %1186 = add i32 %1163, 0
  %1187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1186, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1188 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1187, %dx.types.Handle %1166, float %1174, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float %1179, float %1181, float undef, float %1183, float %1185, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = and i32 %1081, 1024
  %1191 = icmp ne i32 %1190, 0
  %1192 = fcmp fast ogt float %1189, 0x3FE0101020000000
  %1193 = uitofp i1 %1192 to float
  %1194 = select i1 %1191, float %1193, float %1189
  %1195 = and i32 %1081, 8192
  %1196 = icmp ne i32 %1195, 0
  %1197 = select i1 %1196, float %1157, float 1.000000e+00
  %1198 = fmul fast float %1089, 2.000000e+00
  %1199 = fadd fast float %1198, -1.000000e+00
  %1200 = call float @dx.op.unary.f32(i32 6, float %1199)  ; FAbs(value)
  %1201 = fmul fast float %1200, %1078
  %1202 = fsub fast float %1201, %1078
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1204 = fmul fast float %1096, 2.000000e+00
  %1205 = fadd fast float %1204, -1.000000e+00
  %1206 = call float @dx.op.unary.f32(i32 6, float %1205)  ; FAbs(value)
  %1207 = fmul fast float %1206, %1079
  %1208 = fsub fast float %1207, %1079
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1108, %1041
  %1211 = fsub fast float %1210, %1041
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1213 = fmul fast float %1171, %1197
  %1214 = fmul fast float %1213, %1168
  %1215 = fmul fast float %1214, %1203
  %1216 = fmul fast float %1215, %1194
  %1217 = fmul fast float %1216, %1209
  %1218 = fmul fast float %1217, %1212
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1222 = fsub fast float %1125, %1221
  %1223 = fmul fast float %1222, %1220
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1225 = fmul fast float %1218, %1042
  %1226 = fadd fast float %1218, %1042
  %1227 = fmul fast float %1226, %1051
  %1228 = fsub fast float %1227, %1051
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = and i32 %1081, 128
  %1231 = icmp ne i32 %1230, 0
  %1232 = select i1 %1231, float %1229, float %1225
  %1233 = fmul fast float %1232, %1224
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 0
  %1236 = fcmp fast ugt float %1233, %1235
  br i1 %1236, label %1237, label %1130

; <label>:1237                                    ; preds = %1156
  %1238 = select i1 %1196, float %1233, float 0.000000e+00
  %1239 = fadd fast float %1238, %1000
  %1240 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  br i1 %1196, label %1130, label %1241

; <label>:1241                                    ; preds = %1237
  %1242 = and i32 %1081, 4
  %1243 = and i32 %1081, 8
  %1244 = add i32 %1037, 0
  %1245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1244, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1245, %dx.types.Handle %1246, float %1174, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float %1179, float %1181, float undef, float %1183, float %1185, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = extractvalue %dx.types.ResRet.f32 %1247, 3
  %1252 = bitcast float %1063 to i32
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = lshr i32 %1252, 8
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1251, %1254
  %1259 = fadd fast float %1258, %1257
  %1260 = fmul fast float %1259, 0x3F70101000000000
  %1261 = add i32 %1038, 0
  %1262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1261, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1263 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1262, %dx.types.Handle %1246, float %1174, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float %1179, float %1181, float undef, float %1183, float %1185, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1264 = extractvalue %dx.types.ResRet.f32 %1263, 0
  %1265 = extractvalue %dx.types.ResRet.f32 %1263, 1
  %1266 = extractvalue %dx.types.ResRet.f32 %1263, 2
  %1267 = extractvalue %dx.types.ResRet.f32 %1263, 3
  %1268 = bitcast float %1057 to i32
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = lshr i32 %1268, 8
  %1272 = and i32 %1271, 255
  %1273 = uitofp i32 %1272 to float
  %1274 = lshr i32 %1268, 16
  %1275 = and i32 %1274, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101000000000
  %1278 = fmul fast float %1264, %1270
  %1279 = fadd fast float %1278, %1273
  %1280 = fmul fast float %1279, 0x3F70101000000000
  %1281 = fadd fast float %1265, -5.000000e-01
  %1282 = fadd fast float %1267, -5.000000e-01
  %1283 = fmul fast float %1281, %1277
  %1284 = fmul fast float %1282, %1277
  %1285 = fadd fast float %1283, 5.000000e-01
  %1286 = fadd fast float %1284, 5.000000e-01
  %1287 = fmul fast float %1248, %1066
  %1288 = fmul fast float %1249, %1067
  %1289 = fmul fast float %1250, %1068
  %1290 = fmul fast float %1285, 2.000000e+00
  %1291 = fadd fast float %1290, -1.000000e+00
  %1292 = fmul fast float %1286, 2.000000e+00
  %1293 = fadd fast float %1292, -1.000000e+00
  %1294 = fadd fast float %1291, %1293
  %1295 = fmul fast float %1294, 5.000000e-01
  %1296 = fsub fast float %1291, %1293
  %1297 = fmul fast float %1296, 5.000000e-01
  %1298 = call float @dx.op.unary.f32(i32 6, float %1295)  ; FAbs(value)
  %1299 = fsub fast float 1.000000e+00, %1298
  %1300 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1301 = fsub fast float %1299, %1300
  %1302 = call float @dx.op.dot3.f32(i32 55, float %1295, float %1297, float %1301, float %1295, float %1297, float %1301)  ; Dot3(ax,ay,az,bx,by,bz)
  %1303 = call float @dx.op.unary.f32(i32 25, float %1302)  ; Rsqrt(value)
  %1304 = fmul fast float %1295, %1303
  %1305 = fmul fast float %1297, %1303
  %1306 = fmul fast float %1303, %1301
  %1307 = fmul fast float %1306, %1031
  %1308 = fmul fast float %1306, %1032
  %1309 = fmul fast float %1306, %1033
  %1310 = fmul fast float %1304, %1054
  %1311 = fmul fast float %1304, %1055
  %1312 = fmul fast float %1304, %1056
  %1313 = fadd fast float %1310, %1307
  %1314 = fadd fast float %1311, %1308
  %1315 = fadd fast float %1312, %1309
  %1316 = fmul fast float %1305, %1060
  %1317 = fmul fast float %1305, %1061
  %1318 = fmul fast float %1305, %1062
  %1319 = fadd fast float %1313, %1316
  %1320 = fadd fast float %1314, %1317
  %1321 = fadd fast float %1315, %1318
  %1322 = call float @dx.op.dot3.f32(i32 55, float %1319, float %1320, float %1321, float %1319, float %1320, float %1321)  ; Dot3(ax,ay,az,bx,by,bz)
  %1323 = call float @dx.op.unary.f32(i32 25, float %1322)  ; Rsqrt(value)
  %1324 = fmul fast float %1319, %1323
  %1325 = fmul fast float %1320, %1323
  %1326 = fmul fast float %1321, %1323
  %1327 = icmp ne i32 %1243, 0
  %1328 = select i1 %1327, float 1.000000e+00, float 0.000000e+00
  %1329 = fmul fast float %1233, %1328
  %1330 = and i32 %1081, 1
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1332, label %1336

; <label>:1332                                    ; preds = %1241
  %1333 = fsub fast float %1324, %1014
  %1334 = fsub fast float %1325, %1015
  %1335 = fsub fast float %1326, %1016
  br label %1336

; <label>:1336                                    ; preds = %1332, %1241
  %1337 = phi float [ %1333, %1332 ], [ %1324, %1241 ]
  %1338 = phi float [ %1334, %1332 ], [ %1325, %1241 ]
  %1339 = phi float [ %1335, %1332 ], [ %1326, %1241 ]
  %1340 = fmul float %1339, %1329
  %1341 = fmul float %1338, %1329
  %1342 = fmul float %1337, %1329
  %1343 = fadd fast float %1342, %1014
  %1344 = fadd fast float %1341, %1015
  %1345 = fadd fast float %1340, %1016
  %1346 = icmp ne i32 %1242, 0
  %1347 = select i1 %1346, float 1.000000e+00, float 0.000000e+00
  %1348 = fmul fast float %1233, %1347
  %1349 = fsub fast float %1287, %1021
  %1350 = fsub fast float %1288, %1022
  %1351 = fsub fast float %1289, %1023
  %1352 = fmul fast float %1349, %1348
  %1353 = fmul fast float %1350, %1348
  %1354 = fmul fast float %1351, %1348
  %1355 = fadd fast float %1352, %1021
  %1356 = fadd fast float %1353, %1022
  %1357 = fadd fast float %1354, %1023
  %1358 = fsub fast float %1260, %1020
  %1359 = fmul fast float %1358, %1348
  %1360 = fadd fast float %1359, %1020
  %1361 = fmul fast float %1348, %1007
  %1362 = fsub fast float %1007, %1361
  %1363 = fmul fast float %1348, %1006
  %1364 = fsub fast float %1006, %1363
  %1365 = bitcast float %1075 to i32
  %1366 = lshr i32 %1365, 16
  %1367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1366)  ; LegacyF16ToF32(value)
  %1368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.i32 %1368, 0
  %1370 = and i32 %1369, 1
  %1371 = icmp eq i32 %1370, 0
  br i1 %1371, label %1372, label %1397

; <label>:1372                                    ; preds = %1336
  %1373 = fadd fast float %1260, 0xBFB99999A0000000
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = fmul fast float %1374, 0x3FF1C71C80000000
  %1376 = fsub fast float 1.000000e+00, %1375
  %1377 = call float @dx.op.unary.f32(i32 7, float %1376)  ; Saturate(value)
  %1378 = fmul fast float %1377, %1287
  %1379 = fmul fast float %1377, %1288
  %1380 = fmul fast float %1377, %1289
  %1381 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1382 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1383 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1384 = call float @dx.op.binary.f32(i32 35, float %1382, float %1383)  ; FMax(a,b)
  %1385 = call float @dx.op.binary.f32(i32 35, float %1381, float %1384)  ; FMax(a,b)
  %1386 = fcmp fast ogt float %1385, 0.000000e+00
  %1387 = bitcast float %1385 to i32
  %1388 = sub nsw i32 2129859010, %1387
  %1389 = bitcast i32 %1388 to float
  %1390 = select i1 %1386, float %1389, float 0.000000e+00
  %1391 = fmul fast float %1381, %1367
  %1392 = fmul fast float %1382, %1367
  %1393 = fmul fast float %1383, %1367
  %1394 = fmul fast float %1391, %1390
  %1395 = fmul fast float %1392, %1390
  %1396 = fmul fast float %1393, %1390
  br label %1397

; <label>:1397                                    ; preds = %1372, %1336
  %1398 = phi float [ %1367, %1336 ], [ %1394, %1372 ]
  %1399 = phi float [ %1367, %1336 ], [ %1395, %1372 ]
  %1400 = phi float [ %1367, %1336 ], [ %1396, %1372 ]
  %1401 = fsub fast float %1398, %1008
  %1402 = fsub fast float %1399, %1009
  %1403 = fsub fast float %1400, %1010
  %1404 = fmul fast float %1401, %1348
  %1405 = fmul fast float %1402, %1348
  %1406 = fmul fast float %1403, %1348
  %1407 = fadd fast float %1404, %1008
  %1408 = fadd fast float %1405, %1009
  %1409 = fadd fast float %1406, %1010
  %1410 = fadd fast float %1233, %1019
  %1411 = call float @dx.op.unary.f32(i32 7, float %1410)  ; Saturate(value)
  %1412 = fsub fast float %1280, %1018
  %1413 = fmul fast float %1412, %1329
  %1414 = fadd fast float %1413, %1018
  %1415 = fsub fast float %1266, %1017
  %1416 = fmul fast float %1415, %1329
  %1417 = fadd fast float %1416, %1017
  br i1 %1331, label %1426, label %1418

; <label>:1418                                    ; preds = %1397
  %1419 = and i32 %1081, 32768
  %1420 = icmp eq i32 %1419, 0
  br i1 %1420, label %1436, label %1421

; <label>:1421                                    ; preds = %1418
  %1422 = fmul fast float %1329, 1.270000e+02
  %1423 = fadd fast float %1422, %1003
  %1424 = fadd fast float %1422, %1004
  %1425 = fadd fast float %1422, %1005
  br label %1436

; <label>:1426                                    ; preds = %1397
  %1427 = fsub fast float 1.270000e+02, %1003
  %1428 = fsub fast float 1.270000e+02, %1004
  %1429 = fsub fast float 1.270000e+02, %1005
  %1430 = fmul fast float %1329, %1427
  %1431 = fmul fast float %1329, %1428
  %1432 = fmul fast float %1329, %1429
  %1433 = fadd fast float %1430, %1003
  %1434 = fadd fast float %1431, %1004
  %1435 = fadd fast float %1432, %1005
  br label %1436

; <label>:1436                                    ; preds = %1426, %1421, %1418
  %1437 = phi float [ %1423, %1421 ], [ %1003, %1418 ], [ %1433, %1426 ]
  %1438 = phi float [ %1424, %1421 ], [ %1004, %1418 ], [ %1434, %1426 ]
  %1439 = phi float [ %1425, %1421 ], [ %1005, %1418 ], [ %1435, %1426 ]
  %1440 = call float @dx.op.dot3.f32(i32 55, float %1287, float %1288, float %1289, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.CBufRet.f32 %1441, 1
  %1444 = fmul fast float %1443, %1440
  %1445 = fadd fast float %1444, %1442
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1447 = bitcast float %1069 to i32
  %1448 = and i32 %1447, 65535
  %1449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1448)  ; LegacyF16ToF32(value)
  %1450 = lshr i32 %1447, 16
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = fcmp fast oge float %1449, 0.000000e+00
  %1453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.f32 %1453, 0
  %1455 = select i1 %1452, float %1449, float %1454
  %1456 = fadd fast float %1455, %1451
  %1457 = fsub fast float %1446, %1002
  %1458 = fmul fast float %1457, %1233
  %1459 = fadd fast float %1458, %1002
  %1460 = fmul fast float %1456, %1233
  %1461 = call float @dx.op.binary.f32(i32 35, float %1001, float %1460)  ; FMax(a,b)
  %1462 = and i32 %1081, 16
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1485, label %1464

; <label>:1464                                    ; preds = %1436
  %1465 = add i32 %1072, 0
  %1466 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1465, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1466, %dx.types.Handle %1246, float %1174, float %1177, float undef, float undef, i32 0, i32 0, i32 undef, float %1179, float %1181, float undef, float %1183, float %1185, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = and i32 %1365, 65535
  %1472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1471)  ; LegacyF16ToF32(value)
  %1473 = fmul fast float %1468, %1066
  %1474 = fmul fast float %1469, %1067
  %1475 = fmul fast float %1470, %1068
  %1476 = and i32 %1081, 16384
  %1477 = icmp ne i32 %1476, 0
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 0
  %1480 = select i1 %1477, float %1479, float 1.000000e+00
  %1481 = fmul fast float %1480, %1472
  %1482 = fmul fast float %1473, %1481
  %1483 = fmul fast float %1474, %1481
  %1484 = fmul fast float %1475, %1481
  br label %1485

; <label>:1485                                    ; preds = %1464, %1436
  %1486 = phi float [ %1482, %1464 ], [ 0.000000e+00, %1436 ]
  %1487 = phi float [ %1483, %1464 ], [ 0.000000e+00, %1436 ]
  %1488 = phi float [ %1484, %1464 ], [ 0.000000e+00, %1436 ]
  %1489 = fsub fast float %1486, %1011
  %1490 = fsub fast float %1487, %1012
  %1491 = fsub fast float %1488, %1013
  %1492 = fmul fast float %1489, %1233
  %1493 = fmul fast float %1490, %1233
  %1494 = fmul fast float %1491, %1233
  %1495 = fadd fast float %1492, %1011
  %1496 = fadd fast float %1493, %1012
  %1497 = fadd fast float %1494, %1013
  br label %1130

; <label>:1498                                    ; preds = %1130
  br label %1499

; <label>:1499                                    ; preds = %1498, %894
  %1500 = phi float [ 0.000000e+00, %894 ], [ %1131, %1498 ]
  %1501 = phi float [ %916, %894 ], [ %1132, %1498 ]
  %1502 = phi float [ %914, %894 ], [ %1133, %1498 ]
  %1503 = phi float [ %906, %894 ], [ %1134, %1498 ]
  %1504 = phi float [ %907, %894 ], [ %1135, %1498 ]
  %1505 = phi float [ %908, %894 ], [ %1136, %1498 ]
  %1506 = phi float [ 0.000000e+00, %894 ], [ %1137, %1498 ]
  %1507 = phi float [ 0.000000e+00, %894 ], [ %1138, %1498 ]
  %1508 = phi float [ %903, %894 ], [ %1139, %1498 ]
  %1509 = phi float [ %904, %894 ], [ %1140, %1498 ]
  %1510 = phi float [ %905, %894 ], [ %1141, %1498 ]
  %1511 = phi float [ %900, %894 ], [ %1142, %1498 ]
  %1512 = phi float [ %901, %894 ], [ %1143, %1498 ]
  %1513 = phi float [ %902, %894 ], [ %1144, %1498 ]
  %1514 = phi float [ %942, %894 ], [ %1145, %1498 ]
  %1515 = phi float [ %943, %894 ], [ %1146, %1498 ]
  %1516 = phi float [ %944, %894 ], [ %1147, %1498 ]
  %1517 = phi float [ %912, %894 ], [ %1148, %1498 ]
  %1518 = phi float [ %911, %894 ], [ %1149, %1498 ]
  %1519 = phi float [ 0.000000e+00, %894 ], [ %1150, %1498 ]
  %1520 = phi float [ %909, %894 ], [ %1151, %1498 ]
  %1521 = phi float [ %897, %894 ], [ %1152, %1498 ]
  %1522 = phi float [ %898, %894 ], [ %1153, %1498 ]
  %1523 = phi float [ %899, %894 ], [ %1154, %1498 ]
  %1524 = call float @dx.op.dot3.f32(i32 55, float %1514, float %1515, float %1516, float %1514, float %1515, float %1516)  ; Dot3(ax,ay,az,bx,by,bz)
  %1525 = call float @dx.op.unary.f32(i32 25, float %1524)  ; Rsqrt(value)
  %1526 = fmul fast float %1525, %1514
  %1527 = fmul fast float %1525, %1515
  %1528 = fmul fast float %1525, %1516
  %1529 = fadd fast float %1519, %910
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = call float @dx.op.dot3.f32(i32 55, float %1526, float %1527, float %1528, float %1526, float %1527, float %1528)  ; Dot3(ax,ay,az,bx,by,bz)
  %1532 = call float @dx.op.unary.f32(i32 25, float %1531)  ; Rsqrt(value)
  %1533 = fmul fast float %1532, %1526
  %1534 = fmul fast float %1532, %1527
  %1535 = fmul fast float %1532, %1528
  %1536 = fadd fast float %1520, 0xBFB99999A0000000
  %1537 = call float @dx.op.unary.f32(i32 7, float %1536)  ; Saturate(value)
  %1538 = fmul fast float %1537, 0x3FF1C71C80000000
  %1539 = call float @dx.op.binary.f32(i32 36, float %1520, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1540 = fsub fast float 1.000000e+00, %1538
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1542 = fmul fast float %1541, %1521
  %1543 = fmul fast float %1541, %1522
  %1544 = fmul fast float %1541, %1523
  %1545 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1546 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  %1547 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1548 = fmul fast float %1538, %1521
  %1549 = fmul fast float %1538, %1522
  %1550 = fmul fast float %1538, %1523
  %1551 = fadd fast float %1548, %1539
  %1552 = fadd fast float %1549, %1539
  %1553 = fadd fast float %1550, %1539
  %1554 = call float @dx.op.unary.f32(i32 7, float %1551)  ; Saturate(value)
  %1555 = call float @dx.op.unary.f32(i32 7, float %1552)  ; Saturate(value)
  %1556 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1557 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 1
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1576, label %1562

; <label>:1562                                    ; preds = %1499
  %1563 = call float @dx.op.binary.f32(i32 35, float %1546, float %1547)  ; FMax(a,b)
  %1564 = call float @dx.op.binary.f32(i32 35, float %1545, float %1563)  ; FMax(a,b)
  %1565 = fcmp fast ogt float %1564, 0.000000e+00
  %1566 = bitcast float %1564 to i32
  %1567 = sub nsw i32 2129859010, %1566
  %1568 = bitcast i32 %1567 to float
  %1569 = select i1 %1565, float %1568, float 0.000000e+00
  %1570 = fmul fast float %1545, %1508
  %1571 = fmul fast float %1546, %1509
  %1572 = fmul fast float %1547, %1510
  %1573 = fmul fast float %1570, %1569
  %1574 = fmul fast float %1571, %1569
  %1575 = fmul fast float %1572, %1569
  br label %1576

; <label>:1576                                    ; preds = %1562, %1499
  %1577 = phi float [ %1573, %1562 ], [ %1508, %1499 ]
  %1578 = phi float [ %1574, %1562 ], [ %1509, %1499 ]
  %1579 = phi float [ %1575, %1562 ], [ %1510, %1499 ]
  %1580 = call float @dx.op.binary.f32(i32 36, float %1503, float 1.270000e+02)  ; FMin(a,b)
  %1581 = call float @dx.op.binary.f32(i32 36, float %1504, float 1.270000e+02)  ; FMin(a,b)
  %1582 = call float @dx.op.binary.f32(i32 36, float %1505, float 1.270000e+02)  ; FMin(a,b)
  %1583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.i32 %1583, 3
  %1585 = and i32 %1584, 8
  %1586 = icmp ne i32 %1585, 0
  %1587 = call float @dx.op.binary.f32(i32 35, float %1545, float %1521)  ; FMax(a,b)
  %1588 = call float @dx.op.binary.f32(i32 35, float %1546, float %1521)  ; FMax(a,b)
  %1589 = call float @dx.op.binary.f32(i32 35, float %1547, float %1521)  ; FMax(a,b)
  %1590 = call float @dx.op.dot3.f32(i32 55, float %1545, float %1546, float %1547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1591 = select i1 %212, float %1521, float %1545
  %1592 = select i1 %212, float %1590, float %1546
  %1593 = select i1 %212, float 1.000000e+00, float %1547
  %1594 = select i1 %1586, float %1587, float %1591
  %1595 = select i1 %1586, float %1588, float %1592
  %1596 = select i1 %1586, float %1589, float %1593
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1577, float %1578, float %1579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = select i1 %212, float %1597, float %1577
  %1599 = select i1 %212, float %1597, float %1578
  %1600 = select i1 %212, float %1597, float %1579
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = add i32 %1602, 0
  %1604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1604, %dx.types.Handle %92, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.ResRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.ResRet.f32 %1605, 2
  %1609 = extractvalue %dx.types.ResRet.f32 %1605, 3
  %1610 = fmul fast float %1606, 2.000000e+00
  %1611 = fadd fast float %1610, -1.000000e+00
  %1612 = fmul fast float %1607, 2.000000e+00
  %1613 = fadd fast float %1612, -1.000000e+00
  %1614 = fmul fast float %1611, %101
  %1615 = fmul fast float %1611, %102
  %1616 = fmul fast float %1611, %103
  %1617 = fmul fast float %1613, %114
  %1618 = fmul fast float %1613, %115
  %1619 = fmul fast float %1613, %116
  %1620 = fadd fast float %1614, %1617
  %1621 = fadd fast float %1615, %1618
  %1622 = fadd fast float %1616, %1619
  %1623 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1621, float %1622, float %1620, float %1621, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %1624 = call float @dx.op.unary.f32(i32 25, float %1623)  ; Rsqrt(value)
  %1625 = fmul fast float %1620, %1624
  %1626 = fmul fast float %1621, %1624
  %1627 = fmul fast float %1622, %1624
  %1628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1629 = extractvalue %dx.types.ResRet.i32 %1628, 0
  %1630 = bitcast i32 %1629 to float
  %1631 = fmul fast float %1630, %1608
  %1632 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1633 = extractvalue %dx.types.ResRet.i32 %1628, 1
  %1634 = bitcast i32 %1633 to float
  %1635 = fmul fast float %1634, %1609
  %1636 = fmul fast float %1635, %1533
  %1637 = fmul fast float %1635, %1534
  %1638 = fmul fast float %1635, %1535
  %1639 = fadd fast float %1636, %1625
  %1640 = fadd fast float %1637, %1626
  %1641 = fadd fast float %1638, %1627
  %1642 = call float @dx.op.dot3.f32(i32 55, float %1639, float %1640, float %1641, float %1639, float %1640, float %1641)  ; Dot3(ax,ay,az,bx,by,bz)
  %1643 = call float @dx.op.unary.f32(i32 25, float %1642)  ; Rsqrt(value)
  %1644 = fmul fast float %1639, %1643
  %1645 = fmul fast float %1640, %1643
  %1646 = fmul fast float %1641, %1643
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.CBufRet.f32 %1647, 1
  %1650 = extractvalue %dx.types.CBufRet.f32 %1647, 2
  %1651 = fadd fast float %1648, %150
  %1652 = fadd fast float %1649, %151
  %1653 = fadd fast float %1650, %152
  %1654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1655 = extractvalue %dx.types.CBufRet.f32 %1654, 0
  %1656 = extractvalue %dx.types.CBufRet.f32 %1654, 1
  %1657 = fsub fast float %1651, %1655
  %1658 = fsub fast float %1652, %1656
  %1659 = fmul fast float %1657, %1657
  %1660 = fmul fast float %1658, %1658
  %1661 = fadd fast float %1659, %1660
  %1662 = call float @dx.op.unary.f32(i32 24, float %1661)  ; Sqrt(value)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1654, 2
  %1664 = fcmp fast olt float %1662, %1663
  br i1 %1664, label %1665, label %1732

; <label>:1665                                    ; preds = %1576
  %1666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1667 = extractvalue %dx.types.CBufRet.f32 %1666, 0
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 0
  %1670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.CBufRet.f32 %1666, 1
  %1673 = extractvalue %dx.types.CBufRet.f32 %1668, 1
  %1674 = extractvalue %dx.types.CBufRet.f32 %1670, 1
  %1675 = extractvalue %dx.types.CBufRet.f32 %1666, 3
  %1676 = extractvalue %dx.types.CBufRet.f32 %1668, 3
  %1677 = extractvalue %dx.types.CBufRet.f32 %1670, 3
  %1678 = fadd fast float %1675, %1651
  %1679 = fadd fast float %1676, %1652
  %1680 = fadd fast float %1677, %1653
  %1681 = fmul fast float %1678, %1667
  %1682 = call float @dx.op.tertiary.f32(i32 46, float %1679, float %1669, float %1681)  ; FMad(a,b,c)
  %1683 = call float @dx.op.tertiary.f32(i32 46, float %1680, float %1671, float %1682)  ; FMad(a,b,c)
  %1684 = fmul fast float %1678, %1672
  %1685 = call float @dx.op.tertiary.f32(i32 46, float %1679, float %1673, float %1684)  ; FMad(a,b,c)
  %1686 = call float @dx.op.tertiary.f32(i32 46, float %1680, float %1674, float %1685)  ; FMad(a,b,c)
  %1687 = fsub fast float %1683, %1675
  %1688 = fsub fast float %1686, %1676
  %1689 = fsub fast float %1687, %1655
  %1690 = fadd fast float %1689, %1663
  %1691 = fsub fast float %1688, %1656
  %1692 = fadd fast float %1691, %1663
  %1693 = extractvalue %dx.types.CBufRet.f32 %1654, 3
  %1694 = fmul fast float %1690, %1693
  %1695 = fmul fast float %1692, %1693
  %1696 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1697 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1698 = fsub fast float 1.000000e+00, %1696
  %1699 = fsub fast float 1.000000e+00, %1697
  %1700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %51, float %1698, float %1699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1701 = extractvalue %dx.types.ResRet.f32 %1700, 0
  %1702 = fcmp fast ugt float %1701, 0.000000e+00
  br i1 %1702, label %1703, label %2006

; <label>:1703                                    ; preds = %1665
  %1704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1705 = extractvalue %dx.types.CBufRet.f32 %1704, 2
  %1706 = fmul fast float %1705, %1701
  %1707 = extractvalue %dx.types.CBufRet.f32 %1704, 3
  %1708 = fadd fast float %1707, %1706
  %1709 = extractvalue %dx.types.CBufRet.f32 %1670, 2
  %1710 = fadd fast float %1708, %1677
  %1711 = fmul fast float %1683, %1671
  %1712 = call float @dx.op.tertiary.f32(i32 46, float %1686, float %1674, float %1711)  ; FMad(a,b,c)
  %1713 = call float @dx.op.tertiary.f32(i32 46, float %1710, float %1709, float %1712)  ; FMad(a,b,c)
  %1714 = fsub fast float %1713, %1677
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1717 = fsub fast float %1714, %1716
  %1718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %51, float %1698, float %1699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %51, float %1698, float %1699, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = fadd fast float %1723, %1719
  %1727 = fmul fast float %1726, 0x3F847AE140000000
  %1728 = fadd fast float %1724, %1720
  %1729 = fmul fast float %1728, 0x3F847AE140000000
  %1730 = fadd fast float %1725, %1721
  %1731 = fmul fast float %1730, 0x3F847AE140000000
  br label %2006

; <label>:1732                                    ; preds = %1576
  %1733 = and i32 %188, 1
  %1734 = icmp eq i32 %1733, 0
  br i1 %1734, label %2006, label %1735

; <label>:1735                                    ; preds = %1732
  %1736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1736, 0
  %1738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1739 = extractvalue %dx.types.CBufRet.f32 %1738, 0
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.CBufRet.f32 %1736, 1
  %1743 = extractvalue %dx.types.CBufRet.f32 %1738, 1
  %1744 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1745 = extractvalue %dx.types.CBufRet.f32 %1736, 3
  %1746 = extractvalue %dx.types.CBufRet.f32 %1738, 3
  %1747 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1748 = fadd fast float %1745, %1651
  %1749 = fadd fast float %1746, %1652
  %1750 = fadd fast float %1747, %1653
  %1751 = fmul fast float %1748, %1737
  %1752 = call float @dx.op.tertiary.f32(i32 46, float %1749, float %1739, float %1751)  ; FMad(a,b,c)
  %1753 = call float @dx.op.tertiary.f32(i32 46, float %1750, float %1741, float %1752)  ; FMad(a,b,c)
  %1754 = fmul fast float %1748, %1742
  %1755 = call float @dx.op.tertiary.f32(i32 46, float %1749, float %1743, float %1754)  ; FMad(a,b,c)
  %1756 = call float @dx.op.tertiary.f32(i32 46, float %1750, float %1744, float %1755)  ; FMad(a,b,c)
  %1757 = fsub fast float %1753, %1745
  %1758 = fsub fast float %1756, %1746
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 0
  %1761 = extractvalue %dx.types.CBufRet.f32 %1759, 1
  %1762 = extractvalue %dx.types.CBufRet.f32 %1759, 2
  %1763 = extractvalue %dx.types.CBufRet.f32 %1759, 3
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 3
  %1766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = extractvalue %dx.types.CBufRet.i32 %1766, 0
  %1768 = extractvalue %dx.types.CBufRet.i32 %1766, 1
  %1769 = udiv i32 %1768, %1767
  %1770 = fsub fast float %1757, %1760
  %1771 = fsub fast float %1758, %1761
  %1772 = call float @dx.op.binary.f32(i32 35, float %1770, float 0.000000e+00)  ; FMax(a,b)
  %1773 = call float @dx.op.binary.f32(i32 35, float %1771, float 0.000000e+00)  ; FMax(a,b)
  %1774 = call float @dx.op.binary.f32(i32 36, float %1772, float %1762)  ; FMin(a,b)
  %1775 = call float @dx.op.binary.f32(i32 36, float %1773, float %1763)  ; FMin(a,b)
  %1776 = add i32 %1767, -1
  %1777 = add i32 %1769, -1
  %1778 = fmul fast float %1774, %1765
  %1779 = fmul fast float %1775, %1765
  %1780 = fptoui float %1778 to i32
  %1781 = fptoui float %1779 to i32
  %1782 = call i32 @dx.op.binary.i32(i32 40, i32 %1780, i32 %1776)  ; UMin(a,b)
  %1783 = call i32 @dx.op.binary.i32(i32 40, i32 %1781, i32 %1777)  ; UMin(a,b)
  %1784 = mul i32 %1783, %1767
  %1785 = add i32 %1784, %1782
  %1786 = shl i32 %1785, 2
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1786, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = icmp eq i32 %1788, -1
  br i1 %1789, label %2006, label %1790

; <label>:1790                                    ; preds = %1735
  %1791 = mul i32 %1788, 148
  %1792 = add i32 %1791, 4
  %1793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.f32 %1793, 0
  %1795 = add i32 %1791, 8
  %1796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = add i32 %1791, 36
  %1799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.f32 %1799, 0
  %1801 = add i32 %1791, 60
  %1802 = add i32 %1791, 92
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = add i32 %1791, 116
  %1806 = fsub fast float %1757, %1794
  %1807 = fsub fast float %1758, %1797
  %1808 = fmul fast float %1765, %1806
  %1809 = fmul fast float %1765, %1807
  %1810 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  %1811 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  %1812 = fsub fast float 1.000000e+00, %1811
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 2
  %1815 = call float @dx.op.unary.f32(i32 83, float %1810)  ; DerivCoarseX(value)
  %1816 = call float @dx.op.unary.f32(i32 83, float %1812)  ; DerivCoarseX(value)
  %1817 = call float @dx.op.unary.f32(i32 84, float %1810)  ; DerivCoarseY(value)
  %1818 = call float @dx.op.unary.f32(i32 84, float %1812)  ; DerivCoarseY(value)
  %1819 = fmul fast float %1815, %1814
  %1820 = fmul fast float %1816, %1814
  %1821 = fmul fast float %1817, %1814
  %1822 = fmul fast float %1818, %1814
  %1823 = call float @dx.op.dot2.f32(i32 54, float %1821, float %1822, float %1821, float %1822)  ; Dot2(ax,ay,bx,by)
  %1824 = call float @dx.op.dot2.f32(i32 54, float %1819, float %1820, float %1819, float %1820)  ; Dot2(ax,ay,bx,by)
  %1825 = call float @dx.op.binary.f32(i32 35, float %1824, float %1823)  ; FMax(a,b)
  %1826 = call float @dx.op.unary.f32(i32 23, float %1825)  ; Log(value)
  %1827 = fmul fast float %1826, 5.000000e-01
  %1828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1829 = extractvalue %dx.types.CBufRet.f32 %1828, 1
  %1830 = fadd fast float %1829, %1827
  %1831 = call float @dx.op.binary.f32(i32 35, float %1830, float 0.000000e+00)  ; FMax(a,b)
  %1832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1833 = extractvalue %dx.types.CBufRet.f32 %1832, 3
  %1834 = fadd fast float %1833, %1831
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 3
  %1837 = fadd fast float %1834, %1836
  %1838 = add i32 %1804, 0
  %1839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1838, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1840 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1839, i32 0)  ; GetDimensions(handle,mipLevel)
  %1841 = extractvalue %dx.types.Dimensions %1840, 0
  %1842 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1841)  ; FirstbitLo(value)
  %1843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1844 = extractvalue %dx.types.CBufRet.i32 %1843, 1
  %1845 = sub nsw i32 %1844, %1842
  %1846 = sitofp i32 %1845 to float
  %1847 = fsub fast float %1837, %1846
  %1848 = call float @dx.op.binary.f32(i32 35, float %1847, float 0.000000e+00)  ; FMax(a,b)
  %1849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1839, %dx.types.Handle %49, float %1810, float %1812, float %1800, float undef, i32 0, i32 0, i32 undef, float %1848)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = fcmp ule float %1850, 0x3FE0101020000000
  %1852 = extractvalue %dx.types.CBufRet.i32 %1843, 0
  %1853 = and i32 %1852, 128
  %1854 = icmp ne i32 %1853, 0
  %1855 = and i1 %1851, %1854
  br i1 %1855, label %2006, label %1856

; <label>:1856                                    ; preds = %1790
  %1857 = add i32 %1791, 20
  %1858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.f32 %1858, 0
  %1860 = add i32 %1791, 24
  %1861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1863 = add i32 %1791, 40
  %1864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1866 = add i32 %1791, 96
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1870 = extractvalue %dx.types.CBufRet.f32 %1869, 2
  %1871 = fmul fast float %1870, %1810
  %1872 = fmul fast float %1870, %1812
  %1873 = extractvalue %dx.types.CBufRet.f32 %1869, 3
  %1874 = fadd fast float %1871, %1873
  %1875 = fadd fast float %1872, %1873
  %1876 = add i32 %1868, 0
  %1877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1876, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1878 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1877, i32 0)  ; GetDimensions(handle,mipLevel)
  %1879 = extractvalue %dx.types.Dimensions %1878, 0
  %1880 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1879)  ; FirstbitLo(value)
  %1881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.i32 %1881, 1
  %1883 = sub nsw i32 %1882, %1880
  %1884 = sitofp i32 %1883 to float
  %1885 = fsub fast float %1834, %1884
  %1886 = call float @dx.op.binary.f32(i32 35, float %1885, float 0.000000e+00)  ; FMax(a,b)
  %1887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1877, %dx.types.Handle %49, float %1874, float %1875, float %1865, float undef, i32 0, i32 0, i32 undef, float %1886)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1889 = fmul fast float %1888, %1859
  %1890 = fadd fast float %1889, %1862
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1894 = extractvalue %dx.types.CBufRet.f32 %1891, 2
  %1895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1896 = extractvalue %dx.types.CBufRet.f32 %1895, 3
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 3
  %1899 = extractvalue %dx.types.CBufRet.f32 %1891, 3
  %1900 = fadd fast float %1896, %1757
  %1901 = fadd fast float %1898, %1758
  %1902 = fadd fast float %1890, %1899
  %1903 = fmul fast float %1900, %1892
  %1904 = call float @dx.op.tertiary.f32(i32 46, float %1901, float %1893, float %1903)  ; FMad(a,b,c)
  %1905 = call float @dx.op.tertiary.f32(i32 46, float %1902, float %1894, float %1904)  ; FMad(a,b,c)
  %1906 = fsub fast float %1905, %1899
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 2
  %1909 = fsub fast float %1906, %1908
  %1910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.i32 %1910, 0
  %1912 = call i32 @dx.op.binary.i32(i32 40, i32 %1788, i32 %1911)  ; UMin(a,b)
  %1913 = mul i32 %1912, 36
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = add i32 %1913, 4
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 0
  %1919 = fmul fast float %1918, %1810
  %1920 = fmul fast float %1918, %1812
  %1921 = extractvalue %dx.types.CBufRet.f32 %1917, 1
  %1922 = fadd fast float %1919, %1921
  %1923 = fadd fast float %1920, %1921
  %1924 = icmp eq i32 %1915, 0
  br i1 %1924, label %1993, label %1925

; <label>:1925                                    ; preds = %1856
  br label %1926

; <label>:1926                                    ; preds = %1983, %1925
  %1927 = phi float [ %1984, %1983 ], [ 0.000000e+00, %1925 ]
  %1928 = phi float [ %1985, %1983 ], [ 0.000000e+00, %1925 ]
  %1929 = phi float [ %1986, %1983 ], [ 0.000000e+00, %1925 ]
  %1930 = phi float [ %1987, %1983 ], [ 0.000000e+00, %1925 ]
  %1931 = phi float [ %1988, %1983 ], [ 0.000000e+00, %1925 ]
  %1932 = phi float [ %1989, %1983 ], [ 0.000000e+00, %1925 ]
  %1933 = phi i32 [ %1990, %1983 ], [ 0, %1925 ]
  %1934 = shl i32 %1933, 2
  %1935 = add i32 %1801, %1934
  %1936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = add i32 %1805, %1934
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = add i32 %1940, 0
  %1942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1941, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1943 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1942, i32 0)  ; GetDimensions(handle,mipLevel)
  %1944 = extractvalue %dx.types.Dimensions %1943, 0
  %1945 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1944)  ; FirstbitLo(value)
  %1946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.i32 %1946, 1
  %1948 = sub nsw i32 %1947, %1945
  %1949 = sitofp i32 %1948 to float
  %1950 = fsub fast float %1834, %1949
  %1951 = call float @dx.op.binary.f32(i32 35, float %1950, float 0.000000e+00)  ; FMax(a,b)
  %1952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1942, %dx.types.Handle %49, float %1922, float %1923, float %1937, float undef, i32 0, i32 0, i32 undef, float %1951)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = fcmp fast ogt float %1953, 0.000000e+00
  br i1 %1954, label %1955, label %1983

; <label>:1955                                    ; preds = %1926
  %1956 = add i32 %1916, %1934
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = and i32 %1958, 32767
  %1960 = mul nuw nsw i32 %1959, 928
  %1961 = add nuw nsw i32 %1960, 48
  %1962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.f32 %1962, 0
  %1964 = extractvalue %dx.types.ResRet.f32 %1962, 1
  %1965 = extractvalue %dx.types.ResRet.f32 %1962, 2
  %1966 = add nuw nsw i32 %1960, 60
  %1967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.f32 %1967, 0
  %1969 = extractvalue %dx.types.ResRet.f32 %1967, 1
  %1970 = extractvalue %dx.types.ResRet.f32 %1967, 2
  %1971 = fmul fast float %1963, %1953
  %1972 = fmul fast float %1964, %1953
  %1973 = fmul fast float %1965, %1953
  %1974 = fadd fast float %1971, %1927
  %1975 = fadd fast float %1972, %1928
  %1976 = fadd fast float %1973, %1929
  %1977 = fmul fast float %1968, %1953
  %1978 = fmul fast float %1969, %1953
  %1979 = fmul fast float %1970, %1953
  %1980 = fadd fast float %1977, %1930
  %1981 = fadd fast float %1978, %1931
  %1982 = fadd fast float %1979, %1932
  br label %1983

; <label>:1983                                    ; preds = %1955, %1926
  %1984 = phi float [ %1974, %1955 ], [ %1927, %1926 ]
  %1985 = phi float [ %1975, %1955 ], [ %1928, %1926 ]
  %1986 = phi float [ %1976, %1955 ], [ %1929, %1926 ]
  %1987 = phi float [ %1980, %1955 ], [ %1930, %1926 ]
  %1988 = phi float [ %1981, %1955 ], [ %1931, %1926 ]
  %1989 = phi float [ %1982, %1955 ], [ %1932, %1926 ]
  %1990 = add nuw i32 %1933, 1
  %1991 = icmp eq i32 %1990, %1915
  br i1 %1991, label %1992, label %1926

; <label>:1992                                    ; preds = %1983
  br label %1993

; <label>:1993                                    ; preds = %1992, %1856
  %1994 = phi float [ 0.000000e+00, %1856 ], [ %1984, %1992 ]
  %1995 = phi float [ 0.000000e+00, %1856 ], [ %1985, %1992 ]
  %1996 = phi float [ 0.000000e+00, %1856 ], [ %1986, %1992 ]
  %1997 = phi float [ 0.000000e+00, %1856 ], [ %1987, %1992 ]
  %1998 = phi float [ 0.000000e+00, %1856 ], [ %1988, %1992 ]
  %1999 = phi float [ 0.000000e+00, %1856 ], [ %1989, %1992 ]
  %2000 = fadd fast float %1997, %1994
  %2001 = fmul fast float %2000, 0x3F847AE140000000
  %2002 = fadd fast float %1998, %1995
  %2003 = fmul fast float %2002, 0x3F847AE140000000
  %2004 = fadd fast float %1999, %1996
  %2005 = fmul fast float %2004, 0x3F847AE140000000
  br label %2006

; <label>:2006                                    ; preds = %1993, %1790, %1735, %1732, %1703, %1665
  %2007 = phi float [ %1717, %1703 ], [ -1.310720e+05, %1665 ], [ %1909, %1993 ], [ -1.310720e+05, %1735 ], [ -1.310720e+05, %1790 ], [ -1.310720e+05, %1732 ]
  %2008 = phi float [ %1727, %1703 ], [ 0.000000e+00, %1665 ], [ %2001, %1993 ], [ 0.000000e+00, %1735 ], [ 0.000000e+00, %1790 ], [ 0.000000e+00, %1732 ]
  %2009 = phi float [ %1729, %1703 ], [ 0.000000e+00, %1665 ], [ %2003, %1993 ], [ 0.000000e+00, %1735 ], [ 0.000000e+00, %1790 ], [ 0.000000e+00, %1732 ]
  %2010 = phi float [ %1731, %1703 ], [ 0.000000e+00, %1665 ], [ %2005, %1993 ], [ 0.000000e+00, %1735 ], [ 0.000000e+00, %1790 ], [ 0.000000e+00, %1732 ]
  %2011 = phi i1 [ true, %1703 ], [ false, %1665 ], [ true, %1993 ], [ false, %1735 ], [ false, %1790 ], [ false, %1732 ]
  %2012 = and i32 %188, 3
  %2013 = icmp eq i32 %2012, 1
  %2014 = select i1 %2013, float 1.000000e+00, float 0.000000e+00
  %2015 = fsub fast float %2007, %152
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2017 = select i1 %2011, float %2016, float 1.000000e+00
  %2018 = fmul fast float %2017, %2014
  %2019 = icmp eq i32 %2012, 3
  %2020 = select i1 %2019, float 1.000000e+00, float %2018
  %2021 = call float @dx.op.binary.f32(i32 35, float %1500, float %2020)  ; FMax(a,b)
  %2022 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2023 = fcmp fast une float %2022, 0.000000e+00
  %2024 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %150, float %151, float %152)  ; Dot3(ax,ay,az,bx,by,bz)
  %2025 = call float @dx.op.unary.f32(i32 25, float %2024)  ; Rsqrt(value)
  br i1 %2023, label %2033, label %2026

; <label>:2026                                    ; preds = %2006
  %2027 = fmul fast float %2025, %150
  %2028 = fmul fast float %2025, %151
  %2029 = fmul fast float %2025, %152
  %2030 = fsub fast float -0.000000e+00, %2027
  %2031 = fsub fast float -0.000000e+00, %2028
  %2032 = fsub fast float -0.000000e+00, %2029
  br label %2201

; <label>:2033                                    ; preds = %2006
  %2034 = fmul fast float %150, %2025
  %2035 = fsub fast float -0.000000e+00, %2034
  %2036 = fmul fast float %151, %2025
  %2037 = fsub fast float -0.000000e+00, %2036
  %2038 = fmul fast float %152, %2025
  %2039 = fsub fast float -0.000000e+00, %2038
  %2040 = call float @dx.op.dot3.f32(i32 55, float %2035, float %2037, float %2039, float %98, float %99, float %100)  ; Dot3(ax,ay,az,bx,by,bz)
  %2041 = fmul fast float %2022, 2.500000e+00
  %2042 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2043 = fmul fast float %2022, 0x4013FFFFE0000000
  %2044 = fadd fast float %2043, 0xBFFFFFFFE0000000
  %2045 = call float @dx.op.unary.f32(i32 7, float %2044)  ; Saturate(value)
  %2046 = fmul fast float %2022, 0x4004000020000000
  %2047 = fadd fast float %2046, 0xBFF8000040000000
  %2048 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2049 = call float @dx.op.unary.f32(i32 7, float %2042)  ; Saturate(value)
  %2050 = fmul fast float %1536, 1.000000e+01
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = fmul fast float %2051, 2.000000e+00
  %2053 = fsub fast float 3.000000e+00, %2052
  %2054 = fmul fast float %2051, %2051
  %2055 = fmul fast float %2054, %2053
  %2056 = fsub fast float 1.000000e+00, %2055
  %2057 = fsub fast float 0x3FE3333340000000, %1557
  %2058 = fmul fast float %2057, 0x400AAAAAA0000000
  %2059 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2060 = fmul fast float %2056, %2059
  %2061 = fmul fast float %1594, 0x3FEA2B8620000000
  %2062 = fmul fast float %1595, 0x3FEA2B8620000000
  %2063 = fmul fast float %1596, 0x3FEA2B8620000000
  %2064 = fadd fast float %2061, 0x3FC81DFBA0000000
  %2065 = fmul fast float %2064, %1594
  %2066 = fadd fast float %2065, 0x3F910E6020000000
  %2067 = fadd fast float %2062, 0x3FC81DFBA0000000
  %2068 = fmul fast float %2067, %1595
  %2069 = fadd fast float %2068, 0x3F910E6020000000
  %2070 = fadd fast float %2063, 0x3FC81DFBA0000000
  %2071 = fmul fast float %2070, %1596
  %2072 = fadd fast float %2071, 0x3F910E6020000000
  %2073 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  %2074 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  %2075 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2076 = fsub fast float %2073, %1594
  %2077 = fsub fast float %2074, %1595
  %2078 = fsub fast float %2075, %1596
  %2079 = fmul fast float %2076, %2049
  %2080 = fmul fast float %2079, %2060
  %2081 = fmul fast float %2077, %2049
  %2082 = fmul fast float %2081, %2060
  %2083 = fmul fast float %2078, %2049
  %2084 = fmul fast float %2083, %2060
  %2085 = fadd fast float %2080, %1594
  %2086 = fadd fast float %2082, %1595
  %2087 = fadd fast float %2084, %1596
  %2088 = fmul fast float %1517, %1517
  %2089 = fmul fast float %2088, %2088
  %2090 = fadd fast float %2045, 1.000000e+00
  %2091 = fsub fast float %2090, %2060
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2093 = call float @dx.op.dot3.f32(i32 55, float %98, float %99, float %100, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2094 = call float @dx.op.unary.f32(i32 7, float %2093)  ; Saturate(value)
  %2095 = fsub fast float 1.000000e+00, %2089
  %2096 = call float @dx.op.binary.f32(i32 36, float %2092, float %2095)  ; FMin(a,b)
  %2097 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2098 = call float @dx.op.binary.f32(i32 35, float %2096, float %2097)  ; FMax(a,b)
  %2099 = fadd fast float %2094, 0xBFE4CCCCC0000000
  %2100 = fmul fast float %2099, 0x4006DB6DA0000000
  %2101 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2102 = fmul fast float %2101, 2.000000e+00
  %2103 = fsub fast float 3.000000e+00, %2102
  %2104 = bitcast float %1554 to i32
  %2105 = ashr i32 %2104, 1
  %2106 = add nsw i32 %2105, 532487669
  %2107 = bitcast i32 %2106 to float
  %2108 = fsub fast float 1.000000e+00, %2107
  %2109 = bitcast float %2108 to i32
  %2110 = sub nsw i32 2129859010, %2109
  %2111 = bitcast i32 %2110 to float
  %2112 = fmul fast float %2111, 2.000000e+00
  %2113 = bitcast float %1555 to i32
  %2114 = ashr i32 %2113, 1
  %2115 = add nsw i32 %2114, 532487669
  %2116 = bitcast i32 %2115 to float
  %2117 = fsub fast float 1.000000e+00, %2116
  %2118 = bitcast float %2117 to i32
  %2119 = sub nsw i32 2129859010, %2118
  %2120 = bitcast i32 %2119 to float
  %2121 = fmul fast float %2120, 2.000000e+00
  %2122 = bitcast float %1556 to i32
  %2123 = ashr i32 %2122, 1
  %2124 = add nsw i32 %2123, 532487669
  %2125 = bitcast i32 %2124 to float
  %2126 = fsub fast float 1.000000e+00, %2125
  %2127 = bitcast float %2126 to i32
  %2128 = sub nsw i32 2129859010, %2127
  %2129 = bitcast i32 %2128 to float
  %2130 = fmul fast float %2129, 2.000000e+00
  %2131 = fsub fast float 0x4002A9FBE0000000, %2112
  %2132 = fadd fast float %2112, 0x3FD54FDF00000000
  %2133 = bitcast float %2132 to i32
  %2134 = sub nsw i32 2129859010, %2133
  %2135 = bitcast i32 %2134 to float
  %2136 = fmul fast float %2135, %2131
  %2137 = fmul fast float %2136, %2136
  %2138 = fsub fast float 0x4002A9FBE0000000, %2121
  %2139 = fadd fast float %2121, 0x3FD54FDF00000000
  %2140 = bitcast float %2139 to i32
  %2141 = sub nsw i32 2129859010, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2142, %2138
  %2144 = fmul fast float %2143, %2143
  %2145 = fsub fast float 0x4002A9FBE0000000, %2130
  %2146 = fadd fast float %2130, 0x3FD54FDF00000000
  %2147 = bitcast float %2146 to i32
  %2148 = sub nsw i32 2129859010, %2147
  %2149 = bitcast i32 %2148 to float
  %2150 = fmul fast float %2149, %2145
  %2151 = fmul fast float %2150, %2150
  %2152 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2137)  ; FMax(a,b)
  %2153 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2144)  ; FMax(a,b)
  %2154 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2151)  ; FMax(a,b)
  %2155 = fsub fast float 1.000000e+00, %2040
  %2156 = fadd fast float %2155, %2056
  %2157 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2158 = fsub fast float 1.000000e+00, %2020
  %2159 = fmul fast float %2098, %2158
  %2160 = fmul fast float %2101, %2101
  %2161 = fmul fast float %2160, %2159
  %2162 = fmul fast float %2161, %2103
  %2163 = fmul fast float %2158, 0xBFE99999A0000000
  %2164 = fmul fast float %2163, %2049
  %2165 = fmul fast float %2164, %2060
  %2166 = fadd fast float %2165, 1.000000e+00
  %2167 = fadd fast float %1557, -1.000000e+00
  %2168 = fmul fast float %2166, %2167
  %2169 = fadd fast float %2168, 1.000000e+00
  %2170 = fsub fast float %2152, %1554
  %2171 = fsub fast float %2153, %1555
  %2172 = fsub fast float %2154, %1556
  %2173 = fmul fast float %2162, %2170
  %2174 = fmul fast float %2162, %2171
  %2175 = fmul fast float %2162, %2172
  %2176 = fadd fast float %2173, %1554
  %2177 = fadd fast float %2174, %1555
  %2178 = fadd fast float %2175, %1556
  %2179 = fsub fast float %98, %1533
  %2180 = fsub fast float %99, %1534
  %2181 = fsub fast float %100, %1535
  %2182 = fmul fast float %2162, %2179
  %2183 = fmul fast float %2162, %2180
  %2184 = fmul fast float %2162, %2181
  %2185 = fadd fast float %2182, %1533
  %2186 = fadd fast float %2183, %1534
  %2187 = fadd fast float %2184, %1535
  %2188 = fmul fast float %2162, %2157
  %2189 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2190 = fsub fast float 1.000000e+00, %2189
  %2191 = fmul fast float %2188, %2190
  %2192 = fadd fast float %2191, %2189
  %2193 = fsub fast float 1.000000e+00, %1517
  %2194 = fmul fast float %2162, %2193
  %2195 = fadd fast float %2194, %1517
  %2196 = call float @dx.op.dot3.f32(i32 55, float %2185, float %2186, float %2187, float %2185, float %2186, float %2187)  ; Dot3(ax,ay,az,bx,by,bz)
  %2197 = call float @dx.op.unary.f32(i32 25, float %2196)  ; Rsqrt(value)
  %2198 = fmul fast float %2185, %2197
  %2199 = fmul fast float %2186, %2197
  %2200 = fmul fast float %2187, %2197
  br label %2201

; <label>:2201                                    ; preds = %2033, %2026
  %2202 = phi float [ %2032, %2026 ], [ %2039, %2033 ]
  %2203 = phi float [ %2031, %2026 ], [ %2037, %2033 ]
  %2204 = phi float [ %2030, %2026 ], [ %2035, %2033 ]
  %2205 = phi float [ %2029, %2026 ], [ %2038, %2033 ]
  %2206 = phi float [ %2028, %2026 ], [ %2036, %2033 ]
  %2207 = phi float [ %2027, %2026 ], [ %2034, %2033 ]
  %2208 = phi float [ %1554, %2026 ], [ %2176, %2033 ]
  %2209 = phi float [ %1555, %2026 ], [ %2177, %2033 ]
  %2210 = phi float [ %1556, %2026 ], [ %2178, %2033 ]
  %2211 = phi float [ %1533, %2026 ], [ %2198, %2033 ]
  %2212 = phi float [ %1534, %2026 ], [ %2199, %2033 ]
  %2213 = phi float [ %1535, %2026 ], [ %2200, %2033 ]
  %2214 = phi float [ %1594, %2026 ], [ %2085, %2033 ]
  %2215 = phi float [ %1595, %2026 ], [ %2086, %2033 ]
  %2216 = phi float [ %1596, %2026 ], [ %2087, %2033 ]
  %2217 = phi float [ %1557, %2026 ], [ %2192, %2033 ]
  %2218 = phi float [ %1517, %2026 ], [ %2195, %2033 ]
  %2219 = fsub fast float -0.000000e+00, %2213
  %2220 = fsub fast float -0.000000e+00, %2212
  %2221 = fsub fast float -0.000000e+00, %2211
  %2222 = fsub fast float -0.000000e+00, %152
  %2223 = select i1 %212, float 0.000000e+00, float %2210
  %2224 = call float @dx.op.dot3.f32(i32 55, float %2211, float %2212, float %2213, float %2204, float %2203, float %2202)  ; Dot3(ax,ay,az,bx,by,bz)
  %2225 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  %2226 = call float @dx.op.dot3.f32(i32 55, float %2207, float %2206, float %2205, float %2211, float %2212, float %2213)  ; Dot3(ax,ay,az,bx,by,bz)
  %2227 = fmul fast float %2226, 2.000000e+00
  %2228 = fmul fast float %2227, %2211
  %2229 = fmul fast float %2227, %2212
  %2230 = fmul fast float %2227, %2213
  %2231 = fsub fast float %2207, %2228
  %2232 = fsub fast float %2206, %2229
  %2233 = fsub fast float %2205, %2230
  %2234 = fmul fast float %2206, %1646
  %2235 = fmul fast float %2205, %1645
  %2236 = fsub fast float %2234, %2235
  %2237 = fmul fast float %2205, %1644
  %2238 = fmul fast float %2207, %1646
  %2239 = fsub fast float %2237, %2238
  %2240 = fmul fast float %2207, %1645
  %2241 = fmul fast float %2206, %1644
  %2242 = fsub fast float %2240, %2241
  %2243 = fmul fast float %2239, %1646
  %2244 = fmul fast float %2242, %1645
  %2245 = fmul fast float %2242, %1644
  %2246 = fmul fast float %2236, %1646
  %2247 = fmul fast float %2236, %1645
  %2248 = fmul fast float %2239, %1644
  %2249 = fsub fast float %2221, %2244
  %2250 = fadd fast float %2249, %2243
  %2251 = fsub fast float %2220, %2246
  %2252 = fadd fast float %2251, %2245
  %2253 = fsub fast float %2219, %2248
  %2254 = fadd fast float %2253, %2247
  %2255 = fmul fast float %2250, %1632
  %2256 = fmul fast float %2252, %1632
  %2257 = fmul fast float %2254, %1632
  %2258 = fadd fast float %2255, %2211
  %2259 = fadd fast float %2256, %2212
  %2260 = fadd fast float %2257, %2213
  %2261 = call float @dx.op.dot3.f32(i32 55, float %2258, float %2259, float %2260, float %2258, float %2259, float %2260)  ; Dot3(ax,ay,az,bx,by,bz)
  %2262 = call float @dx.op.unary.f32(i32 25, float %2261)  ; Rsqrt(value)
  %2263 = fmul fast float %2258, %2262
  %2264 = fmul fast float %2259, %2262
  %2265 = fmul fast float %2260, %2262
  %2266 = call float @dx.op.dot3.f32(i32 55, float %2207, float %2206, float %2205, float %2263, float %2264, float %2265)  ; Dot3(ax,ay,az,bx,by,bz)
  %2267 = fmul fast float %2266, 2.000000e+00
  %2268 = fmul fast float %2263, %2267
  %2269 = fmul fast float %2264, %2267
  %2270 = fmul fast float %2265, %2267
  %2271 = fsub fast float %2207, %2268
  %2272 = fsub fast float %2206, %2269
  %2273 = fsub fast float %2205, %2270
  %2274 = call float @dx.op.binary.f32(i32 36, float %2218, float 1.000000e+00)  ; FMin(a,b)
  %2275 = fsub fast float 1.000000e+00, %2274
  %2276 = bitcast float %2275 to i32
  %2277 = ashr i32 %2276, 1
  %2278 = add nsw i32 %2277, 532487669
  %2279 = bitcast i32 %2278 to float
  %2280 = fsub fast float 1.000000e+00, %2217
  %2281 = call float @dx.op.binary.f32(i32 35, float %2280, float 0x3F847AE140000000)  ; FMax(a,b)
  %2282 = fmul fast float %2281, %2281
  %2283 = fmul fast float %2282, %2282
  %2284 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  %2285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %51, float %2279, float %2283, float %2284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2286 = extractvalue %dx.types.ResRet.f32 %2285, 0
  %2287 = fsub fast float 1.000000e+00, %2218
  %2288 = bitcast float %2287 to i32
  %2289 = sub nsw i32 2129859010, %2288
  %2290 = bitcast i32 %2289 to float
  %2291 = call float @dx.op.dot3.f32(i32 55, float %67, float %63, float %59, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2292 = fmul fast float %2291, 0x3FD20DD760000000
  %2293 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %2294 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %2295 = fcmp fast oeq float %2294, 0.000000e+00
  %2296 = fcmp fast oeq float %2293, 0.000000e+00
  %2297 = or i1 %2296, %2295
  br i1 %2297, label %2327, label %2298

; <label>:2298                                    ; preds = %2201
  %2299 = fsub fast float -0.000000e+00, %70
  %2300 = fsub fast float -0.000000e+00, %68
  %2301 = call float @dx.op.unary.f32(i32 24, float %2294)  ; Sqrt(value)
  %2302 = fdiv fast float %2301, %2293
  %2303 = fcmp fast ogt float %2302, 0x3FFB6F8900000000
  %2304 = select i1 %2303, float 0x3FFB6F8900000000, float %2302
  %2305 = fmul fast float %2304, 0x3FE8A23460000000
  %2306 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2307 = call float @dx.op.binary.f32(i32 35, float %2304, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2308 = fmul fast float %2306, %2293
  %2309 = fmul fast float %2307, 0x3FF279A740000000
  %2310 = fadd fast float %2309, -1.000000e+00
  %2311 = call float @dx.op.dot3.f32(i32 55, float %2299, float %2300, float %69, float %2299, float %2300, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %2312 = call float @dx.op.unary.f32(i32 25, float %2311)  ; Rsqrt(value)
  %2313 = fmul fast float %2312, %2299
  %2314 = fmul fast float %2312, %2300
  %2315 = fmul fast float %2312, %69
  %2316 = fmul fast float %2310, %2310
  %2317 = fsub fast float 1.000000e+00, %2316
  %2318 = fmul fast float %2307, 0x40005F8BE0000000
  %2319 = fsub fast float 0x400C5BF8A0000000, %2318
  %2320 = fdiv fast float %2308, %2319
  %2321 = fmul fast float %2320, 0x3FEE31C3C0000000
  %2322 = fmul fast float %2321, %2317
  %2323 = fmul fast float %2307, 0x3FDACB7480000000
  %2324 = fadd fast float %2323, 0xBFD7347680000000
  %2325 = fmul fast float %2324, %2320
  %2326 = fmul fast float %2325, %2317
  br label %2327

; <label>:2327                                    ; preds = %2298, %2201
  %2328 = phi float [ %2313, %2298 ], [ 0.000000e+00, %2201 ]
  %2329 = phi float [ %2314, %2298 ], [ 0.000000e+00, %2201 ]
  %2330 = phi float [ %2315, %2298 ], [ 0.000000e+00, %2201 ]
  %2331 = phi float [ %2322, %2298 ], [ 0.000000e+00, %2201 ]
  %2332 = phi float [ %2326, %2298 ], [ 0.000000e+00, %2201 ]
  %2333 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %2211, float %2212, float %2213)  ; Dot3(ax,ay,az,bx,by,bz)
  %2334 = fmul fast float %2333, 0x3FDF454380000000
  %2335 = fmul fast float %2333, %2333
  %2336 = fmul fast float %2335, 0x3FEE471020000000
  %2337 = fadd fast float %2336, 0xBFD42F6020000000
  %2338 = fmul fast float %2293, 0x3FD20DD760000000
  %2339 = fmul fast float %2337, %2332
  %2340 = fadd fast float %2339, %2338
  %2341 = fmul fast float %2334, %2331
  %2342 = fadd fast float %2340, %2341
  %2343 = fsub fast float %2340, %2341
  %2344 = call float @dx.op.dot3.f32(i32 55, float %2328, float %2329, float %2330, float %2271, float %2272, float %2273)  ; Dot3(ax,ay,az,bx,by,bz)
  %2345 = fmul fast float %2344, 0x3FDF454380000000
  %2346 = fmul fast float %2344, %2344
  %2347 = fmul fast float %2346, 0x3FEE471020000000
  %2348 = fadd fast float %2347, 0xBFD42F6020000000
  %2349 = call float @dx.op.dot3.f32(i32 55, float %2293, float %2331, float %2332, float 0x3FD20DD760000000, float %2345, float %2348)  ; Dot3(ax,ay,az,bx,by,bz)
  %2350 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %2351 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %2352 = fcmp fast oeq float %2351, 0.000000e+00
  %2353 = fcmp fast oeq float %2350, 0.000000e+00
  %2354 = or i1 %2353, %2352
  br i1 %2354, label %2384, label %2355

; <label>:2355                                    ; preds = %2327
  %2356 = fsub fast float -0.000000e+00, %66
  %2357 = fsub fast float -0.000000e+00, %64
  %2358 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2359 = fdiv fast float %2358, %2350
  %2360 = fcmp fast ogt float %2359, 0x3FFB6F8900000000
  %2361 = select i1 %2360, float 0x3FFB6F8900000000, float %2359
  %2362 = fmul fast float %2361, 0x3FE8A23460000000
  %2363 = call float @dx.op.unary.f32(i32 7, float %2362)  ; Saturate(value)
  %2364 = call float @dx.op.binary.f32(i32 35, float %2361, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2365 = fmul fast float %2363, %2350
  %2366 = fmul fast float %2364, 0x3FF279A740000000
  %2367 = fadd fast float %2366, -1.000000e+00
  %2368 = call float @dx.op.dot3.f32(i32 55, float %2356, float %2357, float %65, float %2356, float %2357, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %2369 = call float @dx.op.unary.f32(i32 25, float %2368)  ; Rsqrt(value)
  %2370 = fmul fast float %2369, %2356
  %2371 = fmul fast float %2369, %2357
  %2372 = fmul fast float %2369, %65
  %2373 = fmul fast float %2367, %2367
  %2374 = fsub fast float 1.000000e+00, %2373
  %2375 = fmul fast float %2364, 0x40005F8BE0000000
  %2376 = fsub fast float 0x400C5BF8A0000000, %2375
  %2377 = fdiv fast float %2365, %2376
  %2378 = fmul fast float %2377, 0x3FEE31C3C0000000
  %2379 = fmul fast float %2378, %2374
  %2380 = fmul fast float %2364, 0x3FDACB7480000000
  %2381 = fadd fast float %2380, 0xBFD7347680000000
  %2382 = fmul fast float %2381, %2377
  %2383 = fmul fast float %2382, %2374
  br label %2384

; <label>:2384                                    ; preds = %2355, %2327
  %2385 = phi float [ %2370, %2355 ], [ 0.000000e+00, %2327 ]
  %2386 = phi float [ %2371, %2355 ], [ 0.000000e+00, %2327 ]
  %2387 = phi float [ %2372, %2355 ], [ 0.000000e+00, %2327 ]
  %2388 = phi float [ %2379, %2355 ], [ 0.000000e+00, %2327 ]
  %2389 = phi float [ %2383, %2355 ], [ 0.000000e+00, %2327 ]
  %2390 = call float @dx.op.dot3.f32(i32 55, float %2385, float %2386, float %2387, float %2211, float %2212, float %2213)  ; Dot3(ax,ay,az,bx,by,bz)
  %2391 = fmul fast float %2390, 0x3FDF454380000000
  %2392 = fmul fast float %2390, %2390
  %2393 = fmul fast float %2392, 0x3FEE471020000000
  %2394 = fadd fast float %2393, 0xBFD42F6020000000
  %2395 = fmul fast float %2350, 0x3FD20DD760000000
  %2396 = fmul fast float %2394, %2389
  %2397 = fadd fast float %2396, %2395
  %2398 = fmul fast float %2391, %2388
  %2399 = fadd fast float %2397, %2398
  %2400 = fsub fast float %2397, %2398
  %2401 = call float @dx.op.dot3.f32(i32 55, float %2385, float %2386, float %2387, float %2271, float %2272, float %2273)  ; Dot3(ax,ay,az,bx,by,bz)
  %2402 = fmul fast float %2401, 0x3FDF454380000000
  %2403 = fmul fast float %2401, %2401
  %2404 = fmul fast float %2403, 0x3FEE471020000000
  %2405 = fadd fast float %2404, 0xBFD42F6020000000
  %2406 = call float @dx.op.dot3.f32(i32 55, float %2350, float %2388, float %2389, float 0x3FD20DD760000000, float %2402, float %2405)  ; Dot3(ax,ay,az,bx,by,bz)
  %2407 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %2408 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %2409 = fcmp fast oeq float %2408, 0.000000e+00
  %2410 = fcmp fast oeq float %2407, 0.000000e+00
  %2411 = or i1 %2410, %2409
  br i1 %2411, label %2441, label %2412

; <label>:2412                                    ; preds = %2384
  %2413 = fsub fast float -0.000000e+00, %62
  %2414 = fsub fast float -0.000000e+00, %60
  %2415 = call float @dx.op.unary.f32(i32 24, float %2408)  ; Sqrt(value)
  %2416 = fdiv fast float %2415, %2407
  %2417 = fcmp fast ogt float %2416, 0x3FFB6F8900000000
  %2418 = select i1 %2417, float 0x3FFB6F8900000000, float %2416
  %2419 = fmul fast float %2418, 0x3FE8A23460000000
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2421 = call float @dx.op.binary.f32(i32 35, float %2418, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2422 = fmul fast float %2420, %2407
  %2423 = fmul fast float %2421, 0x3FF279A740000000
  %2424 = fadd fast float %2423, -1.000000e+00
  %2425 = call float @dx.op.dot3.f32(i32 55, float %2413, float %2414, float %61, float %2413, float %2414, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %2426 = call float @dx.op.unary.f32(i32 25, float %2425)  ; Rsqrt(value)
  %2427 = fmul fast float %2426, %2413
  %2428 = fmul fast float %2426, %2414
  %2429 = fmul fast float %2426, %61
  %2430 = fmul fast float %2424, %2424
  %2431 = fsub fast float 1.000000e+00, %2430
  %2432 = fmul fast float %2421, 0x40005F8BE0000000
  %2433 = fsub fast float 0x400C5BF8A0000000, %2432
  %2434 = fdiv fast float %2422, %2433
  %2435 = fmul fast float %2434, 0x3FEE31C3C0000000
  %2436 = fmul fast float %2435, %2431
  %2437 = fmul fast float %2421, 0x3FDACB7480000000
  %2438 = fadd fast float %2437, 0xBFD7347680000000
  %2439 = fmul fast float %2438, %2434
  %2440 = fmul fast float %2439, %2431
  br label %2441

; <label>:2441                                    ; preds = %2412, %2384
  %2442 = phi float [ %2427, %2412 ], [ 0.000000e+00, %2384 ]
  %2443 = phi float [ %2428, %2412 ], [ 0.000000e+00, %2384 ]
  %2444 = phi float [ %2429, %2412 ], [ 0.000000e+00, %2384 ]
  %2445 = phi float [ %2436, %2412 ], [ 0.000000e+00, %2384 ]
  %2446 = phi float [ %2440, %2412 ], [ 0.000000e+00, %2384 ]
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2442, float %2443, float %2444, float %2211, float %2212, float %2213)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = fmul fast float %2447, 0x3FDF454380000000
  %2449 = fmul fast float %2447, %2447
  %2450 = fmul fast float %2449, 0x3FEE471020000000
  %2451 = fadd fast float %2450, 0xBFD42F6020000000
  %2452 = fmul fast float %2407, 0x3FD20DD760000000
  %2453 = fmul fast float %2451, %2446
  %2454 = fadd fast float %2453, %2452
  %2455 = fmul fast float %2448, %2445
  %2456 = fadd fast float %2454, %2455
  %2457 = fsub fast float %2454, %2455
  %2458 = call float @dx.op.dot3.f32(i32 55, float %2442, float %2443, float %2444, float %2271, float %2272, float %2273)  ; Dot3(ax,ay,az,bx,by,bz)
  %2459 = fmul fast float %2458, 0x3FDF454380000000
  %2460 = fmul fast float %2458, %2458
  %2461 = fmul fast float %2460, 0x3FEE471020000000
  %2462 = fadd fast float %2461, 0xBFD42F6020000000
  %2463 = call float @dx.op.dot3.f32(i32 55, float %2407, float %2445, float %2446, float 0x3FD20DD760000000, float %2459, float %2462)  ; Dot3(ax,ay,az,bx,by,bz)
  %2464 = call float @dx.op.binary.f32(i32 35, float %2342, float 0.000000e+00)  ; FMax(a,b)
  %2465 = call float @dx.op.binary.f32(i32 35, float %2399, float 0.000000e+00)  ; FMax(a,b)
  %2466 = call float @dx.op.binary.f32(i32 35, float %2456, float 0.000000e+00)  ; FMax(a,b)
  %2467 = call float @dx.op.binary.f32(i32 35, float %2343, float 0.000000e+00)  ; FMax(a,b)
  %2468 = call float @dx.op.binary.f32(i32 35, float %2400, float 0.000000e+00)  ; FMax(a,b)
  %2469 = call float @dx.op.binary.f32(i32 35, float %2457, float 0.000000e+00)  ; FMax(a,b)
  %2470 = call float @dx.op.binary.f32(i32 35, float %2349, float 0.000000e+00)  ; FMax(a,b)
  %2471 = call float @dx.op.binary.f32(i32 35, float %2406, float 0.000000e+00)  ; FMax(a,b)
  %2472 = call float @dx.op.binary.f32(i32 35, float %2463, float 0.000000e+00)  ; FMax(a,b)
  %2473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2474 = extractvalue %dx.types.CBufRet.f32 %2473, 0
  %2475 = call float @dx.op.binary.f32(i32 36, float %2214, float %2474)  ; FMin(a,b)
  %2476 = fmul fast float %2475, %2275
  %2477 = fsub fast float 1.000000e+00, %2476
  %2478 = bitcast float %2477 to i32
  %2479 = sub nsw i32 2129859010, %2478
  %2480 = bitcast i32 %2479 to float
  %2481 = call float @dx.op.binary.f32(i32 36, float %2215, float %2474)  ; FMin(a,b)
  %2482 = fmul fast float %2481, %2275
  %2483 = fsub fast float 1.000000e+00, %2482
  %2484 = bitcast float %2483 to i32
  %2485 = sub nsw i32 2129859010, %2484
  %2486 = bitcast i32 %2485 to float
  %2487 = call float @dx.op.binary.f32(i32 36, float %2216, float %2474)  ; FMin(a,b)
  %2488 = fmul fast float %2487, %2275
  %2489 = fsub fast float 1.000000e+00, %2488
  %2490 = bitcast float %2489 to i32
  %2491 = sub nsw i32 2129859010, %2490
  %2492 = bitcast i32 %2491 to float
  %2493 = fmul fast float %2464, %2274
  %2494 = fmul fast float %2493, %2480
  %2495 = fmul fast float %2465, %2274
  %2496 = fmul fast float %2495, %2486
  %2497 = fmul fast float %2466, %2274
  %2498 = fmul fast float %2497, %2492
  %2499 = call float @dx.op.binary.f32(i32 36, float %2208, float %2474)  ; FMin(a,b)
  %2500 = fmul fast float %2499, %2275
  %2501 = fsub fast float 1.000000e+00, %2500
  %2502 = bitcast float %2501 to i32
  %2503 = sub nsw i32 2129859010, %2502
  %2504 = bitcast i32 %2503 to float
  %2505 = call float @dx.op.binary.f32(i32 36, float %2209, float %2474)  ; FMin(a,b)
  %2506 = fmul fast float %2505, %2275
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = bitcast float %2507 to i32
  %2509 = sub nsw i32 2129859010, %2508
  %2510 = bitcast i32 %2509 to float
  %2511 = call float @dx.op.binary.f32(i32 36, float %2223, float %2474)  ; FMin(a,b)
  %2512 = fmul fast float %2511, %2275
  %2513 = fsub fast float 1.000000e+00, %2512
  %2514 = bitcast float %2513 to i32
  %2515 = sub nsw i32 2129859010, %2514
  %2516 = bitcast i32 %2515 to float
  %2517 = fmul fast float %2470, %2274
  %2518 = fmul fast float %2517, %2504
  %2519 = fmul fast float %2471, %2274
  %2520 = fmul fast float %2519, %2510
  %2521 = fmul fast float %2472, %2274
  %2522 = fmul fast float %2521, %2516
  %2523 = call float @dx.op.dot3.f32(i32 55, float %2494, float %2496, float %2498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2524 = select i1 %212, float 0.000000e+00, float %2494
  %2525 = select i1 %212, float %2523, float %2496
  %2526 = select i1 %212, float 0.000000e+00, float %2498
  %2527 = call float @dx.op.dot3.f32(i32 55, float %2467, float %2468, float %2469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2528 = select i1 %212, float 0.000000e+00, float %2467
  %2529 = select i1 %212, float %2527, float %2468
  %2530 = select i1 %212, float 0.000000e+00, float %2469
  %2531 = call float @dx.op.dot3.f32(i32 55, float %2518, float %2520, float %2522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2532 = select i1 %212, float 0.000000e+00, float %2518
  %2533 = select i1 %212, float %2531, float %2520
  %2534 = select i1 %212, float 0.000000e+00, float %2522
  %2535 = fmul fast float %913, %913
  %2536 = call float @dx.op.unary.f32(i32 7, float %2535)  ; Saturate(value)
  %2537 = fmul fast float %2225, 9.843750e-01
  %2538 = fmul fast float %2217, 9.843750e-01
  %2539 = fadd fast float %2537, 7.812500e-03
  %2540 = fadd fast float %2538, 7.812500e-03
  %2541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %2539, float %2540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.ResRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.ResRet.f32 %2541, 2
  %2545 = extractvalue %dx.types.ResRet.f32 %2541, 3
  %2546 = fsub fast float 1.000000e+00, %2536
  %2547 = fsub fast float %2544, %2542
  %2548 = fsub fast float %2545, %2543
  %2549 = fmul fast float %2547, %2546
  %2550 = fmul fast float %2548, %2546
  %2551 = fadd fast float %2549, %2542
  %2552 = fadd fast float %2550, %2543
  %2553 = fmul fast float %2551, %2208
  %2554 = fmul fast float %2551, %2209
  %2555 = fmul fast float %2551, %2223
  %2556 = fadd fast float %2553, %2552
  %2557 = fadd fast float %2554, %2552
  %2558 = fadd fast float %2555, %2552
  %2559 = fcmp fast ogt float %1507, 0.000000e+00
  br i1 %2559, label %2560, label %2586

; <label>:2560                                    ; preds = %2441
  %2561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1507, float %2225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2562 = extractvalue %dx.types.ResRet.f32 %2561, 0
  %2563 = extractvalue %dx.types.ResRet.f32 %2561, 1
  %2564 = extractvalue %dx.types.ResRet.f32 %2561, 2
  %2565 = fadd fast float %2562, -5.000000e-01
  %2566 = fadd fast float %2563, -5.000000e-01
  %2567 = fadd fast float %2564, -5.000000e-01
  %2568 = fsub fast float 1.000000e+00, %2208
  %2569 = fsub fast float 1.000000e+00, %2209
  %2570 = fsub fast float 1.000000e+00, %2223
  %2571 = fmul fast float %2208, 4.000000e+00
  %2572 = fmul fast float %2571, %2568
  %2573 = fmul fast float %2572, %2565
  %2574 = fmul fast float %2209, 4.000000e+00
  %2575 = fmul fast float %2574, %2569
  %2576 = fmul fast float %2575, %2566
  %2577 = fmul fast float %2223, 4.000000e+00
  %2578 = fmul fast float %2577, %2570
  %2579 = fmul fast float %2578, %2567
  %2580 = fadd fast float %2573, %2556
  %2581 = fadd fast float %2576, %2557
  %2582 = fadd fast float %2579, %2558
  %2583 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2584 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2585 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  br label %2586

; <label>:2586                                    ; preds = %2560, %2441
  %2587 = phi float [ %2583, %2560 ], [ %2556, %2441 ]
  %2588 = phi float [ %2584, %2560 ], [ %2557, %2441 ]
  %2589 = phi float [ %2585, %2560 ], [ %2558, %2441 ]
  %2590 = call float @dx.op.binary.f32(i32 35, float %2588, float %2589)  ; FMax(a,b)
  %2591 = call float @dx.op.binary.f32(i32 35, float %2587, float %2590)  ; FMax(a,b)
  %2592 = fsub fast float 1.000000e+00, %2591
  %2593 = fmul fast float %2591, %2217
  %2594 = fadd fast float %2593, %2217
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 2
  %2597 = extractvalue %dx.types.CBufRet.f32 %2595, 3
  %2598 = fmul fast float %2594, %2596
  %2599 = fadd fast float %2598, %2597
  %2600 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  %2601 = fsub fast float 1.000000e+00, %2286
  %2602 = fadd fast float %2601, %2600
  %2603 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  %2604 = fcmp fast olt float %2603, 1.000000e+00
  br i1 %2604, label %2605, label %3187

; <label>:2605                                    ; preds = %2586
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 2
  %2608 = extractvalue %dx.types.CBufRet.f32 %2606, 3
  %2609 = fmul fast float %2607, %95
  %2610 = fmul fast float %2608, %96
  %2611 = fptoui float %2609 to i32
  %2612 = fptoui float %2610 to i32
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 0
  %2615 = extractvalue %dx.types.CBufRet.f32 %2613, 2
  %2616 = extractvalue %dx.types.CBufRet.f32 %2613, 3
  %2617 = fadd fast float %83, -4.000000e+00
  %2618 = call float @dx.op.binary.f32(i32 35, float %2617, float 0.000000e+00)  ; FMax(a,b)
  %2619 = fadd fast float %2618, %2614
  %2620 = fmul fast float %2619, %2615
  %2621 = call float @dx.op.unary.f32(i32 23, float %2620)  ; Log(value)
  %2622 = fmul fast float %2621, %2616
  %2623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2624 = extractvalue %dx.types.CBufRet.f32 %2623, 2
  %2625 = fmul fast float %2622, %2624
  %2626 = call float @dx.op.unary.f32(i32 7, float %2625)  ; Saturate(value)
  %2627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.i32 %2627, 1
  %2629 = add i32 %2628, -1
  %2630 = uitofp i32 %2628 to float
  %2631 = fmul fast float %2630, %2626
  %2632 = fptoui float %2631 to i32
  %2633 = call i32 @dx.op.binary.i32(i32 40, i32 %2632, i32 %2629)  ; UMin(a,b)
  %2634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.i32 %2634, 2
  %2636 = extractvalue %dx.types.CBufRet.i32 %2634, 3
  %2637 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2612, i32 %2635, i32 %2611)  ; UMad(a,b,c)
  %2638 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2633, i32 %2636, i32 %2637)  ; UMad(a,b,c)
  %2639 = call float @dx.op.binary.f32(i32 35, float %83, float 0.000000e+00)  ; FMax(a,b)
  %2640 = fptoui float %2639 to i32
  %2641 = lshr i32 %2640, 5
  %2642 = call i32 @dx.op.binary.i32(i32 40, i32 %2641, i32 8191)  ; UMin(a,b)
  %2643 = fsub fast float %2007, %152
  %2644 = call float @dx.op.unary.f32(i32 7, float %2643)  ; Saturate(value)
  %2645 = fcmp fast ogt float %2644, 0.000000e+00
  %2646 = fcmp fast ogt float %2273, 0.000000e+00
  %2647 = and i1 %2646, %2645
  br i1 %2647, label %2648, label %2677

; <label>:2648                                    ; preds = %2605
  %2649 = call float @dx.op.dot3.f32(i32 55, float %2271, float %2272, float %2273, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2650 = call float @dx.op.binary.f32(i32 35, float %2649, float -1.000000e+00)  ; FMax(a,b)
  %2651 = call float @dx.op.binary.f32(i32 36, float %2650, float 1.000000e+00)  ; FMin(a,b)
  %2652 = fmul fast float %2651, %2651
  %2653 = fsub fast float 1.000000e+00, %2652
  %2654 = fmul fast float %2653, 0x3FFC6E2300000000
  %2655 = fsub fast float 1.000000e+00, %2654
  %2656 = fcmp fast ogt float %2655, 0.000000e+00
  %2657 = call float @dx.op.unary.f32(i32 24, float %2655)  ; Sqrt(value)
  %2658 = fsub fast float 1.000000e+00, %2657
  %2659 = call float @dx.op.unary.f32(i32 23, float %2658)  ; Log(value)
  %2660 = fmul fast float %2659, 5.000000e+00
  %2661 = call float @dx.op.unary.f32(i32 21, float %2660)  ; Exp(value)
  %2662 = fmul fast float %2661, 0x3FEF591A60000000
  %2663 = fadd fast float %2662, 0x3F94DCB540000000
  %2664 = select i1 %2656, float %2663, float 1.000000e+00
  %2665 = fcmp fast oge float %2664, 1.000000e+00
  %2666 = fmul fast float %2649, 2.000000e+00
  %2667 = fadd fast float %2666, %2273
  %2668 = select i1 %2665, float %2667, float %2273
  %2669 = fsub fast float %2668, %2273
  %2670 = fmul fast float %2669, %2644
  %2671 = fadd fast float %2670, %2273
  %2672 = call float @dx.op.dot3.f32(i32 55, float %2271, float %2272, float %2671, float %2271, float %2272, float %2671)  ; Dot3(ax,ay,az,bx,by,bz)
  %2673 = call float @dx.op.unary.f32(i32 25, float %2672)  ; Rsqrt(value)
  %2674 = fmul fast float %2673, %2271
  %2675 = fmul fast float %2673, %2272
  %2676 = fmul fast float %2671, %2673
  br label %2677

; <label>:2677                                    ; preds = %2648, %2605
  %2678 = phi float [ %2674, %2648 ], [ %2271, %2605 ]
  %2679 = phi float [ %2675, %2648 ], [ %2272, %2605 ]
  %2680 = phi float [ %2676, %2648 ], [ %2273, %2605 ]
  %2681 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.i32 %2681, 2
  %2683 = add nsw i32 %2682, -1
  %2684 = call i32 @dx.op.binary.i32(i32 37, i32 %2683, i32 0)  ; IMax(a,b)
  %2685 = shl i32 %2642, 2
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2685, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = lshr i32 %2687, 16
  %2689 = and i32 %2687, 65535
  %2690 = lshr i32 %2687, 21
  %2691 = lshr i32 %2689, 5
  %2692 = call i32 @dx.op.binary.i32(i32 40, i32 %2691, i32 %2684)  ; UMin(a,b)
  %2693 = icmp ugt i32 %2690, %2692
  br i1 %2693, label %3075, label %2694

; <label>:2694                                    ; preds = %2677
  br label %2695

; <label>:2695                                    ; preds = %3064, %2694
  %2696 = phi float [ %3065, %3064 ], [ 0.000000e+00, %2694 ]
  %2697 = phi float [ %3066, %3064 ], [ 0.000000e+00, %2694 ]
  %2698 = phi float [ %3067, %3064 ], [ 0.000000e+00, %2694 ]
  %2699 = phi float [ %3068, %3064 ], [ 1.000000e+00, %2694 ]
  %2700 = phi i32 [ %3072, %3064 ], [ %2690, %2694 ]
  %2701 = phi float [ %3069, %3064 ], [ 0.000000e+00, %2694 ]
  %2702 = phi float [ %3070, %3064 ], [ 0.000000e+00, %2694 ]
  %2703 = phi float [ %3071, %3064 ], [ 0.000000e+00, %2694 ]
  %2704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.i32 %2704, 2
  %2706 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2638, i32 %2705, i32 %2700)  ; UMad(a,b,c)
  %2707 = shl i32 %2706, 2
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = shl i32 %2700, 5
  %2711 = sub nsw i32 %2688, %2710
  %2712 = call i32 @dx.op.binary.i32(i32 37, i32 %2711, i32 0)  ; IMax(a,b)
  %2713 = call i32 @dx.op.binary.i32(i32 38, i32 %2712, i32 31)  ; IMin(a,b)
  %2714 = sub nsw i32 1, %2688
  %2715 = add nsw i32 %2714, %2689
  %2716 = call i32 @dx.op.binary.i32(i32 37, i32 %2715, i32 0)  ; IMax(a,b)
  %2717 = call i32 @dx.op.binary.i32(i32 38, i32 %2716, i32 32)  ; IMin(a,b)
  %2718 = and i32 %2717, 31
  %2719 = shl i32 -1, %2718
  %2720 = xor i32 %2719, -1
  %2721 = and i32 %2713, 31
  %2722 = shl i32 %2720, %2721
  %2723 = icmp eq i32 %2717, 32
  %2724 = select i1 %2723, i32 -1, i32 %2722
  %2725 = and i32 %2724, %2709
  %2726 = icmp eq i32 %2725, 0
  br i1 %2726, label %3064, label %2727

; <label>:2727                                    ; preds = %2695
  br label %2728

; <label>:2728                                    ; preds = %2838, %2727
  %2729 = phi float [ %2839, %2838 ], [ %2696, %2727 ]
  %2730 = phi float [ %2840, %2838 ], [ %2697, %2727 ]
  %2731 = phi float [ %2841, %2838 ], [ %2698, %2727 ]
  %2732 = phi float [ %2842, %2838 ], [ %2699, %2727 ]
  %2733 = phi i32 [ %2741, %2838 ], [ %2725, %2727 ]
  %2734 = phi float [ %2843, %2838 ], [ %2701, %2727 ]
  %2735 = phi float [ %2844, %2838 ], [ %2702, %2727 ]
  %2736 = phi float [ %2845, %2838 ], [ %2703, %2727 ]
  %2737 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2733)  ; FirstbitLo(value)
  %2738 = add i32 %2737, %2710
  %2739 = and i32 %2737, 31
  %2740 = shl i32 1, %2739
  %2741 = xor i32 %2740, %2733
  %2742 = mul i32 %2738, 72
  %2743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.ResRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2743, 2
  %2747 = add i32 %2742, 12
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %42, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = add i32 %2742, 16
  %2751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.ResRet.f32 %2751, 2
  %2755 = add i32 %2742, 28
  %2756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = add i32 %2742, 32
  %2759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2763 = extractvalue %dx.types.ResRet.f32 %2759, 3
  %2764 = add i32 %2742, 48
  %2765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = extractvalue %dx.types.ResRet.f32 %2765, 1
  %2768 = add i32 %2742, 56
  %2769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = extractvalue %dx.types.ResRet.f32 %2769, 1
  %2772 = add i32 %2742, 64
  %2773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %42, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.ResRet.f32 %2773, 1
  %2776 = mul i32 %2738, 60
  %2777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.ResRet.f32 %2777, 1
  %2780 = extractvalue %dx.types.ResRet.f32 %2777, 2
  %2781 = add i32 %2776, 12
  %2782 = add i32 %2776, 48
  %2783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.ResRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.ResRet.f32 %2783, 2
  %2787 = and i32 %2749, 32767
  %2788 = bitcast float %2744 to i32
  %2789 = icmp eq i32 %2788, -1
  %2790 = bitcast float %2745 to i32
  %2791 = and i32 %2749, 32768
  %2792 = icmp ne i32 %2791, 0
  %2793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2794 = extractvalue %dx.types.CBufRet.f32 %2793, 0
  %2795 = extractvalue %dx.types.CBufRet.f32 %2793, 1
  %2796 = extractvalue %dx.types.CBufRet.f32 %2793, 2
  %2797 = fsub fast float %2778, %2794
  %2798 = fsub fast float %2779, %2795
  %2799 = fsub fast float %2780, %2796
  %2800 = fsub fast float %150, %2797
  %2801 = fsub fast float %151, %2798
  %2802 = fsub fast float %152, %2799
  %2803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2781, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.f32 %2803, 0
  %2805 = extractvalue %dx.types.ResRet.f32 %2803, 1
  %2806 = extractvalue %dx.types.ResRet.f32 %2803, 2
  %2807 = call float @dx.op.dot3.f32(i32 55, float %2800, float %2801, float %2802, float %2804, float %2805, float %2806)  ; Dot3(ax,ay,az,bx,by,bz)
  %2808 = add i32 %2776, 24
  %2809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.f32 %2809, 0
  %2811 = extractvalue %dx.types.ResRet.f32 %2809, 1
  %2812 = extractvalue %dx.types.ResRet.f32 %2809, 2
  %2813 = call float @dx.op.dot3.f32(i32 55, float %2800, float %2801, float %2802, float %2810, float %2811, float %2812)  ; Dot3(ax,ay,az,bx,by,bz)
  %2814 = add i32 %2776, 36
  %2815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.ResRet.f32 %2815, 1
  %2818 = extractvalue %dx.types.ResRet.f32 %2815, 2
  %2819 = call float @dx.op.dot3.f32(i32 55, float %2800, float %2801, float %2802, float %2816, float %2817, float %2818)  ; Dot3(ax,ay,az,bx,by,bz)
  %2820 = call float @dx.op.unary.f32(i32 6, float %2807)  ; FAbs(value)
  %2821 = call float @dx.op.unary.f32(i32 6, float %2813)  ; FAbs(value)
  %2822 = call float @dx.op.unary.f32(i32 6, float %2819)  ; FAbs(value)
  %2823 = fsub fast float %2784, %2820
  %2824 = fsub fast float %2785, %2821
  %2825 = fsub fast float %2786, %2822
  %2826 = fmul fast float %2823, %2752
  %2827 = fmul fast float %2824, %2753
  %2828 = fmul fast float %2825, %2754
  %2829 = call float @dx.op.binary.f32(i32 36, float %2827, float %2828)  ; FMin(a,b)
  %2830 = call float @dx.op.binary.f32(i32 36, float %2826, float %2829)  ; FMin(a,b)
  %2831 = call float @dx.op.unary.f32(i32 7, float %2830)  ; Saturate(value)
  %2832 = call float @dx.op.binary.f32(i32 36, float %2732, float %2831)  ; FMin(a,b)
  %2833 = uitofp i1 %2792 to float
  %2834 = fadd fast float %2644, 1.000000e+00
  %2835 = fsub fast float %2834, %2833
  %2836 = fmul fast float %2832, %2835
  %2837 = fcmp fast ogt float %2836, 0.000000e+00
  br i1 %2837, label %2847, label %2838

; <label>:2838                                    ; preds = %2989, %2728
  %2839 = phi float [ %3053, %2989 ], [ %2729, %2728 ]
  %2840 = phi float [ %3054, %2989 ], [ %2730, %2728 ]
  %2841 = phi float [ %3055, %2989 ], [ %2731, %2728 ]
  %2842 = phi float [ %3062, %2989 ], [ %2732, %2728 ]
  %2843 = phi float [ %3059, %2989 ], [ %2734, %2728 ]
  %2844 = phi float [ %3060, %2989 ], [ %2735, %2728 ]
  %2845 = phi float [ %3061, %2989 ], [ %2736, %2728 ]
  %2846 = icmp eq i32 %2733, %2740
  br i1 %2846, label %3063, label %2728

; <label>:2847                                    ; preds = %2728
  br i1 %2789, label %2905, label %2848

; <label>:2848                                    ; preds = %2847
  %2849 = fsub fast float -0.000000e+00, %2804
  %2850 = fsub fast float -0.000000e+00, %2805
  %2851 = fsub fast float -0.000000e+00, %2806
  %2852 = call float @dx.op.dot3.f32(i32 55, float %2678, float %2679, float %2680, float %2849, float %2850, float %2851)  ; Dot3(ax,ay,az,bx,by,bz)
  %2853 = fsub fast float -0.000000e+00, %2852
  %2854 = call float @dx.op.dot3.f32(i32 55, float %2800, float %2801, float %2802, float %2849, float %2850, float %2851)  ; Dot3(ax,ay,az,bx,by,bz)
  %2855 = fadd fast float %2854, %2767
  %2856 = fadd fast float %2766, %2854
  %2857 = fsub fast float -0.000000e+00, %2856
  %2858 = fcmp ogt float %2852, -0.000000e+00
  %2859 = select i1 %2858, float %2857, float %2855
  %2860 = call float @dx.op.unary.f32(i32 6, float %2853)  ; FAbs(value)
  %2861 = fdiv fast float 1.000000e+00, %2860
  %2862 = fmul fast float %2859, %2861
  %2863 = call float @dx.op.binary.f32(i32 35, float %2862, float 0.000000e+00)  ; FMax(a,b)
  %2864 = fsub fast float -0.000000e+00, %2810
  %2865 = fsub fast float -0.000000e+00, %2811
  %2866 = fsub fast float -0.000000e+00, %2812
  %2867 = call float @dx.op.dot3.f32(i32 55, float %2678, float %2679, float %2680, float %2864, float %2865, float %2866)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = fsub fast float -0.000000e+00, %2867
  %2869 = call float @dx.op.dot3.f32(i32 55, float %2800, float %2801, float %2802, float %2864, float %2865, float %2866)  ; Dot3(ax,ay,az,bx,by,bz)
  %2870 = fadd fast float %2869, %2771
  %2871 = fadd fast float %2770, %2869
  %2872 = fsub fast float -0.000000e+00, %2871
  %2873 = fcmp ogt float %2867, -0.000000e+00
  %2874 = select i1 %2873, float %2872, float %2870
  %2875 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2876 = fdiv fast float 1.000000e+00, %2875
  %2877 = fmul fast float %2874, %2876
  %2878 = call float @dx.op.binary.f32(i32 35, float %2877, float 0.000000e+00)  ; FMax(a,b)
  %2879 = fsub fast float -0.000000e+00, %2816
  %2880 = fsub fast float -0.000000e+00, %2817
  %2881 = fsub fast float -0.000000e+00, %2818
  %2882 = call float @dx.op.dot3.f32(i32 55, float %2678, float %2679, float %2680, float %2879, float %2880, float %2881)  ; Dot3(ax,ay,az,bx,by,bz)
  %2883 = fsub fast float -0.000000e+00, %2882
  %2884 = call float @dx.op.dot3.f32(i32 55, float %2800, float %2801, float %2802, float %2879, float %2880, float %2881)  ; Dot3(ax,ay,az,bx,by,bz)
  %2885 = fadd fast float %2884, %2775
  %2886 = fadd fast float %2774, %2884
  %2887 = fsub fast float -0.000000e+00, %2886
  %2888 = fcmp ogt float %2882, -0.000000e+00
  %2889 = select i1 %2888, float %2887, float %2885
  %2890 = call float @dx.op.unary.f32(i32 6, float %2883)  ; FAbs(value)
  %2891 = fdiv fast float 1.000000e+00, %2890
  %2892 = fmul fast float %2889, %2891
  %2893 = call float @dx.op.binary.f32(i32 35, float %2892, float 0.000000e+00)  ; FMax(a,b)
  %2894 = call float @dx.op.binary.f32(i32 36, float %2878, float %2893)  ; FMin(a,b)
  %2895 = call float @dx.op.binary.f32(i32 36, float %2863, float %2894)  ; FMin(a,b)
  %2896 = fmul fast float %2895, %2678
  %2897 = fmul fast float %2895, %2679
  %2898 = fmul fast float %2895, %2680
  %2899 = fadd fast float %2896, %150
  %2900 = fadd fast float %2897, %151
  %2901 = fadd fast float %2898, %152
  %2902 = fsub fast float %2899, %2744
  %2903 = fsub fast float %2900, %2745
  %2904 = fsub fast float %2901, %2746
  br label %2912

; <label>:2905                                    ; preds = %2847
  %2906 = fmul fast float %2678, 8.096000e+03
  %2907 = fmul fast float %2679, 8.096000e+03
  %2908 = fmul fast float %2680, 8.096000e+03
  %2909 = fadd fast float %2906, %150
  %2910 = fadd fast float %2907, %151
  %2911 = fadd fast float %2908, %152
  br label %2912

; <label>:2912                                    ; preds = %2905, %2848
  %2913 = phi float [ %2678, %2905 ], [ %2902, %2848 ]
  %2914 = phi float [ %2679, %2905 ], [ %2903, %2848 ]
  %2915 = phi float [ %2680, %2905 ], [ %2904, %2848 ]
  %2916 = phi float [ %2909, %2905 ], [ %2899, %2848 ]
  %2917 = phi float [ %2910, %2905 ], [ %2900, %2848 ]
  %2918 = phi float [ %2911, %2905 ], [ %2901, %2848 ]
  %2919 = fcmp fast olt float %2763, 1.000000e+00
  br i1 %2919, label %2920, label %2951, !dx.controlflow.hints !93

; <label>:2920                                    ; preds = %2912
  %2921 = fmul fast float %2915, %2761
  %2922 = fmul fast float %2914, %2762
  %2923 = fsub fast float %2921, %2922
  %2924 = fmul fast float %2913, %2762
  %2925 = fmul fast float %2915, %2760
  %2926 = fsub fast float %2924, %2925
  %2927 = fmul fast float %2914, %2760
  %2928 = fmul fast float %2913, %2761
  %2929 = fsub fast float %2927, %2928
  %2930 = fmul fast float %2923, 2.000000e+00
  %2931 = fmul fast float %2926, 2.000000e+00
  %2932 = fmul fast float %2929, 2.000000e+00
  %2933 = fmul fast float %2930, %2763
  %2934 = fmul fast float %2931, %2763
  %2935 = fmul fast float %2932, %2763
  %2936 = fmul fast float %2932, %2761
  %2937 = fmul fast float %2931, %2762
  %2938 = fmul fast float %2930, %2762
  %2939 = fmul fast float %2932, %2760
  %2940 = fmul fast float %2931, %2760
  %2941 = fmul fast float %2930, %2761
  %2942 = fadd fast float %2936, %2913
  %2943 = fadd fast float %2942, %2933
  %2944 = fsub fast float %2943, %2937
  %2945 = fsub fast float %2914, %2939
  %2946 = fadd fast float %2945, %2934
  %2947 = fadd fast float %2946, %2938
  %2948 = fadd fast float %2935, %2915
  %2949 = fsub fast float %2948, %2941
  %2950 = fadd fast float %2949, %2940
  br label %2951

; <label>:2951                                    ; preds = %2920, %2912
  %2952 = phi float [ %2944, %2920 ], [ %2913, %2912 ]
  %2953 = phi float [ %2947, %2920 ], [ %2914, %2912 ]
  %2954 = phi float [ %2950, %2920 ], [ %2915, %2912 ]
  br i1 %2789, label %2986, label %2955

; <label>:2955                                    ; preds = %2951
  %2956 = fmul fast float %2217, 0x400187C840000000
  %2957 = fadd fast float %2956, 0xC00EFC2120000000
  %2958 = fmul fast float %2957, %2217
  %2959 = fadd fast float %2958, 0x3FE5D16340000000
  %2960 = fmul fast float %2959, %2217
  %2961 = fadd fast float %2960, 1.000000e+00
  %2962 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2963 = fsub fast float %2916, %150
  %2964 = fsub fast float %2917, %151
  %2965 = fsub fast float %2918, %152
  %2966 = fsub fast float %2916, %2744
  %2967 = fsub fast float %2917, %2745
  %2968 = fsub fast float %2918, %2746
  %2969 = call float @dx.op.dot3.f32(i32 55, float %2963, float %2964, float %2965, float %2963, float %2964, float %2965)  ; Dot3(ax,ay,az,bx,by,bz)
  %2970 = call float @dx.op.dot3.f32(i32 55, float %2966, float %2967, float %2968, float %2966, float %2967, float %2968)  ; Dot3(ax,ay,az,bx,by,bz)
  %2971 = fadd fast float %2970, 0x3EE4F8B580000000
  %2972 = fdiv fast float %2969, %2971
  %2973 = bitcast float %2972 to i32
  %2974 = ashr i32 %2973, 1
  %2975 = add nsw i32 %2974, 532487669
  %2976 = bitcast i32 %2975 to float
  %2977 = fmul fast float %2976, %2962
  %2978 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  %2979 = fmul fast float %2978, 0x4009981AE0000000
  %2980 = fsub fast float 0x40111BBD80000000, %2979
  %2981 = fmul fast float %2980, %2978
  %2982 = fadd fast float %2981, 0xC0009F6020000000
  %2983 = fmul fast float %2982, %2978
  %2984 = fadd fast float %2983, 1.000000e+00
  %2985 = call float @dx.op.unary.f32(i32 7, float %2984)  ; Saturate(value)
  br label %2989

; <label>:2986                                    ; preds = %2951
  %2987 = icmp ne i32 %2790, -1
  %2988 = zext i1 %2987 to i32
  br label %2989

; <label>:2989                                    ; preds = %2986, %2955
  %2990 = phi float [ %2217, %2986 ], [ %2985, %2955 ]
  %2991 = phi i32 [ %2988, %2986 ], [ 0, %2955 ]
  %2992 = fmul float %2990, 5.000000e+00
  %2993 = fsub float 5.000000e+00, %2992
  %2994 = icmp ne i32 %2991, 0
  %2995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2996 = extractvalue %dx.types.CBufRet.f32 %2995, 3
  %2997 = fadd fast float %2996, %2993
  %2998 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2997)  ; FMax(a,b)
  %2999 = call float @dx.op.unary.f32(i32 6, float %2952)  ; FAbs(value)
  %3000 = call float @dx.op.unary.f32(i32 6, float %2953)  ; FAbs(value)
  %3001 = fadd fast float %3000, %2999
  %3002 = call float @dx.op.unary.f32(i32 6, float %2954)  ; FAbs(value)
  %3003 = fadd fast float %3001, %3002
  %3004 = fcmp fast oeq float %3003, 0.000000e+00
  %3005 = fdiv fast float 1.000000e+00, %3003
  %3006 = select i1 %3004, float 1.000000e+00, float %3005
  %3007 = fmul fast float %3006, %2952
  %3008 = fmul fast float %3006, %2953
  %3009 = call float @dx.op.unary.f32(i32 6, float %3008)  ; FAbs(value)
  %3010 = call float @dx.op.unary.f32(i32 6, float %3007)  ; FAbs(value)
  %3011 = fsub fast float 1.000000e+00, %3009
  %3012 = fsub fast float 1.000000e+00, %3010
  %3013 = fcmp fast oge float %3007, 0.000000e+00
  %3014 = fcmp fast oge float %3008, 0.000000e+00
  %3015 = select i1 %3013, float 1.000000e+00, float -1.000000e+00
  %3016 = select i1 %3014, float 1.000000e+00, float -1.000000e+00
  %3017 = fcmp fast ole float %2954, 0.000000e+00
  %3018 = fmul fast float %3015, %3011
  %3019 = fmul fast float %3016, %3012
  %3020 = select i1 %3017, float %3018, float %3007
  %3021 = select i1 %3017, float %3019, float %3008
  %3022 = fmul fast float %3020, 5.000000e-01
  %3023 = fmul fast float %3021, 5.000000e-01
  %3024 = fadd fast float %3022, 5.000000e-01
  %3025 = fadd fast float %3023, 5.000000e-01
  %3026 = uitofp i32 %2787 to float
  %3027 = call float @dx.op.binary.f32(i32 36, float %2998, float 3.000000e+00)  ; FMin(a,b)
  %3028 = fadd fast float %3027, 2.000000e+00
  %3029 = call float @dx.op.unary.f32(i32 21, float %3028)  ; Exp(value)
  %3030 = extractvalue %dx.types.CBufRet.f32 %2995, 1
  %3031 = fmul fast float %3030, %3029
  %3032 = fmul fast float %3031, 2.000000e+00
  %3033 = fsub fast float 1.000000e+00, %3032
  %3034 = fmul fast float %3024, %3033
  %3035 = fmul fast float %3025, %3033
  %3036 = fadd fast float %3034, %3031
  %3037 = fadd fast float %3035, %3031
  %3038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %49, float %3036, float %3037, float %3026, float undef, i32 0, i32 0, i32 undef, float %2998)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3039 = extractvalue %dx.types.ResRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.ResRet.f32 %3038, 1
  %3041 = extractvalue %dx.types.ResRet.f32 %3038, 2
  %3042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.f32 %3042, 3
  %3044 = fmul fast float %3043, %2757
  %3045 = call float @dx.op.binary.f32(i32 36, float %2292, float %3044)  ; FMin(a,b)
  %3046 = select i1 %2994, float %3045, float %3044
  %3047 = fmul fast float %3039, %2836
  %3048 = fmul fast float %3047, %3046
  %3049 = fmul fast float %3040, %2836
  %3050 = fmul fast float %3049, %3046
  %3051 = fmul fast float %3041, %2836
  %3052 = fmul fast float %3051, %3046
  %3053 = fadd fast float %3048, %2729
  %3054 = fadd fast float %3050, %2730
  %3055 = fadd fast float %3052, %2731
  %3056 = fmul fast float %2916, %2836
  %3057 = fmul fast float %2917, %2836
  %3058 = fmul fast float %2918, %2836
  %3059 = fadd fast float %3056, %2734
  %3060 = fadd fast float %3057, %2735
  %3061 = fadd fast float %3058, %2736
  %3062 = fsub fast float %2732, %2836
  br label %2838

; <label>:3063                                    ; preds = %2838
  br label %3064

; <label>:3064                                    ; preds = %3063, %2695
  %3065 = phi float [ %2696, %2695 ], [ %2839, %3063 ]
  %3066 = phi float [ %2697, %2695 ], [ %2840, %3063 ]
  %3067 = phi float [ %2698, %2695 ], [ %2841, %3063 ]
  %3068 = phi float [ %2699, %2695 ], [ %2842, %3063 ]
  %3069 = phi float [ %2701, %2695 ], [ %2843, %3063 ]
  %3070 = phi float [ %2702, %2695 ], [ %2844, %3063 ]
  %3071 = phi float [ %2703, %2695 ], [ %2845, %3063 ]
  %3072 = add i32 %2700, 1
  %3073 = icmp ugt i32 %3072, %2692
  br i1 %3073, label %3074, label %2695, !llvm.loop !94

; <label>:3074                                    ; preds = %3064
  br label %3075

; <label>:3075                                    ; preds = %3074, %2677
  %3076 = phi float [ 0.000000e+00, %2677 ], [ %3065, %3074 ]
  %3077 = phi float [ 0.000000e+00, %2677 ], [ %3066, %3074 ]
  %3078 = phi float [ 0.000000e+00, %2677 ], [ %3067, %3074 ]
  %3079 = phi float [ 0.000000e+00, %2677 ], [ %3069, %3074 ]
  %3080 = phi float [ 0.000000e+00, %2677 ], [ %3070, %3074 ]
  %3081 = phi float [ 0.000000e+00, %2677 ], [ %3071, %3074 ]
  %3082 = call float @dx.op.dot3.f32(i32 55, float %3076, float %3077, float %3078, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3083 = select i1 %212, float 0.000000e+00, float %3076
  %3084 = select i1 %212, float %3082, float %3077
  %3085 = select i1 %212, float 0.000000e+00, float %3078
  %3086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3087 = extractvalue %dx.types.CBufRet.f32 %3086, 0
  %3088 = extractvalue %dx.types.CBufRet.f32 %3086, 1
  %3089 = extractvalue %dx.types.CBufRet.f32 %3086, 2
  %3090 = extractvalue %dx.types.CBufRet.f32 %3086, 3
  %3091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3092 = extractvalue %dx.types.CBufRet.f32 %3091, 0
  %3093 = extractvalue %dx.types.CBufRet.f32 %3091, 1
  %3094 = extractvalue %dx.types.CBufRet.f32 %3091, 2
  %3095 = extractvalue %dx.types.CBufRet.f32 %3091, 3
  %3096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3097 = extractvalue %dx.types.CBufRet.f32 %3096, 0
  %3098 = extractvalue %dx.types.CBufRet.f32 %3096, 1
  %3099 = extractvalue %dx.types.CBufRet.f32 %3096, 2
  %3100 = extractvalue %dx.types.CBufRet.f32 %3096, 3
  %3101 = call float @dx.op.dot3.f32(i32 55, float %3097, float %3098, float %3099, float %2231, float %2232, float %2233)  ; Dot3(ax,ay,az,bx,by,bz)
  %3102 = call float @dx.op.dot3.f32(i32 55, float %3079, float %3080, float %3081, float %3097, float %3098, float %3099)  ; Dot3(ax,ay,az,bx,by,bz)
  %3103 = call float @dx.op.dot3.f32(i32 55, float %150, float %151, float %152, float %3097, float %3098, float %3099)  ; Dot3(ax,ay,az,bx,by,bz)
  %3104 = fadd fast float %2217, -1.000000e+00
  %3105 = fsub fast float %3102, %3103
  %3106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3107 = extractvalue %dx.types.CBufRet.f32 %3106, 2
  %3108 = fmul fast float %3107, %3102
  %3109 = fdiv fast float 1.600000e+02, %3108
  %3110 = fmul fast float %3104, %3104
  %3111 = fmul fast float %3110, 0xBFB5B17960000000
  %3112 = fmul fast float %3111, %3105
  %3113 = fmul fast float %3112, %3109
  %3114 = call float @dx.op.unary.f32(i32 21, float %3113)  ; Exp(value)
  %3115 = fmul fast float %3114, 0x3FF04B2960000000
  %3116 = fsub fast float 0x3FF04B2960000000, %3115
  %3117 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3118 = fmul fast float %3117, 4.000000e+00
  %3119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.f32 %3119, 0
  %3121 = extractvalue %dx.types.CBufRet.f32 %3119, 1
  %3122 = extractvalue %dx.types.CBufRet.f32 %3119, 2
  %3123 = fadd fast float %3120, %3079
  %3124 = fadd fast float %3121, %3080
  %3125 = fadd fast float %3122, %3081
  %3126 = fmul fast float %3123, %3087
  %3127 = call float @dx.op.tertiary.f32(i32 46, float %3124, float %3088, float %3126)  ; FMad(a,b,c)
  %3128 = call float @dx.op.tertiary.f32(i32 46, float %3125, float %3089, float %3127)  ; FMad(a,b,c)
  %3129 = fadd fast float %3128, %3090
  %3130 = fmul fast float %3123, %3092
  %3131 = call float @dx.op.tertiary.f32(i32 46, float %3124, float %3093, float %3130)  ; FMad(a,b,c)
  %3132 = call float @dx.op.tertiary.f32(i32 46, float %3125, float %3094, float %3131)  ; FMad(a,b,c)
  %3133 = fadd fast float %3132, %3095
  %3134 = fmul fast float %3123, %3097
  %3135 = call float @dx.op.tertiary.f32(i32 46, float %3124, float %3098, float %3134)  ; FMad(a,b,c)
  %3136 = call float @dx.op.tertiary.f32(i32 46, float %3125, float %3099, float %3135)  ; FMad(a,b,c)
  %3137 = fadd fast float %3136, %3100
  %3138 = fdiv fast float %3129, %3137
  %3139 = fdiv fast float %3133, %3137
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.CBufRet.f32 %3140, 1
  %3143 = fmul fast float %3141, %3138
  %3144 = fmul fast float %3142, %3139
  %3145 = extractvalue %dx.types.CBufRet.f32 %3140, 2
  %3146 = extractvalue %dx.types.CBufRet.f32 %3140, 3
  %3147 = fadd fast float %3143, %3145
  %3148 = fadd fast float %3144, %3146
  %3149 = fmul fast float %3101, 8.000000e+00
  %3150 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3152 = extractvalue %dx.types.CBufRet.f32 %3151, 0
  %3153 = fmul fast float %3147, 2.000000e+00
  %3154 = fmul fast float %3148, 2.000000e+00
  %3155 = fadd fast float %3153, -1.000000e+00
  %3156 = fadd fast float %3154, -1.000000e+00
  %3157 = fmul fast float %3155, %3155
  %3158 = fsub fast float 1.000000e+00, %3157
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3160 = fmul fast float %3156, %3156
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = call float @dx.op.unary.f32(i32 7, float %3161)  ; Saturate(value)
  %3163 = fmul fast float %3152, %3159
  %3164 = fmul fast float %3163, %3162
  %3165 = call float @dx.op.unary.f32(i32 7, float %3164)  ; Saturate(value)
  %3166 = fmul fast float %3165, %3150
  %3167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %49, float %3147, float %3148, float undef, float undef, i32 0, i32 0, i32 undef, float %3118)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.ResRet.f32 %3167, 1
  %3170 = extractvalue %dx.types.ResRet.f32 %3167, 2
  %3171 = select i1 %212, float 0.000000e+00, float %3169
  %3172 = select i1 %212, float 0.000000e+00, float %3170
  %3173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3174 = extractvalue %dx.types.CBufRet.f32 %3173, 2
  %3175 = fmul fast float %3174, %3168
  %3176 = fmul fast float %3171, %3174
  %3177 = fmul fast float %3172, %3174
  %3178 = fsub fast float %3175, %3083
  %3179 = fsub fast float %3176, %3084
  %3180 = fsub fast float %3177, %3085
  %3181 = fmul fast float %3178, %3166
  %3182 = fmul fast float %3179, %3166
  %3183 = fmul fast float %3180, %3166
  %3184 = fadd fast float %3181, %3083
  %3185 = fadd fast float %3182, %3084
  %3186 = fadd fast float %3183, %3085
  br label %3187

; <label>:3187                                    ; preds = %3075, %2586
  %3188 = phi float [ %2532, %2586 ], [ %3184, %3075 ]
  %3189 = phi float [ %2533, %2586 ], [ %3185, %3075 ]
  %3190 = phi float [ %2534, %2586 ], [ %3186, %3075 ]
  %3191 = call float @dx.op.dot3.f32(i32 55, float %2214, float %2215, float %2216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3192 = fcmp fast ogt float %3191, 0x3E7FF19E20000000
  %3193 = fdiv fast float 1.000000e+00, %3191
  %3194 = select i1 %3192, float %3193, float 0.000000e+00
  %3195 = fmul fast float %3194, %2214
  %3196 = fmul fast float %3194, %2215
  %3197 = fmul fast float %3194, %2216
  %3198 = fadd fast float %3195, -1.000000e+00
  %3199 = fadd fast float %3196, -1.000000e+00
  %3200 = fadd fast float %3197, -1.000000e+00
  %3201 = fmul fast float %3198, 5.000000e-01
  %3202 = fmul fast float %3199, 5.000000e-01
  %3203 = fmul fast float %3200, 5.000000e-01
  %3204 = fadd fast float %3201, 1.000000e+00
  %3205 = fadd fast float %3202, 1.000000e+00
  %3206 = fadd fast float %3203, 1.000000e+00
  %3207 = call float @dx.op.binary.f32(i32 35, float %2225, float 0x3F50624DE0000000)  ; FMax(a,b)
  %3208 = fdiv fast float %913, %3207
  %3209 = fcmp fast olt float %1580, 1.270000e+02
  %3210 = fcmp fast olt float %1581, 1.270000e+02
  %3211 = fcmp fast olt float %1582, 1.270000e+02
  %3212 = fmul fast float %1580, 0xBFF7154760000000
  %3213 = fmul fast float %3212, %3208
  %3214 = fmul fast float %1581, 0xBFF7154760000000
  %3215 = fmul fast float %3214, %3208
  %3216 = fmul fast float %1582, 0xBFF7154760000000
  %3217 = fmul fast float %3216, %3208
  %3218 = call float @dx.op.unary.f32(i32 21, float %3213)  ; Exp(value)
  %3219 = call float @dx.op.unary.f32(i32 21, float %3215)  ; Exp(value)
  %3220 = call float @dx.op.unary.f32(i32 21, float %3217)  ; Exp(value)
  %3221 = call float @dx.op.unary.f32(i32 7, float %3218)  ; Saturate(value)
  %3222 = call float @dx.op.unary.f32(i32 7, float %3219)  ; Saturate(value)
  %3223 = call float @dx.op.unary.f32(i32 7, float %3220)  ; Saturate(value)
  %3224 = select i1 %3209, float %3221, float 0.000000e+00
  %3225 = select i1 %3210, float %3222, float 0.000000e+00
  %3226 = select i1 %3211, float %3223, float 0.000000e+00
  %3227 = fmul fast float %3224, %2592
  %3228 = fmul fast float %3225, %2592
  %3229 = fmul fast float %3226, %2592
  %3230 = fadd fast float %3227, -1.000000e+00
  %3231 = fadd fast float %3228, -1.000000e+00
  %3232 = fadd fast float %3229, -1.000000e+00
  %3233 = fmul fast float %3230, %1530
  %3234 = fmul fast float %3231, %1530
  %3235 = fmul fast float %3232, %1530
  %3236 = fmul fast float %3188, %2587
  %3237 = fmul fast float %3189, %2588
  %3238 = fmul fast float %3190, %2589
  %3239 = fsub fast float 1.000000e+00, %2225
  %3240 = bitcast float %3239 to i32
  %3241 = sitofp i32 %3240 to float
  %3242 = fmul fast float %3241, 5.000000e+00
  %3243 = fadd fast float %3242, 0xC1EFBF8940000000
  %3244 = fptosi float %3243 to i32
  %3245 = bitcast i32 %3244 to float
  %3246 = fmul fast float %3245, %1506
  %3247 = fmul fast float %2524, %3246
  %3248 = fmul fast float %3247, %2592
  %3249 = fmul fast float %3248, %3204
  %3250 = fmul fast float %2525, %3246
  %3251 = fmul fast float %3250, %2592
  %3252 = fmul fast float %3251, %3205
  %3253 = fmul fast float %2526, %3246
  %3254 = fmul fast float %3253, %2592
  %3255 = fmul fast float %3254, %3206
  %3256 = fadd fast float %3236, %1511
  %3257 = fadd fast float %3256, %3249
  %3258 = fmul fast float %3257, %1530
  %3259 = fadd fast float %3237, %1512
  %3260 = fadd fast float %3259, %3252
  %3261 = fmul fast float %3260, %1530
  %3262 = fadd fast float %3238, %1513
  %3263 = fadd fast float %3262, %3255
  %3264 = fmul fast float %3263, %1530
  %3265 = fmul fast float %2209, 0x4012D0A400000000
  %3266 = fadd fast float %3235, 1.000000e+00
  %3267 = fadd fast float %3234, 1.000000e+00
  %3268 = fadd fast float %3233, 1.000000e+00
  %3269 = fmul fast float %2592, %2526
  %3270 = fmul fast float %2592, %2525
  %3271 = fmul fast float %2592, %2524
  %3272 = fmul fast float %2280, %1530
  %3273 = fsub fast float 1.000000e+00, %3272
  %3274 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  %3275 = fsub fast float 1.000000e+00, %3274
  %3276 = fadd fast float %3265, 0x3FDB6377A0000000
  %3277 = fmul fast float %3275, %3276
  %3278 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1599, float %1600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = fadd fast float %3277, %3278
  %3280 = call float @dx.op.unary.f32(i32 7, float %3279)  ; Saturate(value)
  %3281 = call float @dx.op.binary.f32(i32 35, float %3280, float 0x3F847AE140000000)  ; FMax(a,b)
  %3282 = fmul fast float %3281, %3281
  %3283 = fmul fast float %3282, %3282
  %3284 = fmul fast float %3283, 0xC00A935000000000
  %3285 = call float @dx.op.unary.f32(i32 21, float %3284)  ; Exp(value)
  %3286 = fsub fast float 1.000000e+00, %3285
  %3287 = fmul fast float %3268, %2528
  %3288 = fmul fast float %3287, %3286
  %3289 = fmul fast float %3267, %2529
  %3290 = fmul fast float %3289, %3286
  %3291 = fmul fast float %3266, %2530
  %3292 = fmul fast float %3291, %3286
  %3293 = fadd fast float %3288, %3271
  %3294 = fmul fast float %3293, %1530
  %3295 = fadd fast float %3290, %3270
  %3296 = fmul fast float %3295, %1530
  %3297 = fadd fast float %3292, %3269
  %3298 = fmul fast float %3297, %1530
  %3299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3300 = extractvalue %dx.types.CBufRet.f32 %3299, 3
  %3301 = fcmp fast oeq float %3300, 0.000000e+00
  br i1 %3301, label %4993, label %3302

; <label>:3302                                    ; preds = %3187
  %3303 = extractvalue %dx.types.CBufRet.f32 %3299, 0
  %3304 = extractvalue %dx.types.CBufRet.f32 %3299, 1
  %3305 = extractvalue %dx.types.CBufRet.f32 %3299, 2
  %3306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.CBufRet.f32 %3306, 1
  %3309 = extractvalue %dx.types.CBufRet.f32 %3306, 2
  %3310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3311 = extractvalue %dx.types.CBufRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.CBufRet.f32 %3310, 1
  %3313 = call float @dx.op.dot3.f32(i32 55, float %3307, float %3308, float %3309, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3314 = select i1 %212, float %3311, float %3307
  %3315 = select i1 %212, float %3313, float %3308
  %3316 = select i1 %212, float %3312, float %3309
  %3317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3318 = extractvalue %dx.types.CBufRet.f32 %3317, 2
  %3319 = fmul fast float %3318, %98
  %3320 = fmul fast float %3318, %99
  %3321 = fmul fast float %3318, %100
  %3322 = fadd fast float %3319, %150
  %3323 = fadd fast float %3320, %151
  %3324 = fadd fast float %3321, %152
  %3325 = fcmp fast olt float %3300, 0.000000e+00
  br i1 %3325, label %4421, label %3326

; <label>:3326                                    ; preds = %3302
  %3327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3328 = extractvalue %dx.types.CBufRet.f32 %3327, 0
  %3329 = extractvalue %dx.types.CBufRet.f32 %3327, 1
  %3330 = extractvalue %dx.types.CBufRet.f32 %3327, 2
  %3331 = extractvalue %dx.types.CBufRet.f32 %3327, 3
  %3332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.f32 %3332, 0
  %3334 = extractvalue %dx.types.CBufRet.f32 %3332, 1
  %3335 = extractvalue %dx.types.CBufRet.f32 %3332, 2
  %3336 = extractvalue %dx.types.CBufRet.f32 %3332, 3
  %3337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3338 = extractvalue %dx.types.CBufRet.f32 %3337, 0
  %3339 = extractvalue %dx.types.CBufRet.f32 %3337, 1
  %3340 = extractvalue %dx.types.CBufRet.f32 %3337, 2
  %3341 = extractvalue %dx.types.CBufRet.f32 %3337, 3
  %3342 = fmul fast float %3328, %3322
  %3343 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3329, float %3342)  ; FMad(a,b,c)
  %3344 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3330, float %3343)  ; FMad(a,b,c)
  %3345 = fadd fast float %3344, %3331
  %3346 = fmul fast float %3333, %3322
  %3347 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3334, float %3346)  ; FMad(a,b,c)
  %3348 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3335, float %3347)  ; FMad(a,b,c)
  %3349 = fadd fast float %3348, %3336
  %3350 = fmul fast float %3338, %3322
  %3351 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3339, float %3350)  ; FMad(a,b,c)
  %3352 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3340, float %3351)  ; FMad(a,b,c)
  %3353 = fadd fast float %3352, %3341
  %3354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3355 = extractvalue %dx.types.CBufRet.f32 %3354, 0
  %3356 = extractvalue %dx.types.CBufRet.f32 %3354, 1
  %3357 = extractvalue %dx.types.CBufRet.f32 %3354, 3
  %3358 = fmul fast float %3357, %3345
  %3359 = fmul fast float %3357, %3349
  %3360 = fadd fast float %3358, %3355
  %3361 = fadd fast float %3359, %3356
  %3362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3362, 0
  %3364 = extractvalue %dx.types.CBufRet.f32 %3362, 1
  %3365 = extractvalue %dx.types.CBufRet.f32 %3362, 3
  %3366 = fmul fast float %3365, %3345
  %3367 = fmul fast float %3365, %3349
  %3368 = fadd fast float %3366, %3363
  %3369 = fadd fast float %3367, %3364
  %3370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3371 = extractvalue %dx.types.CBufRet.f32 %3370, 1
  %3372 = fsub fast float %3371, %3353
  %3373 = extractvalue %dx.types.CBufRet.f32 %3370, 2
  %3374 = fmul fast float %3372, %3373
  %3375 = fsub fast float 1.000000e+00, %3374
  %3376 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3362, 2
  %3378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3379 = extractvalue %dx.types.CBufRet.f32 %3378, 2
  %3380 = fadd fast float %3379, %3377
  %3381 = fcmp fast ogt float %3380, 0.000000e+00
  br i1 %3381, label %3382, label %3406

; <label>:3382                                    ; preds = %3326
  %3383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3384 = extractvalue %dx.types.CBufRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.CBufRet.f32 %3383, 1
  %3386 = fsub fast float %3368, %3384
  %3387 = fsub fast float %3369, %3385
  %3388 = fcmp fast olt float %3386, 0.000000e+00
  %3389 = fcmp fast olt float %3387, 0.000000e+00
  %3390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3391 = extractvalue %dx.types.CBufRet.f32 %3390, 0
  %3392 = extractvalue %dx.types.CBufRet.f32 %3390, 1
  %3393 = extractvalue %dx.types.CBufRet.f32 %3390, 2
  %3394 = extractvalue %dx.types.CBufRet.f32 %3390, 3
  %3395 = select i1 %3388, float %3391, float %3393
  %3396 = select i1 %3389, float %3392, float %3394
  %3397 = fmul fast float %3395, %3386
  %3398 = fmul fast float %3396, %3387
  %3399 = call float @dx.op.unary.f32(i32 6, float %3397)  ; FAbs(value)
  %3400 = call float @dx.op.unary.f32(i32 6, float %3398)  ; FAbs(value)
  %3401 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  %3402 = call float @dx.op.binary.f32(i32 35, float %3399, float %3400)  ; FMax(a,b)
  %3403 = fsub fast float %3401, %3402
  %3404 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  %3405 = fmul fast float %3404, %3376
  br label %3406

; <label>:3406                                    ; preds = %3382, %3326
  %3407 = phi float [ %3405, %3382 ], [ 0.000000e+00, %3326 ]
  %3408 = extractvalue %dx.types.CBufRet.f32 %3354, 2
  %3409 = extractvalue %dx.types.CBufRet.f32 %3378, 1
  %3410 = fadd fast float %3409, %3408
  %3411 = fcmp fast ogt float %3410, 0.000000e+00
  %3412 = extractvalue %dx.types.CBufRet.f32 %3317, 0
  br i1 %3411, label %3413, label %3436

; <label>:3413                                    ; preds = %3406
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 0
  %3416 = extractvalue %dx.types.CBufRet.f32 %3414, 1
  %3417 = fsub fast float %3360, %3415
  %3418 = fsub fast float %3361, %3416
  %3419 = fcmp fast olt float %3417, 0.000000e+00
  %3420 = fcmp fast olt float %3418, 0.000000e+00
  %3421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3422 = extractvalue %dx.types.CBufRet.f32 %3421, 0
  %3423 = extractvalue %dx.types.CBufRet.f32 %3421, 1
  %3424 = extractvalue %dx.types.CBufRet.f32 %3421, 2
  %3425 = extractvalue %dx.types.CBufRet.f32 %3421, 3
  %3426 = select i1 %3419, float %3422, float %3424
  %3427 = select i1 %3420, float %3423, float %3425
  %3428 = fmul fast float %3426, %3417
  %3429 = fmul fast float %3427, %3418
  %3430 = call float @dx.op.unary.f32(i32 6, float %3428)  ; FAbs(value)
  %3431 = call float @dx.op.unary.f32(i32 6, float %3429)  ; FAbs(value)
  %3432 = call float @dx.op.binary.f32(i32 35, float %3430, float %3431)  ; FMax(a,b)
  %3433 = fsub fast float %3412, %3432
  %3434 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3435 = fmul fast float %3434, %3376
  br label %3436

; <label>:3436                                    ; preds = %3413, %3406
  %3437 = phi float [ %3435, %3413 ], [ 0.000000e+00, %3406 ]
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 1
  %3440 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3442 = extractvalue %dx.types.CBufRet.f32 %3441, 0
  %3443 = extractvalue %dx.types.CBufRet.f32 %3441, 1
  %3444 = fsub fast float %3345, %3442
  %3445 = fsub fast float %3349, %3443
  %3446 = fcmp fast olt float %3444, 0.000000e+00
  %3447 = fcmp fast olt float %3445, 0.000000e+00
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.CBufRet.f32 %3448, 2
  %3452 = extractvalue %dx.types.CBufRet.f32 %3448, 3
  %3453 = select i1 %3446, float %3449, float %3451
  %3454 = select i1 %3447, float %3450, float %3452
  %3455 = fmul fast float %3453, %3444
  %3456 = fmul fast float %3454, %3445
  %3457 = call float @dx.op.unary.f32(i32 6, float %3455)  ; FAbs(value)
  %3458 = call float @dx.op.unary.f32(i32 6, float %3456)  ; FAbs(value)
  %3459 = call float @dx.op.binary.f32(i32 35, float %3457, float %3458)  ; FMax(a,b)
  %3460 = fsub fast float %3412, %3459
  %3461 = call float @dx.op.unary.f32(i32 7, float %3460)  ; Saturate(value)
  %3462 = call float @dx.op.binary.f32(i32 36, float %3461, float %3440)  ; FMin(a,b)
  %3463 = fmul fast float %3462, %3376
  %3464 = fsub fast float %3437, %3463
  %3465 = fsub fast float %3407, %3437
  %3466 = fsub fast float %3465, %3463
  %3467 = call float @dx.op.binary.f32(i32 35, float %3437, float %3407)  ; FMax(a,b)
  %3468 = call float @dx.op.binary.f32(i32 35, float %3463, float %3467)  ; FMax(a,b)
  %3469 = fcmp fast olt float %3468, 1.000000e+00
  br i1 %3469, label %3470, label %3868, !dx.controlflow.hints !96

; <label>:3470                                    ; preds = %3436
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  %3473 = fcmp fast une float %3472, 0.000000e+00
  br i1 %3473, label %3474, label %3868, !dx.controlflow.hints !97

; <label>:3474                                    ; preds = %3470
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3477 = extractvalue %dx.types.CBufRet.f32 %3475, 1
  %3478 = extractvalue %dx.types.CBufRet.f32 %3475, 2
  %3479 = extractvalue %dx.types.CBufRet.f32 %3475, 3
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.CBufRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.CBufRet.f32 %3480, 2
  %3484 = extractvalue %dx.types.CBufRet.f32 %3480, 3
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.CBufRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.CBufRet.f32 %3485, 2
  %3489 = extractvalue %dx.types.CBufRet.f32 %3485, 3
  %3490 = fmul fast float %3476, %3322
  %3491 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3477, float %3490)  ; FMad(a,b,c)
  %3492 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3478, float %3491)  ; FMad(a,b,c)
  %3493 = fadd fast float %3492, %3479
  %3494 = fmul fast float %3481, %3322
  %3495 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3482, float %3494)  ; FMad(a,b,c)
  %3496 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3483, float %3495)  ; FMad(a,b,c)
  %3497 = fadd fast float %3496, %3484
  %3498 = fmul fast float %3486, %3322
  %3499 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %3487, float %3498)  ; FMad(a,b,c)
  %3500 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %3488, float %3499)  ; FMad(a,b,c)
  %3501 = fadd fast float %3500, %3489
  %3502 = fcmp fast oge float %3493, 1.000000e+00
  %3503 = fcmp fast oge float %3497, 1.000000e+00
  %3504 = or i1 %3502, %3503
  %3505 = fcmp fast olt float %3493, 0.000000e+00
  %3506 = fcmp fast olt float %3497, 0.000000e+00
  %3507 = or i1 %3505, %3506
  %3508 = or i1 %3504, %3507
  br i1 %3508, label %3868, label %3509, !dx.controlflow.hints !98

; <label>:3509                                    ; preds = %3474
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.CBufRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.CBufRet.f32 %3510, 2
  %3514 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.i32 %3514, 2
  %3516 = uitofp i32 %3515 to float
  %3517 = extractvalue %dx.types.CBufRet.i32 %3514, 3
  %3518 = uitofp i32 %3517 to float
  %3519 = extractvalue %dx.types.CBufRet.f32 %3510, 3
  %3520 = fmul fast float %3519, 2.000000e+00
  %3521 = fsub fast float %3493, %3511
  %3522 = fsub fast float %3497, %3512
  %3523 = fmul fast float %3520, %3521
  %3524 = fmul fast float %3520, %3522
  %3525 = fdiv fast float 1.000000e+00, %3305
  %3526 = fmul fast float %3524, %3525
  %3527 = call float @dx.op.unary.f32(i32 6, float %3526)  ; FAbs(value)
  %3528 = fmul fast float %3513, %3324
  %3529 = fmul fast float %3528, %3520
  %3530 = call float @dx.op.unary.f32(i32 6, float %3529)  ; FAbs(value)
  %3531 = call float @dx.op.unary.f32(i32 6, float %3523)  ; FAbs(value)
  %3532 = call float @dx.op.binary.f32(i32 35, float %3530, float %3527)  ; FMax(a,b)
  %3533 = call float @dx.op.binary.f32(i32 35, float %3531, float %3532)  ; FMax(a,b)
  %3534 = fmul fast float %3533, 2.000000e+00
  %3535 = call float @dx.op.unary.f32(i32 23, float %3534)  ; Log(value)
  %3536 = call float @dx.op.binary.f32(i32 35, float %3535, float %3516)  ; FMax(a,b)
  %3537 = call float @dx.op.unary.f32(i32 22, float %3536)  ; Frc(value)
  %3538 = fadd fast float %3537, 0xBFEA666660000000
  %3539 = fmul fast float %3538, 8.000000e+00
  %3540 = call float @dx.op.unary.f32(i32 7, float %3539)  ; Saturate(value)
  %3541 = call float @dx.op.unary.f32(i32 27, float %3536)  ; Round_ni(value)
  %3542 = fadd fast float %3541, %3540
  %3543 = call float @dx.op.binary.f32(i32 36, float %3542, float %3518)  ; FMin(a,b)
  %3544 = call float @dx.op.unary.f32(i32 27, float %3543)  ; Round_ni(value)
  %3545 = fsub fast float -0.000000e+00, %3544
  %3546 = call float @dx.op.unary.f32(i32 21, float %3545)  ; Exp(value)
  %3547 = fmul fast float %3546, %3520
  %3548 = fmul fast float %3547, %3493
  %3549 = fmul fast float %3547, %3497
  %3550 = fmul fast float %3548, 2.500000e-01
  %3551 = fmul fast float %3549, 2.500000e-01
  %3552 = fadd fast float %3550, 5.000000e-01
  %3553 = fadd fast float %3551, 5.000000e-01
  %3554 = fsub fast float %3518, %3516
  %3555 = fptoui float %3554 to i32
  %3556 = add i32 %3555, 320
  %3557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %3556)  ; CBufferLoadLegacy(handle,regIndex)
  %3558 = extractvalue %dx.types.CBufRet.f32 %3557, 0
  %3559 = extractvalue %dx.types.CBufRet.f32 %3557, 1
  %3560 = fcmp fast une float %3543, %3518
  %3561 = fsub fast float %3493, %3558
  %3562 = fsub fast float %3497, %3559
  %3563 = call float @dx.op.unary.f32(i32 6, float %3561)  ; FAbs(value)
  %3564 = call float @dx.op.unary.f32(i32 6, float %3562)  ; FAbs(value)
  %3565 = fmul fast float %3563, %3547
  %3566 = fmul fast float %3564, %3547
  %3567 = fcmp fast olt float %3565, 1.000000e+00
  %3568 = fcmp fast olt float %3566, 1.000000e+00
  %3569 = and i1 %3567, %3568
  %3570 = or i1 %3560, %3569
  br i1 %3570, label %3571, label %3868, !dx.controlflow.hints !99

; <label>:3571                                    ; preds = %3509
  %3572 = fmul fast float %3549, 5.000000e-01
  %3573 = fmul fast float %3548, 5.000000e-01
  %3574 = fadd fast float %3572, 5.000000e-01
  %3575 = fadd fast float %3573, 5.000000e-01
  %3576 = sitofp i32 %3515 to float
  %3577 = fsub fast float %3543, %3576
  %3578 = call float @dx.op.unary.f32(i32 27, float %3577)  ; Round_ni(value)
  %3579 = call float @dx.op.unary.f32(i32 22, float %3543)  ; Frc(value)
  %3580 = call float @dx.op.unary.f32(i32 22, float %3575)  ; Frc(value)
  %3581 = call float @dx.op.unary.f32(i32 22, float %3574)  ; Frc(value)
  %3582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %3580, float %3581, float %3578, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = extractvalue %dx.types.ResRet.f32 %3582, 3
  %3587 = fcmp fast ogt float %3579, 0.000000e+00
  br i1 %3587, label %3588, label %3609, !dx.controlflow.hints !100

; <label>:3588                                    ; preds = %3571
  %3589 = fadd fast float %3578, 1.000000e+00
  %3590 = call float @dx.op.unary.f32(i32 22, float %3552)  ; Frc(value)
  %3591 = call float @dx.op.unary.f32(i32 22, float %3553)  ; Frc(value)
  %3592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %50, float %3590, float %3591, float %3589, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.ResRet.f32 %3592, 1
  %3595 = extractvalue %dx.types.ResRet.f32 %3592, 2
  %3596 = extractvalue %dx.types.ResRet.f32 %3592, 3
  %3597 = fsub fast float %3593, %3583
  %3598 = fsub fast float %3594, %3584
  %3599 = fsub fast float %3595, %3585
  %3600 = fsub fast float %3596, %3586
  %3601 = fmul fast float %3597, %3579
  %3602 = fmul fast float %3598, %3579
  %3603 = fmul fast float %3599, %3579
  %3604 = fmul fast float %3600, %3579
  %3605 = fadd fast float %3601, %3583
  %3606 = fadd fast float %3602, %3584
  %3607 = fadd fast float %3603, %3585
  %3608 = fadd fast float %3604, %3586
  br label %3609

; <label>:3609                                    ; preds = %3588, %3571
  %3610 = phi float [ %3605, %3588 ], [ %3583, %3571 ]
  %3611 = phi float [ %3606, %3588 ], [ %3584, %3571 ]
  %3612 = phi float [ %3607, %3588 ], [ %3585, %3571 ]
  %3613 = phi float [ %3608, %3588 ], [ %3586, %3571 ]
  %3614 = fadd fast float %3610, -5.000000e-01
  %3615 = fadd fast float %3612, -5.000000e-01
  %3616 = fmul fast float %3614, 0xBFD5555560000000
  %3617 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %3615, float %3616)  ; FMad(a,b,c)
  %3618 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %3611, float 0.000000e+00)  ; FMad(a,b,c)
  %3619 = fadd fast float %3618, %3613
  %3620 = fmul fast float %3614, -7.500000e-01
  %3621 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %3615, float %3620)  ; FMad(a,b,c)
  %3622 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %3611, float 0.000000e+00)  ; FMad(a,b,c)
  %3623 = fadd fast float %3622, %3613
  %3624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.f32 %3624, 0
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.CBufRet.f32 %3626, 1
  %3629 = extractvalue %dx.types.CBufRet.f32 %3626, 2
  %3630 = extractvalue %dx.types.CBufRet.f32 %3626, 3
  %3631 = fsub fast float %3627, %3617
  %3632 = fsub fast float %3628, %3619
  %3633 = fsub fast float %3629, %3621
  %3634 = fsub fast float %3630, %3623
  %3635 = fmul fast float %3631, %3625
  %3636 = fmul fast float %3632, %3625
  %3637 = fmul fast float %3633, %3625
  %3638 = fmul fast float %3634, %3625
  %3639 = fadd fast float %3635, %3617
  %3640 = fadd fast float %3636, %3619
  %3641 = fadd fast float %3637, %3621
  %3642 = fadd fast float %3638, %3623
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = and i32 %3644, 536870911
  %3646 = uitofp i32 %3645 to float
  %3647 = fmul fast float %3646, %3493
  %3648 = fmul fast float %3646, %3497
  %3649 = fptoui float %3647 to i32
  %3650 = fptoui float %3648 to i32
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = and i32 %3652, 31
  %3654 = lshr i32 %3649, %3653
  %3655 = lshr i32 %3650, %3653
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = and i32 %3657, 31
  %3659 = shl i32 1, %3658
  %3660 = call i32 @dx.op.binary.i32(i32 40, i32 %3659, i32 4)  ; UMin(a,b)
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.i32 %3661, 1
  %3664 = icmp eq i32 %3660, 0
  br i1 %3664, label %3706, label %3665

; <label>:3665                                    ; preds = %3609
  br label %3666

; <label>:3666                                    ; preds = %3694, %3665
  %3667 = phi i32 [ %3697, %3694 ], [ 0, %3665 ]
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = lshr i32 %3669, 16
  %3671 = and i32 %3670, 31
  %3672 = shl i32 %3655, %3671
  %3673 = add i32 %3672, %3654
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = and i32 %3675, 31
  %3677 = shl i32 %3673, %3676
  %3678 = add i32 %3677, %3667
  %3679 = shl i32 %3678, 2
  %3680 = add i32 %3679, 32
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = icmp slt i32 %3682, 0
  %3684 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3667
  %3685 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %3667
  %3686 = bitcast float* %3684 to i32*
  %3687 = bitcast float* %3685 to i32*
  br i1 %3683, label %3688, label %3694

; <label>:3688                                    ; preds = %3666
  %3689 = and i32 %3682, 1073741823
  %3690 = add nuw nsw i32 %3689, 20
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = extractvalue %dx.types.ResRet.i32 %3691, 1
  br label %3694

; <label>:3694                                    ; preds = %3688, %3666
  %3695 = phi i32 [ %3692, %3688 ], [ %3662, %3666 ]
  %3696 = phi i32 [ %3693, %3688 ], [ %3663, %3666 ]
  store i32 %3695, i32* %3686, align 4
  store i32 %3696, i32* %3687, align 4
  %3697 = add nuw i32 %3667, 1
  %3698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.i32 %3698, 2
  %3700 = icmp eq i32 %3699, 0
  %3701 = icmp ugt i32 %3682, -1073741825
  %3702 = and i1 %3701, %3700
  %3703 = icmp ult i32 %3697, %3660
  %3704 = and i1 %3702, %3703
  br i1 %3704, label %3666, label %3705

; <label>:3705                                    ; preds = %3694
  br label %3706

; <label>:3706                                    ; preds = %3705, %3609
  %3707 = phi i32 [ 0, %3609 ], [ %3697, %3705 ]
  %3708 = extractvalue %dx.types.CBufRet.f32 %3471, 2
  %3709 = fptoui float %3708 to i32
  %3710 = icmp eq i32 %3709, 0
  br i1 %3710, label %3762, label %3711

; <label>:3711                                    ; preds = %3706
  br label %3712

; <label>:3712                                    ; preds = %3757, %3711
  %3713 = phi i32 [ %3758, %3757 ], [ %3707, %3711 ]
  %3714 = phi i32 [ %3759, %3757 ], [ 0, %3711 ]
  %3715 = lshr i32 %3714, 2
  %3716 = and i32 %3714, 3
  %3717 = add nuw nsw i32 %3715, 83
  %3718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 %3717)  ; CBufferLoadLegacy(handle,regIndex)
  %3719 = extractvalue %dx.types.CBufRet.i32 %3718, 0
  %3720 = extractvalue %dx.types.CBufRet.i32 %3718, 1
  %3721 = extractvalue %dx.types.CBufRet.i32 %3718, 2
  %3722 = extractvalue %dx.types.CBufRet.i32 %3718, 3
  %3723 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 0
  store i32 %3719, i32* %3723, align 4
  %3724 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 1
  store i32 %3720, i32* %3724, align 4
  %3725 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 2
  store i32 %3721, i32* %3725, align 4
  %3726 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 3
  store i32 %3722, i32* %3726, align 4
  %3727 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i32 0, i32 %3716
  %3728 = load i32, i32* %3727, align 4, !tbaa !101, !noalias !105
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = lshr i32 %3730, 16
  %3732 = and i32 %3731, 31
  %3733 = shl i32 %3655, %3732
  %3734 = add i32 %3733, %3654
  %3735 = shl i32 %3734, 2
  %3736 = add i32 %3735, %3728
  %3737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.i32 %3737, 0
  %3739 = icmp eq i32 %3738, 0
  br i1 %3739, label %3757, label %3740

; <label>:3740                                    ; preds = %3712
  %3741 = icmp slt i32 %3738, 0
  %3742 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3713
  %3743 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %3713
  %3744 = bitcast float* %3742 to i32*
  %3745 = bitcast float* %3743 to i32*
  br i1 %3741, label %3746, label %3753

; <label>:3746                                    ; preds = %3740
  %3747 = and i32 %3738, 1073741823
  %3748 = add i32 %3728, 20
  %3749 = add i32 %3748, %3747
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.i32 %3750, 1
  br label %3753

; <label>:3753                                    ; preds = %3746, %3740
  %3754 = phi i32 [ %3751, %3746 ], [ %3662, %3740 ]
  %3755 = phi i32 [ %3752, %3746 ], [ %3663, %3740 ]
  store i32 %3754, i32* %3744, align 4
  store i32 %3755, i32* %3745, align 4
  %3756 = add i32 %3713, 1
  br label %3757

; <label>:3757                                    ; preds = %3753, %3712
  %3758 = phi i32 [ %3713, %3712 ], [ %3756, %3753 ]
  %3759 = add nuw i32 %3714, 1
  %3760 = icmp eq i32 %3759, %3709
  br i1 %3760, label %3761, label %3712

; <label>:3761                                    ; preds = %3757
  br label %3762

; <label>:3762                                    ; preds = %3761, %3706
  %3763 = phi i32 [ %3707, %3706 ], [ %3758, %3761 ]
  %3764 = icmp eq i32 %3763, 1
  %3765 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  %3766 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 0
  br i1 %3764, label %3767, label %3770

; <label>:3767                                    ; preds = %3762
  %3768 = load float, float* %3765, align 4
  %3769 = load float, float* %3766, align 4
  br label %3797

; <label>:3770                                    ; preds = %3762
  %3771 = load float, float* %3765, align 4
  %3772 = load float, float* %3766, align 4
  %3773 = fdiv fast float 1.000000e+00, %3772
  %3774 = fsub fast float %3771, %3773
  %3775 = icmp ugt i32 %3763, 1
  br i1 %3775, label %3776, label %3792

; <label>:3776                                    ; preds = %3770
  br label %3777

; <label>:3777                                    ; preds = %3777, %3776
  %3778 = phi float [ %3787, %3777 ], [ %3774, %3776 ]
  %3779 = phi float [ %3788, %3777 ], [ %3771, %3776 ]
  %3780 = phi i32 [ %3789, %3777 ], [ 1, %3776 ]
  %3781 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %3780
  %3782 = load float, float* %3781, align 4
  %3783 = getelementptr [12 x float], [12 x float]* %85, i32 0, i32 %3780
  %3784 = load float, float* %3783, align 4
  %3785 = fdiv fast float 1.000000e+00, %3784
  %3786 = fsub fast float %3782, %3785
  %3787 = call float @dx.op.binary.f32(i32 36, float %3778, float %3786)  ; FMin(a,b)
  %3788 = call float @dx.op.binary.f32(i32 35, float %3779, float %3782)  ; FMax(a,b)
  %3789 = add nuw i32 %3780, 1
  %3790 = icmp eq i32 %3789, %3763
  br i1 %3790, label %3791, label %3777

; <label>:3791                                    ; preds = %3777
  br label %3792

; <label>:3792                                    ; preds = %3791, %3770
  %3793 = phi float [ %3774, %3770 ], [ %3787, %3791 ]
  %3794 = phi float [ %3771, %3770 ], [ %3788, %3791 ]
  %3795 = fsub fast float %3794, %3793
  %3796 = fdiv fast float 1.000000e+00, %3795
  br label %3797

; <label>:3797                                    ; preds = %3792, %3767
  %3798 = phi float [ %3768, %3767 ], [ %3794, %3792 ]
  %3799 = phi float [ %3769, %3767 ], [ %3796, %3792 ]
  %3800 = fadd fast float %3501, %3798
  %3801 = fmul fast float %3800, %3799
  %3802 = call float @dx.op.unary.f32(i32 7, float %3801)  ; Saturate(value)
  %3803 = fmul fast float %3802, 2.000000e+00
  %3804 = fsub fast float 1.000000e+00, %3803
  %3805 = fmul fast float %3639, %3639
  %3806 = fsub fast float %3640, %3805
  %3807 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3806)  ; FMax(a,b)
  %3808 = fdiv fast float 1.000000e+00, %3807
  %3809 = fmul fast float %3640, %3639
  %3810 = fsub fast float %3641, %3809
  %3811 = fsub fast float %3804, %3639
  %3812 = fmul fast float %3804, %3804
  %3813 = fsub fast float %3812, %3640
  %3814 = fmul fast float %3808, %3810
  %3815 = fmul fast float %3814, %3811
  %3816 = fsub fast float %3813, %3815
  %3817 = fmul fast float %3640, %3640
  %3818 = fsub fast float %3642, %3817
  %3819 = fmul fast float %3810, %3810
  %3820 = fmul fast float %3819, %3808
  %3821 = fsub fast float %3818, %3820
  %3822 = fdiv fast float %3816, %3821
  %3823 = fmul fast float %3822, %3810
  %3824 = fsub fast float %3811, %3823
  %3825 = fmul fast float %3824, %3808
  %3826 = fmul fast float %3825, %3639
  %3827 = fsub fast float 1.000000e+00, %3826
  %3828 = fmul fast float %3822, %3640
  %3829 = fsub fast float %3827, %3828
  %3830 = fmul fast float %3825, %3825
  %3831 = fmul fast float %3822, 4.000000e+00
  %3832 = fmul fast float %3831, %3829
  %3833 = fsub fast float %3830, %3832
  %3834 = call float @dx.op.unary.f32(i32 24, float %3833)  ; Sqrt(value)
  %3835 = fcmp fast oge float %3825, 0.000000e+00
  %3836 = fsub fast float -0.000000e+00, %3834
  %3837 = select i1 %3835, float %3836, float %3834
  %3838 = fsub fast float %3837, %3825
  %3839 = fdiv fast float %3838, %3822
  %3840 = fdiv fast float %3829, %3838
  %3841 = fmul fast float %3839, 5.000000e-01
  %3842 = fmul fast float %3840, 2.000000e+00
  %3843 = select i1 %3835, float %3841, float %3842
  %3844 = select i1 %3835, float %3842, float %3841
  %3845 = call float @dx.op.binary.f32(i32 35, float %3843, float %3844)  ; FMax(a,b)
  %3846 = call float @dx.op.binary.f32(i32 36, float %3843, float %3844)  ; FMin(a,b)
  %3847 = fcmp fast ogt float %3804, %3845
  %3848 = fsub fast float %3804, %3846
  %3849 = fsub fast float %3804, %3845
  %3850 = fsub fast float %3845, %3846
  %3851 = select i1 %3847, float %3849, float %3850
  %3852 = fmul float %3848, %3851
  %3853 = select i1 %3847, float %3846, float %3804
  %3854 = fcmp fast ogt float %3804, %3846
  %3855 = fmul fast float %3853, %3845
  %3856 = fadd fast float %3853, %3845
  %3857 = fmul fast float %3856, %3639
  %3858 = fadd fast float %3855, %3640
  %3859 = fsub fast float %3858, %3857
  %3860 = fdiv fast float %3859, %3852
  %3861 = select i1 %3854, float %3860, float 0.000000e+00
  %3862 = fsub fast float 1.000000e+00, %3861
  %3863 = select i1 %3847, float %3862, float %3861
  %3864 = call float @dx.op.unary.f32(i32 7, float %3863)  ; Saturate(value)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3624, 3
  %3866 = fmul fast float %3865, %3864
  %3867 = fsub fast float 1.000000e+00, %3866
  br label %3868

; <label>:3868                                    ; preds = %3797, %3509, %3474, %3470, %3436
  %3869 = phi float [ 1.000000e+00, %3436 ], [ %3867, %3797 ], [ 1.000000e+00, %3474 ], [ 1.000000e+00, %3509 ], [ 1.000000e+00, %3470 ]
  %3870 = fcmp fast ogt float %3466, 0.000000e+00
  br i1 %3870, label %3871, label %4033, !dx.controlflow.hints !114

; <label>:3871                                    ; preds = %3868
  %3872 = fadd fast float %3379, %3353
  %3873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3874 = extractvalue %dx.types.CBufRet.f32 %3873, 2
  %3875 = extractvalue %dx.types.CBufRet.f32 %3873, 3
  %3876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.f32 %3876, 2
  %3878 = call float @dx.op.binary.f32(i32 35, float %3872, float 0.000000e+00)  ; FMax(a,b)
  %3879 = fadd fast float %3878, 0x3F10000000000000
  %3880 = fcmp fast oeq float %3877, 0.000000e+00
  br i1 %3880, label %3881, label %3948

; <label>:3881                                    ; preds = %3871
  %3882 = extractvalue %dx.types.CBufRet.f32 %3873, 1
  %3883 = extractvalue %dx.types.CBufRet.f32 %3873, 0
  %3884 = fmul fast float %3883, %3368
  %3885 = fmul fast float %3882, %3369
  %3886 = fadd fast float %3884, 5.000000e-01
  %3887 = call float @dx.op.unary.f32(i32 27, float %3886)  ; Round_ni(value)
  %3888 = fadd fast float %3885, 5.000000e-01
  %3889 = call float @dx.op.unary.f32(i32 27, float %3888)  ; Round_ni(value)
  %3890 = fsub fast float %3886, %3887
  %3891 = fsub fast float %3888, %3889
  %3892 = fadd fast float %3887, -5.000000e-01
  %3893 = fadd fast float %3889, -5.000000e-01
  %3894 = fmul fast float %3890, 2.000000e+00
  %3895 = fsub fast float 3.000000e+00, %3894
  %3896 = fadd fast float %3894, 1.000000e+00
  %3897 = fsub fast float 2.000000e+00, %3890
  %3898 = bitcast float %3895 to i32
  %3899 = sub nsw i32 2129859010, %3898
  %3900 = bitcast i32 %3899 to float
  %3901 = fmul fast float %3900, %3897
  %3902 = fadd fast float %3901, -1.000000e+00
  %3903 = bitcast float %3896 to i32
  %3904 = sub nsw i32 2129859010, %3903
  %3905 = bitcast i32 %3904 to float
  %3906 = fmul fast float %3905, %3890
  %3907 = fadd fast float %3906, 1.000000e+00
  %3908 = fmul fast float %3891, 2.000000e+00
  %3909 = fsub fast float 3.000000e+00, %3908
  %3910 = fadd fast float %3908, 1.000000e+00
  %3911 = fsub fast float 2.000000e+00, %3891
  %3912 = bitcast float %3909 to i32
  %3913 = sub nsw i32 2129859010, %3912
  %3914 = bitcast i32 %3913 to float
  %3915 = fmul fast float %3914, %3911
  %3916 = fadd fast float %3915, -1.000000e+00
  %3917 = bitcast float %3910 to i32
  %3918 = sub nsw i32 2129859010, %3917
  %3919 = bitcast i32 %3918 to float
  %3920 = fmul fast float %3919, %3891
  %3921 = fadd fast float %3920, 1.000000e+00
  %3922 = fadd fast float %3902, %3892
  %3923 = fmul fast float %3922, %3874
  %3924 = fadd fast float %3916, %3893
  %3925 = fmul fast float %3924, %3875
  %3926 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %3923, float %3925, float undef, float undef, i32 0, i32 0, i32 undef, float %3879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = fmul fast float %3927, %3895
  %3929 = fadd fast float %3907, %3892
  %3930 = fmul fast float %3929, %3874
  %3931 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %3930, float %3925, float undef, float undef, i32 0, i32 0, i32 undef, float %3879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3932 = extractvalue %dx.types.ResRet.f32 %3931, 0
  %3933 = fmul fast float %3932, %3896
  %3934 = fadd fast float %3921, %3893
  %3935 = fmul fast float %3934, %3875
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %3923, float %3935, float undef, float undef, i32 0, i32 0, i32 undef, float %3879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = fmul fast float %3937, %3895
  %3939 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %53, float %3930, float %3935, float undef, float undef, i32 0, i32 0, i32 undef, float %3879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = fmul fast float %3940, %3896
  %3942 = fadd fast float %3941, %3938
  %3943 = fmul fast float %3942, %3910
  %3944 = fadd fast float %3933, %3928
  %3945 = fmul fast float %3944, %3909
  %3946 = fadd fast float %3945, %3943
  %3947 = fmul fast float %3946, 6.250000e-02
  br label %4033

; <label>:3948                                    ; preds = %3871
  %3949 = fmul fast float %223, 0x401921FB60000000
  %3950 = call float @dx.op.unary.f32(i32 13, float %3949)  ; Sin(value)
  %3951 = call float @dx.op.unary.f32(i32 12, float %3949)  ; Cos(value)
  %3952 = fsub fast float -0.000000e+00, %3950
  br label %3953

; <label>:3953                                    ; preds = %4002, %3948
  %3954 = phi float [ 0.000000e+00, %3948 ], [ %3997, %4002 ]
  %3955 = phi float [ 0.000000e+00, %3948 ], [ %3999, %4002 ]
  %3956 = phi i32 [ 0, %3948 ], [ %4003, %4002 ]
  %3957 = mul i32 %3956, 2
  %3958 = add i32 0, %3957
  %3959 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3958
  %3960 = load float, float* %3959, align 4
  %3961 = mul i32 %3956, 2
  %3962 = add i32 1, %3961
  %3963 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3962
  %3964 = load float, float* %3963, align 4
  %3965 = fmul fast float %3960, %3951
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3952, float %3965)  ; FMad(a,b,c)
  %3967 = fmul fast float %3960, %3950
  %3968 = call float @dx.op.tertiary.f32(i32 46, float %3964, float %3951, float %3967)  ; FMad(a,b,c)
  %3969 = fmul fast float %3966, %3877
  %3970 = fmul fast float %3968, %3877
  %3971 = fadd fast float %3969, %3368
  %3972 = fadd fast float %3970, %3369
  %3973 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %52, float %3971, float %3972, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = extractvalue %dx.types.ResRet.f32 %3973, 1
  %3976 = extractvalue %dx.types.ResRet.f32 %3973, 2
  %3977 = extractvalue %dx.types.ResRet.f32 %3973, 3
  %3978 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %3974, float* %3978, align 4
  %3979 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %3975, float* %3979, align 4
  %3980 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %3976, float* %3980, align 4
  %3981 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %3977, float* %3981, align 4
  %3982 = fsub fast float %3974, %3879
  %3983 = fcmp fast olt float %3982, 0.000000e+00
  %3984 = select i1 %3983, float 0.000000e+00, float 1.000000e+00
  %3985 = fadd fast float %3984, %3954
  %3986 = fmul fast float %3984, %3982
  %3987 = fadd fast float %3986, %3955
  br label %3988

; <label>:3988                                    ; preds = %3988, %3953
  %3989 = phi i32 [ 1, %3953 ], [ %4000, %3988 ]
  %3990 = phi float [ %3987, %3953 ], [ %3999, %3988 ]
  %3991 = phi float [ %3985, %3953 ], [ %3997, %3988 ]
  %3992 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %3989
  %3993 = load float, float* %3992, align 4, !tbaa !115, !noalias !105
  %3994 = fsub fast float %3993, %3879
  %3995 = fcmp fast olt float %3994, 0.000000e+00
  %3996 = select i1 %3995, float 0.000000e+00, float 1.000000e+00
  %3997 = fadd fast float %3996, %3991
  %3998 = fmul fast float %3996, %3994
  %3999 = fadd fast float %3998, %3990
  %4000 = add nuw nsw i32 %3989, 1
  %4001 = icmp eq i32 %4000, 4
  br i1 %4001, label %4002, label %3988, !llvm.loop !117

; <label>:4002                                    ; preds = %3988
  %4003 = add nuw nsw i32 %3956, 1
  %4004 = icmp eq i32 %4003, 8
  br i1 %4004, label %4005, label %3953, !llvm.loop !118

; <label>:4005                                    ; preds = %4002
  %4006 = fdiv fast float 1.000000e+00, %3997
  %4007 = fmul fast float %4006, %3999
  %4008 = fdiv fast float 1.000000e+00, %3879
  %4009 = fmul fast float %4007, %4008
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4011 = call float @dx.op.binary.f32(i32 35, float %4010, float 0.000000e+00)  ; FMax(a,b)
  %4012 = fmul fast float %3997, 3.125000e-02
  %4013 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4014 = fmul fast float %4013, 2.000000e+00
  %4015 = fadd fast float %4014, -1.000000e+00
  %4016 = fcmp fast ogt float %4015, 0.000000e+00
  %4017 = fcmp fast olt float %4015, 0.000000e+00
  %4018 = zext i1 %4016 to i32
  %4019 = zext i1 %4017 to i32
  %4020 = sub nsw i32 %4018, %4019
  %4021 = sitofp i32 %4020 to float
  %4022 = fmul fast float %4021, %4015
  %4023 = fsub fast float 1.000000e+00, %4022
  %4024 = fmul fast float %4023, %4023
  %4025 = fmul fast float %4024, %4023
  %4026 = fsub fast float %4023, %4025
  %4027 = fmul fast float %4026, %4011
  %4028 = fsub fast float 1.000000e+00, %4025
  %4029 = fsub fast float %4028, %4027
  %4030 = fmul fast float %4021, 5.000000e-01
  %4031 = fmul fast float %4030, %4029
  %4032 = fsub fast float 5.000000e-01, %4031
  br label %4033

; <label>:4033                                    ; preds = %4005, %3881, %3868
  %4034 = phi float [ 1.000000e+00, %3868 ], [ %3947, %3881 ], [ %4032, %4005 ]
  %4035 = fcmp fast ogt float %3464, 0.000000e+00
  br i1 %4035, label %4036, label %4200, !dx.controlflow.hints !119

; <label>:4036                                    ; preds = %4033
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4039 = fadd fast float %4038, %3353
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 2
  %4042 = extractvalue %dx.types.CBufRet.f32 %4040, 3
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 1
  %4045 = call float @dx.op.binary.f32(i32 35, float %4039, float 0.000000e+00)  ; FMax(a,b)
  %4046 = fadd fast float %4045, 0x3F10000000000000
  %4047 = fcmp fast oeq float %4044, 0.000000e+00
  br i1 %4047, label %4048, label %4115

; <label>:4048                                    ; preds = %4036
  %4049 = extractvalue %dx.types.CBufRet.f32 %4040, 1
  %4050 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4051 = fmul fast float %4050, %3360
  %4052 = fmul fast float %4049, %3361
  %4053 = fadd fast float %4051, 5.000000e-01
  %4054 = call float @dx.op.unary.f32(i32 27, float %4053)  ; Round_ni(value)
  %4055 = fadd fast float %4052, 5.000000e-01
  %4056 = call float @dx.op.unary.f32(i32 27, float %4055)  ; Round_ni(value)
  %4057 = fsub fast float %4053, %4054
  %4058 = fsub fast float %4055, %4056
  %4059 = fadd fast float %4054, -5.000000e-01
  %4060 = fadd fast float %4056, -5.000000e-01
  %4061 = fmul fast float %4057, 2.000000e+00
  %4062 = fsub fast float 3.000000e+00, %4061
  %4063 = fadd fast float %4061, 1.000000e+00
  %4064 = fsub fast float 2.000000e+00, %4057
  %4065 = bitcast float %4062 to i32
  %4066 = sub nsw i32 2129859010, %4065
  %4067 = bitcast i32 %4066 to float
  %4068 = fmul fast float %4067, %4064
  %4069 = fadd fast float %4068, -1.000000e+00
  %4070 = bitcast float %4063 to i32
  %4071 = sub nsw i32 2129859010, %4070
  %4072 = bitcast i32 %4071 to float
  %4073 = fmul fast float %4072, %4057
  %4074 = fadd fast float %4073, 1.000000e+00
  %4075 = fmul fast float %4058, 2.000000e+00
  %4076 = fsub fast float 3.000000e+00, %4075
  %4077 = fadd fast float %4075, 1.000000e+00
  %4078 = fsub fast float 2.000000e+00, %4058
  %4079 = bitcast float %4076 to i32
  %4080 = sub nsw i32 2129859010, %4079
  %4081 = bitcast i32 %4080 to float
  %4082 = fmul fast float %4081, %4078
  %4083 = fadd fast float %4082, -1.000000e+00
  %4084 = bitcast float %4077 to i32
  %4085 = sub nsw i32 2129859010, %4084
  %4086 = bitcast i32 %4085 to float
  %4087 = fmul fast float %4086, %4058
  %4088 = fadd fast float %4087, 1.000000e+00
  %4089 = fadd fast float %4069, %4059
  %4090 = fmul fast float %4089, %4041
  %4091 = fadd fast float %4083, %4060
  %4092 = fmul fast float %4091, %4042
  %4093 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %4090, float %4092, float undef, float undef, i32 0, i32 0, i32 undef, float %4046)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = fmul fast float %4094, %4062
  %4096 = fadd fast float %4074, %4059
  %4097 = fmul fast float %4096, %4041
  %4098 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %4097, float %4092, float undef, float undef, i32 0, i32 0, i32 undef, float %4046)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = fmul fast float %4099, %4063
  %4101 = fadd fast float %4088, %4060
  %4102 = fmul fast float %4101, %4042
  %4103 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %4090, float %4102, float undef, float undef, i32 0, i32 0, i32 undef, float %4046)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = fmul fast float %4104, %4062
  %4106 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %53, float %4097, float %4102, float undef, float undef, i32 0, i32 0, i32 undef, float %4046)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = fmul fast float %4107, %4063
  %4109 = fadd fast float %4108, %4105
  %4110 = fmul fast float %4109, %4077
  %4111 = fadd fast float %4100, %4095
  %4112 = fmul fast float %4111, %4076
  %4113 = fadd fast float %4112, %4110
  %4114 = fmul fast float %4113, 6.250000e-02
  br label %4200

; <label>:4115                                    ; preds = %4036
  %4116 = fmul fast float %223, 0x401921FB60000000
  %4117 = call float @dx.op.unary.f32(i32 13, float %4116)  ; Sin(value)
  %4118 = call float @dx.op.unary.f32(i32 12, float %4116)  ; Cos(value)
  %4119 = fsub fast float -0.000000e+00, %4117
  br label %4120

; <label>:4120                                    ; preds = %4169, %4115
  %4121 = phi float [ 0.000000e+00, %4115 ], [ %4164, %4169 ]
  %4122 = phi float [ 0.000000e+00, %4115 ], [ %4166, %4169 ]
  %4123 = phi i32 [ 0, %4115 ], [ %4170, %4169 ]
  %4124 = mul i32 %4123, 2
  %4125 = add i32 0, %4124
  %4126 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4125
  %4127 = load float, float* %4126, align 4
  %4128 = mul i32 %4123, 2
  %4129 = add i32 1, %4128
  %4130 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4129
  %4131 = load float, float* %4130, align 4
  %4132 = fmul fast float %4127, %4118
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4119, float %4132)  ; FMad(a,b,c)
  %4134 = fmul fast float %4127, %4117
  %4135 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4118, float %4134)  ; FMad(a,b,c)
  %4136 = fmul fast float %4133, %4044
  %4137 = fmul fast float %4135, %4044
  %4138 = fadd fast float %4136, %3360
  %4139 = fadd fast float %4137, %3361
  %4140 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %52, float %4138, float %4139, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = extractvalue %dx.types.ResRet.f32 %4140, 3
  %4145 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %4141, float* %4145, align 4
  %4146 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %4142, float* %4146, align 4
  %4147 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %4143, float* %4147, align 4
  %4148 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  store float %4144, float* %4148, align 4
  %4149 = fsub fast float %4141, %4046
  %4150 = fcmp fast olt float %4149, 0.000000e+00
  %4151 = select i1 %4150, float 0.000000e+00, float 1.000000e+00
  %4152 = fadd fast float %4151, %4121
  %4153 = fmul fast float %4151, %4149
  %4154 = fadd fast float %4153, %4122
  br label %4155

; <label>:4155                                    ; preds = %4155, %4120
  %4156 = phi i32 [ 1, %4120 ], [ %4167, %4155 ]
  %4157 = phi float [ %4154, %4120 ], [ %4166, %4155 ]
  %4158 = phi float [ %4152, %4120 ], [ %4164, %4155 ]
  %4159 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %4156
  %4160 = load float, float* %4159, align 4, !tbaa !115, !noalias !105
  %4161 = fsub fast float %4160, %4046
  %4162 = fcmp fast olt float %4161, 0.000000e+00
  %4163 = select i1 %4162, float 0.000000e+00, float 1.000000e+00
  %4164 = fadd fast float %4163, %4158
  %4165 = fmul fast float %4163, %4161
  %4166 = fadd fast float %4165, %4157
  %4167 = add nuw nsw i32 %4156, 1
  %4168 = icmp eq i32 %4167, 4
  br i1 %4168, label %4169, label %4155, !llvm.loop !117

; <label>:4169                                    ; preds = %4155
  %4170 = add nuw nsw i32 %4123, 1
  %4171 = icmp eq i32 %4170, 8
  br i1 %4171, label %4172, label %4120, !llvm.loop !118

; <label>:4172                                    ; preds = %4169
  %4173 = fdiv fast float 1.000000e+00, %4164
  %4174 = fmul fast float %4173, %4166
  %4175 = fdiv fast float 1.000000e+00, %4046
  %4176 = fmul fast float %4174, %4175
  %4177 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4178 = call float @dx.op.binary.f32(i32 35, float %4177, float 0.000000e+00)  ; FMax(a,b)
  %4179 = fmul fast float %4164, 3.125000e-02
  %4180 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4181 = fmul fast float %4180, 2.000000e+00
  %4182 = fadd fast float %4181, -1.000000e+00
  %4183 = fcmp fast ogt float %4182, 0.000000e+00
  %4184 = fcmp fast olt float %4182, 0.000000e+00
  %4185 = zext i1 %4183 to i32
  %4186 = zext i1 %4184 to i32
  %4187 = sub nsw i32 %4185, %4186
  %4188 = sitofp i32 %4187 to float
  %4189 = fmul fast float %4188, %4182
  %4190 = fsub fast float 1.000000e+00, %4189
  %4191 = fmul fast float %4190, %4190
  %4192 = fmul fast float %4191, %4190
  %4193 = fsub fast float %4190, %4192
  %4194 = fmul fast float %4193, %4178
  %4195 = fsub fast float 1.000000e+00, %4192
  %4196 = fsub fast float %4195, %4194
  %4197 = fmul fast float %4188, 5.000000e-01
  %4198 = fmul fast float %4197, %4196
  %4199 = fsub fast float 5.000000e-01, %4198
  br label %4200

; <label>:4200                                    ; preds = %4172, %4048, %4033
  %4201 = phi float [ 1.000000e+00, %4033 ], [ %4114, %4048 ], [ %4199, %4172 ]
  %4202 = fcmp fast ogt float %3463, 0.000000e+00
  br i1 %4202, label %4203, label %4367, !dx.controlflow.hints !120

; <label>:4203                                    ; preds = %4200
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = fadd fast float %4205, %3353
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 2
  %4209 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = call float @dx.op.binary.f32(i32 35, float %4206, float 0.000000e+00)  ; FMax(a,b)
  %4213 = fadd fast float %4212, 0x3F10000000000000
  %4214 = fcmp fast oeq float %4211, 0.000000e+00
  br i1 %4214, label %4215, label %4282

; <label>:4215                                    ; preds = %4203
  %4216 = extractvalue %dx.types.CBufRet.f32 %4207, 1
  %4217 = extractvalue %dx.types.CBufRet.f32 %4207, 0
  %4218 = fmul fast float %4217, %3345
  %4219 = fmul fast float %4216, %3349
  %4220 = fadd fast float %4218, 5.000000e-01
  %4221 = call float @dx.op.unary.f32(i32 27, float %4220)  ; Round_ni(value)
  %4222 = fadd fast float %4219, 5.000000e-01
  %4223 = call float @dx.op.unary.f32(i32 27, float %4222)  ; Round_ni(value)
  %4224 = fsub fast float %4220, %4221
  %4225 = fsub fast float %4222, %4223
  %4226 = fadd fast float %4221, -5.000000e-01
  %4227 = fadd fast float %4223, -5.000000e-01
  %4228 = fmul fast float %4224, 2.000000e+00
  %4229 = fsub fast float 3.000000e+00, %4228
  %4230 = fadd fast float %4228, 1.000000e+00
  %4231 = fsub fast float 2.000000e+00, %4224
  %4232 = bitcast float %4229 to i32
  %4233 = sub nsw i32 2129859010, %4232
  %4234 = bitcast i32 %4233 to float
  %4235 = fmul fast float %4234, %4231
  %4236 = fadd fast float %4235, -1.000000e+00
  %4237 = bitcast float %4230 to i32
  %4238 = sub nsw i32 2129859010, %4237
  %4239 = bitcast i32 %4238 to float
  %4240 = fmul fast float %4239, %4224
  %4241 = fadd fast float %4240, 1.000000e+00
  %4242 = fmul fast float %4225, 2.000000e+00
  %4243 = fsub fast float 3.000000e+00, %4242
  %4244 = fadd fast float %4242, 1.000000e+00
  %4245 = fsub fast float 2.000000e+00, %4225
  %4246 = bitcast float %4243 to i32
  %4247 = sub nsw i32 2129859010, %4246
  %4248 = bitcast i32 %4247 to float
  %4249 = fmul fast float %4248, %4245
  %4250 = fadd fast float %4249, -1.000000e+00
  %4251 = bitcast float %4244 to i32
  %4252 = sub nsw i32 2129859010, %4251
  %4253 = bitcast i32 %4252 to float
  %4254 = fmul fast float %4253, %4225
  %4255 = fadd fast float %4254, 1.000000e+00
  %4256 = fadd fast float %4236, %4226
  %4257 = fmul fast float %4256, %4208
  %4258 = fadd fast float %4250, %4227
  %4259 = fmul fast float %4258, %4209
  %4260 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %4257, float %4259, float undef, float undef, i32 0, i32 0, i32 undef, float %4213)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = fmul fast float %4261, %4229
  %4263 = fadd fast float %4241, %4226
  %4264 = fmul fast float %4263, %4208
  %4265 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %4264, float %4259, float undef, float undef, i32 0, i32 0, i32 undef, float %4213)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = fmul fast float %4266, %4230
  %4268 = fadd fast float %4255, %4227
  %4269 = fmul fast float %4268, %4209
  %4270 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %4257, float %4269, float undef, float undef, i32 0, i32 0, i32 undef, float %4213)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = fmul fast float %4271, %4229
  %4273 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %53, float %4264, float %4269, float undef, float undef, i32 0, i32 0, i32 undef, float %4213)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = fmul fast float %4274, %4230
  %4276 = fadd fast float %4275, %4272
  %4277 = fmul fast float %4276, %4244
  %4278 = fadd fast float %4267, %4262
  %4279 = fmul fast float %4278, %4243
  %4280 = fadd fast float %4279, %4277
  %4281 = fmul fast float %4280, 6.250000e-02
  br label %4367

; <label>:4282                                    ; preds = %4203
  %4283 = fmul fast float %223, 0x401921FB60000000
  %4284 = call float @dx.op.unary.f32(i32 13, float %4283)  ; Sin(value)
  %4285 = call float @dx.op.unary.f32(i32 12, float %4283)  ; Cos(value)
  %4286 = fsub fast float -0.000000e+00, %4284
  br label %4287

; <label>:4287                                    ; preds = %4336, %4282
  %4288 = phi float [ 0.000000e+00, %4282 ], [ %4331, %4336 ]
  %4289 = phi float [ 0.000000e+00, %4282 ], [ %4333, %4336 ]
  %4290 = phi i32 [ 0, %4282 ], [ %4337, %4336 ]
  %4291 = mul i32 %4290, 2
  %4292 = add i32 0, %4291
  %4293 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4292
  %4294 = load float, float* %4293, align 4
  %4295 = mul i32 %4290, 2
  %4296 = add i32 1, %4295
  %4297 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4296
  %4298 = load float, float* %4297, align 4
  %4299 = fmul fast float %4294, %4285
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4286, float %4299)  ; FMad(a,b,c)
  %4301 = fmul fast float %4294, %4284
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4285, float %4301)  ; FMad(a,b,c)
  %4303 = fmul fast float %4300, %4211
  %4304 = fmul fast float %4302, %4211
  %4305 = fadd fast float %4303, %3345
  %4306 = fadd fast float %4304, %3349
  %4307 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %52, float %4305, float %4306, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %4308 = extractvalue %dx.types.ResRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.ResRet.f32 %4307, 1
  %4310 = extractvalue %dx.types.ResRet.f32 %4307, 2
  %4311 = extractvalue %dx.types.ResRet.f32 %4307, 3
  %4312 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %4308, float* %4312, align 4
  %4313 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %4309, float* %4313, align 4
  %4314 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %4310, float* %4314, align 4
  %4315 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %4311, float* %4315, align 4
  %4316 = fsub fast float %4308, %4213
  %4317 = fcmp fast olt float %4316, 0.000000e+00
  %4318 = select i1 %4317, float 0.000000e+00, float 1.000000e+00
  %4319 = fadd fast float %4318, %4288
  %4320 = fmul fast float %4318, %4316
  %4321 = fadd fast float %4320, %4289
  br label %4322

; <label>:4322                                    ; preds = %4322, %4287
  %4323 = phi i32 [ 1, %4287 ], [ %4334, %4322 ]
  %4324 = phi float [ %4321, %4287 ], [ %4333, %4322 ]
  %4325 = phi float [ %4319, %4287 ], [ %4331, %4322 ]
  %4326 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %4323
  %4327 = load float, float* %4326, align 4, !tbaa !115, !noalias !105
  %4328 = fsub fast float %4327, %4213
  %4329 = fcmp fast olt float %4328, 0.000000e+00
  %4330 = select i1 %4329, float 0.000000e+00, float 1.000000e+00
  %4331 = fadd fast float %4330, %4325
  %4332 = fmul fast float %4330, %4328
  %4333 = fadd fast float %4332, %4324
  %4334 = add nuw nsw i32 %4323, 1
  %4335 = icmp eq i32 %4334, 4
  br i1 %4335, label %4336, label %4322, !llvm.loop !117

; <label>:4336                                    ; preds = %4322
  %4337 = add nuw nsw i32 %4290, 1
  %4338 = icmp eq i32 %4337, 8
  br i1 %4338, label %4339, label %4287, !llvm.loop !118

; <label>:4339                                    ; preds = %4336
  %4340 = fdiv fast float 1.000000e+00, %4331
  %4341 = fmul fast float %4340, %4333
  %4342 = fdiv fast float 1.000000e+00, %4213
  %4343 = fmul fast float %4341, %4342
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = call float @dx.op.binary.f32(i32 35, float %4344, float 0.000000e+00)  ; FMax(a,b)
  %4346 = fmul fast float %4331, 3.125000e-02
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fmul fast float %4347, 2.000000e+00
  %4349 = fadd fast float %4348, -1.000000e+00
  %4350 = fcmp fast ogt float %4349, 0.000000e+00
  %4351 = fcmp fast olt float %4349, 0.000000e+00
  %4352 = zext i1 %4350 to i32
  %4353 = zext i1 %4351 to i32
  %4354 = sub nsw i32 %4352, %4353
  %4355 = sitofp i32 %4354 to float
  %4356 = fmul fast float %4355, %4349
  %4357 = fsub fast float 1.000000e+00, %4356
  %4358 = fmul fast float %4357, %4357
  %4359 = fmul fast float %4358, %4357
  %4360 = fsub fast float %4357, %4359
  %4361 = fmul fast float %4360, %4345
  %4362 = fsub fast float 1.000000e+00, %4359
  %4363 = fsub fast float %4362, %4361
  %4364 = fmul fast float %4355, 5.000000e-01
  %4365 = fmul fast float %4364, %4363
  %4366 = fsub fast float 5.000000e-01, %4365
  br label %4367

; <label>:4367                                    ; preds = %4339, %4215, %4200
  %4368 = phi float [ 1.000000e+00, %4200 ], [ %4281, %4215 ], [ %4366, %4339 ]
  %4369 = fsub fast float %4034, %3869
  %4370 = fmul fast float %4369, %3407
  %4371 = fadd fast float %4370, %3869
  %4372 = fsub fast float %4201, %4371
  %4373 = fmul fast float %4372, %3437
  %4374 = fadd fast float %4373, %4371
  %4375 = fsub fast float %4368, %4374
  %4376 = fmul fast float %4375, %3463
  %4377 = fadd fast float %4376, %4374
  %4378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %4379 = extractvalue %dx.types.CBufRet.f32 %4378, 2
  %4380 = fcmp fast ogt float %4379, 0.000000e+00
  br i1 %4380, label %4381, label %4421, !dx.controlflow.hints !121

; <label>:4381                                    ; preds = %4367
  %4382 = fcmp fast ugt float %4379, 0.000000e+00
  br i1 %4382, label %4383, label %4418

; <label>:4383                                    ; preds = %4381
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4387 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4388 = extractvalue %dx.types.CBufRet.f32 %4384, 3
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.CBufRet.f32 %4389, 2
  %4393 = extractvalue %dx.types.CBufRet.f32 %4389, 3
  %4394 = extractvalue %dx.types.CBufRet.f32 %4378, 0
  %4395 = extractvalue %dx.types.CBufRet.f32 %4378, 1
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.CBufRet.f32 %4396, 2
  %4400 = fadd fast float %4397, %3322
  %4401 = fadd fast float %4398, %3323
  %4402 = fadd fast float %4399, %3324
  %4403 = fmul fast float %4400, %4385
  %4404 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4401, float %4403)  ; FMad(a,b,c)
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4387, float %4402, float %4404)  ; FMad(a,b,c)
  %4406 = fadd fast float %4405, %4388
  %4407 = fmul fast float %4400, %4390
  %4408 = call float @dx.op.tertiary.f32(i32 46, float %4391, float %4401, float %4407)  ; FMad(a,b,c)
  %4409 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4402, float %4408)  ; FMad(a,b,c)
  %4410 = fadd fast float %4409, %4393
  %4411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %48, float %4406, float %4410, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = fmul fast float %4412, %4395
  %4414 = fadd fast float %4413, %4394
  %4415 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4416 = fmul fast float %4415, %4379
  %4417 = fsub fast float 1.000000e+00, %4416
  br label %4418

; <label>:4418                                    ; preds = %4383, %4381
  %4419 = phi float [ %4417, %4383 ], [ 1.000000e+00, %4381 ]
  %4420 = fmul fast float %4419, %4377
  br label %4421

; <label>:4421                                    ; preds = %4418, %4367, %3302
  %4422 = phi float [ 1.000000e+00, %3302 ], [ %4420, %4418 ], [ %4377, %4367 ]
  %4423 = call float @dx.op.binary.f32(i32 36, float %4422, float %4422)  ; FMin(a,b)
  %4424 = call float @dx.op.binary.f32(i32 36, float %4422, float %4423)  ; FMin(a,b)
  %4425 = fcmp fast ogt float %4424, 0.000000e+00
  br i1 %4425, label %4426, label %4591, !dx.controlflow.hints !122

; <label>:4426                                    ; preds = %4421
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 0
  %4429 = extractvalue %dx.types.CBufRet.f32 %4427, 1
  %4430 = extractvalue %dx.types.CBufRet.f32 %4427, 2
  %4431 = extractvalue %dx.types.CBufRet.f32 %4427, 3
  %4432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4432, 0
  %4434 = extractvalue %dx.types.CBufRet.f32 %4432, 1
  %4435 = extractvalue %dx.types.CBufRet.f32 %4432, 2
  %4436 = extractvalue %dx.types.CBufRet.f32 %4432, 3
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 0
  %4439 = extractvalue %dx.types.CBufRet.f32 %4437, 1
  %4440 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4441 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4442 = fmul fast float %4428, %3322
  %4443 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %4429, float %4442)  ; FMad(a,b,c)
  %4444 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %4430, float %4443)  ; FMad(a,b,c)
  %4445 = fadd fast float %4444, %4431
  %4446 = fmul fast float %4433, %3322
  %4447 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %4434, float %4446)  ; FMad(a,b,c)
  %4448 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %4435, float %4447)  ; FMad(a,b,c)
  %4449 = fadd fast float %4448, %4436
  %4450 = fmul fast float %4438, %3322
  %4451 = call float @dx.op.tertiary.f32(i32 46, float %3323, float %4439, float %4450)  ; FMad(a,b,c)
  %4452 = call float @dx.op.tertiary.f32(i32 46, float %3324, float %4440, float %4451)  ; FMad(a,b,c)
  %4453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.CBufRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.CBufRet.f32 %4453, 3
  %4457 = fmul fast float %4456, %4445
  %4458 = fmul fast float %4456, %4449
  %4459 = fadd fast float %4457, %4454
  %4460 = fadd fast float %4458, %4455
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4464 = fsub fast float %4459, %4462
  %4465 = fsub fast float %4460, %4463
  %4466 = fcmp fast olt float %4464, 0.000000e+00
  %4467 = fcmp fast olt float %4465, 0.000000e+00
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4470 = extractvalue %dx.types.CBufRet.f32 %4468, 1
  %4471 = extractvalue %dx.types.CBufRet.f32 %4468, 2
  %4472 = extractvalue %dx.types.CBufRet.f32 %4468, 3
  %4473 = select i1 %4466, float %4469, float %4471
  %4474 = select i1 %4467, float %4470, float %4472
  %4475 = fmul fast float %4473, %4464
  %4476 = fmul fast float %4474, %4465
  %4477 = call float @dx.op.unary.f32(i32 6, float %4475)  ; FAbs(value)
  %4478 = call float @dx.op.unary.f32(i32 6, float %4476)  ; FAbs(value)
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 0
  %4481 = call float @dx.op.binary.f32(i32 35, float %4477, float %4478)  ; FMax(a,b)
  %4482 = fsub fast float %4480, %4481
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fcmp fast ogt float %4483, 0.000000e+00
  br i1 %4484, label %4485, label %4526, !dx.controlflow.hints !123

; <label>:4485                                    ; preds = %4426
  %4486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %51, float %4459, float %4460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 1
  %4488 = fcmp fast ogt float %4487, 0.000000e+00
  br i1 %4488, label %4489, label %4521

; <label>:4489                                    ; preds = %4485
  %4490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %51, float %4459, float %4460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4491 = extractvalue %dx.types.ResRet.f32 %4490, 0
  %4492 = extractvalue %dx.types.ResRet.f32 %4490, 1
  %4493 = extractvalue %dx.types.ResRet.f32 %4490, 2
  %4494 = extractvalue %dx.types.ResRet.f32 %4490, 3
  %4495 = fsub fast float 1.000000e+00, %4441
  %4496 = fsub fast float %4495, %4452
  %4497 = fmul fast float %4496, 0x400921FB60000000
  %4498 = fadd fast float %4497, 0x3FF921FB60000000
  %4499 = call float @dx.op.unary.f32(i32 13, float %4498)  ; Sin(value)
  %4500 = fadd fast float %4499, -1.000000e+00
  %4501 = fmul fast float %4500, 0x3FD45F3060000000
  %4502 = fmul fast float %4496, 0x401921FB60000000
  %4503 = fadd fast float %4502, 0x400921FB60000000
  %4504 = call float @dx.op.unary.f32(i32 13, float %4503)  ; Sin(value)
  %4505 = fadd fast float %4504, 0x3E7777A5C0000000
  %4506 = fmul fast float %4505, 0x3FC45F3060000000
  %4507 = fmul fast float %4496, 0x4022D97C80000000
  %4508 = fadd fast float %4507, 0x4012D97C80000000
  %4509 = call float @dx.op.unary.f32(i32 13, float %4508)  ; Sin(value)
  %4510 = fadd fast float %4509, 1.000000e+00
  %4511 = fmul fast float %4510, 0x3FBB2995E0000000
  %4512 = fmul fast float %4496, 0x402921FB60000000
  %4513 = fadd fast float %4512, 0x401921FB60000000
  %4514 = call float @dx.op.unary.f32(i32 13, float %4513)  ; Sin(value)
  %4515 = fadd fast float %4514, 0xBE8777A5C0000000
  %4516 = fmul fast float %4515, 0x3FB45F3060000000
  %4517 = call float @dx.op.dot4.f32(i32 56, float %4491, float %4492, float %4493, float %4494, float %4501, float %4506, float %4511, float %4516)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4518 = fmul fast float %4517, 0xBFF7154760000000
  %4519 = call float @dx.op.unary.f32(i32 21, float %4518)  ; Exp(value)
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  br label %4521

; <label>:4521                                    ; preds = %4489, %4485
  %4522 = phi float [ %4520, %4489 ], [ 1.000000e+00, %4485 ]
  %4523 = fadd fast float %4522, -1.000000e+00
  %4524 = fmul fast float %4523, %4483
  %4525 = fadd fast float %4524, 1.000000e+00
  br label %4526

; <label>:4526                                    ; preds = %4521, %4426
  %4527 = phi float [ %4525, %4521 ], [ 1.000000e+00, %4426 ]
  %4528 = fmul fast float %4527, %4422
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.CBufRet.f32 %4529, 1
  %4532 = extractvalue %dx.types.CBufRet.f32 %4529, 2
  %4533 = fadd fast float %4530, %150
  %4534 = fadd fast float %4531, %151
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 1
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.CBufRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.CBufRet.f32 %4537, 2
  %4541 = fsub fast float -0.000000e+00, %4533
  %4542 = fsub fast float -0.000000e+00, %4534
  %4543 = fsub fast float %2222, %4532
  %4544 = fadd fast float %4543, %4536
  %4545 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4541, float %4542, float %4544)  ; Dot3(ax,ay,az,bx,by,bz)
  %4546 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4538, float %4539, float %4540)  ; Dot3(ax,ay,az,bx,by,bz)
  %4547 = fdiv fast float 1.000000e+00, %4546
  %4548 = fmul fast float %4547, %4545
  %4549 = fmul fast float %4538, %4548
  %4550 = fmul fast float %4539, %4548
  %4551 = fadd fast float %4549, %4533
  %4552 = fadd fast float %4550, %4534
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.CBufRet.f32 %4553, 1
  %4556 = fsub fast float %4551, %4554
  %4557 = fsub fast float %4552, %4555
  %4558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.f32 %4558, 2
  %4560 = extractvalue %dx.types.CBufRet.f32 %4558, 3
  %4561 = fmul fast float %4556, %4559
  %4562 = fmul fast float %4557, %4560
  %4563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.i32 %4563, 3
  %4565 = icmp eq i32 %4564, 0
  br i1 %4565, label %4571, label %4566

; <label>:4566                                    ; preds = %4526
  %4567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %50, float %4561, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  br label %4576

; <label>:4571                                    ; preds = %4526
  %4572 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %51, float %4561, float %4562, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  br label %4576

; <label>:4576                                    ; preds = %4571, %4566
  %4577 = phi float [ %4568, %4566 ], [ %4573, %4571 ]
  %4578 = phi float [ %4569, %4566 ], [ %4574, %4571 ]
  %4579 = phi float [ %4570, %4566 ], [ %4575, %4571 ]
  %4580 = extractvalue %dx.types.CBufRet.f32 %4535, 2
  %4581 = fmul fast float %4580, %4577
  %4582 = extractvalue %dx.types.CBufRet.f32 %4535, 0
  %4583 = fsub fast float %4548, %4582
  %4584 = fsub fast float %4583, %4581
  %4585 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4584)  ; FMax(a,b)
  %4586 = fmul fast float %4585, %4578
  %4587 = call float @dx.op.binary.f32(i32 36, float %4579, float %4586)  ; FMin(a,b)
  %4588 = fmul fast float %4587, 0xBFF7154760000000
  %4589 = call float @dx.op.unary.f32(i32 21, float %4588)  ; Exp(value)
  %4590 = fmul fast float %4528, %4589
  br label %4591

; <label>:4591                                    ; preds = %4576, %4421
  %4592 = phi float [ %4590, %4576 ], [ %4422, %4421 ]
  %4593 = call float @dx.op.binary.f32(i32 36, float %4592, float %4592)  ; FMin(a,b)
  %4594 = call float @dx.op.binary.f32(i32 36, float %4592, float %4593)  ; FMin(a,b)
  %4595 = fcmp fast ogt float %4594, 0.000000e+00
  br i1 %4595, label %4596, label %4993, !dx.controlflow.hints !124

; <label>:4596                                    ; preds = %4591
  %4597 = fmul fast float %4592, %3314
  %4598 = fmul fast float %4592, %3315
  %4599 = fmul fast float %4592, %3316
  %4600 = fsub fast float %152, %2007
  %4601 = fcmp fast ogt float %4600, 0.000000e+00
  %4602 = fmul fast float %3303, 5.120000e+02
  %4603 = fmul fast float %3304, 5.120000e+02
  %4604 = fmul fast float %3305, 5.120000e+02
  %4605 = fadd fast float %4604, %152
  %4606 = fsub fast float %2007, %4605
  %4607 = fmul fast float %4606, 2.000000e+00
  %4608 = fadd fast float %4607, %4605
  %4609 = select i1 %4601, float %4608, float %4605
  %4610 = fsub fast float %4609, %152
  %4611 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4610, float %4602, float %4603, float %4610)  ; Dot3(ax,ay,az,bx,by,bz)
  %4612 = call float @dx.op.unary.f32(i32 25, float %4611)  ; Rsqrt(value)
  %4613 = fmul fast float %4612, %4602
  %4614 = fmul fast float %4612, %4603
  %4615 = fmul fast float %4612, %4610
  %4616 = fsub fast float %2007, %152
  %4617 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4616)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4613, float %4614, float %4615)  ; Dot3(ax,ay,az,bx,by,bz)
  %4619 = fdiv fast float 1.000000e+00, %4618
  %4620 = fmul fast float %4619, %4617
  %4621 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4600, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = fcmp fast ogt float %4621, 0.000000e+00
  %4623 = fcmp fast olt float %4621, 0.000000e+00
  %4624 = zext i1 %4622 to i32
  %4625 = zext i1 %4623 to i32
  %4626 = sub nsw i32 %4624, %4625
  %4627 = sitofp i32 %4626 to float
  %4628 = fsub fast float %4609, %2007
  %4629 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4628, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4630 = fcmp fast ogt float %4629, 0.000000e+00
  %4631 = fcmp fast olt float %4629, 0.000000e+00
  %4632 = zext i1 %4630 to i32
  %4633 = zext i1 %4631 to i32
  %4634 = sub nsw i32 %4632, %4633
  %4635 = sitofp i32 %4634 to float
  %4636 = fcmp fast une float %4627, %4635
  br i1 %4636, label %4637, label %4647

; <label>:4637                                    ; preds = %4596
  %4638 = fmul fast float %4620, %4615
  %4639 = fmul fast float %4620, %4614
  %4640 = fmul fast float %4620, %4613
  %4641 = fmul fast float %4640, %4640
  %4642 = fmul fast float %4639, %4639
  %4643 = fadd fast float %4641, %4642
  %4644 = fmul fast float %4638, %4638
  %4645 = fadd fast float %4643, %4644
  %4646 = call float @dx.op.unary.f32(i32 24, float %4645)  ; Sqrt(value)
  br label %4657

; <label>:4647                                    ; preds = %4596
  %4648 = icmp slt i32 %4626, 0
  br i1 %4648, label %4649, label %4657

; <label>:4649                                    ; preds = %4647
  %4650 = fsub fast float %152, %4609
  %4651 = fmul fast float %4602, %4602
  %4652 = fmul fast float %4603, %4603
  %4653 = fadd fast float %4651, %4652
  %4654 = fmul fast float %4650, %4650
  %4655 = fadd fast float %4653, %4654
  %4656 = call float @dx.op.unary.f32(i32 24, float %4655)  ; Sqrt(value)
  br label %4657

; <label>:4657                                    ; preds = %4649, %4647, %4637
  %4658 = phi float [ %4646, %4637 ], [ %4656, %4649 ], [ 0.000000e+00, %4647 ]
  %4659 = fsub fast float -0.000000e+00, %4658
  %4660 = select i1 %4601, float -0.000000e+00, float %4659
  %4661 = fmul fast float %2008, 0x3FF7154760000000
  %4662 = fmul fast float %4661, %4660
  %4663 = fmul fast float %2009, 0x3FF7154760000000
  %4664 = fmul fast float %4663, %4660
  %4665 = fmul fast float %2010, 0x3FF7154760000000
  %4666 = fmul fast float %4665, %4660
  %4667 = call float @dx.op.unary.f32(i32 21, float %4662)  ; Exp(value)
  %4668 = call float @dx.op.unary.f32(i32 21, float %4664)  ; Exp(value)
  %4669 = call float @dx.op.unary.f32(i32 21, float %4666)  ; Exp(value)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4673 = fmul fast float %4597, %4670
  %4674 = fmul fast float %4598, %4671
  %4675 = fmul fast float %4599, %4672
  %4676 = fsub fast float %3303, %2207
  %4677 = fsub fast float %3304, %2206
  %4678 = fsub fast float %3305, %2205
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4676, float %4677, float %4678, float %4676, float %4677, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call float @dx.op.unary.f32(i32 25, float %4679)  ; Rsqrt(value)
  %4681 = fmul fast float %4680, %4676
  %4682 = fmul fast float %4680, %4677
  %4683 = fmul fast float %4680, %4678
  %4684 = call float @dx.op.dot3.f32(i32 55, float %3303, float %3304, float %3305, float %2211, float %2212, float %2213)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call float @dx.op.dot3.f32(i32 55, float %2204, float %2203, float %2202, float %4681, float %4682, float %4683)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4687 = fmul fast float %4686, %4686
  %4688 = fmul fast float %4687, %2290
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fmul fast float %4689, %4686
  %4691 = call float @dx.op.dot3.f32(i32 55, float %2211, float %2212, float %2213, float %4681, float %4682, float %4683)  ; Dot3(ax,ay,az,bx,by,bz)
  %4692 = fmul fast float %4691, %4691
  %4693 = call float @dx.op.unary.f32(i32 6, float %4684)  ; FAbs(value)
  %4694 = fsub fast float 1.000000e+00, %2283
  %4695 = fmul fast float %2225, %2225
  %4696 = fmul fast float %4695, %4694
  %4697 = fadd fast float %4696, %2283
  %4698 = bitcast float %4697 to i32
  %4699 = ashr i32 %4698, 1
  %4700 = add nsw i32 %4699, 532487669
  %4701 = bitcast i32 %4700 to float
  %4702 = fadd fast float %4701, %2225
  %4703 = call float @dx.op.dot3.f32(i32 55, float %1644, float %1645, float %1646, float %4681, float %4682, float %4683)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = fsub fast float 1.000000e+00, %1632
  %4705 = call float @dx.op.binary.f32(i32 35, float %4704, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4706 = fmul fast float %4705, %4705
  %4707 = fmul fast float %4706, %2283
  %4708 = fmul fast float %4703, %4703
  %4709 = fsub fast float 1.000000e+00, %4692
  %4710 = fsub fast float %4709, %4708
  %4711 = fdiv fast float %4708, %4707
  %4712 = fadd fast float %4711, %4692
  %4713 = fdiv fast float %4710, %2283
  %4714 = fadd fast float %4712, %4713
  %4715 = fmul fast float %4693, %4693
  %4716 = fmul fast float %4715, %4694
  %4717 = fadd fast float %4716, %2283
  %4718 = bitcast float %4717 to i32
  %4719 = ashr i32 %4718, 1
  %4720 = add nsw i32 %4719, 532487669
  %4721 = bitcast i32 %4720 to float
  %4722 = fadd fast float %4721, %4693
  %4723 = fmul fast float %2283, %4705
  %4724 = fmul fast float %4714, %4714
  %4725 = fmul fast float %4724, %4723
  %4726 = fmul fast float %4725, %4702
  %4727 = fmul fast float %4726, %4722
  %4728 = fdiv fast float 0x3FF0A00000000000, %4727
  %4729 = fmul fast float %2536, 0x3FF9999980000000
  %4730 = fsub fast float 5.000000e+00, %4729
  %4731 = call float @dx.op.unary.f32(i32 6, float %4685)  ; FAbs(value)
  %4732 = fsub fast float 1.000000e+00, %4731
  %4733 = fmul fast float %2536, 0x41D9660740000000
  %4734 = fadd fast float %4733, 0xC1EFBF8940000000
  %4735 = bitcast float %4732 to i32
  %4736 = sitofp i32 %4735 to float
  %4737 = fmul fast float %4736, %4730
  %4738 = fadd fast float %4734, %4737
  %4739 = fptosi float %4738 to i32
  %4740 = bitcast i32 %4739 to float
  %4741 = fsub fast float 1.000000e+00, %2208
  %4742 = fsub fast float 1.000000e+00, %2209
  %4743 = fsub fast float 1.000000e+00, %2223
  %4744 = fmul fast float %4740, %4741
  %4745 = fmul fast float %4740, %4742
  %4746 = fmul fast float %4740, %4743
  %4747 = fadd fast float %4744, %2208
  %4748 = fadd fast float %4745, %2209
  %4749 = fadd fast float %4746, %2223
  br i1 %2559, label %4750, label %4773

; <label>:4750                                    ; preds = %4657
  %4751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1507, float %4731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4752 = extractvalue %dx.types.ResRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.ResRet.f32 %4751, 1
  %4754 = extractvalue %dx.types.ResRet.f32 %4751, 2
  %4755 = fadd fast float %4752, -5.000000e-01
  %4756 = fadd fast float %4753, -5.000000e-01
  %4757 = fadd fast float %4754, -5.000000e-01
  %4758 = fmul fast float %2208, 4.000000e+00
  %4759 = fmul fast float %4758, %4741
  %4760 = fmul fast float %4759, %4755
  %4761 = fmul fast float %2209, 4.000000e+00
  %4762 = fmul fast float %4761, %4742
  %4763 = fmul fast float %4762, %4756
  %4764 = fmul fast float %2223, 4.000000e+00
  %4765 = fmul fast float %4764, %4743
  %4766 = fmul fast float %4765, %4757
  %4767 = fadd fast float %4760, %4747
  %4768 = fadd fast float %4763, %4748
  %4769 = fadd fast float %4766, %4749
  %4770 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4771 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  br label %4773

; <label>:4773                                    ; preds = %4750, %4657
  %4774 = phi float [ %4770, %4750 ], [ %4747, %4657 ]
  %4775 = phi float [ %4771, %4750 ], [ %4748, %4657 ]
  %4776 = phi float [ %4772, %4750 ], [ %4749, %4657 ]
  %4777 = fmul fast float %4684, 9.843750e-01
  %4778 = fadd fast float %4777, 7.812500e-03
  %4779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %4778, float %2540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 1
  %4782 = extractvalue %dx.types.ResRet.f32 %4779, 2
  %4783 = extractvalue %dx.types.ResRet.f32 %4779, 3
  %4784 = fsub fast float %4782, %4780
  %4785 = fsub fast float %4783, %4781
  %4786 = fmul fast float %4784, %2546
  %4787 = fmul fast float %4785, %2546
  %4788 = fadd fast float %4786, %4780
  %4789 = fadd fast float %4787, %4781
  %4790 = fmul fast float %4788, %2208
  %4791 = fmul fast float %4788, %2209
  %4792 = fmul fast float %4788, %2223
  %4793 = fadd fast float %4790, %4789
  %4794 = fadd fast float %4791, %4789
  %4795 = fadd fast float %4792, %4789
  br i1 %2559, label %4796, label %4819

; <label>:4796                                    ; preds = %4773
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1507, float %4684, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4801 = fadd fast float %4798, -5.000000e-01
  %4802 = fadd fast float %4799, -5.000000e-01
  %4803 = fadd fast float %4800, -5.000000e-01
  %4804 = fmul fast float %2208, 4.000000e+00
  %4805 = fmul fast float %4804, %4741
  %4806 = fmul fast float %4805, %4801
  %4807 = fmul fast float %2209, 4.000000e+00
  %4808 = fmul fast float %4807, %4742
  %4809 = fmul fast float %4808, %4802
  %4810 = fmul fast float %2223, 4.000000e+00
  %4811 = fmul fast float %4810, %4743
  %4812 = fmul fast float %4811, %4803
  %4813 = fadd fast float %4806, %4793
  %4814 = fadd fast float %4809, %4794
  %4815 = fadd fast float %4812, %4795
  %4816 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4817 = call float @dx.op.unary.f32(i32 7, float %4814)  ; Saturate(value)
  %4818 = call float @dx.op.unary.f32(i32 7, float %4815)  ; Saturate(value)
  br label %4819

; <label>:4819                                    ; preds = %4796, %4773
  %4820 = phi float [ %4816, %4796 ], [ %4793, %4773 ]
  %4821 = phi float [ %4817, %4796 ], [ %4794, %4773 ]
  %4822 = phi float [ %4818, %4796 ], [ %4795, %4773 ]
  %4823 = call float @dx.op.binary.f32(i32 35, float %4821, float %4822)  ; FMax(a,b)
  %4824 = call float @dx.op.binary.f32(i32 35, float %4820, float %4823)  ; FMax(a,b)
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = call float @dx.op.binary.f32(i32 35, float %4693, float 0x3F50624DE0000000)  ; FMax(a,b)
  %4827 = fdiv fast float %913, %4826
  %4828 = fmul fast float %3212, %4827
  %4829 = fmul fast float %3214, %4827
  %4830 = fmul fast float %3216, %4827
  %4831 = call float @dx.op.unary.f32(i32 21, float %4828)  ; Exp(value)
  %4832 = call float @dx.op.unary.f32(i32 21, float %4829)  ; Exp(value)
  %4833 = call float @dx.op.unary.f32(i32 21, float %4830)  ; Exp(value)
  %4834 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4835 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4836 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4837 = select i1 %3209, float %4834, float 0.000000e+00
  %4838 = select i1 %3210, float %4835, float 0.000000e+00
  %4839 = select i1 %3211, float %4836, float 0.000000e+00
  %4840 = call float @dx.op.dot3.f32(i32 55, float %3303, float %3304, float %3305, float %2221, float %2220, float %2219)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = fmul fast float %4841, 9.843750e-01
  %4843 = fadd fast float %4842, 7.812500e-03
  %4844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %4843, float %2540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4845 = extractvalue %dx.types.ResRet.f32 %4844, 0
  %4846 = extractvalue %dx.types.ResRet.f32 %4844, 1
  %4847 = extractvalue %dx.types.ResRet.f32 %4844, 2
  %4848 = extractvalue %dx.types.ResRet.f32 %4844, 3
  %4849 = fsub fast float %4847, %4845
  %4850 = fsub fast float %4848, %4846
  %4851 = fmul fast float %4849, %2546
  %4852 = fmul fast float %4850, %2546
  %4853 = fadd fast float %4851, %4845
  %4854 = fadd fast float %4852, %4846
  %4855 = fmul fast float %4853, %2208
  %4856 = fmul fast float %4853, %2209
  %4857 = fmul fast float %4853, %2223
  %4858 = fadd fast float %4855, %4854
  %4859 = fadd fast float %4856, %4854
  %4860 = fadd fast float %4857, %4854
  br i1 %2559, label %4861, label %4884

; <label>:4861                                    ; preds = %4819
  %4862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1507, float %4841, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4863 = extractvalue %dx.types.ResRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.ResRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.ResRet.f32 %4862, 2
  %4866 = fadd fast float %4863, -5.000000e-01
  %4867 = fadd fast float %4864, -5.000000e-01
  %4868 = fadd fast float %4865, -5.000000e-01
  %4869 = fmul fast float %2208, 4.000000e+00
  %4870 = fmul fast float %4869, %4741
  %4871 = fmul fast float %4870, %4866
  %4872 = fmul fast float %2209, 4.000000e+00
  %4873 = fmul fast float %4872, %4742
  %4874 = fmul fast float %4873, %4867
  %4875 = fmul fast float %2223, 4.000000e+00
  %4876 = fmul fast float %4875, %4743
  %4877 = fmul fast float %4876, %4868
  %4878 = fadd fast float %4871, %4858
  %4879 = fadd fast float %4874, %4859
  %4880 = fadd fast float %4877, %4860
  %4881 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4882 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4883 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  br label %4884

; <label>:4884                                    ; preds = %4861, %4819
  %4885 = phi float [ %4881, %4861 ], [ %4858, %4819 ]
  %4886 = phi float [ %4882, %4861 ], [ %4859, %4819 ]
  %4887 = phi float [ %4883, %4861 ], [ %4860, %4819 ]
  %4888 = call float @dx.op.binary.f32(i32 35, float %4886, float %4887)  ; FMax(a,b)
  %4889 = call float @dx.op.binary.f32(i32 35, float %4885, float %4888)  ; FMax(a,b)
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = fmul fast float %2280, %3276
  %4892 = fadd fast float %3278, %4891
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = fsub fast float %3303, %2231
  %4895 = fsub fast float %3304, %2232
  %4896 = fsub fast float %3305, %2233
  %4897 = call float @dx.op.dot3.f32(i32 55, float %4894, float %4895, float %4896, float %4894, float %4895, float %4896)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = call float @dx.op.unary.f32(i32 25, float %4897)  ; Rsqrt(value)
  %4899 = fmul fast float %4898, %4894
  %4900 = fmul fast float %4898, %4895
  %4901 = fmul fast float %4898, %4896
  %4902 = call float @dx.op.dot3.f32(i32 55, float %2221, float %2220, float %2219, float %4899, float %4900, float %4901)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = fmul fast float %4902, %4902
  %4904 = call float @dx.op.unary.f32(i32 6, float %4841)  ; FAbs(value)
  %4905 = call float @dx.op.binary.f32(i32 35, float %4893, float 0x3F847AE140000000)  ; FMax(a,b)
  %4906 = fmul fast float %4905, %4905
  %4907 = fmul fast float %4906, %4906
  %4908 = fsub fast float 1.000000e+00, %4907
  %4909 = fmul fast float %4695, %4908
  %4910 = fadd fast float %4909, %4907
  %4911 = bitcast float %4910 to i32
  %4912 = ashr i32 %4911, 1
  %4913 = add nsw i32 %4912, 532487669
  %4914 = bitcast i32 %4913 to float
  %4915 = fadd fast float %4914, %2225
  %4916 = call float @dx.op.dot3.f32(i32 55, float %1644, float %1645, float %1646, float %4899, float %4900, float %4901)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = fmul fast float %4706, %4907
  %4918 = fmul fast float %4916, %4916
  %4919 = fsub fast float 1.000000e+00, %4903
  %4920 = fsub fast float %4919, %4918
  %4921 = fdiv fast float %4918, %4917
  %4922 = fadd fast float %4921, %4903
  %4923 = fdiv fast float %4920, %4907
  %4924 = fadd fast float %4922, %4923
  %4925 = fmul fast float %4904, %4904
  %4926 = fmul fast float %4925, %4908
  %4927 = fadd fast float %4926, %4907
  %4928 = bitcast float %4927 to i32
  %4929 = ashr i32 %4928, 1
  %4930 = add nsw i32 %4929, 532487669
  %4931 = bitcast i32 %4930 to float
  %4932 = fadd fast float %4931, %4904
  %4933 = fmul fast float %4907, %4705
  %4934 = fmul fast float %4924, %4924
  %4935 = fmul fast float %4934, %4933
  %4936 = fmul fast float %4935, %4915
  %4937 = fmul fast float %4936, %4932
  %4938 = fdiv fast float 0x3FF0A00000000000, %4937
  %4939 = fmul fast float %4841, %4837
  %4940 = fmul fast float %4841, %4838
  %4941 = fmul fast float %4841, %4839
  %4942 = fmul fast float %4939, %4890
  %4943 = fmul fast float %4942, %4938
  %4944 = fmul fast float %4940, %4890
  %4945 = fmul fast float %4944, %4938
  %4946 = fmul fast float %4941, %4890
  %4947 = fmul fast float %4946, %4938
  %4948 = fmul fast float %4774, %4728
  %4949 = fmul fast float %4775, %4728
  %4950 = fmul fast float %4776, %4728
  %4951 = fsub fast float 1.000000e+00, %4685
  %4952 = bitcast float %4951 to i32
  %4953 = sitofp i32 %4952 to float
  %4954 = fmul fast float %4953, 5.000000e+00
  %4955 = fadd fast float %4954, 0xC1EFBF8940000000
  %4956 = fptosi float %4955 to i32
  %4957 = bitcast i32 %4956 to float
  %4958 = fmul fast float %4957, %1506
  %4959 = fmul fast float %4825, %4958
  %4960 = fmul fast float %4959, %3204
  %4961 = fmul fast float %4959, %3205
  %4962 = fmul fast float %4959, %3206
  %4963 = fadd fast float %4960, %4948
  %4964 = fadd fast float %4961, %4949
  %4965 = fadd fast float %4962, %4950
  %4966 = fmul fast float %4963, %4690
  %4967 = fmul fast float %4964, %4690
  %4968 = fmul fast float %4965, %4690
  %4969 = fmul fast float %4690, %4673
  %4970 = fmul fast float %4969, %4825
  %4971 = fmul fast float %4690, %4674
  %4972 = fmul fast float %4971, %4825
  %4973 = fmul fast float %4690, %4675
  %4974 = fmul fast float %4973, %4825
  %4975 = fadd fast float %4966, %4943
  %4976 = fadd fast float %4967, %4945
  %4977 = fadd fast float %4968, %4947
  %4978 = fmul fast float %4975, %4673
  %4979 = fmul fast float %4976, %4674
  %4980 = fmul fast float %4977, %4675
  %4981 = fadd fast float %4970, %3293
  %4982 = fmul fast float %4981, %1530
  %4983 = fadd fast float %4972, %3295
  %4984 = fmul fast float %4983, %1530
  %4985 = fadd fast float %4974, %3297
  %4986 = fmul fast float %4985, %1530
  %4987 = fadd fast float %4978, %3257
  %4988 = fmul fast float %4987, %1530
  %4989 = fadd fast float %4979, %3260
  %4990 = fmul fast float %4989, %1530
  %4991 = fadd fast float %4980, %3263
  %4992 = fmul fast float %4991, %1530
  br label %4993

; <label>:4993                                    ; preds = %4884, %4591, %3187
  %4994 = phi float [ %3258, %3187 ], [ %3258, %4591 ], [ %4988, %4884 ]
  %4995 = phi float [ %3261, %3187 ], [ %3261, %4591 ], [ %4990, %4884 ]
  %4996 = phi float [ %3264, %3187 ], [ %3264, %4591 ], [ %4992, %4884 ]
  %4997 = phi float [ %3294, %3187 ], [ %3294, %4591 ], [ %4982, %4884 ]
  %4998 = phi float [ %3296, %3187 ], [ %3296, %4591 ], [ %4984, %4884 ]
  %4999 = phi float [ %3298, %3187 ], [ %3298, %4591 ], [ %4986, %4884 ]
  %5000 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.i32 %5000, 0
  %5002 = icmp eq i32 %5001, 0
  br i1 %5002, label %5834, label %5003

; <label>:5003                                    ; preds = %4993
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5007 = fmul fast float %5005, %95
  %5008 = fmul fast float %5006, %96
  %5009 = fptoui float %5007 to i32
  %5010 = fptoui float %5008 to i32
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 0
  %5013 = extractvalue %dx.types.CBufRet.f32 %5011, 2
  %5014 = extractvalue %dx.types.CBufRet.f32 %5011, 3
  %5015 = fadd fast float %83, -4.000000e+00
  %5016 = call float @dx.op.binary.f32(i32 35, float %5015, float 0.000000e+00)  ; FMax(a,b)
  %5017 = fadd fast float %5016, %5012
  %5018 = fmul fast float %5017, %5013
  %5019 = call float @dx.op.unary.f32(i32 23, float %5018)  ; Log(value)
  %5020 = fmul fast float %5019, %5014
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5023 = fmul fast float %5020, %5022
  %5024 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.i32 %5025, 1
  %5027 = add i32 %5026, -1
  %5028 = uitofp i32 %5026 to float
  %5029 = fmul fast float %5028, %5024
  %5030 = fptoui float %5029 to i32
  %5031 = call i32 @dx.op.binary.i32(i32 40, i32 %5030, i32 %5027)  ; UMin(a,b)
  %5032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5033 = extractvalue %dx.types.CBufRet.i32 %5032, 2
  %5034 = extractvalue %dx.types.CBufRet.i32 %5032, 3
  %5035 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5010, i32 %5033, i32 %5009)  ; UMad(a,b,c)
  %5036 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5031, i32 %5034, i32 %5035)  ; UMad(a,b,c)
  %5037 = add nsw i32 %5001, -1
  %5038 = call i32 @dx.op.binary.i32(i32 37, i32 %5037, i32 0)  ; IMax(a,b)
  %5039 = call float @dx.op.binary.f32(i32 35, float %83, float 0.000000e+00)  ; FMax(a,b)
  %5040 = fptoui float %5039 to i32
  %5041 = lshr i32 %5040, 5
  %5042 = call i32 @dx.op.binary.i32(i32 40, i32 %5041, i32 8191)  ; UMin(a,b)
  %5043 = shl i32 %5042, 2
  %5044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5043, i32 undef)  ; BufferLoad(srv,index,wot)
  %5045 = extractvalue %dx.types.ResRet.i32 %5044, 0
  %5046 = lshr i32 %5045, 16
  %5047 = and i32 %5045, 65535
  %5048 = lshr i32 %5045, 21
  %5049 = lshr i32 %5047, 5
  %5050 = call i32 @dx.op.binary.i32(i32 40, i32 %5049, i32 %5038)  ; UMin(a,b)
  %5051 = icmp ugt i32 %5048, %5050
  br i1 %5051, label %5834, label %5052

; <label>:5052                                    ; preds = %5003
  br label %5053

; <label>:5053                                    ; preds = %5824, %5052
  %5054 = phi i32 [ %5831, %5824 ], [ %5048, %5052 ]
  %5055 = phi float [ %5825, %5824 ], [ %4994, %5052 ]
  %5056 = phi float [ %5826, %5824 ], [ %4995, %5052 ]
  %5057 = phi float [ %5827, %5824 ], [ %4996, %5052 ]
  %5058 = phi float [ %5828, %5824 ], [ %4997, %5052 ]
  %5059 = phi float [ %5829, %5824 ], [ %4998, %5052 ]
  %5060 = phi float [ %5830, %5824 ], [ %4999, %5052 ]
  %5061 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.i32 %5061, 0
  %5063 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5036, i32 %5062, i32 %5054)  ; UMad(a,b,c)
  %5064 = shl i32 %5063, 2
  %5065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5064, i32 undef)  ; BufferLoad(srv,index,wot)
  %5066 = extractvalue %dx.types.ResRet.i32 %5065, 0
  %5067 = shl i32 %5054, 5
  %5068 = sub nsw i32 %5046, %5067
  %5069 = call i32 @dx.op.binary.i32(i32 37, i32 %5068, i32 0)  ; IMax(a,b)
  %5070 = call i32 @dx.op.binary.i32(i32 38, i32 %5069, i32 31)  ; IMin(a,b)
  %5071 = sub nsw i32 1, %5046
  %5072 = add nsw i32 %5071, %5047
  %5073 = call i32 @dx.op.binary.i32(i32 37, i32 %5072, i32 0)  ; IMax(a,b)
  %5074 = call i32 @dx.op.binary.i32(i32 38, i32 %5073, i32 32)  ; IMin(a,b)
  %5075 = and i32 %5074, 31
  %5076 = shl i32 -1, %5075
  %5077 = xor i32 %5076, -1
  %5078 = and i32 %5070, 31
  %5079 = shl i32 %5077, %5078
  %5080 = icmp eq i32 %5074, 32
  %5081 = select i1 %5080, i32 -1, i32 %5079
  %5082 = and i32 %5081, %5066
  %5083 = icmp eq i32 %5082, 0
  br i1 %5083, label %5824, label %5084

; <label>:5084                                    ; preds = %5053
  br label %5085

; <label>:5085                                    ; preds = %5220, %5084
  %5086 = phi i32 [ %5097, %5220 ], [ %5082, %5084 ]
  %5087 = phi float [ %5221, %5220 ], [ %5055, %5084 ]
  %5088 = phi float [ %5222, %5220 ], [ %5056, %5084 ]
  %5089 = phi float [ %5223, %5220 ], [ %5057, %5084 ]
  %5090 = phi float [ %5224, %5220 ], [ %5058, %5084 ]
  %5091 = phi float [ %5225, %5220 ], [ %5059, %5084 ]
  %5092 = phi float [ %5226, %5220 ], [ %5060, %5084 ]
  %5093 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5086)  ; FirstbitLo(value)
  %5094 = add i32 %5093, %5067
  %5095 = and i32 %5093, 31
  %5096 = shl i32 1, %5095
  %5097 = xor i32 %5096, %5086
  %5098 = mul i32 %5094, 112
  %5099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5098, i32 undef)  ; BufferLoad(srv,index,wot)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = extractvalue %dx.types.ResRet.f32 %5099, 1
  %5102 = extractvalue %dx.types.ResRet.f32 %5099, 2
  %5103 = or i32 %5098, 12
  %5104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5103, i32 undef)  ; BufferLoad(srv,index,wot)
  %5105 = extractvalue %dx.types.ResRet.f32 %5104, 0
  %5106 = add i32 %5098, 16
  %5107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5106, i32 undef)  ; BufferLoad(srv,index,wot)
  %5108 = extractvalue %dx.types.ResRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.ResRet.f32 %5107, 1
  %5110 = extractvalue %dx.types.ResRet.f32 %5107, 2
  %5111 = add i32 %5098, 28
  %5112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5111, i32 undef)  ; BufferLoad(srv,index,wot)
  %5113 = extractvalue %dx.types.ResRet.i32 %5112, 0
  %5114 = add i32 %5098, 44
  %5115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5114, i32 undef)  ; BufferLoad(srv,index,wot)
  %5116 = extractvalue %dx.types.ResRet.f32 %5115, 0
  %5117 = add i32 %5098, 48
  %5118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5117, i32 undef)  ; BufferLoad(srv,index,wot)
  %5119 = extractvalue %dx.types.ResRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.ResRet.f32 %5118, 1
  %5121 = extractvalue %dx.types.ResRet.f32 %5118, 2
  %5122 = extractvalue %dx.types.ResRet.f32 %5118, 3
  %5123 = add i32 %5098, 64
  %5124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5123, i32 undef)  ; BufferLoad(srv,index,wot)
  %5125 = extractvalue %dx.types.ResRet.f32 %5124, 0
  %5126 = extractvalue %dx.types.ResRet.f32 %5124, 1
  %5127 = extractvalue %dx.types.ResRet.f32 %5124, 2
  %5128 = extractvalue %dx.types.ResRet.f32 %5124, 3
  %5129 = add i32 %5098, 80
  %5130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %5129, i32 undef)  ; BufferLoad(srv,index,wot)
  %5131 = extractvalue %dx.types.ResRet.f32 %5130, 1
  %5132 = extractvalue %dx.types.ResRet.f32 %5130, 2
  %5133 = add i32 %5098, 92
  %5134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %5133, i32 undef)  ; BufferLoad(srv,index,wot)
  %5135 = extractvalue %dx.types.ResRet.i32 %5134, 0
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5100, float %5101, float %5102, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = select i1 %212, float %5131, float %5100
  %5138 = select i1 %212, float %5136, float %5101
  %5139 = select i1 %212, float %5132, float %5102
  %5140 = and i32 %5135, 65535
  %5141 = uitofp i32 %5140 to float
  %5142 = lshr i32 %5135, 16
  %5143 = uitofp i32 %5142 to float
  %5144 = and i32 %5113, 65535
  %5145 = and i32 %5113, 50331648
  %5146 = icmp slt i32 %5113, 0
  %5147 = icmp eq i32 %5145, 33554432
  %5148 = fsub fast float %5119, %150
  %5149 = fsub fast float %5120, %151
  %5150 = fsub fast float %5121, %152
  %5151 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5148, float %5149, float %5150)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = call float @dx.op.unary.f32(i32 24, float %5151)  ; Sqrt(value)
  %5153 = fdiv fast float 1.000000e+00, %5152
  %5154 = fmul fast float %5153, %5148
  %5155 = fmul fast float %5153, %5149
  %5156 = fmul fast float %5153, %5150
  %5157 = fadd fast float %5152, %5105
  %5158 = fdiv fast float 1.000000e+00, %5157
  %5159 = fmul float %5116, %5158
  %5160 = fmul float %5159, %5159
  %5161 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  br i1 %5147, label %5162, label %5183

; <label>:5162                                    ; preds = %5085
  %5163 = fmul fast float %5127, %5108
  %5164 = fmul fast float %5127, %5109
  %5165 = fmul fast float %5127, %5110
  %5166 = fadd fast float %5148, %5163
  %5167 = fadd fast float %5149, %5164
  %5168 = fadd fast float %5150, %5165
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5166, float %5167, float %5168, float %5166, float %5167, float %5168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = call float @dx.op.unary.f32(i32 25, float %5169)  ; Rsqrt(value)
  %5171 = fmul fast float %5170, %5166
  %5172 = fmul fast float %5170, %5167
  %5173 = fmul fast float %5170, %5168
  %5174 = fsub fast float %150, %5119
  %5175 = fsub fast float %151, %5120
  %5176 = fsub fast float %152, %5121
  %5177 = fsub fast float -0.000000e+00, %5174
  %5178 = fsub fast float -0.000000e+00, %5175
  %5179 = fsub fast float -0.000000e+00, %5176
  %5180 = call float @dx.op.dot3.f32(i32 55, float %5177, float %5178, float %5179, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = fcmp fast ogt float %5180, 0.000000e+00
  %5182 = uitofp i1 %5181 to float
  br label %5183

; <label>:5183                                    ; preds = %5162, %5085
  %5184 = phi float [ %5182, %5162 ], [ 1.000000e+00, %5085 ]
  %5185 = phi float [ %5171, %5162 ], [ %5154, %5085 ]
  %5186 = phi float [ %5172, %5162 ], [ %5155, %5085 ]
  %5187 = phi float [ %5173, %5162 ], [ %5156, %5085 ]
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %5185, float %5186, float %5187)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = fmul fast float %5188, %5188
  %5190 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5191 = fsub fast float 1.000000e+00, %5190
  %5192 = fmul fast float %5191, 5.000000e-01
  %5193 = fcmp fast ogt float %5188, 0.000000e+00
  %5194 = fsub fast float 1.000000e+00, %5192
  %5195 = select i1 %5193, float %5192, float %5194
  %5196 = fmul fast float %5195, %5143
  %5197 = fadd fast float %5196, %5141
  %5198 = fmul fast float %5197, 0x3EF0001000000000
  %5199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %51, float %5198, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5200 = extractvalue %dx.types.ResRet.f32 %5199, 0
  %5201 = fmul fast float %5188, %5125
  %5202 = fadd fast float %5201, %5126
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = select i1 %5147, float 1.000000e+00, float %5203
  %5205 = select i1 %5147, float %5203, float 1.000000e+00
  %5206 = fmul fast float %5152, %5122
  %5207 = fsub fast float 1.000000e+00, %5206
  %5208 = fmul fast float %5207, %5128
  %5209 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5210 = fmul fast float %5209, %5205
  %5211 = fmul fast float %5210, 2.000000e+00
  %5212 = fsub fast float 3.000000e+00, %5211
  %5213 = fmul fast float %5200, %5184
  %5214 = fmul fast float %5210, %5210
  %5215 = fmul fast float %5214, %5213
  %5216 = fmul fast float %5215, %5212
  %5217 = call float @dx.op.binary.f32(i32 36, float %5216, float %5216)  ; FMin(a,b)
  %5218 = call float @dx.op.binary.f32(i32 36, float %5216, float %5217)  ; FMin(a,b)
  %5219 = fcmp fast ogt float %5218, 0.000000e+00
  br i1 %5219, label %5228, label %5220, !dx.controlflow.hints !125

; <label>:5220                                    ; preds = %5777, %5374, %5183
  %5221 = phi float [ %5087, %5374 ], [ %5087, %5183 ], [ %5820, %5777 ]
  %5222 = phi float [ %5088, %5374 ], [ %5088, %5183 ], [ %5821, %5777 ]
  %5223 = phi float [ %5089, %5374 ], [ %5089, %5183 ], [ %5822, %5777 ]
  %5224 = phi float [ %5090, %5374 ], [ %5090, %5183 ], [ %5814, %5777 ]
  %5225 = phi float [ %5091, %5374 ], [ %5091, %5183 ], [ %5815, %5777 ]
  %5226 = phi float [ %5092, %5374 ], [ %5092, %5183 ], [ %5816, %5777 ]
  %5227 = icmp eq i32 %5086, %5096
  br i1 %5227, label %5823, label %5085

; <label>:5228                                    ; preds = %5183
  %5229 = icmp eq i32 %5144, 255
  br i1 %5229, label %5374, label %5230, !dx.controlflow.hints !126

; <label>:5230                                    ; preds = %5228
  %5231 = mul nuw nsw i32 %5144, 176
  %5232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5231, i32 undef)  ; BufferLoad(srv,index,wot)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.ResRet.f32 %5232, 1
  %5235 = extractvalue %dx.types.ResRet.f32 %5232, 2
  %5236 = extractvalue %dx.types.ResRet.f32 %5232, 3
  %5237 = add nuw nsw i32 %5231, 16
  %5238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5237, i32 undef)  ; BufferLoad(srv,index,wot)
  %5239 = extractvalue %dx.types.ResRet.f32 %5238, 0
  %5240 = extractvalue %dx.types.ResRet.f32 %5238, 1
  %5241 = add nuw nsw i32 %5231, 32
  %5242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5241, i32 undef)  ; BufferLoad(srv,index,wot)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = extractvalue %dx.types.ResRet.f32 %5242, 1
  %5245 = extractvalue %dx.types.ResRet.f32 %5242, 2
  %5246 = add nuw nsw i32 %5231, 48
  %5247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5246, i32 undef)  ; BufferLoad(srv,index,wot)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.ResRet.f32 %5247, 2
  %5251 = extractvalue %dx.types.ResRet.f32 %5247, 3
  %5252 = add nuw nsw i32 %5231, 64
  %5253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5252, i32 undef)  ; BufferLoad(srv,index,wot)
  %5254 = extractvalue %dx.types.ResRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.ResRet.f32 %5253, 1
  %5256 = extractvalue %dx.types.ResRet.f32 %5253, 2
  %5257 = extractvalue %dx.types.ResRet.f32 %5253, 3
  %5258 = add nuw nsw i32 %5231, 80
  %5259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5258, i32 undef)  ; BufferLoad(srv,index,wot)
  %5260 = extractvalue %dx.types.ResRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.f32 %5259, 1
  %5262 = extractvalue %dx.types.ResRet.f32 %5259, 2
  %5263 = extractvalue %dx.types.ResRet.f32 %5259, 3
  %5264 = add nuw nsw i32 %5231, 96
  %5265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = extractvalue %dx.types.ResRet.f32 %5265, 1
  %5268 = extractvalue %dx.types.ResRet.f32 %5265, 2
  %5269 = extractvalue %dx.types.ResRet.f32 %5265, 3
  %5270 = bitcast float %5240 to i32
  %5271 = fmul fast float %5245, %98
  %5272 = fmul fast float %5245, %99
  %5273 = fmul fast float %5245, %100
  %5274 = fadd fast float %5271, %150
  %5275 = fadd fast float %5272, %151
  %5276 = fadd fast float %5273, %152
  %5277 = fmul fast float %5274, %5248
  %5278 = call float @dx.op.tertiary.f32(i32 46, float %5275, float %5254, float %5277)  ; FMad(a,b,c)
  %5279 = call float @dx.op.tertiary.f32(i32 46, float %5276, float %5260, float %5278)  ; FMad(a,b,c)
  %5280 = fadd fast float %5279, %5266
  %5281 = fmul fast float %5274, %5249
  %5282 = call float @dx.op.tertiary.f32(i32 46, float %5275, float %5255, float %5281)  ; FMad(a,b,c)
  %5283 = call float @dx.op.tertiary.f32(i32 46, float %5276, float %5261, float %5282)  ; FMad(a,b,c)
  %5284 = fadd fast float %5283, %5267
  %5285 = fmul fast float %5274, %5250
  %5286 = call float @dx.op.tertiary.f32(i32 46, float %5275, float %5256, float %5285)  ; FMad(a,b,c)
  %5287 = call float @dx.op.tertiary.f32(i32 46, float %5276, float %5262, float %5286)  ; FMad(a,b,c)
  %5288 = fadd fast float %5287, %5268
  %5289 = fmul fast float %5274, %5251
  %5290 = call float @dx.op.tertiary.f32(i32 46, float %5275, float %5257, float %5289)  ; FMad(a,b,c)
  %5291 = call float @dx.op.tertiary.f32(i32 46, float %5276, float %5263, float %5290)  ; FMad(a,b,c)
  %5292 = fadd fast float %5291, %5269
  %5293 = fdiv fast float %5280, %5292
  %5294 = fdiv fast float %5284, %5292
  %5295 = fdiv fast float %5288, %5292
  %5296 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5295)  ; FMax(a,b)
  %5297 = fmul fast float %223, 0x401921FB60000000
  %5298 = call float @dx.op.unary.f32(i32 13, float %5297)  ; Sin(value)
  %5299 = call float @dx.op.unary.f32(i32 12, float %5297)  ; Cos(value)
  %5300 = fmul fast float %5299, %5244
  %5301 = call float @dx.op.tertiary.f32(i32 46, float %5298, float %5244, float 0.000000e+00)  ; FMad(a,b,c)
  %5302 = fmul fast float %5244, %5298
  %5303 = fsub fast float -0.000000e+00, %5302
  %5304 = call float @dx.op.tertiary.f32(i32 46, float %5299, float %5244, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5305

; <label>:5305                                    ; preds = %5305, %5230
  %5306 = phi float [ 0.000000e+00, %5230 ], [ %5338, %5305 ]
  %5307 = phi float [ 0.000000e+00, %5230 ], [ %5340, %5305 ]
  %5308 = phi i32 [ 0, %5230 ], [ %5341, %5305 ]
  %5309 = mul i32 %5308, 2
  %5310 = add i32 0, %5309
  %5311 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5310
  %5312 = load float, float* %5311, align 4
  %5313 = mul i32 %5308, 2
  %5314 = add i32 1, %5313
  %5315 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5314
  %5316 = load float, float* %5315, align 4
  %5317 = fmul fast float %5300, %5312
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5303, float %5317)  ; FMad(a,b,c)
  %5319 = fmul fast float %5312, %5301
  %5320 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5304, float %5319)  ; FMad(a,b,c)
  %5321 = fadd fast float %5318, %5293
  %5322 = fadd fast float %5320, %5294
  %5323 = fmul fast float %5321, %5239
  %5324 = fmul fast float %5322, %5239
  %5325 = call float @dx.op.binary.f32(i32 35, float %5323, float %5235)  ; FMax(a,b)
  %5326 = call float @dx.op.binary.f32(i32 35, float %5324, float %5235)  ; FMax(a,b)
  %5327 = call float @dx.op.binary.f32(i32 36, float %5325, float %5236)  ; FMin(a,b)
  %5328 = call float @dx.op.binary.f32(i32 36, float %5326, float %5236)  ; FMin(a,b)
  %5329 = fadd fast float %5327, %5233
  %5330 = fadd fast float %5328, %5234
  %5331 = uitofp i32 %5270 to float
  %5332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %52, float %5329, float %5330, float %5331, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5333 = extractvalue %dx.types.ResRet.f32 %5332, 0
  %5334 = fsub fast float %5333, %5296
  %5335 = fsub fast float %5334, %5243
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  %5337 = select i1 %5336, float 1.000000e+00, float 0.000000e+00
  %5338 = fadd fast float %5337, %5306
  %5339 = select i1 %5336, float %5335, float 0.000000e+00
  %5340 = fadd fast float %5339, %5307
  %5341 = add nuw nsw i32 %5308, 1
  %5342 = icmp eq i32 %5341, 8
  br i1 %5342, label %5343, label %5305

; <label>:5343                                    ; preds = %5305
  %5344 = fdiv fast float 1.000000e+00, %5338
  %5345 = fmul fast float %5344, %5340
  %5346 = fdiv fast float 1.000000e+00, %5296
  %5347 = fmul fast float %5345, %5346
  %5348 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5349 = call float @dx.op.binary.f32(i32 35, float %5348, float 0.000000e+00)  ; FMax(a,b)
  %5350 = fmul fast float %5338, 1.250000e-01
  %5351 = call float @dx.op.unary.f32(i32 7, float %5350)  ; Saturate(value)
  %5352 = fmul fast float %5351, 2.000000e+00
  %5353 = fadd fast float %5352, -1.000000e+00
  %5354 = fcmp fast ogt float %5353, 0.000000e+00
  %5355 = fcmp fast olt float %5353, 0.000000e+00
  %5356 = zext i1 %5354 to i32
  %5357 = zext i1 %5355 to i32
  %5358 = sub nsw i32 %5356, %5357
  %5359 = sitofp i32 %5358 to float
  %5360 = fmul fast float %5359, %5353
  %5361 = fsub fast float 1.000000e+00, %5360
  %5362 = fmul fast float %5361, %5361
  %5363 = fmul fast float %5362, %5361
  %5364 = fsub fast float %5361, %5363
  %5365 = fmul fast float %5364, %5349
  %5366 = fsub fast float 1.000000e+00, %5363
  %5367 = fsub fast float %5366, %5365
  %5368 = fmul fast float %5359, 5.000000e-01
  %5369 = fmul fast float %5368, %5367
  %5370 = fsub fast float -5.000000e-01, %5369
  %5371 = fmul fast float %5370, %5204
  %5372 = fadd fast float %5371, 1.000000e+00
  %5373 = fmul fast float %5372, %5216
  br label %5374

; <label>:5374                                    ; preds = %5343, %5228
  %5375 = phi float [ %5373, %5343 ], [ %5216, %5228 ]
  %5376 = call float @dx.op.binary.f32(i32 36, float %5375, float %5375)  ; FMin(a,b)
  %5377 = call float @dx.op.binary.f32(i32 36, float %5375, float %5376)  ; FMin(a,b)
  %5378 = fcmp fast ogt float %5377, 0.000000e+00
  br i1 %5378, label %5379, label %5220, !dx.controlflow.hints !127

; <label>:5379                                    ; preds = %5374
  %5380 = fmul fast float %5375, %5137
  %5381 = fmul fast float %5375, %5138
  %5382 = fmul fast float %5375, %5139
  %5383 = fsub fast float %5121, %2007
  %5384 = fcmp fast ogt float %5383, 0.000000e+00
  %5385 = fsub fast float %152, %2007
  %5386 = fcmp fast ogt float %5385, 0.000000e+00
  %5387 = xor i1 %5386, %5384
  %5388 = fsub fast float %2007, %5121
  %5389 = fmul fast float %5388, 2.000000e+00
  %5390 = fadd fast float %5389, %5121
  %5391 = select i1 %5387, float %5121, float %5390
  %5392 = fsub fast float %5391, %152
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5392, float %5148, float %5149, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 25, float %5393)  ; Rsqrt(value)
  %5395 = fmul fast float %5394, %5148
  %5396 = fmul fast float %5394, %5149
  %5397 = fmul fast float %5394, %5392
  %5398 = fsub fast float %2007, %152
  %5399 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5395, float %5396, float %5397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = fdiv fast float 1.000000e+00, %5400
  %5402 = fmul fast float %5401, %5399
  %5403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5385, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = fcmp fast ogt float %5403, 0.000000e+00
  %5405 = fcmp fast olt float %5403, 0.000000e+00
  %5406 = zext i1 %5404 to i32
  %5407 = zext i1 %5405 to i32
  %5408 = sub nsw i32 %5406, %5407
  %5409 = sitofp i32 %5408 to float
  %5410 = fsub fast float %5391, %2007
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5410, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = fcmp fast ogt float %5411, 0.000000e+00
  %5413 = fcmp fast olt float %5411, 0.000000e+00
  %5414 = zext i1 %5412 to i32
  %5415 = zext i1 %5413 to i32
  %5416 = sub nsw i32 %5414, %5415
  %5417 = sitofp i32 %5416 to float
  %5418 = fcmp fast une float %5409, %5417
  br i1 %5418, label %5419, label %5429

; <label>:5419                                    ; preds = %5379
  %5420 = fmul fast float %5402, %5397
  %5421 = fmul fast float %5402, %5396
  %5422 = fmul fast float %5402, %5395
  %5423 = fmul fast float %5422, %5422
  %5424 = fmul fast float %5421, %5421
  %5425 = fadd fast float %5423, %5424
  %5426 = fmul fast float %5420, %5420
  %5427 = fadd fast float %5425, %5426
  %5428 = call float @dx.op.unary.f32(i32 24, float %5427)  ; Sqrt(value)
  br label %5441

; <label>:5429                                    ; preds = %5379
  %5430 = icmp slt i32 %5408, 0
  br i1 %5430, label %5431, label %5441

; <label>:5431                                    ; preds = %5429
  %5432 = fsub fast float %150, %5119
  %5433 = fsub fast float %151, %5120
  %5434 = fsub fast float %152, %5391
  %5435 = fmul fast float %5432, %5432
  %5436 = fmul fast float %5433, %5433
  %5437 = fadd fast float %5435, %5436
  %5438 = fmul fast float %5434, %5434
  %5439 = fadd fast float %5437, %5438
  %5440 = call float @dx.op.unary.f32(i32 24, float %5439)  ; Sqrt(value)
  br label %5441

; <label>:5441                                    ; preds = %5431, %5429, %5419
  %5442 = phi float [ %5428, %5419 ], [ %5440, %5431 ], [ 0.000000e+00, %5429 ]
  %5443 = and i1 %5386, %5384
  %5444 = fsub fast float -0.000000e+00, %5442
  %5445 = select i1 %5443, float -0.000000e+00, float %5444
  %5446 = fmul fast float %2008, 0x3FF7154760000000
  %5447 = fmul fast float %5446, %5445
  %5448 = fmul fast float %2009, 0x3FF7154760000000
  %5449 = fmul fast float %5448, %5445
  %5450 = fmul fast float %2010, 0x3FF7154760000000
  %5451 = fmul fast float %5450, %5445
  %5452 = call float @dx.op.unary.f32(i32 21, float %5447)  ; Exp(value)
  %5453 = call float @dx.op.unary.f32(i32 21, float %5449)  ; Exp(value)
  %5454 = call float @dx.op.unary.f32(i32 21, float %5451)  ; Exp(value)
  %5455 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5456 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5457 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5458 = fmul fast float %5380, %5455
  %5459 = fmul fast float %5381, %5456
  %5460 = fmul fast float %5382, %5457
  %5461 = fsub fast float %5154, %2207
  %5462 = fsub fast float %5155, %2206
  %5463 = fsub fast float %5156, %2205
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %5463, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = call float @dx.op.unary.f32(i32 25, float %5464)  ; Rsqrt(value)
  %5466 = fmul fast float %5465, %5461
  %5467 = fmul fast float %5465, %5462
  %5468 = fmul fast float %5465, %5463
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5156, float %2211, float %2212, float %2213)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = call float @dx.op.dot3.f32(i32 55, float %2204, float %2203, float %2202, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5472 = fmul fast float %5471, %5161
  %5473 = fmul fast float %5471, %5471
  %5474 = fmul fast float %5473, %2290
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = fmul fast float %5472, %5475
  %5477 = bitcast float %5151 to i32
  %5478 = ashr i32 %5477, 1
  %5479 = sub nsw i32 1597463007, %5478
  %5480 = bitcast i32 %5479 to float
  %5481 = fmul fast float %5480, %5148
  %5482 = fmul fast float %5480, %5149
  %5483 = fmul fast float %5480, %5150
  %5484 = fsub fast float %5481, %2207
  %5485 = fsub fast float %5482, %2206
  %5486 = fsub fast float %5483, %2205
  %5487 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5485, float %5486, float %5484, float %5485, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %5488 = call float @dx.op.unary.f32(i32 25, float %5487)  ; Rsqrt(value)
  %5489 = fmul fast float %5484, %5488
  %5490 = fmul fast float %5485, %5488
  %5491 = fmul fast float %5486, %5488
  %5492 = call float @dx.op.dot3.f32(i32 55, float %2211, float %2212, float %2213, float %5489, float %5490, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fmul fast float %5492, %5492
  %5494 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5495 = fsub fast float 1.000000e+00, %2283
  %5496 = fmul fast float %2225, %2225
  %5497 = fmul fast float %5496, %5495
  %5498 = fadd fast float %5497, %2283
  %5499 = bitcast float %5498 to i32
  %5500 = ashr i32 %5499, 1
  %5501 = add nsw i32 %5500, 532487669
  %5502 = bitcast i32 %5501 to float
  %5503 = fadd fast float %5502, %2225
  %5504 = call float @dx.op.dot3.f32(i32 55, float %1644, float %1645, float %1646, float %5489, float %5490, float %5491)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = fsub fast float 1.000000e+00, %1632
  %5506 = call float @dx.op.binary.f32(i32 35, float %5505, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5507 = fmul fast float %5506, %5506
  %5508 = fmul fast float %5507, %2283
  %5509 = fmul fast float %5504, %5504
  %5510 = fsub fast float 1.000000e+00, %5493
  %5511 = fsub fast float %5510, %5509
  %5512 = fdiv fast float %5509, %5508
  %5513 = fadd fast float %5512, %5493
  %5514 = fdiv fast float %5511, %2283
  %5515 = fadd fast float %5513, %5514
  %5516 = fmul fast float %5494, %5494
  %5517 = fmul fast float %5516, %5495
  %5518 = fadd fast float %5517, %2283
  %5519 = bitcast float %5518 to i32
  %5520 = ashr i32 %5519, 1
  %5521 = add nsw i32 %5520, 532487669
  %5522 = bitcast i32 %5521 to float
  %5523 = fadd fast float %5522, %5494
  %5524 = fmul fast float %2283, %5506
  %5525 = fmul fast float %5515, %5515
  %5526 = fmul fast float %5525, %5524
  %5527 = fmul fast float %5526, %5503
  %5528 = fmul fast float %5527, %5523
  %5529 = fdiv fast float 1.000000e+00, %5528
  %5530 = bitcast float %2283 to i32
  %5531 = sitofp i32 %5530 to float
  %5532 = fmul fast float %5531, 0x3FE7F73180000000
  %5533 = fadd fast float %5532, 0x41AFE27C40000000
  %5534 = fptosi float %5533 to i32
  %5535 = bitcast i32 %5534 to float
  %5536 = fmul fast float %5116, 0x3FD80E9D60000000
  %5537 = fmul fast float %5536, %5480
  %5538 = fadd fast float %5535, %5537
  %5539 = bitcast float %5538 to i32
  %5540 = sub nsw i32 2129859010, %5539
  %5541 = bitcast i32 %5540 to float
  %5542 = fmul fast float %5535, %5529
  %5543 = fmul fast float %5542, %5541
  %5544 = fmul fast float %2536, 0x3FF9999980000000
  %5545 = fsub fast float 5.000000e+00, %5544
  %5546 = call float @dx.op.unary.f32(i32 6, float %5470)  ; FAbs(value)
  %5547 = fsub fast float 1.000000e+00, %5546
  %5548 = fmul fast float %2536, 0x41D9660740000000
  %5549 = fadd fast float %5548, 0xC1EFBF8940000000
  %5550 = bitcast float %5547 to i32
  %5551 = sitofp i32 %5550 to float
  %5552 = fmul fast float %5551, %5545
  %5553 = fadd fast float %5549, %5552
  %5554 = fptosi float %5553 to i32
  %5555 = bitcast i32 %5554 to float
  %5556 = fsub fast float 1.000000e+00, %2208
  %5557 = fsub fast float 1.000000e+00, %2209
  %5558 = fsub fast float 1.000000e+00, %2223
  %5559 = fmul fast float %5555, %5556
  %5560 = fmul fast float %5555, %5557
  %5561 = fmul fast float %5555, %5558
  %5562 = fadd fast float %5559, %2208
  %5563 = fadd fast float %5560, %2209
  %5564 = fadd fast float %5561, %2223
  br i1 %2559, label %5565, label %5588

; <label>:5565                                    ; preds = %5441
  %5566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1507, float %5546, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5567 = extractvalue %dx.types.ResRet.f32 %5566, 0
  %5568 = extractvalue %dx.types.ResRet.f32 %5566, 1
  %5569 = extractvalue %dx.types.ResRet.f32 %5566, 2
  %5570 = fadd fast float %5567, -5.000000e-01
  %5571 = fadd fast float %5568, -5.000000e-01
  %5572 = fadd fast float %5569, -5.000000e-01
  %5573 = fmul fast float %2208, 4.000000e+00
  %5574 = fmul fast float %5573, %5556
  %5575 = fmul fast float %5574, %5570
  %5576 = fmul fast float %2209, 4.000000e+00
  %5577 = fmul fast float %5576, %5557
  %5578 = fmul fast float %5577, %5571
  %5579 = fmul fast float %2223, 4.000000e+00
  %5580 = fmul fast float %5579, %5558
  %5581 = fmul fast float %5580, %5572
  %5582 = fadd fast float %5575, %5562
  %5583 = fadd fast float %5578, %5563
  %5584 = fadd fast float %5581, %5564
  %5585 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5587 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  br label %5588

; <label>:5588                                    ; preds = %5565, %5441
  %5589 = phi float [ %5585, %5565 ], [ %5562, %5441 ]
  %5590 = phi float [ %5586, %5565 ], [ %5563, %5441 ]
  %5591 = phi float [ %5587, %5565 ], [ %5564, %5441 ]
  %5592 = fmul fast float %5469, 9.843750e-01
  %5593 = fadd fast float %5592, 7.812500e-03
  %5594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %5593, float %2540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5595 = extractvalue %dx.types.ResRet.f32 %5594, 0
  %5596 = extractvalue %dx.types.ResRet.f32 %5594, 1
  %5597 = extractvalue %dx.types.ResRet.f32 %5594, 2
  %5598 = extractvalue %dx.types.ResRet.f32 %5594, 3
  %5599 = fsub fast float %5597, %5595
  %5600 = fsub fast float %5598, %5596
  %5601 = fmul fast float %5599, %2546
  %5602 = fmul fast float %5600, %2546
  %5603 = fadd fast float %5601, %5595
  %5604 = fadd fast float %5602, %5596
  %5605 = fmul fast float %5603, %2208
  %5606 = fmul fast float %5603, %2209
  %5607 = fmul fast float %5603, %2223
  %5608 = fadd fast float %5605, %5604
  %5609 = fadd fast float %5606, %5604
  %5610 = fadd fast float %5607, %5604
  br i1 %2559, label %5611, label %5634

; <label>:5611                                    ; preds = %5588
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1507, float %5469, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5616 = fadd fast float %5613, -5.000000e-01
  %5617 = fadd fast float %5614, -5.000000e-01
  %5618 = fadd fast float %5615, -5.000000e-01
  %5619 = fmul fast float %2208, 4.000000e+00
  %5620 = fmul fast float %5619, %5556
  %5621 = fmul fast float %5620, %5616
  %5622 = fmul fast float %2209, 4.000000e+00
  %5623 = fmul fast float %5622, %5557
  %5624 = fmul fast float %5623, %5617
  %5625 = fmul fast float %2223, 4.000000e+00
  %5626 = fmul fast float %5625, %5558
  %5627 = fmul fast float %5626, %5618
  %5628 = fadd fast float %5621, %5608
  %5629 = fadd fast float %5624, %5609
  %5630 = fadd fast float %5627, %5610
  %5631 = call float @dx.op.unary.f32(i32 7, float %5628)  ; Saturate(value)
  %5632 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5633 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  br label %5634

; <label>:5634                                    ; preds = %5611, %5588
  %5635 = phi float [ %5631, %5611 ], [ %5608, %5588 ]
  %5636 = phi float [ %5632, %5611 ], [ %5609, %5588 ]
  %5637 = phi float [ %5633, %5611 ], [ %5610, %5588 ]
  %5638 = call float @dx.op.binary.f32(i32 35, float %5636, float %5637)  ; FMax(a,b)
  %5639 = call float @dx.op.binary.f32(i32 35, float %5635, float %5638)  ; FMax(a,b)
  %5640 = fsub fast float 1.000000e+00, %5639
  %5641 = call float @dx.op.binary.f32(i32 35, float %5494, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5642 = fdiv fast float %913, %5641
  %5643 = fmul fast float %3212, %5642
  %5644 = fmul fast float %3214, %5642
  %5645 = fmul fast float %3216, %5642
  %5646 = call float @dx.op.unary.f32(i32 21, float %5643)  ; Exp(value)
  %5647 = call float @dx.op.unary.f32(i32 21, float %5644)  ; Exp(value)
  %5648 = call float @dx.op.unary.f32(i32 21, float %5645)  ; Exp(value)
  %5649 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5651 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5652 = select i1 %3209, float %5649, float 0.000000e+00
  %5653 = select i1 %3210, float %5650, float 0.000000e+00
  %5654 = select i1 %3211, float %5651, float 0.000000e+00
  %5655 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5155, float %5156, float %2221, float %2220, float %2219)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5656, %5161
  %5658 = fmul fast float %5656, 9.843750e-01
  %5659 = fadd fast float %5658, 7.812500e-03
  %5660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %51, float %5659, float %2540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.ResRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5660, 2
  %5664 = extractvalue %dx.types.ResRet.f32 %5660, 3
  %5665 = fsub fast float %5663, %5661
  %5666 = fsub fast float %5664, %5662
  %5667 = fmul fast float %5665, %2546
  %5668 = fmul fast float %5666, %2546
  %5669 = fadd fast float %5667, %5661
  %5670 = fadd fast float %5668, %5662
  %5671 = fmul fast float %5669, %2208
  %5672 = fmul fast float %5669, %2209
  %5673 = fmul fast float %5669, %2223
  %5674 = fadd fast float %5671, %5670
  %5675 = fadd fast float %5672, %5670
  %5676 = fadd fast float %5673, %5670
  br i1 %2559, label %5677, label %5700

; <label>:5677                                    ; preds = %5634
  %5678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %51, float %1507, float %5656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5679 = extractvalue %dx.types.ResRet.f32 %5678, 0
  %5680 = extractvalue %dx.types.ResRet.f32 %5678, 1
  %5681 = extractvalue %dx.types.ResRet.f32 %5678, 2
  %5682 = fadd fast float %5679, -5.000000e-01
  %5683 = fadd fast float %5680, -5.000000e-01
  %5684 = fadd fast float %5681, -5.000000e-01
  %5685 = fmul fast float %2208, 4.000000e+00
  %5686 = fmul fast float %5685, %5556
  %5687 = fmul fast float %5686, %5682
  %5688 = fmul fast float %2209, 4.000000e+00
  %5689 = fmul fast float %5688, %5557
  %5690 = fmul fast float %5689, %5683
  %5691 = fmul fast float %2223, 4.000000e+00
  %5692 = fmul fast float %5691, %5558
  %5693 = fmul fast float %5692, %5684
  %5694 = fadd fast float %5687, %5674
  %5695 = fadd fast float %5690, %5675
  %5696 = fadd fast float %5693, %5676
  %5697 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5698 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5699 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  br label %5700

; <label>:5700                                    ; preds = %5677, %5634
  %5701 = phi float [ %5697, %5677 ], [ %5674, %5634 ]
  %5702 = phi float [ %5698, %5677 ], [ %5675, %5634 ]
  %5703 = phi float [ %5699, %5677 ], [ %5676, %5634 ]
  %5704 = call float @dx.op.binary.f32(i32 35, float %5702, float %5703)  ; FMax(a,b)
  %5705 = call float @dx.op.binary.f32(i32 35, float %5701, float %5704)  ; FMax(a,b)
  %5706 = fsub fast float 1.000000e+00, %5705
  %5707 = fmul fast float %2280, %3276
  %5708 = fadd fast float %3278, %5707
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = fsub fast float %5481, %2231
  %5711 = fsub fast float %5482, %2232
  %5712 = fsub fast float %5483, %2233
  %5713 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5711, float %5712, float %5710, float %5711, float %5712)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = call float @dx.op.unary.f32(i32 25, float %5713)  ; Rsqrt(value)
  %5715 = fmul fast float %5710, %5714
  %5716 = fmul fast float %5711, %5714
  %5717 = fmul fast float %5712, %5714
  %5718 = call float @dx.op.dot3.f32(i32 55, float %2221, float %2220, float %2219, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = fmul fast float %5718, %5718
  %5720 = call float @dx.op.unary.f32(i32 6, float %5656)  ; FAbs(value)
  %5721 = call float @dx.op.binary.f32(i32 35, float %5709, float 0x3F847AE140000000)  ; FMax(a,b)
  %5722 = fmul fast float %5721, %5721
  %5723 = fmul fast float %5722, %5722
  %5724 = fsub fast float 1.000000e+00, %5723
  %5725 = fmul fast float %5496, %5724
  %5726 = fadd fast float %5725, %5723
  %5727 = bitcast float %5726 to i32
  %5728 = ashr i32 %5727, 1
  %5729 = add nsw i32 %5728, 532487669
  %5730 = bitcast i32 %5729 to float
  %5731 = fadd fast float %5730, %2225
  %5732 = call float @dx.op.dot3.f32(i32 55, float %1644, float %1645, float %1646, float %5715, float %5716, float %5717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = fmul fast float %5507, %5723
  %5734 = fmul fast float %5732, %5732
  %5735 = fsub fast float 1.000000e+00, %5719
  %5736 = fsub fast float %5735, %5734
  %5737 = fdiv fast float %5734, %5733
  %5738 = fadd fast float %5737, %5719
  %5739 = fdiv fast float %5736, %5723
  %5740 = fadd fast float %5738, %5739
  %5741 = fmul fast float %5720, %5720
  %5742 = fmul fast float %5741, %5724
  %5743 = fadd fast float %5742, %5723
  %5744 = bitcast float %5743 to i32
  %5745 = ashr i32 %5744, 1
  %5746 = add nsw i32 %5745, 532487669
  %5747 = bitcast i32 %5746 to float
  %5748 = fadd fast float %5747, %5720
  %5749 = fmul fast float %5723, %5506
  %5750 = fmul fast float %5740, %5740
  %5751 = fmul fast float %5750, %5749
  %5752 = fmul fast float %5751, %5731
  %5753 = fmul fast float %5752, %5748
  %5754 = fdiv fast float 1.000000e+00, %5753
  %5755 = bitcast float %5723 to i32
  %5756 = sitofp i32 %5755 to float
  %5757 = fmul fast float %5756, 0x3FE7F73180000000
  %5758 = fadd fast float %5757, 0x41AFE27C40000000
  %5759 = fptosi float %5758 to i32
  %5760 = bitcast i32 %5759 to float
  %5761 = fadd fast float %5760, %5537
  %5762 = bitcast float %5761 to i32
  %5763 = sub nsw i32 2129859010, %5762
  %5764 = bitcast i32 %5763 to float
  %5765 = fmul fast float %5760, %5754
  %5766 = fmul fast float %5765, %5764
  br i1 %5146, label %5767, label %5777

; <label>:5767                                    ; preds = %5700
  %5768 = fmul fast float %5657, %5652
  %5769 = fmul fast float %5657, %5653
  %5770 = fmul fast float %5657, %5654
  %5771 = fmul fast float %5768, %5706
  %5772 = fmul fast float %5771, %5766
  %5773 = fmul fast float %5769, %5706
  %5774 = fmul fast float %5773, %5766
  %5775 = fmul fast float %5770, %5706
  %5776 = fmul fast float %5775, %5766
  br label %5777

; <label>:5777                                    ; preds = %5767, %5700
  %5778 = phi float [ %5772, %5767 ], [ 0.000000e+00, %5700 ]
  %5779 = phi float [ %5774, %5767 ], [ 0.000000e+00, %5700 ]
  %5780 = phi float [ %5776, %5767 ], [ 0.000000e+00, %5700 ]
  %5781 = fmul fast float %5589, %5543
  %5782 = fmul fast float %5590, %5543
  %5783 = fmul fast float %5591, %5543
  %5784 = fsub fast float 1.000000e+00, %5470
  %5785 = bitcast float %5784 to i32
  %5786 = sitofp i32 %5785 to float
  %5787 = fmul fast float %5786, 5.000000e+00
  %5788 = fadd fast float %5787, 0xC1EFBF8940000000
  %5789 = fptosi float %5788 to i32
  %5790 = bitcast i32 %5789 to float
  %5791 = fmul fast float %5790, %1506
  %5792 = fmul fast float %5640, %5791
  %5793 = fmul fast float %5792, %3204
  %5794 = fmul fast float %5792, %3205
  %5795 = fmul fast float %5792, %3206
  %5796 = fadd fast float %5793, %5781
  %5797 = fadd fast float %5794, %5782
  %5798 = fadd fast float %5795, %5783
  %5799 = fmul fast float %5796, %5476
  %5800 = fmul fast float %5797, %5476
  %5801 = fmul fast float %5798, %5476
  %5802 = fadd fast float %5799, %5778
  %5803 = fadd fast float %5800, %5779
  %5804 = fadd fast float %5801, %5780
  %5805 = fmul fast float %5458, %1530
  %5806 = fmul fast float %5805, %5476
  %5807 = fmul fast float %5806, %5640
  %5808 = fmul fast float %5459, %1530
  %5809 = fmul fast float %5808, %5476
  %5810 = fmul fast float %5809, %5640
  %5811 = fmul fast float %5460, %1530
  %5812 = fmul fast float %5811, %5476
  %5813 = fmul fast float %5812, %5640
  %5814 = fadd fast float %5807, %5090
  %5815 = fadd fast float %5810, %5091
  %5816 = fadd fast float %5813, %5092
  %5817 = fmul fast float %5805, %5802
  %5818 = fmul fast float %5808, %5803
  %5819 = fmul fast float %5811, %5804
  %5820 = fadd fast float %5817, %5087
  %5821 = fadd fast float %5818, %5088
  %5822 = fadd fast float %5819, %5089
  br label %5220

; <label>:5823                                    ; preds = %5220
  br label %5824

; <label>:5824                                    ; preds = %5823, %5053
  %5825 = phi float [ %5055, %5053 ], [ %5221, %5823 ]
  %5826 = phi float [ %5056, %5053 ], [ %5222, %5823 ]
  %5827 = phi float [ %5057, %5053 ], [ %5223, %5823 ]
  %5828 = phi float [ %5058, %5053 ], [ %5224, %5823 ]
  %5829 = phi float [ %5059, %5053 ], [ %5225, %5823 ]
  %5830 = phi float [ %5060, %5053 ], [ %5226, %5823 ]
  %5831 = add i32 %5054, 1
  %5832 = icmp ugt i32 %5831, %5050
  br i1 %5832, label %5833, label %5053

; <label>:5833                                    ; preds = %5824
  br label %5834

; <label>:5834                                    ; preds = %5833, %5003, %4993
  %5835 = phi float [ %4994, %4993 ], [ %4994, %5003 ], [ %5825, %5833 ]
  %5836 = phi float [ %4995, %4993 ], [ %4995, %5003 ], [ %5826, %5833 ]
  %5837 = phi float [ %4996, %4993 ], [ %4996, %5003 ], [ %5827, %5833 ]
  %5838 = phi float [ %4997, %4993 ], [ %4997, %5003 ], [ %5828, %5833 ]
  %5839 = phi float [ %4998, %4993 ], [ %4998, %5003 ], [ %5829, %5833 ]
  %5840 = phi float [ %4999, %4993 ], [ %4999, %5003 ], [ %5830, %5833 ]
  %5841 = fmul fast float %1530, %3233
  %5842 = fsub fast float -0.000000e+00, %5841
  %5843 = fmul fast float %1530, %3234
  %5844 = fsub fast float -0.000000e+00, %5843
  %5845 = fmul fast float %1530, %3235
  %5846 = fsub fast float -0.000000e+00, %5845
  %5847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5848 = extractvalue %dx.types.CBufRet.f32 %5847, 0
  %5849 = fmul fast float %5848, %3239
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 3
  %5852 = fsub fast float 1.000000e+00, %1502
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = fadd fast float %5840, %1501
  %5855 = fmul fast float %5854, %1502
  %5856 = fmul fast float %5853, %5851
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 3
  %5859 = fmul fast float %5838, %2214
  %5860 = fmul fast float %5839, %2215
  %5861 = fmul fast float %5840, %2216
  %5862 = fcmp fast ogt float %83, %172
  %5863 = and i1 %5862, %2013
  %5864 = or i1 %2019, %5863
  %5865 = icmp eq i32 %2012, 2
  %5866 = fcmp fast ole float %83, %172
  %5867 = and i1 %5866, %5865
  %5868 = or i1 %5867, %5864
  br i1 %5863, label %5869, label %6128

; <label>:5869                                    ; preds = %5834
  %5870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5871 = extractvalue %dx.types.CBufRet.f32 %5870, 2
  %5872 = extractvalue %dx.types.CBufRet.f32 %5870, 3
  %5873 = fmul fast float %5871, %95
  %5874 = fmul fast float %5872, %96
  %5875 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  %5876 = call float @dx.op.unary.f32(i32 7, float %5874)  ; Saturate(value)
  %5877 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %5875, float %5876, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5878 = extractvalue %dx.types.ResRet.f32 %5877, 0
  %5879 = extractvalue %dx.types.ResRet.f32 %5877, 1
  %5880 = extractvalue %dx.types.ResRet.f32 %5877, 2
  %5881 = extractvalue %dx.types.ResRet.f32 %5877, 3
  %5882 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %5875, float %5876, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5883 = extractvalue %dx.types.ResRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.ResRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.ResRet.f32 %5882, 2
  %5886 = extractvalue %dx.types.ResRet.f32 %5882, 3
  %5887 = call float @dx.op.binary.f32(i32 35, float %5879, float %5880)  ; FMax(a,b)
  %5888 = call float @dx.op.binary.f32(i32 35, float %5878, float %5887)  ; FMax(a,b)
  %5889 = call float @dx.op.binary.f32(i32 35, float %5888, float %5881)  ; FMax(a,b)
  %5890 = call float @dx.op.binary.f32(i32 36, float %5884, float %5885)  ; FMin(a,b)
  %5891 = call float @dx.op.binary.f32(i32 36, float %5883, float %5890)  ; FMin(a,b)
  %5892 = call float @dx.op.binary.f32(i32 36, float %5891, float %5886)  ; FMin(a,b)
  %5893 = fmul fast float %5889, 2.550000e+02
  %5894 = fadd fast float %5893, 0x3F70101020000000
  %5895 = fptoui float %5894 to i32
  %5896 = fmul fast float %5892, 2.550000e+02
  %5897 = fadd fast float %5896, 0x3F70101020000000
  %5898 = fptoui float %5897 to i32
  %5899 = icmp ult i32 %5895, %5898
  br i1 %5899, label %5900, label %6068

; <label>:5900                                    ; preds = %5869
  %5901 = fcmp fast ogt float %82, 9.843750e-01
  %5902 = fadd fast float %83, -4.000000e+00
  %5903 = select i1 %5901, float -4.000000e+00, float %5902
  %5904 = call float @dx.op.binary.f32(i32 35, float %5903, float 0.000000e+00)  ; FMax(a,b)
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = fadd fast float %5906, %5904
  %5908 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5909 = fmul fast float %5907, %5908
  %5910 = call float @dx.op.unary.f32(i32 23, float %5909)  ; Log(value)
  %5911 = extractvalue %dx.types.CBufRet.f32 %5905, 3
  %5912 = fmul fast float %5911, %5910
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5915 = fmul fast float %5912, %5914
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = uitofp i32 %5895 to float
  %5918 = uitofp i32 %5898 to float
  %5919 = fadd fast float %5917, 5.000000e-01
  %5920 = fadd fast float %5918, 5.000000e-01
  %5921 = fmul fast float %5914, %5919
  %5922 = fmul fast float %5914, %5920
  %5923 = fadd fast float %5921, 0x3F0FFB4800000000
  %5924 = fadd fast float %5922, 0xBF0FFB4800000000
  %5925 = call float @dx.op.binary.f32(i32 35, float %5916, float %5923)  ; FMax(a,b)
  %5926 = call float @dx.op.binary.f32(i32 36, float %5925, float %5924)  ; FMin(a,b)
  %5927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %5928 = extractvalue %dx.types.CBufRet.f32 %5927, 1
  %5929 = extractvalue %dx.types.CBufRet.f32 %5927, 2
  %5930 = extractvalue %dx.types.CBufRet.f32 %5927, 0
  %5931 = fmul fast float %5928, %5926
  %5932 = fadd fast float %5930, %5931
  %5933 = fadd fast float %5930, %5929
  %5934 = fsub fast float %5928, %5929
  %5935 = fadd fast float %5934, %5930
  %5936 = call float @dx.op.binary.f32(i32 35, float %5932, float %5933)  ; FMax(a,b)
  %5937 = call float @dx.op.binary.f32(i32 36, float %5936, float %5935)  ; FMin(a,b)
  %5938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %5875, float %5876, float %5937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5939 = extractvalue %dx.types.ResRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.ResRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.ResRet.f32 %5938, 2
  %5942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.i32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.i32 %5942, 1
  %5945 = uitofp i32 %5943 to float
  %5946 = uitofp i32 %5944 to float
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5950 = fmul fast float %5945, %5875
  %5951 = fmul fast float %5946, %5876
  %5952 = fadd fast float %5950, -5.000000e-01
  %5953 = fadd fast float %5951, -5.000000e-01
  %5954 = call float @dx.op.unary.f32(i32 22, float %5952)  ; Frc(value)
  %5955 = call float @dx.op.unary.f32(i32 22, float %5953)  ; Frc(value)
  %5956 = fmul fast float %5954, %5954
  %5957 = fmul fast float %5956, %5954
  %5958 = fsub fast float 3.000000e+00, %5954
  %5959 = fmul fast float %5956, %5958
  %5960 = fmul fast float %5954, 3.000000e+00
  %5961 = fmul fast float %5957, 3.000000e+00
  %5962 = fmul fast float %5956, 6.000000e+00
  %5963 = fsub fast float %5961, %5962
  %5964 = fadd fast float %5963, 4.000000e+00
  %5965 = fmul fast float %5964, 0x3FC5555560000000
  %5966 = fmul fast float %5957, -3.000000e+00
  %5967 = fadd fast float %5956, %5954
  %5968 = fmul fast float %5967, 3.000000e+00
  %5969 = fadd fast float %5966, 1.000000e+00
  %5970 = fadd fast float %5969, %5968
  %5971 = fmul fast float %5957, 0x3FC5555560000000
  %5972 = fmul fast float %5955, %5955
  %5973 = fmul fast float %5972, %5955
  %5974 = fsub fast float 3.000000e+00, %5955
  %5975 = fmul fast float %5972, %5974
  %5976 = fmul fast float %5955, 3.000000e+00
  %5977 = fmul fast float %5973, 3.000000e+00
  %5978 = fmul fast float %5972, 6.000000e+00
  %5979 = fsub fast float %5977, %5978
  %5980 = fadd fast float %5979, 4.000000e+00
  %5981 = fmul fast float %5980, 0x3FC5555560000000
  %5982 = fmul fast float %5973, -3.000000e+00
  %5983 = fadd fast float %5972, %5955
  %5984 = fmul fast float %5983, 3.000000e+00
  %5985 = fadd fast float %5982, 1.000000e+00
  %5986 = fadd fast float %5985, %5984
  %5987 = fmul fast float %5973, 0x3FC5555560000000
  %5988 = fadd fast float %5954, 1.000000e+00
  %5989 = fsub fast float 1.000000e+00, %5960
  %5990 = fadd fast float %5989, %5959
  %5991 = fadd fast float %5990, %5964
  %5992 = fmul fast float %5991, 0x3FC5555560000000
  %5993 = fdiv fast float %5965, %5992
  %5994 = fsub fast float %5988, %5993
  %5995 = fsub fast float 1.000000e+00, %5954
  %5996 = fadd fast float %5970, %5957
  %5997 = fmul fast float %5996, 0x3FC5555560000000
  %5998 = fdiv fast float %5971, %5997
  %5999 = fadd fast float %5995, %5998
  %6000 = fadd fast float %5955, 1.000000e+00
  %6001 = fsub fast float 1.000000e+00, %5976
  %6002 = fadd fast float %6001, %5975
  %6003 = fadd fast float %6002, %5980
  %6004 = fmul fast float %6003, 0x3FC5555560000000
  %6005 = fdiv fast float %5981, %6004
  %6006 = fsub fast float %6000, %6005
  %6007 = fsub fast float 1.000000e+00, %5955
  %6008 = fadd fast float %5986, %5973
  %6009 = fmul fast float %6008, 0x3FC5555560000000
  %6010 = fdiv fast float %5987, %6009
  %6011 = fadd fast float %6010, %6007
  %6012 = fmul fast float %5994, %5948
  %6013 = fsub fast float %5875, %6012
  %6014 = fmul fast float %5999, %5948
  %6015 = fadd fast float %6014, %5875
  %6016 = fmul fast float %6011, %5949
  %6017 = fadd fast float %6016, %5876
  %6018 = fmul fast float %6006, %5949
  %6019 = fsub fast float %5876, %6018
  %6020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %6013, float %6019, float %5937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6021 = extractvalue %dx.types.ResRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.ResRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.ResRet.f32 %6020, 2
  %6024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %6015, float %6019, float %5937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6025 = extractvalue %dx.types.ResRet.f32 %6024, 0
  %6026 = extractvalue %dx.types.ResRet.f32 %6024, 1
  %6027 = extractvalue %dx.types.ResRet.f32 %6024, 2
  %6028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %6013, float %6017, float %5937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6029 = extractvalue %dx.types.ResRet.f32 %6028, 0
  %6030 = extractvalue %dx.types.ResRet.f32 %6028, 1
  %6031 = extractvalue %dx.types.ResRet.f32 %6028, 2
  %6032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %6015, float %6017, float %5937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6033 = extractvalue %dx.types.ResRet.f32 %6032, 0
  %6034 = extractvalue %dx.types.ResRet.f32 %6032, 1
  %6035 = extractvalue %dx.types.ResRet.f32 %6032, 2
  %6036 = fsub fast float %6029, %6021
  %6037 = fsub fast float %6030, %6022
  %6038 = fsub fast float %6031, %6023
  %6039 = fmul fast float %6036, %6009
  %6040 = fmul fast float %6037, %6009
  %6041 = fmul fast float %6038, %6009
  %6042 = fadd fast float %6039, %6021
  %6043 = fadd fast float %6040, %6022
  %6044 = fadd fast float %6041, %6023
  %6045 = fsub fast float %6033, %6025
  %6046 = fsub fast float %6034, %6026
  %6047 = fsub fast float %6035, %6027
  %6048 = fmul fast float %6045, %6009
  %6049 = fmul fast float %6046, %6009
  %6050 = fmul fast float %6047, %6009
  %6051 = fsub fast float %6025, %6042
  %6052 = fadd fast float %6051, %6048
  %6053 = fsub fast float %6026, %6043
  %6054 = fadd fast float %6053, %6049
  %6055 = fsub fast float %6027, %6044
  %6056 = fadd fast float %6055, %6050
  %6057 = fmul fast float %6052, %5997
  %6058 = fmul fast float %6054, %5997
  %6059 = fmul fast float %6056, %5997
  %6060 = fadd fast float %6057, %6042
  %6061 = fadd fast float %6058, %6043
  %6062 = fadd fast float %6059, %6044
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6065 = fmul fast float %6060, %6064
  %6066 = fmul fast float %6061, %6064
  %6067 = fmul fast float %6062, %6064
  br label %6068

; <label>:6068                                    ; preds = %5900, %5869
  %6069 = phi float [ %5939, %5900 ], [ 1.000000e+00, %5869 ]
  %6070 = phi float [ %5940, %5900 ], [ 1.000000e+00, %5869 ]
  %6071 = phi float [ %5941, %5900 ], [ 1.000000e+00, %5869 ]
  %6072 = phi float [ %6065, %5900 ], [ 0.000000e+00, %5869 ]
  %6073 = phi float [ %6066, %5900 ], [ 0.000000e+00, %5869 ]
  %6074 = phi float [ %6067, %5900 ], [ 0.000000e+00, %5869 ]
  %6075 = fmul fast float %6072, %5842
  %6076 = fmul fast float %6073, %5844
  %6077 = fmul fast float %6074, %5846
  %6078 = call float @dx.op.dot3.f32(i32 55, float %6069, float %6070, float %6071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6079 = call float @dx.op.dot3.f32(i32 55, float %6075, float %6076, float %6077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6080 = select i1 %212, float %6078, float %6069
  %6081 = select i1 %212, float %6078, float %6070
  %6082 = select i1 %212, float 1.000000e+00, float %6071
  %6083 = select i1 %212, float %6079, float %6075
  %6084 = select i1 %212, float 0.000000e+00, float %6076
  %6085 = select i1 %212, float 0.000000e+00, float %6077
  %6086 = fmul fast float %6080, %5859
  %6087 = fmul fast float %6081, %5860
  %6088 = fmul fast float %6082, %5861
  %6089 = fadd fast float %6086, %6083
  %6090 = fadd fast float %6087, %6084
  %6091 = fadd fast float %6085, %6088
  %6092 = fmul fast float %6080, %5835
  %6093 = fmul fast float %6081, %5836
  %6094 = fmul fast float %6082, %5837
  %6095 = fmul fast float %95, 2.000000e+00
  %6096 = fmul fast float %6095, %5871
  %6097 = fmul fast float %96, 2.000000e+00
  %6098 = fmul fast float %6097, %5872
  %6099 = fsub fast float 1.000000e+00, %6096
  %6100 = fsub fast float 1.000000e+00, %6098
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 0
  %6103 = extractvalue %dx.types.CBufRet.f32 %6101, 1
  %6104 = extractvalue %dx.types.CBufRet.f32 %6101, 2
  %6105 = fmul fast float %6099, %6102
  %6106 = fmul fast float %6099, %6103
  %6107 = fmul fast float %6099, %6104
  %6108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6109 = extractvalue %dx.types.CBufRet.f32 %6108, 0
  %6110 = extractvalue %dx.types.CBufRet.f32 %6108, 1
  %6111 = extractvalue %dx.types.CBufRet.f32 %6108, 2
  %6112 = fmul fast float %6100, %6109
  %6113 = fmul fast float %6100, %6110
  %6114 = fmul fast float %6100, %6111
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 0
  %6117 = extractvalue %dx.types.CBufRet.f32 %6115, 1
  %6118 = extractvalue %dx.types.CBufRet.f32 %6115, 2
  %6119 = fadd fast float %6112, %6116
  %6120 = fadd fast float %6119, %6105
  %6121 = fadd fast float %6113, %6117
  %6122 = fadd fast float %6121, %6106
  %6123 = fadd fast float %6114, %6118
  %6124 = fadd fast float %6123, %6107
  %6125 = fmul fast float %6120, %172
  %6126 = fmul fast float %6122, %172
  %6127 = fmul fast float %6124, %172
  br label %6128

; <label>:6128                                    ; preds = %6068, %5834
  %6129 = phi float [ %6125, %6068 ], [ %150, %5834 ]
  %6130 = phi float [ %6126, %6068 ], [ %151, %5834 ]
  %6131 = phi float [ %6127, %6068 ], [ %152, %5834 ]
  %6132 = phi float [ %172, %6068 ], [ %83, %5834 ]
  %6133 = phi float [ %6089, %6068 ], [ %5859, %5834 ]
  %6134 = phi float [ %6090, %6068 ], [ %5860, %5834 ]
  %6135 = phi float [ %6091, %6068 ], [ %5861, %5834 ]
  %6136 = phi float [ %6092, %6068 ], [ %5835, %5834 ]
  %6137 = phi float [ %6093, %6068 ], [ %5836, %5834 ]
  %6138 = phi float [ %6094, %6068 ], [ %5837, %5834 ]
  %6139 = phi float [ %6069, %6068 ], [ 1.000000e+00, %5834 ]
  br i1 %5868, label %7294, label %6140

; <label>:6140                                    ; preds = %6128
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.CBufRet.f32 %6141, 1
  %6144 = extractvalue %dx.types.CBufRet.f32 %6141, 2
  %6145 = extractvalue %dx.types.CBufRet.f32 %6141, 3
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.CBufRet.f32 %6146, 1
  %6149 = extractvalue %dx.types.CBufRet.f32 %6146, 2
  %6150 = extractvalue %dx.types.CBufRet.f32 %6146, 3
  %6151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %6152 = extractvalue %dx.types.CBufRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.CBufRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.CBufRet.f32 %6151, 2
  %6155 = extractvalue %dx.types.CBufRet.f32 %6151, 3
  %6156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6156, 0
  %6158 = extractvalue %dx.types.CBufRet.f32 %6156, 1
  %6159 = extractvalue %dx.types.CBufRet.f32 %6156, 2
  %6160 = extractvalue %dx.types.CBufRet.f32 %6156, 3
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 3
  %6163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %6164 = extractvalue %dx.types.CBufRet.f32 %6163, 3
  %6165 = extractvalue %dx.types.CBufRet.f32 %6163, 0
  %6166 = extractvalue %dx.types.CBufRet.f32 %6163, 1
  %6167 = extractvalue %dx.types.CBufRet.f32 %6163, 2
  %6168 = fcmp fast olt float %6167, -5.000000e-01
  %6169 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6131, float %6129, float %6130, float %6131)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = call float @dx.op.unary.f32(i32 25, float %6169)  ; Rsqrt(value)
  %6171 = fmul fast float %6170, %6169
  %6172 = fmul fast float %6170, %6129
  %6173 = fmul fast float %6170, %6130
  %6174 = fmul fast float %6170, %6131
  %6175 = fadd fast float %6171, %6145
  %6176 = call float @dx.op.dot3.f32(i32 55, float %6172, float %6173, float %6174, float %6142, float %6143, float %6144)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6178 = extractvalue %dx.types.CBufRet.i32 %6177, 1
  %6179 = and i32 %6178, 1
  %6180 = icmp ne i32 %6179, 0
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 2
  %6183 = fcmp fast ogt float %6182, 0.000000e+00
  %6184 = and i1 %6180, %6183
  br i1 %6184, label %6185, label %6591, !dx.controlflow.hints !128

; <label>:6185                                    ; preds = %6140
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 3
  %6188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.f32 %6188, 2
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 2
  %6192 = fsub fast float %6189, %6191
  %6193 = and i32 %6178, 2
  %6194 = extractvalue %dx.types.CBufRet.i32 %6177, 0
  %6195 = call i32 @dx.op.binary.i32(i32 40, i32 %6194, i32 3)  ; UMin(a,b)
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.CBufRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.CBufRet.f32 %6190, 0
  %6200 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6201 = fsub fast float %6197, %6199
  %6202 = fsub fast float %6198, %6200
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = fcmp fast ogt float %6204, 0.000000e+00
  %6206 = fsub fast float -0.000000e+00, %6201
  %6207 = fsub fast float -0.000000e+00, %6202
  %6208 = call float @dx.op.dot2.f32(i32 54, float %6172, float %6173, float %6172, float %6173)  ; Dot2(ax,ay,bx,by)
  %6209 = call float @dx.op.dot2.f32(i32 54, float %6172, float %6173, float %6206, float %6207)  ; Dot2(ax,ay,bx,by)
  %6210 = fmul fast float %6209, 2.000000e+00
  %6211 = call float @dx.op.dot2.f32(i32 54, float %6206, float %6207, float %6206, float %6207)  ; Dot2(ax,ay,bx,by)
  %6212 = fmul fast float %6204, %6204
  %6213 = fsub fast float %6211, %6212
  %6214 = fmul fast float %6210, %6210
  %6215 = fmul fast float %6208, 4.000000e+00
  %6216 = fmul fast float %6215, %6213
  %6217 = fsub fast float %6214, %6216
  %6218 = fcmp fast ogt float %6217, 0.000000e+00
  br i1 %6218, label %6219, label %6234

; <label>:6219                                    ; preds = %6185
  %6220 = fcmp fast ogt float %6210, 0.000000e+00
  %6221 = call float @dx.op.unary.f32(i32 24, float %6217)  ; Sqrt(value)
  %6222 = fsub fast float -0.000000e+00, %6221
  %6223 = select i1 %6220, float %6221, float %6222
  %6224 = fadd fast float %6223, %6210
  %6225 = fmul float %6224, -5.000000e-01
  %6226 = fdiv fast float %6225, %6208
  %6227 = call float @dx.op.binary.f32(i32 35, float %6226, float 0.000000e+00)  ; FMax(a,b)
  %6228 = call float @dx.op.binary.f32(i32 36, float %6171, float %6227)  ; FMin(a,b)
  %6229 = fdiv fast float %6213, %6225
  %6230 = call float @dx.op.binary.f32(i32 35, float %6229, float 0.000000e+00)  ; FMax(a,b)
  %6231 = call float @dx.op.binary.f32(i32 36, float %6171, float %6230)  ; FMin(a,b)
  %6232 = call float @dx.op.binary.f32(i32 36, float %6228, float %6231)  ; FMin(a,b)
  %6233 = call float @dx.op.binary.f32(i32 35, float %6228, float %6231)  ; FMax(a,b)
  br label %6234

; <label>:6234                                    ; preds = %6219, %6185
  %6235 = phi float [ %6233, %6219 ], [ -1.000000e+00, %6185 ]
  %6236 = phi float [ %6232, %6219 ], [ -1.000000e+00, %6185 ]
  %6237 = phi i1 [ true, %6219 ], [ false, %6185 ]
  %6238 = and i1 %6205, %6237
  br i1 %6238, label %6239, label %6241

; <label>:6239                                    ; preds = %6234
  %6240 = fcmp fast oeq float %6236, %6235
  br i1 %6240, label %6544, label %6242

; <label>:6241                                    ; preds = %6234
  br i1 %6205, label %6544, label %6242

; <label>:6242                                    ; preds = %6241, %6239
  %6243 = phi float [ %6171, %6241 ], [ %6235, %6239 ]
  %6244 = phi float [ 0.000000e+00, %6241 ], [ %6236, %6239 ]
  %6245 = icmp ne i32 %6193, 0
  %6246 = fmul fast float %6243, %6174
  %6247 = fadd fast float %6246, %6187
  %6248 = fmul fast float %6247, %6243
  %6249 = select i1 %6245, float 0.000000e+00, float %6248
  %6250 = fcmp fast oeq float %6174, 0.000000e+00
  %6251 = fdiv fast float %6192, %6174
  %6252 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6251)  ; FMax(a,b)
  %6253 = select i1 %6250, float %6243, float %6252
  %6254 = call float @dx.op.binary.f32(i32 36, float %6243, float %6253)  ; FMin(a,b)
  %6255 = fcmp fast ogt float %6174, 0.000000e+00
  %6256 = fcmp fast olt float %6192, 0.000000e+00
  br i1 %6255, label %6257, label %6314

; <label>:6257                                    ; preds = %6242
  %6258 = icmp eq i32 %6193, 0
  br i1 %6256, label %6259, label %6303

; <label>:6259                                    ; preds = %6257
  %6260 = select i1 %6258, float %6243, float 0.000000e+00
  %6261 = fsub fast float -0.000000e+00, %6260
  %6262 = call float @dx.op.unary.f32(i32 6, float %6261)  ; FAbs(value)
  %6263 = fmul fast float %6260, %6174
  %6264 = fadd fast float %6263, %6187
  %6265 = fmul fast float %6262, %6264
  %6266 = fsub fast float %6249, %6265
  %6267 = fsub fast float %6243, %6262
  %6268 = select i1 %6258, float %6267, float 0.000000e+00
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.CBufRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.CBufRet.f32 %6269, 2
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 0
  %6275 = extractvalue %dx.types.CBufRet.f32 %6273, 1
  %6276 = extractvalue %dx.types.CBufRet.f32 %6273, 2
  %6277 = extractvalue %dx.types.CBufRet.f32 %6273, 3
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 3
  %6280 = call float @dx.op.binary.f32(i32 36, float %6266, float %6279)  ; FMin(a,b)
  %6281 = fmul fast float %6277, %6268
  %6282 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6283 = fsub fast float %6274, %6270
  %6284 = fsub fast float %6275, %6271
  %6285 = fsub fast float %6276, %6272
  %6286 = fmul fast float %6282, %6283
  %6287 = fmul fast float %6282, %6284
  %6288 = fmul fast float %6282, %6285
  %6289 = fadd fast float %6286, %6270
  %6290 = fadd fast float %6287, %6271
  %6291 = fadd fast float %6288, %6272
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.CBufRet.f32 %6292, 1
  %6295 = fadd fast float %6294, %6293
  %6296 = call float @dx.op.unary.f32(i32 7, float %6295)  ; Saturate(value)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6292, 2
  %6298 = extractvalue %dx.types.CBufRet.f32 %6292, 3
  %6299 = fadd fast float %6298, %6297
  %6300 = call float @dx.op.unary.f32(i32 7, float %6299)  ; Saturate(value)
  %6301 = fmul fast float %6296, %6280
  %6302 = fmul fast float %6301, %6300
  br label %6544

; <label>:6303                                    ; preds = %6257
  br i1 %6258, label %6304, label %6325

; <label>:6304                                    ; preds = %6303
  %6305 = call float @dx.op.binary.f32(i32 36, float %6254, float %6244)  ; FMin(a,b)
  %6306 = fsub fast float %6254, %6305
  %6307 = fsub fast float %6306, %6243
  %6308 = call float @dx.op.unary.f32(i32 6, float %6307)  ; FAbs(value)
  %6309 = fadd fast float %6306, %6243
  %6310 = fmul fast float %6309, %6174
  %6311 = fadd fast float %6310, %6187
  %6312 = fmul fast float %6311, %6308
  %6313 = fsub fast float %6249, %6312
  br label %6325

; <label>:6314                                    ; preds = %6242
  br i1 %6256, label %6315, label %6325

; <label>:6315                                    ; preds = %6314
  %6316 = call float @dx.op.binary.f32(i32 35, float %6244, float %6254)  ; FMax(a,b)
  %6317 = icmp eq i32 %6193, 0
  %6318 = select i1 %6317, float %6254, float 0.000000e+00
  %6319 = fsub fast float -0.000000e+00, %6318
  %6320 = call float @dx.op.unary.f32(i32 6, float %6319)  ; FAbs(value)
  %6321 = fmul fast float %6318, %6174
  %6322 = fadd fast float %6321, %6187
  %6323 = fmul fast float %6320, %6322
  %6324 = fsub fast float %6249, %6323
  br label %6325

; <label>:6325                                    ; preds = %6315, %6314, %6304, %6303
  %6326 = phi float [ %6244, %6303 ], [ %6244, %6304 ], [ %6316, %6315 ], [ %6244, %6314 ]
  %6327 = phi float [ 0.000000e+00, %6303 ], [ %6308, %6304 ], [ %6320, %6315 ], [ 0.000000e+00, %6314 ]
  %6328 = phi float [ %6249, %6303 ], [ %6313, %6304 ], [ %6324, %6315 ], [ %6249, %6314 ]
  %6329 = phi float [ %6254, %6303 ], [ %6254, %6304 ], [ %6243, %6315 ], [ %6243, %6314 ]
  %6330 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 0
  store float -1.000000e+00, float* %6330, align 4, !tbaa !115, !noalias !129
  %6331 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 1
  store float -1.000000e+00, float* %6331, align 4, !tbaa !115, !noalias !129
  %6332 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 2
  store float -1.000000e+00, float* %6332, align 4, !tbaa !115, !noalias !129
  %6333 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %6333, align 4, !tbaa !115, !noalias !129
  %6334 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %6334, align 4, !tbaa !115, !noalias !129
  %6335 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %6335, align 4, !tbaa !115, !noalias !129
  %6336 = icmp sgt i32 %6195, 0
  br i1 %6336, label %6337, label %6398

; <label>:6337                                    ; preds = %6325
  br label %6338

; <label>:6338                                    ; preds = %6387, %6337
  %6339 = phi i32 [ %6388, %6387 ], [ 0, %6337 ]
  %6340 = phi i32 [ %6389, %6387 ], [ 0, %6337 ]
  %6341 = add nuw i32 %6340, 171
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 %6341)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 0
  %6344 = extractvalue %dx.types.CBufRet.f32 %6342, 1
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.f32 %6345, 1
  %6348 = fsub fast float %6343, %6346
  %6349 = fsub fast float %6344, %6347
  %6350 = extractvalue %dx.types.CBufRet.f32 %6342, 2
  %6351 = fsub fast float -0.000000e+00, %6348
  %6352 = fsub fast float -0.000000e+00, %6349
  %6353 = call float @dx.op.dot2.f32(i32 54, float %6172, float %6173, float %6351, float %6352)  ; Dot2(ax,ay,bx,by)
  %6354 = fmul fast float %6353, 2.000000e+00
  %6355 = call float @dx.op.dot2.f32(i32 54, float %6351, float %6352, float %6351, float %6352)  ; Dot2(ax,ay,bx,by)
  %6356 = fmul fast float %6350, %6350
  %6357 = fsub fast float %6355, %6356
  %6358 = fmul fast float %6354, %6354
  %6359 = fmul fast float %6215, %6357
  %6360 = fsub fast float %6358, %6359
  %6361 = fcmp fast ogt float %6360, 0.000000e+00
  br i1 %6361, label %6362, label %6377

; <label>:6362                                    ; preds = %6338
  %6363 = fcmp fast ogt float %6354, 0.000000e+00
  %6364 = call float @dx.op.unary.f32(i32 24, float %6360)  ; Sqrt(value)
  %6365 = fsub fast float -0.000000e+00, %6364
  %6366 = select i1 %6363, float %6364, float %6365
  %6367 = fadd fast float %6366, %6354
  %6368 = fmul float %6367, -5.000000e-01
  %6369 = fdiv fast float %6368, %6208
  %6370 = call float @dx.op.binary.f32(i32 35, float %6369, float 0.000000e+00)  ; FMax(a,b)
  %6371 = call float @dx.op.binary.f32(i32 36, float %6243, float %6370)  ; FMin(a,b)
  %6372 = fdiv fast float %6357, %6368
  %6373 = call float @dx.op.binary.f32(i32 35, float %6372, float 0.000000e+00)  ; FMax(a,b)
  %6374 = call float @dx.op.binary.f32(i32 36, float %6243, float %6373)  ; FMin(a,b)
  %6375 = call float @dx.op.binary.f32(i32 36, float %6371, float %6374)  ; FMin(a,b)
  %6376 = call float @dx.op.binary.f32(i32 35, float %6371, float %6374)  ; FMax(a,b)
  br label %6377

; <label>:6377                                    ; preds = %6362, %6338
  %6378 = phi float [ %6376, %6362 ], [ -1.000000e+00, %6338 ]
  %6379 = phi float [ %6375, %6362 ], [ -1.000000e+00, %6338 ]
  %6380 = phi i1 [ true, %6362 ], [ false, %6338 ]
  br i1 %6380, label %6381, label %6387

; <label>:6381                                    ; preds = %6377
  %6382 = call float @dx.op.binary.f32(i32 35, float %6326, float %6379)  ; FMax(a,b)
  %6383 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6340
  store float %6382, float* %6383, align 4, !tbaa !115, !noalias !129
  %6384 = call float @dx.op.binary.f32(i32 35, float %6326, float %6378)  ; FMax(a,b)
  %6385 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %6340
  store float %6384, float* %6385, align 4, !tbaa !115, !noalias !129
  %6386 = add nsw i32 %6339, 1
  br label %6387

; <label>:6387                                    ; preds = %6381, %6377
  %6388 = phi i32 [ %6386, %6381 ], [ %6339, %6377 ]
  %6389 = add nuw nsw i32 %6340, 1
  %6390 = icmp eq i32 %6389, %6195
  br i1 %6390, label %6391, label %6338

; <label>:6391                                    ; preds = %6387
  %6392 = load float, float* %6332, align 4, !tbaa !115, !alias.scope !145, !noalias !148
  %6393 = load float, float* %6331, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  %6394 = load float, float* %6330, align 4, !tbaa !115, !alias.scope !153, !noalias !154
  %6395 = load float, float* %6335, align 4, !tbaa !115, !alias.scope !155, !noalias !158
  %6396 = load float, float* %6334, align 4, !tbaa !115, !alias.scope !161, !noalias !162
  %6397 = load float, float* %6333, align 4, !tbaa !115, !alias.scope !163, !noalias !164
  br label %6398

; <label>:6398                                    ; preds = %6391, %6325
  %6399 = phi float [ -1.000000e+00, %6325 ], [ %6397, %6391 ]
  %6400 = phi float [ -1.000000e+00, %6325 ], [ %6396, %6391 ]
  %6401 = phi float [ -1.000000e+00, %6325 ], [ %6395, %6391 ]
  %6402 = phi float [ -1.000000e+00, %6325 ], [ %6394, %6391 ]
  %6403 = phi float [ -1.000000e+00, %6325 ], [ %6393, %6391 ]
  %6404 = phi float [ -1.000000e+00, %6325 ], [ %6392, %6391 ]
  %6405 = phi i32 [ 0, %6325 ], [ %6388, %6391 ]
  %6406 = call float @dx.op.binary.f32(i32 36, float %6403, float %6404)  ; FMin(a,b)
  %6407 = call float @dx.op.binary.f32(i32 36, float %6402, float %6406)  ; FMin(a,b)
  %6408 = call float @dx.op.binary.f32(i32 35, float %6402, float %6403)  ; FMax(a,b)
  %6409 = call float @dx.op.binary.f32(i32 36, float %6408, float %6404)  ; FMin(a,b)
  %6410 = call float @dx.op.binary.f32(i32 36, float %6402, float %6403)  ; FMin(a,b)
  %6411 = call float @dx.op.binary.f32(i32 35, float %6410, float %6409)  ; FMax(a,b)
  %6412 = call float @dx.op.binary.f32(i32 35, float %6403, float %6404)  ; FMax(a,b)
  %6413 = call float @dx.op.binary.f32(i32 35, float %6402, float %6412)  ; FMax(a,b)
  store float %6407, float* %6330, align 4, !tbaa !115, !alias.scope !153, !noalias !154
  store float %6411, float* %6331, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  store float %6413, float* %6332, align 4, !tbaa !115, !alias.scope !145, !noalias !148
  %6414 = call float @dx.op.binary.f32(i32 36, float %6400, float %6401)  ; FMin(a,b)
  %6415 = call float @dx.op.binary.f32(i32 36, float %6399, float %6414)  ; FMin(a,b)
  %6416 = call float @dx.op.binary.f32(i32 35, float %6399, float %6400)  ; FMax(a,b)
  %6417 = call float @dx.op.binary.f32(i32 36, float %6416, float %6401)  ; FMin(a,b)
  %6418 = call float @dx.op.binary.f32(i32 36, float %6399, float %6400)  ; FMin(a,b)
  %6419 = call float @dx.op.binary.f32(i32 35, float %6418, float %6417)  ; FMax(a,b)
  %6420 = call float @dx.op.binary.f32(i32 35, float %6400, float %6401)  ; FMax(a,b)
  %6421 = call float @dx.op.binary.f32(i32 35, float %6399, float %6420)  ; FMax(a,b)
  store float %6415, float* %6333, align 4, !tbaa !115, !alias.scope !163, !noalias !164
  store float %6419, float* %6334, align 4, !tbaa !115, !alias.scope !161, !noalias !162
  store float %6421, float* %6335, align 4, !tbaa !115, !alias.scope !155, !noalias !158
  %6422 = sub nsw i32 3, %6405
  %6423 = icmp sgt i32 %6422, 2
  br i1 %6423, label %6424, label %6462

; <label>:6424                                    ; preds = %6398
  %6425 = icmp eq i32 %6193, 0
  %6426 = fsub fast float %6243, %6327
  %6427 = select i1 %6425, float %6426, float %6327
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.CBufRet.f32 %6428, 1
  %6431 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6436 = extractvalue %dx.types.CBufRet.f32 %6432, 3
  %6437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6438 = extractvalue %dx.types.CBufRet.f32 %6437, 3
  %6439 = call float @dx.op.binary.f32(i32 36, float %6328, float %6438)  ; FMin(a,b)
  %6440 = fmul fast float %6436, %6427
  %6441 = call float @dx.op.unary.f32(i32 7, float %6440)  ; Saturate(value)
  %6442 = fsub fast float %6433, %6429
  %6443 = fsub fast float %6434, %6430
  %6444 = fsub fast float %6435, %6431
  %6445 = fmul fast float %6441, %6442
  %6446 = fmul fast float %6441, %6443
  %6447 = fmul fast float %6441, %6444
  %6448 = fadd fast float %6445, %6429
  %6449 = fadd fast float %6446, %6430
  %6450 = fadd fast float %6447, %6431
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6454 = fadd fast float %6453, %6452
  %6455 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6451, 2
  %6457 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6458 = fadd fast float %6457, %6456
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = fmul fast float %6455, %6439
  %6461 = fmul fast float %6460, %6459
  br label %6544

; <label>:6462                                    ; preds = %6398
  %6463 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6422
  %6464 = load float, float* %6463, align 4, !tbaa !115, !noalias !129
  %6465 = fcmp fast olt float %6464, %6329
  %6466 = icmp sgt i32 %6405, 0
  %6467 = and i1 %6466, %6465
  br i1 %6467, label %6468, label %6505

; <label>:6468                                    ; preds = %6462
  br label %6469

; <label>:6469                                    ; preds = %6498, %6468
  %6470 = phi float [ %6499, %6498 ], [ %6327, %6468 ]
  %6471 = phi float [ %6500, %6498 ], [ %6328, %6468 ]
  %6472 = phi float [ %6480, %6498 ], [ %6464, %6468 ]
  %6473 = phi i32 [ %6477, %6498 ], [ %6422, %6468 ]
  %6474 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %6473
  %6475 = load float, float* %6474, align 4, !tbaa !115, !noalias !129
  %6476 = icmp slt i32 %6473, 2
  %6477 = add nsw i32 %6473, 1
  %6478 = getelementptr inbounds [3 x float], [3 x float]* %89, i32 0, i32 %6477
  %6479 = load float, float* %6478, align 4, !tbaa !115, !noalias !129
  %6480 = select i1 %6476, float %6479, float %6243
  %6481 = call float @dx.op.binary.f32(i32 36, float %6480, float %6475)  ; FMin(a,b)
  %6482 = call float @dx.op.binary.f32(i32 36, float %6329, float %6481)  ; FMin(a,b)
  %6483 = icmp eq i32 %6193, 0
  %6484 = fadd fast float %6482, %6472
  %6485 = fmul fast float %6484, %6174
  %6486 = fadd fast float %6485, %6187
  br i1 %6483, label %6492, label %6487

; <label>:6487                                    ; preds = %6469
  %6488 = fsub fast float %6482, %6472
  %6489 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6488)  ; FMax(a,b)
  %6490 = fmul fast float %6489, %6486
  %6491 = fadd fast float %6490, %6471
  br label %6498

; <label>:6492                                    ; preds = %6469
  %6493 = fsub fast float %6472, %6482
  %6494 = call float @dx.op.unary.f32(i32 6, float %6493)  ; FAbs(value)
  %6495 = fadd fast float %6494, %6470
  %6496 = fmul fast float %6494, %6486
  %6497 = fsub fast float %6471, %6496
  br label %6498

; <label>:6498                                    ; preds = %6492, %6487
  %6499 = phi float [ %6489, %6487 ], [ %6495, %6492 ]
  %6500 = phi float [ %6491, %6487 ], [ %6497, %6492 ]
  %6501 = fcmp fast olt float %6480, %6329
  %6502 = icmp slt i32 %6477, 3
  %6503 = and i1 %6502, %6501
  br i1 %6503, label %6469, label %6504

; <label>:6504                                    ; preds = %6498
  br label %6505

; <label>:6505                                    ; preds = %6504, %6462
  %6506 = phi float [ %6327, %6462 ], [ %6499, %6504 ]
  %6507 = phi float [ %6328, %6462 ], [ %6500, %6504 ]
  %6508 = fsub fast float %6243, %6506
  %6509 = select i1 %6245, float %6506, float %6508
  %6510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6510, 0
  %6512 = extractvalue %dx.types.CBufRet.f32 %6510, 1
  %6513 = extractvalue %dx.types.CBufRet.f32 %6510, 2
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6518 = extractvalue %dx.types.CBufRet.f32 %6514, 3
  %6519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %6520 = extractvalue %dx.types.CBufRet.f32 %6519, 3
  %6521 = call float @dx.op.binary.f32(i32 36, float %6507, float %6520)  ; FMin(a,b)
  %6522 = fmul fast float %6518, %6509
  %6523 = call float @dx.op.unary.f32(i32 7, float %6522)  ; Saturate(value)
  %6524 = fsub fast float %6515, %6511
  %6525 = fsub fast float %6516, %6512
  %6526 = fsub fast float %6517, %6513
  %6527 = fmul fast float %6523, %6524
  %6528 = fmul fast float %6523, %6525
  %6529 = fmul fast float %6523, %6526
  %6530 = fadd fast float %6527, %6511
  %6531 = fadd fast float %6528, %6512
  %6532 = fadd fast float %6529, %6513
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6535 = extractvalue %dx.types.CBufRet.f32 %6533, 1
  %6536 = fadd fast float %6535, %6534
  %6537 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6533, 2
  %6539 = extractvalue %dx.types.CBufRet.f32 %6533, 3
  %6540 = fadd fast float %6539, %6538
  %6541 = call float @dx.op.unary.f32(i32 7, float %6540)  ; Saturate(value)
  %6542 = fmul fast float %6537, %6521
  %6543 = fmul fast float %6542, %6541
  br label %6544

; <label>:6544                                    ; preds = %6505, %6424, %6259, %6241, %6239
  %6545 = phi float [ %6268, %6259 ], [ %6427, %6424 ], [ %6509, %6505 ], [ 0.000000e+00, %6239 ], [ 0.000000e+00, %6241 ]
  %6546 = phi float [ %6302, %6259 ], [ %6461, %6424 ], [ %6543, %6505 ], [ 0.000000e+00, %6239 ], [ 0.000000e+00, %6241 ]
  %6547 = phi float [ %6289, %6259 ], [ %6448, %6424 ], [ %6530, %6505 ], [ 0.000000e+00, %6239 ], [ 0.000000e+00, %6241 ]
  %6548 = phi float [ %6290, %6259 ], [ %6449, %6424 ], [ %6531, %6505 ], [ 0.000000e+00, %6239 ], [ 0.000000e+00, %6241 ]
  %6549 = phi float [ %6291, %6259 ], [ %6450, %6424 ], [ %6532, %6505 ], [ 0.000000e+00, %6239 ], [ 0.000000e+00, %6241 ]
  %6550 = fmul fast float %6182, %6546
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 2
  %6553 = fsub fast float %6189, %6552
  %6554 = fcmp fast olt float %6550, -2.000000e+01
  %6555 = call float @dx.op.unary.f32(i32 21, float %6550)  ; Exp(value)
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 2
  %6558 = extractvalue %dx.types.CBufRet.f32 %6556, 3
  %6559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %6560 = extractvalue %dx.types.CBufRet.f32 %6559, 2
  %6561 = fmul fast float %6558, %6553
  %6562 = call float @dx.op.unary.f32(i32 7, float %6561)  ; Saturate(value)
  %6563 = fsub fast float 1.000000e+00, %6562
  %6564 = fmul fast float %6174, 5.000000e-01
  %6565 = fadd fast float %6564, 5.000000e-01
  %6566 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  %6567 = fsub fast float 1.000000e+00, %6566
  %6568 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6563)  ; FMax(a,b)
  %6569 = fdiv fast float %6567, %6568
  %6570 = fsub fast float %6553, %6131
  %6571 = call float @dx.op.unary.f32(i32 6, float %6570)  ; FAbs(value)
  %6572 = fmul fast float %6571, %6557
  %6573 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6574 = fsub fast float 1.000000e+00, %6572
  %6575 = fmul fast float %6574, %6573
  %6576 = fadd fast float %6575, %6572
  %6577 = fmul fast float %6560, %6553
  %6578 = call float @dx.op.unary.f32(i32 7, float %6577)  ; Saturate(value)
  %6579 = fsub fast float 1.000000e+00, %6576
  %6580 = fmul fast float %6579, %6578
  %6581 = fadd fast float %6580, %6576
  %6582 = call float @dx.op.unary.f32(i32 7, float %6581)  ; Saturate(value)
  %6583 = fadd fast float %6555, -1.000000e+00
  %6584 = select i1 %6554, float -1.000000e+00, float %6583
  %6585 = fmul fast float %6582, %6584
  %6586 = fadd fast float %6585, 1.000000e+00
  %6587 = fsub fast float -0.000000e+00, %6585
  %6588 = fmul fast float %6547, %6587
  %6589 = fmul fast float %6548, %6587
  %6590 = fmul fast float %6549, %6587
  br label %6591

; <label>:6591                                    ; preds = %6544, %6140
  %6592 = phi float [ %6545, %6544 ], [ 0.000000e+00, %6140 ]
  %6593 = phi float [ %6586, %6544 ], [ 1.000000e+00, %6140 ]
  %6594 = phi float [ %6588, %6544 ], [ 0.000000e+00, %6140 ]
  %6595 = phi float [ %6589, %6544 ], [ 0.000000e+00, %6140 ]
  %6596 = phi float [ %6590, %6544 ], [ 0.000000e+00, %6140 ]
  %6597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.f32 %6597, 1
  %6599 = fsub fast float 1.000000e+00, %6593
  %6600 = fmul fast float %6599, %6175
  %6601 = fmul fast float %6600, %6598
  %6602 = fsub fast float %6175, %6601
  br i1 %6168, label %6603, label %6632, !dx.controlflow.hints !165

; <label>:6603                                    ; preds = %6591
  %6604 = fmul fast float %6176, %6165
  %6605 = fadd fast float %6604, %6166
  %6606 = call float @dx.op.unary.f32(i32 7, float %6605)  ; Saturate(value)
  %6607 = fmul fast float %6147, %6602
  %6608 = fsub fast float -0.000000e+00, %6607
  %6609 = fmul fast float %6148, %6602
  %6610 = fsub fast float -0.000000e+00, %6609
  %6611 = call float @dx.op.unary.f32(i32 21, float %6608)  ; Exp(value)
  %6612 = call float @dx.op.unary.f32(i32 21, float %6610)  ; Exp(value)
  %6613 = call float @dx.op.binary.f32(i32 35, float %6155, float %6611)  ; FMax(a,b)
  %6614 = call float @dx.op.binary.f32(i32 35, float %6155, float %6612)  ; FMax(a,b)
  %6615 = fsub fast float %6614, %6613
  %6616 = fmul fast float %6615, %6606
  %6617 = fadd fast float %6616, %6613
  %6618 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6619 = fsub fast float %6152, %6157
  %6620 = fsub fast float %6153, %6158
  %6621 = fsub fast float %6154, %6159
  %6622 = fmul fast float %6606, %6619
  %6623 = fmul fast float %6606, %6620
  %6624 = fmul fast float %6606, %6621
  %6625 = fadd fast float %6622, %6157
  %6626 = fadd fast float %6623, %6158
  %6627 = fadd fast float %6624, %6159
  %6628 = fsub fast float 1.000000e+00, %6618
  %6629 = fmul fast float %6628, %6625
  %6630 = fmul fast float %6628, %6626
  %6631 = fmul fast float %6628, %6627
  br label %6691

; <label>:6632                                    ; preds = %6591
  %6633 = fmul fast float %6602, %6164
  %6634 = call float @dx.op.unary.f32(i32 7, float %6633)  ; Saturate(value)
  %6635 = fsub fast float 2.000000e+00, %6634
  %6636 = fmul fast float %6634, 9.921875e-01
  %6637 = fmul fast float %6636, %6635
  %6638 = fadd fast float %6637, 3.906250e-03
  %6639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %51, float %6638, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6640 = extractvalue %dx.types.ResRet.f32 %6639, 0
  %6641 = fsub fast float %6634, %6640
  %6642 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6641)  ; FMax(a,b)
  %6643 = fmul fast float %6150, %6131
  %6644 = call float @dx.op.unary.f32(i32 6, float %6643)  ; FAbs(value)
  %6645 = fcmp fast ogt float %6644, 0x3EB0C6F7A0000000
  br i1 %6645, label %6646, label %6652, !dx.controlflow.hints !166

; <label>:6646                                    ; preds = %6632
  %6647 = fmul fast float %6643, 0xBFF7154760000000
  %6648 = call float @dx.op.unary.f32(i32 21, float %6647)  ; Exp(value)
  %6649 = fsub fast float 1.000000e+00, %6648
  %6650 = fdiv fast float %6649, %6643
  %6651 = fmul fast float %6650, %6160
  br label %6652

; <label>:6652                                    ; preds = %6646, %6632
  %6653 = phi float [ %6651, %6646 ], [ %6160, %6632 ]
  %6654 = fadd fast float %6653, %6162
  %6655 = fmul fast float %6654, %6642
  %6656 = fmul fast float %6147, %6655
  %6657 = fsub fast float -0.000000e+00, %6656
  %6658 = fmul fast float %6148, %6655
  %6659 = fsub fast float -0.000000e+00, %6658
  %6660 = fmul fast float %6149, %6655
  %6661 = fsub fast float -0.000000e+00, %6660
  %6662 = call float @dx.op.unary.f32(i32 21, float %6657)  ; Exp(value)
  %6663 = call float @dx.op.unary.f32(i32 21, float %6659)  ; Exp(value)
  %6664 = call float @dx.op.unary.f32(i32 21, float %6661)  ; Exp(value)
  %6665 = fmul fast float %6176, %6176
  %6666 = fadd fast float %6665, 1.000000e+00
  %6667 = fmul fast float %6666, 0x3FAE8EC8A0000000
  %6668 = fmul fast float %6667, %6157
  %6669 = fmul fast float %6667, %6158
  %6670 = fmul fast float %6667, %6159
  %6671 = fmul fast float %6176, %6155
  %6672 = fsub fast float 1.000000e+00, %6671
  %6673 = fmul fast float %6155, %6155
  %6674 = fsub fast float 1.000000e+00, %6673
  %6675 = fmul fast float %6674, 0x3FB45F3060000000
  %6676 = fmul fast float %6672, %6672
  %6677 = fdiv fast float 1.000000e+00, %6676
  %6678 = fmul fast float %6675, %6677
  %6679 = fmul fast float %6678, %6152
  %6680 = fmul fast float %6678, %6153
  %6681 = fmul fast float %6678, %6154
  %6682 = fadd fast float %6679, %6668
  %6683 = fadd fast float %6680, %6669
  %6684 = fadd fast float %6681, %6670
  %6685 = fsub fast float 1.000000e+00, %6662
  %6686 = fsub fast float 1.000000e+00, %6663
  %6687 = fsub fast float 1.000000e+00, %6664
  %6688 = fmul fast float %6682, %6685
  %6689 = fmul fast float %6683, %6686
  %6690 = fmul fast float %6684, %6687
  br label %6691

; <label>:6691                                    ; preds = %6652, %6603
  %6692 = phi float [ %6629, %6603 ], [ %6688, %6652 ]
  %6693 = phi float [ %6630, %6603 ], [ %6689, %6652 ]
  %6694 = phi float [ %6631, %6603 ], [ %6690, %6652 ]
  %6695 = phi float [ %6618, %6603 ], [ %6662, %6652 ]
  %6696 = phi float [ %6618, %6603 ], [ %6663, %6652 ]
  %6697 = phi float [ %6618, %6603 ], [ %6664, %6652 ]
  br i1 %6184, label %6698, label %6896, !dx.controlflow.hints !167

; <label>:6698                                    ; preds = %6691
  %6699 = extractvalue %dx.types.CBufRet.f32 %6597, 0
  %6700 = fmul fast float %6699, %6599
  %6701 = fsub fast float %6594, %6692
  %6702 = fsub fast float %6595, %6693
  %6703 = fsub fast float %6596, %6694
  %6704 = fmul fast float %6700, %6701
  %6705 = fmul fast float %6700, %6702
  %6706 = fmul fast float %6700, %6703
  %6707 = fadd fast float %6704, %6692
  %6708 = fadd fast float %6705, %6693
  %6709 = fadd fast float %6706, %6694
  %6710 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6695)  ; FMax(a,b)
  %6711 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6696)  ; FMax(a,b)
  %6712 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6697)  ; FMax(a,b)
  %6713 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %6593)  ; FMax(a,b)
  %6714 = call float @dx.op.binary.f32(i32 35, float %6592, float %6602)  ; FMax(a,b)
  %6715 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %6714)  ; FMax(a,b)
  %6716 = fdiv fast float %6592, %6715
  %6717 = call float @dx.op.unary.f32(i32 7, float %6716)  ; Saturate(value)
  %6718 = fdiv fast float %6602, %6715
  %6719 = call float @dx.op.unary.f32(i32 7, float %6718)  ; Saturate(value)
  %6720 = fcmp fast une float %6713, 1.000000e+00
  br i1 %6720, label %6721, label %6734, !dx.controlflow.hints !168

; <label>:6721                                    ; preds = %6698
  %6722 = call float @dx.op.unary.f32(i32 23, float %6713)  ; Log(value)
  %6723 = fmul fast float %6722, 0x3FE62E4300000000
  %6724 = fmul fast float %6594, %6723
  %6725 = fsub fast float -0.000000e+00, %6724
  %6726 = fmul fast float %6595, %6723
  %6727 = fsub fast float -0.000000e+00, %6726
  %6728 = fmul fast float %6596, %6723
  %6729 = fsub fast float -0.000000e+00, %6728
  %6730 = fsub fast float 1.000000e+00, %6713
  %6731 = fdiv fast float %6725, %6730
  %6732 = fdiv fast float %6727, %6730
  %6733 = fdiv fast float %6729, %6730
  br label %6734

; <label>:6734                                    ; preds = %6721, %6698
  %6735 = phi float [ %6731, %6721 ], [ %6594, %6698 ]
  %6736 = phi float [ %6732, %6721 ], [ %6595, %6698 ]
  %6737 = phi float [ %6733, %6721 ], [ %6596, %6698 ]
  %6738 = phi float [ %6723, %6721 ], [ 0.000000e+00, %6698 ]
  %6739 = fcmp fast une float %6710, 1.000000e+00
  br i1 %6739, label %6740, label %6747, !dx.controlflow.hints !169

; <label>:6740                                    ; preds = %6734
  %6741 = call float @dx.op.unary.f32(i32 23, float %6710)  ; Log(value)
  %6742 = fmul fast float %6741, 0x3FE62E4300000000
  %6743 = fmul fast float %6707, %6742
  %6744 = fsub fast float -0.000000e+00, %6743
  %6745 = fsub fast float 1.000000e+00, %6710
  %6746 = fdiv fast float %6744, %6745
  br label %6747

; <label>:6747                                    ; preds = %6740, %6734
  %6748 = phi float [ %6746, %6740 ], [ %6707, %6734 ]
  %6749 = phi float [ %6742, %6740 ], [ 0.000000e+00, %6734 ]
  %6750 = fcmp fast une float %6711, 1.000000e+00
  br i1 %6750, label %6751, label %6758, !dx.controlflow.hints !169

; <label>:6751                                    ; preds = %6747
  %6752 = call float @dx.op.unary.f32(i32 23, float %6711)  ; Log(value)
  %6753 = fmul fast float %6752, 0x3FE62E4300000000
  %6754 = fmul fast float %6708, %6753
  %6755 = fsub fast float -0.000000e+00, %6754
  %6756 = fsub fast float 1.000000e+00, %6711
  %6757 = fdiv fast float %6755, %6756
  br label %6758

; <label>:6758                                    ; preds = %6751, %6747
  %6759 = phi float [ %6757, %6751 ], [ %6708, %6747 ]
  %6760 = phi float [ %6753, %6751 ], [ 0.000000e+00, %6747 ]
  %6761 = fcmp fast une float %6712, 1.000000e+00
  br i1 %6761, label %6762, label %6769, !dx.controlflow.hints !169

; <label>:6762                                    ; preds = %6758
  %6763 = call float @dx.op.unary.f32(i32 23, float %6712)  ; Log(value)
  %6764 = fmul fast float %6763, 0x3FE62E4300000000
  %6765 = fmul fast float %6709, %6764
  %6766 = fsub fast float -0.000000e+00, %6765
  %6767 = fsub fast float 1.000000e+00, %6712
  %6768 = fdiv fast float %6766, %6767
  br label %6769

; <label>:6769                                    ; preds = %6762, %6758
  %6770 = phi float [ %6768, %6762 ], [ %6709, %6758 ]
  %6771 = phi float [ %6764, %6762 ], [ 0.000000e+00, %6758 ]
  %6772 = fmul fast float %6735, %6719
  %6773 = fmul fast float %6736, %6719
  %6774 = fmul fast float %6737, %6719
  %6775 = fmul fast float %6738, %6719
  %6776 = fmul fast float %6748, %6717
  %6777 = fmul fast float %6759, %6717
  %6778 = fmul fast float %6770, %6717
  %6779 = fmul fast float %6749, %6717
  %6780 = fmul fast float %6760, %6717
  %6781 = fmul fast float %6771, %6717
  %6782 = fadd fast float %6776, %6772
  %6783 = fadd fast float %6777, %6773
  %6784 = fadd fast float %6778, %6774
  %6785 = fadd fast float %6779, %6775
  %6786 = fadd fast float %6780, %6775
  %6787 = fadd fast float %6781, %6775
  %6788 = fcmp fast une float %6785, 0.000000e+00
  br i1 %6788, label %6789, label %6796, !dx.controlflow.hints !170

; <label>:6789                                    ; preds = %6769
  %6790 = fmul fast float %6785, 0x3FF7154760000000
  %6791 = call float @dx.op.unary.f32(i32 21, float %6790)  ; Exp(value)
  %6792 = fsub fast float 1.000000e+00, %6791
  %6793 = fmul fast float %6782, %6792
  %6794 = fsub fast float -0.000000e+00, %6793
  %6795 = fdiv fast float %6794, %6785
  br label %6796

; <label>:6796                                    ; preds = %6789, %6769
  %6797 = phi float [ %6791, %6789 ], [ 1.000000e+00, %6769 ]
  %6798 = phi float [ %6795, %6789 ], [ %6782, %6769 ]
  %6799 = fcmp fast une float %6786, 0.000000e+00
  br i1 %6799, label %6800, label %6807, !dx.controlflow.hints !170

; <label>:6800                                    ; preds = %6796
  %6801 = fmul fast float %6786, 0x3FF7154760000000
  %6802 = call float @dx.op.unary.f32(i32 21, float %6801)  ; Exp(value)
  %6803 = fsub fast float 1.000000e+00, %6802
  %6804 = fmul fast float %6783, %6803
  %6805 = fsub fast float -0.000000e+00, %6804
  %6806 = fdiv fast float %6805, %6786
  br label %6807

; <label>:6807                                    ; preds = %6800, %6796
  %6808 = phi float [ %6802, %6800 ], [ 1.000000e+00, %6796 ]
  %6809 = phi float [ %6806, %6800 ], [ %6783, %6796 ]
  %6810 = fcmp fast une float %6787, 0.000000e+00
  br i1 %6810, label %6811, label %6818, !dx.controlflow.hints !170

; <label>:6811                                    ; preds = %6807
  %6812 = fmul fast float %6787, 0x3FF7154760000000
  %6813 = call float @dx.op.unary.f32(i32 21, float %6812)  ; Exp(value)
  %6814 = fsub fast float 1.000000e+00, %6813
  %6815 = fmul fast float %6784, %6814
  %6816 = fsub fast float -0.000000e+00, %6815
  %6817 = fdiv fast float %6816, %6787
  br label %6818

; <label>:6818                                    ; preds = %6811, %6807
  %6819 = phi float [ %6813, %6811 ], [ 1.000000e+00, %6807 ]
  %6820 = phi float [ %6817, %6811 ], [ %6784, %6807 ]
  %6821 = fcmp fast ogt float %6717, %6719
  br i1 %6821, label %6822, label %6842

; <label>:6822                                    ; preds = %6818
  %6823 = fsub fast float 1.000000e+00, %6719
  %6824 = fmul fast float %6735, %6823
  %6825 = fmul fast float %6736, %6823
  %6826 = fmul fast float %6737, %6823
  %6827 = fmul fast float %6738, %6823
  %6828 = fcmp fast une float %6827, 0.000000e+00
  br i1 %6828, label %6829, label %6880, !dx.controlflow.hints !171

; <label>:6829                                    ; preds = %6822
  %6830 = fmul fast float %6827, 0x3FF7154760000000
  %6831 = call float @dx.op.unary.f32(i32 21, float %6830)  ; Exp(value)
  %6832 = fsub fast float 1.000000e+00, %6831
  %6833 = fmul fast float %6824, %6832
  %6834 = fsub fast float -0.000000e+00, %6833
  %6835 = fmul fast float %6825, %6832
  %6836 = fsub fast float -0.000000e+00, %6835
  %6837 = fmul fast float %6826, %6832
  %6838 = fsub fast float -0.000000e+00, %6837
  %6839 = fdiv fast float %6834, %6827
  %6840 = fdiv fast float %6836, %6827
  %6841 = fdiv fast float %6838, %6827
  br label %6880

; <label>:6842                                    ; preds = %6818
  %6843 = fsub fast float 1.000000e+00, %6717
  %6844 = fmul fast float %6748, %6843
  %6845 = fmul fast float %6759, %6843
  %6846 = fmul fast float %6770, %6843
  %6847 = fmul fast float %6749, %6843
  %6848 = fmul fast float %6760, %6843
  %6849 = fmul fast float %6771, %6843
  %6850 = fcmp fast une float %6847, 0.000000e+00
  br i1 %6850, label %6851, label %6858, !dx.controlflow.hints !170

; <label>:6851                                    ; preds = %6842
  %6852 = fmul fast float %6847, 0x3FF7154760000000
  %6853 = call float @dx.op.unary.f32(i32 21, float %6852)  ; Exp(value)
  %6854 = fsub fast float 1.000000e+00, %6853
  %6855 = fmul fast float %6844, %6854
  %6856 = fsub fast float -0.000000e+00, %6855
  %6857 = fdiv fast float %6856, %6847
  br label %6858

; <label>:6858                                    ; preds = %6851, %6842
  %6859 = phi float [ %6857, %6851 ], [ %6844, %6842 ]
  %6860 = phi float [ %6853, %6851 ], [ 1.000000e+00, %6842 ]
  %6861 = fcmp fast une float %6848, 0.000000e+00
  br i1 %6861, label %6862, label %6869, !dx.controlflow.hints !170

; <label>:6862                                    ; preds = %6858
  %6863 = fmul fast float %6848, 0x3FF7154760000000
  %6864 = call float @dx.op.unary.f32(i32 21, float %6863)  ; Exp(value)
  %6865 = fsub fast float 1.000000e+00, %6864
  %6866 = fmul fast float %6845, %6865
  %6867 = fsub fast float -0.000000e+00, %6866
  %6868 = fdiv fast float %6867, %6848
  br label %6869

; <label>:6869                                    ; preds = %6862, %6858
  %6870 = phi float [ %6868, %6862 ], [ %6845, %6858 ]
  %6871 = phi float [ %6864, %6862 ], [ 1.000000e+00, %6858 ]
  %6872 = fcmp fast une float %6849, 0.000000e+00
  br i1 %6872, label %6873, label %6880, !dx.controlflow.hints !170

; <label>:6873                                    ; preds = %6869
  %6874 = fmul fast float %6849, 0x3FF7154760000000
  %6875 = call float @dx.op.unary.f32(i32 21, float %6874)  ; Exp(value)
  %6876 = fsub fast float 1.000000e+00, %6875
  %6877 = fmul fast float %6846, %6876
  %6878 = fsub fast float -0.000000e+00, %6877
  %6879 = fdiv fast float %6878, %6849
  br label %6880

; <label>:6880                                    ; preds = %6873, %6869, %6829, %6822
  %6881 = phi float [ %6879, %6873 ], [ %6841, %6829 ], [ %6826, %6822 ], [ %6846, %6869 ]
  %6882 = phi float [ %6870, %6873 ], [ %6840, %6829 ], [ %6825, %6822 ], [ %6870, %6869 ]
  %6883 = phi float [ %6859, %6873 ], [ %6839, %6829 ], [ %6824, %6822 ], [ %6859, %6869 ]
  %6884 = phi float [ %6875, %6873 ], [ %6831, %6829 ], [ 1.000000e+00, %6822 ], [ 1.000000e+00, %6869 ]
  %6885 = phi float [ %6871, %6873 ], [ %6831, %6829 ], [ 1.000000e+00, %6822 ], [ %6871, %6869 ]
  %6886 = phi float [ %6860, %6873 ], [ %6831, %6829 ], [ 1.000000e+00, %6822 ], [ %6860, %6869 ]
  %6887 = fmul fast float %6886, %6798
  %6888 = fmul fast float %6885, %6809
  %6889 = fmul fast float %6884, %6820
  %6890 = fadd fast float %6887, %6883
  %6891 = fadd fast float %6888, %6882
  %6892 = fadd fast float %6889, %6881
  %6893 = fmul fast float %6886, %6797
  %6894 = fmul fast float %6885, %6808
  %6895 = fmul fast float %6884, %6819
  br label %6896

; <label>:6896                                    ; preds = %6880, %6691
  %6897 = phi float [ %6895, %6880 ], [ %6697, %6691 ]
  %6898 = phi float [ %6894, %6880 ], [ %6696, %6691 ]
  %6899 = phi float [ %6893, %6880 ], [ %6695, %6691 ]
  %6900 = phi float [ %6892, %6880 ], [ %6694, %6691 ]
  %6901 = phi float [ %6891, %6880 ], [ %6693, %6691 ]
  %6902 = phi float [ %6890, %6880 ], [ %6692, %6691 ]
  %6903 = fmul fast float %6902, %5842
  %6904 = fmul fast float %6901, %5844
  %6905 = fmul fast float %6900, %5846
  %6906 = fmul fast float %6899, %6139
  %6907 = call float @dx.op.dot3.f32(i32 55, float %6899, float %6898, float %6897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6908 = call float @dx.op.dot3.f32(i32 55, float %6903, float %6904, float %6905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6909 = select i1 %212, float %6907, float %6899
  %6910 = select i1 %212, float %6907, float %6898
  %6911 = select i1 %212, float 1.000000e+00, float %6897
  %6912 = select i1 %212, float %6908, float %6903
  %6913 = select i1 %212, float 0.000000e+00, float %6904
  %6914 = select i1 %212, float 0.000000e+00, float %6905
  %6915 = fmul fast float %6909, %6133
  %6916 = fmul fast float %6910, %6134
  %6917 = fmul fast float %6911, %6135
  %6918 = fadd fast float %6915, %6912
  %6919 = fadd fast float %6916, %6913
  %6920 = fadd fast float %6914, %6917
  %6921 = fmul fast float %6909, %6136
  %6922 = fmul fast float %6910, %6137
  %6923 = fmul fast float %6911, %6138
  %6924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %6925 = extractvalue %dx.types.CBufRet.i32 %6924, 0
  %6926 = icmp eq i32 %6925, 0
  br i1 %6926, label %7294, label %6927, !dx.controlflow.hints !172

; <label>:6927                                    ; preds = %6896
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 3
  %6931 = fmul fast float %6929, %95
  %6932 = fmul fast float %6930, %96
  %6933 = fmul fast float %6931, 2.000000e+00
  %6934 = fmul fast float %6932, 2.000000e+00
  %6935 = fsub fast float 1.000000e+00, %6933
  %6936 = fsub fast float 1.000000e+00, %6934
  %6937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6938 = extractvalue %dx.types.CBufRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.CBufRet.f32 %6937, 1
  %6940 = extractvalue %dx.types.CBufRet.f32 %6937, 2
  %6941 = fmul fast float %6935, %6938
  %6942 = fmul fast float %6935, %6939
  %6943 = fmul fast float %6935, %6940
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6948 = fmul fast float %6936, %6945
  %6949 = fmul fast float %6936, %6946
  %6950 = fmul fast float %6936, %6947
  %6951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %6952 = extractvalue %dx.types.CBufRet.f32 %6951, 0
  %6953 = extractvalue %dx.types.CBufRet.f32 %6951, 1
  %6954 = extractvalue %dx.types.CBufRet.f32 %6951, 2
  %6955 = fadd fast float %6948, %6952
  %6956 = fadd fast float %6955, %6941
  %6957 = fadd fast float %6949, %6953
  %6958 = fadd fast float %6957, %6942
  %6959 = fadd fast float %6950, %6954
  %6960 = fadd fast float %6959, %6943
  %6961 = fmul fast float %6956, %6132
  %6962 = fmul fast float %6958, %6132
  %6963 = fmul fast float %6960, %6132
  %6964 = fmul fast float %6961, %6961
  %6965 = fmul fast float %6962, %6962
  %6966 = fadd fast float %6964, %6965
  %6967 = fmul fast float %6963, %6963
  %6968 = fadd fast float %6966, %6967
  %6969 = call float @dx.op.unary.f32(i32 24, float %6968)  ; Sqrt(value)
  %6970 = extractvalue %dx.types.CBufRet.f32 %5857, 0
  %6971 = fsub fast float %6969, %6970
  %6972 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %6973 = fmul fast float %6971, %6972
  %6974 = call float @dx.op.unary.f32(i32 7, float %6973)  ; Saturate(value)
  %6975 = fadd fast float %6974, -5.000000e-01
  %6976 = fmul fast float %6975, 2.000000e+00
  %6977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %6978 = extractvalue %dx.types.CBufRet.f32 %6977, 2
  %6979 = call float @dx.op.binary.f32(i32 36, float %6978, float %6976)  ; FMin(a,b)
  %6980 = fsub fast float -0.000000e+00, %6978
  %6981 = fcmp fast ogt float %6979, %6980
  br i1 %6981, label %6982, label %7294, !dx.controlflow.hints !173

; <label>:6982                                    ; preds = %6927
  %6983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %6984 = extractvalue %dx.types.CBufRet.f32 %6983, 3
  %6985 = fcmp fast ogt float %6984, 0.000000e+00
  br i1 %6985, label %6986, label %7061, !dx.controlflow.hints !174

; <label>:6986                                    ; preds = %6982
  %6987 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %37, i32 0)  ; GetDimensions(handle,mipLevel)
  %6988 = extractvalue %dx.types.Dimensions %6987, 0
  %6989 = sitofp i32 %6988 to float
  %6990 = extractvalue %dx.types.Dimensions %6987, 1
  %6991 = sitofp i32 %6990 to float
  %6992 = fmul fast float %6931, %6989
  %6993 = fmul fast float %6932, %6991
  %6994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6995 = extractvalue %dx.types.CBufRet.f32 %6994, 1
  %6996 = fsub fast float -0.000000e+00, %6995
  %6997 = fptoui float %6996 to i32
  %6998 = fptoui float %6992 to i32
  %6999 = fptoui float %6993 to i32
  %7000 = and i32 %6997, 31
  %7001 = lshr i32 %6998, %7000
  %7002 = lshr i32 %6999, %7000
  %7003 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 %6997, i32 %7001, i32 %7002, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7004 = extractvalue %dx.types.ResRet.f32 %7003, 0
  %7005 = fcmp fast olt float %7004, -1.000000e+00
  %7006 = fcmp fast ogt float %7004, -1.000000e+00
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 1
  %7009 = select i1 %7006, float %7008, float 1.000000e+00
  %7010 = fadd fast float %7004, 1.000000e+00
  %7011 = fmul fast float %7009, %7010
  %7012 = call float @dx.op.unary.f32(i32 6, float %7011)  ; FAbs(value)
  %7013 = extractvalue %dx.types.CBufRet.f32 %7007, 3
  %7014 = fcmp fast oge float %7012, %7013
  %7015 = select i1 %7014, float 0x4197782600000000, float %7012
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7019 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7020 = select i1 %7005, float %7017, float %6938
  %7021 = select i1 %7005, float %7018, float %6939
  %7022 = select i1 %7005, float %7019, float %6940
  %7023 = fmul fast float %7020, %6935
  %7024 = fmul fast float %7021, %6935
  %7025 = fmul fast float %7022, %6935
  %7026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7027 = extractvalue %dx.types.CBufRet.f32 %7026, 0
  %7028 = extractvalue %dx.types.CBufRet.f32 %7026, 1
  %7029 = extractvalue %dx.types.CBufRet.f32 %7026, 2
  %7030 = select i1 %7005, float %7027, float %6945
  %7031 = select i1 %7005, float %7028, float %6946
  %7032 = select i1 %7005, float %7029, float %6947
  %7033 = fmul fast float %7030, %6936
  %7034 = fmul fast float %7031, %6936
  %7035 = fmul fast float %7032, %6936
  %7036 = fadd fast float %7033, %7023
  %7037 = fadd fast float %7034, %7024
  %7038 = fadd fast float %7035, %7025
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.CBufRet.f32 %7039, 1
  %7042 = extractvalue %dx.types.CBufRet.f32 %7039, 2
  %7043 = select i1 %7005, float %7040, float %6952
  %7044 = select i1 %7005, float %7041, float %6953
  %7045 = select i1 %7005, float %7042, float %6954
  %7046 = fadd fast float %7036, %7043
  %7047 = fadd fast float %7037, %7044
  %7048 = fadd fast float %7038, %7045
  %7049 = fmul fast float %7046, %7015
  %7050 = fmul fast float %7047, %7015
  %7051 = fmul fast float %7048, %7015
  %7052 = fmul fast float %7049, %7049
  %7053 = fmul fast float %7050, %7050
  %7054 = fadd fast float %7052, %7053
  %7055 = fmul fast float %7051, %7051
  %7056 = fadd fast float %7054, %7055
  %7057 = call float @dx.op.unary.f32(i32 24, float %7056)  ; Sqrt(value)
  %7058 = fsub fast float %7057, %6970
  %7059 = fmul fast float %7058, %6972
  %7060 = call float @dx.op.unary.f32(i32 7, float %7059)  ; Saturate(value)
  br label %7061

; <label>:7061                                    ; preds = %6986, %6982
  %7062 = phi float [ %7060, %6986 ], [ 1.000000e+00, %6982 ]
  %7063 = fmul fast float %6979, 5.000000e-01
  %7064 = fadd fast float %7063, 5.000000e-01
  %7065 = call float @dx.op.unary.f32(i32 22, float %7064)  ; Frc(value)
  %7066 = call float @dx.op.unary.f32(i32 27, float %7065)  ; Round_ni(value)
  %7067 = call float @dx.op.unary.f32(i32 22, float %7065)  ; Frc(value)
  %7068 = fmul fast float %7067, 2.000000e+00
  %7069 = fadd fast float %7068, -1.000000e+00
  %7070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %51, float %6931, float %6932, float %7066, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7071 = extractvalue %dx.types.ResRet.f32 %7070, 0
  %7072 = extractvalue %dx.types.ResRet.f32 %7070, 1
  %7073 = extractvalue %dx.types.ResRet.f32 %7070, 2
  %7074 = extractvalue %dx.types.ResRet.f32 %7070, 3
  %7075 = fadd fast float %7071, -5.000000e-01
  %7076 = fadd fast float %7073, -5.000000e-01
  %7077 = fmul fast float %7075, 0xBFD5555560000000
  %7078 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7076, float %7077)  ; FMad(a,b,c)
  %7079 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7072, float 0.000000e+00)  ; FMad(a,b,c)
  %7080 = fadd fast float %7079, %7074
  %7081 = fmul fast float %7075, -7.500000e-01
  %7082 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7076, float %7081)  ; FMad(a,b,c)
  %7083 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7072, float 0.000000e+00)  ; FMad(a,b,c)
  %7084 = fadd fast float %7083, %7074
  %7085 = call float @dx.op.binary.f32(i32 35, float %7078, float -1.000000e+00)  ; FMax(a,b)
  %7086 = call float @dx.op.binary.f32(i32 35, float %7080, float -1.000000e+00)  ; FMax(a,b)
  %7087 = call float @dx.op.binary.f32(i32 35, float %7082, float -1.000000e+00)  ; FMax(a,b)
  %7088 = call float @dx.op.binary.f32(i32 35, float %7084, float -1.000000e+00)  ; FMax(a,b)
  %7089 = call float @dx.op.binary.f32(i32 36, float %7085, float 1.000000e+00)  ; FMin(a,b)
  %7090 = call float @dx.op.binary.f32(i32 36, float %7086, float 1.000000e+00)  ; FMin(a,b)
  %7091 = call float @dx.op.binary.f32(i32 36, float %7087, float 1.000000e+00)  ; FMin(a,b)
  %7092 = call float @dx.op.binary.f32(i32 36, float %7088, float 1.000000e+00)  ; FMin(a,b)
  %7093 = fcmp fast olt float %7089, 0x3FEFFF8020000000
  br i1 %7093, label %7094, label %7209, !dx.controlflow.hints !175

; <label>:7094                                    ; preds = %7061
  %7095 = extractvalue %dx.types.CBufRet.f32 %6977, 3
  %7096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7097 = extractvalue %dx.types.CBufRet.f32 %7096, 0
  %7098 = extractvalue %dx.types.CBufRet.f32 %7096, 1
  %7099 = extractvalue %dx.types.CBufRet.f32 %7096, 2
  %7100 = extractvalue %dx.types.CBufRet.f32 %7096, 3
  %7101 = fsub fast float %7097, %7089
  %7102 = fsub fast float %7098, %7090
  %7103 = fsub fast float %7099, %7091
  %7104 = fsub fast float %7100, %7092
  %7105 = fmul fast float %7101, %7095
  %7106 = fmul fast float %7102, %7095
  %7107 = fmul fast float %7103, %7095
  %7108 = fmul fast float %7104, %7095
  %7109 = fadd fast float %7105, %7089
  %7110 = fadd fast float %7106, %7090
  %7111 = fsub fast float -0.000000e+00, %7110
  %7112 = fadd fast float %7107, %7091
  %7113 = fadd fast float %7108, %7092
  %7114 = fmul fast float %7109, %7109
  %7115 = fsub fast float %7110, %7114
  %7116 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7115)  ; FMax(a,b)
  %7117 = fdiv fast float 1.000000e+00, %7116
  %7118 = fmul fast float %7110, %7109
  %7119 = fsub fast float %7112, %7118
  %7120 = fsub fast float %7069, %7109
  %7121 = fmul fast float %7069, %7069
  %7122 = fsub fast float %7121, %7110
  %7123 = fmul fast float %7120, %7117
  %7124 = fmul fast float %7123, %7119
  %7125 = fsub fast float %7122, %7124
  %7126 = fmul fast float %7110, %7110
  %7127 = fsub fast float %7113, %7126
  %7128 = fmul fast float %7119, %7119
  %7129 = fmul fast float %7128, %7117
  %7130 = fsub fast float %7127, %7129
  %7131 = fdiv fast float %7125, %7130
  %7132 = fmul fast float %7119, %7131
  %7133 = fsub fast float %7120, %7132
  %7134 = fmul fast float %7133, %7117
  %7135 = fmul fast float %7134, %7109
  %7136 = fsub fast float 1.000000e+00, %7135
  %7137 = fmul fast float %7110, %7131
  %7138 = fsub fast float %7136, %7137
  %7139 = fmul fast float %7134, %7134
  %7140 = fmul fast float %7131, 4.000000e+00
  %7141 = fmul fast float %7140, %7138
  %7142 = fsub fast float %7139, %7141
  %7143 = call float @dx.op.unary.f32(i32 24, float %7142)  ; Sqrt(value)
  %7144 = fcmp fast oge float %7134, 0.000000e+00
  %7145 = fsub fast float -0.000000e+00, %7143
  %7146 = select i1 %7144, float %7145, float %7143
  %7147 = fsub fast float %7146, %7134
  %7148 = fdiv fast float %7147, %7131
  %7149 = fdiv fast float %7138, %7147
  %7150 = fmul fast float %7148, 5.000000e-01
  %7151 = fmul fast float %7149, 2.000000e+00
  %7152 = select i1 %7144, float %7150, float %7151
  %7153 = select i1 %7144, float %7151, float %7150
  %7154 = call float @dx.op.binary.f32(i32 35, float %7152, float %7153)  ; FMax(a,b)
  %7155 = call float @dx.op.binary.f32(i32 36, float %7152, float %7153)  ; FMin(a,b)
  %7156 = fcmp fast ogt float %7069, %7155
  br i1 %7156, label %7157, label %7167

; <label>:7157                                    ; preds = %7094
  %7158 = fsub fast float %7069, %7155
  %7159 = fsub fast float %7154, %7155
  %7160 = fmul fast float %7158, %7159
  %7161 = fmul fast float %7154, %7069
  %7162 = fadd fast float %7154, %7069
  %7163 = fmul fast float %7162, %7109
  %7164 = fadd fast float %7161, %7110
  %7165 = fsub fast float %7164, %7163
  %7166 = fdiv fast float %7165, %7160
  br label %7167

; <label>:7167                                    ; preds = %7157, %7094
  %7168 = phi float [ %7166, %7157 ], [ 0.000000e+00, %7094 ]
  %7169 = fcmp fast ogt float %7069, %7154
  %7170 = fsub fast float %7069, %7154
  br i1 %7169, label %7171, label %7181

; <label>:7171                                    ; preds = %7167
  %7172 = fsub fast float %7154, %7155
  %7173 = fmul fast float %7172, %7170
  %7174 = fmul fast float %7155, %7069
  %7175 = fadd fast float %7155, %7069
  %7176 = fmul fast float %7175, %7109
  %7177 = fsub fast float %7111, %7174
  %7178 = fadd fast float %7177, %7176
  %7179 = fdiv fast float %7178, %7173
  %7180 = fadd fast float %7179, %7168
  br label %7181

; <label>:7181                                    ; preds = %7171, %7167
  %7182 = phi float [ %7180, %7171 ], [ %7168, %7167 ]
  %7183 = fsub fast float %7069, %7155
  %7184 = fmul fast float %7183, %7170
  %7185 = fmul fast float %7155, %7154
  %7186 = fadd fast float %7155, %7154
  %7187 = fmul fast float %7186, %7109
  %7188 = fadd fast float %7185, %7110
  %7189 = fsub fast float %7188, %7187
  %7190 = fdiv fast float %7189, %7184
  %7191 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7192 = fcmp fast oeq float %5858, 0.000000e+00
  %7193 = extractvalue %dx.types.CBufRet.f32 %6977, 0
  %7194 = fcmp fast oeq float %7193, 0.000000e+00
  %7195 = or i1 %7192, %7194
  %7196 = fmul fast float %7193, 2.000000e+00
  %7197 = fadd fast float %6978, %6979
  %7198 = fdiv fast float %7197, %7196
  %7199 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7200 = fmul fast float %7199, 2.000000e+00
  %7201 = fsub fast float 3.000000e+00, %7200
  %7202 = fmul fast float %7199, %7199
  %7203 = fmul fast float %7202, %7201
  %7204 = select i1 %7195, float 1.000000e+00, float %7203
  %7205 = fmul fast float %7190, %5858
  %7206 = fadd fast float %7191, %7205
  %7207 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  %7208 = fmul fast float %7204, %7207
  br label %7209

; <label>:7209                                    ; preds = %7181, %7061
  %7210 = phi float [ %7208, %7181 ], [ 0.000000e+00, %7061 ]
  %7211 = fsub fast float 1.000000e+00, %7210
  %7212 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %51, float %6931, float %6932, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7213 = extractvalue %dx.types.ResRet.f32 %7212, 0
  %7214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %7215 = extractvalue %dx.types.CBufRet.i32 %7214, 2
  %7216 = icmp eq i32 %7215, 0
  br i1 %7216, label %7222, label %7217

; <label>:7217                                    ; preds = %7209
  %7218 = call float @dx.op.unary.f32(i32 7, float %7210)  ; Saturate(value)
  %7219 = fadd fast float %7213, -1.000000e+00
  %7220 = fmul fast float %7218, %7219
  %7221 = fadd fast float %7220, 1.000000e+00
  br label %7222

; <label>:7222                                    ; preds = %7217, %7209
  %7223 = phi float [ %7221, %7217 ], [ %7211, %7209 ]
  br i1 %6985, label %7224, label %7242

; <label>:7224                                    ; preds = %7222
  %7225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.f32 %7225, 1
  %7227 = fsub fast float %7062, %7226
  %7228 = call float @dx.op.unary.f32(i32 7, float %7227)  ; Saturate(value)
  %7229 = fsub fast float %7062, %6984
  %7230 = call float @dx.op.unary.f32(i32 7, float %7229)  ; Saturate(value)
  %7231 = fsub fast float %7228, %7230
  %7232 = fsub fast float %7064, %7230
  %7233 = fdiv fast float %7232, %7231
  %7234 = call float @dx.op.unary.f32(i32 7, float %7233)  ; Saturate(value)
  %7235 = fmul fast float %7234, 2.000000e+00
  %7236 = fsub fast float 3.000000e+00, %7235
  %7237 = fsub fast float %7213, %7223
  %7238 = fmul fast float %7234, %7234
  %7239 = fmul fast float %7238, %7237
  %7240 = fmul fast float %7239, %7236
  %7241 = fadd fast float %7240, %7223
  br label %7242

; <label>:7242                                    ; preds = %7224, %7222
  %7243 = phi float [ %7241, %7224 ], [ %7223, %7222 ]
  %7244 = call float @dx.op.binary.f32(i32 35, float %7213, float %7243)  ; FMax(a,b)
  %7245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.i32 %7245, 2
  %7247 = and i32 %7246, 1
  %7248 = icmp eq i32 %7247, 0
  %7249 = fcmp fast une float %7244, 1.000000e+00
  %7250 = and i1 %7249, %7248
  br i1 %7250, label %7251, label %7270

; <label>:7251                                    ; preds = %7242
  %7252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %51, float %6931, float %6932, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7252, 2
  %7256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7257 = extractvalue %dx.types.CBufRet.f32 %7256, 1
  %7258 = fmul fast float %7257, %7253
  %7259 = fmul fast float %7257, %7254
  %7260 = fmul fast float %7257, %7255
  %7261 = fcmp fast ogt float %7213, 0x3FEFFF2E40000000
  %7262 = fsub fast float 1.000000e+00, %7244
  %7263 = fsub fast float 1.000000e+00, %7213
  %7264 = fdiv fast float %7262, %7263
  %7265 = call float @dx.op.unary.f32(i32 7, float %7264)  ; Saturate(value)
  %7266 = select i1 %7261, float 0.000000e+00, float %7265
  %7267 = fmul fast float %7258, %7266
  %7268 = fmul fast float %7259, %7266
  %7269 = fmul fast float %7260, %7266
  br label %7270

; <label>:7270                                    ; preds = %7251, %7242
  %7271 = phi float [ 0.000000e+00, %7242 ], [ %7267, %7251 ]
  %7272 = phi float [ 0.000000e+00, %7242 ], [ %7268, %7251 ]
  %7273 = phi float [ 0.000000e+00, %7242 ], [ %7269, %7251 ]
  %7274 = fmul fast float %7271, %5842
  %7275 = fmul fast float %7272, %5844
  %7276 = fmul fast float %7273, %5846
  %7277 = fmul fast float %7244, %6906
  %7278 = call float @dx.op.dot3.f32(i32 55, float %7244, float %7244, float %7244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7279 = call float @dx.op.dot3.f32(i32 55, float %7274, float %7275, float %7276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7280 = select i1 %212, float %7278, float %7244
  %7281 = select i1 %212, float 1.000000e+00, float %7244
  %7282 = select i1 %212, float %7279, float %7274
  %7283 = select i1 %212, float 0.000000e+00, float %7275
  %7284 = select i1 %212, float 0.000000e+00, float %7276
  %7285 = fmul fast float %7280, %6918
  %7286 = fmul fast float %7280, %6919
  %7287 = fmul fast float %7281, %6920
  %7288 = fadd fast float %7285, %7282
  %7289 = fadd fast float %7286, %7283
  %7290 = fadd fast float %7284, %7287
  %7291 = fmul fast float %7280, %6921
  %7292 = fmul fast float %7280, %6922
  %7293 = fmul fast float %7281, %6923
  br label %7294

; <label>:7294                                    ; preds = %7270, %6927, %6896, %6128
  %7295 = phi float [ %6133, %6128 ], [ %6918, %6896 ], [ %7288, %7270 ], [ %6918, %6927 ]
  %7296 = phi float [ %6134, %6128 ], [ %6919, %6896 ], [ %7289, %7270 ], [ %6919, %6927 ]
  %7297 = phi float [ %6135, %6128 ], [ %6920, %6896 ], [ %7290, %7270 ], [ %6920, %6927 ]
  %7298 = phi float [ %6136, %6128 ], [ %6921, %6896 ], [ %7291, %7270 ], [ %6921, %6927 ]
  %7299 = phi float [ %6137, %6128 ], [ %6922, %6896 ], [ %7292, %7270 ], [ %6922, %6927 ]
  %7300 = phi float [ %6138, %6128 ], [ %6923, %6896 ], [ %7293, %7270 ], [ %6923, %6927 ]
  %7301 = phi float [ %6139, %6128 ], [ %6906, %6896 ], [ %7277, %7270 ], [ %6906, %6927 ]
  %7302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %54, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7303 = extractvalue %dx.types.CBufRet.f32 %7302, 2
  %7304 = extractvalue %dx.types.CBufRet.f32 %7302, 3
  %7305 = fmul fast float %7303, %95
  %7306 = fmul fast float %7304, %96
  %7307 = call float @dx.op.unary.f32(i32 7, float %7305)  ; Saturate(value)
  %7308 = call float @dx.op.unary.f32(i32 7, float %7306)  ; Saturate(value)
  %7309 = select i1 %5868, i32 2, i32 0
  %7310 = or i32 %7309, 1
  %7311 = uitofp i32 %7310 to float
  %7312 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %7307, float %7308, float %7311, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7313 = extractvalue %dx.types.ResRet.f32 %7312, 0
  %7314 = extractvalue %dx.types.ResRet.f32 %7312, 1
  %7315 = extractvalue %dx.types.ResRet.f32 %7312, 2
  %7316 = extractvalue %dx.types.ResRet.f32 %7312, 3
  %7317 = add nuw nsw i32 %7309, 2
  %7318 = uitofp i32 %7317 to float
  %7319 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %51, float %7307, float %7308, float %7318, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7320 = extractvalue %dx.types.ResRet.f32 %7319, 0
  %7321 = extractvalue %dx.types.ResRet.f32 %7319, 1
  %7322 = extractvalue %dx.types.ResRet.f32 %7319, 2
  %7323 = extractvalue %dx.types.ResRet.f32 %7319, 3
  %7324 = call float @dx.op.binary.f32(i32 35, float %7314, float %7315)  ; FMax(a,b)
  %7325 = call float @dx.op.binary.f32(i32 35, float %7313, float %7324)  ; FMax(a,b)
  %7326 = call float @dx.op.binary.f32(i32 35, float %7325, float %7316)  ; FMax(a,b)
  %7327 = call float @dx.op.binary.f32(i32 36, float %7321, float %7322)  ; FMin(a,b)
  %7328 = call float @dx.op.binary.f32(i32 36, float %7320, float %7327)  ; FMin(a,b)
  %7329 = call float @dx.op.binary.f32(i32 36, float %7328, float %7323)  ; FMin(a,b)
  %7330 = fmul fast float %7326, 2.550000e+02
  %7331 = fadd fast float %7330, 0x3F70101020000000
  %7332 = fptoui float %7331 to i32
  %7333 = fmul fast float %7329, 2.550000e+02
  %7334 = fadd fast float %7333, 0x3F70101020000000
  %7335 = fptoui float %7334 to i32
  %7336 = icmp ult i32 %7332, %7335
  br i1 %7336, label %7337, label %7506

; <label>:7337                                    ; preds = %7294
  %7338 = fcmp fast ogt float %82, 9.843750e-01
  %7339 = fadd fast float %6132, -4.000000e+00
  %7340 = select i1 %7338, float -4.000000e+00, float %7339
  %7341 = call float @dx.op.binary.f32(i32 35, float %7340, float 0.000000e+00)  ; FMax(a,b)
  %7342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7343 = extractvalue %dx.types.CBufRet.f32 %7342, 0
  %7344 = fadd fast float %7343, %7341
  %7345 = extractvalue %dx.types.CBufRet.f32 %7342, 2
  %7346 = fmul fast float %7344, %7345
  %7347 = call float @dx.op.unary.f32(i32 23, float %7346)  ; Log(value)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7342, 3
  %7349 = fmul fast float %7348, %7347
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 2
  %7352 = fmul fast float %7349, %7351
  %7353 = call float @dx.op.unary.f32(i32 7, float %7352)  ; Saturate(value)
  %7354 = uitofp i32 %7332 to float
  %7355 = uitofp i32 %7335 to float
  %7356 = fadd fast float %7354, 5.000000e-01
  %7357 = fadd fast float %7355, 5.000000e-01
  %7358 = fmul fast float %7351, %7356
  %7359 = fmul fast float %7351, %7357
  %7360 = fadd fast float %7358, 0x3F0FFB4800000000
  %7361 = fadd fast float %7359, 0xBF0FFB4800000000
  %7362 = call float @dx.op.binary.f32(i32 35, float %7353, float %7360)  ; FMax(a,b)
  %7363 = call float @dx.op.binary.f32(i32 36, float %7362, float %7361)  ; FMin(a,b)
  %7364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7365 = extractvalue %dx.types.CBufRet.f32 %7364, 1
  %7366 = extractvalue %dx.types.CBufRet.f32 %7364, 2
  %7367 = extractvalue %dx.types.CBufRet.f32 %7364, 0
  %7368 = select i1 %5868, float %7367, float 0.000000e+00
  %7369 = fmul fast float %7365, %7363
  %7370 = fadd fast float %7368, %7369
  %7371 = fadd fast float %7368, %7366
  %7372 = fsub fast float %7365, %7366
  %7373 = fadd fast float %7372, %7368
  %7374 = call float @dx.op.binary.f32(i32 35, float %7370, float %7371)  ; FMax(a,b)
  %7375 = call float @dx.op.binary.f32(i32 36, float %7374, float %7373)  ; FMin(a,b)
  %7376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %49, float %7307, float %7308, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.ResRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.ResRet.f32 %7376, 2
  %7380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.i32 %7380, 0
  %7382 = extractvalue %dx.types.CBufRet.i32 %7380, 1
  %7383 = uitofp i32 %7381 to float
  %7384 = uitofp i32 %7382 to float
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 0
  %7387 = extractvalue %dx.types.CBufRet.f32 %7385, 1
  %7388 = fmul fast float %7383, %7307
  %7389 = fmul fast float %7384, %7308
  %7390 = fadd fast float %7388, -5.000000e-01
  %7391 = fadd fast float %7389, -5.000000e-01
  %7392 = call float @dx.op.unary.f32(i32 22, float %7390)  ; Frc(value)
  %7393 = call float @dx.op.unary.f32(i32 22, float %7391)  ; Frc(value)
  %7394 = fmul fast float %7392, %7392
  %7395 = fmul fast float %7394, %7392
  %7396 = fsub fast float 3.000000e+00, %7392
  %7397 = fmul fast float %7394, %7396
  %7398 = fmul fast float %7392, 3.000000e+00
  %7399 = fmul fast float %7395, 3.000000e+00
  %7400 = fmul fast float %7394, 6.000000e+00
  %7401 = fsub fast float %7399, %7400
  %7402 = fadd fast float %7401, 4.000000e+00
  %7403 = fmul fast float %7402, 0x3FC5555560000000
  %7404 = fmul fast float %7395, -3.000000e+00
  %7405 = fadd fast float %7394, %7392
  %7406 = fmul fast float %7405, 3.000000e+00
  %7407 = fadd fast float %7404, 1.000000e+00
  %7408 = fadd fast float %7407, %7406
  %7409 = fmul fast float %7395, 0x3FC5555560000000
  %7410 = fmul fast float %7393, %7393
  %7411 = fmul fast float %7410, %7393
  %7412 = fsub fast float 3.000000e+00, %7393
  %7413 = fmul fast float %7410, %7412
  %7414 = fmul fast float %7393, 3.000000e+00
  %7415 = fmul fast float %7411, 3.000000e+00
  %7416 = fmul fast float %7410, 6.000000e+00
  %7417 = fsub fast float %7415, %7416
  %7418 = fadd fast float %7417, 4.000000e+00
  %7419 = fmul fast float %7418, 0x3FC5555560000000
  %7420 = fmul fast float %7411, -3.000000e+00
  %7421 = fadd fast float %7410, %7393
  %7422 = fmul fast float %7421, 3.000000e+00
  %7423 = fadd fast float %7420, 1.000000e+00
  %7424 = fadd fast float %7423, %7422
  %7425 = fmul fast float %7411, 0x3FC5555560000000
  %7426 = fadd fast float %7392, 1.000000e+00
  %7427 = fsub fast float 1.000000e+00, %7398
  %7428 = fadd fast float %7427, %7397
  %7429 = fadd fast float %7428, %7402
  %7430 = fmul fast float %7429, 0x3FC5555560000000
  %7431 = fdiv fast float %7403, %7430
  %7432 = fsub fast float %7426, %7431
  %7433 = fsub fast float 1.000000e+00, %7392
  %7434 = fadd fast float %7408, %7395
  %7435 = fmul fast float %7434, 0x3FC5555560000000
  %7436 = fdiv fast float %7409, %7435
  %7437 = fadd fast float %7433, %7436
  %7438 = fadd fast float %7393, 1.000000e+00
  %7439 = fsub fast float 1.000000e+00, %7414
  %7440 = fadd fast float %7439, %7413
  %7441 = fadd fast float %7440, %7418
  %7442 = fmul fast float %7441, 0x3FC5555560000000
  %7443 = fdiv fast float %7419, %7442
  %7444 = fsub fast float %7438, %7443
  %7445 = fsub fast float 1.000000e+00, %7393
  %7446 = fadd fast float %7424, %7411
  %7447 = fmul fast float %7446, 0x3FC5555560000000
  %7448 = fdiv fast float %7425, %7447
  %7449 = fadd fast float %7448, %7445
  %7450 = fmul fast float %7432, %7386
  %7451 = fsub fast float %7307, %7450
  %7452 = fmul fast float %7437, %7386
  %7453 = fadd fast float %7452, %7307
  %7454 = fmul fast float %7449, %7387
  %7455 = fadd fast float %7454, %7308
  %7456 = fmul fast float %7444, %7387
  %7457 = fsub fast float %7308, %7456
  %7458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7451, float %7457, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = extractvalue %dx.types.ResRet.f32 %7458, 1
  %7461 = extractvalue %dx.types.ResRet.f32 %7458, 2
  %7462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7453, float %7457, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7463 = extractvalue %dx.types.ResRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.ResRet.f32 %7462, 1
  %7465 = extractvalue %dx.types.ResRet.f32 %7462, 2
  %7466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7451, float %7455, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7467 = extractvalue %dx.types.ResRet.f32 %7466, 0
  %7468 = extractvalue %dx.types.ResRet.f32 %7466, 1
  %7469 = extractvalue %dx.types.ResRet.f32 %7466, 2
  %7470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %49, float %7453, float %7455, float %7375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7471 = extractvalue %dx.types.ResRet.f32 %7470, 0
  %7472 = extractvalue %dx.types.ResRet.f32 %7470, 1
  %7473 = extractvalue %dx.types.ResRet.f32 %7470, 2
  %7474 = fsub fast float %7467, %7459
  %7475 = fsub fast float %7468, %7460
  %7476 = fsub fast float %7469, %7461
  %7477 = fmul fast float %7474, %7447
  %7478 = fmul fast float %7475, %7447
  %7479 = fmul fast float %7476, %7447
  %7480 = fadd fast float %7477, %7459
  %7481 = fadd fast float %7478, %7460
  %7482 = fadd fast float %7479, %7461
  %7483 = fsub fast float %7471, %7463
  %7484 = fsub fast float %7472, %7464
  %7485 = fsub fast float %7473, %7465
  %7486 = fmul fast float %7483, %7447
  %7487 = fmul fast float %7484, %7447
  %7488 = fmul fast float %7485, %7447
  %7489 = fsub fast float %7463, %7480
  %7490 = fadd fast float %7489, %7486
  %7491 = fsub fast float %7464, %7481
  %7492 = fadd fast float %7491, %7487
  %7493 = fsub fast float %7465, %7482
  %7494 = fadd fast float %7493, %7488
  %7495 = fmul fast float %7490, %7435
  %7496 = fmul fast float %7492, %7435
  %7497 = fmul fast float %7494, %7435
  %7498 = fadd fast float %7495, %7480
  %7499 = fadd fast float %7496, %7481
  %7500 = fadd fast float %7497, %7482
  %7501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7502 = extractvalue %dx.types.CBufRet.f32 %7501, 1
  %7503 = fmul fast float %7498, %7502
  %7504 = fmul fast float %7499, %7502
  %7505 = fmul fast float %7500, %7502
  br label %7506

; <label>:7506                                    ; preds = %7337, %7294
  %7507 = phi float [ %7377, %7337 ], [ 1.000000e+00, %7294 ]
  %7508 = phi float [ %7378, %7337 ], [ 1.000000e+00, %7294 ]
  %7509 = phi float [ %7379, %7337 ], [ 1.000000e+00, %7294 ]
  %7510 = phi float [ %7503, %7337 ], [ 0.000000e+00, %7294 ]
  %7511 = phi float [ %7504, %7337 ], [ 0.000000e+00, %7294 ]
  %7512 = phi float [ %7505, %7337 ], [ 0.000000e+00, %7294 ]
  %7513 = fmul fast float %7510, %5842
  %7514 = fmul fast float %7511, %5844
  %7515 = fmul fast float %7512, %5846
  %7516 = fmul fast float %7507, %7301
  %7517 = call float @dx.op.dot3.f32(i32 55, float %7507, float %7508, float %7509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7518 = call float @dx.op.dot3.f32(i32 55, float %7513, float %7514, float %7515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7519 = select i1 %212, float %7517, float %7507
  %7520 = select i1 %212, float %7517, float %7508
  %7521 = select i1 %212, float 1.000000e+00, float %7509
  %7522 = select i1 %212, float %7518, float %7513
  %7523 = select i1 %212, float 0.000000e+00, float %7514
  %7524 = select i1 %212, float 0.000000e+00, float %7515
  %7525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %55, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7526 = extractvalue %dx.types.CBufRet.i32 %7525, 3
  %7527 = and i32 %7526, 3
  %7528 = icmp ne i32 %7527, 0
  %7529 = and i32 %7526, 4
  %7530 = icmp ne i32 %7529, 0
  %7531 = and i1 %7528, %7530
  %7532 = and i1 %212, %7531
  br i1 %7532, label %7533, label %7539

; <label>:7533                                    ; preds = %7506
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 1
  %7536 = fadd fast float %7516, -1.000000e+00
  %7537 = fmul fast float %7535, %7536
  %7538 = fadd fast float %7537, 1.000000e+00
  br label %7539

; <label>:7539                                    ; preds = %7533, %7506
  %7540 = phi float [ %7538, %7533 ], [ %7516, %7506 ]
  %7541 = fadd fast float %7298, %7295
  %7542 = fmul fast float %7519, %7541
  %7543 = fadd fast float %7542, %7522
  %7544 = fadd fast float %7299, %7296
  %7545 = fmul fast float %7520, %7544
  %7546 = fadd fast float %7545, %7523
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 0
  br i1 %212, label %7549, label %7564

; <label>:7549                                    ; preds = %7539
  %7550 = fadd fast float %7543, %7546
  %7551 = fmul fast float %7548, %7550
  %7552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %7553 = extractvalue %dx.types.CBufRet.f32 %7552, 3
  %7554 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %7555 = fsub fast float %5855, %5849
  %7556 = fadd fast float %7555, %5856
  %7557 = fsub fast float %7556, %7554
  %7558 = extractvalue %dx.types.CBufRet.f32 %5850, 2
  %7559 = fmul fast float %7557, %7558
  %7560 = call float @dx.op.unary.f32(i32 7, float %7559)  ; Saturate(value)
  %7561 = fsub fast float %7560, %7553
  %7562 = fmul fast float %7561, %7540
  %7563 = fadd fast float %7562, %7553
  br label %7589

; <label>:7564                                    ; preds = %7539
  %7565 = fadd fast float %7300, %7297
  %7566 = fmul fast float %7521, %7565
  %7567 = fadd fast float %7566, %7524
  %7568 = fmul fast float %7548, %7543
  %7569 = fmul fast float %7548, %7546
  %7570 = fmul fast float %7548, %7567
  %7571 = call float @dx.op.binary.f32(i32 35, float %7569, float %7570)  ; FMax(a,b)
  %7572 = call float @dx.op.binary.f32(i32 35, float %7568, float %7571)  ; FMax(a,b)
  %7573 = call float @dx.op.binary.f32(i32 35, float %5844, float %5846)  ; FMax(a,b)
  %7574 = call float @dx.op.binary.f32(i32 35, float %5842, float %7573)  ; FMax(a,b)
  %7575 = call float @dx.op.binary.f32(i32 35, float %7572, float %7574)  ; FMax(a,b)
  %7576 = fcmp fast ugt float %7575, 0x3F10000000000000
  br i1 %7576, label %7578, label %7577

; <label>:7577                                    ; preds = %7564
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %7578

; <label>:7578                                    ; preds = %7577, %7564
  %7579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %7580 = extractvalue %dx.types.ResRet.i32 %7579, 0
  %7581 = and i32 %7580, 32
  %7582 = icmp eq i32 %7581, 0
  br i1 %7582, label %7589, label %7583

; <label>:7583                                    ; preds = %7578
  %7584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %55, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7585 = extractvalue %dx.types.CBufRet.f32 %7584, 0
  %7586 = fmul fast float %7585, 0x3FE99999A0000000
  %7587 = fadd fast float %7585, %7568
  %7588 = fadd fast float %7586, %7570
  br label %7589

; <label>:7589                                    ; preds = %7583, %7578, %7549
  %7590 = phi float [ 1.000000e+00, %7549 ], [ %5844, %7583 ], [ %5844, %7578 ]
  %7591 = phi float [ 1.000000e+00, %7549 ], [ %5846, %7583 ], [ %5846, %7578 ]
  %7592 = phi float [ %7551, %7549 ], [ %7587, %7583 ], [ %7568, %7578 ]
  %7593 = phi float [ %7563, %7549 ], [ %7569, %7583 ], [ %7569, %7578 ]
  %7594 = phi float [ 1.000000e+00, %7549 ], [ %7588, %7583 ], [ %7570, %7578 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7595 = call float @dx.op.binary.f32(i32 36, float %7592, float 3.225500e+04)  ; FMin(a,b)
  %7596 = call float @dx.op.binary.f32(i32 36, float %7593, float 3.225500e+04)  ; FMin(a,b)
  %7597 = call float @dx.op.binary.f32(i32 36, float %7594, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7595)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7596)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7597)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7598 = call float @dx.op.binary.f32(i32 36, float %5842, float 3.225500e+04)  ; FMin(a,b)
  %7599 = call float @dx.op.binary.f32(i32 36, float %7590, float 3.225500e+04)  ; FMin(a,b)
  %7600 = call float @dx.op.binary.f32(i32 36, float %7591, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %7598)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %7599)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %7600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!61 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!62 = !{!63, !64, !65, !66, !67, !68, !69}
!63 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!64 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!65 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!66 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!67 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!68 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!69 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!70 = !{[31 x i32] [i32 29, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119]}
!71 = !{void ()* @ps_main, !"ps_main", !72, !4, !92}
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
!88 = !{!89, !90}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 0, i8 0, !76}
!90 = !{i32 1, !"SV_Target", i8 9, i8 16, !91, i8 0, i32 1, i8 4, i32 1, i8 0, !76}
!91 = !{i32 1}
!92 = !{i32 0, i64 16}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = !{!116, !116, i64 0}
!116 = !{!"float", !103, i64 0}
!117 = distinct !{!117, !95}
!118 = distinct !{!118, !95}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = !{!130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!130 = distinct !{!130, !131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!131 = distinct !{!131, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!132 = distinct !{!132, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!133 = distinct !{!133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!134 = distinct !{!134, !133, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!135 = distinct !{!135, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!136 = distinct !{!136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!137 = distinct !{!137, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!138 = distinct !{!138, !136, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!139 = distinct !{!139, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!140 = distinct !{!140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!141 = distinct !{!141, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!142 = distinct !{!142, !140, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!143 = distinct !{!143, !144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!144 = distinct !{!144, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!145 = !{!146}
!146 = distinct !{!146, !147, !"\01?sort@@YAXAIAM00@Z: %c"}
!147 = distinct !{!147, !"\01?sort@@YAXAIAM00@Z"}
!148 = !{!149, !150, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!149 = distinct !{!149, !147, !"\01?sort@@YAXAIAM00@Z: %a"}
!150 = distinct !{!150, !147, !"\01?sort@@YAXAIAM00@Z: %b"}
!151 = !{!150}
!152 = !{!149, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!153 = !{!149}
!154 = !{!150, !146, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?sort@@YAXAIAM00@Z: %c"}
!157 = distinct !{!157, !"\01?sort@@YAXAIAM00@Z"}
!158 = !{!159, !160, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!159 = distinct !{!159, !157, !"\01?sort@@YAXAIAM00@Z: %a"}
!160 = distinct !{!160, !157, !"\01?sort@@YAXAIAM00@Z: %b"}
!161 = !{!160}
!162 = !{!159, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!163 = !{!159}
!164 = !{!160, !156, !130, !132, !134, !135, !137, !138, !139, !141, !142, !143}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 2}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}
!174 = distinct !{!174, !"dx.controlflow.hints", i32 1}
!175 = distinct !{!175, !"dx.controlflow.hints", i32 1}

